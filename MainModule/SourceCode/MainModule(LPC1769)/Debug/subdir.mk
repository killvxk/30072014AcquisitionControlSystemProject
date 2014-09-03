################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Descriptors.c \
../VirtualSerial.c \
../cr_startup_lpc17xx40xx.c 

OBJS += \
./Descriptors.o \
./VirtualSerial.o \
./cr_startup_lpc17xx40xx.o 

C_DEPS += \
./Descriptors.d \
./VirtualSerial.d \
./cr_startup_lpc17xx40xx.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -DUSB_DEVICE_ONLY -D__LPC175X_6X__ -D__CODE_RED -DCORE_M3 -I"C:\LPCOpen\lpcopen\software\CMSIS\CMSIS\Include" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_ip" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_chip\chip_common" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_chip\chip_17xx_40xx" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_board\board_common" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_board\boards_17xx_40xx\nxp_xpresso_1769" -I"C:\LPCOpen\lpcopen\software\LPCUSBLib\Drivers\USB" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


