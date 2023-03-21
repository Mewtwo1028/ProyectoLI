;Ramon Herrera Herra 5B
;portada para el proyecto
.model small
.stack
.data
    mensaje db 'Bienvenido al sistema de alerta temprana $' 
    nivel db 'Los niveles de atenci',162,'n estan en:$'
    a db 'Peligro$' 
    b db 'atenci',162,'n$'
    c db 'seguro$' 
    contaminacion db 50
    presiona db 'Pulsa un bot',162,'n para iniciar sesi',162,'n$'
    logo db '               ...  **.                                                         '               
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
    mov ax,@data
    mov ds,ax
    mov es,ax 
    
    ;impresion de caracter con color
    ;imprime tu primera inicial
    ;con combinación de colores
    mov ah,2
        mov dh,12
        mov dl,39
        mov bh,0
    int 10h

    
    mov ah,19
    lea bp,logo
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
    
            
    
       
fin:
    mov ah,0
    int 16h
    
    mov ax,4c00h
    int 21h
end

    
