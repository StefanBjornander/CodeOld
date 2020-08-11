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
section .text

exp:	; push float float8$0#
	fldz 

exp$1:	; pop float n
	fstp qword [rbp + 32]

exp$2:	; push float float8$1#
	fld1 

exp$3:	; pop float faculty
	fstp qword [rbp + 40]

exp$4:	; push float float8$1#
	fld1 

exp$5:	; pop float power
	fstp qword [rbp + 48]

exp$6:	; push float float8$0#
	fldz 

exp$7:	; pop float sum
	fstp qword [rbp + 64]

exp$8:	; push float power
	fld qword [rbp + 48]

exp$9:	; push float faculty
	fld qword [rbp + 40]

exp$10:	; £temporary357 = power / faculty
	fdiv 

exp$11:	; pop float term
	fstp qword [rbp + 56]

exp$12:	; push float sum
	fld qword [rbp + 64]

exp$13:	; push float term
	fld qword [rbp + 56]

exp$14:	; £temporary358 = sum + term
	fadd 

exp$15:	; pop float sum
	fstp qword [rbp + 64]

exp$16:	; push float power
	fld qword [rbp + 48]

exp$17:	; push float x
	fld qword [rbp + 24]

exp$18:	; £temporary359 = power * x
	fmul 

exp$19:	; pop float power
	fstp qword [rbp + 48]

exp$20:	; push float faculty
	fld qword [rbp + 40]

exp$21:	; push float n
	fld qword [rbp + 32]

exp$22:	; push 1
	fld1 

exp$23:	; n = n + float8$1#
	fadd 

exp$24:	; top float n
	fst qword [rbp + 32]

exp$25:	; £temporary361 = faculty * £temporary360
	fmul 

exp$26:	; pop float faculty
	fstp qword [rbp + 40]

exp$27:	; check track map float stack

exp$28:	; call header integral zero 0 stack zero 0

exp$29:	; push float term
	fld qword [rbp + 56]

exp$30:	; parameter term, offset 96
	fstp qword [rbp + 96]

exp$31:	; call function noellipse-noellipse fabs
	mov qword [rbp + 72], exp$32
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

exp$32:	; post call

exp$33:	; £temporary362 = return_value

exp$34:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

exp$35:	; if £temporary362 >= float8$0.000000001# goto 8
	fcompp 
	fstsw ax
	sahf 
	jbe exp$8

exp$36:	; push float sum
	fld qword [rbp + 64]

exp$37:	; return_value = sum

exp$38:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

exp$39:	; function end exp

log:	; push float x_plus_1
	fld qword [rbp + 24]

log$1:	; push float float8$0#
	fldz 

log$2:	; if x_plus_1 <= float8$0# goto 71
	fcompp 
	fstsw ax
	sahf 
	jae log$71

log$3:	; expo = int4$0#
	mov dword [rbp + 32], 0

log$4:	; push float x_plus_1
	fld qword [rbp + 24]

log$5:	; push float float8$0.3678794411714423216036827922#
	fld qword [float8$0.3678794411714423216036827922#]

log$6:	; if x_plus_1 >= float8$0.3678794411714423216036827922# goto 13
	fcompp 
	fstsw ax
	sahf 
	jbe log$13

log$7:	; push float x_plus_1
	fld qword [rbp + 24]

log$8:	; push float float8$2.7182818284590452353#
	fld qword [float8$2.7182818284590452353#]

log$9:	; £temporary367 = x_plus_1 * float8$2.7182818284590452353#
	fmul 

log$10:	; pop float x_plus_1
	fstp qword [rbp + 24]

log$11:	; expo = expo - int4$1#
	dec dword [rbp + 32]

log$12:	; goto 4
	jmp log$4

log$13:	; push float x_plus_1
	fld qword [rbp + 24]

log$14:	; push float float8$0.7357588823428846432073655843#
	fld qword [float8$0.7357588823428846432073655843#]

log$15:	; if x_plus_1 <= float8$0.7357588823428846432073655843# goto 22
	fcompp 
	fstsw ax
	sahf 
	jae log$22

log$16:	; push float x_plus_1
	fld qword [rbp + 24]

log$17:	; push float float8$2.7182818284590452353#
	fld qword [float8$2.7182818284590452353#]

log$18:	; £temporary370 = x_plus_1 / float8$2.7182818284590452353#
	fdiv 

log$19:	; pop float x_plus_1
	fstp qword [rbp + 24]

log$20:	; expo = expo + int4$1#
	inc dword [rbp + 32]

log$21:	; goto 13
	jmp log$13

log$22:	; push float float8$1#
	fld1 

log$23:	; pop float n
	fstp qword [rbp + 36]

log$24:	; push float float8$1#
	fld1 

log$25:	; pop float plusMinusOne
	fstp qword [rbp + 44]

log$26:	; push float x_plus_1
	fld qword [rbp + 24]

log$27:	; push float float8$1#
	fld1 

log$28:	; £temporary372 = x_plus_1 - float8$1#
	fsub 

log$29:	; pop float x
	fstp qword [rbp + 52]

log$30:	; push float float8$0#
	fldz 

log$31:	; pop float sum
	fstp qword [rbp + 68]

log$32:	; push float x
	fld qword [rbp + 52]

log$33:	; pop float power
	fstp qword [rbp + 76]

log$34:	; push float plusMinusOne
	fld qword [rbp + 44]

log$35:	; push float power
	fld qword [rbp + 76]

log$36:	; push float n
	fld qword [rbp + 36]

log$37:	; push 1
	fld1 

log$38:	; n = n + float8$1#
	fadd 

log$39:	; top float n
	fst qword [rbp + 36]

log$40:	; push 1
	fld1 

log$41:	; n = n - float8$1#
	fsub 

log$42:	; £temporary374 = power / £temporary373
	fdiv 

log$43:	; £temporary375 = plusMinusOne * £temporary374
	fmul 

log$44:	; pop float term
	fstp qword [rbp + 60]

log$45:	; push float sum
	fld qword [rbp + 68]

log$46:	; push float term
	fld qword [rbp + 60]

log$47:	; £temporary376 = sum + term
	fadd 

log$48:	; pop float sum
	fstp qword [rbp + 68]

log$49:	; push float power
	fld qword [rbp + 76]

log$50:	; push float x
	fld qword [rbp + 52]

log$51:	; £temporary377 = power * x
	fmul 

log$52:	; pop float power
	fstp qword [rbp + 76]

log$53:	; push float plusMinusOne
	fld qword [rbp + 44]

log$54:	; push float float8$minus1.0#
	fld qword [float8$minus1.0#]

log$55:	; £temporary378 = plusMinusOne * float8$minus1.0#
	fmul 

log$56:	; pop float plusMinusOne
	fstp qword [rbp + 44]

log$57:	; check track map float stack

log$58:	; call header integral zero 0 stack zero 0

log$59:	; push float term
	fld qword [rbp + 60]

log$60:	; parameter term, offset 108
	fstp qword [rbp + 108]

log$61:	; call function noellipse-noellipse fabs
	mov qword [rbp + 84], log$62
	mov [rbp + 92], rbp
	add rbp, 84
	jmp fabs

log$62:	; post call

log$63:	; £temporary379 = return_value

log$64:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

log$65:	; if £temporary379 > float8$0.000000001# goto 34
	fcompp 
	fstsw ax
	sahf 
	jb log$34

log$66:	; push float sum
	fld qword [rbp + 68]

log$67:	; £temporary381 = int_to_float expo (Signed_Int -> Double)
	fild word [rbp + 32]

log$68:	; £temporary382 = sum + £temporary381
	fadd 

log$69:	; return_value = £temporary382

log$70:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

log$71:	; errno = int4$6#
	mov dword [errno], 6

log$72:	; push float float8$0#
	fldz 

log$73:	; return_value = float8$0#

log$74:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

log$75:	; function end log

log10:	; push float float8$0.4342944820#
	fld qword [float8$0.4342944820#]

log10$1:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 32]

log10$2:	; push float x
	fld qword [rbp + 24]

log10$3:	; parameter x, offset 56
	fstp qword [rbp + 64]

log10$4:	; call function noellipse-noellipse log
	mov qword [rbp + 40], log10$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp log

log10$5:	; post call
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

log10$6:	; £temporary384 = return_value

log10$7:	; £temporary385 = float8$0.4342944820# * £temporary384
	fmul 

log10$8:	; return_value = £temporary385

log10$9:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

log10$10:	; function end log10

log10_int:	; push float x
	fld qword [rbp + 24]

log10_int$1:	; push float float8$0#
	fldz 

log10_int$2:	; if x <= float8$0# goto 37
	fcompp 
	fstsw ax
	sahf 
	jae log10_int$37

log10_int$3:	; push float x
	fld qword [rbp + 24]

log10_int$4:	; push float float8$1#
	fld1 

log10_int$5:	; if x != float8$1# goto 8
	fcompp 
	fstsw ax
	sahf 
	jne log10_int$8

log10_int$6:	; return_value = int4$0#
	mov ebx, 0

log10_int$7:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

log10_int$8:	; push float x
	fld qword [rbp + 24]

log10_int$9:	; push float float8$1#
	fld1 

log10_int$10:	; if x <= float8$1# goto 24
	fcompp 
	fstsw ax
	sahf 
	jae log10_int$24

log10_int$11:	; count = int4$0#
	mov dword [rbp + 32], 0

log10_int$12:	; push float x
	fld qword [rbp + 24]

log10_int$13:	; push float float8$1#
	fld1 

log10_int$14:	; if x <= float8$1# goto 21
	fcompp 
	fstsw ax
	sahf 
	jae log10_int$21

log10_int$15:	; push float x
	fld qword [rbp + 24]

log10_int$16:	; push float float8$10#
	fld qword [float8$10#]

log10_int$17:	; £temporary391 = x / float8$10#
	fdiv 

log10_int$18:	; pop float x
	fstp qword [rbp + 24]

log10_int$19:	; count = count + int4$1#
	inc dword [rbp + 32]

log10_int$20:	; goto 12
	jmp log10_int$12

log10_int$21:	; £temporary393 = count - int4$1#
	mov ebx, [rbp + 32]
	dec ebx

log10_int$22:	; return_value = £temporary393

log10_int$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

log10_int$24:	; count = int4$0#
	mov dword [rbp + 32], 0

log10_int$25:	; push float x
	fld qword [rbp + 24]

log10_int$26:	; push float float8$1#
	fld1 

log10_int$27:	; if x >= float8$1# goto 34
	fcompp 
	fstsw ax
	sahf 
	jbe log10_int$34

log10_int$28:	; push float x
	fld qword [rbp + 24]

log10_int$29:	; push float float8$10#
	fld qword [float8$10#]

log10_int$30:	; £temporary395 = x * float8$10#
	fmul 

log10_int$31:	; pop float x
	fstp qword [rbp + 24]

log10_int$32:	; count = count + int4$1#
	inc dword [rbp + 32]

log10_int$33:	; goto 25
	jmp log10_int$25

log10_int$34:	; £temporary397 = -count
	mov ebx, [rbp + 32]
	neg ebx

log10_int$35:	; return_value = £temporary397

log10_int$36:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

log10_int$37:	; errno = int4$6#
	mov dword [errno], 6

log10_int$38:	; return_value = int4$0#
	mov ebx, 0

log10_int$39:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

log10_int$40:	; function end log10_int

pow_int:	; minus = int4$0#
	mov dword [rbp + 36], 0

pow_int$1:	; if y >= int4$0# goto 5
	cmp dword [rbp + 32], 0
	jge pow_int$5

pow_int$2:	; £temporary399 = -y
	mov eax, [rbp + 32]
	neg eax

pow_int$3:	; y = £temporary399
	mov [rbp + 32], eax

pow_int$4:	; minus = int4$1#
	mov dword [rbp + 36], 1

pow_int$5:	; push float float8$1#
	fld1 

pow_int$6:	; pop float product
	fstp qword [rbp + 40]

pow_int$7:	; index = int4$0#
	mov dword [rbp + 48], 0

pow_int$8:	; if index >= y goto 15
	mov eax, [rbp + 32]
	cmp [rbp + 48], eax
	jge pow_int$15

pow_int$9:	; push float product
	fld qword [rbp + 40]

pow_int$10:	; push float x
	fld qword [rbp + 24]

pow_int$11:	; £temporary402 = product * x
	fmul 

pow_int$12:	; pop float product
	fstp qword [rbp + 40]

pow_int$13:	; index = index + int4$1#
	inc dword [rbp + 48]

pow_int$14:	; goto 8
	jmp pow_int$8

pow_int$15:	; if minus == int4$0# goto 21
	cmp dword [rbp + 36], 0
	je pow_int$21

pow_int$16:	; push float float8$1#
	fld1 

pow_int$17:	; push float product
	fld qword [rbp + 40]

pow_int$18:	; £temporary403 = float8$1# / product
	fdiv 

pow_int$19:	; decrease stack

pow_int$20:	; goto 22
	jmp pow_int$22

pow_int$21:	; push float product
	fld qword [rbp + 40]

pow_int$22:	; return_value = £temporary405

pow_int$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

pow_int$24:	; function end pow_int

pow:	; push float x
	fld qword [rbp + 24]

pow$1:	; push float float8$0#
	fldz 

pow$2:	; if x <= float8$0# goto 18
	fcompp 
	fstsw ax
	sahf 
	jae pow$18

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
	fld qword [rbp + 32]

pow$5:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

pow$6:	; push float x
	fld qword [rbp + 24]

pow$7:	; parameter x, offset 64
	fstp qword [rbp + 72]

pow$8:	; call function noellipse-noellipse log
	mov qword [rbp + 48], pow$9
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

pow$9:	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

pow$10:	; £temporary407 = return_value

pow$11:	; £temporary408 = y * £temporary407
	fmul 

pow$12:	; parameter £temporary408, offset 64
	fstp qword [rbp + 64]

pow$13:	; call function noellipse-noellipse exp
	mov qword [rbp + 40], pow$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

pow$14:	; post call

pow$15:	; £temporary409 = return_value

pow$16:	; return_value = £temporary409

pow$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

pow$18:	; errno = int4$6#
	mov dword [errno], 6

pow$19:	; push float float8$0#
	fldz 

pow$20:	; return_value = float8$0#

pow$21:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

pow$22:	; function end pow

ldexp:	; push float x
	fld qword [rbp + 24]

ldexp$1:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 36]

ldexp$2:	; push float float8$2#
	fld qword [float8$2#]

ldexp$3:	; parameter float8$2#, offset 60
	fstp qword [rbp + 68]

ldexp$4:	; £temporary412 = int_to_float n (Signed_Int -> Double)
	fild word [rbp + 32]

ldexp$5:	; parameter £temporary412, offset 68
	fstp qword [rbp + 76]

ldexp$6:	; call function noellipse-noellipse pow
	mov qword [rbp + 44], ldexp$7
	mov [rbp + 52], rbp
	add rbp, 44
	jmp pow

ldexp$7:	; post call
	fstp qword [rbp + 44]
	fld qword [rbp + 36]
	fld qword [rbp + 44]

ldexp$8:	; £temporary413 = return_value

ldexp$9:	; £temporary414 = x * £temporary413
	fmul 

ldexp$10:	; return_value = £temporary414

ldexp$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

ldexp$12:	; function end ldexp

frexp:	; if p == int8$0# goto 57
	cmp qword [rbp + 32], 0
	je frexp$57

frexp$1:	; push float x
	fld qword [rbp + 24]

frexp$2:	; push float float8$0#
	fldz 

frexp$3:	; if x != float8$0# goto 9
	fcompp 
	fstsw ax
	sahf 
	jne frexp$9

frexp$4:	; £field419 -> p = *p
	mov rsi, [rbp + 32]

frexp$5:	; £field419 -> p = int4$0#
	mov dword [rsi], 0

frexp$6:	; push float float8$0#
	fldz 

frexp$7:	; return_value = float8$0#

frexp$8:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

frexp$9:	; £field420 -> p = *p
	mov rsi, [rbp + 32]

frexp$10:	; call header integral no zero 1 stack zero 0
	mov [rbp + 40], rsi

frexp$11:	; call header integral zero 0 stack zero 0

frexp$12:	; push float x
	fld qword [rbp + 24]

frexp$13:	; parameter x, offset 64
	fstp qword [rbp + 72]

frexp$14:	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], frexp$15
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

frexp$15:	; post call

frexp$16:	; £temporary421 = return_value

frexp$17:	; parameter £temporary421, offset 64
	fstp qword [rbp + 72]

frexp$18:	; call function noellipse-noellipse log
	mov qword [rbp + 48], frexp$19
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

frexp$19:	; post call
	mov rsi, [rbp + 40]

frexp$20:	; £temporary422 = return_value

frexp$21:	; call header integral no zero 1 stack no zero 1
	mov [rbp + 40], rsi
	fstp qword [rbp + 48]

frexp$22:	; push float float8$2#
	fld qword [float8$2#]

frexp$23:	; parameter float8$2#, offset 64
	fstp qword [rbp + 80]

frexp$24:	; call function noellipse-noellipse log
	mov qword [rbp + 56], frexp$25
	mov [rbp + 64], rbp
	add rbp, 56
	jmp log

frexp$25:	; post call
	mov rsi, [rbp + 40]
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

frexp$26:	; £temporary423 = return_value

frexp$27:	; £temporary424 = £temporary422 / £temporary423
	fdiv 

frexp$28:	; £temporary425 = float_to_int £temporary424 (Double -> Signed_Int)
	fistp word [$IntegralStorage#]
	mov eax, [$IntegralStorage#]

frexp$29:	; £field420 -> p = £temporary425 + int4$1#
	inc eax
	mov [rsi], eax

frexp$30:	; call header integral zero 0 stack zero 0

frexp$31:	; push float x
	fld qword [rbp + 24]

frexp$32:	; parameter x, offset 64
	fstp qword [rbp + 64]

frexp$33:	; call function noellipse-noellipse fabs
	mov qword [rbp + 40], frexp$34
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

frexp$34:	; post call

frexp$35:	; £temporary427 = return_value

frexp$36:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

frexp$37:	; push float float8$2#
	fld qword [float8$2#]

frexp$38:	; parameter float8$2#, offset 64
	fstp qword [rbp + 72]

frexp$39:	; £field428 -> p = *p
	mov rsi, [rbp + 32]

frexp$40:	; £temporary429 = int_to_float £field428 -> p (Signed_Int -> Double)
	fild word [rsi]

frexp$41:	; parameter £temporary429, offset 72
	fstp qword [rbp + 80]

frexp$42:	; call function noellipse-noellipse pow
	mov qword [rbp + 48], frexp$43
	mov [rbp + 56], rbp
	add rbp, 48
	jmp pow

frexp$43:	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

frexp$44:	; £temporary430 = return_value

frexp$45:	; £temporary431 = £temporary427 / £temporary430
	fdiv 

frexp$46:	; pop float quotient
	fstp qword [rbp + 40]

frexp$47:	; push float x
	fld qword [rbp + 24]

frexp$48:	; push float float8$0#
	fldz 

frexp$49:	; if x >= float8$0# goto 54
	fcompp 
	fstsw ax
	sahf 
	jbe frexp$54

frexp$50:	; push float quotient
	fld qword [rbp + 40]

frexp$51:	; £temporary433 = -quotient
	fchs 

frexp$52:	; decrease stack

frexp$53:	; goto 55
	jmp frexp$55

frexp$54:	; push float quotient
	fld qword [rbp + 40]

frexp$55:	; return_value = £temporary434

frexp$56:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

frexp$57:	; push float x
	fld qword [rbp + 24]

frexp$58:	; push float float8$0#
	fldz 

frexp$59:	; if x != float8$0# goto 63
	fcompp 
	fstsw ax
	sahf 
	jne frexp$63

frexp$60:	; push float float8$0#
	fldz 

frexp$61:	; return_value = float8$0#

frexp$62:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

frexp$63:	; call header integral zero 0 stack zero 0

frexp$64:	; call header integral zero 0 stack zero 0

frexp$65:	; push float x
	fld qword [rbp + 24]

frexp$66:	; parameter x, offset 64
	fstp qword [rbp + 64]

frexp$67:	; call function noellipse-noellipse fabs
	mov qword [rbp + 40], frexp$68
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

frexp$68:	; post call

frexp$69:	; £temporary436 = return_value

frexp$70:	; parameter £temporary436, offset 64
	fstp qword [rbp + 64]

frexp$71:	; call function noellipse-noellipse log
	mov qword [rbp + 40], frexp$72
	mov [rbp + 48], rbp
	add rbp, 40
	jmp log

frexp$72:	; post call

frexp$73:	; £temporary437 = return_value

frexp$74:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

frexp$75:	; push float float8$2#
	fld qword [float8$2#]

frexp$76:	; parameter float8$2#, offset 64
	fstp qword [rbp + 72]

frexp$77:	; call function noellipse-noellipse log
	mov qword [rbp + 48], frexp$78
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

frexp$78:	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

frexp$79:	; £temporary438 = return_value

frexp$80:	; £temporary439 = £temporary437 / £temporary438
	fdiv 

frexp$81:	; £temporary440 = float_to_int £temporary439 (Double -> Signed_Int)
	fistp word [$IntegralStorage#]
	mov eax, [$IntegralStorage#]

frexp$82:	; n = £temporary440 + int4$1#
	inc eax
	mov [rbp + 40], eax

frexp$83:	; call header integral zero 0 stack zero 0

frexp$84:	; push float x
	fld qword [rbp + 24]

frexp$85:	; parameter x, offset 68
	fstp qword [rbp + 68]

frexp$86:	; call function noellipse-noellipse fabs
	mov qword [rbp + 44], frexp$87
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fabs

frexp$87:	; post call

frexp$88:	; £temporary442 = return_value

frexp$89:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 44]

frexp$90:	; push float float8$2#
	fld qword [float8$2#]

frexp$91:	; parameter float8$2#, offset 68
	fstp qword [rbp + 76]

frexp$92:	; £temporary443 = int_to_float n (Signed_Int -> Double)
	fild word [rbp + 40]

frexp$93:	; parameter £temporary443, offset 76
	fstp qword [rbp + 84]

frexp$94:	; call function noellipse-noellipse pow
	mov qword [rbp + 52], frexp$95
	mov [rbp + 60], rbp
	add rbp, 52
	jmp pow

frexp$95:	; post call
	fstp qword [rbp + 52]
	fld qword [rbp + 44]
	fld qword [rbp + 52]

frexp$96:	; £temporary444 = return_value

frexp$97:	; £temporary445 = £temporary442 / £temporary444
	fdiv 

frexp$98:	; pop float a
	fstp qword [rbp + 44]

frexp$99:	; push float x
	fld qword [rbp + 24]

frexp$100:	; push float float8$0#
	fldz 

frexp$101:	; if x >= float8$0# goto 106
	fcompp 
	fstsw ax
	sahf 
	jbe frexp$106

frexp$102:	; push float a
	fld qword [rbp + 44]

frexp$103:	; £temporary447 = -a
	fchs 

frexp$104:	; decrease stack

frexp$105:	; goto 107
	jmp frexp$107

frexp$106:	; push float a
	fld qword [rbp + 44]

frexp$107:	; return_value = £temporary448

frexp$108:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

frexp$109:	; function end frexp

sin:	; push float float8$0#
	fldz 

sin$1:	; pop float n
	fstp qword [rbp + 32]

sin$2:	; push float float8$1#
	fld1 

sin$3:	; pop float plusMinusOne
	fstp qword [rbp + 40]

sin$4:	; push float float8$1#
	fld1 

sin$5:	; pop float faculty
	fstp qword [rbp + 48]

sin$6:	; push float x
	fld qword [rbp + 24]

sin$7:	; pop float power
	fstp qword [rbp + 56]

sin$8:	; push float float8$0#
	fldz 

sin$9:	; pop float sum
	fstp qword [rbp + 72]

sin$10:	; push float plusMinusOne
	fld qword [rbp + 40]

sin$11:	; push float power
	fld qword [rbp + 56]

sin$12:	; push float faculty
	fld qword [rbp + 48]

sin$13:	; £temporary461 = power / faculty
	fdiv 

sin$14:	; £temporary462 = plusMinusOne * £temporary461
	fmul 

sin$15:	; pop float term
	fstp qword [rbp + 64]

sin$16:	; push float sum
	fld qword [rbp + 72]

sin$17:	; push float term
	fld qword [rbp + 64]

sin$18:	; £temporary463 = sum + term
	fadd 

sin$19:	; pop float sum
	fstp qword [rbp + 72]

sin$20:	; push float plusMinusOne
	fld qword [rbp + 40]

sin$21:	; push float float8$minus1#
	fld qword [float8$minus1#]

sin$22:	; £temporary464 = plusMinusOne * float8$minus1#
	fmul 

sin$23:	; pop float plusMinusOne
	fstp qword [rbp + 40]

sin$24:	; push float power
	fld qword [rbp + 56]

sin$25:	; push float x
	fld qword [rbp + 24]

sin$26:	; push float x
	fld qword [rbp + 24]

sin$27:	; £temporary465 = x * x
	fmul 

sin$28:	; £temporary466 = power * £temporary465
	fmul 

sin$29:	; pop float power
	fstp qword [rbp + 56]

sin$30:	; push float faculty
	fld qword [rbp + 48]

sin$31:	; push float n
	fld qword [rbp + 32]

sin$32:	; push float float8$2#
	fld qword [float8$2#]

sin$33:	; £temporary467 = n + float8$2#
	fadd 

sin$34:	; push float n
	fld qword [rbp + 32]

sin$35:	; push float float8$3#
	fld qword [float8$3#]

sin$36:	; £temporary468 = n + float8$3#
	fadd 

sin$37:	; £temporary469 = £temporary467 * £temporary468
	fmul 

sin$38:	; £temporary470 = faculty * £temporary469
	fmul 

sin$39:	; pop float faculty
	fstp qword [rbp + 48]

sin$40:	; push float n
	fld qword [rbp + 32]

sin$41:	; push float float8$2#
	fld qword [float8$2#]

sin$42:	; £temporary471 = n + float8$2#
	fadd 

sin$43:	; pop float n
	fstp qword [rbp + 32]

sin$44:	; check track map float stack

sin$45:	; call header integral zero 0 stack zero 0

sin$46:	; push float term
	fld qword [rbp + 64]

sin$47:	; parameter term, offset 104
	fstp qword [rbp + 104]

sin$48:	; call function noellipse-noellipse fabs
	mov qword [rbp + 80], sin$49
	mov [rbp + 88], rbp
	add rbp, 80
	jmp fabs

sin$49:	; post call

sin$50:	; £temporary472 = return_value

sin$51:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

sin$52:	; if £temporary472 >= float8$0.000000001# goto 10
	fcompp 
	fstsw ax
	sahf 
	jbe sin$10

sin$53:	; push float sum
	fld qword [rbp + 72]

sin$54:	; return_value = sum

sin$55:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

sin$56:	; function end sin

cos:	; push float float8$0#
	fldz 

cos$1:	; pop float n
	fstp qword [rbp + 32]

cos$2:	; push float float8$1#
	fld1 

cos$3:	; pop float plusMinusOne
	fstp qword [rbp + 40]

cos$4:	; push float float8$1#
	fld1 

cos$5:	; pop float faculty
	fstp qword [rbp + 48]

cos$6:	; push float float8$1#
	fld1 

cos$7:	; pop float power
	fstp qword [rbp + 56]

cos$8:	; push float float8$0#
	fldz 

cos$9:	; pop float sum
	fstp qword [rbp + 72]

cos$10:	; push float plusMinusOne
	fld qword [rbp + 40]

cos$11:	; push float power
	fld qword [rbp + 56]

cos$12:	; push float faculty
	fld qword [rbp + 48]

cos$13:	; £temporary475 = power / faculty
	fdiv 

cos$14:	; £temporary476 = plusMinusOne * £temporary475
	fmul 

cos$15:	; pop float term
	fstp qword [rbp + 64]

cos$16:	; push float sum
	fld qword [rbp + 72]

cos$17:	; push float term
	fld qword [rbp + 64]

cos$18:	; £temporary477 = sum + term
	fadd 

cos$19:	; pop float sum
	fstp qword [rbp + 72]

cos$20:	; push float plusMinusOne
	fld qword [rbp + 40]

cos$21:	; push float float8$minus1#
	fld qword [float8$minus1#]

cos$22:	; £temporary478 = plusMinusOne * float8$minus1#
	fmul 

cos$23:	; pop float plusMinusOne
	fstp qword [rbp + 40]

cos$24:	; push float power
	fld qword [rbp + 56]

cos$25:	; push float x
	fld qword [rbp + 24]

cos$26:	; push float x
	fld qword [rbp + 24]

cos$27:	; £temporary479 = x * x
	fmul 

cos$28:	; £temporary480 = power * £temporary479
	fmul 

cos$29:	; pop float power
	fstp qword [rbp + 56]

cos$30:	; push float faculty
	fld qword [rbp + 48]

cos$31:	; push float n
	fld qword [rbp + 32]

cos$32:	; push float float8$1#
	fld1 

cos$33:	; £temporary481 = n + float8$1#
	fadd 

cos$34:	; push float n
	fld qword [rbp + 32]

cos$35:	; push float float8$2#
	fld qword [float8$2#]

cos$36:	; £temporary482 = n + float8$2#
	fadd 

cos$37:	; £temporary483 = £temporary481 * £temporary482
	fmul 

cos$38:	; £temporary484 = faculty * £temporary483
	fmul 

cos$39:	; pop float faculty
	fstp qword [rbp + 48]

cos$40:	; push float n
	fld qword [rbp + 32]

cos$41:	; push float float8$2#
	fld qword [float8$2#]

cos$42:	; £temporary485 = n + float8$2#
	fadd 

cos$43:	; pop float n
	fstp qword [rbp + 32]

cos$44:	; check track map float stack

cos$45:	; call header integral zero 0 stack zero 0

cos$46:	; push float term
	fld qword [rbp + 64]

cos$47:	; parameter term, offset 104
	fstp qword [rbp + 104]

cos$48:	; call function noellipse-noellipse fabs
	mov qword [rbp + 80], cos$49
	mov [rbp + 88], rbp
	add rbp, 80
	jmp fabs

cos$49:	; post call

cos$50:	; £temporary486 = return_value

cos$51:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

cos$52:	; if £temporary486 >= float8$0.000000001# goto 10
	fcompp 
	fstsw ax
	sahf 
	jbe cos$10

cos$53:	; push float sum
	fld qword [rbp + 72]

cos$54:	; return_value = sum

cos$55:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

cos$56:	; function end cos

tan:	; call header integral zero 0 stack zero 0

tan$1:	; push float x
	fld qword [rbp + 24]

tan$2:	; parameter x, offset 56
	fstp qword [rbp + 56]

tan$3:	; call function noellipse-noellipse cos
	mov qword [rbp + 32], tan$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp cos

tan$4:	; post call

tan$5:	; £temporary489 = return_value

tan$6:	; top float cos_value
	fst qword [rbp + 32]

tan$7:	; push float float8$0#
	fldz 

tan$8:	; if cos_value == float8$0# goto 19
	fcompp 
	fstsw ax
	sahf 
	je tan$19

tan$9:	; call header integral zero 0 stack zero 0

tan$10:	; push float x
	fld qword [rbp + 24]

tan$11:	; parameter x, offset 64
	fstp qword [rbp + 64]

tan$12:	; call function noellipse-noellipse sin
	mov qword [rbp + 40], tan$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sin

tan$13:	; post call

tan$14:	; £temporary491 = return_value

tan$15:	; push float cos_value
	fld qword [rbp + 32]

tan$16:	; £temporary492 = £temporary491 / cos_value
	fdiv 

tan$17:	; return_value = £temporary492

tan$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tan$19:	; errno = int4$6#
	mov dword [errno], 6

tan$20:	; push float float8$0#
	fldz 

tan$21:	; return_value = float8$0#

tan$22:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tan$23:	; function end tan

sinh:	; call header integral zero 0 stack zero 0

sinh$1:	; push float x
	fld qword [rbp + 24]

sinh$2:	; parameter x, offset 56
	fstp qword [rbp + 56]

sinh$3:	; call function noellipse-noellipse exp
	mov qword [rbp + 32], sinh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp exp

sinh$4:	; post call

sinh$5:	; £temporary495 = return_value

sinh$6:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 32]

sinh$7:	; push float x
	fld qword [rbp + 24]

sinh$8:	; £temporary496 = -x
	fchs 

sinh$9:	; parameter £temporary496, offset 56
	fstp qword [rbp + 64]

sinh$10:	; call function noellipse-noellipse exp
	mov qword [rbp + 40], sinh$11
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

sinh$11:	; post call
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

sinh$12:	; £temporary497 = return_value

sinh$13:	; £temporary498 = £temporary495 - £temporary497
	fsub 

sinh$14:	; push float float8$2#
	fld qword [float8$2#]

sinh$15:	; £temporary499 = £temporary498 / float8$2#
	fdiv 

sinh$16:	; return_value = £temporary499

sinh$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

sinh$18:	; function end sinh

cosh:	; call header integral zero 0 stack zero 0

cosh$1:	; push float x
	fld qword [rbp + 24]

cosh$2:	; parameter x, offset 56
	fstp qword [rbp + 56]

cosh$3:	; call function noellipse-noellipse exp
	mov qword [rbp + 32], cosh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp exp

cosh$4:	; post call

cosh$5:	; £temporary502 = return_value

cosh$6:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 32]

cosh$7:	; push float x
	fld qword [rbp + 24]

cosh$8:	; £temporary503 = -x
	fchs 

cosh$9:	; parameter £temporary503, offset 56
	fstp qword [rbp + 64]

cosh$10:	; call function noellipse-noellipse exp
	mov qword [rbp + 40], cosh$11
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

cosh$11:	; post call
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

cosh$12:	; £temporary504 = return_value

cosh$13:	; £temporary505 = £temporary502 + £temporary504
	fadd 

cosh$14:	; push float float8$2#
	fld qword [float8$2#]

cosh$15:	; £temporary506 = £temporary505 / float8$2#
	fdiv 

cosh$16:	; return_value = £temporary506

cosh$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

cosh$18:	; function end cosh

tanh:	; call header integral zero 0 stack zero 0

tanh$1:	; push float x
	fld qword [rbp + 24]

tanh$2:	; parameter x, offset 56
	fstp qword [rbp + 56]

tanh$3:	; call function noellipse-noellipse cosh
	mov qword [rbp + 32], tanh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp cosh

tanh$4:	; post call

tanh$5:	; £temporary509 = return_value

tanh$6:	; top float coh
	fst qword [rbp + 32]

tanh$7:	; push float float8$0#
	fldz 

tanh$8:	; if coh == float8$0# goto 21
	fcompp 
	fstsw ax
	sahf 
	je tanh$21

tanh$9:	; call header integral zero 0 stack zero 0

tanh$10:	; push float x
	fld qword [rbp + 24]

tanh$11:	; parameter x, offset 64
	fstp qword [rbp + 64]

tanh$12:	; call function noellipse-noellipse sinh
	mov qword [rbp + 40], tanh$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sinh

tanh$13:	; post call

tanh$14:	; £temporary511 = return_value

tanh$15:	; top float sh
	fst qword [rbp + 40]

tanh$16:	; push float coh
	fld qword [rbp + 32]

tanh$17:	; £temporary512 = sh / coh
	fdiv 

tanh$18:	; top float y
	fst qword [rbp + 48]

tanh$19:	; return_value = y

tanh$20:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tanh$21:	; errno = int4$6#
	mov dword [errno], 6

tanh$22:	; push float float8$0#
	fldz 

tanh$23:	; return_value = float8$0#

tanh$24:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tanh$25:	; function end tanh

sqrt:	; push float v
	fld qword [rbp + 24]

sqrt$1:	; push float float8$0#
	fldz 

sqrt$2:	; if v < float8$0# goto 31
	fcompp 
	fstsw ax
	sahf 
	ja sqrt$31

sqrt$3:	; push float float8$1#
	fld1 

sqrt$4:	; pop float x_nplus1
	fstp qword [rbp + 32]

sqrt$5:	; count = int4$0#
	mov dword [rbp + 48], 0

sqrt$6:	; push float x_nplus1
	fld qword [rbp + 32]

sqrt$7:	; top float x
	fst qword [rbp + 40]

sqrt$8:	; push float v
	fld qword [rbp + 24]

sqrt$9:	; push float x
	fld qword [rbp + 40]

sqrt$10:	; £temporary516 = v / x
	fdiv 

sqrt$11:	; £temporary517 = x + £temporary516
	fadd 

sqrt$12:	; push float float8$2#
	fld qword [float8$2#]

sqrt$13:	; £temporary518 = £temporary517 / float8$2#
	fdiv 

sqrt$14:	; pop float x_nplus1
	fstp qword [rbp + 32]

sqrt$15:	; check track map float stack

sqrt$16:	; £temporary519 = count + int4$1#
	mov eax, [rbp + 48]
	inc eax

sqrt$17:	; if £temporary519 >= int4$1000# goto 28
	cmp eax, 1000
	jge sqrt$28

sqrt$18:	; call header integral zero 0 stack zero 0

sqrt$19:	; push float x_nplus1
	fld qword [rbp + 32]

sqrt$20:	; push float x
	fld qword [rbp + 40]

sqrt$21:	; £temporary521 = x_nplus1 - x
	fsub 

sqrt$22:	; parameter £temporary521, offset 76
	fstp qword [rbp + 76]

sqrt$23:	; call function noellipse-noellipse fabs
	mov qword [rbp + 52], sqrt$24
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fabs

sqrt$24:	; post call

sqrt$25:	; £temporary522 = return_value

sqrt$26:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

sqrt$27:	; if £temporary522 >= float8$0.000000001# goto 6
	fcompp 
	fstsw ax
	sahf 
	jbe sqrt$6

sqrt$28:	; push float x_nplus1
	fld qword [rbp + 32]

sqrt$29:	; return_value = x_nplus1

sqrt$30:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

sqrt$31:	; errno = int4$6#
	mov dword [errno], 6

sqrt$32:	; push float float8$0#
	fldz 

sqrt$33:	; return_value = float8$0#

sqrt$34:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

sqrt$35:	; function end sqrt

asin:	; call header integral zero 0 stack zero 0

asin$1:	; push float x
	fld qword [rbp + 24]

asin$2:	; parameter x, offset 56
	fstp qword [rbp + 56]

asin$3:	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], asin$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

asin$4:	; post call

asin$5:	; £temporary526 = return_value

asin$6:	; push float float8$1#
	fld1 

asin$7:	; if £temporary526 > float8$1# goto 29
	fcompp 
	fstsw ax
	sahf 
	jb asin$29

asin$8:	; call header integral zero 0 stack zero 0

asin$9:	; push float x
	fld qword [rbp + 24]

asin$10:	; parameter x, offset 56
	fstp qword [rbp + 56]

asin$11:	; call header integral zero 0 stack zero 0

asin$12:	; push float float8$1#
	fld1 

asin$13:	; push float x
	fld qword [rbp + 24]

asin$14:	; £temporary528 = float8$1# + x
	fadd 

asin$15:	; push float float8$1#
	fld1 

asin$16:	; push float x
	fld qword [rbp + 24]

asin$17:	; £temporary529 = float8$1# - x
	fsub 

asin$18:	; £temporary530 = £temporary528 * £temporary529
	fmul 

asin$19:	; parameter £temporary530, offset 88
	fstp qword [rbp + 88]

asin$20:	; call function noellipse-noellipse sqrt
	mov qword [rbp + 64], asin$21
	mov [rbp + 72], rbp
	add rbp, 64
	jmp sqrt

asin$21:	; post call

asin$22:	; £temporary531 = return_value

asin$23:	; parameter £temporary531, offset 64
	fstp qword [rbp + 64]

asin$24:	; call function noellipse-noellipse atan2
	mov qword [rbp + 32], asin$25
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan2

asin$25:	; post call

asin$26:	; £temporary532 = return_value

asin$27:	; return_value = £temporary532

asin$28:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

asin$29:	; errno = int4$6#
	mov dword [errno], 6

asin$30:	; push float float8$0#
	fldz 

asin$31:	; return_value = float8$0#

asin$32:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

asin$33:	; function end asin

acos:	; call header integral zero 0 stack zero 0

acos$1:	; push float x
	fld qword [rbp + 24]

acos$2:	; parameter x, offset 56
	fstp qword [rbp + 56]

acos$3:	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], acos$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

acos$4:	; post call

acos$5:	; £temporary537 = return_value

acos$6:	; push float float8$1#
	fld1 

acos$7:	; if £temporary537 > float8$1# goto 29
	fcompp 
	fstsw ax
	sahf 
	jb acos$29

acos$8:	; call header integral zero 0 stack zero 0

acos$9:	; call header integral zero 0 stack zero 0

acos$10:	; push float float8$1#
	fld1 

acos$11:	; push float x
	fld qword [rbp + 24]

acos$12:	; £temporary539 = float8$1# + x
	fadd 

acos$13:	; push float float8$1#
	fld1 

acos$14:	; push float x
	fld qword [rbp + 24]

acos$15:	; £temporary540 = float8$1# - x
	fsub 

acos$16:	; £temporary541 = £temporary539 * £temporary540
	fmul 

acos$17:	; parameter £temporary541, offset 56
	fstp qword [rbp + 56]

acos$18:	; call function noellipse-noellipse sqrt
	mov qword [rbp + 32], acos$19
	mov [rbp + 40], rbp
	add rbp, 32
	jmp sqrt

acos$19:	; post call

acos$20:	; £temporary542 = return_value

acos$21:	; parameter £temporary542, offset 56
	fstp qword [rbp + 56]

acos$22:	; push float x
	fld qword [rbp + 24]

acos$23:	; parameter x, offset 64
	fstp qword [rbp + 64]

acos$24:	; call function noellipse-noellipse atan2
	mov qword [rbp + 32], acos$25
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan2

acos$25:	; post call

acos$26:	; £temporary543 = return_value

acos$27:	; return_value = £temporary543

acos$28:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

acos$29:	; errno = int4$6#
	mov dword [errno], 6

acos$30:	; push float float8$0#
	fldz 

acos$31:	; return_value = float8$0#

acos$32:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

acos$33:	; function end acos

asin2:	; push float v
	fld qword [rbp + 24]

asin2$1:	; push float float8$1#
	fld1 

asin2$2:	; if v != float8$1# goto 6
	fcompp 
	fstsw ax
	sahf 
	jne asin2$6

asin2$3:	; push float float8$1.5707963267948966192#
	fld qword [float8$1.5707963267948966192#]

asin2$4:	; return_value = float8$1.5707963267948966192#

asin2$5:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

asin2$6:	; push float v
	fld qword [rbp + 24]

asin2$7:	; push float float8$minus1#
	fld qword [float8$minus1#]

asin2$8:	; if v != float8$minus1# goto 12
	fcompp 
	fstsw ax
	sahf 
	jne asin2$12

asin2$9:	; push float float8$minus1.5707963267948966192#
	fld qword [float8$minus1.5707963267948966192#]

asin2$10:	; return_value = float8$minus1.5707963267948966192#

asin2$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

asin2$12:	; call header integral zero 0 stack zero 0

asin2$13:	; push float v
	fld qword [rbp + 24]

asin2$14:	; parameter v, offset 56
	fstp qword [rbp + 56]

asin2$15:	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], asin2$16
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

asin2$16:	; post call

asin2$17:	; £temporary550 = return_value

asin2$18:	; push float float8$1#
	fld1 

asin2$19:	; if £temporary550 >= float8$1# goto 58
	fcompp 
	fstsw ax
	sahf 
	jbe asin2$58

asin2$20:	; push float float8$1#
	fld1 

asin2$21:	; pop float x_nplus1
	fstp qword [rbp + 32]

asin2$22:	; count = int4$0#
	mov dword [rbp + 48], 0

asin2$23:	; push float x_nplus1
	fld qword [rbp + 32]

asin2$24:	; top float x
	fst qword [rbp + 40]

asin2$25:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 52]

asin2$26:	; push float x
	fld qword [rbp + 40]

asin2$27:	; parameter x, offset 76
	fstp qword [rbp + 84]

asin2$28:	; call function noellipse-noellipse tan
	mov qword [rbp + 60], asin2$29
	mov [rbp + 68], rbp
	add rbp, 60
	jmp tan

asin2$29:	; post call
	fstp qword [rbp + 60]
	fld qword [rbp + 52]
	fld qword [rbp + 60]

asin2$30:	; £temporary552 = return_value

asin2$31:	; £temporary553 = x - £temporary552
	fsub 

asin2$32:	; push float v
	fld qword [rbp + 24]

asin2$33:	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 52]
	fstp qword [rbp + 60]

asin2$34:	; push float x
	fld qword [rbp + 40]

asin2$35:	; parameter x, offset 76
	fstp qword [rbp + 92]

asin2$36:	; call function noellipse-noellipse cos
	mov qword [rbp + 68], asin2$37
	mov [rbp + 76], rbp
	add rbp, 68
	jmp cos

asin2$37:	; post call
	fstp qword [rbp + 68]
	fld qword [rbp + 60]
	fld qword [rbp + 52]
	fld qword [rbp + 68]

asin2$38:	; £temporary554 = return_value

asin2$39:	; £temporary555 = v / £temporary554
	fdiv 

asin2$40:	; £temporary556 = £temporary553 + £temporary555
	fadd 

asin2$41:	; pop float x_nplus1
	fstp qword [rbp + 32]

asin2$42:	; check track map float stack

asin2$43:	; £temporary557 = count + int4$1#
	mov eax, [rbp + 48]
	inc eax

asin2$44:	; if £temporary557 >= int4$1000# goto 55
	cmp eax, 1000
	jge asin2$55

asin2$45:	; call header integral zero 0 stack zero 0

asin2$46:	; push float x_nplus1
	fld qword [rbp + 32]

asin2$47:	; push float x
	fld qword [rbp + 40]

asin2$48:	; £temporary559 = x_nplus1 - x
	fsub 

asin2$49:	; parameter £temporary559, offset 76
	fstp qword [rbp + 76]

asin2$50:	; call function noellipse-noellipse fabs
	mov qword [rbp + 52], asin2$51
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fabs

asin2$51:	; post call

asin2$52:	; £temporary560 = return_value

asin2$53:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

asin2$54:	; if £temporary560 >= float8$0.000000001# goto 23
	fcompp 
	fstsw ax
	sahf 
	jbe asin2$23

asin2$55:	; push float x_nplus1
	fld qword [rbp + 32]

asin2$56:	; return_value = x_nplus1

asin2$57:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

asin2$58:	; errno = int4$6#
	mov dword [errno], 6

asin2$59:	; push float float8$0#
	fldz 

asin2$60:	; return_value = float8$0#

asin2$61:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

asin2$62:	; function end asin2

acos2:	; push float v
	fld qword [rbp + 24]

acos2$1:	; push float float8$1#
	fld1 

acos2$2:	; if v != float8$1# goto 6
	fcompp 
	fstsw ax
	sahf 
	jne acos2$6

acos2$3:	; push float float8$0#
	fldz 

acos2$4:	; return_value = float8$0#

acos2$5:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

acos2$6:	; call header integral zero 0 stack zero 0

acos2$7:	; push float v
	fld qword [rbp + 24]

acos2$8:	; parameter v, offset 56
	fstp qword [rbp + 56]

acos2$9:	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], acos2$10
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

acos2$10:	; post call

acos2$11:	; £temporary568 = return_value

acos2$12:	; push float float8$1#
	fld1 

acos2$13:	; if £temporary568 > float8$1# goto 56
	fcompp 
	fstsw ax
	sahf 
	jb acos2$56

acos2$14:	; push float float8$1#
	fld1 

acos2$15:	; top float x_nplus1
	fst qword [rbp + 32]

acos2$16:	; top float x_n
	fst qword [rbp + 40]

acos2$17:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 48]

acos2$18:	; push float x_n
	fld qword [rbp + 40]

acos2$19:	; parameter x_n, offset 72
	fstp qword [rbp + 80]

acos2$20:	; call function noellipse-noellipse cos
	mov qword [rbp + 56], acos2$21
	mov [rbp + 64], rbp
	add rbp, 56
	jmp cos

acos2$21:	; post call
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

acos2$22:	; £temporary570 = return_value

acos2$23:	; push float v
	fld qword [rbp + 24]

acos2$24:	; £temporary571 = £temporary570 - v
	fsub 

acos2$25:	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

acos2$26:	; push float x_n
	fld qword [rbp + 40]

acos2$27:	; parameter x_n, offset 72
	fstp qword [rbp + 88]

acos2$28:	; call function noellipse-noellipse sin
	mov qword [rbp + 64], acos2$29
	mov [rbp + 72], rbp
	add rbp, 64
	jmp sin

acos2$29:	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

acos2$30:	; £temporary572 = return_value

acos2$31:	; £temporary573 = £temporary571 / £temporary572
	fdiv 

acos2$32:	; £temporary574 = x_n + £temporary573
	fadd 

acos2$33:	; pop float x_nplus1
	fstp qword [rbp + 32]

acos2$34:	; call header integral zero 0 stack zero 0

acos2$35:	; parameter string_x_n2025f2C20x_nplus12025f0A#, offset 72
	mov qword [rbp + 72], string_x_n2025f2C20x_nplus12025f0A#

acos2$36:	; push float x_n
	fld qword [rbp + 40]

acos2$37:	; parameter x_n, offset 80
	fstp qword [rbp + 80]

acos2$38:	; push float x_nplus1
	fld qword [rbp + 32]

acos2$39:	; parameter x_nplus1, offset 88
	fstp qword [rbp + 88]

acos2$40:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 48], acos2$41
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

acos2$41:	; post call

acos2$42:	; check track map float stack

acos2$43:	; call header integral zero 0 stack zero 0

acos2$44:	; push float x_nplus1
	fld qword [rbp + 32]

acos2$45:	; push float x_n
	fld qword [rbp + 40]

acos2$46:	; £temporary576 = x_nplus1 - x_n
	fsub 

acos2$47:	; parameter £temporary576, offset 72
	fstp qword [rbp + 72]

acos2$48:	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], acos2$49
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

acos2$49:	; post call

acos2$50:	; £temporary577 = return_value

acos2$51:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

acos2$52:	; if £temporary577 >= float8$0.000000001# goto 16
	fcompp 
	fstsw ax
	sahf 
	jbe acos2$16

acos2$53:	; push float x_nplus1
	fld qword [rbp + 32]

acos2$54:	; return_value = x_nplus1

acos2$55:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

acos2$56:	; errno = int4$6#
	mov dword [errno], 6

acos2$57:	; push float float8$0#
	fldz 

acos2$58:	; return_value = float8$0#

acos2$59:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

acos2$60:	; function end acos2

square:	; push float x
	fld qword [rbp + 24]

square$1:	; push float x
	fld qword [rbp + 24]

square$2:	; £temporary585 = x * x
	fmul 

square$3:	; return_value = £temporary585

square$4:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

square$5:	; function end square

atan:	; push float x
	fld qword [rbp + 24]

atan$1:	; push float float8$0#
	fldz 

atan$2:	; if x != float8$0# goto 6
	fcompp 
	fstsw ax
	sahf 
	jne atan$6

atan$3:	; push float float8$0#
	fldz 

atan$4:	; return_value = float8$0#

atan$5:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan$6:	; push float x
	fld qword [rbp + 24]

atan$7:	; push float float8$1#
	fld1 

atan$8:	; if x != float8$1# goto 12
	fcompp 
	fstsw ax
	sahf 
	jne atan$12

atan$9:	; push float float8$0.7853981633974483096#
	fld qword [float8$0.7853981633974483096#]

atan$10:	; return_value = float8$0.7853981633974483096#

atan$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan$12:	; push float x
	fld qword [rbp + 24]

atan$13:	; push float float8$minus1#
	fld qword [float8$minus1#]

atan$14:	; if x != float8$minus1# goto 18
	fcompp 
	fstsw ax
	sahf 
	jne atan$18

atan$15:	; push float float8$minus0.7853981633974483096#
	fld qword [float8$minus0.7853981633974483096#]

atan$16:	; return_value = float8$minus0.7853981633974483096#

atan$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan$18:	; push float float8$1#
	fld1 

atan$19:	; pop float sign
	fstp qword [rbp + 32]

atan$20:	; push float float8$1#
	fld1 

atan$21:	; pop float denominator
	fstp qword [rbp + 40]

atan$22:	; push float x
	fld qword [rbp + 24]

atan$23:	; pop float product
	fstp qword [rbp + 48]

atan$24:	; push float float8$0#
	fldz 

atan$25:	; pop float sum
	fstp qword [rbp + 64]

atan$26:	; count = int4$0#
	mov dword [rbp + 72], 0

atan$27:	; push float sign
	fld qword [rbp + 32]

atan$28:	; push float product
	fld qword [rbp + 48]

atan$29:	; £temporary589 = sign * product
	fmul 

atan$30:	; push float denominator
	fld qword [rbp + 40]

atan$31:	; £temporary590 = £temporary589 / denominator
	fdiv 

atan$32:	; pop float term
	fstp qword [rbp + 56]

atan$33:	; push float sum
	fld qword [rbp + 64]

atan$34:	; push float term
	fld qword [rbp + 56]

atan$35:	; £temporary591 = sum + term
	fadd 

atan$36:	; pop float sum
	fstp qword [rbp + 64]

atan$37:	; push float sign
	fld qword [rbp + 32]

atan$38:	; £temporary592 = -sign
	fchs 

atan$39:	; pop float sign
	fstp qword [rbp + 32]

atan$40:	; push float product
	fld qword [rbp + 48]

atan$41:	; push float x
	fld qword [rbp + 24]

atan$42:	; push float x
	fld qword [rbp + 24]

atan$43:	; £temporary593 = x * x
	fmul 

atan$44:	; £temporary594 = product * £temporary593
	fmul 

atan$45:	; pop float product
	fstp qword [rbp + 48]

atan$46:	; push float denominator
	fld qword [rbp + 40]

atan$47:	; push float float8$2#
	fld qword [float8$2#]

atan$48:	; £temporary595 = denominator + float8$2#
	fadd 

atan$49:	; pop float denominator
	fstp qword [rbp + 40]

atan$50:	; check track map float stack

atan$51:	; £temporary596 = count + int4$1#
	mov eax, [rbp + 72]
	inc eax

atan$52:	; if £temporary596 >= int4$1000# goto 61
	cmp eax, 1000
	jge atan$61

atan$53:	; call header integral zero 0 stack zero 0

atan$54:	; push float term
	fld qword [rbp + 56]

atan$55:	; parameter term, offset 100
	fstp qword [rbp + 100]

atan$56:	; call function noellipse-noellipse fabs
	mov qword [rbp + 76], atan$57
	mov [rbp + 84], rbp
	add rbp, 76
	jmp fabs

atan$57:	; post call

atan$58:	; £temporary598 = return_value

atan$59:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

atan$60:	; if £temporary598 >= float8$0.000000001# goto 27
	fcompp 
	fstsw ax
	sahf 
	jbe atan$27

atan$61:	; push float sum
	fld qword [rbp + 64]

atan$62:	; return_value = sum

atan$63:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan$64:	; function end atan

atanY:	; push float v
	fld qword [rbp + 24]

atanY$1:	; push float float8$0#
	fldz 

atanY$2:	; if v != float8$0# goto 6
	fcompp 
	fstsw ax
	sahf 
	jne atanY$6

atanY$3:	; push float float8$0#
	fldz 

atanY$4:	; return_value = float8$0#

atanY$5:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanY$6:	; push float v
	fld qword [rbp + 24]

atanY$7:	; push float float8$1#
	fld1 

atanY$8:	; if v != float8$1# goto 12
	fcompp 
	fstsw ax
	sahf 
	jne atanY$12

atanY$9:	; push float float8$0.7853981633974483096#
	fld qword [float8$0.7853981633974483096#]

atanY$10:	; return_value = float8$0.7853981633974483096#

atanY$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanY$12:	; push float v
	fld qword [rbp + 24]

atanY$13:	; push float float8$minus1#
	fld qword [float8$minus1#]

atanY$14:	; if v != float8$minus1# goto 18
	fcompp 
	fstsw ax
	sahf 
	jne atanY$18

atanY$15:	; push float float8$minus0.7853981633974483096#
	fld qword [float8$minus0.7853981633974483096#]

atanY$16:	; return_value = float8$minus0.7853981633974483096#

atanY$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanY$18:	; call header integral zero 0 stack zero 0

atanY$19:	; push float v
	fld qword [rbp + 24]

atanY$20:	; parameter v, offset 56
	fstp qword [rbp + 56]

atanY$21:	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], atanY$22
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

atanY$22:	; post call

atanY$23:	; £temporary605 = return_value

atanY$24:	; push float float8$0.5#
	fld qword [float8$0.5#]

atanY$25:	; if £temporary605 >= float8$0.5# goto 66
	fcompp 
	fstsw ax
	sahf 
	jbe atanY$66

atanY$26:	; sign = int4$1#
	mov dword [rbp + 32], 1

atanY$27:	; denominator = int4$1#
	mov dword [rbp + 36], 1

atanY$28:	; count = int4$0#
	mov dword [rbp + 40], 0

atanY$29:	; push float v
	fld qword [rbp + 24]

atanY$30:	; pop float product
	fstp qword [rbp + 44]

atanY$31:	; push float float8$0#
	fldz 

atanY$32:	; pop float sum
	fstp qword [rbp + 60]

atanY$33:	; £temporary607 = int_to_float sign (Signed_Int -> Double)
	fild word [rbp + 32]

atanY$34:	; push float product
	fld qword [rbp + 44]

atanY$35:	; £temporary608 = £temporary607 * product
	fmul 

atanY$36:	; £temporary609 = int_to_float denominator (Signed_Int -> Double)
	fild word [rbp + 36]

atanY$37:	; £temporary610 = £temporary608 / £temporary609
	fdiv 

atanY$38:	; pop float term
	fstp qword [rbp + 52]

atanY$39:	; push float sum
	fld qword [rbp + 60]

atanY$40:	; push float term
	fld qword [rbp + 52]

atanY$41:	; £temporary611 = sum + term
	fadd 

atanY$42:	; pop float sum
	fstp qword [rbp + 60]

atanY$43:	; £temporary612 = -sign
	mov eax, [rbp + 32]
	neg eax

atanY$44:	; sign = £temporary612
	mov [rbp + 32], eax

atanY$45:	; push float product
	fld qword [rbp + 44]

atanY$46:	; push float v
	fld qword [rbp + 24]

atanY$47:	; push float v
	fld qword [rbp + 24]

atanY$48:	; £temporary613 = v * v
	fmul 

atanY$49:	; £temporary614 = product * £temporary613
	fmul 

atanY$50:	; pop float product
	fstp qword [rbp + 44]

atanY$51:	; denominator = denominator + int4$2#
	add dword [rbp + 36], 2

atanY$52:	; check track map float stack

atanY$53:	; £temporary616 = count + int4$1#
	mov eax, [rbp + 40]
	inc eax

atanY$54:	; if £temporary616 >= int4$1000# goto 63
	cmp eax, 1000
	jge atanY$63

atanY$55:	; call header integral zero 0 stack zero 0

atanY$56:	; push float term
	fld qword [rbp + 52]

atanY$57:	; parameter term, offset 92
	fstp qword [rbp + 92]

atanY$58:	; call function noellipse-noellipse fabs
	mov qword [rbp + 68], atanY$59
	mov [rbp + 76], rbp
	add rbp, 68
	jmp fabs

atanY$59:	; post call

atanY$60:	; £temporary618 = return_value

atanY$61:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

atanY$62:	; if £temporary618 >= float8$0.000000001# goto 33
	fcompp 
	fstsw ax
	sahf 
	jbe atanY$33

atanY$63:	; push float sum
	fld qword [rbp + 60]

atanY$64:	; return_value = sum

atanY$65:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanY$66:	; call header integral zero 0 stack zero 0

atanY$67:	; push float v
	fld qword [rbp + 24]

atanY$68:	; parameter v, offset 56
	fstp qword [rbp + 56]

atanY$69:	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], atanY$70
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

atanY$70:	; post call

atanY$71:	; £temporary621 = return_value

atanY$72:	; push float float8$1#
	fld1 

atanY$73:	; if £temporary621 >= float8$1# goto 135
	fcompp 
	fstsw ax
	sahf 
	jbe atanY$135

atanY$74:	; call header integral zero 0 stack zero 0

atanY$75:	; parameter string_atan2050A#, offset 56
	mov qword [rbp + 56], string_atan2050A#

atanY$76:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 32], atanY$77
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

atanY$77:	; post call

atanY$78:	; push float float8$1#
	fld1 

atanY$79:	; top float x_nplus1
	fst qword [rbp + 32]

atanY$80:	; top float x
	fst qword [rbp + 40]

atanY$81:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 48]

atanY$82:	; push float x
	fld qword [rbp + 40]

atanY$83:	; parameter x, offset 72
	fstp qword [rbp + 80]

atanY$84:	; call function noellipse-noellipse tan
	mov qword [rbp + 56], atanY$85
	mov [rbp + 64], rbp
	add rbp, 56
	jmp tan

atanY$85:	; post call
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

atanY$86:	; £temporary624 = return_value

atanY$87:	; push float v
	fld qword [rbp + 24]

atanY$88:	; £temporary625 = £temporary624 - v
	fsub 

atanY$89:	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

atanY$90:	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

atanY$91:	; push float float8$2#
	fld qword [float8$2#]

atanY$92:	; push float x
	fld qword [rbp + 40]

atanY$93:	; £temporary626 = float8$2# * x
	fmul 

atanY$94:	; parameter £temporary626, offset 72
	fstp qword [rbp + 104]

atanY$95:	; call function noellipse-noellipse cos
	mov qword [rbp + 80], atanY$96
	mov [rbp + 88], rbp
	add rbp, 80
	jmp cos

atanY$96:	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

atanY$97:	; £temporary627 = return_value

atanY$98:	; push float float8$1#
	fld1 

atanY$99:	; £temporary628 = £temporary627 + float8$1#
	fadd 

atanY$100:	; parameter £temporary628, offset 72
	fstp qword [rbp + 88]

atanY$101:	; call function noellipse-noellipse square
	mov qword [rbp + 64], atanY$102
	mov [rbp + 72], rbp
	add rbp, 64
	jmp square

atanY$102:	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

atanY$103:	; £temporary629 = return_value

atanY$104:	; £temporary630 = £temporary625 * £temporary629
	fmul 

atanY$105:	; push float float8$2#
	fld qword [float8$2#]

atanY$106:	; £temporary631 = £temporary630 / float8$2#
	fdiv 

atanY$107:	; £temporary632 = x - £temporary631
	fsub 

atanY$108:	; pop float x_nplus1
	fstp qword [rbp + 32]

atanY$109:	; call header integral zero 0 stack zero 0

atanY$110:	; parameter string_atan20x2025f20x_nplus12025f0A#, offset 72
	mov qword [rbp + 72], string_atan20x2025f20x_nplus12025f0A#

atanY$111:	; push float x
	fld qword [rbp + 40]

atanY$112:	; parameter x, offset 80
	fstp qword [rbp + 80]

atanY$113:	; push float x_nplus1
	fld qword [rbp + 32]

atanY$114:	; parameter x_nplus1, offset 88
	fstp qword [rbp + 88]

atanY$115:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 48], atanY$116
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

atanY$116:	; post call

atanY$117:	; check track map float stack

atanY$118:	; call header integral zero 0 stack zero 0

atanY$119:	; push float x_nplus1
	fld qword [rbp + 32]

atanY$120:	; push float x
	fld qword [rbp + 40]

atanY$121:	; £temporary634 = x_nplus1 - x
	fsub 

atanY$122:	; parameter £temporary634, offset 72
	fstp qword [rbp + 72]

atanY$123:	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], atanY$124
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

atanY$124:	; post call

atanY$125:	; £temporary635 = return_value

atanY$126:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

atanY$127:	; if £temporary635 >= float8$0.000000001# goto 80
	fcompp 
	fstsw ax
	sahf 
	jbe atanY$80

atanY$128:	; call header integral zero 0 stack zero 0

atanY$129:	; parameter string_atan2070A#, offset 72
	mov qword [rbp + 72], string_atan2070A#

atanY$130:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 48], atanY$131
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

atanY$131:	; post call

atanY$132:	; push float x_nplus1
	fld qword [rbp + 32]

atanY$133:	; return_value = x_nplus1

atanY$134:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanY$135:	; errno = int4$6#
	mov dword [errno], 6

atanY$136:	; push float float8$0#
	fldz 

atanY$137:	; return_value = float8$0#

atanY$138:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanY$139:	; function end atanY

atanX:	; push float v
	fld qword [rbp + 24]

atanX$1:	; push float float8$0#
	fldz 

atanX$2:	; if v != float8$0# goto 6
	fcompp 
	fstsw ax
	sahf 
	jne atanX$6

atanX$3:	; push float float8$0#
	fldz 

atanX$4:	; return_value = float8$0#

atanX$5:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanX$6:	; call header integral zero 0 stack zero 0

atanX$7:	; push float v
	fld qword [rbp + 24]

atanX$8:	; parameter v, offset 56
	fstp qword [rbp + 56]

atanX$9:	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], atanX$10
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

atanX$10:	; post call

atanX$11:	; £temporary648 = return_value

atanX$12:	; push float float8$1#
	fld1 

atanX$13:	; if £temporary648 > float8$1# goto 59
	fcompp 
	fstsw ax
	sahf 
	jb atanX$59

atanX$14:	; push float float8$1#
	fld1 

atanX$15:	; top float x_nplus1
	fst qword [rbp + 32]

atanX$16:	; top float x
	fst qword [rbp + 40]

atanX$17:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 48]

atanX$18:	; push float x
	fld qword [rbp + 40]

atanX$19:	; parameter x, offset 72
	fstp qword [rbp + 80]

atanX$20:	; call function noellipse-noellipse tan
	mov qword [rbp + 56], atanX$21
	mov [rbp + 64], rbp
	add rbp, 56
	jmp tan

atanX$21:	; post call
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

atanX$22:	; £temporary650 = return_value

atanX$23:	; push float v
	fld qword [rbp + 24]

atanX$24:	; £temporary651 = £temporary650 - v
	fsub 

atanX$25:	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

atanX$26:	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

atanX$27:	; push float float8$2#
	fld qword [float8$2#]

atanX$28:	; push float x
	fld qword [rbp + 40]

atanX$29:	; £temporary652 = float8$2# * x
	fmul 

atanX$30:	; parameter £temporary652, offset 72
	fstp qword [rbp + 104]

atanX$31:	; call function noellipse-noellipse cos
	mov qword [rbp + 80], atanX$32
	mov [rbp + 88], rbp
	add rbp, 80
	jmp cos

atanX$32:	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

atanX$33:	; £temporary653 = return_value

atanX$34:	; push float float8$1#
	fld1 

atanX$35:	; £temporary654 = £temporary653 + float8$1#
	fadd 

atanX$36:	; parameter £temporary654, offset 72
	fstp qword [rbp + 88]

atanX$37:	; call function noellipse-noellipse square
	mov qword [rbp + 64], atanX$38
	mov [rbp + 72], rbp
	add rbp, 64
	jmp square

atanX$38:	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

atanX$39:	; £temporary655 = return_value

atanX$40:	; £temporary656 = £temporary651 * £temporary655
	fmul 

atanX$41:	; push float float8$2#
	fld qword [float8$2#]

atanX$42:	; £temporary657 = £temporary656 / float8$2#
	fdiv 

atanX$43:	; £temporary658 = x - £temporary657
	fsub 

atanX$44:	; pop float x_nplus1
	fstp qword [rbp + 32]

atanX$45:	; check track map float stack

atanX$46:	; call header integral zero 0 stack zero 0

atanX$47:	; push float x_nplus1
	fld qword [rbp + 32]

atanX$48:	; push float x
	fld qword [rbp + 40]

atanX$49:	; £temporary659 = x_nplus1 - x
	fsub 

atanX$50:	; parameter £temporary659, offset 72
	fstp qword [rbp + 72]

atanX$51:	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], atanX$52
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

atanX$52:	; post call

atanX$53:	; £temporary660 = return_value

atanX$54:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

atanX$55:	; if £temporary660 >= float8$0.000000001# goto 16
	fcompp 
	fstsw ax
	sahf 
	jbe atanX$16

atanX$56:	; push float x_nplus1
	fld qword [rbp + 32]

atanX$57:	; return_value = x_nplus1

atanX$58:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanX$59:	; errno = int4$6#
	mov dword [errno], 6

atanX$60:	; push float float8$0#
	fldz 

atanX$61:	; return_value = float8$0#

atanX$62:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanX$63:	; function end atanX

atan2:	; push float x
	fld qword [rbp + 32]

atan2$1:	; push float float8$0#
	fldz 

atan2$2:	; if x <= float8$0# goto 13
	fcompp 
	fstsw ax
	sahf 
	jae atan2$13

atan2$3:	; call header integral zero 0 stack zero 0

atan2$4:	; push float y
	fld qword [rbp + 24]

atan2$5:	; push float x
	fld qword [rbp + 32]

atan2$6:	; £temporary668 = y / x
	fdiv 

atan2$7:	; parameter £temporary668, offset 64
	fstp qword [rbp + 64]

atan2$8:	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2$9
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

atan2$9:	; post call

atan2$10:	; £temporary669 = return_value

atan2$11:	; return_value = £temporary669

atan2$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2$13:	; push float x
	fld qword [rbp + 32]

atan2$14:	; push float float8$0#
	fldz 

atan2$15:	; if x >= float8$0# goto 43
	fcompp 
	fstsw ax
	sahf 
	jbe atan2$43

atan2$16:	; push float y
	fld qword [rbp + 24]

atan2$17:	; push float float8$0#
	fldz 

atan2$18:	; if y < float8$0# goto 31
	fcompp 
	fstsw ax
	sahf 
	ja atan2$31

atan2$19:	; call header integral zero 0 stack zero 0

atan2$20:	; push float y
	fld qword [rbp + 24]

atan2$21:	; push float x
	fld qword [rbp + 32]

atan2$22:	; £temporary672 = y / x
	fdiv 

atan2$23:	; parameter £temporary672, offset 64
	fstp qword [rbp + 64]

atan2$24:	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2$25
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

atan2$25:	; post call

atan2$26:	; £temporary673 = return_value

atan2$27:	; push float float8$3.1415926535897932384#
	fld qword [float8$3.1415926535897932384#]

atan2$28:	; £temporary674 = £temporary673 + float8$3.1415926535897932384#
	fadd 

atan2$29:	; return_value = £temporary674

atan2$30:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2$31:	; call header integral zero 0 stack zero 0

atan2$32:	; push float y
	fld qword [rbp + 24]

atan2$33:	; push float x
	fld qword [rbp + 32]

atan2$34:	; £temporary675 = y / x
	fdiv 

atan2$35:	; parameter £temporary675, offset 64
	fstp qword [rbp + 64]

atan2$36:	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2$37
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

atan2$37:	; post call

atan2$38:	; £temporary676 = return_value

atan2$39:	; push float float8$3.1415926535897932384#
	fld qword [float8$3.1415926535897932384#]

atan2$40:	; £temporary677 = £temporary676 - float8$3.1415926535897932384#
	fsub 

atan2$41:	; return_value = £temporary677

atan2$42:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2$43:	; push float y
	fld qword [rbp + 24]

atan2$44:	; push float float8$0#
	fldz 

atan2$45:	; if y <= float8$0# goto 49
	fcompp 
	fstsw ax
	sahf 
	jae atan2$49

atan2$46:	; push float float8$1.5707963267948966192#
	fld qword [float8$1.5707963267948966192#]

atan2$47:	; return_value = float8$1.5707963267948966192#

atan2$48:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2$49:	; push float y
	fld qword [rbp + 24]

atan2$50:	; push float float8$0#
	fldz 

atan2$51:	; if y >= float8$0# goto 55
	fcompp 
	fstsw ax
	sahf 
	jbe atan2$55

atan2$52:	; push float float8$minus1.5707963267948966192#
	fld qword [float8$minus1.5707963267948966192#]

atan2$53:	; return_value = float8$minus1.5707963267948966192#

atan2$54:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2$55:	; errno = int4$6#
	mov dword [errno], 6

atan2$56:	; push float float8$0#
	fldz 

atan2$57:	; return_value = float8$0#

atan2$58:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2$59:	; function end atan2

atan2x:	; push float denum
	fld qword [rbp + 32]

atan2x$1:	; push float float8$0#
	fldz 

atan2x$2:	; if denum <= float8$0# goto 19
	fcompp 
	fstsw ax
	sahf 
	jae atan2x$19

atan2x$3:	; call header integral zero 0 stack zero 0

atan2x$4:	; push float num
	fld qword [rbp + 24]

atan2x$5:	; push float denum
	fld qword [rbp + 32]

atan2x$6:	; £temporary684 = num / denum
	fdiv 

atan2x$7:	; parameter £temporary684, offset 64
	fstp qword [rbp + 64]

atan2x$8:	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2x$9
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

atan2x$9:	; post call

atan2x$10:	; £temporary685 = return_value

atan2x$11:	; pop float y
	fstp qword [rbp + 40]

atan2x$12:	; call header integral zero 0 stack zero 0

atan2x$13:	; parameter string_20A#, offset 72
	mov qword [rbp + 72], string_20A#

atan2x$14:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 48], atan2x$15
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

atan2x$15:	; post call

atan2x$16:	; push float y
	fld qword [rbp + 40]

atan2x$17:	; return_value = y

atan2x$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2x$19:	; push float num
	fld qword [rbp + 24]

atan2x$20:	; push float float8$0#
	fldz 

atan2x$21:	; if num < float8$0# goto 41
	fcompp 
	fstsw ax
	sahf 
	ja atan2x$41

atan2x$22:	; push float denum
	fld qword [rbp + 32]

atan2x$23:	; push float float8$0#
	fldz 

atan2x$24:	; if denum >= float8$0# goto 41
	fcompp 
	fstsw ax
	sahf 
	jbe atan2x$41

atan2x$25:	; call header integral zero 0 stack zero 0

atan2x$26:	; parameter string_20A#, offset 64
	mov qword [rbp + 64], string_20A#

atan2x$27:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], atan2x$28
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

atan2x$28:	; post call

atan2x$29:	; push float float8$3.1415926535897932384#
	fld qword [float8$3.1415926535897932384#]

atan2x$30:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

atan2x$31:	; push float num
	fld qword [rbp + 24]

atan2x$32:	; push float denum
	fld qword [rbp + 32]

atan2x$33:	; £temporary691 = num / denum
	fdiv 

atan2x$34:	; parameter £temporary691, offset 64
	fstp qword [rbp + 72]

atan2x$35:	; call function noellipse-noellipse atan
	mov qword [rbp + 48], atan2x$36
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

atan2x$36:	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

atan2x$37:	; £temporary692 = return_value

atan2x$38:	; £temporary693 = float8$3.1415926535897932384# + £temporary692
	fadd 

atan2x$39:	; return_value = £temporary693

atan2x$40:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2x$41:	; push float num
	fld qword [rbp + 24]

atan2x$42:	; push float float8$0#
	fldz 

atan2x$43:	; if num >= float8$0# goto 63
	fcompp 
	fstsw ax
	sahf 
	jbe atan2x$63

atan2x$44:	; push float denum
	fld qword [rbp + 32]

atan2x$45:	; push float float8$0#
	fldz 

atan2x$46:	; if denum >= float8$0# goto 63
	fcompp 
	fstsw ax
	sahf 
	jbe atan2x$63

atan2x$47:	; call header integral zero 0 stack zero 0

atan2x$48:	; parameter string_30A#, offset 64
	mov qword [rbp + 64], string_30A#

atan2x$49:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], atan2x$50
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

atan2x$50:	; post call

atan2x$51:	; push float float8$minus3.1415926535897932384#
	fld qword [float8$minus3.1415926535897932384#]

atan2x$52:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

atan2x$53:	; push float num
	fld qword [rbp + 24]

atan2x$54:	; push float denum
	fld qword [rbp + 32]

atan2x$55:	; £temporary698 = num / denum
	fdiv 

atan2x$56:	; parameter £temporary698, offset 64
	fstp qword [rbp + 72]

atan2x$57:	; call function noellipse-noellipse atan
	mov qword [rbp + 48], atan2x$58
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

atan2x$58:	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

atan2x$59:	; £temporary699 = return_value

atan2x$60:	; £temporary700 = float8$minus3.1415926535897932384# + £temporary699
	fadd 

atan2x$61:	; return_value = £temporary700

atan2x$62:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2x$63:	; push float num
	fld qword [rbp + 24]

atan2x$64:	; push float float8$0#
	fldz 

atan2x$65:	; if num <= float8$0# goto 76
	fcompp 
	fstsw ax
	sahf 
	jae atan2x$76

atan2x$66:	; push float denum
	fld qword [rbp + 32]

atan2x$67:	; push float float8$0#
	fldz 

atan2x$68:	; if denum != float8$0# goto 76
	fcompp 
	fstsw ax
	sahf 
	jne atan2x$76

atan2x$69:	; call header integral zero 0 stack zero 0

atan2x$70:	; parameter string_40A#, offset 64
	mov qword [rbp + 64], string_40A#

atan2x$71:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], atan2x$72
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

atan2x$72:	; post call

atan2x$73:	; push float float8$1.5707963267948966192#
	fld qword [float8$1.5707963267948966192#]

atan2x$74:	; return_value = float8$1.5707963267948966192#

atan2x$75:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2x$76:	; push float num
	fld qword [rbp + 24]

atan2x$77:	; push float float8$0#
	fldz 

atan2x$78:	; if num >= float8$0# goto 89
	fcompp 
	fstsw ax
	sahf 
	jbe atan2x$89

atan2x$79:	; push float denum
	fld qword [rbp + 32]

atan2x$80:	; push float float8$0#
	fldz 

atan2x$81:	; if denum != float8$0# goto 89
	fcompp 
	fstsw ax
	sahf 
	jne atan2x$89

atan2x$82:	; call header integral zero 0 stack zero 0

atan2x$83:	; parameter string_50A#, offset 64
	mov qword [rbp + 64], string_50A#

atan2x$84:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], atan2x$85
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

atan2x$85:	; post call

atan2x$86:	; push float float8$minus1.5707963267948966192#
	fld qword [float8$minus1.5707963267948966192#]

atan2x$87:	; return_value = float8$minus1.5707963267948966192#

atan2x$88:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2x$89:	; call header integral zero 0 stack zero 0

atan2x$90:	; parameter string_60A#, offset 64
	mov qword [rbp + 64], string_60A#

atan2x$91:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], atan2x$92
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

atan2x$92:	; post call

atan2x$93:	; errno = int4$6#
	mov dword [errno], 6

atan2x$94:	; push float float8$0#
	fldz 

atan2x$95:	; return_value = float8$0#

atan2x$96:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan2x$97:	; function end atan2x

floor:	; push float x
	fld qword [rbp + 24]

floor$1:	; push float float8$0#
	fldz 

floor$2:	; if x >= float8$0# goto 13
	fcompp 
	fstsw ax
	sahf 
	jbe floor$13

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
	fld qword [rbp + 24]

floor$5:	; £temporary714 = -x
	fchs 

floor$6:	; parameter £temporary714, offset 56
	fstp qword [rbp + 56]

floor$7:	; call function noellipse-noellipse ceil
	mov qword [rbp + 32], floor$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp ceil

floor$8:	; post call

floor$9:	; £temporary715 = return_value

floor$10:	; £temporary716 = -£temporary715
	fchs 

floor$11:	; return_value = £temporary716

floor$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

floor$13:	; push float x
	fld qword [rbp + 24]

floor$14:	; £temporary717 = float_to_int x (Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

floor$15:	; £temporary718 = int_to_float £temporary717 (Signed_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

floor$16:	; return_value = £temporary718

floor$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

floor$18:	; function end floor

ceil:	; push float x
	fld qword [rbp + 24]

ceil$1:	; push float float8$0#
	fldz 

ceil$2:	; if x >= float8$0# goto 13
	fcompp 
	fstsw ax
	sahf 
	jbe ceil$13

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
	fld qword [rbp + 24]

ceil$5:	; £temporary721 = -x
	fchs 

ceil$6:	; parameter £temporary721, offset 56
	fstp qword [rbp + 56]

ceil$7:	; call function noellipse-noellipse floor
	mov qword [rbp + 32], ceil$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp floor

ceil$8:	; post call

ceil$9:	; £temporary722 = return_value

ceil$10:	; £temporary723 = -£temporary722
	fchs 

ceil$11:	; return_value = £temporary723

ceil$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

ceil$13:	; push float x
	fld qword [rbp + 24]

ceil$14:	; push float float8$0.999999999999#
	fld qword [float8$0.999999999999#]

ceil$15:	; £temporary724 = x + float8$0.999999999999#
	fadd 

ceil$16:	; £temporary725 = float_to_int £temporary724 (Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

ceil$17:	; £temporary726 = int_to_float £temporary725 (Signed_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

ceil$18:	; return_value = £temporary726

ceil$19:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

ceil$20:	; function end ceil

round:	; push float x
	fld qword [rbp + 24]

round$1:	; push float float8$0#
	fldz 

round$2:	; if x >= float8$0# goto 8
	fcompp 
	fstsw ax
	sahf 
	jbe round$8

round$3:	; push float x
	fld qword [rbp + 24]

round$4:	; push float float8$0.5#
	fld qword [float8$0.5#]

round$5:	; £temporary729 = x - float8$0.5#
	fsub 

round$6:	; decrease stack

round$7:	; goto 11
	jmp round$11

round$8:	; push float x
	fld qword [rbp + 24]

round$9:	; push float float8$0.5#
	fld qword [float8$0.5#]

round$10:	; £temporary730 = x + float8$0.5#
	fadd 

round$11:	; £temporary732 = float_to_int £temporary731 (Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

round$12:	; £temporary733 = int_to_float £temporary732 (Signed_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

round$13:	; return_value = £temporary733

round$14:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

round$15:	; function end round

fabs:	; push float x
	fld qword [rbp + 24]

fabs$1:	; push float float8$0#
	fldz 

fabs$2:	; if x >= float8$0# goto 7
	fcompp 
	fstsw ax
	sahf 
	jbe fabs$7

fabs$3:	; push float x
	fld qword [rbp + 24]

fabs$4:	; £temporary735 = -x
	fchs 

fabs$5:	; decrease stack

fabs$6:	; goto 8
	jmp fabs$8

fabs$7:	; push float x
	fld qword [rbp + 24]

fabs$8:	; return_value = £temporary736

fabs$9:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

fabs$10:	; function end fabs

modf:	; call header integral zero 0 stack zero 0

modf$1:	; push float x
	fld qword [rbp + 24]

modf$2:	; parameter x, offset 64
	fstp qword [rbp + 64]

modf$3:	; call function noellipse-noellipse fabs
	mov qword [rbp + 40], modf$4
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

modf$4:	; post call

modf$5:	; £temporary737 = return_value

modf$6:	; £temporary738 = float_to_int £temporary737 (Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

modf$7:	; £temporary739 = int_to_float £temporary738 (Signed_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

modf$8:	; pop float integral
	fstp qword [rbp + 40]

modf$9:	; if p == int8$0# goto 34
	cmp qword [rbp + 32], 0
	je modf$34

modf$10:	; £field741 -> p = *p
	mov rsi, [rbp + 32]

modf$11:	; push float x
	fld qword [rbp + 24]

modf$12:	; push float float8$0#
	fldz 

modf$13:	; if x <= float8$0# goto 24
	fcompp 
	fstsw ax
	sahf 
	jae modf$24

modf$14:	; call header integral no zero 1 stack zero 0
	mov [rbp + 48], rsi

modf$15:	; push float x
	fld qword [rbp + 24]

modf$16:	; parameter x, offset 72
	fstp qword [rbp + 80]

modf$17:	; call function noellipse-noellipse fabs
	mov qword [rbp + 56], modf$18
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fabs

modf$18:	; post call
	mov rsi, [rbp + 48]

modf$19:	; £temporary743 = return_value

modf$20:	; push float integral
	fld qword [rbp + 40]

modf$21:	; £temporary744 = £temporary743 - integral
	fsub 

modf$22:	; decrease stack

modf$23:	; goto 33
	jmp modf$33

modf$24:	; call header integral no zero 1 stack zero 0
	mov [rbp + 48], rsi

modf$25:	; push float x
	fld qword [rbp + 24]

modf$26:	; parameter x, offset 72
	fstp qword [rbp + 80]

modf$27:	; call function noellipse-noellipse fabs
	mov qword [rbp + 56], modf$28
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fabs

modf$28:	; post call
	mov rsi, [rbp + 48]

modf$29:	; £temporary745 = return_value

modf$30:	; push float integral
	fld qword [rbp + 40]

modf$31:	; £temporary746 = £temporary745 - integral
	fsub 

modf$32:	; £temporary747 = -£temporary746
	fchs 

modf$33:	; pop float £field741 -> p
	fstp qword [rsi]

modf$34:	; push float x
	fld qword [rbp + 24]

modf$35:	; push float float8$0#
	fldz 

modf$36:	; if x <= float8$0# goto 40
	fcompp 
	fstsw ax
	sahf 
	jae modf$40

modf$37:	; push float integral
	fld qword [rbp + 40]

modf$38:	; decrease stack

modf$39:	; goto 42
	jmp modf$42

modf$40:	; push float integral
	fld qword [rbp + 40]

modf$41:	; £temporary750 = -integral
	fchs 

modf$42:	; return_value = £temporary751

modf$43:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

modf$44:	; function end modf

fmod:	; push float y
	fld qword [rbp + 32]

fmod$1:	; push float float8$0#
	fldz 

fmod$2:	; if y == float8$0# goto 28
	fcompp 
	fstsw ax
	sahf 
	je fmod$28

fmod$3:	; push float x
	fld qword [rbp + 24]

fmod$4:	; push float y
	fld qword [rbp + 32]

fmod$5:	; £temporary756 = x / y
	fdiv 

fmod$6:	; pop float quotient
	fstp qword [rbp + 40]

fmod$7:	; call header integral zero 0 stack zero 0

fmod$8:	; push float quotient
	fld qword [rbp + 40]

fmod$9:	; push float quotient
	fld qword [rbp + 40]

fmod$10:	; £temporary757 = float_to_int quotient (Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

fmod$11:	; £temporary758 = int_to_float £temporary757 (Signed_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

fmod$12:	; £temporary759 = quotient - £temporary758
	fsub 

fmod$13:	; parameter £temporary759, offset 72
	fstp qword [rbp + 72]

fmod$14:	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], fmod$15
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

fmod$15:	; post call

fmod$16:	; £temporary760 = return_value

fmod$17:	; pop float remainder
	fstp qword [rbp + 48]

fmod$18:	; push float x
	fld qword [rbp + 24]

fmod$19:	; push float float8$0#
	fldz 

fmod$20:	; if x <= float8$0# goto 24
	fcompp 
	fstsw ax
	sahf 
	jae fmod$24

fmod$21:	; push float remainder
	fld qword [rbp + 48]

fmod$22:	; decrease stack

fmod$23:	; goto 26
	jmp fmod$26

fmod$24:	; push float remainder
	fld qword [rbp + 48]

fmod$25:	; £temporary762 = -remainder
	fchs 

fmod$26:	; return_value = £temporary763

fmod$27:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

fmod$28:	; errno = int4$6#
	mov dword [errno], 6

fmod$29:	; push float float8$0#
	fldz 

fmod$30:	; return_value = float8$0#

fmod$31:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

fmod$32:	; function end fmod
section .data

$IntegralStorage#:
	times 8 db 0

float8$0.000000001#:
	; initializer Double
	dq 0.000000001

float8$0.3678794411714423216036827922#:
	; initializer Double
	dq 0.3678794411714423216036827922

float8$2.7182818284590452353#:
	; initializer Double
	dq 2.7182818284590452353

float8$0.7357588823428846432073655843#:
	; initializer Double
	dq 0.7357588823428846432073655843

float8$minus1.0#:
	; initializer Double
	dq -1.0

float8$0.4342944820#:
	; initializer Double
	dq 0.4342944820

float8$10#:
	; initializer Double
	dq 10.0

float8$2#:
	; initializer Double
	dq 2.0

float8$minus1#:
	; initializer Double
	dq -1.0

float8$3#:
	; initializer Double
	dq 3.0

float8$1.5707963267948966192#:
	; initializer Double
	dq 1.5707963267948966192

float8$minus1.5707963267948966192#:
	; initializer Double
	dq -1.5707963267948966192

string_x_n2025f2C20x_nplus12025f0A#:
	; initializer String
	db "x_n %f, x_nplus1 %f", 10, 0

float8$0.7853981633974483096#:
	; initializer Double
	dq 0.7853981633974483096

float8$minus0.7853981633974483096#:
	; initializer Double
	dq -0.7853981633974483096

string_atan2050A#:
	; initializer String
	db "atan 5", 10, 0

string_atan20x2025f20x_nplus12025f0A#:
	; initializer String
	db "atan x %f x_nplus1 %f", 10, 0

string_atan2070A#:
	; initializer String
	db "atan 7", 10, 0

float8$0.5#:
	; initializer Double
	dq 0.5

float8$3.1415926535897932384#:
	; initializer Double
	dq 3.1415926535897932384

string_20A#:
	; initializer String
	db "2", 10, 0

string_30A#:
	; initializer String
	db "3", 10, 0

string_40A#:
	; initializer String
	db "4", 10, 0

string_50A#:
	; initializer String
	db "5", 10, 0

string_60A#:
	; initializer String
	db "6", 10, 0

float8$minus3.1415926535897932384#:
	; initializer Double
	dq -3.1415926535897932384

float8$0.999999999999#:
	; initializer Double
	dq 0.999999999999
