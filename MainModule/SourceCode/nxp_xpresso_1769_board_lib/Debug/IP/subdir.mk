################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../IP/adc_001.c \
../IP/can_001.c \
../IP/dac_001.c \
../IP/enet_002.c \
../IP/gpdma_001.c \
../IP/i2c_001.c \
../IP/i2s_001.c \
../IP/ritimer_001.c \
../IP/rtc_001.c \
../IP/ssp_001.c \
../IP/timer_001.c \
../IP/usart_001.c \
../IP/wwdt_001.c 

OBJS += \
./IP/adc_001.o \
./IP/can_001.o \
./IP/dac_001.o \
./IP/enet_002.o \
./IP/gpdma_001.o \
./IP/i2c_001.o \
./IP/i2s_001.o \
./IP/ritimer_001.o \
./IP/rtc_001.o \
./IP/ssp_001.o \
./IP/timer_001.o \
./IP/usart_001.o \
./IP/wwdt_001.o 

C_DEPS += \
./IP/adc_001.d \
./IP/can_001.d \
./IP/dac_001.d \
./IP/enet_002.d \
./IP/gpdma_001.d \
./IP/i2c_001.d \
./IP/i2s_001.d \
./IP/ritimer_001.d \
./IP/rtc_001.d \
./IP/ssp_001.d \
./IP/timer_001.d \
./IP/usart_001.d \
./IP/wwdt_001.d 


# Each subdirectory must supply rules for building sources it contributes
IP/%.o: ../IP/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCORE_M3 -DDEBUG -D__CODE_RED -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_board\board_common" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_board\boards_17xx_40xx\nxp_xpresso_1769" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_chip\chip_common" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_ip" -I"C:\LPCOpen\lpcopen\software\CMSIS\CMSIS\Include" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_chip\chip_17xx_40xx" -Og -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


