.MODEL SMALL
.STACK 100H
.DATA
   
  MSG1 DB "--->NUMBER IS GREATER THEN 5. $"
  MSG2 DB "--->NUMBER IS LESS THEN 5. $" 
   
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    
    CMP AL,5 
    JG MAX
          
          
          
    MOV AH,9
    LEA DX,MSG2
    INT 21H 
    JMP EXIT
    
     
     
     
     
    MAX:
   
    MOV AH,9
    LEA DX,MSG1
    INT 21H 
            
    
    EXIT:       
     
     
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN