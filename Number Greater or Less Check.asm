;THE NUMBER IS GREATHER OR LESS COMPARE
 
 
.MODEL SMALL
.STACK 100H
.DATA 

MSG DB "ENTER NUMBER : $"
MSG1 DB "THE NUMBER IS EQUAL TO 5$"
MSG2 DB "THE NUMBER IS GREATHER THEN 5$" 
MSG3 DB "THE NUMBER IS LESS THEN 5$"

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    
    MOV BL,AL
    
    CMP BL,5
    
    JNE L1 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    JMP EXIT
    
    
    L1: 
    CMP BL,5
    JA L2 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    JMP EXIT
     
    L2:
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    JMP EXIT
    
    
    
    EXIT: 
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN