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
	; PushFloat 1
	fld1

 exp$1:
	; PopFloat index
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
	; SignedDivide £temporary385 power faculty
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
	; BinaryAdd £temporary386 sum term
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
	; SignedMultiply £temporary387 power x
	fmul

 exp$19:
	; PopFloat power
	fstp qword [rbp + 64]

 exp$20:
	; PushFloat faculty
	fld qword [rbp + 56]

 exp$21:
	; PushFloat index
	fld qword [rbp + 32]

 exp$22:
	; PushOne
	fld1

 exp$23:
	; BinaryAdd index index 1
	fadd

 exp$24:
	; TopFloat index
	fst qword [rbp + 32]

 exp$25:
	; SignedMultiply £temporary389 faculty £temporary388
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
	; GetReturnValue £temporary390

 exp$34:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 exp$35:
	; SignedGreaterThanEqual 8 £temporary390 0.000000001
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

float8$2.718281828#:
	; Initializer Double 2.718281828
	dq 2.718281828

section .data

float8$0.3678794412335673385519170678#:
	; Initializer Double 0.3678794412335673385519170678
	dq 0.3678794412335673385519170678

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
	; SignedLessThanEqual 76 x 0
	fcompp
	fstsw ax
	sahf
	jae log$76

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
	; PushFloat 2.718281828
	fld qword [float8$2.718281828#]

 log$12:
	; SignedDivide £temporary396 x 2.718281828
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
	; PushFloat 0.3678794412335673385519170678
	fld qword [float8$0.3678794412335673385519170678#]

 log$18:
	; SignedGreaterThanEqual 28 x 0.3678794412335673385519170678
	fcompp
	fstsw ax
	sahf
	jbe log$28

 log$19:
	; PushFloat x
	fld qword [rbp + 24]

 log$20:
	; PushFloat 0.3678794412335673385519170678
	fld qword [float8$0.3678794412335673385519170678#]

 log$21:
	; SignedGreaterThanEqual 28 x 0.3678794412335673385519170678
	fcompp
	fstsw ax
	sahf
	jbe log$28

 log$22:
	; PushFloat x
	fld qword [rbp + 24]

 log$23:
	; PushFloat 2.718281828
	fld qword [float8$2.718281828#]

 log$24:
	; SignedMultiply £temporary400 x 2.718281828
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
	; PopFloat index
	fstp qword [rbp + 36]

 log$30:
	; PushFloat 0
	fldz

 log$31:
	; PopFloat sum
	fstp qword [rbp + 52]

 log$32:
	; PushFloat 1
	fld1

 log$33:
	; PopFloat sign
	fstp qword [rbp + 60]

 log$34:
	; PushFloat x
	fld qword [rbp + 24]

 log$35:
	; PushFloat 1
	fld1

 log$36:
	; BinarySubtract £temporary402 x 1
	fsub

 log$37:
	; PopFloat x_minus_1
	fstp qword [rbp + 68]

 log$38:
	; PushFloat x_minus_1
	fld qword [rbp + 68]

 log$39:
	; PopFloat power
	fstp qword [rbp + 76]

 log$40:
	; PushFloat sign
	fld qword [rbp + 60]

 log$41:
	; PushFloat power
	fld qword [rbp + 76]

 log$42:
	; SignedMultiply £temporary403 sign power
	fmul

 log$43:
	; PushFloat index
	fld qword [rbp + 36]

 log$44:
	; PushOne
	fld1

 log$45:
	; BinaryAdd index index 1
	fadd

 log$46:
	; TopFloat index
	fst qword [rbp + 36]

 log$47:
	; PushOne
	fld1

 log$48:
	; BinarySubtract index index 1
	fsub

 log$49:
	; SignedDivide £temporary405 £temporary403 £temporary404
	fdiv

 log$50:
	; PopFloat term
	fstp qword [rbp + 44]

 log$51:
	; PushFloat sum
	fld qword [rbp + 52]

 log$52:
	; PushFloat term
	fld qword [rbp + 44]

 log$53:
	; BinaryAdd £temporary406 sum term
	fadd

 log$54:
	; PopFloat sum
	fstp qword [rbp + 52]

 log$55:
	; PushFloat power
	fld qword [rbp + 76]

 log$56:
	; PushFloat x_minus_1
	fld qword [rbp + 68]

 log$57:
	; SignedMultiply £temporary407 power x_minus_1
	fmul

 log$58:
	; PopFloat power
	fstp qword [rbp + 76]

 log$59:
	; PushFloat sign
	fld qword [rbp + 60]

 log$60:
	; PushFloat -1.0
	fld qword [float8$minus1.0#]

 log$61:
	; SignedMultiply £temporary408 sign -1.0
	fmul

 log$62:
	; PopFloat sign
	fstp qword [rbp + 60]

 log$63:
	; CheckTrackMapFloatStack

 log$64:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 log$65:
	; PushFloat term
	fld qword [rbp + 44]

 log$66:
	; Parameter double term 108
	fstp qword [rbp + 108]

 log$67:
	; Call fabs 84 0
	mov qword [rbp + 84], log$68
	mov [rbp + 92], rbp
	add rbp, 84
	jmp fabs

 log$68:
	; PostCall 84

 log$69:
	; GetReturnValue £temporary409

 log$70:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 log$71:
	; SignedGreaterThanEqual 40 £temporary409 0.000000001
	fcompp
	fstsw ax
	sahf
	jbe log$40

 log$72:
	; PushFloat sum
	fld qword [rbp + 52]

 log$73:
	; IntegralToFloating £temporary411 n
	fild dword [rbp + 32]

 log$74:
	; BinaryAdd £temporary412 sum £temporary411
	fadd

 log$75:
	; Return £temporary412
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$76:
	; Assign errno 6
	mov dword [errno], 6

 log$77:
	; PushFloat 0
	fldz

 log$78:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$79:
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
	; GetReturnValue £temporary414

 log10$6:
	; PushFloat 2.3025850929940456840179914
	fld qword [float8$2.3025850929940456840179914#]

 log10$7:
	; SignedDivide £temporary415 £temporary414 2.3025850929940456840179914
	fdiv

 log10$8:
	; Return £temporary415
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
	; GetReturnValue £temporary418

 pow$11:
	; SignedMultiply £temporary419 y £temporary418
	fmul

 pow$12:
	; Parameter double £temporary419 64
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
	; GetReturnValue £temporary420

 pow$16:
	; Return £temporary420
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
	; NotEqual 25 y 0
	fcompp
	fstsw ax
	sahf
	jne pow$25

 pow$23:
	; PushFloat 1
	fld1

 pow$24:
	; Return 1
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
	; NotEqual 33 x 0
	fcompp
	fstsw ax
	sahf
	jne pow$33

 pow$28:
	; PushFloat y
	fld qword [rbp + 32]

 pow$29:
	; PushFloat 0
	fldz

 pow$30:
	; SignedLessThanEqual 33 y 0
	fcompp
	fstsw ax
	sahf
	jae pow$33

 pow$31:
	; PushFloat 0
	fldz

 pow$32:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$33:
	; PushFloat x
	fld qword [rbp + 24]

 pow$34:
	; PushFloat 0
	fldz

 pow$35:
	; SignedGreaterThanEqual 85 x 0
	fcompp
	fstsw ax
	sahf
	jbe pow$85

 pow$36:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$37:
	; PushFloat y
	fld qword [rbp + 32]

 pow$38:
	; Parameter double y 64
	fstp qword [rbp + 64]

 pow$39:
	; Call floor 40 0
	mov qword [rbp + 40], pow$40
	mov [rbp + 48], rbp
	add rbp, 40
	jmp floor

 pow$40:
	; PostCall 40

 pow$41:
	; GetReturnValue £temporary428

 pow$42:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 pow$43:
	; PushFloat y
	fld qword [rbp + 32]

 pow$44:
	; Parameter double y 64
	fstp qword [rbp + 72]

 pow$45:
	; Call ceil 40 0
	mov qword [rbp + 48], pow$46
	mov [rbp + 56], rbp
	add rbp, 48
	jmp ceil

 pow$46:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 pow$47:
	; GetReturnValue £temporary429

 pow$48:
	; NotEqual 85 £temporary428 £temporary429
	fcompp
	fstsw ax
	sahf
	jne pow$85

 pow$49:
	; PushFloat y
	fld qword [rbp + 32]

 pow$50:
	; FloatingToIntegral £temporary432 y
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 pow$51:
	; Assign long_y £temporary432
	mov [rbp + 40], rax

 pow$52:
	; SignedModulo £temporary433 long_y 2
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [int8$2#]

 pow$53:
	; NotEqual 69 £temporary433 0
	cmp rdx, 0
	jne pow$69

 pow$54:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$55:
	; PushFloat y
	fld qword [rbp + 32]

 pow$56:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 48]

 pow$57:
	; PushFloat x
	fld qword [rbp + 24]

 pow$58:
	; UnarySubtract £temporary435 x
	fchs

 pow$59:
	; Parameter double £temporary435 72
	fstp qword [rbp + 80]

 pow$60:
	; Call log 48 0
	mov qword [rbp + 56], pow$61
	mov [rbp + 64], rbp
	add rbp, 56
	jmp log

 pow$61:
	; PostCall 48
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 pow$62:
	; GetReturnValue £temporary436

 pow$63:
	; SignedMultiply £temporary437 y £temporary436
	fmul

 pow$64:
	; Parameter double £temporary437 72
	fstp qword [rbp + 72]

 pow$65:
	; Call exp 48 0
	mov qword [rbp + 48], pow$66
	mov [rbp + 56], rbp
	add rbp, 48
	jmp exp

 pow$66:
	; PostCall 48

 pow$67:
	; GetReturnValue £temporary438

 pow$68:
	; Return £temporary438
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$69:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$70:
	; PushFloat y
	fld qword [rbp + 32]

 pow$71:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 48]

 pow$72:
	; PushFloat x
	fld qword [rbp + 24]

 pow$73:
	; UnarySubtract £temporary439 x
	fchs

 pow$74:
	; Parameter double £temporary439 72
	fstp qword [rbp + 80]

 pow$75:
	; Call log 48 0
	mov qword [rbp + 56], pow$76
	mov [rbp + 64], rbp
	add rbp, 56
	jmp log

 pow$76:
	; PostCall 48
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 pow$77:
	; GetReturnValue £temporary440

 pow$78:
	; SignedMultiply £temporary441 y £temporary440
	fmul

 pow$79:
	; Parameter double £temporary441 72
	fstp qword [rbp + 72]

 pow$80:
	; Call exp 48 0
	mov qword [rbp + 48], pow$81
	mov [rbp + 56], rbp
	add rbp, 48
	jmp exp

 pow$81:
	; PostCall 48

 pow$82:
	; GetReturnValue £temporary442

 pow$83:
	; UnarySubtract £temporary443 £temporary442
	fchs

 pow$84:
	; Return £temporary443
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$85:
	; Assign errno 6
	mov dword [errno], 6

 pow$86:
	; PushFloat 0
	fldz

 pow$87:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$88:
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

float8$0.6931471805599453094172321#:
	; Initializer Double 0.6931471805599453094172321
	dq 0.6931471805599453094172321

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .text

 @1665$log2:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @1665$log2$1:
	; PushFloat x
	fld qword [rbp + 24]

 @1665$log2$2:
	; Parameter double x 56
	fstp qword [rbp + 56]

 @1665$log2$3:
	; Call log 32 0
	mov qword [rbp + 32], @1665$log2$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp log

 @1665$log2$4:
	; PostCall 32

 @1665$log2$5:
	; GetReturnValue £temporary457

 @1665$log2$6:
	; PushFloat 0.6931471805599453094172321
	fld qword [float8$0.6931471805599453094172321#]

 @1665$log2$7:
	; SignedDivide £temporary458 £temporary457 0.6931471805599453094172321
	fdiv

 @1665$log2$8:
	; FloatingToIntegral £temporary459 £temporary458
	fistp dword [container4bytes#]
	mov ebx, [container4bytes#]

 @1665$log2$9:
	; Return £temporary459
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @1665$log2$10:
	; FunctionEnd log2

section .text

 frexp:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$1:
	; PushFloat 0
	fldz

 frexp$2:
	; Equal 41 x 0
	fcompp
	fstsw ax
	sahf
	je frexp$41

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
	; GetReturnValue £temporary462

 frexp$10:
	; Parameter double £temporary462 64
	fstp qword [rbp + 64]

 frexp$11:
	; Call log2 40 0
	mov qword [rbp + 40], frexp$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp @1665$log2

 frexp$12:
	; PostCall 40

 frexp$13:
	; GetReturnValue £temporary463

 frexp$14:
	; IntegralToIntegral £temporary464 £temporary463

 frexp$15:
	; Assign exponent £temporary464
	mov [rbp + 40], ebx

 frexp$16:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 frexp$17:
	; PushFloat 2
	fld qword [float8$2#]

 frexp$18:
	; Parameter double 2 68
	fstp qword [rbp + 68]

 frexp$19:
	; IntegralToFloating £temporary465 exponent
	fild dword [rbp + 40]

 frexp$20:
	; Parameter double £temporary465 76
	fstp qword [rbp + 76]

 frexp$21:
	; Call pow 44 0
	mov qword [rbp + 44], frexp$22
	mov [rbp + 52], rbp
	add rbp, 44
	jmp pow

 frexp$22:
	; PostCall 44

 frexp$23:
	; GetReturnValue £temporary466

 frexp$24:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$25:
	; SignedGreaterThanEqual 27 £temporary466 x
	fcompp
	fstsw ax
	sahf
	jbe frexp$27

 frexp$26:
	; BinaryAdd exponent exponent 1
	inc dword [rbp + 40]

 frexp$27:
	; Equal 30 p 0
	cmp qword [rbp + 32], 0
	je frexp$30

 frexp$28:
	; Dereference £temporary470 -> p p 0
	mov rsi, [rbp + 32]

 frexp$29:
	; Assign £temporary470 -> p exponent
	mov eax, [rbp + 40]
	mov [rsi], eax

 frexp$30:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$31:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 44]

 frexp$32:
	; PushFloat 2
	fld qword [float8$2#]

 frexp$33:
	; Parameter double 2 68
	fstp qword [rbp + 76]

 frexp$34:
	; IntegralToFloating £temporary471 exponent
	fild dword [rbp + 40]

 frexp$35:
	; Parameter double £temporary471 76
	fstp qword [rbp + 84]

 frexp$36:
	; Call pow 44 0
	mov qword [rbp + 52], frexp$37
	mov [rbp + 60], rbp
	add rbp, 52
	jmp pow

 frexp$37:
	; PostCall 44
	fstp qword [rbp + 52]
	fld qword [rbp + 44]
	fld qword [rbp + 52]

 frexp$38:
	; GetReturnValue £temporary472

 frexp$39:
	; SignedDivide £temporary473 x £temporary472
	fdiv

 frexp$40:
	; Return £temporary473
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$41:
	; Equal 44 p 0
	cmp qword [rbp + 32], 0
	je frexp$44

 frexp$42:
	; Dereference £temporary475 -> p p 0
	mov rsi, [rbp + 32]

 frexp$43:
	; Assign £temporary475 -> p 0
	mov dword [rsi], 0

 frexp$44:
	; PushFloat 0
	fldz

 frexp$45:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$46:
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
	; SignedDivide £temporary483 x root_i
	fdiv

 sqrt$11:
	; BinaryAdd £temporary484 root_i £temporary483
	fadd

 sqrt$12:
	; PushFloat 2
	fld qword [float8$2#]

 sqrt$13:
	; SignedDivide £temporary485 £temporary484 2
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
	; BinarySubtract £temporary486 root_i_plus_1 root_i
	fsub

 sqrt$20:
	; Parameter double £temporary486 72
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
	; GetReturnValue £temporary487

 sqrt$24:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 sqrt$25:
	; SignedGreaterThanEqual 5 £temporary487 0.000000001
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
	; GetReturnValue £temporary490

 modf$6:
	; PopFloat abs_x
	fstp qword [rbp + 40]

 modf$7:
	; PushFloat abs_x
	fld qword [rbp + 40]

 modf$8:
	; FloatingToIntegral £temporary491 abs_x
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 modf$9:
	; IntegralToFloating £temporary492 £temporary491
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
	; BinarySubtract £temporary493 abs_x integral
	fsub

 modf$14:
	; PopFloat fractional
	fstp qword [rbp + 56]

 modf$15:
	; Equal 26 p 0
	cmp qword [rbp + 32], 0
	je modf$26

 modf$16:
	; Dereference £temporary495 -> p p 0
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
	; PushFloat integral
	fld qword [rbp + 48]

 modf$21:
	; DecreaseStack

 modf$22:
	; Goto 25
	jmp modf$25

 modf$23:
	; PushFloat integral
	fld qword [rbp + 48]

 modf$24:
	; UnarySubtract £temporary497 integral
	fchs

 modf$25:
	; PopFloat £temporary495 -> p
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
	; PushFloat fractional
	fld qword [rbp + 56]

 modf$30:
	; DecreaseStack

 modf$31:
	; Goto 34
	jmp modf$34

 modf$32:
	; PushFloat fractional
	fld qword [rbp + 56]

 modf$33:
	; UnarySubtract £temporary500 fractional
	fchs

 modf$34:
	; Return £temporary501
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
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fmod$4:
	; PushFloat x
	fld qword [rbp + 24]

 fmod$5:
	; PushFloat y
	fld qword [rbp + 32]

 fmod$6:
	; PushFloat x
	fld qword [rbp + 24]

 fmod$7:
	; PushFloat y
	fld qword [rbp + 32]

 fmod$8:
	; SignedDivide £temporary504 x y
	fdiv

 fmod$9:
	; FloatingToIntegral £temporary505 £temporary504
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 fmod$10:
	; IntegralToFloating £temporary506 £temporary505
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 fmod$11:
	; SignedMultiply £temporary507 y £temporary506
	fmul

 fmod$12:
	; BinarySubtract £temporary508 x £temporary507
	fsub

 fmod$13:
	; Parameter double £temporary508 64
	fstp qword [rbp + 64]

 fmod$14:
	; Call fabs 40 0
	mov qword [rbp + 40], fmod$15
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

 fmod$15:
	; PostCall 40

 fmod$16:
	; GetReturnValue £temporary509

 fmod$17:
	; PopFloat remainder
	fstp qword [rbp + 40]

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
	fld qword [rbp + 40]

 fmod$22:
	; DecreaseStack

 fmod$23:
	; Goto 26
	jmp fmod$26

 fmod$24:
	; PushFloat remainder
	fld qword [rbp + 40]

 fmod$25:
	; UnarySubtract £temporary511 remainder
	fchs

 fmod$26:
	; Return £temporary512
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

float8$6.283185306#:
	; Initializer Double 6.283185306
	dq 6.283185306

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
	; GetReturnValue £temporary514

 sin$6:
	; PushFloat 6.283185306
	fld qword [float8$6.283185306#]

 sin$7:
	; SignedLessThanEqual 17 £temporary514 6.283185306
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
	; PushFloat 6.283185306
	fld qword [float8$6.283185306#]

 sin$12:
	; Parameter double 6.283185306 64
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
	; GetReturnValue £temporary516

 sin$16:
	; PopFloat x
	fstp qword [rbp + 24]

 sin$17:
	; PushFloat 1
	fld1

 sin$18:
	; PopFloat index
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
	; SignedMultiply £temporary517 sign power
	fmul

 sin$30:
	; PushFloat faculty
	fld qword [rbp + 72]

 sin$31:
	; SignedDivide £temporary518 £temporary517 faculty
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
	; BinaryAdd £temporary519 sum term
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
	; SignedMultiply £temporary520 sign -1
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
	; SignedMultiply £temporary521 x x
	fmul

 sin$45:
	; SignedMultiply £temporary522 power £temporary521
	fmul

 sin$46:
	; PopFloat power
	fstp qword [rbp + 64]

 sin$47:
	; PushFloat faculty
	fld qword [rbp + 72]

 sin$48:
	; PushFloat index
	fld qword [rbp + 32]

 sin$49:
	; PushOne
	fld1

 sin$50:
	; BinaryAdd index index 1
	fadd

 sin$51:
	; TopFloat index
	fst qword [rbp + 32]

 sin$52:
	; PushFloat index
	fld qword [rbp + 32]

 sin$53:
	; PushOne
	fld1

 sin$54:
	; BinaryAdd index index 1
	fadd

 sin$55:
	; TopFloat index
	fst qword [rbp + 32]

 sin$56:
	; SignedMultiply £temporary525 £temporary523 £temporary524
	fmul

 sin$57:
	; SignedMultiply £temporary526 faculty £temporary525
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
	; GetReturnValue £temporary527

 sin$66:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 sin$67:
	; SignedGreaterThanEqual 27 £temporary527 0.000000001
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
	; GetReturnValue £temporary533

 cos$6:
	; PushFloat 6.283185306
	fld qword [float8$6.283185306#]

 cos$7:
	; SignedLessThanEqual 17 £temporary533 6.283185306
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
	; PushFloat 6.283185306
	fld qword [float8$6.283185306#]

 cos$12:
	; Parameter double 6.283185306 64
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
	; GetReturnValue £temporary535

 cos$16:
	; PopFloat x
	fstp qword [rbp + 24]

 cos$17:
	; PushFloat 0
	fldz

 cos$18:
	; PopFloat index
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
	; SignedMultiply £temporary536 sign power
	fmul

 cos$30:
	; PushFloat faculty
	fld qword [rbp + 72]

 cos$31:
	; SignedDivide £temporary537 £temporary536 faculty
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
	; BinaryAdd £temporary538 sum term
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
	; SignedMultiply £temporary539 sign -1
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
	; SignedMultiply £temporary540 x x
	fmul

 cos$45:
	; SignedMultiply £temporary541 power £temporary540
	fmul

 cos$46:
	; PopFloat power
	fstp qword [rbp + 64]

 cos$47:
	; PushFloat faculty
	fld qword [rbp + 72]

 cos$48:
	; PushFloat index
	fld qword [rbp + 32]

 cos$49:
	; PushOne
	fld1

 cos$50:
	; BinaryAdd index index 1
	fadd

 cos$51:
	; TopFloat index
	fst qword [rbp + 32]

 cos$52:
	; PushFloat index
	fld qword [rbp + 32]

 cos$53:
	; PushOne
	fld1

 cos$54:
	; BinaryAdd index index 1
	fadd

 cos$55:
	; TopFloat index
	fst qword [rbp + 32]

 cos$56:
	; SignedMultiply £temporary544 £temporary542 £temporary543
	fmul

 cos$57:
	; SignedMultiply £temporary545 faculty £temporary544
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
	; GetReturnValue £temporary546

 cos$66:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 cos$67:
	; SignedGreaterThanEqual 27 £temporary546 0.000000001
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
	; GetReturnValue £temporary552

 tan$6:
	; PopFloat cos_of_x
	fstp qword [rbp + 32]

 tan$7:
	; PushFloat cos_of_x
	fld qword [rbp + 32]

 tan$8:
	; PushFloat 0
	fldz

 tan$9:
	; Equal 19 cos_of_x 0
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
	; GetReturnValue £temporary554

 tan$16:
	; PushFloat cos_of_x
	fld qword [rbp + 32]

 tan$17:
	; SignedDivide £temporary555 £temporary554 cos_of_x
	fdiv

 tan$18:
	; Return £temporary555
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

float8$1.5707963265#:
	; Initializer Double 1.5707963265
	dq 1.5707963265

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
	; PushFloat 1.5707963265
	fld qword [float8$1.5707963265#]

 asin$4:
	; Return 1.5707963265
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$5:
	; PushFloat x
	fld qword [rbp + 24]

 asin$6:
	; PushFloat 0
	fldz

 asin$7:
	; SignedGreaterThanEqual 17 x 0
	fcompp
	fstsw ax
	sahf
	jbe asin$17

 asin$8:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin$9:
	; PushFloat x
	fld qword [rbp + 24]

 asin$10:
	; UnarySubtract £temporary560 x
	fchs

 asin$11:
	; Parameter double £temporary560 56
	fstp qword [rbp + 56]

 asin$12:
	; Call asin 32 0
	mov qword [rbp + 32], asin$13
	mov [rbp + 40], rbp
	add rbp, 32
	jmp asin

 asin$13:
	; PostCall 32

 asin$14:
	; GetReturnValue £temporary561

 asin$15:
	; UnarySubtract £temporary562 £temporary561
	fchs

 asin$16:
	; Return £temporary562
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$17:
	; PushFloat x
	fld qword [rbp + 24]

 asin$18:
	; PushFloat 1
	fld1

 asin$19:
	; SignedGreaterThanEqual 38 x 1
	fcompp
	fstsw ax
	sahf
	jbe asin$38

 asin$20:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin$21:
	; PushFloat x
	fld qword [rbp + 24]

 asin$22:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 asin$23:
	; PushFloat 1
	fld1

 asin$24:
	; PushFloat x
	fld qword [rbp + 24]

 asin$25:
	; PushFloat x
	fld qword [rbp + 24]

 asin$26:
	; SignedMultiply £temporary564 x x
	fmul

 asin$27:
	; BinarySubtract £temporary565 1 £temporary564
	fsub

 asin$28:
	; Parameter double £temporary565 56
	fstp qword [rbp + 64]

 asin$29:
	; Call sqrt 32 0
	mov qword [rbp + 40], asin$30
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sqrt

 asin$30:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 asin$31:
	; GetReturnValue £temporary566

 asin$32:
	; SignedDivide £temporary567 x £temporary566
	fdiv

 asin$33:
	; Parameter double £temporary567 56
	fstp qword [rbp + 56]

 asin$34:
	; Call atan 32 0
	mov qword [rbp + 32], asin$35
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan

 asin$35:
	; PostCall 32

 asin$36:
	; GetReturnValue £temporary568

 asin$37:
	; Return £temporary568
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$38:
	; Assign errno 6
	mov dword [errno], 6

 asin$39:
	; PushFloat 0
	fldz

 asin$40:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$41:
	; FunctionEnd asin

section .data

float8$3.141592653#:
	; Initializer Double 3.141592653
	dq 3.141592653

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
	; PushFloat 1.5707963265
	fld qword [float8$1.5707963265#]

 acos$4:
	; Return 1.5707963265
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$5:
	; PushFloat x
	fld qword [rbp + 24]

 acos$6:
	; PushFloat 0
	fldz

 acos$7:
	; SignedGreaterThanEqual 18 x 0
	fcompp
	fstsw ax
	sahf
	jbe acos$18

 acos$8:
	; PushFloat 3.141592653
	fld qword [float8$3.141592653#]

 acos$9:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 acos$10:
	; PushFloat x
	fld qword [rbp + 24]

 acos$11:
	; UnarySubtract £temporary574 x
	fchs

 acos$12:
	; Parameter double £temporary574 56
	fstp qword [rbp + 64]

 acos$13:
	; Call acos 32 0
	mov qword [rbp + 40], acos$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp acos

 acos$14:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 acos$15:
	; GetReturnValue £temporary575

 acos$16:
	; BinarySubtract £temporary576 3.141592653 £temporary575
	fsub

 acos$17:
	; Return £temporary576
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$18:
	; PushFloat x
	fld qword [rbp + 24]

 acos$19:
	; PushFloat 1
	fld1

 acos$20:
	; SignedGreaterThan 39 x 1
	fcompp
	fstsw ax
	sahf
	jb acos$39

 acos$21:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos$22:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos$23:
	; PushFloat 1
	fld1

 acos$24:
	; PushFloat x
	fld qword [rbp + 24]

 acos$25:
	; PushFloat x
	fld qword [rbp + 24]

 acos$26:
	; SignedMultiply £temporary578 x x
	fmul

 acos$27:
	; BinarySubtract £temporary579 1 £temporary578
	fsub

 acos$28:
	; Parameter double £temporary579 56
	fstp qword [rbp + 56]

 acos$29:
	; Call sqrt 32 0
	mov qword [rbp + 32], acos$30
	mov [rbp + 40], rbp
	add rbp, 32
	jmp sqrt

 acos$30:
	; PostCall 32

 acos$31:
	; GetReturnValue £temporary580

 acos$32:
	; PushFloat x
	fld qword [rbp + 24]

 acos$33:
	; SignedDivide £temporary581 £temporary580 x
	fdiv

 acos$34:
	; Parameter double £temporary581 56
	fstp qword [rbp + 56]

 acos$35:
	; Call atan 32 0
	mov qword [rbp + 32], acos$36
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan

 acos$36:
	; PostCall 32

 acos$37:
	; GetReturnValue £temporary582

 acos$38:
	; Return £temporary582
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$39:
	; Assign errno 6
	mov dword [errno], 6

 acos$40:
	; PushFloat 0
	fldz

 acos$41:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$42:
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
	; UnarySubtract £temporary587 x
	fchs

 atan$6:
	; Parameter double £temporary587 56
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
	; GetReturnValue £temporary588

 atan$10:
	; UnarySubtract £temporary589 £temporary588
	fchs

 atan$11:
	; Return £temporary589
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
	; PushFloat 1.5707963265
	fld qword [float8$1.5707963265#]

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
	; SignedDivide £temporary591 1 x
	fdiv

 atan$20:
	; Parameter double £temporary591 56
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
	; GetReturnValue £temporary592

 atan$24:
	; BinarySubtract £temporary593 1.5707963265 £temporary592
	fsub

 atan$25:
	; Return £temporary593
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
	; SignedMultiply £temporary595 x x
	fmul

 atan$38:
	; BinaryAdd £temporary596 1 £temporary595
	fadd

 atan$39:
	; Parameter double £temporary596 56
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
	fld qword [rbp + 56]

 atan$42:
	; GetReturnValue £temporary597

 atan$43:
	; BinaryAdd £temporary598 1 £temporary597
	fadd

 atan$44:
	; SignedDivide £temporary599 x £temporary598
	fdiv

 atan$45:
	; Parameter double £temporary599 56
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
	; GetReturnValue £temporary600

 atan$49:
	; SignedMultiply £temporary601 2 £temporary600
	fmul

 atan$50:
	; Return £temporary601
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
	; SignedMultiply £temporary602 sign product
	fmul

 atan$62:
	; PushFloat denominator
	fld qword [rbp + 56]

 atan$63:
	; SignedDivide £temporary603 £temporary602 denominator
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
	; BinaryAdd £temporary604 sum term
	fadd

 atan$68:
	; PopFloat sum
	fstp qword [rbp + 40]

 atan$69:
	; PushFloat sign
	fld qword [rbp + 48]

 atan$70:
	; UnarySubtract £temporary605 sign
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
	; SignedMultiply £temporary606 x x
	fmul

 atan$76:
	; SignedMultiply £temporary607 product £temporary606
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
	; BinaryAdd £temporary608 denominator 2
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
	; GetReturnValue £temporary609

 atan$89:
	; PushFloat 0.000000001
	fld qword [float8$0.000000001#]

 atan$90:
	; SignedGreaterThanEqual 59 £temporary609 0.000000001
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

section .data

float8$minus3.141592653#:
	; Initializer Double -3.141592653
	dq -3.141592653

section .data

float8$minus1.5707963265#:
	; Initializer Double -1.5707963265
	dq -1.5707963265

section .text

 atan2:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$1:
	; PushFloat 0
	fldz

 atan2$2:
	; SignedLessThanEqual 12 y 0
	fcompp
	fstsw ax
	sahf
	jae atan2$12

 atan2$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2$4:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$5:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$6:
	; SignedDivide £temporary617 x y
	fdiv

 atan2$7:
	; Parameter double £temporary617 64
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
	; GetReturnValue £temporary618

 atan2$11:
	; Return £temporary618
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$12:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$13:
	; PushFloat 0
	fldz

 atan2$14:
	; SignedLessThan 29 x 0
	fcompp
	fstsw ax
	sahf
	ja atan2$29

 atan2$15:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$16:
	; PushFloat 0
	fldz

 atan2$17:
	; SignedGreaterThanEqual 29 y 0
	fcompp
	fstsw ax
	sahf
	jbe atan2$29

 atan2$18:
	; PushFloat 3.141592653
	fld qword [float8$3.141592653#]

 atan2$19:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 atan2$20:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$21:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$22:
	; SignedDivide £temporary622 x y
	fdiv

 atan2$23:
	; Parameter double £temporary622 64
	fstp qword [rbp + 72]

 atan2$24:
	; Call atan 40 0
	mov qword [rbp + 48], atan2$25
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

 atan2$25:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 atan2$26:
	; GetReturnValue £temporary623

 atan2$27:
	; BinaryAdd £temporary624 3.141592653 £temporary623
	fadd

 atan2$28:
	; Return £temporary624
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$29:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$30:
	; PushFloat 0
	fldz

 atan2$31:
	; SignedGreaterThanEqual 46 x 0
	fcompp
	fstsw ax
	sahf
	jbe atan2$46

 atan2$32:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$33:
	; PushFloat 0
	fldz

 atan2$34:
	; SignedGreaterThanEqual 46 y 0
	fcompp
	fstsw ax
	sahf
	jbe atan2$46

 atan2$35:
	; PushFloat -3.141592653
	fld qword [float8$minus3.141592653#]

 atan2$36:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 atan2$37:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$38:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$39:
	; SignedDivide £temporary628 x y
	fdiv

 atan2$40:
	; Parameter double £temporary628 64
	fstp qword [rbp + 72]

 atan2$41:
	; Call atan 40 0
	mov qword [rbp + 48], atan2$42
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

 atan2$42:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 atan2$43:
	; GetReturnValue £temporary629

 atan2$44:
	; BinaryAdd £temporary630 -3.141592653 £temporary629
	fadd

 atan2$45:
	; Return £temporary630
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$46:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$47:
	; PushFloat 0
	fldz

 atan2$48:
	; SignedLessThanEqual 54 x 0
	fcompp
	fstsw ax
	sahf
	jae atan2$54

 atan2$49:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$50:
	; PushFloat 0
	fldz

 atan2$51:
	; NotEqual 54 y 0
	fcompp
	fstsw ax
	sahf
	jne atan2$54

 atan2$52:
	; PushFloat 1.5707963265
	fld qword [float8$1.5707963265#]

 atan2$53:
	; Return 1.5707963265
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$54:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$55:
	; PushFloat 0
	fldz

 atan2$56:
	; SignedGreaterThanEqual 62 x 0
	fcompp
	fstsw ax
	sahf
	jbe atan2$62

 atan2$57:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$58:
	; PushFloat 0
	fldz

 atan2$59:
	; NotEqual 62 y 0
	fcompp
	fstsw ax
	sahf
	jne atan2$62

 atan2$60:
	; PushFloat -1.5707963265
	fld qword [float8$minus1.5707963265#]

 atan2$61:
	; Return -1.5707963265
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$62:
	; Assign errno 6
	mov dword [errno], 6

 atan2$63:
	; PushFloat 0
	fldz

 atan2$64:
	; Return 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$65:
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
	; GetReturnValue £temporary640

 sinh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 sinh$7:
	; PushFloat x
	fld qword [rbp + 24]

 sinh$8:
	; UnarySubtract £temporary641 x
	fchs

 sinh$9:
	; Parameter double £temporary641 56
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
	; GetReturnValue £temporary642

 sinh$13:
	; BinarySubtract £temporary643 £temporary640 £temporary642
	fsub

 sinh$14:
	; PushFloat 2
	fld qword [float8$2#]

 sinh$15:
	; SignedDivide £temporary644 £temporary643 2
	fdiv

 sinh$16:
	; Return £temporary644
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
	; GetReturnValue £temporary647

 cosh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 cosh$7:
	; PushFloat x
	fld qword [rbp + 24]

 cosh$8:
	; UnarySubtract £temporary648 x
	fchs

 cosh$9:
	; Parameter double £temporary648 56
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
	; GetReturnValue £temporary649

 cosh$13:
	; BinaryAdd £temporary650 £temporary647 £temporary649
	fadd

 cosh$14:
	; PushFloat 2
	fld qword [float8$2#]

 cosh$15:
	; SignedDivide £temporary651 £temporary650 2
	fdiv

 cosh$16:
	; Return £temporary651
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
	; GetReturnValue £temporary654

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
	; GetReturnValue £temporary655

 tanh$12:
	; SignedDivide £temporary656 £temporary654 £temporary655
	fdiv

 tanh$13:
	; Return £temporary656
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
	; UnarySubtract £temporary660 x
	fchs

 floor$6:
	; Parameter double £temporary660 56
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
	; GetReturnValue £temporary661

 floor$10:
	; UnarySubtract £temporary662 £temporary661
	fchs

 floor$11:
	; Return £temporary662
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$12:
	; PushFloat x
	fld qword [rbp + 24]

 floor$13:
	; FloatingToIntegral £temporary663 x
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 floor$14:
	; IntegralToFloating £temporary664 £temporary663
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 floor$15:
	; Return £temporary664
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
	; UnarySubtract £temporary667 x
	fchs

 ceil$6:
	; Parameter double £temporary667 56
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
	; GetReturnValue £temporary668

 ceil$10:
	; UnarySubtract £temporary669 £temporary668
	fchs

 ceil$11:
	; Return £temporary669
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
	; BinaryAdd £temporary670 x 0.999999999999
	fadd

 ceil$15:
	; FloatingToIntegral £temporary671 £temporary670
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 ceil$16:
	; IntegralToFloating £temporary672 £temporary671
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 ceil$17:
	; Return £temporary672
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
	; BinarySubtract £temporary675 x 0.5
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
	; BinaryAdd £temporary676 x 0.5
	fadd

 round$11:
	; FloatingToIntegral £temporary678 £temporary677
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 round$12:
	; IntegralToFloating £temporary679 £temporary678
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 round$13:
	; Return £temporary679
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
	; UnarySubtract £temporary681 x
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
	; Return £temporary682
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fabs$9:
	; FunctionEnd fabs
