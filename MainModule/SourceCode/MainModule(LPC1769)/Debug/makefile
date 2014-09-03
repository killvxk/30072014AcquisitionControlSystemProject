################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: MainModule(LPC1769).axf

# Tool invocations
MainModule(LPC1769).axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"..\..\nxp_xpresso_1769_board_lib\Debug" -L"..\..\nxp_xpresso_1769_usblib_device\Debug" -Xlinker -Map="MainModule(LPC1769).map" -Xlinker --gc-sections -mcpu=cortex-m3 -mthumb -T "MainModule_LPC1769_Debug.ld" -o "MainModule(LPC1769).axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) MainModule(LPC1769).axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "MainModule(LPC1769).axf"; # arm-none-eabi-objcopy -O binary "MainModule(LPC1769).axf" "MainModule(LPC1769).bin" ; checksum -p LPC1769 -d "MainModule(LPC1769).bin";
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
