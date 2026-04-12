%include "../LIB/pc_iox.inc"

section	.text
	global _start   

section .data   
    N dw 0

_start:                   

	mov ebx, 0x5C4B2A60 ;inciso a
    mov eax, 0x2219166
    add eax, ebx
	call pHex_dw	

    mov al,10 	
	call putchar
	mov al,10	
	call putchar ; fin inciso a

	push bx ;inciso b
    mov ax, bx
    call pHex_w 

    mov al,10 	
	call putchar
	mov al,10 	
	call putchar ; fin inciso B

	mov al, 8 ;inciso c
	mul bl
    mov [N], ax
    call pHex_w

    mov al,10 	
	call putchar
	mov al,10 	
	call putchar ;fin inciso c

    inc byte[N] ;inciso d
    mov ax, [N]
    call pHex_w

    mov al,10 	
	call putchar
	mov al,10 	
	call putchar ;fin inciso d

    mov ax, bx ;inciso e
    mov bl, 0xFF
    div bl
    call pHex_b

    mov al,10 	
	call putchar

    mov al, ah
    call pHex_b


    mov al,10 	
	call putchar
	mov al,10 	
	call putchar ;fin inciso e
    
	add [N], ah ;inciso f
    mov ax, [N]
    call pHex_w

    mov al,10 	
	call putchar
	mov al,10 	
	call putchar ;fin inciso f

    dec byte[N] ;inciso g	
    mov ax, [N]
    call pHex_w

    mov al, 10
	call putchar

    pushf
    pop ax
    call pHex_w

	mov al,10 	
	call putchar 
    mov al,10       
	call putchar ;fin inciso g

    pop ax ;inciso h
    call pHex_w
	
    mov al,10       
	call putchar ;fin inciso h

	

	mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel

