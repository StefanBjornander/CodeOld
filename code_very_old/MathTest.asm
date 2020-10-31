	global math_test_1x
	global acos_test
	global atan_test
	global main_math
	global math_test_1
	global math_test_2

	extern acos
	extern errno
	extern strerror
	extern printf
	extern perror
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
	extern modf
	extern fmod
	extern atan2
	extern pow
	extern ldexp
	extern $StackTop


section .data

float8$minus6.2831853071795864768#:
	; Initializer Double -6.2831853071795864768
	dq -6.2831853071795864768

section .data

float8$minus3.1415926535897932384#:
	; Initializer Double -3.1415926535897932384
	dq -3.1415926535897932384

section .data

float8$minus1.5707963267948966192#:
	; Initializer Double -1.5707963267948966192
	dq -1.5707963267948966192

section .data

float8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

float8$1.5707963267948966192#:
	; Initializer Double 1.5707963267948966192
	dq 1.5707963267948966192

section .data

float8$3.1415926535897932384#:
	; Initializer Double 3.1415926535897932384
	dq 3.1415926535897932384

section .data

float8$6.2831853071795864768#:
	; Initializer Double 6.2831853071795864768
	dq 6.2831853071795864768

section .text

 math_test_1x:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$1:
	; PushFloat -6.2831853071795864768
	fld qword [float8$minus6.2831853071795864768#]

 math_test_1x$2:
	; Parameter double -6.2831853071795864768 48
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
	; PushFloat -3.1415926535897932384
	fld qword [float8$minus3.1415926535897932384#]

 math_test_1x$7:
	; Parameter double -3.1415926535897932384 48
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
	; PushFloat -1.5707963267948966192
	fld qword [float8$minus1.5707963267948966192#]

 math_test_1x$12:
	; Parameter double -1.5707963267948966192 48
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
	; PushFloat 1.5707963267948966192
	fld qword [float8$1.5707963267948966192#]

 math_test_1x$32:
	; Parameter double 1.5707963267948966192 48
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
	; PushFloat 3.1415926535897932384
	fld qword [float8$3.1415926535897932384#]

 math_test_1x$37:
	; Parameter double 3.1415926535897932384 48
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
	; PushFloat 6.2831853071795864768
	fld qword [float8$6.2831853071795864768#]

 math_test_1x$42:
	; Parameter double 6.2831853071795864768 48
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

string_2020acos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   acos(%f) = %f, errno = %i <%s>, 
	db "  acos(%f) = %f, errno = %i <%s>, ", 0

section .data

string_Error20message#:
	; Initializer String Error message
	db "Error message", 0

section .text

 acos_test:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos_test$1:
	; Parameter pointer "  acos(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020acos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

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
	; GetReturnValue £temporary3243

 acos_test$10:
	; Parameter double £temporary3243 72
	fstp qword [rbp + 72]

 acos_test$11:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 acos_test$12:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos_test$13:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 acos_test$14:
	; Call strerror 84 0
	mov qword [rbp + 84], acos_test$15
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 acos_test$15:
	; PostCall 84

 acos_test$16:
	; GetReturnValue £temporary3244

 acos_test$17:
	; Parameter pointer £temporary3244 84
	mov [rbp + 84], rbx

 acos_test$18:
	; Call printf 32 28
	mov qword [rbp + 32], acos_test$19
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 acos_test$19:
	; PostCall 32

 acos_test$20:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos_test$21:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 acos_test$22:
	; Call perror 32 0
	mov qword [rbp + 32], acos_test$23
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 acos_test$23:
	; PostCall 32

 acos_test$24:
	; Assign errno 0
	mov dword [errno], 0

 acos_test$25:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos_test$26:
	; FunctionEnd acos_test

section .data

string_2020atan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   atan(%f) = %f, errno = %i <%s>, 
	db "  atan(%f) = %f, errno = %i <%s>, ", 0

section .text

 atan_test:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan_test$1:
	; Parameter pointer "  atan(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020atan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

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
	; GetReturnValue £temporary3250

 atan_test$10:
	; Parameter double £temporary3250 72
	fstp qword [rbp + 72]

 atan_test$11:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 atan_test$12:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan_test$13:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 atan_test$14:
	; Call strerror 84 0
	mov qword [rbp + 84], atan_test$15
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 atan_test$15:
	; PostCall 84

 atan_test$16:
	; GetReturnValue £temporary3251

 atan_test$17:
	; Parameter pointer £temporary3251 84
	mov [rbp + 84], rbx

 atan_test$18:
	; Call printf 32 28
	mov qword [rbp + 32], atan_test$19
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 atan_test$19:
	; PostCall 32

 atan_test$20:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan_test$21:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 atan_test$22:
	; Call perror 32 0
	mov qword [rbp + 32], atan_test$23
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 atan_test$23:
	; PostCall 32

 atan_test$24:
	; Assign errno 0
	mov dword [errno], 0

 atan_test$25:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan_test$26:
	; FunctionEnd atan_test

section .data

float8$1.000001#:
	; Initializer Double 1.000001
	dq 1.000001

section .data

float8$0.999999#:
	; Initializer Double 0.999999
	dq 0.999999

section .data

float8$0.000001#:
	; Initializer Double 0.000001
	dq 0.000001

section .data

float8$minus0.000001#:
	; Initializer Double -0.000001
	dq -0.000001

section .data

float8$minus0.999999#:
	; Initializer Double -0.999999
	dq -0.999999

section .data

float8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

float8$minus1.000001#:
	; Initializer Double -1.000001
	dq -1.000001

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
	; PushFloat 1.000001
	fld qword [float8$1.000001#]

 main_math$2:
	; Parameter double 1.000001 48
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
	; PushFloat 1.0
	fld1

 main_math$7:
	; Parameter double 1.0 48
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
	; PushFloat 0.999999
	fld qword [float8$0.999999#]

 main_math$12:
	; Parameter double 0.999999 48
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
	; PushFloat 0.000001
	fld qword [float8$0.000001#]

 main_math$17:
	; Parameter double 0.000001 48
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
	; PushFloat 0
	fldz

 main_math$22:
	; Parameter double 0 48
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
	; PushFloat -0.000001
	fld qword [float8$minus0.000001#]

 main_math$27:
	; Parameter double -0.000001 48
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
	; PushFloat -0.999999
	fld qword [float8$minus0.999999#]

 main_math$32:
	; Parameter double -0.999999 48
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
	; PushFloat -1.0
	fld qword [float8$minus1.0#]

 main_math$37:
	; Parameter double -1.0 48
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
	; PushFloat -1.000001
	fld qword [float8$minus1.000001#]

 main_math$42:
	; Parameter double -1.000001 48
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
	; PushFloat 6.2831853071795864768
	fld qword [float8$6.2831853071795864768#]

 main_math$47:
	; Parameter double 6.2831853071795864768 48
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
	; PushFloat 3.1415926535897932384
	fld qword [float8$3.1415926535897932384#]

 main_math$52:
	; Parameter double 3.1415926535897932384 48
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
	; PushFloat 1.5707963267948966192
	fld qword [float8$1.5707963267948966192#]

 main_math$57:
	; Parameter double 1.5707963267948966192 48
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
	; PushFloat -1.5707963267948966192
	fld qword [float8$minus1.5707963267948966192#]

 main_math$62:
	; Parameter double -1.5707963267948966192 48
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
	; PushFloat -3.1415926535897932384
	fld qword [float8$minus3.1415926535897932384#]

 main_math$67:
	; Parameter double -3.1415926535897932384 48
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
	; PushFloat -6.2831853071795864768
	fld qword [float8$minus6.2831853071795864768#]

 main_math$72:
	; Parameter double -6.2831853071795864768 48
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
	; PushFloat 1.0
	fld1

 main_math$77:
	; Parameter double 1.0 48
	fstp qword [rbp + 48]

 main_math$78:
	; PushFloat 2.0
	fld qword [float8$2.0#]

 main_math$79:
	; Parameter double 2.0 56
	fstp qword [rbp + 56]

 main_math$80:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$81
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$81:
	; PostCall 24

 main_math$82:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$83:
	; PushFloat 3.0
	fld qword [float8$3.0#]

 main_math$84:
	; Parameter double 3.0 48
	fstp qword [rbp + 48]

 main_math$85:
	; PushFloat 4.0
	fld qword [float8$4.0#]

 main_math$86:
	; Parameter double 4.0 56
	fstp qword [rbp + 56]

 main_math$87:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$88
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$88:
	; PostCall 24

 main_math$89:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$90:
	; PushFloat 0
	fldz

 main_math$91:
	; Parameter double 0 48
	fstp qword [rbp + 48]

 main_math$92:
	; PushFloat 2.0
	fld qword [float8$2.0#]

 main_math$93:
	; Parameter double 2.0 56
	fstp qword [rbp + 56]

 main_math$94:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$95
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$95:
	; PostCall 24

 main_math$96:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$97:
	; PushFloat 0
	fldz

 main_math$98:
	; Parameter double 0 48
	fstp qword [rbp + 48]

 main_math$99:
	; PushFloat -2.0
	fld qword [float8$minus2.0#]

 main_math$100:
	; Parameter double -2.0 56
	fstp qword [rbp + 56]

 main_math$101:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$102
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$102:
	; PostCall 24

 main_math$103:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$104:
	; PushFloat 1
	fld1

 main_math$105:
	; Parameter double 1 48
	fstp qword [rbp + 48]

 main_math$106:
	; PushFloat 2.0
	fld qword [float8$2.0#]

 main_math$107:
	; Parameter double 2.0 56
	fstp qword [rbp + 56]

 main_math$108:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$109
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$109:
	; PostCall 24

 main_math$110:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$111:
	; PushFloat 1
	fld1

 main_math$112:
	; Parameter double 1 48
	fstp qword [rbp + 48]

 main_math$113:
	; PushFloat -2.0
	fld qword [float8$minus2.0#]

 main_math$114:
	; Parameter double -2.0 56
	fstp qword [rbp + 56]

 main_math$115:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$116
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$116:
	; PostCall 24

 main_math$117:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$118:
	; PushFloat 0
	fldz

 main_math$119:
	; Parameter double 0 48
	fstp qword [rbp + 48]

 main_math$120:
	; PushFloat 0
	fldz

 main_math$121:
	; Parameter double 0 56
	fstp qword [rbp + 56]

 main_math$122:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$123
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$123:
	; PostCall 24

 main_math$124:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$125:
	; PushFloat 2
	fld qword [float8$2#]

 main_math$126:
	; Parameter double 2 48
	fstp qword [rbp + 48]

 main_math$127:
	; PushFloat 0
	fldz

 main_math$128:
	; Parameter double 0 56
	fstp qword [rbp + 56]

 main_math$129:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$130
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$130:
	; PostCall 24

 main_math$131:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$132:
	; PushFloat -2
	fld qword [float8$minus2#]

 main_math$133:
	; Parameter double -2 48
	fstp qword [rbp + 48]

 main_math$134:
	; PushFloat 0
	fldz

 main_math$135:
	; Parameter double 0 56
	fstp qword [rbp + 56]

 main_math$136:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$137
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$137:
	; PostCall 24

 main_math$138:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$139:
	; PushFloat -1.0
	fld qword [float8$minus1.0#]

 main_math$140:
	; Parameter double -1.0 48
	fstp qword [rbp + 48]

 main_math$141:
	; PushFloat -1.0
	fld qword [float8$minus1.0#]

 main_math$142:
	; Parameter double -1.0 56
	fstp qword [rbp + 56]

 main_math$143:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$144
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$144:
	; PostCall 24

 main_math$145:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main_math$146:
	; PushFloat -2.0
	fld qword [float8$minus2.0#]

 main_math$147:
	; Parameter double -2.0 48
	fstp qword [rbp + 48]

 main_math$148:
	; PushFloat -4.0
	fld qword [float8$minus4.0#]

 main_math$149:
	; Parameter double -4.0 56
	fstp qword [rbp + 56]

 main_math$150:
	; Call math_test_2 24 0
	mov qword [rbp + 24], main_math$151
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 main_math$151:
	; PostCall 24

 main_math$152:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main_math$153:
	; FunctionEnd main_math

section .data

string_3C25f3E0A#:
	; Initializer String <%f>\n
	db "<%f>", 10, 0

section .data

string_2020sin2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   sin(%f) = %f, errno = %i <%s>, 
	db "  sin(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020cos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   cos(%f) = %f, errno = %i <%s>, 
	db "  cos(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020tan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   tan(%f) = %f, errno = %i <%s>, 
	db "  tan(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020asin2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   asin(%f) = %f, errno = %i <%s>, 
	db "  asin(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020exp2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   exp(%f) = %f, errno = %i <%s>, 
	db "  exp(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020log2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   log(%f) = %f, errno = %i <%s>, 
	db "  log(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020log102825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   log10(%f) = %f, errno = %i <%s>, 
	db "  log10(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020sinh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   sinh(%f) = %f, errno = %i <%s>, 
	db "  sinh(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020cosh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   cosh(%f) = %f, errno = %i <%s>, 
	db "  cosh(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020tanh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   tanh(%f) = %f, errno = %i <%s>, 
	db "  tanh(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020sqrt2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   sqrt(%f) = %f, errno = %i <%s>, 
	db "  sqrt(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020floor2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   floor(%f) = %f, errno = %i <%s>, 
	db "  floor(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020ceil2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   ceil(%f) = %f, errno = %i <%s>, 
	db "  ceil(%f) = %f, errno = %i <%s>, ", 0

section .data

string_2020fabs2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String   fabs(%f) = %f, errno = %i <%s>, 
	db "  fabs(%f) = %f, errno = %i <%s>, ", 0

section .data

string_frexp2028z2C20j29203D202825f2C2025i292C20errno203D2025i203C25s3E0A#:
	; Initializer String frexp (z, j) = (%f, %i), errno = %i <%s>\n
	db "frexp (z, j) = (%f, %i), errno = %i <%s>", 10, 0

section .data

string_Error20message3A#:
	; Initializer String Error message:
	db "Error message:", 0

section .data

string_modf2028z2C20w29203D202825f2C2025f292C20errno203D2025i203C25s3E0A#:
	; Initializer String modf (z, w) = (%f, %f), errno = %i <%s>\n
	db "modf (z, w) = (%f, %f), errno = %i <%s>", 10, 0

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
	; Parameter pointer "  sin(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020sin2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

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
	; GetReturnValue £temporary3321

 math_test_1$16:
	; Parameter double £temporary3321 72
	fstp qword [rbp + 72]

 math_test_1$17:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$18:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$19:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$20:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$21
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$21:
	; PostCall 84

 math_test_1$22:
	; GetReturnValue £temporary3322

 math_test_1$23:
	; Parameter pointer £temporary3322 84
	mov [rbp + 84], rbx

 math_test_1$24:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$25
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$25:
	; PostCall 32

 math_test_1$26:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$27:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$28:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$29
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$29:
	; PostCall 32

 math_test_1$30:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$31:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$32:
	; Parameter pointer "  cos(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020cos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$33:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$34:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$35:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$36:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$37:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$38:
	; Call cos 72 0
	mov qword [rbp + 72], math_test_1$39
	mov [rbp + 80], rbp
	add rbp, 72
	jmp cos

 math_test_1$39:
	; PostCall 72

 math_test_1$40:
	; GetReturnValue £temporary3325

 math_test_1$41:
	; Parameter double £temporary3325 72
	fstp qword [rbp + 72]

 math_test_1$42:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$43:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$44:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$45:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$46
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$46:
	; PostCall 84

 math_test_1$47:
	; GetReturnValue £temporary3326

 math_test_1$48:
	; Parameter pointer £temporary3326 84
	mov [rbp + 84], rbx

 math_test_1$49:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$50
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$50:
	; PostCall 32

 math_test_1$51:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$52:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$53:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$54
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$54:
	; PostCall 32

 math_test_1$55:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$56:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$57:
	; Parameter pointer "  tan(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020tan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$58:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$59:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$60:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$61:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$62:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$63:
	; Call tan 72 0
	mov qword [rbp + 72], math_test_1$64
	mov [rbp + 80], rbp
	add rbp, 72
	jmp tan

 math_test_1$64:
	; PostCall 72

 math_test_1$65:
	; GetReturnValue £temporary3329

 math_test_1$66:
	; Parameter double £temporary3329 72
	fstp qword [rbp + 72]

 math_test_1$67:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$68:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$69:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$70:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$71
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$71:
	; PostCall 84

 math_test_1$72:
	; GetReturnValue £temporary3330

 math_test_1$73:
	; Parameter pointer £temporary3330 84
	mov [rbp + 84], rbx

 math_test_1$74:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$75
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$75:
	; PostCall 32

 math_test_1$76:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$77:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$78:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$79
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$79:
	; PostCall 32

 math_test_1$80:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$81:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$82:
	; Parameter pointer "  asin(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020asin2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

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
	; Call asin 72 0
	mov qword [rbp + 72], math_test_1$89
	mov [rbp + 80], rbp
	add rbp, 72
	jmp asin

 math_test_1$89:
	; PostCall 72

 math_test_1$90:
	; GetReturnValue £temporary3333

 math_test_1$91:
	; Parameter double £temporary3333 72
	fstp qword [rbp + 72]

 math_test_1$92:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$93:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$94:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$95:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$96
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$96:
	; PostCall 84

 math_test_1$97:
	; GetReturnValue £temporary3334

 math_test_1$98:
	; Parameter pointer £temporary3334 84
	mov [rbp + 84], rbx

 math_test_1$99:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$100
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$100:
	; PostCall 32

 math_test_1$101:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$102:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$103:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$104
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$104:
	; PostCall 32

 math_test_1$105:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$106:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$107:
	; Parameter pointer "  acos(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020acos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$108:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$109:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$110:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$111:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$112:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$113:
	; Call acos 72 0
	mov qword [rbp + 72], math_test_1$114
	mov [rbp + 80], rbp
	add rbp, 72
	jmp acos

 math_test_1$114:
	; PostCall 72

 math_test_1$115:
	; GetReturnValue £temporary3337

 math_test_1$116:
	; Parameter double £temporary3337 72
	fstp qword [rbp + 72]

 math_test_1$117:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$118:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$119:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$120:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$121
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$121:
	; PostCall 84

 math_test_1$122:
	; GetReturnValue £temporary3338

 math_test_1$123:
	; Parameter pointer £temporary3338 84
	mov [rbp + 84], rbx

 math_test_1$124:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$125
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$125:
	; PostCall 32

 math_test_1$126:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$127:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$128:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$129
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$129:
	; PostCall 32

 math_test_1$130:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$131:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$132:
	; Parameter pointer "  atan(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020atan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$133:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$134:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$135:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$136:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$137:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$138:
	; Call atan 72 0
	mov qword [rbp + 72], math_test_1$139
	mov [rbp + 80], rbp
	add rbp, 72
	jmp atan

 math_test_1$139:
	; PostCall 72

 math_test_1$140:
	; GetReturnValue £temporary3341

 math_test_1$141:
	; Parameter double £temporary3341 72
	fstp qword [rbp + 72]

 math_test_1$142:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$143:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$144:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$145:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$146
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$146:
	; PostCall 84

 math_test_1$147:
	; GetReturnValue £temporary3342

 math_test_1$148:
	; Parameter pointer £temporary3342 84
	mov [rbp + 84], rbx

 math_test_1$149:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$150
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$150:
	; PostCall 32

 math_test_1$151:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$152:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$153:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$154
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$154:
	; PostCall 32

 math_test_1$155:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$156:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$157:
	; Parameter pointer "  exp(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020exp2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

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
	; Call exp 72 0
	mov qword [rbp + 72], math_test_1$164
	mov [rbp + 80], rbp
	add rbp, 72
	jmp exp

 math_test_1$164:
	; PostCall 72

 math_test_1$165:
	; GetReturnValue £temporary3345

 math_test_1$166:
	; Parameter double £temporary3345 72
	fstp qword [rbp + 72]

 math_test_1$167:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$168:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$169:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$170:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$171
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$171:
	; PostCall 84

 math_test_1$172:
	; GetReturnValue £temporary3346

 math_test_1$173:
	; Parameter pointer £temporary3346 84
	mov [rbp + 84], rbx

 math_test_1$174:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$175
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$175:
	; PostCall 32

 math_test_1$176:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$177:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$178:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$179
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$179:
	; PostCall 32

 math_test_1$180:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$181:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$182:
	; Parameter pointer "  log(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020log2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$183:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$184:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$185:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$186:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$187:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$188:
	; Call log 72 0
	mov qword [rbp + 72], math_test_1$189
	mov [rbp + 80], rbp
	add rbp, 72
	jmp log

 math_test_1$189:
	; PostCall 72

 math_test_1$190:
	; GetReturnValue £temporary3349

 math_test_1$191:
	; Parameter double £temporary3349 72
	fstp qword [rbp + 72]

 math_test_1$192:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$193:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$194:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$195:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$196
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$196:
	; PostCall 84

 math_test_1$197:
	; GetReturnValue £temporary3350

 math_test_1$198:
	; Parameter pointer £temporary3350 84
	mov [rbp + 84], rbx

 math_test_1$199:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$200
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$200:
	; PostCall 32

 math_test_1$201:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$202:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$203:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$204
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$204:
	; PostCall 32

 math_test_1$205:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$206:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$207:
	; Parameter pointer "  log10(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020log102825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$208:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$209:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$210:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$211:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$212:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$213:
	; Call log10 72 0
	mov qword [rbp + 72], math_test_1$214
	mov [rbp + 80], rbp
	add rbp, 72
	jmp log10

 math_test_1$214:
	; PostCall 72

 math_test_1$215:
	; GetReturnValue £temporary3353

 math_test_1$216:
	; Parameter double £temporary3353 72
	fstp qword [rbp + 72]

 math_test_1$217:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$218:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$219:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$220:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$221
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$221:
	; PostCall 84

 math_test_1$222:
	; GetReturnValue £temporary3354

 math_test_1$223:
	; Parameter pointer £temporary3354 84
	mov [rbp + 84], rbx

 math_test_1$224:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$225
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$225:
	; PostCall 32

 math_test_1$226:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$227:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$228:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$229
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$229:
	; PostCall 32

 math_test_1$230:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$231:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$232:
	; Parameter pointer "  sinh(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020sinh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

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
	; Call sinh 72 0
	mov qword [rbp + 72], math_test_1$239
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sinh

 math_test_1$239:
	; PostCall 72

 math_test_1$240:
	; GetReturnValue £temporary3357

 math_test_1$241:
	; Parameter double £temporary3357 72
	fstp qword [rbp + 72]

 math_test_1$242:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$243:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$244:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$245:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$246
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$246:
	; PostCall 84

 math_test_1$247:
	; GetReturnValue £temporary3358

 math_test_1$248:
	; Parameter pointer £temporary3358 84
	mov [rbp + 84], rbx

 math_test_1$249:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$250
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$250:
	; PostCall 32

 math_test_1$251:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$252:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$253:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$254
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$254:
	; PostCall 32

 math_test_1$255:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$256:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$257:
	; Parameter pointer "  cosh(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020cosh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$258:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$259:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$260:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$261:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$262:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$263:
	; Call cosh 72 0
	mov qword [rbp + 72], math_test_1$264
	mov [rbp + 80], rbp
	add rbp, 72
	jmp cosh

 math_test_1$264:
	; PostCall 72

 math_test_1$265:
	; GetReturnValue £temporary3361

 math_test_1$266:
	; Parameter double £temporary3361 72
	fstp qword [rbp + 72]

 math_test_1$267:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$268:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$269:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$270:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$271
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$271:
	; PostCall 84

 math_test_1$272:
	; GetReturnValue £temporary3362

 math_test_1$273:
	; Parameter pointer £temporary3362 84
	mov [rbp + 84], rbx

 math_test_1$274:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$275
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$275:
	; PostCall 32

 math_test_1$276:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$277:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$278:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$279
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$279:
	; PostCall 32

 math_test_1$280:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$281:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$282:
	; Parameter pointer "  tanh(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020tanh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$283:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$284:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$285:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$286:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$287:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$288:
	; Call tanh 72 0
	mov qword [rbp + 72], math_test_1$289
	mov [rbp + 80], rbp
	add rbp, 72
	jmp tanh

 math_test_1$289:
	; PostCall 72

 math_test_1$290:
	; GetReturnValue £temporary3365

 math_test_1$291:
	; Parameter double £temporary3365 72
	fstp qword [rbp + 72]

 math_test_1$292:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$293:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$294:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$295:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$296
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$296:
	; PostCall 84

 math_test_1$297:
	; GetReturnValue £temporary3366

 math_test_1$298:
	; Parameter pointer £temporary3366 84
	mov [rbp + 84], rbx

 math_test_1$299:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$300
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$300:
	; PostCall 32

 math_test_1$301:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$302:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$303:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$304
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$304:
	; PostCall 32

 math_test_1$305:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$306:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$307:
	; Parameter pointer "  sqrt(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020sqrt2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$308:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$309:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$310:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$311:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$312:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$313:
	; Call sqrt 72 0
	mov qword [rbp + 72], math_test_1$314
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sqrt

 math_test_1$314:
	; PostCall 72

 math_test_1$315:
	; GetReturnValue £temporary3369

 math_test_1$316:
	; Parameter double £temporary3369 72
	fstp qword [rbp + 72]

 math_test_1$317:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$318:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$319:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$320:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$321
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$321:
	; PostCall 84

 math_test_1$322:
	; GetReturnValue £temporary3370

 math_test_1$323:
	; Parameter pointer £temporary3370 84
	mov [rbp + 84], rbx

 math_test_1$324:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$325
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$325:
	; PostCall 32

 math_test_1$326:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$327:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$328:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$329
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$329:
	; PostCall 32

 math_test_1$330:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$331:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$332:
	; Parameter pointer "  floor(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020floor2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$333:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$334:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$335:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$336:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$337:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$338:
	; Call floor 72 0
	mov qword [rbp + 72], math_test_1$339
	mov [rbp + 80], rbp
	add rbp, 72
	jmp floor

 math_test_1$339:
	; PostCall 72

 math_test_1$340:
	; GetReturnValue £temporary3373

 math_test_1$341:
	; Parameter double £temporary3373 72
	fstp qword [rbp + 72]

 math_test_1$342:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$343:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$344:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$345:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$346
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$346:
	; PostCall 84

 math_test_1$347:
	; GetReturnValue £temporary3374

 math_test_1$348:
	; Parameter pointer £temporary3374 84
	mov [rbp + 84], rbx

 math_test_1$349:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$350
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$350:
	; PostCall 32

 math_test_1$351:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$352:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$353:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$354
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$354:
	; PostCall 32

 math_test_1$355:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$356:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$357:
	; Parameter pointer "  ceil(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020ceil2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$358:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$359:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$360:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$361:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$362:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$363:
	; Call ceil 72 0
	mov qword [rbp + 72], math_test_1$364
	mov [rbp + 80], rbp
	add rbp, 72
	jmp ceil

 math_test_1$364:
	; PostCall 72

 math_test_1$365:
	; GetReturnValue £temporary3377

 math_test_1$366:
	; Parameter double £temporary3377 72
	fstp qword [rbp + 72]

 math_test_1$367:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$368:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$369:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$370:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$371
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$371:
	; PostCall 84

 math_test_1$372:
	; GetReturnValue £temporary3378

 math_test_1$373:
	; Parameter pointer £temporary3378 84
	mov [rbp + 84], rbx

 math_test_1$374:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$375
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$375:
	; PostCall 32

 math_test_1$376:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$377:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$378:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$379
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$379:
	; PostCall 32

 math_test_1$380:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$381:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$382:
	; Parameter pointer "  fabs(%f) = %f, errno = %i <%s>, " 56
	mov qword [rbp + 56], string_2020fabs2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_1$383:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$384:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$385:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$386:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$387:
	; Parameter double x 96
	fstp qword [rbp + 96]

 math_test_1$388:
	; Call fabs 72 0
	mov qword [rbp + 72], math_test_1$389
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

 math_test_1$389:
	; PostCall 72

 math_test_1$390:
	; GetReturnValue £temporary3381

 math_test_1$391:
	; Parameter double £temporary3381 72
	fstp qword [rbp + 72]

 math_test_1$392:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$393:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$394:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 math_test_1$395:
	; Call strerror 84 0
	mov qword [rbp + 84], math_test_1$396
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 math_test_1$396:
	; PostCall 84

 math_test_1$397:
	; GetReturnValue £temporary3382

 math_test_1$398:
	; Parameter pointer £temporary3382 84
	mov [rbp + 84], rbx

 math_test_1$399:
	; Call printf 32 28
	mov qword [rbp + 32], math_test_1$400
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$400:
	; PostCall 32

 math_test_1$401:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$402:
	; Parameter pointer "Error message" 56
	mov qword [rbp + 56], string_Error20message#

 math_test_1$403:
	; Call perror 32 0
	mov qword [rbp + 32], math_test_1$404
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

 math_test_1$404:
	; PostCall 32

 math_test_1$405:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$406:
	; Assign j 0
	mov dword [rbp + 32], 0

 math_test_1$407:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$408:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$409:
	; Parameter double x 60
	fstp qword [rbp + 60]

 math_test_1$410:
	; Address £temporary3385 j
	mov rsi, rbp
	add rsi, 32

 math_test_1$411:
	; Parameter pointer £temporary3385 68
	mov [rbp + 68], rsi

 math_test_1$412:
	; Call frexp 36 0
	mov qword [rbp + 36], math_test_1$413
	mov [rbp + 44], rbp
	add rbp, 36
	jmp frexp

 math_test_1$413:
	; PostCall 36

 math_test_1$414:
	; GetReturnValue £temporary3386

 math_test_1$415:
	; PopFloat z
	fstp qword [rbp + 36]

 math_test_1$416:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$417:
	; Parameter pointer "frexp (z, j) = (%f, %i), errno = %i <%s>\n" 68
	mov qword [rbp + 68], string_frexp2028z2C20j29203D202825f2C2025i292C20errno203D2025i203C25s3E0A#

 math_test_1$418:
	; PushFloat z
	fld qword [rbp + 36]

 math_test_1$419:
	; Parameter double z 76
	fstp qword [rbp + 76]

 math_test_1$420:
	; Parameter signedint j 84
	mov eax, [rbp + 32]
	mov [rbp + 84], eax

 math_test_1$421:
	; Parameter signedint errno 88
	mov eax, [errno]
	mov [rbp + 88], eax

 math_test_1$422:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$423:
	; Parameter signedint errno 116
	mov eax, [errno]
	mov [rbp + 116], eax

 math_test_1$424:
	; Call strerror 92 0
	mov qword [rbp + 92], math_test_1$425
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strerror

 math_test_1$425:
	; PostCall 92

 math_test_1$426:
	; GetReturnValue £temporary3387

 math_test_1$427:
	; Parameter pointer £temporary3387 92
	mov [rbp + 92], rbx

 math_test_1$428:
	; Call printf 44 24
	mov qword [rbp + 44], math_test_1$429
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 24
	jmp printf

 math_test_1$429:
	; PostCall 44

 math_test_1$430:
	; Equal 436 errno 0
	cmp dword [errno], 0
	je math_test_1$436

 math_test_1$431:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$432:
	; Parameter pointer "Error message:" 68
	mov qword [rbp + 68], string_Error20message3A#

 math_test_1$433:
	; Call perror 44 0
	mov qword [rbp + 44], math_test_1$434
	mov [rbp + 52], rbp
	add rbp, 44
	jmp perror

 math_test_1$434:
	; PostCall 44

 math_test_1$435:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$436:
	; PushFloat 0
	fldz

 math_test_1$437:
	; PopFloat w
	fstp qword [rbp + 32]

 math_test_1$438:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$439:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_1$440:
	; Parameter double x 64
	fstp qword [rbp + 64]

 math_test_1$441:
	; Address £temporary3391 w
	mov rsi, rbp
	add rsi, 32

 math_test_1$442:
	; Parameter pointer £temporary3391 72
	mov [rbp + 72], rsi

 math_test_1$443:
	; Call modf 40 0
	mov qword [rbp + 40], math_test_1$444
	mov [rbp + 48], rbp
	add rbp, 40
	jmp modf

 math_test_1$444:
	; PostCall 40

 math_test_1$445:
	; GetReturnValue £temporary3392

 math_test_1$446:
	; PopFloat z
	fstp qword [rbp + 40]

 math_test_1$447:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$448:
	; Parameter pointer "modf (z, w) = (%f, %f), errno = %i <%s>\n" 72
	mov qword [rbp + 72], string_modf2028z2C20w29203D202825f2C2025f292C20errno203D2025i203C25s3E0A#

 math_test_1$449:
	; PushFloat z
	fld qword [rbp + 40]

 math_test_1$450:
	; Parameter double z 80
	fstp qword [rbp + 80]

 math_test_1$451:
	; PushFloat w
	fld qword [rbp + 32]

 math_test_1$452:
	; Parameter double w 88
	fstp qword [rbp + 88]

 math_test_1$453:
	; Parameter signedint errno 96
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_1$454:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$455:
	; Parameter signedint errno 124
	mov eax, [errno]
	mov [rbp + 124], eax

 math_test_1$456:
	; Call strerror 100 0
	mov qword [rbp + 100], math_test_1$457
	mov [rbp + 108], rbp
	add rbp, 100
	jmp strerror

 math_test_1$457:
	; PostCall 100

 math_test_1$458:
	; GetReturnValue £temporary3393

 math_test_1$459:
	; Parameter pointer £temporary3393 100
	mov [rbp + 100], rbx

 math_test_1$460:
	; Call printf 48 28
	mov qword [rbp + 48], math_test_1$461
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$461:
	; PostCall 48

 math_test_1$462:
	; Equal 468 errno 0
	cmp dword [errno], 0
	je math_test_1$468

 math_test_1$463:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$464:
	; Parameter pointer "Error message:" 72
	mov qword [rbp + 72], string_Error20message3A#

 math_test_1$465:
	; Call perror 48 0
	mov qword [rbp + 48], math_test_1$466
	mov [rbp + 56], rbp
	add rbp, 48
	jmp perror

 math_test_1$466:
	; PostCall 48

 math_test_1$467:
	; Assign errno 0
	mov dword [errno], 0

 math_test_1$468:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$469:
	; Parameter pointer "\n" 56
	mov qword [rbp + 56], string_0A#

 math_test_1$470:
	; Call printf 32 0
	mov qword [rbp + 32], math_test_1$471
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 math_test_1$471:
	; PostCall 32

 math_test_1$472:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 math_test_1$473:
	; FunctionEnd math_test_1

section .data

string_fmod2825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String fmod(%f, %f) = %f, errno = %i <%s>, 
	db "fmod(%f, %f) = %f, errno = %i <%s>, ", 0

section .data

string_atan22825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String atan2(%f, %f) = %f, errno = %i <%s>, 
	db "atan2(%f, %f) = %f, errno = %i <%s>, ", 0

section .data

string_pow2825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; Initializer String pow(%f, %f) = %f, errno = %i <%s>, 
	db "pow(%f, %f) = %f, errno = %i <%s>, ", 0

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
	; Parameter pointer "fmod(%f, %f) = %f, errno = %i <%s>, " 64
	mov qword [rbp + 64], string_fmod2825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#

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
	; GetReturnValue £temporary3454

 math_test_2$14:
	; Parameter double £temporary3454 88
	fstp qword [rbp + 88]

 math_test_2$15:
	; Parameter signedint errno 96
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$16:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$17:
	; Parameter signedint errno 124
	mov eax, [errno]
	mov [rbp + 124], eax

 math_test_2$18:
	; Call strerror 100 0
	mov qword [rbp + 100], math_test_2$19
	mov [rbp + 108], rbp
	add rbp, 100
	jmp strerror

 math_test_2$19:
	; PostCall 100

 math_test_2$20:
	; GetReturnValue £temporary3455

 math_test_2$21:
	; Parameter pointer £temporary3455 100
	mov [rbp + 100], rbx

 math_test_2$22:
	; Call printf 40 36
	mov qword [rbp + 40], math_test_2$23
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 36
	jmp printf

 math_test_2$23:
	; PostCall 40

 math_test_2$24:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$25:
	; Parameter pointer "Error message" 64
	mov qword [rbp + 64], string_Error20message#

 math_test_2$26:
	; Call perror 40 0
	mov qword [rbp + 40], math_test_2$27
	mov [rbp + 48], rbp
	add rbp, 40
	jmp perror

 math_test_2$27:
	; PostCall 40

 math_test_2$28:
	; Assign errno 0
	mov dword [errno], 0

 math_test_2$29:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$30:
	; Parameter pointer "atan2(%f, %f) = %f, errno = %i <%s>, " 64
	mov qword [rbp + 64], string_atan22825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_2$31:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$32:
	; Parameter double x 72
	fstp qword [rbp + 72]

 math_test_2$33:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$34:
	; Parameter double y 80
	fstp qword [rbp + 80]

 math_test_2$35:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$36:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$37:
	; Parameter double x 112
	fstp qword [rbp + 112]

 math_test_2$38:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$39:
	; Parameter double y 120
	fstp qword [rbp + 120]

 math_test_2$40:
	; Call atan2 88 0
	mov qword [rbp + 88], math_test_2$41
	mov [rbp + 96], rbp
	add rbp, 88
	jmp atan2

 math_test_2$41:
	; PostCall 88

 math_test_2$42:
	; GetReturnValue £temporary3458

 math_test_2$43:
	; Parameter double £temporary3458 88
	fstp qword [rbp + 88]

 math_test_2$44:
	; Parameter signedint errno 96
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$45:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$46:
	; Parameter signedint errno 124
	mov eax, [errno]
	mov [rbp + 124], eax

 math_test_2$47:
	; Call strerror 100 0
	mov qword [rbp + 100], math_test_2$48
	mov [rbp + 108], rbp
	add rbp, 100
	jmp strerror

 math_test_2$48:
	; PostCall 100

 math_test_2$49:
	; GetReturnValue £temporary3459

 math_test_2$50:
	; Parameter pointer £temporary3459 100
	mov [rbp + 100], rbx

 math_test_2$51:
	; Call printf 40 36
	mov qword [rbp + 40], math_test_2$52
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 36
	jmp printf

 math_test_2$52:
	; PostCall 40

 math_test_2$53:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$54:
	; Parameter pointer "Error message" 64
	mov qword [rbp + 64], string_Error20message#

 math_test_2$55:
	; Call perror 40 0
	mov qword [rbp + 40], math_test_2$56
	mov [rbp + 48], rbp
	add rbp, 40
	jmp perror

 math_test_2$56:
	; PostCall 40

 math_test_2$57:
	; Assign errno 0
	mov dword [errno], 0

 math_test_2$58:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$59:
	; Parameter pointer "pow(%f, %f) = %f, errno = %i <%s>, " 64
	mov qword [rbp + 64], string_pow2825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#

 math_test_2$60:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$61:
	; Parameter double x 72
	fstp qword [rbp + 72]

 math_test_2$62:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$63:
	; Parameter double y 80
	fstp qword [rbp + 80]

 math_test_2$64:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$65:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$66:
	; Parameter double x 112
	fstp qword [rbp + 112]

 math_test_2$67:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$68:
	; Parameter double y 120
	fstp qword [rbp + 120]

 math_test_2$69:
	; Call pow 88 0
	mov qword [rbp + 88], math_test_2$70
	mov [rbp + 96], rbp
	add rbp, 88
	jmp pow

 math_test_2$70:
	; PostCall 88

 math_test_2$71:
	; GetReturnValue £temporary3462

 math_test_2$72:
	; Parameter double £temporary3462 88
	fstp qword [rbp + 88]

 math_test_2$73:
	; Parameter signedint errno 96
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$74:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$75:
	; Parameter signedint errno 124
	mov eax, [errno]
	mov [rbp + 124], eax

 math_test_2$76:
	; Call strerror 100 0
	mov qword [rbp + 100], math_test_2$77
	mov [rbp + 108], rbp
	add rbp, 100
	jmp strerror

 math_test_2$77:
	; PostCall 100

 math_test_2$78:
	; GetReturnValue £temporary3463

 math_test_2$79:
	; Parameter pointer £temporary3463 100
	mov [rbp + 100], rbx

 math_test_2$80:
	; Call printf 40 36
	mov qword [rbp + 40], math_test_2$81
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 36
	jmp printf

 math_test_2$81:
	; PostCall 40

 math_test_2$82:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$83:
	; Parameter pointer "Error message" 64
	mov qword [rbp + 64], string_Error20message#

 math_test_2$84:
	; Call perror 40 0
	mov qword [rbp + 40], math_test_2$85
	mov [rbp + 48], rbp
	add rbp, 40
	jmp perror

 math_test_2$85:
	; PostCall 40

 math_test_2$86:
	; Assign errno 0
	mov dword [errno], 0

 math_test_2$87:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$88:
	; Parameter pointer "\n" 64
	mov qword [rbp + 64], string_0A#

 math_test_2$89:
	; Call printf 40 0
	mov qword [rbp + 40], math_test_2$90
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 math_test_2$90:
	; PostCall 40

 math_test_2$91:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$92:
	; Parameter pointer "ldexp(%f, %i) = %f\n\n" 64
	mov qword [rbp + 64], string_ldexp2825f2C2025i29203D2025f0A0A#

 math_test_2$93:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$94:
	; Parameter double x 72
	fstp qword [rbp + 72]

 math_test_2$95:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$96:
	; FloatingToIntegral £temporary3467 y
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 math_test_2$97:
	; Parameter signedint £temporary3467 80
	mov [rbp + 80], eax

 math_test_2$98:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$99:
	; PushFloat x
	fld qword [rbp + 24]

 math_test_2$100:
	; Parameter double x 108
	fstp qword [rbp + 108]

 math_test_2$101:
	; PushFloat y
	fld qword [rbp + 32]

 math_test_2$102:
	; FloatingToIntegral £temporary3468 y
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 math_test_2$103:
	; Parameter signedint £temporary3468 116
	mov [rbp + 116], eax

 math_test_2$104:
	; Call ldexp 84 0
	mov qword [rbp + 84], math_test_2$105
	mov [rbp + 92], rbp
	add rbp, 84
	jmp ldexp

 math_test_2$105:
	; PostCall 84

 math_test_2$106:
	; GetReturnValue £temporary3469

 math_test_2$107:
	; Parameter double £temporary3469 84
	fstp qword [rbp + 84]

 math_test_2$108:
	; Call printf 40 20
	mov qword [rbp + 40], math_test_2$109
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_2$109:
	; PostCall 40

 math_test_2$110:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 math_test_2$111:
	; FunctionEnd math_test_2
