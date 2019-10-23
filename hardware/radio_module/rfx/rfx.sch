EESchema Schematic File Version 4
LIBS:radio_module-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L MAX2769CETI_:MAX2769CETI+ U1
U 1 1 5DD1BF0E
P 5400 4100
AR Path="/5DB387EA/5DD1BF0E" Ref="U1"  Part="1" 
AR Path="/5DB3893A/5DD1BF0E" Ref="U7"  Part="1" 
F 0 "U7" H 5400 5470 50  0000 C CNN
F 1 "MAX2769CETI+" H 5400 5379 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-28-1EP_5x5mm_P0.5mm_EP3.35x3.35mm_ThermalVias" H 5400 4100 50  0001 L BNN
F 3 "TQFN-28 Maxim" H 5400 4100 50  0001 L BNN
F 4 "MAX2769CETI+" H 5400 4100 50  0001 L BNN "Field4"
F 5 "https://www.digikey.com/product-detail/en/maxim-integrated/MAX2769CETI-/MAX2769CETI--ND/6560323?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 5400 4100 50  0001 L BNN "Field5"
F 6 "Universal Gnss Rx, 8mhz-44mhz, Tqfn-28" H 5400 4100 50  0001 L BNN "Field6"
F 7 "Maxim Integrated" H 5400 4100 50  0001 L BNN "Field7"
F 8 "MAX2769CETI+-ND" H 5400 4100 50  0001 L BNN "Field8"
	1    5400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3800 6950 3800
Wire Wire Line
	6100 4300 6950 4300
Wire Wire Line
	6100 4100 6950 4100
Wire Wire Line
	6100 4200 6950 4200
Wire Wire Line
	6100 4500 6950 4500
Wire Wire Line
	6100 4600 6950 4600
$Comp
L Device:C C3
U 1 1 5DD1D26D
P 5400 5600
AR Path="/5DB387EA/5DD1D26D" Ref="C3"  Part="1" 
AR Path="/5DB3893A/5DD1D26D" Ref="C29"  Part="1" 
F 0 "C29" V 5148 5600 50  0000 C CNN
F 1 "47n" V 5239 5600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5438 5450 50  0001 C CNN
F 3 "~" H 5400 5600 50  0001 C CNN
	1    5400 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 4400 6250 4400
Wire Wire Line
	6250 4400 6250 5600
Wire Wire Line
	6250 5600 5550 5600
Wire Wire Line
	4700 4200 4600 4200
Wire Wire Line
	4600 4200 4600 5600
Wire Wire Line
	4600 5600 5250 5600
Wire Wire Line
	4700 4400 4050 4400
Wire Wire Line
	4700 4500 4050 4500
Wire Wire Line
	3650 4600 4700 4600
$Comp
L Device:C C2
U 1 1 5DD1FD5E
P 3500 4600
AR Path="/5DB387EA/5DD1FD5E" Ref="C2"  Part="1" 
AR Path="/5DB3893A/5DD1FD5E" Ref="C28"  Part="1" 
F 0 "C28" V 3248 4600 50  0000 C CNN
F 1 "10n" V 3339 4600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3538 4450 50  0001 C CNN
F 3 "~" H 3500 4600 50  0001 C CNN
	1    3500 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 4600 3000 4600
Wire Wire Line
	4700 4800 4500 4800
Wire Wire Line
	4500 4800 4500 6300
Wire Wire Line
	4700 5100 4150 5100
Wire Wire Line
	4150 5100 4150 5500
$Comp
L Device:R R1
U 1 1 5DD25564
P 4150 5650
AR Path="/5DB387EA/5DD25564" Ref="R1"  Part="1" 
AR Path="/5DB3893A/5DD25564" Ref="R13"  Part="1" 
F 0 "R13" H 4220 5696 50  0000 L CNN
F 1 "100K" H 4220 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4080 5650 50  0001 C CNN
F 3 "~" H 4150 5650 50  0001 C CNN
	1    4150 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6300 4150 5800
Wire Wire Line
	6100 4000 7450 4000
$Comp
L Device:R R2
U 1 1 5DD26F27
P 7750 4000
AR Path="/5DB387EA/5DD26F27" Ref="R2"  Part="1" 
AR Path="/5DB3893A/5DD26F27" Ref="R14"  Part="1" 
F 0 "R14" V 7543 4000 50  0000 C CNN
F 1 "20K" V 7634 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7680 4000 50  0001 C CNN
F 3 "~" H 7750 4000 50  0001 C CNN
	1    7750 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5DD27246
P 7450 4350
AR Path="/5DB387EA/5DD27246" Ref="C7"  Part="1" 
AR Path="/5DB3893A/5DD27246" Ref="C33"  Part="1" 
F 0 "C33" H 7565 4396 50  0000 L CNN
F 1 "27p" H 7565 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7488 4200 50  0001 C CNN
F 3 "~" H 7450 4350 50  0001 C CNN
	1    7450 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5DD274DF
P 8100 4350
AR Path="/5DB387EA/5DD274DF" Ref="C9"  Part="1" 
AR Path="/5DB3893A/5DD274DF" Ref="C35"  Part="1" 
F 0 "C35" H 8215 4396 50  0000 L CNN
F 1 "47n" H 8215 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8138 4200 50  0001 C CNN
F 3 "~" H 8100 4350 50  0001 C CNN
	1    8100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4000 8100 4000
Wire Wire Line
	8100 4000 8100 4200
Wire Wire Line
	8100 4500 8100 4900
Wire Wire Line
	7450 4200 7450 4000
Connection ~ 7450 4000
Wire Wire Line
	7450 4000 7600 4000
Wire Wire Line
	7450 4500 7450 4900
Wire Wire Line
	4700 3700 4050 3700
Wire Wire Line
	4700 3800 4500 3800
Wire Wire Line
	4700 3900 4500 3900
Wire Wire Line
	4500 3900 4500 3800
Connection ~ 4500 3800
Wire Wire Line
	4700 4300 4500 4300
Wire Wire Line
	4500 4300 4500 4800
Connection ~ 4500 4800
NoConn ~ 4700 5000
NoConn ~ 6100 3900
NoConn ~ 4700 4000
Wire Wire Line
	4700 4100 3650 4100
$Comp
L Device:C C1
U 1 1 5DD2FBDE
P 3500 4100
AR Path="/5DB387EA/5DD2FBDE" Ref="C1"  Part="1" 
AR Path="/5DB3893A/5DD2FBDE" Ref="C27"  Part="1" 
F 0 "C27" V 3248 4100 50  0000 C CNN
F 1 "4n7" V 3339 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3538 3950 50  0001 C CNN
F 3 "~" H 3500 4100 50  0001 C CNN
	1    3500 4100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5DD30470
P 1400 4100
AR Path="/5DB387EA/5DD30470" Ref="J2"  Part="1" 
AR Path="/5DB3893A/5DD30470" Ref="J5"  Part="1" 
F 0 "J5" H 1328 4338 50  0000 C CNN
F 1 "Conn_Coaxial" H 1328 4247 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_901-144_Vertical" H 1400 4100 50  0001 C CNN
F 3 " ~" H 1400 4100 50  0001 C CNN
	1    1400 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 4100 2150 4100
Text Label 3100 4100 2    50   ~ 0
RF_IN
$Comp
L Device:L L1
U 1 1 5DD34813
P 9650 3800
AR Path="/5DB387EA/5DD34813" Ref="L1"  Part="1" 
AR Path="/5DB3893A/5DD34813" Ref="L2"  Part="1" 
F 0 "L2" V 9840 3800 50  0000 C CNN
F 1 "LQG15HS27NG07" V 9749 3800 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 9650 3800 50  0001 C CNN
F 3 "~" H 9650 3800 50  0001 C CNN
	1    9650 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 3800 8950 3800
Wire Wire Line
	8550 3800 8550 4200
$Comp
L Device:C C11
U 1 1 5DD358AD
P 8550 4350
AR Path="/5DB387EA/5DD358AD" Ref="C11"  Part="1" 
AR Path="/5DB3893A/5DD358AD" Ref="C37"  Part="1" 
F 0 "C37" H 8665 4396 50  0000 L CNN
F 1 "0.1" H 8665 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8588 4200 50  0001 C CNN
F 3 "~" H 8550 4350 50  0001 C CNN
	1    8550 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5DD4118C
P 8950 4350
AR Path="/5DB387EA/5DD4118C" Ref="C13"  Part="1" 
AR Path="/5DB3893A/5DD4118C" Ref="C39"  Part="1" 
F 0 "C39" H 9065 4396 50  0000 L CNN
F 1 "100p" H 9065 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8988 4200 50  0001 C CNN
F 3 "~" H 8950 4350 50  0001 C CNN
	1    8950 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3700 8750 3800
Wire Wire Line
	6100 3700 8750 3700
Connection ~ 8750 3800
Wire Wire Line
	8750 3800 8550 3800
Wire Wire Line
	8950 4200 8950 3800
Connection ~ 8950 3800
Wire Wire Line
	8950 3800 8750 3800
Wire Wire Line
	8550 4900 8550 4500
Wire Wire Line
	8950 4900 8950 4500
Wire Wire Line
	9800 3800 10300 3800
Text Label 10100 3800 2    50   ~ 0
RF_IN
$Comp
L Device:C C5
U 1 1 5DD4A30F
P 6750 2050
AR Path="/5DB387EA/5DD4A30F" Ref="C5"  Part="1" 
AR Path="/5DB3893A/5DD4A30F" Ref="C31"  Part="1" 
F 0 "C31" H 6865 2096 50  0000 L CNN
F 1 "0.1" H 6865 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6788 1900 50  0001 C CNN
F 3 "~" H 6750 2050 50  0001 C CNN
	1    6750 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5DD4A8F6
P 6400 2050
AR Path="/5DB387EA/5DD4A8F6" Ref="C4"  Part="1" 
AR Path="/5DB3893A/5DD4A8F6" Ref="C30"  Part="1" 
F 0 "C30" H 6515 2096 50  0000 L CNN
F 1 "0.1" H 6515 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6438 1900 50  0001 C CNN
F 3 "~" H 6400 2050 50  0001 C CNN
	1    6400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2700 6750 2250
Wire Wire Line
	6750 1900 6750 1750
Wire Wire Line
	6400 1900 6400 1850
Wire Wire Line
	6400 1750 6750 1750
Connection ~ 6750 1750
Wire Wire Line
	6750 1750 6750 1650
Wire Wire Line
	6750 1900 6600 1900
Connection ~ 6750 1900
Wire Wire Line
	6400 1850 6250 1850
Connection ~ 6400 1850
Wire Wire Line
	6400 1850 6400 1750
Wire Wire Line
	6400 2200 6400 2250
Wire Wire Line
	6400 2250 6750 2250
Connection ~ 6750 2250
Wire Wire Line
	6750 2250 6750 2200
Wire Wire Line
	6600 3500 6100 3500
Wire Wire Line
	6600 1900 6600 3500
Wire Wire Line
	6250 3200 6100 3200
Wire Wire Line
	6250 1850 6250 3200
$Comp
L Device:Ferrite_Bead FB1
U 1 1 5DD6469E
P 7050 1650
AR Path="/5DB387EA/5DD6469E" Ref="FB1"  Part="1" 
AR Path="/5DB3893A/5DD6469E" Ref="FB4"  Part="1" 
F 0 "FB4" V 6776 1650 50  0000 C CNN
F 1 "Ferrite_Bead" V 6867 1650 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" V 6980 1650 50  0001 C CNN
F 3 "~" H 7050 1650 50  0001 C CNN
	1    7050 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 1650 6750 1650
Connection ~ 6750 1650
Wire Wire Line
	6750 1650 6750 1500
$Comp
L Device:C C6
U 1 1 5DD660A3
P 7450 2050
AR Path="/5DB387EA/5DD660A3" Ref="C6"  Part="1" 
AR Path="/5DB3893A/5DD660A3" Ref="C32"  Part="1" 
F 0 "C32" H 7565 2096 50  0000 L CNN
F 1 "100p" H 7565 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7488 1900 50  0001 C CNN
F 3 "~" H 7450 2050 50  0001 C CNN
	1    7450 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5DD661A5
P 7800 2050
AR Path="/5DB387EA/5DD661A5" Ref="C8"  Part="1" 
AR Path="/5DB3893A/5DD661A5" Ref="C34"  Part="1" 
F 0 "C34" H 7915 2096 50  0000 L CNN
F 1 "0.1" H 7915 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7838 1900 50  0001 C CNN
F 3 "~" H 7800 2050 50  0001 C CNN
	1    7800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1650 7800 1650
Wire Wire Line
	7800 1650 7800 1750
Wire Wire Line
	7450 1900 7450 1750
Wire Wire Line
	7450 1750 7800 1750
Connection ~ 7800 1750
Wire Wire Line
	7800 1750 7800 1900
Wire Wire Line
	7450 1750 7300 1750
Wire Wire Line
	7300 1750 7300 3300
Connection ~ 7450 1750
Wire Wire Line
	7800 2700 7800 2350
Wire Wire Line
	7450 2200 7450 2350
Wire Wire Line
	7450 2350 7800 2350
Connection ~ 7800 2350
Wire Wire Line
	7800 2350 7800 2200
Wire Wire Line
	6750 1500 7950 1500
Connection ~ 6750 1500
Wire Wire Line
	6750 1500 6750 1350
$Comp
L Device:Ferrite_Bead FB2
U 1 1 5DD716C4
P 8100 1500
AR Path="/5DB387EA/5DD716C4" Ref="FB2"  Part="1" 
AR Path="/5DB3893A/5DD716C4" Ref="FB5"  Part="1" 
F 0 "FB5" V 7826 1500 50  0000 C CNN
F 1 "Ferrite_Bead" V 7917 1500 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" V 8030 1500 50  0001 C CNN
F 3 "~" H 8100 1500 50  0001 C CNN
	1    8100 1500
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 5DD74441
P 8400 2050
AR Path="/5DB387EA/5DD74441" Ref="C10"  Part="1" 
AR Path="/5DB3893A/5DD74441" Ref="C36"  Part="1" 
F 0 "C36" H 8515 2096 50  0000 L CNN
F 1 "0.1" H 8515 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8438 1900 50  0001 C CNN
F 3 "~" H 8400 2050 50  0001 C CNN
	1    8400 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5DD7462A
P 8750 2050
AR Path="/5DB387EA/5DD7462A" Ref="C12"  Part="1" 
AR Path="/5DB3893A/5DD7462A" Ref="C38"  Part="1" 
F 0 "C38" H 8865 2096 50  0000 L CNN
F 1 "0.1" H 8865 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8788 1900 50  0001 C CNN
F 3 "~" H 8750 2050 50  0001 C CNN
	1    8750 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5DD74A72
P 9250 2050
AR Path="/5DB387EA/5DD74A72" Ref="C14"  Part="1" 
AR Path="/5DB3893A/5DD74A72" Ref="C40"  Part="1" 
F 0 "C40" H 9365 2096 50  0000 L CNN
F 1 "0.1" H 9365 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9288 1900 50  0001 C CNN
F 3 "~" H 9250 2050 50  0001 C CNN
	1    9250 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5DD74EF1
P 9600 2050
AR Path="/5DB387EA/5DD74EF1" Ref="C15"  Part="1" 
AR Path="/5DB3893A/5DD74EF1" Ref="C41"  Part="1" 
F 0 "C41" H 9715 2096 50  0000 L CNN
F 1 "100p" H 9715 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9638 1900 50  0001 C CNN
F 3 "~" H 9600 2050 50  0001 C CNN
	1    9600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1500 9050 1500
Wire Wire Line
	9050 1500 9050 1700
Wire Wire Line
	9050 1700 8750 1700
Wire Wire Line
	8400 1700 8400 1800
Wire Wire Line
	8750 1900 8750 1800
Connection ~ 8750 1700
Wire Wire Line
	8750 1700 8400 1700
Connection ~ 9050 1700
Wire Wire Line
	9250 1900 9250 1800
Wire Wire Line
	9250 1800 9450 1800
Wire Wire Line
	9600 1800 9600 1900
Wire Wire Line
	9250 1800 9100 1800
Wire Wire Line
	9100 1800 9100 3000
Wire Wire Line
	9100 3000 6100 3000
Connection ~ 9250 1800
Wire Wire Line
	9450 1700 9450 1800
Wire Wire Line
	9050 1700 9450 1700
Connection ~ 9450 1800
Wire Wire Line
	9450 1800 9600 1800
Wire Wire Line
	9600 2700 9600 2350
Wire Wire Line
	9250 2200 9250 2350
Wire Wire Line
	9250 2350 9600 2350
Connection ~ 9600 2350
Wire Wire Line
	9600 2350 9600 2200
Wire Wire Line
	8750 2200 8750 2700
Wire Wire Line
	8400 2200 8400 2700
Wire Wire Line
	6100 3100 8250 3100
Wire Wire Line
	8250 3100 8250 1800
Wire Wire Line
	8250 1800 8400 1800
Connection ~ 8400 1800
Wire Wire Line
	8400 1800 8400 1900
Wire Wire Line
	8600 3400 8600 1800
Wire Wire Line
	8600 1800 8750 1800
Connection ~ 8750 1800
Wire Wire Line
	8750 1800 8750 1700
Wire Wire Line
	10300 3800 10300 6000
Wire Wire Line
	10300 6000 2150 6000
Wire Wire Line
	2150 6000 2150 4100
Connection ~ 2150 4100
Wire Wire Line
	2150 4100 1600 4100
$Comp
L Device:RF_Shield_One_Piece J3
U 1 1 5DDC1005
P 1850 1500
AR Path="/5DB387EA/5DDC1005" Ref="J3"  Part="1" 
AR Path="/5DB3893A/5DDC1005" Ref="J6"  Part="1" 
F 0 "J6" H 2480 1489 50  0000 L CNN
F 1 "RF_Shield_One_Piece" H 2480 1398 50  0000 L CNN
F 2 "RF_Shielding:Laird_Technologies_BMI-S-102_16.50x16.50mm" H 1850 1400 50  0001 C CNN
F 3 "~" H 1850 1400 50  0001 C CNN
	1    1850 1500
	1    0    0    -1  
$EndComp
Text HLabel 4050 3700 0    39   Input ~ 0
~CS
Text HLabel 4050 4400 0    39   Input ~ 0
SCLK
Text HLabel 4050 4500 0    39   Input ~ 0
SDATA
Text HLabel 6950 3800 2    39   Input ~ 0
ANTFLG
Text HLabel 6950 4100 2    39   Input ~ 0
I0
Text HLabel 6950 4200 2    39   Input ~ 0
I1
Text HLabel 6950 4300 2    39   Input ~ 0
LD
Text HLabel 6950 4500 2    39   Input ~ 0
Q0
Text HLabel 6950 4600 2    39   Input ~ 0
Q1
Text HLabel 3000 4600 0    39   Input ~ 0
CLKIN
Wire Wire Line
	1400 4300 1400 6300
Wire Wire Line
	6100 3300 7300 3300
Wire Wire Line
	6100 3400 8600 3400
Connection ~ 7800 2700
Wire Wire Line
	7800 2700 8400 2700
Connection ~ 8400 2700
Wire Wire Line
	6750 2700 7800 2700
Wire Wire Line
	8400 2700 8750 2700
Wire Wire Line
	8750 2700 9350 2700
Connection ~ 8750 2700
Wire Wire Line
	7450 4900 8100 4900
Connection ~ 8100 4900
Wire Wire Line
	8550 4900 8950 4900
Connection ~ 8550 4900
Wire Wire Line
	6750 1350 4500 1350
Wire Wire Line
	4500 1350 4500 3800
Wire Wire Line
	8100 4900 8350 4900
Connection ~ 9350 2700
Wire Wire Line
	9350 2700 9600 2700
Connection ~ 8350 4900
Wire Wire Line
	8350 4900 8550 4900
Wire Wire Line
	6750 1100 6750 1350
Connection ~ 6750 1350
Wire Wire Line
	9350 6300 8350 6300
Wire Wire Line
	9350 2700 9350 6300
Wire Wire Line
	4500 6300 4150 6300
Connection ~ 4500 6300
Wire Wire Line
	4150 6300 1850 6300
Connection ~ 4150 6300
Wire Wire Line
	1400 6300 1100 6300
Connection ~ 1400 6300
Text HLabel 1100 6300 0    39   Input ~ 0
Ground
Wire Wire Line
	1850 1900 1850 6300
Connection ~ 1850 6300
Wire Wire Line
	1850 6300 1400 6300
Text HLabel 6750 1100 1    39   Input ~ 0
2V8
Wire Wire Line
	8350 4900 8350 6300
Connection ~ 8350 6300
Wire Wire Line
	8350 6300 4500 6300
$EndSCHEMATC
