#line 1 "D:/Documents and Settings/Administrator/My Documents/Downloads/working/working/PLL test/test.c"
#line 1 "d:/program files/mikroelektronika/mikroc pro for dspic/include/built_in.h"
#line 5 "D:/Documents and Settings/Administrator/My Documents/Downloads/working/working/PLL test/test.c"
 void pll_init(void)
 {
 CLKLOCK_bit=0;
 PORTG=0xffff;
  ((char *)&OSCCON)[1] =0x78;
  ((char *)&OSCCON)[1] =0x9A;
 OSCCONbits.NOSC=0x03;
  ((char *)&OSCCON)[0] =0x46;
  ((char *)&OSCCON)[0] =0x57;
 CLKDIVbits.PLLPRE=0;
 CLKDIVbits.PLLPOST=0;
 PLLFBDbits.PLLDIV=0x1E;
 OSWEN_bit=1;
 delay_ms(100);
 while(OSWEN_bit==1);
 PORTG=0x2000;
 while(LOCK_bit==0);
 }

 void chop(unsigned int y)
 {
 unsigned int a,b,c,d,e,f,i,j,p,q,r;
 d=0;
 e=0;
 f=0;
 a=y;
 b=a/10;
 c=a%10;
 d=b/10;
 e=b%10;
 f=d/10;
 p=d%10;

  ((char *)&U1TXREG)[0] =f+48;

 delay_ms(7);
  ((char *)&U1TXREG)[0] =p+48;

 delay_ms(7);
  ((char *)&U1TXREG)[0] =e+48;

 delay_ms(7);
  ((char *)&U1TXREG)[0] =c+48;

 delay_ms(7);
  ((char *)&U1TXREG)[0] ='\t';

 delay_ms(7);

 }








 void main()
 {
 unsigned char x,hi,lo,txt1[28],txt2[28],take[4];
 long int a,b,c;
 float y,z;
 unsigned int i,j;
 char txt[6];


 TRISG=0x0000;
 TRISD.B0=1;

 ADC1_Init_Advanced(_ADC_12bit, _ADC_INTERNAL_REF);
 pll_init();
 UART2_Init(9600);
 UART1_Init(57600);
 UART2_Write('E');
 UART2_Write('\r');
 delay_ms(100);
 PORTG=0x4000;
 delay_ms(100);
 UART2_Write_Text("IPA");
 UART2_Write('\r');
 delay_ms(100);
 UART2_Write_Text("ECS");
 UART2_Write('\r');
 delay_ms(100);

 UART2_Write_Text("SBD ");
 UART2_Write_Text("$0D0000");
 UART2_Write('\r');
 delay_ms(100);
 UART2_Init(230400);

 PORTG=0xf000;

 while(1)
 {

 while(RD0_bit);

 UART2_Write_Text("OPW TEST.csv");
 UART2_Write('\r');

 c=0;

 while(c<100)
 {
 i=0;
 j=0;


 a = ADC1_Get_Sample(0);
 y=0.024*a;
 IntToStr(y,txt);
 for(i=0;i<6;i++,j++)
 {
 txt1[j]=txt[i];
 txt2[j]=txt[i];
 }
 txt2[j]='\t';
 txt1[j] =',';
 j++;




 a = ADC1_Get_Sample(1);
 y=0.024*a;
 IntToStr(y,txt);

 for(i=0;i<6;i++,j++)
 {
 txt1[j]=txt[i];
 txt2[j]=txt[i];
 }
 txt2[j]='\t';
 txt1[j] =',';
 j++;


 a = ADC1_Get_Sample(4);
 z=a*a;
 y=0.0000031*z-0.038*a+130;
 IntToStr(y,txt);

 for(i=0;i<6;i++,j++)
 {
 txt1[j]=txt[i];
 txt2[j]=txt[i];
 }
 txt2[j]='\t';
 txt1[j] =',';
 j++;



 a = ADC1_Get_Sample(3);
 y=2.9*a;
 IntToStr(y,txt);

 for(i=0;i<6;i++,j++)
 {
 txt1[j]=txt[i];
 txt2[j]=txt[i];
 }
 txt2[j]='\t';
 txt1[j] ='\n';
 j++;



 while(RD0_bit);

 PORTG=0x1000;

 UART2_Write_Text("WRF 28");
 UART2_Write('\r');
 for(i=0;i<28;i++)
 {
 UART2_Write(txt1[i]);
 UART1_Write(txt2[i]);
 }
 UART2_Write('\r');

 c++;

 }

 while(RD0_bit);

 UART2_Write_Text("CLF test.csv");
 UART2_Write('\r');
 }

 }
