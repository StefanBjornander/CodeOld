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

 @6964$main:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6964$main$1:
	; Parameter 64 pointer "Please input a value: "
	mov qword [rbp + 64], string_Please20input20a20value3A20#

 @6964$main$2:
	; Call 40 printf 0
	mov qword [rbp + 40], @6964$main$3
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 @6964$main$3:
	; PostCall 40

 @6964$main$4:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6964$main$5:
	; Parameter 64 pointer "%lf"
	mov qword [rbp + 64], string_25lf#

 @6964$main$6:
	; Address £temporary3717 x
	mov rsi, rbp
	add rsi, 32

 @6964$main$7:
	; Parameter 72 pointer £temporary3717
	mov [rbp + 72], rsi

 @6964$main$8:
	; Call 40 scanf 8
	mov qword [rbp + 40], @6964$main$9
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 @6964$main$9:
	; PostCall 40

 @6964$main$10:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6964$main$11:
	; Parameter 64 pointer buffer
	mov qword [rbp + 64], buffer

 @6964$main$12:
	; Call 40 setjmp 0
	mov qword [rbp + 40], @6964$main$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp setjmp

 @6964$main$13:
	; PostCall 40

 @6964$main$14:
	; GetReturnValue £temporary3719

 @6964$main$15:
	; IntegralToIntegral £temporary3720 £temporary3719
	mov rax, 4294967295
	and rbx, rax

 @6964$main$16:
	; Assign message £temporary3720
	mov [rbp + 24], rbx

 @6964$main$17:
	; NotEqual 32 message 0
	cmp qword [rbp + 24], 0
	jne @6964$main$32

 @6964$main$18:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6964$main$19:
	; Parameter 64 pointer "1.0 / %f = %f\n"
	mov qword [rbp + 64], string_12E0202F2025f203D2025f0A#

 @6964$main$20:
	; PushFloat x
	fld qword [rbp + 32]

 @6964$main$21:
	; Parameter 72 double x
	fstp qword [rbp + 72]

 @6964$main$22:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6964$main$23:
	; PushFloat x
	fld qword [rbp + 32]

 @6964$main$24:
	; Parameter 104 double x
	fstp qword [rbp + 104]

 @6964$main$25:
	; Call 80 inverse 0
	mov qword [rbp + 80], @6964$main$26
	mov [rbp + 88], rbp
	add rbp, 80
	jmp inverse

 @6964$main$26:
	; PostCall 80

 @6964$main$27:
	; GetReturnValue £temporary3722

 @6964$main$28:
	; Parameter 80 double £temporary3722
	fstp qword [rbp + 80]

 @6964$main$29:
	; Call 40 printf 16
	mov qword [rbp + 40], @6964$main$30
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 @6964$main$30:
	; PostCall 40

 @6964$main$31:
	; Goto 37
	jmp @6964$main$37

 @6964$main$32:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @6964$main$33:
	; Parameter 64 pointer "%s\n"
	mov qword [rbp + 64], string_25s0A#

 @6964$main$34:
	; Parameter 72 pointer message
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 @6964$main$35:
	; Call 40 printf 8
	mov qword [rbp + 40], @6964$main$36
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 @6964$main$36:
	; PostCall 40

 @6964$main$37:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @6964$main$38:
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
	; GetReturnValue £temporary3729

 inverse$8:
	; SetReturnValue

 inverse$9:
	; Return £temporary3729
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 inverse$10:
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
	; Equal 8 y 0
	fcompp
	fstsw ax
	sahf
	je divide$8

 divide$3:
	; PushFloat x
	fld qword [rbp + 24]

 divide$4:
	; PushFloat y
	fld qword [rbp + 32]

 divide$5:
	; SignedDivide £temporary3733 x y
	fdiv

 divide$6:
	; SetReturnValue

 divide$7:
	; Return £temporary3733
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$8:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 divide$9:
	; Parameter 64 pointer buffer
	mov qword [rbp + 64], buffer

 divide$10:
	; IntegralToIntegral £temporary3734 "Division by Zero."
	mov eax, string_Division20by20Zero2E#

 divide$11:
	; Parameter 72 signedint £temporary3734
	mov [rbp + 72], eax

 divide$12:
	; Call 40 longjmp 0
	mov qword [rbp + 40], divide$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp longjmp

 divide$13:
	; PostCall 40

 divide$14:
	; PushFloat 0
	fldz

 divide$15:
	; SetReturnValue

 divide$16:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$17:
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
