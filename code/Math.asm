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

 exp:
	; push float float8$0#
	fldz

 exp$1:
	; pop float n
	fstp qword [rbp + 32]

 exp$2:
	; push float float8$1#
	fld1

 exp$3:
	; pop float faculty
	fstp qword [rbp + 40]

 exp$4:
	; push float float8$1#
	fld1

 exp$5:
	; pop float power
	fstp qword [rbp + 48]

 exp$6:
	; push float float8$0#
	fldz

 exp$7:
	; pop float sum
	fstp qword [rbp + 64]

 exp$8:
	; push float power
	fld qword [rbp + 48]

 exp$9:
	; push float faculty
	fld qword [rbp + 40]

 exp$10:
	; £temporary361 = power / faculty
	fdiv

 exp$11:
	; pop float term
	fstp qword [rbp + 56]

 exp$12:
	; push float sum
	fld qword [rbp + 64]

 exp$13:
	; push float term
	fld qword [rbp + 56]

 exp$14:
	; £temporary362 = sum + term
	fadd

 exp$15:
	; pop float sum
	fstp qword [rbp + 64]

 exp$16:
	; push float power
	fld qword [rbp + 48]

 exp$17:
	; push float x
	fld qword [rbp + 24]

 exp$18:
	; £temporary363 = power * x
	fmul

 exp$19:
	; pop float power
	fstp qword [rbp + 48]

 exp$20:
	; push float faculty
	fld qword [rbp + 40]

 exp$21:
	; push float n
	fld qword [rbp + 32]

 exp$22:
	; push 1
	fld1

 exp$23:
	; n = n + float8$1#
	fadd

 exp$24:
	; top float n
	fst qword [rbp + 32]

 exp$25:
	; £temporary365 = faculty * £temporary364
	fmul

 exp$26:
	; pop float faculty
	fstp qword [rbp + 40]

 exp$27:
	; check track map float stack

 exp$28:
	; call header integral zero 0 stack zero 0

 exp$29:
	; push float term
	fld qword [rbp + 56]

 exp$30:
	; parameter term, offset 96
	fstp qword [rbp + 96]

 exp$31:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 72], exp$32
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

 exp$32:
	; post call

 exp$33:
	; £temporary366 = return_value

 exp$34:
	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

 exp$35:
	; if £temporary366 >= float8$0.000000001# goto 8
	fcompp
	fstsw ax
	sahf
	jbe exp$8

 exp$36:
	; push float sum
	fld qword [rbp + 64]

 exp$37:
	; return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exp$38:
	; function end exp

 log:
	; push float x_plus_1
	fld qword [rbp + 24]

 log$1:
	; push float float8$0#
	fldz

 log$2:
	; if x_plus_1 <= float8$0# goto 70
	fcompp
	fstsw ax
	sahf
	jae log$70

 log$3:
	; expo = int4$0#
	mov dword [rbp + 32], 0

 log$4:
	; push float x_plus_1
	fld qword [rbp + 24]

 log$5:
	; push float float8$0.3678794411714423216036827922#
	fld qword [float8$0.3678794411714423216036827922#]

 log$6:
	; if x_plus_1 >= float8$0.3678794411714423216036827922# goto 13
	fcompp
	fstsw ax
	sahf
	jbe log$13

 log$7:
	; push float x_plus_1
	fld qword [rbp + 24]

 log$8:
	; push float float8$2.7182818284590452353#
	fld qword [float8$2.7182818284590452353#]

 log$9:
	; £temporary371 = x_plus_1 * float8$2.7182818284590452353#
	fmul

 log$10:
	; pop float x_plus_1
	fstp qword [rbp + 24]

 log$11:
	; expo = expo - int4$1#
	dec dword [rbp + 32]

 log$12:
	; goto 4
	jmp log$4

 log$13:
	; push float x_plus_1
	fld qword [rbp + 24]

 log$14:
	; push float float8$0.7357588823428846432073655843#
	fld qword [float8$0.7357588823428846432073655843#]

 log$15:
	; if x_plus_1 <= float8$0.7357588823428846432073655843# goto 22
	fcompp
	fstsw ax
	sahf
	jae log$22

 log$16:
	; push float x_plus_1
	fld qword [rbp + 24]

 log$17:
	; push float float8$2.7182818284590452353#
	fld qword [float8$2.7182818284590452353#]

 log$18:
	; £temporary374 = x_plus_1 / float8$2.7182818284590452353#
	fdiv

 log$19:
	; pop float x_plus_1
	fstp qword [rbp + 24]

 log$20:
	; expo = expo + int4$1#
	inc dword [rbp + 32]

 log$21:
	; goto 13
	jmp log$13

 log$22:
	; push float float8$1#
	fld1

 log$23:
	; pop float n
	fstp qword [rbp + 36]

 log$24:
	; push float float8$1#
	fld1

 log$25:
	; pop float plusMinusOne
	fstp qword [rbp + 44]

 log$26:
	; push float x_plus_1
	fld qword [rbp + 24]

 log$27:
	; push float float8$1#
	fld1

 log$28:
	; £temporary376 = x_plus_1 - float8$1#
	fsub

 log$29:
	; pop float x
	fstp qword [rbp + 52]

 log$30:
	; push float float8$0#
	fldz

 log$31:
	; pop float sum
	fstp qword [rbp + 68]

 log$32:
	; push float x
	fld qword [rbp + 52]

 log$33:
	; pop float power
	fstp qword [rbp + 76]

 log$34:
	; push float plusMinusOne
	fld qword [rbp + 44]

 log$35:
	; push float power
	fld qword [rbp + 76]

 log$36:
	; push float n
	fld qword [rbp + 36]

 log$37:
	; push 1
	fld1

 log$38:
	; n = n + float8$1#
	fadd

 log$39:
	; top float n
	fst qword [rbp + 36]

 log$40:
	; push 1
	fld1

 log$41:
	; n = n - float8$1#
	fsub

 log$42:
	; £temporary378 = power / £temporary377
	fdiv

 log$43:
	; £temporary379 = plusMinusOne * £temporary378
	fmul

 log$44:
	; pop float term
	fstp qword [rbp + 60]

 log$45:
	; push float sum
	fld qword [rbp + 68]

 log$46:
	; push float term
	fld qword [rbp + 60]

 log$47:
	; £temporary380 = sum + term
	fadd

 log$48:
	; pop float sum
	fstp qword [rbp + 68]

 log$49:
	; push float power
	fld qword [rbp + 76]

 log$50:
	; push float x
	fld qword [rbp + 52]

 log$51:
	; £temporary381 = power * x
	fmul

 log$52:
	; pop float power
	fstp qword [rbp + 76]

 log$53:
	; push float plusMinusOne
	fld qword [rbp + 44]

 log$54:
	; push float float8$minus1.0#
	fld qword [float8$minus1.0#]

 log$55:
	; £temporary382 = plusMinusOne * float8$minus1.0#
	fmul

 log$56:
	; pop float plusMinusOne
	fstp qword [rbp + 44]

 log$57:
	; check track map float stack

 log$58:
	; call header integral zero 0 stack zero 0

 log$59:
	; push float term
	fld qword [rbp + 60]

 log$60:
	; parameter term, offset 108
	fstp qword [rbp + 108]

 log$61:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 84], log$62
	mov [rbp + 92], rbp
	add rbp, 84
	jmp fabs

 log$62:
	; post call

 log$63:
	; £temporary383 = return_value

 log$64:
	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

 log$65:
	; if £temporary383 > float8$0.000000001# goto 34
	fcompp
	fstsw ax
	sahf
	jb log$34

 log$66:
	; push float sum
	fld qword [rbp + 68]

 log$67:
	; £temporary385 = int_to_float expo (Signed_Int -> Double)
	fild word [rbp + 32]

 log$68:
	; £temporary386 = sum + £temporary385
	fadd

 log$69:
	; return £temporary386
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$70:
	; errno = int4$6#
	mov dword [errno], 6

 log$71:
	; push float float8$0#
	fldz

 log$72:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$73:
	; function end log

 log10:
	; push float float8$0.4342944820#
	fld qword [float8$0.4342944820#]

 log10$1:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 32]

 log10$2:
	; push float x
	fld qword [rbp + 24]

 log10$3:
	; parameter x, offset 56
	fstp qword [rbp + 64]

 log10$4:
	; call function noellipse-noellipse log
	mov qword [rbp + 40], log10$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp log

 log10$5:
	; post call
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 log10$6:
	; £temporary388 = return_value

 log10$7:
	; £temporary389 = float8$0.4342944820# * £temporary388
	fmul

 log10$8:
	; return £temporary389
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10$9:
	; function end log10

 log10_int:
	; push float x
	fld qword [rbp + 24]

 log10_int$1:
	; push float float8$0#
	fldz

 log10_int$2:
	; if x <= float8$0# goto 34
	fcompp
	fstsw ax
	sahf
	jae log10_int$34

 log10_int$3:
	; push float x
	fld qword [rbp + 24]

 log10_int$4:
	; push float float8$1#
	fld1

 log10_int$5:
	; if x != float8$1# goto 7
	fcompp
	fstsw ax
	sahf
	jne log10_int$7

 log10_int$6:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10_int$7:
	; push float x
	fld qword [rbp + 24]

 log10_int$8:
	; push float float8$1#
	fld1

 log10_int$9:
	; if x <= float8$1# goto 22
	fcompp
	fstsw ax
	sahf
	jae log10_int$22

 log10_int$10:
	; count = int4$0#
	mov dword [rbp + 32], 0

 log10_int$11:
	; push float x
	fld qword [rbp + 24]

 log10_int$12:
	; push float float8$1#
	fld1

 log10_int$13:
	; if x <= float8$1# goto 20
	fcompp
	fstsw ax
	sahf
	jae log10_int$20

 log10_int$14:
	; push float x
	fld qword [rbp + 24]

 log10_int$15:
	; push float float8$10#
	fld qword [float8$10#]

 log10_int$16:
	; £temporary395 = x / float8$10#
	fdiv

 log10_int$17:
	; pop float x
	fstp qword [rbp + 24]

 log10_int$18:
	; count = count + int4$1#
	inc dword [rbp + 32]

 log10_int$19:
	; goto 11
	jmp log10_int$11

 log10_int$20:
	; £temporary397 = count - int4$1#
	mov ebx, [rbp + 32]
	dec ebx

 log10_int$21:
	; return £temporary397
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10_int$22:
	; count = int4$0#
	mov dword [rbp + 32], 0

 log10_int$23:
	; push float x
	fld qword [rbp + 24]

 log10_int$24:
	; push float float8$1#
	fld1

 log10_int$25:
	; if x >= float8$1# goto 32
	fcompp
	fstsw ax
	sahf
	jbe log10_int$32

 log10_int$26:
	; push float x
	fld qword [rbp + 24]

 log10_int$27:
	; push float float8$10#
	fld qword [float8$10#]

 log10_int$28:
	; £temporary399 = x * float8$10#
	fmul

 log10_int$29:
	; pop float x
	fstp qword [rbp + 24]

 log10_int$30:
	; count = count + int4$1#
	inc dword [rbp + 32]

 log10_int$31:
	; goto 23
	jmp log10_int$23

 log10_int$32:
	; £temporary401 = -count
	mov ebx, [rbp + 32]
	neg ebx

 log10_int$33:
	; return £temporary401
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10_int$34:
	; errno = int4$6#
	mov dword [errno], 6

 log10_int$35:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10_int$36:
	; function end log10_int

 pow_int:
	; minus = int4$0#
	mov dword [rbp + 36], 0

 pow_int$1:
	; if y >= int4$0# goto 5
	cmp dword [rbp + 32], 0
	jge pow_int$5

 pow_int$2:
	; £temporary403 = -y
	mov eax, [rbp + 32]
	neg eax

 pow_int$3:
	; y = £temporary403
	mov [rbp + 32], eax

 pow_int$4:
	; minus = int4$1#
	mov dword [rbp + 36], 1

 pow_int$5:
	; push float float8$1#
	fld1

 pow_int$6:
	; pop float product
	fstp qword [rbp + 40]

 pow_int$7:
	; index = int4$0#
	mov dword [rbp + 48], 0

 pow_int$8:
	; if index >= y goto 15
	mov eax, [rbp + 32]
	cmp [rbp + 48], eax
	jge pow_int$15

 pow_int$9:
	; push float product
	fld qword [rbp + 40]

 pow_int$10:
	; push float x
	fld qword [rbp + 24]

 pow_int$11:
	; £temporary406 = product * x
	fmul

 pow_int$12:
	; pop float product
	fstp qword [rbp + 40]

 pow_int$13:
	; index = index + int4$1#
	inc dword [rbp + 48]

 pow_int$14:
	; goto 8
	jmp pow_int$8

 pow_int$15:
	; if minus == int4$0# goto 21
	cmp dword [rbp + 36], 0
	je pow_int$21

 pow_int$16:
	; push float float8$1#
	fld1

 pow_int$17:
	; push float product
	fld qword [rbp + 40]

 pow_int$18:
	; £temporary407 = float8$1# / product
	fdiv

 pow_int$19:
	; decrease stack

 pow_int$20:
	; goto 22
	jmp pow_int$22

 pow_int$21:
	; push float product
	fld qword [rbp + 40]

 pow_int$22:
	; return £temporary409
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow_int$23:
	; function end pow_int

 pow:
	; push float x
	fld qword [rbp + 24]

 pow$1:
	; push float float8$0#
	fldz

 pow$2:
	; if x <= float8$0# goto 17
	fcompp
	fstsw ax
	sahf
	jae pow$17

 pow$3:
	; call header integral zero 0 stack zero 0

 pow$4:
	; push float y
	fld qword [rbp + 32]

 pow$5:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

 pow$6:
	; push float x
	fld qword [rbp + 24]

 pow$7:
	; parameter x, offset 64
	fstp qword [rbp + 72]

 pow$8:
	; call function noellipse-noellipse log
	mov qword [rbp + 48], pow$9
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

 pow$9:
	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 pow$10:
	; £temporary411 = return_value

 pow$11:
	; £temporary412 = y * £temporary411
	fmul

 pow$12:
	; parameter £temporary412, offset 64
	fstp qword [rbp + 64]

 pow$13:
	; call function noellipse-noellipse exp
	mov qword [rbp + 40], pow$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

 pow$14:
	; post call

 pow$15:
	; £temporary413 = return_value

 pow$16:
	; return £temporary413
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$17:
	; errno = int4$6#
	mov dword [errno], 6

 pow$18:
	; push float float8$0#
	fldz

 pow$19:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$20:
	; function end pow

 ldexp:
	; push float x
	fld qword [rbp + 24]

 ldexp$1:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 36]

 ldexp$2:
	; push float float8$2#
	fld qword [float8$2#]

 ldexp$3:
	; parameter float8$2#, offset 60
	fstp qword [rbp + 68]

 ldexp$4:
	; £temporary416 = int_to_float n (Signed_Int -> Double)
	fild word [rbp + 32]

 ldexp$5:
	; parameter £temporary416, offset 68
	fstp qword [rbp + 76]

 ldexp$6:
	; call function noellipse-noellipse pow
	mov qword [rbp + 44], ldexp$7
	mov [rbp + 52], rbp
	add rbp, 44
	jmp pow

 ldexp$7:
	; post call
	fstp qword [rbp + 44]
	fld qword [rbp + 36]
	fld qword [rbp + 44]

 ldexp$8:
	; £temporary417 = return_value

 ldexp$9:
	; £temporary418 = x * £temporary417
	fmul

 ldexp$10:
	; return £temporary418
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldexp$11:
	; function end ldexp

 frexp:
	; if p == int8$0# goto 55
	cmp qword [rbp + 32], 0
	je frexp$55

 frexp$1:
	; push float x
	fld qword [rbp + 24]

 frexp$2:
	; push float float8$0#
	fldz

 frexp$3:
	; if x != float8$0# goto 8
	fcompp
	fstsw ax
	sahf
	jne frexp$8

 frexp$4:
	; £field423 -> p = *p
	mov rsi, [rbp + 32]

 frexp$5:
	; £field423 -> p = int4$0#
	mov dword [rsi], 0

 frexp$6:
	; push float float8$0#
	fldz

 frexp$7:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$8:
	; £field424 -> p = *p
	mov rsi, [rbp + 32]

 frexp$9:
	; call header integral no zero 1 stack zero 0
	mov [rbp + 40], rsi

 frexp$10:
	; call header integral zero 0 stack zero 0

 frexp$11:
	; push float x
	fld qword [rbp + 24]

 frexp$12:
	; parameter x, offset 64
	fstp qword [rbp + 72]

 frexp$13:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], frexp$14
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 frexp$14:
	; post call

 frexp$15:
	; £temporary425 = return_value

 frexp$16:
	; parameter £temporary425, offset 64
	fstp qword [rbp + 72]

 frexp$17:
	; call function noellipse-noellipse log
	mov qword [rbp + 48], frexp$18
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

 frexp$18:
	; post call
	mov rsi, [rbp + 40]

 frexp$19:
	; £temporary426 = return_value

 frexp$20:
	; call header integral no zero 1 stack no zero 1
	mov [rbp + 40], rsi
	fstp qword [rbp + 48]

 frexp$21:
	; push float float8$2#
	fld qword [float8$2#]

 frexp$22:
	; parameter float8$2#, offset 64
	fstp qword [rbp + 80]

 frexp$23:
	; call function noellipse-noellipse log
	mov qword [rbp + 56], frexp$24
	mov [rbp + 64], rbp
	add rbp, 56
	jmp log

 frexp$24:
	; post call
	mov rsi, [rbp + 40]
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 frexp$25:
	; £temporary427 = return_value

 frexp$26:
	; £temporary428 = £temporary426 / £temporary427
	fdiv

 frexp$27:
	; £temporary429 = float_to_int £temporary428 (Double -> Signed_Int)
	fistp word [container4bytes#]
	mov eax, [container4bytes#]

 frexp$28:
	; £field424 -> p = £temporary429 + int4$1#
	inc eax
	mov [rsi], eax

 frexp$29:
	; call header integral zero 0 stack zero 0

 frexp$30:
	; push float x
	fld qword [rbp + 24]

 frexp$31:
	; parameter x, offset 64
	fstp qword [rbp + 64]

 frexp$32:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 40], frexp$33
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

 frexp$33:
	; post call

 frexp$34:
	; £temporary431 = return_value

 frexp$35:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

 frexp$36:
	; push float float8$2#
	fld qword [float8$2#]

 frexp$37:
	; parameter float8$2#, offset 64
	fstp qword [rbp + 72]

 frexp$38:
	; £field432 -> p = *p
	mov rsi, [rbp + 32]

 frexp$39:
	; £temporary433 = int_to_float £field432 -> p (Signed_Int -> Double)
	fild word [rsi]

 frexp$40:
	; parameter £temporary433, offset 72
	fstp qword [rbp + 80]

 frexp$41:
	; call function noellipse-noellipse pow
	mov qword [rbp + 48], frexp$42
	mov [rbp + 56], rbp
	add rbp, 48
	jmp pow

 frexp$42:
	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 frexp$43:
	; £temporary434 = return_value

 frexp$44:
	; £temporary435 = £temporary431 / £temporary434
	fdiv

 frexp$45:
	; pop float quotient
	fstp qword [rbp + 40]

 frexp$46:
	; push float x
	fld qword [rbp + 24]

 frexp$47:
	; push float float8$0#
	fldz

 frexp$48:
	; if x >= float8$0# goto 53
	fcompp
	fstsw ax
	sahf
	jbe frexp$53

 frexp$49:
	; push float quotient
	fld qword [rbp + 40]

 frexp$50:
	; £temporary437 = -quotient
	fchs

 frexp$51:
	; decrease stack

 frexp$52:
	; goto 54
	jmp frexp$54

 frexp$53:
	; push float quotient
	fld qword [rbp + 40]

 frexp$54:
	; return £temporary438
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$55:
	; push float x
	fld qword [rbp + 24]

 frexp$56:
	; push float float8$0#
	fldz

 frexp$57:
	; if x != float8$0# goto 60
	fcompp
	fstsw ax
	sahf
	jne frexp$60

 frexp$58:
	; push float float8$0#
	fldz

 frexp$59:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$60:
	; call header integral zero 0 stack zero 0

 frexp$61:
	; call header integral zero 0 stack zero 0

 frexp$62:
	; push float x
	fld qword [rbp + 24]

 frexp$63:
	; parameter x, offset 64
	fstp qword [rbp + 64]

 frexp$64:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 40], frexp$65
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

 frexp$65:
	; post call

 frexp$66:
	; £temporary440 = return_value

 frexp$67:
	; parameter £temporary440, offset 64
	fstp qword [rbp + 64]

 frexp$68:
	; call function noellipse-noellipse log
	mov qword [rbp + 40], frexp$69
	mov [rbp + 48], rbp
	add rbp, 40
	jmp log

 frexp$69:
	; post call

 frexp$70:
	; £temporary441 = return_value

 frexp$71:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

 frexp$72:
	; push float float8$2#
	fld qword [float8$2#]

 frexp$73:
	; parameter float8$2#, offset 64
	fstp qword [rbp + 72]

 frexp$74:
	; call function noellipse-noellipse log
	mov qword [rbp + 48], frexp$75
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

 frexp$75:
	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 frexp$76:
	; £temporary442 = return_value

 frexp$77:
	; £temporary443 = £temporary441 / £temporary442
	fdiv

 frexp$78:
	; £temporary444 = float_to_int £temporary443 (Double -> Signed_Int)
	fistp word [container4bytes#]
	mov eax, [container4bytes#]

 frexp$79:
	; n = £temporary444 + int4$1#
	inc eax
	mov [rbp + 40], eax

 frexp$80:
	; call header integral zero 0 stack zero 0

 frexp$81:
	; push float x
	fld qword [rbp + 24]

 frexp$82:
	; parameter x, offset 68
	fstp qword [rbp + 68]

 frexp$83:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 44], frexp$84
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fabs

 frexp$84:
	; post call

 frexp$85:
	; £temporary446 = return_value

 frexp$86:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 44]

 frexp$87:
	; push float float8$2#
	fld qword [float8$2#]

 frexp$88:
	; parameter float8$2#, offset 68
	fstp qword [rbp + 76]

 frexp$89:
	; £temporary447 = int_to_float n (Signed_Int -> Double)
	fild word [rbp + 40]

 frexp$90:
	; parameter £temporary447, offset 76
	fstp qword [rbp + 84]

 frexp$91:
	; call function noellipse-noellipse pow
	mov qword [rbp + 52], frexp$92
	mov [rbp + 60], rbp
	add rbp, 52
	jmp pow

 frexp$92:
	; post call
	fstp qword [rbp + 52]
	fld qword [rbp + 44]
	fld qword [rbp + 52]

 frexp$93:
	; £temporary448 = return_value

 frexp$94:
	; £temporary449 = £temporary446 / £temporary448
	fdiv

 frexp$95:
	; pop float a
	fstp qword [rbp + 44]

 frexp$96:
	; push float x
	fld qword [rbp + 24]

 frexp$97:
	; push float float8$0#
	fldz

 frexp$98:
	; if x >= float8$0# goto 103
	fcompp
	fstsw ax
	sahf
	jbe frexp$103

 frexp$99:
	; push float a
	fld qword [rbp + 44]

 frexp$100:
	; £temporary451 = -a
	fchs

 frexp$101:
	; decrease stack

 frexp$102:
	; goto 104
	jmp frexp$104

 frexp$103:
	; push float a
	fld qword [rbp + 44]

 frexp$104:
	; return £temporary452
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$105:
	; function end frexp

 sin:
	; push float float8$0#
	fldz

 sin$1:
	; pop float n
	fstp qword [rbp + 32]

 sin$2:
	; push float float8$1#
	fld1

 sin$3:
	; pop float plusMinusOne
	fstp qword [rbp + 40]

 sin$4:
	; push float float8$1#
	fld1

 sin$5:
	; pop float faculty
	fstp qword [rbp + 48]

 sin$6:
	; push float x
	fld qword [rbp + 24]

 sin$7:
	; pop float power
	fstp qword [rbp + 56]

 sin$8:
	; push float float8$0#
	fldz

 sin$9:
	; pop float sum
	fstp qword [rbp + 72]

 sin$10:
	; push float plusMinusOne
	fld qword [rbp + 40]

 sin$11:
	; push float power
	fld qword [rbp + 56]

 sin$12:
	; push float faculty
	fld qword [rbp + 48]

 sin$13:
	; £temporary465 = power / faculty
	fdiv

 sin$14:
	; £temporary466 = plusMinusOne * £temporary465
	fmul

 sin$15:
	; pop float term
	fstp qword [rbp + 64]

 sin$16:
	; push float sum
	fld qword [rbp + 72]

 sin$17:
	; push float term
	fld qword [rbp + 64]

 sin$18:
	; £temporary467 = sum + term
	fadd

 sin$19:
	; pop float sum
	fstp qword [rbp + 72]

 sin$20:
	; push float plusMinusOne
	fld qword [rbp + 40]

 sin$21:
	; push float float8$minus1#
	fld qword [float8$minus1#]

 sin$22:
	; £temporary468 = plusMinusOne * float8$minus1#
	fmul

 sin$23:
	; pop float plusMinusOne
	fstp qword [rbp + 40]

 sin$24:
	; push float power
	fld qword [rbp + 56]

 sin$25:
	; push float x
	fld qword [rbp + 24]

 sin$26:
	; push float x
	fld qword [rbp + 24]

 sin$27:
	; £temporary469 = x * x
	fmul

 sin$28:
	; £temporary470 = power * £temporary469
	fmul

 sin$29:
	; pop float power
	fstp qword [rbp + 56]

 sin$30:
	; push float faculty
	fld qword [rbp + 48]

 sin$31:
	; push float n
	fld qword [rbp + 32]

 sin$32:
	; push float float8$2#
	fld qword [float8$2#]

 sin$33:
	; £temporary471 = n + float8$2#
	fadd

 sin$34:
	; push float n
	fld qword [rbp + 32]

 sin$35:
	; push float float8$3#
	fld qword [float8$3#]

 sin$36:
	; £temporary472 = n + float8$3#
	fadd

 sin$37:
	; £temporary473 = £temporary471 * £temporary472
	fmul

 sin$38:
	; £temporary474 = faculty * £temporary473
	fmul

 sin$39:
	; pop float faculty
	fstp qword [rbp + 48]

 sin$40:
	; push float n
	fld qword [rbp + 32]

 sin$41:
	; push float float8$2#
	fld qword [float8$2#]

 sin$42:
	; £temporary475 = n + float8$2#
	fadd

 sin$43:
	; pop float n
	fstp qword [rbp + 32]

 sin$44:
	; check track map float stack

 sin$45:
	; call header integral zero 0 stack zero 0

 sin$46:
	; push float term
	fld qword [rbp + 64]

 sin$47:
	; parameter term, offset 104
	fstp qword [rbp + 104]

 sin$48:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 80], sin$49
	mov [rbp + 88], rbp
	add rbp, 80
	jmp fabs

 sin$49:
	; post call

 sin$50:
	; £temporary476 = return_value

 sin$51:
	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

 sin$52:
	; if £temporary476 >= float8$0.000000001# goto 10
	fcompp
	fstsw ax
	sahf
	jbe sin$10

 sin$53:
	; push float sum
	fld qword [rbp + 72]

 sin$54:
	; return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sin$55:
	; function end sin

 cos:
	; push float float8$0#
	fldz

 cos$1:
	; pop float n
	fstp qword [rbp + 32]

 cos$2:
	; push float float8$1#
	fld1

 cos$3:
	; pop float plusMinusOne
	fstp qword [rbp + 40]

 cos$4:
	; push float float8$1#
	fld1

 cos$5:
	; pop float faculty
	fstp qword [rbp + 48]

 cos$6:
	; push float float8$1#
	fld1

 cos$7:
	; pop float power
	fstp qword [rbp + 56]

 cos$8:
	; push float float8$0#
	fldz

 cos$9:
	; pop float sum
	fstp qword [rbp + 72]

 cos$10:
	; push float plusMinusOne
	fld qword [rbp + 40]

 cos$11:
	; push float power
	fld qword [rbp + 56]

 cos$12:
	; push float faculty
	fld qword [rbp + 48]

 cos$13:
	; £temporary479 = power / faculty
	fdiv

 cos$14:
	; £temporary480 = plusMinusOne * £temporary479
	fmul

 cos$15:
	; pop float term
	fstp qword [rbp + 64]

 cos$16:
	; push float sum
	fld qword [rbp + 72]

 cos$17:
	; push float term
	fld qword [rbp + 64]

 cos$18:
	; £temporary481 = sum + term
	fadd

 cos$19:
	; pop float sum
	fstp qword [rbp + 72]

 cos$20:
	; push float plusMinusOne
	fld qword [rbp + 40]

 cos$21:
	; push float float8$minus1#
	fld qword [float8$minus1#]

 cos$22:
	; £temporary482 = plusMinusOne * float8$minus1#
	fmul

 cos$23:
	; pop float plusMinusOne
	fstp qword [rbp + 40]

 cos$24:
	; push float power
	fld qword [rbp + 56]

 cos$25:
	; push float x
	fld qword [rbp + 24]

 cos$26:
	; push float x
	fld qword [rbp + 24]

 cos$27:
	; £temporary483 = x * x
	fmul

 cos$28:
	; £temporary484 = power * £temporary483
	fmul

 cos$29:
	; pop float power
	fstp qword [rbp + 56]

 cos$30:
	; push float faculty
	fld qword [rbp + 48]

 cos$31:
	; push float n
	fld qword [rbp + 32]

 cos$32:
	; push float float8$1#
	fld1

 cos$33:
	; £temporary485 = n + float8$1#
	fadd

 cos$34:
	; push float n
	fld qword [rbp + 32]

 cos$35:
	; push float float8$2#
	fld qword [float8$2#]

 cos$36:
	; £temporary486 = n + float8$2#
	fadd

 cos$37:
	; £temporary487 = £temporary485 * £temporary486
	fmul

 cos$38:
	; £temporary488 = faculty * £temporary487
	fmul

 cos$39:
	; pop float faculty
	fstp qword [rbp + 48]

 cos$40:
	; push float n
	fld qword [rbp + 32]

 cos$41:
	; push float float8$2#
	fld qword [float8$2#]

 cos$42:
	; £temporary489 = n + float8$2#
	fadd

 cos$43:
	; pop float n
	fstp qword [rbp + 32]

 cos$44:
	; check track map float stack

 cos$45:
	; call header integral zero 0 stack zero 0

 cos$46:
	; push float term
	fld qword [rbp + 64]

 cos$47:
	; parameter term, offset 104
	fstp qword [rbp + 104]

 cos$48:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 80], cos$49
	mov [rbp + 88], rbp
	add rbp, 80
	jmp fabs

 cos$49:
	; post call

 cos$50:
	; £temporary490 = return_value

 cos$51:
	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

 cos$52:
	; if £temporary490 >= float8$0.000000001# goto 10
	fcompp
	fstsw ax
	sahf
	jbe cos$10

 cos$53:
	; push float sum
	fld qword [rbp + 72]

 cos$54:
	; return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 cos$55:
	; function end cos

 tan:
	; call header integral zero 0 stack zero 0

 tan$1:
	; push float x
	fld qword [rbp + 24]

 tan$2:
	; parameter x, offset 56
	fstp qword [rbp + 56]

 tan$3:
	; call function noellipse-noellipse cos
	mov qword [rbp + 32], tan$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp cos

 tan$4:
	; post call

 tan$5:
	; £temporary493 = return_value

 tan$6:
	; top float cos_value
	fst qword [rbp + 32]

 tan$7:
	; push float float8$0#
	fldz

 tan$8:
	; if cos_value == float8$0# goto 18
	fcompp
	fstsw ax
	sahf
	je tan$18

 tan$9:
	; call header integral zero 0 stack zero 0

 tan$10:
	; push float x
	fld qword [rbp + 24]

 tan$11:
	; parameter x, offset 64
	fstp qword [rbp + 64]

 tan$12:
	; call function noellipse-noellipse sin
	mov qword [rbp + 40], tan$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sin

 tan$13:
	; post call

 tan$14:
	; £temporary495 = return_value

 tan$15:
	; push float cos_value
	fld qword [rbp + 32]

 tan$16:
	; £temporary496 = £temporary495 / cos_value
	fdiv

 tan$17:
	; return £temporary496
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tan$18:
	; errno = int4$6#
	mov dword [errno], 6

 tan$19:
	; push float float8$0#
	fldz

 tan$20:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tan$21:
	; function end tan

 sinh:
	; call header integral zero 0 stack zero 0

 sinh$1:
	; push float x
	fld qword [rbp + 24]

 sinh$2:
	; parameter x, offset 56
	fstp qword [rbp + 56]

 sinh$3:
	; call function noellipse-noellipse exp
	mov qword [rbp + 32], sinh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp exp

 sinh$4:
	; post call

 sinh$5:
	; £temporary499 = return_value

 sinh$6:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 32]

 sinh$7:
	; push float x
	fld qword [rbp + 24]

 sinh$8:
	; £temporary500 = -x
	fchs

 sinh$9:
	; parameter £temporary500, offset 56
	fstp qword [rbp + 64]

 sinh$10:
	; call function noellipse-noellipse exp
	mov qword [rbp + 40], sinh$11
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

 sinh$11:
	; post call
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 sinh$12:
	; £temporary501 = return_value

 sinh$13:
	; £temporary502 = £temporary499 - £temporary501
	fsub

 sinh$14:
	; push float float8$2#
	fld qword [float8$2#]

 sinh$15:
	; £temporary503 = £temporary502 / float8$2#
	fdiv

 sinh$16:
	; return £temporary503
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sinh$17:
	; function end sinh

 cosh:
	; call header integral zero 0 stack zero 0

 cosh$1:
	; push float x
	fld qword [rbp + 24]

 cosh$2:
	; parameter x, offset 56
	fstp qword [rbp + 56]

 cosh$3:
	; call function noellipse-noellipse exp
	mov qword [rbp + 32], cosh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp exp

 cosh$4:
	; post call

 cosh$5:
	; £temporary506 = return_value

 cosh$6:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 32]

 cosh$7:
	; push float x
	fld qword [rbp + 24]

 cosh$8:
	; £temporary507 = -x
	fchs

 cosh$9:
	; parameter £temporary507, offset 56
	fstp qword [rbp + 64]

 cosh$10:
	; call function noellipse-noellipse exp
	mov qword [rbp + 40], cosh$11
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

 cosh$11:
	; post call
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 cosh$12:
	; £temporary508 = return_value

 cosh$13:
	; £temporary509 = £temporary506 + £temporary508
	fadd

 cosh$14:
	; push float float8$2#
	fld qword [float8$2#]

 cosh$15:
	; £temporary510 = £temporary509 / float8$2#
	fdiv

 cosh$16:
	; return £temporary510
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 cosh$17:
	; function end cosh

 tanh:
	; call header integral zero 0 stack zero 0

 tanh$1:
	; push float x
	fld qword [rbp + 24]

 tanh$2:
	; parameter x, offset 56
	fstp qword [rbp + 56]

 tanh$3:
	; call function noellipse-noellipse cosh
	mov qword [rbp + 32], tanh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp cosh

 tanh$4:
	; post call

 tanh$5:
	; £temporary513 = return_value

 tanh$6:
	; top float coh
	fst qword [rbp + 32]

 tanh$7:
	; push float float8$0#
	fldz

 tanh$8:
	; if coh == float8$0# goto 20
	fcompp
	fstsw ax
	sahf
	je tanh$20

 tanh$9:
	; call header integral zero 0 stack zero 0

 tanh$10:
	; push float x
	fld qword [rbp + 24]

 tanh$11:
	; parameter x, offset 64
	fstp qword [rbp + 64]

 tanh$12:
	; call function noellipse-noellipse sinh
	mov qword [rbp + 40], tanh$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sinh

 tanh$13:
	; post call

 tanh$14:
	; £temporary515 = return_value

 tanh$15:
	; top float sh
	fst qword [rbp + 40]

 tanh$16:
	; push float coh
	fld qword [rbp + 32]

 tanh$17:
	; £temporary516 = sh / coh
	fdiv

 tanh$18:
	; top float y
	fst qword [rbp + 48]

 tanh$19:
	; return y
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tanh$20:
	; errno = int4$6#
	mov dword [errno], 6

 tanh$21:
	; push float float8$0#
	fldz

 tanh$22:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tanh$23:
	; function end tanh

 sqrt:
	; push float v
	fld qword [rbp + 24]

 sqrt$1:
	; push float float8$0#
	fldz

 sqrt$2:
	; if v < float8$0# goto 30
	fcompp
	fstsw ax
	sahf
	ja sqrt$30

 sqrt$3:
	; push float float8$1#
	fld1

 sqrt$4:
	; pop float x_nplus1
	fstp qword [rbp + 32]

 sqrt$5:
	; count = int4$0#
	mov dword [rbp + 48], 0

 sqrt$6:
	; push float x_nplus1
	fld qword [rbp + 32]

 sqrt$7:
	; top float x
	fst qword [rbp + 40]

 sqrt$8:
	; push float v
	fld qword [rbp + 24]

 sqrt$9:
	; push float x
	fld qword [rbp + 40]

 sqrt$10:
	; £temporary520 = v / x
	fdiv

 sqrt$11:
	; £temporary521 = x + £temporary520
	fadd

 sqrt$12:
	; push float float8$2#
	fld qword [float8$2#]

 sqrt$13:
	; £temporary522 = £temporary521 / float8$2#
	fdiv

 sqrt$14:
	; pop float x_nplus1
	fstp qword [rbp + 32]

 sqrt$15:
	; check track map float stack

 sqrt$16:
	; £temporary523 = count + int4$1#
	mov eax, [rbp + 48]
	inc eax

 sqrt$17:
	; if £temporary523 >= int4$1000# goto 28
	cmp eax, 1000
	jge sqrt$28

 sqrt$18:
	; call header integral zero 0 stack zero 0

 sqrt$19:
	; push float x_nplus1
	fld qword [rbp + 32]

 sqrt$20:
	; push float x
	fld qword [rbp + 40]

 sqrt$21:
	; £temporary525 = x_nplus1 - x
	fsub

 sqrt$22:
	; parameter £temporary525, offset 76
	fstp qword [rbp + 76]

 sqrt$23:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 52], sqrt$24
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fabs

 sqrt$24:
	; post call

 sqrt$25:
	; £temporary526 = return_value

 sqrt$26:
	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

 sqrt$27:
	; if £temporary526 >= float8$0.000000001# goto 6
	fcompp
	fstsw ax
	sahf
	jbe sqrt$6

 sqrt$28:
	; push float x_nplus1
	fld qword [rbp + 32]

 sqrt$29:
	; return x_nplus1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sqrt$30:
	; errno = int4$6#
	mov dword [errno], 6

 sqrt$31:
	; push float float8$0#
	fldz

 sqrt$32:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sqrt$33:
	; function end sqrt

 asin:
	; call header integral zero 0 stack zero 0

 asin$1:
	; push float x
	fld qword [rbp + 24]

 asin$2:
	; parameter x, offset 56
	fstp qword [rbp + 56]

 asin$3:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], asin$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 asin$4:
	; post call

 asin$5:
	; £temporary530 = return_value

 asin$6:
	; push float float8$1#
	fld1

 asin$7:
	; if £temporary530 > float8$1# goto 28
	fcompp
	fstsw ax
	sahf
	jb asin$28

 asin$8:
	; call header integral zero 0 stack zero 0

 asin$9:
	; push float x
	fld qword [rbp + 24]

 asin$10:
	; parameter x, offset 56
	fstp qword [rbp + 56]

 asin$11:
	; call header integral zero 0 stack zero 0

 asin$12:
	; push float float8$1#
	fld1

 asin$13:
	; push float x
	fld qword [rbp + 24]

 asin$14:
	; £temporary532 = float8$1# + x
	fadd

 asin$15:
	; push float float8$1#
	fld1

 asin$16:
	; push float x
	fld qword [rbp + 24]

 asin$17:
	; £temporary533 = float8$1# - x
	fsub

 asin$18:
	; £temporary534 = £temporary532 * £temporary533
	fmul

 asin$19:
	; parameter £temporary534, offset 88
	fstp qword [rbp + 88]

 asin$20:
	; call function noellipse-noellipse sqrt
	mov qword [rbp + 64], asin$21
	mov [rbp + 72], rbp
	add rbp, 64
	jmp sqrt

 asin$21:
	; post call

 asin$22:
	; £temporary535 = return_value

 asin$23:
	; parameter £temporary535, offset 64
	fstp qword [rbp + 64]

 asin$24:
	; call function noellipse-noellipse atan2
	mov qword [rbp + 32], asin$25
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan2

 asin$25:
	; post call

 asin$26:
	; £temporary536 = return_value

 asin$27:
	; return £temporary536
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$28:
	; errno = int4$6#
	mov dword [errno], 6

 asin$29:
	; push float float8$0#
	fldz

 asin$30:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$31:
	; function end asin

 acos:
	; call header integral zero 0 stack zero 0

 acos$1:
	; push float x
	fld qword [rbp + 24]

 acos$2:
	; parameter x, offset 56
	fstp qword [rbp + 56]

 acos$3:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], acos$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 acos$4:
	; post call

 acos$5:
	; £temporary541 = return_value

 acos$6:
	; push float float8$1#
	fld1

 acos$7:
	; if £temporary541 > float8$1# goto 28
	fcompp
	fstsw ax
	sahf
	jb acos$28

 acos$8:
	; call header integral zero 0 stack zero 0

 acos$9:
	; call header integral zero 0 stack zero 0

 acos$10:
	; push float float8$1#
	fld1

 acos$11:
	; push float x
	fld qword [rbp + 24]

 acos$12:
	; £temporary543 = float8$1# + x
	fadd

 acos$13:
	; push float float8$1#
	fld1

 acos$14:
	; push float x
	fld qword [rbp + 24]

 acos$15:
	; £temporary544 = float8$1# - x
	fsub

 acos$16:
	; £temporary545 = £temporary543 * £temporary544
	fmul

 acos$17:
	; parameter £temporary545, offset 56
	fstp qword [rbp + 56]

 acos$18:
	; call function noellipse-noellipse sqrt
	mov qword [rbp + 32], acos$19
	mov [rbp + 40], rbp
	add rbp, 32
	jmp sqrt

 acos$19:
	; post call

 acos$20:
	; £temporary546 = return_value

 acos$21:
	; parameter £temporary546, offset 56
	fstp qword [rbp + 56]

 acos$22:
	; push float x
	fld qword [rbp + 24]

 acos$23:
	; parameter x, offset 64
	fstp qword [rbp + 64]

 acos$24:
	; call function noellipse-noellipse atan2
	mov qword [rbp + 32], acos$25
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan2

 acos$25:
	; post call

 acos$26:
	; £temporary547 = return_value

 acos$27:
	; return £temporary547
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$28:
	; errno = int4$6#
	mov dword [errno], 6

 acos$29:
	; push float float8$0#
	fldz

 acos$30:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$31:
	; function end acos

 asin2:
	; push float v
	fld qword [rbp + 24]

 asin2$1:
	; push float float8$1#
	fld1

 asin2$2:
	; if v != float8$1# goto 5
	fcompp
	fstsw ax
	sahf
	jne asin2$5

 asin2$3:
	; push float float8$1.5707963267948966192#
	fld qword [float8$1.5707963267948966192#]

 asin2$4:
	; return float8$1.5707963267948966192#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin2$5:
	; push float v
	fld qword [rbp + 24]

 asin2$6:
	; push float float8$minus1#
	fld qword [float8$minus1#]

 asin2$7:
	; if v != float8$minus1# goto 10
	fcompp
	fstsw ax
	sahf
	jne asin2$10

 asin2$8:
	; push float float8$minus1.5707963267948966192#
	fld qword [float8$minus1.5707963267948966192#]

 asin2$9:
	; return float8$minus1.5707963267948966192#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin2$10:
	; call header integral zero 0 stack zero 0

 asin2$11:
	; push float v
	fld qword [rbp + 24]

 asin2$12:
	; parameter v, offset 56
	fstp qword [rbp + 56]

 asin2$13:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], asin2$14
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 asin2$14:
	; post call

 asin2$15:
	; £temporary554 = return_value

 asin2$16:
	; push float float8$1#
	fld1

 asin2$17:
	; if £temporary554 >= float8$1# goto 55
	fcompp
	fstsw ax
	sahf
	jbe asin2$55

 asin2$18:
	; push float float8$1#
	fld1

 asin2$19:
	; pop float x_nplus1
	fstp qword [rbp + 32]

 asin2$20:
	; count = int4$0#
	mov dword [rbp + 48], 0

 asin2$21:
	; push float x_nplus1
	fld qword [rbp + 32]

 asin2$22:
	; top float x
	fst qword [rbp + 40]

 asin2$23:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 52]

 asin2$24:
	; push float x
	fld qword [rbp + 40]

 asin2$25:
	; parameter x, offset 76
	fstp qword [rbp + 84]

 asin2$26:
	; call function noellipse-noellipse tan
	mov qword [rbp + 60], asin2$27
	mov [rbp + 68], rbp
	add rbp, 60
	jmp tan

 asin2$27:
	; post call
	fstp qword [rbp + 60]
	fld qword [rbp + 52]
	fld qword [rbp + 60]

 asin2$28:
	; £temporary556 = return_value

 asin2$29:
	; £temporary557 = x - £temporary556
	fsub

 asin2$30:
	; push float v
	fld qword [rbp + 24]

 asin2$31:
	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 52]
	fstp qword [rbp + 60]

 asin2$32:
	; push float x
	fld qword [rbp + 40]

 asin2$33:
	; parameter x, offset 76
	fstp qword [rbp + 92]

 asin2$34:
	; call function noellipse-noellipse cos
	mov qword [rbp + 68], asin2$35
	mov [rbp + 76], rbp
	add rbp, 68
	jmp cos

 asin2$35:
	; post call
	fstp qword [rbp + 68]
	fld qword [rbp + 60]
	fld qword [rbp + 52]
	fld qword [rbp + 68]

 asin2$36:
	; £temporary558 = return_value

 asin2$37:
	; £temporary559 = v / £temporary558
	fdiv

 asin2$38:
	; £temporary560 = £temporary557 + £temporary559
	fadd

 asin2$39:
	; pop float x_nplus1
	fstp qword [rbp + 32]

 asin2$40:
	; check track map float stack

 asin2$41:
	; £temporary561 = count + int4$1#
	mov eax, [rbp + 48]
	inc eax

 asin2$42:
	; if £temporary561 >= int4$1000# goto 53
	cmp eax, 1000
	jge asin2$53

 asin2$43:
	; call header integral zero 0 stack zero 0

 asin2$44:
	; push float x_nplus1
	fld qword [rbp + 32]

 asin2$45:
	; push float x
	fld qword [rbp + 40]

 asin2$46:
	; £temporary563 = x_nplus1 - x
	fsub

 asin2$47:
	; parameter £temporary563, offset 76
	fstp qword [rbp + 76]

 asin2$48:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 52], asin2$49
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fabs

 asin2$49:
	; post call

 asin2$50:
	; £temporary564 = return_value

 asin2$51:
	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

 asin2$52:
	; if £temporary564 >= float8$0.000000001# goto 21
	fcompp
	fstsw ax
	sahf
	jbe asin2$21

 asin2$53:
	; push float x_nplus1
	fld qword [rbp + 32]

 asin2$54:
	; return x_nplus1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin2$55:
	; errno = int4$6#
	mov dword [errno], 6

 asin2$56:
	; push float float8$0#
	fldz

 asin2$57:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin2$58:
	; function end asin2

 acos2:
	; push float v
	fld qword [rbp + 24]

 acos2$1:
	; push float float8$1#
	fld1

 acos2$2:
	; if v != float8$1# goto 5
	fcompp
	fstsw ax
	sahf
	jne acos2$5

 acos2$3:
	; push float float8$0#
	fldz

 acos2$4:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos2$5:
	; call header integral zero 0 stack zero 0

 acos2$6:
	; push float v
	fld qword [rbp + 24]

 acos2$7:
	; parameter v, offset 56
	fstp qword [rbp + 56]

 acos2$8:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], acos2$9
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 acos2$9:
	; post call

 acos2$10:
	; £temporary572 = return_value

 acos2$11:
	; push float float8$1#
	fld1

 acos2$12:
	; if £temporary572 > float8$1# goto 54
	fcompp
	fstsw ax
	sahf
	jb acos2$54

 acos2$13:
	; push float float8$1#
	fld1

 acos2$14:
	; top float x_nplus1
	fst qword [rbp + 32]

 acos2$15:
	; top float x_n
	fst qword [rbp + 40]

 acos2$16:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 48]

 acos2$17:
	; push float x_n
	fld qword [rbp + 40]

 acos2$18:
	; parameter x_n, offset 72
	fstp qword [rbp + 80]

 acos2$19:
	; call function noellipse-noellipse cos
	mov qword [rbp + 56], acos2$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp cos

 acos2$20:
	; post call
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 acos2$21:
	; £temporary574 = return_value

 acos2$22:
	; push float v
	fld qword [rbp + 24]

 acos2$23:
	; £temporary575 = £temporary574 - v
	fsub

 acos2$24:
	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

 acos2$25:
	; push float x_n
	fld qword [rbp + 40]

 acos2$26:
	; parameter x_n, offset 72
	fstp qword [rbp + 88]

 acos2$27:
	; call function noellipse-noellipse sin
	mov qword [rbp + 64], acos2$28
	mov [rbp + 72], rbp
	add rbp, 64
	jmp sin

 acos2$28:
	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

 acos2$29:
	; £temporary576 = return_value

 acos2$30:
	; £temporary577 = £temporary575 / £temporary576
	fdiv

 acos2$31:
	; £temporary578 = x_n + £temporary577
	fadd

 acos2$32:
	; pop float x_nplus1
	fstp qword [rbp + 32]

 acos2$33:
	; call header integral zero 0 stack zero 0

 acos2$34:
	; parameter string_x_n2025f2C20x_nplus12025f0A#, offset 72
	mov qword [rbp + 72], string_x_n2025f2C20x_nplus12025f0A#

 acos2$35:
	; push float x_n
	fld qword [rbp + 40]

 acos2$36:
	; parameter x_n, offset 80
	fstp qword [rbp + 80]

 acos2$37:
	; push float x_nplus1
	fld qword [rbp + 32]

 acos2$38:
	; parameter x_nplus1, offset 88
	fstp qword [rbp + 88]

 acos2$39:
	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 48], acos2$40
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

 acos2$40:
	; post call

 acos2$41:
	; check track map float stack

 acos2$42:
	; call header integral zero 0 stack zero 0

 acos2$43:
	; push float x_nplus1
	fld qword [rbp + 32]

 acos2$44:
	; push float x_n
	fld qword [rbp + 40]

 acos2$45:
	; £temporary580 = x_nplus1 - x_n
	fsub

 acos2$46:
	; parameter £temporary580, offset 72
	fstp qword [rbp + 72]

 acos2$47:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], acos2$48
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 acos2$48:
	; post call

 acos2$49:
	; £temporary581 = return_value

 acos2$50:
	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

 acos2$51:
	; if £temporary581 >= float8$0.000000001# goto 15
	fcompp
	fstsw ax
	sahf
	jbe acos2$15

 acos2$52:
	; push float x_nplus1
	fld qword [rbp + 32]

 acos2$53:
	; return x_nplus1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos2$54:
	; errno = int4$6#
	mov dword [errno], 6

 acos2$55:
	; push float float8$0#
	fldz

 acos2$56:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos2$57:
	; function end acos2

 square:
	; push float x
	fld qword [rbp + 24]

 square$1:
	; push float x
	fld qword [rbp + 24]

 square$2:
	; £temporary589 = x * x
	fmul

 square$3:
	; return £temporary589
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 square$4:
	; function end square

 atan:
	; push float x
	fld qword [rbp + 24]

 atan$1:
	; push float float8$0#
	fldz

 atan$2:
	; if x != float8$0# goto 5
	fcompp
	fstsw ax
	sahf
	jne atan$5

 atan$3:
	; push float float8$0#
	fldz

 atan$4:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$5:
	; push float x
	fld qword [rbp + 24]

 atan$6:
	; push float float8$1#
	fld1

 atan$7:
	; if x != float8$1# goto 10
	fcompp
	fstsw ax
	sahf
	jne atan$10

 atan$8:
	; push float float8$0.7853981633974483096#
	fld qword [float8$0.7853981633974483096#]

 atan$9:
	; return float8$0.7853981633974483096#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$10:
	; push float x
	fld qword [rbp + 24]

 atan$11:
	; push float float8$minus1#
	fld qword [float8$minus1#]

 atan$12:
	; if x != float8$minus1# goto 15
	fcompp
	fstsw ax
	sahf
	jne atan$15

 atan$13:
	; push float float8$minus0.7853981633974483096#
	fld qword [float8$minus0.7853981633974483096#]

 atan$14:
	; return float8$minus0.7853981633974483096#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$15:
	; push float float8$1#
	fld1

 atan$16:
	; pop float sign
	fstp qword [rbp + 32]

 atan$17:
	; push float float8$1#
	fld1

 atan$18:
	; pop float denominator
	fstp qword [rbp + 40]

 atan$19:
	; push float x
	fld qword [rbp + 24]

 atan$20:
	; pop float product
	fstp qword [rbp + 48]

 atan$21:
	; push float float8$0#
	fldz

 atan$22:
	; pop float sum
	fstp qword [rbp + 64]

 atan$23:
	; count = int4$0#
	mov dword [rbp + 72], 0

 atan$24:
	; push float sign
	fld qword [rbp + 32]

 atan$25:
	; push float product
	fld qword [rbp + 48]

 atan$26:
	; £temporary593 = sign * product
	fmul

 atan$27:
	; push float denominator
	fld qword [rbp + 40]

 atan$28:
	; £temporary594 = £temporary593 / denominator
	fdiv

 atan$29:
	; pop float term
	fstp qword [rbp + 56]

 atan$30:
	; push float sum
	fld qword [rbp + 64]

 atan$31:
	; push float term
	fld qword [rbp + 56]

 atan$32:
	; £temporary595 = sum + term
	fadd

 atan$33:
	; pop float sum
	fstp qword [rbp + 64]

 atan$34:
	; push float sign
	fld qword [rbp + 32]

 atan$35:
	; £temporary596 = -sign
	fchs

 atan$36:
	; pop float sign
	fstp qword [rbp + 32]

 atan$37:
	; push float product
	fld qword [rbp + 48]

 atan$38:
	; push float x
	fld qword [rbp + 24]

 atan$39:
	; push float x
	fld qword [rbp + 24]

 atan$40:
	; £temporary597 = x * x
	fmul

 atan$41:
	; £temporary598 = product * £temporary597
	fmul

 atan$42:
	; pop float product
	fstp qword [rbp + 48]

 atan$43:
	; push float denominator
	fld qword [rbp + 40]

 atan$44:
	; push float float8$2#
	fld qword [float8$2#]

 atan$45:
	; £temporary599 = denominator + float8$2#
	fadd

 atan$46:
	; pop float denominator
	fstp qword [rbp + 40]

 atan$47:
	; check track map float stack

 atan$48:
	; £temporary600 = count + int4$1#
	mov eax, [rbp + 72]
	inc eax

 atan$49:
	; if £temporary600 >= int4$1000# goto 58
	cmp eax, 1000
	jge atan$58

 atan$50:
	; call header integral zero 0 stack zero 0

 atan$51:
	; push float term
	fld qword [rbp + 56]

 atan$52:
	; parameter term, offset 100
	fstp qword [rbp + 100]

 atan$53:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 76], atan$54
	mov [rbp + 84], rbp
	add rbp, 76
	jmp fabs

 atan$54:
	; post call

 atan$55:
	; £temporary602 = return_value

 atan$56:
	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

 atan$57:
	; if £temporary602 >= float8$0.000000001# goto 24
	fcompp
	fstsw ax
	sahf
	jbe atan$24

 atan$58:
	; push float sum
	fld qword [rbp + 64]

 atan$59:
	; return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$60:
	; function end atan

 atanY:
	; push float v
	fld qword [rbp + 24]

 atanY$1:
	; push float float8$0#
	fldz

 atanY$2:
	; if v != float8$0# goto 5
	fcompp
	fstsw ax
	sahf
	jne atanY$5

 atanY$3:
	; push float float8$0#
	fldz

 atanY$4:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$5:
	; push float v
	fld qword [rbp + 24]

 atanY$6:
	; push float float8$1#
	fld1

 atanY$7:
	; if v != float8$1# goto 10
	fcompp
	fstsw ax
	sahf
	jne atanY$10

 atanY$8:
	; push float float8$0.7853981633974483096#
	fld qword [float8$0.7853981633974483096#]

 atanY$9:
	; return float8$0.7853981633974483096#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$10:
	; push float v
	fld qword [rbp + 24]

 atanY$11:
	; push float float8$minus1#
	fld qword [float8$minus1#]

 atanY$12:
	; if v != float8$minus1# goto 15
	fcompp
	fstsw ax
	sahf
	jne atanY$15

 atanY$13:
	; push float float8$minus0.7853981633974483096#
	fld qword [float8$minus0.7853981633974483096#]

 atanY$14:
	; return float8$minus0.7853981633974483096#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$15:
	; call header integral zero 0 stack zero 0

 atanY$16:
	; push float v
	fld qword [rbp + 24]

 atanY$17:
	; parameter v, offset 56
	fstp qword [rbp + 56]

 atanY$18:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], atanY$19
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 atanY$19:
	; post call

 atanY$20:
	; £temporary609 = return_value

 atanY$21:
	; push float float8$0.5#
	fld qword [float8$0.5#]

 atanY$22:
	; if £temporary609 >= float8$0.5# goto 62
	fcompp
	fstsw ax
	sahf
	jbe atanY$62

 atanY$23:
	; sign = int4$1#
	mov dword [rbp + 32], 1

 atanY$24:
	; denominator = int4$1#
	mov dword [rbp + 36], 1

 atanY$25:
	; count = int4$0#
	mov dword [rbp + 40], 0

 atanY$26:
	; push float v
	fld qword [rbp + 24]

 atanY$27:
	; pop float product
	fstp qword [rbp + 44]

 atanY$28:
	; push float float8$0#
	fldz

 atanY$29:
	; pop float sum
	fstp qword [rbp + 60]

 atanY$30:
	; £temporary611 = int_to_float sign (Signed_Int -> Double)
	fild word [rbp + 32]

 atanY$31:
	; push float product
	fld qword [rbp + 44]

 atanY$32:
	; £temporary612 = £temporary611 * product
	fmul

 atanY$33:
	; £temporary613 = int_to_float denominator (Signed_Int -> Double)
	fild word [rbp + 36]

 atanY$34:
	; £temporary614 = £temporary612 / £temporary613
	fdiv

 atanY$35:
	; pop float term
	fstp qword [rbp + 52]

 atanY$36:
	; push float sum
	fld qword [rbp + 60]

 atanY$37:
	; push float term
	fld qword [rbp + 52]

 atanY$38:
	; £temporary615 = sum + term
	fadd

 atanY$39:
	; pop float sum
	fstp qword [rbp + 60]

 atanY$40:
	; £temporary616 = -sign
	mov eax, [rbp + 32]
	neg eax

 atanY$41:
	; sign = £temporary616
	mov [rbp + 32], eax

 atanY$42:
	; push float product
	fld qword [rbp + 44]

 atanY$43:
	; push float v
	fld qword [rbp + 24]

 atanY$44:
	; push float v
	fld qword [rbp + 24]

 atanY$45:
	; £temporary617 = v * v
	fmul

 atanY$46:
	; £temporary618 = product * £temporary617
	fmul

 atanY$47:
	; pop float product
	fstp qword [rbp + 44]

 atanY$48:
	; denominator = denominator + int4$2#
	add dword [rbp + 36], 2

 atanY$49:
	; check track map float stack

 atanY$50:
	; £temporary620 = count + int4$1#
	mov eax, [rbp + 40]
	inc eax

 atanY$51:
	; if £temporary620 >= int4$1000# goto 60
	cmp eax, 1000
	jge atanY$60

 atanY$52:
	; call header integral zero 0 stack zero 0

 atanY$53:
	; push float term
	fld qword [rbp + 52]

 atanY$54:
	; parameter term, offset 92
	fstp qword [rbp + 92]

 atanY$55:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 68], atanY$56
	mov [rbp + 76], rbp
	add rbp, 68
	jmp fabs

 atanY$56:
	; post call

 atanY$57:
	; £temporary622 = return_value

 atanY$58:
	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

 atanY$59:
	; if £temporary622 >= float8$0.000000001# goto 30
	fcompp
	fstsw ax
	sahf
	jbe atanY$30

 atanY$60:
	; push float sum
	fld qword [rbp + 60]

 atanY$61:
	; return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$62:
	; call header integral zero 0 stack zero 0

 atanY$63:
	; push float v
	fld qword [rbp + 24]

 atanY$64:
	; parameter v, offset 56
	fstp qword [rbp + 56]

 atanY$65:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], atanY$66
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 atanY$66:
	; post call

 atanY$67:
	; £temporary625 = return_value

 atanY$68:
	; push float float8$1#
	fld1

 atanY$69:
	; if £temporary625 >= float8$1# goto 130
	fcompp
	fstsw ax
	sahf
	jbe atanY$130

 atanY$70:
	; call header integral zero 0 stack zero 0

 atanY$71:
	; parameter string_atan2050A#, offset 56
	mov qword [rbp + 56], string_atan2050A#

 atanY$72:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 32], atanY$73
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 atanY$73:
	; post call

 atanY$74:
	; push float float8$1#
	fld1

 atanY$75:
	; top float x_nplus1
	fst qword [rbp + 32]

 atanY$76:
	; top float x
	fst qword [rbp + 40]

 atanY$77:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 48]

 atanY$78:
	; push float x
	fld qword [rbp + 40]

 atanY$79:
	; parameter x, offset 72
	fstp qword [rbp + 80]

 atanY$80:
	; call function noellipse-noellipse tan
	mov qword [rbp + 56], atanY$81
	mov [rbp + 64], rbp
	add rbp, 56
	jmp tan

 atanY$81:
	; post call
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 atanY$82:
	; £temporary628 = return_value

 atanY$83:
	; push float v
	fld qword [rbp + 24]

 atanY$84:
	; £temporary629 = £temporary628 - v
	fsub

 atanY$85:
	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

 atanY$86:
	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

 atanY$87:
	; push float float8$2#
	fld qword [float8$2#]

 atanY$88:
	; push float x
	fld qword [rbp + 40]

 atanY$89:
	; £temporary630 = float8$2# * x
	fmul

 atanY$90:
	; parameter £temporary630, offset 72
	fstp qword [rbp + 104]

 atanY$91:
	; call function noellipse-noellipse cos
	mov qword [rbp + 80], atanY$92
	mov [rbp + 88], rbp
	add rbp, 80
	jmp cos

 atanY$92:
	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

 atanY$93:
	; £temporary631 = return_value

 atanY$94:
	; push float float8$1#
	fld1

 atanY$95:
	; £temporary632 = £temporary631 + float8$1#
	fadd

 atanY$96:
	; parameter £temporary632, offset 72
	fstp qword [rbp + 88]

 atanY$97:
	; call function noellipse-noellipse square
	mov qword [rbp + 64], atanY$98
	mov [rbp + 72], rbp
	add rbp, 64
	jmp square

 atanY$98:
	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

 atanY$99:
	; £temporary633 = return_value

 atanY$100:
	; £temporary634 = £temporary629 * £temporary633
	fmul

 atanY$101:
	; push float float8$2#
	fld qword [float8$2#]

 atanY$102:
	; £temporary635 = £temporary634 / float8$2#
	fdiv

 atanY$103:
	; £temporary636 = x - £temporary635
	fsub

 atanY$104:
	; pop float x_nplus1
	fstp qword [rbp + 32]

 atanY$105:
	; call header integral zero 0 stack zero 0

 atanY$106:
	; parameter string_atan20x2025f20x_nplus12025f0A#, offset 72
	mov qword [rbp + 72], string_atan20x2025f20x_nplus12025f0A#

 atanY$107:
	; push float x
	fld qword [rbp + 40]

 atanY$108:
	; parameter x, offset 80
	fstp qword [rbp + 80]

 atanY$109:
	; push float x_nplus1
	fld qword [rbp + 32]

 atanY$110:
	; parameter x_nplus1, offset 88
	fstp qword [rbp + 88]

 atanY$111:
	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 48], atanY$112
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

 atanY$112:
	; post call

 atanY$113:
	; check track map float stack

 atanY$114:
	; call header integral zero 0 stack zero 0

 atanY$115:
	; push float x_nplus1
	fld qword [rbp + 32]

 atanY$116:
	; push float x
	fld qword [rbp + 40]

 atanY$117:
	; £temporary638 = x_nplus1 - x
	fsub

 atanY$118:
	; parameter £temporary638, offset 72
	fstp qword [rbp + 72]

 atanY$119:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], atanY$120
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 atanY$120:
	; post call

 atanY$121:
	; £temporary639 = return_value

 atanY$122:
	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

 atanY$123:
	; if £temporary639 >= float8$0.000000001# goto 76
	fcompp
	fstsw ax
	sahf
	jbe atanY$76

 atanY$124:
	; call header integral zero 0 stack zero 0

 atanY$125:
	; parameter string_atan2070A#, offset 72
	mov qword [rbp + 72], string_atan2070A#

 atanY$126:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 48], atanY$127
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 atanY$127:
	; post call

 atanY$128:
	; push float x_nplus1
	fld qword [rbp + 32]

 atanY$129:
	; return x_nplus1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$130:
	; errno = int4$6#
	mov dword [errno], 6

 atanY$131:
	; push float float8$0#
	fldz

 atanY$132:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanY$133:
	; function end atanY

 atanX:
	; push float v
	fld qword [rbp + 24]

 atanX$1:
	; push float float8$0#
	fldz

 atanX$2:
	; if v != float8$0# goto 5
	fcompp
	fstsw ax
	sahf
	jne atanX$5

 atanX$3:
	; push float float8$0#
	fldz

 atanX$4:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanX$5:
	; call header integral zero 0 stack zero 0

 atanX$6:
	; push float v
	fld qword [rbp + 24]

 atanX$7:
	; parameter v, offset 56
	fstp qword [rbp + 56]

 atanX$8:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 32], atanX$9
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 atanX$9:
	; post call

 atanX$10:
	; £temporary652 = return_value

 atanX$11:
	; push float float8$1#
	fld1

 atanX$12:
	; if £temporary652 > float8$1# goto 57
	fcompp
	fstsw ax
	sahf
	jb atanX$57

 atanX$13:
	; push float float8$1#
	fld1

 atanX$14:
	; top float x_nplus1
	fst qword [rbp + 32]

 atanX$15:
	; top float x
	fst qword [rbp + 40]

 atanX$16:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 48]

 atanX$17:
	; push float x
	fld qword [rbp + 40]

 atanX$18:
	; parameter x, offset 72
	fstp qword [rbp + 80]

 atanX$19:
	; call function noellipse-noellipse tan
	mov qword [rbp + 56], atanX$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp tan

 atanX$20:
	; post call
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 atanX$21:
	; £temporary654 = return_value

 atanX$22:
	; push float v
	fld qword [rbp + 24]

 atanX$23:
	; £temporary655 = £temporary654 - v
	fsub

 atanX$24:
	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

 atanX$25:
	; call header integral zero 0 stack no zero 2
	fstp qword [rbp + 48]
	fstp qword [rbp + 56]

 atanX$26:
	; push float float8$2#
	fld qword [float8$2#]

 atanX$27:
	; push float x
	fld qword [rbp + 40]

 atanX$28:
	; £temporary656 = float8$2# * x
	fmul

 atanX$29:
	; parameter £temporary656, offset 72
	fstp qword [rbp + 104]

 atanX$30:
	; call function noellipse-noellipse cos
	mov qword [rbp + 80], atanX$31
	mov [rbp + 88], rbp
	add rbp, 80
	jmp cos

 atanX$31:
	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

 atanX$32:
	; £temporary657 = return_value

 atanX$33:
	; push float float8$1#
	fld1

 atanX$34:
	; £temporary658 = £temporary657 + float8$1#
	fadd

 atanX$35:
	; parameter £temporary658, offset 72
	fstp qword [rbp + 88]

 atanX$36:
	; call function noellipse-noellipse square
	mov qword [rbp + 64], atanX$37
	mov [rbp + 72], rbp
	add rbp, 64
	jmp square

 atanX$37:
	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 64]

 atanX$38:
	; £temporary659 = return_value

 atanX$39:
	; £temporary660 = £temporary655 * £temporary659
	fmul

 atanX$40:
	; push float float8$2#
	fld qword [float8$2#]

 atanX$41:
	; £temporary661 = £temporary660 / float8$2#
	fdiv

 atanX$42:
	; £temporary662 = x - £temporary661
	fsub

 atanX$43:
	; pop float x_nplus1
	fstp qword [rbp + 32]

 atanX$44:
	; check track map float stack

 atanX$45:
	; call header integral zero 0 stack zero 0

 atanX$46:
	; push float x_nplus1
	fld qword [rbp + 32]

 atanX$47:
	; push float x
	fld qword [rbp + 40]

 atanX$48:
	; £temporary663 = x_nplus1 - x
	fsub

 atanX$49:
	; parameter £temporary663, offset 72
	fstp qword [rbp + 72]

 atanX$50:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], atanX$51
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 atanX$51:
	; post call

 atanX$52:
	; £temporary664 = return_value

 atanX$53:
	; push float float8$0.000000001#
	fld qword [float8$0.000000001#]

 atanX$54:
	; if £temporary664 >= float8$0.000000001# goto 15
	fcompp
	fstsw ax
	sahf
	jbe atanX$15

 atanX$55:
	; push float x_nplus1
	fld qword [rbp + 32]

 atanX$56:
	; return x_nplus1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanX$57:
	; errno = int4$6#
	mov dword [errno], 6

 atanX$58:
	; push float float8$0#
	fldz

 atanX$59:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atanX$60:
	; function end atanX

 atan2:
	; push float x
	fld qword [rbp + 32]

 atan2$1:
	; push float float8$0#
	fldz

 atan2$2:
	; if x <= float8$0# goto 12
	fcompp
	fstsw ax
	sahf
	jae atan2$12

 atan2$3:
	; call header integral zero 0 stack zero 0

 atan2$4:
	; push float y
	fld qword [rbp + 24]

 atan2$5:
	; push float x
	fld qword [rbp + 32]

 atan2$6:
	; £temporary672 = y / x
	fdiv

 atan2$7:
	; parameter £temporary672, offset 64
	fstp qword [rbp + 64]

 atan2$8:
	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2$9
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan2$9:
	; post call

 atan2$10:
	; £temporary673 = return_value

 atan2$11:
	; return £temporary673
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$12:
	; push float x
	fld qword [rbp + 32]

 atan2$13:
	; push float float8$0#
	fldz

 atan2$14:
	; if x >= float8$0# goto 40
	fcompp
	fstsw ax
	sahf
	jbe atan2$40

 atan2$15:
	; push float y
	fld qword [rbp + 24]

 atan2$16:
	; push float float8$0#
	fldz

 atan2$17:
	; if y < float8$0# goto 29
	fcompp
	fstsw ax
	sahf
	ja atan2$29

 atan2$18:
	; call header integral zero 0 stack zero 0

 atan2$19:
	; push float y
	fld qword [rbp + 24]

 atan2$20:
	; push float x
	fld qword [rbp + 32]

 atan2$21:
	; £temporary676 = y / x
	fdiv

 atan2$22:
	; parameter £temporary676, offset 64
	fstp qword [rbp + 64]

 atan2$23:
	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2$24
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan2$24:
	; post call

 atan2$25:
	; £temporary677 = return_value

 atan2$26:
	; push float float8$3.1415926535897932384#
	fld qword [float8$3.1415926535897932384#]

 atan2$27:
	; £temporary678 = £temporary677 + float8$3.1415926535897932384#
	fadd

 atan2$28:
	; return £temporary678
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$29:
	; call header integral zero 0 stack zero 0

 atan2$30:
	; push float y
	fld qword [rbp + 24]

 atan2$31:
	; push float x
	fld qword [rbp + 32]

 atan2$32:
	; £temporary679 = y / x
	fdiv

 atan2$33:
	; parameter £temporary679, offset 64
	fstp qword [rbp + 64]

 atan2$34:
	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2$35
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan2$35:
	; post call

 atan2$36:
	; £temporary680 = return_value

 atan2$37:
	; push float float8$3.1415926535897932384#
	fld qword [float8$3.1415926535897932384#]

 atan2$38:
	; £temporary681 = £temporary680 - float8$3.1415926535897932384#
	fsub

 atan2$39:
	; return £temporary681
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$40:
	; push float y
	fld qword [rbp + 24]

 atan2$41:
	; push float float8$0#
	fldz

 atan2$42:
	; if y <= float8$0# goto 45
	fcompp
	fstsw ax
	sahf
	jae atan2$45

 atan2$43:
	; push float float8$1.5707963267948966192#
	fld qword [float8$1.5707963267948966192#]

 atan2$44:
	; return float8$1.5707963267948966192#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$45:
	; push float y
	fld qword [rbp + 24]

 atan2$46:
	; push float float8$0#
	fldz

 atan2$47:
	; if y >= float8$0# goto 50
	fcompp
	fstsw ax
	sahf
	jbe atan2$50

 atan2$48:
	; push float float8$minus1.5707963267948966192#
	fld qword [float8$minus1.5707963267948966192#]

 atan2$49:
	; return float8$minus1.5707963267948966192#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$50:
	; errno = int4$6#
	mov dword [errno], 6

 atan2$51:
	; push float float8$0#
	fldz

 atan2$52:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$53:
	; function end atan2

 atan2x:
	; push float denum
	fld qword [rbp + 32]

 atan2x$1:
	; push float float8$0#
	fldz

 atan2x$2:
	; if denum <= float8$0# goto 18
	fcompp
	fstsw ax
	sahf
	jae atan2x$18

 atan2x$3:
	; call header integral zero 0 stack zero 0

 atan2x$4:
	; push float num
	fld qword [rbp + 24]

 atan2x$5:
	; push float denum
	fld qword [rbp + 32]

 atan2x$6:
	; £temporary688 = num / denum
	fdiv

 atan2x$7:
	; parameter £temporary688, offset 64
	fstp qword [rbp + 64]

 atan2x$8:
	; call function noellipse-noellipse atan
	mov qword [rbp + 40], atan2x$9
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan2x$9:
	; post call

 atan2x$10:
	; £temporary689 = return_value

 atan2x$11:
	; pop float y
	fstp qword [rbp + 40]

 atan2x$12:
	; call header integral zero 0 stack zero 0

 atan2x$13:
	; parameter string_20A#, offset 72
	mov qword [rbp + 72], string_20A#

 atan2x$14:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 48], atan2x$15
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 atan2x$15:
	; post call

 atan2x$16:
	; push float y
	fld qword [rbp + 40]

 atan2x$17:
	; return y
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$18:
	; push float num
	fld qword [rbp + 24]

 atan2x$19:
	; push float float8$0#
	fldz

 atan2x$20:
	; if num < float8$0# goto 39
	fcompp
	fstsw ax
	sahf
	ja atan2x$39

 atan2x$21:
	; push float denum
	fld qword [rbp + 32]

 atan2x$22:
	; push float float8$0#
	fldz

 atan2x$23:
	; if denum >= float8$0# goto 39
	fcompp
	fstsw ax
	sahf
	jbe atan2x$39

 atan2x$24:
	; call header integral zero 0 stack zero 0

 atan2x$25:
	; parameter string_20A#, offset 64
	mov qword [rbp + 64], string_20A#

 atan2x$26:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], atan2x$27
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 atan2x$27:
	; post call

 atan2x$28:
	; push float float8$3.1415926535897932384#
	fld qword [float8$3.1415926535897932384#]

 atan2x$29:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

 atan2x$30:
	; push float num
	fld qword [rbp + 24]

 atan2x$31:
	; push float denum
	fld qword [rbp + 32]

 atan2x$32:
	; £temporary695 = num / denum
	fdiv

 atan2x$33:
	; parameter £temporary695, offset 64
	fstp qword [rbp + 72]

 atan2x$34:
	; call function noellipse-noellipse atan
	mov qword [rbp + 48], atan2x$35
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

 atan2x$35:
	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 atan2x$36:
	; £temporary696 = return_value

 atan2x$37:
	; £temporary697 = float8$3.1415926535897932384# + £temporary696
	fadd

 atan2x$38:
	; return £temporary697
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$39:
	; push float num
	fld qword [rbp + 24]

 atan2x$40:
	; push float float8$0#
	fldz

 atan2x$41:
	; if num >= float8$0# goto 60
	fcompp
	fstsw ax
	sahf
	jbe atan2x$60

 atan2x$42:
	; push float denum
	fld qword [rbp + 32]

 atan2x$43:
	; push float float8$0#
	fldz

 atan2x$44:
	; if denum >= float8$0# goto 60
	fcompp
	fstsw ax
	sahf
	jbe atan2x$60

 atan2x$45:
	; call header integral zero 0 stack zero 0

 atan2x$46:
	; parameter string_30A#, offset 64
	mov qword [rbp + 64], string_30A#

 atan2x$47:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], atan2x$48
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 atan2x$48:
	; post call

 atan2x$49:
	; push float float8$minus3.1415926535897932384#
	fld qword [float8$minus3.1415926535897932384#]

 atan2x$50:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 40]

 atan2x$51:
	; push float num
	fld qword [rbp + 24]

 atan2x$52:
	; push float denum
	fld qword [rbp + 32]

 atan2x$53:
	; £temporary702 = num / denum
	fdiv

 atan2x$54:
	; parameter £temporary702, offset 64
	fstp qword [rbp + 72]

 atan2x$55:
	; call function noellipse-noellipse atan
	mov qword [rbp + 48], atan2x$56
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

 atan2x$56:
	; post call
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 atan2x$57:
	; £temporary703 = return_value

 atan2x$58:
	; £temporary704 = float8$minus3.1415926535897932384# + £temporary703
	fadd

 atan2x$59:
	; return £temporary704
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$60:
	; push float num
	fld qword [rbp + 24]

 atan2x$61:
	; push float float8$0#
	fldz

 atan2x$62:
	; if num <= float8$0# goto 72
	fcompp
	fstsw ax
	sahf
	jae atan2x$72

 atan2x$63:
	; push float denum
	fld qword [rbp + 32]

 atan2x$64:
	; push float float8$0#
	fldz

 atan2x$65:
	; if denum != float8$0# goto 72
	fcompp
	fstsw ax
	sahf
	jne atan2x$72

 atan2x$66:
	; call header integral zero 0 stack zero 0

 atan2x$67:
	; parameter string_40A#, offset 64
	mov qword [rbp + 64], string_40A#

 atan2x$68:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], atan2x$69
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 atan2x$69:
	; post call

 atan2x$70:
	; push float float8$1.5707963267948966192#
	fld qword [float8$1.5707963267948966192#]

 atan2x$71:
	; return float8$1.5707963267948966192#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$72:
	; push float num
	fld qword [rbp + 24]

 atan2x$73:
	; push float float8$0#
	fldz

 atan2x$74:
	; if num >= float8$0# goto 84
	fcompp
	fstsw ax
	sahf
	jbe atan2x$84

 atan2x$75:
	; push float denum
	fld qword [rbp + 32]

 atan2x$76:
	; push float float8$0#
	fldz

 atan2x$77:
	; if denum != float8$0# goto 84
	fcompp
	fstsw ax
	sahf
	jne atan2x$84

 atan2x$78:
	; call header integral zero 0 stack zero 0

 atan2x$79:
	; parameter string_50A#, offset 64
	mov qword [rbp + 64], string_50A#

 atan2x$80:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], atan2x$81
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 atan2x$81:
	; post call

 atan2x$82:
	; push float float8$minus1.5707963267948966192#
	fld qword [float8$minus1.5707963267948966192#]

 atan2x$83:
	; return float8$minus1.5707963267948966192#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$84:
	; call header integral zero 0 stack zero 0

 atan2x$85:
	; parameter string_60A#, offset 64
	mov qword [rbp + 64], string_60A#

 atan2x$86:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], atan2x$87
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 atan2x$87:
	; post call

 atan2x$88:
	; errno = int4$6#
	mov dword [errno], 6

 atan2x$89:
	; push float float8$0#
	fldz

 atan2x$90:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2x$91:
	; function end atan2x

 floor:
	; push float x
	fld qword [rbp + 24]

 floor$1:
	; push float float8$0#
	fldz

 floor$2:
	; if x >= float8$0# goto 12
	fcompp
	fstsw ax
	sahf
	jbe floor$12

 floor$3:
	; call header integral zero 0 stack zero 0

 floor$4:
	; push float x
	fld qword [rbp + 24]

 floor$5:
	; £temporary718 = -x
	fchs

 floor$6:
	; parameter £temporary718, offset 56
	fstp qword [rbp + 56]

 floor$7:
	; call function noellipse-noellipse ceil
	mov qword [rbp + 32], floor$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp ceil

 floor$8:
	; post call

 floor$9:
	; £temporary719 = return_value

 floor$10:
	; £temporary720 = -£temporary719
	fchs

 floor$11:
	; return £temporary720
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$12:
	; push float x
	fld qword [rbp + 24]

 floor$13:
	; £temporary721 = float_to_int x (Double -> Signed_Long_Int)
	fistp dword [container8bytes#]
	mov rax, [container8bytes#]

 floor$14:
	; £temporary722 = int_to_float £temporary721 (Signed_Long_Int -> Double)
	mov [container8bytes#], rax
	fild dword [container8bytes#]

 floor$15:
	; return £temporary722
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$16:
	; function end floor

 ceil:
	; push float x
	fld qword [rbp + 24]

 ceil$1:
	; push float float8$0#
	fldz

 ceil$2:
	; if x >= float8$0# goto 12
	fcompp
	fstsw ax
	sahf
	jbe ceil$12

 ceil$3:
	; call header integral zero 0 stack zero 0

 ceil$4:
	; push float x
	fld qword [rbp + 24]

 ceil$5:
	; £temporary725 = -x
	fchs

 ceil$6:
	; parameter £temporary725, offset 56
	fstp qword [rbp + 56]

 ceil$7:
	; call function noellipse-noellipse floor
	mov qword [rbp + 32], ceil$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp floor

 ceil$8:
	; post call

 ceil$9:
	; £temporary726 = return_value

 ceil$10:
	; £temporary727 = -£temporary726
	fchs

 ceil$11:
	; return £temporary727
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ceil$12:
	; push float x
	fld qword [rbp + 24]

 ceil$13:
	; push float float8$0.999999999999#
	fld qword [float8$0.999999999999#]

 ceil$14:
	; £temporary728 = x + float8$0.999999999999#
	fadd

 ceil$15:
	; £temporary729 = float_to_int £temporary728 (Double -> Signed_Long_Int)
	fistp dword [container8bytes#]
	mov rax, [container8bytes#]

 ceil$16:
	; £temporary730 = int_to_float £temporary729 (Signed_Long_Int -> Double)
	mov [container8bytes#], rax
	fild dword [container8bytes#]

 ceil$17:
	; return £temporary730
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ceil$18:
	; function end ceil

 round:
	; push float x
	fld qword [rbp + 24]

 round$1:
	; push float float8$0#
	fldz

 round$2:
	; if x >= float8$0# goto 8
	fcompp
	fstsw ax
	sahf
	jbe round$8

 round$3:
	; push float x
	fld qword [rbp + 24]

 round$4:
	; push float float8$0.5#
	fld qword [float8$0.5#]

 round$5:
	; £temporary733 = x - float8$0.5#
	fsub

 round$6:
	; decrease stack

 round$7:
	; goto 11
	jmp round$11

 round$8:
	; push float x
	fld qword [rbp + 24]

 round$9:
	; push float float8$0.5#
	fld qword [float8$0.5#]

 round$10:
	; £temporary734 = x + float8$0.5#
	fadd

 round$11:
	; £temporary736 = float_to_int £temporary735 (Double -> Signed_Long_Int)
	fistp dword [container8bytes#]
	mov rax, [container8bytes#]

 round$12:
	; £temporary737 = int_to_float £temporary736 (Signed_Long_Int -> Double)
	mov [container8bytes#], rax
	fild dword [container8bytes#]

 round$13:
	; return £temporary737
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 round$14:
	; function end round

 fabs:
	; push float x
	fld qword [rbp + 24]

 fabs$1:
	; push float float8$0#
	fldz

 fabs$2:
	; if x >= float8$0# goto 7
	fcompp
	fstsw ax
	sahf
	jbe fabs$7

 fabs$3:
	; push float x
	fld qword [rbp + 24]

 fabs$4:
	; £temporary739 = -x
	fchs

 fabs$5:
	; decrease stack

 fabs$6:
	; goto 8
	jmp fabs$8

 fabs$7:
	; push float x
	fld qword [rbp + 24]

 fabs$8:
	; return £temporary740
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fabs$9:
	; function end fabs

 modf:
	; call header integral zero 0 stack zero 0

 modf$1:
	; push float x
	fld qword [rbp + 24]

 modf$2:
	; parameter x, offset 64
	fstp qword [rbp + 64]

 modf$3:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 40], modf$4
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

 modf$4:
	; post call

 modf$5:
	; £temporary741 = return_value

 modf$6:
	; £temporary742 = float_to_int £temporary741 (Double -> Signed_Long_Int)
	fistp dword [container8bytes#]
	mov rax, [container8bytes#]

 modf$7:
	; £temporary743 = int_to_float £temporary742 (Signed_Long_Int -> Double)
	mov [container8bytes#], rax
	fild dword [container8bytes#]

 modf$8:
	; pop float integral
	fstp qword [rbp + 40]

 modf$9:
	; if p == int8$0# goto 34
	cmp qword [rbp + 32], 0
	je modf$34

 modf$10:
	; £field745 -> p = *p
	mov rsi, [rbp + 32]

 modf$11:
	; push float x
	fld qword [rbp + 24]

 modf$12:
	; push float float8$0#
	fldz

 modf$13:
	; if x <= float8$0# goto 24
	fcompp
	fstsw ax
	sahf
	jae modf$24

 modf$14:
	; call header integral no zero 1 stack zero 0
	mov [rbp + 48], rsi

 modf$15:
	; push float x
	fld qword [rbp + 24]

 modf$16:
	; parameter x, offset 72
	fstp qword [rbp + 80]

 modf$17:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 56], modf$18
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fabs

 modf$18:
	; post call
	mov rsi, [rbp + 48]

 modf$19:
	; £temporary747 = return_value

 modf$20:
	; push float integral
	fld qword [rbp + 40]

 modf$21:
	; £temporary748 = £temporary747 - integral
	fsub

 modf$22:
	; decrease stack

 modf$23:
	; goto 33
	jmp modf$33

 modf$24:
	; call header integral no zero 1 stack zero 0
	mov [rbp + 48], rsi

 modf$25:
	; push float x
	fld qword [rbp + 24]

 modf$26:
	; parameter x, offset 72
	fstp qword [rbp + 80]

 modf$27:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 56], modf$28
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fabs

 modf$28:
	; post call
	mov rsi, [rbp + 48]

 modf$29:
	; £temporary749 = return_value

 modf$30:
	; push float integral
	fld qword [rbp + 40]

 modf$31:
	; £temporary750 = £temporary749 - integral
	fsub

 modf$32:
	; £temporary751 = -£temporary750
	fchs

 modf$33:
	; pop float £field745 -> p
	fstp qword [rsi]

 modf$34:
	; push float x
	fld qword [rbp + 24]

 modf$35:
	; push float float8$0#
	fldz

 modf$36:
	; if x <= float8$0# goto 40
	fcompp
	fstsw ax
	sahf
	jae modf$40

 modf$37:
	; push float integral
	fld qword [rbp + 40]

 modf$38:
	; decrease stack

 modf$39:
	; goto 42
	jmp modf$42

 modf$40:
	; push float integral
	fld qword [rbp + 40]

 modf$41:
	; £temporary754 = -integral
	fchs

 modf$42:
	; return £temporary755
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 modf$43:
	; function end modf

 fmod:
	; push float y
	fld qword [rbp + 32]

 fmod$1:
	; push float float8$0#
	fldz

 fmod$2:
	; if y == float8$0# goto 27
	fcompp
	fstsw ax
	sahf
	je fmod$27

 fmod$3:
	; push float x
	fld qword [rbp + 24]

 fmod$4:
	; push float y
	fld qword [rbp + 32]

 fmod$5:
	; £temporary760 = x / y
	fdiv

 fmod$6:
	; pop float quotient
	fstp qword [rbp + 40]

 fmod$7:
	; call header integral zero 0 stack zero 0

 fmod$8:
	; push float quotient
	fld qword [rbp + 40]

 fmod$9:
	; push float quotient
	fld qword [rbp + 40]

 fmod$10:
	; £temporary761 = float_to_int quotient (Double -> Signed_Long_Int)
	fistp dword [container8bytes#]
	mov rax, [container8bytes#]

 fmod$11:
	; £temporary762 = int_to_float £temporary761 (Signed_Long_Int -> Double)
	mov [container8bytes#], rax
	fild dword [container8bytes#]

 fmod$12:
	; £temporary763 = quotient - £temporary762
	fsub

 fmod$13:
	; parameter £temporary763, offset 72
	fstp qword [rbp + 72]

 fmod$14:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 48], fmod$15
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 fmod$15:
	; post call

 fmod$16:
	; £temporary764 = return_value

 fmod$17:
	; pop float remainder
	fstp qword [rbp + 48]

 fmod$18:
	; push float x
	fld qword [rbp + 24]

 fmod$19:
	; push float float8$0#
	fldz

 fmod$20:
	; if x <= float8$0# goto 24
	fcompp
	fstsw ax
	sahf
	jae fmod$24

 fmod$21:
	; push float remainder
	fld qword [rbp + 48]

 fmod$22:
	; decrease stack

 fmod$23:
	; goto 26
	jmp fmod$26

 fmod$24:
	; push float remainder
	fld qword [rbp + 48]

 fmod$25:
	; £temporary766 = -remainder
	fchs

 fmod$26:
	; return £temporary767
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fmod$27:
	; errno = int4$6#
	mov dword [errno], 6

 fmod$28:
	; push float float8$0#
	fldz

 fmod$29:
	; return float8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fmod$30:
	; function end fmod
section .data

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

container4bytes#:
	; initializer zero 4
	times 4 db 0

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

container8bytes#:
	; initializer zero 8
	times 8 db 0

float8$0.999999999999#:
	; initializer Double
	dq 0.999999999999
