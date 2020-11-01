	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary673 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary673
	mov [rbp + 32], rbp

 setjmp$2:
	; Dereference £temporary674 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary675 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary674 -> buf £temporary675 -> rbp_pointer
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary676 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary677 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary676 -> buf £temporary677 -> rbp_pointer
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary678 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary679 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary678 -> buf £temporary679 -> rbp_pointer
	mov rax, [rdi + 16]
	mov [rsi + 16], rax

 setjmp$11:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp$12:
	; FunctionEnd setjmp

section .text

 longjmp:
	; AssignRegister ebx return_value
	mov ebx, [rbp + 32]

 longjmp$1:
	; Dereference £temporary682 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary682 -> buf
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary684 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary684 -> buf
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary686 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary686 -> buf
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
