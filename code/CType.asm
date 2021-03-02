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
	; GetReturnValue £temporary135

 islower$4:
	; Assign localeConvPtr £temporary135
	mov [rbp + 28], rbx

 islower$5:
	; Equal 19 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je islower$19

 islower$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 islower$7:
	; Dereference £temporary137 localeConvPtr 0
	mov rsi, [rbp + 28]

 islower$8:
	; Parameter 60 pointer £temporary137.lowerCase
	mov rax, [rsi + 40]
	mov [rbp + 60], rax

 islower$9:
	; Parameter 68 signed int c
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
	; GetReturnValue £temporary138

 islower$13:
	; Equal 16 £temporary138 integral8$0#
	cmp rbx, 0
	je islower$16

 islower$14:
	; Assign £temporary140 integral4$1#
	mov ebx, 1

 islower$15:
	; Jump 17
	jmp islower$17

 islower$16:
	; Assign £temporary140 integral4$0#
	mov ebx, 0

 islower$17:
	; SetReturnValue

 islower$18:
	; Return £temporary140
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$19:
	; LessThan 23 c integral4$97#
	cmp dword [rbp + 24], 97
	jl islower$23

 islower$20:
	; GreaterThan 23 c integral4$122#
	cmp dword [rbp + 24], 122
	jg islower$23

 islower$21:
	; Assign £temporary144 integral4$1#
	mov ebx, 1

 islower$22:
	; Jump 24
	jmp islower$24

 islower$23:
	; Assign £temporary144 integral4$0#
	mov ebx, 0

 islower$24:
	; SetReturnValue

 islower$25:
	; Return £temporary144
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
	; GetReturnValue £temporary145

 isupper$4:
	; Assign localeConvPtr £temporary145
	mov [rbp + 28], rbx

 isupper$5:
	; Equal 19 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je isupper$19

 isupper$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$7:
	; Dereference £temporary147 localeConvPtr 0
	mov rsi, [rbp + 28]

 isupper$8:
	; Parameter 60 pointer £temporary147.upperCase
	mov rax, [rsi + 48]
	mov [rbp + 60], rax

 isupper$9:
	; Parameter 68 signed int c
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
	; GetReturnValue £temporary148

 isupper$13:
	; Equal 16 £temporary148 integral8$0#
	cmp rbx, 0
	je isupper$16

 isupper$14:
	; Assign £temporary150 integral4$1#
	mov ebx, 1

 isupper$15:
	; Jump 17
	jmp isupper$17

 isupper$16:
	; Assign £temporary150 integral4$0#
	mov ebx, 0

 isupper$17:
	; SetReturnValue

 isupper$18:
	; Return £temporary150
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupper$19:
	; LessThan 23 c integral4$65#
	cmp dword [rbp + 24], 65
	jl isupper$23

 isupper$20:
	; GreaterThan 23 c integral4$90#
	cmp dword [rbp + 24], 90
	jg isupper$23

 isupper$21:
	; Assign £temporary154 integral4$1#
	mov ebx, 1

 isupper$22:
	; Jump 24
	jmp isupper$24

 isupper$23:
	; Assign £temporary154 integral4$0#
	mov ebx, 0

 isupper$24:
	; SetReturnValue

 isupper$25:
	; Return £temporary154
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
	; Parameter 52 signed int c
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
	; GetReturnValue £temporary155

 isalpha$5:
	; NotEqual 12 £temporary155 integral4$0#
	cmp ebx, 0
	jne isalpha$12

 isalpha$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalpha$7:
	; Parameter 52 signed int c
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
	; GetReturnValue £temporary156

 isalpha$11:
	; Equal 14 £temporary156 integral4$0#
	cmp ebx, 0
	je isalpha$14

 isalpha$12:
	; Assign £temporary160 integral4$1#
	mov ebx, 1

 isalpha$13:
	; Jump 15
	jmp isalpha$15

 isalpha$14:
	; Assign £temporary160 integral4$0#
	mov ebx, 0

 isalpha$15:
	; SetReturnValue

 isalpha$16:
	; Return £temporary160
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isalpha$17:
	; FunctionEnd isalpha

section .text

 isdigit:
	; LessThan 4 c integral4$48#
	cmp dword [rbp + 24], 48
	jl isdigit$4

 isdigit$1:
	; GreaterThan 4 c integral4$57#
	cmp dword [rbp + 24], 57
	jg isdigit$4

 isdigit$2:
	; Assign £temporary164 integral4$1#
	mov ebx, 1

 isdigit$3:
	; Jump 5
	jmp isdigit$5

 isdigit$4:
	; Assign £temporary164 integral4$0#
	mov ebx, 0

 isdigit$5:
	; SetReturnValue

 isdigit$6:
	; Return £temporary164
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
	; Parameter 52 signed int c
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
	; GetReturnValue £temporary165

 isalnum$5:
	; NotEqual 12 £temporary165 integral4$0#
	cmp ebx, 0
	jne isalnum$12

 isalnum$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalnum$7:
	; Parameter 52 signed int c
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
	; GetReturnValue £temporary166

 isalnum$11:
	; Equal 14 £temporary166 integral4$0#
	cmp ebx, 0
	je isalnum$14

 isalnum$12:
	; Assign £temporary170 integral4$1#
	mov ebx, 1

 isalnum$13:
	; Jump 15
	jmp isalnum$15

 isalnum$14:
	; Assign £temporary170 integral4$0#
	mov ebx, 0

 isalnum$15:
	; SetReturnValue

 isalnum$16:
	; Return £temporary170
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
	; Parameter 52 signed int c
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
	; GetReturnValue £temporary171

 isxdigit$5:
	; NotEqual 10 £temporary171 integral4$0#
	cmp ebx, 0
	jne isxdigit$10

 isxdigit$6:
	; LessThan 8 c integral4$97#
	cmp dword [rbp + 24], 97
	jl isxdigit$8

 isxdigit$7:
	; LessThanEqual 10 c integral4$102#
	cmp dword [rbp + 24], 102
	jle isxdigit$10

 isxdigit$8:
	; LessThan 12 c integral4$65#
	cmp dword [rbp + 24], 65
	jl isxdigit$12

 isxdigit$9:
	; GreaterThan 12 c integral4$70#
	cmp dword [rbp + 24], 70
	jg isxdigit$12

 isxdigit$10:
	; Assign £temporary181 integral4$1#
	mov ebx, 1

 isxdigit$11:
	; Jump 13
	jmp isxdigit$13

 isxdigit$12:
	; Assign £temporary181 integral4$0#
	mov ebx, 0

 isxdigit$13:
	; SetReturnValue

 isxdigit$14:
	; Return £temporary181
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isxdigit$15:
	; FunctionEnd isxdigit

section .text

 isgraph:
	; LessThan 4 c integral4$32#
	cmp dword [rbp + 24], 32
	jl isgraph$4

 isgraph$1:
	; GreaterThan 4 c integral4$126#
	cmp dword [rbp + 24], 126
	jg isgraph$4

 isgraph$2:
	; Assign £temporary185 integral4$1#
	mov ebx, 1

 isgraph$3:
	; Jump 5
	jmp isgraph$5

 isgraph$4:
	; Assign £temporary185 integral4$0#
	mov ebx, 0

 isgraph$5:
	; SetReturnValue

 isgraph$6:
	; Return £temporary185
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
	; Parameter 52 signed int c
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
	; GetReturnValue £temporary186

 isprint$5:
	; Equal 9 £temporary186 integral4$0#
	cmp ebx, 0
	je isprint$9

 isprint$6:
	; Equal 9 c integral4$32#
	cmp dword [rbp + 24], 32
	je isprint$9

 isprint$7:
	; Assign £temporary190 integral4$1#
	mov ebx, 1

 isprint$8:
	; Jump 10
	jmp isprint$10

 isprint$9:
	; Assign £temporary190 integral4$0#
	mov ebx, 0

 isprint$10:
	; SetReturnValue

 isprint$11:
	; Return £temporary190
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
	; Parameter 52 signed int c
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
	; GetReturnValue £temporary191

 ispunct$5:
	; Equal 14 £temporary191 integral4$0#
	cmp ebx, 0
	je ispunct$14

 ispunct$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ispunct$7:
	; Parameter 52 signed int c
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
	; GetReturnValue £temporary192

 ispunct$11:
	; NotEqual 14 £temporary192 integral4$0#
	cmp ebx, 0
	jne ispunct$14

 ispunct$12:
	; Assign £temporary197 integral4$1#
	mov ebx, 1

 ispunct$13:
	; Jump 15
	jmp ispunct$15

 ispunct$14:
	; Assign £temporary197 integral4$0#
	mov ebx, 0

 ispunct$15:
	; SetReturnValue

 ispunct$16:
	; Return £temporary197
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
	; Parameter 52 signed int c
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
	; GetReturnValue £temporary198

 iscntrl$5:
	; NotEqual 8 £temporary198 integral4$0#
	cmp ebx, 0
	jne iscntrl$8

 iscntrl$6:
	; Assign £temporary201 integral4$1#
	mov ebx, 1

 iscntrl$7:
	; Jump 9
	jmp iscntrl$9

 iscntrl$8:
	; Assign £temporary201 integral4$0#
	mov ebx, 0

 iscntrl$9:
	; SetReturnValue

 iscntrl$10:
	; Return £temporary201
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 iscntrl$11:
	; FunctionEnd iscntrl

section .text

 isspace:
	; Equal 6 c integral4$32#
	cmp dword [rbp + 24], 32
	je isspace$6

 isspace$1:
	; Equal 6 c integral4$12#
	cmp dword [rbp + 24], 12
	je isspace$6

 isspace$2:
	; Equal 6 c integral4$10#
	cmp dword [rbp + 24], 10
	je isspace$6

 isspace$3:
	; Equal 6 c integral4$13#
	cmp dword [rbp + 24], 13
	je isspace$6

 isspace$4:
	; Equal 6 c integral4$9#
	cmp dword [rbp + 24], 9
	je isspace$6

 isspace$5:
	; NotEqual 8 c integral4$11#
	cmp dword [rbp + 24], 11
	jne isspace$8

 isspace$6:
	; Assign £temporary213 integral4$1#
	mov ebx, 1

 isspace$7:
	; Jump 9
	jmp isspace$9

 isspace$8:
	; Assign £temporary213 integral4$0#
	mov ebx, 0

 isspace$9:
	; SetReturnValue

 isspace$10:
	; Return £temporary213
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
	; Parameter 52 signed int c
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
	; GetReturnValue £temporary214

 tolower$5:
	; Equal 34 £temporary214 integral4$0#
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
	; GetReturnValue £temporary215

 tolower$10:
	; Assign localeConvPtr £temporary215
	mov [rbp + 28], rbx

 tolower$11:
	; Equal 31 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je tolower$31

 tolower$12:
	; Dereference £temporary217 localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$13:
	; Assign lowerCase £temporary217.lowerCase
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 tolower$14:
	; Dereference £temporary218 localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$15:
	; Assign upperCase £temporary218.upperCase
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 tolower$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$17:
	; Parameter 76 pointer upperCase
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 tolower$18:
	; Parameter 84 signed int c
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
	; GetReturnValue £temporary219

 tolower$22:
	; Subtract £temporary220 £temporary219 upperCase
	sub rbx, [rbp + 44]

 tolower$23:
	; IntegralToIntegral £temporary221 £temporary220

 tolower$24:
	; Assign index £temporary221
	mov [rbp + 52], ebx

 tolower$25:
	; IntegralToIntegral £temporary222 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 tolower$26:
	; Add £temporary223 lowerCase £temporary222
	mov rsi, [rbp + 36]
	add rsi, rax

 tolower$27:
	; Dereference £temporary224 £temporary223 0

 tolower$28:
	; IntegralToIntegral £temporary225 £temporary224
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge tolower$29
	neg bl
	neg ebx

 tolower$29:
	; SetReturnValue

 tolower$30:
	; Return £temporary225
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$31:
	; Add £temporary226 c integral4$32#
	mov ebx, [rbp + 24]
	add ebx, 32

 tolower$32:
	; SetReturnValue

 tolower$33:
	; Return £temporary226
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
	; Parameter 52 signed int c
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
	; GetReturnValue £temporary228

 toupper$5:
	; Equal 34 £temporary228 integral4$0#
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
	; GetReturnValue £temporary229

 toupper$10:
	; Assign localeConvPtr £temporary229
	mov [rbp + 28], rbx

 toupper$11:
	; Equal 31 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je toupper$31

 toupper$12:
	; Dereference £temporary231 localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$13:
	; Assign lowerCase £temporary231.lowerCase
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 toupper$14:
	; Dereference £temporary232 localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$15:
	; Assign upperCase £temporary232.upperCase
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 toupper$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$17:
	; Parameter 76 pointer lowerCase
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 toupper$18:
	; Parameter 84 signed int c
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
	; GetReturnValue £temporary233

 toupper$22:
	; Subtract £temporary234 £temporary233 lowerCase
	sub rbx, [rbp + 36]

 toupper$23:
	; IntegralToIntegral £temporary235 £temporary234

 toupper$24:
	; Assign index £temporary235
	mov [rbp + 52], ebx

 toupper$25:
	; IntegralToIntegral £temporary236 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 toupper$26:
	; Add £temporary237 upperCase £temporary236
	mov rsi, [rbp + 44]
	add rsi, rax

 toupper$27:
	; Dereference £temporary238 £temporary237 0

 toupper$28:
	; IntegralToIntegral £temporary239 £temporary238
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge toupper$29
	neg bl
	neg ebx

 toupper$29:
	; SetReturnValue

 toupper$30:
	; Return £temporary239
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$31:
	; Subtract £temporary240 c integral4$32#
	mov ebx, [rbp + 24]
	sub ebx, 32

 toupper$32:
	; SetReturnValue

 toupper$33:
	; Return £temporary240
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
