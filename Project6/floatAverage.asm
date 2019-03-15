.686
.model flat

.code 

_average PROC

		push ebp                ; save the caller frame pointer
		mov ebp, esp
		
		mov ebx, [ebp+8]	; address of first element in array
		mov ecx, [ebp+12]	; store size of array in ecx
		xor edx, edx		; counter for loop
		fldz			; set top of FPU stack to zero

loopAdd:
		fld dword ptr[ebx+edx*4]   ; load next array onto register stack at st(1)
		faddp			   ; add st(0) to st(1) and pop register stack
		inc edx			   ; increment counter
		cmp ecx, edx		   ; compare size of array in ecx with counter in edx
		jg loopAdd		   ; if ecx > edx jump to loopAdd and continue

						  ;load array size as float to compute average
			              ;divide st(0) by st(1) and pop register stack

		
		pop ebp            ; restore caller frame pointer
		ret                ; content of st(0) is returned 

_average ENDP

END