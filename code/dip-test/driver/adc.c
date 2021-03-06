/****************************************************************************
 *   $Id:: adc.c 4785 2010-09-03 22:39:27Z nxp21346                         $
 *   Project: NXP LPC11xx ADC example
 *
 *   Description:
 *     This file contains ADC code example which include ADC 
 *     initialization, ADC interrupt handler, and APIs for ADC
 *     reading.
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
#include "driver_config.h"
#include "target_config.h"
#include "gpio.h"
#if CONFIG_ENABLE_DRIVER_ADC==1
#include "adc.h"

volatile uint32_t ADCValue[ADC_NUM];

#if CONFIG_ADC_DEFAULT_ADC_IRQHANDLER==1
volatile uint32_t ADCIntDone = 0;
#endif
volatile uint32_t OverRunCounter = 0;

#if CONFIG_ADC_ENABLE_BURST_MODE==1
volatile uint32_t channel_flag = 0; 
#endif

#if CONFIG_ADC_DEFAULT_ADC_IRQHANDLER==1
/******************************************************************************
** Function name:		ADC_IRQHandler
**
** Descriptions:		ADC interrupt handler
**
** parameters:			None
** Returned value:		None
** 
******************************************************************************/
void ADC_IRQHandler (void) 
{
  ADCIntDone = 1;
  uint32_t regVal, i;
  regVal = LPC_ADC->STAT;		/* Read ADC will clear the interrupt */


    
  if ( regVal & ADC_ADINT )
  {
	for ( i = 0; i < ADC_NUM; i++ )
	{
	  if ( (regVal&0xFF) & (0x1 << i) )
	  {
		ADCValue[i] = LPC_ADC->GDR;
		ADCValue[i] = ( LPC_ADC->DR[i] >> 6 ) & 0x3FF;
		ADCValue[i] = ADCValue[i] >> 1;
	  }
	}
#if CONFIG_ADC_ENABLE_BURST_MODE==1
	channel_flag &= ~0xff;
	channel_flag |= (regVal & 0xff);
	if ( (channel_flag & 0xFF) == ADC_EN_MASK)
	{
	  /* All the bits in have been set, it indicates all the ADC 
	  channels have been converted. */
	  LPC_ADC->CR &= 0xF8FFFFFF;	/* stop ADC now */
	  channel_flag = 0; 
	  ADCIntDone = 1;
	  GPIOSetValue(LED_PORT, LED_BIT, LED_OFF);
	}
#else
	LPC_ADC->CR &= 0xF8FFFFFF;	/* stop ADC now */ 
	ADCIntDone = 1;
#endif

  }


  return;
}
#endif

/*****************************************************************************
** Function name:		ADCInit
**
** Descriptions:		initialize ADC channel
**
** parameters:			ADC clock rate
** Returned value:		None
** 
*****************************************************************************/
void ADCInit( uint32_t ADC_Clk )
{
  uint32_t i;
  ADCIntDone = 1;
  /* Disable Power down bit to the ADC block. */  
  LPC_SYSCON->PDRUNCFG &= ~(0x1<<4);

  /* Enable AHB clock to the ADC. */
  LPC_SYSCON->SYSAHBCLKCTRL |= (1<<13);

  for ( i = 0; i < ADC_NUM; i++ )
  {
	ADCValue[i] = 0x0;
  }
  /* Unlike some other pings, for ADC test, all the pins need
  to set to analog mode. Bit 7 needs to be cleared according
  to design team. */


#ifdef ADC_EN_AD0
  LPC_IOCON->R_PIO0_11   = 0x02;	// Select AD0 pin function
#endif
#ifdef ADC_EN_AD1
  LPC_IOCON->R_PIO1_0    = 0x02;	// Select AD1 pin function
#endif
#ifdef ADC_EN_AD2
  LPC_IOCON->R_PIO1_1    = 0x02;	// Select AD2 pin function
#endif
#ifdef ADC_EN_AD3
  LPC_IOCON->R_PIO1_2    = 0x02;	// Select AD3 pin function
#endif
#ifdef ADC_EN_AD4
  LPC_IOCON->ARM_SWDIO_PIO1_3    = 0x02;	// Select AD4 pin function
#endif
#ifdef ADC_EN_AD5
  LPC_IOCON->PIO1_4    = 0x01;	// Select AD5 pin function
#endif
#ifdef ADC_EN_AD6
  LPC_IOCON->PIO1_10   = 0x01;	// Select AD6 pin function
#endif
#ifdef ADC_EN_AD7
  LPC_IOCON->PIO1_11   = 0x01;	// Select AD7 pin function
#endif

  LPC_ADC->CR = ((SystemCoreClock/LPC_SYSCON->SYSAHBCLKDIV)/ADC_Clk-1)<<8;

  /* If POLLING, no need to do the following */
#if CONFIG_ADC_ENABLE_ADC_IRQHANDLER==1
  NVIC_EnableIRQ(ADC_IRQn);
#ifndef  CONFIG_ADC_ENABLE_BURST_MODE
  LPC_ADC->INTEN = 0x100;
#else
  LPC_ADC->INTEN = 0;
#endif
  LPC_ADC->INTEN |= ADC_EN_MASK;
#endif
  return;
}

/*****************************************************************************
** Function name:		ADCRead
**
** Descriptions:		Read ADC channel
**
** parameters:			Channel number
** Returned value:		Value read, if interrupt driven, return channel #
** 
*****************************************************************************/
uint32_t ADCRead( uint8_t channelNum )
{
#if CONFIG_ADC_ENABLE_ADC_IRQHANDLER!=1
  uint32_t regVal, ADC_Data;
#endif

  /* channel number is 0 through 7 */
  if ( channelNum >= ADC_NUM )
  {
	channelNum = 0;		/* reset channel number to 0 */
  }
  LPC_ADC->CR &= 0xFFFFFF00;
  LPC_ADC->CR |= (1 << 24) | (1 << channelNum);	
				/* switch channel,start A/D convert */
#if CONFIG_ADC_ENABLE_ADC_IRQHANDLER!=1
  while ( 1 )			/* wait until end of A/D convert */
  {
	regVal = *(volatile unsigned long *)(LPC_ADC_BASE 
			+ ADC_OFFSET + ADC_INDEX * channelNum);
	/* read result of A/D conversion */
	if ( regVal & ADC_DONE )
	{
	  break;
	}
  }	
        
  LPC_ADC->CR &= 0xF8FFFFFF;	/* stop ADC now */    
  if ( regVal & ADC_OVERRUN )	/* save data when it's not overrun, otherwise, return zero */
  {
	return ( 0 );
  }
  ADC_Data = ( regVal >> 6 ) & 0x3FF;
  return ( ADC_Data );	/* return A/D conversion value */
#else
  return ( channelNum );	/* if it's interrupt driven, the ADC reading is 
							done inside the handler. so, return channel number */
#endif
}

/*****************************************************************************
** Function name:		ADC0BurstRead
**
** Descriptions:		Use burst mode to convert multiple channels once.
**
** parameters:			None
** Returned value:		None
** 
*****************************************************************************/
void ADCBurstRead( void )
{
	ADCIntDone = 0;
	GPIOSetValue(LED_PORT, LED_BIT, LED_ON);
	if ( LPC_ADC->CR & (0x7<<24) ) {
		LPC_ADC->CR &= ~(0x7<<24);
	}
  /* Read all channels, 0 through 7. Be careful that if the ADCx pins is shared
  with SWD CLK or SWD IO. */
  LPC_ADC->CR &= ~0xff;
  LPC_ADC->CR |= ADC_EN_MASK;
  LPC_ADC->CR |= (0x1<<16);		/* Set burst mode and start A/D convert */
  return;						/* the ADC reading is done inside the 
								handler, return 0. */
}
#endif

/*********************************************************************************
**                            End Of File
*********************************************************************************/
