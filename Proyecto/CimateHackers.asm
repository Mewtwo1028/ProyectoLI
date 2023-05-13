;CLIMATEHACKERS
;Nombres:
;Ramón Herrera Herrera
;ALEXIS MORENO JAUREGUI 
;Osmar Aldahir Guerra Castillo
;********************************************************
name "printer"


org 100h
include BIBLIO_MACROS.lib


.model small
.stack
.data    
#start=thermometer.exe#
name "thermo" 

;CREAR LOGO
        vacio db '  '
        R1     DB                    '',186,'                        ',219,219,219,' ',219,' ',' ',' ',219,' ',219,' ',219,' ',219,219,219,' ',219,219,219,' ',219,' ',219,' ',219,219,219,' ',219,223,220,' ',220,219,219,'                 ',186,''
        R2     DB                    '',186,'                        ',219,' ',' ',' ',219,' ',' ',' ',219,' ',219,' ',219,' ',219,' ',219,' ',219,' ',' ',' ',219,' ',219,' ',219,220,220,' ',219,' ',219,' ',219,220,' ','                 ',186,''
        R3     DB                    '',186,'                        ',219,' ',' ',' ',219,' ',' ',' ',219,' ',219,219,219,' ',219,219,219,' ',219,' ',' ',' ',219,219,' ',' ',219,223,223,' ',219,219,220,' ',' ',223,219,'                 ',186,''
        R4     DB                    '',186,'                        ',219,219,219,' ',219,220,220,' ',219,' ',219,' ',219,' ',219,' ',219,' ',219,219,219,' ',219,' ',219,' ',219,219,219,' ',219,' ',219,' ',219,219,223,'                 ',186,''  
        R5     DB                    '',186,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,186,'' 
        R6     DB                    '',186,'                                                                                      ',186,'' 
        R7     DB                    '',186,' ',219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,' ',186,''
        R8     DB                    '',186,' ',219,219,'                                  ',219,'                                        ',186,''
        R9     DB                    '',186,' ',219,219,'                                  ',219,'                                       ',186,''
        R10    DB                    '',186,' ',219,219,'                                  ',219,'                                       ',186,''
        R11    DB                    '',186,' ',219,219,'                                  ',219,'                                       ',186,''
        R12    DB                    '',186,' ',219,219,'                                  ',219,'                                       ',186,''
        R13    DB                    '',186,' ',219,219,'                                  ',219,'                                       ',186,''
        R14    DB                    '',186,' ',219,219,'                                  ',219,'                                       ',186,''
        R15    DB                    '',186,' ',219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,' ',186,''
        R16    DB                    '                                                                                             '
        R17    DB                    219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219
        R18    DB                    '   ',219,219,219,219,219,219,219,219,'  ',220,220,220,220,220,220,220,',             ',220,220,220,220,219,219,219,219,219,219,219,'                ',219,219,219,219,219,219,220,220,'   '
        R19    DB                    '   ',220,220,220,220,220,220,220,'  ',219,219,219,219,219,219,219,219,' ',219,219,219,219,219,219,219,219,'           ',219,219,219,219,219,'    ',219,219,219,219,'               ',219,219,219,219,219,219,219,219,219,219,219
        R20    DB                    '   ',219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,' ',220,220,220,' ',219,219,219,219,219,'    ',219,219,219,219,220,220,220,220,220,220,220,220,220,220,220,220,220,'  ',219,219,219,219,219,219,219,219,219,219,219
        R21    DB                    219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,220,220,220,220,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,' ',219,219,219,219,219,219,219,219,219,219,219
        R22    DB                    219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219
        R23    DB                    219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219
        R24    DB                    219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219
        R25    DB                    219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219
        R26    DB                    219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,220,220,220,220,220,220,220,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219
        R27    DB                    219,219,219,219,219,219,219,220,220,220,220,220,220,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219
        op2 db 8       
        BTN    DB 219,219       
        
         ;EMULATIONKIT DOTS PARA MENSAJE: PELIGRO!
   dots1 db 01111111b, 00001001b, 00001001b, 00001001b, 00001111b   ;P
         db 01111111b, 01001001b, 01001001b, 01001001b, 01001001b   ;E
         db 01111111b, 01000000b, 01000000b, 01000000b, 01000000b   ;L
         db 01000001b, 01000001b, 01111111b, 01000001b, 01000001b   ;I
         db 01111111b, 01000001b, 01001001b, 01001001b, 01111001b   ;G
         db 01111111b, 00001001b, 00001001b, 00001001b, 01110110b   ;R
         db 01111111b, 01000001b, 01000001b, 01000001b, 01111111b   ;O
         db 00000000b, 00000000b, 01011111b, 00000000b, 00000000b   ;!
         
             ;EMULATIONKIT DOTS PARA MENSAJE ¡ALERTA!
   dots2 db 00000000b, 00000000b, 01111101b, 00000000b, 00000000b  ;!
         db 01111110b, 00001001b, 00001001b, 00001001b, 01111110b  ;A
         db 01111111b, 01000000b, 01000000b, 01000000b, 01000000b  ;L
         db 01111111b, 01001001b, 01001001b, 01001001b, 01001001b  ;E
         db 01111111b, 00001001b, 00001001b, 00001001b, 01110110b  ;R
         db 00000001b, 00000001b, 01111111b, 00000001b, 00000001b  ;T
         db 01111110b, 00001001b, 00001001b, 00001001b, 01111110b  ;A
         db 00000000b, 00000000b, 01011111b, 00000000b, 00000000b  ;!
         
             ;EMULATIONKIT DOTS PARA MENSAJE ¡SEGURO!
   dots3 db 00000000b, 00000000b, 01111101b, 00000000b, 00000000b   ;¡
         db 01001111b, 01001001b, 01001001b, 01001001b, 01001001b   ;S
         db 01111111b, 01001001b, 01001001b, 01001001b, 01001001b   ;E
         db 01111111b, 01000001b, 01001001b, 01001001b, 01111001b   ;G
         db 01111111b, 01000000b, 01000000b, 01000000b, 01111111b   ;U
         db 01111111b, 00001001b, 00001001b, 00001001b, 01110110b   ;R
         db 01111111b, 01000001b, 01000001b, 01000001b, 01111111b   ;O
         db 00000000b, 00000000b, 01011111b, 00000000b, 00000000b   ;!
        
        
        
;MENSAJES PARA MANEJAR EL PROGRAMA
        msj0   DB '0: ¿Desea realizar registro? S=1 N=ENTER'  ;26     
        msj1   DB '1: Realizar An',160,'isis del sitio?';28       
        msj2   DB '2: Llimpiar el panel' ;25
        msj3   DB '3: Salir del sistema' ;26         
        msj4   DB '4: Cantidad de an',160,'lisis? ' ;35 
        msj5   DB '5: Ver objetivos' ;34
        msj6   DB '4.0: Volver a inicio' ;20 
        msg2 db 'presione tecla abajo para terminar'
        nombre db 'Nombre del Sitio a Registrar:  ' ;31
        edad   db 'Zona:'
        borrar db '                              ';30       
        pregunta db 'Registrar Nuevo Sitio?S=1 N=ENTER';33   
        p1msj0 db 'Mostrar objetivos  ';mostrar objetivos
        p1msj1 db 'Instalar sensores  ';registrar zona en el archivo txt
        p1msj2 db 'Analizar Zona      ';encender termometo y los otros devices
        p1msj3 db 'Realizar reporte   ';impresora
        p1msj4 db 'Salir del sistema  ' 
        ren db 0
        
        nom db ' ',32,?,20 dup(' '),'$'
        auxx db '                                                                                                                '                                                                                        
        ed db ' ' ,32,?,20 dup(' '),'$'
        auxe db '                                                                                                                '    
        sino db '' 
        a db '1=SI 0=NO' 
        b db '' 
        total dw 30   
        ajus db '           ' 
        saltoLinea db 0AH
        totalnom dw 0
        totaled dw 0  
                
        msg_end db 0

;PONER EN EL RECUADRO MIENTRAS NO SE RECIBA NINGUNA ALERTA
        msjNon DB 'Clihackers change the world!!';26 
;Variables opcion 
        S0 db '0'
        S1 db '1'
        S2 db '2'
        S3 db '3' 
        msjOP db '[ ]$'
        Op db 0  
        Bot db '0'   
        Ubi db 10,0,11 dup('$')   
        Limpiar db '                               '    
;*************************************************************************************************
;DIRECTORIOS:
        rutaGen db 'C:\Clihack',0
        rutaDir db 'C:\Clihack\Clihack8',0
        rutaRep db 'C:\Clihack\Clihack8\Registros',0
        rutaReg db 'C:\Clihack\Clihack8\Registros\Registro.txt',0
        
        manejador dw 0 
        msjNoAbrir db 'No se pudo Abrir el archivo$'
        msjNoLeer  db 'No se pudo Leer el archivo$'
        msjSalida db 10,13,'Informaci',162,'n del Registro',10,13,'$'
        registrados db 500 dup('$') 
        Cont_Registros dw 0
        r_port equ 9   
        alerta db '*PELIGRO!**$';8
        normal db '*SEGURO!***$';7
        contmed db 'PRECAUCI',224,'N!$';11
        espacio db ' $'
        n db 'Nombre:$';7  
        e db 'Zona:$';5
        
        noCircula db 'El dia de ma',0A4H,'ana no circulan los coches viejitos';47
        diaClase db 'Hoy es mejor tener clase en linea';33
            ;nombreEq db '*-----CLIMATE HACKERS-----*'
    rallita db '***************************' 
    msjObjetivos db 'OBJETIVOS'
    obj1 db '*Prever el no circula'
    obj2 db '*Medici',162,'n de calidad del aire en una zona en espec',161,'fico en tiempo real'
    obj3 db '*Medir el promedio de calidad del aire en la ciudad'
    obj4 db '*Indicar que dias es mejor tener clases en linea'
    obj5 db '*Alerta temprana de incendios forestales'
    
        zonaMorelos db 'MORELOS';7
        zonaSauces db 'SAUCES';6
        zonaCentro db 'CENTRO';5
        zonaCantera db 'CANTERA';7
        zonaLaguna db 'LAGUNA';6
        zonaZapopan db 'ZAPOPAN';7
 





;******************MACROS*************************** 
imp_flecha MACRO 
    MOV AH,9
    MOV CX,1
    MOV AL,1ah
    MOV BH,0
    MOV BL,0f0h
    INT 10H
ENDM
    LEER_ARCHIVO_IMP MACRO manejador, cuantosLeer, leidos
        MOV AH,3FH
        MOV BX, manejador
        MOV CX, cuantosLeer
        LEA DX, leidos
        INT 21H
    LEER_ARCHIVO_IMP ENDM
    
  GUARDAR_ARCHIVO MACRO manejador,totalEscribir,datosEscribir   
        MOV AH,40H      
        MOV BX,manejador 
        MOV CX,totalEscribir 
        LEA DX,datosEscribir     
        INT 21H 
    GUARDAR_ARCHIVO ENDM 
  
 ABRIR_ARCHIVO MACRO ruta, MODO
    MOV AH,3DH
    LEA DX,ruta
    MOV AL,MODO
    INT 21H
 ABRIR_ARCIVO ENDM     
 
 
 IMP_CAD_COLOR MACRO cadena,long,ren,col,color,pagina,modo
    MOV AH,19
    LEA BP,cadena
    MOV CX,long
    MOV DH,ren
    MOV DL,col
    MOV BL,color
    MOV BH,pagina
    MOV AL,modo
    INT 10H   
 IMP_CAD_COLOR ENDM 
 
 IMP_CADENA MACRO cadena
    MOV AH,9
    LEA DX,cadena
    INT 21H
IMP_CADENA ENDM  
 
 CAR_COLOR MACRO CUANTOS,CARACTER,PAG,COLOR
    MOV AH,9
    MOV CX,CUANTOS
    MOV AL,CARACTER
    MOV BH,PAG
    MOV BL,COLOR
    INT 10H
CAR_COLOR ENDM 
;***************FIN MACROS**************************      

;***********LOGIN****************
;------------------------------    
;RANDOM
RDM dw ?, 0ah, 0dh, '$'    
RDM2 DB 0
contRDM db 0
    s5          db  176,'$'
    s4          db  184,'$'
    usuario     db  'Usuario: '
    contraseña     db  'Contrase',0A4h,'a: '
    usu db 10,0,10 dup('$') 
    con db 10,0,10 dup('$') 
    nombreEq    db '*-----CLIMATE HACKERS-----*'
    logo db 'XXXXXXXXXXXXXXXXXXXXKOxdooodk0XXXXXXXXXXXXXXXXXXXX',10,13
    db  'XXXXXXXXXXXXXXXXXX0kdlccccccloxOKXXXXXXXXXXXXXXXXX',10,13
    db  'XXXXXXXXXXXXXXXX0xolcclcccccclcldOKXXXXXXXXXXXXXXX',10,13
    db  'XXXXXXXXXXXXXXKkocccccccccccccccclx0XXXXXXXXXXXXXX',10,13
    db  'XXXXXXXXXXXXXKxlccclccccccclcccccccoOXXXXXXXXXXXXX',10,13
    db  'XXXXXXXXXXXXKxlcccccccccccccccccccccoOXXXXXXXXXXXX',10,13
    db  'XXXXXXXXXXXKxlccccc:::::::::::::ccclco0XXXXXXXXXXX',10,13
    db  'XXXXXXXXXXXOlcc;,''''........''''.,:ccxKXXXXXXXXXX',10,13
    db  'XXXXXXXXXXKxc:,....................;;co0XXXXXXXXXX',10,13
    db  'XXXXXXXXXXXkl:;.....................,co0XXXXXXXXXX',10,13
    db  'XXXXXXXXXXX0dc,;...................;:lkXXXXXXXXXXX',10,13
    db  'XXXXXXXXXXXX0dc;;................;,:lkKXXXXXXXXXXX',10,13
    db  'XXXXXXXXXXXXXKxl:;;............;,:cdOXXXXXXXXXXXXX',10,13
    db  'XXXXXXXXXXXXX0xlccc;,;.......;;:cccoOKXXXXXXXXXXXX',10,13
    db  'XXXXXXXXXXX0xlcclcclc:,....;;cclccccldOKXXXXXXXXXX',10,13
    db  'XXXXXXXXXKkoccccccccccc;,;,:ccccccccccld0XXXXXXXXX',10,13
    db  'XXXXXXXX0xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxkKXXXXXXX',10,13
    db  'XXXXXXKOokNMWWWWWMMWNNNNNNNNNNNNNNNNNNNWKodKXXXXXX',10,13
    db  'XXXXXKklcxNWWWWMMMMWNXXXXXXXXXXXXXXXXXNW0lcd0XXXXX',10,13
    db  'XXXXKklcco0WMWMMMMMMMWNXXXXXXXXXXXXXXXNNxclcd0XXXX',10,13
    db  'XXXXklcllcxNMWMMMMMMMMMWNNNXXXXXXXXXXXW0lclccd0XXX',10,13
    db  'XXXOoccclco0MMMMMMMMMMMMMWWNXXXXXXXXXNNxclccclxKXX',10,13  
    
;   
    Portmensaje db 'Bienvenido al sistema de alerta temprana $' 
    Portnivel db 'Los niveles de atenci',162,'n estan en:$'
    presiona db 'Pulsa un bot',162,'n para iniciar sesi',162,'n$'
    logo3 db '               ...  **.                                                         '               
        db  '    .:llllc*   dKc  **.                              *:                         '          
        db  '  .cOOo**lk0o  xNl      .  ...   ...        ...    .JXL,     ...                '          
        db  '  ;K0;    .lo  xNl .xk ;kkddxOkoodxkx; .lkkxkkc. *XXXXXX*.lkxxkx;,              '          
        db  '  lXk.         xNl l0K cKKc oXXl  cKO*  ***   0Xc .dXX.  xXd   kkl              '          
        db  '  lXk.      .  xNl l0K cK0l ;K0,  ,00,  .ccddxKNl .lXX. ;KNkddx00:              '          
        db  '   ,00*    *dx xNl l0K cK0l ;KO,  ,00, .xXd  ;0Nl .lXX. ,OXo   ...              '        
        db  '    ;x0xoldOkl xNl l0K cK0l ;KO,  ,00, .dKkooxKNl  ;KKo,.;OOdlodc.              '       
        ;db  '    ********  *:.l .,;. .;,.  .;,.  .;,.  .;:::;;:.  .:::.  .;:::;.             '                                      ..                                         
        db  '  OK:     000.                     ,Okl                                           '       
        db  'OK:     cXk.    ....      ....   ,0Ol    ..    ...    .. ..    ....             '       
        db  'OKc.   .lKk. .:xkxkkol  ,dkxxkd* ,0Ol .;xk: .:xkxkkc. o0Vdo,.;xkxxkd            '       
        db  'OXkollloONk.      kXd. 00c   ldl ;00l:dKO; .lXk   kKl lNd.  *OXo ***            '       
        db  'OXOollloONk. .:oxdd0Nk oXx.      ,0NNNN0;  *ON0dddO0o kX:    ;dkxdo:.           '       
        db  'OK:     cKk. oXk  ;xNk cKO*  .;, ,0KolxKk, .xNx   ... kK:        ;xXx.          '       
        db  'OK:     cKk. cK0old0Nk .o0kookOc ,0O, .c00c.,k0xlldl. kK:   .xoxooooo.          '       
        db  '00l     000,  ********   ******  ***.   ***. *******  ***   *********           '
    

    
.code
inicio:
        MOV AX,@DATA
        MOV DS,AX 
        MOV ES,AX ;                                                        '
     
;Actualizar Directorio             
           Crear_Directorio rutaGen  
           Crear_Directorio rutaDir
           Crear_Directorio rutaRep           
           ;Crear archivo          
           Crear_Archivo rutaReg             
           ;Abrir_Archivo         
           Leer_Archivo rutaReg  
           
           ;escribir 
            mov ah,3Dh ;interrupcion escribir archivo
            lea dx,rutaReg  
            mov al,2 ;habilitar lectura y escritura
            int 21h        
           ;Manejador
           mov manejador,ax          
           
;==========================SEGUNDA PANTALLA========================================
          
    CADENA_COLOR logo3,1280,0,0,0,0,2fh
    CADENA_COLOR portmensaje,40,20,17,0,0,08h    
    CADENA_COLOR presiona,34,23,21,0,0,0f0h
    mov ah,0
    int 16h
    cadena_color vacio,2000,0,0,0,0,00h
;==========================SEGUNDA PANTALLA========================================
;********Logo*********          
    MOV AH,19
            LEA BP,LOGO
            MOV CX,1150 ;LONGITUD
            MOV DH,1 ;RENGLON
            MOV DL,0 ;COLUMNA
            MOV BH,0 ;PAGINA
            MOV AL,0 ;MODO CERO
            MOV BL,01H ;COLOR
        INT 10H 
        
;*************SIMBOLO**************

    CURSOR 0,0,0    
    MOV AH,9       
    MOV CX,80    
    MOV AL,s5 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H 
    
;************SIMBOLO***************
    CURSOR 23,0,0
    
    MOV AH,9       
    MOV CX,80    
    MOV AL,s5 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H 
    
    CURSOR 24,0,0
    
    MOV AH,9       
    MOV CX,80    
    MOV AL,s5 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H     
    
;------------s2------------ 

simb2:

    CURSOR 2,52,0
    
    MOV AH,9       
    MOV CX,26    
    MOV AL,s4 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H 
    
    CURSOR 3,52,0
    
    MOV AH,9       
    MOV CX,26    
    MOV AL,s4 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H

    CURSOR 4,52,0
    
    MOV AH,9       
    MOV CX,26    
    MOV AL,s4 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H 
    
    CURSOR 5,52,0
    
    MOV AH,9       
    MOV CX,26    
    MOV AL,s4 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H
    
    CURSOR 6,52,0
    
    MOV AH,9       
    MOV CX,26    
    MOV AL,s4 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H
        
        
;***************************
    MOV AH,19
            LEA BP,nombreEq
            MOV CX,27 ;LONGITUD
            MOV DH,10 ;RENGLON
            MOV DL,52 ;COLUMNA
            MOV BH,0 ;PAGINA
            MOV AL,0 ;MODO CERO
            MOV BL,2EH ;COLOR
        INT 10H 
        
        

        
;******USU Y CONTR*******
        MOV AH,19
            LEA BP,usuario
            MOV CX,9 ;LONGITUD
            MOV DH,15 ;RENGLON
            MOV DL,52 ;COLUMNA
            MOV BH,0 ;PAGINA
            MOV AL,0 ;MODO CERO
            MOV BL,0EH ;COLOR
        INT 10H
        
        MOV AH,19
            LEA BP,contraseña
            MOV CX,12 ;LONGITUD
            MOV DH,18 ;RENGLON
            MOV DL,52 ;COLUMNA
            MOV BH,0 ;PAGINA
            MOV AL,0 ;MODO CERO
            MOV BL,0EH ;COLOR
        INT 10H
        
;----------ENTRADA USUARIO
    MOV  AH,2
    MOV DH,16
    MOV DL,52
    MOV BH,0 
    INT 10H
    
        MOV AH,10
        LEA DX,usu
        INT 21H
         
        
;----------ENTRADA CONTRASEÑA
    MOV AH,2
    MOV DH,19
    MOV DL,52
    MOV BH,0 
    INT 10H
    
        MOV AH,10
        LEA DX,con
        INT 21H                                                                            
                                                                                 
;=================================================================================

pintar_fondo:
            MOV REN,0  
            FONDO r1,ren
            INC REN
            FONDO r2,ren
            INC REN
            FONDO r3,ren
            INC REN
            FONDO r4,ren 
            INC REN
            FONDO r5,ren 
            INC REN
            FONDO r6,ren 
            INC REN
            FONDO r7,ren
            INC REN
            FONDO r8,ren 
            INC REN
            FONDO r9,ren
            INC REN
            FONDO r10,ren
            INC REN
            FONDO r11,ren 
            INC REN
            FONDO r12,ren
            INC REN
            FONDO r13,ren 
            INC REN
            FONDO r14,ren
            INC REN
            FONDO r15,ren
            INC REN
            FONDO r16,ren 
            INC REN
            FONDO r17,ren 
            INC REN
            FONDO r22,ren
            INC REN
            FONDO r23,ren
            INC REN
            FONDO r24,ren 
            ;CADENA_COLOR MACRO     cadena,long,ren,col,pag,modo,color 
            CADENA_COLOR btn,80,18,0,0,0,0h
            CADENA_COLOR btn,80,19,0,0,0,0h
            CADENA_COLOR btn,80,20,0,0,0,0h
            CADENA_COLOR btn,80,21,0,0,0,0h
           

            
                         
;Imprimir mensaje pantalla izquierda
            CADENA_COLOR msjNon,29,8,4,0,0,0F0h   
;Imprimir mensajes pantalla derecha  
            ;0
            CADENA_COLOR p1msj0,19,8,41,0,0,0f0h 
            ;1
            CADENA_COLOR p1msj1,19,9,41,0,0,0f0h
            ;2
            CADENA_COLOR p1msj2,19,10,41,0,0,0F0h
            ;3
            CADENA_COLOR p1msj3,19,11,41,0,0,0F0h 
            ;4
            CADENA_COLOR p1msj4,19,12,41,0,0,0F0h   
            ;Numerar botones
            ;0
            CADENA_COLOR S0,0,8,40,23,10,70H
            mov Bot,0
            ;Mensaje solicitar opcion 
 
                
            cursor op2,40,0   
            imp_flecha 
                    
;Imprimir zonas
 IMP_CAD_COLOR zonaMorelos,7,19,8,1FH,0,0F0h
IMP_CAD_COLOR zonaCentro,6,19,33,1FH,0,0F0h 
IMP_CAD_COLOR zonaSauces,6,19,58,1FH,0,0F0h
 
IMP_CAD_COLOR zonaCantera,7,21,8,1FH,0,0F0h
IMP_CAD_COLOR zonaLaguna,6,21,33,1FH,0,0F0h 
IMP_CAD_COLOR zonaZapopan,7,21,58,1FH,0,0F0h           
MOV CX,0
;************************************************************
;MOSTRAR LA HORA DEL SISTEMA 
cursor 0,3,0   
 
mov ah, 2ch           ;Get time
int 21h

mov dl, ch            ;Hora
call itoa99

mov ah, 02h           ;:
mov dl, ':'
int 21h



;dl = number to display (0..99)
itoa99:
  

 push bx
 push ax            ;Save registers used

 xor ax, ax         ;AX = 0
 mov al, dl         ;AX = DL

 mov bl, 10d
 div bl             ;AL = AX/10, AH = AX mod 10

 ;AX contains the digits

 add ax, 3030h      ;Transform digit to digitals

 ;ASCII digits starts at 30h, digit X is the char 30h+X

 ;ASCII value: 30h  31h  32h  33h ... 39h
 ;Character:   0    1    2    3   ... 9



 mov bx, ax         ;Save for later 

 ;Muestra la hora

 
 mov dl, bl
 mov ah, 02h
 int 21h  
 
 mov dl, bh
 int 21h

 pop ax
 pop bx    
 mov ah, 2ch           ;Get time
int 21h
mov dl, ch            ;Show hours
;MOV hora[0],ch


mov ah, 02h           ;Show separator
mov dl, ':' 
;MOV hora[1],':'
int 21h
 
mov dl, cl            ;Show minutes 
;MOV hora[2],cl
    

;mov hora[0], dl ; guarda la hora en la primera posición de "hora"

xor ax, ax         ;AX = 0
 mov al, dl         ;AX = DL

 mov bl, 10d
 div bl             ;AL = AX/10, AH = AX mod 10

 ;AX contains the digits

 add ax, 3030h      ;Transform digit to digitals

 ;ASCII digits starts at 30h, digit X is the char 30h+X

 ;ASCII value: 30h  31h  32h  33h ... 39h
 ;Character:   0    1    2    3    ... 9
  

 mov bx, ax         ;Save for later 

 ;Muestra la hora
 mov dl, bl 

 mov ah, 02h
 int 21h
 
 
 mov dl, bh
 int 21h

   
 pop ax
 pop bx  



;dl = number to display (0..99)


 push bx
 push ax            ;Save registers used

 
 

 
;************************************************************
            
                     
;************************************************************
solicitudDatos:
  cursor op2,40,0   
  imp_flecha
    tecla
    mov op,ah
;************************************************************
    CMP op,50H
    JE ABAJO
    CMP op,48H
    JE ARRIBA
    CMP op,1cH
    JE opcion_elegida
    jmp solicitudDatos
abajo:
    inc op2
    cmp op2,12
    jg primer_op
    imp_car_color 219,1,0,0fh
    cursor op2,40,0
    imp_flecha
    jmp solicitudDatos
arriba:
    dec op2
    cmp op2,8
    jl ultima_op
    imp_car_color 219,1,0,0fh
    cursor op2,40,0
    imp_flecha
    jmp solicitudDatos
ultima_op:
    imp_car_color 219,1,0,0fh
    mov op,12
    mov op2,12 
    cursor op2,40,0
    imp_flecha
    jmp solicitudDatos 
primer_op:
    imp_car_color 219,1,0,0fh
    mov op,8
    mov op2,8 
    cursor op2,40,0
    imp_flecha
    jmp solicitudDatos 
opcion_elegida:
            cmp op2,8
            je objetivos 
            cmp op2,9
            je boton0
            cmp op2,10
            je termo
            cmp op2,11
            je boton4
            cmp op2,12
            je fin        
            jmp solicitudDatos

;************************************************************

boton0: 


;solicitar datos 
CADENA_COLOR nombre,30,8,4,0,0,70h  
CURSOR 9,4,0
;Esperar entrada
       Leer_Cadena nom 
       XOR CX,CX
       MOV CL, nom[1]    ;Guardamos la longitud y hacemos la correccion
       MOV totalnom,CX      

CADENA_COLOR edad,5,10,4,0,0,70h 
CURSOR 11,4,0
;Esperar entrada
       Leer_Cadena ed  
       XOR CX,CX
       MOV CL, ed[1]    ;Guardamos la longitud y hacemos la correccion
       MOV totaled,CX 
         
       GUARDAR_ARCHIVO manejador,7,n
       GUARDAR_ARCHIVO manejador,1,espacio
       GUARDAR_ARCHIVO manejador,totalnom,nom+2
       GUARDAR_ARCHIVO manejador,1,espacio
       GUARDAR_ARCHIVO manejador,5,e
       GUARDAR_ARCHIVO manejador,1,espacio
       GUARDAR_ARCHIVO manejador,totaled,ed+2
       GUARDAR_ARCHIVO manejador, 1,saltoLinea     
       
       
Seguir:               
CADENA_COLOR pregunta,33,12,4,0,0,70h 
;CADENA_COLOR a,10,13,4,0,0,70h  

CURSOR 13,10,0 
;Esperar entrada
            Leer_Char 
            ;Checar valor entrada
            mov b,al ;Char a var    
           ;Comparativa
            cmp b,'0'   
            CADENA_COLOR borrar,30,7,4,0,0,70h
            CADENA_COLOR borrar,30,8,4,0,0,70h
            CADENA_COLOR borrar,30,9,4,0,0,70h 
            CADENA_COLOR borrar,30,10,4,0,0,70h 
            CADENA_COLOR borrar,30,11,4,0,0,70h
            CADENA_COLOR borrar,30,12,4,0,0,70h 
            CADENA_COLOR borrar,30,13,4,0,0,70h  
            CADENA_COLOR msjNon,29,8,4,0,0,70h  
            je SolicitudDatos   
            cmp b,'1'      
            CADENA_COLOR borrar,30,7,4,0,0,70h
            CADENA_COLOR borrar,30,8,4,0,0,70h
            CADENA_COLOR borrar,30,9,4,0,0,70h 
            CADENA_COLOR borrar,30,10,4,0,0,70h 
            CADENA_COLOR borrar,30,11,4,0,0,70h
            CADENA_COLOR borrar,30,12,4,0,0,70h 
            CADENA_COLOR borrar,30,13,4,0,0,70h
            je Boton0
boton2: 
jmp pintar_fondo 
   
   
   
   
;---------------------------
 boton4:    

 ; Imprimimos el contenido 
    
     ABRIR_ARCHIVO rutaReg,0   
     
    MOV manejador,AX   
    
    LEER_ARCHIVO_IMP manejador,80,Registrados
      MOV DL,12      
      MOV AH,5
      INT 21H  
      MOV SI, OFFSET Registrados
      MOV CX, OFFSET 80 
      JMP imprimir 
      
      
  imprimir: 
  
   mov dl, [si]
    mov ah, 5       ; MS-DOS print function.
    int 21h
    inc si	        ; next char.
    loop imprimir   
   

    mov dl, 12      ; form feed code. page out!
    mov ah, 5
    int 21h
  
ret
       
call limpiarRegistros
jmp solicitudDatos        

termo:

numRDM:
Mov ah,2Ch
Int 21h
xor ax, ax
mov dh, 00h
add ax, dx
aaa
add ax, 3030h
mov RDM[0], ax
inc contRDM
cmp contRDM,5
je AJboton1   
jmp numRDM   
    
AJboton1: 
call arreglo1  ;primer proc
aj:
CMP RDM2,7
JAE SUMA1
CMP RDM2,4
JAE SUMA2
ADD RDM2,20 
JMP boton1

SUMA1:
ADD RDM2,80
JMP boton1

SUMA2:
ADD RDM2,50
JMP boton1  
    
boton1:
in al, 125
cmp al, 50
jl  low 
cmp al,60
je medium
cmp al, 80
jle  ok
jg   high

low:
mov al, 1
out 127, al   ; turn heater "on". 
CADENA_COLOR normal,11,0,0,0,0,0AfH 
call ok2

medium:
CADENA_COLOR contmed,11,0,0,0,0,60H
call ok2

high:
call apagar   ; turn heater "off". 


alertaa1:    
;cadena,long,ren,col,pag,modo,color  
CADENA_COLOR alerta,11,0,0,0,0,0CfH
CADENA_COLOR noCircula,48,14,3,0,0,0CFH
CADENA_COLOR diaClase,33,16,3,0,0,0CFH  

CMP RDM2,70
JAE alertaemulationkit1
CMP RDM2,40
JAE alertaemulationkit2
jmp alertaemulationkit3 

ok:
jmp boton1   ; endless loop.     
 
;---------------------------

alertaemulationkit1:

    MOV DX,2000h ; Input columna 1 del display 1
	MOV BX,0     ; Contador de columnas totales
	             ; y renglones en matríz (cada 5)
principal1:
	MOV SI,0     ; Contador de columnas en matríz
	MOV CX,5     ; Cada display tiene 5 columnas
siguiente1:
	MOV AL,dots1[BX][SI] ; Matríz de puntos
	OUT DX,AL           ; Output en columna
	INC SI              ; Siguiente columna en matríz
	INC DX              ; Siguiente columna en display 

	CMP SI,5            ; Si columna actual != 5
	LOOPNE siguiente1    ;   Repite siguiente
                        ; SOLO cuando columna actual = 5
	ADD BX,5            ;   Añade 5 a columnas totales
	CMP BX,40           ;   Si columnas totales < 40
	JL principal1	    ;       Reinicia principal 
    JMP solicitudDatos

alertaemulationkit2:

    MOV DX,2000h ; Input columna 1 del display 1
	MOV BX,0     ; Contador de columnas totales
	             ; y renglones en matríz (cada 5)
principal2:
	MOV SI,0     ; Contador de columnas en matríz
	MOV CX,5     ; Cada display tiene 5 columnas
siguiente2:
	MOV AL,dots2[BX][SI] ; Matríz de puntos
	OUT DX,AL           ; Output en columna
	INC SI              ; Siguiente columna en matríz
	INC DX              ; Siguiente columna en display 

	CMP SI,5            ; Si columna actual != 5
	LOOPNE siguiente2    ;   Repite siguiente
                        ; SOLO cuando columna actual = 5
	ADD BX,5            ;   Añade 5 a columnas totales
	CMP BX,40           ;   Si columnas totales < 40
	JL principal2	    ;       Reinicia principal 
    JMP solicitudDatos

alertaemulationkit3:

    MOV DX,2000h ; Input columna 1 del display 1
	MOV BX,0     ; Contador de columnas totales
	             ; y renglones en matríz (cada 5)
principal3:
	MOV SI,0     ; Contador de columnas en matríz
	MOV CX,5     ; Cada display tiene 5 columnas
siguiente3:
	MOV AL,dots3[BX][SI] ; Matríz de puntos
	OUT DX,AL           ; Output en columna
	INC SI              ; Siguiente columna en matríz
	INC DX              ; Siguiente columna en display 

	CMP SI,5            ; Si columna actual != 5
	LOOPNE siguiente3    ;   Repite siguiente
                        ; SOLO cuando columna actual = 5
	ADD BX,5            ;   Añade 5 a columnas totales
	CMP BX,40           ;   Si columnas totales < 40
	JL principal3	    ;       Reinicia principal 
    JMP solicitudDatos
objetivos:
        cadena_color vacio,2000,0,0,0,0,00h
         CADENA_COLOR  rallita,27,2,25,0,0,0eh
         CADENA_COLOR  nombreEq,27,4,25,0,0,2fh 
         tecla 
         CADENA_COLOR msjObjetivos,9,6,33,0,0,1fh  
         CADENA_COLOR obj1,21,10,10,0,0,09h 
         tecla
         CADENA_COLOR obj2,70,11,10,0,0,0ah
         tecla 
         CADENA_COLOR obj3,51,12,10,0,0,0bh 
         tecla
         CADENA_COLOR obj4,48,13,10,0,0,0ch 
         tecla
         CADENA_COLOR obj5,40,14,10,0,0,0dh
         tecla
         jmp pintar_fondo        
;pintarzonas:      
 ;   CADENA_COLOR MSJZONA,16,15,40,0,0,0Fh
 ;   Caracter_color

fin:
            
    MOV AX,4C00H
    INT 21H 

arreglo1 proc  ;----------------------------------1
    XOR BX,BX
    mov BX,RDM[0]    
    aaa
    SUB BX,3030H 
    MOV RDM2,BL
    jmp aj
arreglo1 endp  ;----------------------------------3
suma_1 proc 
    ADD RDM2,80 
    jmp suma1 
suma_1 endp
suma_2 proc    ;----------------------------------3
    ADD RDM2,50
    jmp suma2 
suma_2 endp
RASTREO proc   ;----------------------------------4
        MOV AH,0
        INT 16H
RASTREO ENDp 

     

ok2 proc    ;----------------------------------6 
    jmp boton1
ok2 endp

apagar proc
mov al, 0  
out 127, al
jmp alertaa1
apagar endp

limpiarRegistros proc ;----------------------------------7
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx
limpiarRegistros endp


end                 