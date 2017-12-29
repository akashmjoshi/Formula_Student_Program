
_interrupt:

;dashboard.c,8 :: 		void interrupt() {
;dashboard.c,9 :: 		RS485Slave_Receive(dat);
	MOVLW       _dat+0
	MOVWF       FARG_RS485Slave_Receive_data_buffer+0 
	MOVLW       hi_addr(_dat+0)
	MOVWF       FARG_RS485Slave_Receive_data_buffer+1 
	CALL        _RS485Slave_Receive+0, 0
;dashboard.c,10 :: 		}
L__interrupt45:
	RETFIE      1
; end of _interrupt

_gps:

;dashboard.c,11 :: 		gps()
;dashboard.c,13 :: 		j=ADC_READ(1);
	MOVLW       1
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;dashboard.c,14 :: 		if (j>=0x00 && j<0x19)
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps46
	MOVLW       0
	SUBWF       R0, 0 
L__gps46:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps2
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps47
	MOVLW       25
	SUBWF       _j+0, 0 
L__gps47:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps2
L__gps44:
;dashboard.c,15 :: 		dat[0]=1;
	MOVLW       1
	MOVWF       _dat+0 
	GOTO        L_gps3
L_gps2:
;dashboard.c,16 :: 		else if (j>=0x19 && j<0x70)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps48
	MOVLW       25
	SUBWF       _j+0, 0 
L__gps48:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps6
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps49
	MOVLW       112
	SUBWF       _j+0, 0 
L__gps49:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps6
L__gps43:
;dashboard.c,17 :: 		dat[0]=0;
	CLRF        _dat+0 
	GOTO        L_gps7
L_gps6:
;dashboard.c,18 :: 		else if (j>=0x70 && j<0x10E)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps50
	MOVLW       112
	SUBWF       _j+0, 0 
L__gps50:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps10
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps51
	MOVLW       14
	SUBWF       _j+0, 0 
L__gps51:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps10
L__gps42:
;dashboard.c,19 :: 		dat[0]=2;
	MOVLW       2
	MOVWF       _dat+0 
	GOTO        L_gps11
L_gps10:
;dashboard.c,20 :: 		else if (j>=0X10E && j<0X1C2)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps52
	MOVLW       14
	SUBWF       _j+0, 0 
L__gps52:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps14
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps53
	MOVLW       194
	SUBWF       _j+0, 0 
L__gps53:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps14
L__gps41:
;dashboard.c,21 :: 		dat[0]=3;
	MOVLW       3
	MOVWF       _dat+0 
	GOTO        L_gps15
L_gps14:
;dashboard.c,22 :: 		else if (j>=0X1C2 && j<0X280)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps54
	MOVLW       194
	SUBWF       _j+0, 0 
L__gps54:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps18
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps55
	MOVLW       128
	SUBWF       _j+0, 0 
L__gps55:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps18
L__gps40:
;dashboard.c,23 :: 		dat[0]=4;
	MOVLW       4
	MOVWF       _dat+0 
	GOTO        L_gps19
L_gps18:
;dashboard.c,24 :: 		else if (j>=0X280 && j<0X35C)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps56
	MOVLW       128
	SUBWF       _j+0, 0 
L__gps56:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps22
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps57
	MOVLW       92
	SUBWF       _j+0, 0 
L__gps57:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps22
L__gps39:
;dashboard.c,25 :: 		dat[0]=5;
	MOVLW       5
	MOVWF       _dat+0 
	GOTO        L_gps23
L_gps22:
;dashboard.c,26 :: 		else if (j>=0X35C && j<0x400)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps58
	MOVLW       92
	SUBWF       _j+0, 0 
L__gps58:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps26
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       4
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps59
	MOVLW       0
	SUBWF       _j+0, 0 
L__gps59:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps26
L__gps38:
;dashboard.c,27 :: 		dat[0]=6;
	MOVLW       6
	MOVWF       _dat+0 
L_gps26:
L_gps23:
L_gps19:
L_gps15:
L_gps11:
L_gps7:
L_gps3:
;dashboard.c,29 :: 		}
	RETURN      0
; end of _gps

_voltage:

;dashboard.c,31 :: 		voltage()
;dashboard.c,33 :: 		j= ADC_Read(4);
	MOVLW       4
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;dashboard.c,34 :: 		volt=- 3.1e-006*j*j + 0.14*j - 0.19;
	CALL        _Int2Double+0, 0
	MOVLW       152
	MOVWF       R4 
	MOVLW       9
	MOVWF       R5 
	MOVLW       208
	MOVWF       R6 
	MOVLW       108
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__voltage+0 
	MOVF        R1, 0 
	MOVWF       FLOC__voltage+1 
	MOVF        R2, 0 
	MOVWF       FLOC__voltage+2 
	MOVF        R3, 0 
	MOVWF       FLOC__voltage+3 
	MOVF        _j+0, 0 
	MOVWF       R0 
	MOVF        _j+1, 0 
	MOVWF       R1 
	CALL        _Int2Double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__voltage+4 
	MOVF        R1, 0 
	MOVWF       FLOC__voltage+5 
	MOVF        R2, 0 
	MOVWF       FLOC__voltage+6 
	MOVF        R3, 0 
	MOVWF       FLOC__voltage+7 
	MOVF        FLOC__voltage+0, 0 
	MOVWF       R0 
	MOVF        FLOC__voltage+1, 0 
	MOVWF       R1 
	MOVF        FLOC__voltage+2, 0 
	MOVWF       R2 
	MOVF        FLOC__voltage+3, 0 
	MOVWF       R3 
	MOVF        FLOC__voltage+4, 0 
	MOVWF       R4 
	MOVF        FLOC__voltage+5, 0 
	MOVWF       R5 
	MOVF        FLOC__voltage+6, 0 
	MOVWF       R6 
	MOVF        FLOC__voltage+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__voltage+0 
	MOVF        R1, 0 
	MOVWF       FLOC__voltage+1 
	MOVF        R2, 0 
	MOVWF       FLOC__voltage+2 
	MOVF        R3, 0 
	MOVWF       FLOC__voltage+3 
	MOVLW       41
	MOVWF       R0 
	MOVLW       92
	MOVWF       R1 
	MOVLW       15
	MOVWF       R2 
	MOVLW       124
	MOVWF       R3 
	MOVF        FLOC__voltage+4, 0 
	MOVWF       R4 
	MOVF        FLOC__voltage+5, 0 
	MOVWF       R5 
	MOVF        FLOC__voltage+6, 0 
	MOVWF       R6 
	MOVF        FLOC__voltage+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        FLOC__voltage+0, 0 
	MOVWF       R4 
	MOVF        FLOC__voltage+1, 0 
	MOVWF       R5 
	MOVF        FLOC__voltage+2, 0 
	MOVWF       R6 
	MOVF        FLOC__voltage+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVLW       92
	MOVWF       R4 
	MOVLW       143
	MOVWF       R5 
	MOVLW       66
	MOVWF       R6 
	MOVLW       124
	MOVWF       R7 
	CALL        _Sub_32x32_FP+0, 0
	CALL        _Double2Int+0, 0
	MOVF        R0, 0 
	MOVWF       _volt+0 
	MOVF        R1, 0 
	MOVWF       _volt+1 
;dashboard.c,35 :: 		dat[2]=volt;
	MOVF        R0, 0 
	MOVWF       _dat+2 
;dashboard.c,37 :: 		}
	RETURN      0
; end of _voltage

_et:

;dashboard.c,39 :: 		et()
;dashboard.c,41 :: 		j= ADC_Read(3);                                 //engine temp begins
	MOVLW       3
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;dashboard.c,42 :: 		etmp= (8.1*j*j/100000 + 0.042*j + 0.19);
	CALL        _Int2Double+0, 0
	MOVLW       154
	MOVWF       R4 
	MOVLW       153
	MOVWF       R5 
	MOVLW       1
	MOVWF       R6 
	MOVLW       130
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__et+0 
	MOVF        R1, 0 
	MOVWF       FLOC__et+1 
	MOVF        R2, 0 
	MOVWF       FLOC__et+2 
	MOVF        R3, 0 
	MOVWF       FLOC__et+3 
	MOVF        _j+0, 0 
	MOVWF       R0 
	MOVF        _j+1, 0 
	MOVWF       R1 
	CALL        _Int2Double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__et+4 
	MOVF        R1, 0 
	MOVWF       FLOC__et+5 
	MOVF        R2, 0 
	MOVWF       FLOC__et+6 
	MOVF        R3, 0 
	MOVWF       FLOC__et+7 
	MOVF        FLOC__et+0, 0 
	MOVWF       R0 
	MOVF        FLOC__et+1, 0 
	MOVWF       R1 
	MOVF        FLOC__et+2, 0 
	MOVWF       R2 
	MOVF        FLOC__et+3, 0 
	MOVWF       R3 
	MOVF        FLOC__et+4, 0 
	MOVWF       R4 
	MOVF        FLOC__et+5, 0 
	MOVWF       R5 
	MOVF        FLOC__et+6, 0 
	MOVWF       R6 
	MOVF        FLOC__et+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       80
	MOVWF       R5 
	MOVLW       67
	MOVWF       R6 
	MOVLW       143
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__et+0 
	MOVF        R1, 0 
	MOVWF       FLOC__et+1 
	MOVF        R2, 0 
	MOVWF       FLOC__et+2 
	MOVF        R3, 0 
	MOVWF       FLOC__et+3 
	MOVLW       49
	MOVWF       R0 
	MOVLW       8
	MOVWF       R1 
	MOVLW       44
	MOVWF       R2 
	MOVLW       122
	MOVWF       R3 
	MOVF        FLOC__et+4, 0 
	MOVWF       R4 
	MOVF        FLOC__et+5, 0 
	MOVWF       R5 
	MOVF        FLOC__et+6, 0 
	MOVWF       R6 
	MOVF        FLOC__et+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        FLOC__et+0, 0 
	MOVWF       R4 
	MOVF        FLOC__et+1, 0 
	MOVWF       R5 
	MOVF        FLOC__et+2, 0 
	MOVWF       R6 
	MOVF        FLOC__et+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVLW       92
	MOVWF       R4 
	MOVLW       143
	MOVWF       R5 
	MOVLW       66
	MOVWF       R6 
	MOVLW       124
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	CALL        _Double2Int+0, 0
	MOVF        R0, 0 
	MOVWF       _etmp+0 
	MOVF        R1, 0 
	MOVWF       _etmp+1 
;dashboard.c,43 :: 		dat[2]=etmp;
	MOVF        R0, 0 
	MOVWF       _dat+2 
;dashboard.c,44 :: 		}
	RETURN      0
; end of _et

_speed:

;dashboard.c,46 :: 		speed()
;dashboard.c,48 :: 		PORTD=9;
	MOVLW       9
	MOVWF       PORTD+0 
;dashboard.c,49 :: 		as=teeth/15*15.0796447;
	MOVLW       15
	MOVWF       R4 
	MOVF        _teeth+0, 0 
	MOVWF       R0 
	CALL        _Div_8x8_U+0, 0
	CALL        _Byte2Double+0, 0
	MOVLW       58
	MOVWF       R4 
	MOVLW       70
	MOVWF       R5 
	MOVLW       113
	MOVWF       R6 
	MOVLW       130
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _Double2Int+0, 0
	MOVF        R0, 0 
	MOVWF       _as+0 
	MOVF        R1, 0 
	MOVWF       _as+1 
;dashboard.c,50 :: 		ts=as*18/5;
	MOVLW       18
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       5
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       _ts+0 
	MOVF        R1, 0 
	MOVWF       _ts+1 
;dashboard.c,51 :: 		dat[1]=ts;
	MOVF        R0, 0 
	MOVWF       _dat+1 
;dashboard.c,52 :: 		TMR0L=0x00;
	CLRF        TMR0L+0 
;dashboard.c,55 :: 		}
	RETURN      0
; end of _speed

_counter:

;dashboard.c,56 :: 		counter()
;dashboard.c,58 :: 		count++;
	INFSNZ      _count+0, 1 
	INCF        _count+1, 1 
;dashboard.c,59 :: 		dat[2]=count;
	MOVF        _count+0, 0 
	MOVWF       _dat+2 
;dashboard.c,60 :: 		}
	RETURN      0
; end of _counter

_main:

;dashboard.c,62 :: 		void main() {
;dashboard.c,65 :: 		T0CON=0XF8;
	MOVLW       248
	MOVWF       T0CON+0 
;dashboard.c,66 :: 		T1CON=0x03;
	MOVLW       3
	MOVWF       T1CON+0 
;dashboard.c,67 :: 		TRISA=0xff;
	MOVLW       255
	MOVWF       TRISA+0 
;dashboard.c,68 :: 		TRISC5_BIT=0;
	BCF         TRISC5_bit+0, 5 
;dashboard.c,69 :: 		ADCON1=0x00;
	CLRF        ADCON1+0 
;dashboard.c,70 :: 		CMCON=0x07;
	MOVLW       7
	MOVWF       CMCON+0 
;dashboard.c,71 :: 		PORTB = 0;
	CLRF        PORTB+0 
;dashboard.c,72 :: 		PORTD = 0;
	CLRF        PORTD+0 
;dashboard.c,73 :: 		TRISB = 0;
	CLRF        TRISB+0 
;dashboard.c,74 :: 		TRISD = 0;
	CLRF        TRISD+0 
;dashboard.c,77 :: 		UART1_Init(9600);                  // initialize UART1 module
	MOVLW       103
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;dashboard.c,78 :: 		Delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main27:
	DECFSZ      R13, 1, 1
	BRA         L_main27
	DECFSZ      R12, 1, 1
	BRA         L_main27
	DECFSZ      R11, 1, 1
	BRA         L_main27
;dashboard.c,79 :: 		RS485Slave_Init(160);              // Intialize MCU as slave, address 160
	MOVLW       160
	MOVWF       FARG_RS485Slave_Init_slave_address+0 
	CALL        _RS485Slave_Init+0, 0
;dashboard.c,81 :: 		dat[4] = 0;                        // ensure that message received flag is 0
	CLRF        _dat+4 
;dashboard.c,82 :: 		dat[5] = 0;                        // ensure that message received flag is 0
	CLRF        _dat+5 
;dashboard.c,83 :: 		dat[6] = 0;                        // ensure that error flag is 0
	CLRF        _dat+6 
;dashboard.c,85 :: 		RCIE_bit = 1;                      // enable interrupt on UART1 receive
	BSF         RCIE_bit+0, 5 
;dashboard.c,86 :: 		TXIE_bit = 0;                      // disable interrupt on UART1 transmit
	BCF         TXIE_bit+0, 4 
;dashboard.c,87 :: 		PEIE_bit = 1;                      // enable peripheral interrupts
	BSF         PEIE_bit+0, 6 
;dashboard.c,88 :: 		GIE_bit = 1;                       // enable all interrupts
	BSF         GIE_bit+0, 7 
;dashboard.c,90 :: 		while (1) {
L_main28:
;dashboard.c,92 :: 		ts=as=0;
	CLRF        _as+0 
	CLRF        _as+1 
	CLRF        _ts+0 
	CLRF        _ts+1 
;dashboard.c,93 :: 		teeth=TMR0L*10;
	MOVLW       10
	MULWF       TMR0L+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _teeth+0 
;dashboard.c,94 :: 		TMR1L=teeth;
	MOVF        R0, 0 
	MOVWF       TMR1L+0 
;dashboard.c,97 :: 		if (dat[5])  {                   // if an error detected, signal it by
	MOVF        _dat+5, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main30
;dashboard.c,98 :: 		dat[5] = 0;
	CLRF        _dat+5 
;dashboard.c,99 :: 		}
L_main30:
;dashboard.c,100 :: 		if (dat[4]) {                    // upon completed valid message receive
	MOVF        _dat+4, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main31
;dashboard.c,101 :: 		dat[4] = 0;                     //   data[4] is set to 0xFF
	CLRF        _dat+4 
;dashboard.c,102 :: 		gps();
	CALL        _gps+0, 0
;dashboard.c,103 :: 		switch(dat[1])
	GOTO        L_main32
;dashboard.c,105 :: 		case 1:
L_main34:
;dashboard.c,106 :: 		voltage();
	CALL        _voltage+0, 0
;dashboard.c,107 :: 		break;
	GOTO        L_main33
;dashboard.c,108 :: 		case 2:
L_main35:
;dashboard.c,109 :: 		et();
	CALL        _et+0, 0
;dashboard.c,110 :: 		break;
	GOTO        L_main33
;dashboard.c,111 :: 		case 4:
L_main36:
;dashboard.c,112 :: 		counter();
	CALL        _counter+0, 0
;dashboard.c,113 :: 		break;
	GOTO        L_main33
;dashboard.c,114 :: 		}
L_main32:
	MOVF        _dat+1, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main34
	MOVF        _dat+1, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main35
	MOVF        _dat+1, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main36
L_main33:
;dashboard.c,116 :: 		speed();
	CALL        _speed+0, 0
;dashboard.c,117 :: 		dat[0]=125;
	MOVLW       125
	MOVWF       _dat+0 
;dashboard.c,118 :: 		TMR1L=0x00;
	CLRF        TMR1L+0 
;dashboard.c,119 :: 		Delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_main37:
	DECFSZ      R13, 1, 1
	BRA         L_main37
	DECFSZ      R12, 1, 1
	BRA         L_main37
	NOP
;dashboard.c,120 :: 		RS485Slave_Send(dat,3);        //   and send it back to master
	MOVLW       _dat+0
	MOVWF       FARG_RS485Slave_Send_data_buffer+0 
	MOVLW       hi_addr(_dat+0)
	MOVWF       FARG_RS485Slave_Send_data_buffer+1 
	MOVLW       3
	MOVWF       FARG_RS485Slave_Send_datalen+0 
	CALL        _RS485Slave_Send+0, 0
;dashboard.c,121 :: 		}
L_main31:
;dashboard.c,122 :: 		}
	GOTO        L_main28
;dashboard.c,123 :: 		}
	GOTO        $+0
; end of _main
