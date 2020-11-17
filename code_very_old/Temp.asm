	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
	extern $StackTop


section .data

@2587$g_tempArray:
	; InitializerZero 64
	times 64 db 0

section .data

@2588$g_tempSize:
	; Initializer SignedInt 0
	dd 0

section .data

Array_4#:
	; Initializer Array 4
	dq 4

section .text

 @2590$existsTempName:
	; Assign index 0
	mov dword [rbp + 32], 0

 @2590$existsTempName$1:
	; SignedGreaterThanEqual 16 index g_tempSize
	mov eax, [@2588$g_tempSize]
	cmp [rbp + 32], eax
	jge @2590$existsTempName$16

 @2590$existsTempName$2:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2590$existsTempName$3:
	; Parameter 60 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 @2590$existsTempName$4:
	; IntegralToIntegral £temporary916 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @2590$existsTempName$5:
	; UnsignedMultiply £temporary917 £temporary916 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2590$existsTempName$6:
	; BinaryAdd £temporary918 g_tempArray £temporary917
	mov rsi, @2587$g_tempArray
	add rsi, rax

 @2590$existsTempName$7:
	; Dereference £temporary915 -> £temporary918 £temporary918 0

 @2590$existsTempName$8:
	; Parameter 68 pointer £temporary915 -> £temporary918
	mov [rbp + 68], rsi

 @2590$existsTempName$9:
	; Call 36 strcmp 0
	mov qword [rbp + 36], @2590$existsTempName$10
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

 @2590$existsTempName$10:
	; PostCall 36

 @2590$existsTempName$11:
	; GetReturnValue £temporary919

 @2590$existsTempName$12:
	; NotEqual 14 £temporary919 0
	cmp ebx, 0
	jne @2590$existsTempName$14

 @2590$existsTempName$13:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2590$existsTempName$14:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 @2590$existsTempName$15:
	; Goto 1
	jmp @2590$existsTempName$1

 @2590$existsTempName$16:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2590$existsTempName$17:
	; FunctionEnd existsTempName

section .text

 @2597$generateTempName:
	; SignedGreaterThanEqual 58 size 3
	cmp dword [rbp + 32], 3
	jge @2597$generateTempName$58

 @2597$generateTempName$1:
	; Assign c 97
	mov byte [rbp + 40], 97

 @2597$generateTempName$2:
	; SignedGreaterThan 58 c 122
	cmp byte [rbp + 40], 122
	jg @2597$generateTempName$58

 @2597$generateTempName$3:
	; IntegralToIntegral £temporary925 size
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @2597$generateTempName$4:
	; BinaryAdd £temporary927 name £temporary925
	mov rsi, [rbp + 24]
	add rsi, rax

 @2597$generateTempName$5:
	; Dereference £temporary924 -> £temporary927 £temporary927 0

 @2597$generateTempName$6:
	; Assign £temporary924 -> £temporary927 c
	mov al, [rbp + 40]
	mov [rsi], al

 @2597$generateTempName$7:
	; BinaryAdd £temporary928 size 1
	mov eax, [rbp + 32]
	inc eax

 @2597$generateTempName$8:
	; IntegralToIntegral £temporary930 £temporary928
	mov rbx, 4294967295
	and rax, rbx

 @2597$generateTempName$9:
	; BinaryAdd £temporary932 name £temporary930
	mov rsi, [rbp + 24]
	add rsi, rax

 @2597$generateTempName$10:
	; Dereference £temporary929 -> £temporary932 £temporary932 0

 @2597$generateTempName$11:
	; Assign £temporary929 -> £temporary932 0
	mov byte [rsi], 0

 @2597$generateTempName$12:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2597$generateTempName$13:
	; Parameter 65 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2597$generateTempName$14:
	; Call 41 fileexists 0
	mov qword [rbp + 41], @2597$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

 @2597$generateTempName$15:
	; PostCall 41

 @2597$generateTempName$16:
	; GetReturnValue £temporary933

 @2597$generateTempName$17:
	; NotEqual 45 £temporary933 0
	cmp ebx, 0
	jne @2597$generateTempName$45

 @2597$generateTempName$18:
	; Case 22 status 0
	mov eax, [rbp + 36]
	cmp eax, 0
	je @2597$generateTempName$22

 @2597$generateTempName$19:
	; Case 23 status 1
	cmp eax, 1
	je @2597$generateTempName$23

 @2597$generateTempName$20:
	; CaseEnd status

 @2597$generateTempName$21:
	; Goto 45
	jmp @2597$generateTempName$45

 @2597$generateTempName$22:
	; Return name
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2597$generateTempName$23:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2597$generateTempName$24:
	; Parameter 65 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2597$generateTempName$25:
	; Call 41 existsTempName 0
	mov qword [rbp + 41], @2597$generateTempName$26
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2590$existsTempName

 @2597$generateTempName$26:
	; PostCall 41

 @2597$generateTempName$27:
	; GetReturnValue £temporary936

 @2597$generateTempName$28:
	; NotEqual 45 £temporary936 0
	cmp ebx, 0
	jne @2597$generateTempName$45

 @2597$generateTempName$29:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2597$generateTempName$30:
	; IntegralToIntegral £temporary940 g_tempSize
	mov eax, [@2588$g_tempSize]
	mov rbx, 4294967295
	and rax, rbx

 @2597$generateTempName$31:
	; UnsignedMultiply £temporary941 £temporary940 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2597$generateTempName$32:
	; BinaryAdd £temporary942 g_tempArray £temporary941
	mov rsi, @2587$g_tempArray
	add rsi, rax

 @2597$generateTempName$33:
	; Dereference £temporary939 -> £temporary942 £temporary942 0

 @2597$generateTempName$34:
	; Parameter 65 pointer £temporary939 -> £temporary942
	mov [rbp + 65], rsi

 @2597$generateTempName$35:
	; Parameter 73 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 @2597$generateTempName$36:
	; Call 41 strcpy 0
	mov qword [rbp + 41], @2597$generateTempName$37
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

 @2597$generateTempName$37:
	; PostCall 41

 @2597$generateTempName$38:
	; Assign £temporary944 g_tempSize
	mov eax, [@2588$g_tempSize]

 @2597$generateTempName$39:
	; BinaryAdd g_tempSize g_tempSize 1
	inc dword [@2588$g_tempSize]

 @2597$generateTempName$40:
	; IntegralToIntegral £temporary946 £temporary944
	mov rbx, 4294967295
	and rax, rbx

 @2597$generateTempName$41:
	; UnsignedMultiply £temporary947 £temporary946 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2597$generateTempName$42:
	; BinaryAdd £temporary948 g_tempArray £temporary947
	mov rsi, @2587$g_tempArray
	add rsi, rax

 @2597$generateTempName$43:
	; Dereference £temporary945 -> £temporary948 £temporary948 0

 @2597$generateTempName$44:
	; Return £temporary945 -> £temporary948
	mov rbx, rsi
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2597$generateTempName$45:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2597$generateTempName$46:
	; Parameter 65 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2597$generateTempName$47:
	; BinaryAdd £temporary949 size 1
	mov eax, [rbp + 32]
	inc eax

 @2597$generateTempName$48:
	; Parameter 73 signedint £temporary949
	mov [rbp + 73], eax

 @2597$generateTempName$49:
	; Parameter 77 signedint status
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

 @2597$generateTempName$50:
	; Call 41 generateTempName 0
	mov qword [rbp + 41], @2597$generateTempName$51
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2597$generateTempName

 @2597$generateTempName$51:
	; PostCall 41

 @2597$generateTempName$52:
	; GetReturnValue £temporary950

 @2597$generateTempName$53:
	; Assign result £temporary950
	mov [rbp + 41], rbx

 @2597$generateTempName$54:
	; Equal 56 result 0
	cmp qword [rbp + 41], 0
	je @2597$generateTempName$56

 @2597$generateTempName$55:
	; Return result
	mov rbx, [rbp + 41]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2597$generateTempName$56:
	; BinaryAdd c c 1
	inc byte [rbp + 40]

 @2597$generateTempName$57:
	; Goto 2
	jmp @2597$generateTempName$2

 @2597$generateTempName$58:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2597$generateTempName$59:
	; FunctionEnd generateTempName

section .data

string_w#:
	; Initializer String w
	db "w", 0

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
	jmp @2597$generateTempName

 tmpfile$5:
	; PostCall 36

 tmpfile$6:
	; GetReturnValue £temporary952

 tmpfile$7:
	; Equal 19 £temporary952 0
	cmp rbx, 0
	je tmpfile$19

 tmpfile$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpfile$9:
	; Parameter 60 pointer name
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

 tmpfile$10:
	; Parameter 68 pointer "w"
	mov qword [rbp + 68], string_w#

 tmpfile$11:
	; Call 36 fopen 0
	mov qword [rbp + 36], tmpfile$12
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fopen

 tmpfile$12:
	; PostCall 36

 tmpfile$13:
	; GetReturnValue £temporary953

 tmpfile$14:
	; Assign stream £temporary953
	mov [rbp + 24], rbx

 tmpfile$15:
	; Equal 19 stream 0
	cmp qword [rbp + 24], 0
	je tmpfile$19

 tmpfile$16:
	; Dereference £temporary957 -> stream stream 0
	mov rsi, [rbp + 24]

 tmpfile$17:
	; Assign £temporary957 -> stream 1
	mov dword [rsi + 37], 1

 tmpfile$18:
	; Return stream
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$19:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$20:
	; FunctionEnd tmpfile

section .text

 tmpnam:
	; SignedGreaterThanEqual 9 g_tempSize 16
	cmp dword [@2588$g_tempSize], 16
	jge tmpnam$9

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
	jmp @2597$generateTempName

 tmpnam$6:
	; PostCall 32

 tmpnam$7:
	; GetReturnValue £temporary959

 tmpnam$8:
	; Return £temporary959
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
