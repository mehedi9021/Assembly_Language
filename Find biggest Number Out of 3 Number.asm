.MODEL SMALL
.STACK 100H
.DATA 


MSG1 DB "ENTER 1st NUMBER : $ "
MSG2 DB "ENTER 2nd NUMBER : $ "
MSG3 DB "ENTER 3rd NUMBER : $ " 
MSG4 DB "The Biggest Number : $ " 
MSG5 DB "The Smallest Number : $ " 



.CODE

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
     
    MOV AH,1 
    INT 21H 
    SUB AL,30H
    
    MOV BL,AL 
     
     
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
    SUB AL,30H
   
    MOV CL,AL 
     
     
    MOV AH,2 
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
    
   
   
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    
     
    MOV AH,1 
    INT 21H
    SUB AL,30H
    
    MOV CH,AL 
     
     
     
    MOV AH,2 
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
     
    CMP BL,CL
    JA L1
    
    CMP CL,CH
    JA L3
    
    CMP CH,BL
    JA L4
    
    
    JMP EXIT 
    
    
    
    
    L1:
    
    CMP BL,CH
    
    JA L2
    
    JMP EXIT
    
    
    L2:
    
      MOV AH,2 
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
    
   
   
    MOV AH,9
    LEA DX,MSG4
    INT 21H 
    
    MOV AH,2
    MOV DL,BL
    ADD DL,30H
    INT 21H
    JMP EXIT
    
    L3:
    
      MOV AH,2 
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
    
   
   
    MOV AH,9
    LEA DX,MSG4
    INT 21H
    
    
    MOV AH,2
    MOV DL,CL
    ADD DL,30H
    INT 21H
    JMP EXIT
    
    
     L4:
        
       MOV AH,2 
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
    
   
   
    MOV AH,9
    LEA DX,MSG4
    INT 21H   
        
        
        
        
    MOV AH,2
    MOV DL,CH
    ADD DL,30H
    INT 21H
    JMP EXIT
     
     
     
    EXIT:
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN