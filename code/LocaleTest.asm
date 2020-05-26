	global locale_test

section .text

locale_test:	; empty

locale_test$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

locale_test$2:	; function end locale_test
section .data

$IntegralStorage#:
	times 8 db 0
