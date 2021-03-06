EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L Connector_Generic:Conn_02x26_Odd_Even J1
U 1 1 5E44A2CC
P 5600 3100
F 0 "J1" H 5650 4517 50  0000 C CNN
F 1 "Conn_02x26_Odd_Even" H 5650 4426 50  0000 C CNN
F 2 "Connector_Samtec:Samtec_LSHM-150-xx.x-x-DV-S_2x50-1SH_P0.50mm_Vertical" H 5600 3100 50  0001 C CNN
F 3 "~" H 5600 3100 50  0001 C CNN
	1    5600 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x26_Odd_Even J2
U 1 1 5E44B9E3
P 7150 3100
F 0 "J2" H 7200 4517 50  0000 C CNN
F 1 "Conn_02x26_Odd_Even" H 7200 4426 50  0000 C CNN
F 2 "Connector_Samtec:Samtec_LSHM-150-xx.x-x-DV-S_2x50-1SH_P0.50mm_Vertical" H 7150 3100 50  0001 C CNN
F 3 "~" H 7150 3100 50  0001 C CNN
	1    7150 3100
	1    0    0    -1  
$EndComp
$Sheet
S 1500 1750 2150 1850
U 5E5993C8
F0 "Sheet5E5993C7" 50
F1 "connector.sch" 50
F2 "B[1..8]" I R 3650 2600 50 
$EndSheet
Wire Bus Line
	3650 2600 4200 2600
Entry Wire Line
	4200 3800 4300 3700
Entry Wire Line
	4200 3800 4300 3700
Entry Wire Line
	4200 3700 4300 3600
Entry Wire Line
	4200 3600 4300 3500
Entry Wire Line
	4200 3500 4300 3400
Entry Wire Line
	4200 3400 4300 3300
Entry Wire Line
	4200 3300 4300 3200
Entry Wire Line
	4200 3300 4300 3200
Entry Wire Line
	4200 3200 4300 3100
Entry Wire Line
	4200 3100 4300 3000
Wire Wire Line
	4300 3000 5400 3000
Wire Wire Line
	5400 3100 4300 3100
Wire Wire Line
	4300 3200 5400 3200
Wire Wire Line
	5400 3300 4300 3300
Wire Wire Line
	4300 3400 5400 3400
Wire Wire Line
	5400 3500 4300 3500
Wire Wire Line
	4300 3600 5400 3600
Wire Wire Line
	5400 3700 4300 3700
Wire Bus Line
	4200 2600 4200 3800
Text Label 3950 2600 0    50   ~ 0
B[0..7]
Text Label 4700 3000 0    50   ~ 0
B0
$EndSCHEMATC
