EESchema Schematic File Version 2  date Fri 19 Oct 2012 10:44:04 PM PDT
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:audiosynth
LIBS:synth-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title ""
Date "20 oct 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4450 3150 0    60   ~ 0
16KB EEPROM\n
Text Notes 4100 4650 0    60   ~ 0
SUBSTITUTE ANY AT24C I2C EEPROM
Connection ~ 6000 3400
Wire Wire Line
	6000 3450 6000 3300
Connection ~ 7100 4200
Wire Wire Line
	7500 4200 5550 4200
Wire Wire Line
	7100 4200 7100 3900
Connection ~ 6350 4000
Wire Wire Line
	5650 3600 5650 4000
Wire Wire Line
	6000 3400 5550 3400
Wire Wire Line
	5650 3600 5550 3600
Connection ~ 3950 3500
Wire Wire Line
	4050 3500 3950 3500
Wire Wire Line
	3950 3650 3950 3400
Wire Wire Line
	4050 3700 4050 3800
Wire Wire Line
	3950 3400 4050 3400
Wire Wire Line
	4050 3600 3950 3600
Connection ~ 3950 3600
Wire Wire Line
	5550 3500 5750 3500
Wire Wire Line
	5750 3500 5750 3750
Wire Wire Line
	5550 4200 5550 3700
Connection ~ 6850 4200
Wire Wire Line
	5650 4000 7500 4000
Connection ~ 6600 4000
Text HLabel 7500 4200 2    60   BiDi ~ 0
SDA
Text HLabel 7500 4000 2    60   BiDi ~ 0
SCL
$Comp
L TESTPOINT TP?
U 1 1 507D9B5B
P 6850 4200
F 0 "TP?" H 6850 4300 60  0000 C CNN
F 1 "TESTPOINT" H 6850 4100 60  0001 C CNN
	1    6850 4200
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP?
U 1 1 507D9B4D
P 6350 4000
F 0 "TP?" H 6350 4100 60  0000 C CNN
F 1 "TESTPOINT" H 6350 3900 60  0001 C CNN
	1    6350 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 507D9AEE
P 6000 3850
F 0 "#PWR?" H 6000 3850 30  0001 C CNN
F 1 "GND" H 6000 3780 30  0001 C CNN
	1    6000 3850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 507D9A3B
P 6000 3650
F 0 "C?" H 6050 3750 50  0000 L CNN
F 1 "100nF" H 6050 3550 50  0000 L CNN
	1    6000 3650
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 507D995B
P 7100 3400
F 0 "#PWR?" H 7100 3500 40  0001 C CNN
F 1 "3V3" H 7100 3525 40  0000 C CNN
	1    7100 3400
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 507D9953
P 6600 3500
F 0 "#PWR?" H 6600 3600 40  0001 C CNN
F 1 "3V3" H 6600 3625 40  0000 C CNN
	1    6600 3500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 507D97E1
P 7100 3650
F 0 "R?" V 7180 3650 50  0000 C CNN
F 1 "2.2k" V 7100 3650 50  0000 C CNN
	1    7100 3650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 507D97D7
P 6600 3750
F 0 "R?" V 6680 3750 50  0000 C CNN
F 1 "2.2k" V 6600 3750 50  0000 C CNN
	1    6600 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 507D9031
P 5750 3750
F 0 "#PWR?" H 5750 3750 30  0001 C CNN
F 1 "GND" H 5750 3680 30  0001 C CNN
	1    5750 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 507D8FFE
P 3950 3650
F 0 "#PWR?" H 3950 3650 30  0001 C CNN
F 1 "GND" H 3950 3580 30  0001 C CNN
	1    3950 3650
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 507D8FD1
P 6000 3300
F 0 "#PWR?" H 6000 3400 40  0001 C CNN
F 1 "3V3" H 6000 3425 40  0000 C CNN
	1    6000 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 507D8FB6
P 4050 3800
F 0 "#PWR?" H 4050 3800 30  0001 C CNN
F 1 "GND" H 4050 3730 30  0001 C CNN
	1    4050 3800
	1    0    0    -1  
$EndComp
$Comp
L AT24C128C U?
U 1 1 507D8FAF
P 4800 3550
F 0 "U?" H 4800 3450 50  0000 C CNN
F 1 "AT24C128C" H 4800 3650 50  0000 C CNN
F 2 "MODULE" H 4800 3550 50  0001 C CNN
F 3 "DOCUMENTATION" H 4800 3550 50  0001 C CNN
	1    4800 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
