################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mss_uart/mss_uart.c 

OBJS += \
./drivers/mss_uart/mss_uart.o 

C_DEPS += \
./drivers/mss_uart/mss_uart.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mss_uart/%.o: ../drivers/mss_uart/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DACTEL_STDIO_THRU_UART -IE:\repos\ECEN5863_HW\HW5_Practical\polled_uart\UART\SoftConsole\UART_MSS_MSS_CM3_0\UART_MSS_MSS_CM3_0_hw_platform -IE:\repos\ECEN5863_HW\HW5_Practical\polled_uart\UART\SoftConsole\UART_MSS_MSS_CM3_0\UART_MSS_MSS_CM3_0_hw_platform\CMSIS -IE:\repos\ECEN5863_HW\HW5_Practical\polled_uart\UART\SoftConsole\UART_MSS_MSS_CM3_0\UART_MSS_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IE:\repos\ECEN5863_HW\HW5_Practical\polled_uart\UART\SoftConsole\UART_MSS_MSS_CM3_0\UART_MSS_MSS_CM3_0_hw_platform\drivers -IE:\repos\ECEN5863_HW\HW5_Practical\polled_uart\UART\SoftConsole\UART_MSS_MSS_CM3_0\UART_MSS_MSS_CM3_0_hw_platform\drivers\mss_uart -IE:\repos\ECEN5863_HW\HW5_Practical\polled_uart\UART\SoftConsole\UART_MSS_MSS_CM3_0\UART_MSS_MSS_CM3_0_hw_platform\hal -IE:\repos\ECEN5863_HW\HW5_Practical\polled_uart\UART\SoftConsole\UART_MSS_MSS_CM3_0\UART_MSS_MSS_CM3_0_hw_platform\hal\CortexM3 -IE:\repos\ECEN5863_HW\HW5_Practical\polled_uart\UART\SoftConsole\UART_MSS_MSS_CM3_0\UART_MSS_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O0 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

