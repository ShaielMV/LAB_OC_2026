section .text
global updateGrade

updateGrade:
    push ebp
    mov ebp, esp

    mov edi, [ebp+8] ;inicio de estructura
    mov edx, [ebp+12] ;puntos a sumar

    add [edi+8], edx
    cmp dword[edi+8], 100
    jbe fin
    mov dword[edi+8], 100
fin:
    pop ebp
    ret

    