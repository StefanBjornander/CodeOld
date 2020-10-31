	global buffer
	global divide
	global invers
	global setjmp_test

	extern longjmp
	extern setjmp
	extern printf
	extern $StackTop


section .data

buffer:
	; InitializerZero 24
	times 24 db 0

section .data

string_Division20by20Zero2E#:
	; Initializer String Division by Zero.
	db "Division by Zero.", 0

section .text

 divide:
	; PushFloat y
	fld qword [rbp + 32]

 divide$1:
	; PushFloat 0
	fldz

 divide$2:
	; Equal 7 y 0
	fcompp
	fstsw ax
	sahf
	je divide$7

 divide$3:
	; PushFloat x
	fld qword [rbp + 24]

 divide$4:
	; PushFloat y
	fld qword [rbp + 32]

 divide$5:
	; SignedDivide £temporary3066 x y
	fdiv

 divide$6:
	; Return £temporary3066
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$7:
	; Assign p "Division by Zero."
	mov qword [rbp + 40], string_Division20by20Zero2E#

 divide$8:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 divide$9:
	; Parameter pointer buffer 72
	mov qword [rbp + 72], buffer

 divide$10:
	; IntegralToIntegral £temporary3067 p
	mov rax, [rbp + 40]

 divide$11:
	; Parameter signedint £temporary3067 80
	mov [rbp + 80], eax

 divide$12:
	; Call longjmp 48 0
	mov qword [rbp + 48], divide$13
	mov [rbp + 56], rbp
	add rbp, 48
	jmp longjmp

 divide$13:
	; PostCall 48

 divide$14:
	; PushFloat 0
	fldz

 divide$15:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$16:
	; FunctionEnd divide

section .text

 invers:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 invers$1:
	; PushFloat 1.0
	fld1

 invers$2:
	; Parameter double 1.0 56
	fstp qword [rbp + 56]

 invers$3:
	; PushFloat x
	fld qword [rbp + 24]

 invers$4:
	; Parameter double x 64
	fstp qword [rbp + 64]

 invers$5:
	; Call divide 32 0
	mov qword [rbp + 32], invers$6
	mov [rbp + 40], rbp
	add rbp, 32
	jmp divide

 invers$6:
	; PostCall 32

 invers$7:
	; GetReturnValue £temporary3069

 invers$8:
	; Return £temporary3069
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 invers$9:
	; FunctionEnd invers

section .data

string_12E0202F2025f203D2025f0A#:
	; Initializer String 1.0 / %f = %f\n
	db "1.0 / %f = %f", 10, 0

section .data

string_p203D203C25s3E203C25u3E0A#:
	; Initializer String p = <%s> <%u>\n
	db "p = <%s> <%u>", 10, 0

section .text

 setjmp_test:
	; Empty

 setjmp_test$1:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$2:
	; Parameter pointer buffer 64
	mov qword [rbp + 64], buffer

 setjmp_test$3:
	; Call setjmp 40 0
	mov qword [rbp + 40], setjmp_test$4
	mov [rbp + 48], rbp
	add rbp, 40
	jmp setjmp

 setjmp_test$4:
	; PostCall 40

 setjmp_test$5:
	; GetReturnValue £temporary3072

 setjmp_test$6:
	; IntegralToIntegral £temporary3073 £temporary3072
	mov rax, 4294967295
	and rbx, rax

 setjmp_test$7:
	; Assign p £temporary3073
	mov [rbp + 32], rbx

 setjmp_test$8:
	; NotEqual 23 p 0
	cmp qword [rbp + 32], 0
	jne setjmp_test$23

 setjmp_test$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$10:
	; Parameter pointer "1.0 / %f = %f\n" 64
	mov qword [rbp + 64], string_12E0202F2025f203D2025f0A#

 setjmp_test$11:
	; PushFloat x
	fld qword [rbp + 24]

 setjmp_test$12:
	; Parameter double x 72
	fstp qword [rbp + 72]

 setjmp_test$13:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$14:
	; PushFloat x
	fld qword [rbp + 24]

 setjmp_test$15:
	; Parameter double x 104
	fstp qword [rbp + 104]

 setjmp_test$16:
	; Call invers 80 0
	mov qword [rbp + 80], setjmp_test$17
	mov [rbp + 88], rbp
	add rbp, 80
	jmp invers

 setjmp_test$17:
	; PostCall 80

 setjmp_test$18:
	; GetReturnValue £temporary3075

 setjmp_test$19:
	; Parameter double £temporary3075 80
	fstp qword [rbp + 80]

 setjmp_test$20:
	; Call printf 40 16
	mov qword [rbp + 40], setjmp_test$21
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 setjmp_test$21:
	; PostCall 40

 setjmp_test$22:
	; Goto 29
	jmp setjmp_test$29

 setjmp_test$23:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$24:
	; Parameter pointer "p = <%s> <%u>\n" 64
	mov qword [rbp + 64], string_p203D203C25s3E203C25u3E0A#

 setjmp_test$25:
	; Parameter pointer p 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 setjmp_test$26:
	; Parameter pointer p 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 setjmp_test$27:
	; Call printf 40 16
	mov qword [rbp + 40], setjmp_test$28
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 setjmp_test$28:
	; PostCall 40

 setjmp_test$29:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp_test$30:
	; FunctionEnd setjmp_test
