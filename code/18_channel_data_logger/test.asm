
_pll_init:

;test.c,5 :: 		void pll_init(void)
;test.c,7 :: 		CLKLOCK_bit=0;
	BCLR	CLKLOCK_bit, #7
;test.c,8 :: 		PORTG=0xffff;
	MOV	#65535, W0
	MOV	WREG, PORTG
;test.c,9 :: 		Hi(OSCCON)=0x78;
	MOV	#lo_addr(OSCCON+1), W1
	MOV.B	#120, W0
	MOV.B	W0, [W1]
;test.c,10 :: 		Hi(OSCCON)=0x9A;
	MOV	#lo_addr(OSCCON+1), W1
	MOV.B	#154, W0
	MOV.B	W0, [W1]
;test.c,11 :: 		OSCCONbits.NOSC=0x03;
	MOV	#768, W0
	MOV	W0, W1
	MOV	#lo_addr(OSCCONbits), W0
	XOR	W1, [W0], W1
	MOV	#1792, W0
	AND	W1, W0, W1
	MOV	#lo_addr(OSCCONbits), W0
	XOR	W1, [W0], W1
	MOV	W1, OSCCONbits
;test.c,12 :: 		Lo(OSCCON)=0x46;
	MOV	#lo_addr(OSCCON), W1
	MOV.B	#70, W0
	MOV.B	W0, [W1]
;test.c,13 :: 		Lo(OSCCON)=0x57;
	MOV	#lo_addr(OSCCON), W1
	MOV.B	#87, W0
	MOV.B	W0, [W1]
;test.c,14 :: 		CLKDIVbits.PLLPRE=0;
	MOV	#lo_addr(CLKDIVbits), W0
	MOV.B	[W0], W1
	MOV.B	#224, W0
	AND.B	W1, W0, W1
	MOV	#lo_addr(CLKDIVbits), W0
	MOV.B	W1, [W0]
;test.c,15 :: 		CLKDIVbits.PLLPOST=0;
	MOV	#lo_addr(CLKDIVbits), W0
	MOV.B	[W0], W1
	MOV.B	#63, W0
	AND.B	W1, W0, W1
	MOV	#lo_addr(CLKDIVbits), W0
	MOV.B	W1, [W0]
;test.c,16 :: 		PLLFBDbits.PLLDIV=0x1E;
	MOV	#30, W0
	MOV	W0, W1
	MOV	#lo_addr(PLLFBDbits), W0
	XOR	W1, [W0], W1
	MOV	#511, W0
	AND	W1, W0, W1
	MOV	#lo_addr(PLLFBDbits), W0
	XOR	W1, [W0], W1
	MOV	W1, PLLFBDbits
;test.c,17 :: 		OSWEN_bit=1;
	BSET	OSWEN_bit, #0
;test.c,18 :: 		delay_ms(100);
	MOV	#21, W8
	MOV	#22619, W7
L_pll_init0:
	DEC	W7
	BRA NZ	L_pll_init0
	DEC	W8
	BRA NZ	L_pll_init0
;test.c,19 :: 		while(OSWEN_bit==1);
L_pll_init2:
	BTSS	OSWEN_bit, #0
	GOTO	L_pll_init3
	GOTO	L_pll_init2
L_pll_init3:
;test.c,20 :: 		PORTG=0x2000;
	MOV	#8192, W0
	MOV	WREG, PORTG
;test.c,21 :: 		while(LOCK_bit==0);
L_pll_init4:
	BTSC	LOCK_bit, #5
	GOTO	L_pll_init5
	GOTO	L_pll_init4
L_pll_init5:
;test.c,22 :: 		}
L_end_pll_init:
	RETURN
; end of _pll_init

_chop:

;test.c,24 :: 		void chop(unsigned int y)
;test.c,30 :: 		a=y;
; a start address is: 6 (W3)
	MOV	W10, W3
;test.c,31 :: 		b=a/10;
	MOV	#10, W2
	REPEAT	#17
	DIV.U	W10, W2
; b start address is: 12 (W6)
	MOV	W0, W6
;test.c,32 :: 		c=a%10;
	MOV	#10, W2
	REPEAT	#17
	DIV.U	W3, W2
	MOV	W1, W0
; a end address is: 6 (W3)
; c start address is: 6 (W3)
	MOV	W0, W3
;test.c,33 :: 		d=b/10;
	MOV	#10, W2
	REPEAT	#17
	DIV.U	W6, W2
; d start address is: 10 (W5)
	MOV	W0, W5
;test.c,34 :: 		e=b%10;
	MOV	#10, W2
	REPEAT	#17
	DIV.U	W6, W2
	MOV	W1, W0
; b end address is: 12 (W6)
; e start address is: 12 (W6)
	MOV	W0, W6
;test.c,35 :: 		f=d/10;
	MOV	#10, W2
	REPEAT	#17
	DIV.U	W5, W2
; f start address is: 14 (W7)
	MOV	W0, W7
;test.c,36 :: 		p=d%10;
	MOV	#10, W2
	REPEAT	#17
	DIV.U	W5, W2
	MOV	W1, W0
; d end address is: 10 (W5)
; p start address is: 4 (W2)
	MOV	W0, W2
;test.c,38 :: 		Lo(U1TXREG)=f+48;
	MOV.B	#48, W1
	MOV	#lo_addr(U1TXREG), W0
	ADD.B	W7, W1, [W0]
; f end address is: 14 (W7)
;test.c,40 :: 		delay_ms(7);
	MOV	#2, W8
	MOV	#27796, W7
L_chop6:
	DEC	W7
	BRA NZ	L_chop6
	DEC	W8
	BRA NZ	L_chop6
	NOP
	NOP
;test.c,41 :: 		Lo(U1TXREG)=p+48;
	MOV.B	#48, W1
	MOV	#lo_addr(U1TXREG), W0
	ADD.B	W2, W1, [W0]
; p end address is: 4 (W2)
;test.c,43 :: 		delay_ms(7);
	MOV	#2, W8
	MOV	#27796, W7
L_chop8:
	DEC	W7
	BRA NZ	L_chop8
	DEC	W8
	BRA NZ	L_chop8
	NOP
	NOP
;test.c,44 :: 		Lo(U1TXREG)=e+48;
	MOV.B	#48, W1
	MOV	#lo_addr(U1TXREG), W0
	ADD.B	W6, W1, [W0]
; e end address is: 12 (W6)
;test.c,46 :: 		delay_ms(7);
	MOV	#2, W8
	MOV	#27796, W7
L_chop10:
	DEC	W7
	BRA NZ	L_chop10
	DEC	W8
	BRA NZ	L_chop10
	NOP
	NOP
;test.c,47 :: 		Lo(U1TXREG)=c+48;
	MOV.B	#48, W1
	MOV	#lo_addr(U1TXREG), W0
	ADD.B	W3, W1, [W0]
; c end address is: 6 (W3)
;test.c,49 :: 		delay_ms(7);
	MOV	#2, W8
	MOV	#27796, W7
L_chop12:
	DEC	W7
	BRA NZ	L_chop12
	DEC	W8
	BRA NZ	L_chop12
	NOP
	NOP
;test.c,50 :: 		Lo(U1TXREG)='\t';
	MOV	#lo_addr(U1TXREG), W1
	MOV.B	#9, W0
	MOV.B	W0, [W1]
;test.c,52 :: 		delay_ms(7);
	MOV	#2, W8
	MOV	#27796, W7
L_chop14:
	DEC	W7
	BRA NZ	L_chop14
	DEC	W8
	BRA NZ	L_chop14
	NOP
	NOP
;test.c,54 :: 		}
L_end_chop:
	RETURN
; end of _chop

_main:
	MOV	#2048, W15
	MOV	#6142, W0
	MOV	WREG, 32
	MOV	#1, W0
	MOV	WREG, 52
	MOV	#4, W0
	IOR	68
	LNK	#80

;test.c,63 :: 		void main()
;test.c,72 :: 		TRISG=0x0000;
	PUSH	W10
	PUSH	W11
	CLR	TRISG
;test.c,73 :: 		TRISD.B0=1;
	BSET	TRISD, #0
;test.c,75 :: 		ADC1_Init_Advanced(_ADC_12bit, _ADC_INTERNAL_REF);
	CLR	W11
	MOV	#1, W10
	CALL	_ADC1_Init_Advanced
;test.c,76 :: 		pll_init();
	CALL	_pll_init
;test.c,77 :: 		UART2_Init(9600);
	MOV	#9600, W10
	MOV	#0, W11
	CALL	_UART2_Init
;test.c,78 :: 		UART1_Init(57600);
	MOV	#57600, W10
	MOV	#0, W11
	CALL	_UART1_Init
;test.c,79 :: 		UART2_Write('E');
	MOV	#69, W10
	CALL	_UART2_Write
;test.c,80 :: 		UART2_Write('\r');
	MOV	#13, W10
	CALL	_UART2_Write
;test.c,81 :: 		delay_ms(100);
	MOV	#21, W8
	MOV	#22619, W7
L_main16:
	DEC	W7
	BRA NZ	L_main16
	DEC	W8
	BRA NZ	L_main16
;test.c,82 :: 		PORTG=0x4000;
	MOV	#16384, W0
	MOV	WREG, PORTG
;test.c,83 :: 		delay_ms(100);
	MOV	#21, W8
	MOV	#22619, W7
L_main18:
	DEC	W7
	BRA NZ	L_main18
	DEC	W8
	BRA NZ	L_main18
;test.c,84 :: 		UART2_Write_Text("IPA");
	MOV	#lo_addr(?lstr1_test), W10
	CALL	_UART2_Write_Text
;test.c,85 :: 		UART2_Write('\r');
	MOV	#13, W10
	CALL	_UART2_Write
;test.c,86 :: 		delay_ms(100);
	MOV	#21, W8
	MOV	#22619, W7
L_main20:
	DEC	W7
	BRA NZ	L_main20
	DEC	W8
	BRA NZ	L_main20
;test.c,87 :: 		UART2_Write_Text("ECS");
	MOV	#lo_addr(?lstr2_test), W10
	CALL	_UART2_Write_Text
;test.c,88 :: 		UART2_Write('\r');
	MOV	#13, W10
	CALL	_UART2_Write
;test.c,89 :: 		delay_ms(100);
	MOV	#21, W8
	MOV	#22619, W7
L_main22:
	DEC	W7
	BRA NZ	L_main22
	DEC	W8
	BRA NZ	L_main22
;test.c,91 :: 		UART2_Write_Text("SBD ");
	MOV	#lo_addr(?lstr3_test), W10
	CALL	_UART2_Write_Text
;test.c,92 :: 		UART2_Write_Text("$0D0000");
	MOV	#lo_addr(?lstr4_test), W10
	CALL	_UART2_Write_Text
;test.c,93 :: 		UART2_Write('\r');
	MOV	#13, W10
	CALL	_UART2_Write
;test.c,94 :: 		delay_ms(100);
	MOV	#21, W8
	MOV	#22619, W7
L_main24:
	DEC	W7
	BRA NZ	L_main24
	DEC	W8
	BRA NZ	L_main24
;test.c,95 :: 		UART2_Init(230400);
	MOV	#33792, W10
	MOV	#3, W11
	CALL	_UART2_Init
;test.c,97 :: 		PORTG=0xf000;
	MOV	#61440, W0
	MOV	WREG, PORTG
;test.c,99 :: 		while(1)
L_main26:
;test.c,102 :: 		while(RD0_bit);
L_main28:
	BTSS	RD0_bit, #0
	GOTO	L_main29
	GOTO	L_main28
L_main29:
;test.c,104 :: 		UART2_Write_Text("OPW TEST.csv");
	MOV	#lo_addr(?lstr5_test), W10
	CALL	_UART2_Write_Text
;test.c,105 :: 		UART2_Write('\r');
	MOV	#13, W10
	CALL	_UART2_Write
;test.c,107 :: 		c=0;
	CLR	W0
	CLR	W1
	MOV	W0, [W14+56]
	MOV	W1, [W14+58]
;test.c,109 :: 		while(c<100)
L_main30:
	MOV	#100, W1
	MOV	#0, W2
	MOV	#56, W0
	ADD	W14, W0, W0
	CP	W1, [W0++]
	CPB	W2, [W0--]
	BRA GT	L__main54
	GOTO	L_main31
L__main54:
;test.c,112 :: 		j=0;
	CLR	W0
	MOV	W0, [W14+60]
;test.c,115 :: 		a = ADC1_Get_Sample(0);
	CLR	W10
	CALL	_ADC1_Get_Sample
; a start address is: 4 (W2)
	MOV	W0, W2
	CLR	W3
;test.c,116 :: 		y=0.024*a;
	MOV.D	W2, W0
	SETM	W2
	CALL	__Long2Float
; a end address is: 4 (W2)
	MOV	#39846, W2
	MOV	#15556, W3
	CALL	__Mul_FP
;test.c,117 :: 		IntToStr(y,txt);
	MOV	#62, W2
	ADD	W14, W2, W2
	MOV	W2, [W14+76]
	CALL	__Float2Longint
	MOV	[W14+76], W1
	MOV	W1, W11
	MOV	W0, W10
	CALL	_IntToStr
;test.c,118 :: 		for(i=0;i<6;i++,j++)
; i start address is: 12 (W6)
; i start address is: 12 (W6)
	CLR	W6
; i end address is: 12 (W6)
; i end address is: 12 (W6)
	MOV	W6, W3
L_main32:
; i start address is: 6 (W3)
	CP	W3, #6
	BRA LTU	L__main55
	GOTO	L_main33
L__main55:
;test.c,120 :: 		txt1[j]=txt[i];
	ADD	W14, #0, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV	#62, W2
	ADD	W14, W2, W2
	ADD	W2, W3, W0
	MOV.B	[W0], [W1]
;test.c,121 :: 		txt2[j]=txt[i];
	ADD	W14, #28, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	ADD	W2, W3, W0
	MOV.B	[W0], [W1]
;test.c,118 :: 		for(i=0;i<6;i++,j++)
; i start address is: 12 (W6)
	ADD	W3, #1, W6
; i end address is: 6 (W3)
	MOV	[W14+60], W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, #1, [W0]
;test.c,122 :: 		}
	MOV	W6, W3
; i end address is: 12 (W6)
	GOTO	L_main32
L_main33:
;test.c,123 :: 		txt2[j]='\t';
	ADD	W14, #28, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV.B	#9, W0
	MOV.B	W0, [W1]
;test.c,124 :: 		txt1[j]  =',';
	ADD	W14, #0, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV.B	#44, W0
	MOV.B	W0, [W1]
;test.c,125 :: 		j++;
	MOV	[W14+60], W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, #1, [W0]
;test.c,130 :: 		a = ADC1_Get_Sample(1);
	MOV	#1, W10
	CALL	_ADC1_Get_Sample
; a start address is: 4 (W2)
	MOV	W0, W2
	CLR	W3
;test.c,131 :: 		y=0.024*a;
	MOV.D	W2, W0
	SETM	W2
	CALL	__Long2Float
; a end address is: 4 (W2)
	MOV	#39846, W2
	MOV	#15556, W3
	CALL	__Mul_FP
;test.c,132 :: 		IntToStr(y,txt);
	MOV	#62, W2
	ADD	W14, W2, W2
	MOV	W2, [W14+76]
	CALL	__Float2Longint
	MOV	[W14+76], W1
	MOV	W1, W11
	MOV	W0, W10
	CALL	_IntToStr
;test.c,134 :: 		for(i=0;i<6;i++,j++)
; i start address is: 12 (W6)
; i start address is: 12 (W6)
	CLR	W6
; i end address is: 12 (W6)
; i end address is: 12 (W6)
	MOV	W6, W3
L_main35:
; i start address is: 6 (W3)
	CP	W3, #6
	BRA LTU	L__main56
	GOTO	L_main36
L__main56:
;test.c,136 :: 		txt1[j]=txt[i];
	ADD	W14, #0, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV	#62, W2
	ADD	W14, W2, W2
	ADD	W2, W3, W0
	MOV.B	[W0], [W1]
;test.c,137 :: 		txt2[j]=txt[i];
	ADD	W14, #28, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	ADD	W2, W3, W0
	MOV.B	[W0], [W1]
;test.c,134 :: 		for(i=0;i<6;i++,j++)
; i start address is: 12 (W6)
	ADD	W3, #1, W6
; i end address is: 6 (W3)
	MOV	[W14+60], W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, #1, [W0]
;test.c,138 :: 		}
	MOV	W6, W3
; i end address is: 12 (W6)
	GOTO	L_main35
L_main36:
;test.c,139 :: 		txt2[j]='\t';
	ADD	W14, #28, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV.B	#9, W0
	MOV.B	W0, [W1]
;test.c,140 :: 		txt1[j]  =',';
	ADD	W14, #0, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV.B	#44, W0
	MOV.B	W0, [W1]
;test.c,141 :: 		j++;
	MOV	[W14+60], W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, #1, [W0]
;test.c,144 :: 		a = ADC1_Get_Sample(4);
	MOV	#4, W10
	CALL	_ADC1_Get_Sample
; a start address is: 4 (W2)
	MOV	W0, W2
	CLR	W3
;test.c,145 :: 		z=a*a;
	PUSH.D	W2
	MOV.D	W2, W0
	CALL	__Multiply_32x32
	SETM	W2
	CALL	__Long2Float
;test.c,146 :: 		y=0.0000031*z-0.038*a+130;
	MOV	#2456, W2
	MOV	#13904, W3
	CALL	__Mul_FP
	POP.D	W2
	MOV	W0, [W14+76]
	MOV	W1, [W14+78]
	MOV.D	W2, W0
	SETM	W2
	CALL	__Long2Float
; a end address is: 4 (W2)
	MOV	#42467, W2
	MOV	#15643, W3
	CALL	__Mul_FP
	MOV	W0, [W14+68]
	MOV	W1, [W14+70]
	MOV	[W14+68], W2
	MOV	[W14+70], W3
	MOV	[W14+76], W0
	MOV	[W14+78], W1
	CALL	__Sub_FP
	MOV	#0, W2
	MOV	#17154, W3
	CALL	__AddSub_FP
;test.c,147 :: 		IntToStr(y,txt);
	MOV	#62, W2
	ADD	W14, W2, W2
	MOV	W2, [W14+76]
	CALL	__Float2Longint
	MOV	[W14+76], W1
	MOV	W1, W11
	MOV	W0, W10
	CALL	_IntToStr
;test.c,149 :: 		for(i=0;i<6;i++,j++)
; i start address is: 6 (W3)
; i start address is: 6 (W3)
	CLR	W3
; i end address is: 6 (W3)
; i end address is: 6 (W3)
L_main38:
; i start address is: 6 (W3)
	CP	W3, #6
	BRA LTU	L__main57
	GOTO	L_main39
L__main57:
;test.c,151 :: 		txt1[j]=txt[i];
	ADD	W14, #0, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV	#62, W2
	ADD	W14, W2, W2
	ADD	W2, W3, W0
	MOV.B	[W0], [W1]
;test.c,152 :: 		txt2[j]=txt[i];
	ADD	W14, #28, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	ADD	W2, W3, W0
	MOV.B	[W0], [W1]
;test.c,149 :: 		for(i=0;i<6;i++,j++)
; i start address is: 12 (W6)
	ADD	W3, #1, W6
; i end address is: 6 (W3)
	MOV	[W14+60], W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, #1, [W0]
;test.c,153 :: 		}
	MOV	W6, W3
; i end address is: 12 (W6)
	GOTO	L_main38
L_main39:
;test.c,154 :: 		txt2[j]='\t';
	ADD	W14, #28, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV.B	#9, W0
	MOV.B	W0, [W1]
;test.c,155 :: 		txt1[j]  =',';
	ADD	W14, #0, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV.B	#44, W0
	MOV.B	W0, [W1]
;test.c,156 :: 		j++;
	MOV	[W14+60], W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, #1, [W0]
;test.c,160 :: 		a = ADC1_Get_Sample(3);
	MOV	#3, W10
	CALL	_ADC1_Get_Sample
; a start address is: 4 (W2)
	MOV	W0, W2
	CLR	W3
;test.c,161 :: 		y=2.9*a;
	MOV.D	W2, W0
	SETM	W2
	CALL	__Long2Float
; a end address is: 4 (W2)
	MOV	#39322, W2
	MOV	#16441, W3
	CALL	__Mul_FP
;test.c,162 :: 		IntToStr(y,txt);
	MOV	#62, W2
	ADD	W14, W2, W2
	MOV	W2, [W14+76]
	CALL	__Float2Longint
	MOV	[W14+76], W1
	MOV	W1, W11
	MOV	W0, W10
	CALL	_IntToStr
;test.c,164 :: 		for(i=0;i<6;i++,j++)
; i start address is: 12 (W6)
; i start address is: 12 (W6)
	CLR	W6
; i end address is: 12 (W6)
; i end address is: 12 (W6)
	MOV	W6, W3
L_main41:
; i start address is: 6 (W3)
	CP	W3, #6
	BRA LTU	L__main58
	GOTO	L_main42
L__main58:
;test.c,166 :: 		txt1[j]=txt[i];
	ADD	W14, #0, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV	#62, W2
	ADD	W14, W2, W2
	ADD	W2, W3, W0
	MOV.B	[W0], [W1]
;test.c,167 :: 		txt2[j]=txt[i];
	ADD	W14, #28, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	ADD	W2, W3, W0
	MOV.B	[W0], [W1]
;test.c,164 :: 		for(i=0;i<6;i++,j++)
; i start address is: 12 (W6)
	ADD	W3, #1, W6
; i end address is: 6 (W3)
	MOV	[W14+60], W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, #1, [W0]
;test.c,168 :: 		}
	MOV	W6, W3
; i end address is: 12 (W6)
	GOTO	L_main41
L_main42:
;test.c,169 :: 		txt2[j]='\t';
	ADD	W14, #28, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV.B	#9, W0
	MOV.B	W0, [W1]
;test.c,170 :: 		txt1[j]  ='\n';
	ADD	W14, #0, W1
	MOV	#60, W0
	ADD	W14, W0, W0
	ADD	W1, [W0], W1
	MOV.B	#10, W0
	MOV.B	W0, [W1]
;test.c,175 :: 		while(RD0_bit);
L_main44:
	BTSS	RD0_bit, #0
	GOTO	L_main45
	GOTO	L_main44
L_main45:
;test.c,177 :: 		PORTG=0x1000;
	MOV	#4096, W0
	MOV	WREG, PORTG
;test.c,179 :: 		UART2_Write_Text("WRF 28");
	MOV	#lo_addr(?lstr6_test), W10
	CALL	_UART2_Write_Text
;test.c,180 :: 		UART2_Write('\r');
	MOV	#13, W10
	CALL	_UART2_Write
;test.c,181 :: 		for(i=0;i<28;i++)
; i start address is: 2 (W1)
; i start address is: 2 (W1)
	CLR	W1
; i end address is: 2 (W1)
; i end address is: 2 (W1)
L_main46:
; i start address is: 2 (W1)
	CP	W1, #28
	BRA LTU	L__main59
	GOTO	L_main47
L__main59:
;test.c,183 :: 		UART2_Write(txt1[i]);
	ADD	W14, #0, W0
	ADD	W0, W1, W0
	ZE	[W0], W10
	CALL	_UART2_Write
;test.c,184 :: 		UART1_Write(txt2[i]);
	ADD	W14, #28, W0
	ADD	W0, W1, W0
	ZE	[W0], W10
	CALL	_UART1_Write
;test.c,181 :: 		for(i=0;i<28;i++)
; i start address is: 6 (W3)
	ADD	W1, #1, W3
; i end address is: 2 (W1)
;test.c,185 :: 		}
	MOV	W3, W1
; i end address is: 6 (W3)
	GOTO	L_main46
L_main47:
;test.c,186 :: 		UART2_Write('\r');
	MOV	#13, W10
	CALL	_UART2_Write
;test.c,188 :: 		c++;
	MOV	[W14+56], W1
	MOV	[W14+58], W2
	MOV	#56, W0
	ADD	W14, W0, W0
	ADD	W1, #1, [W0++]
	ADDC	W2, #0, [W0--]
;test.c,190 :: 		}
	GOTO	L_main30
L_main31:
;test.c,192 :: 		while(RD0_bit);
L_main49:
	BTSS	RD0_bit, #0
	GOTO	L_main50
	GOTO	L_main49
L_main50:
;test.c,194 :: 		UART2_Write_Text("CLF test.csv");
	MOV	#lo_addr(?lstr7_test), W10
	CALL	_UART2_Write_Text
;test.c,195 :: 		UART2_Write('\r');
	MOV	#13, W10
	CALL	_UART2_Write
;test.c,196 :: 		}
	GOTO	L_main26
;test.c,198 :: 		}
L_end_main:
	ULNK
L__main60:
	BRA	L__main60
; end of _main
