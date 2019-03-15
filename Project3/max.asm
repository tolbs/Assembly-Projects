.686
.model flat

.code

_max PROC ;named _max because C automatically prepends an underscode, it is needed to interoperate

	push ebp
	mov ebp,esp ;stack pointer to ebp
	
	mov ebx,[ebp+8] ; address of first array element
	mov ecx,[ebp+12]
	mov ebp,0
	mov edx,0
	mov eax,[ebx]

loopMe:
	cmp ebp,ecx
	je allDone
	
	cmp eax,[ebx+edx]
	jg continue

	mov eax,[ebx+edx]

continue:
	add edx,4
	add ebp,1
	jmp loopMe

allDone:
	
	pop ebp
	ret
_max ENDP

END