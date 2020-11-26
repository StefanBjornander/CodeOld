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
	; Call 28 localeconv 0
	mov qword [rbp + 28], islower$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 islower$2:
	; PostCall 28

 islower$3:
	; GetReturnValue £temporary251

 islower$4:
	; Assign localeConvPtr £temporary251
	mov [rbp + 28], rbx

 islower$5:
	; Equal 19 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je islower$19

 islower$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 islower$7:
	; Dereference £temporary253 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 islower$8:
	; Parameter 60 pointer £temporary253 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 60], rax

 islower$9:
	; Parameter 68 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 islower$10:
	; Call 36 strchr 0
	mov qword [rbp + 36], islower$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

 islower$11:
	; PostCall 36

 islower$12:
	; GetReturnValue £temporary254

 islower$13:
	; Equal 16 £temporary254 0
	cmp rbx, 0
	je islower$16

 islower$14:
	; Assign £temporary256 1
	mov ebx, 1

 islower$15:
	; Goto 17
	jmp islower$17

 islower$16:
	; Assign £temporary256 0
	mov ebx, 0

 islower$17:
	; SetReturnValue

 islower$18:
	; Return £temporary256
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$19:
	; SignedLessThan 23 c 97
	cmp dword [rbp + 24], 97
	jl islower$23

 islower$20:
	; SignedGreaterThan 23 c 122
	cmp dword [rbp + 24], 122
	jg islower$23

 islower$21:
	; Assign £temporary260 1
	mov ebx, 1

 islower$22:
	; Goto 24
	jmp islower$24

 islower$23:
	; Assign £temporary260 0
	mov ebx, 0

 islower$24:
	; SetReturnValue

 islower$25:
	; Return £temporary260
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$26:
	; FunctionEnd islower

section .text

 isupper:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$1:
	; Call 28 localeconv 0
	mov qword [rbp + 28], isupper$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 isupper$2:
	; PostCall 28

 isupper$3:
	; GetReturnValue £temporary261

 isupper$4:
	; Assign localeConvPtr £temporary261
	mov [rbp + 28], rbx

 isupper$5:
	; Equal 19 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je isupper$19

 isupper$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$7:
	; Dereference £temporary263 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 isupper$8:
	; Parameter 60 pointer £temporary263 -> localeConvPtr
	mov rax, [rsi + 48]
	mov [rbp + 60], rax

 isupper$9:
	; Parameter 68 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 isupper$10:
	; Call 36 strchr 0
	mov qword [rbp + 36], isupper$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

 isupper$11:
	; PostCall 36

 isupper$12:
	; GetReturnValue £temporary264

 isupper$13:
	; Equal 16 £temporary264 0
	cmp rbx, 0
	je isupper$16

 isupper$14:
	; Assign £temporary266 1
	mov ebx, 1

 isupper$15:
	; Goto 17
	jmp isupper$17

 isupper$16:
	; Assign £temporary266 0
	mov ebx, 0

 isupper$17:
	; SetReturnValue

 isupper$18:
	; Return £temporary266
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupper$19:
	; SignedLessThan 23 c 65
	cmp dword [rbp + 24], 65
	jl isupper$23

 isupper$20:
	; SignedGreaterThan 23 c 90
	cmp dword [rbp + 24], 90
	jg isupper$23

 isupper$21:
	; Assign £temporary270 1
	mov ebx, 1

 isupper$22:
	; Goto 24
	jmp isupper$24

 isupper$23:
	; Assign £temporary270 0
	mov ebx, 0

 isupper$24:
	; SetReturnValue

 isupper$25:
	; Return £temporary270
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupper$26:
	; FunctionEnd isupper

section .text

 isalpha:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalpha$1:
	; Parameter 52 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalpha$2:
	; Call 28 islower 0
	mov qword [rbp + 28], isalpha$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 isalpha$3:
	; PostCall 28

 isalpha$4:
	; GetReturnValue £temporary271

 isalpha$5:
	; NotEqual 12 £temporary271 0
	cmp ebx, 0
	jne isalpha$12

 isalpha$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalpha$7:
	; Parameter 52 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalpha$8:
	; Call 28 isupper 0
	mov qword [rbp + 28], isalpha$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 isalpha$9:
	; PostCall 28

 isalpha$10:
	; GetReturnValue £temporary272

 isalpha$11:
	; Equal 14 £temporary272 0
	cmp ebx, 0
	je isalpha$14

 isalpha$12:
	; Assign £temporary276 1
	mov ebx, 1

 isalpha$13:
	; Goto 15
	jmp isalpha$15

 isalpha$14:
	; Assign £temporary276 0
	mov ebx, 0

 isalpha$15:
	; SetReturnValue

 isalpha$16:
	; Return £temporary276
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isalpha$17:
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
	; Assign £temporary280 1
	mov ebx, 1

 isdigit$3:
	; Goto 5
	jmp isdigit$5

 isdigit$4:
	; Assign £temporary280 0
	mov ebx, 0

 isdigit$5:
	; SetReturnValue

 isdigit$6:
	; Return £temporary280
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isdigit$7:
	; FunctionEnd isdigit

section .text

 isalnum:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalnum$1:
	; Parameter 52 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalnum$2:
	; Call 28 isalpha 0
	mov qword [rbp + 28], isalnum$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalpha

 isalnum$3:
	; PostCall 28

 isalnum$4:
	; GetReturnValue £temporary281

 isalnum$5:
	; NotEqual 12 £temporary281 0
	cmp ebx, 0
	jne isalnum$12

 isalnum$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalnum$7:
	; Parameter 52 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalnum$8:
	; Call 28 isdigit 0
	mov qword [rbp + 28], isalnum$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

 isalnum$9:
	; PostCall 28

 isalnum$10:
	; GetReturnValue £temporary282

 isalnum$11:
	; Equal 14 £temporary282 0
	cmp ebx, 0
	je isalnum$14

 isalnum$12:
	; Assign £temporary286 1
	mov ebx, 1

 isalnum$13:
	; Goto 15
	jmp isalnum$15

 isalnum$14:
	; Assign £temporary286 0
	mov ebx, 0

 isalnum$15:
	; SetReturnValue

 isalnum$16:
	; Return £temporary286
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isalnum$17:
	; FunctionEnd isalnum

section .text

 isxdigit:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isxdigit$1:
	; Parameter 52 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isxdigit$2:
	; Call 28 isdigit 0
	mov qword [rbp + 28], isxdigit$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

 isxdigit$3:
	; PostCall 28

 isxdigit$4:
	; GetReturnValue £temporary287

 isxdigit$5:
	; NotEqual 10 £temporary287 0
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
	; Assign £temporary297 1
	mov ebx, 1

 isxdigit$11:
	; Goto 13
	jmp isxdigit$13

 isxdigit$12:
	; Assign £temporary297 0
	mov ebx, 0

 isxdigit$13:
	; SetReturnValue

 isxdigit$14:
	; Return £temporary297
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isxdigit$15:
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
	; Assign £temporary301 1
	mov ebx, 1

 isgraph$3:
	; Goto 5
	jmp isgraph$5

 isgraph$4:
	; Assign £temporary301 0
	mov ebx, 0

 isgraph$5:
	; SetReturnValue

 isgraph$6:
	; Return £temporary301
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isgraph$7:
	; FunctionEnd isgraph

section .text

 isprint:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isprint$1:
	; Parameter 52 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isprint$2:
	; Call 28 isgraph 0
	mov qword [rbp + 28], isprint$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

 isprint$3:
	; PostCall 28

 isprint$4:
	; GetReturnValue £temporary302

 isprint$5:
	; Equal 9 £temporary302 0
	cmp ebx, 0
	je isprint$9

 isprint$6:
	; Equal 9 c 32
	cmp dword [rbp + 24], 32
	je isprint$9

 isprint$7:
	; Assign £temporary306 1
	mov ebx, 1

 isprint$8:
	; Goto 10
	jmp isprint$10

 isprint$9:
	; Assign £temporary306 0
	mov ebx, 0

 isprint$10:
	; SetReturnValue

 isprint$11:
	; Return £temporary306
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isprint$12:
	; FunctionEnd isprint

section .text

 ispunct:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ispunct$1:
	; Parameter 52 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 ispunct$2:
	; Call 28 isgraph 0
	mov qword [rbp + 28], ispunct$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

 ispunct$3:
	; PostCall 28

 ispunct$4:
	; GetReturnValue £temporary307

 ispunct$5:
	; Equal 14 £temporary307 0
	cmp ebx, 0
	je ispunct$14

 ispunct$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ispunct$7:
	; Parameter 52 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 ispunct$8:
	; Call 28 isalnum 0
	mov qword [rbp + 28], ispunct$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalnum

 ispunct$9:
	; PostCall 28

 ispunct$10:
	; GetReturnValue £temporary308

 ispunct$11:
	; NotEqual 14 £temporary308 0
	cmp ebx, 0
	jne ispunct$14

 ispunct$12:
	; Assign £temporary313 1
	mov ebx, 1

 ispunct$13:
	; Goto 15
	jmp ispunct$15

 ispunct$14:
	; Assign £temporary313 0
	mov ebx, 0

 ispunct$15:
	; SetReturnValue

 ispunct$16:
	; Return £temporary313
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ispunct$17:
	; FunctionEnd ispunct

section .text

 iscntrl:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 iscntrl$1:
	; Parameter 52 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 iscntrl$2:
	; Call 28 isprint 0
	mov qword [rbp + 28], iscntrl$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isprint

 iscntrl$3:
	; PostCall 28

 iscntrl$4:
	; GetReturnValue £temporary314

 iscntrl$5:
	; NotEqual 8 £temporary314 0
	cmp ebx, 0
	jne iscntrl$8

 iscntrl$6:
	; Assign £temporary317 1
	mov ebx, 1

 iscntrl$7:
	; Goto 9
	jmp iscntrl$9

 iscntrl$8:
	; Assign £temporary317 0
	mov ebx, 0

 iscntrl$9:
	; SetReturnValue

 iscntrl$10:
	; Return £temporary317
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 iscntrl$11:
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
	; Assign £temporary329 1
	mov ebx, 1

 isspace$7:
	; Goto 9
	jmp isspace$9

 isspace$8:
	; Assign £temporary329 0
	mov ebx, 0

 isspace$9:
	; SetReturnValue

 isspace$10:
	; Return £temporary329
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isspace$11:
	; FunctionEnd isspace

section .text

 tolower:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$1:
	; Parameter 52 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 tolower$2:
	; Call 28 isupper 0
	mov qword [rbp + 28], tolower$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 tolower$3:
	; PostCall 28

 tolower$4:
	; GetReturnValue £temporary330

 tolower$5:
	; Equal 34 £temporary330 0
	cmp ebx, 0
	je tolower$34

 tolower$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$7:
	; Call 28 localeconv 0
	mov qword [rbp + 28], tolower$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 tolower$8:
	; PostCall 28

 tolower$9:
	; GetReturnValue £temporary331

 tolower$10:
	; Assign localeConvPtr £temporary331
	mov [rbp + 28], rbx

 tolower$11:
	; Equal 31 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je tolower$31

 tolower$12:
	; Dereference £temporary333 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$13:
	; Assign lowerCase £temporary333 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 tolower$14:
	; Dereference £temporary334 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$15:
	; Assign upperCase £temporary334 -> localeConvPtr
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 tolower$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$17:
	; Parameter 76 pointer upperCase
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 tolower$18:
	; Parameter 84 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

 tolower$19:
	; Call 52 strchr 0
	mov qword [rbp + 52], tolower$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 tolower$20:
	; PostCall 52

 tolower$21:
	; GetReturnValue £temporary335

 tolower$22:
	; BinarySubtract £temporary337 £temporary335 upperCase
	sub rbx, [rbp + 44]

 tolower$23:
	; IntegralToIntegral £temporary338 £temporary337

 tolower$24:
	; Assign index £temporary338
	mov [rbp + 52], ebx

 tolower$25:
	; IntegralToIntegral £temporary340 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 tolower$26:
	; BinaryAdd £temporary342 lowerCase £temporary340
	mov rsi, [rbp + 36]
	add rsi, rax

 tolower$27:
	; Dereference £temporary339 -> £temporary342 £temporary342 0

 tolower$28:
	; IntegralToIntegral £temporary343 £temporary339 -> £temporary342
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge tolower$29
	neg bl
	neg ebx

 tolower$29:
	; SetReturnValue

 tolower$30:
	; Return £temporary343
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$31:
	; BinaryAdd £temporary344 c 32
	mov ebx, [rbp + 24]
	add ebx, 32

 tolower$32:
	; SetReturnValue

 tolower$33:
	; Return £temporary344
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$34:
	; SetReturnValue

 tolower$35:
	; Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$36:
	; FunctionEnd tolower

section .text

 toupper:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$1:
	; Parameter 52 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 toupper$2:
	; Call 28 islower 0
	mov qword [rbp + 28], toupper$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 toupper$3:
	; PostCall 28

 toupper$4:
	; GetReturnValue £temporary346

 toupper$5:
	; Equal 34 £temporary346 0
	cmp ebx, 0
	je toupper$34

 toupper$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$7:
	; Call 28 localeconv 0
	mov qword [rbp + 28], toupper$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 toupper$8:
	; PostCall 28

 toupper$9:
	; GetReturnValue £temporary347

 toupper$10:
	; Assign localeConvPtr £temporary347
	mov [rbp + 28], rbx

 toupper$11:
	; Equal 31 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je toupper$31

 toupper$12:
	; Dereference £temporary349 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$13:
	; Assign lowerCase £temporary349 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 toupper$14:
	; Dereference £temporary350 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$15:
	; Assign upperCase £temporary350 -> localeConvPtr
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 toupper$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$17:
	; Parameter 76 pointer lowerCase
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 toupper$18:
	; Parameter 84 signedint c
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

 toupper$19:
	; Call 52 strchr 0
	mov qword [rbp + 52], toupper$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 toupper$20:
	; PostCall 52

 toupper$21:
	; GetReturnValue £temporary351

 toupper$22:
	; BinarySubtract £temporary353 £temporary351 lowerCase
	sub rbx, [rbp + 36]

 toupper$23:
	; IntegralToIntegral £temporary354 £temporary353

 toupper$24:
	; Assign index £temporary354
	mov [rbp + 52], ebx

 toupper$25:
	; IntegralToIntegral £temporary356 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 toupper$26:
	; BinaryAdd £temporary358 upperCase £temporary356
	mov rsi, [rbp + 44]
	add rsi, rax

 toupper$27:
	; Dereference £temporary355 -> £temporary358 £temporary358 0

 toupper$28:
	; IntegralToIntegral £temporary359 £temporary355 -> £temporary358
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge toupper$29
	neg bl
	neg ebx

 toupper$29:
	; SetReturnValue

 toupper$30:
	; Return £temporary359
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$31:
	; BinarySubtract £temporary360 c 32
	mov ebx, [rbp + 24]
	sub ebx, 32

 toupper$32:
	; SetReturnValue

 toupper$33:
	; Return £temporary360
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$34:
	; SetReturnValue

 toupper$35:
	; Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$36:
	; FunctionEnd toupper
