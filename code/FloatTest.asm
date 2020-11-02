	global float_test

	extern $StackTop


section .text

 float_test:
	; Empty

 float_test$1:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 float_test$2:
	; FunctionEnd float_test
