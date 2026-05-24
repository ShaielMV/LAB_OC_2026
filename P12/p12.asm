section .text
global strlen
global str_mid
global clrBit

strlen:
    push ebp
    mov ebp, esp
    mov edx, [ebp+8]
    mov eax, 0

    loop_strlen:
        cmp byte[edx+eax], 0
        je fin_strlen
        inc eax
        jmp loop_strlen
        
fin_strlen:
    pop ebp
    ret    



str_mid:
    push ebp
    mov ebp, esp
    mov edi, [ebp+8] ; cadena donde se va a copiar
    mov esi, [ebp+12] ; cadena de la que se sacan los caracteres a copiar
    mov edx, [ebp+16] ; inicio

    copiar:
        cmp edx, [ebp+20]
        ja fin_str_mid
        mov cl, [esi+edx]
        mov [edi], cl
        inc edx
        inc edi
        jmp copiar

fin_str_mid:
    pop ebp
    ret


clrBit:
    push ebp
    mov ebp, esp
    mov eax, [ebp+8]
    mov cl, [ebp+12]
    mov edx, 1

    shl edx, cl
    not edx
    and eax, edx

    pop ebp
ret