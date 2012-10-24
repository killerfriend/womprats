EESchema Schematic File Version 2  date Tue 23 Oct 2012 07:57:16 PM PDT
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
Sheet 6 7
Title "Menu Controls for Audio Synth"
Date "24 oct 2012"
Rev "1.0"
Comp "Womprats"
Comment1 "ECE411 Practicum"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2150 6100 2    60   Input ~ 0
BUTTON5
Text HLabel 7800 3100 2    60   Input ~ 0
BUTTON4
Text HLabel 5900 5000 2    60   Input ~ 0
BUTTON3
Text HLabel 5950 3100 2    60   Input ~ 0
BUTTON2
Text HLabel 5900 1450 2    60   Input ~ 0
BUTTON1
Text HLabel 4100 3100 2    60   Input ~ 0
BUTTON0
$Comp
L SW_PUSH SW602
U 1 1 508637BA
P 4000 3600
F 0 "SW602" V 4150 3710 50  0000 L CNN
F 1 "SW_PUSH" V 4000 3520 50  0001 C CNN
	1    4000 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 3300 4000 3100
Wire Wire Line
	4000 3100 4100 3100
Wire Wire Line
	4000 3900 4000 4150
$Comp
L GND #PWR053
U 1 1 508637EB
P 4000 4150
F 0 "#PWR053" H 4000 4150 30  0001 C CNN
F 1 "GND" H 4000 4080 30  0001 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW603
U 1 1 5086384B
P 5800 1950
F 0 "SW603" V 5950 2060 50  0000 L CNN
F 1 "SW_PUSH" V 5800 1870 50  0001 C CNN
	1    5800 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 1650 5800 1450
Wire Wire Line
	5800 1450 5900 1450
Wire Wire Line
	5800 2250 5800 2500
$Comp
L GND #PWR054
U 1 1 50863854
P 5800 2500
F 0 "#PWR054" H 5800 2500 30  0001 C CNN
F 1 "GND" H 5800 2430 30  0001 C CNN
	1    5800 2500
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW605
U 1 1 5086385A
P 5850 3600
F 0 "SW605" V 6000 3710 50  0000 L CNN
F 1 "SW_PUSH" V 5850 3520 50  0001 C CNN
	1    5850 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 3300 5850 3100
Wire Wire Line
	5850 3100 5950 3100
Wire Wire Line
	5850 3900 5850 4150
$Comp
L GND #PWR055
U 1 1 50863863
P 5850 4150
F 0 "#PWR055" H 5850 4150 30  0001 C CNN
F 1 "GND" H 5850 4080 30  0001 C CNN
	1    5850 4150
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW604
U 1 1 50863869
P 5800 5500
F 0 "SW604" V 5950 5610 50  0000 L CNN
F 1 "SW_PUSH" V 5800 5420 50  0001 C CNN
	1    5800 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 5200 5800 5000
Wire Wire Line
	5800 5000 5900 5000
Wire Wire Line
	5800 5800 5800 6050
$Comp
L GND #PWR056
U 1 1 50863872
P 5800 6050
F 0 "#PWR056" H 5800 6050 30  0001 C CNN
F 1 "GND" H 5800 5980 30  0001 C CNN
	1    5800 6050
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW606
U 1 1 50863878
P 7700 3600
F 0 "SW606" V 7850 3710 50  0000 L CNN
F 1 "SW_PUSH" V 7700 3520 50  0001 C CNN
	1    7700 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 3300 7700 3100
Wire Wire Line
	7700 3100 7800 3100
Wire Wire Line
	7700 3900 7700 4150
$Comp
L GND #PWR057
U 1 1 50863881
P 7700 4150
F 0 "#PWR057" H 7700 4150 30  0001 C CNN
F 1 "GND" H 7700 4080 30  0001 C CNN
	1    7700 4150
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW601
U 1 1 50863887
P 2050 6600
F 0 "SW601" V 2200 6710 50  0000 L CNN
F 1 "SW_PUSH" V 2050 6520 50  0001 C CNN
	1    2050 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 6300 2050 6100
Wire Wire Line
	2050 6100 2150 6100
Wire Wire Line
	2050 6900 2050 7150
$Comp
L GND #PWR058
U 1 1 50863890
P 2050 7150
F 0 "#PWR058" H 2050 7150 30  0001 C CNN
F 1 "GND" H 2050 7080 30  0001 C CNN
	1    2050 7150
	1    0    0    -1  
$EndComp
Text Notes 5800 1350 0    60   ~ 0
Up Button
Text Notes 4000 3000 0    60   ~ 0
Left Button
Text Notes 5850 3000 0    60   ~ 0
Middle Button
Text Notes 7700 3000 0    60   ~ 0
Right Button
Text Notes 5800 4900 0    60   ~ 0
Down Button
Text Notes 2050 6000 0    60   ~ 0
Auxiliary Button
$EndSCHEMATC
