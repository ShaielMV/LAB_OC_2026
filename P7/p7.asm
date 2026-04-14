%include "../LIB/pc_iox.inc"
extern pBin_dw
extern pBin_b
extern pBin_w

section	.text
	global _start   

section .data   
    N dw 0

_start:                   

	mov eax, 0x22446688 ;inciso a
    ror eax, 4
    call pHex_dw
    
    mov al,10 	
	call putchar
	mov al,10	
	call putchar ; fin inciso a


    mov cx, 0x3F48   ;inciso b
    shl cx, 3
    mov ax, cx
    call pHex_w
    
    mov al,10 	
	call putchar
	mov al,10	
	call putchar ; fin inciso b


    mov esi, 0x20D685F3  ;inciso c
    mov eax, esi
    call pBin_dw
    mov al,10 	
	call putchar

    xor esi, 0x40042021
    mov eax, esi
    call pBin_dw
    
    mov al,10 	
	call putchar
	mov al,10	
	call putchar ; fin inciso c


    push esi    ;inciso d
    mov eax, esi
    call pBin_dw
    
    mov al,10 	
	call putchar
	mov al,10	
	call putchar ; fin inciso d


    mov ch, 0xA7 ;inciso e
    mov al, ch
    call pBin_b
    mov al,10 	
	call putchar

    or ch, 0x48
    mov al, ch
    call pBin_b
    
    mov al,10 	
	call putchar
	mov al,10	
	call putchar ; fin inciso e


    mov bp, 0x67DA   ;inciso f
    mov ax, bp
    call pBin_w
    mov al,10 	
	call putchar

    and bp, 0xBBAD
    mov ax, bp
    call pBin_w
    
    mov al,10 	
	call putchar
	mov al,10	
	call putchar ; fin inciso f

    
    mov ax, bp ;inciso g
    call pHex_w
    mov al,10 	
	call putchar

    shr bp, 3 
    mov ax, bp
    call pHex_w
    
    mov al,10 	
	call putchar
	mov al,10	
	call putchar ; fin inciso g


    mov ebx, 0x1234567 ;inciso h
    mov eax, ebx
    call pHex_dw
    mov al,10 	
	call putchar

    shr ebx, 5
    mov eax, ebx
    call pHex_dw

    mov al,10 	
	call putchar
	mov al,10	
	call putchar ; fin inciso h


    mov ax, cx ;inciso i
    call pHex_w
    mov al,10 	
	call putchar

    shl cx, 3
    mov ax, cx 
    call pHex_w
    
    mov al,10 	
	call putchar
	mov al,10	
	call putchar ; fin inciso i


    pop esi   ;inciso j
    mov eax, esi
    call pHex_dw
    
    mov al,10 	
	call putchar
	mov al,10	
	call putchar; fin inciso j


    mov eax, esi ;inciso k
    mov ebx, esi
    call pHex_dw
    mov al,10 	
	call putchar

    shl esi, 3 
    mov eax, esi
    mov esi, ebx
    shl esi, 1

    add eax, esi
    call pHex_dw

    mov al,10 	
	call putchar
	mov al,10	
	call putchar ; fin inciso k

    mov ebx, 0 ; Para que no marque error
	mov eax, 1	
	int 0x80       

