	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary558 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary558
	mov [rbp + 32], rbp

 setjmp$2:
	; Dereference £temporary559 buf 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary560 rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary559 £temporary560
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary561 buf 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary562 rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary561 £temporary562
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary563 buf 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary564 rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary563 £temporary564
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
	; Dereference £temporary567 buf 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary567
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary569 buf 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary569
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary571 buf 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary571
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
