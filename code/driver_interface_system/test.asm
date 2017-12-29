
_seg7:

;test.c,6 :: 		int seg7(int num)
;test.c,8 :: 		int val[]={0x3f,0x06,0x5b,0x4f,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
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
;test.c,9 :: 		return(val[num]);
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
;test.c,10 :: 		}
	RETURN      0
; end of _seg7

_segr:

;test.c,12 :: 		segr()
;test.c,14 :: 		thr=value/1000;
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
	MOVWF       _thr+0 
;test.c,15 :: 		hr=value/100%10;
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
	MOVWF       _hr+0 
;test.c,16 :: 		tr=value/10%10;
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
	MOVWF       _tr+0 
;test.c,17 :: 		ur=value%10;
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
	MOVWF       _ur+0 
;test.c,19 :: 		RC3_bit=0;
	BCF         RC3_bit+0, 3 
;test.c,20 :: 		RC2_bit=0;
	BCF         RC2_bit+0, 2 
;test.c,21 :: 		PORTD=seg7(thr);
	MOVF        _thr+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;test.c,22 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segr0:
	DECFSZ      R13, 1, 1
	BRA         L_segr0
	DECFSZ      R12, 1, 1
	BRA         L_segr0
	NOP
;test.c,23 :: 		RC3_bit=0;
	BCF         RC3_bit+0, 3 
;test.c,24 :: 		RC2_bit=1;
	BSF         RC2_bit+0, 2 
;test.c,25 :: 		PORTD=seg7(hr);
	MOVF        _hr+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;test.c,26 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segr1:
	DECFSZ      R13, 1, 1
	BRA         L_segr1
	DECFSZ      R12, 1, 1
	BRA         L_segr1
	NOP
;test.c,27 :: 		RC3_bit=1;
	BSF         RC3_bit+0, 3 
;test.c,28 :: 		RC2_bit=0;
	BCF         RC2_bit+0, 2 
;test.c,29 :: 		PORTD=seg7(tr);
	MOVF        _tr+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;test.c,30 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segr2:
	DECFSZ      R13, 1, 1
	BRA         L_segr2
	DECFSZ      R12, 1, 1
	BRA         L_segr2
	NOP
;test.c,31 :: 		RC3_bit=1;
	BSF         RC3_bit+0, 3 
;test.c,32 :: 		RC2_bit=1;
	BSF         RC2_bit+0, 2 
;test.c,33 :: 		PORTD=seg7(ur);
	MOVF        _ur+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;test.c,34 :: 		delay_us(1000);
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
;test.c,35 :: 		}
	RETURN      0
; end of _segr

_segl:

;test.c,37 :: 		segl()
;test.c,39 :: 		thl=value/1000;
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
	MOVWF       _thl+0 
;test.c,40 :: 		hl=value/100%10;
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
	MOVWF       _hl+0 
;test.c,41 :: 		tl=value/10%10;
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
	MOVWF       _tl+0 
;test.c,42 :: 		ul=value%10;
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
	MOVWF       _ul+0 
;test.c,44 :: 		RC1_bit=0;
	BCF         RC1_bit+0, 1 
;test.c,45 :: 		RC0_bit=0;
	BCF         RC0_bit+0, 0 
;test.c,46 :: 		PORTE=seg7(thl);
	MOVF        _thl+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;test.c,47 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl4:
	DECFSZ      R13, 1, 1
	BRA         L_segl4
	DECFSZ      R12, 1, 1
	BRA         L_segl4
	NOP
;test.c,48 :: 		RC1_bit=0;
	BCF         RC1_bit+0, 1 
;test.c,49 :: 		RC0_bit=1;
	BSF         RC0_bit+0, 0 
;test.c,50 :: 		PORTE=seg7(hl);
	MOVF        _hl+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;test.c,51 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl5:
	DECFSZ      R13, 1, 1
	BRA         L_segl5
	DECFSZ      R12, 1, 1
	BRA         L_segl5
	NOP
;test.c,52 :: 		RC1_bit=1;
	BSF         RC1_bit+0, 1 
;test.c,53 :: 		RC0_bit=0;
	BCF         RC0_bit+0, 0 
;test.c,54 :: 		PORTE=seg7(tl);
	MOVF        _tl+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;test.c,55 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl6:
	DECFSZ      R13, 1, 1
	BRA         L_segl6
	DECFSZ      R12, 1, 1
	BRA         L_segl6
	NOP
;test.c,56 :: 		RC1_bit=1;
	BSF         RC1_bit+0, 1 
;test.c,57 :: 		RC0_bit=1;
	BSF         RC0_bit+0, 0 
;test.c,58 :: 		PORTE=seg7(ul);
	MOVF        _ul+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;test.c,59 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl7:
	DECFSZ      R13, 1, 1
	BRA         L_segl7
	DECFSZ      R12, 1, 1
	BRA         L_segl7
	NOP
;test.c,60 :: 		}
	RETURN      0
; end of _segl

_main:

;test.c,62 :: 		void main()
;test.c,64 :: 		TRISA=0xFF;
	MOVLW       255
	MOVWF       TRISA+0 
;test.c,65 :: 		ADCON1=0x00;
	CLRF        ADCON1+0 
;test.c,67 :: 		TRISF  = 0;
	CLRF        TRISF+0 
;test.c,68 :: 		TRISE  = 0;
	CLRF        TRISE+0 
;test.c,69 :: 		TRISB  = 0;
	CLRF        TRISB+0 
;test.c,70 :: 		TRISD  = 0;
	CLRF        TRISD+0 
;test.c,71 :: 		TRISC0_BIT=0;
	BCF         TRISC0_bit+0, 0 
;test.c,72 :: 		TRISC1_BIT=0;
	BCF         TRISC1_bit+0, 1 
;test.c,73 :: 		TRISC2_BIT=0;
	BCF         TRISC2_bit+0, 2 
;test.c,74 :: 		TRISC3_BIT=0;
	BCF         TRISC3_bit+0, 3 
;test.c,75 :: 		TRISC4_BIT=0;
	BCF         TRISC4_bit+0, 4 
;test.c,77 :: 		TRISB = 0;
	CLRF        TRISB+0 
;test.c,78 :: 		PORTb =0xff;
	MOVLW       255
	MOVWF       PORTB+0 
;test.c,80 :: 		while(1)
L_main8:
;test.c,82 :: 		PORTB=0xAA;
	MOVLW       170
	MOVWF       PORTB+0 
;test.c,83 :: 		PORTF=0xAA;
	MOVLW       170
	MOVWF       PORTF+0 
;test.c,84 :: 		PORTE=0xAA;
	MOVLW       170
	MOVWF       PORTE+0 
;test.c,91 :: 		}
	GOTO        L_main8
;test.c,92 :: 		}
	GOTO        $+0
; end of _main
