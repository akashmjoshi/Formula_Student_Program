
_Read_temp:

;i2c.c,38 :: 		void Read_temp(){
;i2c.c,39 :: 		I2C1_Stop();
	CALL        _I2C1_Stop+0, 0
;i2c.c,40 :: 		I2C1_Start();            //' issue I2C start signal
	CALL        _I2C1_Start+0, 0
;i2c.c,41 :: 		I2C1_Wr(0x00<<1 + I2C_WRITE);
	CLRF        FARG_I2C1_Wr_data_+0 
	CALL        _I2C1_Wr+0, 0
;i2c.c,42 :: 		I2C1_Wr(OTemp1);         //' send command
	MOVF        _OTemp1+0, 0 
	MOVWF       FARG_I2C1_Wr_data_+0 
	CALL        _I2C1_Wr+0, 0
;i2c.c,43 :: 		I2C1_Repeated_Start();   //' issue I2C signal repeated start
	CALL        _I2C1_Repeated_Start+0, 0
;i2c.c,44 :: 		I2C1_Wr(0x00<<1 + I2C_READ); //' send address (device address + R)
	CLRF        FARG_I2C1_Wr_data_+0 
	CALL        _I2C1_Wr+0, 0
;i2c.c,46 :: 		if (I2C1_Is_Idle()){
	CALL        _I2C1_Is_Idle+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Read_temp0
;i2c.c,47 :: 		SensorLow = I2C1_Rd(0);  //' Read temp. low byte
	CLRF        FARG_I2C1_Rd_ack+0 
	CALL        _I2C1_Rd+0, 0
	MOVF        R0, 0 
	MOVWF       _SensorLow+0 
	MOVLW       0
	MOVWF       _SensorLow+1 
;i2c.c,48 :: 		SensorHigh = I2C1_Rd(0); //' Read temp. high byte
	CLRF        FARG_I2C1_Rd_ack+0 
	CALL        _I2C1_Rd+0, 0
	MOVF        R0, 0 
	MOVWF       _SensorHigh+0 
	MOVLW       0
	MOVWF       _SensorHigh+1 
;i2c.c,49 :: 		PEC = I2C1_Rd(1);    //' Read PEC
	MOVLW       1
	MOVWF       FARG_I2C1_Rd_ack+0 
	CALL        _I2C1_Rd+0, 0
	MOVF        R0, 0 
	MOVWF       _PEC+0 
;i2c.c,50 :: 		}
L_Read_temp0:
;i2c.c,51 :: 		I2C1_Stop();             //' issue I2C stop signal
	CALL        _I2C1_Stop+0, 0
;i2c.c,52 :: 		SensorRaw = SensorLow + (SensorHigh<<8); //' Build temp. word
	MOVF        _SensorHigh+0, 0 
	MOVWF       R1 
	CLRF        R0 
	MOVF        R0, 0 
	ADDWF       _SensorLow+0, 0 
	MOVWF       _SensorRaw+0 
	MOVF        R1, 0 
	ADDWFC      _SensorLow+1, 0 
	MOVWF       _SensorRaw+1 
;i2c.c,53 :: 		}
	RETURN      0
; end of _Read_temp

_Convert_raw:

;i2c.c,55 :: 		void Convert_raw(){
;i2c.c,56 :: 		Sensor = (SensorRaw * 0.02 - 273.15)*0.95; //' Raw temp to Celsius
	MOVF        _SensorRaw+0, 0 
	MOVWF       R0 
	MOVF        _SensorRaw+1, 0 
	MOVWF       R1 
	CALL        _Word2Double+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       215
	MOVWF       R5 
	MOVLW       35
	MOVWF       R6 
	MOVLW       121
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       51
	MOVWF       R4 
	MOVLW       147
	MOVWF       R5 
	MOVLW       8
	MOVWF       R6 
	MOVLW       135
	MOVWF       R7 
	CALL        _Sub_32x32_FP+0, 0
	MOVLW       51
	MOVWF       R4 
	MOVLW       51
	MOVWF       R5 
	MOVLW       115
	MOVWF       R6 
	MOVLW       126
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _Sensor+0 
	MOVF        R1, 0 
	MOVWF       _Sensor+1 
	MOVF        R2, 0 
	MOVWF       _Sensor+2 
	MOVF        R3, 0 
	MOVWF       _Sensor+3 
;i2c.c,57 :: 		FloatToStr(Sensor, SensorString); //' Float to string
	MOVF        R0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        R1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        R2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        R3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       _SensorString+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(_SensorString+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;i2c.c,58 :: 		SensorString[5]='\0';
	CLRF        _SensorString+5 
;i2c.c,59 :: 		}
	RETURN      0
; end of _Convert_raw

_main:

;i2c.c,61 :: 		void main(){
;i2c.c,65 :: 		TRISA = 0b00000000;      //' IOport setting ,read(0,1,2,3,(4 not use))
	CLRF        TRISA+0 
;i2c.c,66 :: 		TRISC = 0b00000000;      //' IOport setting ,ALLout
	CLRF        TRISC+0 
;i2c.c,67 :: 		TRISE = 0b00000000;      //' IOport setting ,ALLout
	CLRF        TRISE+0 
;i2c.c,68 :: 		OSCCON = 0b01110000;
	MOVLW       112
	MOVWF       OSCCON+0 
;i2c.c,71 :: 		Lcd_Init(); //' Initialize Lcd
	CALL        _Lcd_Init+0, 0
;i2c.c,72 :: 		Lcd_Cmd(_LCD_CLEAR);      //' Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;i2c.c,73 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); //' Cursor off
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;i2c.c,75 :: 		Lcd_Out(1,1,"Count:");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_i2c+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_i2c+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;i2c.c,76 :: 		Delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main1:
	DECFSZ      R13, 1, 1
	BRA         L_main1
	DECFSZ      R12, 1, 1
	BRA         L_main1
	DECFSZ      R11, 1, 1
	BRA         L_main1
	NOP
	NOP
;i2c.c,78 :: 		I2C1_Init(50000);
	MOVLW       40
	MOVWF       SSPADD+0 
	CALL        _I2C1_Init+0, 0
;i2c.c,79 :: 		Delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
;i2c.c,80 :: 		SSPSTAT.CKE=1;
	BSF         SSPSTAT+0, 6 
;i2c.c,81 :: 		pp=0;
	CLRF        main_pp_L0+0 
;i2c.c,83 :: 		while(1){
L_main3:
;i2c.c,84 :: 		pp=pp+1;
	INCF        main_pp_L0+0, 1 
;i2c.c,85 :: 		if(pp>50) pp=0;
	MOVF        main_pp_L0+0, 0 
	SUBLW       50
	BTFSC       STATUS+0, 0 
	GOTO        L_main5
	CLRF        main_pp_L0+0 
L_main5:
;i2c.c,86 :: 		WordToStr(pp, buf);
	MOVF        main_pp_L0+0, 0 
	MOVWF       FARG_WordToStr_input+0 
	MOVLW       0
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       main_buf_L0+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(main_buf_L0+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;i2c.c,87 :: 		Lcd_Out(1, 7, &buf[3]);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       main_buf_L0+3
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(main_buf_L0+3)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;i2c.c,88 :: 		Lcd_Out(2,7,"\xDFC");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_i2c+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_i2c+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;i2c.c,90 :: 		Read_temp(); //' Read temp.
	CALL        _Read_temp+0, 0
;i2c.c,91 :: 		Convert_raw();
	CALL        _Convert_raw+0, 0
;i2c.c,92 :: 		Lcd_Out(2, 1, SensorString);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _SensorString+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_SensorString+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;i2c.c,93 :: 		Delay_ms(250);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
	NOP
;i2c.c,94 :: 		}
	GOTO        L_main3
;i2c.c,95 :: 		}
	GOTO        $+0
; end of _main
