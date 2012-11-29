/*****************************************************************************
 *   target_config.h:  config file for blinky example for NXP LPC11xx Family
 *   Microprocessors
 *
 *   Copyright(C) 2008, NXP Semiconductor
 *   All rights reserved.
 *
 *   History
 *   2010.09.07  ver 1.00    Preliminary version, first Release
 *
******************************************************************************/

#define LED_ON 1		// Level to set port to turn on led
#define LED_OFF 0		// Level to set port to turn off led
#define LED_TOGGLE_TICKS 10 // 100 ticks = 1 Hz flash rate

#define LED0_PORT 0
#define LED0_BIT 1

#define LED1_PORT 0
#define LED1_BIT 7

#define LED2_PORT 0
#define LED2_BIT 3

#define LED_PORT LED0_PORT	// Port for led
#define LED_BIT LED0_BIT	// Bit on port for led


/*********************************************************************************
**                            End Of File
*********************************************************************************/
