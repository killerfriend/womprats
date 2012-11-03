EESchema Schematic File Version 2  date Sat 03 Nov 2012 06:38:12 PM UTC
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
Sheet 3 7
Title "Audio Output Stage of Audio Synth"
Date "3 nov 2012"
Rev "1.1"
Comp "Womprats"
Comment1 "ECE411 Practicum"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4550 4250
Wire Wire Line
	4550 4250 4950 4250
Wire Wire Line
	6550 3600 6550 4050
Connection ~ 7600 4050
Wire Wire Line
	7600 4050 7600 3400
Wire Wire Line
	7600 3400 7900 3400
Connection ~ 3600 3400
Wire Wire Line
	3050 3400 3750 3400
Wire Wire Line
	5050 3400 4150 3400
Wire Wire Line
	4300 4550 4300 2600
Wire Wire Line
	4450 4800 4700 4800
Wire Wire Line
	4700 4800 4700 3600
Wire Wire Line
	4700 3600 5050 3600
Wire Wire Line
	4950 3700 4950 3500
Wire Wire Line
	4950 3500 5050 3500
Wire Wire Line
	3200 3750 3200 3500
Wire Wire Line
	3200 3500 3050 3500
Wire Wire Line
	1200 3400 1850 3400
Wire Wire Line
	9400 4050 8200 4050
Wire Wire Line
	8550 4550 8550 4700
Wire Wire Line
	6550 4050 7800 4050
Connection ~ 7050 3200
Wire Wire Line
	4300 2600 5050 2600
Connection ~ 4550 2600
Wire Wire Line
	5050 3150 5050 3050
Connection ~ 4650 2600
Wire Wire Line
	4650 2600 4650 2500
Wire Wire Line
	6850 3650 6850 3500
Wire Wire Line
	6850 3500 6550 3500
Wire Wire Line
	6550 3400 7150 3400
Wire Wire Line
	1850 3400 1850 3500
Wire Wire Line
	1850 3500 1950 3500
Connection ~ 1700 2600
Wire Wire Line
	1950 3400 1950 2600
Wire Wire Line
	1950 2600 1350 2600
Wire Wire Line
	3050 3700 3050 3800
Wire Wire Line
	1500 2600 1500 2500
Connection ~ 1500 2600
Wire Wire Line
	1950 3700 1850 3700
Wire Wire Line
	1850 3700 1850 3800
Connection ~ 1350 3400
Connection ~ 1500 3600
Connection ~ 1650 3800
Wire Wire Line
	5050 3300 4800 3300
Wire Wire Line
	5050 2600 5050 2650
Connection ~ 4800 2600
Wire Wire Line
	4800 3300 4800 2600
Connection ~ 8550 4050
Connection ~ 7050 4050
Wire Wire Line
	9200 5000 4550 5000
Wire Wire Line
	8550 4650 8750 4650
Connection ~ 8550 4650
Wire Wire Line
	9400 4150 9200 4150
Wire Wire Line
	9200 4150 9200 5000
Wire Wire Line
	1950 3600 1200 3600
Wire Wire Line
	1850 3800 1200 3800
Wire Wire Line
	8750 4650 8750 4300
Wire Wire Line
	8750 4300 9400 4300
Wire Wire Line
	4950 4250 4950 4200
Wire Wire Line
	4300 5050 4300 5200
Wire Wire Line
	3100 3200 3100 3600
Wire Wire Line
	3100 3600 3050 3600
Wire Wire Line
	7900 3200 6550 3200
Wire Wire Line
	6550 3200 6550 3300
Wire Wire Line
	4550 5000 4550 3100
Text Notes 3700 4800 0    60   ~ 0
Volume\nControl
$Comp
L LM4875 U302
U 1 1 50875245
P 5800 3450
F 0 "U302" H 5400 3850 50  0000 C CNN
F 1 "LM4875" H 5500 3050 50  0000 C CNN
F 2 "MODULE" H 5800 3450 50  0001 C CNN
F 3 "DOCUMENTATION" H 5800 3450 50  0001 C CNN
	1    5800 3450
	1    0    0    -1  
$EndComp
$Comp
L JACK_2P J301
U 1 1 508750E3
P 9850 4150
F 0 "J301" H 9500 3950 60  0000 C CNN
F 1 "JACK_2P" H 9700 4400 60  0000 C CNN
	1    9850 4150
	-1   0    0    1   
$EndComp
Text Notes 5550 4000 0    60   ~ 0
Audio Amplifier
Text Notes 2300 4050 0    60   ~ 0
SPI DAC
$Comp
L SPEAKER SP301
U 1 1 5082F631
P 8200 3300
F 0 "SP301" H 8100 3550 70  0000 C CNN
F 1 "SPEAKER" H 8100 3050 70  0000 C CNN
	1    8200 3300
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP305
U 1 1 50832D56
P 7050 3200
F 0 "TP305" H 7050 3300 60  0000 C CNN
F 1 "TESTPOINT" H 7050 3100 60  0001 C CNN
	1    7050 3200
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP306
U 1 1 50832D53
P 7050 4050
F 0 "TP306" H 7050 4150 60  0000 C CNN
F 1 "TESTPOINT" H 7050 3950 60  0001 C CNN
	1    7050 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR312
U 1 1 5082A5F3
P 8550 4700
F 0 "#PWR312" H 8550 4700 30  0001 C CNN
F 1 "GND" H 8550 4630 30  0001 C CNN
	1    8550 4700
	1    0    0    -1  
$EndComp
$Comp
L R R304
U 1 1 5082A5DD
P 8550 4300
F 0 "R304" V 8630 4300 50  0000 C CNN
F 1 "150" V 8550 4300 50  0000 C CNN
	1    8550 4300
	1    0    0    -1  
$EndComp
$Comp
L C C306
U 1 1 5082A5C8
P 8000 4050
F 0 "C306" H 8050 4150 50  0000 L CNN
F 1 "100uF" H 8050 3950 50  0000 L CNN
	1    8000 4050
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR309
U 1 1 5082A422
P 5050 3150
F 0 "#PWR309" H 5050 3150 30  0001 C CNN
F 1 "GND" H 5050 3080 30  0001 C CNN
	1    5050 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR307
U 1 1 5082A061
P 4300 5200
F 0 "#PWR307" H 4300 5200 30  0001 C CNN
F 1 "GND" H 4300 5130 30  0001 C CNN
	1    4300 5200
	1    0    0    -1  
$EndComp
$Comp
L POT R301
U 1 1 5082A022
P 4300 4800
F 0 "R301" H 4300 4700 50  0000 C CNN
F 1 "100k" H 4300 4800 50  0000 C CNN
	1    4300 4800
	0    1    1    0   
$EndComp
$Comp
L R R302
U 1 1 50829F28
P 4550 2850
F 0 "R302" V 4630 2850 50  0000 C CNN
F 1 "100k" V 4550 2850 50  0000 C CNN
	1    4550 2850
	-1   0    0    1   
$EndComp
$Comp
L R R303
U 1 1 50829F1A
P 4950 3950
F 0 "R303" V 5030 3950 50  0000 C CNN
F 1 "100k" V 4950 3950 50  0000 C CNN
	1    4950 3950
	-1   0    0    1   
$EndComp
$Comp
L C C304
U 1 1 50829A5D
P 5050 2850
F 0 "C304" H 5100 2950 50  0000 L CNN
F 1 "1uF" H 5100 2750 50  0000 L CNN
	1    5050 2850
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR308
U 1 1 50829881
P 4650 2500
F 0 "#PWR308" H 4650 2600 40  0001 C CNN
F 1 "3V3" H 4650 2625 40  0000 C CNN
	1    4650 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR310
U 1 1 508296BB
P 6850 3650
F 0 "#PWR310" H 6850 3650 30  0001 C CNN
F 1 "GND" H 6850 3580 30  0001 C CNN
	1    6850 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR311
U 1 1 50829685
P 7150 3800
F 0 "#PWR311" H 7150 3800 30  0001 C CNN
F 1 "GND" H 7150 3730 30  0001 C CNN
	1    7150 3800
	1    0    0    -1  
$EndComp
$Comp
L C C303
U 1 1 5082956C
P 3950 3400
F 0 "C303" V 4100 3350 50  0000 L CNN
F 1 "1.5uF" V 3800 3350 50  0000 L CNN
	1    3950 3400
	0    -1   -1   0   
$EndComp
$Comp
L C C305
U 1 1 5082957A
P 7150 3600
F 0 "C305" H 7200 3700 50  0000 L CNN
F 1 "1uF" H 7200 3500 50  0000 L CNN
	1    7150 3600
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP301
U 1 1 508202CB
P 1350 3400
F 0 "TP301" H 1350 3500 60  0000 C CNN
F 1 "TESTPOINT" H 1350 3300 60  0001 C CNN
	1    1350 3400
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP302
U 1 1 508202C6
P 1500 3600
F 0 "TP302" H 1500 3700 60  0000 C CNN
F 1 "TESTPOINT" H 1500 3500 60  0001 C CNN
	1    1500 3600
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP303
U 1 1 508202C2
P 1650 3800
F 0 "TP303" H 1650 3900 60  0000 C CNN
F 1 "TESTPOINT" H 1650 3700 60  0001 C CNN
	1    1650 3800
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP304
U 1 1 50820290
P 3600 3400
F 0 "TP304" H 3600 3500 60  0000 C CNN
F 1 "TESTPOINT" H 3600 3300 60  0001 C CNN
	1    3600 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR301
U 1 1 50805BB3
P 1350 3000
F 0 "#PWR301" H 1350 3000 30  0001 C CNN
F 1 "GND" H 1350 2930 30  0001 C CNN
	1    1350 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR303
U 1 1 50805BB0
P 1700 3000
F 0 "#PWR303" H 1700 3000 30  0001 C CNN
F 1 "GND" H 1700 2930 30  0001 C CNN
	1    1700 3000
	1    0    0    -1  
$EndComp
$Comp
L C C301
U 1 1 50805B99
P 1350 2800
F 0 "C301" H 1400 2900 50  0000 L CNN
F 1 "100n" H 1400 2700 50  0000 L CNN
	1    1350 2800
	1    0    0    -1  
$EndComp
$Comp
L C C302
U 1 1 50805B95
P 1700 2800
F 0 "C302" H 1750 2900 50  0000 L CNN
F 1 "10n" H 1750 2700 50  0000 L CNN
	1    1700 2800
	1    0    0    -1  
$EndComp
Text HLabel 1200 3800 0    60   Input ~ 0
DAC_SDI
Text HLabel 1200 3600 0    60   Input ~ 0
DAC_SCK
Text HLabel 1200 3400 0    60   Input ~ 0
DAC_CS
$Comp
L 3V3 #PWR305
U 1 1 50805B04
P 3100 3200
F 0 "#PWR305" H 3100 3300 40  0001 C CNN
F 1 "3V3" H 3100 3325 40  0000 C CNN
	1    3100 3200
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR302
U 1 1 50805AED
P 1500 2500
F 0 "#PWR302" H 1500 2600 40  0001 C CNN
F 1 "3V3" H 1500 2625 40  0000 C CNN
	1    1500 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR306
U 1 1 50805AE7
P 3200 3750
F 0 "#PWR306" H 3200 3750 30  0001 C CNN
F 1 "GND" H 3200 3680 30  0001 C CNN
	1    3200 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR304
U 1 1 50805AD8
P 3050 3800
F 0 "#PWR304" H 3050 3800 30  0001 C CNN
F 1 "GND" H 3050 3730 30  0001 C CNN
	1    3050 3800
	1    0    0    -1  
$EndComp
$Comp
L MCP4921 U301
U 1 1 50805AB3
P 2500 3550
F 0 "U301" H 2300 3850 60  0000 C CNN
F 1 "MCP4921" H 2450 3250 60  0000 C CNN
	1    2500 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
