section .text
global reverseArray

reverseArray:
    push ebp
    mov ebp, esp
    push ebx
    mov edi, [ebp+8]
    mov ecx, [ebp+12]
    mov ebx, ecx
    dec ecx
    mov esi, 0
    shr ebx, 1
    invertir:
        cmp esi, ebx
        ja fin
        mov edx, [edi+ecx*4]
        mov eax, [edi+esi*4]
        mov [edi+esi*4], edx
        mov [edi+ecx*4], eax
        inc esi
        dec ecx
        jmp invertir
fin:    
    pop ebx
    pop ebp
ret