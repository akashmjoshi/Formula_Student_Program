#define I2C_READ    1
#define I2C_WRITE   0

//----------------------------------------------------
// LCD module connections
sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;

// Variable definitions
unsigned  int SensorLow;      //' Raw temp. low byte
unsigned  int SensorHigh;     //' Raw temp. high byte
unsigned  int SensorRaw;      //' Raw temp. word

double Sensor;                //' Real temp (floating point)
unsigned  char SensorString[9];
unsigned  char SensorString2[7];
unsigned  char DisplayString[9];
unsigned  char PEC;           //' Control byte (read but not used)
unsigned  char *PosDecPoint;  //' Decimal point position

unsigned int SA= 0x05A;       // 0x00 calls all on bus, 0x5A is factory default address
unsigned int DTemp0 = 0x06;   // Object2 Temp $08 Object1 Temp $07  Device Ambient Temp $06
unsigned int OTemp1 = 0x07;   // Ambient Temp is actually the devices own temp
unsigned int OTemp2 = 0x08;
unsigned  char i;

void Read_temp(){
    I2C1_Stop();
    I2C1_Start();            //' issue I2C start signal
    I2C1_Wr(0x00<<1 + I2C_WRITE);
    I2C1_Wr(OTemp1);         //' send command
    I2C1_Repeated_Start();   //' issue I2C signal repeated start
    I2C1_Wr(0x00<<1 + I2C_READ); //' send address (device address + R)

    if (I2C1_Is_Idle()){
        SensorLow = I2C1_Rd(0);  //' Read temp. low byte
        SensorHigh = I2C1_Rd(0); //' Read temp. high byte
        PEC = I2C1_Rd(1);    //' Read PEC
    }
    I2C1_Stop();             //' issue I2C stop signal
    SensorRaw = SensorLow + (SensorHigh<<8); //' Build temp. word
}

void Convert_raw(){
        Sensor = (SensorRaw * 0.02 - 273.15)*0.95; //' Raw temp to Celsius
        FloatToStr(Sensor, SensorString); //' Float to string
        SensorString[5]='\0';
}

void main(){
char pp;
static  char buf[16];

      TRISA = 0b00000000;      //' IOport setting ,read(0,1,2,3,(4 not use))
      TRISC = 0b00000000;      //' IOport setting ,ALLout
      TRISE = 0b00000000;      //' IOport setting ,ALLout
      OSCCON = 0b01110000;

      //' Initialize LCD display
      Lcd_Init(); //' Initialize Lcd
      Lcd_Cmd(_LCD_CLEAR);      //' Clear display
      Lcd_Cmd(_LCD_CURSOR_OFF); //' Cursor off

      Lcd_Out(1,1,"Count:");
      Delay_ms(500);
      //' Initialize SMBus
      I2C1_Init(50000);
      Delay_ms(200);
      SSPSTAT.CKE=1;
      pp=0;

      while(1){
         pp=pp+1;
         if(pp>50) pp=0;
         WordToStr(pp, buf);
         Lcd_Out(1, 7, &buf[3]);
         Lcd_Out(2,7,"\xDFC");

         Read_temp(); //' Read temp.
         Convert_raw();
         Lcd_Out(2, 1, SensorString);
         Delay_ms(250);
      }
}