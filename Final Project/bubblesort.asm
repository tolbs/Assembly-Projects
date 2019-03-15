.686
.model flat

.code

_bubblesort PROC

	push ebp
	mov ebp, esp

	mov ebx, [ebp+8]		;first array element
	mov ecx, [ebp+12]		;outer loop limit (size)
	mov edx, ecx
	sub edx, 1				;inner loop limit	(size-1)
	mov esi, 0				;outer loop counter (i)
	mov edi, 0				;inner loop counter (j)

	mov eax, 1
	;cmp eax, 0
	;jne swapAscending

sortAscending:
	cmp ecx, esi			;check outer loop for completion
	je allDone

	cmp edx, edi			;check inner loop for completion
	jge outerLoopAscending

	mov eax, edi			;edi = j
	add eax, 1				;eax = j+1

	mov al, [ebx+edi]
	cmp [ebx+eax], al		;compare a[j] and a[j+1]
	jl swapAscending		;if a[j] > a[j+1], swap

	add edi, 1				;otherwise continue inner loop
	jmp sortAscending

outerLoopAscending:
	add esi, 1				;increment outer counter
	mov edi, 0				;reset inner counter
	jmp sortAscending

swapAscending:
	mov ah, [ebx+eax]
	mov [ebx+eax], al
	mov [ebx+esi], ah
	jmp sortAscending



sortDescending:
	cmp ecx, esi			;check outer loop for completion
	je allDone

	cmp edx, edi			;check inner loop for completion
	jge outerLoopDescending

	mov eax, edi			;edi = j
	add eax, 1				;eax = j+1

	mov al, [ebx+edi]
	cmp [ebx+eax], al		;compare a[j] and a[j+1]
	jg swapDescending		;if a[j] < a[j+1], swap

	add edi, 1				;otherwise continue inner loop
	jmp sortDescending

outerLoopDescending:
	add esi, 1				;increment outer counter
	mov edi, 0				;reset inner counter
	jmp sortDescending

swapDescending:
	mov ah, [ebx+eax]
	mov [ebx+eax], al
	mov [ebx+esi], ah
	jmp sortDescending

allDone:
	pop ebp
	ret

_bubblesort ENDP

end