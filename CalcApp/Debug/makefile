################################################################################
# Automatically-generated file. Do not edit!
################################################################################

### Toolchain: yocto--arm-poky-linux-gnueabi-20160726001500 ###
CC=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc -march=armv7-a -marm  -mthumb-interwork -mfloat-abi=hard -mtune=cortex-a5 --sysroot=/opt/poky/2.0.1/sysroots/cortexa5hf-vfp-poky-linux-gnueabi
STRIP=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-strip
CPP=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-cpp -march=armv7-a -marm  -mthumb-interwork -mfloat-abi=hard -mtune=cortex-a5 --sysroot=/opt/poky/2.0.1/sysroots/cortexa5hf-vfp-poky-linux-gnueabi
CXX=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++ -march=armv7-a -marm  -mthumb-interwork -mfloat-abi=hard -mtune=cortex-a5 --sysroot=/opt/poky/2.0.1/sysroots/cortexa5hf-vfp-poky-linux-gnueabi
RANLIB=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-ranlib
CXXFILT=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-c++filt
DEBUGGER=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb
AR=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-ar
AS=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-as
OBJCOPY=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-objcopy
OBJDUMP=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-objdump
LD=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld -march=armv7-a -marm  -mthumb-interwork -mfloat-abi=hard -mtune=cortex-a5 --sysroot=/opt/poky/2.0.1/sysroots/cortexa5hf-vfp-poky-linux-gnueabi
ADDR2LINE=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-addr2line
NM=/opt/poky/2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-nm

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: CalcApp

# Tool invocations
CalcApp: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C++ Linker'
	$(CXX) -L"/home/isaac/Project/GoogleTestDemo/CalcComponent/Debug" -o "CalcApp" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) CalcApp
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
