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
	; Call 48 scanChar 0
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
	; Parameter 73 signedint £temporary981
	mov [rbp + 73], eax

 scanPattern$9:
	; Call 49 isspace 0
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
	; Call 49 scanChar 0
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
	; Parameter 73 pointer pattern
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
	; Parameter 81 signedint £temporary988
	mov [rbp + 81], eax

 scanPattern$25:
	; Call 49 strchr 0
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
	; Parameter 73 pointer pattern
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
	; Parameter 81 signedint £temporary992
	mov [rbp + 81], eax

 scanPattern$34:
	; Call 49 strchr 0
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
	; Call 49 scanChar 0
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
	; Parameter 73 pointer pattern
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
	; Parameter 81 signedint £temporary1011
	mov [rbp + 81], eax

 scanPattern$60:
	; Call 49 strchr 0
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
	; Parameter 73 pointer pattern
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
	; Parameter 81 signedint £temporary1015
	mov [rbp + 81], eax

 scanPattern$69:
	; Call 49 strchr 0
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
	; Call 49 scanChar 0
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
	; Call 40 scanChar 0
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
	; Parameter 69 signedint £temporary1024
	mov [rbp + 69], eax

 scanString$10:
	; Call 45 isspace 0
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
	; Call 45 scanChar 0
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
	; Parameter 69 signedint £temporary1030
	mov [rbp + 69], eax

 scanString$25:
	; Call 45 isspace 0
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
	; Call 45 scanChar 0
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
	; Parameter 69 signedint £temporary1053
	mov [rbp + 69], eax

 scanString$58:
	; Call 45 isspace 0
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
	; Call 45 scanChar 0
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
	; Parameter 69 signedint £temporary1077
	mov [rbp + 69], eax

 scanString$90:
	; Call 45 isspace 0
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
	; Call 45 scanChar 0
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
	; Parameter 69 signedint £temporary1091
	mov [rbp + 69], eax

 scanString$113:
	; Call 45 isspace 0
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
	; Call 45 scanChar 0
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

 @2886$isDigitInBase:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2886$isDigitInBase$1:
	; IntegralToIntegral £temporary1107 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2886$isDigitInBase$2
	neg al
	neg eax

 @2886$isDigitInBase$2:
	; Parameter 53 signedint £temporary1107
	mov [rbp + 53], eax

 @2886$isDigitInBase$3:
	; Call 29 isdigit 0
	mov qword [rbp + 29], @2886$isDigitInBase$4
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isdigit

 @2886$isDigitInBase$4:
	; PostCall 29

 @2886$isDigitInBase$5:
	; GetReturnValue £temporary1108

 @2886$isDigitInBase$6:
	; Equal 16 £temporary1108 0
	cmp ebx, 0
	je @2886$isDigitInBase$16

 @2886$isDigitInBase$7:
	; BinarySubtract £temporary1109 c 48
	mov al, [rbp + 24]
	sub al, 48

 @2886$isDigitInBase$8:
	; IntegralToIntegral £temporary1110 £temporary1109
	and eax, 255
	cmp al, 0
	jge @2886$isDigitInBase$9
	neg al
	neg eax

 @2886$isDigitInBase$9:
	; Assign value £temporary1110
	mov [rbp + 29], eax

 @2886$isDigitInBase$10:
	; SignedLessThan 14 value 0
	cmp dword [rbp + 29], 0
	jl @2886$isDigitInBase$14

 @2886$isDigitInBase$11:
	; SignedGreaterThanEqual 14 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @2886$isDigitInBase$14

 @2886$isDigitInBase$12:
	; Assign £temporary1114 1
	mov ebx, 1

 @2886$isDigitInBase$13:
	; Goto 15
	jmp @2886$isDigitInBase$15

 @2886$isDigitInBase$14:
	; Assign £temporary1114 0
	mov ebx, 0

 @2886$isDigitInBase$15:
	; Return £temporary1114
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2886$isDigitInBase$16:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2886$isDigitInBase$17:
	; IntegralToIntegral £temporary1115 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2886$isDigitInBase$18
	neg al
	neg eax

 @2886$isDigitInBase$18:
	; Parameter 53 signedint £temporary1115
	mov [rbp + 53], eax

 @2886$isDigitInBase$19:
	; Call 29 islower 0
	mov qword [rbp + 29], @2886$isDigitInBase$20
	mov [rbp + 37], rbp
	add rbp, 29
	jmp islower

 @2886$isDigitInBase$20:
	; PostCall 29

 @2886$isDigitInBase$21:
	; GetReturnValue £temporary1116

 @2886$isDigitInBase$22:
	; Equal 32 £temporary1116 0
	cmp ebx, 0
	je @2886$isDigitInBase$32

 @2886$isDigitInBase$23:
	; BinarySubtract £temporary1117 c 97
	mov al, [rbp + 24]
	sub al, 97

 @2886$isDigitInBase$24:
	; IntegralToIntegral £temporary1118 £temporary1117
	and eax, 255
	cmp al, 0
	jge @2886$isDigitInBase$25
	neg al
	neg eax

 @2886$isDigitInBase$25:
	; BinaryAdd value £temporary1118 10
	add eax, 10
	mov [rbp + 29], eax

 @2886$isDigitInBase$26:
	; SignedLessThan 30 value 0
	cmp dword [rbp + 29], 0
	jl @2886$isDigitInBase$30

 @2886$isDigitInBase$27:
	; SignedGreaterThanEqual 30 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @2886$isDigitInBase$30

 @2886$isDigitInBase$28:
	; Assign £temporary1123 1
	mov ebx, 1

 @2886$isDigitInBase$29:
	; Goto 31
	jmp @2886$isDigitInBase$31

 @2886$isDigitInBase$30:
	; Assign £temporary1123 0
	mov ebx, 0

 @2886$isDigitInBase$31:
	; Return £temporary1123
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2886$isDigitInBase$32:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2886$isDigitInBase$33:
	; IntegralToIntegral £temporary1124 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2886$isDigitInBase$34
	neg al
	neg eax

 @2886$isDigitInBase$34:
	; Parameter 53 signedint £temporary1124
	mov [rbp + 53], eax

 @2886$isDigitInBase$35:
	; Call 29 isupper 0
	mov qword [rbp + 29], @2886$isDigitInBase$36
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isupper

 @2886$isDigitInBase$36:
	; PostCall 29

 @2886$isDigitInBase$37:
	; GetReturnValue £temporary1125

 @2886$isDigitInBase$38:
	; Equal 48 £temporary1125 0
	cmp ebx, 0
	je @2886$isDigitInBase$48

 @2886$isDigitInBase$39:
	; BinarySubtract £temporary1126 c 65
	mov al, [rbp + 24]
	sub al, 65

 @2886$isDigitInBase$40:
	; IntegralToIntegral £temporary1127 £temporary1126
	and eax, 255
	cmp al, 0
	jge @2886$isDigitInBase$41
	neg al
	neg eax

 @2886$isDigitInBase$41:
	; BinaryAdd value £temporary1127 10
	add eax, 10
	mov [rbp + 29], eax

 @2886$isDigitInBase$42:
	; SignedLessThan 46 value 0
	cmp dword [rbp + 29], 0
	jl @2886$isDigitInBase$46

 @2886$isDigitInBase$43:
	; SignedGreaterThanEqual 46 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @2886$isDigitInBase$46

 @2886$isDigitInBase$44:
	; Assign £temporary1132 1
	mov ebx, 1

 @2886$isDigitInBase$45:
	; Goto 47
	jmp @2886$isDigitInBase$47

 @2886$isDigitInBase$46:
	; Assign £temporary1132 0
	mov ebx, 0

 @2886$isDigitInBase$47:
	; Return £temporary1132
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2886$isDigitInBase$48:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2886$isDigitInBase$49:
	; FunctionEnd isDigitInBase

section .text

 @2894$digitToValue:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2894$digitToValue$1:
	; IntegralToIntegral £temporary1136 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2894$digitToValue$2
	neg al
	neg eax

 @2894$digitToValue$2:
	; Parameter 49 signedint £temporary1136
	mov [rbp + 49], eax

 @2894$digitToValue$3:
	; Call 25 isdigit 0
	mov qword [rbp + 25], @2894$digitToValue$4
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isdigit

 @2894$digitToValue$4:
	; PostCall 25

 @2894$digitToValue$5:
	; GetReturnValue £temporary1137

 @2894$digitToValue$6:
	; Equal 10 £temporary1137 0
	cmp ebx, 0
	je @2894$digitToValue$10

 @2894$digitToValue$7:
	; BinarySubtract £temporary1138 c 48
	mov bl, [rbp + 24]
	sub bl, 48

 @2894$digitToValue$8:
	; IntegralToIntegral £temporary1139 £temporary1138
	and ebx, 255
	cmp bl, 0
	jge @2894$digitToValue$9
	neg bl
	neg ebx

 @2894$digitToValue$9:
	; Return £temporary1139
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2894$digitToValue$10:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2894$digitToValue$11:
	; IntegralToIntegral £temporary1140 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2894$digitToValue$12
	neg al
	neg eax

 @2894$digitToValue$12:
	; Parameter 49 signedint £temporary1140
	mov [rbp + 49], eax

 @2894$digitToValue$13:
	; Call 25 islower 0
	mov qword [rbp + 25], @2894$digitToValue$14
	mov [rbp + 33], rbp
	add rbp, 25
	jmp islower

 @2894$digitToValue$14:
	; PostCall 25

 @2894$digitToValue$15:
	; GetReturnValue £temporary1141

 @2894$digitToValue$16:
	; Equal 21 £temporary1141 0
	cmp ebx, 0
	je @2894$digitToValue$21

 @2894$digitToValue$17:
	; BinarySubtract £temporary1142 c 97
	mov bl, [rbp + 24]
	sub bl, 97

 @2894$digitToValue$18:
	; IntegralToIntegral £temporary1143 £temporary1142
	and ebx, 255
	cmp bl, 0
	jge @2894$digitToValue$19
	neg bl
	neg ebx

 @2894$digitToValue$19:
	; BinaryAdd £temporary1144 £temporary1143 10
	add ebx, 10

 @2894$digitToValue$20:
	; Return £temporary1144
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2894$digitToValue$21:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2894$digitToValue$22:
	; IntegralToIntegral £temporary1145 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2894$digitToValue$23
	neg al
	neg eax

 @2894$digitToValue$23:
	; Parameter 49 signedint £temporary1145
	mov [rbp + 49], eax

 @2894$digitToValue$24:
	; Call 25 isupper 0
	mov qword [rbp + 25], @2894$digitToValue$25
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isupper

 @2894$digitToValue$25:
	; PostCall 25

 @2894$digitToValue$26:
	; GetReturnValue £temporary1146

 @2894$digitToValue$27:
	; Equal 32 £temporary1146 0
	cmp ebx, 0
	je @2894$digitToValue$32

 @2894$digitToValue$28:
	; BinarySubtract £temporary1147 c 65
	mov bl, [rbp + 24]
	sub bl, 65

 @2894$digitToValue$29:
	; IntegralToIntegral £temporary1148 £temporary1147
	and ebx, 255
	cmp bl, 0
	jge @2894$digitToValue$30
	neg bl
	neg ebx

 @2894$digitToValue$30:
	; BinaryAdd £temporary1149 £temporary1148 10
	add ebx, 10

 @2894$digitToValue$31:
	; Return £temporary1149
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2894$digitToValue$32:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2894$digitToValue$33:
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
	; Call 44 scanChar 0
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
	; Parameter 69 signedint £temporary1154
	mov [rbp + 69], eax

 scanLongInt$11:
	; Call 45 isspace 0
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
	; Call 45 scanChar 0
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
	; Call 45 scanChar 0
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
	; Call 45 scanChar 0
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
	; Call 45 scanChar 0
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
	; Parameter 69 signedint £temporary1165
	mov [rbp + 69], eax

 scanLongInt$45:
	; Call 45 tolower 0
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
	; Call 45 scanChar 0
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
	; Parameter 69 signedchar input
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$61:
	; Parameter 70 signedint base
	mov eax, [rbp + 24]
	mov [rbp + 70], eax

 scanLongInt$62:
	; Call 45 isDigitInBase 0
	mov qword [rbp + 45], scanLongInt$63
	mov [rbp + 53], rbp
	add rbp, 45
	jmp @2886$isDigitInBase

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
	; Parameter 69 signedchar input
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$70:
	; Call 45 digitToValue 0
	mov qword [rbp + 45], scanLongInt$71
	mov [rbp + 53], rbp
	add rbp, 45
	jmp @2894$digitToValue

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
	; Call 45 scanChar 0
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
	; Parameter 69 signedchar input
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$89:
	; Call 45 unscanChar 0
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
	; Call 44 scanChar 0
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
	; Parameter 73 signedint £temporary1183
	mov [rbp + 73], eax

 scanUnsignedLongInt$10:
	; Call 49 isspace 0
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
	; Call 49 scanChar 0
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
	; Call 49 scanChar 0
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
	; Call 49 scanChar 0
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
	; Parameter 73 signedint £temporary1192
	mov [rbp + 73], eax

 scanUnsignedLongInt$36:
	; Call 49 tolower 0
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
	; Call 49 scanChar 0
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
	; Parameter 73 signedchar input
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$52:
	; Parameter 74 signedint base
	mov eax, [rbp + 24]
	mov [rbp + 74], eax

 scanUnsignedLongInt$53:
	; Call 49 isDigitInBase 0
	mov qword [rbp + 49], scanUnsignedLongInt$54
	mov [rbp + 57], rbp
	add rbp, 49
	jmp @2886$isDigitInBase

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
	; Parameter 73 signedchar input
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$61:
	; Call 49 digitToValue 0
	mov qword [rbp + 49], scanUnsignedLongInt$62
	mov [rbp + 57], rbp
	add rbp, 49
	jmp @2894$digitToValue

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
	; Call 49 scanChar 0
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
	; Parameter 73 signedchar input
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$77:
	; Call 49 unscanChar 0
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
	; Call 48 scanChar 0
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
	; Parameter 73 signedint £temporary1208
	mov [rbp + 73], eax

 scanLongDouble$14:
	; Call 49 isspace 0
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
	; Call 49 scanChar 0
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
	; Call 49 scanChar 0
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
	; Call 49 scanChar 0
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
	; Parameter 73 signedint £temporary1216
	mov [rbp + 73], eax

 scanLongDouble$41:
	; Call 49 isdigit 0
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
	; Call 49 scanChar 0
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
	; Call 49 scanChar 0
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
	; Parameter 73 signedint £temporary1227
	mov [rbp + 73], eax

 scanLongDouble$69:
	; Call 49 isdigit 0
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
	; Call 49 scanChar 0
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
	; IntegralToIntegral £temporary1237 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$94
	neg al
	neg eax

 scanLongDouble$94:
	; Parameter 73 signedint £temporary1237
	mov [rbp + 73], eax

 scanLongDouble$95:
	; Call 49 tolower 0
	mov qword [rbp + 49], scanLongDouble$96
	mov [rbp + 57], rbp
	add rbp, 49
	jmp tolower

 scanLongDouble$96:
	; PostCall 49

 scanLongDouble$97:
	; GetReturnValue £temporary1238

 scanLongDouble$98:
	; NotEqual 118 £temporary1238 101
	cmp ebx, 101
	jne scanLongDouble$118

 scanLongDouble$99:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$100:
	; Parameter 73 signedint 10
	mov dword [rbp + 73], 10

 scanLongDouble$101:
	; Call 49 scanLongInt 0
	mov qword [rbp + 49], scanLongDouble$102
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanLongInt

 scanLongDouble$102:
	; PostCall 49

 scanLongDouble$103:
	; GetReturnValue £temporary1240

 scanLongDouble$104:
	; IntegralToFloating £temporary1241 £temporary1240
	mov [container8bytes#], rbx
	fild qword [container8bytes#]

 scanLongDouble$105:
	; PopFloat exponent
	fstp qword [rbp + 49]

 scanLongDouble$106:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$107:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 57]

 scanLongDouble$108:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 scanLongDouble$109:
	; Parameter 81 double 10.0
	fstp qword [rbp + 89]

 scanLongDouble$110:
	; PushFloat exponent
	fld qword [rbp + 49]

 scanLongDouble$111:
	; Parameter 89 double exponent
	fstp qword [rbp + 97]

 scanLongDouble$112:
	; Call 57 pow 0
	mov qword [rbp + 65], scanLongDouble$113
	mov [rbp + 73], rbp
	add rbp, 65
	jmp pow

 scanLongDouble$113:
	; PostCall 57
	fstp qword [rbp + 65]
	fld qword [rbp + 57]
	fld qword [rbp + 65]

 scanLongDouble$114:
	; GetReturnValue £temporary1242

 scanLongDouble$115:
	; SignedMultiply £temporary1243 value £temporary1242
	fmul

 scanLongDouble$116:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$117:
	; Goto 122
	jmp scanLongDouble$122

 scanLongDouble$118:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$119:
	; Parameter 73 signedchar input
	mov al, [rbp + 48]
	mov [rbp + 73], al

 scanLongDouble$120:
	; Call 49 unscanChar 0
	mov qword [rbp + 49], scanLongDouble$121
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

 scanLongDouble$121:
	; PostCall 49

 scanLongDouble$122:
	; Equal 126 minus 0
	cmp dword [rbp + 24], 0
	je scanLongDouble$126

 scanLongDouble$123:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$124:
	; UnarySubtract £temporary1245 value
	fchs

 scanLongDouble$125:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$126:
	; Equal 128 found 0
	cmp dword [rbp + 28], 0
	je scanLongDouble$128

 scanLongDouble$127:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanLongDouble$128:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$129:
	; Return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongDouble$130:
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
	; IntegralToIntegral £temporary1252 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$9:
	; BinaryAdd £temporary1254 format £temporary1252
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$10:
	; Dereference £temporary1251 -> £temporary1254 £temporary1254 0

 scanFormat$11:
	; Equal 391 £temporary1251 -> £temporary1254 0
	cmp byte [rsi], 0
	je scanFormat$391

 scanFormat$12:
	; IntegralToIntegral £temporary1258 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$13:
	; BinaryAdd £temporary1260 format £temporary1258
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$14:
	; Dereference £temporary1257 -> £temporary1260 £temporary1260 0

 scanFormat$15:
	; Assign c £temporary1257 -> £temporary1260
	mov al, [rsi]
	mov [rbp + 40], al

 scanFormat$16:
	; IntegralToIntegral £temporary1261 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$17
	neg al
	neg eax

 scanFormat$17:
	; BinaryAdd d £temporary1261 1
	inc eax
	mov [rbp + 153], eax

 scanFormat$18:
	; Equal 383 percent 0
	cmp dword [rbp + 49], 0
	je scanFormat$383

 scanFormat$19:
	; BinarySubtract £temporary1263 d 1
	mov eax, [rbp + 153]
	dec eax

 scanFormat$20:
	; Case 38 £temporary1263 104
	cmp eax, 104
	je scanFormat$38

 scanFormat$21:
	; Case 40 £temporary1263 108
	cmp eax, 108
	je scanFormat$40

 scanFormat$22:
	; Case 42 £temporary1263 76
	cmp eax, 76
	je scanFormat$42

 scanFormat$23:
	; Case 44 £temporary1263 42
	cmp eax, 42
	je scanFormat$44

 scanFormat$24:
	; Case 46 £temporary1263 99
	cmp eax, 99
	je scanFormat$46

 scanFormat$25:
	; Case 67 £temporary1263 115
	cmp eax, 115
	je scanFormat$67

 scanFormat$26:
	; Case 89 £temporary1263 100
	cmp eax, 100
	je scanFormat$89

 scanFormat$27:
	; Case 89 £temporary1263 105
	cmp eax, 105
	je scanFormat$89

 scanFormat$28:
	; Case 134 £temporary1263 111
	cmp eax, 111
	je scanFormat$134

 scanFormat$29:
	; Case 179 £temporary1263 120
	cmp eax, 120
	je scanFormat$179

 scanFormat$30:
	; Case 224 £temporary1263 117
	cmp eax, 117
	je scanFormat$224

 scanFormat$31:
	; Case 269 £temporary1263 103
	cmp eax, 103
	je scanFormat$269

 scanFormat$32:
	; Case 269 £temporary1263 102
	cmp eax, 102
	je scanFormat$269

 scanFormat$33:
	; Case 269 £temporary1263 101
	cmp eax, 101
	je scanFormat$269

 scanFormat$34:
	; Case 314 £temporary1263 91
	cmp eax, 91
	je scanFormat$314

 scanFormat$35:
	; Case 364 £temporary1263 110
	cmp eax, 110
	je scanFormat$364

 scanFormat$36:
	; CaseEnd £temporary1263

 scanFormat$37:
	; Goto 376
	jmp scanFormat$376

 scanFormat$38:
	; Assign shortInt 1
	mov dword [rbp + 53], 1

 scanFormat$39:
	; Goto 389
	jmp scanFormat$389

 scanFormat$40:
	; Assign longIntOrDouble 1
	mov dword [rbp + 57], 1

 scanFormat$41:
	; Goto 389
	jmp scanFormat$389

 scanFormat$42:
	; Assign longDouble 1
	mov dword [rbp + 61], 1

 scanFormat$43:
	; Goto 389
	jmp scanFormat$389

 scanFormat$44:
	; Assign star 1
	mov dword [rbp + 65], 1

 scanFormat$45:
	; Goto 389
	jmp scanFormat$389

 scanFormat$46:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$47:
	; Call 157 scanChar 0
	mov qword [rbp + 157], scanFormat$48
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanChar

 scanFormat$48:
	; PostCall 157

 scanFormat$49:
	; GetReturnValue £temporary1264

 scanFormat$50:
	; Assign charValue £temporary1264
	mov [rbp + 157], bl

 scanFormat$51:
	; NotEqual 62 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$62

 scanFormat$52:
	; BinaryAdd £temporary1268 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$53:
	; IntegralToIntegral £temporary1269 £temporary1268

 scanFormat$54:
	; IntegralToIntegral £temporary1270 £temporary1269
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$55:
	; Assign arg_list £temporary1270
	mov [rbp + 32], rax

 scanFormat$56:
	; BinarySubtract £temporary1271 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$57:
	; IntegralToIntegral £temporary1273 £temporary1271

 scanFormat$58:
	; Dereference £temporary1274 -> £temporary1273 £temporary1273 0

 scanFormat$59:
	; Assign charPtr £temporary1274 -> £temporary1273
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$60:
	; Dereference £temporary1275 -> charPtr charPtr 0
	mov rsi, [rbp + 41]

 scanFormat$61:
	; Assign £temporary1275 -> charPtr charValue
	mov al, [rbp + 157]
	mov [rsi], al

 scanFormat$62:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$63:
	; IntegralToIntegral £temporary1276 charValue
	mov al, [rbp + 157]
	and eax, 255
	cmp al, 0
	jge scanFormat$64
	neg al
	neg eax

 scanFormat$64:
	; Equal 389 £temporary1276 -1
	cmp eax, -1
	je scanFormat$389

 scanFormat$65:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanFormat$66:
	; Goto 389
	jmp scanFormat$389

 scanFormat$67:
	; NotEqual 82 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$82

 scanFormat$68:
	; BinaryAdd £temporary1282 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$69:
	; IntegralToIntegral £temporary1283 £temporary1282

 scanFormat$70:
	; IntegralToIntegral £temporary1284 £temporary1283
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$71:
	; Assign arg_list £temporary1284
	mov [rbp + 32], rax

 scanFormat$72:
	; BinarySubtract £temporary1285 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$73:
	; IntegralToIntegral £temporary1287 £temporary1285

 scanFormat$74:
	; Dereference £temporary1288 -> £temporary1287 £temporary1287 0

 scanFormat$75:
	; Assign charPtr £temporary1288 -> £temporary1287
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$76:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$77:
	; Parameter 181 pointer charPtr
	mov rax, [rbp + 41]
	mov [rbp + 181], rax

 scanFormat$78:
	; Parameter 189 signedint 0
	mov dword [rbp + 189], 0

 scanFormat$79:
	; Call 157 scanString 0
	mov qword [rbp + 157], scanFormat$80
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$80:
	; PostCall 157

 scanFormat$81:
	; Goto 87
	jmp scanFormat$87

 scanFormat$82:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$83:
	; Parameter 181 pointer 0
	mov qword [rbp + 181], 0

 scanFormat$84:
	; Parameter 189 signedint 0
	mov dword [rbp + 189], 0

 scanFormat$85:
	; Call 157 scanString 0
	mov qword [rbp + 157], scanFormat$86
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$86:
	; PostCall 157

 scanFormat$87:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$88:
	; Goto 389
	jmp scanFormat$389

 scanFormat$89:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$90:
	; Parameter 181 signedint 10
	mov dword [rbp + 181], 10

 scanFormat$91:
	; Call 157 scanLongInt 0
	mov qword [rbp + 157], scanFormat$92
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongInt

 scanFormat$92:
	; PostCall 157

 scanFormat$93:
	; GetReturnValue £temporary1291

 scanFormat$94:
	; Assign longValue £temporary1291
	mov [rbp + 69], rbx

 scanFormat$95:
	; NotEqual 132 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$132

 scanFormat$96:
	; Equal 109 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$109

 scanFormat$97:
	; BinaryAdd £temporary1295 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$98:
	; IntegralToIntegral £temporary1296 £temporary1295

 scanFormat$99:
	; IntegralToIntegral £temporary1297 £temporary1296
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$100:
	; Assign arg_list £temporary1297
	mov [rbp + 32], rax

 scanFormat$101:
	; BinarySubtract £temporary1298 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$102:
	; IntegralToIntegral £temporary1300 £temporary1298

 scanFormat$103:
	; Dereference £temporary1301 -> £temporary1300 £temporary1300 0

 scanFormat$104:
	; Assign shortPtr £temporary1301 -> £temporary1300
	mov rax, [rsi]
	mov [rbp + 85], rax

 scanFormat$105:
	; Dereference £temporary1302 -> shortPtr shortPtr 0
	mov rsi, [rbp + 85]

 scanFormat$106:
	; IntegralToIntegral £temporary1303 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$107
	neg rax
	neg ax

 scanFormat$107:
	; Assign £temporary1302 -> shortPtr £temporary1303
	mov [rsi], ax

 scanFormat$108:
	; Goto 132
	jmp scanFormat$132

 scanFormat$109:
	; NotEqual 122 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$122

 scanFormat$110:
	; BinaryAdd £temporary1307 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$111:
	; IntegralToIntegral £temporary1308 £temporary1307

 scanFormat$112:
	; IntegralToIntegral £temporary1309 £temporary1308
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$113:
	; Assign arg_list £temporary1309
	mov [rbp + 32], rax

 scanFormat$114:
	; BinarySubtract £temporary1310 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$115:
	; IntegralToIntegral £temporary1312 £temporary1310

 scanFormat$116:
	; Dereference £temporary1313 -> £temporary1312 £temporary1312 0

 scanFormat$117:
	; Assign intPtr £temporary1313 -> £temporary1312
	mov rax, [rsi]
	mov [rbp + 97], rax

 scanFormat$118:
	; Dereference £temporary1314 -> intPtr intPtr 0
	mov rsi, [rbp + 97]

 scanFormat$119:
	; IntegralToIntegral £temporary1315 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$120
	neg rax
	neg eax

 scanFormat$120:
	; Assign £temporary1314 -> intPtr £temporary1315
	mov [rsi], eax

 scanFormat$121:
	; Goto 132
	jmp scanFormat$132

 scanFormat$122:
	; BinaryAdd £temporary1317 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$123:
	; IntegralToIntegral £temporary1318 £temporary1317

 scanFormat$124:
	; IntegralToIntegral £temporary1319 £temporary1318
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$125:
	; Assign arg_list £temporary1319
	mov [rbp + 32], rax

 scanFormat$126:
	; BinarySubtract £temporary1320 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$127:
	; IntegralToIntegral £temporary1322 £temporary1320

 scanFormat$128:
	; Dereference £temporary1323 -> £temporary1322 £temporary1322 0

 scanFormat$129:
	; Assign longPtr £temporary1323 -> £temporary1322
	mov rax, [rsi]
	mov [rbp + 77], rax

 scanFormat$130:
	; Dereference £temporary1324 -> longPtr longPtr 0
	mov rsi, [rbp + 77]

 scanFormat$131:
	; Assign £temporary1324 -> longPtr longValue
	mov rax, [rbp + 69]
	mov [rsi], rax

 scanFormat$132:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$133:
	; Goto 389
	jmp scanFormat$389

 scanFormat$134:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$135:
	; Parameter 181 signedint 8
	mov dword [rbp + 181], 8

 scanFormat$136:
	; Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$137
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$137:
	; PostCall 157

 scanFormat$138:
	; GetReturnValue £temporary1326

 scanFormat$139:
	; Assign unsignedLongValue £temporary1326
	mov [rbp + 113], rbx

 scanFormat$140:
	; NotEqual 177 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$177

 scanFormat$141:
	; Equal 154 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$154

 scanFormat$142:
	; BinaryAdd £temporary1330 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$143:
	; IntegralToIntegral £temporary1331 £temporary1330

 scanFormat$144:
	; IntegralToIntegral £temporary1332 £temporary1331
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$145:
	; Assign arg_list £temporary1332
	mov [rbp + 32], rax

 scanFormat$146:
	; BinarySubtract £temporary1333 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$147:
	; IntegralToIntegral £temporary1335 £temporary1333

 scanFormat$148:
	; Dereference £temporary1336 -> £temporary1335 £temporary1335 0

 scanFormat$149:
	; Assign unsignedShortPtr £temporary1336 -> £temporary1335
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$150:
	; Dereference £temporary1337 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$151:
	; IntegralToIntegral £temporary1338 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$152:
	; Assign £temporary1337 -> unsignedShortPtr £temporary1338
	mov [rsi], ax

 scanFormat$153:
	; Goto 177
	jmp scanFormat$177

 scanFormat$154:
	; NotEqual 167 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$167

 scanFormat$155:
	; BinaryAdd £temporary1342 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$156:
	; IntegralToIntegral £temporary1343 £temporary1342

 scanFormat$157:
	; IntegralToIntegral £temporary1344 £temporary1343
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$158:
	; Assign arg_list £temporary1344
	mov [rbp + 32], rax

 scanFormat$159:
	; BinarySubtract £temporary1345 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$160:
	; IntegralToIntegral £temporary1347 £temporary1345

 scanFormat$161:
	; Dereference £temporary1348 -> £temporary1347 £temporary1347 0

 scanFormat$162:
	; Assign unsignedIntPtr £temporary1348 -> £temporary1347
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$163:
	; Dereference £temporary1349 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$164:
	; IntegralToIntegral £temporary1350 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$165:
	; Assign £temporary1349 -> unsignedIntPtr £temporary1350
	mov [rsi], eax

 scanFormat$166:
	; Goto 177
	jmp scanFormat$177

 scanFormat$167:
	; BinaryAdd £temporary1352 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$168:
	; IntegralToIntegral £temporary1353 £temporary1352

 scanFormat$169:
	; IntegralToIntegral £temporary1354 £temporary1353
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$170:
	; Assign arg_list £temporary1354
	mov [rbp + 32], rax

 scanFormat$171:
	; BinarySubtract £temporary1355 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$172:
	; IntegralToIntegral £temporary1357 £temporary1355

 scanFormat$173:
	; Dereference £temporary1358 -> £temporary1357 £temporary1357 0

 scanFormat$174:
	; Assign unsignedLongPtr £temporary1358 -> £temporary1357
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$175:
	; Dereference £temporary1359 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$176:
	; Assign £temporary1359 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$177:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$178:
	; Goto 389
	jmp scanFormat$389

 scanFormat$179:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$180:
	; Parameter 181 signedint 16
	mov dword [rbp + 181], 16

 scanFormat$181:
	; Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$182
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$182:
	; PostCall 157

 scanFormat$183:
	; GetReturnValue £temporary1361

 scanFormat$184:
	; Assign unsignedLongValue £temporary1361
	mov [rbp + 113], rbx

 scanFormat$185:
	; NotEqual 222 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$222

 scanFormat$186:
	; Equal 199 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$199

 scanFormat$187:
	; BinaryAdd £temporary1365 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$188:
	; IntegralToIntegral £temporary1366 £temporary1365

 scanFormat$189:
	; IntegralToIntegral £temporary1367 £temporary1366
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$190:
	; Assign arg_list £temporary1367
	mov [rbp + 32], rax

 scanFormat$191:
	; BinarySubtract £temporary1368 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$192:
	; IntegralToIntegral £temporary1370 £temporary1368

 scanFormat$193:
	; Dereference £temporary1371 -> £temporary1370 £temporary1370 0

 scanFormat$194:
	; Assign unsignedShortPtr £temporary1371 -> £temporary1370
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$195:
	; Dereference £temporary1372 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$196:
	; IntegralToIntegral £temporary1373 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$197:
	; Assign £temporary1372 -> unsignedShortPtr £temporary1373
	mov [rsi], ax

 scanFormat$198:
	; Goto 222
	jmp scanFormat$222

 scanFormat$199:
	; NotEqual 212 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$212

 scanFormat$200:
	; BinaryAdd £temporary1377 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$201:
	; IntegralToIntegral £temporary1378 £temporary1377

 scanFormat$202:
	; IntegralToIntegral £temporary1379 £temporary1378
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$203:
	; Assign arg_list £temporary1379
	mov [rbp + 32], rax

 scanFormat$204:
	; BinarySubtract £temporary1380 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$205:
	; IntegralToIntegral £temporary1382 £temporary1380

 scanFormat$206:
	; Dereference £temporary1383 -> £temporary1382 £temporary1382 0

 scanFormat$207:
	; Assign unsignedIntPtr £temporary1383 -> £temporary1382
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$208:
	; Dereference £temporary1384 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$209:
	; IntegralToIntegral £temporary1385 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$210:
	; Assign £temporary1384 -> unsignedIntPtr £temporary1385
	mov [rsi], eax

 scanFormat$211:
	; Goto 222
	jmp scanFormat$222

 scanFormat$212:
	; BinaryAdd £temporary1387 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$213:
	; IntegralToIntegral £temporary1388 £temporary1387

 scanFormat$214:
	; IntegralToIntegral £temporary1389 £temporary1388
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$215:
	; Assign arg_list £temporary1389
	mov [rbp + 32], rax

 scanFormat$216:
	; BinarySubtract £temporary1390 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$217:
	; IntegralToIntegral £temporary1392 £temporary1390

 scanFormat$218:
	; Dereference £temporary1393 -> £temporary1392 £temporary1392 0

 scanFormat$219:
	; Assign unsignedLongPtr £temporary1393 -> £temporary1392
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$220:
	; Dereference £temporary1394 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$221:
	; Assign £temporary1394 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$222:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$223:
	; Goto 389
	jmp scanFormat$389

 scanFormat$224:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$225:
	; Parameter 181 signedint 0
	mov dword [rbp + 181], 0

 scanFormat$226:
	; Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$227
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$227:
	; PostCall 157

 scanFormat$228:
	; GetReturnValue £temporary1396

 scanFormat$229:
	; Assign unsignedLongValue £temporary1396
	mov [rbp + 113], rbx

 scanFormat$230:
	; NotEqual 267 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$267

 scanFormat$231:
	; Equal 244 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$244

 scanFormat$232:
	; BinaryAdd £temporary1400 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$233:
	; IntegralToIntegral £temporary1401 £temporary1400

 scanFormat$234:
	; IntegralToIntegral £temporary1402 £temporary1401
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$235:
	; Assign arg_list £temporary1402
	mov [rbp + 32], rax

 scanFormat$236:
	; BinarySubtract £temporary1403 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$237:
	; IntegralToIntegral £temporary1405 £temporary1403

 scanFormat$238:
	; Dereference £temporary1406 -> £temporary1405 £temporary1405 0

 scanFormat$239:
	; Assign unsignedShortPtr £temporary1406 -> £temporary1405
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$240:
	; Dereference £temporary1407 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$241:
	; IntegralToIntegral £temporary1408 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$242:
	; Assign £temporary1407 -> unsignedShortPtr £temporary1408
	mov [rsi], ax

 scanFormat$243:
	; Goto 267
	jmp scanFormat$267

 scanFormat$244:
	; NotEqual 257 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$257

 scanFormat$245:
	; BinaryAdd £temporary1412 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$246:
	; IntegralToIntegral £temporary1413 £temporary1412

 scanFormat$247:
	; IntegralToIntegral £temporary1414 £temporary1413
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$248:
	; Assign arg_list £temporary1414
	mov [rbp + 32], rax

 scanFormat$249:
	; BinarySubtract £temporary1415 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$250:
	; IntegralToIntegral £temporary1417 £temporary1415

 scanFormat$251:
	; Dereference £temporary1418 -> £temporary1417 £temporary1417 0

 scanFormat$252:
	; Assign unsignedIntPtr £temporary1418 -> £temporary1417
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$253:
	; Dereference £temporary1419 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$254:
	; IntegralToIntegral £temporary1420 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$255:
	; Assign £temporary1419 -> unsignedIntPtr £temporary1420
	mov [rsi], eax

 scanFormat$256:
	; Goto 267
	jmp scanFormat$267

 scanFormat$257:
	; BinaryAdd £temporary1422 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$258:
	; IntegralToIntegral £temporary1423 £temporary1422

 scanFormat$259:
	; IntegralToIntegral £temporary1424 £temporary1423
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$260:
	; Assign arg_list £temporary1424
	mov [rbp + 32], rax

 scanFormat$261:
	; BinarySubtract £temporary1425 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$262:
	; IntegralToIntegral £temporary1427 £temporary1425

 scanFormat$263:
	; Dereference £temporary1428 -> £temporary1427 £temporary1427 0

 scanFormat$264:
	; Assign unsignedLongPtr £temporary1428 -> £temporary1427
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$265:
	; Dereference £temporary1429 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$266:
	; Assign £temporary1429 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$267:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$268:
	; Goto 389
	jmp scanFormat$389

 scanFormat$269:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$270:
	; Call 157 scanLongDouble 0
	mov qword [rbp + 157], scanFormat$271
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongDouble

 scanFormat$271:
	; PostCall 157

 scanFormat$272:
	; GetReturnValue £temporary1431

 scanFormat$273:
	; PopFloat longDoubleValue
	fstp qword [rbp + 145]

 scanFormat$274:
	; NotEqual 312 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$312

 scanFormat$275:
	; Equal 288 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	je scanFormat$288

 scanFormat$276:
	; BinaryAdd £temporary1435 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$277:
	; IntegralToIntegral £temporary1436 £temporary1435

 scanFormat$278:
	; IntegralToIntegral £temporary1437 £temporary1436
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$279:
	; Assign arg_list £temporary1437
	mov [rbp + 32], rax

 scanFormat$280:
	; BinarySubtract £temporary1438 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$281:
	; IntegralToIntegral £temporary1440 £temporary1438

 scanFormat$282:
	; Dereference £temporary1441 -> £temporary1440 £temporary1440 0

 scanFormat$283:
	; Assign doublePtr £temporary1441 -> £temporary1440
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$284:
	; Dereference £temporary1442 -> doublePtr doublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$285:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$286:
	; PopFloat £temporary1442 -> doublePtr
	fstp qword [rsi]

 scanFormat$287:
	; Goto 312
	jmp scanFormat$312

 scanFormat$288:
	; Equal 301 longDouble 0
	cmp dword [rbp + 61], 0
	je scanFormat$301

 scanFormat$289:
	; BinaryAdd £temporary1445 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$290:
	; IntegralToIntegral £temporary1446 £temporary1445

 scanFormat$291:
	; IntegralToIntegral £temporary1447 £temporary1446
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$292:
	; Assign arg_list £temporary1447
	mov [rbp + 32], rax

 scanFormat$293:
	; BinarySubtract £temporary1448 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$294:
	; IntegralToIntegral £temporary1450 £temporary1448

 scanFormat$295:
	; Dereference £temporary1451 -> £temporary1450 £temporary1450 0

 scanFormat$296:
	; Assign longDoublePtr £temporary1451 -> £temporary1450
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$297:
	; Dereference £temporary1452 -> longDoublePtr longDoublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$298:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$299:
	; PopFloat £temporary1452 -> longDoublePtr
	fstp qword [rsi]

 scanFormat$300:
	; Goto 312
	jmp scanFormat$312

 scanFormat$301:
	; BinaryAdd £temporary1454 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$302:
	; IntegralToIntegral £temporary1455 £temporary1454

 scanFormat$303:
	; IntegralToIntegral £temporary1456 £temporary1455
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$304:
	; Assign arg_list £temporary1456
	mov [rbp + 32], rax

 scanFormat$305:
	; BinarySubtract £temporary1457 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$306:
	; IntegralToIntegral £temporary1459 £temporary1457

 scanFormat$307:
	; Dereference £temporary1460 -> £temporary1459 £temporary1459 0

 scanFormat$308:
	; Assign floatPtr £temporary1460 -> £temporary1459
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$309:
	; Dereference £temporary1461 -> floatPtr floatPtr 0
	mov rsi, [rbp + 157]

 scanFormat$310:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$311:
	; PopFloat £temporary1461 -> floatPtr
	fstp dword [rsi]

 scanFormat$312:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$313:
	; Goto 389
	jmp scanFormat$389

 scanFormat$314:
	; Assign not 0
	mov dword [rbp + 157], 0

 scanFormat$315:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$316:
	; IntegralToIntegral £temporary1467 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$317:
	; BinaryAdd £temporary1469 format £temporary1467
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$318:
	; Dereference £temporary1466 -> £temporary1469 £temporary1469 0

 scanFormat$319:
	; NotEqual 322 £temporary1466 -> £temporary1469 94
	cmp byte [rsi], 94
	jne scanFormat$322

 scanFormat$320:
	; Assign not 1
	mov dword [rbp + 157], 1

 scanFormat$321:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$322:
	; Assign startIndex index
	mov eax, [rbp + 93]
	mov [rbp + 161], eax

 scanFormat$323:
	; IntegralToIntegral £temporary1473 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$324:
	; BinaryAdd £temporary1475 format £temporary1473
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$325:
	; Dereference £temporary1472 -> £temporary1475 £temporary1475 0

 scanFormat$326:
	; Equal 329 £temporary1472 -> £temporary1475 93
	cmp byte [rsi], 93
	je scanFormat$329

 scanFormat$327:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$328:
	; Goto 323
	jmp scanFormat$323

 scanFormat$329:
	; IntegralToIntegral £temporary1479 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$330:
	; BinaryAdd £temporary1481 format £temporary1479
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$331:
	; Dereference £temporary1478 -> £temporary1481 £temporary1481 0

 scanFormat$332:
	; Assign £temporary1478 -> £temporary1481 0
	mov byte [rsi], 0

 scanFormat$333:
	; NotEqual 353 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$353

 scanFormat$334:
	; BinaryAdd £temporary1485 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$335:
	; IntegralToIntegral £temporary1486 £temporary1485

 scanFormat$336:
	; IntegralToIntegral £temporary1487 £temporary1486
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$337:
	; Assign arg_list £temporary1487
	mov [rbp + 32], rax

 scanFormat$338:
	; BinarySubtract £temporary1488 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$339:
	; IntegralToIntegral £temporary1490 £temporary1488

 scanFormat$340:
	; Dereference £temporary1491 -> £temporary1490 £temporary1490 0

 scanFormat$341:
	; Assign string £temporary1491 -> £temporary1490
	mov rax, [rsi]
	mov [rbp + 165], rax

 scanFormat$342:
	; PreCall 173 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$343:
	; Parameter 197 pointer string
	mov rax, [rbp + 165]
	mov [rbp + 197], rax

 scanFormat$344:
	; IntegralToIntegral £temporary1493 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$345:
	; BinaryAdd £temporary1495 format £temporary1493
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$346:
	; Dereference £temporary1492 -> £temporary1495 £temporary1495 0

 scanFormat$347:
	; Address £temporary1496 £temporary1492 -> £temporary1495

 scanFormat$348:
	; Parameter 205 pointer £temporary1496
	mov [rbp + 205], rsi

 scanFormat$349:
	; Parameter 213 signedint not
	mov eax, [rbp + 157]
	mov [rbp + 213], eax

 scanFormat$350:
	; Call 173 scanPattern 0
	mov qword [rbp + 173], scanFormat$351
	mov [rbp + 181], rbp
	add rbp, 173
	jmp scanPattern

 scanFormat$351:
	; PostCall 173

 scanFormat$352:
	; Goto 389
	jmp scanFormat$389

 scanFormat$353:
	; PreCall 165 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$354:
	; Parameter 189 pointer 0
	mov qword [rbp + 189], 0

 scanFormat$355:
	; IntegralToIntegral £temporary1499 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$356:
	; BinaryAdd £temporary1501 format £temporary1499
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$357:
	; Dereference £temporary1498 -> £temporary1501 £temporary1501 0

 scanFormat$358:
	; Address £temporary1502 £temporary1498 -> £temporary1501

 scanFormat$359:
	; Parameter 197 pointer £temporary1502
	mov [rbp + 197], rsi

 scanFormat$360:
	; Parameter 205 signedint not
	mov eax, [rbp + 157]
	mov [rbp + 205], eax

 scanFormat$361:
	; Call 165 scanPattern 0
	mov qword [rbp + 165], scanFormat$362
	mov [rbp + 173], rbp
	add rbp, 165
	jmp scanPattern

 scanFormat$362:
	; PostCall 165

 scanFormat$363:
	; Goto 389
	jmp scanFormat$389

 scanFormat$364:
	; BinaryAdd £temporary1505 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$365:
	; IntegralToIntegral £temporary1506 £temporary1505

 scanFormat$366:
	; IntegralToIntegral £temporary1507 £temporary1506
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$367:
	; Assign arg_list £temporary1507
	mov [rbp + 32], rax

 scanFormat$368:
	; BinarySubtract £temporary1508 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$369:
	; IntegralToIntegral £temporary1510 £temporary1508

 scanFormat$370:
	; Dereference £temporary1511 -> £temporary1510 £temporary1510 0

 scanFormat$371:
	; Assign charsPtr £temporary1511 -> £temporary1510
	mov rax, [rsi]
	mov [rbp + 105], rax

 scanFormat$372:
	; Dereference £temporary1512 -> charsPtr charsPtr 0
	mov rsi, [rbp + 105]

 scanFormat$373:
	; Assign £temporary1512 -> charsPtr g_inChars
	mov eax, [g_inChars]
	mov [rsi], eax

 scanFormat$374:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$375:
	; Goto 389
	jmp scanFormat$389

 scanFormat$376:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$377:
	; Parameter 181 pointer "scanFormat c = '%c'\n"
	mov qword [rbp + 181], string_scanFormat20c203D202725c270A#

 scanFormat$378:
	; IntegralToIntegral £temporary1513 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$379
	neg al
	neg eax

 scanFormat$379:
	; Parameter 189 signedint £temporary1513
	mov [rbp + 189], eax

 scanFormat$380:
	; Call 157 printf 4
	mov qword [rbp + 157], scanFormat$381
	mov [rbp + 165], rbp
	add rbp, 157
	mov rdi, rbp
	add rdi, 4
	jmp printf

 scanFormat$381:
	; PostCall 157

 scanFormat$382:
	; Goto 389
	jmp scanFormat$389

 scanFormat$383:
	; NotEqual 389 c 37
	cmp byte [rbp + 40], 37
	jne scanFormat$389

 scanFormat$384:
	; Assign percent 1
	mov dword [rbp + 49], 1

 scanFormat$385:
	; Assign shortInt 0
	mov dword [rbp + 53], 0

 scanFormat$386:
	; Assign longIntOrDouble 0
	mov dword [rbp + 57], 0

 scanFormat$387:
	; Assign longDouble 0
	mov dword [rbp + 61], 0

 scanFormat$388:
	; Assign star 0
	mov dword [rbp + 65], 0

 scanFormat$389:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$390:
	; Goto 8
	jmp scanFormat$8

 scanFormat$391:
	; Return g_inCount
	mov ebx, [g_inCount]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanFormat$392:
	; FunctionEnd scanFormat

section .text

 scanf:
	; Address £temporary1517 format
	mov rsi, rbp
	add rsi, 24

 scanf$1:
	; IntegralToIntegral £temporary1518 £temporary1517

 scanf$2:
	; BinaryAdd arg_list £temporary1518 8
	add rsi, 8
	mov [rdi + 32], rsi

 scanf$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanf$4:
	; Parameter 64 pointer format
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

 scanf$5:
	; Parameter 72 pointer arg_list
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

 scanf$6:
	; Call 40 vscanf 0
	mov qword [rdi + 40], scanf$7
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	add rdi, 40
	mov rbp, rdi
	jmp vscanf

 scanf$7:
	; PostCall 40

 scanf$8:
	; GetReturnValue £temporary1521

 scanf$9:
	; Return £temporary1521
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
	; Parameter 64 pointer stdin
	mov rax, [stdin]
	mov [rbp + 64], rax

 vscanf$2:
	; Parameter 72 pointer format
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 vscanf$3:
	; Parameter 80 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 vscanf$4:
	; Call 40 vfscanf 0
	mov qword [rbp + 40], vscanf$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp vfscanf

 vscanf$5:
	; PostCall 40

 vscanf$6:
	; GetReturnValue £temporary1523

 vscanf$7:
	; Return £temporary1523
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vscanf$8:
	; FunctionEnd vscanf

section .text

 fscanf:
	; Address £temporary1524 format
	mov rsi, rbp
	add rsi, 32

 fscanf$1:
	; IntegralToIntegral £temporary1525 £temporary1524

 fscanf$2:
	; BinaryAdd arg_list £temporary1525 8
	add rsi, 8
	mov [rdi + 40], rsi

 fscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fscanf$4:
	; Parameter 72 pointer inStream
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 fscanf$5:
	; Parameter 80 pointer format
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 fscanf$6:
	; Parameter 88 pointer arg_list
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 fscanf$7:
	; Call 48 vfscanf 0
	mov qword [rdi + 48], fscanf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vfscanf

 fscanf$8:
	; PostCall 48

 fscanf$9:
	; GetReturnValue £temporary1528

 fscanf$10:
	; Return £temporary1528
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
	; IntegralToIntegral £temporary1530 inStream
	mov rax, [rbp + 24]

 vfscanf$2:
	; Assign g_inDevice £temporary1530
	mov [g_inDevice], rax

 vfscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vfscanf$4:
	; Parameter 72 pointer format
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vfscanf$5:
	; Parameter 80 pointer arg_list
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vfscanf$6:
	; Call 48 scanFormat 0
	mov qword [rbp + 48], vfscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

 vfscanf$7:
	; PostCall 48

 vfscanf$8:
	; GetReturnValue £temporary1531

 vfscanf$9:
	; Return £temporary1531
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfscanf$10:
	; FunctionEnd vfscanf

section .text

 sscanf:
	; Address £temporary1532 format
	mov rsi, rbp
	add rsi, 32

 sscanf$1:
	; IntegralToIntegral £temporary1533 £temporary1532

 sscanf$2:
	; BinaryAdd arg_list £temporary1533 8
	add rsi, 8
	mov [rdi + 40], rsi

 sscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sscanf$4:
	; Parameter 72 pointer inString
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 sscanf$5:
	; Parameter 80 pointer format
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 sscanf$6:
	; Parameter 88 pointer arg_list
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 sscanf$7:
	; Call 48 vsscanf 0
	mov qword [rdi + 48], sscanf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vsscanf

 sscanf$8:
	; PostCall 48

 sscanf$9:
	; GetReturnValue £temporary1536

 sscanf$10:
	; Return £temporary1536
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
	; IntegralToIntegral £temporary1538 inString
	mov rax, [rbp + 24]

 vsscanf$2:
	; Assign g_inDevice £temporary1538
	mov [g_inDevice], rax

 vsscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vsscanf$4:
	; Parameter 72 pointer format
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vsscanf$5:
	; Parameter 80 pointer arg_list
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vsscanf$6:
	; Call 48 scanFormat 0
	mov qword [rbp + 48], vsscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

 vsscanf$7:
	; PostCall 48

 vsscanf$8:
	; GetReturnValue £temporary1539

 vsscanf$9:
	; Return £temporary1539
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsscanf$10:
	; FunctionEnd vsscanf
