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
#include "target_config.h"
#include <stdint.h>
#include "gpio.h"
#include "timer32.h"
#include "uart.h"
#include "eeprom.h"
#include <string.h>

/* Main Program */

int main (void) {
   uint8_t* mesg;
   int i;
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
  UARTInit(9600);
  /* Initialize GPIO (sets up clock) */
  GPIOInit();
  /* Set LED port pin to output */
  GPIOSetDir( LED_PORT, LED_BIT, 1 );
  eeprom_setup();
  
  while (1)                                /* Loop forever */
  {


	if((timer32_0_counter%LED_TOGGLE_TICKS) == (LED_TOGGLE_TICKS/2) ) {
		int success = TRUE;
		uint8_t data = 1;
		uint8_t dest = 0;


		for (i = 0; i < 5; i++) {
			data++;
			eeprom_write(i, &data, 1);
			eeprom_read(&dest, i, 1);
			success = success && (data == dest);
		}
		if(success) {
			mesg = (uint8_t*)"read success\r\n";

			GPIOSetValue( LED_PORT, LED_BIT, LED_ON );

		} else {
			mesg = (uint8_t*)"read fail\r\n";
			GPIOSetValue( LED_PORT, LED_BIT, LED_OFF );

		}
		UARTSend(mesg, strlen((char*)mesg));
	}
	
    /* Go to sleep to save power between timer interrupts */
    __WFI();
  }
}
