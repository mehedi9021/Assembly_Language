MOV AX,0FFFFH 


MOV BX,0FFFFH

MUL BX  ;Notes are Below :    

        ;Since,it is perform with 16 bit 
        ;So,The Operation is:
        ;Bx means BX = AX*BX = DX*AX
        ;Here, DX = Height Significant value 
        ;Here, AX = Lowest Significant value