.MODEL SMALL
.STACK 100H
.DATA
.CODE


MAIN PROC
    
    
    MOV BH,1     ;STAR
    MOV DH,4     ;SPACE
    MOV CH,5     ;LINE 
    
    
PRINT:

    MOV CL,0
    MOV CL,DH
    
    
   
PRINT_B:
   
    MOV DL,' ' 
    MOV AH,2
    INT 21H
    
    DEC CL
    CMP CL,0 
    JNE PRINT_B
   
    
    
    
STAR:
    
    MOV BL,0
    MOV BL,BH

PRINT_S:
     
    MOV DL,'*'
    MOV AH,2
    INT 21H
    
    DEC BL
    CMP BL,0
    JNE PRINT_S
    
   
NEWLINE:
     
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    CMP DH,0       ;SPACE COMPARE
    JE EXIT 
   
    
    
    INC BH         ;INC STAR
        
           
    DEC DH         ;DEC SPACE      
    CMP DH,0
    JE STAR
    
         
          
           
    DEC CH         ;DEC LINE
    CMP CH,0 
    JE EXIT
    JNE PRINT 
        
    
    
EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP


END MAIN  
 
