%include "../LIB/pc_io.inc"  	; incluir declaraciones de procedimiento externos
								; que se encuentran en la biblioteca libpc_io.a
section	.data
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	
    mov ebx, msg
    mov esi, 20
    mov byte[ebx+esi+5], 'Z' ;reemplazar la z por una Z por direccionamiento relativo a base mas indice

	mov edx, msg
	call puts			

	mov	eax, 1	    	; seleccionar llamada al sistema para fin de programa
	int	0x80        	; llamada al sistema - fin de programa
