/******************************************************************************
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
#include <string.h>
#include <stdint.h>
#include "synth.h"
#include "adc.h"
#include "ssp.h"
#include "eeprom.h"
#include "lcd_lib/dogm128.h"
#include "image.h"
#include "menu.h"

/* Main Program */

void drawWomprat()
{
	dog_StartPage();
	do{
	  dog_SetBitmap(0,64,womprat,102,64);
	} while(dog_NextPage());

	dog_Delay(2000);

	return;
}

void SetupButtons()
{
	// Set buttons as inputs
	GPIOSetDir( UI_BUTTONS_PORT, UI_BUTTON_UP, 0);
	GPIOSetDir( UI_BUTTONS_PORT, UI_BUTTON_DOWN, 0);
	GPIOSetDir( UI_BUTTONS_PORT, UI_BUTTON_LEFT, 0);
	GPIOSetDir( UI_BUTTONS_PORT, UI_BUTTON_RIGHT, 0);
	GPIOSetDir( UI_BUTTONS_PORT, UI_BUTTON_OK, 0);
	GPIOSetDir( UI_BUTTONS_PORT, UI_BUTTON_AUX, 0);
	return;
}

void SetupLEDs()
{
  /* Set LED port pin to output */
  GPIOSetDir( LED_PORT, LED_BIT, 1 );
  GPIOSetValue( LED_PORT, LED_BIT, LED_OFF );

  GPIOSetDir( 1, 1, 1);
  GPIOSetValue( 1, 1, 1);
}

int main (void) {
  /* Basic chip initialization is taken care of in SystemInit() called
   * from the startup code. SystemInit() and chip settings are defined
   * in the CMSIS system_<part family>.c file.
   */
  stMenu chan1menu,chan2menu,chan3menu,chan4menu,chan5menu,chan6menu; stMenu *channelMenus[6]; stMenu *currentMenu;
  int menuIndex = 0;

  fill_chan_menu(&chan1menu,1);
  fill_chan_menu(&chan2menu,2);
  fill_chan_menu(&chan3menu,3);
  fill_chan_menu(&chan4menu,4);
  fill_chan_menu(&chan5menu,5);
  fill_chan_menu(&chan6menu,6);

  channelMenus[0] = &chan1menu;
  channelMenus[1] = &chan2menu;
  channelMenus[2] = &chan3menu;
  channelMenus[3] = &chan4menu;
  channelMenus[4] = &chan5menu;
  channelMenus[5] = &chan6menu;

  currentMenu = channelMenus[menuIndex];

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

  LPC_IOCON->R_PIO1_1 &= ~(3);
  LPC_IOCON->R_PIO1_1 |= (1);

  SetupButtons();
  SetupLEDs();

	synth_init();

  dog_Init(0);
  drawWomprat();

	int i;
	for (i = 0; i < 3; i++) {
		synth_channels[i].freq = 100 * i;
		synth_channels[i].amp = 1 << (20 - i);
		synth_channels[i].func = SYNTH_SQUARE;
		synth_channels[i+3].freq = 100 * i;
		synth_channels[i+3].amp = 1 << (20 - i);
		synth_channels[i+3].func = SYNTH_SQUARE;
	}

	while (1) {
		int tmp0 = 500 * ADCValue[0]/512;
		int tmp1 = 500 * ADCValue[1]/512;
		tmp0 = tmp0 < 10 ? 0 : tmp0;
		tmp1 = tmp1 < 10 ? 0 : tmp1;
		for (i = 0; i < 3; i++) {
			synth_channels[i].freq = tmp0*(i+1);
			synth_channels[i + 3].freq = tmp1*(i+1);
		}

		for (i = 0; i < 6; i++)
			synth_channels[i].func = channelMenus[i]->options[1].selected;

		run_menu(channelMenus, &menuIndex);

  }
}
