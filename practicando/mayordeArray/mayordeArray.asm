section .text
global maxArray

maxArray:
    push ebp
    mov ebp, esp
    push ebx
    mov edi, [ebp+8] ;arreglo
    mov ecx, [ebp+12] ;tamaño
    dec ecx
    mov edx, 0
    mov eax, [edi]

    buscar:
        inc edx
        mov ebx, [edi+edx*4]
        cmp eax, ebx
        jl cambiar
        jmp seguir
    cambiar:
        mov eax, ebx
    seguir: loop buscar

    pop ebx
    pop ebp
    ret