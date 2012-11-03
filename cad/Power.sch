EESchema Schematic File Version 2  date Sat 03 Nov 2012 10:11:56 PM UTC
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
$Descr User 11000 8500
encoding utf-8
Sheet 7 7
Title "Audiosynth Power Supply"
Date "3 nov 2012"
Rev "1.1"
Comp "Womprats"
Comment1 "ECE411 Practicum"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4500 2500 4200 2500
Wire Wire Line
	7550 3150 7550 3200
Connection ~ 3350 2800
Wire Wire Line
	3200 2800 3350 2800
Connection ~ 8100 2500
Connection ~ 7700 2500
Wire Wire Line
	8400 2500 7550 2500
Wire Wire Line
	6850 3050 6850 3150
Connection ~ 5150 2500
Wire Wire Line
	5300 2500 5000 2500
Wire Wire Line
	3350 2850 3350 2650
Wire Wire Line
	3350 2650 3200 2650
Wire Wire Line
	8400 3000 8400 3050
Wire Wire Line
	5700 2500 6150 2500
Connection ~ 5950 2500
Wire Wire Line
	5950 2500 5950 2750
Wire Wire Line
	8400 3450 8400 3500
Wire Wire Line
	7550 2500 7550 2750
Wire Wire Line
	7700 2350 7700 2500
Wire Wire Line
	5950 3150 5950 3200
Wire Wire Line
	5750 2450 5750 2500
Connection ~ 5750 2500
$Comp
L R R701
U 1 1 5082B77A
P 8400 2750
F 0 "R701" V 8480 2750 50  0000 C CNN
F 1 "1.5k" V 8400 2750 50  0000 C CNN
	1    8400 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR060
U 1 1 50832DF9
P 8400 3500
F 0 "#PWR060" H 8400 3500 30  0001 C CNN
F 1 "GND" H 8400 3430 30  0001 C CNN
	1    8400 3500
	1    0    0    -1  
$EndComp
$Comp
L TEST W701
U 1 1 50832DB7
P 5500 2500
F 0 "W701" H 5500 2560 40  0000 C CNN
F 1 "TEST" H 5500 2430 40  0000 C CNN
	1    5500 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 5082B712
P 5950 3200
F 0 "#PWR061" H 5950 3200 30  0001 C CNN
F 1 "GND" H 5950 3130 30  0001 C CNN
	1    5950 3200
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP702
U 1 1 5082B84F
P 8100 2500
F 0 "TP702" H 8100 2600 60  0000 C CNN
F 1 "TESTPOINT" H 8100 2400 60  0001 C CNN
	1    8100 2500
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP701
U 1 1 5082B848
P 5150 2500
F 0 "TP701" H 5150 2600 60  0000 C CNN
F 1 "TESTPOINT" H 5150 2400 60  0001 C CNN
	1    5150 2500
	1    0    0    -1  
$EndComp
$Comp
L LED D701
U 1 1 5082B76F
P 8400 3250
F 0 "D701" H 8400 3350 50  0000 C CNN
F 1 "PWRLED" H 8400 3150 50  0000 C CNN
	1    8400 3250
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG062
U 1 1 5082B6D8
P 5750 2450
F 0 "#FLG062" H 5750 2545 30  0001 C CNN
F 1 "PWR_FLAG" H 5750 2630 30  0000 C CNN
	1    5750 2450
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR063
U 1 1 5082B6BF
P 7700 2350
F 0 "#PWR063" H 7700 2450 40  0001 C CNN
F 1 "3V3" H 7700 2475 40  0000 C CNN
	1    7700 2350
	1    0    0    -1  
$EndComp
$Comp
L SPST SW701
U 1 1 5082B661
P 3700 2500
F 0 "SW701" H 3700 2600 70  0000 C CNN
F 1 "SPST" H 3700 2400 70  0000 C CNN
	1    3700 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR064
U 1 1 5082B344
P 3350 2850
F 0 "#PWR064" H 3350 2850 30  0001 C CNN
F 1 "GND" H 3350 2780 30  0001 C CNN
	1    3350 2850
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK J701
U 1 1 5082B09B
P 2850 2650
F 0 "J701" H 2550 2900 60  0000 C CNN
F 1 "BARREL_JACK" H 2800 2400 60  0000 C CNN
	1    2850 2650
	1    0    0    -1  
$EndComp
$Comp
L FUSE F701
U 1 1 5082AEA1
P 4750 2500
F 0 "F701" H 4850 2550 40  0000 C CNN
F 1 "FUSE" H 4650 2450 40  0000 C CNN
	1    4750 2500
	1    0    0    -1  
$EndComp
$Comp
L C C701
U 1 1 5082AE7E
P 5950 2950
F 0 "C701" H 6000 3050 50  0000 L CNN
F 1 "10uF" H 6000 2850 50  0000 L CNN
	1    5950 2950
	1    0    0    -1  
$EndComp
$Comp
L C C702
U 1 1 5082AE32
P 7550 2950
F 0 "C702" H 7600 3050 50  0000 L CNN
F 1 "10uF" H 7600 2850 50  0000 L CNN
	1    7550 2950
	1    0    0    -1  
$EndComp
$Comp
L LD1117V33-DB U701
U 1 1 5082AE06
P 6850 2500
F 0 "U701" H 6500 2750 60  0000 C CNN
F 1 "LD1117V33-DB" H 6850 2600 60  0000 C CNN
	1    6850 2500
	1    0    0    -1  
$EndComp
Text Notes 2550 3050 0    60   ~ 0
Center positive\n7.5V - 9V
$Comp
L GND #PWR065
U 1 1 508610D3
P 6850 3150
F 0 "#PWR065" H 6850 3150 30  0001 C CNN
F 1 "GND" H 6850 3080 30  0001 C CNN
	1    6850 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR066
U 1 1 50861102
P 7550 3200
F 0 "#PWR066" H 7550 3200 30  0001 C CNN
F 1 "GND" H 7550 3130 30  0001 C CNN
	1    7550 3200
	1    0    0    -1  
$EndComp
Text Notes 6550 2150 0    60   ~ 0
Logic Supply
$EndSCHEMATC
