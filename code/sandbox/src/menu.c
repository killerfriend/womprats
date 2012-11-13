/*
 * menu.c
 *
 *  Created on: Nov 12, 2012
 *      Author: rattboi
 */

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

				dog_DrawStrP(menu->options[i].sub_options[j].x,
							 menu->options[i].sub_options[j].y,
							 p,
							 menu->options[i].sub_options[j].name);

				if (j==menu->options[i].selected)
					dog_XorBox(menu->options[i].sub_options[j].x-1,
								 menu->options[i].sub_options[j].y,
								 menu->options[i].sub_options[j].ex,
								 menu->options[i].sub_options[j].ey);

			}
		}
	} while( dog_NextPage() );
}

void fill_main_menu (stMenu *menu)
{
		memset(menu,0,sizeof(stMenu));

		strcpy(menu->options[0].name,"CPU Mhz");
			strcpy(menu->options[0].sub_options[0].name,"180");
			strcpy(menu->options[0].sub_options[1].name,"200");
			strcpy(menu->options[0].sub_options[2].name,"220");
			menu->options[0].num=3;
			menu->options[0].selected = 0; // Default to 132

		strcpy(menu->options[1].name,"Load Rom");
		strcpy(menu->options[2].name,"Continue Playing");
		strcpy(menu->options[3].name,"Reset Game (Saves SRAM)");
		strcpy(menu->options[4].name, "Load State");

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

	state = getbit(UI_BUTTONS_PORT, UI_BUTTON_1) | getbit(UI_BUTTONS_PORT, UI_BUTTON_2) << 1;
	if (state != laststate)
	{
		laststate = state;
		if ((state & 2) == 0)
			menu->selected=(menu->selected+1)%menu->num;
		if ((state & 1) == 0)
			menu->selected=(menu->selected-1);
		if (menu->selected<0) menu->selected=menu->num-1;
		draw_menu(menu);
	}
}
