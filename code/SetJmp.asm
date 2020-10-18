	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; £temporary805 = rbp

 setjmp$1:
	; rbp_pointer = £temporary805
	mov [rbp + 32], rbp

 setjmp$2:
	; £temporary806 -> buf = *buf
	mov rsi, [rbp + 24]

 setjmp$3:
	; £temporary807 -> rbp_pointer = *rbp_pointer
	mov rdi, [rbp + 32]

 setjmp$4:
	; £temporary806 -> buf = £temporary807 -> rbp_pointer
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; £temporary808 -> buf = *buf
	mov rsi, [rbp + 24]

 setjmp$6:
	; £temporary809 -> rbp_pointer = *rbp_pointer
	mov rdi, [rbp + 32]

 setjmp$7:
	; £temporary808 -> buf = £temporary809 -> rbp_pointer
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; £temporary810 -> buf = *buf
	mov rsi, [rbp + 24]

 setjmp$9:
	; £temporary811 -> rbp_pointer = *rbp_pointer
	mov rdi, [rbp + 32]

 setjmp$10:
	; £temporary810 -> buf = £temporary811 -> rbp_pointer
	mov rax, [rdi + 16]
	mov [rsi + 16], rax

 setjmp$11:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp$12:
	; function end setjmp

section .text

 longjmp:
	; ebx = return_value
	mov ebx, [rbp + 32]

 longjmp$1:
	; £temporary814 -> buf = *buf
	mov rsi, [rbp + 24]

 longjmp$2:
	; rcx = £temporary814 -> buf
	mov rcx, [rsi]

 longjmp$3:
	; £temporary816 -> buf = *buf
	mov rsi, [rbp + 24]

 longjmp$4:
	; rdi = £temporary816 -> buf
	mov rdi, [rsi + 16]

 longjmp$5:
	; £temporary818 -> buf = *buf
	mov rsi, [rbp + 24]

 longjmp$6:
	; rbp = £temporary818 -> buf
	mov rbp, [rsi + 8]

 longjmp$7:
	; jump to 
	jmp rcx

 longjmp$8:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 longjmp$9:
	; function end longjmp
