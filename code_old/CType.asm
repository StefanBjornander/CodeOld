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
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 islower$1:
	; Call localeconv 28 0
	mov qword [rbp + 28], islower$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 islower$2:
	; PostCall 28

 islower$3:
	; GetReturnValue £temporary250

 islower$4:
	; Assign localeConvPtr £temporary250
	mov [rbp + 28], rbx

 islower$5:
	; Equal 18 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je islower$18

 islower$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 islower$7:
	; Dereference £temporary252 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 islower$8:
	; Parameter pointer £temporary252 -> localeConvPtr 60
	mov rax, [rsi + 40]
	mov [rbp + 60], rax

 islower$9:
	; Parameter signedint c 68
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 islower$10:
	; Call strchr 36 0
	mov qword [rbp + 36], islower$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

 islower$11:
	; PostCall 36

 islower$12:
	; GetReturnValue £temporary253

 islower$13:
	; Equal 16 £temporary253 0
	cmp rbx, 0
	je islower$16

 islower$14:
	; Assign £temporary255 1
	mov ebx, 1

 islower$15:
	; Goto 17
	jmp islower$17

 islower$16:
	; Assign £temporary255 0
	mov ebx, 0

 islower$17:
	; Return £temporary255
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$18:
	; SignedLessThan 22 c 97
	cmp dword [rbp + 24], 97
	jl islower$22

 islower$19:
	; SignedGreaterThan 22 c 122
	cmp dword [rbp + 24], 122
	jg islower$22

 islower$20:
	; Assign £temporary259 1
	mov ebx, 1

 islower$21:
	; Goto 23
	jmp islower$23

 islower$22:
	; Assign £temporary259 0
	mov ebx, 0

 islower$23:
	; Return £temporary259
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$24:
	; FunctionEnd islower

section .text

 islowerX:
	; SignedLessThan 4 c 97
	cmp dword [rbp + 24], 97
	jl islowerX$4

 islowerX$1:
	; SignedGreaterThan 4 c 122
	cmp dword [rbp + 24], 122
	jg islowerX$4

 islowerX$2:
	; Assign £temporary263 1
	mov ebx, 1

 islowerX$3:
	; Goto 5
	jmp islowerX$5

 islowerX$4:
	; Assign £temporary263 0
	mov ebx, 0

 islowerX$5:
	; Return £temporary263
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islowerX$6:
	; FunctionEnd islowerX

section .text

 isupperX:
	; SignedLessThan 4 c 65
	cmp dword [rbp + 24], 65
	jl isupperX$4

 isupperX$1:
	; SignedGreaterThan 4 c 90
	cmp dword [rbp + 24], 90
	jg isupperX$4

 isupperX$2:
	; Assign £temporary267 1
	mov ebx, 1

 isupperX$3:
	; Goto 5
	jmp isupperX$5

 isupperX$4:
	; Assign £temporary267 0
	mov ebx, 0

 isupperX$5:
	; Return £temporary267
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupperX$6:
	; FunctionEnd isupperX

section .text

 isupper:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$1:
	; Call localeconv 28 0
	mov qword [rbp + 28], isupper$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 isupper$2:
	; PostCall 28

 isupper$3:
	; GetReturnValue £temporary268

 isupper$4:
	; Assign localeConvPtr £temporary268
	mov [rbp + 28], rbx

 isupper$5:
	; Equal 18 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je isupper$18

 isupper$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$7:
	; Dereference £temporary270 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 isupper$8:
	; Parameter pointer £temporary270 -> localeConvPtr 60
	mov rax, [rsi + 48]
	mov [rbp + 60], rax

 isupper$9:
	; Parameter signedint c 68
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 isupper$10:
	; Call strchr 36 0
	mov qword [rbp + 36], isupper$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

 isupper$11:
	; PostCall 36

 isupper$12:
	; GetReturnValue £temporary271

 isupper$13:
	; Equal 16 £temporary271 0
	cmp rbx, 0
	je isupper$16

 isupper$14:
	; Assign £temporary273 1
	mov ebx, 1

 isupper$15:
	; Goto 17
	jmp isupper$17

 isupper$16:
	; Assign £temporary273 0
	mov ebx, 0

 isupper$17:
	; Return £temporary273
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupper$18:
	; SignedLessThan 22 c 65
	cmp dword [rbp + 24], 65
	jl isupper$22

 isupper$19:
	; SignedGreaterThan 22 c 90
	cmp dword [rbp + 24], 90
	jg isupper$22

 isupper$20:
	; Assign £temporary277 1
	mov ebx, 1

 isupper$21:
	; Goto 23
	jmp isupper$23

 isupper$22:
	; Assign £temporary277 0
	mov ebx, 0

 isupper$23:
	; Return £temporary277
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupper$24:
	; FunctionEnd isupper

section .text

 isalpha:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalpha$1:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalpha$2:
	; Call islower 28 0
	mov qword [rbp + 28], isalpha$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 isalpha$3:
	; PostCall 28

 isalpha$4:
	; GetReturnValue £temporary278

 isalpha$5:
	; NotEqual 12 £temporary278 0
	cmp ebx, 0
	jne isalpha$12

 isalpha$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalpha$7:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalpha$8:
	; Call isupper 28 0
	mov qword [rbp + 28], isalpha$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 isalpha$9:
	; PostCall 28

 isalpha$10:
	; GetReturnValue £temporary279

 isalpha$11:
	; Equal 14 £temporary279 0
	cmp ebx, 0
	je isalpha$14

 isalpha$12:
	; Assign £temporary283 1
	mov ebx, 1

 isalpha$13:
	; Goto 15
	jmp isalpha$15

 isalpha$14:
	; Assign £temporary283 0
	mov ebx, 0

 isalpha$15:
	; Return £temporary283
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isalpha$16:
	; FunctionEnd isalpha

section .text

 isdigit:
	; SignedLessThan 4 c 48
	cmp dword [rbp + 24], 48
	jl isdigit$4

 isdigit$1:
	; SignedGreaterThan 4 c 57
	cmp dword [rbp + 24], 57
	jg isdigit$4

 isdigit$2:
	; Assign £temporary287 1
	mov ebx, 1

 isdigit$3:
	; Goto 5
	jmp isdigit$5

 isdigit$4:
	; Assign £temporary287 0
	mov ebx, 0

 isdigit$5:
	; Return £temporary287
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isdigit$6:
	; FunctionEnd isdigit

section .text

 isalnum:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalnum$1:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalnum$2:
	; Call isalpha 28 0
	mov qword [rbp + 28], isalnum$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalpha

 isalnum$3:
	; PostCall 28

 isalnum$4:
	; GetReturnValue £temporary288

 isalnum$5:
	; NotEqual 12 £temporary288 0
	cmp ebx, 0
	jne isalnum$12

 isalnum$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalnum$7:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalnum$8:
	; Call isdigit 28 0
	mov qword [rbp + 28], isalnum$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

 isalnum$9:
	; PostCall 28

 isalnum$10:
	; GetReturnValue £temporary289

 isalnum$11:
	; Equal 14 £temporary289 0
	cmp ebx, 0
	je isalnum$14

 isalnum$12:
	; Assign £temporary293 1
	mov ebx, 1

 isalnum$13:
	; Goto 15
	jmp isalnum$15

 isalnum$14:
	; Assign £temporary293 0
	mov ebx, 0

 isalnum$15:
	; Return £temporary293
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isalnum$16:
	; FunctionEnd isalnum

section .text

 isxdigit:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isxdigit$1:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isxdigit$2:
	; Call isdigit 28 0
	mov qword [rbp + 28], isxdigit$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

 isxdigit$3:
	; PostCall 28

 isxdigit$4:
	; GetReturnValue £temporary294

 isxdigit$5:
	; NotEqual 10 £temporary294 0
	cmp ebx, 0
	jne isxdigit$10

 isxdigit$6:
	; SignedLessThan 8 c 97
	cmp dword [rbp + 24], 97
	jl isxdigit$8

 isxdigit$7:
	; SignedLessThanEqual 10 c 102
	cmp dword [rbp + 24], 102
	jle isxdigit$10

 isxdigit$8:
	; SignedLessThan 12 c 65
	cmp dword [rbp + 24], 65
	jl isxdigit$12

 isxdigit$9:
	; SignedGreaterThan 12 c 70
	cmp dword [rbp + 24], 70
	jg isxdigit$12

 isxdigit$10:
	; Assign £temporary304 1
	mov ebx, 1

 isxdigit$11:
	; Goto 13
	jmp isxdigit$13

 isxdigit$12:
	; Assign £temporary304 0
	mov ebx, 0

 isxdigit$13:
	; Return £temporary304
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isxdigit$14:
	; FunctionEnd isxdigit

section .text

 isgraph:
	; SignedLessThan 4 c 32
	cmp dword [rbp + 24], 32
	jl isgraph$4

 isgraph$1:
	; SignedGreaterThan 4 c 126
	cmp dword [rbp + 24], 126
	jg isgraph$4

 isgraph$2:
	; Assign £temporary308 1
	mov ebx, 1

 isgraph$3:
	; Goto 5
	jmp isgraph$5

 isgraph$4:
	; Assign £temporary308 0
	mov ebx, 0

 isgraph$5:
	; Return £temporary308
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isgraph$6:
	; FunctionEnd isgraph

section .text

 isprint:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isprint$1:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isprint$2:
	; Call isgraph 28 0
	mov qword [rbp + 28], isprint$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

 isprint$3:
	; PostCall 28

 isprint$4:
	; GetReturnValue £temporary309

 isprint$5:
	; Equal 9 £temporary309 0
	cmp ebx, 0
	je isprint$9

 isprint$6:
	; Equal 9 c 32
	cmp dword [rbp + 24], 32
	je isprint$9

 isprint$7:
	; Assign £temporary313 1
	mov ebx, 1

 isprint$8:
	; Goto 10
	jmp isprint$10

 isprint$9:
	; Assign £temporary313 0
	mov ebx, 0

 isprint$10:
	; Return £temporary313
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isprint$11:
	; FunctionEnd isprint

section .text

 ispunct:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ispunct$1:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 ispunct$2:
	; Call isgraph 28 0
	mov qword [rbp + 28], ispunct$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

 ispunct$3:
	; PostCall 28

 ispunct$4:
	; GetReturnValue £temporary314

 ispunct$5:
	; Equal 14 £temporary314 0
	cmp ebx, 0
	je ispunct$14

 ispunct$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ispunct$7:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 ispunct$8:
	; Call isalnum 28 0
	mov qword [rbp + 28], ispunct$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalnum

 ispunct$9:
	; PostCall 28

 ispunct$10:
	; GetReturnValue £temporary316

 ispunct$11:
	; NotEqual 14 £temporary316 0
	cmp ebx, 0
	jne ispunct$14

 ispunct$12:
	; Assign £temporary320 1
	mov ebx, 1

 ispunct$13:
	; Goto 15
	jmp ispunct$15

 ispunct$14:
	; Assign £temporary320 0
	mov ebx, 0

 ispunct$15:
	; Return £temporary320
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ispunct$16:
	; FunctionEnd ispunct

section .text

 iscntrl:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 iscntrl$1:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 iscntrl$2:
	; Call isprint 28 0
	mov qword [rbp + 28], iscntrl$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isprint

 iscntrl$3:
	; PostCall 28

 iscntrl$4:
	; GetReturnValue £temporary321

 iscntrl$5:
	; NotEqual 8 £temporary321 0
	cmp ebx, 0
	jne iscntrl$8

 iscntrl$6:
	; Assign £temporary324 1
	mov ebx, 1

 iscntrl$7:
	; Goto 9
	jmp iscntrl$9

 iscntrl$8:
	; Assign £temporary324 0
	mov ebx, 0

 iscntrl$9:
	; Return £temporary324
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 iscntrl$10:
	; FunctionEnd iscntrl

section .text

 isspace:
	; Equal 6 c 32
	cmp dword [rbp + 24], 32
	je isspace$6

 isspace$1:
	; Equal 6 c 12
	cmp dword [rbp + 24], 12
	je isspace$6

 isspace$2:
	; Equal 6 c 10
	cmp dword [rbp + 24], 10
	je isspace$6

 isspace$3:
	; Equal 6 c 13
	cmp dword [rbp + 24], 13
	je isspace$6

 isspace$4:
	; Equal 6 c 9
	cmp dword [rbp + 24], 9
	je isspace$6

 isspace$5:
	; NotEqual 8 c 11
	cmp dword [rbp + 24], 11
	jne isspace$8

 isspace$6:
	; Assign £temporary336 1
	mov ebx, 1

 isspace$7:
	; Goto 9
	jmp isspace$9

 isspace$8:
	; Assign £temporary336 0
	mov ebx, 0

 isspace$9:
	; Return £temporary336
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isspace$10:
	; FunctionEnd isspace

section .text

 tolowerX:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolowerX$1:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 tolowerX$2:
	; Call isupper 28 0
	mov qword [rbp + 28], tolowerX$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 tolowerX$3:
	; PostCall 28

 tolowerX$4:
	; GetReturnValue £temporary337

 tolowerX$5:
	; Equal 8 £temporary337 0
	cmp ebx, 0
	je tolowerX$8

 tolowerX$6:
	; BinaryAdd £temporary340 c 32
	mov ebx, [rbp + 24]
	add ebx, 32

 tolowerX$7:
	; Goto 9
	jmp tolowerX$9

 tolowerX$8:
	; Assign £temporary340 c
	mov ebx, [rbp + 24]

 tolowerX$9:
	; Return £temporary340
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolowerX$10:
	; FunctionEnd tolowerX

section .text

 tolower:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$1:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 tolower$2:
	; Call isupper 28 0
	mov qword [rbp + 28], tolower$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 tolower$3:
	; PostCall 28

 tolower$4:
	; GetReturnValue £temporary341

 tolower$5:
	; Equal 32 £temporary341 0
	cmp ebx, 0
	je tolower$32

 tolower$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$7:
	; Call localeconv 28 0
	mov qword [rbp + 28], tolower$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 tolower$8:
	; PostCall 28

 tolower$9:
	; GetReturnValue £temporary342

 tolower$10:
	; Assign localeConvPtr £temporary342
	mov [rbp + 28], rbx

 tolower$11:
	; Equal 30 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je tolower$30

 tolower$12:
	; Dereference £temporary344 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$13:
	; Assign lowerCase £temporary344 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 tolower$14:
	; Dereference £temporary345 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$15:
	; Assign upperCase £temporary345 -> localeConvPtr
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 tolower$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$17:
	; Parameter pointer upperCase 76
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 tolower$18:
	; Parameter signedint c 84
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

 tolower$19:
	; Call strchr 52 0
	mov qword [rbp + 52], tolower$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 tolower$20:
	; PostCall 52

 tolower$21:
	; GetReturnValue £temporary346

 tolower$22:
	; BinarySubtract £temporary348 £temporary346 upperCase
	sub rbx, [rbp + 44]

 tolower$23:
	; IntegralToIntegral £temporary349 £temporary348

 tolower$24:
	; Assign index £temporary349
	mov [rbp + 52], ebx

 tolower$25:
	; IntegralToIntegral £temporary351 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 tolower$26:
	; BinaryAdd £temporary353 lowerCase £temporary351
	mov rsi, [rbp + 36]
	add rsi, rax

 tolower$27:
	; Dereference £temporary350 -> £temporary353 £temporary353 0

 tolower$28:
	; IntegralToIntegral £temporary354 £temporary350 -> £temporary353
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge tolower$29
	neg bl
	neg ebx

 tolower$29:
	; Return £temporary354
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$30:
	; BinaryAdd £temporary355 c 32
	mov ebx, [rbp + 24]
	add ebx, 32

 tolower$31:
	; Return £temporary355
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$32:
	; Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$33:
	; FunctionEnd tolower

section .text

 toupperX:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupperX$1:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 toupperX$2:
	; Call islower 28 0
	mov qword [rbp + 28], toupperX$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 toupperX$3:
	; PostCall 28

 toupperX$4:
	; GetReturnValue £temporary357

 toupperX$5:
	; Equal 8 £temporary357 0
	cmp ebx, 0
	je toupperX$8

 toupperX$6:
	; BinarySubtract £temporary360 c 32
	mov ebx, [rbp + 24]
	sub ebx, 32

 toupperX$7:
	; Goto 9
	jmp toupperX$9

 toupperX$8:
	; Assign £temporary360 c
	mov ebx, [rbp + 24]

 toupperX$9:
	; Return £temporary360
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupperX$10:
	; FunctionEnd toupperX

section .text

 toupper:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$1:
	; Parameter signedint c 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 toupper$2:
	; Call islower 28 0
	mov qword [rbp + 28], toupper$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 toupper$3:
	; PostCall 28

 toupper$4:
	; GetReturnValue £temporary361

 toupper$5:
	; Equal 32 £temporary361 0
	cmp ebx, 0
	je toupper$32

 toupper$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$7:
	; Call localeconv 28 0
	mov qword [rbp + 28], toupper$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 toupper$8:
	; PostCall 28

 toupper$9:
	; GetReturnValue £temporary362

 toupper$10:
	; Assign localeConvPtr £temporary362
	mov [rbp + 28], rbx

 toupper$11:
	; Equal 30 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je toupper$30

 toupper$12:
	; Dereference £temporary364 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$13:
	; Assign lowerCase £temporary364 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 toupper$14:
	; Dereference £temporary365 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$15:
	; Assign upperCase £temporary365 -> localeConvPtr
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 toupper$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$17:
	; Parameter pointer lowerCase 76
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 toupper$18:
	; Parameter signedint c 84
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

 toupper$19:
	; Call strchr 52 0
	mov qword [rbp + 52], toupper$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 toupper$20:
	; PostCall 52

 toupper$21:
	; GetReturnValue £temporary366

 toupper$22:
	; BinarySubtract £temporary368 £temporary366 lowerCase
	sub rbx, [rbp + 36]

 toupper$23:
	; IntegralToIntegral £temporary369 £temporary368

 toupper$24:
	; Assign index £temporary369
	mov [rbp + 52], ebx

 toupper$25:
	; IntegralToIntegral £temporary371 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 toupper$26:
	; BinaryAdd £temporary373 upperCase £temporary371
	mov rsi, [rbp + 44]
	add rsi, rax

 toupper$27:
	; Dereference £temporary370 -> £temporary373 £temporary373 0

 toupper$28:
	; IntegralToIntegral £temporary374 £temporary370 -> £temporary373
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge toupper$29
	neg bl
	neg ebx

 toupper$29:
	; Return £temporary374
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$30:
	; BinarySubtract £temporary375 c 32
	mov ebx, [rbp + 24]
	sub ebx, 32

 toupper$31:
	; Return £temporary375
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$32:
	; Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$33:
	; FunctionEnd toupper
