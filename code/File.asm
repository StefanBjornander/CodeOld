	global g_fileArray
	global stdin
	global stdout
	global stderr
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

	extern strcmp
	extern strcpy
	extern fscanf
	extern strlen
	extern fputc
	extern errno
	extern strerror
	extern printf
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

@2194$EEXIST:
	; Initializer SignedInt 0
	dd 0

section .data

@2195$ENOENT:
	; Initializer SignedInt 1
	dd 1

section .data

@2196$EACCES:
	; Initializer SignedInt 2
	dd 2

section .data

@2197$SEEK_SET:
	; Initializer SignedInt 0
	dd 0

section .data

@2198$SEEK_CUR:
	; Initializer SignedInt 1
	dd 1

section .data

@2199$SEEK_END:
	; Initializer SignedInt 2
	dd 2

section .data

@2200$READ:
	; Initializer SignedInt 64
	dd 64

section .data

@2201$WRITE:
	; Initializer SignedInt 65
	dd 65

section .data

@2202$READ_WRITE:
	; Initializer SignedInt 66
	dd 66

section .text

 @2204$filecreate:
	; AssignRegister rax 85
	mov rax, 85

 @2204$filecreate$1:
	; IntegralToIntegral £temporary705 name
	mov rdi, [rbp + 24]

 @2204$filecreate$2:
	; AssignRegister rdi £temporary705

 @2204$filecreate$3:
	; AssignRegister rsi 511
	mov rsi, 511

 @2204$filecreate$4:
	; SysCall
	syscall

 @2204$filecreate$5:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2204$filecreate$6:
	; FunctionEnd filecreate

section .text

 fileexists:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexists$1:
	; FunctionEnd fileexists

section .text

 @2208$fileopen:
	; AssignRegister rax 2
	mov rax, 2

 @2208$fileopen$1:
	; IntegralToIntegral £temporary709 name
	mov rdi, [rbp + 24]

 @2208$fileopen$2:
	; AssignRegister rdi £temporary709

 @2208$fileopen$3:
	; IntegralToIntegral £temporary711 mode
	mov si, [rbp + 32]
	mov rbx, 65535
	and rsi, rbx

 @2208$fileopen$4:
	; AssignRegister rsi £temporary711

 @2208$fileopen$5:
	; SysCall
	syscall

 @2208$fileopen$6:
	; InspectRegister £temporary712 rax

 @2208$fileopen$7:
	; IntegralToIntegral £temporary713 £temporary712

 @2208$fileopen$8:
	; Return £temporary713
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2208$fileopen$9:
	; FunctionEnd fileopen

section .data

Array_41#:
	; Initializer Array 41
	dq 41

section .text

 fopen:
	; Empty

 fopen$1:
	; Assign index 0
	mov dword [rbp + 40], 0

 fopen$2:
	; SignedGreaterThanEqual 23 index 20
	cmp dword [rbp + 40], 20
	jge fopen$23

 fopen$3:
	; IntegralToIntegral £temporary717 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 fopen$4:
	; UnsignedMultiply £temporary718 £temporary717 41
	xor rdx, rdx
	mul qword [Array_41#]

 fopen$5:
	; BinaryAdd £temporary719 g_fileArray £temporary718
	mov rsi, g_fileArray
	add rsi, rax

 fopen$6:
	; Dereference £temporary716 -> £temporary719 £temporary719 0

 fopen$7:
	; NotEqual 21 £temporary716.open -> £temporary719 0
	cmp dword [rsi], 0
	jne fopen$21

 fopen$8:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fopen$9:
	; Parameter pointer name 68
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fopen$10:
	; Parameter pointer mode 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 fopen$11:
	; IntegralToIntegral £temporary723 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 fopen$12:
	; UnsignedMultiply £temporary724 £temporary723 41
	xor rdx, rdx
	mul qword [Array_41#]

 fopen$13:
	; BinaryAdd £temporary725 g_fileArray £temporary724
	mov rsi, g_fileArray
	add rsi, rax

 fopen$14:
	; Dereference £temporary722 -> £temporary725 £temporary725 0

 fopen$15:
	; Address £temporary726 £temporary722 -> £temporary725

 fopen$16:
	; Parameter pointer £temporary726 84
	mov [rbp + 84], rsi

 fopen$17:
	; Call freopen 44 0
	mov qword [rbp + 44], fopen$18
	mov [rbp + 52], rbp
	add rbp, 44
	jmp freopen

 fopen$18:
	; PostCall 44

 fopen$19:
	; GetReturnValue £temporary727

 fopen$20:
	; Return £temporary727
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$21:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 fopen$22:
	; Goto 2
	jmp fopen$2

 fopen$23:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$24:
	; FunctionEnd fopen

section .data

string_r#:
	; Initializer String r
	db "r", 0

section .data

string_w#:
	; Initializer String w
	db "w", 0

section .data

string_a#:
	; Initializer String a
	db "a", 0

section .data

string_r2B#:
	; Initializer String r+
	db "r+", 0

section .data

string_w2B#:
	; Initializer String w+
	db "w+", 0

section .data

string_a2B#:
	; Initializer String a+
	db "a+", 0

section .text

 freopen:
	; Assign handle -1
	mov dword [rbp + 48], -1

 freopen$1:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$2:
	; Parameter pointer mode 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$3:
	; Parameter pointer "r" 84
	mov qword [rbp + 84], string_r#

 freopen$4:
	; Call strcmp 52 0
	mov qword [rbp + 52], freopen$5
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$5:
	; PostCall 52

 freopen$6:
	; GetReturnValue £temporary728

 freopen$7:
	; NotEqual 16 £temporary728 0
	cmp ebx, 0
	jne freopen$16

 freopen$8:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$9:
	; Parameter pointer name 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$10:
	; Parameter unsignedshortint 64 84
	mov word [rbp + 84], 64

 freopen$11:
	; Call fileopen 52 0
	mov qword [rbp + 52], freopen$12
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2208$fileopen

 freopen$12:
	; PostCall 52

 freopen$13:
	; GetReturnValue £temporary730

 freopen$14:
	; Assign handle £temporary730
	mov [rbp + 48], ebx

 freopen$15:
	; Goto 130
	jmp freopen$130

 freopen$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$17:
	; Parameter pointer mode 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$18:
	; Parameter pointer "w" 84
	mov qword [rbp + 84], string_w#

 freopen$19:
	; Call strcmp 52 0
	mov qword [rbp + 52], freopen$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$20:
	; PostCall 52

 freopen$21:
	; GetReturnValue £temporary731

 freopen$22:
	; NotEqual 30 £temporary731 0
	cmp ebx, 0
	jne freopen$30

 freopen$23:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$24:
	; Parameter pointer name 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$25:
	; Call filecreate 52 0
	mov qword [rbp + 52], freopen$26
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2204$filecreate

 freopen$26:
	; PostCall 52

 freopen$27:
	; GetReturnValue £temporary733

 freopen$28:
	; Assign handle £temporary733
	mov [rbp + 48], ebx

 freopen$29:
	; Goto 130
	jmp freopen$130

 freopen$30:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$31:
	; Parameter pointer mode 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$32:
	; Parameter pointer "a" 84
	mov qword [rbp + 84], string_a#

 freopen$33:
	; Call strcmp 52 0
	mov qword [rbp + 52], freopen$34
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$34:
	; PostCall 52

 freopen$35:
	; GetReturnValue £temporary734

 freopen$36:
	; NotEqual 59 £temporary734 0
	cmp ebx, 0
	jne freopen$59

 freopen$37:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$38:
	; Parameter pointer name 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$39:
	; Parameter unsignedshortint 65 84
	mov word [rbp + 84], 65

 freopen$40:
	; Call fileopen 52 0
	mov qword [rbp + 52], freopen$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2208$fileopen

 freopen$41:
	; PostCall 52

 freopen$42:
	; GetReturnValue £temporary736

 freopen$43:
	; Assign handle £temporary736
	mov [rbp + 48], ebx

 freopen$44:
	; Equal 52 handle -1
	cmp dword [rbp + 48], -1
	je freopen$52

 freopen$45:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$46:
	; Parameter pointer stream 76
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$47:
	; Parameter signedint 0 84
	mov dword [rbp + 84], 0

 freopen$48:
	; Parameter signedint 2 88
	mov dword [rbp + 88], 2

 freopen$49:
	; Call fseek 52 0
	mov qword [rbp + 52], freopen$50
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$50:
	; PostCall 52

 freopen$51:
	; Goto 130
	jmp freopen$130

 freopen$52:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$53:
	; Parameter pointer name 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$54:
	; Call filecreate 52 0
	mov qword [rbp + 52], freopen$55
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2204$filecreate

 freopen$55:
	; PostCall 52

 freopen$56:
	; GetReturnValue £temporary739

 freopen$57:
	; Assign handle £temporary739
	mov [rbp + 48], ebx

 freopen$58:
	; Goto 130
	jmp freopen$130

 freopen$59:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$60:
	; Parameter pointer mode 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$61:
	; Parameter pointer "r+" 84
	mov qword [rbp + 84], string_r2B#

 freopen$62:
	; Call strcmp 52 0
	mov qword [rbp + 52], freopen$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$63:
	; PostCall 52

 freopen$64:
	; GetReturnValue £temporary740

 freopen$65:
	; NotEqual 74 £temporary740 0
	cmp ebx, 0
	jne freopen$74

 freopen$66:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$67:
	; Parameter pointer name 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$68:
	; Parameter unsignedshortint 66 84
	mov word [rbp + 84], 66

 freopen$69:
	; Call fileopen 52 0
	mov qword [rbp + 52], freopen$70
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2208$fileopen

 freopen$70:
	; PostCall 52

 freopen$71:
	; GetReturnValue £temporary742

 freopen$72:
	; Assign handle £temporary742
	mov [rbp + 48], ebx

 freopen$73:
	; Goto 130
	jmp freopen$130

 freopen$74:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$75:
	; Parameter pointer mode 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$76:
	; Parameter pointer "w+" 84
	mov qword [rbp + 84], string_w2B#

 freopen$77:
	; Call strcmp 52 0
	mov qword [rbp + 52], freopen$78
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$78:
	; PostCall 52

 freopen$79:
	; GetReturnValue £temporary743

 freopen$80:
	; NotEqual 102 £temporary743 0
	cmp ebx, 0
	jne freopen$102

 freopen$81:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$82:
	; Parameter pointer name 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$83:
	; Call fileexists 52 0
	mov qword [rbp + 52], freopen$84
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fileexists

 freopen$84:
	; PostCall 52

 freopen$85:
	; GetReturnValue £temporary745

 freopen$86:
	; Equal 95 £temporary745 0
	cmp ebx, 0
	je freopen$95

 freopen$87:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$88:
	; Parameter pointer name 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$89:
	; Parameter unsignedshortint 66 84
	mov word [rbp + 84], 66

 freopen$90:
	; Call fileopen 52 0
	mov qword [rbp + 52], freopen$91
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2208$fileopen

 freopen$91:
	; PostCall 52

 freopen$92:
	; GetReturnValue £temporary746

 freopen$93:
	; Assign handle £temporary746
	mov [rbp + 48], ebx

 freopen$94:
	; Goto 130
	jmp freopen$130

 freopen$95:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$96:
	; Parameter pointer name 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$97:
	; Call filecreate 52 0
	mov qword [rbp + 52], freopen$98
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2204$filecreate

 freopen$98:
	; PostCall 52

 freopen$99:
	; GetReturnValue £temporary747

 freopen$100:
	; Assign handle £temporary747
	mov [rbp + 48], ebx

 freopen$101:
	; Goto 130
	jmp freopen$130

 freopen$102:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$103:
	; Parameter pointer mode 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$104:
	; Parameter pointer "a+" 84
	mov qword [rbp + 84], string_a2B#

 freopen$105:
	; Call strcmp 52 0
	mov qword [rbp + 52], freopen$106
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$106:
	; PostCall 52

 freopen$107:
	; GetReturnValue £temporary749

 freopen$108:
	; NotEqual 130 £temporary749 0
	cmp ebx, 0
	jne freopen$130

 freopen$109:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$110:
	; Parameter pointer name 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$111:
	; Parameter unsignedshortint 66 84
	mov word [rbp + 84], 66

 freopen$112:
	; Call fileopen 52 0
	mov qword [rbp + 52], freopen$113
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2208$fileopen

 freopen$113:
	; PostCall 52

 freopen$114:
	; GetReturnValue £temporary751

 freopen$115:
	; Assign handle £temporary751
	mov [rbp + 48], ebx

 freopen$116:
	; Equal 124 handle -1
	cmp dword [rbp + 48], -1
	je freopen$124

 freopen$117:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$118:
	; Parameter pointer stream 76
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$119:
	; Parameter signedint 0 84
	mov dword [rbp + 84], 0

 freopen$120:
	; Parameter signedint 2 88
	mov dword [rbp + 88], 2

 freopen$121:
	; Call fseek 52 0
	mov qword [rbp + 52], freopen$122
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$122:
	; PostCall 52

 freopen$123:
	; Goto 130
	jmp freopen$130

 freopen$124:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$125:
	; Parameter pointer name 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$126:
	; Call filecreate 52 0
	mov qword [rbp + 52], freopen$127
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2204$filecreate

 freopen$127:
	; PostCall 52

 freopen$128:
	; GetReturnValue £temporary754

 freopen$129:
	; Assign handle £temporary754
	mov [rbp + 48], ebx

 freopen$130:
	; Equal 146 handle -1
	cmp dword [rbp + 48], -1
	je freopen$146

 freopen$131:
	; Dereference £temporary756 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$132:
	; Assign £temporary756 -> stream 1
	mov dword [rsi], 1

 freopen$133:
	; Dereference £temporary757 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$134:
	; Assign £temporary757 -> stream handle
	mov eax, [rbp + 48]
	mov [rsi + 4], eax

 freopen$135:
	; Dereference £temporary758 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$136:
	; Assign £temporary758 -> stream 0
	mov dword [rsi + 33], 0

 freopen$137:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$138:
	; Dereference £temporary759 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$139:
	; Parameter pointer £temporary759 -> stream 76
	mov [rbp + 76], rsi
	add qword [rbp + 76], 8

 freopen$140:
	; Parameter pointer name 84
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 freopen$141:
	; Call strcpy 52 0
	mov qword [rbp + 52], freopen$142
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcpy

 freopen$142:
	; PostCall 52

 freopen$143:
	; Dereference £temporary761 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$144:
	; Assign £temporary761 -> stream 0
	mov dword [rsi + 37], 0

 freopen$145:
	; Return stream
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$146:
	; Dereference £temporary762 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$147:
	; Assign £temporary762 -> stream 0
	mov dword [rsi], 0

 freopen$148:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$149:
	; FunctionEnd freopen

section .text

 fflush:
	; NotEqual 22 stream 0
	cmp qword [rbp + 24], 0
	jne fflush$22

 fflush$1:
	; Assign index 0
	mov dword [rbp + 32], 0

 fflush$2:
	; SignedGreaterThanEqual 22 index 20
	cmp dword [rbp + 32], 20
	jge fflush$22

 fflush$3:
	; IntegralToIntegral £temporary767 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fflush$4:
	; UnsignedMultiply £temporary768 £temporary767 41
	xor rdx, rdx
	mul qword [Array_41#]

 fflush$5:
	; BinaryAdd £temporary769 g_fileArray £temporary768
	mov rsi, g_fileArray
	add rsi, rax

 fflush$6:
	; Dereference £temporary766 -> £temporary769 £temporary769 0

 fflush$7:
	; Equal 20 £temporary766.open -> £temporary769 0
	cmp dword [rsi], 0
	je fflush$20

 fflush$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fflush$9:
	; IntegralToIntegral £temporary771 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fflush$10:
	; UnsignedMultiply £temporary772 £temporary771 41
	xor rdx, rdx
	mul qword [Array_41#]

 fflush$11:
	; BinaryAdd £temporary773 g_fileArray £temporary772
	mov rsi, g_fileArray
	add rsi, rax

 fflush$12:
	; Dereference £temporary770 -> £temporary773 £temporary773 0

 fflush$13:
	; Address £temporary774 £temporary770 -> £temporary773

 fflush$14:
	; Parameter pointer £temporary774 60
	mov [rbp + 60], rsi

 fflush$15:
	; Call fflush 36 0
	mov qword [rbp + 36], fflush$16
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fflush

 fflush$16:
	; PostCall 36

 fflush$17:
	; GetReturnValue £temporary775

 fflush$18:
	; NotEqual 20 £temporary775 -1
	cmp ebx, -1
	jne fflush$20

 fflush$19:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$20:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 fflush$21:
	; Goto 2
	jmp fflush$2

 fflush$22:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$23:
	; FunctionEnd fflush

section .text

 fclose:
	; Equal 7 stream 0
	cmp qword [rbp + 24], 0
	je fclose$7

 fclose$1:
	; AssignRegister rax 3
	mov rax, 3

 fclose$2:
	; Dereference £temporary781 -> stream stream 0
	mov rsi, [rbp + 24]

 fclose$3:
	; IntegralToIntegral £temporary782 £temporary781 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fclose$4:
	; AssignRegister rdi £temporary782

 fclose$5:
	; SysCall
	syscall

 fclose$6:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$7:
	; Assign index 0
	mov dword [rbp + 32], 0

 fclose$8:
	; SignedGreaterThanEqual 28 index 20
	cmp dword [rbp + 32], 20
	jge fclose$28

 fclose$9:
	; IntegralToIntegral £temporary786 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fclose$10:
	; UnsignedMultiply £temporary787 £temporary786 41
	xor rdx, rdx
	mul qword [Array_41#]

 fclose$11:
	; BinaryAdd £temporary788 g_fileArray £temporary787
	mov rsi, g_fileArray
	add rsi, rax

 fclose$12:
	; Dereference £temporary785 -> £temporary788 £temporary788 0

 fclose$13:
	; Equal 26 £temporary785.open -> £temporary788 0
	cmp dword [rsi], 0
	je fclose$26

 fclose$14:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fclose$15:
	; IntegralToIntegral £temporary790 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fclose$16:
	; UnsignedMultiply £temporary791 £temporary790 41
	xor rdx, rdx
	mul qword [Array_41#]

 fclose$17:
	; BinaryAdd £temporary792 g_fileArray £temporary791
	mov rsi, g_fileArray
	add rsi, rax

 fclose$18:
	; Dereference £temporary789 -> £temporary792 £temporary792 0

 fclose$19:
	; Address £temporary793 £temporary789 -> £temporary792

 fclose$20:
	; Parameter pointer £temporary793 60
	mov [rbp + 60], rsi

 fclose$21:
	; Call fclose 36 0
	mov qword [rbp + 36], fclose$22
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 fclose$22:
	; PostCall 36

 fclose$23:
	; GetReturnValue £temporary794

 fclose$24:
	; NotEqual 26 £temporary794 -1
	cmp ebx, -1
	jne fclose$26

 fclose$25:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$26:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 fclose$27:
	; Goto 8
	jmp fclose$8

 fclose$28:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$29:
	; FunctionEnd fclose

section .text

 remove:
	; AssignRegister rax 88
	mov rax, 88

 remove$1:
	; IntegralToIntegral £temporary799 name
	mov rdi, [rbp + 24]

 remove$2:
	; AssignRegister rdi £temporary799

 remove$3:
	; SysCall
	syscall

 remove$4:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$5:
	; FunctionEnd remove

section .text

 rename:
	; AssignRegister rax 82
	mov rax, 82

 rename$1:
	; IntegralToIntegral £temporary802 oldName
	mov rdi, [rbp + 24]

 rename$2:
	; AssignRegister rdi £temporary802

 rename$3:
	; IntegralToIntegral £temporary804 newName
	mov rsi, [rbp + 32]

 rename$4:
	; AssignRegister rsi £temporary804

 rename$5:
	; SysCall
	syscall

 rename$6:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$7:
	; FunctionEnd rename

section .text

 setvbuf:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setvbuf$1:
	; FunctionEnd setvbuf

section .text

 setbuf:
	; Empty

 setbuf$1:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setbuf$2:
	; FunctionEnd setbuf

section .text

 fgetc:
	; Assign c 0
	mov byte [rbp + 32], 0

 fgetc$1:
	; PreCall 33 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgetc$2:
	; Address £temporary805 c
	mov rsi, rbp
	add rsi, 32

 fgetc$3:
	; Parameter pointer £temporary805 57
	mov [rbp + 57], rsi

 fgetc$4:
	; Parameter signedint 1 65
	mov dword [rbp + 65], 1

 fgetc$5:
	; Parameter signedint 1 69
	mov dword [rbp + 69], 1

 fgetc$6:
	; Parameter pointer stream 73
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 fgetc$7:
	; Call fread 33 0
	mov qword [rbp + 33], fgetc$8
	mov [rbp + 41], rbp
	add rbp, 33
	jmp fread

 fgetc$8:
	; PostCall 33

 fgetc$9:
	; GetReturnValue £temporary806

 fgetc$10:
	; SignedLessThanEqual 13 £temporary806 0
	cmp ebx, 0
	jle fgetc$13

 fgetc$11:
	; IntegralToIntegral £temporary808 c
	mov bl, [rbp + 32]
	and ebx, 255
	cmp bl, 0
	jge fgetc$12
	neg bl
	neg ebx

 fgetc$12:
	; Return £temporary808
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$13:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$14:
	; FunctionEnd fgetc

section .data

string_25c#:
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
	; BinarySubtract £temporary810 size 1
	mov eax, [rbp + 32]
	dec eax

 fgets$3:
	; SignedGreaterThanEqual 36 count £temporary810
	cmp [rbp + 44], eax
	jge fgets$36

 fgets$4:
	; Assign currChar 0
	mov byte [rbp + 49], 0

 fgets$5:
	; PreCall 50 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgets$6:
	; Parameter pointer stream 74
	mov rax, [rbp + 36]
	mov [rbp + 74], rax

 fgets$7:
	; Parameter pointer "%c" 82
	mov qword [rbp + 82], string_25c#

 fgets$8:
	; Address £temporary812 currChar
	mov rsi, rbp
	add rsi, 49

 fgets$9:
	; Parameter pointer £temporary812 90
	mov [rbp + 90], rsi

 fgets$10:
	; Call fscanf 50 8
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
	; IntegralToIntegral £temporary818 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$15:
	; BinaryAdd £temporary820 text £temporary818
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$16:
	; Dereference £temporary817 -> £temporary820 £temporary820 0

 fgets$17:
	; Assign £temporary817 -> £temporary820 0
	mov byte [rsi], 0

 fgets$18:
	; Goto 36
	jmp fgets$36

 fgets$19:
	; IntegralToIntegral £temporary821 currChar
	mov al, [rbp + 49]
	and eax, 255
	cmp al, 0
	jge fgets$20
	neg al
	neg eax

 fgets$20:
	; NotEqual 26 £temporary821 -1
	cmp eax, -1
	jne fgets$26

 fgets$21:
	; IntegralToIntegral £temporary824 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$22:
	; BinaryAdd £temporary826 text £temporary824
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$23:
	; Dereference £temporary823 -> £temporary826 £temporary826 0

 fgets$24:
	; Assign £temporary823 -> £temporary826 0
	mov byte [rsi], 0

 fgets$25:
	; Goto 36
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
	; Assign £temporary830 count
	mov eax, [rbp + 44]

 fgets$29:
	; BinaryAdd count count 1
	inc dword [rbp + 44]

 fgets$30:
	; IntegralToIntegral £temporary832 £temporary830
	mov rbx, 4294967295
	and rax, rbx

 fgets$31:
	; BinaryAdd £temporary834 text £temporary832
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$32:
	; Dereference £temporary831 -> £temporary834 £temporary834 0

 fgets$33:
	; Assign £temporary831 -> £temporary834 currChar
	mov al, [rbp + 49]
	mov [rsi], al

 fgets$34:
	; Assign prevChar currChar
	mov al, [rbp + 49]
	mov [rbp + 48], al

 fgets$35:
	; Goto 2
	jmp fgets$2

 fgets$36:
	; Return text
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgets$37:
	; FunctionEnd fgets

section .text

 fputs:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputs$1:
	; Parameter pointer s 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 fputs$2:
	; Call strlen 40 0
	mov qword [rbp + 40], fputs$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp strlen

 fputs$3:
	; PostCall 40

 fputs$4:
	; GetReturnValue £temporary836

 fputs$5:
	; BinaryAdd size £temporary836 1
	inc ebx
	mov [rbp + 40], ebx

 fputs$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputs$7:
	; Parameter pointer s 68
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fputs$8:
	; Parameter signedint size 76
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

 fputs$9:
	; Parameter signedint 1 80
	mov dword [rbp + 80], 1

 fputs$10:
	; Parameter pointer stream 84
	mov rax, [rbp + 32]
	mov [rbp + 84], rax

 fputs$11:
	; Call fwrite 44 0
	mov qword [rbp + 44], fputs$12
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fwrite

 fputs$12:
	; PostCall 44

 fputs$13:
	; GetReturnValue £temporary839

 fputs$14:
	; NotEqual 17 £temporary839 size
	cmp ebx, [rbp + 40]
	jne fputs$17

 fputs$15:
	; Assign £temporary841 0
	mov ebx, 0

 fputs$16:
	; Goto 18
	jmp fputs$18

 fputs$17:
	; Assign £temporary841 -1
	mov ebx, -1

 fputs$18:
	; Return £temporary841
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fputs$19:
	; FunctionEnd fputs

section .text

 getchar:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 getchar$1:
	; Parameter pointer stdin 48
	mov rax, [stdin]
	mov [rbp + 48], rax

 getchar$2:
	; Call fgetc 24 0
	mov qword [rbp + 24], getchar$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fgetc

 getchar$3:
	; PostCall 24

 getchar$4:
	; GetReturnValue £temporary842

 getchar$5:
	; Return £temporary842
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getchar$6:
	; FunctionEnd getchar

section .text

 gets:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gets$1:
	; Parameter pointer s 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 gets$2:
	; Parameter signedint -1 64
	mov dword [rbp + 64], -1

 gets$3:
	; Parameter pointer stdin 68
	mov rax, [stdin]
	mov [rbp + 68], rax

 gets$4:
	; Call fgets 32 0
	mov qword [rbp + 32], gets$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fgets

 gets$5:
	; PostCall 32

 gets$6:
	; GetReturnValue £temporary843

 gets$7:
	; Equal 21 £temporary843 0
	cmp rbx, 0
	je gets$21

 gets$8:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gets$9:
	; Parameter pointer s 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 gets$10:
	; Call strlen 32 0
	mov qword [rbp + 32], gets$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strlen

 gets$11:
	; PostCall 32

 gets$12:
	; GetReturnValue £temporary845

 gets$13:
	; Assign size £temporary845
	mov [rbp + 32], ebx

 gets$14:
	; SignedLessThanEqual 20 size 0
	cmp dword [rbp + 32], 0
	jle gets$20

 gets$15:
	; BinarySubtract £temporary847 size 1
	mov eax, [rbp + 32]
	dec eax

 gets$16:
	; IntegralToIntegral £temporary849 £temporary847
	mov rbx, 4294967295
	and rax, rbx

 gets$17:
	; BinaryAdd £temporary851 s £temporary849
	mov rsi, [rbp + 24]
	add rsi, rax

 gets$18:
	; Dereference £temporary848 -> £temporary851 £temporary851 0

 gets$19:
	; Assign £temporary848 -> £temporary851 0
	mov byte [rsi], 0

 gets$20:
	; Return s
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$21:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$22:
	; FunctionEnd gets

section .text

 puts:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 puts$1:
	; Parameter pointer s 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 puts$2:
	; Parameter pointer stdout 64
	mov rax, [stdout]
	mov [rbp + 64], rax

 puts$3:
	; Call fputs 32 0
	mov qword [rbp + 32], puts$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fputs

 puts$4:
	; PostCall 32

 puts$5:
	; GetReturnValue £temporary852

 puts$6:
	; Equal 14 £temporary852 0
	cmp ebx, 0
	je puts$14

 puts$7:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 puts$8:
	; Parameter signedint 10 56
	mov dword [rbp + 56], 10

 puts$9:
	; Parameter pointer stdout 60
	mov rax, [stdout]
	mov [rbp + 60], rax

 puts$10:
	; Call fputc 32 0
	mov qword [rbp + 32], puts$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fputc

 puts$11:
	; PostCall 32

 puts$12:
	; GetReturnValue £temporary854

 puts$13:
	; Return £temporary854
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$14:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$15:
	; FunctionEnd puts

section .text

 ungetc:
	; Dereference £temporary855 -> stream stream 0
	mov rsi, [rbp + 28]

 ungetc$1:
	; IntegralToIntegral £temporary856 £temporary855 -> stream
	mov al, [rsi + 24]
	and eax, 255
	cmp al, 0
	jge ungetc$2
	neg al
	neg eax

 ungetc$2:
	; Equal 6 £temporary856 -1
	cmp eax, -1
	je ungetc$6

 ungetc$3:
	; Dereference £temporary858 -> stream stream 0
	mov rsi, [rbp + 28]

 ungetc$4:
	; IntegralToIntegral £temporary859 c
	mov eax, [rbp + 24]
	cmp eax, 0
	jge ungetc$5
	neg eax
	neg al

 ungetc$5:
	; Assign £temporary858 -> stream £temporary859
	mov [rsi + 24], al

 ungetc$6:
	; Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ungetc$7:
	; FunctionEnd ungetc

section .text

 fread:
	; AssignRegister rax 0
	mov rax, 0

 fread$1:
	; Dereference £temporary862 -> stream stream 0
	mov rsi, [rbp + 40]

 fread$2:
	; IntegralToIntegral £temporary863 £temporary862 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fread$3:
	; AssignRegister rdi £temporary863

 fread$4:
	; IntegralToIntegral £temporary865 ptr
	mov rsi, [rbp + 24]

 fread$5:
	; AssignRegister rsi £temporary865

 fread$6:
	; SignedMultiply £temporary867 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fread$7:
	; IntegralToIntegral £temporary868 £temporary867
	mov rbx, 4294967295
	and rax, rbx

 fread$8:
	; AssignRegister rdx £temporary868
	mov rdx, rax

 fread$9:
	; SysCall
	syscall

 fread$10:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fread$11:
	; FunctionEnd fread

section .text

 fwrite:
	; AssignRegister rax 0
	mov rax, 0

 fwrite$1:
	; Dereference £temporary871 -> stream stream 0
	mov rsi, [rbp + 40]

 fwrite$2:
	; IntegralToIntegral £temporary872 £temporary871 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fwrite$3:
	; AssignRegister rdi £temporary872

 fwrite$4:
	; IntegralToIntegral £temporary874 ptr
	mov rsi, [rbp + 24]

 fwrite$5:
	; AssignRegister rsi £temporary874

 fwrite$6:
	; SignedMultiply £temporary876 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fwrite$7:
	; IntegralToIntegral £temporary877 £temporary876
	mov rbx, 4294967295
	and rax, rbx

 fwrite$8:
	; AssignRegister rdx £temporary877
	mov rdx, rax

 fwrite$9:
	; SysCall
	syscall

 fwrite$10:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fwrite$11:
	; FunctionEnd fwrite

section .text

 fseek:
	; AssignRegister rax 8
	mov rax, 8

 fseek$1:
	; Dereference £temporary880 -> stream stream 0
	mov rsi, [rbp + 24]

 fseek$2:
	; IntegralToIntegral £temporary881 £temporary880 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fseek$3:
	; AssignRegister rdi £temporary881

 fseek$4:
	; IntegralToIntegral £temporary883 offset
	mov esi, [rbp + 32]
	mov rbx, 4294967295
	and rsi, rbx

 fseek$5:
	; AssignRegister rsi £temporary883

 fseek$6:
	; IntegralToIntegral £temporary885 origin
	mov edx, [rbp + 36]
	mov rbx, 4294967295
	and rdx, rbx

 fseek$7:
	; AssignRegister rdx £temporary885

 fseek$8:
	; SysCall
	syscall

 fseek$9:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fseek$10:
	; FunctionEnd fseek

section .text

 ftell:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ftell$1:
	; Parameter pointer stream 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 ftell$2:
	; Parameter signedint 0 64
	mov dword [rbp + 64], 0

 ftell$3:
	; Parameter signedint 1 68
	mov dword [rbp + 68], 1

 ftell$4:
	; Call fseek 32 0
	mov qword [rbp + 32], ftell$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 ftell$5:
	; PostCall 32

 ftell$6:
	; GetReturnValue £temporary886

 ftell$7:
	; Return £temporary886
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ftell$8:
	; FunctionEnd ftell

section .text

 rewind:
	; Empty

 rewind$1:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rewind$2:
	; FunctionEnd rewind

section .text

 fgetpos:
	; Dereference £temporary889 -> ptr ptr 0
	mov rsi, [rbp + 32]

 fgetpos$1:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 40], rsi

 fgetpos$2:
	; Parameter pointer stream 64
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 fgetpos$3:
	; Call ftell 40 0
	mov qword [rbp + 48], fgetpos$4
	mov [rbp + 56], rbp
	add rbp, 48
	jmp ftell

 fgetpos$4:
	; PostCall 40
	mov rsi, [rbp + 40]

 fgetpos$5:
	; GetReturnValue £temporary890

 fgetpos$6:
	; IntegralToIntegral £temporary891 £temporary890

 fgetpos$7:
	; Assign £temporary889 -> ptr £temporary891
	mov [rsi], ebx

 fgetpos$8:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetpos$9:
	; FunctionEnd fgetpos

section .text

 fsetpos:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fsetpos$1:
	; Parameter pointer stream 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 fsetpos$2:
	; Dereference £temporary892 -> ptr ptr 0
	mov rsi, [rbp + 32]

 fsetpos$3:
	; Parameter signedint £temporary892 -> ptr 72
	mov eax, [rsi]
	mov [rbp + 72], eax

 fsetpos$4:
	; Parameter signedint 0 76
	mov dword [rbp + 76], 0

 fsetpos$5:
	; Call fseek 40 0
	mov qword [rbp + 40], fsetpos$6
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fseek

 fsetpos$6:
	; PostCall 40

 fsetpos$7:
	; GetReturnValue £temporary893

 fsetpos$8:
	; IntegralToIntegral £temporary894 £temporary893

 fsetpos$9:
	; Return £temporary894
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fsetpos$10:
	; FunctionEnd fsetpos

section .text

 clearerr:
	; Dereference £temporary895 -> stream stream 0
	mov rsi, [rbp + 24]

 clearerr$1:
	; Assign errno 0
	mov dword [errno], 0

 clearerr$2:
	; Assign £temporary895 -> stream errno
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
	; Parameter pointer stream 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 feof$2:
	; Parameter signedint 0 64
	mov dword [rbp + 64], 0

 feof$3:
	; Parameter signedint 1 68
	mov dword [rbp + 68], 1

 feof$4:
	; Call fseek 32 0
	mov qword [rbp + 32], feof$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 feof$5:
	; PostCall 32

 feof$6:
	; GetReturnValue £temporary896

 feof$7:
	; IntegralToIntegral £temporary897 £temporary896
	mov rax, 4294967295
	and rbx, rax

 feof$8:
	; Assign currPosition £temporary897
	mov [rbp + 32], rbx

 feof$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$10:
	; Parameter pointer stream 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 feof$11:
	; Parameter signedint 0 72
	mov dword [rbp + 72], 0

 feof$12:
	; Parameter signedint 2 76
	mov dword [rbp + 76], 2

 feof$13:
	; Call fseek 40 0
	mov qword [rbp + 40], feof$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fseek

 feof$14:
	; PostCall 40

 feof$15:
	; GetReturnValue £temporary898

 feof$16:
	; IntegralToIntegral £temporary899 £temporary898
	mov rax, 4294967295
	and rbx, rax

 feof$17:
	; Assign lastPosition £temporary899
	mov [rbp + 40], rbx

 feof$18:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$19:
	; Parameter pointer stream 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 feof$20:
	; IntegralToIntegral £temporary900 currPosition
	mov rax, [rbp + 32]

 feof$21:
	; Parameter signedint £temporary900 80
	mov [rbp + 80], eax

 feof$22:
	; Parameter signedint 0 84
	mov dword [rbp + 84], 0

 feof$23:
	; Call fseek 48 0
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
	; Assign £temporary903 1
	mov eax, 1

 feof$27:
	; Goto 29
	jmp feof$29

 feof$28:
	; Assign £temporary903 0
	mov eax, 0

 feof$29:
	; Assign endOfFile £temporary903
	mov [rbp + 48], eax

 feof$30:
	; Return endOfFile
	mov ebx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 feof$31:
	; FunctionEnd feof

section .text

 ferror:
	; Dereference £temporary904 -> stream stream 0
	mov rsi, [rbp + 24]

 ferror$1:
	; Return £temporary904 -> stream
	mov ebx, [rsi + 25]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ferror$2:
	; FunctionEnd ferror

section .data

string_25s3A2025s2E0A#:
	; Initializer String %s: %s.\n
	db "%s: %s.", 10, 0

section .text

 perror:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$1:
	; Parameter pointer "%s: %s.\n" 56
	mov qword [rbp + 56], string_25s3A2025s2E0A#

 perror$2:
	; Parameter pointer s 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 perror$3:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$4:
	; Parameter signedint errno 96
	mov eax, [errno]
	mov [rbp + 96], eax

 perror$5:
	; Call strerror 72 0
	mov qword [rbp + 72], perror$6
	mov [rbp + 80], rbp
	add rbp, 72
	jmp strerror

 perror$6:
	; PostCall 72

 perror$7:
	; GetReturnValue £temporary905

 perror$8:
	; Parameter pointer £temporary905 72
	mov [rbp + 72], rbx

 perror$9:
	; Call printf 32 16
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
