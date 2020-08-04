	global stack_test
	global heap_test

	extern printf
	extern malloc
section .text

stack_test:	; empty

stack_test$1:	; call header integral zero 0 stack zero 0

stack_test$2:	; parameter string_25i20#, offset 48
	mov qword [rbp + 48], string_25i20#

stack_test$3:	; £temporary3847 = i
	mov eax, [@8835$i]

stack_test$4:	; i = i + int4$1#
	inc dword [@8835$i]

stack_test$5:	; parameter £temporary3847, offset 56
	mov [rbp + 56], eax

stack_test$6:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 24], stack_test$7
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

stack_test$7:	; post call

stack_test$8:	; call header integral zero 0 stack zero 0

stack_test$9:	; call function noellipse-noellipse stack_test
	mov qword [rbp + 24], stack_test$10
	mov [rbp + 32], rbp
	add rbp, 24
	jmp stack_test

stack_test$10:	; post call

stack_test$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

stack_test$12:	; function end stack_test

heap_test:	; count = int4$0#
	mov dword [rbp + 24], 0

heap_test$1:	; call header integral zero 0 stack zero 0

heap_test$2:	; parameter int4$1024#, offset 60
	mov dword [rbp + 60], 1024

heap_test$3:	; call function noellipse-noellipse malloc
	mov qword [rbp + 36], heap_test$4
	mov [rbp + 44], rbp
	add rbp, 36
	jmp malloc

heap_test$4:	; post call

heap_test$5:	; £temporary3850 = return_value

heap_test$6:	; pointer = £temporary3850
	mov [rbp + 28], rbx

heap_test$7:	; if pointer == int8$0# goto 17
	cmp qword [rbp + 28], 0
	je heap_test$17

heap_test$8:	; call header integral zero 0 stack zero 0

heap_test$9:	; parameter string_102420bytes2Dblock20number3A2025i0A#, offset 60
	mov qword [rbp + 60], string_102420bytes2Dblock20number3A2025i0A#

heap_test$10:	; £temporary3852 = count
	mov eax, [rbp + 24]

heap_test$11:	; count = count + int4$1#
	inc dword [rbp + 24]

heap_test$12:	; parameter £temporary3852, offset 68
	mov [rbp + 68], eax

heap_test$13:	; parameter pointer, offset 72
	mov rax, [rbp + 28]
	mov [rbp + 72], rax

heap_test$14:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 36], heap_test$15
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

heap_test$15:	; post call

heap_test$16:	; goto 1
	jmp heap_test$1

heap_test$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

heap_test$18:	; function end heap_test
section .data

$IntegralStorage#:
	times 8 db 0

@8835$i:
	; initializer Signed_Int
	dd 0

string_25i20#:
	; initializer String
	db "%i ", 0

string_102420bytes2Dblock20number3A2025i0A#:
	; initializer String
	db "1024 bytes-block number: %i", 10, 0
