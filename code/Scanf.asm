	global g_inStatus
	global g_inChars
	global g_inDevice
	global g_inCount
	global scanChar
	global unscanChar
	global scanPattern
	global scanString
	global scanLongInt
	global scanUnsignedLongInt
	global scanLongDouble
	global scanFormat
	global scanf
	global vscanf
	global fscanf
	global vfscanf
	global sscanf
	global vsscanf

	extern isspace
	extern strchr
	extern isdigit
	extern islower
	extern isupper
	extern tolower
	extern pow
	extern printf
	extern stdin
	extern $StackTop


section .data

g_inStatus:
	; InitializerZero 4
	times 4 db 0

section .data

g_inChars:
	; InitializerZero 4
	times 4 db 0

section .data

g_inDevice:
	; InitializerZero 8
	times 8 db 0

section .data

g_inCount:
	; InitializerZero 4
	times 4 db 0

section .text

 scanChar:
	; Assign c 0
	mov byte [rbp + 24], 0

 scanChar$1:
	; Case 5 g_inStatus 0
	mov eax, [g_inStatus]
	cmp eax, 0
	je scanChar$5

 scanChar$2:
	; Case 20 g_inStatus 1
	cmp eax, 1
	je scanChar$20

 scanChar$3:
	; CaseEnd g_inStatus

 scanChar$4:
	; Goto 28
	jmp scanChar$28

 scanChar$5:
	; IntegralToIntegral £temporary960 g_inDevice
	mov rax, [g_inDevice]

 scanChar$6:
	; Assign stream £temporary960
	mov [rbp + 25], rax

 scanChar$7:
	; Dereference £temporary961 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$8:
	; Assign handle £temporary961 -> stream
	mov eax, [rsi + 4]
	mov [rbp + 33], eax

 scanChar$9:
	; AssignRegister rax 0
	mov rax, 0

 scanChar$10:
	; Dereference £temporary964 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$11:
	; IntegralToIntegral £temporary965 £temporary964 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 scanChar$12:
	; AssignRegister rdi £temporary965

 scanChar$13:
	; Address £temporary967 c
	mov rsi, rbp
	add rsi, 24

 scanChar$14:
	; IntegralToIntegral £temporary968 £temporary967

 scanChar$15:
	; AssignRegister rsi £temporary968

 scanChar$16:
	; AssignRegister rdx 1
	mov rdx, 1

 scanChar$17:
	; SysCall
	syscall

 scanChar$18:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanChar$19:
	; Return c
	mov bl, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$20:
	; IntegralToIntegral £temporary971 g_inDevice
	mov rax, [g_inDevice]

 scanChar$21:
	; Assign inString £temporary971
	mov [rbp + 37], rax

 scanChar$22:
	; Assign £temporary972 g_inChars
	mov eax, [g_inChars]

 scanChar$23:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanChar$24:
	; IntegralToIntegral £temporary974 £temporary972
	mov rbx, 4294967295
	and rax, rbx

 scanChar$25:
	; BinaryAdd £temporary976 inString £temporary974
	mov rsi, [rbp + 37]
	add rsi, rax

 scanChar$26:
	; Dereference £temporary973 -> £temporary976 £temporary976 0

 scanChar$27:
	; Return £temporary973 -> £temporary976
	mov bl, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$28:
	; Return 0
	mov bl, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$29:
	; FunctionEnd scanChar

section .text

 unscanChar:
	; Case 4 g_inStatus 0
	mov eax, [g_inStatus]
	cmp eax, 0
	je unscanChar$4

 unscanChar$1:
	; Case 6 g_inStatus 1
	cmp eax, 1
	je unscanChar$6

 unscanChar$2:
	; CaseEnd g_inStatus

 unscanChar$3:
	; Goto 7
	jmp unscanChar$7

 unscanChar$4:
	; BinarySubtract g_inChars g_inChars 1
	dec dword [g_inChars]

 unscanChar$5:
	; Goto 7
	jmp unscanChar$7

 unscanChar$6:
	; BinarySubtract g_inChars g_inChars 1
	dec dword [g_inChars]

 unscanChar$7:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 unscanChar$8:
	; FunctionEnd unscanChar

section .text

 scanPattern:
	; Assign index 0
	mov dword [rbp + 44], 0

 scanPattern$1:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$2:
	; Call scanChar 48 0
	mov qword [rbp + 48], scanPattern$3
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanChar

 scanPattern$3:
	; PostCall 48

 scanPattern$4:
	; GetReturnValue £temporary980

 scanPattern$5:
	; Assign input £temporary980
	mov [rbp + 48], bl

 scanPattern$6:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$7:
	; IntegralToIntegral £temporary981 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$8
	neg al
	neg eax

 scanPattern$8:
	; Parameter signedint £temporary981 73
	mov [rbp + 73], eax

 scanPattern$9:
	; Call isspace 49 0
	mov qword [rbp + 49], scanPattern$10
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isspace

 scanPattern$10:
	; PostCall 49

 scanPattern$11:
	; GetReturnValue £temporary982

 scanPattern$12:
	; Equal 19 £temporary982 0
	cmp ebx, 0
	je scanPattern$19

 scanPattern$13:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$14:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanPattern$15
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanPattern$15:
	; PostCall 49

 scanPattern$16:
	; GetReturnValue £temporary983

 scanPattern$17:
	; Assign input £temporary983
	mov [rbp + 48], bl

 scanPattern$18:
	; Goto 6
	jmp scanPattern$6

 scanPattern$19:
	; Equal 55 string 0
	cmp qword [rbp + 24], 0
	je scanPattern$55

 scanPattern$20:
	; NotEqual 29 not 0
	cmp dword [rbp + 40], 0
	jne scanPattern$29

 scanPattern$21:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$22:
	; Parameter pointer pattern 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

 scanPattern$23:
	; IntegralToIntegral £temporary988 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$24
	neg al
	neg eax

 scanPattern$24:
	; Parameter signedint £temporary988 81
	mov [rbp + 81], eax

 scanPattern$25:
	; Call strchr 49 0
	mov qword [rbp + 49], scanPattern$26
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

 scanPattern$26:
	; PostCall 49

 scanPattern$27:
	; GetReturnValue £temporary989

 scanPattern$28:
	; NotEqual 38 £temporary989 0
	cmp rbx, 0
	jne scanPattern$38

 scanPattern$29:
	; Equal 50 not 0
	cmp dword [rbp + 40], 0
	je scanPattern$50

 scanPattern$30:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$31:
	; Parameter pointer pattern 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

 scanPattern$32:
	; IntegralToIntegral £temporary992 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$33
	neg al
	neg eax

 scanPattern$33:
	; Parameter signedint £temporary992 81
	mov [rbp + 81], eax

 scanPattern$34:
	; Call strchr 49 0
	mov qword [rbp + 49], scanPattern$35
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

 scanPattern$35:
	; PostCall 49

 scanPattern$36:
	; GetReturnValue £temporary993

 scanPattern$37:
	; NotEqual 50 £temporary993 0
	cmp rbx, 0
	jne scanPattern$50

 scanPattern$38:
	; Assign £temporary999 index
	mov eax, [rbp + 44]

 scanPattern$39:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 scanPattern$40:
	; IntegralToIntegral £temporary1001 £temporary999
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$41:
	; BinaryAdd £temporary1003 string £temporary1001
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$42:
	; Dereference £temporary1000 -> £temporary1003 £temporary1003 0

 scanPattern$43:
	; Assign £temporary1000 -> £temporary1003 input
	mov al, [rbp + 48]
	mov [rsi], al

 scanPattern$44:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$45:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanPattern$46
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanPattern$46:
	; PostCall 49

 scanPattern$47:
	; GetReturnValue £temporary1004

 scanPattern$48:
	; Assign input £temporary1004
	mov [rbp + 48], bl

 scanPattern$49:
	; Goto 20
	jmp scanPattern$20

 scanPattern$50:
	; IntegralToIntegral £temporary1006 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$51:
	; BinaryAdd £temporary1008 string £temporary1006
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$52:
	; Dereference £temporary1005 -> £temporary1008 £temporary1008 0

 scanPattern$53:
	; Assign £temporary1005 -> £temporary1008 0
	mov byte [rsi], 0

 scanPattern$54:
	; Goto 79
	jmp scanPattern$79

 scanPattern$55:
	; NotEqual 64 not 0
	cmp dword [rbp + 40], 0
	jne scanPattern$64

 scanPattern$56:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$57:
	; Parameter pointer pattern 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

 scanPattern$58:
	; IntegralToIntegral £temporary1011 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$59
	neg al
	neg eax

 scanPattern$59:
	; Parameter signedint £temporary1011 81
	mov [rbp + 81], eax

 scanPattern$60:
	; Call strchr 49 0
	mov qword [rbp + 49], scanPattern$61
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

 scanPattern$61:
	; PostCall 49

 scanPattern$62:
	; GetReturnValue £temporary1012

 scanPattern$63:
	; NotEqual 73 £temporary1012 0
	cmp rbx, 0
	jne scanPattern$73

 scanPattern$64:
	; Equal 79 not 0
	cmp dword [rbp + 40], 0
	je scanPattern$79

 scanPattern$65:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$66:
	; Parameter pointer pattern 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

 scanPattern$67:
	; IntegralToIntegral £temporary1015 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$68
	neg al
	neg eax

 scanPattern$68:
	; Parameter signedint £temporary1015 81
	mov [rbp + 81], eax

 scanPattern$69:
	; Call strchr 49 0
	mov qword [rbp + 49], scanPattern$70
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

 scanPattern$70:
	; PostCall 49

 scanPattern$71:
	; GetReturnValue £temporary1016

 scanPattern$72:
	; NotEqual 79 £temporary1016 0
	cmp rbx, 0
	jne scanPattern$79

 scanPattern$73:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$74:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanPattern$75
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanPattern$75:
	; PostCall 49

 scanPattern$76:
	; GetReturnValue £temporary1022

 scanPattern$77:
	; Assign input £temporary1022
	mov [rbp + 48], bl

 scanPattern$78:
	; Goto 55
	jmp scanPattern$55

 scanPattern$79:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanPattern$80:
	; FunctionEnd scanPattern

section .text

 scanString:
	; Assign index 0
	mov dword [rbp + 36], 0

 scanString$1:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$2:
	; Call scanChar 40 0
	mov qword [rbp + 40], scanString$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp scanChar

 scanString$3:
	; PostCall 40

 scanString$4:
	; GetReturnValue £temporary1023

 scanString$5:
	; Assign input £temporary1023
	mov [rbp + 40], bl

 scanString$6:
	; Assign found 0
	mov dword [rbp + 41], 0

 scanString$7:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$8:
	; IntegralToIntegral £temporary1024 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$9
	neg al
	neg eax

 scanString$9:
	; Parameter signedint £temporary1024 69
	mov [rbp + 69], eax

 scanString$10:
	; Call isspace 45 0
	mov qword [rbp + 45], scanString$11
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$11:
	; PostCall 45

 scanString$12:
	; GetReturnValue £temporary1025

 scanString$13:
	; Equal 20 £temporary1025 0
	cmp ebx, 0
	je scanString$20

 scanString$14:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$15:
	; Call scanChar 45 0
	mov qword [rbp + 45], scanString$16
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$16:
	; PostCall 45

 scanString$17:
	; GetReturnValue £temporary1026

 scanString$18:
	; Assign input £temporary1026
	mov [rbp + 40], bl

 scanString$19:
	; Goto 7
	jmp scanString$7

 scanString$20:
	; Equal 86 string 0
	cmp qword [rbp + 24], 0
	je scanString$86

 scanString$21:
	; NotEqual 52 precision 0
	cmp dword [rbp + 32], 0
	jne scanString$52

 scanString$22:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$23:
	; IntegralToIntegral £temporary1030 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$24
	neg al
	neg eax

 scanString$24:
	; Parameter signedint £temporary1030 69
	mov [rbp + 69], eax

 scanString$25:
	; Call isspace 45 0
	mov qword [rbp + 45], scanString$26
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$26:
	; PostCall 45

 scanString$27:
	; GetReturnValue £temporary1031

 scanString$28:
	; NotEqual 46 £temporary1031 0
	cmp ebx, 0
	jne scanString$46

 scanString$29:
	; IntegralToIntegral £temporary1034 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$30
	neg al
	neg eax

 scanString$30:
	; Equal 46 £temporary1034 -1
	cmp eax, -1
	je scanString$46

 scanString$31:
	; Equal 46 input 10
	cmp byte [rbp + 40], 10
	je scanString$46

 scanString$32:
	; Assign £temporary1039 index
	mov eax, [rbp + 36]

 scanString$33:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$34:
	; IntegralToIntegral £temporary1041 £temporary1039
	mov rbx, 4294967295
	and rax, rbx

 scanString$35:
	; BinaryAdd £temporary1043 string £temporary1041
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$36:
	; Dereference £temporary1040 -> £temporary1043 £temporary1043 0

 scanString$37:
	; Assign £temporary1040 -> £temporary1043 input
	mov al, [rbp + 40]
	mov [rsi], al

 scanString$38:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$39:
	; Call scanChar 45 0
	mov qword [rbp + 45], scanString$40
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$40:
	; PostCall 45

 scanString$41:
	; GetReturnValue £temporary1044

 scanString$42:
	; Assign input £temporary1044
	mov [rbp + 40], bl

 scanString$43:
	; Assign found 1
	mov dword [rbp + 41], 1

 scanString$44:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$45:
	; Goto 22
	jmp scanString$22

 scanString$46:
	; IntegralToIntegral £temporary1047 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$47:
	; BinaryAdd £temporary1049 string £temporary1047
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$48:
	; Dereference £temporary1046 -> £temporary1049 £temporary1049 0

 scanString$49:
	; Assign £temporary1046 -> £temporary1049 0
	mov byte [rsi], 0

 scanString$50:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$51:
	; Goto 130
	jmp scanString$130

 scanString$52:
	; Assign £temporary1051 precision
	mov eax, [rbp + 32]

 scanString$53:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$54:
	; SignedLessThanEqual 79 £temporary1051 0
	cmp eax, 0
	jle scanString$79

 scanString$55:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$56:
	; IntegralToIntegral £temporary1053 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$57
	neg al
	neg eax

 scanString$57:
	; Parameter signedint £temporary1053 69
	mov [rbp + 69], eax

 scanString$58:
	; Call isspace 45 0
	mov qword [rbp + 45], scanString$59
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$59:
	; PostCall 45

 scanString$60:
	; GetReturnValue £temporary1054

 scanString$61:
	; NotEqual 79 £temporary1054 0
	cmp ebx, 0
	jne scanString$79

 scanString$62:
	; IntegralToIntegral £temporary1057 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$63
	neg al
	neg eax

 scanString$63:
	; Equal 79 £temporary1057 -1
	cmp eax, -1
	je scanString$79

 scanString$64:
	; Equal 79 input 10
	cmp byte [rbp + 40], 10
	je scanString$79

 scanString$65:
	; Assign £temporary1063 index
	mov eax, [rbp + 36]

 scanString$66:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$67:
	; IntegralToIntegral £temporary1065 £temporary1063
	mov rbx, 4294967295
	and rax, rbx

 scanString$68:
	; BinaryAdd £temporary1067 string £temporary1065
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$69:
	; Dereference £temporary1064 -> £temporary1067 £temporary1067 0

 scanString$70:
	; Assign £temporary1064 -> £temporary1067 input
	mov al, [rbp + 40]
	mov [rsi], al

 scanString$71:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$72:
	; Call scanChar 45 0
	mov qword [rbp + 45], scanString$73
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$73:
	; PostCall 45

 scanString$74:
	; GetReturnValue £temporary1068

 scanString$75:
	; Assign input £temporary1068
	mov [rbp + 40], bl

 scanString$76:
	; Assign found 1
	mov dword [rbp + 41], 1

 scanString$77:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$78:
	; Goto 52
	jmp scanString$52

 scanString$79:
	; SignedLessThanEqual 130 precision 0
	cmp dword [rbp + 32], 0
	jle scanString$130

 scanString$80:
	; IntegralToIntegral £temporary1072 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$81:
	; BinaryAdd £temporary1074 string £temporary1072
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$82:
	; Dereference £temporary1071 -> £temporary1074 £temporary1074 0

 scanString$83:
	; Assign £temporary1071 -> £temporary1074 0
	mov byte [rsi], 0

 scanString$84:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$85:
	; Goto 130
	jmp scanString$130

 scanString$86:
	; NotEqual 107 precision 0
	cmp dword [rbp + 32], 0
	jne scanString$107

 scanString$87:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$88:
	; IntegralToIntegral £temporary1077 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$89
	neg al
	neg eax

 scanString$89:
	; Parameter signedint £temporary1077 69
	mov [rbp + 69], eax

 scanString$90:
	; Call isspace 45 0
	mov qword [rbp + 45], scanString$91
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$91:
	; PostCall 45

 scanString$92:
	; GetReturnValue £temporary1078

 scanString$93:
	; NotEqual 105 £temporary1078 0
	cmp ebx, 0
	jne scanString$105

 scanString$94:
	; IntegralToIntegral £temporary1081 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$95
	neg al
	neg eax

 scanString$95:
	; Equal 105 £temporary1081 -1
	cmp eax, -1
	je scanString$105

 scanString$96:
	; Equal 105 input 10
	cmp byte [rbp + 40], 10
	je scanString$105

 scanString$97:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$98:
	; Call scanChar 45 0
	mov qword [rbp + 45], scanString$99
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$99:
	; PostCall 45

 scanString$100:
	; GetReturnValue £temporary1086

 scanString$101:
	; Assign input £temporary1086
	mov [rbp + 40], bl

 scanString$102:
	; Assign found 1
	mov dword [rbp + 41], 1

 scanString$103:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$104:
	; Goto 87
	jmp scanString$87

 scanString$105:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$106:
	; Goto 130
	jmp scanString$130

 scanString$107:
	; Assign £temporary1089 precision
	mov eax, [rbp + 32]

 scanString$108:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$109:
	; SignedLessThanEqual 128 £temporary1089 0
	cmp eax, 0
	jle scanString$128

 scanString$110:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$111:
	; IntegralToIntegral £temporary1091 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$112
	neg al
	neg eax

 scanString$112:
	; Parameter signedint £temporary1091 69
	mov [rbp + 69], eax

 scanString$113:
	; Call isspace 45 0
	mov qword [rbp + 45], scanString$114
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$114:
	; PostCall 45

 scanString$115:
	; GetReturnValue £temporary1092

 scanString$116:
	; NotEqual 128 £temporary1092 0
	cmp ebx, 0
	jne scanString$128

 scanString$117:
	; IntegralToIntegral £temporary1095 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$118
	neg al
	neg eax

 scanString$118:
	; Equal 128 £temporary1095 -1
	cmp eax, -1
	je scanString$128

 scanString$119:
	; Equal 128 input 10
	cmp byte [rbp + 40], 10
	je scanString$128

 scanString$120:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$121:
	; Call scanChar 45 0
	mov qword [rbp + 45], scanString$122
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$122:
	; PostCall 45

 scanString$123:
	; GetReturnValue £temporary1101

 scanString$124:
	; Assign input £temporary1101
	mov [rbp + 40], bl

 scanString$125:
	; Assign found 1
	mov dword [rbp + 41], 1

 scanString$126:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$127:
	; Goto 107
	jmp scanString$107

 scanString$128:
	; SignedLessThanEqual 130 precision 0
	cmp dword [rbp + 32], 0
	jle scanString$130

 scanString$129:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$130:
	; Equal 132 found 0
	cmp dword [rbp + 41], 0
	je scanString$132

 scanString$131:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanString$132:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanString$133:
	; FunctionEnd scanString

section .text

 @2888$isDigitInBase:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2888$isDigitInBase$1:
	; IntegralToIntegral £temporary1107 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2888$isDigitInBase$2
	neg al
	neg eax

 @2888$isDigitInBase$2:
	; Parameter signedint £temporary1107 53
	mov [rbp + 53], eax

 @2888$isDigitInBase$3:
	; Call isdigit 29 0
	mov qword [rbp + 29], @2888$isDigitInBase$4
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isdigit

 @2888$isDigitInBase$4:
	; PostCall 29

 @2888$isDigitInBase$5:
	; GetReturnValue £temporary1108

 @2888$isDigitInBase$6:
	; Equal 16 £temporary1108 0
	cmp ebx, 0
	je @2888$isDigitInBase$16

 @2888$isDigitInBase$7:
	; BinarySubtract £temporary1109 c 48
	mov al, [rbp + 24]
	sub al, 48

 @2888$isDigitInBase$8:
	; IntegralToIntegral £temporary1110 £temporary1109
	and eax, 255
	cmp al, 0
	jge @2888$isDigitInBase$9
	neg al
	neg eax

 @2888$isDigitInBase$9:
	; Assign value £temporary1110
	mov [rbp + 29], eax

 @2888$isDigitInBase$10:
	; SignedLessThan 14 value 0
	cmp dword [rbp + 29], 0
	jl @2888$isDigitInBase$14

 @2888$isDigitInBase$11:
	; SignedGreaterThanEqual 14 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @2888$isDigitInBase$14

 @2888$isDigitInBase$12:
	; Assign £temporary1114 1
	mov ebx, 1

 @2888$isDigitInBase$13:
	; Goto 15
	jmp @2888$isDigitInBase$15

 @2888$isDigitInBase$14:
	; Assign £temporary1114 0
	mov ebx, 0

 @2888$isDigitInBase$15:
	; Return £temporary1114
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2888$isDigitInBase$16:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2888$isDigitInBase$17:
	; IntegralToIntegral £temporary1115 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2888$isDigitInBase$18
	neg al
	neg eax

 @2888$isDigitInBase$18:
	; Parameter signedint £temporary1115 53
	mov [rbp + 53], eax

 @2888$isDigitInBase$19:
	; Call islower 29 0
	mov qword [rbp + 29], @2888$isDigitInBase$20
	mov [rbp + 37], rbp
	add rbp, 29
	jmp islower

 @2888$isDigitInBase$20:
	; PostCall 29

 @2888$isDigitInBase$21:
	; GetReturnValue £temporary1116

 @2888$isDigitInBase$22:
	; Equal 32 £temporary1116 0
	cmp ebx, 0
	je @2888$isDigitInBase$32

 @2888$isDigitInBase$23:
	; BinarySubtract £temporary1117 c 97
	mov al, [rbp + 24]
	sub al, 97

 @2888$isDigitInBase$24:
	; IntegralToIntegral £temporary1118 £temporary1117
	and eax, 255
	cmp al, 0
	jge @2888$isDigitInBase$25
	neg al
	neg eax

 @2888$isDigitInBase$25:
	; BinaryAdd value £temporary1118 10
	add eax, 10
	mov [rbp + 29], eax

 @2888$isDigitInBase$26:
	; SignedLessThan 30 value 0
	cmp dword [rbp + 29], 0
	jl @2888$isDigitInBase$30

 @2888$isDigitInBase$27:
	; SignedGreaterThanEqual 30 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @2888$isDigitInBase$30

 @2888$isDigitInBase$28:
	; Assign £temporary1123 1
	mov ebx, 1

 @2888$isDigitInBase$29:
	; Goto 31
	jmp @2888$isDigitInBase$31

 @2888$isDigitInBase$30:
	; Assign £temporary1123 0
	mov ebx, 0

 @2888$isDigitInBase$31:
	; Return £temporary1123
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2888$isDigitInBase$32:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2888$isDigitInBase$33:
	; IntegralToIntegral £temporary1124 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2888$isDigitInBase$34
	neg al
	neg eax

 @2888$isDigitInBase$34:
	; Parameter signedint £temporary1124 53
	mov [rbp + 53], eax

 @2888$isDigitInBase$35:
	; Call isupper 29 0
	mov qword [rbp + 29], @2888$isDigitInBase$36
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isupper

 @2888$isDigitInBase$36:
	; PostCall 29

 @2888$isDigitInBase$37:
	; GetReturnValue £temporary1125

 @2888$isDigitInBase$38:
	; Equal 48 £temporary1125 0
	cmp ebx, 0
	je @2888$isDigitInBase$48

 @2888$isDigitInBase$39:
	; BinarySubtract £temporary1126 c 65
	mov al, [rbp + 24]
	sub al, 65

 @2888$isDigitInBase$40:
	; IntegralToIntegral £temporary1127 £temporary1126
	and eax, 255
	cmp al, 0
	jge @2888$isDigitInBase$41
	neg al
	neg eax

 @2888$isDigitInBase$41:
	; BinaryAdd value £temporary1127 10
	add eax, 10
	mov [rbp + 29], eax

 @2888$isDigitInBase$42:
	; SignedLessThan 46 value 0
	cmp dword [rbp + 29], 0
	jl @2888$isDigitInBase$46

 @2888$isDigitInBase$43:
	; SignedGreaterThanEqual 46 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @2888$isDigitInBase$46

 @2888$isDigitInBase$44:
	; Assign £temporary1132 1
	mov ebx, 1

 @2888$isDigitInBase$45:
	; Goto 47
	jmp @2888$isDigitInBase$47

 @2888$isDigitInBase$46:
	; Assign £temporary1132 0
	mov ebx, 0

 @2888$isDigitInBase$47:
	; Return £temporary1132
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2888$isDigitInBase$48:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2888$isDigitInBase$49:
	; FunctionEnd isDigitInBase

section .text

 @2896$digitToValue:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2896$digitToValue$1:
	; IntegralToIntegral £temporary1136 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2896$digitToValue$2
	neg al
	neg eax

 @2896$digitToValue$2:
	; Parameter signedint £temporary1136 49
	mov [rbp + 49], eax

 @2896$digitToValue$3:
	; Call isdigit 25 0
	mov qword [rbp + 25], @2896$digitToValue$4
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isdigit

 @2896$digitToValue$4:
	; PostCall 25

 @2896$digitToValue$5:
	; GetReturnValue £temporary1137

 @2896$digitToValue$6:
	; Equal 10 £temporary1137 0
	cmp ebx, 0
	je @2896$digitToValue$10

 @2896$digitToValue$7:
	; BinarySubtract £temporary1138 c 48
	mov bl, [rbp + 24]
	sub bl, 48

 @2896$digitToValue$8:
	; IntegralToIntegral £temporary1139 £temporary1138
	and ebx, 255
	cmp bl, 0
	jge @2896$digitToValue$9
	neg bl
	neg ebx

 @2896$digitToValue$9:
	; Return £temporary1139
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2896$digitToValue$10:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2896$digitToValue$11:
	; IntegralToIntegral £temporary1140 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2896$digitToValue$12
	neg al
	neg eax

 @2896$digitToValue$12:
	; Parameter signedint £temporary1140 49
	mov [rbp + 49], eax

 @2896$digitToValue$13:
	; Call islower 25 0
	mov qword [rbp + 25], @2896$digitToValue$14
	mov [rbp + 33], rbp
	add rbp, 25
	jmp islower

 @2896$digitToValue$14:
	; PostCall 25

 @2896$digitToValue$15:
	; GetReturnValue £temporary1141

 @2896$digitToValue$16:
	; Equal 21 £temporary1141 0
	cmp ebx, 0
	je @2896$digitToValue$21

 @2896$digitToValue$17:
	; BinarySubtract £temporary1142 c 97
	mov bl, [rbp + 24]
	sub bl, 97

 @2896$digitToValue$18:
	; IntegralToIntegral £temporary1143 £temporary1142
	and ebx, 255
	cmp bl, 0
	jge @2896$digitToValue$19
	neg bl
	neg ebx

 @2896$digitToValue$19:
	; BinaryAdd £temporary1144 £temporary1143 10
	add ebx, 10

 @2896$digitToValue$20:
	; Return £temporary1144
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2896$digitToValue$21:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2896$digitToValue$22:
	; IntegralToIntegral £temporary1145 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2896$digitToValue$23
	neg al
	neg eax

 @2896$digitToValue$23:
	; Parameter signedint £temporary1145 49
	mov [rbp + 49], eax

 @2896$digitToValue$24:
	; Call isupper 25 0
	mov qword [rbp + 25], @2896$digitToValue$25
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isupper

 @2896$digitToValue$25:
	; PostCall 25

 @2896$digitToValue$26:
	; GetReturnValue £temporary1146

 @2896$digitToValue$27:
	; Equal 32 £temporary1146 0
	cmp ebx, 0
	je @2896$digitToValue$32

 @2896$digitToValue$28:
	; BinarySubtract £temporary1147 c 65
	mov bl, [rbp + 24]
	sub bl, 65

 @2896$digitToValue$29:
	; IntegralToIntegral £temporary1148 £temporary1147
	and ebx, 255
	cmp bl, 0
	jge @2896$digitToValue$30
	neg bl
	neg ebx

 @2896$digitToValue$30:
	; BinaryAdd £temporary1149 £temporary1148 10
	add ebx, 10

 @2896$digitToValue$31:
	; Return £temporary1149
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2896$digitToValue$32:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2896$digitToValue$33:
	; FunctionEnd digitToValue

section .text

 scanLongInt:
	; Assign longValue 0
	mov qword [rbp + 28], 0

 scanLongInt$1:
	; Assign minus 0
	mov dword [rbp + 36], 0

 scanLongInt$2:
	; Assign found 0
	mov dword [rbp + 40], 0

 scanLongInt$3:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$4:
	; Call scanChar 44 0
	mov qword [rbp + 44], scanLongInt$5
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanChar

 scanLongInt$5:
	; PostCall 44

 scanLongInt$6:
	; GetReturnValue £temporary1153

 scanLongInt$7:
	; Assign input £temporary1153
	mov [rbp + 44], bl

 scanLongInt$8:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$9:
	; IntegralToIntegral £temporary1154 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$10
	neg al
	neg eax

 scanLongInt$10:
	; Parameter signedint £temporary1154 69
	mov [rbp + 69], eax

 scanLongInt$11:
	; Call isspace 45 0
	mov qword [rbp + 45], scanLongInt$12
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanLongInt$12:
	; PostCall 45

 scanLongInt$13:
	; GetReturnValue £temporary1155

 scanLongInt$14:
	; Equal 21 £temporary1155 0
	cmp ebx, 0
	je scanLongInt$21

 scanLongInt$15:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$16:
	; Call scanChar 45 0
	mov qword [rbp + 45], scanLongInt$17
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$17:
	; PostCall 45

 scanLongInt$18:
	; GetReturnValue £temporary1156

 scanLongInt$19:
	; Assign input £temporary1156
	mov [rbp + 44], bl

 scanLongInt$20:
	; Goto 8
	jmp scanLongInt$8

 scanLongInt$21:
	; NotEqual 28 input 43
	cmp byte [rbp + 44], 43
	jne scanLongInt$28

 scanLongInt$22:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$23:
	; Call scanChar 45 0
	mov qword [rbp + 45], scanLongInt$24
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$24:
	; PostCall 45

 scanLongInt$25:
	; GetReturnValue £temporary1159

 scanLongInt$26:
	; Assign input £temporary1159
	mov [rbp + 44], bl

 scanLongInt$27:
	; Goto 35
	jmp scanLongInt$35

 scanLongInt$28:
	; NotEqual 35 input 45
	cmp byte [rbp + 44], 45
	jne scanLongInt$35

 scanLongInt$29:
	; Assign minus 1
	mov dword [rbp + 36], 1

 scanLongInt$30:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$31:
	; Call scanChar 45 0
	mov qword [rbp + 45], scanLongInt$32
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$32:
	; PostCall 45

 scanLongInt$33:
	; GetReturnValue £temporary1161

 scanLongInt$34:
	; Assign input £temporary1161
	mov [rbp + 44], bl

 scanLongInt$35:
	; NotEqual 59 base 0
	cmp dword [rbp + 24], 0
	jne scanLongInt$59

 scanLongInt$36:
	; NotEqual 58 input 48
	cmp byte [rbp + 44], 48
	jne scanLongInt$58

 scanLongInt$37:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$38:
	; Call scanChar 45 0
	mov qword [rbp + 45], scanLongInt$39
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$39:
	; PostCall 45

 scanLongInt$40:
	; GetReturnValue £temporary1164

 scanLongInt$41:
	; Assign input £temporary1164
	mov [rbp + 44], bl

 scanLongInt$42:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$43:
	; IntegralToIntegral £temporary1165 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$44
	neg al
	neg eax

 scanLongInt$44:
	; Parameter signedint £temporary1165 69
	mov [rbp + 69], eax

 scanLongInt$45:
	; Call tolower 45 0
	mov qword [rbp + 45], scanLongInt$46
	mov [rbp + 53], rbp
	add rbp, 45
	jmp tolower

 scanLongInt$46:
	; PostCall 45

 scanLongInt$47:
	; GetReturnValue £temporary1166

 scanLongInt$48:
	; NotEqual 56 £temporary1166 120
	cmp ebx, 120
	jne scanLongInt$56

 scanLongInt$49:
	; Assign base 16
	mov dword [rbp + 24], 16

 scanLongInt$50:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$51:
	; Call scanChar 45 0
	mov qword [rbp + 45], scanLongInt$52
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$52:
	; PostCall 45

 scanLongInt$53:
	; GetReturnValue £temporary1168

 scanLongInt$54:
	; Assign input £temporary1168
	mov [rbp + 44], bl

 scanLongInt$55:
	; Goto 59
	jmp scanLongInt$59

 scanLongInt$56:
	; Assign base 8
	mov dword [rbp + 24], 8

 scanLongInt$57:
	; Goto 59
	jmp scanLongInt$59

 scanLongInt$58:
	; Assign base 10
	mov dword [rbp + 24], 10

 scanLongInt$59:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$60:
	; Parameter signedchar input 69
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$61:
	; Parameter signedint base 70
	mov eax, [rbp + 24]
	mov [rbp + 70], eax

 scanLongInt$62:
	; Call isDigitInBase 45 0
	mov qword [rbp + 45], scanLongInt$63
	mov [rbp + 53], rbp
	add rbp, 45
	jmp @2888$isDigitInBase

 scanLongInt$63:
	; PostCall 45

 scanLongInt$64:
	; GetReturnValue £temporary1169

 scanLongInt$65:
	; Equal 82 £temporary1169 0
	cmp ebx, 0
	je scanLongInt$82

 scanLongInt$66:
	; IntegralToIntegral £temporary1170 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$67
	neg ebx
	neg rbx

 scanLongInt$67:
	; SignedMultiply longValue longValue £temporary1170
	mov rax, [rbp + 28]
	xor rdx, rdx
	imul rbx
	mov [rbp + 28], rax

 scanLongInt$68:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$69:
	; Parameter signedchar input 69
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$70:
	; Call digitToValue 45 0
	mov qword [rbp + 45], scanLongInt$71
	mov [rbp + 53], rbp
	add rbp, 45
	jmp @2896$digitToValue

 scanLongInt$71:
	; PostCall 45

 scanLongInt$72:
	; GetReturnValue £temporary1172

 scanLongInt$73:
	; IntegralToIntegral £temporary1173 £temporary1172
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$74
	neg ebx
	neg rbx

 scanLongInt$74:
	; BinaryAdd longValue longValue £temporary1173
	add [rbp + 28], rbx

 scanLongInt$75:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$76:
	; Call scanChar 45 0
	mov qword [rbp + 45], scanLongInt$77
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$77:
	; PostCall 45

 scanLongInt$78:
	; GetReturnValue £temporary1175

 scanLongInt$79:
	; Assign input £temporary1175
	mov [rbp + 44], bl

 scanLongInt$80:
	; Assign found 1
	mov dword [rbp + 40], 1

 scanLongInt$81:
	; Goto 59
	jmp scanLongInt$59

 scanLongInt$82:
	; Equal 85 minus 0
	cmp dword [rbp + 36], 0
	je scanLongInt$85

 scanLongInt$83:
	; UnarySubtract £temporary1177 longValue
	mov rax, [rbp + 28]
	neg rax

 scanLongInt$84:
	; Assign longValue £temporary1177
	mov [rbp + 28], rax

 scanLongInt$85:
	; Equal 87 found 0
	cmp dword [rbp + 40], 0
	je scanLongInt$87

 scanLongInt$86:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanLongInt$87:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$88:
	; Parameter signedchar input 69
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$89:
	; Call unscanChar 45 0
	mov qword [rbp + 45], scanLongInt$90
	mov [rbp + 53], rbp
	add rbp, 45
	jmp unscanChar

 scanLongInt$90:
	; PostCall 45

 scanLongInt$91:
	; Return longValue
	mov rbx, [rbp + 28]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongInt$92:
	; FunctionEnd scanLongInt

section .text

 scanUnsignedLongInt:
	; Assign unsignedLongValue 0
	mov qword [rbp + 28], 0

 scanUnsignedLongInt$1:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$2:
	; Call scanChar 44 0
	mov qword [rbp + 44], scanUnsignedLongInt$3
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanChar

 scanUnsignedLongInt$3:
	; PostCall 44

 scanUnsignedLongInt$4:
	; GetReturnValue £temporary1182

 scanUnsignedLongInt$5:
	; Assign input £temporary1182
	mov [rbp + 44], bl

 scanUnsignedLongInt$6:
	; Assign found 1
	mov dword [rbp + 45], 1

 scanUnsignedLongInt$7:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$8:
	; IntegralToIntegral £temporary1183 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$9
	neg al
	neg eax

 scanUnsignedLongInt$9:
	; Parameter signedint £temporary1183 73
	mov [rbp + 73], eax

 scanUnsignedLongInt$10:
	; Call isspace 49 0
	mov qword [rbp + 49], scanUnsignedLongInt$11
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isspace

 scanUnsignedLongInt$11:
	; PostCall 49

 scanUnsignedLongInt$12:
	; GetReturnValue £temporary1184

 scanUnsignedLongInt$13:
	; Equal 20 £temporary1184 0
	cmp ebx, 0
	je scanUnsignedLongInt$20

 scanUnsignedLongInt$14:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$15:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanUnsignedLongInt$16
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$16:
	; PostCall 49

 scanUnsignedLongInt$17:
	; GetReturnValue £temporary1185

 scanUnsignedLongInt$18:
	; Assign input £temporary1185
	mov [rbp + 44], bl

 scanUnsignedLongInt$19:
	; Goto 7
	jmp scanUnsignedLongInt$7

 scanUnsignedLongInt$20:
	; NotEqual 26 input 43
	cmp byte [rbp + 44], 43
	jne scanUnsignedLongInt$26

 scanUnsignedLongInt$21:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$22:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanUnsignedLongInt$23
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$23:
	; PostCall 49

 scanUnsignedLongInt$24:
	; GetReturnValue £temporary1188

 scanUnsignedLongInt$25:
	; Assign input £temporary1188
	mov [rbp + 44], bl

 scanUnsignedLongInt$26:
	; NotEqual 50 base 0
	cmp dword [rbp + 24], 0
	jne scanUnsignedLongInt$50

 scanUnsignedLongInt$27:
	; NotEqual 49 input 48
	cmp byte [rbp + 44], 48
	jne scanUnsignedLongInt$49

 scanUnsignedLongInt$28:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$29:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanUnsignedLongInt$30
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$30:
	; PostCall 49

 scanUnsignedLongInt$31:
	; GetReturnValue £temporary1191

 scanUnsignedLongInt$32:
	; Assign input £temporary1191
	mov [rbp + 44], bl

 scanUnsignedLongInt$33:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$34:
	; IntegralToIntegral £temporary1192 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$35
	neg al
	neg eax

 scanUnsignedLongInt$35:
	; Parameter signedint £temporary1192 73
	mov [rbp + 73], eax

 scanUnsignedLongInt$36:
	; Call tolower 49 0
	mov qword [rbp + 49], scanUnsignedLongInt$37
	mov [rbp + 57], rbp
	add rbp, 49
	jmp tolower

 scanUnsignedLongInt$37:
	; PostCall 49

 scanUnsignedLongInt$38:
	; GetReturnValue £temporary1193

 scanUnsignedLongInt$39:
	; NotEqual 47 £temporary1193 120
	cmp ebx, 120
	jne scanUnsignedLongInt$47

 scanUnsignedLongInt$40:
	; Assign base 16
	mov dword [rbp + 24], 16

 scanUnsignedLongInt$41:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$42:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanUnsignedLongInt$43
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$43:
	; PostCall 49

 scanUnsignedLongInt$44:
	; GetReturnValue £temporary1195

 scanUnsignedLongInt$45:
	; Assign input £temporary1195
	mov [rbp + 44], bl

 scanUnsignedLongInt$46:
	; Goto 50
	jmp scanUnsignedLongInt$50

 scanUnsignedLongInt$47:
	; Assign base 8
	mov dword [rbp + 24], 8

 scanUnsignedLongInt$48:
	; Goto 50
	jmp scanUnsignedLongInt$50

 scanUnsignedLongInt$49:
	; Assign base 10
	mov dword [rbp + 24], 10

 scanUnsignedLongInt$50:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$51:
	; Parameter signedchar input 73
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$52:
	; Parameter signedint base 74
	mov eax, [rbp + 24]
	mov [rbp + 74], eax

 scanUnsignedLongInt$53:
	; Call isDigitInBase 49 0
	mov qword [rbp + 49], scanUnsignedLongInt$54
	mov [rbp + 57], rbp
	add rbp, 49
	jmp @2888$isDigitInBase

 scanUnsignedLongInt$54:
	; PostCall 49

 scanUnsignedLongInt$55:
	; GetReturnValue £temporary1196

 scanUnsignedLongInt$56:
	; Equal 73 £temporary1196 0
	cmp ebx, 0
	je scanUnsignedLongInt$73

 scanUnsignedLongInt$57:
	; IntegralToIntegral £temporary1197 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$58:
	; UnsignedMultiply unsignedLongValue unsignedLongValue £temporary1197
	mov rax, [rbp + 28]
	xor rdx, rdx
	mul rbx
	mov [rbp + 28], rax

 scanUnsignedLongInt$59:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$60:
	; Parameter signedchar input 73
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$61:
	; Call digitToValue 49 0
	mov qword [rbp + 49], scanUnsignedLongInt$62
	mov [rbp + 57], rbp
	add rbp, 49
	jmp @2896$digitToValue

 scanUnsignedLongInt$62:
	; PostCall 49

 scanUnsignedLongInt$63:
	; GetReturnValue £temporary1199

 scanUnsignedLongInt$64:
	; IntegralToIntegral £temporary1200 £temporary1199
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$65:
	; BinaryAdd unsignedLongValue unsignedLongValue £temporary1200
	add [rbp + 28], rbx

 scanUnsignedLongInt$66:
	; Assign found 1
	mov dword [rbp + 45], 1

 scanUnsignedLongInt$67:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$68:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanUnsignedLongInt$69
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$69:
	; PostCall 49

 scanUnsignedLongInt$70:
	; GetReturnValue £temporary1202

 scanUnsignedLongInt$71:
	; Assign input £temporary1202
	mov [rbp + 44], bl

 scanUnsignedLongInt$72:
	; Goto 50
	jmp scanUnsignedLongInt$50

 scanUnsignedLongInt$73:
	; Equal 75 found 0
	cmp dword [rbp + 45], 0
	je scanUnsignedLongInt$75

 scanUnsignedLongInt$74:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanUnsignedLongInt$75:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$76:
	; Parameter signedchar input 73
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$77:
	; Call unscanChar 49 0
	mov qword [rbp + 49], scanUnsignedLongInt$78
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

 scanUnsignedLongInt$78:
	; PostCall 49

 scanUnsignedLongInt$79:
	; Return unsignedLongValue
	mov rbx, [rbp + 28]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanUnsignedLongInt$80:
	; FunctionEnd scanUnsignedLongInt

section .data

float8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .text

 scanLongDouble:
	; Assign minus 0
	mov dword [rbp + 24], 0

 scanLongDouble$1:
	; Assign found 0
	mov dword [rbp + 28], 0

 scanLongDouble$2:
	; PushFloat 0.0
	fldz

 scanLongDouble$3:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$4:
	; PushFloat 1.0
	fld1

 scanLongDouble$5:
	; PopFloat factor
	fstp qword [rbp + 40]

 scanLongDouble$6:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$7:
	; Call scanChar 48 0
	mov qword [rbp + 48], scanLongDouble$8
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanChar

 scanLongDouble$8:
	; PostCall 48

 scanLongDouble$9:
	; GetReturnValue £temporary1207

 scanLongDouble$10:
	; Assign input £temporary1207
	mov [rbp + 48], bl

 scanLongDouble$11:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$12:
	; IntegralToIntegral £temporary1208 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$13
	neg al
	neg eax

 scanLongDouble$13:
	; Parameter signedint £temporary1208 73
	mov [rbp + 73], eax

 scanLongDouble$14:
	; Call isspace 49 0
	mov qword [rbp + 49], scanLongDouble$15
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isspace

 scanLongDouble$15:
	; PostCall 49

 scanLongDouble$16:
	; GetReturnValue £temporary1209

 scanLongDouble$17:
	; Equal 24 £temporary1209 0
	cmp ebx, 0
	je scanLongDouble$24

 scanLongDouble$18:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$19:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanLongDouble$20
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$20:
	; PostCall 49

 scanLongDouble$21:
	; GetReturnValue £temporary1210

 scanLongDouble$22:
	; Assign input £temporary1210
	mov [rbp + 48], bl

 scanLongDouble$23:
	; Goto 11
	jmp scanLongDouble$11

 scanLongDouble$24:
	; NotEqual 31 input 43
	cmp byte [rbp + 48], 43
	jne scanLongDouble$31

 scanLongDouble$25:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$26:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanLongDouble$27
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$27:
	; PostCall 49

 scanLongDouble$28:
	; GetReturnValue £temporary1213

 scanLongDouble$29:
	; Assign input £temporary1213
	mov [rbp + 48], bl

 scanLongDouble$30:
	; Goto 38
	jmp scanLongDouble$38

 scanLongDouble$31:
	; NotEqual 38 input 45
	cmp byte [rbp + 48], 45
	jne scanLongDouble$38

 scanLongDouble$32:
	; Assign minus 1
	mov dword [rbp + 24], 1

 scanLongDouble$33:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$34:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanLongDouble$35
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$35:
	; PostCall 49

 scanLongDouble$36:
	; GetReturnValue £temporary1215

 scanLongDouble$37:
	; Assign input £temporary1215
	mov [rbp + 48], bl

 scanLongDouble$38:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$39:
	; IntegralToIntegral £temporary1216 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$40
	neg al
	neg eax

 scanLongDouble$40:
	; Parameter signedint £temporary1216 73
	mov [rbp + 73], eax

 scanLongDouble$41:
	; Call isdigit 49 0
	mov qword [rbp + 49], scanLongDouble$42
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isdigit

 scanLongDouble$42:
	; PostCall 49

 scanLongDouble$43:
	; GetReturnValue £temporary1217

 scanLongDouble$44:
	; Equal 60 £temporary1217 0
	cmp ebx, 0
	je scanLongDouble$60

 scanLongDouble$45:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 scanLongDouble$46:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$47:
	; SignedMultiply £temporary1218 10.0 value
	fmul

 scanLongDouble$48:
	; BinarySubtract £temporary1219 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$49:
	; IntegralToIntegral £temporary1221 £temporary1219
	and eax, 255
	cmp al, 0
	jge scanLongDouble$50
	neg al
	neg eax

 scanLongDouble$50:
	; IntegralToFloating £temporary1220 £temporary1221
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$51:
	; BinaryAdd £temporary1222 £temporary1218 £temporary1220
	fadd

 scanLongDouble$52:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$53:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$54:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanLongDouble$55
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$55:
	; PostCall 49

 scanLongDouble$56:
	; GetReturnValue £temporary1223

 scanLongDouble$57:
	; Assign input £temporary1223
	mov [rbp + 48], bl

 scanLongDouble$58:
	; Assign found 1
	mov dword [rbp + 28], 1

 scanLongDouble$59:
	; Goto 38
	jmp scanLongDouble$38

 scanLongDouble$60:
	; NotEqual 92 input 46
	cmp byte [rbp + 48], 46
	jne scanLongDouble$92

 scanLongDouble$61:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$62:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanLongDouble$63
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$63:
	; PostCall 49

 scanLongDouble$64:
	; GetReturnValue £temporary1226

 scanLongDouble$65:
	; Assign input £temporary1226
	mov [rbp + 48], bl

 scanLongDouble$66:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$67:
	; IntegralToIntegral £temporary1227 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$68
	neg al
	neg eax

 scanLongDouble$68:
	; Parameter signedint £temporary1227 73
	mov [rbp + 73], eax

 scanLongDouble$69:
	; Call isdigit 49 0
	mov qword [rbp + 49], scanLongDouble$70
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isdigit

 scanLongDouble$70:
	; PostCall 49

 scanLongDouble$71:
	; GetReturnValue £temporary1228

 scanLongDouble$72:
	; Equal 92 £temporary1228 0
	cmp ebx, 0
	je scanLongDouble$92

 scanLongDouble$73:
	; PushFloat factor
	fld qword [rbp + 40]

 scanLongDouble$74:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 scanLongDouble$75:
	; SignedDivide £temporary1229 factor 10.0
	fdiv

 scanLongDouble$76:
	; PopFloat factor
	fstp qword [rbp + 40]

 scanLongDouble$77:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$78:
	; PushFloat factor
	fld qword [rbp + 40]

 scanLongDouble$79:
	; BinarySubtract £temporary1230 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$80:
	; IntegralToIntegral £temporary1232 £temporary1230
	and eax, 255
	cmp al, 0
	jge scanLongDouble$81
	neg al
	neg eax

 scanLongDouble$81:
	; IntegralToFloating £temporary1231 £temporary1232
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$82:
	; SignedMultiply £temporary1233 factor £temporary1231
	fmul

 scanLongDouble$83:
	; BinaryAdd £temporary1234 value £temporary1233
	fadd

 scanLongDouble$84:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$85:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$86:
	; Call scanChar 49 0
	mov qword [rbp + 49], scanLongDouble$87
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$87:
	; PostCall 49

 scanLongDouble$88:
	; GetReturnValue £temporary1235

 scanLongDouble$89:
	; Assign input £temporary1235
	mov [rbp + 48], bl

 scanLongDouble$90:
	; Assign found 1
	mov dword [rbp + 28], 1

 scanLongDouble$91:
	; Goto 66
	jmp scanLongDouble$66

 scanLongDouble$92:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$93:
	; Parameter signedchar input 73
	mov al, [rbp + 48]
	mov [rbp + 73], al

 scanLongDouble$94:
	; Call unscanChar 49 0
	mov qword [rbp + 49], scanLongDouble$95
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

 scanLongDouble$95:
	; PostCall 49

 scanLongDouble$96:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$97:
	; IntegralToIntegral £temporary1238 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$98
	neg al
	neg eax

 scanLongDouble$98:
	; Parameter signedint £temporary1238 73
	mov [rbp + 73], eax

 scanLongDouble$99:
	; Call tolower 49 0
	mov qword [rbp + 49], scanLongDouble$100
	mov [rbp + 57], rbp
	add rbp, 49
	jmp tolower

 scanLongDouble$100:
	; PostCall 49

 scanLongDouble$101:
	; GetReturnValue £temporary1239

 scanLongDouble$102:
	; NotEqual 122 £temporary1239 101
	cmp ebx, 101
	jne scanLongDouble$122

 scanLongDouble$103:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$104:
	; Parameter signedint 10 73
	mov dword [rbp + 73], 10

 scanLongDouble$105:
	; Call scanLongInt 49 0
	mov qword [rbp + 49], scanLongDouble$106
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanLongInt

 scanLongDouble$106:
	; PostCall 49

 scanLongDouble$107:
	; GetReturnValue £temporary1241

 scanLongDouble$108:
	; IntegralToFloating £temporary1242 £temporary1241
	mov [container8bytes#], rbx
	fild qword [container8bytes#]

 scanLongDouble$109:
	; PopFloat exponent
	fstp qword [rbp + 49]

 scanLongDouble$110:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$111:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 57]

 scanLongDouble$112:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 scanLongDouble$113:
	; Parameter double 10.0 81
	fstp qword [rbp + 89]

 scanLongDouble$114:
	; PushFloat exponent
	fld qword [rbp + 49]

 scanLongDouble$115:
	; Parameter double exponent 89
	fstp qword [rbp + 97]

 scanLongDouble$116:
	; Call pow 57 0
	mov qword [rbp + 65], scanLongDouble$117
	mov [rbp + 73], rbp
	add rbp, 65
	jmp pow

 scanLongDouble$117:
	; PostCall 57
	fstp qword [rbp + 65]
	fld qword [rbp + 57]
	fld qword [rbp + 65]

 scanLongDouble$118:
	; GetReturnValue £temporary1243

 scanLongDouble$119:
	; SignedMultiply £temporary1244 value £temporary1243
	fmul

 scanLongDouble$120:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$121:
	; Goto 126
	jmp scanLongDouble$126

 scanLongDouble$122:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$123:
	; Parameter signedchar input 73
	mov al, [rbp + 48]
	mov [rbp + 73], al

 scanLongDouble$124:
	; Call unscanChar 49 0
	mov qword [rbp + 49], scanLongDouble$125
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

 scanLongDouble$125:
	; PostCall 49

 scanLongDouble$126:
	; Equal 130 minus 0
	cmp dword [rbp + 24], 0
	je scanLongDouble$130

 scanLongDouble$127:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$128:
	; UnarySubtract £temporary1246 value
	fchs

 scanLongDouble$129:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$130:
	; Equal 132 found 0
	cmp dword [rbp + 28], 0
	je scanLongDouble$132

 scanLongDouble$131:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanLongDouble$132:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$133:
	; Return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongDouble$134:
	; FunctionEnd scanLongDouble

section .data

string_scanFormat20c203D202725c270A#:
	; Initializer String scanFormat c = '%c'\n
	db "scanFormat c = ", 39, "%c", 39, 10, 0

section .text

 scanFormat:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$1:
	; Assign shortInt 0
	mov dword [rbp + 53], 0

 scanFormat$2:
	; Assign longIntOrDouble 0
	mov dword [rbp + 57], 0

 scanFormat$3:
	; Assign longDouble 0
	mov dword [rbp + 61], 0

 scanFormat$4:
	; Assign star 0
	mov dword [rbp + 65], 0

 scanFormat$5:
	; Assign g_inCount 0
	mov dword [g_inCount], 0

 scanFormat$6:
	; Assign g_inChars 0
	mov dword [g_inChars], 0

 scanFormat$7:
	; Assign index 0
	mov dword [rbp + 93], 0

 scanFormat$8:
	; IntegralToIntegral £temporary1253 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$9:
	; BinaryAdd £temporary1255 format £temporary1253
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$10:
	; Dereference £temporary1252 -> £temporary1255 £temporary1255 0

 scanFormat$11:
	; Equal 333 £temporary1252 -> £temporary1255 0
	cmp byte [rsi], 0
	je scanFormat$333

 scanFormat$12:
	; IntegralToIntegral £temporary1259 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$13:
	; BinaryAdd £temporary1261 format £temporary1259
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$14:
	; Dereference £temporary1258 -> £temporary1261 £temporary1261 0

 scanFormat$15:
	; Assign c £temporary1258 -> £temporary1261
	mov al, [rsi]
	mov [rbp + 40], al

 scanFormat$16:
	; IntegralToIntegral £temporary1262 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$17
	neg al
	neg eax

 scanFormat$17:
	; BinaryAdd d £temporary1262 1
	inc eax
	mov [rbp + 153], eax

 scanFormat$18:
	; Equal 325 percent 0
	cmp dword [rbp + 49], 0
	je scanFormat$325

 scanFormat$19:
	; BinarySubtract £temporary1264 d 1
	mov eax, [rbp + 153]
	dec eax

 scanFormat$20:
	; Case 38 £temporary1264 104
	cmp eax, 104
	je scanFormat$38

 scanFormat$21:
	; Case 40 £temporary1264 108
	cmp eax, 108
	je scanFormat$40

 scanFormat$22:
	; Case 42 £temporary1264 76
	cmp eax, 76
	je scanFormat$42

 scanFormat$23:
	; Case 44 £temporary1264 42
	cmp eax, 42
	je scanFormat$44

 scanFormat$24:
	; Case 46 £temporary1264 99
	cmp eax, 99
	je scanFormat$46

 scanFormat$25:
	; Case 64 £temporary1264 115
	cmp eax, 115
	je scanFormat$64

 scanFormat$26:
	; Case 83 £temporary1264 100
	cmp eax, 100
	je scanFormat$83

 scanFormat$27:
	; Case 83 £temporary1264 105
	cmp eax, 105
	je scanFormat$83

 scanFormat$28:
	; Case 119 £temporary1264 111
	cmp eax, 111
	je scanFormat$119

 scanFormat$29:
	; Case 155 £temporary1264 120
	cmp eax, 120
	je scanFormat$155

 scanFormat$30:
	; Case 191 £temporary1264 117
	cmp eax, 117
	je scanFormat$191

 scanFormat$31:
	; Case 227 £temporary1264 103
	cmp eax, 103
	je scanFormat$227

 scanFormat$32:
	; Case 227 £temporary1264 102
	cmp eax, 102
	je scanFormat$227

 scanFormat$33:
	; Case 227 £temporary1264 101
	cmp eax, 101
	je scanFormat$227

 scanFormat$34:
	; Case 263 £temporary1264 91
	cmp eax, 91
	je scanFormat$263

 scanFormat$35:
	; Case 309 £temporary1264 110
	cmp eax, 110
	je scanFormat$309

 scanFormat$36:
	; CaseEnd £temporary1264

 scanFormat$37:
	; Goto 318
	jmp scanFormat$318

 scanFormat$38:
	; Assign shortInt 1
	mov dword [rbp + 53], 1

 scanFormat$39:
	; Goto 331
	jmp scanFormat$331

 scanFormat$40:
	; Assign longIntOrDouble 1
	mov dword [rbp + 57], 1

 scanFormat$41:
	; Goto 331
	jmp scanFormat$331

 scanFormat$42:
	; Assign longDouble 1
	mov dword [rbp + 61], 1

 scanFormat$43:
	; Goto 331
	jmp scanFormat$331

 scanFormat$44:
	; Assign star 1
	mov dword [rbp + 65], 1

 scanFormat$45:
	; Goto 331
	jmp scanFormat$331

 scanFormat$46:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$47:
	; Call scanChar 157 0
	mov qword [rbp + 157], scanFormat$48
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanChar

 scanFormat$48:
	; PostCall 157

 scanFormat$49:
	; GetReturnValue £temporary1265

 scanFormat$50:
	; Assign charValue £temporary1265
	mov [rbp + 157], bl

 scanFormat$51:
	; NotEqual 59 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$59

 scanFormat$52:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$53:
	; BinarySubtract £temporary1270 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$54:
	; IntegralToIntegral £temporary1272 £temporary1270

 scanFormat$55:
	; Dereference £temporary1273 -> £temporary1272 £temporary1272 0

 scanFormat$56:
	; Assign charPtr £temporary1273 -> £temporary1272
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$57:
	; Dereference £temporary1274 -> charPtr charPtr 0
	mov rsi, [rbp + 41]

 scanFormat$58:
	; Assign £temporary1274 -> charPtr charValue
	mov al, [rbp + 157]
	mov [rsi], al

 scanFormat$59:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$60:
	; IntegralToIntegral £temporary1275 charValue
	mov al, [rbp + 157]
	and eax, 255
	cmp al, 0
	jge scanFormat$61
	neg al
	neg eax

 scanFormat$61:
	; Equal 331 £temporary1275 -1
	cmp eax, -1
	je scanFormat$331

 scanFormat$62:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanFormat$63:
	; Goto 331
	jmp scanFormat$331

 scanFormat$64:
	; NotEqual 76 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$76

 scanFormat$65:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$66:
	; BinarySubtract £temporary1282 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$67:
	; IntegralToIntegral £temporary1284 £temporary1282

 scanFormat$68:
	; Dereference £temporary1285 -> £temporary1284 £temporary1284 0

 scanFormat$69:
	; Assign charPtr £temporary1285 -> £temporary1284
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$70:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$71:
	; Parameter pointer charPtr 181
	mov rax, [rbp + 41]
	mov [rbp + 181], rax

 scanFormat$72:
	; Parameter signedint 0 189
	mov dword [rbp + 189], 0

 scanFormat$73:
	; Call scanString 157 0
	mov qword [rbp + 157], scanFormat$74
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$74:
	; PostCall 157

 scanFormat$75:
	; Goto 81
	jmp scanFormat$81

 scanFormat$76:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$77:
	; Parameter pointer 0 181
	mov qword [rbp + 181], 0

 scanFormat$78:
	; Parameter signedint 0 189
	mov dword [rbp + 189], 0

 scanFormat$79:
	; Call scanString 157 0
	mov qword [rbp + 157], scanFormat$80
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$80:
	; PostCall 157

 scanFormat$81:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$82:
	; Goto 331
	jmp scanFormat$331

 scanFormat$83:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$84:
	; Parameter signedint 10 181
	mov dword [rbp + 181], 10

 scanFormat$85:
	; Call scanLongInt 157 0
	mov qword [rbp + 157], scanFormat$86
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongInt

 scanFormat$86:
	; PostCall 157

 scanFormat$87:
	; GetReturnValue £temporary1288

 scanFormat$88:
	; Assign longValue £temporary1288
	mov [rbp + 69], rbx

 scanFormat$89:
	; NotEqual 117 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$117

 scanFormat$90:
	; Equal 100 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$100

 scanFormat$91:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$92:
	; BinarySubtract £temporary1293 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$93:
	; IntegralToIntegral £temporary1295 £temporary1293

 scanFormat$94:
	; Dereference £temporary1296 -> £temporary1295 £temporary1295 0

 scanFormat$95:
	; Assign shortPtr £temporary1296 -> £temporary1295
	mov rax, [rsi]
	mov [rbp + 85], rax

 scanFormat$96:
	; Dereference £temporary1297 -> shortPtr shortPtr 0
	mov rsi, [rbp + 85]

 scanFormat$97:
	; IntegralToIntegral £temporary1298 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$98
	neg rax
	neg ax

 scanFormat$98:
	; Assign £temporary1297 -> shortPtr £temporary1298
	mov [rsi], ax

 scanFormat$99:
	; Goto 117
	jmp scanFormat$117

 scanFormat$100:
	; NotEqual 110 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$110

 scanFormat$101:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$102:
	; BinarySubtract £temporary1303 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$103:
	; IntegralToIntegral £temporary1305 £temporary1303

 scanFormat$104:
	; Dereference £temporary1306 -> £temporary1305 £temporary1305 0

 scanFormat$105:
	; Assign intPtr £temporary1306 -> £temporary1305
	mov rax, [rsi]
	mov [rbp + 97], rax

 scanFormat$106:
	; Dereference £temporary1307 -> intPtr intPtr 0
	mov rsi, [rbp + 97]

 scanFormat$107:
	; IntegralToIntegral £temporary1308 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$108
	neg rax
	neg eax

 scanFormat$108:
	; Assign £temporary1307 -> intPtr £temporary1308
	mov [rsi], eax

 scanFormat$109:
	; Goto 117
	jmp scanFormat$117

 scanFormat$110:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$111:
	; BinarySubtract £temporary1311 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$112:
	; IntegralToIntegral £temporary1313 £temporary1311

 scanFormat$113:
	; Dereference £temporary1314 -> £temporary1313 £temporary1313 0

 scanFormat$114:
	; Assign longPtr £temporary1314 -> £temporary1313
	mov rax, [rsi]
	mov [rbp + 77], rax

 scanFormat$115:
	; Dereference £temporary1315 -> longPtr longPtr 0
	mov rsi, [rbp + 77]

 scanFormat$116:
	; Assign £temporary1315 -> longPtr longValue
	mov rax, [rbp + 69]
	mov [rsi], rax

 scanFormat$117:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$118:
	; Goto 331
	jmp scanFormat$331

 scanFormat$119:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$120:
	; Parameter signedint 8 181
	mov dword [rbp + 181], 8

 scanFormat$121:
	; Call scanUnsignedLongInt 157 0
	mov qword [rbp + 157], scanFormat$122
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$122:
	; PostCall 157

 scanFormat$123:
	; GetReturnValue £temporary1317

 scanFormat$124:
	; Assign unsignedLongValue £temporary1317
	mov [rbp + 113], rbx

 scanFormat$125:
	; NotEqual 153 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$153

 scanFormat$126:
	; Equal 136 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$136

 scanFormat$127:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$128:
	; BinarySubtract £temporary1322 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$129:
	; IntegralToIntegral £temporary1324 £temporary1322

 scanFormat$130:
	; Dereference £temporary1325 -> £temporary1324 £temporary1324 0

 scanFormat$131:
	; Assign unsignedShortPtr £temporary1325 -> £temporary1324
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$132:
	; Dereference £temporary1326 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$133:
	; IntegralToIntegral £temporary1327 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$134:
	; Assign £temporary1326 -> unsignedShortPtr £temporary1327
	mov [rsi], ax

 scanFormat$135:
	; Goto 153
	jmp scanFormat$153

 scanFormat$136:
	; NotEqual 146 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$146

 scanFormat$137:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$138:
	; BinarySubtract £temporary1332 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$139:
	; IntegralToIntegral £temporary1334 £temporary1332

 scanFormat$140:
	; Dereference £temporary1335 -> £temporary1334 £temporary1334 0

 scanFormat$141:
	; Assign unsignedIntPtr £temporary1335 -> £temporary1334
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$142:
	; Dereference £temporary1336 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$143:
	; IntegralToIntegral £temporary1337 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$144:
	; Assign £temporary1336 -> unsignedIntPtr £temporary1337
	mov [rsi], eax

 scanFormat$145:
	; Goto 153
	jmp scanFormat$153

 scanFormat$146:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$147:
	; BinarySubtract £temporary1340 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$148:
	; IntegralToIntegral £temporary1342 £temporary1340

 scanFormat$149:
	; Dereference £temporary1343 -> £temporary1342 £temporary1342 0

 scanFormat$150:
	; Assign unsignedLongPtr £temporary1343 -> £temporary1342
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$151:
	; Dereference £temporary1344 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$152:
	; Assign £temporary1344 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$153:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$154:
	; Goto 331
	jmp scanFormat$331

 scanFormat$155:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$156:
	; Parameter signedint 16 181
	mov dword [rbp + 181], 16

 scanFormat$157:
	; Call scanUnsignedLongInt 157 0
	mov qword [rbp + 157], scanFormat$158
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$158:
	; PostCall 157

 scanFormat$159:
	; GetReturnValue £temporary1346

 scanFormat$160:
	; Assign unsignedLongValue £temporary1346
	mov [rbp + 113], rbx

 scanFormat$161:
	; NotEqual 189 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$189

 scanFormat$162:
	; Equal 172 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$172

 scanFormat$163:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$164:
	; BinarySubtract £temporary1351 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$165:
	; IntegralToIntegral £temporary1353 £temporary1351

 scanFormat$166:
	; Dereference £temporary1354 -> £temporary1353 £temporary1353 0

 scanFormat$167:
	; Assign unsignedShortPtr £temporary1354 -> £temporary1353
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$168:
	; Dereference £temporary1355 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$169:
	; IntegralToIntegral £temporary1356 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$170:
	; Assign £temporary1355 -> unsignedShortPtr £temporary1356
	mov [rsi], ax

 scanFormat$171:
	; Goto 189
	jmp scanFormat$189

 scanFormat$172:
	; NotEqual 182 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$182

 scanFormat$173:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$174:
	; BinarySubtract £temporary1361 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$175:
	; IntegralToIntegral £temporary1363 £temporary1361

 scanFormat$176:
	; Dereference £temporary1364 -> £temporary1363 £temporary1363 0

 scanFormat$177:
	; Assign unsignedIntPtr £temporary1364 -> £temporary1363
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$178:
	; Dereference £temporary1365 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$179:
	; IntegralToIntegral £temporary1366 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$180:
	; Assign £temporary1365 -> unsignedIntPtr £temporary1366
	mov [rsi], eax

 scanFormat$181:
	; Goto 189
	jmp scanFormat$189

 scanFormat$182:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$183:
	; BinarySubtract £temporary1369 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$184:
	; IntegralToIntegral £temporary1371 £temporary1369

 scanFormat$185:
	; Dereference £temporary1372 -> £temporary1371 £temporary1371 0

 scanFormat$186:
	; Assign unsignedLongPtr £temporary1372 -> £temporary1371
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$187:
	; Dereference £temporary1373 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$188:
	; Assign £temporary1373 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$189:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$190:
	; Goto 331
	jmp scanFormat$331

 scanFormat$191:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$192:
	; Parameter signedint 0 181
	mov dword [rbp + 181], 0

 scanFormat$193:
	; Call scanUnsignedLongInt 157 0
	mov qword [rbp + 157], scanFormat$194
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$194:
	; PostCall 157

 scanFormat$195:
	; GetReturnValue £temporary1375

 scanFormat$196:
	; Assign unsignedLongValue £temporary1375
	mov [rbp + 113], rbx

 scanFormat$197:
	; NotEqual 225 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$225

 scanFormat$198:
	; Equal 208 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$208

 scanFormat$199:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$200:
	; BinarySubtract £temporary1380 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$201:
	; IntegralToIntegral £temporary1382 £temporary1380

 scanFormat$202:
	; Dereference £temporary1383 -> £temporary1382 £temporary1382 0

 scanFormat$203:
	; Assign unsignedShortPtr £temporary1383 -> £temporary1382
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$204:
	; Dereference £temporary1384 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$205:
	; IntegralToIntegral £temporary1385 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$206:
	; Assign £temporary1384 -> unsignedShortPtr £temporary1385
	mov [rsi], ax

 scanFormat$207:
	; Goto 225
	jmp scanFormat$225

 scanFormat$208:
	; NotEqual 218 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$218

 scanFormat$209:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$210:
	; BinarySubtract £temporary1390 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$211:
	; IntegralToIntegral £temporary1392 £temporary1390

 scanFormat$212:
	; Dereference £temporary1393 -> £temporary1392 £temporary1392 0

 scanFormat$213:
	; Assign unsignedIntPtr £temporary1393 -> £temporary1392
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$214:
	; Dereference £temporary1394 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$215:
	; IntegralToIntegral £temporary1395 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$216:
	; Assign £temporary1394 -> unsignedIntPtr £temporary1395
	mov [rsi], eax

 scanFormat$217:
	; Goto 225
	jmp scanFormat$225

 scanFormat$218:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$219:
	; BinarySubtract £temporary1398 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$220:
	; IntegralToIntegral £temporary1400 £temporary1398

 scanFormat$221:
	; Dereference £temporary1401 -> £temporary1400 £temporary1400 0

 scanFormat$222:
	; Assign unsignedLongPtr £temporary1401 -> £temporary1400
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$223:
	; Dereference £temporary1402 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$224:
	; Assign £temporary1402 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$225:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$226:
	; Goto 331
	jmp scanFormat$331

 scanFormat$227:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$228:
	; Call scanLongDouble 157 0
	mov qword [rbp + 157], scanFormat$229
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongDouble

 scanFormat$229:
	; PostCall 157

 scanFormat$230:
	; GetReturnValue £temporary1404

 scanFormat$231:
	; PopFloat longDoubleValue
	fstp qword [rbp + 145]

 scanFormat$232:
	; NotEqual 261 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$261

 scanFormat$233:
	; Equal 243 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	je scanFormat$243

 scanFormat$234:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$235:
	; BinarySubtract £temporary1409 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$236:
	; IntegralToIntegral £temporary1411 £temporary1409

 scanFormat$237:
	; Dereference £temporary1412 -> £temporary1411 £temporary1411 0

 scanFormat$238:
	; Assign doublePtr £temporary1412 -> £temporary1411
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$239:
	; Dereference £temporary1413 -> doublePtr doublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$240:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$241:
	; PopFloat £temporary1413 -> doublePtr
	fstp qword [rsi]

 scanFormat$242:
	; Goto 261
	jmp scanFormat$261

 scanFormat$243:
	; Equal 253 longDouble 0
	cmp dword [rbp + 61], 0
	je scanFormat$253

 scanFormat$244:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$245:
	; BinarySubtract £temporary1417 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$246:
	; IntegralToIntegral £temporary1419 £temporary1417

 scanFormat$247:
	; Dereference £temporary1420 -> £temporary1419 £temporary1419 0

 scanFormat$248:
	; Assign longDoublePtr £temporary1420 -> £temporary1419
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$249:
	; Dereference £temporary1421 -> longDoublePtr longDoublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$250:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$251:
	; PopFloat £temporary1421 -> longDoublePtr
	fstp qword [rsi]

 scanFormat$252:
	; Goto 261
	jmp scanFormat$261

 scanFormat$253:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$254:
	; BinarySubtract £temporary1424 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$255:
	; IntegralToIntegral £temporary1426 £temporary1424

 scanFormat$256:
	; Dereference £temporary1427 -> £temporary1426 £temporary1426 0

 scanFormat$257:
	; Assign floatPtr £temporary1427 -> £temporary1426
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$258:
	; Dereference £temporary1428 -> floatPtr floatPtr 0
	mov rsi, [rbp + 157]

 scanFormat$259:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$260:
	; PopFloat £temporary1428 -> floatPtr
	fstp dword [rsi]

 scanFormat$261:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$262:
	; Goto 331
	jmp scanFormat$331

 scanFormat$263:
	; Assign not 0
	mov dword [rbp + 157], 0

 scanFormat$264:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$265:
	; IntegralToIntegral £temporary1434 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$266:
	; BinaryAdd £temporary1436 format £temporary1434
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$267:
	; Dereference £temporary1433 -> £temporary1436 £temporary1436 0

 scanFormat$268:
	; NotEqual 271 £temporary1433 -> £temporary1436 94
	cmp byte [rsi], 94
	jne scanFormat$271

 scanFormat$269:
	; Assign not 1
	mov dword [rbp + 157], 1

 scanFormat$270:
	; BinaryAdd startIndex index 1
	mov eax, [rbp + 93]
	inc eax
	mov [rbp + 161], eax

 scanFormat$271:
	; IntegralToIntegral £temporary1440 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$272:
	; BinaryAdd £temporary1442 format £temporary1440
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$273:
	; Dereference £temporary1439 -> £temporary1442 £temporary1442 0

 scanFormat$274:
	; Equal 277 £temporary1439 -> £temporary1442 93
	cmp byte [rsi], 93
	je scanFormat$277

 scanFormat$275:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$276:
	; Goto 271
	jmp scanFormat$271

 scanFormat$277:
	; IntegralToIntegral £temporary1446 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$278:
	; BinaryAdd £temporary1448 format £temporary1446
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$279:
	; Dereference £temporary1445 -> £temporary1448 £temporary1448 0

 scanFormat$280:
	; Assign £temporary1445 -> £temporary1448 0
	mov byte [rsi], 0

 scanFormat$281:
	; NotEqual 298 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$298

 scanFormat$282:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$283:
	; BinarySubtract £temporary1453 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$284:
	; IntegralToIntegral £temporary1455 £temporary1453

 scanFormat$285:
	; Dereference £temporary1456 -> £temporary1455 £temporary1455 0

 scanFormat$286:
	; Assign string £temporary1456 -> £temporary1455
	mov rax, [rsi]
	mov [rbp + 165], rax

 scanFormat$287:
	; PreCall 173 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$288:
	; Parameter pointer string 197
	mov rax, [rbp + 165]
	mov [rbp + 197], rax

 scanFormat$289:
	; IntegralToIntegral £temporary1458 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$290:
	; BinaryAdd £temporary1460 format £temporary1458
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$291:
	; Dereference £temporary1457 -> £temporary1460 £temporary1460 0

 scanFormat$292:
	; Address £temporary1461 £temporary1457 -> £temporary1460

 scanFormat$293:
	; Parameter pointer £temporary1461 205
	mov [rbp + 205], rsi

 scanFormat$294:
	; Parameter signedint not 213
	mov eax, [rbp + 157]
	mov [rbp + 213], eax

 scanFormat$295:
	; Call scanPattern 173 0
	mov qword [rbp + 173], scanFormat$296
	mov [rbp + 181], rbp
	add rbp, 173
	jmp scanPattern

 scanFormat$296:
	; PostCall 173

 scanFormat$297:
	; Goto 331
	jmp scanFormat$331

 scanFormat$298:
	; PreCall 165 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$299:
	; Parameter pointer 0 189
	mov qword [rbp + 189], 0

 scanFormat$300:
	; IntegralToIntegral £temporary1464 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$301:
	; BinaryAdd £temporary1466 format £temporary1464
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$302:
	; Dereference £temporary1463 -> £temporary1466 £temporary1466 0

 scanFormat$303:
	; Address £temporary1467 £temporary1463 -> £temporary1466

 scanFormat$304:
	; Parameter pointer £temporary1467 197
	mov [rbp + 197], rsi

 scanFormat$305:
	; Parameter signedint not 205
	mov eax, [rbp + 157]
	mov [rbp + 205], eax

 scanFormat$306:
	; Call scanPattern 165 0
	mov qword [rbp + 165], scanFormat$307
	mov [rbp + 173], rbp
	add rbp, 165
	jmp scanPattern

 scanFormat$307:
	; PostCall 165

 scanFormat$308:
	; Goto 331
	jmp scanFormat$331

 scanFormat$309:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$310:
	; BinarySubtract £temporary1471 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$311:
	; IntegralToIntegral £temporary1473 £temporary1471

 scanFormat$312:
	; Dereference £temporary1474 -> £temporary1473 £temporary1473 0

 scanFormat$313:
	; Assign charsPtr £temporary1474 -> £temporary1473
	mov rax, [rsi]
	mov [rbp + 105], rax

 scanFormat$314:
	; Dereference £temporary1475 -> charsPtr charsPtr 0
	mov rsi, [rbp + 105]

 scanFormat$315:
	; Assign £temporary1475 -> charsPtr g_inChars
	mov eax, [g_inChars]
	mov [rsi], eax

 scanFormat$316:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$317:
	; Goto 331
	jmp scanFormat$331

 scanFormat$318:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$319:
	; Parameter pointer "scanFormat c = '%c'\n" 181
	mov qword [rbp + 181], string_scanFormat20c203D202725c270A#

 scanFormat$320:
	; IntegralToIntegral £temporary1476 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$321
	neg al
	neg eax

 scanFormat$321:
	; Parameter signedint £temporary1476 189
	mov [rbp + 189], eax

 scanFormat$322:
	; Call printf 157 4
	mov qword [rbp + 157], scanFormat$323
	mov [rbp + 165], rbp
	add rbp, 157
	mov rdi, rbp
	add rdi, 4
	jmp printf

 scanFormat$323:
	; PostCall 157

 scanFormat$324:
	; Goto 331
	jmp scanFormat$331

 scanFormat$325:
	; NotEqual 331 c 37
	cmp byte [rbp + 40], 37
	jne scanFormat$331

 scanFormat$326:
	; Assign percent 1
	mov dword [rbp + 49], 1

 scanFormat$327:
	; Assign shortInt 0
	mov dword [rbp + 53], 0

 scanFormat$328:
	; Assign longIntOrDouble 0
	mov dword [rbp + 57], 0

 scanFormat$329:
	; Assign longDouble 0
	mov dword [rbp + 61], 0

 scanFormat$330:
	; Assign star 0
	mov dword [rbp + 65], 0

 scanFormat$331:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$332:
	; Goto 8
	jmp scanFormat$8

 scanFormat$333:
	; Return g_inCount
	mov ebx, [g_inCount]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanFormat$334:
	; FunctionEnd scanFormat

section .text

 scanf:
	; Address £temporary1480 format
	mov rsi, rbp
	add rsi, 24

 scanf$1:
	; IntegralToIntegral £temporary1481 £temporary1480

 scanf$2:
	; BinaryAdd arg_list £temporary1481 8
	add rsi, 8
	mov [rdi + 32], rsi

 scanf$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanf$4:
	; Parameter pointer format 64
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

 scanf$5:
	; Parameter pointer arg_list 72
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

 scanf$6:
	; Call vscanf 40 0
	mov qword [rdi + 40], scanf$7
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	add rdi, 40
	mov rbp, rdi
	jmp vscanf

 scanf$7:
	; PostCall 40

 scanf$8:
	; GetReturnValue £temporary1484

 scanf$9:
	; Return £temporary1484
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanf$10:
	; FunctionEnd scanf

section .text

 vscanf:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vscanf$1:
	; Parameter pointer stdin 64
	mov rax, [stdin]
	mov [rbp + 64], rax

 vscanf$2:
	; Parameter pointer format 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 vscanf$3:
	; Parameter pointer arg_list 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 vscanf$4:
	; Call vfscanf 40 0
	mov qword [rbp + 40], vscanf$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp vfscanf

 vscanf$5:
	; PostCall 40

 vscanf$6:
	; GetReturnValue £temporary1486

 vscanf$7:
	; Return £temporary1486
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vscanf$8:
	; FunctionEnd vscanf

section .text

 fscanf:
	; Address £temporary1487 format
	mov rsi, rbp
	add rsi, 32

 fscanf$1:
	; IntegralToIntegral £temporary1488 £temporary1487

 fscanf$2:
	; BinaryAdd arg_list £temporary1488 8
	add rsi, 8
	mov [rdi + 40], rsi

 fscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fscanf$4:
	; Parameter pointer inStream 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 fscanf$5:
	; Parameter pointer format 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 fscanf$6:
	; Parameter pointer arg_list 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 fscanf$7:
	; Call vfscanf 48 0
	mov qword [rdi + 48], fscanf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vfscanf

 fscanf$8:
	; PostCall 48

 fscanf$9:
	; GetReturnValue £temporary1491

 fscanf$10:
	; Return £temporary1491
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fscanf$11:
	; FunctionEnd fscanf

section .text

 vfscanf:
	; Assign g_inStatus 0
	mov dword [g_inStatus], 0

 vfscanf$1:
	; IntegralToIntegral £temporary1493 inStream
	mov rax, [rbp + 24]

 vfscanf$2:
	; Assign g_inDevice £temporary1493
	mov [g_inDevice], rax

 vfscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vfscanf$4:
	; Parameter pointer format 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vfscanf$5:
	; Parameter pointer arg_list 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vfscanf$6:
	; Call scanFormat 48 0
	mov qword [rbp + 48], vfscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

 vfscanf$7:
	; PostCall 48

 vfscanf$8:
	; GetReturnValue £temporary1494

 vfscanf$9:
	; Return £temporary1494
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfscanf$10:
	; FunctionEnd vfscanf

section .text

 sscanf:
	; Address £temporary1495 format
	mov rsi, rbp
	add rsi, 32

 sscanf$1:
	; IntegralToIntegral £temporary1496 £temporary1495

 sscanf$2:
	; BinaryAdd arg_list £temporary1496 8
	add rsi, 8
	mov [rdi + 40], rsi

 sscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sscanf$4:
	; Parameter pointer inString 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 sscanf$5:
	; Parameter pointer format 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 sscanf$6:
	; Parameter pointer arg_list 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 sscanf$7:
	; Call vsscanf 48 0
	mov qword [rdi + 48], sscanf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vsscanf

 sscanf$8:
	; PostCall 48

 sscanf$9:
	; GetReturnValue £temporary1499

 sscanf$10:
	; Return £temporary1499
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sscanf$11:
	; FunctionEnd sscanf

section .text

 vsscanf:
	; Assign g_inStatus 1
	mov dword [g_inStatus], 1

 vsscanf$1:
	; IntegralToIntegral £temporary1501 inString
	mov rax, [rbp + 24]

 vsscanf$2:
	; Assign g_inDevice £temporary1501
	mov [g_inDevice], rax

 vsscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vsscanf$4:
	; Parameter pointer format 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vsscanf$5:
	; Parameter pointer arg_list 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vsscanf$6:
	; Call scanFormat 48 0
	mov qword [rbp + 48], vsscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

 vsscanf$7:
	; PostCall 48

 vsscanf$8:
	; GetReturnValue £temporary1502

 vsscanf$9:
	; Return £temporary1502
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsscanf$10:
	; FunctionEnd vsscanf
