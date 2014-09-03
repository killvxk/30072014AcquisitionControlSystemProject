################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/USB/Core/DCD/LPC17XX/Endpoint_LPC17xx.c 

OBJS += \
./Drivers/USB/Core/DCD/LPC17XX/Endpoint_LPC17xx.o 

C_DEPS += \
./Drivers/USB/Core/DCD/LPC17XX/Endpoint_LPC17xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/USB/Core/DCD/LPC17XX/%.o: ../Drivers/USB/Core/DCD/LPC17XX/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__LPC175X_6X__ -DCORE_M3 -DUSB_DEVICE_ONLY -D__REDLIB__ -D__CODE_RED -I"C:\LPCOpen\lpcopen\software\CMSIS\CMSIS\Include" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_ip" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_chip\chip_common" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_chip\chip_17xx_40xx" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_board\boards_17xx_40xx\nxp_xpresso_1769" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -std=gnu99 -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


