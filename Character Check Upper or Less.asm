.MODEL SMALL
.STACK 100H
.DATA


MSG1 DB "PLEASE ENTER A CHARACTER : $"
MSG2 DB "ENTER ANOTHER CHARACTER : $" 


.CODE

MAIN PROC
    
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
     
     
     
    ;NEW LINE
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
     
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    
    MOV AH,1
    INT 21H
    
    
    CMP BL,AL
    
    JA MAX 
    JB MIN
    
    
    ;NEW LINE
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H 
    
    
    
    MAX:
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H 
          
          
          MOV DL,3EH
          MOV AH,2
          INT 21H 
          JMP EXIT
          
          
    MIN: 
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H 
    
        
      
          MOV DL,3CH
          MOV AH,2
          INT 21H      
          
          
          
          
          
    EXIT:      
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    