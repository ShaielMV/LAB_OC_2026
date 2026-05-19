section	.text
    global pBin8b
    global pBin16b
    global pBin32b
    global pBin64b

    pBin8b:
        push ebp
        mov ebp, esp
        mov dl, [ebp+8]
        mov ecx, 8

        Imprimir8b:
            shl dl, 1
            jc uno8b
            mov al, '0'
            jmp desplegar

            uno8b:
                mov al, '1'
            desplegar: call my_putchar
        loop Imprimir8b

        pop ebp
    ret

    pBin16b:
        push ebp
        mov ebp, esp
        mov dx, [ebp+8]
        mov ecx, 16
        imprimir16b:
            shl dx, 1
            jc uno16b

            mov al, '0'
            jmp desplegar16b

            uno16b:
                mov al, '1'

            desplegar16b: call my_putchar
        loop imprimir16b
    pop ebp
    ret

     pBin32b:
        push ebp
        mov ebp, esp
        mov edx, [ebp+8]
        mov ecx, 32
        imprimir32b:
            shl edx, 1
            jc uno32b

            mov al, '0'
            jmp desplegar32b

            uno32b:
                mov al, '1'

            desplegar32b: call my_putchar
        loop imprimir32b
    pop ebp
    ret

    pBin64b:
        push ebp
        mov ebp, esp
        push ebx
        mov edx, [ebp+12]
        mov ebx, 0
    
    segundaVuelta:
        mov ecx, 32
        imprimir64b:
            shl edx, 1
            jc uno64b

            mov al, '0'
            jmp desplegar64b

            uno64b:
                mov al, '1'

            desplegar64b: call my_putchar
        loop imprimir64b
        mov edx, [ebp+8]
        inc ebx
        cmp ebx, 2
        jne segundaVuelta
    
    pop ebx
    pop ebp
    ret



my_putchar: pushad                 ; salvar todos los registros
    push eax              ; salvar EAX -- meter el caracter a la pila
    mov eax,4            ; seleccionar el tipo llamada al sistema --> write (sys_write)
    mov ebx,1            ;  seleccionar la salida a pantalla ---> File descriptor 1 - standard output
    mov ecx,esp        ; ECX debe apuntar a la cadena, en este caso un caracter que está en la pila
    mov edx,1            ; EDX debe tener la longitud de la cadena, en este caso uno solo caracter
    int 80h                 ; llamar al sistema (escritura al standard output -- pantalla)
    pop eax                ; recuperar EXA 
    popad                  ; recuperar todos los registros
    ret
   