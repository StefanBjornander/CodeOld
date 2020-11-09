	global atoi
	global atol
	global strtol
	global strtol_test
	global strtoul
	global strtoul_test
	global atof
	global strtod
	global abort
	global getenv
	global system
	global bsearch
	global rand
	global srand
	global g_funcArray
	global atexit
	global exit
	global memswp
	global qsort
	global @abs
	global labs
	global div
	global ldiv

	extern g_inStatus
	extern g_inDevice
	extern g_inChars
	extern scanLongInt
	extern printf
	extern scanUnsignedLongInt
	extern sscanf
	extern errno
	extern $StackTop


section .text

 atoi:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atoi$1:
	; Parameter pointer s 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atoi$2:
	; Parameter pointer 0 64
	mov qword [rbp + 64], 0

 atoi$3:
	; Parameter signedint 10 72
	mov dword [rbp + 72], 10

 atoi$4:
	; Call strtol 32 0
	mov qword [rbp + 32], atoi$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atoi$5:
	; PostCall 32

 atoi$6:
	; GetReturnValue £temporary1981

 atoi$7:
	; IntegralToIntegral £temporary1982 £temporary1981
	cmp rbx, 0
	jge atoi$8
	neg rbx
	neg ebx

 atoi$8:
	; Return £temporary1982
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atoi$9:
	; FunctionEnd atoi

section .text

 atol:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atol$1:
	; Parameter pointer s 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atol$2:
	; Parameter pointer 0 64
	mov qword [rbp + 64], 0

 atol$3:
	; Parameter signedint 10 72
	mov dword [rbp + 72], 10

 atol$4:
	; Call strtol 32 0
	mov qword [rbp + 32], atol$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atol$5:
	; PostCall 32

 atol$6:
	; GetReturnValue £temporary1983

 atol$7:
	; Return £temporary1983
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atol$8:
	; FunctionEnd atol

section .text

 strtol:
	; Assign g_inStatus 1
	mov dword [g_inStatus], 1

 strtol$1:
	; Assign g_inDevice s
	mov rax, [rbp + 24]
	mov [g_inDevice], rax

 strtol$2:
	; Assign g_inChars 0
	mov dword [g_inChars], 0

 strtol$3:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol$4:
	; Parameter signedint base 68
	mov eax, [rbp + 40]
	mov [rbp + 68], eax

 strtol$5:
	; Call scanLongInt 44 0
	mov qword [rbp + 44], strtol$6
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanLongInt

 strtol$6:
	; PostCall 44

 strtol$7:
	; GetReturnValue £temporary1984

 strtol$8:
	; Assign longValue £temporary1984
	mov [rbp + 44], rbx

 strtol$9:
	; Equal 13 endp 0
	cmp qword [rbp + 32], 0
	je strtol$13

 strtol$10:
	; Dereference £temporary1986 -> endp endp 0
	mov rsi, [rbp + 32]

 strtol$11:
	; IntegralToIntegral £temporary1987 g_inChars
	mov eax, [g_inChars]
	mov rbx, 4294967295
	and rax, rbx

 strtol$12:
	; BinaryAdd £temporary1986 -> endp s £temporary1987
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtol$13:
	; Return longValue
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtol$14:
	; FunctionEnd strtol

section .data

string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

string_2020202B0123abc#:
	; Initializer String    +0123abc
	db "   +0123abc", 0

section .data

string_2020202B0x123ABC#:
	; Initializer String    +0x123ABC
	db "   +0x123ABC", 0

section .data

string_2020202B0X123abc#:
	; Initializer String    +0X123abc
	db "   +0X123abc", 0

section .data

string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

string_2020202D0123abc#:
	; Initializer String    -0123abc
	db "   -0123abc", 0

section .data

string_2020202D0x123ABC#:
	; Initializer String    -0x123ABC
	db "   -0x123ABC", 0

section .data

string_2020202D0X123abc#:
	; Initializer String    -0X123abc
	db "   -0X123abc", 0

section .data

string_2020202B123ABC#:
	; Initializer String    +123ABC
	db "   +123ABC", 0

section .data

string_2020202D123ABC#:
	; Initializer String    -123ABC
	db "   -123ABC", 0

section .text

 strtol_test:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtol_test$1:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$2:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$3:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$4:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtol_test$5:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$6:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$7:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$8:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtol_test$9:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtol_test$10:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtol_test$11:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$12:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$13:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$14:
	; Address £temporary2001 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$15:
	; Parameter pointer £temporary2001 79
	mov [rbp + 79], rsi

 strtol_test$16:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$17:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$18
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$18:
	; PostCall 47

 strtol_test$19:
	; GetReturnValue £temporary2002

 strtol_test$20:
	; Assign value £temporary2002
	mov [rbp + 47], rbx

 strtol_test$21:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$22:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$23:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$24:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$25:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$26:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$27:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$28
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$28:
	; PostCall 55

 strtol_test$29:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtol_test$30:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$31:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$32:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$33:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtol_test$34:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtol_test$35:
	; Assign text[5] 49
	mov byte [rbp + 33], 49

 strtol_test$36:
	; Assign text[6] 50
	mov byte [rbp + 34], 50

 strtol_test$37:
	; Assign text[7] 51
	mov byte [rbp + 35], 51

 strtol_test$38:
	; Assign text[8] 97
	mov byte [rbp + 36], 97

 strtol_test$39:
	; Assign text[9] 98
	mov byte [rbp + 37], 98

 strtol_test$40:
	; Assign text[10] 99
	mov byte [rbp + 38], 99

 strtol_test$41:
	; Assign text[11] 0
	mov byte [rbp + 39], 0

 strtol_test$42:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$43:
	; Parameter pointer text 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtol_test$44:
	; Address £temporary2016 pointer
	mov rsi, rbp
	add rsi, 40

 strtol_test$45:
	; Parameter pointer £temporary2016 80
	mov [rbp + 80], rsi

 strtol_test$46:
	; Parameter signedint base 88
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtol_test$47:
	; Call strtol 48 0
	mov qword [rbp + 48], strtol_test$48
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtol

 strtol_test$48:
	; PostCall 48

 strtol_test$49:
	; GetReturnValue £temporary2017

 strtol_test$50:
	; Assign value £temporary2017
	mov [rbp + 48], rbx

 strtol_test$51:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$52:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 80
	mov qword [rbp + 80], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$53:
	; Parameter pointer text 88
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtol_test$54:
	; Parameter signed long int value 96
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtol_test$55:
	; Parameter pointer pointer 104
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtol_test$56:
	; Parameter signedint base 112
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtol_test$57:
	; Call printf 56 28
	mov qword [rbp + 56], strtol_test$58
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$58:
	; PostCall 56

 strtol_test$59:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtol_test$60:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$61:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$62:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$63:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtol_test$64:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtol_test$65:
	; Assign text[5] 120
	mov byte [rbp + 33], 120

 strtol_test$66:
	; Assign text[6] 49
	mov byte [rbp + 34], 49

 strtol_test$67:
	; Assign text[7] 50
	mov byte [rbp + 35], 50

 strtol_test$68:
	; Assign text[8] 51
	mov byte [rbp + 36], 51

 strtol_test$69:
	; Assign text[9] 65
	mov byte [rbp + 37], 65

 strtol_test$70:
	; Assign text[10] 66
	mov byte [rbp + 38], 66

 strtol_test$71:
	; Assign text[11] 67
	mov byte [rbp + 39], 67

 strtol_test$72:
	; Assign text[12] 0
	mov byte [rbp + 40], 0

 strtol_test$73:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$74:
	; Parameter pointer text 73
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$75:
	; Address £temporary2032 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$76:
	; Parameter pointer £temporary2032 81
	mov [rbp + 81], rsi

 strtol_test$77:
	; Parameter signedint base 89
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$78:
	; Call strtol 49 0
	mov qword [rbp + 49], strtol_test$79
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$79:
	; PostCall 49

 strtol_test$80:
	; GetReturnValue £temporary2033

 strtol_test$81:
	; Assign value £temporary2033
	mov [rbp + 49], rbx

 strtol_test$82:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$83:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 81
	mov qword [rbp + 81], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$84:
	; Parameter pointer text 89
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$85:
	; Parameter signed long int value 97
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$86:
	; Parameter pointer pointer 105
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$87:
	; Parameter signedint base 113
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$88:
	; Call printf 57 28
	mov qword [rbp + 57], strtol_test$89
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$89:
	; PostCall 57

 strtol_test$90:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtol_test$91:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$92:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$93:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$94:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtol_test$95:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtol_test$96:
	; Assign text[5] 88
	mov byte [rbp + 33], 88

 strtol_test$97:
	; Assign text[6] 49
	mov byte [rbp + 34], 49

 strtol_test$98:
	; Assign text[7] 50
	mov byte [rbp + 35], 50

 strtol_test$99:
	; Assign text[8] 51
	mov byte [rbp + 36], 51

 strtol_test$100:
	; Assign text[9] 97
	mov byte [rbp + 37], 97

 strtol_test$101:
	; Assign text[10] 98
	mov byte [rbp + 38], 98

 strtol_test$102:
	; Assign text[11] 99
	mov byte [rbp + 39], 99

 strtol_test$103:
	; Assign text[12] 0
	mov byte [rbp + 40], 0

 strtol_test$104:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$105:
	; Parameter pointer text 73
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$106:
	; Address £temporary2048 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$107:
	; Parameter pointer £temporary2048 81
	mov [rbp + 81], rsi

 strtol_test$108:
	; Parameter signedint base 89
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$109:
	; Call strtol 49 0
	mov qword [rbp + 49], strtol_test$110
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$110:
	; PostCall 49

 strtol_test$111:
	; GetReturnValue £temporary2049

 strtol_test$112:
	; Assign value £temporary2049
	mov [rbp + 49], rbx

 strtol_test$113:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$114:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 81
	mov qword [rbp + 81], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$115:
	; Parameter pointer text 89
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$116:
	; Parameter signed long int value 97
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$117:
	; Parameter pointer pointer 105
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$118:
	; Parameter signedint base 113
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$119:
	; Call printf 57 28
	mov qword [rbp + 57], strtol_test$120
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$120:
	; PostCall 57

 strtol_test$121:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtol_test$122:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$123:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$124:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$125:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtol_test$126:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$127:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$128:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$129:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtol_test$130:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtol_test$131:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtol_test$132:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$133:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$134:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$135:
	; Address £temporary2062 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$136:
	; Parameter pointer £temporary2062 79
	mov [rbp + 79], rsi

 strtol_test$137:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$138:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$139
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$139:
	; PostCall 47

 strtol_test$140:
	; GetReturnValue £temporary2063

 strtol_test$141:
	; Assign value £temporary2063
	mov [rbp + 47], rbx

 strtol_test$142:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$143:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$144:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$145:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$146:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$147:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$148:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$149
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$149:
	; PostCall 55

 strtol_test$150:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtol_test$151:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$152:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$153:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$154:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtol_test$155:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtol_test$156:
	; Assign text[5] 49
	mov byte [rbp + 33], 49

 strtol_test$157:
	; Assign text[6] 50
	mov byte [rbp + 34], 50

 strtol_test$158:
	; Assign text[7] 51
	mov byte [rbp + 35], 51

 strtol_test$159:
	; Assign text[8] 97
	mov byte [rbp + 36], 97

 strtol_test$160:
	; Assign text[9] 98
	mov byte [rbp + 37], 98

 strtol_test$161:
	; Assign text[10] 99
	mov byte [rbp + 38], 99

 strtol_test$162:
	; Assign text[11] 0
	mov byte [rbp + 39], 0

 strtol_test$163:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$164:
	; Parameter pointer text 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtol_test$165:
	; Address £temporary2077 pointer
	mov rsi, rbp
	add rsi, 40

 strtol_test$166:
	; Parameter pointer £temporary2077 80
	mov [rbp + 80], rsi

 strtol_test$167:
	; Parameter signedint base 88
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtol_test$168:
	; Call strtol 48 0
	mov qword [rbp + 48], strtol_test$169
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtol

 strtol_test$169:
	; PostCall 48

 strtol_test$170:
	; GetReturnValue £temporary2078

 strtol_test$171:
	; Assign value £temporary2078
	mov [rbp + 48], rbx

 strtol_test$172:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$173:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 80
	mov qword [rbp + 80], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$174:
	; Parameter pointer text 88
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtol_test$175:
	; Parameter signed long int value 96
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtol_test$176:
	; Parameter pointer pointer 104
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtol_test$177:
	; Parameter signedint base 112
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtol_test$178:
	; Call printf 56 28
	mov qword [rbp + 56], strtol_test$179
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$179:
	; PostCall 56

 strtol_test$180:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtol_test$181:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$182:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$183:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$184:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtol_test$185:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtol_test$186:
	; Assign text[5] 120
	mov byte [rbp + 33], 120

 strtol_test$187:
	; Assign text[6] 49
	mov byte [rbp + 34], 49

 strtol_test$188:
	; Assign text[7] 50
	mov byte [rbp + 35], 50

 strtol_test$189:
	; Assign text[8] 51
	mov byte [rbp + 36], 51

 strtol_test$190:
	; Assign text[9] 65
	mov byte [rbp + 37], 65

 strtol_test$191:
	; Assign text[10] 66
	mov byte [rbp + 38], 66

 strtol_test$192:
	; Assign text[11] 67
	mov byte [rbp + 39], 67

 strtol_test$193:
	; Assign text[12] 0
	mov byte [rbp + 40], 0

 strtol_test$194:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$195:
	; Parameter pointer text 73
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$196:
	; Address £temporary2093 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$197:
	; Parameter pointer £temporary2093 81
	mov [rbp + 81], rsi

 strtol_test$198:
	; Parameter signedint base 89
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$199:
	; Call strtol 49 0
	mov qword [rbp + 49], strtol_test$200
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$200:
	; PostCall 49

 strtol_test$201:
	; GetReturnValue £temporary2094

 strtol_test$202:
	; Assign value £temporary2094
	mov [rbp + 49], rbx

 strtol_test$203:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$204:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 81
	mov qword [rbp + 81], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$205:
	; Parameter pointer text 89
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$206:
	; Parameter signed long int value 97
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$207:
	; Parameter pointer pointer 105
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$208:
	; Parameter signedint base 113
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$209:
	; Call printf 57 28
	mov qword [rbp + 57], strtol_test$210
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$210:
	; PostCall 57

 strtol_test$211:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtol_test$212:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$213:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$214:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$215:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtol_test$216:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtol_test$217:
	; Assign text[5] 88
	mov byte [rbp + 33], 88

 strtol_test$218:
	; Assign text[6] 49
	mov byte [rbp + 34], 49

 strtol_test$219:
	; Assign text[7] 50
	mov byte [rbp + 35], 50

 strtol_test$220:
	; Assign text[8] 51
	mov byte [rbp + 36], 51

 strtol_test$221:
	; Assign text[9] 97
	mov byte [rbp + 37], 97

 strtol_test$222:
	; Assign text[10] 98
	mov byte [rbp + 38], 98

 strtol_test$223:
	; Assign text[11] 99
	mov byte [rbp + 39], 99

 strtol_test$224:
	; Assign text[12] 0
	mov byte [rbp + 40], 0

 strtol_test$225:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$226:
	; Parameter pointer text 73
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$227:
	; Address £temporary2109 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$228:
	; Parameter pointer £temporary2109 81
	mov [rbp + 81], rsi

 strtol_test$229:
	; Parameter signedint base 89
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$230:
	; Call strtol 49 0
	mov qword [rbp + 49], strtol_test$231
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$231:
	; PostCall 49

 strtol_test$232:
	; GetReturnValue £temporary2110

 strtol_test$233:
	; Assign value £temporary2110
	mov [rbp + 49], rbx

 strtol_test$234:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$235:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 81
	mov qword [rbp + 81], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$236:
	; Parameter pointer text 89
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$237:
	; Parameter signed long int value 97
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$238:
	; Parameter pointer pointer 105
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$239:
	; Parameter signedint base 113
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$240:
	; Call printf 57 28
	mov qword [rbp + 57], strtol_test$241
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$241:
	; PostCall 57

 strtol_test$242:
	; Assign base 9
	mov dword [rbp + 24], 9

 strtol_test$243:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$244:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$245:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$246:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtol_test$247:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$248:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$249:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$250:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtol_test$251:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtol_test$252:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtol_test$253:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$254:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$255:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$256:
	; Address £temporary2123 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$257:
	; Parameter pointer £temporary2123 79
	mov [rbp + 79], rsi

 strtol_test$258:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$259:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$260
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$260:
	; PostCall 47

 strtol_test$261:
	; GetReturnValue £temporary2124

 strtol_test$262:
	; Assign value £temporary2124
	mov [rbp + 47], rbx

 strtol_test$263:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$264:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$265:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$266:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$267:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$268:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$269:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$270
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$270:
	; PostCall 55

 strtol_test$271:
	; Assign base 10
	mov dword [rbp + 24], 10

 strtol_test$272:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$273:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$274:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$275:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtol_test$276:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$277:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$278:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$279:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtol_test$280:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtol_test$281:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtol_test$282:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$283:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$284:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$285:
	; Address £temporary2137 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$286:
	; Parameter pointer £temporary2137 79
	mov [rbp + 79], rsi

 strtol_test$287:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$288:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$289
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$289:
	; PostCall 47

 strtol_test$290:
	; GetReturnValue £temporary2138

 strtol_test$291:
	; Assign value £temporary2138
	mov [rbp + 47], rbx

 strtol_test$292:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$293:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$294:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$295:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$296:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$297:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$298:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$299
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$299:
	; PostCall 55

 strtol_test$300:
	; Assign base 11
	mov dword [rbp + 24], 11

 strtol_test$301:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$302:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$303:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$304:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtol_test$305:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$306:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$307:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$308:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtol_test$309:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtol_test$310:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtol_test$311:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$312:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$313:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$314:
	; Address £temporary2151 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$315:
	; Parameter pointer £temporary2151 79
	mov [rbp + 79], rsi

 strtol_test$316:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$317:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$318
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$318:
	; PostCall 47

 strtol_test$319:
	; GetReturnValue £temporary2152

 strtol_test$320:
	; Assign value £temporary2152
	mov [rbp + 47], rbx

 strtol_test$321:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$322:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$323:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$324:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$325:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$326:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$327:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$328
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$328:
	; PostCall 55

 strtol_test$329:
	; Assign base 12
	mov dword [rbp + 24], 12

 strtol_test$330:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$331:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$332:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$333:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtol_test$334:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$335:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$336:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$337:
	; Assign text[7] 65
	mov byte [rbp + 35], 65

 strtol_test$338:
	; Assign text[8] 66
	mov byte [rbp + 36], 66

 strtol_test$339:
	; Assign text[9] 67
	mov byte [rbp + 37], 67

 strtol_test$340:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$341:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$342:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$343:
	; Address £temporary2165 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$344:
	; Parameter pointer £temporary2165 79
	mov [rbp + 79], rsi

 strtol_test$345:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$346:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$347
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$347:
	; PostCall 47

 strtol_test$348:
	; GetReturnValue £temporary2166

 strtol_test$349:
	; Assign value £temporary2166
	mov [rbp + 47], rbx

 strtol_test$350:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$351:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$352:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$353:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$354:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$355:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$356:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$357
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$357:
	; PostCall 55

 strtol_test$358:
	; Assign base 13
	mov dword [rbp + 24], 13

 strtol_test$359:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$360:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$361:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$362:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtol_test$363:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$364:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$365:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$366:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtol_test$367:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtol_test$368:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtol_test$369:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$370:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$371:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$372:
	; Address £temporary2179 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$373:
	; Parameter pointer £temporary2179 79
	mov [rbp + 79], rsi

 strtol_test$374:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$375:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$376
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$376:
	; PostCall 47

 strtol_test$377:
	; GetReturnValue £temporary2180

 strtol_test$378:
	; Assign value £temporary2180
	mov [rbp + 47], rbx

 strtol_test$379:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$380:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$381:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$382:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$383:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$384:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$385:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$386
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$386:
	; PostCall 55

 strtol_test$387:
	; Assign base 9
	mov dword [rbp + 24], 9

 strtol_test$388:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$389:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$390:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$391:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtol_test$392:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$393:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$394:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$395:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtol_test$396:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtol_test$397:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtol_test$398:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$399:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$400:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$401:
	; Address £temporary2193 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$402:
	; Parameter pointer £temporary2193 79
	mov [rbp + 79], rsi

 strtol_test$403:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$404:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$405
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$405:
	; PostCall 47

 strtol_test$406:
	; GetReturnValue £temporary2194

 strtol_test$407:
	; Assign value £temporary2194
	mov [rbp + 47], rbx

 strtol_test$408:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$409:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$410:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$411:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$412:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$413:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$414:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$415
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$415:
	; PostCall 55

 strtol_test$416:
	; Assign base 10
	mov dword [rbp + 24], 10

 strtol_test$417:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$418:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$419:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$420:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtol_test$421:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$422:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$423:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$424:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtol_test$425:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtol_test$426:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtol_test$427:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$428:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$429:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$430:
	; Address £temporary2207 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$431:
	; Parameter pointer £temporary2207 79
	mov [rbp + 79], rsi

 strtol_test$432:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$433:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$434
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$434:
	; PostCall 47

 strtol_test$435:
	; GetReturnValue £temporary2208

 strtol_test$436:
	; Assign value £temporary2208
	mov [rbp + 47], rbx

 strtol_test$437:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$438:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$439:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$440:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$441:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$442:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$443:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$444
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$444:
	; PostCall 55

 strtol_test$445:
	; Assign base 11
	mov dword [rbp + 24], 11

 strtol_test$446:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$447:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$448:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$449:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtol_test$450:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$451:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$452:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$453:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtol_test$454:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtol_test$455:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtol_test$456:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$457:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$458:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$459:
	; Address £temporary2221 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$460:
	; Parameter pointer £temporary2221 79
	mov [rbp + 79], rsi

 strtol_test$461:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$462:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$463
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$463:
	; PostCall 47

 strtol_test$464:
	; GetReturnValue £temporary2222

 strtol_test$465:
	; Assign value £temporary2222
	mov [rbp + 47], rbx

 strtol_test$466:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$467:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$468:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$469:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$470:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$471:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$472:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$473
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$473:
	; PostCall 55

 strtol_test$474:
	; Assign base 12
	mov dword [rbp + 24], 12

 strtol_test$475:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$476:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$477:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$478:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtol_test$479:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$480:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$481:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$482:
	; Assign text[7] 65
	mov byte [rbp + 35], 65

 strtol_test$483:
	; Assign text[8] 66
	mov byte [rbp + 36], 66

 strtol_test$484:
	; Assign text[9] 67
	mov byte [rbp + 37], 67

 strtol_test$485:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$486:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$487:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$488:
	; Address £temporary2235 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$489:
	; Parameter pointer £temporary2235 79
	mov [rbp + 79], rsi

 strtol_test$490:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$491:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$492
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$492:
	; PostCall 47

 strtol_test$493:
	; GetReturnValue £temporary2236

 strtol_test$494:
	; Assign value £temporary2236
	mov [rbp + 47], rbx

 strtol_test$495:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$496:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$497:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$498:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$499:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$500:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$501:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$502
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$502:
	; PostCall 55

 strtol_test$503:
	; Assign base 13
	mov dword [rbp + 24], 13

 strtol_test$504:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtol_test$505:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtol_test$506:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtol_test$507:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtol_test$508:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtol_test$509:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtol_test$510:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtol_test$511:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtol_test$512:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtol_test$513:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtol_test$514:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtol_test$515:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$516:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$517:
	; Address £temporary2249 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$518:
	; Parameter pointer £temporary2249 79
	mov [rbp + 79], rsi

 strtol_test$519:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$520:
	; Call strtol 47 0
	mov qword [rbp + 47], strtol_test$521
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$521:
	; PostCall 47

 strtol_test$522:
	; GetReturnValue £temporary2250

 strtol_test$523:
	; Assign value £temporary2250
	mov [rbp + 47], rbx

 strtol_test$524:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$525:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$526:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$527:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$528:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$529:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$530:
	; Call printf 55 28
	mov qword [rbp + 55], strtol_test$531
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$531:
	; PostCall 55

 strtol_test$532:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtol_test$533:
	; FunctionEnd strtol_test

section .text

 strtoul:
	; Assign g_inStatus 1
	mov dword [g_inStatus], 1

 strtoul$1:
	; Assign g_inDevice s
	mov rax, [rbp + 24]
	mov [g_inDevice], rax

 strtoul$2:
	; Assign g_inChars 0
	mov dword [g_inChars], 0

 strtoul$3:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul$4:
	; Parameter signedint base 68
	mov eax, [rbp + 40]
	mov [rbp + 68], eax

 strtoul$5:
	; Call scanUnsignedLongInt 44 0
	mov qword [rbp + 44], strtoul$6
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanUnsignedLongInt

 strtoul$6:
	; PostCall 44

 strtoul$7:
	; GetReturnValue £temporary2270

 strtoul$8:
	; Assign unsignedLongValue £temporary2270
	mov [rbp + 44], rbx

 strtoul$9:
	; Equal 13 endp 0
	cmp qword [rbp + 32], 0
	je strtoul$13

 strtoul$10:
	; Dereference £temporary2272 -> endp endp 0
	mov rsi, [rbp + 32]

 strtoul$11:
	; IntegralToIntegral £temporary2273 g_inChars
	mov eax, [g_inChars]
	mov rbx, 4294967295
	and rax, rbx

 strtoul$12:
	; BinaryAdd £temporary2272 -> endp s £temporary2273
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtoul$13:
	; Return unsignedLongValue
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtoul$14:
	; FunctionEnd strtoul

section .text

 strtoul_test:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtoul_test$1:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$2:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$3:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$4:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtoul_test$5:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$6:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$7:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$8:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtoul_test$9:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtoul_test$10:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtoul_test$11:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$12:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$13:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$14:
	; Address £temporary2287 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$15:
	; Parameter pointer £temporary2287 79
	mov [rbp + 79], rsi

 strtoul_test$16:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$17:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$18
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$18:
	; PostCall 47

 strtoul_test$19:
	; GetReturnValue £temporary2288

 strtoul_test$20:
	; Assign value £temporary2288
	mov [rbp + 47], rbx

 strtoul_test$21:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$22:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$23:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$24:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$25:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$26:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$27:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$28
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$28:
	; PostCall 55

 strtoul_test$29:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtoul_test$30:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$31:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$32:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$33:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtoul_test$34:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtoul_test$35:
	; Assign text[5] 49
	mov byte [rbp + 33], 49

 strtoul_test$36:
	; Assign text[6] 50
	mov byte [rbp + 34], 50

 strtoul_test$37:
	; Assign text[7] 51
	mov byte [rbp + 35], 51

 strtoul_test$38:
	; Assign text[8] 97
	mov byte [rbp + 36], 97

 strtoul_test$39:
	; Assign text[9] 98
	mov byte [rbp + 37], 98

 strtoul_test$40:
	; Assign text[10] 99
	mov byte [rbp + 38], 99

 strtoul_test$41:
	; Assign text[11] 0
	mov byte [rbp + 39], 0

 strtoul_test$42:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$43:
	; Parameter pointer text 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtoul_test$44:
	; Address £temporary2302 pointer
	mov rsi, rbp
	add rsi, 40

 strtoul_test$45:
	; Parameter pointer £temporary2302 80
	mov [rbp + 80], rsi

 strtoul_test$46:
	; Parameter signedint base 88
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtoul_test$47:
	; Call strtoul 48 0
	mov qword [rbp + 48], strtoul_test$48
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtoul

 strtoul_test$48:
	; PostCall 48

 strtoul_test$49:
	; GetReturnValue £temporary2303

 strtoul_test$50:
	; Assign value £temporary2303
	mov [rbp + 48], rbx

 strtoul_test$51:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$52:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 80
	mov qword [rbp + 80], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$53:
	; Parameter pointer text 88
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtoul_test$54:
	; Parameter signed long int value 96
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtoul_test$55:
	; Parameter pointer pointer 104
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtoul_test$56:
	; Parameter signedint base 112
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtoul_test$57:
	; Call printf 56 28
	mov qword [rbp + 56], strtoul_test$58
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$58:
	; PostCall 56

 strtoul_test$59:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtoul_test$60:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$61:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$62:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$63:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtoul_test$64:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtoul_test$65:
	; Assign text[5] 120
	mov byte [rbp + 33], 120

 strtoul_test$66:
	; Assign text[6] 49
	mov byte [rbp + 34], 49

 strtoul_test$67:
	; Assign text[7] 50
	mov byte [rbp + 35], 50

 strtoul_test$68:
	; Assign text[8] 51
	mov byte [rbp + 36], 51

 strtoul_test$69:
	; Assign text[9] 65
	mov byte [rbp + 37], 65

 strtoul_test$70:
	; Assign text[10] 66
	mov byte [rbp + 38], 66

 strtoul_test$71:
	; Assign text[11] 67
	mov byte [rbp + 39], 67

 strtoul_test$72:
	; Assign text[12] 0
	mov byte [rbp + 40], 0

 strtoul_test$73:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$74:
	; Parameter pointer text 73
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$75:
	; Address £temporary2318 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$76:
	; Parameter pointer £temporary2318 81
	mov [rbp + 81], rsi

 strtoul_test$77:
	; Parameter signedint base 89
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$78:
	; Call strtoul 49 0
	mov qword [rbp + 49], strtoul_test$79
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$79:
	; PostCall 49

 strtoul_test$80:
	; GetReturnValue £temporary2319

 strtoul_test$81:
	; Assign value £temporary2319
	mov [rbp + 49], rbx

 strtoul_test$82:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$83:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 81
	mov qword [rbp + 81], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$84:
	; Parameter pointer text 89
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$85:
	; Parameter signed long int value 97
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$86:
	; Parameter pointer pointer 105
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$87:
	; Parameter signedint base 113
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$88:
	; Call printf 57 28
	mov qword [rbp + 57], strtoul_test$89
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$89:
	; PostCall 57

 strtoul_test$90:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtoul_test$91:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$92:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$93:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$94:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtoul_test$95:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtoul_test$96:
	; Assign text[5] 88
	mov byte [rbp + 33], 88

 strtoul_test$97:
	; Assign text[6] 49
	mov byte [rbp + 34], 49

 strtoul_test$98:
	; Assign text[7] 50
	mov byte [rbp + 35], 50

 strtoul_test$99:
	; Assign text[8] 51
	mov byte [rbp + 36], 51

 strtoul_test$100:
	; Assign text[9] 97
	mov byte [rbp + 37], 97

 strtoul_test$101:
	; Assign text[10] 98
	mov byte [rbp + 38], 98

 strtoul_test$102:
	; Assign text[11] 99
	mov byte [rbp + 39], 99

 strtoul_test$103:
	; Assign text[12] 0
	mov byte [rbp + 40], 0

 strtoul_test$104:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$105:
	; Parameter pointer text 73
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$106:
	; Address £temporary2334 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$107:
	; Parameter pointer £temporary2334 81
	mov [rbp + 81], rsi

 strtoul_test$108:
	; Parameter signedint base 89
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$109:
	; Call strtoul 49 0
	mov qword [rbp + 49], strtoul_test$110
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$110:
	; PostCall 49

 strtoul_test$111:
	; GetReturnValue £temporary2335

 strtoul_test$112:
	; Assign value £temporary2335
	mov [rbp + 49], rbx

 strtoul_test$113:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$114:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 81
	mov qword [rbp + 81], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$115:
	; Parameter pointer text 89
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$116:
	; Parameter signed long int value 97
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$117:
	; Parameter pointer pointer 105
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$118:
	; Parameter signedint base 113
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$119:
	; Call printf 57 28
	mov qword [rbp + 57], strtoul_test$120
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$120:
	; PostCall 57

 strtoul_test$121:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtoul_test$122:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$123:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$124:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$125:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtoul_test$126:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$127:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$128:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$129:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtoul_test$130:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtoul_test$131:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtoul_test$132:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$133:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$134:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$135:
	; Address £temporary2348 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$136:
	; Parameter pointer £temporary2348 79
	mov [rbp + 79], rsi

 strtoul_test$137:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$138:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$139
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$139:
	; PostCall 47

 strtoul_test$140:
	; GetReturnValue £temporary2349

 strtoul_test$141:
	; Assign value £temporary2349
	mov [rbp + 47], rbx

 strtoul_test$142:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$143:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$144:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$145:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$146:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$147:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$148:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$149
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$149:
	; PostCall 55

 strtoul_test$150:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtoul_test$151:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$152:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$153:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$154:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtoul_test$155:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtoul_test$156:
	; Assign text[5] 49
	mov byte [rbp + 33], 49

 strtoul_test$157:
	; Assign text[6] 50
	mov byte [rbp + 34], 50

 strtoul_test$158:
	; Assign text[7] 51
	mov byte [rbp + 35], 51

 strtoul_test$159:
	; Assign text[8] 97
	mov byte [rbp + 36], 97

 strtoul_test$160:
	; Assign text[9] 98
	mov byte [rbp + 37], 98

 strtoul_test$161:
	; Assign text[10] 99
	mov byte [rbp + 38], 99

 strtoul_test$162:
	; Assign text[11] 0
	mov byte [rbp + 39], 0

 strtoul_test$163:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$164:
	; Parameter pointer text 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtoul_test$165:
	; Address £temporary2363 pointer
	mov rsi, rbp
	add rsi, 40

 strtoul_test$166:
	; Parameter pointer £temporary2363 80
	mov [rbp + 80], rsi

 strtoul_test$167:
	; Parameter signedint base 88
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtoul_test$168:
	; Call strtoul 48 0
	mov qword [rbp + 48], strtoul_test$169
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtoul

 strtoul_test$169:
	; PostCall 48

 strtoul_test$170:
	; GetReturnValue £temporary2364

 strtoul_test$171:
	; Assign value £temporary2364
	mov [rbp + 48], rbx

 strtoul_test$172:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$173:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 80
	mov qword [rbp + 80], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$174:
	; Parameter pointer text 88
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtoul_test$175:
	; Parameter signed long int value 96
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtoul_test$176:
	; Parameter pointer pointer 104
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtoul_test$177:
	; Parameter signedint base 112
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtoul_test$178:
	; Call printf 56 28
	mov qword [rbp + 56], strtoul_test$179
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$179:
	; PostCall 56

 strtoul_test$180:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtoul_test$181:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$182:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$183:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$184:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtoul_test$185:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtoul_test$186:
	; Assign text[5] 120
	mov byte [rbp + 33], 120

 strtoul_test$187:
	; Assign text[6] 49
	mov byte [rbp + 34], 49

 strtoul_test$188:
	; Assign text[7] 50
	mov byte [rbp + 35], 50

 strtoul_test$189:
	; Assign text[8] 51
	mov byte [rbp + 36], 51

 strtoul_test$190:
	; Assign text[9] 65
	mov byte [rbp + 37], 65

 strtoul_test$191:
	; Assign text[10] 66
	mov byte [rbp + 38], 66

 strtoul_test$192:
	; Assign text[11] 67
	mov byte [rbp + 39], 67

 strtoul_test$193:
	; Assign text[12] 0
	mov byte [rbp + 40], 0

 strtoul_test$194:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$195:
	; Parameter pointer text 73
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$196:
	; Address £temporary2379 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$197:
	; Parameter pointer £temporary2379 81
	mov [rbp + 81], rsi

 strtoul_test$198:
	; Parameter signedint base 89
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$199:
	; Call strtoul 49 0
	mov qword [rbp + 49], strtoul_test$200
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$200:
	; PostCall 49

 strtoul_test$201:
	; GetReturnValue £temporary2380

 strtoul_test$202:
	; Assign value £temporary2380
	mov [rbp + 49], rbx

 strtoul_test$203:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$204:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 81
	mov qword [rbp + 81], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$205:
	; Parameter pointer text 89
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$206:
	; Parameter signed long int value 97
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$207:
	; Parameter pointer pointer 105
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$208:
	; Parameter signedint base 113
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$209:
	; Call printf 57 28
	mov qword [rbp + 57], strtoul_test$210
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$210:
	; PostCall 57

 strtoul_test$211:
	; Assign base 0
	mov dword [rbp + 24], 0

 strtoul_test$212:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$213:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$214:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$215:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtoul_test$216:
	; Assign text[4] 48
	mov byte [rbp + 32], 48

 strtoul_test$217:
	; Assign text[5] 88
	mov byte [rbp + 33], 88

 strtoul_test$218:
	; Assign text[6] 49
	mov byte [rbp + 34], 49

 strtoul_test$219:
	; Assign text[7] 50
	mov byte [rbp + 35], 50

 strtoul_test$220:
	; Assign text[8] 51
	mov byte [rbp + 36], 51

 strtoul_test$221:
	; Assign text[9] 97
	mov byte [rbp + 37], 97

 strtoul_test$222:
	; Assign text[10] 98
	mov byte [rbp + 38], 98

 strtoul_test$223:
	; Assign text[11] 99
	mov byte [rbp + 39], 99

 strtoul_test$224:
	; Assign text[12] 0
	mov byte [rbp + 40], 0

 strtoul_test$225:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$226:
	; Parameter pointer text 73
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$227:
	; Address £temporary2395 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$228:
	; Parameter pointer £temporary2395 81
	mov [rbp + 81], rsi

 strtoul_test$229:
	; Parameter signedint base 89
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$230:
	; Call strtoul 49 0
	mov qword [rbp + 49], strtoul_test$231
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$231:
	; PostCall 49

 strtoul_test$232:
	; GetReturnValue £temporary2396

 strtoul_test$233:
	; Assign value £temporary2396
	mov [rbp + 49], rbx

 strtoul_test$234:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$235:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 81
	mov qword [rbp + 81], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$236:
	; Parameter pointer text 89
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$237:
	; Parameter signed long int value 97
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$238:
	; Parameter pointer pointer 105
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$239:
	; Parameter signedint base 113
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$240:
	; Call printf 57 28
	mov qword [rbp + 57], strtoul_test$241
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$241:
	; PostCall 57

 strtoul_test$242:
	; Assign base 9
	mov dword [rbp + 24], 9

 strtoul_test$243:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$244:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$245:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$246:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtoul_test$247:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$248:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$249:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$250:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtoul_test$251:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtoul_test$252:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtoul_test$253:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$254:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$255:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$256:
	; Address £temporary2409 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$257:
	; Parameter pointer £temporary2409 79
	mov [rbp + 79], rsi

 strtoul_test$258:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$259:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$260
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$260:
	; PostCall 47

 strtoul_test$261:
	; GetReturnValue £temporary2410

 strtoul_test$262:
	; Assign value £temporary2410
	mov [rbp + 47], rbx

 strtoul_test$263:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$264:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$265:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$266:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$267:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$268:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$269:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$270
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$270:
	; PostCall 55

 strtoul_test$271:
	; Assign base 10
	mov dword [rbp + 24], 10

 strtoul_test$272:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$273:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$274:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$275:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtoul_test$276:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$277:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$278:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$279:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtoul_test$280:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtoul_test$281:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtoul_test$282:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$283:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$284:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$285:
	; Address £temporary2423 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$286:
	; Parameter pointer £temporary2423 79
	mov [rbp + 79], rsi

 strtoul_test$287:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$288:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$289
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$289:
	; PostCall 47

 strtoul_test$290:
	; GetReturnValue £temporary2424

 strtoul_test$291:
	; Assign value £temporary2424
	mov [rbp + 47], rbx

 strtoul_test$292:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$293:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$294:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$295:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$296:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$297:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$298:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$299
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$299:
	; PostCall 55

 strtoul_test$300:
	; Assign base 11
	mov dword [rbp + 24], 11

 strtoul_test$301:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$302:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$303:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$304:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtoul_test$305:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$306:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$307:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$308:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtoul_test$309:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtoul_test$310:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtoul_test$311:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$312:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$313:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$314:
	; Address £temporary2437 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$315:
	; Parameter pointer £temporary2437 79
	mov [rbp + 79], rsi

 strtoul_test$316:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$317:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$318
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$318:
	; PostCall 47

 strtoul_test$319:
	; GetReturnValue £temporary2438

 strtoul_test$320:
	; Assign value £temporary2438
	mov [rbp + 47], rbx

 strtoul_test$321:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$322:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$323:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$324:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$325:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$326:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$327:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$328
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$328:
	; PostCall 55

 strtoul_test$329:
	; Assign base 12
	mov dword [rbp + 24], 12

 strtoul_test$330:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$331:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$332:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$333:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtoul_test$334:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$335:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$336:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$337:
	; Assign text[7] 65
	mov byte [rbp + 35], 65

 strtoul_test$338:
	; Assign text[8] 66
	mov byte [rbp + 36], 66

 strtoul_test$339:
	; Assign text[9] 67
	mov byte [rbp + 37], 67

 strtoul_test$340:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$341:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$342:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$343:
	; Address £temporary2451 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$344:
	; Parameter pointer £temporary2451 79
	mov [rbp + 79], rsi

 strtoul_test$345:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$346:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$347
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$347:
	; PostCall 47

 strtoul_test$348:
	; GetReturnValue £temporary2452

 strtoul_test$349:
	; Assign value £temporary2452
	mov [rbp + 47], rbx

 strtoul_test$350:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$351:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$352:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$353:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$354:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$355:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$356:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$357
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$357:
	; PostCall 55

 strtoul_test$358:
	; Assign base 13
	mov dword [rbp + 24], 13

 strtoul_test$359:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$360:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$361:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$362:
	; Assign text[3] 43
	mov byte [rbp + 31], 43

 strtoul_test$363:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$364:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$365:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$366:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtoul_test$367:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtoul_test$368:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtoul_test$369:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$370:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$371:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$372:
	; Address £temporary2465 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$373:
	; Parameter pointer £temporary2465 79
	mov [rbp + 79], rsi

 strtoul_test$374:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$375:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$376
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$376:
	; PostCall 47

 strtoul_test$377:
	; GetReturnValue £temporary2466

 strtoul_test$378:
	; Assign value £temporary2466
	mov [rbp + 47], rbx

 strtoul_test$379:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$380:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$381:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$382:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$383:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$384:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$385:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$386
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$386:
	; PostCall 55

 strtoul_test$387:
	; Assign base 9
	mov dword [rbp + 24], 9

 strtoul_test$388:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$389:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$390:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$391:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtoul_test$392:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$393:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$394:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$395:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtoul_test$396:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtoul_test$397:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtoul_test$398:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$399:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$400:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$401:
	; Address £temporary2479 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$402:
	; Parameter pointer £temporary2479 79
	mov [rbp + 79], rsi

 strtoul_test$403:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$404:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$405
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$405:
	; PostCall 47

 strtoul_test$406:
	; GetReturnValue £temporary2480

 strtoul_test$407:
	; Assign value £temporary2480
	mov [rbp + 47], rbx

 strtoul_test$408:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$409:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$410:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$411:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$412:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$413:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$414:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$415
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$415:
	; PostCall 55

 strtoul_test$416:
	; Assign base 10
	mov dword [rbp + 24], 10

 strtoul_test$417:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$418:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$419:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$420:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtoul_test$421:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$422:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$423:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$424:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtoul_test$425:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtoul_test$426:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtoul_test$427:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$428:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$429:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$430:
	; Address £temporary2493 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$431:
	; Parameter pointer £temporary2493 79
	mov [rbp + 79], rsi

 strtoul_test$432:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$433:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$434
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$434:
	; PostCall 47

 strtoul_test$435:
	; GetReturnValue £temporary2494

 strtoul_test$436:
	; Assign value £temporary2494
	mov [rbp + 47], rbx

 strtoul_test$437:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$438:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$439:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$440:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$441:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$442:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$443:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$444
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$444:
	; PostCall 55

 strtoul_test$445:
	; Assign base 11
	mov dword [rbp + 24], 11

 strtoul_test$446:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$447:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$448:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$449:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtoul_test$450:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$451:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$452:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$453:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtoul_test$454:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtoul_test$455:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtoul_test$456:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$457:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$458:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$459:
	; Address £temporary2507 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$460:
	; Parameter pointer £temporary2507 79
	mov [rbp + 79], rsi

 strtoul_test$461:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$462:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$463
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$463:
	; PostCall 47

 strtoul_test$464:
	; GetReturnValue £temporary2508

 strtoul_test$465:
	; Assign value £temporary2508
	mov [rbp + 47], rbx

 strtoul_test$466:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$467:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$468:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$469:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$470:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$471:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$472:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$473
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$473:
	; PostCall 55

 strtoul_test$474:
	; Assign base 12
	mov dword [rbp + 24], 12

 strtoul_test$475:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$476:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$477:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$478:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtoul_test$479:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$480:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$481:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$482:
	; Assign text[7] 65
	mov byte [rbp + 35], 65

 strtoul_test$483:
	; Assign text[8] 66
	mov byte [rbp + 36], 66

 strtoul_test$484:
	; Assign text[9] 67
	mov byte [rbp + 37], 67

 strtoul_test$485:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$486:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$487:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$488:
	; Address £temporary2521 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$489:
	; Parameter pointer £temporary2521 79
	mov [rbp + 79], rsi

 strtoul_test$490:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$491:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$492
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$492:
	; PostCall 47

 strtoul_test$493:
	; GetReturnValue £temporary2522

 strtoul_test$494:
	; Assign value £temporary2522
	mov [rbp + 47], rbx

 strtoul_test$495:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$496:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$497:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$498:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$499:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$500:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$501:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$502
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$502:
	; PostCall 55

 strtoul_test$503:
	; Assign base 13
	mov dword [rbp + 24], 13

 strtoul_test$504:
	; Assign text[0] 32
	mov byte [rbp + 28], 32

 strtoul_test$505:
	; Assign text[1] 32
	mov byte [rbp + 29], 32

 strtoul_test$506:
	; Assign text[2] 32
	mov byte [rbp + 30], 32

 strtoul_test$507:
	; Assign text[3] 45
	mov byte [rbp + 31], 45

 strtoul_test$508:
	; Assign text[4] 49
	mov byte [rbp + 32], 49

 strtoul_test$509:
	; Assign text[5] 50
	mov byte [rbp + 33], 50

 strtoul_test$510:
	; Assign text[6] 51
	mov byte [rbp + 34], 51

 strtoul_test$511:
	; Assign text[7] 97
	mov byte [rbp + 35], 97

 strtoul_test$512:
	; Assign text[8] 98
	mov byte [rbp + 36], 98

 strtoul_test$513:
	; Assign text[9] 99
	mov byte [rbp + 37], 99

 strtoul_test$514:
	; Assign text[10] 0
	mov byte [rbp + 38], 0

 strtoul_test$515:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$516:
	; Parameter pointer text 71
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$517:
	; Address £temporary2535 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$518:
	; Parameter pointer £temporary2535 79
	mov [rbp + 79], rsi

 strtoul_test$519:
	; Parameter signedint base 87
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$520:
	; Call strtoul 47 0
	mov qword [rbp + 47], strtoul_test$521
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$521:
	; PostCall 47

 strtoul_test$522:
	; GetReturnValue £temporary2536

 strtoul_test$523:
	; Assign value £temporary2536
	mov [rbp + 47], rbx

 strtoul_test$524:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$525:
	; Parameter pointer "<%s> <%li> <%s> <%i>\n" 79
	mov qword [rbp + 79], string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$526:
	; Parameter pointer text 87
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$527:
	; Parameter signed long int value 95
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$528:
	; Parameter pointer pointer 103
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$529:
	; Parameter signedint base 111
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$530:
	; Call printf 55 28
	mov qword [rbp + 55], strtoul_test$531
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$531:
	; PostCall 55

 strtoul_test$532:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtoul_test$533:
	; FunctionEnd strtoul_test

section .text

 atof:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atof$1:
	; Parameter pointer s 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atof$2:
	; Parameter pointer 0 64
	mov qword [rbp + 64], 0

 atof$3:
	; Call strtod 32 0
	mov qword [rbp + 32], atof$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtod

 atof$4:
	; PostCall 32

 atof$5:
	; GetReturnValue £temporary2556

 atof$6:
	; Return £temporary2556
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atof$7:
	; FunctionEnd atof

section .data

string_25lf25n#:
	; Initializer String %lf%n
	db "%lf%n", 0

section .text

 strtod:
	; Assign chars 0
	mov dword [rbp + 40], 0

 strtod$1:
	; PushFloat 0
	fldz

 strtod$2:
	; PopFloat value
	fstp qword [rbp + 44]

 strtod$3:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtod$4:
	; Parameter pointer s 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 strtod$5:
	; Parameter pointer "%lf%n" 84
	mov qword [rbp + 84], string_25lf25n#

 strtod$6:
	; Address £temporary2557 value
	mov rsi, rbp
	add rsi, 44

 strtod$7:
	; Parameter pointer £temporary2557 92
	mov [rbp + 92], rsi

 strtod$8:
	; Address £temporary2558 chars
	mov rsi, rbp
	add rsi, 40

 strtod$9:
	; Parameter pointer £temporary2558 100
	mov [rbp + 100], rsi

 strtod$10:
	; Call sscanf 52 16
	mov qword [rbp + 52], strtod$11
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

 strtod$11:
	; PostCall 52

 strtod$12:
	; Equal 16 endp 0
	cmp qword [rbp + 32], 0
	je strtod$16

 strtod$13:
	; Dereference £temporary2561 -> endp endp 0
	mov rsi, [rbp + 32]

 strtod$14:
	; IntegralToIntegral £temporary2562 chars
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtod$15:
	; BinaryAdd £temporary2561 -> endp s £temporary2562
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtod$16:
	; PushFloat value
	fld qword [rbp + 44]

 strtod$17:
	; Return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtod$18:
	; FunctionEnd strtod

section .text

 abort:
	; AssignRegister rax 60
	mov rax, 60

 abort$1:
	; AssignRegister rdi -1
	mov rdi, -1

 abort$2:
	; SysCall
	syscall

 abort$3:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 abort$4:
	; FunctionEnd abort

section .text

 getenv:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getenv$1:
	; FunctionEnd getenv

section .text

 system:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 system$1:
	; FunctionEnd system

section .data

int4$2#:
	; Initializer SignedInt 2
	dd 2

section .text

 bsearch:
	; Assign firstIndex 0
	mov dword [rbp + 56], 0

 bsearch$1:
	; BinarySubtract lastIndex listSize 1
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 bsearch$2:
	; NotEqual 4 listSize 0
	cmp dword [rbp + 40], 0
	jne bsearch$4

 bsearch$3:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$4:
	; IntegralToIntegral £temporary2571 valueList
	mov rbx, [rbp + 32]

 bsearch$5:
	; SignedMultiply £temporary2572 firstIndex valueSize
	mov eax, [rbp + 56]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$6:
	; IntegralToIntegral £temporary2573 £temporary2572
	mov rcx, 4294967295
	and rax, rcx

 bsearch$7:
	; BinaryAdd firstValuePtr £temporary2571 £temporary2573
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$8:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$9:
	; Parameter pointer keyPtr 96
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$10:
	; Parameter pointer firstValuePtr 104
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$11:
	; Call compare 72 0
	mov qword [rbp + 72], bsearch$12
	mov [rbp + 80], rbp
	add rbp, 72
	mov rax, [rbp + 48]
	jmp rax

 bsearch$12:
	; PostCall 72

 bsearch$13:
	; GetReturnValue £temporary2576

 bsearch$14:
	; Assign firstCompare £temporary2576
	mov [rbp + 72], ebx

 bsearch$15:
	; SignedGreaterThanEqual 17 firstCompare 0
	cmp dword [rbp + 72], 0
	jge bsearch$17

 bsearch$16:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$17:
	; NotEqual 19 firstCompare 0
	cmp dword [rbp + 72], 0
	jne bsearch$19

 bsearch$18:
	; Return firstValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$19:
	; IntegralToIntegral £temporary2579 valueList
	mov rbx, [rbp + 32]

 bsearch$20:
	; SignedMultiply £temporary2580 lastIndex valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$21:
	; IntegralToIntegral £temporary2581 £temporary2580
	mov rcx, 4294967295
	and rax, rcx

 bsearch$22:
	; BinaryAdd lastValuePtr £temporary2579 £temporary2581
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$23:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$24:
	; Parameter pointer keyPtr 96
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$25:
	; Parameter pointer lastValuePtr 104
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$26:
	; Call compare 72 0
	mov qword [rbp + 72], bsearch$27
	mov [rbp + 80], rbp
	add rbp, 72
	mov rax, [rbp + 48]
	jmp rax

 bsearch$27:
	; PostCall 72

 bsearch$28:
	; GetReturnValue £temporary2584

 bsearch$29:
	; Assign lastCompare £temporary2584
	mov [rbp + 72], ebx

 bsearch$30:
	; SignedLessThanEqual 32 lastCompare 0
	cmp dword [rbp + 72], 0
	jle bsearch$32

 bsearch$31:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$32:
	; NotEqual 34 lastCompare 0
	cmp dword [rbp + 72], 0
	jne bsearch$34

 bsearch$33:
	; Return lastValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$34:
	; BinaryAdd £temporary2587 firstIndex lastIndex
	mov eax, [rbp + 56]
	add eax, [rbp + 60]

 bsearch$35:
	; SignedDivide middleIndex £temporary2587 2
	xor edx, edx
	idiv dword [int4$2#]
	mov [rbp + 64], eax

 bsearch$36:
	; IntegralToIntegral £temporary2589 valueList
	mov rbx, [rbp + 32]

 bsearch$37:
	; SignedMultiply £temporary2590 middleIndex valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$38:
	; IntegralToIntegral £temporary2591 £temporary2590
	mov rcx, 4294967295
	and rax, rcx

 bsearch$39:
	; BinaryAdd middleValuePtr £temporary2589 £temporary2591
	add rbx, rax
	mov [rbp + 68], rbx

 bsearch$40:
	; PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$41:
	; Parameter pointer keyPtr 100
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 bsearch$42:
	; Parameter pointer middleValuePtr 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 bsearch$43:
	; Call compare 76 0
	mov qword [rbp + 76], bsearch$44
	mov [rbp + 84], rbp
	add rbp, 76
	mov rax, [rbp + 48]
	jmp rax

 bsearch$44:
	; PostCall 76

 bsearch$45:
	; GetReturnValue £temporary2594

 bsearch$46:
	; Assign middleCompare £temporary2594
	mov [rbp + 76], ebx

 bsearch$47:
	; SignedGreaterThanEqual 50 middleCompare 0
	cmp dword [rbp + 76], 0
	jge bsearch$50

 bsearch$48:
	; Assign lastIndex middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 60], eax

 bsearch$49:
	; Goto 4
	jmp bsearch$4

 bsearch$50:
	; SignedLessThanEqual 53 middleCompare 0
	cmp dword [rbp + 76], 0
	jle bsearch$53

 bsearch$51:
	; Assign firstIndex middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 56], eax

 bsearch$52:
	; Goto 4
	jmp bsearch$4

 bsearch$53:
	; Return middleValuePtr
	mov rbx, [rbp + 68]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$54:
	; FunctionEnd bsearch

section .data

@4378$g_randValue:
	; InitializerZero 8
	times 8 db 0

section .data

int8$1664525#:
	; Initializer Signed_Long_Int 1664525
	dq 1664525

section .data

int8$127#:
	; Initializer Signed_Long_Int 127
	dq 127

section .text

 rand:
	; SignedMultiply £temporary2598 g_randValue 1664525
	mov rax, [@4378$g_randValue]
	xor rdx, rdx
	imul qword [int8$1664525#]

 rand$1:
	; BinaryAdd £temporary2599 £temporary2598 1013904223
	add rax, 1013904223

 rand$2:
	; SignedModulo g_randValue £temporary2599 127
	xor rdx, rdx
	idiv qword [int8$127#]
	mov [@4378$g_randValue], rdx

 rand$3:
	; IntegralToIntegral £temporary2601 g_randValue
	mov rbx, [@4378$g_randValue]
	cmp rbx, 0
	jge rand$4
	neg rbx
	neg ebx

 rand$4:
	; Return £temporary2601
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rand$5:
	; FunctionEnd rand

section .text

 srand:
	; IntegralToIntegral £temporary2602 seed
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 srand$1:
	; Assign g_randValue £temporary2602
	mov [@4378$g_randValue], rax

 srand$2:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 srand$3:
	; FunctionEnd srand

section .data

g_funcArray:
	; Initializer Pointer 0
	dq 0
	; InitializerZero 2040
	times 2040 db 0

section .data

Array_8#:
	; Initializer Array 8
	dq 8

section .text

 atexit:
	; Assign index 0
	mov dword [rbp + 32], 0

 atexit$1:
	; SignedGreaterThanEqual 15 index 256
	cmp dword [rbp + 32], 256
	jge atexit$15

 atexit$2:
	; IntegralToIntegral £temporary2606 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$3:
	; UnsignedMultiply £temporary2607 £temporary2606 8
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$4:
	; BinaryAdd £temporary2608 g_funcArray £temporary2607
	mov rsi, g_funcArray
	add rsi, rax

 atexit$5:
	; Dereference £temporary2605 -> £temporary2608 £temporary2608 0

 atexit$6:
	; NotEqual 13 £temporary2605 -> £temporary2608 0
	cmp qword [rsi], 0
	jne atexit$13

 atexit$7:
	; IntegralToIntegral £temporary2611 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$8:
	; UnsignedMultiply £temporary2612 £temporary2611 8
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$9:
	; BinaryAdd £temporary2613 g_funcArray £temporary2612
	mov rsi, g_funcArray
	add rsi, rax

 atexit$10:
	; Dereference £temporary2610 -> £temporary2613 £temporary2613 0

 atexit$11:
	; Assign £temporary2610 -> £temporary2613 fcn
	mov rax, [rbp + 24]
	mov [rsi], rax

 atexit$12:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$13:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 atexit$14:
	; Goto 1
	jmp atexit$1

 atexit$15:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$16:
	; FunctionEnd atexit

section .text

 exit:
	; Assign index 257
	mov dword [rbp + 28], 257

 exit$1:
	; SignedLessThan 16 index 0
	cmp dword [rbp + 28], 0
	jl exit$16

 exit$2:
	; IntegralToIntegral £temporary2617 index
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$3:
	; UnsignedMultiply £temporary2618 £temporary2617 8
	xor rdx, rdx
	mul qword [Array_8#]

 exit$4:
	; BinaryAdd £temporary2619 g_funcArray £temporary2618
	mov rsi, g_funcArray
	add rsi, rax

 exit$5:
	; Dereference £temporary2616 -> £temporary2619 £temporary2619 0

 exit$6:
	; Equal 14 £temporary2616 -> £temporary2619 0
	cmp qword [rsi], 0
	je exit$14

 exit$7:
	; IntegralToIntegral £temporary2622 index
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$8:
	; UnsignedMultiply £temporary2623 £temporary2622 8
	xor rdx, rdx
	mul qword [Array_8#]

 exit$9:
	; BinaryAdd £temporary2624 g_funcArray £temporary2623
	mov rbx, g_funcArray
	add rbx, rax

 exit$10:
	; Dereference £temporary2621 -> £temporary2624 £temporary2624 0

 exit$11:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 32], rbx

 exit$12:
	; Call £temporary2621 -> £temporary2624 32 0
	mov qword [rbp + 2080], exit$13
	mov [rbp + 2088], rbp
	add rbp, 2080
	mov rsi, rbp
	mov rax, [rsi]
	jmp rax

 exit$13:
	; PostCall 32
	mov rbx, [rbp + 32]

 exit$14:
	; BinarySubtract index index 1
	dec dword [rbp + 28]

 exit$15:
	; Goto 1
	jmp exit$1

 exit$16:
	; AssignRegister rax 60
	mov rax, 60

 exit$17:
	; IntegralToIntegral £temporary2628 status
	mov edi, [rbp + 24]
	mov rbx, 4294967295
	and rdi, rbx

 exit$18:
	; AssignRegister rdi £temporary2628

 exit$19:
	; SysCall
	syscall

 exit$20:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit$21:
	; FunctionEnd exit

section .text

 memswp:
	; IntegralToIntegral £temporary2629 value1
	mov rax, [rbp + 24]

 memswp$1:
	; Assign charValue1 £temporary2629
	mov [rbp + 44], rax

 memswp$2:
	; IntegralToIntegral £temporary2630 value2
	mov rax, [rbp + 32]

 memswp$3:
	; Assign charValue2 £temporary2630
	mov [rbp + 52], rax

 memswp$4:
	; Assign index 0
	mov dword [rbp + 60], 0

 memswp$5:
	; SignedGreaterThanEqual 23 index valueSize
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memswp$23

 memswp$6:
	; IntegralToIntegral £temporary2634 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$7:
	; BinaryAdd £temporary2636 charValue1 £temporary2634
	mov rsi, [rbp + 44]
	add rsi, rax

 memswp$8:
	; Dereference £temporary2633 -> £temporary2636 £temporary2636 0

 memswp$9:
	; Assign tempValue £temporary2633 -> £temporary2636
	mov al, [rsi]
	mov [rbp + 64], al

 memswp$10:
	; IntegralToIntegral £temporary2638 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$11:
	; BinaryAdd £temporary2640 charValue1 £temporary2638
	mov rsi, [rbp + 44]
	add rsi, rax

 memswp$12:
	; Dereference £temporary2637 -> £temporary2640 £temporary2640 0

 memswp$13:
	; IntegralToIntegral £temporary2642 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$14:
	; BinaryAdd £temporary2644 charValue2 £temporary2642
	mov rdi, [rbp + 52]
	add rdi, rax

 memswp$15:
	; Dereference £temporary2641 -> £temporary2644 £temporary2644 0

 memswp$16:
	; Assign £temporary2637 -> £temporary2640 £temporary2641 -> £temporary2644
	mov al, [rdi]
	mov [rsi], al

 memswp$17:
	; IntegralToIntegral £temporary2646 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$18:
	; BinaryAdd £temporary2648 charValue2 £temporary2646
	mov rsi, [rbp + 52]
	add rsi, rax

 memswp$19:
	; Dereference £temporary2645 -> £temporary2648 £temporary2648 0

 memswp$20:
	; Assign £temporary2645 -> £temporary2648 tempValue
	mov al, [rbp + 64]
	mov [rsi], al

 memswp$21:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memswp$22:
	; Goto 5
	jmp memswp$5

 memswp$23:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memswp$24:
	; FunctionEnd memswp

section .data

string_X1#:
	; Initializer String X1
	db "X1", 0

section .data

string_X2#:
	; Initializer String X2
	db "X2", 0

section .data

string_index2013A2025i0A#:
	; Initializer String index 1: %i\n
	db "index 1: %i", 10, 0

section .data

string_2020index23A2025i0A#:
	; Initializer String   index2: %i\n
	db "  index2: %i", 10, 0

section .data

string_C#:
	; Initializer String C
	db "C", 0

section .data

string_D#:
	; Initializer String D
	db "D", 0

section .data

string_E#:
	; Initializer String E
	db "E", 0

section .data

string_X#:
	; Initializer String X
	db "X", 0

section .data

string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

string_Z#:
	; Initializer String Z
	db "Z", 0

section .text

 qsort:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$1:
	; Parameter pointer "X1" 72
	mov qword [rbp + 72], string_X1#

 qsort$2:
	; Call printf 48 0
	mov qword [rbp + 48], qsort$3
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 qsort$3:
	; PostCall 48

 qsort$4:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$5:
	; Parameter pointer 0 72
	mov qword [rbp + 72], 0

 qsort$6:
	; Parameter pointer 0 80
	mov qword [rbp + 80], 0

 qsort$7:
	; Call compare 48 0
	mov qword [rbp + 48], qsort$8
	mov [rbp + 56], rbp
	add rbp, 48
	mov rax, [rbp + 40]
	jmp rax

 qsort$8:
	; PostCall 48

 qsort$9:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$10:
	; Parameter pointer "X2" 72
	mov qword [rbp + 72], string_X2#

 qsort$11:
	; Call printf 48 0
	mov qword [rbp + 48], qsort$12
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 qsort$12:
	; PostCall 48

 qsort$13:
	; IntegralToIntegral £temporary2652 valueList
	mov rax, [rbp + 24]

 qsort$14:
	; Assign charList £temporary2652
	mov [rbp + 52], rax

 qsort$15:
	; BinarySubtract index1 listSize 1
	mov eax, [rbp + 32]
	dec eax
	mov [rbp + 60], eax

 qsort$16:
	; SignedLessThanEqual 76 index1 0
	cmp dword [rbp + 60], 0
	jle qsort$76

 qsort$17:
	; Assign update 0
	mov dword [rbp + 48], 0

 qsort$18:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$19:
	; Parameter pointer "index 1: %i\n" 88
	mov qword [rbp + 88], string_index2013A2025i0A#

 qsort$20:
	; Parameter signedint index1 96
	mov eax, [rbp + 60]
	mov [rbp + 96], eax

 qsort$21:
	; Call printf 64 4
	mov qword [rbp + 64], qsort$22
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	add rdi, 4
	jmp printf

 qsort$22:
	; PostCall 64

 qsort$23:
	; Assign index2 0
	mov dword [rbp + 64], 0

 qsort$24:
	; SignedGreaterThanEqual 69 index2 index1
	mov eax, [rbp + 60]
	cmp [rbp + 64], eax
	jge qsort$69

 qsort$25:
	; PreCall 68 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$26:
	; Parameter pointer "  index2: %i\n" 92
	mov qword [rbp + 92], string_2020index23A2025i0A#

 qsort$27:
	; Parameter signedint index2 100
	mov eax, [rbp + 64]
	mov [rbp + 100], eax

 qsort$28:
	; Call printf 68 4
	mov qword [rbp + 68], qsort$29
	mov [rbp + 76], rbp
	add rbp, 68
	mov rdi, rbp
	add rdi, 4
	jmp printf

 qsort$29:
	; PostCall 68

 qsort$30:
	; SignedMultiply £temporary2660 index2 valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 36]

 qsort$31:
	; IntegralToIntegral £temporary2661 £temporary2660
	mov rbx, 4294967295
	and rax, rbx

 qsort$32:
	; BinaryAdd valuePtr1 charList £temporary2661
	mov rbx, [rbp + 52]
	add rbx, rax
	mov [rbp + 68], rbx

 qsort$33:
	; BinaryAdd £temporary2664 index2 1
	mov eax, [rbp + 64]
	inc eax

 qsort$34:
	; SignedMultiply £temporary2665 £temporary2664 valueSize
	xor edx, edx
	imul dword [rbp + 36]

 qsort$35:
	; IntegralToIntegral £temporary2666 £temporary2665
	mov rbx, 4294967295
	and rax, rbx

 qsort$36:
	; BinaryAdd valuePtr2 charList £temporary2666
	mov rbx, [rbp + 52]
	add rbx, rax
	mov [rbp + 76], rbx

 qsort$37:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$38:
	; Parameter pointer valuePtr1 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$39:
	; Parameter pointer valuePtr2 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$40:
	; Call compare 84 0
	mov qword [rbp + 84], qsort$41
	mov [rbp + 92], rbp
	add rbp, 84
	mov rax, [rbp + 40]
	jmp rax

 qsort$41:
	; PostCall 84

 qsort$42:
	; GetReturnValue £temporary2669

 qsort$43:
	; SignedLessThanEqual 63 £temporary2669 0
	cmp ebx, 0
	jle qsort$63

 qsort$44:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$45:
	; Parameter pointer "C" 108
	mov qword [rbp + 108], string_C#

 qsort$46:
	; Call printf 84 0
	mov qword [rbp + 84], qsort$47
	mov [rbp + 92], rbp
	add rbp, 84
	mov rdi, rbp
	jmp printf

 qsort$47:
	; PostCall 84

 qsort$48:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$49:
	; Parameter pointer valuePtr1 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$50:
	; Parameter pointer valuePtr2 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$51:
	; Parameter signedint valueSize 124
	mov eax, [rbp + 36]
	mov [rbp + 124], eax

 qsort$52:
	; Call memswp 84 0
	mov qword [rbp + 84], qsort$53
	mov [rbp + 92], rbp
	add rbp, 84
	jmp memswp

 qsort$53:
	; PostCall 84

 qsort$54:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$55:
	; Parameter pointer "D" 108
	mov qword [rbp + 108], string_D#

 qsort$56:
	; Call printf 84 0
	mov qword [rbp + 84], qsort$57
	mov [rbp + 92], rbp
	add rbp, 84
	mov rdi, rbp
	jmp printf

 qsort$57:
	; PostCall 84

 qsort$58:
	; Assign update 1
	mov dword [rbp + 48], 1

 qsort$59:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$60:
	; Parameter pointer "E" 108
	mov qword [rbp + 108], string_E#

 qsort$61:
	; Call printf 84 0
	mov qword [rbp + 84], qsort$62
	mov [rbp + 92], rbp
	add rbp, 84
	mov rdi, rbp
	jmp printf

 qsort$62:
	; PostCall 84

 qsort$63:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$64:
	; Parameter pointer "X" 108
	mov qword [rbp + 108], string_X#

 qsort$65:
	; Call printf 84 0
	mov qword [rbp + 84], qsort$66
	mov [rbp + 92], rbp
	add rbp, 84
	mov rdi, rbp
	jmp printf

 qsort$66:
	; PostCall 84

 qsort$67:
	; BinaryAdd index2 index2 1
	inc dword [rbp + 64]

 qsort$68:
	; Goto 24
	jmp qsort$24

 qsort$69:
	; PreCall 68 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$70:
	; Parameter pointer "Y" 92
	mov qword [rbp + 92], string_Y#

 qsort$71:
	; Call printf 68 0
	mov qword [rbp + 68], qsort$72
	mov [rbp + 76], rbp
	add rbp, 68
	mov rdi, rbp
	jmp printf

 qsort$72:
	; PostCall 68

 qsort$73:
	; Equal 76 update 0
	cmp dword [rbp + 48], 0
	je qsort$76

 qsort$74:
	; BinarySubtract index1 index1 1
	dec dword [rbp + 60]

 qsort$75:
	; Goto 16
	jmp qsort$16

 qsort$76:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$77:
	; Parameter pointer "Z" 88
	mov qword [rbp + 88], string_Z#

 qsort$78:
	; Call printf 64 0
	mov qword [rbp + 64], qsort$79
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	jmp printf

 qsort$79:
	; PostCall 64

 qsort$80:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 qsort$81:
	; FunctionEnd qsort

section .text

 @4426$swap:
	; Assign index 0
	mov dword [rbp + 44], 0

 @4426$swap$1:
	; SignedGreaterThanEqual 19 index valueSize
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge @4426$swap$19

 @4426$swap$2:
	; IntegralToIntegral £temporary2683 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @4426$swap$3:
	; BinaryAdd £temporary2685 leftValuePtr £temporary2683
	mov rsi, [rbp + 24]
	add rsi, rax

 @4426$swap$4:
	; Dereference £temporary2682 -> £temporary2685 £temporary2685 0

 @4426$swap$5:
	; Assign tempValue £temporary2682 -> £temporary2685
	mov al, [rsi]
	mov [rbp + 48], al

 @4426$swap$6:
	; IntegralToIntegral £temporary2687 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @4426$swap$7:
	; BinaryAdd £temporary2689 leftValuePtr £temporary2687
	mov rsi, [rbp + 24]
	add rsi, rax

 @4426$swap$8:
	; Dereference £temporary2686 -> £temporary2689 £temporary2689 0

 @4426$swap$9:
	; IntegralToIntegral £temporary2691 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @4426$swap$10:
	; BinaryAdd £temporary2693 rightValuePtr £temporary2691
	mov rdi, [rbp + 32]
	add rdi, rax

 @4426$swap$11:
	; Dereference £temporary2690 -> £temporary2693 £temporary2693 0

 @4426$swap$12:
	; Assign £temporary2686 -> £temporary2689 £temporary2690 -> £temporary2693
	mov al, [rdi]
	mov [rsi], al

 @4426$swap$13:
	; IntegralToIntegral £temporary2695 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @4426$swap$14:
	; BinaryAdd £temporary2697 rightValuePtr £temporary2695
	mov rsi, [rbp + 32]
	add rsi, rax

 @4426$swap$15:
	; Dereference £temporary2694 -> £temporary2697 £temporary2697 0

 @4426$swap$16:
	; Assign £temporary2694 -> £temporary2697 tempValue
	mov al, [rbp + 48]
	mov [rsi], al

 @4426$swap$17:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 @4426$swap$18:
	; Goto 1
	jmp @4426$swap$1

 @4426$swap$19:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @4426$swap$20:
	; FunctionEnd swap

section .text

 @abs:
	; SignedGreaterThanEqual 4 value 0
	cmp dword [rbp + 24], 0
	jge @abs$4

 @abs$1:
	; UnarySubtract £temporary2699 value
	mov ebx, [rbp + 24]
	neg ebx

 @abs$2:
	; Assign £temporary2700 £temporary2699

 @abs$3:
	; Goto 5
	jmp @abs$5

 @abs$4:
	; Assign £temporary2700 value
	mov ebx, [rbp + 24]

 @abs$5:
	; Return £temporary2700
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @abs$6:
	; FunctionEnd @abs

section .text

 labs:
	; SignedGreaterThanEqual 4 value 0
	cmp qword [rbp + 24], 0
	jge labs$4

 labs$1:
	; UnarySubtract £temporary2702 value
	mov rbx, [rbp + 24]
	neg rbx

 labs$2:
	; Assign £temporary2703 £temporary2702

 labs$3:
	; Goto 5
	jmp labs$5

 labs$4:
	; Assign £temporary2703 value
	mov rbx, [rbp + 24]

 labs$5:
	; Return £temporary2703
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 labs$6:
	; FunctionEnd labs

section .text

 div:
	; Assign result.quot 0
	mov dword [rbp + 32], 0

 div$1:
	; Assign result.rem 0
	mov dword [rbp + 36], 0

 div$2:
	; NotEqual 5 denum 0
	cmp dword [rbp + 28], 0
	jne div$5

 div$3:
	; Assign errno 6
	mov dword [errno], 6

 div$4:
	; Return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$5:
	; SignedDivide result.quot num denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 32], eax

 div$6:
	; SignedModulo result.rem num denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 36], edx

 div$7:
	; Return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$8:
	; FunctionEnd div

section .text

 ldiv:
	; Assign result.quot 0
	mov qword [rbp + 40], 0

 ldiv$1:
	; Assign result.rem 0
	mov qword [rbp + 48], 0

 ldiv$2:
	; NotEqual 5 denum 0
	cmp qword [rbp + 32], 0
	jne ldiv$5

 ldiv$3:
	; Assign errno 6
	mov dword [errno], 6

 ldiv$4:
	; Return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$5:
	; SignedDivide result.quot num denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 40], rax

 ldiv$6:
	; SignedModulo result.rem num denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 48], rdx

 ldiv$7:
	; Return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$8:
	; FunctionEnd ldiv
