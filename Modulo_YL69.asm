;------------------------------------------------------------
; Código assembler generado por Niple V6.2.1
; Proyecto: Sensor de humedad
; Autor: LUCAS TRESER (3)
; Fecha: 19/01/2016
; PIC: 18F2550
; Velocidad de reloj: 20 Mhz
; Descripcion: 
;------------------------------------------------------------


 LIST    P=PIC18F2550


_PLLDIV_1             equ  0xF8
_CPUDIV_OSC1_PLL2     equ  0xE7
_USBDIV_1             equ  0xDF
_FOSC_HS              equ  0xFC
_FCMEN_OFF            equ  0xBF
_IESO_OFF             equ  0x7F
_PWRT_ON              equ  0xFE
_BOR_OFF              equ  0xF9
_BORV_0               equ  0xE7
_VREGEN_ON            equ  0xFF
_WDT_OFF              equ  0xFE
_WDTPS_1              equ  0xE1
_MCLRE_ON             equ  0xFF
_LPT1OSC_OFF          equ  0xFB
_PBADEN_OFF           equ  0xFD
_CCP2MX_OFF           equ  0xFF
_LPT1OSC_OFF          equ  0xFB
_STVREN_OFF           equ  0xFE
_LVP_OFF              equ  0xFB
_ICPRT_OFF            equ  0xDF
_XINST_OFF            equ  0xBF
_DEBUG_OFF            equ  0xFF
_CP0_OFF              equ  0xFF
_CP1_OFF              equ  0xFF
_CP2_OFF              equ  0xFF
_CP3_OFF              equ  0xFF
_CPB_OFF              equ  0xFF
_CPD_OFF              equ  0xFF
_WRT0_OFF             equ  0xFF
_WRT1_OFF             equ  0xFF
_WRT2_OFF             equ  0xFF
_WRT3_OFF             equ  0xFF
_WRTB_OFF             equ  0xFF
_WRTC_OFF             equ  0xFF
_WRTD_OFF             equ  0xFF
_EBTR0_OFF            equ  0xFF
_EBTR1_OFF            equ  0xFF
_EBTR2_OFF            equ  0xFF
_EBTR3_OFF            equ  0xFF
_EBTRB_OFF            equ  0xFF
_config1l             equ  0x300000
_config1h             equ  0x300001
_config2l             equ  0x300002
_config2h             equ  0x300003
_config3h             equ  0x300005
_config4l             equ  0x300006
_config5l             equ  0x300008
_config5h             equ  0x300009
_config6l             equ  0x30000a
_config6h             equ  0x30000b
_config7l             equ  0x30000c
_config7h             equ  0x30000d

 __config _config1l, _PLLDIV_1 & _CPUDIV_OSC1_PLL2 & _USBDIV_1
 __config _config1h, _FOSC_HS & _FCMEN_OFF & _IESO_OFF
 __config _config2l, _PWRT_ON & _BOR_OFF & _BORV_0 & _VREGEN_ON
 __config _config2h, _WDT_OFF & _WDTPS_1
 __config _config3h, _MCLRE_ON & _LPT1OSC_OFF & _PBADEN_OFF & _CCP2MX_OFF
 __config _config4l, _STVREN_OFF & _LVP_OFF & _ICPRT_OFF & _XINST_OFF & _DEBUG_OFF
 __config _config5l, _CP0_OFF & _CP1_OFF & _CP2_OFF & _CP3_OFF
 __config _config5h, _CPB_OFF & _CPD_OFF
 __config _config6l, _WRT0_OFF & _WRT1_OFF & _WRT2_OFF & _WRT3_OFF
 __config _config6h, _WRTB_OFF & _WRTC_OFF & _WRTD_OFF
 __config _config7l, _EBTR0_OFF & _EBTR1_OFF & _EBTR2_OFF & _EBTR3_OFF
 __config _config7h, _EBTRB_OFF


;------------------------------------------------------------
;                  Declaración de Registros
;------------------------------------------------------------
w                     equ  0x0000
_np_temp1             equ  0x0001
_np_temp2             equ  0x0002
_np_nro_lcd           equ  0x0003
_np_msj_act           equ  0x0004
_np_nro_msj           equ  0x0005
_np_lcd_1             equ  0x0006
_np_tiempo            equ  0x0007
_np_tiempo1           equ  0x0009
_np_tiempo2           equ  0x000a
_np_tiempo3           equ  0x000b
_np_ad_temp_h         equ  0x000c
_np_ad_temp_l         equ  0x000d
humedad               equ  0x000e
_np_temp3             equ  0x000f
_np_temp4             equ  0x0010
_np_temp5             equ  0x0011
_np_temp6             equ  0x0012
_np_temp7             equ  0x0013
_np_temp8             equ  0x0014
_np_temp9             equ  0x0015
_np_temp10            equ  0x0016
_np_temp11            equ  0x0017
_np_temp12            equ  0x0018
_np_temp13            equ  0x0019
humedad_uni           equ  0x001a
humedad_dec           equ  0x001b
humedad_cen           equ  0x001c
_np_bcd_temp1         equ  0x001d
_np_bcd_temp2         equ  0x001e
_np_bcd_temp3         equ  0x001f
_np_temp14            equ  0x0020
porta                 equ  0x0f80
portb                 equ  0x0f81
portc                 equ  0x0f82
lata                  equ  0x0f89
latb                  equ  0x0f8a
latc                  equ  0x0f8b
trisa                 equ  0x0f92
trisb                 equ  0x0f93
trisc                 equ  0x0f94
adcon2                equ  0x0fc0
adcon1                equ  0x0fc1
adcon0                equ  0x0fc2
adresl                equ  0x0fc3
adresh                equ  0x0fc4
rcon                  equ  0x0fd0
status                equ  0x0fd8
bsr                   equ  0x0fe0
pclath                equ  0x0ffa


;------------------------------------------------------------
;                  Declaración de Bits
;------------------------------------------------------------
adfm                  equ  7   ;-
adon                  equ  0   ;-
c                     equ  0   ;-
go_done               equ  1   ;-
to                    equ  3   ;-
vcfg0                 equ  4   ;-
vcfg1                 equ  5   ;-
z                     equ  2   ;-


;------------------------------------------------------------
;               Declaración de Registros EEPROM
;------------------------------------------------------------


;------------------------------------------------------------
;                        Inicio
;------------------------------------------------------------

   org 0x00
   goto paso2


;------------------------------------------------------------
;                      programa principal
;------------------------------------------------------------
paso2
   clrf _np_temp1,1
   clrf _np_temp2,1
   clrf _np_nro_lcd,1
   clrf _np_msj_act,1
   clrf _np_nro_msj,1
   clrf _np_lcd_1,1
   clrf _np_tiempo,1
   clrf _np_tiempo1,1
   clrf _np_tiempo2,1
   clrf _np_tiempo3,1
   clrf _np_ad_temp_h,1
   clrf _np_ad_temp_l,1
   clrf humedad,1
   clrf _np_temp3,1
   clrf _np_temp4,1
   clrf _np_temp5,1
   clrf _np_temp6,1
   clrf _np_temp7,1
   clrf _np_temp8,1
   clrf _np_temp9,1
   clrf _np_temp10,1
   clrf _np_temp11,1
   clrf _np_temp12,1
   clrf _np_temp13,1
   clrf humedad_uni,1
   clrf humedad_dec,1
   clrf humedad_cen,1
   clrf _np_bcd_temp1,1
   clrf _np_bcd_temp2,1
   clrf _np_bcd_temp3,1
   clrf _np_temp14,1
   clrf porta,0
   movlw b'00000001'                ;configurar el puerto a como xxsssssa
   movwf trisa,0
   movlw b'00001110'                ;configuracion de pines a/d
   movwf adcon1,0

   bsf adcon0,adon,0                ;activar activar el módulo de conv a/d
   clrf portb,0
   movlw b'00000000'                ;configurar el puerto b como ssssssss
   movwf trisb,0
   movlw b'00110000'                ;configurar el puerto c como sseessss
   movwf trisc,0
   movlw b'00000001'
   movwf _np_nro_lcd,1
   call lcd_inicio                  ;llamada a rutina lcd_inicio
paso6
rutina
   movlw b'00000001'
   movwf adcon0,0
   movlw b'00111110'
   movwf adcon2,0
   clrf _np_ad_temp_l,1
   clrf _np_ad_temp_h,1

   bsf adcon2,adfm,0                ;alinear el resultado a la derecha
   movlw .50
   movwf _np_temp1,1
paso7_t
   decfsz _np_temp1,1,1
   goto paso7_t
   bsf adcon0,go_done,0
   nop
   nop
paso7_f
   btfsc adcon0,go_done,0
   goto paso7_f
   movf adresl,w,0
   movwf _np_ad_temp_l,1
   movf adresh,w,0
   movwf _np_ad_temp_h,1
   movf _np_ad_temp_h,w,1
   movwf _np_temp1,1
   movf _np_ad_temp_l,w,1
   movwf _np_temp2,1
   movlw b'00000000'
   movwf _np_temp3,1
   movlw b'11100110'
   movwf _np_temp4,1
   clrf _np_temp5,1
   movf _np_temp4,w,1
   movwf _np_temp6,1
   movf _np_temp3,w,1
   movwf _np_temp7,1
   comf _np_temp2,w,1
   addwf _np_temp6,w,1
   movwf _np_temp2,1
   bcf status,z,0
   btfsc status,c,0
   incf _np_temp7,1,1
   btfsc status,z,0
   bsf _np_temp5,0,1
   comf _np_temp1,w,1
   addwf _np_temp7,w,1
   movwf _np_temp1,1
   btfsc status,z,0
   bsf _np_temp5,0,1
   bcf status,c,0
   btfsc _np_temp5,0,1
   bsf status,c,0
   comf _np_temp2,1,1
   comf _np_temp1,1,1
   movf _np_temp1,w,1
   movwf _np_ad_temp_h,1
   movf _np_temp2,w,1
   movwf _np_ad_temp_l,1
   bcf status,c,0
   rlcf _np_temp2,1,1
   rlcf _np_temp1,1,1
   bcf status,c,0
   rlcf _np_temp2,1,1
   rlcf _np_temp1,1,1
   bcf status,c,0
   rlcf _np_temp2,1,1
   rlcf _np_temp1,1,1
   movf _np_ad_temp_l,w,1
   addwf _np_temp2,1,1
   btfsc status,c,0
   incf _np_temp1,1,1
   movf _np_ad_temp_h,w,1
   addwf _np_temp1,1,1
   movf _np_ad_temp_l,w,1
   addwf _np_temp2,1,1
   btfsc status,c,0
   incf _np_temp1,1,1
   movf _np_ad_temp_h,w,1
   addwf _np_temp1,1,1
   movlw b'01010000'
   movwf _np_temp4,1
   movlw b'00000000'
   movwf _np_temp3,1


   movf _np_temp1,w,1
   movwf _np_temp7,1
   movf _np_temp2,w,1
   movwf _np_temp8,1
   clrf _np_temp1,1
   clrf _np_temp2,1
   movf _np_temp7,w,1
   btfss status,z,0
   goto automatico_a
   movf _np_temp8,w,1
   btfsc status,z,0
   goto automatico_s
automatico_a
   movf _np_temp3,w,1
   btfss status,z,0
   goto automatico_c
   movf _np_temp4,w,1
   btfsc status,z,0
   goto automatico_s
automatico_c
   movf _np_temp3,w,1
   subwf _np_temp7,w,1
   btfss status,c,0
   goto automatico_s
   btfss status,z,0
   goto automatico_c1
   movf _np_temp4,w,1
   subwf _np_temp8,w,1
   btfss status,c,0
   goto automatico_s
automatico_c1
   movlw .16
   movwf _np_temp9,1
   clrf _np_temp5,1
   clrf _np_temp6,1
automaticoa
   bcf status,c,0
   rlcf _np_temp8,1,1
   rlcf _np_temp7,1,1
   rlcf _np_temp6,1,1
   rlcf _np_temp5,1,1
   movf _np_temp3,w,1
   subwf _np_temp5,w,1
   btfss status,z,0
   goto automaticob
   movf _np_temp4,w,1
   subwf _np_temp6,w,1
automaticob
   btfss status,c,0
   goto automaticoc                 ;-
   movf _np_temp4,w,1
   subwf _np_temp6,1,1
   btfss status,c,0
   decf _np_temp5,1,1
   movf _np_temp3,w,1
   subwf _np_temp5,1,1
   bsf status,c,0
automaticoc
   rlcf _np_temp2,1,1
   rlcf _np_temp1,1,1
   decfsz _np_temp9,1,1
   goto automaticoa
automatico_s
   clrf _np_temp1,1
   movf _np_temp2,w,1
   sublw .100
   movwf _np_temp2,1
   movf _np_temp2,w,1
   movwf humedad,1
paso7_s
   movf humedad,w,1
   movwf _np_bcd_temp1,1
   call conv_8_bcd                  ;llamada a rutina conv_8_bcd
   movf _np_bcd_temp1,w,1           ;unidad
   movwf humedad_uni,1
   movf _np_bcd_temp2,w,1           ;unidad
   movwf humedad_dec,1
   movf _np_bcd_temp3,w,1           ;unidad
   movwf humedad_cen,1
   movlw b'00000001'
   movwf _np_nro_lcd,1

   call rutusr_001                  ;llamada a rutina usr_lcd_mensaje

   movlw .1                         ;temporizador 200 ms
   call tmp_1_mgc                   ;llamada a rutina tmp_1_mgc
   goto rutina


;------------------------------------------------------------
;                  Declaración de Subrutinas
;------------------------------------------------------------

; usr_lcd_mensaje
rutusr_001
   movlw .1
   movwf _np_nro_msj,1
   call lcd_mensaje_actual          ;llamada a rutina lcd_mensaje_actual
   btfss _np_msj_act,0,1
   goto rutusr_001_2_nc
   movlw b'00001100'
   call lcd_comando                 ;llamada a rutina lcd_comando
   movlw b'00000001'
   call lcd_comando                 ;llamada a rutina lcd_comando
rutusr_001_2_nc
   movlw b'10000000'
   call lcd_comando                 ;llamada a rutina lcd_comando
   movlw .72                        ;h
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .85                        ;u
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .77                        ;m
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .69                        ;e
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .68                        ;d
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .65                        ;a
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .68                        ;d
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .32                        ;espacio
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .68                        ;d
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .69                        ;e
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .32                        ;espacio
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .83                        ;s
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .85                        ;u
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .69                        ;e
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .76                        ;l
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw .79                        ;o
   call lcd_caracter                ;llamada a rutina lcd_caracter
rutusr_001_2_var
   movlw b'11000001'
   call lcd_comando                 ;llamada a rutina lcd_comando
   movf humedad_cen,w,1             ;enviar la variable humedad_cen al lcd.
   addlw .48
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw b'11000010'
   call lcd_comando                 ;llamada a rutina lcd_comando
   movf humedad_dec,w,1             ;enviar la variable humedad_dec al lcd.
   addlw .48
   call lcd_caracter                ;llamada a rutina lcd_caracter
   movlw b'11000011'
   call lcd_comando                 ;llamada a rutina lcd_comando
   movf humedad_uni,w,1             ;enviar la variable humedad_uni al lcd.
   addlw .48
   call lcd_caracter                ;llamada a rutina lcd_caracter
rutusr_001_3
   goto rutusr_001_salir
rutusr_001_salir
   movlb .0                         ;cambiar al banco 0
   return


lcd_inicio
   movlw b'00000001'
   movwf _np_nro_lcd,1
   clrf _np_nro_msj,1

   movlw .10                        ;temporizador 20 ms
   call tmp_100_mc                  ;llamada a rutina tmp_100_mc
   movlw b'00110000'
   call lcd_comando_ini             ;llamada a rutina lcd_comando_ini

   movlw .10                        ;temporizador 20 ms
   call tmp_100_mc                  ;llamada a rutina tmp_100_mc
   movlw b'00110000'
   call lcd_comando_ini             ;llamada a rutina lcd_comando_ini

   movlw .5                         ;temporizador 1 ms
   call tmp_1_mc                    ;llamada a rutina tmp_1_mc
   movlw b'00110000'
   call lcd_comando_ini             ;llamada a rutina lcd_comando_ini
   movlw b'00100000'
   call lcd_comando_ini             ;llamada a rutina lcd_comando_ini
   movlw b'00100000'
   call lcd_comando_ini             ;llamada a rutina lcd_comando_ini
   movlw b'10000000'
   call lcd_comando_ini             ;llamada a rutina lcd_comando_ini
   movlb .0                         ;cambiar al banco 0
   return
lcd_busy

   movlw .1                         ;temporizador 2 ms
   call tmp_100_mc                  ;llamada a rutina tmp_100_mc
   movlb .0                         ;cambiar al banco 0
   movlb .0                         ;cambiar al banco 0
   return
lcd_comando_ini
   movwf _np_temp1,1
   bcf portb,2,0
   goto lcd_enviar_ini
lcd_comando
   movwf _np_temp1,1
   bcf portb,2,0
   goto lcd_enviar
lcd_caracter
   movwf _np_temp1,1
   movf _np_temp1,w,1
   btfsc status,z,0
   movlw .20
   bsf portb,2,0
lcd_enviar
   bsf portb,3,0
   movwf _np_temp1,1
   bcf portb,4,0
   bcf portb,5,0
   bcf portb,6,0
   bcf portb,7,0
   btfss _np_temp1,4,1
   goto slt_1_s
   bsf portb,4,0
slt_1_s
   btfss _np_temp1,5,1
   goto slt_2_s
   bsf portb,5,0
slt_2_s
   btfss _np_temp1,6,1
   goto slt_3_s
   bsf portb,6,0
slt_3_s
   btfss _np_temp1,7,1
   goto slt_4_s
   bsf portb,7,0
slt_4_s
   bcf portb,3,0
   nop
   nop
   bsf portb,3,0
   bcf portb,4,0
   bcf portb,5,0
   bcf portb,6,0
   bcf portb,7,0
   btfss _np_temp1,0,1
   goto slt_5_s
   bsf portb,4,0
slt_5_s
   btfss _np_temp1,1,1
   goto slt_6_s
   bsf portb,5,0
slt_6_s
   btfss _np_temp1,2,1
   goto slt_7_s
   bsf portb,6,0
slt_7_s
   btfss _np_temp1,3,1
   goto slt_8_s
   bsf portb,7,0
slt_8_s
   bcf portb,3,0
   nop
   nop
   bsf portb,3,0
   call lcd_busy                    ;llamada a rutina lcd_busy
   movlb .0                         ;cambiar al banco 0
   return
lcd_enviar_ini
   bsf portb,3,0
   movwf _np_temp1,1
   bcf portb,4,0
   bcf portb,5,0
   bcf portb,6,0
   bcf portb,7,0
   btfss _np_temp1,4,1
   goto slt_9_s
   bsf portb,4,0
slt_9_s
   btfss _np_temp1,5,1
   goto slt_10_s
   bsf portb,5,0
slt_10_s
   btfss _np_temp1,6,1
   goto slt_11_s
   bsf portb,6,0
slt_11_s
   btfss _np_temp1,7,1
   goto slt_12_s
   bsf portb,7,0
slt_12_s
   bcf portb,3,0
   nop
   nop
   bsf portb,3,0
   call lcd_busy                    ;llamada a rutina lcd_busy
   movlb .0                         ;cambiar al banco 0
   return
lcd_mensaje_actual
lcd_1
   clrf _np_msj_act,1
   movf _np_nro_msj,w,1
   xorwf _np_lcd_1,w,1
   btfss status,z,0
   bsf _np_msj_act,0,1
   movf _np_nro_msj,w,1
   movwf _np_lcd_1,1
   movlb .0                         ;cambiar al banco 0
   return

tmp_1_mgc
   movwf _np_tiempo,1
   goto tmp_1_mgc_1
tmp_1_mgc_bucle2
   nop
   nop
   nop
   nop
   nop
   nop
   nop
tmp_1_mgc_1
   movlw .10
   movwf _np_tiempo1,1
tmp_1_mgc_bucle1
   nop
   nop
   movlw .99
   movwf _np_tiempo2,1
tmp_1_mgc_bucle0
   nop
   nop
   nop
   movlw .200
   movwf _np_tiempo3,1
tmp_1_mgc_bucle
   nop
   nop
   decfsz _np_tiempo3,1,1
   goto tmp_1_mgc_bucle
   nop
   nop
   nop
   decfsz _np_tiempo2,1,1
   goto tmp_1_mgc_bucle0
   nop
   nop
   nop
   decfsz _np_tiempo1,1,1
   goto tmp_1_mgc_bucle1
   decfsz _np_tiempo,1,1
   goto tmp_1_mgc_bucle2
   movlb .0                         ;cambiar al banco 0
   return

conv_8_bcd
   ;convertir un registro a formato bcd (u, d y c)
   clrf _np_bcd_temp3,1
   clrf _np_bcd_temp2,1
   movlw .100
conv_8_bcd_otro
   subwf _np_bcd_temp1,1,1
   btfss status,c,0
   goto conv_8_bcd_suma
   incf _np_bcd_temp3,1,1
   goto conv_8_bcd_otro
conv_8_bcd_suma
   addwf _np_bcd_temp1,1,1
   movlw .10
conv_8_bcd_bucle
   subwf _np_bcd_temp1,1,1
   btfss status,c,0
   goto conv_8_bcd_salir
   incf _np_bcd_temp2,1,1
   goto conv_8_bcd_bucle
conv_8_bcd_salir
   addwf _np_bcd_temp1,1,1
   movlb .0                         ;cambiar al banco 0
   return

tmp_100_mc
   movwf _np_tiempo,1
   goto tmp_100_mc_1
tmp_100_mc_bucle2
   nop
   nop
   nop
   nop
   nop
   nop
   nop
tmp_100_mc_1
   movlw .22
   movwf _np_tiempo1,1
tmp_100_mc_bucle1
   movlw .150
   movwf _np_tiempo2,1
tmp_100_mc_bucle
   decfsz _np_tiempo2,1,1
   goto tmp_100_mc_bucle
   decfsz _np_tiempo1,1,1
   goto tmp_100_mc_bucle1
   nop
   decfsz _np_tiempo,1,1
   goto tmp_100_mc_bucle2
   movlb .0                         ;cambiar al banco 0
   return

tmp_1_mc
   movwf _np_tiempo,1
   goto tmp_1_mc_1
tmp_1_mc_bucle1
   nop
   nop
   nop
   nop
   nop
   nop
   nop
tmp_1_mc_1
   movlw .246
   movwf _np_tiempo1,1
tmp_1_mc_bucle2
   nop
   decfsz _np_tiempo1,1,1
   goto tmp_1_mc_bucle2
   nop
   nop
   nop
   nop
   nop
   decfsz _np_tiempo,1,1
   goto tmp_1_mc_bucle1
   movlb .0                         ;cambiar al banco 0
   return



;------------------------------------------------------------
;                  DATOS EN MEMORIA EEPROM
;------------------------------------------------------------
   org  0xf00000
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff
   data   0xffff

 End