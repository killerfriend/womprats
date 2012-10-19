/*
 * eeprom.c
 *
 *  Created on: Oct 19, 2012
 *      Author: agoetz
 */


#include "eeprom.h"

int eeprom_setup(void)
{
	return TRUE;
}

int eeprom_read(void *dest, uint16_t src, size_t n)
{
	return 0;
}

int eeprom_write(uint16_t dest, const void *src, size_t n)
{
	return 0;
}
