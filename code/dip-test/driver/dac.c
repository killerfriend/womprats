/*
 * dac.c
 *
 *  Created on: Nov 12, 2012
 *      Author: agoetz
 */

#include "driver_config.h"
#include "dac.h"
#include "ssp.h"
#include "type.h"
#include <stdint.h>
int dac_init()
{
	SSP_IOConfig(0);
	SSP_Init(0);
	return FALSE;
}

int dac_send(uint16_t value)
{
	SSP_Send(0, &value, 1);
	return FALSE;
}
