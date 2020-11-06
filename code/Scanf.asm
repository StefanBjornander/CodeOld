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
	; IntegralToIntegral £temporary959 g_inDevice
	mov rax, [g_inDevice]

 scanChar$6:
	; Assign stream £temporary959
	mov [rbp + 25], rax

 scanChar$7:
	; Dereference £temporary960 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$8:
	; Assign handle £temporary960 -> stream
	mov eax, [rsi + 4]
	mov [rbp + 33], eax

 scanChar$9:
	; AssignRegister rax 0
	mov rax, 0

 scanChar$10:
	; Dereference £temporary963 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$11:
	; IntegralToIntegral £temporary964 £temporary963 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 scanChar$12:
	; AssignRegister rdi £temporary964

 scanChar$13:
	; Address £temporary966 c
	mov rsi, rbp
	add rsi, 24

 scanChar$14:
	; IntegralToIntegral £temporary967 £temporary966

 scanChar$15:
	; AssignRegister rsi £temporary967

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
	; IntegralToIntegral £temporary970 g_inDevice
	mov rax, [g_inDevice]

 scanChar$21:
	; Assign inString £temporary970
	mov [rbp + 37], rax

 scanChar$22:
	; Assign £temporary971 g_inChars
	mov eax, [g_inChars]

 scanChar$23:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanChar$24:
	; IntegralToIntegral £temporary973 £temporary971
	mov rbx, 4294967295
	and rax, rbx

 scanChar$25:
	; BinaryAdd £temporary975 inString £temporary973
	mov rsi, [rbp + 37]
	add rsi, rax

 scanChar$26:
	; Dereference £temporary972 -> £temporary975 £temporary975 0

 scanChar$27:
	; Return £temporary972 -> £temporary975
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
	; GetReturnValue £temporary979

 scanPattern$5:
	; Assign input £temporary979
	mov [rbp + 48], bl

 scanPattern$6:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$7:
	; IntegralToIntegral £temporary980 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$8
	neg al
	neg eax

 scanPattern$8:
	; Parameter signedint £temporary980 73
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
	; GetReturnValue £temporary981

 scanPattern$12:
	; Equal 19 £temporary981 0
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
	; GetReturnValue £temporary982

 scanPattern$17:
	; Assign input £temporary982
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
	; IntegralToIntegral £temporary987 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$24
	neg al
	neg eax

 scanPattern$24:
	; Parameter signedint £temporary987 81
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
	; GetReturnValue £temporary988

 scanPattern$28:
	; NotEqual 38 £temporary988 0
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
	; IntegralToIntegral £temporary991 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$33
	neg al
	neg eax

 scanPattern$33:
	; Parameter signedint £temporary991 81
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
	; GetReturnValue £temporary992

 scanPattern$37:
	; NotEqual 50 £temporary992 0
	cmp rbx, 0
	jne scanPattern$50

 scanPattern$38:
	; Assign £temporary998 index
	mov eax, [rbp + 44]

 scanPattern$39:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 scanPattern$40:
	; IntegralToIntegral £temporary1000 £temporary998
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$41:
	; BinaryAdd £temporary1002 string £temporary1000
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$42:
	; Dereference £temporary999 -> £temporary1002 £temporary1002 0

 scanPattern$43:
	; Assign £temporary999 -> £temporary1002 input
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
	; GetReturnValue £temporary1003

 scanPattern$48:
	; Assign input £temporary1003
	mov [rbp + 48], bl

 scanPattern$49:
	; Goto 20
	jmp scanPattern$20

 scanPattern$50:
	; IntegralToIntegral £temporary1005 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$51:
	; BinaryAdd £temporary1007 string £temporary1005
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$52:
	; Dereference £temporary1004 -> £temporary1007 £temporary1007 0

 scanPattern$53:
	; Assign £temporary1004 -> £temporary1007 0
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
	; IntegralToIntegral £temporary1010 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$59
	neg al
	neg eax

 scanPattern$59:
	; Parameter signedint £temporary1010 81
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
	; GetReturnValue £temporary1011

 scanPattern$63:
	; NotEqual 73 £temporary1011 0
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
	; IntegralToIntegral £temporary1014 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$68
	neg al
	neg eax

 scanPattern$68:
	; Parameter signedint £temporary1014 81
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
	; GetReturnValue £temporary1015

 scanPattern$72:
	; NotEqual 79 £temporary1015 0
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
	; GetReturnValue £temporary1021

 scanPattern$77:
	; Assign input £temporary1021
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
	; GetReturnValue £temporary1022

 scanString$5:
	; Assign input £temporary1022
	mov [rbp + 40], bl

 scanString$6:
	; Assign found 0
	mov dword [rbp + 41], 0

 scanString$7:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$8:
	; IntegralToIntegral £temporary1023 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$9
	neg al
	neg eax

 scanString$9:
	; Parameter signedint £temporary1023 69
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
	; GetReturnValue £temporary1024

 scanString$13:
	; Equal 20 £temporary1024 0
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
	; GetReturnValue £temporary1025

 scanString$18:
	; Assign input £temporary1025
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
	; IntegralToIntegral £temporary1029 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$24
	neg al
	neg eax

 scanString$24:
	; Parameter signedint £temporary1029 69
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
	; GetReturnValue £temporary1030

 scanString$28:
	; NotEqual 46 £temporary1030 0
	cmp ebx, 0
	jne scanString$46

 scanString$29:
	; IntegralToIntegral £temporary1033 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$30
	neg al
	neg eax

 scanString$30:
	; Equal 46 £temporary1033 -1
	cmp eax, -1
	je scanString$46

 scanString$31:
	; Equal 46 input 10
	cmp byte [rbp + 40], 10
	je scanString$46

 scanString$32:
	; Assign £temporary1038 index
	mov eax, [rbp + 36]

 scanString$33:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$34:
	; IntegralToIntegral £temporary1040 £temporary1038
	mov rbx, 4294967295
	and rax, rbx

 scanString$35:
	; BinaryAdd £temporary1042 string £temporary1040
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$36:
	; Dereference £temporary1039 -> £temporary1042 £temporary1042 0

 scanString$37:
	; Assign £temporary1039 -> £temporary1042 input
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
	; GetReturnValue £temporary1043

 scanString$42:
	; Assign input £temporary1043
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
	; IntegralToIntegral £temporary1046 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$47:
	; BinaryAdd £temporary1048 string £temporary1046
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$48:
	; Dereference £temporary1045 -> £temporary1048 £temporary1048 0

 scanString$49:
	; Assign £temporary1045 -> £temporary1048 0
	mov byte [rsi], 0

 scanString$50:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$51:
	; Goto 130
	jmp scanString$130

 scanString$52:
	; Assign £temporary1050 precision
	mov eax, [rbp + 32]

 scanString$53:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$54:
	; SignedLessThanEqual 79 £temporary1050 0
	cmp eax, 0
	jle scanString$79

 scanString$55:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$56:
	; IntegralToIntegral £temporary1052 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$57
	neg al
	neg eax

 scanString$57:
	; Parameter signedint £temporary1052 69
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
	; GetReturnValue £temporary1053

 scanString$61:
	; NotEqual 79 £temporary1053 0
	cmp ebx, 0
	jne scanString$79

 scanString$62:
	; IntegralToIntegral £temporary1056 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$63
	neg al
	neg eax

 scanString$63:
	; Equal 79 £temporary1056 -1
	cmp eax, -1
	je scanString$79

 scanString$64:
	; Equal 79 input 10
	cmp byte [rbp + 40], 10
	je scanString$79

 scanString$65:
	; Assign £temporary1062 index
	mov eax, [rbp + 36]

 scanString$66:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$67:
	; IntegralToIntegral £temporary1064 £temporary1062
	mov rbx, 4294967295
	and rax, rbx

 scanString$68:
	; BinaryAdd £temporary1066 string £temporary1064
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$69:
	; Dereference £temporary1063 -> £temporary1066 £temporary1066 0

 scanString$70:
	; Assign £temporary1063 -> £temporary1066 input
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
	; GetReturnValue £temporary1067

 scanString$75:
	; Assign input £temporary1067
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
	; IntegralToIntegral £temporary1071 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$81:
	; BinaryAdd £temporary1073 string £temporary1071
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$82:
	; Dereference £temporary1070 -> £temporary1073 £temporary1073 0

 scanString$83:
	; Assign £temporary1070 -> £temporary1073 0
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
	; IntegralToIntegral £temporary1076 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$89
	neg al
	neg eax

 scanString$89:
	; Parameter signedint £temporary1076 69
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
	; GetReturnValue £temporary1077

 scanString$93:
	; NotEqual 105 £temporary1077 0
	cmp ebx, 0
	jne scanString$105

 scanString$94:
	; IntegralToIntegral £temporary1080 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$95
	neg al
	neg eax

 scanString$95:
	; Equal 105 £temporary1080 -1
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
	; GetReturnValue £temporary1085

 scanString$101:
	; Assign input £temporary1085
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
	; Assign £temporary1088 precision
	mov eax, [rbp + 32]

 scanString$108:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$109:
	; SignedLessThanEqual 128 £temporary1088 0
	cmp eax, 0
	jle scanString$128

 scanString$110:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$111:
	; IntegralToIntegral £temporary1090 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$112
	neg al
	neg eax

 scanString$112:
	; Parameter signedint £temporary1090 69
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
	; GetReturnValue £temporary1091

 scanString$116:
	; NotEqual 128 £temporary1091 0
	cmp ebx, 0
	jne scanString$128

 scanString$117:
	; IntegralToIntegral £temporary1094 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$118
	neg al
	neg eax

 scanString$118:
	; Equal 128 £temporary1094 -1
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
	; GetReturnValue £temporary1100

 scanString$124:
	; Assign input £temporary1100
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
	; IntegralToIntegral £temporary1106 input
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge digitToValue$2
	neg al
	neg eax

 digitToValue$2:
	; Parameter signedint £temporary1106 49
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
	; GetReturnValue £temporary1107

 digitToValue$6:
	; Equal 10 £temporary1107 0
	cmp ebx, 0
	je digitToValue$10

 digitToValue$7:
	; BinarySubtract £temporary1108 input 48
	mov bl, [rbp + 24]
	sub bl, 48

 digitToValue$8:
	; IntegralToIntegral £temporary1109 £temporary1108
	mov rax, 255
	and rbx, rax

 digitToValue$9:
	; Return £temporary1109
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToValue$10:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 digitToValue$11:
	; IntegralToIntegral £temporary1110 input
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge digitToValue$12
	neg al
	neg eax

 digitToValue$12:
	; Parameter signedint £temporary1110 49
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
	; GetReturnValue £temporary1111

 digitToValue$16:
	; Equal 21 £temporary1111 0
	cmp ebx, 0
	je digitToValue$21

 digitToValue$17:
	; BinarySubtract £temporary1112 input 97
	mov bl, [rbp + 24]
	sub bl, 97

 digitToValue$18:
	; IntegralToIntegral £temporary1113 £temporary1112
	mov rax, 255
	and rbx, rax

 digitToValue$19:
	; BinaryAdd £temporary1114 £temporary1113 10
	add rbx, 10

 digitToValue$20:
	; Return £temporary1114
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToValue$21:
	; BinarySubtract £temporary1115 input 65
	mov bl, [rbp + 24]
	sub bl, 65

 digitToValue$22:
	; IntegralToIntegral £temporary1116 £temporary1115
	mov rax, 255
	and rbx, rax

 digitToValue$23:
	; BinaryAdd £temporary1117 £temporary1116 10
	add rbx, 10

 digitToValue$24:
	; Return £temporary1117
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
	; GetReturnValue £temporary1120

 scanLongInt$7:
	; Assign input £temporary1120
	mov [rbp + 40], bl

 scanLongInt$8:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$9:
	; IntegralToIntegral £temporary1121 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanLongInt$10
	neg al
	neg eax

 scanLongInt$10:
	; Parameter signedint £temporary1121 65
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
	; GetReturnValue £temporary1122

 scanLongInt$14:
	; Equal 21 £temporary1122 0
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
	; GetReturnValue £temporary1123

 scanLongInt$19:
	; Assign input £temporary1123
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
	; GetReturnValue £temporary1126

 scanLongInt$26:
	; Assign input £temporary1126
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
	; GetReturnValue £temporary1128

 scanLongInt$34:
	; Assign input £temporary1128
	mov [rbp + 40], bl

 scanLongInt$35:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$36:
	; IntegralToIntegral £temporary1129 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanLongInt$37
	neg al
	neg eax

 scanLongInt$37:
	; Parameter signedint £temporary1129 65
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
	; GetReturnValue £temporary1130

 scanLongInt$41:
	; Equal 53 £temporary1130 0
	cmp ebx, 0
	je scanLongInt$53

 scanLongInt$42:
	; SignedMultiply £temporary1131 longValue 10
	mov rax, [rbp + 24]
	xor rdx, rdx
	imul qword [int8$10#]

 scanLongInt$43:
	; BinarySubtract £temporary1132 input 48
	mov bl, [rbp + 40]
	sub bl, 48

 scanLongInt$44:
	; IntegralToIntegral £temporary1133 £temporary1132
	mov rcx, 255
	and rbx, rcx
	cmp bl, 0
	jge scanLongInt$45
	neg bl
	neg rbx

 scanLongInt$45:
	; BinaryAdd longValue £temporary1131 £temporary1133
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
	; GetReturnValue £temporary1135

 scanLongInt$50:
	; Assign input £temporary1135
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
	; UnarySubtract £temporary1137 longValue
	mov rax, [rbp + 24]
	neg rax

 scanLongInt$55:
	; Assign longValue £temporary1137
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
	; GetReturnValue £temporary1142

 scanUnsignedLongInt$5:
	; Assign input £temporary1142
	mov [rbp + 48], bl

 scanUnsignedLongInt$6:
	; Assign found 1
	mov dword [rbp + 49], 1

 scanUnsignedLongInt$7:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$8:
	; IntegralToIntegral £temporary1143 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$9
	neg al
	neg eax

 scanUnsignedLongInt$9:
	; Parameter signedint £temporary1143 77
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
	; GetReturnValue £temporary1144

 scanUnsignedLongInt$13:
	; Equal 20 £temporary1144 0
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
	; GetReturnValue £temporary1145

 scanUnsignedLongInt$18:
	; Assign input £temporary1145
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
	; GetReturnValue £temporary1148

 scanUnsignedLongInt$25:
	; Assign input £temporary1148
	mov [rbp + 48], bl

 scanUnsignedLongInt$26:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$27:
	; IntegralToIntegral £temporary1149 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$28
	neg al
	neg eax

 scanUnsignedLongInt$28:
	; Parameter signedint £temporary1149 77
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
	; GetReturnValue £temporary1150

 scanUnsignedLongInt$32:
	; NotEqual 44 £temporary1150 120
	cmp ebx, 120
	jne scanUnsignedLongInt$44

 scanUnsignedLongInt$33:
	; NotEqual 36 base 0
	cmp qword [rbp + 24], 0
	jne scanUnsignedLongInt$36

 scanUnsignedLongInt$34:
	; Assign £temporary1153 16
	mov rax, 16

 scanUnsignedLongInt$35:
	; Goto 37
	jmp scanUnsignedLongInt$37

 scanUnsignedLongInt$36:
	; Assign £temporary1153 base
	mov rax, [rbp + 24]

 scanUnsignedLongInt$37:
	; Assign base £temporary1153
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
	; GetReturnValue £temporary1154

 scanUnsignedLongInt$42:
	; Assign input £temporary1154
	mov [rbp + 48], bl

 scanUnsignedLongInt$43:
	; Goto 49
	jmp scanUnsignedLongInt$49

 scanUnsignedLongInt$44:
	; NotEqual 47 base 0
	cmp qword [rbp + 24], 0
	jne scanUnsignedLongInt$47

 scanUnsignedLongInt$45:
	; Assign £temporary1156 8
	mov rax, 8

 scanUnsignedLongInt$46:
	; Goto 48
	jmp scanUnsignedLongInt$48

 scanUnsignedLongInt$47:
	; Assign £temporary1156 base
	mov rax, [rbp + 24]

 scanUnsignedLongInt$48:
	; Assign base £temporary1156
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
	; IntegralToIntegral £temporary1158 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$53
	neg al
	neg eax

 scanUnsignedLongInt$53:
	; Parameter signedint £temporary1158 77
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
	; GetReturnValue £temporary1159

 scanUnsignedLongInt$57:
	; Equal 74 £temporary1159 0
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
	; GetReturnValue £temporary1160

 scanUnsignedLongInt$63:
	; Assign digit £temporary1160
	mov [rbp + 40], rbx

 scanUnsignedLongInt$64:
	; UnsignedGreaterThanEqual 74 digit base
	mov rax, [rbp + 24]
	cmp [rbp + 40], rax
	jae scanUnsignedLongInt$74

 scanUnsignedLongInt$65:
	; UnsignedMultiply £temporary1162 unsignedLongValue base
	mov rax, [rbp + 32]
	xor rdx, rdx
	mul qword [rbp + 24]

 scanUnsignedLongInt$66:
	; BinaryAdd unsignedLongValue £temporary1162 digit
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
	; GetReturnValue £temporary1164

 scanUnsignedLongInt$72:
	; Assign input £temporary1164
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
	; GetReturnValue £temporary1169

 scanLongDouble$10:
	; Assign input £temporary1169
	mov [rbp + 48], bl

 scanLongDouble$11:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$12:
	; IntegralToIntegral £temporary1170 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$13
	neg al
	neg eax

 scanLongDouble$13:
	; Parameter signedint £temporary1170 73
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
	; GetReturnValue £temporary1171

 scanLongDouble$17:
	; Equal 24 £temporary1171 0
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
	; GetReturnValue £temporary1172

 scanLongDouble$22:
	; Assign input £temporary1172
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
	; GetReturnValue £temporary1175

 scanLongDouble$29:
	; Assign input £temporary1175
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
	; GetReturnValue £temporary1177

 scanLongDouble$37:
	; Assign input £temporary1177
	mov [rbp + 48], bl

 scanLongDouble$38:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$39:
	; IntegralToIntegral £temporary1178 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$40
	neg al
	neg eax

 scanLongDouble$40:
	; Parameter signedint £temporary1178 73
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
	; GetReturnValue £temporary1179

 scanLongDouble$44:
	; Equal 60 £temporary1179 0
	cmp ebx, 0
	je scanLongDouble$60

 scanLongDouble$45:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 scanLongDouble$46:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$47:
	; SignedMultiply £temporary1180 10.0 value
	fmul

 scanLongDouble$48:
	; BinarySubtract £temporary1181 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$49:
	; IntegralToIntegral £temporary1183 £temporary1181
	and eax, 255
	cmp al, 0
	jge scanLongDouble$50
	neg al
	neg eax

 scanLongDouble$50:
	; IntegralToFloating £temporary1182 £temporary1183
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$51:
	; BinaryAdd £temporary1184 £temporary1180 £temporary1182
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
	; GetReturnValue £temporary1185

 scanLongDouble$57:
	; Assign input £temporary1185
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
	; GetReturnValue £temporary1188

 scanLongDouble$65:
	; Assign input £temporary1188
	mov [rbp + 48], bl

 scanLongDouble$66:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$67:
	; IntegralToIntegral £temporary1189 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$68
	neg al
	neg eax

 scanLongDouble$68:
	; Parameter signedint £temporary1189 73
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
	; GetReturnValue £temporary1190

 scanLongDouble$72:
	; Equal 92 £temporary1190 0
	cmp ebx, 0
	je scanLongDouble$92

 scanLongDouble$73:
	; PushFloat factor
	fld qword [rbp + 40]

 scanLongDouble$74:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 scanLongDouble$75:
	; SignedDivide £temporary1191 factor 10.0
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
	; BinarySubtract £temporary1192 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$80:
	; IntegralToIntegral £temporary1194 £temporary1192
	and eax, 255
	cmp al, 0
	jge scanLongDouble$81
	neg al
	neg eax

 scanLongDouble$81:
	; IntegralToFloating £temporary1193 £temporary1194
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$82:
	; SignedMultiply £temporary1195 factor £temporary1193
	fmul

 scanLongDouble$83:
	; BinaryAdd £temporary1196 value £temporary1195
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
	; GetReturnValue £temporary1197

 scanLongDouble$89:
	; Assign input £temporary1197
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
	; IntegralToIntegral £temporary1200 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$98
	neg al
	neg eax

 scanLongDouble$98:
	; Parameter signedint £temporary1200 73
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
	; GetReturnValue £temporary1201

 scanLongDouble$102:
	; NotEqual 121 £temporary1201 101
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
	; GetReturnValue £temporary1203

 scanLongDouble$107:
	; IntegralToFloating £temporary1204 £temporary1203
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
	; GetReturnValue £temporary1205

 scanLongDouble$118:
	; SignedMultiply £temporary1206 value £temporary1205
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
	; UnarySubtract £temporary1208 value
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
	; IntegralToIntegral £temporary1215 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$9:
	; BinaryAdd £temporary1217 format £temporary1215
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$10:
	; Dereference £temporary1214 -> £temporary1217 £temporary1217 0

 scanFormat$11:
	; Equal 332 £temporary1214 -> £temporary1217 0
	cmp byte [rsi], 0
	je scanFormat$332

 scanFormat$12:
	; IntegralToIntegral £temporary1221 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$13:
	; BinaryAdd £temporary1223 format £temporary1221
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$14:
	; Dereference £temporary1220 -> £temporary1223 £temporary1223 0

 scanFormat$15:
	; Assign c £temporary1220 -> £temporary1223
	mov al, [rsi]
	mov [rbp + 40], al

 scanFormat$16:
	; IntegralToIntegral £temporary1224 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$17
	neg al
	neg eax

 scanFormat$17:
	; BinaryAdd d £temporary1224 1
	inc eax
	mov [rbp + 153], eax

 scanFormat$18:
	; Equal 324 percent 0
	cmp dword [rbp + 49], 0
	je scanFormat$324

 scanFormat$19:
	; BinarySubtract £temporary1226 d 1
	mov eax, [rbp + 153]
	dec eax

 scanFormat$20:
	; Case 38 £temporary1226 104
	cmp eax, 104
	je scanFormat$38

 scanFormat$21:
	; Case 40 £temporary1226 108
	cmp eax, 108
	je scanFormat$40

 scanFormat$22:
	; Case 42 £temporary1226 76
	cmp eax, 76
	je scanFormat$42

 scanFormat$23:
	; Case 44 £temporary1226 42
	cmp eax, 42
	je scanFormat$44

 scanFormat$24:
	; Case 46 £temporary1226 99
	cmp eax, 99
	je scanFormat$46

 scanFormat$25:
	; Case 64 £temporary1226 115
	cmp eax, 115
	je scanFormat$64

 scanFormat$26:
	; Case 83 £temporary1226 100
	cmp eax, 100
	je scanFormat$83

 scanFormat$27:
	; Case 83 £temporary1226 105
	cmp eax, 105
	je scanFormat$83

 scanFormat$28:
	; Case 118 £temporary1226 111
	cmp eax, 111
	je scanFormat$118

 scanFormat$29:
	; Case 154 £temporary1226 120
	cmp eax, 120
	je scanFormat$154

 scanFormat$30:
	; Case 190 £temporary1226 117
	cmp eax, 117
	je scanFormat$190

 scanFormat$31:
	; Case 226 £temporary1226 103
	cmp eax, 103
	je scanFormat$226

 scanFormat$32:
	; Case 226 £temporary1226 102
	cmp eax, 102
	je scanFormat$226

 scanFormat$33:
	; Case 226 £temporary1226 101
	cmp eax, 101
	je scanFormat$226

 scanFormat$34:
	; Case 262 £temporary1226 91
	cmp eax, 91
	je scanFormat$262

 scanFormat$35:
	; Case 308 £temporary1226 110
	cmp eax, 110
	je scanFormat$308

 scanFormat$36:
	; CaseEnd £temporary1226

 scanFormat$37:
	; Goto 317
	jmp scanFormat$317

 scanFormat$38:
	; Assign shortInt 1
	mov dword [rbp + 53], 1

 scanFormat$39:
	; Goto 330
	jmp scanFormat$330

 scanFormat$40:
	; Assign longIntOrDouble 1
	mov dword [rbp + 57], 1

 scanFormat$41:
	; Goto 330
	jmp scanFormat$330

 scanFormat$42:
	; Assign longDouble 1
	mov dword [rbp + 61], 1

 scanFormat$43:
	; Goto 330
	jmp scanFormat$330

 scanFormat$44:
	; Assign star 1
	mov dword [rbp + 65], 1

 scanFormat$45:
	; Goto 330
	jmp scanFormat$330

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
	; GetReturnValue £temporary1227

 scanFormat$50:
	; Assign charValue £temporary1227
	mov [rbp + 157], bl

 scanFormat$51:
	; NotEqual 59 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$59

 scanFormat$52:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$53:
	; BinarySubtract £temporary1232 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$54:
	; IntegralToIntegral £temporary1234 £temporary1232

 scanFormat$55:
	; Dereference £temporary1235 -> £temporary1234 £temporary1234 0

 scanFormat$56:
	; Assign charPtr £temporary1235 -> £temporary1234
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$57:
	; Dereference £temporary1236 -> charPtr charPtr 0
	mov rsi, [rbp + 41]

 scanFormat$58:
	; Assign £temporary1236 -> charPtr charValue
	mov al, [rbp + 157]
	mov [rsi], al

 scanFormat$59:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$60:
	; IntegralToIntegral £temporary1237 charValue
	mov al, [rbp + 157]
	and eax, 255
	cmp al, 0
	jge scanFormat$61
	neg al
	neg eax

 scanFormat$61:
	; Equal 330 £temporary1237 -1
	cmp eax, -1
	je scanFormat$330

 scanFormat$62:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanFormat$63:
	; Goto 330
	jmp scanFormat$330

 scanFormat$64:
	; NotEqual 76 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$76

 scanFormat$65:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$66:
	; BinarySubtract £temporary1244 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$67:
	; IntegralToIntegral £temporary1246 £temporary1244

 scanFormat$68:
	; Dereference £temporary1247 -> £temporary1246 £temporary1246 0

 scanFormat$69:
	; Assign charPtr £temporary1247 -> £temporary1246
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
	; Goto 330
	jmp scanFormat$330

 scanFormat$83:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$84:
	; Call scanLongInt 157 0
	mov qword [rbp + 157], scanFormat$85
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongInt

 scanFormat$85:
	; PostCall 157

 scanFormat$86:
	; GetReturnValue £temporary1250

 scanFormat$87:
	; Assign longValue £temporary1250
	mov [rbp + 69], rbx

 scanFormat$88:
	; NotEqual 116 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$116

 scanFormat$89:
	; Equal 99 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$99

 scanFormat$90:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$91:
	; BinarySubtract £temporary1255 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$92:
	; IntegralToIntegral £temporary1257 £temporary1255

 scanFormat$93:
	; Dereference £temporary1258 -> £temporary1257 £temporary1257 0

 scanFormat$94:
	; Assign shortPtr £temporary1258 -> £temporary1257
	mov rax, [rsi]
	mov [rbp + 85], rax

 scanFormat$95:
	; Dereference £temporary1259 -> shortPtr shortPtr 0
	mov rsi, [rbp + 85]

 scanFormat$96:
	; IntegralToIntegral £temporary1260 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$97
	neg rax
	neg ax

 scanFormat$97:
	; Assign £temporary1259 -> shortPtr £temporary1260
	mov [rsi], ax

 scanFormat$98:
	; Goto 116
	jmp scanFormat$116

 scanFormat$99:
	; NotEqual 109 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$109

 scanFormat$100:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$101:
	; BinarySubtract £temporary1265 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$102:
	; IntegralToIntegral £temporary1267 £temporary1265

 scanFormat$103:
	; Dereference £temporary1268 -> £temporary1267 £temporary1267 0

 scanFormat$104:
	; Assign intPtr £temporary1268 -> £temporary1267
	mov rax, [rsi]
	mov [rbp + 97], rax

 scanFormat$105:
	; Dereference £temporary1269 -> intPtr intPtr 0
	mov rsi, [rbp + 97]

 scanFormat$106:
	; IntegralToIntegral £temporary1270 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$107
	neg rax
	neg eax

 scanFormat$107:
	; Assign £temporary1269 -> intPtr £temporary1270
	mov [rsi], eax

 scanFormat$108:
	; Goto 116
	jmp scanFormat$116

 scanFormat$109:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$110:
	; BinarySubtract £temporary1273 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$111:
	; IntegralToIntegral £temporary1275 £temporary1273

 scanFormat$112:
	; Dereference £temporary1276 -> £temporary1275 £temporary1275 0

 scanFormat$113:
	; Assign longPtr £temporary1276 -> £temporary1275
	mov rax, [rsi]
	mov [rbp + 77], rax

 scanFormat$114:
	; Dereference £temporary1277 -> longPtr longPtr 0
	mov rsi, [rbp + 77]

 scanFormat$115:
	; Assign £temporary1277 -> longPtr longValue
	mov rax, [rbp + 69]
	mov [rsi], rax

 scanFormat$116:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$117:
	; Goto 330
	jmp scanFormat$330

 scanFormat$118:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$119:
	; Parameter unsignedlongint 8 181
	mov qword [rbp + 181], 8

 scanFormat$120:
	; Call scanUnsignedLongInt 157 0
	mov qword [rbp + 157], scanFormat$121
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$121:
	; PostCall 157

 scanFormat$122:
	; GetReturnValue £temporary1279

 scanFormat$123:
	; Assign unsignedLongValue £temporary1279
	mov [rbp + 113], rbx

 scanFormat$124:
	; NotEqual 152 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$152

 scanFormat$125:
	; Equal 135 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$135

 scanFormat$126:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$127:
	; BinarySubtract £temporary1284 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$128:
	; IntegralToIntegral £temporary1286 £temporary1284

 scanFormat$129:
	; Dereference £temporary1287 -> £temporary1286 £temporary1286 0

 scanFormat$130:
	; Assign unsignedShortPtr £temporary1287 -> £temporary1286
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$131:
	; Dereference £temporary1288 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$132:
	; IntegralToIntegral £temporary1289 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$133:
	; Assign £temporary1288 -> unsignedShortPtr £temporary1289
	mov [rsi], ax

 scanFormat$134:
	; Goto 152
	jmp scanFormat$152

 scanFormat$135:
	; NotEqual 145 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$145

 scanFormat$136:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$137:
	; BinarySubtract £temporary1294 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$138:
	; IntegralToIntegral £temporary1296 £temporary1294

 scanFormat$139:
	; Dereference £temporary1297 -> £temporary1296 £temporary1296 0

 scanFormat$140:
	; Assign unsignedIntPtr £temporary1297 -> £temporary1296
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$141:
	; Dereference £temporary1298 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$142:
	; IntegralToIntegral £temporary1299 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$143:
	; Assign £temporary1298 -> unsignedIntPtr £temporary1299
	mov [rsi], eax

 scanFormat$144:
	; Goto 152
	jmp scanFormat$152

 scanFormat$145:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$146:
	; BinarySubtract £temporary1302 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$147:
	; IntegralToIntegral £temporary1304 £temporary1302

 scanFormat$148:
	; Dereference £temporary1305 -> £temporary1304 £temporary1304 0

 scanFormat$149:
	; Assign unsignedLongPtr £temporary1305 -> £temporary1304
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$150:
	; Dereference £temporary1306 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$151:
	; Assign £temporary1306 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$152:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$153:
	; Goto 330
	jmp scanFormat$330

 scanFormat$154:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$155:
	; Parameter unsignedlongint 16 181
	mov qword [rbp + 181], 16

 scanFormat$156:
	; Call scanUnsignedLongInt 157 0
	mov qword [rbp + 157], scanFormat$157
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$157:
	; PostCall 157

 scanFormat$158:
	; GetReturnValue £temporary1308

 scanFormat$159:
	; Assign unsignedLongValue £temporary1308
	mov [rbp + 113], rbx

 scanFormat$160:
	; NotEqual 188 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$188

 scanFormat$161:
	; Equal 171 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$171

 scanFormat$162:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$163:
	; BinarySubtract £temporary1313 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$164:
	; IntegralToIntegral £temporary1315 £temporary1313

 scanFormat$165:
	; Dereference £temporary1316 -> £temporary1315 £temporary1315 0

 scanFormat$166:
	; Assign unsignedShortPtr £temporary1316 -> £temporary1315
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$167:
	; Dereference £temporary1317 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$168:
	; IntegralToIntegral £temporary1318 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$169:
	; Assign £temporary1317 -> unsignedShortPtr £temporary1318
	mov [rsi], ax

 scanFormat$170:
	; Goto 188
	jmp scanFormat$188

 scanFormat$171:
	; NotEqual 181 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$181

 scanFormat$172:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$173:
	; BinarySubtract £temporary1323 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$174:
	; IntegralToIntegral £temporary1325 £temporary1323

 scanFormat$175:
	; Dereference £temporary1326 -> £temporary1325 £temporary1325 0

 scanFormat$176:
	; Assign unsignedIntPtr £temporary1326 -> £temporary1325
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$177:
	; Dereference £temporary1327 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$178:
	; IntegralToIntegral £temporary1328 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$179:
	; Assign £temporary1327 -> unsignedIntPtr £temporary1328
	mov [rsi], eax

 scanFormat$180:
	; Goto 188
	jmp scanFormat$188

 scanFormat$181:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$182:
	; BinarySubtract £temporary1331 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$183:
	; IntegralToIntegral £temporary1333 £temporary1331

 scanFormat$184:
	; Dereference £temporary1334 -> £temporary1333 £temporary1333 0

 scanFormat$185:
	; Assign unsignedLongPtr £temporary1334 -> £temporary1333
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$186:
	; Dereference £temporary1335 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$187:
	; Assign £temporary1335 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$188:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$189:
	; Goto 330
	jmp scanFormat$330

 scanFormat$190:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$191:
	; Parameter unsignedlongint 0 181
	mov qword [rbp + 181], 0

 scanFormat$192:
	; Call scanUnsignedLongInt 157 0
	mov qword [rbp + 157], scanFormat$193
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$193:
	; PostCall 157

 scanFormat$194:
	; GetReturnValue £temporary1337

 scanFormat$195:
	; Assign unsignedLongValue £temporary1337
	mov [rbp + 113], rbx

 scanFormat$196:
	; NotEqual 224 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$224

 scanFormat$197:
	; Equal 207 shortInt 0
	cmp dword [rbp + 53], 0
	je scanFormat$207

 scanFormat$198:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$199:
	; BinarySubtract £temporary1342 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$200:
	; IntegralToIntegral £temporary1344 £temporary1342

 scanFormat$201:
	; Dereference £temporary1345 -> £temporary1344 £temporary1344 0

 scanFormat$202:
	; Assign unsignedShortPtr £temporary1345 -> £temporary1344
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$203:
	; Dereference £temporary1346 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$204:
	; IntegralToIntegral £temporary1347 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$205:
	; Assign £temporary1346 -> unsignedShortPtr £temporary1347
	mov [rsi], ax

 scanFormat$206:
	; Goto 224
	jmp scanFormat$224

 scanFormat$207:
	; NotEqual 217 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$217

 scanFormat$208:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$209:
	; BinarySubtract £temporary1352 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$210:
	; IntegralToIntegral £temporary1354 £temporary1352

 scanFormat$211:
	; Dereference £temporary1355 -> £temporary1354 £temporary1354 0

 scanFormat$212:
	; Assign unsignedIntPtr £temporary1355 -> £temporary1354
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$213:
	; Dereference £temporary1356 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$214:
	; IntegralToIntegral £temporary1357 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$215:
	; Assign £temporary1356 -> unsignedIntPtr £temporary1357
	mov [rsi], eax

 scanFormat$216:
	; Goto 224
	jmp scanFormat$224

 scanFormat$217:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$218:
	; BinarySubtract £temporary1360 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$219:
	; IntegralToIntegral £temporary1362 £temporary1360

 scanFormat$220:
	; Dereference £temporary1363 -> £temporary1362 £temporary1362 0

 scanFormat$221:
	; Assign unsignedLongPtr £temporary1363 -> £temporary1362
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$222:
	; Dereference £temporary1364 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$223:
	; Assign £temporary1364 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$224:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$225:
	; Goto 330
	jmp scanFormat$330

 scanFormat$226:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$227:
	; Call scanLongDouble 157 0
	mov qword [rbp + 157], scanFormat$228
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongDouble

 scanFormat$228:
	; PostCall 157

 scanFormat$229:
	; GetReturnValue £temporary1366

 scanFormat$230:
	; PopFloat longDoubleValue
	fstp qword [rbp + 145]

 scanFormat$231:
	; NotEqual 260 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$260

 scanFormat$232:
	; Equal 242 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	je scanFormat$242

 scanFormat$233:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$234:
	; BinarySubtract £temporary1371 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$235:
	; IntegralToIntegral £temporary1373 £temporary1371

 scanFormat$236:
	; Dereference £temporary1374 -> £temporary1373 £temporary1373 0

 scanFormat$237:
	; Assign doublePtr £temporary1374 -> £temporary1373
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$238:
	; Dereference £temporary1375 -> doublePtr doublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$239:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$240:
	; PopFloat £temporary1375 -> doublePtr
	fstp qword [rsi]

 scanFormat$241:
	; Goto 260
	jmp scanFormat$260

 scanFormat$242:
	; Equal 252 longDouble 0
	cmp dword [rbp + 61], 0
	je scanFormat$252

 scanFormat$243:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$244:
	; BinarySubtract £temporary1379 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$245:
	; IntegralToIntegral £temporary1381 £temporary1379

 scanFormat$246:
	; Dereference £temporary1382 -> £temporary1381 £temporary1381 0

 scanFormat$247:
	; Assign longDoublePtr £temporary1382 -> £temporary1381
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$248:
	; Dereference £temporary1383 -> longDoublePtr longDoublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$249:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$250:
	; PopFloat £temporary1383 -> longDoublePtr
	fstp qword [rsi]

 scanFormat$251:
	; Goto 260
	jmp scanFormat$260

 scanFormat$252:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$253:
	; BinarySubtract £temporary1386 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$254:
	; IntegralToIntegral £temporary1388 £temporary1386

 scanFormat$255:
	; Dereference £temporary1389 -> £temporary1388 £temporary1388 0

 scanFormat$256:
	; Assign floatPtr £temporary1389 -> £temporary1388
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$257:
	; Dereference £temporary1390 -> floatPtr floatPtr 0
	mov rsi, [rbp + 157]

 scanFormat$258:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$259:
	; PopFloat £temporary1390 -> floatPtr
	fstp dword [rsi]

 scanFormat$260:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$261:
	; Goto 330
	jmp scanFormat$330

 scanFormat$262:
	; Assign not 0
	mov dword [rbp + 157], 0

 scanFormat$263:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$264:
	; IntegralToIntegral £temporary1396 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$265:
	; BinaryAdd £temporary1398 format £temporary1396
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$266:
	; Dereference £temporary1395 -> £temporary1398 £temporary1398 0

 scanFormat$267:
	; NotEqual 270 £temporary1395 -> £temporary1398 94
	cmp byte [rsi], 94
	jne scanFormat$270

 scanFormat$268:
	; Assign not 1
	mov dword [rbp + 157], 1

 scanFormat$269:
	; BinaryAdd startIndex index 1
	mov eax, [rbp + 93]
	inc eax
	mov [rbp + 161], eax

 scanFormat$270:
	; IntegralToIntegral £temporary1402 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$271:
	; BinaryAdd £temporary1404 format £temporary1402
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$272:
	; Dereference £temporary1401 -> £temporary1404 £temporary1404 0

 scanFormat$273:
	; Equal 276 £temporary1401 -> £temporary1404 93
	cmp byte [rsi], 93
	je scanFormat$276

 scanFormat$274:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$275:
	; Goto 270
	jmp scanFormat$270

 scanFormat$276:
	; IntegralToIntegral £temporary1408 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$277:
	; BinaryAdd £temporary1410 format £temporary1408
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$278:
	; Dereference £temporary1407 -> £temporary1410 £temporary1410 0

 scanFormat$279:
	; Assign £temporary1407 -> £temporary1410 0
	mov byte [rsi], 0

 scanFormat$280:
	; NotEqual 297 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$297

 scanFormat$281:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$282:
	; BinarySubtract £temporary1415 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$283:
	; IntegralToIntegral £temporary1417 £temporary1415

 scanFormat$284:
	; Dereference £temporary1418 -> £temporary1417 £temporary1417 0

 scanFormat$285:
	; Assign string £temporary1418 -> £temporary1417
	mov rax, [rsi]
	mov [rbp + 165], rax

 scanFormat$286:
	; PreCall 173 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$287:
	; Parameter pointer string 197
	mov rax, [rbp + 165]
	mov [rbp + 197], rax

 scanFormat$288:
	; IntegralToIntegral £temporary1420 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$289:
	; BinaryAdd £temporary1422 format £temporary1420
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$290:
	; Dereference £temporary1419 -> £temporary1422 £temporary1422 0

 scanFormat$291:
	; Address £temporary1423 £temporary1419 -> £temporary1422

 scanFormat$292:
	; Parameter pointer £temporary1423 205
	mov [rbp + 205], rsi

 scanFormat$293:
	; Parameter signedint not 213
	mov eax, [rbp + 157]
	mov [rbp + 213], eax

 scanFormat$294:
	; Call scanPattern 173 0
	mov qword [rbp + 173], scanFormat$295
	mov [rbp + 181], rbp
	add rbp, 173
	jmp scanPattern

 scanFormat$295:
	; PostCall 173

 scanFormat$296:
	; Goto 330
	jmp scanFormat$330

 scanFormat$297:
	; PreCall 165 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$298:
	; Parameter pointer 0 189
	mov qword [rbp + 189], 0

 scanFormat$299:
	; IntegralToIntegral £temporary1426 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$300:
	; BinaryAdd £temporary1428 format £temporary1426
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$301:
	; Dereference £temporary1425 -> £temporary1428 £temporary1428 0

 scanFormat$302:
	; Address £temporary1429 £temporary1425 -> £temporary1428

 scanFormat$303:
	; Parameter pointer £temporary1429 197
	mov [rbp + 197], rsi

 scanFormat$304:
	; Parameter signedint not 205
	mov eax, [rbp + 157]
	mov [rbp + 205], eax

 scanFormat$305:
	; Call scanPattern 165 0
	mov qword [rbp + 165], scanFormat$306
	mov [rbp + 173], rbp
	add rbp, 165
	jmp scanPattern

 scanFormat$306:
	; PostCall 165

 scanFormat$307:
	; Goto 330
	jmp scanFormat$330

 scanFormat$308:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$309:
	; BinarySubtract £temporary1433 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$310:
	; IntegralToIntegral £temporary1435 £temporary1433

 scanFormat$311:
	; Dereference £temporary1436 -> £temporary1435 £temporary1435 0

 scanFormat$312:
	; Assign charsPtr £temporary1436 -> £temporary1435
	mov rax, [rsi]
	mov [rbp + 105], rax

 scanFormat$313:
	; Dereference £temporary1437 -> charsPtr charsPtr 0
	mov rsi, [rbp + 105]

 scanFormat$314:
	; Assign £temporary1437 -> charsPtr g_inChars
	mov eax, [g_inChars]
	mov [rsi], eax

 scanFormat$315:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$316:
	; Goto 330
	jmp scanFormat$330

 scanFormat$317:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$318:
	; Parameter pointer "scanFormat c = '%c'\n" 181
	mov qword [rbp + 181], string_scanFormat20c203D202725c270A#

 scanFormat$319:
	; IntegralToIntegral £temporary1438 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$320
	neg al
	neg eax

 scanFormat$320:
	; Parameter signedint £temporary1438 189
	mov [rbp + 189], eax

 scanFormat$321:
	; Call printf 157 4
	mov qword [rbp + 157], scanFormat$322
	mov [rbp + 165], rbp
	add rbp, 157
	mov rdi, rbp
	add rdi, 4
	jmp printf

 scanFormat$322:
	; PostCall 157

 scanFormat$323:
	; Goto 330
	jmp scanFormat$330

 scanFormat$324:
	; NotEqual 330 c 37
	cmp byte [rbp + 40], 37
	jne scanFormat$330

 scanFormat$325:
	; Assign percent 1
	mov dword [rbp + 49], 1

 scanFormat$326:
	; Assign shortInt 0
	mov dword [rbp + 53], 0

 scanFormat$327:
	; Assign longIntOrDouble 0
	mov dword [rbp + 57], 0

 scanFormat$328:
	; Assign longDouble 0
	mov dword [rbp + 61], 0

 scanFormat$329:
	; Assign star 0
	mov dword [rbp + 65], 0

 scanFormat$330:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$331:
	; Goto 8
	jmp scanFormat$8

 scanFormat$332:
	; Return g_inCount
	mov ebx, [g_inCount]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanFormat$333:
	; FunctionEnd scanFormat

section .text

 scanf:
	; Address £temporary1442 format
	mov rsi, rbp
	add rsi, 24

 scanf$1:
	; IntegralToIntegral £temporary1443 £temporary1442

 scanf$2:
	; BinaryAdd arg_list £temporary1443 8
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
	; GetReturnValue £temporary1446

 scanf$9:
	; Return £temporary1446
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
	; GetReturnValue £temporary1448

 vscanf$7:
	; Return £temporary1448
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vscanf$8:
	; FunctionEnd vscanf

section .text

 fscanf:
	; Address £temporary1449 format
	mov rsi, rbp
	add rsi, 32

 fscanf$1:
	; IntegralToIntegral £temporary1450 £temporary1449

 fscanf$2:
	; BinaryAdd arg_list £temporary1450 8
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
	; GetReturnValue £temporary1453

 fscanf$10:
	; Return £temporary1453
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
	; IntegralToIntegral £temporary1455 inStream
	mov rax, [rbp + 24]

 vfscanf$2:
	; Assign g_inDevice £temporary1455
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
	; GetReturnValue £temporary1456

 vfscanf$9:
	; Return £temporary1456
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfscanf$10:
	; FunctionEnd vfscanf

section .text

 sscanf:
	; Address £temporary1457 format
	mov rsi, rbp
	add rsi, 32

 sscanf$1:
	; IntegralToIntegral £temporary1458 £temporary1457

 sscanf$2:
	; BinaryAdd arg_list £temporary1458 8
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
	; GetReturnValue £temporary1461

 sscanf$10:
	; Return £temporary1461
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
	; IntegralToIntegral £temporary1463 inString
	mov rax, [rbp + 24]

 vsscanf$2:
	; Assign g_inDevice £temporary1463
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
	; GetReturnValue £temporary1464

 vsscanf$9:
	; Return £temporary1464
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsscanf$10:
	; FunctionEnd vsscanf
