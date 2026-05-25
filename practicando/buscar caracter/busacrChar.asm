section .text
global str_chr

str_chr:
    push ebp
    mov ebp, esp
    mov edx, [ebp+8]
    mov cl, [ebp+12]

    buscar:
        cmp [edx], cl
        je retornar
        cmp byte[edx], 0
        je no_existe
        inc edx
        jmp buscar

    retornar:
        mov eax, edx
        jmp fin

    no_existe:
        mov eax, 0
    fin:
        pop ebp
    ret