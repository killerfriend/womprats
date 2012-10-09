################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../driver/adc.c \
../driver/clkconfig.c \
../driver/gpio.c \
../driver/i2c.c \
../driver/ssp.c \
../driver/timer16.c \
../driver/timer32.c \
../driver/uart.c 

OBJS += \
./driver/adc.o \
./driver/clkconfig.o \
./driver/gpio.o \
./driver/i2c.o \
./driver/ssp.o \
./driver/timer16.o \
./driver/timer32.o \
./driver/uart.o 

C_DEPS += \
./driver/adc.d \
./driver/clkconfig.d \
./driver/gpio.d \
./driver/i2c.d \
./driver/ssp.d \
./driver/timer16.d \
./driver/timer32.d \
./driver/uart.d 


# Each subdirectory must supply rules for building sources it contributes
driver/%.o: ../driver/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -DTARGET_SHORTCHIP=lpc11 -DTARGET_CHIP=LPC1114/301 -D__USE_CMSIS=1 -I"/home/agoetz/workspace/sandbox/cmsis" -I"/home/agoetz/workspace/sandbox/config" -I"/home/agoetz/workspace/sandbox/startup" -I"/home/agoetz/workspace/sandbox/driver" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


