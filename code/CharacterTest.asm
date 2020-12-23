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

@9364$string_ascii2025i0A#:
	; Initializer String ascii %i\n
	db "ascii %i", 10, 0

section .data

@9365$string_islower282725c2729203D2025s0A#:
	; Initializer String islower('%c') = %s\n
	db "islower(", 39, "%c", 39, ") = %s", 10, 0

section .data

@9368$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@9369$string_No#:
	; Initializer String No
	db "No", 0

section .data

@9370$string_isupper282725c2729203D2025s0A#:
	; Initializer String isupper('%c') = %s\n
	db "isupper(", 39, "%c", 39, ") = %s", 10, 0

section .data

@9373$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@9374$string_No#:
	; Initializer String No
	db "No", 0

section .data

@9375$string_isalpha282725c2729203D2025s0A#:
	; Initializer String isalpha('%c') = %s\n
	db "isalpha(", 39, "%c", 39, ") = %s", 10, 0

section .data

@9378$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@9379$string_No#:
	; Initializer String No
	db "No", 0

section .data

@9380$string_isdigit282725c2729203D2025s0A#:
	; Initializer String isdigit('%c') = %s\n
	db "isdigit(", 39, "%c", 39, ") = %s", 10, 0

section .data

@9383$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@9384$string_No#:
	; Initializer String No
	db "No", 0

section .data

@9385$string_isalnum282725c2729203D2025s0A#:
	; Initializer String isalnum('%c') = %s\n
	db "isalnum(", 39, "%c", 39, ") = %s", 10, 0

section .data

@9388$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@9389$string_No#:
	; Initializer String No
	db "No", 0

section .data

@9390$string_isxdigit282725c2729203D2025s0A#:
	; Initializer String isxdigit('%c') = %s\n
	db "isxdigit(", 39, "%c", 39, ") = %s", 10, 0

section .data

@9393$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@9394$string_No#:
	; Initializer String No
	db "No", 0

section .data

@9395$string_isgraph282725c2729203D2025s0A#:
	; Initializer String isgraph('%c') = %s\n
	db "isgraph(", 39, "%c", 39, ") = %s", 10, 0

section .data

@9398$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@9399$string_No#:
	; Initializer String No
	db "No", 0

section .data

@9400$string_isprint282725c2729203D2025s0A#:
	; Initializer String isprint('%c') = %s\n
	db "isprint(", 39, "%c", 39, ") = %s", 10, 0

section .data

@9403$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@9404$string_No#:
	; Initializer String No
	db "No", 0

section .data

@9405$string_ispunct282725c2729203D2025s0A#:
	; Initializer String ispunct('%c') = %s\n
	db "ispunct(", 39, "%c", 39, ") = %s", 10, 0

section .data

@9408$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@9409$string_No#:
	; Initializer String No
	db "No", 0

section .data

@9410$string_iscntrl282725c2729203D2025s0A#:
	; Initializer String iscntrl('%c') = %s\n
	db "iscntrl(", 39, "%c", 39, ") = %s", 10, 0

section .data

@9413$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@9414$string_No#:
	; Initializer String No
	db "No", 0

section .data

@9415$string_isspace282725c2729203D2025s0A#:
	; Initializer String isspace('%c') = %s\n
	db "isspace(", 39, "%c", 39, ") = %s", 10, 0

section .data

@9418$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@9419$string_No#:
	; Initializer String No
	db "No", 0

section .data

@9420$string_tolower282725c2729203D202725c270A#:
	; Initializer String tolower('%c') = '%c'\n
	db "tolower(", 39, "%c", 39, ") = ", 39, "%c", 39, 10, 0

section .data

@9421$string_toupper282725c2729203D202725c270A0A#:
	; Initializer String toupper('%c') = '%c'\n\n
	db "toupper(", 39, "%c", 39, ") = ", 39, "%c", 39, 10, 10, 0

section .text

 character_testX:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$1:
	; Parameter 49 pointer "ascii %i\n"
	mov qword [rbp + 49], @9364$string_ascii2025i0A#

 character_testX$2:
	; IntegralToIntegral £temporary3418 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$3
	neg al
	neg eax

 character_testX$3:
	; Parameter 57 signedint £temporary3418
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
	; Parameter 49 pointer "islower('%c') = %s\n"
	mov qword [rbp + 49], @9365$string_islower282725c2729203D2025s0A#

 character_testX$8:
	; IntegralToIntegral £temporary3420 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$9
	neg al
	neg eax

 character_testX$9:
	; Parameter 57 signedint £temporary3420
	mov [rbp + 57], eax

 character_testX$10:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$11:
	; IntegralToIntegral £temporary3421 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$12
	neg al
	neg eax

 character_testX$12:
	; Parameter 85 signedint £temporary3421
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
	; GetReturnValue £temporary3422

 character_testX$16:
	; Equal 19 £temporary3422 0
	cmp ebx, 0
	je character_testX$19

 character_testX$17:
	; Assign £temporary3424 "Yes"
	mov eax, @9368$string_Yes#

 character_testX$18:
	; Jump 20
	jmp character_testX$20

 character_testX$19:
	; Assign £temporary3424 "No"
	mov eax, @9369$string_No#

 character_testX$20:
	; Parameter 61 pointer £temporary3424
	mov [rbp + 61], eax

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
	; Parameter 49 pointer "isupper('%c') = %s\n"
	mov qword [rbp + 49], @9370$string_isupper282725c2729203D2025s0A#

 character_testX$25:
	; IntegralToIntegral £temporary3426 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$26
	neg al
	neg eax

 character_testX$26:
	; Parameter 57 signedint £temporary3426
	mov [rbp + 57], eax

 character_testX$27:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$28:
	; IntegralToIntegral £temporary3427 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$29
	neg al
	neg eax

 character_testX$29:
	; Parameter 85 signedint £temporary3427
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
	; GetReturnValue £temporary3428

 character_testX$33:
	; Equal 36 £temporary3428 0
	cmp ebx, 0
	je character_testX$36

 character_testX$34:
	; Assign £temporary3430 "Yes"
	mov eax, @9373$string_Yes#

 character_testX$35:
	; Jump 37
	jmp character_testX$37

 character_testX$36:
	; Assign £temporary3430 "No"
	mov eax, @9374$string_No#

 character_testX$37:
	; Parameter 61 pointer £temporary3430
	mov [rbp + 61], eax

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
	; Parameter 49 pointer "isalpha('%c') = %s\n"
	mov qword [rbp + 49], @9375$string_isalpha282725c2729203D2025s0A#

 character_testX$42:
	; IntegralToIntegral £temporary3432 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$43
	neg al
	neg eax

 character_testX$43:
	; Parameter 57 signedint £temporary3432
	mov [rbp + 57], eax

 character_testX$44:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$45:
	; IntegralToIntegral £temporary3433 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$46
	neg al
	neg eax

 character_testX$46:
	; Parameter 85 signedint £temporary3433
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
	; GetReturnValue £temporary3434

 character_testX$50:
	; Equal 53 £temporary3434 0
	cmp ebx, 0
	je character_testX$53

 character_testX$51:
	; Assign £temporary3436 "Yes"
	mov eax, @9378$string_Yes#

 character_testX$52:
	; Jump 54
	jmp character_testX$54

 character_testX$53:
	; Assign £temporary3436 "No"
	mov eax, @9379$string_No#

 character_testX$54:
	; Parameter 61 pointer £temporary3436
	mov [rbp + 61], eax

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
	; Parameter 49 pointer "isdigit('%c') = %s\n"
	mov qword [rbp + 49], @9380$string_isdigit282725c2729203D2025s0A#

 character_testX$59:
	; IntegralToIntegral £temporary3438 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$60
	neg al
	neg eax

 character_testX$60:
	; Parameter 57 signedint £temporary3438
	mov [rbp + 57], eax

 character_testX$61:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$62:
	; IntegralToIntegral £temporary3439 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$63
	neg al
	neg eax

 character_testX$63:
	; Parameter 85 signedint £temporary3439
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
	; GetReturnValue £temporary3440

 character_testX$67:
	; Equal 70 £temporary3440 0
	cmp ebx, 0
	je character_testX$70

 character_testX$68:
	; Assign £temporary3442 "Yes"
	mov eax, @9383$string_Yes#

 character_testX$69:
	; Jump 71
	jmp character_testX$71

 character_testX$70:
	; Assign £temporary3442 "No"
	mov eax, @9384$string_No#

 character_testX$71:
	; Parameter 61 pointer £temporary3442
	mov [rbp + 61], eax

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
	; Parameter 49 pointer "isalnum('%c') = %s\n"
	mov qword [rbp + 49], @9385$string_isalnum282725c2729203D2025s0A#

 character_testX$76:
	; IntegralToIntegral £temporary3444 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$77
	neg al
	neg eax

 character_testX$77:
	; Parameter 57 signedint £temporary3444
	mov [rbp + 57], eax

 character_testX$78:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$79:
	; IntegralToIntegral £temporary3445 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$80
	neg al
	neg eax

 character_testX$80:
	; Parameter 85 signedint £temporary3445
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
	; GetReturnValue £temporary3446

 character_testX$84:
	; Equal 87 £temporary3446 0
	cmp ebx, 0
	je character_testX$87

 character_testX$85:
	; Assign £temporary3448 "Yes"
	mov eax, @9388$string_Yes#

 character_testX$86:
	; Jump 88
	jmp character_testX$88

 character_testX$87:
	; Assign £temporary3448 "No"
	mov eax, @9389$string_No#

 character_testX$88:
	; Parameter 61 pointer £temporary3448
	mov [rbp + 61], eax

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
	; Parameter 49 pointer "isxdigit('%c') = %s\n"
	mov qword [rbp + 49], @9390$string_isxdigit282725c2729203D2025s0A#

 character_testX$93:
	; IntegralToIntegral £temporary3450 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$94
	neg al
	neg eax

 character_testX$94:
	; Parameter 57 signedint £temporary3450
	mov [rbp + 57], eax

 character_testX$95:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$96:
	; IntegralToIntegral £temporary3451 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$97
	neg al
	neg eax

 character_testX$97:
	; Parameter 85 signedint £temporary3451
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
	; GetReturnValue £temporary3452

 character_testX$101:
	; Equal 104 £temporary3452 0
	cmp ebx, 0
	je character_testX$104

 character_testX$102:
	; Assign £temporary3454 "Yes"
	mov eax, @9393$string_Yes#

 character_testX$103:
	; Jump 105
	jmp character_testX$105

 character_testX$104:
	; Assign £temporary3454 "No"
	mov eax, @9394$string_No#

 character_testX$105:
	; Parameter 61 pointer £temporary3454
	mov [rbp + 61], eax

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
	; Parameter 49 pointer "isgraph('%c') = %s\n"
	mov qword [rbp + 49], @9395$string_isgraph282725c2729203D2025s0A#

 character_testX$110:
	; IntegralToIntegral £temporary3456 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$111
	neg al
	neg eax

 character_testX$111:
	; Parameter 57 signedint £temporary3456
	mov [rbp + 57], eax

 character_testX$112:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$113:
	; IntegralToIntegral £temporary3457 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$114
	neg al
	neg eax

 character_testX$114:
	; Parameter 85 signedint £temporary3457
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
	; GetReturnValue £temporary3458

 character_testX$118:
	; Equal 121 £temporary3458 0
	cmp ebx, 0
	je character_testX$121

 character_testX$119:
	; Assign £temporary3460 "Yes"
	mov eax, @9398$string_Yes#

 character_testX$120:
	; Jump 122
	jmp character_testX$122

 character_testX$121:
	; Assign £temporary3460 "No"
	mov eax, @9399$string_No#

 character_testX$122:
	; Parameter 61 pointer £temporary3460
	mov [rbp + 61], eax

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
	; Parameter 49 pointer "isprint('%c') = %s\n"
	mov qword [rbp + 49], @9400$string_isprint282725c2729203D2025s0A#

 character_testX$127:
	; IntegralToIntegral £temporary3462 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$128
	neg al
	neg eax

 character_testX$128:
	; Parameter 57 signedint £temporary3462
	mov [rbp + 57], eax

 character_testX$129:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$130:
	; IntegralToIntegral £temporary3463 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$131
	neg al
	neg eax

 character_testX$131:
	; Parameter 85 signedint £temporary3463
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
	; GetReturnValue £temporary3464

 character_testX$135:
	; Equal 138 £temporary3464 0
	cmp ebx, 0
	je character_testX$138

 character_testX$136:
	; Assign £temporary3466 "Yes"
	mov eax, @9403$string_Yes#

 character_testX$137:
	; Jump 139
	jmp character_testX$139

 character_testX$138:
	; Assign £temporary3466 "No"
	mov eax, @9404$string_No#

 character_testX$139:
	; Parameter 61 pointer £temporary3466
	mov [rbp + 61], eax

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
	; Parameter 49 pointer "ispunct('%c') = %s\n"
	mov qword [rbp + 49], @9405$string_ispunct282725c2729203D2025s0A#

 character_testX$144:
	; IntegralToIntegral £temporary3468 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$145
	neg al
	neg eax

 character_testX$145:
	; Parameter 57 signedint £temporary3468
	mov [rbp + 57], eax

 character_testX$146:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$147:
	; IntegralToIntegral £temporary3469 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$148
	neg al
	neg eax

 character_testX$148:
	; Parameter 85 signedint £temporary3469
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
	; GetReturnValue £temporary3470

 character_testX$152:
	; Equal 155 £temporary3470 0
	cmp ebx, 0
	je character_testX$155

 character_testX$153:
	; Assign £temporary3472 "Yes"
	mov eax, @9408$string_Yes#

 character_testX$154:
	; Jump 156
	jmp character_testX$156

 character_testX$155:
	; Assign £temporary3472 "No"
	mov eax, @9409$string_No#

 character_testX$156:
	; Parameter 61 pointer £temporary3472
	mov [rbp + 61], eax

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
	; Parameter 49 pointer "iscntrl('%c') = %s\n"
	mov qword [rbp + 49], @9410$string_iscntrl282725c2729203D2025s0A#

 character_testX$161:
	; IntegralToIntegral £temporary3474 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$162
	neg al
	neg eax

 character_testX$162:
	; Parameter 57 signedint £temporary3474
	mov [rbp + 57], eax

 character_testX$163:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$164:
	; IntegralToIntegral £temporary3475 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$165
	neg al
	neg eax

 character_testX$165:
	; Parameter 85 signedint £temporary3475
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
	; GetReturnValue £temporary3476

 character_testX$169:
	; Equal 172 £temporary3476 0
	cmp ebx, 0
	je character_testX$172

 character_testX$170:
	; Assign £temporary3478 "Yes"
	mov eax, @9413$string_Yes#

 character_testX$171:
	; Jump 173
	jmp character_testX$173

 character_testX$172:
	; Assign £temporary3478 "No"
	mov eax, @9414$string_No#

 character_testX$173:
	; Parameter 61 pointer £temporary3478
	mov [rbp + 61], eax

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
	; Parameter 49 pointer "isspace('%c') = %s\n"
	mov qword [rbp + 49], @9415$string_isspace282725c2729203D2025s0A#

 character_testX$178:
	; IntegralToIntegral £temporary3480 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$179
	neg al
	neg eax

 character_testX$179:
	; Parameter 57 signedint £temporary3480
	mov [rbp + 57], eax

 character_testX$180:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$181:
	; IntegralToIntegral £temporary3481 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$182
	neg al
	neg eax

 character_testX$182:
	; Parameter 85 signedint £temporary3481
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
	; GetReturnValue £temporary3482

 character_testX$186:
	; Equal 189 £temporary3482 0
	cmp ebx, 0
	je character_testX$189

 character_testX$187:
	; Assign £temporary3484 "Yes"
	mov eax, @9418$string_Yes#

 character_testX$188:
	; Jump 190
	jmp character_testX$190

 character_testX$189:
	; Assign £temporary3484 "No"
	mov eax, @9419$string_No#

 character_testX$190:
	; Parameter 61 pointer £temporary3484
	mov [rbp + 61], eax

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
	; Parameter 49 pointer "tolower('%c') = '%c'\n"
	mov qword [rbp + 49], @9420$string_tolower282725c2729203D202725c270A#

 character_testX$195:
	; IntegralToIntegral £temporary3486 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$196
	neg al
	neg eax

 character_testX$196:
	; Parameter 57 signedint £temporary3486
	mov [rbp + 57], eax

 character_testX$197:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$198:
	; IntegralToIntegral £temporary3487 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$199
	neg al
	neg eax

 character_testX$199:
	; Parameter 85 signedint £temporary3487
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
	; GetReturnValue £temporary3488

 character_testX$203:
	; IntegralToIntegral £temporary3489 £temporary3488
	cmp ebx, 0
	jge character_testX$204
	neg ebx
	neg bl

 character_testX$204:
	; IntegralToIntegral £temporary3490 £temporary3489
	and ebx, 255
	cmp bl, 0
	jge character_testX$205
	neg bl
	neg ebx

 character_testX$205:
	; Parameter 61 signedint £temporary3490
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
	; Parameter 49 pointer "toupper('%c') = '%c'\n\n"
	mov qword [rbp + 49], @9421$string_toupper282725c2729203D202725c270A0A#

 character_testX$210:
	; IntegralToIntegral £temporary3492 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$211
	neg al
	neg eax

 character_testX$211:
	; Parameter 57 signedint £temporary3492
	mov [rbp + 57], eax

 character_testX$212:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$213:
	; IntegralToIntegral £temporary3493 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$214
	neg al
	neg eax

 character_testX$214:
	; Parameter 85 signedint £temporary3493
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
	; GetReturnValue £temporary3494

 character_testX$218:
	; IntegralToIntegral £temporary3495 £temporary3494
	cmp ebx, 0
	jge character_testX$219
	neg ebx
	neg bl

 character_testX$219:
	; IntegralToIntegral £temporary3496 £temporary3495
	and ebx, 255
	cmp bl, 0
	jge character_testX$220
	neg bl
	neg ebx

 character_testX$220:
	; Parameter 61 signedint £temporary3496
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
	; Parameter 48 signedchar 97
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
	; Parameter 48 signedchar 66
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
	; Parameter 48 signedchar 49
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
	; Parameter 48 signedchar 46
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
	; Parameter 48 signedchar 10
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
	; Parameter 48 signedchar 102
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
	; Parameter 48 signedchar 103
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
