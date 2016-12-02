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
Sheet 14 14
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
L USB_A P7
U 1 1 58401B0D
P 3500 3500
F 0 "P7" V 3200 3300 50  0000 C CNN
F 1 "USB_A" V 3200 3550 50  0000 C CNN
F 2 "mouse:USB_A_P" V 3450 3400 50  0001 C CNN
F 3 "" V 3450 3400 50  0000 C CNN
	1    3500 3500
	0    -1   1    0   
$EndComp
$Comp
L C C33
U 1 1 58401C16
P 4000 3950
F 0 "C33" H 4025 4050 50  0000 L CNN
F 1 "4.7u" H 4025 3850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4038 3800 50  0001 C CNN
F 3 "" H 4000 3950 50  0000 C CNN
	1    4000 3950
	1    0    0    -1  
$EndComp
$Comp
L MCP73831 U10
U 1 1 584023C4
P 7400 4000
F 0 "U10" H 7400 4350 60  0000 C CNN
F 1 "MCP73831" H 7400 4250 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 7400 4000 60  0001 C CNN
F 3 "" H 7400 4000 60  0000 C CNN
	1    7400 4000
	1    0    0    -1  
$EndComp
$Comp
L R R25
U 1 1 58402BC3
P 4300 4250
F 0 "R25" V 4380 4250 50  0000 C CNN
F 1 "4.7k" V 4300 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4230 4250 50  0001 C CNN
F 3 "" H 4300 4250 50  0000 C CNN
	1    4300 4250
	1    0    0    -1  
$EndComp
$Comp
L MCP73831 U9
U 1 1 58402CB7
P 4900 4000
F 0 "U9" H 4900 4350 60  0000 C CNN
F 1 "MCP73831" H 4900 4250 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 4900 4000 60  0001 C CNN
F 3 "" H 4900 4000 60  0000 C CNN
	1    4900 4000
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 58402E63
P 5650 4000
F 0 "R23" V 5730 4000 50  0000 C CNN
F 1 "1k" V 5650 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5580 4000 50  0001 C CNN
F 3 "" H 5650 4000 50  0000 C CNN
	1    5650 4000
	0    1    1    0   
$EndComp
$Comp
L LED D14
U 1 1 58402EE4
P 5900 3600
F 0 "D14" H 5900 3700 50  0000 C CNN
F 1 "LED" H 5900 3500 50  0000 C CNN
F 2 "LEDs:LED_0603" H 5900 3600 50  0001 C CNN
F 3 "" H 5900 3600 50  0000 C CNN
	1    5900 3600
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P8
U 1 1 5840336A
P 6500 3950
F 0 "P8" H 6500 4100 50  0000 C CNN
F 1 "BAT1" V 6600 3950 50  0000 C CNN
F 2 "Connectors_Hirose:Hirose_DF13-02P-1.25DSA_02x1.25mm_Straight" H 6500 3950 50  0001 C CNN
F 3 "" H 6500 3950 50  0000 C CNN
	1    6500 3950
	1    0    0    -1  
$EndComp
$Comp
L R R26
U 1 1 5840343B
P 6800 4250
F 0 "R26" V 6880 4250 50  0000 C CNN
F 1 "4.7k" V 6800 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6730 4250 50  0001 C CNN
F 3 "" H 6800 4250 50  0000 C CNN
	1    6800 4250
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 58403665
P 8150 4000
F 0 "R24" V 8230 4000 50  0000 C CNN
F 1 "1k" V 8150 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8080 4000 50  0001 C CNN
F 3 "" H 8150 4000 50  0000 C CNN
	1    8150 4000
	0    1    1    0   
$EndComp
$Comp
L LED D15
U 1 1 584036D1
P 8400 3600
F 0 "D15" H 8400 3700 50  0000 C CNN
F 1 "LED" H 8400 3500 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8400 3600 50  0001 C CNN
F 3 "" H 8400 3600 50  0000 C CNN
	1    8400 3600
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P9
U 1 1 58403744
P 9000 3950
F 0 "P9" H 9000 4100 50  0000 C CNN
F 1 "BAT2" V 9100 3950 50  0000 C CNN
F 2 "Connectors_Hirose:Hirose_DF13-02P-1.25DSA_02x1.25mm_Straight" H 9000 3950 50  0001 C CNN
F 3 "" H 9000 3950 50  0000 C CNN
	1    9000 3950
	1    0    0    -1  
$EndComp
$Comp
L C C34
U 1 1 5840663C
P 6000 4250
F 0 "C34" H 6025 4350 50  0000 L CNN
F 1 "4.7u" H 6025 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6038 4100 50  0001 C CNN
F 3 "" H 6000 4250 50  0000 C CNN
	1    6000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3300 8800 3300
Wire Wire Line
	4000 3300 4000 3800
Connection ~ 4000 3300
Wire Wire Line
	4400 4000 4300 4000
Wire Wire Line
	4300 4000 4300 4100
Wire Wire Line
	4300 3300 4300 3900
Wire Wire Line
	4300 3900 4400 3900
Connection ~ 4300 3300
Wire Wire Line
	5400 4000 5500 4000
Wire Wire Line
	5900 4000 5800 4000
Wire Wire Line
	5400 3900 6300 3900
Wire Wire Line
	6800 4100 6800 4000
Wire Wire Line
	6800 4000 6900 4000
Wire Wire Line
	6800 3900 6900 3900
Wire Wire Line
	6800 3300 6800 3900
Wire Wire Line
	7900 4000 8000 4000
Wire Wire Line
	7900 3900 8800 3900
Wire Wire Line
	8400 4000 8300 4000
Wire Wire Line
	5900 4000 5900 3800
Wire Wire Line
	5900 3400 5900 3300
Connection ~ 5900 3300
Wire Wire Line
	8400 3800 8400 4000
Wire Wire Line
	8400 3300 8400 3400
Connection ~ 6800 3300
Wire Wire Line
	7400 4500 7400 4400
Wire Wire Line
	6800 4500 6800 4400
Connection ~ 7400 4500
Wire Wire Line
	4900 4500 4900 4400
Connection ~ 6800 4500
Wire Wire Line
	4300 4500 4300 4400
Connection ~ 4900 4500
Wire Wire Line
	4000 4500 4000 4100
Connection ~ 4300 4500
Wire Wire Line
	3400 4500 3400 3800
Connection ~ 4000 4500
Wire Wire Line
	3800 3600 3800 4500
Connection ~ 3800 4500
Wire Wire Line
	6300 4000 6300 4500
Wire Wire Line
	6000 4400 6000 4500
Connection ~ 6000 4500
Wire Wire Line
	6000 4100 6000 3900
Connection ~ 6000 3900
Connection ~ 6300 4500
Wire Wire Line
	3400 4500 8800 4500
$Comp
L C C35
U 1 1 58406E3A
P 8500 4250
F 0 "C35" H 8525 4350 50  0000 L CNN
F 1 "4.7u" H 8525 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8538 4100 50  0001 C CNN
F 3 "" H 8500 4250 50  0000 C CNN
	1    8500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3900 8500 4100
Connection ~ 8500 3900
Wire Wire Line
	8500 4400 8500 4500
Wire Wire Line
	8800 4500 8800 4000
Connection ~ 8500 4500
NoConn ~ 3800 3400
NoConn ~ 3800 3500
$Comp
L PWR_FLAG #FLG0104
U 1 1 58409F28
P 3600 4400
F 0 "#FLG0104" H 3600 4495 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 4580 50  0000 C CNN
F 2 "" H 3600 4400 50  0000 C CNN
F 3 "" H 3600 4400 50  0000 C CNN
	1    3600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4400 3600 4500
Connection ~ 3600 4500
$Comp
L PWR_FLAG #FLG0105
U 1 1 5840A59B
P 8800 3300
F 0 "#FLG0105" H 8800 3395 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 3480 50  0000 C CNN
F 2 "" H 8800 3300 50  0000 C CNN
F 3 "" H 8800 3300 50  0000 C CNN
	1    8800 3300
	1    0    0    -1  
$EndComp
Connection ~ 8400 3300
$Comp
L USB_A P10
U 1 1 5840C022
P 3500 5100
F 0 "P10" V 3200 4900 50  0000 C CNN
F 1 "USB_A" V 3200 5150 50  0000 C CNN
F 2 "mouse:USB_A_P" V 3450 5000 50  0001 C CNN
F 3 "" V 3450 5000 50  0000 C CNN
	1    3500 5100
	0    -1   1    0   
$EndComp
$Comp
L C C36
U 1 1 5840C028
P 4000 5550
F 0 "C36" H 4025 5650 50  0000 L CNN
F 1 "4.7u" H 4025 5450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4038 5400 50  0001 C CNN
F 3 "" H 4000 5550 50  0000 C CNN
	1    4000 5550
	1    0    0    -1  
$EndComp
$Comp
L MCP73831 U12
U 1 1 5840C02E
P 7400 5600
F 0 "U12" H 7400 5950 60  0000 C CNN
F 1 "MCP73831" H 7400 5850 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 7400 5600 60  0001 C CNN
F 3 "" H 7400 5600 60  0000 C CNN
	1    7400 5600
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 5840C034
P 4300 5850
F 0 "R29" V 4380 5850 50  0000 C CNN
F 1 "4.7k" V 4300 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4230 5850 50  0001 C CNN
F 3 "" H 4300 5850 50  0000 C CNN
	1    4300 5850
	1    0    0    -1  
$EndComp
$Comp
L MCP73831 U11
U 1 1 5840C03A
P 4900 5600
F 0 "U11" H 4900 5950 60  0000 C CNN
F 1 "MCP73831" H 4900 5850 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 4900 5600 60  0001 C CNN
F 3 "" H 4900 5600 60  0000 C CNN
	1    4900 5600
	1    0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 5840C040
P 5650 5600
F 0 "R27" V 5730 5600 50  0000 C CNN
F 1 "1k" V 5650 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5580 5600 50  0001 C CNN
F 3 "" H 5650 5600 50  0000 C CNN
	1    5650 5600
	0    1    1    0   
$EndComp
$Comp
L LED D16
U 1 1 5840C046
P 5900 5200
F 0 "D16" H 5900 5300 50  0000 C CNN
F 1 "LED" H 5900 5100 50  0000 C CNN
F 2 "LEDs:LED_0603" H 5900 5200 50  0001 C CNN
F 3 "" H 5900 5200 50  0000 C CNN
	1    5900 5200
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P11
U 1 1 5840C04C
P 6500 5550
F 0 "P11" H 6500 5700 50  0000 C CNN
F 1 "BAT1" V 6600 5550 50  0000 C CNN
F 2 "Connectors_Hirose:Hirose_DF13-02P-1.25DSA_02x1.25mm_Straight" H 6500 5550 50  0001 C CNN
F 3 "" H 6500 5550 50  0000 C CNN
	1    6500 5550
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 5840C052
P 6800 5850
F 0 "R30" V 6880 5850 50  0000 C CNN
F 1 "4.7k" V 6800 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6730 5850 50  0001 C CNN
F 3 "" H 6800 5850 50  0000 C CNN
	1    6800 5850
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 5840C058
P 8150 5600
F 0 "R28" V 8230 5600 50  0000 C CNN
F 1 "1k" V 8150 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8080 5600 50  0001 C CNN
F 3 "" H 8150 5600 50  0000 C CNN
	1    8150 5600
	0    1    1    0   
$EndComp
$Comp
L LED D17
U 1 1 5840C05E
P 8400 5200
F 0 "D17" H 8400 5300 50  0000 C CNN
F 1 "LED" H 8400 5100 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8400 5200 50  0001 C CNN
F 3 "" H 8400 5200 50  0000 C CNN
	1    8400 5200
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P12
U 1 1 5840C064
P 9000 5550
F 0 "P12" H 9000 5700 50  0000 C CNN
F 1 "BAT2" V 9100 5550 50  0000 C CNN
F 2 "Connectors_Hirose:Hirose_DF13-02P-1.25DSA_02x1.25mm_Straight" H 9000 5550 50  0001 C CNN
F 3 "" H 9000 5550 50  0000 C CNN
	1    9000 5550
	1    0    0    -1  
$EndComp
$Comp
L C C37
U 1 1 5840C06A
P 6000 5850
F 0 "C37" H 6025 5950 50  0000 L CNN
F 1 "4.7u" H 6025 5750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6038 5700 50  0001 C CNN
F 3 "" H 6000 5850 50  0000 C CNN
	1    6000 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4900 8800 4900
Wire Wire Line
	4000 4900 4000 5400
Connection ~ 4000 4900
Wire Wire Line
	4400 5600 4300 5600
Wire Wire Line
	4300 5600 4300 5700
Wire Wire Line
	4300 4900 4300 5500
Wire Wire Line
	4300 5500 4400 5500
Connection ~ 4300 4900
Wire Wire Line
	5400 5600 5500 5600
Wire Wire Line
	5900 5600 5800 5600
Wire Wire Line
	5400 5500 6300 5500
Wire Wire Line
	6800 5700 6800 5600
Wire Wire Line
	6800 5600 6900 5600
Wire Wire Line
	6800 5500 6900 5500
Wire Wire Line
	6800 4900 6800 5500
Wire Wire Line
	7900 5600 8000 5600
Wire Wire Line
	7900 5500 8800 5500
Wire Wire Line
	8400 5600 8300 5600
Wire Wire Line
	5900 5600 5900 5400
Wire Wire Line
	5900 5000 5900 4900
Connection ~ 5900 4900
Wire Wire Line
	8400 5400 8400 5600
Wire Wire Line
	8400 4900 8400 5000
Connection ~ 6800 4900
Wire Wire Line
	7400 6100 7400 6000
Wire Wire Line
	6800 6100 6800 6000
Connection ~ 7400 6100
Wire Wire Line
	4900 6100 4900 6000
Connection ~ 6800 6100
Wire Wire Line
	4300 6100 4300 6000
Connection ~ 4900 6100
Wire Wire Line
	4000 6100 4000 5700
Connection ~ 4300 6100
Wire Wire Line
	3400 6100 3400 5400
Connection ~ 4000 6100
Wire Wire Line
	3800 5200 3800 6100
Connection ~ 3800 6100
Wire Wire Line
	6300 5600 6300 6100
Wire Wire Line
	6000 6000 6000 6100
Connection ~ 6000 6100
Wire Wire Line
	6000 5700 6000 5500
Connection ~ 6000 5500
Connection ~ 6300 6100
Wire Wire Line
	3400 6100 8800 6100
$Comp
L C C38
U 1 1 5840C09C
P 8500 5850
F 0 "C38" H 8525 5950 50  0000 L CNN
F 1 "4.7u" H 8525 5750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8538 5700 50  0001 C CNN
F 3 "" H 8500 5850 50  0000 C CNN
	1    8500 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5500 8500 5700
Connection ~ 8500 5500
Wire Wire Line
	8500 6000 8500 6100
Wire Wire Line
	8800 6100 8800 5600
Connection ~ 8500 6100
NoConn ~ 3800 5000
NoConn ~ 3800 5100
$Comp
L PWR_FLAG #FLG0106
U 1 1 5840C0A9
P 3600 6000
F 0 "#FLG0106" H 3600 6095 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 6180 50  0000 C CNN
F 2 "" H 3600 6000 50  0000 C CNN
F 3 "" H 3600 6000 50  0000 C CNN
	1    3600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6000 3600 6100
Connection ~ 3600 6100
$Comp
L PWR_FLAG #FLG0107
U 1 1 5840C0B1
P 8800 4900
F 0 "#FLG0107" H 8800 4995 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 5080 50  0000 C CNN
F 2 "" H 8800 4900 50  0000 C CNN
F 3 "" H 8800 4900 50  0000 C CNN
	1    8800 4900
	1    0    0    -1  
$EndComp
Connection ~ 8400 4900
$EndSCHEMATC
