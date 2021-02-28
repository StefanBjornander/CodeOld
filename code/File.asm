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
	; Initializer SignedInt 0
	dd 0
	; InitializerZero 33
	times 33 db 0
	; Initializer SignedInt 1
	dd 1
	; Initializer SignedInt 1
	dd 1
	; InitializerZero 33
	times 33 db 0
	; Initializer SignedInt 1
	dd 1
	; Initializer SignedInt 2
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

@2211$EEXIST:
	; Initializer SignedInt 0
	dd 0

section .data

@2212$ENOENT:
	; Initializer SignedInt 1
	dd 1

section .data

@2213$EACCES:
	; Initializer SignedInt 2
	dd 2

section .data

@2214$SEEK_SET:
	; Initializer SignedInt 0
	dd 0

section .data

@2215$SEEK_CUR:
	; Initializer SignedInt 1
	dd 1

section .data

@2216$SEEK_END:
	; Initializer SignedInt 2
	dd 2

section .data

@2217$READ:
	; Initializer SignedInt 0
	dd 0

section .data

@2218$WRITE:
	; Initializer SignedInt 1
	dd 1

section .data

@2219$READ_WRITE:
	; Initializer SignedInt 3
	dd 3

section .text

 filecreate:
	; AssignRegister rax integral8$85#
	mov rax, 85

 filecreate$1:
	; IntegralToIntegral £temporary586 name
	mov rdi, [rbp + 24]

 filecreate$2:
	; AssignRegister rdi £temporary586

 filecreate$3:
	; AssignRegister rsi integral8$511#
	mov rsi, 511

 filecreate$4:
	; SysCall
	syscall

 filecreate$5:
	; InspectRegister £temporary588 eax

 filecreate$6:
	; SetReturnValue

 filecreate$7:
	; Return £temporary588
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 filecreate$8:
	; FunctionEnd filecreate

section .data

@2430string_r#:
	; Initializer String r
	db "r", 0

section .data

@2432string_0Afileexists2025s2025p0A#:
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
	; Parameter 64 pointer string_r#
	mov qword [rbp + 64], @2430string_r#

 fileexistsX$3:
	; Call 32 fopen 0
	mov qword [rbp + 32], fileexistsX$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 fileexistsX$4:
	; PostCall 32

 fileexistsX$5:
	; GetReturnValue £temporary589

 fileexistsX$6:
	; Assign filePtr £temporary589
	mov [rbp + 32], rbx

 fileexistsX$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fileexistsX$8:
	; Parameter 64 pointer string_0Afileexists2025s2025p0A#
	mov qword [rbp + 64], @2432string_0Afileexists2025s2025p0A#

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
	; Equal 20 filePtr integral8$0#
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
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexistsX$20:
	; SetReturnValue

 fileexistsX$21:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexistsX$22:
	; FunctionEnd fileexistsX

section .text

 fileexists:
	; AssignRegister rax integral8$21#
	mov rax, 21

 fileexists$1:
	; IntegralToIntegral £temporary595 name
	mov rdi, [rbp + 24]

 fileexists$2:
	; AssignRegister rdi £temporary595

 fileexists$3:
	; AssignRegister rsi integral8$0#
	mov rsi, 0

 fileexists$4:
	; SysCall
	syscall

 fileexists$5:
	; InspectRegister £temporary597 eax

 fileexists$6:
	; NotEqual 9 £temporary597 integral4$0#
	cmp eax, 0
	jne fileexists$9

 fileexists$7:
	; Assign £temporary599 integral4$1#
	mov ebx, 1

 fileexists$8:
	; Jump 10
	jmp fileexists$10

 fileexists$9:
	; Assign £temporary599 integral4$0#
	mov ebx, 0

 fileexists$10:
	; SetReturnValue

 fileexists$11:
	; Return £temporary599
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexists$12:
	; FunctionEnd fileexists

section .text

 @2453$fileopen:
	; AssignRegister rax integral8$2#
	mov rax, 2

 @2453$fileopen$1:
	; IntegralToIntegral £temporary602 name
	mov rdi, [rbp + 24]

 @2453$fileopen$2:
	; AssignRegister rdi £temporary602

 @2453$fileopen$3:
	; IntegralToIntegral £temporary604 mode
	mov si, [rbp + 32]
	mov rbx, 65535
	and rsi, rbx

 @2453$fileopen$4:
	; AssignRegister rsi £temporary604

 @2453$fileopen$5:
	; SysCall
	syscall

 @2453$fileopen$6:
	; InspectRegister £temporary605 eax

 @2453$fileopen$7:
	; SetReturnValue

 @2453$fileopen$8:
	; Return £temporary605
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2453$fileopen$9:
	; FunctionEnd fileopen

section .data

@2462integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2465integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fopen:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 fopen$1:
	; GreaterThanEqual 23 index integral4$20#
	cmp dword [rbp + 40], 20
	jge fopen$23

 fopen$2:
	; Multiply £temporary609 index integral4$41#
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@2462integral4$41#]

 fopen$3:
	; IntegralToIntegral £temporary610 £temporary609
	mov rbx, 4294967295
	and rax, rbx

 fopen$4:
	; Add £temporary611 g_fileArray £temporary610
	mov rsi, g_fileArray
	add rsi, rax

 fopen$5:
	; Dereference £temporary608 £temporary611 0

 fopen$6:
	; NotEqual 21 £temporary608.open integral4$0#
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
	; Multiply £temporary615 index integral4$41#
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@2465integral4$41#]

 fopen$11:
	; IntegralToIntegral £temporary616 £temporary615
	mov rbx, 4294967295
	and rax, rbx

 fopen$12:
	; Add £temporary617 g_fileArray £temporary616
	mov rsi, g_fileArray
	add rsi, rax

 fopen$13:
	; Dereference £temporary614 £temporary617 0

 fopen$14:
	; Address £temporary618 £temporary614

 fopen$15:
	; Parameter 84 pointer £temporary618
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
	; GetReturnValue £temporary619

 fopen$19:
	; SetReturnValue

 fopen$20:
	; Return £temporary619
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$21:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 fopen$22:
	; Jump 1
	jmp fopen$1

 fopen$23:
	; SetReturnValue

 fopen$24:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$25:
	; FunctionEnd fopen

section .data

@2476string_r#:
	; Initializer String r
	db "r", 0

section .data

@2479string_w#:
	; Initializer String w
	db "w", 0

section .data

@2481string_a#:
	; Initializer String a
	db "a", 0

section .data

@2488string_r2B#:
	; Initializer String r+
	db "r+", 0

section .data

@2490string_r2B10A#:
	; Initializer String r+1\n
	db "r+1", 10, 0

section .data

@2492string_r2B20A#:
	; Initializer String r+2\n
	db "r+2", 10, 0

section .data

@2493string_w2B#:
	; Initializer String w+
	db "w+", 0

section .data

@2497string_a2B#:
	; Initializer String a+
	db "a+", 0

section .text

 freopen:
	; Assign handle integral4$minus1#
	mov dword [rbp + 48], -1

 freopen$1:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$2:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$3:
	; Parameter 84 pointer string_r#
	mov qword [rbp + 84], @2476string_r#

 freopen$4:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$5
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$5:
	; PostCall 52

 freopen$6:
	; GetReturnValue £temporary620

 freopen$7:
	; NotEqual 16 £temporary620 integral4$0#
	cmp ebx, 0
	jne freopen$16

 freopen$8:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$9:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$10:
	; Parameter 84 unsigned short int integral2$0#
	mov word [rbp + 84], 0

 freopen$11:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$12
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2453$fileopen

 freopen$12:
	; PostCall 52

 freopen$13:
	; GetReturnValue £temporary622

 freopen$14:
	; Assign handle £temporary622
	mov [rbp + 48], ebx

 freopen$15:
	; Jump 138
	jmp freopen$138

 freopen$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$17:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$18:
	; Parameter 84 pointer string_w#
	mov qword [rbp + 84], @2479string_w#

 freopen$19:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$20:
	; PostCall 52

 freopen$21:
	; GetReturnValue £temporary623

 freopen$22:
	; NotEqual 30 £temporary623 integral4$0#
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
	; GetReturnValue £temporary625

 freopen$28:
	; Assign handle £temporary625
	mov [rbp + 48], ebx

 freopen$29:
	; Jump 138
	jmp freopen$138

 freopen$30:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$31:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$32:
	; Parameter 84 pointer string_a#
	mov qword [rbp + 84], @2481string_a#

 freopen$33:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$34
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$34:
	; PostCall 52

 freopen$35:
	; GetReturnValue £temporary626

 freopen$36:
	; NotEqual 59 £temporary626 integral4$0#
	cmp ebx, 0
	jne freopen$59

 freopen$37:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$38:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$39:
	; Parameter 84 unsigned short int integral2$1#
	mov word [rbp + 84], 1

 freopen$40:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2453$fileopen

 freopen$41:
	; PostCall 52

 freopen$42:
	; GetReturnValue £temporary628

 freopen$43:
	; Assign handle £temporary628
	mov [rbp + 48], ebx

 freopen$44:
	; Equal 52 handle integral4$minus1#
	cmp dword [rbp + 48], -1
	je freopen$52

 freopen$45:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$46:
	; Parameter 76 pointer stream
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$47:
	; Parameter 84 signed int integral4$0#
	mov dword [rbp + 84], 0

 freopen$48:
	; Parameter 88 signed int integral4$2#
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
	; Jump 138
	jmp freopen$138

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
	; GetReturnValue £temporary631

 freopen$57:
	; Assign handle £temporary631
	mov [rbp + 48], ebx

 freopen$58:
	; Jump 138
	jmp freopen$138

 freopen$59:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$60:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$61:
	; Parameter 84 pointer string_r2B#
	mov qword [rbp + 84], @2488string_r2B#

 freopen$62:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$63:
	; PostCall 52

 freopen$64:
	; GetReturnValue £temporary632

 freopen$65:
	; NotEqual 82 £temporary632 integral4$0#
	cmp ebx, 0
	jne freopen$82

 freopen$66:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$67:
	; Parameter 76 pointer string_r2B10A#
	mov qword [rbp + 76], @2490string_r2B10A#

 freopen$68:
	; Call 52 printf 0
	mov qword [rbp + 52], freopen$69
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	jmp printf

 freopen$69:
	; PostCall 52

 freopen$70:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$71:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$72:
	; Parameter 84 unsigned short int integral2$3#
	mov word [rbp + 84], 3

 freopen$73:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$74
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2453$fileopen

 freopen$74:
	; PostCall 52

 freopen$75:
	; GetReturnValue £temporary635

 freopen$76:
	; Assign handle £temporary635
	mov [rbp + 48], ebx

 freopen$77:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$78:
	; Parameter 76 pointer string_r2B20A#
	mov qword [rbp + 76], @2492string_r2B20A#

 freopen$79:
	; Call 52 printf 0
	mov qword [rbp + 52], freopen$80
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	jmp printf

 freopen$80:
	; PostCall 52

 freopen$81:
	; Jump 138
	jmp freopen$138

 freopen$82:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$83:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$84:
	; Parameter 84 pointer string_w2B#
	mov qword [rbp + 84], @2493string_w2B#

 freopen$85:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$86
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$86:
	; PostCall 52

 freopen$87:
	; GetReturnValue £temporary637

 freopen$88:
	; NotEqual 110 £temporary637 integral4$0#
	cmp ebx, 0
	jne freopen$110

 freopen$89:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$90:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$91:
	; Call 52 fileexists 0
	mov qword [rbp + 52], freopen$92
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fileexists

 freopen$92:
	; PostCall 52

 freopen$93:
	; GetReturnValue £temporary639

 freopen$94:
	; Equal 103 £temporary639 integral4$0#
	cmp ebx, 0
	je freopen$103

 freopen$95:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$96:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$97:
	; Parameter 84 unsigned short int integral2$3#
	mov word [rbp + 84], 3

 freopen$98:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$99
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2453$fileopen

 freopen$99:
	; PostCall 52

 freopen$100:
	; GetReturnValue £temporary640

 freopen$101:
	; Assign handle £temporary640
	mov [rbp + 48], ebx

 freopen$102:
	; Jump 138
	jmp freopen$138

 freopen$103:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$104:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$105:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$106
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$106:
	; PostCall 52

 freopen$107:
	; GetReturnValue £temporary641

 freopen$108:
	; Assign handle £temporary641
	mov [rbp + 48], ebx

 freopen$109:
	; Jump 138
	jmp freopen$138

 freopen$110:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$111:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$112:
	; Parameter 84 pointer string_a2B#
	mov qword [rbp + 84], @2497string_a2B#

 freopen$113:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$114
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$114:
	; PostCall 52

 freopen$115:
	; GetReturnValue £temporary643

 freopen$116:
	; NotEqual 138 £temporary643 integral4$0#
	cmp ebx, 0
	jne freopen$138

 freopen$117:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$118:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$119:
	; Parameter 84 unsigned short int integral2$3#
	mov word [rbp + 84], 3

 freopen$120:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$121
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2453$fileopen

 freopen$121:
	; PostCall 52

 freopen$122:
	; GetReturnValue £temporary645

 freopen$123:
	; Assign handle £temporary645
	mov [rbp + 48], ebx

 freopen$124:
	; Equal 132 handle integral4$minus1#
	cmp dword [rbp + 48], -1
	je freopen$132

 freopen$125:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$126:
	; Parameter 76 pointer stream
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$127:
	; Parameter 84 signed int integral4$0#
	mov dword [rbp + 84], 0

 freopen$128:
	; Parameter 88 signed int integral4$2#
	mov dword [rbp + 88], 2

 freopen$129:
	; Call 52 fseek 0
	mov qword [rbp + 52], freopen$130
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$130:
	; PostCall 52

 freopen$131:
	; Jump 138
	jmp freopen$138

 freopen$132:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$133:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$134:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$135
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$135:
	; PostCall 52

 freopen$136:
	; GetReturnValue £temporary648

 freopen$137:
	; Assign handle £temporary648
	mov [rbp + 48], ebx

 freopen$138:
	; Equal 155 handle integral4$minus1#
	cmp dword [rbp + 48], -1
	je freopen$155

 freopen$139:
	; Dereference £temporary650 stream 0
	mov rsi, [rbp + 40]

 freopen$140:
	; Assign £temporary650 integral4$1#
	mov dword [rsi], 1

 freopen$141:
	; Dereference £temporary651 stream 0
	mov rsi, [rbp + 40]

 freopen$142:
	; Assign £temporary651 handle
	mov eax, [rbp + 48]
	mov [rsi + 4], eax

 freopen$143:
	; Dereference £temporary652 stream 0
	mov rsi, [rbp + 40]

 freopen$144:
	; Assign £temporary652 integral4$0#
	mov dword [rsi + 33], 0

 freopen$145:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$146:
	; Dereference £temporary653 stream 0
	mov rsi, [rbp + 40]

 freopen$147:
	; Parameter 76 pointer £temporary653
	mov [rbp + 76], rsi
	add qword [rbp + 76], 8

 freopen$148:
	; Parameter 84 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 freopen$149:
	; Call 52 strcpy 0
	mov qword [rbp + 52], freopen$150
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcpy

 freopen$150:
	; PostCall 52

 freopen$151:
	; Dereference £temporary655 stream 0
	mov rsi, [rbp + 40]

 freopen$152:
	; Assign £temporary655 integral4$0#
	mov dword [rsi + 37], 0

 freopen$153:
	; SetReturnValue

 freopen$154:
	; Return stream
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$155:
	; Dereference £temporary656 stream 0
	mov rsi, [rbp + 40]

 freopen$156:
	; Assign £temporary656 integral4$0#
	mov dword [rsi], 0

 freopen$157:
	; SetReturnValue

 freopen$158:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$159:
	; FunctionEnd freopen

section .data

@2556integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2558integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fflush:
	; NotEqual 23 stream integral8$0#
	cmp qword [rbp + 24], 0
	jne fflush$23

 fflush$1:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 fflush$2:
	; GreaterThanEqual 23 index integral4$20#
	cmp dword [rbp + 32], 20
	jge fflush$23

 fflush$3:
	; Multiply £temporary661 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2556integral4$41#]

 fflush$4:
	; IntegralToIntegral £temporary662 £temporary661
	mov rbx, 4294967295
	and rax, rbx

 fflush$5:
	; Add £temporary663 g_fileArray £temporary662
	mov rsi, g_fileArray
	add rsi, rax

 fflush$6:
	; Dereference £temporary660 £temporary663 0

 fflush$7:
	; Equal 21 £temporary660.open integral4$0#
	cmp dword [rsi], 0
	je fflush$21

 fflush$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fflush$9:
	; Multiply £temporary665 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2558integral4$41#]

 fflush$10:
	; IntegralToIntegral £temporary666 £temporary665
	mov rbx, 4294967295
	and rax, rbx

 fflush$11:
	; Add £temporary667 g_fileArray £temporary666
	mov rsi, g_fileArray
	add rsi, rax

 fflush$12:
	; Dereference £temporary664 £temporary667 0

 fflush$13:
	; Address £temporary668 £temporary664

 fflush$14:
	; Parameter 60 pointer £temporary668
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
	; GetReturnValue £temporary669

 fflush$18:
	; NotEqual 21 £temporary669 integral4$minus1#
	cmp ebx, -1
	jne fflush$21

 fflush$19:
	; SetReturnValue

 fflush$20:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$21:
	; Add index index integral4$1#
	inc dword [rbp + 32]

 fflush$22:
	; Jump 2
	jmp fflush$2

 fflush$23:
	; SetReturnValue

 fflush$24:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$25:
	; FunctionEnd fflush

section .data

@2573integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2575integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fclose:
	; Equal 8 stream integral8$0#
	cmp qword [rbp + 24], 0
	je fclose$8

 fclose$1:
	; AssignRegister rax integral8$3#
	mov rax, 3

 fclose$2:
	; Dereference £temporary675 stream 0
	mov rsi, [rbp + 24]

 fclose$3:
	; IntegralToIntegral £temporary676 £temporary675
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fclose$4:
	; AssignRegister rdi £temporary676

 fclose$5:
	; SysCall
	syscall

 fclose$6:
	; SetReturnValue

 fclose$7:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$8:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 fclose$9:
	; GreaterThanEqual 30 index integral4$20#
	cmp dword [rbp + 32], 20
	jge fclose$30

 fclose$10:
	; Multiply £temporary680 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2573integral4$41#]

 fclose$11:
	; IntegralToIntegral £temporary681 £temporary680
	mov rbx, 4294967295
	and rax, rbx

 fclose$12:
	; Add £temporary682 g_fileArray £temporary681
	mov rsi, g_fileArray
	add rsi, rax

 fclose$13:
	; Dereference £temporary679 £temporary682 0

 fclose$14:
	; Equal 28 £temporary679.open integral4$0#
	cmp dword [rsi], 0
	je fclose$28

 fclose$15:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fclose$16:
	; Multiply £temporary684 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2575integral4$41#]

 fclose$17:
	; IntegralToIntegral £temporary685 £temporary684
	mov rbx, 4294967295
	and rax, rbx

 fclose$18:
	; Add £temporary686 g_fileArray £temporary685
	mov rsi, g_fileArray
	add rsi, rax

 fclose$19:
	; Dereference £temporary683 £temporary686 0

 fclose$20:
	; Address £temporary687 £temporary683

 fclose$21:
	; Parameter 60 pointer £temporary687
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
	; GetReturnValue £temporary688

 fclose$25:
	; NotEqual 28 £temporary688 integral4$minus1#
	cmp ebx, -1
	jne fclose$28

 fclose$26:
	; SetReturnValue

 fclose$27:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$28:
	; Add index index integral4$1#
	inc dword [rbp + 32]

 fclose$29:
	; Jump 9
	jmp fclose$9

 fclose$30:
	; SetReturnValue

 fclose$31:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$32:
	; FunctionEnd fclose

section .text

 remove:
	; AssignRegister rax integral8$88#
	mov rax, 88

 remove$1:
	; IntegralToIntegral £temporary693 name
	mov rdi, [rbp + 24]

 remove$2:
	; AssignRegister rdi £temporary693

 remove$3:
	; SysCall
	syscall

 remove$4:
	; InspectRegister £temporary694 ebx

 remove$5:
	; NotEqual 8 £temporary694 integral4$0#
	cmp ebx, 0
	jne remove$8

 remove$6:
	; SetReturnValue

 remove$7:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$8:
	; Assign errno FREMOVE
	mov dword [errno], 18

 remove$9:
	; SetReturnValue

 remove$10:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$11:
	; FunctionEnd remove

section .text

 rename:
	; AssignRegister rax integral8$82#
	mov rax, 82

 rename$1:
	; IntegralToIntegral £temporary698 oldName
	mov rdi, [rbp + 24]

 rename$2:
	; AssignRegister rdi £temporary698

 rename$3:
	; IntegralToIntegral £temporary700 newName
	mov rsi, [rbp + 32]

 rename$4:
	; AssignRegister rsi £temporary700

 rename$5:
	; SysCall
	syscall

 rename$6:
	; InspectRegister £temporary701 eax

 rename$7:
	; NotEqual 10 £temporary701 integral4$0#
	cmp eax, 0
	jne rename$10

 rename$8:
	; SetReturnValue

 rename$9:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$10:
	; Assign errno FRENAME
	mov dword [errno], 19

 rename$11:
	; SetReturnValue

 rename$12:
	; Return integral4$minus1#
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
	; Return integral4$0#
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
	; Assign c integral1$0#
	mov byte [rbp + 32], 0

 fgetc$1:
	; PreCall 33 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgetc$2:
	; Address £temporary703 c
	mov rsi, rbp
	add rsi, 32

 fgetc$3:
	; Parameter 57 pointer £temporary703
	mov [rbp + 57], rsi

 fgetc$4:
	; Parameter 65 signed int integral4$1#
	mov dword [rbp + 65], 1

 fgetc$5:
	; Parameter 69 signed int integral4$1#
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
	; GetReturnValue £temporary704

 fgetc$10:
	; LessThanEqual 14 £temporary704 integral4$0#
	cmp ebx, 0
	jle fgetc$14

 fgetc$11:
	; IntegralToIntegral £temporary706 c
	mov bl, [rbp + 32]
	and ebx, 255
	cmp bl, 0
	jge fgetc$12
	neg bl
	neg ebx

 fgetc$12:
	; SetReturnValue

 fgetc$13:
	; Return £temporary706
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$14:
	; SetReturnValue

 fgetc$15:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$16:
	; FunctionEnd fgetc

section .data

@2620string_25c#:
	; Initializer String %c
	db "%c", 0

section .text

 fgets:
	; Assign count integral4$0#
	mov dword [rbp + 44], 0

 fgets$1:
	; Assign prevChar integral1$0#
	mov byte [rbp + 48], 0

 fgets$2:
	; Subtract £temporary708 size integral4$1#
	mov eax, [rbp + 32]
	dec eax

 fgets$3:
	; GreaterThanEqual 36 count £temporary708
	cmp [rbp + 44], eax
	jge fgets$36

 fgets$4:
	; Assign currChar integral1$0#
	mov byte [rbp + 49], 0

 fgets$5:
	; PreCall 50 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgets$6:
	; Parameter 74 pointer stream
	mov rax, [rbp + 36]
	mov [rbp + 74], rax

 fgets$7:
	; Parameter 82 pointer string_25c#
	mov qword [rbp + 82], @2620string_25c#

 fgets$8:
	; Address £temporary710 currChar
	mov rsi, rbp
	add rsi, 49

 fgets$9:
	; Parameter 90 pointer £temporary710
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
	; NotEqual 19 prevChar integral1$13#
	cmp byte [rbp + 48], 13
	jne fgets$19

 fgets$13:
	; NotEqual 19 currChar integral1$10#
	cmp byte [rbp + 49], 10
	jne fgets$19

 fgets$14:
	; IntegralToIntegral £temporary716 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$15:
	; Add £temporary717 text £temporary716
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$16:
	; Dereference £temporary715 £temporary717 0

 fgets$17:
	; Assign £temporary715 integral1$0#
	mov byte [rsi], 0

 fgets$18:
	; Jump 36
	jmp fgets$36

 fgets$19:
	; IntegralToIntegral £temporary718 currChar
	mov al, [rbp + 49]
	and eax, 255
	cmp al, 0
	jge fgets$20
	neg al
	neg eax

 fgets$20:
	; NotEqual 26 £temporary718 integral4$minus1#
	cmp eax, -1
	jne fgets$26

 fgets$21:
	; IntegralToIntegral £temporary721 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$22:
	; Add £temporary722 text £temporary721
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$23:
	; Dereference £temporary720 £temporary722 0

 fgets$24:
	; Assign £temporary720 integral1$0#
	mov byte [rsi], 0

 fgets$25:
	; Jump 36
	jmp fgets$36

 fgets$26:
	; Equal 34 currChar integral1$13#
	cmp byte [rbp + 49], 13
	je fgets$34

 fgets$27:
	; Equal 34 currChar integral1$10#
	cmp byte [rbp + 49], 10
	je fgets$34

 fgets$28:
	; Assign £temporary726 count
	mov eax, [rbp + 44]

 fgets$29:
	; Add count count integral4$1#
	inc dword [rbp + 44]

 fgets$30:
	; IntegralToIntegral £temporary729 £temporary726
	mov rbx, 4294967295
	and rax, rbx

 fgets$31:
	; Add £temporary730 text £temporary729
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$32:
	; Dereference £temporary728 £temporary730 0

 fgets$33:
	; Assign £temporary728 currChar
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
	; GetReturnValue £temporary732

 fputs$5:
	; Add size £temporary732 integral4$1#
	inc ebx
	mov [rbp + 40], ebx

 fputs$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputs$7:
	; Parameter 68 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fputs$8:
	; Parameter 76 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

 fputs$9:
	; Parameter 80 signed int integral4$1#
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
	; GetReturnValue £temporary735

 fputs$14:
	; NotEqual 17 £temporary735 size
	cmp ebx, [rbp + 40]
	jne fputs$17

 fputs$15:
	; Assign £temporary737 integral4$0#
	mov ebx, 0

 fputs$16:
	; Jump 18
	jmp fputs$18

 fputs$17:
	; Assign £temporary737 integral4$minus1#
	mov ebx, -1

 fputs$18:
	; SetReturnValue

 fputs$19:
	; Return £temporary737
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
	; GetReturnValue £temporary738

 getchar$5:
	; SetReturnValue

 getchar$6:
	; Return £temporary738
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
	; Parameter 64 signed int integral4$minus1#
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
	; GetReturnValue £temporary739

 gets$7:
	; Equal 22 £temporary739 integral8$0#
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
	; GetReturnValue £temporary741

 gets$13:
	; Assign size £temporary741
	mov [rbp + 32], ebx

 gets$14:
	; LessThanEqual 20 size integral4$0#
	cmp dword [rbp + 32], 0
	jle gets$20

 gets$15:
	; Subtract £temporary743 size integral4$1#
	mov eax, [rbp + 32]
	dec eax

 gets$16:
	; IntegralToIntegral £temporary745 £temporary743
	mov rbx, 4294967295
	and rax, rbx

 gets$17:
	; Add £temporary746 s £temporary745
	mov rsi, [rbp + 24]
	add rsi, rax

 gets$18:
	; Dereference £temporary744 £temporary746 0

 gets$19:
	; Assign £temporary744 integral1$0#
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
	; Return integral8$0#
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
	; GetReturnValue £temporary747

 puts$6:
	; Equal 15 £temporary747 integral4$0#
	cmp ebx, 0
	je puts$15

 puts$7:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 puts$8:
	; Parameter 56 signed int integral4$10#
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
	; GetReturnValue £temporary749

 puts$13:
	; SetReturnValue

 puts$14:
	; Return £temporary749
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$15:
	; SetReturnValue

 puts$16:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$17:
	; FunctionEnd puts

section .text

 ungetc:
	; Dereference £temporary750 stream 0
	mov rsi, [rbp + 28]

 ungetc$1:
	; IntegralToIntegral £temporary751 £temporary750
	mov al, [rsi + 24]
	and eax, 255
	cmp al, 0
	jge ungetc$2
	neg al
	neg eax

 ungetc$2:
	; Equal 6 £temporary751 integral4$minus1#
	cmp eax, -1
	je ungetc$6

 ungetc$3:
	; Dereference £temporary753 stream 0
	mov rsi, [rbp + 28]

 ungetc$4:
	; IntegralToIntegral £temporary754 c
	mov eax, [rbp + 24]
	cmp eax, 0
	jge ungetc$5
	neg eax
	neg al

 ungetc$5:
	; Assign £temporary753 £temporary754
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
	; Dereference £temporary756 stream 0
	mov rsi, [rbp + 40]

 fread$1:
	; IntegralToIntegral £temporary757 £temporary756
	mov edi, [rsi + 4]
	mov rax, 4294967295
	and rdi, rax

 fread$2:
	; AssignRegister rdi £temporary757

 fread$3:
	; IntegralToIntegral £temporary759 ptr
	mov rsi, [rbp + 24]

 fread$4:
	; AssignRegister rsi £temporary759

 fread$5:
	; Multiply £temporary761 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fread$6:
	; IntegralToIntegral £temporary762 £temporary761
	mov rbx, 4294967295
	and rax, rbx

 fread$7:
	; AssignRegister rdx £temporary762
	mov rdx, rax

 fread$8:
	; AssignRegister rax integral8$0#
	mov rax, 0

 fread$9:
	; SysCall
	syscall

 fread$10:
	; InspectRegister £temporary764 eax

 fread$11:
	; SetReturnValue

 fread$12:
	; Return £temporary764
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fread$13:
	; FunctionEnd fread

section .text

 fwrite:
	; Dereference £temporary766 stream 0
	mov rsi, [rbp + 40]

 fwrite$1:
	; IntegralToIntegral £temporary767 £temporary766
	mov edi, [rsi + 4]
	mov rax, 4294967295
	and rdi, rax

 fwrite$2:
	; AssignRegister rdi £temporary767

 fwrite$3:
	; IntegralToIntegral £temporary769 ptr
	mov rsi, [rbp + 24]

 fwrite$4:
	; AssignRegister rsi £temporary769

 fwrite$5:
	; Multiply £temporary771 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fwrite$6:
	; IntegralToIntegral £temporary772 £temporary771
	mov rbx, 4294967295
	and rax, rbx

 fwrite$7:
	; AssignRegister rdx £temporary772
	mov rdx, rax

 fwrite$8:
	; AssignRegister rax integral8$1#
	mov rax, 1

 fwrite$9:
	; SysCall
	syscall

 fwrite$10:
	; InspectRegister £temporary774 eax

 fwrite$11:
	; SetReturnValue

 fwrite$12:
	; Return £temporary774
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fwrite$13:
	; FunctionEnd fwrite

section .text

 fseek:
	; AssignRegister rax integral8$8#
	mov rax, 8

 fseek$1:
	; Dereference £temporary777 stream 0
	mov rsi, [rbp + 24]

 fseek$2:
	; IntegralToIntegral £temporary778 £temporary777
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fseek$3:
	; AssignRegister rdi £temporary778

 fseek$4:
	; IntegralToIntegral £temporary780 offset
	mov esi, [rbp + 32]
	mov rbx, 4294967295
	and rsi, rbx

 fseek$5:
	; AssignRegister rsi £temporary780

 fseek$6:
	; IntegralToIntegral £temporary782 origin
	mov edx, [rbp + 36]
	mov rbx, 4294967295
	and rdx, rbx

 fseek$7:
	; AssignRegister rdx £temporary782

 fseek$8:
	; SysCall
	syscall

 fseek$9:
	; InspectRegister £temporary783 eax

 fseek$10:
	; SetReturnValue

 fseek$11:
	; Return £temporary783
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
	; Parameter 64 signed int integral4$0#
	mov dword [rbp + 64], 0

 ftell$3:
	; Parameter 68 signed int SEEK_CUR
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
	; GetReturnValue £temporary784

 ftell$7:
	; SetReturnValue

 ftell$8:
	; Return £temporary784
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
	; Parameter 64 signed int integral4$0#
	mov dword [rbp + 64], 0

 rewind$3:
	; Parameter 68 signed int SEEK_SET
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
	; Dereference £temporary787 ptr 0
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
	; GetReturnValue £temporary788

 fgetpos$6:
	; IntegralToIntegral £temporary789 £temporary788

 fgetpos$7:
	; Assign £temporary787 £temporary789
	mov [rsi], ebx

 fgetpos$8:
	; SetReturnValue

 fgetpos$9:
	; Return integral4$0#
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
	; Dereference £temporary790 ptr 0
	mov rsi, [rbp + 32]

 fsetpos$3:
	; Parameter 72 signed int £temporary790
	mov eax, [rsi]
	mov [rbp + 72], eax

 fsetpos$4:
	; Parameter 76 signed int integral4$0#
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
	; GetReturnValue £temporary791

 fsetpos$8:
	; IntegralToIntegral £temporary792 £temporary791

 fsetpos$9:
	; SetReturnValue

 fsetpos$10:
	; Return £temporary792
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fsetpos$11:
	; FunctionEnd fsetpos

section .text

 clearerr:
	; Dereference £temporary793 stream 0
	mov rsi, [rbp + 24]

 clearerr$1:
	; Assign errno integral4$0#
	mov dword [errno], 0

 clearerr$2:
	; Assign £temporary793 errno
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
	; Parameter 64 signed int integral4$0#
	mov dword [rbp + 64], 0

 feof$3:
	; Parameter 68 signed int integral4$1#
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
	; GetReturnValue £temporary794

 feof$7:
	; IntegralToIntegral £temporary795 £temporary794
	mov rax, 4294967295
	and rbx, rax

 feof$8:
	; Assign currPosition £temporary795
	mov [rbp + 32], rbx

 feof$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$10:
	; Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 feof$11:
	; Parameter 72 signed int integral4$0#
	mov dword [rbp + 72], 0

 feof$12:
	; Parameter 76 signed int integral4$2#
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
	; GetReturnValue £temporary796

 feof$16:
	; IntegralToIntegral £temporary797 £temporary796
	mov rax, 4294967295
	and rbx, rax

 feof$17:
	; Assign lastPosition £temporary797
	mov [rbp + 40], rbx

 feof$18:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$19:
	; Parameter 72 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 feof$20:
	; IntegralToIntegral £temporary798 currPosition
	mov rax, [rbp + 32]

 feof$21:
	; Parameter 80 signed int £temporary798
	mov [rbp + 80], eax

 feof$22:
	; Parameter 84 signed int integral4$0#
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
	; Assign £temporary801 integral4$1#
	mov eax, 1

 feof$27:
	; Jump 29
	jmp feof$29

 feof$28:
	; Assign £temporary801 integral4$0#
	mov eax, 0

 feof$29:
	; Assign endOfFile £temporary801
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
	; Dereference £temporary802 stream 0
	mov rsi, [rbp + 24]

 ferror$1:
	; SetReturnValue

 ferror$2:
	; Return £temporary802
	mov ebx, [rsi + 25]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ferror$3:
	; FunctionEnd ferror

section .data

@2736string_25s3A2025s2E0A#:
	; Initializer String %s: %s.\n
	db "%s: %s.", 10, 0

section .text

 perror:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$1:
	; Parameter 56 pointer string_25s3A2025s2E0A#
	mov qword [rbp + 56], @2736string_25s3A2025s2E0A#

 perror$2:
	; Parameter 64 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 perror$3:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$4:
	; Parameter 96 signed int errno
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
	; GetReturnValue £temporary803

 perror$8:
	; Parameter 72 pointer £temporary803
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
