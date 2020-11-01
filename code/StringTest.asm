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
	; Empty

 string_test$1:
	; Assign s "Hello, World!"
	mov qword [rbp + 28], string_Hello2C20World21#

 string_test$2:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$3:
	; Parameter pointer "strlen("%s") = %i\n" 268
	mov qword [rbp + 268], string_strlen282225s2229203D2025i0A#

 string_test$4:
	; Parameter pointer s 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$5:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$6:
	; Parameter pointer s 308
	mov rax, [rbp + 28]
	mov [rbp + 308], rax

 string_test$7:
	; Call strlen 284 0
	mov qword [rbp + 284], string_test$8
	mov [rbp + 292], rbp
	add rbp, 284
	jmp strlen

 string_test$8:
	; PostCall 284

 string_test$9:
	; GetReturnValue £temporary3000

 string_test$10:
	; Parameter signedint £temporary3000 284
	mov [rbp + 284], ebx

 string_test$11:
	; Call printf 244 12
	mov qword [rbp + 244], string_test$12
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 12
	jmp printf

 string_test$12:
	; PostCall 244

 string_test$13:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$14:
	; Parameter pointer t 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$15:
	; Parameter pointer s 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$16:
	; Call strcpy 244 0
	mov qword [rbp + 244], string_test$17
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strcpy

 string_test$17:
	; PostCall 244

 string_test$18:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$19:
	; Parameter pointer u 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$20:
	; Parameter pointer s 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$21:
	; Parameter signedint 5 284
	mov dword [rbp + 284], 5

 string_test$22:
	; Call strncpy 244 0
	mov qword [rbp + 244], string_test$23
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strncpy

 string_test$23:
	; PostCall 244

 string_test$24:
	; Dereference £temporary3004 -> u u 0
	mov rsi, rbp
	add rsi, 136

 string_test$25:
	; Assign £temporary3004 -> u 0
	mov byte [rsi + 5], 0

 string_test$26:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$27:
	; Parameter pointer "t = "%s", u = "%s"\n" 268
	mov qword [rbp + 268], string_t203D202225s222C20u203D202225s220A#

 string_test$28:
	; Parameter pointer t 276
	mov [rbp + 276], rbp
	add qword [rbp + 276], 36

 string_test$29:
	; Parameter pointer u 284
	mov [rbp + 284], rbp
	add qword [rbp + 284], 136

 string_test$30:
	; Call printf 244 16
	mov qword [rbp + 244], string_test$31
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 16
	jmp printf

 string_test$31:
	; PostCall 244

 string_test$32:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$33:
	; Parameter pointer t 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$34:
	; Parameter pointer "abc" 276
	mov qword [rbp + 276], string_abc#

 string_test$35:
	; Call strcat 244 0
	mov qword [rbp + 244], string_test$36
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strcat

 string_test$36:
	; PostCall 244

 string_test$37:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$38:
	; Parameter pointer u 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$39:
	; Call strlen 244 0
	mov qword [rbp + 244], string_test$40
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strlen

 string_test$40:
	; PostCall 244

 string_test$41:
	; GetReturnValue £temporary3007

 string_test$42:
	; Assign i £temporary3007
	mov [rbp + 24], ebx

 string_test$43:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$44:
	; Parameter pointer u 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$45:
	; Parameter pointer "abc" 276
	mov qword [rbp + 276], string_abc#

 string_test$46:
	; Parameter signedint 2 284
	mov dword [rbp + 284], 2

 string_test$47:
	; Call strncat 244 0
	mov qword [rbp + 244], string_test$48
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strncat

 string_test$48:
	; PostCall 244

 string_test$49:
	; BinaryAdd £temporary3009 i 2
	mov eax, [rbp + 24]
	add eax, 2

 string_test$50:
	; IntegralToIntegral £temporary3011 £temporary3009
	mov rbx, 4294967295
	and rax, rbx

 string_test$51:
	; BinaryAdd £temporary3013 u £temporary3011
	mov rsi, rbp
	add rsi, 136
	add rsi, rax

 string_test$52:
	; Dereference £temporary3010 -> £temporary3013 £temporary3013 0

 string_test$53:
	; Assign £temporary3010 -> £temporary3013 0
	mov byte [rsi], 0

 string_test$54:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$55:
	; Parameter pointer "t = "%s", u = "%s"\n" 268
	mov qword [rbp + 268], string_t203D202225s222C20u203D202225s220A#

 string_test$56:
	; Parameter pointer t 276
	mov [rbp + 276], rbp
	add qword [rbp + 276], 36

 string_test$57:
	; Parameter pointer u 284
	mov [rbp + 284], rbp
	add qword [rbp + 284], 136

 string_test$58:
	; Call printf 244 16
	mov qword [rbp + 244], string_test$59
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 16
	jmp printf

 string_test$59:
	; PostCall 244

 string_test$60:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$61:
	; Parameter pointer "strcmp(s, u) = %i\n" 268
	mov qword [rbp + 268], string_strcmp28s2C20u29203D2025i0A#

 string_test$62:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$63:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$64:
	; Parameter pointer u 308
	mov [rbp + 308], rbp
	add qword [rbp + 308], 136

 string_test$65:
	; Call strcmp 276 0
	mov qword [rbp + 276], string_test$66
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcmp

 string_test$66:
	; PostCall 276

 string_test$67:
	; GetReturnValue £temporary3015

 string_test$68:
	; Parameter signedint £temporary3015 276
	mov [rbp + 276], ebx

 string_test$69:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$70
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$70:
	; PostCall 244

 string_test$71:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$72:
	; Parameter pointer "strncmp(s, u, 2) = %i\n" 268
	mov qword [rbp + 268], string_strncmp28s2C20u2C20229203D2025i0A#

 string_test$73:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$74:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$75:
	; Parameter pointer u 308
	mov [rbp + 308], rbp
	add qword [rbp + 308], 136

 string_test$76:
	; Parameter signedint 2 316
	mov dword [rbp + 316], 2

 string_test$77:
	; Call strncmp 276 0
	mov qword [rbp + 276], string_test$78
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strncmp

 string_test$78:
	; PostCall 276

 string_test$79:
	; GetReturnValue £temporary3017

 string_test$80:
	; Parameter signedint £temporary3017 276
	mov [rbp + 276], ebx

 string_test$81:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$82
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$82:
	; PostCall 244

 string_test$83:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$84:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$85:
	; Parameter signedint 108 276
	mov dword [rbp + 276], 108

 string_test$86:
	; Call strchr 244 0
	mov qword [rbp + 244], string_test$87
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strchr

 string_test$87:
	; PostCall 244

 string_test$88:
	; GetReturnValue £temporary3019

 string_test$89:
	; Assign p £temporary3019
	mov [rbp + 236], rbx

 string_test$90:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$91:
	; Parameter pointer "strchr(s, 'l') = %i\n" 268
	mov qword [rbp + 268], string_strchr28s2C2027l2729203D2025i0A#

 string_test$92:
	; Equal 97 p 0
	cmp qword [rbp + 236], 0
	je string_test$97

 string_test$93:
	; BinarySubtract £temporary3022 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$94:
	; IntegralToIntegral £temporary3023 £temporary3022

 string_test$95:
	; Assign £temporary3024 £temporary3023

 string_test$96:
	; Goto 98
	jmp string_test$98

 string_test$97:
	; Assign £temporary3024 -1
	mov eax, -1

 string_test$98:
	; Parameter signedint £temporary3024 276
	mov [rbp + 276], eax

 string_test$99:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$100
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$100:
	; PostCall 244

 string_test$101:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$102:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$103:
	; Parameter signedint 108 276
	mov dword [rbp + 276], 108

 string_test$104:
	; Call strrchr 244 0
	mov qword [rbp + 244], string_test$105
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$105:
	; PostCall 244

 string_test$106:
	; GetReturnValue £temporary3026

 string_test$107:
	; Assign p £temporary3026
	mov [rbp + 236], rbx

 string_test$108:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$109:
	; Parameter pointer "strrchr(s, 'l') = %i\n" 268
	mov qword [rbp + 268], string_strrchr28s2C2027l2729203D2025i0A#

 string_test$110:
	; Equal 115 p 0
	cmp qword [rbp + 236], 0
	je string_test$115

 string_test$111:
	; BinarySubtract £temporary3029 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$112:
	; IntegralToIntegral £temporary3030 £temporary3029

 string_test$113:
	; Assign £temporary3031 £temporary3030

 string_test$114:
	; Goto 116
	jmp string_test$116

 string_test$115:
	; Assign £temporary3031 -1
	mov eax, -1

 string_test$116:
	; Parameter signedint £temporary3031 276
	mov [rbp + 276], eax

 string_test$117:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$118
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$118:
	; PostCall 244

 string_test$119:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$120:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$121:
	; Parameter signedint 120 276
	mov dword [rbp + 276], 120

 string_test$122:
	; Call strchr 244 0
	mov qword [rbp + 244], string_test$123
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strchr

 string_test$123:
	; PostCall 244

 string_test$124:
	; GetReturnValue £temporary3033

 string_test$125:
	; Assign p £temporary3033
	mov [rbp + 236], rbx

 string_test$126:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$127:
	; Parameter pointer "strchr(s, 'x') = %i\n" 268
	mov qword [rbp + 268], string_strchr28s2C2027x2729203D2025i0A#

 string_test$128:
	; Equal 133 p 0
	cmp qword [rbp + 236], 0
	je string_test$133

 string_test$129:
	; BinarySubtract £temporary3036 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$130:
	; IntegralToIntegral £temporary3037 £temporary3036

 string_test$131:
	; Assign £temporary3038 £temporary3037

 string_test$132:
	; Goto 134
	jmp string_test$134

 string_test$133:
	; Assign £temporary3038 -1
	mov eax, -1

 string_test$134:
	; Parameter signedint £temporary3038 276
	mov [rbp + 276], eax

 string_test$135:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$136
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$136:
	; PostCall 244

 string_test$137:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$138:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$139:
	; Parameter signedint 120 276
	mov dword [rbp + 276], 120

 string_test$140:
	; Call strrchr 244 0
	mov qword [rbp + 244], string_test$141
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$141:
	; PostCall 244

 string_test$142:
	; GetReturnValue £temporary3040

 string_test$143:
	; Assign p £temporary3040
	mov [rbp + 236], rbx

 string_test$144:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$145:
	; Parameter pointer "strrchr(s, 'x') = %i\n" 268
	mov qword [rbp + 268], string_strrchr28s2C2027x2729203D2025i0A#

 string_test$146:
	; Equal 151 p 0
	cmp qword [rbp + 236], 0
	je string_test$151

 string_test$147:
	; BinarySubtract £temporary3043 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$148:
	; IntegralToIntegral £temporary3044 £temporary3043

 string_test$149:
	; Assign £temporary3045 £temporary3044

 string_test$150:
	; Goto 152
	jmp string_test$152

 string_test$151:
	; Assign £temporary3045 -1
	mov eax, -1

 string_test$152:
	; Parameter signedint £temporary3045 276
	mov [rbp + 276], eax

 string_test$153:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$154
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$154:
	; PostCall 244

 string_test$155:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$156:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$157:
	; Parameter pointer "Hello, World!" 276
	mov qword [rbp + 276], string_Hello2C20World21#

 string_test$158:
	; Parameter signedint 20 284
	mov dword [rbp + 284], 20

 string_test$159:
	; Call memcpy 244 0
	mov qword [rbp + 244], string_test$160
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memcpy

 string_test$160:
	; PostCall 244

 string_test$161:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$162:
	; Parameter pointer t 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$163:
	; Parameter pointer "Hello, World!" 276
	mov qword [rbp + 276], string_Hello2C20World21#

 string_test$164:
	; Parameter signedint 20 284
	mov dword [rbp + 284], 20

 string_test$165:
	; Call memmove 244 0
	mov qword [rbp + 244], string_test$166
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memmove

 string_test$166:
	; PostCall 244

 string_test$167:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$168:
	; Parameter pointer u 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$169:
	; Parameter signedint 88 276
	mov dword [rbp + 276], 88

 string_test$170:
	; Parameter signedint 20 280
	mov dword [rbp + 280], 20

 string_test$171:
	; Call memset 244 0
	mov qword [rbp + 244], string_test$172
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memset

 string_test$172:
	; PostCall 244

 string_test$173:
	; Dereference £temporary3050 -> u u 0
	mov rsi, rbp
	add rsi, 136

 string_test$174:
	; Assign £temporary3050 -> u 0
	mov byte [rsi + 21], 0

 string_test$175:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$176:
	; Parameter pointer "s = "%s", t = "%s", u = "%s"\n" 268
	mov qword [rbp + 268], string_s203D202225s222C20t203D202225s222C20u203D202225s220A#

 string_test$177:
	; Parameter pointer s 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$178:
	; Parameter pointer t 284
	mov [rbp + 284], rbp
	add qword [rbp + 284], 36

 string_test$179:
	; Parameter pointer u 292
	mov [rbp + 292], rbp
	add qword [rbp + 292], 136

 string_test$180:
	; Call printf 244 24
	mov qword [rbp + 244], string_test$181
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 24
	jmp printf

 string_test$181:
	; PostCall 244

 string_test$182:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$183:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$184:
	; Parameter signedint 108 276
	mov dword [rbp + 276], 108

 string_test$185:
	; Parameter signedint 20 280
	mov dword [rbp + 280], 20

 string_test$186:
	; Call memchr 244 0
	mov qword [rbp + 244], string_test$187
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$187:
	; PostCall 244

 string_test$188:
	; GetReturnValue £temporary3052

 string_test$189:
	; Assign p £temporary3052
	mov [rbp + 236], rbx

 string_test$190:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$191:
	; Parameter pointer "memchr(s, 'l', SIZE * sizeof(char)) = %i\n" 268
	mov qword [rbp + 268], string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$192:
	; Equal 197 p 0
	cmp qword [rbp + 236], 0
	je string_test$197

 string_test$193:
	; BinarySubtract £temporary3055 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$194:
	; IntegralToIntegral £temporary3056 £temporary3055

 string_test$195:
	; Assign £temporary3057 £temporary3056

 string_test$196:
	; Goto 198
	jmp string_test$198

 string_test$197:
	; Assign £temporary3057 -1
	mov eax, -1

 string_test$198:
	; Parameter signedint £temporary3057 276
	mov [rbp + 276], eax

 string_test$199:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$200
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$200:
	; PostCall 244

 string_test$201:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$202:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$203:
	; Parameter signedint 120 276
	mov dword [rbp + 276], 120

 string_test$204:
	; Parameter signedint 20 280
	mov dword [rbp + 280], 20

 string_test$205:
	; Call memchr 244 0
	mov qword [rbp + 244], string_test$206
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$206:
	; PostCall 244

 string_test$207:
	; GetReturnValue £temporary3059

 string_test$208:
	; Assign p £temporary3059
	mov [rbp + 236], rbx

 string_test$209:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$210:
	; Parameter pointer "memchr(s, 'x', SIZE * sizeof(char)) = %i\n" 268
	mov qword [rbp + 268], string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$211:
	; Equal 216 p 0
	cmp qword [rbp + 236], 0
	je string_test$216

 string_test$212:
	; BinarySubtract £temporary3062 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$213:
	; IntegralToIntegral £temporary3063 £temporary3062

 string_test$214:
	; Assign £temporary3064 £temporary3063

 string_test$215:
	; Goto 217
	jmp string_test$217

 string_test$216:
	; Assign £temporary3064 -1
	mov eax, -1

 string_test$217:
	; Parameter signedint £temporary3064 276
	mov [rbp + 276], eax

 string_test$218:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$219
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$219:
	; PostCall 244

 string_test$220:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$221:
	; Parameter pointer "memcmp(s, t, SIZE * sizeof(char)) = %i\n" 268
	mov qword [rbp + 268], string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$222:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$223:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$224:
	; Parameter pointer t 308
	mov [rbp + 308], rbp
	add qword [rbp + 308], 36

 string_test$225:
	; Parameter signedint 20 316
	mov dword [rbp + 316], 20

 string_test$226:
	; Call memcmp 276 0
	mov qword [rbp + 276], string_test$227
	mov [rbp + 284], rbp
	add rbp, 276
	jmp memcmp

 string_test$227:
	; PostCall 276

 string_test$228:
	; GetReturnValue £temporary3066

 string_test$229:
	; Parameter signedint £temporary3066 276
	mov [rbp + 276], ebx

 string_test$230:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$231
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$231:
	; PostCall 244

 string_test$232:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$233:
	; Parameter pointer "strspn(s, "Hello, C") = %i\n" 268
	mov qword [rbp + 268], string_strspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$234:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$235:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$236:
	; Parameter pointer "Hello, C" 308
	mov qword [rbp + 308], string_Hello2C20C#

 string_test$237:
	; Call strspn 276 0
	mov qword [rbp + 276], string_test$238
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strspn

 string_test$238:
	; PostCall 276

 string_test$239:
	; GetReturnValue £temporary3068

 string_test$240:
	; Parameter signedint £temporary3068 276
	mov [rbp + 276], ebx

 string_test$241:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$242
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$242:
	; PostCall 244

 string_test$243:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$244:
	; Parameter pointer "strcspn(s, "Hello, C") = %i\n" 268
	mov qword [rbp + 268], string_strcspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$245:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$246:
	; Parameter pointer s 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$247:
	; Parameter pointer "Hello, C" 308
	mov qword [rbp + 308], string_Hello2C20C#

 string_test$248:
	; Call strcspn 276 0
	mov qword [rbp + 276], string_test$249
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcspn

 string_test$249:
	; PostCall 276

 string_test$250:
	; GetReturnValue £temporary3070

 string_test$251:
	; Parameter signedint £temporary3070 276
	mov [rbp + 276], ebx

 string_test$252:
	; Call printf 244 4
	mov qword [rbp + 244], string_test$253
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$253:
	; PostCall 244

 string_test$254:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$255:
	; Parameter pointer "strerror(errno) = "%s"\n" 268
	mov qword [rbp + 268], string_strerror28errno29203D202225s220A#

 string_test$256:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$257:
	; Parameter signedint errno 300
	mov eax, [errno]
	mov [rbp + 300], eax

 string_test$258:
	; Call strerror 276 0
	mov qword [rbp + 276], string_test$259
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strerror

 string_test$259:
	; PostCall 276

 string_test$260:
	; GetReturnValue £temporary3072

 string_test$261:
	; Parameter pointer £temporary3072 276
	mov [rbp + 276], rbx

 string_test$262:
	; Call printf 244 8
	mov qword [rbp + 244], string_test$263
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$263:
	; PostCall 244

 string_test$264:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$265:
	; Parameter pointer s 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$266:
	; Parameter pointer "," 276
	mov qword [rbp + 276], string_2C#

 string_test$267:
	; Call strtok 244 0
	mov qword [rbp + 244], string_test$268
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$268:
	; PostCall 244

 string_test$269:
	; GetReturnValue £temporary3074

 string_test$270:
	; Assign p £temporary3074
	mov [rbp + 236], rbx

 string_test$271:
	; Equal 285 p 0
	cmp qword [rbp + 236], 0
	je string_test$285

 string_test$272:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$273:
	; Parameter pointer "strtok(s, ",") = "%s"\n" 268
	mov qword [rbp + 268], string_strtok28s2C20222C2229203D202225s220A#

 string_test$274:
	; Parameter pointer p 276
	mov rax, [rbp + 236]
	mov [rbp + 276], rax

 string_test$275:
	; Call printf 244 8
	mov qword [rbp + 244], string_test$276
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$276:
	; PostCall 244

 string_test$277:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$278:
	; Parameter pointer 0 268
	mov qword [rbp + 268], 0

 string_test$279:
	; Parameter pointer "," 276
	mov qword [rbp + 276], string_2C#

 string_test$280:
	; Call strtok 244 0
	mov qword [rbp + 244], string_test$281
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$281:
	; PostCall 244

 string_test$282:
	; GetReturnValue £temporary3077

 string_test$283:
	; Assign p £temporary3077
	mov [rbp + 236], rbx

 string_test$284:
	; Goto 271
	jmp string_test$271

 string_test$285:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 string_test$286:
	; FunctionEnd string_test
