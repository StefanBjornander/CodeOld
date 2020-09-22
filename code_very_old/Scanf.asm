	global g_inStatus
	global g_inChars
	global g_inDevice
	global g_inCount
	global scanChar
	global unscanChar
	global scanPattern
	global scanString
	global digitToValue
	global scanLongInt
	global scanUnsignedLongInt
	global scanLongDouble
	global scanFormat
	global scanf
	global vscanf
	global fscanf
	global vfscanf
	global sscanf
	global vsscanf

	extern isspace
	extern strchr
	extern isdigit
	extern islower
	extern tolower
	extern isxdigit
	extern pow
	extern printf
	extern stdin
	extern $StackTop
section .text

 scanChar:
	; c = int1$0#
	mov byte [rbp + 24], 0

 scanChar$1:
	; case g_inStatus == int4$0# goto 5
	mov eax, [g_inStatus]
	cmp eax, 0
	je scanChar$5

 scanChar$2:
	; case g_inStatus == int4$1# goto 20
	cmp eax, 1
	je scanChar$20

 scanChar$3:
	; case end g_inStatus

 scanChar$4:
	; goto 28
	jmp scanChar$28

 scanChar$5:
	; £temporary1049 = int_to_int g_inDevice (Pointer -> Pointer)
	mov rax, [g_inDevice]

 scanChar$6:
	; stream = £temporary1049
	mov [rbp + 25], rax

 scanChar$7:
	; £field1050 -> stream = *stream
	mov rsi, [rbp + 25]

 scanChar$8:
	; handle = £field1050 -> stream
	mov eax, [rsi + 4]
	mov [rbp + 33], eax

 scanChar$9:
	; rax = int8$0#
	mov rax, 0

 scanChar$10:
	; £field1053 -> stream = *stream
	mov rsi, [rbp + 25]

 scanChar$11:
	; £temporary1054 = int_to_int £field1053 -> stream (Unsigned_Int -> Unsigned_Long_Int)
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 scanChar$12:
	; rdi = £temporary1054

 scanChar$13:
	; £temporary1056 = &c
	mov rsi, rbp
	add rsi, 24

 scanChar$14:
	; £temporary1057 = int_to_int £temporary1056 (Pointer -> Unsigned_Long_Int)

 scanChar$15:
	; rsi = £temporary1057

 scanChar$16:
	; rdx = int8$1#
	mov rdx, 1

 scanChar$17:
	; syscall
	syscall

 scanChar$18:
	; g_inChars = g_inChars + int4$1#
	inc dword [g_inChars]

 scanChar$19:
	; return c
	mov bl, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$20:
	; £temporary1060 = int_to_int g_inDevice (Pointer -> Pointer)
	mov rax, [g_inDevice]

 scanChar$21:
	; inString = £temporary1060
	mov [rbp + 37], rax

 scanChar$22:
	; £temporary1061 = g_inChars
	mov eax, [g_inChars]

 scanChar$23:
	; g_inChars = g_inChars + int4$1#
	inc dword [g_inChars]

 scanChar$24:
	; £temporary1063 = int_to_int £temporary1061 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 scanChar$25:
	; £temporary1065 = inString + £temporary1063
	mov rsi, [rbp + 37]
	add rsi, rax

 scanChar$26:
	; £field1062 -> £temporary1065 = *£temporary1065

 scanChar$27:
	; return £field1062 -> £temporary1065
	mov bl, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$28:
	; return int1$0#
	mov bl, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$29:
	; function end scanChar

 unscanChar:
	; case g_inStatus == int4$0# goto 4
	mov eax, [g_inStatus]
	cmp eax, 0
	je unscanChar$4

 unscanChar$1:
	; case g_inStatus == int4$1# goto 6
	cmp eax, 1
	je unscanChar$6

 unscanChar$2:
	; case end g_inStatus

 unscanChar$3:
	; goto 7
	jmp unscanChar$7

 unscanChar$4:
	; g_inChars = g_inChars - int4$1#
	dec dword [g_inChars]

 unscanChar$5:
	; goto 7
	jmp unscanChar$7

 unscanChar$6:
	; g_inChars = g_inChars - int4$1#
	dec dword [g_inChars]

 unscanChar$7:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 unscanChar$8:
	; function end unscanChar

 scanPattern:
	; index = int4$0#
	mov dword [rbp + 44], 0

 scanPattern$1:
	; call header integral zero 0 stack zero 0

 scanPattern$2:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 48], scanPattern$3
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanChar

 scanPattern$3:
	; post call

 scanPattern$4:
	; £temporary1069 = return_value

 scanPattern$5:
	; input = £temporary1069
	mov [rbp + 48], bl

 scanPattern$6:
	; call header integral zero 0 stack zero 0

 scanPattern$7:
	; £temporary1070 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$8
	neg al
	neg eax

 scanPattern$8:
	; parameter £temporary1070, offset 73
	mov [rbp + 73], eax

 scanPattern$9:
	; call function noellipse-noellipse isspace
	mov qword [rbp + 49], scanPattern$10
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isspace

 scanPattern$10:
	; post call

 scanPattern$11:
	; £temporary1071 = return_value

 scanPattern$12:
	; if £temporary1071 == int4$0# goto 19
	cmp ebx, 0
	je scanPattern$19

 scanPattern$13:
	; call header integral zero 0 stack zero 0

 scanPattern$14:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanPattern$15
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanPattern$15:
	; post call

 scanPattern$16:
	; £temporary1072 = return_value

 scanPattern$17:
	; input = £temporary1072
	mov [rbp + 48], bl

 scanPattern$18:
	; goto 6
	jmp scanPattern$6

 scanPattern$19:
	; if string == int8$0# goto 55
	cmp qword [rbp + 24], 0
	je scanPattern$55

 scanPattern$20:
	; if not != int4$0# goto 29
	cmp dword [rbp + 40], 0
	jne scanPattern$29

 scanPattern$21:
	; call header integral zero 0 stack zero 0

 scanPattern$22:
	; parameter pattern, offset 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

 scanPattern$23:
	; £temporary1077 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$24
	neg al
	neg eax

 scanPattern$24:
	; parameter £temporary1077, offset 81
	mov [rbp + 81], eax

 scanPattern$25:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 49], scanPattern$26
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

 scanPattern$26:
	; post call

 scanPattern$27:
	; £temporary1078 = return_value

 scanPattern$28:
	; if £temporary1078 != int4$0# goto 38
	cmp rbx, 0
	jne scanPattern$38

 scanPattern$29:
	; if not == int4$0# goto 50
	cmp dword [rbp + 40], 0
	je scanPattern$50

 scanPattern$30:
	; call header integral zero 0 stack zero 0

 scanPattern$31:
	; parameter pattern, offset 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

 scanPattern$32:
	; £temporary1081 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$33
	neg al
	neg eax

 scanPattern$33:
	; parameter £temporary1081, offset 81
	mov [rbp + 81], eax

 scanPattern$34:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 49], scanPattern$35
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

 scanPattern$35:
	; post call

 scanPattern$36:
	; £temporary1082 = return_value

 scanPattern$37:
	; if £temporary1082 != int4$0# goto 50
	cmp rbx, 0
	jne scanPattern$50

 scanPattern$38:
	; £temporary1088 = index
	mov eax, [rbp + 44]

 scanPattern$39:
	; index = index + int4$1#
	inc dword [rbp + 44]

 scanPattern$40:
	; £temporary1090 = int_to_int £temporary1088 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$41:
	; £temporary1092 = string + £temporary1090
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$42:
	; £field1089 -> £temporary1092 = *£temporary1092

 scanPattern$43:
	; £field1089 -> £temporary1092 = input
	mov al, [rbp + 48]
	mov [rsi], al

 scanPattern$44:
	; call header integral zero 0 stack zero 0

 scanPattern$45:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanPattern$46
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanPattern$46:
	; post call

 scanPattern$47:
	; £temporary1093 = return_value

 scanPattern$48:
	; input = £temporary1093
	mov [rbp + 48], bl

 scanPattern$49:
	; goto 20
	jmp scanPattern$20

 scanPattern$50:
	; £temporary1095 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$51:
	; £temporary1097 = string + £temporary1095
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$52:
	; £field1094 -> £temporary1097 = *£temporary1097

 scanPattern$53:
	; £field1094 -> £temporary1097 = int1$0#
	mov byte [rsi], 0

 scanPattern$54:
	; goto 79
	jmp scanPattern$79

 scanPattern$55:
	; if not != int4$0# goto 64
	cmp dword [rbp + 40], 0
	jne scanPattern$64

 scanPattern$56:
	; call header integral zero 0 stack zero 0

 scanPattern$57:
	; parameter pattern, offset 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

 scanPattern$58:
	; £temporary1100 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$59
	neg al
	neg eax

 scanPattern$59:
	; parameter £temporary1100, offset 81
	mov [rbp + 81], eax

 scanPattern$60:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 49], scanPattern$61
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

 scanPattern$61:
	; post call

 scanPattern$62:
	; £temporary1101 = return_value

 scanPattern$63:
	; if £temporary1101 != int4$0# goto 73
	cmp rbx, 0
	jne scanPattern$73

 scanPattern$64:
	; if not == int4$0# goto 79
	cmp dword [rbp + 40], 0
	je scanPattern$79

 scanPattern$65:
	; call header integral zero 0 stack zero 0

 scanPattern$66:
	; parameter pattern, offset 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

 scanPattern$67:
	; £temporary1104 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$68
	neg al
	neg eax

 scanPattern$68:
	; parameter £temporary1104, offset 81
	mov [rbp + 81], eax

 scanPattern$69:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 49], scanPattern$70
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

 scanPattern$70:
	; post call

 scanPattern$71:
	; £temporary1105 = return_value

 scanPattern$72:
	; if £temporary1105 != int4$0# goto 79
	cmp rbx, 0
	jne scanPattern$79

 scanPattern$73:
	; call header integral zero 0 stack zero 0

 scanPattern$74:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanPattern$75
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanPattern$75:
	; post call

 scanPattern$76:
	; £temporary1111 = return_value

 scanPattern$77:
	; input = £temporary1111
	mov [rbp + 48], bl

 scanPattern$78:
	; goto 55
	jmp scanPattern$55

 scanPattern$79:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanPattern$80:
	; function end scanPattern

 scanString:
	; index = int4$0#
	mov dword [rbp + 36], 0

 scanString$1:
	; call header integral zero 0 stack zero 0

 scanString$2:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 40], scanString$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp scanChar

 scanString$3:
	; post call

 scanString$4:
	; £temporary1112 = return_value

 scanString$5:
	; input = £temporary1112
	mov [rbp + 40], bl

 scanString$6:
	; found = int4$0#
	mov dword [rbp + 41], 0

 scanString$7:
	; call header integral zero 0 stack zero 0

 scanString$8:
	; £temporary1113 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$9
	neg al
	neg eax

 scanString$9:
	; parameter £temporary1113, offset 69
	mov [rbp + 69], eax

 scanString$10:
	; call function noellipse-noellipse isspace
	mov qword [rbp + 45], scanString$11
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$11:
	; post call

 scanString$12:
	; £temporary1114 = return_value

 scanString$13:
	; if £temporary1114 == int4$0# goto 20
	cmp ebx, 0
	je scanString$20

 scanString$14:
	; call header integral zero 0 stack zero 0

 scanString$15:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 45], scanString$16
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$16:
	; post call

 scanString$17:
	; £temporary1115 = return_value

 scanString$18:
	; input = £temporary1115
	mov [rbp + 40], bl

 scanString$19:
	; goto 7
	jmp scanString$7

 scanString$20:
	; if string == int8$0# goto 86
	cmp qword [rbp + 24], 0
	je scanString$86

 scanString$21:
	; if precision != int4$0# goto 52
	cmp dword [rbp + 32], 0
	jne scanString$52

 scanString$22:
	; call header integral zero 0 stack zero 0

 scanString$23:
	; £temporary1119 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$24
	neg al
	neg eax

 scanString$24:
	; parameter £temporary1119, offset 69
	mov [rbp + 69], eax

 scanString$25:
	; call function noellipse-noellipse isspace
	mov qword [rbp + 45], scanString$26
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$26:
	; post call

 scanString$27:
	; £temporary1120 = return_value

 scanString$28:
	; if £temporary1120 != int4$0# goto 46
	cmp ebx, 0
	jne scanString$46

 scanString$29:
	; £temporary1123 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$30
	neg al
	neg eax

 scanString$30:
	; if £temporary1123 == int4$minus1# goto 46
	cmp eax, -1
	je scanString$46

 scanString$31:
	; if input == int1$10# goto 46
	cmp byte [rbp + 40], 10
	je scanString$46

 scanString$32:
	; £temporary1128 = index
	mov eax, [rbp + 36]

 scanString$33:
	; index = index + int4$1#
	inc dword [rbp + 36]

 scanString$34:
	; £temporary1130 = int_to_int £temporary1128 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 scanString$35:
	; £temporary1132 = string + £temporary1130
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$36:
	; £field1129 -> £temporary1132 = *£temporary1132

 scanString$37:
	; £field1129 -> £temporary1132 = input
	mov al, [rbp + 40]
	mov [rsi], al

 scanString$38:
	; call header integral zero 0 stack zero 0

 scanString$39:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 45], scanString$40
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$40:
	; post call

 scanString$41:
	; £temporary1133 = return_value

 scanString$42:
	; input = £temporary1133
	mov [rbp + 40], bl

 scanString$43:
	; found = int4$1#
	mov dword [rbp + 41], 1

 scanString$44:
	; g_inChars = g_inChars + int4$1#
	inc dword [g_inChars]

 scanString$45:
	; goto 22
	jmp scanString$22

 scanString$46:
	; £temporary1136 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$47:
	; £temporary1138 = string + £temporary1136
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$48:
	; £field1135 -> £temporary1138 = *£temporary1138

 scanString$49:
	; £field1135 -> £temporary1138 = int1$0#
	mov byte [rsi], 0

 scanString$50:
	; g_inChars = g_inChars + int4$1#
	inc dword [g_inChars]

 scanString$51:
	; goto 130
	jmp scanString$130

 scanString$52:
	; £temporary1140 = precision
	mov eax, [rbp + 32]

 scanString$53:
	; precision = precision - int4$1#
	dec dword [rbp + 32]

 scanString$54:
	; if £temporary1140 <= int4$0# goto 79
	cmp eax, 0
	jle scanString$79

 scanString$55:
	; call header integral zero 0 stack zero 0

 scanString$56:
	; £temporary1142 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$57
	neg al
	neg eax

 scanString$57:
	; parameter £temporary1142, offset 69
	mov [rbp + 69], eax

 scanString$58:
	; call function noellipse-noellipse isspace
	mov qword [rbp + 45], scanString$59
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$59:
	; post call

 scanString$60:
	; £temporary1143 = return_value

 scanString$61:
	; if £temporary1143 != int4$0# goto 79
	cmp ebx, 0
	jne scanString$79

 scanString$62:
	; £temporary1146 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$63
	neg al
	neg eax

 scanString$63:
	; if £temporary1146 == int4$minus1# goto 79
	cmp eax, -1
	je scanString$79

 scanString$64:
	; if input == int1$10# goto 79
	cmp byte [rbp + 40], 10
	je scanString$79

 scanString$65:
	; £temporary1152 = index
	mov eax, [rbp + 36]

 scanString$66:
	; index = index + int4$1#
	inc dword [rbp + 36]

 scanString$67:
	; £temporary1154 = int_to_int £temporary1152 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 scanString$68:
	; £temporary1156 = string + £temporary1154
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$69:
	; £field1153 -> £temporary1156 = *£temporary1156

 scanString$70:
	; £field1153 -> £temporary1156 = input
	mov al, [rbp + 40]
	mov [rsi], al

 scanString$71:
	; call header integral zero 0 stack zero 0

 scanString$72:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 45], scanString$73
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$73:
	; post call

 scanString$74:
	; £temporary1157 = return_value

 scanString$75:
	; input = £temporary1157
	mov [rbp + 40], bl

 scanString$76:
	; found = int4$1#
	mov dword [rbp + 41], 1

 scanString$77:
	; g_inChars = g_inChars + int4$1#
	inc dword [g_inChars]

 scanString$78:
	; goto 52
	jmp scanString$52

 scanString$79:
	; if precision <= int4$0# goto 130
	cmp dword [rbp + 32], 0
	jle scanString$130

 scanString$80:
	; £temporary1161 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$81:
	; £temporary1163 = string + £temporary1161
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$82:
	; £field1160 -> £temporary1163 = *£temporary1163

 scanString$83:
	; £field1160 -> £temporary1163 = int1$0#
	mov byte [rsi], 0

 scanString$84:
	; g_inChars = g_inChars + int4$1#
	inc dword [g_inChars]

 scanString$85:
	; goto 130
	jmp scanString$130

 scanString$86:
	; if precision != int4$0# goto 107
	cmp dword [rbp + 32], 0
	jne scanString$107

 scanString$87:
	; call header integral zero 0 stack zero 0

 scanString$88:
	; £temporary1166 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$89
	neg al
	neg eax

 scanString$89:
	; parameter £temporary1166, offset 69
	mov [rbp + 69], eax

 scanString$90:
	; call function noellipse-noellipse isspace
	mov qword [rbp + 45], scanString$91
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$91:
	; post call

 scanString$92:
	; £temporary1167 = return_value

 scanString$93:
	; if £temporary1167 != int4$0# goto 105
	cmp ebx, 0
	jne scanString$105

 scanString$94:
	; £temporary1170 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$95
	neg al
	neg eax

 scanString$95:
	; if £temporary1170 == int4$minus1# goto 105
	cmp eax, -1
	je scanString$105

 scanString$96:
	; if input == int1$10# goto 105
	cmp byte [rbp + 40], 10
	je scanString$105

 scanString$97:
	; call header integral zero 0 stack zero 0

 scanString$98:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 45], scanString$99
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$99:
	; post call

 scanString$100:
	; £temporary1175 = return_value

 scanString$101:
	; input = £temporary1175
	mov [rbp + 40], bl

 scanString$102:
	; found = int4$1#
	mov dword [rbp + 41], 1

 scanString$103:
	; g_inChars = g_inChars + int4$1#
	inc dword [g_inChars]

 scanString$104:
	; goto 87
	jmp scanString$87

 scanString$105:
	; g_inChars = g_inChars + int4$1#
	inc dword [g_inChars]

 scanString$106:
	; goto 130
	jmp scanString$130

 scanString$107:
	; £temporary1178 = precision
	mov eax, [rbp + 32]

 scanString$108:
	; precision = precision - int4$1#
	dec dword [rbp + 32]

 scanString$109:
	; if £temporary1178 <= int4$0# goto 128
	cmp eax, 0
	jle scanString$128

 scanString$110:
	; call header integral zero 0 stack zero 0

 scanString$111:
	; £temporary1180 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$112
	neg al
	neg eax

 scanString$112:
	; parameter £temporary1180, offset 69
	mov [rbp + 69], eax

 scanString$113:
	; call function noellipse-noellipse isspace
	mov qword [rbp + 45], scanString$114
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$114:
	; post call

 scanString$115:
	; £temporary1181 = return_value

 scanString$116:
	; if £temporary1181 != int4$0# goto 128
	cmp ebx, 0
	jne scanString$128

 scanString$117:
	; £temporary1184 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$118
	neg al
	neg eax

 scanString$118:
	; if £temporary1184 == int4$minus1# goto 128
	cmp eax, -1
	je scanString$128

 scanString$119:
	; if input == int1$10# goto 128
	cmp byte [rbp + 40], 10
	je scanString$128

 scanString$120:
	; call header integral zero 0 stack zero 0

 scanString$121:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 45], scanString$122
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$122:
	; post call

 scanString$123:
	; £temporary1190 = return_value

 scanString$124:
	; input = £temporary1190
	mov [rbp + 40], bl

 scanString$125:
	; found = int4$1#
	mov dword [rbp + 41], 1

 scanString$126:
	; g_inChars = g_inChars + int4$1#
	inc dword [g_inChars]

 scanString$127:
	; goto 107
	jmp scanString$107

 scanString$128:
	; if precision <= int4$0# goto 130
	cmp dword [rbp + 32], 0
	jle scanString$130

 scanString$129:
	; g_inChars = g_inChars + int4$1#
	inc dword [g_inChars]

 scanString$130:
	; if found == int4$0# goto 132
	cmp dword [rbp + 41], 0
	je scanString$132

 scanString$131:
	; g_inCount = g_inCount + int4$1#
	inc dword [g_inCount]

 scanString$132:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanString$133:
	; function end scanString

 digitToValue:
	; call header integral zero 0 stack zero 0

 digitToValue$1:
	; £temporary1196 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge digitToValue$2
	neg al
	neg eax

 digitToValue$2:
	; parameter £temporary1196, offset 49
	mov [rbp + 49], eax

 digitToValue$3:
	; call function noellipse-noellipse isdigit
	mov qword [rbp + 25], digitToValue$4
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isdigit

 digitToValue$4:
	; post call

 digitToValue$5:
	; £temporary1197 = return_value

 digitToValue$6:
	; if £temporary1197 == int4$0# goto 10
	cmp ebx, 0
	je digitToValue$10

 digitToValue$7:
	; £temporary1198 = input - int1$48#
	mov bl, [rbp + 24]
	sub bl, 48

 digitToValue$8:
	; £temporary1199 = int_to_int £temporary1198 (Signed_Char -> Unsigned_Long_Int)
	mov rax, 255
	and rbx, rax

 digitToValue$9:
	; return £temporary1199
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToValue$10:
	; call header integral zero 0 stack zero 0

 digitToValue$11:
	; £temporary1200 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge digitToValue$12
	neg al
	neg eax

 digitToValue$12:
	; parameter £temporary1200, offset 49
	mov [rbp + 49], eax

 digitToValue$13:
	; call function noellipse-noellipse islower
	mov qword [rbp + 25], digitToValue$14
	mov [rbp + 33], rbp
	add rbp, 25
	jmp islower

 digitToValue$14:
	; post call

 digitToValue$15:
	; £temporary1201 = return_value

 digitToValue$16:
	; if £temporary1201 == int4$0# goto 21
	cmp ebx, 0
	je digitToValue$21

 digitToValue$17:
	; £temporary1202 = input - int1$97#
	mov bl, [rbp + 24]
	sub bl, 97

 digitToValue$18:
	; £temporary1203 = int_to_int £temporary1202 (Signed_Char -> Unsigned_Long_Int)
	mov rax, 255
	and rbx, rax

 digitToValue$19:
	; £temporary1204 = £temporary1203 + int8$10#
	add rbx, 10

 digitToValue$20:
	; return £temporary1204
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToValue$21:
	; £temporary1205 = input - int1$65#
	mov bl, [rbp + 24]
	sub bl, 65

 digitToValue$22:
	; £temporary1206 = int_to_int £temporary1205 (Signed_Char -> Unsigned_Long_Int)
	mov rax, 255
	and rbx, rax

 digitToValue$23:
	; £temporary1207 = £temporary1206 + int8$10#
	add rbx, 10

 digitToValue$24:
	; return £temporary1207
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToValue$25:
	; function end digitToValue

 scanLongInt:
	; longValue = int8$0#
	mov qword [rbp + 24], 0

 scanLongInt$1:
	; minus = int4$0#
	mov dword [rbp + 32], 0

 scanLongInt$2:
	; found = int4$0#
	mov dword [rbp + 36], 0

 scanLongInt$3:
	; call header integral zero 0 stack zero 0

 scanLongInt$4:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 40], scanLongInt$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp scanChar

 scanLongInt$5:
	; post call

 scanLongInt$6:
	; £temporary1210 = return_value

 scanLongInt$7:
	; input = £temporary1210
	mov [rbp + 40], bl

 scanLongInt$8:
	; call header integral zero 0 stack zero 0

 scanLongInt$9:
	; £temporary1211 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanLongInt$10
	neg al
	neg eax

 scanLongInt$10:
	; parameter £temporary1211, offset 65
	mov [rbp + 65], eax

 scanLongInt$11:
	; call function noellipse-noellipse isspace
	mov qword [rbp + 41], scanLongInt$12
	mov [rbp + 49], rbp
	add rbp, 41
	jmp isspace

 scanLongInt$12:
	; post call

 scanLongInt$13:
	; £temporary1212 = return_value

 scanLongInt$14:
	; if £temporary1212 == int4$0# goto 21
	cmp ebx, 0
	je scanLongInt$21

 scanLongInt$15:
	; call header integral zero 0 stack zero 0

 scanLongInt$16:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 41], scanLongInt$17
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

 scanLongInt$17:
	; post call

 scanLongInt$18:
	; £temporary1213 = return_value

 scanLongInt$19:
	; input = £temporary1213
	mov [rbp + 40], bl

 scanLongInt$20:
	; goto 8
	jmp scanLongInt$8

 scanLongInt$21:
	; if input != int1$43# goto 28
	cmp byte [rbp + 40], 43
	jne scanLongInt$28

 scanLongInt$22:
	; call header integral zero 0 stack zero 0

 scanLongInt$23:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 41], scanLongInt$24
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

 scanLongInt$24:
	; post call

 scanLongInt$25:
	; £temporary1216 = return_value

 scanLongInt$26:
	; input = £temporary1216
	mov [rbp + 40], bl

 scanLongInt$27:
	; goto 35
	jmp scanLongInt$35

 scanLongInt$28:
	; if input != int1$45# goto 35
	cmp byte [rbp + 40], 45
	jne scanLongInt$35

 scanLongInt$29:
	; minus = int4$1#
	mov dword [rbp + 32], 1

 scanLongInt$30:
	; call header integral zero 0 stack zero 0

 scanLongInt$31:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 41], scanLongInt$32
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

 scanLongInt$32:
	; post call

 scanLongInt$33:
	; £temporary1218 = return_value

 scanLongInt$34:
	; input = £temporary1218
	mov [rbp + 40], bl

 scanLongInt$35:
	; call header integral zero 0 stack zero 0

 scanLongInt$36:
	; £temporary1219 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanLongInt$37
	neg al
	neg eax

 scanLongInt$37:
	; parameter £temporary1219, offset 65
	mov [rbp + 65], eax

 scanLongInt$38:
	; call function noellipse-noellipse isdigit
	mov qword [rbp + 41], scanLongInt$39
	mov [rbp + 49], rbp
	add rbp, 41
	jmp isdigit

 scanLongInt$39:
	; post call

 scanLongInt$40:
	; £temporary1220 = return_value

 scanLongInt$41:
	; if £temporary1220 == int4$0# goto 53
	cmp ebx, 0
	je scanLongInt$53

 scanLongInt$42:
	; £temporary1221 = longValue * int8$10#
	mov rax, [rbp + 24]
	xor rdx, rdx
	imul qword [int8$10#]

 scanLongInt$43:
	; £temporary1222 = input - int1$48#
	mov bl, [rbp + 40]
	sub bl, 48

 scanLongInt$44:
	; £temporary1223 = int_to_int £temporary1222 (Signed_Char -> Signed_Long_Int)
	mov rcx, 255
	and rbx, rcx
	cmp bl, 0
	jge scanLongInt$45
	neg bl
	neg rbx

 scanLongInt$45:
	; longValue = £temporary1221 + £temporary1223
	add rax, rbx
	mov [rbp + 24], rax

 scanLongInt$46:
	; call header integral zero 0 stack zero 0

 scanLongInt$47:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 41], scanLongInt$48
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

 scanLongInt$48:
	; post call

 scanLongInt$49:
	; £temporary1225 = return_value

 scanLongInt$50:
	; input = £temporary1225
	mov [rbp + 40], bl

 scanLongInt$51:
	; found = int4$1#
	mov dword [rbp + 36], 1

 scanLongInt$52:
	; goto 35
	jmp scanLongInt$35

 scanLongInt$53:
	; if minus == int4$0# goto 56
	cmp dword [rbp + 32], 0
	je scanLongInt$56

 scanLongInt$54:
	; £temporary1227 = -longValue
	mov rax, [rbp + 24]
	neg rax

 scanLongInt$55:
	; longValue = £temporary1227
	mov [rbp + 24], rax

 scanLongInt$56:
	; if found == int4$0# goto 58
	cmp dword [rbp + 36], 0
	je scanLongInt$58

 scanLongInt$57:
	; g_inCount = g_inCount + int4$1#
	inc dword [g_inCount]

 scanLongInt$58:
	; call header integral zero 0 stack zero 0

 scanLongInt$59:
	; parameter input, offset 65
	mov al, [rbp + 40]
	mov [rbp + 65], al

 scanLongInt$60:
	; call function noellipse-noellipse unscanChar
	mov qword [rbp + 41], scanLongInt$61
	mov [rbp + 49], rbp
	add rbp, 41
	jmp unscanChar

 scanLongInt$61:
	; post call

 scanLongInt$62:
	; return longValue
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongInt$63:
	; function end scanLongInt

 scanUnsignedLongInt:
	; unsignedLongValue = int8$0#
	mov qword [rbp + 32], 0

 scanUnsignedLongInt$1:
	; call header integral zero 0 stack zero 0

 scanUnsignedLongInt$2:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 48], scanUnsignedLongInt$3
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanChar

 scanUnsignedLongInt$3:
	; post call

 scanUnsignedLongInt$4:
	; £temporary1232 = return_value

 scanUnsignedLongInt$5:
	; input = £temporary1232
	mov [rbp + 48], bl

 scanUnsignedLongInt$6:
	; found = int4$1#
	mov dword [rbp + 49], 1

 scanUnsignedLongInt$7:
	; call header integral zero 0 stack zero 0

 scanUnsignedLongInt$8:
	; £temporary1233 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$9
	neg al
	neg eax

 scanUnsignedLongInt$9:
	; parameter £temporary1233, offset 77
	mov [rbp + 77], eax

 scanUnsignedLongInt$10:
	; call function noellipse-noellipse isspace
	mov qword [rbp + 53], scanUnsignedLongInt$11
	mov [rbp + 61], rbp
	add rbp, 53
	jmp isspace

 scanUnsignedLongInt$11:
	; post call

 scanUnsignedLongInt$12:
	; £temporary1234 = return_value

 scanUnsignedLongInt$13:
	; if £temporary1234 == int4$0# goto 20
	cmp ebx, 0
	je scanUnsignedLongInt$20

 scanUnsignedLongInt$14:
	; call header integral zero 0 stack zero 0

 scanUnsignedLongInt$15:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 53], scanUnsignedLongInt$16
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanUnsignedLongInt$16:
	; post call

 scanUnsignedLongInt$17:
	; £temporary1235 = return_value

 scanUnsignedLongInt$18:
	; input = £temporary1235
	mov [rbp + 48], bl

 scanUnsignedLongInt$19:
	; goto 7
	jmp scanUnsignedLongInt$7

 scanUnsignedLongInt$20:
	; if input != int1$48# goto 49
	cmp byte [rbp + 48], 48
	jne scanUnsignedLongInt$49

 scanUnsignedLongInt$21:
	; call header integral zero 0 stack zero 0

 scanUnsignedLongInt$22:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 53], scanUnsignedLongInt$23
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanUnsignedLongInt$23:
	; post call

 scanUnsignedLongInt$24:
	; £temporary1238 = return_value

 scanUnsignedLongInt$25:
	; input = £temporary1238
	mov [rbp + 48], bl

 scanUnsignedLongInt$26:
	; call header integral zero 0 stack zero 0

 scanUnsignedLongInt$27:
	; £temporary1239 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$28
	neg al
	neg eax

 scanUnsignedLongInt$28:
	; parameter £temporary1239, offset 77
	mov [rbp + 77], eax

 scanUnsignedLongInt$29:
	; call function noellipse-noellipse tolower
	mov qword [rbp + 53], scanUnsignedLongInt$30
	mov [rbp + 61], rbp
	add rbp, 53
	jmp tolower

 scanUnsignedLongInt$30:
	; post call

 scanUnsignedLongInt$31:
	; £temporary1240 = return_value

 scanUnsignedLongInt$32:
	; if £temporary1240 != int4$120# goto 44
	cmp ebx, 120
	jne scanUnsignedLongInt$44

 scanUnsignedLongInt$33:
	; if base != int8$0# goto 36
	cmp qword [rbp + 24], 0
	jne scanUnsignedLongInt$36

 scanUnsignedLongInt$34:
	; £temporary1243 = int8$16#
	mov rax, 16

 scanUnsignedLongInt$35:
	; goto 37
	jmp scanUnsignedLongInt$37

 scanUnsignedLongInt$36:
	; £temporary1243 = base
	mov rax, [rbp + 24]

 scanUnsignedLongInt$37:
	; base = £temporary1243
	mov [rbp + 24], rax

 scanUnsignedLongInt$38:
	; call header integral zero 0 stack zero 0

 scanUnsignedLongInt$39:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 53], scanUnsignedLongInt$40
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanUnsignedLongInt$40:
	; post call

 scanUnsignedLongInt$41:
	; £temporary1244 = return_value

 scanUnsignedLongInt$42:
	; input = £temporary1244
	mov [rbp + 48], bl

 scanUnsignedLongInt$43:
	; goto 49
	jmp scanUnsignedLongInt$49

 scanUnsignedLongInt$44:
	; if base != int8$0# goto 47
	cmp qword [rbp + 24], 0
	jne scanUnsignedLongInt$47

 scanUnsignedLongInt$45:
	; £temporary1246 = int8$8#
	mov rax, 8

 scanUnsignedLongInt$46:
	; goto 48
	jmp scanUnsignedLongInt$48

 scanUnsignedLongInt$47:
	; £temporary1246 = base
	mov rax, [rbp + 24]

 scanUnsignedLongInt$48:
	; base = £temporary1246
	mov [rbp + 24], rax

 scanUnsignedLongInt$49:
	; if base != int8$0# goto 51
	cmp qword [rbp + 24], 0
	jne scanUnsignedLongInt$51

 scanUnsignedLongInt$50:
	; base = int8$10#
	mov qword [rbp + 24], 10

 scanUnsignedLongInt$51:
	; call header integral zero 0 stack zero 0

 scanUnsignedLongInt$52:
	; £temporary1248 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$53
	neg al
	neg eax

 scanUnsignedLongInt$53:
	; parameter £temporary1248, offset 77
	mov [rbp + 77], eax

 scanUnsignedLongInt$54:
	; call function noellipse-noellipse isxdigit
	mov qword [rbp + 53], scanUnsignedLongInt$55
	mov [rbp + 61], rbp
	add rbp, 53
	jmp isxdigit

 scanUnsignedLongInt$55:
	; post call

 scanUnsignedLongInt$56:
	; £temporary1249 = return_value

 scanUnsignedLongInt$57:
	; if £temporary1249 == int4$0# goto 74
	cmp ebx, 0
	je scanUnsignedLongInt$74

 scanUnsignedLongInt$58:
	; call header integral zero 0 stack zero 0

 scanUnsignedLongInt$59:
	; parameter input, offset 77
	mov al, [rbp + 48]
	mov [rbp + 77], al

 scanUnsignedLongInt$60:
	; call function noellipse-noellipse digitToValue
	mov qword [rbp + 53], scanUnsignedLongInt$61
	mov [rbp + 61], rbp
	add rbp, 53
	jmp digitToValue

 scanUnsignedLongInt$61:
	; post call

 scanUnsignedLongInt$62:
	; £temporary1250 = return_value

 scanUnsignedLongInt$63:
	; digit = £temporary1250
	mov [rbp + 40], rbx

 scanUnsignedLongInt$64:
	; if digit >= base goto 74
	mov rax, [rbp + 24]
	cmp [rbp + 40], rax
	jae scanUnsignedLongInt$74

 scanUnsignedLongInt$65:
	; £temporary1252 = unsignedLongValue * base
	mov rax, [rbp + 32]
	xor rdx, rdx
	mul qword [rbp + 24]

 scanUnsignedLongInt$66:
	; unsignedLongValue = £temporary1252 + digit
	add rax, [rbp + 40]
	mov [rbp + 32], rax

 scanUnsignedLongInt$67:
	; found = int4$1#
	mov dword [rbp + 49], 1

 scanUnsignedLongInt$68:
	; call header integral zero 0 stack zero 0

 scanUnsignedLongInt$69:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 53], scanUnsignedLongInt$70
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanUnsignedLongInt$70:
	; post call

 scanUnsignedLongInt$71:
	; £temporary1254 = return_value

 scanUnsignedLongInt$72:
	; input = £temporary1254
	mov [rbp + 48], bl

 scanUnsignedLongInt$73:
	; goto 51
	jmp scanUnsignedLongInt$51

 scanUnsignedLongInt$74:
	; if found == int4$0# goto 76
	cmp dword [rbp + 49], 0
	je scanUnsignedLongInt$76

 scanUnsignedLongInt$75:
	; g_inCount = g_inCount + int4$1#
	inc dword [g_inCount]

 scanUnsignedLongInt$76:
	; call header integral zero 0 stack zero 0

 scanUnsignedLongInt$77:
	; parameter input, offset 77
	mov al, [rbp + 48]
	mov [rbp + 77], al

 scanUnsignedLongInt$78:
	; call function noellipse-noellipse unscanChar
	mov qword [rbp + 53], scanUnsignedLongInt$79
	mov [rbp + 61], rbp
	add rbp, 53
	jmp unscanChar

 scanUnsignedLongInt$79:
	; post call

 scanUnsignedLongInt$80:
	; return unsignedLongValue
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanUnsignedLongInt$81:
	; function end scanUnsignedLongInt

 scanLongDouble:
	; minus = int4$0#
	mov dword [rbp + 24], 0

 scanLongDouble$1:
	; found = int4$0#
	mov dword [rbp + 28], 0

 scanLongDouble$2:
	; push float float8$0.0#
	fldz

 scanLongDouble$3:
	; pop float value
	fstp qword [rbp + 32]

 scanLongDouble$4:
	; push float float8$1.0#
	fld1

 scanLongDouble$5:
	; pop float factor
	fstp qword [rbp + 40]

 scanLongDouble$6:
	; call header integral zero 0 stack zero 0

 scanLongDouble$7:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 48], scanLongDouble$8
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanChar

 scanLongDouble$8:
	; post call

 scanLongDouble$9:
	; £temporary1259 = return_value

 scanLongDouble$10:
	; input = £temporary1259
	mov [rbp + 48], bl

 scanLongDouble$11:
	; call header integral zero 0 stack zero 0

 scanLongDouble$12:
	; £temporary1260 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$13
	neg al
	neg eax

 scanLongDouble$13:
	; parameter £temporary1260, offset 73
	mov [rbp + 73], eax

 scanLongDouble$14:
	; call function noellipse-noellipse isspace
	mov qword [rbp + 49], scanLongDouble$15
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isspace

 scanLongDouble$15:
	; post call

 scanLongDouble$16:
	; £temporary1261 = return_value

 scanLongDouble$17:
	; if £temporary1261 == int4$0# goto 24
	cmp ebx, 0
	je scanLongDouble$24

 scanLongDouble$18:
	; call header integral zero 0 stack zero 0

 scanLongDouble$19:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$20
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$20:
	; post call

 scanLongDouble$21:
	; £temporary1262 = return_value

 scanLongDouble$22:
	; input = £temporary1262
	mov [rbp + 48], bl

 scanLongDouble$23:
	; goto 11
	jmp scanLongDouble$11

 scanLongDouble$24:
	; if input != int1$43# goto 31
	cmp byte [rbp + 48], 43
	jne scanLongDouble$31

 scanLongDouble$25:
	; call header integral zero 0 stack zero 0

 scanLongDouble$26:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$27
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$27:
	; post call

 scanLongDouble$28:
	; £temporary1265 = return_value

 scanLongDouble$29:
	; input = £temporary1265
	mov [rbp + 48], bl

 scanLongDouble$30:
	; goto 38
	jmp scanLongDouble$38

 scanLongDouble$31:
	; if input != int1$45# goto 38
	cmp byte [rbp + 48], 45
	jne scanLongDouble$38

 scanLongDouble$32:
	; minus = int4$1#
	mov dword [rbp + 24], 1

 scanLongDouble$33:
	; call header integral zero 0 stack zero 0

 scanLongDouble$34:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$35
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$35:
	; post call

 scanLongDouble$36:
	; £temporary1267 = return_value

 scanLongDouble$37:
	; input = £temporary1267
	mov [rbp + 48], bl

 scanLongDouble$38:
	; call header integral zero 0 stack zero 0

 scanLongDouble$39:
	; £temporary1268 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$40
	neg al
	neg eax

 scanLongDouble$40:
	; parameter £temporary1268, offset 73
	mov [rbp + 73], eax

 scanLongDouble$41:
	; call function noellipse-noellipse isdigit
	mov qword [rbp + 49], scanLongDouble$42
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isdigit

 scanLongDouble$42:
	; post call

 scanLongDouble$43:
	; £temporary1269 = return_value

 scanLongDouble$44:
	; if £temporary1269 == int4$0# goto 60
	cmp ebx, 0
	je scanLongDouble$60

 scanLongDouble$45:
	; push float float8$10.0#
	fld qword [float8$10.0#]

 scanLongDouble$46:
	; push float value
	fld qword [rbp + 32]

 scanLongDouble$47:
	; £temporary1270 = float8$10.0# * value
	fmul

 scanLongDouble$48:
	; £temporary1271 = input - int1$48#
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$49:
	; £temporary1273 = int_to_int £temporary1271 (Signed_Char -> Signed_Int)
	and eax, 255
	cmp al, 0
	jge scanLongDouble$50
	neg al
	neg eax

 scanLongDouble$50:
	; £temporary1272 = int_to_float £temporary1273 (Signed_Int -> Long_Double)
	mov [container4bytes#], eax
	fild word [container4bytes#]

 scanLongDouble$51:
	; £temporary1274 = £temporary1270 + £temporary1272
	fadd

 scanLongDouble$52:
	; pop float value
	fstp qword [rbp + 32]

 scanLongDouble$53:
	; call header integral zero 0 stack zero 0

 scanLongDouble$54:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$55
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$55:
	; post call

 scanLongDouble$56:
	; £temporary1275 = return_value

 scanLongDouble$57:
	; input = £temporary1275
	mov [rbp + 48], bl

 scanLongDouble$58:
	; found = int4$1#
	mov dword [rbp + 28], 1

 scanLongDouble$59:
	; goto 38
	jmp scanLongDouble$38

 scanLongDouble$60:
	; if input != int1$46# goto 92
	cmp byte [rbp + 48], 46
	jne scanLongDouble$92

 scanLongDouble$61:
	; call header integral zero 0 stack zero 0

 scanLongDouble$62:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$63
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$63:
	; post call

 scanLongDouble$64:
	; £temporary1278 = return_value

 scanLongDouble$65:
	; input = £temporary1278
	mov [rbp + 48], bl

 scanLongDouble$66:
	; call header integral zero 0 stack zero 0

 scanLongDouble$67:
	; £temporary1279 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$68
	neg al
	neg eax

 scanLongDouble$68:
	; parameter £temporary1279, offset 73
	mov [rbp + 73], eax

 scanLongDouble$69:
	; call function noellipse-noellipse isdigit
	mov qword [rbp + 49], scanLongDouble$70
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isdigit

 scanLongDouble$70:
	; post call

 scanLongDouble$71:
	; £temporary1280 = return_value

 scanLongDouble$72:
	; if £temporary1280 == int4$0# goto 92
	cmp ebx, 0
	je scanLongDouble$92

 scanLongDouble$73:
	; push float factor
	fld qword [rbp + 40]

 scanLongDouble$74:
	; push float float8$10.0#
	fld qword [float8$10.0#]

 scanLongDouble$75:
	; £temporary1281 = factor / float8$10.0#
	fdiv

 scanLongDouble$76:
	; pop float factor
	fstp qword [rbp + 40]

 scanLongDouble$77:
	; push float value
	fld qword [rbp + 32]

 scanLongDouble$78:
	; push float factor
	fld qword [rbp + 40]

 scanLongDouble$79:
	; £temporary1282 = input - int1$48#
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$80:
	; £temporary1284 = int_to_int £temporary1282 (Signed_Char -> Signed_Int)
	and eax, 255
	cmp al, 0
	jge scanLongDouble$81
	neg al
	neg eax

 scanLongDouble$81:
	; £temporary1283 = int_to_float £temporary1284 (Signed_Int -> Long_Double)
	mov [container4bytes#], eax
	fild word [container4bytes#]

 scanLongDouble$82:
	; £temporary1285 = factor * £temporary1283
	fmul

 scanLongDouble$83:
	; £temporary1286 = value + £temporary1285
	fadd

 scanLongDouble$84:
	; pop float value
	fstp qword [rbp + 32]

 scanLongDouble$85:
	; call header integral zero 0 stack zero 0

 scanLongDouble$86:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$87
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$87:
	; post call

 scanLongDouble$88:
	; £temporary1287 = return_value

 scanLongDouble$89:
	; input = £temporary1287
	mov [rbp + 48], bl

 scanLongDouble$90:
	; found = int4$1#
	mov dword [rbp + 28], 1

 scanLongDouble$91:
	; goto 66
	jmp scanLongDouble$66

 scanLongDouble$92:
	; call header integral zero 0 stack zero 0

 scanLongDouble$93:
	; parameter input, offset 73
	mov al, [rbp + 48]
	mov [rbp + 73], al

 scanLongDouble$94:
	; call function noellipse-noellipse unscanChar
	mov qword [rbp + 49], scanLongDouble$95
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

 scanLongDouble$95:
	; post call

 scanLongDouble$96:
	; call header integral zero 0 stack zero 0

 scanLongDouble$97:
	; £temporary1290 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$98
	neg al
	neg eax

 scanLongDouble$98:
	; parameter £temporary1290, offset 73
	mov [rbp + 73], eax

 scanLongDouble$99:
	; call function noellipse-noellipse tolower
	mov qword [rbp + 49], scanLongDouble$100
	mov [rbp + 57], rbp
	add rbp, 49
	jmp tolower

 scanLongDouble$100:
	; post call

 scanLongDouble$101:
	; £temporary1291 = return_value

 scanLongDouble$102:
	; if £temporary1291 != int4$101# goto 121
	cmp ebx, 101
	jne scanLongDouble$121

 scanLongDouble$103:
	; call header integral zero 0 stack zero 0

 scanLongDouble$104:
	; call function noellipse-noellipse scanLongInt
	mov qword [rbp + 49], scanLongDouble$105
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanLongInt

 scanLongDouble$105:
	; post call

 scanLongDouble$106:
	; £temporary1293 = return_value

 scanLongDouble$107:
	; £temporary1294 = int_to_float £temporary1293 (Signed_Long_Int -> Double)
	mov [container8bytes#], rbx
	fild dword [container8bytes#]

 scanLongDouble$108:
	; pop float exponent
	fstp qword [rbp + 49]

 scanLongDouble$109:
	; push float value
	fld qword [rbp + 32]

 scanLongDouble$110:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 57]

 scanLongDouble$111:
	; push float float8$10.0#
	fld qword [float8$10.0#]

 scanLongDouble$112:
	; parameter float8$10.0#, offset 81
	fstp qword [rbp + 89]

 scanLongDouble$113:
	; push float exponent
	fld qword [rbp + 49]

 scanLongDouble$114:
	; parameter exponent, offset 89
	fstp qword [rbp + 97]

 scanLongDouble$115:
	; call function noellipse-noellipse pow
	mov qword [rbp + 65], scanLongDouble$116
	mov [rbp + 73], rbp
	add rbp, 65
	jmp pow

 scanLongDouble$116:
	; post call
	fstp qword [rbp + 65]
	fld qword [rbp + 57]
	fld qword [rbp + 65]

 scanLongDouble$117:
	; £temporary1295 = return_value

 scanLongDouble$118:
	; £temporary1296 = value * £temporary1295
	fmul

 scanLongDouble$119:
	; pop float value
	fstp qword [rbp + 32]

 scanLongDouble$120:
	; goto 125
	jmp scanLongDouble$125

 scanLongDouble$121:
	; call header integral zero 0 stack zero 0

 scanLongDouble$122:
	; parameter input, offset 73
	mov al, [rbp + 48]
	mov [rbp + 73], al

 scanLongDouble$123:
	; call function noellipse-noellipse unscanChar
	mov qword [rbp + 49], scanLongDouble$124
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

 scanLongDouble$124:
	; post call

 scanLongDouble$125:
	; if minus == int4$0# goto 129
	cmp dword [rbp + 24], 0
	je scanLongDouble$129

 scanLongDouble$126:
	; push float value
	fld qword [rbp + 32]

 scanLongDouble$127:
	; £temporary1298 = -value
	fchs

 scanLongDouble$128:
	; pop float value
	fstp qword [rbp + 32]

 scanLongDouble$129:
	; if found == int4$0# goto 131
	cmp dword [rbp + 28], 0
	je scanLongDouble$131

 scanLongDouble$130:
	; g_inCount = g_inCount + int4$1#
	inc dword [g_inCount]

 scanLongDouble$131:
	; push float value
	fld qword [rbp + 32]

 scanLongDouble$132:
	; return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongDouble$133:
	; function end scanLongDouble

 scanFormat:
	; empty

 scanFormat$1:
	; percent = int4$0#
	mov dword [rbp + 49], 0

 scanFormat$2:
	; shortInt = int4$0#
	mov dword [rbp + 53], 0

 scanFormat$3:
	; longIntOrDouble = int4$0#
	mov dword [rbp + 57], 0

 scanFormat$4:
	; longDouble = int4$0#
	mov dword [rbp + 61], 0

 scanFormat$5:
	; star = int4$0#
	mov dword [rbp + 65], 0

 scanFormat$6:
	; g_inCount = int4$0#
	mov dword [g_inCount], 0

 scanFormat$7:
	; g_inChars = int4$0#
	mov dword [g_inChars], 0

 scanFormat$8:
	; index = int4$0#
	mov dword [rbp + 93], 0

 scanFormat$9:
	; £temporary1305 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$10:
	; £temporary1307 = format + £temporary1305
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$11:
	; £field1304 -> £temporary1307 = *£temporary1307

 scanFormat$12:
	; if £field1304 -> £temporary1307 == int1$0# goto 333
	cmp byte [rsi], 0
	je scanFormat$333

 scanFormat$13:
	; £temporary1311 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$14:
	; £temporary1313 = format + £temporary1311
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$15:
	; £field1310 -> £temporary1313 = *£temporary1313

 scanFormat$16:
	; c = £field1310 -> £temporary1313
	mov al, [rsi]
	mov [rbp + 40], al

 scanFormat$17:
	; £temporary1314 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$18
	neg al
	neg eax

 scanFormat$18:
	; d = £temporary1314 + int4$1#
	inc eax
	mov [rbp + 153], eax

 scanFormat$19:
	; if percent == int4$0# goto 325
	cmp dword [rbp + 49], 0
	je scanFormat$325

 scanFormat$20:
	; £temporary1316 = d - int4$1#
	mov eax, [rbp + 153]
	dec eax

 scanFormat$21:
	; case £temporary1316 == int4$104# goto 39
	cmp eax, 104
	je scanFormat$39

 scanFormat$22:
	; case £temporary1316 == int4$108# goto 41
	cmp eax, 108
	je scanFormat$41

 scanFormat$23:
	; case £temporary1316 == int4$76# goto 43
	cmp eax, 76
	je scanFormat$43

 scanFormat$24:
	; case £temporary1316 == int4$42# goto 45
	cmp eax, 42
	je scanFormat$45

 scanFormat$25:
	; case £temporary1316 == int4$99# goto 47
	cmp eax, 99
	je scanFormat$47

 scanFormat$26:
	; case £temporary1316 == int4$115# goto 65
	cmp eax, 115
	je scanFormat$65

 scanFormat$27:
	; case £temporary1316 == int4$100# goto 84
	cmp eax, 100
	je scanFormat$84

 scanFormat$28:
	; case £temporary1316 == int4$105# goto 84
	cmp eax, 105
	je scanFormat$84

 scanFormat$29:
	; case £temporary1316 == int4$111# goto 119
	cmp eax, 111
	je scanFormat$119

 scanFormat$30:
	; case £temporary1316 == int4$120# goto 155
	cmp eax, 120
	je scanFormat$155

 scanFormat$31:
	; case £temporary1316 == int4$117# goto 191
	cmp eax, 117
	je scanFormat$191

 scanFormat$32:
	; case £temporary1316 == int4$103# goto 227
	cmp eax, 103
	je scanFormat$227

 scanFormat$33:
	; case £temporary1316 == int4$102# goto 227
	cmp eax, 102
	je scanFormat$227

 scanFormat$34:
	; case £temporary1316 == int4$101# goto 227
	cmp eax, 101
	je scanFormat$227

 scanFormat$35:
	; case £temporary1316 == int4$91# goto 263
	cmp eax, 91
	je scanFormat$263

 scanFormat$36:
	; case £temporary1316 == int4$110# goto 309
	cmp eax, 110
	je scanFormat$309

 scanFormat$37:
	; case end £temporary1316

 scanFormat$38:
	; goto 318
	jmp scanFormat$318

 scanFormat$39:
	; shortInt = int4$1#
	mov dword [rbp + 53], 1

 scanFormat$40:
	; goto 331
	jmp scanFormat$331

 scanFormat$41:
	; longIntOrDouble = int4$1#
	mov dword [rbp + 57], 1

 scanFormat$42:
	; goto 331
	jmp scanFormat$331

 scanFormat$43:
	; longDouble = int4$1#
	mov dword [rbp + 61], 1

 scanFormat$44:
	; goto 331
	jmp scanFormat$331

 scanFormat$45:
	; star = int4$1#
	mov dword [rbp + 65], 1

 scanFormat$46:
	; goto 331
	jmp scanFormat$331

 scanFormat$47:
	; call header integral zero 0 stack zero 0

 scanFormat$48:
	; call function noellipse-noellipse scanChar
	mov qword [rbp + 157], scanFormat$49
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanChar

 scanFormat$49:
	; post call

 scanFormat$50:
	; £temporary1317 = return_value

 scanFormat$51:
	; charValue = £temporary1317
	mov [rbp + 157], bl

 scanFormat$52:
	; if star != int4$0# goto 60
	cmp dword [rbp + 65], 0
	jne scanFormat$60

 scanFormat$53:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$54:
	; £temporary1322 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$55:
	; £temporary1324 = int_to_int £temporary1322 (Pointer -> Pointer)

 scanFormat$56:
	; £field1325 -> £temporary1324 = *£temporary1324

 scanFormat$57:
	; charPtr = £field1325 -> £temporary1324
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$58:
	; £field1326 -> charPtr = *charPtr
	mov rsi, [rbp + 41]

 scanFormat$59:
	; £field1326 -> charPtr = charValue
	mov al, [rbp + 157]
	mov [rsi], al

 scanFormat$60:
	; percent = int4$0#
	mov dword [rbp + 49], 0

 scanFormat$61:
	; £temporary1327 = int_to_int charValue (Signed_Char -> Signed_Int)
	mov al, [rbp + 157]
	and eax, 255
	cmp al, 0
	jge scanFormat$62
	neg al
	neg eax

 scanFormat$62:
	; if £temporary1327 == int4$minus1# goto 331
	cmp eax, -1
	je scanFormat$331

 scanFormat$63:
	; g_inCount = g_inCount + int4$1#
	inc dword [g_inCount]

 scanFormat$64:
	; goto 331
	jmp scanFormat$331

 scanFormat$65:
	; if star != int4$0# goto 77
	cmp dword [rbp + 65], 0
	jne scanFormat$77

 scanFormat$66:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$67:
	; £temporary1334 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$68:
	; £temporary1336 = int_to_int £temporary1334 (Pointer -> Pointer)

 scanFormat$69:
	; £field1337 -> £temporary1336 = *£temporary1336

 scanFormat$70:
	; charPtr = £field1337 -> £temporary1336
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$71:
	; call header integral zero 0 stack zero 0

 scanFormat$72:
	; parameter charPtr, offset 181
	mov rax, [rbp + 41]
	mov [rbp + 181], rax

 scanFormat$73:
	; parameter int4$0#, offset 189
	mov dword [rbp + 189], 0

 scanFormat$74:
	; call function noellipse-noellipse scanString
	mov qword [rbp + 157], scanFormat$75
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$75:
	; post call

 scanFormat$76:
	; goto 82
	jmp scanFormat$82

 scanFormat$77:
	; call header integral zero 0 stack zero 0

 scanFormat$78:
	; parameter int8$0#, offset 181
	mov qword [rbp + 181], 0

 scanFormat$79:
	; parameter int4$0#, offset 189
	mov dword [rbp + 189], 0

 scanFormat$80:
	; call function noellipse-noellipse scanString
	mov qword [rbp + 157], scanFormat$81
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$81:
	; post call

 scanFormat$82:
	; percent = int4$0#
	mov dword [rbp + 49], 0

 scanFormat$83:
	; goto 331
	jmp scanFormat$331

 scanFormat$84:
	; call header integral zero 0 stack zero 0

 scanFormat$85:
	; call function noellipse-noellipse scanLongInt
	mov qword [rbp + 157], scanFormat$86
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongInt

 scanFormat$86:
	; post call

 scanFormat$87:
	; £temporary1340 = return_value

 scanFormat$88:
	; longValue = £temporary1340
	mov [rbp + 69], rbx

 scanFormat$89:
	; if star != int4$0# goto 117
	cmp dword [rbp + 65], 0
	jne scanFormat$117

 scanFormat$90:
	; if shortInt == int4$0# goto 100
	cmp dword [rbp + 53], 0
	je scanFormat$100

 scanFormat$91:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$92:
	; £temporary1345 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$93:
	; £temporary1347 = int_to_int £temporary1345 (Pointer -> Pointer)

 scanFormat$94:
	; £field1348 -> £temporary1347 = *£temporary1347

 scanFormat$95:
	; shortPtr = £field1348 -> £temporary1347
	mov rax, [rsi]
	mov [rbp + 85], rax

 scanFormat$96:
	; £field1349 -> shortPtr = *shortPtr
	mov rsi, [rbp + 85]

 scanFormat$97:
	; £temporary1350 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$98
	neg rax
	neg ax

 scanFormat$98:
	; £field1349 -> shortPtr = £temporary1350
	mov [rsi], ax

 scanFormat$99:
	; goto 117
	jmp scanFormat$117

 scanFormat$100:
	; if longIntOrDouble != int4$0# goto 110
	cmp dword [rbp + 57], 0
	jne scanFormat$110

 scanFormat$101:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$102:
	; £temporary1355 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$103:
	; £temporary1357 = int_to_int £temporary1355 (Pointer -> Pointer)

 scanFormat$104:
	; £field1358 -> £temporary1357 = *£temporary1357

 scanFormat$105:
	; intPtr = £field1358 -> £temporary1357
	mov rax, [rsi]
	mov [rbp + 97], rax

 scanFormat$106:
	; £field1359 -> intPtr = *intPtr
	mov rsi, [rbp + 97]

 scanFormat$107:
	; £temporary1360 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$108
	neg rax
	neg eax

 scanFormat$108:
	; £field1359 -> intPtr = £temporary1360
	mov [rsi], eax

 scanFormat$109:
	; goto 117
	jmp scanFormat$117

 scanFormat$110:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$111:
	; £temporary1363 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$112:
	; £temporary1365 = int_to_int £temporary1363 (Pointer -> Pointer)

 scanFormat$113:
	; £field1366 -> £temporary1365 = *£temporary1365

 scanFormat$114:
	; longPtr = £field1366 -> £temporary1365
	mov rax, [rsi]
	mov [rbp + 77], rax

 scanFormat$115:
	; £field1367 -> longPtr = *longPtr
	mov rsi, [rbp + 77]

 scanFormat$116:
	; £field1367 -> longPtr = longValue
	mov rax, [rbp + 69]
	mov [rsi], rax

 scanFormat$117:
	; percent = int4$0#
	mov dword [rbp + 49], 0

 scanFormat$118:
	; goto 331
	jmp scanFormat$331

 scanFormat$119:
	; call header integral zero 0 stack zero 0

 scanFormat$120:
	; parameter int8$8#, offset 181
	mov qword [rbp + 181], 8

 scanFormat$121:
	; call function noellipse-noellipse scanUnsignedLongInt
	mov qword [rbp + 157], scanFormat$122
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$122:
	; post call

 scanFormat$123:
	; £temporary1369 = return_value

 scanFormat$124:
	; unsignedLongValue = £temporary1369
	mov [rbp + 113], rbx

 scanFormat$125:
	; if star != int4$0# goto 153
	cmp dword [rbp + 65], 0
	jne scanFormat$153

 scanFormat$126:
	; if shortInt == int4$0# goto 136
	cmp dword [rbp + 53], 0
	je scanFormat$136

 scanFormat$127:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$128:
	; £temporary1374 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$129:
	; £temporary1376 = int_to_int £temporary1374 (Pointer -> Pointer)

 scanFormat$130:
	; £field1377 -> £temporary1376 = *£temporary1376

 scanFormat$131:
	; unsignedShortPtr = £field1377 -> £temporary1376
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$132:
	; £field1378 -> unsignedShortPtr = *unsignedShortPtr
	mov rsi, [rbp + 129]

 scanFormat$133:
	; £temporary1379 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
	mov rax, [rbp + 113]

 scanFormat$134:
	; £field1378 -> unsignedShortPtr = £temporary1379
	mov [rsi], ax

 scanFormat$135:
	; goto 153
	jmp scanFormat$153

 scanFormat$136:
	; if longIntOrDouble != int4$0# goto 146
	cmp dword [rbp + 57], 0
	jne scanFormat$146

 scanFormat$137:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$138:
	; £temporary1384 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$139:
	; £temporary1386 = int_to_int £temporary1384 (Pointer -> Pointer)

 scanFormat$140:
	; £field1387 -> £temporary1386 = *£temporary1386

 scanFormat$141:
	; unsignedIntPtr = £field1387 -> £temporary1386
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$142:
	; £field1388 -> unsignedIntPtr = *unsignedIntPtr
	mov rsi, [rbp + 137]

 scanFormat$143:
	; £temporary1389 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
	mov rax, [rbp + 113]

 scanFormat$144:
	; £field1388 -> unsignedIntPtr = £temporary1389
	mov [rsi], eax

 scanFormat$145:
	; goto 153
	jmp scanFormat$153

 scanFormat$146:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$147:
	; £temporary1392 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$148:
	; £temporary1394 = int_to_int £temporary1392 (Pointer -> Pointer)

 scanFormat$149:
	; £field1395 -> £temporary1394 = *£temporary1394

 scanFormat$150:
	; unsignedLongPtr = £field1395 -> £temporary1394
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$151:
	; £field1396 -> unsignedLongPtr = *unsignedLongPtr
	mov rsi, [rbp + 121]

 scanFormat$152:
	; £field1396 -> unsignedLongPtr = unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$153:
	; percent = int4$0#
	mov dword [rbp + 49], 0

 scanFormat$154:
	; goto 331
	jmp scanFormat$331

 scanFormat$155:
	; call header integral zero 0 stack zero 0

 scanFormat$156:
	; parameter int8$16#, offset 181
	mov qword [rbp + 181], 16

 scanFormat$157:
	; call function noellipse-noellipse scanUnsignedLongInt
	mov qword [rbp + 157], scanFormat$158
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$158:
	; post call

 scanFormat$159:
	; £temporary1398 = return_value

 scanFormat$160:
	; unsignedLongValue = £temporary1398
	mov [rbp + 113], rbx

 scanFormat$161:
	; if star != int4$0# goto 189
	cmp dword [rbp + 65], 0
	jne scanFormat$189

 scanFormat$162:
	; if shortInt == int4$0# goto 172
	cmp dword [rbp + 53], 0
	je scanFormat$172

 scanFormat$163:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$164:
	; £temporary1403 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$165:
	; £temporary1405 = int_to_int £temporary1403 (Pointer -> Pointer)

 scanFormat$166:
	; £field1406 -> £temporary1405 = *£temporary1405

 scanFormat$167:
	; unsignedShortPtr = £field1406 -> £temporary1405
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$168:
	; £field1407 -> unsignedShortPtr = *unsignedShortPtr
	mov rsi, [rbp + 129]

 scanFormat$169:
	; £temporary1408 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
	mov rax, [rbp + 113]

 scanFormat$170:
	; £field1407 -> unsignedShortPtr = £temporary1408
	mov [rsi], ax

 scanFormat$171:
	; goto 189
	jmp scanFormat$189

 scanFormat$172:
	; if longIntOrDouble != int4$0# goto 182
	cmp dword [rbp + 57], 0
	jne scanFormat$182

 scanFormat$173:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$174:
	; £temporary1413 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$175:
	; £temporary1415 = int_to_int £temporary1413 (Pointer -> Pointer)

 scanFormat$176:
	; £field1416 -> £temporary1415 = *£temporary1415

 scanFormat$177:
	; unsignedIntPtr = £field1416 -> £temporary1415
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$178:
	; £field1417 -> unsignedIntPtr = *unsignedIntPtr
	mov rsi, [rbp + 137]

 scanFormat$179:
	; £temporary1418 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
	mov rax, [rbp + 113]

 scanFormat$180:
	; £field1417 -> unsignedIntPtr = £temporary1418
	mov [rsi], eax

 scanFormat$181:
	; goto 189
	jmp scanFormat$189

 scanFormat$182:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$183:
	; £temporary1421 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$184:
	; £temporary1423 = int_to_int £temporary1421 (Pointer -> Pointer)

 scanFormat$185:
	; £field1424 -> £temporary1423 = *£temporary1423

 scanFormat$186:
	; unsignedLongPtr = £field1424 -> £temporary1423
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$187:
	; £field1425 -> unsignedLongPtr = *unsignedLongPtr
	mov rsi, [rbp + 121]

 scanFormat$188:
	; £field1425 -> unsignedLongPtr = unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$189:
	; percent = int4$0#
	mov dword [rbp + 49], 0

 scanFormat$190:
	; goto 331
	jmp scanFormat$331

 scanFormat$191:
	; call header integral zero 0 stack zero 0

 scanFormat$192:
	; parameter int8$0#, offset 181
	mov qword [rbp + 181], 0

 scanFormat$193:
	; call function noellipse-noellipse scanUnsignedLongInt
	mov qword [rbp + 157], scanFormat$194
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$194:
	; post call

 scanFormat$195:
	; £temporary1427 = return_value

 scanFormat$196:
	; unsignedLongValue = £temporary1427
	mov [rbp + 113], rbx

 scanFormat$197:
	; if star != int4$0# goto 225
	cmp dword [rbp + 65], 0
	jne scanFormat$225

 scanFormat$198:
	; if shortInt == int4$0# goto 208
	cmp dword [rbp + 53], 0
	je scanFormat$208

 scanFormat$199:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$200:
	; £temporary1432 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$201:
	; £temporary1434 = int_to_int £temporary1432 (Pointer -> Pointer)

 scanFormat$202:
	; £field1435 -> £temporary1434 = *£temporary1434

 scanFormat$203:
	; unsignedShortPtr = £field1435 -> £temporary1434
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$204:
	; £field1436 -> unsignedShortPtr = *unsignedShortPtr
	mov rsi, [rbp + 129]

 scanFormat$205:
	; £temporary1437 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
	mov rax, [rbp + 113]

 scanFormat$206:
	; £field1436 -> unsignedShortPtr = £temporary1437
	mov [rsi], ax

 scanFormat$207:
	; goto 225
	jmp scanFormat$225

 scanFormat$208:
	; if longIntOrDouble != int4$0# goto 218
	cmp dword [rbp + 57], 0
	jne scanFormat$218

 scanFormat$209:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$210:
	; £temporary1442 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$211:
	; £temporary1444 = int_to_int £temporary1442 (Pointer -> Pointer)

 scanFormat$212:
	; £field1445 -> £temporary1444 = *£temporary1444

 scanFormat$213:
	; unsignedIntPtr = £field1445 -> £temporary1444
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$214:
	; £field1446 -> unsignedIntPtr = *unsignedIntPtr
	mov rsi, [rbp + 137]

 scanFormat$215:
	; £temporary1447 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
	mov rax, [rbp + 113]

 scanFormat$216:
	; £field1446 -> unsignedIntPtr = £temporary1447
	mov [rsi], eax

 scanFormat$217:
	; goto 225
	jmp scanFormat$225

 scanFormat$218:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$219:
	; £temporary1450 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$220:
	; £temporary1452 = int_to_int £temporary1450 (Pointer -> Pointer)

 scanFormat$221:
	; £field1453 -> £temporary1452 = *£temporary1452

 scanFormat$222:
	; unsignedLongPtr = £field1453 -> £temporary1452
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$223:
	; £field1454 -> unsignedLongPtr = *unsignedLongPtr
	mov rsi, [rbp + 121]

 scanFormat$224:
	; £field1454 -> unsignedLongPtr = unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$225:
	; percent = int4$0#
	mov dword [rbp + 49], 0

 scanFormat$226:
	; goto 331
	jmp scanFormat$331

 scanFormat$227:
	; call header integral zero 0 stack zero 0

 scanFormat$228:
	; call function noellipse-noellipse scanLongDouble
	mov qword [rbp + 157], scanFormat$229
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongDouble

 scanFormat$229:
	; post call

 scanFormat$230:
	; £temporary1456 = return_value

 scanFormat$231:
	; pop float longDoubleValue
	fstp qword [rbp + 145]

 scanFormat$232:
	; if star != int4$0# goto 261
	cmp dword [rbp + 65], 0
	jne scanFormat$261

 scanFormat$233:
	; if longIntOrDouble == int4$0# goto 243
	cmp dword [rbp + 57], 0
	je scanFormat$243

 scanFormat$234:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$235:
	; £temporary1461 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$236:
	; £temporary1463 = int_to_int £temporary1461 (Pointer -> Pointer)

 scanFormat$237:
	; £field1464 -> £temporary1463 = *£temporary1463

 scanFormat$238:
	; doublePtr = £field1464 -> £temporary1463
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$239:
	; £field1465 -> doublePtr = *doublePtr
	mov rsi, [rbp + 157]

 scanFormat$240:
	; push float longDoubleValue
	fld qword [rbp + 145]

 scanFormat$241:
	; pop float £field1465 -> doublePtr
	fstp qword [rsi]

 scanFormat$242:
	; goto 261
	jmp scanFormat$261

 scanFormat$243:
	; if longDouble == int4$0# goto 253
	cmp dword [rbp + 61], 0
	je scanFormat$253

 scanFormat$244:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$245:
	; £temporary1469 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$246:
	; £temporary1471 = int_to_int £temporary1469 (Pointer -> Pointer)

 scanFormat$247:
	; £field1472 -> £temporary1471 = *£temporary1471

 scanFormat$248:
	; longDoublePtr = £field1472 -> £temporary1471
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$249:
	; £field1473 -> longDoublePtr = *longDoublePtr
	mov rsi, [rbp + 157]

 scanFormat$250:
	; push float longDoubleValue
	fld qword [rbp + 145]

 scanFormat$251:
	; pop float £field1473 -> longDoublePtr
	fstp qword [rsi]

 scanFormat$252:
	; goto 261
	jmp scanFormat$261

 scanFormat$253:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$254:
	; £temporary1476 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$255:
	; £temporary1478 = int_to_int £temporary1476 (Pointer -> Pointer)

 scanFormat$256:
	; £field1479 -> £temporary1478 = *£temporary1478

 scanFormat$257:
	; floatPtr = £field1479 -> £temporary1478
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$258:
	; £field1480 -> floatPtr = *floatPtr
	mov rsi, [rbp + 157]

 scanFormat$259:
	; push float longDoubleValue
	fld qword [rbp + 145]

 scanFormat$260:
	; pop float £field1480 -> floatPtr
	fstp dword [rsi]

 scanFormat$261:
	; percent = int4$0#
	mov dword [rbp + 49], 0

 scanFormat$262:
	; goto 331
	jmp scanFormat$331

 scanFormat$263:
	; not = int4$0#
	mov dword [rbp + 157], 0

 scanFormat$264:
	; index = index + int4$1#
	inc dword [rbp + 93]

 scanFormat$265:
	; £temporary1486 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$266:
	; £temporary1488 = format + £temporary1486
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$267:
	; £field1485 -> £temporary1488 = *£temporary1488

 scanFormat$268:
	; if £field1485 -> £temporary1488 != int1$94# goto 271
	cmp byte [rsi], 94
	jne scanFormat$271

 scanFormat$269:
	; not = int4$1#
	mov dword [rbp + 157], 1

 scanFormat$270:
	; startIndex = index + int4$1#
	mov eax, [rbp + 93]
	inc eax
	mov [rbp + 161], eax

 scanFormat$271:
	; £temporary1492 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$272:
	; £temporary1494 = format + £temporary1492
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$273:
	; £field1491 -> £temporary1494 = *£temporary1494

 scanFormat$274:
	; if £field1491 -> £temporary1494 == int1$93# goto 277
	cmp byte [rsi], 93
	je scanFormat$277

 scanFormat$275:
	; index = index + int4$1#
	inc dword [rbp + 93]

 scanFormat$276:
	; goto 271
	jmp scanFormat$271

 scanFormat$277:
	; £temporary1498 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$278:
	; £temporary1500 = format + £temporary1498
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$279:
	; £field1497 -> £temporary1500 = *£temporary1500

 scanFormat$280:
	; £field1497 -> £temporary1500 = int1$0#
	mov byte [rsi], 0

 scanFormat$281:
	; if star != int4$0# goto 298
	cmp dword [rbp + 65], 0
	jne scanFormat$298

 scanFormat$282:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$283:
	; £temporary1505 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$284:
	; £temporary1507 = int_to_int £temporary1505 (Pointer -> Pointer)

 scanFormat$285:
	; £field1508 -> £temporary1507 = *£temporary1507

 scanFormat$286:
	; string = £field1508 -> £temporary1507
	mov rax, [rsi]
	mov [rbp + 165], rax

 scanFormat$287:
	; call header integral zero 0 stack zero 0

 scanFormat$288:
	; parameter string, offset 197
	mov rax, [rbp + 165]
	mov [rbp + 197], rax

 scanFormat$289:
	; £temporary1510 = int_to_int startIndex (Signed_Int -> Pointer)
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$290:
	; £temporary1512 = format + £temporary1510
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$291:
	; £field1509 -> £temporary1512 = *£temporary1512

 scanFormat$292:
	; £temporary1513 = &£field1509 -> £temporary1512

 scanFormat$293:
	; parameter £temporary1513, offset 205
	mov [rbp + 205], rsi

 scanFormat$294:
	; parameter not, offset 213
	mov eax, [rbp + 157]
	mov [rbp + 213], eax

 scanFormat$295:
	; call function noellipse-noellipse scanPattern
	mov qword [rbp + 173], scanFormat$296
	mov [rbp + 181], rbp
	add rbp, 173
	jmp scanPattern

 scanFormat$296:
	; post call

 scanFormat$297:
	; goto 331
	jmp scanFormat$331

 scanFormat$298:
	; call header integral zero 0 stack zero 0

 scanFormat$299:
	; parameter int8$0#, offset 189
	mov qword [rbp + 189], 0

 scanFormat$300:
	; £temporary1516 = int_to_int startIndex (Signed_Int -> Pointer)
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$301:
	; £temporary1518 = format + £temporary1516
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$302:
	; £field1515 -> £temporary1518 = *£temporary1518

 scanFormat$303:
	; £temporary1519 = &£field1515 -> £temporary1518

 scanFormat$304:
	; parameter £temporary1519, offset 197
	mov [rbp + 197], rsi

 scanFormat$305:
	; parameter not, offset 205
	mov eax, [rbp + 157]
	mov [rbp + 205], eax

 scanFormat$306:
	; call function noellipse-noellipse scanPattern
	mov qword [rbp + 165], scanFormat$307
	mov [rbp + 173], rbp
	add rbp, 165
	jmp scanPattern

 scanFormat$307:
	; post call

 scanFormat$308:
	; goto 331
	jmp scanFormat$331

 scanFormat$309:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 scanFormat$310:
	; £temporary1523 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$311:
	; £temporary1525 = int_to_int £temporary1523 (Pointer -> Pointer)

 scanFormat$312:
	; £field1526 -> £temporary1525 = *£temporary1525

 scanFormat$313:
	; charsPtr = £field1526 -> £temporary1525
	mov rax, [rsi]
	mov [rbp + 105], rax

 scanFormat$314:
	; £field1527 -> charsPtr = *charsPtr
	mov rsi, [rbp + 105]

 scanFormat$315:
	; £field1527 -> charsPtr = g_inChars
	mov eax, [g_inChars]
	mov [rsi], eax

 scanFormat$316:
	; percent = int4$0#
	mov dword [rbp + 49], 0

 scanFormat$317:
	; goto 331
	jmp scanFormat$331

 scanFormat$318:
	; call header integral zero 0 stack zero 0

 scanFormat$319:
	; parameter string_scanFormat20c203D202725c270A#, offset 181
	mov qword [rbp + 181], string_scanFormat20c203D202725c270A#

 scanFormat$320:
	; £temporary1528 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$321
	neg al
	neg eax

 scanFormat$321:
	; parameter £temporary1528, offset 189
	mov [rbp + 189], eax

 scanFormat$322:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 157], scanFormat$323
	mov [rbp + 165], rbp
	add rbp, 157
	mov rdi, rbp
	add rdi, 4
	jmp printf

 scanFormat$323:
	; post call

 scanFormat$324:
	; goto 331
	jmp scanFormat$331

 scanFormat$325:
	; if c != int1$37# goto 331
	cmp byte [rbp + 40], 37
	jne scanFormat$331

 scanFormat$326:
	; percent = int4$1#
	mov dword [rbp + 49], 1

 scanFormat$327:
	; shortInt = int4$0#
	mov dword [rbp + 53], 0

 scanFormat$328:
	; longIntOrDouble = int4$0#
	mov dword [rbp + 57], 0

 scanFormat$329:
	; longDouble = int4$0#
	mov dword [rbp + 61], 0

 scanFormat$330:
	; star = int4$0#
	mov dword [rbp + 65], 0

 scanFormat$331:
	; index = index + int4$1#
	inc dword [rbp + 93]

 scanFormat$332:
	; goto 9
	jmp scanFormat$9

 scanFormat$333:
	; return g_inCount
	mov ebx, [g_inCount]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanFormat$334:
	; function end scanFormat

 scanf:
	; empty

 scanf$1:
	; £temporary1532 = &format
	mov rsi, rbp
	add rsi, 24

 scanf$2:
	; £temporary1533 = int_to_int £temporary1532 (Pointer -> Pointer)

 scanf$3:
	; arg_list = £temporary1533 + int8$8#
	add rsi, 8
	mov [rdi + 32], rsi

 scanf$4:
	; call header integral zero 0 stack zero 0

 scanf$5:
	; parameter format, offset 64
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

 scanf$6:
	; parameter arg_list, offset 72
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

 scanf$7:
	; call function ellipse-noellipse vscanf
	mov qword [rdi + 40], scanf$8
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	add rdi, 40
	mov rbp, rdi
	jmp vscanf

 scanf$8:
	; post call

 scanf$9:
	; £temporary1536 = return_value

 scanf$10:
	; return £temporary1536
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanf$11:
	; function end scanf

 vscanf:
	; call header integral zero 0 stack zero 0

 vscanf$1:
	; parameter stdin, offset 64
	mov rax, [stdin]
	mov [rbp + 64], rax

 vscanf$2:
	; parameter format, offset 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 vscanf$3:
	; parameter arg_list, offset 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 vscanf$4:
	; call function noellipse-noellipse vfscanf
	mov qword [rbp + 40], vscanf$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp vfscanf

 vscanf$5:
	; post call

 vscanf$6:
	; £temporary1538 = return_value

 vscanf$7:
	; return £temporary1538
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vscanf$8:
	; function end vscanf

 fscanf:
	; empty

 fscanf$1:
	; £temporary1539 = &format
	mov rsi, rbp
	add rsi, 32

 fscanf$2:
	; £temporary1540 = int_to_int £temporary1539 (Pointer -> Pointer)

 fscanf$3:
	; arg_list = £temporary1540 + int8$8#
	add rsi, 8
	mov [rdi + 40], rsi

 fscanf$4:
	; call header integral zero 0 stack zero 0

 fscanf$5:
	; parameter inStream, offset 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 fscanf$6:
	; parameter format, offset 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 fscanf$7:
	; parameter arg_list, offset 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 fscanf$8:
	; call function ellipse-noellipse vfscanf
	mov qword [rdi + 48], fscanf$9
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vfscanf

 fscanf$9:
	; post call

 fscanf$10:
	; £temporary1543 = return_value

 fscanf$11:
	; return £temporary1543
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fscanf$12:
	; function end fscanf

 vfscanf:
	; g_inStatus = int4$0#
	mov dword [g_inStatus], 0

 vfscanf$1:
	; £temporary1545 = int_to_int inStream (Pointer -> Pointer)
	mov rax, [rbp + 24]

 vfscanf$2:
	; g_inDevice = £temporary1545
	mov [g_inDevice], rax

 vfscanf$3:
	; call header integral zero 0 stack zero 0

 vfscanf$4:
	; parameter format, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vfscanf$5:
	; parameter arg_list, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vfscanf$6:
	; call function noellipse-noellipse scanFormat
	mov qword [rbp + 48], vfscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

 vfscanf$7:
	; post call

 vfscanf$8:
	; £temporary1546 = return_value

 vfscanf$9:
	; return £temporary1546
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfscanf$10:
	; function end vfscanf

 sscanf:
	; empty

 sscanf$1:
	; £temporary1547 = &format
	mov rsi, rbp
	add rsi, 32

 sscanf$2:
	; £temporary1548 = int_to_int £temporary1547 (Pointer -> Pointer)

 sscanf$3:
	; arg_list = £temporary1548 + int8$8#
	add rsi, 8
	mov [rdi + 40], rsi

 sscanf$4:
	; call header integral zero 0 stack zero 0

 sscanf$5:
	; parameter inString, offset 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 sscanf$6:
	; parameter format, offset 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 sscanf$7:
	; parameter arg_list, offset 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 sscanf$8:
	; call function ellipse-noellipse vsscanf
	mov qword [rdi + 48], sscanf$9
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vsscanf

 sscanf$9:
	; post call

 sscanf$10:
	; £temporary1551 = return_value

 sscanf$11:
	; return £temporary1551
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sscanf$12:
	; function end sscanf

 vsscanf:
	; g_inStatus = int4$1#
	mov dword [g_inStatus], 1

 vsscanf$1:
	; £temporary1553 = int_to_int inString (Pointer -> Pointer)
	mov rax, [rbp + 24]

 vsscanf$2:
	; g_inDevice = £temporary1553
	mov [g_inDevice], rax

 vsscanf$3:
	; call header integral zero 0 stack zero 0

 vsscanf$4:
	; parameter format, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vsscanf$5:
	; parameter arg_list, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vsscanf$6:
	; call function noellipse-noellipse scanFormat
	mov qword [rbp + 48], vsscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

 vsscanf$7:
	; post call

 vsscanf$8:
	; £temporary1554 = return_value

 vsscanf$9:
	; return £temporary1554
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsscanf$10:
	; function end vsscanf
section .data

g_inStatus:
	; initializer zero 4
	times 4 db 0

g_inChars:
	; initializer zero 4
	times 4 db 0

g_inDevice:
	; initializer zero 8
	times 8 db 0

g_inCount:
	; initializer zero 4
	times 4 db 0

int8$10#:
	; initializer Signed_Long_Int
	dq 10

float8$10.0#:
	; initializer Long_Double
	dq 10.0

container4bytes#:
	; initializer zero 4
	times 4 db 0

container8bytes#:
	; initializer zero 8
	times 8 db 0

string_scanFormat20c203D202725c270A#:
	; initializer String
	db "scanFormat c = ", 39, "%c", 39, 10, 0
