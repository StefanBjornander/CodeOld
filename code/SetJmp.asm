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
	; Dereference £temporary569 £temporary568 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary571 £temporary570 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary569 £temporary571
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary573 £temporary572 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary575 £temporary574 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary573 £temporary575
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary577 £temporary576 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary579 £temporary578 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary577 £temporary579
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
	; Dereference £temporary583 £temporary582 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary583
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary586 £temporary585 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary586
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary589 £temporary588 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary589
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
