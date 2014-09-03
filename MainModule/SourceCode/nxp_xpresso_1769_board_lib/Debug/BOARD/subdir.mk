################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../BOARD/board_nxp_xpresso_1769.c \
../BOARD/sysinit_nxp_xpresso_1769.c 

OBJS += \
./BOARD/board_nxp_xpresso_1769.o \
./BOARD/sysinit_nxp_xpresso_1769.o 

C_DEPS += \
./BOARD/board_nxp_xpresso_1769.d \
./BOARD/sysinit_nxp_xpresso_1769.d 


# Each subdirectory must supply rules for building sources it contributes
BOARD/%.o: ../BOARD/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCORE_M3 -DDEBUG -D__CODE_RED -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_board\board_common" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_board\boards_17xx_40xx\nxp_xpresso_1769" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_chip\chip_common" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_ip" -I"C:\LPCOpen\lpcopen\software\CMSIS\CMSIS\Include" -I"C:\LPCOpen\lpcopen\software\lpc_core\lpc_chip\chip_17xx_40xx" -Og -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


