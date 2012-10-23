EESchema Schematic File Version 2  date Mon 22 Oct 2012 08:07:47 PM PDT
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
Date "23 oct 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R?
U 1 1 5082B77A
P 8400 2750
F 0 "R?" V 8480 2750 50  0000 C CNN
F 1 "1.5k" V 8400 2750 50  0000 C CNN
	1    8400 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 50832DF9
P 8400 3500
F 0 "#PWR?" H 8400 3500 30  0001 C CNN
F 1 "GND" H 8400 3430 30  0001 C CNN
	1    8400 3500
	1    0    0    -1  
$EndComp
$Comp
L TEST W?
U 1 1 50832DB7
P 5500 2500
F 0 "W?" H 5500 2560 40  0000 C CNN
F 1 "TEST" H 5500 2430 40  0000 C CNN
	1    5500 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5082B712
P 5950 3150
F 0 "#PWR?" H 5950 3150 30  0001 C CNN
F 1 "GND" H 5950 3080 30  0001 C CNN
	1    5950 3150
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP?
U 1 1 5082B84F
P 8100 2500
F 0 "TP?" H 8100 2600 60  0000 C CNN
F 1 "TESTPOINT" H 8100 2400 60  0001 C CNN
	1    8100 2500
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP?
U 1 1 5082B848
P 5150 2500
F 0 "TP?" H 5150 2600 60  0000 C CNN
F 1 "TESTPOINT" H 5150 2400 60  0001 C CNN
	1    5150 2500
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5082B76F
P 8400 3250
F 0 "D?" H 8400 3350 50  0000 C CNN
F 1 "PWRLED" H 8400 3150 50  0000 C CNN
	1    8400 3250
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 5082B6D8
P 5950 2500
F 0 "#FLG?" H 5950 2595 30  0001 C CNN
F 1 "PWR_FLAG" H 5950 2680 30  0000 C CNN
	1    5950 2500
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 5082B6BF
P 7700 2350
F 0 "#PWR?" H 7700 2450 40  0001 C CNN
F 1 "3V3" H 7700 2475 40  0000 C CNN
	1    7700 2350
	1    0    0    -1  
$EndComp
$Comp
L SPST SW?
U 1 1 5082B661
P 3900 2500
F 0 "SW?" H 3900 2600 70  0000 C CNN
F 1 "SPST" H 3900 2400 70  0000 C CNN
	1    3900 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5082B344
P 3550 2800
F 0 "#PWR?" H 3550 2800 30  0001 C CNN
F 1 "GND" H 3550 2730 30  0001 C CNN
	1    3550 2800
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK J?
U 1 1 5082B09B
P 3100 2600
F 0 "J?" H 2800 2850 60  0000 C CNN
F 1 "BARREL_JACK" H 3050 2350 60  0000 C CNN
	1    3100 2600
	1    0    0    -1  
$EndComp
$Comp
L FUSE F?
U 1 1 5082AEA1
P 4750 2500
F 0 "F?" H 4850 2550 40  0000 C CNN
F 1 "FUSE" H 4650 2450 40  0000 C CNN
	1    4750 2500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5082AE7E
P 5950 2950
F 0 "C?" H 6000 3050 50  0000 L CNN
F 1 "10uF" H 6000 2850 50  0000 L CNN
	1    5950 2950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5082AE32
P 7550 2950
F 0 "C?" H 7600 3050 50  0000 L CNN
F 1 "10uF" H 7600 2850 50  0000 L CNN
	1    7550 2950
	1    0    0    -1  
$EndComp
$Comp
L LD1117V33-DB U?
U 1 1 5082AE06
P 6850 2500
F 0 "U?" H 6500 2750 60  0000 C CNN
F 1 "LD1117V33-DB" H 6850 2600 60  0000 C CNN
	1    6850 2500
	1    0    0    -1  
$EndComp
Text Notes 2750 3000 0    60   ~ 0
Center positive\n7.5V - 9V
$Comp
L R R?
U 1 1 50861048
P 8400 5200
F 0 "R?" V 8480 5200 50  0000 C CNN
F 1 "3.2k" V 8400 5200 50  0000 C CNN
	1    8400 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5086104E
P 8400 5950
F 0 "#PWR?" H 8400 5950 30  0001 C CNN
F 1 "GND" H 8400 5880 30  0001 C CNN
	1    8400 5950
	1    0    0    -1  
$EndComp
$Comp
L TEST W?
U 1 1 50861054
P 5500 4950
F 0 "W?" H 5500 5010 40  0000 C CNN
F 1 "TEST" H 5500 4880 40  0000 C CNN
	1    5500 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5086105A
P 5950 5600
F 0 "#PWR?" H 5950 5600 30  0001 C CNN
F 1 "GND" H 5950 5530 30  0001 C CNN
	1    5950 5600
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP?
U 1 1 50861060
P 8100 4950
F 0 "TP?" H 8100 5050 60  0000 C CNN
F 1 "TESTPOINT" H 8100 4850 60  0001 C CNN
	1    8100 4950
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 50861066
P 8400 5700
F 0 "D?" H 8400 5800 50  0000 C CNN
F 1 "PWRLED" H 8400 5600 50  0000 C CNN
	1    8400 5700
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 50861078
P 5950 5400
F 0 "C?" H 6000 5500 50  0000 L CNN
F 1 "10uF" H 6000 5300 50  0000 L CNN
	1    5950 5400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5086107E
P 7550 5400
F 0 "C?" H 7600 5500 50  0000 L CNN
F 1 "10uF" H 7600 5300 50  0000 L CNN
	1    7550 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 508610D3
P 6850 3150
F 0 "#PWR?" H 6850 3150 30  0001 C CNN
F 1 "GND" H 6850 3080 30  0001 C CNN
	1    6850 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 50861102
P 7550 3150
F 0 "#PWR?" H 7550 3150 30  0001 C CNN
F 1 "GND" H 7550 3080 30  0001 C CNN
	1    7550 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 50861145
P 7550 5600
F 0 "#PWR?" H 7550 5600 30  0001 C CNN
F 1 "GND" H 7550 5530 30  0001 C CNN
	1    7550 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 50861154
P 6850 5600
F 0 "#PWR?" H 6850 5600 30  0001 C CNN
F 1 "GND" H 6850 5530 30  0001 C CNN
	1    6850 5600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 5086106C
P 5950 4950
F 0 "#FLG?" H 5950 5045 30  0001 C CNN
F 1 "PWR_FLAG" H 5950 5130 30  0000 C CNN
	1    5950 4950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5086427E
P 7700 4800
F 0 "#PWR?" H 7700 4890 20  0001 C CNN
F 1 "+5V" H 7700 4890 30  0000 C CNN
	1    7700 4800
	1    0    0    -1  
$EndComp
$Comp
L LD1117V50-DB U?
U 1 1 50860973
P 6850 4950
F 0 "U?" H 6500 5200 60  0000 C CNN
F 1 "LD1117V50-DB" H 6850 5050 60  0000 C CNN
	1    6850 4950
	1    0    0    -1  
$EndComp
Text Notes 6350 4600 0    60   ~ 0
LED Backlight Supply
Wire Wire Line
	7700 2350 7700 2500
Wire Wire Line
	7550 2750 7550 2500
Wire Wire Line
	8400 3450 8400 3500
Wire Wire Line
	5950 2500 5950 2750
Connection ~ 5950 2500
Wire Wire Line
	5700 2500 6150 2500
Wire Wire Line
	4400 2500 4500 2500
Wire Wire Line
	8400 3000 8400 3050
Wire Wire Line
	3400 2600 3550 2600
Wire Wire Line
	3550 2600 3550 2800
Wire Wire Line
	5000 2500 5300 2500
Connection ~ 5150 2500
Connection ~ 7700 4950
Wire Wire Line
	7700 4800 7700 4950
Connection ~ 8100 4950
Wire Wire Line
	7550 5200 7550 4950
Wire Wire Line
	8400 5900 8400 5950
Wire Wire Line
	5950 4950 5950 5200
Connection ~ 5950 4950
Wire Wire Line
	5700 4950 6150 4950
Wire Wire Line
	8400 5450 8400 5500
Wire Wire Line
	6850 3050 6850 3150
Wire Wire Line
	6850 5500 6850 5600
Wire Wire Line
	3400 2700 3550 2700
Connection ~ 3550 2700
Wire Wire Line
	7550 4950 8400 4950
Wire Wire Line
	5300 2500 5300 4950
Wire Wire Line
	7550 2500 8400 2500
Connection ~ 7700 2500
Connection ~ 8100 2500
Text Notes 6550 2150 0    60   ~ 0
Logic Supply
$EndSCHEMATC
