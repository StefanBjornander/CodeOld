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
	; GetReturnValue £temporary254

 islower$4:
	; Assign localeConvPtr £temporary254
	mov [rbp + 28], rbx

 islower$5:
	; Equal 18 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je islower$18

 islower$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 islower$7:
	; Dereference £temporary256 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 islower$8:
	; Parameter pointer £temporary256 -> localeConvPtr 60
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
	; GetReturnValue £temporary257

 islower$13:
	; Equal 16 £temporary257 0
	cmp rbx, 0
	je islower$16

 islower$14:
	; Assign £temporary259 1
	mov ebx, 1

 islower$15:
	; Goto 17
	jmp islower$17

 islower$16:
	; Assign £temporary259 0
	mov ebx, 0

 islower$17:
	; Return £temporary259
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
	; Assign £temporary263 1
	mov ebx, 1

 islower$21:
	; Goto 23
	jmp islower$23

 islower$22:
	; Assign £temporary263 0
	mov ebx, 0

 islower$23:
	; Return £temporary263
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
	; GetReturnValue £temporary264

 isupper$4:
	; Assign localeConvPtr £temporary264
	mov [rbp + 28], rbx

 isupper$5:
	; Equal 18 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je isupper$18

 isupper$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$7:
	; Dereference £temporary266 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 isupper$8:
	; Parameter pointer £temporary266 -> localeConvPtr 60
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
	; GetReturnValue £temporary267

 isupper$13:
	; Equal 16 £temporary267 0
	cmp rbx, 0
	je isupper$16

 isupper$14:
	; Assign £temporary269 1
	mov ebx, 1

 isupper$15:
	; Goto 17
	jmp isupper$17

 isupper$16:
	; Assign £temporary269 0
	mov ebx, 0

 isupper$17:
	; Return £temporary269
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
	; Assign £temporary273 1
	mov ebx, 1

 isupper$21:
	; Goto 23
	jmp isupper$23

 isupper$22:
	; Assign £temporary273 0
	mov ebx, 0

 isupper$23:
	; Return £temporary273
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
	; GetReturnValue £temporary274

 isalpha$5:
	; NotEqual 12 £temporary274 0
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
	; GetReturnValue £temporary275

 isalpha$11:
	; Equal 14 £temporary275 0
	cmp ebx, 0
	je isalpha$14

 isalpha$12:
	; Assign £temporary279 1
	mov ebx, 1

 isalpha$13:
	; Goto 15
	jmp isalpha$15

 isalpha$14:
	; Assign £temporary279 0
	mov ebx, 0

 isalpha$15:
	; Return £temporary279
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
	; Assign £temporary283 1
	mov ebx, 1

 isdigit$3:
	; Goto 5
	jmp isdigit$5

 isdigit$4:
	; Assign £temporary283 0
	mov ebx, 0

 isdigit$5:
	; Return £temporary283
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
	; GetReturnValue £temporary284

 isalnum$5:
	; NotEqual 12 £temporary284 0
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
	; GetReturnValue £temporary285

 isalnum$11:
	; Equal 14 £temporary285 0
	cmp ebx, 0
	je isalnum$14

 isalnum$12:
	; Assign £temporary289 1
	mov ebx, 1

 isalnum$13:
	; Goto 15
	jmp isalnum$15

 isalnum$14:
	; Assign £temporary289 0
	mov ebx, 0

 isalnum$15:
	; Return £temporary289
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
	; GetReturnValue £temporary290

 isxdigit$5:
	; NotEqual 10 £temporary290 0
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
	; Assign £temporary300 1
	mov ebx, 1

 isxdigit$11:
	; Goto 13
	jmp isxdigit$13

 isxdigit$12:
	; Assign £temporary300 0
	mov ebx, 0

 isxdigit$13:
	; Return £temporary300
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
	; Assign £temporary304 1
	mov ebx, 1

 isgraph$3:
	; Goto 5
	jmp isgraph$5

 isgraph$4:
	; Assign £temporary304 0
	mov ebx, 0

 isgraph$5:
	; Return £temporary304
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
	; GetReturnValue £temporary305

 isprint$5:
	; Equal 9 £temporary305 0
	cmp ebx, 0
	je isprint$9

 isprint$6:
	; Equal 9 c 32
	cmp dword [rbp + 24], 32
	je isprint$9

 isprint$7:
	; Assign £temporary309 1
	mov ebx, 1

 isprint$8:
	; Goto 10
	jmp isprint$10

 isprint$9:
	; Assign £temporary309 0
	mov ebx, 0

 isprint$10:
	; Return £temporary309
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
	; GetReturnValue £temporary310

 ispunct$5:
	; Equal 14 £temporary310 0
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
	; GetReturnValue £temporary312

 ispunct$11:
	; NotEqual 14 £temporary312 0
	cmp ebx, 0
	jne ispunct$14

 ispunct$12:
	; Assign £temporary316 1
	mov ebx, 1

 ispunct$13:
	; Goto 15
	jmp ispunct$15

 ispunct$14:
	; Assign £temporary316 0
	mov ebx, 0

 ispunct$15:
	; Return £temporary316
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
	; GetReturnValue £temporary317

 iscntrl$5:
	; NotEqual 8 £temporary317 0
	cmp ebx, 0
	jne iscntrl$8

 iscntrl$6:
	; Assign £temporary320 1
	mov ebx, 1

 iscntrl$7:
	; Goto 9
	jmp iscntrl$9

 iscntrl$8:
	; Assign £temporary320 0
	mov ebx, 0

 iscntrl$9:
	; Return £temporary320
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
	; Assign £temporary332 1
	mov ebx, 1

 isspace$7:
	; Goto 9
	jmp isspace$9

 isspace$8:
	; Assign £temporary332 0
	mov ebx, 0

 isspace$9:
	; Return £temporary332
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
	; GetReturnValue £temporary333

 tolower$5:
	; Equal 32 £temporary333 0
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
	; GetReturnValue £temporary334

 tolower$10:
	; Assign localeConvPtr £temporary334
	mov [rbp + 28], rbx

 tolower$11:
	; Equal 30 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je tolower$30

 tolower$12:
	; Dereference £temporary336 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$13:
	; Assign lowerCase £temporary336 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 tolower$14:
	; Dereference £temporary337 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$15:
	; Assign upperCase £temporary337 -> localeConvPtr
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
	; GetReturnValue £temporary338

 tolower$22:
	; BinarySubtract £temporary340 £temporary338 upperCase
	sub rbx, [rbp + 44]

 tolower$23:
	; IntegralToIntegral £temporary341 £temporary340

 tolower$24:
	; Assign index £temporary341
	mov [rbp + 52], ebx

 tolower$25:
	; IntegralToIntegral £temporary343 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 tolower$26:
	; BinaryAdd £temporary345 lowerCase £temporary343
	mov rsi, [rbp + 36]
	add rsi, rax

 tolower$27:
	; Dereference £temporary342 -> £temporary345 £temporary345 0

 tolower$28:
	; IntegralToIntegral £temporary346 £temporary342 -> £temporary345
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge tolower$29
	neg bl
	neg ebx

 tolower$29:
	; Return £temporary346
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$30:
	; BinaryAdd £temporary347 c 32
	mov ebx, [rbp + 24]
	add ebx, 32

 tolower$31:
	; Return £temporary347
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
	; GetReturnValue £temporary349

 toupper$5:
	; Equal 32 £temporary349 0
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
	; GetReturnValue £temporary350

 toupper$10:
	; Assign localeConvPtr £temporary350
	mov [rbp + 28], rbx

 toupper$11:
	; Equal 30 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je toupper$30

 toupper$12:
	; Dereference £temporary352 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$13:
	; Assign lowerCase £temporary352 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 toupper$14:
	; Dereference £temporary353 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$15:
	; Assign upperCase £temporary353 -> localeConvPtr
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
	; GetReturnValue £temporary354

 toupper$22:
	; BinarySubtract £temporary356 £temporary354 lowerCase
	sub rbx, [rbp + 36]

 toupper$23:
	; IntegralToIntegral £temporary357 £temporary356

 toupper$24:
	; Assign index £temporary357
	mov [rbp + 52], ebx

 toupper$25:
	; IntegralToIntegral £temporary359 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 toupper$26:
	; BinaryAdd £temporary361 upperCase £temporary359
	mov rsi, [rbp + 44]
	add rsi, rax

 toupper$27:
	; Dereference £temporary358 -> £temporary361 £temporary361 0

 toupper$28:
	; IntegralToIntegral £temporary362 £temporary358 -> £temporary361
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge toupper$29
	neg bl
	neg ebx

 toupper$29:
	; Return £temporary362
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$30:
	; BinarySubtract £temporary363 c 32
	mov ebx, [rbp + 24]
	sub ebx, 32

 toupper$31:
	; Return £temporary363
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
