	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary805 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary805
	mov [rbp + 32], rbp

 setjmp$2:
	; Dereference £temporary806 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary807 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary806 -> buf £temporary807 -> rbp_pointer
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary808 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary809 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary808 -> buf £temporary809 -> rbp_pointer
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary810 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary811 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary810 -> buf £temporary811 -> rbp_pointer
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
	; Dereference £temporary814 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary814 -> buf
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary816 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary816 -> buf
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary818 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary818 -> buf
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
