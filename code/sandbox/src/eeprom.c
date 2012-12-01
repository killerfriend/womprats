/*
 * eeprom.c
 *
 *  Created on: Oct 19, 2012
 *      Author: agoetz
 */


#include "eeprom.h"
#include "driver_config.h"
#include "target_config.h"
#include "i2c.h"
#include <string.h>

extern volatile uint32_t I2CCount;
extern volatile uint8_t I2CMasterBuffer[BUFSIZE];
extern volatile uint8_t I2CSlaveBuffer[BUFSIZE];
extern volatile uint32_t I2CMasterState;
extern volatile uint32_t I2CReadLength, I2CWriteLength;


int eeprom_setup(void)
{
	int result = I2CInit(I2CMASTER);
	return !result;
}

int eeprom_read(void *dest, uint16_t src, size_t n)
{
	/* validate input */
	if(n > BUFSIZE)
		n = BUFSIZE;

	/* calculate address */
	uint8_t addr = 0xa0;
	uint8_t page = (src >> 8) & 7;
	uint8_t word = src & 0xff;
	addr |= (page << 1);

	/* setup read for single byte */
	I2CWriteLength = 2;
	I2CReadLength = n;
	I2CMasterBuffer[0] = addr; /* dev address as a write */
	I2CMasterBuffer[1] = word; /* address to read from */
	I2CMasterBuffer[2] = addr + 1; /* dev address as a read */
	I2CEngine();
	
	memcpy(dest, (void*)I2CSlaveBuffer, n);
	
	return 0;
}

int eeprom_write(uint16_t dest, const void *src, size_t n)
{
	volatile int i;

	/* calculate address */
		uint8_t addr = 0xa0;
		uint8_t page = (dest >> 8) & 7;
		uint8_t word = dest & 0xff;
		addr |= (page << 1);

	/* setup the write command for a single byte: */
	I2CWriteLength = 3;
	I2CReadLength = 0;
	I2CMasterBuffer[0] = addr; /* address to write to */
	I2CMasterBuffer[1] = word;
	I2CMasterBuffer[2] = ((uint8_t*)src)[0];
	I2CEngine();

	for ( i = 0; i < 0x200000; i++ );	/* Delay after write */

	return 1;
}
