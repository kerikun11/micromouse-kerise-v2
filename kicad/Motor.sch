EESchema Schematic File Version 2
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
LIBS:KERISEv2
LIBS:KERISEv2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 15
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
L DRV8835 U2
U 1 1 57CA1E0F
P 5800 4200
AR Path="/57CA18F6/57CA1E0F" Ref="U2"  Part="1" 
AR Path="/57CA507C/57CA1E0F" Ref="U3"  Part="1" 
F 0 "U3" H 5350 4550 60  0000 L CNN
F 1 "DRV8835" H 5950 4550 60  0000 L CNN
F 2 "mouse:DRV8835" H 5400 4350 60  0001 C CNN
F 3 "" H 5400 4350 60  0000 C CNN
	1    5800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4000 6800 4000
Wire Wire Line
	6400 4100 6800 4100
Wire Wire Line
	6400 4200 6600 4200
Wire Wire Line
	6400 4300 6700 4300
Wire Wire Line
	4900 4000 5200 4000
Wire Wire Line
	6600 4200 6600 4000
Connection ~ 6600 4000
Wire Wire Line
	6700 4300 6700 4100
Connection ~ 6700 4100
Wire Wire Line
	5200 4200 5100 4200
Wire Wire Line
	5100 4200 5100 4000
Connection ~ 5100 4000
Wire Wire Line
	5200 4300 5000 4300
Wire Wire Line
	5000 4300 5000 4100
Wire Wire Line
	4900 4100 5200 4100
Connection ~ 5000 4100
$Comp
L +3.3V #PWR010
U 1 1 57CA1E2A
P 5600 3700
AR Path="/57CA18F6/57CA1E2A" Ref="#PWR010"  Part="1" 
AR Path="/57CA507C/57CA1E2A" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 5600 3550 50  0001 C CNN
F 1 "+3.3V" H 5600 3840 50  0000 C CNN
F 2 "" H 5600 3700 50  0000 C CNN
F 3 "" H 5600 3700 50  0000 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3700 5600 3800
Wire Wire Line
	5900 3700 5900 3800
$Comp
L GND #PWR011
U 1 1 57CA1E38
P 5700 4800
AR Path="/57CA18F6/57CA1E38" Ref="#PWR011"  Part="1" 
AR Path="/57CA507C/57CA1E38" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 5700 4550 50  0001 C CNN
F 1 "GND" H 5700 4650 50  0000 C CNN
F 2 "" H 5700 4800 50  0000 C CNN
F 3 "" H 5700 4800 50  0000 C CNN
	1    5700 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4800 5700 4700
$Comp
L GND #PWR012
U 1 1 57CA1E3F
P 6000 4800
AR Path="/57CA18F6/57CA1E3F" Ref="#PWR012"  Part="1" 
AR Path="/57CA507C/57CA1E3F" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 6000 4550 50  0001 C CNN
F 1 "GND" H 6000 4650 50  0000 C CNN
F 2 "" H 6000 4800 50  0000 C CNN
F 3 "" H 6000 4800 50  0000 C CNN
	1    6000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4800 6000 4700
$Comp
L GND #PWR013
U 1 1 57CA1E46
P 5100 4800
AR Path="/57CA18F6/57CA1E46" Ref="#PWR013"  Part="1" 
AR Path="/57CA507C/57CA1E46" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 5100 4550 50  0001 C CNN
F 1 "GND" H 5100 4650 50  0000 C CNN
F 2 "" H 5100 4800 50  0000 C CNN
F 3 "" H 5100 4800 50  0000 C CNN
	1    5100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4800 5100 4500
Wire Wire Line
	5100 4500 5200 4500
$Comp
L CONN_02X03 P1
U 1 1 57CA1E4E
P 5850 3100
AR Path="/57CA18F6/57CA1E4E" Ref="P1"  Part="1" 
AR Path="/57CA507C/57CA1E4E" Ref="P2"  Part="1" 
F 0 "P2" H 5850 3300 50  0000 C CNN
F 1 "MT-ENC" H 5850 2900 50  0000 C CNN
F 2 "mouse:1717" H 5850 1900 50  0001 C CNN
F 3 "" H 5850 1900 50  0000 C CNN
	1    5850 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 57CA1E57
P 5500 3300
AR Path="/57CA18F6/57CA1E57" Ref="#PWR014"  Part="1" 
AR Path="/57CA507C/57CA1E57" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 5500 3050 50  0001 C CNN
F 1 "GND" H 5500 3150 50  0000 C CNN
F 2 "" H 5500 3300 50  0000 C CNN
F 3 "" H 5500 3300 50  0000 C CNN
	1    5500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3100 5500 3100
Wire Wire Line
	5500 3100 5500 3300
Wire Wire Line
	5400 3200 5600 3200
Wire Wire Line
	5600 3000 5400 3000
Wire Wire Line
	6300 3200 6100 3200
$Comp
L +5V #PWR015
U 1 1 57CA1E65
P 6200 2900
AR Path="/57CA18F6/57CA1E65" Ref="#PWR015"  Part="1" 
AR Path="/57CA507C/57CA1E65" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 6200 2750 50  0001 C CNN
F 1 "+5V" H 6200 3040 50  0000 C CNN
F 2 "" H 6200 2900 50  0000 C CNN
F 3 "" H 6200 2900 50  0000 C CNN
	1    6200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2900 6200 3100
Wire Wire Line
	6200 3100 6100 3100
Text Label 6300 3000 0    60   ~ 0
MT_OUT_2
Wire Wire Line
	6300 3000 6100 3000
Text Label 5400 3000 2    60   ~ 0
MT_OUT_1
Text Label 6800 4000 0    60   ~ 0
MT_OUT_1
Text Label 6800 4100 0    60   ~ 0
MT_OUT_2
Text HLabel 6300 3200 2    60   Input ~ 0
ENC_A
Text HLabel 5400 3200 0    60   Input ~ 0
ENC_B
Text HLabel 4900 4000 0    60   Input ~ 0
MT_IN_1
Text HLabel 4900 4100 0    60   Input ~ 0
MT_IN_2
Text Notes 3800 2700 0    100  ~ 0
Motor and Encoder
$Comp
L C C10
U 1 1 57CCEFE0
P 4100 4250
AR Path="/57CA18F6/57CCEFE0" Ref="C10"  Part="1" 
AR Path="/57CA507C/57CCEFE0" Ref="C11"  Part="1" 
F 0 "C11" H 4125 4350 50  0000 L CNN
F 1 "0.1u" H 4125 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4138 4100 50  0001 C CNN
F 3 "" H 4100 4250 50  0000 C CNN
	1    4100 4250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR016
U 1 1 57CCF032
P 4100 3700
AR Path="/57CA18F6/57CCF032" Ref="#PWR016"  Part="1" 
AR Path="/57CA507C/57CCF032" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 4100 3550 50  0001 C CNN
F 1 "+3.3V" H 4100 3840 50  0000 C CNN
F 2 "" H 4100 3700 50  0000 C CNN
F 3 "" H 4100 3700 50  0000 C CNN
	1    4100 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 57CCF046
P 4100 4800
AR Path="/57CA18F6/57CCF046" Ref="#PWR017"  Part="1" 
AR Path="/57CA507C/57CCF046" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 4100 4550 50  0001 C CNN
F 1 "GND" H 4100 4650 50  0000 C CNN
F 2 "" H 4100 4800 50  0000 C CNN
F 3 "" H 4100 4800 50  0000 C CNN
	1    4100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4100 4100 3700
Wire Wire Line
	4100 4400 4100 4800
$Comp
L +BATT #PWR018
U 1 1 57CD5BEE
P 5900 3700
AR Path="/57CA18F6/57CD5BEE" Ref="#PWR018"  Part="1" 
AR Path="/57CA507C/57CD5BEE" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 5900 3550 50  0001 C CNN
F 1 "+BATT" H 5900 3840 50  0000 C CNN
F 2 "" H 5900 3700 50  0000 C CNN
F 3 "" H 5900 3700 50  0000 C CNN
	1    5900 3700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
