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
#include "lcd_lib/dogm128.h"

/* Main Program */

uint8_t font_select = 0;

void loop(void) {
  uint8_t x;
  DOG_PSTR_P f;
  DOG_PGM_P p;
  unsigned char h;

  switch(font_select) {
      default: font_select = 0; /* no break */
      case 0: h = 7; p = font_4x6; f = DOG_PSTR("4x6"); break;
      case 1: h = 8; p = font_5x7; f = DOG_PSTR("5x7"); break;
      case 2: h = 9; p = font_5x8; f = DOG_PSTR("5x8"); break;
      case 3: h = 9; p = font_6x9; f = DOG_PSTR("6x9"); break;
      case 4: h = 10; p = font_6x10; f = DOG_PSTR("6x10"); break;
      case 5: h = 10; p = font_6x12; f = DOG_PSTR("6x12"); break;
   }
  font_select++;

  dog_StartPage();
  do {
    x = 0;
    x+=dog_DrawStrP(x,h*0+3, p, f);
    dog_SetBox(0, h*0+3, dog_GetStrWidthP(p,f), h*1+3 );
    x+=dog_DrawStrP(x,h*0+3, p, DOG_PSTR(": 0123456789.,;"));
    dog_DrawStrP(0,h*2+3, p, DOG_PSTR("abcdefgjijklmnopqrstuvwxyz"));
    dog_DrawStrP(0,h*1+3, p, DOG_PSTR("ABCDEFGHIJKLMNOPQRSTUVWXYZ"));
    dog_DrawStrP(0,h*3+3, p, DOG_PSTR("+-*/#-!$%&(){}[]"));
  } while( dog_NextPage() );
  dog_Delay(1000);
}

int main (void) {
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
  GPIOSetValue( LED_PORT, LED_BIT, LED_ON );

  dog_Init(0);


  for (;;)
  {
	  loop();
  }
}
