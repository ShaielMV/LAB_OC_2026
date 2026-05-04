
	section	.text
    global suma
    global Strlen
    global getBit

    suma:
        push ebp
        mov ebp, esp
        
        mov eax,[ebp+8]
        add eax, [ebp+12]
    
        pop ebp
    ret


   Strlen:
      push ebp
      mov ebp, esp

      mov ecx, [ebp+8]
      mov eax, 0
    leer: 
      mov dl, [ecx]
      cmp dl, 0
      je fin
      inc ecx
      inc eax
      jmp leer
      
    fin:
        pop ebp
        ret
  


    getBit:
        push ebp
        mov ebp, esp
        mov eax, [ebp+8]
        mov cl, [ebp+12]

        shr eax, cl
        and eax, 1

        pop ebp
    ret