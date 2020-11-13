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
	; GetReturnValue £temporary3564

 string_test$9:
	; Parameter signedint £temporary3564 284
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
	; Dereference £temporary3568 -> u u 0
	mov rsi, rbp
	add rsi, 136

 string_test$24:
	; Assign £temporary3568 -> u 0
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
	; GetReturnValue £temporary3571

 string_test$41:
	; Assign i £temporary3571
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
	; BinaryAdd £temporary3573 i 2
	mov eax, [rbp + 24]
	add eax, 2

 string_test$49:
	; IntegralToIntegral £temporary3575 £temporary3573
	mov rbx, 4294967295
	and rax, rbx

 string_test$50:
	; BinaryAdd £temporary3577 u £temporary3575
	mov rsi, rbp
	add rsi, 136
	add rsi, rax

 string_test$51:
	; Dereference £temporary3574 -> £temporary3577 £temporary3577 0

 string_test$52:
	; Assign £temporary3574 -> £temporary3577 0
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
	; GetReturnValue £temporary3579

 string_test$67:
	; Parameter signedint £temporary3579 276
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
	; GetReturnValue £temporary3581

 string_test$79:
	; Parameter signedint £temporary3581 276
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
	; GetReturnValue £temporary3583

 string_test$88:
	; Assign p £temporary3583
	mov [rbp + 236], rbx

 string_test$89:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$90:
	; Parameter pointer "strchr(s, 'l') = %i\n" 268
	mov qword [rbp + 268], string_strchr28s2C2027l2729203D2025i0A#

 string_test$91:
	; Equal 95 p 0
	cmp qword [rbp + 236], 0
	je string_test$95

 string_test$92:
	; BinarySubtract £temporary3586 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$93:
	; IntegralToIntegral £temporary3588 £temporary3586

 string_test$94:
	; Goto 96
	jmp string_test$96

 string_test$95:
	; Assign £temporary3588 -1
	mov eax, -1

 string_test$96:
	; Parameter signedint £temporary3588 276
	mov [rbp + 276], eax

 string_test$97:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$98
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$98:
	; PostCall 244

 string_test$99:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$100:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$101:
	; Parameter signedint 108 276
	mov dword [rbp + 276], 108

 string_test$102:
	; Call strrchr 244 0
	mov qword [rbp + 244], string_test$103
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$103:
	; PostCall 244

 string_test$104:
	; GetReturnValue £temporary3590

 string_test$105:
	; Assign p £temporary3590
	mov [rbp + 236], rbx

 string_test$106:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$107:
	; Parameter pointer "strrchr(s, 'l') = %i\n" 268
	mov qword [rbp + 268], string_strrchr28s2C2027l2729203D2025i0A#

 string_test$108:
	; Equal 112 p 0
	cmp qword [rbp + 236], 0
	je string_test$112

 string_test$109:
	; BinarySubtract £temporary3593 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$110:
	; IntegralToIntegral £temporary3595 £temporary3593

 string_test$111:
	; Goto 113
	jmp string_test$113

 string_test$112:
	; Assign £temporary3595 -1
	mov eax, -1

 string_test$113:
	; Parameter signedint £temporary3595 276
	mov [rbp + 276], eax

 string_test$114:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$115
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$115:
	; PostCall 244

 string_test$116:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$117:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$118:
	; Parameter signedint 120 276
	mov dword [rbp + 276], 120

 string_test$119:
	; Call strchr 244 0
	mov qword [rbp + 244], string_test$120
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strchr

 string_test$120:
	; PostCall 244

 string_test$121:
	; GetReturnValue £temporary3597

 string_test$122:
	; Assign p £temporary3597
	mov [rbp + 236], rbx

 string_test$123:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$124:
	; Parameter pointer "strchr(s, 'x') = %i\n" 268
	mov qword [rbp + 268], string_strchr28s2C2027x2729203D2025i0A#

 string_test$125:
	; Equal 129 p 0
	cmp qword [rbp + 236], 0
	je string_test$129

 string_test$126:
	; BinarySubtract £temporary3600 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$127:
	; IntegralToIntegral £temporary3602 £temporary3600

 string_test$128:
	; Goto 130
	jmp string_test$130

 string_test$129:
	; Assign £temporary3602 -1
	mov eax, -1

 string_test$130:
	; Parameter signedint £temporary3602 276
	mov [rbp + 276], eax

 string_test$131:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$132
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$132:
	; PostCall 244

 string_test$133:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$134:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$135:
	; Parameter signedint 120 276
	mov dword [rbp + 276], 120

 string_test$136:
	; Call strrchr 244 0
	mov qword [rbp + 244], string_test$137
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$137:
	; PostCall 244

 string_test$138:
	; GetReturnValue £temporary3604

 string_test$139:
	; Assign p £temporary3604
	mov [rbp + 236], rbx

 string_test$140:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$141:
	; Parameter pointer "strrchr(s, 'x') = %i\n" 268
	mov qword [rbp + 268], string_strrchr28s2C2027x2729203D2025i0A#

 string_test$142:
	; Equal 146 p 0
	cmp qword [rbp + 236], 0
	je string_test$146

 string_test$143:
	; BinarySubtract £temporary3607 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$144:
	; IntegralToIntegral £temporary3609 £temporary3607

 string_test$145:
	; Goto 147
	jmp string_test$147

 string_test$146:
	; Assign £temporary3609 -1
	mov eax, -1

 string_test$147:
	; Parameter signedint £temporary3609 276
	mov [rbp + 276], eax

 string_test$148:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$149
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$149:
	; PostCall 244

 string_test$150:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$151:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$152:
	; Parameter pointer "Hello, World!" 276
	mov qword [rbp + 276], string_Hello2C20World21#

 string_test$153:
	; Parameter signedint 20 284
	mov dword [rbp + 284], 20

 string_test$154:
	; Call memcpy 244 0
	mov qword [rbp + 244], string_test$155
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memcpy

 string_test$155:
	; PostCall 244

 string_test$156:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$157:
	; Parameter pointer t 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$158:
	; Parameter pointer "Hello, World!" 276
	mov qword [rbp + 276], string_Hello2C20World21#

 string_test$159:
	; Parameter signedint 20 284
	mov dword [rbp + 284], 20

 string_test$160:
	; Call memmove 244 0
	mov qword [rbp + 244], string_test$161
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memmove

 string_test$161:
	; PostCall 244

 string_test$162:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$163:
	; Parameter pointer u 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$164:
	; Parameter signedint 88 276
	mov dword [rbp + 276], 88

 string_test$165:
	; Parameter signedint 20 280
	mov dword [rbp + 280], 20

 string_test$166:
	; Call memset 244 0
	mov qword [rbp + 244], string_test$167
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memset

 string_test$167:
	; PostCall 244

 string_test$168:
	; Dereference £temporary3614 -> u u 0
	mov rsi, rbp
	add rsi, 136

 string_test$169:
	; Assign £temporary3614 -> u 0
	mov byte [rsi + 19], 0

 string_test$170:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$171:
	; Parameter pointer "s = "%s", t = "%s", u = "%s"\n" 268
	mov qword [rbp + 268], string_s203D202225s222C20t203D202225s222C20u203D202225s220A#

 string_test$172:
	; Parameter pointer s 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$173:
	; Parameter pointer t 284
	mov [rbp + 284], rbp
	add qword [rbp + 284], 36

 string_test$174:
	; Parameter pointer u 292
	mov [rbp + 292], rbp
	add qword [rbp + 292], 136

 string_test$175:
	; Call printf 244 24
	mov qword [rbp + 244], string_test$176
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 24
	jmp printf

 string_test$176:
	; PostCall 244

 string_test$177:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$178:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$179:
	; Parameter signedint 108 276
	mov dword [rbp + 276], 108

 string_test$180:
	; Parameter signedint 20 280
	mov dword [rbp + 280], 20

 string_test$181:
	; Call memchr 244 0
	mov qword [rbp + 244], string_test$182
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$182:
	; PostCall 244

 string_test$183:
	; GetReturnValue £temporary3616

 string_test$184:
	; Assign p £temporary3616
	mov [rbp + 236], rbx

 string_test$185:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$186:
	; Parameter pointer "memchr(s, 'l', SIZE * sizeof(char)) = %i\n" 268
	mov qword [rbp + 268], string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$187:
	; Equal 191 p 0
	cmp qword [rbp + 236], 0
	je string_test$191

 string_test$188:
	; BinarySubtract £temporary3619 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$189:
	; IntegralToIntegral £temporary3621 £temporary3619

 string_test$190:
	; Goto 192
	jmp string_test$192

 string_test$191:
	; Assign £temporary3621 -1
	mov eax, -1

 string_test$192:
	; Parameter signedint £temporary3621 276
	mov [rbp + 276], eax

 string_test$193:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$194
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$194:
	; PostCall 244

 string_test$195:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$196:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$197:
	; Parameter signedint 120 276
	mov dword [rbp + 276], 120

 string_test$198:
	; Parameter signedint 20 280
	mov dword [rbp + 280], 20

 string_test$199:
	; Call memchr 244 0
	mov qword [rbp + 244], string_test$200
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$200:
	; PostCall 244

 string_test$201:
	; GetReturnValue £temporary3623

 string_test$202:
	; Assign p £temporary3623
	mov [rbp + 236], rbx

 string_test$203:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$204:
	; Parameter pointer "memchr(s, 'x', SIZE * sizeof(char)) = %i\n" 268
	mov qword [rbp + 268], string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$205:
	; Equal 209 p 0
	cmp qword [rbp + 236], 0
	je string_test$209

 string_test$206:
	; BinarySubtract £temporary3626 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$207:
	; IntegralToIntegral £temporary3628 £temporary3626

 string_test$208:
	; Goto 210
	jmp string_test$210

 string_test$209:
	; Assign £temporary3628 -1
	mov eax, -1

 string_test$210:
	; Parameter signedint £temporary3628 276
	mov [rbp + 276], eax

 string_test$211:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$212
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$212:
	; PostCall 244

 string_test$213:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$214:
	; Parameter pointer "memcmp(s, t, SIZE * sizeof(char)) = %i\n" 268
	mov qword [rbp + 268], string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$215:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$216:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$217:
	; Parameter pointer t 308
	mov [rbp + 308], rbp
	add qword [rbp + 308], 36

 string_test$218:
	; Parameter signedint 20 316
	mov dword [rbp + 316], 20

 string_test$219:
	; Call memcmp 276 0
	mov qword [rbp + 276], string_test$220
	mov [rbp + 284], rbp
	add rbp, 276
	jmp memcmp

 string_test$220:
	; PostCall 276

 string_test$221:
	; GetReturnValue £temporary3630

 string_test$222:
	; Parameter signedint £temporary3630 276
	mov [rbp + 276], ebx

 string_test$223:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$224
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$224:
	; PostCall 244

 string_test$225:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$226:
	; Parameter pointer "strspn(s, "Hello, C") = %i\n" 268
	mov qword [rbp + 268], string_strspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$227:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$228:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$229:
	; Parameter pointer "Hello, C" 308
	mov qword [rbp + 308], string_Hello2C20C#

 string_test$230:
	; Call strspn 276 0
	mov qword [rbp + 276], string_test$231
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strspn

 string_test$231:
	; PostCall 276

 string_test$232:
	; GetReturnValue £temporary3632

 string_test$233:
	; Parameter signedint £temporary3632 276
	mov [rbp + 276], ebx

 string_test$234:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$235
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$235:
	; PostCall 244

 string_test$236:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$237:
	; Parameter pointer "strcspn(s, "Hello, C") = %i\n" 268
	mov qword [rbp + 268], string_strcspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$238:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$239:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$240:
	; Parameter pointer "Hello, C" 308
	mov qword [rbp + 308], string_Hello2C20C#

 string_test$241:
	; Call strcspn 276 0
	mov qword [rbp + 276], string_test$242
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcspn

 string_test$242:
	; PostCall 276

 string_test$243:
	; GetReturnValue £temporary3634

 string_test$244:
	; Parameter signedint £temporary3634 276
	mov [rbp + 276], ebx

 string_test$245:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$246
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$246:
	; PostCall 244

 string_test$247:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$248:
	; Parameter pointer "strerror(errno) = "%s"\n" 268
	mov qword [rbp + 268], string_strerror28errno29203D202225s220A#

 string_test$249:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$250:
	; Parameter signedint errno 300
	mov eax, [errno]
	mov [rbp + 300], eax

 string_test$251:
	; Call strerror 276 0
	mov qword [rbp + 276], string_test$252
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strerror

 string_test$252:
	; PostCall 276

 string_test$253:
	; GetReturnValue £temporary3636

 string_test$254:
	; Parameter pointer £temporary3636 276
	mov [rbp + 276], rbx

 string_test$255:
	; Call printf 244 8
	mov qword [rbp + 244], string_test$256
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$256:
	; PostCall 244

 string_test$257:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$258:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$259:
	; Parameter pointer "," 276
	mov qword [rbp + 276], string_2C#

 string_test$260:
	; Call strtok 244 0
	mov qword [rbp + 244], string_test$261
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$261:
	; PostCall 244

 string_test$262:
	; GetReturnValue £temporary3638

 string_test$263:
	; Assign p £temporary3638
	mov [rbp + 236], rbx

 string_test$264:
	; Equal 278 p 0
	cmp qword [rbp + 236], 0
	je string_test$278

 string_test$265:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$266:
	; Parameter pointer "strtok(s, ",") = "%s"\n" 268
	mov qword [rbp + 268], string_strtok28s2C20222C2229203D202225s220A#

 string_test$267:
	; Parameter pointer p 276
	mov rax, [rbp + 236]
	mov [rbp + 276], rax

 string_test$268:
	; Call printf 244 8
	mov qword [rbp + 244], string_test$269
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$269:
	; PostCall 244

 string_test$270:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$271:
	; Parameter pointer 0 268
	mov qword [rbp + 268], 0

 string_test$272:
	; Parameter pointer "," 276
	mov qword [rbp + 276], string_2C#

 string_test$273:
	; Call strtok 244 0
	mov qword [rbp + 244], string_test$274
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$274:
	; PostCall 244

 string_test$275:
	; GetReturnValue £temporary3641

 string_test$276:
	; Assign p £temporary3641
	mov [rbp + 236], rbx

 string_test$277:
	; Goto 264
	jmp string_test$264

 string_test$278:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 string_test$279:
	; FunctionEnd string_test
