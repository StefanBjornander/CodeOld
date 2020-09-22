	global signal
	global raise

	extern printf
	extern $StackTop
section .text

 signal:
	; empty

 signal$1:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 signal$2:
	; function end signal

 raise:
	; func = int8$0#
	mov qword [rbp + 28], 0

 raise$1:
	; if func != int8$0# goto 7
	cmp qword [rbp + 28], 0
	jne raise$7

 raise$2:
	; call header integral zero 0 stack zero 0

 raise$3:
	; parameter string_Raise20default0A#, offset 60
	mov qword [rbp + 60], string_Raise20default0A#

 raise$4:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 36], raise$5
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

 raise$5:
	; post call

 raise$6:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 raise$7:
	; if func != int8$0# goto 13
	cmp qword [rbp + 28], 0
	jne raise$13

 raise$8:
	; call header integral zero 0 stack zero 0

 raise$9:
	; parameter string_Raise20error0A#, offset 60
	mov qword [rbp + 60], string_Raise20error0A#

 raise$10:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 36], raise$11
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

 raise$11:
	; post call

 raise$12:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 raise$13:
	; call header integral zero 0 stack zero 0

 raise$14:
	; parameter string_Raise20function2C20calling2025i20with2025i0A#, offset 60
	mov qword [rbp + 60], string_Raise20function2C20calling2025i20with2025i0A#

 raise$15:
	; parameter func, offset 68
	mov rax, [rbp + 28]
	mov [rbp + 68], rax

 raise$16:
	; parameter sig, offset 76
	mov eax, [rbp + 24]
	mov [rbp + 76], eax

 raise$17:
	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 36], raise$18
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

 raise$18:
	; post call

 raise$19:
	; call header integral zero 0 stack zero 0

 raise$20:
	; parameter sig, offset 60
	mov eax, [rbp + 24]
	mov [rbp + 60], eax

 raise$21:
	; call function noellipse-noellipse func
	mov qword [rbp + 36], raise$22
	mov [rbp + 44], rbp
	add rbp, 36
	mov rax, [rbp + 28]
	jmp rax

 raise$22:
	; post call

 raise$23:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 raise$24:
	; function end raise
section .data

string_Raise20default0A#:
	; initializer String
	db "Raise default", 10, 0

string_Raise20error0A#:
	; initializer String
	db "Raise error", 10, 0

string_Raise20function2C20calling2025i20with2025i0A#:
	; initializer String
	db "Raise function, calling %i with %i", 10, 0
