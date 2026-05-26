section .text
global str_upper

str_upper:
    push ebp
    mov ebp, esp
    mov edx, [ebp+8]
    mov esi, 0

    convertir:
        cmp byte[edx+esi], 32
        je incEsi
        cmp byte[edx+esi], 0
        je fin
        cmp byte[edx+esi], 'a'
        jb incEsi
        cmp byte[edx+esi], 'z'
        ja incEsi

        sub byte[edx+esi], 32

        incEsi: 
            inc esi
        jmp convertir
    
    fin:
        pop ebp
    ret