/*
 * synth.h
 *
 *  Created on: Nov 12, 2012
 *      Author: agoetz
 */

#ifndef SYNTH_H_
#define SYNTH_H_

#define SYNTH_NUM_CHAN 6
#define SYNTH_SAMPLE_RATE 19200
#define SYNTH_BITWIDTH 12

/**
 * \brief Handler for systick timer: designed to run at speed of
 * frequency generation.
 *
 * 
 */
extern void SysTick_Handler(void);

/**
 * \brief Initializes the syntheser
 *
 * \returns FALSE on success
 */
int synth_init();

/**
 * The types of waveforms that can be created by an oscillator
 */
enum synth_function {
	/* A sawtooth wave */
	SYNTH_SAW,
	/* A square wave */
	SYNTH_SQUARE,
	/* A triangle wave */
	SYNTH_TRI,
};


/* Describes the waveform to be generated on a specific
 * oscillator. This interface is designed to be accessed by other
 * threads in the firmware, and is buffered internally by the actual
 * structure that is used to generate the waves */
struct synth_channel_info {
	/* The frequency of the wave */
	int freq;
	/* The amplitude */
	int amp;
	/* The type of waveform to be generated */
	enum synth_function func;
};

/* array of channel information.  */

volatile struct synth_channel_info synth_channels[SYNTH_NUM_CHAN];





#endif /* SYNTH_H_ */
