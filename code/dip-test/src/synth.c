/*
 * synth.c
 *
 *  Created on: Nov 12, 2012
 *      Author: agoetz
 */

#include "synth.h"
#include "type.h"
#include "dac.h"
#include "LPC11xx.h"
#include "core_cm0.h"

/* This function updates the state of an oscillator. */
void update_osc(int num);
/* sums together the outputs of the oscillators and returns a 12-bit
 * value suitable for the SPI DAC*/
uint16_t sum_osc();
struct synth_oscillator {
	int slope; 
	int amp;
	int curpos;
	enum synth_function func;
};




static struct synth_oscillator oscillators[SYNTH_NUM_CHAN];

void SysTick_Handler(void)
{
	int i;
	for(i = 0; i < SYNTH_NUM_CHAN; i++) {
		update_osc(i);
	}
	dac_send(sum_osc());
	
}


int synth_init()
{
	int i;
	/* Inititalize channel and oscillator structs */
	for (i = 0; i < SYNTH_NUM_CHAN; i++) {
		
		struct synth_oscillator * osc = oscillators + i;
		osc->slope = 0;
		osc->amp = 1;
		osc->func = SYNTH_SAW;
		osc->curpos = 0;
		
		struct synth_channel_info * chan = synth_channels + i;
		chan->freq = 0;
		chan->amp = 1;
		chan->func = SYNTH_SAW;

	}

	/* Initialize the SPI DAC */
	dac_init();
	dac_send(0);

	/* Enable the system tick timer at the sampling frequency */
	/* To get a refresh tick of 9600Hz, use a divisor of 4999 */

	SysTick->LOAD = 48000000 / SYNTH_SAMPLE_RATE - 1;
	SysTick->VAL = 0;
	SysTick->CTRL = SysTick_CTRL_ENABLE_Msk |
					SysTick_CTRL_TICKINT_Msk |
					SysTick_CTRL_CLKSOURCE_Msk;


	return FALSE;
	
}

void update_osc(int num)
{
	/* aliases for the oscillator and channel structs being
	 * updated */
	struct synth_oscillator * osc = oscillators + num;
	struct synth_channel_info * chan = synth_channels + num;
	
	/* if we are at the end of the waveform period, grab the
	 * latest channel defintion. */
	if(osc->curpos == 0) {
		
		osc->slope = chan->freq * chan->amp / SYNTH_SAMPLE_RATE;
		osc->amp = chan->amp;
		osc->func = chan->func;
	}
	
	
	if(osc->curpos == osc->amp) {
		osc->curpos = 0;
	} else {
		osc->curpos += osc->slope;
	}
 
	/* make sure that the amplitude of the output wave is clamped
	 * between the correct values */
	if(osc->curpos > osc->amp) {
		osc->curpos = osc->amp;
		
	}
		
	
	
		
}


uint16_t sum_osc()
{
	int sum = 0;
	int i;
	for(i = 0; i < SYNTH_NUM_CHAN; i++) {
		struct synth_oscillator * osc = oscillators + i;

		/* if the oscillator is disabled, do not add it to the sum */
		if (osc->slope == 0)
			continue;
		
		switch(osc->func) {
		case SYNTH_SAW:
			sum += 2 * osc->curpos - osc->amp;
			break;
		case SYNTH_SQUARE:
			if (osc->curpos > osc->amp / 2)
				sum += osc->amp;
			else
				sum -= osc->amp;
			break;
		case SYNTH_TRI:
			if(osc->curpos < osc->amp / 2) {
				sum += 4 * osc->curpos - osc->amp;
			} else {
				sum += -4 * osc->curpos + 3 * osc->amp;
			}
			break;
			
		}
	}

	int max_amp = 0;
	for (i = 0; i < SYNTH_NUM_CHAN; i++) {
		struct synth_oscillator * osc = oscillators + i;
		if(osc->slope > 0)
			max_amp += osc->amp;
	}
	
	int half_rate = (1 << (SYNTH_BITWIDTH - 1)) - 1;
	
	return (half_rate * sum) / max_amp + half_rate;
		
}
