EESchema Schematic File Version 2  date Sun 04 Nov 2012 02:25:35 PM PST
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
Title "LCD and associated circuitry for Audio Synth"
Date "4 nov 2012"
Rev "1.1"
Comp "Womprats"
Comment1 "ECE411 Practicum"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 7350 3650
Wire Wire Line
	6550 4050 6450 4050
Wire Wire Line
	6450 4050 6450 3500
Wire Wire Line
	7350 3850 7500 3850
Wire Wire Line
	6400 3750 6550 3750
Wire Wire Line
	7450 4150 7450 4050
Wire Wire Line
	7450 4050 7350 4050
Connection ~ 4600 4300
Wire Wire Line
	3800 4300 4900 4300
Wire Wire Line
	5200 4500 5200 4600
Wire Wire Line
	6550 3950 5200 3950
Wire Wire Line
	5200 3950 5200 4100
Wire Wire Line
	6400 3850 6550 3850
Wire Wire Line
	7350 3750 7500 3750
Wire Wire Line
	7350 3950 7500 3950
NoConn ~ 6550 3650
$Comp
L CONN_5X2 P401
U 1 1 5096E971
P 6950 3850
F 0 "P401" H 6950 4150 60  0000 C CNN
F 1 "CONN_5X2" V 6950 3850 50  0000 C CNN
	1    6950 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR401
U 1 1 50956313
P 4600 4800
F 0 "#PWR401" H 4600 4800 30  0001 C CNN
F 1 "GND" H 4600 4730 30  0001 C CNN
	1    4600 4800
	1    0    0    -1  
$EndComp
$Comp
L R R401
U 1 1 509562F9
P 4600 4550
F 0 "R401" V 4680 4550 50  0000 C CNN
F 1 "22k" V 4600 4550 50  0000 C CNN
	1    4600 4550
	1    0    0    -1  
$EndComp
$Comp
L BF245A Q401
U 1 1 509562E1
P 5100 4300
F 0 "Q401" H 5100 4151 40  0000 R CNN
F 1 "2N7000" H 5100 4450 40  0000 R CNN
F 2 "TO92" H 4940 4402 29  0000 C CNN
	1    5100 4300
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR403
U 1 1 50860DF5
P 6450 3500
F 0 "#PWR403" H 6450 3600 40  0001 C CNN
F 1 "3V3" H 6450 3625 40  0000 C CNN
	1    6450 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR404
U 1 1 5085A3AD
P 7450 4150
F 0 "#PWR404" H 7450 4150 30  0001 C CNN
F 1 "GND" H 7450 4080 30  0001 C CNN
	1    7450 4150
	1    0    0    -1  
$EndComp
Text HLabel 7500 3850 2    60   Input ~ 0
RST
Text HLabel 7500 3750 2    60   Input ~ 0
CD
Text HLabel 7500 3950 2    60   Input ~ 0
CE
Text HLabel 6400 3750 0    60   Input ~ 0
SCK
Text HLabel 6400 3850 0    60   Input ~ 0
MOSI
Text HLabel 3800 4300 0    60   Input ~ 0
BCKLIGHT
$Comp
L GND #PWR402
U 1 1 508603C7
P 5200 4600
F 0 "#PWR402" H 5200 4600 30  0001 C CNN
F 1 "GND" H 5200 4530 30  0001 C CNN
	1    5200 4600
	1    0    0    -1  
$EndComp
Text Notes 3400 3800 0    100  ~ 0
LCD backlight \nlow side NMOS driver\n
$EndSCHEMATC
