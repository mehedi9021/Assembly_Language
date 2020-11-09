.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC 
    
    CALL STAR_PRINTING     // CALL STAR_PRINTING PROCEDURE FOR PRINTING STAR..........
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
    
    
    STAR_PRINTING PROC      //STAR_PRINTING PROCEDURE...........
        
        MOV BL,1
        MOV BH,5
        SUB BH,BL
        MOV CL,5
        MOV CH,1
        
        STAR_LOOP:          // WORKING ON CONDITION LOOP TO PRINT STAR ON THE CONSOLE..........
    
        CMP BH,0
        JE STAR_PRINT
        
        CALL GAP_SET        // CALL GAP_SET PROCEDURE TO PRINT GAP/NULL_SET VALUE ON THE LINE............
    
        STAR_PRINT:        // PER LINE STAR PRINT CONDITION LOOP.........
    
        MOV AH,2
        MOV DL,'*'
        INT 21H
    
        DEC BL
        CMP BL,0
        JNE STAR_PRINT
        
        CALL PRINT_A_LINE       // CALL PRINT_A_LINE PROCEDURE TO PRINT NEW LINE..............
        
        INC CH
        MOV BL,CH
        MOV BH,5
        SUB BH,BL
    
        DEC CL
        CMP CL,0
        JNE STAR_LOOP
        
        
        RET
        STAR_PRINTING ENDP
    
    GAP_SET PROC              // GAP_SET PROCEDURE.................
        
        FAKA_SET:            // FAKA_SET CODITION LOOP TO PRINT FAKA_SET/NULL_SET ON THE CONSOLE...............
        
        MOV AH,2
        MOV DL,' '
        INT 21H
    
        DEC BH
        CMP BH,0
        JNE FAKA_SET
        
        RET
        GAP_SET ENDP
    
    
    PRINT_A_LINE PROC          // PRINT_A_LINE PROCEDURE................
        
        MOV AH,2
        MOV DL,10
        INT 21H
        MOV DL,13
        INT 21H
        
        RET
        PRINT_A_LINE ENDP
    
END MAIN