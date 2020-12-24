	global buffer
	global inverse
	global divide
	global test
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

@10732$string_Please20input20a20value3A20#:
	; Initializer String Please input a value: 
	db "Please input a value: ", 0

section .data

@10733$string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

@10736$string_12E0202F2025f203D2025f0A#:
	; Initializer String 1.0 / %f = %f\n
	db "1.0 / %f = %f", 10, 0

section .data

@10737$string_25s0A#:
	; Initializer String %s\n
	db "%s", 10, 0

section .text

 @10729$main:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @10729$main$1:
	; Parameter 64 pointer "Please input a value: "
	mov qword [rbp + 64], @10732$string_Please20input20a20value3A20#

 @10729$main$2:
	; Call 40 printf 0
	mov qword [rbp + 40], @10729$main$3
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 @10729$main$3:
	; PostCall 40

 @10729$main$4:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @10729$main$5:
	; Parameter 64 pointer "%lf"
	mov qword [rbp + 64], @10733$string_25lf#

 @10729$main$6:
	; Address £temporary3617 x
	mov rsi, rbp
	add rsi, 32

 @10729$main$7:
	; Parameter 72 pointer £temporary3617
	mov [rbp + 72], rsi

 @10729$main$8:
	; Call 40 scanf 8
	mov qword [rbp + 40], @10729$main$9
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 @10729$main$9:
	; PostCall 40

 @10729$main$10:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @10729$main$11:
	; Parameter 64 pointer buffer
	mov qword [rbp + 64], buffer

 @10729$main$12:
	; Call 40 setjmp 0
	mov qword [rbp + 40], @10729$main$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp setjmp

 @10729$main$13:
	; PostCall 40

 @10729$main$14:
	; GetReturnValue £temporary3619

 @10729$main$15:
	; IntegralToIntegral £temporary3620 £temporary3619
	mov rax, 4294967295
	and rbx, rax

 @10729$main$16:
	; Assign message £temporary3620
	mov [rbp + 24], rbx

 @10729$main$17:
	; NotEqual 32 message 0
	cmp qword [rbp + 24], 0
	jne @10729$main$32

 @10729$main$18:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @10729$main$19:
	; Parameter 64 pointer "1.0 / %f = %f\n"
	mov qword [rbp + 64], @10736$string_12E0202F2025f203D2025f0A#

 @10729$main$20:
	; PushFloat x
	fld qword [rbp + 32]

 @10729$main$21:
	; Parameter 72 double x
	fstp qword [rbp + 72]

 @10729$main$22:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @10729$main$23:
	; PushFloat x
	fld qword [rbp + 32]

 @10729$main$24:
	; Parameter 104 double x
	fstp qword [rbp + 104]

 @10729$main$25:
	; Call 80 inverse 0
	mov qword [rbp + 80], @10729$main$26
	mov [rbp + 88], rbp
	add rbp, 80
	jmp inverse

 @10729$main$26:
	; PostCall 80

 @10729$main$27:
	; GetReturnValue £temporary3622

 @10729$main$28:
	; Parameter 80 double £temporary3622
	fstp qword [rbp + 80]

 @10729$main$29:
	; Call 40 printf 16
	mov qword [rbp + 40], @10729$main$30
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 @10729$main$30:
	; PostCall 40

 @10729$main$31:
	; Jump 37
	jmp @10729$main$37

 @10729$main$32:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @10729$main$33:
	; Parameter 64 pointer "%s\n"
	mov qword [rbp + 64], @10737$string_25s0A#

 @10729$main$34:
	; Parameter 72 pointer message
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 @10729$main$35:
	; Call 40 printf 8
	mov qword [rbp + 40], @10729$main$36
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 @10729$main$36:
	; PostCall 40

 @10729$main$37:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @10729$main$38:
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
	; GetReturnValue £temporary3629

 inverse$8:
	; SetReturnValue

 inverse$9:
	; Return £temporary3629
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 inverse$10:
	; FunctionEnd inverse

section .data

@10752$string_Division20by20Zero2E#:
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
	; SignedDivide £temporary3633 x y
	fdiv

 divide$6:
	; SetReturnValue

 divide$7:
	; Return £temporary3633
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
	; Parameter 72 signedint "Division by Zero."
	mov qword [rbp + 72], @10752$string_Division20by20Zero2E#

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
	; SetReturnValue

 divide$15:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$16:
	; FunctionEnd divide

section .data

@10761$string_12E0202F2025f203D2025f0A#:
	; Initializer String 1.0 / %f = %f\n
	db "1.0 / %f = %f", 10, 0

section .data

@10762$string_25s0A#:
	; Initializer String %s\n
	db "%s", 10, 0

section .text

 test:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$1:
	; Parameter 64 pointer buffer
	mov qword [rbp + 64], buffer

 test$2:
	; Call 40 setjmp 0
	mov qword [rbp + 40], test$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp setjmp

 test$3:
	; PostCall 40

 test$4:
	; GetReturnValue £temporary3635

 test$5:
	; IntegralToIntegral £temporary3636 £temporary3635
	mov rax, 4294967295
	and rbx, rax

 test$6:
	; Assign message £temporary3636
	mov [rbp + 32], rbx

 test$7:
	; NotEqual 22 message 0
	cmp qword [rbp + 32], 0
	jne test$22

 test$8:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$9:
	; Parameter 64 pointer "1.0 / %f = %f\n"
	mov qword [rbp + 64], @10761$string_12E0202F2025f203D2025f0A#

 test$10:
	; PushFloat x
	fld qword [rbp + 24]

 test$11:
	; Parameter 72 double x
	fstp qword [rbp + 72]

 test$12:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$13:
	; PushFloat x
	fld qword [rbp + 24]

 test$14:
	; Parameter 104 double x
	fstp qword [rbp + 104]

 test$15:
	; Call 80 inverse 0
	mov qword [rbp + 80], test$16
	mov [rbp + 88], rbp
	add rbp, 80
	jmp inverse

 test$16:
	; PostCall 80

 test$17:
	; GetReturnValue £temporary3638

 test$18:
	; Parameter 80 double £temporary3638
	fstp qword [rbp + 80]

 test$19:
	; Call 40 printf 16
	mov qword [rbp + 40], test$20
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 test$20:
	; PostCall 40

 test$21:
	; Jump 27
	jmp test$27

 test$22:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$23:
	; Parameter 64 pointer "%s\n"
	mov qword [rbp + 64], @10762$string_25s0A#

 test$24:
	; Parameter 72 pointer message
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 test$25:
	; Call 40 printf 8
	mov qword [rbp + 40], test$26
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 test$26:
	; PostCall 40

 test$27:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 test$28:
	; FunctionEnd test

section .data

@10769$float8$10#:
	; Initializer Double 10
	dq 10.0

section .data

@10773$float8$0.1#:
	; Initializer Double 0.1
	dq 0.1

section .text

 setjmp_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$1:
	; PushFloat 10
	fld qword [@10769$float8$10#]

 setjmp_test$2:
	; Parameter 48 double 10
	fstp qword [rbp + 48]

 setjmp_test$3:
	; Call 24 test 0
	mov qword [rbp + 24], setjmp_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp test

 setjmp_test$4:
	; PostCall 24

 setjmp_test$5:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$6:
	; PushFloat 0
	fldz

 setjmp_test$7:
	; Parameter 48 double 0
	fstp qword [rbp + 48]

 setjmp_test$8:
	; Call 24 test 0
	mov qword [rbp + 24], setjmp_test$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp test

 setjmp_test$9:
	; PostCall 24

 setjmp_test$10:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$11:
	; PushFloat 0.1
	fld qword [@10773$float8$0.1#]

 setjmp_test$12:
	; Parameter 48 double 0.1
	fstp qword [rbp + 48]

 setjmp_test$13:
	; Call 24 test 0
	mov qword [rbp + 24], setjmp_test$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp test

 setjmp_test$14:
	; PostCall 24

 setjmp_test$15:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp_test$16:
	; FunctionEnd setjmp_test
