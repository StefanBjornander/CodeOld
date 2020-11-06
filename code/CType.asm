	global islower
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
	global tolower
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
	; GetReturnValue £temporary259

 islower$4:
	; Assign localeConvPtr £temporary259
	mov [rbp + 28], rbx

 islower$5:
	; Equal 18 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je islower$18

 islower$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 islower$7:
	; Dereference £temporary261 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 islower$8:
	; Parameter pointer £temporary261 -> localeConvPtr 60
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
	; GetReturnValue £temporary262

 islower$13:
	; Equal 16 £temporary262 0
	cmp rbx, 0
	je islower$16

 islower$14:
	; Assign £temporary264 1
	mov ebx, 1

 islower$15:
	; Goto 17
	jmp islower$17

 islower$16:
	; Assign £temporary264 0
	mov ebx, 0

 islower$17:
	; Return £temporary264
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
	; Assign £temporary268 1
	mov ebx, 1

 islower$21:
	; Goto 23
	jmp islower$23

 islower$22:
	; Assign £temporary268 0
	mov ebx, 0

 islower$23:
	; Return £temporary268
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$24:
	; FunctionEnd islower

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
	; GetReturnValue £temporary269

 isupper$4:
	; Assign localeConvPtr £temporary269
	mov [rbp + 28], rbx

 isupper$5:
	; Equal 18 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je isupper$18

 isupper$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$7:
	; Dereference £temporary271 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 isupper$8:
	; Parameter pointer £temporary271 -> localeConvPtr 60
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
	; GetReturnValue £temporary272

 isupper$13:
	; Equal 16 £temporary272 0
	cmp rbx, 0
	je isupper$16

 isupper$14:
	; Assign £temporary274 1
	mov ebx, 1

 isupper$15:
	; Goto 17
	jmp isupper$17

 isupper$16:
	; Assign £temporary274 0
	mov ebx, 0

 isupper$17:
	; Return £temporary274
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
	; Assign £temporary278 1
	mov ebx, 1

 isupper$21:
	; Goto 23
	jmp isupper$23

 isupper$22:
	; Assign £temporary278 0
	mov ebx, 0

 isupper$23:
	; Return £temporary278
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
	; GetReturnValue £temporary279

 isalpha$5:
	; NotEqual 12 £temporary279 0
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
	; GetReturnValue £temporary280

 isalpha$11:
	; Equal 14 £temporary280 0
	cmp ebx, 0
	je isalpha$14

 isalpha$12:
	; Assign £temporary284 1
	mov ebx, 1

 isalpha$13:
	; Goto 15
	jmp isalpha$15

 isalpha$14:
	; Assign £temporary284 0
	mov ebx, 0

 isalpha$15:
	; Return £temporary284
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
	; Assign £temporary288 1
	mov ebx, 1

 isdigit$3:
	; Goto 5
	jmp isdigit$5

 isdigit$4:
	; Assign £temporary288 0
	mov ebx, 0

 isdigit$5:
	; Return £temporary288
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
	; GetReturnValue £temporary289

 isalnum$5:
	; NotEqual 12 £temporary289 0
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
	; GetReturnValue £temporary290

 isalnum$11:
	; Equal 14 £temporary290 0
	cmp ebx, 0
	je isalnum$14

 isalnum$12:
	; Assign £temporary294 1
	mov ebx, 1

 isalnum$13:
	; Goto 15
	jmp isalnum$15

 isalnum$14:
	; Assign £temporary294 0
	mov ebx, 0

 isalnum$15:
	; Return £temporary294
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
	; GetReturnValue £temporary295

 isxdigit$5:
	; NotEqual 10 £temporary295 0
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
	; Assign £temporary305 1
	mov ebx, 1

 isxdigit$11:
	; Goto 13
	jmp isxdigit$13

 isxdigit$12:
	; Assign £temporary305 0
	mov ebx, 0

 isxdigit$13:
	; Return £temporary305
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
	; Assign £temporary309 1
	mov ebx, 1

 isgraph$3:
	; Goto 5
	jmp isgraph$5

 isgraph$4:
	; Assign £temporary309 0
	mov ebx, 0

 isgraph$5:
	; Return £temporary309
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
	; GetReturnValue £temporary310

 isprint$5:
	; Equal 9 £temporary310 0
	cmp ebx, 0
	je isprint$9

 isprint$6:
	; Equal 9 c 32
	cmp dword [rbp + 24], 32
	je isprint$9

 isprint$7:
	; Assign £temporary314 1
	mov ebx, 1

 isprint$8:
	; Goto 10
	jmp isprint$10

 isprint$9:
	; Assign £temporary314 0
	mov ebx, 0

 isprint$10:
	; Return £temporary314
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
	; GetReturnValue £temporary315

 ispunct$5:
	; Equal 14 £temporary315 0
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
	; GetReturnValue £temporary317

 ispunct$11:
	; NotEqual 14 £temporary317 0
	cmp ebx, 0
	jne ispunct$14

 ispunct$12:
	; Assign £temporary321 1
	mov ebx, 1

 ispunct$13:
	; Goto 15
	jmp ispunct$15

 ispunct$14:
	; Assign £temporary321 0
	mov ebx, 0

 ispunct$15:
	; Return £temporary321
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
	; GetReturnValue £temporary322

 iscntrl$5:
	; NotEqual 8 £temporary322 0
	cmp ebx, 0
	jne iscntrl$8

 iscntrl$6:
	; Assign £temporary325 1
	mov ebx, 1

 iscntrl$7:
	; Goto 9
	jmp iscntrl$9

 iscntrl$8:
	; Assign £temporary325 0
	mov ebx, 0

 iscntrl$9:
	; Return £temporary325
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
	; Assign £temporary337 1
	mov ebx, 1

 isspace$7:
	; Goto 9
	jmp isspace$9

 isspace$8:
	; Assign £temporary337 0
	mov ebx, 0

 isspace$9:
	; Return £temporary337
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isspace$10:
	; FunctionEnd isspace

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
	; GetReturnValue £temporary338

 tolower$5:
	; Equal 32 £temporary338 0
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
	; GetReturnValue £temporary339

 tolower$10:
	; Assign localeConvPtr £temporary339
	mov [rbp + 28], rbx

 tolower$11:
	; Equal 30 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je tolower$30

 tolower$12:
	; Dereference £temporary341 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$13:
	; Assign lowerCase £temporary341 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 tolower$14:
	; Dereference £temporary342 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$15:
	; Assign upperCase £temporary342 -> localeConvPtr
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
	; GetReturnValue £temporary343

 tolower$22:
	; BinarySubtract £temporary345 £temporary343 upperCase
	sub rbx, [rbp + 44]

 tolower$23:
	; IntegralToIntegral £temporary346 £temporary345

 tolower$24:
	; Assign index £temporary346
	mov [rbp + 52], ebx

 tolower$25:
	; IntegralToIntegral £temporary348 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 tolower$26:
	; BinaryAdd £temporary350 lowerCase £temporary348
	mov rsi, [rbp + 36]
	add rsi, rax

 tolower$27:
	; Dereference £temporary347 -> £temporary350 £temporary350 0

 tolower$28:
	; IntegralToIntegral £temporary351 £temporary347 -> £temporary350
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge tolower$29
	neg bl
	neg ebx

 tolower$29:
	; Return £temporary351
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$30:
	; BinaryAdd £temporary352 c 32
	mov ebx, [rbp + 24]
	add ebx, 32

 tolower$31:
	; Return £temporary352
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
	; GetReturnValue £temporary354

 toupper$5:
	; Equal 32 £temporary354 0
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
	; GetReturnValue £temporary355

 toupper$10:
	; Assign localeConvPtr £temporary355
	mov [rbp + 28], rbx

 toupper$11:
	; Equal 30 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je toupper$30

 toupper$12:
	; Dereference £temporary357 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$13:
	; Assign lowerCase £temporary357 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 toupper$14:
	; Dereference £temporary358 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$15:
	; Assign upperCase £temporary358 -> localeConvPtr
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
	; GetReturnValue £temporary359

 toupper$22:
	; BinarySubtract £temporary361 £temporary359 lowerCase
	sub rbx, [rbp + 36]

 toupper$23:
	; IntegralToIntegral £temporary362 £temporary361

 toupper$24:
	; Assign index £temporary362
	mov [rbp + 52], ebx

 toupper$25:
	; IntegralToIntegral £temporary364 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 toupper$26:
	; BinaryAdd £temporary366 upperCase £temporary364
	mov rsi, [rbp + 44]
	add rsi, rax

 toupper$27:
	; Dereference £temporary363 -> £temporary366 £temporary366 0

 toupper$28:
	; IntegralToIntegral £temporary367 £temporary363 -> £temporary366
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge toupper$29
	neg bl
	neg ebx

 toupper$29:
	; Return £temporary367
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$30:
	; BinarySubtract £temporary368 c 32
	mov ebx, [rbp + 24]
	sub ebx, 32

 toupper$31:
	; Return £temporary368
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
