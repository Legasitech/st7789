> WARNING: I do not take responsibility if you damage your board or property. This guide is for educational purposes only — proceed at your own risk.


This port of Sor3nts diy flipper repo is fully complete and ready to be built, using a esp32 s3, a 2.8 ili9341 tft and 6 button user interface. The correct pinout can be found in the boards.h file under furi hal. I have not chnaged the core fucntionality, i simply modified it for a diy device as opposed to the base repo which is set for a lillygo device. 

I will keep the repo sycned weekly and working/ up to date.

I take no resposnibilty for your use of this port or any action or consequence resulting from your use of the code. Follow the law. 

!!!!!!!SCREENS!!!!!!
THE BASE BRANCH IS SETUP FOR A ILI9341, 2.8 OR 2.4, IF THAT IS YOUR SCREEN JUST BUILD THE NORMAL/ MAIN BRANCH, OTHERWISE SELECT THE BRANCH THAT CORRESPONDS TO THE SCREEN DRIVER YOU HAVE, YOU MAY NEED TO ADJUST THE DISPLAY PIXELS IN COMPONENTS>FURI HAL>BOARDS> 6BTN FILE IF YOUR SCREEN IS NOT THE COMMON SIZE, ALTHOUGH THIS IS NOT VERY SIGNIFICANT, IT MAY JUST BE A TOUCH OFF, PINS, BUTTONS AND USER INTERFACE OTHERWISE REMIANS UNCHANCHED. IF YOU WANT ADDITIONAL DRIVERS ADDED OPEN AN ISSUE AND ILL DO MY BEST. 


## Buttons
| Signal      | GPIO |
|-------------|------|
| Up          | 41   |
| Down        | 40   |
| Left        | 38   |
| Right       | 39   |
| OK / Boot   | 0    |
| Back        | 4    |
| Battery ADC | 2    | use with dual 100kohm resistors to ground and battery positive, pin goes in the middle

## ILI9341
| Signal | GPIO | Notes                  |
|--------|------|------------------------|
| MOSI   | 17   |                        |
| SCLK   | 18   |                        |
| DC     | 15   |                        |
| CS     | 7    |                        |
| RST    | 16   |                        |
| BL     | 6    | Active-high            |
| —      | —    | BGR order, swap XY     |
| —      | —    | FG 0xA0FD / BG 0x0000  |

## SD Card 
| Signal | GPIO |
|--------|------|
| CS     | 3    |
| MISO   | 8    |
| MOSI   | 17   |
| SCLK   | 18   |

## CC1101 SubGHz (SPI3_HOST)
| Signal | GPIO |
|--------|------|
| SCK    | 13   |
| CSN    | 46   |
| MISO   | 11   |
| MOSI   | 12   |
| GDO0   | 9    |
| GDO2   | 10   |

## NRF24L01 (shared SPI bus with CC1101)
| Signal | GPIO |
|--------|------|
| SCK    | 13   |
| MISO   | 11   |
| MOSI   | 12   |
| CSN    | 14   |
| CE     | 21   |

## PN532 NFC (I2C_NUM_0)
| Signal | GPIO |
|--------|------|
| SCL    | 42   |
| SDA    | 47   |


## IR
| Signal | GPIO |
|--------|------|
| TX     | 5    |

## WS2812 RGB LED
| Signal | GPIO | Notes  |
|--------|------|--------|
| Data   | 48   | 1 LED  |
