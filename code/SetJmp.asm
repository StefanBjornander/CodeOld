	global setjmp
	global longjmp

section .text

 setjmp:
	; £temporary769 = bp

 setjmp$1:
	; £temporary770 = int_to_int £temporary769 (Unsigned_Short_Int -> Pointer)
	mov rax, 65535
	and rbp, rax

 setjmp$2:
	; ebp_pointer = £temporary770
	mov [rbp + 32], rbp

 setjmp$3:
	; £field771 -> buf = *buf
	mov rsi, [rbp + 24]

 setjmp$4:
	; £field772 -> ebp_pointer = *ebp_pointer
	mov rdi, [rbp + 32]

 setjmp$5:
	; £field771 -> buf = £field772 -> ebp_pointer
	mov eax, [rdi]
	mov [rsi], eax

 setjmp$6:
	; £field773 -> buf = *buf
	mov rsi, [rbp + 24]

 setjmp$7:
	; £field774 -> ebp_pointer = *ebp_pointer
	mov rdi, [rbp + 32]

 setjmp$8:
	; £field773 -> buf = £field774 -> ebp_pointer
	mov eax, [rdi + 4]
	mov [rsi + 4], eax

 setjmp$9:
	; £field775 -> buf = *buf
	mov rsi, [rbp + 24]

 setjmp$10:
	; £field776 -> ebp_pointer = *ebp_pointer
	mov rdi, [rbp + 32]

 setjmp$11:
	; £field775 -> buf = £field776 -> ebp_pointer
	mov eax, [rdi + 8]
	mov [rsi + 8], eax

 setjmp$12:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp$13:
	; function end setjmp

 longjmp:
	; empty

 longjmp$1:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 longjmp$2:
	; function end longjmp
section .data
