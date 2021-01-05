	global tmpfile
	global tmpnam

	extern strcmp
	extern fileexists
	extern strcpy
	extern fopen
	extern $StackTop


section .data

@3141$g_tempArray:
	; InitializerZero 64
	times 64 db 0

section .data

@3144$g_tempSize:
	; Initializer SignedInt 0
	dd 0

section .data

@3151$Array_4#:
	; Initializer Array 4
	dq 4

section .text

 @3146$existsTempName:
	; Assign index 0
	mov dword [rbp + 32], 0

 @3146$existsTempName$1:
	; SignedGreaterThanEqual 17 index g_tempSize
	mov eax, [@3144$g_tempSize]
	cmp [rbp + 32], eax
	jge @3146$existsTempName$17

 @3146$existsTempName$2:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3146$existsTempName$3:
	; Parameter 60 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 @3146$existsTempName$4:
	; IntegralToIntegral £temporary804 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @3146$existsTempName$5:
	; UnsignedMultiply £temporary805 £temporary804 4
	xor rdx, rdx
	mul qword [@3151$Array_4#]

 @3146$existsTempName$6:
	; BinaryAdd £temporary806 g_tempArray £temporary805
	mov rsi, @3141$g_tempArray
	add rsi, rax

 @3146$existsTempName$7:
	; Dereference £temporary803 -> £temporary806 £temporary806 0

 @3146$existsTempName$8:
	; Parameter 68 pointer £temporary803 -> £temporary806
	mov [rbp + 68], rsi

 @3146$existsTempName$9:
	; Call 36 strcmp 0
	mov qword [rbp + 36], @3146$existsTempName$10
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strcmp

 @3146$existsTempName$10:
	; PostCall 36

 @3146$existsTempName$11:
	; GetReturnValue £temporary807

 @3146$existsTempName$12:
	; NotEqual 15 £temporary807 0
	cmp ebx, 0
	jne @3146$existsTempName$15

 @3146$existsTempName$13:
	; SetReturnValue

 @3146$existsTempName$14:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3146$existsTempName$15:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 @3146$existsTempName$16:
	; Jump 1
	jmp @3146$existsTempName$1

 @3146$existsTempName$17:
	; SetReturnValue

 @3146$existsTempName$18:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3146$existsTempName$19:
	; FunctionEnd existsTempName

section .data

@3188$Array_4#:
	; Initializer Array 4
	dq 4

section .data

@3190$Array_4#:
	; Initializer Array 4
	dq 4

section .text

 @3165$generateTempName:
	; SignedGreaterThanEqual 61 size 3
	cmp dword [rbp + 32], 3
	jge @3165$generateTempName$61

 @3165$generateTempName$1:
	; Assign c 97
	mov byte [rbp + 40], 97

 @3165$generateTempName$2:
	; SignedGreaterThan 61 c 122
	cmp byte [rbp + 40], 122
	jg @3165$generateTempName$61

 @3165$generateTempName$3:
	; IntegralToIntegral £temporary813 size
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 @3165$generateTempName$4:
	; BinaryAdd £temporary815 name £temporary813
	mov rsi, [rbp + 24]
	add rsi, rax

 @3165$generateTempName$5:
	; Dereference £temporary812 -> £temporary815 £temporary815 0

 @3165$generateTempName$6:
	; Assign £temporary812 -> £temporary815 c
	mov al, [rbp + 40]
	mov [rsi], al

 @3165$generateTempName$7:
	; BinaryAdd £temporary816 size 1
	mov eax, [rbp + 32]
	inc eax

 @3165$generateTempName$8:
	; IntegralToIntegral £temporary818 £temporary816
	mov rbx, 4294967295
	and rax, rbx

 @3165$generateTempName$9:
	; BinaryAdd £temporary820 name £temporary818
	mov rsi, [rbp + 24]
	add rsi, rax

 @3165$generateTempName$10:
	; Dereference £temporary817 -> £temporary820 £temporary820 0

 @3165$generateTempName$11:
	; Assign £temporary817 -> £temporary820 0
	mov byte [rsi], 0

 @3165$generateTempName$12:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3165$generateTempName$13:
	; Parameter 65 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3165$generateTempName$14:
	; Call 41 fileexists 0
	mov qword [rbp + 41], @3165$generateTempName$15
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

 @3165$generateTempName$15:
	; PostCall 41

 @3165$generateTempName$16:
	; GetReturnValue £temporary821

 @3165$generateTempName$17:
	; NotEqual 47 £temporary821 0
	cmp ebx, 0
	jne @3165$generateTempName$47

 @3165$generateTempName$18:
	; Case 22 status 0
	mov eax, [rbp + 36]
	cmp eax, 0
	je @3165$generateTempName$22

 @3165$generateTempName$19:
	; Case 24 status 1
	cmp eax, 1
	je @3165$generateTempName$24

 @3165$generateTempName$20:
	; CaseEnd status

 @3165$generateTempName$21:
	; Jump 47
	jmp @3165$generateTempName$47

 @3165$generateTempName$22:
	; SetReturnValue

 @3165$generateTempName$23:
	; Return name
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3165$generateTempName$24:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3165$generateTempName$25:
	; Parameter 65 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3165$generateTempName$26:
	; Call 41 existsTempName 0
	mov qword [rbp + 41], @3165$generateTempName$27
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @3146$existsTempName

 @3165$generateTempName$27:
	; PostCall 41

 @3165$generateTempName$28:
	; GetReturnValue £temporary824

 @3165$generateTempName$29:
	; NotEqual 47 £temporary824 0
	cmp ebx, 0
	jne @3165$generateTempName$47

 @3165$generateTempName$30:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3165$generateTempName$31:
	; IntegralToIntegral £temporary828 g_tempSize
	mov eax, [@3144$g_tempSize]
	mov rbx, 4294967295
	and rax, rbx

 @3165$generateTempName$32:
	; UnsignedMultiply £temporary829 £temporary828 4
	xor rdx, rdx
	mul qword [@3188$Array_4#]

 @3165$generateTempName$33:
	; BinaryAdd £temporary830 g_tempArray £temporary829
	mov rsi, @3141$g_tempArray
	add rsi, rax

 @3165$generateTempName$34:
	; Dereference £temporary827 -> £temporary830 £temporary830 0

 @3165$generateTempName$35:
	; Parameter 65 pointer £temporary827 -> £temporary830
	mov [rbp + 65], rsi

 @3165$generateTempName$36:
	; Parameter 73 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 @3165$generateTempName$37:
	; Call 41 strcpy 0
	mov qword [rbp + 41], @3165$generateTempName$38
	mov [rbp + 49], rbp
	add rbp, 41
	jmp strcpy

 @3165$generateTempName$38:
	; PostCall 41

 @3165$generateTempName$39:
	; Assign £temporary832 g_tempSize
	mov eax, [@3144$g_tempSize]

 @3165$generateTempName$40:
	; BinaryAdd g_tempSize g_tempSize 1
	inc dword [@3144$g_tempSize]

 @3165$generateTempName$41:
	; IntegralToIntegral £temporary834 £temporary832
	mov rbx, 4294967295
	and rax, rbx

 @3165$generateTempName$42:
	; UnsignedMultiply £temporary835 £temporary834 4
	xor rdx, rdx
	mul qword [@3190$Array_4#]

 @3165$generateTempName$43:
	; BinaryAdd £temporary836 g_tempArray £temporary835
	mov rsi, @3141$g_tempArray
	add rsi, rax

 @3165$generateTempName$44:
	; Dereference £temporary833 -> £temporary836 £temporary836 0

 @3165$generateTempName$45:
	; SetReturnValue

 @3165$generateTempName$46:
	; Return £temporary833 -> £temporary836
	mov rbx, rsi
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3165$generateTempName$47:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3165$generateTempName$48:
	; Parameter 65 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 65], rax

 @3165$generateTempName$49:
	; BinaryAdd £temporary837 size 1
	mov eax, [rbp + 32]
	inc eax

 @3165$generateTempName$50:
	; Parameter 73 signedint £temporary837
	mov [rbp + 73], eax

 @3165$generateTempName$51:
	; Parameter 77 signedint status
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

 @3165$generateTempName$52:
	; Call 41 generateTempName 0
	mov qword [rbp + 41], @3165$generateTempName$53
	mov [rbp + 49], rbp
	add rbp, 41
	jmp @3165$generateTempName

 @3165$generateTempName$53:
	; PostCall 41

 @3165$generateTempName$54:
	; GetReturnValue £temporary838

 @3165$generateTempName$55:
	; Assign result £temporary838
	mov [rbp + 41], rbx

 @3165$generateTempName$56:
	; Equal 59 result 0
	cmp qword [rbp + 41], 0
	je @3165$generateTempName$59

 @3165$generateTempName$57:
	; SetReturnValue

 @3165$generateTempName$58:
	; Return result
	mov rbx, [rbp + 41]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3165$generateTempName$59:
	; BinaryAdd c c 1
	inc byte [rbp + 40]

 @3165$generateTempName$60:
	; Jump 2
	jmp @3165$generateTempName$2

 @3165$generateTempName$61:
	; SetReturnValue

 @3165$generateTempName$62:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3165$generateTempName$63:
	; FunctionEnd generateTempName

section .data

@3218$string_w#:
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
	jmp @3165$generateTempName

 tmpfile$5:
	; PostCall 36

 tmpfile$6:
	; GetReturnValue £temporary840

 tmpfile$7:
	; Equal 20 £temporary840 0
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
	mov qword [rbp + 68], @3218$string_w#

 tmpfile$11:
	; Call 36 fopen 0
	mov qword [rbp + 36], tmpfile$12
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fopen

 tmpfile$12:
	; PostCall 36

 tmpfile$13:
	; GetReturnValue £temporary841

 tmpfile$14:
	; Assign stream £temporary841
	mov [rbp + 24], rbx

 tmpfile$15:
	; Equal 20 stream 0
	cmp qword [rbp + 24], 0
	je tmpfile$20

 tmpfile$16:
	; Dereference £temporary845 -> stream stream 0
	mov rsi, [rbp + 24]

 tmpfile$17:
	; Assign £temporary845 -> stream 1
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
	cmp dword [@3144$g_tempSize], 16
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
	jmp @3165$generateTempName

 tmpnam$6:
	; PostCall 32

 tmpnam$7:
	; GetReturnValue £temporary847

 tmpnam$8:
	; SetReturnValue

 tmpnam$9:
	; Return £temporary847
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
