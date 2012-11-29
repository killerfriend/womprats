/***************************************************************************** *   blinky.c:  LED blinky C file for NXP LPC11xx Family Microprocessors
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
#include "menu.h"
#include "lcd_lib/dogm128.h"
#include "image.h"

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
  stMenu chan1menu,chan2menu,chan3menu,chan4menu;
  stMenu *channelMenus[4];
  stMenu *currentMenu;
  int menuIndex = 0;

  fill_chan_menu(&chan1menu,1);
  fill_chan_menu(&chan2menu,2);
  fill_chan_menu(&chan3menu,3);
  fill_chan_menu(&chan4menu,4);

  channelMenus[0] = &chan1menu;
  channelMenus[1] = &chan2menu;
  channelMenus[2] = &chan3menu;
  channelMenus[3] = &chan4menu;

  currentMenu = channelMenus[menuIndex];

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

  LPC_IOCON->R_PIO1_1 &= ~(3);
  LPC_IOCON->R_PIO1_1 |= (1);

  SetupButtons();
  SetupLEDs();

  dog_Init(0);
  drawWomprat();

  for (;;)
  {
	  run_menu(channelMenus, &menuIndex);
	  //draw_menu(&chan1menu);

  }
}

