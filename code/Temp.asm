	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
	extern $StackTop


section .data

@2593$g_tempArray:
	; InitializerZero 64
	times 64 db 0

section .data

@2594$g_tempSize:
	; Initializer SignedInt 0
	dd 0

section .data

Array_4#:
	; Initializer Array 4
	dq 4

section .text

 @2596$existsTempName:
	; Assign index 0
	mov dword [rbp + 32], 0

 @2596$existsTempName$1:
	; SignedGreaterThanEqual 16 index g_tempSize
	mov eax, [@2594$g_tempSize]
	cmp [rbp + 32], eax
	jge @2596$existsTempName$16

 @2596$existsTempName$2:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2596$existsTempName$3:
	; Parameter pointer name 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 @2596$existsTempName$4:
	; IntegralToIntegral £temporary915 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @2596$existsTempName$5:
	; UnsignedMultiply £temporary916 £temporary915 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2596$existsTempName$6:
	; BinaryAdd £temporary917 g_tempArray £temporary916
	mov rsi, @2593$g_tempArray
	add rsi, rax

 @2596$existsTempName$7:
	; Dereference £temporary914 -> £temporary917 £temporary917 0

 @2596$existsTempName$8:
	; Parameter pointer £temporary914 -> £temporary917 68
	mov [rbp + 68], rsi

 @2596$existsTempName$9:
	; Call strcmp 36 0
	mov qword [rbp + 36], @2596$existsTempName$10
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

 @2596$existsTempName$10:
	; PostCall 36

 @2596$existsTempName$11:
	; GetReturnValue £temporary918

 @2596$existsTempName$12:
	; NotEqual 14 £temporary918 0
	cmp ebx, 0
	jne @2596$existsTempName$14

 @2596$existsTempName$13:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2596$existsTempName$14:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 @2596$existsTempName$15:
	; Goto 1
	jmp @2596$existsTempName$1

 @2596$existsTempName$16:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2596$existsTempName$17:
	; FunctionEnd existsTempName

section .text

 @2603$generateTempName:
	; SignedGreaterThanEqual 58 size 5
	cmp dword [rbp + 32], 5
	jge @2603$generateTempName$58

 @2603$generateTempName$1:
	; Assign c 97
	mov byte [rbp + 40], 97

 @2603$generateTempName$2:
	; SignedGreaterThan 58 c 122
	cmp byte [rbp + 40], 122
	jg @2603$generateTempName$58

 @2603$generateTempName$3:
	; IntegralToIntegral £temporary924 size
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @2603$generateTempName$4:
	; BinaryAdd £temporary926 name £temporary924
	mov rsi, [rbp + 24]
	add rsi, rax

 @2603$generateTempName$5:
	; Dereference £temporary923 -> £temporary926 £temporary926 0

 @2603$generateTempName$6:
	; Assign £temporary923 -> £temporary926 c
	mov al, [rbp + 40]
	mov [rsi], al

 @2603$generateTempName$7:
	; BinaryAdd £temporary927 size 1
	mov eax, [rbp + 32]
	inc eax

 @2603$generateTempName$8:
	; IntegralToIntegral £temporary929 £temporary927
	mov rbx, 4294967295
	and rax, rbx

 @2603$generateTempName$9:
	; BinaryAdd £temporary931 name £temporary929
	mov rsi, [rbp + 24]
	add rsi, rax

 @2603$generateTempName$10:
	; Dereference £temporary928 -> £temporary931 £temporary931 0

 @2603$generateTempName$11:
	; Assign £temporary928 -> £temporary931 0
	mov byte [rsi], 0

 @2603$generateTempName$12:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2603$generateTempName$13:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2603$generateTempName$14:
	; Call fileexists 41 0
	mov qword [rbp + 41], @2603$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

 @2603$generateTempName$15:
	; PostCall 41

 @2603$generateTempName$16:
	; GetReturnValue £temporary932

 @2603$generateTempName$17:
	; NotEqual 45 £temporary932 0
	cmp ebx, 0
	jne @2603$generateTempName$45

 @2603$generateTempName$18:
	; Case 22 status 0
	mov eax, [rbp + 36]
	cmp eax, 0
	je @2603$generateTempName$22

 @2603$generateTempName$19:
	; Case 23 status 1
	cmp eax, 1
	je @2603$generateTempName$23

 @2603$generateTempName$20:
	; CaseEnd status

 @2603$generateTempName$21:
	; Goto 45
	jmp @2603$generateTempName$45

 @2603$generateTempName$22:
	; Return name
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2603$generateTempName$23:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2603$generateTempName$24:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2603$generateTempName$25:
	; Call existsTempName 41 0
	mov qword [rbp + 41], @2603$generateTempName$26
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2596$existsTempName

 @2603$generateTempName$26:
	; PostCall 41

 @2603$generateTempName$27:
	; GetReturnValue £temporary935

 @2603$generateTempName$28:
	; NotEqual 45 £temporary935 0
	cmp ebx, 0
	jne @2603$generateTempName$45

 @2603$generateTempName$29:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2603$generateTempName$30:
	; IntegralToIntegral £temporary939 g_tempSize
	mov eax, [@2594$g_tempSize]
	mov rbx, 4294967295
	and rax, rbx

 @2603$generateTempName$31:
	; UnsignedMultiply £temporary940 £temporary939 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2603$generateTempName$32:
	; BinaryAdd £temporary941 g_tempArray £temporary940
	mov rsi, @2593$g_tempArray
	add rsi, rax

 @2603$generateTempName$33:
	; Dereference £temporary938 -> £temporary941 £temporary941 0

 @2603$generateTempName$34:
	; Parameter pointer £temporary938 -> £temporary941 65
	mov [rbp + 65], rsi

 @2603$generateTempName$35:
	; Parameter pointer name 73
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 @2603$generateTempName$36:
	; Call strcpy 41 0
	mov qword [rbp + 41], @2603$generateTempName$37
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

 @2603$generateTempName$37:
	; PostCall 41

 @2603$generateTempName$38:
	; Assign £temporary943 g_tempSize
	mov eax, [@2594$g_tempSize]

 @2603$generateTempName$39:
	; BinaryAdd g_tempSize g_tempSize 1
	inc dword [@2594$g_tempSize]

 @2603$generateTempName$40:
	; IntegralToIntegral £temporary945 £temporary943
	mov rbx, 4294967295
	and rax, rbx

 @2603$generateTempName$41:
	; UnsignedMultiply £temporary946 £temporary945 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2603$generateTempName$42:
	; BinaryAdd £temporary947 g_tempArray £temporary946
	mov rsi, @2593$g_tempArray
	add rsi, rax

 @2603$generateTempName$43:
	; Dereference £temporary944 -> £temporary947 £temporary947 0

 @2603$generateTempName$44:
	; Return £temporary944 -> £temporary947
	mov rbx, rsi
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2603$generateTempName$45:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2603$generateTempName$46:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2603$generateTempName$47:
	; BinaryAdd £temporary948 size 1
	mov eax, [rbp + 32]
	inc eax

 @2603$generateTempName$48:
	; Parameter signedint £temporary948 73
	mov [rbp + 73], eax

 @2603$generateTempName$49:
	; Parameter signedint status 77
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

 @2603$generateTempName$50:
	; Call generateTempName 41 0
	mov qword [rbp + 41], @2603$generateTempName$51
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2603$generateTempName

 @2603$generateTempName$51:
	; PostCall 41

 @2603$generateTempName$52:
	; GetReturnValue £temporary949

 @2603$generateTempName$53:
	; Assign result £temporary949
	mov [rbp + 41], rbx

 @2603$generateTempName$54:
	; Equal 56 result 0
	cmp qword [rbp + 41], 0
	je @2603$generateTempName$56

 @2603$generateTempName$55:
	; Return result
	mov rbx, [rbp + 41]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2603$generateTempName$56:
	; BinaryAdd c c 1
	inc byte [rbp + 40]

 @2603$generateTempName$57:
	; Goto 2
	jmp @2603$generateTempName$2

 @2603$generateTempName$58:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2603$generateTempName$59:
	; FunctionEnd generateTempName

section .data

string_w#:
	; Initializer String w
	db "w", 0

section .text

 tmpfile:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpfile$1:
	; Parameter pointer name 60
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

 tmpfile$2:
	; Parameter signedint 0 68
	mov dword [rbp + 68], 0

 tmpfile$3:
	; Parameter signedint 0 72
	mov dword [rbp + 72], 0

 tmpfile$4:
	; Call generateTempName 36 0
	mov qword [rbp + 36], tmpfile$5
	mov [rbp + 44], rbp
	add rbp, 36
	jmp @2603$generateTempName

 tmpfile$5:
	; PostCall 36

 tmpfile$6:
	; GetReturnValue £temporary951

 tmpfile$7:
	; Equal 19 £temporary951 0
	cmp rbx, 0
	je tmpfile$19

 tmpfile$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpfile$9:
	; Parameter pointer name 60
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

 tmpfile$10:
	; Parameter pointer "w" 68
	mov qword [rbp + 68], string_w#

 tmpfile$11:
	; Call fopen 36 0
	mov qword [rbp + 36], tmpfile$12
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fopen

 tmpfile$12:
	; PostCall 36

 tmpfile$13:
	; GetReturnValue £temporary952

 tmpfile$14:
	; Assign stream £temporary952
	mov [rbp + 24], rbx

 tmpfile$15:
	; Equal 19 stream 0
	cmp qword [rbp + 24], 0
	je tmpfile$19

 tmpfile$16:
	; Dereference £temporary956 -> stream stream 0
	mov rsi, [rbp + 24]

 tmpfile$17:
	; Assign £temporary956 -> stream 1
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
	cmp dword [@2594$g_tempSize], 16
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
	jmp @2603$generateTempName

 tmpnam$6:
	; PostCall 32

 tmpnam$7:
	; GetReturnValue £temporary958

 tmpnam$8:
	; Return £temporary958
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
