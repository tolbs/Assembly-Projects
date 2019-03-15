.686
.model flat

.code

_average PROC ;named _test because C automatically prepends an underscode, it is needed to interoperate
	push ebp
	mov ebp,esp ;stack pointer to ebp
	
	mov ebx,[ebp+8] ; address of first array element
	mov ecx,[ebp+12] ; store size of array in ecx

	mov ebp,0
	mov edx,0
	mov eax,0

loopMe:
	cmp ebp,ecx
	je allDone
	
	add eax,[ebx+edx]
	add edx,4
	add ebp,1
	jmp loopMe

allDone:
	
	xor edx, edx
	div ecx
	pop ebp
	ret

_average ENDP

END