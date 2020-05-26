	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
section .text

@432$existsTempName:	; empty

@432$existsTempName$1:	; index = int4$0#
	mov dword [rbp + 32], 0

@432$existsTempName$2:	; if index >= g_tempSize goto 18
	mov eax, [rbp + 32]
	cmp eax, [@431$g_tempSize]
	jge @432$existsTempName$18

@432$existsTempName$3:	; call header integral zero 0 stack zero 0

@432$existsTempName$4:	; parameter name, offset 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

@432$existsTempName$5:	; £temporary1209 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

@432$existsTempName$6:	; £temporary1211 = £temporary1209 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

@432$existsTempName$7:	; £temporary1212 = g_tempArray + £temporary1211
	mov rsi, @430$g_tempArray
	add rsi, rax

@432$existsTempName$8:	; £temporary1210 -> £temporary1212 = *£temporary1212

@432$existsTempName$9:	; parameter £temporary1210 -> £temporary1212, offset 68
	mov [rbp + 68], rsi
	add qword [rbp + 68], 0

@432$existsTempName$10:	; call function noellipse-noellipse strcmp
	mov qword [rbp + 36], @432$existsTempName$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

@432$existsTempName$11:	; post call

@432$existsTempName$12:	; £temporary1213 = return_value

@432$existsTempName$13:	; if £temporary1213 != int4$0# goto 16
	cmp ebx, 0
	jne @432$existsTempName$16

@432$existsTempName$14:	; return_value = int4$1#
	mov ebx, 1

@432$existsTempName$15:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@432$existsTempName$16:	; ++index
	inc dword [rbp + 32]

@432$existsTempName$17:	; goto 2
	jmp @432$existsTempName$2

@432$existsTempName$18:	; return_value = int4$0#
	mov ebx, 0

@432$existsTempName$19:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@432$existsTempName$20:	; function end existsTempName

@434$generateTempName:	; if size >= int4$5# goto 61
	cmp dword [rbp + 32], 5
	jge @434$generateTempName$61

@434$generateTempName$1:	; c = int1$97#
	mov byte [rbp + 40], 97

@434$generateTempName$2:	; if c > int1$122# goto 61
	cmp byte [rbp + 40], 122
	jg @434$generateTempName$61

@434$generateTempName$3:	; £temporary1220 = int_to_int size (Signed_Int -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

@434$generateTempName$4:	; £temporary1223 = name + £temporary1220
	mov rsi, [rbp + 24]
	add rsi, rax

@434$generateTempName$5:	; £temporary1221 -> £temporary1223 = *£temporary1223

@434$generateTempName$6:	; £temporary1221 -> £temporary1223 = c
	mov al, [rbp + 40]
	mov [rsi], al

@434$generateTempName$7:	; £temporary1224 = size + int4$1#
	mov eax, [rbp + 32]
	inc eax

@434$generateTempName$8:	; £temporary1225 = int_to_int £temporary1224 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

@434$generateTempName$9:	; £temporary1228 = name + £temporary1225
	mov rsi, [rbp + 24]
	add rsi, rax

@434$generateTempName$10:	; £temporary1226 -> £temporary1228 = *£temporary1228

@434$generateTempName$11:	; £temporary1226 -> £temporary1228 = int1$0#
	mov byte [rsi], 0

@434$generateTempName$12:	; call header integral zero 0 stack zero 0

@434$generateTempName$13:	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

@434$generateTempName$14:	; call function noellipse-noellipse fileexists
	mov qword [rbp + 41], @434$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

@434$generateTempName$15:	; post call

@434$generateTempName$16:	; £temporary1229 = return_value

@434$generateTempName$17:	; if £temporary1229 != int4$0# goto 47
	cmp ebx, 0
	jne @434$generateTempName$47

@434$generateTempName$18:	; case status == int4$0# goto 22
	mov eax, [rbp + 36]
	cmp eax, 0
	je @434$generateTempName$22

@434$generateTempName$19:	; case status == int4$1# goto 24
	cmp eax, 1
	je @434$generateTempName$24

@434$generateTempName$20:	; case end status

@434$generateTempName$21:	; goto 47
	jmp @434$generateTempName$47

@434$generateTempName$22:	; return_value = name
	mov rbx, [rbp + 24]

@434$generateTempName$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@434$generateTempName$24:	; call header integral zero 0 stack zero 0

@434$generateTempName$25:	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

@434$generateTempName$26:	; call function noellipse-noellipse existsTempName
	mov qword [rbp + 41], @434$generateTempName$27
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @432$existsTempName

@434$generateTempName$27:	; post call

@434$generateTempName$28:	; £temporary1232 = return_value

@434$generateTempName$29:	; if £temporary1232 != int4$0# goto 47
	cmp ebx, 0
	jne @434$generateTempName$47

@434$generateTempName$30:	; call header integral zero 0 stack zero 0

@434$generateTempName$31:	; £temporary1235 = int_to_int g_tempSize (Signed_Int -> Array)
	mov eax, [@431$g_tempSize]
	mov rbx, 4294967295
	and rax, rbx

@434$generateTempName$32:	; £temporary1237 = £temporary1235 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

@434$generateTempName$33:	; £temporary1238 = g_tempArray + £temporary1237
	mov rsi, @430$g_tempArray
	add rsi, rax

@434$generateTempName$34:	; £temporary1236 -> £temporary1238 = *£temporary1238

@434$generateTempName$35:	; parameter £temporary1236 -> £temporary1238, offset 65
	mov [rbp + 65], rsi
	add qword [rbp + 65], 0

@434$generateTempName$36:	; parameter name, offset 73
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

@434$generateTempName$37:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 41], @434$generateTempName$38
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

@434$generateTempName$38:	; post call

@434$generateTempName$39:	; £temporary1240 = g_tempSize
	mov eax, [@431$g_tempSize]

@434$generateTempName$40:	; ++g_tempSize
	inc dword [@431$g_tempSize]

@434$generateTempName$41:	; £temporary1241 = int_to_int £temporary1240 (Signed_Int -> Array)
	mov rbx, 4294967295
	and rax, rbx

@434$generateTempName$42:	; £temporary1243 = £temporary1241 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

@434$generateTempName$43:	; £temporary1244 = g_tempArray + £temporary1243
	mov rsi, @430$g_tempArray
	add rsi, rax

@434$generateTempName$44:	; £temporary1242 -> £temporary1244 = *£temporary1244

@434$generateTempName$45:	; return_value = £temporary1242 -> £temporary1244
	mov rbx, rsi

@434$generateTempName$46:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@434$generateTempName$47:	; call header integral zero 0 stack zero 0

@434$generateTempName$48:	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

@434$generateTempName$49:	; £temporary1245 = size + int4$1#
	mov eax, [rbp + 32]
	inc eax

@434$generateTempName$50:	; parameter £temporary1245, offset 73
	mov [rbp + 73], eax

@434$generateTempName$51:	; parameter status, offset 77
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

@434$generateTempName$52:	; call function noellipse-noellipse generateTempName
	mov qword [rbp + 41], @434$generateTempName$53
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @434$generateTempName

@434$generateTempName$53:	; post call

@434$generateTempName$54:	; £temporary1246 = return_value

@434$generateTempName$55:	; result = £temporary1246
	mov [rbp + 41], rbx

@434$generateTempName$56:	; if result == int8$0# goto 59
	cmp qword [rbp + 41], 0
	je @434$generateTempName$59

@434$generateTempName$57:	; return_value = result
	mov rbx, [rbp + 41]

@434$generateTempName$58:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@434$generateTempName$59:	; ++c
	inc byte [rbp + 40]

@434$generateTempName$60:	; goto 2
	jmp @434$generateTempName$2

@434$generateTempName$61:	; return_value = int8$0#
	mov rbx, 0

@434$generateTempName$62:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@434$generateTempName$63:	; function end generateTempName

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
	jmp @434$generateTempName

tmpfile$6:	; post call

tmpfile$7:	; £temporary1255 = return_value

tmpfile$8:	; if £temporary1255 == int4$0# goto 21
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

tmpfile$14:	; £temporary1256 = return_value

tmpfile$15:	; stream = £temporary1256
	mov [rbp + 24], rbx

tmpfile$16:	; if stream == int8$0# goto 21
	cmp qword [rbp + 24], 0
	je tmpfile$21

tmpfile$17:	; £temporary1260 -> stream = *stream, offset 37
	mov rsi, [rbp + 24]

tmpfile$18:	; £temporary1260 -> stream = int4$1#
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
	cmp dword [@431$g_tempSize], 16
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
	jmp @434$generateTempName

tmpnam$6:	; post call

tmpnam$7:	; £temporary1267 = return_value

tmpnam$8:	; return_value = £temporary1267

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

@430$g_tempArray:
	times 64 db 0

@431$g_tempSize:
	dd 0

Array_#:
	; init Array
	dq 4

string_w#:
	; init String
	db "w", 0
