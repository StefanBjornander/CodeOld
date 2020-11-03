	global float_test

	extern $StackTop


section .text

 float_test:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 float_test$1:
	; FunctionEnd float_test
