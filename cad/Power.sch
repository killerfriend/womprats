EESchema Schematic File Version 2  date Mon 22 Oct 2012 10:34:40 AM PDT
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
Date "22 oct 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 7700 3000
Wire Wire Line
	7700 2850 7700 3000
Connection ~ 8100 3000
Wire Wire Line
	7550 3650 5950 3650
Wire Wire Line
	7550 3250 7550 3000
Wire Wire Line
	8400 3950 8400 4000
Wire Wire Line
	5950 3000 5950 3250
Wire Wire Line
	6850 4000 6850 3550
Wire Wire Line
	3550 3400 3550 3150
Wire Wire Line
	3550 3150 3400 3150
Connection ~ 5950 3000
Wire Wire Line
	5700 3000 6150 3000
Wire Wire Line
	3550 3300 3400 3300
Connection ~ 3550 3300
Wire Wire Line
	4400 3000 4500 3000
Connection ~ 6150 3000
Wire Wire Line
	8400 3500 8400 3550
Wire Wire Line
	5000 3000 5300 3000
Connection ~ 6850 3650
Wire Wire Line
	7550 3000 8600 3000
Connection ~ 8400 3000
$Comp
L R R?
U 1 1 5082B77A
P 8400 3250
F 0 "R?" V 8480 3250 50  0000 C CNN
F 1 "1.5k" V 8400 3250 50  0000 C CNN
	1    8400 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 50832DF9
P 8400 4000
F 0 "#PWR?" H 8400 4000 30  0001 C CNN
F 1 "GND" H 8400 3930 30  0001 C CNN
	1    8400 4000
	1    0    0    -1  
$EndComp
$Comp
L TEST W?
U 1 1 50832DB7
P 5500 3000
F 0 "W?" H 5500 3060 40  0000 C CNN
F 1 "TEST" H 5500 2930 40  0000 C CNN
	1    5500 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5082B712
P 6850 4000
F 0 "#PWR?" H 6850 4000 30  0001 C CNN
F 1 "GND" H 6850 3930 30  0001 C CNN
	1    6850 4000
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP?
U 1 1 5082B84F
P 8100 3000
F 0 "TP?" H 8100 3100 60  0000 C CNN
F 1 "TESTPOINT" H 8100 2900 60  0001 C CNN
	1    8100 3000
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP?
U 1 1 5082B848
P 6150 3000
F 0 "TP?" H 6150 3100 60  0000 C CNN
F 1 "TESTPOINT" H 6150 2900 60  0001 C CNN
	1    6150 3000
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5082B76F
P 8400 3750
F 0 "D?" H 8400 3850 50  0000 C CNN
F 1 "PWRLED" H 8400 3650 50  0000 C CNN
	1    8400 3750
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 5082B6D8
P 5950 3000
F 0 "#FLG?" H 5950 3095 30  0001 C CNN
F 1 "PWR_FLAG" H 5950 3180 30  0000 C CNN
	1    5950 3000
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 5082B6BF
P 7700 2850
F 0 "#PWR?" H 7700 2950 40  0001 C CNN
F 1 "3V3" H 7700 2975 40  0000 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
$Comp
L SPST SW?
U 1 1 5082B661
P 3900 3000
F 0 "SW?" H 3900 3100 70  0000 C CNN
F 1 "SPST" H 3900 2900 70  0000 C CNN
	1    3900 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5082B344
P 3550 3400
F 0 "#PWR?" H 3550 3400 30  0001 C CNN
F 1 "GND" H 3550 3330 30  0001 C CNN
	1    3550 3400
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK J?
U 1 1 5082B09B
P 3050 3150
F 0 "J?" H 2750 3400 60  0000 C CNN
F 1 "BARREL_JACK" H 3000 2900 60  0000 C CNN
	1    3050 3150
	1    0    0    -1  
$EndComp
$Comp
L FUSE F?
U 1 1 5082AEA1
P 4750 3000
F 0 "F?" H 4850 3050 40  0000 C CNN
F 1 "FUSE" H 4650 2950 40  0000 C CNN
	1    4750 3000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5082AE7E
P 5950 3450
F 0 "C?" H 6000 3550 50  0000 L CNN
F 1 "10uF" H 6000 3350 50  0000 L CNN
	1    5950 3450
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5082AE32
P 7550 3450
F 0 "C?" H 7600 3550 50  0000 L CNN
F 1 "10uF" H 7600 3350 50  0000 L CNN
	1    7550 3450
	1    0    0    -1  
$EndComp
Text HLabel 8600 3000 2    60   Input ~ 0
VDD
$Comp
L LD1117V33-DB U?
U 1 1 5082AE06
P 6850 3000
F 0 "U?" H 6500 3250 60  0000 C CNN
F 1 "LD1117V33-DB" H 6850 3100 60  0000 C CNN
	1    6850 3000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
