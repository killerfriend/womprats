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

int ADC_Chans[6] =
	{ADC_CHAN1,
	 ADC_CHAN2,
	 ADC_CHAN3,
	 ADC_CHAN4,
	 ADC_CHAN5,
	 ADC_CHAN6};

void drawWomprat()
{
	dog_StartPage();
	do{
	  dog_SetBitmap(0,64,womprat,102,64);
	} while(dog_NextPage());

	dog_Delay(1000);

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

	GPIOSetDir( CHAN_BUTTONS_PORT, CHAN1_BUTTON, 0);
	GPIOSetDir( CHAN_BUTTONS_PORT, CHAN2_BUTTON, 0);
	GPIOSetDir( CHAN_BUTTONS_PORT, CHAN3_BUTTON, 0);
	GPIOSetDir( CHAN_BUTTONS_PORT, CHAN4_BUTTON, 0);
	GPIOSetDir( CHAN_BUTTONS_PORT, CHAN5_BUTTON, 0);
	GPIOSetDir( CHAN_BUTTONS_PORT, CHAN6_BUTTON, 0);

	return;
}

void SetupLEDs()
{
  /* Set LED port pin to output */
  GPIOSetDir( LED_PORT, LED_BIT, 1 );
  GPIOSetValue( LED_PORT, LED_BIT, LED_OFF );

  GPIOSetDir( LCD_GPIO_PORT, LCD_BACKLIGHT_BIT, 1);
  GPIOSetValue( LCD_GPIO_PORT, LCD_BACKLIGHT_BIT, LED_ON);
}

int ProcessToggleButton(int channel)
{

#define INTEGRATOR_MAX 500

	static int integrator[6] = {0,0,0,0,0,0};
	static int output[6] = {1,1,1,1,1,1};

	int button_state;

	button_state = (!! LPC_GPIO[CHAN_BUTTONS_PORT]->MASKED_ACCESS[1 << channel]);

	if (button_state == 0)
	{
		if (integrator[channel] > 0)
			integrator[channel]--;
	}
	else if (integrator[channel] < INTEGRATOR_MAX)
		integrator[channel]++;

	if (integrator[channel] == 0)
	{
		output[channel] = 0;
	}
	else if (integrator[channel] >= INTEGRATOR_MAX)
	{
		integrator[channel] = INTEGRATOR_MAX;
		output[channel] = 1;
	}
	return !(output[channel]);
}

int main (void) {
  /* Basic chip initialization is taken care of in SystemInit() called
   * from the startup code. SystemInit() and chip settings are defined
   * in the CMSIS system_<part family>.c file.
   */
	int i;

	stMenu chan1menu,chan2menu,chan3menu,chan4menu,chan5menu,chan6menu;
	stMenu *menus[6];

	int menuIndex = 0;

	fill_chan_menu(&chan1menu,1);
	fill_chan_menu(&chan2menu,2);
	fill_chan_menu(&chan3menu,3);
	fill_chan_menu(&chan4menu,4);
	fill_chan_menu(&chan5menu,5);
	fill_chan_menu(&chan6menu,6);

	menus[0] = &chan1menu;
	menus[1] = &chan2menu;
	menus[2] = &chan3menu;
	menus[3] = &chan4menu;
	menus[4] = &chan5menu;
	menus[5] = &chan6menu;

	/* Initialize 32-bit timer 0. TIME_INTERVAL is defined as 10mS */
	/* You may also want to use the Cortex SysTick timer to do this */
	init_timer32(0, TIME_INTERVAL);
	/* Enable timer 0. Our interrupt handler will begin incrementing
	* the TimeTick global each time timer 0 matches and resets.*/
	enable_timer32(0);

	/* Initialize GPIO (sets up clock) */
	GPIOInit();

	LPC_IOCON->R_PIO0_11 |= 1;

	LPC_IOCON->R_PIO1_1 &= ~(3);
	LPC_IOCON->R_PIO1_1 |= (1);

	SetupButtons();
	SetupLEDs();

	eeprom_setup();

	synth_init();

	dog_Init(0);
	drawWomprat();

	for (i = 0; i < 6; i++) {
		synth_channels[i].freq = 100;
		synth_channels[i].amp = 1 << (15);
		synth_channels[i].func = SYNTH_SQUARE;
	}

	int tmps[6];
	int button_hold[6] = {0};
	int last_state[6] = {1};
	int state[6] = {1};

	for (i = 0; i < 6; i++)
	{
		last_state[i] = 1;
		state[i] = 1;
	}

	while (1) {
		for (i = 0; i < 6; i++)
		{
			synth_channels[i].func = menus[i]->options[1].selected;

			tmps[i] = 1000 * ADCValue[ADC_Chans[i]]/512;
			tmps[i] = tmps[i] < 10 ? 0 : tmps[i];

			switch(menus[i]->options[2].selected)
			{
			case 0:
				if ((!! LPC_GPIO[CHAN_BUTTONS_PORT]->MASKED_ACCESS[1 << i]) == 1)
					synth_channels[i].freq = 0;
				else
					synth_channels[i].freq = tmps[i];
				break;
			case 1:
				state[i] = ProcessToggleButton(i);

				if (state[i] == 1 && last_state[i] != 1 )
				{
					button_hold[i] = button_hold[i] ^ 1;
					last_state[i] = state[i];
				}

				if (button_hold[i])
					synth_channels[i].freq = tmps[i];
				else
					synth_channels[i].freq = 0;

				last_state[i] = state[i];
				break;
			}
		}
		run_menu(menus, &menuIndex);
  }
}
