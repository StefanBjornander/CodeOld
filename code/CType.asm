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
section .text

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
	mov qword [rbp + 28], islower$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

islower$2:	; post call

islower$3:	; £temporary210 = return_value

islower$4:	; localeConvPtr = £temporary210
	mov [rbp + 28], rbx

islower$5:	; if localeConvPtr == int8$0# goto 19
	cmp qword [rbp + 28], 0
	je islower$19

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £field212 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

islower$8:	; parameter £field212 -> localeConvPtr, offset 60
	mov rax, [rsi + 40]
	mov [rbp + 60], rax

islower$9:	; parameter c, offset 68
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

islower$10:	; call function noellipse-noellipse strchr
	mov qword [rbp + 36], islower$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

islower$11:	; post call

islower$12:	; £temporary213 = return_value

islower$13:	; if £temporary213 == int8$0# goto 16
	cmp rbx, 0
	je islower$16

islower$14:	; £temporary215 = int4$1#
	mov ebx, 1

islower$15:	; goto 17
	jmp islower$17

islower$16:	; £temporary215 = int4$0#
	mov ebx, 0

islower$17:	; return_value = £temporary215

islower$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

islower$19:	; if c < int4$97# goto 23
	cmp dword [rbp + 24], 97
	jl islower$23

islower$20:	; if c > int4$122# goto 23
	cmp dword [rbp + 24], 122
	jg islower$23

islower$21:	; £temporary219 = int4$1#
	mov ebx, 1

islower$22:	; goto 24
	jmp islower$24

islower$23:	; £temporary219 = int4$0#
	mov ebx, 0

islower$24:	; return_value = £temporary219

islower$25:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

islower$26:	; function end islower

islowerX:	; if c < int4$97# goto 4
	cmp dword [rbp + 24], 97
	jl islowerX$4

islowerX$1:	; if c > int4$122# goto 4
	cmp dword [rbp + 24], 122
	jg islowerX$4

islowerX$2:	; £temporary223 = int4$1#
	mov ebx, 1

islowerX$3:	; goto 5
	jmp islowerX$5

islowerX$4:	; £temporary223 = int4$0#
	mov ebx, 0

islowerX$5:	; return_value = £temporary223

islowerX$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

islowerX$7:	; function end islowerX

isupperX:	; if c < int4$65# goto 4
	cmp dword [rbp + 24], 65
	jl isupperX$4

isupperX$1:	; if c > int4$90# goto 4
	cmp dword [rbp + 24], 90
	jg isupperX$4

isupperX$2:	; £temporary227 = int4$1#
	mov ebx, 1

isupperX$3:	; goto 5
	jmp isupperX$5

isupperX$4:	; £temporary227 = int4$0#
	mov ebx, 0

isupperX$5:	; return_value = £temporary227

isupperX$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

isupperX$7:	; function end isupperX

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
	mov qword [rbp + 28], isupper$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

isupper$2:	; post call

isupper$3:	; £temporary228 = return_value

isupper$4:	; localeConvPtr = £temporary228
	mov [rbp + 28], rbx

isupper$5:	; if localeConvPtr == int8$0# goto 19
	cmp qword [rbp + 28], 0
	je isupper$19

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £field230 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

isupper$8:	; parameter £field230 -> localeConvPtr, offset 60
	mov rax, [rsi + 48]
	mov [rbp + 60], rax

isupper$9:	; parameter c, offset 68
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

isupper$10:	; call function noellipse-noellipse strchr
	mov qword [rbp + 36], isupper$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

isupper$11:	; post call

isupper$12:	; £temporary231 = return_value

isupper$13:	; if £temporary231 == int8$0# goto 16
	cmp rbx, 0
	je isupper$16

isupper$14:	; £temporary233 = int4$1#
	mov ebx, 1

isupper$15:	; goto 17
	jmp isupper$17

isupper$16:	; £temporary233 = int4$0#
	mov ebx, 0

isupper$17:	; return_value = £temporary233

isupper$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

isupper$19:	; if c < int4$65# goto 23
	cmp dword [rbp + 24], 65
	jl isupper$23

isupper$20:	; if c > int4$90# goto 23
	cmp dword [rbp + 24], 90
	jg isupper$23

isupper$21:	; £temporary237 = int4$1#
	mov ebx, 1

isupper$22:	; goto 24
	jmp isupper$24

isupper$23:	; £temporary237 = int4$0#
	mov ebx, 0

isupper$24:	; return_value = £temporary237

isupper$25:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

isupper$26:	; function end isupper

isalpha:	; call header integral zero 0 stack zero 0

isalpha$1:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

isalpha$2:	; call function noellipse-noellipse islower
	mov qword [rbp + 28], isalpha$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

isalpha$3:	; post call

isalpha$4:	; £temporary238 = return_value

isalpha$5:	; if £temporary238 != int4$0# goto 12
	cmp ebx, 0
	jne isalpha$12

isalpha$6:	; call header integral zero 0 stack zero 0

isalpha$7:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

isalpha$8:	; call function noellipse-noellipse isupper
	mov qword [rbp + 28], isalpha$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

isalpha$9:	; post call

isalpha$10:	; £temporary239 = return_value

isalpha$11:	; if £temporary239 == int4$0# goto 14
	cmp ebx, 0
	je isalpha$14

isalpha$12:	; £temporary243 = int4$1#
	mov ebx, 1

isalpha$13:	; goto 15
	jmp isalpha$15

isalpha$14:	; £temporary243 = int4$0#
	mov ebx, 0

isalpha$15:	; return_value = £temporary243

isalpha$16:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

isalpha$17:	; function end isalpha

isdigit:	; if c < int4$48# goto 4
	cmp dword [rbp + 24], 48
	jl isdigit$4

isdigit$1:	; if c > int4$57# goto 4
	cmp dword [rbp + 24], 57
	jg isdigit$4

isdigit$2:	; £temporary247 = int4$1#
	mov ebx, 1

isdigit$3:	; goto 5
	jmp isdigit$5

isdigit$4:	; £temporary247 = int4$0#
	mov ebx, 0

isdigit$5:	; return_value = £temporary247

isdigit$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

isdigit$7:	; function end isdigit

isalnum:	; call header integral zero 0 stack zero 0

isalnum$1:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

isalnum$2:	; call function noellipse-noellipse isalpha
	mov qword [rbp + 28], isalnum$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalpha

isalnum$3:	; post call

isalnum$4:	; £temporary248 = return_value

isalnum$5:	; if £temporary248 != int4$0# goto 12
	cmp ebx, 0
	jne isalnum$12

isalnum$6:	; call header integral zero 0 stack zero 0

isalnum$7:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

isalnum$8:	; call function noellipse-noellipse isdigit
	mov qword [rbp + 28], isalnum$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

isalnum$9:	; post call

isalnum$10:	; £temporary249 = return_value

isalnum$11:	; if £temporary249 == int4$0# goto 14
	cmp ebx, 0
	je isalnum$14

isalnum$12:	; £temporary253 = int4$1#
	mov ebx, 1

isalnum$13:	; goto 15
	jmp isalnum$15

isalnum$14:	; £temporary253 = int4$0#
	mov ebx, 0

isalnum$15:	; return_value = £temporary253

isalnum$16:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

isalnum$17:	; function end isalnum

isxdigit:	; call header integral zero 0 stack zero 0

isxdigit$1:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

isxdigit$2:	; call function noellipse-noellipse isdigit
	mov qword [rbp + 28], isxdigit$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

isxdigit$3:	; post call

isxdigit$4:	; £temporary254 = return_value

isxdigit$5:	; if £temporary254 != int4$0# goto 10
	cmp ebx, 0
	jne isxdigit$10

isxdigit$6:	; if c < int4$97# goto 8
	cmp dword [rbp + 24], 97
	jl isxdigit$8

isxdigit$7:	; if c <= int4$102# goto 10
	cmp dword [rbp + 24], 102
	jle isxdigit$10

isxdigit$8:	; if c < int4$65# goto 12
	cmp dword [rbp + 24], 65
	jl isxdigit$12

isxdigit$9:	; if c > int4$70# goto 12
	cmp dword [rbp + 24], 70
	jg isxdigit$12

isxdigit$10:	; £temporary264 = int4$1#
	mov ebx, 1

isxdigit$11:	; goto 13
	jmp isxdigit$13

isxdigit$12:	; £temporary264 = int4$0#
	mov ebx, 0

isxdigit$13:	; return_value = £temporary264

isxdigit$14:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

isxdigit$15:	; function end isxdigit

isgraph:	; if c < int4$32# goto 4
	cmp dword [rbp + 24], 32
	jl isgraph$4

isgraph$1:	; if c > int4$126# goto 4
	cmp dword [rbp + 24], 126
	jg isgraph$4

isgraph$2:	; £temporary268 = int4$1#
	mov ebx, 1

isgraph$3:	; goto 5
	jmp isgraph$5

isgraph$4:	; £temporary268 = int4$0#
	mov ebx, 0

isgraph$5:	; return_value = £temporary268

isgraph$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

isgraph$7:	; function end isgraph

isprint:	; call header integral zero 0 stack zero 0

isprint$1:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

isprint$2:	; call function noellipse-noellipse isgraph
	mov qword [rbp + 28], isprint$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

isprint$3:	; post call

isprint$4:	; £temporary269 = return_value

isprint$5:	; if £temporary269 == int4$0# goto 9
	cmp ebx, 0
	je isprint$9

isprint$6:	; if c == int4$32# goto 9
	cmp dword [rbp + 24], 32
	je isprint$9

isprint$7:	; £temporary273 = int4$1#
	mov ebx, 1

isprint$8:	; goto 10
	jmp isprint$10

isprint$9:	; £temporary273 = int4$0#
	mov ebx, 0

isprint$10:	; return_value = £temporary273

isprint$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

isprint$12:	; function end isprint

ispunct:	; call header integral zero 0 stack zero 0

ispunct$1:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

ispunct$2:	; call function noellipse-noellipse isgraph
	mov qword [rbp + 28], ispunct$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

ispunct$3:	; post call

ispunct$4:	; £temporary274 = return_value

ispunct$5:	; if £temporary274 == int4$0# goto 14
	cmp ebx, 0
	je ispunct$14

ispunct$6:	; call header integral zero 0 stack zero 0

ispunct$7:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

ispunct$8:	; call function noellipse-noellipse isalnum
	mov qword [rbp + 28], ispunct$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalnum

ispunct$9:	; post call

ispunct$10:	; £temporary276 = return_value

ispunct$11:	; if £temporary276 != int4$0# goto 14
	cmp ebx, 0
	jne ispunct$14

ispunct$12:	; £temporary280 = int4$1#
	mov ebx, 1

ispunct$13:	; goto 15
	jmp ispunct$15

ispunct$14:	; £temporary280 = int4$0#
	mov ebx, 0

ispunct$15:	; return_value = £temporary280

ispunct$16:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

ispunct$17:	; function end ispunct

iscntrl:	; call header integral zero 0 stack zero 0

iscntrl$1:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

iscntrl$2:	; call function noellipse-noellipse isprint
	mov qword [rbp + 28], iscntrl$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isprint

iscntrl$3:	; post call

iscntrl$4:	; £temporary281 = return_value

iscntrl$5:	; if £temporary281 != int4$0# goto 8
	cmp ebx, 0
	jne iscntrl$8

iscntrl$6:	; £temporary284 = int4$1#
	mov ebx, 1

iscntrl$7:	; goto 9
	jmp iscntrl$9

iscntrl$8:	; £temporary284 = int4$0#
	mov ebx, 0

iscntrl$9:	; return_value = £temporary284

iscntrl$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

iscntrl$11:	; function end iscntrl

isspace:	; if c == int4$32# goto 6
	cmp dword [rbp + 24], 32
	je isspace$6

isspace$1:	; if c == int4$12# goto 6
	cmp dword [rbp + 24], 12
	je isspace$6

isspace$2:	; if c == int4$10# goto 6
	cmp dword [rbp + 24], 10
	je isspace$6

isspace$3:	; if c == int4$13# goto 6
	cmp dword [rbp + 24], 13
	je isspace$6

isspace$4:	; if c == int4$9# goto 6
	cmp dword [rbp + 24], 9
	je isspace$6

isspace$5:	; if c != int4$11# goto 8
	cmp dword [rbp + 24], 11
	jne isspace$8

isspace$6:	; £temporary296 = int4$1#
	mov ebx, 1

isspace$7:	; goto 9
	jmp isspace$9

isspace$8:	; £temporary296 = int4$0#
	mov ebx, 0

isspace$9:	; return_value = £temporary296

isspace$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

isspace$11:	; function end isspace

tolowerX:	; call header integral zero 0 stack zero 0

tolowerX$1:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

tolowerX$2:	; call function noellipse-noellipse isupper
	mov qword [rbp + 28], tolowerX$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

tolowerX$3:	; post call

tolowerX$4:	; £temporary297 = return_value

tolowerX$5:	; if £temporary297 == int4$0# goto 8
	cmp ebx, 0
	je tolowerX$8

tolowerX$6:	; £temporary300 = c + int4$32#
	mov ebx, [rbp + 24]
	add ebx, 32

tolowerX$7:	; goto 9
	jmp tolowerX$9

tolowerX$8:	; £temporary300 = c
	mov ebx, [rbp + 24]

tolowerX$9:	; return_value = £temporary300

tolowerX$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tolowerX$11:	; function end tolowerX

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

tolower$2:	; call function noellipse-noellipse isupper
	mov qword [rbp + 28], tolower$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

tolower$3:	; post call

tolower$4:	; £temporary301 = return_value

tolower$5:	; if £temporary301 == int4$0# goto 34
	cmp ebx, 0
	je tolower$34

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
	mov qword [rbp + 28], tolower$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

tolower$8:	; post call

tolower$9:	; £temporary302 = return_value

tolower$10:	; localeConvPtr = £temporary302
	mov [rbp + 28], rbx

tolower$11:	; if localeConvPtr == int8$0# goto 31
	cmp qword [rbp + 28], 0
	je tolower$31

tolower$12:	; £field304 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

tolower$13:	; lowerCase = £field304 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

tolower$14:	; £field305 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

tolower$15:	; upperCase = £field305 -> localeConvPtr
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 76
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

tolower$18:	; parameter c, offset 84
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

tolower$19:	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], tolower$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

tolower$20:	; post call

tolower$21:	; £temporary306 = return_value

tolower$22:	; £temporary308 = £temporary306 - upperCase
	sub rbx, [rbp + 44]

tolower$23:	; £temporary309 = int_to_int £temporary308 (Pointer -> Signed_Int)

tolower$24:	; index = £temporary309
	mov [rbp + 52], ebx

tolower$25:	; £temporary311 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

tolower$26:	; £temporary313 = lowerCase + £temporary311
	mov rsi, [rbp + 36]
	add rsi, rax

tolower$27:	; £field310 -> £temporary313 = *£temporary313

tolower$28:	; £temporary314 = int_to_int £field310 -> £temporary313 (Signed_Char -> Signed_Int)
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge tolower$29
	neg bl
	neg ebx

tolower$29:	; return_value = £temporary314

tolower$30:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tolower$31:	; £temporary315 = c + int4$32#
	mov ebx, [rbp + 24]
	add ebx, 32

tolower$32:	; return_value = £temporary315

tolower$33:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tolower$34:	; return_value = c
	mov ebx, [rbp + 24]

tolower$35:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tolower$36:	; function end tolower

toupperX:	; call header integral zero 0 stack zero 0

toupperX$1:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

toupperX$2:	; call function noellipse-noellipse islower
	mov qword [rbp + 28], toupperX$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

toupperX$3:	; post call

toupperX$4:	; £temporary317 = return_value

toupperX$5:	; if £temporary317 == int4$0# goto 8
	cmp ebx, 0
	je toupperX$8

toupperX$6:	; £temporary320 = c - int4$32#
	mov ebx, [rbp + 24]
	sub ebx, 32

toupperX$7:	; goto 9
	jmp toupperX$9

toupperX$8:	; £temporary320 = c
	mov ebx, [rbp + 24]

toupperX$9:	; return_value = £temporary320

toupperX$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

toupperX$11:	; function end toupperX

toupper:	; call header integral zero 0 stack zero 0

toupper$1:	; parameter c, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

toupper$2:	; call function noellipse-noellipse islower
	mov qword [rbp + 28], toupper$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

toupper$3:	; post call

toupper$4:	; £temporary321 = return_value

toupper$5:	; if £temporary321 == int4$0# goto 34
	cmp ebx, 0
	je toupper$34

toupper$6:	; call header integral zero 0 stack zero 0

toupper$7:	; call function noellipse-noellipse localeconv
	mov qword [rbp + 28], toupper$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

toupper$8:	; post call

toupper$9:	; £temporary322 = return_value

toupper$10:	; localeConvPtr = £temporary322
	mov [rbp + 28], rbx

toupper$11:	; if localeConvPtr == int8$0# goto 31
	cmp qword [rbp + 28], 0
	je toupper$31

toupper$12:	; £field324 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

toupper$13:	; lowerCase = £field324 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

toupper$14:	; £field325 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

toupper$15:	; upperCase = £field325 -> localeConvPtr
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

toupper$16:	; call header integral zero 0 stack zero 0

toupper$17:	; parameter lowerCase, offset 76
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

toupper$18:	; parameter c, offset 84
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

toupper$19:	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], toupper$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

toupper$20:	; post call

toupper$21:	; £temporary326 = return_value

toupper$22:	; £temporary328 = £temporary326 - lowerCase
	sub rbx, [rbp + 36]

toupper$23:	; £temporary329 = int_to_int £temporary328 (Pointer -> Signed_Int)

toupper$24:	; index = £temporary329
	mov [rbp + 52], ebx

toupper$25:	; £temporary331 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

toupper$26:	; £temporary333 = upperCase + £temporary331
	mov rsi, [rbp + 44]
	add rsi, rax

toupper$27:	; £field330 -> £temporary333 = *£temporary333

toupper$28:	; £temporary334 = int_to_int £field330 -> £temporary333 (Signed_Char -> Signed_Int)
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge toupper$29
	neg bl
	neg ebx

toupper$29:	; return_value = £temporary334

toupper$30:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

toupper$31:	; £temporary335 = c - int4$32#
	mov ebx, [rbp + 24]
	sub ebx, 32

toupper$32:	; return_value = £temporary335

toupper$33:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

toupper$34:	; return_value = c
	mov ebx, [rbp + 24]

toupper$35:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

toupper$36:	; function end toupper
section .data

$IntegralStorage#:
	times 8 db 0
