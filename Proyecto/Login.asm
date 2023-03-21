;*****************************
;Nombre:ALEXIS MORENO JAUREGUI
;************************************ 


;**LOGIN**
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
        
    
FIN:
    MOV AH,0
    INT 16H
END  
        
        
     
