	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary559 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary559
	mov [rbp + 32], rbp

 setjmp$2:
	; Dereference £temporary560 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary561 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary560 -> buf £temporary561 -> rbp_pointer
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary562 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary563 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary562 -> buf £temporary563 -> rbp_pointer
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary564 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary565 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary564 -> buf £temporary565 -> rbp_pointer
	mov rax, [rdi + 16]
	mov [rsi + 16], rax

 setjmp$11:
	; SetReturnValue

 setjmp$12:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp$13:
	; FunctionEnd setjmp

section .text

 longjmp:
	; AssignRegister ebx return_value
	mov ebx, [rbp + 32]

 longjmp$1:
	; Dereference £temporary568 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary568 -> buf
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary570 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary570 -> buf
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary572 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary572 -> buf
	mov rbp, [rsi + 8]

 longjmp$7:
	; JumpRegister rcx
	jmp rcx

 longjmp$8:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 longjmp$9:
	; FunctionEnd longjmp
