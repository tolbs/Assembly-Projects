.global main
.func main

main:
	SUB SP, SP, #16		@ Make space on stack


thumbstart:
	MOV R0, #9	@ Do 9/3
	MOV R1, #2
	MOV R3, #0
	MOV R10, #0
	MOV R11, #1

loop:
	TST R0, R1
	BLT end
	ADD R3, #1
	SUB R0, R1
	BGE loop
	
	TST R0, R10
	BEQ printZero

	TST R0,R11
	BEQ printOne

printZero:
	VLDR S14, [R0]       @load what is R0 into the stack, R0=0
	VCVT.F64.F32 D0, S14
	VMOV R2, R3, D0		@ first value

	MOV R0, R3		@put the quotient into to R0
	MOV R3, #0		@reset R3 to zero
	TST R10, #0		@check if R10 is equal to zero got to loop
	BEQ loop

printOne:
	VLDR S14, [R0]			@load what is in R0 to the stack, R0=1
	VCVT.F64.F32 D0, S14
	VMOV R2, R3, D0		@ first value

	MOV R0,R3		@put the quotient into R0
	MOV R3, #0		@reset R3 to zero

	TST R10, #0		@check if R10 is equal to zero got to loop
	BEQ loop



end:
	VLDR S14, [R11]			@load what is in R0 to the stack, R0=1
	VCVT.F64.F32 D0, S14
	VMOV R2, R3, D0		@ first value
	VSTR D0, [SP]		@ second on stack
	BL printf	
	
	ADD SP, SP, #16		@ restore stack

	MOV R7, #1		@ Exit Syscall
	SWI 0	

.data
string:	.asciz "The FP values are %f and %f\n"