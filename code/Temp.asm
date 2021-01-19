	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
	extern printf
	extern $StackTop


section .data

@3181$g_tempArray:
	; InitializerZero 64
	times 64 db 0

section .data

@3184$g_tempSize:
	; Initializer SignedInt 0
	dd 0

section .data

@3192$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .text

 @3186$existsTempName:
	; Assign index 0
	mov dword [rbp + 32], 0

 @3186$existsTempName$1:
	; GreaterThanEqual 17 index g_tempSize
	mov eax, [@3184$g_tempSize]
	cmp [rbp + 32], eax
	jge @3186$existsTempName$17

 @3186$existsTempName$2:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3186$existsTempName$3:
	; Parameter 60 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 @3186$existsTempName$4:
	; Multiply £temporary799 index 4
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@3192$int4$4#]

 @3186$existsTempName$5:
	; IntegralToIntegral £temporary800 £temporary799
	mov rbx, 4294967295
	and rax, rbx

 @3186$existsTempName$6:
	; BinaryAdd £temporary801 g_tempArray £temporary800
	mov rsi, @3181$g_tempArray
	add rsi, rax

 @3186$existsTempName$7:
	; Dereference £temporary798 -> £temporary801 £temporary801 0

 @3186$existsTempName$8:
	; Parameter 68 pointer £temporary798 -> £temporary801
	mov [rbp + 68], rsi

 @3186$existsTempName$9:
	; Call 36 strcmp 0
	mov qword [rbp + 36], @3186$existsTempName$10
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

 @3186$existsTempName$10:
	; PostCall 36

 @3186$existsTempName$11:
	; GetReturnValue £temporary802

 @3186$existsTempName$12:
	; NotEqual 15 £temporary802 0
	cmp ebx, 0
	jne @3186$existsTempName$15

 @3186$existsTempName$13:
	; SetReturnValue

 @3186$existsTempName$14:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3186$existsTempName$15:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 @3186$existsTempName$16:
	; Jump 1
	jmp @3186$existsTempName$1

 @3186$existsTempName$17:
	; SetReturnValue

 @3186$existsTempName$18:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3186$existsTempName$19:
	; FunctionEnd existsTempName

section .data

@3228$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@3231$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .text

 @3206$generateTempName:
	; GreaterThanEqual 61 size 3
	cmp dword [rbp + 32], 3
	jge @3206$generateTempName$61

 @3206$generateTempName$1:
	; Assign c 97
	mov byte [rbp + 40], 97

 @3206$generateTempName$2:
	; GreaterThan 61 c 122
	cmp byte [rbp + 40], 122
	jg @3206$generateTempName$61

 @3206$generateTempName$3:
	; IntegralToIntegral £temporary808 size
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @3206$generateTempName$4:
	; BinaryAdd £temporary809 name £temporary808
	mov rsi, [rbp + 24]
	add rsi, rax

 @3206$generateTempName$5:
	; Dereference £temporary807 -> £temporary809 £temporary809 0

 @3206$generateTempName$6:
	; Assign £temporary807 -> £temporary809 c
	mov al, [rbp + 40]
	mov [rsi], al

 @3206$generateTempName$7:
	; BinaryAdd £temporary810 size 1
	mov eax, [rbp + 32]
	inc eax

 @3206$generateTempName$8:
	; IntegralToIntegral £temporary812 £temporary810
	mov rbx, 4294967295
	and rax, rbx

 @3206$generateTempName$9:
	; BinaryAdd £temporary813 name £temporary812
	mov rsi, [rbp + 24]
	add rsi, rax

 @3206$generateTempName$10:
	; Dereference £temporary811 -> £temporary813 £temporary813 0

 @3206$generateTempName$11:
	; Assign £temporary811 -> £temporary813 0
	mov byte [rsi], 0

 @3206$generateTempName$12:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3206$generateTempName$13:
	; Parameter 65 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3206$generateTempName$14:
	; Call 41 fileexists 0
	mov qword [rbp + 41], @3206$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

 @3206$generateTempName$15:
	; PostCall 41

 @3206$generateTempName$16:
	; GetReturnValue £temporary814

 @3206$generateTempName$17:
	; NotEqual 47 £temporary814 0
	cmp ebx, 0
	jne @3206$generateTempName$47

 @3206$generateTempName$18:
	; Case 22 status 0
	mov eax, [rbp + 36]
	cmp eax, 0
	je @3206$generateTempName$22

 @3206$generateTempName$19:
	; Case 24 status 1
	cmp eax, 1
	je @3206$generateTempName$24

 @3206$generateTempName$20:
	; CaseEnd status

 @3206$generateTempName$21:
	; Jump 47
	jmp @3206$generateTempName$47

 @3206$generateTempName$22:
	; SetReturnValue

 @3206$generateTempName$23:
	; Return name
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3206$generateTempName$24:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3206$generateTempName$25:
	; Parameter 65 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3206$generateTempName$26:
	; Call 41 existsTempName 0
	mov qword [rbp + 41], @3206$generateTempName$27
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @3186$existsTempName

 @3206$generateTempName$27:
	; PostCall 41

 @3206$generateTempName$28:
	; GetReturnValue £temporary817

 @3206$generateTempName$29:
	; NotEqual 47 £temporary817 0
	cmp ebx, 0
	jne @3206$generateTempName$47

 @3206$generateTempName$30:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3206$generateTempName$31:
	; Multiply £temporary821 g_tempSize 4
	mov eax, [@3184$g_tempSize]
	xor edx, edx
	imul dword [@3228$int4$4#]

 @3206$generateTempName$32:
	; IntegralToIntegral £temporary822 £temporary821
	mov rbx, 4294967295
	and rax, rbx

 @3206$generateTempName$33:
	; BinaryAdd £temporary823 g_tempArray £temporary822
	mov rsi, @3181$g_tempArray
	add rsi, rax

 @3206$generateTempName$34:
	; Dereference £temporary820 -> £temporary823 £temporary823 0

 @3206$generateTempName$35:
	; Parameter 65 pointer £temporary820 -> £temporary823
	mov [rbp + 65], rsi

 @3206$generateTempName$36:
	; Parameter 73 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 @3206$generateTempName$37:
	; Call 41 strcpy 0
	mov qword [rbp + 41], @3206$generateTempName$38
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

 @3206$generateTempName$38:
	; PostCall 41

 @3206$generateTempName$39:
	; Assign £temporary825 g_tempSize
	mov eax, [@3184$g_tempSize]

 @3206$generateTempName$40:
	; BinaryAdd g_tempSize g_tempSize 1
	inc dword [@3184$g_tempSize]

 @3206$generateTempName$41:
	; Multiply £temporary827 £temporary825 4
	xor edx, edx
	imul dword [@3231$int4$4#]

 @3206$generateTempName$42:
	; IntegralToIntegral £temporary828 £temporary827
	mov rbx, 4294967295
	and rax, rbx

 @3206$generateTempName$43:
	; BinaryAdd £temporary829 g_tempArray £temporary828
	mov rsi, @3181$g_tempArray
	add rsi, rax

 @3206$generateTempName$44:
	; Dereference £temporary826 -> £temporary829 £temporary829 0

 @3206$generateTempName$45:
	; SetReturnValue

 @3206$generateTempName$46:
	; Return £temporary826 -> £temporary829
	mov rbx, rsi
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3206$generateTempName$47:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3206$generateTempName$48:
	; Parameter 65 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3206$generateTempName$49:
	; BinaryAdd £temporary830 size 1
	mov eax, [rbp + 32]
	inc eax

 @3206$generateTempName$50:
	; Parameter 73 signedint £temporary830
	mov [rbp + 73], eax

 @3206$generateTempName$51:
	; Parameter 77 signedint status
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

 @3206$generateTempName$52:
	; Call 41 generateTempName 0
	mov qword [rbp + 41], @3206$generateTempName$53
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @3206$generateTempName

 @3206$generateTempName$53:
	; PostCall 41

 @3206$generateTempName$54:
	; GetReturnValue £temporary831

 @3206$generateTempName$55:
	; Assign result £temporary831
	mov [rbp + 41], rbx

 @3206$generateTempName$56:
	; Equal 59 result 0
	cmp qword [rbp + 41], 0
	je @3206$generateTempName$59

 @3206$generateTempName$57:
	; SetReturnValue

 @3206$generateTempName$58:
	; Return result
	mov rbx, [rbp + 41]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3206$generateTempName$59:
	; BinaryAdd c c 1
	inc byte [rbp + 40]

 @3206$generateTempName$60:
	; Jump 2
	jmp @3206$generateTempName$2

 @3206$generateTempName$61:
	; SetReturnValue

 @3206$generateTempName$62:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3206$generateTempName$63:
	; FunctionEnd generateTempName

section .data

@3261$string_w#:
	; Initializer String w
	db "w", 0

section .data

@3266$string_temp20name3A203C25s3E0A#:
	; Initializer String temp name: <%s>\n
	db "temp name: <%s>", 10, 0

section .text

 tmpfile:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpfile$1:
	; Parameter 60 pointer name
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

 tmpfile$2:
	; Parameter 68 signedint 0
	mov dword [rbp + 68], 0

 tmpfile$3:
	; Parameter 72 signedint 0
	mov dword [rbp + 72], 0

 tmpfile$4:
	; Call 36 generateTempName 0
	mov qword [rbp + 36], tmpfile$5
	mov [rbp + 44], rbp
	add rbp, 36
	jmp @3206$generateTempName

 tmpfile$5:
	; PostCall 36

 tmpfile$6:
	; GetReturnValue £temporary833

 tmpfile$7:
	; Equal 25 £temporary833 0
	cmp rbx, 0
	je tmpfile$25

 tmpfile$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpfile$9:
	; Parameter 60 pointer name
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

 tmpfile$10:
	; Parameter 68 pointer "w"
	mov qword [rbp + 68], @3261$string_w#

 tmpfile$11:
	; Call 36 fopen 0
	mov qword [rbp + 36], tmpfile$12
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fopen

 tmpfile$12:
	; PostCall 36

 tmpfile$13:
	; GetReturnValue £temporary834

 tmpfile$14:
	; Assign stream £temporary834
	mov [rbp + 24], rbx

 tmpfile$15:
	; Equal 25 stream 0
	cmp qword [rbp + 24], 0
	je tmpfile$25

 tmpfile$16:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpfile$17:
	; Parameter 60 pointer "temp name: <%s>\n"
	mov qword [rbp + 60], @3266$string_temp20name3A203C25s3E0A#

 tmpfile$18:
	; Parameter 68 pointer name
	mov [rbp + 68], rbp
	add qword [rbp + 68], 32

 tmpfile$19:
	; Call 36 printf 8
	mov qword [rbp + 36], tmpfile$20
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 8
	jmp printf

 tmpfile$20:
	; PostCall 36

 tmpfile$21:
	; Dereference £temporary839 -> stream stream 0
	mov rsi, [rbp + 24]

 tmpfile$22:
	; Assign £temporary839 -> stream 1
	mov dword [rsi + 37], 1

 tmpfile$23:
	; SetReturnValue

 tmpfile$24:
	; Return stream
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$25:
	; SetReturnValue

 tmpfile$26:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$27:
	; FunctionEnd tmpfile

section .text

 tmpnam:
	; GreaterThanEqual 10 g_tempSize 16
	cmp dword [@3184$g_tempSize], 16
	jge tmpnam$10

 tmpnam$1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpnam$2:
	; Parameter 56 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 tmpnam$3:
	; Parameter 64 signedint 0
	mov dword [rbp + 64], 0

 tmpnam$4:
	; Parameter 68 signedint 1
	mov dword [rbp + 68], 1

 tmpnam$5:
	; Call 32 generateTempName 0
	mov qword [rbp + 32], tmpnam$6
	mov [rbp + 40], rbp
	add rbp, 32
	jmp @3206$generateTempName

 tmpnam$6:
	; PostCall 32

 tmpnam$7:
	; GetReturnValue £temporary841

 tmpnam$8:
	; SetReturnValue

 tmpnam$9:
	; Return £temporary841
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpnam$10:
	; SetReturnValue

 tmpnam$11:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpnam$12:
	; FunctionEnd tmpnam
