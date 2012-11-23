/*
 * eeprom.h
 * 
 * This file contains the public interface for a driver for the ATMEL
 * series of AT24C* I2C EEPROMS.
 *
 *  Created on: Oct 19, 2012
 *      Author: agoetz
 */

#ifndef EEPROM_H_
#define EEPROM_H_
#include <stdint.h>
#include "type.h"

/* wait cycles = 5ms = 0.005s / (1 / 48MHz) = 240000 = 0x3A980 CPU clock cycles */
#define EEPROM_WRITE_WAIT  0x3A980

/**
 * \brief Set up the eeprom device
 *
 * \returns FALSE if the setup worked, TRUE if it failed
 */
int eeprom_setup(void);

/**
 * \brief read a block of bytes from the EEPROM Device
 *
 * \param dest The destination in memory to put the data
 *
 * \param src The address in the EEPROM to read data from.
 *
 * \param n The number of bytes to copy.
 *
 * \returns the number of blocks copied
 */
int eeprom_read(void *dest, uint16_t src, size_t n);

/**
 * \brief copy a block of bytes from the microcontroller to the EEPROM
 * device
 *
 * \param dest the address in the eeprom to write to.
 *
 * \param src the address in the microcontroller to use as a source
 *
 * \param n the number of bytes to transfer.
 */
int eeprom_write(uint16_t dest, const void *src, size_t n);



#endif /* EEPROM_H_ */
