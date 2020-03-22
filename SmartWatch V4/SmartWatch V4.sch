EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ESP32 Custom SmartWatch"
Date "2020-03-22"
Rev "4"
Comp ""
Comment1 "https://hackaday.io/project/168227-custom-smartwatch"
Comment2 "Matthew James Bellafaire"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32 U?
U 1 1 5E6BFC95
P 6150 3050
F 0 "U?" H 5400 4650 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 5700 4550 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6150 1550 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 5850 3100 50  0001 C CNN
F 4 "1904-1010-1-ND" H 6150 3050 50  0001 C CNN "digikey"
	1    6150 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E6C26FC
P 6150 1650
F 0 "#PWR?" H 6150 1500 50  0001 C CNN
F 1 "+3.3V" H 6165 1823 50  0000 C CNN
F 2 "" H 6150 1650 50  0001 C CNN
F 3 "" H 6150 1650 50  0001 C CNN
	1    6150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6C3404
P 6150 4450
F 0 "#PWR?" H 6150 4200 50  0001 C CNN
F 1 "GND" H 6155 4277 50  0000 C CNN
F 2 "" H 6150 4450 50  0001 C CNN
F 3 "" H 6150 4450 50  0001 C CNN
	1    6150 4450
	1    0    0    -1  
$EndComp
Text Label 7150 1850 2    50   ~ 0
IO0
Text Label 5350 1850 0    50   ~ 0
EN
Wire Wire Line
	5550 1850 5350 1850
$Comp
L Device:R R?
U 1 1 5E6C1594
P 6800 5300
F 0 "R?" H 6870 5346 50  0000 L CNN
F 1 "10k" H 6870 5255 50  0000 L CNN
F 2 "" V 6730 5300 50  0001 C CNN
F 3 "~" H 6800 5300 50  0001 C CNN
F 4 "311-10.0KCRCT-ND" H 6800 5300 50  0001 C CNN "digikey"
	1    6800 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E6C29BF
P 6800 5050
F 0 "#PWR?" H 6800 4900 50  0001 C CNN
F 1 "+3.3V" H 6815 5223 50  0000 C CNN
F 2 "" H 6800 5050 50  0001 C CNN
F 3 "" H 6800 5050 50  0001 C CNN
	1    6800 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E6C2FAF
P 7100 5050
F 0 "#PWR?" H 7100 4900 50  0001 C CNN
F 1 "+3.3V" H 7115 5223 50  0000 C CNN
F 2 "" H 7100 5050 50  0001 C CNN
F 3 "" H 7100 5050 50  0001 C CNN
	1    7100 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E6C4230
P 7100 5300
F 0 "R?" H 7170 5346 50  0000 L CNN
F 1 "10k" H 7170 5255 50  0000 L CNN
F 2 "" V 7030 5300 50  0001 C CNN
F 3 "~" H 7100 5300 50  0001 C CNN
F 4 "311-10.0KCRCT-ND" H 7100 5300 50  0001 C CNN "digikey"
	1    7100 5300
	1    0    0    -1  
$EndComp
Text Label 6800 5800 1    50   ~ 0
IO0
Text Label 7100 5800 1    50   ~ 0
EN
$Comp
L Interface_USB:FT231XS U?
U 1 1 5E6D1202
P 3100 6200
F 0 "U?" H 2450 7250 50  0000 C CNN
F 1 "FT231XS" H 2550 7150 50  0000 C CNN
F 2 "Package_SO:SSOP-20_3.9x8.7mm_P0.635mm" H 4100 5400 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 3100 6200 50  0001 C CNN
F 4 "768-1129-1-ND" H 3100 6200 50  0001 C CNN "digikey"
	1    3100 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E6D7DDF
P 3000 5150
F 0 "#PWR?" H 3000 5000 50  0001 C CNN
F 1 "+3.3V" H 3015 5323 50  0000 C CNN
F 2 "" H 3000 5150 50  0001 C CNN
F 3 "" H 3000 5150 50  0001 C CNN
	1    3000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5150 3000 5300
Wire Wire Line
	3200 5300 3200 4800
Wire Wire Line
	3200 4800 2100 4800
Wire Wire Line
	2100 4800 2100 5600
Wire Wire Line
	2100 5600 2400 5600
Connection ~ 2100 5600
Wire Wire Line
	2100 5600 2100 6200
Wire Wire Line
	2100 6200 2400 6200
Connection ~ 2100 6200
Wire Wire Line
	2100 6200 2100 6650
$Comp
L power:GND #PWR?
U 1 1 5E6D8DBB
P 2100 7000
F 0 "#PWR?" H 2100 6750 50  0001 C CNN
F 1 "GND" H 2105 6827 50  0000 C CNN
F 2 "" H 2100 7000 50  0001 C CNN
F 3 "" H 2100 7000 50  0001 C CNN
	1    2100 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E6D90DE
P 2100 6800
F 0 "C?" H 2215 6846 50  0000 L CNN
F 1 "0.1uF" H 2215 6755 50  0000 L CNN
F 2 "" H 2138 6650 50  0001 C CNN
F 3 "~" H 2100 6800 50  0001 C CNN
F 4 "1276-1006-1-ND" H 2100 6800 50  0001 C CNN "digikey"
	1    2100 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6950 2100 7000
$Comp
L power:GND #PWR?
U 1 1 5E6D9DD9
P 3100 7200
F 0 "#PWR?" H 3100 6950 50  0001 C CNN
F 1 "GND" H 3105 7027 50  0000 C CNN
F 2 "" H 3100 7200 50  0001 C CNN
F 3 "" H 3100 7200 50  0001 C CNN
	1    3100 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 7100 3000 7200
Wire Wire Line
	3000 7200 3100 7200
Wire Wire Line
	3200 7200 3200 7100
Connection ~ 3100 7200
Wire Wire Line
	3100 7200 3200 7200
$Comp
L Connector:USB_B_Micro J?
U 1 1 5E6DBEE6
P 800 5900
F 0 "J?" H 700 6400 50  0000 C CNN
F 1 "10118192-0001LF" H 1000 6300 50  0000 C CNN
F 2 "CustomFootprints:AMPHENOL_10118192-0001LF" H 800 5900 50  0001 L BNN
F 3 "Amphenol ICC" H 800 5900 50  0001 L BNN
F 4 "None" H 800 5900 50  0001 L BNN "Field4"
F 5 "Single Port 5 Contact Horizontal Right Angle Shielded Micro B USB 2.0 Connector" H 800 5900 50  0001 L BNN "Field5"
F 6 "609-4613-1-ND" H 800 5900 50  0001 L BNN "Field6"
F 7 "10118192-0001LF" H 800 5900 50  0001 L BNN "Field7"
F 8 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/10118192-0001LF/609-4613-1-ND/2785378?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 800 5900 50  0001 L BNN "Field8"
	1    800  5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E6E1024
P 1750 5900
F 0 "R?" V 1957 5900 50  0000 C CNN
F 1 "27" V 1866 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 5900 50  0001 C CNN
F 3 "~" H 1750 5900 50  0001 C CNN
F 4 "738-RMCF0805JT27R0CT-ND" V 1750 5900 50  0001 C CNN "digikey"
	1    1750 5900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E6C4B82
P 1750 6000
F 0 "R?" V 1650 6000 50  0000 C CNN
F 1 "27" V 1550 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 6000 50  0001 C CNN
F 3 "~" H 1750 6000 50  0001 C CNN
F 4 "738-RMCF0805JT27R0CT-ND" V 1750 6000 50  0001 C CNN "digikey"
	1    1750 6000
	0    -1   -1   0   
$EndComp
Text Label 1400 5700 2    50   ~ 0
VBUS
Wire Wire Line
	1100 5700 1400 5700
Wire Wire Line
	1900 5900 2400 5900
Wire Wire Line
	1900 6000 2400 6000
$Comp
L Device:Q_NPN_BEC Q?
U 1 1 5E6C83C3
P 5350 6500
F 0 "Q?" H 5541 6546 50  0000 L CNN
F 1 "MMBT3904" H 5541 6455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5550 6600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/MMBT3904.pdf" H 5350 6500 50  0001 C CNN
F 4 "1727-4044-1-ND" H 5350 6500 50  0001 C CNN "digikey"
	1    5350 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q?
U 1 1 5E6C84A7
P 5350 7200
F 0 "Q?" H 5541 7154 50  0000 L CNN
F 1 "MMBT3904" H 5541 7245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5550 7300 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/MMBT3904.pdf" H 5350 7200 50  0001 C CNN
F 4 "1727-4044-1-ND" H 5350 7200 50  0001 C CNN "digikey"
	1    5350 7200
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E6C8941
P 4950 6500
F 0 "R?" V 5050 6500 50  0000 L CNN
F 1 "10k" V 5150 6500 50  0000 L CNN
F 2 "" V 4880 6500 50  0001 C CNN
F 3 "~" H 4950 6500 50  0001 C CNN
F 4 "311-10.0KCRCT-ND" H 4950 6500 50  0001 C CNN "digikey"
	1    4950 6500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E6C91F4
P 4950 7200
F 0 "R?" V 5050 7200 50  0000 L CNN
F 1 "10k" V 5150 7200 50  0000 L CNN
F 2 "" V 4880 7200 50  0001 C CNN
F 3 "~" H 4950 7200 50  0001 C CNN
F 4 "311-10.0KCRCT-ND" H 4950 7200 50  0001 C CNN "digikey"
	1    4950 7200
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 6300 5450 6200
Wire Wire Line
	5450 6200 5900 6200
Wire Wire Line
	5450 7400 5450 7500
Wire Wire Line
	5450 7500 5900 7500
Text Label 4500 6500 0    50   ~ 0
RTS
Text Label 4500 7200 0    50   ~ 0
DTR
Text Label 5900 7500 2    50   ~ 0
EN
Text Label 5900 6200 2    50   ~ 0
IO0
Wire Wire Line
	5450 7000 5450 6950
Wire Wire Line
	5450 6950 5200 6750
Wire Wire Line
	5200 6750 4700 6750
Wire Wire Line
	5450 6700 5450 6750
Wire Wire Line
	5450 6750 5200 6950
Wire Wire Line
	5200 6950 4700 6950
Wire Wire Line
	4500 6500 4700 6500
Wire Wire Line
	4500 7200 4700 7200
Wire Wire Line
	4700 6750 4700 6500
Connection ~ 4700 6500
Wire Wire Line
	4700 6500 4800 6500
Wire Wire Line
	4700 6950 4700 7200
Connection ~ 4700 7200
Wire Wire Line
	4700 7200 4800 7200
Wire Wire Line
	5100 6500 5150 6500
Wire Wire Line
	5100 7200 5150 7200
Text Label 4100 5600 2    50   ~ 0
TXD
Text Label 4100 5700 2    50   ~ 0
RXD
Text Label 4100 5800 2    50   ~ 0
RTS
Text Label 4100 6000 2    50   ~ 0
DTR
Wire Wire Line
	3800 5600 4100 5600
Wire Wire Line
	3800 5700 4100 5700
Wire Wire Line
	3800 5800 4100 5800
Wire Wire Line
	3800 6000 4100 6000
NoConn ~ 3800 5900
NoConn ~ 3800 6100
NoConn ~ 3800 6200
NoConn ~ 3800 6300
NoConn ~ 5550 3050
NoConn ~ 5550 3150
NoConn ~ 5550 3250
NoConn ~ 5550 3350
NoConn ~ 5550 3450
NoConn ~ 5550 3550
$Comp
L Device:R R?
U 1 1 5E6E7602
P 4950 5600
F 0 "R?" V 4743 5600 50  0000 C CNN
F 1 "0" V 4834 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4880 5600 50  0001 C CNN
F 3 "~" H 4950 5600 50  0001 C CNN
F 4 "RMCF0805ZT0R00CT-ND" V 4950 5600 50  0001 C CNN "digikey"
	1    4950 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E6E7B1F
P 4950 5800
F 0 "R?" V 5050 5800 50  0000 C CNN
F 1 "0" V 5150 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4880 5800 50  0001 C CNN
F 3 "~" H 4950 5800 50  0001 C CNN
F 4 "RMCF0805ZT0R00CT-ND" V 4950 5800 50  0001 C CNN "digikey"
	1    4950 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 5600 4800 5600
Wire Wire Line
	4450 5800 4800 5800
Wire Wire Line
	5100 5800 5450 5800
Wire Wire Line
	5100 5600 5450 5600
Text Label 4450 5600 0    50   ~ 0
RXD
Text Label 4450 5800 0    50   ~ 0
TXD
Text Label 5450 5600 2    50   ~ 0
TXD0
Text Label 5450 5800 2    50   ~ 0
RXD0
Text Label 7150 1950 2    50   ~ 0
RXD0
Text Label 7150 2150 2    50   ~ 0
TXD0
Wire Bus Line
	550  4700 6000 4700
Wire Bus Line
	6000 4700 6000 7600
Wire Bus Line
	6000 7600 550  7600
Wire Bus Line
	550  7600 550  4700
Text Notes 600  4800 0    50   ~ 0
USB-UART Communication\n
Wire Wire Line
	3800 6500 4250 6500
Text Label 4250 6500 2    50   ~ 0
TXRX
Text Notes 550  7550 0    50   ~ 0
CBUS0 needs to be configured to TX&RXLED# using the FT_PROG utility\n
Text Label 7150 2250 2    50   ~ 0
IND_LED
Wire Wire Line
	6750 1850 7150 1850
Wire Wire Line
	6750 1950 7150 1950
Wire Wire Line
	6750 2150 7150 2150
Wire Wire Line
	6750 2250 7150 2250
$Comp
L CustomParts:TestPad J?
U 1 1 5E79AD9A
P 6550 6150
F 0 "J?" H 6778 6201 50  0000 L CNN
F 1 "TestPad" H 6778 6110 50  0000 L CNN
F 2 "CustomFootprints:TESTPAD" H 6650 6250 50  0001 C CNN
F 3 "" H 6650 6250 50  0001 C CNN
	1    6550 6150
	1    0    0    -1  
$EndComp
$Comp
L CustomParts:TestPad J?
U 1 1 5E79D1AD
P 6550 6350
F 0 "J?" H 6778 6401 50  0000 L CNN
F 1 "TestPad" H 6778 6310 50  0000 L CNN
F 2 "CustomFootprints:TESTPAD" H 6650 6450 50  0001 C CNN
F 3 "" H 6650 6450 50  0001 C CNN
	1    6550 6350
	1    0    0    -1  
$EndComp
$Comp
L CustomParts:TestPad J?
U 1 1 5E79D414
P 7700 6150
F 0 "J?" H 7928 6201 50  0000 L CNN
F 1 "TestPad" H 7928 6110 50  0000 L CNN
F 2 "CustomFootprints:TESTPAD" H 7800 6250 50  0001 C CNN
F 3 "" H 7800 6250 50  0001 C CNN
	1    7700 6150
	1    0    0    -1  
$EndComp
$Comp
L CustomParts:TestPad J?
U 1 1 5E79D63D
P 7700 6350
F 0 "J?" H 7928 6401 50  0000 L CNN
F 1 "TestPad" H 7928 6310 50  0000 L CNN
F 2 "CustomFootprints:TESTPAD" H 7800 6450 50  0001 C CNN
F 3 "" H 7800 6450 50  0001 C CNN
	1    7700 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2450 7150 2450
Wire Wire Line
	6750 2050 7150 2050
Wire Wire Line
	6750 2750 7150 2750
Wire Wire Line
	6100 6150 6550 6150
Wire Wire Line
	6100 6350 6550 6350
Wire Wire Line
	7700 6150 7250 6150
Wire Wire Line
	7700 6350 7250 6350
Text Label 6100 6150 0    50   ~ 0
IO0
Text Label 6100 6350 0    50   ~ 0
IO2
Text Label 7250 6150 0    50   ~ 0
IO12
Text Label 7250 6350 0    50   ~ 0
IO15
Text Label 7150 2050 2    50   ~ 0
IO2
Text Label 7150 2450 2    50   ~ 0
IO12
Text Label 7150 2750 2    50   ~ 0
IO15
Wire Wire Line
	1300 6000 1400 5900
Wire Wire Line
	1400 5900 1600 5900
Wire Wire Line
	1100 6000 1300 6000
Wire Wire Line
	1600 6000 1400 6000
Wire Wire Line
	1400 6000 1300 5900
Wire Wire Line
	1300 5900 1100 5900
NoConn ~ 1100 6100
Wire Wire Line
	700  6300 700  6400
Wire Wire Line
	700  6400 750  6400
Wire Wire Line
	800  6400 800  6300
Wire Wire Line
	750  6400 750  6450
Connection ~ 750  6400
Wire Wire Line
	750  6400 800  6400
$Comp
L power:GND #PWR?
U 1 1 5E7C1DBF
P 750 6450
F 0 "#PWR?" H 750 6200 50  0001 C CNN
F 1 "GND" H 755 6277 50  0000 C CNN
F 2 "" H 750 6450 50  0001 C CNN
F 3 "" H 750 6450 50  0001 C CNN
	1    750  6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3250 7150 3250
Wire Wire Line
	6750 3350 7150 3350
Text Label 7150 3250 2    50   ~ 0
I2C_SDA
Text Label 7150 3350 2    50   ~ 0
I2C_SCL
Text Label 7150 2550 2    50   ~ 0
REG_PG
Wire Wire Line
	7150 2550 6750 2550
$Comp
L Device:R R?
U 1 1 5E875CFA
P 6500 5300
F 0 "R?" H 6570 5346 50  0000 L CNN
F 1 "10k" H 6570 5255 50  0000 L CNN
F 2 "" V 6430 5300 50  0001 C CNN
F 3 "~" H 6500 5300 50  0001 C CNN
F 4 "311-10.0KCRCT-ND" H 6500 5300 50  0001 C CNN "digikey"
	1    6500 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E875D00
P 6500 5050
F 0 "#PWR?" H 6500 4900 50  0001 C CNN
F 1 "+3.3V" H 6515 5223 50  0000 C CNN
F 2 "" H 6500 5050 50  0001 C CNN
F 3 "" H 6500 5050 50  0001 C CNN
	1    6500 5050
	1    0    0    -1  
$EndComp
Text Label 6500 5800 1    50   ~ 0
I2C_SDA
$Comp
L Device:R R?
U 1 1 5E878BA1
P 6200 5300
F 0 "R?" H 6270 5346 50  0000 L CNN
F 1 "10k" H 6270 5255 50  0000 L CNN
F 2 "" V 6130 5300 50  0001 C CNN
F 3 "~" H 6200 5300 50  0001 C CNN
F 4 "311-10.0KCRCT-ND" H 6200 5300 50  0001 C CNN "digikey"
	1    6200 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E878BA7
P 6200 5050
F 0 "#PWR?" H 6200 4900 50  0001 C CNN
F 1 "+3.3V" H 6215 5223 50  0000 C CNN
F 2 "" H 6200 5050 50  0001 C CNN
F 3 "" H 6200 5050 50  0001 C CNN
	1    6200 5050
	1    0    0    -1  
$EndComp
Text Label 6200 5800 1    50   ~ 0
I2C_SCL
Wire Wire Line
	7100 5450 7100 5800
Wire Wire Line
	6800 5450 6800 5800
Wire Wire Line
	6500 5450 6500 5800
Wire Wire Line
	6200 5450 6200 5800
Text Notes 6100 4800 0    50   ~ 0
Pull-ups\n
$Comp
L CustomParts:TestPad J?
U 1 1 5E8B063B
P 8750 6350
F 0 "J?" H 8978 6401 50  0000 L CNN
F 1 "TestPad" H 8978 6310 50  0000 L CNN
F 2 "CustomFootprints:TESTPAD" H 8850 6450 50  0001 C CNN
F 3 "" H 8850 6450 50  0001 C CNN
	1    8750 6350
	1    0    0    -1  
$EndComp
$Comp
L CustomParts:TestPad J?
U 1 1 5E8B0641
P 8750 6150
F 0 "J?" H 8978 6201 50  0000 L CNN
F 1 "TestPad" H 8978 6110 50  0000 L CNN
F 2 "CustomFootprints:TESTPAD" H 8850 6250 50  0001 C CNN
F 3 "" H 8850 6250 50  0001 C CNN
	1    8750 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 6350 8300 6350
Wire Wire Line
	8750 6150 8300 6150
Text Label 8300 6350 0    50   ~ 0
BAT+
$Comp
L power:+3.3V #PWR?
U 1 1 5E8B37A9
P 9450 6150
F 0 "#PWR?" H 9450 6000 50  0001 C CNN
F 1 "+3.3V" H 9600 6200 50  0000 C CNN
F 2 "" H 9450 6150 50  0001 C CNN
F 3 "" H 9450 6150 50  0001 C CNN
	1    9450 6150
	1    0    0    -1  
$EndComp
$Comp
L CustomParts:TestPad J?
U 1 1 5E8BE35B
P 9900 6350
F 0 "J?" H 10128 6401 50  0000 L CNN
F 1 "TestPad" H 10128 6310 50  0000 L CNN
F 2 "CustomFootprints:TESTPAD" H 10000 6450 50  0001 C CNN
F 3 "" H 10000 6450 50  0001 C CNN
	1    9900 6350
	1    0    0    -1  
$EndComp
$Comp
L CustomParts:TestPad J?
U 1 1 5E8BE361
P 9900 6150
F 0 "J?" H 10128 6201 50  0000 L CNN
F 1 "TestPad" H 10128 6110 50  0000 L CNN
F 2 "CustomFootprints:TESTPAD" H 10000 6250 50  0001 C CNN
F 3 "" H 10000 6250 50  0001 C CNN
	1    9900 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 6350 9450 6350
Wire Wire Line
	9900 6150 9450 6150
Text Label 8300 6150 0    50   ~ 0
V_BUS
$Comp
L power:GND #PWR?
U 1 1 5E8C7D9E
P 9450 6350
F 0 "#PWR?" H 9450 6100 50  0001 C CNN
F 1 "GND" H 9600 6300 50  0000 C CNN
F 2 "" H 9450 6350 50  0001 C CNN
F 3 "" H 9450 6350 50  0001 C CNN
	1    9450 6350
	1    0    0    -1  
$EndComp
Wire Bus Line
	10450 5950 10450 6500
Wire Bus Line
	10450 6500 6050 6500
Wire Bus Line
	6050 6500 6050 5950
Text Notes 6100 6050 0    50   ~ 0
Test Pads\n
$Comp
L Device:R R?
U 1 1 5E96148B
P 7400 5300
F 0 "R?" H 7470 5346 50  0000 L CNN
F 1 "10k" H 7470 5255 50  0000 L CNN
F 2 "" V 7330 5300 50  0001 C CNN
F 3 "~" H 7400 5300 50  0001 C CNN
F 4 "311-10.0KCRCT-ND" H 7400 5300 50  0001 C CNN "digikey"
	1    7400 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E961491
P 7400 5050
F 0 "#PWR?" H 7400 4900 50  0001 C CNN
F 1 "+3.3V" H 7415 5223 50  0000 C CNN
F 2 "" H 7400 5050 50  0001 C CNN
F 3 "" H 7400 5050 50  0001 C CNN
	1    7400 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E961497
P 7700 5050
F 0 "#PWR?" H 7700 4900 50  0001 C CNN
F 1 "+3.3V" H 7715 5223 50  0000 C CNN
F 2 "" H 7700 5050 50  0001 C CNN
F 3 "" H 7700 5050 50  0001 C CNN
	1    7700 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E9614A0
P 7700 5300
F 0 "R?" H 7770 5346 50  0000 L CNN
F 1 "10k" H 7770 5255 50  0000 L CNN
F 2 "" V 7630 5300 50  0001 C CNN
F 3 "~" H 7700 5300 50  0001 C CNN
F 4 "311-10.0KCRCT-ND" H 7700 5300 50  0001 C CNN "digikey"
	1    7700 5300
	1    0    0    -1  
$EndComp
Text Label 7400 5800 1    50   ~ 0
CHG_STAT
Text Label 7700 5800 1    50   ~ 0
BAT_ALRT
Wire Wire Line
	7700 5450 7700 5800
Wire Wire Line
	7400 5450 7400 5800
Wire Bus Line
	6050 4700 7950 4700
Wire Bus Line
	6050 5900 7950 5900
Text Label 7150 4150 2    50   ~ 0
CHG_STAT
Text Label 7150 4050 2    50   ~ 0
BAT_ALRT
Wire Wire Line
	6750 4050 7150 4050
Wire Wire Line
	6750 4150 7150 4150
Text Label 7150 3950 2    50   ~ 0
REG_PG
Wire Wire Line
	6750 3950 7150 3950
$Comp
L Device:Q_PMOS_GSD Q?
U 1 1 5E7D2126
P 1500 1950
F 0 "Q?" H 1704 1996 50  0000 L CNN
F 1 "FDN340P" H 1704 1905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1700 2050 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/FDN340P-D.PDF" H 1500 1950 50  0001 C CNN
F 4 "FDN340PCT-ND" H 1500 1950 50  0001 C CNN "digikey"
	1    1500 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5E7D62AD
P 1300 2400
F 0 "D?" H 1300 2184 50  0000 C CNN
F 1 "FSV340FP" H 1300 2275 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 1300 2400 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/FSV360FP-D.PDF" H 1300 2400 50  0001 C CNN
	1    1300 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 2400 950  2400
Wire Wire Line
	950  2400 950  1950
Wire Wire Line
	950  1950 1300 1950
Wire Wire Line
	950  1950 600  1950
Connection ~ 950  1950
Text Label 600  1950 0    50   ~ 0
VBUS
Wire Wire Line
	1600 1600 1800 1600
Text Label 1800 1600 2    50   ~ 0
BAT+
Wire Wire Line
	1600 1600 1600 1750
Wire Wire Line
	1600 2400 1600 2150
$Comp
L Device:R R?
U 1 1 5E7FA228
P 950 2700
F 0 "R?" H 1020 2746 50  0000 L CNN
F 1 "100k" H 1020 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 880 2700 50  0001 C CNN
F 3 "~" H 950 2700 50  0001 C CNN
F 4 "CR0603-JW-104ELFCT-ND" H 950 2700 50  0001 C CNN "digikey"
	1    950  2700
	1    0    0    -1  
$EndComp
Connection ~ 950  2400
$Comp
L power:GND #PWR?
U 1 1 5E7FAFD4
P 950 3000
F 0 "#PWR?" H 950 2750 50  0001 C CNN
F 1 "GND" H 955 2827 50  0000 C CNN
F 2 "" H 950 3000 50  0001 C CNN
F 3 "" H 950 3000 50  0001 C CNN
	1    950  3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2400 950  2550
Wire Wire Line
	950  2850 950  3000
$Comp
L CustomParts:LP5912-3.3DRVT U?
U 1 1 5E80F034
P 3450 2450
F 0 "U?" H 3450 2815 50  0000 C CNN
F 1 "LP5912-3.3DRVT" H 3450 2724 50  0000 C CNN
F 2 "Package_SON:WSON-6-1EP_2x2mm_P0.65mm_EP1x1.6mm_ThermalVias" H 3400 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp5912.pdf" H 3400 2700 50  0001 C CNN
F 4 "296-44153-1-ND" H 3450 2450 50  0001 C CNN "digikey"
	1    3450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2800 3400 2900
Wire Wire Line
	3400 2900 3450 2900
Wire Wire Line
	3500 2900 3500 2800
$Comp
L power:GND #PWR?
U 1 1 5E812DCE
P 3450 2900
F 0 "#PWR?" H 3450 2650 50  0001 C CNN
F 1 "GND" H 3455 2727 50  0000 C CNN
F 2 "" H 3450 2900 50  0001 C CNN
F 3 "" H 3450 2900 50  0001 C CNN
	1    3450 2900
	1    0    0    -1  
$EndComp
Connection ~ 3450 2900
Wire Wire Line
	3450 2900 3500 2900
Connection ~ 1600 2400
$Comp
L power:+3.3V #PWR?
U 1 1 5E81FFF8
P 4650 2500
F 0 "#PWR?" H 4650 2350 50  0001 C CNN
F 1 "+3.3V" H 4665 2673 50  0000 C CNN
F 2 "" H 4650 2500 50  0001 C CNN
F 3 "" H 4650 2500 50  0001 C CNN
	1    4650 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E822D80
P 1500 2550
F 0 "C?" H 1615 2596 50  0000 L CNN
F 1 "0.1uF" H 1615 2505 50  0000 L CNN
F 2 "" H 1538 2400 50  0001 C CNN
F 3 "~" H 1500 2550 50  0001 C CNN
F 4 "1276-1006-1-ND" H 1500 2550 50  0001 C CNN "digikey"
	1    1500 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E824742
P 4500 2650
F 0 "C?" H 4615 2696 50  0000 L CNN
F 1 "0.1uF" H 4615 2605 50  0000 L CNN
F 2 "" H 4538 2500 50  0001 C CNN
F 3 "~" H 4500 2650 50  0001 C CNN
F 4 "1276-1006-1-ND" H 4500 2650 50  0001 C CNN "digikey"
	1    4500 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E825914
P 1500 2700
F 0 "#PWR?" H 1500 2450 50  0001 C CNN
F 1 "GND" H 1505 2527 50  0000 C CNN
F 2 "" H 1500 2700 50  0001 C CNN
F 3 "" H 1500 2700 50  0001 C CNN
	1    1500 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E825D20
P 4500 2800
F 0 "#PWR?" H 4500 2550 50  0001 C CNN
F 1 "GND" H 4505 2627 50  0000 C CNN
F 2 "" H 4500 2800 50  0001 C CNN
F 3 "" H 4500 2800 50  0001 C CNN
	1    4500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2400 1500 2400
Wire Wire Line
	3850 2500 4000 2500
Connection ~ 4500 2500
Wire Wire Line
	4500 2500 4650 2500
$Comp
L Device:C C?
U 1 1 5E8493EE
P 4000 2650
F 0 "C?" H 4115 2696 50  0000 L CNN
F 1 "10uF" H 4115 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4038 2500 50  0001 C CNN
F 3 "~" H 4000 2650 50  0001 C CNN
F 4 "478-10766-1-ND" H 4000 2650 50  0001 C CNN "digikey"
	1    4000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2500 4500 2500
Connection ~ 4000 2500
$Comp
L power:GND #PWR?
U 1 1 5E851A9C
P 4000 2800
F 0 "#PWR?" H 4000 2550 50  0001 C CNN
F 1 "GND" H 4005 2627 50  0000 C CNN
F 2 "" H 4000 2800 50  0001 C CNN
F 3 "" H 4000 2800 50  0001 C CNN
	1    4000 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E856FED
P 1000 3700
F 0 "C?" H 700 3750 50  0000 L CNN
F 1 "10uF" H 700 3650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1038 3550 50  0001 C CNN
F 3 "~" H 1000 3700 50  0001 C CNN
F 4 "478-10766-1-ND" H 1000 3700 50  0001 C CNN "digikey"
	1    1000 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E85A156
P 1950 2700
F 0 "#PWR?" H 1950 2450 50  0001 C CNN
F 1 "GND" H 1955 2527 50  0000 C CNN
F 2 "" H 1950 2700 50  0001 C CNN
F 3 "" H 1950 2700 50  0001 C CNN
	1    1950 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2400 4000 2400
Text Label 4450 2400 2    50   ~ 0
REG_PG
$Comp
L Device:R R?
U 1 1 5E85D388
P 4000 2100
F 0 "R?" H 4070 2146 50  0000 L CNN
F 1 "100k" H 4070 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3930 2100 50  0001 C CNN
F 3 "~" H 4000 2100 50  0001 C CNN
F 4 "CR0603-JW-104ELFCT-ND" H 4000 2100 50  0001 C CNN "digikey"
	1    4000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2250 4000 2400
Connection ~ 4000 2400
Wire Wire Line
	4000 2400 4450 2400
Wire Wire Line
	4000 1950 4000 1850
$Comp
L power:+3.3V #PWR?
U 1 1 5E863445
P 4000 1850
F 0 "#PWR?" H 4000 1700 50  0001 C CNN
F 1 "+3.3V" H 4015 2023 50  0000 C CNN
F 2 "" H 4000 1850 50  0001 C CNN
F 3 "" H 4000 1850 50  0001 C CNN
	1    4000 1850
	1    0    0    -1  
$EndComp
$Comp
L CustomParts:MAX17048 U?
U 1 1 5E8D870E
P 1950 3850
F 0 "U?" H 1150 4400 50  0000 C CNN
F 1 "MAX17048" H 1300 4300 50  0000 C CNN
F 2 "CustomFootprints:SON50P200X200X80-9N" H 1750 4350 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX17048-MAX17049.pdf" H 1750 4350 50  0001 C CNN
F 4 "MAX17048G+T10CT-ND" H 1950 3850 50  0001 C CNN "digikey"
	1    1950 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8F1098
P 1950 4350
F 0 "#PWR?" H 1950 4100 50  0001 C CNN
F 1 "GND" H 1955 4177 50  0000 C CNN
F 2 "" H 1950 4350 50  0001 C CNN
F 3 "" H 1950 4350 50  0001 C CNN
	1    1950 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4300 1850 4350
Wire Wire Line
	1850 4350 1950 4350
Wire Wire Line
	2050 4350 2050 4300
Connection ~ 1950 4350
Wire Wire Line
	1950 4350 2050 4350
Wire Wire Line
	1950 4300 1950 4350
Text Label 800  3550 0    50   ~ 0
BAT+
Text Label 1150 3950 0    50   ~ 0
I2C_SDA
Text Label 1150 3850 0    50   ~ 0
I2C_SCL
Wire Wire Line
	1150 3850 1500 3850
Wire Wire Line
	1150 3950 1500 3950
Wire Wire Line
	800  3550 1000 3550
Wire Wire Line
	1500 3650 1350 3650
Wire Wire Line
	1350 3650 1350 3550
Connection ~ 1350 3550
Wire Wire Line
	1350 3550 1500 3550
Connection ~ 1000 3550
Wire Wire Line
	1000 3550 1350 3550
$Comp
L power:GND #PWR?
U 1 1 5E91C7C2
P 1000 3850
F 0 "#PWR?" H 1000 3600 50  0001 C CNN
F 1 "GND" H 1005 3677 50  0000 C CNN
F 2 "" H 1000 3850 50  0001 C CNN
F 3 "" H 1000 3850 50  0001 C CNN
	1    1000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2400 1950 2400
$Comp
L power:GND #PWR?
U 1 1 5E922E03
P 2450 3950
F 0 "#PWR?" H 2450 3700 50  0001 C CNN
F 1 "GND" H 2455 3777 50  0000 C CNN
F 2 "" H 2450 3950 50  0001 C CNN
F 3 "" H 2450 3950 50  0001 C CNN
	1    2450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3900 2450 3900
Wire Wire Line
	2450 3900 2450 3950
$Comp
L Device:C C?
U 1 1 5E927609
P 1950 2550
F 0 "C?" H 1650 2600 50  0000 L CNN
F 1 "10uF" H 1650 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1988 2400 50  0001 C CNN
F 3 "~" H 1950 2550 50  0001 C CNN
F 4 "478-10766-1-ND" H 1950 2550 50  0001 C CNN "digikey"
	1    1950 2550
	-1   0    0    -1  
$EndComp
$Comp
L Battery_Management:MCP73832-2-OT U?
U 1 1 5E929134
P 3800 3750
F 0 "U?" H 2950 4150 50  0000 C CNN
F 1 "MCP73832-2-OT" H 3200 4050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3850 3500 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 3650 3700 50  0001 C CNN
F 4 "MCP73832T-2ACI/OTCT-ND" H 3800 3750 50  0001 C CNN "digikey"
	1    3800 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E92A171
P 3800 4050
F 0 "#PWR?" H 3800 3800 50  0001 C CNN
F 1 "GND" H 3805 3877 50  0000 C CNN
F 2 "" H 3800 4050 50  0001 C CNN
F 3 "" H 3800 4050 50  0001 C CNN
	1    3800 4050
	1    0    0    -1  
$EndComp
Text Label 3600 3350 0    50   ~ 0
VBUS
Wire Wire Line
	3600 3350 3800 3350
Wire Wire Line
	3800 3350 3800 3450
$Comp
L Device:C C?
U 1 1 5E93E85E
P 4750 3800
F 0 "C?" H 4865 3846 50  0000 L CNN
F 1 "10uF" H 4865 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4788 3650 50  0001 C CNN
F 3 "~" H 4750 3800 50  0001 C CNN
F 4 "478-10766-1-ND" H 4750 3800 50  0001 C CNN "digikey"
	1    4750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3650 4750 3650
Text Label 4750 3650 2    50   ~ 0
BAT+
$Comp
L power:GND #PWR?
U 1 1 5E944E6F
P 4750 3950
F 0 "#PWR?" H 4750 3700 50  0001 C CNN
F 1 "GND" H 4755 3777 50  0000 C CNN
F 2 "" H 4750 3950 50  0001 C CNN
F 3 "" H 4750 3950 50  0001 C CNN
	1    4750 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E945369
P 3200 4050
F 0 "R?" H 3270 4096 50  0000 L CNN
F 1 "10k" H 3270 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3130 4050 50  0001 C CNN
F 3 "~" H 3200 4050 50  0001 C CNN
F 4 "311-10.0KCRCT-ND" H 3200 4050 50  0001 C CNN "digikey"
	1    3200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3900 3200 3850
Wire Wire Line
	3200 3850 3400 3850
$Comp
L power:GND #PWR?
U 1 1 5E94B183
P 3200 4250
F 0 "#PWR?" H 3200 4000 50  0001 C CNN
F 1 "GND" H 3205 4077 50  0000 C CNN
F 2 "" H 3200 4250 50  0001 C CNN
F 3 "" H 3200 4250 50  0001 C CNN
	1    3200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4250 3200 4200
Text Notes 3450 4450 0    50   ~ 0
Charging Current of 100mA\n
Wire Wire Line
	4200 3850 4550 3850
Text Label 4550 3850 2    50   ~ 0
CHG_STAT
Text Label 2750 3800 2    50   ~ 0
BAT_ALRT
Wire Wire Line
	2400 3800 2750 3800
Connection ~ 1500 2400
Wire Wire Line
	1500 2400 1600 2400
Connection ~ 1950 2400
Wire Wire Line
	1950 2400 3050 2400
Text Label 2300 2500 0    50   ~ 0
BAT_ALRT
$Comp
L Device:R R?
U 1 1 5EA97DC3
P 2850 2500
F 0 "R?" H 2920 2546 50  0000 L CNN
F 1 "0" H 2920 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2780 2500 50  0001 C CNN
F 3 "~" H 2850 2500 50  0001 C CNN
F 4 "311-0.0GRCT-ND" H 2850 2500 50  0001 C CNN "digikey"
	1    2850 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 2500 2700 2500
Wire Wire Line
	3000 2500 3050 2500
$Comp
L Device:R R?
U 1 1 5EAB0896
P 2850 2750
F 0 "R?" H 2920 2796 50  0000 L CNN
F 1 "0 (NC)" H 2920 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2780 2750 50  0001 C CNN
F 3 "~" H 2850 2750 50  0001 C CNN
F 4 "311-0.0GRCT-ND" H 2850 2750 50  0001 C CNN "digikey"
	1    2850 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2500 3050 2750
Wire Wire Line
	3050 2750 3000 2750
Connection ~ 3050 2500
$Comp
L power:+3.3V #PWR?
U 1 1 5EAC2EA9
P 2450 2750
F 0 "#PWR?" H 2450 2600 50  0001 C CNN
F 1 "+3.3V" H 2465 2923 50  0000 C CNN
F 2 "" H 2450 2750 50  0001 C CNN
F 3 "" H 2450 2750 50  0001 C CNN
	1    2450 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2750 2700 2750
Wire Bus Line
	550  1400 5150 1400
Wire Bus Line
	5150 1400 5150 4650
Wire Bus Line
	5150 4650 550  4650
Wire Bus Line
	550  4650 550  1400
Text Notes 600  1500 0    50   ~ 0
Battery And Power Management
Wire Bus Line
	6050 5950 10450 5950
Wire Bus Line
	7950 4700 7950 5900
Wire Bus Line
	6050 4700 6050 5900
Wire Wire Line
	6200 5050 6200 5150
Wire Wire Line
	6500 5050 6500 5150
Wire Wire Line
	6800 5050 6800 5150
Wire Wire Line
	7100 5050 7100 5150
Wire Wire Line
	7400 5050 7400 5150
Wire Wire Line
	7700 5050 7700 5150
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5EB93E4E
P 850 950
F 0 "J?" H 950 900 50  0000 C CNN
F 1 " " H 1000 950 50  0000 C CNN
F 2 "CustomFootprints:BATTERY" H 850 950 50  0001 C CNN
F 3 "~" H 850 950 50  0001 C CNN
	1    850  950 
	-1   0    0    1   
$EndComp
Text Notes 600  700  0    50   ~ 0
Battery Connection\n\n
Wire Wire Line
	1050 850  1650 850 
Text Label 1650 850  2    50   ~ 0
BAT+
Wire Wire Line
	1050 950  1400 950 
Wire Wire Line
	1400 950  1400 1050
$Comp
L power:GND #PWR?
U 1 1 5EBBFEAF
P 1400 1050
F 0 "#PWR?" H 1400 800 50  0001 C CNN
F 1 "GND" H 1405 877 50  0000 C CNN
F 2 "" H 1400 1050 50  0001 C CNN
F 3 "" H 1400 1050 50  0001 C CNN
	1    1400 1050
	1    0    0    -1  
$EndComp
Wire Bus Line
	550  500  550  1350
Wire Bus Line
	550  1350 1850 1350
Wire Bus Line
	1850 1350 1850 500 
Wire Bus Line
	1850 500  550  500 
Text Notes 2000 1250 0    50   ~ 0
TODO: \n- Add touch screen to schematic (https://www.digikey.com/product-detail/en/newhaven-display-intl/NHD-1-8-128160EF-CTXI-T/NHD-1-8-128160EF-CTXI-T-ND/4429437)\n- select touchscreen controller\n- double check power management circuitry\n- implement accelerometer\n- go over checklist from last revision\n- add 2.8V power supply rail for the screen\n- add EN and BOOT switches
$Comp
L CustomParts:NHD-1.8-128160EF-CTXI#-T U?
U 1 1 5E79FF28
P 10500 2950
F 0 "U?" H 9900 4350 50  0000 L CNN
F 1 "NHD-1.8-128160EF-CTXI#-T" H 9900 4250 50  0000 L CNN
F 2 "LCD_NHD-1.8-128160EF-CTXI#-T" H 10500 2950 50  0001 L BNN
F 3 "http://www.newhavendisplay.com/specs/NHD-1.8-128160EF-CTXI-T.pdf" H 10500 2950 50  0001 L BNN
F 4 "NHD-1.8-128160EF-CTXI#-T-ND" H 10500 2950 50  0001 C CNN "digikey"
	1    10500 2950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
