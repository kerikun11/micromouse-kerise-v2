/*
 * config.h
 *
 *  Created on: 2016/10/23
 *      Author: kerikun11
 */

#ifndef CONFIG_H_
#define CONFIG_H_

#include "mbed.h"

/* Thread Priorities */

#define PRIORITY_REFLECTOR_UPDATE	osPriorityHigh
#define PRIORITY_MPU6500_UPDATE		osPriorityHigh

#define PRIORITY_WALL_UPDATE		osPriorityAboveNormal
#define PRIORITY_ENCODER_UPDATE		osPriorityAboveNormal

#define PRIORITY_EMERGENCY_STOP		osPriorityAboveNormal
#define PRIORITY_SPEED_CONTROLLER	osPriorityAboveNormal

#define PRIORITY_MOVE_ACTION		osPriorityNormal
#define PRIORITY_BUZZER				osPriorityNormal

#define PRIORITY_MAZE_SOLVER		osPriorityBelowNormal

#define PRIORITY_DEBUG_INFO			osPriorityLow

#define PRIORITY_SERIAL_CTRL		osPriorityIdle

/* thread stack size */

#define STACK_SIZE_BUZZER			1024
#define STACK_SIZE_ENCODER			512
#define STACK_SIZE_MAZE_SOLVER		4096
#define STACK_SIZE_MOVE_ACTION		4096
#define STACK_SIZE_MPU6500_UPDATE	1024
#define STACK_SIZE_REFLECTOR_UPDATE	512
#define STACK_SIZE_SPEED_CONTROLLER	1024
#define STACK_SIZE_WALL_UPDATE		512
#define STACK_SIZE_DEBUG_INFO		2048
#define STACK_SIZE_SERIAL_CTRL		2048
#define STACK_SIZE_EMERGENCY		512

/* Maze Size */
#define HALF_SIZE					true

#if HALF_SIZE
#define SEGMENT_WIDTH				90
#define WALL_THICKNESS				6
#else
#define SEGMENT_WIDTH				180
#define WALL_THICKNESS				12
#endif

/* Hardware Parameter */

#define MACHINE_TAIL_LENGTH			24.0f
#define MACHINE_ROTATION_RADIUS		21.5f
#define WHEEL_DIAMETER_MM			24.5f
#define WHEEL_GEER_RATIO			0.25f
#define ENCODER_PULSES				(1024*4)

/* Calibration Parameter */

#if HALF_SIZE

#define SPEED_CONTROLLER_KP			1.6f
#define SPEED_CONTROLLER_KI			24.0f
#define SPEED_CONTROLLER_KD			0.001f

#define WALL_DETECTOR_FLONT_RATIO	1.0f
#define WALL_SIDE_DIV				4
#define WALL_FRONT_DIV				9

#else

#define SPEED_CONTROLLER_KP			1.8f
#define SPEED_CONTROLLER_KI			24.0f
#define SPEED_CONTROLLER_KD			0.001f

#define WALL_DETECTOR_FLONT_RATIO	1.0f
#define WALL_SIDE_DIV				3
#define WALL_FRONT_DIV				6

#endif

/* Update/Sampling Period [us] */

#define MPU6500_UPDATE_PERIOD_US	1000

#define ENCODER_UPDATE_PERIOD_US	1000

#define IR_LED_PERIOD_US				500
#define IR_LED_DUTY_US					250
#define IR_RECEIVER_SAMPLE_SIZE			25
#define IR_RECEIVER_SAMPLING_PERIOD_US	20
#define IR_RECEIVER_UPDATE_PERIOD_US	1000

#define WALL_UPDATE_PERIOD_US		1000

#define SPEED_CONTROLLER_PERIOD_US	1000

#define MOVE_ACTION_PERIOD			1000

/* Pin Mapping */

#define BATTERY_PIN					PB_1

#define BUZZER_PIN					PB_9	//< Modify PeripheralPins.c PWM Pin using Timer11

#define BUTTON_PIN					PB_0

#define LED1_PIN					PC_5
#define LED2_PIN					PC_6
#define LED3_PIN					PC_7
#define LED4_PIN					PC_8
#define LED5_PIN					PC_9
#define LED6_PIN					PC_10
#define LED7_PIN					PC_11
#define LED8_PIN					PC_12

#define MPU6500_MOSI_PIN			PA_7
#define MPU6500_MISO_PIN			PA_6
#define MPU6500_SCLK_PIN			PA_5
#define MPU6500_SSEL_PIN			PA_4

#define IR_LED_SL_FR_PIN			PB_14
#define IR_LED_SR_FL_PIN			PB_15

/* Motor */
#define MOTOR_TIMx						TIM2
#define MOTOR_TIMx_CLK_ENABLE()			__HAL_RCC_TIM2_CLK_ENABLE()
#define MOTOR_TIMx_CHANNEL_GPIO_PORT()	do{__HAL_RCC_GPIOA_CLK_ENABLE();__HAL_RCC_GPIOB_CLK_ENABLE();}while(0)
#define MOTOR_TIMx_GPIO_PORT_CHANNEL1	GPIOA
#define MOTOR_TIMx_GPIO_PORT_CHANNEL2	GPIOA
#define MOTOR_TIMx_GPIO_PORT_CHANNEL3	GPIOB
#define MOTOR_TIMx_GPIO_PORT_CHANNEL4	GPIOB
#define MOTOR_TIMx_GPIO_PIN_CHANNEL1	GPIO_PIN_0
#define MOTOR_TIMx_GPIO_PIN_CHANNEL2	GPIO_PIN_1
#define MOTOR_TIMx_GPIO_PIN_CHANNEL3	GPIO_PIN_10
#define MOTOR_TIMx_GPIO_PIN_CHANNEL4	GPIO_PIN_11
#define MOTOR_TIMx_GPIO_AF_CHANNEL		GPIO_AF1_TIM2
#define MOTOR_PERIOD_VALUE				(1000 - 1)

/* Encoder */
#define ENCODER_L_TIMx	TIM3
#define ENCODER_R_TIMx	TIM4

/* Definition for ADCx clock resources */
#define ADCx_S							ADC2
#define ADCx_F							ADC3
#define ADCx_S_CLK_ENABLE()				__HAL_RCC_ADC2_CLK_ENABLE()
#define ADCx_F_CLK_ENABLE()				__HAL_RCC_ADC3_CLK_ENABLE()
#define ADCx_CHANNEL_GPIO_CLK_ENABLE()  __HAL_RCC_GPIOC_CLK_ENABLE()

#define ADCx_FORCE_RESET()              __HAL_RCC_ADC_FORCE_RESET()
#define ADCx_RELEASE_RESET()            __HAL_RCC_ADC_RELEASE_RESET()

/* Definition for ADCx Channel Pin */
#define ADCx_CHANNEL_SL_PIN             GPIO_PIN_0
#define ADCx_CHANNEL_FL_PIN             GPIO_PIN_1
#define ADCx_CHANNEL_FR_PIN             GPIO_PIN_2
#define ADCx_CHANNEL_SR_PIN             GPIO_PIN_3
#define ADCx_CHANNEL_GPIO_PORT          GPIOC

/* Definition for ADCx's Channel */
#define ADCx_CHANNEL_SL					ADC_CHANNEL_10
#define ADCx_CHANNEL_FL					ADC_CHANNEL_11
#define ADCx_CHANNEL_FR					ADC_CHANNEL_12
#define ADCx_CHANNEL_SR					ADC_CHANNEL_13

/*
 * TIM1		IR LED
 * TIM2		mbed timer
 * TIM3		Encoder L
 * TIM4		Encoder R
 * TIM5		*
 * TIM6		*
 * TIM7		*
 * TIM8		*
 * TIM9		*
 * TIM10	*
 * TIM11	Buzzer
 * TIM12	*
 * TIM13	*
 * TIM14	*
 */

/*
 * PA0	Motor IN1 L		TIM2_CH1				HAL
 * PA1	Motor IN2 L		TIM2_CH2				HAL
 * PA2	UART TX			UART2_TX				mbed
 * PA2	UART RX			UART2_RX				mbed
 * PA4	MPU6500 nCS		SPI1_NSS				mbed
 * PA5	MPU6500 SCK		SPI1_SCK				mbed
 * PA6	MPU6500 nMISO	SPI1_MISO				mbed
 * PA7	MPU6500 MOSI	SPI1_MOSI				mbed
 * PA8	NC
 * PA9
 * PA10
 * PA11	NC
 * PA12	NC
 * PA13	ST-Link SWDIO	SWDIO
 * PA14	ST-Link SWCLK	SWCLK
 * PA15	NC
 *
 * PB0	Button									mbed
 * PB1	Battery Voltage	ADC1_IN8 / ADC2_IN8		mbed
 * PB2	NC
 * PB3	ST-Link SWO		SWO
 * PB4	Encoder L A		TIM3_CH1				HAL
 * PB5	Encoder L B		TIM3_CH2				HAL
 * PB6	Encoder R A		TIM4_CH1				HAL
 * PB7	Encoder R B		TIM4_CH2				HAL
 * PB8	Speaker			TIM10_CH1				mbed (change mbed timer)
 * PB9	Motor IN1 R		TIM2_CH3				HAL
 * PB10	Motor IN2 R		TIM2_CH4				HAL
 * PB11	NC
 * PB12	NC
 * PB13	NC
 * PB14	IR LED SL FR	TIM1_CH2N				mbed
 * PB15	IR LED SL FR	TIM1_CH3N				mbed
 *
 * PC0	IR Receiver SL	ADC1_IN10				HAL
 * PC1	IR Receiver FL	ADC1_IN11				HAL
 * PC2	IR Receiver FR	ADC1_IN12				HAL
 * PC3	IR Receiver SR	ADC1_IN13				HAL
 * PC4	MPU6500 Int
 * PC5	LED1
 * PC6	LED2
 * PC7	LED3
 * PC8	LED4
 * PC9	NC
 * PC10	NC
 * PC11	NC
 * PC12	NC
 * PC13	NC
 * PC14	NC
 * PC15	NC
 */

#endif /* CONFIG_H_ */
