	global g_fileArray
	global stdin
	global stdout
	global stderr
	global filecreate
	global fileexistsX
	global fileexists
	global fopen
	global freopen
	global fflush
	global fclose
	global remove
	global rename
	global setvbuf
	global setbuf
	global fgetc
	global fgets
	global fputs
	global getchar
	global gets
	global puts
	global ungetc
	global fread
	global fwrite
	global fseek
	global ftell
	global rewind
	global fgetpos
	global fsetpos
	global clearerr
	global feof
	global ferror
	global perror

	extern printf
	extern strcmp
	extern strcpy
	extern errno
	extern fscanf
	extern strlen
	extern fputc
	extern strerror
	extern $StackTop


section .data

g_fileArray:
	; Initializer SignedInt 1
	dd 1
	; Initializer Unsigned_Int 0
	dd 0
	; InitializerZero 33
	times 33 db 0
	; Initializer SignedInt 1
	dd 1
	; Initializer Unsigned_Int 1
	dd 1
	; InitializerZero 33
	times 33 db 0
	; Initializer SignedInt 1
	dd 1
	; Initializer Unsigned_Int 2
	dd 2
	; InitializerZero 33
	times 33 db 0
	; InitializerZero 697
	times 697 db 0

section .data

stdin:
	; Initializer Pointer g_fileArray
	dq g_fileArray

section .data

stdout:
	; Initializer Pointer g_fileArray + 41
	dq g_fileArray + 41

section .data

stderr:
	; Initializer Pointer g_fileArray + 82
	dq g_fileArray + 82

section .data

@2326$EEXIST:
	; Initializer SignedInt 0
	dd 0

section .data

@2327$ENOENT:
	; Initializer SignedInt 1
	dd 1

section .data

@2328$EACCES:
	; Initializer SignedInt 2
	dd 2

section .data

@2329$SEEK_SET:
	; Initializer SignedInt 0
	dd 0

section .data

@2330$SEEK_CUR:
	; Initializer SignedInt 1
	dd 1

section .data

@2331$SEEK_END:
	; Initializer SignedInt 2
	dd 2

section .data

@2332$READ:
	; Initializer SignedInt 0
	dd 0

section .data

@2333$WRITE:
	; Initializer SignedInt 1
	dd 1

section .data

@2334$READ_WRITE:
	; Initializer SignedInt 3
	dd 3

section .text

 filecreate:
	; AssignRegister rax 85
	mov rax, 85

 filecreate$1:
	; IntegralToIntegral £temporary580 name
	mov rdi, [rbp + 24]

 filecreate$2:
	; AssignRegister rdi £temporary580

 filecreate$3:
	; AssignRegister rsi 511
	mov rsi, 511

 filecreate$4:
	; SysCall
	syscall

 filecreate$5:
	; InspectRegister £temporary582 eax

 filecreate$6:
	; SetReturnValue

 filecreate$7:
	; Return £temporary582
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 filecreate$8:
	; FunctionEnd filecreate

section .data

@2552$string_r#:
	; Initializer String r
	db "r", 0

section .data

@2554$string_0Afileexists2025s2025p0A#:
	; Initializer String \nfileexists %s %p\n
	db 10, "fileexists %s %p", 10, 0

section .text

 fileexistsX:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fileexistsX$1:
	; Parameter 56 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 fileexistsX$2:
	; Parameter 64 pointer "r"
	mov qword [rbp + 64], @2552$string_r#

 fileexistsX$3:
	; Call 32 fopen 0
	mov qword [rbp + 32], fileexistsX$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 fileexistsX$4:
	; PostCall 32

 fileexistsX$5:
	; GetReturnValue £temporary583

 fileexistsX$6:
	; Assign filePtr £temporary583
	mov [rbp + 32], rbx

 fileexistsX$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fileexistsX$8:
	; Parameter 64 pointer "\nfileexists %s %p\n"
	mov qword [rbp + 64], @2554$string_0Afileexists2025s2025p0A#

 fileexistsX$9:
	; Parameter 72 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 fileexistsX$10:
	; Parameter 80 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 fileexistsX$11:
	; Call 40 printf 16
	mov qword [rbp + 40], fileexistsX$12
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 fileexistsX$12:
	; PostCall 40

 fileexistsX$13:
	; Equal 20 filePtr 0
	cmp qword [rbp + 32], 0
	je fileexistsX$20

 fileexistsX$14:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fileexistsX$15:
	; Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 fileexistsX$16:
	; Call 40 fclose 0
	mov qword [rbp + 40], fileexistsX$17
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 fileexistsX$17:
	; PostCall 40

 fileexistsX$18:
	; SetReturnValue

 fileexistsX$19:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexistsX$20:
	; SetReturnValue

 fileexistsX$21:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexistsX$22:
	; FunctionEnd fileexistsX

section .text

 fileexists:
	; AssignRegister rax 21
	mov rax, 21

 fileexists$1:
	; IntegralToIntegral £temporary589 name
	mov rdi, [rbp + 24]

 fileexists$2:
	; AssignRegister rdi £temporary589

 fileexists$3:
	; AssignRegister rsi 0
	mov rsi, 0

 fileexists$4:
	; SysCall
	syscall

 fileexists$5:
	; InspectRegister £temporary591 eax

 fileexists$6:
	; NotEqual 9 £temporary591 0
	cmp eax, 0
	jne fileexists$9

 fileexists$7:
	; Assign £temporary593 1
	mov ebx, 1

 fileexists$8:
	; Jump 10
	jmp fileexists$10

 fileexists$9:
	; Assign £temporary593 0
	mov ebx, 0

 fileexists$10:
	; SetReturnValue

 fileexists$11:
	; Return £temporary593
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexists$12:
	; FunctionEnd fileexists

section .text

 @2579$fileopen:
	; AssignRegister rax 2
	mov rax, 2

 @2579$fileopen$1:
	; IntegralToIntegral £temporary596 name
	mov rdi, [rbp + 24]

 @2579$fileopen$2:
	; AssignRegister rdi £temporary596

 @2579$fileopen$3:
	; IntegralToIntegral £temporary598 mode
	mov si, [rbp + 32]
	mov rbx, 65535
	and rsi, rbx

 @2579$fileopen$4:
	; AssignRegister rsi £temporary598

 @2579$fileopen$5:
	; SysCall
	syscall

 @2579$fileopen$6:
	; InspectRegister £temporary599 eax

 @2579$fileopen$7:
	; SetReturnValue

 @2579$fileopen$8:
	; Return £temporary599
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2579$fileopen$9:
	; FunctionEnd fileopen

section .data

@2591$int4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2595$int4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fopen:
	; Assign index 0
	mov dword [rbp + 40], 0

 fopen$1:
	; GreaterThanEqual 23 index 20
	cmp dword [rbp + 40], 20
	jge fopen$23

 fopen$2:
	; Multiply £temporary603 index 41
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@2591$int4$41#]

 fopen$3:
	; IntegralToIntegral £temporary604 £temporary603
	mov rbx, 4294967295
	and rax, rbx

 fopen$4:
	; BinaryAdd £temporary605 g_fileArray £temporary604
	mov rsi, g_fileArray
	add rsi, rax

 fopen$5:
	; Dereference £temporary602 -> £temporary605 £temporary605 0

 fopen$6:
	; NotEqual 21 £temporary602.open -> £temporary605 0
	cmp dword [rsi], 0
	jne fopen$21

 fopen$7:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fopen$8:
	; Parameter 68 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fopen$9:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 fopen$10:
	; Multiply £temporary609 index 41
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@2595$int4$41#]

 fopen$11:
	; IntegralToIntegral £temporary610 £temporary609
	mov rbx, 4294967295
	and rax, rbx

 fopen$12:
	; BinaryAdd £temporary611 g_fileArray £temporary610
	mov rsi, g_fileArray
	add rsi, rax

 fopen$13:
	; Dereference £temporary608 -> £temporary611 £temporary611 0

 fopen$14:
	; Address £temporary612 £temporary608 -> £temporary611

 fopen$15:
	; Parameter 84 pointer £temporary612
	mov [rbp + 84], rsi

 fopen$16:
	; Call 44 freopen 0
	mov qword [rbp + 44], fopen$17
	mov [rbp + 52], rbp
	add rbp, 44
	jmp freopen

 fopen$17:
	; PostCall 44

 fopen$18:
	; GetReturnValue £temporary613

 fopen$19:
	; SetReturnValue

 fopen$20:
	; Return £temporary613
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$21:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 fopen$22:
	; Jump 1
	jmp fopen$1

 fopen$23:
	; SetReturnValue

 fopen$24:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$25:
	; FunctionEnd fopen

section .data

@2608$string_r#:
	; Initializer String r
	db "r", 0

section .data

@2614$string_w#:
	; Initializer String w
	db "w", 0

section .data

@2617$string_a#:
	; Initializer String a
	db "a", 0

section .data

@2631$string_r2B#:
	; Initializer String r+
	db "r+", 0

section .data

@2637$string_w2B#:
	; Initializer String w+
	db "w+", 0

section .data

@2644$string_a2B#:
	; Initializer String a+
	db "a+", 0

section .text

 freopen:
	; Assign handle -1
	mov dword [rbp + 48], -1

 freopen$1:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$2:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$3:
	; Parameter 84 pointer "r"
	mov qword [rbp + 84], @2608$string_r#

 freopen$4:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$5
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$5:
	; PostCall 52

 freopen$6:
	; GetReturnValue £temporary614

 freopen$7:
	; NotEqual 16 £temporary614 0
	cmp ebx, 0
	jne freopen$16

 freopen$8:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$9:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$10:
	; Parameter 84 unsignedshortint 0
	mov word [rbp + 84], 0

 freopen$11:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$12
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2579$fileopen

 freopen$12:
	; PostCall 52

 freopen$13:
	; GetReturnValue £temporary616

 freopen$14:
	; Assign handle £temporary616
	mov [rbp + 48], ebx

 freopen$15:
	; Jump 130
	jmp freopen$130

 freopen$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$17:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$18:
	; Parameter 84 pointer "w"
	mov qword [rbp + 84], @2614$string_w#

 freopen$19:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$20:
	; PostCall 52

 freopen$21:
	; GetReturnValue £temporary617

 freopen$22:
	; NotEqual 30 £temporary617 0
	cmp ebx, 0
	jne freopen$30

 freopen$23:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$24:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$25:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$26
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$26:
	; PostCall 52

 freopen$27:
	; GetReturnValue £temporary619

 freopen$28:
	; Assign handle £temporary619
	mov [rbp + 48], ebx

 freopen$29:
	; Jump 130
	jmp freopen$130

 freopen$30:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$31:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$32:
	; Parameter 84 pointer "a"
	mov qword [rbp + 84], @2617$string_a#

 freopen$33:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$34
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$34:
	; PostCall 52

 freopen$35:
	; GetReturnValue £temporary620

 freopen$36:
	; NotEqual 59 £temporary620 0
	cmp ebx, 0
	jne freopen$59

 freopen$37:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$38:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$39:
	; Parameter 84 unsignedshortint 1
	mov word [rbp + 84], 1

 freopen$40:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2579$fileopen

 freopen$41:
	; PostCall 52

 freopen$42:
	; GetReturnValue £temporary622

 freopen$43:
	; Assign handle £temporary622
	mov [rbp + 48], ebx

 freopen$44:
	; Equal 52 handle -1
	cmp dword [rbp + 48], -1
	je freopen$52

 freopen$45:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$46:
	; Parameter 76 pointer stream
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$47:
	; Parameter 84 signedint 0
	mov dword [rbp + 84], 0

 freopen$48:
	; Parameter 88 signedint 2
	mov dword [rbp + 88], 2

 freopen$49:
	; Call 52 fseek 0
	mov qword [rbp + 52], freopen$50
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$50:
	; PostCall 52

 freopen$51:
	; Jump 130
	jmp freopen$130

 freopen$52:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$53:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$54:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$55
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$55:
	; PostCall 52

 freopen$56:
	; GetReturnValue £temporary625

 freopen$57:
	; Assign handle £temporary625
	mov [rbp + 48], ebx

 freopen$58:
	; Jump 130
	jmp freopen$130

 freopen$59:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$60:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$61:
	; Parameter 84 pointer "r+"
	mov qword [rbp + 84], @2631$string_r2B#

 freopen$62:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$63:
	; PostCall 52

 freopen$64:
	; GetReturnValue £temporary626

 freopen$65:
	; NotEqual 74 £temporary626 0
	cmp ebx, 0
	jne freopen$74

 freopen$66:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$67:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$68:
	; Parameter 84 unsignedshortint 3
	mov word [rbp + 84], 3

 freopen$69:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$70
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2579$fileopen

 freopen$70:
	; PostCall 52

 freopen$71:
	; GetReturnValue £temporary628

 freopen$72:
	; Assign handle £temporary628
	mov [rbp + 48], ebx

 freopen$73:
	; Jump 130
	jmp freopen$130

 freopen$74:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$75:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$76:
	; Parameter 84 pointer "w+"
	mov qword [rbp + 84], @2637$string_w2B#

 freopen$77:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$78
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$78:
	; PostCall 52

 freopen$79:
	; GetReturnValue £temporary629

 freopen$80:
	; NotEqual 102 £temporary629 0
	cmp ebx, 0
	jne freopen$102

 freopen$81:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$82:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$83:
	; Call 52 fileexists 0
	mov qword [rbp + 52], freopen$84
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fileexists

 freopen$84:
	; PostCall 52

 freopen$85:
	; GetReturnValue £temporary631

 freopen$86:
	; Equal 95 £temporary631 0
	cmp ebx, 0
	je freopen$95

 freopen$87:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$88:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$89:
	; Parameter 84 unsignedshortint 3
	mov word [rbp + 84], 3

 freopen$90:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$91
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2579$fileopen

 freopen$91:
	; PostCall 52

 freopen$92:
	; GetReturnValue £temporary632

 freopen$93:
	; Assign handle £temporary632
	mov [rbp + 48], ebx

 freopen$94:
	; Jump 130
	jmp freopen$130

 freopen$95:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$96:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$97:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$98
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$98:
	; PostCall 52

 freopen$99:
	; GetReturnValue £temporary633

 freopen$100:
	; Assign handle £temporary633
	mov [rbp + 48], ebx

 freopen$101:
	; Jump 130
	jmp freopen$130

 freopen$102:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$103:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$104:
	; Parameter 84 pointer "a+"
	mov qword [rbp + 84], @2644$string_a2B#

 freopen$105:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$106
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$106:
	; PostCall 52

 freopen$107:
	; GetReturnValue £temporary635

 freopen$108:
	; NotEqual 130 £temporary635 0
	cmp ebx, 0
	jne freopen$130

 freopen$109:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$110:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$111:
	; Parameter 84 unsignedshortint 3
	mov word [rbp + 84], 3

 freopen$112:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$113
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2579$fileopen

 freopen$113:
	; PostCall 52

 freopen$114:
	; GetReturnValue £temporary637

 freopen$115:
	; Assign handle £temporary637
	mov [rbp + 48], ebx

 freopen$116:
	; Equal 124 handle -1
	cmp dword [rbp + 48], -1
	je freopen$124

 freopen$117:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$118:
	; Parameter 76 pointer stream
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$119:
	; Parameter 84 signedint 0
	mov dword [rbp + 84], 0

 freopen$120:
	; Parameter 88 signedint 2
	mov dword [rbp + 88], 2

 freopen$121:
	; Call 52 fseek 0
	mov qword [rbp + 52], freopen$122
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$122:
	; PostCall 52

 freopen$123:
	; Jump 130
	jmp freopen$130

 freopen$124:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$125:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$126:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$127
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$127:
	; PostCall 52

 freopen$128:
	; GetReturnValue £temporary640

 freopen$129:
	; Assign handle £temporary640
	mov [rbp + 48], ebx

 freopen$130:
	; Equal 147 handle -1
	cmp dword [rbp + 48], -1
	je freopen$147

 freopen$131:
	; Dereference £temporary642 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$132:
	; Assign £temporary642 -> stream 1
	mov dword [rsi], 1

 freopen$133:
	; Dereference £temporary643 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$134:
	; Assign £temporary643 -> stream handle
	mov eax, [rbp + 48]
	mov [rsi + 4], eax

 freopen$135:
	; Dereference £temporary644 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$136:
	; Assign £temporary644 -> stream 0
	mov dword [rsi + 33], 0

 freopen$137:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$138:
	; Dereference £temporary645 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$139:
	; Parameter 76 pointer £temporary645 -> stream
	mov [rbp + 76], rsi
	add qword [rbp + 76], 8

 freopen$140:
	; Parameter 84 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 freopen$141:
	; Call 52 strcpy 0
	mov qword [rbp + 52], freopen$142
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcpy

 freopen$142:
	; PostCall 52

 freopen$143:
	; Dereference £temporary647 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$144:
	; Assign £temporary647 -> stream 0
	mov dword [rsi + 37], 0

 freopen$145:
	; SetReturnValue

 freopen$146:
	; Return stream
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$147:
	; Dereference £temporary648 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$148:
	; Assign £temporary648 -> stream 0
	mov dword [rsi], 0

 freopen$149:
	; SetReturnValue

 freopen$150:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$151:
	; FunctionEnd freopen

section .data

@2717$int4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2720$int4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fflush:
	; NotEqual 23 stream 0
	cmp qword [rbp + 24], 0
	jne fflush$23

 fflush$1:
	; Assign index 0
	mov dword [rbp + 32], 0

 fflush$2:
	; GreaterThanEqual 23 index 20
	cmp dword [rbp + 32], 20
	jge fflush$23

 fflush$3:
	; Multiply £temporary653 index 41
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2717$int4$41#]

 fflush$4:
	; IntegralToIntegral £temporary654 £temporary653
	mov rbx, 4294967295
	and rax, rbx

 fflush$5:
	; BinaryAdd £temporary655 g_fileArray £temporary654
	mov rsi, g_fileArray
	add rsi, rax

 fflush$6:
	; Dereference £temporary652 -> £temporary655 £temporary655 0

 fflush$7:
	; Equal 21 £temporary652.open -> £temporary655 0
	cmp dword [rsi], 0
	je fflush$21

 fflush$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fflush$9:
	; Multiply £temporary657 index 41
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2720$int4$41#]

 fflush$10:
	; IntegralToIntegral £temporary658 £temporary657
	mov rbx, 4294967295
	and rax, rbx

 fflush$11:
	; BinaryAdd £temporary659 g_fileArray £temporary658
	mov rsi, g_fileArray
	add rsi, rax

 fflush$12:
	; Dereference £temporary656 -> £temporary659 £temporary659 0

 fflush$13:
	; Address £temporary660 £temporary656 -> £temporary659

 fflush$14:
	; Parameter 60 pointer £temporary660
	mov [rbp + 60], rsi

 fflush$15:
	; Call 36 fflush 0
	mov qword [rbp + 36], fflush$16
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fflush

 fflush$16:
	; PostCall 36

 fflush$17:
	; GetReturnValue £temporary661

 fflush$18:
	; NotEqual 21 £temporary661 -1
	cmp ebx, -1
	jne fflush$21

 fflush$19:
	; SetReturnValue

 fflush$20:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$21:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 fflush$22:
	; Jump 2
	jmp fflush$2

 fflush$23:
	; SetReturnValue

 fflush$24:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$25:
	; FunctionEnd fflush

section .data

@2744$int4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2747$int4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fclose:
	; Equal 8 stream 0
	cmp qword [rbp + 24], 0
	je fclose$8

 fclose$1:
	; AssignRegister rax 3
	mov rax, 3

 fclose$2:
	; Dereference £temporary667 -> stream stream 0
	mov rsi, [rbp + 24]

 fclose$3:
	; IntegralToIntegral £temporary668 £temporary667 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fclose$4:
	; AssignRegister rdi £temporary668

 fclose$5:
	; SysCall
	syscall

 fclose$6:
	; SetReturnValue

 fclose$7:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$8:
	; Assign index 0
	mov dword [rbp + 32], 0

 fclose$9:
	; GreaterThanEqual 30 index 20
	cmp dword [rbp + 32], 20
	jge fclose$30

 fclose$10:
	; Multiply £temporary672 index 41
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2744$int4$41#]

 fclose$11:
	; IntegralToIntegral £temporary673 £temporary672
	mov rbx, 4294967295
	and rax, rbx

 fclose$12:
	; BinaryAdd £temporary674 g_fileArray £temporary673
	mov rsi, g_fileArray
	add rsi, rax

 fclose$13:
	; Dereference £temporary671 -> £temporary674 £temporary674 0

 fclose$14:
	; Equal 28 £temporary671.open -> £temporary674 0
	cmp dword [rsi], 0
	je fclose$28

 fclose$15:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fclose$16:
	; Multiply £temporary676 index 41
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2747$int4$41#]

 fclose$17:
	; IntegralToIntegral £temporary677 £temporary676
	mov rbx, 4294967295
	and rax, rbx

 fclose$18:
	; BinaryAdd £temporary678 g_fileArray £temporary677
	mov rsi, g_fileArray
	add rsi, rax

 fclose$19:
	; Dereference £temporary675 -> £temporary678 £temporary678 0

 fclose$20:
	; Address £temporary679 £temporary675 -> £temporary678

 fclose$21:
	; Parameter 60 pointer £temporary679
	mov [rbp + 60], rsi

 fclose$22:
	; Call 36 fclose 0
	mov qword [rbp + 36], fclose$23
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 fclose$23:
	; PostCall 36

 fclose$24:
	; GetReturnValue £temporary680

 fclose$25:
	; NotEqual 28 £temporary680 -1
	cmp ebx, -1
	jne fclose$28

 fclose$26:
	; SetReturnValue

 fclose$27:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$28:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 fclose$29:
	; Jump 9
	jmp fclose$9

 fclose$30:
	; SetReturnValue

 fclose$31:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$32:
	; FunctionEnd fclose

section .text

 remove:
	; AssignRegister rax 88
	mov rax, 88

 remove$1:
	; IntegralToIntegral £temporary685 name
	mov rdi, [rbp + 24]

 remove$2:
	; AssignRegister rdi £temporary685

 remove$3:
	; SysCall
	syscall

 remove$4:
	; InspectRegister £temporary686 ebx

 remove$5:
	; NotEqual 8 £temporary686 0
	cmp ebx, 0
	jne remove$8

 remove$6:
	; SetReturnValue

 remove$7:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$8:
	; Assign errno 18
	mov dword [errno], 18

 remove$9:
	; SetReturnValue

 remove$10:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$11:
	; FunctionEnd remove

section .text

 rename:
	; AssignRegister rax 82
	mov rax, 82

 rename$1:
	; IntegralToIntegral £temporary690 oldName
	mov rdi, [rbp + 24]

 rename$2:
	; AssignRegister rdi £temporary690

 rename$3:
	; IntegralToIntegral £temporary692 newName
	mov rsi, [rbp + 32]

 rename$4:
	; AssignRegister rsi £temporary692

 rename$5:
	; SysCall
	syscall

 rename$6:
	; InspectRegister £temporary693 eax

 rename$7:
	; NotEqual 10 £temporary693 0
	cmp eax, 0
	jne rename$10

 rename$8:
	; SetReturnValue

 rename$9:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$10:
	; Assign errno 19
	mov dword [errno], 19

 rename$11:
	; SetReturnValue

 rename$12:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$13:
	; FunctionEnd rename

section .text

 setvbuf:
	; SetReturnValue

 setvbuf$1:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setvbuf$2:
	; FunctionEnd setvbuf

section .text

 setbuf:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setbuf$1:
	; FunctionEnd setbuf

section .text

 fgetc:
	; Assign c 0
	mov byte [rbp + 32], 0

 fgetc$1:
	; PreCall 33 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgetc$2:
	; Address £temporary695 c
	mov rsi, rbp
	add rsi, 32

 fgetc$3:
	; Parameter 57 pointer £temporary695
	mov [rbp + 57], rsi

 fgetc$4:
	; Parameter 65 signedint 1
	mov dword [rbp + 65], 1

 fgetc$5:
	; Parameter 69 signedint 1
	mov dword [rbp + 69], 1

 fgetc$6:
	; Parameter 73 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 fgetc$7:
	; Call 33 fread 0
	mov qword [rbp + 33], fgetc$8
	mov [rbp + 41], rbp
	add rbp, 33
	jmp fread

 fgetc$8:
	; PostCall 33

 fgetc$9:
	; GetReturnValue £temporary696

 fgetc$10:
	; LessThanEqual 14 £temporary696 0
	cmp ebx, 0
	jle fgetc$14

 fgetc$11:
	; IntegralToIntegral £temporary698 c
	mov bl, [rbp + 32]
	and ebx, 255
	cmp bl, 0
	jge fgetc$12
	neg bl
	neg ebx

 fgetc$12:
	; SetReturnValue

 fgetc$13:
	; Return £temporary698
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$14:
	; SetReturnValue

 fgetc$15:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$16:
	; FunctionEnd fgetc

section .data

@2817$string_25c#:
	; Initializer String %c
	db "%c", 0

section .text

 fgets:
	; Assign count 0
	mov dword [rbp + 44], 0

 fgets$1:
	; Assign prevChar 0
	mov byte [rbp + 48], 0

 fgets$2:
	; BinarySubtract £temporary700 size 1
	mov eax, [rbp + 32]
	dec eax

 fgets$3:
	; GreaterThanEqual 36 count £temporary700
	cmp [rbp + 44], eax
	jge fgets$36

 fgets$4:
	; Assign currChar 0
	mov byte [rbp + 49], 0

 fgets$5:
	; PreCall 50 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgets$6:
	; Parameter 74 pointer stream
	mov rax, [rbp + 36]
	mov [rbp + 74], rax

 fgets$7:
	; Parameter 82 pointer "%c"
	mov qword [rbp + 82], @2817$string_25c#

 fgets$8:
	; Address £temporary702 currChar
	mov rsi, rbp
	add rsi, 49

 fgets$9:
	; Parameter 90 pointer £temporary702
	mov [rbp + 90], rsi

 fgets$10:
	; Call 50 fscanf 8
	mov qword [rbp + 50], fgets$11
	mov [rbp + 58], rbp
	add rbp, 50
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 fgets$11:
	; PostCall 50

 fgets$12:
	; NotEqual 19 prevChar 13
	cmp byte [rbp + 48], 13
	jne fgets$19

 fgets$13:
	; NotEqual 19 currChar 10
	cmp byte [rbp + 49], 10
	jne fgets$19

 fgets$14:
	; IntegralToIntegral £temporary708 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$15:
	; BinaryAdd £temporary709 text £temporary708
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$16:
	; Dereference £temporary707 -> £temporary709 £temporary709 0

 fgets$17:
	; Assign £temporary707 -> £temporary709 0
	mov byte [rsi], 0

 fgets$18:
	; Jump 36
	jmp fgets$36

 fgets$19:
	; IntegralToIntegral £temporary710 currChar
	mov al, [rbp + 49]
	and eax, 255
	cmp al, 0
	jge fgets$20
	neg al
	neg eax

 fgets$20:
	; NotEqual 26 £temporary710 -1
	cmp eax, -1
	jne fgets$26

 fgets$21:
	; IntegralToIntegral £temporary713 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$22:
	; BinaryAdd £temporary714 text £temporary713
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$23:
	; Dereference £temporary712 -> £temporary714 £temporary714 0

 fgets$24:
	; Assign £temporary712 -> £temporary714 0
	mov byte [rsi], 0

 fgets$25:
	; Jump 36
	jmp fgets$36

 fgets$26:
	; Equal 34 currChar 13
	cmp byte [rbp + 49], 13
	je fgets$34

 fgets$27:
	; Equal 34 currChar 10
	cmp byte [rbp + 49], 10
	je fgets$34

 fgets$28:
	; Assign £temporary718 count
	mov eax, [rbp + 44]

 fgets$29:
	; BinaryAdd count count 1
	inc dword [rbp + 44]

 fgets$30:
	; IntegralToIntegral £temporary720 £temporary718
	mov rbx, 4294967295
	and rax, rbx

 fgets$31:
	; BinaryAdd £temporary721 text £temporary720
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$32:
	; Dereference £temporary719 -> £temporary721 £temporary721 0

 fgets$33:
	; Assign £temporary719 -> £temporary721 currChar
	mov al, [rbp + 49]
	mov [rsi], al

 fgets$34:
	; Assign prevChar currChar
	mov al, [rbp + 49]
	mov [rbp + 48], al

 fgets$35:
	; Jump 2
	jmp fgets$2

 fgets$36:
	; SetReturnValue

 fgets$37:
	; Return text
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgets$38:
	; FunctionEnd fgets

section .text

 fputs:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputs$1:
	; Parameter 64 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 fputs$2:
	; Call 40 strlen 0
	mov qword [rbp + 40], fputs$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp strlen

 fputs$3:
	; PostCall 40

 fputs$4:
	; GetReturnValue £temporary723

 fputs$5:
	; BinaryAdd size £temporary723 1
	inc ebx
	mov [rbp + 40], ebx

 fputs$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputs$7:
	; Parameter 68 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fputs$8:
	; Parameter 76 signedint size
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

 fputs$9:
	; Parameter 80 signedint 1
	mov dword [rbp + 80], 1

 fputs$10:
	; Parameter 84 pointer stream
	mov rax, [rbp + 32]
	mov [rbp + 84], rax

 fputs$11:
	; Call 44 fwrite 0
	mov qword [rbp + 44], fputs$12
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fwrite

 fputs$12:
	; PostCall 44

 fputs$13:
	; GetReturnValue £temporary726

 fputs$14:
	; NotEqual 17 £temporary726 size
	cmp ebx, [rbp + 40]
	jne fputs$17

 fputs$15:
	; Assign £temporary728 0
	mov ebx, 0

 fputs$16:
	; Jump 18
	jmp fputs$18

 fputs$17:
	; Assign £temporary728 -1
	mov ebx, -1

 fputs$18:
	; SetReturnValue

 fputs$19:
	; Return £temporary728
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fputs$20:
	; FunctionEnd fputs

section .text

 getchar:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 getchar$1:
	; Parameter 48 pointer stdin
	mov rax, [stdin]
	mov [rbp + 48], rax

 getchar$2:
	; Call 24 fgetc 0
	mov qword [rbp + 24], getchar$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fgetc

 getchar$3:
	; PostCall 24

 getchar$4:
	; GetReturnValue £temporary729

 getchar$5:
	; SetReturnValue

 getchar$6:
	; Return £temporary729
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getchar$7:
	; FunctionEnd getchar

section .text

 gets:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gets$1:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 gets$2:
	; Parameter 64 signedint -1
	mov dword [rbp + 64], -1

 gets$3:
	; Parameter 68 pointer stdin
	mov rax, [stdin]
	mov [rbp + 68], rax

 gets$4:
	; Call 32 fgets 0
	mov qword [rbp + 32], gets$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fgets

 gets$5:
	; PostCall 32

 gets$6:
	; GetReturnValue £temporary730

 gets$7:
	; Equal 22 £temporary730 0
	cmp rbx, 0
	je gets$22

 gets$8:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gets$9:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 gets$10:
	; Call 32 strlen 0
	mov qword [rbp + 32], gets$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strlen

 gets$11:
	; PostCall 32

 gets$12:
	; GetReturnValue £temporary732

 gets$13:
	; Assign size £temporary732
	mov [rbp + 32], ebx

 gets$14:
	; LessThanEqual 20 size 0
	cmp dword [rbp + 32], 0
	jle gets$20

 gets$15:
	; BinarySubtract £temporary734 size 1
	mov eax, [rbp + 32]
	dec eax

 gets$16:
	; IntegralToIntegral £temporary736 £temporary734
	mov rbx, 4294967295
	and rax, rbx

 gets$17:
	; BinaryAdd £temporary737 s £temporary736
	mov rsi, [rbp + 24]
	add rsi, rax

 gets$18:
	; Dereference £temporary735 -> £temporary737 £temporary737 0

 gets$19:
	; Assign £temporary735 -> £temporary737 0
	mov byte [rsi], 0

 gets$20:
	; SetReturnValue

 gets$21:
	; Return s
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$22:
	; SetReturnValue

 gets$23:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$24:
	; FunctionEnd gets

section .text

 puts:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 puts$1:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 puts$2:
	; Parameter 64 pointer stdout
	mov rax, [stdout]
	mov [rbp + 64], rax

 puts$3:
	; Call 32 fputs 0
	mov qword [rbp + 32], puts$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fputs

 puts$4:
	; PostCall 32

 puts$5:
	; GetReturnValue £temporary738

 puts$6:
	; Equal 15 £temporary738 0
	cmp ebx, 0
	je puts$15

 puts$7:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 puts$8:
	; Parameter 56 signedint 10
	mov dword [rbp + 56], 10

 puts$9:
	; Parameter 60 pointer stdout
	mov rax, [stdout]
	mov [rbp + 60], rax

 puts$10:
	; Call 32 fputc 0
	mov qword [rbp + 32], puts$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fputc

 puts$11:
	; PostCall 32

 puts$12:
	; GetReturnValue £temporary740

 puts$13:
	; SetReturnValue

 puts$14:
	; Return £temporary740
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$15:
	; SetReturnValue

 puts$16:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$17:
	; FunctionEnd puts

section .text

 ungetc:
	; Dereference £temporary741 -> stream stream 0
	mov rsi, [rbp + 28]

 ungetc$1:
	; IntegralToIntegral £temporary742 £temporary741 -> stream
	mov al, [rsi + 24]
	and eax, 255
	cmp al, 0
	jge ungetc$2
	neg al
	neg eax

 ungetc$2:
	; Equal 6 £temporary742 -1
	cmp eax, -1
	je ungetc$6

 ungetc$3:
	; Dereference £temporary744 -> stream stream 0
	mov rsi, [rbp + 28]

 ungetc$4:
	; IntegralToIntegral £temporary745 c
	mov eax, [rbp + 24]
	cmp eax, 0
	jge ungetc$5
	neg eax
	neg al

 ungetc$5:
	; Assign £temporary744 -> stream £temporary745
	mov [rsi + 24], al

 ungetc$6:
	; SetReturnValue

 ungetc$7:
	; Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ungetc$8:
	; FunctionEnd ungetc

section .text

 fread:
	; Dereference £temporary747 -> stream stream 0
	mov rsi, [rbp + 40]

 fread$1:
	; IntegralToIntegral £temporary748 £temporary747 -> stream
	mov edi, [rsi + 4]
	mov rax, 4294967295
	and rdi, rax

 fread$2:
	; AssignRegister rdi £temporary748

 fread$3:
	; IntegralToIntegral £temporary750 ptr
	mov rsi, [rbp + 24]

 fread$4:
	; AssignRegister rsi £temporary750

 fread$5:
	; Multiply £temporary752 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fread$6:
	; IntegralToIntegral £temporary753 £temporary752
	mov rbx, 4294967295
	and rax, rbx

 fread$7:
	; AssignRegister rdx £temporary753
	mov rdx, rax

 fread$8:
	; AssignRegister rax 0
	mov rax, 0

 fread$9:
	; SysCall
	syscall

 fread$10:
	; InspectRegister £temporary755 eax

 fread$11:
	; SetReturnValue

 fread$12:
	; Return £temporary755
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fread$13:
	; FunctionEnd fread

section .text

 fwrite:
	; Dereference £temporary757 -> stream stream 0
	mov rsi, [rbp + 40]

 fwrite$1:
	; IntegralToIntegral £temporary758 £temporary757 -> stream
	mov edi, [rsi + 4]
	mov rax, 4294967295
	and rdi, rax

 fwrite$2:
	; AssignRegister rdi £temporary758

 fwrite$3:
	; IntegralToIntegral £temporary760 ptr
	mov rsi, [rbp + 24]

 fwrite$4:
	; AssignRegister rsi £temporary760

 fwrite$5:
	; Multiply £temporary762 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fwrite$6:
	; IntegralToIntegral £temporary763 £temporary762
	mov rbx, 4294967295
	and rax, rbx

 fwrite$7:
	; AssignRegister rdx £temporary763
	mov rdx, rax

 fwrite$8:
	; AssignRegister rax 1
	mov rax, 1

 fwrite$9:
	; SysCall
	syscall

 fwrite$10:
	; InspectRegister £temporary765 eax

 fwrite$11:
	; SetReturnValue

 fwrite$12:
	; Return £temporary765
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fwrite$13:
	; FunctionEnd fwrite

section .text

 fseek:
	; AssignRegister rax 8
	mov rax, 8

 fseek$1:
	; Dereference £temporary768 -> stream stream 0
	mov rsi, [rbp + 24]

 fseek$2:
	; IntegralToIntegral £temporary769 £temporary768 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fseek$3:
	; AssignRegister rdi £temporary769

 fseek$4:
	; IntegralToIntegral £temporary771 offset
	mov esi, [rbp + 32]
	mov rbx, 4294967295
	and rsi, rbx

 fseek$5:
	; AssignRegister rsi £temporary771

 fseek$6:
	; IntegralToIntegral £temporary773 origin
	mov edx, [rbp + 36]
	mov rbx, 4294967295
	and rdx, rbx

 fseek$7:
	; AssignRegister rdx £temporary773

 fseek$8:
	; SysCall
	syscall

 fseek$9:
	; InspectRegister £temporary774 eax

 fseek$10:
	; SetReturnValue

 fseek$11:
	; Return £temporary774
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fseek$12:
	; FunctionEnd fseek

section .text

 ftell:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ftell$1:
	; Parameter 56 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 ftell$2:
	; Parameter 64 signedint 0
	mov dword [rbp + 64], 0

 ftell$3:
	; Parameter 68 signedint 1
	mov dword [rbp + 68], 1

 ftell$4:
	; Call 32 fseek 0
	mov qword [rbp + 32], ftell$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 ftell$5:
	; PostCall 32

 ftell$6:
	; GetReturnValue £temporary775

 ftell$7:
	; SetReturnValue

 ftell$8:
	; Return £temporary775
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ftell$9:
	; FunctionEnd ftell

section .text

 rewind:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 rewind$1:
	; Parameter 56 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 rewind$2:
	; Parameter 64 signedint 0
	mov dword [rbp + 64], 0

 rewind$3:
	; Parameter 68 signedint 0
	mov dword [rbp + 68], 0

 rewind$4:
	; Call 32 fseek 0
	mov qword [rbp + 32], rewind$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 rewind$5:
	; PostCall 32

 rewind$6:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rewind$7:
	; FunctionEnd rewind

section .text

 fgetpos:
	; Dereference £temporary778 -> ptr ptr 0
	mov rsi, [rbp + 32]

 fgetpos$1:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 40], rsi

 fgetpos$2:
	; Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 fgetpos$3:
	; Call 40 ftell 0
	mov qword [rbp + 48], fgetpos$4
	mov [rbp + 56], rbp
	add rbp, 48
	jmp ftell

 fgetpos$4:
	; PostCall 40
	mov rsi, [rbp + 40]

 fgetpos$5:
	; GetReturnValue £temporary779

 fgetpos$6:
	; IntegralToIntegral £temporary780 £temporary779

 fgetpos$7:
	; Assign £temporary778 -> ptr £temporary780
	mov [rsi], ebx

 fgetpos$8:
	; SetReturnValue

 fgetpos$9:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetpos$10:
	; FunctionEnd fgetpos

section .text

 fsetpos:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fsetpos$1:
	; Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 fsetpos$2:
	; Dereference £temporary781 -> ptr ptr 0
	mov rsi, [rbp + 32]

 fsetpos$3:
	; Parameter 72 signedint £temporary781 -> ptr
	mov eax, [rsi]
	mov [rbp + 72], eax

 fsetpos$4:
	; Parameter 76 signedint 0
	mov dword [rbp + 76], 0

 fsetpos$5:
	; Call 40 fseek 0
	mov qword [rbp + 40], fsetpos$6
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fseek

 fsetpos$6:
	; PostCall 40

 fsetpos$7:
	; GetReturnValue £temporary782

 fsetpos$8:
	; IntegralToIntegral £temporary783 £temporary782

 fsetpos$9:
	; SetReturnValue

 fsetpos$10:
	; Return £temporary783
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fsetpos$11:
	; FunctionEnd fsetpos

section .text

 clearerr:
	; Dereference £temporary784 -> stream stream 0
	mov rsi, [rbp + 24]

 clearerr$1:
	; Assign errno 0
	mov dword [errno], 0

 clearerr$2:
	; Assign £temporary784 -> stream errno
	mov eax, [errno]
	mov [rsi + 25], eax

 clearerr$3:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 clearerr$4:
	; FunctionEnd clearerr

section .text

 feof:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$1:
	; Parameter 56 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 feof$2:
	; Parameter 64 signedint 0
	mov dword [rbp + 64], 0

 feof$3:
	; Parameter 68 signedint 1
	mov dword [rbp + 68], 1

 feof$4:
	; Call 32 fseek 0
	mov qword [rbp + 32], feof$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 feof$5:
	; PostCall 32

 feof$6:
	; GetReturnValue £temporary785

 feof$7:
	; IntegralToIntegral £temporary786 £temporary785
	mov rax, 4294967295
	and rbx, rax

 feof$8:
	; Assign currPosition £temporary786
	mov [rbp + 32], rbx

 feof$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$10:
	; Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 feof$11:
	; Parameter 72 signedint 0
	mov dword [rbp + 72], 0

 feof$12:
	; Parameter 76 signedint 2
	mov dword [rbp + 76], 2

 feof$13:
	; Call 40 fseek 0
	mov qword [rbp + 40], feof$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fseek

 feof$14:
	; PostCall 40

 feof$15:
	; GetReturnValue £temporary787

 feof$16:
	; IntegralToIntegral £temporary788 £temporary787
	mov rax, 4294967295
	and rbx, rax

 feof$17:
	; Assign lastPosition £temporary788
	mov [rbp + 40], rbx

 feof$18:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$19:
	; Parameter 72 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 feof$20:
	; IntegralToIntegral £temporary789 currPosition
	mov rax, [rbp + 32]

 feof$21:
	; Parameter 80 signedint £temporary789
	mov [rbp + 80], eax

 feof$22:
	; Parameter 84 signedint 0
	mov dword [rbp + 84], 0

 feof$23:
	; Call 48 fseek 0
	mov qword [rbp + 48], feof$24
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fseek

 feof$24:
	; PostCall 48

 feof$25:
	; NotEqual 28 currPosition lastPosition
	mov rax, [rbp + 40]
	cmp [rbp + 32], rax
	jne feof$28

 feof$26:
	; Assign £temporary792 1
	mov eax, 1

 feof$27:
	; Jump 29
	jmp feof$29

 feof$28:
	; Assign £temporary792 0
	mov eax, 0

 feof$29:
	; Assign endOfFile £temporary792
	mov [rbp + 48], eax

 feof$30:
	; SetReturnValue

 feof$31:
	; Return endOfFile
	mov ebx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 feof$32:
	; FunctionEnd feof

section .text

 ferror:
	; Dereference £temporary793 -> stream stream 0
	mov rsi, [rbp + 24]

 ferror$1:
	; SetReturnValue

 ferror$2:
	; Return £temporary793 -> stream
	mov ebx, [rsi + 25]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ferror$3:
	; FunctionEnd ferror

section .data

@2977$string_25s3A2025s2E0A#:
	; Initializer String %s: %s.\n
	db "%s: %s.", 10, 0

section .text

 perror:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$1:
	; Parameter 56 pointer "%s: %s.\n"
	mov qword [rbp + 56], @2977$string_25s3A2025s2E0A#

 perror$2:
	; Parameter 64 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 perror$3:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$4:
	; Parameter 96 signedint errno
	mov eax, [errno]
	mov [rbp + 96], eax

 perror$5:
	; Call 72 strerror 0
	mov qword [rbp + 72], perror$6
	mov [rbp + 80], rbp
	add rbp, 72
	jmp strerror

 perror$6:
	; PostCall 72

 perror$7:
	; GetReturnValue £temporary794

 perror$8:
	; Parameter 72 pointer £temporary794
	mov [rbp + 72], rbx

 perror$9:
	; Call 32 printf 16
	mov qword [rbp + 32], perror$10
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 perror$10:
	; PostCall 32

 perror$11:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 perror$12:
	; FunctionEnd perror
