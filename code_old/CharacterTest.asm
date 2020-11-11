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

string_ascii2025i0A#:
	; Initializer String ascii %i\n
	db "ascii %i", 10, 0

section .data

string_islower282725c2729203D2025s0A#:
	; Initializer String islower('%c') = %s\n
	db "islower(", 39, "%c", 39, ") = %s", 10, 0

section .data

string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

string_No#:
	; Initializer String No
	db "No", 0

section .data

string_isupper282725c2729203D2025s0A#:
	; Initializer String isupper('%c') = %s\n
	db "isupper(", 39, "%c", 39, ") = %s", 10, 0

section .data

string_isalpha282725c2729203D2025s0A#:
	; Initializer String isalpha('%c') = %s\n
	db "isalpha(", 39, "%c", 39, ") = %s", 10, 0

section .data

string_isdigit282725c2729203D2025s0A#:
	; Initializer String isdigit('%c') = %s\n
	db "isdigit(", 39, "%c", 39, ") = %s", 10, 0

section .data

string_isalnum282725c2729203D2025s0A#:
	; Initializer String isalnum('%c') = %s\n
	db "isalnum(", 39, "%c", 39, ") = %s", 10, 0

section .data

string_isxdigit282725c2729203D2025s0A#:
	; Initializer String isxdigit('%c') = %s\n
	db "isxdigit(", 39, "%c", 39, ") = %s", 10, 0

section .data

string_isgraph282725c2729203D2025s0A#:
	; Initializer String isgraph('%c') = %s\n
	db "isgraph(", 39, "%c", 39, ") = %s", 10, 0

section .data

string_isprint282725c2729203D2025s0A#:
	; Initializer String isprint('%c') = %s\n
	db "isprint(", 39, "%c", 39, ") = %s", 10, 0

section .data

string_ispunct282725c2729203D2025s0A#:
	; Initializer String ispunct('%c') = %s\n
	db "ispunct(", 39, "%c", 39, ") = %s", 10, 0

section .data

string_iscntrl282725c2729203D2025s0A#:
	; Initializer String iscntrl('%c') = %s\n
	db "iscntrl(", 39, "%c", 39, ") = %s", 10, 0

section .data

string_isspace282725c2729203D2025s0A#:
	; Initializer String isspace('%c') = %s\n
	db "isspace(", 39, "%c", 39, ") = %s", 10, 0

section .data

string_tolower282725c2729203D202725c270A#:
	; Initializer String tolower('%c') = '%c'\n
	db "tolower(", 39, "%c", 39, ") = ", 39, "%c", 39, 10, 0

section .data

string_toupper282725c2729203D202725c270A0A#:
	; Initializer String toupper('%c') = '%c'\n\n
	db "toupper(", 39, "%c", 39, ") = ", 39, "%c", 39, 10, 10, 0

section .text

 character_test:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$1:
	; Parameter pointer "ascii %i\n" 49
	mov qword [rbp + 49], string_ascii2025i0A#

 character_test$2:
	; IntegralToIntegral £temporary3494 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$3
	neg al
	neg eax

 character_test$3:
	; Parameter signedint £temporary3494 57
	mov [rbp + 57], eax

 character_test$4:
	; Call printf 25 4
	mov qword [rbp + 25], character_test$5
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 4
	jmp printf

 character_test$5:
	; PostCall 25

 character_test$6:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$7:
	; Parameter pointer "islower('%c') = %s\n" 49
	mov qword [rbp + 49], string_islower282725c2729203D2025s0A#

 character_test$8:
	; IntegralToIntegral £temporary3496 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$9
	neg al
	neg eax

 character_test$9:
	; Parameter signedint £temporary3496 57
	mov [rbp + 57], eax

 character_test$10:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$11:
	; IntegralToIntegral £temporary3497 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$12
	neg al
	neg eax

 character_test$12:
	; Parameter signedint £temporary3497 85
	mov [rbp + 85], eax

 character_test$13:
	; Call islower 61 0
	mov qword [rbp + 61], character_test$14
	mov [rbp + 69], rbp
	add rbp, 61
	jmp islower

 character_test$14:
	; PostCall 61

 character_test$15:
	; GetReturnValue £temporary3498

 character_test$16:
	; Equal 19 £temporary3498 0
	cmp ebx, 0
	je character_test$19

 character_test$17:
	; Assign £temporary3500 "Yes"
	mov rax, string_Yes#

 character_test$18:
	; Goto 20
	jmp character_test$20

 character_test$19:
	; Assign £temporary3500 "No"
	mov rax, string_No#

 character_test$20:
	; Parameter pointer £temporary3500 61
	mov [rbp + 61], rax

 character_test$21:
	; Call printf 25 12
	mov qword [rbp + 25], character_test$22
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_test$22:
	; PostCall 25

 character_test$23:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$24:
	; Parameter pointer "isupper('%c') = %s\n" 49
	mov qword [rbp + 49], string_isupper282725c2729203D2025s0A#

 character_test$25:
	; IntegralToIntegral £temporary3502 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$26
	neg al
	neg eax

 character_test$26:
	; Parameter signedint £temporary3502 57
	mov [rbp + 57], eax

 character_test$27:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$28:
	; IntegralToIntegral £temporary3503 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$29
	neg al
	neg eax

 character_test$29:
	; Parameter signedint £temporary3503 85
	mov [rbp + 85], eax

 character_test$30:
	; Call isupper 61 0
	mov qword [rbp + 61], character_test$31
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isupper

 character_test$31:
	; PostCall 61

 character_test$32:
	; GetReturnValue £temporary3504

 character_test$33:
	; Equal 36 £temporary3504 0
	cmp ebx, 0
	je character_test$36

 character_test$34:
	; Assign £temporary3506 "Yes"
	mov rax, string_Yes#

 character_test$35:
	; Goto 37
	jmp character_test$37

 character_test$36:
	; Assign £temporary3506 "No"
	mov rax, string_No#

 character_test$37:
	; Parameter pointer £temporary3506 61
	mov [rbp + 61], rax

 character_test$38:
	; Call printf 25 12
	mov qword [rbp + 25], character_test$39
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_test$39:
	; PostCall 25

 character_test$40:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$41:
	; Parameter pointer "isalpha('%c') = %s\n" 49
	mov qword [rbp + 49], string_isalpha282725c2729203D2025s0A#

 character_test$42:
	; IntegralToIntegral £temporary3508 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$43
	neg al
	neg eax

 character_test$43:
	; Parameter signedint £temporary3508 57
	mov [rbp + 57], eax

 character_test$44:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$45:
	; IntegralToIntegral £temporary3509 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$46
	neg al
	neg eax

 character_test$46:
	; Parameter signedint £temporary3509 85
	mov [rbp + 85], eax

 character_test$47:
	; Call isalpha 61 0
	mov qword [rbp + 61], character_test$48
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isalpha

 character_test$48:
	; PostCall 61

 character_test$49:
	; GetReturnValue £temporary3510

 character_test$50:
	; Equal 53 £temporary3510 0
	cmp ebx, 0
	je character_test$53

 character_test$51:
	; Assign £temporary3512 "Yes"
	mov rax, string_Yes#

 character_test$52:
	; Goto 54
	jmp character_test$54

 character_test$53:
	; Assign £temporary3512 "No"
	mov rax, string_No#

 character_test$54:
	; Parameter pointer £temporary3512 61
	mov [rbp + 61], rax

 character_test$55:
	; Call printf 25 12
	mov qword [rbp + 25], character_test$56
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_test$56:
	; PostCall 25

 character_test$57:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$58:
	; Parameter pointer "isdigit('%c') = %s\n" 49
	mov qword [rbp + 49], string_isdigit282725c2729203D2025s0A#

 character_test$59:
	; IntegralToIntegral £temporary3514 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$60
	neg al
	neg eax

 character_test$60:
	; Parameter signedint £temporary3514 57
	mov [rbp + 57], eax

 character_test$61:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$62:
	; IntegralToIntegral £temporary3515 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$63
	neg al
	neg eax

 character_test$63:
	; Parameter signedint £temporary3515 85
	mov [rbp + 85], eax

 character_test$64:
	; Call isdigit 61 0
	mov qword [rbp + 61], character_test$65
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isdigit

 character_test$65:
	; PostCall 61

 character_test$66:
	; GetReturnValue £temporary3516

 character_test$67:
	; Equal 70 £temporary3516 0
	cmp ebx, 0
	je character_test$70

 character_test$68:
	; Assign £temporary3518 "Yes"
	mov rax, string_Yes#

 character_test$69:
	; Goto 71
	jmp character_test$71

 character_test$70:
	; Assign £temporary3518 "No"
	mov rax, string_No#

 character_test$71:
	; Parameter pointer £temporary3518 61
	mov [rbp + 61], rax

 character_test$72:
	; Call printf 25 12
	mov qword [rbp + 25], character_test$73
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_test$73:
	; PostCall 25

 character_test$74:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$75:
	; Parameter pointer "isalnum('%c') = %s\n" 49
	mov qword [rbp + 49], string_isalnum282725c2729203D2025s0A#

 character_test$76:
	; IntegralToIntegral £temporary3520 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$77
	neg al
	neg eax

 character_test$77:
	; Parameter signedint £temporary3520 57
	mov [rbp + 57], eax

 character_test$78:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$79:
	; IntegralToIntegral £temporary3521 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$80
	neg al
	neg eax

 character_test$80:
	; Parameter signedint £temporary3521 85
	mov [rbp + 85], eax

 character_test$81:
	; Call isalnum 61 0
	mov qword [rbp + 61], character_test$82
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isalnum

 character_test$82:
	; PostCall 61

 character_test$83:
	; GetReturnValue £temporary3522

 character_test$84:
	; Equal 87 £temporary3522 0
	cmp ebx, 0
	je character_test$87

 character_test$85:
	; Assign £temporary3524 "Yes"
	mov rax, string_Yes#

 character_test$86:
	; Goto 88
	jmp character_test$88

 character_test$87:
	; Assign £temporary3524 "No"
	mov rax, string_No#

 character_test$88:
	; Parameter pointer £temporary3524 61
	mov [rbp + 61], rax

 character_test$89:
	; Call printf 25 12
	mov qword [rbp + 25], character_test$90
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_test$90:
	; PostCall 25

 character_test$91:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$92:
	; Parameter pointer "isxdigit('%c') = %s\n" 49
	mov qword [rbp + 49], string_isxdigit282725c2729203D2025s0A#

 character_test$93:
	; IntegralToIntegral £temporary3526 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$94
	neg al
	neg eax

 character_test$94:
	; Parameter signedint £temporary3526 57
	mov [rbp + 57], eax

 character_test$95:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$96:
	; IntegralToIntegral £temporary3527 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$97
	neg al
	neg eax

 character_test$97:
	; Parameter signedint £temporary3527 85
	mov [rbp + 85], eax

 character_test$98:
	; Call isxdigit 61 0
	mov qword [rbp + 61], character_test$99
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isxdigit

 character_test$99:
	; PostCall 61

 character_test$100:
	; GetReturnValue £temporary3528

 character_test$101:
	; Equal 104 £temporary3528 0
	cmp ebx, 0
	je character_test$104

 character_test$102:
	; Assign £temporary3530 "Yes"
	mov rax, string_Yes#

 character_test$103:
	; Goto 105
	jmp character_test$105

 character_test$104:
	; Assign £temporary3530 "No"
	mov rax, string_No#

 character_test$105:
	; Parameter pointer £temporary3530 61
	mov [rbp + 61], rax

 character_test$106:
	; Call printf 25 12
	mov qword [rbp + 25], character_test$107
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_test$107:
	; PostCall 25

 character_test$108:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$109:
	; Parameter pointer "isgraph('%c') = %s\n" 49
	mov qword [rbp + 49], string_isgraph282725c2729203D2025s0A#

 character_test$110:
	; IntegralToIntegral £temporary3532 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$111
	neg al
	neg eax

 character_test$111:
	; Parameter signedint £temporary3532 57
	mov [rbp + 57], eax

 character_test$112:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$113:
	; IntegralToIntegral £temporary3533 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$114
	neg al
	neg eax

 character_test$114:
	; Parameter signedint £temporary3533 85
	mov [rbp + 85], eax

 character_test$115:
	; Call isgraph 61 0
	mov qword [rbp + 61], character_test$116
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isgraph

 character_test$116:
	; PostCall 61

 character_test$117:
	; GetReturnValue £temporary3534

 character_test$118:
	; Equal 121 £temporary3534 0
	cmp ebx, 0
	je character_test$121

 character_test$119:
	; Assign £temporary3536 "Yes"
	mov rax, string_Yes#

 character_test$120:
	; Goto 122
	jmp character_test$122

 character_test$121:
	; Assign £temporary3536 "No"
	mov rax, string_No#

 character_test$122:
	; Parameter pointer £temporary3536 61
	mov [rbp + 61], rax

 character_test$123:
	; Call printf 25 12
	mov qword [rbp + 25], character_test$124
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_test$124:
	; PostCall 25

 character_test$125:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$126:
	; Parameter pointer "isprint('%c') = %s\n" 49
	mov qword [rbp + 49], string_isprint282725c2729203D2025s0A#

 character_test$127:
	; IntegralToIntegral £temporary3538 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$128
	neg al
	neg eax

 character_test$128:
	; Parameter signedint £temporary3538 57
	mov [rbp + 57], eax

 character_test$129:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$130:
	; IntegralToIntegral £temporary3539 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$131
	neg al
	neg eax

 character_test$131:
	; Parameter signedint £temporary3539 85
	mov [rbp + 85], eax

 character_test$132:
	; Call isprint 61 0
	mov qword [rbp + 61], character_test$133
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isprint

 character_test$133:
	; PostCall 61

 character_test$134:
	; GetReturnValue £temporary3540

 character_test$135:
	; Equal 138 £temporary3540 0
	cmp ebx, 0
	je character_test$138

 character_test$136:
	; Assign £temporary3542 "Yes"
	mov rax, string_Yes#

 character_test$137:
	; Goto 139
	jmp character_test$139

 character_test$138:
	; Assign £temporary3542 "No"
	mov rax, string_No#

 character_test$139:
	; Parameter pointer £temporary3542 61
	mov [rbp + 61], rax

 character_test$140:
	; Call printf 25 12
	mov qword [rbp + 25], character_test$141
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_test$141:
	; PostCall 25

 character_test$142:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$143:
	; Parameter pointer "ispunct('%c') = %s\n" 49
	mov qword [rbp + 49], string_ispunct282725c2729203D2025s0A#

 character_test$144:
	; IntegralToIntegral £temporary3544 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$145
	neg al
	neg eax

 character_test$145:
	; Parameter signedint £temporary3544 57
	mov [rbp + 57], eax

 character_test$146:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$147:
	; IntegralToIntegral £temporary3545 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$148
	neg al
	neg eax

 character_test$148:
	; Parameter signedint £temporary3545 85
	mov [rbp + 85], eax

 character_test$149:
	; Call ispunct 61 0
	mov qword [rbp + 61], character_test$150
	mov [rbp + 69], rbp
	add rbp, 61
	jmp ispunct

 character_test$150:
	; PostCall 61

 character_test$151:
	; GetReturnValue £temporary3546

 character_test$152:
	; Equal 155 £temporary3546 0
	cmp ebx, 0
	je character_test$155

 character_test$153:
	; Assign £temporary3548 "Yes"
	mov rax, string_Yes#

 character_test$154:
	; Goto 156
	jmp character_test$156

 character_test$155:
	; Assign £temporary3548 "No"
	mov rax, string_No#

 character_test$156:
	; Parameter pointer £temporary3548 61
	mov [rbp + 61], rax

 character_test$157:
	; Call printf 25 12
	mov qword [rbp + 25], character_test$158
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_test$158:
	; PostCall 25

 character_test$159:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$160:
	; Parameter pointer "iscntrl('%c') = %s\n" 49
	mov qword [rbp + 49], string_iscntrl282725c2729203D2025s0A#

 character_test$161:
	; IntegralToIntegral £temporary3550 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$162
	neg al
	neg eax

 character_test$162:
	; Parameter signedint £temporary3550 57
	mov [rbp + 57], eax

 character_test$163:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$164:
	; IntegralToIntegral £temporary3551 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$165
	neg al
	neg eax

 character_test$165:
	; Parameter signedint £temporary3551 85
	mov [rbp + 85], eax

 character_test$166:
	; Call iscntrl 61 0
	mov qword [rbp + 61], character_test$167
	mov [rbp + 69], rbp
	add rbp, 61
	jmp iscntrl

 character_test$167:
	; PostCall 61

 character_test$168:
	; GetReturnValue £temporary3552

 character_test$169:
	; Equal 172 £temporary3552 0
	cmp ebx, 0
	je character_test$172

 character_test$170:
	; Assign £temporary3554 "Yes"
	mov rax, string_Yes#

 character_test$171:
	; Goto 173
	jmp character_test$173

 character_test$172:
	; Assign £temporary3554 "No"
	mov rax, string_No#

 character_test$173:
	; Parameter pointer £temporary3554 61
	mov [rbp + 61], rax

 character_test$174:
	; Call printf 25 12
	mov qword [rbp + 25], character_test$175
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_test$175:
	; PostCall 25

 character_test$176:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$177:
	; Parameter pointer "isspace('%c') = %s\n" 49
	mov qword [rbp + 49], string_isspace282725c2729203D2025s0A#

 character_test$178:
	; IntegralToIntegral £temporary3556 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$179
	neg al
	neg eax

 character_test$179:
	; Parameter signedint £temporary3556 57
	mov [rbp + 57], eax

 character_test$180:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$181:
	; IntegralToIntegral £temporary3557 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$182
	neg al
	neg eax

 character_test$182:
	; Parameter signedint £temporary3557 85
	mov [rbp + 85], eax

 character_test$183:
	; Call isspace 61 0
	mov qword [rbp + 61], character_test$184
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isspace

 character_test$184:
	; PostCall 61

 character_test$185:
	; GetReturnValue £temporary3558

 character_test$186:
	; Equal 189 £temporary3558 0
	cmp ebx, 0
	je character_test$189

 character_test$187:
	; Assign £temporary3560 "Yes"
	mov rax, string_Yes#

 character_test$188:
	; Goto 190
	jmp character_test$190

 character_test$189:
	; Assign £temporary3560 "No"
	mov rax, string_No#

 character_test$190:
	; Parameter pointer £temporary3560 61
	mov [rbp + 61], rax

 character_test$191:
	; Call printf 25 12
	mov qword [rbp + 25], character_test$192
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_test$192:
	; PostCall 25

 character_test$193:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$194:
	; Parameter pointer "tolower('%c') = '%c'\n" 49
	mov qword [rbp + 49], string_tolower282725c2729203D202725c270A#

 character_test$195:
	; IntegralToIntegral £temporary3562 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$196
	neg al
	neg eax

 character_test$196:
	; Parameter signedint £temporary3562 57
	mov [rbp + 57], eax

 character_test$197:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$198:
	; IntegralToIntegral £temporary3563 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$199
	neg al
	neg eax

 character_test$199:
	; Parameter signedint £temporary3563 85
	mov [rbp + 85], eax

 character_test$200:
	; Call tolower 61 0
	mov qword [rbp + 61], character_test$201
	mov [rbp + 69], rbp
	add rbp, 61
	jmp tolower

 character_test$201:
	; PostCall 61

 character_test$202:
	; GetReturnValue £temporary3564

 character_test$203:
	; IntegralToIntegral £temporary3565 £temporary3564
	cmp ebx, 0
	jge character_test$204
	neg ebx
	neg bl

 character_test$204:
	; IntegralToIntegral £temporary3566 £temporary3565
	and ebx, 255
	cmp bl, 0
	jge character_test$205
	neg bl
	neg ebx

 character_test$205:
	; Parameter signedint £temporary3566 61
	mov [rbp + 61], ebx

 character_test$206:
	; Call printf 25 8
	mov qword [rbp + 25], character_test$207
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 8
	jmp printf

 character_test$207:
	; PostCall 25

 character_test$208:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$209:
	; Parameter pointer "toupper('%c') = '%c'\n\n" 49
	mov qword [rbp + 49], string_toupper282725c2729203D202725c270A0A#

 character_test$210:
	; IntegralToIntegral £temporary3568 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$211
	neg al
	neg eax

 character_test$211:
	; Parameter signedint £temporary3568 57
	mov [rbp + 57], eax

 character_test$212:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$213:
	; IntegralToIntegral £temporary3569 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_test$214
	neg al
	neg eax

 character_test$214:
	; Parameter signedint £temporary3569 85
	mov [rbp + 85], eax

 character_test$215:
	; Call toupper 61 0
	mov qword [rbp + 61], character_test$216
	mov [rbp + 69], rbp
	add rbp, 61
	jmp toupper

 character_test$216:
	; PostCall 61

 character_test$217:
	; GetReturnValue £temporary3570

 character_test$218:
	; IntegralToIntegral £temporary3571 £temporary3570
	cmp ebx, 0
	jge character_test$219
	neg ebx
	neg bl

 character_test$219:
	; IntegralToIntegral £temporary3572 £temporary3571
	and ebx, 255
	cmp bl, 0
	jge character_test$220
	neg bl
	neg ebx

 character_test$220:
	; Parameter signedint £temporary3572 61
	mov [rbp + 61], ebx

 character_test$221:
	; Call printf 25 8
	mov qword [rbp + 25], character_test$222
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 8
	jmp printf

 character_test$222:
	; PostCall 25

 character_test$223:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 character_test$224:
	; FunctionEnd character_test
