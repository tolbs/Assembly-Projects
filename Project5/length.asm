.686
.model flat

.code

_length PROC

	push ebp
	mov ebp,esp		;stack pointer to ebp
	
	mov ebx,[ebp+8] ;address of first array element
	
	mov eax, 0
	xor dl, dl

loopAgain:
	cmp [ebx+eax], dl
	je allDone

	add eax, 1
	jmp loopAgain

allDone:
	pop ebp
	ret

_length ENDP

END