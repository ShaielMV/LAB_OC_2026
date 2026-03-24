%include "../LIB/pc_io.inc"  	; incluir declaraciones de procedimiento externos
								; que se encuentran en la biblioteca libpc_io.a

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	mov edx, msg		; reemplazar la primera letra por una Z por direccionamiento directo
	mov al, 'Z'
	mov [edx], al
	call puts	

	mov edx, msg		; reemplazar la primera letra por una Z por direccionamiento directo
	mov al, 'Z'
	mov [edx], al
	call puts			

	mov	eax, 1	    	; seleccionar llamada al sistema para fin de programa
	int	0x80        	; llamada al sistema - fin de programa

section	.data
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 


