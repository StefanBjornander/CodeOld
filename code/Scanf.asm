	global g_inStatus
	global g_inChars
	global g_inDevice
	global g_inCount
	global scanChar
	global unscanChar
	global scanPattern
	global scanString
	global digitToValue
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
	extern tolower
	extern isxdigit
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
	; IntegralToIntegral £temporary954 g_inDevice
	mov rax, [g_inDevice]

 scanChar$6:
	; Assign stream £temporary954
	mov [rbp + 25], rax

 scanChar$7:
	; Dereference £temporary955 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$8:
	; Assign handle £temporary955 -> stream
	mov eax, [rsi + 4]
	mov [rbp + 33], eax

 scanChar$9:
	; AssignRegister rax 0
	mov rax, 0

 scanChar$10:
	; Dereference £temporary958 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$11:
	; IntegralToIntegral £temporary959 £temporary958 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 scanChar$12:
	; AssignRegister rdi £temporary959

 scanChar$13:
	; Address £temporary961 c
	mov rsi, rbp
	add rsi, 24

 scanChar$14:
	; IntegralToIntegral £temporary962 £temporary961

 scanChar$15:
	; AssignRegister rsi £temporary962

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
	; IntegralToIntegral £temporary965 g_inDevice
	mov rax, [g_inDevice]

 scanChar$21:
	; Assign inString £temporary965
	mov [rbp + 37], rax

 scanChar$22:
	; Assign £temporary966 g_inChars
	mov eax, [g_inChars]

 scanChar$23:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanChar$24:
	; IntegralToIntegral £temporary968 £temporary966
	mov rbx, 4294967295
	and rax, rbx

 scanChar$25:
	; BinaryAdd £temporary970 inString £temporary968
	mov rsi, [rbp + 37]
	add rsi, rax

 scanChar$26:
	; Dereference £temporary967 -> £temporary970 £temporary970 0

 scanChar$27:
	; Return £temporary967 -> £temporary970
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
	; GetReturnValue £temporary974

 scanPattern$5:
	; Assign input £temporary974
	mov [rbp + 48], bl

 scanPattern$6:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$7:
	; IntegralToIntegral £temporary975 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$8
	neg al
	neg eax

 scanPattern$8:
	; Parameter signedint £temporary975 73
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
	; GetReturnValue £temporary976

 scanPattern$12:
	; Equal 19 £temporary976 0
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
	; GetReturnValue £temporary977

 scanPattern$17:
	; Assign input £temporary977
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
	; IntegralToIntegral £temporary982 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$24
	neg al
	neg eax

 scanPattern$24:
	; Parameter signedint £temporary982 81
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
	; GetReturnValue £temporary983

 scanPattern$28:
	; NotEqual 38 £temporary983 0
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
	; IntegralToIntegral £temporary986 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$33
	neg al
	neg eax

 scanPattern$33:
	; Parameter signedint £temporary986 81
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
	; GetReturnValue £temporary987

 scanPattern$37:
	; NotEqual 50 £temporary987 0
	cmp rbx, 0
	jne scanPattern$50

 scanPattern$38:
	; Assign £temporary993 index
	mov eax, [rbp + 44]

 scanPattern$39:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 scanPattern$40:
	; IntegralToIntegral £temporary995 £temporary993
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$41:
	; BinaryAdd £temporary997 string £temporary995
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$42:
	; Dereference £temporary994 -> £temporary997 £temporary997 0

 scanPattern$43:
	; Assign £temporary994 -> £temporary997 input
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
	; GetReturnValue £temporary998

 scanPattern$48:
	; Assign input £temporary998
	mov [rbp + 48], bl

 scanPattern$49:
	; Goto 20
	jmp scanPattern$20

 scanPattern$50:
	; IntegralToIntegral £temporary1000 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$51:
	; BinaryAdd £temporary1002 string £temporary1000
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$52:
	; Dereference £temporary999 -> £temporary1002 £temporary1002 0

 scanPattern$53:
	; Assign £temporary999 -> £temporary1002 0
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
	; IntegralToIntegral £temporary1005 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$59
	neg al
	neg eax

 scanPattern$59:
	; Parameter signedint £temporary1005 81
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
	; GetReturnValue £temporary1006

 scanPattern$63:
	; NotEqual 73 £temporary1006 0
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
	; IntegralToIntegral £temporary1009 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$68
	neg al
	neg eax

 scanPattern$68:
	; Parameter signedint £temporary1009 81
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
	; GetReturnValue £temporary1010

 scanPattern$72:
	; NotEqual 79 £temporary1010 0
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
	; GetReturnValue £temporary1016

 scanPattern$77:
	; Assign input £temporary1016
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
	; GetReturnValue £temporary1017

 scanString$5:
	; Assign input £temporary1017
	mov [rbp + 40], bl

 scanString$6:
	; Assign found 0
	mov dword [rbp + 41], 0

 scanString$7:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$8:
	; IntegralToIntegral £temporary1018 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$9
	neg al
	neg eax

 scanString$9:
	; Parameter signedint £temporary1018 69
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
	; GetReturnValue £temporary1019

 scanString$13:
	; Equal 20 £temporary1019 0
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
	; GetReturnValue £temporary1020

 scanString$18:
	; Assign input £temporary1020
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
	; IntegralToIntegral £temporary1024 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$24
	neg al
	neg eax

 scanString$24:
	; Parameter signedint £temporary1024 69
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
	; GetReturnValue £temporary1025

 scanString$28:
	; NotEqual 46 £temporary1025 0
	cmp ebx, 0
	jne scanString$46

 scanString$29:
	; IntegralToIntegral £temporary1028 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$30
	neg al
	neg eax

 scanString$30:
	; Equal 46 £temporary1028 -1
	cmp eax, -1
	je scanString$46

 scanString$31:
	; Equal 46 input 10
	cmp byte [rbp + 40], 10
	je scanString$46

 scanString$32:
	; Assign £temporary1033 index
	mov eax, [rbp + 36]

 scanString$33:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$34:
	; IntegralToIntegral £temporary1035 £temporary1033
	mov rbx, 4294967295
	and rax, rbx

 scanString$35:
	; BinaryAdd £temporary1037 string £temporary1035
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$36:
	; Dereference £temporary1034 -> £temporary1037 £temporary1037 0

 scanString$37:
	; Assign £temporary1034 -> £temporary1037 input
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
	; GetReturnValue £temporary1038

 scanString$42:
	; Assign input £temporary1038
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
	; IntegralToIntegral £temporary1041 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$47:
	; BinaryAdd £temporary1043 string £temporary1041
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$48:
	; Dereference £temporary1040 -> £temporary1043 £temporary1043 0

 scanString$49:
	; Assign £temporary1040 -> £temporary1043 0
	mov byte [rsi], 0

 scanString$50:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$51:
	; Goto 130
	jmp scanString$130

 scanString$52:
	; Assign £temporary1045 precision
	mov eax, [rbp + 32]

 scanString$53:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$54:
	; SignedLessThanEqual 79 £temporary1045 0
	cmp eax, 0
	jle scanString$79

 scanString$55:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$56:
	; IntegralToIntegral £temporary1047 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$57
	neg al
	neg eax

 scanString$57:
	; Parameter signedint £temporary1047 69
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
	; GetReturnValue £temporary1048

 scanString$61:
	; NotEqual 79 £temporary1048 0
	cmp ebx, 0
	jne scanString$79

 scanString$62:
	; IntegralToIntegral £temporary1051 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$63
	neg al
	neg eax

 scanString$63:
	; Equal 79 £temporary1051 -1
	cmp eax, -1
	je scanString$79

 scanString$64:
	; Equal 79 input 10
	cmp byte [rbp + 40], 10
	je scanString$79

 scanString$65:
	; Assign £temporary1057 index
	mov eax, [rbp + 36]

 scanString$66:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$67:
	; IntegralToIntegral £temporary1059 £temporary1057
	mov rbx, 4294967295
	and rax, rbx

 scanString$68:
	; BinaryAdd £temporary1061 string £temporary1059
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$69:
	; Dereference £temporary1058 -> £temporary1061 £temporary1061 0

 scanString$70:
	; Assign £temporary1058 -> £temporary1061 input
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
	; GetReturnValue £temporary1062

 scanString$75:
	; Assign input £temporary1062
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
	; IntegralToIntegral £temporary1066 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$81:
	; BinaryAdd £temporary1068 string £temporary1066
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$82:
	; Dereference £temporary1065 -> £temporary1068 £temporary1068 0

 scanString$83:
	; Assign £temporary1065 -> £temporary1068 0
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
	; IntegralToIntegral £temporary1071 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$89
	neg al
	neg eax

 scanString$89:
	; Parameter signedint £temporary1071 69
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
	; GetReturnValue £temporary1072

 scanString$93:
	; NotEqual 105 £temporary1072 0
	cmp ebx, 0
	jne scanString$105

 scanString$94:
	; IntegralToIntegral £temporary1075 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$95
	neg al
	neg eax

 scanString$95:
	; Equal 105 £temporary1075 -1
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
	; GetReturnValue £temporary1080

 scanString$101:
	; Assign input £temporary1080
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
	; Assign £temporary1083 precision
	mov eax, [rbp + 32]

 scanString$108:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$109:
	; SignedLessThanEqual 128 £temporary1083 0
	cmp eax, 0
	jle scanString$128

 scanString$110:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$111:
	; IntegralToIntegral £temporary1085 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$112
	neg al
	neg eax

 scanString$112:
	; Parameter signedint £temporary1085 69
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
	; GetReturnValue £temporary1086

 scanString$116:
	; NotEqual 128 £temporary1086 0
	cmp ebx, 0
	jne scanString$128

 scanString$117:
	; IntegralToIntegral £temporary1089 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$118
	neg al
	neg eax

 scanString$118:
	; Equal 128 £temporary1089 -1
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
	; GetReturnValue £temporary1095

 scanString$124:
	; Assign input £temporary1095
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

 digitToValue:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 digitToValue$1:
	; IntegralToIntegral £temporary1101 input
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge digitToValue$2
	neg al
	neg eax

 digitToValue$2:
	; Parameter signedint £temporary1101 49
	mov [rbp + 49], eax

 digitToValue$3:
	; Call isdigit 25 0
	mov qword [rbp + 25], digitToValue$4
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isdigit

 digitToValue$4:
	; PostCall 25

 digitToValue$5:
	; GetReturnValue £temporary1102

 digitToValue$6:
	; Equal 10 £temporary1102 0
	cmp ebx, 0
	je digitToValue$10

 digitToValue$7:
	; BinarySubtract £temporary1103 input 48
	mov bl, [rbp + 24]
	sub bl, 48

 digitToValue$8:
	; IntegralToIntegral £temporary1104 £temporary1103
	mov rax, 255
	and rbx, rax

 digitToValue$9:
	; Return £temporary1104
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToValue$10:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 digitToValue$11:
	; IntegralToIntegral £temporary1105 input
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge digitToValue$12
	neg al
	neg eax

 digitToValue$12:
	; Parameter signedint £temporary1105 49
	mov [rbp + 49], eax

 digitToValue$13:
	; Call islower 25 0
	mov qword [rbp + 25], digitToValue$14
	mov [rbp + 33], rbp
	add rbp, 25
	jmp islower

 digitToValue$14:
	; PostCall 25

 digitToValue$15:
	; GetReturnValue £temporary1106

 digitToValue$16:
	; Equal 21 £temporary1106 0
	cmp ebx, 0
	je digitToValue$21

 digitToValue$17:
	; BinarySubtract £temporary1107 input 97
	mov bl, [rbp + 24]
	sub bl, 97

 digitToValue$18:
	; IntegralToIntegral £temporary1108 £temporary1107
	mov rax, 255
	and rbx, rax

 digitToValue$19:
	; BinaryAdd £temporary1109 £temporary1108 10
	add rbx, 10

 digitToValue$20:
	; Return £temporary1109
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToValue$21:
	; BinarySubtract £temporary1110 input 65
	mov bl, [rbp + 24]
	sub bl, 65

 digitToValue$22:
	; IntegralToIntegral £temporary1111 £temporary1110
	mov rax, 255
	and rbx, rax

 digitToValue$23:
	; BinaryAdd £temporary1112 £temporary1111 10
	add rbx, 10

 digitToValue$24:
	; Return £temporary1112
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToValue$25:
	; FunctionEnd digitToValue

section .data

int8$10#:
	; Initializer Signed_Long_Int 10
	dq 10

section .text

 scanLongInt:
	; Assign longValue 0
	mov qword [rbp + 24], 0

 scanLongInt$1:
	; Assign minus 0
	mov dword [rbp + 32], 0

 scanLongInt$2:
	; Assign found 0
	mov dword [rbp + 36], 0

 scanLongInt$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$4:
	; Call scanChar 40 0
	mov qword [rbp + 40], scanLongInt$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp scanChar

 scanLongInt$5:
	; PostCall 40

 scanLongInt$6:
	; GetReturnValue £temporary1115

 scanLongInt$7:
	; Assign input £temporary1115
	mov [rbp + 40], bl

 scanLongInt$8:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$9:
	; IntegralToIntegral £temporary1116 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanLongInt$10
	neg al
	neg eax

 scanLongInt$10:
	; Parameter signedint £temporary1116 65
	mov [rbp + 65], eax

 scanLongInt$11:
	; Call isspace 41 0
	mov qword [rbp + 41], scanLongInt$12
	mov [rbp + 49], rbp
	add rbp, 41
	jmp isspace

 scanLongInt$12:
	; PostCall 41

 scanLongInt$13:
	; GetReturnValue £temporary1117

 scanLongInt$14:
	; Equal 21 £temporary1117 0
	cmp ebx, 0
	je scanLongInt$21

 scanLongInt$15:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$16:
	; Call scanChar 41 0
	mov qword [rbp + 41], scanLongInt$17
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

 scanLongInt$17:
	; PostCall 41

 scanLongInt$18:
	; GetReturnValue £temporary1118

 scanLongInt$19:
	; Assign input £temporary1118
	mov [rbp + 40], bl

 scanLongInt$20:
	; Goto 8
	jmp scanLongInt$8

 scanLongInt$21:
	; NotEqual 28 input 43
	cmp byte [rbp + 40], 43
	jne scanLongInt$28

 scanLongInt$22:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$23:
	; Call scanChar 41 0
	mov qword [rbp + 41], scanLongInt$24
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

 scanLongInt$24:
	; PostCall 41

 scanLongInt$25:
	; GetReturnValue £temporary1121

 scanLongInt$26:
	; Assign input £temporary1121
	mov [rbp + 40], bl

 scanLongInt$27:
	; Goto 35
	jmp scanLongInt$35

 scanLongInt$28:
	; NotEqual 35 input 45
	cmp byte [rbp + 40], 45
	jne scanLongInt$35

 scanLongInt$29:
	; Assign minus 1
	mov dword [rbp + 32], 1

 scanLongInt$30:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$31:
	; Call scanChar 41 0
	mov qword [rbp + 41], scanLongInt$32
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

 scanLongInt$32:
	; PostCall 41

 scanLongInt$33:
	; GetReturnValue £temporary1123

 scanLongInt$34:
	; Assign input £temporary1123
	mov [rbp + 40], bl

 scanLongInt$35:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$36:
	; IntegralToIntegral £temporary1124 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanLongInt$37
	neg al
	neg eax

 scanLongInt$37:
	; Parameter signedint £temporary1124 65
	mov [rbp + 65], eax

 scanLongInt$38:
	; Call isdigit 41 0
	mov qword [rbp + 41], scanLongInt$39
	mov [rbp + 49], rbp
	add rbp, 41
	jmp isdigit

 scanLongInt$39:
	; PostCall 41

 scanLongInt$40:
	; GetReturnValue £temporary1125

 scanLongInt$41:
	; Equal 53 £temporary1125 0
	cmp ebx, 0
	je scanLongInt$53

 scanLongInt$42:
	; SignedMultiply £temporary1126 longValue 10
	mov rax, [rbp + 24]
	xor rdx, rdx
	imul qword [int8$10#]

 scanLongInt$43:
	; BinarySubtract £temporary1127 input 48
	mov bl, [rbp + 40]
	sub bl, 48

 scanLongInt$44:
	; IntegralToIntegral £temporary1128 £temporary1127
	mov rcx, 255
	and rbx, rcx
	cmp bl, 0
	jge scanLongInt$45
	neg bl
	neg rbx

 scanLongInt$45:
	; BinaryAdd longValue £temporary1126 £temporary1128
	add rax, rbx
	mov [rbp + 24], rax

 scanLongInt$46:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$47:
	; Call scanChar 41 0
	mov qword [rbp + 41], scanLongInt$48
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

 scanLongInt$48:
	; PostCall 41

 scanLongInt$49:
	; GetReturnValue £temporary1130

 scanLongInt$50:
	; Assign input £temporary1130
	mov [rbp + 40], bl

 scanLongInt$51:
	; Assign found 1
	mov dword [rbp + 36], 1

 scanLongInt$52:
	; Goto 35
	jmp scanLongInt$35

 scanLongInt$53:
	; Equal 56 minus 0
	cmp dword [rbp + 32], 0
	je scanLongInt$56

 scanLongInt$54:
	; UnarySubtract £temporary1132 longValue
	mov rax, [rbp + 24]
	neg rax

 scanLongInt$55:
	; Assign longValue £temporary1132
	mov [rbp + 24], rax

 scanLongInt$56:
	; Equal 58 found 0
	cmp dword [rbp + 36], 0
	je scanLongInt$58

 scanLongInt$57:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanLongInt$58:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$59:
	; Parameter signedchar input 65
	mov al, [rbp + 40]
	mov [rbp + 65], al

 scanLongInt$60:
	; Call unscanChar 41 0
	mov qword [rbp + 41], scanLongInt$61
	mov [rbp + 49], rbp
	add rbp, 41
	jmp unscanChar

 scanLongInt$61:
	; PostCall 41

 scanLongInt$62:
	; Return longValue
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongInt$63:
	; FunctionEnd scanLongInt

section .text

 scanUnsignedLongInt:
	; Assign unsignedLongValue 0
	mov qword [rbp + 32], 0

 scanUnsignedLongInt$1:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$2:
	; Call scanChar 48 0
	mov qword [rbp + 48], scanUnsignedLongInt$3
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanChar

 scanUnsignedLongInt$3:
	; PostCall 48

 scanUnsignedLongInt$4:
	; GetReturnValue £temporary1137

 scanUnsignedLongInt$5:
	; Assign input £temporary1137
	mov [rbp + 48], bl

 scanUnsignedLongInt$6:
	; Assign found 1
	mov dword [rbp + 49], 1

 scanUnsignedLongInt$7:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$8:
	; IntegralToIntegral £temporary1138 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$9
	neg al
	neg eax

 scanUnsignedLongInt$9:
	; Parameter signedint £temporary1138 77
	mov [rbp + 77], eax

 scanUnsignedLongInt$10:
	; Call isspace 53 0
	mov qword [rbp + 53], scanUnsignedLongInt$11
	mov [rbp + 61], rbp
	add rbp, 53
	jmp isspace

 scanUnsignedLongInt$11:
	; PostCall 53

 scanUnsignedLongInt$12:
	; GetReturnValue £temporary1139

 scanUnsignedLongInt$13:
	; Equal 20 £temporary1139 0
	cmp ebx, 0
	je scanUnsignedLongInt$20

 scanUnsignedLongInt$14:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$15:
	; Call scanChar 53 0
	mov qword [rbp + 53], scanUnsignedLongInt$16
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanUnsignedLongInt$16:
	; PostCall 53

 scanUnsignedLongInt$17:
	; GetReturnValue £temporary1140

 scanUnsignedLongInt$18:
	; Assign input £temporary1140
	mov [rbp + 48], bl

 scanUnsignedLongInt$19:
	; Goto 7
	jmp scanUnsignedLongInt$7

 scanUnsignedLongInt$20:
	; NotEqual 49 input 48
	cmp byte [rbp + 48], 48
	jne scanUnsignedLongInt$49

 scanUnsignedLongInt$21:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$22:
	; Call scanChar 53 0
	mov qword [rbp + 53], scanUnsignedLongInt$23
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanUnsignedLongInt$23:
	; PostCall 53

 scanUnsignedLongInt$24:
	; GetReturnValue £temporary1143

 scanUnsignedLongInt$25:
	; Assign input £temporary1143
	mov [rbp + 48], bl

 scanUnsignedLongInt$26:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$27:
	; IntegralToIntegral £temporary1144 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$28
	neg al
	neg eax

 scanUnsignedLongInt$28:
	; Parameter signedint £temporary1144 77
	mov [rbp + 77], eax

 scanUnsignedLongInt$29:
	; Call tolower 53 0
	mov qword [rbp + 53], scanUnsignedLongInt$30
	mov [rbp + 61], rbp
	add rbp, 53
	jmp tolower

 scanUnsignedLongInt$30:
	; PostCall 53

 scanUnsignedLongInt$31:
	; GetReturnValue £temporary1145

 scanUnsignedLongInt$32:
	; NotEqual 44 £temporary1145 120
	cmp ebx, 120
	jne scanUnsignedLongInt$44

 scanUnsignedLongInt$33:
	; NotEqual 36 base 0
	cmp qword [rbp + 24], 0
	jne scanUnsignedLongInt$36

 scanUnsignedLongInt$34:
	; Assign £temporary1148 16
	mov rax, 16

 scanUnsignedLongInt$35:
	; Goto 37
	jmp scanUnsignedLongInt$37

 scanUnsignedLongInt$36:
	; Assign £temporary1148 base
	mov rax, [rbp + 24]

 scanUnsignedLongInt$37:
	; Assign base £temporary1148
	mov [rbp + 24], rax

 scanUnsignedLongInt$38:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$39:
	; Call scanChar 53 0
	mov qword [rbp + 53], scanUnsignedLongInt$40
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanUnsignedLongInt$40:
	; PostCall 53

 scanUnsignedLongInt$41:
	; GetReturnValue £temporary1149

 scanUnsignedLongInt$42:
	; Assign input £temporary1149
	mov [rbp + 48], bl

 scanUnsignedLongInt$43:
	; Goto 49
	jmp scanUnsignedLongInt$49

 scanUnsignedLongInt$44:
	; NotEqual 47 base 0
	cmp qword [rbp + 24], 0
	jne scanUnsignedLongInt$47

 scanUnsignedLongInt$45:
	; Assign £temporary1151 8
	mov rax, 8

 scanUnsignedLongInt$46:
	; Goto 48
	jmp scanUnsignedLongInt$48

 scanUnsignedLongInt$47:
	; Assign £temporary1151 base
	mov rax, [rbp + 24]

 scanUnsignedLongInt$48:
	; Assign base £temporary1151
	mov [rbp + 24], rax

 scanUnsignedLongInt$49:
	; NotEqual 51 base 0
	cmp qword [rbp + 24], 0
	jne scanUnsignedLongInt$51

 scanUnsignedLongInt$50:
	; Assign base 10
	mov qword [rbp + 24], 10

 scanUnsignedLongInt$51:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$52:
	; IntegralToIntegral £temporary1153 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$53
	neg al
	neg eax

 scanUnsignedLongInt$53:
	; Parameter signedint £temporary1153 77
	mov [rbp + 77], eax

 scanUnsignedLongInt$54:
	; Call isxdigit 53 0
	mov qword [rbp + 53], scanUnsignedLongInt$55
	mov [rbp + 61], rbp
	add rbp, 53
	jmp isxdigit

 scanUnsignedLongInt$55:
	; PostCall 53

 scanUnsignedLongInt$56:
	; GetReturnValue £temporary1154

 scanUnsignedLongInt$57:
	; Equal 74 £temporary1154 0
	cmp ebx, 0
	je scanUnsignedLongInt$74

 scanUnsignedLongInt$58:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$59:
	; Parameter signedchar input 77
	mov al, [rbp + 48]
	mov [rbp + 77], al

 scanUnsignedLongInt$60:
	; Call digitToValue 53 0
	mov qword [rbp + 53], scanUnsignedLongInt$61
	mov [rbp + 61], rbp
	add rbp, 53
	jmp digitToValue

 scanUnsignedLongInt$61:
	; PostCall 53

 scanUnsignedLongInt$62:
	; GetReturnValue £temporary1155

 scanUnsignedLongInt$63:
	; Assign digit £temporary1155
	mov [rbp + 40], rbx

 scanUnsignedLongInt$64:
	; UnsignedGreaterThanEqual 74 digit base
	mov rax, [rbp + 24]
	cmp [rbp + 40], rax
	jae scanUnsignedLongInt$74

 scanUnsignedLongInt$65:
	; UnsignedMultiply £temporary1157 unsignedLongValue base
	mov rax, [rbp + 32]
	xor rdx, rdx
	mul qword [rbp + 24]

 scanUnsignedLongInt$66:
	; BinaryAdd unsignedLongValue £temporary1157 digit
	add rax, [rbp + 40]
	mov [rbp + 32], rax

 scanUnsignedLongInt$67:
	; Assign found 1
	mov dword [rbp + 49], 1

 scanUnsignedLongInt$68:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$69:
	; Call scanChar 53 0
	mov qword [rbp + 53], scanUnsignedLongInt$70
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanUnsignedLongInt$70:
	; PostCall 53

 scanUnsignedLongInt$71:
	; GetReturnValue £temporary1159

 scanUnsignedLongInt$72:
	; Assign input £temporary1159
	mov [rbp + 48], bl

 scanUnsignedLongInt$73:
	; Goto 51
	jmp scanUnsignedLongInt$51

 scanUnsignedLongInt$74:
	; Equal 76 found 0
	cmp dword [rbp + 49], 0
	je scanUnsignedLongInt$76

 scanUnsignedLongInt$75:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanUnsignedLongInt$76:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$77:
	; Parameter signedchar input 77
	mov al, [rbp + 48]
	mov [rbp + 77], al

 scanUnsignedLongInt$78:
	; Call unscanChar 53 0
	mov qword [rbp + 53], scanUnsignedLongInt$79
	mov [rbp + 61], rbp
	add rbp, 53
	jmp unscanChar

 scanUnsignedLongInt$79:
	; PostCall 53

 scanUnsignedLongInt$80:
	; Return unsignedLongValue
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanUnsignedLongInt$81:
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
	; GetReturnValue £temporary1164

 scanLongDouble$10:
	; Assign input £temporary1164
	mov [rbp + 48], bl

 scanLongDouble$11:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$12:
	; IntegralToIntegral £temporary1165 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$13
	neg al
	neg eax

 scanLongDouble$13:
	; Parameter signedint £temporary1165 73
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
	; GetReturnValue £temporary1166

 scanLongDouble$17:
	; Equal 24 £temporary1166 0
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
	; GetReturnValue £temporary1167

 scanLongDouble$22:
	; Assign input £temporary1167
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
	; GetReturnValue £temporary1170

 scanLongDouble$29:
	; Assign input £temporary1170
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
	; GetReturnValue £temporary1172

 scanLongDouble$37:
	; Assign input £temporary1172
	mov [rbp + 48], bl

 scanLongDouble$38:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$39:
	; IntegralToIntegral £temporary1173 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$40
	neg al
	neg eax

 scanLongDouble$40:
	; Parameter signedint £temporary1173 73
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
	; GetReturnValue £temporary1174

 scanLongDouble$44:
	; Equal 60 £temporary1174 0
	cmp ebx, 0
	je scanLongDouble$60

 scanLongDouble$45:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 scanLongDouble$46:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$47:
	; SignedMultiply £temporary1175 10.0 value
	fmul

 scanLongDouble$48:
	; BinarySubtract £temporary1176 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$49:
	; IntegralToIntegral £temporary1178 £temporary1176
	and eax, 255
	cmp al, 0
	jge scanLongDouble$50
	neg al
	neg eax

 scanLongDouble$50:
	; IntegralToFloating £temporary1177 £temporary1178
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$51:
	; BinaryAdd £temporary1179 £temporary1175 £temporary1177
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
	; GetReturnValue £temporary1180

 scanLongDouble$57:
	; Assign input £temporary1180
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
	; GetReturnValue £temporary1183

 scanLongDouble$65:
	; Assign input £temporary1183
	mov [rbp + 48], bl

 scanLongDouble$66:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$67:
	; IntegralToIntegral £temporary1184 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$68
	neg al
	neg eax

 scanLongDouble$68:
	; Parameter signedint £temporary1184 73
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
	; GetReturnValue £temporary1185

 scanLongDouble$72:
	; Equal 92 £temporary1185 0
	cmp ebx, 0
	je scanLongDouble$92

 scanLongDouble$73:
	; PushFloat factor
	fld qword [rbp + 40]

 scanLongDouble$74:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 scanLongDouble$75:
	; SignedDivide £temporary1186 factor 10.0
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
	; BinarySubtract £temporary1187 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$80:
	; IntegralToIntegral £temporary1189 £temporary1187
	and eax, 255
	cmp al, 0
	jge scanLongDouble$81
	neg al
	neg eax

 scanLongDouble$81:
	; IntegralToFloating £temporary1188 £temporary1189
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$82:
	; SignedMultiply £temporary1190 factor £temporary1188
	fmul

 scanLongDouble$83:
	; BinaryAdd £temporary1191 value £temporary1190
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
	; GetReturnValue £temporary1192

 scanLongDouble$89:
	; Assign input £temporary1192
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
	; IntegralToIntegral £temporary1195 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$98
	neg al
	neg eax

 scanLongDouble$98:
	; Parameter signedint £temporary1195 73
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
	; GetReturnValue £temporary1196

 scanLongDouble$102:
	; NotEqual 121 £temporary1196 101
	cmp ebx, 101
	jne scanLongDouble$121

 scanLongDouble$103:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$104:
	; Call scanLongInt 49 0
	mov qword [rbp + 49], scanLongDouble$105
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanLongInt

 scanLongDouble$105:
	; PostCall 49

 scanLongDouble$106:
	; GetReturnValue £temporary1198

 scanLongDouble$107:
	; IntegralToFloating £temporary1199 £temporary1198
	mov [container8bytes#], rbx
	fild qword [container8bytes#]

 scanLongDouble$108:
	; PopFloat exponent
	fstp qword [rbp + 49]

 scanLongDouble$109:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$110:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 57]

 scanLongDouble$111:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 scanLongDouble$112:
	; Parameter double 10.0 81
	fstp qword [rbp + 89]

 scanLongDouble$113:
	; PushFloat exponent
	fld qword [rbp + 49]

 scanLongDouble$114:
	; Parameter double exponent 89
	fstp qword [rbp + 97]

 scanLongDouble$115:
	; Call pow 57 0
	mov qword [rbp + 65], scanLongDouble$116
	mov [rbp + 73], rbp
	add rbp, 65
	jmp pow

 scanLongDouble$116:
	; PostCall 57
	fstp qword [rbp + 65]
	fld qword [rbp + 57]
	fld qword [rbp + 65]

 scanLongDouble$117:
	; GetReturnValue £temporary1200

 scanLongDouble$118:
	; SignedMultiply £temporary1201 value £temporary1200
	fmul

 scanLongDouble$119:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$120:
	; Goto 125
	jmp scanLongDouble$125

 scanLongDouble$121:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$122:
	; Parameter signedchar input 73
	mov al, [rbp + 48]
	mov [rbp + 73], al

 scanLongDouble$123:
	; Call unscanChar 49 0
	mov qword [rbp + 49], scanLongDouble$124
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

 scanLongDouble$124:
	; PostCall 49

 scanLongDouble$125:
	; Equal 129 minus 0
	cmp dword [rbp + 24], 0
	je scanLongDouble$129

 scanLongDouble$126:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$127:
	; UnarySubtract £temporary1203 value
	fchs

 scanLongDouble$128:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$129:
	; Equal 131 found 0
	cmp dword [rbp + 28], 0
	je scanLongDouble$131

 scanLongDouble$130:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanLongDouble$131:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$132:
	; Return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongDouble$133:
	; FunctionEnd scanLongDouble

section .data

string_scanFormat20c203D202725c270A#:
	; Initializer String scanFormat c = '%c'\n
	db "scanFormat c = ", 39, "%c", 39, 10, 0

section .text

 scanFormat:
	; Empty

 scanFormat$1:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$2:
	; Assign shortInt 0
	mov dword [rbp + 53], 0

 scanFormat$3:
	; Assign longIntOrDouble 0
	mov dword [rbp + 57], 0

 scanFormat$4:
	; Assign longDouble 0
	mov dword [rbp + 61], 0

 scanFormat$5:
	; Assign star 0
	mov dword [rbp + 65], 0

 scanFormat$6:
	; Assign g_inCount 0
	mov dword [g_inCount], 0

 scanFormat$7:
	; Assign g_inChars 0
	mov dword [g_inChars], 0

 scanFormat$8:
	; Assign index 0
	mov dword [rbp + 93], 0

 scanFormat$9:
	; IntegralToIntegral £temporary1210 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$10:
	; BinaryAdd £temporary1212 format £temporary1210
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$11:
	; Dereference £temporary1209 -> £temporary1212 £temporary1212 0

 scanFormat$12:
	; Equal 333 £temporary1209 -> £temporary1212 0
	cmp byte [rsi], 0
	je scanFormat$333

 scanFormat$13:
	; IntegralToIntegral £temporary1216 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$14:
	; BinaryAdd £temporary1218 format £temporary1216
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$15:
	; Dereference £temporary1215 -> £temporary1218 £temporary1218 0

 scanFormat$16:
	; Assign c £temporary1215 -> £temporary1218
	mov al, [rsi]
	mov [rbp + 40], al

 scanFormat$17:
	; IntegralToIntegral £temporary1219 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$18
	neg al
	neg eax

 scanFormat$18:
	; BinaryAdd d £temporary1219 1
	inc eax
	mov [rbp + 153], eax

 scanFormat$19:
	; Equal 325 percent 0
	cmp dword [rbp + 49], 0
	je scanFormat$325

 scanFormat$20:
	; BinarySubtract £temporary1221 d 1
	mov eax, [rbp + 153]
	dec eax

 scanFormat$21:
	; Case 39 £temporary1221 104
	cmp eax, 104
	je scanFormat$39

 scanFormat$22:
	; Case 41 £temporary1221 108
	cmp eax, 108
	je scanFormat$41

 scanFormat$23:
	; Case 43 £temporary1221 76
	cmp eax, 76
	je scanFormat$43

 scanFormat$24:
	; Case 45 £temporary1221 42
	cmp eax, 42
	je scanFormat$45

 scanFormat$25:
	; Case 47 £temporary1221 99
	cmp eax, 99
	je scanFormat$47

 scanFormat$26:
	; Case 65 £temporary1221 115
	cmp eax, 115
	je scanFormat$65

 scanFormat$27:
	; Case 84 £temporary1221 100
	cmp eax, 100
	je scanFormat$84

 scanFormat$28:
	; Case 84 £temporary1221 105
	cmp eax, 105
	je scanFormat$84

 scanFormat$29:
	; Case 119 £temporary1221 111
	cmp eax, 111
	je scanFormat$119

 scanFormat$30:
	; Case 155 £temporary1221 120
	cmp eax, 120
	je scanFormat$155

 scanFormat$31:
	; Case 191 £temporary1221 117
	cmp eax, 117
	je scanFormat$191

 scanFormat$32:
	; Case 227 £temporary1221 103
	cmp eax, 103
	je scanFormat$227

 scanFormat$33:
	; Case 227 £temporary1221 102
	cmp eax, 102
	je scanFormat$227

 scanFormat$34:
	; Case 227 £temporary1221 101
	cmp eax, 101
	je scanFormat$227

 scanFormat$35:
	; Case 263 £temporary1221 91
	cmp eax, 91
	je scanFormat$263

 scanFormat$36:
	; Case 309 £temporary1221 110
	cmp eax, 110
	je scanFormat$309

 scanFormat$37:
	; CaseEnd £temporary1221

 scanFormat$38:
	; Goto 318
	jmp scanFormat$318

 scanFormat$39:
	; Assign shortInt 1
	mov dword [rbp + 53], 1

 scanFormat$40:
	; Goto 331
	jmp scanFormat$331

 scanFormat$41:
	; Assign longIntOrDouble 1
	mov dword [rbp + 57], 1

 scanFormat$42:
	; Goto 331
	jmp scanFormat$331

 scanFormat$43:
	; Assign longDouble 1
	mov dword [rbp + 61], 1

 scanFormat$44:
	; Goto 331
	jmp scanFormat$331

 scanFormat$45:
	; Assign star 1
	mov dword [rbp + 65], 1

 scanFormat$46:
	; Goto 331
	jmp scanFormat$331

 scanFormat$47:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$48:
	; Call scanChar 157 0
	mov qword [rbp + 157], scanFormat$49
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanChar

 scanFormat$49:
	; PostCall 157

 scanFormat$50:
	; GetReturnValue £temporary1222

 scanFormat$51:
	; Assign charValue £temporary1222
	mov [rbp + 157], bl

 scanFormat$52:
	; NotEqual 60 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$60

 scanFormat$53:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$54:
	; BinarySubtract £temporary1227 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$55:
	; IntegralToIntegral £temporary1229 £temporary1227

 scanFormat$56:
	; Dereference £temporary1230 -> £temporary1229 £temporary1229 0

 scanFormat$57:
	; Assign charPtr £temporary1230 -> £temporary1229
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$58:
	; Dereference £temporary1231 -> charPtr charPtr 0
	mov rsi, [rbp + 41]

 scanFormat$59:
	; Assign £temporary1231 -> charPtr charValue
	mov al, [rbp + 157]
	mov [rsi], al

 scanFormat$60:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$61:
	; IntegralToIntegral £temporary1232 charValue
	mov al, [rbp + 157]
	and eax, 255
	cmp al, 0
	jge scanFormat$62
	neg al
	neg eax

 scanFormat$62:
	; Equal 331 £temporary1232 -1
	cmp eax, -1
	je scanFormat$331

 scanFormat$63:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanFormat$64:
	; Goto 331
	jmp scanFormat$331

 scanFormat$65:
	; NotEqual 77 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$77

 scanFormat$66:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$67:
	; BinarySubtract £temporary1239 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$68:
	; IntegralToIntegral £temporary1241 £temporary1239

 scanFormat$69:
	; Dereference £temporary1242 -> £temporary1241 £temporary1241 0

 scanFormat$70:
	; Assign charPtr £temporary1242 -> £temporary1241
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$71:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$72:
	; Parameter pointer charPtr 181
	mov rax, [rbp + 41]
	mov [rbp + 181], rax

 scanFormat$73:
	; Parameter signedint 0 189
	mov dword [rbp + 189], 0

 scanFormat$74:
	; Call scanString 157 0
	mov qword [rbp + 157], scanFormat$75
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$75:
	; PostCall 157

 scanFormat$76:
	; Goto 82
	jmp scanFormat$82

 scanFormat$77:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$78:
	; Parameter pointer 0 181
	mov qword [rbp + 181], 0

 scanFormat$79:
	; Parameter signedint 0 189
	mov dword [rbp + 189], 0

 scanFormat$80:
	; Call scanString 157 0
	mov qword [rbp + 157], scanFormat$81
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$81:
	; PostCall 157

 scanFormat$82:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$83:
	; Goto 331
	jmp scanFormat$331

 scanFormat$84:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$85:
	; Call scanLongInt 157 0
	mov qword [rbp + 157], scanFormat$86
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongInt

 scanFormat$86:
	; PostCall 157

 scanFormat$87:
	; GetReturnValue £temporary1245

 scanFormat$88:
	; Assign longValue £temporary1245
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
	; BinarySubtract £temporary1250 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$93:
	; IntegralToIntegral £temporary1252 £temporary1250

 scanFormat$94:
	; Dereference £temporary1253 -> £temporary1252 £temporary1252 0

 scanFormat$95:
	; Assign shortPtr £temporary1253 -> £temporary1252
	mov rax, [rsi]
	mov [rbp + 85], rax

 scanFormat$96:
	; Dereference £temporary1254 -> shortPtr shortPtr 0
	mov rsi, [rbp + 85]

 scanFormat$97:
	; IntegralToIntegral £temporary1255 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$98
	neg rax
	neg ax

 scanFormat$98:
	; Assign £temporary1254 -> shortPtr £temporary1255
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
	; BinarySubtract £temporary1260 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$103:
	; IntegralToIntegral £temporary1262 £temporary1260

 scanFormat$104:
	; Dereference £temporary1263 -> £temporary1262 £temporary1262 0

 scanFormat$105:
	; Assign intPtr £temporary1263 -> £temporary1262
	mov rax, [rsi]
	mov [rbp + 97], rax

 scanFormat$106:
	; Dereference £temporary1264 -> intPtr intPtr 0
	mov rsi, [rbp + 97]

 scanFormat$107:
	; IntegralToIntegral £temporary1265 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$108
	neg rax
	neg eax

 scanFormat$108:
	; Assign £temporary1264 -> intPtr £temporary1265
	mov [rsi], eax

 scanFormat$109:
	; Goto 117
	jmp scanFormat$117

 scanFormat$110:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$111:
	; BinarySubtract £temporary1268 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$112:
	; IntegralToIntegral £temporary1270 £temporary1268

 scanFormat$113:
	; Dereference £temporary1271 -> £temporary1270 £temporary1270 0

 scanFormat$114:
	; Assign longPtr £temporary1271 -> £temporary1270
	mov rax, [rsi]
	mov [rbp + 77], rax

 scanFormat$115:
	; Dereference £temporary1272 -> longPtr longPtr 0
	mov rsi, [rbp + 77]

 scanFormat$116:
	; Assign £temporary1272 -> longPtr longValue
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
	; Parameter unsignedlongint 8 181
	mov qword [rbp + 181], 8

 scanFormat$121:
	; Call scanUnsignedLongInt 157 0
	mov qword [rbp + 157], scanFormat$122
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$122:
	; PostCall 157

 scanFormat$123:
	; GetReturnValue £temporary1274

 scanFormat$124:
	; Assign unsignedLongValue £temporary1274
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
	; BinarySubtract £temporary1279 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$129:
	; IntegralToIntegral £temporary1281 £temporary1279

 scanFormat$130:
	; Dereference £temporary1282 -> £temporary1281 £temporary1281 0

 scanFormat$131:
	; Assign unsignedShortPtr £temporary1282 -> £temporary1281
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$132:
	; Dereference £temporary1283 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$133:
	; IntegralToIntegral £temporary1284 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$134:
	; Assign £temporary1283 -> unsignedShortPtr £temporary1284
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
	; BinarySubtract £temporary1289 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$139:
	; IntegralToIntegral £temporary1291 £temporary1289

 scanFormat$140:
	; Dereference £temporary1292 -> £temporary1291 £temporary1291 0

 scanFormat$141:
	; Assign unsignedIntPtr £temporary1292 -> £temporary1291
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$142:
	; Dereference £temporary1293 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$143:
	; IntegralToIntegral £temporary1294 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$144:
	; Assign £temporary1293 -> unsignedIntPtr £temporary1294
	mov [rsi], eax

 scanFormat$145:
	; Goto 153
	jmp scanFormat$153

 scanFormat$146:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$147:
	; BinarySubtract £temporary1297 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$148:
	; IntegralToIntegral £temporary1299 £temporary1297

 scanFormat$149:
	; Dereference £temporary1300 -> £temporary1299 £temporary1299 0

 scanFormat$150:
	; Assign unsignedLongPtr £temporary1300 -> £temporary1299
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$151:
	; Dereference £temporary1301 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$152:
	; Assign £temporary1301 -> unsignedLongPtr unsignedLongValue
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
	; Parameter unsignedlongint 16 181
	mov qword [rbp + 181], 16

 scanFormat$157:
	; Call scanUnsignedLongInt 157 0
	mov qword [rbp + 157], scanFormat$158
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$158:
	; PostCall 157

 scanFormat$159:
	; GetReturnValue £temporary1303

 scanFormat$160:
	; Assign unsignedLongValue £temporary1303
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
	; BinarySubtract £temporary1308 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$165:
	; IntegralToIntegral £temporary1310 £temporary1308

 scanFormat$166:
	; Dereference £temporary1311 -> £temporary1310 £temporary1310 0

 scanFormat$167:
	; Assign unsignedShortPtr £temporary1311 -> £temporary1310
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$168:
	; Dereference £temporary1312 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$169:
	; IntegralToIntegral £temporary1313 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$170:
	; Assign £temporary1312 -> unsignedShortPtr £temporary1313
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
	; BinarySubtract £temporary1318 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$175:
	; IntegralToIntegral £temporary1320 £temporary1318

 scanFormat$176:
	; Dereference £temporary1321 -> £temporary1320 £temporary1320 0

 scanFormat$177:
	; Assign unsignedIntPtr £temporary1321 -> £temporary1320
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$178:
	; Dereference £temporary1322 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$179:
	; IntegralToIntegral £temporary1323 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$180:
	; Assign £temporary1322 -> unsignedIntPtr £temporary1323
	mov [rsi], eax

 scanFormat$181:
	; Goto 189
	jmp scanFormat$189

 scanFormat$182:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$183:
	; BinarySubtract £temporary1326 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$184:
	; IntegralToIntegral £temporary1328 £temporary1326

 scanFormat$185:
	; Dereference £temporary1329 -> £temporary1328 £temporary1328 0

 scanFormat$186:
	; Assign unsignedLongPtr £temporary1329 -> £temporary1328
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$187:
	; Dereference £temporary1330 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$188:
	; Assign £temporary1330 -> unsignedLongPtr unsignedLongValue
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
	; Parameter unsignedlongint 0 181
	mov qword [rbp + 181], 0

 scanFormat$193:
	; Call scanUnsignedLongInt 157 0
	mov qword [rbp + 157], scanFormat$194
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$194:
	; PostCall 157

 scanFormat$195:
	; GetReturnValue £temporary1332

 scanFormat$196:
	; Assign unsignedLongValue £temporary1332
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
	; BinarySubtract £temporary1337 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$201:
	; IntegralToIntegral £temporary1339 £temporary1337

 scanFormat$202:
	; Dereference £temporary1340 -> £temporary1339 £temporary1339 0

 scanFormat$203:
	; Assign unsignedShortPtr £temporary1340 -> £temporary1339
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$204:
	; Dereference £temporary1341 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$205:
	; IntegralToIntegral £temporary1342 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$206:
	; Assign £temporary1341 -> unsignedShortPtr £temporary1342
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
	; BinarySubtract £temporary1347 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$211:
	; IntegralToIntegral £temporary1349 £temporary1347

 scanFormat$212:
	; Dereference £temporary1350 -> £temporary1349 £temporary1349 0

 scanFormat$213:
	; Assign unsignedIntPtr £temporary1350 -> £temporary1349
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$214:
	; Dereference £temporary1351 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$215:
	; IntegralToIntegral £temporary1352 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$216:
	; Assign £temporary1351 -> unsignedIntPtr £temporary1352
	mov [rsi], eax

 scanFormat$217:
	; Goto 225
	jmp scanFormat$225

 scanFormat$218:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$219:
	; BinarySubtract £temporary1355 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$220:
	; IntegralToIntegral £temporary1357 £temporary1355

 scanFormat$221:
	; Dereference £temporary1358 -> £temporary1357 £temporary1357 0

 scanFormat$222:
	; Assign unsignedLongPtr £temporary1358 -> £temporary1357
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$223:
	; Dereference £temporary1359 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$224:
	; Assign £temporary1359 -> unsignedLongPtr unsignedLongValue
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
	; GetReturnValue £temporary1361

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
	; BinarySubtract £temporary1366 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$236:
	; IntegralToIntegral £temporary1368 £temporary1366

 scanFormat$237:
	; Dereference £temporary1369 -> £temporary1368 £temporary1368 0

 scanFormat$238:
	; Assign doublePtr £temporary1369 -> £temporary1368
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$239:
	; Dereference £temporary1370 -> doublePtr doublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$240:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$241:
	; PopFloat £temporary1370 -> doublePtr
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
	; BinarySubtract £temporary1374 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$246:
	; IntegralToIntegral £temporary1376 £temporary1374

 scanFormat$247:
	; Dereference £temporary1377 -> £temporary1376 £temporary1376 0

 scanFormat$248:
	; Assign longDoublePtr £temporary1377 -> £temporary1376
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$249:
	; Dereference £temporary1378 -> longDoublePtr longDoublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$250:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$251:
	; PopFloat £temporary1378 -> longDoublePtr
	fstp qword [rsi]

 scanFormat$252:
	; Goto 261
	jmp scanFormat$261

 scanFormat$253:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$254:
	; BinarySubtract £temporary1381 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$255:
	; IntegralToIntegral £temporary1383 £temporary1381

 scanFormat$256:
	; Dereference £temporary1384 -> £temporary1383 £temporary1383 0

 scanFormat$257:
	; Assign floatPtr £temporary1384 -> £temporary1383
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$258:
	; Dereference £temporary1385 -> floatPtr floatPtr 0
	mov rsi, [rbp + 157]

 scanFormat$259:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$260:
	; PopFloat £temporary1385 -> floatPtr
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
	; IntegralToIntegral £temporary1391 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$266:
	; BinaryAdd £temporary1393 format £temporary1391
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$267:
	; Dereference £temporary1390 -> £temporary1393 £temporary1393 0

 scanFormat$268:
	; NotEqual 271 £temporary1390 -> £temporary1393 94
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
	; IntegralToIntegral £temporary1397 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$272:
	; BinaryAdd £temporary1399 format £temporary1397
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$273:
	; Dereference £temporary1396 -> £temporary1399 £temporary1399 0

 scanFormat$274:
	; Equal 277 £temporary1396 -> £temporary1399 93
	cmp byte [rsi], 93
	je scanFormat$277

 scanFormat$275:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$276:
	; Goto 271
	jmp scanFormat$271

 scanFormat$277:
	; IntegralToIntegral £temporary1403 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$278:
	; BinaryAdd £temporary1405 format £temporary1403
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$279:
	; Dereference £temporary1402 -> £temporary1405 £temporary1405 0

 scanFormat$280:
	; Assign £temporary1402 -> £temporary1405 0
	mov byte [rsi], 0

 scanFormat$281:
	; NotEqual 298 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$298

 scanFormat$282:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$283:
	; BinarySubtract £temporary1410 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$284:
	; IntegralToIntegral £temporary1412 £temporary1410

 scanFormat$285:
	; Dereference £temporary1413 -> £temporary1412 £temporary1412 0

 scanFormat$286:
	; Assign string £temporary1413 -> £temporary1412
	mov rax, [rsi]
	mov [rbp + 165], rax

 scanFormat$287:
	; PreCall 173 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$288:
	; Parameter pointer string 197
	mov rax, [rbp + 165]
	mov [rbp + 197], rax

 scanFormat$289:
	; IntegralToIntegral £temporary1415 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$290:
	; BinaryAdd £temporary1417 format £temporary1415
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$291:
	; Dereference £temporary1414 -> £temporary1417 £temporary1417 0

 scanFormat$292:
	; Address £temporary1418 £temporary1414 -> £temporary1417

 scanFormat$293:
	; Parameter pointer £temporary1418 205
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
	; IntegralToIntegral £temporary1421 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$301:
	; BinaryAdd £temporary1423 format £temporary1421
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$302:
	; Dereference £temporary1420 -> £temporary1423 £temporary1423 0

 scanFormat$303:
	; Address £temporary1424 £temporary1420 -> £temporary1423

 scanFormat$304:
	; Parameter pointer £temporary1424 197
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
	; BinarySubtract £temporary1428 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$311:
	; IntegralToIntegral £temporary1430 £temporary1428

 scanFormat$312:
	; Dereference £temporary1431 -> £temporary1430 £temporary1430 0

 scanFormat$313:
	; Assign charsPtr £temporary1431 -> £temporary1430
	mov rax, [rsi]
	mov [rbp + 105], rax

 scanFormat$314:
	; Dereference £temporary1432 -> charsPtr charsPtr 0
	mov rsi, [rbp + 105]

 scanFormat$315:
	; Assign £temporary1432 -> charsPtr g_inChars
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
	; IntegralToIntegral £temporary1433 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$321
	neg al
	neg eax

 scanFormat$321:
	; Parameter signedint £temporary1433 189
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
	; Goto 9
	jmp scanFormat$9

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
	; Empty

 scanf$1:
	; Address £temporary1437 format
	mov rsi, rbp
	add rsi, 24

 scanf$2:
	; IntegralToIntegral £temporary1438 £temporary1437

 scanf$3:
	; BinaryAdd arg_list £temporary1438 8
	add rsi, 8
	mov [rdi + 32], rsi

 scanf$4:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanf$5:
	; Parameter pointer format 64
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

 scanf$6:
	; Parameter pointer arg_list 72
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

 scanf$7:
	; Call vscanf 40 0
	mov qword [rdi + 40], scanf$8
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	add rdi, 40
	mov rbp, rdi
	jmp vscanf

 scanf$8:
	; PostCall 40

 scanf$9:
	; GetReturnValue £temporary1441

 scanf$10:
	; Return £temporary1441
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanf$11:
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
	; GetReturnValue £temporary1443

 vscanf$7:
	; Return £temporary1443
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vscanf$8:
	; FunctionEnd vscanf

section .text

 fscanf:
	; Empty

 fscanf$1:
	; Address £temporary1444 format
	mov rsi, rbp
	add rsi, 32

 fscanf$2:
	; IntegralToIntegral £temporary1445 £temporary1444

 fscanf$3:
	; BinaryAdd arg_list £temporary1445 8
	add rsi, 8
	mov [rdi + 40], rsi

 fscanf$4:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fscanf$5:
	; Parameter pointer inStream 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 fscanf$6:
	; Parameter pointer format 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 fscanf$7:
	; Parameter pointer arg_list 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 fscanf$8:
	; Call vfscanf 48 0
	mov qword [rdi + 48], fscanf$9
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vfscanf

 fscanf$9:
	; PostCall 48

 fscanf$10:
	; GetReturnValue £temporary1448

 fscanf$11:
	; Return £temporary1448
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fscanf$12:
	; FunctionEnd fscanf

section .text

 vfscanf:
	; Assign g_inStatus 0
	mov dword [g_inStatus], 0

 vfscanf$1:
	; IntegralToIntegral £temporary1450 inStream
	mov rax, [rbp + 24]

 vfscanf$2:
	; Assign g_inDevice £temporary1450
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
	; GetReturnValue £temporary1451

 vfscanf$9:
	; Return £temporary1451
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfscanf$10:
	; FunctionEnd vfscanf

section .text

 sscanf:
	; Empty

 sscanf$1:
	; Address £temporary1452 format
	mov rsi, rbp
	add rsi, 32

 sscanf$2:
	; IntegralToIntegral £temporary1453 £temporary1452

 sscanf$3:
	; BinaryAdd arg_list £temporary1453 8
	add rsi, 8
	mov [rdi + 40], rsi

 sscanf$4:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sscanf$5:
	; Parameter pointer inString 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 sscanf$6:
	; Parameter pointer format 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 sscanf$7:
	; Parameter pointer arg_list 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 sscanf$8:
	; Call vsscanf 48 0
	mov qword [rdi + 48], sscanf$9
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vsscanf

 sscanf$9:
	; PostCall 48

 sscanf$10:
	; GetReturnValue £temporary1456

 sscanf$11:
	; Return £temporary1456
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sscanf$12:
	; FunctionEnd sscanf

section .text

 vsscanf:
	; Assign g_inStatus 1
	mov dword [g_inStatus], 1

 vsscanf$1:
	; IntegralToIntegral £temporary1458 inString
	mov rax, [rbp + 24]

 vsscanf$2:
	; Assign g_inDevice £temporary1458
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
	; GetReturnValue £temporary1459

 vsscanf$9:
	; Return £temporary1459
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsscanf$10:
	; FunctionEnd vsscanf
