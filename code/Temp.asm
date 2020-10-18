	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
	extern $StackTop

section .text


section .data

@3012$g_tempArray:
	; initializer zero 64
	times 64 db 0

section .data

@3013$g_tempSize:
	; initializer SignedInt
	dd 0

section .data

Array_4#:
	; initializer Array
	dq 4

section .text

 @3015$existsTempName:
	; empty

 @3015$existsTempName$1:
	; index = int4$0#
	mov dword [rbp + 32], 0

 @3015$existsTempName$2:
	; if index >= g_tempSize goto 17
	mov eax, [@3013$g_tempSize]
	cmp [rbp + 32], eax
	jge @3015$existsTempName$17

 @3015$existsTempName$3:
	; call header integral zero 0 stack zero 0

 @3015$existsTempName$4:
	; parameter name, offset 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 @3015$existsTempName$5:
	; £temporary1032 = int_to_int index (SignedInt -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @3015$existsTempName$6:
	; £temporary1033 = £temporary1032 * Array_4#
	xor rdx, rdx
	mul qword [Array_4#]

 @3015$existsTempName$7:
	; £temporary1034 = g_tempArray + £temporary1033
	mov rsi, @3012$g_tempArray
	add rsi, rax

 @3015$existsTempName$8:
	; £temporary1031 -> £temporary1034 = *£temporary1034

 @3015$existsTempName$9:
	; parameter £temporary1031 -> £temporary1034, offset 68
	mov [rbp + 68], rsi

 @3015$existsTempName$10:
	; call function noellipse-noellipse strcmp
	mov qword [rbp + 36], @3015$existsTempName$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

 @3015$existsTempName$11:
	; post call

 @3015$existsTempName$12:
	; £temporary1035 = return_value

 @3015$existsTempName$13:
	; if £temporary1035 != int4$0# goto 15
	cmp ebx, 0
	jne @3015$existsTempName$15

 @3015$existsTempName$14:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3015$existsTempName$15:
	; index = index + int4$1#
	inc dword [rbp + 32]

 @3015$existsTempName$16:
	; goto 2
	jmp @3015$existsTempName$2

 @3015$existsTempName$17:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3015$existsTempName$18:
	; function end existsTempName

section .text

 @3022$generateTempName:
	; if size >= int4$5# goto 58
	cmp dword [rbp + 32], 5
	jge @3022$generateTempName$58

 @3022$generateTempName$1:
	; c = int1$97#
	mov byte [rbp + 40], 97

 @3022$generateTempName$2:
	; if c > int1$122# goto 58
	cmp byte [rbp + 40], 122
	jg @3022$generateTempName$58

 @3022$generateTempName$3:
	; £temporary1041 = int_to_int size (SignedInt -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @3022$generateTempName$4:
	; £temporary1043 = name + £temporary1041
	mov rsi, [rbp + 24]
	add rsi, rax

 @3022$generateTempName$5:
	; £temporary1040 -> £temporary1043 = *£temporary1043

 @3022$generateTempName$6:
	; £temporary1040 -> £temporary1043 = c
	mov al, [rbp + 40]
	mov [rsi], al

 @3022$generateTempName$7:
	; £temporary1044 = size + int4$1#
	mov eax, [rbp + 32]
	inc eax

 @3022$generateTempName$8:
	; £temporary1046 = int_to_int £temporary1044 (SignedInt -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 @3022$generateTempName$9:
	; £temporary1048 = name + £temporary1046
	mov rsi, [rbp + 24]
	add rsi, rax

 @3022$generateTempName$10:
	; £temporary1045 -> £temporary1048 = *£temporary1048

 @3022$generateTempName$11:
	; £temporary1045 -> £temporary1048 = int1$0#
	mov byte [rsi], 0

 @3022$generateTempName$12:
	; call header integral zero 0 stack zero 0

 @3022$generateTempName$13:
	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3022$generateTempName$14:
	; call function noellipse-noellipse fileexists
	mov qword [rbp + 41], @3022$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

 @3022$generateTempName$15:
	; post call

 @3022$generateTempName$16:
	; £temporary1049 = return_value

 @3022$generateTempName$17:
	; if £temporary1049 != int4$0# goto 45
	cmp ebx, 0
	jne @3022$generateTempName$45

 @3022$generateTempName$18:
	; case status == int4$0# goto 22
	mov eax, [rbp + 36]
	cmp eax, 0
	je @3022$generateTempName$22

 @3022$generateTempName$19:
	; case status == int4$1# goto 23
	cmp eax, 1
	je @3022$generateTempName$23

 @3022$generateTempName$20:
	; case end status

 @3022$generateTempName$21:
	; goto 45
	jmp @3022$generateTempName$45

 @3022$generateTempName$22:
	; return name
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3022$generateTempName$23:
	; call header integral zero 0 stack zero 0

 @3022$generateTempName$24:
	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3022$generateTempName$25:
	; call function noellipse-noellipse existsTempName
	mov qword [rbp + 41], @3022$generateTempName$26
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @3015$existsTempName

 @3022$generateTempName$26:
	; post call

 @3022$generateTempName$27:
	; £temporary1052 = return_value

 @3022$generateTempName$28:
	; if £temporary1052 != int4$0# goto 45
	cmp ebx, 0
	jne @3022$generateTempName$45

 @3022$generateTempName$29:
	; call header integral zero 0 stack zero 0

 @3022$generateTempName$30:
	; £temporary1056 = int_to_int g_tempSize (SignedInt -> Array)
	mov eax, [@3013$g_tempSize]
	mov rbx, 4294967295
	and rax, rbx

 @3022$generateTempName$31:
	; £temporary1057 = £temporary1056 * Array_4#
	xor rdx, rdx
	mul qword [Array_4#]

 @3022$generateTempName$32:
	; £temporary1058 = g_tempArray + £temporary1057
	mov rsi, @3012$g_tempArray
	add rsi, rax

 @3022$generateTempName$33:
	; £temporary1055 -> £temporary1058 = *£temporary1058

 @3022$generateTempName$34:
	; parameter £temporary1055 -> £temporary1058, offset 65
	mov [rbp + 65], rsi

 @3022$generateTempName$35:
	; parameter name, offset 73
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 @3022$generateTempName$36:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 41], @3022$generateTempName$37
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

 @3022$generateTempName$37:
	; post call

 @3022$generateTempName$38:
	; £temporary1060 = g_tempSize
	mov eax, [@3013$g_tempSize]

 @3022$generateTempName$39:
	; g_tempSize = g_tempSize + int4$1#
	inc dword [@3013$g_tempSize]

 @3022$generateTempName$40:
	; £temporary1062 = int_to_int £temporary1060 (SignedInt -> Array)
	mov rbx, 4294967295
	and rax, rbx

 @3022$generateTempName$41:
	; £temporary1063 = £temporary1062 * Array_4#
	xor rdx, rdx
	mul qword [Array_4#]

 @3022$generateTempName$42:
	; £temporary1064 = g_tempArray + £temporary1063
	mov rsi, @3012$g_tempArray
	add rsi, rax

 @3022$generateTempName$43:
	; £temporary1061 -> £temporary1064 = *£temporary1064

 @3022$generateTempName$44:
	; return £temporary1061 -> £temporary1064
	mov rbx, rsi
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3022$generateTempName$45:
	; call header integral zero 0 stack zero 0

 @3022$generateTempName$46:
	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3022$generateTempName$47:
	; £temporary1065 = size + int4$1#
	mov eax, [rbp + 32]
	inc eax

 @3022$generateTempName$48:
	; parameter £temporary1065, offset 73
	mov [rbp + 73], eax

 @3022$generateTempName$49:
	; parameter status, offset 77
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

 @3022$generateTempName$50:
	; call function noellipse-noellipse generateTempName
	mov qword [rbp + 41], @3022$generateTempName$51
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @3022$generateTempName

 @3022$generateTempName$51:
	; post call

 @3022$generateTempName$52:
	; £temporary1066 = return_value

 @3022$generateTempName$53:
	; result = £temporary1066
	mov [rbp + 41], rbx

 @3022$generateTempName$54:
	; if result == int8$0# goto 56
	cmp qword [rbp + 41], 0
	je @3022$generateTempName$56

 @3022$generateTempName$55:
	; return result
	mov rbx, [rbp + 41]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3022$generateTempName$56:
	; c = c + int1$1#
	inc byte [rbp + 40]

 @3022$generateTempName$57:
	; goto 2
	jmp @3022$generateTempName$2

 @3022$generateTempName$58:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3022$generateTempName$59:
	; function end generateTempName

section .data

string_w#:
	; initializer String
	db "w", 0

section .text

 tmpfile:
	; empty

 tmpfile$1:
	; call header integral zero 0 stack zero 0

 tmpfile$2:
	; parameter name, offset 60
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

 tmpfile$3:
	; parameter int4$0#, offset 68
	mov dword [rbp + 68], 0

 tmpfile$4:
	; parameter int4$0#, offset 72
	mov dword [rbp + 72], 0

 tmpfile$5:
	; call function noellipse-noellipse generateTempName
	mov qword [rbp + 36], tmpfile$6
	mov [rbp + 44], rbp
	add rbp, 36
	jmp @3022$generateTempName

 tmpfile$6:
	; post call

 tmpfile$7:
	; £temporary1068 = return_value

 tmpfile$8:
	; if £temporary1068 == int4$0# goto 20
	cmp rbx, 0
	je tmpfile$20

 tmpfile$9:
	; call header integral zero 0 stack zero 0

 tmpfile$10:
	; parameter name, offset 60
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

 tmpfile$11:
	; parameter string_w#, offset 68
	mov qword [rbp + 68], string_w#

 tmpfile$12:
	; call function noellipse-noellipse fopen
	mov qword [rbp + 36], tmpfile$13
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fopen

 tmpfile$13:
	; post call

 tmpfile$14:
	; £temporary1069 = return_value

 tmpfile$15:
	; stream = £temporary1069
	mov [rbp + 24], rbx

 tmpfile$16:
	; if stream == int8$0# goto 20
	cmp qword [rbp + 24], 0
	je tmpfile$20

 tmpfile$17:
	; £temporary1073 -> stream = *stream
	mov rsi, [rbp + 24]

 tmpfile$18:
	; £temporary1073 -> stream = int4$1#
	mov dword [rsi + 37], 1

 tmpfile$19:
	; return stream
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$20:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$21:
	; function end tmpfile

section .text

 tmpnam:
	; if g_tempSize >= int4$16# goto 9
	cmp dword [@3013$g_tempSize], 16
	jge tmpnam$9

 tmpnam$1:
	; call header integral zero 0 stack zero 0

 tmpnam$2:
	; parameter name, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 tmpnam$3:
	; parameter int4$0#, offset 64
	mov dword [rbp + 64], 0

 tmpnam$4:
	; parameter int4$1#, offset 68
	mov dword [rbp + 68], 1

 tmpnam$5:
	; call function noellipse-noellipse generateTempName
	mov qword [rbp + 32], tmpnam$6
	mov [rbp + 40], rbp
	add rbp, 32
	jmp @3022$generateTempName

 tmpnam$6:
	; post call

 tmpnam$7:
	; £temporary1075 = return_value

 tmpnam$8:
	; return £temporary1075
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpnam$9:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpnam$10:
	; function end tmpnam
