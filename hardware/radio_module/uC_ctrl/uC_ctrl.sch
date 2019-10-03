EESchema Schematic File Version 4
LIBS:radio_module-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_UART:MAX485E U6
U 1 1 5DBFD31C
P 9500 2350
F 0 "U6" H 9500 3031 50  0000 C CNN
F 1 "MAX485E" H 9500 2940 50  0000 C CNN
F 2 "Package_SO:SO-8_5.3x6.2mm_P1.27mm" H 9500 1650 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 9500 2400 50  0001 C CNN
	1    9500 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5DC0CBD1
P 2550 6000
F 0 "D4" V 2589 5882 50  0000 R CNN
F 1 "LD_A" V 2498 5882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2550 6000 50  0001 C CNN
F 3 "~" H 2550 6000 50  0001 C CNN
	1    2550 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5DC0D53C
P 2550 5550
F 0 "R8" H 2620 5596 50  0000 L CNN
F 1 "1K" H 2620 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2480 5550 50  0001 C CNN
F 3 "~" H 2550 5550 50  0001 C CNN
	1    2550 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5DC0D804
P 2550 6350
F 0 "#PWR042" H 2550 6100 50  0001 C CNN
F 1 "GND" H 2555 6177 50  0000 C CNN
F 2 "" H 2550 6350 50  0001 C CNN
F 3 "" H 2550 6350 50  0001 C CNN
	1    2550 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2350 9100 2350
Wire Wire Line
	9100 2450 8850 2450
Wire Wire Line
	8850 2450 8850 2350
Wire Wire Line
	8850 2450 8850 2900
Connection ~ 8850 2450
$Comp
L Device:R R12
U 1 1 5DC11EC0
P 8850 3050
F 0 "R12" H 8780 3096 50  0000 R CNN
F 1 "100K" H 8780 3005 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8780 3050 50  0001 C CNN
F 3 "~" H 8850 3050 50  0001 C CNN
	1    8850 3050
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 5DC12A44
P 8850 3500
F 0 "#PWR049" H 8850 3250 50  0001 C CNN
F 1 "GND" H 8855 3327 50  0000 C CNN
F 2 "" H 8850 3500 50  0001 C CNN
F 3 "" H 8850 3500 50  0001 C CNN
	1    8850 3500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 5DC13213
P 9500 3500
F 0 "#PWR051" H 9500 3250 50  0001 C CNN
F 1 "GND" H 9505 3327 50  0000 C CNN
F 2 "" H 9500 3500 50  0001 C CNN
F 3 "" H 9500 3500 50  0001 C CNN
	1    9500 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 3500 9500 2950
Wire Wire Line
	8850 3500 8850 3200
$Comp
L power:GND #PWR047
U 1 1 5DC13C52
P 5200 6350
F 0 "#PWR047" H 5200 6100 50  0001 C CNN
F 1 "GND" H 5205 6177 50  0000 C CNN
F 2 "" H 5200 6350 50  0001 C CNN
F 3 "" H 5200 6350 50  0001 C CNN
	1    5200 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6350 5200 4650
Wire Wire Line
	9900 2550 10450 2550
Wire Wire Line
	9900 2250 10450 2250
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5DC14F49
P 1350 3750
F 0 "J4" H 1458 4131 50  0000 C CNN
F 1 "Conn_01x06_Male" H 1458 4040 50  0000 C CNN
F 2 "Connector:Tag-Connect_TC2030-IDC-NL_2x03_P1.27mm_Vertical" H 1350 3750 50  0001 C CNN
F 3 "~" H 1350 3750 50  0001 C CNN
	1    1350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3650 1600 3650
Wire Wire Line
	1600 3650 1600 3000
Wire Wire Line
	1550 3750 1600 3750
Wire Wire Line
	1600 3750 1600 4400
Wire Wire Line
	1550 4050 1700 4050
NoConn ~ 1700 4050
$Comp
L power:GND #PWR040
U 1 1 5DC208A6
P 1600 4400
F 0 "#PWR040" H 1600 4150 50  0001 C CNN
F 1 "GND" H 1605 4227 50  0000 C CNN
F 2 "" H 1600 4400 50  0001 C CNN
F 3 "" H 1600 4400 50  0001 C CNN
	1    1600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR039
U 1 1 5DC2106A
P 1600 3000
F 0 "#PWR039" H 1600 2900 50  0001 C CNN
F 1 "+VDC" H 1600 3275 50  0000 C CNN
F 2 "" H 1600 3000 50  0001 C CNN
F 3 "" H 1600 3000 50  0001 C CNN
	1    1600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2850 6850 2850
Wire Wire Line
	6150 3050 6850 3050
Text HLabel 6850 3050 2    50   Input ~ 0
D0
Text HLabel 6850 2850 2    50   Input ~ 0
DCLK
$Comp
L Device:R R9
U 1 1 5DC2F6A7
P 3000 5550
F 0 "R9" H 3070 5596 50  0000 L CNN
F 1 "1K" H 3070 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 5550 50  0001 C CNN
F 3 "~" H 3000 5550 50  0001 C CNN
	1    3000 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5DC2FA9A
P 3000 6000
F 0 "D5" V 3039 5882 50  0000 R CNN
F 1 "LD_B" V 2948 5882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3000 6000 50  0001 C CNN
F 3 "~" H 3000 6000 50  0001 C CNN
	1    3000 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5DC2FE36
P 3000 6350
F 0 "#PWR043" H 3000 6100 50  0001 C CNN
F 1 "GND" H 3005 6177 50  0000 C CNN
F 2 "" H 3000 6350 50  0001 C CNN
F 3 "" H 3000 6350 50  0001 C CNN
	1    3000 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5DC30094
P 3400 5550
F 0 "R10" H 3470 5596 50  0000 L CNN
F 1 "1K" H 3470 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 5550 50  0001 C CNN
F 3 "~" H 3400 5550 50  0001 C CNN
	1    3400 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 5DC3034C
P 3400 6000
F 0 "D6" V 3439 5883 50  0000 R CNN
F 1 "ANT_A" V 3348 5883 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3400 6000 50  0001 C CNN
F 3 "~" H 3400 6000 50  0001 C CNN
	1    3400 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5DC3074F
P 3400 6350
F 0 "#PWR044" H 3400 6100 50  0001 C CNN
F 1 "GND" H 3405 6177 50  0000 C CNN
F 2 "" H 3400 6350 50  0001 C CNN
F 3 "" H 3400 6350 50  0001 C CNN
	1    3400 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5DC30978
P 3800 5550
F 0 "R11" H 3870 5596 50  0000 L CNN
F 1 "1K" H 3870 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3730 5550 50  0001 C CNN
F 3 "~" H 3800 5550 50  0001 C CNN
	1    3800 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 5DC30BEC
P 3800 6000
F 0 "D7" V 3839 5882 50  0000 R CNN
F 1 "ANT_B" V 3748 5882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3800 6000 50  0001 C CNN
F 3 "~" H 3800 6000 50  0001 C CNN
	1    3800 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5DC3109A
P 3800 6350
F 0 "#PWR045" H 3800 6100 50  0001 C CNN
F 1 "GND" H 3805 6177 50  0000 C CNN
F 2 "" H 3800 6350 50  0001 C CNN
F 3 "" H 3800 6350 50  0001 C CNN
	1    3800 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5700 2550 5850
Wire Wire Line
	2550 6150 2550 6350
Wire Wire Line
	3000 5700 3000 5850
Wire Wire Line
	3000 6150 3000 6350
Wire Wire Line
	3400 5700 3400 5850
Wire Wire Line
	3400 6150 3400 6350
Wire Wire Line
	3800 5700 3800 5850
Wire Wire Line
	3800 6150 3800 6350
Wire Wire Line
	4150 2550 3400 2550
Wire Wire Line
	4150 2650 3400 2650
$Comp
L MCU_Microchip_PIC16:PIC16F1512-ISS U5
U 1 1 5DC5731F
P 5150 3350
F 0 "U5" H 5150 4731 50  0000 C CNN
F 1 "PIC16F1512-ISS" H 5150 4640 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 5150 3350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/41624A.pdf" H 5150 3350 50  0001 C CNN
	1    5150 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3450 6300 3450
Wire Wire Line
	6300 3450 6300 4750
Wire Wire Line
	1850 4750 1850 3550
Wire Wire Line
	1550 3550 1850 3550
Wire Wire Line
	1950 3850 1950 4150
Wire Wire Line
	1950 4150 4150 4150
Wire Wire Line
	1550 3850 1950 3850
Wire Wire Line
	2050 3950 2050 4050
Wire Wire Line
	1550 3950 2050 3950
Wire Wire Line
	6150 2950 6450 2950
NoConn ~ 6450 2950
Wire Wire Line
	6150 3150 8250 3150
Wire Wire Line
	8250 3150 8250 2550
Wire Wire Line
	8250 2550 9100 2550
Wire Wire Line
	6150 3250 8350 3250
Wire Wire Line
	8350 3250 8350 2250
Wire Wire Line
	8350 2250 9100 2250
$Comp
L power:+VDC #PWR050
U 1 1 5DC8DF44
P 9500 1500
F 0 "#PWR050" H 9500 1400 50  0001 C CNN
F 1 "+VDC" H 9500 1775 50  0000 C CNN
F 2 "" H 9500 1500 50  0001 C CNN
F 3 "" H 9500 1500 50  0001 C CNN
	1    9500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1500 9500 1550
Wire Wire Line
	6300 4750 1850 4750
$Comp
L power:+VDC #PWR046
U 1 1 5DC2306B
P 5150 1500
F 0 "#PWR046" H 5150 1400 50  0001 C CNN
F 1 "+VDC" H 5150 1775 50  0000 C CNN
F 2 "" H 5150 1500 50  0001 C CNN
F 3 "" H 5150 1500 50  0001 C CNN
	1    5150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1500 5150 1650
Wire Wire Line
	4150 2750 3400 2750
Wire Wire Line
	4150 2850 3400 2850
Wire Wire Line
	4150 2950 3400 2950
Wire Wire Line
	2050 4050 4150 4050
Wire Wire Line
	5150 4550 5150 4650
Wire Wire Line
	5150 4650 5200 4650
Wire Wire Line
	5250 4650 5250 4550
Connection ~ 5200 4650
Wire Wire Line
	5200 4650 5250 4650
Wire Wire Line
	4150 3950 3800 3950
Wire Wire Line
	3800 3950 3800 5400
Wire Wire Line
	4150 3850 3400 3850
Wire Wire Line
	3400 3850 3400 5400
Wire Wire Line
	4150 3750 3000 3750
Wire Wire Line
	3000 3750 3000 5400
Wire Wire Line
	4150 3650 2550 3650
Wire Wire Line
	2550 3650 2550 5400
Wire Wire Line
	4150 3550 3400 3550
Wire Wire Line
	4150 3450 3400 3450
Wire Wire Line
	4150 3250 3400 3250
Wire Wire Line
	4150 3150 3400 3150
$Comp
L Device:R R7
U 1 1 5DCEF8C4
P 2150 5550
F 0 "R7" H 2220 5596 50  0000 L CNN
F 1 "1K" H 2220 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2080 5550 50  0001 C CNN
F 3 "~" H 2150 5550 50  0001 C CNN
	1    2150 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5DCEFCE3
P 2150 6000
F 0 "D3" V 2189 5882 50  0000 R CNN
F 1 "ACT" V 2098 5882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2150 6000 50  0001 C CNN
F 3 "~" H 2150 6000 50  0001 C CNN
	1    2150 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5DCF0171
P 2150 6350
F 0 "#PWR041" H 2150 6100 50  0001 C CNN
F 1 "GND" H 2155 6177 50  0000 C CNN
F 2 "" H 2150 6350 50  0001 C CNN
F 3 "" H 2150 6350 50  0001 C CNN
	1    2150 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6350 2150 6150
Wire Wire Line
	2150 5850 2150 5700
Wire Wire Line
	4150 3050 2150 3050
Wire Wire Line
	2150 3050 2150 5400
$Comp
L Device:C C25
U 1 1 5DCF7B54
P 5650 1800
F 0 "C25" H 5765 1846 50  0000 L CNN
F 1 "0.1" H 5765 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5688 1650 50  0001 C CNN
F 3 "~" H 5650 1800 50  0001 C CNN
	1    5650 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 5DCF849A
P 10000 1700
F 0 "C26" H 10115 1746 50  0000 L CNN
F 1 "0.1" H 10115 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10038 1550 50  0001 C CNN
F 3 "~" H 10000 1700 50  0001 C CNN
	1    10000 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 5DCF87A1
P 10000 3500
F 0 "#PWR052" H 10000 3250 50  0001 C CNN
F 1 "GND" H 10005 3327 50  0000 C CNN
F 2 "" H 10000 3500 50  0001 C CNN
F 3 "" H 10000 3500 50  0001 C CNN
	1    10000 3500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5DCF8A79
P 5650 2050
F 0 "#PWR048" H 5650 1800 50  0001 C CNN
F 1 "GND" H 5655 1877 50  0000 C CNN
F 2 "" H 5650 2050 50  0001 C CNN
F 3 "" H 5650 2050 50  0001 C CNN
	1    5650 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 1650 5150 1650
Connection ~ 5150 1650
Wire Wire Line
	5150 1650 5150 2150
Wire Wire Line
	5650 2050 5650 1950
Wire Wire Line
	10000 3500 10000 1850
Wire Wire Line
	10000 1550 9500 1550
Connection ~ 9500 1550
Wire Wire Line
	9500 1550 9500 1850
Wire Wire Line
	6150 2750 6450 2750
Wire Wire Line
	6150 2650 6850 2650
Wire Wire Line
	6150 2550 6850 2550
NoConn ~ 6450 2750
Text HLabel 3400 2550 0    39   Input ~ 0
A0
Text HLabel 3400 2650 0    39   Input ~ 0
A1
Text HLabel 3400 2750 0    39   Input ~ 0
A2
Text HLabel 3400 2850 0    39   Input ~ 0
A3
Text HLabel 3400 2950 0    39   Input ~ 0
A4
Text HLabel 3400 3150 0    39   Input ~ 0
LD_A
Text HLabel 3400 3250 0    39   Input ~ 0
LD_B
Text HLabel 3400 3450 0    39   Input ~ 0
ANT_A
Text HLabel 3400 3550 0    39   Input ~ 0
ANT_B
Text HLabel 6850 2550 2    39   Input ~ 0
~CS_A
Text HLabel 6850 2650 2    39   Input ~ 0
~CS_B
Text HLabel 10450 2250 2    39   Input ~ 0
B
Text HLabel 10450 2550 2    39   Input ~ 0
A
$Comp
L Device:R R15
U 1 1 5DE933CB
P 6300 1900
F 0 "R15" H 6370 1946 50  0000 L CNN
F 1 "100K" H 6370 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 1900 50  0001 C CNN
F 3 "~" H 6300 1900 50  0001 C CNN
	1    6300 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1650 6300 1650
Wire Wire Line
	6300 1650 6300 1750
Connection ~ 5650 1650
Wire Wire Line
	6300 3450 6300 2050
Connection ~ 6300 3450
Text HLabel 6850 3450 2    39   Input ~ 0
~Reset
Wire Wire Line
	6850 3450 6300 3450
$EndSCHEMATC