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
Sheet 3 7
Title ""
Date "22 oct 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6500 3350 2    60   Input ~ 0
RST
Text HLabel 6500 3450 2    60   Input ~ 0
CD
Text HLabel 6500 3250 2    60   Input ~ 0
CE
Text HLabel 6500 3550 2    60   Input ~ 0
SCK
Text HLabel 6500 3650 2    60   Input ~ 0
MOSI
Text HLabel 6850 2500 0    60   Input ~ 0
BCKLIGHT
Text Label 8650 4350 2    60   ~ 0
VB1-
Text Label 8650 3950 2    60   ~ 0
VB1+
$Comp
L C C2
U 1 1 50821E22
P 8650 4150
F 0 "C2" H 8700 4250 50  0000 L CNN
F 1 "1uF" H 8700 4050 50  0000 L CNN
	1    8650 4150
	1    0    0    -1  
$EndComp
Text Label 6500 4450 0    60   ~ 0
VB1-
Text Label 6500 4150 0    60   ~ 0
VB1+
Text Label 8150 4350 2    60   ~ 0
VB0-
Text Label 8150 3950 2    60   ~ 0
VB0+
Text Label 6500 4350 0    60   ~ 0
VB0-
Text Label 6500 4250 0    60   ~ 0
VB0+
$Comp
L C C1
U 1 1 50821AD6
P 8150 4150
F 0 "C1" H 8200 4250 50  0000 L CNN
F 1 "1uF" H 8200 4050 50  0000 L CNN
	1    8150 4150
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 5081F23D
P 6850 3850
F 0 "#PWR?" H 6850 3950 40  0001 C CNN
F 1 "3V3" H 6850 3975 40  0000 C CNN
	1    6850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3850 6500 3850
Wire Wire Line
	6850 4000 6500 4000
Wire Wire Line
	6500 4050 6500 3950
Wire Wire Line
	6500 3850 6500 3750
$Comp
L GND #PWR?
U 1 1 5081EF97
P 6850 4050
F 0 "#PWR?" H 6850 4050 30  0001 C CNN
F 1 "GND" H 6850 3980 30  0001 C CNN
	1    6850 4050
	1    0    0    -1  
$EndComp
$Comp
L EADOGS102W-6 U1
U 1 1 5081D082
P 5750 3900
F 0 "U1" H 5750 3800 50  0000 C CNN
F 1 "DOGS102W" H 5750 4000 50  0000 C CNN
F 2 "MODULE" H 5750 3900 50  0001 C CNN
F 3 "DOCUMENTATION" H 5750 3900 50  0001 C CNN
	1    5750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4000 6850 4050
$Comp
L C C3
U 1 1 50849027
P 6500 4750
F 0 "C3" H 6550 4850 50  0000 L CNN
F 1 "1uF" H 6550 4650 50  0000 L CNN
	1    6500 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 50849050
P 6500 4950
F 0 "#PWR?" H 6500 4950 30  0001 C CNN
F 1 "GND" H 6500 4880 30  0001 C CNN
	1    6500 4950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
