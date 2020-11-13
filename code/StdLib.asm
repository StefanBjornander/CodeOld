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
	; GetReturnValue £temporary1980

 atoi$7:
	; IntegralToIntegral £temporary1981 £temporary1980
	cmp rbx, 0
	jge atoi$8
	neg rbx
	neg ebx

 atoi$8:
	; Return £temporary1981
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
	; GetReturnValue £temporary1982

 atol$7:
	; Return £temporary1982
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
	; GetReturnValue £temporary1983

 strtol$8:
	; Assign value £temporary1983
	mov [rbp + 44], rbx

 strtol$9:
	; Equal 13 endp 0
	cmp qword [rbp + 32], 0
	je strtol$13

 strtol$10:
	; Dereference £temporary1985 -> endp endp 0
	mov rsi, [rbp + 32]

 strtol$11:
	; IntegralToIntegral £temporary1986 g_inChars
	mov eax, [g_inChars]
	mov rbx, 4294967295
	and rax, rbx

 strtol$12:
	; BinaryAdd £temporary1985 -> endp s £temporary1986
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtol$13:
	; Return value
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
	; Address £temporary2000 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$15:
	; Parameter pointer £temporary2000 79
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
	; GetReturnValue £temporary2001

 strtol_test$20:
	; Assign value £temporary2001
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
	; Address £temporary2015 pointer
	mov rsi, rbp
	add rsi, 40

 strtol_test$45:
	; Parameter pointer £temporary2015 80
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
	; GetReturnValue £temporary2016

 strtol_test$50:
	; Assign value £temporary2016
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
	; Address £temporary2031 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$76:
	; Parameter pointer £temporary2031 81
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
	; GetReturnValue £temporary2032

 strtol_test$81:
	; Assign value £temporary2032
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
	; Address £temporary2047 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$107:
	; Parameter pointer £temporary2047 81
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
	; GetReturnValue £temporary2048

 strtol_test$112:
	; Assign value £temporary2048
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
	; Address £temporary2061 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$136:
	; Parameter pointer £temporary2061 79
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
	; GetReturnValue £temporary2062

 strtol_test$141:
	; Assign value £temporary2062
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
	; Address £temporary2076 pointer
	mov rsi, rbp
	add rsi, 40

 strtol_test$166:
	; Parameter pointer £temporary2076 80
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
	; GetReturnValue £temporary2077

 strtol_test$171:
	; Assign value £temporary2077
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
	; Address £temporary2092 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$197:
	; Parameter pointer £temporary2092 81
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
	; GetReturnValue £temporary2093

 strtol_test$202:
	; Assign value £temporary2093
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
	; Address £temporary2108 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$228:
	; Parameter pointer £temporary2108 81
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
	; GetReturnValue £temporary2109

 strtol_test$233:
	; Assign value £temporary2109
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
	; Address £temporary2122 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$257:
	; Parameter pointer £temporary2122 79
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
	; GetReturnValue £temporary2123

 strtol_test$262:
	; Assign value £temporary2123
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
	; Address £temporary2136 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$286:
	; Parameter pointer £temporary2136 79
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
	; GetReturnValue £temporary2137

 strtol_test$291:
	; Assign value £temporary2137
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
	; Address £temporary2150 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$315:
	; Parameter pointer £temporary2150 79
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
	; GetReturnValue £temporary2151

 strtol_test$320:
	; Assign value £temporary2151
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
	; Address £temporary2164 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$344:
	; Parameter pointer £temporary2164 79
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
	; GetReturnValue £temporary2165

 strtol_test$349:
	; Assign value £temporary2165
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
	; Address £temporary2178 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$373:
	; Parameter pointer £temporary2178 79
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
	; GetReturnValue £temporary2179

 strtol_test$378:
	; Assign value £temporary2179
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
	; Address £temporary2192 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$402:
	; Parameter pointer £temporary2192 79
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
	; GetReturnValue £temporary2193

 strtol_test$407:
	; Assign value £temporary2193
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
	; Address £temporary2206 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$431:
	; Parameter pointer £temporary2206 79
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
	; GetReturnValue £temporary2207

 strtol_test$436:
	; Assign value £temporary2207
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
	; Address £temporary2220 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$460:
	; Parameter pointer £temporary2220 79
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
	; GetReturnValue £temporary2221

 strtol_test$465:
	; Assign value £temporary2221
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
	; Address £temporary2234 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$489:
	; Parameter pointer £temporary2234 79
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
	; GetReturnValue £temporary2235

 strtol_test$494:
	; Assign value £temporary2235
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
	; Address £temporary2248 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$518:
	; Parameter pointer £temporary2248 79
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
	; GetReturnValue £temporary2249

 strtol_test$523:
	; Assign value £temporary2249
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
	; GetReturnValue £temporary2269

 strtoul$8:
	; Assign unsignedLongValue £temporary2269
	mov [rbp + 44], rbx

 strtoul$9:
	; Equal 13 endp 0
	cmp qword [rbp + 32], 0
	je strtoul$13

 strtoul$10:
	; Dereference £temporary2271 -> endp endp 0
	mov rsi, [rbp + 32]

 strtoul$11:
	; IntegralToIntegral £temporary2272 g_inChars
	mov eax, [g_inChars]
	mov rbx, 4294967295
	and rax, rbx

 strtoul$12:
	; BinaryAdd £temporary2271 -> endp s £temporary2272
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
	; Address £temporary2286 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$15:
	; Parameter pointer £temporary2286 79
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
	; GetReturnValue £temporary2287

 strtoul_test$20:
	; Assign value £temporary2287
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
	; Address £temporary2301 pointer
	mov rsi, rbp
	add rsi, 40

 strtoul_test$45:
	; Parameter pointer £temporary2301 80
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
	; GetReturnValue £temporary2302

 strtoul_test$50:
	; Assign value £temporary2302
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
	; Address £temporary2317 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$76:
	; Parameter pointer £temporary2317 81
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
	; GetReturnValue £temporary2318

 strtoul_test$81:
	; Assign value £temporary2318
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
	; Address £temporary2333 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$107:
	; Parameter pointer £temporary2333 81
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
	; GetReturnValue £temporary2334

 strtoul_test$112:
	; Assign value £temporary2334
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
	; Address £temporary2347 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$136:
	; Parameter pointer £temporary2347 79
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
	; GetReturnValue £temporary2348

 strtoul_test$141:
	; Assign value £temporary2348
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
	; Address £temporary2362 pointer
	mov rsi, rbp
	add rsi, 40

 strtoul_test$166:
	; Parameter pointer £temporary2362 80
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
	; GetReturnValue £temporary2363

 strtoul_test$171:
	; Assign value £temporary2363
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
	; Address £temporary2378 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$197:
	; Parameter pointer £temporary2378 81
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
	; GetReturnValue £temporary2379

 strtoul_test$202:
	; Assign value £temporary2379
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
	; Address £temporary2394 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$228:
	; Parameter pointer £temporary2394 81
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
	; GetReturnValue £temporary2395

 strtoul_test$233:
	; Assign value £temporary2395
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
	; Address £temporary2408 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$257:
	; Parameter pointer £temporary2408 79
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
	; GetReturnValue £temporary2409

 strtoul_test$262:
	; Assign value £temporary2409
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
	; Address £temporary2422 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$286:
	; Parameter pointer £temporary2422 79
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
	; GetReturnValue £temporary2423

 strtoul_test$291:
	; Assign value £temporary2423
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
	; Address £temporary2436 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$315:
	; Parameter pointer £temporary2436 79
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
	; GetReturnValue £temporary2437

 strtoul_test$320:
	; Assign value £temporary2437
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
	; Address £temporary2450 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$344:
	; Parameter pointer £temporary2450 79
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
	; GetReturnValue £temporary2451

 strtoul_test$349:
	; Assign value £temporary2451
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
	; Address £temporary2464 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$373:
	; Parameter pointer £temporary2464 79
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
	; GetReturnValue £temporary2465

 strtoul_test$378:
	; Assign value £temporary2465
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
	; Address £temporary2478 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$402:
	; Parameter pointer £temporary2478 79
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
	; GetReturnValue £temporary2479

 strtoul_test$407:
	; Assign value £temporary2479
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
	; Address £temporary2492 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$431:
	; Parameter pointer £temporary2492 79
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
	; GetReturnValue £temporary2493

 strtoul_test$436:
	; Assign value £temporary2493
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
	; Address £temporary2506 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$460:
	; Parameter pointer £temporary2506 79
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
	; GetReturnValue £temporary2507

 strtoul_test$465:
	; Assign value £temporary2507
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
	; Address £temporary2520 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$489:
	; Parameter pointer £temporary2520 79
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
	; GetReturnValue £temporary2521

 strtoul_test$494:
	; Assign value £temporary2521
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
	; Address £temporary2534 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$518:
	; Parameter pointer £temporary2534 79
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
	; GetReturnValue £temporary2535

 strtoul_test$523:
	; Assign value £temporary2535
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
	; GetReturnValue £temporary2555

 atof$6:
	; Return £temporary2555
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
	; Address £temporary2556 value
	mov rsi, rbp
	add rsi, 44

 strtod$7:
	; Parameter pointer £temporary2556 92
	mov [rbp + 92], rsi

 strtod$8:
	; Address £temporary2557 chars
	mov rsi, rbp
	add rsi, 40

 strtod$9:
	; Parameter pointer £temporary2557 100
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
	; Dereference £temporary2560 -> endp endp 0
	mov rsi, [rbp + 32]

 strtod$14:
	; IntegralToIntegral £temporary2561 chars
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtod$15:
	; BinaryAdd £temporary2560 -> endp s £temporary2561
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
	; IntegralToIntegral £temporary2570 valueList
	mov rbx, [rbp + 32]

 bsearch$5:
	; SignedMultiply £temporary2571 firstIndex valueSize
	mov eax, [rbp + 56]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$6:
	; IntegralToIntegral £temporary2572 £temporary2571
	mov rcx, 4294967295
	and rax, rcx

 bsearch$7:
	; BinaryAdd firstValuePtr £temporary2570 £temporary2572
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
	mov rax, [rbp + 48]
	add rbp, 72
	jmp rax

 bsearch$12:
	; PostCall 72

 bsearch$13:
	; GetReturnValue £temporary2575

 bsearch$14:
	; Assign firstCompare £temporary2575
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
	; IntegralToIntegral £temporary2578 valueList
	mov rbx, [rbp + 32]

 bsearch$20:
	; SignedMultiply £temporary2579 lastIndex valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$21:
	; IntegralToIntegral £temporary2580 £temporary2579
	mov rcx, 4294967295
	and rax, rcx

 bsearch$22:
	; BinaryAdd lastValuePtr £temporary2578 £temporary2580
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
	mov rax, [rbp + 48]
	add rbp, 72
	jmp rax

 bsearch$27:
	; PostCall 72

 bsearch$28:
	; GetReturnValue £temporary2583

 bsearch$29:
	; Assign lastCompare £temporary2583
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
	; BinaryAdd £temporary2586 firstIndex lastIndex
	mov eax, [rbp + 56]
	add eax, [rbp + 60]

 bsearch$35:
	; SignedDivide middleIndex £temporary2586 2
	xor edx, edx
	idiv dword [int4$2#]
	mov [rbp + 64], eax

 bsearch$36:
	; IntegralToIntegral £temporary2588 valueList
	mov rbx, [rbp + 32]

 bsearch$37:
	; SignedMultiply £temporary2589 middleIndex valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$38:
	; IntegralToIntegral £temporary2590 £temporary2589
	mov rcx, 4294967295
	and rax, rcx

 bsearch$39:
	; BinaryAdd middleValuePtr £temporary2588 £temporary2590
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
	mov rax, [rbp + 48]
	add rbp, 76
	jmp rax

 bsearch$44:
	; PostCall 76

 bsearch$45:
	; GetReturnValue £temporary2593

 bsearch$46:
	; Assign middleCompare £temporary2593
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

@4375$g_randValue:
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
	; SignedMultiply £temporary2597 g_randValue 1664525
	mov rax, [@4375$g_randValue]
	xor rdx, rdx
	imul qword [int8$1664525#]

 rand$1:
	; BinaryAdd £temporary2598 £temporary2597 1013904223
	add rax, 1013904223

 rand$2:
	; SignedModulo g_randValue £temporary2598 127
	xor rdx, rdx
	idiv qword [int8$127#]
	mov [@4375$g_randValue], rdx

 rand$3:
	; IntegralToIntegral £temporary2600 g_randValue
	mov rbx, [@4375$g_randValue]
	cmp rbx, 0
	jge rand$4
	neg rbx
	neg ebx

 rand$4:
	; Return £temporary2600
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rand$5:
	; FunctionEnd rand

section .text

 srand:
	; IntegralToIntegral £temporary2601 seed
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 srand$1:
	; Assign g_randValue £temporary2601
	mov [@4375$g_randValue], rax

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
	; IntegralToIntegral £temporary2605 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$3:
	; UnsignedMultiply £temporary2606 £temporary2605 8
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$4:
	; BinaryAdd £temporary2607 g_funcArray £temporary2606
	mov rsi, g_funcArray
	add rsi, rax

 atexit$5:
	; Dereference £temporary2604 -> £temporary2607 £temporary2607 0

 atexit$6:
	; NotEqual 13 £temporary2604 -> £temporary2607 0
	cmp qword [rsi], 0
	jne atexit$13

 atexit$7:
	; IntegralToIntegral £temporary2610 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$8:
	; UnsignedMultiply £temporary2611 £temporary2610 8
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$9:
	; BinaryAdd £temporary2612 g_funcArray £temporary2611
	mov rsi, g_funcArray
	add rsi, rax

 atexit$10:
	; Dereference £temporary2609 -> £temporary2612 £temporary2612 0

 atexit$11:
	; Assign £temporary2609 -> £temporary2612 fcn
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
	; Assign index 255
	mov dword [rbp + 28], 255

 exit$1:
	; SignedLessThan 16 index 0
	cmp dword [rbp + 28], 0
	jl exit$16

 exit$2:
	; IntegralToIntegral £temporary2616 index
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$3:
	; UnsignedMultiply £temporary2617 £temporary2616 8
	xor rdx, rdx
	mul qword [Array_8#]

 exit$4:
	; BinaryAdd £temporary2618 g_funcArray £temporary2617
	mov rsi, g_funcArray
	add rsi, rax

 exit$5:
	; Dereference £temporary2615 -> £temporary2618 £temporary2618 0

 exit$6:
	; Equal 14 £temporary2615 -> £temporary2618 0
	cmp qword [rsi], 0
	je exit$14

 exit$7:
	; IntegralToIntegral £temporary2621 index
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$8:
	; UnsignedMultiply £temporary2622 £temporary2621 8
	xor rdx, rdx
	mul qword [Array_8#]

 exit$9:
	; BinaryAdd £temporary2623 g_funcArray £temporary2622
	mov rbx, g_funcArray
	add rbx, rax

 exit$10:
	; Dereference £temporary2620 -> £temporary2623 £temporary2623 0

 exit$11:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 32], rbx

 exit$12:
	; Call £temporary2620 -> £temporary2623 32 0
	mov qword [rbp + 2080], exit$13
	mov [rbp + 2088], rbp
	mov rsi, rbp
	mov rax, [rsi]
	add rbp, 2080
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
	; IntegralToIntegral £temporary2627 status
	mov edi, [rbp + 24]
	mov rbx, 4294967295
	and rdi, rbx

 exit$18:
	; AssignRegister rdi £temporary2627

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

 @4385$memswap:
	; Assign index 0
	mov dword [rbp + 44], 0

 @4385$memswap$1:
	; SignedGreaterThanEqual 19 index valueSize
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge @4385$memswap$19

 @4385$memswap$2:
	; IntegralToIntegral £temporary2631 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @4385$memswap$3:
	; BinaryAdd £temporary2633 value1 £temporary2631
	mov rsi, [rbp + 24]
	add rsi, rax

 @4385$memswap$4:
	; Dereference £temporary2630 -> £temporary2633 £temporary2633 0

 @4385$memswap$5:
	; Assign tempValue £temporary2630 -> £temporary2633
	mov al, [rsi]
	mov [rbp + 48], al

 @4385$memswap$6:
	; IntegralToIntegral £temporary2635 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @4385$memswap$7:
	; BinaryAdd £temporary2637 value1 £temporary2635
	mov rsi, [rbp + 24]
	add rsi, rax

 @4385$memswap$8:
	; Dereference £temporary2634 -> £temporary2637 £temporary2637 0

 @4385$memswap$9:
	; IntegralToIntegral £temporary2639 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @4385$memswap$10:
	; BinaryAdd £temporary2641 value2 £temporary2639
	mov rdi, [rbp + 32]
	add rdi, rax

 @4385$memswap$11:
	; Dereference £temporary2638 -> £temporary2641 £temporary2641 0

 @4385$memswap$12:
	; Assign £temporary2634 -> £temporary2637 £temporary2638 -> £temporary2641
	mov al, [rdi]
	mov [rsi], al

 @4385$memswap$13:
	; IntegralToIntegral £temporary2643 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @4385$memswap$14:
	; BinaryAdd £temporary2645 value2 £temporary2643
	mov rsi, [rbp + 32]
	add rsi, rax

 @4385$memswap$15:
	; Dereference £temporary2642 -> £temporary2645 £temporary2645 0

 @4385$memswap$16:
	; Assign £temporary2642 -> £temporary2645 tempValue
	mov al, [rbp + 48]
	mov [rsi], al

 @4385$memswap$17:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 @4385$memswap$18:
	; Goto 1
	jmp @4385$memswap$1

 @4385$memswap$19:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @4385$memswap$20:
	; FunctionEnd memswap

section .text

 qsort:
	; IntegralToIntegral £temporary2646 valueList
	mov rax, [rbp + 24]

 qsort$1:
	; Assign charList £temporary2646
	mov [rbp + 48], rax

 qsort$2:
	; BinarySubtract size listSize 1
	mov eax, [rbp + 32]
	dec eax
	mov [rbp + 56], eax

 qsort$3:
	; SignedLessThanEqual 33 size 0
	cmp dword [rbp + 56], 0
	jle qsort$33

 qsort$4:
	; Assign update 0
	mov dword [rbp + 64], 0

 qsort$5:
	; Assign index 0
	mov dword [rbp + 60], 0

 qsort$6:
	; SignedGreaterThanEqual 30 index size
	mov eax, [rbp + 56]
	cmp [rbp + 60], eax
	jge qsort$30

 qsort$7:
	; SignedMultiply £temporary2652 index valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 36]

 qsort$8:
	; IntegralToIntegral £temporary2653 £temporary2652
	mov rbx, 4294967295
	and rax, rbx

 qsort$9:
	; BinaryAdd valuePtr1 charList £temporary2653
	mov rbx, [rbp + 48]
	add rbx, rax
	mov [rbp + 68], rbx

 qsort$10:
	; BinaryAdd £temporary2656 index 1
	mov eax, [rbp + 60]
	inc eax

 qsort$11:
	; SignedMultiply £temporary2657 £temporary2656 valueSize
	xor edx, edx
	imul dword [rbp + 36]

 qsort$12:
	; IntegralToIntegral £temporary2658 £temporary2657
	mov rbx, 4294967295
	and rax, rbx

 qsort$13:
	; BinaryAdd valuePtr2 charList £temporary2658
	mov rbx, [rbp + 48]
	add rbx, rax
	mov [rbp + 76], rbx

 qsort$14:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$15:
	; Parameter pointer valuePtr1 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$16:
	; Parameter pointer valuePtr2 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$17:
	; Call compare 84 0
	mov qword [rbp + 84], qsort$18
	mov [rbp + 92], rbp
	mov rax, [rbp + 40]
	add rbp, 84
	jmp rax

 qsort$18:
	; PostCall 84

 qsort$19:
	; GetReturnValue £temporary2661

 qsort$20:
	; SignedLessThanEqual 28 £temporary2661 0
	cmp ebx, 0
	jle qsort$28

 qsort$21:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$22:
	; Parameter pointer valuePtr1 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$23:
	; Parameter pointer valuePtr2 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$24:
	; Parameter signedint valueSize 124
	mov eax, [rbp + 36]
	mov [rbp + 124], eax

 qsort$25:
	; Call memswap 84 0
	mov qword [rbp + 84], qsort$26
	mov [rbp + 92], rbp
	add rbp, 84
	jmp @4385$memswap

 qsort$26:
	; PostCall 84

 qsort$27:
	; Assign update 1
	mov dword [rbp + 64], 1

 qsort$28:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 qsort$29:
	; Goto 6
	jmp qsort$6

 qsort$30:
	; Equal 33 update 0
	cmp dword [rbp + 64], 0
	je qsort$33

 qsort$31:
	; BinarySubtract size size 1
	dec dword [rbp + 56]

 qsort$32:
	; Goto 3
	jmp qsort$3

 qsort$33:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 qsort$34:
	; FunctionEnd qsort

section .text

 @abs:
	; SignedGreaterThanEqual 3 value 0
	cmp dword [rbp + 24], 0
	jge @abs$3

 @abs$1:
	; UnarySubtract £temporary2668 value
	mov ebx, [rbp + 24]
	neg ebx

 @abs$2:
	; Goto 4
	jmp @abs$4

 @abs$3:
	; Assign £temporary2668 value
	mov ebx, [rbp + 24]

 @abs$4:
	; Return £temporary2668
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @abs$5:
	; FunctionEnd @abs

section .text

 labs:
	; SignedGreaterThanEqual 3 value 0
	cmp qword [rbp + 24], 0
	jge labs$3

 labs$1:
	; UnarySubtract £temporary2671 value
	mov rbx, [rbp + 24]
	neg rbx

 labs$2:
	; Goto 4
	jmp labs$4

 labs$3:
	; Assign £temporary2671 value
	mov rbx, [rbp + 24]

 labs$4:
	; Return £temporary2671
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 labs$5:
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
