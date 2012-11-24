/*
 * dac.h
 *
 * This file contains a simple driver for the MCP4921 SPI controlled DAC
 * 
 *  Created on: Nov 12, 2012
 *      Author: agoetz
 */

#ifndef DAC_H_
#define DAC_H_
#include <stdint.h>
/**
 * \brief initializes the SPI connection.
 *
 * \returns FALSE on success
 */
int dac_init();

/**
 * \brief Outputs a 12-bit value on the attached DAC.
 *
 * This function is inherently blocking.
 *
 * \returns FALSE on success
 */
int dac_send(uint16_t value);

#endif /* DAC_H_ */
