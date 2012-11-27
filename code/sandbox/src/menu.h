/*
 * menu.h
 *
 *  Created on: Nov 12, 2012
 *      Author: rattboi
 */

#ifndef MENU_H_
#define MENU_H_

typedef struct
{
 	int x,y;
 	int ex,ey;
 	char name[8];
 	int value;
 	int type;
} menuSubOption;

typedef struct
{
 	int x,y; /* Start X,Y */
 	int ex,ey; /* End X,Y need to be calculated... */
 	int selected; /* Selected sub_option */
 	int num;
 	char name[16];
 	menuSubOption sub_options[4];
} menuOption ;

#define MAX_MENU_OPTIONS 5

typedef struct
{
 	menuOption options[MAX_MENU_OPTIONS];
 	int num;
	int selected;
} stMenu;

#define NUM_MENUS 4

void draw_menu (stMenu *menu);
void fill_main_menu (stMenu *menu);
void fill_chan_menu (stMenu *menu, int channel);
void precalc_menu (stMenu *menu,int y_spacing,int x_spacing);
int run_menu(stMenu *menu[], int *menuIndex);

#define BTN_UP_MASK 1
#define BTN_DN_MASK 2
#define BTN_LT_MASK 4
#define BTN_RT_MASK 8
#define BTN_OK_MASK 16
#define BTN_AU_MASK 32

#endif /* MENU_H_ */
