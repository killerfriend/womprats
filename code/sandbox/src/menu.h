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
} menuSubOption;

typedef struct
{
 	int x,y; /* Start X,Y */
 	int ex,ey; /* End X,Y need to be calculated... */
 	int selected; /* Selected sub_option */
 	int num;
 	char name[16];
 	menuSubOption sub_options[16];
} menuOption ;

#define MAX_MENU_OPTIONS 5

typedef struct
{
 	menuOption options[MAX_MENU_OPTIONS];
 	int num;
	int selected;
} stMenu;

void draw_menu (stMenu *menu);
void fill_main_menu (stMenu *menu);
void precalc_menu (stMenu *menu,int y_spacing,int x_spacing);
int run_menu(stMenu *menu);

#endif /* MENU_H_ */
