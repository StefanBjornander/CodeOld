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
section .text

character_test:	; call header integral zero 0 stack zero 0

character_test$1:	; parameter string_ascii2025i0A#, offset 49
	mov qword [rbp + 49], string_ascii2025i0A#

character_test$2:	; £temporary3302 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$3
	neg al
	neg eax

character_test$3:	; parameter £temporary3302, offset 57
	mov [rbp + 57], eax

character_test$4:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 25], character_test$5
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 4
	jmp printf

character_test$5:	; post call

character_test$6:	; call header integral zero 0 stack zero 0

character_test$7:	; parameter string_islower282725c2729203D2025s0A#, offset 49
	mov qword [rbp + 49], string_islower282725c2729203D2025s0A#

character_test$8:	; £temporary3304 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$9
	neg al
	neg eax

character_test$9:	; parameter £temporary3304, offset 57
	mov [rbp + 57], eax

character_test$10:	; call header integral zero 0 stack zero 0

character_test$11:	; £temporary3305 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$12
	neg al
	neg eax

character_test$12:	; parameter £temporary3305, offset 85
	mov [rbp + 85], eax

character_test$13:	; call function noellipse-noellipse islower
	mov qword [rbp + 61], character_test$14
	mov [rbp + 69], rbp
	add rbp, 61
	jmp islower

character_test$14:	; post call

character_test$15:	; £temporary3306 = return_value

character_test$16:	; if £temporary3306 == int4$0# goto 19
	cmp ebx, 0
	je character_test$19

character_test$17:	; £temporary3308 = string_Yes#
	mov rax, string_Yes#

character_test$18:	; goto 20
	jmp character_test$20

character_test$19:	; £temporary3308 = string_No#
	mov rax, string_No#

character_test$20:	; parameter £temporary3308, offset 61
	mov [rbp + 61], rax

character_test$21:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 25], character_test$22
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

character_test$22:	; post call

character_test$23:	; call header integral zero 0 stack zero 0

character_test$24:	; parameter string_isupper282725c2729203D2025s0A#, offset 49
	mov qword [rbp + 49], string_isupper282725c2729203D2025s0A#

character_test$25:	; £temporary3310 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$26
	neg al
	neg eax

character_test$26:	; parameter £temporary3310, offset 57
	mov [rbp + 57], eax

character_test$27:	; call header integral zero 0 stack zero 0

character_test$28:	; £temporary3311 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$29
	neg al
	neg eax

character_test$29:	; parameter £temporary3311, offset 85
	mov [rbp + 85], eax

character_test$30:	; call function noellipse-noellipse isupper
	mov qword [rbp + 61], character_test$31
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isupper

character_test$31:	; post call

character_test$32:	; £temporary3312 = return_value

character_test$33:	; if £temporary3312 == int4$0# goto 36
	cmp ebx, 0
	je character_test$36

character_test$34:	; £temporary3314 = string_Yes#
	mov rax, string_Yes#

character_test$35:	; goto 37
	jmp character_test$37

character_test$36:	; £temporary3314 = string_No#
	mov rax, string_No#

character_test$37:	; parameter £temporary3314, offset 61
	mov [rbp + 61], rax

character_test$38:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 25], character_test$39
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

character_test$39:	; post call

character_test$40:	; call header integral zero 0 stack zero 0

character_test$41:	; parameter string_isalpha282725c2729203D2025s0A#, offset 49
	mov qword [rbp + 49], string_isalpha282725c2729203D2025s0A#

character_test$42:	; £temporary3316 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$43
	neg al
	neg eax

character_test$43:	; parameter £temporary3316, offset 57
	mov [rbp + 57], eax

character_test$44:	; call header integral zero 0 stack zero 0

character_test$45:	; £temporary3317 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$46
	neg al
	neg eax

character_test$46:	; parameter £temporary3317, offset 85
	mov [rbp + 85], eax

character_test$47:	; call function noellipse-noellipse isalpha
	mov qword [rbp + 61], character_test$48
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isalpha

character_test$48:	; post call

character_test$49:	; £temporary3318 = return_value

character_test$50:	; if £temporary3318 == int4$0# goto 53
	cmp ebx, 0
	je character_test$53

character_test$51:	; £temporary3320 = string_Yes#
	mov rax, string_Yes#

character_test$52:	; goto 54
	jmp character_test$54

character_test$53:	; £temporary3320 = string_No#
	mov rax, string_No#

character_test$54:	; parameter £temporary3320, offset 61
	mov [rbp + 61], rax

character_test$55:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 25], character_test$56
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

character_test$56:	; post call

character_test$57:	; call header integral zero 0 stack zero 0

character_test$58:	; parameter string_isdigit282725c2729203D2025s0A#, offset 49
	mov qword [rbp + 49], string_isdigit282725c2729203D2025s0A#

character_test$59:	; £temporary3322 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$60
	neg al
	neg eax

character_test$60:	; parameter £temporary3322, offset 57
	mov [rbp + 57], eax

character_test$61:	; call header integral zero 0 stack zero 0

character_test$62:	; £temporary3323 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$63
	neg al
	neg eax

character_test$63:	; parameter £temporary3323, offset 85
	mov [rbp + 85], eax

character_test$64:	; call function noellipse-noellipse isdigit
	mov qword [rbp + 61], character_test$65
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isdigit

character_test$65:	; post call

character_test$66:	; £temporary3324 = return_value

character_test$67:	; if £temporary3324 == int4$0# goto 70
	cmp ebx, 0
	je character_test$70

character_test$68:	; £temporary3326 = string_Yes#
	mov rax, string_Yes#

character_test$69:	; goto 71
	jmp character_test$71

character_test$70:	; £temporary3326 = string_No#
	mov rax, string_No#

character_test$71:	; parameter £temporary3326, offset 61
	mov [rbp + 61], rax

character_test$72:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 25], character_test$73
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

character_test$73:	; post call

character_test$74:	; call header integral zero 0 stack zero 0

character_test$75:	; parameter string_isalnum282725c2729203D2025s0A#, offset 49
	mov qword [rbp + 49], string_isalnum282725c2729203D2025s0A#

character_test$76:	; £temporary3328 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$77
	neg al
	neg eax

character_test$77:	; parameter £temporary3328, offset 57
	mov [rbp + 57], eax

character_test$78:	; call header integral zero 0 stack zero 0

character_test$79:	; £temporary3329 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$80
	neg al
	neg eax

character_test$80:	; parameter £temporary3329, offset 85
	mov [rbp + 85], eax

character_test$81:	; call function noellipse-noellipse isalnum
	mov qword [rbp + 61], character_test$82
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isalnum

character_test$82:	; post call

character_test$83:	; £temporary3330 = return_value

character_test$84:	; if £temporary3330 == int4$0# goto 87
	cmp ebx, 0
	je character_test$87

character_test$85:	; £temporary3332 = string_Yes#
	mov rax, string_Yes#

character_test$86:	; goto 88
	jmp character_test$88

character_test$87:	; £temporary3332 = string_No#
	mov rax, string_No#

character_test$88:	; parameter £temporary3332, offset 61
	mov [rbp + 61], rax

character_test$89:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 25], character_test$90
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

character_test$90:	; post call

character_test$91:	; call header integral zero 0 stack zero 0

character_test$92:	; parameter string_isxdigit282725c2729203D2025s0A#, offset 49
	mov qword [rbp + 49], string_isxdigit282725c2729203D2025s0A#

character_test$93:	; £temporary3334 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$94
	neg al
	neg eax

character_test$94:	; parameter £temporary3334, offset 57
	mov [rbp + 57], eax

character_test$95:	; call header integral zero 0 stack zero 0

character_test$96:	; £temporary3335 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$97
	neg al
	neg eax

character_test$97:	; parameter £temporary3335, offset 85
	mov [rbp + 85], eax

character_test$98:	; call function noellipse-noellipse isxdigit
	mov qword [rbp + 61], character_test$99
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isxdigit

character_test$99:	; post call

character_test$100:	; £temporary3336 = return_value

character_test$101:	; if £temporary3336 == int4$0# goto 104
	cmp ebx, 0
	je character_test$104

character_test$102:	; £temporary3338 = string_Yes#
	mov rax, string_Yes#

character_test$103:	; goto 105
	jmp character_test$105

character_test$104:	; £temporary3338 = string_No#
	mov rax, string_No#

character_test$105:	; parameter £temporary3338, offset 61
	mov [rbp + 61], rax

character_test$106:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 25], character_test$107
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

character_test$107:	; post call

character_test$108:	; call header integral zero 0 stack zero 0

character_test$109:	; parameter string_isgraph282725c2729203D2025s0A#, offset 49
	mov qword [rbp + 49], string_isgraph282725c2729203D2025s0A#

character_test$110:	; £temporary3340 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$111
	neg al
	neg eax

character_test$111:	; parameter £temporary3340, offset 57
	mov [rbp + 57], eax

character_test$112:	; call header integral zero 0 stack zero 0

character_test$113:	; £temporary3341 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$114
	neg al
	neg eax

character_test$114:	; parameter £temporary3341, offset 85
	mov [rbp + 85], eax

character_test$115:	; call function noellipse-noellipse isgraph
	mov qword [rbp + 61], character_test$116
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isgraph

character_test$116:	; post call

character_test$117:	; £temporary3342 = return_value

character_test$118:	; if £temporary3342 == int4$0# goto 121
	cmp ebx, 0
	je character_test$121

character_test$119:	; £temporary3344 = string_Yes#
	mov rax, string_Yes#

character_test$120:	; goto 122
	jmp character_test$122

character_test$121:	; £temporary3344 = string_No#
	mov rax, string_No#

character_test$122:	; parameter £temporary3344, offset 61
	mov [rbp + 61], rax

character_test$123:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 25], character_test$124
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

character_test$124:	; post call

character_test$125:	; call header integral zero 0 stack zero 0

character_test$126:	; parameter string_isprint282725c2729203D2025s0A#, offset 49
	mov qword [rbp + 49], string_isprint282725c2729203D2025s0A#

character_test$127:	; £temporary3346 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$128
	neg al
	neg eax

character_test$128:	; parameter £temporary3346, offset 57
	mov [rbp + 57], eax

character_test$129:	; call header integral zero 0 stack zero 0

character_test$130:	; £temporary3347 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$131
	neg al
	neg eax

character_test$131:	; parameter £temporary3347, offset 85
	mov [rbp + 85], eax

character_test$132:	; call function noellipse-noellipse isprint
	mov qword [rbp + 61], character_test$133
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isprint

character_test$133:	; post call

character_test$134:	; £temporary3348 = return_value

character_test$135:	; if £temporary3348 == int4$0# goto 138
	cmp ebx, 0
	je character_test$138

character_test$136:	; £temporary3350 = string_Yes#
	mov rax, string_Yes#

character_test$137:	; goto 139
	jmp character_test$139

character_test$138:	; £temporary3350 = string_No#
	mov rax, string_No#

character_test$139:	; parameter £temporary3350, offset 61
	mov [rbp + 61], rax

character_test$140:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 25], character_test$141
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

character_test$141:	; post call

character_test$142:	; call header integral zero 0 stack zero 0

character_test$143:	; parameter string_ispunct282725c2729203D2025s0A#, offset 49
	mov qword [rbp + 49], string_ispunct282725c2729203D2025s0A#

character_test$144:	; £temporary3352 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$145
	neg al
	neg eax

character_test$145:	; parameter £temporary3352, offset 57
	mov [rbp + 57], eax

character_test$146:	; call header integral zero 0 stack zero 0

character_test$147:	; £temporary3353 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$148
	neg al
	neg eax

character_test$148:	; parameter £temporary3353, offset 85
	mov [rbp + 85], eax

character_test$149:	; call function noellipse-noellipse ispunct
	mov qword [rbp + 61], character_test$150
	mov [rbp + 69], rbp
	add rbp, 61
	jmp ispunct

character_test$150:	; post call

character_test$151:	; £temporary3354 = return_value

character_test$152:	; if £temporary3354 == int4$0# goto 155
	cmp ebx, 0
	je character_test$155

character_test$153:	; £temporary3356 = string_Yes#
	mov rax, string_Yes#

character_test$154:	; goto 156
	jmp character_test$156

character_test$155:	; £temporary3356 = string_No#
	mov rax, string_No#

character_test$156:	; parameter £temporary3356, offset 61
	mov [rbp + 61], rax

character_test$157:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 25], character_test$158
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

character_test$158:	; post call

character_test$159:	; call header integral zero 0 stack zero 0

character_test$160:	; parameter string_iscntrl282725c2729203D2025s0A#, offset 49
	mov qword [rbp + 49], string_iscntrl282725c2729203D2025s0A#

character_test$161:	; £temporary3358 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$162
	neg al
	neg eax

character_test$162:	; parameter £temporary3358, offset 57
	mov [rbp + 57], eax

character_test$163:	; call header integral zero 0 stack zero 0

character_test$164:	; £temporary3359 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$165
	neg al
	neg eax

character_test$165:	; parameter £temporary3359, offset 85
	mov [rbp + 85], eax

character_test$166:	; call function noellipse-noellipse iscntrl
	mov qword [rbp + 61], character_test$167
	mov [rbp + 69], rbp
	add rbp, 61
	jmp iscntrl

character_test$167:	; post call

character_test$168:	; £temporary3360 = return_value

character_test$169:	; if £temporary3360 == int4$0# goto 172
	cmp ebx, 0
	je character_test$172

character_test$170:	; £temporary3362 = string_Yes#
	mov rax, string_Yes#

character_test$171:	; goto 173
	jmp character_test$173

character_test$172:	; £temporary3362 = string_No#
	mov rax, string_No#

character_test$173:	; parameter £temporary3362, offset 61
	mov [rbp + 61], rax

character_test$174:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 25], character_test$175
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

character_test$175:	; post call

character_test$176:	; call header integral zero 0 stack zero 0

character_test$177:	; parameter string_isspace282725c2729203D2025s0A#, offset 49
	mov qword [rbp + 49], string_isspace282725c2729203D2025s0A#

character_test$178:	; £temporary3364 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$179
	neg al
	neg eax

character_test$179:	; parameter £temporary3364, offset 57
	mov [rbp + 57], eax

character_test$180:	; call header integral zero 0 stack zero 0

character_test$181:	; £temporary3365 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$182
	neg al
	neg eax

character_test$182:	; parameter £temporary3365, offset 85
	mov [rbp + 85], eax

character_test$183:	; call function noellipse-noellipse isspace
	mov qword [rbp + 61], character_test$184
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isspace

character_test$184:	; post call

character_test$185:	; £temporary3366 = return_value

character_test$186:	; if £temporary3366 == int4$0# goto 189
	cmp ebx, 0
	je character_test$189

character_test$187:	; £temporary3368 = string_Yes#
	mov rax, string_Yes#

character_test$188:	; goto 190
	jmp character_test$190

character_test$189:	; £temporary3368 = string_No#
	mov rax, string_No#

character_test$190:	; parameter £temporary3368, offset 61
	mov [rbp + 61], rax

character_test$191:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 25], character_test$192
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

character_test$192:	; post call

character_test$193:	; call header integral zero 0 stack zero 0

character_test$194:	; parameter string_tolower282725c2729203D202725c270A#, offset 49
	mov qword [rbp + 49], string_tolower282725c2729203D202725c270A#

character_test$195:	; £temporary3370 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$196
	neg al
	neg eax

character_test$196:	; parameter £temporary3370, offset 57
	mov [rbp + 57], eax

character_test$197:	; call header integral zero 0 stack zero 0

character_test$198:	; £temporary3371 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$199
	neg al
	neg eax

character_test$199:	; parameter £temporary3371, offset 85
	mov [rbp + 85], eax

character_test$200:	; call function noellipse-noellipse tolower
	mov qword [rbp + 61], character_test$201
	mov [rbp + 69], rbp
	add rbp, 61
	jmp tolower

character_test$201:	; post call

character_test$202:	; £temporary3372 = return_value

character_test$203:	; £temporary3373 = int_to_int £temporary3372 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge character_test$204
	neg ebx
	neg bl

character_test$204:	; £temporary3374 = int_to_int £temporary3373 (Signed_Char -> Signed_Int)
	and ebx, 255
	cmp bl, 0
	jge character_test$205
	neg bl
	neg ebx

character_test$205:	; parameter £temporary3374, offset 61
	mov [rbp + 61], ebx

character_test$206:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 25], character_test$207
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 8
	jmp printf

character_test$207:	; post call

character_test$208:	; call header integral zero 0 stack zero 0

character_test$209:	; parameter string_toupper282725c2729203D202725c270A0A#, offset 49
	mov qword [rbp + 49], string_toupper282725c2729203D202725c270A0A#

character_test$210:	; £temporary3376 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$211
	neg al
	neg eax

character_test$211:	; parameter £temporary3376, offset 57
	mov [rbp + 57], eax

character_test$212:	; call header integral zero 0 stack zero 0

character_test$213:	; £temporary3377 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$214
	neg al
	neg eax

character_test$214:	; parameter £temporary3377, offset 85
	mov [rbp + 85], eax

character_test$215:	; call function noellipse-noellipse toupper
	mov qword [rbp + 61], character_test$216
	mov [rbp + 69], rbp
	add rbp, 61
	jmp toupper

character_test$216:	; post call

character_test$217:	; £temporary3378 = return_value

character_test$218:	; £temporary3379 = int_to_int £temporary3378 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge character_test$219
	neg ebx
	neg bl

character_test$219:	; £temporary3380 = int_to_int £temporary3379 (Signed_Char -> Signed_Int)
	and ebx, 255
	cmp bl, 0
	jge character_test$220
	neg bl
	neg ebx

character_test$220:	; parameter £temporary3380, offset 61
	mov [rbp + 61], ebx

character_test$221:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 25], character_test$222
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 8
	jmp printf

character_test$222:	; post call

character_test$223:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

character_test$224:	; function end character_test
section .data

$IntegralStorage#:
	times 8 db 0

string_ascii2025i0A#:
	; init String
	db "ascii %i", 10, 0

string_islower282725c2729203D2025s0A#:
	; init String
	db "islower(", 39, "%c", 39, ") = %s", 10, 0

string_Yes#:
	; init String
	db "Yes", 0

string_No#:
	; init String
	db "No", 0

string_isupper282725c2729203D2025s0A#:
	; init String
	db "isupper(", 39, "%c", 39, ") = %s", 10, 0

string_isalpha282725c2729203D2025s0A#:
	; init String
	db "isalpha(", 39, "%c", 39, ") = %s", 10, 0

string_isdigit282725c2729203D2025s0A#:
	; init String
	db "isdigit(", 39, "%c", 39, ") = %s", 10, 0

string_isalnum282725c2729203D2025s0A#:
	; init String
	db "isalnum(", 39, "%c", 39, ") = %s", 10, 0

string_isxdigit282725c2729203D2025s0A#:
	; init String
	db "isxdigit(", 39, "%c", 39, ") = %s", 10, 0

string_isgraph282725c2729203D2025s0A#:
	; init String
	db "isgraph(", 39, "%c", 39, ") = %s", 10, 0

string_isprint282725c2729203D2025s0A#:
	; init String
	db "isprint(", 39, "%c", 39, ") = %s", 10, 0

string_ispunct282725c2729203D2025s0A#:
	; init String
	db "ispunct(", 39, "%c", 39, ") = %s", 10, 0

string_iscntrl282725c2729203D2025s0A#:
	; init String
	db "iscntrl(", 39, "%c", 39, ") = %s", 10, 0

string_isspace282725c2729203D2025s0A#:
	; init String
	db "isspace(", 39, "%c", 39, ") = %s", 10, 0

string_tolower282725c2729203D202725c270A#:
	; init String
	db "tolower(", 39, "%c", 39, ") = ", 39, "%c", 39, 10, 0

string_toupper282725c2729203D202725c270A0A#:
	; init String
	db "toupper(", 39, "%c", 39, ") = ", 39, "%c", 39, 10, 10, 0
