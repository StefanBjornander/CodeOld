	global exp
	global log
	global log10
	global log10_int
	global pow_int
	global pow
	global ldexp
	global frexp
	global sin
	global cos
	global tan
	global sinh
	global cosh
	global tanh
	global sqrt
	global asin
	global acos
	global asin2
	global acos2
	global square
	global atan
	global atanY
	global atanX
	global atan2
	global atan2x
	global floor
	global ceil
	global round
	global fabs
	global modf
	global fmod

	extern errno
	extern printf
	extern $StackTop


section .data

float8$0.000000001#:
	; Initializer Double 0.000000001
	dq 0.000000001

section .text

 exp:
	; PushFloat 0
	fldz

 exp$1:
	; PopFloat n
	fstp qword [rbp + 32]

 exp$2:
	; PushFloat 1
	fld1

 exp$3:
	; PopFloat faculty
	fstp qword [rbp + 40]

 exp$4:
	; PushFloat 1
	fld1

 exp$5:
	; PopFloat power
	fstp qword [rbp + 48]

 exp$6:
	; PushFloat 0
	fldz

 exp$7:
	; PopFloat sum
	fstp qword [rbp + 64]

 exp$8:
	; PushFloat power
	fld qword [rbp + 48]

 exp$9:
	; PushFloat faculty
	fld qword [rbp + 40]

 exp$10:
	; SignedDivide £temporary397 power faculty
	fdiv

 exp$11:
	; PopFloat term
	fstp qword [rbp + 56]

 exp$12:
	; PushFloat sum
	fld qword [rbp + 64]

 exp$13:
	; PushFloat term
	fld qword [rbp + 56]

 exp$14:
	; BinaryAdd £temporary398 sum term
	fadd

 exp$15:
	; PopFloat sum
	fstp qword [rbp + 64]

 exp$16:
	; PushFloat power
	fld qword [rbp + 48]

 exp$17:
	; PushFloat x
	fld qword [rbp + 24]

 exp$18:
	; SignedMultiply £temporary399 power x
	fmul

 exp$19:
	; PopFloat power
	fstp qword [rbp + 48]

 exp$20:
	; PushFloat faculty
	fld qword [rbp + 40]

 exp$21:
	; PushFloat n
	fld qword [rbp + 32]

 exp$22:
	; PushOne
	fld1

 exp$23:
	; BinaryAdd n n 1
	fadd

 exp$24:
	; TopFloat n
	fst qword [rbp + 32]

 exp$25:
	; SignedMultiply £temporary401 faculty £temporary400
	fmul

 exp$26:
	; PopFloat faculty
	fstp qword [rbp + 40]

 exp$27:
	; CheckTrackMapFloatStack

 exp$28:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exp$29:
	; PushFloat term
	fld qword [rbp + 56]

 exp$30:
	; Parameter double term 96
	fstp qword [rbp + 96]

 exp$31:
	; Call fabs 72 0
	mov qword [rbp + 72], exp$32
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

 exp$32:
	; PostCall 72

 exp$33:
	; GetReturnValue £temporary402

 exp$34:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 exp$35:
	; SignedGreaterThanEqual 8 £temporary402 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe exp$8

 exp$36:
	; PushFloat sum
	fld qword [rbp + 64]

 exp$37:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exp$38:
	; FunctionEnd exp

section .data

float8$0.3678794411714423216036827922#:
	; Initializer Double 0.3678794411714423216036827922
	dq 0.3678794411714423216036827922

section .data

float8$2.7182818284590452353#:
	; Initializer Double 2.7182818284590452353
	dq 2.7182818284590452353

section .data

float8$0.7357588823428846432073655843#:
	; Initializer Double 0.7357588823428846432073655843
	dq 0.7357588823428846432073655843

section .data

float8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .text

 log:
	; PushFloat x_plus_1
	fld qword [rbp + 24]

 log$1:
	; PushFloat 0
	fldz

 log$2:
	; SignedLessThanEqual 70 x_plus_1 0
	fcompp
	fstsw ax
	sahf
	jae log$70

 log$3:
	; Assign expo 0
	mov dword [rbp + 32], 0

 log$4:
	; PushFloat x_plus_1
	fld qword [rbp + 24]

 log$5:
	; PushFloat 0.3678794411714423216036827922
	fld qword [float8$0.3678794411714423216036827922#]

 log$6:
	; SignedGreaterThanEqual 13 x_plus_1 0.3678794411714423216036827922
	fcompp
	fstsw ax
	sahf
	jbe log$13

 log$7:
	; PushFloat x_plus_1
	fld qword [rbp + 24]

 log$8:
	; PushFloat 2.7182818284590452353
	fld qword [float8$2.7182818284590452353#]

 log$9:
	; SignedMultiply £temporary407 x_plus_1 2.7182818284590452353
	fmul

 log$10:
	; PopFloat x_plus_1
	fstp qword [rbp + 24]

 log$11:
	; BinarySubtract expo expo 1
	dec dword [rbp + 32]

 log$12:
	; Goto 4
	jmp log$4

 log$13:
	; PushFloat x_plus_1
	fld qword [rbp + 24]

 log$14:
	; PushFloat 0.7357588823428846432073655843
	fld qword [float8$0.7357588823428846432073655843#]

 log$15:
	; SignedLessThanEqual 22 x_plus_1 0.7357588823428846432073655843
	fcompp
	fstsw ax
	sahf
	jae log$22

 log$16:
	; PushFloat x_plus_1
	fld qword [rbp + 24]

 log$17:
	; PushFloat 2.7182818284590452353
	fld qword [float8$2.7182818284590452353#]

 log$18:
	; SignedDivide £temporary410 x_plus_1 2.7182818284590452353
	fdiv

 log$19:
	; PopFloat x_plus_1
	fstp qword [rbp + 24]

 log$20:
	; BinaryAdd expo expo 1
	inc dword [rbp + 32]

 log$21:
	; Goto 13
	jmp log$13

 log$22:
	; PushFloat 1
	fld1

 log$23:
	; PopFloat n
	fstp qword [rbp + 36]

 log$24:
	; PushFloat 1
	fld1

 log$25:
	; PopFloat plusMinusOne
	fstp qword [rbp + 44]

 log$26:
	; PushFloat x_plus_1
	fld qword [rbp + 24]

 log$27:
	; PushFloat 1
	fld1

 log$28:
	; BinarySubtract £temporary412 x_plus_1 1
	fsub

 log$29:
	; PopFloat x
	fstp qword [rbp + 52]

 log$30:
	; PushFloat 0
	fldz

 log$31:
	; PopFloat sum
	fstp qword [rbp + 68]

 log$32:
	; PushFloat x
	fld qword [rbp + 52]

 log$33:
	; PopFloat power
	fstp qword [rbp + 76]

 log$34:
	; PushFloat plusMinusOne
	fld qword [rbp + 44]

 log$35:
	; PushFloat power
	fld qword [rbp + 76]

 log$36:
	; PushFloat n
	fld qword [rbp + 36]

 log$37:
	; PushOne
	fld1

 log$38:
	; BinaryAdd n n 1
	fadd

 log$39:
	; TopFloat n
	fst qword [rbp + 36]

 log$40:
	; PushOne
	fld1

 log$41:
	; BinarySubtract n n 1
	fsub

 log$42:
	; SignedDivide £temporary414 power £temporary413
	fdiv

 log$43:
	; SignedMultiply £temporary415 plusMinusOne £temporary414
	fmul

 log$44:
	; PopFloat term
	fstp qword [rbp + 60]

 log$45:
	; PushFloat sum
	fld qword [rbp + 68]

 log$46:
	; PushFloat term
	fld qword [rbp + 60]

 log$47:
	; BinaryAdd £temporary416 sum term
	fadd

 log$48:
	; PopFloat sum
	fstp qword [rbp + 68]

 log$49:
	; PushFloat power
	fld qword [rbp + 76]

 log$50:
	; PushFloat x
	fld qword [rbp + 52]

 log$51:
	; SignedMultiply £temporary417 power x
	fmul

 log$52:
	; PopFloat power
	fstp qword [rbp + 76]

 log$53:
	; PushFloat plusMinusOne
	fld qword [rbp + 44]

 log$54:
	; PushFloat -1.0
	fld qword [float8$minus1.0#]

 log$55:
	; SignedMultiply £temporary418 plusMinusOne -1.0
	fmul

 log$56:
	; PopFloat plusMinusOne
	fstp qword [rbp + 44]

 log$57:
	; CheckTrackMapFloatStack

 log$58:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 log$59:
	; PushFloat term
	fld qword [rbp + 60]

 log$60:
	; Parameter double term 108
	fstp qword [rbp + 108]

 log$61:
	; Call fabs 84 0
	mov qword [rbp + 84], log$62
	mov [rbp + 92], rbp
	add rbp, 84
	jmp fabs

 log$62:
	; PostCall 84

 log$63:
	; GetReturnValue £temporary419

 log$64:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 log$65:
	; SignedGreaterThan 34 £temporary419 0.000000001
	fcompp
	fstsw ax
	sahf
	jb log$34

 log$66:
	; PushFloat sum
	fld qword [rbp + 68]

 log$67:
	; IntegralToFloating £temporary421 expo
	fild dword [rbp + 32]

 log$68:
	; BinaryAdd £temporary422 sum £temporary421
	fadd

 log$69:
	; Return £temporary422
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$70:
	; Assign errno 6
	mov dword [errno], 6

 log$71:
	; PushFloat 0
	fldz

 log$72:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$73:
	; FunctionEnd log

section .data

float8$0.4342944820#:
	; Initializer Double 0.4342944820
	dq 0.4342944820

section .text

 log10:
	; PushFloat 0.4342944820
	fld qword [float8$0.4342944820#]

 log10$1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 log10$2:
	; PushFloat x
	fld qword [rbp + 24]

 log10$3:
	; Parameter double x 56
	fstp qword [rbp + 64]

 log10$4:
	; Call log 32 0
	mov qword [rbp + 40], log10$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp log

 log10$5:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 log10$6:
	; GetReturnValue £temporary424

 log10$7:
	; SignedMultiply £temporary425 0.4342944820 £temporary424
	fmul

 log10$8:
	; Return £temporary425
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10$9:
	; FunctionEnd log10

section .data

float8$10#:
	; Initializer Double 10
	dq 10.0

section .text

 log10_int:
	; PushFloat x
	fld qword [rbp + 24]

 log10_int$1:
	; PushFloat 0
	fldz

 log10_int$2:
	; SignedLessThanEqual 34 x 0
	fcompp
	fstsw ax
	sahf
	jae log10_int$34

 log10_int$3:
	; PushFloat x
	fld qword [rbp + 24]

 log10_int$4:
	; PushFloat 1
	fld1

 log10_int$5:
	; NotEqual 7 x 1
	fcompp
	fstsw ax
	sahf
	jne log10_int$7

 log10_int$6:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10_int$7:
	; PushFloat x
	fld qword [rbp + 24]

 log10_int$8:
	; PushFloat 1
	fld1

 log10_int$9:
	; SignedLessThanEqual 22 x 1
	fcompp
	fstsw ax
	sahf
	jae log10_int$22

 log10_int$10:
	; Assign count 0
	mov dword [rbp + 32], 0

 log10_int$11:
	; PushFloat x
	fld qword [rbp + 24]

 log10_int$12:
	; PushFloat 1
	fld1

 log10_int$13:
	; SignedLessThanEqual 20 x 1
	fcompp
	fstsw ax
	sahf
	jae log10_int$20

 log10_int$14:
	; PushFloat x
	fld qword [rbp + 24]

 log10_int$15:
	; PushFloat 10
	fld qword [float8$10#]

 log10_int$16:
	; SignedDivide £temporary431 x 10
	fdiv

 log10_int$17:
	; PopFloat x
	fstp qword [rbp + 24]

 log10_int$18:
	; BinaryAdd count count 1
	inc dword [rbp + 32]

 log10_int$19:
	; Goto 11
	jmp log10_int$11

 log10_int$20:
	; BinarySubtract £temporary433 count 1
	mov ebx, [rbp + 32]
	dec ebx

 log10_int$21:
	; Return £temporary433
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10_int$22:
	; Assign count 0
	mov dword [rbp + 32], 0

 log10_int$23:
	; PushFloat x
	fld qword [rbp + 24]

 log10_int$24:
	; PushFloat 1
	fld1

 log10_int$25:
	; SignedGreaterThanEqual 32 x 1
	fcompp
	fstsw ax
	sahf
	jbe log10_int$32

 log10_int$26:
	; PushFloat x
	fld qword [rbp + 24]

 log10_int$27:
	; PushFloat 10
	fld qword [float8$10#]

 log10_int$28:
	; SignedMultiply £temporary435 x 10
	fmul

 log10_int$29:
	; PopFloat x
	fstp qword [rbp + 24]

 log10_int$30:
	; BinaryAdd count count 1
	inc dword [rbp + 32]

 log10_int$31:
	; Goto 23
	jmp log10_int$23

 log10_int$32:
	; UnarySubtract £temporary437 count
	mov ebx, [rbp + 32]
	neg ebx

 log10_int$33:
	; Return £temporary437
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10_int$34:
	; Assign errno 6
	mov dword [errno], 6

 log10_int$35:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10_int$36:
	; FunctionEnd log10_int

section .text

 pow_int:
	; Assign minus 0
	mov dword [rbp + 36], 0

 pow_int$1:
	; SignedGreaterThanEqual 5 y 0
	cmp dword [rbp + 32], 0
	jge pow_int$5

 pow_int$2:
	; UnarySubtract £temporary439 y
	mov eax, [rbp + 32]
	neg eax

 pow_int$3:
	; Assign y £temporary439
	mov [rbp + 32], eax

 pow_int$4:
	; Assign minus 1
	mov dword [rbp + 36], 1

 pow_int$5:
	; PushFloat 1
	fld1

 pow_int$6:
	; PopFloat product
	fstp qword [rbp + 40]

 pow_int$7:
	; Assign index 0
	mov dword [rbp + 48], 0

 pow_int$8:
	; SignedGreaterThanEqual 15 index y
	mov eax, [rbp + 32]
	cmp [rbp + 48], eax
	jge pow_int$15

 pow_int$9:
	; PushFloat product
	fld qword [rbp + 40]

 pow_int$10:
	; PushFloat x
	fld qword [rbp + 24]

 pow_int$11:
	; SignedMultiply £temporary442 product x
	fmul

 pow_int$12:
	; PopFloat product
	fstp qword [rbp + 40]

 pow_int$13:
	; BinaryAdd index index 1
	inc dword [rbp + 48]

 pow_int$14:
	; Goto 8
	jmp pow_int$8

 pow_int$15:
	; Equal 21 minus 0
	cmp dword [rbp + 36], 0
	je pow_int$21

 pow_int$16:
	; PushFloat 1
	fld1

 pow_int$17:
	; PushFloat product
	fld qword [rbp + 40]

 pow_int$18:
	; SignedDivide £temporary443 1 product
	fdiv

 pow_int$19:
	; DecreaseStack

 pow_int$20:
	; Goto 22
	jmp pow_int$22

 pow_int$21:
	; PushFloat product
	fld qword [rbp + 40]

 pow_int$22:
	; Return £temporary445
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow_int$23:
	; FunctionEnd pow_int

section .text

 pow:
	; PushFloat x
	fld qword [rbp + 24]

 pow$1:
	; PushFloat 0
	fldz

 pow$2:
	; SignedLessThanEqual 17 x 0
	fcompp
	fstsw ax
	sahf
	jae pow$17

 pow$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$4:
	; PushFloat y
	fld qword [rbp + 32]

 pow$5:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 pow$6:
	; PushFloat x
	fld qword [rbp + 24]

 pow$7:
	; Parameter double x 64
	fstp qword [rbp + 72]

 pow$8:
	; Call log 40 0
	mov qword [rbp + 48], pow$9
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

 pow$9:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 pow$10:
	; GetReturnValue £temporary447

 pow$11:
	; SignedMultiply £temporary448 y £temporary447
	fmul

 pow$12:
	; Parameter double £temporary448 64
	fstp qword [rbp + 64]

 pow$13:
	; Call exp 40 0
	mov qword [rbp + 40], pow$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

 pow$14:
	; PostCall 40

 pow$15:
	; GetReturnValue £temporary449

 pow$16:
	; Return £temporary449
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$17:
	; Assign errno 6
	mov dword [errno], 6

 pow$18:
	; PushFloat 0
	fldz

 pow$19:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$20:
	; FunctionEnd pow

section .data

float8$2#:
	; Initializer Double 2
	dq 2.0

section .text

 ldexp:
	; PushFloat x
	fld qword [rbp + 24]

 ldexp$1:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 36]

 ldexp$2:
	; PushFloat 2
	fld qword [float8$2#]

 ldexp$3:
	; Parameter double 2 60
	fstp qword [rbp + 68]

 ldexp$4:
	; IntegralToFloating £temporary452 n
	fild dword [rbp + 32]

 ldexp$5:
	; Parameter double £temporary452 68
	fstp qword [rbp + 76]

 ldexp$6:
	; Call pow 36 0
	mov qword [rbp + 44], ldexp$7
	mov [rbp + 52], rbp
	add rbp, 44
	jmp pow

 ldexp$7:
	; PostCall 36
	fstp qword [rbp + 44]
	fld qword [rbp + 36]
	fld qword [rbp + 44]

 ldexp$8:
	; GetReturnValue £temporary453

 ldexp$9:
	; SignedMultiply £temporary454 x £temporary453
	fmul

 ldexp$10:
	; Return £temporary454
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldexp$11:
	; FunctionEnd ldexp

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .text

 frexp:
	; Equal 55 p 0
	cmp qword [rbp + 32], 0
	je frexp$55

 frexp$1:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$2:
	; PushFloat 0
	fldz

 frexp$3:
	; NotEqual 8 x 0
	fcompp
	fstsw ax
	sahf
	jne frexp$8

 frexp$4:
	; Dereference £temporary459 -> p p 0
	mov rsi, [rbp + 32]

 frexp$5:
	; Assign £temporary459 -> p 0
	mov dword [rsi], 0

 frexp$6:
	; PushFloat 0
	fldz

 frexp$7:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$8:
	; Dereference £temporary460 -> p p 0
	mov rsi, [rbp + 32]

 frexp$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 40], rsi

 frexp$10:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 frexp$11:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$12:
	; Parameter double x 64
	fstp qword [rbp + 72]

 frexp$13:
	; Call fabs 40 0
	mov qword [rbp + 48], frexp$14
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 frexp$14:
	; PostCall 40

 frexp$15:
	; GetReturnValue £temporary461

 frexp$16:
	; Parameter double £temporary461 64
	fstp qword [rbp + 72]

 frexp$17:
	; Call log 40 0
	mov qword [rbp + 48], frexp$18
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

 frexp$18:
	; PostCall 40
	mov rsi, [rbp + 40]

 frexp$19:
	; GetReturnValue £temporary462

 frexp$20:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	mov [rbp + 40], rsi
	fstp qword [rbp + 48]

 frexp$21:
	; PushFloat 2
	fld qword [float8$2#]

 frexp$22:
	; Parameter double 2 64
	fstp qword [rbp + 80]

 frexp$23:
	; Call log 40 0
	mov qword [rbp + 56], frexp$24
	mov [rbp + 64], rbp
	add rbp, 56
	jmp log

 frexp$24:
	; PostCall 40
	mov rsi, [rbp + 40]
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 frexp$25:
	; GetReturnValue £temporary463

 frexp$26:
	; SignedDivide £temporary464 £temporary462 £temporary463
	fdiv

 frexp$27:
	; FloatingToIntegral £temporary465 £temporary464
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 frexp$28:
	; BinaryAdd £temporary460 -> p £temporary465 1
	inc eax
	mov [rsi], eax

 frexp$29:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 frexp$30:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$31:
	; Parameter double x 64
	fstp qword [rbp + 64]

 frexp$32:
	; Call fabs 40 0
	mov qword [rbp + 40], frexp$33
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

 frexp$33:
	; PostCall 40

 frexp$34:
	; GetReturnValue £temporary467

 frexp$35:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 frexp$36:
	; PushFloat 2
	fld qword [float8$2#]

 frexp$37:
	; Parameter double 2 64
	fstp qword [rbp + 72]

 frexp$38:
	; Dereference £temporary468 -> p p 0
	mov rsi, [rbp + 32]

 frexp$39:
	; IntegralToFloating £temporary469 £temporary468 -> p
	fild dword [rsi]

 frexp$40:
	; Parameter double £temporary469 72
	fstp qword [rbp + 80]

 frexp$41:
	; Call pow 40 0
	mov qword [rbp + 48], frexp$42
	mov [rbp + 56], rbp
	add rbp, 48
	jmp pow

 frexp$42:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 frexp$43:
	; GetReturnValue £temporary470

 frexp$44:
	; SignedDivide £temporary471 £temporary467 £temporary470
	fdiv

 frexp$45:
	; PopFloat quotient
	fstp qword [rbp + 40]

 frexp$46:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$47:
	; PushFloat 0
	fldz

 frexp$48:
	; SignedGreaterThanEqual 53 x 0
	fcompp
	fstsw ax
	sahf
	jbe frexp$53

 frexp$49:
	; PushFloat quotient
	fld qword [rbp + 40]

 frexp$50:
	; UnarySubtract £temporary473 quotient
	fchs

 frexp$51:
	; DecreaseStack

 frexp$52:
	; Goto 54
	jmp frexp$54

 frexp$53:
	; PushFloat quotient
	fld qword [rbp + 40]

 frexp$54:
	; Return £temporary474
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$55:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$56:
	; PushFloat 0
	fldz

 frexp$57:
	; NotEqual 60 x 0
	fcompp
	fstsw ax
	sahf
	jne frexp$60

 frexp$58:
	; PushFloat 0
	fldz

 frexp$59:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$60:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 frexp$61:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 frexp$62:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$63:
	; Parameter double x 64
	fstp qword [rbp + 64]

 frexp$64:
	; Call fabs 40 0
	mov qword [rbp + 40], frexp$65
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

 frexp$65:
	; PostCall 40

 frexp$66:
	; GetReturnValue £temporary476

 frexp$67:
	; Parameter double £temporary476 64
	fstp qword [rbp + 64]

 frexp$68:
	; Call log 40 0
	mov qword [rbp + 40], frexp$69
	mov [rbp + 48], rbp
	add rbp, 40
	jmp log

 frexp$69:
	; PostCall 40

 frexp$70:
	; GetReturnValue £temporary477

 frexp$71:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 frexp$72:
	; PushFloat 2
	fld qword [float8$2#]

 frexp$73:
	; Parameter double 2 64
	fstp qword [rbp + 72]

 frexp$74:
	; Call log 40 0
	mov qword [rbp + 48], frexp$75
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

 frexp$75:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 frexp$76:
	; GetReturnValue £temporary478

 frexp$77:
	; SignedDivide £temporary479 £temporary477 £temporary478
	fdiv

 frexp$78:
	; FloatingToIntegral £temporary480 £temporary479
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 frexp$79:
	; BinaryAdd n £temporary480 1
	inc eax
	mov [rbp + 40], eax

 frexp$80:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 frexp$81:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$82:
	; Parameter double x 68
	fstp qword [rbp + 68]

 frexp$83:
	; Call fabs 44 0
	mov qword [rbp + 44], frexp$84
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fabs

 frexp$84:
	; PostCall 44

 frexp$85:
	; GetReturnValue £temporary482

 frexp$86:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 44]

 frexp$87:
	; PushFloat 2
	fld qword [float8$2#]

 frexp$88:
	; Parameter double 2 68
	fstp qword [rbp + 76]

 frexp$89:
	; IntegralToFloating £temporary483 n
	fild dword [rbp + 40]

 frexp$90:
	; Parameter double £temporary483 76
	fstp qword [rbp + 84]

 frexp$91:
	; Call pow 44 0
	mov qword [rbp + 52], frexp$92
	mov [rbp + 60], rbp
	add rbp, 52
	jmp pow

 frexp$92:
	; PostCall 44
	fstp qword [rbp + 52]
	fld qword [rbp + 44]
	fld qword [rbp + 52]

 frexp$93:
	; GetReturnValue £temporary484

 frexp$94:
	; SignedDivide £temporary485 £temporary482 £temporary484
	fdiv

 frexp$95:
	; PopFloat a
	fstp qword [rbp + 44]

 frexp$96:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$97:
	; PushFloat 0
	fldz

 frexp$98:
	; SignedGreaterThanEqual 103 x 0
	fcompp
	fstsw ax
	sahf
	jbe frexp$103

 frexp$99:
	; PushFloat a
	fld qword [rbp + 44]

 frexp$100:
	; UnarySubtract £temporary487 a
	fchs

 frexp$101:
	; DecreaseStack

 frexp$102:
	; Goto 104
	jmp frexp$104

 frexp$103:
	; PushFloat a
	fld qword [rbp + 44]

 frexp$104:
	; Return £temporary488
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$105:
	; FunctionEnd frexp

section .data

float8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

float8$3#:
	; Initializer Double 3
	dq 3.0

section .text

 sin:
	; PushFloat 0
	fldz

 sin$1:
	; PopFloat n
	fstp qword [rbp + 32]

 sin$2:
	; PushFloat 1
	fld1

 sin$3:
	; PopFloat plusMinusOne
	fstp qword [rbp + 40]

 sin$4:
	; PushFloat 1
	fld1

 sin$5:
	; PopFloat faculty
	fstp qword [rbp + 48]

 sin$6:
	; PushFloat x
	fld qword [rbp + 24]

 sin$7:
	; PopFloat power
	fstp qword [rbp + 56]

 sin$8:
	; PushFloat 0
	fldz

 sin$9:
	; PopFloat sum
	fstp qword [rbp + 72]

 sin$10:
	; PushFloat plusMinusOne
	fld qword [rbp + 40]

 sin$11:
	; PushFloat power
	fld qword [rbp + 56]

 sin$12:
	; PushFloat faculty
	fld qword [rbp + 48]

 sin$13:
	; SignedDivide £temporary501 power faculty
	fdiv

 sin$14:
	; SignedMultiply £temporary502 plusMinusOne £temporary501
	fmul

 sin$15:
	; PopFloat term
	fstp qword [rbp + 64]

 sin$16:
	; PushFloat sum
	fld qword [rbp + 72]

 sin$17:
	; PushFloat term
	fld qword [rbp + 64]

 sin$18:
	; BinaryAdd £temporary503 sum term
	fadd

 sin$19:
	; PopFloat sum
	fstp qword [rbp + 72]

 sin$20:
	; PushFloat plusMinusOne
	fld qword [rbp + 40]

 sin$21:
	; PushFloat -1
	fld qword [float8$minus1#]

 sin$22:
	; SignedMultiply £temporary504 plusMinusOne -1
	fmul

 sin$23:
	; PopFloat plusMinusOne
	fstp qword [rbp + 40]

 sin$24:
	; PushFloat power
	fld qword [rbp + 56]

 sin$25:
	; PushFloat x
	fld qword [rbp + 24]

 sin$26:
	; PushFloat x
	fld qword [rbp + 24]

 sin$27:
	; SignedMultiply £temporary505 x x
	fmul

 sin$28:
	; SignedMultiply £temporary506 power £temporary505
	fmul

 sin$29:
	; PopFloat power
	fstp qword [rbp + 56]

 sin$30:
	; PushFloat faculty
	fld qword [rbp + 48]

 sin$31:
	; PushFloat n
	fld qword [rbp + 32]

 sin$32:
	; PushFloat 2
	fld qword [float8$2#]

 sin$33:
	; BinaryAdd £temporary507 n 2
	fadd

 sin$34:
	; PushFloat n
	fld qword [rbp + 32]

 sin$35:
	; PushFloat 3
	fld qword [float8$3#]

 sin$36:
	; BinaryAdd £temporary508 n 3
	fadd

 sin$37:
	; SignedMultiply £temporary509 £temporary507 £temporary508
	fmul

 sin$38:
	; SignedMultiply £temporary510 faculty £temporary509
	fmul

 sin$39:
	; PopFloat faculty
	fstp qword [rbp + 48]

 sin$40:
	; PushFloat n
	fld qword [rbp + 32]

 sin$41:
	; PushFloat 2
	fld qword [float8$2#]

 sin$42:
	; BinaryAdd £temporary511 n 2
	fadd

 sin$43:
	; PopFloat n
	fstp qword [rbp + 32]

 sin$44:
	; CheckTrackMapFloatStack

 sin$45:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sin$46:
	; PushFloat term
	fld qword [rbp + 64]

 sin$47:
	; Parameter double term 104
	fstp qword [rbp + 104]

 sin$48:
	; Call fabs 80 0
	mov qword [rbp + 80], sin$49
	mov [rbp + 88], rbp
	add rbp, 80
	jmp fabs

 sin$49:
	; PostCall 80

 sin$50:
	; GetReturnValue £temporary512

 sin$51:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 sin$52:
	; SignedGreaterThanEqual 10 £temporary512 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe sin$10

 sin$53:
	; PushFloat sum
	fld qword [rbp + 72]

 sin$54:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sin$55:
	; FunctionEnd sin

section .text

 cos:
	; PushFloat 0
	fldz

 cos$1:
	; PopFloat n
	fstp qword [rbp + 32]

 cos$2:
	; PushFloat 1
	fld1

 cos$3:
	; PopFloat plusMinusOne
	fstp qword [rbp + 40]

 cos$4:
	; PushFloat 1
	fld1

 cos$5:
	; PopFloat faculty
	fstp qword [rbp + 48]

 cos$6:
	; PushFloat 1
	fld1

 cos$7:
	; PopFloat power
	fstp qword [rbp + 56]

 cos$8:
	; PushFloat 0
	fldz

 cos$9:
	; PopFloat sum
	fstp qword [rbp + 72]

 cos$10:
	; PushFloat plusMinusOne
	fld qword [rbp + 40]

 cos$11:
	; PushFloat power
	fld qword [rbp + 56]

 cos$12:
	; PushFloat faculty
	fld qword [rbp + 48]

 cos$13:
	; SignedDivide £temporary515 power faculty
	fdiv

 cos$14:
	; SignedMultiply £temporary516 plusMinusOne £temporary515
	fmul

 cos$15:
	; PopFloat term
	fstp qword [rbp + 64]

 cos$16:
	; PushFloat sum
	fld qword [rbp + 72]

 cos$17:
	; PushFloat term
	fld qword [rbp + 64]

 cos$18:
	; BinaryAdd £temporary517 sum term
	fadd

 cos$19:
	; PopFloat sum
	fstp qword [rbp + 72]

 cos$20:
	; PushFloat plusMinusOne
	fld qword [rbp + 40]

 cos$21:
	; PushFloat -1
	fld qword [float8$minus1#]

 cos$22:
	; SignedMultiply £temporary518 plusMinusOne -1
	fmul

 cos$23:
	; PopFloat plusMinusOne
	fstp qword [rbp + 40]

 cos$24:
	; PushFloat power
	fld qword [rbp + 56]

 cos$25:
	; PushFloat x
	fld qword [rbp + 24]

 cos$26:
	; PushFloat x
	fld qword [rbp + 24]

 cos$27:
	; SignedMultiply £temporary519 x x
	fmul

 cos$28:
	; SignedMultiply £temporary520 power £temporary519
	fmul

 cos$29:
	; PopFloat power
	fstp qword [rbp + 56]

 cos$30:
	; PushFloat faculty
	fld qword [rbp + 48]

 cos$31:
	; PushFloat n
	fld qword [rbp + 32]

 cos$32:
	; PushFloat 1
	fld1

 cos$33:
	; BinaryAdd £temporary521 n 1
	fadd

 cos$34:
	; PushFloat n
	fld qword [rbp + 32]

 cos$35:
	; PushFloat 2
	fld qword [float8$2#]

 cos$36:
	; BinaryAdd £temporary522 n 2
	fadd

 cos$37:
	; SignedMultiply £temporary523 £temporary521 £temporary522
	fmul

 cos$38:
	; SignedMultiply £temporary524 faculty £temporary523
	fmul

 cos$39:
	; PopFloat faculty
	fstp qword [rbp + 48]

 cos$40:
	; PushFloat n
	fld qword [rbp + 32]

 cos$41:
	; PushFloat 2
	fld qword [float8$2#]

 cos$42:
	; BinaryAdd £temporary525 n 2
	fadd

 cos$43:
	; PopFloat n
	fstp qword [rbp + 32]

 cos$44:
	; CheckTrackMapFloatStack

 cos$45:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 cos$46:
	; PushFloat term
	fld qword [rbp + 64]

 cos$47:
	; Parameter double term 104
	fstp qword [rbp + 104]

 cos$48:
	; Call fabs 80 0
	mov qword [rbp + 80], cos$49
	mov [rbp + 88], rbp
	add rbp, 80
	jmp fabs

 cos$49:
	; PostCall 80

 cos$50:
	; GetReturnValue £temporary526

 cos$51:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 cos$52:
	; SignedGreaterThanEqual 10 £temporary526 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe cos$10

 cos$53:
	; PushFloat sum
	fld qword [rbp + 72]

 cos$54:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 cos$55:
	; FunctionEnd cos

section .text

 tan:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tan$1:
	; PushFloat x
	fld qword [rbp + 24]

 tan$2:
	; Parameter double x 56
	fstp qword [rbp + 56]

 tan$3:
	; Call cos 32 0
	mov qword [rbp + 32], tan$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp cos

 tan$4:
	; PostCall 32

 tan$5:
	; GetReturnValue £temporary529

 tan$6:
	; TopFloat cos_value
	fst qword [rbp + 32]

 tan$7:
	; PushFloat 0
	fldz

 tan$8:
	; Equal 18 cos_value 0
	fcompp
	fstsw ax
	sahf
	je tan$18

 tan$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tan$10:
	; PushFloat x
	fld qword [rbp + 24]

 tan$11:
	; Parameter double x 64
	fstp qword [rbp + 64]

 tan$12:
	; Call sin 40 0
	mov qword [rbp + 40], tan$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sin

 tan$13:
	; PostCall 40

 tan$14:
	; GetReturnValue £temporary531

 tan$15:
	; PushFloat cos_value
	fld qword [rbp + 32]

 tan$16:
	; SignedDivide £temporary532 £temporary531 cos_value
	fdiv

 tan$17:
	; Return £temporary532
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tan$18:
	; Assign errno 6
	mov dword [errno], 6

 tan$19:
	; PushFloat 0
	fldz

 tan$20:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tan$21:
	; FunctionEnd tan

section .text

 sinh:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sinh$1:
	; PushFloat x
	fld qword [rbp + 24]

 sinh$2:
	; Parameter double x 56
	fstp qword [rbp + 56]

 sinh$3:
	; Call exp 32 0
	mov qword [rbp + 32], sinh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp exp

 sinh$4:
	; PostCall 32

 sinh$5:
	; GetReturnValue £temporary535

 sinh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 sinh$7:
	; PushFloat x
	fld qword [rbp + 24]

 sinh$8:
	; UnarySubtract £temporary536 x
	fchs

 sinh$9:
	; Parameter double £temporary536 56
	fstp qword [rbp + 64]

 sinh$10:
	; Call exp 32 0
	mov qword [rbp + 40], sinh$11
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

 sinh$11:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 sinh$12:
	; GetReturnValue £temporary537

 sinh$13:
	; BinarySubtract £temporary538 £temporary535 £temporary537
	fsub

 sinh$14:
	; PushFloat 2
	fld qword [float8$2#]

 sinh$15:
	; SignedDivide £temporary539 £temporary538 2
	fdiv

 sinh$16:
	; Return £temporary539
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sinh$17:
	; FunctionEnd sinh

section .text

 cosh:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 cosh$1:
	; PushFloat x
	fld qword [rbp + 24]

 cosh$2:
	; Parameter double x 56
	fstp qword [rbp + 56]

 cosh$3:
	; Call exp 32 0
	mov qword [rbp + 32], cosh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp exp

 cosh$4:
	; PostCall 32

 cosh$5:
	; GetReturnValue £temporary542

 cosh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 cosh$7:
	; PushFloat x
	fld qword [rbp + 24]

 cosh$8:
	; UnarySubtract £temporary543 x
	fchs

 cosh$9:
	; Parameter double £temporary543 56
	fstp qword [rbp + 64]

 cosh$10:
	; Call exp 32 0
	mov qword [rbp + 40], cosh$11
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

 cosh$11:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 cosh$12:
	; GetReturnValue £temporary544

 cosh$13:
	; BinaryAdd £temporary545 £temporary542 £temporary544
	fadd

 cosh$14:
	; PushFloat 2
	fld qword [float8$2#]

 cosh$15:
	; SignedDivide £temporary546 £temporary545 2
	fdiv

 cosh$16:
	; Return £temporary546
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 cosh$17:
	; FunctionEnd cosh

section .text

 tanh:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tanh$1:
	; PushFloat x
	fld qword [rbp + 24]

 tanh$2:
	; Parameter double x 56
	fstp qword [rbp + 56]

 tanh$3:
	; Call cosh 32 0
	mov qword [rbp + 32], tanh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp cosh

 tanh$4:
	; PostCall 32

 tanh$5:
	; GetReturnValue £temporary549

 tanh$6:
	; TopFloat coh
	fst qword [rbp + 32]

 tanh$7:
	; PushFloat 0
	fldz

 tanh$8:
	; Equal 20 coh 0
	fcompp
	fstsw ax
	sahf
	je tanh$20

 tanh$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tanh$10:
	; PushFloat x
	fld qword [rbp + 24]

 tanh$11:
	; Parameter double x 64
	fstp qword [rbp + 64]

 tanh$12:
	; Call sinh 40 0
	mov qword [rbp + 40], tanh$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sinh

 tanh$13:
	; PostCall 40

 tanh$14:
	; GetReturnValue £temporary551

 tanh$15:
	; TopFloat sh
	fst qword [rbp + 40]

 tanh$16:
	; PushFloat coh
	fld qword [rbp + 32]

 tanh$17:
	; SignedDivide £temporary552 sh coh
	fdiv

 tanh$18:
	; TopFloat y
	fst qword [rbp + 48]

 tanh$19:
	; Return y
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tanh$20:
	; Assign errno 6
	mov dword [errno], 6

 tanh$21:
	; PushFloat 0
	fldz

 tanh$22:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tanh$23:
	; FunctionEnd tanh

section .text

 sqrt:
	; PushFloat v
	fld qword [rbp + 24]

 sqrt$1:
	; PushFloat 0
	fldz

 sqrt$2:
	; SignedLessThan 30 v 0
	fcompp
	fstsw ax
	sahf
	ja sqrt$30

 sqrt$3:
	; PushFloat 1
	fld1

 sqrt$4:
	; PopFloat x_nplus1
	fstp qword [rbp + 32]

 sqrt$5:
	; Assign count 0
	mov dword [rbp + 48], 0

 sqrt$6:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 sqrt$7:
	; TopFloat x
	fst qword [rbp + 40]

 sqrt$8:
	; PushFloat v
	fld qword [rbp + 24]

 sqrt$9:
	; PushFloat x
	fld qword [rbp + 40]

 sqrt$10:
	; SignedDivide £temporary556 v x
	fdiv

 sqrt$11:
	; BinaryAdd £temporary557 x £temporary556
	fadd

 sqrt$12:
	; PushFloat 2
	fld qword [float8$2#]

 sqrt$13:
	; SignedDivide £temporary558 £temporary557 2
	fdiv

 sqrt$14:
	; PopFloat x_nplus1
	fstp qword [rbp + 32]

 sqrt$15:
	; CheckTrackMapFloatStack

 sqrt$16:
	; BinaryAdd £temporary559 count 1
	mov eax, [rbp + 48]
	inc eax

 sqrt$17:
	; SignedGreaterThanEqual 28 £temporary559 1000
	cmp eax, 1000
	jge sqrt$28

 sqrt$18:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sqrt$19:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 sqrt$20:
	; PushFloat x
	fld qword [rbp + 40]

 sqrt$21:
	; BinarySubtract £temporary561 x_nplus1 x
	fsub

 sqrt$22:
	; Parameter double £temporary561 76
	fstp qword [rbp + 76]

 sqrt$23:
	; Call fabs 52 0
	mov qword [rbp + 52], sqrt$24
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fabs

 sqrt$24:
	; PostCall 52

 sqrt$25:
	; GetReturnValue £temporary562

 sqrt$26:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 sqrt$27:
	; SignedGreaterThanEqual 6 £temporary562 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe sqrt$6

 sqrt$28:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 sqrt$29:
	; Return x_nplus1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sqrt$30:
	; Assign errno 6
	mov dword [errno], 6

 sqrt$31:
	; PushFloat 0
	fldz

 sqrt$32:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sqrt$33:
	; FunctionEnd sqrt

section .text

 asin:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin$1:
	; PushFloat x
	fld qword [rbp + 24]

 asin$2:
	; Parameter double x 56
	fstp qword [rbp + 56]

 asin$3:
	; Call fabs 32 0
	mov qword [rbp + 32], asin$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 asin$4:
	; PostCall 32

 asin$5:
	; GetReturnValue £temporary566

 asin$6:
	; PushFloat 1
	fld1

 asin$7:
	; SignedGreaterThan 28 £temporary566 1
	fcompp
	fstsw ax
	sahf
	jb asin$28

 asin$8:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin$9:
	; PushFloat x
	fld qword [rbp + 24]

 asin$10:
	; Parameter double x 56
	fstp qword [rbp + 56]

 asin$11:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin$12:
	; PushFloat 1
	fld1

 asin$13:
	; PushFloat x
	fld qword [rbp + 24]

 asin$14:
	; BinaryAdd £temporary568 1 x
	fadd

 asin$15:
	; PushFloat 1
	fld1

 asin$16:
	; PushFloat x
	fld qword [rbp + 24]

 asin$17:
	; BinarySubtract £temporary569 1 x
	fsub

 asin$18:
	; SignedMultiply £temporary570 £temporary568 £temporary569
	fmul

 asin$19:
	; Parameter double £temporary570 88
	fstp qword [rbp + 88]

 asin$20:
	; Call sqrt 64 0
	mov qword [rbp + 64], asin$21
	mov [rbp + 72], rbp
	add rbp, 64
	jmp sqrt

 asin$21:
	; PostCall 64

 asin$22:
	; GetReturnValue £temporary571

 asin$23:
	; Parameter double £temporary571 64
	fstp qword [rbp + 64]

 asin$24:
	; Call atan2 32 0
	mov qword [rbp + 32], asin$25
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan2

 asin$25:
	; PostCall 32

 asin$26:
	; GetReturnValue £temporary572

 asin$27:
	; Return £temporary572
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$28:
	; Assign errno 6
	mov dword [errno], 6

 asin$29:
	; PushFloat 0
	fldz

 asin$30:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$31:
	; FunctionEnd asin

section .text

 acos:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos$1:
	; PushFloat x
	fld qword [rbp + 24]

 acos$2:
	; Parameter double x 56
	fstp qword [rbp + 56]

 acos$3:
	; Call fabs 32 0
	mov qword [rbp + 32], acos$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 acos$4:
	; PostCall 32

 acos$5:
	; GetReturnValue £temporary577

 acos$6:
	; PushFloat 1
	fld1

 acos$7:
	; SignedGreaterThan 28 £temporary577 1
	fcompp
	fstsw ax
	sahf
	jb acos$28

 acos$8:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos$9:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos$10:
	; PushFloat 1
	fld1

 acos$11:
	; PushFloat x
	fld qword [rbp + 24]

 acos$12:
	; BinaryAdd £temporary579 1 x
	fadd

 acos$13:
	; PushFloat 1
	fld1

 acos$14:
	; PushFloat x
	fld qword [rbp + 24]

 acos$15:
	; BinarySubtract £temporary580 1 x
	fsub

 acos$16:
	; SignedMultiply £temporary581 £temporary579 £temporary580
	fmul

 acos$17:
	; Parameter double £temporary581 56
	fstp qword [rbp + 56]

 acos$18:
	; Call sqrt 32 0
	mov qword [rbp + 32], acos$19
	mov [rbp + 40], rbp
	add rbp, 32
	jmp sqrt

 acos$19:
	; PostCall 32

 acos$20:
	; GetReturnValue £temporary582

 acos$21:
	; Parameter double £temporary582 56
	fstp qword [rbp + 56]

 acos$22:
	; PushFloat x
	fld qword [rbp + 24]

 acos$23:
	; Parameter double x 64
	fstp qword [rbp + 64]

 acos$24:
	; Call atan2 32 0
	mov qword [rbp + 32], acos$25
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan2

 acos$25:
	; PostCall 32

 acos$26:
	; GetReturnValue £temporary583

 acos$27:
	; Return £temporary583
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$28:
	; Assign errno 6
	mov dword [errno], 6

 acos$29:
	; PushFloat 0
	fldz

 acos$30:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$31:
	; FunctionEnd acos

section .data

float8$1.5707963267948966192#:
	; Initializer Double 1.5707963267948966192
	dq 1.5707963267948966192

section .data

float8$minus1.5707963267948966192#:
	; Initializer Double -1.5707963267948966192
	dq -1.5707963267948966192

section .text

 asin2:
	; PushFloat v
	fld qword [rbp + 24]

 asin2$1:
	; PushFloat 1
	fld1

 asin2$2:
	; NotEqual 5 v 1
	fcompp
	fstsw ax
	sahf
	jne asin2$5

 asin2$3:
	; PushFloat 1.5707963267948966192
	fld qword [float8$1.5707963267948966192#]

 asin2$4:
	; Return 1.5707963267948966192
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin2$5:
	; PushFloat v
	fld qword [rbp + 24]

 asin2$6:
	; PushFloat -1
	fld qword [float8$minus1#]

 asin2$7:
	; NotEqual 10 v -1
	fcompp
	fstsw ax
	sahf
	jne asin2$10

 asin2$8:
	; PushFloat -1.5707963267948966192
	fld qword [float8$minus1.5707963267948966192#]

 asin2$9:
	; Return -1.5707963267948966192
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin2$10:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin2$11:
	; PushFloat v
	fld qword [rbp + 24]

 asin2$12:
	; Parameter double v 56
	fstp qword [rbp + 56]

 asin2$13:
	; Call fabs 32 0
	mov qword [rbp + 32], asin2$14
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 asin2$14:
	; PostCall 32

 asin2$15:
	; GetReturnValue £temporary590

 asin2$16:
	; PushFloat 1
	fld1

 asin2$17:
	; SignedGreaterThanEqual 55 £temporary590 1
	fcompp
	fstsw ax
	sahf
	jbe asin2$55

 asin2$18:
	; PushFloat 1
	fld1

 asin2$19:
	; PopFloat x_nplus1
	fstp qword [rbp + 32]

 asin2$20:
	; Assign count 0
	mov dword [rbp + 48], 0

 asin2$21:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 asin2$22:
	; TopFloat x
	fst qword [rbp + 40]

 asin2$23:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 52]

 asin2$24:
	; PushFloat x
	fld qword [rbp + 40]

 asin2$25:
	; Parameter double x 76
	fstp qword [rbp + 84]

 asin2$26:
	; Call tan 52 0
	mov qword [rbp + 60], asin2$27
	mov [rbp + 68], rbp
	add rbp, 60
	jmp tan

 asin2$27:
	; PostCall 52
	fstp qword [rbp + 60]
	fld qword [rbp + 52]
	fld qword [rbp + 60]

 asin2$28:
	; GetReturnValue £temporary592

 asin2$29:
	; BinarySubtract £temporary593 x £temporary592
	fsub

 asin2$30:
	; PushFloat v
	fld qword [rbp + 24]

 asin2$31:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 2
	fstp qword [rbp + 52]
	fstp qword [rbp + 60]

 asin2$32:
	; PushFloat x
	fld qword [rbp + 40]

 asin2$33:
	; Parameter double x 76
	fstp qword [rbp + 92]

 asin2$34:
	; Call cos 52 0
	mov qword [rbp + 68], asin2$35
	mov [rbp + 76], rbp
	add rbp, 68
	jmp cos

 asin2$35:
	; PostCall 52
	fstp qword [rbp + 68]
	fld qword [rbp + 60]
	fld qword [rbp + 52]
	fld qword [rbp + 68]

 asin2$36:
	; GetReturnValue £temporary594

 asin2$37:
	; SignedDivide £temporary595 v £temporary594
	fdiv

 asin2$38:
	; BinaryAdd £temporary596 £temporary593 £temporary595
	fadd

 asin2$39:
	; PopFloat x_nplus1
	fstp qword [rbp + 32]

 asin2$40:
	; CheckTrackMapFloatStack

 asin2$41:
	; BinaryAdd £temporary597 count 1
	mov eax, [rbp + 48]
	inc eax

 asin2$42:
	; SignedGreaterThanEqual 53 £temporary597 1000
	cmp eax, 1000
	jge asin2$53

 asin2$43:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin2$44:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 asin2$45:
	; PushFloat x
	fld qword [rbp + 40]

 asin2$46:
	; BinarySubtract £temporary599 x_nplus1 x
	fsub

 asin2$47:
	; Parameter double £temporary599 76
	fstp qword [rbp + 76]

 asin2$48:
	; Call fabs 52 0
	mov qword [rbp + 52], asin2$49
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fabs

 asin2$49:
	; PostCall 52

 asin2$50:
	; GetReturnValue £temporary600

 asin2$51:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 asin2$52:
	; SignedGreaterThanEqual 21 £temporary600 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe asin2$21

 asin2$53:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 asin2$54:
	; Return x_nplus1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin2$55:
	; Assign errno 6
	mov dword [errno], 6

 asin2$56:
	; PushFloat 0
	fldz

 asin2$57:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin2$58:
	; FunctionEnd asin2

section .data

string_x_n2025f2C20x_nplus12025f0A#:
	; Initializer String x_n %f, x_nplus1 %f\n
	db "x_n %f, x_nplus1 %f", 10, 0

section .text

 acos2:
	; PushFloat v
	fld qword [rbp + 24]

 acos2$1:
	; PushFloat 1
	fld1

 acos2$2:
	; NotEqual 5 v 1
	fcompp
	fstsw ax
	sahf
	jne acos2$5

 acos2$3:
	; PushFloat 0
	fldz

 acos2$4:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos2$5:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos2$6:
	; PushFloat v
	fld qword [rbp + 24]

 acos2$7:
	; Parameter double v 56
	fstp qword [rbp + 56]

 acos2$8:
	; Call fabs 32 0
	mov qword [rbp + 32], acos2$9
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 acos2$9:
	; PostCall 32

 acos2$10:
	; GetReturnValue £temporary608

 acos2$11:
	; PushFloat 1
	fld1

 acos2$12:
	; SignedGreaterThan 54 £temporary608 1
	fcompp
	fstsw ax
	sahf
	jb acos2$54

 acos2$13:
	; PushFloat 1
	fld1

 acos2$14:
	; TopFloat x_nplus1
	fst qword [rbp + 32]

 acos2$15:
	; TopFloat x_n
	fst qword [rbp + 40]

 acos2$16:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 48]

 acos2$17:
	; PushFloat x_n
	fld qword [rbp + 40]

 acos2$18:
	; Parameter double x_n 72
	fstp qword [rbp + 80]

 acos2$19:
	; Call cos 48 0
	mov qword [rbp + 56], acos2$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp cos

 acos2$20:
	; PostCall 48
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 acos2$21:
	; GetReturnValue £temporary610

 acos2$22:
	; PushFloat v
	fld qword [rbp + 24]

 acos2$23:
	; BinarySubtract £temporary611 £temporary610 v
	fsub

 acos2$24:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

 acos2$25:
	; PushFloat x_n
	fld qword [rbp + 40]

 acos2$26:
	; Parameter double x_n 72
	fstp qword [rbp + 88]

 acos2$27:
	; Call sin 48 0
	mov qword [rbp + 64], acos2$28
	mov [rbp + 72], rbp
	add rbp, 64
	jmp sin

 acos2$28:
	; PostCall 48
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

 acos2$29:
	; GetReturnValue £temporary612

 acos2$30:
	; SignedDivide £temporary613 £temporary611 £temporary612
	fdiv

 acos2$31:
	; BinaryAdd £temporary614 x_n £temporary613
	fadd

 acos2$32:
	; PopFloat x_nplus1
	fstp qword [rbp + 32]

 acos2$33:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos2$34:
	; Parameter pointer "x_n %f, x_nplus1 %f\n" 72
	mov qword [rbp + 72], string_x_n2025f2C20x_nplus12025f0A#

 acos2$35:
	; PushFloat x_n
	fld qword [rbp + 40]

 acos2$36:
	; Parameter double x_n 80
	fstp qword [rbp + 80]

 acos2$37:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 acos2$38:
	; Parameter double x_nplus1 88
	fstp qword [rbp + 88]

 acos2$39:
	; Call printf 48 16
	mov qword [rbp + 48], acos2$40
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

 acos2$40:
	; PostCall 48

 acos2$41:
	; CheckTrackMapFloatStack

 acos2$42:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos2$43:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 acos2$44:
	; PushFloat x_n
	fld qword [rbp + 40]

 acos2$45:
	; BinarySubtract £temporary616 x_nplus1 x_n
	fsub

 acos2$46:
	; Parameter double £temporary616 72
	fstp qword [rbp + 72]

 acos2$47:
	; Call fabs 48 0
	mov qword [rbp + 48], acos2$48
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 acos2$48:
	; PostCall 48

 acos2$49:
	; GetReturnValue £temporary617

 acos2$50:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 acos2$51:
	; SignedGreaterThanEqual 15 £temporary617 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe acos2$15

 acos2$52:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 acos2$53:
	; Return x_nplus1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos2$54:
	; Assign errno 6
	mov dword [errno], 6

 acos2$55:
	; PushFloat 0
	fldz

 acos2$56:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos2$57:
	; FunctionEnd acos2

section .text

 square:
	; PushFloat x
	fld qword [rbp + 24]

 square$1:
	; PushFloat x
	fld qword [rbp + 24]

 square$2:
	; SignedMultiply £temporary625 x x
	fmul

 square$3:
	; Return £temporary625
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 square$4:
	; FunctionEnd square

section .data

float8$0.7853981633974483096#:
	; Initializer Double 0.7853981633974483096
	dq 0.7853981633974483096

section .data

float8$minus0.7853981633974483096#:
	; Initializer Double -0.7853981633974483096
	dq -0.7853981633974483096

section .text

 atan:
	; PushFloat x
	fld qword [rbp + 24]

 atan$1:
	; PushFloat 0
	fldz

 atan$2:
	; NotEqual 5 x 0
	fcompp
	fstsw ax
	sahf
	jne atan$5

 atan$3:
	; PushFloat 0
	fldz

 atan$4:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$5:
	; PushFloat x
	fld qword [rbp + 24]

 atan$6:
	; PushFloat 1
	fld1

 atan$7:
	; NotEqual 10 x 1
	fcompp
	fstsw ax
	sahf
	jne atan$10

 atan$8:
	; PushFloat 0.7853981633974483096
	fld qword [float8$0.7853981633974483096#]

 atan$9:
	; Return 0.7853981633974483096
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$10:
	; PushFloat x
	fld qword [rbp + 24]

 atan$11:
	; PushFloat -1
	fld qword [float8$minus1#]

 atan$12:
	; NotEqual 15 x -1
	fcompp
	fstsw ax
	sahf
	jne atan$15

 atan$13:
	; PushFloat -0.7853981633974483096
	fld qword [float8$minus0.7853981633974483096#]

 atan$14:
	; Return -0.7853981633974483096
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$15:
	; PushFloat 1
	fld1

 atan$16:
	; PopFloat sign
	fstp qword [rbp + 32]

 atan$17:
	; PushFloat 1
	fld1

 atan$18:
	; PopFloat denominator
	fstp qword [rbp + 40]

 atan$19:
	; PushFloat x
	fld qword [rbp + 24]

 atan$20:
	; PopFloat product
	fstp qword [rbp + 48]

 atan$21:
	; PushFloat 0
	fldz

 atan$22:
	; PopFloat sum
	fstp qword [rbp + 64]

 atan$23:
	; Assign count 0
	mov dword [rbp + 72], 0

 atan$24:
	; PushFloat sign
	fld qword [rbp + 32]

 atan$25:
	; PushFloat product
	fld qword [rbp + 48]

 atan$26:
	; SignedMultiply £temporary629 sign product
	fmul

 atan$27:
	; PushFloat denominator
	fld qword [rbp + 40]

 atan$28:
	; SignedDivide £temporary630 £temporary629 denominator
	fdiv

 atan$29:
	; PopFloat term
	fstp qword [rbp + 56]

 atan$30:
	; PushFloat sum
	fld qword [rbp + 64]

 atan$31:
	; PushFloat term
	fld qword [rbp + 56]

 atan$32:
	; BinaryAdd £temporary631 sum term
	fadd

 atan$33:
	; PopFloat sum
	fstp qword [rbp + 64]

 atan$34:
	; PushFloat sign
	fld qword [rbp + 32]

 atan$35:
	; UnarySubtract £temporary632 sign
	fchs

 atan$36:
	; PopFloat sign
	fstp qword [rbp + 32]

 atan$37:
	; PushFloat product
	fld qword [rbp + 48]

 atan$38:
	; PushFloat x
	fld qword [rbp + 24]

 atan$39:
	; PushFloat x
	fld qword [rbp + 24]

 atan$40:
	; SignedMultiply £temporary633 x x
	fmul

 atan$41:
	; SignedMultiply £temporary634 product £temporary633
	fmul

 atan$42:
	; PopFloat product
	fstp qword [rbp + 48]

 atan$43:
	; PushFloat denominator
	fld qword [rbp + 40]

 atan$44:
	; PushFloat 2
	fld qword [float8$2#]

 atan$45:
	; BinaryAdd £temporary635 denominator 2
	fadd

 atan$46:
	; PopFloat denominator
	fstp qword [rbp + 40]

 atan$47:
	; CheckTrackMapFloatStack

 atan$48:
	; BinaryAdd £temporary636 count 1
	mov eax, [rbp + 72]
	inc eax

 atan$49:
	; SignedGreaterThanEqual 58 £temporary636 1000
	cmp eax, 1000
	jge atan$58

 atan$50:
	; PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan$51:
	; PushFloat term
	fld qword [rbp + 56]

 atan$52:
	; Parameter double term 100
	fstp qword [rbp + 100]

 atan$53:
	; Call fabs 76 0
	mov qword [rbp + 76], atan$54
	mov [rbp + 84], rbp
	add rbp, 76
	jmp fabs

 atan$54:
	; PostCall 76

 atan$55:
	; GetReturnValue £temporary638

 atan$56:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 atan$57:
	; SignedGreaterThanEqual 24 £temporary638 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe atan$24

 atan$58:
	; PushFloat sum
	fld qword [rbp + 64]

 atan$59:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$60:
	; FunctionEnd atan

section .data

string_atan2050A#:
	; Initializer String atan 5\n
	db "atan 5", 10, 0

section .data

string_atan20x2025f20x_nplus12025f0A#:
	; Initializer String atan x %f x_nplus1 %f\n
	db "atan x %f x_nplus1 %f", 10, 0

section .data

string_atan2070A#:
	; Initializer String atan 7\n
	db "atan 7", 10, 0

section .data

float8$0.5#:
	; Initializer Double 0.5
	dq 0.5

section .text

 atanY:
	; PushFloat v
	fld qword [rbp + 24]

 atanY$1:
	; PushFloat 0
	fldz

 atanY$2:
	; NotEqual 5 v 0
	fcompp
	fstsw ax
	sahf
	jne atanY$5

 atanY$3:
	; PushFloat 0
	fldz

 atanY$4:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$5:
	; PushFloat v
	fld qword [rbp + 24]

 atanY$6:
	; PushFloat 1
	fld1

 atanY$7:
	; NotEqual 10 v 1
	fcompp
	fstsw ax
	sahf
	jne atanY$10

 atanY$8:
	; PushFloat 0.7853981633974483096
	fld qword [float8$0.7853981633974483096#]

 atanY$9:
	; Return 0.7853981633974483096
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$10:
	; PushFloat v
	fld qword [rbp + 24]

 atanY$11:
	; PushFloat -1
	fld qword [float8$minus1#]

 atanY$12:
	; NotEqual 15 v -1
	fcompp
	fstsw ax
	sahf
	jne atanY$15

 atanY$13:
	; PushFloat -0.7853981633974483096
	fld qword [float8$minus0.7853981633974483096#]

 atanY$14:
	; Return -0.7853981633974483096
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$15:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atanY$16:
	; PushFloat v
	fld qword [rbp + 24]

 atanY$17:
	; Parameter double v 56
	fstp qword [rbp + 56]

 atanY$18:
	; Call fabs 32 0
	mov qword [rbp + 32], atanY$19
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 atanY$19:
	; PostCall 32

 atanY$20:
	; GetReturnValue £temporary645

 atanY$21:
	; PushFloat 0.5
	fld qword [float8$0.5#]

 atanY$22:
	; SignedGreaterThanEqual 62 £temporary645 0.5
	fcompp
	fstsw ax
	sahf
	jbe atanY$62

 atanY$23:
	; Assign sign 1
	mov dword [rbp + 32], 1

 atanY$24:
	; Assign denominator 1
	mov dword [rbp + 36], 1

 atanY$25:
	; Assign count 0
	mov dword [rbp + 40], 0

 atanY$26:
	; PushFloat v
	fld qword [rbp + 24]

 atanY$27:
	; PopFloat product
	fstp qword [rbp + 44]

 atanY$28:
	; PushFloat 0
	fldz

 atanY$29:
	; PopFloat sum
	fstp qword [rbp + 60]

 atanY$30:
	; IntegralToFloating £temporary647 sign
	fild dword [rbp + 32]

 atanY$31:
	; PushFloat product
	fld qword [rbp + 44]

 atanY$32:
	; SignedMultiply £temporary648 £temporary647 product
	fmul

 atanY$33:
	; IntegralToFloating £temporary649 denominator
	fild dword [rbp + 36]

 atanY$34:
	; SignedDivide £temporary650 £temporary648 £temporary649
	fdiv

 atanY$35:
	; PopFloat term
	fstp qword [rbp + 52]

 atanY$36:
	; PushFloat sum
	fld qword [rbp + 60]

 atanY$37:
	; PushFloat term
	fld qword [rbp + 52]

 atanY$38:
	; BinaryAdd £temporary651 sum term
	fadd

 atanY$39:
	; PopFloat sum
	fstp qword [rbp + 60]

 atanY$40:
	; UnarySubtract £temporary652 sign
	mov eax, [rbp + 32]
	neg eax

 atanY$41:
	; Assign sign £temporary652
	mov [rbp + 32], eax

 atanY$42:
	; PushFloat product
	fld qword [rbp + 44]

 atanY$43:
	; PushFloat v
	fld qword [rbp + 24]

 atanY$44:
	; PushFloat v
	fld qword [rbp + 24]

 atanY$45:
	; SignedMultiply £temporary653 v v
	fmul

 atanY$46:
	; SignedMultiply £temporary654 product £temporary653
	fmul

 atanY$47:
	; PopFloat product
	fstp qword [rbp + 44]

 atanY$48:
	; BinaryAdd denominator denominator 2
	add dword [rbp + 36], 2

 atanY$49:
	; CheckTrackMapFloatStack

 atanY$50:
	; BinaryAdd £temporary656 count 1
	mov eax, [rbp + 40]
	inc eax

 atanY$51:
	; SignedGreaterThanEqual 60 £temporary656 1000
	cmp eax, 1000
	jge atanY$60

 atanY$52:
	; PreCall 68 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atanY$53:
	; PushFloat term
	fld qword [rbp + 52]

 atanY$54:
	; Parameter double term 92
	fstp qword [rbp + 92]

 atanY$55:
	; Call fabs 68 0
	mov qword [rbp + 68], atanY$56
	mov [rbp + 76], rbp
	add rbp, 68
	jmp fabs

 atanY$56:
	; PostCall 68

 atanY$57:
	; GetReturnValue £temporary658

 atanY$58:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 atanY$59:
	; SignedGreaterThanEqual 30 £temporary658 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe atanY$30

 atanY$60:
	; PushFloat sum
	fld qword [rbp + 60]

 atanY$61:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$62:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atanY$63:
	; PushFloat v
	fld qword [rbp + 24]

 atanY$64:
	; Parameter double v 56
	fstp qword [rbp + 56]

 atanY$65:
	; Call fabs 32 0
	mov qword [rbp + 32], atanY$66
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 atanY$66:
	; PostCall 32

 atanY$67:
	; GetReturnValue £temporary661

 atanY$68:
	; PushFloat 1
	fld1

 atanY$69:
	; SignedGreaterThanEqual 130 £temporary661 1
	fcompp
	fstsw ax
	sahf
	jbe atanY$130

 atanY$70:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atanY$71:
	; Parameter pointer "atan 5\n" 56
	mov qword [rbp + 56], string_atan2050A#

 atanY$72:
	; Call printf 32 0
	mov qword [rbp + 32], atanY$73
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 atanY$73:
	; PostCall 32

 atanY$74:
	; PushFloat 1
	fld1

 atanY$75:
	; TopFloat x_nplus1
	fst qword [rbp + 32]

 atanY$76:
	; TopFloat x
	fst qword [rbp + 40]

 atanY$77:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 48]

 atanY$78:
	; PushFloat x
	fld qword [rbp + 40]

 atanY$79:
	; Parameter double x 72
	fstp qword [rbp + 80]

 atanY$80:
	; Call tan 48 0
	mov qword [rbp + 56], atanY$81
	mov [rbp + 64], rbp
	add rbp, 56
	jmp tan

 atanY$81:
	; PostCall 48
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 atanY$82:
	; GetReturnValue £temporary664

 atanY$83:
	; PushFloat v
	fld qword [rbp + 24]

 atanY$84:
	; BinarySubtract £temporary665 £temporary664 v
	fsub

 atanY$85:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

 atanY$86:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

 atanY$87:
	; PushFloat 2
	fld qword [float8$2#]

 atanY$88:
	; PushFloat x
	fld qword [rbp + 40]

 atanY$89:
	; SignedMultiply £temporary666 2 x
	fmul

 atanY$90:
	; Parameter double £temporary666 72
	fstp qword [rbp + 104]

 atanY$91:
	; Call cos 48 0
	mov qword [rbp + 80], atanY$92
	mov [rbp + 88], rbp
	add rbp, 80
	jmp cos

 atanY$92:
	; PostCall 48
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

 atanY$93:
	; GetReturnValue £temporary667

 atanY$94:
	; PushFloat 1
	fld1

 atanY$95:
	; BinaryAdd £temporary668 £temporary667 1
	fadd

 atanY$96:
	; Parameter double £temporary668 72
	fstp qword [rbp + 88]

 atanY$97:
	; Call square 48 0
	mov qword [rbp + 64], atanY$98
	mov [rbp + 72], rbp
	add rbp, 64
	jmp square

 atanY$98:
	; PostCall 48
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

 atanY$99:
	; GetReturnValue £temporary669

 atanY$100:
	; SignedMultiply £temporary670 £temporary665 £temporary669
	fmul

 atanY$101:
	; PushFloat 2
	fld qword [float8$2#]

 atanY$102:
	; SignedDivide £temporary671 £temporary670 2
	fdiv

 atanY$103:
	; BinarySubtract £temporary672 x £temporary671
	fsub

 atanY$104:
	; PopFloat x_nplus1
	fstp qword [rbp + 32]

 atanY$105:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atanY$106:
	; Parameter pointer "atan x %f x_nplus1 %f\n" 72
	mov qword [rbp + 72], string_atan20x2025f20x_nplus12025f0A#

 atanY$107:
	; PushFloat x
	fld qword [rbp + 40]

 atanY$108:
	; Parameter double x 80
	fstp qword [rbp + 80]

 atanY$109:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 atanY$110:
	; Parameter double x_nplus1 88
	fstp qword [rbp + 88]

 atanY$111:
	; Call printf 48 16
	mov qword [rbp + 48], atanY$112
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

 atanY$112:
	; PostCall 48

 atanY$113:
	; CheckTrackMapFloatStack

 atanY$114:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atanY$115:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 atanY$116:
	; PushFloat x
	fld qword [rbp + 40]

 atanY$117:
	; BinarySubtract £temporary674 x_nplus1 x
	fsub

 atanY$118:
	; Parameter double £temporary674 72
	fstp qword [rbp + 72]

 atanY$119:
	; Call fabs 48 0
	mov qword [rbp + 48], atanY$120
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 atanY$120:
	; PostCall 48

 atanY$121:
	; GetReturnValue £temporary675

 atanY$122:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 atanY$123:
	; SignedGreaterThanEqual 76 £temporary675 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe atanY$76

 atanY$124:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atanY$125:
	; Parameter pointer "atan 7\n" 72
	mov qword [rbp + 72], string_atan2070A#

 atanY$126:
	; Call printf 48 0
	mov qword [rbp + 48], atanY$127
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 atanY$127:
	; PostCall 48

 atanY$128:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 atanY$129:
	; Return x_nplus1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$130:
	; Assign errno 6
	mov dword [errno], 6

 atanY$131:
	; PushFloat 0
	fldz

 atanY$132:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$133:
	; FunctionEnd atanY

section .text

 atanX:
	; PushFloat v
	fld qword [rbp + 24]

 atanX$1:
	; PushFloat 0
	fldz

 atanX$2:
	; NotEqual 5 v 0
	fcompp
	fstsw ax
	sahf
	jne atanX$5

 atanX$3:
	; PushFloat 0
	fldz

 atanX$4:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanX$5:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atanX$6:
	; PushFloat v
	fld qword [rbp + 24]

 atanX$7:
	; Parameter double v 56
	fstp qword [rbp + 56]

 atanX$8:
	; Call fabs 32 0
	mov qword [rbp + 32], atanX$9
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 atanX$9:
	; PostCall 32

 atanX$10:
	; GetReturnValue £temporary688

 atanX$11:
	; PushFloat 1
	fld1

 atanX$12:
	; SignedGreaterThan 57 £temporary688 1
	fcompp
	fstsw ax
	sahf
	jb atanX$57

 atanX$13:
	; PushFloat 1
	fld1

 atanX$14:
	; TopFloat x_nplus1
	fst qword [rbp + 32]

 atanX$15:
	; TopFloat x
	fst qword [rbp + 40]

 atanX$16:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 48]

 atanX$17:
	; PushFloat x
	fld qword [rbp + 40]

 atanX$18:
	; Parameter double x 72
	fstp qword [rbp + 80]

 atanX$19:
	; Call tan 48 0
	mov qword [rbp + 56], atanX$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp tan

 atanX$20:
	; PostCall 48
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 atanX$21:
	; GetReturnValue £temporary690

 atanX$22:
	; PushFloat v
	fld qword [rbp + 24]

 atanX$23:
	; BinarySubtract £temporary691 £temporary690 v
	fsub

 atanX$24:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

 atanX$25:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

 atanX$26:
	; PushFloat 2
	fld qword [float8$2#]

 atanX$27:
	; PushFloat x
	fld qword [rbp + 40]

 atanX$28:
	; SignedMultiply £temporary692 2 x
	fmul

 atanX$29:
	; Parameter double £temporary692 72
	fstp qword [rbp + 104]

 atanX$30:
	; Call cos 48 0
	mov qword [rbp + 80], atanX$31
	mov [rbp + 88], rbp
	add rbp, 80
	jmp cos

 atanX$31:
	; PostCall 48
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

 atanX$32:
	; GetReturnValue £temporary693

 atanX$33:
	; PushFloat 1
	fld1

 atanX$34:
	; BinaryAdd £temporary694 £temporary693 1
	fadd

 atanX$35:
	; Parameter double £temporary694 72
	fstp qword [rbp + 88]

 atanX$36:
	; Call square 48 0
	mov qword [rbp + 64], atanX$37
	mov [rbp + 72], rbp
	add rbp, 64
	jmp square

 atanX$37:
	; PostCall 48
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

 atanX$38:
	; GetReturnValue £temporary695

 atanX$39:
	; SignedMultiply £temporary696 £temporary691 £temporary695
	fmul

 atanX$40:
	; PushFloat 2
	fld qword [float8$2#]

 atanX$41:
	; SignedDivide £temporary697 £temporary696 2
	fdiv

 atanX$42:
	; BinarySubtract £temporary698 x £temporary697
	fsub

 atanX$43:
	; PopFloat x_nplus1
	fstp qword [rbp + 32]

 atanX$44:
	; CheckTrackMapFloatStack

 atanX$45:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atanX$46:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 atanX$47:
	; PushFloat x
	fld qword [rbp + 40]

 atanX$48:
	; BinarySubtract £temporary699 x_nplus1 x
	fsub

 atanX$49:
	; Parameter double £temporary699 72
	fstp qword [rbp + 72]

 atanX$50:
	; Call fabs 48 0
	mov qword [rbp + 48], atanX$51
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 atanX$51:
	; PostCall 48

 atanX$52:
	; GetReturnValue £temporary700

 atanX$53:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 atanX$54:
	; SignedGreaterThanEqual 15 £temporary700 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe atanX$15

 atanX$55:
	; PushFloat x_nplus1
	fld qword [rbp + 32]

 atanX$56:
	; Return x_nplus1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanX$57:
	; Assign errno 6
	mov dword [errno], 6

 atanX$58:
	; PushFloat 0
	fldz

 atanX$59:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanX$60:
	; FunctionEnd atanX

section .data

float8$3.1415926535897932384#:
	; Initializer Double 3.1415926535897932384
	dq 3.1415926535897932384

section .text

 atan2:
	; PushFloat x
	fld qword [rbp + 32]

 atan2$1:
	; PushFloat 0
	fldz

 atan2$2:
	; SignedLessThanEqual 12 x 0
	fcompp
	fstsw ax
	sahf
	jae atan2$12

 atan2$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2$4:
	; PushFloat y
	fld qword [rbp + 24]

 atan2$5:
	; PushFloat x
	fld qword [rbp + 32]

 atan2$6:
	; SignedDivide £temporary708 y x
	fdiv

 atan2$7:
	; Parameter double £temporary708 64
	fstp qword [rbp + 64]

 atan2$8:
	; Call atan 40 0
	mov qword [rbp + 40], atan2$9
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan2$9:
	; PostCall 40

 atan2$10:
	; GetReturnValue £temporary709

 atan2$11:
	; Return £temporary709
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$12:
	; PushFloat x
	fld qword [rbp + 32]

 atan2$13:
	; PushFloat 0
	fldz

 atan2$14:
	; SignedGreaterThanEqual 40 x 0
	fcompp
	fstsw ax
	sahf
	jbe atan2$40

 atan2$15:
	; PushFloat y
	fld qword [rbp + 24]

 atan2$16:
	; PushFloat 0
	fldz

 atan2$17:
	; SignedLessThan 29 y 0
	fcompp
	fstsw ax
	sahf
	ja atan2$29

 atan2$18:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2$19:
	; PushFloat y
	fld qword [rbp + 24]

 atan2$20:
	; PushFloat x
	fld qword [rbp + 32]

 atan2$21:
	; SignedDivide £temporary712 y x
	fdiv

 atan2$22:
	; Parameter double £temporary712 64
	fstp qword [rbp + 64]

 atan2$23:
	; Call atan 40 0
	mov qword [rbp + 40], atan2$24
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan2$24:
	; PostCall 40

 atan2$25:
	; GetReturnValue £temporary713

 atan2$26:
	; PushFloat 3.1415926535897932384
	fld qword [float8$3.1415926535897932384#]

 atan2$27:
	; BinaryAdd £temporary714 £temporary713 3.1415926535897932384
	fadd

 atan2$28:
	; Return £temporary714
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$29:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2$30:
	; PushFloat y
	fld qword [rbp + 24]

 atan2$31:
	; PushFloat x
	fld qword [rbp + 32]

 atan2$32:
	; SignedDivide £temporary715 y x
	fdiv

 atan2$33:
	; Parameter double £temporary715 64
	fstp qword [rbp + 64]

 atan2$34:
	; Call atan 40 0
	mov qword [rbp + 40], atan2$35
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan2$35:
	; PostCall 40

 atan2$36:
	; GetReturnValue £temporary716

 atan2$37:
	; PushFloat 3.1415926535897932384
	fld qword [float8$3.1415926535897932384#]

 atan2$38:
	; BinarySubtract £temporary717 £temporary716 3.1415926535897932384
	fsub

 atan2$39:
	; Return £temporary717
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$40:
	; PushFloat y
	fld qword [rbp + 24]

 atan2$41:
	; PushFloat 0
	fldz

 atan2$42:
	; SignedLessThanEqual 45 y 0
	fcompp
	fstsw ax
	sahf
	jae atan2$45

 atan2$43:
	; PushFloat 1.5707963267948966192
	fld qword [float8$1.5707963267948966192#]

 atan2$44:
	; Return 1.5707963267948966192
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$45:
	; PushFloat y
	fld qword [rbp + 24]

 atan2$46:
	; PushFloat 0
	fldz

 atan2$47:
	; SignedGreaterThanEqual 50 y 0
	fcompp
	fstsw ax
	sahf
	jbe atan2$50

 atan2$48:
	; PushFloat -1.5707963267948966192
	fld qword [float8$minus1.5707963267948966192#]

 atan2$49:
	; Return -1.5707963267948966192
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$50:
	; Assign errno 6
	mov dword [errno], 6

 atan2$51:
	; PushFloat 0
	fldz

 atan2$52:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$53:
	; FunctionEnd atan2

section .data

string_20A#:
	; Initializer String 2\n
	db "2", 10, 0

section .data

string_30A#:
	; Initializer String 3\n
	db "3", 10, 0

section .data

string_40A#:
	; Initializer String 4\n
	db "4", 10, 0

section .data

string_50A#:
	; Initializer String 5\n
	db "5", 10, 0

section .data

string_60A#:
	; Initializer String 6\n
	db "6", 10, 0

section .data

float8$minus3.1415926535897932384#:
	; Initializer Double -3.1415926535897932384
	dq -3.1415926535897932384

section .text

 atan2x:
	; PushFloat denum
	fld qword [rbp + 32]

 atan2x$1:
	; PushFloat 0
	fldz

 atan2x$2:
	; SignedLessThanEqual 18 denum 0
	fcompp
	fstsw ax
	sahf
	jae atan2x$18

 atan2x$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2x$4:
	; PushFloat num
	fld qword [rbp + 24]

 atan2x$5:
	; PushFloat denum
	fld qword [rbp + 32]

 atan2x$6:
	; SignedDivide £temporary724 num denum
	fdiv

 atan2x$7:
	; Parameter double £temporary724 64
	fstp qword [rbp + 64]

 atan2x$8:
	; Call atan 40 0
	mov qword [rbp + 40], atan2x$9
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan2x$9:
	; PostCall 40

 atan2x$10:
	; GetReturnValue £temporary725

 atan2x$11:
	; PopFloat y
	fstp qword [rbp + 40]

 atan2x$12:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2x$13:
	; Parameter pointer "2\n" 72
	mov qword [rbp + 72], string_20A#

 atan2x$14:
	; Call printf 48 0
	mov qword [rbp + 48], atan2x$15
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 atan2x$15:
	; PostCall 48

 atan2x$16:
	; PushFloat y
	fld qword [rbp + 40]

 atan2x$17:
	; Return y
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$18:
	; PushFloat num
	fld qword [rbp + 24]

 atan2x$19:
	; PushFloat 0
	fldz

 atan2x$20:
	; SignedLessThan 39 num 0
	fcompp
	fstsw ax
	sahf
	ja atan2x$39

 atan2x$21:
	; PushFloat denum
	fld qword [rbp + 32]

 atan2x$22:
	; PushFloat 0
	fldz

 atan2x$23:
	; SignedGreaterThanEqual 39 denum 0
	fcompp
	fstsw ax
	sahf
	jbe atan2x$39

 atan2x$24:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2x$25:
	; Parameter pointer "2\n" 64
	mov qword [rbp + 64], string_20A#

 atan2x$26:
	; Call printf 40 0
	mov qword [rbp + 40], atan2x$27
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 atan2x$27:
	; PostCall 40

 atan2x$28:
	; PushFloat 3.1415926535897932384
	fld qword [float8$3.1415926535897932384#]

 atan2x$29:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 atan2x$30:
	; PushFloat num
	fld qword [rbp + 24]

 atan2x$31:
	; PushFloat denum
	fld qword [rbp + 32]

 atan2x$32:
	; SignedDivide £temporary731 num denum
	fdiv

 atan2x$33:
	; Parameter double £temporary731 64
	fstp qword [rbp + 72]

 atan2x$34:
	; Call atan 40 0
	mov qword [rbp + 48], atan2x$35
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

 atan2x$35:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 atan2x$36:
	; GetReturnValue £temporary732

 atan2x$37:
	; BinaryAdd £temporary733 3.1415926535897932384 £temporary732
	fadd

 atan2x$38:
	; Return £temporary733
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$39:
	; PushFloat num
	fld qword [rbp + 24]

 atan2x$40:
	; PushFloat 0
	fldz

 atan2x$41:
	; SignedGreaterThanEqual 60 num 0
	fcompp
	fstsw ax
	sahf
	jbe atan2x$60

 atan2x$42:
	; PushFloat denum
	fld qword [rbp + 32]

 atan2x$43:
	; PushFloat 0
	fldz

 atan2x$44:
	; SignedGreaterThanEqual 60 denum 0
	fcompp
	fstsw ax
	sahf
	jbe atan2x$60

 atan2x$45:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2x$46:
	; Parameter pointer "3\n" 64
	mov qword [rbp + 64], string_30A#

 atan2x$47:
	; Call printf 40 0
	mov qword [rbp + 40], atan2x$48
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 atan2x$48:
	; PostCall 40

 atan2x$49:
	; PushFloat -3.1415926535897932384
	fld qword [float8$minus3.1415926535897932384#]

 atan2x$50:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 atan2x$51:
	; PushFloat num
	fld qword [rbp + 24]

 atan2x$52:
	; PushFloat denum
	fld qword [rbp + 32]

 atan2x$53:
	; SignedDivide £temporary738 num denum
	fdiv

 atan2x$54:
	; Parameter double £temporary738 64
	fstp qword [rbp + 72]

 atan2x$55:
	; Call atan 40 0
	mov qword [rbp + 48], atan2x$56
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

 atan2x$56:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 atan2x$57:
	; GetReturnValue £temporary739

 atan2x$58:
	; BinaryAdd £temporary740 -3.1415926535897932384 £temporary739
	fadd

 atan2x$59:
	; Return £temporary740
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$60:
	; PushFloat num
	fld qword [rbp + 24]

 atan2x$61:
	; PushFloat 0
	fldz

 atan2x$62:
	; SignedLessThanEqual 72 num 0
	fcompp
	fstsw ax
	sahf
	jae atan2x$72

 atan2x$63:
	; PushFloat denum
	fld qword [rbp + 32]

 atan2x$64:
	; PushFloat 0
	fldz

 atan2x$65:
	; NotEqual 72 denum 0
	fcompp
	fstsw ax
	sahf
	jne atan2x$72

 atan2x$66:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2x$67:
	; Parameter pointer "4\n" 64
	mov qword [rbp + 64], string_40A#

 atan2x$68:
	; Call printf 40 0
	mov qword [rbp + 40], atan2x$69
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 atan2x$69:
	; PostCall 40

 atan2x$70:
	; PushFloat 1.5707963267948966192
	fld qword [float8$1.5707963267948966192#]

 atan2x$71:
	; Return 1.5707963267948966192
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$72:
	; PushFloat num
	fld qword [rbp + 24]

 atan2x$73:
	; PushFloat 0
	fldz

 atan2x$74:
	; SignedGreaterThanEqual 84 num 0
	fcompp
	fstsw ax
	sahf
	jbe atan2x$84

 atan2x$75:
	; PushFloat denum
	fld qword [rbp + 32]

 atan2x$76:
	; PushFloat 0
	fldz

 atan2x$77:
	; NotEqual 84 denum 0
	fcompp
	fstsw ax
	sahf
	jne atan2x$84

 atan2x$78:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2x$79:
	; Parameter pointer "5\n" 64
	mov qword [rbp + 64], string_50A#

 atan2x$80:
	; Call printf 40 0
	mov qword [rbp + 40], atan2x$81
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 atan2x$81:
	; PostCall 40

 atan2x$82:
	; PushFloat -1.5707963267948966192
	fld qword [float8$minus1.5707963267948966192#]

 atan2x$83:
	; Return -1.5707963267948966192
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$84:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2x$85:
	; Parameter pointer "6\n" 64
	mov qword [rbp + 64], string_60A#

 atan2x$86:
	; Call printf 40 0
	mov qword [rbp + 40], atan2x$87
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 atan2x$87:
	; PostCall 40

 atan2x$88:
	; Assign errno 6
	mov dword [errno], 6

 atan2x$89:
	; PushFloat 0
	fldz

 atan2x$90:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$91:
	; FunctionEnd atan2x

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .text

 floor:
	; PushFloat x
	fld qword [rbp + 24]

 floor$1:
	; PushFloat 0
	fldz

 floor$2:
	; SignedGreaterThanEqual 12 x 0
	fcompp
	fstsw ax
	sahf
	jbe floor$12

 floor$3:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 floor$4:
	; PushFloat x
	fld qword [rbp + 24]

 floor$5:
	; UnarySubtract £temporary754 x
	fchs

 floor$6:
	; Parameter double £temporary754 56
	fstp qword [rbp + 56]

 floor$7:
	; Call ceil 32 0
	mov qword [rbp + 32], floor$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp ceil

 floor$8:
	; PostCall 32

 floor$9:
	; GetReturnValue £temporary755

 floor$10:
	; UnarySubtract £temporary756 £temporary755
	fchs

 floor$11:
	; Return £temporary756
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$12:
	; PushFloat x
	fld qword [rbp + 24]

 floor$13:
	; FloatingToIntegral £temporary757 x
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 floor$14:
	; IntegralToFloating £temporary758 £temporary757
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 floor$15:
	; Return £temporary758
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$16:
	; FunctionEnd floor

section .data

float8$0.999999999999#:
	; Initializer Double 0.999999999999
	dq 0.999999999999

section .text

 ceil:
	; PushFloat x
	fld qword [rbp + 24]

 ceil$1:
	; PushFloat 0
	fldz

 ceil$2:
	; SignedGreaterThanEqual 12 x 0
	fcompp
	fstsw ax
	sahf
	jbe ceil$12

 ceil$3:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ceil$4:
	; PushFloat x
	fld qword [rbp + 24]

 ceil$5:
	; UnarySubtract £temporary761 x
	fchs

 ceil$6:
	; Parameter double £temporary761 56
	fstp qword [rbp + 56]

 ceil$7:
	; Call floor 32 0
	mov qword [rbp + 32], ceil$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp floor

 ceil$8:
	; PostCall 32

 ceil$9:
	; GetReturnValue £temporary762

 ceil$10:
	; UnarySubtract £temporary763 £temporary762
	fchs

 ceil$11:
	; Return £temporary763
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ceil$12:
	; PushFloat x
	fld qword [rbp + 24]

 ceil$13:
	; PushFloat 0.999999999999
	fld qword [float8$0.999999999999#]

 ceil$14:
	; BinaryAdd £temporary764 x 0.999999999999
	fadd

 ceil$15:
	; FloatingToIntegral £temporary765 £temporary764
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 ceil$16:
	; IntegralToFloating £temporary766 £temporary765
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 ceil$17:
	; Return £temporary766
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ceil$18:
	; FunctionEnd ceil

section .text

 round:
	; PushFloat x
	fld qword [rbp + 24]

 round$1:
	; PushFloat 0
	fldz

 round$2:
	; SignedGreaterThanEqual 8 x 0
	fcompp
	fstsw ax
	sahf
	jbe round$8

 round$3:
	; PushFloat x
	fld qword [rbp + 24]

 round$4:
	; PushFloat 0.5
	fld qword [float8$0.5#]

 round$5:
	; BinarySubtract £temporary769 x 0.5
	fsub

 round$6:
	; DecreaseStack

 round$7:
	; Goto 11
	jmp round$11

 round$8:
	; PushFloat x
	fld qword [rbp + 24]

 round$9:
	; PushFloat 0.5
	fld qword [float8$0.5#]

 round$10:
	; BinaryAdd £temporary770 x 0.5
	fadd

 round$11:
	; FloatingToIntegral £temporary772 £temporary771
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 round$12:
	; IntegralToFloating £temporary773 £temporary772
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 round$13:
	; Return £temporary773
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 round$14:
	; FunctionEnd round

section .text

 fabs:
	; PushFloat x
	fld qword [rbp + 24]

 fabs$1:
	; PushFloat 0
	fldz

 fabs$2:
	; SignedGreaterThanEqual 7 x 0
	fcompp
	fstsw ax
	sahf
	jbe fabs$7

 fabs$3:
	; PushFloat x
	fld qword [rbp + 24]

 fabs$4:
	; UnarySubtract £temporary775 x
	fchs

 fabs$5:
	; DecreaseStack

 fabs$6:
	; Goto 8
	jmp fabs$8

 fabs$7:
	; PushFloat x
	fld qword [rbp + 24]

 fabs$8:
	; Return £temporary776
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fabs$9:
	; FunctionEnd fabs

section .text

 modf:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 modf$1:
	; PushFloat x
	fld qword [rbp + 24]

 modf$2:
	; Parameter double x 64
	fstp qword [rbp + 64]

 modf$3:
	; Call fabs 40 0
	mov qword [rbp + 40], modf$4
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

 modf$4:
	; PostCall 40

 modf$5:
	; GetReturnValue £temporary777

 modf$6:
	; FloatingToIntegral £temporary778 £temporary777
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 modf$7:
	; IntegralToFloating £temporary779 £temporary778
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 modf$8:
	; PopFloat integral
	fstp qword [rbp + 40]

 modf$9:
	; Equal 34 p 0
	cmp qword [rbp + 32], 0
	je modf$34

 modf$10:
	; Dereference £temporary781 -> p p 0
	mov rsi, [rbp + 32]

 modf$11:
	; PushFloat x
	fld qword [rbp + 24]

 modf$12:
	; PushFloat 0
	fldz

 modf$13:
	; SignedLessThanEqual 24 x 0
	fcompp
	fstsw ax
	sahf
	jae modf$24

 modf$14:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 48], rsi

 modf$15:
	; PushFloat x
	fld qword [rbp + 24]

 modf$16:
	; Parameter double x 72
	fstp qword [rbp + 80]

 modf$17:
	; Call fabs 48 0
	mov qword [rbp + 56], modf$18
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fabs

 modf$18:
	; PostCall 48
	mov rsi, [rbp + 48]

 modf$19:
	; GetReturnValue £temporary783

 modf$20:
	; PushFloat integral
	fld qword [rbp + 40]

 modf$21:
	; BinarySubtract £temporary784 £temporary783 integral
	fsub

 modf$22:
	; DecreaseStack

 modf$23:
	; Goto 33
	jmp modf$33

 modf$24:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 48], rsi

 modf$25:
	; PushFloat x
	fld qword [rbp + 24]

 modf$26:
	; Parameter double x 72
	fstp qword [rbp + 80]

 modf$27:
	; Call fabs 48 0
	mov qword [rbp + 56], modf$28
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fabs

 modf$28:
	; PostCall 48
	mov rsi, [rbp + 48]

 modf$29:
	; GetReturnValue £temporary785

 modf$30:
	; PushFloat integral
	fld qword [rbp + 40]

 modf$31:
	; BinarySubtract £temporary786 £temporary785 integral
	fsub

 modf$32:
	; UnarySubtract £temporary787 £temporary786
	fchs

 modf$33:
	; PopFloat £temporary781 -> p
	fstp qword [rsi]

 modf$34:
	; PushFloat x
	fld qword [rbp + 24]

 modf$35:
	; PushFloat 0
	fldz

 modf$36:
	; SignedLessThanEqual 40 x 0
	fcompp
	fstsw ax
	sahf
	jae modf$40

 modf$37:
	; PushFloat integral
	fld qword [rbp + 40]

 modf$38:
	; DecreaseStack

 modf$39:
	; Goto 42
	jmp modf$42

 modf$40:
	; PushFloat integral
	fld qword [rbp + 40]

 modf$41:
	; UnarySubtract £temporary790 integral
	fchs

 modf$42:
	; Return £temporary791
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 modf$43:
	; FunctionEnd modf

section .text

 fmod:
	; PushFloat y
	fld qword [rbp + 32]

 fmod$1:
	; PushFloat 0
	fldz

 fmod$2:
	; Equal 27 y 0
	fcompp
	fstsw ax
	sahf
	je fmod$27

 fmod$3:
	; PushFloat x
	fld qword [rbp + 24]

 fmod$4:
	; PushFloat y
	fld qword [rbp + 32]

 fmod$5:
	; SignedDivide £temporary796 x y
	fdiv

 fmod$6:
	; PopFloat quotient
	fstp qword [rbp + 40]

 fmod$7:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fmod$8:
	; PushFloat quotient
	fld qword [rbp + 40]

 fmod$9:
	; PushFloat quotient
	fld qword [rbp + 40]

 fmod$10:
	; FloatingToIntegral £temporary797 quotient
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 fmod$11:
	; IntegralToFloating £temporary798 £temporary797
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 fmod$12:
	; BinarySubtract £temporary799 quotient £temporary798
	fsub

 fmod$13:
	; Parameter double £temporary799 72
	fstp qword [rbp + 72]

 fmod$14:
	; Call fabs 48 0
	mov qword [rbp + 48], fmod$15
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 fmod$15:
	; PostCall 48

 fmod$16:
	; GetReturnValue £temporary800

 fmod$17:
	; PopFloat remainder
	fstp qword [rbp + 48]

 fmod$18:
	; PushFloat x
	fld qword [rbp + 24]

 fmod$19:
	; PushFloat 0
	fldz

 fmod$20:
	; SignedLessThanEqual 24 x 0
	fcompp
	fstsw ax
	sahf
	jae fmod$24

 fmod$21:
	; PushFloat remainder
	fld qword [rbp + 48]

 fmod$22:
	; DecreaseStack

 fmod$23:
	; Goto 26
	jmp fmod$26

 fmod$24:
	; PushFloat remainder
	fld qword [rbp + 48]

 fmod$25:
	; UnarySubtract £temporary802 remainder
	fchs

 fmod$26:
	; Return £temporary803
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fmod$27:
	; Assign errno 6
	mov dword [errno], 6

 fmod$28:
	; PushFloat 0
	fldz

 fmod$29:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fmod$30:
	; FunctionEnd fmod
