//Decleration and Initialization
#include <built_in.h>
char ur,tr,hr,thr,ul,tl,hl,thl;                          //segment choping variables
int count,i,j,value,rpm,gearp;
char teeth;
int volt,etmp,as,ts;

int seg7(int num)
{
int val[]={0x3f,0x06,0x5b,0x4f,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
return(val[num]);
}

int gear(int num)
{
int val[]={0x54,0x06,0xDA,0xCE,0x66,0xEC,0xFC,0x86,0xFE,0xEE};
return(val[num]);
}

int fun(int num)
{
int val[]={0x7f,0x3f,0x1f,0x1e,0x1c,0x18,0x10,0x18,0x1c,0x1e,0x1f,0x3f,0x7f,0x00,0x7f};
return(val[num]);
}

int bar(int num)
{
int val[]={0x81,0xc3,0xe7,0xff,0xe7,0xc3,0x81,0x81,0xc3,0xe7,0xff,0xe7,0xc3,0x81};
return(val[num]);
}

int gps()
{
j=ADC_READ(3);

      if (j>=0 &&j<88)
      {PORTB=gear(1);
      return 1;}
     // else if (j>=151 && j<159)
     // {PORTB=gear(0);
     // return 0;}
      else if (j>=89 && j<284)
      {PORTB=gear(2);
      return 2;}
      else if (j>=285 && j<499)
      {PORTB=gear(3);
      return 3;}
      else if (j>=500 && j<700)
      {PORTB=gear(4);
      return 4;}
      else if (j>=700 && j<897)
      {PORTB=gear(5);
      return 5;}
      else if (j>=898 && j<1020)
      {PORTB=gear(6);
      return 6;}
}

int et()
{
   j= ADC_Read(0);                                 //engine temp begins
   return etmp= (6.4*j*j/100000 +-0.19*j + 126);
   
}

speed()
{
 value=TMR1H;

 
  //use timer 1 for speed anf fuel used calculations
}

fuelused()
{
   //use timer 1 for speed anf fuel used calculations
}

rpmlights(int num)
{
  switch(num)
  {
  case 1: PORTF=0x01; break;
  case 2: PORTF=0x01; break;
  case 3: PORTF=0x01; break;
  case 4: PORTF=0x03; break;
  case 5: PORTF=0x07; break;
  case 6: PORTF=0x1f; break;
  case 7: PORTF=0x3f; break;
  case 8: PORTF=0x7F; break;
  case 9: PORTF=0xff; break;
  case 10: PORTF=0x1c; break;
  case 11: PORTF=0x1C; break;
  case 12: PORTF=0x1C; break;
  }
  
}

segr()
{
thr=value/1000;
hr=value/100%10;
tr=value/10%10;
ur=value%10;

if(value>999)
{
RC7_bit=1;
RC6_bit=0;
RC5_bit=1;
RC4_bit=1;
PORTD=seg7(thr);
delay_us(1000);
}

if(value>99)
{
RC7_bit=0;
RC6_bit=1;
RC5_bit=1;
RC4_bit=1;
PORTD=seg7(hr);
delay_us(1000);
}

if(value>9)
{
RC7_bit=1;
RC6_bit=1;
RC5_bit=1;
RC4_bit=0;
PORTD=seg7(tr);
delay_us(1000);
}

if(value>=0)
{
RC7_bit=1;
RC6_bit=1;
RC5_bit=0;
RC4_bit=1;
PORTD=seg7(ur);
//delay_us(2500);
}
}

segl()
{
thl=value/1000;
hl=(value/100)%10;
tl=value/10%10;
ul=value%10;

if(value>999)
{
RG3_bit=1;
RG2_bit=0;
RG1_bit=1;
RG0_bit=1;

PORTE=seg7(thl);
delay_us(1000);
}
if(value>99)
{
RG3_bit=1;
RG2_bit=1;
RG1_bit=1;
RG0_bit=0;
PORTE=seg7(hl);
delay_us(1000);
}
if(value>9)
{
RG3_bit=1;
RG2_bit=1;
RG1_bit=0;
RG0_bit=1;
PORTE=seg7(tl);
delay_us(1000);
}
if(value>=0)
{
RG3_bit=0;
RG2_bit=1;
RG1_bit=1;
RG0_bit=1;
PORTE=seg7(ul);
//delay_us(2500);
}
}

void coolon()
{

RG3_bit=1;
RG2_bit=0;
RG1_bit=1;
RG0_bit=1;

PORTE=0x39;
delay_us(4000);


RG3_bit=1;
RG2_bit=1;
RG1_bit=0;
RG0_bit=1;
PORTE=0x3F;
delay_us(4000);

RG3_bit=0;
RG2_bit=1;
RG1_bit=1;
RG0_bit=1;
PORTE=0x54;
delay_us(4000);
}

void cooloff()
{

RG3_bit=1;
RG2_bit=0;
RG1_bit=1;
RG0_bit=1;

PORTE=0x39;
delay_us(4000);


RG3_bit=1;
RG2_bit=1;
RG1_bit=0;
RG0_bit=1;
PORTE=0x3F;
delay_us(4000);

RG3_bit=0;
RG2_bit=1;
RG1_bit=1;
RG0_bit=1;
PORTE=0x71;
delay_us(4000);
}

void engoff()
{

RC7_bit=1;
RC6_bit=0;
RC5_bit=1;
RC4_bit=1;

PORTD=0x79;
delay_us(4000);


RC7_bit=1;
RC6_bit=1;
RC5_bit=1;
RC4_bit=0;
PORTD=0x3F;
delay_us(4000);

RC7_bit=1;
RC6_bit=1;
RC5_bit=0;
RC4_bit=1;
PORTD=0x71;
delay_us(4000);
}


void main() {
  T0CON=0XF8; //    timer0 on, 8 bit mode, counter, falling edge, with no prescalar
  T1CON=0x0B;
  TRISA=0xFF;
  ADCON1=0x00;

  TRISF  = 0;
  TRISE  = 0;
  TRISB  = 0;
  TRISD  = 0;
  TRISC0_BIT=1;
  TRISC1_BIT=1;
  TRISC2_BIT=1;
  TRISC3_BIT=1;   // 1's inputs
  TRISC4_BIT=0;
  TRISC5_BIT=0;
  TRISC6_BIT=0;
  TRISC7_BIT=0;   // 0's outputs
  TRISG  = 0x00;
  

  
for(i=0; i<=14; i++)
{
PORTF=bar(i);
PORTB=fun(i);
PORTD=PORTE=fun(i);
PORTG=0X00;
RC4_bit=RC5_bit=RC6_bit=RC7_bit=0;
delay_ms(60);
}
PORTF = 0x00;




  
while(1)
{ 
  DELAY_MS(16);
  gearp=gps();


  teeth= TMR0L;
  value=teeth*60;
  rpm=value/1000;

  while(value <1000)
  {engoff();
  teeth= TMR0L;
  value=teeth*60;
  if(ADC_Read(1)<= 350)
  cooloff();
  else
  coolon();
  }

  rpmlights(rpm);


  value = et();
  segr();
  
  fuelused();
  speed();
  segl();



  // write code for right rotary switch//

  TMR0L=0x00;
  TMR1H=0x00;
  
  
 


}}