	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary683 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary683
	mov [rbp + 32], rbp

 setjmp$2:
	; Dereference £temporary684 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary685 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary684 -> buf £temporary685 -> rbp_pointer
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary686 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary687 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary686 -> buf £temporary687 -> rbp_pointer
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary688 -> buf buf 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary689 -> rbp_pointer rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary688 -> buf £temporary689 -> rbp_pointer
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
	; Dereference £temporary692 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary692 -> buf
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary694 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary694 -> buf
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary696 -> buf buf 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary696 -> buf
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
