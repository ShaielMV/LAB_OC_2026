%include "../LIB/pc_iox.inc"
extern pBin_n
section	.text
	global _start   

section .data
   cadena db 'Hola mundo',0
   N equ 3
    

_start:                   
    mov ebx, cadena
    call PrintStr

    call saltoLinea
    call saltoLinea

    mov ebx, cadena
    call InvertirStr
    call PrintStr

    call saltoLinea
    call saltoLinea

    mov cl, N
    mov al, 10

    call TestBit
    call saltoLinea

    mov edx, 10
    call EsPar
    call pBin_n
    call saltoLinea

    mov ebx, 0 ; Para que no marque error
    mov eax, 1	
    int 0x80 


    PrintStr:
    mov esi, 0
        desplegar:
            mov al, [ebx+esi]
            call putchar
            inc esi
            cmp byte[ebx+esi], 0
            je fin
            jmp desplegar
    fin: 
    
        ret

    InvertirStr:
        
        verLongitud:
            cmp byte[ebx+esi], 0
            je sig
            inc esi
            jmp verLongitud

        sig:
            dec esi
        invertir:
            mov al, [ebx+esi]
            mov cl, [ebx+edi]
            mov [ebx+edi], al
            mov [ebx+esi], cl
            
            inc edi
            dec esi
    
            cmp esi, edi
            jb acabar
            jmp invertir
    acabar:
        ret
        

    TestBit:
        inc cl
        shr al, cl        
    ret


    EsPar:
        shr edx, 1
        jc uno
        mov al, 1
        jmp terminar
        uno: 
            mov al, 0
    terminar:
        ret




    saltoLinea:
        push ax
        mov al, 10
        call putchar
        pop ax
    ret
	
    