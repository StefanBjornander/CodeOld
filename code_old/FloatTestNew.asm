	global float_test

section .text

float_test:	; empty

float_test$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

float_test$2:	; function end float_test
section .data

$IntegralStorage#:
	times 8 db 0
