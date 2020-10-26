	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
	extern $StackTop


section .data

@3012$g_tempArray:
	; InitializerZero 64
	times 64 db 0

section .data

@3013$g_tempSize:
	; Initializer SignedInt 0
	dd 0

section .data

Array_4#:
	; Initializer Array 4
	dq 4

section .text

 @3015$existsTempName:
	; Empty

 @3015$existsTempName$1:
	; Assign index 0
	mov dword [rbp + 32], 0

 @3015$existsTempName$2:
	; SignedGreaterThanEqual 17 index g_tempSize
	mov eax, [@3013$g_tempSize]
	cmp [rbp + 32], eax
	jge @3015$existsTempName$17

 @3015$existsTempName$3:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3015$existsTempName$4:
	; Parameter pointer name 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 @3015$existsTempName$5:
	; IntegralToIntegral £temporary1032 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @3015$existsTempName$6:
	; UnsignedMultiply £temporary1033 £temporary1032 4
	xor rdx, rdx
	mul qword [Array_4#]

 @3015$existsTempName$7:
	; BinaryAdd £temporary1034 g_tempArray £temporary1033
	mov rsi, @3012$g_tempArray
	add rsi, rax

 @3015$existsTempName$8:
	; Dereference £temporary1031 -> £temporary1034 £temporary1034 0

 @3015$existsTempName$9:
	; Parameter pointer £temporary1031 -> £temporary1034 68
	mov [rbp + 68], rsi

 @3015$existsTempName$10:
	; Call strcmp 36 0
	mov qword [rbp + 36], @3015$existsTempName$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

 @3015$existsTempName$11:
	; PostCall 36

 @3015$existsTempName$12:
	; GetReturnValue £temporary1035

 @3015$existsTempName$13:
	; NotEqual 15 £temporary1035 0
	cmp ebx, 0
	jne @3015$existsTempName$15

 @3015$existsTempName$14:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3015$existsTempName$15:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 @3015$existsTempName$16:
	; Goto 2
	jmp @3015$existsTempName$2

 @3015$existsTempName$17:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3015$existsTempName$18:
	; FunctionEnd existsTempName

section .text

 @3022$generateTempName:
	; SignedGreaterThanEqual 58 size 5
	cmp dword [rbp + 32], 5
	jge @3022$generateTempName$58

 @3022$generateTempName$1:
	; Assign c 97
	mov byte [rbp + 40], 97

 @3022$generateTempName$2:
	; SignedGreaterThan 58 c 122
	cmp byte [rbp + 40], 122
	jg @3022$generateTempName$58

 @3022$generateTempName$3:
	; IntegralToIntegral £temporary1041 size
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @3022$generateTempName$4:
	; BinaryAdd £temporary1043 name £temporary1041
	mov rsi, [rbp + 24]
	add rsi, rax

 @3022$generateTempName$5:
	; Dereference £temporary1040 -> £temporary1043 £temporary1043 0

 @3022$generateTempName$6:
	; Assign £temporary1040 -> £temporary1043 c
	mov al, [rbp + 40]
	mov [rsi], al

 @3022$generateTempName$7:
	; BinaryAdd £temporary1044 size 1
	mov eax, [rbp + 32]
	inc eax

 @3022$generateTempName$8:
	; IntegralToIntegral £temporary1046 £temporary1044
	mov rbx, 4294967295
	and rax, rbx

 @3022$generateTempName$9:
	; BinaryAdd £temporary1048 name £temporary1046
	mov rsi, [rbp + 24]
	add rsi, rax

 @3022$generateTempName$10:
	; Dereference £temporary1045 -> £temporary1048 £temporary1048 0

 @3022$generateTempName$11:
	; Assign £temporary1045 -> £temporary1048 0
	mov byte [rsi], 0

 @3022$generateTempName$12:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3022$generateTempName$13:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3022$generateTempName$14:
	; Call fileexists 41 0
	mov qword [rbp + 41], @3022$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

 @3022$generateTempName$15:
	; PostCall 41

 @3022$generateTempName$16:
	; GetReturnValue £temporary1049

 @3022$generateTempName$17:
	; NotEqual 45 £temporary1049 0
	cmp ebx, 0
	jne @3022$generateTempName$45

 @3022$generateTempName$18:
	; Case 22 status 0
	mov eax, [rbp + 36]
	cmp eax, 0
	je @3022$generateTempName$22

 @3022$generateTempName$19:
	; Case 23 status 1
	cmp eax, 1
	je @3022$generateTempName$23

 @3022$generateTempName$20:
	; CaseEnd status

 @3022$generateTempName$21:
	; Goto 45
	jmp @3022$generateTempName$45

 @3022$generateTempName$22:
	; Return name
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3022$generateTempName$23:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3022$generateTempName$24:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3022$generateTempName$25:
	; Call existsTempName 41 0
	mov qword [rbp + 41], @3022$generateTempName$26
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @3015$existsTempName

 @3022$generateTempName$26:
	; PostCall 41

 @3022$generateTempName$27:
	; GetReturnValue £temporary1052

 @3022$generateTempName$28:
	; NotEqual 45 £temporary1052 0
	cmp ebx, 0
	jne @3022$generateTempName$45

 @3022$generateTempName$29:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3022$generateTempName$30:
	; IntegralToIntegral £temporary1056 g_tempSize
	mov eax, [@3013$g_tempSize]
	mov rbx, 4294967295
	and rax, rbx

 @3022$generateTempName$31:
	; UnsignedMultiply £temporary1057 £temporary1056 4
	xor rdx, rdx
	mul qword [Array_4#]

 @3022$generateTempName$32:
	; BinaryAdd £temporary1058 g_tempArray £temporary1057
	mov rsi, @3012$g_tempArray
	add rsi, rax

 @3022$generateTempName$33:
	; Dereference £temporary1055 -> £temporary1058 £temporary1058 0

 @3022$generateTempName$34:
	; Parameter pointer £temporary1055 -> £temporary1058 65
	mov [rbp + 65], rsi

 @3022$generateTempName$35:
	; Parameter pointer name 73
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 @3022$generateTempName$36:
	; Call strcpy 41 0
	mov qword [rbp + 41], @3022$generateTempName$37
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

 @3022$generateTempName$37:
	; PostCall 41

 @3022$generateTempName$38:
	; Assign £temporary1060 g_tempSize
	mov eax, [@3013$g_tempSize]

 @3022$generateTempName$39:
	; BinaryAdd g_tempSize g_tempSize 1
	inc dword [@3013$g_tempSize]

 @3022$generateTempName$40:
	; IntegralToIntegral £temporary1062 £temporary1060
	mov rbx, 4294967295
	and rax, rbx

 @3022$generateTempName$41:
	; UnsignedMultiply £temporary1063 £temporary1062 4
	xor rdx, rdx
	mul qword [Array_4#]

 @3022$generateTempName$42:
	; BinaryAdd £temporary1064 g_tempArray £temporary1063
	mov rsi, @3012$g_tempArray
	add rsi, rax

 @3022$generateTempName$43:
	; Dereference £temporary1061 -> £temporary1064 £temporary1064 0

 @3022$generateTempName$44:
	; Return £temporary1061 -> £temporary1064
	mov rbx, rsi
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3022$generateTempName$45:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3022$generateTempName$46:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3022$generateTempName$47:
	; BinaryAdd £temporary1065 size 1
	mov eax, [rbp + 32]
	inc eax

 @3022$generateTempName$48:
	; Parameter signedint £temporary1065 73
	mov [rbp + 73], eax

 @3022$generateTempName$49:
	; Parameter signedint status 77
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

 @3022$generateTempName$50:
	; Call generateTempName 41 0
	mov qword [rbp + 41], @3022$generateTempName$51
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @3022$generateTempName

 @3022$generateTempName$51:
	; PostCall 41

 @3022$generateTempName$52:
	; GetReturnValue £temporary1066

 @3022$generateTempName$53:
	; Assign result £temporary1066
	mov [rbp + 41], rbx

 @3022$generateTempName$54:
	; Equal 56 result 0
	cmp qword [rbp + 41], 0
	je @3022$generateTempName$56

 @3022$generateTempName$55:
	; Return result
	mov rbx, [rbp + 41]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3022$generateTempName$56:
	; BinaryAdd c c 1
	inc byte [rbp + 40]

 @3022$generateTempName$57:
	; Goto 2
	jmp @3022$generateTempName$2

 @3022$generateTempName$58:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3022$generateTempName$59:
	; FunctionEnd generateTempName

section .data

string_w#:
	; Initializer String w
	db "w", 0

section .text

 tmpfile:
	; Empty

 tmpfile$1:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpfile$2:
	; Parameter pointer name 60
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

 tmpfile$3:
	; Parameter signedint 0 68
	mov dword [rbp + 68], 0

 tmpfile$4:
	; Parameter signedint 0 72
	mov dword [rbp + 72], 0

 tmpfile$5:
	; Call generateTempName 36 0
	mov qword [rbp + 36], tmpfile$6
	mov [rbp + 44], rbp
	add rbp, 36
	jmp @3022$generateTempName

 tmpfile$6:
	; PostCall 36

 tmpfile$7:
	; GetReturnValue £temporary1068

 tmpfile$8:
	; Equal 20 £temporary1068 0
	cmp rbx, 0
	je tmpfile$20

 tmpfile$9:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpfile$10:
	; Parameter pointer name 60
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

 tmpfile$11:
	; Parameter pointer "w" 68
	mov qword [rbp + 68], string_w#

 tmpfile$12:
	; Call fopen 36 0
	mov qword [rbp + 36], tmpfile$13
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fopen

 tmpfile$13:
	; PostCall 36

 tmpfile$14:
	; GetReturnValue £temporary1069

 tmpfile$15:
	; Assign stream £temporary1069
	mov [rbp + 24], rbx

 tmpfile$16:
	; Equal 20 stream 0
	cmp qword [rbp + 24], 0
	je tmpfile$20

 tmpfile$17:
	; Dereference £temporary1073 -> stream stream 0
	mov rsi, [rbp + 24]

 tmpfile$18:
	; Assign £temporary1073 -> stream 1
	mov dword [rsi + 37], 1

 tmpfile$19:
	; Return stream
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$20:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$21:
	; FunctionEnd tmpfile

section .text

 tmpnam:
	; SignedGreaterThanEqual 9 g_tempSize 16
	cmp dword [@3013$g_tempSize], 16
	jge tmpnam$9

 tmpnam$1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpnam$2:
	; Parameter pointer name 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 tmpnam$3:
	; Parameter signedint 0 64
	mov dword [rbp + 64], 0

 tmpnam$4:
	; Parameter signedint 1 68
	mov dword [rbp + 68], 1

 tmpnam$5:
	; Call generateTempName 32 0
	mov qword [rbp + 32], tmpnam$6
	mov [rbp + 40], rbp
	add rbp, 32
	jmp @3022$generateTempName

 tmpnam$6:
	; PostCall 32

 tmpnam$7:
	; GetReturnValue £temporary1075

 tmpnam$8:
	; Return £temporary1075
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpnam$9:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpnam$10:
	; FunctionEnd tmpnam
