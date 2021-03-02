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

@9482floating8$minus6.28#:
	; Initializer Double -6.28
	dq -6.28

section .data

@9484floating8$minus3.14#:
	; Initializer Double -3.14
	dq -3.14

section .data

@9490floating8$minus1.57#:
	; Initializer Double -1.57
	dq -1.57

section .data

@9492floating8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

@9501floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@9502floating8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .data

@9507floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .text

 math_test_1x:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$1:
	; PushFloat floating8$minus6.28#
	fld qword [@9482floating8$minus6.28#]

 math_test_1x$2:
	; Parameter 48 double floating8$minus6.28#
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
	; PushFloat floating8$minus3.14#
	fld qword [@9484floating8$minus3.14#]

 math_test_1x$7:
	; Parameter 48 double floating8$minus3.14#
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
	; PushFloat floating8$minus1.57#
	fld qword [@9490floating8$minus1.57#]

 math_test_1x$12:
	; Parameter 48 double floating8$minus1.57#
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
	; PushFloat floating8$minus1#
	fld qword [@9492floating8$minus1#]

 math_test_1x$17:
	; Parameter 48 double floating8$minus1#
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
	; PushFloat floating8$0#
	fldz

 math_test_1x$22:
	; Parameter 48 double floating8$0#
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
	; PushFloat floating8$1#
	fld1

 math_test_1x$27:
	; Parameter 48 double floating8$1#
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
	; PushFloat floating8$1.57#
	fld qword [@9501floating8$1.57#]

 math_test_1x$32:
	; Parameter 48 double floating8$1.57#
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
	; PushFloat floating8$3.14#
	fld qword [@9502floating8$3.14#]

 math_test_1x$37:
	; Parameter 48 double floating8$3.14#
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
	; PushFloat floating8$6.28#
	fld qword [@9507floating8$6.28#]

 math_test_1x$42:
	; Parameter 48 double floating8$6.28#
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

@9509string_2020acos2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   acos(%f) = %f, errno = %i\n
	db "  acos(%f) = %f, errno = %i", 10, 0

section .text

 acos_test:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos_test$1:
	; Parameter 56 pointer string_2020acos2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9509string_2020acos2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3419

 acos_test$10:
	; Parameter 72 double £temporary3419
	fstp qword [rbp + 72]

 acos_test$11:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
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

@9514string_2020atan2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   atan(%f) = %f, errno = %i\n
	db "  atan(%f) = %f, errno = %i", 10, 0

section .text

 atan_test:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan_test$1:
	; Parameter 56 pointer string_2020atan2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9514string_2020atan2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3424

 atan_test$10:
	; Parameter 72 double £temporary3424
	fstp qword [rbp + 72]

 atan_test$11:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
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

@9519floating8$0.333333333#:
	; Initializer Double 0.333333333
	dq 0.333333333

section .data

@9520floating8$0.75#:
	; Initializer Double 0.75
	dq 0.75

section .data

@9521floating8$1.000010#:
	; Initializer Double 1.000010
	dq 1.000010

section .data

@9523floating8$0.999999#:
	; Initializer Double 0.999999
	dq 0.999999

section .data

@9524floating8$0.000010#:
	; Initializer Double 0.000010
	dq 0.000010

section .data

@9527floating8$minus0.000010#:
	; Initializer Double -0.000010
	dq -0.000010

section .data

@9528floating8$minus0.999999#:
	; Initializer Double -0.999999
	dq -0.999999

section .data

@9529floating8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@9530floating8$minus1.000010#:
	; Initializer Double -1.000010
	dq -1.000010

section .data

@9535floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@9536floating8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .data

@9541floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@9547floating8$minus1.57#:
	; Initializer Double -1.57
	dq -1.57

section .data

@9549floating8$minus3.14#:
	; Initializer Double -3.14
	dq -3.14

section .data

@9554floating8$minus6.28#:
	; Initializer Double -6.28
	dq -6.28

section .data

@9556floating8$2.0#:
	; Initializer Double 2.0
	dq 2.0

section .data

@9557floating8$3.0#:
	; Initializer Double 3.0
	dq 3.0

section .data

@9558floating8$4.0#:
	; Initializer Double 4.0
	dq 4.0

section .data

@9561floating8$2.0#:
	; Initializer Double 2.0
	dq 2.0

section .data

@9564floating8$minus2.0#:
	; Initializer Double -2.0
	dq -2.0

section .data

@9567floating8$2.0#:
	; Initializer Double 2.0
	dq 2.0

section .data

@9570floating8$minus2.0#:
	; Initializer Double -2.0
	dq -2.0

section .data

@9576floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@9580floating8$minus2#:
	; Initializer Double -2
	dq -2.0

section .data

@9583floating8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@9584floating8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@9585floating8$minus2.0#:
	; Initializer Double -2.0
	dq -2.0

section .data

@9586floating8$minus4.0#:
	; Initializer Double -4.0
	dq -4.0

section .text

 math_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$1:
	; PushFloat floating8$0.333333333#
	fld qword [@9519floating8$0.333333333#]

 math_test$2:
	; Parameter 48 double floating8$0.333333333#
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
	; PushFloat floating8$0.75#
	fld qword [@9520floating8$0.75#]

 math_test$7:
	; Parameter 48 double floating8$0.75#
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
	; PushFloat floating8$1.000010#
	fld qword [@9521floating8$1.000010#]

 math_test$12:
	; Parameter 48 double floating8$1.000010#
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
	; PushFloat floating8$1.0#
	fld1

 math_test$17:
	; Parameter 48 double floating8$1.0#
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
	; PushFloat floating8$0.999999#
	fld qword [@9523floating8$0.999999#]

 math_test$22:
	; Parameter 48 double floating8$0.999999#
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
	; PushFloat floating8$0.000010#
	fld qword [@9524floating8$0.000010#]

 math_test$27:
	; Parameter 48 double floating8$0.000010#
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
	; PushFloat floating8$0#
	fldz

 math_test$32:
	; Parameter 48 double floating8$0#
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
	; PushFloat floating8$minus0.000010#
	fld qword [@9527floating8$minus0.000010#]

 math_test$37:
	; Parameter 48 double floating8$minus0.000010#
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
	; PushFloat floating8$minus0.999999#
	fld qword [@9528floating8$minus0.999999#]

 math_test$42:
	; Parameter 48 double floating8$minus0.999999#
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
	; PushFloat floating8$minus1.0#
	fld qword [@9529floating8$minus1.0#]

 math_test$47:
	; Parameter 48 double floating8$minus1.0#
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
	; PushFloat floating8$minus1.000010#
	fld qword [@9530floating8$minus1.000010#]

 math_test$52:
	; Parameter 48 double floating8$minus1.000010#
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
	; PushFloat floating8$6.28#
	fld qword [@9535floating8$6.28#]

 math_test$57:
	; Parameter 48 double floating8$6.28#
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
	; PushFloat floating8$3.14#
	fld qword [@9536floating8$3.14#]

 math_test$62:
	; Parameter 48 double floating8$3.14#
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
	; PushFloat floating8$1.57#
	fld qword [@9541floating8$1.57#]

 math_test$67:
	; Parameter 48 double floating8$1.57#
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
	; PushFloat floating8$minus1.57#
	fld qword [@9547floating8$minus1.57#]

 math_test$72:
	; Parameter 48 double floating8$minus1.57#
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
	; PushFloat floating8$minus3.14#
	fld qword [@9549floating8$minus3.14#]

 math_test$77:
	; Parameter 48 double floating8$minus3.14#
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
	; PushFloat floating8$minus6.28#
	fld qword [@9554floating8$minus6.28#]

 math_test$82:
	; Parameter 48 double floating8$minus6.28#
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
	; PushFloat floating8$1.0#
	fld1

 math_test$87:
	; Parameter 48 double floating8$1.0#
	fstp qword [rbp + 48]

 math_test$88:
	; PushFloat floating8$2.0#
	fld qword [@9556floating8$2.0#]

 math_test$89:
	; Parameter 56 double floating8$2.0#
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
	; PushFloat floating8$3.0#
	fld qword [@9557floating8$3.0#]

 math_test$94:
	; Parameter 48 double floating8$3.0#
	fstp qword [rbp + 48]

 math_test$95:
	; PushFloat floating8$4.0#
	fld qword [@9558floating8$4.0#]

 math_test$96:
	; Parameter 56 double floating8$4.0#
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
	; PushFloat floating8$0#
	fldz

 math_test$101:
	; Parameter 48 double floating8$0#
	fstp qword [rbp + 48]

 math_test$102:
	; PushFloat floating8$2.0#
	fld qword [@9561floating8$2.0#]

 math_test$103:
	; Parameter 56 double floating8$2.0#
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
	; PushFloat floating8$0#
	fldz

 math_test$108:
	; Parameter 48 double floating8$0#
	fstp qword [rbp + 48]

 math_test$109:
	; PushFloat floating8$minus2.0#
	fld qword [@9564floating8$minus2.0#]

 math_test$110:
	; Parameter 56 double floating8$minus2.0#
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
	; PushFloat floating8$1#
	fld1

 math_test$115:
	; Parameter 48 double floating8$1#
	fstp qword [rbp + 48]

 math_test$116:
	; PushFloat floating8$2.0#
	fld qword [@9567floating8$2.0#]

 math_test$117:
	; Parameter 56 double floating8$2.0#
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
	; PushFloat floating8$1#
	fld1

 math_test$122:
	; Parameter 48 double floating8$1#
	fstp qword [rbp + 48]

 math_test$123:
	; PushFloat floating8$minus2.0#
	fld qword [@9570floating8$minus2.0#]

 math_test$124:
	; Parameter 56 double floating8$minus2.0#
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
	; PushFloat floating8$0#
	fldz

 math_test$129:
	; Parameter 48 double floating8$0#
	fstp qword [rbp + 48]

 math_test$130:
	; PushFloat floating8$0#
	fldz

 math_test$131:
	; Parameter 56 double floating8$0#
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
	; PushFloat floating8$2#
	fld qword [@9576floating8$2#]

 math_test$136:
	; Parameter 48 double floating8$2#
	fstp qword [rbp + 48]

 math_test$137:
	; PushFloat floating8$0#
	fldz

 math_test$138:
	; Parameter 56 double floating8$0#
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
	; PushFloat floating8$minus2#
	fld qword [@9580floating8$minus2#]

 math_test$143:
	; Parameter 48 double floating8$minus2#
	fstp qword [rbp + 48]

 math_test$144:
	; PushFloat floating8$0#
	fldz

 math_test$145:
	; Parameter 56 double floating8$0#
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
	; PushFloat floating8$minus1.0#
	fld qword [@9583floating8$minus1.0#]

 math_test$150:
	; Parameter 48 double floating8$minus1.0#
	fstp qword [rbp + 48]

 math_test$151:
	; PushFloat floating8$minus1.0#
	fld qword [@9584floating8$minus1.0#]

 math_test$152:
	; Parameter 56 double floating8$minus1.0#
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
	; PushFloat floating8$minus2.0#
	fld qword [@9585floating8$minus2.0#]

 math_test$157:
	; Parameter 48 double floating8$minus2.0#
	fstp qword [rbp + 48]

 math_test$158:
	; PushFloat floating8$minus4.0#
	fld qword [@9586floating8$minus4.0#]

 math_test$159:
	; Parameter 56 double floating8$minus4.0#
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

@9588string_3C25f3E0A#:
	; Initializer String <%f>\n
	db "<%f>", 10, 0

section .data

@9589string_2020sin2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sin(%f) = %f, errno = %i\n
	db "  sin(%f) = %f, errno = %i", 10, 0

section .data

@9591string_2020cos2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   cos(%f) = %f, errno = %i\n
	db "  cos(%f) = %f, errno = %i", 10, 0

section .data

@9593string_2020tan2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   tan(%f) = %f, errno = %i\n
	db "  tan(%f) = %f, errno = %i", 10, 0

section .data

@9595string_2020asin2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   asin(%f) = %f, errno = %i\n
	db "  asin(%f) = %f, errno = %i", 10, 0

section .data

@9597string_2020acos2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   acos(%f) = %f, errno = %i\n
	db "  acos(%f) = %f, errno = %i", 10, 0

section .data

@9599string_2020atan2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   atan(%f) = %f, errno = %i\n
	db "  atan(%f) = %f, errno = %i", 10, 0

section .data

@9601string_2020exp2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   exp(%f) = %f, errno = %i\n
	db "  exp(%f) = %f, errno = %i", 10, 0

section .data

@9603string_2020log2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   log(%f) = %f, errno = %i\n
	db "  log(%f) = %f, errno = %i", 10, 0

section .data

@9605string_2020log102825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   log10(%f) = %f, errno = %i\n
	db "  log10(%f) = %f, errno = %i", 10, 0

section .data

@9607string_2020sinh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sinh(%f) = %f, errno = %i\n
	db "  sinh(%f) = %f, errno = %i", 10, 0

section .data

@9609string_2020cosh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   cosh(%f) = %f, errno = %i\n
	db "  cosh(%f) = %f, errno = %i", 10, 0

section .data

@9611string_2020tanh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   tanh(%f) = %f, errno = %i\n
	db "  tanh(%f) = %f, errno = %i", 10, 0

section .data

@9613string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sqrt(%f) = %f, errno = %i\n
	db "  sqrt(%f) = %f, errno = %i", 10, 0

section .data

@9615string_2020floor2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   floor(%f) = %f, errno = %i\n
	db "  floor(%f) = %f, errno = %i", 10, 0

section .data

@9617string_2020ceil2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   ceil(%f) = %f, errno = %i\n
	db "  ceil(%f) = %f, errno = %i", 10, 0

section .data

@9619string_2020fabs2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   fabs(%f) = %f, errno = %i\n
	db "  fabs(%f) = %f, errno = %i", 10, 0

section .data

@9624string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#:
	; Initializer String frexp (%f, p) = (%f, %i), errno = %i\n
	db "frexp (%f, p) = (%f, %i), errno = %i", 10, 0

section .data

@9626string_Error20message3A#:
	; Initializer String Error message:
	db "Error message:", 0

section .data

@9632string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#:
	; Initializer String modf (%f, p) = (%f, %f), errno = %i\n
	db "modf (%f, p) = (%f, %f), errno = %i", 10, 0

section .data

@9634string_Error20message3A#:
	; Initializer String Error message:
	db "Error message:", 0

section .data

@9636string_0A#:
	; Initializer String \n
	db 10, 0

section .text

 math_test_1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$1:
	; Parameter 56 pointer string_3C25f3E0A#
	mov qword [rbp + 56], @9588string_3C25f3E0A#

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
	; Parameter 56 pointer string_2020sin2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9589string_2020sin2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3497

 math_test_1$16:
	; Parameter 72 double £temporary3497
	fstp qword [rbp + 72]

 math_test_1$17:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$21:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$22:
	; Parameter 56 pointer string_2020cos2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9591string_2020cos2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3499

 math_test_1$31:
	; Parameter 72 double £temporary3499
	fstp qword [rbp + 72]

 math_test_1$32:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$36:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$37:
	; Parameter 56 pointer string_2020tan2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9593string_2020tan2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3501

 math_test_1$46:
	; Parameter 72 double £temporary3501
	fstp qword [rbp + 72]

 math_test_1$47:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$51:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$52:
	; Parameter 56 pointer string_2020asin2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9595string_2020asin2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3503

 math_test_1$61:
	; Parameter 72 double £temporary3503
	fstp qword [rbp + 72]

 math_test_1$62:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$66:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$67:
	; Parameter 56 pointer string_2020acos2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9597string_2020acos2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3505

 math_test_1$76:
	; Parameter 72 double £temporary3505
	fstp qword [rbp + 72]

 math_test_1$77:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$81:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$82:
	; Parameter 56 pointer string_2020atan2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9599string_2020atan2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3507

 math_test_1$91:
	; Parameter 72 double £temporary3507
	fstp qword [rbp + 72]

 math_test_1$92:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$96:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$97:
	; Parameter 56 pointer string_2020exp2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9601string_2020exp2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3509

 math_test_1$106:
	; Parameter 72 double £temporary3509
	fstp qword [rbp + 72]

 math_test_1$107:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$111:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$112:
	; Parameter 56 pointer string_2020log2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9603string_2020log2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3511

 math_test_1$121:
	; Parameter 72 double £temporary3511
	fstp qword [rbp + 72]

 math_test_1$122:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$126:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$127:
	; Parameter 56 pointer string_2020log102825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9605string_2020log102825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3513

 math_test_1$136:
	; Parameter 72 double £temporary3513
	fstp qword [rbp + 72]

 math_test_1$137:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$141:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$142:
	; Parameter 56 pointer string_2020sinh2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9607string_2020sinh2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3515

 math_test_1$151:
	; Parameter 72 double £temporary3515
	fstp qword [rbp + 72]

 math_test_1$152:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$156:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$157:
	; Parameter 56 pointer string_2020cosh2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9609string_2020cosh2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3517

 math_test_1$166:
	; Parameter 72 double £temporary3517
	fstp qword [rbp + 72]

 math_test_1$167:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$171:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$172:
	; Parameter 56 pointer string_2020tanh2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9611string_2020tanh2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3519

 math_test_1$181:
	; Parameter 72 double £temporary3519
	fstp qword [rbp + 72]

 math_test_1$182:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$186:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$187:
	; Parameter 56 pointer string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9613string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3521

 math_test_1$196:
	; Parameter 72 double £temporary3521
	fstp qword [rbp + 72]

 math_test_1$197:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$201:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$202:
	; Parameter 56 pointer string_2020floor2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9615string_2020floor2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3523

 math_test_1$211:
	; Parameter 72 double £temporary3523
	fstp qword [rbp + 72]

 math_test_1$212:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$216:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$217:
	; Parameter 56 pointer string_2020ceil2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9617string_2020ceil2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3525

 math_test_1$226:
	; Parameter 72 double £temporary3525
	fstp qword [rbp + 72]

 math_test_1$227:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$231:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$232:
	; Parameter 56 pointer string_2020fabs2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9619string_2020fabs2825f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3527

 math_test_1$241:
	; Parameter 72 double £temporary3527
	fstp qword [rbp + 72]

 math_test_1$242:
	; Parameter 80 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$246:
	; Assign j integral4$0#
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
	; Address £temporary3529 j
	mov rsi, rbp
	add rsi, 32

 math_test_1$251:
	; Parameter 68 pointer £temporary3529
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
	; GetReturnValue £temporary3530

 math_test_1$255:
	; PopFloat z
	fstp qword [rbp + 36]

 math_test_1$256:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$257:
	; Parameter 68 pointer string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#
	mov qword [rbp + 68], @9624string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#

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
	; Parameter 92 signed int j
	mov eax, [rbp + 32]
	mov [rbp + 92], eax

 math_test_1$263:
	; Parameter 96 signed int errno
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
	; Equal 272 errno integral4$0#
	cmp dword [errno], 0
	je math_test_1$272

 math_test_1$267:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$268:
	; Parameter 68 pointer string_Error20message3A#
	mov qword [rbp + 68], @9626string_Error20message3A#

 math_test_1$269:
	; Call 44 perror 0
	mov qword [rbp + 44], math_test_1$270
	mov [rbp + 52], rbp
	add rbp, 44
	jmp perror

 math_test_1$270:
	; PostCall 44

 math_test_1$271:
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$272:
	; PushFloat floating8$0#
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
	; Address £temporary3534 w
	mov rsi, rbp
	add rsi, 32

 math_test_1$278:
	; Parameter 72 pointer £temporary3534
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
	; GetReturnValue £temporary3535

 math_test_1$282:
	; PopFloat z
	fstp qword [rbp + 40]

 math_test_1$283:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$284:
	; Parameter 72 pointer string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#
	mov qword [rbp + 72], @9632string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#

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
	; Parameter 104 signed int errno
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
	; Equal 300 errno integral4$0#
	cmp dword [errno], 0
	je math_test_1$300

 math_test_1$295:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$296:
	; Parameter 72 pointer string_Error20message3A#
	mov qword [rbp + 72], @9634string_Error20message3A#

 math_test_1$297:
	; Call 48 perror 0
	mov qword [rbp + 48], math_test_1$298
	mov [rbp + 56], rbp
	add rbp, 48
	jmp perror

 math_test_1$298:
	; PostCall 48

 math_test_1$299:
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$300:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$301:
	; Parameter 56 pointer string_0A#
	mov qword [rbp + 56], @9636string_0A#

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

@9682string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String fmod(%f, %f) = %f, errno = %i\n
	db "fmod(%f, %f) = %f, errno = %i", 10, 0

section .data

@9684string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String atan2(%f, %f) = %f, errno = %i\n
	db "atan2(%f, %f) = %f, errno = %i", 10, 0

section .data

@9686string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String pow(%f, %f) = %f, errno = %i\n
	db "pow(%f, %f) = %f, errno = %i", 10, 0

section .data

@9688string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@9689string_ldexp2825f2C2025i29203D2025f0A0A#:
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
	; Parameter 64 pointer string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 64], @9682string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3598

 math_test_2$14:
	; Parameter 88 double £temporary3598
	fstp qword [rbp + 88]

 math_test_2$15:
	; Parameter 96 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_2$19:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$20:
	; Parameter 64 pointer string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 64], @9684string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3600

 math_test_2$33:
	; Parameter 88 double £temporary3600
	fstp qword [rbp + 88]

 math_test_2$34:
	; Parameter 96 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_2$38:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$39:
	; Parameter 64 pointer string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 64], @9686string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#

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
	; GetReturnValue £temporary3602

 math_test_2$52:
	; Parameter 88 double £temporary3602
	fstp qword [rbp + 88]

 math_test_2$53:
	; Parameter 96 signed int errno
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
	; Assign errno integral4$0#
	mov dword [errno], 0

 math_test_2$57:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$58:
	; Parameter 64 pointer string_0A#
	mov qword [rbp + 64], @9688string_0A#

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
	; Parameter 64 pointer string_ldexp2825f2C2025i29203D2025f0A0A#
	mov qword [rbp + 64], @9689string_ldexp2825f2C2025i29203D2025f0A0A#

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
	; FloatingToIntegral £temporary3605 y
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 math_test_2$67:
	; Parameter 80 signed int £temporary3605
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
	; FloatingToIntegral £temporary3606 y
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 math_test_2$73:
	; Parameter 116 signed int £temporary3606
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
	; GetReturnValue £temporary3607

 math_test_2$77:
	; Parameter 84 double £temporary3607
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
