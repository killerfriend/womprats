/*****************************************************************************
 *   blinky.c:  LED blinky C file for NXP LPC11xx Family Microprocessors
 *
 *   Copyright(C) 2008, NXP Semiconductor
 *   All rights reserved.
 *
 *   History
 *   2009.12.07  ver 1.00    Preliminary version, first Release
 *
 ******************************************************************************/

#include "driver_config.h"
#include "LPC11xx.h"
#include "target_config.h"
#include "ssp.h"
#include "gpio.h"
#include "timer32.h"
#include <stdint.h>
#include "synth.h"
#include "adc.h"

/* Main Program */

int main(void) {
	/* Basic chip initialization is taken care of in SystemInit() called
	 * from the startup code. SystemInit() and chip settings are defined
	 * in the CMSIS system_<part family>.c file.
	 */

	/* Initialize 32-bit timer 0. TIME_INTERVAL is defined as 10mS */
	/* You may also want to use the Cortex SysTick timer to do this */
	init_timer32(0, TIME_INTERVAL);
	/* Enable timer 0. nOur interrupt handler will begin incrementing
	 * the TimeTick global each time timer 0 matches and resets.
	 */
	enable_timer32(0);

	/* Initialize GPIO (sets up clock) */
	GPIOInit();

	/* Set LED port pin to output */
	LPC_IOCON->R_PIO0_11 |= 1;
	GPIOSetDir(LED_PORT, LED_BIT, 1);



	synth_init();


	int i;
	for (i = 0; i < 6; i++) {
		synth_channels[i].freq = 100 * i;
		synth_channels[i].amp = 4096;
		synth_channels[i].func = SYNTH_TRI;
	}

	while (1) {
		int tmp = 500 * ADCValue[1]/512;
		for (i = 0; i < 6; i++)
			synth_channels[i].freq = tmp*(i+1);

	}
	while (1) /* Loop forever */
	{
		/* Each time we wake up... */
		/* Check TimeTick to see whether to set or clear the LED I/O pin */
		if ((timer32_0_counter % LED_TOGGLE_TICKS) < (LED_TOGGLE_TICKS / 2)) {
			GPIOSetValue(LED_PORT, LED_BIT, LED_OFF);
		} else {
			GPIOSetValue(LED_PORT, LED_BIT, LED_ON);
		}
		/* Go to sleep to save power between timer interrupts */
		__WFI();
	}
}
