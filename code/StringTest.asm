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

section .text


section .data

string_Hello2C20World21#:
	; initializer String
	db "Hello, World!", 0

section .data

string_strlen282225s2229203D2025i0A#:
	; initializer String
	db "strlen(", 34, "%s", 34, ") = %i", 10, 0

section .data

string_t203D202225s222C20u203D202225s220A#:
	; initializer String
	db "t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0

section .data

string_abc#:
	; initializer String
	db "abc", 0

section .data

string_strcmp28s2C20u29203D2025i0A#:
	; initializer String
	db "strcmp(s, u) = %i", 10, 0

section .data

string_strncmp28s2C20u2C20229203D2025i0A#:
	; initializer String
	db "strncmp(s, u, 2) = %i", 10, 0

section .data

string_strchr28s2C2027l2729203D2025i0A#:
	; initializer String
	db "strchr(s, ", 39, "l", 39, ") = %i", 10, 0

section .data

string_strrchr28s2C2027l2729203D2025i0A#:
	; initializer String
	db "strrchr(s, ", 39, "l", 39, ") = %i", 10, 0

section .data

string_strchr28s2C2027x2729203D2025i0A#:
	; initializer String
	db "strchr(s, ", 39, "x", 39, ") = %i", 10, 0

section .data

string_strrchr28s2C2027x2729203D2025i0A#:
	; initializer String
	db "strrchr(s, ", 39, "x", 39, ") = %i", 10, 0

section .data

string_s203D202225s222C20t203D202225s222C20u203D202225s220A#:
	; initializer String
	db "s = ", 34, "%s", 34, ", t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0

section .data

string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#:
	; initializer String
	db "memchr(s, ", 39, "l", 39, ", SIZE * sizeof(char)) = %i", 10, 0

section .data

string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#:
	; initializer String
	db "memchr(s, ", 39, "x", 39, ", SIZE * sizeof(char)) = %i", 10, 0

section .data

string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#:
	; initializer String
	db "memcmp(s, t, SIZE * sizeof(char)) = %i", 10, 0

section .data

string_strspn28s2C2022Hello2C20C2229203D2025i0A#:
	; initializer String
	db "strspn(s, ", 34, "Hello, C", 34, ") = %i", 10, 0

section .data

string_Hello2C20C#:
	; initializer String
	db "Hello, C", 0

section .data

string_strcspn28s2C2022Hello2C20C2229203D2025i0A#:
	; initializer String
	db "strcspn(s, ", 34, "Hello, C", 34, ") = %i", 10, 0

section .data

string_strerror28errno29203D202225s220A#:
	; initializer String
	db "strerror(errno) = ", 34, "%s", 34, 10, 0

section .data

string_2C#:
	; initializer String
	db ",", 0

section .data

string_strtok28s2C20222C2229203D202225s220A#:
	; initializer String
	db "strtok(s, ", 34, ",", 34, ") = ", 34, "%s", 34, 10, 0

section .text

 string_test:
	; empty

 string_test$1:
	; s = string_Hello2C20World21#
	mov qword [rbp + 28], string_Hello2C20World21#

 string_test$2:
	; call header integral zero 0 stack zero 0

 string_test$3:
	; parameter string_strlen282225s2229203D2025i0A#, offset 268
	mov qword [rbp + 268], string_strlen282225s2229203D2025i0A#

 string_test$4:
	; parameter s, offset 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$5:
	; call header integral zero 0 stack zero 0

 string_test$6:
	; parameter s, offset 308
	mov rax, [rbp + 28]
	mov [rbp + 308], rax

 string_test$7:
	; call function noellipse-noellipse strlen
	mov qword [rbp + 284], string_test$8
	mov [rbp + 292], rbp
	add rbp, 284
	jmp strlen

 string_test$8:
	; post call

 string_test$9:
	; £temporary3131 = return_value

 string_test$10:
	; parameter £temporary3131, offset 284
	mov [rbp + 284], ebx

 string_test$11:
	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 244], string_test$12
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 12
	jmp printf

 string_test$12:
	; post call

 string_test$13:
	; call header integral zero 0 stack zero 0

 string_test$14:
	; parameter t, offset 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$15:
	; parameter s, offset 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$16:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 244], string_test$17
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strcpy

 string_test$17:
	; post call

 string_test$18:
	; call header integral zero 0 stack zero 0

 string_test$19:
	; parameter u, offset 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$20:
	; parameter s, offset 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$21:
	; parameter int4$5#, offset 284
	mov dword [rbp + 284], 5

 string_test$22:
	; call function noellipse-noellipse strncpy
	mov qword [rbp + 244], string_test$23
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strncpy

 string_test$23:
	; post call

 string_test$24:
	; £temporary3135 -> u = *u
	mov rsi, rbp
	add rsi, 136

 string_test$25:
	; £temporary3135 -> u = int1$0#
	mov byte [rsi + 5], 0

 string_test$26:
	; call header integral zero 0 stack zero 0

 string_test$27:
	; parameter string_t203D202225s222C20u203D202225s220A#, offset 268
	mov qword [rbp + 268], string_t203D202225s222C20u203D202225s220A#

 string_test$28:
	; parameter t, offset 276
	mov [rbp + 276], rbp
	add qword [rbp + 276], 36

 string_test$29:
	; parameter u, offset 284
	mov [rbp + 284], rbp
	add qword [rbp + 284], 136

 string_test$30:
	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 244], string_test$31
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 16
	jmp printf

 string_test$31:
	; post call

 string_test$32:
	; call header integral zero 0 stack zero 0

 string_test$33:
	; parameter t, offset 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$34:
	; parameter string_abc#, offset 276
	mov qword [rbp + 276], string_abc#

 string_test$35:
	; call function noellipse-noellipse strcat
	mov qword [rbp + 244], string_test$36
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strcat

 string_test$36:
	; post call

 string_test$37:
	; call header integral zero 0 stack zero 0

 string_test$38:
	; parameter u, offset 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$39:
	; call function noellipse-noellipse strlen
	mov qword [rbp + 244], string_test$40
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strlen

 string_test$40:
	; post call

 string_test$41:
	; £temporary3138 = return_value

 string_test$42:
	; i = £temporary3138
	mov [rbp + 24], ebx

 string_test$43:
	; call header integral zero 0 stack zero 0

 string_test$44:
	; parameter u, offset 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$45:
	; parameter string_abc#, offset 276
	mov qword [rbp + 276], string_abc#

 string_test$46:
	; parameter int4$2#, offset 284
	mov dword [rbp + 284], 2

 string_test$47:
	; call function noellipse-noellipse strncat
	mov qword [rbp + 244], string_test$48
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strncat

 string_test$48:
	; post call

 string_test$49:
	; £temporary3140 = i + int4$2#
	mov eax, [rbp + 24]
	add eax, 2

 string_test$50:
	; £temporary3142 = int_to_int £temporary3140 (SignedInt -> Array)
	mov rbx, 4294967295
	and rax, rbx

 string_test$51:
	; £temporary3144 = u + £temporary3142
	mov rsi, rbp
	add rsi, 136
	add rsi, rax

 string_test$52:
	; £temporary3141 -> £temporary3144 = *£temporary3144

 string_test$53:
	; £temporary3141 -> £temporary3144 = int1$0#
	mov byte [rsi], 0

 string_test$54:
	; call header integral zero 0 stack zero 0

 string_test$55:
	; parameter string_t203D202225s222C20u203D202225s220A#, offset 268
	mov qword [rbp + 268], string_t203D202225s222C20u203D202225s220A#

 string_test$56:
	; parameter t, offset 276
	mov [rbp + 276], rbp
	add qword [rbp + 276], 36

 string_test$57:
	; parameter u, offset 284
	mov [rbp + 284], rbp
	add qword [rbp + 284], 136

 string_test$58:
	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 244], string_test$59
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 16
	jmp printf

 string_test$59:
	; post call

 string_test$60:
	; call header integral zero 0 stack zero 0

 string_test$61:
	; parameter string_strcmp28s2C20u29203D2025i0A#, offset 268
	mov qword [rbp + 268], string_strcmp28s2C20u29203D2025i0A#

 string_test$62:
	; call header integral zero 0 stack zero 0

 string_test$63:
	; parameter s, offset 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$64:
	; parameter u, offset 308
	mov [rbp + 308], rbp
	add qword [rbp + 308], 136

 string_test$65:
	; call function noellipse-noellipse strcmp
	mov qword [rbp + 276], string_test$66
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcmp

 string_test$66:
	; post call

 string_test$67:
	; £temporary3146 = return_value

 string_test$68:
	; parameter £temporary3146, offset 276
	mov [rbp + 276], ebx

 string_test$69:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 244], string_test$70
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$70:
	; post call

 string_test$71:
	; call header integral zero 0 stack zero 0

 string_test$72:
	; parameter string_strncmp28s2C20u2C20229203D2025i0A#, offset 268
	mov qword [rbp + 268], string_strncmp28s2C20u2C20229203D2025i0A#

 string_test$73:
	; call header integral zero 0 stack zero 0

 string_test$74:
	; parameter s, offset 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$75:
	; parameter u, offset 308
	mov [rbp + 308], rbp
	add qword [rbp + 308], 136

 string_test$76:
	; parameter int4$2#, offset 316
	mov dword [rbp + 316], 2

 string_test$77:
	; call function noellipse-noellipse strncmp
	mov qword [rbp + 276], string_test$78
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strncmp

 string_test$78:
	; post call

 string_test$79:
	; £temporary3148 = return_value

 string_test$80:
	; parameter £temporary3148, offset 276
	mov [rbp + 276], ebx

 string_test$81:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 244], string_test$82
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$82:
	; post call

 string_test$83:
	; call header integral zero 0 stack zero 0

 string_test$84:
	; parameter s, offset 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$85:
	; parameter int4$108#, offset 276
	mov dword [rbp + 276], 108

 string_test$86:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 244], string_test$87
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strchr

 string_test$87:
	; post call

 string_test$88:
	; £temporary3150 = return_value

 string_test$89:
	; p = £temporary3150
	mov [rbp + 236], rbx

 string_test$90:
	; call header integral zero 0 stack zero 0

 string_test$91:
	; parameter string_strchr28s2C2027l2729203D2025i0A#, offset 268
	mov qword [rbp + 268], string_strchr28s2C2027l2729203D2025i0A#

 string_test$92:
	; if p == int8$0# goto 97
	cmp qword [rbp + 236], 0
	je string_test$97

 string_test$93:
	; £temporary3153 = p - s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$94:
	; £temporary3154 = int_to_int £temporary3153 (Pointer -> SignedInt)

 string_test$95:
	; £temporary3155 = £temporary3154

 string_test$96:
	; goto 98
	jmp string_test$98

 string_test$97:
	; £temporary3155 = int4$minus1#
	mov eax, -1

 string_test$98:
	; parameter £temporary3155, offset 276
	mov [rbp + 276], eax

 string_test$99:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 244], string_test$100
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$100:
	; post call

 string_test$101:
	; call header integral zero 0 stack zero 0

 string_test$102:
	; parameter s, offset 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$103:
	; parameter int4$108#, offset 276
	mov dword [rbp + 276], 108

 string_test$104:
	; call function noellipse-noellipse strrchr
	mov qword [rbp + 244], string_test$105
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$105:
	; post call

 string_test$106:
	; £temporary3157 = return_value

 string_test$107:
	; p = £temporary3157
	mov [rbp + 236], rbx

 string_test$108:
	; call header integral zero 0 stack zero 0

 string_test$109:
	; parameter string_strrchr28s2C2027l2729203D2025i0A#, offset 268
	mov qword [rbp + 268], string_strrchr28s2C2027l2729203D2025i0A#

 string_test$110:
	; if p == int8$0# goto 115
	cmp qword [rbp + 236], 0
	je string_test$115

 string_test$111:
	; £temporary3160 = p - s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$112:
	; £temporary3161 = int_to_int £temporary3160 (Pointer -> SignedInt)

 string_test$113:
	; £temporary3162 = £temporary3161

 string_test$114:
	; goto 116
	jmp string_test$116

 string_test$115:
	; £temporary3162 = int4$minus1#
	mov eax, -1

 string_test$116:
	; parameter £temporary3162, offset 276
	mov [rbp + 276], eax

 string_test$117:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 244], string_test$118
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$118:
	; post call

 string_test$119:
	; call header integral zero 0 stack zero 0

 string_test$120:
	; parameter s, offset 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$121:
	; parameter int4$120#, offset 276
	mov dword [rbp + 276], 120

 string_test$122:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 244], string_test$123
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strchr

 string_test$123:
	; post call

 string_test$124:
	; £temporary3164 = return_value

 string_test$125:
	; p = £temporary3164
	mov [rbp + 236], rbx

 string_test$126:
	; call header integral zero 0 stack zero 0

 string_test$127:
	; parameter string_strchr28s2C2027x2729203D2025i0A#, offset 268
	mov qword [rbp + 268], string_strchr28s2C2027x2729203D2025i0A#

 string_test$128:
	; if p == int8$0# goto 133
	cmp qword [rbp + 236], 0
	je string_test$133

 string_test$129:
	; £temporary3167 = p - s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$130:
	; £temporary3168 = int_to_int £temporary3167 (Pointer -> SignedInt)

 string_test$131:
	; £temporary3169 = £temporary3168

 string_test$132:
	; goto 134
	jmp string_test$134

 string_test$133:
	; £temporary3169 = int4$minus1#
	mov eax, -1

 string_test$134:
	; parameter £temporary3169, offset 276
	mov [rbp + 276], eax

 string_test$135:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 244], string_test$136
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$136:
	; post call

 string_test$137:
	; call header integral zero 0 stack zero 0

 string_test$138:
	; parameter s, offset 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$139:
	; parameter int4$120#, offset 276
	mov dword [rbp + 276], 120

 string_test$140:
	; call function noellipse-noellipse strrchr
	mov qword [rbp + 244], string_test$141
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$141:
	; post call

 string_test$142:
	; £temporary3171 = return_value

 string_test$143:
	; p = £temporary3171
	mov [rbp + 236], rbx

 string_test$144:
	; call header integral zero 0 stack zero 0

 string_test$145:
	; parameter string_strrchr28s2C2027x2729203D2025i0A#, offset 268
	mov qword [rbp + 268], string_strrchr28s2C2027x2729203D2025i0A#

 string_test$146:
	; if p == int8$0# goto 151
	cmp qword [rbp + 236], 0
	je string_test$151

 string_test$147:
	; £temporary3174 = p - s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$148:
	; £temporary3175 = int_to_int £temporary3174 (Pointer -> SignedInt)

 string_test$149:
	; £temporary3176 = £temporary3175

 string_test$150:
	; goto 152
	jmp string_test$152

 string_test$151:
	; £temporary3176 = int4$minus1#
	mov eax, -1

 string_test$152:
	; parameter £temporary3176, offset 276
	mov [rbp + 276], eax

 string_test$153:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 244], string_test$154
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$154:
	; post call

 string_test$155:
	; call header integral zero 0 stack zero 0

 string_test$156:
	; parameter s, offset 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$157:
	; parameter string_Hello2C20World21#, offset 276
	mov qword [rbp + 276], string_Hello2C20World21#

 string_test$158:
	; parameter int4$20#, offset 284
	mov dword [rbp + 284], 20

 string_test$159:
	; call function noellipse-noellipse memcpy
	mov qword [rbp + 244], string_test$160
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memcpy

 string_test$160:
	; post call

 string_test$161:
	; call header integral zero 0 stack zero 0

 string_test$162:
	; parameter t, offset 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$163:
	; parameter string_Hello2C20World21#, offset 276
	mov qword [rbp + 276], string_Hello2C20World21#

 string_test$164:
	; parameter int4$20#, offset 284
	mov dword [rbp + 284], 20

 string_test$165:
	; call function noellipse-noellipse memmove
	mov qword [rbp + 244], string_test$166
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memmove

 string_test$166:
	; post call

 string_test$167:
	; call header integral zero 0 stack zero 0

 string_test$168:
	; parameter u, offset 268
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$169:
	; parameter int4$88#, offset 276
	mov dword [rbp + 276], 88

 string_test$170:
	; parameter int4$20#, offset 280
	mov dword [rbp + 280], 20

 string_test$171:
	; call function noellipse-noellipse memset
	mov qword [rbp + 244], string_test$172
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memset

 string_test$172:
	; post call

 string_test$173:
	; £temporary3181 -> u = *u
	mov rsi, rbp
	add rsi, 136

 string_test$174:
	; £temporary3181 -> u = int1$0#
	mov byte [rsi + 21], 0

 string_test$175:
	; call header integral zero 0 stack zero 0

 string_test$176:
	; parameter string_s203D202225s222C20t203D202225s222C20u203D202225s220A#, offset 268
	mov qword [rbp + 268], string_s203D202225s222C20t203D202225s222C20u203D202225s220A#

 string_test$177:
	; parameter s, offset 276
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$178:
	; parameter t, offset 284
	mov [rbp + 284], rbp
	add qword [rbp + 284], 36

 string_test$179:
	; parameter u, offset 292
	mov [rbp + 292], rbp
	add qword [rbp + 292], 136

 string_test$180:
	; call function noellipse-ellipse printf, extra 24
	mov qword [rbp + 244], string_test$181
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 24
	jmp printf

 string_test$181:
	; post call

 string_test$182:
	; call header integral zero 0 stack zero 0

 string_test$183:
	; parameter s, offset 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$184:
	; parameter int4$108#, offset 276
	mov dword [rbp + 276], 108

 string_test$185:
	; parameter int4$20#, offset 280
	mov dword [rbp + 280], 20

 string_test$186:
	; call function noellipse-noellipse memchr
	mov qword [rbp + 244], string_test$187
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$187:
	; post call

 string_test$188:
	; £temporary3183 = return_value

 string_test$189:
	; p = £temporary3183
	mov [rbp + 236], rbx

 string_test$190:
	; call header integral zero 0 stack zero 0

 string_test$191:
	; parameter string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#, offset 268
	mov qword [rbp + 268], string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$192:
	; if p == int8$0# goto 197
	cmp qword [rbp + 236], 0
	je string_test$197

 string_test$193:
	; £temporary3186 = p - s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$194:
	; £temporary3187 = int_to_int £temporary3186 (Pointer -> SignedInt)

 string_test$195:
	; £temporary3188 = £temporary3187

 string_test$196:
	; goto 198
	jmp string_test$198

 string_test$197:
	; £temporary3188 = int4$minus1#
	mov eax, -1

 string_test$198:
	; parameter £temporary3188, offset 276
	mov [rbp + 276], eax

 string_test$199:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 244], string_test$200
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$200:
	; post call

 string_test$201:
	; call header integral zero 0 stack zero 0

 string_test$202:
	; parameter s, offset 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$203:
	; parameter int4$120#, offset 276
	mov dword [rbp + 276], 120

 string_test$204:
	; parameter int4$20#, offset 280
	mov dword [rbp + 280], 20

 string_test$205:
	; call function noellipse-noellipse memchr
	mov qword [rbp + 244], string_test$206
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$206:
	; post call

 string_test$207:
	; £temporary3190 = return_value

 string_test$208:
	; p = £temporary3190
	mov [rbp + 236], rbx

 string_test$209:
	; call header integral zero 0 stack zero 0

 string_test$210:
	; parameter string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#, offset 268
	mov qword [rbp + 268], string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$211:
	; if p == int8$0# goto 216
	cmp qword [rbp + 236], 0
	je string_test$216

 string_test$212:
	; £temporary3193 = p - s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$213:
	; £temporary3194 = int_to_int £temporary3193 (Pointer -> SignedInt)

 string_test$214:
	; £temporary3195 = £temporary3194

 string_test$215:
	; goto 217
	jmp string_test$217

 string_test$216:
	; £temporary3195 = int4$minus1#
	mov eax, -1

 string_test$217:
	; parameter £temporary3195, offset 276
	mov [rbp + 276], eax

 string_test$218:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 244], string_test$219
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$219:
	; post call

 string_test$220:
	; call header integral zero 0 stack zero 0

 string_test$221:
	; parameter string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#, offset 268
	mov qword [rbp + 268], string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$222:
	; call header integral zero 0 stack zero 0

 string_test$223:
	; parameter s, offset 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$224:
	; parameter t, offset 308
	mov [rbp + 308], rbp
	add qword [rbp + 308], 36

 string_test$225:
	; parameter int4$20#, offset 316
	mov dword [rbp + 316], 20

 string_test$226:
	; call function noellipse-noellipse memcmp
	mov qword [rbp + 276], string_test$227
	mov [rbp + 284], rbp
	add rbp, 276
	jmp memcmp

 string_test$227:
	; post call

 string_test$228:
	; £temporary3197 = return_value

 string_test$229:
	; parameter £temporary3197, offset 276
	mov [rbp + 276], ebx

 string_test$230:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 244], string_test$231
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$231:
	; post call

 string_test$232:
	; call header integral zero 0 stack zero 0

 string_test$233:
	; parameter string_strspn28s2C2022Hello2C20C2229203D2025i0A#, offset 268
	mov qword [rbp + 268], string_strspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$234:
	; call header integral zero 0 stack zero 0

 string_test$235:
	; parameter s, offset 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$236:
	; parameter string_Hello2C20C#, offset 308
	mov qword [rbp + 308], string_Hello2C20C#

 string_test$237:
	; call function noellipse-noellipse strspn
	mov qword [rbp + 276], string_test$238
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strspn

 string_test$238:
	; post call

 string_test$239:
	; £temporary3199 = return_value

 string_test$240:
	; parameter £temporary3199, offset 276
	mov [rbp + 276], ebx

 string_test$241:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 244], string_test$242
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$242:
	; post call

 string_test$243:
	; call header integral zero 0 stack zero 0

 string_test$244:
	; parameter string_strcspn28s2C2022Hello2C20C2229203D2025i0A#, offset 268
	mov qword [rbp + 268], string_strcspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$245:
	; call header integral zero 0 stack zero 0

 string_test$246:
	; parameter s, offset 300
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$247:
	; parameter string_Hello2C20C#, offset 308
	mov qword [rbp + 308], string_Hello2C20C#

 string_test$248:
	; call function noellipse-noellipse strcspn
	mov qword [rbp + 276], string_test$249
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcspn

 string_test$249:
	; post call

 string_test$250:
	; £temporary3201 = return_value

 string_test$251:
	; parameter £temporary3201, offset 276
	mov [rbp + 276], ebx

 string_test$252:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 244], string_test$253
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$253:
	; post call

 string_test$254:
	; call header integral zero 0 stack zero 0

 string_test$255:
	; parameter string_strerror28errno29203D202225s220A#, offset 268
	mov qword [rbp + 268], string_strerror28errno29203D202225s220A#

 string_test$256:
	; call header integral zero 0 stack zero 0

 string_test$257:
	; parameter errno, offset 300
	mov eax, [errno]
	mov [rbp + 300], eax

 string_test$258:
	; call function noellipse-noellipse strerror
	mov qword [rbp + 276], string_test$259
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strerror

 string_test$259:
	; post call

 string_test$260:
	; £temporary3203 = return_value

 string_test$261:
	; parameter £temporary3203, offset 276
	mov [rbp + 276], rbx

 string_test$262:
	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 244], string_test$263
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$263:
	; post call

 string_test$264:
	; call header integral zero 0 stack zero 0

 string_test$265:
	; parameter s, offset 268
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$266:
	; parameter string_2C#, offset 276
	mov qword [rbp + 276], string_2C#

 string_test$267:
	; call function noellipse-noellipse strtok
	mov qword [rbp + 244], string_test$268
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$268:
	; post call

 string_test$269:
	; £temporary3205 = return_value

 string_test$270:
	; p = £temporary3205
	mov [rbp + 236], rbx

 string_test$271:
	; if p == int8$0# goto 285
	cmp qword [rbp + 236], 0
	je string_test$285

 string_test$272:
	; call header integral zero 0 stack zero 0

 string_test$273:
	; parameter string_strtok28s2C20222C2229203D202225s220A#, offset 268
	mov qword [rbp + 268], string_strtok28s2C20222C2229203D202225s220A#

 string_test$274:
	; parameter p, offset 276
	mov rax, [rbp + 236]
	mov [rbp + 276], rax

 string_test$275:
	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 244], string_test$276
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$276:
	; post call

 string_test$277:
	; call header integral zero 0 stack zero 0

 string_test$278:
	; parameter int8$0#, offset 268
	mov qword [rbp + 268], 0

 string_test$279:
	; parameter string_2C#, offset 276
	mov qword [rbp + 276], string_2C#

 string_test$280:
	; call function noellipse-noellipse strtok
	mov qword [rbp + 244], string_test$281
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$281:
	; post call

 string_test$282:
	; £temporary3208 = return_value

 string_test$283:
	; p = £temporary3208
	mov [rbp + 236], rbx

 string_test$284:
	; goto 271
	jmp string_test$271

 string_test$285:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 string_test$286:
	; function end string_test
