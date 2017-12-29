
_seg7:

;Steering Wheelv1.01.c,8 :: 		int seg7(int num)
;Steering Wheelv1.01.c,10 :: 		int val[]={0x3f,0x06,0x5b,0x4f,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
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
;Steering Wheelv1.01.c,11 :: 		return(val[num]);
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
;Steering Wheelv1.01.c,12 :: 		}
	RETURN      0
; end of _seg7

_gear:

;Steering Wheelv1.01.c,14 :: 		int gear(int num)
;Steering Wheelv1.01.c,16 :: 		int val[]={0x54,0x06,0xDA,0xCE,0x66,0xEC,0xFC,0x86,0xFE,0xEE};
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
;Steering Wheelv1.01.c,17 :: 		return(val[num]);
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
;Steering Wheelv1.01.c,18 :: 		}
	RETURN      0
; end of _gear

_fun:

;Steering Wheelv1.01.c,20 :: 		int fun(int num)
;Steering Wheelv1.01.c,22 :: 		int val[]={0x7f,0x3f,0x1f,0x1e,0x1c,0x18,0x10,0x18,0x1c,0x1e,0x1f,0x3f,0x7f,0x00,0x7f};
	MOVLW       ?ICSfun_val_L0+0
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(?ICSfun_val_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(?ICSfun_val_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       fun_val_L0+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(fun_val_L0+0)
	MOVWF       FSR1H 
	MOVLW       30
	MOVWF       R0 
	MOVLW       1
	MOVWF       R1 
	CALL        ___CC2DW+0, 0
;Steering Wheelv1.01.c,23 :: 		return(val[num]);
	MOVF        FARG_fun_num+0, 0 
	MOVWF       R0 
	MOVF        FARG_fun_num+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       fun_val_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(fun_val_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
;Steering Wheelv1.01.c,24 :: 		}
	RETURN      0
; end of _fun

_bar:

;Steering Wheelv1.01.c,26 :: 		int bar(int num)
;Steering Wheelv1.01.c,28 :: 		int val[]={0x81,0xc3,0xe7,0xff,0xe7,0xc3,0x81,0x81,0xc3,0xe7,0xff,0xe7,0xc3,0x81};
	MOVLW       ?ICSbar_val_L0+0
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(?ICSbar_val_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(?ICSbar_val_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       bar_val_L0+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(bar_val_L0+0)
	MOVWF       FSR1H 
	MOVLW       28
	MOVWF       R0 
	MOVLW       1
	MOVWF       R1 
	CALL        ___CC2DW+0, 0
;Steering Wheelv1.01.c,29 :: 		return(val[num]);
	MOVF        FARG_bar_num+0, 0 
	MOVWF       R0 
	MOVF        FARG_bar_num+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       bar_val_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(bar_val_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
;Steering Wheelv1.01.c,30 :: 		}
	RETURN      0
; end of _bar

_gps:

;Steering Wheelv1.01.c,32 :: 		int gps()
;Steering Wheelv1.01.c,34 :: 		j=ADC_READ(3);
	MOVLW       3
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;Steering Wheelv1.01.c,36 :: 		if (j>=0 &&j<88)
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps77
	MOVLW       0
	SUBWF       R0, 0 
L__gps77:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps2
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps78
	MOVLW       88
	SUBWF       _j+0, 0 
L__gps78:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps2
L__gps76:
;Steering Wheelv1.01.c,37 :: 		{PORTB=gear(1);
	MOVLW       1
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Steering Wheelv1.01.c,38 :: 		return 1;}
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RETURN      0
L_gps2:
;Steering Wheelv1.01.c,42 :: 		else if (j>=89 && j<284)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps79
	MOVLW       89
	SUBWF       _j+0, 0 
L__gps79:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps6
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps80
	MOVLW       28
	SUBWF       _j+0, 0 
L__gps80:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps6
L__gps75:
;Steering Wheelv1.01.c,43 :: 		{PORTB=gear(2);
	MOVLW       2
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Steering Wheelv1.01.c,44 :: 		return 2;}
	MOVLW       2
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RETURN      0
L_gps6:
;Steering Wheelv1.01.c,45 :: 		else if (j>=285 && j<499)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps81
	MOVLW       29
	SUBWF       _j+0, 0 
L__gps81:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps10
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps82
	MOVLW       243
	SUBWF       _j+0, 0 
L__gps82:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps10
L__gps74:
;Steering Wheelv1.01.c,46 :: 		{PORTB=gear(3);
	MOVLW       3
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Steering Wheelv1.01.c,47 :: 		return 3;}
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RETURN      0
L_gps10:
;Steering Wheelv1.01.c,48 :: 		else if (j>=500 && j<700)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps83
	MOVLW       244
	SUBWF       _j+0, 0 
L__gps83:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps14
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps84
	MOVLW       188
	SUBWF       _j+0, 0 
L__gps84:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps14
L__gps73:
;Steering Wheelv1.01.c,49 :: 		{PORTB=gear(4);
	MOVLW       4
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Steering Wheelv1.01.c,50 :: 		return 4;}
	MOVLW       4
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RETURN      0
L_gps14:
;Steering Wheelv1.01.c,51 :: 		else if (j>=700 && j<897)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps85
	MOVLW       188
	SUBWF       _j+0, 0 
L__gps85:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps18
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps86
	MOVLW       129
	SUBWF       _j+0, 0 
L__gps86:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps18
L__gps72:
;Steering Wheelv1.01.c,52 :: 		{PORTB=gear(5);
	MOVLW       5
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Steering Wheelv1.01.c,53 :: 		return 5;}
	MOVLW       5
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RETURN      0
L_gps18:
;Steering Wheelv1.01.c,54 :: 		else if (j>=898 && j<1020)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps87
	MOVLW       130
	SUBWF       _j+0, 0 
L__gps87:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps22
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps88
	MOVLW       252
	SUBWF       _j+0, 0 
L__gps88:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps22
L__gps71:
;Steering Wheelv1.01.c,55 :: 		{PORTB=gear(6);
	MOVLW       6
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Steering Wheelv1.01.c,56 :: 		return 6;}
	MOVLW       6
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RETURN      0
L_gps22:
;Steering Wheelv1.01.c,57 :: 		}
	RETURN      0
; end of _gps

_et:

;Steering Wheelv1.01.c,59 :: 		int et()
;Steering Wheelv1.01.c,61 :: 		j= ADC_Read(0);                                 //engine temp begins
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;Steering Wheelv1.01.c,62 :: 		return etmp= (6.4*j*j/100000 +-0.19*j + 126);
	CALL        _Int2Double+0, 0
	MOVLW       205
	MOVWF       R4 
	MOVLW       204
	MOVWF       R5 
	MOVLW       76
	MOVWF       R6 
	MOVLW       129
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
	MOVLW       92
	MOVWF       R0 
	MOVLW       143
	MOVWF       R1 
	MOVLW       194
	MOVWF       R2 
	MOVLW       124
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
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       124
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	CALL        _Double2Int+0, 0
	MOVF        R0, 0 
	MOVWF       _etmp+0 
	MOVF        R1, 0 
	MOVWF       _etmp+1 
;Steering Wheelv1.01.c,64 :: 		}
	RETURN      0
; end of _et

_speed:

;Steering Wheelv1.01.c,66 :: 		speed()
;Steering Wheelv1.01.c,68 :: 		value=TMR1H;
	MOVF        TMR1H+0, 0 
	MOVWF       _value+0 
	MOVLW       0
	MOVWF       _value+1 
;Steering Wheelv1.01.c,72 :: 		}
	RETURN      0
; end of _speed

_fuelused:

;Steering Wheelv1.01.c,74 :: 		fuelused()
;Steering Wheelv1.01.c,77 :: 		}
	RETURN      0
; end of _fuelused

_rpmlights:

;Steering Wheelv1.01.c,79 :: 		rpmlights(int num)
;Steering Wheelv1.01.c,81 :: 		switch(num)
	GOTO        L_rpmlights23
;Steering Wheelv1.01.c,83 :: 		case 1: PORTF=0x01; break;
L_rpmlights25:
	MOVLW       1
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,84 :: 		case 2: PORTF=0x01; break;
L_rpmlights26:
	MOVLW       1
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,85 :: 		case 3: PORTF=0x01; break;
L_rpmlights27:
	MOVLW       1
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,86 :: 		case 4: PORTF=0x03; break;
L_rpmlights28:
	MOVLW       3
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,87 :: 		case 5: PORTF=0x07; break;
L_rpmlights29:
	MOVLW       7
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,88 :: 		case 6: PORTF=0x1f; break;
L_rpmlights30:
	MOVLW       31
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,89 :: 		case 7: PORTF=0x3f; break;
L_rpmlights31:
	MOVLW       63
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,90 :: 		case 8: PORTF=0x7F; break;
L_rpmlights32:
	MOVLW       127
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,91 :: 		case 9: PORTF=0xff; break;
L_rpmlights33:
	MOVLW       255
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,92 :: 		case 10: PORTF=0x1c; break;
L_rpmlights34:
	MOVLW       28
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,93 :: 		case 11: PORTF=0x1C; break;
L_rpmlights35:
	MOVLW       28
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,94 :: 		case 12: PORTF=0x1C; break;
L_rpmlights36:
	MOVLW       28
	MOVWF       PORTF+0 
	GOTO        L_rpmlights24
;Steering Wheelv1.01.c,95 :: 		}
L_rpmlights23:
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights89
	MOVLW       1
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights89:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights25
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights90
	MOVLW       2
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights90:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights26
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights91
	MOVLW       3
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights91:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights27
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights92
	MOVLW       4
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights92:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights28
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights93
	MOVLW       5
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights93:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights29
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights94
	MOVLW       6
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights94:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights30
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights95
	MOVLW       7
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights95:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights31
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights96
	MOVLW       8
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights96:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights32
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights97
	MOVLW       9
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights97:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights33
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights98
	MOVLW       10
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights98:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights34
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights99
	MOVLW       11
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights99:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights35
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights100
	MOVLW       12
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights100:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights36
L_rpmlights24:
;Steering Wheelv1.01.c,97 :: 		}
	RETURN      0
; end of _rpmlights

_segr:

;Steering Wheelv1.01.c,99 :: 		segr()
;Steering Wheelv1.01.c,101 :: 		thr=value/1000;
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
;Steering Wheelv1.01.c,102 :: 		hr=value/100%10;
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
;Steering Wheelv1.01.c,103 :: 		tr=value/10%10;
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
;Steering Wheelv1.01.c,104 :: 		ur=value%10;
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
;Steering Wheelv1.01.c,106 :: 		if(value>999)
	MOVLW       128
	XORLW       3
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segr101
	MOVF        _value+0, 0 
	SUBLW       231
L__segr101:
	BTFSC       STATUS+0, 0 
	GOTO        L_segr37
;Steering Wheelv1.01.c,108 :: 		RC7_bit=1;
	BSF         RC7_bit+0, 7 
;Steering Wheelv1.01.c,109 :: 		RC6_bit=0;
	BCF         RC6_bit+0, 6 
;Steering Wheelv1.01.c,110 :: 		RC5_bit=1;
	BSF         RC5_bit+0, 5 
;Steering Wheelv1.01.c,111 :: 		RC4_bit=1;
	BSF         RC4_bit+0, 4 
;Steering Wheelv1.01.c,112 :: 		PORTD=seg7(thr);
	MOVF        _thr+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Steering Wheelv1.01.c,113 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segr38:
	DECFSZ      R13, 1, 1
	BRA         L_segr38
	DECFSZ      R12, 1, 1
	BRA         L_segr38
	NOP
;Steering Wheelv1.01.c,114 :: 		}
L_segr37:
;Steering Wheelv1.01.c,116 :: 		if(value>99)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segr102
	MOVF        _value+0, 0 
	SUBLW       99
L__segr102:
	BTFSC       STATUS+0, 0 
	GOTO        L_segr39
;Steering Wheelv1.01.c,118 :: 		RC7_bit=0;
	BCF         RC7_bit+0, 7 
;Steering Wheelv1.01.c,119 :: 		RC6_bit=1;
	BSF         RC6_bit+0, 6 
;Steering Wheelv1.01.c,120 :: 		RC5_bit=1;
	BSF         RC5_bit+0, 5 
;Steering Wheelv1.01.c,121 :: 		RC4_bit=1;
	BSF         RC4_bit+0, 4 
;Steering Wheelv1.01.c,122 :: 		PORTD=seg7(hr);
	MOVF        _hr+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Steering Wheelv1.01.c,123 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segr40:
	DECFSZ      R13, 1, 1
	BRA         L_segr40
	DECFSZ      R12, 1, 1
	BRA         L_segr40
	NOP
;Steering Wheelv1.01.c,124 :: 		}
L_segr39:
;Steering Wheelv1.01.c,126 :: 		if(value>9)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segr103
	MOVF        _value+0, 0 
	SUBLW       9
L__segr103:
	BTFSC       STATUS+0, 0 
	GOTO        L_segr41
;Steering Wheelv1.01.c,128 :: 		RC7_bit=1;
	BSF         RC7_bit+0, 7 
;Steering Wheelv1.01.c,129 :: 		RC6_bit=1;
	BSF         RC6_bit+0, 6 
;Steering Wheelv1.01.c,130 :: 		RC5_bit=1;
	BSF         RC5_bit+0, 5 
;Steering Wheelv1.01.c,131 :: 		RC4_bit=0;
	BCF         RC4_bit+0, 4 
;Steering Wheelv1.01.c,132 :: 		PORTD=seg7(tr);
	MOVF        _tr+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Steering Wheelv1.01.c,133 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segr42:
	DECFSZ      R13, 1, 1
	BRA         L_segr42
	DECFSZ      R12, 1, 1
	BRA         L_segr42
	NOP
;Steering Wheelv1.01.c,134 :: 		}
L_segr41:
;Steering Wheelv1.01.c,136 :: 		if(value>=0)
	MOVLW       128
	XORWF       _value+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segr104
	MOVLW       0
	SUBWF       _value+0, 0 
L__segr104:
	BTFSS       STATUS+0, 0 
	GOTO        L_segr43
;Steering Wheelv1.01.c,138 :: 		RC7_bit=1;
	BSF         RC7_bit+0, 7 
;Steering Wheelv1.01.c,139 :: 		RC6_bit=1;
	BSF         RC6_bit+0, 6 
;Steering Wheelv1.01.c,140 :: 		RC5_bit=0;
	BCF         RC5_bit+0, 5 
;Steering Wheelv1.01.c,141 :: 		RC4_bit=1;
	BSF         RC4_bit+0, 4 
;Steering Wheelv1.01.c,142 :: 		PORTD=seg7(ur);
	MOVF        _ur+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Steering Wheelv1.01.c,144 :: 		}
L_segr43:
;Steering Wheelv1.01.c,145 :: 		}
	RETURN      0
; end of _segr

_segl:

;Steering Wheelv1.01.c,147 :: 		segl()
;Steering Wheelv1.01.c,149 :: 		thl=value/1000;
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
;Steering Wheelv1.01.c,150 :: 		hl=(value/100)%10;
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
;Steering Wheelv1.01.c,151 :: 		tl=value/10%10;
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
;Steering Wheelv1.01.c,152 :: 		ul=value%10;
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
;Steering Wheelv1.01.c,154 :: 		if(value>999)
	MOVLW       128
	XORLW       3
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segl105
	MOVF        _value+0, 0 
	SUBLW       231
L__segl105:
	BTFSC       STATUS+0, 0 
	GOTO        L_segl44
;Steering Wheelv1.01.c,156 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;Steering Wheelv1.01.c,157 :: 		RG2_bit=0;
	BCF         RG2_bit+0, 2 
;Steering Wheelv1.01.c,158 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;Steering Wheelv1.01.c,159 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;Steering Wheelv1.01.c,161 :: 		PORTE=seg7(thl);
	MOVF        _thl+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;Steering Wheelv1.01.c,162 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl45:
	DECFSZ      R13, 1, 1
	BRA         L_segl45
	DECFSZ      R12, 1, 1
	BRA         L_segl45
	NOP
;Steering Wheelv1.01.c,163 :: 		}
L_segl44:
;Steering Wheelv1.01.c,164 :: 		if(value>99)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segl106
	MOVF        _value+0, 0 
	SUBLW       99
L__segl106:
	BTFSC       STATUS+0, 0 
	GOTO        L_segl46
;Steering Wheelv1.01.c,166 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;Steering Wheelv1.01.c,167 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;Steering Wheelv1.01.c,168 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;Steering Wheelv1.01.c,169 :: 		RG0_bit=0;
	BCF         RG0_bit+0, 0 
;Steering Wheelv1.01.c,170 :: 		PORTE=seg7(hl);
	MOVF        _hl+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;Steering Wheelv1.01.c,171 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl47:
	DECFSZ      R13, 1, 1
	BRA         L_segl47
	DECFSZ      R12, 1, 1
	BRA         L_segl47
	NOP
;Steering Wheelv1.01.c,172 :: 		}
L_segl46:
;Steering Wheelv1.01.c,173 :: 		if(value>9)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segl107
	MOVF        _value+0, 0 
	SUBLW       9
L__segl107:
	BTFSC       STATUS+0, 0 
	GOTO        L_segl48
;Steering Wheelv1.01.c,175 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;Steering Wheelv1.01.c,176 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;Steering Wheelv1.01.c,177 :: 		RG1_bit=0;
	BCF         RG1_bit+0, 1 
;Steering Wheelv1.01.c,178 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;Steering Wheelv1.01.c,179 :: 		PORTE=seg7(tl);
	MOVF        _tl+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;Steering Wheelv1.01.c,180 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl49:
	DECFSZ      R13, 1, 1
	BRA         L_segl49
	DECFSZ      R12, 1, 1
	BRA         L_segl49
	NOP
;Steering Wheelv1.01.c,181 :: 		}
L_segl48:
;Steering Wheelv1.01.c,182 :: 		if(value>=0)
	MOVLW       128
	XORWF       _value+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segl108
	MOVLW       0
	SUBWF       _value+0, 0 
L__segl108:
	BTFSS       STATUS+0, 0 
	GOTO        L_segl50
;Steering Wheelv1.01.c,184 :: 		RG3_bit=0;
	BCF         RG3_bit+0, 3 
;Steering Wheelv1.01.c,185 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;Steering Wheelv1.01.c,186 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;Steering Wheelv1.01.c,187 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;Steering Wheelv1.01.c,188 :: 		PORTE=seg7(ul);
	MOVF        _ul+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;Steering Wheelv1.01.c,190 :: 		}
L_segl50:
;Steering Wheelv1.01.c,191 :: 		}
	RETURN      0
; end of _segl

_coolon:

;Steering Wheelv1.01.c,193 :: 		void coolon()
;Steering Wheelv1.01.c,196 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;Steering Wheelv1.01.c,197 :: 		RG2_bit=0;
	BCF         RG2_bit+0, 2 
;Steering Wheelv1.01.c,198 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;Steering Wheelv1.01.c,199 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;Steering Wheelv1.01.c,201 :: 		PORTE=0x39;
	MOVLW       57
	MOVWF       PORTE+0 
;Steering Wheelv1.01.c,202 :: 		delay_us(4000);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_coolon51:
	DECFSZ      R13, 1, 1
	BRA         L_coolon51
	DECFSZ      R12, 1, 1
	BRA         L_coolon51
	NOP
;Steering Wheelv1.01.c,205 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;Steering Wheelv1.01.c,206 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;Steering Wheelv1.01.c,207 :: 		RG1_bit=0;
	BCF         RG1_bit+0, 1 
;Steering Wheelv1.01.c,208 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;Steering Wheelv1.01.c,209 :: 		PORTE=0x3F;
	MOVLW       63
	MOVWF       PORTE+0 
;Steering Wheelv1.01.c,210 :: 		delay_us(4000);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_coolon52:
	DECFSZ      R13, 1, 1
	BRA         L_coolon52
	DECFSZ      R12, 1, 1
	BRA         L_coolon52
	NOP
;Steering Wheelv1.01.c,212 :: 		RG3_bit=0;
	BCF         RG3_bit+0, 3 
;Steering Wheelv1.01.c,213 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;Steering Wheelv1.01.c,214 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;Steering Wheelv1.01.c,215 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;Steering Wheelv1.01.c,216 :: 		PORTE=0x54;
	MOVLW       84
	MOVWF       PORTE+0 
;Steering Wheelv1.01.c,217 :: 		delay_us(4000);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_coolon53:
	DECFSZ      R13, 1, 1
	BRA         L_coolon53
	DECFSZ      R12, 1, 1
	BRA         L_coolon53
	NOP
;Steering Wheelv1.01.c,218 :: 		}
	RETURN      0
; end of _coolon

_cooloff:

;Steering Wheelv1.01.c,220 :: 		void cooloff()
;Steering Wheelv1.01.c,223 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;Steering Wheelv1.01.c,224 :: 		RG2_bit=0;
	BCF         RG2_bit+0, 2 
;Steering Wheelv1.01.c,225 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;Steering Wheelv1.01.c,226 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;Steering Wheelv1.01.c,228 :: 		PORTE=0x39;
	MOVLW       57
	MOVWF       PORTE+0 
;Steering Wheelv1.01.c,229 :: 		delay_us(4000);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_cooloff54:
	DECFSZ      R13, 1, 1
	BRA         L_cooloff54
	DECFSZ      R12, 1, 1
	BRA         L_cooloff54
	NOP
;Steering Wheelv1.01.c,232 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;Steering Wheelv1.01.c,233 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;Steering Wheelv1.01.c,234 :: 		RG1_bit=0;
	BCF         RG1_bit+0, 1 
;Steering Wheelv1.01.c,235 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;Steering Wheelv1.01.c,236 :: 		PORTE=0x3F;
	MOVLW       63
	MOVWF       PORTE+0 
;Steering Wheelv1.01.c,237 :: 		delay_us(4000);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_cooloff55:
	DECFSZ      R13, 1, 1
	BRA         L_cooloff55
	DECFSZ      R12, 1, 1
	BRA         L_cooloff55
	NOP
;Steering Wheelv1.01.c,239 :: 		RG3_bit=0;
	BCF         RG3_bit+0, 3 
;Steering Wheelv1.01.c,240 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;Steering Wheelv1.01.c,241 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;Steering Wheelv1.01.c,242 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;Steering Wheelv1.01.c,243 :: 		PORTE=0x71;
	MOVLW       113
	MOVWF       PORTE+0 
;Steering Wheelv1.01.c,244 :: 		delay_us(4000);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_cooloff56:
	DECFSZ      R13, 1, 1
	BRA         L_cooloff56
	DECFSZ      R12, 1, 1
	BRA         L_cooloff56
	NOP
;Steering Wheelv1.01.c,245 :: 		}
	RETURN      0
; end of _cooloff

_engoff:

;Steering Wheelv1.01.c,247 :: 		void engoff()
;Steering Wheelv1.01.c,250 :: 		RC7_bit=1;
	BSF         RC7_bit+0, 7 
;Steering Wheelv1.01.c,251 :: 		RC6_bit=0;
	BCF         RC6_bit+0, 6 
;Steering Wheelv1.01.c,252 :: 		RC5_bit=1;
	BSF         RC5_bit+0, 5 
;Steering Wheelv1.01.c,253 :: 		RC4_bit=1;
	BSF         RC4_bit+0, 4 
;Steering Wheelv1.01.c,255 :: 		PORTD=0x79;
	MOVLW       121
	MOVWF       PORTD+0 
;Steering Wheelv1.01.c,256 :: 		delay_us(4000);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_engoff57:
	DECFSZ      R13, 1, 1
	BRA         L_engoff57
	DECFSZ      R12, 1, 1
	BRA         L_engoff57
	NOP
;Steering Wheelv1.01.c,259 :: 		RC7_bit=1;
	BSF         RC7_bit+0, 7 
;Steering Wheelv1.01.c,260 :: 		RC6_bit=1;
	BSF         RC6_bit+0, 6 
;Steering Wheelv1.01.c,261 :: 		RC5_bit=1;
	BSF         RC5_bit+0, 5 
;Steering Wheelv1.01.c,262 :: 		RC4_bit=0;
	BCF         RC4_bit+0, 4 
;Steering Wheelv1.01.c,263 :: 		PORTD=0x3F;
	MOVLW       63
	MOVWF       PORTD+0 
;Steering Wheelv1.01.c,264 :: 		delay_us(4000);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_engoff58:
	DECFSZ      R13, 1, 1
	BRA         L_engoff58
	DECFSZ      R12, 1, 1
	BRA         L_engoff58
	NOP
;Steering Wheelv1.01.c,266 :: 		RC7_bit=1;
	BSF         RC7_bit+0, 7 
;Steering Wheelv1.01.c,267 :: 		RC6_bit=1;
	BSF         RC6_bit+0, 6 
;Steering Wheelv1.01.c,268 :: 		RC5_bit=0;
	BCF         RC5_bit+0, 5 
;Steering Wheelv1.01.c,269 :: 		RC4_bit=1;
	BSF         RC4_bit+0, 4 
;Steering Wheelv1.01.c,270 :: 		PORTD=0x71;
	MOVLW       113
	MOVWF       PORTD+0 
;Steering Wheelv1.01.c,271 :: 		delay_us(4000);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_engoff59:
	DECFSZ      R13, 1, 1
	BRA         L_engoff59
	DECFSZ      R12, 1, 1
	BRA         L_engoff59
	NOP
;Steering Wheelv1.01.c,272 :: 		}
	RETURN      0
; end of _engoff

_main:

;Steering Wheelv1.01.c,275 :: 		void main() {
;Steering Wheelv1.01.c,276 :: 		T0CON=0XF8; //    timer0 on, 8 bit mode, counter, falling edge, with no prescalar
	MOVLW       248
	MOVWF       T0CON+0 
;Steering Wheelv1.01.c,277 :: 		T1CON=0x0B;
	MOVLW       11
	MOVWF       T1CON+0 
;Steering Wheelv1.01.c,278 :: 		TRISA=0xFF;
	MOVLW       255
	MOVWF       TRISA+0 
;Steering Wheelv1.01.c,279 :: 		ADCON1=0x00;
	CLRF        ADCON1+0 
;Steering Wheelv1.01.c,281 :: 		TRISF  = 0;
	CLRF        TRISF+0 
;Steering Wheelv1.01.c,282 :: 		TRISE  = 0;
	CLRF        TRISE+0 
;Steering Wheelv1.01.c,283 :: 		TRISB  = 0;
	CLRF        TRISB+0 
;Steering Wheelv1.01.c,284 :: 		TRISD  = 0;
	CLRF        TRISD+0 
;Steering Wheelv1.01.c,285 :: 		TRISC0_BIT=1;
	BSF         TRISC0_bit+0, 0 
;Steering Wheelv1.01.c,286 :: 		TRISC1_BIT=1;
	BSF         TRISC1_bit+0, 1 
;Steering Wheelv1.01.c,287 :: 		TRISC2_BIT=1;
	BSF         TRISC2_bit+0, 2 
;Steering Wheelv1.01.c,288 :: 		TRISC3_BIT=1;   // 1's inputs
	BSF         TRISC3_bit+0, 3 
;Steering Wheelv1.01.c,289 :: 		TRISC4_BIT=0;
	BCF         TRISC4_bit+0, 4 
;Steering Wheelv1.01.c,290 :: 		TRISC5_BIT=0;
	BCF         TRISC5_bit+0, 5 
;Steering Wheelv1.01.c,291 :: 		TRISC6_BIT=0;
	BCF         TRISC6_bit+0, 6 
;Steering Wheelv1.01.c,292 :: 		TRISC7_BIT=0;   // 0's outputs
	BCF         TRISC7_bit+0, 7 
;Steering Wheelv1.01.c,293 :: 		TRISG  = 0x00;
	CLRF        TRISG+0 
;Steering Wheelv1.01.c,297 :: 		for(i=0; i<=14; i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main60:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main109
	MOVF        _i+0, 0 
	SUBLW       14
L__main109:
	BTFSS       STATUS+0, 0 
	GOTO        L_main61
;Steering Wheelv1.01.c,299 :: 		PORTF=bar(i);
	MOVF        _i+0, 0 
	MOVWF       FARG_bar_num+0 
	MOVF        _i+1, 0 
	MOVWF       FARG_bar_num+1 
	CALL        _bar+0, 0
	MOVF        R0, 0 
	MOVWF       PORTF+0 
;Steering Wheelv1.01.c,300 :: 		PORTB=fun(i);
	MOVF        _i+0, 0 
	MOVWF       FARG_fun_num+0 
	MOVF        _i+1, 0 
	MOVWF       FARG_fun_num+1 
	CALL        _fun+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Steering Wheelv1.01.c,301 :: 		PORTD=PORTE=fun(i);
	MOVF        _i+0, 0 
	MOVWF       FARG_fun_num+0 
	MOVF        _i+1, 0 
	MOVWF       FARG_fun_num+1 
	CALL        _fun+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
	MOVF        PORTE+0, 0 
	MOVWF       PORTD+0 
;Steering Wheelv1.01.c,302 :: 		PORTG=0X00;
	CLRF        PORTG+0 
;Steering Wheelv1.01.c,303 :: 		RC4_bit=RC5_bit=RC6_bit=RC7_bit=0;
	BCF         RC7_bit+0, 7 
	BTFSC       RC7_bit+0, 7 
	GOTO        L__main110
	BCF         RC6_bit+0, 6 
	GOTO        L__main111
L__main110:
	BSF         RC6_bit+0, 6 
L__main111:
	BTFSC       RC6_bit+0, 6 
	GOTO        L__main112
	BCF         RC5_bit+0, 5 
	GOTO        L__main113
L__main112:
	BSF         RC5_bit+0, 5 
L__main113:
	BTFSC       RC5_bit+0, 5 
	GOTO        L__main114
	BCF         RC4_bit+0, 4 
	GOTO        L__main115
L__main114:
	BSF         RC4_bit+0, 4 
L__main115:
;Steering Wheelv1.01.c,304 :: 		delay_ms(60);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       56
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main63:
	DECFSZ      R13, 1, 1
	BRA         L_main63
	DECFSZ      R12, 1, 1
	BRA         L_main63
	DECFSZ      R11, 1, 1
	BRA         L_main63
;Steering Wheelv1.01.c,297 :: 		for(i=0; i<=14; i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;Steering Wheelv1.01.c,305 :: 		}
	GOTO        L_main60
L_main61:
;Steering Wheelv1.01.c,306 :: 		PORTF = 0x00;
	CLRF        PORTF+0 
;Steering Wheelv1.01.c,312 :: 		while(1)
L_main64:
;Steering Wheelv1.01.c,314 :: 		DELAY_MS(16);
	MOVLW       84
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main66:
	DECFSZ      R13, 1, 1
	BRA         L_main66
	DECFSZ      R12, 1, 1
	BRA         L_main66
	NOP
;Steering Wheelv1.01.c,315 :: 		gearp=gps();
	CALL        _gps+0, 0
	MOVF        R0, 0 
	MOVWF       _gearp+0 
	MOVF        R1, 0 
	MOVWF       _gearp+1 
;Steering Wheelv1.01.c,318 :: 		teeth= TMR0L;
	MOVF        TMR0L+0, 0 
	MOVWF       _teeth+0 
;Steering Wheelv1.01.c,319 :: 		value=teeth*60;
	MOVLW       60
	MULWF       _teeth+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        PRODH+0, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _value+0 
	MOVF        R1, 0 
	MOVWF       _value+1 
;Steering Wheelv1.01.c,320 :: 		rpm=value/1000;
	MOVLW       232
	MOVWF       R4 
	MOVLW       3
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       _rpm+0 
	MOVF        R1, 0 
	MOVWF       _rpm+1 
;Steering Wheelv1.01.c,322 :: 		while(value <1000)
L_main67:
	MOVLW       128
	XORWF       _value+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main116
	MOVLW       232
	SUBWF       _value+0, 0 
L__main116:
	BTFSC       STATUS+0, 0 
	GOTO        L_main68
;Steering Wheelv1.01.c,323 :: 		{engoff();
	CALL        _engoff+0, 0
;Steering Wheelv1.01.c,324 :: 		teeth= TMR0L;
	MOVF        TMR0L+0, 0 
	MOVWF       _teeth+0 
;Steering Wheelv1.01.c,325 :: 		value=teeth*60;
	MOVLW       60
	MULWF       _teeth+0 
	MOVF        PRODL+0, 0 
	MOVWF       _value+0 
	MOVF        PRODH+0, 0 
	MOVWF       _value+1 
;Steering Wheelv1.01.c,326 :: 		if(ADC_Read(1)<= 350)
	MOVLW       1
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R1, 0 
	SUBLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__main117
	MOVF        R0, 0 
	SUBLW       94
L__main117:
	BTFSS       STATUS+0, 0 
	GOTO        L_main69
;Steering Wheelv1.01.c,327 :: 		cooloff();
	CALL        _cooloff+0, 0
	GOTO        L_main70
L_main69:
;Steering Wheelv1.01.c,329 :: 		coolon();
	CALL        _coolon+0, 0
L_main70:
;Steering Wheelv1.01.c,330 :: 		}
	GOTO        L_main67
L_main68:
;Steering Wheelv1.01.c,332 :: 		rpmlights(rpm);
	MOVF        _rpm+0, 0 
	MOVWF       FARG_rpmlights_num+0 
	MOVF        _rpm+1, 0 
	MOVWF       FARG_rpmlights_num+1 
	CALL        _rpmlights+0, 0
;Steering Wheelv1.01.c,335 :: 		value = et();
	CALL        _et+0, 0
	MOVF        R0, 0 
	MOVWF       _value+0 
	MOVF        R1, 0 
	MOVWF       _value+1 
;Steering Wheelv1.01.c,336 :: 		segr();
	CALL        _segr+0, 0
;Steering Wheelv1.01.c,338 :: 		fuelused();
	CALL        _fuelused+0, 0
;Steering Wheelv1.01.c,339 :: 		speed();
	CALL        _speed+0, 0
;Steering Wheelv1.01.c,340 :: 		segl();
	CALL        _segl+0, 0
;Steering Wheelv1.01.c,346 :: 		TMR0L=0x00;
	CLRF        TMR0L+0 
;Steering Wheelv1.01.c,347 :: 		TMR1H=0x00;
	CLRF        TMR1H+0 
;Steering Wheelv1.01.c,353 :: 		}}
	GOTO        L_main64
	GOTO        $+0
; end of _main
