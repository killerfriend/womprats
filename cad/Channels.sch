EESchema Schematic File Version 2  date Mon 05 Nov 2012 08:06:33 AM PST
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
Sheet 2 7
Title "Audio Controls of Audio Synth"
Date "4 nov 2012"
Rev "1.1"
Comp "Womprats"
Comment1 "ECE411 Practicum"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6650 5150 0    60   ~ 0
- Dx is active low digital signal\n- Ax is 0-3v3 analog signal\n\n- Each External Connector can supply a maximum of 50mA, and is rated for 100mA
Text Notes 2350 5350 0    60   ~ 0
- Dx are connected to momentary contact switches\n- Ax are connected to potentiometers
Text Notes 7950 2400 0    100  ~ 0
EXTERNAL CHANNELS
Wire Notes Line
	10800 2500 6400 2500
Wire Notes Line
	10800 2500 10800 4550
Wire Notes Line
	10800 4550 6400 4550
Wire Notes Line
	6400 4550 6400 2500
Wire Wire Line
	10000 3650 10250 3650
Wire Wire Line
	9200 3650 9050 3650
Wire Wire Line
	9050 3650 9050 3600
Wire Wire Line
	10000 3750 10100 3750
Wire Wire Line
	10100 3750 10100 3850
Wire Wire Line
	8950 3750 9200 3750
Wire Wire Line
	6800 3750 7050 3750
Wire Wire Line
	7950 3850 7950 3750
Wire Wire Line
	7950 3750 7850 3750
Wire Wire Line
	6900 3600 6900 3650
Wire Wire Line
	6900 3650 7050 3650
Wire Wire Line
	7850 3650 8100 3650
Wire Wire Line
	4950 4200 5200 4200
Wire Wire Line
	4150 4200 4000 4200
Wire Wire Line
	4000 4200 4000 4150
Wire Wire Line
	4950 4300 5050 4300
Wire Wire Line
	5050 4300 5050 4400
Wire Wire Line
	3900 4300 4150 4300
Wire Wire Line
	3900 3000 4150 3000
Wire Wire Line
	5050 3100 5050 3000
Wire Wire Line
	5050 3000 4950 3000
Wire Wire Line
	4000 2850 4000 2900
Wire Wire Line
	4000 2900 4150 2900
Wire Wire Line
	4950 2900 5200 2900
Wire Wire Line
	2950 4200 3200 4200
Wire Wire Line
	2150 4200 2000 4200
Wire Wire Line
	2000 4200 2000 4150
Wire Wire Line
	2950 4300 3050 4300
Wire Wire Line
	3050 4300 3050 4400
Wire Wire Line
	1900 4300 2150 4300
Wire Wire Line
	1900 3000 2150 3000
Wire Wire Line
	3050 3100 3050 3000
Wire Wire Line
	3050 3000 2950 3000
Wire Wire Line
	2000 2850 2000 2900
Wire Wire Line
	2000 2900 2150 2900
Wire Wire Line
	2950 2900 3200 2900
Wire Notes Line
	5850 1900 1200 1900
Wire Notes Line
	5850 1900 5850 4950
Wire Notes Line
	5850 4950 1200 4950
Wire Notes Line
	1200 4950 1200 1900
Text Notes 2800 1750 0    100  ~ 0
INTERNAL CHANNELS
Text Notes 4300 3300 0    60   ~ 0
CHANNEL 3
Text Notes 4300 4650 0    60   ~ 0
CHANNEL 4
$Comp
L 3V3 #PWR211
U 1 1 50833107
P 9050 3100
F 0 "#PWR211" H 9050 3200 40  0001 C CNN
F 1 "3V3" H 9050 3225 40  0000 C CNN
	1    9050 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_3X2 P206
U 1 1 50833106
P 9600 3800
F 0 "P206" H 9600 4050 50  0000 C CNN
F 1 "CONN_3X2" V 9600 3850 40  0000 C CNN
	1    9600 3800
	1    0    0    -1  
$EndComp
$Comp
L FUSE F206
U 1 1 50833105
P 9050 3350
F 0 "F206" H 9150 3400 40  0000 C CNN
F 1 "0ZCA0005FF2E" H 9050 3200 40  0000 C CNN
	1    9050 3350
	0    -1   -1   0   
$EndComp
Text Notes 9350 4050 0    60   ~ 0
CHANNEL 6
$Comp
L GND #PWR212
U 1 1 50833104
P 10100 3850
F 0 "#PWR212" H 10100 3850 30  0001 C CNN
F 1 "GND" H 10100 3780 30  0001 C CNN
	1    10100 3850
	1    0    0    -1  
$EndComp
NoConn ~ 10000 3850
NoConn ~ 9200 3850
NoConn ~ 7050 3850
NoConn ~ 7850 3850
$Comp
L GND #PWR210
U 1 1 508330F2
P 7950 3850
F 0 "#PWR210" H 7950 3850 30  0001 C CNN
F 1 "GND" H 7950 3780 30  0001 C CNN
	1    7950 3850
	1    0    0    -1  
$EndComp
Text Notes 7200 4050 0    60   ~ 0
CHANNEL 5
$Comp
L FUSE F205
U 1 1 508330F1
P 6900 3350
F 0 "F205" H 7000 3400 40  0000 C CNN
F 1 "0ZCA0005FF2E" H 6900 3200 40  0000 C CNN
	1    6900 3350
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3X2 P205
U 1 1 508330F0
P 7450 3800
F 0 "P205" H 7450 4050 50  0000 C CNN
F 1 "CONN_3X2" V 7450 3850 40  0000 C CNN
	1    7450 3800
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR209
U 1 1 508330EF
P 6900 3100
F 0 "#PWR209" H 6900 3200 40  0001 C CNN
F 1 "3V3" H 6900 3225 40  0000 C CNN
	1    6900 3100
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR206
U 1 1 508330DF
P 4000 3650
F 0 "#PWR206" H 4000 3750 40  0001 C CNN
F 1 "3V3" H 4000 3775 40  0000 C CNN
	1    4000 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_3X2 P204
U 1 1 508330DE
P 4550 4350
F 0 "P204" H 4550 4600 50  0000 C CNN
F 1 "CONN_3X2" V 4550 4400 40  0000 C CNN
	1    4550 4350
	1    0    0    -1  
$EndComp
$Comp
L FUSE F204
U 1 1 508330DD
P 4000 3900
F 0 "F204" H 4100 3950 40  0000 C CNN
F 1 "0ZCA0005FF2E" H 4000 3750 40  0000 C CNN
	1    4000 3900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR208
U 1 1 508330DC
P 5050 4400
F 0 "#PWR208" H 5050 4400 30  0001 C CNN
F 1 "GND" H 5050 4330 30  0001 C CNN
	1    5050 4400
	1    0    0    -1  
$EndComp
NoConn ~ 4950 4400
NoConn ~ 4150 4400
NoConn ~ 4150 3100
NoConn ~ 4950 3100
$Comp
L GND #PWR207
U 1 1 508330A7
P 5050 3100
F 0 "#PWR207" H 5050 3100 30  0001 C CNN
F 1 "GND" H 5050 3030 30  0001 C CNN
	1    5050 3100
	1    0    0    -1  
$EndComp
$Comp
L FUSE F203
U 1 1 508330A6
P 4000 2600
F 0 "F203" H 4100 2650 40  0000 C CNN
F 1 "0ZCA0005FF2E" H 4000 2450 40  0000 C CNN
	1    4000 2600
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3X2 P203
U 1 1 508330A5
P 4550 3050
F 0 "P203" H 4550 3300 50  0000 C CNN
F 1 "CONN_3X2" V 4550 3100 40  0000 C CNN
	1    4550 3050
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR205
U 1 1 508330A4
P 4000 2350
F 0 "#PWR205" H 4000 2450 40  0001 C CNN
F 1 "3V3" H 4000 2475 40  0000 C CNN
	1    4000 2350
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR202
U 1 1 5083308C
P 2000 3650
F 0 "#PWR202" H 2000 3750 40  0001 C CNN
F 1 "3V3" H 2000 3775 40  0000 C CNN
	1    2000 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_3X2 P202
U 1 1 5083308B
P 2550 4350
F 0 "P202" H 2550 4600 50  0000 C CNN
F 1 "CONN_3X2" V 2550 4400 40  0000 C CNN
	1    2550 4350
	1    0    0    -1  
$EndComp
$Comp
L FUSE F202
U 1 1 5083308A
P 2000 3900
F 0 "F202" H 2100 3950 40  0000 C CNN
F 1 "0ZCA0005FF2E" H 2000 3750 40  0000 C CNN
	1    2000 3900
	0    -1   -1   0   
$EndComp
Text Notes 2300 4600 0    60   ~ 0
CHANNEL 2
$Comp
L GND #PWR204
U 1 1 50833089
P 3050 4400
F 0 "#PWR204" H 3050 4400 30  0001 C CNN
F 1 "GND" H 3050 4330 30  0001 C CNN
	1    3050 4400
	1    0    0    -1  
$EndComp
NoConn ~ 2950 4400
NoConn ~ 2150 4400
NoConn ~ 2150 3100
NoConn ~ 2950 3100
$Comp
L GND #PWR203
U 1 1 5083279F
P 3050 3100
F 0 "#PWR203" H 3050 3100 30  0001 C CNN
F 1 "GND" H 3050 3030 30  0001 C CNN
	1    3050 3100
	1    0    0    -1  
$EndComp
Text HLabel 3200 2900 2    60   Input ~ 0
D0
Text Notes 2300 3300 0    60   ~ 0
CHANNEL 1
$Comp
L FUSE F201
U 1 1 50831761
P 2000 2600
F 0 "F201" H 2100 2650 40  0000 C CNN
F 1 "0ZCA0005FF2E" H 2000 2450 40  0000 C CNN
	1    2000 2600
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3X2 P201
U 1 1 508310F2
P 2550 3050
F 0 "P201" H 2550 3300 50  0000 C CNN
F 1 "CONN_3X2" V 2550 3100 40  0000 C CNN
	1    2550 3050
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR201
U 1 1 508311E4
P 2000 2350
F 0 "#PWR201" H 2000 2450 40  0001 C CNN
F 1 "3V3" H 2000 2475 40  0000 C CNN
	1    2000 2350
	1    0    0    -1  
$EndComp
Text HLabel 10250 3650 2    60   Input ~ 0
D5
Text HLabel 8100 3650 2    60   Input ~ 0
D4
Text HLabel 5200 4200 2    60   Input ~ 0
D3
Text HLabel 5200 2900 2    60   Input ~ 0
D2
Text HLabel 3200 4200 2    60   Input ~ 0
D1
Text HLabel 8950 3750 0    60   Input ~ 0
A5
Text HLabel 6800 3750 0    60   Input ~ 0
A4
Text HLabel 3900 4300 0    60   Input ~ 0
A3
Text HLabel 3900 3000 0    60   Input ~ 0
A2
Text HLabel 1900 4300 0    60   Input ~ 0
A1
Text HLabel 1900 3000 0    60   Input ~ 0
A0
$EndSCHEMATC
