.model small
.stack 100h
.data
.code

main proc
    
    xor cx,cx       ;garbaze value na paibar jonno
    mov cx,5 
    
    l1:
    mov ah,2
    mov dl,35h
    int 21h  
    
    
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
            
           
    loop l1
    
    
    exit:
   
    
    mov ah,4ch
    int 21h
    main endp
end main