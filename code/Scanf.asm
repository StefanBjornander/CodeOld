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
	extern isdigit
	extern islower
	extern isupper
	extern tolower
	extern pow
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
	; Case 21 g_inStatus 1
	cmp eax, 1
	je scanChar$21

 scanChar$3:
	; CaseEnd g_inStatus

 scanChar$4:
	; Jump 30
	jmp scanChar$30

 scanChar$5:
	; IntegralToIntegral £temporary848 g_inDevice
	mov rax, [g_inDevice]

 scanChar$6:
	; Assign stream £temporary848
	mov [rbp + 25], rax

 scanChar$7:
	; Dereference £temporary849 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$8:
	; Assign handle £temporary849 -> stream
	mov eax, [rsi + 4]
	mov [rbp + 33], eax

 scanChar$9:
	; AssignRegister rax 0
	mov rax, 0

 scanChar$10:
	; Dereference £temporary852 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$11:
	; IntegralToIntegral £temporary853 £temporary852 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 scanChar$12:
	; AssignRegister rdi £temporary853

 scanChar$13:
	; Address £temporary855 c
	mov rsi, rbp
	add rsi, 24

 scanChar$14:
	; IntegralToIntegral £temporary856 £temporary855

 scanChar$15:
	; AssignRegister rsi £temporary856

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
	; SetReturnValue

 scanChar$20:
	; Return c
	mov bl, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$21:
	; IntegralToIntegral £temporary859 g_inDevice
	mov rax, [g_inDevice]

 scanChar$22:
	; Assign inString £temporary859
	mov [rbp + 37], rax

 scanChar$23:
	; Assign £temporary860 g_inChars
	mov eax, [g_inChars]

 scanChar$24:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanChar$25:
	; IntegralToIntegral £temporary862 £temporary860
	mov rbx, 4294967295
	and rax, rbx

 scanChar$26:
	; BinaryAdd £temporary864 inString £temporary862
	mov rsi, [rbp + 37]
	add rsi, rax

 scanChar$27:
	; Dereference £temporary861 -> £temporary864 £temporary864 0

 scanChar$28:
	; SetReturnValue

 scanChar$29:
	; Return £temporary861 -> £temporary864
	mov bl, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$30:
	; SetReturnValue

 scanChar$31:
	; Return 0
	mov bl, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$32:
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
	; Jump 7
	jmp unscanChar$7

 unscanChar$4:
	; BinarySubtract g_inChars g_inChars 1
	dec dword [g_inChars]

 unscanChar$5:
	; Jump 7
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

 @3525$strnchr:
	; IntegralToIntegral £temporary868 i
	mov eax, [rbp + 36]
	cmp eax, 0
	jge @3525$strnchr$1
	neg eax
	neg al

 @3525$strnchr$1:
	; Assign c £temporary868
	mov [rbp + 44], al

 @3525$strnchr$2:
	; Assign index 0
	mov dword [rbp + 40], 0

 @3525$strnchr$3:
	; SignedGreaterThanEqual 16 index size
	mov eax, [rbp + 32]
	cmp [rbp + 40], eax
	jge @3525$strnchr$16

 @3525$strnchr$4:
	; IntegralToIntegral £temporary872 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 @3525$strnchr$5:
	; BinaryAdd £temporary874 text £temporary872
	mov rsi, [rbp + 24]
	add rsi, rax

 @3525$strnchr$6:
	; Dereference £temporary871 -> £temporary874 £temporary874 0

 @3525$strnchr$7:
	; NotEqual 14 £temporary871 -> £temporary874 c
	mov al, [rbp + 44]
	cmp [rsi], al
	jne @3525$strnchr$14

 @3525$strnchr$8:
	; IntegralToIntegral £temporary877 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 @3525$strnchr$9:
	; BinaryAdd £temporary879 text £temporary877
	mov rbx, [rbp + 24]
	add rbx, rax

 @3525$strnchr$10:
	; Dereference £temporary876 -> £temporary879 £temporary879 0

 @3525$strnchr$11:
	; Address £temporary880 £temporary876 -> £temporary879

 @3525$strnchr$12:
	; SetReturnValue

 @3525$strnchr$13:
	; Return £temporary880
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3525$strnchr$14:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 @3525$strnchr$15:
	; Jump 3
	jmp @3525$strnchr$3

 @3525$strnchr$16:
	; SetReturnValue

 @3525$strnchr$17:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3525$strnchr$18:
	; FunctionEnd strnchr

section .text

 scanPattern:
	; Assign index 0
	mov dword [rbp + 48], 0

 scanPattern$1:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$2:
	; Call 52 scanChar 0
	mov qword [rbp + 52], scanPattern$3
	mov [rbp + 60], rbp
	add rbp, 52
	jmp scanChar

 scanPattern$3:
	; PostCall 52

 scanPattern$4:
	; GetReturnValue £temporary881

 scanPattern$5:
	; Assign input £temporary881
	mov [rbp + 52], bl

 scanPattern$6:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$7:
	; IntegralToIntegral £temporary882 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$8
	neg al
	neg eax

 scanPattern$8:
	; Parameter 77 signedint £temporary882
	mov [rbp + 77], eax

 scanPattern$9:
	; Call 53 isspace 0
	mov qword [rbp + 53], scanPattern$10
	mov [rbp + 61], rbp
	add rbp, 53
	jmp isspace

 scanPattern$10:
	; PostCall 53

 scanPattern$11:
	; GetReturnValue £temporary883

 scanPattern$12:
	; Equal 19 £temporary883 0
	cmp ebx, 0
	je scanPattern$19

 scanPattern$13:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$14:
	; Call 53 scanChar 0
	mov qword [rbp + 53], scanPattern$15
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanPattern$15:
	; PostCall 53

 scanPattern$16:
	; GetReturnValue £temporary884

 scanPattern$17:
	; Assign input £temporary884
	mov [rbp + 52], bl

 scanPattern$18:
	; Jump 6
	jmp scanPattern$6

 scanPattern$19:
	; Equal 57 string 0
	cmp qword [rbp + 24], 0
	je scanPattern$57

 scanPattern$20:
	; NotEqual 30 not 0
	cmp dword [rbp + 44], 0
	jne scanPattern$30

 scanPattern$21:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$22:
	; Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$23:
	; Parameter 85 signedint size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$24:
	; IntegralToIntegral £temporary889 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$25
	neg al
	neg eax

 scanPattern$25:
	; Parameter 89 signedint £temporary889
	mov [rbp + 89], eax

 scanPattern$26:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$27
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3525$strnchr

 scanPattern$27:
	; PostCall 53

 scanPattern$28:
	; GetReturnValue £temporary890

 scanPattern$29:
	; NotEqual 40 £temporary890 0
	cmp rbx, 0
	jne scanPattern$40

 scanPattern$30:
	; Equal 52 not 0
	cmp dword [rbp + 44], 0
	je scanPattern$52

 scanPattern$31:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$32:
	; Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$33:
	; Parameter 85 signedint size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$34:
	; IntegralToIntegral £temporary893 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$35
	neg al
	neg eax

 scanPattern$35:
	; Parameter 89 signedint £temporary893
	mov [rbp + 89], eax

 scanPattern$36:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$37
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3525$strnchr

 scanPattern$37:
	; PostCall 53

 scanPattern$38:
	; GetReturnValue £temporary894

 scanPattern$39:
	; NotEqual 52 £temporary894 0
	cmp rbx, 0
	jne scanPattern$52

 scanPattern$40:
	; Assign £temporary900 index
	mov eax, [rbp + 48]

 scanPattern$41:
	; BinaryAdd index index 1
	inc dword [rbp + 48]

 scanPattern$42:
	; IntegralToIntegral £temporary902 £temporary900
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$43:
	; BinaryAdd £temporary904 string £temporary902
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$44:
	; Dereference £temporary901 -> £temporary904 £temporary904 0

 scanPattern$45:
	; Assign £temporary901 -> £temporary904 input
	mov al, [rbp + 52]
	mov [rsi], al

 scanPattern$46:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$47:
	; Call 53 scanChar 0
	mov qword [rbp + 53], scanPattern$48
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanPattern$48:
	; PostCall 53

 scanPattern$49:
	; GetReturnValue £temporary905

 scanPattern$50:
	; Assign input £temporary905
	mov [rbp + 52], bl

 scanPattern$51:
	; Jump 20
	jmp scanPattern$20

 scanPattern$52:
	; IntegralToIntegral £temporary907 index
	mov eax, [rbp + 48]
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$53:
	; BinaryAdd £temporary909 string £temporary907
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$54:
	; Dereference £temporary906 -> £temporary909 £temporary909 0

 scanPattern$55:
	; Assign £temporary906 -> £temporary909 0
	mov byte [rsi], 0

 scanPattern$56:
	; Jump 83
	jmp scanPattern$83

 scanPattern$57:
	; NotEqual 67 not 0
	cmp dword [rbp + 44], 0
	jne scanPattern$67

 scanPattern$58:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$59:
	; Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$60:
	; Parameter 85 signedint size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$61:
	; IntegralToIntegral £temporary912 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$62
	neg al
	neg eax

 scanPattern$62:
	; Parameter 89 signedint £temporary912
	mov [rbp + 89], eax

 scanPattern$63:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$64
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3525$strnchr

 scanPattern$64:
	; PostCall 53

 scanPattern$65:
	; GetReturnValue £temporary913

 scanPattern$66:
	; NotEqual 77 £temporary913 0
	cmp rbx, 0
	jne scanPattern$77

 scanPattern$67:
	; Equal 83 not 0
	cmp dword [rbp + 44], 0
	je scanPattern$83

 scanPattern$68:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$69:
	; Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$70:
	; Parameter 85 signedint size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$71:
	; IntegralToIntegral £temporary916 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$72
	neg al
	neg eax

 scanPattern$72:
	; Parameter 89 signedint £temporary916
	mov [rbp + 89], eax

 scanPattern$73:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$74
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3525$strnchr

 scanPattern$74:
	; PostCall 53

 scanPattern$75:
	; GetReturnValue £temporary917

 scanPattern$76:
	; NotEqual 83 £temporary917 0
	cmp rbx, 0
	jne scanPattern$83

 scanPattern$77:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$78:
	; Call 53 scanChar 0
	mov qword [rbp + 53], scanPattern$79
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanPattern$79:
	; PostCall 53

 scanPattern$80:
	; GetReturnValue £temporary923

 scanPattern$81:
	; Assign input £temporary923
	mov [rbp + 52], bl

 scanPattern$82:
	; Jump 57
	jmp scanPattern$57

 scanPattern$83:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanPattern$84:
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
	; GetReturnValue £temporary924

 scanString$5:
	; Assign input £temporary924
	mov [rbp + 40], bl

 scanString$6:
	; Assign found 0
	mov dword [rbp + 41], 0

 scanString$7:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$8:
	; IntegralToIntegral £temporary925 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$9
	neg al
	neg eax

 scanString$9:
	; Parameter 69 signedint £temporary925
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
	; GetReturnValue £temporary926

 scanString$13:
	; Equal 20 £temporary926 0
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
	; GetReturnValue £temporary927

 scanString$18:
	; Assign input £temporary927
	mov [rbp + 40], bl

 scanString$19:
	; Jump 7
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
	; IntegralToIntegral £temporary931 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$24
	neg al
	neg eax

 scanString$24:
	; Parameter 69 signedint £temporary931
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
	; GetReturnValue £temporary932

 scanString$28:
	; NotEqual 46 £temporary932 0
	cmp ebx, 0
	jne scanString$46

 scanString$29:
	; IntegralToIntegral £temporary935 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$30
	neg al
	neg eax

 scanString$30:
	; Equal 46 £temporary935 -1
	cmp eax, -1
	je scanString$46

 scanString$31:
	; Equal 46 input 10
	cmp byte [rbp + 40], 10
	je scanString$46

 scanString$32:
	; Assign £temporary940 index
	mov eax, [rbp + 36]

 scanString$33:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$34:
	; IntegralToIntegral £temporary942 £temporary940
	mov rbx, 4294967295
	and rax, rbx

 scanString$35:
	; BinaryAdd £temporary944 string £temporary942
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$36:
	; Dereference £temporary941 -> £temporary944 £temporary944 0

 scanString$37:
	; Assign £temporary941 -> £temporary944 input
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
	; GetReturnValue £temporary945

 scanString$42:
	; Assign input £temporary945
	mov [rbp + 40], bl

 scanString$43:
	; Assign found 1
	mov dword [rbp + 41], 1

 scanString$44:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$45:
	; Jump 22
	jmp scanString$22

 scanString$46:
	; IntegralToIntegral £temporary948 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$47:
	; BinaryAdd £temporary950 string £temporary948
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$48:
	; Dereference £temporary947 -> £temporary950 £temporary950 0

 scanString$49:
	; Assign £temporary947 -> £temporary950 0
	mov byte [rsi], 0

 scanString$50:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$51:
	; Jump 130
	jmp scanString$130

 scanString$52:
	; Assign £temporary952 precision
	mov eax, [rbp + 32]

 scanString$53:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$54:
	; SignedLessThanEqual 79 £temporary952 0
	cmp eax, 0
	jle scanString$79

 scanString$55:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$56:
	; IntegralToIntegral £temporary954 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$57
	neg al
	neg eax

 scanString$57:
	; Parameter 69 signedint £temporary954
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
	; GetReturnValue £temporary955

 scanString$61:
	; NotEqual 79 £temporary955 0
	cmp ebx, 0
	jne scanString$79

 scanString$62:
	; IntegralToIntegral £temporary958 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$63
	neg al
	neg eax

 scanString$63:
	; Equal 79 £temporary958 -1
	cmp eax, -1
	je scanString$79

 scanString$64:
	; Equal 79 input 10
	cmp byte [rbp + 40], 10
	je scanString$79

 scanString$65:
	; Assign £temporary964 index
	mov eax, [rbp + 36]

 scanString$66:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$67:
	; IntegralToIntegral £temporary966 £temporary964
	mov rbx, 4294967295
	and rax, rbx

 scanString$68:
	; BinaryAdd £temporary968 string £temporary966
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$69:
	; Dereference £temporary965 -> £temporary968 £temporary968 0

 scanString$70:
	; Assign £temporary965 -> £temporary968 input
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
	; GetReturnValue £temporary969

 scanString$75:
	; Assign input £temporary969
	mov [rbp + 40], bl

 scanString$76:
	; Assign found 1
	mov dword [rbp + 41], 1

 scanString$77:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$78:
	; Jump 52
	jmp scanString$52

 scanString$79:
	; SignedLessThanEqual 130 precision 0
	cmp dword [rbp + 32], 0
	jle scanString$130

 scanString$80:
	; IntegralToIntegral £temporary973 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$81:
	; BinaryAdd £temporary975 string £temporary973
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$82:
	; Dereference £temporary972 -> £temporary975 £temporary975 0

 scanString$83:
	; Assign £temporary972 -> £temporary975 0
	mov byte [rsi], 0

 scanString$84:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$85:
	; Jump 130
	jmp scanString$130

 scanString$86:
	; NotEqual 107 precision 0
	cmp dword [rbp + 32], 0
	jne scanString$107

 scanString$87:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$88:
	; IntegralToIntegral £temporary978 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$89
	neg al
	neg eax

 scanString$89:
	; Parameter 69 signedint £temporary978
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
	; GetReturnValue £temporary979

 scanString$93:
	; NotEqual 105 £temporary979 0
	cmp ebx, 0
	jne scanString$105

 scanString$94:
	; IntegralToIntegral £temporary982 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$95
	neg al
	neg eax

 scanString$95:
	; Equal 105 £temporary982 -1
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
	; GetReturnValue £temporary987

 scanString$101:
	; Assign input £temporary987
	mov [rbp + 40], bl

 scanString$102:
	; Assign found 1
	mov dword [rbp + 41], 1

 scanString$103:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$104:
	; Jump 87
	jmp scanString$87

 scanString$105:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$106:
	; Jump 130
	jmp scanString$130

 scanString$107:
	; Assign £temporary990 precision
	mov eax, [rbp + 32]

 scanString$108:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$109:
	; SignedLessThanEqual 128 £temporary990 0
	cmp eax, 0
	jle scanString$128

 scanString$110:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$111:
	; IntegralToIntegral £temporary992 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$112
	neg al
	neg eax

 scanString$112:
	; Parameter 69 signedint £temporary992
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
	; GetReturnValue £temporary993

 scanString$116:
	; NotEqual 128 £temporary993 0
	cmp ebx, 0
	jne scanString$128

 scanString$117:
	; IntegralToIntegral £temporary996 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$118
	neg al
	neg eax

 scanString$118:
	; Equal 128 £temporary996 -1
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
	; GetReturnValue £temporary1002

 scanString$124:
	; Assign input £temporary1002
	mov [rbp + 40], bl

 scanString$125:
	; Assign found 1
	mov dword [rbp + 41], 1

 scanString$126:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$127:
	; Jump 107
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

 @3664$isDigitInBase:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3664$isDigitInBase$1:
	; IntegralToIntegral £temporary1008 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3664$isDigitInBase$2
	neg al
	neg eax

 @3664$isDigitInBase$2:
	; Parameter 53 signedint £temporary1008
	mov [rbp + 53], eax

 @3664$isDigitInBase$3:
	; Call 29 isdigit 0
	mov qword [rbp + 29], @3664$isDigitInBase$4
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isdigit

 @3664$isDigitInBase$4:
	; PostCall 29

 @3664$isDigitInBase$5:
	; GetReturnValue £temporary1009

 @3664$isDigitInBase$6:
	; Equal 17 £temporary1009 0
	cmp ebx, 0
	je @3664$isDigitInBase$17

 @3664$isDigitInBase$7:
	; BinarySubtract £temporary1010 c 48
	mov al, [rbp + 24]
	sub al, 48

 @3664$isDigitInBase$8:
	; IntegralToIntegral £temporary1011 £temporary1010
	and eax, 255
	cmp al, 0
	jge @3664$isDigitInBase$9
	neg al
	neg eax

 @3664$isDigitInBase$9:
	; Assign value £temporary1011
	mov [rbp + 29], eax

 @3664$isDigitInBase$10:
	; SignedLessThan 14 value 0
	cmp dword [rbp + 29], 0
	jl @3664$isDigitInBase$14

 @3664$isDigitInBase$11:
	; SignedGreaterThanEqual 14 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3664$isDigitInBase$14

 @3664$isDigitInBase$12:
	; Assign £temporary1015 1
	mov ebx, 1

 @3664$isDigitInBase$13:
	; Jump 15
	jmp @3664$isDigitInBase$15

 @3664$isDigitInBase$14:
	; Assign £temporary1015 0
	mov ebx, 0

 @3664$isDigitInBase$15:
	; SetReturnValue

 @3664$isDigitInBase$16:
	; Return £temporary1015
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3664$isDigitInBase$17:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3664$isDigitInBase$18:
	; IntegralToIntegral £temporary1016 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3664$isDigitInBase$19
	neg al
	neg eax

 @3664$isDigitInBase$19:
	; Parameter 53 signedint £temporary1016
	mov [rbp + 53], eax

 @3664$isDigitInBase$20:
	; Call 29 islower 0
	mov qword [rbp + 29], @3664$isDigitInBase$21
	mov [rbp + 37], rbp
	add rbp, 29
	jmp islower

 @3664$isDigitInBase$21:
	; PostCall 29

 @3664$isDigitInBase$22:
	; GetReturnValue £temporary1017

 @3664$isDigitInBase$23:
	; Equal 34 £temporary1017 0
	cmp ebx, 0
	je @3664$isDigitInBase$34

 @3664$isDigitInBase$24:
	; BinarySubtract £temporary1018 c 97
	mov al, [rbp + 24]
	sub al, 97

 @3664$isDigitInBase$25:
	; IntegralToIntegral £temporary1019 £temporary1018
	and eax, 255
	cmp al, 0
	jge @3664$isDigitInBase$26
	neg al
	neg eax

 @3664$isDigitInBase$26:
	; BinaryAdd value £temporary1019 10
	add eax, 10
	mov [rbp + 29], eax

 @3664$isDigitInBase$27:
	; SignedLessThan 31 value 0
	cmp dword [rbp + 29], 0
	jl @3664$isDigitInBase$31

 @3664$isDigitInBase$28:
	; SignedGreaterThanEqual 31 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3664$isDigitInBase$31

 @3664$isDigitInBase$29:
	; Assign £temporary1024 1
	mov ebx, 1

 @3664$isDigitInBase$30:
	; Jump 32
	jmp @3664$isDigitInBase$32

 @3664$isDigitInBase$31:
	; Assign £temporary1024 0
	mov ebx, 0

 @3664$isDigitInBase$32:
	; SetReturnValue

 @3664$isDigitInBase$33:
	; Return £temporary1024
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3664$isDigitInBase$34:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3664$isDigitInBase$35:
	; IntegralToIntegral £temporary1025 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3664$isDigitInBase$36
	neg al
	neg eax

 @3664$isDigitInBase$36:
	; Parameter 53 signedint £temporary1025
	mov [rbp + 53], eax

 @3664$isDigitInBase$37:
	; Call 29 isupper 0
	mov qword [rbp + 29], @3664$isDigitInBase$38
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isupper

 @3664$isDigitInBase$38:
	; PostCall 29

 @3664$isDigitInBase$39:
	; GetReturnValue £temporary1026

 @3664$isDigitInBase$40:
	; Equal 51 £temporary1026 0
	cmp ebx, 0
	je @3664$isDigitInBase$51

 @3664$isDigitInBase$41:
	; BinarySubtract £temporary1027 c 65
	mov al, [rbp + 24]
	sub al, 65

 @3664$isDigitInBase$42:
	; IntegralToIntegral £temporary1028 £temporary1027
	and eax, 255
	cmp al, 0
	jge @3664$isDigitInBase$43
	neg al
	neg eax

 @3664$isDigitInBase$43:
	; BinaryAdd value £temporary1028 10
	add eax, 10
	mov [rbp + 29], eax

 @3664$isDigitInBase$44:
	; SignedLessThan 48 value 0
	cmp dword [rbp + 29], 0
	jl @3664$isDigitInBase$48

 @3664$isDigitInBase$45:
	; SignedGreaterThanEqual 48 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3664$isDigitInBase$48

 @3664$isDigitInBase$46:
	; Assign £temporary1033 1
	mov ebx, 1

 @3664$isDigitInBase$47:
	; Jump 49
	jmp @3664$isDigitInBase$49

 @3664$isDigitInBase$48:
	; Assign £temporary1033 0
	mov ebx, 0

 @3664$isDigitInBase$49:
	; SetReturnValue

 @3664$isDigitInBase$50:
	; Return £temporary1033
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3664$isDigitInBase$51:
	; SetReturnValue

 @3664$isDigitInBase$52:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3664$isDigitInBase$53:
	; FunctionEnd isDigitInBase

section .text

 @3699$digitToValue:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3699$digitToValue$1:
	; IntegralToIntegral £temporary1037 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3699$digitToValue$2
	neg al
	neg eax

 @3699$digitToValue$2:
	; Parameter 49 signedint £temporary1037
	mov [rbp + 49], eax

 @3699$digitToValue$3:
	; Call 25 isdigit 0
	mov qword [rbp + 25], @3699$digitToValue$4
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isdigit

 @3699$digitToValue$4:
	; PostCall 25

 @3699$digitToValue$5:
	; GetReturnValue £temporary1038

 @3699$digitToValue$6:
	; Equal 11 £temporary1038 0
	cmp ebx, 0
	je @3699$digitToValue$11

 @3699$digitToValue$7:
	; BinarySubtract £temporary1039 c 48
	mov bl, [rbp + 24]
	sub bl, 48

 @3699$digitToValue$8:
	; IntegralToIntegral £temporary1040 £temporary1039
	and ebx, 255
	cmp bl, 0
	jge @3699$digitToValue$9
	neg bl
	neg ebx

 @3699$digitToValue$9:
	; SetReturnValue

 @3699$digitToValue$10:
	; Return £temporary1040
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3699$digitToValue$11:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3699$digitToValue$12:
	; IntegralToIntegral £temporary1041 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3699$digitToValue$13
	neg al
	neg eax

 @3699$digitToValue$13:
	; Parameter 49 signedint £temporary1041
	mov [rbp + 49], eax

 @3699$digitToValue$14:
	; Call 25 islower 0
	mov qword [rbp + 25], @3699$digitToValue$15
	mov [rbp + 33], rbp
	add rbp, 25
	jmp islower

 @3699$digitToValue$15:
	; PostCall 25

 @3699$digitToValue$16:
	; GetReturnValue £temporary1042

 @3699$digitToValue$17:
	; Equal 23 £temporary1042 0
	cmp ebx, 0
	je @3699$digitToValue$23

 @3699$digitToValue$18:
	; BinarySubtract £temporary1043 c 97
	mov bl, [rbp + 24]
	sub bl, 97

 @3699$digitToValue$19:
	; IntegralToIntegral £temporary1044 £temporary1043
	and ebx, 255
	cmp bl, 0
	jge @3699$digitToValue$20
	neg bl
	neg ebx

 @3699$digitToValue$20:
	; BinaryAdd £temporary1045 £temporary1044 10
	add ebx, 10

 @3699$digitToValue$21:
	; SetReturnValue

 @3699$digitToValue$22:
	; Return £temporary1045
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3699$digitToValue$23:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3699$digitToValue$24:
	; IntegralToIntegral £temporary1046 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3699$digitToValue$25
	neg al
	neg eax

 @3699$digitToValue$25:
	; Parameter 49 signedint £temporary1046
	mov [rbp + 49], eax

 @3699$digitToValue$26:
	; Call 25 isupper 0
	mov qword [rbp + 25], @3699$digitToValue$27
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isupper

 @3699$digitToValue$27:
	; PostCall 25

 @3699$digitToValue$28:
	; GetReturnValue £temporary1047

 @3699$digitToValue$29:
	; Equal 35 £temporary1047 0
	cmp ebx, 0
	je @3699$digitToValue$35

 @3699$digitToValue$30:
	; BinarySubtract £temporary1048 c 65
	mov bl, [rbp + 24]
	sub bl, 65

 @3699$digitToValue$31:
	; IntegralToIntegral £temporary1049 £temporary1048
	and ebx, 255
	cmp bl, 0
	jge @3699$digitToValue$32
	neg bl
	neg ebx

 @3699$digitToValue$32:
	; BinaryAdd £temporary1050 £temporary1049 10
	add ebx, 10

 @3699$digitToValue$33:
	; SetReturnValue

 @3699$digitToValue$34:
	; Return £temporary1050
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3699$digitToValue$35:
	; SetReturnValue

 @3699$digitToValue$36:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3699$digitToValue$37:
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
	; GetReturnValue £temporary1054

 scanLongInt$7:
	; Assign input £temporary1054
	mov [rbp + 44], bl

 scanLongInt$8:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$9:
	; IntegralToIntegral £temporary1055 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$10
	neg al
	neg eax

 scanLongInt$10:
	; Parameter 69 signedint £temporary1055
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
	; GetReturnValue £temporary1056

 scanLongInt$14:
	; Equal 21 £temporary1056 0
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
	; GetReturnValue £temporary1057

 scanLongInt$19:
	; Assign input £temporary1057
	mov [rbp + 44], bl

 scanLongInt$20:
	; Jump 8
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
	; GetReturnValue £temporary1060

 scanLongInt$26:
	; Assign input £temporary1060
	mov [rbp + 44], bl

 scanLongInt$27:
	; Jump 35
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
	; GetReturnValue £temporary1062

 scanLongInt$34:
	; Assign input £temporary1062
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
	; GetReturnValue £temporary1065

 scanLongInt$41:
	; Assign input £temporary1065
	mov [rbp + 44], bl

 scanLongInt$42:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$43:
	; IntegralToIntegral £temporary1066 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$44
	neg al
	neg eax

 scanLongInt$44:
	; Parameter 69 signedint £temporary1066
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
	; GetReturnValue £temporary1067

 scanLongInt$48:
	; NotEqual 56 £temporary1067 120
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
	; GetReturnValue £temporary1069

 scanLongInt$54:
	; Assign input £temporary1069
	mov [rbp + 44], bl

 scanLongInt$55:
	; Jump 59
	jmp scanLongInt$59

 scanLongInt$56:
	; Assign base 8
	mov dword [rbp + 24], 8

 scanLongInt$57:
	; Jump 59
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
	jmp @3664$isDigitInBase

 scanLongInt$63:
	; PostCall 45

 scanLongInt$64:
	; GetReturnValue £temporary1070

 scanLongInt$65:
	; Equal 82 £temporary1070 0
	cmp ebx, 0
	je scanLongInt$82

 scanLongInt$66:
	; IntegralToIntegral £temporary1071 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$67
	neg ebx
	neg rbx

 scanLongInt$67:
	; SignedMultiply longValue longValue £temporary1071
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
	jmp @3699$digitToValue

 scanLongInt$71:
	; PostCall 45

 scanLongInt$72:
	; GetReturnValue £temporary1073

 scanLongInt$73:
	; IntegralToIntegral £temporary1074 £temporary1073
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$74
	neg ebx
	neg rbx

 scanLongInt$74:
	; BinaryAdd longValue longValue £temporary1074
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
	; GetReturnValue £temporary1076

 scanLongInt$79:
	; Assign input £temporary1076
	mov [rbp + 44], bl

 scanLongInt$80:
	; Assign found 1
	mov dword [rbp + 40], 1

 scanLongInt$81:
	; Jump 59
	jmp scanLongInt$59

 scanLongInt$82:
	; Equal 85 minus 0
	cmp dword [rbp + 36], 0
	je scanLongInt$85

 scanLongInt$83:
	; UnarySubtract £temporary1078 longValue
	mov rax, [rbp + 28]
	neg rax

 scanLongInt$84:
	; Assign longValue £temporary1078
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
	; SetReturnValue

 scanLongInt$92:
	; Return longValue
	mov rbx, [rbp + 28]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongInt$93:
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
	; GetReturnValue £temporary1083

 scanUnsignedLongInt$5:
	; Assign input £temporary1083
	mov [rbp + 44], bl

 scanUnsignedLongInt$6:
	; Assign found 1
	mov dword [rbp + 45], 1

 scanUnsignedLongInt$7:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$8:
	; IntegralToIntegral £temporary1084 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$9
	neg al
	neg eax

 scanUnsignedLongInt$9:
	; Parameter 73 signedint £temporary1084
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
	; GetReturnValue £temporary1085

 scanUnsignedLongInt$13:
	; Equal 20 £temporary1085 0
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
	; GetReturnValue £temporary1086

 scanUnsignedLongInt$18:
	; Assign input £temporary1086
	mov [rbp + 44], bl

 scanUnsignedLongInt$19:
	; Jump 7
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
	; GetReturnValue £temporary1089

 scanUnsignedLongInt$25:
	; Assign input £temporary1089
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
	; GetReturnValue £temporary1092

 scanUnsignedLongInt$32:
	; Assign input £temporary1092
	mov [rbp + 44], bl

 scanUnsignedLongInt$33:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$34:
	; IntegralToIntegral £temporary1093 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$35
	neg al
	neg eax

 scanUnsignedLongInt$35:
	; Parameter 73 signedint £temporary1093
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
	; GetReturnValue £temporary1094

 scanUnsignedLongInt$39:
	; NotEqual 47 £temporary1094 120
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
	; GetReturnValue £temporary1096

 scanUnsignedLongInt$45:
	; Assign input £temporary1096
	mov [rbp + 44], bl

 scanUnsignedLongInt$46:
	; Jump 50
	jmp scanUnsignedLongInt$50

 scanUnsignedLongInt$47:
	; Assign base 8
	mov dword [rbp + 24], 8

 scanUnsignedLongInt$48:
	; Jump 50
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
	jmp @3664$isDigitInBase

 scanUnsignedLongInt$54:
	; PostCall 49

 scanUnsignedLongInt$55:
	; GetReturnValue £temporary1097

 scanUnsignedLongInt$56:
	; Equal 73 £temporary1097 0
	cmp ebx, 0
	je scanUnsignedLongInt$73

 scanUnsignedLongInt$57:
	; IntegralToIntegral £temporary1098 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$58:
	; UnsignedMultiply unsignedLongValue unsignedLongValue £temporary1098
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
	jmp @3699$digitToValue

 scanUnsignedLongInt$62:
	; PostCall 49

 scanUnsignedLongInt$63:
	; GetReturnValue £temporary1100

 scanUnsignedLongInt$64:
	; IntegralToIntegral £temporary1101 £temporary1100
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$65:
	; BinaryAdd unsignedLongValue unsignedLongValue £temporary1101
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
	; GetReturnValue £temporary1103

 scanUnsignedLongInt$71:
	; Assign input £temporary1103
	mov [rbp + 44], bl

 scanUnsignedLongInt$72:
	; Jump 50
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
	; SetReturnValue

 scanUnsignedLongInt$80:
	; Return unsignedLongValue
	mov rbx, [rbp + 28]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanUnsignedLongInt$81:
	; FunctionEnd scanUnsignedLongInt

section .data

@3827$float8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .data

@3838$float8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .data

@3851$float8$10.0#:
	; Initializer Double 10.0
	dq 10.0

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
	; GetReturnValue £temporary1108

 scanLongDouble$10:
	; Assign input £temporary1108
	mov [rbp + 48], bl

 scanLongDouble$11:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$12:
	; IntegralToIntegral £temporary1109 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$13
	neg al
	neg eax

 scanLongDouble$13:
	; Parameter 73 signedint £temporary1109
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
	; GetReturnValue £temporary1110

 scanLongDouble$17:
	; Equal 24 £temporary1110 0
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
	; GetReturnValue £temporary1111

 scanLongDouble$22:
	; Assign input £temporary1111
	mov [rbp + 48], bl

 scanLongDouble$23:
	; Jump 11
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
	; GetReturnValue £temporary1114

 scanLongDouble$29:
	; Assign input £temporary1114
	mov [rbp + 48], bl

 scanLongDouble$30:
	; Jump 38
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
	; GetReturnValue £temporary1116

 scanLongDouble$37:
	; Assign input £temporary1116
	mov [rbp + 48], bl

 scanLongDouble$38:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$39:
	; IntegralToIntegral £temporary1117 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$40
	neg al
	neg eax

 scanLongDouble$40:
	; Parameter 73 signedint £temporary1117
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
	; GetReturnValue £temporary1118

 scanLongDouble$44:
	; Equal 60 £temporary1118 0
	cmp ebx, 0
	je scanLongDouble$60

 scanLongDouble$45:
	; PushFloat 10.0
	fld qword [@3827$float8$10.0#]

 scanLongDouble$46:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$47:
	; SignedMultiply £temporary1119 10.0 value
	fmul

 scanLongDouble$48:
	; BinarySubtract £temporary1120 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$49:
	; IntegralToIntegral £temporary1122 £temporary1120
	and eax, 255
	cmp al, 0
	jge scanLongDouble$50
	neg al
	neg eax

 scanLongDouble$50:
	; IntegralToFloating £temporary1121 £temporary1122
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$51:
	; BinaryAdd £temporary1123 £temporary1119 £temporary1121
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
	; GetReturnValue £temporary1124

 scanLongDouble$57:
	; Assign input £temporary1124
	mov [rbp + 48], bl

 scanLongDouble$58:
	; Assign found 1
	mov dword [rbp + 28], 1

 scanLongDouble$59:
	; Jump 38
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
	; GetReturnValue £temporary1127

 scanLongDouble$65:
	; Assign input £temporary1127
	mov [rbp + 48], bl

 scanLongDouble$66:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$67:
	; IntegralToIntegral £temporary1128 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$68
	neg al
	neg eax

 scanLongDouble$68:
	; Parameter 73 signedint £temporary1128
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
	; GetReturnValue £temporary1129

 scanLongDouble$72:
	; Equal 92 £temporary1129 0
	cmp ebx, 0
	je scanLongDouble$92

 scanLongDouble$73:
	; PushFloat factor
	fld qword [rbp + 40]

 scanLongDouble$74:
	; PushFloat 10.0
	fld qword [@3838$float8$10.0#]

 scanLongDouble$75:
	; SignedDivide £temporary1130 factor 10.0
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
	; BinarySubtract £temporary1131 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$80:
	; IntegralToIntegral £temporary1133 £temporary1131
	and eax, 255
	cmp al, 0
	jge scanLongDouble$81
	neg al
	neg eax

 scanLongDouble$81:
	; IntegralToFloating £temporary1132 £temporary1133
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$82:
	; SignedMultiply £temporary1134 factor £temporary1132
	fmul

 scanLongDouble$83:
	; BinaryAdd £temporary1135 value £temporary1134
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
	; GetReturnValue £temporary1136

 scanLongDouble$89:
	; Assign input £temporary1136
	mov [rbp + 48], bl

 scanLongDouble$90:
	; Assign found 1
	mov dword [rbp + 28], 1

 scanLongDouble$91:
	; Jump 66
	jmp scanLongDouble$66

 scanLongDouble$92:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$93:
	; IntegralToIntegral £temporary1138 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$94
	neg al
	neg eax

 scanLongDouble$94:
	; Parameter 73 signedint £temporary1138
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
	; GetReturnValue £temporary1139

 scanLongDouble$98:
	; NotEqual 118 £temporary1139 101
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
	; GetReturnValue £temporary1141

 scanLongDouble$104:
	; IntegralToFloating £temporary1142 £temporary1141
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
	fld qword [@3851$float8$10.0#]

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
	; GetReturnValue £temporary1143

 scanLongDouble$115:
	; SignedMultiply £temporary1144 value £temporary1143
	fmul

 scanLongDouble$116:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$117:
	; Jump 122
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
	; UnarySubtract £temporary1146 value
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
	; SetReturnValue

 scanLongDouble$130:
	; Return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongDouble$131:
	; FunctionEnd scanLongDouble

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
	; IntegralToIntegral £temporary1153 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$9:
	; BinaryAdd £temporary1155 format £temporary1153
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$10:
	; Dereference £temporary1152 -> £temporary1155 £temporary1155 0

 scanFormat$11:
	; Equal 395 £temporary1152 -> £temporary1155 0
	cmp byte [rsi], 0
	je scanFormat$395

 scanFormat$12:
	; IntegralToIntegral £temporary1159 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$13:
	; BinaryAdd £temporary1161 format £temporary1159
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$14:
	; Dereference £temporary1158 -> £temporary1161 £temporary1161 0

 scanFormat$15:
	; Assign c £temporary1158 -> £temporary1161
	mov al, [rsi]
	mov [rbp + 40], al

 scanFormat$16:
	; IntegralToIntegral £temporary1162 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$17
	neg al
	neg eax

 scanFormat$17:
	; BinaryAdd d £temporary1162 1
	inc eax
	mov [rbp + 153], eax

 scanFormat$18:
	; Equal 387 percent 0
	cmp dword [rbp + 49], 0
	je scanFormat$387

 scanFormat$19:
	; BinarySubtract £temporary1164 d 1
	mov eax, [rbp + 153]
	dec eax

 scanFormat$20:
	; Case 38 £temporary1164 104
	cmp eax, 104
	je scanFormat$38

 scanFormat$21:
	; Case 40 £temporary1164 108
	cmp eax, 108
	je scanFormat$40

 scanFormat$22:
	; Case 42 £temporary1164 76
	cmp eax, 76
	je scanFormat$42

 scanFormat$23:
	; Case 44 £temporary1164 42
	cmp eax, 42
	je scanFormat$44

 scanFormat$24:
	; Case 46 £temporary1164 99
	cmp eax, 99
	je scanFormat$46

 scanFormat$25:
	; Case 67 £temporary1164 115
	cmp eax, 115
	je scanFormat$67

 scanFormat$26:
	; Case 89 £temporary1164 100
	cmp eax, 100
	je scanFormat$89

 scanFormat$27:
	; Case 89 £temporary1164 105
	cmp eax, 105
	je scanFormat$89

 scanFormat$28:
	; Case 134 £temporary1164 111
	cmp eax, 111
	je scanFormat$134

 scanFormat$29:
	; Case 179 £temporary1164 120
	cmp eax, 120
	je scanFormat$179

 scanFormat$30:
	; Case 224 £temporary1164 117
	cmp eax, 117
	je scanFormat$224

 scanFormat$31:
	; Case 269 £temporary1164 103
	cmp eax, 103
	je scanFormat$269

 scanFormat$32:
	; Case 269 £temporary1164 102
	cmp eax, 102
	je scanFormat$269

 scanFormat$33:
	; Case 269 £temporary1164 101
	cmp eax, 101
	je scanFormat$269

 scanFormat$34:
	; Case 314 £temporary1164 91
	cmp eax, 91
	je scanFormat$314

 scanFormat$35:
	; Case 375 £temporary1164 110
	cmp eax, 110
	je scanFormat$375

 scanFormat$36:
	; CaseEnd £temporary1164

 scanFormat$37:
	; Jump 393
	jmp scanFormat$393

 scanFormat$38:
	; Assign shortInt 1
	mov dword [rbp + 53], 1

 scanFormat$39:
	; Jump 393
	jmp scanFormat$393

 scanFormat$40:
	; Assign longIntOrDouble 1
	mov dword [rbp + 57], 1

 scanFormat$41:
	; Jump 393
	jmp scanFormat$393

 scanFormat$42:
	; Assign longDouble 1
	mov dword [rbp + 61], 1

 scanFormat$43:
	; Jump 393
	jmp scanFormat$393

 scanFormat$44:
	; Assign star 1
	mov dword [rbp + 65], 1

 scanFormat$45:
	; Jump 393
	jmp scanFormat$393

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
	; GetReturnValue £temporary1165

 scanFormat$50:
	; Assign charValue £temporary1165
	mov [rbp + 157], bl

 scanFormat$51:
	; NotEqual 62 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$62

 scanFormat$52:
	; BinaryAdd £temporary1168 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$53:
	; IntegralToIntegral £temporary1169 £temporary1168

 scanFormat$54:
	; IntegralToIntegral £temporary1170 £temporary1169
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$55:
	; Assign arg_list £temporary1170
	mov [rbp + 32], rax

 scanFormat$56:
	; BinarySubtract £temporary1171 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$57:
	; IntegralToIntegral £temporary1172 £temporary1171

 scanFormat$58:
	; Dereference £temporary1173 -> £temporary1172 £temporary1172 0

 scanFormat$59:
	; Assign charPtr £temporary1173 -> £temporary1172
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$60:
	; Dereference £temporary1174 -> charPtr charPtr 0
	mov rsi, [rbp + 41]

 scanFormat$61:
	; Assign £temporary1174 -> charPtr charValue
	mov al, [rbp + 157]
	mov [rsi], al

 scanFormat$62:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$63:
	; IntegralToIntegral £temporary1175 charValue
	mov al, [rbp + 157]
	and eax, 255
	cmp al, 0
	jge scanFormat$64
	neg al
	neg eax

 scanFormat$64:
	; Equal 393 £temporary1175 -1
	cmp eax, -1
	je scanFormat$393

 scanFormat$65:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanFormat$66:
	; Jump 393
	jmp scanFormat$393

 scanFormat$67:
	; NotEqual 82 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$82

 scanFormat$68:
	; BinaryAdd £temporary1180 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$69:
	; IntegralToIntegral £temporary1181 £temporary1180

 scanFormat$70:
	; IntegralToIntegral £temporary1182 £temporary1181
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$71:
	; Assign arg_list £temporary1182
	mov [rbp + 32], rax

 scanFormat$72:
	; BinarySubtract £temporary1183 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$73:
	; IntegralToIntegral £temporary1184 £temporary1183

 scanFormat$74:
	; Dereference £temporary1185 -> £temporary1184 £temporary1184 0

 scanFormat$75:
	; Assign charPtr £temporary1185 -> £temporary1184
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
	; Jump 87
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
	; Jump 393
	jmp scanFormat$393

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
	; GetReturnValue £temporary1188

 scanFormat$94:
	; Assign longValue £temporary1188
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
	; BinaryAdd £temporary1191 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$98:
	; IntegralToIntegral £temporary1192 £temporary1191

 scanFormat$99:
	; IntegralToIntegral £temporary1193 £temporary1192
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$100:
	; Assign arg_list £temporary1193
	mov [rbp + 32], rax

 scanFormat$101:
	; BinarySubtract £temporary1194 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$102:
	; IntegralToIntegral £temporary1195 £temporary1194

 scanFormat$103:
	; Dereference £temporary1196 -> £temporary1195 £temporary1195 0

 scanFormat$104:
	; Assign shortPtr £temporary1196 -> £temporary1195
	mov rax, [rsi]
	mov [rbp + 85], rax

 scanFormat$105:
	; Dereference £temporary1197 -> shortPtr shortPtr 0
	mov rsi, [rbp + 85]

 scanFormat$106:
	; IntegralToIntegral £temporary1198 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$107
	neg rax
	neg ax

 scanFormat$107:
	; Assign £temporary1197 -> shortPtr £temporary1198
	mov [rsi], ax

 scanFormat$108:
	; Jump 132
	jmp scanFormat$132

 scanFormat$109:
	; NotEqual 122 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$122

 scanFormat$110:
	; BinaryAdd £temporary1201 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$111:
	; IntegralToIntegral £temporary1202 £temporary1201

 scanFormat$112:
	; IntegralToIntegral £temporary1203 £temporary1202
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$113:
	; Assign arg_list £temporary1203
	mov [rbp + 32], rax

 scanFormat$114:
	; BinarySubtract £temporary1204 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$115:
	; IntegralToIntegral £temporary1205 £temporary1204

 scanFormat$116:
	; Dereference £temporary1206 -> £temporary1205 £temporary1205 0

 scanFormat$117:
	; Assign intPtr £temporary1206 -> £temporary1205
	mov rax, [rsi]
	mov [rbp + 97], rax

 scanFormat$118:
	; Dereference £temporary1207 -> intPtr intPtr 0
	mov rsi, [rbp + 97]

 scanFormat$119:
	; IntegralToIntegral £temporary1208 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$120
	neg rax
	neg eax

 scanFormat$120:
	; Assign £temporary1207 -> intPtr £temporary1208
	mov [rsi], eax

 scanFormat$121:
	; Jump 132
	jmp scanFormat$132

 scanFormat$122:
	; BinaryAdd £temporary1209 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$123:
	; IntegralToIntegral £temporary1210 £temporary1209

 scanFormat$124:
	; IntegralToIntegral £temporary1211 £temporary1210
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$125:
	; Assign arg_list £temporary1211
	mov [rbp + 32], rax

 scanFormat$126:
	; BinarySubtract £temporary1212 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$127:
	; IntegralToIntegral £temporary1213 £temporary1212

 scanFormat$128:
	; Dereference £temporary1214 -> £temporary1213 £temporary1213 0

 scanFormat$129:
	; Assign longPtr £temporary1214 -> £temporary1213
	mov rax, [rsi]
	mov [rbp + 77], rax

 scanFormat$130:
	; Dereference £temporary1215 -> longPtr longPtr 0
	mov rsi, [rbp + 77]

 scanFormat$131:
	; Assign £temporary1215 -> longPtr longValue
	mov rax, [rbp + 69]
	mov [rsi], rax

 scanFormat$132:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$133:
	; Jump 393
	jmp scanFormat$393

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
	; GetReturnValue £temporary1217

 scanFormat$139:
	; Assign unsignedLongValue £temporary1217
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
	; BinaryAdd £temporary1220 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$143:
	; IntegralToIntegral £temporary1221 £temporary1220

 scanFormat$144:
	; IntegralToIntegral £temporary1222 £temporary1221
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$145:
	; Assign arg_list £temporary1222
	mov [rbp + 32], rax

 scanFormat$146:
	; BinarySubtract £temporary1223 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$147:
	; IntegralToIntegral £temporary1224 £temporary1223

 scanFormat$148:
	; Dereference £temporary1225 -> £temporary1224 £temporary1224 0

 scanFormat$149:
	; Assign unsignedShortPtr £temporary1225 -> £temporary1224
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$150:
	; Dereference £temporary1226 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$151:
	; IntegralToIntegral £temporary1227 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$152:
	; Assign £temporary1226 -> unsignedShortPtr £temporary1227
	mov [rsi], ax

 scanFormat$153:
	; Jump 177
	jmp scanFormat$177

 scanFormat$154:
	; NotEqual 167 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$167

 scanFormat$155:
	; BinaryAdd £temporary1230 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$156:
	; IntegralToIntegral £temporary1231 £temporary1230

 scanFormat$157:
	; IntegralToIntegral £temporary1232 £temporary1231
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$158:
	; Assign arg_list £temporary1232
	mov [rbp + 32], rax

 scanFormat$159:
	; BinarySubtract £temporary1233 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$160:
	; IntegralToIntegral £temporary1234 £temporary1233

 scanFormat$161:
	; Dereference £temporary1235 -> £temporary1234 £temporary1234 0

 scanFormat$162:
	; Assign unsignedIntPtr £temporary1235 -> £temporary1234
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$163:
	; Dereference £temporary1236 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$164:
	; IntegralToIntegral £temporary1237 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$165:
	; Assign £temporary1236 -> unsignedIntPtr £temporary1237
	mov [rsi], eax

 scanFormat$166:
	; Jump 177
	jmp scanFormat$177

 scanFormat$167:
	; BinaryAdd £temporary1238 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$168:
	; IntegralToIntegral £temporary1239 £temporary1238

 scanFormat$169:
	; IntegralToIntegral £temporary1240 £temporary1239
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$170:
	; Assign arg_list £temporary1240
	mov [rbp + 32], rax

 scanFormat$171:
	; BinarySubtract £temporary1241 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$172:
	; IntegralToIntegral £temporary1242 £temporary1241

 scanFormat$173:
	; Dereference £temporary1243 -> £temporary1242 £temporary1242 0

 scanFormat$174:
	; Assign unsignedLongPtr £temporary1243 -> £temporary1242
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$175:
	; Dereference £temporary1244 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$176:
	; Assign £temporary1244 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$177:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$178:
	; Jump 393
	jmp scanFormat$393

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
	; GetReturnValue £temporary1246

 scanFormat$184:
	; Assign unsignedLongValue £temporary1246
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
	; BinaryAdd £temporary1249 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$188:
	; IntegralToIntegral £temporary1250 £temporary1249

 scanFormat$189:
	; IntegralToIntegral £temporary1251 £temporary1250
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$190:
	; Assign arg_list £temporary1251
	mov [rbp + 32], rax

 scanFormat$191:
	; BinarySubtract £temporary1252 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$192:
	; IntegralToIntegral £temporary1253 £temporary1252

 scanFormat$193:
	; Dereference £temporary1254 -> £temporary1253 £temporary1253 0

 scanFormat$194:
	; Assign unsignedShortPtr £temporary1254 -> £temporary1253
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$195:
	; Dereference £temporary1255 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$196:
	; IntegralToIntegral £temporary1256 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$197:
	; Assign £temporary1255 -> unsignedShortPtr £temporary1256
	mov [rsi], ax

 scanFormat$198:
	; Jump 222
	jmp scanFormat$222

 scanFormat$199:
	; NotEqual 212 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$212

 scanFormat$200:
	; BinaryAdd £temporary1259 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$201:
	; IntegralToIntegral £temporary1260 £temporary1259

 scanFormat$202:
	; IntegralToIntegral £temporary1261 £temporary1260
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$203:
	; Assign arg_list £temporary1261
	mov [rbp + 32], rax

 scanFormat$204:
	; BinarySubtract £temporary1262 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$205:
	; IntegralToIntegral £temporary1263 £temporary1262

 scanFormat$206:
	; Dereference £temporary1264 -> £temporary1263 £temporary1263 0

 scanFormat$207:
	; Assign unsignedIntPtr £temporary1264 -> £temporary1263
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$208:
	; Dereference £temporary1265 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$209:
	; IntegralToIntegral £temporary1266 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$210:
	; Assign £temporary1265 -> unsignedIntPtr £temporary1266
	mov [rsi], eax

 scanFormat$211:
	; Jump 222
	jmp scanFormat$222

 scanFormat$212:
	; BinaryAdd £temporary1267 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$213:
	; IntegralToIntegral £temporary1268 £temporary1267

 scanFormat$214:
	; IntegralToIntegral £temporary1269 £temporary1268
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$215:
	; Assign arg_list £temporary1269
	mov [rbp + 32], rax

 scanFormat$216:
	; BinarySubtract £temporary1270 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$217:
	; IntegralToIntegral £temporary1271 £temporary1270

 scanFormat$218:
	; Dereference £temporary1272 -> £temporary1271 £temporary1271 0

 scanFormat$219:
	; Assign unsignedLongPtr £temporary1272 -> £temporary1271
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$220:
	; Dereference £temporary1273 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$221:
	; Assign £temporary1273 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$222:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$223:
	; Jump 393
	jmp scanFormat$393

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
	; GetReturnValue £temporary1275

 scanFormat$229:
	; Assign unsignedLongValue £temporary1275
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
	; BinaryAdd £temporary1278 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$233:
	; IntegralToIntegral £temporary1279 £temporary1278

 scanFormat$234:
	; IntegralToIntegral £temporary1280 £temporary1279
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$235:
	; Assign arg_list £temporary1280
	mov [rbp + 32], rax

 scanFormat$236:
	; BinarySubtract £temporary1281 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$237:
	; IntegralToIntegral £temporary1282 £temporary1281

 scanFormat$238:
	; Dereference £temporary1283 -> £temporary1282 £temporary1282 0

 scanFormat$239:
	; Assign unsignedShortPtr £temporary1283 -> £temporary1282
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$240:
	; Dereference £temporary1284 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$241:
	; IntegralToIntegral £temporary1285 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$242:
	; Assign £temporary1284 -> unsignedShortPtr £temporary1285
	mov [rsi], ax

 scanFormat$243:
	; Jump 267
	jmp scanFormat$267

 scanFormat$244:
	; NotEqual 257 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$257

 scanFormat$245:
	; BinaryAdd £temporary1288 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$246:
	; IntegralToIntegral £temporary1289 £temporary1288

 scanFormat$247:
	; IntegralToIntegral £temporary1290 £temporary1289
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$248:
	; Assign arg_list £temporary1290
	mov [rbp + 32], rax

 scanFormat$249:
	; BinarySubtract £temporary1291 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$250:
	; IntegralToIntegral £temporary1292 £temporary1291

 scanFormat$251:
	; Dereference £temporary1293 -> £temporary1292 £temporary1292 0

 scanFormat$252:
	; Assign unsignedIntPtr £temporary1293 -> £temporary1292
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$253:
	; Dereference £temporary1294 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$254:
	; IntegralToIntegral £temporary1295 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$255:
	; Assign £temporary1294 -> unsignedIntPtr £temporary1295
	mov [rsi], eax

 scanFormat$256:
	; Jump 267
	jmp scanFormat$267

 scanFormat$257:
	; BinaryAdd £temporary1296 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$258:
	; IntegralToIntegral £temporary1297 £temporary1296

 scanFormat$259:
	; IntegralToIntegral £temporary1298 £temporary1297
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$260:
	; Assign arg_list £temporary1298
	mov [rbp + 32], rax

 scanFormat$261:
	; BinarySubtract £temporary1299 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$262:
	; IntegralToIntegral £temporary1300 £temporary1299

 scanFormat$263:
	; Dereference £temporary1301 -> £temporary1300 £temporary1300 0

 scanFormat$264:
	; Assign unsignedLongPtr £temporary1301 -> £temporary1300
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$265:
	; Dereference £temporary1302 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$266:
	; Assign £temporary1302 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$267:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$268:
	; Jump 393
	jmp scanFormat$393

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
	; GetReturnValue £temporary1304

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
	; BinaryAdd £temporary1307 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$277:
	; IntegralToIntegral £temporary1308 £temporary1307

 scanFormat$278:
	; IntegralToIntegral £temporary1309 £temporary1308
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$279:
	; Assign arg_list £temporary1309
	mov [rbp + 32], rax

 scanFormat$280:
	; BinarySubtract £temporary1310 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$281:
	; IntegralToIntegral £temporary1311 £temporary1310

 scanFormat$282:
	; Dereference £temporary1312 -> £temporary1311 £temporary1311 0

 scanFormat$283:
	; Assign doublePtr £temporary1312 -> £temporary1311
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$284:
	; Dereference £temporary1313 -> doublePtr doublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$285:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$286:
	; PopFloat £temporary1313 -> doublePtr
	fstp qword [rsi]

 scanFormat$287:
	; Jump 312
	jmp scanFormat$312

 scanFormat$288:
	; Equal 301 longDouble 0
	cmp dword [rbp + 61], 0
	je scanFormat$301

 scanFormat$289:
	; BinaryAdd £temporary1315 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$290:
	; IntegralToIntegral £temporary1316 £temporary1315

 scanFormat$291:
	; IntegralToIntegral £temporary1317 £temporary1316
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$292:
	; Assign arg_list £temporary1317
	mov [rbp + 32], rax

 scanFormat$293:
	; BinarySubtract £temporary1318 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$294:
	; IntegralToIntegral £temporary1319 £temporary1318

 scanFormat$295:
	; Dereference £temporary1320 -> £temporary1319 £temporary1319 0

 scanFormat$296:
	; Assign longDoublePtr £temporary1320 -> £temporary1319
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$297:
	; Dereference £temporary1321 -> longDoublePtr longDoublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$298:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$299:
	; PopFloat £temporary1321 -> longDoublePtr
	fstp qword [rsi]

 scanFormat$300:
	; Jump 312
	jmp scanFormat$312

 scanFormat$301:
	; BinaryAdd £temporary1322 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$302:
	; IntegralToIntegral £temporary1323 £temporary1322

 scanFormat$303:
	; IntegralToIntegral £temporary1324 £temporary1323
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$304:
	; Assign arg_list £temporary1324
	mov [rbp + 32], rax

 scanFormat$305:
	; BinarySubtract £temporary1325 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$306:
	; IntegralToIntegral £temporary1326 £temporary1325

 scanFormat$307:
	; Dereference £temporary1327 -> £temporary1326 £temporary1326 0

 scanFormat$308:
	; Assign floatPtr £temporary1327 -> £temporary1326
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$309:
	; Dereference £temporary1328 -> floatPtr floatPtr 0
	mov rsi, [rbp + 157]

 scanFormat$310:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$311:
	; PopFloat £temporary1328 -> floatPtr
	fstp dword [rsi]

 scanFormat$312:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$313:
	; Jump 393
	jmp scanFormat$393

 scanFormat$314:
	; Assign not 0
	mov dword [rbp + 157], 0

 scanFormat$315:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$316:
	; IntegralToIntegral £temporary1334 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$317:
	; BinaryAdd £temporary1336 format £temporary1334
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$318:
	; Dereference £temporary1333 -> £temporary1336 £temporary1336 0

 scanFormat$319:
	; NotEqual 322 £temporary1333 -> £temporary1336 94
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
	; IntegralToIntegral £temporary1340 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$324:
	; BinaryAdd £temporary1342 format £temporary1340
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$325:
	; Dereference £temporary1339 -> £temporary1342 £temporary1342 0

 scanFormat$326:
	; Equal 329 £temporary1339 -> £temporary1342 93
	cmp byte [rsi], 93
	je scanFormat$329

 scanFormat$327:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$328:
	; Jump 323
	jmp scanFormat$323

 scanFormat$329:
	; BinarySubtract size index startIndex
	mov eax, [rbp + 93]
	sub eax, [rbp + 161]
	mov [rbp + 165], eax

 scanFormat$330:
	; IntegralToIntegral £temporary1347 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$331:
	; BinaryAdd £temporary1349 format £temporary1347
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$332:
	; Dereference £temporary1346 -> £temporary1349 £temporary1349 0

 scanFormat$333:
	; Assign c £temporary1346 -> £temporary1349
	mov al, [rsi]
	mov [rbp + 169], al

 scanFormat$334:
	; IntegralToIntegral £temporary1351 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$335:
	; BinaryAdd £temporary1353 format £temporary1351
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$336:
	; Dereference £temporary1350 -> £temporary1353 £temporary1353 0

 scanFormat$337:
	; Assign £temporary1350 -> £temporary1353 0
	mov byte [rsi], 0

 scanFormat$338:
	; NotEqual 359 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$359

 scanFormat$339:
	; BinaryAdd £temporary1356 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$340:
	; IntegralToIntegral £temporary1357 £temporary1356

 scanFormat$341:
	; IntegralToIntegral £temporary1358 £temporary1357
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$342:
	; Assign arg_list £temporary1358
	mov [rbp + 32], rax

 scanFormat$343:
	; BinarySubtract £temporary1359 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$344:
	; IntegralToIntegral £temporary1360 £temporary1359

 scanFormat$345:
	; Dereference £temporary1361 -> £temporary1360 £temporary1360 0

 scanFormat$346:
	; Assign string £temporary1361 -> £temporary1360
	mov rax, [rsi]
	mov [rbp + 170], rax

 scanFormat$347:
	; PreCall 178 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$348:
	; Parameter 202 pointer string
	mov rax, [rbp + 170]
	mov [rbp + 202], rax

 scanFormat$349:
	; IntegralToIntegral £temporary1363 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$350:
	; BinaryAdd £temporary1365 format £temporary1363
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$351:
	; Dereference £temporary1362 -> £temporary1365 £temporary1365 0

 scanFormat$352:
	; Address £temporary1366 £temporary1362 -> £temporary1365

 scanFormat$353:
	; Parameter 210 pointer £temporary1366
	mov [rbp + 210], rsi

 scanFormat$354:
	; Parameter 218 signedint size
	mov eax, [rbp + 165]
	mov [rbp + 218], eax

 scanFormat$355:
	; Parameter 222 signedint not
	mov eax, [rbp + 157]
	mov [rbp + 222], eax

 scanFormat$356:
	; Call 178 scanPattern 0
	mov qword [rbp + 178], scanFormat$357
	mov [rbp + 186], rbp
	add rbp, 178
	jmp scanPattern

 scanFormat$357:
	; PostCall 178

 scanFormat$358:
	; Jump 370
	jmp scanFormat$370

 scanFormat$359:
	; PreCall 170 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$360:
	; Parameter 194 pointer 0
	mov qword [rbp + 194], 0

 scanFormat$361:
	; IntegralToIntegral £temporary1369 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$362:
	; BinaryAdd £temporary1371 format £temporary1369
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$363:
	; Dereference £temporary1368 -> £temporary1371 £temporary1371 0

 scanFormat$364:
	; Address £temporary1372 £temporary1368 -> £temporary1371

 scanFormat$365:
	; Parameter 202 pointer £temporary1372
	mov [rbp + 202], rsi

 scanFormat$366:
	; Parameter 210 signedint size
	mov eax, [rbp + 165]
	mov [rbp + 210], eax

 scanFormat$367:
	; Parameter 214 signedint not
	mov eax, [rbp + 157]
	mov [rbp + 214], eax

 scanFormat$368:
	; Call 170 scanPattern 0
	mov qword [rbp + 170], scanFormat$369
	mov [rbp + 178], rbp
	add rbp, 170
	jmp scanPattern

 scanFormat$369:
	; PostCall 170

 scanFormat$370:
	; IntegralToIntegral £temporary1375 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$371:
	; BinaryAdd £temporary1377 format £temporary1375
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$372:
	; Dereference £temporary1374 -> £temporary1377 £temporary1377 0

 scanFormat$373:
	; Assign £temporary1374 -> £temporary1377 c
	mov al, [rbp + 169]
	mov [rsi], al

 scanFormat$374:
	; Jump 393
	jmp scanFormat$393

 scanFormat$375:
	; BinaryAdd £temporary1378 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 scanFormat$376:
	; IntegralToIntegral £temporary1379 £temporary1378

 scanFormat$377:
	; IntegralToIntegral £temporary1380 £temporary1379
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$378:
	; Assign arg_list £temporary1380
	mov [rbp + 32], rax

 scanFormat$379:
	; BinarySubtract £temporary1381 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$380:
	; IntegralToIntegral £temporary1382 £temporary1381

 scanFormat$381:
	; Dereference £temporary1383 -> £temporary1382 £temporary1382 0

 scanFormat$382:
	; Assign charsPtr £temporary1383 -> £temporary1382
	mov rax, [rsi]
	mov [rbp + 105], rax

 scanFormat$383:
	; Dereference £temporary1384 -> charsPtr charsPtr 0
	mov rsi, [rbp + 105]

 scanFormat$384:
	; Assign £temporary1384 -> charsPtr g_inChars
	mov eax, [g_inChars]
	mov [rsi], eax

 scanFormat$385:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$386:
	; Jump 393
	jmp scanFormat$393

 scanFormat$387:
	; NotEqual 393 c 37
	cmp byte [rbp + 40], 37
	jne scanFormat$393

 scanFormat$388:
	; Assign percent 1
	mov dword [rbp + 49], 1

 scanFormat$389:
	; Assign shortInt 0
	mov dword [rbp + 53], 0

 scanFormat$390:
	; Assign longIntOrDouble 0
	mov dword [rbp + 57], 0

 scanFormat$391:
	; Assign longDouble 0
	mov dword [rbp + 61], 0

 scanFormat$392:
	; Assign star 0
	mov dword [rbp + 65], 0

 scanFormat$393:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$394:
	; Jump 8
	jmp scanFormat$8

 scanFormat$395:
	; SetReturnValue

 scanFormat$396:
	; Return g_inCount
	mov ebx, [g_inCount]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanFormat$397:
	; FunctionEnd scanFormat

section .text

 scanf:
	; Address £temporary1387 format
	mov rsi, rbp
	add rsi, 24

 scanf$1:
	; IntegralToIntegral £temporary1388 £temporary1387

 scanf$2:
	; BinaryAdd arg_list £temporary1388 8
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
	; GetReturnValue £temporary1390

 scanf$9:
	; SetReturnValue

 scanf$10:
	; Return £temporary1390
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
	; GetReturnValue £temporary1392

 vscanf$7:
	; SetReturnValue

 vscanf$8:
	; Return £temporary1392
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vscanf$9:
	; FunctionEnd vscanf

section .text

 fscanf:
	; Address £temporary1393 format
	mov rsi, rbp
	add rsi, 32

 fscanf$1:
	; IntegralToIntegral £temporary1394 £temporary1393

 fscanf$2:
	; BinaryAdd arg_list £temporary1394 8
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
	; GetReturnValue £temporary1396

 fscanf$10:
	; SetReturnValue

 fscanf$11:
	; Return £temporary1396
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
	; IntegralToIntegral £temporary1398 inStream
	mov rax, [rbp + 24]

 vfscanf$2:
	; Assign g_inDevice £temporary1398
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
	; GetReturnValue £temporary1399

 vfscanf$9:
	; SetReturnValue

 vfscanf$10:
	; Return £temporary1399
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfscanf$11:
	; FunctionEnd vfscanf

section .text

 sscanf:
	; Address £temporary1400 format
	mov rsi, rbp
	add rsi, 32

 sscanf$1:
	; IntegralToIntegral £temporary1401 £temporary1400

 sscanf$2:
	; BinaryAdd arg_list £temporary1401 8
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
	; GetReturnValue £temporary1403

 sscanf$10:
	; SetReturnValue

 sscanf$11:
	; Return £temporary1403
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
	; IntegralToIntegral £temporary1405 inString
	mov rax, [rbp + 24]

 vsscanf$2:
	; Assign g_inDevice £temporary1405
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
	; GetReturnValue £temporary1406

 vsscanf$9:
	; SetReturnValue

 vsscanf$10:
	; Return £temporary1406
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsscanf$11:
	; FunctionEnd vsscanf
