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
Sheet 3 7
Title ""
Date "20 oct 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 6700 3650
Wire Wire Line
	7050 3650 6300 3650
Connection ~ 5000 4050
Wire Wire Line
	4550 4050 5100 4050
Connection ~ 4850 3850
Wire Wire Line
	4550 3850 5200 3850
Connection ~ 4700 3650
Wire Wire Line
	4550 3650 5100 3650
Wire Wire Line
	5100 4050 5100 3950
Wire Wire Line
	5100 3950 5200 3950
Connection ~ 4750 2850
Wire Wire Line
	4750 2850 4750 2750
Wire Wire Line
	6500 3550 6500 3850
Wire Wire Line
	6400 3900 6400 3750
Wire Wire Line
	6300 3950 6300 4050
Wire Wire Line
	6400 3750 6300 3750
Wire Wire Line
	6500 3850 6300 3850
Wire Wire Line
	4600 2850 5200 2850
Wire Wire Line
	5200 2850 5200 3650
Connection ~ 4950 2850
Wire Wire Line
	5200 3750 5100 3750
Wire Wire Line
	5100 3750 5100 3650
$Comp
L TESTPOINT TP?
U 1 1 508202CB
P 4700 3650
F 0 "TP?" H 4700 3750 60  0000 C CNN
F 1 "TESTPOINT" H 4700 3550 60  0001 C CNN
	1    4700 3650
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP?
U 1 1 508202C6
P 4850 3850
F 0 "TP?" H 4850 3950 60  0000 C CNN
F 1 "TESTPOINT" H 4850 3750 60  0001 C CNN
	1    4850 3850
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP?
U 1 1 508202C2
P 5000 4050
F 0 "TP?" H 5000 4150 60  0000 C CNN
F 1 "TESTPOINT" H 5000 3950 60  0001 C CNN
	1    5000 4050
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP?
U 1 1 50820290
P 6700 3650
F 0 "TP?" H 6700 3750 60  0000 C CNN
F 1 "TESTPOINT" H 6700 3550 60  0001 C CNN
	1    6700 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 50805BB3
P 4600 3250
F 0 "#PWR?" H 4600 3250 30  0001 C CNN
F 1 "GND" H 4600 3180 30  0001 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 50805BB0
P 4950 3250
F 0 "#PWR?" H 4950 3250 30  0001 C CNN
F 1 "GND" H 4950 3180 30  0001 C CNN
	1    4950 3250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 50805B99
P 4600 3050
F 0 "C?" H 4650 3150 50  0000 L CNN
F 1 "100n" H 4650 2950 50  0000 L CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 50805B95
P 4950 3050
F 0 "C?" H 5000 3150 50  0000 L CNN
F 1 "10n" H 5000 2950 50  0000 L CNN
	1    4950 3050
	1    0    0    -1  
$EndComp
Text HLabel 4550 4050 0    60   Input ~ 0
DAC_SDI
Text HLabel 4550 3850 0    60   Input ~ 0
DAC_SCK
Text HLabel 4550 3650 0    60   Input ~ 0
DAC_CS
$Comp
L 3V3 #PWR?
U 1 1 50805B04
P 6500 3550
F 0 "#PWR?" H 6500 3650 40  0001 C CNN
F 1 "3V3" H 6500 3675 40  0000 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 50805AED
P 4750 2750
F 0 "#PWR?" H 4750 2850 40  0001 C CNN
F 1 "3V3" H 4750 2875 40  0000 C CNN
	1    4750 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 50805AE7
P 6400 3900
F 0 "#PWR?" H 6400 3900 30  0001 C CNN
F 1 "GND" H 6400 3830 30  0001 C CNN
	1    6400 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 50805AD8
P 6300 4050
F 0 "#PWR?" H 6300 4050 30  0001 C CNN
F 1 "GND" H 6300 3980 30  0001 C CNN
	1    6300 4050
	1    0    0    -1  
$EndComp
$Comp
L MCP4921 U?
U 1 1 50805AB3
P 5750 3800
F 0 "U?" H 5550 4100 60  0000 C CNN
F 1 "MCP4921" H 5700 3500 60  0000 C CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
