/*
 * menu.c
 *
 *  Created on: Nov 12, 2012
 *      Author: rattboi
 */

#include <string.h>
#include <stdint.h>
#include <stdio.h>
#include "driver_config.h"
#include "target_config.h"
#include "gpio.h"
#include "lcd_lib/dogm128.h"
#include "menu.h"
#include "eeprom.h"

typedef struct
{
	char wave_mode[6];
	char button_mode[6];
} saveFile;

int modifyMode = 0;

void saveState(int slot, stMenu *menus[]) {
	int i;
	saveFile mySave;

	for (i = 0; i < 6; i++)
	{
		mySave.wave_mode[i]   = (char) menus[i]->options[1].selected;
		mySave.button_mode[i] = (char) menus[i]->options[2].selected;
	}

	eeprom_write(0, (const void *)&mySave,sizeof(saveFile));

	strcpy(menus[6]->options[0].name, "Config Saved");
	precalc_menu(menus[6],3,3);
}

void loadState(int slot, stMenu *menus[]) {
	int i;
	saveFile myLoad;

	eeprom_read((void *)&myLoad,0, sizeof(saveFile));

	for (i = 0; i < 6; i++)
	{
		menus[i]->options[1].selected  = (int) myLoad.wave_mode[i];
		menus[i]->options[2].selected  = (int) myLoad.button_mode[i];
	}

	strcpy(menus[6]->options[0].name, "Config Loaded");
	precalc_menu(menus[6],3,3);
}

void draw_menu (stMenu *menu) {

	DOG_PGM_P p;
	int i,j;

	p = font_4x6;

	dog_StartPage();
	do
	{
		GPIOSetValue(LED2_PORT, LED2_BIT, LED_ON);

		for (i=0;i<menu->num;i++){
			dog_DrawStrP(menu->options[i].x, menu->options[i].y, p, menu->options[i].name);

			if (i == menu->selected)
				dog_XorBox(menu->options[i].x-1, menu->options[i].y,  menu->options[i].ex, menu->options[i].ey);

			for (j=menu->options[i].num-1; j>=0 ; j--) {	/* Suboptions from right to left */

				menuSubOption *sOption = &(menu->options[i].sub_options[j]);

				switch(sOption->type)
				{
				case MNU_TYPE_PERCENT:
					sprintf(sOption->name, "%03d%%", sOption->value);
					break;
				case MNU_TYPE_FREQ:
					sprintf(sOption->name, "%04d", sOption->value);
					break;

				default:
					break;
				}

				dog_DrawStrP(sOption->x,
							 sOption->y,
							 p,
							 sOption->name);

				if (j==menu->options[i].selected)
					if ((menu->options[i].num != 1) || (menu->options[i].num == 1 && menu->selected==i && modifyMode))
						dog_XorBox(sOption->x-1,
									 sOption->y,
									 sOption->ex,
									 sOption->ey);

			}
		}
		dog_SetHLine(0,102,0);
		dog_SetHLine(0,102,63);
		dog_SetVLine(0,0,63);
		dog_SetVLine(101,0,63);

		GPIOSetValue(LED2_PORT, LED2_BIT, LED_OFF);

	} while( dog_NextPage() );
}

void fill_config_menu (stMenu *menu)
{
	memset(menu,0,sizeof(stMenu));

	strcpy(menu->options[0].name,"Config");

	strcpy(menu->options[1].name,"Slot");
		strcpy(menu->options[1].sub_options[0].name,"1");
		strcpy(menu->options[1].sub_options[1].name,"2");
		strcpy(menu->options[1].sub_options[2].name,"3");
		menu->options[1].num=3;
		menu->options[1].selected = 0;

	strcpy(menu->options[2].name,"Load Settings");
	strcpy(menu->options[3].name,"Save Settings");

	menu->num = 4;
	menu->selected = 1;

	precalc_menu(menu,3,3);
}

void fill_chan_menu (stMenu *menu, int channel)
{
	char scratch[10];

	memset(menu,0,sizeof(stMenu));

	sprintf(scratch,"Channel %d", channel);

	strcpy(menu->options[0].name,scratch);

	strcpy(menu->options[1].name,"Wave");
		strcpy(menu->options[1].sub_options[0].name,"Saw");
		strcpy(menu->options[1].sub_options[1].name,"Sqr");
		strcpy(menu->options[1].sub_options[2].name,"Tri");
		menu->options[1].num=3;
		menu->options[1].selected = 0;

	strcpy(menu->options[2].name,"Button");
		strcpy(menu->options[2].sub_options[0].name,"Mom");
		strcpy(menu->options[2].sub_options[1].name,"Hold");
		menu->options[2].num=2;
		menu->options[2].selected = 0;

	strcpy(menu->options[3].name,"Modify");
		strcpy(menu->options[3].sub_options[0].name,"001%");
		menu->options[3].sub_options[0].type=MNU_TYPE_PERCENT;
		menu->options[3].sub_options[0].value=1;
		menu->options[3].num=1;
		menu->options[3].selected=0;

	menu->num = 4;
	menu->selected = 1;

	precalc_menu(menu,3,3);
}

void precalc_menu (stMenu *menu,int y_spacing,int x_spacing) {
	int i,xp,yp,lx,ly;
	int j,sxp,syp;

	xp=4,yp=50;
	for (i=0;i<menu->num;i++){

		lx=strlen(menu->options[i].name)*4;
		ly=6;

		if (menu->options[i].num) {

			menu->options[i].x=xp;
			menu->options[i].y=yp;

			menu->options[i].ex=xp+lx;
			menu->options[i].ey=yp+ly;

			sxp=102-x_spacing;
			syp=yp;

			for (j=menu->options[i].num-1; j>=0 ; j--) {	/* Suboptions from right to left */

				menu->options[i].sub_options[j].y=syp;
				menu->options[i].sub_options[j].ex=sxp;

				lx=strlen(menu->options[i].sub_options[j].name)*4;
				ly=6;

				sxp-=lx;

				menu->options[i].sub_options[j].x=sxp;
				menu->options[i].sub_options[j].ey=syp+ly;

				sxp-=x_spacing;

			}
		}
		else {
			menu->options[i].x=(102-lx)/2;
			menu->options[i].y=yp;
			menu->options[i].ex=menu->options[i].x+lx;
			menu->options[i].ey=menu->options[i].y+ly;
		}

		yp-=ly+y_spacing;
	}
}

inline static _Bool getbit(uint32_t port, uint32_t bit)
{
    return !! LPC_GPIO[port]->MASKED_ACCESS[1 << bit];
}

int run_menu(stMenu *menus[], int *menuIndex)
{
	stMenu *menu;
	menu = menus[*menuIndex];

	menuSubOption *subOpt;

	int state;
	static int laststate = 0;

	GPIOSetValue(LED0_PORT, LED0_BIT, LED_ON);

	state = getbit(UI_BUTTONS_PORT, UI_BUTTON_UP) |
			getbit(UI_BUTTONS_PORT, UI_BUTTON_DOWN) << 1 |
			getbit(UI_BUTTONS_PORT, UI_BUTTON_LEFT) << 2 |
			getbit(UI_BUTTONS_PORT, UI_BUTTON_RIGHT) << 3 |
			getbit(UI_BUTTONS_PORT, UI_BUTTON_OK) << 4 |
			getbit(UI_BUTTONS_PORT, UI_BUTTON_AUX) << 5;

	if (state != laststate)
	{
		laststate = state;

		switch(modifyMode)
		{
		case 0:
			if ((state & BTN_DN_MASK) == 0)
			{
				menu->selected=(menu->selected+1)%menu->num;
				if (menu->selected > menu->num || menu->selected == 0) menu->selected=1;
			}
			if ((state & BTN_UP_MASK) == 0)
			{
				menu->selected=(menu->selected-1);
				if (menu->selected < 1) menu->selected=menu->num-1;
			}

			if ((state & BTN_OK_MASK) == 0)
			{
				if (menu->options[menu->selected].num)
				{
					menu->options[menu->selected].selected=(menu->options[menu->selected].selected+1) % menu->options[menu->selected].num;
				}
				else
				{
					if (strcmp(menu->options[menu->selected].name,"Save Settings") == 0) //terrible hack for config menu
					{
						saveState(menu->options[1].selected, menus);
					}

					if (strcmp(menu->options[menu->selected].name,"Load Settings") == 0) //terrible hack for config menu
					{
						loadState(menu->options[1].selected, menus);
					}
				}
			}

			if ((state & BTN_LT_MASK) == 0)
			{
				*menuIndex = *menuIndex - 1;

				if (*menuIndex < 0)
					*menuIndex = NUM_MENUS - 1;

				menu = menus[*menuIndex];
			}

			if ((state & BTN_RT_MASK) == 0)
			{
				*menuIndex = *menuIndex + 1;

				if (*menuIndex > (NUM_MENUS - 1))
					*menuIndex = 0;

				menu = menus[*menuIndex];
			}

			if ((state & BTN_AU_MASK) == 0)
			{
				if (menu->options[menu->selected].num == 1)
					if (menu->options[menu->selected].sub_options[0].type != MNU_TYPE_EXCL)
						modifyMode ^= 1;
			}
			break;
		case 1:
			subOpt = &(menu->options[menu->selected].sub_options[0]);

			if ((state & BTN_UP_MASK) == 0)
				if (subOpt->type  == MNU_TYPE_PERCENT)
					if (subOpt->value < 100)
						subOpt->value += 1;

			if ((state & BTN_DN_MASK) == 0)
				if (subOpt->type == MNU_TYPE_PERCENT)
					if (subOpt->value > 0)
						subOpt->value -= 1;

			if ((state & BTN_RT_MASK) == 0)
				if (subOpt->type  == MNU_TYPE_PERCENT)
					if (subOpt->value <= 90)
						subOpt->value += 10;

			if ((state & BTN_LT_MASK) == 0)
				if (subOpt->type == MNU_TYPE_PERCENT)
					if (subOpt->value >= 10)
						subOpt->value -= 10;

			if ((state & BTN_AU_MASK) == 0)
			{
				modifyMode ^= 1;
			}
			break;
		}

		draw_menu(menu);
	}

	GPIOSetValue(LED0_PORT, LED0_BIT, LED_OFF);
	return 0;
}
