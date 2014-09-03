################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/USB/Core/HCD/OHCI/subdir.mk
-include Drivers/USB/Core/HCD/EHCI/subdir.mk
-include Drivers/USB/Core/HCD/subdir.mk
-include Drivers/USB/Core/HAL/LPC17XX/subdir.mk
-include Drivers/USB/Core/HAL/LPC11UXX/subdir.mk
-include Drivers/USB/Core/DCD/USBRom/subdir.mk
-include Drivers/USB/Core/DCD/LPC18XX/subdir.mk
-include Drivers/USB/Core/DCD/LPC17XX/subdir.mk
-include Drivers/USB/Core/DCD/LPC11UXX/subdir.mk
-include Drivers/USB/Core/subdir.mk
-include Drivers/USB/Class/Host/subdir.mk
-include Drivers/USB/Class/Device/subdir.mk
-include Drivers/USB/Class/Common/subdir.mk
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
all: libnxp_xpresso_1769_usblib_device.a

# Tool invocations
libnxp_xpresso_1769_usblib_device.a: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Archiver'
	arm-none-eabi-ar -r  "libnxp_xpresso_1769_usblib_device.a" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(ARCHIVES) libnxp_xpresso_1769_usblib_device.a
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "libnxp_xpresso_1769_usblib_device.a" ; # arm-none-eabi-objdump -h -S "libnxp_xpresso_1769_usblib_device.a" >"libnxp_xpresso_1769_usblib_device.lss"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
