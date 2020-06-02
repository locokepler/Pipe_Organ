EESchema Schematic File Version 4
LIBS:Organ Serial to Parallel-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L 74xx:74HC595 U3
U 1 1 5D0DAE98
P 2100 5200
F 0 "U3" H 2100 5981 50  0000 C CNN
F 1 "74HC595" H 2100 5890 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2100 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2100 5200 50  0001 C CNN
	1    2100 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2700 1700 2700
Wire Wire Line
	2500 4400 1700 4400
Wire Wire Line
	1700 4400 1700 4800
Wire Wire Line
	1700 5000 1650 5000
Wire Wire Line
	1650 5000 1650 5300
Wire Wire Line
	1650 5300 1700 5300
Wire Wire Line
	1700 5400 1700 5900
Wire Wire Line
	1700 5900 2100 5900
Wire Wire Line
	1700 4350 1700 3850
Wire Wire Line
	1700 2650 1700 2150
Wire Wire Line
	1700 1750 1650 1750
Wire Wire Line
	1650 1750 1650 2050
Wire Wire Line
	1650 2050 1700 2050
Wire Wire Line
	1700 3450 1650 3450
Wire Wire Line
	1650 3450 1650 3750
Wire Wire Line
	1650 3750 1700 3750
Wire Wire Line
	1700 2700 1700 3250
Wire Wire Line
	2100 4350 1700 4350
$Comp
L 74xx:74HC595 U2
U 1 1 5D0D8A26
P 2100 3650
F 0 "U2" H 2100 4431 50  0000 C CNN
F 1 "74HC595" H 2100 4340 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2100 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2100 3650 50  0001 C CNN
	1    2100 3650
	1    0    0    -1  
$EndComp
Connection ~ 1650 1750
Wire Wire Line
	1650 1000 1650 1750
Wire Wire Line
	1650 2050 1650 3450
Connection ~ 1650 2050
Connection ~ 1650 3450
Wire Wire Line
	1650 3750 1650 5000
Connection ~ 1650 3750
Connection ~ 1650 5000
Wire Wire Line
	1700 5100 1600 5100
Wire Wire Line
	1600 5100 1600 3550
Wire Wire Line
	1600 3550 1700 3550
Wire Wire Line
	1600 3550 1600 1850
Wire Wire Line
	1600 1850 1700 1850
Connection ~ 1600 3550
Wire Wire Line
	1600 1850 1600 1000
Connection ~ 1600 1850
Wire Wire Line
	2100 2650 1700 2650
$Comp
L 74xx:74HC595 U1
U 1 1 5D0D56A3
P 2100 1950
F 0 "U1" H 2100 2731 50  0000 C CNN
F 1 "74HC595" H 2100 2640 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2100 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2100 1950 50  0001 C CNN
	1    2100 1950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q1
U 1 1 5D38D2C7
P 2550 1350
F 0 "Q1" V 2893 1350 50  0000 C CNN
F 1 "IRLZ44N" V 2802 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2800 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 2550 1350 50  0001 L CNN
	1    2550 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q2
U 1 1 5D39176D
P 3000 1350
F 0 "Q2" V 3343 1350 50  0000 C CNN
F 1 "IRLZ44N" V 3252 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3250 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 3000 1350 50  0001 L CNN
	1    3000 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q4
U 1 1 5D392A66
P 3450 1350
F 0 "Q4" V 3793 1350 50  0000 C CNN
F 1 "IRLZ44N" V 3702 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3700 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 3450 1350 50  0001 L CNN
	1    3450 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q6
U 1 1 5D393996
P 3900 1350
F 0 "Q6" V 4243 1350 50  0000 C CNN
F 1 "IRLZ44N" V 4152 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4150 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 3900 1350 50  0001 L CNN
	1    3900 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q8
U 1 1 5D394EC9
P 4350 1350
F 0 "Q8" V 4693 1350 50  0000 C CNN
F 1 "IRLZ44N" V 4602 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4600 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 4350 1350 50  0001 L CNN
	1    4350 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q10
U 1 1 5D395DBE
P 4800 1350
F 0 "Q10" V 5143 1350 50  0000 C CNN
F 1 "IRLZ44N" V 5052 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5050 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 4800 1350 50  0001 L CNN
	1    4800 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q12
U 1 1 5D39741F
P 5250 1350
F 0 "Q12" V 5593 1350 50  0000 C CNN
F 1 "IRLZ44N" V 5502 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5500 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 5250 1350 50  0001 L CNN
	1    5250 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q14
U 1 1 5D397F92
P 5700 1350
F 0 "Q14" V 6043 1350 50  0000 C CNN
F 1 "IRLZ44N" V 5952 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5950 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 5700 1350 50  0001 L CNN
	1    5700 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q16
U 1 1 5D398ED6
P 6150 1350
F 0 "Q16" V 6493 1350 50  0000 C CNN
F 1 "IRLZ44N" V 6402 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6400 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 6150 1350 50  0001 L CNN
	1    6150 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 1550 2550 1550
Wire Wire Line
	2500 1650 3000 1650
Wire Wire Line
	3000 1650 3000 1550
Wire Wire Line
	2500 1750 3450 1750
Wire Wire Line
	3450 1750 3450 1550
Wire Wire Line
	2500 1850 3900 1850
Wire Wire Line
	3900 1850 3900 1750
Wire Wire Line
	2500 1950 4350 1950
Wire Wire Line
	4350 1950 4350 1750
Wire Wire Line
	2500 2050 4800 2050
Wire Wire Line
	4800 2050 4800 1750
Wire Wire Line
	2500 2150 5250 2150
Wire Wire Line
	5250 2150 5250 1750
Wire Wire Line
	2500 2250 5700 2250
Wire Wire Line
	5700 2250 5700 1750
Wire Wire Line
	6150 3250 6150 1750
$Comp
L Transistor_FET:IRLZ44N Q18
U 1 1 5D3A4995
P 6600 1350
F 0 "Q18" V 6943 1350 50  0000 C CNN
F 1 "IRLZ44N" V 6852 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6850 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 6600 1350 50  0001 L CNN
	1    6600 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q19
U 1 1 5D3A76AA
P 7050 1350
F 0 "Q19" V 7393 1350 50  0000 C CNN
F 1 "IRLZ44N" V 7302 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7300 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 7050 1350 50  0001 L CNN
	1    7050 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q20
U 1 1 5D3A8803
P 7500 1350
F 0 "Q20" V 7843 1350 50  0000 C CNN
F 1 "IRLZ44N" V 7752 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7750 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 7500 1350 50  0001 L CNN
	1    7500 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q21
U 1 1 5D3A8EB8
P 7950 1350
F 0 "Q21" V 8293 1350 50  0000 C CNN
F 1 "IRLZ44N" V 8202 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8200 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 7950 1350 50  0001 L CNN
	1    7950 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q22
U 1 1 5D3A90A6
P 8400 1350
F 0 "Q22" V 8743 1350 50  0000 C CNN
F 1 "IRLZ44N" V 8652 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8650 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 8400 1350 50  0001 L CNN
	1    8400 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q23
U 1 1 5D3A9180
P 8850 1350
F 0 "Q23" V 9193 1350 50  0000 C CNN
F 1 "IRLZ44N" V 9102 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9100 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 8850 1350 50  0001 L CNN
	1    8850 1350
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q24
U 1 1 5D3A92E4
P 9300 1350
F 0 "Q24" V 9643 1350 50  0000 C CNN
F 1 "IRLZ44N" V 9552 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9550 1275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 9300 1350 50  0001 L CNN
	1    9300 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 3350 6600 1750
Wire Wire Line
	7050 3450 7050 1750
Wire Wire Line
	7500 3550 7500 1750
Wire Wire Line
	7950 3650 7950 1750
Wire Wire Line
	8400 3750 8400 1750
Wire Wire Line
	8850 3850 8850 1750
Wire Wire Line
	9300 3950 9300 1750
Wire Wire Line
	2750 1550 2750 1250
Connection ~ 2750 1250
Wire Wire Line
	2750 1250 2750 800 
Connection ~ 9500 1250
Wire Wire Line
	9500 1250 9500 800 
Connection ~ 9050 1250
Wire Wire Line
	9050 1250 9050 800 
Connection ~ 3200 1250
Wire Wire Line
	3200 1250 3200 800 
Connection ~ 3650 1250
Wire Wire Line
	3650 1250 3650 800 
Connection ~ 4100 1250
Wire Wire Line
	4100 1250 4100 800 
Connection ~ 4550 1250
Wire Wire Line
	4550 1250 4550 800 
Connection ~ 5000 1250
Wire Wire Line
	5000 1250 5000 800 
Connection ~ 5450 1250
Wire Wire Line
	5450 1250 5450 800 
Connection ~ 5900 1250
Wire Wire Line
	5900 1250 5900 800 
Connection ~ 6350 1250
Wire Wire Line
	6350 1250 6350 800 
Connection ~ 6800 1250
Wire Wire Line
	6800 1250 6800 800 
Connection ~ 7250 1250
Wire Wire Line
	7250 1250 7250 800 
Connection ~ 7700 1250
Wire Wire Line
	7700 1250 7700 800 
Connection ~ 8150 1250
Wire Wire Line
	8150 1250 8150 800 
Connection ~ 8600 1250
Wire Wire Line
	8600 1250 8600 800 
$Comp
L Device:R_Small_US R1
U 1 1 5D401B57
P 2650 1550
F 0 "R1" V 2445 1550 50  0000 C CNN
F 1 "10k" V 2536 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 2650 1550 50  0001 C CNN
F 3 "~" H 2650 1550 50  0001 C CNN
	1    2650 1550
	0    1    1    0   
$EndComp
Connection ~ 2550 1550
$Comp
L Device:R_Small_US R2
U 1 1 5D401DF7
P 3100 1650
F 0 "R2" V 2895 1650 50  0000 C CNN
F 1 "10k" V 2986 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 3100 1650 50  0001 C CNN
F 3 "~" H 3100 1650 50  0001 C CNN
	1    3100 1650
	0    1    1    0   
$EndComp
Connection ~ 3000 1650
$Comp
L Device:R_Small_US R4
U 1 1 5D401F7C
P 3550 1750
F 0 "R4" V 3345 1750 50  0000 C CNN
F 1 "10k" V 3436 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 3550 1750 50  0001 C CNN
F 3 "~" H 3550 1750 50  0001 C CNN
	1    3550 1750
	0    1    1    0   
$EndComp
Connection ~ 3450 1750
$Comp
L Device:R_Small_US R6
U 1 1 5D4020EF
P 4000 1750
F 0 "R6" V 3795 1750 50  0000 C CNN
F 1 "10k" V 3886 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 4000 1750 50  0001 C CNN
F 3 "~" H 4000 1750 50  0001 C CNN
	1    4000 1750
	0    1    1    0   
$EndComp
Connection ~ 3900 1750
Wire Wire Line
	3900 1750 3900 1550
$Comp
L Device:R_Small_US R8
U 1 1 5D4021B9
P 4450 1750
F 0 "R8" V 4245 1750 50  0000 C CNN
F 1 "10k" V 4336 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 4450 1750 50  0001 C CNN
F 3 "~" H 4450 1750 50  0001 C CNN
	1    4450 1750
	0    1    1    0   
$EndComp
Connection ~ 4350 1750
Wire Wire Line
	4350 1750 4350 1550
$Comp
L Device:R_Small_US R10
U 1 1 5D40232E
P 4900 1750
F 0 "R10" V 4695 1750 50  0000 C CNN
F 1 "10k" V 4786 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 4900 1750 50  0001 C CNN
F 3 "~" H 4900 1750 50  0001 C CNN
	1    4900 1750
	0    1    1    0   
$EndComp
Connection ~ 4800 1750
Wire Wire Line
	4800 1750 4800 1550
$Comp
L Device:R_Small_US R12
U 1 1 5D4027A7
P 5350 1750
F 0 "R12" V 5145 1750 50  0000 C CNN
F 1 "10k" V 5236 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 5350 1750 50  0001 C CNN
F 3 "~" H 5350 1750 50  0001 C CNN
	1    5350 1750
	0    1    1    0   
$EndComp
Connection ~ 5250 1750
Wire Wire Line
	5250 1750 5250 1550
$Comp
L Device:R_Small_US R14
U 1 1 5D402827
P 5800 1750
F 0 "R14" V 5595 1750 50  0000 C CNN
F 1 "10k" V 5686 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 5800 1750 50  0001 C CNN
F 3 "~" H 5800 1750 50  0001 C CNN
	1    5800 1750
	0    1    1    0   
$EndComp
Connection ~ 5700 1750
Wire Wire Line
	5700 1750 5700 1550
$Comp
L Device:R_Small_US R16
U 1 1 5D403227
P 6250 1750
F 0 "R16" V 6045 1750 50  0000 C CNN
F 1 "10k" V 6136 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 6250 1750 50  0001 C CNN
F 3 "~" H 6250 1750 50  0001 C CNN
	1    6250 1750
	0    1    1    0   
$EndComp
Connection ~ 6150 1750
Wire Wire Line
	6150 1750 6150 1550
$Comp
L Device:R_Small_US R18
U 1 1 5D40342D
P 6700 1750
F 0 "R18" V 6495 1750 50  0000 C CNN
F 1 "10k" V 6586 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 6700 1750 50  0001 C CNN
F 3 "~" H 6700 1750 50  0001 C CNN
	1    6700 1750
	0    1    1    0   
$EndComp
Connection ~ 6600 1750
Wire Wire Line
	6600 1750 6600 1550
$Comp
L Device:R_Small_US R19
U 1 1 5D403496
P 7150 1750
F 0 "R19" V 6945 1750 50  0000 C CNN
F 1 "10k" V 7036 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 7150 1750 50  0001 C CNN
F 3 "~" H 7150 1750 50  0001 C CNN
	1    7150 1750
	0    1    1    0   
$EndComp
Connection ~ 7050 1750
Wire Wire Line
	7050 1750 7050 1550
$Comp
L Device:R_Small_US R20
U 1 1 5D403639
P 7600 1750
F 0 "R20" V 7395 1750 50  0000 C CNN
F 1 "10k" V 7486 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 7600 1750 50  0001 C CNN
F 3 "~" H 7600 1750 50  0001 C CNN
	1    7600 1750
	0    1    1    0   
$EndComp
Connection ~ 7500 1750
Wire Wire Line
	7500 1750 7500 1550
$Comp
L Device:R_Small_US R21
U 1 1 5D4037AE
P 8050 1750
F 0 "R21" V 7845 1750 50  0000 C CNN
F 1 "10k" V 7936 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 8050 1750 50  0001 C CNN
F 3 "~" H 8050 1750 50  0001 C CNN
	1    8050 1750
	0    1    1    0   
$EndComp
Connection ~ 7950 1750
Wire Wire Line
	7950 1750 7950 1550
$Comp
L Device:R_Small_US R22
U 1 1 5D40391E
P 8500 1750
F 0 "R22" V 8295 1750 50  0000 C CNN
F 1 "10k" V 8386 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 8500 1750 50  0001 C CNN
F 3 "~" H 8500 1750 50  0001 C CNN
	1    8500 1750
	0    1    1    0   
$EndComp
Connection ~ 8400 1750
Wire Wire Line
	8400 1750 8400 1550
$Comp
L Device:R_Small_US R23
U 1 1 5D403A49
P 8950 1750
F 0 "R23" V 8745 1750 50  0000 C CNN
F 1 "10k" V 8836 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 8950 1750 50  0001 C CNN
F 3 "~" H 8950 1750 50  0001 C CNN
	1    8950 1750
	0    1    1    0   
$EndComp
Connection ~ 8850 1750
Wire Wire Line
	8850 1750 8850 1550
$Comp
L Device:R_Small_US R24
U 1 1 5D403BD5
P 9400 1750
F 0 "R24" V 9195 1750 50  0000 C CNN
F 1 "10k" V 9286 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 9400 1750 50  0001 C CNN
F 3 "~" H 9400 1750 50  0001 C CNN
	1    9400 1750
	0    1    1    0   
$EndComp
Connection ~ 9300 1750
Wire Wire Line
	9300 1750 9300 1550
Wire Wire Line
	9500 1250 9500 1750
Wire Wire Line
	9050 1250 9050 1750
Wire Wire Line
	8600 1250 8600 1750
Wire Wire Line
	8150 1250 8150 1750
Wire Wire Line
	7700 1250 7700 1750
Wire Wire Line
	7250 1250 7250 1750
Wire Wire Line
	6800 1250 6800 1750
Wire Wire Line
	6350 1250 6350 1750
Wire Wire Line
	5900 1250 5900 1750
Wire Wire Line
	5450 1250 5450 1750
Wire Wire Line
	5000 1250 5000 1750
Wire Wire Line
	4550 1250 4550 1750
Wire Wire Line
	4100 1250 4100 1750
Wire Wire Line
	3650 1250 3650 1750
Wire Wire Line
	3200 1250 3200 1650
Wire Wire Line
	2100 2650 2500 2650
Connection ~ 2100 2650
Wire Wire Line
	2500 2650 3200 2650
Wire Wire Line
	2500 2450 2500 2700
Wire Wire Line
	3200 5900 2100 5900
Connection ~ 2100 5900
$Comp
L Transistor_FET:IRLZ44N Q3
U 1 1 5D4817CF
P 3400 5700
F 0 "Q3" V 3651 5700 50  0000 C CNN
F 1 "IRLZ44N" V 3742 5700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3650 5625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 3400 5700 50  0001 L CNN
	1    3400 5700
	0    1    1    0   
$EndComp
Connection ~ 3200 5800
Wire Wire Line
	3200 5800 3200 5900
$Comp
L Transistor_FET:IRLZ44N Q5
U 1 1 5D484E82
P 3850 5700
F 0 "Q5" V 4101 5700 50  0000 C CNN
F 1 "IRLZ44N" V 4192 5700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4100 5625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 3850 5700 50  0001 L CNN
	1    3850 5700
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q7
U 1 1 5D485979
P 4300 5700
F 0 "Q7" V 4551 5700 50  0000 C CNN
F 1 "IRLZ44N" V 4642 5700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4550 5625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 4300 5700 50  0001 L CNN
	1    4300 5700
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q9
U 1 1 5D486050
P 4750 5700
F 0 "Q9" V 5001 5700 50  0000 C CNN
F 1 "IRLZ44N" V 5092 5700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5000 5625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 4750 5700 50  0001 L CNN
	1    4750 5700
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q11
U 1 1 5D48639C
P 5200 5700
F 0 "Q11" V 5451 5700 50  0000 C CNN
F 1 "IRLZ44N" V 5542 5700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5450 5625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 5200 5700 50  0001 L CNN
	1    5200 5700
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q13
U 1 1 5D486A73
P 5650 5700
F 0 "Q13" V 5901 5700 50  0000 C CNN
F 1 "IRLZ44N" V 5992 5700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5900 5625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 5650 5700 50  0001 L CNN
	1    5650 5700
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q15
U 1 1 5D4871D4
P 6100 5700
F 0 "Q15" V 6351 5700 50  0000 C CNN
F 1 "IRLZ44N" V 6442 5700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6350 5625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 6100 5700 50  0001 L CNN
	1    6100 5700
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q17
U 1 1 5D4877D7
P 6550 5700
F 0 "Q17" V 6801 5700 50  0000 C CNN
F 1 "IRLZ44N" V 6892 5700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6800 5625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 6550 5700 50  0001 L CNN
	1    6550 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 5800 3650 5500
Wire Wire Line
	4100 5800 4100 5500
Wire Wire Line
	4550 5800 4550 5500
Wire Wire Line
	5000 5800 5000 5500
Wire Wire Line
	5450 5800 5450 5500
Wire Wire Line
	5900 5800 5900 5500
Wire Wire Line
	6350 5800 6350 5500
Wire Wire Line
	2500 5500 3400 5500
Wire Wire Line
	3850 5400 3850 5500
Wire Wire Line
	4300 5300 4300 5500
Wire Wire Line
	4750 5200 4750 5500
Wire Wire Line
	5200 5100 5200 5500
Wire Wire Line
	5650 5000 5650 5500
Wire Wire Line
	6100 4900 6100 5500
Wire Wire Line
	6550 4800 6550 5500
$Comp
L Device:R_Small_US R5
U 1 1 5D678C42
P 3750 5500
F 0 "R5" V 3545 5500 50  0000 C CNN
F 1 "10k" V 3636 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 3750 5500 50  0001 C CNN
F 3 "~" H 3750 5500 50  0001 C CNN
	1    3750 5500
	0    1    1    0   
$EndComp
Connection ~ 3850 5500
$Comp
L Device:R_Small_US R7
U 1 1 5D6796A8
P 4200 5500
F 0 "R7" V 3995 5500 50  0000 C CNN
F 1 "10k" V 4086 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 4200 5500 50  0001 C CNN
F 3 "~" H 4200 5500 50  0001 C CNN
	1    4200 5500
	0    1    1    0   
$EndComp
Connection ~ 4300 5500
$Comp
L Device:R_Small_US R9
U 1 1 5D6796FA
P 4650 5500
F 0 "R9" V 4445 5500 50  0000 C CNN
F 1 "10k" V 4536 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 4650 5500 50  0001 C CNN
F 3 "~" H 4650 5500 50  0001 C CNN
	1    4650 5500
	0    1    1    0   
$EndComp
Connection ~ 4750 5500
$Comp
L Device:R_Small_US R11
U 1 1 5D6797DB
P 5100 5500
F 0 "R11" V 4895 5500 50  0000 C CNN
F 1 "10k" V 4986 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 5100 5500 50  0001 C CNN
F 3 "~" H 5100 5500 50  0001 C CNN
	1    5100 5500
	0    1    1    0   
$EndComp
Connection ~ 5200 5500
$Comp
L Device:R_Small_US R13
U 1 1 5D6798CE
P 5550 5500
F 0 "R13" V 5345 5500 50  0000 C CNN
F 1 "10k" V 5436 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 5550 5500 50  0001 C CNN
F 3 "~" H 5550 5500 50  0001 C CNN
	1    5550 5500
	0    1    1    0   
$EndComp
Connection ~ 5650 5500
$Comp
L Device:R_Small_US R15
U 1 1 5D6799C1
P 6000 5500
F 0 "R15" V 5795 5500 50  0000 C CNN
F 1 "10k" V 5886 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 6000 5500 50  0001 C CNN
F 3 "~" H 6000 5500 50  0001 C CNN
	1    6000 5500
	0    1    1    0   
$EndComp
Connection ~ 6100 5500
$Comp
L Device:R_Small_US R17
U 1 1 5D679AD5
P 6450 5500
F 0 "R17" V 6245 5500 50  0000 C CNN
F 1 "10k" V 6336 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 6450 5500 50  0001 C CNN
F 3 "~" H 6450 5500 50  0001 C CNN
	1    6450 5500
	0    1    1    0   
$EndComp
Connection ~ 6550 5500
$Comp
L Device:R_Small_US R3
U 1 1 5D67A7B0
P 3300 5450
F 0 "R3" V 3095 5450 50  0000 C CNN
F 1 "10k" V 3186 5450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 3300 5450 50  0001 C CNN
F 3 "~" H 3300 5450 50  0001 C CNN
	1    3300 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 5450 3200 5800
Wire Wire Line
	3400 5450 3400 5500
Connection ~ 3400 5500
$Comp
L pspice:DIODE D17
U 1 1 5D684D48
P 6550 6350
F 0 "D17" H 6550 6615 50  0000 C CNN
F 1 "DIODE" H 6550 6524 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 6550 6350 50  0001 C CNN
F 3 "~" H 6550 6350 50  0001 C CNN
	1    6550 6350
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D15
U 1 1 5D685D0B
P 6100 6350
F 0 "D15" H 6100 6615 50  0000 C CNN
F 1 "DIODE" H 6100 6524 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 6100 6350 50  0001 C CNN
F 3 "~" H 6100 6350 50  0001 C CNN
	1    6100 6350
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D13
U 1 1 5D685F12
P 5650 6350
F 0 "D13" H 5650 6615 50  0000 C CNN
F 1 "DIODE" H 5650 6524 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 5650 6350 50  0001 C CNN
F 3 "~" H 5650 6350 50  0001 C CNN
	1    5650 6350
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D11
U 1 1 5D6861BC
P 5200 6350
F 0 "D11" H 5200 6615 50  0000 C CNN
F 1 "DIODE" H 5200 6524 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 5200 6350 50  0001 C CNN
F 3 "~" H 5200 6350 50  0001 C CNN
	1    5200 6350
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D9
U 1 1 5D68664A
P 4750 6350
F 0 "D9" H 4750 6615 50  0000 C CNN
F 1 "DIODE" H 4750 6524 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 4750 6350 50  0001 C CNN
F 3 "~" H 4750 6350 50  0001 C CNN
	1    4750 6350
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D5
U 1 1 5D68694F
P 3850 6350
F 0 "D5" H 3850 6615 50  0000 C CNN
F 1 "DIODE" H 3850 6524 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 3850 6350 50  0001 C CNN
F 3 "~" H 3850 6350 50  0001 C CNN
	1    3850 6350
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D3
U 1 1 5D686DBA
P 3400 6350
F 0 "D3" H 3400 6615 50  0000 C CNN
F 1 "DIODE" H 3400 6524 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 3400 6350 50  0001 C CNN
F 3 "~" H 3400 6350 50  0001 C CNN
	1    3400 6350
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 5D69B53A
P 2550 800
F 0 "D1" H 2550 535 50  0000 C CNN
F 1 "DIODE" H 2550 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 2550 800 50  0001 C CNN
F 3 "~" H 2550 800 50  0001 C CNN
	1    2550 800 
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 800  2350 1250
Connection ~ 2350 800 
$Comp
L pspice:DIODE D2
U 1 1 5D6BC3E2
P 3000 800
F 0 "D2" H 3000 535 50  0000 C CNN
F 1 "DIODE" H 3000 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 3000 800 50  0001 C CNN
F 3 "~" H 3000 800 50  0001 C CNN
	1    3000 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D4
U 1 1 5D6BCABF
P 3450 800
F 0 "D4" H 3450 535 50  0000 C CNN
F 1 "DIODE" H 3450 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 3450 800 50  0001 C CNN
F 3 "~" H 3450 800 50  0001 C CNN
	1    3450 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D6
U 1 1 5D6BCC20
P 3900 800
F 0 "D6" H 3900 535 50  0000 C CNN
F 1 "DIODE" H 3900 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 3900 800 50  0001 C CNN
F 3 "~" H 3900 800 50  0001 C CNN
	1    3900 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D8
U 1 1 5D6BCDA0
P 4350 800
F 0 "D8" H 4350 535 50  0000 C CNN
F 1 "DIODE" H 4350 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 4350 800 50  0001 C CNN
F 3 "~" H 4350 800 50  0001 C CNN
	1    4350 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D10
U 1 1 5D6BCE6D
P 4800 800
F 0 "D10" H 4800 535 50  0000 C CNN
F 1 "DIODE" H 4800 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 4800 800 50  0001 C CNN
F 3 "~" H 4800 800 50  0001 C CNN
	1    4800 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D12
U 1 1 5D6BCF1E
P 5250 800
F 0 "D12" H 5250 535 50  0000 C CNN
F 1 "DIODE" H 5250 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 5250 800 50  0001 C CNN
F 3 "~" H 5250 800 50  0001 C CNN
	1    5250 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D14
U 1 1 5D6BD082
P 5700 800
F 0 "D14" H 5700 535 50  0000 C CNN
F 1 "DIODE" H 5700 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 5700 800 50  0001 C CNN
F 3 "~" H 5700 800 50  0001 C CNN
	1    5700 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D16
U 1 1 5D6BD0D2
P 6150 800
F 0 "D16" H 6150 535 50  0000 C CNN
F 1 "DIODE" H 6150 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 6150 800 50  0001 C CNN
F 3 "~" H 6150 800 50  0001 C CNN
	1    6150 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D18
U 1 1 5D6BD3B4
P 6600 800
F 0 "D18" H 6600 535 50  0000 C CNN
F 1 "DIODE" H 6600 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 6600 800 50  0001 C CNN
F 3 "~" H 6600 800 50  0001 C CNN
	1    6600 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D19
U 1 1 5D6BD569
P 7050 800
F 0 "D19" H 7050 535 50  0000 C CNN
F 1 "DIODE" H 7050 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 7050 800 50  0001 C CNN
F 3 "~" H 7050 800 50  0001 C CNN
	1    7050 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D20
U 1 1 5D6BD680
P 7500 800
F 0 "D20" H 7500 535 50  0000 C CNN
F 1 "DIODE" H 7500 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 7500 800 50  0001 C CNN
F 3 "~" H 7500 800 50  0001 C CNN
	1    7500 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D21
U 1 1 5D6BD819
P 7950 800
F 0 "D21" H 7950 535 50  0000 C CNN
F 1 "DIODE" H 7950 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 7950 800 50  0001 C CNN
F 3 "~" H 7950 800 50  0001 C CNN
	1    7950 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D22
U 1 1 5D6BD91E
P 8400 800
F 0 "D22" H 8400 535 50  0000 C CNN
F 1 "DIODE" H 8400 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 8400 800 50  0001 C CNN
F 3 "~" H 8400 800 50  0001 C CNN
	1    8400 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D23
U 1 1 5D6BDB65
P 8850 800
F 0 "D23" H 8850 535 50  0000 C CNN
F 1 "DIODE" H 8850 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 8850 800 50  0001 C CNN
F 3 "~" H 8850 800 50  0001 C CNN
	1    8850 800 
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D24
U 1 1 5D6BDC95
P 9300 800
F 0 "D24" H 9300 535 50  0000 C CNN
F 1 "DIODE" H 9300 626 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 9300 800 50  0001 C CNN
F 3 "~" H 9300 800 50  0001 C CNN
	1    9300 800 
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 800  9100 1250
Wire Wire Line
	8650 800  8650 1250
Wire Wire Line
	8200 800  8200 1250
Wire Wire Line
	7750 800  7750 1250
Wire Wire Line
	7300 800  7300 1250
Wire Wire Line
	6850 800  6850 1250
Wire Wire Line
	6400 800  6400 1250
Wire Wire Line
	5950 800  5950 1250
Wire Wire Line
	5500 800  5500 1250
Wire Wire Line
	5050 800  5050 1250
Wire Wire Line
	4600 800  4600 1250
Wire Wire Line
	4150 800  4150 1250
Wire Wire Line
	3700 800  3700 1250
Wire Wire Line
	3250 800  3250 1250
Connection ~ 2800 800 
Wire Wire Line
	2800 800  2800 1250
Wire Wire Line
	3600 5800 3600 6350
Connection ~ 3600 6350
Wire Wire Line
	3600 6350 3600 6400
Wire Wire Line
	3200 5900 3200 6350
Connection ~ 3200 5900
Wire Wire Line
	3650 5800 3650 6350
Connection ~ 3650 5800
Wire Wire Line
	4050 5800 4050 6350
Connection ~ 4050 6350
Wire Wire Line
	4050 6350 4050 6400
Wire Wire Line
	4100 5800 4100 6350
Connection ~ 4100 5800
Wire Wire Line
	4950 5800 4950 6350
Connection ~ 4950 6350
Wire Wire Line
	4950 6350 4950 6400
Wire Wire Line
	4550 5800 4550 6350
Connection ~ 4550 5800
Wire Wire Line
	5000 6350 5000 5800
Connection ~ 5000 5800
Wire Wire Line
	5400 5800 5400 6350
Connection ~ 5400 6350
Wire Wire Line
	5400 6350 5400 6400
Wire Wire Line
	5850 5800 5850 6350
Connection ~ 5850 6350
Wire Wire Line
	5850 6350 5850 6400
Wire Wire Line
	6300 5800 6300 6350
Connection ~ 6300 6350
Wire Wire Line
	6300 6350 6300 6400
Wire Wire Line
	6750 5800 6750 6350
Connection ~ 6750 6350
Wire Wire Line
	6750 6350 6750 6400
Wire Wire Line
	6350 5800 6350 6350
Connection ~ 6350 5800
Wire Wire Line
	5900 5800 5900 6350
Connection ~ 5900 5800
Wire Wire Line
	5450 5800 5450 6350
Connection ~ 5450 5800
$Comp
L power:GND #PWR02
U 1 1 5D969AEE
P 2200 700
F 0 "#PWR02" H 2200 450 50  0001 C CNN
F 1 "GND" V 2205 572 50  0000 R CNN
F 2 "" H 2200 700 50  0001 C CNN
F 3 "" H 2200 700 50  0001 C CNN
	1    2200 700 
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 5450 3200 5400
Connection ~ 3200 5450
Wire Wire Line
	3200 4900 3200 4800
Wire Wire Line
	3200 5000 3200 4900
Wire Wire Line
	3200 5100 3200 5000
Wire Wire Line
	3200 5200 3200 5100
Wire Wire Line
	3200 5300 3200 5200
Wire Wire Line
	3200 5400 3200 5300
Wire Wire Line
	2100 4350 2500 4350
Connection ~ 2100 4350
Wire Wire Line
	3200 3250 3200 2650
Wire Wire Line
	3200 3350 3200 3250
Wire Wire Line
	3200 3450 3200 3350
Wire Wire Line
	3200 3550 3200 3450
Wire Wire Line
	3200 3650 3200 3550
Wire Wire Line
	3200 3750 3200 3650
Wire Wire Line
	3200 3850 3200 3750
Wire Wire Line
	3200 3950 3200 3850
Wire Wire Line
	2500 3250 6150 3250
Wire Wire Line
	2500 3350 6600 3350
Wire Wire Line
	2500 3450 7050 3450
Wire Wire Line
	2500 3550 7500 3550
Wire Wire Line
	2500 3650 7950 3650
Wire Wire Line
	2500 3750 8400 3750
Wire Wire Line
	2500 3850 8850 3850
Wire Wire Line
	2500 3950 9300 3950
Wire Wire Line
	2500 4150 2500 4400
Connection ~ 3650 5500
Wire Wire Line
	3650 4800 3650 4900
Wire Wire Line
	3650 4900 3650 5000
Wire Wire Line
	3650 5000 3650 5100
Wire Wire Line
	3650 5100 3650 5200
Wire Wire Line
	3650 5200 3650 5300
Wire Wire Line
	3650 5300 3650 5400
Wire Wire Line
	3650 5400 3650 5500
Wire Wire Line
	4100 5500 4100 5300
Connection ~ 4100 5500
Wire Wire Line
	4100 4900 4100 4800
Wire Wire Line
	4100 5000 4100 4900
Wire Wire Line
	4100 5100 4100 5000
Wire Wire Line
	4100 5200 4100 5100
Wire Wire Line
	4100 5300 4100 5200
Wire Wire Line
	4550 5500 4550 5200
Connection ~ 4550 5500
Wire Wire Line
	4550 4900 4550 4800
Wire Wire Line
	4550 5000 4550 4900
Wire Wire Line
	4550 5100 4550 5000
Wire Wire Line
	4550 5200 4550 5100
Wire Wire Line
	5000 5500 5000 5100
Connection ~ 5000 5500
Wire Wire Line
	5000 4900 5000 4800
Wire Wire Line
	5000 5000 5000 4900
Wire Wire Line
	5000 5100 5000 5000
Wire Wire Line
	5450 5500 5450 5000
Connection ~ 5450 5500
Wire Wire Line
	5450 4900 5450 4800
Wire Wire Line
	5450 5000 5450 4900
Connection ~ 5900 5500
Wire Wire Line
	5900 4800 5900 4900
Wire Wire Line
	5900 4900 5900 5500
Wire Wire Line
	6350 5500 6350 4800
Connection ~ 6350 5500
Wire Wire Line
	2500 5400 3850 5400
Wire Wire Line
	2500 5300 4300 5300
Wire Wire Line
	2500 5200 4750 5200
Wire Wire Line
	2500 5100 5200 5100
Wire Wire Line
	2500 5000 5650 5000
Wire Wire Line
	2500 4900 6100 4900
Wire Wire Line
	2500 4800 6550 4800
Connection ~ 9500 800 
Connection ~ 9050 800 
Connection ~ 8600 800 
Connection ~ 8150 800 
Connection ~ 7700 800 
Connection ~ 7250 800 
Connection ~ 6800 800 
Connection ~ 6350 800 
Connection ~ 5900 800 
Connection ~ 5450 800 
Connection ~ 5000 800 
Connection ~ 4550 800 
Connection ~ 4100 800 
Connection ~ 3650 800 
Connection ~ 3200 800 
Connection ~ 2750 800 
$Comp
L power:+1V5 #PWR01
U 1 1 5D0F3818
P 1500 850
F 0 "#PWR01" H 1500 700 50  0001 C CNN
F 1 "+1V5" H 1515 1023 50  0000 C CNN
F 2 "" H 1500 850 50  0001 C CNN
F 3 "" H 1500 850 50  0001 C CNN
	1    1500 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 700  2200 700 
Wire Wire Line
	1500 900  1500 850 
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E0CDC16
P 1550 900
F 0 "#FLG01" H 1550 975 50  0001 C CNN
F 1 "PWR_FLAG" H 1550 1073 50  0000 C CNN
F 2 "" H 1550 900 50  0001 C CNN
F 3 "~" H 1550 900 50  0001 C CNN
	1    1550 900 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5E0CE2F4
P 2250 650
F 0 "#FLG02" H 2250 725 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 823 50  0000 C CNN
F 2 "" H 2250 650 50  0001 C CNN
F 3 "~" H 2250 650 50  0001 C CNN
	1    2250 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 900  1550 900 
Wire Wire Line
	4500 5800 4500 6350
Wire Wire Line
	4500 6350 4500 6400
Connection ~ 4500 6350
$Comp
L pspice:DIODE D7
U 1 1 5D6867EB
P 4300 6350
F 0 "D7" H 4300 6615 50  0000 C CNN
F 1 "DIODE" H 4300 6524 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_KathodeUp" H 4300 6350 50  0001 C CNN
F 3 "~" H 4300 6350 50  0001 C CNN
	1    4300 6350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E1096D6
P 1600 1000
F 0 "#FLG0101" H 1600 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 1600 1173 50  0000 C CNN
F 2 "" H 1600 1000 50  0001 C CNN
F 3 "~" H 1600 1000 50  0001 C CNN
	1    1600 1000
	1    0    0    -1  
$EndComp
NoConn ~ 2100 4600
NoConn ~ 2100 3050
NoConn ~ 2100 1350
Wire Wire Line
	1500 900  1400 900 
Wire Wire Line
	1400 900  1400 1350
Connection ~ 1500 900 
Wire Wire Line
	1400 1350 2100 1350
Connection ~ 1400 1350
Wire Wire Line
	1400 3050 2100 3050
Wire Wire Line
	1400 1350 1400 3050
Wire Wire Line
	1400 4600 2100 4600
Wire Wire Line
	1400 3050 1400 4600
Connection ~ 1400 3050
Wire Wire Line
	6350 4350 6350 4800
Wire Wire Line
	6350 4350 9700 4350
Wire Wire Line
	2500 4350 3200 4350
Connection ~ 6350 4350
Wire Wire Line
	3200 3950 3200 4350
Connection ~ 3200 4350
Wire Wire Line
	3200 4350 3650 4350
Wire Wire Line
	3200 4350 3200 4800
Wire Wire Line
	3650 4350 3650 4800
Connection ~ 3650 4350
Wire Wire Line
	3650 4350 4100 4350
Wire Wire Line
	4100 4350 4100 4800
Connection ~ 4100 4350
Wire Wire Line
	4100 4350 4550 4350
Wire Wire Line
	4550 4350 4550 4800
Connection ~ 4550 4350
Wire Wire Line
	4550 4350 5000 4350
Wire Wire Line
	5000 4350 5000 4800
Connection ~ 5000 4350
Wire Wire Line
	5000 4350 5450 4350
Wire Wire Line
	5450 4350 5450 4800
Connection ~ 5450 4350
Wire Wire Line
	5450 4350 5900 4350
Wire Wire Line
	5900 4350 5900 4800
Connection ~ 5900 4350
Wire Wire Line
	5900 4350 6350 4350
Wire Wire Line
	9700 600  9700 4350
Wire Wire Line
	2250 600  2250 650 
Connection ~ 2250 650 
Wire Wire Line
	2250 650  2250 700 
Wire Wire Line
	2750 600  2750 800 
Connection ~ 2750 600 
Wire Wire Line
	3200 600  3200 800 
Wire Wire Line
	2750 600  3200 600 
Connection ~ 3200 600 
Wire Wire Line
	3650 600  3650 800 
Wire Wire Line
	3200 600  3650 600 
Connection ~ 3650 600 
Wire Wire Line
	4100 600  4100 800 
Wire Wire Line
	3650 600  4100 600 
Connection ~ 4100 600 
Wire Wire Line
	4550 600  4550 800 
Wire Wire Line
	4100 600  4550 600 
Connection ~ 4550 600 
Wire Wire Line
	5000 600  5000 800 
Wire Wire Line
	4550 600  5000 600 
Connection ~ 5000 600 
Wire Wire Line
	5450 600  5450 800 
Wire Wire Line
	5000 600  5450 600 
Connection ~ 5450 600 
Wire Wire Line
	5900 600  5900 800 
Wire Wire Line
	5450 600  5900 600 
Connection ~ 5900 600 
Wire Wire Line
	6350 600  6350 800 
Wire Wire Line
	5900 600  6350 600 
Connection ~ 6350 600 
Wire Wire Line
	6800 600  6800 800 
Wire Wire Line
	6350 600  6800 600 
Connection ~ 6800 600 
Wire Wire Line
	7250 600  7250 800 
Wire Wire Line
	6800 600  7250 600 
Connection ~ 7250 600 
Wire Wire Line
	7700 600  7700 800 
Wire Wire Line
	7250 600  7700 600 
Connection ~ 7700 600 
Wire Wire Line
	8150 600  8150 800 
Wire Wire Line
	7700 600  8150 600 
Connection ~ 8150 600 
Wire Wire Line
	8600 600  8600 800 
Wire Wire Line
	8150 600  8600 600 
Connection ~ 8600 600 
Wire Wire Line
	9050 600  9050 800 
Wire Wire Line
	8600 600  9050 600 
Connection ~ 9050 600 
Wire Wire Line
	9050 600  9500 600 
Wire Wire Line
	9500 600  9500 800 
Connection ~ 9500 600 
Wire Wire Line
	9500 600  9700 600 
Wire Wire Line
	1700 1550 1700 1150
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E94C439
P 1700 1150
F 0 "#FLG0102" H 1700 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 1323 50  0000 C CNN
F 2 "" H 1700 1150 50  0001 C CNN
F 3 "~" H 1700 1150 50  0001 C CNN
	1    1700 1150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5E94D06F
P 1650 1000
F 0 "#FLG0103" H 1650 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 1173 50  0000 C CNN
F 2 "" H 1650 1000 50  0001 C CNN
F 3 "~" H 1650 1000 50  0001 C CNN
	1    1650 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5D193905
P 2150 800
F 0 "J1" H 2042 575 50  0000 C CNN
F 1 "Conn_01x01_Female" H 2042 666 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 2150 800 50  0001 C CNN
F 3 "~" H 2150 800 50  0001 C CNN
	1    2150 800 
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5D1956F4
P 2800 600
F 0 "J2" V 2738 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 2647 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 2800 600 50  0001 C CNN
F 3 "~" H 2800 600 50  0001 C CNN
	1    2800 600 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5D196639
P 3250 600
F 0 "J3" V 3188 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 3097 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 3250 600 50  0001 C CNN
F 3 "~" H 3250 600 50  0001 C CNN
	1    3250 600 
	0    -1   -1   0   
$EndComp
Connection ~ 3250 800 
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5D196F8C
P 3700 600
F 0 "J5" V 3638 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 3547 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 3700 600 50  0001 C CNN
F 3 "~" H 3700 600 50  0001 C CNN
	1    3700 600 
	0    -1   -1   0   
$EndComp
Connection ~ 3700 800 
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 5D197105
P 4150 600
F 0 "J7" V 4088 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 3997 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 4150 600 50  0001 C CNN
F 3 "~" H 4150 600 50  0001 C CNN
	1    4150 600 
	0    -1   -1   0   
$EndComp
Connection ~ 4150 800 
$Comp
L Connector:Conn_01x01_Female J9
U 1 1 5D19776E
P 4600 600
F 0 "J9" V 4538 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 4447 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 4600 600 50  0001 C CNN
F 3 "~" H 4600 600 50  0001 C CNN
	1    4600 600 
	0    -1   -1   0   
$EndComp
Connection ~ 4600 800 
$Comp
L Connector:Conn_01x01_Female J11
U 1 1 5D197893
P 5050 600
F 0 "J11" V 4988 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 4897 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 5050 600 50  0001 C CNN
F 3 "~" H 5050 600 50  0001 C CNN
	1    5050 600 
	0    -1   -1   0   
$EndComp
Connection ~ 5050 800 
$Comp
L Connector:Conn_01x01_Female J13
U 1 1 5D197B3B
P 5500 600
F 0 "J13" V 5438 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 5347 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 5500 600 50  0001 C CNN
F 3 "~" H 5500 600 50  0001 C CNN
	1    5500 600 
	0    -1   -1   0   
$EndComp
Connection ~ 5500 800 
$Comp
L Connector:Conn_01x01_Female J15
U 1 1 5D197B9F
P 5950 600
F 0 "J15" V 5888 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 5797 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 5950 600 50  0001 C CNN
F 3 "~" H 5950 600 50  0001 C CNN
	1    5950 600 
	0    -1   -1   0   
$EndComp
Connection ~ 5950 800 
$Comp
L Connector:Conn_01x01_Female J17
U 1 1 5D197DF2
P 6400 600
F 0 "J17" V 6338 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 6247 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 6400 600 50  0001 C CNN
F 3 "~" H 6400 600 50  0001 C CNN
	1    6400 600 
	0    -1   -1   0   
$EndComp
Connection ~ 6400 800 
$Comp
L Connector:Conn_01x01_Female J19
U 1 1 5D197F3D
P 6850 600
F 0 "J19" V 6788 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 6697 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 6850 600 50  0001 C CNN
F 3 "~" H 6850 600 50  0001 C CNN
	1    6850 600 
	0    -1   -1   0   
$EndComp
Connection ~ 6850 800 
$Comp
L Connector:Conn_01x01_Female J20
U 1 1 5D1980FA
P 7300 600
F 0 "J20" V 7238 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 7147 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 7300 600 50  0001 C CNN
F 3 "~" H 7300 600 50  0001 C CNN
	1    7300 600 
	0    -1   -1   0   
$EndComp
Connection ~ 7300 800 
$Comp
L Connector:Conn_01x01_Female J21
U 1 1 5D198491
P 7750 600
F 0 "J21" V 7688 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 7597 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 7750 600 50  0001 C CNN
F 3 "~" H 7750 600 50  0001 C CNN
	1    7750 600 
	0    -1   -1   0   
$EndComp
Connection ~ 7750 800 
$Comp
L Connector:Conn_01x01_Female J22
U 1 1 5D1986A6
P 8200 600
F 0 "J22" V 8138 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 8047 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 8200 600 50  0001 C CNN
F 3 "~" H 8200 600 50  0001 C CNN
	1    8200 600 
	0    -1   -1   0   
$EndComp
Connection ~ 8200 800 
$Comp
L Connector:Conn_01x01_Female J23
U 1 1 5D1987C0
P 8650 600
F 0 "J23" V 8588 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 8497 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 8650 600 50  0001 C CNN
F 3 "~" H 8650 600 50  0001 C CNN
	1    8650 600 
	0    -1   -1   0   
$EndComp
Connection ~ 8650 800 
$Comp
L Connector:Conn_01x01_Female J24
U 1 1 5D19894D
P 9100 600
F 0 "J24" V 9038 512 50  0000 R CNN
F 1 "Conn_01x01_Female" V 8947 512 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 9100 600 50  0001 C CNN
F 3 "~" H 9100 600 50  0001 C CNN
	1    9100 600 
	0    -1   -1   0   
$EndComp
Connection ~ 9100 800 
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 5D198BA0
P 3600 6600
F 0 "J4" V 3446 6648 50  0000 L CNN
F 1 "Conn_01x01_Female" V 3537 6648 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 3600 6600 50  0001 C CNN
F 3 "~" H 3600 6600 50  0001 C CNN
	1    3600 6600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J6
U 1 1 5D19943D
P 4050 6600
F 0 "J6" V 3896 6648 50  0000 L CNN
F 1 "Conn_01x01_Female" V 3987 6648 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 4050 6600 50  0001 C CNN
F 3 "~" H 4050 6600 50  0001 C CNN
	1    4050 6600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J8
U 1 1 5D1995D5
P 4500 6600
F 0 "J8" V 4346 6648 50  0000 L CNN
F 1 "Conn_01x01_Female" V 4437 6648 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 4500 6600 50  0001 C CNN
F 3 "~" H 4500 6600 50  0001 C CNN
	1    4500 6600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J10
U 1 1 5D1996EA
P 4950 6600
F 0 "J10" V 4796 6648 50  0000 L CNN
F 1 "Conn_01x01_Female" V 4887 6648 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 4950 6600 50  0001 C CNN
F 3 "~" H 4950 6600 50  0001 C CNN
	1    4950 6600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J12
U 1 1 5D19984E
P 5400 6600
F 0 "J12" V 5246 6648 50  0000 L CNN
F 1 "Conn_01x01_Female" V 5337 6648 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 5400 6600 50  0001 C CNN
F 3 "~" H 5400 6600 50  0001 C CNN
	1    5400 6600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J14
U 1 1 5D199A5F
P 5850 6600
F 0 "J14" V 5696 6648 50  0000 L CNN
F 1 "Conn_01x01_Female" V 5787 6648 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 5850 6600 50  0001 C CNN
F 3 "~" H 5850 6600 50  0001 C CNN
	1    5850 6600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J16
U 1 1 5D199C79
P 6300 6600
F 0 "J16" V 6146 6648 50  0000 L CNN
F 1 "Conn_01x01_Female" V 6237 6648 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 6300 6600 50  0001 C CNN
F 3 "~" H 6300 6600 50  0001 C CNN
	1    6300 6600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J18
U 1 1 5D199D5F
P 6750 6600
F 0 "J18" V 6596 6648 50  0000 L CNN
F 1 "Conn_01x01_Female" V 6687 6648 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 6750 6600 50  0001 C CNN
F 3 "~" H 6750 6600 50  0001 C CNN
	1    6750 6600
	0    1    1    0   
$EndComp
Connection ~ 1700 1150
Connection ~ 1650 1000
$Comp
L Connector:Conn_01x01_Female Clear1
U 1 1 5D19DD90
P 1400 1000
F 0 "Clear1" H 1292 775 50  0000 C CNN
F 1 "Conn_01x01_Female" H 1292 866 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 1400 1000 50  0001 C CNN
F 3 "~" H 1400 1000 50  0001 C CNN
	1    1400 1000
	-1   0    0    1   
$EndComp
Connection ~ 1600 1000
$Comp
L Connector:Conn_01x01_Female Clock1
U 1 1 5D19DCC3
P 1850 1000
F 0 "Clock1" H 1878 1026 50  0000 L CNN
F 1 "Conn_01x01_Female" H 1878 935 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 1850 1000 50  0001 C CNN
F 3 "~" H 1850 1000 50  0001 C CNN
	1    1850 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female Serial_In1
U 1 1 5D19D5C1
P 1900 1150
F 0 "Serial_In1" H 1928 1176 50  0000 L CNN
F 1 "Conn_01x01_Female" H 1928 1085 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 1900 1150 50  0001 C CNN
F 3 "~" H 1900 1150 50  0001 C CNN
	1    1900 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female 5V1
U 1 1 5D1AE91C
P 1200 900
F 0 "5V1" H 1092 675 50  0000 C CNN
F 1 "Conn_01x01_Female" H 1092 766 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 1200 900 50  0001 C CNN
F 3 "~" H 1200 900 50  0001 C CNN
	1    1200 900 
	-1   0    0    1   
$EndComp
Connection ~ 1400 900 
Wire Wire Line
	2250 600  2750 600 
$Comp
L Connector:Conn_01x01_Female Ground1
U 1 1 5D1B0838
P 2250 400
F 0 "Ground1" V 2188 312 50  0000 R CNN
F 1 "Conn_01x01_Female" V 2097 312 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 2250 400 50  0001 C CNN
F 3 "~" H 2250 400 50  0001 C CNN
	1    2250 400 
	0    -1   -1   0   
$EndComp
Connection ~ 2250 600 
$Comp
L Connector:Conn_01x01_Female H'1
U 1 1 5D347AE0
P 2700 5700
F 0 "H'1" H 2728 5726 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2728 5635 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 2700 5700 50  0001 C CNN
F 3 "~" H 2700 5700 50  0001 C CNN
	1    2700 5700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
