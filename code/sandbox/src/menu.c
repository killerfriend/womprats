/*
 * menu.c
 *
 *  Created on: Nov 12, 2012
 *      Author: rattboi
 */

#include <string.h>
#include "driver_config.h"
#include "target_config.h"
#include "gpio.h"
#include "lcd_lib/dogm128.h"
#include "menu.h"

void draw_menu (stMenu *menu) {

	DOG_PGM_P p;
	int i,j;

	p = font_4x6;

	dog_StartPage();
	do
	{
		for (i=0;i<menu->num;i++){
			dog_DrawStrP(menu->options[i].x, menu->options[i].y, p, menu->options[i].name);

			if (i == menu->selected)
				dog_XorBox(menu->options[i].x-1, menu->options[i].y,  menu->options[i].ex, menu->options[i].ey);

			for (j=menu->options[i].num-1; j>=0 ; j--) {	/* Suboptions from right to left */

				menuSubOption *sOption = &(menu->options[i].sub_options[j]);

				if (sOption->type)
					sprintf(sOption->name, "%03d", sOption->value);

				dog_DrawStrP(sOption->x,
							 sOption->y,
							 p,
							 sOption->name);

				if (j==menu->options[i].selected)
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

	} while( dog_NextPage() );
}

void fill_main_menu (stMenu *menu)
{
		memset(menu,0,sizeof(stMenu));

		strcpy(menu->options[0].name,"Wave");
			strcpy(menu->options[0].sub_options[0].name,"Sqr");
			strcpy(menu->options[0].sub_options[1].name,"Tri");
			strcpy(menu->options[0].sub_options[2].name,"Saw");
			menu->options[0].num=3;
			menu->options[0].selected = 0;

		strcpy(menu->options[1].name,"Set LFO");
			strcpy(menu->options[1].sub_options[0].name,"000");
			menu->options[1].sub_options[0].value = 100;
			menu->options[1].sub_options[0].type = 1;
			menu->options[1].num=1;
			menu->options[1].selected = 0;

		strcpy(menu->options[2].name,"Map Channels");
		strcpy(menu->options[3].name,"Save Settings");
		strcpy(menu->options[4].name,"Reset");

		menu->num = 5;
		menu->selected = 0;

		precalc_menu(menu,4,4);
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

int run_menu(stMenu *menu)
{
	int state;
	static int laststate = 0;

	state = getbit(UI_BUTTONS_PORT, UI_BUTTON_UP) |
			getbit(UI_BUTTONS_PORT, UI_BUTTON_DOWN) << 1 |
			getbit(UI_BUTTONS_PORT, UI_BUTTON_LEFT) << 2 |
			getbit(UI_BUTTONS_PORT, UI_BUTTON_RIGHT) << 3 |
			getbit(UI_BUTTONS_PORT, UI_BUTTON_OK) << 4 |
			getbit(UI_BUTTONS_PORT, UI_BUTTON_AUX) << 5;

	if (state != laststate)
	{
		laststate = state;
		if ((state & 2) == 0)
			menu->selected=(menu->selected+1)%menu->num;
		if ((state & 1) == 0)
			menu->selected=(menu->selected-1);
		if (menu->selected<0) menu->selected=menu->num-1;

		 if (menu->options[menu->selected].num) {

   			if ((state & 4) == 0)
   				menu->options[menu->selected].selected=(menu->options[menu->selected].selected-1);
   			else if ((state & 8) == 0)
   				menu->options[menu->selected].selected=(menu->options[menu->selected].selected+1) %
		 		  										 							menu->options[menu->selected].num;

			if (menu->options[menu->selected].selected<0) menu->options[menu->selected].selected=
		 		  										 							menu->options[menu->selected].num-1;
		 }

		draw_menu(menu);
	}
	return 0;
}
