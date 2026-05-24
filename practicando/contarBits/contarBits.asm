section .text
global countOnes

countOnes:
    push ebp
    mov ebp, esp
    mov edx, [ebp+8]
    mov eax, 0

    contar:
        shr edx, 1
        jc sumar
        cmp edx, 0
        je fin
        jmp contar

        sumar:
            inc eax
            jmp contar
    
  fin:  
    pop ebp
ret
