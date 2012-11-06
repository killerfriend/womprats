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
#include "ssp.h"
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

  GPIOSetDir( LCD_PORT, LCD_CE_BIT, 1);
  GPIOSetDir( LCD_PORT, LCD_CD_BIT, 1);
  GPIOSetDir( LCD_PORT, LCD_RESET_BIT, 1);

  //reset the LCD (maybe?)
  // active low, so this just sets the pin low and high quickly
  GPIOSetValue( LCD_PORT, LCD_RESET_BIT, 0);
  for (i=0;i<2000;i++) ;
  GPIOSetValue( LCD_PORT, LCD_RESET_BIT, 1);

  GPIOSetValue( LCD_PORT, LCD_CE_BIT, 1);

  SSP_IOConfig(1);
  SSP_Init(1);

  GPIOSetValue( LCD_PORT, LCD_CE_BIT, 1);

  GPIOSetValue( LCD_PORT, LCD_CD_BIT, 0);

  uint8_t init = {0x040, 0x0a1, 0x0c0, 0x0a6, 0x0a2, 0x02f, 0x027, 0x081, 0x00e, 0x0fa, 0x090, 0x0af, 0x0a5 };

  SSP_Send8(1, init, sizeof(init));



  /* order of things to do
   *
   * disable client (CS high)
   * enable_client (CS low)
   * set command mode(CD low)
   * spi out 0x040 (set display line 0)
   * spi out 0x0a1 (ADC set to reverse)
   * spi out 0x0c0 (Common output mode)
   * spi out 0x0a6 (display normal, bit val 0: LCD pixel)
   * spi out 0x0a2 (LCD bias 1/9)
   * spi out 0x02f (all power control circuits on)
   * spi out 0x027 (regulator, booster and follower)
   * spi out 0x081 (set contrast)
   * spi out 0x00e (contrast value, EA default: 0x010, previous value for S102: 0x0e)
   * spi out 0x0fa (set temp compensation)
   * spi out 0x090 (0.11 deg/c WP Off WC Off)
   * spi out 0x0af (display on)
   *
   * spi out 0x0a5 (display all points, ST7565, UC1610)
   * delay 300 (?)
   * spi out 0x0a4 (normal display)
   * delay 300 (?)
   * disable client (CS high)
   */


  uint8_t data;

  while (1)
  {
	  //if((timer32_0_counter%LED_TOGGLE_TICKS) == (LED_TOGGLE_TICKS/2) ) {
		  GPIOSetValue( LED_PORT, LED_BIT, LED_OFF );

		  data = 0x3000;
		  data |= (i & 0xFFF );
		  SSP_Send8(1, &data, 1);
		  GPIOSetValue( LED_PORT, LED_BIT, LED_ON );
	  //}
	  //__WFI();
  }
}
