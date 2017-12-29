#include <built_in.h>
int i;
char ur,tr,hr,thr,ul,tl,hl,thl;                          // buffer for receving/sending messages
int count,j,value;

int seg7(int num)
{
int val[]={0x3f,0x06,0x5b,0x4f,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
return(val[num]);
}

segr()
{
thr=value/1000;
hr=value/100%10;
tr=value/10%10;
ur=value%10;

RC3_bit=0;
RC2_bit=0;
PORTD=seg7(thr);
delay_us(1000);
RC3_bit=0;
RC2_bit=1;
PORTD=seg7(hr);
delay_us(1000);
RC3_bit=1;
RC2_bit=0;
PORTD=seg7(tr);
delay_us(1000);
RC3_bit=1;
RC2_bit=1;
PORTD=seg7(ur);
delay_us(1000);
}

segl()
{
thl=value/1000;
hl=value/100%10;
tl=value/10%10;
ul=value%10;

RC1_bit=0;
RC0_bit=0;
PORTE=seg7(thl);
delay_us(1000);
RC1_bit=0;
RC0_bit=1;
PORTE=seg7(hl);
delay_us(1000);
RC1_bit=1;
RC0_bit=0;
PORTE=seg7(tl);
delay_us(1000);
RC1_bit=1;
RC0_bit=1;
PORTE=seg7(ul);
delay_us(1000);
}

void main() 
{
  TRISA=0xFF;
  ADCON1=0x00;

  TRISF  = 0;
  TRISE  = 0;
  TRISB  = 0;
  TRISD  = 0;
  TRISC0_BIT=0;
  TRISC1_BIT=0;
  TRISC2_BIT=0;
  TRISC3_BIT=0;
  TRISC4_BIT=0;

TRISB = 0;
PORTb =0xff;

while(1)
{
PORTB=0xAA;
PORTF=0xAA;
PORTE=0xAA;

//value=1234;
//segl();
//value=4444;
//segr();

}
}