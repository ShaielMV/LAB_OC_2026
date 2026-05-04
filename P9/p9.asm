%include "../LIB/pc_iox.inc"
n equ 5
extern pHex_n
extern pHex_dw

section	.text
	global _start   

section .data
    msgcapArreglo1	db  'Ingrese el primer vector',0xa,0
    msgcapArreglo2	db  'Ingrese el segundo vector',0xa,0 
    msgResEscalar	db  'El producto escalar es:',0xa,0 
    msgSuma	db  'La suma de los vectores es:',0 
    arreglo1 db '0123456789',0
    arreglo2 db '0123456789',0
    

_start:                   

    mov edx, msgcapArreglo1
    call puts
    mov ebx, arreglo1
    mov ecx, n
    call capturar

    call saltoLinea

    mov edx, msgcapArreglo2
    call puts
    mov ebx, arreglo2
    call capturar

    call saltoLinea

    mov edx, msgResEscalar
    call puts
    mov esi, arreglo1
    mov edi, arreglo2
    call puntoEscalar
    mov eax, edx
    call pHex_dw

    call saltoLinea
    call saltoLinea

    mov edx, msgSuma
    call puts
    mov ebx, arreglo1
    mov edx, arreglo2
    call sumaVectores

    call desplegar

    mov ebx, 0 ; Para que no marque error
    mov eax, 1	
    int 0x80       

	
    ; Procedimientos
    capturar:   ;inciso a
        push ecx

        leer: call getche 
            cmp al, '0' 
            jb leer
            cmp al, '9'
            ja leer

            sub al, '0'
            mov [ebx], al
            inc ebx
        loop leer
        call saltoLinea

        pop ecx
    ret        ;fin inciso a


    desplegar: ;inciso b
        push ecx

        mostrar:
            mov al, [ebx]
            call pHex_n
            inc ebx
            call saltoLinea
        loop mostrar

        call saltoLinea
        pop ecx
    ret    ; fin inciso b


    sumaVectores: ;inciso c
        push ecx
        push ebx
        sumar:
            mov al, [edx]
            add [ebx], al
            inc edx
            inc ebx
        loop sumar

        call saltoLinea
        pop ebx
        pop ecx
    ret         ;fin inciso c



    puntoEscalar: 
        push ecx
        mov edx, 0
        multiplicar:
            mov eax, 0
            mov al, [esi]
            mov bl, [edi]
            mul bl
            add edx, eax
            inc esi
            inc edi
        loop multiplicar

        pop ecx
    ret


    saltoLinea:
        push eax
        mov al, 10
        call putchar
        pop eax
    ret
   