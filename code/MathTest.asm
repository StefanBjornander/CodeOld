	global math_test_1x
	global acos_test
	global atan_test
	global main_math
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

float8$minus6.28#:
	; Initializer Double -6.28
	dq -6.28

section .data

float8$minus3.14#:
	; Initializer Double -3.14
	dq -3.14

section .data

float8$minus1.57#:
	; Initializer Double -1.57
	dq -1.57

section .data

float8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

float8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

float8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .data

float8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .text

 math_test_1x:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$1:
	; PushFloat -6.28
	fld qword [float8$minus6.28#]

 math_test_1x$2:
	; Parameter double -6.28 48
	fstp qword [rbp + 48]

 math_test_1x$3:
	; Call math_test_1 24 0
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
	fld qword [float8$minus3.14#]

 math_test_1x$7:
	; Parameter double -3.14 48
	fstp qword [rbp + 48]

 math_test_1x$8:
	; Call math_test_1 24 0
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
	fld qword [float8$minus1.57#]

 math_test_1x$12:
	; Parameter double -1.57 48
	fstp qword [rbp + 48]

 math_test_1x$13:
	; Call math_test_1 24 0
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
	fld qword [float8$minus1#]

 math_test_1x$17:
	; Parameter double -1 48
	fstp qword [rbp + 48]

 math_test_1x$18:
	; Call math_test_1 24 0
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
	; Parameter double 0 48
	fstp qword [rbp + 48]

 math_test_1x$23:
	; Call math_test_1 24 0
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
	; Parameter double 1 48
	fstp qword [rbp + 48]

 math_test_1x$28:
	; Call math_test_1 24 0
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
	fld qword [float8$1.57#]

 math_test_1x$32:
	; Parameter double 1.57 48
	fstp qword [rbp + 48]

 math_test_1x$33:
	; Call math_test_1 24 0
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
	fld qword [float8$3.14#]

 math_test_1x$37:
	; Parameter double 3.14 48
	fstp qword [rbp + 48]

 math_test_1x$38:
	; Call math_test_1 24 0
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
	fld qword [float8$6.28#]

 math_test_1x$42:
	; Parameter double 6.28 48
	fstp qword [rbp + 48]

 math_test_1x$43:
	; Call math_test_1 24 0
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

string_2020acos2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   acos(%f) = %f, errno = %i\n
	db "  acos(%f) = %f, errno = %i", 10, 0

section .text

 acos_test:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos_test$1:
	; Parameter pointer "  acos(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020acos2825f29203D2025f2C20errno203D2025i0A#

 acos_test$2:
	; PushFloat x
	fld qword [rbp + 24]

 acos_test$3:
	; Parameter double x 64
	fstp qword [rbp + 64]

 acos_test$4:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos_test$5:
	; PushFloat x
	fld qword [rbp + 24]

 acos_test$6:
	; Parameter double x 96
	fstp qword [rbp + 96]

 acos_test$7:
	; Call acos 72 0
	mov qword [rbp + 72], acos_test$8
	mov [rbp + 80], rbp
	add rbp, 72
	jmp acos

 acos_test$8:
	; PostCall 72

 acos_test$9:
	; GetReturnValue £temporary3097

 acos_test$10:
	; Parameter double £temporary3097 72
	fstp qword [rbp + 72]

 acos_test$11:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 acos_test$12:
	; Call printf 32 20
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

string_2020atan2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   atan(%f) = %f, errno = %i\n
	db "  atan(%f) = %f, errno = %i", 10, 0

section .text

 atan_test:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan_test$1:
	; Parameter pointer "  atan(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020atan2825f29203D2025f2C20errno203D2025i0A#

 atan_test$2:
	; PushFloat x
	fld qword [rbp + 24]

 atan_test$3:
	; Parameter double x 64
	fstp qword [rbp + 64]

 atan_test$4:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan_test$5:
	; PushFloat x
	fld qword [rbp + 24]

 atan_test$6:
	; Parameter double x 96
	fstp qword [rbp + 96]

 atan_test$7:
	; Call atan 72 0
	mov qword [rbp + 72], atan_test$8
	mov [rbp + 80], rbp
	add rbp, 72
	jmp atan

 atan_test$8:
	; PostCall 72

 atan_test$9:
	; GetReturnValue £temporary3102

 atan_test$10:
	; Parameter double £temporary3102 72
	fstp qword [rbp + 72]

 atan_test$11:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 atan_test$12:
	; Call printf 32 20
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

float8$0.333333333#:
	; Initializer Double 0.333333333
	dq 0.333333333

section .data

float8$0.75#:
	; Initializer Double 0.75
	dq 0.75

section .data

float8$1.000010#:
	; Initializer Double 1.000010
	dq 1.000010

section .data

float8$0.999999#:
	; Initializer Double 0.999999
	dq 0.999999

section .data

float8$0.000010#:
	; Initializer Double 0.000010
	dq 0.000010

section .data

float8$minus0.000010#:
	; Initializer Double -0.000010
	dq -0.000010

section .data

float8$minus0.999999#:
	; Initializer Double -0.999999
	dq -0.999999

section .data

float8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

float8$minus1.000010#:
	; Initializer Double -1.000010
	dq -1.000010

section .data

float8$2.0#:
	; Initializer Double 2.0
	dq 2.0

section .data

float8$3.0#:
	; Initializer Double 3.0
	dq 3.0

section .data

float8$4.0#:
	; Initializer Double 4.0
	dq 4.0

section .data

float8$minus2.0#:
	; Initializer Double -2.0
	dq -2.0

section .data

float8$2#:
	; Initializer Double 2
	dq 2.0

section .data

float8$minus2#:
	; Initializer Double -2
	dq -2.0

section .data

float8$minus4.0#:
	; Initializer Double -4.0
	dq -4.0

section .text

 main_math:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$1:
	; PushFloat 0.333333333
	fld qword [float8$0.333333333#]

 main_math$2:
	; Parameter double 0.333333333 48
	fstp qword [rbp + 48]

 main_math$3:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$4:
	; PostCall 24

 main_math$5:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$6:
	; PushFloat 0.75
	fld qword [float8$0.75#]

 main_math$7:
	; Parameter double 0.75 48
	fstp qword [rbp + 48]

 main_math$8:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$9:
	; PostCall 24

 main_math$10:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$11:
	; PushFloat 1.000010
	fld qword [float8$1.000010#]

 main_math$12:
	; Parameter double 1.000010 48
	fstp qword [rbp + 48]

 main_math$13:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$14:
	; PostCall 24

 main_math$15:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$16:
	; PushFloat 1.0
	fld1

 main_math$17:
	; Parameter double 1.0 48
	fstp qword [rbp + 48]

 main_math$18:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$19:
	; PostCall 24

 main_math$20:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$21:
	; PushFloat 0.999999
	fld qword [float8$0.999999#]

 main_math$22:
	; Parameter double 0.999999 48
	fstp qword [rbp + 48]

 main_math$23:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$24
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$24:
	; PostCall 24

 main_math$25:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$26:
	; PushFloat 0.000010
	fld qword [float8$0.000010#]

 main_math$27:
	; Parameter double 0.000010 48
	fstp qword [rbp + 48]

 main_math$28:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$29
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$29:
	; PostCall 24

 main_math$30:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$31:
	; PushFloat 0
	fldz

 main_math$32:
	; Parameter double 0 48
	fstp qword [rbp + 48]

 main_math$33:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$34
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$34:
	; PostCall 24

 main_math$35:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$36:
	; PushFloat -0.000010
	fld qword [float8$minus0.000010#]

 main_math$37:
	; Parameter double -0.000010 48
	fstp qword [rbp + 48]

 main_math$38:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$39
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$39:
	; PostCall 24

 main_math$40:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$41:
	; PushFloat -0.999999
	fld qword [float8$minus0.999999#]

 main_math$42:
	; Parameter double -0.999999 48
	fstp qword [rbp + 48]

 main_math$43:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$44
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$44:
	; PostCall 24

 main_math$45:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$46:
	; PushFloat -1.0
	fld qword [float8$minus1.0#]

 main_math$47:
	; Parameter double -1.0 48
	fstp qword [rbp + 48]

 main_math$48:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$49
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$49:
	; PostCall 24

 main_math$50:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$51:
	; PushFloat -1.000010
	fld qword [float8$minus1.000010#]

 main_math$52:
	; Parameter double -1.000010 48
	fstp qword [rbp + 48]

 main_math$53:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$54
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$54:
	; PostCall 24

 main_math$55:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$56:
	; PushFloat 6.28
	fld qword [float8$6.28#]

 main_math$57:
	; Parameter double 6.28 48
	fstp qword [rbp + 48]

 main_math$58:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$59
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$59:
	; PostCall 24

 main_math$60:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$61:
	; PushFloat 3.14
	fld qword [float8$3.14#]

 main_math$62:
	; Parameter double 3.14 48
	fstp qword [rbp + 48]

 main_math$63:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$64
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$64:
	; PostCall 24

 main_math$65:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$66:
	; PushFloat 1.57
	fld qword [float8$1.57#]

 main_math$67:
	; Parameter double 1.57 48
	fstp qword [rbp + 48]

 main_math$68:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$69
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$69:
	; PostCall 24

 main_math$70:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$71:
	; PushFloat -1.57
	fld qword [float8$minus1.57#]

 main_math$72:
	; Parameter double -1.57 48
	fstp qword [rbp + 48]

 main_math$73:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$74
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$74:
	; PostCall 24

 main_math$75:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$76:
	; PushFloat -3.14
	fld qword [float8$minus3.14#]

 main_math$77:
	; Parameter double -3.14 48
	fstp qword [rbp + 48]

 main_math$78:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$79
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$79:
	; PostCall 24

 main_math$80:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$81:
	; PushFloat -6.28
	fld qword [float8$minus6.28#]

 main_math$82:
	; Parameter double -6.28 48
	fstp qword [rbp + 48]

 main_math$83:
	; Call math_test_1 24 0
	mov qword [rbp + 24], main_math$84
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 main_math$84:
	; PostCall 24

 main_math$85:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$86:
	; PushFloat 1.0
	fld1

 main_math$87:
	; Parameter double 1.0 48
	fstp qword [rbp + 48]

 main_math$88:
	; PushFloat 2.0
	fld qword [float8$2.0#]

 main_math$89:
	; Parameter double 2.0 56
	fstp qword [rbp + 56]

 main_math$90:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$91
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$91:
	; PostCall 24

 main_math$92:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$93:
	; PushFloat 3.0
	fld qword [float8$3.0#]

 main_math$94:
	; Parameter double 3.0 48
	fstp qword [rbp + 48]

 main_math$95:
	; PushFloat 4.0
	fld qword [float8$4.0#]

 main_math$96:
	; Parameter double 4.0 56
	fstp qword [rbp + 56]

 main_math$97:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$98
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$98:
	; PostCall 24

 main_math$99:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$100:
	; PushFloat 0
	fldz

 main_math$101:
	; Parameter double 0 48
	fstp qword [rbp + 48]

 main_math$102:
	; PushFloat 2.0
	fld qword [float8$2.0#]

 main_math$103:
	; Parameter double 2.0 56
	fstp qword [rbp + 56]

 main_math$104:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$105
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$105:
	; PostCall 24

 main_math$106:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$107:
	; PushFloat 0
	fldz

 main_math$108:
	; Parameter double 0 48
	fstp qword [rbp + 48]

 main_math$109:
	; PushFloat -2.0
	fld qword [float8$minus2.0#]

 main_math$110:
	; Parameter double -2.0 56
	fstp qword [rbp + 56]

 main_math$111:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$112
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$112:
	; PostCall 24

 main_math$113:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$114:
	; PushFloat 1
	fld1

 main_math$115:
	; Parameter double 1 48
	fstp qword [rbp + 48]

 main_math$116:
	; PushFloat 2.0
	fld qword [float8$2.0#]

 main_math$117:
	; Parameter double 2.0 56
	fstp qword [rbp + 56]

 main_math$118:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$119
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$119:
	; PostCall 24

 main_math$120:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$121:
	; PushFloat 1
	fld1

 main_math$122:
	; Parameter double 1 48
	fstp qword [rbp + 48]

 main_math$123:
	; PushFloat -2.0
	fld qword [float8$minus2.0#]

 main_math$124:
	; Parameter double -2.0 56
	fstp qword [rbp + 56]

 main_math$125:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$126
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$126:
	; PostCall 24

 main_math$127:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$128:
	; PushFloat 0
	fldz

 main_math$129:
	; Parameter double 0 48
	fstp qword [rbp + 48]

 main_math$130:
	; PushFloat 0
	fldz

 main_math$131:
	; Parameter double 0 56
	fstp qword [rbp + 56]

 main_math$132:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$133
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$133:
	; PostCall 24

 main_math$134:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$135:
	; PushFloat 2
	fld qword [float8$2#]

 main_math$136:
	; Parameter double 2 48
	fstp qword [rbp + 48]

 main_math$137:
	; PushFloat 0
	fldz

 main_math$138:
	; Parameter double 0 56
	fstp qword [rbp + 56]

 main_math$139:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$140
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$140:
	; PostCall 24

 main_math$141:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$142:
	; PushFloat -2
	fld qword [float8$minus2#]

 main_math$143:
	; Parameter double -2 48
	fstp qword [rbp + 48]

 main_math$144:
	; PushFloat 0
	fldz

 main_math$145:
	; Parameter double 0 56
	fstp qword [rbp + 56]

 main_math$146:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$147
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$147:
	; PostCall 24

 main_math$148:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$149:
	; PushFloat -1.0
	fld qword [float8$minus1.0#]

 main_math$150:
	; Parameter double -1.0 48
	fstp qword [rbp + 48]

 main_math$151:
	; PushFloat -1.0
	fld qword [float8$minus1.0#]

 main_math$152:
	; Parameter double -1.0 56
	fstp qword [rbp + 56]

 main_math$153:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$154
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$154:
	; PostCall 24

 main_math$155:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$156:
	; PushFloat -2.0
	fld qword [float8$minus2.0#]

 main_math$157:
	; Parameter double -2.0 48
	fstp qword [rbp + 48]

 main_math$158:
	; PushFloat -4.0
	fld qword [float8$minus4.0#]

 main_math$159:
	; Parameter double -4.0 56
	fstp qword [rbp + 56]

 main_math$160:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$161
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$161:
	; PostCall 24

 main_math$162:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main_math$163:
	; FunctionEnd main_math

section .data

string_3C25f3E0A#:
	; Initializer String <%f>\n
	db "<%f>", 10, 0

section .data

string_2020sin2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sin(%f) = %f, errno = %i\n
	db "  sin(%f) = %f, errno = %i", 10, 0

section .data

string_2020cos2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   cos(%f) = %f, errno = %i\n
	db "  cos(%f) = %f, errno = %i", 10, 0

section .data

string_2020tan2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   tan(%f) = %f, errno = %i\n
	db "  tan(%f) = %f, errno = %i", 10, 0

section .data

string_2020asin2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   asin(%f) = %f, errno = %i\n
	db "  asin(%f) = %f, errno = %i", 10, 0

section .data

string_2020exp2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   exp(%f) = %f, errno = %i\n
	db "  exp(%f) = %f, errno = %i", 10, 0

section .data

string_2020log2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   log(%f) = %f, errno = %i\n
	db "  log(%f) = %f, errno = %i", 10, 0

section .data

string_2020log102825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   log10(%f) = %f, errno = %i\n
	db "  log10(%f) = %f, errno = %i", 10, 0

section .data

string_2020sinh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sinh(%f) = %f, errno = %i\n
	db "  sinh(%f) = %f, errno = %i", 10, 0

section .data

string_2020cosh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   cosh(%f) = %f, errno = %i\n
	db "  cosh(%f) = %f, errno = %i", 10, 0

section .data

string_2020tanh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   tanh(%f) = %f, errno = %i\n
	db "  tanh(%f) = %f, errno = %i", 10, 0

section .data

string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sqrt(%f) = %f, errno = %i\n
	db "  sqrt(%f) = %f, errno = %i", 10, 0

section .data

string_2020floor2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   floor(%f) = %f, errno = %i\n
	db "  floor(%f) = %f, errno = %i", 10, 0

section .data

string_2020ceil2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   ceil(%f) = %f, errno = %i\n
	db "  ceil(%f) = %f, errno = %i", 10, 0

section .data

string_2020fabs2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   fabs(%f) = %f, errno = %i\n
	db "  fabs(%f) = %f, errno = %i", 10, 0

section .data

string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#:
	; Initializer String frexp (%f, p) = (%f, %i), errno = %i\n
	db "frexp (%f, p) = (%f, %i), errno = %i", 10, 0

section .data

string_Error20message3A#:
	; Initializer String Error message:
	db "Error message:", 0

section .data

string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#:
	; Initializer String modf (%f, p) = (%f, %f), errno = %i\n
	db "modf (%f, p) = (%f, %f), errno = %i", 10, 0

section .data

string_0A#:
	; Initializer String \n
	db 10, 0

section .text

 math_test_1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$1:
	; Parameter pointer "<%f>\n" 56
	mov qword [rbp + 56], string_3C25f3E0A#

 math_test_1$2:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$3:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$4:
	; Call printf 32 8
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
	; Parameter pointer "  sin(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020sin2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$8:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$9:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$10:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$11:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$12:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$13:
	; Call sin 72 0
	mov qword [rbp + 72], math_test_1$14
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sin

 math_test_1$14:
	; PostCall 72

 math_test_1$15:
	; GetReturnValue £temporary3175

 math_test_1$16:
	; Parameter double £temporary3175 72
	fstp qword [rbp + 72]

 math_test_1$17:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$18:
	; Call printf 32 20
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
	; Parameter pointer "  cos(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020cos2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$23:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$24:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$25:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$26:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$27:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$28:
	; Call cos 72 0
	mov qword [rbp + 72], math_test_1$29
	mov [rbp + 80], rbp
	add rbp, 72
	jmp cos

 math_test_1$29:
	; PostCall 72

 math_test_1$30:
	; GetReturnValue £temporary3177

 math_test_1$31:
	; Parameter double £temporary3177 72
	fstp qword [rbp + 72]

 math_test_1$32:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$33:
	; Call printf 32 20
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
	; Parameter pointer "  tan(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020tan2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$38:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$39:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$40:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$41:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$42:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$43:
	; Call tan 72 0
	mov qword [rbp + 72], math_test_1$44
	mov [rbp + 80], rbp
	add rbp, 72
	jmp tan

 math_test_1$44:
	; PostCall 72

 math_test_1$45:
	; GetReturnValue £temporary3179

 math_test_1$46:
	; Parameter double £temporary3179 72
	fstp qword [rbp + 72]

 math_test_1$47:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$48:
	; Call printf 32 20
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
	; Parameter pointer "  asin(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020asin2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$53:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$54:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$55:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$56:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$57:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$58:
	; Call asin 72 0
	mov qword [rbp + 72], math_test_1$59
	mov [rbp + 80], rbp
	add rbp, 72
	jmp asin

 math_test_1$59:
	; PostCall 72

 math_test_1$60:
	; GetReturnValue £temporary3181

 math_test_1$61:
	; Parameter double £temporary3181 72
	fstp qword [rbp + 72]

 math_test_1$62:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$63:
	; Call printf 32 20
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
	; Parameter pointer "  acos(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020acos2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$68:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$69:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$70:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$71:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$72:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$73:
	; Call acos 72 0
	mov qword [rbp + 72], math_test_1$74
	mov [rbp + 80], rbp
	add rbp, 72
	jmp acos

 math_test_1$74:
	; PostCall 72

 math_test_1$75:
	; GetReturnValue £temporary3183

 math_test_1$76:
	; Parameter double £temporary3183 72
	fstp qword [rbp + 72]

 math_test_1$77:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$78:
	; Call printf 32 20
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
	; Parameter pointer "  atan(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020atan2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$83:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$84:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$85:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$86:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$87:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$88:
	; Call atan 72 0
	mov qword [rbp + 72], math_test_1$89
	mov [rbp + 80], rbp
	add rbp, 72
	jmp atan

 math_test_1$89:
	; PostCall 72

 math_test_1$90:
	; GetReturnValue £temporary3185

 math_test_1$91:
	; Parameter double £temporary3185 72
	fstp qword [rbp + 72]

 math_test_1$92:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$93:
	; Call printf 32 20
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
	; Parameter pointer "  exp(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020exp2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$98:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$99:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$100:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$101:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$102:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$103:
	; Call exp 72 0
	mov qword [rbp + 72], math_test_1$104
	mov [rbp + 80], rbp
	add rbp, 72
	jmp exp

 math_test_1$104:
	; PostCall 72

 math_test_1$105:
	; GetReturnValue £temporary3187

 math_test_1$106:
	; Parameter double £temporary3187 72
	fstp qword [rbp + 72]

 math_test_1$107:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$108:
	; Call printf 32 20
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
	; Parameter pointer "  log(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020log2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$113:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$114:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$115:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$116:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$117:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$118:
	; Call log 72 0
	mov qword [rbp + 72], math_test_1$119
	mov [rbp + 80], rbp
	add rbp, 72
	jmp log

 math_test_1$119:
	; PostCall 72

 math_test_1$120:
	; GetReturnValue £temporary3189

 math_test_1$121:
	; Parameter double £temporary3189 72
	fstp qword [rbp + 72]

 math_test_1$122:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$123:
	; Call printf 32 20
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
	; Parameter pointer "  log10(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020log102825f29203D2025f2C20errno203D2025i0A#

 math_test_1$128:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$129:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$130:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$131:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$132:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$133:
	; Call log10 72 0
	mov qword [rbp + 72], math_test_1$134
	mov [rbp + 80], rbp
	add rbp, 72
	jmp log10

 math_test_1$134:
	; PostCall 72

 math_test_1$135:
	; GetReturnValue £temporary3191

 math_test_1$136:
	; Parameter double £temporary3191 72
	fstp qword [rbp + 72]

 math_test_1$137:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$138:
	; Call printf 32 20
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
	; Parameter pointer "  sinh(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020sinh2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$143:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$144:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$145:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$146:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$147:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$148:
	; Call sinh 72 0
	mov qword [rbp + 72], math_test_1$149
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sinh

 math_test_1$149:
	; PostCall 72

 math_test_1$150:
	; GetReturnValue £temporary3193

 math_test_1$151:
	; Parameter double £temporary3193 72
	fstp qword [rbp + 72]

 math_test_1$152:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$153:
	; Call printf 32 20
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
	; Parameter pointer "  cosh(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020cosh2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$158:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$159:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$160:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$161:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$162:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$163:
	; Call cosh 72 0
	mov qword [rbp + 72], math_test_1$164
	mov [rbp + 80], rbp
	add rbp, 72
	jmp cosh

 math_test_1$164:
	; PostCall 72

 math_test_1$165:
	; GetReturnValue £temporary3195

 math_test_1$166:
	; Parameter double £temporary3195 72
	fstp qword [rbp + 72]

 math_test_1$167:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$168:
	; Call printf 32 20
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
	; Parameter pointer "  tanh(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020tanh2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$173:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$174:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$175:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$176:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$177:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$178:
	; Call tanh 72 0
	mov qword [rbp + 72], math_test_1$179
	mov [rbp + 80], rbp
	add rbp, 72
	jmp tanh

 math_test_1$179:
	; PostCall 72

 math_test_1$180:
	; GetReturnValue £temporary3197

 math_test_1$181:
	; Parameter double £temporary3197 72
	fstp qword [rbp + 72]

 math_test_1$182:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$183:
	; Call printf 32 20
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
	; Parameter pointer "  sqrt(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$188:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$189:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$190:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$191:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$192:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$193:
	; Call sqrt 72 0
	mov qword [rbp + 72], math_test_1$194
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sqrt

 math_test_1$194:
	; PostCall 72

 math_test_1$195:
	; GetReturnValue £temporary3199

 math_test_1$196:
	; Parameter double £temporary3199 72
	fstp qword [rbp + 72]

 math_test_1$197:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$198:
	; Call printf 32 20
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
	; Parameter pointer "  floor(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020floor2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$203:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$204:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$205:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$206:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$207:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$208:
	; Call floor 72 0
	mov qword [rbp + 72], math_test_1$209
	mov [rbp + 80], rbp
	add rbp, 72
	jmp floor

 math_test_1$209:
	; PostCall 72

 math_test_1$210:
	; GetReturnValue £temporary3201

 math_test_1$211:
	; Parameter double £temporary3201 72
	fstp qword [rbp + 72]

 math_test_1$212:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$213:
	; Call printf 32 20
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
	; Parameter pointer "  ceil(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020ceil2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$218:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$219:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$220:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$221:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$222:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$223:
	; Call ceil 72 0
	mov qword [rbp + 72], math_test_1$224
	mov [rbp + 80], rbp
	add rbp, 72
	jmp ceil

 math_test_1$224:
	; PostCall 72

 math_test_1$225:
	; GetReturnValue £temporary3203

 math_test_1$226:
	; Parameter double £temporary3203 72
	fstp qword [rbp + 72]

 math_test_1$227:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$228:
	; Call printf 32 20
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
	; Parameter pointer "  fabs(%f) = %f, errno = %i\n" 56
	mov qword [rbp + 56], string_2020fabs2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$233:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$234:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$235:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$236:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$237:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$238:
	; Call fabs 72 0
	mov qword [rbp + 72], math_test_1$239
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

 math_test_1$239:
	; PostCall 72

 math_test_1$240:
	; GetReturnValue £temporary3205

 math_test_1$241:
	; Parameter double £temporary3205 72
	fstp qword [rbp + 72]

 math_test_1$242:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$243:
	; Call printf 32 20
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
	; Parameter double x 60
	fstp qword [rbp + 60]

 math_test_1$250:
	; Address £temporary3207 j
	mov rsi, rbp
	add rsi, 32

 math_test_1$251:
	; Parameter pointer £temporary3207 68
	mov [rbp + 68], rsi

 math_test_1$252:
	; Call frexp 36 0
	mov qword [rbp + 36], math_test_1$253
	mov [rbp + 44], rbp
	add rbp, 36
	jmp frexp

 math_test_1$253:
	; PostCall 36

 math_test_1$254:
	; GetReturnValue £temporary3208

 math_test_1$255:
	; PopFloat z
	fstp qword [rbp + 36]

 math_test_1$256:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$257:
	; Parameter pointer "frexp (%f, p) = (%f, %i), errno = %i\n" 68
	mov qword [rbp + 68], string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#

 math_test_1$258:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$259:
	; Parameter double x 76
	fstp qword [rbp + 76]

 math_test_1$260:
	; PushFloat z
	fld qword [rbp + 36]

 math_test_1$261:
	; Parameter double z 84
	fstp qword [rbp + 84]

 math_test_1$262:
	; Parameter signedint j 92
	mov eax, [rbp + 32]
	mov [rbp + 92], eax

 math_test_1$263:
	; Parameter signedint errno 96
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_1$264:
	; Call printf 44 24
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
	; Parameter pointer "Error message:" 68
	mov qword [rbp + 68], string_Error20message3A#

 math_test_1$269:
	; Call perror 44 0
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
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$277:
	; Address £temporary3212 w
	mov rsi, rbp
	add rsi, 32

 math_test_1$278:
	; Parameter pointer £temporary3212 72
	mov [rbp + 72], rsi

 math_test_1$279:
	; Call modf 40 0
	mov qword [rbp + 40], math_test_1$280
	mov [rbp + 48], rbp
	add rbp, 40
	jmp modf

 math_test_1$280:
	; PostCall 40

 math_test_1$281:
	; GetReturnValue £temporary3213

 math_test_1$282:
	; PopFloat z
	fstp qword [rbp + 40]

 math_test_1$283:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$284:
	; Parameter pointer "modf (%f, p) = (%f, %f), errno = %i\n" 72
	mov qword [rbp + 72], string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#

 math_test_1$285:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$286:
	; Parameter double x 80
	fstp qword [rbp + 80]

 math_test_1$287:
	; PushFloat z
	fld qword [rbp + 40]

 math_test_1$288:
	; Parameter double z 88
	fstp qword [rbp + 88]

 math_test_1$289:
	; PushFloat w
	fld qword [rbp + 32]

 math_test_1$290:
	; Parameter double w 96
	fstp qword [rbp + 96]

 math_test_1$291:
	; Parameter signedint errno 104
	mov eax, [errno]
	mov [rbp + 104], eax

 math_test_1$292:
	; Call printf 48 28
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
	; Parameter pointer "Error message:" 72
	mov qword [rbp + 72], string_Error20message3A#

 math_test_1$297:
	; Call perror 48 0
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
	; Parameter pointer "\n" 56
	mov qword [rbp + 56], string_0A#

 math_test_1$302:
	; Call printf 32 0
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

string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String fmod(%f, %f) = %f, errno = %i\n
	db "fmod(%f, %f) = %f, errno = %i", 10, 0

section .data

string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String atan2(%f, %f) = %f, errno = %i\n
	db "atan2(%f, %f) = %f, errno = %i", 10, 0

section .data

string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String pow(%f, %f) = %f, errno = %i\n
	db "pow(%f, %f) = %f, errno = %i", 10, 0

section .data

string_ldexp2825f2C2025i29203D2025f0A0A#:
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
	; Parameter pointer "fmod(%f, %f) = %f, errno = %i\n" 64
	mov qword [rbp + 64], string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#

 math_test_2$2:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$3:
	; Parameter double x 72
	fstp qword [rbp + 72]

 math_test_2$4:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$5:
	; Parameter double y 80
	fstp qword [rbp + 80]

 math_test_2$6:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$7:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$8:
	; Parameter double x 112
	fstp qword [rbp + 112]

 math_test_2$9:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$10:
	; Parameter double y 120
	fstp qword [rbp + 120]

 math_test_2$11:
	; Call fmod 88 0
	mov qword [rbp + 88], math_test_2$12
	mov [rbp + 96], rbp
	add rbp, 88
	jmp fmod

 math_test_2$12:
	; PostCall 88

 math_test_2$13:
	; GetReturnValue £temporary3276

 math_test_2$14:
	; Parameter double £temporary3276 88
	fstp qword [rbp + 88]

 math_test_2$15:
	; Parameter signedint errno 96
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$16:
	; Call printf 40 28
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
	; Parameter pointer "atan2(%f, %f) = %f, errno = %i\n" 64
	mov qword [rbp + 64], string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#

 math_test_2$21:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$22:
	; Parameter double x 72
	fstp qword [rbp + 72]

 math_test_2$23:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$24:
	; Parameter double y 80
	fstp qword [rbp + 80]

 math_test_2$25:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$26:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$27:
	; Parameter double x 112
	fstp qword [rbp + 112]

 math_test_2$28:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$29:
	; Parameter double y 120
	fstp qword [rbp + 120]

 math_test_2$30:
	; Call atan2 88 0
	mov qword [rbp + 88], math_test_2$31
	mov [rbp + 96], rbp
	add rbp, 88
	jmp atan2

 math_test_2$31:
	; PostCall 88

 math_test_2$32:
	; GetReturnValue £temporary3278

 math_test_2$33:
	; Parameter double £temporary3278 88
	fstp qword [rbp + 88]

 math_test_2$34:
	; Parameter signedint errno 96
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$35:
	; Call printf 40 28
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
	; Parameter pointer "pow(%f, %f) = %f, errno = %i\n" 64
	mov qword [rbp + 64], string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#

 math_test_2$40:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$41:
	; Parameter double x 72
	fstp qword [rbp + 72]

 math_test_2$42:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$43:
	; Parameter double y 80
	fstp qword [rbp + 80]

 math_test_2$44:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$45:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$46:
	; Parameter double x 112
	fstp qword [rbp + 112]

 math_test_2$47:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$48:
	; Parameter double y 120
	fstp qword [rbp + 120]

 math_test_2$49:
	; Call pow 88 0
	mov qword [rbp + 88], math_test_2$50
	mov [rbp + 96], rbp
	add rbp, 88
	jmp pow

 math_test_2$50:
	; PostCall 88

 math_test_2$51:
	; GetReturnValue £temporary3280

 math_test_2$52:
	; Parameter double £temporary3280 88
	fstp qword [rbp + 88]

 math_test_2$53:
	; Parameter signedint errno 96
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$54:
	; Call printf 40 28
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
	; Parameter pointer "\n" 64
	mov qword [rbp + 64], string_0A#

 math_test_2$59:
	; Call printf 40 0
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
	; Parameter pointer "ldexp(%f, %i) = %f\n\n" 64
	mov qword [rbp + 64], string_ldexp2825f2C2025i29203D2025f0A0A#

 math_test_2$63:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$64:
	; Parameter double x 72
	fstp qword [rbp + 72]

 math_test_2$65:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$66:
	; FloatingToIntegral £temporary3283 y
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 math_test_2$67:
	; Parameter signedint £temporary3283 80
	mov [rbp + 80], eax

 math_test_2$68:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$69:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$70:
	; Parameter double x 108
	fstp qword [rbp + 108]

 math_test_2$71:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$72:
	; FloatingToIntegral £temporary3284 y
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 math_test_2$73:
	; Parameter signedint £temporary3284 116
	mov [rbp + 116], eax

 math_test_2$74:
	; Call ldexp 84 0
	mov qword [rbp + 84], math_test_2$75
	mov [rbp + 92], rbp
	add rbp, 84
	jmp ldexp

 math_test_2$75:
	; PostCall 84

 math_test_2$76:
	; GetReturnValue £temporary3285

 math_test_2$77:
	; Parameter double £temporary3285 84
	fstp qword [rbp + 84]

 math_test_2$78:
	; Call printf 40 20
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
