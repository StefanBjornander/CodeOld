	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
	extern $StackTop


section .data

@2943$g_tempArray:
	; InitializerZero 64
	times 64 db 0

section .data

@2944$g_tempSize:
	; Initializer SignedInt 0
	dd 0

section .data

Array_4#:
	; Initializer Array 4
	dq 4

section .text

 @2946$existsTempName:
	; Empty

 @2946$existsTempName$1:
	; Assign index 0
	mov dword [rbp + 32], 0

 @2946$existsTempName$2:
	; SignedGreaterThanEqual 17 index g_tempSize
	mov eax, [@2944$g_tempSize]
	cmp [rbp + 32], eax
	jge @2946$existsTempName$17

 @2946$existsTempName$3:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2946$existsTempName$4:
	; Parameter pointer name 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 @2946$existsTempName$5:
	; IntegralToIntegral £temporary901 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @2946$existsTempName$6:
	; UnsignedMultiply £temporary902 £temporary901 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2946$existsTempName$7:
	; BinaryAdd £temporary903 g_tempArray £temporary902
	mov rsi, @2943$g_tempArray
	add rsi, rax

 @2946$existsTempName$8:
	; Dereference £temporary900 -> £temporary903 £temporary903 0

 @2946$existsTempName$9:
	; Parameter pointer £temporary900 -> £temporary903 68
	mov [rbp + 68], rsi

 @2946$existsTempName$10:
	; Call strcmp 36 0
	mov qword [rbp + 36], @2946$existsTempName$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

 @2946$existsTempName$11:
	; PostCall 36

 @2946$existsTempName$12:
	; GetReturnValue £temporary904

 @2946$existsTempName$13:
	; NotEqual 15 £temporary904 0
	cmp ebx, 0
	jne @2946$existsTempName$15

 @2946$existsTempName$14:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2946$existsTempName$15:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 @2946$existsTempName$16:
	; Goto 2
	jmp @2946$existsTempName$2

 @2946$existsTempName$17:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2946$existsTempName$18:
	; FunctionEnd existsTempName

section .text

 @2953$generateTempName:
	; SignedGreaterThanEqual 58 size 5
	cmp dword [rbp + 32], 5
	jge @2953$generateTempName$58

 @2953$generateTempName$1:
	; Assign c 97
	mov byte [rbp + 40], 97

 @2953$generateTempName$2:
	; SignedGreaterThan 58 c 122
	cmp byte [rbp + 40], 122
	jg @2953$generateTempName$58

 @2953$generateTempName$3:
	; IntegralToIntegral £temporary910 size
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @2953$generateTempName$4:
	; BinaryAdd £temporary912 name £temporary910
	mov rsi, [rbp + 24]
	add rsi, rax

 @2953$generateTempName$5:
	; Dereference £temporary909 -> £temporary912 £temporary912 0

 @2953$generateTempName$6:
	; Assign £temporary909 -> £temporary912 c
	mov al, [rbp + 40]
	mov [rsi], al

 @2953$generateTempName$7:
	; BinaryAdd £temporary913 size 1
	mov eax, [rbp + 32]
	inc eax

 @2953$generateTempName$8:
	; IntegralToIntegral £temporary915 £temporary913
	mov rbx, 4294967295
	and rax, rbx

 @2953$generateTempName$9:
	; BinaryAdd £temporary917 name £temporary915
	mov rsi, [rbp + 24]
	add rsi, rax

 @2953$generateTempName$10:
	; Dereference £temporary914 -> £temporary917 £temporary917 0

 @2953$generateTempName$11:
	; Assign £temporary914 -> £temporary917 0
	mov byte [rsi], 0

 @2953$generateTempName$12:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2953$generateTempName$13:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2953$generateTempName$14:
	; Call fileexists 41 0
	mov qword [rbp + 41], @2953$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

 @2953$generateTempName$15:
	; PostCall 41

 @2953$generateTempName$16:
	; GetReturnValue £temporary918

 @2953$generateTempName$17:
	; NotEqual 45 £temporary918 0
	cmp ebx, 0
	jne @2953$generateTempName$45

 @2953$generateTempName$18:
	; Case 22 status 0
	mov eax, [rbp + 36]
	cmp eax, 0
	je @2953$generateTempName$22

 @2953$generateTempName$19:
	; Case 23 status 1
	cmp eax, 1
	je @2953$generateTempName$23

 @2953$generateTempName$20:
	; CaseEnd status

 @2953$generateTempName$21:
	; Goto 45
	jmp @2953$generateTempName$45

 @2953$generateTempName$22:
	; Return name
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2953$generateTempName$23:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2953$generateTempName$24:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2953$generateTempName$25:
	; Call existsTempName 41 0
	mov qword [rbp + 41], @2953$generateTempName$26
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2946$existsTempName

 @2953$generateTempName$26:
	; PostCall 41

 @2953$generateTempName$27:
	; GetReturnValue £temporary921

 @2953$generateTempName$28:
	; NotEqual 45 £temporary921 0
	cmp ebx, 0
	jne @2953$generateTempName$45

 @2953$generateTempName$29:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2953$generateTempName$30:
	; IntegralToIntegral £temporary925 g_tempSize
	mov eax, [@2944$g_tempSize]
	mov rbx, 4294967295
	and rax, rbx

 @2953$generateTempName$31:
	; UnsignedMultiply £temporary926 £temporary925 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2953$generateTempName$32:
	; BinaryAdd £temporary927 g_tempArray £temporary926
	mov rsi, @2943$g_tempArray
	add rsi, rax

 @2953$generateTempName$33:
	; Dereference £temporary924 -> £temporary927 £temporary927 0

 @2953$generateTempName$34:
	; Parameter pointer £temporary924 -> £temporary927 65
	mov [rbp + 65], rsi

 @2953$generateTempName$35:
	; Parameter pointer name 73
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 @2953$generateTempName$36:
	; Call strcpy 41 0
	mov qword [rbp + 41], @2953$generateTempName$37
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

 @2953$generateTempName$37:
	; PostCall 41

 @2953$generateTempName$38:
	; Assign £temporary929 g_tempSize
	mov eax, [@2944$g_tempSize]

 @2953$generateTempName$39:
	; BinaryAdd g_tempSize g_tempSize 1
	inc dword [@2944$g_tempSize]

 @2953$generateTempName$40:
	; IntegralToIntegral £temporary931 £temporary929
	mov rbx, 4294967295
	and rax, rbx

 @2953$generateTempName$41:
	; UnsignedMultiply £temporary932 £temporary931 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2953$generateTempName$42:
	; BinaryAdd £temporary933 g_tempArray £temporary932
	mov rsi, @2943$g_tempArray
	add rsi, rax

 @2953$generateTempName$43:
	; Dereference £temporary930 -> £temporary933 £temporary933 0

 @2953$generateTempName$44:
	; Return £temporary930 -> £temporary933
	mov rbx, rsi
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2953$generateTempName$45:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2953$generateTempName$46:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2953$generateTempName$47:
	; BinaryAdd £temporary934 size 1
	mov eax, [rbp + 32]
	inc eax

 @2953$generateTempName$48:
	; Parameter signedint £temporary934 73
	mov [rbp + 73], eax

 @2953$generateTempName$49:
	; Parameter signedint status 77
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

 @2953$generateTempName$50:
	; Call generateTempName 41 0
	mov qword [rbp + 41], @2953$generateTempName$51
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2953$generateTempName

 @2953$generateTempName$51:
	; PostCall 41

 @2953$generateTempName$52:
	; GetReturnValue £temporary935

 @2953$generateTempName$53:
	; Assign result £temporary935
	mov [rbp + 41], rbx

 @2953$generateTempName$54:
	; Equal 56 result 0
	cmp qword [rbp + 41], 0
	je @2953$generateTempName$56

 @2953$generateTempName$55:
	; Return result
	mov rbx, [rbp + 41]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2953$generateTempName$56:
	; BinaryAdd c c 1
	inc byte [rbp + 40]

 @2953$generateTempName$57:
	; Goto 2
	jmp @2953$generateTempName$2

 @2953$generateTempName$58:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2953$generateTempName$59:
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
	jmp @2953$generateTempName

 tmpfile$6:
	; PostCall 36

 tmpfile$7:
	; GetReturnValue £temporary937

 tmpfile$8:
	; Equal 20 £temporary937 0
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
	; GetReturnValue £temporary938

 tmpfile$15:
	; Assign stream £temporary938
	mov [rbp + 24], rbx

 tmpfile$16:
	; Equal 20 stream 0
	cmp qword [rbp + 24], 0
	je tmpfile$20

 tmpfile$17:
	; Dereference £temporary942 -> stream stream 0
	mov rsi, [rbp + 24]

 tmpfile$18:
	; Assign £temporary942 -> stream 1
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
	cmp dword [@2944$g_tempSize], 16
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
	jmp @2953$generateTempName

 tmpnam$6:
	; PostCall 32

 tmpnam$7:
	; GetReturnValue £temporary944

 tmpnam$8:
	; Return £temporary944
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
