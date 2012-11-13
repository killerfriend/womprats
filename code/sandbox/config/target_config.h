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

#define LCD_SPI_PORT 1

#define LCD_GPIO_PORT 1
#define LCD_CE_BIT 8
#define LCD_CD_BIT 9
#define LCD_RESET_BIT 5

#define UI_BUTTONS_PORT 2
#define UI_BUTTON_UP 4
#define UI_BUTTON_DOWN 5
#define UI_BUTTON_LEFT 6
#define UI_BUTTON_RIGHT 7
#define UI_BUTTON_OK 8
#define UI_BUTTON_AUX 9

/*********************************************************************************
**                            End Of File
*********************************************************************************/
