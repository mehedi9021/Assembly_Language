INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC 
    
   PRINTN "GIVE A INPUT : "
    
    MOV AH,1
    INT 21H  
    
    
    MOV BL,AL
    
    
    ;FOR NEW LINE
     
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH 
    INT 21H
    
    
     
     PRINTN "OUTPUT IS : "
     
     MOV DL,BL
     INT 21H
     
           
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN