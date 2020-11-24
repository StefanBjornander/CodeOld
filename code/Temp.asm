	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern fopen
	extern $StackTop


section .data

@2597$g_tempArray:
	; InitializerZero 64
	times 64 db 0

section .data

@2598$g_tempSize:
	; Initializer SignedInt 0
	dd 0

section .data

Array_4#:
	; Initializer Array 4
	dq 4

section .text

 @2600$existsTempName:
	; Assign index 0
	mov dword [rbp + 32], 0

 @2600$existsTempName$1:
	; SignedGreaterThanEqual 17 index g_tempSize
	mov eax, [@2598$g_tempSize]
	cmp [rbp + 32], eax
	jge @2600$existsTempName$17

 @2600$existsTempName$2:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2600$existsTempName$3:
	; Parameter 60 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 @2600$existsTempName$4:
	; IntegralToIntegral £temporary929 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @2600$existsTempName$5:
	; UnsignedMultiply £temporary930 £temporary929 4
	xor rdx, rdx
	mul qword [Array_4#]

 @2600$existsTempName$6:
	; BinaryAdd £temporary931 g_tempArray £temporary930
	mov rsi, @2597$g_tempArray
	add rsi, rax

 @2600$existsTempName$7:
	; Dereference £temporary928 -> £temporary931 £temporary931 0

 @2600$existsTempName$8:
	; Parameter 68 pointer £temporary928 -> £temporary931
	mov [rbp + 68], rsi

 @2600$existsTempName$9:
	; Call 36 strcmp 0
	mov qword [rbp + 36], @2600$existsTempName$10
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

 @2600$existsTempName$10:
	; PostCall 36

 @2600$existsTempName$11:
	; GetReturnValue £temporary932

 @2600$existsTempName$12:
	; NotEqual 15 £temporary932 0
	cmp ebx, 0
	jne @2600$existsTempName$15

 @2600$existsTempName$13:
	; SetReturnValue

 @2600$existsTempName$14:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2600$existsTempName$15:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 @2600$existsTempName$16:
	; Goto 1
	jmp @2600$existsTempName$1

 @2600$existsTempName$17:
	; SetReturnValue

 @2600$existsTempName$18:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2600$existsTempName$19:
	; FunctionEnd existsTempName

section .text

 @2607$generateTempName:
	; SignedGreaterThanEqual 38 size 3
	cmp dword [rbp + 32], 3
	jge @2607$generateTempName$38

 @2607$generateTempName$1:
	; Assign c 97
	mov byte [rbp + 40], 97

 @2607$generateTempName$2:
	; SignedGreaterThan 38 c 122
	cmp byte [rbp + 40], 122
	jg @2607$generateTempName$38

 @2607$generateTempName$3:
	; IntegralToIntegral £temporary938 size
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @2607$generateTempName$4:
	; BinaryAdd £temporary940 name £temporary938
	mov rsi, [rbp + 24]
	add rsi, rax

 @2607$generateTempName$5:
	; Dereference £temporary937 -> £temporary940 £temporary940 0

 @2607$generateTempName$6:
	; Assign £temporary937 -> £temporary940 c
	mov al, [rbp + 40]
	mov [rsi], al

 @2607$generateTempName$7:
	; BinaryAdd £temporary941 size 1
	mov eax, [rbp + 32]
	inc eax

 @2607$generateTempName$8:
	; IntegralToIntegral £temporary943 £temporary941
	mov rbx, 4294967295
	and rax, rbx

 @2607$generateTempName$9:
	; BinaryAdd £temporary945 name £temporary943
	mov rsi, [rbp + 24]
	add rsi, rax

 @2607$generateTempName$10:
	; Dereference £temporary942 -> £temporary945 £temporary945 0

 @2607$generateTempName$11:
	; Assign £temporary942 -> £temporary945 0
	mov byte [rsi], 0

 @2607$generateTempName$12:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2607$generateTempName$13:
	; Parameter 65 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2607$generateTempName$14:
	; Call 41 fileexists 0
	mov qword [rbp + 41], @2607$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

 @2607$generateTempName$15:
	; PostCall 41

 @2607$generateTempName$16:
	; GetReturnValue £temporary946

 @2607$generateTempName$17:
	; NotEqual 24 £temporary946 0
	cmp ebx, 0
	jne @2607$generateTempName$24

 @2607$generateTempName$18:
	; Case 22 status 0
	mov eax, [rbp + 36]
	cmp eax, 0
	je @2607$generateTempName$22

 @2607$generateTempName$19:
	; Case 24 status 1
	cmp eax, 1
	je @2607$generateTempName$24

 @2607$generateTempName$20:
	; CaseEnd status

 @2607$generateTempName$21:
	; Goto 24
	jmp @2607$generateTempName$24

 @2607$generateTempName$22:
	; SetReturnValue

 @2607$generateTempName$23:
	; Return name
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2607$generateTempName$24:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2607$generateTempName$25:
	; Parameter 65 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @2607$generateTempName$26:
	; BinaryAdd £temporary949 size 1
	mov eax, [rbp + 32]
	inc eax

 @2607$generateTempName$27:
	; Parameter 73 signedint £temporary949
	mov [rbp + 73], eax

 @2607$generateTempName$28:
	; Parameter 77 signedint status
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

 @2607$generateTempName$29:
	; Call 41 generateTempName 0
	mov qword [rbp + 41], @2607$generateTempName$30
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @2607$generateTempName

 @2607$generateTempName$30:
	; PostCall 41

 @2607$generateTempName$31:
	; GetReturnValue £temporary950

 @2607$generateTempName$32:
	; Assign result £temporary950
	mov [rbp + 41], rbx

 @2607$generateTempName$33:
	; Equal 36 result 0
	cmp qword [rbp + 41], 0
	je @2607$generateTempName$36

 @2607$generateTempName$34:
	; SetReturnValue

 @2607$generateTempName$35:
	; Return result
	mov rbx, [rbp + 41]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2607$generateTempName$36:
	; BinaryAdd c c 1
	inc byte [rbp + 40]

 @2607$generateTempName$37:
	; Goto 2
	jmp @2607$generateTempName$2

 @2607$generateTempName$38:
	; SetReturnValue

 @2607$generateTempName$39:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2607$generateTempName$40:
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
	jmp @2607$generateTempName

 tmpfile$5:
	; PostCall 36

 tmpfile$6:
	; GetReturnValue £temporary952

 tmpfile$7:
	; Equal 20 £temporary952 0
	cmp rbx, 0
	je tmpfile$20

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
	; Equal 20 stream 0
	cmp qword [rbp + 24], 0
	je tmpfile$20

 tmpfile$16:
	; Dereference £temporary957 -> stream stream 0
	mov rsi, [rbp + 24]

 tmpfile$17:
	; Assign £temporary957 -> stream 1
	mov dword [rsi + 37], 1

 tmpfile$18:
	; SetReturnValue

 tmpfile$19:
	; Return stream
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$20:
	; SetReturnValue

 tmpfile$21:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$22:
	; FunctionEnd tmpfile

section .text

 tmpnam:
	; SignedGreaterThanEqual 10 g_tempSize 16
	cmp dword [@2598$g_tempSize], 16
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
	jmp @2607$generateTempName

 tmpnam$6:
	; PostCall 32

 tmpnam$7:
	; GetReturnValue £temporary959

 tmpnam$8:
	; SetReturnValue

 tmpnam$9:
	; Return £temporary959
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
