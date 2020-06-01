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

exp$10:	; £temporary432 = power / faculty
	fdiv 

exp$11:	; pop float term
	fstp qword [rbp + 56]

exp$12:	; push float sum
	fld qword [rbp + 64]

exp$13:	; push float term
	fld qword [rbp + 56]

exp$14:	; £temporary433 = sum + term
	fadd 

exp$15:	; pop float sum
	fstp qword [rbp + 64]

exp$16:	; push float power
	fld qword [rbp + 48]

exp$17:	; push float x
	fld qword [rbp + 24]

exp$18:	; £temporary434 = power * x
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

exp$25:	; £temporary436 = faculty * £temporary435
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

exp$33:	; £temporary437 = return_value

exp$34:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

exp$35:	; if £temporary437 >= float8$0.000000001# goto 8
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

log$9:	; £temporary442 = x_plus_1 * float8$2.7182818284590452353#
	fmul 

log$10:	; pop float x_plus_1
	fstp qword [rbp + 24]

log$11:	; --expo
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

log$18:	; £temporary445 = x_plus_1 / float8$2.7182818284590452353#
	fdiv 

log$19:	; pop float x_plus_1
	fstp qword [rbp + 24]

log$20:	; ++expo
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

log$28:	; £temporary447 = x_plus_1 - float8$1#
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

log$42:	; £temporary449 = power / £temporary448
	fdiv 

log$43:	; £temporary450 = plusMinusOne * £temporary449
	fmul 

log$44:	; pop float term
	fstp qword [rbp + 60]

log$45:	; push float sum
	fld qword [rbp + 68]

log$46:	; push float term
	fld qword [rbp + 60]

log$47:	; £temporary451 = sum + term
	fadd 

log$48:	; pop float sum
	fstp qword [rbp + 68]

log$49:	; push float power
	fld qword [rbp + 76]

log$50:	; push float x
	fld qword [rbp + 52]

log$51:	; £temporary452 = power * x
	fmul 

log$52:	; pop float power
	fstp qword [rbp + 76]

log$53:	; push float plusMinusOne
	fld qword [rbp + 44]

log$54:	; push float float8$minus1.0#
	fld qword [float8$minus1.0#]

log$55:	; £temporary453 = plusMinusOne * float8$minus1.0#
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

log$63:	; £temporary454 = return_value

log$64:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

log$65:	; if £temporary454 > float8$0.000000001# goto 34
	fcompp 
	fstsw ax
	sahf 
	jb log$34

log$66:	; push float sum
	fld qword [rbp + 68]

log$67:	; £temporary456 = int_to_float expo (Signed_Int -> Double)
	fild word [rbp + 32]

log$68:	; £temporary457 = sum + £temporary456
	fadd 

log$69:	; return_value = £temporary457

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

log10$6:	; £temporary459 = return_value

log10$7:	; £temporary460 = float8$0.4342944820# * £temporary459
	fmul 

log10$8:	; return_value = £temporary460

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

log10_int$17:	; £temporary466 = x / float8$10#
	fdiv 

log10_int$18:	; pop float x
	fstp qword [rbp + 24]

log10_int$19:	; ++count
	inc dword [rbp + 32]

log10_int$20:	; goto 12
	jmp log10_int$12

log10_int$21:	; £temporary468 = count - int4$1#
	mov ebx, [rbp + 32]
	dec ebx

log10_int$22:	; return_value = £temporary468

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

log10_int$30:	; £temporary470 = x * float8$10#
	fmul 

log10_int$31:	; pop float x
	fstp qword [rbp + 24]

log10_int$32:	; ++count
	inc dword [rbp + 32]

log10_int$33:	; goto 25
	jmp log10_int$25

log10_int$34:	; £temporary472 = -count
	mov ebx, [rbp + 32]
	neg ebx

log10_int$35:	; return_value = £temporary472

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

pow_int$2:	; £temporary474 = -y
	mov eax, [rbp + 32]
	neg eax

pow_int$3:	; y = £temporary474
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
	mov eax, [rbp + 48]
	cmp eax, [rbp + 32]
	jge pow_int$15

pow_int$9:	; push float product
	fld qword [rbp + 40]

pow_int$10:	; push float x
	fld qword [rbp + 24]

pow_int$11:	; £temporary477 = product * x
	fmul 

pow_int$12:	; pop float product
	fstp qword [rbp + 40]

pow_int$13:	; ++index
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

pow_int$18:	; £temporary478 = float8$1# / product
	fdiv 

pow_int$19:	; decrease stack

pow_int$20:	; goto 22
	jmp pow_int$22

pow_int$21:	; push float product
	fld qword [rbp + 40]

pow_int$22:	; return_value = £temporary480

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

pow$10:	; £temporary482 = return_value

pow$11:	; £temporary483 = y * £temporary482
	fmul 

pow$12:	; parameter £temporary483, offset 64
	fstp qword [rbp + 64]

pow$13:	; call function noellipse-noellipse exp
	mov qword [rbp + 40], pow$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

pow$14:	; post call

pow$15:	; £temporary484 = return_value

pow$16:	; return_value = £temporary484

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

ldexp$4:	; £temporary487 = int_to_float n (Signed_Int -> Double)
	fild word [rbp + 32]

ldexp$5:	; parameter £temporary487, offset 68
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

ldexp$8:	; £temporary488 = return_value

ldexp$9:	; £temporary489 = x * £temporary488
	fmul 

ldexp$10:	; return_value = £temporary489

ldexp$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

ldexp$12:	; function end ldexp

frexp:	; if p == int8$0# goto 58
	cmp qword [rbp + 32], 0
	je frexp$58

frexp$1:	; push float x
	fld qword [rbp + 24]

frexp$2:	; push float float8$0#
	fldz 

frexp$3:	; if x != float8$0# goto 9
	fcompp 
	fstsw ax
	sahf 
	jne frexp$9

frexp$4:	; £field51 -> p = *p
	mov rsi, [rbp + 32]

frexp$5:	; £field51 -> p = int4$0#
	mov dword [rsi], 0

frexp$6:	; push float float8$0#
	fldz 

frexp$7:	; return_value = float8$0#

frexp$8:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

frexp$9:	; £field52 -> p = *p
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

frexp$16:	; £temporary494 = return_value

frexp$17:	; parameter £temporary494, offset 64
	fstp qword [rbp + 72]

frexp$18:	; call function noellipse-noellipse log
	mov qword [rbp + 48], frexp$19
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

frexp$19:	; post call
	mov rsi, [rbp + 40]

frexp$20:	; £temporary495 = return_value

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

frexp$26:	; £temporary496 = return_value

frexp$27:	; £temporary497 = £temporary495 / £temporary496
	fdiv 

frexp$28:	; £temporary498 = float_to_int £temporary497 (Double -> Signed_Int)
	fistp word [$IntegralStorage#]
	mov eax, [$IntegralStorage#]

frexp$29:	; £temporary499 = £temporary498 + int4$1#
	inc eax

frexp$30:	; £field52 -> p = £temporary499
	mov [rsi], eax

frexp$31:	; call header integral zero 0 stack zero 0

frexp$32:	; push float x
	fld qword [rbp + 24]

frexp$33:	; parameter x, offset 64
	fstp qword [rbp + 64]

frexp$34:	; call function noellipse-noellipse fabs
	mov qword [rbp + 40], frexp$35
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

frexp$35:	; post call

frexp$36:	; £temporary500 = return_value

frexp$37:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

frexp$38:	; push float float8$2#
	fld qword [float8$2#]

frexp$39:	; parameter float8$2#, offset 64
	fstp qword [rbp + 72]

frexp$40:	; £field53 -> p = *p
	mov rsi, [rbp + 32]

frexp$41:	; £temporary501 = int_to_float £field53 -> p (Signed_Int -> Double)
	fild word [rsi]

frexp$42:	; parameter £temporary501, offset 72
	fstp qword [rbp + 80]

frexp$43:	; call function noellipse-noellipse pow
	mov qword [rbp + 48], frexp$44
	mov [rbp + 56], rbp
	add rbp, 48
	jmp pow

frexp$44:	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

frexp$45:	; £temporary502 = return_value

frexp$46:	; £temporary503 = £temporary500 / £temporary502
	fdiv 

frexp$47:	; pop float quotient
	fstp qword [rbp + 40]

frexp$48:	; push float x
	fld qword [rbp + 24]

frexp$49:	; push float float8$0#
	fldz 

frexp$50:	; if x >= float8$0# goto 55
	fcompp 
	fstsw ax
	sahf 
	jbe frexp$55

frexp$51:	; push float quotient
	fld qword [rbp + 40]

frexp$52:	; £temporary505 = -quotient
	fchs 

frexp$53:	; decrease stack

frexp$54:	; goto 56
	jmp frexp$56

frexp$55:	; push float quotient
	fld qword [rbp + 40]

frexp$56:	; return_value = £temporary506

frexp$57:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

frexp$58:	; push float x
	fld qword [rbp + 24]

frexp$59:	; push float float8$0#
	fldz 

frexp$60:	; if x != float8$0# goto 64
	fcompp 
	fstsw ax
	sahf 
	jne frexp$64

frexp$61:	; push float float8$0#
	fldz 

frexp$62:	; return_value = float8$0#

frexp$63:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

frexp$64:	; call header integral zero 0 stack zero 0

frexp$65:	; call header integral zero 0 stack zero 0

frexp$66:	; push float x
	fld qword [rbp + 24]

frexp$67:	; parameter x, offset 64
	fstp qword [rbp + 64]

frexp$68:	; call function noellipse-noellipse fabs
	mov qword [rbp + 40], frexp$69
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

frexp$69:	; post call

frexp$70:	; £temporary508 = return_value

frexp$71:	; parameter £temporary508, offset 64
	fstp qword [rbp + 64]

frexp$72:	; call function noellipse-noellipse log
	mov qword [rbp + 40], frexp$73
	mov [rbp + 48], rbp
	add rbp, 40
	jmp log

frexp$73:	; post call

frexp$74:	; £temporary509 = return_value

frexp$75:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

frexp$76:	; push float float8$2#
	fld qword [float8$2#]

frexp$77:	; parameter float8$2#, offset 64
	fstp qword [rbp + 72]

frexp$78:	; call function noellipse-noellipse log
	mov qword [rbp + 48], frexp$79
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

frexp$79:	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

frexp$80:	; £temporary510 = return_value

frexp$81:	; £temporary511 = £temporary509 / £temporary510
	fdiv 

frexp$82:	; £temporary512 = float_to_int £temporary511 (Double -> Signed_Int)
	fistp word [$IntegralStorage#]
	mov eax, [$IntegralStorage#]

frexp$83:	; £temporary513 = £temporary512 + int4$1#
	inc eax

frexp$84:	; n = £temporary513
	mov [rbp + 40], eax

frexp$85:	; call header integral zero 0 stack zero 0

frexp$86:	; push float x
	fld qword [rbp + 24]

frexp$87:	; parameter x, offset 68
	fstp qword [rbp + 68]

frexp$88:	; call function noellipse-noellipse fabs
	mov qword [rbp + 44], frexp$89
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fabs

frexp$89:	; post call

frexp$90:	; £temporary514 = return_value

frexp$91:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 44]

frexp$92:	; push float float8$2#
	fld qword [float8$2#]

frexp$93:	; parameter float8$2#, offset 68
	fstp qword [rbp + 76]

frexp$94:	; £temporary515 = int_to_float n (Signed_Int -> Double)
	fild word [rbp + 40]

frexp$95:	; parameter £temporary515, offset 76
	fstp qword [rbp + 84]

frexp$96:	; call function noellipse-noellipse pow
	mov qword [rbp + 52], frexp$97
	mov [rbp + 60], rbp
	add rbp, 52
	jmp pow

frexp$97:	; post call
	fstp qword [rbp + 52]
	fld qword [rbp + 44]
	fld qword [rbp + 52]

frexp$98:	; £temporary516 = return_value

frexp$99:	; £temporary517 = £temporary514 / £temporary516
	fdiv 

frexp$100:	; pop float a
	fstp qword [rbp + 44]

frexp$101:	; push float x
	fld qword [rbp + 24]

frexp$102:	; push float float8$0#
	fldz 

frexp$103:	; if x >= float8$0# goto 108
	fcompp 
	fstsw ax
	sahf 
	jbe frexp$108

frexp$104:	; push float a
	fld qword [rbp + 44]

frexp$105:	; £temporary519 = -a
	fchs 

frexp$106:	; decrease stack

frexp$107:	; goto 109
	jmp frexp$109

frexp$108:	; push float a
	fld qword [rbp + 44]

frexp$109:	; return_value = £temporary520

frexp$110:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

frexp$111:	; function end frexp

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

sin$13:	; £temporary533 = power / faculty
	fdiv 

sin$14:	; £temporary534 = plusMinusOne * £temporary533
	fmul 

sin$15:	; pop float term
	fstp qword [rbp + 64]

sin$16:	; push float sum
	fld qword [rbp + 72]

sin$17:	; push float term
	fld qword [rbp + 64]

sin$18:	; £temporary535 = sum + term
	fadd 

sin$19:	; pop float sum
	fstp qword [rbp + 72]

sin$20:	; push float plusMinusOne
	fld qword [rbp + 40]

sin$21:	; push float float8$minus1#
	fld qword [float8$minus1#]

sin$22:	; £temporary536 = plusMinusOne * float8$minus1#
	fmul 

sin$23:	; pop float plusMinusOne
	fstp qword [rbp + 40]

sin$24:	; push float power
	fld qword [rbp + 56]

sin$25:	; push float x
	fld qword [rbp + 24]

sin$26:	; push float x
	fld qword [rbp + 24]

sin$27:	; £temporary537 = x * x
	fmul 

sin$28:	; £temporary538 = power * £temporary537
	fmul 

sin$29:	; pop float power
	fstp qword [rbp + 56]

sin$30:	; push float faculty
	fld qword [rbp + 48]

sin$31:	; push float n
	fld qword [rbp + 32]

sin$32:	; push float float8$2#
	fld qword [float8$2#]

sin$33:	; £temporary539 = n + float8$2#
	fadd 

sin$34:	; push float n
	fld qword [rbp + 32]

sin$35:	; push float float8$3#
	fld qword [float8$3#]

sin$36:	; £temporary540 = n + float8$3#
	fadd 

sin$37:	; £temporary541 = £temporary539 * £temporary540
	fmul 

sin$38:	; £temporary542 = faculty * £temporary541
	fmul 

sin$39:	; pop float faculty
	fstp qword [rbp + 48]

sin$40:	; push float n
	fld qword [rbp + 32]

sin$41:	; push float float8$2#
	fld qword [float8$2#]

sin$42:	; £temporary543 = n + float8$2#
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

sin$50:	; £temporary544 = return_value

sin$51:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

sin$52:	; if £temporary544 >= float8$0.000000001# goto 10
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

cos$13:	; £temporary547 = power / faculty
	fdiv 

cos$14:	; £temporary548 = plusMinusOne * £temporary547
	fmul 

cos$15:	; pop float term
	fstp qword [rbp + 64]

cos$16:	; push float sum
	fld qword [rbp + 72]

cos$17:	; push float term
	fld qword [rbp + 64]

cos$18:	; £temporary549 = sum + term
	fadd 

cos$19:	; pop float sum
	fstp qword [rbp + 72]

cos$20:	; push float plusMinusOne
	fld qword [rbp + 40]

cos$21:	; push float float8$minus1#
	fld qword [float8$minus1#]

cos$22:	; £temporary550 = plusMinusOne * float8$minus1#
	fmul 

cos$23:	; pop float plusMinusOne
	fstp qword [rbp + 40]

cos$24:	; push float power
	fld qword [rbp + 56]

cos$25:	; push float x
	fld qword [rbp + 24]

cos$26:	; push float x
	fld qword [rbp + 24]

cos$27:	; £temporary551 = x * x
	fmul 

cos$28:	; £temporary552 = power * £temporary551
	fmul 

cos$29:	; pop float power
	fstp qword [rbp + 56]

cos$30:	; push float faculty
	fld qword [rbp + 48]

cos$31:	; push float n
	fld qword [rbp + 32]

cos$32:	; push float float8$1#
	fld1 

cos$33:	; £temporary553 = n + float8$1#
	fadd 

cos$34:	; push float n
	fld qword [rbp + 32]

cos$35:	; push float float8$2#
	fld qword [float8$2#]

cos$36:	; £temporary554 = n + float8$2#
	fadd 

cos$37:	; £temporary555 = £temporary553 * £temporary554
	fmul 

cos$38:	; £temporary556 = faculty * £temporary555
	fmul 

cos$39:	; pop float faculty
	fstp qword [rbp + 48]

cos$40:	; push float n
	fld qword [rbp + 32]

cos$41:	; push float float8$2#
	fld qword [float8$2#]

cos$42:	; £temporary557 = n + float8$2#
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

cos$50:	; £temporary558 = return_value

cos$51:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

cos$52:	; if £temporary558 >= float8$0.000000001# goto 10
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

tan$5:	; £temporary561 = return_value

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

tan$14:	; £temporary563 = return_value

tan$15:	; push float cos_value
	fld qword [rbp + 32]

tan$16:	; £temporary564 = £temporary563 / cos_value
	fdiv 

tan$17:	; return_value = £temporary564

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

sinh$5:	; £temporary567 = return_value

sinh$6:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 32]

sinh$7:	; push float x
	fld qword [rbp + 24]

sinh$8:	; £temporary568 = -x
	fchs 

sinh$9:	; parameter £temporary568, offset 56
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

sinh$12:	; £temporary569 = return_value

sinh$13:	; £temporary570 = £temporary567 - £temporary569
	fsub 

sinh$14:	; push float float8$2#
	fld qword [float8$2#]

sinh$15:	; £temporary571 = £temporary570 / float8$2#
	fdiv 

sinh$16:	; return_value = £temporary571

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

cosh$5:	; £temporary574 = return_value

cosh$6:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 32]

cosh$7:	; push float x
	fld qword [rbp + 24]

cosh$8:	; £temporary575 = -x
	fchs 

cosh$9:	; parameter £temporary575, offset 56
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

cosh$12:	; £temporary576 = return_value

cosh$13:	; £temporary577 = £temporary574 + £temporary576
	fadd 

cosh$14:	; push float float8$2#
	fld qword [float8$2#]

cosh$15:	; £temporary578 = £temporary577 / float8$2#
	fdiv 

cosh$16:	; return_value = £temporary578

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

tanh$5:	; £temporary581 = return_value

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

tanh$14:	; £temporary583 = return_value

tanh$15:	; top float sh
	fst qword [rbp + 40]

tanh$16:	; push float coh
	fld qword [rbp + 32]

tanh$17:	; £temporary584 = sh / coh
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

sqrt$2:	; if v < float8$0# goto 32
	fcompp 
	fstsw ax
	sahf 
	ja sqrt$32

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

sqrt$10:	; £temporary588 = v / x
	fdiv 

sqrt$11:	; £temporary589 = x + £temporary588
	fadd 

sqrt$12:	; push float float8$2#
	fld qword [float8$2#]

sqrt$13:	; £temporary590 = £temporary589 / float8$2#
	fdiv 

sqrt$14:	; pop float x_nplus1
	fstp qword [rbp + 32]

sqrt$15:	; check track map float stack

sqrt$16:	; ++count
	inc dword [rbp + 48]

sqrt$17:	; £temporary591 = count
	mov eax, [rbp + 48]

sqrt$18:	; if £temporary591 >= int4$1000# goto 29
	cmp eax, 1000
	jge sqrt$29

sqrt$19:	; call header integral zero 0 stack zero 0

sqrt$20:	; push float x_nplus1
	fld qword [rbp + 32]

sqrt$21:	; push float x
	fld qword [rbp + 40]

sqrt$22:	; £temporary593 = x_nplus1 - x
	fsub 

sqrt$23:	; parameter £temporary593, offset 76
	fstp qword [rbp + 76]

sqrt$24:	; call function noellipse-noellipse fabs
	mov qword [rbp + 52], sqrt$25
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fabs

sqrt$25:	; post call

sqrt$26:	; £temporary594 = return_value

sqrt$27:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

sqrt$28:	; if £temporary594 >= float8$0.000000001# goto 6
	fcompp 
	fstsw ax
	sahf 
	jbe sqrt$6

sqrt$29:	; push float x_nplus1
	fld qword [rbp + 32]

sqrt$30:	; return_value = x_nplus1

sqrt$31:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

sqrt$32:	; errno = int4$6#
	mov dword [errno], 6

sqrt$33:	; push float float8$0#
	fldz 

sqrt$34:	; return_value = float8$0#

sqrt$35:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

sqrt$36:	; function end sqrt

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

asin$5:	; £temporary598 = return_value

asin$6:	; push float float8$1#
	fld1 

asin$7:	; if £temporary598 > float8$1# goto 29
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

asin$14:	; £temporary600 = float8$1# + x
	fadd 

asin$15:	; push float float8$1#
	fld1 

asin$16:	; push float x
	fld qword [rbp + 24]

asin$17:	; £temporary601 = float8$1# - x
	fsub 

asin$18:	; £temporary602 = £temporary600 * £temporary601
	fmul 

asin$19:	; parameter £temporary602, offset 88
	fstp qword [rbp + 88]

asin$20:	; call function noellipse-noellipse sqrt
	mov qword [rbp + 64], asin$21
	mov [rbp + 72], rbp
	add rbp, 64
	jmp sqrt

asin$21:	; post call

asin$22:	; £temporary603 = return_value

asin$23:	; parameter £temporary603, offset 64
	fstp qword [rbp + 64]

asin$24:	; call function noellipse-noellipse atan2
	mov qword [rbp + 32], asin$25
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan2

asin$25:	; post call

asin$26:	; £temporary604 = return_value

asin$27:	; return_value = £temporary604

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

acos$5:	; £temporary609 = return_value

acos$6:	; push float float8$1#
	fld1 

acos$7:	; if £temporary609 > float8$1# goto 29
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

acos$12:	; £temporary611 = float8$1# + x
	fadd 

acos$13:	; push float float8$1#
	fld1 

acos$14:	; push float x
	fld qword [rbp + 24]

acos$15:	; £temporary612 = float8$1# - x
	fsub 

acos$16:	; £temporary613 = £temporary611 * £temporary612
	fmul 

acos$17:	; parameter £temporary613, offset 56
	fstp qword [rbp + 56]

acos$18:	; call function noellipse-noellipse sqrt
	mov qword [rbp + 32], acos$19
	mov [rbp + 40], rbp
	add rbp, 32
	jmp sqrt

acos$19:	; post call

acos$20:	; £temporary614 = return_value

acos$21:	; parameter £temporary614, offset 56
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

acos$26:	; £temporary615 = return_value

acos$27:	; return_value = £temporary615

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

asin2$17:	; £temporary622 = return_value

asin2$18:	; push float float8$1#
	fld1 

asin2$19:	; if £temporary622 >= float8$1# goto 59
	fcompp 
	fstsw ax
	sahf 
	jbe asin2$59

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

asin2$30:	; £temporary624 = return_value

asin2$31:	; £temporary625 = x - £temporary624
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

asin2$38:	; £temporary626 = return_value

asin2$39:	; £temporary627 = v / £temporary626
	fdiv 

asin2$40:	; £temporary628 = £temporary625 + £temporary627
	fadd 

asin2$41:	; pop float x_nplus1
	fstp qword [rbp + 32]

asin2$42:	; check track map float stack

asin2$43:	; ++count
	inc dword [rbp + 48]

asin2$44:	; £temporary629 = count
	mov eax, [rbp + 48]

asin2$45:	; if £temporary629 >= int4$1000# goto 56
	cmp eax, 1000
	jge asin2$56

asin2$46:	; call header integral zero 0 stack zero 0

asin2$47:	; push float x_nplus1
	fld qword [rbp + 32]

asin2$48:	; push float x
	fld qword [rbp + 40]

asin2$49:	; £temporary631 = x_nplus1 - x
	fsub 

asin2$50:	; parameter £temporary631, offset 76
	fstp qword [rbp + 76]

asin2$51:	; call function noellipse-noellipse fabs
	mov qword [rbp + 52], asin2$52
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fabs

asin2$52:	; post call

asin2$53:	; £temporary632 = return_value

asin2$54:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

asin2$55:	; if £temporary632 >= float8$0.000000001# goto 23
	fcompp 
	fstsw ax
	sahf 
	jbe asin2$23

asin2$56:	; push float x_nplus1
	fld qword [rbp + 32]

asin2$57:	; return_value = x_nplus1

asin2$58:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

asin2$59:	; errno = int4$6#
	mov dword [errno], 6

asin2$60:	; push float float8$0#
	fldz 

asin2$61:	; return_value = float8$0#

asin2$62:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

asin2$63:	; function end asin2

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

acos2$11:	; £temporary640 = return_value

acos2$12:	; push float float8$1#
	fld1 

acos2$13:	; if £temporary640 > float8$1# goto 56
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

acos2$22:	; £temporary642 = return_value

acos2$23:	; push float v
	fld qword [rbp + 24]

acos2$24:	; £temporary643 = £temporary642 - v
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

acos2$30:	; £temporary644 = return_value

acos2$31:	; £temporary645 = £temporary643 / £temporary644
	fdiv 

acos2$32:	; £temporary646 = x_n + £temporary645
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

acos2$46:	; £temporary648 = x_nplus1 - x_n
	fsub 

acos2$47:	; parameter £temporary648, offset 72
	fstp qword [rbp + 72]

acos2$48:	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], acos2$49
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

acos2$49:	; post call

acos2$50:	; £temporary649 = return_value

acos2$51:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

acos2$52:	; if £temporary649 >= float8$0.000000001# goto 16
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

square$2:	; £temporary658 = x * x
	fmul 

square$3:	; return_value = £temporary658

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

atan$29:	; £temporary662 = sign * product
	fmul 

atan$30:	; push float denominator
	fld qword [rbp + 40]

atan$31:	; £temporary663 = £temporary662 / denominator
	fdiv 

atan$32:	; pop float term
	fstp qword [rbp + 56]

atan$33:	; push float sum
	fld qword [rbp + 64]

atan$34:	; push float term
	fld qword [rbp + 56]

atan$35:	; £temporary664 = sum + term
	fadd 

atan$36:	; pop float sum
	fstp qword [rbp + 64]

atan$37:	; push float sign
	fld qword [rbp + 32]

atan$38:	; £temporary665 = -sign
	fchs 

atan$39:	; pop float sign
	fstp qword [rbp + 32]

atan$40:	; push float product
	fld qword [rbp + 48]

atan$41:	; push float x
	fld qword [rbp + 24]

atan$42:	; push float x
	fld qword [rbp + 24]

atan$43:	; £temporary666 = x * x
	fmul 

atan$44:	; £temporary667 = product * £temporary666
	fmul 

atan$45:	; pop float product
	fstp qword [rbp + 48]

atan$46:	; push float denominator
	fld qword [rbp + 40]

atan$47:	; push float float8$2#
	fld qword [float8$2#]

atan$48:	; £temporary668 = denominator + float8$2#
	fadd 

atan$49:	; pop float denominator
	fstp qword [rbp + 40]

atan$50:	; check track map float stack

atan$51:	; ++count
	inc dword [rbp + 72]

atan$52:	; £temporary669 = count
	mov eax, [rbp + 72]

atan$53:	; if £temporary669 >= int4$1000# goto 62
	cmp eax, 1000
	jge atan$62

atan$54:	; call header integral zero 0 stack zero 0

atan$55:	; push float term
	fld qword [rbp + 56]

atan$56:	; parameter term, offset 100
	fstp qword [rbp + 100]

atan$57:	; call function noellipse-noellipse fabs
	mov qword [rbp + 76], atan$58
	mov [rbp + 84], rbp
	add rbp, 76
	jmp fabs

atan$58:	; post call

atan$59:	; £temporary671 = return_value

atan$60:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

atan$61:	; if £temporary671 >= float8$0.000000001# goto 27
	fcompp 
	fstsw ax
	sahf 
	jbe atan$27

atan$62:	; push float sum
	fld qword [rbp + 64]

atan$63:	; return_value = sum

atan$64:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atan$65:	; function end atan

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

atanY$23:	; £temporary678 = return_value

atanY$24:	; push float float8$0.5#
	fld qword [float8$0.5#]

atanY$25:	; if £temporary678 >= float8$0.5# goto 68
	fcompp 
	fstsw ax
	sahf 
	jbe atanY$68

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

atanY$33:	; £temporary680 = int_to_float sign (Signed_Int -> Double)
	fild word [rbp + 32]

atanY$34:	; push float product
	fld qword [rbp + 44]

atanY$35:	; £temporary681 = £temporary680 * product
	fmul 

atanY$36:	; £temporary682 = int_to_float denominator (Signed_Int -> Double)
	fild word [rbp + 36]

atanY$37:	; £temporary683 = £temporary681 / £temporary682
	fdiv 

atanY$38:	; pop float term
	fstp qword [rbp + 52]

atanY$39:	; push float sum
	fld qword [rbp + 60]

atanY$40:	; push float term
	fld qword [rbp + 52]

atanY$41:	; £temporary684 = sum + term
	fadd 

atanY$42:	; pop float sum
	fstp qword [rbp + 60]

atanY$43:	; £temporary685 = -sign
	mov eax, [rbp + 32]
	neg eax

atanY$44:	; sign = £temporary685
	mov [rbp + 32], eax

atanY$45:	; push float product
	fld qword [rbp + 44]

atanY$46:	; push float v
	fld qword [rbp + 24]

atanY$47:	; push float v
	fld qword [rbp + 24]

atanY$48:	; £temporary686 = v * v
	fmul 

atanY$49:	; £temporary687 = product * £temporary686
	fmul 

atanY$50:	; pop float product
	fstp qword [rbp + 44]

atanY$51:	; £temporary688 = denominator + int4$2#
	mov eax, [rbp + 36]
	add eax, 2

atanY$52:	; denominator = £temporary688
	mov [rbp + 36], eax

atanY$53:	; check track map float stack

atanY$54:	; ++count
	inc dword [rbp + 40]

atanY$55:	; £temporary689 = count
	mov eax, [rbp + 40]

atanY$56:	; if £temporary689 >= int4$1000# goto 65
	cmp eax, 1000
	jge atanY$65

atanY$57:	; call header integral zero 0 stack zero 0

atanY$58:	; push float term
	fld qword [rbp + 52]

atanY$59:	; parameter term, offset 92
	fstp qword [rbp + 92]

atanY$60:	; call function noellipse-noellipse fabs
	mov qword [rbp + 68], atanY$61
	mov [rbp + 76], rbp
	add rbp, 68
	jmp fabs

atanY$61:	; post call

atanY$62:	; £temporary691 = return_value

atanY$63:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

atanY$64:	; if £temporary691 >= float8$0.000000001# goto 33
	fcompp 
	fstsw ax
	sahf 
	jbe atanY$33

atanY$65:	; push float sum
	fld qword [rbp + 60]

atanY$66:	; return_value = sum

atanY$67:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanY$68:	; call header integral zero 0 stack zero 0

atanY$69:	; push float v
	fld qword [rbp + 24]

atanY$70:	; parameter v, offset 56
	fstp qword [rbp + 56]

atanY$71:	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], atanY$72
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

atanY$72:	; post call

atanY$73:	; £temporary694 = return_value

atanY$74:	; push float float8$1#
	fld1 

atanY$75:	; if £temporary694 >= float8$1# goto 137
	fcompp 
	fstsw ax
	sahf 
	jbe atanY$137

atanY$76:	; call header integral zero 0 stack zero 0

atanY$77:	; parameter string_atan2050A#, offset 56
	mov qword [rbp + 56], string_atan2050A#

atanY$78:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 32], atanY$79
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

atanY$79:	; post call

atanY$80:	; push float float8$1#
	fld1 

atanY$81:	; top float x_nplus1
	fst qword [rbp + 32]

atanY$82:	; top float x
	fst qword [rbp + 40]

atanY$83:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 48]

atanY$84:	; push float x
	fld qword [rbp + 40]

atanY$85:	; parameter x, offset 72
	fstp qword [rbp + 80]

atanY$86:	; call function noellipse-noellipse tan
	mov qword [rbp + 56], atanY$87
	mov [rbp + 64], rbp
	add rbp, 56
	jmp tan

atanY$87:	; post call
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

atanY$88:	; £temporary697 = return_value

atanY$89:	; push float v
	fld qword [rbp + 24]

atanY$90:	; £temporary698 = £temporary697 - v
	fsub 

atanY$91:	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

atanY$92:	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

atanY$93:	; push float float8$2#
	fld qword [float8$2#]

atanY$94:	; push float x
	fld qword [rbp + 40]

atanY$95:	; £temporary699 = float8$2# * x
	fmul 

atanY$96:	; parameter £temporary699, offset 72
	fstp qword [rbp + 104]

atanY$97:	; call function noellipse-noellipse cos
	mov qword [rbp + 80], atanY$98
	mov [rbp + 88], rbp
	add rbp, 80
	jmp cos

atanY$98:	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

atanY$99:	; £temporary700 = return_value

atanY$100:	; push float float8$1#
	fld1 

atanY$101:	; £temporary701 = £temporary700 + float8$1#
	fadd 

atanY$102:	; parameter £temporary701, offset 72
	fstp qword [rbp + 88]

atanY$103:	; call function noellipse-noellipse square
	mov qword [rbp + 64], atanY$104
	mov [rbp + 72], rbp
	add rbp, 64
	jmp square

atanY$104:	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

atanY$105:	; £temporary702 = return_value

atanY$106:	; £temporary703 = £temporary698 * £temporary702
	fmul 

atanY$107:	; push float float8$2#
	fld qword [float8$2#]

atanY$108:	; £temporary704 = £temporary703 / float8$2#
	fdiv 

atanY$109:	; £temporary705 = x - £temporary704
	fsub 

atanY$110:	; pop float x_nplus1
	fstp qword [rbp + 32]

atanY$111:	; call header integral zero 0 stack zero 0

atanY$112:	; parameter string_atan20x2025f20x_nplus12025f0A#, offset 72
	mov qword [rbp + 72], string_atan20x2025f20x_nplus12025f0A#

atanY$113:	; push float x
	fld qword [rbp + 40]

atanY$114:	; parameter x, offset 80
	fstp qword [rbp + 80]

atanY$115:	; push float x_nplus1
	fld qword [rbp + 32]

atanY$116:	; parameter x_nplus1, offset 88
	fstp qword [rbp + 88]

atanY$117:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 48], atanY$118
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

atanY$118:	; post call

atanY$119:	; check track map float stack

atanY$120:	; call header integral zero 0 stack zero 0

atanY$121:	; push float x_nplus1
	fld qword [rbp + 32]

atanY$122:	; push float x
	fld qword [rbp + 40]

atanY$123:	; £temporary707 = x_nplus1 - x
	fsub 

atanY$124:	; parameter £temporary707, offset 72
	fstp qword [rbp + 72]

atanY$125:	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], atanY$126
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

atanY$126:	; post call

atanY$127:	; £temporary708 = return_value

atanY$128:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

atanY$129:	; if £temporary708 >= float8$0.000000001# goto 82
	fcompp 
	fstsw ax
	sahf 
	jbe atanY$82

atanY$130:	; call header integral zero 0 stack zero 0

atanY$131:	; parameter string_atan2070A#, offset 72
	mov qword [rbp + 72], string_atan2070A#

atanY$132:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 48], atanY$133
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

atanY$133:	; post call

atanY$134:	; push float x_nplus1
	fld qword [rbp + 32]

atanY$135:	; return_value = x_nplus1

atanY$136:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanY$137:	; errno = int4$6#
	mov dword [errno], 6

atanY$138:	; push float float8$0#
	fldz 

atanY$139:	; return_value = float8$0#

atanY$140:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atanY$141:	; function end atanY

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

atanX$11:	; £temporary724 = return_value

atanX$12:	; push float float8$1#
	fld1 

atanX$13:	; if £temporary724 > float8$1# goto 59
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

atanX$22:	; £temporary726 = return_value

atanX$23:	; push float v
	fld qword [rbp + 24]

atanX$24:	; £temporary727 = £temporary726 - v
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

atanX$29:	; £temporary728 = float8$2# * x
	fmul 

atanX$30:	; parameter £temporary728, offset 72
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

atanX$33:	; £temporary729 = return_value

atanX$34:	; push float float8$1#
	fld1 

atanX$35:	; £temporary730 = £temporary729 + float8$1#
	fadd 

atanX$36:	; parameter £temporary730, offset 72
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

atanX$39:	; £temporary731 = return_value

atanX$40:	; £temporary732 = £temporary727 * £temporary731
	fmul 

atanX$41:	; push float float8$2#
	fld qword [float8$2#]

atanX$42:	; £temporary733 = £temporary732 / float8$2#
	fdiv 

atanX$43:	; £temporary734 = x - £temporary733
	fsub 

atanX$44:	; pop float x_nplus1
	fstp qword [rbp + 32]

atanX$45:	; check track map float stack

atanX$46:	; call header integral zero 0 stack zero 0

atanX$47:	; push float x_nplus1
	fld qword [rbp + 32]

atanX$48:	; push float x
	fld qword [rbp + 40]

atanX$49:	; £temporary735 = x_nplus1 - x
	fsub 

atanX$50:	; parameter £temporary735, offset 72
	fstp qword [rbp + 72]

atanX$51:	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], atanX$52
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

atanX$52:	; post call

atanX$53:	; £temporary736 = return_value

atanX$54:	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

atanX$55:	; if £temporary736 >= float8$0.000000001# goto 16
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

atan2$6:	; £temporary744 = y / x
	fdiv 

atan2$7:	; parameter £temporary744, offset 64
	fstp qword [rbp + 64]

atan2$8:	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2$9
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

atan2$9:	; post call

atan2$10:	; £temporary745 = return_value

atan2$11:	; return_value = £temporary745

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

atan2$22:	; £temporary748 = y / x
	fdiv 

atan2$23:	; parameter £temporary748, offset 64
	fstp qword [rbp + 64]

atan2$24:	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2$25
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

atan2$25:	; post call

atan2$26:	; £temporary749 = return_value

atan2$27:	; push float float8$3.1415926535897932384#
	fld qword [float8$3.1415926535897932384#]

atan2$28:	; £temporary750 = £temporary749 + float8$3.1415926535897932384#
	fadd 

atan2$29:	; return_value = £temporary750

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

atan2$34:	; £temporary751 = y / x
	fdiv 

atan2$35:	; parameter £temporary751, offset 64
	fstp qword [rbp + 64]

atan2$36:	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2$37
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

atan2$37:	; post call

atan2$38:	; £temporary752 = return_value

atan2$39:	; push float float8$3.1415926535897932384#
	fld qword [float8$3.1415926535897932384#]

atan2$40:	; £temporary753 = £temporary752 - float8$3.1415926535897932384#
	fsub 

atan2$41:	; return_value = £temporary753

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

atan2x$6:	; £temporary760 = num / denum
	fdiv 

atan2x$7:	; parameter £temporary760, offset 64
	fstp qword [rbp + 64]

atan2x$8:	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2x$9
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

atan2x$9:	; post call

atan2x$10:	; £temporary761 = return_value

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

atan2x$33:	; £temporary767 = num / denum
	fdiv 

atan2x$34:	; parameter £temporary767, offset 64
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

atan2x$37:	; £temporary768 = return_value

atan2x$38:	; £temporary769 = float8$3.1415926535897932384# + £temporary768
	fadd 

atan2x$39:	; return_value = £temporary769

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

atan2x$55:	; £temporary774 = num / denum
	fdiv 

atan2x$56:	; parameter £temporary774, offset 64
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

atan2x$59:	; £temporary775 = return_value

atan2x$60:	; £temporary776 = float8$minus3.1415926535897932384# + £temporary775
	fadd 

atan2x$61:	; return_value = £temporary776

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

floor$5:	; £temporary796 = -x
	fchs 

floor$6:	; parameter £temporary796, offset 56
	fstp qword [rbp + 56]

floor$7:	; call function noellipse-noellipse ceil
	mov qword [rbp + 32], floor$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp ceil

floor$8:	; post call

floor$9:	; £temporary797 = return_value

floor$10:	; £temporary798 = -£temporary797
	fchs 

floor$11:	; return_value = £temporary798

floor$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

floor$13:	; push float x
	fld qword [rbp + 24]

floor$14:	; £temporary799 = float_to_int x (Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

floor$15:	; £temporary800 = int_to_float £temporary799 (Signed_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

floor$16:	; return_value = £temporary800

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

ceil$5:	; £temporary803 = -x
	fchs 

ceil$6:	; parameter £temporary803, offset 56
	fstp qword [rbp + 56]

ceil$7:	; call function noellipse-noellipse floor
	mov qword [rbp + 32], ceil$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp floor

ceil$8:	; post call

ceil$9:	; £temporary804 = return_value

ceil$10:	; £temporary805 = -£temporary804
	fchs 

ceil$11:	; return_value = £temporary805

ceil$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

ceil$13:	; push float x
	fld qword [rbp + 24]

ceil$14:	; push float float8$0.999999999999#
	fld qword [float8$0.999999999999#]

ceil$15:	; £temporary806 = x + float8$0.999999999999#
	fadd 

ceil$16:	; £temporary807 = float_to_int £temporary806 (Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

ceil$17:	; £temporary808 = int_to_float £temporary807 (Signed_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

ceil$18:	; return_value = £temporary808

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

round$5:	; £temporary811 = x - float8$0.5#
	fsub 

round$6:	; decrease stack

round$7:	; goto 11
	jmp round$11

round$8:	; push float x
	fld qword [rbp + 24]

round$9:	; push float float8$0.5#
	fld qword [float8$0.5#]

round$10:	; £temporary812 = x + float8$0.5#
	fadd 

round$11:	; £temporary814 = float_to_int £temporary813 (Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

round$12:	; £temporary815 = int_to_float £temporary814 (Signed_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

round$13:	; return_value = £temporary815

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

fabs$4:	; £temporary817 = -x
	fchs 

fabs$5:	; decrease stack

fabs$6:	; goto 8
	jmp fabs$8

fabs$7:	; push float x
	fld qword [rbp + 24]

fabs$8:	; return_value = £temporary818

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

modf$5:	; £temporary819 = return_value

modf$6:	; £temporary820 = float_to_int £temporary819 (Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

modf$7:	; £temporary821 = int_to_float £temporary820 (Signed_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

modf$8:	; pop float integral
	fstp qword [rbp + 40]

modf$9:	; if p == int8$0# goto 34
	cmp qword [rbp + 32], 0
	je modf$34

modf$10:	; £field54 -> p = *p
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

modf$19:	; £temporary824 = return_value

modf$20:	; push float integral
	fld qword [rbp + 40]

modf$21:	; £temporary825 = £temporary824 - integral
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

modf$29:	; £temporary826 = return_value

modf$30:	; push float integral
	fld qword [rbp + 40]

modf$31:	; £temporary827 = £temporary826 - integral
	fsub 

modf$32:	; £temporary828 = -£temporary827
	fchs 

modf$33:	; pop float £field54 -> p
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

modf$41:	; £temporary831 = -integral
	fchs 

modf$42:	; return_value = £temporary832

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

fmod$5:	; £temporary837 = x / y
	fdiv 

fmod$6:	; pop float quotient
	fstp qword [rbp + 40]

fmod$7:	; call header integral zero 0 stack zero 0

fmod$8:	; push float quotient
	fld qword [rbp + 40]

fmod$9:	; push float quotient
	fld qword [rbp + 40]

fmod$10:	; £temporary838 = float_to_int quotient (Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

fmod$11:	; £temporary839 = int_to_float £temporary838 (Signed_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

fmod$12:	; £temporary840 = quotient - £temporary839
	fsub 

fmod$13:	; parameter £temporary840, offset 72
	fstp qword [rbp + 72]

fmod$14:	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], fmod$15
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

fmod$15:	; post call

fmod$16:	; £temporary841 = return_value

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

fmod$25:	; £temporary843 = -remainder
	fchs 

fmod$26:	; return_value = £temporary844

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
	; init Double
	dq 0.000000001

float8$0.3678794411714423216036827922#:
	; init Double
	dq 0.3678794411714423216036827922

float8$2.7182818284590452353#:
	; init Double
	dq 2.7182818284590452353

float8$0.7357588823428846432073655843#:
	; init Double
	dq 0.7357588823428846432073655843

float8$minus1.0#:
	; init Double
	dq -1.0

float8$0.4342944820#:
	; init Double
	dq 0.4342944820

float8$10#:
	; init Double
	dq 10.0

float8$2#:
	; init Double
	dq 2.0

float8$minus1#:
	; init Double
	dq -1.0

float8$3#:
	; init Double
	dq 3.0

float8$1.5707963267948966192#:
	; init Double
	dq 1.5707963267948966192

float8$minus1.5707963267948966192#:
	; init Double
	dq -1.5707963267948966192

string_x_n2025f2C20x_nplus12025f0A#:
	; init String
	db "x_n %f, x_nplus1 %f", 10, 0

float8$0.7853981633974483096#:
	; init Double
	dq 0.7853981633974483096

float8$minus0.7853981633974483096#:
	; init Double
	dq -0.7853981633974483096

string_atan2050A#:
	; init String
	db "atan 5", 10, 0

string_atan20x2025f20x_nplus12025f0A#:
	; init String
	db "atan x %f x_nplus1 %f", 10, 0

string_atan2070A#:
	; init String
	db "atan 7", 10, 0

float8$0.5#:
	; init Double
	dq 0.5

float8$3.1415926535897932384#:
	; init Double
	dq 3.1415926535897932384

string_20A#:
	; init String
	db "2", 10, 0

string_30A#:
	; init String
	db "3", 10, 0

string_40A#:
	; init String
	db "4", 10, 0

string_50A#:
	; init String
	db "5", 10, 0

string_60A#:
	; init String
	db "6", 10, 0

float8$minus3.1415926535897932384#:
	; init Double
	dq -3.1415926535897932384

float8$0.999999999999#:
	; init Double
	dq 0.999999999999
