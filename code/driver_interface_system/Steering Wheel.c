char dat[10],u,t,h,th,adc,rpm;                          // buffer for receving/sending messages
char i,rs=0;
int count,j,value;
char teeth;             // buffer for receving/sending messages
int volt,etmp,as,ts;

int seg7(int num)
{
int val[]={0x3f,0x06,0x5b,0x4f,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
return(val[num]);
}

int gear(int num)
{
int val[]={0xFE,0x06,0xDA,0xCE,0x66,0xEC,0xFC,0x86,0xFE,0xEE};
return(val[num]);
}

segl()
{
th=value/1000;
h=value/100%10;
t=value/10%10;
u=value%10;

RC1_bit=0;
RC0_bit=0;
PORTE=seg7(th);
delay_ms(1);
RC1_bit=0;
RC0_bit=1;
PORTE=seg7(h);
delay_ms(1);
RC1_bit=1;
RC0_bit=0;
PORTE=seg7(t);
delay_ms(1);
RC1_bit=1;
RC0_bit=1;
PORTE=seg7(u);
}

segr()
{

th=value/1000;
h=value/100%10;
t=value/10%10;
u=value%10;

RC3_bit=0;
RC2_bit=0;
PORTD=seg7(th);
delay_ms(1);
RC3_bit=0;
RC2_bit=1;
PORTD=seg7(h);
delay_ms(1);
RC3_bit=1;
RC2_bit=0;
PORTD=seg7(t);delay_ms(1);
RC3_bit=1;
RC2_bit=1;
PORTD=seg7(u);
}

gps()
{
j=ADC_READ(1);
      if (j>=0x00 && j<0x19)
      dat[0]=1;
      else if (j>=0x19 && j<0x70)
      dat[0]=0;
      else if (j>=0x70 && j<0x10E)
      dat[0]=2;
      else if (j>=0X10E && j<0X1C2)
      dat[0]=3;
      else if (j>=0X1C2 && j<0X280)
      dat[0]=4;
      else if (j>=0X280 && j<0X35C)
      dat[0]=5;
      else if (j>=0X35C && j<0x400)
      dat[0]=6;

}

voltage()
{
    j= ADC_Read(4);
    volt=- 3.1e-006*j*j + 0.14*j - 0.19;
    dat[2]=volt;

}

et()
{
   j= ADC_Read(3);                                 //engine temp begins
   etmp= (8.1*j*j/100000 + 0.042*j + 0.19);
   dat[2]=etmp;
}

speed()
{
   PORTD=9;
   as=teeth/15*15.0796447;
   ts=as*18/5;
   dat[1]=ts;
   TMR0L=0x00;


}


void main(){
  long cnt = 0;
  T0CON=0XF8; //    timer0 on, 8 bit mode, counter, falling edge, no prescalar

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
  TRISC5_BIT=0;

  while (1){


      PORTF=0xaa;   // rpm value
      PORTB=gear(dat[0]%10);   // gear position value

      dat[1]=adc;
      //segr();
      switch(dat[1])
      {
      case 1:
      {value=dat[2];segr();
      break;}
      case 2:
      {value=dat[2]*10;segr();
      break;}
      case 3:
      {value=dat[2];segr();
      break;}
      case 4:
      {value=dat[2];segr();}
      break;
      }

    j=ADC_Read(0);
    if(j>=0 && j<204)
    {dat[1]=adc=1;
    }
    else if(j>=204 && j<409)
    {dat[1]=adc=2;
     }
    else if(j>=409 && j<612)
    {dat[1]=adc=3;
     }
    else if(j>=612 && j<816)
    {dat[1]=adc=4;
    }
    else if(j>=816 && j<1024)
    {dat[1]=adc=5;
    }

    }


}