	global string_test

	extern strlen
	extern printf
	extern strcpy
	extern strncpy
	extern strcat
	extern strncat
	extern strcmp
	extern strncmp
	extern strchr
	extern strrchr
	extern memcpy
	extern memmove
	extern memset
	extern memchr
	extern memcmp
	extern strspn
	extern strcspn
	extern errno
	extern strerror
	extern strtok
	extern $StackTop


section .data

string_Hello2C20World21#:
	; Initializer String Hello, World!
	db "Hello, World!", 0

section .data

string_strlen282225s2229203D2025i0A#:
	; Initializer String strlen("%s") = %i\n
	db "strlen(", 34, "%s", 34, ") = %i", 10, 0

section .data

string_t203D202225s222C20u203D202225s220A#:
	; Initializer String t = "%s", u = "%s"\n
	db "t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0

section .data

string_abc#:
	; Initializer String abc
	db "abc", 0

section .data

string_strcmp28s2C20u29203D2025i0A#:
	; Initializer String strcmp(s, u) = %i\n
	db "strcmp(s, u) = %i", 10, 0

section .data

string_strncmp28s2C20u2C20229203D2025i0A#:
	; Initializer String strncmp(s, u, 2) = %i\n
	db "strncmp(s, u, 2) = %i", 10, 0

section .data

string_strchr28s2C2027l2729203D2025i0A#:
	; Initializer String strchr(s, 'l') = %i\n
	db "strchr(s, ", 39, "l", 39, ") = %i", 10, 0

section .data

string_strrchr28s2C2027l2729203D2025i0A#:
	; Initializer String strrchr(s, 'l') = %i\n
	db "strrchr(s, ", 39, "l", 39, ") = %i", 10, 0

section .data

string_strchr28s2C2027x2729203D2025i0A#:
	; Initializer String strchr(s, 'x') = %i\n
	db "strchr(s, ", 39, "x", 39, ") = %i", 10, 0

section .data

string_strrchr28s2C2027x2729203D2025i0A#:
	; Initializer String strrchr(s, 'x') = %i\n
	db "strrchr(s, ", 39, "x", 39, ") = %i", 10, 0

section .data

string_s203D202225s222C20t203D202225s222C20u203D202225s220A#:
	; Initializer String s = "%s", t = "%s", u = "%s"\n
	db "s = ", 34, "%s", 34, ", t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0

section .data

string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#:
	; Initializer String memchr(s, 'l', SIZE * sizeof(char)) = %i\n
	db "memchr(s, ", 39, "l", 39, ", SIZE * sizeof(char)) = %i", 10, 0

section .data

string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#:
	; Initializer String memchr(s, 'x', SIZE * sizeof(char)) = %i\n
	db "memchr(s, ", 39, "x", 39, ", SIZE * sizeof(char)) = %i", 10, 0

section .data

string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#:
	; Initializer String memcmp(s, t, SIZE * sizeof(char)) = %i\n
	db "memcmp(s, t, SIZE * sizeof(char)) = %i", 10, 0

section .data

string_strspn28s2C2022Hello2C20C2229203D2025i0A#:
	; Initializer String strspn(s, "Hello, C") = %i\n
	db "strspn(s, ", 34, "Hello, C", 34, ") = %i", 10, 0

section .data

string_Hello2C20C#:
	; Initializer String Hello, C
	db "Hello, C", 0

section .data

string_strcspn28s2C2022Hello2C20C2229203D2025i0A#:
	; Initializer String strcspn(s, "Hello, C") = %i\n
	db "strcspn(s, ", 34, "Hello, C", 34, ") = %i", 10, 0

section .data

string_strerror28errno29203D202225s220A#:
	; Initializer String strerror(errno) = "%s"\n
	db "strerror(errno) = ", 34, "%s", 34, 10, 0

section .data

string_2C#:
	; Initializer String ,
	db ",", 0

section .data

string_strtok28s2C20222C2229203D202225s220A#:
	; Initializer String strtok(s, ",") = "%s"\n
	db "strtok(s, ", 34, ",", 34, ") = ", 34, "%s", 34, 10, 0

section .text

 string_test:
	; Assign s "Hello, World!"
	mov qword [rbp + 28], string_Hello2C20World21#

 string_test$1:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$2:
	; Parameter pointer "strlen("%s") = %i\n" 268
	mov qword [rbp + 268], string_strlen282225s2229203D2025i0A#

 string_test$3:
	; Parameter pointer s 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$4:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$5:
	; Parameter pointer s 308
	mov rax, [rbp + 28]
	mov [rbp + 308], rax

 string_test$6:
	; Call strlen 284 0
	mov qword [rbp + 284], string_test$7
	mov [rbp + 292], rbp
	add rbp, 284
	jmp strlen

 string_test$7:
	; PostCall 284

 string_test$8:
	; GetReturnValue £temporary3586

 string_test$9:
	; Parameter signedint £temporary3586 284
	mov [rbp + 284], ebx

 string_test$10:
	; Call printf 244 12
	mov qword [rbp + 244], string_test$11
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 12
	jmp printf

 string_test$11:
	; PostCall 244

 string_test$12:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$13:
	; Parameter pointer t 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$14:
	; Parameter pointer s 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$15:
	; Call strcpy 244 0
	mov qword [rbp + 244], string_test$16
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strcpy

 string_test$16:
	; PostCall 244

 string_test$17:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$18:
	; Parameter pointer u 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$19:
	; Parameter pointer s 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$20:
	; Parameter signedint 5 284
	mov dword [rbp + 284], 5

 string_test$21:
	; Call strncpy 244 0
	mov qword [rbp + 244], string_test$22
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strncpy

 string_test$22:
	; PostCall 244

 string_test$23:
	; Dereference £temporary3590 -> u u 0
	mov rsi, rbp
	add rsi, 136

 string_test$24:
	; Assign £temporary3590 -> u 0
	mov byte [rsi + 5], 0

 string_test$25:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$26:
	; Parameter pointer "t = "%s", u = "%s"\n" 268
	mov qword [rbp + 268], string_t203D202225s222C20u203D202225s220A#

 string_test$27:
	; Parameter pointer t 276
	mov [rbp + 276], rbp
	add qword [rbp + 276], 36

 string_test$28:
	; Parameter pointer u 284
	mov [rbp + 284], rbp
	add qword [rbp + 284], 136

 string_test$29:
	; Call printf 244 16
	mov qword [rbp + 244], string_test$30
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 16
	jmp printf

 string_test$30:
	; PostCall 244

 string_test$31:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$32:
	; Parameter pointer t 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$33:
	; Parameter pointer "abc" 276
	mov qword [rbp + 276], string_abc#

 string_test$34:
	; Call strcat 244 0
	mov qword [rbp + 244], string_test$35
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strcat

 string_test$35:
	; PostCall 244

 string_test$36:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$37:
	; Parameter pointer u 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$38:
	; Call strlen 244 0
	mov qword [rbp + 244], string_test$39
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strlen

 string_test$39:
	; PostCall 244

 string_test$40:
	; GetReturnValue £temporary3593

 string_test$41:
	; Assign i £temporary3593
	mov [rbp + 24], ebx

 string_test$42:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$43:
	; Parameter pointer u 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$44:
	; Parameter pointer "abc" 276
	mov qword [rbp + 276], string_abc#

 string_test$45:
	; Parameter signedint 2 284
	mov dword [rbp + 284], 2

 string_test$46:
	; Call strncat 244 0
	mov qword [rbp + 244], string_test$47
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strncat

 string_test$47:
	; PostCall 244

 string_test$48:
	; BinaryAdd £temporary3595 i 2
	mov eax, [rbp + 24]
	add eax, 2

 string_test$49:
	; IntegralToIntegral £temporary3597 £temporary3595
	mov rbx, 4294967295
	and rax, rbx

 string_test$50:
	; BinaryAdd £temporary3599 u £temporary3597
	mov rsi, rbp
	add rsi, 136
	add rsi, rax

 string_test$51:
	; Dereference £temporary3596 -> £temporary3599 £temporary3599 0

 string_test$52:
	; Assign £temporary3596 -> £temporary3599 0
	mov byte [rsi], 0

 string_test$53:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$54:
	; Parameter pointer "t = "%s", u = "%s"\n" 268
	mov qword [rbp + 268], string_t203D202225s222C20u203D202225s220A#

 string_test$55:
	; Parameter pointer t 276
	mov [rbp + 276], rbp
	add qword [rbp + 276], 36

 string_test$56:
	; Parameter pointer u 284
	mov [rbp + 284], rbp
	add qword [rbp + 284], 136

 string_test$57:
	; Call printf 244 16
	mov qword [rbp + 244], string_test$58
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 16
	jmp printf

 string_test$58:
	; PostCall 244

 string_test$59:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$60:
	; Parameter pointer "strcmp(s, u) = %i\n" 268
	mov qword [rbp + 268], string_strcmp28s2C20u29203D2025i0A#

 string_test$61:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$62:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$63:
	; Parameter pointer u 308
	mov [rbp + 308], rbp
	add qword [rbp + 308], 136

 string_test$64:
	; Call strcmp 276 0
	mov qword [rbp + 276], string_test$65
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcmp

 string_test$65:
	; PostCall 276

 string_test$66:
	; GetReturnValue £temporary3601

 string_test$67:
	; Parameter signedint £temporary3601 276
	mov [rbp + 276], ebx

 string_test$68:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$69
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$69:
	; PostCall 244

 string_test$70:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$71:
	; Parameter pointer "strncmp(s, u, 2) = %i\n" 268
	mov qword [rbp + 268], string_strncmp28s2C20u2C20229203D2025i0A#

 string_test$72:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$73:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$74:
	; Parameter pointer u 308
	mov [rbp + 308], rbp
	add qword [rbp + 308], 136

 string_test$75:
	; Parameter signedint 2 316
	mov dword [rbp + 316], 2

 string_test$76:
	; Call strncmp 276 0
	mov qword [rbp + 276], string_test$77
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strncmp

 string_test$77:
	; PostCall 276

 string_test$78:
	; GetReturnValue £temporary3603

 string_test$79:
	; Parameter signedint £temporary3603 276
	mov [rbp + 276], ebx

 string_test$80:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$81
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$81:
	; PostCall 244

 string_test$82:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$83:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$84:
	; Parameter signedint 108 276
	mov dword [rbp + 276], 108

 string_test$85:
	; Call strchr 244 0
	mov qword [rbp + 244], string_test$86
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strchr

 string_test$86:
	; PostCall 244

 string_test$87:
	; GetReturnValue £temporary3605

 string_test$88:
	; Assign p £temporary3605
	mov [rbp + 236], rbx

 string_test$89:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$90:
	; Parameter pointer "strchr(s, 'l') = %i\n" 268
	mov qword [rbp + 268], string_strchr28s2C2027l2729203D2025i0A#

 string_test$91:
	; Equal 96 p 0
	cmp qword [rbp + 236], 0
	je string_test$96

 string_test$92:
	; BinarySubtract £temporary3608 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$93:
	; IntegralToIntegral £temporary3609 £temporary3608

 string_test$94:
	; Assign £temporary3610 £temporary3609

 string_test$95:
	; Goto 97
	jmp string_test$97

 string_test$96:
	; Assign £temporary3610 -1
	mov eax, -1

 string_test$97:
	; Parameter signedint £temporary3610 276
	mov [rbp + 276], eax

 string_test$98:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$99
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$99:
	; PostCall 244

 string_test$100:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$101:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$102:
	; Parameter signedint 108 276
	mov dword [rbp + 276], 108

 string_test$103:
	; Call strrchr 244 0
	mov qword [rbp + 244], string_test$104
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$104:
	; PostCall 244

 string_test$105:
	; GetReturnValue £temporary3612

 string_test$106:
	; Assign p £temporary3612
	mov [rbp + 236], rbx

 string_test$107:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$108:
	; Parameter pointer "strrchr(s, 'l') = %i\n" 268
	mov qword [rbp + 268], string_strrchr28s2C2027l2729203D2025i0A#

 string_test$109:
	; Equal 114 p 0
	cmp qword [rbp + 236], 0
	je string_test$114

 string_test$110:
	; BinarySubtract £temporary3615 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$111:
	; IntegralToIntegral £temporary3616 £temporary3615

 string_test$112:
	; Assign £temporary3617 £temporary3616

 string_test$113:
	; Goto 115
	jmp string_test$115

 string_test$114:
	; Assign £temporary3617 -1
	mov eax, -1

 string_test$115:
	; Parameter signedint £temporary3617 276
	mov [rbp + 276], eax

 string_test$116:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$117
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$117:
	; PostCall 244

 string_test$118:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$119:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$120:
	; Parameter signedint 120 276
	mov dword [rbp + 276], 120

 string_test$121:
	; Call strchr 244 0
	mov qword [rbp + 244], string_test$122
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strchr

 string_test$122:
	; PostCall 244

 string_test$123:
	; GetReturnValue £temporary3619

 string_test$124:
	; Assign p £temporary3619
	mov [rbp + 236], rbx

 string_test$125:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$126:
	; Parameter pointer "strchr(s, 'x') = %i\n" 268
	mov qword [rbp + 268], string_strchr28s2C2027x2729203D2025i0A#

 string_test$127:
	; Equal 132 p 0
	cmp qword [rbp + 236], 0
	je string_test$132

 string_test$128:
	; BinarySubtract £temporary3622 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$129:
	; IntegralToIntegral £temporary3623 £temporary3622

 string_test$130:
	; Assign £temporary3624 £temporary3623

 string_test$131:
	; Goto 133
	jmp string_test$133

 string_test$132:
	; Assign £temporary3624 -1
	mov eax, -1

 string_test$133:
	; Parameter signedint £temporary3624 276
	mov [rbp + 276], eax

 string_test$134:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$135
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$135:
	; PostCall 244

 string_test$136:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$137:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$138:
	; Parameter signedint 120 276
	mov dword [rbp + 276], 120

 string_test$139:
	; Call strrchr 244 0
	mov qword [rbp + 244], string_test$140
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$140:
	; PostCall 244

 string_test$141:
	; GetReturnValue £temporary3626

 string_test$142:
	; Assign p £temporary3626
	mov [rbp + 236], rbx

 string_test$143:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$144:
	; Parameter pointer "strrchr(s, 'x') = %i\n" 268
	mov qword [rbp + 268], string_strrchr28s2C2027x2729203D2025i0A#

 string_test$145:
	; Equal 150 p 0
	cmp qword [rbp + 236], 0
	je string_test$150

 string_test$146:
	; BinarySubtract £temporary3629 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$147:
	; IntegralToIntegral £temporary3630 £temporary3629

 string_test$148:
	; Assign £temporary3631 £temporary3630

 string_test$149:
	; Goto 151
	jmp string_test$151

 string_test$150:
	; Assign £temporary3631 -1
	mov eax, -1

 string_test$151:
	; Parameter signedint £temporary3631 276
	mov [rbp + 276], eax

 string_test$152:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$153
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$153:
	; PostCall 244

 string_test$154:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$155:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$156:
	; Parameter pointer "Hello, World!" 276
	mov qword [rbp + 276], string_Hello2C20World21#

 string_test$157:
	; Parameter signedint 20 284
	mov dword [rbp + 284], 20

 string_test$158:
	; Call memcpy 244 0
	mov qword [rbp + 244], string_test$159
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memcpy

 string_test$159:
	; PostCall 244

 string_test$160:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$161:
	; Parameter pointer t 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$162:
	; Parameter pointer "Hello, World!" 276
	mov qword [rbp + 276], string_Hello2C20World21#

 string_test$163:
	; Parameter signedint 20 284
	mov dword [rbp + 284], 20

 string_test$164:
	; Call memmove 244 0
	mov qword [rbp + 244], string_test$165
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memmove

 string_test$165:
	; PostCall 244

 string_test$166:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$167:
	; Parameter pointer u 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$168:
	; Parameter signedint 88 276
	mov dword [rbp + 276], 88

 string_test$169:
	; Parameter signedint 20 280
	mov dword [rbp + 280], 20

 string_test$170:
	; Call memset 244 0
	mov qword [rbp + 244], string_test$171
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memset

 string_test$171:
	; PostCall 244

 string_test$172:
	; Dereference £temporary3636 -> u u 0
	mov rsi, rbp
	add rsi, 136

 string_test$173:
	; Assign £temporary3636 -> u 0
	mov byte [rsi + 21], 0

 string_test$174:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$175:
	; Parameter pointer "s = "%s", t = "%s", u = "%s"\n" 268
	mov qword [rbp + 268], string_s203D202225s222C20t203D202225s222C20u203D202225s220A#

 string_test$176:
	; Parameter pointer s 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$177:
	; Parameter pointer t 284
	mov [rbp + 284], rbp
	add qword [rbp + 284], 36

 string_test$178:
	; Parameter pointer u 292
	mov [rbp + 292], rbp
	add qword [rbp + 292], 136

 string_test$179:
	; Call printf 244 24
	mov qword [rbp + 244], string_test$180
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 24
	jmp printf

 string_test$180:
	; PostCall 244

 string_test$181:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$182:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$183:
	; Parameter signedint 108 276
	mov dword [rbp + 276], 108

 string_test$184:
	; Parameter signedint 20 280
	mov dword [rbp + 280], 20

 string_test$185:
	; Call memchr 244 0
	mov qword [rbp + 244], string_test$186
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$186:
	; PostCall 244

 string_test$187:
	; GetReturnValue £temporary3638

 string_test$188:
	; Assign p £temporary3638
	mov [rbp + 236], rbx

 string_test$189:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$190:
	; Parameter pointer "memchr(s, 'l', SIZE * sizeof(char)) = %i\n" 268
	mov qword [rbp + 268], string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$191:
	; Equal 196 p 0
	cmp qword [rbp + 236], 0
	je string_test$196

 string_test$192:
	; BinarySubtract £temporary3641 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$193:
	; IntegralToIntegral £temporary3642 £temporary3641

 string_test$194:
	; Assign £temporary3643 £temporary3642

 string_test$195:
	; Goto 197
	jmp string_test$197

 string_test$196:
	; Assign £temporary3643 -1
	mov eax, -1

 string_test$197:
	; Parameter signedint £temporary3643 276
	mov [rbp + 276], eax

 string_test$198:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$199
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$199:
	; PostCall 244

 string_test$200:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$201:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$202:
	; Parameter signedint 120 276
	mov dword [rbp + 276], 120

 string_test$203:
	; Parameter signedint 20 280
	mov dword [rbp + 280], 20

 string_test$204:
	; Call memchr 244 0
	mov qword [rbp + 244], string_test$205
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$205:
	; PostCall 244

 string_test$206:
	; GetReturnValue £temporary3645

 string_test$207:
	; Assign p £temporary3645
	mov [rbp + 236], rbx

 string_test$208:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$209:
	; Parameter pointer "memchr(s, 'x', SIZE * sizeof(char)) = %i\n" 268
	mov qword [rbp + 268], string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$210:
	; Equal 215 p 0
	cmp qword [rbp + 236], 0
	je string_test$215

 string_test$211:
	; BinarySubtract £temporary3648 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$212:
	; IntegralToIntegral £temporary3649 £temporary3648

 string_test$213:
	; Assign £temporary3650 £temporary3649

 string_test$214:
	; Goto 216
	jmp string_test$216

 string_test$215:
	; Assign £temporary3650 -1
	mov eax, -1

 string_test$216:
	; Parameter signedint £temporary3650 276
	mov [rbp + 276], eax

 string_test$217:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$218
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$218:
	; PostCall 244

 string_test$219:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$220:
	; Parameter pointer "memcmp(s, t, SIZE * sizeof(char)) = %i\n" 268
	mov qword [rbp + 268], string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$221:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$222:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$223:
	; Parameter pointer t 308
	mov [rbp + 308], rbp
	add qword [rbp + 308], 36

 string_test$224:
	; Parameter signedint 20 316
	mov dword [rbp + 316], 20

 string_test$225:
	; Call memcmp 276 0
	mov qword [rbp + 276], string_test$226
	mov [rbp + 284], rbp
	add rbp, 276
	jmp memcmp

 string_test$226:
	; PostCall 276

 string_test$227:
	; GetReturnValue £temporary3652

 string_test$228:
	; Parameter signedint £temporary3652 276
	mov [rbp + 276], ebx

 string_test$229:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$230
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$230:
	; PostCall 244

 string_test$231:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$232:
	; Parameter pointer "strspn(s, "Hello, C") = %i\n" 268
	mov qword [rbp + 268], string_strspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$233:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$234:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$235:
	; Parameter pointer "Hello, C" 308
	mov qword [rbp + 308], string_Hello2C20C#

 string_test$236:
	; Call strspn 276 0
	mov qword [rbp + 276], string_test$237
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strspn

 string_test$237:
	; PostCall 276

 string_test$238:
	; GetReturnValue £temporary3654

 string_test$239:
	; Parameter signedint £temporary3654 276
	mov [rbp + 276], ebx

 string_test$240:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$241
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$241:
	; PostCall 244

 string_test$242:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$243:
	; Parameter pointer "strcspn(s, "Hello, C") = %i\n" 268
	mov qword [rbp + 268], string_strcspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$244:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$245:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$246:
	; Parameter pointer "Hello, C" 308
	mov qword [rbp + 308], string_Hello2C20C#

 string_test$247:
	; Call strcspn 276 0
	mov qword [rbp + 276], string_test$248
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcspn

 string_test$248:
	; PostCall 276

 string_test$249:
	; GetReturnValue £temporary3656

 string_test$250:
	; Parameter signedint £temporary3656 276
	mov [rbp + 276], ebx

 string_test$251:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$252
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$252:
	; PostCall 244

 string_test$253:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$254:
	; Parameter pointer "strerror(errno) = "%s"\n" 268
	mov qword [rbp + 268], string_strerror28errno29203D202225s220A#

 string_test$255:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$256:
	; Parameter signedint errno 300
	mov eax, [errno]
	mov [rbp + 300], eax

 string_test$257:
	; Call strerror 276 0
	mov qword [rbp + 276], string_test$258
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strerror

 string_test$258:
	; PostCall 276

 string_test$259:
	; GetReturnValue £temporary3658

 string_test$260:
	; Parameter pointer £temporary3658 276
	mov [rbp + 276], rbx

 string_test$261:
	; Call printf 244 8
	mov qword [rbp + 244], string_test$262
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$262:
	; PostCall 244

 string_test$263:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$264:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$265:
	; Parameter pointer "," 276
	mov qword [rbp + 276], string_2C#

 string_test$266:
	; Call strtok 244 0
	mov qword [rbp + 244], string_test$267
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$267:
	; PostCall 244

 string_test$268:
	; GetReturnValue £temporary3660

 string_test$269:
	; Assign p £temporary3660
	mov [rbp + 236], rbx

 string_test$270:
	; Equal 284 p 0
	cmp qword [rbp + 236], 0
	je string_test$284

 string_test$271:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$272:
	; Parameter pointer "strtok(s, ",") = "%s"\n" 268
	mov qword [rbp + 268], string_strtok28s2C20222C2229203D202225s220A#

 string_test$273:
	; Parameter pointer p 276
	mov rax, [rbp + 236]
	mov [rbp + 276], rax

 string_test$274:
	; Call printf 244 8
	mov qword [rbp + 244], string_test$275
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$275:
	; PostCall 244

 string_test$276:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$277:
	; Parameter pointer 0 268
	mov qword [rbp + 268], 0

 string_test$278:
	; Parameter pointer "," 276
	mov qword [rbp + 276], string_2C#

 string_test$279:
	; Call strtok 244 0
	mov qword [rbp + 244], string_test$280
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$280:
	; PostCall 244

 string_test$281:
	; GetReturnValue £temporary3663

 string_test$282:
	; Assign p £temporary3663
	mov [rbp + 236], rbx

 string_test$283:
	; Goto 270
	jmp string_test$270

 string_test$284:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 string_test$285:
	; FunctionEnd string_test
