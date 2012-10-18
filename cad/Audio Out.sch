EESchema Schematic File Version 2  date Thu 18 Oct 2012 12:56:28 PM PDT
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
Sheet 3 7
Title ""
Date "18 oct 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5200 3650 3950 3650
Connection ~ 4100 3650
Wire Wire Line
	5200 3950 5050 3950
Wire Wire Line
	5050 3750 5200 3750
Wire Wire Line
	6300 3650 6700 3650
Wire Wire Line
	6300 3850 6500 3850
Wire Wire Line
	6300 3750 6400 3750
Wire Wire Line
	6300 3950 6300 4050
Wire Wire Line
	6400 3750 6400 3900
Wire Wire Line
	6500 3850 6500 3550
Wire Wire Line
	5200 3850 5050 3850
Wire Wire Line
	4100 3650 4100 3550
Connection ~ 4300 3650
$Comp
L GND #PWR?
U 1 1 50805BB3
P 3950 4050
F 0 "#PWR?" H 3950 4050 30  0001 C CNN
F 1 "GND" H 3950 3980 30  0001 C CNN
	1    3950 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 50805BB0
P 4300 4050
F 0 "#PWR?" H 4300 4050 30  0001 C CNN
F 1 "GND" H 4300 3980 30  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 50805B99
P 3950 3850
F 0 "C?" H 4000 3950 50  0000 L CNN
F 1 "100n" H 4000 3750 50  0000 L CNN
	1    3950 3850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 50805B95
P 4300 3850
F 0 "C?" H 4350 3950 50  0000 L CNN
F 1 "10n" H 4350 3750 50  0000 L CNN
	1    4300 3850
	1    0    0    -1  
$EndComp
Text HLabel 5050 3950 0    60   Input ~ 0
DAC_SDI
Text HLabel 5050 3850 0    60   Input ~ 0
DAC_SCK
Text HLabel 5050 3750 0    60   Input ~ 0
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
P 4100 3550
F 0 "#PWR?" H 4100 3650 40  0001 C CNN
F 1 "3V3" H 4100 3675 40  0000 C CNN
	1    4100 3550
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
