	global locale_test

	extern $StackTop


section .text

 locale_test:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 locale_test$1:
	; FunctionEnd locale_test
