//---------------------------------------------------------
/*
  NHD_1_8_128160EF_CTXI_mega.ino
  Program for writing to Newhaven Display 1.8" TFT with ILI9163 controller

  (c)2013 Mike LaVine - Newhaven Display International, LLC.

        This program is free software; you can redistribute it and/or modify
        it under the terms of the GNU General Public License as published by
        the Free Software Foundation; either version 2 of the License, or
        (at your option) any later version.

        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.
*/
//---------------------------------------------------------

// The 8 bit data bus is connected to PORTA of the Arduino Mega2560
// 5V voltage regulator on Arduino Mega has been replaced with a 3.3V regulator to provide 3.3V logic

int DC = LCD_DC;   // D/C signal connected to Arduino digital pin 30
int WR = LCD_WR;   // /WR signal connected to Arduino digital pin 31
int RD = LCD_RD;   // /RD signal connected to Arduino digital pin 32
int RST = LCD_RST; // /RST signal connected to Arduino digital pin 33

// /CS signal tied to ground

void writeDataBus(unsigned char c)
{
  digitalWrite(LCD_DB0, bitRead(c, 0));
  digitalWrite(LCD_DB1, bitRead(c, 1));
  digitalWrite(LCD_DB2, bitRead(c, 2));
  digitalWrite(LCD_DB3, bitRead(c, 3));
  digitalWrite(LCD_DB4, bitRead(c, 4));
  digitalWrite(LCD_DB5, bitRead(c, 5));
  digitalWrite(LCD_DB6, bitRead(c, 6));
  digitalWrite(LCD_DB7, bitRead(c, 7));
}

void comm_out(unsigned char c)
{
  digitalWrite(LCD_CS, LOW);
  digitalWrite(DC, LOW);
  writeDataBus(c);
  digitalWrite(WR, LOW);
  delayMicroseconds(5);
  digitalWrite(WR, HIGH);
  delayMicroseconds(5);
}

void data_out(unsigned char d)
{
  digitalWrite(DC, HIGH);
  writeDataBus(d);
  digitalWrite(WR, LOW);
  delayMicroseconds(5);
  digitalWrite(WR, HIGH);
  delayMicroseconds(5);
}
void disp()
{
  unsigned int i;
  comm_out(0x2C);             //command to begin writing to frame memory
  for (i = 0; i < 20480; i++) //fill screen with red pixels
  {
    comm_out(0x2C);
    data_out(0xFF);
    data_out(0x00);
    data_out(0x00);
  }
  Serial.println("Filled RED");
  for (i = 0; i < 20480; i++) //fill screen with green pixels
  {
    data_out(0x00);
    data_out(0xFF);
    data_out(0x00);
  }
  Serial.println("Filled GREEN");
  for (i = 0; i < 20480; i++) //fill screen with blue pixels
  {
    data_out(0x00);
    data_out(0x00);
    data_out(0xFF);
  }
  Serial.println("Filled BLUE");
  digitalWrite(LCD_CS, HIGH);
}

void initLCD()
{
  //  DDRC = 0xFF;
  //  PORTC = 0x00;
  //  DDRA = 0xFF;
  //  PORTA = 0x00;

  pinMode(LCD_DB0, OUTPUT);
  pinMode(LCD_DB1, OUTPUT);
  pinMode(LCD_DB2, OUTPUT);
  pinMode(LCD_DB3, OUTPUT);
  pinMode(LCD_DB4, OUTPUT);
  pinMode(LCD_DB5, OUTPUT);
  pinMode(LCD_DB6, OUTPUT);
  pinMode(LCD_DB7, OUTPUT);

  pinMode(LCD_EN, OUTPUT);
  digitalWrite(LCD_EN, HIGH);

  delay(150);

  pinMode(LCD_CS, OUTPUT);
  digitalWrite(LCD_CS, LOW);

  pinMode(LCD_WR, OUTPUT);
  digitalWrite(WR, LOW);

  pinMode(LCD_RD, OUTPUT);
  digitalWrite(RD, HIGH);

  pinMode(LCD_DC, OUTPUT);

  pinMode(LCD_RST, OUTPUT);
  digitalWrite(LCD_RST, LOW);
  delay(150);
  pinMode(LCD_RST, HIGH);
  delay(150);

  comm_out(0x11); //exit SLEEP mode

  delay(100);


  comm_out(0x26); data_out(0x04);
  comm_out(0xF2); data_out(0x00);
  comm_out(0xB1); data_out(0x0A); data_out(0x14);
  comm_out(0xC0); data_out(0x0A); data_out(0x00);
  comm_out(0xC1); data_out(0x02);
  comm_out(0xC5); data_out(0x2F); data_out(0x3E);
  comm_out(0xC7); data_out(0x40);
  comm_out(0x2A);
  data_out(0x00);
  data_out(0x00);
  data_out(0x00);
  data_out(0x7F);
  comm_out(0x2B);
  data_out(0x00);
  data_out(0x00);
  data_out(0x00);
  data_out(0x9F);
  comm_out(0x36); data_out(0x48);
  comm_out(0x3A); data_out(0xC5);
  comm_out(0x29);
  comm_out(0x2C);


  delay(10);
}