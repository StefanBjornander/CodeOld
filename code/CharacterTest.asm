	global character_testX
	global character_test

	extern printf
	extern islower
	extern isupper
	extern isalpha
	extern isdigit
	extern isalnum
	extern isxdigit
	extern isgraph
	extern isprint
	extern ispunct
	extern iscntrl
	extern isspace
	extern tolower
	extern toupper
	extern $StackTop


section .data

@7906string_ascii2025i0A#:
	; Initializer String ascii %i\n
	db "ascii %i", 10, 0

section .data

@7907string_islower282725c2729203D2025s0A#:
	; Initializer String islower('%c') = %s\n
	db "islower(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7909string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7910string_No#:
	; Initializer String No
	db "No", 0

section .data

@7911string_isupper282725c2729203D2025s0A#:
	; Initializer String isupper('%c') = %s\n
	db "isupper(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7913string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7914string_No#:
	; Initializer String No
	db "No", 0

section .data

@7915string_isalpha282725c2729203D2025s0A#:
	; Initializer String isalpha('%c') = %s\n
	db "isalpha(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7917string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7918string_No#:
	; Initializer String No
	db "No", 0

section .data

@7919string_isdigit282725c2729203D2025s0A#:
	; Initializer String isdigit('%c') = %s\n
	db "isdigit(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7921string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7922string_No#:
	; Initializer String No
	db "No", 0

section .data

@7923string_isalnum282725c2729203D2025s0A#:
	; Initializer String isalnum('%c') = %s\n
	db "isalnum(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7925string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7926string_No#:
	; Initializer String No
	db "No", 0

section .data

@7927string_isxdigit282725c2729203D2025s0A#:
	; Initializer String isxdigit('%c') = %s\n
	db "isxdigit(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7929string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7930string_No#:
	; Initializer String No
	db "No", 0

section .data

@7931string_isgraph282725c2729203D2025s0A#:
	; Initializer String isgraph('%c') = %s\n
	db "isgraph(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7933string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7934string_No#:
	; Initializer String No
	db "No", 0

section .data

@7935string_isprint282725c2729203D2025s0A#:
	; Initializer String isprint('%c') = %s\n
	db "isprint(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7937string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7938string_No#:
	; Initializer String No
	db "No", 0

section .data

@7939string_ispunct282725c2729203D2025s0A#:
	; Initializer String ispunct('%c') = %s\n
	db "ispunct(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7941string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7942string_No#:
	; Initializer String No
	db "No", 0

section .data

@7943string_iscntrl282725c2729203D2025s0A#:
	; Initializer String iscntrl('%c') = %s\n
	db "iscntrl(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7945string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7946string_No#:
	; Initializer String No
	db "No", 0

section .data

@7947string_isspace282725c2729203D2025s0A#:
	; Initializer String isspace('%c') = %s\n
	db "isspace(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7949string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7950string_No#:
	; Initializer String No
	db "No", 0

section .data

@7951string_tolower282725c2729203D202725c270A#:
	; Initializer String tolower('%c') = '%c'\n
	db "tolower(", 39, "%c", 39, ") = ", 39, "%c", 39, 10, 0

section .data

@7952string_toupper282725c2729203D202725c270A0A#:
	; Initializer String toupper('%c') = '%c'\n\n
	db "toupper(", 39, "%c", 39, ") = ", 39, "%c", 39, 10, 10, 0

section .text

 character_testX:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$1:
	; Parameter 49 pointer string_ascii2025i0A#
	mov qword [rbp + 49], @7906string_ascii2025i0A#

 character_testX$2:
	; IntegralToIntegral £temporary3171 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$3
	neg al
	neg eax

 character_testX$3:
	; Parameter 57 signed int £temporary3171
	mov [rbp + 57], eax

 character_testX$4:
	; Call 25 printf 4
	mov qword [rbp + 25], character_testX$5
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 4
	jmp printf

 character_testX$5:
	; PostCall 25

 character_testX$6:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$7:
	; Parameter 49 pointer string_islower282725c2729203D2025s0A#
	mov qword [rbp + 49], @7907string_islower282725c2729203D2025s0A#

 character_testX$8:
	; IntegralToIntegral £temporary3173 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$9
	neg al
	neg eax

 character_testX$9:
	; Parameter 57 signed int £temporary3173
	mov [rbp + 57], eax

 character_testX$10:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$11:
	; IntegralToIntegral £temporary3174 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$12
	neg al
	neg eax

 character_testX$12:
	; Parameter 85 signed int £temporary3174
	mov [rbp + 85], eax

 character_testX$13:
	; Call 61 islower 0
	mov qword [rbp + 61], character_testX$14
	mov [rbp + 69], rbp
	add rbp, 61
	jmp islower

 character_testX$14:
	; PostCall 61

 character_testX$15:
	; GetReturnValue £temporary3175

 character_testX$16:
	; Equal 19 £temporary3175 integral4$0#
	cmp ebx, 0
	je character_testX$19

 character_testX$17:
	; Assign £temporary3177 string_Yes#
	mov rax, @7909string_Yes#

 character_testX$18:
	; Jump 20
	jmp character_testX$20

 character_testX$19:
	; Assign £temporary3177 string_No#
	mov rax, @7910string_No#

 character_testX$20:
	; Parameter 61 pointer £temporary3177
	mov [rbp + 61], rax

 character_testX$21:
	; Call 25 printf 12
	mov qword [rbp + 25], character_testX$22
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$22:
	; PostCall 25

 character_testX$23:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$24:
	; Parameter 49 pointer string_isupper282725c2729203D2025s0A#
	mov qword [rbp + 49], @7911string_isupper282725c2729203D2025s0A#

 character_testX$25:
	; IntegralToIntegral £temporary3179 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$26
	neg al
	neg eax

 character_testX$26:
	; Parameter 57 signed int £temporary3179
	mov [rbp + 57], eax

 character_testX$27:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$28:
	; IntegralToIntegral £temporary3180 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$29
	neg al
	neg eax

 character_testX$29:
	; Parameter 85 signed int £temporary3180
	mov [rbp + 85], eax

 character_testX$30:
	; Call 61 isupper 0
	mov qword [rbp + 61], character_testX$31
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isupper

 character_testX$31:
	; PostCall 61

 character_testX$32:
	; GetReturnValue £temporary3181

 character_testX$33:
	; Equal 36 £temporary3181 integral4$0#
	cmp ebx, 0
	je character_testX$36

 character_testX$34:
	; Assign £temporary3183 string_Yes#
	mov rax, @7913string_Yes#

 character_testX$35:
	; Jump 37
	jmp character_testX$37

 character_testX$36:
	; Assign £temporary3183 string_No#
	mov rax, @7914string_No#

 character_testX$37:
	; Parameter 61 pointer £temporary3183
	mov [rbp + 61], rax

 character_testX$38:
	; Call 25 printf 12
	mov qword [rbp + 25], character_testX$39
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$39:
	; PostCall 25

 character_testX$40:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$41:
	; Parameter 49 pointer string_isalpha282725c2729203D2025s0A#
	mov qword [rbp + 49], @7915string_isalpha282725c2729203D2025s0A#

 character_testX$42:
	; IntegralToIntegral £temporary3185 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$43
	neg al
	neg eax

 character_testX$43:
	; Parameter 57 signed int £temporary3185
	mov [rbp + 57], eax

 character_testX$44:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$45:
	; IntegralToIntegral £temporary3186 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$46
	neg al
	neg eax

 character_testX$46:
	; Parameter 85 signed int £temporary3186
	mov [rbp + 85], eax

 character_testX$47:
	; Call 61 isalpha 0
	mov qword [rbp + 61], character_testX$48
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isalpha

 character_testX$48:
	; PostCall 61

 character_testX$49:
	; GetReturnValue £temporary3187

 character_testX$50:
	; Equal 53 £temporary3187 integral4$0#
	cmp ebx, 0
	je character_testX$53

 character_testX$51:
	; Assign £temporary3189 string_Yes#
	mov rax, @7917string_Yes#

 character_testX$52:
	; Jump 54
	jmp character_testX$54

 character_testX$53:
	; Assign £temporary3189 string_No#
	mov rax, @7918string_No#

 character_testX$54:
	; Parameter 61 pointer £temporary3189
	mov [rbp + 61], rax

 character_testX$55:
	; Call 25 printf 12
	mov qword [rbp + 25], character_testX$56
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$56:
	; PostCall 25

 character_testX$57:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$58:
	; Parameter 49 pointer string_isdigit282725c2729203D2025s0A#
	mov qword [rbp + 49], @7919string_isdigit282725c2729203D2025s0A#

 character_testX$59:
	; IntegralToIntegral £temporary3191 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$60
	neg al
	neg eax

 character_testX$60:
	; Parameter 57 signed int £temporary3191
	mov [rbp + 57], eax

 character_testX$61:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$62:
	; IntegralToIntegral £temporary3192 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$63
	neg al
	neg eax

 character_testX$63:
	; Parameter 85 signed int £temporary3192
	mov [rbp + 85], eax

 character_testX$64:
	; Call 61 isdigit 0
	mov qword [rbp + 61], character_testX$65
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isdigit

 character_testX$65:
	; PostCall 61

 character_testX$66:
	; GetReturnValue £temporary3193

 character_testX$67:
	; Equal 70 £temporary3193 integral4$0#
	cmp ebx, 0
	je character_testX$70

 character_testX$68:
	; Assign £temporary3195 string_Yes#
	mov rax, @7921string_Yes#

 character_testX$69:
	; Jump 71
	jmp character_testX$71

 character_testX$70:
	; Assign £temporary3195 string_No#
	mov rax, @7922string_No#

 character_testX$71:
	; Parameter 61 pointer £temporary3195
	mov [rbp + 61], rax

 character_testX$72:
	; Call 25 printf 12
	mov qword [rbp + 25], character_testX$73
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$73:
	; PostCall 25

 character_testX$74:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$75:
	; Parameter 49 pointer string_isalnum282725c2729203D2025s0A#
	mov qword [rbp + 49], @7923string_isalnum282725c2729203D2025s0A#

 character_testX$76:
	; IntegralToIntegral £temporary3197 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$77
	neg al
	neg eax

 character_testX$77:
	; Parameter 57 signed int £temporary3197
	mov [rbp + 57], eax

 character_testX$78:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$79:
	; IntegralToIntegral £temporary3198 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$80
	neg al
	neg eax

 character_testX$80:
	; Parameter 85 signed int £temporary3198
	mov [rbp + 85], eax

 character_testX$81:
	; Call 61 isalnum 0
	mov qword [rbp + 61], character_testX$82
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isalnum

 character_testX$82:
	; PostCall 61

 character_testX$83:
	; GetReturnValue £temporary3199

 character_testX$84:
	; Equal 87 £temporary3199 integral4$0#
	cmp ebx, 0
	je character_testX$87

 character_testX$85:
	; Assign £temporary3201 string_Yes#
	mov rax, @7925string_Yes#

 character_testX$86:
	; Jump 88
	jmp character_testX$88

 character_testX$87:
	; Assign £temporary3201 string_No#
	mov rax, @7926string_No#

 character_testX$88:
	; Parameter 61 pointer £temporary3201
	mov [rbp + 61], rax

 character_testX$89:
	; Call 25 printf 12
	mov qword [rbp + 25], character_testX$90
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$90:
	; PostCall 25

 character_testX$91:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$92:
	; Parameter 49 pointer string_isxdigit282725c2729203D2025s0A#
	mov qword [rbp + 49], @7927string_isxdigit282725c2729203D2025s0A#

 character_testX$93:
	; IntegralToIntegral £temporary3203 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$94
	neg al
	neg eax

 character_testX$94:
	; Parameter 57 signed int £temporary3203
	mov [rbp + 57], eax

 character_testX$95:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$96:
	; IntegralToIntegral £temporary3204 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$97
	neg al
	neg eax

 character_testX$97:
	; Parameter 85 signed int £temporary3204
	mov [rbp + 85], eax

 character_testX$98:
	; Call 61 isxdigit 0
	mov qword [rbp + 61], character_testX$99
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isxdigit

 character_testX$99:
	; PostCall 61

 character_testX$100:
	; GetReturnValue £temporary3205

 character_testX$101:
	; Equal 104 £temporary3205 integral4$0#
	cmp ebx, 0
	je character_testX$104

 character_testX$102:
	; Assign £temporary3207 string_Yes#
	mov rax, @7929string_Yes#

 character_testX$103:
	; Jump 105
	jmp character_testX$105

 character_testX$104:
	; Assign £temporary3207 string_No#
	mov rax, @7930string_No#

 character_testX$105:
	; Parameter 61 pointer £temporary3207
	mov [rbp + 61], rax

 character_testX$106:
	; Call 25 printf 12
	mov qword [rbp + 25], character_testX$107
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$107:
	; PostCall 25

 character_testX$108:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$109:
	; Parameter 49 pointer string_isgraph282725c2729203D2025s0A#
	mov qword [rbp + 49], @7931string_isgraph282725c2729203D2025s0A#

 character_testX$110:
	; IntegralToIntegral £temporary3209 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$111
	neg al
	neg eax

 character_testX$111:
	; Parameter 57 signed int £temporary3209
	mov [rbp + 57], eax

 character_testX$112:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$113:
	; IntegralToIntegral £temporary3210 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$114
	neg al
	neg eax

 character_testX$114:
	; Parameter 85 signed int £temporary3210
	mov [rbp + 85], eax

 character_testX$115:
	; Call 61 isgraph 0
	mov qword [rbp + 61], character_testX$116
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isgraph

 character_testX$116:
	; PostCall 61

 character_testX$117:
	; GetReturnValue £temporary3211

 character_testX$118:
	; Equal 121 £temporary3211 integral4$0#
	cmp ebx, 0
	je character_testX$121

 character_testX$119:
	; Assign £temporary3213 string_Yes#
	mov rax, @7933string_Yes#

 character_testX$120:
	; Jump 122
	jmp character_testX$122

 character_testX$121:
	; Assign £temporary3213 string_No#
	mov rax, @7934string_No#

 character_testX$122:
	; Parameter 61 pointer £temporary3213
	mov [rbp + 61], rax

 character_testX$123:
	; Call 25 printf 12
	mov qword [rbp + 25], character_testX$124
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$124:
	; PostCall 25

 character_testX$125:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$126:
	; Parameter 49 pointer string_isprint282725c2729203D2025s0A#
	mov qword [rbp + 49], @7935string_isprint282725c2729203D2025s0A#

 character_testX$127:
	; IntegralToIntegral £temporary3215 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$128
	neg al
	neg eax

 character_testX$128:
	; Parameter 57 signed int £temporary3215
	mov [rbp + 57], eax

 character_testX$129:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$130:
	; IntegralToIntegral £temporary3216 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$131
	neg al
	neg eax

 character_testX$131:
	; Parameter 85 signed int £temporary3216
	mov [rbp + 85], eax

 character_testX$132:
	; Call 61 isprint 0
	mov qword [rbp + 61], character_testX$133
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isprint

 character_testX$133:
	; PostCall 61

 character_testX$134:
	; GetReturnValue £temporary3217

 character_testX$135:
	; Equal 138 £temporary3217 integral4$0#
	cmp ebx, 0
	je character_testX$138

 character_testX$136:
	; Assign £temporary3219 string_Yes#
	mov rax, @7937string_Yes#

 character_testX$137:
	; Jump 139
	jmp character_testX$139

 character_testX$138:
	; Assign £temporary3219 string_No#
	mov rax, @7938string_No#

 character_testX$139:
	; Parameter 61 pointer £temporary3219
	mov [rbp + 61], rax

 character_testX$140:
	; Call 25 printf 12
	mov qword [rbp + 25], character_testX$141
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$141:
	; PostCall 25

 character_testX$142:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$143:
	; Parameter 49 pointer string_ispunct282725c2729203D2025s0A#
	mov qword [rbp + 49], @7939string_ispunct282725c2729203D2025s0A#

 character_testX$144:
	; IntegralToIntegral £temporary3221 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$145
	neg al
	neg eax

 character_testX$145:
	; Parameter 57 signed int £temporary3221
	mov [rbp + 57], eax

 character_testX$146:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$147:
	; IntegralToIntegral £temporary3222 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$148
	neg al
	neg eax

 character_testX$148:
	; Parameter 85 signed int £temporary3222
	mov [rbp + 85], eax

 character_testX$149:
	; Call 61 ispunct 0
	mov qword [rbp + 61], character_testX$150
	mov [rbp + 69], rbp
	add rbp, 61
	jmp ispunct

 character_testX$150:
	; PostCall 61

 character_testX$151:
	; GetReturnValue £temporary3223

 character_testX$152:
	; Equal 155 £temporary3223 integral4$0#
	cmp ebx, 0
	je character_testX$155

 character_testX$153:
	; Assign £temporary3225 string_Yes#
	mov rax, @7941string_Yes#

 character_testX$154:
	; Jump 156
	jmp character_testX$156

 character_testX$155:
	; Assign £temporary3225 string_No#
	mov rax, @7942string_No#

 character_testX$156:
	; Parameter 61 pointer £temporary3225
	mov [rbp + 61], rax

 character_testX$157:
	; Call 25 printf 12
	mov qword [rbp + 25], character_testX$158
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$158:
	; PostCall 25

 character_testX$159:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$160:
	; Parameter 49 pointer string_iscntrl282725c2729203D2025s0A#
	mov qword [rbp + 49], @7943string_iscntrl282725c2729203D2025s0A#

 character_testX$161:
	; IntegralToIntegral £temporary3227 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$162
	neg al
	neg eax

 character_testX$162:
	; Parameter 57 signed int £temporary3227
	mov [rbp + 57], eax

 character_testX$163:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$164:
	; IntegralToIntegral £temporary3228 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$165
	neg al
	neg eax

 character_testX$165:
	; Parameter 85 signed int £temporary3228
	mov [rbp + 85], eax

 character_testX$166:
	; Call 61 iscntrl 0
	mov qword [rbp + 61], character_testX$167
	mov [rbp + 69], rbp
	add rbp, 61
	jmp iscntrl

 character_testX$167:
	; PostCall 61

 character_testX$168:
	; GetReturnValue £temporary3229

 character_testX$169:
	; Equal 172 £temporary3229 integral4$0#
	cmp ebx, 0
	je character_testX$172

 character_testX$170:
	; Assign £temporary3231 string_Yes#
	mov rax, @7945string_Yes#

 character_testX$171:
	; Jump 173
	jmp character_testX$173

 character_testX$172:
	; Assign £temporary3231 string_No#
	mov rax, @7946string_No#

 character_testX$173:
	; Parameter 61 pointer £temporary3231
	mov [rbp + 61], rax

 character_testX$174:
	; Call 25 printf 12
	mov qword [rbp + 25], character_testX$175
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$175:
	; PostCall 25

 character_testX$176:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$177:
	; Parameter 49 pointer string_isspace282725c2729203D2025s0A#
	mov qword [rbp + 49], @7947string_isspace282725c2729203D2025s0A#

 character_testX$178:
	; IntegralToIntegral £temporary3233 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$179
	neg al
	neg eax

 character_testX$179:
	; Parameter 57 signed int £temporary3233
	mov [rbp + 57], eax

 character_testX$180:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$181:
	; IntegralToIntegral £temporary3234 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$182
	neg al
	neg eax

 character_testX$182:
	; Parameter 85 signed int £temporary3234
	mov [rbp + 85], eax

 character_testX$183:
	; Call 61 isspace 0
	mov qword [rbp + 61], character_testX$184
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isspace

 character_testX$184:
	; PostCall 61

 character_testX$185:
	; GetReturnValue £temporary3235

 character_testX$186:
	; Equal 189 £temporary3235 integral4$0#
	cmp ebx, 0
	je character_testX$189

 character_testX$187:
	; Assign £temporary3237 string_Yes#
	mov rax, @7949string_Yes#

 character_testX$188:
	; Jump 190
	jmp character_testX$190

 character_testX$189:
	; Assign £temporary3237 string_No#
	mov rax, @7950string_No#

 character_testX$190:
	; Parameter 61 pointer £temporary3237
	mov [rbp + 61], rax

 character_testX$191:
	; Call 25 printf 12
	mov qword [rbp + 25], character_testX$192
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$192:
	; PostCall 25

 character_testX$193:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$194:
	; Parameter 49 pointer string_tolower282725c2729203D202725c270A#
	mov qword [rbp + 49], @7951string_tolower282725c2729203D202725c270A#

 character_testX$195:
	; IntegralToIntegral £temporary3239 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$196
	neg al
	neg eax

 character_testX$196:
	; Parameter 57 signed int £temporary3239
	mov [rbp + 57], eax

 character_testX$197:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$198:
	; IntegralToIntegral £temporary3240 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$199
	neg al
	neg eax

 character_testX$199:
	; Parameter 85 signed int £temporary3240
	mov [rbp + 85], eax

 character_testX$200:
	; Call 61 tolower 0
	mov qword [rbp + 61], character_testX$201
	mov [rbp + 69], rbp
	add rbp, 61
	jmp tolower

 character_testX$201:
	; PostCall 61

 character_testX$202:
	; GetReturnValue £temporary3241

 character_testX$203:
	; IntegralToIntegral £temporary3242 £temporary3241
	cmp ebx, 0
	jge character_testX$204
	neg ebx
	neg bl

 character_testX$204:
	; IntegralToIntegral £temporary3243 £temporary3242
	and ebx, 255
	cmp bl, 0
	jge character_testX$205
	neg bl
	neg ebx

 character_testX$205:
	; Parameter 61 signed int £temporary3243
	mov [rbp + 61], ebx

 character_testX$206:
	; Call 25 printf 8
	mov qword [rbp + 25], character_testX$207
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 8
	jmp printf

 character_testX$207:
	; PostCall 25

 character_testX$208:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$209:
	; Parameter 49 pointer string_toupper282725c2729203D202725c270A0A#
	mov qword [rbp + 49], @7952string_toupper282725c2729203D202725c270A0A#

 character_testX$210:
	; IntegralToIntegral £temporary3245 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$211
	neg al
	neg eax

 character_testX$211:
	; Parameter 57 signed int £temporary3245
	mov [rbp + 57], eax

 character_testX$212:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$213:
	; IntegralToIntegral £temporary3246 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$214
	neg al
	neg eax

 character_testX$214:
	; Parameter 85 signed int £temporary3246
	mov [rbp + 85], eax

 character_testX$215:
	; Call 61 toupper 0
	mov qword [rbp + 61], character_testX$216
	mov [rbp + 69], rbp
	add rbp, 61
	jmp toupper

 character_testX$216:
	; PostCall 61

 character_testX$217:
	; GetReturnValue £temporary3247

 character_testX$218:
	; IntegralToIntegral £temporary3248 £temporary3247
	cmp ebx, 0
	jge character_testX$219
	neg ebx
	neg bl

 character_testX$219:
	; IntegralToIntegral £temporary3249 £temporary3248
	and ebx, 255
	cmp bl, 0
	jge character_testX$220
	neg bl
	neg ebx

 character_testX$220:
	; Parameter 61 signed int £temporary3249
	mov [rbp + 61], ebx

 character_testX$221:
	; Call 25 printf 8
	mov qword [rbp + 25], character_testX$222
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 8
	jmp printf

 character_testX$222:
	; PostCall 25

 character_testX$223:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 character_testX$224:
	; FunctionEnd character_testX

section .text

 character_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$1:
	; Parameter 48 signed char integral1$97#
	mov byte [rbp + 48], 97

 character_test$2:
	; Call 24 character_testX 0
	mov qword [rbp + 24], character_test$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$3:
	; PostCall 24

 character_test$4:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$5:
	; Parameter 48 signed char integral1$66#
	mov byte [rbp + 48], 66

 character_test$6:
	; Call 24 character_testX 0
	mov qword [rbp + 24], character_test$7
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$7:
	; PostCall 24

 character_test$8:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$9:
	; Parameter 48 signed char integral1$49#
	mov byte [rbp + 48], 49

 character_test$10:
	; Call 24 character_testX 0
	mov qword [rbp + 24], character_test$11
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$11:
	; PostCall 24

 character_test$12:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$13:
	; Parameter 48 signed char integral1$46#
	mov byte [rbp + 48], 46

 character_test$14:
	; Call 24 character_testX 0
	mov qword [rbp + 24], character_test$15
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$15:
	; PostCall 24

 character_test$16:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$17:
	; Parameter 48 signed char integral1$10#
	mov byte [rbp + 48], 10

 character_test$18:
	; Call 24 character_testX 0
	mov qword [rbp + 24], character_test$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$19:
	; PostCall 24

 character_test$20:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$21:
	; Parameter 48 signed char integral1$102#
	mov byte [rbp + 48], 102

 character_test$22:
	; Call 24 character_testX 0
	mov qword [rbp + 24], character_test$23
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$23:
	; PostCall 24

 character_test$24:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$25:
	; Parameter 48 signed char integral1$103#
	mov byte [rbp + 48], 103

 character_test$26:
	; Call 24 character_testX 0
	mov qword [rbp + 24], character_test$27
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$27:
	; PostCall 24

 character_test$28:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 character_test$29:
	; FunctionEnd character_test
