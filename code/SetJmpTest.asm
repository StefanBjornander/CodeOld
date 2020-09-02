	global buffer
	global divide
	global invers
	global setjmp_test

	extern printf
	extern longjmp
	extern setjmp
section .text

 divide:
	; push float y
	fld qword [rbp + 32]

 divide$1:
	; push float float8$0#
	fldz

 divide$2:
	; if y == float8$0# goto 7
	fcompp
	fstsw ax
	sahf
	je divide$7

 divide$3:
	; push float x
	fld qword [rbp + 24]

 divide$4:
	; push float y
	fld qword [rbp + 32]

 divide$5:
	; £temporary3168 = x / y
	fdiv

 divide$6:
	; return £temporary3168
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$7:
	; p = string_Division20by20Zero2E#
	mov qword [rbp + 40], string_Division20by20Zero2E#

 divide$8:
	; call header integral zero 0 stack zero 0

 divide$9:
	; parameter string_longjmp203C25s3E203C25u3E0A#, offset 72
	mov qword [rbp + 72], string_longjmp203C25s3E203C25u3E0A#

 divide$10:
	; parameter p, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 divide$11:
	; parameter p, offset 88
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

 divide$12:
	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 48], divide$13
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

 divide$13:
	; post call

 divide$14:
	; call header integral zero 0 stack zero 0

 divide$15:
	; parameter buffer, offset 72
	mov qword [rbp + 72], buffer

 divide$16:
	; £temporary3170 = int_to_int p (Pointer -> Signed_Int)
	mov rax, [rbp + 40]

 divide$17:
	; parameter £temporary3170, offset 80
	mov [rbp + 80], eax

 divide$18:
	; call function noellipse-noellipse longjmp
	mov qword [rbp + 48], divide$19
	mov [rbp + 56], rbp
	add rbp, 48
	jmp longjmp

 divide$19:
	; post call

 divide$20:
	; push float float8$0#
	fldz

 divide$21:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$22:
	; function end divide

 invers:
	; call header integral zero 0 stack zero 0

 invers$1:
	; push float float8$1.0#
	fld1

 invers$2:
	; parameter float8$1.0#, offset 56
	fstp qword [rbp + 56]

 invers$3:
	; push float x
	fld qword [rbp + 24]

 invers$4:
	; parameter x, offset 64
	fstp qword [rbp + 64]

 invers$5:
	; call function noellipse-noellipse divide
	mov qword [rbp + 32], invers$6
	mov [rbp + 40], rbp
	add rbp, 32
	jmp divide

 invers$6:
	; post call

 invers$7:
	; £temporary3172 = return_value

 invers$8:
	; return £temporary3172
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 invers$9:
	; function end invers

 setjmp_test:
	; empty

 setjmp_test$1:
	; call header integral zero 0 stack zero 0

 setjmp_test$2:
	; parameter buffer, offset 64
	mov qword [rbp + 64], buffer

 setjmp_test$3:
	; call function noellipse-noellipse setjmp
	mov qword [rbp + 40], setjmp_test$4
	mov [rbp + 48], rbp
	add rbp, 40
	jmp setjmp

 setjmp_test$4:
	; post call

 setjmp_test$5:
	; £temporary3175 = return_value

 setjmp_test$6:
	; £temporary3176 = int_to_int £temporary3175 (Signed_Int -> Pointer)
	mov rax, 4294967295
	and rbx, rax

 setjmp_test$7:
	; p = £temporary3176
	mov [rbp + 32], rbx

 setjmp_test$8:
	; if p != int8$0# goto 23
	cmp qword [rbp + 32], 0
	jne setjmp_test$23

 setjmp_test$9:
	; call header integral zero 0 stack zero 0

 setjmp_test$10:
	; parameter string_12E0202F2025f203D2025f0A#, offset 64
	mov qword [rbp + 64], string_12E0202F2025f203D2025f0A#

 setjmp_test$11:
	; push float x
	fld qword [rbp + 24]

 setjmp_test$12:
	; parameter x, offset 72
	fstp qword [rbp + 72]

 setjmp_test$13:
	; call header integral zero 0 stack zero 0

 setjmp_test$14:
	; push float x
	fld qword [rbp + 24]

 setjmp_test$15:
	; parameter x, offset 104
	fstp qword [rbp + 104]

 setjmp_test$16:
	; call function noellipse-noellipse invers
	mov qword [rbp + 80], setjmp_test$17
	mov [rbp + 88], rbp
	add rbp, 80
	jmp invers

 setjmp_test$17:
	; post call

 setjmp_test$18:
	; £temporary3178 = return_value

 setjmp_test$19:
	; parameter £temporary3178, offset 80
	fstp qword [rbp + 80]

 setjmp_test$20:
	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 40], setjmp_test$21
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 setjmp_test$21:
	; post call

 setjmp_test$22:
	; goto 29
	jmp setjmp_test$29

 setjmp_test$23:
	; call header integral zero 0 stack zero 0

 setjmp_test$24:
	; parameter string_p203D203C25s3E203C25u3E0A#, offset 64
	mov qword [rbp + 64], string_p203D203C25s3E203C25u3E0A#

 setjmp_test$25:
	; parameter p, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 setjmp_test$26:
	; parameter p, offset 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 setjmp_test$27:
	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 40], setjmp_test$28
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 setjmp_test$28:
	; post call

 setjmp_test$29:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp_test$30:
	; function end setjmp_test
section .data

buffer:
	; initializer zero 12
	times 12 db 0

string_Division20by20Zero2E#:
	; initializer String
	db "Division by Zero.", 0

string_longjmp203C25s3E203C25u3E0A#:
	; initializer String
	db "longjmp <%s> <%u>", 10, 0

string_12E0202F2025f203D2025f0A#:
	; initializer String
	db "1.0 / %f = %f", 10, 0

string_p203D203C25s3E203C25u3E0A#:
	; initializer String
	db "p = <%s> <%u>", 10, 0
