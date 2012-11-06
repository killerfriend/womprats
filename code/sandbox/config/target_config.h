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

#define LED_PORT 0		// Port for led
#define LED_BIT 7		// Bit on port for led
#define LED_ON 1		// Level to set port to turn on led
#define LED_OFF 0		// Level to set port to turn off led
#define LED_TOGGLE_TICKS 100 // 100 ticks = 1 Hz flash rate

#define LED_PORT 1
#define LCD_CE_BIT 8
#define LCD_CD_BIT 9
#define LCD_RESET_BIT 5

/*********************************************************************************
**                            End Of File
*********************************************************************************/
