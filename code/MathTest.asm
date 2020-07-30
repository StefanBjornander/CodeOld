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
section .text

math_test_1x:	; call header integral zero 0 stack zero 0

math_test_1x$1:	; push float float8$minus6.2831853071795864768#
	fld qword [float8$minus6.2831853071795864768#]

math_test_1x$2:	; parameter float8$minus6.2831853071795864768#, offset 48
	fstp qword [rbp + 48]

math_test_1x$3:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], math_test_1x$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

math_test_1x$4:	; post call

math_test_1x$5:	; call header integral zero 0 stack zero 0

math_test_1x$6:	; push float float8$minus3.1415926535897932384#
	fld qword [float8$minus3.1415926535897932384#]

math_test_1x$7:	; parameter float8$minus3.1415926535897932384#, offset 48
	fstp qword [rbp + 48]

math_test_1x$8:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], math_test_1x$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

math_test_1x$9:	; post call

math_test_1x$10:	; call header integral zero 0 stack zero 0

math_test_1x$11:	; push float float8$minus1.5707963267948966192#
	fld qword [float8$minus1.5707963267948966192#]

math_test_1x$12:	; parameter float8$minus1.5707963267948966192#, offset 48
	fstp qword [rbp + 48]

math_test_1x$13:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], math_test_1x$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

math_test_1x$14:	; post call

math_test_1x$15:	; call header integral zero 0 stack zero 0

math_test_1x$16:	; push float float8$minus1#
	fld qword [float8$minus1#]

math_test_1x$17:	; parameter float8$minus1#, offset 48
	fstp qword [rbp + 48]

math_test_1x$18:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], math_test_1x$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

math_test_1x$19:	; post call

math_test_1x$20:	; call header integral zero 0 stack zero 0

math_test_1x$21:	; push float float8$0#
	fldz 

math_test_1x$22:	; parameter float8$0#, offset 48
	fstp qword [rbp + 48]

math_test_1x$23:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], math_test_1x$24
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

math_test_1x$24:	; post call

math_test_1x$25:	; call header integral zero 0 stack zero 0

math_test_1x$26:	; push float float8$1#
	fld1 

math_test_1x$27:	; parameter float8$1#, offset 48
	fstp qword [rbp + 48]

math_test_1x$28:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], math_test_1x$29
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

math_test_1x$29:	; post call

math_test_1x$30:	; call header integral zero 0 stack zero 0

math_test_1x$31:	; push float float8$1.5707963267948966192#
	fld qword [float8$1.5707963267948966192#]

math_test_1x$32:	; parameter float8$1.5707963267948966192#, offset 48
	fstp qword [rbp + 48]

math_test_1x$33:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], math_test_1x$34
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

math_test_1x$34:	; post call

math_test_1x$35:	; call header integral zero 0 stack zero 0

math_test_1x$36:	; push float float8$3.1415926535897932384#
	fld qword [float8$3.1415926535897932384#]

math_test_1x$37:	; parameter float8$3.1415926535897932384#, offset 48
	fstp qword [rbp + 48]

math_test_1x$38:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], math_test_1x$39
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

math_test_1x$39:	; post call

math_test_1x$40:	; call header integral zero 0 stack zero 0

math_test_1x$41:	; push float float8$6.2831853071795864768#
	fld qword [float8$6.2831853071795864768#]

math_test_1x$42:	; parameter float8$6.2831853071795864768#, offset 48
	fstp qword [rbp + 48]

math_test_1x$43:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], math_test_1x$44
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

math_test_1x$44:	; post call

math_test_1x$45:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

math_test_1x$46:	; function end math_test_1x

acos_test:	; call header integral zero 0 stack zero 0

acos_test$1:	; parameter string_2020acos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020acos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

acos_test$2:	; push float x
	fld qword [rbp + 24]

acos_test$3:	; parameter x, offset 64
	fstp qword [rbp + 64]

acos_test$4:	; call header integral zero 0 stack zero 0

acos_test$5:	; push float x
	fld qword [rbp + 24]

acos_test$6:	; parameter x, offset 96
	fstp qword [rbp + 96]

acos_test$7:	; call function noellipse-noellipse acos
	mov qword [rbp + 72], acos_test$8
	mov [rbp + 80], rbp
	add rbp, 72
	jmp acos

acos_test$8:	; post call

acos_test$9:	; £temporary3198 = return_value

acos_test$10:	; parameter £temporary3198, offset 72
	fstp qword [rbp + 72]

acos_test$11:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

acos_test$12:	; call header integral zero 0 stack zero 0

acos_test$13:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

acos_test$14:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], acos_test$15
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

acos_test$15:	; post call

acos_test$16:	; £temporary3199 = return_value

acos_test$17:	; parameter £temporary3199, offset 84
	mov [rbp + 84], rbx

acos_test$18:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], acos_test$19
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

acos_test$19:	; post call

acos_test$20:	; call header integral zero 0 stack zero 0

acos_test$21:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

acos_test$22:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], acos_test$23
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

acos_test$23:	; post call

acos_test$24:	; errno = int4$0#
	mov dword [errno], 0

acos_test$25:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

acos_test$26:	; function end acos_test

atan_test:	; call header integral zero 0 stack zero 0

atan_test$1:	; parameter string_2020atan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020atan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

atan_test$2:	; push float x
	fld qword [rbp + 24]

atan_test$3:	; parameter x, offset 64
	fstp qword [rbp + 64]

atan_test$4:	; call header integral zero 0 stack zero 0

atan_test$5:	; push float x
	fld qword [rbp + 24]

atan_test$6:	; parameter x, offset 96
	fstp qword [rbp + 96]

atan_test$7:	; call function noellipse-noellipse atan
	mov qword [rbp + 72], atan_test$8
	mov [rbp + 80], rbp
	add rbp, 72
	jmp atan

atan_test$8:	; post call

atan_test$9:	; £temporary3205 = return_value

atan_test$10:	; parameter £temporary3205, offset 72
	fstp qword [rbp + 72]

atan_test$11:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

atan_test$12:	; call header integral zero 0 stack zero 0

atan_test$13:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

atan_test$14:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], atan_test$15
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

atan_test$15:	; post call

atan_test$16:	; £temporary3206 = return_value

atan_test$17:	; parameter £temporary3206, offset 84
	mov [rbp + 84], rbx

atan_test$18:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], atan_test$19
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

atan_test$19:	; post call

atan_test$20:	; call header integral zero 0 stack zero 0

atan_test$21:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

atan_test$22:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], atan_test$23
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

atan_test$23:	; post call

atan_test$24:	; errno = int4$0#
	mov dword [errno], 0

atan_test$25:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan_test$26:	; function end atan_test

main_math:	; call header integral zero 0 stack zero 0

main_math$1:	; push float float8$1.000001#
	fld qword [float8$1.000001#]

main_math$2:	; parameter float8$1.000001#, offset 48
	fstp qword [rbp + 48]

main_math$3:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$4:	; post call

main_math$5:	; call header integral zero 0 stack zero 0

main_math$6:	; push float float8$1.0#
	fld1 

main_math$7:	; parameter float8$1.0#, offset 48
	fstp qword [rbp + 48]

main_math$8:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$9:	; post call

main_math$10:	; call header integral zero 0 stack zero 0

main_math$11:	; push float float8$0.999999#
	fld qword [float8$0.999999#]

main_math$12:	; parameter float8$0.999999#, offset 48
	fstp qword [rbp + 48]

main_math$13:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$14:	; post call

main_math$15:	; call header integral zero 0 stack zero 0

main_math$16:	; push float float8$0.000001#
	fld qword [float8$0.000001#]

main_math$17:	; parameter float8$0.000001#, offset 48
	fstp qword [rbp + 48]

main_math$18:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$19:	; post call

main_math$20:	; call header integral zero 0 stack zero 0

main_math$21:	; push float float8$0#
	fldz 

main_math$22:	; parameter float8$0#, offset 48
	fstp qword [rbp + 48]

main_math$23:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$24
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$24:	; post call

main_math$25:	; call header integral zero 0 stack zero 0

main_math$26:	; push float float8$minus0.000001#
	fld qword [float8$minus0.000001#]

main_math$27:	; parameter float8$minus0.000001#, offset 48
	fstp qword [rbp + 48]

main_math$28:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$29
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$29:	; post call

main_math$30:	; call header integral zero 0 stack zero 0

main_math$31:	; push float float8$minus0.999999#
	fld qword [float8$minus0.999999#]

main_math$32:	; parameter float8$minus0.999999#, offset 48
	fstp qword [rbp + 48]

main_math$33:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$34
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$34:	; post call

main_math$35:	; call header integral zero 0 stack zero 0

main_math$36:	; push float float8$minus1.0#
	fld qword [float8$minus1.0#]

main_math$37:	; parameter float8$minus1.0#, offset 48
	fstp qword [rbp + 48]

main_math$38:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$39
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$39:	; post call

main_math$40:	; call header integral zero 0 stack zero 0

main_math$41:	; push float float8$minus1.000001#
	fld qword [float8$minus1.000001#]

main_math$42:	; parameter float8$minus1.000001#, offset 48
	fstp qword [rbp + 48]

main_math$43:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$44
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$44:	; post call

main_math$45:	; call header integral zero 0 stack zero 0

main_math$46:	; push float float8$6.2831853071795864768#
	fld qword [float8$6.2831853071795864768#]

main_math$47:	; parameter float8$6.2831853071795864768#, offset 48
	fstp qword [rbp + 48]

main_math$48:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$49
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$49:	; post call

main_math$50:	; call header integral zero 0 stack zero 0

main_math$51:	; push float float8$3.1415926535897932384#
	fld qword [float8$3.1415926535897932384#]

main_math$52:	; parameter float8$3.1415926535897932384#, offset 48
	fstp qword [rbp + 48]

main_math$53:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$54
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$54:	; post call

main_math$55:	; call header integral zero 0 stack zero 0

main_math$56:	; push float float8$1.5707963267948966192#
	fld qword [float8$1.5707963267948966192#]

main_math$57:	; parameter float8$1.5707963267948966192#, offset 48
	fstp qword [rbp + 48]

main_math$58:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$59
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$59:	; post call

main_math$60:	; call header integral zero 0 stack zero 0

main_math$61:	; push float float8$minus1.5707963267948966192#
	fld qword [float8$minus1.5707963267948966192#]

main_math$62:	; parameter float8$minus1.5707963267948966192#, offset 48
	fstp qword [rbp + 48]

main_math$63:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$64
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$64:	; post call

main_math$65:	; call header integral zero 0 stack zero 0

main_math$66:	; push float float8$minus3.1415926535897932384#
	fld qword [float8$minus3.1415926535897932384#]

main_math$67:	; parameter float8$minus3.1415926535897932384#, offset 48
	fstp qword [rbp + 48]

main_math$68:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$69
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$69:	; post call

main_math$70:	; call header integral zero 0 stack zero 0

main_math$71:	; push float float8$minus6.2831853071795864768#
	fld qword [float8$minus6.2831853071795864768#]

main_math$72:	; parameter float8$minus6.2831853071795864768#, offset 48
	fstp qword [rbp + 48]

main_math$73:	; call function noellipse-noellipse math_test_1
	mov qword [rbp + 24], main_math$74
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

main_math$74:	; post call

main_math$75:	; call header integral zero 0 stack zero 0

main_math$76:	; push float float8$1.0#
	fld1 

main_math$77:	; parameter float8$1.0#, offset 48
	fstp qword [rbp + 48]

main_math$78:	; push float float8$2.0#
	fld qword [float8$2.0#]

main_math$79:	; parameter float8$2.0#, offset 56
	fstp qword [rbp + 56]

main_math$80:	; call function noellipse-noellipse math_test_2
	mov qword [rbp + 24], main_math$81
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

main_math$81:	; post call

main_math$82:	; call header integral zero 0 stack zero 0

main_math$83:	; push float float8$3.0#
	fld qword [float8$3.0#]

main_math$84:	; parameter float8$3.0#, offset 48
	fstp qword [rbp + 48]

main_math$85:	; push float float8$4.0#
	fld qword [float8$4.0#]

main_math$86:	; parameter float8$4.0#, offset 56
	fstp qword [rbp + 56]

main_math$87:	; call function noellipse-noellipse math_test_2
	mov qword [rbp + 24], main_math$88
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

main_math$88:	; post call

main_math$89:	; call header integral zero 0 stack zero 0

main_math$90:	; push float float8$0#
	fldz 

main_math$91:	; parameter float8$0#, offset 48
	fstp qword [rbp + 48]

main_math$92:	; push float float8$2.0#
	fld qword [float8$2.0#]

main_math$93:	; parameter float8$2.0#, offset 56
	fstp qword [rbp + 56]

main_math$94:	; call function noellipse-noellipse math_test_2
	mov qword [rbp + 24], main_math$95
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

main_math$95:	; post call

main_math$96:	; call header integral zero 0 stack zero 0

main_math$97:	; push float float8$0#
	fldz 

main_math$98:	; parameter float8$0#, offset 48
	fstp qword [rbp + 48]

main_math$99:	; push float float8$minus2.0#
	fld qword [float8$minus2.0#]

main_math$100:	; parameter float8$minus2.0#, offset 56
	fstp qword [rbp + 56]

main_math$101:	; call function noellipse-noellipse math_test_2
	mov qword [rbp + 24], main_math$102
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

main_math$102:	; post call

main_math$103:	; call header integral zero 0 stack zero 0

main_math$104:	; push float float8$1#
	fld1 

main_math$105:	; parameter float8$1#, offset 48
	fstp qword [rbp + 48]

main_math$106:	; push float float8$2.0#
	fld qword [float8$2.0#]

main_math$107:	; parameter float8$2.0#, offset 56
	fstp qword [rbp + 56]

main_math$108:	; call function noellipse-noellipse math_test_2
	mov qword [rbp + 24], main_math$109
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

main_math$109:	; post call

main_math$110:	; call header integral zero 0 stack zero 0

main_math$111:	; push float float8$1#
	fld1 

main_math$112:	; parameter float8$1#, offset 48
	fstp qword [rbp + 48]

main_math$113:	; push float float8$minus2.0#
	fld qword [float8$minus2.0#]

main_math$114:	; parameter float8$minus2.0#, offset 56
	fstp qword [rbp + 56]

main_math$115:	; call function noellipse-noellipse math_test_2
	mov qword [rbp + 24], main_math$116
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

main_math$116:	; post call

main_math$117:	; call header integral zero 0 stack zero 0

main_math$118:	; push float float8$0#
	fldz 

main_math$119:	; parameter float8$0#, offset 48
	fstp qword [rbp + 48]

main_math$120:	; push float float8$0#
	fldz 

main_math$121:	; parameter float8$0#, offset 56
	fstp qword [rbp + 56]

main_math$122:	; call function noellipse-noellipse math_test_2
	mov qword [rbp + 24], main_math$123
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

main_math$123:	; post call

main_math$124:	; call header integral zero 0 stack zero 0

main_math$125:	; push float float8$2#
	fld qword [float8$2#]

main_math$126:	; parameter float8$2#, offset 48
	fstp qword [rbp + 48]

main_math$127:	; push float float8$0#
	fldz 

main_math$128:	; parameter float8$0#, offset 56
	fstp qword [rbp + 56]

main_math$129:	; call function noellipse-noellipse math_test_2
	mov qword [rbp + 24], main_math$130
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

main_math$130:	; post call

main_math$131:	; call header integral zero 0 stack zero 0

main_math$132:	; push float float8$minus2#
	fld qword [float8$minus2#]

main_math$133:	; parameter float8$minus2#, offset 48
	fstp qword [rbp + 48]

main_math$134:	; push float float8$0#
	fldz 

main_math$135:	; parameter float8$0#, offset 56
	fstp qword [rbp + 56]

main_math$136:	; call function noellipse-noellipse math_test_2
	mov qword [rbp + 24], main_math$137
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

main_math$137:	; post call

main_math$138:	; call header integral zero 0 stack zero 0

main_math$139:	; push float float8$minus1.0#
	fld qword [float8$minus1.0#]

main_math$140:	; parameter float8$minus1.0#, offset 48
	fstp qword [rbp + 48]

main_math$141:	; push float float8$minus1.0#
	fld qword [float8$minus1.0#]

main_math$142:	; parameter float8$minus1.0#, offset 56
	fstp qword [rbp + 56]

main_math$143:	; call function noellipse-noellipse math_test_2
	mov qword [rbp + 24], main_math$144
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

main_math$144:	; post call

main_math$145:	; call header integral zero 0 stack zero 0

main_math$146:	; push float float8$minus2.0#
	fld qword [float8$minus2.0#]

main_math$147:	; parameter float8$minus2.0#, offset 48
	fstp qword [rbp + 48]

main_math$148:	; push float float8$minus4.0#
	fld qword [float8$minus4.0#]

main_math$149:	; parameter float8$minus4.0#, offset 56
	fstp qword [rbp + 56]

main_math$150:	; call function noellipse-noellipse math_test_2
	mov qword [rbp + 24], main_math$151
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

main_math$151:	; post call

main_math$152:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

main_math$153:	; function end main_math

math_test_1:	; call header integral zero 0 stack zero 0

math_test_1$1:	; parameter string_3C25f3E0A#, offset 56
	mov qword [rbp + 56], string_3C25f3E0A#

math_test_1$2:	; push float x
	fld qword [rbp + 24]

math_test_1$3:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$4:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 32], math_test_1$5
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

math_test_1$5:	; post call

math_test_1$6:	; call header integral zero 0 stack zero 0

math_test_1$7:	; parameter string_2020sin2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020sin2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$8:	; push float x
	fld qword [rbp + 24]

math_test_1$9:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$10:	; call header integral zero 0 stack zero 0

math_test_1$11:	; push float x
	fld qword [rbp + 24]

math_test_1$12:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$13:	; call function noellipse-noellipse sin
	mov qword [rbp + 72], math_test_1$14
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sin

math_test_1$14:	; post call

math_test_1$15:	; £temporary3276 = return_value

math_test_1$16:	; parameter £temporary3276, offset 72
	fstp qword [rbp + 72]

math_test_1$17:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$18:	; call header integral zero 0 stack zero 0

math_test_1$19:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$20:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$21
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$21:	; post call

math_test_1$22:	; £temporary3277 = return_value

math_test_1$23:	; parameter £temporary3277, offset 84
	mov [rbp + 84], rbx

math_test_1$24:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$25
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$25:	; post call

math_test_1$26:	; call header integral zero 0 stack zero 0

math_test_1$27:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$28:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$29
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$29:	; post call

math_test_1$30:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$31:	; call header integral zero 0 stack zero 0

math_test_1$32:	; parameter string_2020cos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020cos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$33:	; push float x
	fld qword [rbp + 24]

math_test_1$34:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$35:	; call header integral zero 0 stack zero 0

math_test_1$36:	; push float x
	fld qword [rbp + 24]

math_test_1$37:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$38:	; call function noellipse-noellipse cos
	mov qword [rbp + 72], math_test_1$39
	mov [rbp + 80], rbp
	add rbp, 72
	jmp cos

math_test_1$39:	; post call

math_test_1$40:	; £temporary3280 = return_value

math_test_1$41:	; parameter £temporary3280, offset 72
	fstp qword [rbp + 72]

math_test_1$42:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$43:	; call header integral zero 0 stack zero 0

math_test_1$44:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$45:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$46
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$46:	; post call

math_test_1$47:	; £temporary3281 = return_value

math_test_1$48:	; parameter £temporary3281, offset 84
	mov [rbp + 84], rbx

math_test_1$49:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$50
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$50:	; post call

math_test_1$51:	; call header integral zero 0 stack zero 0

math_test_1$52:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$53:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$54
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$54:	; post call

math_test_1$55:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$56:	; call header integral zero 0 stack zero 0

math_test_1$57:	; parameter string_2020tan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020tan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$58:	; push float x
	fld qword [rbp + 24]

math_test_1$59:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$60:	; call header integral zero 0 stack zero 0

math_test_1$61:	; push float x
	fld qword [rbp + 24]

math_test_1$62:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$63:	; call function noellipse-noellipse tan
	mov qword [rbp + 72], math_test_1$64
	mov [rbp + 80], rbp
	add rbp, 72
	jmp tan

math_test_1$64:	; post call

math_test_1$65:	; £temporary3284 = return_value

math_test_1$66:	; parameter £temporary3284, offset 72
	fstp qword [rbp + 72]

math_test_1$67:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$68:	; call header integral zero 0 stack zero 0

math_test_1$69:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$70:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$71
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$71:	; post call

math_test_1$72:	; £temporary3285 = return_value

math_test_1$73:	; parameter £temporary3285, offset 84
	mov [rbp + 84], rbx

math_test_1$74:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$75
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$75:	; post call

math_test_1$76:	; call header integral zero 0 stack zero 0

math_test_1$77:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$78:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$79
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$79:	; post call

math_test_1$80:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$81:	; call header integral zero 0 stack zero 0

math_test_1$82:	; parameter string_2020asin2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020asin2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$83:	; push float x
	fld qword [rbp + 24]

math_test_1$84:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$85:	; call header integral zero 0 stack zero 0

math_test_1$86:	; push float x
	fld qword [rbp + 24]

math_test_1$87:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$88:	; call function noellipse-noellipse asin
	mov qword [rbp + 72], math_test_1$89
	mov [rbp + 80], rbp
	add rbp, 72
	jmp asin

math_test_1$89:	; post call

math_test_1$90:	; £temporary3288 = return_value

math_test_1$91:	; parameter £temporary3288, offset 72
	fstp qword [rbp + 72]

math_test_1$92:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$93:	; call header integral zero 0 stack zero 0

math_test_1$94:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$95:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$96
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$96:	; post call

math_test_1$97:	; £temporary3289 = return_value

math_test_1$98:	; parameter £temporary3289, offset 84
	mov [rbp + 84], rbx

math_test_1$99:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$100
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$100:	; post call

math_test_1$101:	; call header integral zero 0 stack zero 0

math_test_1$102:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$103:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$104
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$104:	; post call

math_test_1$105:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$106:	; call header integral zero 0 stack zero 0

math_test_1$107:	; parameter string_2020acos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020acos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$108:	; push float x
	fld qword [rbp + 24]

math_test_1$109:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$110:	; call header integral zero 0 stack zero 0

math_test_1$111:	; push float x
	fld qword [rbp + 24]

math_test_1$112:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$113:	; call function noellipse-noellipse acos
	mov qword [rbp + 72], math_test_1$114
	mov [rbp + 80], rbp
	add rbp, 72
	jmp acos

math_test_1$114:	; post call

math_test_1$115:	; £temporary3292 = return_value

math_test_1$116:	; parameter £temporary3292, offset 72
	fstp qword [rbp + 72]

math_test_1$117:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$118:	; call header integral zero 0 stack zero 0

math_test_1$119:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$120:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$121
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$121:	; post call

math_test_1$122:	; £temporary3293 = return_value

math_test_1$123:	; parameter £temporary3293, offset 84
	mov [rbp + 84], rbx

math_test_1$124:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$125
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$125:	; post call

math_test_1$126:	; call header integral zero 0 stack zero 0

math_test_1$127:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$128:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$129
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$129:	; post call

math_test_1$130:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$131:	; call header integral zero 0 stack zero 0

math_test_1$132:	; parameter string_2020atan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020atan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$133:	; push float x
	fld qword [rbp + 24]

math_test_1$134:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$135:	; call header integral zero 0 stack zero 0

math_test_1$136:	; push float x
	fld qword [rbp + 24]

math_test_1$137:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$138:	; call function noellipse-noellipse atan
	mov qword [rbp + 72], math_test_1$139
	mov [rbp + 80], rbp
	add rbp, 72
	jmp atan

math_test_1$139:	; post call

math_test_1$140:	; £temporary3296 = return_value

math_test_1$141:	; parameter £temporary3296, offset 72
	fstp qword [rbp + 72]

math_test_1$142:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$143:	; call header integral zero 0 stack zero 0

math_test_1$144:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$145:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$146
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$146:	; post call

math_test_1$147:	; £temporary3297 = return_value

math_test_1$148:	; parameter £temporary3297, offset 84
	mov [rbp + 84], rbx

math_test_1$149:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$150
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$150:	; post call

math_test_1$151:	; call header integral zero 0 stack zero 0

math_test_1$152:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$153:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$154
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$154:	; post call

math_test_1$155:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$156:	; call header integral zero 0 stack zero 0

math_test_1$157:	; parameter string_2020exp2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020exp2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$158:	; push float x
	fld qword [rbp + 24]

math_test_1$159:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$160:	; call header integral zero 0 stack zero 0

math_test_1$161:	; push float x
	fld qword [rbp + 24]

math_test_1$162:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$163:	; call function noellipse-noellipse exp
	mov qword [rbp + 72], math_test_1$164
	mov [rbp + 80], rbp
	add rbp, 72
	jmp exp

math_test_1$164:	; post call

math_test_1$165:	; £temporary3300 = return_value

math_test_1$166:	; parameter £temporary3300, offset 72
	fstp qword [rbp + 72]

math_test_1$167:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$168:	; call header integral zero 0 stack zero 0

math_test_1$169:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$170:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$171
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$171:	; post call

math_test_1$172:	; £temporary3301 = return_value

math_test_1$173:	; parameter £temporary3301, offset 84
	mov [rbp + 84], rbx

math_test_1$174:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$175
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$175:	; post call

math_test_1$176:	; call header integral zero 0 stack zero 0

math_test_1$177:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$178:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$179
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$179:	; post call

math_test_1$180:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$181:	; call header integral zero 0 stack zero 0

math_test_1$182:	; parameter string_2020log2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020log2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$183:	; push float x
	fld qword [rbp + 24]

math_test_1$184:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$185:	; call header integral zero 0 stack zero 0

math_test_1$186:	; push float x
	fld qword [rbp + 24]

math_test_1$187:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$188:	; call function noellipse-noellipse log
	mov qword [rbp + 72], math_test_1$189
	mov [rbp + 80], rbp
	add rbp, 72
	jmp log

math_test_1$189:	; post call

math_test_1$190:	; £temporary3304 = return_value

math_test_1$191:	; parameter £temporary3304, offset 72
	fstp qword [rbp + 72]

math_test_1$192:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$193:	; call header integral zero 0 stack zero 0

math_test_1$194:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$195:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$196
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$196:	; post call

math_test_1$197:	; £temporary3305 = return_value

math_test_1$198:	; parameter £temporary3305, offset 84
	mov [rbp + 84], rbx

math_test_1$199:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$200
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$200:	; post call

math_test_1$201:	; call header integral zero 0 stack zero 0

math_test_1$202:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$203:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$204
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$204:	; post call

math_test_1$205:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$206:	; call header integral zero 0 stack zero 0

math_test_1$207:	; parameter string_2020log102825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020log102825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$208:	; push float x
	fld qword [rbp + 24]

math_test_1$209:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$210:	; call header integral zero 0 stack zero 0

math_test_1$211:	; push float x
	fld qword [rbp + 24]

math_test_1$212:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$213:	; call function noellipse-noellipse log10
	mov qword [rbp + 72], math_test_1$214
	mov [rbp + 80], rbp
	add rbp, 72
	jmp log10

math_test_1$214:	; post call

math_test_1$215:	; £temporary3308 = return_value

math_test_1$216:	; parameter £temporary3308, offset 72
	fstp qword [rbp + 72]

math_test_1$217:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$218:	; call header integral zero 0 stack zero 0

math_test_1$219:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$220:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$221
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$221:	; post call

math_test_1$222:	; £temporary3309 = return_value

math_test_1$223:	; parameter £temporary3309, offset 84
	mov [rbp + 84], rbx

math_test_1$224:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$225
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$225:	; post call

math_test_1$226:	; call header integral zero 0 stack zero 0

math_test_1$227:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$228:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$229
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$229:	; post call

math_test_1$230:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$231:	; call header integral zero 0 stack zero 0

math_test_1$232:	; parameter string_2020sinh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020sinh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$233:	; push float x
	fld qword [rbp + 24]

math_test_1$234:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$235:	; call header integral zero 0 stack zero 0

math_test_1$236:	; push float x
	fld qword [rbp + 24]

math_test_1$237:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$238:	; call function noellipse-noellipse sinh
	mov qword [rbp + 72], math_test_1$239
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sinh

math_test_1$239:	; post call

math_test_1$240:	; £temporary3312 = return_value

math_test_1$241:	; parameter £temporary3312, offset 72
	fstp qword [rbp + 72]

math_test_1$242:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$243:	; call header integral zero 0 stack zero 0

math_test_1$244:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$245:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$246
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$246:	; post call

math_test_1$247:	; £temporary3313 = return_value

math_test_1$248:	; parameter £temporary3313, offset 84
	mov [rbp + 84], rbx

math_test_1$249:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$250
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$250:	; post call

math_test_1$251:	; call header integral zero 0 stack zero 0

math_test_1$252:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$253:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$254
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$254:	; post call

math_test_1$255:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$256:	; call header integral zero 0 stack zero 0

math_test_1$257:	; parameter string_2020cosh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020cosh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$258:	; push float x
	fld qword [rbp + 24]

math_test_1$259:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$260:	; call header integral zero 0 stack zero 0

math_test_1$261:	; push float x
	fld qword [rbp + 24]

math_test_1$262:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$263:	; call function noellipse-noellipse cosh
	mov qword [rbp + 72], math_test_1$264
	mov [rbp + 80], rbp
	add rbp, 72
	jmp cosh

math_test_1$264:	; post call

math_test_1$265:	; £temporary3316 = return_value

math_test_1$266:	; parameter £temporary3316, offset 72
	fstp qword [rbp + 72]

math_test_1$267:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$268:	; call header integral zero 0 stack zero 0

math_test_1$269:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$270:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$271
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$271:	; post call

math_test_1$272:	; £temporary3317 = return_value

math_test_1$273:	; parameter £temporary3317, offset 84
	mov [rbp + 84], rbx

math_test_1$274:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$275
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$275:	; post call

math_test_1$276:	; call header integral zero 0 stack zero 0

math_test_1$277:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$278:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$279
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$279:	; post call

math_test_1$280:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$281:	; call header integral zero 0 stack zero 0

math_test_1$282:	; parameter string_2020tanh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020tanh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$283:	; push float x
	fld qword [rbp + 24]

math_test_1$284:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$285:	; call header integral zero 0 stack zero 0

math_test_1$286:	; push float x
	fld qword [rbp + 24]

math_test_1$287:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$288:	; call function noellipse-noellipse tanh
	mov qword [rbp + 72], math_test_1$289
	mov [rbp + 80], rbp
	add rbp, 72
	jmp tanh

math_test_1$289:	; post call

math_test_1$290:	; £temporary3320 = return_value

math_test_1$291:	; parameter £temporary3320, offset 72
	fstp qword [rbp + 72]

math_test_1$292:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$293:	; call header integral zero 0 stack zero 0

math_test_1$294:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$295:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$296
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$296:	; post call

math_test_1$297:	; £temporary3321 = return_value

math_test_1$298:	; parameter £temporary3321, offset 84
	mov [rbp + 84], rbx

math_test_1$299:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$300
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$300:	; post call

math_test_1$301:	; call header integral zero 0 stack zero 0

math_test_1$302:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$303:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$304
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$304:	; post call

math_test_1$305:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$306:	; call header integral zero 0 stack zero 0

math_test_1$307:	; parameter string_2020sqrt2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020sqrt2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$308:	; push float x
	fld qword [rbp + 24]

math_test_1$309:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$310:	; call header integral zero 0 stack zero 0

math_test_1$311:	; push float x
	fld qword [rbp + 24]

math_test_1$312:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$313:	; call function noellipse-noellipse sqrt
	mov qword [rbp + 72], math_test_1$314
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sqrt

math_test_1$314:	; post call

math_test_1$315:	; £temporary3324 = return_value

math_test_1$316:	; parameter £temporary3324, offset 72
	fstp qword [rbp + 72]

math_test_1$317:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$318:	; call header integral zero 0 stack zero 0

math_test_1$319:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$320:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$321
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$321:	; post call

math_test_1$322:	; £temporary3325 = return_value

math_test_1$323:	; parameter £temporary3325, offset 84
	mov [rbp + 84], rbx

math_test_1$324:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$325
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$325:	; post call

math_test_1$326:	; call header integral zero 0 stack zero 0

math_test_1$327:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$328:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$329
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$329:	; post call

math_test_1$330:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$331:	; call header integral zero 0 stack zero 0

math_test_1$332:	; parameter string_2020floor2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020floor2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$333:	; push float x
	fld qword [rbp + 24]

math_test_1$334:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$335:	; call header integral zero 0 stack zero 0

math_test_1$336:	; push float x
	fld qword [rbp + 24]

math_test_1$337:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$338:	; call function noellipse-noellipse floor
	mov qword [rbp + 72], math_test_1$339
	mov [rbp + 80], rbp
	add rbp, 72
	jmp floor

math_test_1$339:	; post call

math_test_1$340:	; £temporary3328 = return_value

math_test_1$341:	; parameter £temporary3328, offset 72
	fstp qword [rbp + 72]

math_test_1$342:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$343:	; call header integral zero 0 stack zero 0

math_test_1$344:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$345:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$346
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$346:	; post call

math_test_1$347:	; £temporary3329 = return_value

math_test_1$348:	; parameter £temporary3329, offset 84
	mov [rbp + 84], rbx

math_test_1$349:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$350
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$350:	; post call

math_test_1$351:	; call header integral zero 0 stack zero 0

math_test_1$352:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$353:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$354
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$354:	; post call

math_test_1$355:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$356:	; call header integral zero 0 stack zero 0

math_test_1$357:	; parameter string_2020ceil2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020ceil2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$358:	; push float x
	fld qword [rbp + 24]

math_test_1$359:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$360:	; call header integral zero 0 stack zero 0

math_test_1$361:	; push float x
	fld qword [rbp + 24]

math_test_1$362:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$363:	; call function noellipse-noellipse ceil
	mov qword [rbp + 72], math_test_1$364
	mov [rbp + 80], rbp
	add rbp, 72
	jmp ceil

math_test_1$364:	; post call

math_test_1$365:	; £temporary3332 = return_value

math_test_1$366:	; parameter £temporary3332, offset 72
	fstp qword [rbp + 72]

math_test_1$367:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$368:	; call header integral zero 0 stack zero 0

math_test_1$369:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$370:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$371
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$371:	; post call

math_test_1$372:	; £temporary3333 = return_value

math_test_1$373:	; parameter £temporary3333, offset 84
	mov [rbp + 84], rbx

math_test_1$374:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$375
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$375:	; post call

math_test_1$376:	; call header integral zero 0 stack zero 0

math_test_1$377:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$378:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$379
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$379:	; post call

math_test_1$380:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$381:	; call header integral zero 0 stack zero 0

math_test_1$382:	; parameter string_2020fabs2825f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 56
	mov qword [rbp + 56], string_2020fabs2825f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_1$383:	; push float x
	fld qword [rbp + 24]

math_test_1$384:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$385:	; call header integral zero 0 stack zero 0

math_test_1$386:	; push float x
	fld qword [rbp + 24]

math_test_1$387:	; parameter x, offset 96
	fstp qword [rbp + 96]

math_test_1$388:	; call function noellipse-noellipse fabs
	mov qword [rbp + 72], math_test_1$389
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

math_test_1$389:	; post call

math_test_1$390:	; £temporary3336 = return_value

math_test_1$391:	; parameter £temporary3336, offset 72
	fstp qword [rbp + 72]

math_test_1$392:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

math_test_1$393:	; call header integral zero 0 stack zero 0

math_test_1$394:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

math_test_1$395:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], math_test_1$396
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

math_test_1$396:	; post call

math_test_1$397:	; £temporary3337 = return_value

math_test_1$398:	; parameter £temporary3337, offset 84
	mov [rbp + 84], rbx

math_test_1$399:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 32], math_test_1$400
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$400:	; post call

math_test_1$401:	; call header integral zero 0 stack zero 0

math_test_1$402:	; parameter string_Error20message#, offset 56
	mov qword [rbp + 56], string_Error20message#

math_test_1$403:	; call function noellipse-noellipse perror
	mov qword [rbp + 32], math_test_1$404
	mov [rbp + 40], rbp
	add rbp, 32
	jmp perror

math_test_1$404:	; post call

math_test_1$405:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$406:	; j = int4$0#
	mov dword [rbp + 32], 0

math_test_1$407:	; call header integral zero 0 stack zero 0

math_test_1$408:	; push float x
	fld qword [rbp + 24]

math_test_1$409:	; parameter x, offset 60
	fstp qword [rbp + 60]

math_test_1$410:	; £temporary3340 = &j
	mov rsi, rbp
	add rsi, 32

math_test_1$411:	; parameter £temporary3340, offset 68
	mov [rbp + 68], rsi

math_test_1$412:	; call function noellipse-noellipse frexp
	mov qword [rbp + 36], math_test_1$413
	mov [rbp + 44], rbp
	add rbp, 36
	jmp frexp

math_test_1$413:	; post call

math_test_1$414:	; £temporary3341 = return_value

math_test_1$415:	; pop float z
	fstp qword [rbp + 36]

math_test_1$416:	; call header integral zero 0 stack zero 0

math_test_1$417:	; parameter string_frexp2028z2C20j29203D202825f2C2025i292C20errno203D2025i203C25s3E0A#, offset 68
	mov qword [rbp + 68], string_frexp2028z2C20j29203D202825f2C2025i292C20errno203D2025i203C25s3E0A#

math_test_1$418:	; push float z
	fld qword [rbp + 36]

math_test_1$419:	; parameter z, offset 76
	fstp qword [rbp + 76]

math_test_1$420:	; parameter j, offset 84
	mov eax, [rbp + 32]
	mov [rbp + 84], eax

math_test_1$421:	; parameter errno, offset 88
	mov eax, [errno]
	mov [rbp + 88], eax

math_test_1$422:	; call header integral zero 0 stack zero 0

math_test_1$423:	; parameter errno, offset 116
	mov eax, [errno]
	mov [rbp + 116], eax

math_test_1$424:	; call function noellipse-noellipse strerror
	mov qword [rbp + 92], math_test_1$425
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strerror

math_test_1$425:	; post call

math_test_1$426:	; £temporary3342 = return_value

math_test_1$427:	; parameter £temporary3342, offset 92
	mov [rbp + 92], rbx

math_test_1$428:	; call function noellipse-ellipse printf, extra 24
	mov qword [rbp + 44], math_test_1$429
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 24
	jmp printf

math_test_1$429:	; post call

math_test_1$430:	; if errno == NO_ERROR goto 436
	cmp dword [errno], 0
	je math_test_1$436

math_test_1$431:	; call header integral zero 0 stack zero 0

math_test_1$432:	; parameter string_Error20message3A#, offset 68
	mov qword [rbp + 68], string_Error20message3A#

math_test_1$433:	; call function noellipse-noellipse perror
	mov qword [rbp + 44], math_test_1$434
	mov [rbp + 52], rbp
	add rbp, 44
	jmp perror

math_test_1$434:	; post call

math_test_1$435:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$436:	; push float float8$0#
	fldz 

math_test_1$437:	; pop float w
	fstp qword [rbp + 32]

math_test_1$438:	; call header integral zero 0 stack zero 0

math_test_1$439:	; push float x
	fld qword [rbp + 24]

math_test_1$440:	; parameter x, offset 64
	fstp qword [rbp + 64]

math_test_1$441:	; £temporary3346 = &w
	mov rsi, rbp
	add rsi, 32

math_test_1$442:	; parameter £temporary3346, offset 72
	mov [rbp + 72], rsi

math_test_1$443:	; call function noellipse-noellipse modf
	mov qword [rbp + 40], math_test_1$444
	mov [rbp + 48], rbp
	add rbp, 40
	jmp modf

math_test_1$444:	; post call

math_test_1$445:	; £temporary3347 = return_value

math_test_1$446:	; pop float z
	fstp qword [rbp + 40]

math_test_1$447:	; call header integral zero 0 stack zero 0

math_test_1$448:	; parameter string_modf2028z2C20w29203D202825f2C2025f292C20errno203D2025i203C25s3E0A#, offset 72
	mov qword [rbp + 72], string_modf2028z2C20w29203D202825f2C2025f292C20errno203D2025i203C25s3E0A#

math_test_1$449:	; push float z
	fld qword [rbp + 40]

math_test_1$450:	; parameter z, offset 80
	fstp qword [rbp + 80]

math_test_1$451:	; push float w
	fld qword [rbp + 32]

math_test_1$452:	; parameter w, offset 88
	fstp qword [rbp + 88]

math_test_1$453:	; parameter errno, offset 96
	mov eax, [errno]
	mov [rbp + 96], eax

math_test_1$454:	; call header integral zero 0 stack zero 0

math_test_1$455:	; parameter errno, offset 124
	mov eax, [errno]
	mov [rbp + 124], eax

math_test_1$456:	; call function noellipse-noellipse strerror
	mov qword [rbp + 100], math_test_1$457
	mov [rbp + 108], rbp
	add rbp, 100
	jmp strerror

math_test_1$457:	; post call

math_test_1$458:	; £temporary3348 = return_value

math_test_1$459:	; parameter £temporary3348, offset 100
	mov [rbp + 100], rbx

math_test_1$460:	; call function noellipse-ellipse printf, extra 28
	mov qword [rbp + 48], math_test_1$461
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 28
	jmp printf

math_test_1$461:	; post call

math_test_1$462:	; if errno == NO_ERROR goto 468
	cmp dword [errno], 0
	je math_test_1$468

math_test_1$463:	; call header integral zero 0 stack zero 0

math_test_1$464:	; parameter string_Error20message3A#, offset 72
	mov qword [rbp + 72], string_Error20message3A#

math_test_1$465:	; call function noellipse-noellipse perror
	mov qword [rbp + 48], math_test_1$466
	mov [rbp + 56], rbp
	add rbp, 48
	jmp perror

math_test_1$466:	; post call

math_test_1$467:	; errno = int4$0#
	mov dword [errno], 0

math_test_1$468:	; call header integral zero 0 stack zero 0

math_test_1$469:	; parameter string_0A#, offset 56
	mov qword [rbp + 56], string_0A#

math_test_1$470:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 32], math_test_1$471
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

math_test_1$471:	; post call

math_test_1$472:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

math_test_1$473:	; function end math_test_1

math_test_2:	; call header integral zero 0 stack zero 0

math_test_2$1:	; parameter string_fmod2825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 64
	mov qword [rbp + 64], string_fmod2825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_2$2:	; push float x
	fld qword [rbp + 24]

math_test_2$3:	; parameter x, offset 72
	fstp qword [rbp + 72]

math_test_2$4:	; push float y
	fld qword [rbp + 32]

math_test_2$5:	; parameter y, offset 80
	fstp qword [rbp + 80]

math_test_2$6:	; call header integral zero 0 stack zero 0

math_test_2$7:	; push float x
	fld qword [rbp + 24]

math_test_2$8:	; parameter x, offset 112
	fstp qword [rbp + 112]

math_test_2$9:	; push float y
	fld qword [rbp + 32]

math_test_2$10:	; parameter y, offset 120
	fstp qword [rbp + 120]

math_test_2$11:	; call function noellipse-noellipse fmod
	mov qword [rbp + 88], math_test_2$12
	mov [rbp + 96], rbp
	add rbp, 88
	jmp fmod

math_test_2$12:	; post call

math_test_2$13:	; £temporary3409 = return_value

math_test_2$14:	; parameter £temporary3409, offset 88
	fstp qword [rbp + 88]

math_test_2$15:	; parameter errno, offset 96
	mov eax, [errno]
	mov [rbp + 96], eax

math_test_2$16:	; call header integral zero 0 stack zero 0

math_test_2$17:	; parameter errno, offset 124
	mov eax, [errno]
	mov [rbp + 124], eax

math_test_2$18:	; call function noellipse-noellipse strerror
	mov qword [rbp + 100], math_test_2$19
	mov [rbp + 108], rbp
	add rbp, 100
	jmp strerror

math_test_2$19:	; post call

math_test_2$20:	; £temporary3410 = return_value

math_test_2$21:	; parameter £temporary3410, offset 100
	mov [rbp + 100], rbx

math_test_2$22:	; call function noellipse-ellipse printf, extra 36
	mov qword [rbp + 40], math_test_2$23
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 36
	jmp printf

math_test_2$23:	; post call

math_test_2$24:	; call header integral zero 0 stack zero 0

math_test_2$25:	; parameter string_Error20message#, offset 64
	mov qword [rbp + 64], string_Error20message#

math_test_2$26:	; call function noellipse-noellipse perror
	mov qword [rbp + 40], math_test_2$27
	mov [rbp + 48], rbp
	add rbp, 40
	jmp perror

math_test_2$27:	; post call

math_test_2$28:	; errno = int4$0#
	mov dword [errno], 0

math_test_2$29:	; call header integral zero 0 stack zero 0

math_test_2$30:	; parameter string_atan22825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 64
	mov qword [rbp + 64], string_atan22825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_2$31:	; push float x
	fld qword [rbp + 24]

math_test_2$32:	; parameter x, offset 72
	fstp qword [rbp + 72]

math_test_2$33:	; push float y
	fld qword [rbp + 32]

math_test_2$34:	; parameter y, offset 80
	fstp qword [rbp + 80]

math_test_2$35:	; call header integral zero 0 stack zero 0

math_test_2$36:	; push float x
	fld qword [rbp + 24]

math_test_2$37:	; parameter x, offset 112
	fstp qword [rbp + 112]

math_test_2$38:	; push float y
	fld qword [rbp + 32]

math_test_2$39:	; parameter y, offset 120
	fstp qword [rbp + 120]

math_test_2$40:	; call function noellipse-noellipse atan2
	mov qword [rbp + 88], math_test_2$41
	mov [rbp + 96], rbp
	add rbp, 88
	jmp atan2

math_test_2$41:	; post call

math_test_2$42:	; £temporary3413 = return_value

math_test_2$43:	; parameter £temporary3413, offset 88
	fstp qword [rbp + 88]

math_test_2$44:	; parameter errno, offset 96
	mov eax, [errno]
	mov [rbp + 96], eax

math_test_2$45:	; call header integral zero 0 stack zero 0

math_test_2$46:	; parameter errno, offset 124
	mov eax, [errno]
	mov [rbp + 124], eax

math_test_2$47:	; call function noellipse-noellipse strerror
	mov qword [rbp + 100], math_test_2$48
	mov [rbp + 108], rbp
	add rbp, 100
	jmp strerror

math_test_2$48:	; post call

math_test_2$49:	; £temporary3414 = return_value

math_test_2$50:	; parameter £temporary3414, offset 100
	mov [rbp + 100], rbx

math_test_2$51:	; call function noellipse-ellipse printf, extra 36
	mov qword [rbp + 40], math_test_2$52
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 36
	jmp printf

math_test_2$52:	; post call

math_test_2$53:	; call header integral zero 0 stack zero 0

math_test_2$54:	; parameter string_Error20message#, offset 64
	mov qword [rbp + 64], string_Error20message#

math_test_2$55:	; call function noellipse-noellipse perror
	mov qword [rbp + 40], math_test_2$56
	mov [rbp + 48], rbp
	add rbp, 40
	jmp perror

math_test_2$56:	; post call

math_test_2$57:	; errno = int4$0#
	mov dword [errno], 0

math_test_2$58:	; call header integral zero 0 stack zero 0

math_test_2$59:	; parameter string_pow2825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#, offset 64
	mov qword [rbp + 64], string_pow2825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#

math_test_2$60:	; push float x
	fld qword [rbp + 24]

math_test_2$61:	; parameter x, offset 72
	fstp qword [rbp + 72]

math_test_2$62:	; push float y
	fld qword [rbp + 32]

math_test_2$63:	; parameter y, offset 80
	fstp qword [rbp + 80]

math_test_2$64:	; call header integral zero 0 stack zero 0

math_test_2$65:	; push float x
	fld qword [rbp + 24]

math_test_2$66:	; parameter x, offset 112
	fstp qword [rbp + 112]

math_test_2$67:	; push float y
	fld qword [rbp + 32]

math_test_2$68:	; parameter y, offset 120
	fstp qword [rbp + 120]

math_test_2$69:	; call function noellipse-noellipse pow
	mov qword [rbp + 88], math_test_2$70
	mov [rbp + 96], rbp
	add rbp, 88
	jmp pow

math_test_2$70:	; post call

math_test_2$71:	; £temporary3417 = return_value

math_test_2$72:	; parameter £temporary3417, offset 88
	fstp qword [rbp + 88]

math_test_2$73:	; parameter errno, offset 96
	mov eax, [errno]
	mov [rbp + 96], eax

math_test_2$74:	; call header integral zero 0 stack zero 0

math_test_2$75:	; parameter errno, offset 124
	mov eax, [errno]
	mov [rbp + 124], eax

math_test_2$76:	; call function noellipse-noellipse strerror
	mov qword [rbp + 100], math_test_2$77
	mov [rbp + 108], rbp
	add rbp, 100
	jmp strerror

math_test_2$77:	; post call

math_test_2$78:	; £temporary3418 = return_value

math_test_2$79:	; parameter £temporary3418, offset 100
	mov [rbp + 100], rbx

math_test_2$80:	; call function noellipse-ellipse printf, extra 36
	mov qword [rbp + 40], math_test_2$81
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 36
	jmp printf

math_test_2$81:	; post call

math_test_2$82:	; call header integral zero 0 stack zero 0

math_test_2$83:	; parameter string_Error20message#, offset 64
	mov qword [rbp + 64], string_Error20message#

math_test_2$84:	; call function noellipse-noellipse perror
	mov qword [rbp + 40], math_test_2$85
	mov [rbp + 48], rbp
	add rbp, 40
	jmp perror

math_test_2$85:	; post call

math_test_2$86:	; errno = int4$0#
	mov dword [errno], 0

math_test_2$87:	; call header integral zero 0 stack zero 0

math_test_2$88:	; parameter string_0A#, offset 64
	mov qword [rbp + 64], string_0A#

math_test_2$89:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], math_test_2$90
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

math_test_2$90:	; post call

math_test_2$91:	; call header integral zero 0 stack zero 0

math_test_2$92:	; parameter string_ldexp2825f2C2025i29203D2025f0A0A#, offset 64
	mov qword [rbp + 64], string_ldexp2825f2C2025i29203D2025f0A0A#

math_test_2$93:	; push float x
	fld qword [rbp + 24]

math_test_2$94:	; parameter x, offset 72
	fstp qword [rbp + 72]

math_test_2$95:	; push float y
	fld qword [rbp + 32]

math_test_2$96:	; £temporary3422 = float_to_int y (Double -> Signed_Int)
	fistp word [$IntegralStorage#]
	mov eax, [$IntegralStorage#]

math_test_2$97:	; parameter £temporary3422, offset 80
	mov [rbp + 80], eax

math_test_2$98:	; call header integral zero 0 stack zero 0

math_test_2$99:	; push float x
	fld qword [rbp + 24]

math_test_2$100:	; parameter x, offset 108
	fstp qword [rbp + 108]

math_test_2$101:	; push float y
	fld qword [rbp + 32]

math_test_2$102:	; £temporary3423 = float_to_int y (Double -> Signed_Int)
	fistp word [$IntegralStorage#]
	mov eax, [$IntegralStorage#]

math_test_2$103:	; parameter £temporary3423, offset 116
	mov [rbp + 116], eax

math_test_2$104:	; call function noellipse-noellipse ldexp
	mov qword [rbp + 84], math_test_2$105
	mov [rbp + 92], rbp
	add rbp, 84
	jmp ldexp

math_test_2$105:	; post call

math_test_2$106:	; £temporary3424 = return_value

math_test_2$107:	; parameter £temporary3424, offset 84
	fstp qword [rbp + 84]

math_test_2$108:	; call function noellipse-ellipse printf, extra 20
	mov qword [rbp + 40], math_test_2$109
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp printf

math_test_2$109:	; post call

math_test_2$110:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

math_test_2$111:	; function end math_test_2
section .data

$IntegralStorage#:
	times 8 db 0

float8$minus6.2831853071795864768#:
	; initializer Double
	dq -6.2831853071795864768

float8$minus3.1415926535897932384#:
	; initializer Double
	dq -3.1415926535897932384

float8$minus1.5707963267948966192#:
	; initializer Double
	dq -1.5707963267948966192

float8$minus1#:
	; initializer Double
	dq -1.0

float8$1.5707963267948966192#:
	; initializer Double
	dq 1.5707963267948966192

float8$3.1415926535897932384#:
	; initializer Double
	dq 3.1415926535897932384

float8$6.2831853071795864768#:
	; initializer Double
	dq 6.2831853071795864768

string_2020acos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  acos(%f) = %f, errno = %i <%s>, ", 0

string_Error20message#:
	; initializer String
	db "Error message", 0

string_2020atan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  atan(%f) = %f, errno = %i <%s>, ", 0

float8$1.000001#:
	; initializer Double
	dq 1.000001

float8$0.999999#:
	; initializer Double
	dq 0.999999

float8$0.000001#:
	; initializer Double
	dq 0.000001

float8$minus0.000001#:
	; initializer Double
	dq -0.000001

float8$minus0.999999#:
	; initializer Double
	dq -0.999999

float8$minus1.0#:
	; initializer Double
	dq -1.0

float8$minus1.000001#:
	; initializer Double
	dq -1.000001

float8$2.0#:
	; initializer Double
	dq 2.0

float8$3.0#:
	; initializer Double
	dq 3.0

float8$4.0#:
	; initializer Double
	dq 4.0

float8$minus2.0#:
	; initializer Double
	dq -2.0

float8$2#:
	; initializer Double
	dq 2.0

float8$minus2#:
	; initializer Double
	dq -2.0

float8$minus4.0#:
	; initializer Double
	dq -4.0

string_3C25f3E0A#:
	; initializer String
	db "<%f>", 10, 0

string_2020sin2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  sin(%f) = %f, errno = %i <%s>, ", 0

string_2020cos2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  cos(%f) = %f, errno = %i <%s>, ", 0

string_2020tan2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  tan(%f) = %f, errno = %i <%s>, ", 0

string_2020asin2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  asin(%f) = %f, errno = %i <%s>, ", 0

string_2020exp2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  exp(%f) = %f, errno = %i <%s>, ", 0

string_2020log2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  log(%f) = %f, errno = %i <%s>, ", 0

string_2020log102825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  log10(%f) = %f, errno = %i <%s>, ", 0

string_2020sinh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  sinh(%f) = %f, errno = %i <%s>, ", 0

string_2020cosh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  cosh(%f) = %f, errno = %i <%s>, ", 0

string_2020tanh2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  tanh(%f) = %f, errno = %i <%s>, ", 0

string_2020sqrt2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  sqrt(%f) = %f, errno = %i <%s>, ", 0

string_2020floor2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  floor(%f) = %f, errno = %i <%s>, ", 0

string_2020ceil2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  ceil(%f) = %f, errno = %i <%s>, ", 0

string_2020fabs2825f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "  fabs(%f) = %f, errno = %i <%s>, ", 0

string_frexp2028z2C20j29203D202825f2C2025i292C20errno203D2025i203C25s3E0A#:
	; initializer String
	db "frexp (z, j) = (%f, %i), errno = %i <%s>", 10, 0

string_Error20message3A#:
	; initializer String
	db "Error message:", 0

string_modf2028z2C20w29203D202825f2C2025f292C20errno203D2025i203C25s3E0A#:
	; initializer String
	db "modf (z, w) = (%f, %f), errno = %i <%s>", 10, 0

string_0A#:
	; initializer String
	db 10, 0

string_fmod2825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "fmod(%f, %f) = %f, errno = %i <%s>, ", 0

string_atan22825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "atan2(%f, %f) = %f, errno = %i <%s>, ", 0

string_pow2825f2C2025f29203D2025f2C20errno203D2025i203C25s3E2C20#:
	; initializer String
	db "pow(%f, %f) = %f, errno = %i <%s>, ", 0

string_ldexp2825f2C2025i29203D2025f0A0A#:
	; initializer String
	db "ldexp(%f, %i) = %f", 10, 10, 0
