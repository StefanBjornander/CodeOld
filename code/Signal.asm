	global signal
	global raise

	extern printf
section .text

signal:	; empty

signal$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

signal$2:	; function end signal

raise:	; func = int8$0#
	mov rax, 0
	mov [rbp + 28], rax

raise$1:	; if func != int8$0# goto 8
	cmp qword [rbp + 28], 0
	jne raise$8

raise$2:	; call header integral zero 0 stack zero 0

raise$3:	; parameter string_Raise20default0A#, offset 60
	mov qword [rbp + 60], string_Raise20default0A#

raise$4:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 36], raise$5
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

raise$5:	; post call

raise$6:	; return_value = int4$1#
	mov ebx, 1

raise$7:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

raise$8:	; if func != int8$0# goto 15
	cmp qword [rbp + 28], 0
	jne raise$15

raise$9:	; call header integral zero 0 stack zero 0

raise$10:	; parameter string_Raise20error0A#, offset 60
	mov qword [rbp + 60], string_Raise20error0A#

raise$11:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 36], raise$12
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

raise$12:	; post call

raise$13:	; return_value = int4$0#
	mov ebx, 0

raise$14:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

raise$15:	; call header integral zero 0 stack zero 0

raise$16:	; parameter string_Raise20function2C20calling2025i20with2025i0A#, offset 60
	mov qword [rbp + 60], string_Raise20function2C20calling2025i20with2025i0A#

raise$17:	; parameter func, offset 68
	mov rax, [rbp + 28]
	mov [rbp + 68], rax

raise$18:	; parameter sig, offset 76
	mov eax, [rbp + 24]
	mov [rbp + 76], eax

raise$19:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 36], raise$20
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

raise$20:	; post call

raise$21:	; call header integral zero 0 stack zero 0

raise$22:	; parameter sig, offset 60
	mov eax, [rbp + 24]
	mov [rbp + 60], eax

raise$23:	; call function noellipse-noellipse func
	mov qword [rbp + 36], raise$24
	mov [rbp + 44], rbp
	add rbp, 36
	mov rax, [rbp + 28]
	jmp rax

raise$24:	; post call

raise$25:	; return_value = int4$1#
	mov ebx, 1

raise$26:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

raise$27:	; function end raise
section .data

$IntegralStorage#:
	times 8 db 0

string_Raise20default0A#:
	; initializer String
	db "Raise default", 10, 0

string_Raise20error0A#:
	; initializer String
	db "Raise error", 10, 0

string_Raise20function2C20calling2025i20with2025i0A#:
	; initializer String
	db "Raise function, calling %i with %i", 10, 0
