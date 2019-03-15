.686
.model flat

.code
_reverse PROC

	push ebp
	mov ebp,esp			;stack pointer to ebp
	
	mov ebx,[ebp+8]		;address of first array element
	mov ecx,[ebp+12]	;size of array

	sub ecx, 1			;move to last char, not null
	mov esi, 0			;left bound
	mov edi, ecx		;right bound

swap:
	cmp esi, edi		;check bounds to see if left >= right
	jge allDone

	mov al, [ebx+esi]	;move address of left bound to al
	mov ah, [ebx+edi]	;move address of right bound to ah 

	mov dl, al			;swap
	mov al, ah
	mov ah, dl
	mov [ebx+esi], al	;move contents of al to into ebx+esi
	mov [ebx+edi], ah	

	add esi, 1			;increment left bound
	sub edi, 1			;decrement right bound
	jmp loopAgain

allDone:
	pop ebp
	ret

_reverse ENDP

END