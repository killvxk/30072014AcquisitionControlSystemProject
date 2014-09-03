################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CHIP/adc_17xx_40xx.c \
../CHIP/can_17xx_40xx.c \
../CHIP/clock_17xx_40xx.c \
../CHIP/cmp_17xx_40xx.c \
../CHIP/crc_17xx_40xx.c \
../CHIP/dac_17xx_40xx.c \
../CHIP/eeprom_17xx_40xx.c \
../CHIP/emc_17xx_40xx.c \
../CHIP/enet_17xx_40xx.c \
../CHIP/gpdma_17xx_40xx.c \
../CHIP/i2c_17xx_40xx.c \
../CHIP/i2s_17xx_40xx.c \
../CHIP/iocon_17xx_40xx.c \
../CHIP/lcd_17xx_40xx.c \
../CHIP/mem_tests.c \
../CHIP/ring_buffer.c \
../CHIP/ritimer_17xx_40xx.c \
../CHIP/rtc_17xx_40xx.c \
../CHIP/sdc_17xx_40xx.c \
../CHIP/sdmmc_17xx_40xx.c \
../CHIP/spi_17xx_40xx.c \
../CHIP/ssp_17xx_40xx.c \
../CHIP/sysctl_17xx_40xx.c \
../CHIP/timer_17xx_40xx.c \
../CHIP/uart_17xx_40xx.c \
../CHIP/wwdt_17xx_40xx.c 

OBJS += \
./CHIP/adc_17xx_40xx.o \
./CHIP/can_17xx_40xx.o \
./CHIP/clock_17xx_40xx.o \
./CHIP/cmp_17xx_40xx.o \
./CHIP/crc_17xx_40xx.o \
./CHIP/dac_17xx_40xx.o \
./CHIP/eeprom_17xx_40xx.o \
./CHIP/emc_17xx_40xx.o \
./CHIP/enet_17xx_40xx.o \
./CHIP/gpdma_17xx_40xx.o \
./CHIP/i2c_17xx_40xx.o \
./CHIP/i2s_17xx_40xx.o \
./CHIP/iocon_17xx_40xx.o \
./CHIP/lcd_17xx_40xx.o \
./CHIP/mem_tests.o \
./CHIP/ring_buffer.o \
./CHIP/ritimer_17xx_40xx.o \
./CHIP/rtc_17xx_40xx.o \
./CHIP/sdc_17xx_40xx.o \
./CHIP/sdmmc_17xx_40xx.o \
./CHIP/spi_17xx_40xx.o \
./CHIP/ssp_17xx_40xx.o \
./CHIP/sysctl_17xx_40xx.o \
./CHIP/timer_17xx_40xx.o \
./CHIP/uart_17xx_40xx.o \
./CHIP/wwdt_17xx_40xx.o 

C_DEPS += \
./CHIP/adc_17xx_40xx.d \
./CHIP/can_17xx_40xx.d \
./CHIP/clock_17xx_40xx.d \
./CHIP/cmp_17xx_40xx.d \
./CHIP/crc_17xx_40xx.d \
./CHIP/dac_17xx_40xx.d \
./CHIP/eeprom_17xx_40xx.d \
./CHIP/emc_17xx_40xx.d \
./CHIP/enet_17xx_40xx.d \
./CHIP/gpdma_17xx_40xx.d \
./CHIP/i2c_17xx_40xx.d \
./CHIP/i2s_17xx_40xx.d \
./CHIP/iocon_17xx_40xx.d \
./CHIP/lcd_17xx_40xx.d \
./CHIP/mem_tests.d \
./CHIP/ring_buffer.d \
./CHIP/ritimer_17xx_40xx.d \
./CHIP/rtc_17xx_40xx.d \
./CHIP/sdc_17xx_40xx.d \
./CHIP/sdmmc_17xx_40xx.d \
./CHIP/spi_17xx_40xx.d \
./CHIP/ssp_17xx_40xx.d \
./CHIP/sysctl_17xx_40xx.d \
./CHIP/timer_17xx_40xx.d \
./CHIP/uart_17xx_40xx.d \
./CHIP/wwdt_17xx_40xx.d 


# Each subdirectory must supply rules for building sources it contributes
CHIP/%.o: ../CHIP/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCORE_M3 -DDEBUG -D__CODE_RED -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_board\board_common" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_board\boards_17xx_40xx\nxp_xpresso_1769" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_chip\chip_common" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_ip" -I"C:\LPCOpen\lpcopen\software\CMSIS\CMSIS\Include" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_chip\chip_17xx_40xx" -Og -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


