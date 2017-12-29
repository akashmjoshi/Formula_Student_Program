
_seg7:

;Steering Wheel.c,7 :: 		int seg7(int num)
;Steering Wheel.c,9 :: 		int val[]={0x3f,0x06,0x5b,0x4f,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
	MOVLW       ?ICSseg7_val_L0+0
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(?ICSseg7_val_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(?ICSseg7_val_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       seg7_val_L0+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(seg7_val_L0+0)
	MOVWF       FSR1H 
	MOVLW       32
	MOVWF       R0 
	MOVLW       1
	MOVWF       R1 
	CALL        ___CC2DW+0, 0
;Steering Wheel.c,10 :: 		return(val[num]);
	MOVF        FARG_seg7_num+0, 0 
	MOVWF       R0 
	MOVF        FARG_seg7_num+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       seg7_val_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(seg7_val_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
;Steering Wheel.c,11 :: 		}
	RETURN      0
; end of _seg7

_gear:

;Steering Wheel.c,13 :: 		int gear(int num)
;Steering Wheel.c,15 :: 		int val[]={0xFE,0x06,0xDA,0xCE,0x66,0xEC,0xFC,0x86,0xFE,0xEE};
	MOVLW       ?ICSgear_val_L0+0
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(?ICSgear_val_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(?ICSgear_val_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       gear_val_L0+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(gear_val_L0+0)
	MOVWF       FSR1H 
	MOVLW       20
	MOVWF       R0 
	MOVLW       1
	MOVWF       R1 
	CALL        ___CC2DW+0, 0
;Steering Wheel.c,16 :: 		return(val[num]);
	MOVF        FARG_gear_num+0, 0 
	MOVWF       R0 
	MOVF        FARG_gear_num+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       gear_val_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(gear_val_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
;Steering Wheel.c,17 :: 		}
	RETURN      0
; end of _gear

_segl:

;Steering Wheel.c,19 :: 		segl()
;Steering Wheel.c,21 :: 		th=value/1000;
	MOVLW       232
	MOVWF       R4 
	MOVLW       3
	MOVWF       R5 
	MOVF        _value+0, 0 
	MOVWF       R0 
	MOVF        _value+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       _th+0 
;Steering Wheel.c,22 :: 		h=value/100%10;
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _value+0, 0 
	MOVWF       R0 
	MOVF        _value+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _h+0 
;Steering Wheel.c,23 :: 		t=value/10%10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _value+0, 0 
	MOVWF       R0 
	MOVF        _value+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _t+0 
;Steering Wheel.c,24 :: 		u=value%10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _value+0, 0 
	MOVWF       R0 
	MOVF        _value+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _u+0 
;Steering Wheel.c,26 :: 		RC1_bit=0;
	BCF         RC1_bit+0, 1 
;Steering Wheel.c,27 :: 		RC0_bit=0;
	BCF         RC0_bit+0, 0 
;Steering Wheel.c,28 :: 		PORTE=seg7(th);
	MOVF        _th+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;Steering Wheel.c,29 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl0:
	DECFSZ      R13, 1, 1
	BRA         L_segl0
	DECFSZ      R12, 1, 1
	BRA         L_segl0
	NOP
;Steering Wheel.c,30 :: 		RC1_bit=0;
	BCF         RC1_bit+0, 1 
;Steering Wheel.c,31 :: 		RC0_bit=1;
	BSF         RC0_bit+0, 0 
;Steering Wheel.c,32 :: 		PORTE=seg7(h);
	MOVF        _h+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;Steering Wheel.c,33 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl1:
	DECFSZ      R13, 1, 1
	BRA         L_segl1
	DECFSZ      R12, 1, 1
	BRA         L_segl1
	NOP
;Steering Wheel.c,34 :: 		RC1_bit=1;
	BSF         RC1_bit+0, 1 
;Steering Wheel.c,35 :: 		RC0_bit=0;
	BCF         RC0_bit+0, 0 
;Steering Wheel.c,36 :: 		PORTE=seg7(t);
	MOVF        _t+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;Steering Wheel.c,37 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl2:
	DECFSZ      R13, 1, 1
	BRA         L_segl2
	DECFSZ      R12, 1, 1
	BRA         L_segl2
	NOP
;Steering Wheel.c,38 :: 		RC1_bit=1;
	BSF         RC1_bit+0, 1 
;Steering Wheel.c,39 :: 		RC0_bit=1;
	BSF         RC0_bit+0, 0 
;Steering Wheel.c,40 :: 		PORTE=seg7(u);
	MOVF        _u+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;Steering Wheel.c,41 :: 		}
	RETURN      0
; end of _segl

_segr:

;Steering Wheel.c,43 :: 		segr()
;Steering Wheel.c,46 :: 		th=value/1000;
	MOVLW       232
	MOVWF       R4 
	MOVLW       3
	MOVWF       R5 
	MOVF        _value+0, 0 
	MOVWF       R0 
	MOVF        _value+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       _th+0 
;Steering Wheel.c,47 :: 		h=value/100%10;
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _value+0, 0 
	MOVWF       R0 
	MOVF        _value+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _h+0 
;Steering Wheel.c,48 :: 		t=value/10%10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _value+0, 0 
	MOVWF       R0 
	MOVF        _value+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _t+0 
;Steering Wheel.c,49 :: 		u=value%10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _value+0, 0 
	MOVWF       R0 
	MOVF        _value+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _u+0 
;Steering Wheel.c,51 :: 		RC3_bit=0;
	BCF         RC3_bit+0, 3 
;Steering Wheel.c,52 :: 		RC2_bit=0;
	BCF         RC2_bit+0, 2 
;Steering Wheel.c,53 :: 		PORTD=seg7(th);
	MOVF        _th+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Steering Wheel.c,54 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segr3:
	DECFSZ      R13, 1, 1
	BRA         L_segr3
	DECFSZ      R12, 1, 1
	BRA         L_segr3
	NOP
;Steering Wheel.c,55 :: 		RC3_bit=0;
	BCF         RC3_bit+0, 3 
;Steering Wheel.c,56 :: 		RC2_bit=1;
	BSF         RC2_bit+0, 2 
;Steering Wheel.c,57 :: 		PORTD=seg7(h);
	MOVF        _h+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Steering Wheel.c,58 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segr4:
	DECFSZ      R13, 1, 1
	BRA         L_segr4
	DECFSZ      R12, 1, 1
	BRA         L_segr4
	NOP
;Steering Wheel.c,59 :: 		RC3_bit=1;
	BSF         RC3_bit+0, 3 
;Steering Wheel.c,60 :: 		RC2_bit=0;
	BCF         RC2_bit+0, 2 
;Steering Wheel.c,61 :: 		PORTD=seg7(t);delay_ms(1);
	MOVF        _t+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segr5:
	DECFSZ      R13, 1, 1
	BRA         L_segr5
	DECFSZ      R12, 1, 1
	BRA         L_segr5
	NOP
;Steering Wheel.c,62 :: 		RC3_bit=1;
	BSF         RC3_bit+0, 3 
;Steering Wheel.c,63 :: 		RC2_bit=1;
	BSF         RC2_bit+0, 2 
;Steering Wheel.c,64 :: 		PORTD=seg7(u);
	MOVF        _u+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Steering Wheel.c,65 :: 		}
	RETURN      0
; end of _segr

_gps:

;Steering Wheel.c,67 :: 		gps()
;Steering Wheel.c,69 :: 		j=ADC_READ(1);
	MOVLW       1
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;Steering Wheel.c,70 :: 		if (j>=0x00 && j<0x19)
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps72
	MOVLW       0
	SUBWF       R0, 0 
L__gps72:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps8
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps73
	MOVLW       25
	SUBWF       _j+0, 0 
L__gps73:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps8
L__gps66:
;Steering Wheel.c,71 :: 		dat[0]=1;
	MOVLW       1
	MOVWF       _dat+0 
	GOTO        L_gps9
L_gps8:
;Steering Wheel.c,72 :: 		else if (j>=0x19 && j<0x70)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps74
	MOVLW       25
	SUBWF       _j+0, 0 
L__gps74:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps12
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps75
	MOVLW       112
	SUBWF       _j+0, 0 
L__gps75:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps12
L__gps65:
;Steering Wheel.c,73 :: 		dat[0]=0;
	CLRF        _dat+0 
	GOTO        L_gps13
L_gps12:
;Steering Wheel.c,74 :: 		else if (j>=0x70 && j<0x10E)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps76
	MOVLW       112
	SUBWF       _j+0, 0 
L__gps76:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps16
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps77
	MOVLW       14
	SUBWF       _j+0, 0 
L__gps77:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps16
L__gps64:
;Steering Wheel.c,75 :: 		dat[0]=2;
	MOVLW       2
	MOVWF       _dat+0 
	GOTO        L_gps17
L_gps16:
;Steering Wheel.c,76 :: 		else if (j>=0X10E && j<0X1C2)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps78
	MOVLW       14
	SUBWF       _j+0, 0 
L__gps78:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps20
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps79
	MOVLW       194
	SUBWF       _j+0, 0 
L__gps79:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps20
L__gps63:
;Steering Wheel.c,77 :: 		dat[0]=3;
	MOVLW       3
	MOVWF       _dat+0 
	GOTO        L_gps21
L_gps20:
;Steering Wheel.c,78 :: 		else if (j>=0X1C2 && j<0X280)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps80
	MOVLW       194
	SUBWF       _j+0, 0 
L__gps80:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps24
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps81
	MOVLW       128
	SUBWF       _j+0, 0 
L__gps81:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps24
L__gps62:
;Steering Wheel.c,79 :: 		dat[0]=4;
	MOVLW       4
	MOVWF       _dat+0 
	GOTO        L_gps25
L_gps24:
;Steering Wheel.c,80 :: 		else if (j>=0X280 && j<0X35C)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps82
	MOVLW       128
	SUBWF       _j+0, 0 
L__gps82:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps28
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps83
	MOVLW       92
	SUBWF       _j+0, 0 
L__gps83:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps28
L__gps61:
;Steering Wheel.c,81 :: 		dat[0]=5;
	MOVLW       5
	MOVWF       _dat+0 
	GOTO        L_gps29
L_gps28:
;Steering Wheel.c,82 :: 		else if (j>=0X35C && j<0x400)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps84
	MOVLW       92
	SUBWF       _j+0, 0 
L__gps84:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps32
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       4
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps85
	MOVLW       0
	SUBWF       _j+0, 0 
L__gps85:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps32
L__gps60:
;Steering Wheel.c,83 :: 		dat[0]=6;
	MOVLW       6
	MOVWF       _dat+0 
L_gps32:
L_gps29:
L_gps25:
L_gps21:
L_gps17:
L_gps13:
L_gps9:
;Steering Wheel.c,85 :: 		}
	RETURN      0
; end of _gps

_voltage:

;Steering Wheel.c,87 :: 		voltage()
;Steering Wheel.c,89 :: 		j= ADC_Read(4);
	MOVLW       4
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;Steering Wheel.c,90 :: 		volt=- 3.1e-006*j*j + 0.14*j - 0.19;
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
;Steering Wheel.c,91 :: 		dat[2]=volt;
	MOVF        R0, 0 
	MOVWF       _dat+2 
;Steering Wheel.c,93 :: 		}
	RETURN      0
; end of _voltage

_et:

;Steering Wheel.c,95 :: 		et()
;Steering Wheel.c,97 :: 		j= ADC_Read(3);                                 //engine temp begins
	MOVLW       3
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;Steering Wheel.c,98 :: 		etmp= (8.1*j*j/100000 + 0.042*j + 0.19);
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
;Steering Wheel.c,99 :: 		dat[2]=etmp;
	MOVF        R0, 0 
	MOVWF       _dat+2 
;Steering Wheel.c,100 :: 		}
	RETURN      0
; end of _et

_speed:

;Steering Wheel.c,102 :: 		speed()
;Steering Wheel.c,104 :: 		PORTD=9;
	MOVLW       9
	MOVWF       PORTD+0 
;Steering Wheel.c,105 :: 		as=teeth/15*15.0796447;
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
;Steering Wheel.c,106 :: 		ts=as*18/5;
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
;Steering Wheel.c,107 :: 		dat[1]=ts;
	MOVF        R0, 0 
	MOVWF       _dat+1 
;Steering Wheel.c,108 :: 		TMR0L=0x00;
	CLRF        TMR0L+0 
;Steering Wheel.c,111 :: 		}
	RETURN      0
; end of _speed

_main:

;Steering Wheel.c,114 :: 		void main(){
;Steering Wheel.c,115 :: 		long cnt = 0;
;Steering Wheel.c,116 :: 		T0CON=0XF8; //    timer0 on, 8 bit mode, counter, falling edge, no prescalar
	MOVLW       248
	MOVWF       T0CON+0 
;Steering Wheel.c,118 :: 		TRISA=0xFF;
	MOVLW       255
	MOVWF       TRISA+0 
;Steering Wheel.c,119 :: 		ADCON1=0x00;
	CLRF        ADCON1+0 
;Steering Wheel.c,121 :: 		TRISF  = 0;
	CLRF        TRISF+0 
;Steering Wheel.c,122 :: 		TRISE  = 0;
	CLRF        TRISE+0 
;Steering Wheel.c,123 :: 		TRISB  = 0;
	CLRF        TRISB+0 
;Steering Wheel.c,124 :: 		TRISD  = 0;
	CLRF        TRISD+0 
;Steering Wheel.c,125 :: 		TRISC0_BIT=0;
	BCF         TRISC0_bit+0, 0 
;Steering Wheel.c,126 :: 		TRISC1_BIT=0;
	BCF         TRISC1_bit+0, 1 
;Steering Wheel.c,127 :: 		TRISC2_BIT=0;
	BCF         TRISC2_bit+0, 2 
;Steering Wheel.c,128 :: 		TRISC3_BIT=0;
	BCF         TRISC3_bit+0, 3 
;Steering Wheel.c,129 :: 		TRISC4_BIT=0;
	BCF         TRISC4_bit+0, 4 
;Steering Wheel.c,130 :: 		TRISC5_BIT=0;
	BCF         TRISC5_bit+0, 5 
;Steering Wheel.c,132 :: 		while (1){
L_main33:
;Steering Wheel.c,135 :: 		PORTF=0xaa;   // rpm value
	MOVLW       170
	MOVWF       PORTF+0 
;Steering Wheel.c,136 :: 		PORTB=gear(dat[0]%10);   // gear position value
	MOVLW       10
	MOVWF       R4 
	MOVF        _dat+0, 0 
	MOVWF       R0 
	CALL        _Div_8x8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Steering Wheel.c,138 :: 		dat[1]=adc;
	MOVF        _adc+0, 0 
	MOVWF       _dat+1 
;Steering Wheel.c,140 :: 		switch(dat[1])
	GOTO        L_main35
;Steering Wheel.c,142 :: 		case 1:
L_main37:
;Steering Wheel.c,143 :: 		{value=dat[2];segr();
	MOVF        _dat+2, 0 
	MOVWF       _value+0 
	MOVLW       0
	MOVWF       _value+1 
	CALL        _segr+0, 0
;Steering Wheel.c,144 :: 		break;}
	GOTO        L_main36
;Steering Wheel.c,145 :: 		case 2:
L_main38:
;Steering Wheel.c,146 :: 		{value=dat[2]*10;segr();
	MOVLW       10
	MULWF       _dat+2 
	MOVF        PRODL+0, 0 
	MOVWF       _value+0 
	MOVF        PRODH+0, 0 
	MOVWF       _value+1 
	CALL        _segr+0, 0
;Steering Wheel.c,147 :: 		break;}
	GOTO        L_main36
;Steering Wheel.c,148 :: 		case 3:
L_main39:
;Steering Wheel.c,149 :: 		{value=dat[2];segr();
	MOVF        _dat+2, 0 
	MOVWF       _value+0 
	MOVLW       0
	MOVWF       _value+1 
	CALL        _segr+0, 0
;Steering Wheel.c,150 :: 		break;}
	GOTO        L_main36
;Steering Wheel.c,151 :: 		case 4:
L_main40:
;Steering Wheel.c,152 :: 		{value=dat[2];segr();}
	MOVF        _dat+2, 0 
	MOVWF       _value+0 
	MOVLW       0
	MOVWF       _value+1 
	CALL        _segr+0, 0
;Steering Wheel.c,153 :: 		break;
	GOTO        L_main36
;Steering Wheel.c,154 :: 		}
L_main35:
	MOVF        _dat+1, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main37
	MOVF        _dat+1, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main38
	MOVF        _dat+1, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_main39
	MOVF        _dat+1, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main40
L_main36:
;Steering Wheel.c,156 :: 		j=ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;Steering Wheel.c,157 :: 		if(j>=0 && j<204)
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main86
	MOVLW       0
	SUBWF       R0, 0 
L__main86:
	BTFSS       STATUS+0, 0 
	GOTO        L_main43
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main87
	MOVLW       204
	SUBWF       _j+0, 0 
L__main87:
	BTFSC       STATUS+0, 0 
	GOTO        L_main43
L__main71:
;Steering Wheel.c,158 :: 		{dat[1]=adc=1;
	MOVLW       1
	MOVWF       _adc+0 
	MOVLW       1
	MOVWF       _dat+1 
;Steering Wheel.c,159 :: 		}
	GOTO        L_main44
L_main43:
;Steering Wheel.c,160 :: 		else if(j>=204 && j<409)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main88
	MOVLW       204
	SUBWF       _j+0, 0 
L__main88:
	BTFSS       STATUS+0, 0 
	GOTO        L_main47
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main89
	MOVLW       153
	SUBWF       _j+0, 0 
L__main89:
	BTFSC       STATUS+0, 0 
	GOTO        L_main47
L__main70:
;Steering Wheel.c,161 :: 		{dat[1]=adc=2;
	MOVLW       2
	MOVWF       _adc+0 
	MOVLW       2
	MOVWF       _dat+1 
;Steering Wheel.c,162 :: 		}
	GOTO        L_main48
L_main47:
;Steering Wheel.c,163 :: 		else if(j>=409 && j<612)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main90
	MOVLW       153
	SUBWF       _j+0, 0 
L__main90:
	BTFSS       STATUS+0, 0 
	GOTO        L_main51
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main91
	MOVLW       100
	SUBWF       _j+0, 0 
L__main91:
	BTFSC       STATUS+0, 0 
	GOTO        L_main51
L__main69:
;Steering Wheel.c,164 :: 		{dat[1]=adc=3;
	MOVLW       3
	MOVWF       _adc+0 
	MOVLW       3
	MOVWF       _dat+1 
;Steering Wheel.c,165 :: 		}
	GOTO        L_main52
L_main51:
;Steering Wheel.c,166 :: 		else if(j>=612 && j<816)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main92
	MOVLW       100
	SUBWF       _j+0, 0 
L__main92:
	BTFSS       STATUS+0, 0 
	GOTO        L_main55
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main93
	MOVLW       48
	SUBWF       _j+0, 0 
L__main93:
	BTFSC       STATUS+0, 0 
	GOTO        L_main55
L__main68:
;Steering Wheel.c,167 :: 		{dat[1]=adc=4;
	MOVLW       4
	MOVWF       _adc+0 
	MOVLW       4
	MOVWF       _dat+1 
;Steering Wheel.c,168 :: 		}
	GOTO        L_main56
L_main55:
;Steering Wheel.c,169 :: 		else if(j>=816 && j<1024)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main94
	MOVLW       48
	SUBWF       _j+0, 0 
L__main94:
	BTFSS       STATUS+0, 0 
	GOTO        L_main59
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       4
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main95
	MOVLW       0
	SUBWF       _j+0, 0 
L__main95:
	BTFSC       STATUS+0, 0 
	GOTO        L_main59
L__main67:
;Steering Wheel.c,170 :: 		{dat[1]=adc=5;
	MOVLW       5
	MOVWF       _adc+0 
	MOVLW       5
	MOVWF       _dat+1 
;Steering Wheel.c,171 :: 		}
L_main59:
L_main56:
L_main52:
L_main48:
L_main44:
;Steering Wheel.c,173 :: 		}
	GOTO        L_main33
;Steering Wheel.c,176 :: 		}
	GOTO        $+0
; end of _main
