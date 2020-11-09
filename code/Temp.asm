	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
	extern $StackTop


section .data

@2590$g_tempArray:
	; InitializerZero 64
	times 64 db 0

section .data

@2591$g_tempSize:
	; Initializer SignedInt 0
	dd 0

section .data

Array_4#:
	; Initializer Array 4
	dq 4

section .text

 @2593$existsTempName:
	; Assign index 0
	mov dword [rbp + 32], 0

 @2593$existsTempName$1:
	; SignedGreaterThanEqual 16 index g_tempSize
	mov eax, [@2591$g_tempSize]
	cmp [rbp + 32], eax
	jge @2593$existsTempName$16

 @2593$existsTempName$2:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2593$existsTempName$3:
	; Parameter pointer name 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 @2593$existsTempName$4:
	; IntegralToIntegral £temporary918 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @2593$existsTempName$5:
	; UnsignedMultiply £temporary919 £temporary918 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2593$existsTempName$6:
	; BinaryAdd £temporary920 g_tempArray £temporary919
	mov rsi, @2590$g_tempArray
	add rsi, rax

 @2593$existsTempName$7:
	; Dereference £temporary917 -> £temporary920 £temporary920 0

 @2593$existsTempName$8:
	; Parameter pointer £temporary917 -> £temporary920 68
	mov [rbp + 68], rsi

 @2593$existsTempName$9:
	; Call strcmp 36 0
	mov qword [rbp + 36], @2593$existsTempName$10
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

 @2593$existsTempName$10:
	; PostCall 36

 @2593$existsTempName$11:
	; GetReturnValue £temporary921

 @2593$existsTempName$12:
	; NotEqual 14 £temporary921 0
	cmp ebx, 0
	jne @2593$existsTempName$14

 @2593$existsTempName$13:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2593$existsTempName$14:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 @2593$existsTempName$15:
	; Goto 1
	jmp @2593$existsTempName$1

 @2593$existsTempName$16:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2593$existsTempName$17:
	; FunctionEnd existsTempName

section .text

 @2600$generateTempName:
	; SignedGreaterThanEqual 58 size 5
	cmp dword [rbp + 32], 5
	jge @2600$generateTempName$58

 @2600$generateTempName$1:
	; Assign c 97
	mov byte [rbp + 40], 97

 @2600$generateTempName$2:
	; SignedGreaterThan 58 c 122
	cmp byte [rbp + 40], 122
	jg @2600$generateTempName$58

 @2600$generateTempName$3:
	; IntegralToIntegral £temporary927 size
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @2600$generateTempName$4:
	; BinaryAdd £temporary929 name £temporary927
	mov rsi, [rbp + 24]
	add rsi, rax

 @2600$generateTempName$5:
	; Dereference £temporary926 -> £temporary929 £temporary929 0

 @2600$generateTempName$6:
	; Assign £temporary926 -> £temporary929 c
	mov al, [rbp + 40]
	mov [rsi], al

 @2600$generateTempName$7:
	; BinaryAdd £temporary930 size 1
	mov eax, [rbp + 32]
	inc eax

 @2600$generateTempName$8:
	; IntegralToIntegral £temporary932 £temporary930
	mov rbx, 4294967295
	and rax, rbx

 @2600$generateTempName$9:
	; BinaryAdd £temporary934 name £temporary932
	mov rsi, [rbp + 24]
	add rsi, rax

 @2600$generateTempName$10:
	; Dereference £temporary931 -> £temporary934 £temporary934 0

 @2600$generateTempName$11:
	; Assign £temporary931 -> £temporary934 0
	mov byte [rsi], 0

 @2600$generateTempName$12:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2600$generateTempName$13:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2600$generateTempName$14:
	; Call fileexists 41 0
	mov qword [rbp + 41], @2600$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

 @2600$generateTempName$15:
	; PostCall 41

 @2600$generateTempName$16:
	; GetReturnValue £temporary935

 @2600$generateTempName$17:
	; NotEqual 45 £temporary935 0
	cmp ebx, 0
	jne @2600$generateTempName$45

 @2600$generateTempName$18:
	; Case 22 status 0
	mov eax, [rbp + 36]
	cmp eax, 0
	je @2600$generateTempName$22

 @2600$generateTempName$19:
	; Case 23 status 1
	cmp eax, 1
	je @2600$generateTempName$23

 @2600$generateTempName$20:
	; CaseEnd status

 @2600$generateTempName$21:
	; Goto 45
	jmp @2600$generateTempName$45

 @2600$generateTempName$22:
	; Return name
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2600$generateTempName$23:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2600$generateTempName$24:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2600$generateTempName$25:
	; Call existsTempName 41 0
	mov qword [rbp + 41], @2600$generateTempName$26
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2593$existsTempName

 @2600$generateTempName$26:
	; PostCall 41

 @2600$generateTempName$27:
	; GetReturnValue £temporary938

 @2600$generateTempName$28:
	; NotEqual 45 £temporary938 0
	cmp ebx, 0
	jne @2600$generateTempName$45

 @2600$generateTempName$29:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2600$generateTempName$30:
	; IntegralToIntegral £temporary942 g_tempSize
	mov eax, [@2591$g_tempSize]
	mov rbx, 4294967295
	and rax, rbx

 @2600$generateTempName$31:
	; UnsignedMultiply £temporary943 £temporary942 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2600$generateTempName$32:
	; BinaryAdd £temporary944 g_tempArray £temporary943
	mov rsi, @2590$g_tempArray
	add rsi, rax

 @2600$generateTempName$33:
	; Dereference £temporary941 -> £temporary944 £temporary944 0

 @2600$generateTempName$34:
	; Parameter pointer £temporary941 -> £temporary944 65
	mov [rbp + 65], rsi

 @2600$generateTempName$35:
	; Parameter pointer name 73
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 @2600$generateTempName$36:
	; Call strcpy 41 0
	mov qword [rbp + 41], @2600$generateTempName$37
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

 @2600$generateTempName$37:
	; PostCall 41

 @2600$generateTempName$38:
	; Assign £temporary946 g_tempSize
	mov eax, [@2591$g_tempSize]

 @2600$generateTempName$39:
	; BinaryAdd g_tempSize g_tempSize 1
	inc dword [@2591$g_tempSize]

 @2600$generateTempName$40:
	; IntegralToIntegral £temporary948 £temporary946
	mov rbx, 4294967295
	and rax, rbx

 @2600$generateTempName$41:
	; UnsignedMultiply £temporary949 £temporary948 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2600$generateTempName$42:
	; BinaryAdd £temporary950 g_tempArray £temporary949
	mov rsi, @2590$g_tempArray
	add rsi, rax

 @2600$generateTempName$43:
	; Dereference £temporary947 -> £temporary950 £temporary950 0

 @2600$generateTempName$44:
	; Return £temporary947 -> £temporary950
	mov rbx, rsi
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2600$generateTempName$45:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2600$generateTempName$46:
	; Parameter pointer name 65
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2600$generateTempName$47:
	; BinaryAdd £temporary951 size 1
	mov eax, [rbp + 32]
	inc eax

 @2600$generateTempName$48:
	; Parameter signedint £temporary951 73
	mov [rbp + 73], eax

 @2600$generateTempName$49:
	; Parameter signedint status 77
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

 @2600$generateTempName$50:
	; Call generateTempName 41 0
	mov qword [rbp + 41], @2600$generateTempName$51
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2600$generateTempName

 @2600$generateTempName$51:
	; PostCall 41

 @2600$generateTempName$52:
	; GetReturnValue £temporary952

 @2600$generateTempName$53:
	; Assign result £temporary952
	mov [rbp + 41], rbx

 @2600$generateTempName$54:
	; Equal 56 result 0
	cmp qword [rbp + 41], 0
	je @2600$generateTempName$56

 @2600$generateTempName$55:
	; Return result
	mov rbx, [rbp + 41]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2600$generateTempName$56:
	; BinaryAdd c c 1
	inc byte [rbp + 40]

 @2600$generateTempName$57:
	; Goto 2
	jmp @2600$generateTempName$2

 @2600$generateTempName$58:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2600$generateTempName$59:
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
	jmp @2600$generateTempName

 tmpfile$5:
	; PostCall 36

 tmpfile$6:
	; GetReturnValue £temporary954

 tmpfile$7:
	; Equal 19 £temporary954 0
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
	; GetReturnValue £temporary955

 tmpfile$14:
	; Assign stream £temporary955
	mov [rbp + 24], rbx

 tmpfile$15:
	; Equal 19 stream 0
	cmp qword [rbp + 24], 0
	je tmpfile$19

 tmpfile$16:
	; Dereference £temporary959 -> stream stream 0
	mov rsi, [rbp + 24]

 tmpfile$17:
	; Assign £temporary959 -> stream 1
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
	cmp dword [@2591$g_tempSize], 16
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
	jmp @2600$generateTempName

 tmpnam$6:
	; PostCall 32

 tmpnam$7:
	; GetReturnValue £temporary961

 tmpnam$8:
	; Return £temporary961
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
