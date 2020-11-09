.model small
.stack 100h
.data
.code

main proc
    
    mov cx,5 
     
    mov bh,1
        
    l1:         ;inner loop
    
    mov bl,bh
    
    l2:         ;outer loop
    mov ah,2
    mov dl,'*'
    int 21h        
    
     dec bl
     cmp bl,0
     jne l2
    
      
      inc bh
      
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
            
    loop  l1
            
  
    
    exit:
    
    mov ah,4ch
    int 21h
    main endp
end main