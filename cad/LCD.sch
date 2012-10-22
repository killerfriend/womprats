EESchema Schematic File Version 2  date Mon 22 Oct 2012 12:25:21 PM PDT
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
Sheet 4 7
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
$Comp
L C C1
U 1 1 50821AD6
P 7200 4300
F 0 "C1" H 7250 4400 50  0000 L CNN
F 1 "1uF" H 7250 4200 50  0000 L CNN
	1    7200 4300
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
NoConn ~ 5000 3450
NoConn ~ 5000 3550
NoConn ~ 5000 3650
NoConn ~ 5000 3750
NoConn ~ 5000 3850
NoConn ~ 5000 3950
NoConn ~ 5000 4150
NoConn ~ 5000 4250
NoConn ~ 5000 4050
NoConn ~ 5000 4350
$Comp
L EADOGS102W-6 U?
U 1 1 50859FCD
P 5750 3900
F 0 "U?" H 5350 4800 50  0000 C CNN
F 1 "EADOGS102W-6" H 5600 3000 50  0000 C CNN
F 2 "MODULE" H 5750 3900 50  0001 C CNN
F 3 "DOCUMENTATION" H 5750 3900 50  0001 C CNN
	1    5750 3900
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 50821E22
P 7950 4250
F 0 "C2" H 8000 4350 50  0000 L CNN
F 1 "1uF" H 8000 4150 50  0000 L CNN
	1    7950 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
