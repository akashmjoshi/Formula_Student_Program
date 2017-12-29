#line 1 "U:/Electronics/ORION 2013/Steering Wheel/i2c.c"





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


unsigned int SensorLow;
unsigned int SensorHigh;
unsigned int SensorRaw;

double Sensor;
unsigned char SensorString[9];
unsigned char SensorString2[7];
unsigned char DisplayString[9];
unsigned char PEC;
unsigned char *PosDecPoint;

unsigned int SA= 0x05A;
unsigned int DTemp0 = 0x06;
unsigned int OTemp1 = 0x07;
unsigned int OTemp2 = 0x08;
unsigned char i;

void Read_temp(){
 I2C1_Stop();
 I2C1_Start();
 I2C1_Wr(0x00<<1 +  0 );
 I2C1_Wr(OTemp1);
 I2C1_Repeated_Start();
 I2C1_Wr(0x00<<1 +  1 );

 if (I2C1_Is_Idle()){
 SensorLow = I2C1_Rd(0);
 SensorHigh = I2C1_Rd(0);
 PEC = I2C1_Rd(1);
 }
 I2C1_Stop();
 SensorRaw = SensorLow + (SensorHigh<<8);
}

void Convert_raw(){
 Sensor = (SensorRaw * 0.02 - 273.15)*0.95;
 FloatToStr(Sensor, SensorString);
 SensorString[5]='\0';
}

void main(){
char pp;
static char buf[16];

 TRISA = 0b00000000;
 TRISC = 0b00000000;
 TRISE = 0b00000000;
 OSCCON = 0b01110000;


 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);

 Lcd_Out(1,1,"Count:");
 Delay_ms(500);

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

 Read_temp();
 Convert_raw();
 Lcd_Out(2, 1, SensorString);
 Delay_ms(250);
 }
}
