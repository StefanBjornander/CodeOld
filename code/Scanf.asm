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
	; IntegralToIntegral £temporary962 g_inDevice
	mov rax, [g_inDevice]

 scanChar$6:
	; Assign stream £temporary962
	mov [rbp + 25], rax

 scanChar$7:
	; Dereference £temporary963 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$8:
	; Assign handle £temporary963 -> stream
	mov eax, [rsi + 4]
	mov [rbp + 33], eax

 scanChar$9:
	; AssignRegister rax 0
	mov rax, 0

 scanChar$10:
	; Dereference £temporary966 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$11:
	; IntegralToIntegral £temporary967 £temporary966 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 scanChar$12:
	; AssignRegister rdi £temporary967

 scanChar$13:
	; Address £temporary969 c
	mov rsi, rbp
	add rsi, 24

 scanChar$14:
	; IntegralToIntegral £temporary970 £temporary969

 scanChar$15:
	; AssignRegister rsi £temporary970

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
	; IntegralToIntegral £temporary973 g_inDevice
	mov rax, [g_inDevice]

 scanChar$21:
	; Assign inString £temporary973
	mov [rbp + 37], rax

 scanChar$22:
	; Assign £temporary974 g_inChars
	mov eax, [g_inChars]

 scanChar$23:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanChar$24:
	; IntegralToIntegral £temporary976 £temporary974
	mov rbx, 4294967295
	and rax, rbx

 scanChar$25:
	; BinaryAdd £temporary978 inString £temporary976
	mov rsi, [rbp + 37]
	add rsi, rax

 scanChar$26:
	; Dereference £temporary975 -> £temporary978 £temporary978 0

 scanChar$27:
	; Return £temporary975 -> £temporary978
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
	; GetReturnValue £temporary982

 scanPattern$5:
	; Assign input £temporary982
	mov [rbp + 48], bl

 scanPattern$6:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$7:
	; IntegralToIntegral £temporary983 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$8
	neg al
	neg eax

 scanPattern$8:
	; Parameter signedint £temporary983 73
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
	; GetReturnValue £temporary984

 scanPattern$12:
	; Equal 19 £temporary984 0
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
	; GetReturnValue £temporary985

 scanPattern$17:
	; Assign input £temporary985
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
	; IntegralToIntegral £temporary990 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$24
	neg al
	neg eax

 scanPattern$24:
	; Parameter signedint £temporary990 81
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
	; GetReturnValue £temporary991

 scanPattern$28:
	; NotEqual 38 £temporary991 0
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
	; IntegralToIntegral £temporary994 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$33
	neg al
	neg eax

 scanPattern$33:
	; Parameter signedint £temporary994 81
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
	; GetReturnValue £temporary995

 scanPattern$37:
	; NotEqual 50 £temporary995 0
	cmp rbx, 0
	jne scanPattern$50

 scanPattern$38:
	; Assign £temporary1001 index
	mov eax, [rbp + 44]

 scanPattern$39:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 scanPattern$40:
	; IntegralToIntegral £temporary1003 £temporary1001
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$41:
	; BinaryAdd £temporary1005 string £temporary1003
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$42:
	; Dereference £temporary1002 -> £temporary1005 £temporary1005 0

 scanPattern$43:
	; Assign £temporary1002 -> £temporary1005 input
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
	; GetReturnValue £temporary1006

 scanPattern$48:
	; Assign input £temporary1006
	mov [rbp + 48], bl

 scanPattern$49:
	; Goto 20
	jmp scanPattern$20

 scanPattern$50:
	; IntegralToIntegral £temporary1008 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$51:
	; BinaryAdd £temporary1010 string £temporary1008
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$52:
	; Dereference £temporary1007 -> £temporary1010 £temporary1010 0

 scanPattern$53:
	; Assign £temporary1007 -> £temporary1010 0
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
	; IntegralToIntegral £temporary1013 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$59
	neg al
	neg eax

 scanPattern$59:
	; Parameter signedint £temporary1013 81
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
	; GetReturnValue £temporary1014

 scanPattern$63:
	; NotEqual 73 £temporary1014 0
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
	; IntegralToIntegral £temporary1017 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$68
	neg al
	neg eax

 scanPattern$68:
	; Parameter signedint £temporary1017 81
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
	; GetReturnValue £temporary1018

 scanPattern$72:
	; NotEqual 79 £temporary1018 0
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
	; GetReturnValue £temporary1024

 scanPattern$77:
	; Assign input £temporary1024
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
	; GetReturnValue £temporary1025

 scanString$5:
	; Assign input £temporary1025
	mov [rbp + 40], bl

 scanString$6:
	; Assign found 0
	mov dword [rbp + 41], 0

 scanString$7:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$8:
	; IntegralToIntegral £temporary1026 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$9
	neg al
	neg eax

 scanString$9:
	; Parameter signedint £temporary1026 69
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
	; GetReturnValue £temporary1027

 scanString$13:
	; Equal 20 £temporary1027 0
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
	; GetReturnValue £temporary1028

 scanString$18:
	; Assign input £temporary1028
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
	; IntegralToIntegral £temporary1032 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$24
	neg al
	neg eax

 scanString$24:
	; Parameter signedint £temporary1032 69
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
	; GetReturnValue £temporary1033

 scanString$28:
	; NotEqual 46 £temporary1033 0
	cmp ebx, 0
	jne scanString$46

 scanString$29:
	; IntegralToIntegral £temporary1036 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$30
	neg al
	neg eax

 scanString$30:
	; Equal 46 £temporary1036 -1
	cmp eax, -1
	je scanString$46

 scanString$31:
	; Equal 46 input 10
	cmp byte [rbp + 40], 10
	je scanString$46

 scanString$32:
	; Assign £temporary1041 index
	mov eax, [rbp + 36]

 scanString$33:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$34:
	; IntegralToIntegral £temporary1043 £temporary1041
	mov rbx, 4294967295
	and rax, rbx

 scanString$35:
	; BinaryAdd £temporary1045 string £temporary1043
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$36:
	; Dereference £temporary1042 -> £temporary1045 £temporary1045 0

 scanString$37:
	; Assign £temporary1042 -> £temporary1045 input
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
	; GetReturnValue £temporary1046

 scanString$42:
	; Assign input £temporary1046
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
	; IntegralToIntegral £temporary1049 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$47:
	; BinaryAdd £temporary1051 string £temporary1049
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$48:
	; Dereference £temporary1048 -> £temporary1051 £temporary1051 0

 scanString$49:
	; Assign £temporary1048 -> £temporary1051 0
	mov byte [rsi], 0

 scanString$50:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$51:
	; Goto 130
	jmp scanString$130

 scanString$52:
	; Assign £temporary1053 precision
	mov eax, [rbp + 32]

 scanString$53:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$54:
	; SignedLessThanEqual 79 £temporary1053 0
	cmp eax, 0
	jle scanString$79

 scanString$55:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$56:
	; IntegralToIntegral £temporary1055 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$57
	neg al
	neg eax

 scanString$57:
	; Parameter signedint £temporary1055 69
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
	; GetReturnValue £temporary1056

 scanString$61:
	; NotEqual 79 £temporary1056 0
	cmp ebx, 0
	jne scanString$79

 scanString$62:
	; IntegralToIntegral £temporary1059 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$63
	neg al
	neg eax

 scanString$63:
	; Equal 79 £temporary1059 -1
	cmp eax, -1
	je scanString$79

 scanString$64:
	; Equal 79 input 10
	cmp byte [rbp + 40], 10
	je scanString$79

 scanString$65:
	; Assign £temporary1065 index
	mov eax, [rbp + 36]

 scanString$66:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$67:
	; IntegralToIntegral £temporary1067 £temporary1065
	mov rbx, 4294967295
	and rax, rbx

 scanString$68:
	; BinaryAdd £temporary1069 string £temporary1067
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$69:
	; Dereference £temporary1066 -> £temporary1069 £temporary1069 0

 scanString$70:
	; Assign £temporary1066 -> £temporary1069 input
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
	; GetReturnValue £temporary1070

 scanString$75:
	; Assign input £temporary1070
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
	; IntegralToIntegral £temporary1074 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$81:
	; BinaryAdd £temporary1076 string £temporary1074
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$82:
	; Dereference £temporary1073 -> £temporary1076 £temporary1076 0

 scanString$83:
	; Assign £temporary1073 -> £temporary1076 0
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
	; IntegralToIntegral £temporary1079 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$89
	neg al
	neg eax

 scanString$89:
	; Parameter signedint £temporary1079 69
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
	; GetReturnValue £temporary1080

 scanString$93:
	; NotEqual 105 £temporary1080 0
	cmp ebx, 0
	jne scanString$105

 scanString$94:
	; IntegralToIntegral £temporary1083 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$95
	neg al
	neg eax

 scanString$95:
	; Equal 105 £temporary1083 -1
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
	; GetReturnValue £temporary1088

 scanString$101:
	; Assign input £temporary1088
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
	; Assign £temporary1091 precision
	mov eax, [rbp + 32]

 scanString$108:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$109:
	; SignedLessThanEqual 128 £temporary1091 0
	cmp eax, 0
	jle scanString$128

 scanString$110:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$111:
	; IntegralToIntegral £temporary1093 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$112
	neg al
	neg eax

 scanString$112:
	; Parameter signedint £temporary1093 69
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
	; GetReturnValue £temporary1094

 scanString$116:
	; NotEqual 128 £temporary1094 0
	cmp ebx, 0
	jne scanString$128

 scanString$117:
	; IntegralToIntegral £temporary1097 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$118
	neg al
	neg eax

 scanString$118:
	; Equal 128 £temporary1097 -1
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
	; GetReturnValue £temporary1103

 scanString$124:
	; Assign input £temporary1103
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

 @2889$isDigitInBase:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2889$isDigitInBase$1:
	; IntegralToIntegral £temporary1109 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2889$isDigitInBase$2
	neg al
	neg eax

 @2889$isDigitInBase$2:
	; Parameter signedint £temporary1109 53
	mov [rbp + 53], eax

 @2889$isDigitInBase$3:
	; Call isdigit 29 0
	mov qword [rbp + 29], @2889$isDigitInBase$4
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isdigit

 @2889$isDigitInBase$4:
	; PostCall 29

 @2889$isDigitInBase$5:
	; GetReturnValue £temporary1110

 @2889$isDigitInBase$6:
	; Equal 16 £temporary1110 0
	cmp ebx, 0
	je @2889$isDigitInBase$16

 @2889$isDigitInBase$7:
	; BinarySubtract £temporary1111 c 48
	mov al, [rbp + 24]
	sub al, 48

 @2889$isDigitInBase$8:
	; IntegralToIntegral £temporary1112 £temporary1111
	and eax, 255
	cmp al, 0
	jge @2889$isDigitInBase$9
	neg al
	neg eax

 @2889$isDigitInBase$9:
	; Assign value £temporary1112
	mov [rbp + 29], eax

 @2889$isDigitInBase$10:
	; SignedLessThan 14 value 0
	cmp dword [rbp + 29], 0
	jl @2889$isDigitInBase$14

 @2889$isDigitInBase$11:
	; SignedGreaterThanEqual 14 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @2889$isDigitInBase$14

 @2889$isDigitInBase$12:
	; Assign £temporary1116 1
	mov ebx, 1

 @2889$isDigitInBase$13:
	; Goto 15
	jmp @2889$isDigitInBase$15

 @2889$isDigitInBase$14:
	; Assign £temporary1116 0
	mov ebx, 0

 @2889$isDigitInBase$15:
	; Return £temporary1116
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2889$isDigitInBase$16:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2889$isDigitInBase$17:
	; IntegralToIntegral £temporary1117 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2889$isDigitInBase$18
	neg al
	neg eax

 @2889$isDigitInBase$18:
	; Parameter signedint £temporary1117 53
	mov [rbp + 53], eax

 @2889$isDigitInBase$19:
	; Call islower 29 0
	mov qword [rbp + 29], @2889$isDigitInBase$20
	mov [rbp + 37], rbp
	add rbp, 29
	jmp islower

 @2889$isDigitInBase$20:
	; PostCall 29

 @2889$isDigitInBase$21:
	; GetReturnValue £temporary1118

 @2889$isDigitInBase$22:
	; Equal 32 £temporary1118 0
	cmp ebx, 0
	je @2889$isDigitInBase$32

 @2889$isDigitInBase$23:
	; BinarySubtract £temporary1119 c 97
	mov al, [rbp + 24]
	sub al, 97

 @2889$isDigitInBase$24:
	; IntegralToIntegral £temporary1120 £temporary1119
	and eax, 255
	cmp al, 0
	jge @2889$isDigitInBase$25
	neg al
	neg eax

 @2889$isDigitInBase$25:
	; BinaryAdd value £temporary1120 10
	add eax, 10
	mov [rbp + 29], eax

 @2889$isDigitInBase$26:
	; SignedLessThan 30 value 0
	cmp dword [rbp + 29], 0
	jl @2889$isDigitInBase$30

 @2889$isDigitInBase$27:
	; SignedGreaterThanEqual 30 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @2889$isDigitInBase$30

 @2889$isDigitInBase$28:
	; Assign £temporary1125 1
	mov ebx, 1

 @2889$isDigitInBase$29:
	; Goto 31
	jmp @2889$isDigitInBase$31

 @2889$isDigitInBase$30:
	; Assign £temporary1125 0
	mov ebx, 0

 @2889$isDigitInBase$31:
	; Return £temporary1125
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2889$isDigitInBase$32:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2889$isDigitInBase$33:
	; IntegralToIntegral £temporary1126 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2889$isDigitInBase$34
	neg al
	neg eax

 @2889$isDigitInBase$34:
	; Parameter signedint £temporary1126 53
	mov [rbp + 53], eax

 @2889$isDigitInBase$35:
	; Call isupper 29 0
	mov qword [rbp + 29], @2889$isDigitInBase$36
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isupper

 @2889$isDigitInBase$36:
	; PostCall 29

 @2889$isDigitInBase$37:
	; GetReturnValue £temporary1127

 @2889$isDigitInBase$38:
	; Equal 48 £temporary1127 0
	cmp ebx, 0
	je @2889$isDigitInBase$48

 @2889$isDigitInBase$39:
	; BinarySubtract £temporary1128 c 65
	mov al, [rbp + 24]
	sub al, 65

 @2889$isDigitInBase$40:
	; IntegralToIntegral £temporary1129 £temporary1128
	and eax, 255
	cmp al, 0
	jge @2889$isDigitInBase$41
	neg al
	neg eax

 @2889$isDigitInBase$41:
	; BinaryAdd value £temporary1129 10
	add eax, 10
	mov [rbp + 29], eax

 @2889$isDigitInBase$42:
	; SignedLessThan 46 value 0
	cmp dword [rbp + 29], 0
	jl @2889$isDigitInBase$46

 @2889$isDigitInBase$43:
	; SignedGreaterThanEqual 46 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @2889$isDigitInBase$46

 @2889$isDigitInBase$44:
	; Assign £temporary1134 1
	mov ebx, 1

 @2889$isDigitInBase$45:
	; Goto 47
	jmp @2889$isDigitInBase$47

 @2889$isDigitInBase$46:
	; Assign £temporary1134 0
	mov ebx, 0

 @2889$isDigitInBase$47:
	; Return £temporary1134
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2889$isDigitInBase$48:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2889$isDigitInBase$49:
	; FunctionEnd isDigitInBase

section .text

 @2897$digitToValue:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2897$digitToValue$1:
	; IntegralToIntegral £temporary1138 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2897$digitToValue$2
	neg al
	neg eax

 @2897$digitToValue$2:
	; Parameter signedint £temporary1138 49
	mov [rbp + 49], eax

 @2897$digitToValue$3:
	; Call isdigit 25 0
	mov qword [rbp + 25], @2897$digitToValue$4
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isdigit

 @2897$digitToValue$4:
	; PostCall 25

 @2897$digitToValue$5:
	; GetReturnValue £temporary1139

 @2897$digitToValue$6:
	; Equal 10 £temporary1139 0
	cmp ebx, 0
	je @2897$digitToValue$10

 @2897$digitToValue$7:
	; BinarySubtract £temporary1140 c 48
	mov bl, [rbp + 24]
	sub bl, 48

 @2897$digitToValue$8:
	; IntegralToIntegral £temporary1141 £temporary1140
	and ebx, 255
	cmp bl, 0
	jge @2897$digitToValue$9
	neg bl
	neg ebx

 @2897$digitToValue$9:
	; Return £temporary1141
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2897$digitToValue$10:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2897$digitToValue$11:
	; IntegralToIntegral £temporary1142 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2897$digitToValue$12
	neg al
	neg eax

 @2897$digitToValue$12:
	; Parameter signedint £temporary1142 49
	mov [rbp + 49], eax

 @2897$digitToValue$13:
	; Call islower 25 0
	mov qword [rbp + 25], @2897$digitToValue$14
	mov [rbp + 33], rbp
	add rbp, 25
	jmp islower

 @2897$digitToValue$14:
	; PostCall 25

 @2897$digitToValue$15:
	; GetReturnValue £temporary1143

 @2897$digitToValue$16:
	; Equal 21 £temporary1143 0
	cmp ebx, 0
	je @2897$digitToValue$21

 @2897$digitToValue$17:
	; BinarySubtract £temporary1144 c 97
	mov bl, [rbp + 24]
	sub bl, 97

 @2897$digitToValue$18:
	; IntegralToIntegral £temporary1145 £temporary1144
	and ebx, 255
	cmp bl, 0
	jge @2897$digitToValue$19
	neg bl
	neg ebx

 @2897$digitToValue$19:
	; BinaryAdd £temporary1146 £temporary1145 10
	add ebx, 10

 @2897$digitToValue$20:
	; Return £temporary1146
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2897$digitToValue$21:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @2897$digitToValue$22:
	; IntegralToIntegral £temporary1147 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @2897$digitToValue$23
	neg al
	neg eax

 @2897$digitToValue$23:
	; Parameter signedint £temporary1147 49
	mov [rbp + 49], eax

 @2897$digitToValue$24:
	; Call isupper 25 0
	mov qword [rbp + 25], @2897$digitToValue$25
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isupper

 @2897$digitToValue$25:
	; PostCall 25

 @2897$digitToValue$26:
	; GetReturnValue £temporary1148

 @2897$digitToValue$27:
	; Equal 32 £temporary1148 0
	cmp ebx, 0
	je @2897$digitToValue$32

 @2897$digitToValue$28:
	; BinarySubtract £temporary1149 c 65
	mov bl, [rbp + 24]
	sub bl, 65

 @2897$digitToValue$29:
	; IntegralToIntegral £temporary1150 £temporary1149
	and ebx, 255
	cmp bl, 0
	jge @2897$digitToValue$30
	neg bl
	neg ebx

 @2897$digitToValue$30:
	; BinaryAdd £temporary1151 £temporary1150 10
	add ebx, 10

 @2897$digitToValue$31:
	; Return £temporary1151
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2897$digitToValue$32:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2897$digitToValue$33:
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
	; GetReturnValue £temporary1155

 scanLongInt$7:
	; Assign input £temporary1155
	mov [rbp + 44], bl

 scanLongInt$8:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$9:
	; IntegralToIntegral £temporary1156 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$10
	neg al
	neg eax

 scanLongInt$10:
	; Parameter signedint £temporary1156 69
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
	; GetReturnValue £temporary1157

 scanLongInt$14:
	; Equal 21 £temporary1157 0
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
	; GetReturnValue £temporary1158

 scanLongInt$19:
	; Assign input £temporary1158
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
	; GetReturnValue £temporary1161

 scanLongInt$26:
	; Assign input £temporary1161
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
	; GetReturnValue £temporary1163

 scanLongInt$34:
	; Assign input £temporary1163
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
	; GetReturnValue £temporary1166

 scanLongInt$41:
	; Assign input £temporary1166
	mov [rbp + 44], bl

 scanLongInt$42:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$43:
	; IntegralToIntegral £temporary1167 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$44
	neg al
	neg eax

 scanLongInt$44:
	; Parameter signedint £temporary1167 69
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
	; GetReturnValue £temporary1168

 scanLongInt$48:
	; NotEqual 56 £temporary1168 120
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
	; GetReturnValue £temporary1170

 scanLongInt$54:
	; Assign input £temporary1170
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
	jmp @2889$isDigitInBase

 scanLongInt$63:
	; PostCall 45

 scanLongInt$64:
	; GetReturnValue £temporary1171

 scanLongInt$65:
	; Equal 82 £temporary1171 0
	cmp ebx, 0
	je scanLongInt$82

 scanLongInt$66:
	; IntegralToIntegral £temporary1172 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$67
	neg ebx
	neg rbx

 scanLongInt$67:
	; SignedMultiply longValue longValue £temporary1172
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
	jmp @2897$digitToValue

 scanLongInt$71:
	; PostCall 45

 scanLongInt$72:
	; GetReturnValue £temporary1174

 scanLongInt$73:
	; IntegralToIntegral £temporary1175 £temporary1174
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$74
	neg ebx
	neg rbx

 scanLongInt$74:
	; BinaryAdd longValue longValue £temporary1175
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
	; GetReturnValue £temporary1177

 scanLongInt$79:
	; Assign input £temporary1177
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
	; UnarySubtract £temporary1179 longValue
	mov rax, [rbp + 28]
	neg rax

 scanLongInt$84:
	; Assign longValue £temporary1179
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
	; GetReturnValue £temporary1184

 scanUnsignedLongInt$5:
	; Assign input £temporary1184
	mov [rbp + 44], bl

 scanUnsignedLongInt$6:
	; Assign found 1
	mov dword [rbp + 45], 1

 scanUnsignedLongInt$7:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$8:
	; IntegralToIntegral £temporary1185 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$9
	neg al
	neg eax

 scanUnsignedLongInt$9:
	; Parameter signedint £temporary1185 73
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
	; GetReturnValue £temporary1186

 scanUnsignedLongInt$13:
	; Equal 20 £temporary1186 0
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
	; GetReturnValue £temporary1187

 scanUnsignedLongInt$18:
	; Assign input £temporary1187
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
	; GetReturnValue £temporary1190

 scanUnsignedLongInt$25:
	; Assign input £temporary1190
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
	; GetReturnValue £temporary1193

 scanUnsignedLongInt$32:
	; Assign input £temporary1193
	mov [rbp + 44], bl

 scanUnsignedLongInt$33:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$34:
	; IntegralToIntegral £temporary1194 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$35
	neg al
	neg eax

 scanUnsignedLongInt$35:
	; Parameter signedint £temporary1194 73
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
	; GetReturnValue £temporary1195

 scanUnsignedLongInt$39:
	; NotEqual 47 £temporary1195 120
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
	; GetReturnValue £temporary1197

 scanUnsignedLongInt$45:
	; Assign input £temporary1197
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
	jmp @2889$isDigitInBase

 scanUnsignedLongInt$54:
	; PostCall 49

 scanUnsignedLongInt$55:
	; GetReturnValue £temporary1198

 scanUnsignedLongInt$56:
	; Equal 73 £temporary1198 0
	cmp ebx, 0
	je scanUnsignedLongInt$73

 scanUnsignedLongInt$57:
	; IntegralToIntegral £temporary1199 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$58:
	; UnsignedMultiply unsignedLongValue unsignedLongValue £temporary1199
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
	jmp @2897$digitToValue

 scanUnsignedLongInt$62:
	; PostCall 49

 scanUnsignedLongInt$63:
	; GetReturnValue £temporary1201

 scanUnsignedLongInt$64:
	; IntegralToIntegral £temporary1202 £temporary1201
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$65:
	; BinaryAdd unsignedLongValue unsignedLongValue £temporary1202
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
	; GetReturnValue £temporary1204

 scanUnsignedLongInt$71:
	; Assign input £temporary1204
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
	; GetReturnValue £temporary1209

 scanLongDouble$10:
	; Assign input £temporary1209
	mov [rbp + 48], bl

 scanLongDouble$11:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$12:
	; IntegralToIntegral £temporary1210 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$13
	neg al
	neg eax

 scanLongDouble$13:
	; Parameter signedint £temporary1210 73
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
	; GetReturnValue £temporary1211

 scanLongDouble$17:
	; Equal 24 £temporary1211 0
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
	; GetReturnValue £temporary1212

 scanLongDouble$22:
	; Assign input £temporary1212
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
	; GetReturnValue £temporary1215

 scanLongDouble$29:
	; Assign input £temporary1215
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
	; GetReturnValue £temporary1217

 scanLongDouble$37:
	; Assign input £temporary1217
	mov [rbp + 48], bl

 scanLongDouble$38:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$39:
	; IntegralToIntegral £temporary1218 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$40
	neg al
	neg eax

 scanLongDouble$40:
	; Parameter signedint £temporary1218 73
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
	; GetReturnValue £temporary1219

 scanLongDouble$44:
	; Equal 60 £temporary1219 0
	cmp ebx, 0
	je scanLongDouble$60

 scanLongDouble$45:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 scanLongDouble$46:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$47:
	; SignedMultiply £temporary1220 10.0 value
	fmul

 scanLongDouble$48:
	; BinarySubtract £temporary1221 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$49:
	; IntegralToIntegral £temporary1223 £temporary1221
	and eax, 255
	cmp al, 0
	jge scanLongDouble$50
	neg al
	neg eax

 scanLongDouble$50:
	; IntegralToFloating £temporary1222 £temporary1223
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$51:
	; BinaryAdd £temporary1224 £temporary1220 £temporary1222
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
	; GetReturnValue £temporary1225

 scanLongDouble$57:
	; Assign input £temporary1225
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
	; GetReturnValue £temporary1228

 scanLongDouble$65:
	; Assign input £temporary1228
	mov [rbp + 48], bl

 scanLongDouble$66:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$67:
	; IntegralToIntegral £temporary1229 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$68
	neg al
	neg eax

 scanLongDouble$68:
	; Parameter signedint £temporary1229 73
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
	; GetReturnValue £temporary1230

 scanLongDouble$72:
	; Equal 92 £temporary1230 0
	cmp ebx, 0
	je scanLongDouble$92

 scanLongDouble$73:
	; PushFloat factor
	fld qword [rbp + 40]

 scanLongDouble$74:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 scanLongDouble$75:
	; SignedDivide £temporary1231 factor 10.0
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
	; BinarySubtract £temporary1232 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$80:
	; IntegralToIntegral £temporary1234 £temporary1232
	and eax, 255
	cmp al, 0
	jge scanLongDouble$81
	neg al
	neg eax

 scanLongDouble$81:
	; IntegralToFloating £temporary1233 £temporary1234
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$82:
	; SignedMultiply £temporary1235 factor £temporary1233
	fmul

 scanLongDouble$83:
	; BinaryAdd £temporary1236 value £temporary1235
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
	; GetReturnValue £temporary1237

 scanLongDouble$89:
	; Assign input £temporary1237
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
	; IntegralToIntegral £temporary1240 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$98
	neg al
	neg eax

 scanLongDouble$98:
	; Parameter signedint £temporary1240 73
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
	; GetReturnValue £temporary1241

 scanLongDouble$102:
	; NotEqual 122 £temporary1241 101
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
	; GetReturnValue £temporary1243

 scanLongDouble$108:
	; IntegralToFloating £temporary1244 £temporary1243
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
	; GetReturnValue £temporary1245

 scanLongDouble$119:
	; SignedMultiply £temporary1246 value £temporary1245
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
	; UnarySubtract £temporary1248 value
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
	; IntegralToIntegral £temporary1255 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$9:
	; BinaryAdd £temporary1257 format £temporary1255
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$10:
	; Dereference £temporary1254 -> £temporary1257 £temporary1257 0

 scanFormat$11:
	; Equal 333 £temporary1254 -> £temporary1257 0
	cmp byte [rsi], 0
	je scanFormat$333

 scanFormat$12:
	; IntegralToIntegral £temporary1261 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$13:
	; BinaryAdd £temporary1263 format £temporary1261
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$14:
	; Dereference £temporary1260 -> £temporary1263 £temporary1263 0

 scanFormat$15:
	; Assign c £temporary1260 -> £temporary1263
	mov al, [rsi]
	mov [rbp + 40], al

 scanFormat$16:
	; IntegralToIntegral £temporary1264 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$17
	neg al
	neg eax

 scanFormat$17:
	; BinaryAdd d £temporary1264 1
	inc eax
	mov [rbp + 153], eax

 scanFormat$18:
	; Equal 325 percent 0
	cmp dword [rbp + 49], 0
	je scanFormat$325

 scanFormat$19:
	; BinarySubtract £temporary1266 d 1
	mov eax, [rbp + 153]
	dec eax

 scanFormat$20:
	; Case 38 £temporary1266 104
	cmp eax, 104
	je scanFormat$38

 scanFormat$21:
	; Case 40 £temporary1266 108
	cmp eax, 108
	je scanFormat$40

 scanFormat$22:
	; Case 42 £temporary1266 76
	cmp eax, 76
	je scanFormat$42

 scanFormat$23:
	; Case 44 £temporary1266 42
	cmp eax, 42
	je scanFormat$44

 scanFormat$24:
	; Case 46 £temporary1266 99
	cmp eax, 99
	je scanFormat$46

 scanFormat$25:
	; Case 64 £temporary1266 115
	cmp eax, 115
	je scanFormat$64

 scanFormat$26:
	; Case 83 £temporary1266 100
	cmp eax, 100
	je scanFormat$83

 scanFormat$27:
	; Case 83 £temporary1266 105
	cmp eax, 105
	je scanFormat$83

 scanFormat$28:
	; Case 119 £temporary1266 111
	cmp eax, 111
	je scanFormat$119

 scanFormat$29:
	; Case 155 £temporary1266 120
	cmp eax, 120
	je scanFormat$155

 scanFormat$30:
	; Case 191 £temporary1266 117
	cmp eax, 117
	je scanFormat$191

 scanFormat$31:
	; Case 227 £temporary1266 103
	cmp eax, 103
	je scanFormat$227

 scanFormat$32:
	; Case 227 £temporary1266 102
	cmp eax, 102
	je scanFormat$227

 scanFormat$33:
	; Case 227 £temporary1266 101
	cmp eax, 101
	je scanFormat$227

 scanFormat$34:
	; Case 263 £temporary1266 91
	cmp eax, 91
	je scanFormat$263

 scanFormat$35:
	; Case 309 £temporary1266 110
	cmp eax, 110
	je scanFormat$309

 scanFormat$36:
	; CaseEnd £temporary1266

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
	; GetReturnValue £temporary1267

 scanFormat$50:
	; Assign charValue £temporary1267
	mov [rbp + 157], bl

 scanFormat$51:
	; NotEqual 59 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$59

 scanFormat$52:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$53:
	; BinarySubtract £temporary1272 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$54:
	; IntegralToIntegral £temporary1274 £temporary1272

 scanFormat$55:
	; Dereference £temporary1275 -> £temporary1274 £temporary1274 0

 scanFormat$56:
	; Assign charPtr £temporary1275 -> £temporary1274
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$57:
	; Dereference £temporary1276 -> charPtr charPtr 0
	mov rsi, [rbp + 41]

 scanFormat$58:
	; Assign £temporary1276 -> charPtr charValue
	mov al, [rbp + 157]
	mov [rsi], al

 scanFormat$59:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$60:
	; IntegralToIntegral £temporary1277 charValue
	mov al, [rbp + 157]
	and eax, 255
	cmp al, 0
	jge scanFormat$61
	neg al
	neg eax

 scanFormat$61:
	; Equal 331 £temporary1277 -1
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
	; BinarySubtract £temporary1284 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$67:
	; IntegralToIntegral £temporary1286 £temporary1284

 scanFormat$68:
	; Dereference £temporary1287 -> £temporary1286 £temporary1286 0

 scanFormat$69:
	; Assign charPtr £temporary1287 -> £temporary1286
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
	; GetReturnValue £temporary1290

 scanFormat$88:
	; Assign longValue £temporary1290
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
	; BinarySubtract £temporary1295 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$93:
	; IntegralToIntegral £temporary1297 £temporary1295

 scanFormat$94:
	; Dereference £temporary1298 -> £temporary1297 £temporary1297 0

 scanFormat$95:
	; Assign shortPtr £temporary1298 -> £temporary1297
	mov rax, [rsi]
	mov [rbp + 85], rax

 scanFormat$96:
	; Dereference £temporary1299 -> shortPtr shortPtr 0
	mov rsi, [rbp + 85]

 scanFormat$97:
	; IntegralToIntegral £temporary1300 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$98
	neg rax
	neg ax

 scanFormat$98:
	; Assign £temporary1299 -> shortPtr £temporary1300
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
	; BinarySubtract £temporary1305 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$103:
	; IntegralToIntegral £temporary1307 £temporary1305

 scanFormat$104:
	; Dereference £temporary1308 -> £temporary1307 £temporary1307 0

 scanFormat$105:
	; Assign intPtr £temporary1308 -> £temporary1307
	mov rax, [rsi]
	mov [rbp + 97], rax

 scanFormat$106:
	; Dereference £temporary1309 -> intPtr intPtr 0
	mov rsi, [rbp + 97]

 scanFormat$107:
	; IntegralToIntegral £temporary1310 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$108
	neg rax
	neg eax

 scanFormat$108:
	; Assign £temporary1309 -> intPtr £temporary1310
	mov [rsi], eax

 scanFormat$109:
	; Goto 117
	jmp scanFormat$117

 scanFormat$110:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$111:
	; BinarySubtract £temporary1313 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$112:
	; IntegralToIntegral £temporary1315 £temporary1313

 scanFormat$113:
	; Dereference £temporary1316 -> £temporary1315 £temporary1315 0

 scanFormat$114:
	; Assign longPtr £temporary1316 -> £temporary1315
	mov rax, [rsi]
	mov [rbp + 77], rax

 scanFormat$115:
	; Dereference £temporary1317 -> longPtr longPtr 0
	mov rsi, [rbp + 77]

 scanFormat$116:
	; Assign £temporary1317 -> longPtr longValue
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
	; GetReturnValue £temporary1319

 scanFormat$124:
	; Assign unsignedLongValue £temporary1319
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
	; BinarySubtract £temporary1324 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$129:
	; IntegralToIntegral £temporary1326 £temporary1324

 scanFormat$130:
	; Dereference £temporary1327 -> £temporary1326 £temporary1326 0

 scanFormat$131:
	; Assign unsignedShortPtr £temporary1327 -> £temporary1326
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$132:
	; Dereference £temporary1328 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$133:
	; IntegralToIntegral £temporary1329 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$134:
	; Assign £temporary1328 -> unsignedShortPtr £temporary1329
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
	; BinarySubtract £temporary1334 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$139:
	; IntegralToIntegral £temporary1336 £temporary1334

 scanFormat$140:
	; Dereference £temporary1337 -> £temporary1336 £temporary1336 0

 scanFormat$141:
	; Assign unsignedIntPtr £temporary1337 -> £temporary1336
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$142:
	; Dereference £temporary1338 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$143:
	; IntegralToIntegral £temporary1339 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$144:
	; Assign £temporary1338 -> unsignedIntPtr £temporary1339
	mov [rsi], eax

 scanFormat$145:
	; Goto 153
	jmp scanFormat$153

 scanFormat$146:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$147:
	; BinarySubtract £temporary1342 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$148:
	; IntegralToIntegral £temporary1344 £temporary1342

 scanFormat$149:
	; Dereference £temporary1345 -> £temporary1344 £temporary1344 0

 scanFormat$150:
	; Assign unsignedLongPtr £temporary1345 -> £temporary1344
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$151:
	; Dereference £temporary1346 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$152:
	; Assign £temporary1346 -> unsignedLongPtr unsignedLongValue
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
	; GetReturnValue £temporary1348

 scanFormat$160:
	; Assign unsignedLongValue £temporary1348
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
	; BinarySubtract £temporary1353 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$165:
	; IntegralToIntegral £temporary1355 £temporary1353

 scanFormat$166:
	; Dereference £temporary1356 -> £temporary1355 £temporary1355 0

 scanFormat$167:
	; Assign unsignedShortPtr £temporary1356 -> £temporary1355
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$168:
	; Dereference £temporary1357 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$169:
	; IntegralToIntegral £temporary1358 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$170:
	; Assign £temporary1357 -> unsignedShortPtr £temporary1358
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
	; BinarySubtract £temporary1363 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$175:
	; IntegralToIntegral £temporary1365 £temporary1363

 scanFormat$176:
	; Dereference £temporary1366 -> £temporary1365 £temporary1365 0

 scanFormat$177:
	; Assign unsignedIntPtr £temporary1366 -> £temporary1365
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$178:
	; Dereference £temporary1367 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$179:
	; IntegralToIntegral £temporary1368 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$180:
	; Assign £temporary1367 -> unsignedIntPtr £temporary1368
	mov [rsi], eax

 scanFormat$181:
	; Goto 189
	jmp scanFormat$189

 scanFormat$182:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$183:
	; BinarySubtract £temporary1371 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$184:
	; IntegralToIntegral £temporary1373 £temporary1371

 scanFormat$185:
	; Dereference £temporary1374 -> £temporary1373 £temporary1373 0

 scanFormat$186:
	; Assign unsignedLongPtr £temporary1374 -> £temporary1373
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$187:
	; Dereference £temporary1375 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$188:
	; Assign £temporary1375 -> unsignedLongPtr unsignedLongValue
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
	; GetReturnValue £temporary1377

 scanFormat$196:
	; Assign unsignedLongValue £temporary1377
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
	; BinarySubtract £temporary1382 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$201:
	; IntegralToIntegral £temporary1384 £temporary1382

 scanFormat$202:
	; Dereference £temporary1385 -> £temporary1384 £temporary1384 0

 scanFormat$203:
	; Assign unsignedShortPtr £temporary1385 -> £temporary1384
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$204:
	; Dereference £temporary1386 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$205:
	; IntegralToIntegral £temporary1387 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$206:
	; Assign £temporary1386 -> unsignedShortPtr £temporary1387
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
	; BinarySubtract £temporary1392 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$211:
	; IntegralToIntegral £temporary1394 £temporary1392

 scanFormat$212:
	; Dereference £temporary1395 -> £temporary1394 £temporary1394 0

 scanFormat$213:
	; Assign unsignedIntPtr £temporary1395 -> £temporary1394
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$214:
	; Dereference £temporary1396 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$215:
	; IntegralToIntegral £temporary1397 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$216:
	; Assign £temporary1396 -> unsignedIntPtr £temporary1397
	mov [rsi], eax

 scanFormat$217:
	; Goto 225
	jmp scanFormat$225

 scanFormat$218:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$219:
	; BinarySubtract £temporary1400 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$220:
	; IntegralToIntegral £temporary1402 £temporary1400

 scanFormat$221:
	; Dereference £temporary1403 -> £temporary1402 £temporary1402 0

 scanFormat$222:
	; Assign unsignedLongPtr £temporary1403 -> £temporary1402
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$223:
	; Dereference £temporary1404 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$224:
	; Assign £temporary1404 -> unsignedLongPtr unsignedLongValue
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
	; GetReturnValue £temporary1406

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
	; BinarySubtract £temporary1411 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$236:
	; IntegralToIntegral £temporary1413 £temporary1411

 scanFormat$237:
	; Dereference £temporary1414 -> £temporary1413 £temporary1413 0

 scanFormat$238:
	; Assign doublePtr £temporary1414 -> £temporary1413
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$239:
	; Dereference £temporary1415 -> doublePtr doublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$240:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$241:
	; PopFloat £temporary1415 -> doublePtr
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
	; BinarySubtract £temporary1419 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$246:
	; IntegralToIntegral £temporary1421 £temporary1419

 scanFormat$247:
	; Dereference £temporary1422 -> £temporary1421 £temporary1421 0

 scanFormat$248:
	; Assign longDoublePtr £temporary1422 -> £temporary1421
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$249:
	; Dereference £temporary1423 -> longDoublePtr longDoublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$250:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$251:
	; PopFloat £temporary1423 -> longDoublePtr
	fstp qword [rsi]

 scanFormat$252:
	; Goto 261
	jmp scanFormat$261

 scanFormat$253:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$254:
	; BinarySubtract £temporary1426 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$255:
	; IntegralToIntegral £temporary1428 £temporary1426

 scanFormat$256:
	; Dereference £temporary1429 -> £temporary1428 £temporary1428 0

 scanFormat$257:
	; Assign floatPtr £temporary1429 -> £temporary1428
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$258:
	; Dereference £temporary1430 -> floatPtr floatPtr 0
	mov rsi, [rbp + 157]

 scanFormat$259:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$260:
	; PopFloat £temporary1430 -> floatPtr
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
	; IntegralToIntegral £temporary1436 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$266:
	; BinaryAdd £temporary1438 format £temporary1436
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$267:
	; Dereference £temporary1435 -> £temporary1438 £temporary1438 0

 scanFormat$268:
	; NotEqual 271 £temporary1435 -> £temporary1438 94
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
	; IntegralToIntegral £temporary1442 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$272:
	; BinaryAdd £temporary1444 format £temporary1442
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$273:
	; Dereference £temporary1441 -> £temporary1444 £temporary1444 0

 scanFormat$274:
	; Equal 277 £temporary1441 -> £temporary1444 93
	cmp byte [rsi], 93
	je scanFormat$277

 scanFormat$275:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$276:
	; Goto 271
	jmp scanFormat$271

 scanFormat$277:
	; IntegralToIntegral £temporary1448 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$278:
	; BinaryAdd £temporary1450 format £temporary1448
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$279:
	; Dereference £temporary1447 -> £temporary1450 £temporary1450 0

 scanFormat$280:
	; Assign £temporary1447 -> £temporary1450 0
	mov byte [rsi], 0

 scanFormat$281:
	; NotEqual 298 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$298

 scanFormat$282:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$283:
	; BinarySubtract £temporary1455 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$284:
	; IntegralToIntegral £temporary1457 £temporary1455

 scanFormat$285:
	; Dereference £temporary1458 -> £temporary1457 £temporary1457 0

 scanFormat$286:
	; Assign string £temporary1458 -> £temporary1457
	mov rax, [rsi]
	mov [rbp + 165], rax

 scanFormat$287:
	; PreCall 173 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$288:
	; Parameter pointer string 197
	mov rax, [rbp + 165]
	mov [rbp + 197], rax

 scanFormat$289:
	; IntegralToIntegral £temporary1460 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$290:
	; BinaryAdd £temporary1462 format £temporary1460
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$291:
	; Dereference £temporary1459 -> £temporary1462 £temporary1462 0

 scanFormat$292:
	; Address £temporary1463 £temporary1459 -> £temporary1462

 scanFormat$293:
	; Parameter pointer £temporary1463 205
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
	; IntegralToIntegral £temporary1466 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$301:
	; BinaryAdd £temporary1468 format £temporary1466
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$302:
	; Dereference £temporary1465 -> £temporary1468 £temporary1468 0

 scanFormat$303:
	; Address £temporary1469 £temporary1465 -> £temporary1468

 scanFormat$304:
	; Parameter pointer £temporary1469 197
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
	; BinarySubtract £temporary1473 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$311:
	; IntegralToIntegral £temporary1475 £temporary1473

 scanFormat$312:
	; Dereference £temporary1476 -> £temporary1475 £temporary1475 0

 scanFormat$313:
	; Assign charsPtr £temporary1476 -> £temporary1475
	mov rax, [rsi]
	mov [rbp + 105], rax

 scanFormat$314:
	; Dereference £temporary1477 -> charsPtr charsPtr 0
	mov rsi, [rbp + 105]

 scanFormat$315:
	; Assign £temporary1477 -> charsPtr g_inChars
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
	; IntegralToIntegral £temporary1478 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$321
	neg al
	neg eax

 scanFormat$321:
	; Parameter signedint £temporary1478 189
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
	; Address £temporary1482 format
	mov rsi, rbp
	add rsi, 24

 scanf$1:
	; IntegralToIntegral £temporary1483 £temporary1482

 scanf$2:
	; BinaryAdd arg_list £temporary1483 8
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
	; GetReturnValue £temporary1486

 scanf$9:
	; Return £temporary1486
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
	; GetReturnValue £temporary1488

 vscanf$7:
	; Return £temporary1488
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vscanf$8:
	; FunctionEnd vscanf

section .text

 fscanf:
	; Address £temporary1489 format
	mov rsi, rbp
	add rsi, 32

 fscanf$1:
	; IntegralToIntegral £temporary1490 £temporary1489

 fscanf$2:
	; BinaryAdd arg_list £temporary1490 8
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
	; GetReturnValue £temporary1493

 fscanf$10:
	; Return £temporary1493
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
	; IntegralToIntegral £temporary1495 inStream
	mov rax, [rbp + 24]

 vfscanf$2:
	; Assign g_inDevice £temporary1495
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
	; GetReturnValue £temporary1496

 vfscanf$9:
	; Return £temporary1496
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfscanf$10:
	; FunctionEnd vfscanf

section .text

 sscanf:
	; Address £temporary1497 format
	mov rsi, rbp
	add rsi, 32

 sscanf$1:
	; IntegralToIntegral £temporary1498 £temporary1497

 sscanf$2:
	; BinaryAdd arg_list £temporary1498 8
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
	; GetReturnValue £temporary1501

 sscanf$10:
	; Return £temporary1501
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
	; IntegralToIntegral £temporary1503 inString
	mov rax, [rbp + 24]

 vsscanf$2:
	; Assign g_inDevice £temporary1503
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
	; GetReturnValue £temporary1504

 vsscanf$9:
	; Return £temporary1504
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsscanf$10:
	; FunctionEnd vsscanf
