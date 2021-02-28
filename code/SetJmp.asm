	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary567 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary567
	mov [rbp + 32], rbp

 setjmp$2:
	; Dereference £temporary568 buf 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary569 rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary568 £temporary569
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary570 buf 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary571 rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary570 £temporary571
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary572 buf 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary573 rbp_pointer 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary572 £temporary573
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
	; Dereference £temporary576 buf 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary576
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary578 buf 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary578
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary580 buf 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary580
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
