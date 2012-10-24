EESchema Schematic File Version 2  date Tue 23 Oct 2012 07:53:35 PM PDT
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
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 4 7
Title ""
Date "24 oct 2012"
Rev "1.0"
Comp "Womprats"
Comment1 "ECE411 Practicum"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 5400 4400
Wire Wire Line
	5400 4400 5400 4250
Wire Wire Line
	4800 3950 4550 3950
Wire Wire Line
	3600 4750 3850 4750
Wire Wire Line
	8300 3250 7200 3250
Wire Wire Line
	8400 2950 7100 2950
Connection ~ 5200 3000
Wire Wire Line
	5200 3000 5200 2950
Wire Wire Line
	7000 4200 7550 4200
Wire Wire Line
	7550 4200 7550 4050
Wire Wire Line
	7000 3800 7550 3800
Wire Wire Line
	7550 3800 7550 3650
Wire Wire Line
	5500 3100 5000 3100
Connection ~ 5450 3300
Wire Wire Line
	5500 3300 5450 3300
Wire Wire Line
	4700 3500 4700 3550
Connection ~ 7550 3250
Connection ~ 7750 3100
Connection ~ 7950 2950
Connection ~ 8150 2800
Connection ~ 7350 3400
Wire Wire Line
	7000 3000 7050 3000
Wire Wire Line
	7050 3000 7050 2800
Wire Wire Line
	7000 3100 7100 3100
Wire Wire Line
	7100 3100 7100 2950
Wire Wire Line
	7000 3200 7150 3200
Wire Wire Line
	7150 3200 7150 3100
Wire Wire Line
	7000 3300 7200 3300
Wire Wire Line
	7200 3300 7200 3250
Wire Wire Line
	5500 3000 4700 3000
Wire Wire Line
	4700 3000 4700 3100
Wire Wire Line
	5000 3500 5000 3550
Wire Wire Line
	5500 3200 5450 3200
Wire Wire Line
	5450 3200 5450 3350
Wire Wire Line
	7000 3650 7150 3650
Wire Wire Line
	7000 4050 7150 4050
Wire Wire Line
	5400 4250 5500 4250
Wire Wire Line
	5350 3000 5350 3100
Connection ~ 5350 3100
Connection ~ 5350 3000
Wire Wire Line
	7050 2800 8450 2800
Wire Wire Line
	7150 3100 8350 3100
Wire Wire Line
	7000 3400 8300 3400
Wire Wire Line
	4150 4950 4150 5050
Wire Wire Line
	2750 4750 3100 4750
Wire Wire Line
	5500 4100 5450 4100
Wire Wire Line
	5450 4100 5450 3950
Wire Wire Line
	4550 3950 4550 3850
Wire Wire Line
	5200 3950 5500 3950
Connection ~ 5450 3950
Wire Wire Line
	5500 4400 4150 4400
Wire Wire Line
	4150 4400 4150 4550
Text Notes 2650 5000 0    60   ~ 0
Brightness of Backlight\nControlled by Resistor Value
Text Notes 7700 3950 0    60   ~ 0
Charge Pump
Text Notes 8900 3100 0    60   ~ 0
SPI Control
$Comp
L TEST W401
U 1 1 5087517B
P 5000 3950
F 0 "W401" H 5000 4010 40  0000 C CNN
F 1 "TEST" H 5000 3880 40  0000 C CNN
	1    5000 3950
	1    0    0    -1  
$EndComp
$Comp
L NPN Q401
U 1 1 50874DF1
P 4050 4750
F 0 "Q401" H 4050 4600 50  0000 R CNN
F 1 "2N3904" H 4050 4900 50  0000 R CNN
	1    4050 4750
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR039
U 1 1 50860DF5
P 5200 2950
F 0 "#PWR039" H 5200 3050 40  0001 C CNN
F 1 "3V3" H 5200 3075 40  0000 C CNN
	1    5200 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 5085A3AD
P 5000 3550
F 0 "#PWR040" H 5000 3550 30  0001 C CNN
F 1 "GND" H 5000 3480 30  0001 C CNN
	1    5000 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 5085A3AA
P 4700 3550
F 0 "#PWR041" H 4700 3550 30  0001 C CNN
F 1 "GND" H 4700 3480 30  0001 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 5085A331
P 5450 3350
F 0 "#PWR042" H 5450 3350 30  0001 C CNN
F 1 "GND" H 5450 3280 30  0001 C CNN
	1    5450 3350
	1    0    0    -1  
$EndComp
$Comp
L C C401
U 1 1 5085A314
P 4700 3300
F 0 "C401" H 4750 3400 50  0000 L CNN
F 1 "C" H 4750 3200 50  0000 L CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
$Comp
L C C402
U 1 1 5085A30A
P 5000 3300
F 0 "C402" H 5050 3400 50  0000 L CNN
F 1 "C" H 5050 3200 50  0000 L CNN
	1    5000 3300
	1    0    0    -1  
$EndComp
$Comp
L EADOGS102W-6 U401
U 1 1 50859FCD
P 6250 3650
F 0 "U401" H 5850 4550 50  0000 C CNN
F 1 "EADOGS102W-6" H 6100 2750 50  0000 C CNN
F 2 "MODULE" H 6250 3650 50  0001 C CNN
F 3 "DOCUMENTATION" H 6250 3650 50  0001 C CNN
	1    6250 3650
	1    0    0    -1  
$EndComp
Text Notes 6000 2550 0    100  ~ 0
LCD
$Comp
L TESTPOINT TP401
U 1 1 50859F75
P 7350 3400
F 0 "TP401" H 7350 3500 60  0000 C CNN
F 1 "TESTPOINT" H 7350 3300 60  0001 C CNN
	1    7350 3400
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP402
U 1 1 50859F73
P 7550 3250
F 0 "TP402" H 7550 3350 60  0000 C CNN
F 1 "TESTPOINT" H 7550 3150 60  0001 C CNN
	1    7550 3250
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP403
U 1 1 50859F6B
P 7750 3100
F 0 "TP403" H 7750 3200 60  0000 C CNN
F 1 "TESTPOINT" H 7750 3000 60  0001 C CNN
	1    7750 3100
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP404
U 1 1 50859F62
P 7950 2950
F 0 "TP404" H 7950 3050 60  0000 C CNN
F 1 "TESTPOINT" H 7950 2850 60  0001 C CNN
	1    7950 2950
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP405
U 1 1 50859F52
P 8150 2800
F 0 "TP405" H 8150 2900 60  0000 C CNN
F 1 "TESTPOINT" H 8150 2700 60  0001 C CNN
	1    8150 2800
	1    0    0    -1  
$EndComp
Text HLabel 8400 2950 2    60   Input ~ 0
RST
Text HLabel 8350 3100 2    60   Input ~ 0
CD
Text HLabel 8450 2800 2    60   Input ~ 0
CE
Text HLabel 8300 3250 2    60   Input ~ 0
SCK
Text HLabel 8300 3400 2    60   Input ~ 0
MOSI
Text HLabel 2750 4750 0    60   Input ~ 0
BCKLIGHT
$Comp
L C C404
U 1 1 50821AD6
P 7350 3650
F 0 "C404" V 7400 3750 50  0000 L CNN
F 1 "1uF" V 7400 3450 50  0000 L CNN
	1    7350 3650
	0    -1   -1   0   
$EndComp
$Comp
L C C403
U 1 1 50849027
P 7000 4600
F 0 "C403" H 7050 4700 50  0000 L CNN
F 1 "1uF" H 7050 4500 50  0000 L CNN
	1    7000 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 50849050
P 7000 4800
F 0 "#PWR043" H 7000 4800 30  0001 C CNN
F 1 "GND" H 7000 4730 30  0001 C CNN
	1    7000 4800
	1    0    0    -1  
$EndComp
$Comp
L C C405
U 1 1 50821E22
P 7350 4050
F 0 "C405" V 7400 4150 50  0000 L CNN
F 1 "1uF" V 7400 3850 50  0000 L CNN
	1    7350 4050
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR044
U 1 1 5085FDB8
P 4550 3850
F 0 "#PWR044" H 4550 3940 20  0001 C CNN
F 1 "+5V" H 4550 3940 30  0000 C CNN
	1    4550 3850
	1    0    0    -1  
$EndComp
$Comp
L R R401
U 1 1 5085FDC9
P 3350 4750
F 0 "R401" V 3430 4750 50  0000 C CNN
F 1 "6.8k" V 3350 4750 50  0000 C CNN
	1    3350 4750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR045
U 1 1 508603C7
P 4150 5050
F 0 "#PWR045" H 4150 5050 30  0001 C CNN
F 1 "GND" H 4150 4980 30  0001 C CNN
	1    4150 5050
	1    0    0    -1  
$EndComp
Text Notes 2350 4250 0    100  ~ 0
LCD backlight \nlow side NPN driver\n
$EndSCHEMATC
