%include "../LIB/pc_iox.inc"

section	.text
	global _start   

section .data
    msgnoLetra	db  'El caracter ingresado no es una letra',0xa,0xa,0
    msgMenor	db  'El numero ingresado es menor a 5',0xa,0xa,0 
    msgMayor	db  'El numero ingresado es mayor a 5',0xa,0xa,0 
    msgLetra	db  'El caracter ingresado es una letra',0xa,0xa,0 
    msgNum	db  'El caracter ingresado es un numero',0xa,0xa,0 
    msgcapturados db 'Datos capturados:',0xa,0
    ast db '*',0
    arreglo db '0123456789',0

_start:                   

	leer: call getche ;inciso a
    cmp al, '0' 
    jb leer
    cmp al, '9'
    ja leer
    cmp al, '5'
    jae mayor
    mov al, 10
    call putchar
    mov edx, msgMenor
    call puts
    jmp sigB
    
    mayor: mov al, 10
    call putchar
    mov edx, msgMayor
    call puts   ; fin inciso a


    sigB: call getche   ; inciso b
    cmp al, 'A'
    jb num
    cmp al, 'Z'
    ja num

    mov al, 10
    call putchar
    mov edx, msgLetra
    call puts
    jmp sigC

    num: cmp al, '0'
    jb sigC
    cmp al, '9'
    ja sigC
    
    mov al, 10
    call putchar
    mov edx, msgNum
    call puts    ; fin inciso b
    
    sigC: mov cx, 3     ; inciso c
    mov bx, 0  
    ciclo: inc bx
    mov al, 10
    call putchar
    mov ax, bx
    cmp bx, cx
    ja sigD

    imprimir: mov edx, ast
    call puts
    dec ax
    cmp ax, 0
    jbe ciclo
    jmp imprimir    ; fin inciso c

    sigD: mov al, 10    ;inciso d
    call putchar

    mov esi, arreglo        
    mov cx, 10
    captura:          
        call getche
        mov [esi], al
        inc esi
    loop captura

    mov al, 10
    call putchar
    mov cx, 10
    mov esi, arreglo

    mov edx, msgcapturados
    call puts
    desplegar: 
        mov al, [esi]
        call putchar
        inc esi
        mov al, 10
        call putchar
    loop desplegar  ; fin inciso d
   
    

fin: mov ebx, 0 ; Para que no marque error
mov eax, 1	
int 0x80       



