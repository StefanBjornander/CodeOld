	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary564 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary564
	mov [rbp + 32], rbp

 setjmp$2:
	; Dereference £temporary565 buf 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary566 rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary565 £temporary566
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary567 buf 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary568 rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary567 £temporary568
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary569 buf 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary570 rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary569 £temporary570
	mov rax, [rdi + 16]
	mov [rsi + 16], rax

 setjmp$11:
	; SetReturnValue

 setjmp$12:
	; Return integral4$0#
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
	; Dereference £temporary573 buf 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary573
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary575 buf 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary575
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary577 buf 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary577
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
