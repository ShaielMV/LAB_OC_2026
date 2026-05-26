global Procedimiento1
global Procedimiento2

section .text

; ---------------------------------------------------------
; Procedimiento 1: Llena los registros libres con valores
; ---------------------------------------------------------
Procedimiento1:
    push ebp
    mov ebp, esp

    mov eax, 10         ; Ponemos un 10 en EAX
    mov ecx, 20         ; Ponemos un 20 en ECX
    mov edx, 30         ; Ponemos un 30 en EDX

    pop ebp
    ret                 ; Nos vamos sin hacer push ni pop de estos tres

; ---------------------------------------------------------
; Procedimiento 2: Lee lo que sea que haya quedado en ellos
; ---------------------------------------------------------
Procedimiento2:
    push ebp
    mov ebp, esp

    ; Si C o el procesador los hubieran salvado/limpiado, aquí habría basura o ceros.
    ; Si la teoría es correcta, aquí siguen teniendo 10, 20 y 30.
    
    add eax, ecx        ; EAX = 10 + 20 = 30
    add eax, edx        ; EAX = 30 + 30 = 60 (Este será el valor de retorno)

    pop ebp
    ret

; Línea de seguridad para el linker
section .note.GNU-stack noalloc noexec nowrite progbits