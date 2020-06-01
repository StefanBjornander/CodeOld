	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
section .text

@2773$existsTempName:	; empty

@2773$existsTempName$1:	; index = int4$0#
	mov dword [rbp + 32], 0

@2773$existsTempName$2:	; if index >= g_tempSize goto 18
	mov eax, [rbp + 32]
	cmp eax, [@2771$g_tempSize]
	jge @2773$existsTempName$18

@2773$existsTempName$3:	; call header integral zero 0 stack zero 0

@2773$existsTempName$4:	; parameter name, offset 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

@2773$existsTempName$5:	; £temporary1122 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

@2773$existsTempName$6:	; £temporary1123 = £temporary1122 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

@2773$existsTempName$7:	; £temporary1124 = g_tempArray + £temporary1123
	mov rsi, @2770$g_tempArray
	add rsi, rax

@2773$existsTempName$8:	; £field87 -> £temporary1124 = *£temporary1124

@2773$existsTempName$9:	; parameter £field87 -> £temporary1124, offset 68
	mov [rbp + 68], rsi

@2773$existsTempName$10:	; call function noellipse-noellipse strcmp
	mov qword [rbp + 36], @2773$existsTempName$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

@2773$existsTempName$11:	; post call

@2773$existsTempName$12:	; £temporary1125 = return_value

@2773$existsTempName$13:	; if £temporary1125 != int4$0# goto 16
	cmp ebx, 0
	jne @2773$existsTempName$16

@2773$existsTempName$14:	; return_value = int4$1#
	mov ebx, 1

@2773$existsTempName$15:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@2773$existsTempName$16:	; ++index
	inc dword [rbp + 32]

@2773$existsTempName$17:	; goto 2
	jmp @2773$existsTempName$2

@2773$existsTempName$18:	; return_value = int4$0#
	mov ebx, 0

@2773$existsTempName$19:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@2773$existsTempName$20:	; function end existsTempName

@2778$generateTempName:	; if size >= int4$5# goto 61
	cmp dword [rbp + 32], 5
	jge @2778$generateTempName$61

@2778$generateTempName$1:	; c = int1$97#
	mov byte [rbp + 40], 97

@2778$generateTempName$2:	; if c > int1$122# goto 61
	cmp byte [rbp + 40], 122
	jg @2778$generateTempName$61

@2778$generateTempName$3:	; £temporary1132 = int_to_int size (Signed_Int -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

@2778$generateTempName$4:	; £temporary1134 = name + £temporary1132
	mov rsi, [rbp + 24]
	add rsi, rax

@2778$generateTempName$5:	; £field88 -> £temporary1134 = *£temporary1134

@2778$generateTempName$6:	; £field88 -> £temporary1134 = c
	mov al, [rbp + 40]
	mov [rsi], al

@2778$generateTempName$7:	; £temporary1135 = size + int4$1#
	mov eax, [rbp + 32]
	inc eax

@2778$generateTempName$8:	; £temporary1136 = int_to_int £temporary1135 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

@2778$generateTempName$9:	; £temporary1138 = name + £temporary1136
	mov rsi, [rbp + 24]
	add rsi, rax

@2778$generateTempName$10:	; £field89 -> £temporary1138 = *£temporary1138

@2778$generateTempName$11:	; £field89 -> £temporary1138 = int1$0#
	mov byte [rsi], 0

@2778$generateTempName$12:	; call header integral zero 0 stack zero 0

@2778$generateTempName$13:	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

@2778$generateTempName$14:	; call function noellipse-noellipse fileexists
	mov qword [rbp + 41], @2778$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

@2778$generateTempName$15:	; post call

@2778$generateTempName$16:	; £temporary1139 = return_value

@2778$generateTempName$17:	; if £temporary1139 != int4$0# goto 47
	cmp ebx, 0
	jne @2778$generateTempName$47

@2778$generateTempName$18:	; case status == int4$0# goto 22
	mov eax, [rbp + 36]
	cmp eax, 0
	je @2778$generateTempName$22

@2778$generateTempName$19:	; case status == int4$1# goto 24
	cmp eax, 1
	je @2778$generateTempName$24

@2778$generateTempName$20:	; case end status

@2778$generateTempName$21:	; goto 47
	jmp @2778$generateTempName$47

@2778$generateTempName$22:	; return_value = name
	mov rbx, [rbp + 24]

@2778$generateTempName$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@2778$generateTempName$24:	; call header integral zero 0 stack zero 0

@2778$generateTempName$25:	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

@2778$generateTempName$26:	; call function noellipse-noellipse existsTempName
	mov qword [rbp + 41], @2778$generateTempName$27
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2773$existsTempName

@2778$generateTempName$27:	; post call

@2778$generateTempName$28:	; £temporary1142 = return_value

@2778$generateTempName$29:	; if £temporary1142 != int4$0# goto 47
	cmp ebx, 0
	jne @2778$generateTempName$47

@2778$generateTempName$30:	; call header integral zero 0 stack zero 0

@2778$generateTempName$31:	; £temporary1145 = int_to_int g_tempSize (Signed_Int -> Array)
	mov eax, [@2771$g_tempSize]
	mov rbx, 4294967295
	and rax, rbx

@2778$generateTempName$32:	; £temporary1146 = £temporary1145 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

@2778$generateTempName$33:	; £temporary1147 = g_tempArray + £temporary1146
	mov rsi, @2770$g_tempArray
	add rsi, rax

@2778$generateTempName$34:	; £field90 -> £temporary1147 = *£temporary1147

@2778$generateTempName$35:	; parameter £field90 -> £temporary1147, offset 65
	mov [rbp + 65], rsi

@2778$generateTempName$36:	; parameter name, offset 73
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

@2778$generateTempName$37:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 41], @2778$generateTempName$38
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

@2778$generateTempName$38:	; post call

@2778$generateTempName$39:	; £temporary1149 = g_tempSize
	mov eax, [@2771$g_tempSize]

@2778$generateTempName$40:	; ++g_tempSize
	inc dword [@2771$g_tempSize]

@2778$generateTempName$41:	; £temporary1150 = int_to_int £temporary1149 (Signed_Int -> Array)
	mov rbx, 4294967295
	and rax, rbx

@2778$generateTempName$42:	; £temporary1151 = £temporary1150 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

@2778$generateTempName$43:	; £temporary1152 = g_tempArray + £temporary1151
	mov rsi, @2770$g_tempArray
	add rsi, rax

@2778$generateTempName$44:	; £field91 -> £temporary1152 = *£temporary1152

@2778$generateTempName$45:	; return_value = £field91 -> £temporary1152
	mov rbx, rsi

@2778$generateTempName$46:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@2778$generateTempName$47:	; call header integral zero 0 stack zero 0

@2778$generateTempName$48:	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

@2778$generateTempName$49:	; £temporary1153 = size + int4$1#
	mov eax, [rbp + 32]
	inc eax

@2778$generateTempName$50:	; parameter £temporary1153, offset 73
	mov [rbp + 73], eax

@2778$generateTempName$51:	; parameter status, offset 77
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

@2778$generateTempName$52:	; call function noellipse-noellipse generateTempName
	mov qword [rbp + 41], @2778$generateTempName$53
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2778$generateTempName

@2778$generateTempName$53:	; post call

@2778$generateTempName$54:	; £temporary1154 = return_value

@2778$generateTempName$55:	; result = £temporary1154
	mov [rbp + 41], rbx

@2778$generateTempName$56:	; if result == int8$0# goto 59
	cmp qword [rbp + 41], 0
	je @2778$generateTempName$59

@2778$generateTempName$57:	; return_value = result
	mov rbx, [rbp + 41]

@2778$generateTempName$58:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@2778$generateTempName$59:	; ++c
	inc byte [rbp + 40]

@2778$generateTempName$60:	; goto 2
	jmp @2778$generateTempName$2

@2778$generateTempName$61:	; return_value = int8$0#
	mov rbx, 0

@2778$generateTempName$62:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@2778$generateTempName$63:	; function end generateTempName

tmpfile:	; empty

tmpfile$1:	; call header integral zero 0 stack zero 0

tmpfile$2:	; parameter name, offset 60
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

tmpfile$3:	; parameter int4$0#, offset 68
	mov dword [rbp + 68], 0

tmpfile$4:	; parameter int4$0#, offset 72
	mov dword [rbp + 72], 0

tmpfile$5:	; call function noellipse-noellipse generateTempName
	mov qword [rbp + 36], tmpfile$6
	mov [rbp + 44], rbp
	add rbp, 36
	jmp @2778$generateTempName

tmpfile$6:	; post call

tmpfile$7:	; £temporary1163 = return_value

tmpfile$8:	; if £temporary1163 == int4$0# goto 21
	cmp rbx, 0
	je tmpfile$21

tmpfile$9:	; call header integral zero 0 stack zero 0

tmpfile$10:	; parameter name, offset 60
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

tmpfile$11:	; parameter string_w#, offset 68
	mov qword [rbp + 68], string_w#

tmpfile$12:	; call function noellipse-noellipse fopen
	mov qword [rbp + 36], tmpfile$13
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fopen

tmpfile$13:	; post call

tmpfile$14:	; £temporary1164 = return_value

tmpfile$15:	; stream = £temporary1164
	mov [rbp + 24], rbx

tmpfile$16:	; if stream == int8$0# goto 21
	cmp qword [rbp + 24], 0
	je tmpfile$21

tmpfile$17:	; £field92 -> stream = *stream
	mov rsi, [rbp + 24]

tmpfile$18:	; £field92 -> stream = int4$1#
	mov dword [rsi + 37], 1

tmpfile$19:	; return_value = stream
	mov rbx, [rbp + 24]

tmpfile$20:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tmpfile$21:	; return_value = int8$0#
	mov rbx, 0

tmpfile$22:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tmpfile$23:	; function end tmpfile

tmpnam:	; if g_tempSize >= int4$16# goto 10
	cmp dword [@2771$g_tempSize], 16
	jge tmpnam$10

tmpnam$1:	; call header integral zero 0 stack zero 0

tmpnam$2:	; parameter name, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

tmpnam$3:	; parameter int4$0#, offset 64
	mov dword [rbp + 64], 0

tmpnam$4:	; parameter int4$1#, offset 68
	mov dword [rbp + 68], 1

tmpnam$5:	; call function noellipse-noellipse generateTempName
	mov qword [rbp + 32], tmpnam$6
	mov [rbp + 40], rbp
	add rbp, 32
	jmp @2778$generateTempName

tmpnam$6:	; post call

tmpnam$7:	; £temporary1174 = return_value

tmpnam$8:	; return_value = £temporary1174

tmpnam$9:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tmpnam$10:	; return_value = int8$0#
	mov rbx, 0

tmpnam$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

tmpnam$12:	; function end tmpnam
section .data

$IntegralStorage#:
	times 8 db 0

@2770$g_tempArray:
	times 64 db 0

@2771$g_tempSize:
	dd 0

Array_#:
	; init Array
	dq 4

string_w#:
	; init String
	db "w", 0
