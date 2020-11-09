.MODEL SMALL
.STACK
.DATA

MSG DB "ENTER INPUT:$"

.CODE 

MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, MSG
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    INT 21H
    
    MOV CL, AL
    ADD BL, CL
    
    
    MOV AH, 2
    SUB BL, 48
    MOV DL, BL
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN