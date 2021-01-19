	global math_test_1x
	global acos_test
	global atan_test
	global math_test
	global math_test_1
	global math_test_2

	extern acos
	extern errno
	extern printf
	extern atan
	extern sin
	extern cos
	extern tan
	extern asin
	extern exp
	extern log
	extern log10
	extern sinh
	extern cosh
	extern tanh
	extern sqrt
	extern floor
	extern ceil
	extern fabs
	extern frexp
	extern perror
	extern modf
	extern fmod
	extern atan2
	extern pow
	extern ldexp
	extern $StackTop


section .data

@10836$float8$minus6.28#:
	; Initializer Double -6.28
	dq -6.28

section .data

@10840$float8$minus3.14#:
	; Initializer Double -3.14
	dq -3.14

section .data

@10846$float8$minus1.57#:
	; Initializer Double -1.57
	dq -1.57

section .data

@10849$float8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

@10860$float8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@10863$float8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .data

@10868$float8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .text

 math_test_1x:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$1:
	; PushFloat -6.28
	fld qword [@10836$float8$minus6.28#]

 math_test_1x$2:
	; Parameter 48 double -6.28
	fstp qword [rbp + 48]

 math_test_1x$3:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$4:
	; PostCall 24

 math_test_1x$5:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$6:
	; PushFloat -3.14
	fld qword [@10840$float8$minus3.14#]

 math_test_1x$7:
	; Parameter 48 double -3.14
	fstp qword [rbp + 48]

 math_test_1x$8:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$9:
	; PostCall 24

 math_test_1x$10:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$11:
	; PushFloat -1.57
	fld qword [@10846$float8$minus1.57#]

 math_test_1x$12:
	; Parameter 48 double -1.57
	fstp qword [rbp + 48]

 math_test_1x$13:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$14:
	; PostCall 24

 math_test_1x$15:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$16:
	; PushFloat -1
	fld qword [@10849$float8$minus1#]

 math_test_1x$17:
	; Parameter 48 double -1
	fstp qword [rbp + 48]

 math_test_1x$18:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$19:
	; PostCall 24

 math_test_1x$20:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$21:
	; PushFloat 0
	fldz

 math_test_1x$22:
	; Parameter 48 double 0
	fstp qword [rbp + 48]

 math_test_1x$23:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$24
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$24:
	; PostCall 24

 math_test_1x$25:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$26:
	; PushFloat 1
	fld1

 math_test_1x$27:
	; Parameter 48 double 1
	fstp qword [rbp + 48]

 math_test_1x$28:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$29
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$29:
	; PostCall 24

 math_test_1x$30:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$31:
	; PushFloat 1.57
	fld qword [@10860$float8$1.57#]

 math_test_1x$32:
	; Parameter 48 double 1.57
	fstp qword [rbp + 48]

 math_test_1x$33:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$34
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$34:
	; PostCall 24

 math_test_1x$35:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$36:
	; PushFloat 3.14
	fld qword [@10863$float8$3.14#]

 math_test_1x$37:
	; Parameter 48 double 3.14
	fstp qword [rbp + 48]

 math_test_1x$38:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$39
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$39:
	; PostCall 24

 math_test_1x$40:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$41:
	; PushFloat 6.28
	fld qword [@10868$float8$6.28#]

 math_test_1x$42:
	; Parameter 48 double 6.28
	fstp qword [rbp + 48]

 math_test_1x$43:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$44
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$44:
	; PostCall 24

 math_test_1x$45:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 math_test_1x$46:
	; FunctionEnd math_test_1x

section .data

@10870$string_2020acos2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   acos(%f) = %f, errno = %i\n
	db "  acos(%f) = %f, errno = %i", 10, 0

section .text

 acos_test:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos_test$1:
	; Parameter 56 pointer "  acos(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @10870$string_2020acos2825f29203D2025f2C20errno203D2025i0A#

 acos_test$2:
	; PushFloat x
	fld qword [rbp + 24]

 acos_test$3:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 acos_test$4:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos_test$5:
	; PushFloat x
	fld qword [rbp + 24]

 acos_test$6:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 acos_test$7:
	; Call 72 acos 0
	mov qword [rbp + 72], acos_test$8
	mov [rbp + 80], rbp
	add rbp, 72
	jmp acos

 acos_test$8:
	; PostCall 72

 acos_test$9:
	; GetReturnValue £temporary3392

 acos_test$10:
	; Parameter 72 double £temporary3392
	fstp qword [rbp + 72]

 acos_test$11:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 acos_test$12:
	; Call 32 printf 20
	mov qword [rbp + 32], acos_test$13
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 acos_test$13:
	; PostCall 32

 acos_test$14:
	; Assign errno 0
	mov dword [errno], 0

 acos_test$15:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos_test$16:
	; FunctionEnd acos_test

section .data

@10876$string_2020atan2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   atan(%f) = %f, errno = %i\n
	db "  atan(%f) = %f, errno = %i", 10, 0

section .text

 atan_test:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan_test$1:
	; Parameter 56 pointer "  atan(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @10876$string_2020atan2825f29203D2025f2C20errno203D2025i0A#

 atan_test$2:
	; PushFloat x
	fld qword [rbp + 24]

 atan_test$3:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 atan_test$4:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan_test$5:
	; PushFloat x
	fld qword [rbp + 24]

 atan_test$6:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 atan_test$7:
	; Call 72 atan 0
	mov qword [rbp + 72], atan_test$8
	mov [rbp + 80], rbp
	add rbp, 72
	jmp atan

 atan_test$8:
	; PostCall 72

 atan_test$9:
	; GetReturnValue £temporary3397

 atan_test$10:
	; Parameter 72 double £temporary3397
	fstp qword [rbp + 72]

 atan_test$11:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 atan_test$12:
	; Call 32 printf 20
	mov qword [rbp + 32], atan_test$13
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 atan_test$13:
	; PostCall 32

 atan_test$14:
	; Assign errno 0
	mov dword [errno], 0

 atan_test$15:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan_test$16:
	; FunctionEnd atan_test

section .data

@10884$float8$0.333333333#:
	; Initializer Double 0.333333333
	dq 0.333333333

section .data

@10887$float8$0.75#:
	; Initializer Double 0.75
	dq 0.75

section .data

@10890$float8$1.000010#:
	; Initializer Double 1.000010
	dq 1.000010

section .data

@10896$float8$0.999999#:
	; Initializer Double 0.999999
	dq 0.999999

section .data

@10899$float8$0.000010#:
	; Initializer Double 0.000010
	dq 0.000010

section .data

@10905$float8$minus0.000010#:
	; Initializer Double -0.000010
	dq -0.000010

section .data

@10908$float8$minus0.999999#:
	; Initializer Double -0.999999
	dq -0.999999

section .data

@10911$float8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@10914$float8$minus1.000010#:
	; Initializer Double -1.000010
	dq -1.000010

section .data

@10919$float8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@10922$float8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .data

@10927$float8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@10933$float8$minus1.57#:
	; Initializer Double -1.57
	dq -1.57

section .data

@10937$float8$minus3.14#:
	; Initializer Double -3.14
	dq -3.14

section .data

@10942$float8$minus6.28#:
	; Initializer Double -6.28
	dq -6.28

section .data

@10948$float8$2.0#:
	; Initializer Double 2.0
	dq 2.0

section .data

@10953$float8$3.0#:
	; Initializer Double 3.0
	dq 3.0

section .data

@10954$float8$4.0#:
	; Initializer Double 4.0
	dq 4.0

section .data

@10960$float8$2.0#:
	; Initializer Double 2.0
	dq 2.0

section .data

@10966$float8$minus2.0#:
	; Initializer Double -2.0
	dq -2.0

section .data

@10972$float8$2.0#:
	; Initializer Double 2.0
	dq 2.0

section .data

@10978$float8$minus2.0#:
	; Initializer Double -2.0
	dq -2.0

section .data

@10989$float8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@10995$float8$minus2#:
	; Initializer Double -2
	dq -2.0

section .data

@11001$float8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@11002$float8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@11007$float8$minus2.0#:
	; Initializer Double -2.0
	dq -2.0

section .data

@11008$float8$minus4.0#:
	; Initializer Double -4.0
	dq -4.0

section .text

 math_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$1:
	; PushFloat 0.333333333
	fld qword [@10884$float8$0.333333333#]

 math_test$2:
	; Parameter 48 double 0.333333333
	fstp qword [rbp + 48]

 math_test$3:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$4:
	; PostCall 24

 math_test$5:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$6:
	; PushFloat 0.75
	fld qword [@10887$float8$0.75#]

 math_test$7:
	; Parameter 48 double 0.75
	fstp qword [rbp + 48]

 math_test$8:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$9:
	; PostCall 24

 math_test$10:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$11:
	; PushFloat 1.000010
	fld qword [@10890$float8$1.000010#]

 math_test$12:
	; Parameter 48 double 1.000010
	fstp qword [rbp + 48]

 math_test$13:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$14:
	; PostCall 24

 math_test$15:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$16:
	; PushFloat 1.0
	fld1

 math_test$17:
	; Parameter 48 double 1.0
	fstp qword [rbp + 48]

 math_test$18:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$19:
	; PostCall 24

 math_test$20:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$21:
	; PushFloat 0.999999
	fld qword [@10896$float8$0.999999#]

 math_test$22:
	; Parameter 48 double 0.999999
	fstp qword [rbp + 48]

 math_test$23:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$24
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$24:
	; PostCall 24

 math_test$25:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$26:
	; PushFloat 0.000010
	fld qword [@10899$float8$0.000010#]

 math_test$27:
	; Parameter 48 double 0.000010
	fstp qword [rbp + 48]

 math_test$28:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$29
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$29:
	; PostCall 24

 math_test$30:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$31:
	; PushFloat 0
	fldz

 math_test$32:
	; Parameter 48 double 0
	fstp qword [rbp + 48]

 math_test$33:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$34
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$34:
	; PostCall 24

 math_test$35:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$36:
	; PushFloat -0.000010
	fld qword [@10905$float8$minus0.000010#]

 math_test$37:
	; Parameter 48 double -0.000010
	fstp qword [rbp + 48]

 math_test$38:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$39
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$39:
	; PostCall 24

 math_test$40:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$41:
	; PushFloat -0.999999
	fld qword [@10908$float8$minus0.999999#]

 math_test$42:
	; Parameter 48 double -0.999999
	fstp qword [rbp + 48]

 math_test$43:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$44
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$44:
	; PostCall 24

 math_test$45:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$46:
	; PushFloat -1.0
	fld qword [@10911$float8$minus1.0#]

 math_test$47:
	; Parameter 48 double -1.0
	fstp qword [rbp + 48]

 math_test$48:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$49
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$49:
	; PostCall 24

 math_test$50:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$51:
	; PushFloat -1.000010
	fld qword [@10914$float8$minus1.000010#]

 math_test$52:
	; Parameter 48 double -1.000010
	fstp qword [rbp + 48]

 math_test$53:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$54
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$54:
	; PostCall 24

 math_test$55:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$56:
	; PushFloat 6.28
	fld qword [@10919$float8$6.28#]

 math_test$57:
	; Parameter 48 double 6.28
	fstp qword [rbp + 48]

 math_test$58:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$59
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$59:
	; PostCall 24

 math_test$60:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$61:
	; PushFloat 3.14
	fld qword [@10922$float8$3.14#]

 math_test$62:
	; Parameter 48 double 3.14
	fstp qword [rbp + 48]

 math_test$63:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$64
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$64:
	; PostCall 24

 math_test$65:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$66:
	; PushFloat 1.57
	fld qword [@10927$float8$1.57#]

 math_test$67:
	; Parameter 48 double 1.57
	fstp qword [rbp + 48]

 math_test$68:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$69
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$69:
	; PostCall 24

 math_test$70:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$71:
	; PushFloat -1.57
	fld qword [@10933$float8$minus1.57#]

 math_test$72:
	; Parameter 48 double -1.57
	fstp qword [rbp + 48]

 math_test$73:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$74
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$74:
	; PostCall 24

 math_test$75:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$76:
	; PushFloat -3.14
	fld qword [@10937$float8$minus3.14#]

 math_test$77:
	; Parameter 48 double -3.14
	fstp qword [rbp + 48]

 math_test$78:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$79
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$79:
	; PostCall 24

 math_test$80:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$81:
	; PushFloat -6.28
	fld qword [@10942$float8$minus6.28#]

 math_test$82:
	; Parameter 48 double -6.28
	fstp qword [rbp + 48]

 math_test$83:
	; Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$84
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$84:
	; PostCall 24

 math_test$85:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$86:
	; PushFloat 1.0
	fld1

 math_test$87:
	; Parameter 48 double 1.0
	fstp qword [rbp + 48]

 math_test$88:
	; PushFloat 2.0
	fld qword [@10948$float8$2.0#]

 math_test$89:
	; Parameter 56 double 2.0
	fstp qword [rbp + 56]

 math_test$90:
	; Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$91
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$91:
	; PostCall 24

 math_test$92:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$93:
	; PushFloat 3.0
	fld qword [@10953$float8$3.0#]

 math_test$94:
	; Parameter 48 double 3.0
	fstp qword [rbp + 48]

 math_test$95:
	; PushFloat 4.0
	fld qword [@10954$float8$4.0#]

 math_test$96:
	; Parameter 56 double 4.0
	fstp qword [rbp + 56]

 math_test$97:
	; Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$98
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$98:
	; PostCall 24

 math_test$99:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$100:
	; PushFloat 0
	fldz

 math_test$101:
	; Parameter 48 double 0
	fstp qword [rbp + 48]

 math_test$102:
	; PushFloat 2.0
	fld qword [@10960$float8$2.0#]

 math_test$103:
	; Parameter 56 double 2.0
	fstp qword [rbp + 56]

 math_test$104:
	; Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$105
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$105:
	; PostCall 24

 math_test$106:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$107:
	; PushFloat 0
	fldz

 math_test$108:
	; Parameter 48 double 0
	fstp qword [rbp + 48]

 math_test$109:
	; PushFloat -2.0
	fld qword [@10966$float8$minus2.0#]

 math_test$110:
	; Parameter 56 double -2.0
	fstp qword [rbp + 56]

 math_test$111:
	; Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$112
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$112:
	; PostCall 24

 math_test$113:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$114:
	; PushFloat 1
	fld1

 math_test$115:
	; Parameter 48 double 1
	fstp qword [rbp + 48]

 math_test$116:
	; PushFloat 2.0
	fld qword [@10972$float8$2.0#]

 math_test$117:
	; Parameter 56 double 2.0
	fstp qword [rbp + 56]

 math_test$118:
	; Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$119
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$119:
	; PostCall 24

 math_test$120:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$121:
	; PushFloat 1
	fld1

 math_test$122:
	; Parameter 48 double 1
	fstp qword [rbp + 48]

 math_test$123:
	; PushFloat -2.0
	fld qword [@10978$float8$minus2.0#]

 math_test$124:
	; Parameter 56 double -2.0
	fstp qword [rbp + 56]

 math_test$125:
	; Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$126
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$126:
	; PostCall 24

 math_test$127:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$128:
	; PushFloat 0
	fldz

 math_test$129:
	; Parameter 48 double 0
	fstp qword [rbp + 48]

 math_test$130:
	; PushFloat 0
	fldz

 math_test$131:
	; Parameter 56 double 0
	fstp qword [rbp + 56]

 math_test$132:
	; Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$133
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$133:
	; PostCall 24

 math_test$134:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$135:
	; PushFloat 2
	fld qword [@10989$float8$2#]

 math_test$136:
	; Parameter 48 double 2
	fstp qword [rbp + 48]

 math_test$137:
	; PushFloat 0
	fldz

 math_test$138:
	; Parameter 56 double 0
	fstp qword [rbp + 56]

 math_test$139:
	; Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$140
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$140:
	; PostCall 24

 math_test$141:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$142:
	; PushFloat -2
	fld qword [@10995$float8$minus2#]

 math_test$143:
	; Parameter 48 double -2
	fstp qword [rbp + 48]

 math_test$144:
	; PushFloat 0
	fldz

 math_test$145:
	; Parameter 56 double 0
	fstp qword [rbp + 56]

 math_test$146:
	; Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$147
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$147:
	; PostCall 24

 math_test$148:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$149:
	; PushFloat -1.0
	fld qword [@11001$float8$minus1.0#]

 math_test$150:
	; Parameter 48 double -1.0
	fstp qword [rbp + 48]

 math_test$151:
	; PushFloat -1.0
	fld qword [@11002$float8$minus1.0#]

 math_test$152:
	; Parameter 56 double -1.0
	fstp qword [rbp + 56]

 math_test$153:
	; Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$154
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$154:
	; PostCall 24

 math_test$155:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$156:
	; PushFloat -2.0
	fld qword [@11007$float8$minus2.0#]

 math_test$157:
	; Parameter 48 double -2.0
	fstp qword [rbp + 48]

 math_test$158:
	; PushFloat -4.0
	fld qword [@11008$float8$minus4.0#]

 math_test$159:
	; Parameter 56 double -4.0
	fstp qword [rbp + 56]

 math_test$160:
	; Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$161
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$161:
	; PostCall 24

 math_test$162:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 math_test$163:
	; FunctionEnd math_test

section .data

@11010$string_3C25f3E0A#:
	; Initializer String <%f>\n
	db "<%f>", 10, 0

section .data

@11011$string_2020sin2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sin(%f) = %f, errno = %i\n
	db "  sin(%f) = %f, errno = %i", 10, 0

section .data

@11014$string_2020cos2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   cos(%f) = %f, errno = %i\n
	db "  cos(%f) = %f, errno = %i", 10, 0

section .data

@11017$string_2020tan2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   tan(%f) = %f, errno = %i\n
	db "  tan(%f) = %f, errno = %i", 10, 0

section .data

@11020$string_2020asin2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   asin(%f) = %f, errno = %i\n
	db "  asin(%f) = %f, errno = %i", 10, 0

section .data

@11023$string_2020acos2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   acos(%f) = %f, errno = %i\n
	db "  acos(%f) = %f, errno = %i", 10, 0

section .data

@11026$string_2020atan2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   atan(%f) = %f, errno = %i\n
	db "  atan(%f) = %f, errno = %i", 10, 0

section .data

@11029$string_2020exp2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   exp(%f) = %f, errno = %i\n
	db "  exp(%f) = %f, errno = %i", 10, 0

section .data

@11032$string_2020log2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   log(%f) = %f, errno = %i\n
	db "  log(%f) = %f, errno = %i", 10, 0

section .data

@11035$string_2020log102825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   log10(%f) = %f, errno = %i\n
	db "  log10(%f) = %f, errno = %i", 10, 0

section .data

@11038$string_2020sinh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sinh(%f) = %f, errno = %i\n
	db "  sinh(%f) = %f, errno = %i", 10, 0

section .data

@11041$string_2020cosh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   cosh(%f) = %f, errno = %i\n
	db "  cosh(%f) = %f, errno = %i", 10, 0

section .data

@11044$string_2020tanh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   tanh(%f) = %f, errno = %i\n
	db "  tanh(%f) = %f, errno = %i", 10, 0

section .data

@11047$string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sqrt(%f) = %f, errno = %i\n
	db "  sqrt(%f) = %f, errno = %i", 10, 0

section .data

@11050$string_2020floor2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   floor(%f) = %f, errno = %i\n
	db "  floor(%f) = %f, errno = %i", 10, 0

section .data

@11053$string_2020ceil2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   ceil(%f) = %f, errno = %i\n
	db "  ceil(%f) = %f, errno = %i", 10, 0

section .data

@11056$string_2020fabs2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   fabs(%f) = %f, errno = %i\n
	db "  fabs(%f) = %f, errno = %i", 10, 0

section .data

@11063$string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#:
	; Initializer String frexp (%f, p) = (%f, %i), errno = %i\n
	db "frexp (%f, p) = (%f, %i), errno = %i", 10, 0

section .data

@11066$string_Error20message3A#:
	; Initializer String Error message:
	db "Error message:", 0

section .data

@11073$string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#:
	; Initializer String modf (%f, p) = (%f, %f), errno = %i\n
	db "modf (%f, p) = (%f, %f), errno = %i", 10, 0

section .data

@11076$string_Error20message3A#:
	; Initializer String Error message:
	db "Error message:", 0

section .data

@11079$string_0A#:
	; Initializer String \n
	db 10, 0

section .text

 math_test_1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$1:
	; Parameter 56 pointer "<%f>\n"
	mov qword [rbp + 56], @11010$string_3C25f3E0A#

 math_test_1$2:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$3:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$4:
	; Call 32 printf 8
	mov qword [rbp + 32], math_test_1$5
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 math_test_1$5:
	; PostCall 32

 math_test_1$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$7:
	; Parameter 56 pointer "  sin(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11011$string_2020sin2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$8:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$9:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$10:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$11:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$12:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$13:
	; Call 72 sin 0
	mov qword [rbp + 72], math_test_1$14
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sin

 math_test_1$14:
	; PostCall 72

 math_test_1$15:
	; GetReturnValue £temporary3470

 math_test_1$16:
	; Parameter 72 double £temporary3470
	fstp qword [rbp + 72]

 math_test_1$17:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$18:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$19
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$19:
	; PostCall 32

 math_test_1$20:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$21:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$22:
	; Parameter 56 pointer "  cos(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11014$string_2020cos2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$23:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$24:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$25:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$26:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$27:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$28:
	; Call 72 cos 0
	mov qword [rbp + 72], math_test_1$29
	mov [rbp + 80], rbp
	add rbp, 72
	jmp cos

 math_test_1$29:
	; PostCall 72

 math_test_1$30:
	; GetReturnValue £temporary3472

 math_test_1$31:
	; Parameter 72 double £temporary3472
	fstp qword [rbp + 72]

 math_test_1$32:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$33:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$34
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$34:
	; PostCall 32

 math_test_1$35:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$36:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$37:
	; Parameter 56 pointer "  tan(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11017$string_2020tan2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$38:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$39:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$40:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$41:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$42:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$43:
	; Call 72 tan 0
	mov qword [rbp + 72], math_test_1$44
	mov [rbp + 80], rbp
	add rbp, 72
	jmp tan

 math_test_1$44:
	; PostCall 72

 math_test_1$45:
	; GetReturnValue £temporary3474

 math_test_1$46:
	; Parameter 72 double £temporary3474
	fstp qword [rbp + 72]

 math_test_1$47:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$48:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$49
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$49:
	; PostCall 32

 math_test_1$50:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$51:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$52:
	; Parameter 56 pointer "  asin(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11020$string_2020asin2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$53:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$54:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$55:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$56:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$57:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$58:
	; Call 72 asin 0
	mov qword [rbp + 72], math_test_1$59
	mov [rbp + 80], rbp
	add rbp, 72
	jmp asin

 math_test_1$59:
	; PostCall 72

 math_test_1$60:
	; GetReturnValue £temporary3476

 math_test_1$61:
	; Parameter 72 double £temporary3476
	fstp qword [rbp + 72]

 math_test_1$62:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$63:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$64
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$64:
	; PostCall 32

 math_test_1$65:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$66:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$67:
	; Parameter 56 pointer "  acos(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11023$string_2020acos2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$68:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$69:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$70:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$71:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$72:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$73:
	; Call 72 acos 0
	mov qword [rbp + 72], math_test_1$74
	mov [rbp + 80], rbp
	add rbp, 72
	jmp acos

 math_test_1$74:
	; PostCall 72

 math_test_1$75:
	; GetReturnValue £temporary3478

 math_test_1$76:
	; Parameter 72 double £temporary3478
	fstp qword [rbp + 72]

 math_test_1$77:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$78:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$79
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$79:
	; PostCall 32

 math_test_1$80:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$81:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$82:
	; Parameter 56 pointer "  atan(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11026$string_2020atan2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$83:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$84:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$85:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$86:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$87:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$88:
	; Call 72 atan 0
	mov qword [rbp + 72], math_test_1$89
	mov [rbp + 80], rbp
	add rbp, 72
	jmp atan

 math_test_1$89:
	; PostCall 72

 math_test_1$90:
	; GetReturnValue £temporary3480

 math_test_1$91:
	; Parameter 72 double £temporary3480
	fstp qword [rbp + 72]

 math_test_1$92:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$93:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$94
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$94:
	; PostCall 32

 math_test_1$95:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$96:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$97:
	; Parameter 56 pointer "  exp(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11029$string_2020exp2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$98:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$99:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$100:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$101:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$102:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$103:
	; Call 72 exp 0
	mov qword [rbp + 72], math_test_1$104
	mov [rbp + 80], rbp
	add rbp, 72
	jmp exp

 math_test_1$104:
	; PostCall 72

 math_test_1$105:
	; GetReturnValue £temporary3482

 math_test_1$106:
	; Parameter 72 double £temporary3482
	fstp qword [rbp + 72]

 math_test_1$107:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$108:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$109
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$109:
	; PostCall 32

 math_test_1$110:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$111:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$112:
	; Parameter 56 pointer "  log(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11032$string_2020log2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$113:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$114:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$115:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$116:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$117:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$118:
	; Call 72 log 0
	mov qword [rbp + 72], math_test_1$119
	mov [rbp + 80], rbp
	add rbp, 72
	jmp log

 math_test_1$119:
	; PostCall 72

 math_test_1$120:
	; GetReturnValue £temporary3484

 math_test_1$121:
	; Parameter 72 double £temporary3484
	fstp qword [rbp + 72]

 math_test_1$122:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$123:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$124
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$124:
	; PostCall 32

 math_test_1$125:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$126:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$127:
	; Parameter 56 pointer "  log10(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11035$string_2020log102825f29203D2025f2C20errno203D2025i0A#

 math_test_1$128:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$129:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$130:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$131:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$132:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$133:
	; Call 72 log10 0
	mov qword [rbp + 72], math_test_1$134
	mov [rbp + 80], rbp
	add rbp, 72
	jmp log10

 math_test_1$134:
	; PostCall 72

 math_test_1$135:
	; GetReturnValue £temporary3486

 math_test_1$136:
	; Parameter 72 double £temporary3486
	fstp qword [rbp + 72]

 math_test_1$137:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$138:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$139
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$139:
	; PostCall 32

 math_test_1$140:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$141:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$142:
	; Parameter 56 pointer "  sinh(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11038$string_2020sinh2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$143:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$144:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$145:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$146:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$147:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$148:
	; Call 72 sinh 0
	mov qword [rbp + 72], math_test_1$149
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sinh

 math_test_1$149:
	; PostCall 72

 math_test_1$150:
	; GetReturnValue £temporary3488

 math_test_1$151:
	; Parameter 72 double £temporary3488
	fstp qword [rbp + 72]

 math_test_1$152:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$153:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$154
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$154:
	; PostCall 32

 math_test_1$155:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$156:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$157:
	; Parameter 56 pointer "  cosh(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11041$string_2020cosh2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$158:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$159:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$160:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$161:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$162:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$163:
	; Call 72 cosh 0
	mov qword [rbp + 72], math_test_1$164
	mov [rbp + 80], rbp
	add rbp, 72
	jmp cosh

 math_test_1$164:
	; PostCall 72

 math_test_1$165:
	; GetReturnValue £temporary3490

 math_test_1$166:
	; Parameter 72 double £temporary3490
	fstp qword [rbp + 72]

 math_test_1$167:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$168:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$169
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$169:
	; PostCall 32

 math_test_1$170:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$171:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$172:
	; Parameter 56 pointer "  tanh(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11044$string_2020tanh2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$173:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$174:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$175:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$176:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$177:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$178:
	; Call 72 tanh 0
	mov qword [rbp + 72], math_test_1$179
	mov [rbp + 80], rbp
	add rbp, 72
	jmp tanh

 math_test_1$179:
	; PostCall 72

 math_test_1$180:
	; GetReturnValue £temporary3492

 math_test_1$181:
	; Parameter 72 double £temporary3492
	fstp qword [rbp + 72]

 math_test_1$182:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$183:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$184
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$184:
	; PostCall 32

 math_test_1$185:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$186:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$187:
	; Parameter 56 pointer "  sqrt(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11047$string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$188:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$189:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$190:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$191:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$192:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$193:
	; Call 72 sqrt 0
	mov qword [rbp + 72], math_test_1$194
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sqrt

 math_test_1$194:
	; PostCall 72

 math_test_1$195:
	; GetReturnValue £temporary3494

 math_test_1$196:
	; Parameter 72 double £temporary3494
	fstp qword [rbp + 72]

 math_test_1$197:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$198:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$199
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$199:
	; PostCall 32

 math_test_1$200:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$201:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$202:
	; Parameter 56 pointer "  floor(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11050$string_2020floor2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$203:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$204:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$205:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$206:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$207:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$208:
	; Call 72 floor 0
	mov qword [rbp + 72], math_test_1$209
	mov [rbp + 80], rbp
	add rbp, 72
	jmp floor

 math_test_1$209:
	; PostCall 72

 math_test_1$210:
	; GetReturnValue £temporary3496

 math_test_1$211:
	; Parameter 72 double £temporary3496
	fstp qword [rbp + 72]

 math_test_1$212:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$213:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$214
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$214:
	; PostCall 32

 math_test_1$215:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$216:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$217:
	; Parameter 56 pointer "  ceil(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11053$string_2020ceil2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$218:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$219:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$220:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$221:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$222:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$223:
	; Call 72 ceil 0
	mov qword [rbp + 72], math_test_1$224
	mov [rbp + 80], rbp
	add rbp, 72
	jmp ceil

 math_test_1$224:
	; PostCall 72

 math_test_1$225:
	; GetReturnValue £temporary3498

 math_test_1$226:
	; Parameter 72 double £temporary3498
	fstp qword [rbp + 72]

 math_test_1$227:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$228:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$229
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$229:
	; PostCall 32

 math_test_1$230:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$231:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$232:
	; Parameter 56 pointer "  fabs(%f) = %f, errno = %i\n"
	mov qword [rbp + 56], @11056$string_2020fabs2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$233:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$234:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$235:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$236:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$237:
	; Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$238:
	; Call 72 fabs 0
	mov qword [rbp + 72], math_test_1$239
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

 math_test_1$239:
	; PostCall 72

 math_test_1$240:
	; GetReturnValue £temporary3500

 math_test_1$241:
	; Parameter 72 double £temporary3500
	fstp qword [rbp + 72]

 math_test_1$242:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$243:
	; Call 32 printf 20
	mov qword [rbp + 32], math_test_1$244
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$244:
	; PostCall 32

 math_test_1$245:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$246:
	; Assign j 0
	mov dword [rbp + 32], 0

 math_test_1$247:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$248:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$249:
	; Parameter 60 double x
	fstp qword [rbp + 60]

 math_test_1$250:
	; Address £temporary3502 j
	mov rsi, rbp
	add rsi, 32

 math_test_1$251:
	; Parameter 68 pointer £temporary3502
	mov [rbp + 68], rsi

 math_test_1$252:
	; Call 36 frexp 0
	mov qword [rbp + 36], math_test_1$253
	mov [rbp + 44], rbp
	add rbp, 36
	jmp frexp

 math_test_1$253:
	; PostCall 36

 math_test_1$254:
	; GetReturnValue £temporary3503

 math_test_1$255:
	; PopFloat z
	fstp qword [rbp + 36]

 math_test_1$256:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$257:
	; Parameter 68 pointer "frexp (%f, p) = (%f, %i), errno = %i\n"
	mov qword [rbp + 68], @11063$string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#

 math_test_1$258:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$259:
	; Parameter 76 double x
	fstp qword [rbp + 76]

 math_test_1$260:
	; PushFloat z
	fld qword [rbp + 36]

 math_test_1$261:
	; Parameter 84 double z
	fstp qword [rbp + 84]

 math_test_1$262:
	; Parameter 92 signedint j
	mov eax, [rbp + 32]
	mov [rbp + 92], eax

 math_test_1$263:
	; Parameter 96 signedint errno
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_1$264:
	; Call 44 printf 24
	mov qword [rbp + 44], math_test_1$265
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 24
	jmp printf

 math_test_1$265:
	; PostCall 44

 math_test_1$266:
	; Equal 272 errno 0
	cmp dword [errno], 0
	je math_test_1$272

 math_test_1$267:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$268:
	; Parameter 68 pointer "Error message:"
	mov qword [rbp + 68], @11066$string_Error20message3A#

 math_test_1$269:
	; Call 44 perror 0
	mov qword [rbp + 44], math_test_1$270
	mov [rbp + 52], rbp
	add rbp, 44
	jmp perror

 math_test_1$270:
	; PostCall 44

 math_test_1$271:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$272:
	; PushFloat 0
	fldz

 math_test_1$273:
	; PopFloat w
	fstp qword [rbp + 32]

 math_test_1$274:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$275:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$276:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$277:
	; Address £temporary3507 w
	mov rsi, rbp
	add rsi, 32

 math_test_1$278:
	; Parameter 72 pointer £temporary3507
	mov [rbp + 72], rsi

 math_test_1$279:
	; Call 40 modf 0
	mov qword [rbp + 40], math_test_1$280
	mov [rbp + 48], rbp
	add rbp, 40
	jmp modf

 math_test_1$280:
	; PostCall 40

 math_test_1$281:
	; GetReturnValue £temporary3508

 math_test_1$282:
	; PopFloat z
	fstp qword [rbp + 40]

 math_test_1$283:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$284:
	; Parameter 72 pointer "modf (%f, p) = (%f, %f), errno = %i\n"
	mov qword [rbp + 72], @11073$string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#

 math_test_1$285:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$286:
	; Parameter 80 double x
	fstp qword [rbp + 80]

 math_test_1$287:
	; PushFloat z
	fld qword [rbp + 40]

 math_test_1$288:
	; Parameter 88 double z
	fstp qword [rbp + 88]

 math_test_1$289:
	; PushFloat w
	fld qword [rbp + 32]

 math_test_1$290:
	; Parameter 96 double w
	fstp qword [rbp + 96]

 math_test_1$291:
	; Parameter 104 signedint errno
	mov eax, [errno]
	mov [rbp + 104], eax

 math_test_1$292:
	; Call 48 printf 28
	mov qword [rbp + 48], math_test_1$293
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$293:
	; PostCall 48

 math_test_1$294:
	; Equal 300 errno 0
	cmp dword [errno], 0
	je math_test_1$300

 math_test_1$295:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$296:
	; Parameter 72 pointer "Error message:"
	mov qword [rbp + 72], @11076$string_Error20message3A#

 math_test_1$297:
	; Call 48 perror 0
	mov qword [rbp + 48], math_test_1$298
	mov [rbp + 56], rbp
	add rbp, 48
	jmp perror

 math_test_1$298:
	; PostCall 48

 math_test_1$299:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$300:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$301:
	; Parameter 56 pointer "\n"
	mov qword [rbp + 56], @11079$string_0A#

 math_test_1$302:
	; Call 32 printf 0
	mov qword [rbp + 32], math_test_1$303
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 math_test_1$303:
	; PostCall 32

 math_test_1$304:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 math_test_1$305:
	; FunctionEnd math_test_1

section .data

@11125$string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String fmod(%f, %f) = %f, errno = %i\n
	db "fmod(%f, %f) = %f, errno = %i", 10, 0

section .data

@11128$string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String atan2(%f, %f) = %f, errno = %i\n
	db "atan2(%f, %f) = %f, errno = %i", 10, 0

section .data

@11131$string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String pow(%f, %f) = %f, errno = %i\n
	db "pow(%f, %f) = %f, errno = %i", 10, 0

section .data

@11134$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11135$string_ldexp2825f2C2025i29203D2025f0A0A#:
	; Initializer String ldexp(%f, %i) = %f\n\n
	db "ldexp(%f, %i) = %f", 10, 10, 0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .text

 math_test_2:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$1:
	; Parameter 64 pointer "fmod(%f, %f) = %f, errno = %i\n"
	mov qword [rbp + 64], @11125$string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#

 math_test_2$2:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$3:
	; Parameter 72 double x
	fstp qword [rbp + 72]

 math_test_2$4:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$5:
	; Parameter 80 double y
	fstp qword [rbp + 80]

 math_test_2$6:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$7:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$8:
	; Parameter 112 double x
	fstp qword [rbp + 112]

 math_test_2$9:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$10:
	; Parameter 120 double y
	fstp qword [rbp + 120]

 math_test_2$11:
	; Call 88 fmod 0
	mov qword [rbp + 88], math_test_2$12
	mov [rbp + 96], rbp
	add rbp, 88
	jmp fmod

 math_test_2$12:
	; PostCall 88

 math_test_2$13:
	; GetReturnValue £temporary3571

 math_test_2$14:
	; Parameter 88 double £temporary3571
	fstp qword [rbp + 88]

 math_test_2$15:
	; Parameter 96 signedint errno
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$16:
	; Call 40 printf 28
	mov qword [rbp + 40], math_test_2$17
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_2$17:
	; PostCall 40

 math_test_2$18:
	; Assign errno 0
	mov dword [errno], 0

 math_test_2$19:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$20:
	; Parameter 64 pointer "atan2(%f, %f) = %f, errno = %i\n"
	mov qword [rbp + 64], @11128$string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#

 math_test_2$21:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$22:
	; Parameter 72 double x
	fstp qword [rbp + 72]

 math_test_2$23:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$24:
	; Parameter 80 double y
	fstp qword [rbp + 80]

 math_test_2$25:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$26:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$27:
	; Parameter 112 double x
	fstp qword [rbp + 112]

 math_test_2$28:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$29:
	; Parameter 120 double y
	fstp qword [rbp + 120]

 math_test_2$30:
	; Call 88 atan2 0
	mov qword [rbp + 88], math_test_2$31
	mov [rbp + 96], rbp
	add rbp, 88
	jmp atan2

 math_test_2$31:
	; PostCall 88

 math_test_2$32:
	; GetReturnValue £temporary3573

 math_test_2$33:
	; Parameter 88 double £temporary3573
	fstp qword [rbp + 88]

 math_test_2$34:
	; Parameter 96 signedint errno
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$35:
	; Call 40 printf 28
	mov qword [rbp + 40], math_test_2$36
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_2$36:
	; PostCall 40

 math_test_2$37:
	; Assign errno 0
	mov dword [errno], 0

 math_test_2$38:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$39:
	; Parameter 64 pointer "pow(%f, %f) = %f, errno = %i\n"
	mov qword [rbp + 64], @11131$string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#

 math_test_2$40:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$41:
	; Parameter 72 double x
	fstp qword [rbp + 72]

 math_test_2$42:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$43:
	; Parameter 80 double y
	fstp qword [rbp + 80]

 math_test_2$44:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$45:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$46:
	; Parameter 112 double x
	fstp qword [rbp + 112]

 math_test_2$47:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$48:
	; Parameter 120 double y
	fstp qword [rbp + 120]

 math_test_2$49:
	; Call 88 pow 0
	mov qword [rbp + 88], math_test_2$50
	mov [rbp + 96], rbp
	add rbp, 88
	jmp pow

 math_test_2$50:
	; PostCall 88

 math_test_2$51:
	; GetReturnValue £temporary3575

 math_test_2$52:
	; Parameter 88 double £temporary3575
	fstp qword [rbp + 88]

 math_test_2$53:
	; Parameter 96 signedint errno
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$54:
	; Call 40 printf 28
	mov qword [rbp + 40], math_test_2$55
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_2$55:
	; PostCall 40

 math_test_2$56:
	; Assign errno 0
	mov dword [errno], 0

 math_test_2$57:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$58:
	; Parameter 64 pointer "\n"
	mov qword [rbp + 64], @11134$string_0A#

 math_test_2$59:
	; Call 40 printf 0
	mov qword [rbp + 40], math_test_2$60
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 math_test_2$60:
	; PostCall 40

 math_test_2$61:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$62:
	; Parameter 64 pointer "ldexp(%f, %i) = %f\n\n"
	mov qword [rbp + 64], @11135$string_ldexp2825f2C2025i29203D2025f0A0A#

 math_test_2$63:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$64:
	; Parameter 72 double x
	fstp qword [rbp + 72]

 math_test_2$65:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$66:
	; FloatingToIntegral £temporary3578 y
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 math_test_2$67:
	; Parameter 80 signedint £temporary3578
	mov [rbp + 80], eax

 math_test_2$68:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$69:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$70:
	; Parameter 108 double x
	fstp qword [rbp + 108]

 math_test_2$71:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$72:
	; FloatingToIntegral £temporary3579 y
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 math_test_2$73:
	; Parameter 116 signedint £temporary3579
	mov [rbp + 116], eax

 math_test_2$74:
	; Call 84 ldexp 0
	mov qword [rbp + 84], math_test_2$75
	mov [rbp + 92], rbp
	add rbp, 84
	jmp ldexp

 math_test_2$75:
	; PostCall 84

 math_test_2$76:
	; GetReturnValue £temporary3580

 math_test_2$77:
	; Parameter 84 double £temporary3580
	fstp qword [rbp + 84]

 math_test_2$78:
	; Call 40 printf 20
	mov qword [rbp + 40], math_test_2$79
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_2$79:
	; PostCall 40

 math_test_2$80:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 math_test_2$81:
	; FunctionEnd math_test_2
