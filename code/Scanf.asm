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
	; IntegralToIntegral £temporary842 g_inDevice
	mov rax, [g_inDevice]

 scanChar$6:
	; Assign stream £temporary842
	mov [rbp + 25], rax

 scanChar$7:
	; Dereference £temporary843 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$8:
	; Assign handle £temporary843 -> stream
	mov eax, [rsi + 4]
	mov [rbp + 33], eax

 scanChar$9:
	; AssignRegister rax 0
	mov rax, 0

 scanChar$10:
	; Dereference £temporary846 -> stream stream 0
	mov rsi, [rbp + 25]

 scanChar$11:
	; IntegralToIntegral £temporary847 £temporary846 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 scanChar$12:
	; AssignRegister rdi £temporary847

 scanChar$13:
	; Address £temporary849 c
	mov rsi, rbp
	add rsi, 24

 scanChar$14:
	; IntegralToIntegral £temporary850 £temporary849

 scanChar$15:
	; AssignRegister rsi £temporary850

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
	; IntegralToIntegral £temporary853 g_inDevice
	mov rax, [g_inDevice]

 scanChar$22:
	; Assign inString £temporary853
	mov [rbp + 37], rax

 scanChar$23:
	; Assign £temporary854 g_inChars
	mov eax, [g_inChars]

 scanChar$24:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanChar$25:
	; IntegralToIntegral £temporary856 £temporary854
	mov rbx, 4294967295
	and rax, rbx

 scanChar$26:
	; BinaryAdd £temporary857 inString £temporary856
	mov rsi, [rbp + 37]
	add rsi, rax

 scanChar$27:
	; Dereference £temporary855 -> £temporary857 £temporary857 0

 scanChar$28:
	; SetReturnValue

 scanChar$29:
	; Return £temporary855 -> £temporary857
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

 @3531$strnchr:
	; IntegralToIntegral £temporary861 i
	mov eax, [rbp + 36]
	cmp eax, 0
	jge @3531$strnchr$1
	neg eax
	neg al

 @3531$strnchr$1:
	; Assign c £temporary861
	mov [rbp + 44], al

 @3531$strnchr$2:
	; Assign index 0
	mov dword [rbp + 40], 0

 @3531$strnchr$3:
	; GreaterThanEqual 16 index size
	mov eax, [rbp + 32]
	cmp [rbp + 40], eax
	jge @3531$strnchr$16

 @3531$strnchr$4:
	; IntegralToIntegral £temporary865 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 @3531$strnchr$5:
	; BinaryAdd £temporary866 text £temporary865
	mov rsi, [rbp + 24]
	add rsi, rax

 @3531$strnchr$6:
	; Dereference £temporary864 -> £temporary866 £temporary866 0

 @3531$strnchr$7:
	; NotEqual 14 £temporary864 -> £temporary866 c
	mov al, [rbp + 44]
	cmp [rsi], al
	jne @3531$strnchr$14

 @3531$strnchr$8:
	; IntegralToIntegral £temporary869 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 @3531$strnchr$9:
	; BinaryAdd £temporary870 text £temporary869
	mov rbx, [rbp + 24]
	add rbx, rax

 @3531$strnchr$10:
	; Dereference £temporary868 -> £temporary870 £temporary870 0

 @3531$strnchr$11:
	; Address £temporary871 £temporary868 -> £temporary870

 @3531$strnchr$12:
	; SetReturnValue

 @3531$strnchr$13:
	; Return £temporary871
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3531$strnchr$14:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 @3531$strnchr$15:
	; Jump 3
	jmp @3531$strnchr$3

 @3531$strnchr$16:
	; SetReturnValue

 @3531$strnchr$17:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3531$strnchr$18:
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
	; GetReturnValue £temporary872

 scanPattern$5:
	; Assign input £temporary872
	mov [rbp + 52], bl

 scanPattern$6:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$7:
	; IntegralToIntegral £temporary873 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$8
	neg al
	neg eax

 scanPattern$8:
	; Parameter 77 signedint £temporary873
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
	; GetReturnValue £temporary874

 scanPattern$12:
	; Equal 19 £temporary874 0
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
	; GetReturnValue £temporary875

 scanPattern$17:
	; Assign input £temporary875
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
	; IntegralToIntegral £temporary880 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$25
	neg al
	neg eax

 scanPattern$25:
	; Parameter 89 signedint £temporary880
	mov [rbp + 89], eax

 scanPattern$26:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$27
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3531$strnchr

 scanPattern$27:
	; PostCall 53

 scanPattern$28:
	; GetReturnValue £temporary881

 scanPattern$29:
	; NotEqual 40 £temporary881 0
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
	; IntegralToIntegral £temporary884 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$35
	neg al
	neg eax

 scanPattern$35:
	; Parameter 89 signedint £temporary884
	mov [rbp + 89], eax

 scanPattern$36:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$37
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3531$strnchr

 scanPattern$37:
	; PostCall 53

 scanPattern$38:
	; GetReturnValue £temporary885

 scanPattern$39:
	; NotEqual 52 £temporary885 0
	cmp rbx, 0
	jne scanPattern$52

 scanPattern$40:
	; Assign £temporary891 index
	mov eax, [rbp + 48]

 scanPattern$41:
	; BinaryAdd index index 1
	inc dword [rbp + 48]

 scanPattern$42:
	; IntegralToIntegral £temporary893 £temporary891
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$43:
	; BinaryAdd £temporary894 string £temporary893
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$44:
	; Dereference £temporary892 -> £temporary894 £temporary894 0

 scanPattern$45:
	; Assign £temporary892 -> £temporary894 input
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
	; GetReturnValue £temporary895

 scanPattern$50:
	; Assign input £temporary895
	mov [rbp + 52], bl

 scanPattern$51:
	; Jump 20
	jmp scanPattern$20

 scanPattern$52:
	; IntegralToIntegral £temporary897 index
	mov eax, [rbp + 48]
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$53:
	; BinaryAdd £temporary898 string £temporary897
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$54:
	; Dereference £temporary896 -> £temporary898 £temporary898 0

 scanPattern$55:
	; Assign £temporary896 -> £temporary898 0
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
	; IntegralToIntegral £temporary901 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$62
	neg al
	neg eax

 scanPattern$62:
	; Parameter 89 signedint £temporary901
	mov [rbp + 89], eax

 scanPattern$63:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$64
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3531$strnchr

 scanPattern$64:
	; PostCall 53

 scanPattern$65:
	; GetReturnValue £temporary902

 scanPattern$66:
	; NotEqual 77 £temporary902 0
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
	; IntegralToIntegral £temporary905 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$72
	neg al
	neg eax

 scanPattern$72:
	; Parameter 89 signedint £temporary905
	mov [rbp + 89], eax

 scanPattern$73:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$74
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3531$strnchr

 scanPattern$74:
	; PostCall 53

 scanPattern$75:
	; GetReturnValue £temporary906

 scanPattern$76:
	; NotEqual 83 £temporary906 0
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
	; GetReturnValue £temporary912

 scanPattern$81:
	; Assign input £temporary912
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
	; GetReturnValue £temporary913

 scanString$5:
	; Assign input £temporary913
	mov [rbp + 40], bl

 scanString$6:
	; Assign found 0
	mov dword [rbp + 41], 0

 scanString$7:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$8:
	; IntegralToIntegral £temporary914 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$9
	neg al
	neg eax

 scanString$9:
	; Parameter 69 signedint £temporary914
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
	; GetReturnValue £temporary915

 scanString$13:
	; Equal 20 £temporary915 0
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
	; GetReturnValue £temporary916

 scanString$18:
	; Assign input £temporary916
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
	; IntegralToIntegral £temporary920 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$24
	neg al
	neg eax

 scanString$24:
	; Parameter 69 signedint £temporary920
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
	; GetReturnValue £temporary921

 scanString$28:
	; NotEqual 46 £temporary921 0
	cmp ebx, 0
	jne scanString$46

 scanString$29:
	; IntegralToIntegral £temporary924 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$30
	neg al
	neg eax

 scanString$30:
	; Equal 46 £temporary924 -1
	cmp eax, -1
	je scanString$46

 scanString$31:
	; Equal 46 input 10
	cmp byte [rbp + 40], 10
	je scanString$46

 scanString$32:
	; Assign £temporary929 index
	mov eax, [rbp + 36]

 scanString$33:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$34:
	; IntegralToIntegral £temporary931 £temporary929
	mov rbx, 4294967295
	and rax, rbx

 scanString$35:
	; BinaryAdd £temporary932 string £temporary931
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$36:
	; Dereference £temporary930 -> £temporary932 £temporary932 0

 scanString$37:
	; Assign £temporary930 -> £temporary932 input
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
	; GetReturnValue £temporary933

 scanString$42:
	; Assign input £temporary933
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
	; IntegralToIntegral £temporary936 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$47:
	; BinaryAdd £temporary937 string £temporary936
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$48:
	; Dereference £temporary935 -> £temporary937 £temporary937 0

 scanString$49:
	; Assign £temporary935 -> £temporary937 0
	mov byte [rsi], 0

 scanString$50:
	; BinaryAdd g_inChars g_inChars 1
	inc dword [g_inChars]

 scanString$51:
	; Jump 130
	jmp scanString$130

 scanString$52:
	; Assign £temporary939 precision
	mov eax, [rbp + 32]

 scanString$53:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$54:
	; LessThanEqual 79 £temporary939 0
	cmp eax, 0
	jle scanString$79

 scanString$55:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$56:
	; IntegralToIntegral £temporary941 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$57
	neg al
	neg eax

 scanString$57:
	; Parameter 69 signedint £temporary941
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
	; GetReturnValue £temporary942

 scanString$61:
	; NotEqual 79 £temporary942 0
	cmp ebx, 0
	jne scanString$79

 scanString$62:
	; IntegralToIntegral £temporary945 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$63
	neg al
	neg eax

 scanString$63:
	; Equal 79 £temporary945 -1
	cmp eax, -1
	je scanString$79

 scanString$64:
	; Equal 79 input 10
	cmp byte [rbp + 40], 10
	je scanString$79

 scanString$65:
	; Assign £temporary951 index
	mov eax, [rbp + 36]

 scanString$66:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 scanString$67:
	; IntegralToIntegral £temporary953 £temporary951
	mov rbx, 4294967295
	and rax, rbx

 scanString$68:
	; BinaryAdd £temporary954 string £temporary953
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$69:
	; Dereference £temporary952 -> £temporary954 £temporary954 0

 scanString$70:
	; Assign £temporary952 -> £temporary954 input
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
	; GetReturnValue £temporary955

 scanString$75:
	; Assign input £temporary955
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
	; LessThanEqual 130 precision 0
	cmp dword [rbp + 32], 0
	jle scanString$130

 scanString$80:
	; IntegralToIntegral £temporary959 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$81:
	; BinaryAdd £temporary960 string £temporary959
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$82:
	; Dereference £temporary958 -> £temporary960 £temporary960 0

 scanString$83:
	; Assign £temporary958 -> £temporary960 0
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
	; IntegralToIntegral £temporary963 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$89
	neg al
	neg eax

 scanString$89:
	; Parameter 69 signedint £temporary963
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
	; GetReturnValue £temporary964

 scanString$93:
	; NotEqual 105 £temporary964 0
	cmp ebx, 0
	jne scanString$105

 scanString$94:
	; IntegralToIntegral £temporary967 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$95
	neg al
	neg eax

 scanString$95:
	; Equal 105 £temporary967 -1
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
	; GetReturnValue £temporary972

 scanString$101:
	; Assign input £temporary972
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
	; Assign £temporary975 precision
	mov eax, [rbp + 32]

 scanString$108:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 scanString$109:
	; LessThanEqual 128 £temporary975 0
	cmp eax, 0
	jle scanString$128

 scanString$110:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$111:
	; IntegralToIntegral £temporary977 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$112
	neg al
	neg eax

 scanString$112:
	; Parameter 69 signedint £temporary977
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
	; GetReturnValue £temporary978

 scanString$116:
	; NotEqual 128 £temporary978 0
	cmp ebx, 0
	jne scanString$128

 scanString$117:
	; IntegralToIntegral £temporary981 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$118
	neg al
	neg eax

 scanString$118:
	; Equal 128 £temporary981 -1
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
	; GetReturnValue £temporary987

 scanString$124:
	; Assign input £temporary987
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
	; LessThanEqual 130 precision 0
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

 @3654$isDigitInBase:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3654$isDigitInBase$1:
	; IntegralToIntegral £temporary993 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3654$isDigitInBase$2
	neg al
	neg eax

 @3654$isDigitInBase$2:
	; Parameter 53 signedint £temporary993
	mov [rbp + 53], eax

 @3654$isDigitInBase$3:
	; Call 29 isdigit 0
	mov qword [rbp + 29], @3654$isDigitInBase$4
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isdigit

 @3654$isDigitInBase$4:
	; PostCall 29

 @3654$isDigitInBase$5:
	; GetReturnValue £temporary994

 @3654$isDigitInBase$6:
	; Equal 17 £temporary994 0
	cmp ebx, 0
	je @3654$isDigitInBase$17

 @3654$isDigitInBase$7:
	; BinarySubtract £temporary995 c 48
	mov al, [rbp + 24]
	sub al, 48

 @3654$isDigitInBase$8:
	; IntegralToIntegral £temporary996 £temporary995
	and eax, 255
	cmp al, 0
	jge @3654$isDigitInBase$9
	neg al
	neg eax

 @3654$isDigitInBase$9:
	; Assign value £temporary996
	mov [rbp + 29], eax

 @3654$isDigitInBase$10:
	; LessThan 14 value 0
	cmp dword [rbp + 29], 0
	jl @3654$isDigitInBase$14

 @3654$isDigitInBase$11:
	; GreaterThanEqual 14 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3654$isDigitInBase$14

 @3654$isDigitInBase$12:
	; Assign £temporary1000 1
	mov ebx, 1

 @3654$isDigitInBase$13:
	; Jump 15
	jmp @3654$isDigitInBase$15

 @3654$isDigitInBase$14:
	; Assign £temporary1000 0
	mov ebx, 0

 @3654$isDigitInBase$15:
	; SetReturnValue

 @3654$isDigitInBase$16:
	; Return £temporary1000
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3654$isDigitInBase$17:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3654$isDigitInBase$18:
	; IntegralToIntegral £temporary1001 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3654$isDigitInBase$19
	neg al
	neg eax

 @3654$isDigitInBase$19:
	; Parameter 53 signedint £temporary1001
	mov [rbp + 53], eax

 @3654$isDigitInBase$20:
	; Call 29 islower 0
	mov qword [rbp + 29], @3654$isDigitInBase$21
	mov [rbp + 37], rbp
	add rbp, 29
	jmp islower

 @3654$isDigitInBase$21:
	; PostCall 29

 @3654$isDigitInBase$22:
	; GetReturnValue £temporary1002

 @3654$isDigitInBase$23:
	; Equal 34 £temporary1002 0
	cmp ebx, 0
	je @3654$isDigitInBase$34

 @3654$isDigitInBase$24:
	; BinarySubtract £temporary1003 c 97
	mov al, [rbp + 24]
	sub al, 97

 @3654$isDigitInBase$25:
	; IntegralToIntegral £temporary1004 £temporary1003
	and eax, 255
	cmp al, 0
	jge @3654$isDigitInBase$26
	neg al
	neg eax

 @3654$isDigitInBase$26:
	; BinaryAdd value £temporary1004 10
	add eax, 10
	mov [rbp + 29], eax

 @3654$isDigitInBase$27:
	; LessThan 31 value 0
	cmp dword [rbp + 29], 0
	jl @3654$isDigitInBase$31

 @3654$isDigitInBase$28:
	; GreaterThanEqual 31 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3654$isDigitInBase$31

 @3654$isDigitInBase$29:
	; Assign £temporary1009 1
	mov ebx, 1

 @3654$isDigitInBase$30:
	; Jump 32
	jmp @3654$isDigitInBase$32

 @3654$isDigitInBase$31:
	; Assign £temporary1009 0
	mov ebx, 0

 @3654$isDigitInBase$32:
	; SetReturnValue

 @3654$isDigitInBase$33:
	; Return £temporary1009
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3654$isDigitInBase$34:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3654$isDigitInBase$35:
	; IntegralToIntegral £temporary1010 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3654$isDigitInBase$36
	neg al
	neg eax

 @3654$isDigitInBase$36:
	; Parameter 53 signedint £temporary1010
	mov [rbp + 53], eax

 @3654$isDigitInBase$37:
	; Call 29 isupper 0
	mov qword [rbp + 29], @3654$isDigitInBase$38
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isupper

 @3654$isDigitInBase$38:
	; PostCall 29

 @3654$isDigitInBase$39:
	; GetReturnValue £temporary1011

 @3654$isDigitInBase$40:
	; Equal 51 £temporary1011 0
	cmp ebx, 0
	je @3654$isDigitInBase$51

 @3654$isDigitInBase$41:
	; BinarySubtract £temporary1012 c 65
	mov al, [rbp + 24]
	sub al, 65

 @3654$isDigitInBase$42:
	; IntegralToIntegral £temporary1013 £temporary1012
	and eax, 255
	cmp al, 0
	jge @3654$isDigitInBase$43
	neg al
	neg eax

 @3654$isDigitInBase$43:
	; BinaryAdd value £temporary1013 10
	add eax, 10
	mov [rbp + 29], eax

 @3654$isDigitInBase$44:
	; LessThan 48 value 0
	cmp dword [rbp + 29], 0
	jl @3654$isDigitInBase$48

 @3654$isDigitInBase$45:
	; GreaterThanEqual 48 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3654$isDigitInBase$48

 @3654$isDigitInBase$46:
	; Assign £temporary1018 1
	mov ebx, 1

 @3654$isDigitInBase$47:
	; Jump 49
	jmp @3654$isDigitInBase$49

 @3654$isDigitInBase$48:
	; Assign £temporary1018 0
	mov ebx, 0

 @3654$isDigitInBase$49:
	; SetReturnValue

 @3654$isDigitInBase$50:
	; Return £temporary1018
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3654$isDigitInBase$51:
	; SetReturnValue

 @3654$isDigitInBase$52:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3654$isDigitInBase$53:
	; FunctionEnd isDigitInBase

section .text

 @3689$digitToValue:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3689$digitToValue$1:
	; IntegralToIntegral £temporary1022 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3689$digitToValue$2
	neg al
	neg eax

 @3689$digitToValue$2:
	; Parameter 49 signedint £temporary1022
	mov [rbp + 49], eax

 @3689$digitToValue$3:
	; Call 25 isdigit 0
	mov qword [rbp + 25], @3689$digitToValue$4
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isdigit

 @3689$digitToValue$4:
	; PostCall 25

 @3689$digitToValue$5:
	; GetReturnValue £temporary1023

 @3689$digitToValue$6:
	; Equal 11 £temporary1023 0
	cmp ebx, 0
	je @3689$digitToValue$11

 @3689$digitToValue$7:
	; BinarySubtract £temporary1024 c 48
	mov bl, [rbp + 24]
	sub bl, 48

 @3689$digitToValue$8:
	; IntegralToIntegral £temporary1025 £temporary1024
	and ebx, 255
	cmp bl, 0
	jge @3689$digitToValue$9
	neg bl
	neg ebx

 @3689$digitToValue$9:
	; SetReturnValue

 @3689$digitToValue$10:
	; Return £temporary1025
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3689$digitToValue$11:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3689$digitToValue$12:
	; IntegralToIntegral £temporary1026 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3689$digitToValue$13
	neg al
	neg eax

 @3689$digitToValue$13:
	; Parameter 49 signedint £temporary1026
	mov [rbp + 49], eax

 @3689$digitToValue$14:
	; Call 25 islower 0
	mov qword [rbp + 25], @3689$digitToValue$15
	mov [rbp + 33], rbp
	add rbp, 25
	jmp islower

 @3689$digitToValue$15:
	; PostCall 25

 @3689$digitToValue$16:
	; GetReturnValue £temporary1027

 @3689$digitToValue$17:
	; Equal 23 £temporary1027 0
	cmp ebx, 0
	je @3689$digitToValue$23

 @3689$digitToValue$18:
	; BinarySubtract £temporary1028 c 97
	mov bl, [rbp + 24]
	sub bl, 97

 @3689$digitToValue$19:
	; IntegralToIntegral £temporary1029 £temporary1028
	and ebx, 255
	cmp bl, 0
	jge @3689$digitToValue$20
	neg bl
	neg ebx

 @3689$digitToValue$20:
	; BinaryAdd £temporary1030 £temporary1029 10
	add ebx, 10

 @3689$digitToValue$21:
	; SetReturnValue

 @3689$digitToValue$22:
	; Return £temporary1030
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3689$digitToValue$23:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3689$digitToValue$24:
	; IntegralToIntegral £temporary1031 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3689$digitToValue$25
	neg al
	neg eax

 @3689$digitToValue$25:
	; Parameter 49 signedint £temporary1031
	mov [rbp + 49], eax

 @3689$digitToValue$26:
	; Call 25 isupper 0
	mov qword [rbp + 25], @3689$digitToValue$27
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isupper

 @3689$digitToValue$27:
	; PostCall 25

 @3689$digitToValue$28:
	; GetReturnValue £temporary1032

 @3689$digitToValue$29:
	; Equal 35 £temporary1032 0
	cmp ebx, 0
	je @3689$digitToValue$35

 @3689$digitToValue$30:
	; BinarySubtract £temporary1033 c 65
	mov bl, [rbp + 24]
	sub bl, 65

 @3689$digitToValue$31:
	; IntegralToIntegral £temporary1034 £temporary1033
	and ebx, 255
	cmp bl, 0
	jge @3689$digitToValue$32
	neg bl
	neg ebx

 @3689$digitToValue$32:
	; BinaryAdd £temporary1035 £temporary1034 10
	add ebx, 10

 @3689$digitToValue$33:
	; SetReturnValue

 @3689$digitToValue$34:
	; Return £temporary1035
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3689$digitToValue$35:
	; SetReturnValue

 @3689$digitToValue$36:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3689$digitToValue$37:
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
	; GetReturnValue £temporary1039

 scanLongInt$7:
	; Assign input £temporary1039
	mov [rbp + 44], bl

 scanLongInt$8:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$9:
	; IntegralToIntegral £temporary1040 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$10
	neg al
	neg eax

 scanLongInt$10:
	; Parameter 69 signedint £temporary1040
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
	; GetReturnValue £temporary1041

 scanLongInt$14:
	; Equal 21 £temporary1041 0
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
	; GetReturnValue £temporary1042

 scanLongInt$19:
	; Assign input £temporary1042
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
	; GetReturnValue £temporary1045

 scanLongInt$26:
	; Assign input £temporary1045
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
	; GetReturnValue £temporary1047

 scanLongInt$34:
	; Assign input £temporary1047
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
	; GetReturnValue £temporary1050

 scanLongInt$41:
	; Assign input £temporary1050
	mov [rbp + 44], bl

 scanLongInt$42:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$43:
	; IntegralToIntegral £temporary1051 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$44
	neg al
	neg eax

 scanLongInt$44:
	; Parameter 69 signedint £temporary1051
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
	; GetReturnValue £temporary1052

 scanLongInt$48:
	; NotEqual 56 £temporary1052 120
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
	; GetReturnValue £temporary1054

 scanLongInt$54:
	; Assign input £temporary1054
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
	jmp @3654$isDigitInBase

 scanLongInt$63:
	; PostCall 45

 scanLongInt$64:
	; GetReturnValue £temporary1055

 scanLongInt$65:
	; Equal 82 £temporary1055 0
	cmp ebx, 0
	je scanLongInt$82

 scanLongInt$66:
	; IntegralToIntegral £temporary1056 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$67
	neg ebx
	neg rbx

 scanLongInt$67:
	; Multiply longValue longValue £temporary1056
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
	jmp @3689$digitToValue

 scanLongInt$71:
	; PostCall 45

 scanLongInt$72:
	; GetReturnValue £temporary1058

 scanLongInt$73:
	; IntegralToIntegral £temporary1059 £temporary1058
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$74
	neg ebx
	neg rbx

 scanLongInt$74:
	; BinaryAdd longValue longValue £temporary1059
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
	; GetReturnValue £temporary1061

 scanLongInt$79:
	; Assign input £temporary1061
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
	; UnarySubtract £temporary1063 longValue
	mov rax, [rbp + 28]
	neg rax

 scanLongInt$84:
	; Assign longValue £temporary1063
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
	; GetReturnValue £temporary1068

 scanUnsignedLongInt$5:
	; Assign input £temporary1068
	mov [rbp + 44], bl

 scanUnsignedLongInt$6:
	; Assign found 1
	mov dword [rbp + 45], 1

 scanUnsignedLongInt$7:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$8:
	; IntegralToIntegral £temporary1069 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$9
	neg al
	neg eax

 scanUnsignedLongInt$9:
	; Parameter 73 signedint £temporary1069
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
	; GetReturnValue £temporary1070

 scanUnsignedLongInt$13:
	; Equal 20 £temporary1070 0
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
	; GetReturnValue £temporary1071

 scanUnsignedLongInt$18:
	; Assign input £temporary1071
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
	; GetReturnValue £temporary1074

 scanUnsignedLongInt$25:
	; Assign input £temporary1074
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
	; GetReturnValue £temporary1077

 scanUnsignedLongInt$32:
	; Assign input £temporary1077
	mov [rbp + 44], bl

 scanUnsignedLongInt$33:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$34:
	; IntegralToIntegral £temporary1078 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$35
	neg al
	neg eax

 scanUnsignedLongInt$35:
	; Parameter 73 signedint £temporary1078
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
	; GetReturnValue £temporary1079

 scanUnsignedLongInt$39:
	; NotEqual 47 £temporary1079 120
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
	; GetReturnValue £temporary1081

 scanUnsignedLongInt$45:
	; Assign input £temporary1081
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
	jmp @3654$isDigitInBase

 scanUnsignedLongInt$54:
	; PostCall 49

 scanUnsignedLongInt$55:
	; GetReturnValue £temporary1082

 scanUnsignedLongInt$56:
	; Equal 73 £temporary1082 0
	cmp ebx, 0
	je scanUnsignedLongInt$73

 scanUnsignedLongInt$57:
	; IntegralToIntegral £temporary1083 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$58:
	; Multiply unsignedLongValue unsignedLongValue £temporary1083
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
	jmp @3689$digitToValue

 scanUnsignedLongInt$62:
	; PostCall 49

 scanUnsignedLongInt$63:
	; GetReturnValue £temporary1085

 scanUnsignedLongInt$64:
	; IntegralToIntegral £temporary1086 £temporary1085
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$65:
	; BinaryAdd unsignedLongValue unsignedLongValue £temporary1086
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
	; GetReturnValue £temporary1088

 scanUnsignedLongInt$71:
	; Assign input £temporary1088
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

@3807$float8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .data

@3816$float8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .data

@3830$float8$10.0#:
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
	; GetReturnValue £temporary1093

 scanLongDouble$10:
	; Assign input £temporary1093
	mov [rbp + 48], bl

 scanLongDouble$11:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$12:
	; IntegralToIntegral £temporary1094 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$13
	neg al
	neg eax

 scanLongDouble$13:
	; Parameter 73 signedint £temporary1094
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
	; GetReturnValue £temporary1095

 scanLongDouble$17:
	; Equal 24 £temporary1095 0
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
	; GetReturnValue £temporary1096

 scanLongDouble$22:
	; Assign input £temporary1096
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
	; GetReturnValue £temporary1099

 scanLongDouble$29:
	; Assign input £temporary1099
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
	; GetReturnValue £temporary1101

 scanLongDouble$37:
	; Assign input £temporary1101
	mov [rbp + 48], bl

 scanLongDouble$38:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$39:
	; IntegralToIntegral £temporary1102 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$40
	neg al
	neg eax

 scanLongDouble$40:
	; Parameter 73 signedint £temporary1102
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
	; GetReturnValue £temporary1103

 scanLongDouble$44:
	; Equal 60 £temporary1103 0
	cmp ebx, 0
	je scanLongDouble$60

 scanLongDouble$45:
	; PushFloat 10.0
	fld qword [@3807$float8$10.0#]

 scanLongDouble$46:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$47:
	; Multiply £temporary1104 10.0 value
	fmul

 scanLongDouble$48:
	; BinarySubtract £temporary1105 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$49:
	; IntegralToIntegral £temporary1107 £temporary1105
	and eax, 255
	cmp al, 0
	jge scanLongDouble$50
	neg al
	neg eax

 scanLongDouble$50:
	; IntegralToFloating £temporary1106 £temporary1107
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$51:
	; BinaryAdd £temporary1108 £temporary1104 £temporary1106
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
	; GetReturnValue £temporary1109

 scanLongDouble$57:
	; Assign input £temporary1109
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
	; GetReturnValue £temporary1112

 scanLongDouble$65:
	; Assign input £temporary1112
	mov [rbp + 48], bl

 scanLongDouble$66:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$67:
	; IntegralToIntegral £temporary1113 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$68
	neg al
	neg eax

 scanLongDouble$68:
	; Parameter 73 signedint £temporary1113
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
	; GetReturnValue £temporary1114

 scanLongDouble$72:
	; Equal 92 £temporary1114 0
	cmp ebx, 0
	je scanLongDouble$92

 scanLongDouble$73:
	; PushFloat factor
	fld qword [rbp + 40]

 scanLongDouble$74:
	; PushFloat 10.0
	fld qword [@3816$float8$10.0#]

 scanLongDouble$75:
	; Divide £temporary1115 factor 10.0
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
	; BinarySubtract £temporary1116 input 48
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$80:
	; IntegralToIntegral £temporary1118 £temporary1116
	and eax, 255
	cmp al, 0
	jge scanLongDouble$81
	neg al
	neg eax

 scanLongDouble$81:
	; IntegralToFloating £temporary1117 £temporary1118
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$82:
	; Multiply £temporary1119 factor £temporary1117
	fmul

 scanLongDouble$83:
	; BinaryAdd £temporary1120 value £temporary1119
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
	; GetReturnValue £temporary1121

 scanLongDouble$89:
	; Assign input £temporary1121
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
	; IntegralToIntegral £temporary1123 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$94
	neg al
	neg eax

 scanLongDouble$94:
	; Parameter 73 signedint £temporary1123
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
	; GetReturnValue £temporary1124

 scanLongDouble$98:
	; NotEqual 118 £temporary1124 101
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
	; GetReturnValue £temporary1126

 scanLongDouble$104:
	; IntegralToFloating £temporary1127 £temporary1126
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
	fld qword [@3830$float8$10.0#]

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
	; GetReturnValue £temporary1128

 scanLongDouble$115:
	; Multiply £temporary1129 value £temporary1128
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
	; UnarySubtract £temporary1131 value
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
	; IntegralToIntegral £temporary1138 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$9:
	; BinaryAdd £temporary1139 format £temporary1138
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$10:
	; Dereference £temporary1137 -> £temporary1139 £temporary1139 0

 scanFormat$11:
	; Equal 338 £temporary1137 -> £temporary1139 0
	cmp byte [rsi], 0
	je scanFormat$338

 scanFormat$12:
	; IntegralToIntegral £temporary1143 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$13:
	; BinaryAdd £temporary1144 format £temporary1143
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$14:
	; Dereference £temporary1142 -> £temporary1144 £temporary1144 0

 scanFormat$15:
	; Assign c £temporary1142 -> £temporary1144
	mov al, [rsi]
	mov [rbp + 40], al

 scanFormat$16:
	; IntegralToIntegral £temporary1145 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$17
	neg al
	neg eax

 scanFormat$17:
	; BinaryAdd d £temporary1145 1
	inc eax
	mov [rbp + 153], eax

 scanFormat$18:
	; Equal 330 percent 0
	cmp dword [rbp + 49], 0
	je scanFormat$330

 scanFormat$19:
	; BinarySubtract £temporary1147 d 1
	mov eax, [rbp + 153]
	dec eax

 scanFormat$20:
	; Case 38 £temporary1147 104
	cmp eax, 104
	je scanFormat$38

 scanFormat$21:
	; Case 40 £temporary1147 108
	cmp eax, 108
	je scanFormat$40

 scanFormat$22:
	; Case 42 £temporary1147 76
	cmp eax, 76
	je scanFormat$42

 scanFormat$23:
	; Case 44 £temporary1147 42
	cmp eax, 42
	je scanFormat$44

 scanFormat$24:
	; Case 46 £temporary1147 99
	cmp eax, 99
	je scanFormat$46

 scanFormat$25:
	; Case 64 £temporary1147 115
	cmp eax, 115
	je scanFormat$64

 scanFormat$26:
	; Case 83 £temporary1147 100
	cmp eax, 100
	je scanFormat$83

 scanFormat$27:
	; Case 83 £temporary1147 105
	cmp eax, 105
	je scanFormat$83

 scanFormat$28:
	; Case 119 £temporary1147 111
	cmp eax, 111
	je scanFormat$119

 scanFormat$29:
	; Case 155 £temporary1147 120
	cmp eax, 120
	je scanFormat$155

 scanFormat$30:
	; Case 191 £temporary1147 117
	cmp eax, 117
	je scanFormat$191

 scanFormat$31:
	; Case 227 £temporary1147 103
	cmp eax, 103
	je scanFormat$227

 scanFormat$32:
	; Case 227 £temporary1147 102
	cmp eax, 102
	je scanFormat$227

 scanFormat$33:
	; Case 227 £temporary1147 101
	cmp eax, 101
	je scanFormat$227

 scanFormat$34:
	; Case 263 £temporary1147 91
	cmp eax, 91
	je scanFormat$263

 scanFormat$35:
	; Case 321 £temporary1147 110
	cmp eax, 110
	je scanFormat$321

 scanFormat$36:
	; CaseEnd £temporary1147

 scanFormat$37:
	; Jump 336
	jmp scanFormat$336

 scanFormat$38:
	; Assign shortInt 1
	mov dword [rbp + 53], 1

 scanFormat$39:
	; Jump 336
	jmp scanFormat$336

 scanFormat$40:
	; Assign longIntOrDouble 1
	mov dword [rbp + 57], 1

 scanFormat$41:
	; Jump 336
	jmp scanFormat$336

 scanFormat$42:
	; Assign longDouble 1
	mov dword [rbp + 61], 1

 scanFormat$43:
	; Jump 336
	jmp scanFormat$336

 scanFormat$44:
	; Assign star 1
	mov dword [rbp + 65], 1

 scanFormat$45:
	; Jump 336
	jmp scanFormat$336

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
	; GetReturnValue £temporary1148

 scanFormat$50:
	; Assign charValue £temporary1148
	mov [rbp + 157], bl

 scanFormat$51:
	; NotEqual 59 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$59

 scanFormat$52:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$53:
	; BinarySubtract £temporary1152 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$54:
	; IntegralToIntegral £temporary1153 £temporary1152

 scanFormat$55:
	; Dereference £temporary1154 -> £temporary1153 £temporary1153 0

 scanFormat$56:
	; Assign charPtr £temporary1154 -> £temporary1153
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$57:
	; Dereference £temporary1155 -> charPtr charPtr 0
	mov rsi, [rbp + 41]

 scanFormat$58:
	; Assign £temporary1155 -> charPtr charValue
	mov al, [rbp + 157]
	mov [rsi], al

 scanFormat$59:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$60:
	; IntegralToIntegral £temporary1156 charValue
	mov al, [rbp + 157]
	and eax, 255
	cmp al, 0
	jge scanFormat$61
	neg al
	neg eax

 scanFormat$61:
	; Equal 336 £temporary1156 -1
	cmp eax, -1
	je scanFormat$336

 scanFormat$62:
	; BinaryAdd g_inCount g_inCount 1
	inc dword [g_inCount]

 scanFormat$63:
	; Jump 336
	jmp scanFormat$336

 scanFormat$64:
	; NotEqual 76 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$76

 scanFormat$65:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$66:
	; BinarySubtract £temporary1162 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$67:
	; IntegralToIntegral £temporary1163 £temporary1162

 scanFormat$68:
	; Dereference £temporary1164 -> £temporary1163 £temporary1163 0

 scanFormat$69:
	; Assign charPtr £temporary1164 -> £temporary1163
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$70:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$71:
	; Parameter 181 pointer charPtr
	mov rax, [rbp + 41]
	mov [rbp + 181], rax

 scanFormat$72:
	; Parameter 189 signedint 0
	mov dword [rbp + 189], 0

 scanFormat$73:
	; Call 157 scanString 0
	mov qword [rbp + 157], scanFormat$74
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$74:
	; PostCall 157

 scanFormat$75:
	; Jump 81
	jmp scanFormat$81

 scanFormat$76:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$77:
	; Parameter 181 pointer 0
	mov qword [rbp + 181], 0

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
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$82:
	; Jump 336
	jmp scanFormat$336

 scanFormat$83:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$84:
	; Parameter 181 signedint 10
	mov dword [rbp + 181], 10

 scanFormat$85:
	; Call 157 scanLongInt 0
	mov qword [rbp + 157], scanFormat$86
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongInt

 scanFormat$86:
	; PostCall 157

 scanFormat$87:
	; GetReturnValue £temporary1167

 scanFormat$88:
	; Assign longValue £temporary1167
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
	; BinarySubtract £temporary1171 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$93:
	; IntegralToIntegral £temporary1172 £temporary1171

 scanFormat$94:
	; Dereference £temporary1173 -> £temporary1172 £temporary1172 0

 scanFormat$95:
	; Assign shortPtr £temporary1173 -> £temporary1172
	mov rax, [rsi]
	mov [rbp + 85], rax

 scanFormat$96:
	; Dereference £temporary1174 -> shortPtr shortPtr 0
	mov rsi, [rbp + 85]

 scanFormat$97:
	; IntegralToIntegral £temporary1175 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$98
	neg rax
	neg ax

 scanFormat$98:
	; Assign £temporary1174 -> shortPtr £temporary1175
	mov [rsi], ax

 scanFormat$99:
	; Jump 117
	jmp scanFormat$117

 scanFormat$100:
	; NotEqual 110 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$110

 scanFormat$101:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$102:
	; BinarySubtract £temporary1179 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$103:
	; IntegralToIntegral £temporary1180 £temporary1179

 scanFormat$104:
	; Dereference £temporary1181 -> £temporary1180 £temporary1180 0

 scanFormat$105:
	; Assign intPtr £temporary1181 -> £temporary1180
	mov rax, [rsi]
	mov [rbp + 97], rax

 scanFormat$106:
	; Dereference £temporary1182 -> intPtr intPtr 0
	mov rsi, [rbp + 97]

 scanFormat$107:
	; IntegralToIntegral £temporary1183 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$108
	neg rax
	neg eax

 scanFormat$108:
	; Assign £temporary1182 -> intPtr £temporary1183
	mov [rsi], eax

 scanFormat$109:
	; Jump 117
	jmp scanFormat$117

 scanFormat$110:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$111:
	; BinarySubtract £temporary1185 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$112:
	; IntegralToIntegral £temporary1186 £temporary1185

 scanFormat$113:
	; Dereference £temporary1187 -> £temporary1186 £temporary1186 0

 scanFormat$114:
	; Assign longPtr £temporary1187 -> £temporary1186
	mov rax, [rsi]
	mov [rbp + 77], rax

 scanFormat$115:
	; Dereference £temporary1188 -> longPtr longPtr 0
	mov rsi, [rbp + 77]

 scanFormat$116:
	; Assign £temporary1188 -> longPtr longValue
	mov rax, [rbp + 69]
	mov [rsi], rax

 scanFormat$117:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$118:
	; Jump 336
	jmp scanFormat$336

 scanFormat$119:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$120:
	; Parameter 181 signedint 8
	mov dword [rbp + 181], 8

 scanFormat$121:
	; Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$122
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$122:
	; PostCall 157

 scanFormat$123:
	; GetReturnValue £temporary1190

 scanFormat$124:
	; Assign unsignedLongValue £temporary1190
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
	; BinarySubtract £temporary1194 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$129:
	; IntegralToIntegral £temporary1195 £temporary1194

 scanFormat$130:
	; Dereference £temporary1196 -> £temporary1195 £temporary1195 0

 scanFormat$131:
	; Assign unsignedShortPtr £temporary1196 -> £temporary1195
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$132:
	; Dereference £temporary1197 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$133:
	; IntegralToIntegral £temporary1198 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$134:
	; Assign £temporary1197 -> unsignedShortPtr £temporary1198
	mov [rsi], ax

 scanFormat$135:
	; Jump 153
	jmp scanFormat$153

 scanFormat$136:
	; NotEqual 146 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$146

 scanFormat$137:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$138:
	; BinarySubtract £temporary1202 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$139:
	; IntegralToIntegral £temporary1203 £temporary1202

 scanFormat$140:
	; Dereference £temporary1204 -> £temporary1203 £temporary1203 0

 scanFormat$141:
	; Assign unsignedIntPtr £temporary1204 -> £temporary1203
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$142:
	; Dereference £temporary1205 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$143:
	; IntegralToIntegral £temporary1206 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$144:
	; Assign £temporary1205 -> unsignedIntPtr £temporary1206
	mov [rsi], eax

 scanFormat$145:
	; Jump 153
	jmp scanFormat$153

 scanFormat$146:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$147:
	; BinarySubtract £temporary1208 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$148:
	; IntegralToIntegral £temporary1209 £temporary1208

 scanFormat$149:
	; Dereference £temporary1210 -> £temporary1209 £temporary1209 0

 scanFormat$150:
	; Assign unsignedLongPtr £temporary1210 -> £temporary1209
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$151:
	; Dereference £temporary1211 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$152:
	; Assign £temporary1211 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$153:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$154:
	; Jump 336
	jmp scanFormat$336

 scanFormat$155:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$156:
	; Parameter 181 signedint 16
	mov dword [rbp + 181], 16

 scanFormat$157:
	; Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$158
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$158:
	; PostCall 157

 scanFormat$159:
	; GetReturnValue £temporary1213

 scanFormat$160:
	; Assign unsignedLongValue £temporary1213
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
	; BinarySubtract £temporary1217 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$165:
	; IntegralToIntegral £temporary1218 £temporary1217

 scanFormat$166:
	; Dereference £temporary1219 -> £temporary1218 £temporary1218 0

 scanFormat$167:
	; Assign unsignedShortPtr £temporary1219 -> £temporary1218
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$168:
	; Dereference £temporary1220 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$169:
	; IntegralToIntegral £temporary1221 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$170:
	; Assign £temporary1220 -> unsignedShortPtr £temporary1221
	mov [rsi], ax

 scanFormat$171:
	; Jump 189
	jmp scanFormat$189

 scanFormat$172:
	; NotEqual 182 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$182

 scanFormat$173:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$174:
	; BinarySubtract £temporary1225 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$175:
	; IntegralToIntegral £temporary1226 £temporary1225

 scanFormat$176:
	; Dereference £temporary1227 -> £temporary1226 £temporary1226 0

 scanFormat$177:
	; Assign unsignedIntPtr £temporary1227 -> £temporary1226
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$178:
	; Dereference £temporary1228 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$179:
	; IntegralToIntegral £temporary1229 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$180:
	; Assign £temporary1228 -> unsignedIntPtr £temporary1229
	mov [rsi], eax

 scanFormat$181:
	; Jump 189
	jmp scanFormat$189

 scanFormat$182:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$183:
	; BinarySubtract £temporary1231 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$184:
	; IntegralToIntegral £temporary1232 £temporary1231

 scanFormat$185:
	; Dereference £temporary1233 -> £temporary1232 £temporary1232 0

 scanFormat$186:
	; Assign unsignedLongPtr £temporary1233 -> £temporary1232
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$187:
	; Dereference £temporary1234 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$188:
	; Assign £temporary1234 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$189:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$190:
	; Jump 336
	jmp scanFormat$336

 scanFormat$191:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$192:
	; Parameter 181 signedint 0
	mov dword [rbp + 181], 0

 scanFormat$193:
	; Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$194
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$194:
	; PostCall 157

 scanFormat$195:
	; GetReturnValue £temporary1236

 scanFormat$196:
	; Assign unsignedLongValue £temporary1236
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
	; BinarySubtract £temporary1240 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$201:
	; IntegralToIntegral £temporary1241 £temporary1240

 scanFormat$202:
	; Dereference £temporary1242 -> £temporary1241 £temporary1241 0

 scanFormat$203:
	; Assign unsignedShortPtr £temporary1242 -> £temporary1241
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$204:
	; Dereference £temporary1243 -> unsignedShortPtr unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$205:
	; IntegralToIntegral £temporary1244 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$206:
	; Assign £temporary1243 -> unsignedShortPtr £temporary1244
	mov [rsi], ax

 scanFormat$207:
	; Jump 225
	jmp scanFormat$225

 scanFormat$208:
	; NotEqual 218 longIntOrDouble 0
	cmp dword [rbp + 57], 0
	jne scanFormat$218

 scanFormat$209:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$210:
	; BinarySubtract £temporary1248 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$211:
	; IntegralToIntegral £temporary1249 £temporary1248

 scanFormat$212:
	; Dereference £temporary1250 -> £temporary1249 £temporary1249 0

 scanFormat$213:
	; Assign unsignedIntPtr £temporary1250 -> £temporary1249
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$214:
	; Dereference £temporary1251 -> unsignedIntPtr unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$215:
	; IntegralToIntegral £temporary1252 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$216:
	; Assign £temporary1251 -> unsignedIntPtr £temporary1252
	mov [rsi], eax

 scanFormat$217:
	; Jump 225
	jmp scanFormat$225

 scanFormat$218:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$219:
	; BinarySubtract £temporary1254 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$220:
	; IntegralToIntegral £temporary1255 £temporary1254

 scanFormat$221:
	; Dereference £temporary1256 -> £temporary1255 £temporary1255 0

 scanFormat$222:
	; Assign unsignedLongPtr £temporary1256 -> £temporary1255
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$223:
	; Dereference £temporary1257 -> unsignedLongPtr unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$224:
	; Assign £temporary1257 -> unsignedLongPtr unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$225:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$226:
	; Jump 336
	jmp scanFormat$336

 scanFormat$227:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$228:
	; Call 157 scanLongDouble 0
	mov qword [rbp + 157], scanFormat$229
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongDouble

 scanFormat$229:
	; PostCall 157

 scanFormat$230:
	; GetReturnValue £temporary1259

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
	; BinarySubtract £temporary1263 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$236:
	; IntegralToIntegral £temporary1264 £temporary1263

 scanFormat$237:
	; Dereference £temporary1265 -> £temporary1264 £temporary1264 0

 scanFormat$238:
	; Assign doublePtr £temporary1265 -> £temporary1264
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$239:
	; Dereference £temporary1266 -> doublePtr doublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$240:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$241:
	; PopFloat £temporary1266 -> doublePtr
	fstp qword [rsi]

 scanFormat$242:
	; Jump 261
	jmp scanFormat$261

 scanFormat$243:
	; Equal 253 longDouble 0
	cmp dword [rbp + 61], 0
	je scanFormat$253

 scanFormat$244:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$245:
	; BinarySubtract £temporary1269 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$246:
	; IntegralToIntegral £temporary1270 £temporary1269

 scanFormat$247:
	; Dereference £temporary1271 -> £temporary1270 £temporary1270 0

 scanFormat$248:
	; Assign longDoublePtr £temporary1271 -> £temporary1270
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$249:
	; Dereference £temporary1272 -> longDoublePtr longDoublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$250:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$251:
	; PopFloat £temporary1272 -> longDoublePtr
	fstp qword [rsi]

 scanFormat$252:
	; Jump 261
	jmp scanFormat$261

 scanFormat$253:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$254:
	; BinarySubtract £temporary1274 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$255:
	; IntegralToIntegral £temporary1275 £temporary1274

 scanFormat$256:
	; Dereference £temporary1276 -> £temporary1275 £temporary1275 0

 scanFormat$257:
	; Assign floatPtr £temporary1276 -> £temporary1275
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$258:
	; Dereference £temporary1277 -> floatPtr floatPtr 0
	mov rsi, [rbp + 157]

 scanFormat$259:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$260:
	; PopFloat £temporary1277 -> floatPtr
	fstp dword [rsi]

 scanFormat$261:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$262:
	; Jump 336
	jmp scanFormat$336

 scanFormat$263:
	; Assign not 0
	mov dword [rbp + 157], 0

 scanFormat$264:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$265:
	; IntegralToIntegral £temporary1283 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$266:
	; BinaryAdd £temporary1284 format £temporary1283
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$267:
	; Dereference £temporary1282 -> £temporary1284 £temporary1284 0

 scanFormat$268:
	; NotEqual 271 £temporary1282 -> £temporary1284 94
	cmp byte [rsi], 94
	jne scanFormat$271

 scanFormat$269:
	; Assign not 1
	mov dword [rbp + 157], 1

 scanFormat$270:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$271:
	; Assign startIndex index
	mov eax, [rbp + 93]
	mov [rbp + 161], eax

 scanFormat$272:
	; IntegralToIntegral £temporary1288 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$273:
	; BinaryAdd £temporary1289 format £temporary1288
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$274:
	; Dereference £temporary1287 -> £temporary1289 £temporary1289 0

 scanFormat$275:
	; Equal 278 £temporary1287 -> £temporary1289 93
	cmp byte [rsi], 93
	je scanFormat$278

 scanFormat$276:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$277:
	; Jump 272
	jmp scanFormat$272

 scanFormat$278:
	; BinarySubtract size index startIndex
	mov eax, [rbp + 93]
	sub eax, [rbp + 161]
	mov [rbp + 165], eax

 scanFormat$279:
	; IntegralToIntegral £temporary1294 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$280:
	; BinaryAdd £temporary1295 format £temporary1294
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$281:
	; Dereference £temporary1293 -> £temporary1295 £temporary1295 0

 scanFormat$282:
	; Assign c £temporary1293 -> £temporary1295
	mov al, [rsi]
	mov [rbp + 169], al

 scanFormat$283:
	; IntegralToIntegral £temporary1297 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$284:
	; BinaryAdd £temporary1298 format £temporary1297
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$285:
	; Dereference £temporary1296 -> £temporary1298 £temporary1298 0

 scanFormat$286:
	; Assign £temporary1296 -> £temporary1298 0
	mov byte [rsi], 0

 scanFormat$287:
	; NotEqual 305 star 0
	cmp dword [rbp + 65], 0
	jne scanFormat$305

 scanFormat$288:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$289:
	; BinarySubtract £temporary1302 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$290:
	; IntegralToIntegral £temporary1303 £temporary1302

 scanFormat$291:
	; Dereference £temporary1304 -> £temporary1303 £temporary1303 0

 scanFormat$292:
	; Assign string £temporary1304 -> £temporary1303
	mov rax, [rsi]
	mov [rbp + 170], rax

 scanFormat$293:
	; PreCall 178 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$294:
	; Parameter 202 pointer string
	mov rax, [rbp + 170]
	mov [rbp + 202], rax

 scanFormat$295:
	; IntegralToIntegral £temporary1306 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$296:
	; BinaryAdd £temporary1307 format £temporary1306
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$297:
	; Dereference £temporary1305 -> £temporary1307 £temporary1307 0

 scanFormat$298:
	; Address £temporary1308 £temporary1305 -> £temporary1307

 scanFormat$299:
	; Parameter 210 pointer £temporary1308
	mov [rbp + 210], rsi

 scanFormat$300:
	; Parameter 218 signedint size
	mov eax, [rbp + 165]
	mov [rbp + 218], eax

 scanFormat$301:
	; Parameter 222 signedint not
	mov eax, [rbp + 157]
	mov [rbp + 222], eax

 scanFormat$302:
	; Call 178 scanPattern 0
	mov qword [rbp + 178], scanFormat$303
	mov [rbp + 186], rbp
	add rbp, 178
	jmp scanPattern

 scanFormat$303:
	; PostCall 178

 scanFormat$304:
	; Jump 316
	jmp scanFormat$316

 scanFormat$305:
	; PreCall 170 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$306:
	; Parameter 194 pointer 0
	mov qword [rbp + 194], 0

 scanFormat$307:
	; IntegralToIntegral £temporary1311 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$308:
	; BinaryAdd £temporary1312 format £temporary1311
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$309:
	; Dereference £temporary1310 -> £temporary1312 £temporary1312 0

 scanFormat$310:
	; Address £temporary1313 £temporary1310 -> £temporary1312

 scanFormat$311:
	; Parameter 202 pointer £temporary1313
	mov [rbp + 202], rsi

 scanFormat$312:
	; Parameter 210 signedint size
	mov eax, [rbp + 165]
	mov [rbp + 210], eax

 scanFormat$313:
	; Parameter 214 signedint not
	mov eax, [rbp + 157]
	mov [rbp + 214], eax

 scanFormat$314:
	; Call 170 scanPattern 0
	mov qword [rbp + 170], scanFormat$315
	mov [rbp + 178], rbp
	add rbp, 170
	jmp scanPattern

 scanFormat$315:
	; PostCall 170

 scanFormat$316:
	; IntegralToIntegral £temporary1316 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$317:
	; BinaryAdd £temporary1317 format £temporary1316
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$318:
	; Dereference £temporary1315 -> £temporary1317 £temporary1317 0

 scanFormat$319:
	; Assign £temporary1315 -> £temporary1317 c
	mov al, [rbp + 169]
	mov [rsi], al

 scanFormat$320:
	; Jump 336
	jmp scanFormat$336

 scanFormat$321:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 scanFormat$322:
	; BinarySubtract £temporary1319 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$323:
	; IntegralToIntegral £temporary1320 £temporary1319

 scanFormat$324:
	; Dereference £temporary1321 -> £temporary1320 £temporary1320 0

 scanFormat$325:
	; Assign charsPtr £temporary1321 -> £temporary1320
	mov rax, [rsi]
	mov [rbp + 105], rax

 scanFormat$326:
	; Dereference £temporary1322 -> charsPtr charsPtr 0
	mov rsi, [rbp + 105]

 scanFormat$327:
	; Assign £temporary1322 -> charsPtr g_inChars
	mov eax, [g_inChars]
	mov [rsi], eax

 scanFormat$328:
	; Assign percent 0
	mov dword [rbp + 49], 0

 scanFormat$329:
	; Jump 336
	jmp scanFormat$336

 scanFormat$330:
	; NotEqual 336 c 37
	cmp byte [rbp + 40], 37
	jne scanFormat$336

 scanFormat$331:
	; Assign percent 1
	mov dword [rbp + 49], 1

 scanFormat$332:
	; Assign shortInt 0
	mov dword [rbp + 53], 0

 scanFormat$333:
	; Assign longIntOrDouble 0
	mov dword [rbp + 57], 0

 scanFormat$334:
	; Assign longDouble 0
	mov dword [rbp + 61], 0

 scanFormat$335:
	; Assign star 0
	mov dword [rbp + 65], 0

 scanFormat$336:
	; BinaryAdd index index 1
	inc dword [rbp + 93]

 scanFormat$337:
	; Jump 8
	jmp scanFormat$8

 scanFormat$338:
	; SetReturnValue

 scanFormat$339:
	; Return g_inCount
	mov ebx, [g_inCount]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanFormat$340:
	; FunctionEnd scanFormat

section .text

 scanf:
	; Address £temporary1325 format
	mov rsi, rbp
	add rsi, 24

 scanf$1:
	; IntegralToIntegral £temporary1326 £temporary1325

 scanf$2:
	; BinaryAdd arg_list £temporary1326 8
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
	; GetReturnValue £temporary1328

 scanf$9:
	; SetReturnValue

 scanf$10:
	; Return £temporary1328
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
	; GetReturnValue £temporary1330

 vscanf$7:
	; SetReturnValue

 vscanf$8:
	; Return £temporary1330
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vscanf$9:
	; FunctionEnd vscanf

section .text

 fscanf:
	; Address £temporary1331 format
	mov rsi, rbp
	add rsi, 32

 fscanf$1:
	; IntegralToIntegral £temporary1332 £temporary1331

 fscanf$2:
	; BinaryAdd arg_list £temporary1332 8
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
	; GetReturnValue £temporary1334

 fscanf$10:
	; SetReturnValue

 fscanf$11:
	; Return £temporary1334
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
	; IntegralToIntegral £temporary1336 inStream
	mov rax, [rbp + 24]

 vfscanf$2:
	; Assign g_inDevice £temporary1336
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
	; GetReturnValue £temporary1337

 vfscanf$9:
	; SetReturnValue

 vfscanf$10:
	; Return £temporary1337
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfscanf$11:
	; FunctionEnd vfscanf

section .text

 sscanf:
	; Address £temporary1338 format
	mov rsi, rbp
	add rsi, 32

 sscanf$1:
	; IntegralToIntegral £temporary1339 £temporary1338

 sscanf$2:
	; BinaryAdd arg_list £temporary1339 8
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
	; GetReturnValue £temporary1341

 sscanf$10:
	; SetReturnValue

 sscanf$11:
	; Return £temporary1341
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
	; IntegralToIntegral £temporary1343 inString
	mov rax, [rbp + 24]

 vsscanf$2:
	; Assign g_inDevice £temporary1343
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
	; GetReturnValue £temporary1344

 vsscanf$9:
	; SetReturnValue

 vsscanf$10:
	; Return £temporary1344
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsscanf$11:
	; FunctionEnd vsscanf
