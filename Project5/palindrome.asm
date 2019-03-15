.686
.model flat

.code
_palindrome PROC

	push ebp
	mov ebp,esp			;stack pointer to ebp
	
	mov ebx,[ebp+8]		;address of first array element
	mov ecx,[ebp+12]	;size of array

	sub ecx, 1			;exclude null
	mov esi, 0			;left bound
	mov edi, ecx		;right bound

loopAgain:
	cmp esi, edi		;check bounds to see if left >= right
	jge allDone

	mov al, [ebx+esi]	;move address of left bound to al
	mov ah, [ebx+edi]	;move address of right bound to ah 

	or al, ' '			;convert all chars to uppercase
	or ah, ' '			;' ' = 32 = 00100000

	cmp al, ah
	jne notPalindrome	

	add esi, 1			;increment left bound
	sub edi, 1			;decrement right bound
	jmp loopAgain

notPalindrome:
	mov eax, 0
	pop ebp
	ret

allDone:
	mov eax, 1
	pop ebp
	ret

_palindrome ENDP

END