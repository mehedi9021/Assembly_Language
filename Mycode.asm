.MODEL SMALL
.STACK 100H
.DATA
blank db ?
star db ? 
.CODE one
 
 
outerLoop proc
    MOV CH,0
    MOV CL,AL
    
    ; OUTER LOOP WILL ITERATE FOR LINENUMBER TIMES
    
    outer:    
        PUSH CX
        CALL innerLoop ; INNERLOOP WILL ITERATE TO PRINT * AND BLANK 
    
        POP CX
        CALL newLine            
    LOOP outer
    
    
    ret
    outerLoop endp


innerLoop proc
    MOV CH,0
    MOV DH,blank    
    MOV CL,DH
    
    ; WILL BE ENTERING INTO A INFINITE LOOP WHEN blank=0    
    CMP DH,0
    JE skip
    
    blankLoop:
        MOV AH,2
        MOV DL,'-'
        INT 21h
                    
    LOOP blankLoop
    
    
    skip:
    
    MOV CH,0
    MOV DH,star    
    MOV CL,DH
    
    starLoop:
        MOV AH,2
        MOV DL,'*'
        INT 21h
                    
    LOOP starLoop
    
    DEC blank
    INC star
    
    ret
    
    innerLoop endp

; NEWLINE PROCEDURE IS RESPONSIBLE FOR PRINTING A NEWLINE
newLine proc
    MOV AH,2
    MOV DL,0Dh
    INT 21H
    MOV DL,0Ah
    INT 21H
    ret
    
    newLine endp
    
    
MAIN PROC
         
    MOV AX,@DATA
    MOV DS, AX
    
    ; NUMBER OF LINES     
    MOV AL,4
    
    ; NUMBER OF BLANKS= NUMBEROFLINES-1
    MOV blank, AL
    SUB blank,1
    
    ; NUMBER OF START= NUMBEROFLINES-BLANKS
    MOV DH, AL
    SUB DH,blank
    MOV star,DH
    
    ; WHOLE TASK WILL BE PERFORMED BY outerLoop FUNCTION
    CALL outerLoop
    
    MAIN ENDP
END MAIN