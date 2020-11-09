 .MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV BX,5
    
    L1: 
    DEC BX
    CMP BX,0
    JE EXIT
    
    
    MOV AH,2
    MOV DL,35H
    INT 21H  
    
    
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    JMP L1
    
    
    EXIT:
   
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN