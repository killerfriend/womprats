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
#include "gpio.h"
#include "timer32.h"
#include <stdint.h>
#include "dac.h"
/* Main Program */

int main(void) {
	/* Basic chip initialization is taken care of in SystemInit() called
	 * from the startup code. SystemInit() and chip settings are defined
	 * in the CMSIS system_<part family>.c file.
	 */

	/* Initialize 32-bit timer 0. TIME_INTERVAL is defined as 10mS */
	/* You may also want to use the Cortex SysTick timer to do this */
	init_timer32(0, TIME_INTERVAL);
	/* Enable timer 0. Our interrupt handler will begin incrementing
	 * the TimeTick global each time timer 0 matches and resets.
	 */
	enable_timer32(0);

	/* Initialize GPIO (sets up clock) */
	GPIOInit();


	LPC_IOCON->R_PIO0_11 |= 1;

	/* Set LED port pin to output */
	GPIOSetDir(LED_PORT, LED_BIT, 1);
	
	int i = 0;

	int dir = 28;
	uint16_t data;
	dac_init();
	while (1) {
		//if((timer32_0_counter%LED_TOGGLE_TICKS) == (LED_TOGGLE_TICKS/2) ) {
		//GPIOSetValue(LED_PORT, LED_BIT, LED_OFF);
		i += dir;
		if (i < 0) {
			i = 0;
			dir = -dir;
		}
		if (i > 0xFFF) {
			i = 0xFFF;
			dir = -dir;
		}

		data = 0x3000;
		data |= (i & 0xFFF);
		dac_send(data);
		//GPIOSetValue(LED_PORT, LED_BIT, LED_ON);
		//}
		//__WFI();
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
