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

#define LED_PORT LED2_PORT	// Port for led
#define LED_BIT LED2_BIT	// Bit on port for led

#define LCD_SPI_PORT 1

#define LCD_GPIO_PORT 1
#define LCD_CE_BIT 8
#define LCD_CD_BIT 9
#define LCD_RESET_BIT 5
#define LCD_BACKLIGHT_BIT 1

#define UI_BUTTONS_PORT 2
#define UI_BUTTON_UP 5
#define UI_BUTTON_DOWN 7
#define UI_BUTTON_LEFT 4
#define UI_BUTTON_RIGHT 8
#define UI_BUTTON_OK 6
#define UI_BUTTON_AUX 9

#define CHAN_BUTTONS_PORT 3
#define CHAN1_BUTTON 0
#define CHAN2_BUTTON 1
#define CHAN3_BUTTON 2
#define CHAN4_BUTTON 3
#define CHAN5_BUTTON 4
#define CHAN6_BUTTON 5

#define ADC_CHAN1 0
#define ADC_CHAN2 1
#define ADC_CHAN3 3
#define ADC_CHAN4 5
#define ADC_CHAN5 6
#define ADC_CHAN6 7

/*********************************************************************************
**                            End Of File
*********************************************************************************/
