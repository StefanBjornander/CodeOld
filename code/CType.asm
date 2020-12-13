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
	; GetReturnValue £temporary134

 islower$4:
	; Assign localeConvPtr £temporary134
	mov [rbp + 28], rbx

 islower$5:
	; Equal 19 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je islower$19

 islower$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 islower$7:
	; Dereference £temporary136 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 islower$8:
	; Parameter 60 pointer £temporary136 -> localeConvPtr
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
	; GetReturnValue £temporary137

 islower$13:
	; Equal 16 £temporary137 0
	cmp rbx, 0
	je islower$16

 islower$14:
	; Assign £temporary139 1
	mov ebx, 1

 islower$15:
	; Jump 17
	jmp islower$17

 islower$16:
	; Assign £temporary139 0
	mov ebx, 0

 islower$17:
	; SetReturnValue

 islower$18:
	; Return £temporary139
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
	; Assign £temporary143 1
	mov ebx, 1

 islower$22:
	; Jump 24
	jmp islower$24

 islower$23:
	; Assign £temporary143 0
	mov ebx, 0

 islower$24:
	; SetReturnValue

 islower$25:
	; Return £temporary143
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
	; GetReturnValue £temporary144

 isupper$4:
	; Assign localeConvPtr £temporary144
	mov [rbp + 28], rbx

 isupper$5:
	; Equal 19 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je isupper$19

 isupper$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$7:
	; Dereference £temporary146 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 isupper$8:
	; Parameter 60 pointer £temporary146 -> localeConvPtr
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
	; GetReturnValue £temporary147

 isupper$13:
	; Equal 16 £temporary147 0
	cmp rbx, 0
	je isupper$16

 isupper$14:
	; Assign £temporary149 1
	mov ebx, 1

 isupper$15:
	; Jump 17
	jmp isupper$17

 isupper$16:
	; Assign £temporary149 0
	mov ebx, 0

 isupper$17:
	; SetReturnValue

 isupper$18:
	; Return £temporary149
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
	; Assign £temporary153 1
	mov ebx, 1

 isupper$22:
	; Jump 24
	jmp isupper$24

 isupper$23:
	; Assign £temporary153 0
	mov ebx, 0

 isupper$24:
	; SetReturnValue

 isupper$25:
	; Return £temporary153
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
	; GetReturnValue £temporary154

 isalpha$5:
	; NotEqual 12 £temporary154 0
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
	; GetReturnValue £temporary155

 isalpha$11:
	; Equal 14 £temporary155 0
	cmp ebx, 0
	je isalpha$14

 isalpha$12:
	; Assign £temporary159 1
	mov ebx, 1

 isalpha$13:
	; Jump 15
	jmp isalpha$15

 isalpha$14:
	; Assign £temporary159 0
	mov ebx, 0

 isalpha$15:
	; SetReturnValue

 isalpha$16:
	; Return £temporary159
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
	; Assign £temporary163 1
	mov ebx, 1

 isdigit$3:
	; Jump 5
	jmp isdigit$5

 isdigit$4:
	; Assign £temporary163 0
	mov ebx, 0

 isdigit$5:
	; SetReturnValue

 isdigit$6:
	; Return £temporary163
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
	; GetReturnValue £temporary164

 isalnum$5:
	; NotEqual 12 £temporary164 0
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
	; GetReturnValue £temporary165

 isalnum$11:
	; Equal 14 £temporary165 0
	cmp ebx, 0
	je isalnum$14

 isalnum$12:
	; Assign £temporary169 1
	mov ebx, 1

 isalnum$13:
	; Jump 15
	jmp isalnum$15

 isalnum$14:
	; Assign £temporary169 0
	mov ebx, 0

 isalnum$15:
	; SetReturnValue

 isalnum$16:
	; Return £temporary169
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
	; GetReturnValue £temporary170

 isxdigit$5:
	; NotEqual 10 £temporary170 0
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
	; Assign £temporary180 1
	mov ebx, 1

 isxdigit$11:
	; Jump 13
	jmp isxdigit$13

 isxdigit$12:
	; Assign £temporary180 0
	mov ebx, 0

 isxdigit$13:
	; SetReturnValue

 isxdigit$14:
	; Return £temporary180
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
	; Assign £temporary184 1
	mov ebx, 1

 isgraph$3:
	; Jump 5
	jmp isgraph$5

 isgraph$4:
	; Assign £temporary184 0
	mov ebx, 0

 isgraph$5:
	; SetReturnValue

 isgraph$6:
	; Return £temporary184
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
	; GetReturnValue £temporary185

 isprint$5:
	; Equal 9 £temporary185 0
	cmp ebx, 0
	je isprint$9

 isprint$6:
	; Equal 9 c 32
	cmp dword [rbp + 24], 32
	je isprint$9

 isprint$7:
	; Assign £temporary189 1
	mov ebx, 1

 isprint$8:
	; Jump 10
	jmp isprint$10

 isprint$9:
	; Assign £temporary189 0
	mov ebx, 0

 isprint$10:
	; SetReturnValue

 isprint$11:
	; Return £temporary189
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
	; GetReturnValue £temporary190

 ispunct$5:
	; Equal 14 £temporary190 0
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
	; GetReturnValue £temporary191

 ispunct$11:
	; NotEqual 14 £temporary191 0
	cmp ebx, 0
	jne ispunct$14

 ispunct$12:
	; Assign £temporary196 1
	mov ebx, 1

 ispunct$13:
	; Jump 15
	jmp ispunct$15

 ispunct$14:
	; Assign £temporary196 0
	mov ebx, 0

 ispunct$15:
	; SetReturnValue

 ispunct$16:
	; Return £temporary196
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
	; GetReturnValue £temporary197

 iscntrl$5:
	; NotEqual 8 £temporary197 0
	cmp ebx, 0
	jne iscntrl$8

 iscntrl$6:
	; Assign £temporary200 1
	mov ebx, 1

 iscntrl$7:
	; Jump 9
	jmp iscntrl$9

 iscntrl$8:
	; Assign £temporary200 0
	mov ebx, 0

 iscntrl$9:
	; SetReturnValue

 iscntrl$10:
	; Return £temporary200
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
	; Assign £temporary212 1
	mov ebx, 1

 isspace$7:
	; Jump 9
	jmp isspace$9

 isspace$8:
	; Assign £temporary212 0
	mov ebx, 0

 isspace$9:
	; SetReturnValue

 isspace$10:
	; Return £temporary212
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
	; GetReturnValue £temporary213

 tolower$5:
	; Equal 34 £temporary213 0
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
	; GetReturnValue £temporary214

 tolower$10:
	; Assign localeConvPtr £temporary214
	mov [rbp + 28], rbx

 tolower$11:
	; Equal 31 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je tolower$31

 tolower$12:
	; Dereference £temporary216 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$13:
	; Assign lowerCase £temporary216 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 tolower$14:
	; Dereference £temporary217 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$15:
	; Assign upperCase £temporary217 -> localeConvPtr
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
	; GetReturnValue £temporary218

 tolower$22:
	; BinarySubtract £temporary220 £temporary218 upperCase
	sub rbx, [rbp + 44]

 tolower$23:
	; IntegralToIntegral £temporary221 £temporary220

 tolower$24:
	; Assign index £temporary221
	mov [rbp + 52], ebx

 tolower$25:
	; IntegralToIntegral £temporary223 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 tolower$26:
	; BinaryAdd £temporary225 lowerCase £temporary223
	mov rsi, [rbp + 36]
	add rsi, rax

 tolower$27:
	; Dereference £temporary222 -> £temporary225 £temporary225 0

 tolower$28:
	; IntegralToIntegral £temporary226 £temporary222 -> £temporary225
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge tolower$29
	neg bl
	neg ebx

 tolower$29:
	; SetReturnValue

 tolower$30:
	; Return £temporary226
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$31:
	; BinaryAdd £temporary227 c 32
	mov ebx, [rbp + 24]
	add ebx, 32

 tolower$32:
	; SetReturnValue

 tolower$33:
	; Return £temporary227
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
	; GetReturnValue £temporary229

 toupper$5:
	; Equal 34 £temporary229 0
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
	; GetReturnValue £temporary230

 toupper$10:
	; Assign localeConvPtr £temporary230
	mov [rbp + 28], rbx

 toupper$11:
	; Equal 31 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je toupper$31

 toupper$12:
	; Dereference £temporary232 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$13:
	; Assign lowerCase £temporary232 -> localeConvPtr
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 toupper$14:
	; Dereference £temporary233 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$15:
	; Assign upperCase £temporary233 -> localeConvPtr
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
	; GetReturnValue £temporary234

 toupper$22:
	; BinarySubtract £temporary236 £temporary234 lowerCase
	sub rbx, [rbp + 36]

 toupper$23:
	; IntegralToIntegral £temporary237 £temporary236

 toupper$24:
	; Assign index £temporary237
	mov [rbp + 52], ebx

 toupper$25:
	; IntegralToIntegral £temporary239 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 toupper$26:
	; BinaryAdd £temporary241 upperCase £temporary239
	mov rsi, [rbp + 44]
	add rsi, rax

 toupper$27:
	; Dereference £temporary238 -> £temporary241 £temporary241 0

 toupper$28:
	; IntegralToIntegral £temporary242 £temporary238 -> £temporary241
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge toupper$29
	neg bl
	neg ebx

 toupper$29:
	; SetReturnValue

 toupper$30:
	; Return £temporary242
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$31:
	; BinarySubtract £temporary243 c 32
	mov ebx, [rbp + 24]
	sub ebx, 32

 toupper$32:
	; SetReturnValue

 toupper$33:
	; Return £temporary243
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
