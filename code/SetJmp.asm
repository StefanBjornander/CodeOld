	global setjmp
	global longjmp

	extern $StackTop
section .text

 setjmp:
	; £temporary778 = rbp

 setjmp$1:
	; rbp_pointer = £temporary778
	mov [rbp + 32], rbp

 setjmp$2:
	; £field779 -> buf = *buf
	mov rsi, [rbp + 24]

 setjmp$3:
	; £field780 -> rbp_pointer = *rbp_pointer
	mov rdi, [rbp + 32]

 setjmp$4:
	; £field779 -> buf = £field780 -> rbp_pointer
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; £field781 -> buf = *buf
	mov rsi, [rbp + 24]

 setjmp$6:
	; £field782 -> rbp_pointer = *rbp_pointer
	mov rdi, [rbp + 32]

 setjmp$7:
	; £field781 -> buf = £field782 -> rbp_pointer
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; £field783 -> buf = *buf
	mov rsi, [rbp + 24]

 setjmp$9:
	; £field784 -> rbp_pointer = *rbp_pointer
	mov rdi, [rbp + 32]

 setjmp$10:
	; £field783 -> buf = £field784 -> rbp_pointer
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

 longjmp:
	; ebx = return_value
	mov ebx, [rbp + 32]

 longjmp$1:
	; £field787 -> buf = *buf
	mov rsi, [rbp + 24]

 longjmp$2:
	; rcx = £field787 -> buf
	mov rcx, [rsi]

 longjmp$3:
	; £field789 -> buf = *buf
	mov rsi, [rbp + 24]

 longjmp$4:
	; rdi = £field789 -> buf
	mov rdi, [rsi + 16]

 longjmp$5:
	; £field791 -> buf = *buf
	mov rsi, [rbp + 24]

 longjmp$6:
	; rbp = £field791 -> buf
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
section .data
