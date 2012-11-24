/****************************************************************************
 *   $Id:: adc.h 4785 2010-09-03 22:39:27Z nxp21346                         $
 *   Project: NXP LPC11xx ADC example
 *
 *   Description:
 *     This file contains ADC code header definition.
 *
 ****************************************************************************
 * Software that is described herein is for illustrative purposes only
 * which provides customers with programming information regarding the
 * products. This software is supplied "AS IS" without any warranties.
 * NXP Semiconductors assumes no responsibility or liability for the
 * use of the software, conveys no license or title under any patent,
 * copyright, or mask work right to the product. NXP Semiconductors
 * reserves the right to make changes in the software without
 * notification. NXP Semiconductors also make no representation or
 * warranty that such application will be suitable for the specified
 * use without further testing or modification.
****************************************************************************/
#ifndef __ADC_H
#define __ADC_H
#include "driver_config.h"
#if  CONFIG_ENABLE_DRIVER_ADC==1

#ifndef CONFIG_ADC_ENABLE_ADC_IRQHANDLER
#define CONFIG_ADC_ENABLE_ADC_IRQHANDLER 1 /* 1 is interrupt driven, 0 is polling */
#endif

#ifndef CONFIG_ADC_ENABLE_BURST_MODE
#define CONFIG_ADC_ENABLE_BURST_MODE			0   /* Burst mode works in interrupt driven mode only. */
#endif

#ifndef CONFIG_ADC_ENABLE_DEBUG_MODE
#define CONFIG_ADC_ENABLE_DEBUG_MODE			1
#endif


// Define the ADC enables
#ifdef ADC_EN_AD0
#define ADC_STATE_AD0 1
#else
#define ADC_STATE_AD0 0
#endif

#ifdef ADC_EN_AD1
#define ADC_STATE_AD1 1
#else
#define ADC_STATE_AD1 0
#endif

#ifdef ADC_EN_AD2
#define ADC_STATE_AD2 1
#else
#define ADC_STATE_AD2 0
#endif

#ifdef ADC_EN_AD3
#define ADC_STATE_AD3 1
#else
#define ADC_STATE_AD3 0
#endif

#ifdef ADC_EN_AD4
#define ADC_STATE_AD4 1
#else
#define ADC_STATE_AD4 0
#endif

#ifdef ADC_EN_AD5
#define ADC_STATE_AD5 1
#else
#define ADC_STATE_AD5 0
#endif

#ifdef ADC_EN_AD6
#define ADC_STATE_AD6 1
#else
#define ADC_STATE_AD6 0
#endif

#ifdef ADC_EN_AD7
#define ADC_STATE_AD7 1
#else
#define ADC_STATE_AD7 0
#endif

// enable mask for burst mode
#define ADC_EN_MASK ((ADC_STATE_AD7 << 7) | \
		(ADC_STATE_AD6 << 6) | \
		(ADC_STATE_AD5 << 5) | \
		(ADC_STATE_AD4 << 4) | \
		(ADC_STATE_AD3 << 3) | \
		(ADC_STATE_AD2 << 2) | \
		(ADC_STATE_AD1 << 1) | \
		(ADC_STATE_AD0 << 0))


#define ADC_OFFSET		0x10
#define ADC_INDEX		4

#define ADC_DONE		0x80000000
#define ADC_OVERRUN		0x40000000
#define ADC_ADINT		0x00010000

#define ADC_NUM			8			/* for LPC11xx */
#define ADC_CLK			1000000		/* set to 1Mhz */

#ifndef CONFIG_ADC_DEFAULT_ADC_IRQHANDLER
#define CONFIG_ADC_DEFAULT_ADC_IRQHANDLER 1
#endif

#if CONFIG_ADC_DEFAULT_ADC_IRQHANDLER==1
extern void ADC_IRQHandler( void );
extern volatile uint32_t ADCIntDone;
#endif

extern volatile uint32_t ADCValue[ADC_NUM];

extern void ADCInit( uint32_t ADC_Clk );
extern uint32_t ADCRead( uint8_t channelNum );
extern void ADCBurstRead( void );
#endif
#endif /* end __ADC_H */
/*****************************************************************************
**                            End Of File
******************************************************************************/
