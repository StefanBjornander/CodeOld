	global islower
	global islowerX
	global isupperX
	global isupper
	global isalpha
	global isdigit
	global isalnum
	global isxdigit
	global isgraph
	global isprint
	global ispunct
	global iscntrl
	global isspace
	global tolowerX
	global tolower
	global toupperX
	global toupper

	extern localeconv
	extern strchr
	extern $StackTop
section .text

 islower:
	; call header integral zero 0 stack zero 0

 islower$1:
	; call function noellipse-noellipse localeconv
	mov qword [rbp + 28], islower$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 islower$2:
	; post call

 islower$3:
	; £temporary223 = return_value

 islower$4:
	; localeConvPtr = £temporary223
	mov [rbp + 28], rbx

 islower$5:
	; if localeConvPtr == int8$0# goto 18
	cmp qword [rbp + 28], 0
	je islower$18

 islower$6:
	; call header integral zero 0 stack zero 0

 islower$7:
	; £field225 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

 islower$8:
	; parameter £field225 -> localeConvPtr, offset 60
	mov rax, [rsi + 40]
	mov [rbp + 60], rax

 islower$9:
	; parameter c, offset 68
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 islower$10:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 36], islower$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

 islower$11:
	; post call

 islower$12:
	; £temporary226 = return_value

 islower$13:
	; if £temporary226 == int8$0# goto 16
	cmp rbx, 0
	je islower$16

 islower$14:
	; £temporary228 = int4$1#
	mov ebx, 1

 islower$15:
	; goto 17
	jmp islower$17

 islower$16:
	; £temporary228 = int4$0#
	mov ebx, 0

 islower$17:
	; return £temporary228
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$18:
	; if c < int4$97# goto 22
	cmp dword [rbp + 24], 97
	jl islower$22

 islower$19:
	; if c > int4$122# goto 22
	cmp dword [rbp + 24], 122
	jg islower$22

 islower$20:
	; £temporary232 = int4$1#
	mov ebx, 1

 islower$21:
	; goto 23
	jmp islower$23

 islower$22:
	; £temporary232 = int4$0#
	mov ebx, 0

 islower$23:
	; return £temporary232
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$24:
	; function end islower

 islowerX:
	; if c < int4$97# goto 4
	cmp dword [rbp + 24], 97
	jl islowerX$4

 islowerX$1:
	; if c > int4$122# goto 4
	cmp dword [rbp + 24], 122
	jg islowerX$4

 islowerX$2:
	; £temporary236 = int4$1#
	mov ebx, 1

 islowerX$3:
	; goto 5
	jmp islowerX$5

 islowerX$4:
	; £temporary236 = int4$0#
	mov ebx, 0

 islowerX$5:
	; return £temporary236
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islowerX$6:
	; function end islowerX

 isupperX:
	; if c < int4$65# goto 4
	cmp dword [rbp + 24], 65
	jl isupperX$4

 isupperX$1:
	; if c > int4$90# goto 4
	cmp dword [rbp + 24], 90
	jg isupperX$4

 isupperX$2:
	; £temporary240 = int4$1#
	mov ebx, 1

 isupperX$3:
	; goto 5
	jmp isupperX$5

 isupperX$4:
	; £temporary240 = int4$0#
	mov ebx, 0

 isupperX$5:
	; return £temporary240
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupperX$6:
	; function end isupperX

 isupper:
	; call header integral zero 0 stack zero 0

 isupper$1:
	; call function noellipse-noellipse localeconv
	mov qword [rbp + 28], isupper$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 isupper$2:
	; post call

 isupper$3:
	; £temporary241 = return_value

 isupper$4:
	; localeConvPtr = £temporary241
	mov [rbp + 28], rbx

 isupper$5:
	; if localeConvPtr == int8$0# goto 18
	cmp qword [rbp + 28], 0
	je isupper$18

 isupper$6:
	; call header integral zero 0 stack zero 0

 isupper$7:
	; £field243 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

 isupper$8:
	; parameter £field243 -> localeConvPtr, offset 60
	mov rax, [rsi + 48]
	mov [rbp + 60], rax

 isupper$9:
	; parameter c, offset 68
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 isupper$10:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 36], isupper$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

 isupper$11:
	; post call

 isupper$12:
	; £temporary244 = return_value

 isupper$13:
	; if £temporary244 == int8$0# goto 16
	cmp rbx, 0
	je isupper$16

 isupper$14:
	; £temporary246 = int4$1#
	mov ebx, 1

 isupper$15:
	; goto 17
	jmp isupper$17

 isupper$16:
	; £temporary246 = int4$0#
	mov ebx, 0

 isupper$17:
	; return £temporary246
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupper$18:
	; if c < int4$65# goto 22
	cmp dword [rbp + 24], 65
	jl isupper$22

 isupper$19:
	; if c > int4$90# goto 22
	cmp dword [rbp + 24], 90
	jg isupper$22

 isupper$20:
	; £temporary250 = int4$1#
	mov ebx, 1

 isupper$21:
	; goto 23
	jmp isupper$23

 isupper$22:
	; £temporary250 = int4$0#
	mov ebx, 0

 isupper$23:
	; return £temporary250
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupper$24:
	; function end isupper

 isalpha:
	; call header integral zero 0 stack zero 0

 isalpha$1:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalpha$2:
	; call function noellipse-noellipse islower
	mov qword [rbp + 28], isalpha$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 isalpha$3:
	; post call

 isalpha$4:
	; £temporary251 = return_value

 isalpha$5:
	; if £temporary251 != int4$0# goto 12
	cmp ebx, 0
	jne isalpha$12

 isalpha$6:
	; call header integral zero 0 stack zero 0

 isalpha$7:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalpha$8:
	; call function noellipse-noellipse isupper
	mov qword [rbp + 28], isalpha$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 isalpha$9:
	; post call

 isalpha$10:
	; £temporary252 = return_value

 isalpha$11:
	; if £temporary252 == int4$0# goto 14
	cmp ebx, 0
	je isalpha$14

 isalpha$12:
	; £temporary256 = int4$1#
	mov ebx, 1

 isalpha$13:
	; goto 15
	jmp isalpha$15

 isalpha$14:
	; £temporary256 = int4$0#
	mov ebx, 0

 isalpha$15:
	; return £temporary256
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isalpha$16:
	; function end isalpha

 isdigit:
	; if c < int4$48# goto 4
	cmp dword [rbp + 24], 48
	jl isdigit$4

 isdigit$1:
	; if c > int4$57# goto 4
	cmp dword [rbp + 24], 57
	jg isdigit$4

 isdigit$2:
	; £temporary260 = int4$1#
	mov ebx, 1

 isdigit$3:
	; goto 5
	jmp isdigit$5

 isdigit$4:
	; £temporary260 = int4$0#
	mov ebx, 0

 isdigit$5:
	; return £temporary260
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isdigit$6:
	; function end isdigit

 isalnum:
	; call header integral zero 0 stack zero 0

 isalnum$1:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalnum$2:
	; call function noellipse-noellipse isalpha
	mov qword [rbp + 28], isalnum$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalpha

 isalnum$3:
	; post call

 isalnum$4:
	; £temporary261 = return_value

 isalnum$5:
	; if £temporary261 != int4$0# goto 12
	cmp ebx, 0
	jne isalnum$12

 isalnum$6:
	; call header integral zero 0 stack zero 0

 isalnum$7:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalnum$8:
	; call function noellipse-noellipse isdigit
	mov qword [rbp + 28], isalnum$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

 isalnum$9:
	; post call

 isalnum$10:
	; £temporary262 = return_value

 isalnum$11:
	; if £temporary262 == int4$0# goto 14
	cmp ebx, 0
	je isalnum$14

 isalnum$12:
	; £temporary266 = int4$1#
	mov ebx, 1

 isalnum$13:
	; goto 15
	jmp isalnum$15

 isalnum$14:
	; £temporary266 = int4$0#
	mov ebx, 0

 isalnum$15:
	; return £temporary266
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isalnum$16:
	; function end isalnum

 isxdigit:
	; call header integral zero 0 stack zero 0

 isxdigit$1:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isxdigit$2:
	; call function noellipse-noellipse isdigit
	mov qword [rbp + 28], isxdigit$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

 isxdigit$3:
	; post call

 isxdigit$4:
	; £temporary267 = return_value

 isxdigit$5:
	; if £temporary267 != int4$0# goto 10
	cmp ebx, 0
	jne isxdigit$10

 isxdigit$6:
	; if c < int4$97# goto 8
	cmp dword [rbp + 24], 97
	jl isxdigit$8

 isxdigit$7:
	; if c <= int4$102# goto 10
	cmp dword [rbp + 24], 102
	jle isxdigit$10

 isxdigit$8:
	; if c < int4$65# goto 12
	cmp dword [rbp + 24], 65
	jl isxdigit$12

 isxdigit$9:
	; if c > int4$70# goto 12
	cmp dword [rbp + 24], 70
	jg isxdigit$12

 isxdigit$10:
	; £temporary277 = int4$1#
	mov ebx, 1

 isxdigit$11:
	; goto 13
	jmp isxdigit$13

 isxdigit$12:
	; £temporary277 = int4$0#
	mov ebx, 0

 isxdigit$13:
	; return £temporary277
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isxdigit$14:
	; function end isxdigit

 isgraph:
	; if c < int4$32# goto 4
	cmp dword [rbp + 24], 32
	jl isgraph$4

 isgraph$1:
	; if c > int4$126# goto 4
	cmp dword [rbp + 24], 126
	jg isgraph$4

 isgraph$2:
	; £temporary281 = int4$1#
	mov ebx, 1

 isgraph$3:
	; goto 5
	jmp isgraph$5

 isgraph$4:
	; £temporary281 = int4$0#
	mov ebx, 0

 isgraph$5:
	; return £temporary281
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isgraph$6:
	; function end isgraph

 isprint:
	; call header integral zero 0 stack zero 0

 isprint$1:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isprint$2:
	; call function noellipse-noellipse isgraph
	mov qword [rbp + 28], isprint$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

 isprint$3:
	; post call

 isprint$4:
	; £temporary282 = return_value

 isprint$5:
	; if £temporary282 == int4$0# goto 9
	cmp ebx, 0
	je isprint$9

 isprint$6:
	; if c == int4$32# goto 9
	cmp dword [rbp + 24], 32
	je isprint$9

 isprint$7:
	; £temporary286 = int4$1#
	mov ebx, 1

 isprint$8:
	; goto 10
	jmp isprint$10

 isprint$9:
	; £temporary286 = int4$0#
	mov ebx, 0

 isprint$10:
	; return £temporary286
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isprint$11:
	; function end isprint

 ispunct:
	; call header integral zero 0 stack zero 0

 ispunct$1:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 ispunct$2:
	; call function noellipse-noellipse isgraph
	mov qword [rbp + 28], ispunct$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

 ispunct$3:
	; post call

 ispunct$4:
	; £temporary287 = return_value

 ispunct$5:
	; if £temporary287 == int4$0# goto 14
	cmp ebx, 0
	je ispunct$14

 ispunct$6:
	; call header integral zero 0 stack zero 0

 ispunct$7:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 ispunct$8:
	; call function noellipse-noellipse isalnum
	mov qword [rbp + 28], ispunct$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalnum

 ispunct$9:
	; post call

 ispunct$10:
	; £temporary289 = return_value

 ispunct$11:
	; if £temporary289 != int4$0# goto 14
	cmp ebx, 0
	jne ispunct$14

 ispunct$12:
	; £temporary293 = int4$1#
	mov ebx, 1

 ispunct$13:
	; goto 15
	jmp ispunct$15

 ispunct$14:
	; £temporary293 = int4$0#
	mov ebx, 0

 ispunct$15:
	; return £temporary293
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ispunct$16:
	; function end ispunct

 iscntrl:
	; call header integral zero 0 stack zero 0

 iscntrl$1:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 iscntrl$2:
	; call function noellipse-noellipse isprint
	mov qword [rbp + 28], iscntrl$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isprint

 iscntrl$3:
	; post call

 iscntrl$4:
	; £temporary294 = return_value

 iscntrl$5:
	; if £temporary294 != int4$0# goto 8
	cmp ebx, 0
	jne iscntrl$8

 iscntrl$6:
	; £temporary297 = int4$1#
	mov ebx, 1

 iscntrl$7:
	; goto 9
	jmp iscntrl$9

 iscntrl$8:
	; £temporary297 = int4$0#
	mov ebx, 0

 iscntrl$9:
	; return £temporary297
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 iscntrl$10:
	; function end iscntrl

 isspace:
	; if c == int4$32# goto 6
	cmp dword [rbp + 24], 32
	je isspace$6

 isspace$1:
	; if c == int4$12# goto 6
	cmp dword [rbp + 24], 12
	je isspace$6

 isspace$2:
	; if c == int4$10# goto 6
	cmp dword [rbp + 24], 10
	je isspace$6

 isspace$3:
	; if c == int4$13# goto 6
	cmp dword [rbp + 24], 13
	je isspace$6

 isspace$4:
	; if c == int4$9# goto 6
	cmp dword [rbp + 24], 9
	je isspace$6

 isspace$5:
	; if c != int4$11# goto 8
	cmp dword [rbp + 24], 11
	jne isspace$8

 isspace$6:
	; £temporary309 = int4$1#
	mov ebx, 1

 isspace$7:
	; goto 9
	jmp isspace$9

 isspace$8:
	; £temporary309 = int4$0#
	mov ebx, 0

 isspace$9:
	; return £temporary309
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isspace$10:
	; function end isspace

 tolowerX:
	; call header integral zero 0 stack zero 0

 tolowerX$1:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 tolowerX$2:
	; call function noellipse-noellipse isupper
	mov qword [rbp + 28], tolowerX$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 tolowerX$3:
	; post call

 tolowerX$4:
	; £temporary310 = return_value

 tolowerX$5:
	; if £temporary310 == int4$0# goto 8
	cmp ebx, 0
	je tolowerX$8

 tolowerX$6:
	; £temporary313 = c + int4$32#
	mov ebx, [rbp + 24]
	add ebx, 32

 tolowerX$7:
	; goto 9
	jmp tolowerX$9

 tolowerX$8:
	; £temporary313 = c
	mov ebx, [rbp + 24]

 tolowerX$9:
	; return £temporary313
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolowerX$10:
	; function end tolowerX

 tolower:
	; call header integral zero 0 stack zero 0

 tolower$1:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 tolower$2:
	; call function noellipse-noellipse isupper
	mov qword [rbp + 28], tolower$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 tolower$3:
	; post call

 tolower$4:
	; £temporary314 = return_value

 tolower$5:
	; if £temporary314 == int4$0# goto 32
	cmp ebx, 0
	je tolower$32

 tolower$6:
	; call header integral zero 0 stack zero 0

 tolower$7:
	; call function noellipse-noellipse localeconv
	mov qword [rbp + 28], tolower$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 tolower$8:
	; post call

 tolower$9:
	; £temporary315 = return_value

 tolower$10:
	; localeConvPtr = £temporary315
	mov [rbp + 28], rbx

 tolower$11:
	; if localeConvPtr == int8$0# goto 30
	cmp qword [rbp + 28], 0
	je tolower$30

 tolower$12:
	; £field317 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

 tolower$13:
	; lowerCase = £field317 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 tolower$14:
	; £field318 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

 tolower$15:
	; upperCase = £field318 -> localeConvPtr
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 tolower$16:
	; call header integral zero 0 stack zero 0

 tolower$17:
	; parameter upperCase, offset 76
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 tolower$18:
	; parameter c, offset 84
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

 tolower$19:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], tolower$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 tolower$20:
	; post call

 tolower$21:
	; £temporary319 = return_value

 tolower$22:
	; £temporary321 = £temporary319 - upperCase
	sub rbx, [rbp + 44]

 tolower$23:
	; £temporary322 = int_to_int £temporary321 (Pointer -> Signed_Int)

 tolower$24:
	; index = £temporary322
	mov [rbp + 52], ebx

 tolower$25:
	; £temporary324 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 tolower$26:
	; £temporary326 = lowerCase + £temporary324
	mov rsi, [rbp + 36]
	add rsi, rax

 tolower$27:
	; £field323 -> £temporary326 = *£temporary326

 tolower$28:
	; £temporary327 = int_to_int £field323 -> £temporary326 (Signed_Char -> Signed_Int)
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge tolower$29
	neg bl
	neg ebx

 tolower$29:
	; return £temporary327
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$30:
	; £temporary328 = c + int4$32#
	mov ebx, [rbp + 24]
	add ebx, 32

 tolower$31:
	; return £temporary328
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$32:
	; return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$33:
	; function end tolower

 toupperX:
	; call header integral zero 0 stack zero 0

 toupperX$1:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 toupperX$2:
	; call function noellipse-noellipse islower
	mov qword [rbp + 28], toupperX$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 toupperX$3:
	; post call

 toupperX$4:
	; £temporary330 = return_value

 toupperX$5:
	; if £temporary330 == int4$0# goto 8
	cmp ebx, 0
	je toupperX$8

 toupperX$6:
	; £temporary333 = c - int4$32#
	mov ebx, [rbp + 24]
	sub ebx, 32

 toupperX$7:
	; goto 9
	jmp toupperX$9

 toupperX$8:
	; £temporary333 = c
	mov ebx, [rbp + 24]

 toupperX$9:
	; return £temporary333
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupperX$10:
	; function end toupperX

 toupper:
	; call header integral zero 0 stack zero 0

 toupper$1:
	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 toupper$2:
	; call function noellipse-noellipse islower
	mov qword [rbp + 28], toupper$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 toupper$3:
	; post call

 toupper$4:
	; £temporary334 = return_value

 toupper$5:
	; if £temporary334 == int4$0# goto 32
	cmp ebx, 0
	je toupper$32

 toupper$6:
	; call header integral zero 0 stack zero 0

 toupper$7:
	; call function noellipse-noellipse localeconv
	mov qword [rbp + 28], toupper$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 toupper$8:
	; post call

 toupper$9:
	; £temporary335 = return_value

 toupper$10:
	; localeConvPtr = £temporary335
	mov [rbp + 28], rbx

 toupper$11:
	; if localeConvPtr == int8$0# goto 30
	cmp qword [rbp + 28], 0
	je toupper$30

 toupper$12:
	; £field337 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

 toupper$13:
	; lowerCase = £field337 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 toupper$14:
	; £field338 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

 toupper$15:
	; upperCase = £field338 -> localeConvPtr
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 toupper$16:
	; call header integral zero 0 stack zero 0

 toupper$17:
	; parameter lowerCase, offset 76
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 toupper$18:
	; parameter c, offset 84
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

 toupper$19:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], toupper$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 toupper$20:
	; post call

 toupper$21:
	; £temporary339 = return_value

 toupper$22:
	; £temporary341 = £temporary339 - lowerCase
	sub rbx, [rbp + 36]

 toupper$23:
	; £temporary342 = int_to_int £temporary341 (Pointer -> Signed_Int)

 toupper$24:
	; index = £temporary342
	mov [rbp + 52], ebx

 toupper$25:
	; £temporary344 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 toupper$26:
	; £temporary346 = upperCase + £temporary344
	mov rsi, [rbp + 44]
	add rsi, rax

 toupper$27:
	; £field343 -> £temporary346 = *£temporary346

 toupper$28:
	; £temporary347 = int_to_int £field343 -> £temporary346 (Signed_Char -> Signed_Int)
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge toupper$29
	neg bl
	neg ebx

 toupper$29:
	; return £temporary347
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$30:
	; £temporary348 = c - int4$32#
	mov ebx, [rbp + 24]
	sub ebx, 32

 toupper$31:
	; return £temporary348
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$32:
	; return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$33:
	; function end toupper
section .data
