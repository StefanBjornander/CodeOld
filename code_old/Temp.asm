	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
	extern $StackTop
section .text

 @2996$existsTempName:
	; empty

 @2996$existsTempName$1:
	; index = int4$0#
	mov dword [rbp + 32], 0

 @2996$existsTempName$2:
	; if index >= g_tempSize goto 17
	mov eax, [@2994$g_tempSize]
	cmp [rbp + 32], eax
	jge @2996$existsTempName$17

 @2996$existsTempName$3:
	; call header integral zero 0 stack zero 0

 @2996$existsTempName$4:
	; parameter name, offset 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 @2996$existsTempName$5:
	; £temporary1005 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @2996$existsTempName$6:
	; £temporary1006 = £temporary1005 * Array_4#
	xor rdx, rdx
	mul qword [Array_4#]

 @2996$existsTempName$7:
	; £temporary1007 = g_tempArray + £temporary1006
	mov rsi, @2993$g_tempArray
	add rsi, rax

 @2996$existsTempName$8:
	; £field1004 -> £temporary1007 = *£temporary1007

 @2996$existsTempName$9:
	; parameter £field1004 -> £temporary1007, offset 68
	mov [rbp + 68], rsi

 @2996$existsTempName$10:
	; call function noellipse-noellipse strcmp
	mov qword [rbp + 36], @2996$existsTempName$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

 @2996$existsTempName$11:
	; post call

 @2996$existsTempName$12:
	; £temporary1008 = return_value

 @2996$existsTempName$13:
	; if £temporary1008 != int4$0# goto 15
	cmp ebx, 0
	jne @2996$existsTempName$15

 @2996$existsTempName$14:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2996$existsTempName$15:
	; index = index + int4$1#
	inc dword [rbp + 32]

 @2996$existsTempName$16:
	; goto 2
	jmp @2996$existsTempName$2

 @2996$existsTempName$17:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2996$existsTempName$18:
	; function end existsTempName

 @3003$generateTempName:
	; if size >= int4$5# goto 58
	cmp dword [rbp + 32], 5
	jge @3003$generateTempName$58

 @3003$generateTempName$1:
	; c = int1$97#
	mov byte [rbp + 40], 97

 @3003$generateTempName$2:
	; if c > int1$122# goto 58
	cmp byte [rbp + 40], 122
	jg @3003$generateTempName$58

 @3003$generateTempName$3:
	; £temporary1014 = int_to_int size (Signed_Int -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @3003$generateTempName$4:
	; £temporary1016 = name + £temporary1014
	mov rsi, [rbp + 24]
	add rsi, rax

 @3003$generateTempName$5:
	; £field1013 -> £temporary1016 = *£temporary1016

 @3003$generateTempName$6:
	; £field1013 -> £temporary1016 = c
	mov al, [rbp + 40]
	mov [rsi], al

 @3003$generateTempName$7:
	; £temporary1017 = size + int4$1#
	mov eax, [rbp + 32]
	inc eax

 @3003$generateTempName$8:
	; £temporary1019 = int_to_int £temporary1017 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 @3003$generateTempName$9:
	; £temporary1021 = name + £temporary1019
	mov rsi, [rbp + 24]
	add rsi, rax

 @3003$generateTempName$10:
	; £field1018 -> £temporary1021 = *£temporary1021

 @3003$generateTempName$11:
	; £field1018 -> £temporary1021 = int1$0#
	mov byte [rsi], 0

 @3003$generateTempName$12:
	; call header integral zero 0 stack zero 0

 @3003$generateTempName$13:
	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3003$generateTempName$14:
	; call function noellipse-noellipse fileexists
	mov qword [rbp + 41], @3003$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

 @3003$generateTempName$15:
	; post call

 @3003$generateTempName$16:
	; £temporary1022 = return_value

 @3003$generateTempName$17:
	; if £temporary1022 != int4$0# goto 45
	cmp ebx, 0
	jne @3003$generateTempName$45

 @3003$generateTempName$18:
	; case status == int4$0# goto 22
	mov eax, [rbp + 36]
	cmp eax, 0
	je @3003$generateTempName$22

 @3003$generateTempName$19:
	; case status == int4$1# goto 23
	cmp eax, 1
	je @3003$generateTempName$23

 @3003$generateTempName$20:
	; case end status

 @3003$generateTempName$21:
	; goto 45
	jmp @3003$generateTempName$45

 @3003$generateTempName$22:
	; return name
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3003$generateTempName$23:
	; call header integral zero 0 stack zero 0

 @3003$generateTempName$24:
	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3003$generateTempName$25:
	; call function noellipse-noellipse existsTempName
	mov qword [rbp + 41], @3003$generateTempName$26
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2996$existsTempName

 @3003$generateTempName$26:
	; post call

 @3003$generateTempName$27:
	; £temporary1025 = return_value

 @3003$generateTempName$28:
	; if £temporary1025 != int4$0# goto 45
	cmp ebx, 0
	jne @3003$generateTempName$45

 @3003$generateTempName$29:
	; call header integral zero 0 stack zero 0

 @3003$generateTempName$30:
	; £temporary1029 = int_to_int g_tempSize (Signed_Int -> Array)
	mov eax, [@2994$g_tempSize]
	mov rbx, 4294967295
	and rax, rbx

 @3003$generateTempName$31:
	; £temporary1030 = £temporary1029 * Array_4#
	xor rdx, rdx
	mul qword [Array_4#]

 @3003$generateTempName$32:
	; £temporary1031 = g_tempArray + £temporary1030
	mov rsi, @2993$g_tempArray
	add rsi, rax

 @3003$generateTempName$33:
	; £field1028 -> £temporary1031 = *£temporary1031

 @3003$generateTempName$34:
	; parameter £field1028 -> £temporary1031, offset 65
	mov [rbp + 65], rsi

 @3003$generateTempName$35:
	; parameter name, offset 73
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 @3003$generateTempName$36:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 41], @3003$generateTempName$37
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

 @3003$generateTempName$37:
	; post call

 @3003$generateTempName$38:
	; £temporary1033 = g_tempSize
	mov eax, [@2994$g_tempSize]

 @3003$generateTempName$39:
	; g_tempSize = g_tempSize + int4$1#
	inc dword [@2994$g_tempSize]

 @3003$generateTempName$40:
	; £temporary1035 = int_to_int £temporary1033 (Signed_Int -> Array)
	mov rbx, 4294967295
	and rax, rbx

 @3003$generateTempName$41:
	; £temporary1036 = £temporary1035 * Array_4#
	xor rdx, rdx
	mul qword [Array_4#]

 @3003$generateTempName$42:
	; £temporary1037 = g_tempArray + £temporary1036
	mov rsi, @2993$g_tempArray
	add rsi, rax

 @3003$generateTempName$43:
	; £field1034 -> £temporary1037 = *£temporary1037

 @3003$generateTempName$44:
	; return £field1034 -> £temporary1037
	mov rbx, rsi
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3003$generateTempName$45:
	; call header integral zero 0 stack zero 0

 @3003$generateTempName$46:
	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3003$generateTempName$47:
	; £temporary1038 = size + int4$1#
	mov eax, [rbp + 32]
	inc eax

 @3003$generateTempName$48:
	; parameter £temporary1038, offset 73
	mov [rbp + 73], eax

 @3003$generateTempName$49:
	; parameter status, offset 77
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

 @3003$generateTempName$50:
	; call function noellipse-noellipse generateTempName
	mov qword [rbp + 41], @3003$generateTempName$51
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @3003$generateTempName

 @3003$generateTempName$51:
	; post call

 @3003$generateTempName$52:
	; £temporary1039 = return_value

 @3003$generateTempName$53:
	; result = £temporary1039
	mov [rbp + 41], rbx

 @3003$generateTempName$54:
	; if result == int8$0# goto 56
	cmp qword [rbp + 41], 0
	je @3003$generateTempName$56

 @3003$generateTempName$55:
	; return result
	mov rbx, [rbp + 41]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3003$generateTempName$56:
	; c = c + int1$1#
	inc byte [rbp + 40]

 @3003$generateTempName$57:
	; goto 2
	jmp @3003$generateTempName$2

 @3003$generateTempName$58:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3003$generateTempName$59:
	; function end generateTempName

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
	jmp @3003$generateTempName

 tmpfile$6:
	; post call

 tmpfile$7:
	; £temporary1041 = return_value

 tmpfile$8:
	; if £temporary1041 == int4$0# goto 20
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
	; £temporary1042 = return_value

 tmpfile$15:
	; stream = £temporary1042
	mov [rbp + 24], rbx

 tmpfile$16:
	; if stream == int8$0# goto 20
	cmp qword [rbp + 24], 0
	je tmpfile$20

 tmpfile$17:
	; £field1046 -> stream = *stream
	mov rsi, [rbp + 24]

 tmpfile$18:
	; £field1046 -> stream = int4$1#
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

 tmpnam:
	; if g_tempSize >= int4$16# goto 9
	cmp dword [@2994$g_tempSize], 16
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
	jmp @3003$generateTempName

 tmpnam$6:
	; post call

 tmpnam$7:
	; £temporary1048 = return_value

 tmpnam$8:
	; return £temporary1048
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
section .data

@2993$g_tempArray:
	; initializer zero 64
	times 64 db 0

@2994$g_tempSize:
	; initializer Signed_Int
	dd 0

Array_4#:
	; initializer Array
	dq 4

string_w#:
	; initializer String
	db "w", 0
