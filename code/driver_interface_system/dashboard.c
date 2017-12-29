char dat[9],teeth;             // buffer for receving/sending messages
int i,j,volt,etmp,as,ts;
int count=0;
sbit  rs485_rxtx_pin at RC5_bit;             // set transcieve pin
sbit  rs485_rxtx_pin_direction at TRISC5_bit;   // set transcieve pin direction

// Interrupt routine
void interrupt() {
 RS485Slave_Receive(dat);
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
counter()
{
         count++;
         dat[2]=count;
}

void main() {

  
  T0CON=0XF8;
  T1CON=0x03;
  TRISA=0xff;
  TRISC5_BIT=0;
  ADCON1=0x00;
  CMCON=0x07;
  PORTB = 0;
  PORTD = 0;
  TRISB = 0;
  TRISD = 0;


  UART1_Init(9600);                  // initialize UART1 module
  Delay_ms(100);
  RS485Slave_Init(160);              // Intialize MCU as slave, address 160

  dat[4] = 0;                        // ensure that message received flag is 0
  dat[5] = 0;                        // ensure that message received flag is 0
  dat[6] = 0;                        // ensure that error flag is 0

  RCIE_bit = 1;                      // enable interrupt on UART1 receive
  TXIE_bit = 0;                      // disable interrupt on UART1 transmit
  PEIE_bit = 1;                      // enable peripheral interrupts
  GIE_bit = 1;                       // enable all interrupts

  while (1) {
  
   ts=as=0;
   teeth=TMR0L*10;
   TMR1L=teeth;

  
    if (dat[5])  {                   // if an error detected, signal it by
      dat[5] = 0;
    }
    if (dat[4]) {                    // upon completed valid message receive
      dat[4] = 0;                     //   data[4] is set to 0xFF  
      gps();
      switch(dat[1])
      {
      case 1:
        voltage();
        break;
      case 2:
        et();
        break;
      case 4:
        counter();
        break;
      }
       
      speed();
      dat[0]=125;
      TMR1L=0x00;
      Delay_ms(1);
      RS485Slave_Send(dat,3);        //   and send it back to master
    }
  }
}