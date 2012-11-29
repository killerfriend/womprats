/*
 * driver_config.h
 *
 *  Created on: Aug 31, 2010
 *      Author: nxp28548
 */

#ifndef DRIVER_CONFIG_H_
#define DRIVER_CONFIG_H

#include <LPC11xx.h>

#define CONFIG_ENABLE_DRIVER_CRP						1
#define CONFIG_CRP_SETTING_NO_CRP						1

#define CONFIG_ENABLE_DRIVER_ADC						1
#define CONFIG_ADC_ENABLE_ADC_IRQHANDLER				1
#define CONFIG_ADC_ENABLE_BURST_MODE					1
#define CONFIG_ADC_ENABLE_DEBUG_MODE					1

#define CONFIG_ENABLE_DRIVER_CAN						0
#define CONFIG_ENABLE_DRIVER_CLKCONFIG					0
#define CONFIG_ENABLE_DRIVER_PRINTF						0
#define CONFIG_ENABLE_DRIVER_GPIO						1
#define CONFIG_ENABLE_DRIVER_I2C						1
#define CONFIG_ENABLE_DRIVER_I2CSLAVE					0
#define CONFIG_ENABLE_DRIVER_SWUART						0
#define CONFIG_ENABLE_DRIVER_ROMCAN						0
#define CONFIG_ENABLE_DRIVER_ROMUSB						0
#define CONFIG_ENABLE_DRIVER_RS485						0
#define CONFIG_ENABLE_DRIVER_SMALLGPIO					0
#define CONFIG_ENABLE_DRIVER_SSP						1
#define CONFIG_ENABLE_DRIVER_TIMER16					1
#define CONFIG_ENABLE_DRIVER_TIMER32					1
#define CONFIG_ENABLE_DRIVER_UART						1
#define CONFIG_ENABLE_DRIVER_WDT						0

#define CONFIG_TIMER32_DEFAULT_TIMER32_0_IRQHANDLER		1

// These defines determine if each ADC should be turned on.
//#define ADC_EN_AD0
#define ADC_EN_AD1
//#define ADC_EN_AD2
//#define ADC_EN_AD3
// #define ADC_EN_AD4 // Be careful, this pin is shared with SWDIO
//#define ADC_EN_AD5
//#define ADC_EN_AD6
#define ADC_EN_AD7



 /* DRIVER_CONFIG_H_ */
#endif
