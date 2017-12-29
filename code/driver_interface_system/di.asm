
_seg7:

;di.c,9 :: 		int seg7(int num)
;di.c,11 :: 		int val[]={0x3f,0x06,0x5b,0x4f,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
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
;di.c,12 :: 		return(val[num]);
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
;di.c,13 :: 		}
	RETURN      0
; end of _seg7

_gear:

;di.c,15 :: 		int gear(int num)
;di.c,17 :: 		int val[]={0x54,0x06,0xDA,0xCE,0x66,0xEC,0xFC,0x86,0xFE,0xEE};
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
;di.c,18 :: 		return(val[num]);
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
;di.c,19 :: 		}
	RETURN      0
; end of _gear

_fun:

;di.c,21 :: 		int fun(int num)
;di.c,23 :: 		int val[]={0x7f,0x3f,0x1f,0x1e,0x1c,0x18,0x10,0x18,0x1c,0x1e,0x1f,0x3f,0x7f,0x00,0x7f};
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
;di.c,24 :: 		return(val[num]);
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
;di.c,25 :: 		}
	RETURN      0
; end of _fun

_bar:

;di.c,27 :: 		int bar(int num)
;di.c,29 :: 		int val[]={0x81,0xc3,0xe7,0xff,0xe7,0xc3,0x81,0x81,0xc3,0xe7,0xff,0xe7,0xc3,0x81};
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
;di.c,30 :: 		return(val[num]);
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
;di.c,31 :: 		}
	RETURN      0
; end of _bar

_gps:

;di.c,33 :: 		gps()
;di.c,35 :: 		j=ADC_READ(3);
	MOVLW       3
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;di.c,37 :: 		if (j>=0 &&j<112)
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps73
	MOVLW       0
	SUBWF       R0, 0 
L__gps73:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps2
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps74
	MOVLW       112
	SUBWF       _j+0, 0 
L__gps74:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps2
L__gps72:
;di.c,38 :: 		PORTB=gear(1);
	MOVLW       1
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
	GOTO        L_gps3
L_gps2:
;di.c,39 :: 		else if (j>=113 && j<159)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps75
	MOVLW       113
	SUBWF       _j+0, 0 
L__gps75:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps6
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps76
	MOVLW       159
	SUBWF       _j+0, 0 
L__gps76:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps6
L__gps71:
;di.c,40 :: 		PORTB=gear(0);
	CLRF        FARG_gear_num+0 
	CLRF        FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
	GOTO        L_gps7
L_gps6:
;di.c,41 :: 		else if (j>=160 && j<328)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps77
	MOVLW       160
	SUBWF       _j+0, 0 
L__gps77:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps10
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps78
	MOVLW       72
	SUBWF       _j+0, 0 
L__gps78:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps10
L__gps70:
;di.c,42 :: 		PORTB=gear(2);
	MOVLW       2
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
	GOTO        L_gps11
L_gps10:
;di.c,43 :: 		else if (j>=329 && j<469)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps79
	MOVLW       73
	SUBWF       _j+0, 0 
L__gps79:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps14
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps80
	MOVLW       213
	SUBWF       _j+0, 0 
L__gps80:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps14
L__gps69:
;di.c,44 :: 		PORTB=gear(3);
	MOVLW       3
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
	GOTO        L_gps15
L_gps14:
;di.c,45 :: 		else if (j>=470 && j<669)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps81
	MOVLW       214
	SUBWF       _j+0, 0 
L__gps81:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps18
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps82
	MOVLW       157
	SUBWF       _j+0, 0 
L__gps82:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps18
L__gps68:
;di.c,46 :: 		PORTB=gear(4);
	MOVLW       4
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
	GOTO        L_gps19
L_gps18:
;di.c,47 :: 		else if (j>=670 && j<903)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps83
	MOVLW       158
	SUBWF       _j+0, 0 
L__gps83:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps22
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps84
	MOVLW       135
	SUBWF       _j+0, 0 
L__gps84:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps22
L__gps67:
;di.c,48 :: 		PORTB=gear(5);
	MOVLW       5
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
	GOTO        L_gps23
L_gps22:
;di.c,49 :: 		else if (j>=903 && j<1020)
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps85
	MOVLW       135
	SUBWF       _j+0, 0 
L__gps85:
	BTFSS       STATUS+0, 0 
	GOTO        L_gps26
	MOVLW       128
	XORWF       _j+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__gps86
	MOVLW       252
	SUBWF       _j+0, 0 
L__gps86:
	BTFSC       STATUS+0, 0 
	GOTO        L_gps26
L__gps66:
;di.c,50 :: 		PORTB=gear(6);
	MOVLW       6
	MOVWF       FARG_gear_num+0 
	MOVLW       0
	MOVWF       FARG_gear_num+1 
	CALL        _gear+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
L_gps26:
L_gps23:
L_gps19:
L_gps15:
L_gps11:
L_gps7:
L_gps3:
;di.c,51 :: 		}
	RETURN      0
; end of _gps

_voltage:

;di.c,53 :: 		int voltage()
;di.c,55 :: 		j= ADC_Read(3);
	MOVLW       3
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;di.c,56 :: 		return volt=- 3.1e-006*j*j + 0.14*j - 0.19;
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
;di.c,57 :: 		}
	RETURN      0
; end of _voltage

_et:

;di.c,59 :: 		int et()
;di.c,61 :: 		j= ADC_Read(0);                                 //engine temp begins
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _j+0 
	MOVF        R1, 0 
	MOVWF       _j+1 
;di.c,62 :: 		return etmp= (-2.4/10000000*j*j*j + 0.00041*j*j -0.34*j + 140);
	CALL        _Int2Double+0, 0
	MOVLW       90
	MOVWF       R4 
	MOVLW       217
	MOVWF       R5 
	MOVLW       128
	MOVWF       R6 
	MOVLW       105
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
	MOVF        FLOC__et+4, 0 
	MOVWF       R4 
	MOVF        FLOC__et+5, 0 
	MOVWF       R5 
	MOVF        FLOC__et+6, 0 
	MOVWF       R6 
	MOVF        FLOC__et+7, 0 
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
	MOVLW       69
	MOVWF       R0 
	MOVLW       245
	MOVWF       R1 
	MOVLW       86
	MOVWF       R2 
	MOVLW       115
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
	MOVF        R0, 0 
	MOVWF       FLOC__et+0 
	MOVF        R1, 0 
	MOVWF       FLOC__et+1 
	MOVF        R2, 0 
	MOVWF       FLOC__et+2 
	MOVF        R3, 0 
	MOVWF       FLOC__et+3 
	MOVLW       123
	MOVWF       R0 
	MOVLW       20
	MOVWF       R1 
	MOVLW       46
	MOVWF       R2 
	MOVLW       125
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
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVF        FLOC__et+0, 0 
	MOVWF       R0 
	MOVF        FLOC__et+1, 0 
	MOVWF       R1 
	MOVF        FLOC__et+2, 0 
	MOVWF       R2 
	MOVF        FLOC__et+3, 0 
	MOVWF       R3 
	CALL        _Sub_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       12
	MOVWF       R6 
	MOVLW       134
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	CALL        _Double2Byte+0, 0
	MOVF        R0, 0 
	MOVWF       _etmp+0 
	MOVLW       0
	MOVWF       R1 
;di.c,64 :: 		}
	RETURN      0
; end of _et

_speed:

;di.c,66 :: 		speed()
;di.c,68 :: 		as=teeth/15*15.0796447;
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
;di.c,69 :: 		ts=as*18/5;
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
;di.c,70 :: 		TMR0L=0x00;
	CLRF        TMR0L+0 
;di.c,71 :: 		}
	RETURN      0
; end of _speed

_rpmlights:

;di.c,73 :: 		rpmlights(int num)
;di.c,75 :: 		switch(num)
	GOTO        L_rpmlights27
;di.c,77 :: 		case 1: PORTF=0x01; break;
L_rpmlights29:
	MOVLW       1
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,78 :: 		case 2: PORTF=0x03; break;
L_rpmlights30:
	MOVLW       3
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,79 :: 		case 3: PORTF=0x03; break;
L_rpmlights31:
	MOVLW       3
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,80 :: 		case 4: PORTF=0x07; break;
L_rpmlights32:
	MOVLW       7
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,81 :: 		case 5: PORTF=0x1f; break;
L_rpmlights33:
	MOVLW       31
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,82 :: 		case 6: PORTF=0x1f; break;
L_rpmlights34:
	MOVLW       31
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,83 :: 		case 7: PORTF=0x3f; break;
L_rpmlights35:
	MOVLW       63
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,84 :: 		case 8: PORTF=0x3f; break;
L_rpmlights36:
	MOVLW       63
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,85 :: 		case 9: PORTF=0x7f; break;
L_rpmlights37:
	MOVLW       127
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,86 :: 		case 10: PORTF=0x7f; break;
L_rpmlights38:
	MOVLW       127
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,87 :: 		case 11: PORTF=0xFf; break;
L_rpmlights39:
	MOVLW       255
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,88 :: 		case 12: PORTF=0xFF; break;
L_rpmlights40:
	MOVLW       255
	MOVWF       PORTF+0 
	GOTO        L_rpmlights28
;di.c,89 :: 		}
L_rpmlights27:
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights87
	MOVLW       1
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights87:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights29
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights88
	MOVLW       2
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights88:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights30
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights89
	MOVLW       3
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights89:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights31
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights90
	MOVLW       4
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights90:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights32
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights91
	MOVLW       5
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights91:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights33
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights92
	MOVLW       6
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights92:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights34
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights93
	MOVLW       7
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights93:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights35
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights94
	MOVLW       8
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights94:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights36
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights95
	MOVLW       9
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights95:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights37
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights96
	MOVLW       10
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights96:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights38
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights97
	MOVLW       11
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights97:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights39
	MOVLW       0
	XORWF       FARG_rpmlights_num+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rpmlights98
	MOVLW       12
	XORWF       FARG_rpmlights_num+0, 0 
L__rpmlights98:
	BTFSC       STATUS+0, 2 
	GOTO        L_rpmlights40
L_rpmlights28:
;di.c,91 :: 		}
	RETURN      0
; end of _rpmlights

_segr:

;di.c,93 :: 		segr()
;di.c,95 :: 		thr=value/1000;
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
;di.c,96 :: 		hr=value/100%10;
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
;di.c,97 :: 		tr=value/10%10;
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
;di.c,98 :: 		ur=value%10;
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
;di.c,100 :: 		if(value>999)
	MOVLW       128
	XORLW       3
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segr99
	MOVF        _value+0, 0 
	SUBLW       231
L__segr99:
	BTFSC       STATUS+0, 0 
	GOTO        L_segr41
;di.c,102 :: 		RC7_bit=1;
	BSF         RC7_bit+0, 7 
;di.c,103 :: 		RC6_bit=0;
	BCF         RC6_bit+0, 6 
;di.c,104 :: 		RC5_bit=1;
	BSF         RC5_bit+0, 5 
;di.c,105 :: 		RC4_bit=1;
	BSF         RC4_bit+0, 4 
;di.c,106 :: 		PORTD=seg7(thr);
	MOVF        _thr+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;di.c,107 :: 		delay_us(2000);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_segr42:
	DECFSZ      R13, 1, 1
	BRA         L_segr42
	DECFSZ      R12, 1, 1
	BRA         L_segr42
	NOP
;di.c,108 :: 		}
L_segr41:
;di.c,110 :: 		if(value>99)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segr100
	MOVF        _value+0, 0 
	SUBLW       99
L__segr100:
	BTFSC       STATUS+0, 0 
	GOTO        L_segr43
;di.c,112 :: 		RC7_bit=0;
	BCF         RC7_bit+0, 7 
;di.c,113 :: 		RC6_bit=1;
	BSF         RC6_bit+0, 6 
;di.c,114 :: 		RC5_bit=1;
	BSF         RC5_bit+0, 5 
;di.c,115 :: 		RC4_bit=1;
	BSF         RC4_bit+0, 4 
;di.c,116 :: 		PORTD=seg7(hr);
	MOVF        _hr+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;di.c,117 :: 		delay_us(2000);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_segr44:
	DECFSZ      R13, 1, 1
	BRA         L_segr44
	DECFSZ      R12, 1, 1
	BRA         L_segr44
	NOP
;di.c,118 :: 		}
L_segr43:
;di.c,120 :: 		if(value>9)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segr101
	MOVF        _value+0, 0 
	SUBLW       9
L__segr101:
	BTFSC       STATUS+0, 0 
	GOTO        L_segr45
;di.c,122 :: 		RC7_bit=1;
	BSF         RC7_bit+0, 7 
;di.c,123 :: 		RC6_bit=1;
	BSF         RC6_bit+0, 6 
;di.c,124 :: 		RC5_bit=1;
	BSF         RC5_bit+0, 5 
;di.c,125 :: 		RC4_bit=0;
	BCF         RC4_bit+0, 4 
;di.c,126 :: 		PORTD=seg7(tr);
	MOVF        _tr+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;di.c,127 :: 		delay_us(2000);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_segr46:
	DECFSZ      R13, 1, 1
	BRA         L_segr46
	DECFSZ      R12, 1, 1
	BRA         L_segr46
	NOP
;di.c,128 :: 		}
L_segr45:
;di.c,130 :: 		if(value>=0)
	MOVLW       128
	XORWF       _value+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segr102
	MOVLW       0
	SUBWF       _value+0, 0 
L__segr102:
	BTFSS       STATUS+0, 0 
	GOTO        L_segr47
;di.c,132 :: 		RC7_bit=1;
	BSF         RC7_bit+0, 7 
;di.c,133 :: 		RC6_bit=1;
	BSF         RC6_bit+0, 6 
;di.c,134 :: 		RC5_bit=0;
	BCF         RC5_bit+0, 5 
;di.c,135 :: 		RC4_bit=1;
	BSF         RC4_bit+0, 4 
;di.c,136 :: 		PORTD=seg7(ur);
	MOVF        _ur+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;di.c,137 :: 		delay_us(2000);
	MOVLW       11
	MOVWF       R12, 0
	MOVLW       98
	MOVWF       R13, 0
L_segr48:
	DECFSZ      R13, 1, 1
	BRA         L_segr48
	DECFSZ      R12, 1, 1
	BRA         L_segr48
	NOP
;di.c,138 :: 		}
L_segr47:
;di.c,139 :: 		}
	RETURN      0
; end of _segr

_segl:

;di.c,141 :: 		segl()
;di.c,143 :: 		thl=value/1000;
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
;di.c,144 :: 		hl=(value/100)%10;
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
;di.c,145 :: 		tl=value/10%10;
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
;di.c,146 :: 		ul=value%10;
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
;di.c,148 :: 		if(value>999)
	MOVLW       128
	XORLW       3
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segl103
	MOVF        _value+0, 0 
	SUBLW       231
L__segl103:
	BTFSC       STATUS+0, 0 
	GOTO        L_segl49
;di.c,150 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;di.c,151 :: 		RG2_bit=0;
	BCF         RG2_bit+0, 2 
;di.c,152 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;di.c,153 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;di.c,155 :: 		PORTE=seg7(thl);
	MOVF        _thl+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;di.c,156 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl50:
	DECFSZ      R13, 1, 1
	BRA         L_segl50
	DECFSZ      R12, 1, 1
	BRA         L_segl50
	NOP
;di.c,157 :: 		}
L_segl49:
;di.c,158 :: 		if(value>99)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segl104
	MOVF        _value+0, 0 
	SUBLW       99
L__segl104:
	BTFSC       STATUS+0, 0 
	GOTO        L_segl51
;di.c,160 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;di.c,161 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;di.c,162 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;di.c,163 :: 		RG0_bit=0;
	BCF         RG0_bit+0, 0 
;di.c,164 :: 		PORTE=seg7(hl);
	MOVF        _hl+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;di.c,165 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl52:
	DECFSZ      R13, 1, 1
	BRA         L_segl52
	DECFSZ      R12, 1, 1
	BRA         L_segl52
	NOP
;di.c,166 :: 		}
L_segl51:
;di.c,167 :: 		if(value>9)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _value+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segl105
	MOVF        _value+0, 0 
	SUBLW       9
L__segl105:
	BTFSC       STATUS+0, 0 
	GOTO        L_segl53
;di.c,169 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;di.c,170 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;di.c,171 :: 		RG1_bit=0;
	BCF         RG1_bit+0, 1 
;di.c,172 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;di.c,173 :: 		PORTE=seg7(tl);
	MOVF        _tl+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;di.c,174 :: 		delay_us(1000);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_segl54:
	DECFSZ      R13, 1, 1
	BRA         L_segl54
	DECFSZ      R12, 1, 1
	BRA         L_segl54
	NOP
;di.c,175 :: 		}
L_segl53:
;di.c,176 :: 		if(value>=0)
	MOVLW       128
	XORWF       _value+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__segl106
	MOVLW       0
	SUBWF       _value+0, 0 
L__segl106:
	BTFSS       STATUS+0, 0 
	GOTO        L_segl55
;di.c,178 :: 		RG3_bit=0;
	BCF         RG3_bit+0, 3 
;di.c,179 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;di.c,180 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;di.c,181 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;di.c,182 :: 		PORTE=seg7(ul);
	MOVF        _ul+0, 0 
	MOVWF       FARG_seg7_num+0 
	MOVLW       0
	MOVWF       FARG_seg7_num+1 
	CALL        _seg7+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
;di.c,184 :: 		}
L_segl55:
;di.c,185 :: 		}
	RETURN      0
; end of _segl

_cooloff:

;di.c,186 :: 		void cooloff()
;di.c,189 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;di.c,190 :: 		RG2_bit=0;
	BCF         RG2_bit+0, 2 
;di.c,191 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;di.c,192 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;di.c,194 :: 		PORTE=0x39;
	MOVLW       57
	MOVWF       PORTE+0 
;di.c,195 :: 		delay_us(4000);
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
;di.c,198 :: 		RG3_bit=1;
	BSF         RG3_bit+0, 3 
;di.c,199 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;di.c,200 :: 		RG1_bit=0;
	BCF         RG1_bit+0, 1 
;di.c,201 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;di.c,202 :: 		PORTE=0x3F;
	MOVLW       63
	MOVWF       PORTE+0 
;di.c,203 :: 		delay_us(4000);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_cooloff57:
	DECFSZ      R13, 1, 1
	BRA         L_cooloff57
	DECFSZ      R12, 1, 1
	BRA         L_cooloff57
	NOP
;di.c,205 :: 		RG3_bit=0;
	BCF         RG3_bit+0, 3 
;di.c,206 :: 		RG2_bit=1;
	BSF         RG2_bit+0, 2 
;di.c,207 :: 		RG1_bit=1;
	BSF         RG1_bit+0, 1 
;di.c,208 :: 		RG0_bit=1;
	BSF         RG0_bit+0, 0 
;di.c,209 :: 		PORTE=0x71;
	MOVLW       113
	MOVWF       PORTE+0 
;di.c,210 :: 		delay_us(4000);
	MOVLW       21
	MOVWF       R12, 0
	MOVLW       198
	MOVWF       R13, 0
L_cooloff58:
	DECFSZ      R13, 1, 1
	BRA         L_cooloff58
	DECFSZ      R12, 1, 1
	BRA         L_cooloff58
	NOP
;di.c,211 :: 		}
	RETURN      0
; end of _cooloff

_main:

;di.c,215 :: 		void main() {
;di.c,216 :: 		T0CON=0XF8; //    timer0 on, 8 bit mode, counter, falling edge, with prescalar of 1:16
	MOVLW       248
	MOVWF       T0CON+0 
;di.c,217 :: 		TRISA=0xFF;
	MOVLW       255
	MOVWF       TRISA+0 
;di.c,218 :: 		ADCON1=0x00;
	CLRF        ADCON1+0 
;di.c,220 :: 		TRISF  = 0;
	CLRF        TRISF+0 
;di.c,221 :: 		TRISE  = 0;
	CLRF        TRISE+0 
;di.c,222 :: 		TRISB  = 0;
	CLRF        TRISB+0 
;di.c,223 :: 		TRISD  = 0;
	CLRF        TRISD+0 
;di.c,224 :: 		TRISG  = 0;
	CLRF        TRISG+0 
;di.c,225 :: 		TRISC0_BIT=1;
	BSF         TRISC0_bit+0, 0 
;di.c,226 :: 		TRISC1_BIT=1;
	BSF         TRISC1_bit+0, 1 
;di.c,227 :: 		TRISC2_BIT=1;
	BSF         TRISC2_bit+0, 2 
;di.c,228 :: 		TRISC3_BIT=1;   // 1's inputs
	BSF         TRISC3_bit+0, 3 
;di.c,229 :: 		TRISC4_BIT=0;
	BCF         TRISC4_bit+0, 4 
;di.c,230 :: 		TRISC5_BIT=0;
	BCF         TRISC5_bit+0, 5 
;di.c,231 :: 		TRISC6_BIT=0;
	BCF         TRISC6_bit+0, 6 
;di.c,232 :: 		TRISC7_BIT=0;   // 0's outputs
	BCF         TRISC7_bit+0, 7 
;di.c,237 :: 		for(i=0; i<=14; i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main59:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main107
	MOVF        _i+0, 0 
	SUBLW       14
L__main107:
	BTFSS       STATUS+0, 0 
	GOTO        L_main60
;di.c,239 :: 		PORTF=bar(i);
	MOVF        _i+0, 0 
	MOVWF       FARG_bar_num+0 
	MOVF        _i+1, 0 
	MOVWF       FARG_bar_num+1 
	CALL        _bar+0, 0
	MOVF        R0, 0 
	MOVWF       PORTF+0 
;di.c,240 :: 		PORTB=fun(i);
	MOVF        _i+0, 0 
	MOVWF       FARG_fun_num+0 
	MOVF        _i+1, 0 
	MOVWF       FARG_fun_num+1 
	CALL        _fun+0, 0
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;di.c,241 :: 		PORTD=PORTE=fun(i);
	MOVF        _i+0, 0 
	MOVWF       FARG_fun_num+0 
	MOVF        _i+1, 0 
	MOVWF       FARG_fun_num+1 
	CALL        _fun+0, 0
	MOVF        R0, 0 
	MOVWF       PORTE+0 
	MOVF        PORTE+0, 0 
	MOVWF       PORTD+0 
;di.c,242 :: 		PORTG=0X00;
	CLRF        PORTG+0 
;di.c,243 :: 		RC4_bit=RC5_bit=RC6_bit=RC7_bit=0;
	BCF         RC7_bit+0, 7 
	BTFSC       RC7_bit+0, 7 
	GOTO        L__main108
	BCF         RC6_bit+0, 6 
	GOTO        L__main109
L__main108:
	BSF         RC6_bit+0, 6 
L__main109:
	BTFSC       RC6_bit+0, 6 
	GOTO        L__main110
	BCF         RC5_bit+0, 5 
	GOTO        L__main111
L__main110:
	BSF         RC5_bit+0, 5 
L__main111:
	BTFSC       RC5_bit+0, 5 
	GOTO        L__main112
	BCF         RC4_bit+0, 4 
	GOTO        L__main113
L__main112:
	BSF         RC4_bit+0, 4 
L__main113:
;di.c,244 :: 		delay_ms(60);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       56
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main62:
	DECFSZ      R13, 1, 1
	BRA         L_main62
	DECFSZ      R12, 1, 1
	BRA         L_main62
	DECFSZ      R11, 1, 1
	BRA         L_main62
;di.c,237 :: 		for(i=0; i<=14; i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;di.c,245 :: 		}
	GOTO        L_main59
L_main60:
;di.c,253 :: 		while(1)
L_main63:
;di.c,255 :: 		DELAY_MS(16);
	MOVLW       84
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L_main65:
	DECFSZ      R13, 1, 1
	BRA         L_main65
	DECFSZ      R12, 1, 1
	BRA         L_main65
	NOP
;di.c,256 :: 		teeth= TMR0L;
	MOVF        TMR0L+0, 0 
	MOVWF       _teeth+0 
;di.c,257 :: 		rpm=teeth*60/1000;
	MOVLW       60
	MULWF       _teeth+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        PRODH+0, 0 
	MOVWF       R1 
	MOVLW       232
	MOVWF       R4 
	MOVLW       3
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       _rpm+0 
	MOVF        R1, 0 
	MOVWF       _rpm+1 
;di.c,258 :: 		rpmlights(rpm);
	MOVF        R0, 0 
	MOVWF       FARG_rpmlights_num+0 
	MOVF        R1, 0 
	MOVWF       FARG_rpmlights_num+1 
	CALL        _rpmlights+0, 0
;di.c,264 :: 		gps();
	CALL        _gps+0, 0
;di.c,266 :: 		value=et();
	CALL        _et+0, 0
	MOVF        R0, 0 
	MOVWF       _value+0 
	MOVF        R1, 0 
	MOVWF       _value+1 
;di.c,267 :: 		segr();
	CALL        _segr+0, 0
;di.c,274 :: 		TMR0L=0x00;
	CLRF        TMR0L+0 
;di.c,276 :: 		}
	GOTO        L_main63
;di.c,278 :: 		}
	GOTO        $+0
; end of _main
