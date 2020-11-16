	global buffer
	global inverse
	global divide
	global setjmp_test

	extern printf
	extern scanf
	extern setjmp
	extern longjmp
	extern $StackTop


section .data

buffer:
	; InitializerZero 24
	times 24 db 0

section .data

string_Please20input20a20value3A20#:
	; Initializer String Please input a value: 
	db "Please input a value: ", 0

section .data

string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

string_12E0202F2025f203D2025f0A#:
	; Initializer String 1.0 / %f = %f\n
	db "1.0 / %f = %f", 10, 0

section .data

string_25s0A#:
	; Initializer String %s\n
	db "%s", 10, 0

section .text

 @6945$main:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6945$main$1:
	; Parameter 64 pointer "Please input a value: "
	mov qword [rbp + 64], string_Please20input20a20value3A20#

 @6945$main$2:
	; Call 40 printf 0
	mov qword [rbp + 40], @6945$main$3
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 @6945$main$3:
	; PostCall 40

 @6945$main$4:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6945$main$5:
	; Parameter 64 pointer "%lf"
	mov qword [rbp + 64], string_25lf#

 @6945$main$6:
	; Address £temporary3649 x
	mov rsi, rbp
	add rsi, 32

 @6945$main$7:
	; Parameter 72 pointer £temporary3649
	mov [rbp + 72], rsi

 @6945$main$8:
	; Call 40 scanf 8
	mov qword [rbp + 40], @6945$main$9
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 @6945$main$9:
	; PostCall 40

 @6945$main$10:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6945$main$11:
	; Parameter 64 pointer buffer
	mov qword [rbp + 64], buffer

 @6945$main$12:
	; Call 40 setjmp 0
	mov qword [rbp + 40], @6945$main$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp setjmp

 @6945$main$13:
	; PostCall 40

 @6945$main$14:
	; GetReturnValue £temporary3651

 @6945$main$15:
	; IntegralToIntegral £temporary3652 £temporary3651
	mov rax, 4294967295
	and rbx, rax

 @6945$main$16:
	; Assign message £temporary3652
	mov [rbp + 24], rbx

 @6945$main$17:
	; NotEqual 32 message 0
	cmp qword [rbp + 24], 0
	jne @6945$main$32

 @6945$main$18:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6945$main$19:
	; Parameter 64 pointer "1.0 / %f = %f\n"
	mov qword [rbp + 64], string_12E0202F2025f203D2025f0A#

 @6945$main$20:
	; PushFloat x
	fld qword [rbp + 32]

 @6945$main$21:
	; Parameter 72 double x
	fstp qword [rbp + 72]

 @6945$main$22:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6945$main$23:
	; PushFloat x
	fld qword [rbp + 32]

 @6945$main$24:
	; Parameter 104 double x
	fstp qword [rbp + 104]

 @6945$main$25:
	; Call 80 inverse 0
	mov qword [rbp + 80], @6945$main$26
	mov [rbp + 88], rbp
	add rbp, 80
	jmp inverse

 @6945$main$26:
	; PostCall 80

 @6945$main$27:
	; GetReturnValue £temporary3654

 @6945$main$28:
	; Parameter 80 double £temporary3654
	fstp qword [rbp + 80]

 @6945$main$29:
	; Call 40 printf 16
	mov qword [rbp + 40], @6945$main$30
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 @6945$main$30:
	; PostCall 40

 @6945$main$31:
	; Goto 37
	jmp @6945$main$37

 @6945$main$32:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6945$main$33:
	; Parameter 64 pointer "%s\n"
	mov qword [rbp + 64], string_25s0A#

 @6945$main$34:
	; Parameter 72 pointer message
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 @6945$main$35:
	; Call 40 printf 8
	mov qword [rbp + 40], @6945$main$36
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 @6945$main$36:
	; PostCall 40

 @6945$main$37:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @6945$main$38:
	; FunctionEnd main

section .text

 inverse:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 inverse$1:
	; PushFloat 1
	fld1

 inverse$2:
	; Parameter 56 double 1
	fstp qword [rbp + 56]

 inverse$3:
	; PushFloat x
	fld qword [rbp + 24]

 inverse$4:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 inverse$5:
	; Call 32 divide 0
	mov qword [rbp + 32], inverse$6
	mov [rbp + 40], rbp
	add rbp, 32
	jmp divide

 inverse$6:
	; PostCall 32

 inverse$7:
	; GetReturnValue £temporary3661

 inverse$8:
	; Return £temporary3661
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 inverse$9:
	; FunctionEnd inverse

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
	; SignedDivide £temporary3665 x y
	fdiv

 divide$6:
	; Return £temporary3665
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 divide$8:
	; Parameter 64 pointer buffer
	mov qword [rbp + 64], buffer

 divide$9:
	; IntegralToIntegral £temporary3666 "Division by Zero."
	mov eax, string_Division20by20Zero2E#

 divide$10:
	; Parameter 72 signedint £temporary3666
	mov [rbp + 72], eax

 divide$11:
	; Call 40 longjmp 0
	mov qword [rbp + 40], divide$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp longjmp

 divide$12:
	; PostCall 40

 divide$13:
	; PushFloat 0
	fldz

 divide$14:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$15:
	; FunctionEnd divide

section .text

 setjmp_test:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp_test$1:
	; FunctionEnd setjmp_test
