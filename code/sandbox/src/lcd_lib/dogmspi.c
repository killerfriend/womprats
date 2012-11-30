/*

  dogmspi.c
  
  (c) 2010 Oliver Kraus (olikraus@gmail.com)
  
  spi abstraction layer
  
  This file is part of the dogm128 library.

  The dogm128 library is free software: you can redistribute it and/or modify
  it under the terms of the Lesser GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  The dogm128 library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  Lesser GNU General Public License for more details.

  You should have received a copy of the Lesser GNU General Public License
  along with dogm128.  If not, see <http://www.gnu.org/licenses/>.


  ST7565R SPI interface
  
    ST7565R reads data with rising edge of the clock signal (SCL)
      --> CPHA = 0 and CPOL = 0
    ST7565R reads  MSB first 
      --> DORD = 0
      
  /usr/lib/avr/include/avr/pgmspace.h
  
  
  This file is controlled by the following defines:
  
  DOG_SPI_USI
    --> ATTINY 
  DOG_SPI_ATMEGA
    --> ATMEGA
  DOG_SPI_SW_ARDUINO
      --> default for ADA_ST7565P_HW
  DOG_SPI_ARDUINO or "nothing defined"
    --> Arduino 
  DOG_SPI_SW_STD_ARDUINO


  DOG_SPI_LPC
    --> LPCXpresso
*/

#include "dogm128.h"

#define DOG_SPI_LPC

#if defined(DOG_SPI_LPC)


/*=======================================================================*/
/* LPC Interface */
/*=======================================================================*/

#include "driver_config.h"
#include "target_config.h"
#include "gpio.h"
#include "ssp.h"

void dog_spi_init(void)
{
  /* setup port directions */
  GPIOSetDir( LCD_GPIO_PORT, LCD_CE_BIT, 1);
  GPIOSetDir( LCD_GPIO_PORT, LCD_CD_BIT, 1);
  GPIOSetDir( LCD_GPIO_PORT, LCD_RESET_BIT, 1);

  SSP_IOConfig(LCD_SPI_PORT);
  SSP_Init(LCD_SPI_PORT);

  /*
  DOG_SPI_DDR(DOG_SPI_CS_PORT) |= _BV(DOG_SPI_CS_PIN);
  DOG_SPI_DDR(DOG_SPI_DO_PORT) |= _BV(DOG_SPI_DO_PIN);
  DOG_SPI_DDR(DOG_SPI_A0_PORT) |= _BV(DOG_SPI_A0_PIN);
  DOG_SPI_DDR(DOG_SPI_SCL_PORT) |= _BV(DOG_SPI_SCL_PIN);
  */
}

unsigned char dog_spi_out(unsigned char data)
{
  SSP_Send8( LCD_SPI_PORT, &data, sizeof(data));
  return 0;
}

void dog_spi_enable_client(void)
{
  /* before the slave is enabled, esure that the clk pin has a logical zero */
  // DOG_SPI_PORT(DOG_SPI_SCL_PORT) &= ~_BV(DOG_SPI_SCL_PIN);
 
  /* now enable the SPI slave */
  GPIOSetValue( LCD_GPIO_PORT, LCD_CE_BIT, 0 ); //DOG_SPI_CS_PIN
}

void dog_spi_disable_client(void)
{
  /* disable the client (write a logical zero on the CS line) */
  GPIOSetValue( LCD_GPIO_PORT, LCD_CE_BIT, 1 );
}

void dog_cmd_mode(void)
{
  GPIOSetValue( LCD_GPIO_PORT, LCD_CD_BIT, 0);
  //DOG_SPI_PORT(DOG_SPI_A0_PORT) &= ~_BV(DOG_SPI_A0_PIN);
}

void dog_data_mode(void)
{
  GPIOSetValue( LCD_GPIO_PORT, LCD_CD_BIT, 1);
  //DOG_SPI_PORT(DOG_SPI_A0_PORT) |= _BV(DOG_SPI_A0_PIN);
}

#endif
