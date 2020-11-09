.model small
.stack 100h
.data
.code

main proc
    
      
    mov bx,5
      
    l1:
    xor cx,cx    
    mov cx,5
    
    
    l2:
    mov ah,2
    mov dl,'*'
    int 21h  
    
    
    loop l2
    
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    
     dec bx
     je exit
     jne l1       
           
  
    
    exit:
    
    mov ah,4ch
    int 21h
    main endp
end main