	global buffer
	global divide
	global invers
	global setjmp_test

	extern printf
	extern longjmp
	extern setjmp
section .text

divide:	; push float y
	fld qword [rbp + 32]

divide$1:	; push float float8$0#
	fldz 

divide$2:	; if y == float8$0# goto 8
	fcompp 
	fstsw ax
	sahf 
	je divide$8

divide$3:	; push float x
	fld qword [rbp + 24]

divide$4:	; push float y
	fld qword [rbp + 32]

divide$5:	; £temporary3164 = x / y
	fdiv 

divide$6:	; return_value = £temporary3164

divide$7:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

divide$8:	; p = string_Division20by20Zero2E#
	mov qword [rbp + 40], string_Division20by20Zero2E#

divide$9:	; call header integral zero 0 stack zero 0

divide$10:	; parameter string_longjmp203C25s3E203C25u3E0A#, offset 72
	mov qword [rbp + 72], string_longjmp203C25s3E203C25u3E0A#

divide$11:	; parameter p, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

divide$12:	; parameter p, offset 88
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

divide$13:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 48], divide$14
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

divide$14:	; post call

divide$15:	; call header integral zero 0 stack zero 0

divide$16:	; parameter buffer, offset 72
	mov qword [rbp + 72], buffer

divide$17:	; £temporary3166 = int_to_int p (Pointer -> Signed_Int)
	mov rax, [rbp + 40]

divide$18:	; parameter £temporary3166, offset 80
	mov [rbp + 80], eax

divide$19:	; call function noellipse-noellipse longjmp
	mov qword [rbp + 48], divide$20
	mov [rbp + 56], rbp
	add rbp, 48
	jmp longjmp

divide$20:	; post call

divide$21:	; push float float8$0#
	fldz 

divide$22:	; return_value = float8$0#

divide$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

divide$24:	; function end divide

invers:	; call header integral zero 0 stack zero 0

invers$1:	; push float float8$1.0#
	fld1 

invers$2:	; parameter float8$1.0#, offset 56
	fstp qword [rbp + 56]

invers$3:	; push float x
	fld qword [rbp + 24]

invers$4:	; parameter x, offset 64
	fstp qword [rbp + 64]

invers$5:	; call function noellipse-noellipse divide
	mov qword [rbp + 32], invers$6
	mov [rbp + 40], rbp
	add rbp, 32
	jmp divide

invers$6:	; post call

invers$7:	; £temporary3168 = return_value

invers$8:	; return_value = £temporary3168

invers$9:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

invers$10:	; function end invers

setjmp_test:	; empty

setjmp_test$1:	; call header integral zero 0 stack zero 0

setjmp_test$2:	; parameter buffer, offset 64
	mov qword [rbp + 64], buffer

setjmp_test$3:	; call function noellipse-noellipse setjmp
	mov qword [rbp + 40], setjmp_test$4
	mov [rbp + 48], rbp
	add rbp, 40
	jmp setjmp

setjmp_test$4:	; post call

setjmp_test$5:	; £temporary3171 = return_value

setjmp_test$6:	; £temporary3172 = int_to_int £temporary3171 (Signed_Int -> Pointer)
	mov rax, 4294967295
	and rbx, rax

setjmp_test$7:	; p = £temporary3172
	mov [rbp + 32], rbx

setjmp_test$8:	; if p != int8$0# goto 23
	cmp qword [rbp + 32], 0
	jne setjmp_test$23

setjmp_test$9:	; call header integral zero 0 stack zero 0

setjmp_test$10:	; parameter string_12E0202F2025f203D2025f0A#, offset 64
	mov qword [rbp + 64], string_12E0202F2025f203D2025f0A#

setjmp_test$11:	; push float x
	fld qword [rbp + 24]

setjmp_test$12:	; parameter x, offset 72
	fstp qword [rbp + 72]

setjmp_test$13:	; call header integral zero 0 stack zero 0

setjmp_test$14:	; push float x
	fld qword [rbp + 24]

setjmp_test$15:	; parameter x, offset 104
	fstp qword [rbp + 104]

setjmp_test$16:	; call function noellipse-noellipse invers
	mov qword [rbp + 80], setjmp_test$17
	mov [rbp + 88], rbp
	add rbp, 80
	jmp invers

setjmp_test$17:	; post call

setjmp_test$18:	; £temporary3174 = return_value

setjmp_test$19:	; parameter £temporary3174, offset 80
	fstp qword [rbp + 80]

setjmp_test$20:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 40], setjmp_test$21
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

setjmp_test$21:	; post call

setjmp_test$22:	; goto 29
	jmp setjmp_test$29

setjmp_test$23:	; call header integral zero 0 stack zero 0

setjmp_test$24:	; parameter string_p203D203C25s3E203C25u3E0A#, offset 64
	mov qword [rbp + 64], string_p203D203C25s3E203C25u3E0A#

setjmp_test$25:	; parameter p, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

setjmp_test$26:	; parameter p, offset 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

setjmp_test$27:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 40], setjmp_test$28
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

setjmp_test$28:	; post call

setjmp_test$29:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

setjmp_test$30:	; function end setjmp_test
section .data

$IntegralStorage#:
	times 8 db 0

buffer:
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
