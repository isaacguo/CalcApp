################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/CalcApp.cpp 

OBJS += \
./src/CalcApp.o 

CPP_DEPS += \
./src/CalcApp.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	$(CXX) -I"/home/isaac/Project/GoogleTestDemo/CalcComponent/include" -I/opt/poky/2.0.1/sysroots/cortexa5hf-vfp-poky-linux-gnueabi/usr/include/c++/5.2.0/arm-poky-linux-gnueabi -I/opt/poky/2.0.1/sysroots/cortexa5hf-vfp-poky-linux-gnueabi/usr/include/c++/5.2.0 -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF "$(@:%.o=%.d)" -MT "$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


