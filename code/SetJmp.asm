	global setjmp
	global longjmp

section .text

setjmp:	; £temporary765 = bp

setjmp$1:	; £temporary766 = int_to_int £temporary765 (Unsigned_Short_Int -> Pointer)
	mov rax, 65535
	and rbp, rax

setjmp$2:	; ebp_pointer = £temporary766
	mov [rbp + 32], rbp

setjmp$3:	; £field767 -> buf = *buf
	mov rsi, [rbp + 24]

setjmp$4:	; £field768 -> ebp_pointer = *ebp_pointer
	mov rdi, [rbp + 32]

setjmp$5:	; £field767 -> buf = £field768 -> ebp_pointer
	mov eax, [rdi]
	mov [rsi], eax

setjmp$6:	; £field769 -> buf = *buf
	mov rsi, [rbp + 24]

setjmp$7:	; £field770 -> ebp_pointer = *ebp_pointer
	mov rdi, [rbp + 32]

setjmp$8:	; £field769 -> buf = £field770 -> ebp_pointer
	mov eax, [rdi + 4]
	mov [rsi + 4], eax

setjmp$9:	; £field771 -> buf = *buf
	mov rsi, [rbp + 24]

setjmp$10:	; £field772 -> ebp_pointer = *ebp_pointer
	mov rdi, [rbp + 32]

setjmp$11:	; £field771 -> buf = £field772 -> ebp_pointer
	mov eax, [rdi + 8]
	mov [rsi + 8], eax

setjmp$12:	; return_value = int4$0#
	mov ebx, 0

setjmp$13:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

setjmp$14:	; function end setjmp

longjmp:	; empty

longjmp$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

longjmp$2:	; function end longjmp
section .data

$IntegralStorage#:
	times 8 db 0
