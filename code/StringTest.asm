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

@8852string_Hello2C20World21#:
	; Initializer String Hello, World!
	db "Hello, World!", 0

section .data

@8861string_strlen282225s2229203D2025i0A#:
	; Initializer String strlen("%s") = %i\n
	db "strlen(", 34, "%s", 34, ") = %i", 10, 0

section .data

@8866string_t203D202225s222C20u203D202225s220A#:
	; Initializer String t = "%s", u = "%s"\n
	db "t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0

section .data

@8867string_abc#:
	; Initializer String abc
	db "abc", 0

section .data

@8868string_abc#:
	; Initializer String abc
	db "abc", 0

section .data

@8872string_t203D202225s222C20u203D202225s220A#:
	; Initializer String t = "%s", u = "%s"\n
	db "t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0

section .data

@8873string_strcmp28s2C20u29203D2025i0A#:
	; Initializer String strcmp(s, u) = %i\n
	db "strcmp(s, u) = %i", 10, 0

section .data

@8874string_strncmp28s2C20u2C20229203D2025i0A#:
	; Initializer String strncmp(s, u, 2) = %i\n
	db "strncmp(s, u, 2) = %i", 10, 0

section .data

@8878string_strchr28s2C2027l2729203D2025i0A#:
	; Initializer String strchr(s, 'l') = %i\n
	db "strchr(s, ", 39, "l", 39, ") = %i", 10, 0

section .data

@8884string_strrchr28s2C2027l2729203D2025i0A#:
	; Initializer String strrchr(s, 'l') = %i\n
	db "strrchr(s, ", 39, "l", 39, ") = %i", 10, 0

section .data

@8890string_strchr28s2C2027x2729203D2025i0A#:
	; Initializer String strchr(s, 'x') = %i\n
	db "strchr(s, ", 39, "x", 39, ") = %i", 10, 0

section .data

@8896string_strrchr28s2C2027x2729203D2025i0A#:
	; Initializer String strrchr(s, 'x') = %i\n
	db "strrchr(s, ", 39, "x", 39, ") = %i", 10, 0

section .data

@8900string_Hello2C20World21#:
	; Initializer String Hello, World!
	db "Hello, World!", 0

section .data

@8904string_Hello2C20World21#:
	; Initializer String Hello, World!
	db "Hello, World!", 0

section .data

@8918string_s203D202225s222C20t203D202225s222C20u203D202225s220A#:
	; Initializer String s = "%s", t = "%s", u = "%s"\n
	db "s = ", 34, "%s", 34, ", t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0

section .data

@8924string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#:
	; Initializer String memchr(s, 'l', SIZE * sizeof(char)) = %i\n
	db "memchr(s, ", 39, "l", 39, ", SIZE * sizeof(char)) = %i", 10, 0

section .data

@8933string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#:
	; Initializer String memchr(s, 'x', SIZE * sizeof(char)) = %i\n
	db "memchr(s, ", 39, "x", 39, ", SIZE * sizeof(char)) = %i", 10, 0

section .data

@8937string_s3A202225s222C20t3A202225s220A#:
	; Initializer String s: "%s", t: "%s"\n
	db "s: ", 34, "%s", 34, ", t: ", 34, "%s", 34, 10, 0

section .data

@8938string_strcmp28s2C20t29203D2025i0A#:
	; Initializer String strcmp(s, t) = %i\n
	db "strcmp(s, t) = %i", 10, 0

section .data

@8939string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#:
	; Initializer String memcmp(s, t, SIZE * sizeof(char)) = %i\n
	db "memcmp(s, t, SIZE * sizeof(char)) = %i", 10, 0

section .data

@8943string_strspn28s2C2022Hello2C20C2229203D2025i0A#:
	; Initializer String strspn(s, "Hello, C") = %i\n
	db "strspn(s, ", 34, "Hello, C", 34, ") = %i", 10, 0

section .data

@8944string_Hello2C20C#:
	; Initializer String Hello, C
	db "Hello, C", 0

section .data

@8945string_strcspn28s2C2022Hello2C20C2229203D2025i0A#:
	; Initializer String strcspn(s, "Hello, C") = %i\n
	db "strcspn(s, ", 34, "Hello, C", 34, ") = %i", 10, 0

section .data

@8946string_Hello2C20C#:
	; Initializer String Hello, C
	db "Hello, C", 0

section .data

@8947string_strerror28errno29203D202225s220A#:
	; Initializer String strerror(errno) = "%s"\n
	db "strerror(errno) = ", 34, "%s", 34, 10, 0

section .data

@8948string_2C#:
	; Initializer String ,
	db ",", 0

section .data

@8951string_strtok28s2C20222C2229203D202225s220A#:
	; Initializer String strtok(s, ",") = "%s"\n
	db "strtok(s, ", 34, ",", 34, ") = ", 34, "%s", 34, 10, 0

section .data

@8954string_2C#:
	; Initializer String ,
	db ",", 0

section .text

 string_test:
	; Assign s string_Hello2C20World21#
	mov qword [rbp + 28], @8852string_Hello2C20World21#

 string_test$1:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$2:
	; Parameter 268 pointer string_strlen282225s2229203D2025i0A#
	mov qword [rbp + 268], @8861string_strlen282225s2229203D2025i0A#

 string_test$3:
	; Parameter 276 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$4:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$5:
	; Parameter 308 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 308], rax

 string_test$6:
	; Call 284 strlen 0
	mov qword [rbp + 284], string_test$7
	mov [rbp + 292], rbp
	add rbp, 284
	jmp strlen

 string_test$7:
	; PostCall 284

 string_test$8:
	; GetReturnValue £temporary3290

 string_test$9:
	; Parameter 284 signed int £temporary3290
	mov [rbp + 284], ebx

 string_test$10:
	; Call 244 printf 12
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
	; Parameter 268 pointer t
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$14:
	; Parameter 276 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$15:
	; Call 244 strcpy 0
	mov qword [rbp + 244], string_test$16
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strcpy

 string_test$16:
	; PostCall 244

 string_test$17:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$18:
	; Parameter 268 pointer u
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$19:
	; Parameter 276 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$20:
	; Parameter 284 signed int integral4$5#
	mov dword [rbp + 284], 5

 string_test$21:
	; Call 244 strncpy 0
	mov qword [rbp + 244], string_test$22
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strncpy

 string_test$22:
	; PostCall 244

 string_test$23:
	; Dereference £temporary3295 £temporary3294 0
	mov rsi, rbp
	add rsi, 136

 string_test$24:
	; Assign £temporary3295 integral1$0#
	mov byte [rsi + 5], 0

 string_test$25:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$26:
	; Parameter 268 pointer string_t203D202225s222C20u203D202225s220A#
	mov qword [rbp + 268], @8866string_t203D202225s222C20u203D202225s220A#

 string_test$27:
	; Parameter 276 pointer t
	mov [rbp + 276], rbp
	add qword [rbp + 276], 36

 string_test$28:
	; Parameter 284 pointer u
	mov [rbp + 284], rbp
	add qword [rbp + 284], 136

 string_test$29:
	; Call 244 printf 16
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
	; Parameter 268 pointer t
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$33:
	; Parameter 276 pointer string_abc#
	mov qword [rbp + 276], @8867string_abc#

 string_test$34:
	; Call 244 strcat 0
	mov qword [rbp + 244], string_test$35
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strcat

 string_test$35:
	; PostCall 244

 string_test$36:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$37:
	; Parameter 268 pointer u
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$38:
	; Call 244 strlen 0
	mov qword [rbp + 244], string_test$39
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strlen

 string_test$39:
	; PostCall 244

 string_test$40:
	; GetReturnValue £temporary3298

 string_test$41:
	; Assign i £temporary3298
	mov [rbp + 24], ebx

 string_test$42:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$43:
	; Parameter 268 pointer u
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$44:
	; Parameter 276 pointer string_abc#
	mov qword [rbp + 276], @8868string_abc#

 string_test$45:
	; Parameter 284 signed int integral4$2#
	mov dword [rbp + 284], 2

 string_test$46:
	; Call 244 strncat 0
	mov qword [rbp + 244], string_test$47
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strncat

 string_test$47:
	; PostCall 244

 string_test$48:
	; Add £temporary3300 i integral4$2#
	mov eax, [rbp + 24]
	add eax, 2

 string_test$49:
	; IntegralToIntegral £temporary3301 £temporary3300
	mov rbx, 4294967295
	and rax, rbx

 string_test$50:
	; Add £temporary3302 u £temporary3301
	mov rsi, rbp
	add rsi, 136
	add rsi, rax

 string_test$51:
	; Dereference £temporary3303 £temporary3302 0

 string_test$52:
	; Assign £temporary3303 integral1$0#
	mov byte [rsi], 0

 string_test$53:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$54:
	; Parameter 268 pointer string_t203D202225s222C20u203D202225s220A#
	mov qword [rbp + 268], @8872string_t203D202225s222C20u203D202225s220A#

 string_test$55:
	; Parameter 276 pointer t
	mov [rbp + 276], rbp
	add qword [rbp + 276], 36

 string_test$56:
	; Parameter 284 pointer u
	mov [rbp + 284], rbp
	add qword [rbp + 284], 136

 string_test$57:
	; Call 244 printf 16
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
	; Parameter 268 pointer string_strcmp28s2C20u29203D2025i0A#
	mov qword [rbp + 268], @8873string_strcmp28s2C20u29203D2025i0A#

 string_test$61:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$62:
	; Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$63:
	; Parameter 308 pointer u
	mov [rbp + 308], rbp
	add qword [rbp + 308], 136

 string_test$64:
	; Call 276 strcmp 0
	mov qword [rbp + 276], string_test$65
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcmp

 string_test$65:
	; PostCall 276

 string_test$66:
	; GetReturnValue £temporary3305

 string_test$67:
	; Parameter 276 signed int £temporary3305
	mov [rbp + 276], ebx

 string_test$68:
	; Call 244 printf 4
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
	; Parameter 268 pointer string_strncmp28s2C20u2C20229203D2025i0A#
	mov qword [rbp + 268], @8874string_strncmp28s2C20u2C20229203D2025i0A#

 string_test$72:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$73:
	; Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$74:
	; Parameter 308 pointer u
	mov [rbp + 308], rbp
	add qword [rbp + 308], 136

 string_test$75:
	; Parameter 316 signed int integral4$2#
	mov dword [rbp + 316], 2

 string_test$76:
	; Call 276 strncmp 0
	mov qword [rbp + 276], string_test$77
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strncmp

 string_test$77:
	; PostCall 276

 string_test$78:
	; GetReturnValue £temporary3307

 string_test$79:
	; Parameter 276 signed int £temporary3307
	mov [rbp + 276], ebx

 string_test$80:
	; Call 244 printf 4
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
	; Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$84:
	; Parameter 276 signed int integral4$108#
	mov dword [rbp + 276], 108

 string_test$85:
	; Call 244 strchr 0
	mov qword [rbp + 244], string_test$86
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strchr

 string_test$86:
	; PostCall 244

 string_test$87:
	; GetReturnValue £temporary3309

 string_test$88:
	; Assign p £temporary3309
	mov [rbp + 236], rbx

 string_test$89:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$90:
	; Parameter 268 pointer string_strchr28s2C2027l2729203D2025i0A#
	mov qword [rbp + 268], @8878string_strchr28s2C2027l2729203D2025i0A#

 string_test$91:
	; Equal 95 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$95

 string_test$92:
	; Subtract £temporary3311 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$93:
	; IntegralToIntegral £temporary3313 £temporary3311

 string_test$94:
	; Jump 96
	jmp string_test$96

 string_test$95:
	; Assign £temporary3313 integral4$minus1#
	mov eax, -1

 string_test$96:
	; Parameter 276 signed int £temporary3313
	mov [rbp + 276], eax

 string_test$97:
	; Call 244 printf 4
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
	; Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$101:
	; Parameter 276 signed int integral4$108#
	mov dword [rbp + 276], 108

 string_test$102:
	; Call 244 strrchr 0
	mov qword [rbp + 244], string_test$103
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$103:
	; PostCall 244

 string_test$104:
	; GetReturnValue £temporary3315

 string_test$105:
	; Assign p £temporary3315
	mov [rbp + 236], rbx

 string_test$106:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$107:
	; Parameter 268 pointer string_strrchr28s2C2027l2729203D2025i0A#
	mov qword [rbp + 268], @8884string_strrchr28s2C2027l2729203D2025i0A#

 string_test$108:
	; Equal 112 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$112

 string_test$109:
	; Subtract £temporary3317 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$110:
	; IntegralToIntegral £temporary3319 £temporary3317

 string_test$111:
	; Jump 113
	jmp string_test$113

 string_test$112:
	; Assign £temporary3319 integral4$minus1#
	mov eax, -1

 string_test$113:
	; Parameter 276 signed int £temporary3319
	mov [rbp + 276], eax

 string_test$114:
	; Call 244 printf 4
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
	; Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$118:
	; Parameter 276 signed int integral4$120#
	mov dword [rbp + 276], 120

 string_test$119:
	; Call 244 strchr 0
	mov qword [rbp + 244], string_test$120
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strchr

 string_test$120:
	; PostCall 244

 string_test$121:
	; GetReturnValue £temporary3321

 string_test$122:
	; Assign p £temporary3321
	mov [rbp + 236], rbx

 string_test$123:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$124:
	; Parameter 268 pointer string_strchr28s2C2027x2729203D2025i0A#
	mov qword [rbp + 268], @8890string_strchr28s2C2027x2729203D2025i0A#

 string_test$125:
	; Equal 129 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$129

 string_test$126:
	; Subtract £temporary3323 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$127:
	; IntegralToIntegral £temporary3325 £temporary3323

 string_test$128:
	; Jump 130
	jmp string_test$130

 string_test$129:
	; Assign £temporary3325 integral4$minus1#
	mov eax, -1

 string_test$130:
	; Parameter 276 signed int £temporary3325
	mov [rbp + 276], eax

 string_test$131:
	; Call 244 printf 4
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
	; Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$135:
	; Parameter 276 signed int integral4$120#
	mov dword [rbp + 276], 120

 string_test$136:
	; Call 244 strrchr 0
	mov qword [rbp + 244], string_test$137
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$137:
	; PostCall 244

 string_test$138:
	; GetReturnValue £temporary3327

 string_test$139:
	; Assign p £temporary3327
	mov [rbp + 236], rbx

 string_test$140:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$141:
	; Parameter 268 pointer string_strrchr28s2C2027x2729203D2025i0A#
	mov qword [rbp + 268], @8896string_strrchr28s2C2027x2729203D2025i0A#

 string_test$142:
	; Equal 146 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$146

 string_test$143:
	; Subtract £temporary3329 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$144:
	; IntegralToIntegral £temporary3331 £temporary3329

 string_test$145:
	; Jump 147
	jmp string_test$147

 string_test$146:
	; Assign £temporary3331 integral4$minus1#
	mov eax, -1

 string_test$147:
	; Parameter 276 signed int £temporary3331
	mov [rbp + 276], eax

 string_test$148:
	; Call 244 printf 4
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
	; Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$152:
	; Parameter 276 pointer string_Hello2C20World21#
	mov qword [rbp + 276], @8900string_Hello2C20World21#

 string_test$153:
	; Parameter 284 signed int integral4$20#
	mov dword [rbp + 284], 20

 string_test$154:
	; Call 244 memcpy 0
	mov qword [rbp + 244], string_test$155
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memcpy

 string_test$155:
	; PostCall 244

 string_test$156:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$157:
	; Parameter 268 pointer t
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$158:
	; Parameter 276 pointer string_Hello2C20World21#
	mov qword [rbp + 276], @8904string_Hello2C20World21#

 string_test$159:
	; Parameter 284 signed int integral4$20#
	mov dword [rbp + 284], 20

 string_test$160:
	; Call 244 memmove 0
	mov qword [rbp + 244], string_test$161
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memmove

 string_test$161:
	; PostCall 244

 string_test$162:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$163:
	; Parameter 268 pointer u
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$164:
	; Parameter 276 signed int integral4$88#
	mov dword [rbp + 276], 88

 string_test$165:
	; Parameter 280 signed int integral4$20#
	mov dword [rbp + 280], 20

 string_test$166:
	; Call 244 memset 0
	mov qword [rbp + 244], string_test$167
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memset

 string_test$167:
	; PostCall 244

 string_test$168:
	; Dereference £temporary3337 £temporary3336 0
	mov rsi, rbp
	add rsi, 136

 string_test$169:
	; Assign £temporary3337 integral1$0#
	mov byte [rsi + 19], 0

 string_test$170:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$171:
	; Parameter 268 pointer string_s203D202225s222C20t203D202225s222C20u203D202225s220A#
	mov qword [rbp + 268], @8918string_s203D202225s222C20t203D202225s222C20u203D202225s220A#

 string_test$172:
	; Parameter 276 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$173:
	; Parameter 284 pointer t
	mov [rbp + 284], rbp
	add qword [rbp + 284], 36

 string_test$174:
	; Parameter 292 pointer u
	mov [rbp + 292], rbp
	add qword [rbp + 292], 136

 string_test$175:
	; Call 244 printf 24
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
	; Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$179:
	; Parameter 276 signed int integral4$108#
	mov dword [rbp + 276], 108

 string_test$180:
	; Parameter 280 signed int integral4$20#
	mov dword [rbp + 280], 20

 string_test$181:
	; Call 244 memchr 0
	mov qword [rbp + 244], string_test$182
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$182:
	; PostCall 244

 string_test$183:
	; GetReturnValue £temporary3339

 string_test$184:
	; Assign p £temporary3339
	mov [rbp + 236], rbx

 string_test$185:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$186:
	; Parameter 268 pointer string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#
	mov qword [rbp + 268], @8924string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$187:
	; Equal 191 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$191

 string_test$188:
	; Subtract £temporary3341 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$189:
	; IntegralToIntegral £temporary3343 £temporary3341

 string_test$190:
	; Jump 192
	jmp string_test$192

 string_test$191:
	; Assign £temporary3343 integral4$minus1#
	mov eax, -1

 string_test$192:
	; Parameter 276 signed int £temporary3343
	mov [rbp + 276], eax

 string_test$193:
	; Call 244 printf 4
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
	; Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$197:
	; Parameter 276 signed int integral4$120#
	mov dword [rbp + 276], 120

 string_test$198:
	; Parameter 280 signed int integral4$20#
	mov dword [rbp + 280], 20

 string_test$199:
	; Call 244 memchr 0
	mov qword [rbp + 244], string_test$200
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$200:
	; PostCall 244

 string_test$201:
	; GetReturnValue £temporary3345

 string_test$202:
	; Assign p £temporary3345
	mov [rbp + 236], rbx

 string_test$203:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$204:
	; Parameter 268 pointer string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#
	mov qword [rbp + 268], @8933string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$205:
	; Equal 209 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$209

 string_test$206:
	; Subtract £temporary3347 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$207:
	; IntegralToIntegral £temporary3349 £temporary3347

 string_test$208:
	; Jump 210
	jmp string_test$210

 string_test$209:
	; Assign £temporary3349 integral4$minus1#
	mov eax, -1

 string_test$210:
	; Parameter 276 signed int £temporary3349
	mov [rbp + 276], eax

 string_test$211:
	; Call 244 printf 4
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
	; Parameter 268 pointer string_s3A202225s222C20t3A202225s220A#
	mov qword [rbp + 268], @8937string_s3A202225s222C20t3A202225s220A#

 string_test$215:
	; Parameter 276 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$216:
	; Parameter 284 pointer t
	mov [rbp + 284], rbp
	add qword [rbp + 284], 36

 string_test$217:
	; Call 244 printf 16
	mov qword [rbp + 244], string_test$218
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 16
	jmp printf

 string_test$218:
	; PostCall 244

 string_test$219:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$220:
	; Parameter 268 pointer string_strcmp28s2C20t29203D2025i0A#
	mov qword [rbp + 268], @8938string_strcmp28s2C20t29203D2025i0A#

 string_test$221:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$222:
	; Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$223:
	; Parameter 308 pointer t
	mov [rbp + 308], rbp
	add qword [rbp + 308], 36

 string_test$224:
	; Call 276 strcmp 0
	mov qword [rbp + 276], string_test$225
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcmp

 string_test$225:
	; PostCall 276

 string_test$226:
	; GetReturnValue £temporary3352

 string_test$227:
	; Parameter 276 signed int £temporary3352
	mov [rbp + 276], ebx

 string_test$228:
	; Call 244 printf 4
	mov qword [rbp + 244], string_test$229
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$229:
	; PostCall 244

 string_test$230:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$231:
	; Parameter 268 pointer string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#
	mov qword [rbp + 268], @8939string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$232:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$233:
	; Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$234:
	; Parameter 308 pointer t
	mov [rbp + 308], rbp
	add qword [rbp + 308], 36

 string_test$235:
	; Parameter 316 signed int integral4$20#
	mov dword [rbp + 316], 20

 string_test$236:
	; Call 276 memcmp 0
	mov qword [rbp + 276], string_test$237
	mov [rbp + 284], rbp
	add rbp, 276
	jmp memcmp

 string_test$237:
	; PostCall 276

 string_test$238:
	; GetReturnValue £temporary3354

 string_test$239:
	; Parameter 276 signed int £temporary3354
	mov [rbp + 276], ebx

 string_test$240:
	; Call 244 printf 4
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
	; Parameter 268 pointer string_strspn28s2C2022Hello2C20C2229203D2025i0A#
	mov qword [rbp + 268], @8943string_strspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$244:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$245:
	; Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$246:
	; Parameter 308 pointer string_Hello2C20C#
	mov qword [rbp + 308], @8944string_Hello2C20C#

 string_test$247:
	; Call 276 strspn 0
	mov qword [rbp + 276], string_test$248
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strspn

 string_test$248:
	; PostCall 276

 string_test$249:
	; GetReturnValue £temporary3356

 string_test$250:
	; Parameter 276 signed int £temporary3356
	mov [rbp + 276], ebx

 string_test$251:
	; Call 244 printf 4
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
	; Parameter 268 pointer string_strcspn28s2C2022Hello2C20C2229203D2025i0A#
	mov qword [rbp + 268], @8945string_strcspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$255:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$256:
	; Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$257:
	; Parameter 308 pointer string_Hello2C20C#
	mov qword [rbp + 308], @8946string_Hello2C20C#

 string_test$258:
	; Call 276 strcspn 0
	mov qword [rbp + 276], string_test$259
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcspn

 string_test$259:
	; PostCall 276

 string_test$260:
	; GetReturnValue £temporary3358

 string_test$261:
	; Parameter 276 signed int £temporary3358
	mov [rbp + 276], ebx

 string_test$262:
	; Call 244 printf 4
	mov qword [rbp + 244], string_test$263
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$263:
	; PostCall 244

 string_test$264:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$265:
	; Parameter 268 pointer string_strerror28errno29203D202225s220A#
	mov qword [rbp + 268], @8947string_strerror28errno29203D202225s220A#

 string_test$266:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$267:
	; Parameter 300 signed int errno
	mov eax, [errno]
	mov [rbp + 300], eax

 string_test$268:
	; Call 276 strerror 0
	mov qword [rbp + 276], string_test$269
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strerror

 string_test$269:
	; PostCall 276

 string_test$270:
	; GetReturnValue £temporary3360

 string_test$271:
	; Parameter 276 pointer £temporary3360
	mov [rbp + 276], rbx

 string_test$272:
	; Call 244 printf 8
	mov qword [rbp + 244], string_test$273
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$273:
	; PostCall 244

 string_test$274:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$275:
	; Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$276:
	; Parameter 276 pointer string_2C#
	mov qword [rbp + 276], @8948string_2C#

 string_test$277:
	; Call 244 strtok 0
	mov qword [rbp + 244], string_test$278
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$278:
	; PostCall 244

 string_test$279:
	; GetReturnValue £temporary3362

 string_test$280:
	; Assign p £temporary3362
	mov [rbp + 236], rbx

 string_test$281:
	; Equal 295 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$295

 string_test$282:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$283:
	; Parameter 268 pointer string_strtok28s2C20222C2229203D202225s220A#
	mov qword [rbp + 268], @8951string_strtok28s2C20222C2229203D202225s220A#

 string_test$284:
	; Parameter 276 pointer p
	mov rax, [rbp + 236]
	mov [rbp + 276], rax

 string_test$285:
	; Call 244 printf 8
	mov qword [rbp + 244], string_test$286
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$286:
	; PostCall 244

 string_test$287:
	; PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$288:
	; Parameter 268 pointer integral8$0#
	mov qword [rbp + 268], 0

 string_test$289:
	; Parameter 276 pointer string_2C#
	mov qword [rbp + 276], @8954string_2C#

 string_test$290:
	; Call 244 strtok 0
	mov qword [rbp + 244], string_test$291
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$291:
	; PostCall 244

 string_test$292:
	; GetReturnValue £temporary3365

 string_test$293:
	; Assign p £temporary3365
	mov [rbp + 236], rbx

 string_test$294:
	; Jump 281
	jmp string_test$281

 string_test$295:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 string_test$296:
	; FunctionEnd string_test
