	global atoi
	global atol
	global strtol
	global strtoul
	global atof
	global strtod
	global strtol_test
	global strtoul_test
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
	extern scanUnsignedLongInt
	extern sscanf
	extern printf
	extern errno
	extern $StackTop


section .text

 atoi:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atoi$1:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atoi$2:
	; Parameter 64 pointer integral8$0#
	mov qword [rbp + 64], 0

 atoi$3:
	; Parameter 72 signed int integral4$10#
	mov dword [rbp + 72], 10

 atoi$4:
	; Call 32 strtol 0
	mov qword [rbp + 32], atoi$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atoi$5:
	; PostCall 32

 atoi$6:
	; GetReturnValue £temporary1761

 atoi$7:
	; IntegralToIntegral £temporary1762 £temporary1761
	cmp rbx, 0
	jge atoi$8
	neg rbx
	neg ebx

 atoi$8:
	; SetReturnValue

 atoi$9:
	; Return £temporary1762
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atoi$10:
	; FunctionEnd atoi

section .text

 atol:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atol$1:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atol$2:
	; Parameter 64 pointer integral8$0#
	mov qword [rbp + 64], 0

 atol$3:
	; Parameter 72 signed int integral4$10#
	mov dword [rbp + 72], 10

 atol$4:
	; Call 32 strtol 0
	mov qword [rbp + 32], atol$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atol$5:
	; PostCall 32

 atol$6:
	; GetReturnValue £temporary1763

 atol$7:
	; SetReturnValue

 atol$8:
	; Return £temporary1763
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atol$9:
	; FunctionEnd atol

section .text

 strtol:
	; Assign g_inStatus integral4$1#
	mov dword [g_inStatus], 1

 strtol$1:
	; Assign g_inDevice s
	mov rax, [rbp + 24]
	mov [g_inDevice], rax

 strtol$2:
	; Assign g_inChars integral4$0#
	mov dword [g_inChars], 0

 strtol$3:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol$4:
	; Parameter 68 signed int base
	mov eax, [rbp + 40]
	mov [rbp + 68], eax

 strtol$5:
	; Call 44 scanLongInt 0
	mov qword [rbp + 44], strtol$6
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanLongInt

 strtol$6:
	; PostCall 44

 strtol$7:
	; GetReturnValue £temporary1764

 strtol$8:
	; Assign value £temporary1764
	mov [rbp + 44], rbx

 strtol$9:
	; Equal 13 endp integral8$0#
	cmp qword [rbp + 32], 0
	je strtol$13

 strtol$10:
	; Dereference £temporary1766 endp 0
	mov rsi, [rbp + 32]

 strtol$11:
	; IntegralToIntegral £temporary1767 g_inChars
	mov eax, [g_inChars]
	mov rbx, 4294967295
	and rax, rbx

 strtol$12:
	; Add £temporary1766 s £temporary1767
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtol$13:
	; SetReturnValue

 strtol$14:
	; Return value
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtol$15:
	; FunctionEnd strtol

section .text

 strtoul:
	; Assign g_inStatus integral4$1#
	mov dword [g_inStatus], 1

 strtoul$1:
	; Assign g_inDevice s
	mov rax, [rbp + 24]
	mov [g_inDevice], rax

 strtoul$2:
	; Assign g_inChars integral4$0#
	mov dword [g_inChars], 0

 strtoul$3:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul$4:
	; Parameter 68 signed int base
	mov eax, [rbp + 40]
	mov [rbp + 68], eax

 strtoul$5:
	; Call 44 scanUnsignedLongInt 0
	mov qword [rbp + 44], strtoul$6
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanUnsignedLongInt

 strtoul$6:
	; PostCall 44

 strtoul$7:
	; GetReturnValue £temporary1769

 strtoul$8:
	; Assign unsignedLongValue £temporary1769
	mov [rbp + 44], rbx

 strtoul$9:
	; Equal 13 endp integral8$0#
	cmp qword [rbp + 32], 0
	je strtoul$13

 strtoul$10:
	; Dereference £temporary1771 endp 0
	mov rsi, [rbp + 32]

 strtoul$11:
	; IntegralToIntegral £temporary1772 g_inChars
	mov eax, [g_inChars]
	mov rbx, 4294967295
	and rax, rbx

 strtoul$12:
	; Add £temporary1771 s £temporary1772
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtoul$13:
	; SetReturnValue

 strtoul$14:
	; Return unsignedLongValue
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtoul$15:
	; FunctionEnd strtoul

section .text

 atof:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atof$1:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atof$2:
	; Parameter 64 pointer integral8$0#
	mov qword [rbp + 64], 0

 atof$3:
	; Call 32 strtod 0
	mov qword [rbp + 32], atof$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtod

 atof$4:
	; PostCall 32

 atof$5:
	; GetReturnValue £temporary1774

 atof$6:
	; SetReturnValue

 atof$7:
	; Return £temporary1774
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atof$8:
	; FunctionEnd atof

section .data

@5070string_25lf25n#:
	; Initializer String %lf%n
	db "%lf%n", 0

section .text

 strtod:
	; Assign chars integral4$0#
	mov dword [rbp + 40], 0

 strtod$1:
	; PushFloat floating8$0#
	fldz

 strtod$2:
	; PopFloat value
	fstp qword [rbp + 44]

 strtod$3:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtod$4:
	; Parameter 76 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 strtod$5:
	; Parameter 84 pointer string_25lf25n#
	mov qword [rbp + 84], @5070string_25lf25n#

 strtod$6:
	; Address £temporary1775 value
	mov rsi, rbp
	add rsi, 44

 strtod$7:
	; Parameter 92 pointer £temporary1775
	mov [rbp + 92], rsi

 strtod$8:
	; Address £temporary1776 chars
	mov rsi, rbp
	add rsi, 40

 strtod$9:
	; Parameter 100 pointer £temporary1776
	mov [rbp + 100], rsi

 strtod$10:
	; Call 52 sscanf 16
	mov qword [rbp + 52], strtod$11
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

 strtod$11:
	; PostCall 52

 strtod$12:
	; Equal 16 endp integral8$0#
	cmp qword [rbp + 32], 0
	je strtod$16

 strtod$13:
	; Dereference £temporary1779 endp 0
	mov rsi, [rbp + 32]

 strtod$14:
	; IntegralToIntegral £temporary1780 chars
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtod$15:
	; Add £temporary1779 s £temporary1780
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtod$16:
	; PushFloat value
	fld qword [rbp + 44]

 strtod$17:
	; SetReturnValue

 strtod$18:
	; Return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtod$19:
	; FunctionEnd strtod

section .data

@5080string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5095string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5098string_2020202B0123abc#:
	; Initializer String    +0123abc
	db "   +0123abc", 0

section .data

@5114string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5117string_2020202B0x123ABC#:
	; Initializer String    +0x123ABC
	db "   +0x123ABC", 0

section .data

@5134string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5137string_2020202B0X123abc#:
	; Initializer String    +0X123abc
	db "   +0X123abc", 0

section .data

@5154string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5157string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5172string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5175string_2020202D0123abc#:
	; Initializer String    -0123abc
	db "   -0123abc", 0

section .data

@5191string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5194string_2020202D0x123ABC#:
	; Initializer String    -0x123ABC
	db "   -0x123ABC", 0

section .data

@5211string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5214string_2020202D0X123abc#:
	; Initializer String    -0X123abc
	db "   -0X123abc", 0

section .data

@5231string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5234string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5249string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5252string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5267string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5270string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5285string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5288string_2020202B123ABC#:
	; Initializer String    +123ABC
	db "   +123ABC", 0

section .data

@5303string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5306string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5321string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5324string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5339string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5342string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5357string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5360string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5375string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5378string_2020202D123ABC#:
	; Initializer String    -123ABC
	db "   -123ABC", 0

section .data

@5393string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5396string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5411string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .text

 strtol_test:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$1:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$2:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$3:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$4:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$5:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$6:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$7:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$8:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$9:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$10:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$11:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$12:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$13:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$14:
	; Address £temporary1795 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$15:
	; Parameter 79 pointer £temporary1795
	mov [rbp + 79], rsi

 strtol_test$16:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$17:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$18
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$18:
	; PostCall 47

 strtol_test$19:
	; GetReturnValue £temporary1796

 strtol_test$20:
	; Assign value £temporary1796
	mov [rbp + 47], rbx

 strtol_test$21:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$22:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5095string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$23:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$24:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$25:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$26:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$27:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$28
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$28:
	; PostCall 55

 strtol_test$29:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$30:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$31:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$32:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$33:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$34:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$35:
	; Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtol_test$36:
	; Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtol_test$37:
	; Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtol_test$38:
	; Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtol_test$39:
	; Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtol_test$40:
	; Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtol_test$41:
	; Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtol_test$42:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$43:
	; Parameter 72 pointer text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtol_test$44:
	; Address £temporary1810 pointer
	mov rsi, rbp
	add rsi, 40

 strtol_test$45:
	; Parameter 80 pointer £temporary1810
	mov [rbp + 80], rsi

 strtol_test$46:
	; Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtol_test$47:
	; Call 48 strtol 0
	mov qword [rbp + 48], strtol_test$48
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtol

 strtol_test$48:
	; PostCall 48

 strtol_test$49:
	; GetReturnValue £temporary1811

 strtol_test$50:
	; Assign value £temporary1811
	mov [rbp + 48], rbx

 strtol_test$51:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$52:
	; Parameter 80 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5114string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$53:
	; Parameter 88 pointer text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtol_test$54:
	; Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtol_test$55:
	; Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtol_test$56:
	; Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtol_test$57:
	; Call 56 printf 28
	mov qword [rbp + 56], strtol_test$58
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$58:
	; PostCall 56

 strtol_test$59:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$60:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$61:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$62:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$63:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$64:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$65:
	; Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtol_test$66:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$67:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$68:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$69:
	; Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtol_test$70:
	; Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtol_test$71:
	; Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtol_test$72:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$73:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$74:
	; Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$75:
	; Address £temporary1826 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$76:
	; Parameter 81 pointer £temporary1826
	mov [rbp + 81], rsi

 strtol_test$77:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$78:
	; Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$79
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$79:
	; PostCall 49

 strtol_test$80:
	; GetReturnValue £temporary1827

 strtol_test$81:
	; Assign value £temporary1827
	mov [rbp + 49], rbx

 strtol_test$82:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$83:
	; Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5134string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$84:
	; Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$85:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$86:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$87:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$88:
	; Call 57 printf 28
	mov qword [rbp + 57], strtol_test$89
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$89:
	; PostCall 57

 strtol_test$90:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$91:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$92:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$93:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$94:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$95:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$96:
	; Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtol_test$97:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$98:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$99:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$100:
	; Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtol_test$101:
	; Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtol_test$102:
	; Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtol_test$103:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$104:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$105:
	; Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$106:
	; Address £temporary1842 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$107:
	; Parameter 81 pointer £temporary1842
	mov [rbp + 81], rsi

 strtol_test$108:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$109:
	; Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$110
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$110:
	; PostCall 49

 strtol_test$111:
	; GetReturnValue £temporary1843

 strtol_test$112:
	; Assign value £temporary1843
	mov [rbp + 49], rbx

 strtol_test$113:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$114:
	; Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5154string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$115:
	; Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$116:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$117:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$118:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$119:
	; Call 57 printf 28
	mov qword [rbp + 57], strtol_test$120
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$120:
	; PostCall 57

 strtol_test$121:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$122:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$123:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$124:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$125:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$126:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$127:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$128:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$129:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$130:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$131:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$132:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$133:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$134:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$135:
	; Address £temporary1856 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$136:
	; Parameter 79 pointer £temporary1856
	mov [rbp + 79], rsi

 strtol_test$137:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$138:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$139
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$139:
	; PostCall 47

 strtol_test$140:
	; GetReturnValue £temporary1857

 strtol_test$141:
	; Assign value £temporary1857
	mov [rbp + 47], rbx

 strtol_test$142:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$143:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5172string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$144:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$145:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$146:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$147:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$148:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$149
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$149:
	; PostCall 55

 strtol_test$150:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$151:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$152:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$153:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$154:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$155:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$156:
	; Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtol_test$157:
	; Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtol_test$158:
	; Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtol_test$159:
	; Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtol_test$160:
	; Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtol_test$161:
	; Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtol_test$162:
	; Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtol_test$163:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$164:
	; Parameter 72 pointer text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtol_test$165:
	; Address £temporary1871 pointer
	mov rsi, rbp
	add rsi, 40

 strtol_test$166:
	; Parameter 80 pointer £temporary1871
	mov [rbp + 80], rsi

 strtol_test$167:
	; Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtol_test$168:
	; Call 48 strtol 0
	mov qword [rbp + 48], strtol_test$169
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtol

 strtol_test$169:
	; PostCall 48

 strtol_test$170:
	; GetReturnValue £temporary1872

 strtol_test$171:
	; Assign value £temporary1872
	mov [rbp + 48], rbx

 strtol_test$172:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$173:
	; Parameter 80 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5191string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$174:
	; Parameter 88 pointer text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtol_test$175:
	; Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtol_test$176:
	; Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtol_test$177:
	; Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtol_test$178:
	; Call 56 printf 28
	mov qword [rbp + 56], strtol_test$179
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$179:
	; PostCall 56

 strtol_test$180:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$181:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$182:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$183:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$184:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$185:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$186:
	; Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtol_test$187:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$188:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$189:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$190:
	; Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtol_test$191:
	; Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtol_test$192:
	; Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtol_test$193:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$194:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$195:
	; Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$196:
	; Address £temporary1887 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$197:
	; Parameter 81 pointer £temporary1887
	mov [rbp + 81], rsi

 strtol_test$198:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$199:
	; Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$200
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$200:
	; PostCall 49

 strtol_test$201:
	; GetReturnValue £temporary1888

 strtol_test$202:
	; Assign value £temporary1888
	mov [rbp + 49], rbx

 strtol_test$203:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$204:
	; Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5211string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$205:
	; Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$206:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$207:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$208:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$209:
	; Call 57 printf 28
	mov qword [rbp + 57], strtol_test$210
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$210:
	; PostCall 57

 strtol_test$211:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$212:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$213:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$214:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$215:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$216:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$217:
	; Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtol_test$218:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$219:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$220:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$221:
	; Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtol_test$222:
	; Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtol_test$223:
	; Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtol_test$224:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$225:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$226:
	; Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$227:
	; Address £temporary1903 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$228:
	; Parameter 81 pointer £temporary1903
	mov [rbp + 81], rsi

 strtol_test$229:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$230:
	; Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$231
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$231:
	; PostCall 49

 strtol_test$232:
	; GetReturnValue £temporary1904

 strtol_test$233:
	; Assign value £temporary1904
	mov [rbp + 49], rbx

 strtol_test$234:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$235:
	; Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5231string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$236:
	; Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$237:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$238:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$239:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$240:
	; Call 57 printf 28
	mov qword [rbp + 57], strtol_test$241
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$241:
	; PostCall 57

 strtol_test$242:
	; Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtol_test$243:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$244:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$245:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$246:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$247:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$248:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$249:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$250:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$251:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$252:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$253:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$254:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$255:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$256:
	; Address £temporary1917 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$257:
	; Parameter 79 pointer £temporary1917
	mov [rbp + 79], rsi

 strtol_test$258:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$259:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$260
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$260:
	; PostCall 47

 strtol_test$261:
	; GetReturnValue £temporary1918

 strtol_test$262:
	; Assign value £temporary1918
	mov [rbp + 47], rbx

 strtol_test$263:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$264:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5249string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$265:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$266:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$267:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$268:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$269:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$270
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$270:
	; PostCall 55

 strtol_test$271:
	; Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtol_test$272:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$273:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$274:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$275:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$276:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$277:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$278:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$279:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$280:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$281:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$282:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$283:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$284:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$285:
	; Address £temporary1931 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$286:
	; Parameter 79 pointer £temporary1931
	mov [rbp + 79], rsi

 strtol_test$287:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$288:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$289
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$289:
	; PostCall 47

 strtol_test$290:
	; GetReturnValue £temporary1932

 strtol_test$291:
	; Assign value £temporary1932
	mov [rbp + 47], rbx

 strtol_test$292:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$293:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5267string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$294:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$295:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$296:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$297:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$298:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$299
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$299:
	; PostCall 55

 strtol_test$300:
	; Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtol_test$301:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$302:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$303:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$304:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$305:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$306:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$307:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$308:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$309:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$310:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$311:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$312:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$313:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$314:
	; Address £temporary1945 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$315:
	; Parameter 79 pointer £temporary1945
	mov [rbp + 79], rsi

 strtol_test$316:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$317:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$318
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$318:
	; PostCall 47

 strtol_test$319:
	; GetReturnValue £temporary1946

 strtol_test$320:
	; Assign value £temporary1946
	mov [rbp + 47], rbx

 strtol_test$321:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$322:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5285string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$323:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$324:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$325:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$326:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$327:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$328
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$328:
	; PostCall 55

 strtol_test$329:
	; Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtol_test$330:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$331:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$332:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$333:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$334:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$335:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$336:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$337:
	; Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtol_test$338:
	; Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtol_test$339:
	; Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtol_test$340:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$341:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$342:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$343:
	; Address £temporary1959 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$344:
	; Parameter 79 pointer £temporary1959
	mov [rbp + 79], rsi

 strtol_test$345:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$346:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$347
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$347:
	; PostCall 47

 strtol_test$348:
	; GetReturnValue £temporary1960

 strtol_test$349:
	; Assign value £temporary1960
	mov [rbp + 47], rbx

 strtol_test$350:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$351:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5303string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$352:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$353:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$354:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$355:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$356:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$357
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$357:
	; PostCall 55

 strtol_test$358:
	; Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtol_test$359:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$360:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$361:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$362:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$363:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$364:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$365:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$366:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$367:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$368:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$369:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$370:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$371:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$372:
	; Address £temporary1973 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$373:
	; Parameter 79 pointer £temporary1973
	mov [rbp + 79], rsi

 strtol_test$374:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$375:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$376
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$376:
	; PostCall 47

 strtol_test$377:
	; GetReturnValue £temporary1974

 strtol_test$378:
	; Assign value £temporary1974
	mov [rbp + 47], rbx

 strtol_test$379:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$380:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5321string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$381:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$382:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$383:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$384:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$385:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$386
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$386:
	; PostCall 55

 strtol_test$387:
	; Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtol_test$388:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$389:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$390:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$391:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$392:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$393:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$394:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$395:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$396:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$397:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$398:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$399:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$400:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$401:
	; Address £temporary1987 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$402:
	; Parameter 79 pointer £temporary1987
	mov [rbp + 79], rsi

 strtol_test$403:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$404:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$405
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$405:
	; PostCall 47

 strtol_test$406:
	; GetReturnValue £temporary1988

 strtol_test$407:
	; Assign value £temporary1988
	mov [rbp + 47], rbx

 strtol_test$408:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$409:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5339string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$410:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$411:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$412:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$413:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$414:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$415
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$415:
	; PostCall 55

 strtol_test$416:
	; Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtol_test$417:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$418:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$419:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$420:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$421:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$422:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$423:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$424:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$425:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$426:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$427:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$428:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$429:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$430:
	; Address £temporary2001 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$431:
	; Parameter 79 pointer £temporary2001
	mov [rbp + 79], rsi

 strtol_test$432:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$433:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$434
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$434:
	; PostCall 47

 strtol_test$435:
	; GetReturnValue £temporary2002

 strtol_test$436:
	; Assign value £temporary2002
	mov [rbp + 47], rbx

 strtol_test$437:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$438:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5357string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$439:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$440:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$441:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$442:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$443:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$444
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$444:
	; PostCall 55

 strtol_test$445:
	; Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtol_test$446:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$447:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$448:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$449:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$450:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$451:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$452:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$453:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$454:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$455:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$456:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$457:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$458:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$459:
	; Address £temporary2015 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$460:
	; Parameter 79 pointer £temporary2015
	mov [rbp + 79], rsi

 strtol_test$461:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$462:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$463
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$463:
	; PostCall 47

 strtol_test$464:
	; GetReturnValue £temporary2016

 strtol_test$465:
	; Assign value £temporary2016
	mov [rbp + 47], rbx

 strtol_test$466:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$467:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5375string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$468:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$469:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$470:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$471:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$472:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$473
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$473:
	; PostCall 55

 strtol_test$474:
	; Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtol_test$475:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$476:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$477:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$478:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$479:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$480:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$481:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$482:
	; Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtol_test$483:
	; Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtol_test$484:
	; Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtol_test$485:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$486:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$487:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$488:
	; Address £temporary2029 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$489:
	; Parameter 79 pointer £temporary2029
	mov [rbp + 79], rsi

 strtol_test$490:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$491:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$492
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$492:
	; PostCall 47

 strtol_test$493:
	; GetReturnValue £temporary2030

 strtol_test$494:
	; Assign value £temporary2030
	mov [rbp + 47], rbx

 strtol_test$495:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$496:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5393string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$497:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$498:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$499:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$500:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$501:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$502
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$502:
	; PostCall 55

 strtol_test$503:
	; Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtol_test$504:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$505:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$506:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$507:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$508:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$509:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$510:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$511:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$512:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$513:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$514:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$515:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$516:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$517:
	; Address £temporary2043 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$518:
	; Parameter 79 pointer £temporary2043
	mov [rbp + 79], rsi

 strtol_test$519:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$520:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$521
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$521:
	; PostCall 47

 strtol_test$522:
	; GetReturnValue £temporary2044

 strtol_test$523:
	; Assign value £temporary2044
	mov [rbp + 47], rbx

 strtol_test$524:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$525:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5411string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$526:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$527:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$528:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$529:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$530:
	; Call 55 printf 28
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

section .data

@5559string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5574string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5577string_2020202B0123abc#:
	; Initializer String    +0123abc
	db "   +0123abc", 0

section .data

@5593string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5596string_2020202B0x123ABC#:
	; Initializer String    +0x123ABC
	db "   +0x123ABC", 0

section .data

@5613string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5616string_2020202B0X123abc#:
	; Initializer String    +0X123abc
	db "   +0X123abc", 0

section .data

@5633string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5636string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5651string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5654string_2020202D0123abc#:
	; Initializer String    -0123abc
	db "   -0123abc", 0

section .data

@5670string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5673string_2020202D0x123ABC#:
	; Initializer String    -0x123ABC
	db "   -0x123ABC", 0

section .data

@5690string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5693string_2020202D0X123abc#:
	; Initializer String    -0X123abc
	db "   -0X123abc", 0

section .data

@5710string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5713string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5728string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5731string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5746string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5749string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5764string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5767string_2020202B123ABC#:
	; Initializer String    +123ABC
	db "   +123ABC", 0

section .data

@5782string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5785string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5800string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5803string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5818string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5821string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5836string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5839string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5854string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5857string_2020202D123ABC#:
	; Initializer String    -123ABC
	db "   -123ABC", 0

section .data

@5872string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5875string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5890string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .text

 strtoul_test:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$1:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$2:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$3:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$4:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$5:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$6:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$7:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$8:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$9:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$10:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$11:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$12:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$13:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$14:
	; Address £temporary2075 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$15:
	; Parameter 79 pointer £temporary2075
	mov [rbp + 79], rsi

 strtoul_test$16:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$17:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$18
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$18:
	; PostCall 47

 strtoul_test$19:
	; GetReturnValue £temporary2076

 strtoul_test$20:
	; Assign value £temporary2076
	mov [rbp + 47], rbx

 strtoul_test$21:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$22:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5574string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$23:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$24:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$25:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$26:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$27:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$28
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$28:
	; PostCall 55

 strtoul_test$29:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$30:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$31:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$32:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$33:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$34:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$35:
	; Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtoul_test$36:
	; Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtoul_test$37:
	; Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtoul_test$38:
	; Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtoul_test$39:
	; Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtoul_test$40:
	; Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtoul_test$41:
	; Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtoul_test$42:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$43:
	; Parameter 72 pointer text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtoul_test$44:
	; Address £temporary2090 pointer
	mov rsi, rbp
	add rsi, 40

 strtoul_test$45:
	; Parameter 80 pointer £temporary2090
	mov [rbp + 80], rsi

 strtoul_test$46:
	; Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtoul_test$47:
	; Call 48 strtoul 0
	mov qword [rbp + 48], strtoul_test$48
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtoul

 strtoul_test$48:
	; PostCall 48

 strtoul_test$49:
	; GetReturnValue £temporary2091

 strtoul_test$50:
	; Assign value £temporary2091
	mov [rbp + 48], rbx

 strtoul_test$51:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$52:
	; Parameter 80 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5593string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$53:
	; Parameter 88 pointer text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtoul_test$54:
	; Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtoul_test$55:
	; Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtoul_test$56:
	; Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtoul_test$57:
	; Call 56 printf 28
	mov qword [rbp + 56], strtoul_test$58
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$58:
	; PostCall 56

 strtoul_test$59:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$60:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$61:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$62:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$63:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$64:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$65:
	; Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtoul_test$66:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$67:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$68:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$69:
	; Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtoul_test$70:
	; Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtoul_test$71:
	; Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtoul_test$72:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$73:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$74:
	; Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$75:
	; Address £temporary2106 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$76:
	; Parameter 81 pointer £temporary2106
	mov [rbp + 81], rsi

 strtoul_test$77:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$78:
	; Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$79
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$79:
	; PostCall 49

 strtoul_test$80:
	; GetReturnValue £temporary2107

 strtoul_test$81:
	; Assign value £temporary2107
	mov [rbp + 49], rbx

 strtoul_test$82:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$83:
	; Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5613string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$84:
	; Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$85:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$86:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$87:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$88:
	; Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$89
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$89:
	; PostCall 57

 strtoul_test$90:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$91:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$92:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$93:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$94:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$95:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$96:
	; Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtoul_test$97:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$98:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$99:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$100:
	; Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtoul_test$101:
	; Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtoul_test$102:
	; Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtoul_test$103:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$104:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$105:
	; Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$106:
	; Address £temporary2122 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$107:
	; Parameter 81 pointer £temporary2122
	mov [rbp + 81], rsi

 strtoul_test$108:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$109:
	; Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$110
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$110:
	; PostCall 49

 strtoul_test$111:
	; GetReturnValue £temporary2123

 strtoul_test$112:
	; Assign value £temporary2123
	mov [rbp + 49], rbx

 strtoul_test$113:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$114:
	; Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5633string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$115:
	; Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$116:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$117:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$118:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$119:
	; Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$120
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$120:
	; PostCall 57

 strtoul_test$121:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$122:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$123:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$124:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$125:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$126:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$127:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$128:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$129:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$130:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$131:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$132:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$133:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$134:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$135:
	; Address £temporary2136 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$136:
	; Parameter 79 pointer £temporary2136
	mov [rbp + 79], rsi

 strtoul_test$137:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$138:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$139
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$139:
	; PostCall 47

 strtoul_test$140:
	; GetReturnValue £temporary2137

 strtoul_test$141:
	; Assign value £temporary2137
	mov [rbp + 47], rbx

 strtoul_test$142:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$143:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5651string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$144:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$145:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$146:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$147:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$148:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$149
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$149:
	; PostCall 55

 strtoul_test$150:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$151:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$152:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$153:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$154:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$155:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$156:
	; Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtoul_test$157:
	; Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtoul_test$158:
	; Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtoul_test$159:
	; Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtoul_test$160:
	; Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtoul_test$161:
	; Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtoul_test$162:
	; Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtoul_test$163:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$164:
	; Parameter 72 pointer text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtoul_test$165:
	; Address £temporary2151 pointer
	mov rsi, rbp
	add rsi, 40

 strtoul_test$166:
	; Parameter 80 pointer £temporary2151
	mov [rbp + 80], rsi

 strtoul_test$167:
	; Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtoul_test$168:
	; Call 48 strtoul 0
	mov qword [rbp + 48], strtoul_test$169
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtoul

 strtoul_test$169:
	; PostCall 48

 strtoul_test$170:
	; GetReturnValue £temporary2152

 strtoul_test$171:
	; Assign value £temporary2152
	mov [rbp + 48], rbx

 strtoul_test$172:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$173:
	; Parameter 80 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5670string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$174:
	; Parameter 88 pointer text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtoul_test$175:
	; Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtoul_test$176:
	; Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtoul_test$177:
	; Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtoul_test$178:
	; Call 56 printf 28
	mov qword [rbp + 56], strtoul_test$179
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$179:
	; PostCall 56

 strtoul_test$180:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$181:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$182:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$183:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$184:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$185:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$186:
	; Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtoul_test$187:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$188:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$189:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$190:
	; Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtoul_test$191:
	; Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtoul_test$192:
	; Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtoul_test$193:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$194:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$195:
	; Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$196:
	; Address £temporary2167 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$197:
	; Parameter 81 pointer £temporary2167
	mov [rbp + 81], rsi

 strtoul_test$198:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$199:
	; Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$200
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$200:
	; PostCall 49

 strtoul_test$201:
	; GetReturnValue £temporary2168

 strtoul_test$202:
	; Assign value £temporary2168
	mov [rbp + 49], rbx

 strtoul_test$203:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$204:
	; Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5690string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$205:
	; Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$206:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$207:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$208:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$209:
	; Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$210
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$210:
	; PostCall 57

 strtoul_test$211:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$212:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$213:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$214:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$215:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$216:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$217:
	; Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtoul_test$218:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$219:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$220:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$221:
	; Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtoul_test$222:
	; Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtoul_test$223:
	; Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtoul_test$224:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$225:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$226:
	; Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$227:
	; Address £temporary2183 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$228:
	; Parameter 81 pointer £temporary2183
	mov [rbp + 81], rsi

 strtoul_test$229:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$230:
	; Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$231
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$231:
	; PostCall 49

 strtoul_test$232:
	; GetReturnValue £temporary2184

 strtoul_test$233:
	; Assign value £temporary2184
	mov [rbp + 49], rbx

 strtoul_test$234:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$235:
	; Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5710string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$236:
	; Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$237:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$238:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$239:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$240:
	; Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$241
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$241:
	; PostCall 57

 strtoul_test$242:
	; Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtoul_test$243:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$244:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$245:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$246:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$247:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$248:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$249:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$250:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$251:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$252:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$253:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$254:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$255:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$256:
	; Address £temporary2197 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$257:
	; Parameter 79 pointer £temporary2197
	mov [rbp + 79], rsi

 strtoul_test$258:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$259:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$260
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$260:
	; PostCall 47

 strtoul_test$261:
	; GetReturnValue £temporary2198

 strtoul_test$262:
	; Assign value £temporary2198
	mov [rbp + 47], rbx

 strtoul_test$263:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$264:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5728string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$265:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$266:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$267:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$268:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$269:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$270
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$270:
	; PostCall 55

 strtoul_test$271:
	; Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtoul_test$272:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$273:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$274:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$275:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$276:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$277:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$278:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$279:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$280:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$281:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$282:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$283:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$284:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$285:
	; Address £temporary2211 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$286:
	; Parameter 79 pointer £temporary2211
	mov [rbp + 79], rsi

 strtoul_test$287:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$288:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$289
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$289:
	; PostCall 47

 strtoul_test$290:
	; GetReturnValue £temporary2212

 strtoul_test$291:
	; Assign value £temporary2212
	mov [rbp + 47], rbx

 strtoul_test$292:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$293:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5746string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$294:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$295:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$296:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$297:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$298:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$299
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$299:
	; PostCall 55

 strtoul_test$300:
	; Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtoul_test$301:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$302:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$303:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$304:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$305:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$306:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$307:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$308:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$309:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$310:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$311:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$312:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$313:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$314:
	; Address £temporary2225 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$315:
	; Parameter 79 pointer £temporary2225
	mov [rbp + 79], rsi

 strtoul_test$316:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$317:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$318
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$318:
	; PostCall 47

 strtoul_test$319:
	; GetReturnValue £temporary2226

 strtoul_test$320:
	; Assign value £temporary2226
	mov [rbp + 47], rbx

 strtoul_test$321:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$322:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5764string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$323:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$324:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$325:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$326:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$327:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$328
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$328:
	; PostCall 55

 strtoul_test$329:
	; Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtoul_test$330:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$331:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$332:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$333:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$334:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$335:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$336:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$337:
	; Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtoul_test$338:
	; Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtoul_test$339:
	; Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtoul_test$340:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$341:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$342:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$343:
	; Address £temporary2239 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$344:
	; Parameter 79 pointer £temporary2239
	mov [rbp + 79], rsi

 strtoul_test$345:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$346:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$347
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$347:
	; PostCall 47

 strtoul_test$348:
	; GetReturnValue £temporary2240

 strtoul_test$349:
	; Assign value £temporary2240
	mov [rbp + 47], rbx

 strtoul_test$350:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$351:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5782string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$352:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$353:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$354:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$355:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$356:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$357
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$357:
	; PostCall 55

 strtoul_test$358:
	; Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtoul_test$359:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$360:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$361:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$362:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$363:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$364:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$365:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$366:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$367:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$368:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$369:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$370:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$371:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$372:
	; Address £temporary2253 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$373:
	; Parameter 79 pointer £temporary2253
	mov [rbp + 79], rsi

 strtoul_test$374:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$375:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$376
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$376:
	; PostCall 47

 strtoul_test$377:
	; GetReturnValue £temporary2254

 strtoul_test$378:
	; Assign value £temporary2254
	mov [rbp + 47], rbx

 strtoul_test$379:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$380:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5800string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$381:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$382:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$383:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$384:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$385:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$386
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$386:
	; PostCall 55

 strtoul_test$387:
	; Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtoul_test$388:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$389:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$390:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$391:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$392:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$393:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$394:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$395:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$396:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$397:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$398:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$399:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$400:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$401:
	; Address £temporary2267 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$402:
	; Parameter 79 pointer £temporary2267
	mov [rbp + 79], rsi

 strtoul_test$403:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$404:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$405
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$405:
	; PostCall 47

 strtoul_test$406:
	; GetReturnValue £temporary2268

 strtoul_test$407:
	; Assign value £temporary2268
	mov [rbp + 47], rbx

 strtoul_test$408:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$409:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5818string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$410:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$411:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$412:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$413:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$414:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$415
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$415:
	; PostCall 55

 strtoul_test$416:
	; Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtoul_test$417:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$418:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$419:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$420:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$421:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$422:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$423:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$424:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$425:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$426:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$427:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$428:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$429:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$430:
	; Address £temporary2281 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$431:
	; Parameter 79 pointer £temporary2281
	mov [rbp + 79], rsi

 strtoul_test$432:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$433:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$434
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$434:
	; PostCall 47

 strtoul_test$435:
	; GetReturnValue £temporary2282

 strtoul_test$436:
	; Assign value £temporary2282
	mov [rbp + 47], rbx

 strtoul_test$437:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$438:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5836string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$439:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$440:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$441:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$442:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$443:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$444
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$444:
	; PostCall 55

 strtoul_test$445:
	; Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtoul_test$446:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$447:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$448:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$449:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$450:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$451:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$452:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$453:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$454:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$455:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$456:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$457:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$458:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$459:
	; Address £temporary2295 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$460:
	; Parameter 79 pointer £temporary2295
	mov [rbp + 79], rsi

 strtoul_test$461:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$462:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$463
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$463:
	; PostCall 47

 strtoul_test$464:
	; GetReturnValue £temporary2296

 strtoul_test$465:
	; Assign value £temporary2296
	mov [rbp + 47], rbx

 strtoul_test$466:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$467:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5854string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$468:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$469:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$470:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$471:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$472:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$473
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$473:
	; PostCall 55

 strtoul_test$474:
	; Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtoul_test$475:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$476:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$477:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$478:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$479:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$480:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$481:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$482:
	; Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtoul_test$483:
	; Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtoul_test$484:
	; Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtoul_test$485:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$486:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$487:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$488:
	; Address £temporary2309 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$489:
	; Parameter 79 pointer £temporary2309
	mov [rbp + 79], rsi

 strtoul_test$490:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$491:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$492
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$492:
	; PostCall 47

 strtoul_test$493:
	; GetReturnValue £temporary2310

 strtoul_test$494:
	; Assign value £temporary2310
	mov [rbp + 47], rbx

 strtoul_test$495:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$496:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5872string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$497:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$498:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$499:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$500:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$501:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$502
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$502:
	; PostCall 55

 strtoul_test$503:
	; Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtoul_test$504:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$505:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$506:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$507:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$508:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$509:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$510:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$511:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$512:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$513:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$514:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$515:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$516:
	; Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$517:
	; Address £temporary2323 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$518:
	; Parameter 79 pointer £temporary2323
	mov [rbp + 79], rsi

 strtoul_test$519:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$520:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$521
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$521:
	; PostCall 47

 strtoul_test$522:
	; GetReturnValue £temporary2324

 strtoul_test$523:
	; Assign value £temporary2324
	mov [rbp + 47], rbx

 strtoul_test$524:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$525:
	; Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5890string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$526:
	; Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$527:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$528:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$529:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$530:
	; Call 55 printf 28
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

 abort:
	; AssignRegister rax integral8$60#
	mov rax, 60

 abort$1:
	; AssignRegister rdi integral8$18446744073709551615#
	mov rdi, 18446744073709551615

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
	; SetReturnValue

 getenv$1:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getenv$2:
	; FunctionEnd getenv

section .text

 system:
	; SetReturnValue

 system$1:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 system$2:
	; FunctionEnd system

section .data

@6071integral4$2#:
	; Initializer SignedInt 2
	dd 2

section .text

 bsearch:
	; Assign firstIndex integral4$0#
	mov dword [rbp + 56], 0

 bsearch$1:
	; Subtract lastIndex listSize integral4$1#
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 bsearch$2:
	; NotEqual 5 listSize integral4$0#
	cmp dword [rbp + 40], 0
	jne bsearch$5

 bsearch$3:
	; SetReturnValue

 bsearch$4:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$5:
	; IntegralToIntegral £temporary2348 valueList
	mov rbx, [rbp + 32]

 bsearch$6:
	; Multiply £temporary2349 firstIndex valueSize
	mov eax, [rbp + 56]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$7:
	; IntegralToIntegral £temporary2350 £temporary2349
	mov rcx, 4294967295
	and rax, rcx

 bsearch$8:
	; Add firstValuePtr £temporary2348 £temporary2350
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$9:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$10:
	; Parameter 96 pointer keyPtr
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$11:
	; Parameter 104 pointer firstValuePtr
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$12:
	; Call 72 compare 0
	mov qword [rbp + 72], bsearch$13
	mov [rbp + 80], rbp
	mov rax, [rbp + 48]
	add rbp, 72
	jmp rax

 bsearch$13:
	; PostCall 72

 bsearch$14:
	; GetReturnValue £temporary2352

 bsearch$15:
	; Assign firstCompare £temporary2352
	mov [rbp + 72], ebx

 bsearch$16:
	; GreaterThanEqual 19 firstCompare integral4$0#
	cmp dword [rbp + 72], 0
	jge bsearch$19

 bsearch$17:
	; SetReturnValue

 bsearch$18:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$19:
	; NotEqual 22 firstCompare integral4$0#
	cmp dword [rbp + 72], 0
	jne bsearch$22

 bsearch$20:
	; SetReturnValue

 bsearch$21:
	; Return firstValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$22:
	; IntegralToIntegral £temporary2355 valueList
	mov rbx, [rbp + 32]

 bsearch$23:
	; Multiply £temporary2356 lastIndex valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$24:
	; IntegralToIntegral £temporary2357 £temporary2356
	mov rcx, 4294967295
	and rax, rcx

 bsearch$25:
	; Add lastValuePtr £temporary2355 £temporary2357
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$26:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$27:
	; Parameter 96 pointer keyPtr
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$28:
	; Parameter 104 pointer lastValuePtr
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$29:
	; Call 72 compare 0
	mov qword [rbp + 72], bsearch$30
	mov [rbp + 80], rbp
	mov rax, [rbp + 48]
	add rbp, 72
	jmp rax

 bsearch$30:
	; PostCall 72

 bsearch$31:
	; GetReturnValue £temporary2359

 bsearch$32:
	; Assign lastCompare £temporary2359
	mov [rbp + 72], ebx

 bsearch$33:
	; LessThanEqual 36 lastCompare integral4$0#
	cmp dword [rbp + 72], 0
	jle bsearch$36

 bsearch$34:
	; SetReturnValue

 bsearch$35:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$36:
	; NotEqual 39 lastCompare integral4$0#
	cmp dword [rbp + 72], 0
	jne bsearch$39

 bsearch$37:
	; SetReturnValue

 bsearch$38:
	; Return lastValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$39:
	; Add £temporary2362 firstIndex lastIndex
	mov eax, [rbp + 56]
	add eax, [rbp + 60]

 bsearch$40:
	; Divide middleIndex £temporary2362 integral4$2#
	xor edx, edx
	idiv dword [@6071integral4$2#]
	mov [rbp + 64], eax

 bsearch$41:
	; IntegralToIntegral £temporary2364 valueList
	mov rbx, [rbp + 32]

 bsearch$42:
	; Multiply £temporary2365 middleIndex valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$43:
	; IntegralToIntegral £temporary2366 £temporary2365
	mov rcx, 4294967295
	and rax, rcx

 bsearch$44:
	; Add middleValuePtr £temporary2364 £temporary2366
	add rbx, rax
	mov [rbp + 68], rbx

 bsearch$45:
	; PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$46:
	; Parameter 100 pointer keyPtr
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 bsearch$47:
	; Parameter 108 pointer middleValuePtr
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 bsearch$48:
	; Call 76 compare 0
	mov qword [rbp + 76], bsearch$49
	mov [rbp + 84], rbp
	mov rax, [rbp + 48]
	add rbp, 76
	jmp rax

 bsearch$49:
	; PostCall 76

 bsearch$50:
	; GetReturnValue £temporary2368

 bsearch$51:
	; Assign middleCompare £temporary2368
	mov [rbp + 76], ebx

 bsearch$52:
	; GreaterThanEqual 55 middleCompare integral4$0#
	cmp dword [rbp + 76], 0
	jge bsearch$55

 bsearch$53:
	; Assign lastIndex middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 60], eax

 bsearch$54:
	; Jump 5
	jmp bsearch$5

 bsearch$55:
	; LessThanEqual 58 middleCompare integral4$0#
	cmp dword [rbp + 76], 0
	jle bsearch$58

 bsearch$56:
	; Assign firstIndex middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 56], eax

 bsearch$57:
	; Jump 5
	jmp bsearch$5

 bsearch$58:
	; SetReturnValue

 bsearch$59:
	; Return middleValuePtr
	mov rbx, [rbp + 68]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$60:
	; FunctionEnd bsearch

section .data

@6083$g_randValue:
	; InitializerZero 8
	times 8 db 0

section .data

@6085integral8$1664525#:
	; Initializer SignedLongInt 1664525
	dq 1664525

section .data

@6088integral8$127#:
	; Initializer SignedLongInt 127
	dq 127

section .text

 rand:
	; Multiply £temporary2372 g_randValue integral8$1664525#
	mov rax, [@6083$g_randValue]
	xor rdx, rdx
	imul qword [@6085integral8$1664525#]

 rand$1:
	; Add £temporary2373 £temporary2372 integral8$1013904223#
	add rax, 1013904223

 rand$2:
	; Modulo g_randValue £temporary2373 integral8$127#
	xor rdx, rdx
	idiv qword [@6088integral8$127#]
	mov [@6083$g_randValue], rdx

 rand$3:
	; IntegralToIntegral £temporary2375 g_randValue
	mov rbx, [@6083$g_randValue]
	cmp rbx, 0
	jge rand$4
	neg rbx
	neg ebx

 rand$4:
	; SetReturnValue

 rand$5:
	; Return £temporary2375
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rand$6:
	; FunctionEnd rand

section .text

 srand:
	; IntegralToIntegral £temporary2376 seed
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 srand$1:
	; Assign g_randValue £temporary2376
	mov [@6083$g_randValue], rax

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

@6099integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6102integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 atexit:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 atexit$1:
	; GreaterThanEqual 16 index integral4$256#
	cmp dword [rbp + 32], 256
	jge atexit$16

 atexit$2:
	; Multiply £temporary2380 index integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@6099integral4$8#]

 atexit$3:
	; IntegralToIntegral £temporary2381 £temporary2380
	mov rbx, 4294967295
	and rax, rbx

 atexit$4:
	; Add £temporary2382 g_funcArray £temporary2381
	mov rsi, g_funcArray
	add rsi, rax

 atexit$5:
	; Dereference £temporary2379 £temporary2382 0

 atexit$6:
	; NotEqual 14 £temporary2379 integral8$0#
	cmp qword [rsi], 0
	jne atexit$14

 atexit$7:
	; Multiply £temporary2385 index integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@6102integral4$8#]

 atexit$8:
	; IntegralToIntegral £temporary2386 £temporary2385
	mov rbx, 4294967295
	and rax, rbx

 atexit$9:
	; Add £temporary2387 g_funcArray £temporary2386
	mov rsi, g_funcArray
	add rsi, rax

 atexit$10:
	; Dereference £temporary2384 £temporary2387 0

 atexit$11:
	; Assign £temporary2384 fcn
	mov rax, [rbp + 24]
	mov [rsi], rax

 atexit$12:
	; SetReturnValue

 atexit$13:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$14:
	; Add index index integral4$1#
	inc dword [rbp + 32]

 atexit$15:
	; Jump 1
	jmp atexit$1

 atexit$16:
	; SetReturnValue

 atexit$17:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$18:
	; FunctionEnd atexit

section .data

@6112integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6115integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 exit:
	; Assign index integral4$255#
	mov dword [rbp + 28], 255

 exit$1:
	; LessThan 16 index integral4$0#
	cmp dword [rbp + 28], 0
	jl exit$16

 exit$2:
	; Multiply £temporary2391 index integral4$8#
	mov eax, [rbp + 28]
	xor edx, edx
	imul dword [@6112integral4$8#]

 exit$3:
	; IntegralToIntegral £temporary2392 £temporary2391
	mov rbx, 4294967295
	and rax, rbx

 exit$4:
	; Add £temporary2393 g_funcArray £temporary2392
	mov rsi, g_funcArray
	add rsi, rax

 exit$5:
	; Dereference £temporary2390 £temporary2393 0

 exit$6:
	; Equal 14 £temporary2390 integral8$0#
	cmp qword [rsi], 0
	je exit$14

 exit$7:
	; Multiply £temporary2396 index integral4$8#
	mov eax, [rbp + 28]
	xor edx, edx
	imul dword [@6115integral4$8#]

 exit$8:
	; IntegralToIntegral £temporary2397 £temporary2396
	mov rbx, 4294967295
	and rax, rbx

 exit$9:
	; Add £temporary2398 g_funcArray £temporary2397
	mov rbx, g_funcArray
	add rbx, rax

 exit$10:
	; Dereference £temporary2395 £temporary2398 0

 exit$11:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 32], rbx

 exit$12:
	; Call 32 £temporary2395 0
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
	; Subtract index index integral4$1#
	dec dword [rbp + 28]

 exit$15:
	; Jump 1
	jmp exit$1

 exit$16:
	; AssignRegister rax integral8$60#
	mov rax, 60

 exit$17:
	; IntegralToIntegral £temporary2402 status
	mov edi, [rbp + 24]
	mov rbx, 4294967295
	and rdi, rbx

 exit$18:
	; AssignRegister rdi £temporary2402

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

 @6120$memswap:
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 @6120$memswap$1:
	; GreaterThanEqual 19 index valueSize
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge @6120$memswap$19

 @6120$memswap$2:
	; IntegralToIntegral £temporary2406 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6120$memswap$3:
	; Add £temporary2407 value1 £temporary2406
	mov rsi, [rbp + 24]
	add rsi, rax

 @6120$memswap$4:
	; Dereference £temporary2405 £temporary2407 0

 @6120$memswap$5:
	; Assign tempValue £temporary2405
	mov al, [rsi]
	mov [rbp + 48], al

 @6120$memswap$6:
	; IntegralToIntegral £temporary2409 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6120$memswap$7:
	; Add £temporary2410 value1 £temporary2409
	mov rsi, [rbp + 24]
	add rsi, rax

 @6120$memswap$8:
	; Dereference £temporary2408 £temporary2410 0

 @6120$memswap$9:
	; IntegralToIntegral £temporary2412 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6120$memswap$10:
	; Add £temporary2413 value2 £temporary2412
	mov rdi, [rbp + 32]
	add rdi, rax

 @6120$memswap$11:
	; Dereference £temporary2411 £temporary2413 0

 @6120$memswap$12:
	; Assign £temporary2408 £temporary2411
	mov al, [rdi]
	mov [rsi], al

 @6120$memswap$13:
	; IntegralToIntegral £temporary2415 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6120$memswap$14:
	; Add £temporary2416 value2 £temporary2415
	mov rsi, [rbp + 32]
	add rsi, rax

 @6120$memswap$15:
	; Dereference £temporary2414 £temporary2416 0

 @6120$memswap$16:
	; Assign £temporary2414 tempValue
	mov al, [rbp + 48]
	mov [rsi], al

 @6120$memswap$17:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 @6120$memswap$18:
	; Jump 1
	jmp @6120$memswap$1

 @6120$memswap$19:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @6120$memswap$20:
	; FunctionEnd memswap

section .text

 qsort:
	; IntegralToIntegral £temporary2417 valueList
	mov rax, [rbp + 24]

 qsort$1:
	; Assign charList £temporary2417
	mov [rbp + 48], rax

 qsort$2:
	; Subtract size listSize integral4$1#
	mov eax, [rbp + 32]
	dec eax
	mov [rbp + 56], eax

 qsort$3:
	; LessThanEqual 33 size integral4$0#
	cmp dword [rbp + 56], 0
	jle qsort$33

 qsort$4:
	; Assign update integral4$0#
	mov dword [rbp + 64], 0

 qsort$5:
	; Assign index integral4$0#
	mov dword [rbp + 60], 0

 qsort$6:
	; GreaterThanEqual 30 index size
	mov eax, [rbp + 56]
	cmp [rbp + 60], eax
	jge qsort$30

 qsort$7:
	; Multiply £temporary2423 index valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 36]

 qsort$8:
	; IntegralToIntegral £temporary2424 £temporary2423
	mov rbx, 4294967295
	and rax, rbx

 qsort$9:
	; Add valuePtr1 charList £temporary2424
	mov rbx, [rbp + 48]
	add rbx, rax
	mov [rbp + 68], rbx

 qsort$10:
	; Add £temporary2426 index integral4$1#
	mov eax, [rbp + 60]
	inc eax

 qsort$11:
	; Multiply £temporary2427 £temporary2426 valueSize
	xor edx, edx
	imul dword [rbp + 36]

 qsort$12:
	; IntegralToIntegral £temporary2428 £temporary2427
	mov rbx, 4294967295
	and rax, rbx

 qsort$13:
	; Add valuePtr2 charList £temporary2428
	mov rbx, [rbp + 48]
	add rbx, rax
	mov [rbp + 76], rbx

 qsort$14:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$15:
	; Parameter 108 pointer valuePtr1
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$16:
	; Parameter 116 pointer valuePtr2
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$17:
	; Call 84 compare 0
	mov qword [rbp + 84], qsort$18
	mov [rbp + 92], rbp
	mov rax, [rbp + 40]
	add rbp, 84
	jmp rax

 qsort$18:
	; PostCall 84

 qsort$19:
	; GetReturnValue £temporary2430

 qsort$20:
	; LessThanEqual 28 £temporary2430 integral4$0#
	cmp ebx, 0
	jle qsort$28

 qsort$21:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$22:
	; Parameter 108 pointer valuePtr1
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$23:
	; Parameter 116 pointer valuePtr2
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$24:
	; Parameter 124 signed int valueSize
	mov eax, [rbp + 36]
	mov [rbp + 124], eax

 qsort$25:
	; Call 84 memswap 0
	mov qword [rbp + 84], qsort$26
	mov [rbp + 92], rbp
	add rbp, 84
	jmp @6120$memswap

 qsort$26:
	; PostCall 84

 qsort$27:
	; Assign update integral4$1#
	mov dword [rbp + 64], 1

 qsort$28:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 qsort$29:
	; Jump 6
	jmp qsort$6

 qsort$30:
	; Equal 33 update integral4$0#
	cmp dword [rbp + 64], 0
	je qsort$33

 qsort$31:
	; Subtract size size integral4$1#
	dec dword [rbp + 56]

 qsort$32:
	; Jump 3
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
	; GreaterThanEqual 3 value integral4$0#
	cmp dword [rbp + 24], 0
	jge @abs$3

 @abs$1:
	; Minus £temporary2437 value
	mov ebx, [rbp + 24]
	neg ebx

 @abs$2:
	; Jump 4
	jmp @abs$4

 @abs$3:
	; Assign £temporary2437 value
	mov ebx, [rbp + 24]

 @abs$4:
	; SetReturnValue

 @abs$5:
	; Return £temporary2437
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @abs$6:
	; FunctionEnd @abs

section .text

 labs:
	; GreaterThanEqual 3 value integral8$0#
	cmp qword [rbp + 24], 0
	jge labs$3

 labs$1:
	; Minus £temporary2440 value
	mov rbx, [rbp + 24]
	neg rbx

 labs$2:
	; Jump 4
	jmp labs$4

 labs$3:
	; Assign £temporary2440 value
	mov rbx, [rbp + 24]

 labs$4:
	; SetReturnValue

 labs$5:
	; Return £temporary2440
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 labs$6:
	; FunctionEnd labs

section .text

 div:
	; Assign result.quot integral4$0#
	mov dword [rbp + 32], 0

 div$1:
	; Assign result.rem integral4$0#
	mov dword [rbp + 36], 0

 div$2:
	; NotEqual 6 denum integral4$0#
	cmp dword [rbp + 28], 0
	jne div$6

 div$3:
	; Assign errno EDOM
	mov dword [errno], 6

 div$4:
	; SetReturnValue

 div$5:
	; Return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$6:
	; Divide result.quot num denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 32], eax

 div$7:
	; Modulo result.rem num denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 36], edx

 div$8:
	; SetReturnValue

 div$9:
	; Return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$10:
	; FunctionEnd div

section .text

 ldiv:
	; Assign result.quot integral8$0#
	mov qword [rbp + 40], 0

 ldiv$1:
	; Assign result.rem integral8$0#
	mov qword [rbp + 48], 0

 ldiv$2:
	; NotEqual 6 denum integral8$0#
	cmp qword [rbp + 32], 0
	jne ldiv$6

 ldiv$3:
	; Assign errno EDOM
	mov dword [errno], 6

 ldiv$4:
	; SetReturnValue

 ldiv$5:
	; Return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$6:
	; Divide result.quot num denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 40], rax

 ldiv$7:
	; Modulo result.rem num denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 48], rdx

 ldiv$8:
	; SetReturnValue

 ldiv$9:
	; Return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$10:
	; FunctionEnd ldiv
