	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
section .text

@2996$existsTempName:	; empty

@2996$existsTempName$1:	; index = int4$0#
	mov dword [rbp + 32], 0

@2996$existsTempName$2:	; if index >= g_tempSize goto 18
	mov eax, [@2994$g_tempSize]
	cmp [rbp + 32], eax
	jge @2996$existsTempName$18

@2996$existsTempName$3:	; call header integral zero 0 stack zero 0

@2996$existsTempName$4:	; parameter name, offset 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

@2996$existsTempName$5:	; £temporary986 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

@2996$existsTempName$6:	; £temporary987 = £temporary986 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

@2996$existsTempName$7:	; £temporary988 = g_tempArray + £temporary987
	mov rsi, @2993$g_tempArray
	add rsi, rax

@2996$existsTempName$8:	; £field985 -> £temporary988 = *£temporary988

@2996$existsTempName$9:	; parameter £field985 -> £temporary988, offset 68
	mov [rbp + 68], rsi

@2996$existsTempName$10:	; call function noellipse-noellipse strcmp
	mov qword [rbp + 36], @2996$existsTempName$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

@2996$existsTempName$11:	; post call

@2996$existsTempName$12:	; £temporary989 = return_value

@2996$existsTempName$13:	; if £temporary989 != int4$0# goto 16
	cmp ebx, 0
	jne @2996$existsTempName$16

@2996$existsTempName$14:	; return_value = int4$1#
	mov ebx, 1

@2996$existsTempName$15:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@2996$existsTempName$16:	; index = index + int4$1#
	inc dword [rbp + 32]

@2996$existsTempName$17:	; goto 2
	jmp @2996$existsTempName$2

@2996$existsTempName$18:	; return_value = int4$0#
	mov ebx, 0

@2996$existsTempName$19:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@2996$existsTempName$20:	; function end existsTempName

@3003$generateTempName:	; if size >= int4$5# goto 61
	cmp dword [rbp + 32], 5
	jge @3003$generateTempName$61

@3003$generateTempName$1:	; c = int1$97#
	mov byte [rbp + 40], 97

@3003$generateTempName$2:	; if c > int1$122# goto 61
	cmp byte [rbp + 40], 122
	jg @3003$generateTempName$61

@3003$generateTempName$3:	; £temporary995 = int_to_int size (Signed_Int -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

@3003$generateTempName$4:	; £temporary997 = name + £temporary995
	mov rsi, [rbp + 24]
	add rsi, rax

@3003$generateTempName$5:	; £field994 -> £temporary997 = *£temporary997

@3003$generateTempName$6:	; £field994 -> £temporary997 = c
	mov al, [rbp + 40]
	mov [rsi], al

@3003$generateTempName$7:	; £temporary998 = size + int4$1#
	mov eax, [rbp + 32]
	inc eax

@3003$generateTempName$8:	; £temporary1000 = int_to_int £temporary998 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

@3003$generateTempName$9:	; £temporary1002 = name + £temporary1000
	mov rsi, [rbp + 24]
	add rsi, rax

@3003$generateTempName$10:	; £field999 -> £temporary1002 = *£temporary1002

@3003$generateTempName$11:	; £field999 -> £temporary1002 = int1$0#
	mov byte [rsi], 0

@3003$generateTempName$12:	; call header integral zero 0 stack zero 0

@3003$generateTempName$13:	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

@3003$generateTempName$14:	; call function noellipse-noellipse fileexists
	mov qword [rbp + 41], @3003$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

@3003$generateTempName$15:	; post call

@3003$generateTempName$16:	; £temporary1003 = return_value

@3003$generateTempName$17:	; if £temporary1003 != int4$0# goto 47
	cmp ebx, 0
	jne @3003$generateTempName$47

@3003$generateTempName$18:	; case status == int4$0# goto 22
	mov eax, [rbp + 36]
	cmp eax, 0
	je @3003$generateTempName$22

@3003$generateTempName$19:	; case status == int4$1# goto 24
	cmp eax, 1
	je @3003$generateTempName$24

@3003$generateTempName$20:	; case end status

@3003$generateTempName$21:	; goto 47
	jmp @3003$generateTempName$47

@3003$generateTempName$22:	; return_value = name
	mov rbx, [rbp + 24]

@3003$generateTempName$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@3003$generateTempName$24:	; call header integral zero 0 stack zero 0

@3003$generateTempName$25:	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

@3003$generateTempName$26:	; call function noellipse-noellipse existsTempName
	mov qword [rbp + 41], @3003$generateTempName$27
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2996$existsTempName

@3003$generateTempName$27:	; post call

@3003$generateTempName$28:	; £temporary1006 = return_value

@3003$generateTempName$29:	; if £temporary1006 != int4$0# goto 47
	cmp ebx, 0
	jne @3003$generateTempName$47

@3003$generateTempName$30:	; call header integral zero 0 stack zero 0

@3003$generateTempName$31:	; £temporary1010 = int_to_int g_tempSize (Signed_Int -> Array)
	mov eax, [@2994$g_tempSize]
	mov rbx, 4294967295
	and rax, rbx

@3003$generateTempName$32:	; £temporary1011 = £temporary1010 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

@3003$generateTempName$33:	; £temporary1012 = g_tempArray + £temporary1011
	mov rsi, @2993$g_tempArray
	add rsi, rax

@3003$generateTempName$34:	; £field1009 -> £temporary1012 = *£temporary1012

@3003$generateTempName$35:	; parameter £field1009 -> £temporary1012, offset 65
	mov [rbp + 65], rsi

@3003$generateTempName$36:	; parameter name, offset 73
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

@3003$generateTempName$37:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 41], @3003$generateTempName$38
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

@3003$generateTempName$38:	; post call

@3003$generateTempName$39:	; £temporary1014 = g_tempSize
	mov eax, [@2994$g_tempSize]

@3003$generateTempName$40:	; g_tempSize = g_tempSize + int4$1#
	inc dword [@2994$g_tempSize]

@3003$generateTempName$41:	; £temporary1016 = int_to_int £temporary1014 (Signed_Int -> Array)
	mov rbx, 4294967295
	and rax, rbx

@3003$generateTempName$42:	; £temporary1017 = £temporary1016 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

@3003$generateTempName$43:	; £temporary1018 = g_tempArray + £temporary1017
	mov rsi, @2993$g_tempArray
	add rsi, rax

@3003$generateTempName$44:	; £field1015 -> £temporary1018 = *£temporary1018

@3003$generateTempName$45:	; return_value = £field1015 -> £temporary1018
	mov rbx, rsi

@3003$generateTempName$46:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@3003$generateTempName$47:	; call header integral zero 0 stack zero 0

@3003$generateTempName$48:	; parameter name, offset 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

@3003$generateTempName$49:	; £temporary1019 = size + int4$1#
	mov eax, [rbp + 32]
	inc eax

@3003$generateTempName$50:	; parameter £temporary1019, offset 73
	mov [rbp + 73], eax

@3003$generateTempName$51:	; parameter status, offset 77
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

@3003$generateTempName$52:	; call function noellipse-noellipse generateTempName
	mov qword [rbp + 41], @3003$generateTempName$53
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @3003$generateTempName

@3003$generateTempName$53:	; post call

@3003$generateTempName$54:	; £temporary1020 = return_value

@3003$generateTempName$55:	; result = £temporary1020
	mov [rbp + 41], rbx

@3003$generateTempName$56:	; if result == int8$0# goto 59
	cmp qword [rbp + 41], 0
	je @3003$generateTempName$59

@3003$generateTempName$57:	; return_value = result
	mov rbx, [rbp + 41]

@3003$generateTempName$58:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@3003$generateTempName$59:	; c = c + int1$1#
	inc byte [rbp + 40]

@3003$generateTempName$60:	; goto 2
	jmp @3003$generateTempName$2

@3003$generateTempName$61:	; return_value = int8$0#
	mov rbx, 0

@3003$generateTempName$62:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

@3003$generateTempName$63:	; function end generateTempName

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
	jmp @3003$generateTempName

tmpfile$6:	; post call

tmpfile$7:	; £temporary1022 = return_value

tmpfile$8:	; if £temporary1022 == int4$0# goto 21
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

tmpfile$14:	; £temporary1023 = return_value

tmpfile$15:	; stream = £temporary1023
	mov [rbp + 24], rbx

tmpfile$16:	; if stream == int8$0# goto 21
	cmp qword [rbp + 24], 0
	je tmpfile$21

tmpfile$17:	; £field1027 -> stream = *stream
	mov rsi, [rbp + 24]

tmpfile$18:	; £field1027 -> stream = int4$1#
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
	cmp dword [@2994$g_tempSize], 16
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
	jmp @3003$generateTempName

tmpnam$6:	; post call

tmpnam$7:	; £temporary1029 = return_value

tmpnam$8:	; return_value = £temporary1029

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

@2993$g_tempArray:
	times 64 db 0

@2994$g_tempSize:
	dd 0

Array_#:
	; initializer Array
	dq 4

string_w#:
	; initializer String
	db "w", 0
