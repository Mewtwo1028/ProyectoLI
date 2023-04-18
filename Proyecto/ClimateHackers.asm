;*****************************
;Nombres:
;Ramón Herrera Herrera
;ALEXIS MORENO JAUREGUI 
;Osmar Aldahir Guerra Castillo
;************************************ 

include MACROS.lib

.model small
.stack
.data  
    s1          db  176,'$'
    s2          db  184,'$'
    usuario     db  'Usuario: '
    contraseña     db  'Contraseña: '
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
    
    ren db 2
    
    mensaje db 'Bienvenido al sistema de alerta temprana $' 
    nivel db 'Los niveles de atenci',162,'n estan en:$'
    a db 'Peligro$' 
    b db 'atenci',162,'n$'
    c db 'seguro$' 
    contaminacion db 50
    presiona db 'Pulsa un bot',162,'n para iniciar sesi',162,'n$'
    LOGO1 db '               ...  **.                                                         '               
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
        
        R6     DB                    '',186,'                                                                              ',186,'' 
        R7     DB                    '',186,' ',219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,186,''
        R8     DB                    '',186,' ',219,219,'                                                                                             '
        R9     DB                    '',186,' ',219,219,'                                                                                             '
        R10    DB                    '',186,' ',219,219,'                                                                                             '
        R11    DB                    '',186,' ',219,219,'                                                                                             '
        R12    DB                    '',186,' ',219,219,'                                                                                             '
        R13    DB                    '',186,' ',219,219,'                                                                                             '
        R14    DB                    '',186,' ',219,219,'                                                                                             '
        R15    DB                    '',186,' ',219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,186,''
        R16    DB                    '                                                                                             '
      
        
        
        
        ;Opciones
        msj1 db '1. Instalar sensores' ;20
        msj2 db '2. Analizar una zona espec',161,'fica';31
        msj3 db '3. Calcular calidad del aire';28
        msj4 db '4. Revisar el ',163,'ltimo reporte';28
        msj5 db '5. Salir';8 
        espacio db '                                        '
        msjOpc db 'Opci',162,'n: '
        

;-------------------------------SECCIÓN DE MACROS------------------------------

CLS MACRO 
    MOV AX,0600H
  MOV BH,89H
  MOV CX, 0000H
  MOV DX, 194FH
  INT 10H
CLS ENDM  


interfazMenu MACRO cadena,ren
              MOV AH,19
              LEA BP,cadena   ; Cadena
              MOV CX,80     ; Longitud
              MOV DH,ren      ; ren
              MOV DL,0      ; col
              MOV BH,0      ; pág
              MOV AL,0     ;modo 
              MOV BL,0F0H
              INT 10H
interfazMenu endm 


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
              



;------------------------------------------------------------------------------

.code
INCIO:
    MOV AX,@DATA
    MOV DS,AX
    MOV ES,AX
 
      
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
    MOV AH,2
    MOV DH,0
    MOV DL,0
    MOV BH,0
    INT 10H
    
    MOV AH,9       
    MOV CX,80    
    MOV AL,s1 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H 
    
;************SIMBOLO***************
    MOV AH,2
    MOV DH,23
    MOV DL,0
    MOV BH,0
    INT 10H
    
    MOV AH,9       
    MOV CX,80    
    MOV AL,s1 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H 
    
    MOV AH,2
    MOV DH,24
    MOV DL,0
    MOV BH,0
    INT 10H
    
    MOV AH,9       
    MOV CX,80    
    MOV AL,s1 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H     
    
;------------s2------------ 

simb2:
    MOV AH,2
    MOV DH,2
    MOV DL,52
    MOV BH,0
    INT 10H
    
    MOV AH,9       
    MOV CX,26    
    MOV AL,s2 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H 
    
    MOV AH,2
    MOV DH,3
    MOV DL,52
    MOV BH,0
    INT 10H
    
    MOV AH,9       
    MOV CX,26    
    MOV AL,s2 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H
    
    MOV AH,2
    MOV DH,4
    MOV DL,52
    MOV BH,0
    INT 10H
    
    MOV AH,9       
    MOV CX,26    
    MOV AL,s2 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H 
    
    MOV AH,2
    MOV DH,5
    MOV DL,52
    MOV BH,0
    INT 10H
    
    MOV AH,9       
    MOV CX,26    
    MOV AL,s2 
    MOV BL,0FH    
    MOV BH,0        
    INT 10H
    
    MOV AH,2
    MOV DH,6
    MOV DL,52
    MOV BH,0
    INT 10H
    
    MOV AH,9       
    MOV CX,26    
    MOV AL,s2 
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
            MOV BL,0EH ;COLOR
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
        
;----------ENTRADA U
    MOV  AH,2
        MOV DH,16
        MOV DL,52
        MOV BH,0 
    INT 10H
;-----------LIMPIAR PANTALLA----------------
  MOV AH,8
  INT 21H
  CLS
  


;---------Portada--------------------------
 mov ah,2
        mov dh,12
        mov dl,39
        mov bh,0
    int 10h

    
    mov ah,19
    lea bp,LOGO1
    mov cx,1280
    mov dh,0
    mov dl,0
    mov bh,0
    mov al,0 
    mov bl,2fh
    int 10h 

    
    mov ah,19
    lea bp,mensaje
    mov cx,40
    mov dl,20
    mov dh,17
    mov bh,0
    mov bl,08h
    int 10h
    
    mov ah,19
    lea bp,nivel
    mov cx,33
    mov dl,23
    mov dh,18
    mov bh,0
    mov bl,0fh
    int 10h
    cmp contaminacion,100
    je at
    cmp contaminacion,75
    je bt
    cmp contaminacion,50
    je ct
at: 
    mov ah,19
    lea bp,a
    mov cx,7
    mov dl,35
    mov dh,19
    mov bh,0
    mov bl,60h
    int 10h
    jmp boton

bt:    
    mov ah,19
    lea bp,b
    mov cx,8
    mov dl,35
    mov dh,19
    mov bh,0
    mov bl,40h
    int 10h
    jmp boton

ct:
    mov ah,19
    lea bp,c
    mov cx,6
    mov dl,35
    mov dh,19
    mov bh,0
    mov bl,20h
    int 10h
    jmp boton
     

boton:    
    mov ah,19
    lea bp,presiona
    mov cx,34
    mov dl,23
    mov dh,21
    mov bh,0
    mov bl,0fh
    int 10h
    
;-------Enter y limpiar pantalla-------

  MOV AH,8
  INT 21H
  CLS


;-----Mostrar menú de opciones-----------
        
pintarInterfaz:

;Aquí va el logo
                
       INC REN 
            interfazMenu r6,ren
            INC REN 
            interfazMenu r7,ren
            INC REN
            interfazMenu r8,ren 
            INC REN
            interfazMenu r9,ren
            INC REN
            interfazMenu r10,ren
            INC REN
            interfazMenu r11,ren 
            INC REN
            interfazMenu r12,ren
            INC REN
            interfazMenu r13,ren 
            INC REN
            interfazMenu r14,ren
            INC REN
            interfazMenu r15,ren
            INC REN
            interfazMenu r16,ren 

            
    
IMP_CAD_COLOR msj1,20,15,1,1FH,0,0F0h 
IMP_CAD_COLOR msj2,31,15,33,1FH,0,0F0h
IMP_CAD_COLOR msj3,28,17,1,1FH,0,0F0h
IMP_CAD_COLOR msj4,28,17,33,1FH,0,0F0h
IMP_CAD_COLOR msj5,8,19,1,1FH,0,0F0h 
IMP_CAD_COLOR msjOpc,8,19,33,1FH,0,0F0h                   
        
    
FIN:
    MOV AH,0
    INT 16H
END  