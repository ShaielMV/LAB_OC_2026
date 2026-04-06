%include "../LIB/pc_io.inc"  	; incluir declaraciones de procedimiento externos
								; que se encuentran en la biblioteca libpc_io.a
section	.data
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	
    mov ebx, msg
    mov esi, 9
    mov byte[ebx+esi*2+1], '%' ;reemplazar la t por un % por direccionamiento relativo a base mas indice con indice escalado

	mov edx, msg
	call puts			

	mov	eax, 1	    	; seleccionar llamada al sistema para fin de programa
	int	0x80        	; llamada al sistema - fin de programa
