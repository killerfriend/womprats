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
	uint8_t msb = (src >> 8) & 0x3f;
	uint8_t lsb = src & 0xff;
	//addr |= (page << 1);

	/* setup read for single byte */
	I2CWriteLength = 4;
	I2CReadLength = n;
	I2CMasterBuffer[0] = addr; /* dev address as a write */
	I2CMasterBuffer[1] = msb;  /* address to read from */
	I2CMasterBuffer[2] = lsb;  /* address to read from */

	I2CMasterBuffer[3] = addr | 1; /* dev address as a read */

	I2CEngine();
	
	memcpy(dest, (void*)I2CSlaveBuffer, n);
	
	return 0;
}

int eeprom_write(uint16_t dest, const void *src, size_t n)
{
	int i;
	volatile int j;

	/* calculate address */
		uint8_t addr = 0xa0;
		uint8_t msb = (dest >> 8) & 0x3f;
		uint8_t lsb = dest & 0xff;
		//addr |= (page << 1);

	/* setup the write command for a single byte: */
	I2CWriteLength = 3 + n;
	I2CReadLength = 0;
	I2CMasterBuffer[0] = addr; /* address to write to */
	I2CMasterBuffer[1] = msb;
	I2CMasterBuffer[2] = lsb;

	for (i = 0; i < n; i++)
		I2CMasterBuffer[i + 3] = ((uint8_t*)src)[i];

	I2CEngine();

	for ( j = 0; j < 0x200000; j++ );	/* Delay after write */

	return 1;
}
