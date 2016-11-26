EESchema Schematic File Version 2
LIBS:Mouse-01
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:connectors
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ic-cpu
LIBS:ic-io
LIBS:ic-misc
LIBS:ic-power
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:passive
LIBS:philips
LIBS:power
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:Mouse-01-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 13
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SPEAKER SP1
U 1 1 57CD8DE7
P 4800 3700
F 0 "SP1" H 4700 3950 50  0000 C CNN
F 1 "SMT-0440" H 4700 3450 50  0000 C CNN
F 2 "mouse:SMT-0440-S-R" H 4800 3700 50  0001 C CNN
F 3 "" H 4800 3700 50  0000 C CNN
	1    4800 3700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR092
U 1 1 57CE7538
P 4400 3500
F 0 "#PWR092" H 4400 3350 50  0001 C CNN
F 1 "+3.3V" H 4400 3640 50  0000 C CNN
F 2 "" H 4400 3500 50  0000 C CNN
F 3 "" H 4400 3500 50  0000 C CNN
	1    4400 3500
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 57CE757A
P 4000 4450
F 0 "R22" V 4080 4450 50  0000 C CNN
F 1 "10k" V 4000 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 3930 4450 50  0001 C CNN
F 3 "" H 4000 4450 50  0000 C CNN
	1    4000 4450
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q4
U 1 1 57CE75AD
P 4300 4200
F 0 "Q4" H 4600 4250 50  0000 R CNN
F 1 "BSS138" H 4800 4150 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4500 4300 50  0001 C CNN
F 3 "" H 4300 4200 50  0000 C CNN
	1    4300 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR093
U 1 1 57CE7673
P 4400 4700
F 0 "#PWR093" H 4400 4450 50  0001 C CNN
F 1 "GND" H 4400 4550 50  0000 C CNN
F 2 "" H 4400 4700 50  0000 C CNN
F 3 "" H 4400 4700 50  0000 C CNN
	1    4400 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR094
U 1 1 57CE768B
P 4000 4700
F 0 "#PWR094" H 4000 4450 50  0001 C CNN
F 1 "GND" H 4000 4550 50  0000 C CNN
F 2 "" H 4000 4700 50  0000 C CNN
F 3 "" H 4000 4700 50  0000 C CNN
	1    4000 4700
	1    0    0    -1  
$EndComp
Text HLabel 3900 4200 0    60   Input ~ 0
SPEAKER
Wire Wire Line
	4400 3500 4400 3600
Wire Wire Line
	4400 3600 4500 3600
Wire Wire Line
	4500 3800 4400 3800
Wire Wire Line
	4400 3800 4400 4000
Wire Wire Line
	4400 4400 4400 4700
Wire Wire Line
	3900 4200 4100 4200
Wire Wire Line
	4000 4200 4000 4300
Wire Wire Line
	4000 4700 4000 4600
Connection ~ 4000 4200
$Comp
L LED D10
U 1 1 57CE80D9
P 6000 4400
F 0 "D10" H 6000 4500 50  0000 C CNN
F 1 "LED" H 6000 4300 50  0000 C CNN
F 2 "LEDs:LED_0603" H 6000 4400 50  0001 C CNN
F 3 "" H 6000 4400 50  0000 C CNN
	1    6000 4400
	0    -1   -1   0   
$EndComp
$Comp
L LED D11
U 1 1 57CE812A
P 6300 4400
F 0 "D11" H 6300 4500 50  0000 C CNN
F 1 "LED" H 6300 4300 50  0000 C CNN
F 2 "LEDs:LED_0603" H 6300 4400 50  0001 C CNN
F 3 "" H 6300 4400 50  0000 C CNN
	1    6300 4400
	0    -1   -1   0   
$EndComp
$Comp
L LED D12
U 1 1 57CE815D
P 6600 4400
F 0 "D12" H 6600 4500 50  0000 C CNN
F 1 "LED" H 6600 4300 50  0000 C CNN
F 2 "LEDs:LED_0603" H 6600 4400 50  0001 C CNN
F 3 "" H 6600 4400 50  0000 C CNN
	1    6600 4400
	0    -1   -1   0   
$EndComp
$Comp
L LED D13
U 1 1 57CE8187
P 6900 4400
F 0 "D13" H 6900 4500 50  0000 C CNN
F 1 "LED" H 6900 4300 50  0000 C CNN
F 2 "LEDs:LED_0603" H 6900 4400 50  0001 C CNN
F 3 "" H 6900 4400 50  0000 C CNN
	1    6900 4400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR095
U 1 1 57CE8530
P 6000 4700
F 0 "#PWR095" H 6000 4450 50  0001 C CNN
F 1 "GND" H 6000 4550 50  0000 C CNN
F 2 "" H 6000 4700 50  0000 C CNN
F 3 "" H 6000 4700 50  0000 C CNN
	1    6000 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR096
U 1 1 57CE8557
P 6300 4700
F 0 "#PWR096" H 6300 4450 50  0001 C CNN
F 1 "GND" H 6300 4550 50  0000 C CNN
F 2 "" H 6300 4700 50  0000 C CNN
F 3 "" H 6300 4700 50  0000 C CNN
	1    6300 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR097
U 1 1 57CE8577
P 6600 4700
F 0 "#PWR097" H 6600 4450 50  0001 C CNN
F 1 "GND" H 6600 4550 50  0000 C CNN
F 2 "" H 6600 4700 50  0000 C CNN
F 3 "" H 6600 4700 50  0000 C CNN
	1    6600 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR098
U 1 1 57CE8597
P 6900 4700
F 0 "#PWR098" H 6900 4450 50  0001 C CNN
F 1 "GND" H 6900 4550 50  0000 C CNN
F 2 "" H 6900 4700 50  0000 C CNN
F 3 "" H 6900 4700 50  0000 C CNN
	1    6900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4700 6900 4600
Wire Wire Line
	6600 4600 6600 4700
Wire Wire Line
	6300 4700 6300 4600
Wire Wire Line
	6000 4600 6000 4700
$Comp
L R R18
U 1 1 57CE8600
P 6000 3950
F 0 "R18" V 6080 3950 50  0000 C CNN
F 1 "1k" V 6000 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5930 3950 50  0001 C CNN
F 3 "" H 6000 3950 50  0000 C CNN
	1    6000 3950
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 57CE8644
P 6300 3950
F 0 "R19" V 6380 3950 50  0000 C CNN
F 1 "1k" V 6300 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 6230 3950 50  0001 C CNN
F 3 "" H 6300 3950 50  0000 C CNN
	1    6300 3950
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 57CE8677
P 6600 3950
F 0 "R20" V 6680 3950 50  0000 C CNN
F 1 "1k" V 6600 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 6530 3950 50  0001 C CNN
F 3 "" H 6600 3950 50  0000 C CNN
	1    6600 3950
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 57CE86AD
P 6900 3950
F 0 "R21" V 6980 3950 50  0000 C CNN
F 1 "1k" V 6900 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 6830 3950 50  0001 C CNN
F 3 "" H 6900 3950 50  0000 C CNN
	1    6900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4100 6900 4200
Wire Wire Line
	6600 4200 6600 4100
Wire Wire Line
	6300 4100 6300 4200
Wire Wire Line
	6000 4200 6000 4100
Text HLabel 5900 3700 0    60   Input ~ 0
LED_1
Text HLabel 5900 3600 0    60   Input ~ 0
LED_2
Text HLabel 5900 3500 0    60   Input ~ 0
LED_3
Text HLabel 5900 3400 0    60   Input ~ 0
LED_4
Wire Wire Line
	5900 3700 6000 3700
Wire Wire Line
	6000 3700 6000 3800
Wire Wire Line
	5900 3600 6300 3600
Wire Wire Line
	6300 3600 6300 3800
Wire Wire Line
	6600 3800 6600 3500
Wire Wire Line
	6600 3500 5900 3500
Wire Wire Line
	5900 3400 6900 3400
Wire Wire Line
	6900 3400 6900 3800
$Comp
L GND #PWR099
U 1 1 57CEA2EF
P 8200 4700
F 0 "#PWR099" H 8200 4450 50  0001 C CNN
F 1 "GND" H 8200 4550 50  0000 C CNN
F 2 "" H 8200 4700 50  0000 C CNN
F 3 "" H 8200 4700 50  0000 C CNN
	1    8200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4700 8200 4500
Text HLabel 8100 3800 0    60   Input ~ 0
BUTTON
$Comp
L Tactile_SW_4P SW3
U 1 1 57DDE1FB
P 7800 4200
F 0 "SW3" H 7800 4450 50  0000 C CNN
F 1 "BUTTON" H 7800 3850 50  0000 C CNN
F 2 "mouse:SW_PUSH" V 7750 4150 60  0001 C CNN
F 3 "" V 7750 4150 60  0000 C CNN
	1    7800 4200
	1    0    0    -1  
$EndComp
NoConn ~ 7400 4000
NoConn ~ 7400 4500
Text Notes 3300 3100 0    100  ~ 0
User Interface
Wire Wire Line
	8200 3800 8200 4000
Wire Wire Line
	8100 3800 8500 3800
$Comp
L GND #PWR0100
U 1 1 57CEAAF6
P 8500 4700
F 0 "#PWR0100" H 8500 4450 50  0001 C CNN
F 1 "GND" H 8500 4550 50  0000 C CNN
F 2 "" H 8500 4700 50  0000 C CNN
F 3 "" H 8500 4700 50  0000 C CNN
	1    8500 4700
	1    0    0    -1  
$EndComp
$Comp
L C C32
U 1 1 583A7129
P 8500 4250
F 0 "C32" H 8525 4350 50  0000 L CNN
F 1 "0.1u" H 8525 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8538 4100 50  0001 C CNN
F 3 "" H 8500 4250 50  0000 C CNN
	1    8500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4400 8500 4700
Wire Wire Line
	8500 3800 8500 4100
Connection ~ 8200 3800
$EndSCHEMATC
