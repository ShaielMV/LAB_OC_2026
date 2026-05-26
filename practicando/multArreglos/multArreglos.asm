section .text
global sumProducts

sumProducts:
    push ebp
    mov ebp, esp
    push ebx
    mov edi, [ebp+8] ;arreglo A
    mov esi, [ebp+12] ;arreglo B
    mov ecx, [ebp+16] ;tamaño
    mov eax, 0
    mov edx, 0
    mult:
        mov ebx, [edi+edx*4]
        imul ebx, [esi+edx*4]
        add eax, ebx
        inc edx
    loop mult

    pop ebx
    pop ebp
ret



