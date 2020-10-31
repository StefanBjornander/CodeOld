	global exp
	global log
	global log10
	global pow
	global ldexp
	global frexp
	global sqrt
	global modf
	global fmod
	global sin
	global cos
	global tan
	global asin
	global acos
	global atan
	global atan2
	global sinh
	global cosh
	global tanh
	global floor
	global ceil
	global round
	global fabs

	extern errno
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
	; PopFloat i
	fstp qword [rbp + 32]

 exp$2:
	; PushFloat 1
	fld1

 exp$3:
	; PopFloat sum
	fstp qword [rbp + 48]

 exp$4:
	; PushFloat 1
	fld1

 exp$5:
	; PopFloat faculty
	fstp qword [rbp + 56]

 exp$6:
	; PushFloat x
	fld qword [rbp + 24]

 exp$7:
	; PopFloat power
	fstp qword [rbp + 64]

 exp$8:
	; PushFloat power
	fld qword [rbp + 64]

 exp$9:
	; PushFloat faculty
	fld qword [rbp + 56]

 exp$10:
	; SignedDivide £temporary398 power faculty
	fdiv

 exp$11:
	; PopFloat term
	fstp qword [rbp + 40]

 exp$12:
	; PushFloat sum
	fld qword [rbp + 48]

 exp$13:
	; PushFloat term
	fld qword [rbp + 40]

 exp$14:
	; BinaryAdd £temporary399 sum term
	fadd

 exp$15:
	; PopFloat sum
	fstp qword [rbp + 48]

 exp$16:
	; PushFloat power
	fld qword [rbp + 64]

 exp$17:
	; PushFloat x
	fld qword [rbp + 24]

 exp$18:
	; SignedMultiply £temporary400 power x
	fmul

 exp$19:
	; PopFloat power
	fstp qword [rbp + 64]

 exp$20:
	; PushFloat faculty
	fld qword [rbp + 56]

 exp$21:
	; PushFloat i
	fld qword [rbp + 32]

 exp$22:
	; PushOne
	fld1

 exp$23:
	; BinaryAdd i i 1
	fadd

 exp$24:
	; TopFloat i
	fst qword [rbp + 32]

 exp$25:
	; SignedMultiply £temporary402 faculty £temporary401
	fmul

 exp$26:
	; PopFloat faculty
	fstp qword [rbp + 56]

 exp$27:
	; CheckTrackMapFloatStack

 exp$28:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exp$29:
	; PushFloat term
	fld qword [rbp + 40]

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
	; GetReturnValue £temporary403

 exp$34:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 exp$35:
	; SignedGreaterThanEqual 8 £temporary403 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe exp$8

 exp$36:
	; PushFloat sum
	fld qword [rbp + 48]

 exp$37:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exp$38:
	; FunctionEnd exp

section .data

float8$2.7182818284590452353602874#:
	; Initializer Double 2.7182818284590452353602874
	dq 2.7182818284590452353602874

section .data

float8$0.3678794411714423215955237798#:
	; Initializer Double 0.3678794411714423215955237798
	dq 0.3678794411714423215955237798

section .data

float8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .text

 log:
	; PushFloat x
	fld qword [rbp + 24]

 log$1:
	; PushFloat 0
	fldz

 log$2:
	; SignedLessThanEqual 73 x 0
	fcompp
	fstsw ax
	sahf
	jae log$73

 log$3:
	; Assign n 0
	mov dword [rbp + 32], 0

 log$4:
	; PushFloat x
	fld qword [rbp + 24]

 log$5:
	; PushFloat 1
	fld1

 log$6:
	; SignedLessThanEqual 16 x 1
	fcompp
	fstsw ax
	sahf
	jae log$16

 log$7:
	; PushFloat x
	fld qword [rbp + 24]

 log$8:
	; PushFloat 1
	fld1

 log$9:
	; SignedLessThanEqual 28 x 1
	fcompp
	fstsw ax
	sahf
	jae log$28

 log$10:
	; PushFloat x
	fld qword [rbp + 24]

 log$11:
	; PushFloat 2.7182818284590452353602874
	fld qword [float8$2.7182818284590452353602874#]

 log$12:
	; SignedDivide £temporary409 x 2.7182818284590452353602874
	fdiv

 log$13:
	; PopFloat x
	fstp qword [rbp + 24]

 log$14:
	; BinaryAdd n n 1
	inc dword [rbp + 32]

 log$15:
	; Goto 7
	jmp log$7

 log$16:
	; PushFloat x
	fld qword [rbp + 24]

 log$17:
	; PushFloat 0.3678794411714423215955237798
	fld qword [float8$0.3678794411714423215955237798#]

 log$18:
	; SignedGreaterThanEqual 28 x 0.3678794411714423215955237798
	fcompp
	fstsw ax
	sahf
	jbe log$28

 log$19:
	; PushFloat x
	fld qword [rbp + 24]

 log$20:
	; PushFloat 0.3678794411714423215955237798
	fld qword [float8$0.3678794411714423215955237798#]

 log$21:
	; SignedGreaterThanEqual 28 x 0.3678794411714423215955237798
	fcompp
	fstsw ax
	sahf
	jbe log$28

 log$22:
	; PushFloat x
	fld qword [rbp + 24]

 log$23:
	; PushFloat 2.7182818284590452353602874
	fld qword [float8$2.7182818284590452353602874#]

 log$24:
	; SignedMultiply £temporary413 x 2.7182818284590452353602874
	fmul

 log$25:
	; PopFloat x
	fstp qword [rbp + 24]

 log$26:
	; BinarySubtract n n 1
	dec dword [rbp + 32]

 log$27:
	; Goto 19
	jmp log$19

 log$28:
	; PushFloat 1
	fld1

 log$29:
	; PopFloat i
	fstp qword [rbp + 36]

 log$30:
	; PushFloat 1
	fld1

 log$31:
	; PopFloat term
	fstp qword [rbp + 44]

 log$32:
	; PushFloat 0
	fldz

 log$33:
	; PopFloat sum
	fstp qword [rbp + 52]

 log$34:
	; PushFloat 1
	fld1

 log$35:
	; PopFloat sign
	fstp qword [rbp + 60]

 log$36:
	; PushFloat x
	fld qword [rbp + 24]

 log$37:
	; PushFloat 1
	fld1

 log$38:
	; BinarySubtract £temporary415 x 1
	fsub

 log$39:
	; PopFloat x_minus_1
	fstp qword [rbp + 68]

 log$40:
	; PushFloat x_minus_1
	fld qword [rbp + 68]

 log$41:
	; PopFloat power
	fstp qword [rbp + 76]

 log$42:
	; PushFloat sign
	fld qword [rbp + 60]

 log$43:
	; PushFloat power
	fld qword [rbp + 76]

 log$44:
	; SignedMultiply £temporary416 sign power
	fmul

 log$45:
	; PushFloat i
	fld qword [rbp + 36]

 log$46:
	; SignedDivide £temporary417 £temporary416 i
	fdiv

 log$47:
	; PopFloat term
	fstp qword [rbp + 44]

 log$48:
	; PushFloat sum
	fld qword [rbp + 52]

 log$49:
	; PushFloat term
	fld qword [rbp + 44]

 log$50:
	; BinaryAdd £temporary418 sum term
	fadd

 log$51:
	; PopFloat sum
	fstp qword [rbp + 52]

 log$52:
	; PushFloat power
	fld qword [rbp + 76]

 log$53:
	; PushFloat x_minus_1
	fld qword [rbp + 68]

 log$54:
	; SignedMultiply £temporary419 power x_minus_1
	fmul

 log$55:
	; PopFloat power
	fstp qword [rbp + 76]

 log$56:
	; PushFloat sign
	fld qword [rbp + 60]

 log$57:
	; PushFloat -1.0
	fld qword [float8$minus1.0#]

 log$58:
	; SignedMultiply £temporary420 sign -1.0
	fmul

 log$59:
	; PopFloat sign
	fstp qword [rbp + 60]

 log$60:
	; CheckTrackMapFloatStack

 log$61:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 log$62:
	; PushFloat term
	fld qword [rbp + 44]

 log$63:
	; Parameter double term 108
	fstp qword [rbp + 108]

 log$64:
	; Call fabs 84 0
	mov qword [rbp + 84], log$65
	mov [rbp + 92], rbp
	add rbp, 84
	jmp fabs

 log$65:
	; PostCall 84

 log$66:
	; GetReturnValue £temporary421

 log$67:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 log$68:
	; SignedGreaterThanEqual 42 £temporary421 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe log$42

 log$69:
	; PushFloat sum
	fld qword [rbp + 52]

 log$70:
	; IntegralToFloating £temporary423 n
	fild dword [rbp + 32]

 log$71:
	; BinaryAdd £temporary424 sum £temporary423
	fadd

 log$72:
	; Return £temporary424
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$73:
	; Assign errno 6
	mov dword [errno], 6

 log$74:
	; PushFloat 0
	fldz

 log$75:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$76:
	; FunctionEnd log

section .data

float8$2.3025850929940456840179914#:
	; Initializer Double 2.3025850929940456840179914
	dq 2.3025850929940456840179914

section .text

 log10:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 log10$1:
	; PushFloat x
	fld qword [rbp + 24]

 log10$2:
	; Parameter double x 56
	fstp qword [rbp + 56]

 log10$3:
	; Call log 32 0
	mov qword [rbp + 32], log10$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp log

 log10$4:
	; PostCall 32

 log10$5:
	; GetReturnValue £temporary426

 log10$6:
	; PushFloat 2.3025850929940456840179914
	fld qword [float8$2.3025850929940456840179914#]

 log10$7:
	; SignedDivide £temporary427 £temporary426 2.3025850929940456840179914
	fdiv

 log10$8:
	; Return £temporary427
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10$9:
	; FunctionEnd log10

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .data

int8$2#:
	; Initializer Signed_Long_Int 2
	dq 2

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
	; GetReturnValue £temporary430

 pow$11:
	; SignedMultiply £temporary431 y £temporary430
	fmul

 pow$12:
	; Parameter double £temporary431 64
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
	; GetReturnValue £temporary432

 pow$16:
	; Return £temporary432
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$17:
	; PushFloat x
	fld qword [rbp + 24]

 pow$18:
	; PushFloat 0
	fldz

 pow$19:
	; NotEqual 25 x 0
	fcompp
	fstsw ax
	sahf
	jne pow$25

 pow$20:
	; PushFloat y
	fld qword [rbp + 32]

 pow$21:
	; PushFloat 0
	fldz

 pow$22:
	; SignedLessThanEqual 25 y 0
	fcompp
	fstsw ax
	sahf
	jae pow$25

 pow$23:
	; PushFloat 0
	fldz

 pow$24:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$25:
	; PushFloat x
	fld qword [rbp + 24]

 pow$26:
	; PushFloat 0
	fldz

 pow$27:
	; SignedGreaterThanEqual 77 x 0
	fcompp
	fstsw ax
	sahf
	jbe pow$77

 pow$28:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$29:
	; PushFloat y
	fld qword [rbp + 32]

 pow$30:
	; Parameter double y 64
	fstp qword [rbp + 64]

 pow$31:
	; Call floor 40 0
	mov qword [rbp + 40], pow$32
	mov [rbp + 48], rbp
	add rbp, 40
	jmp floor

 pow$32:
	; PostCall 40

 pow$33:
	; GetReturnValue £temporary437

 pow$34:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 pow$35:
	; PushFloat y
	fld qword [rbp + 32]

 pow$36:
	; Parameter double y 64
	fstp qword [rbp + 72]

 pow$37:
	; Call ceil 40 0
	mov qword [rbp + 48], pow$38
	mov [rbp + 56], rbp
	add rbp, 48
	jmp ceil

 pow$38:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 pow$39:
	; GetReturnValue £temporary438

 pow$40:
	; NotEqual 77 £temporary437 £temporary438
	fcompp
	fstsw ax
	sahf
	jne pow$77

 pow$41:
	; PushFloat y
	fld qword [rbp + 32]

 pow$42:
	; FloatingToIntegral £temporary441 y
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 pow$43:
	; Assign long_y £temporary441
	mov [rbp + 40], rax

 pow$44:
	; SignedModulo £temporary442 long_y 2
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [int8$2#]

 pow$45:
	; NotEqual 61 £temporary442 0
	cmp rdx, 0
	jne pow$61

 pow$46:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$47:
	; PushFloat y
	fld qword [rbp + 32]

 pow$48:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 48]

 pow$49:
	; PushFloat x
	fld qword [rbp + 24]

 pow$50:
	; UnarySubtract £temporary444 x
	fchs

 pow$51:
	; Parameter double £temporary444 72
	fstp qword [rbp + 80]

 pow$52:
	; Call log 48 0
	mov qword [rbp + 56], pow$53
	mov [rbp + 64], rbp
	add rbp, 56
	jmp log

 pow$53:
	; PostCall 48
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 pow$54:
	; GetReturnValue £temporary445

 pow$55:
	; SignedMultiply £temporary446 y £temporary445
	fmul

 pow$56:
	; Parameter double £temporary446 72
	fstp qword [rbp + 72]

 pow$57:
	; Call exp 48 0
	mov qword [rbp + 48], pow$58
	mov [rbp + 56], rbp
	add rbp, 48
	jmp exp

 pow$58:
	; PostCall 48

 pow$59:
	; GetReturnValue £temporary447

 pow$60:
	; Return £temporary447
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$61:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$62:
	; PushFloat y
	fld qword [rbp + 32]

 pow$63:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 48]

 pow$64:
	; PushFloat x
	fld qword [rbp + 24]

 pow$65:
	; UnarySubtract £temporary448 x
	fchs

 pow$66:
	; Parameter double £temporary448 72
	fstp qword [rbp + 80]

 pow$67:
	; Call log 48 0
	mov qword [rbp + 56], pow$68
	mov [rbp + 64], rbp
	add rbp, 56
	jmp log

 pow$68:
	; PostCall 48
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 pow$69:
	; GetReturnValue £temporary449

 pow$70:
	; SignedMultiply £temporary450 y £temporary449
	fmul

 pow$71:
	; Parameter double £temporary450 72
	fstp qword [rbp + 72]

 pow$72:
	; Call exp 48 0
	mov qword [rbp + 48], pow$73
	mov [rbp + 56], rbp
	add rbp, 48
	jmp exp

 pow$73:
	; PostCall 48

 pow$74:
	; GetReturnValue £temporary451

 pow$75:
	; UnarySubtract £temporary452 £temporary451
	fchs

 pow$76:
	; Return £temporary452
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$77:
	; Assign errno 6
	mov dword [errno], 6

 pow$78:
	; PushFloat 0
	fldz

 pow$79:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$80:
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
	; IntegralToFloating £temporary461 n
	fild dword [rbp + 32]

 ldexp$5:
	; Parameter double £temporary461 68
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
	; GetReturnValue £temporary462

 ldexp$9:
	; SignedMultiply £temporary463 x £temporary462
	fmul

 ldexp$10:
	; Return £temporary463
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldexp$11:
	; FunctionEnd ldexp

section .data

float8$0.6931471805599453094172321#:
	; Initializer Double 0.6931471805599453094172321
	dq 0.6931471805599453094172321

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .text

 @1830$log2:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @1830$log2$1:
	; PushFloat x
	fld qword [rbp + 24]

 @1830$log2$2:
	; Parameter double x 56
	fstp qword [rbp + 56]

 @1830$log2$3:
	; Call log 32 0
	mov qword [rbp + 32], @1830$log2$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp log

 @1830$log2$4:
	; PostCall 32

 @1830$log2$5:
	; GetReturnValue £temporary466

 @1830$log2$6:
	; PushFloat 0.6931471805599453094172321
	fld qword [float8$0.6931471805599453094172321#]

 @1830$log2$7:
	; SignedDivide £temporary467 £temporary466 0.6931471805599453094172321
	fdiv

 @1830$log2$8:
	; FloatingToIntegral £temporary468 £temporary467
	fistp dword [container4bytes#]
	mov ebx, [container4bytes#]

 @1830$log2$9:
	; Return £temporary468
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @1830$log2$10:
	; FunctionEnd log2

section .text

 frexp:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$1:
	; PushFloat 0
	fldz

 frexp$2:
	; Equal 31 x 0
	fcompp
	fstsw ax
	sahf
	je frexp$31

 frexp$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 frexp$4:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 frexp$5:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$6:
	; Parameter double x 64
	fstp qword [rbp + 64]

 frexp$7:
	; Call fabs 40 0
	mov qword [rbp + 40], frexp$8
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

 frexp$8:
	; PostCall 40

 frexp$9:
	; GetReturnValue £temporary471

 frexp$10:
	; Parameter double £temporary471 64
	fstp qword [rbp + 64]

 frexp$11:
	; Call log2 40 0
	mov qword [rbp + 40], frexp$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp @1830$log2

 frexp$12:
	; PostCall 40

 frexp$13:
	; GetReturnValue £temporary472

 frexp$14:
	; BinaryAdd £temporary473 £temporary472 1
	inc ebx

 frexp$15:
	; IntegralToIntegral £temporary474 £temporary473

 frexp$16:
	; Assign exponent £temporary474
	mov [rbp + 40], ebx

 frexp$17:
	; Equal 20 p 0
	cmp qword [rbp + 32], 0
	je frexp$20

 frexp$18:
	; Dereference £temporary476 -> p p 0
	mov rsi, [rbp + 32]

 frexp$19:
	; Assign £temporary476 -> p exponent
	mov eax, [rbp + 40]
	mov [rsi], eax

 frexp$20:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$21:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 44]

 frexp$22:
	; PushFloat 2
	fld qword [float8$2#]

 frexp$23:
	; Parameter double 2 68
	fstp qword [rbp + 76]

 frexp$24:
	; IntegralToFloating £temporary477 exponent
	fild dword [rbp + 40]

 frexp$25:
	; Parameter double £temporary477 76
	fstp qword [rbp + 84]

 frexp$26:
	; Call pow 44 0
	mov qword [rbp + 52], frexp$27
	mov [rbp + 60], rbp
	add rbp, 52
	jmp pow

 frexp$27:
	; PostCall 44
	fstp qword [rbp + 52]
	fld qword [rbp + 44]
	fld qword [rbp + 52]

 frexp$28:
	; GetReturnValue £temporary478

 frexp$29:
	; SignedDivide £temporary479 x £temporary478
	fdiv

 frexp$30:
	; Return £temporary479
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$31:
	; Equal 34 p 0
	cmp qword [rbp + 32], 0
	je frexp$34

 frexp$32:
	; Dereference £temporary481 -> p p 0
	mov rsi, [rbp + 32]

 frexp$33:
	; Assign £temporary481 -> p 0
	mov dword [rsi], 0

 frexp$34:
	; PushFloat 0
	fldz

 frexp$35:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$36:
	; FunctionEnd frexp

section .text

 sqrt:
	; PushFloat x
	fld qword [rbp + 24]

 sqrt$1:
	; PushFloat 0
	fldz

 sqrt$2:
	; SignedLessThan 28 x 0
	fcompp
	fstsw ax
	sahf
	ja sqrt$28

 sqrt$3:
	; PushFloat 1
	fld1

 sqrt$4:
	; PopFloat root_i_plus_1
	fstp qword [rbp + 40]

 sqrt$5:
	; PushFloat root_i_plus_1
	fld qword [rbp + 40]

 sqrt$6:
	; PopFloat root_i
	fstp qword [rbp + 32]

 sqrt$7:
	; PushFloat root_i
	fld qword [rbp + 32]

 sqrt$8:
	; PushFloat x
	fld qword [rbp + 24]

 sqrt$9:
	; PushFloat root_i
	fld qword [rbp + 32]

 sqrt$10:
	; SignedDivide £temporary487 x root_i
	fdiv

 sqrt$11:
	; BinaryAdd £temporary488 root_i £temporary487
	fadd

 sqrt$12:
	; PushFloat 2
	fld qword [float8$2#]

 sqrt$13:
	; SignedDivide £temporary489 £temporary488 2
	fdiv

 sqrt$14:
	; PopFloat root_i_plus_1
	fstp qword [rbp + 40]

 sqrt$15:
	; CheckTrackMapFloatStack

 sqrt$16:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sqrt$17:
	; PushFloat root_i_plus_1
	fld qword [rbp + 40]

 sqrt$18:
	; PushFloat root_i
	fld qword [rbp + 32]

 sqrt$19:
	; BinarySubtract £temporary490 root_i_plus_1 root_i
	fsub

 sqrt$20:
	; Parameter double £temporary490 72
	fstp qword [rbp + 72]

 sqrt$21:
	; Call fabs 48 0
	mov qword [rbp + 48], sqrt$22
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 sqrt$22:
	; PostCall 48

 sqrt$23:
	; GetReturnValue £temporary491

 sqrt$24:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 sqrt$25:
	; SignedGreaterThanEqual 5 £temporary491 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe sqrt$5

 sqrt$26:
	; PushFloat root_i_plus_1
	fld qword [rbp + 40]

 sqrt$27:
	; Return root_i_plus_1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sqrt$28:
	; Assign errno 6
	mov dword [errno], 6

 sqrt$29:
	; PushFloat 0
	fldz

 sqrt$30:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sqrt$31:
	; FunctionEnd sqrt

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
	; GetReturnValue £temporary494

 modf$6:
	; PopFloat abs_x
	fstp qword [rbp + 40]

 modf$7:
	; PushFloat abs_x
	fld qword [rbp + 40]

 modf$8:
	; FloatingToIntegral £temporary495 abs_x
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 modf$9:
	; IntegralToFloating £temporary496 £temporary495
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 modf$10:
	; PopFloat integral
	fstp qword [rbp + 48]

 modf$11:
	; PushFloat abs_x
	fld qword [rbp + 40]

 modf$12:
	; PushFloat integral
	fld qword [rbp + 48]

 modf$13:
	; BinarySubtract £temporary497 abs_x integral
	fsub

 modf$14:
	; PopFloat fractional
	fstp qword [rbp + 56]

 modf$15:
	; Equal 26 p 0
	cmp qword [rbp + 32], 0
	je modf$26

 modf$16:
	; Dereference £temporary499 -> p p 0
	mov rsi, [rbp + 32]

 modf$17:
	; PushFloat x
	fld qword [rbp + 24]

 modf$18:
	; PushFloat 0
	fldz

 modf$19:
	; SignedLessThanEqual 23 x 0
	fcompp
	fstsw ax
	sahf
	jae modf$23

 modf$20:
	; PushFloat fractional
	fld qword [rbp + 56]

 modf$21:
	; DecreaseStack

 modf$22:
	; Goto 25
	jmp modf$25

 modf$23:
	; PushFloat fractional
	fld qword [rbp + 56]

 modf$24:
	; UnarySubtract £temporary501 fractional
	fchs

 modf$25:
	; PopFloat £temporary499 -> p
	fstp qword [rsi]

 modf$26:
	; PushFloat x
	fld qword [rbp + 24]

 modf$27:
	; PushFloat 0
	fldz

 modf$28:
	; SignedLessThanEqual 32 x 0
	fcompp
	fstsw ax
	sahf
	jae modf$32

 modf$29:
	; PushFloat integral
	fld qword [rbp + 48]

 modf$30:
	; DecreaseStack

 modf$31:
	; Goto 34
	jmp modf$34

 modf$32:
	; PushFloat integral
	fld qword [rbp + 48]

 modf$33:
	; UnarySubtract £temporary504 integral
	fchs

 modf$34:
	; Return £temporary505
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 modf$35:
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
	; SignedDivide £temporary508 x y
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
	; FloatingToIntegral £temporary509 quotient
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 fmod$11:
	; IntegralToFloating £temporary510 £temporary509
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 fmod$12:
	; BinarySubtract £temporary511 quotient £temporary510
	fsub

 fmod$13:
	; Parameter double £temporary511 72
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
	; GetReturnValue £temporary512

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
	; UnarySubtract £temporary514 remainder
	fchs

 fmod$26:
	; Return £temporary515
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

section .data

float8$6.2831853071795864769252866#:
	; Initializer Double 6.2831853071795864769252866
	dq 6.2831853071795864769252866

section .data

float8$minus1#:
	; Initializer Double -1
	dq -1.0

section .text

 sin:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sin$1:
	; PushFloat x
	fld qword [rbp + 24]

 sin$2:
	; Parameter double x 56
	fstp qword [rbp + 56]

 sin$3:
	; Call fabs 32 0
	mov qword [rbp + 32], sin$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 sin$4:
	; PostCall 32

 sin$5:
	; GetReturnValue £temporary517

 sin$6:
	; PushFloat 6.2831853071795864769252866
	fld qword [float8$6.2831853071795864769252866#]

 sin$7:
	; SignedLessThanEqual 17 £temporary517 6.2831853071795864769252866
	fcompp
	fstsw ax
	sahf
	jae sin$17

 sin$8:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sin$9:
	; PushFloat x
	fld qword [rbp + 24]

 sin$10:
	; Parameter double x 56
	fstp qword [rbp + 56]

 sin$11:
	; PushFloat 6.2831853071795864769252866
	fld qword [float8$6.2831853071795864769252866#]

 sin$12:
	; Parameter double 6.2831853071795864769252866 64
	fstp qword [rbp + 64]

 sin$13:
	; Call fmod 32 0
	mov qword [rbp + 32], sin$14
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fmod

 sin$14:
	; PostCall 32

 sin$15:
	; GetReturnValue £temporary519

 sin$16:
	; PopFloat x
	fstp qword [rbp + 24]

 sin$17:
	; PushFloat 0
	fldz

 sin$18:
	; PopFloat i
	fstp qword [rbp + 32]

 sin$19:
	; PushFloat 0
	fldz

 sin$20:
	; PopFloat sum
	fstp qword [rbp + 48]

 sin$21:
	; PushFloat 1
	fld1

 sin$22:
	; PopFloat sign
	fstp qword [rbp + 56]

 sin$23:
	; PushFloat x
	fld qword [rbp + 24]

 sin$24:
	; PopFloat power
	fstp qword [rbp + 64]

 sin$25:
	; PushFloat 1
	fld1

 sin$26:
	; PopFloat faculty
	fstp qword [rbp + 72]

 sin$27:
	; PushFloat sign
	fld qword [rbp + 56]

 sin$28:
	; PushFloat power
	fld qword [rbp + 64]

 sin$29:
	; SignedMultiply £temporary520 sign power
	fmul

 sin$30:
	; PushFloat faculty
	fld qword [rbp + 72]

 sin$31:
	; SignedDivide £temporary521 £temporary520 faculty
	fdiv

 sin$32:
	; PopFloat term
	fstp qword [rbp + 40]

 sin$33:
	; PushFloat sum
	fld qword [rbp + 48]

 sin$34:
	; PushFloat term
	fld qword [rbp + 40]

 sin$35:
	; BinaryAdd £temporary522 sum term
	fadd

 sin$36:
	; PopFloat sum
	fstp qword [rbp + 48]

 sin$37:
	; PushFloat sign
	fld qword [rbp + 56]

 sin$38:
	; PushFloat -1
	fld qword [float8$minus1#]

 sin$39:
	; SignedMultiply £temporary523 sign -1
	fmul

 sin$40:
	; PopFloat sign
	fstp qword [rbp + 56]

 sin$41:
	; PushFloat power
	fld qword [rbp + 64]

 sin$42:
	; PushFloat x
	fld qword [rbp + 24]

 sin$43:
	; PushFloat x
	fld qword [rbp + 24]

 sin$44:
	; SignedMultiply £temporary524 x x
	fmul

 sin$45:
	; SignedMultiply £temporary525 power £temporary524
	fmul

 sin$46:
	; PopFloat power
	fstp qword [rbp + 64]

 sin$47:
	; PushFloat faculty
	fld qword [rbp + 72]

 sin$48:
	; PushFloat i
	fld qword [rbp + 32]

 sin$49:
	; PushOne
	fld1

 sin$50:
	; BinaryAdd i i 1
	fadd

 sin$51:
	; TopFloat i
	fst qword [rbp + 32]

 sin$52:
	; PushFloat i
	fld qword [rbp + 32]

 sin$53:
	; PushOne
	fld1

 sin$54:
	; BinaryAdd i i 1
	fadd

 sin$55:
	; TopFloat i
	fst qword [rbp + 32]

 sin$56:
	; SignedMultiply £temporary528 £temporary526 £temporary527
	fmul

 sin$57:
	; SignedMultiply £temporary529 faculty £temporary528
	fmul

 sin$58:
	; PopFloat faculty
	fstp qword [rbp + 72]

 sin$59:
	; CheckTrackMapFloatStack

 sin$60:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sin$61:
	; PushFloat term
	fld qword [rbp + 40]

 sin$62:
	; Parameter double term 104
	fstp qword [rbp + 104]

 sin$63:
	; Call fabs 80 0
	mov qword [rbp + 80], sin$64
	mov [rbp + 88], rbp
	add rbp, 80
	jmp fabs

 sin$64:
	; PostCall 80

 sin$65:
	; GetReturnValue £temporary530

 sin$66:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 sin$67:
	; SignedGreaterThanEqual 27 £temporary530 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe sin$27

 sin$68:
	; PushFloat sum
	fld qword [rbp + 48]

 sin$69:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sin$70:
	; FunctionEnd sin

section .text

 cos:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 cos$1:
	; PushFloat x
	fld qword [rbp + 24]

 cos$2:
	; Parameter double x 56
	fstp qword [rbp + 56]

 cos$3:
	; Call fabs 32 0
	mov qword [rbp + 32], cos$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 cos$4:
	; PostCall 32

 cos$5:
	; GetReturnValue £temporary536

 cos$6:
	; PushFloat 6.2831853071795864769252866
	fld qword [float8$6.2831853071795864769252866#]

 cos$7:
	; SignedLessThanEqual 17 £temporary536 6.2831853071795864769252866
	fcompp
	fstsw ax
	sahf
	jae cos$17

 cos$8:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 cos$9:
	; PushFloat x
	fld qword [rbp + 24]

 cos$10:
	; Parameter double x 56
	fstp qword [rbp + 56]

 cos$11:
	; PushFloat 6.2831853071795864769252866
	fld qword [float8$6.2831853071795864769252866#]

 cos$12:
	; Parameter double 6.2831853071795864769252866 64
	fstp qword [rbp + 64]

 cos$13:
	; Call fmod 32 0
	mov qword [rbp + 32], cos$14
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fmod

 cos$14:
	; PostCall 32

 cos$15:
	; GetReturnValue £temporary538

 cos$16:
	; PopFloat x
	fstp qword [rbp + 24]

 cos$17:
	; PushFloat 0
	fldz

 cos$18:
	; PopFloat i
	fstp qword [rbp + 32]

 cos$19:
	; PushFloat 0
	fldz

 cos$20:
	; PopFloat sum
	fstp qword [rbp + 48]

 cos$21:
	; PushFloat 1
	fld1

 cos$22:
	; PopFloat sign
	fstp qword [rbp + 56]

 cos$23:
	; PushFloat 1
	fld1

 cos$24:
	; PopFloat power
	fstp qword [rbp + 64]

 cos$25:
	; PushFloat 1
	fld1

 cos$26:
	; PopFloat faculty
	fstp qword [rbp + 72]

 cos$27:
	; PushFloat sign
	fld qword [rbp + 56]

 cos$28:
	; PushFloat power
	fld qword [rbp + 64]

 cos$29:
	; SignedMultiply £temporary539 sign power
	fmul

 cos$30:
	; PushFloat faculty
	fld qword [rbp + 72]

 cos$31:
	; SignedDivide £temporary540 £temporary539 faculty
	fdiv

 cos$32:
	; PopFloat term
	fstp qword [rbp + 40]

 cos$33:
	; PushFloat sum
	fld qword [rbp + 48]

 cos$34:
	; PushFloat term
	fld qword [rbp + 40]

 cos$35:
	; BinaryAdd £temporary541 sum term
	fadd

 cos$36:
	; PopFloat sum
	fstp qword [rbp + 48]

 cos$37:
	; PushFloat sign
	fld qword [rbp + 56]

 cos$38:
	; PushFloat -1
	fld qword [float8$minus1#]

 cos$39:
	; SignedMultiply £temporary542 sign -1
	fmul

 cos$40:
	; PopFloat sign
	fstp qword [rbp + 56]

 cos$41:
	; PushFloat power
	fld qword [rbp + 64]

 cos$42:
	; PushFloat x
	fld qword [rbp + 24]

 cos$43:
	; PushFloat x
	fld qword [rbp + 24]

 cos$44:
	; SignedMultiply £temporary543 x x
	fmul

 cos$45:
	; SignedMultiply £temporary544 power £temporary543
	fmul

 cos$46:
	; PopFloat power
	fstp qword [rbp + 64]

 cos$47:
	; PushFloat faculty
	fld qword [rbp + 72]

 cos$48:
	; PushFloat i
	fld qword [rbp + 32]

 cos$49:
	; PushOne
	fld1

 cos$50:
	; BinaryAdd i i 1
	fadd

 cos$51:
	; TopFloat i
	fst qword [rbp + 32]

 cos$52:
	; PushFloat i
	fld qword [rbp + 32]

 cos$53:
	; PushOne
	fld1

 cos$54:
	; BinaryAdd i i 1
	fadd

 cos$55:
	; TopFloat i
	fst qword [rbp + 32]

 cos$56:
	; SignedMultiply £temporary547 £temporary545 £temporary546
	fmul

 cos$57:
	; SignedMultiply £temporary548 faculty £temporary547
	fmul

 cos$58:
	; PopFloat faculty
	fstp qword [rbp + 72]

 cos$59:
	; CheckTrackMapFloatStack

 cos$60:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 cos$61:
	; PushFloat term
	fld qword [rbp + 40]

 cos$62:
	; Parameter double term 104
	fstp qword [rbp + 104]

 cos$63:
	; Call fabs 80 0
	mov qword [rbp + 80], cos$64
	mov [rbp + 88], rbp
	add rbp, 80
	jmp fabs

 cos$64:
	; PostCall 80

 cos$65:
	; GetReturnValue £temporary549

 cos$66:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 cos$67:
	; SignedGreaterThanEqual 27 £temporary549 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe cos$27

 cos$68:
	; PushFloat sum
	fld qword [rbp + 48]

 cos$69:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 cos$70:
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
	; GetReturnValue £temporary555

 tan$6:
	; PopFloat cos_x
	fstp qword [rbp + 32]

 tan$7:
	; PushFloat cos_x
	fld qword [rbp + 32]

 tan$8:
	; PushFloat 0
	fldz

 tan$9:
	; Equal 19 cos_x 0
	fcompp
	fstsw ax
	sahf
	je tan$19

 tan$10:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tan$11:
	; PushFloat x
	fld qword [rbp + 24]

 tan$12:
	; Parameter double x 64
	fstp qword [rbp + 64]

 tan$13:
	; Call sin 40 0
	mov qword [rbp + 40], tan$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sin

 tan$14:
	; PostCall 40

 tan$15:
	; GetReturnValue £temporary557

 tan$16:
	; PushFloat cos_x
	fld qword [rbp + 32]

 tan$17:
	; SignedDivide £temporary558 £temporary557 cos_x
	fdiv

 tan$18:
	; Return £temporary558
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tan$19:
	; Assign errno 6
	mov dword [errno], 6

 tan$20:
	; PushFloat 0
	fldz

 tan$21:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tan$22:
	; FunctionEnd tan

section .data

float8$1.57079632679489661923132165#:
	; Initializer Double 1.57079632679489661923132165
	dq 1.57079632679489661923132165

section .data

float8$minus1.57079632679489661923132165#:
	; Initializer Double -1.57079632679489661923132165
	dq -1.57079632679489661923132165

section .text

 asin:
	; PushFloat x
	fld qword [rbp + 24]

 asin$1:
	; PushFloat 1
	fld1

 asin$2:
	; NotEqual 5 x 1
	fcompp
	fstsw ax
	sahf
	jne asin$5

 asin$3:
	; PushFloat 1.57079632679489661923132165
	fld qword [float8$1.57079632679489661923132165#]

 asin$4:
	; Return 1.57079632679489661923132165
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$5:
	; PushFloat x
	fld qword [rbp + 24]

 asin$6:
	; PushFloat -1
	fld qword [float8$minus1#]

 asin$7:
	; NotEqual 10 x -1
	fcompp
	fstsw ax
	sahf
	jne asin$10

 asin$8:
	; PushFloat -1.57079632679489661923132165
	fld qword [float8$minus1.57079632679489661923132165#]

 asin$9:
	; Return -1.57079632679489661923132165
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$10:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin$11:
	; PushFloat x
	fld qword [rbp + 24]

 asin$12:
	; Parameter double x 56
	fstp qword [rbp + 56]

 asin$13:
	; Call fabs 32 0
	mov qword [rbp + 32], asin$14
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 asin$14:
	; PostCall 32

 asin$15:
	; GetReturnValue £temporary563

 asin$16:
	; PushFloat 1
	fld1

 asin$17:
	; SignedGreaterThanEqual 36 £temporary563 1
	fcompp
	fstsw ax
	sahf
	jbe asin$36

 asin$18:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin$19:
	; PushFloat x
	fld qword [rbp + 24]

 asin$20:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 asin$21:
	; PushFloat 1
	fld1

 asin$22:
	; PushFloat x
	fld qword [rbp + 24]

 asin$23:
	; PushFloat x
	fld qword [rbp + 24]

 asin$24:
	; SignedMultiply £temporary565 x x
	fmul

 asin$25:
	; BinarySubtract £temporary566 1 £temporary565
	fsub

 asin$26:
	; Parameter double £temporary566 56
	fstp qword [rbp + 64]

 asin$27:
	; Call sqrt 32 0
	mov qword [rbp + 40], asin$28
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sqrt

 asin$28:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 asin$29:
	; GetReturnValue £temporary567

 asin$30:
	; SignedDivide £temporary568 x £temporary567
	fdiv

 asin$31:
	; Parameter double £temporary568 56
	fstp qword [rbp + 56]

 asin$32:
	; Call atan 32 0
	mov qword [rbp + 32], asin$33
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan

 asin$33:
	; PostCall 32

 asin$34:
	; GetReturnValue £temporary569

 asin$35:
	; Return £temporary569
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$36:
	; Assign errno 6
	mov dword [errno], 6

 asin$37:
	; PushFloat 0
	fldz

 asin$38:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$39:
	; FunctionEnd asin

section .text

 acos:
	; PushFloat x
	fld qword [rbp + 24]

 acos$1:
	; PushFloat 0
	fldz

 acos$2:
	; NotEqual 5 x 0
	fcompp
	fstsw ax
	sahf
	jne acos$5

 acos$3:
	; PushFloat 1.57079632679489661923132165
	fld qword [float8$1.57079632679489661923132165#]

 acos$4:
	; Return 1.57079632679489661923132165
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$5:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos$6:
	; PushFloat x
	fld qword [rbp + 24]

 acos$7:
	; Parameter double x 56
	fstp qword [rbp + 56]

 acos$8:
	; Call fabs 32 0
	mov qword [rbp + 32], acos$9
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 acos$9:
	; PostCall 32

 acos$10:
	; GetReturnValue £temporary574

 acos$11:
	; PushFloat 1
	fld1

 acos$12:
	; SignedGreaterThanEqual 31 £temporary574 1
	fcompp
	fstsw ax
	sahf
	jbe acos$31

 acos$13:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos$14:
	; PushFloat x
	fld qword [rbp + 24]

 acos$15:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 acos$16:
	; PushFloat 1
	fld1

 acos$17:
	; PushFloat x
	fld qword [rbp + 24]

 acos$18:
	; PushFloat x
	fld qword [rbp + 24]

 acos$19:
	; SignedMultiply £temporary576 x x
	fmul

 acos$20:
	; BinarySubtract £temporary577 1 £temporary576
	fsub

 acos$21:
	; Parameter double £temporary577 56
	fstp qword [rbp + 64]

 acos$22:
	; Call sqrt 32 0
	mov qword [rbp + 40], acos$23
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sqrt

 acos$23:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 acos$24:
	; GetReturnValue £temporary578

 acos$25:
	; SignedDivide £temporary579 x £temporary578
	fdiv

 acos$26:
	; Parameter double £temporary579 56
	fstp qword [rbp + 56]

 acos$27:
	; Call atan 32 0
	mov qword [rbp + 32], acos$28
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan

 acos$28:
	; PostCall 32

 acos$29:
	; GetReturnValue £temporary580

 acos$30:
	; Return £temporary580
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$31:
	; Assign errno 6
	mov dword [errno], 6

 acos$32:
	; PushFloat 0
	fldz

 acos$33:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$34:
	; FunctionEnd acos

section .data

float8$0.5#:
	; Initializer Double 0.5
	dq 0.5

section .text

 atan:
	; PushFloat x
	fld qword [rbp + 24]

 atan$1:
	; PushFloat 0
	fldz

 atan$2:
	; SignedGreaterThanEqual 12 x 0
	fcompp
	fstsw ax
	sahf
	jbe atan$12

 atan$3:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan$4:
	; PushFloat x
	fld qword [rbp + 24]

 atan$5:
	; UnarySubtract £temporary585 x
	fchs

 atan$6:
	; Parameter double £temporary585 56
	fstp qword [rbp + 56]

 atan$7:
	; Call atan 32 0
	mov qword [rbp + 32], atan$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan

 atan$8:
	; PostCall 32

 atan$9:
	; GetReturnValue £temporary586

 atan$10:
	; UnarySubtract £temporary587 £temporary586
	fchs

 atan$11:
	; Return £temporary587
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$12:
	; PushFloat x
	fld qword [rbp + 24]

 atan$13:
	; PushFloat 1
	fld1

 atan$14:
	; SignedLessThanEqual 26 x 1
	fcompp
	fstsw ax
	sahf
	jae atan$26

 atan$15:
	; PushFloat 1.57079632679489661923132165
	fld qword [float8$1.57079632679489661923132165#]

 atan$16:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 atan$17:
	; PushFloat 1
	fld1

 atan$18:
	; PushFloat x
	fld qword [rbp + 24]

 atan$19:
	; SignedDivide £temporary589 1 x
	fdiv

 atan$20:
	; Parameter double £temporary589 56
	fstp qword [rbp + 64]

 atan$21:
	; Call atan 32 0
	mov qword [rbp + 40], atan$22
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan$22:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 atan$23:
	; GetReturnValue £temporary590

 atan$24:
	; BinarySubtract £temporary591 1.57079632679489661923132165 £temporary590
	fsub

 atan$25:
	; Return £temporary591
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$26:
	; PushFloat x
	fld qword [rbp + 24]

 atan$27:
	; PushFloat 0.5
	fld qword [float8$0.5#]

 atan$28:
	; SignedLessThanEqual 51 x 0.5
	fcompp
	fstsw ax
	sahf
	jae atan$51

 atan$29:
	; PushFloat 2
	fld qword [float8$2#]

 atan$30:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 atan$31:
	; PushFloat x
	fld qword [rbp + 24]

 atan$32:
	; PushFloat 1
	fld1

 atan$33:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 3
	fstp qword [rbp + 32]
	fstp qword [rbp + 40]
	fstp qword [rbp + 48]

 atan$34:
	; PushFloat 1
	fld1

 atan$35:
	; PushFloat x
	fld qword [rbp + 24]

 atan$36:
	; PushFloat x
	fld qword [rbp + 24]

 atan$37:
	; SignedMultiply £temporary593 x x
	fmul

 atan$38:
	; BinaryAdd £temporary594 1 £temporary593
	fadd

 atan$39:
	; Parameter double £temporary594 56
	fstp qword [rbp + 88]

 atan$40:
	; Call sqrt 32 0
	mov qword [rbp + 64], atan$41
	mov [rbp + 72], rbp
	add rbp, 64
	jmp sqrt

 atan$41:
	; PostCall 32
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 56]

 atan$42:
	; GetReturnValue £temporary595

 atan$43:
	; BinaryAdd £temporary596 1 £temporary595
	fadd

 atan$44:
	; SignedDivide £temporary597 x £temporary596
	fdiv

 atan$45:
	; Parameter double £temporary597 56
	fstp qword [rbp + 64]

 atan$46:
	; Call atan 32 0
	mov qword [rbp + 40], atan$47
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan$47:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 atan$48:
	; GetReturnValue £temporary598

 atan$49:
	; SignedMultiply £temporary599 2 £temporary598
	fmul

 atan$50:
	; Return £temporary599
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$51:
	; PushFloat 0
	fldz

 atan$52:
	; PopFloat sum
	fstp qword [rbp + 40]

 atan$53:
	; PushFloat 1
	fld1

 atan$54:
	; PopFloat sign
	fstp qword [rbp + 48]

 atan$55:
	; PushFloat 1
	fld1

 atan$56:
	; PopFloat denominator
	fstp qword [rbp + 56]

 atan$57:
	; PushFloat x
	fld qword [rbp + 24]

 atan$58:
	; PopFloat product
	fstp qword [rbp + 64]

 atan$59:
	; PushFloat sign
	fld qword [rbp + 48]

 atan$60:
	; PushFloat product
	fld qword [rbp + 64]

 atan$61:
	; SignedMultiply £temporary600 sign product
	fmul

 atan$62:
	; PushFloat denominator
	fld qword [rbp + 56]

 atan$63:
	; SignedDivide £temporary601 £temporary600 denominator
	fdiv

 atan$64:
	; PopFloat term
	fstp qword [rbp + 32]

 atan$65:
	; PushFloat sum
	fld qword [rbp + 40]

 atan$66:
	; PushFloat term
	fld qword [rbp + 32]

 atan$67:
	; BinaryAdd £temporary602 sum term
	fadd

 atan$68:
	; PopFloat sum
	fstp qword [rbp + 40]

 atan$69:
	; PushFloat sign
	fld qword [rbp + 48]

 atan$70:
	; UnarySubtract £temporary603 sign
	fchs

 atan$71:
	; PopFloat sign
	fstp qword [rbp + 48]

 atan$72:
	; PushFloat product
	fld qword [rbp + 64]

 atan$73:
	; PushFloat x
	fld qword [rbp + 24]

 atan$74:
	; PushFloat x
	fld qword [rbp + 24]

 atan$75:
	; SignedMultiply £temporary604 x x
	fmul

 atan$76:
	; SignedMultiply £temporary605 product £temporary604
	fmul

 atan$77:
	; PopFloat product
	fstp qword [rbp + 64]

 atan$78:
	; PushFloat denominator
	fld qword [rbp + 56]

 atan$79:
	; PushFloat 2
	fld qword [float8$2#]

 atan$80:
	; BinaryAdd £temporary606 denominator 2
	fadd

 atan$81:
	; PopFloat denominator
	fstp qword [rbp + 56]

 atan$82:
	; CheckTrackMapFloatStack

 atan$83:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan$84:
	; PushFloat term
	fld qword [rbp + 32]

 atan$85:
	; Parameter double term 96
	fstp qword [rbp + 96]

 atan$86:
	; Call fabs 72 0
	mov qword [rbp + 72], atan$87
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

 atan$87:
	; PostCall 72

 atan$88:
	; GetReturnValue £temporary607

 atan$89:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 atan$90:
	; SignedGreaterThanEqual 59 £temporary607 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe atan$59

 atan$91:
	; PushFloat sum
	fld qword [rbp + 40]

 atan$92:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$93:
	; FunctionEnd atan

section .text

 atan2:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$1:
	; PushFloat 0
	fldz

 atan2$2:
	; Equal 12 y 0
	fcompp
	fstsw ax
	sahf
	je atan2$12

 atan2$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2$4:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$5:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$6:
	; SignedDivide £temporary615 x y
	fdiv

 atan2$7:
	; Parameter double £temporary615 64
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
	; GetReturnValue £temporary616

 atan2$11:
	; Return £temporary616
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$12:
	; Assign errno 6
	mov dword [errno], 6

 atan2$13:
	; PushFloat 0
	fldz

 atan2$14:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$15:
	; FunctionEnd atan2

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
	; GetReturnValue £temporary618

 sinh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 sinh$7:
	; PushFloat x
	fld qword [rbp + 24]

 sinh$8:
	; UnarySubtract £temporary619 x
	fchs

 sinh$9:
	; Parameter double £temporary619 56
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
	; GetReturnValue £temporary620

 sinh$13:
	; BinarySubtract £temporary621 £temporary618 £temporary620
	fsub

 sinh$14:
	; PushFloat 2
	fld qword [float8$2#]

 sinh$15:
	; SignedDivide £temporary622 £temporary621 2
	fdiv

 sinh$16:
	; Return £temporary622
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
	; GetReturnValue £temporary625

 cosh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 cosh$7:
	; PushFloat x
	fld qword [rbp + 24]

 cosh$8:
	; UnarySubtract £temporary626 x
	fchs

 cosh$9:
	; Parameter double £temporary626 56
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
	; GetReturnValue £temporary627

 cosh$13:
	; BinaryAdd £temporary628 £temporary625 £temporary627
	fadd

 cosh$14:
	; PushFloat 2
	fld qword [float8$2#]

 cosh$15:
	; SignedDivide £temporary629 £temporary628 2
	fdiv

 cosh$16:
	; Return £temporary629
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
	; Call sinh 32 0
	mov qword [rbp + 32], tanh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp sinh

 tanh$4:
	; PostCall 32

 tanh$5:
	; GetReturnValue £temporary632

 tanh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 tanh$7:
	; PushFloat x
	fld qword [rbp + 24]

 tanh$8:
	; Parameter double x 56
	fstp qword [rbp + 64]

 tanh$9:
	; Call cosh 32 0
	mov qword [rbp + 40], tanh$10
	mov [rbp + 48], rbp
	add rbp, 40
	jmp cosh

 tanh$10:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 tanh$11:
	; GetReturnValue £temporary633

 tanh$12:
	; SignedDivide £temporary634 £temporary632 £temporary633
	fdiv

 tanh$13:
	; Return £temporary634
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tanh$14:
	; FunctionEnd tanh

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
	; UnarySubtract £temporary638 x
	fchs

 floor$6:
	; Parameter double £temporary638 56
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
	; GetReturnValue £temporary639

 floor$10:
	; UnarySubtract £temporary640 £temporary639
	fchs

 floor$11:
	; Return £temporary640
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$12:
	; PushFloat x
	fld qword [rbp + 24]

 floor$13:
	; FloatingToIntegral £temporary641 x
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 floor$14:
	; IntegralToFloating £temporary642 £temporary641
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 floor$15:
	; Return £temporary642
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
	; UnarySubtract £temporary645 x
	fchs

 ceil$6:
	; Parameter double £temporary645 56
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
	; GetReturnValue £temporary646

 ceil$10:
	; UnarySubtract £temporary647 £temporary646
	fchs

 ceil$11:
	; Return £temporary647
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
	; BinaryAdd £temporary648 x 0.999999999999
	fadd

 ceil$15:
	; FloatingToIntegral £temporary649 £temporary648
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 ceil$16:
	; IntegralToFloating £temporary650 £temporary649
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 ceil$17:
	; Return £temporary650
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
	; BinarySubtract £temporary653 x 0.5
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
	; BinaryAdd £temporary654 x 0.5
	fadd

 round$11:
	; FloatingToIntegral £temporary656 £temporary655
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 round$12:
	; IntegralToFloating £temporary657 £temporary656
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 round$13:
	; Return £temporary657
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
	; UnarySubtract £temporary659 x
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
	; Return £temporary660
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fabs$9:
	; FunctionEnd fabs
