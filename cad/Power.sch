EESchema Schematic File Version 2  date Sat 20 Oct 2012 03:45:46 PM UTC
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
Wire Wire Line
	4800 4750 4800 5050
Wire Wire Line
	6700 4350 6700 4100
Wire Wire Line
	4800 5050 7250 5050
Connection ~ 6700 5050
Wire Wire Line
	7250 4600 7250 4650
Connection ~ 6700 4100
Connection ~ 5000 4100
Connection ~ 6950 4100
Wire Wire Line
	3950 4100 4050 4100
Connection ~ 3100 4400
Wire Wire Line
	3100 4400 2950 4400
Wire Wire Line
	4550 4100 5000 4100
Connection ~ 4800 4100
Wire Wire Line
	2950 4250 3100 4250
Wire Wire Line
	3100 4250 3100 4500
Wire Wire Line
	7250 4100 6400 4100
Wire Wire Line
	5700 5100 5700 4650
Connection ~ 5700 5050
Wire Wire Line
	6700 4750 6700 5050
Wire Wire Line
	4800 4100 4800 4350
$Comp
L GND #PWR?
U 1 1 5082B712
P 5700 5100
F 0 "#PWR?" H 5700 5100 30  0001 C CNN
F 1 "GND" H 5700 5030 30  0001 C CNN
	1    5700 5100
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP?
U 1 1 5082B84F
P 6950 4100
F 0 "TP?" H 6950 4200 60  0000 C CNN
F 1 "TESTPOINT" H 6950 4000 60  0001 C CNN
	1    6950 4100
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP?
U 1 1 5082B848
P 5000 4100
F 0 "TP?" H 5000 4200 60  0000 C CNN
F 1 "TESTPOINT" H 5000 4000 60  0001 C CNN
	1    5000 4100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5082B77A
P 7250 4350
F 0 "R?" V 7330 4350 50  0000 C CNN
F 1 "1k" V 7250 4350 50  0000 C CNN
	1    7250 4350
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5082B76F
P 7250 4850
F 0 "D?" H 7250 4950 50  0000 C CNN
F 1 "LED" H 7250 4750 50  0000 C CNN
	1    7250 4850
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 5082B6D8
P 4800 4100
F 0 "#FLG?" H 4800 4195 30  0001 C CNN
F 1 "PWR_FLAG" H 4800 4280 30  0000 C CNN
	1    4800 4100
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 5082B6BF
P 6400 4100
F 0 "#PWR?" H 6400 4200 40  0001 C CNN
F 1 "3V3" H 6400 4225 40  0000 C CNN
	1    6400 4100
	1    0    0    -1  
$EndComp
$Comp
L SPST SW?
U 1 1 5082B661
P 3450 4100
F 0 "SW?" H 3450 4200 70  0000 C CNN
F 1 "SPST" H 3450 4000 70  0000 C CNN
	1    3450 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5082B344
P 3100 4500
F 0 "#PWR?" H 3100 4500 30  0001 C CNN
F 1 "GND" H 3100 4430 30  0001 C CNN
	1    3100 4500
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK J?
U 1 1 5082B09B
P 2600 4250
F 0 "J?" H 2300 4500 60  0000 C CNN
F 1 "BARREL_JACK" H 2550 4000 60  0000 C CNN
	1    2600 4250
	1    0    0    -1  
$EndComp
$Comp
L FUSE F?
U 1 1 5082AEA1
P 4300 4100
F 0 "F?" H 4400 4150 40  0000 C CNN
F 1 "FUSE" H 4200 4050 40  0000 C CNN
	1    4300 4100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5082AE7E
P 4800 4550
F 0 "C?" H 4850 4650 50  0000 L CNN
F 1 "10u" H 4850 4450 50  0000 L CNN
	1    4800 4550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5082AE32
P 6700 4550
F 0 "C?" H 6750 4650 50  0000 L CNN
F 1 "10u" H 6750 4450 50  0000 L CNN
	1    6700 4550
	1    0    0    -1  
$EndComp
Text HLabel 7250 4100 2    60   Input ~ 0
VDD
$Comp
L LD1117V33-DB U?
U 1 1 5082AE06
P 5700 4100
F 0 "U?" H 5350 4350 60  0000 C CNN
F 1 "LD1117V33-DB" H 5700 4200 60  0000 C CNN
	1    5700 4100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
