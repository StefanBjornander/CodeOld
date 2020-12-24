	global g_outStatus
	global g_outChars
	global g_outDevice
	global putc
	global fputc
	global putchar
	global printChar
	global printString
	global printLongIntRec
	global printLongInt
	global digitToChar
	global printUnsignedLongRec
	global printUnsignedLong
	global printLongDoubleFraction
	global printLongDoublePlain
	global printLongDoubleExpo
	global checkWidthAndPrecision
	global printArgument
	global printFormat
	global printf
	global vprintf
	global fprintf
	global vfprintf
	global sprintf
	global vsprintf

	extern stdout
	extern log10
	extern pow
	extern labs
	extern isupper
	extern fabs
	extern tolower
	extern isdigit
	extern $StackTop


section .data

g_outStatus:
	; InitializerZero 4
	times 4 db 0

section .data

g_outChars:
	; InitializerZero 4
	times 4 db 0

section .data

g_outDevice:
	; InitializerZero 8
	times 8 db 0

section .text

 putc:
	; Assign g_outStatus 0
	mov dword [g_outStatus], 0

 putc$1:
	; IntegralToIntegral £temporary1452 stream
	mov rax, [rbp + 28]

 putc$2:
	; Assign g_outDevice £temporary1452
	mov [g_outDevice], rax

 putc$3:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 putc$4:
	; IntegralToIntegral £temporary1453 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putc$5
	neg eax
	neg al

 putc$5:
	; Parameter 60 signedchar £temporary1453
	mov [rbp + 60], al

 putc$6:
	; Call 36 printChar 0
	mov qword [rbp + 36], putc$7
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 putc$7:
	; PostCall 36

 putc$8:
	; SetReturnValue

 putc$9:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 putc$10:
	; FunctionEnd putc

section .text

 fputc:
	; Assign g_outStatus 0
	mov dword [g_outStatus], 0

 fputc$1:
	; IntegralToIntegral £temporary1455 stream
	mov rax, [rbp + 28]

 fputc$2:
	; Assign g_outDevice £temporary1455
	mov [g_outDevice], rax

 fputc$3:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputc$4:
	; IntegralToIntegral £temporary1456 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge fputc$5
	neg eax
	neg al

 fputc$5:
	; Parameter 60 signedchar £temporary1456
	mov [rbp + 60], al

 fputc$6:
	; Call 36 printChar 0
	mov qword [rbp + 36], fputc$7
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 fputc$7:
	; PostCall 36

 fputc$8:
	; SetReturnValue

 fputc$9:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fputc$10:
	; FunctionEnd fputc

section .text

 putchar:
	; Assign g_outStatus 0
	mov dword [g_outStatus], 0

 putchar$1:
	; IntegralToIntegral £temporary1458 stdout
	mov rax, [stdout]

 putchar$2:
	; Assign g_outDevice £temporary1458
	mov [g_outDevice], rax

 putchar$3:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 putchar$4:
	; IntegralToIntegral £temporary1459 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putchar$5
	neg eax
	neg al

 putchar$5:
	; Parameter 52 signedchar £temporary1459
	mov [rbp + 52], al

 putchar$6:
	; Call 28 printChar 0
	mov qword [rbp + 28], putchar$7
	mov [rbp + 36], rbp
	add rbp, 28
	jmp printChar

 putchar$7:
	; PostCall 28

 putchar$8:
	; SetReturnValue

 putchar$9:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 putchar$10:
	; FunctionEnd putchar

section .text

 printChar:
	; Case 5 g_outStatus 0
	mov eax, [g_outStatus]
	cmp eax, 0
	je printChar$5

 printChar$1:
	; Case 18 g_outStatus 1
	cmp eax, 1
	je printChar$18

 printChar$2:
	; Case 27 g_outStatus 2
	cmp eax, 2
	je printChar$27

 printChar$3:
	; CaseEnd g_outStatus

 printChar$4:
	; Jump 28
	jmp printChar$28

 printChar$5:
	; IntegralToIntegral £temporary1461 g_outDevice
	mov rax, [g_outDevice]

 printChar$6:
	; Assign stream £temporary1461
	mov [rbp + 37], rax

 printChar$7:
	; AssignRegister rax 1
	mov rax, 1

 printChar$8:
	; Dereference £temporary1464 -> stream stream 0
	mov rsi, [rbp + 37]

 printChar$9:
	; IntegralToIntegral £temporary1465 £temporary1464 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 printChar$10:
	; AssignRegister rdi £temporary1465

 printChar$11:
	; Address £temporary1467 c
	mov rsi, rbp
	add rsi, 24

 printChar$12:
	; IntegralToIntegral £temporary1468 £temporary1467

 printChar$13:
	; AssignRegister rsi £temporary1468

 printChar$14:
	; AssignRegister rdx 1
	mov rdx, 1

 printChar$15:
	; SysCall
	syscall

 printChar$16:
	; BinaryAdd g_outChars g_outChars 1
	inc dword [g_outChars]

 printChar$17:
	; Jump 28
	jmp printChar$28

 printChar$18:
	; IntegralToIntegral £temporary1471 g_outDevice
	mov rax, [g_outDevice]

 printChar$19:
	; Assign outString £temporary1471
	mov [rbp + 29], rax

 printChar$20:
	; Assign £temporary1472 g_outChars
	mov eax, [g_outChars]

 printChar$21:
	; BinaryAdd g_outChars g_outChars 1
	inc dword [g_outChars]

 printChar$22:
	; IntegralToIntegral £temporary1474 £temporary1472
	mov rbx, 4294967295
	and rax, rbx

 printChar$23:
	; BinaryAdd £temporary1476 outString £temporary1474
	mov rsi, [rbp + 29]
	add rsi, rax

 printChar$24:
	; Dereference £temporary1473 -> £temporary1476 £temporary1476 0

 printChar$25:
	; Assign £temporary1473 -> £temporary1476 c
	mov al, [rbp + 24]
	mov [rsi], al

 printChar$26:
	; Jump 28
	jmp printChar$28

 printChar$27:
	; BinaryAdd g_outChars g_outChars 1
	inc dword [g_outChars]

 printChar$28:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printChar$29:
	; FunctionEnd printChar

section .text

 printString:
	; Equal 33 s 0
	cmp qword [rbp + 24], 0
	je printString$33

 printString$1:
	; NotEqual 16 precision 0
	cmp dword [rbp + 32], 0
	jne printString$16

 printString$2:
	; Assign index 0
	mov dword [rbp + 36], 0

 printString$3:
	; IntegralToIntegral £temporary1482 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$4:
	; BinaryAdd £temporary1484 s £temporary1482
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$5:
	; Dereference £temporary1481 -> £temporary1484 £temporary1484 0

 printString$6:
	; Equal 57 £temporary1481 -> £temporary1484 0
	cmp byte [rsi], 0
	je printString$57

 printString$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$8:
	; IntegralToIntegral £temporary1488 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$9:
	; BinaryAdd £temporary1490 s £temporary1488
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$10:
	; Dereference £temporary1487 -> £temporary1490 £temporary1490 0

 printString$11:
	; Parameter 64 signedchar £temporary1487 -> £temporary1490
	mov al, [rsi]
	mov [rbp + 64], al

 printString$12:
	; Call 40 printChar 0
	mov qword [rbp + 40], printString$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printString$13:
	; PostCall 40

 printString$14:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 printString$15:
	; Jump 3
	jmp printString$3

 printString$16:
	; Assign index 0
	mov dword [rbp + 36], 0

 printString$17:
	; Assign £temporary1492 precision
	mov eax, [rbp + 32]

 printString$18:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 printString$19:
	; SignedLessThanEqual 57 £temporary1492 0
	cmp eax, 0
	jle printString$57

 printString$20:
	; IntegralToIntegral £temporary1495 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$21:
	; BinaryAdd £temporary1497 s £temporary1495
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$22:
	; Dereference £temporary1494 -> £temporary1497 £temporary1497 0

 printString$23:
	; Equal 57 £temporary1494 -> £temporary1497 0
	cmp byte [rsi], 0
	je printString$57

 printString$24:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$25:
	; IntegralToIntegral £temporary1502 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$26:
	; BinaryAdd £temporary1504 s £temporary1502
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$27:
	; Dereference £temporary1501 -> £temporary1504 £temporary1504 0

 printString$28:
	; Parameter 64 signedchar £temporary1501 -> £temporary1504
	mov al, [rsi]
	mov [rbp + 64], al

 printString$29:
	; Call 40 printChar 0
	mov qword [rbp + 40], printString$30
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printString$30:
	; PostCall 40

 printString$31:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 printString$32:
	; Jump 17
	jmp printString$17

 printString$33:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$34:
	; Parameter 60 signedchar 60
	mov byte [rbp + 60], 60

 printString$35:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$36
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$36:
	; PostCall 36

 printString$37:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$38:
	; Parameter 60 signedchar 78
	mov byte [rbp + 60], 78

 printString$39:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$40
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$40:
	; PostCall 36

 printString$41:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$42:
	; Parameter 60 signedchar 85
	mov byte [rbp + 60], 85

 printString$43:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$44
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$44:
	; PostCall 36

 printString$45:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$46:
	; Parameter 60 signedchar 76
	mov byte [rbp + 60], 76

 printString$47:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$48
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$48:
	; PostCall 36

 printString$49:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$50:
	; Parameter 60 signedchar 76
	mov byte [rbp + 60], 76

 printString$51:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$52
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$52:
	; PostCall 36

 printString$53:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$54:
	; Parameter 60 signedchar 62
	mov byte [rbp + 60], 62

 printString$55:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$56
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$56:
	; PostCall 36

 printString$57:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printString$58:
	; FunctionEnd printString

section .data

@4612$int8$10#:
	; Initializer Signed_Long_Int 10
	dq 10

section .data

@4615$int8$10#:
	; Initializer Signed_Long_Int 10
	dq 10

section .text

 printLongIntRec:
	; Equal 15 longValue 0
	cmp qword [rbp + 24], 0
	je printLongIntRec$15

 printLongIntRec$1:
	; SignedModulo £temporary1513 longValue 10
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [@4612$int8$10#]

 printLongIntRec$2:
	; IntegralToIntegral £temporary1514 £temporary1513
	cmp rdx, 0
	jge printLongIntRec$3
	neg rdx
	neg edx

 printLongIntRec$3:
	; Assign digit £temporary1514
	mov [rbp + 32], edx

 printLongIntRec$4:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongIntRec$5:
	; SignedDivide £temporary1515 longValue 10
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [@4615$int8$10#]

 printLongIntRec$6:
	; Parameter 60 signed long int £temporary1515
	mov [rbp + 60], rax

 printLongIntRec$7:
	; Call 36 printLongIntRec 0
	mov qword [rbp + 36], printLongIntRec$8
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printLongIntRec

 printLongIntRec$8:
	; PostCall 36

 printLongIntRec$9:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongIntRec$10:
	; BinaryAdd £temporary1517 digit 48
	mov eax, [rbp + 32]
	add eax, 48

 printLongIntRec$11:
	; IntegralToIntegral £temporary1518 £temporary1517
	cmp eax, 0
	jge printLongIntRec$12
	neg eax
	neg al

 printLongIntRec$12:
	; Parameter 60 signedchar £temporary1518
	mov [rbp + 60], al

 printLongIntRec$13:
	; Call 36 printChar 0
	mov qword [rbp + 36], printLongIntRec$14
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printLongIntRec$14:
	; PostCall 36

 printLongIntRec$15:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongIntRec$16:
	; FunctionEnd printLongIntRec

section .text

 printLongInt:
	; SignedGreaterThanEqual 8 longValue 0
	cmp qword [rbp + 24], 0
	jge printLongInt$8

 printLongInt$1:
	; UnarySubtract £temporary1521 longValue
	mov rax, [rbp + 24]
	neg rax

 printLongInt$2:
	; Assign longValue £temporary1521
	mov [rbp + 24], rax

 printLongInt$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$4:
	; Parameter 64 signedchar 45
	mov byte [rbp + 64], 45

 printLongInt$5:
	; Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$6
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$6:
	; PostCall 40

 printLongInt$7:
	; Jump 19
	jmp printLongInt$19

 printLongInt$8:
	; Equal 14 space 0
	cmp dword [rbp + 36], 0
	je printLongInt$14

 printLongInt$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$10:
	; Parameter 64 signedchar 32
	mov byte [rbp + 64], 32

 printLongInt$11:
	; Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$12:
	; PostCall 40

 printLongInt$13:
	; Jump 19
	jmp printLongInt$19

 printLongInt$14:
	; Equal 19 plus 0
	cmp dword [rbp + 32], 0
	je printLongInt$19

 printLongInt$15:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$16:
	; Parameter 64 signedchar 43
	mov byte [rbp + 64], 43

 printLongInt$17:
	; Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$18
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$18:
	; PostCall 40

 printLongInt$19:
	; NotEqual 25 longValue 0
	cmp qword [rbp + 24], 0
	jne printLongInt$25

 printLongInt$20:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$21:
	; Parameter 64 signedchar 48
	mov byte [rbp + 64], 48

 printLongInt$22:
	; Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$23
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$23:
	; PostCall 40

 printLongInt$24:
	; Jump 29
	jmp printLongInt$29

 printLongInt$25:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$26:
	; Parameter 64 signed long int longValue
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 printLongInt$27:
	; Call 40 printLongIntRec 0
	mov qword [rbp + 40], printLongInt$28
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printLongIntRec

 printLongInt$28:
	; PostCall 40

 printLongInt$29:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongInt$30:
	; FunctionEnd printLongInt

section .text

 digitToChar:
	; SignedGreaterThanEqual 5 digit 10
	cmp dword [rbp + 24], 10
	jge digitToChar$5

 digitToChar$1:
	; BinaryAdd £temporary1531 digit 48
	mov ebx, [rbp + 24]
	add ebx, 48

 digitToChar$2:
	; IntegralToIntegral £temporary1532 £temporary1531
	cmp ebx, 0
	jge digitToChar$3
	neg ebx
	neg bl

 digitToChar$3:
	; SetReturnValue

 digitToChar$4:
	; Return £temporary1532
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$5:
	; Equal 11 capital 0
	cmp dword [rbp + 28], 0
	je digitToChar$11

 digitToChar$6:
	; BinarySubtract £temporary1533 digit 10
	mov ebx, [rbp + 24]
	sub ebx, 10

 digitToChar$7:
	; BinaryAdd £temporary1534 £temporary1533 65
	add ebx, 65

 digitToChar$8:
	; IntegralToIntegral £temporary1535 £temporary1534
	cmp ebx, 0
	jge digitToChar$9
	neg ebx
	neg bl

 digitToChar$9:
	; SetReturnValue

 digitToChar$10:
	; Return £temporary1535
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$11:
	; BinarySubtract £temporary1536 digit 10
	mov ebx, [rbp + 24]
	sub ebx, 10

 digitToChar$12:
	; BinaryAdd £temporary1537 £temporary1536 97
	add ebx, 97

 digitToChar$13:
	; IntegralToIntegral £temporary1538 £temporary1537
	cmp ebx, 0
	jge digitToChar$14
	neg ebx
	neg bl

 digitToChar$14:
	; SetReturnValue

 digitToChar$15:
	; Return £temporary1538
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$16:
	; FunctionEnd digitToChar

section .text

 printUnsignedLongRec:
	; UnsignedLessThanEqual 22 unsignedValue 0
	cmp qword [rbp + 24], 0
	jbe printUnsignedLongRec$22

 printUnsignedLongRec$1:
	; UnsignedModulo £temporary1541 unsignedValue base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$2:
	; IntegralToIntegral £temporary1542 £temporary1541

 printUnsignedLongRec$3:
	; Assign digit £temporary1542
	mov [rbp + 44], edx

 printUnsignedLongRec$4:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLongRec$5:
	; UnsignedDivide £temporary1543 unsignedValue base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$6:
	; Parameter 72 unsignedlongint £temporary1543
	mov [rbp + 72], rax

 printUnsignedLongRec$7:
	; Parameter 80 unsignedlongint base
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 printUnsignedLongRec$8:
	; Parameter 88 signedint capital
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printUnsignedLongRec$9:
	; Call 48 printUnsignedLongRec 0
	mov qword [rbp + 48], printUnsignedLongRec$10
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printUnsignedLongRec

 printUnsignedLongRec$10:
	; PostCall 48

 printUnsignedLongRec$11:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLongRec$12:
	; Parameter 72 signedint digit
	mov eax, [rbp + 44]
	mov [rbp + 72], eax

 printUnsignedLongRec$13:
	; Parameter 76 signedint capital
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

 printUnsignedLongRec$14:
	; Call 48 digitToChar 0
	mov qword [rbp + 48], printUnsignedLongRec$15
	mov [rbp + 56], rbp
	add rbp, 48
	jmp digitToChar

 printUnsignedLongRec$15:
	; PostCall 48

 printUnsignedLongRec$16:
	; GetReturnValue £temporary1545

 printUnsignedLongRec$17:
	; Assign c £temporary1545
	mov [rbp + 48], bl

 printUnsignedLongRec$18:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLongRec$19:
	; Parameter 73 signedchar c
	mov al, [rbp + 48]
	mov [rbp + 73], al

 printUnsignedLongRec$20:
	; Call 49 printChar 0
	mov qword [rbp + 49], printUnsignedLongRec$21
	mov [rbp + 57], rbp
	add rbp, 49
	jmp printChar

 printUnsignedLongRec$21:
	; PostCall 49

 printUnsignedLongRec$22:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printUnsignedLongRec$23:
	; FunctionEnd printUnsignedLongRec

section .text

 printUnsignedLong:
	; Equal 5 plus 0
	cmp dword [rbp + 32], 0
	je printUnsignedLong$5

 printUnsignedLong$1:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$2:
	; Parameter 80 signedchar 43
	mov byte [rbp + 80], 43

 printUnsignedLong$3:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$4
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$4:
	; PostCall 56

 printUnsignedLong$5:
	; Equal 10 space 0
	cmp dword [rbp + 36], 0
	je printUnsignedLong$10

 printUnsignedLong$6:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$7:
	; Parameter 80 signedchar 32
	mov byte [rbp + 80], 32

 printUnsignedLong$8:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$9
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$9:
	; PostCall 56

 printUnsignedLong$10:
	; Equal 29 grid 0
	cmp dword [rbp + 40], 0
	je printUnsignedLong$29

 printUnsignedLong$11:
	; NotEqual 16 base 8
	cmp qword [rbp + 44], 8
	jne printUnsignedLong$16

 printUnsignedLong$12:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$13:
	; Parameter 80 signedchar 48
	mov byte [rbp + 80], 48

 printUnsignedLong$14:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$15
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$15:
	; PostCall 56

 printUnsignedLong$16:
	; NotEqual 29 base 16
	cmp qword [rbp + 44], 16
	jne printUnsignedLong$29

 printUnsignedLong$17:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$18:
	; Parameter 80 signedchar 48
	mov byte [rbp + 80], 48

 printUnsignedLong$19:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$20:
	; PostCall 56

 printUnsignedLong$21:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$22:
	; Equal 25 capital 0
	cmp dword [rbp + 52], 0
	je printUnsignedLong$25

 printUnsignedLong$23:
	; Assign £temporary1556 88
	mov al, 88

 printUnsignedLong$24:
	; Jump 26
	jmp printUnsignedLong$26

 printUnsignedLong$25:
	; Assign £temporary1556 120
	mov al, 120

 printUnsignedLong$26:
	; Parameter 80 signedchar £temporary1556
	mov [rbp + 80], al

 printUnsignedLong$27:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$28
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$28:
	; PostCall 56

 printUnsignedLong$29:
	; NotEqual 35 unsignedValue 0
	cmp qword [rbp + 24], 0
	jne printUnsignedLong$35

 printUnsignedLong$30:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$31:
	; Parameter 80 signedchar 48
	mov byte [rbp + 80], 48

 printUnsignedLong$32:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$33
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$33:
	; PostCall 56

 printUnsignedLong$34:
	; Jump 41
	jmp printUnsignedLong$41

 printUnsignedLong$35:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$36:
	; Parameter 80 unsignedlongint unsignedValue
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 printUnsignedLong$37:
	; Parameter 88 unsignedlongint base
	mov rax, [rbp + 44]
	mov [rbp + 88], rax

 printUnsignedLong$38:
	; Parameter 96 signedint capital
	mov eax, [rbp + 52]
	mov [rbp + 96], eax

 printUnsignedLong$39:
	; Call 56 printUnsignedLongRec 0
	mov qword [rbp + 56], printUnsignedLong$40
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printUnsignedLongRec

 printUnsignedLong$40:
	; PostCall 56

 printUnsignedLong$41:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printUnsignedLong$42:
	; FunctionEnd printUnsignedLong

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .data

@4726$float8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .text

 printLongDoubleFraction:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$1:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$2:
	; FloatingToIntegral £temporary1562 longDoubleValue
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 printLongDoubleFraction$3:
	; IntegralToFloating £temporary1563 £temporary1562
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 printLongDoubleFraction$4:
	; BinarySubtract £temporary1564 longDoubleValue £temporary1563
	fsub

 printLongDoubleFraction$5:
	; PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoubleFraction$6:
	; NotEqual 8 precision 0
	cmp dword [rbp + 36], 0
	jne printLongDoubleFraction$8

 printLongDoubleFraction$7:
	; Assign precision 6
	mov dword [rbp + 36], 6

 printLongDoubleFraction$8:
	; NotEqual 10 grid 0
	cmp dword [rbp + 32], 0
	jne printLongDoubleFraction$10

 printLongDoubleFraction$9:
	; SignedLessThanEqual 14 precision 0
	cmp dword [rbp + 36], 0
	jle printLongDoubleFraction$14

 printLongDoubleFraction$10:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleFraction$11:
	; Parameter 64 signedchar 46
	mov byte [rbp + 64], 46

 printLongDoubleFraction$12:
	; Call 40 printChar 0
	mov qword [rbp + 40], printLongDoubleFraction$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongDoubleFraction$13:
	; PostCall 40

 printLongDoubleFraction$14:
	; Assign £temporary1570 precision
	mov eax, [rbp + 36]

 printLongDoubleFraction$15:
	; BinarySubtract precision precision 1
	dec dword [rbp + 36]

 printLongDoubleFraction$16:
	; SignedLessThanEqual 35 £temporary1570 0
	cmp eax, 0
	jle printLongDoubleFraction$35

 printLongDoubleFraction$17:
	; PushFloat 10.0
	fld qword [@4726$float8$10.0#]

 printLongDoubleFraction$18:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$19:
	; SignedMultiply £temporary1572 10.0 longDoubleValue
	fmul

 printLongDoubleFraction$20:
	; PopFloat longDoubleValue10
	fstp qword [rbp + 40]

 printLongDoubleFraction$21:
	; PushFloat longDoubleValue10
	fld qword [rbp + 40]

 printLongDoubleFraction$22:
	; FloatingToIntegral £temporary1573 longDoubleValue10
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printLongDoubleFraction$23:
	; Assign digitValue £temporary1573
	mov [rbp + 48], eax

 printLongDoubleFraction$24:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleFraction$25:
	; BinaryAdd £temporary1574 digitValue 48
	mov eax, [rbp + 48]
	add eax, 48

 printLongDoubleFraction$26:
	; IntegralToIntegral £temporary1575 £temporary1574
	cmp eax, 0
	jge printLongDoubleFraction$27
	neg eax
	neg al

 printLongDoubleFraction$27:
	; Parameter 76 signedchar £temporary1575
	mov [rbp + 76], al

 printLongDoubleFraction$28:
	; Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleFraction$29
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleFraction$29:
	; PostCall 52

 printLongDoubleFraction$30:
	; PushFloat longDoubleValue10
	fld qword [rbp + 40]

 printLongDoubleFraction$31:
	; IntegralToFloating £temporary1577 digitValue
	fild dword [rbp + 48]

 printLongDoubleFraction$32:
	; BinarySubtract £temporary1578 longDoubleValue10 £temporary1577
	fsub

 printLongDoubleFraction$33:
	; PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoubleFraction$34:
	; Jump 14
	jmp printLongDoubleFraction$14

 printLongDoubleFraction$35:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongDoubleFraction$36:
	; FunctionEnd printLongDoubleFraction

section .text

 printLongDoublePlain:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$1:
	; PushFloat 0.0
	fldz

 printLongDoublePlain$2:
	; SignedGreaterThanEqual 12 longDoubleValue 0.0
	fcompp
	fstsw ax
	sahf
	jbe printLongDoublePlain$12

 printLongDoublePlain$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoublePlain$4:
	; Parameter 72 signedchar 45
	mov byte [rbp + 72], 45

 printLongDoublePlain$5:
	; Call 48 printChar 0
	mov qword [rbp + 48], printLongDoublePlain$6
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printChar

 printLongDoublePlain$6:
	; PostCall 48

 printLongDoublePlain$7:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$8:
	; UnarySubtract £temporary1581 longDoubleValue
	fchs

 printLongDoublePlain$9:
	; PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoublePlain$10:
	; Assign plus 0
	mov dword [rbp + 32], 0

 printLongDoublePlain$11:
	; Assign space 0
	mov dword [rbp + 36], 0

 printLongDoublePlain$12:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$13:
	; FloatingToIntegral £temporary1582 longDoubleValue
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 printLongDoublePlain$14:
	; Assign longValue £temporary1582
	mov [rbp + 48], rax

 printLongDoublePlain$15:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoublePlain$16:
	; Parameter 80 signed long int longValue
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 printLongDoublePlain$17:
	; Parameter 88 signedint plus
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

 printLongDoublePlain$18:
	; Parameter 92 signedint space
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 printLongDoublePlain$19:
	; Call 56 printLongInt 0
	mov qword [rbp + 56], printLongDoublePlain$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongInt

 printLongDoublePlain$20:
	; PostCall 56

 printLongDoublePlain$21:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$22:
	; IntegralToFloating £temporary1584 longValue
	fild qword [rbp + 48]

 printLongDoublePlain$23:
	; BinarySubtract £temporary1585 longDoubleValue £temporary1584
	fsub

 printLongDoublePlain$24:
	; PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoublePlain$25:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoublePlain$26:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$27:
	; Parameter 80 longdouble longDoubleValue
	fstp qword [rbp + 80]

 printLongDoublePlain$28:
	; Parameter 88 signedint grid
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printLongDoublePlain$29:
	; Parameter 92 signedint precision
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

 printLongDoublePlain$30:
	; Call 56 printLongDoubleFraction 0
	mov qword [rbp + 56], printLongDoublePlain$31
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongDoubleFraction

 printLongDoublePlain$31:
	; PostCall 56

 printLongDoublePlain$32:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongDoublePlain$33:
	; FunctionEnd printLongDoublePlain

section .data

@4780$float8$10.0#:
	; Initializer Double 10.0
	dq 10.0

section .text

 printLongDoubleExpo:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$1:
	; PushFloat 0.0
	fldz

 printLongDoubleExpo$2:
	; NotEqual 27 value 0.0
	fcompp
	fstsw ax
	sahf
	jne printLongDoubleExpo$27

 printLongDoubleExpo$3:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$4:
	; Parameter 76 signedchar 48
	mov byte [rbp + 76], 48

 printLongDoubleExpo$5:
	; Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$6
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$6:
	; PostCall 52

 printLongDoubleExpo$7:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$8:
	; PushFloat 0.0
	fldz

 printLongDoubleExpo$9:
	; Parameter 76 longdouble 0.0
	fstp qword [rbp + 76]

 printLongDoubleExpo$10:
	; Parameter 84 signedint precision
	mov eax, [rbp + 44]
	mov [rbp + 84], eax

 printLongDoubleExpo$11:
	; Parameter 88 signedint grid
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printLongDoubleExpo$12:
	; Call 52 printLongDoubleFraction 0
	mov qword [rbp + 52], printLongDoubleExpo$13
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printLongDoubleFraction

 printLongDoubleExpo$13:
	; PostCall 52

 printLongDoubleExpo$14:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$15:
	; Equal 18 capital 0
	cmp dword [rbp + 48], 0
	je printLongDoubleExpo$18

 printLongDoubleExpo$16:
	; Assign £temporary1592 69
	mov al, 69

 printLongDoubleExpo$17:
	; Jump 19
	jmp printLongDoubleExpo$19

 printLongDoubleExpo$18:
	; Assign £temporary1592 101
	mov al, 101

 printLongDoubleExpo$19:
	; Parameter 76 signedchar £temporary1592
	mov [rbp + 76], al

 printLongDoubleExpo$20:
	; Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$21
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$21:
	; PostCall 52

 printLongDoubleExpo$22:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$23:
	; Parameter 76 signedchar 48
	mov byte [rbp + 76], 48

 printLongDoubleExpo$24:
	; Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$25
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$25:
	; PostCall 52

 printLongDoubleExpo$26:
	; Jump 80
	jmp printLongDoubleExpo$80

 printLongDoubleExpo$27:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$28:
	; PushFloat 0.0
	fldz

 printLongDoubleExpo$29:
	; SignedGreaterThanEqual 37 value 0.0
	fcompp
	fstsw ax
	sahf
	jbe printLongDoubleExpo$37

 printLongDoubleExpo$30:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$31:
	; Parameter 76 signedchar 45
	mov byte [rbp + 76], 45

 printLongDoubleExpo$32:
	; Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$33
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$33:
	; PostCall 52

 printLongDoubleExpo$34:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$35:
	; UnarySubtract £temporary1597 value
	fchs

 printLongDoubleExpo$36:
	; PopFloat value
	fstp qword [rbp + 24]

 printLongDoubleExpo$37:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$38:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$39:
	; Parameter 76 double value
	fstp qword [rbp + 76]

 printLongDoubleExpo$40:
	; Call 52 log10 0
	mov qword [rbp + 52], printLongDoubleExpo$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp log10

 printLongDoubleExpo$41:
	; PostCall 52

 printLongDoubleExpo$42:
	; GetReturnValue £temporary1598

 printLongDoubleExpo$43:
	; FloatingToIntegral £temporary1599 £temporary1598
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printLongDoubleExpo$44:
	; Assign expo £temporary1599
	mov [rbp + 52], eax

 printLongDoubleExpo$45:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$46:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 56]

 printLongDoubleExpo$47:
	; PushFloat 10.0
	fld qword [@4780$float8$10.0#]

 printLongDoubleExpo$48:
	; Parameter 80 double 10.0
	fstp qword [rbp + 88]

 printLongDoubleExpo$49:
	; IntegralToFloating £temporary1600 expo
	fild dword [rbp + 52]

 printLongDoubleExpo$50:
	; Parameter 88 double £temporary1600
	fstp qword [rbp + 96]

 printLongDoubleExpo$51:
	; Call 56 pow 0
	mov qword [rbp + 64], printLongDoubleExpo$52
	mov [rbp + 72], rbp
	add rbp, 64
	jmp pow

 printLongDoubleExpo$52:
	; PostCall 56
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 64]

 printLongDoubleExpo$53:
	; GetReturnValue £temporary1601

 printLongDoubleExpo$54:
	; SignedDivide £temporary1602 value £temporary1601
	fdiv

 printLongDoubleExpo$55:
	; PopFloat value
	fstp qword [rbp + 24]

 printLongDoubleExpo$56:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$57:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$58:
	; Parameter 80 longdouble value
	fstp qword [rbp + 80]

 printLongDoubleExpo$59:
	; Parameter 88 signedint plus
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

 printLongDoubleExpo$60:
	; Parameter 92 signedint space
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 printLongDoubleExpo$61:
	; Parameter 96 signedint grid
	mov eax, [rbp + 40]
	mov [rbp + 96], eax

 printLongDoubleExpo$62:
	; Parameter 100 signedint precision
	mov eax, [rbp + 44]
	mov [rbp + 100], eax

 printLongDoubleExpo$63:
	; Call 56 printLongDoublePlain 0
	mov qword [rbp + 56], printLongDoubleExpo$64
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongDoublePlain

 printLongDoubleExpo$64:
	; PostCall 56

 printLongDoubleExpo$65:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$66:
	; Equal 69 capital 0
	cmp dword [rbp + 48], 0
	je printLongDoubleExpo$69

 printLongDoubleExpo$67:
	; Assign £temporary1605 69
	mov al, 69

 printLongDoubleExpo$68:
	; Jump 70
	jmp printLongDoubleExpo$70

 printLongDoubleExpo$69:
	; Assign £temporary1605 101
	mov al, 101

 printLongDoubleExpo$70:
	; Parameter 80 signedchar £temporary1605
	mov [rbp + 80], al

 printLongDoubleExpo$71:
	; Call 56 printChar 0
	mov qword [rbp + 56], printLongDoubleExpo$72
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printLongDoubleExpo$72:
	; PostCall 56

 printLongDoubleExpo$73:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$74:
	; IntegralToIntegral £temporary1607 expo
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printLongDoubleExpo$75
	neg eax
	neg rax

 printLongDoubleExpo$75:
	; Parameter 80 signed long int £temporary1607
	mov [rbp + 80], rax

 printLongDoubleExpo$76:
	; Parameter 88 signedint 1
	mov dword [rbp + 88], 1

 printLongDoubleExpo$77:
	; Parameter 92 signedint 0
	mov dword [rbp + 92], 0

 printLongDoubleExpo$78:
	; Call 56 printLongInt 0
	mov qword [rbp + 56], printLongDoubleExpo$79
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongInt

 printLongDoubleExpo$79:
	; PostCall 56

 printLongDoubleExpo$80:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongDoubleExpo$81:
	; FunctionEnd printLongDoubleExpo

section .text

 checkWidthAndPrecision:
	; Equal 12 widthPtr 0
	cmp qword [rbp + 32], 0
	je checkWidthAndPrecision$12

 checkWidthAndPrecision$1:
	; Dereference £temporary1615 -> widthPtr widthPtr 0
	mov rsi, [rbp + 32]

 checkWidthAndPrecision$2:
	; NotEqual 12 £temporary1615 -> widthPtr -1
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$12

 checkWidthAndPrecision$3:
	; Dereference £temporary1618 -> widthPtr widthPtr 0
	mov rsi, [rbp + 32]

 checkWidthAndPrecision$4:
	; BinaryAdd £temporary1620 arg_list 4
	mov rax, [rbp + 24]
	add rax, 4

 checkWidthAndPrecision$5:
	; IntegralToIntegral £temporary1621 £temporary1620

 checkWidthAndPrecision$6:
	; IntegralToIntegral £temporary1622 £temporary1621
	mov rbx, 4294967295
	and rax, rbx

 checkWidthAndPrecision$7:
	; Assign arg_list £temporary1622
	mov [rbp + 24], rax

 checkWidthAndPrecision$8:
	; BinarySubtract £temporary1623 arg_list 4
	mov rdi, [rbp + 24]
	sub rdi, 4

 checkWidthAndPrecision$9:
	; IntegralToIntegral £temporary1625 £temporary1623

 checkWidthAndPrecision$10:
	; Dereference £temporary1626 -> £temporary1625 £temporary1625 0

 checkWidthAndPrecision$11:
	; Assign £temporary1618 -> widthPtr £temporary1626 -> £temporary1625
	mov eax, [rdi]
	mov [rsi], eax

 checkWidthAndPrecision$12:
	; Equal 24 precisionPtr 0
	cmp qword [rbp + 40], 0
	je checkWidthAndPrecision$24

 checkWidthAndPrecision$13:
	; Dereference £temporary1628 -> precisionPtr precisionPtr 0
	mov rsi, [rbp + 40]

 checkWidthAndPrecision$14:
	; NotEqual 24 £temporary1628 -> precisionPtr -1
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$24

 checkWidthAndPrecision$15:
	; Dereference £temporary1631 -> precisionPtr precisionPtr 0
	mov rsi, [rbp + 40]

 checkWidthAndPrecision$16:
	; BinaryAdd £temporary1633 arg_list 4
	mov rax, [rbp + 24]
	add rax, 4

 checkWidthAndPrecision$17:
	; IntegralToIntegral £temporary1634 £temporary1633

 checkWidthAndPrecision$18:
	; IntegralToIntegral £temporary1635 £temporary1634
	mov rbx, 4294967295
	and rax, rbx

 checkWidthAndPrecision$19:
	; Assign arg_list £temporary1635
	mov [rbp + 24], rax

 checkWidthAndPrecision$20:
	; BinarySubtract £temporary1636 arg_list 4
	mov rdi, [rbp + 24]
	sub rdi, 4

 checkWidthAndPrecision$21:
	; IntegralToIntegral £temporary1638 £temporary1636

 checkWidthAndPrecision$22:
	; Dereference £temporary1639 -> £temporary1638 £temporary1638 0

 checkWidthAndPrecision$23:
	; Assign £temporary1631 -> precisionPtr £temporary1639 -> £temporary1638
	mov eax, [rdi]
	mov [rsi], eax

 checkWidthAndPrecision$24:
	; SetReturnValue

 checkWidthAndPrecision$25:
	; Return arg_list
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 checkWidthAndPrecision$26:
	; FunctionEnd checkWidthAndPrecision

section .text

 printArgument:
	; Dereference £temporary1640 -> format format 0
	mov rsi, [rbp + 24]

 printArgument$1:
	; Assign c £temporary1640 -> format
	mov al, [rsi]
	mov [rbp + 88], al

 printArgument$2:
	; Case 21 c 100
	mov al, [rbp + 88]
	cmp al, 100
	je printArgument$21

 printArgument$3:
	; Case 21 c 105
	cmp al, 105
	je printArgument$21

 printArgument$4:
	; Case 82 c 99
	cmp al, 99
	je printArgument$82

 printArgument$5:
	; Case 105 c 115
	cmp al, 115
	je printArgument$105

 printArgument$6:
	; Case 128 c 88
	cmp al, 88
	je printArgument$128

 printArgument$7:
	; Case 128 c 120
	cmp al, 120
	je printArgument$128

 printArgument$8:
	; Case 128 c 98
	cmp al, 98
	je printArgument$128

 printArgument$9:
	; Case 128 c 111
	cmp al, 111
	je printArgument$128

 printArgument$10:
	; Case 128 c 117
	cmp al, 117
	je printArgument$128

 printArgument$11:
	; Case 195 c 71
	cmp al, 71
	je printArgument$195

 printArgument$12:
	; Case 195 c 103
	cmp al, 103
	je printArgument$195

 printArgument$13:
	; Case 195 c 69
	cmp al, 69
	je printArgument$195

 printArgument$14:
	; Case 195 c 101
	cmp al, 101
	je printArgument$195

 printArgument$15:
	; Case 195 c 102
	cmp al, 102
	je printArgument$195

 printArgument$16:
	; Case 327 c 112
	cmp al, 112
	je printArgument$327

 printArgument$17:
	; Case 355 c 110
	cmp al, 110
	je printArgument$355

 printArgument$18:
	; Case 383 c 37
	cmp al, 37
	je printArgument$383

 printArgument$19:
	; CaseEnd c

 printArgument$20:
	; Jump 396
	jmp printArgument$396

 printArgument$21:
	; Equal 33 shortInt 0
	cmp dword [rbp + 64], 0
	je printArgument$33

 printArgument$22:
	; BinaryAdd £temporary1642 arg_list 4
	mov rax, [rbp + 32]
	add rax, 4

 printArgument$23:
	; IntegralToIntegral £temporary1643 £temporary1642

 printArgument$24:
	; IntegralToIntegral £temporary1644 £temporary1643
	mov rbx, 4294967295
	and rax, rbx

 printArgument$25:
	; Assign arg_list £temporary1644
	mov [rbp + 32], rax

 printArgument$26:
	; BinarySubtract £temporary1645 arg_list 4
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$27:
	; IntegralToIntegral £temporary1647 £temporary1645

 printArgument$28:
	; Dereference £temporary1648 -> £temporary1647 £temporary1647 0

 printArgument$29:
	; IntegralToIntegral £temporary1649 £temporary1648 -> £temporary1647
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$30
	neg eax
	neg ax

 printArgument$30:
	; IntegralToIntegral £temporary1650 £temporary1649
	mov rbx, 65535
	and rax, rbx
	cmp ax, 0
	jge printArgument$31
	neg ax
	neg rax

 printArgument$31:
	; Assign longValue £temporary1650
	mov [rbp + 114], rax

 printArgument$32:
	; Jump 52
	jmp printArgument$52

 printArgument$33:
	; Equal 43 longInt 0
	cmp dword [rbp + 68], 0
	je printArgument$43

 printArgument$34:
	; BinaryAdd £temporary1652 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 printArgument$35:
	; IntegralToIntegral £temporary1653 £temporary1652

 printArgument$36:
	; IntegralToIntegral £temporary1654 £temporary1653
	mov rbx, 4294967295
	and rax, rbx

 printArgument$37:
	; Assign arg_list £temporary1654
	mov [rbp + 32], rax

 printArgument$38:
	; BinarySubtract £temporary1655 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$39:
	; IntegralToIntegral £temporary1657 £temporary1655

 printArgument$40:
	; Dereference £temporary1658 -> £temporary1657 £temporary1657 0

 printArgument$41:
	; Assign longValue £temporary1658 -> £temporary1657
	mov rax, [rsi]
	mov [rbp + 114], rax

 printArgument$42:
	; Jump 52
	jmp printArgument$52

 printArgument$43:
	; BinaryAdd £temporary1660 arg_list 4
	mov rax, [rbp + 32]
	add rax, 4

 printArgument$44:
	; IntegralToIntegral £temporary1661 £temporary1660

 printArgument$45:
	; IntegralToIntegral £temporary1662 £temporary1661
	mov rbx, 4294967295
	and rax, rbx

 printArgument$46:
	; Assign arg_list £temporary1662
	mov [rbp + 32], rax

 printArgument$47:
	; BinarySubtract £temporary1663 arg_list 4
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$48:
	; IntegralToIntegral £temporary1665 £temporary1663

 printArgument$49:
	; Dereference £temporary1666 -> £temporary1665 £temporary1665 0

 printArgument$50:
	; IntegralToIntegral £temporary1667 £temporary1666 -> £temporary1665
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printArgument$51
	neg eax
	neg rax

 printArgument$51:
	; Assign longValue £temporary1667
	mov [rbp + 114], rax

 printArgument$52:
	; Equal 59 negativePtr 0
	cmp qword [rbp + 80], 0
	je printArgument$59

 printArgument$53:
	; Dereference £temporary1671 -> negativePtr negativePtr 0
	mov rsi, [rbp + 80]

 printArgument$54:
	; SignedGreaterThanEqual 57 longValue 0
	cmp qword [rbp + 114], 0
	jge printArgument$57

 printArgument$55:
	; Assign £temporary1673 1
	mov eax, 1

 printArgument$56:
	; Jump 58
	jmp printArgument$58

 printArgument$57:
	; Assign £temporary1673 0
	mov eax, 0

 printArgument$58:
	; Assign £temporary1671 -> negativePtr £temporary1673
	mov [rsi], eax

 printArgument$59:
	; NotEqual 66 sign 0
	cmp dword [rbp + 76], 0
	jne printArgument$66

 printArgument$60:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$61:
	; Parameter 146 signed long int longValue
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$62:
	; Call 122 labs 0
	mov qword [rbp + 122], printArgument$63
	mov [rbp + 130], rbp
	add rbp, 122
	jmp labs

 printArgument$63:
	; PostCall 122

 printArgument$64:
	; GetReturnValue £temporary1676

 printArgument$65:
	; Assign longValue £temporary1676
	mov [rbp + 114], rbx

 printArgument$66:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$67:
	; Parameter 146 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

 printArgument$68:
	; Parameter 154 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

 printArgument$69:
	; Address £temporary1677 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$70:
	; Parameter 162 pointer £temporary1677
	mov [rbp + 162], rsi

 printArgument$71:
	; Call 122 checkWidthAndPrecision 0
	mov qword [rbp + 122], printArgument$72
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$72:
	; PostCall 122

 printArgument$73:
	; GetReturnValue £temporary1678

 printArgument$74:
	; Assign arg_list £temporary1678
	mov [rbp + 32], rbx

 printArgument$75:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$76:
	; Parameter 146 signed long int longValue
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$77:
	; Parameter 154 signedint plus
	mov eax, [rbp + 40]
	mov [rbp + 154], eax

 printArgument$78:
	; Parameter 158 signedint space
	mov eax, [rbp + 44]
	mov [rbp + 158], eax

 printArgument$79:
	; Call 122 printLongInt 0
	mov qword [rbp + 122], printArgument$80
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printLongInt

 printArgument$80:
	; PostCall 122

 printArgument$81:
	; Jump 396
	jmp printArgument$396

 printArgument$82:
	; BinaryAdd £temporary1681 arg_list 4
	mov rax, [rbp + 32]
	add rax, 4

 printArgument$83:
	; IntegralToIntegral £temporary1682 £temporary1681

 printArgument$84:
	; IntegralToIntegral £temporary1683 £temporary1682
	mov rbx, 4294967295
	and rax, rbx

 printArgument$85:
	; Assign arg_list £temporary1683
	mov [rbp + 32], rax

 printArgument$86:
	; BinarySubtract £temporary1684 arg_list 4
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$87:
	; IntegralToIntegral £temporary1686 £temporary1684

 printArgument$88:
	; Dereference £temporary1687 -> £temporary1686 £temporary1686 0

 printArgument$89:
	; IntegralToIntegral £temporary1688 £temporary1687 -> £temporary1686
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$90
	neg eax
	neg al

 printArgument$90:
	; Assign charValue £temporary1688
	mov [rbp + 89], al

 printArgument$91:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$92:
	; Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$93:
	; Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$94:
	; Address £temporary1689 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$95:
	; Parameter 154 pointer £temporary1689
	mov [rbp + 154], rsi

 printArgument$96:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$97
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$97:
	; PostCall 114

 printArgument$98:
	; GetReturnValue £temporary1690

 printArgument$99:
	; Assign arg_list £temporary1690
	mov [rbp + 32], rbx

 printArgument$100:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$101:
	; Parameter 138 signedchar charValue
	mov al, [rbp + 89]
	mov [rbp + 138], al

 printArgument$102:
	; Call 114 printChar 0
	mov qword [rbp + 114], printArgument$103
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

 printArgument$103:
	; PostCall 114

 printArgument$104:
	; Jump 396
	jmp printArgument$396

 printArgument$105:
	; BinaryAdd £temporary1693 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 printArgument$106:
	; IntegralToIntegral £temporary1694 £temporary1693

 printArgument$107:
	; IntegralToIntegral £temporary1695 £temporary1694
	mov rbx, 4294967295
	and rax, rbx

 printArgument$108:
	; Assign arg_list £temporary1695
	mov [rbp + 32], rax

 printArgument$109:
	; BinarySubtract £temporary1696 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$110:
	; IntegralToIntegral £temporary1698 £temporary1696

 printArgument$111:
	; Dereference £temporary1699 -> £temporary1698 £temporary1698 0

 printArgument$112:
	; Assign stringValue £temporary1699 -> £temporary1698
	mov rax, [rsi]
	mov [rbp + 114], rax

 printArgument$113:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$114:
	; Parameter 146 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

 printArgument$115:
	; Parameter 154 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

 printArgument$116:
	; Address £temporary1700 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$117:
	; Parameter 162 pointer £temporary1700
	mov [rbp + 162], rsi

 printArgument$118:
	; Call 122 checkWidthAndPrecision 0
	mov qword [rbp + 122], printArgument$119
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$119:
	; PostCall 122

 printArgument$120:
	; GetReturnValue £temporary1701

 printArgument$121:
	; Assign arg_list £temporary1701
	mov [rbp + 32], rbx

 printArgument$122:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$123:
	; Parameter 146 pointer stringValue
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$124:
	; Parameter 154 signedint precision
	mov eax, [rbp + 60]
	mov [rbp + 154], eax

 printArgument$125:
	; Call 122 printString 0
	mov qword [rbp + 122], printArgument$126
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printString

 printArgument$126:
	; PostCall 122

 printArgument$127:
	; Jump 396
	jmp printArgument$396

 printArgument$128:
	; NotEqual 131 c 117
	cmp byte [rbp + 88], 117
	jne printArgument$131

 printArgument$129:
	; Assign £temporary1708 10
	mov rax, 10

 printArgument$130:
	; Jump 138
	jmp printArgument$138

 printArgument$131:
	; NotEqual 134 c 111
	cmp byte [rbp + 88], 111
	jne printArgument$134

 printArgument$132:
	; Assign £temporary1708 8
	mov rax, 8

 printArgument$133:
	; Jump 138
	jmp printArgument$138

 printArgument$134:
	; NotEqual 137 c 98
	cmp byte [rbp + 88], 98
	jne printArgument$137

 printArgument$135:
	; Assign £temporary1708 2
	mov rax, 2

 printArgument$136:
	; Jump 138
	jmp printArgument$138

 printArgument$137:
	; Assign £temporary1708 16
	mov rax, 16

 printArgument$138:
	; Assign base £temporary1708
	mov [rbp + 114], rax

 printArgument$139:
	; Equal 151 shortInt 0
	cmp dword [rbp + 64], 0
	je printArgument$151

 printArgument$140:
	; BinaryAdd £temporary1710 arg_list 4
	mov rax, [rbp + 32]
	add rax, 4

 printArgument$141:
	; IntegralToIntegral £temporary1711 £temporary1710

 printArgument$142:
	; IntegralToIntegral £temporary1712 £temporary1711
	mov rbx, 4294967295
	and rax, rbx

 printArgument$143:
	; Assign arg_list £temporary1712
	mov [rbp + 32], rax

 printArgument$144:
	; BinarySubtract £temporary1713 arg_list 4
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$145:
	; IntegralToIntegral £temporary1715 £temporary1713

 printArgument$146:
	; Dereference £temporary1716 -> £temporary1715 £temporary1715 0

 printArgument$147:
	; IntegralToIntegral £temporary1717 £temporary1716 -> £temporary1715
	mov eax, [rsi]

 printArgument$148:
	; IntegralToIntegral £temporary1718 £temporary1717
	mov rbx, 65535
	and rax, rbx

 printArgument$149:
	; Assign value £temporary1718
	mov [rbp + 122], rax

 printArgument$150:
	; Jump 170
	jmp printArgument$170

 printArgument$151:
	; Equal 161 longInt 0
	cmp dword [rbp + 68], 0
	je printArgument$161

 printArgument$152:
	; BinaryAdd £temporary1720 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 printArgument$153:
	; IntegralToIntegral £temporary1721 £temporary1720

 printArgument$154:
	; IntegralToIntegral £temporary1722 £temporary1721
	mov rbx, 4294967295
	and rax, rbx

 printArgument$155:
	; Assign arg_list £temporary1722
	mov [rbp + 32], rax

 printArgument$156:
	; BinarySubtract £temporary1723 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$157:
	; IntegralToIntegral £temporary1725 £temporary1723

 printArgument$158:
	; Dereference £temporary1726 -> £temporary1725 £temporary1725 0

 printArgument$159:
	; Assign value £temporary1726 -> £temporary1725
	mov rax, [rsi]
	mov [rbp + 122], rax

 printArgument$160:
	; Jump 170
	jmp printArgument$170

 printArgument$161:
	; BinaryAdd £temporary1728 arg_list 4
	mov rax, [rbp + 32]
	add rax, 4

 printArgument$162:
	; IntegralToIntegral £temporary1729 £temporary1728

 printArgument$163:
	; IntegralToIntegral £temporary1730 £temporary1729
	mov rbx, 4294967295
	and rax, rbx

 printArgument$164:
	; Assign arg_list £temporary1730
	mov [rbp + 32], rax

 printArgument$165:
	; BinarySubtract £temporary1731 arg_list 4
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$166:
	; IntegralToIntegral £temporary1733 £temporary1731

 printArgument$167:
	; Dereference £temporary1734 -> £temporary1733 £temporary1733 0

 printArgument$168:
	; IntegralToIntegral £temporary1735 £temporary1734 -> £temporary1733
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx

 printArgument$169:
	; Assign value £temporary1735
	mov [rbp + 122], rax

 printArgument$170:
	; PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$171:
	; Parameter 154 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 154], rax

 printArgument$172:
	; Parameter 162 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 162], rax

 printArgument$173:
	; Address £temporary1738 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$174:
	; Parameter 170 pointer £temporary1738
	mov [rbp + 170], rsi

 printArgument$175:
	; Call 130 checkWidthAndPrecision 0
	mov qword [rbp + 130], printArgument$176
	mov [rbp + 138], rbp
	add rbp, 130
	jmp checkWidthAndPrecision

 printArgument$176:
	; PostCall 130

 printArgument$177:
	; GetReturnValue £temporary1739

 printArgument$178:
	; Assign arg_list £temporary1739
	mov [rbp + 32], rbx

 printArgument$179:
	; PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$180:
	; Parameter 154 unsignedlongint value
	mov rax, [rbp + 122]
	mov [rbp + 154], rax

 printArgument$181:
	; Parameter 162 signedint plus
	mov eax, [rbp + 40]
	mov [rbp + 162], eax

 printArgument$182:
	; Parameter 166 signedint space
	mov eax, [rbp + 44]
	mov [rbp + 166], eax

 printArgument$183:
	; Parameter 170 signedint grid
	mov eax, [rbp + 48]
	mov [rbp + 170], eax

 printArgument$184:
	; Parameter 174 unsignedlongint base
	mov rax, [rbp + 114]
	mov [rbp + 174], rax

 printArgument$185:
	; PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$186:
	; IntegralToIntegral £temporary1740 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$187
	neg al
	neg eax

 printArgument$187:
	; Parameter 206 signedint £temporary1740
	mov [rbp + 206], eax

 printArgument$188:
	; Call 182 isupper 0
	mov qword [rbp + 182], printArgument$189
	mov [rbp + 190], rbp
	add rbp, 182
	jmp isupper

 printArgument$189:
	; PostCall 182

 printArgument$190:
	; GetReturnValue £temporary1741

 printArgument$191:
	; Parameter 182 signedint £temporary1741
	mov [rbp + 182], ebx

 printArgument$192:
	; Call 130 printUnsignedLong 0
	mov qword [rbp + 130], printArgument$193
	mov [rbp + 138], rbp
	add rbp, 130
	jmp printUnsignedLong

 printArgument$193:
	; PostCall 130

 printArgument$194:
	; Jump 396
	jmp printArgument$396

 printArgument$195:
	; Equal 215 longDouble 0
	cmp dword [rbp + 72], 0
	je printArgument$215

 printArgument$196:
	; BinaryAdd £temporary1744 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 printArgument$197:
	; IntegralToIntegral £temporary1745 £temporary1744

 printArgument$198:
	; IntegralToIntegral £temporary1746 £temporary1745
	mov rbx, 4294967295
	and rax, rbx

 printArgument$199:
	; Assign arg_list £temporary1746
	mov [rbp + 32], rax

 printArgument$200:
	; BinarySubtract £temporary1747 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$201:
	; IntegralToIntegral £temporary1749 £temporary1747

 printArgument$202:
	; Dereference £temporary1750 -> £temporary1749 £temporary1749 0

 printArgument$203:
	; PushFloat £temporary1750 -> £temporary1749
	fld qword [rsi]

 printArgument$204:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$205:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$206:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$207:
	; Parameter 138 longdouble longDoubleValue
	fstp qword [rbp + 138]

 printArgument$208:
	; Parameter 146 signedint 0
	mov dword [rbp + 146], 0

 printArgument$209:
	; Parameter 150 signedint 0
	mov dword [rbp + 150], 0

 printArgument$210:
	; Parameter 154 signedint 0
	mov dword [rbp + 154], 0

 printArgument$211:
	; Parameter 158 signedint 3
	mov dword [rbp + 158], 3

 printArgument$212:
	; Call 114 printLongDoublePlain 0
	mov qword [rbp + 114], printArgument$213
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$213:
	; PostCall 114

 printArgument$214:
	; Jump 224
	jmp printArgument$224

 printArgument$215:
	; BinaryAdd £temporary1753 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 printArgument$216:
	; IntegralToIntegral £temporary1754 £temporary1753

 printArgument$217:
	; IntegralToIntegral £temporary1755 £temporary1754
	mov rbx, 4294967295
	and rax, rbx

 printArgument$218:
	; Assign arg_list £temporary1755
	mov [rbp + 32], rax

 printArgument$219:
	; BinarySubtract £temporary1756 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$220:
	; IntegralToIntegral £temporary1758 £temporary1756

 printArgument$221:
	; Dereference £temporary1759 -> £temporary1758 £temporary1758 0

 printArgument$222:
	; PushFloat £temporary1759 -> £temporary1758
	fld qword [rsi]

 printArgument$223:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$224:
	; Equal 233 negativePtr 0
	cmp qword [rbp + 80], 0
	je printArgument$233

 printArgument$225:
	; Dereference £temporary1763 -> negativePtr negativePtr 0
	mov rsi, [rbp + 80]

 printArgument$226:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$227:
	; PushFloat 0
	fldz

 printArgument$228:
	; SignedGreaterThanEqual 231 longDoubleValue 0
	fcompp
	fstsw ax
	sahf
	jbe printArgument$231

 printArgument$229:
	; Assign £temporary1765 1
	mov eax, 1

 printArgument$230:
	; Jump 232
	jmp printArgument$232

 printArgument$231:
	; Assign £temporary1765 0
	mov eax, 0

 printArgument$232:
	; Assign £temporary1763 -> negativePtr £temporary1765
	mov [rsi], eax

 printArgument$233:
	; NotEqual 241 sign 0
	cmp dword [rbp + 76], 0
	jne printArgument$241

 printArgument$234:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$235:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$236:
	; Parameter 138 double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$237:
	; Call 114 fabs 0
	mov qword [rbp + 114], printArgument$238
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

 printArgument$238:
	; PostCall 114

 printArgument$239:
	; GetReturnValue £temporary1768

 printArgument$240:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$241:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$242:
	; Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$243:
	; Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$244:
	; Address £temporary1769 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$245:
	; Parameter 154 pointer £temporary1769
	mov [rbp + 154], rsi

 printArgument$246:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$247
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$247:
	; PostCall 114

 printArgument$248:
	; GetReturnValue £temporary1770

 printArgument$249:
	; Assign arg_list £temporary1770
	mov [rbp + 32], rbx

 printArgument$250:
	; NotEqual 261 c 102
	cmp byte [rbp + 88], 102
	jne printArgument$261

 printArgument$251:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$252:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$253:
	; Parameter 138 longdouble longDoubleValue
	fstp qword [rbp + 138]

 printArgument$254:
	; Parameter 146 signedint plus
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

 printArgument$255:
	; Parameter 150 signedint space
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

 printArgument$256:
	; Parameter 154 signedint grid
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

 printArgument$257:
	; Parameter 158 signedint precision
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

 printArgument$258:
	; Call 114 printLongDoublePlain 0
	mov qword [rbp + 114], printArgument$259
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$259:
	; PostCall 114

 printArgument$260:
	; Jump 396
	jmp printArgument$396

 printArgument$261:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$262:
	; IntegralToIntegral £temporary1773 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$263
	neg al
	neg eax

 printArgument$263:
	; Parameter 138 signedint £temporary1773
	mov [rbp + 138], eax

 printArgument$264:
	; Call 114 tolower 0
	mov qword [rbp + 114], printArgument$265
	mov [rbp + 122], rbp
	add rbp, 114
	jmp tolower

 printArgument$265:
	; PostCall 114

 printArgument$266:
	; GetReturnValue £temporary1774

 printArgument$267:
	; NotEqual 285 £temporary1774 101
	cmp ebx, 101
	jne printArgument$285

 printArgument$268:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$269:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$270:
	; Parameter 138 longdouble longDoubleValue
	fstp qword [rbp + 138]

 printArgument$271:
	; Parameter 146 signedint plus
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

 printArgument$272:
	; Parameter 150 signedint space
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

 printArgument$273:
	; Parameter 154 signedint grid
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

 printArgument$274:
	; Parameter 158 signedint precision
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

 printArgument$275:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$276:
	; IntegralToIntegral £temporary1776 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$277
	neg al
	neg eax

 printArgument$277:
	; Parameter 186 signedint £temporary1776
	mov [rbp + 186], eax

 printArgument$278:
	; Call 162 isupper 0
	mov qword [rbp + 162], printArgument$279
	mov [rbp + 170], rbp
	add rbp, 162
	jmp isupper

 printArgument$279:
	; PostCall 162

 printArgument$280:
	; GetReturnValue £temporary1777

 printArgument$281:
	; Parameter 162 signedint £temporary1777
	mov [rbp + 162], ebx

 printArgument$282:
	; Call 114 printLongDoubleExpo 0
	mov qword [rbp + 114], printArgument$283
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoubleExpo

 printArgument$283:
	; PostCall 114

 printArgument$284:
	; Jump 396
	jmp printArgument$396

 printArgument$285:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$286:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$287:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$288:
	; Parameter 138 double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$289:
	; Call 114 fabs 0
	mov qword [rbp + 114], printArgument$290
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

 printArgument$290:
	; PostCall 114

 printArgument$291:
	; GetReturnValue £temporary1779

 printArgument$292:
	; Parameter 138 double £temporary1779
	fstp qword [rbp + 138]

 printArgument$293:
	; Call 114 log10 0
	mov qword [rbp + 114], printArgument$294
	mov [rbp + 122], rbp
	add rbp, 114
	jmp log10

 printArgument$294:
	; PostCall 114

 printArgument$295:
	; GetReturnValue £temporary1780

 printArgument$296:
	; FloatingToIntegral £temporary1781 £temporary1780
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printArgument$297:
	; Assign expo £temporary1781
	mov [rbp + 114], eax

 printArgument$298:
	; SignedLessThan 310 expo -3
	cmp dword [rbp + 114], -3
	jl printArgument$310

 printArgument$299:
	; SignedGreaterThan 310 expo 2
	cmp dword [rbp + 114], 2
	jg printArgument$310

 printArgument$300:
	; PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$301:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$302:
	; Parameter 142 longdouble longDoubleValue
	fstp qword [rbp + 142]

 printArgument$303:
	; Parameter 150 signedint plus
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

 printArgument$304:
	; Parameter 154 signedint space
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

 printArgument$305:
	; Parameter 158 signedint grid
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

 printArgument$306:
	; Parameter 162 signedint precision
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

 printArgument$307:
	; Call 118 printLongDoublePlain 0
	mov qword [rbp + 118], printArgument$308
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoublePlain

 printArgument$308:
	; PostCall 118

 printArgument$309:
	; Jump 396
	jmp printArgument$396

 printArgument$310:
	; PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$311:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$312:
	; Parameter 142 longdouble longDoubleValue
	fstp qword [rbp + 142]

 printArgument$313:
	; Parameter 150 signedint plus
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

 printArgument$314:
	; Parameter 154 signedint space
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

 printArgument$315:
	; Parameter 158 signedint grid
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

 printArgument$316:
	; Parameter 162 signedint precision
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

 printArgument$317:
	; PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$318:
	; IntegralToIntegral £temporary1786 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$319
	neg al
	neg eax

 printArgument$319:
	; Parameter 190 signedint £temporary1786
	mov [rbp + 190], eax

 printArgument$320:
	; Call 166 isupper 0
	mov qword [rbp + 166], printArgument$321
	mov [rbp + 174], rbp
	add rbp, 166
	jmp isupper

 printArgument$321:
	; PostCall 166

 printArgument$322:
	; GetReturnValue £temporary1787

 printArgument$323:
	; Parameter 166 signedint £temporary1787
	mov [rbp + 166], ebx

 printArgument$324:
	; Call 118 printLongDoubleExpo 0
	mov qword [rbp + 118], printArgument$325
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoubleExpo

 printArgument$325:
	; PostCall 118

 printArgument$326:
	; Jump 396
	jmp printArgument$396

 printArgument$327:
	; BinaryAdd £temporary1790 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 printArgument$328:
	; IntegralToIntegral £temporary1791 £temporary1790

 printArgument$329:
	; IntegralToIntegral £temporary1792 £temporary1791
	mov rbx, 4294967295
	and rax, rbx

 printArgument$330:
	; Assign arg_list £temporary1792
	mov [rbp + 32], rax

 printArgument$331:
	; BinarySubtract £temporary1793 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$332:
	; IntegralToIntegral £temporary1795 £temporary1793

 printArgument$333:
	; Dereference £temporary1796 -> £temporary1795 £temporary1795 0

 printArgument$334:
	; Assign ptrValue £temporary1796 -> £temporary1795
	mov rax, [rsi]
	mov [rbp + 106], rax

 printArgument$335:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$336:
	; Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$337:
	; Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$338:
	; Address £temporary1797 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$339:
	; Parameter 154 pointer £temporary1797
	mov [rbp + 154], rsi

 printArgument$340:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$341
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$341:
	; PostCall 114

 printArgument$342:
	; GetReturnValue £temporary1798

 printArgument$343:
	; Assign arg_list £temporary1798
	mov [rbp + 32], rbx

 printArgument$344:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$345:
	; IntegralToIntegral £temporary1799 ptrValue
	mov rax, [rbp + 106]

 printArgument$346:
	; Parameter 138 unsignedlongint £temporary1799
	mov [rbp + 138], rax

 printArgument$347:
	; Parameter 146 signedint 0
	mov dword [rbp + 146], 0

 printArgument$348:
	; Parameter 150 signedint 0
	mov dword [rbp + 150], 0

 printArgument$349:
	; Parameter 154 signedint 0
	mov dword [rbp + 154], 0

 printArgument$350:
	; Parameter 158 unsignedlongint 10
	mov qword [rbp + 158], 10

 printArgument$351:
	; Parameter 166 signedint 0
	mov dword [rbp + 166], 0

 printArgument$352:
	; Call 114 printUnsignedLong 0
	mov qword [rbp + 114], printArgument$353
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printUnsignedLong

 printArgument$353:
	; PostCall 114

 printArgument$354:
	; Jump 396
	jmp printArgument$396

 printArgument$355:
	; BinaryAdd £temporary1802 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 printArgument$356:
	; IntegralToIntegral £temporary1803 £temporary1802

 printArgument$357:
	; IntegralToIntegral £temporary1804 £temporary1803
	mov rbx, 4294967295
	and rax, rbx

 printArgument$358:
	; Assign arg_list £temporary1804
	mov [rbp + 32], rax

 printArgument$359:
	; BinarySubtract £temporary1805 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$360:
	; IntegralToIntegral £temporary1807 £temporary1805

 printArgument$361:
	; Dereference £temporary1808 -> £temporary1807 £temporary1807 0

 printArgument$362:
	; Assign ptrValue £temporary1808 -> £temporary1807
	mov rax, [rsi]
	mov [rbp + 106], rax

 printArgument$363:
	; BinaryAdd £temporary1810 arg_list 8
	mov rax, [rbp + 32]
	add rax, 8

 printArgument$364:
	; IntegralToIntegral £temporary1811 £temporary1810

 printArgument$365:
	; IntegralToIntegral £temporary1812 £temporary1811
	mov rbx, 4294967295
	and rax, rbx

 printArgument$366:
	; Assign arg_list £temporary1812
	mov [rbp + 32], rax

 printArgument$367:
	; BinarySubtract £temporary1813 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$368:
	; IntegralToIntegral £temporary1815 £temporary1813

 printArgument$369:
	; Dereference £temporary1816 -> £temporary1815 £temporary1815 0

 printArgument$370:
	; Assign intPtr £temporary1816 -> £temporary1815
	mov rax, [rsi]
	mov [rbp + 90], rax

 printArgument$371:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$372:
	; Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$373:
	; Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$374:
	; Address £temporary1817 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$375:
	; Parameter 154 pointer £temporary1817
	mov [rbp + 154], rsi

 printArgument$376:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$377
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$377:
	; PostCall 114

 printArgument$378:
	; GetReturnValue £temporary1818

 printArgument$379:
	; Assign arg_list £temporary1818
	mov [rbp + 32], rbx

 printArgument$380:
	; Dereference £temporary1819 -> intPtr intPtr 0
	mov rsi, [rbp + 90]

 printArgument$381:
	; Assign £temporary1819 -> intPtr g_outChars
	mov eax, [g_outChars]
	mov [rsi], eax

 printArgument$382:
	; Jump 396
	jmp printArgument$396

 printArgument$383:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$384:
	; Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$385:
	; Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$386:
	; Address £temporary1820 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$387:
	; Parameter 154 pointer £temporary1820
	mov [rbp + 154], rsi

 printArgument$388:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$389
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$389:
	; PostCall 114

 printArgument$390:
	; GetReturnValue £temporary1821

 printArgument$391:
	; Assign arg_list £temporary1821
	mov [rbp + 32], rbx

 printArgument$392:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$393:
	; Parameter 138 signedchar 37
	mov byte [rbp + 138], 37

 printArgument$394:
	; Call 114 printChar 0
	mov qword [rbp + 114], printArgument$395
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

 printArgument$395:
	; PostCall 114

 printArgument$396:
	; SetReturnValue

 printArgument$397:
	; Return arg_list
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printArgument$398:
	; FunctionEnd printArgument

section .data

@5362$int4$10#:
	; Initializer SignedInt 10
	dd 10

section .text

 printFormat:
	; Assign width 0
	mov dword [rbp + 44], 0

 printFormat$1:
	; Assign precision 0
	mov dword [rbp + 48], 0

 printFormat$2:
	; Assign percent 0
	mov dword [rbp + 52], 0

 printFormat$3:
	; Assign plus 0
	mov dword [rbp + 56], 0

 printFormat$4:
	; Assign minus 0
	mov dword [rbp + 60], 0

 printFormat$5:
	; Assign space 0
	mov dword [rbp + 64], 0

 printFormat$6:
	; Assign zero 0
	mov dword [rbp + 68], 0

 printFormat$7:
	; Assign grid 0
	mov dword [rbp + 72], 0

 printFormat$8:
	; Assign widthStar 0
	mov dword [rbp + 76], 0

 printFormat$9:
	; Assign period 0
	mov dword [rbp + 80], 0

 printFormat$10:
	; Assign precisionStar 0
	mov dword [rbp + 84], 0

 printFormat$11:
	; Assign shortInt 0
	mov dword [rbp + 88], 0

 printFormat$12:
	; Assign longInt 0
	mov dword [rbp + 92], 0

 printFormat$13:
	; Assign longDouble 0
	mov dword [rbp + 96], 0

 printFormat$14:
	; Assign g_outChars 0
	mov dword [g_outChars], 0

 printFormat$15:
	; Assign index 0
	mov dword [rbp + 40], 0

 printFormat$16:
	; IntegralToIntegral £temporary1840 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$17:
	; BinaryAdd £temporary1842 format £temporary1840
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$18:
	; Dereference £temporary1839 -> £temporary1842 £temporary1842 0

 printFormat$19:
	; Equal 293 £temporary1839 -> £temporary1842 0
	cmp byte [rsi], 0
	je printFormat$293

 printFormat$20:
	; IntegralToIntegral £temporary1846 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$21:
	; BinaryAdd £temporary1848 format £temporary1846
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$22:
	; Dereference £temporary1845 -> £temporary1848 £temporary1848 0

 printFormat$23:
	; Assign c £temporary1845 -> £temporary1848
	mov al, [rsi]
	mov [rbp + 100], al

 printFormat$24:
	; Equal 271 percent 0
	cmp dword [rbp + 52], 0
	je printFormat$271

 printFormat$25:
	; Case 54 c 43
	mov al, [rbp + 100]
	cmp al, 43
	je printFormat$54

 printFormat$26:
	; Case 56 c 45
	cmp al, 45
	je printFormat$56

 printFormat$27:
	; Case 58 c 32
	cmp al, 32
	je printFormat$58

 printFormat$28:
	; Case 60 c 48
	cmp al, 48
	je printFormat$60

 printFormat$29:
	; Case 62 c 35
	cmp al, 35
	je printFormat$62

 printFormat$30:
	; Case 64 c 46
	cmp al, 46
	je printFormat$64

 printFormat$31:
	; Case 66 c 42
	cmp al, 42
	je printFormat$66

 printFormat$32:
	; Case 71 c 104
	cmp al, 104
	je printFormat$71

 printFormat$33:
	; Case 73 c 108
	cmp al, 108
	je printFormat$73

 printFormat$34:
	; Case 75 c 76
	cmp al, 76
	je printFormat$75

 printFormat$35:
	; Case 77 c 37
	cmp al, 37
	je printFormat$77

 printFormat$36:
	; Case 77 c 110
	cmp al, 110
	je printFormat$77

 printFormat$37:
	; Case 77 c 112
	cmp al, 112
	je printFormat$77

 printFormat$38:
	; Case 77 c 71
	cmp al, 71
	je printFormat$77

 printFormat$39:
	; Case 77 c 103
	cmp al, 103
	je printFormat$77

 printFormat$40:
	; Case 77 c 69
	cmp al, 69
	je printFormat$77

 printFormat$41:
	; Case 77 c 101
	cmp al, 101
	je printFormat$77

 printFormat$42:
	; Case 77 c 102
	cmp al, 102
	je printFormat$77

 printFormat$43:
	; Case 77 c 115
	cmp al, 115
	je printFormat$77

 printFormat$44:
	; Case 77 c 99
	cmp al, 99
	je printFormat$77

 printFormat$45:
	; Case 77 c 88
	cmp al, 88
	je printFormat$77

 printFormat$46:
	; Case 77 c 120
	cmp al, 120
	je printFormat$77

 printFormat$47:
	; Case 77 c 111
	cmp al, 111
	je printFormat$77

 printFormat$48:
	; Case 77 c 98
	cmp al, 98
	je printFormat$77

 printFormat$49:
	; Case 77 c 117
	cmp al, 117
	je printFormat$77

 printFormat$50:
	; Case 77 c 100
	cmp al, 100
	je printFormat$77

 printFormat$51:
	; Case 77 c 105
	cmp al, 105
	je printFormat$77

 printFormat$52:
	; CaseEnd c

 printFormat$53:
	; Jump 246
	jmp printFormat$246

 printFormat$54:
	; Assign plus 1
	mov dword [rbp + 56], 1

 printFormat$55:
	; Jump 291
	jmp printFormat$291

 printFormat$56:
	; Assign minus 1
	mov dword [rbp + 60], 1

 printFormat$57:
	; Jump 291
	jmp printFormat$291

 printFormat$58:
	; Assign space 1
	mov dword [rbp + 64], 1

 printFormat$59:
	; Jump 291
	jmp printFormat$291

 printFormat$60:
	; Assign zero 1
	mov dword [rbp + 68], 1

 printFormat$61:
	; Jump 291
	jmp printFormat$291

 printFormat$62:
	; Assign grid 1
	mov dword [rbp + 72], 1

 printFormat$63:
	; Jump 291
	jmp printFormat$291

 printFormat$64:
	; Assign period 1
	mov dword [rbp + 80], 1

 printFormat$65:
	; Jump 291
	jmp printFormat$291

 printFormat$66:
	; NotEqual 69 period 0
	cmp dword [rbp + 80], 0
	jne printFormat$69

 printFormat$67:
	; Assign width -1
	mov dword [rbp + 44], -1

 printFormat$68:
	; Jump 291
	jmp printFormat$291

 printFormat$69:
	; Assign precision -1
	mov dword [rbp + 48], -1

 printFormat$70:
	; Jump 291
	jmp printFormat$291

 printFormat$71:
	; Assign shortInt 1
	mov dword [rbp + 88], 1

 printFormat$72:
	; Jump 291
	jmp printFormat$291

 printFormat$73:
	; Assign longInt 1
	mov dword [rbp + 92], 1

 printFormat$74:
	; Jump 291
	jmp printFormat$291

 printFormat$75:
	; Assign longDouble 1
	mov dword [rbp + 96], 1

 printFormat$76:
	; Jump 291
	jmp printFormat$291

 printFormat$77:
	; Equal 110 minus 0
	cmp dword [rbp + 60], 0
	je printFormat$110

 printFormat$78:
	; Assign startChars g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$79:
	; PreCall 105 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$80:
	; IntegralToIntegral £temporary1852 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$81:
	; BinaryAdd £temporary1854 format £temporary1852
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$82:
	; Dereference £temporary1851 -> £temporary1854 £temporary1854 0

 printFormat$83:
	; Address £temporary1855 £temporary1851 -> £temporary1854

 printFormat$84:
	; Parameter 129 pointer £temporary1855
	mov [rbp + 129], rsi

 printFormat$85:
	; Parameter 137 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 137], rax

 printFormat$86:
	; Parameter 145 signedint plus
	mov eax, [rbp + 56]
	mov [rbp + 145], eax

 printFormat$87:
	; Parameter 149 signedint space
	mov eax, [rbp + 64]
	mov [rbp + 149], eax

 printFormat$88:
	; Parameter 153 signedint grid
	mov eax, [rbp + 72]
	mov [rbp + 153], eax

 printFormat$89:
	; Address £temporary1856 width
	mov rsi, rbp
	add rsi, 44

 printFormat$90:
	; Parameter 157 pointer £temporary1856
	mov [rbp + 157], rsi

 printFormat$91:
	; Parameter 165 signedint precision
	mov eax, [rbp + 48]
	mov [rbp + 165], eax

 printFormat$92:
	; Parameter 169 signedint shortInt
	mov eax, [rbp + 88]
	mov [rbp + 169], eax

 printFormat$93:
	; Parameter 173 signedint longInt
	mov eax, [rbp + 92]
	mov [rbp + 173], eax

 printFormat$94:
	; Parameter 177 signedint longDouble
	mov eax, [rbp + 96]
	mov [rbp + 177], eax

 printFormat$95:
	; Parameter 181 signedint 1
	mov dword [rbp + 181], 1

 printFormat$96:
	; Parameter 185 pointer 0
	mov qword [rbp + 185], 0

 printFormat$97:
	; Call 105 printArgument 0
	mov qword [rbp + 105], printFormat$98
	mov [rbp + 113], rbp
	add rbp, 105
	jmp printArgument

 printFormat$98:
	; PostCall 105

 printFormat$99:
	; GetReturnValue £temporary1857

 printFormat$100:
	; Assign arg_list £temporary1857
	mov [rbp + 32], rbx

 printFormat$101:
	; BinarySubtract field g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 105], eax

 printFormat$102:
	; Assign £temporary1859 field
	mov eax, [rbp + 105]

 printFormat$103:
	; BinaryAdd field field 1
	inc dword [rbp + 105]

 printFormat$104:
	; SignedGreaterThanEqual 244 £temporary1859 width
	cmp eax, [rbp + 44]
	jge printFormat$244

 printFormat$105:
	; PreCall 109 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$106:
	; Parameter 133 signedchar 32
	mov byte [rbp + 133], 32

 printFormat$107:
	; Call 109 printChar 0
	mov qword [rbp + 109], printFormat$108
	mov [rbp + 117], rbp
	add rbp, 109
	jmp printChar

 printFormat$108:
	; PostCall 109

 printFormat$109:
	; Jump 102
	jmp printFormat$102

 printFormat$110:
	; Equal 189 zero 0
	cmp dword [rbp + 68], 0
	je printFormat$189

 printFormat$111:
	; Assign startChars g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$112:
	; Assign oldOutStatus g_outStatus
	mov eax, [g_outStatus]
	mov [rbp + 105], eax

 printFormat$113:
	; Assign negative 0
	mov dword [rbp + 109], 0

 printFormat$114:
	; Assign g_outStatus 2
	mov dword [g_outStatus], 2

 printFormat$115:
	; PreCall 113 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$116:
	; IntegralToIntegral £temporary1863 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$117:
	; BinaryAdd £temporary1865 format £temporary1863
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$118:
	; Dereference £temporary1862 -> £temporary1865 £temporary1865 0

 printFormat$119:
	; Address £temporary1866 £temporary1862 -> £temporary1865

 printFormat$120:
	; Parameter 137 pointer £temporary1866
	mov [rbp + 137], rsi

 printFormat$121:
	; Parameter 145 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

 printFormat$122:
	; Parameter 153 signedint 0
	mov dword [rbp + 153], 0

 printFormat$123:
	; Parameter 157 signedint 0
	mov dword [rbp + 157], 0

 printFormat$124:
	; Parameter 161 signedint grid
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

 printFormat$125:
	; Address £temporary1867 width
	mov rsi, rbp
	add rsi, 44

 printFormat$126:
	; Parameter 165 pointer £temporary1867
	mov [rbp + 165], rsi

 printFormat$127:
	; Parameter 173 signedint precision
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

 printFormat$128:
	; Parameter 177 signedint shortInt
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

 printFormat$129:
	; Parameter 181 signedint longInt
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

 printFormat$130:
	; Parameter 185 signedint longDouble
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

 printFormat$131:
	; Parameter 189 signedint 0
	mov dword [rbp + 189], 0

 printFormat$132:
	; Address £temporary1868 negative
	mov rsi, rbp
	add rsi, 109

 printFormat$133:
	; Parameter 193 pointer £temporary1868
	mov [rbp + 193], rsi

 printFormat$134:
	; Call 113 printArgument 0
	mov qword [rbp + 113], printFormat$135
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printArgument

 printFormat$135:
	; PostCall 113

 printFormat$136:
	; Assign g_outStatus oldOutStatus
	mov eax, [rbp + 105]
	mov [g_outStatus], eax

 printFormat$137:
	; BinarySubtract field g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 113], eax

 printFormat$138:
	; Assign g_outChars startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

 printFormat$139:
	; Equal 146 negative 0
	cmp dword [rbp + 109], 0
	je printFormat$146

 printFormat$140:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$141:
	; Parameter 141 signedchar 45
	mov byte [rbp + 141], 45

 printFormat$142:
	; Call 117 printChar 0
	mov qword [rbp + 117], printFormat$143
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$143:
	; PostCall 117

 printFormat$144:
	; BinaryAdd field field 1
	inc dword [rbp + 113]

 printFormat$145:
	; Jump 159
	jmp printFormat$159

 printFormat$146:
	; Equal 153 plus 0
	cmp dword [rbp + 56], 0
	je printFormat$153

 printFormat$147:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$148:
	; Parameter 141 signedchar 43
	mov byte [rbp + 141], 43

 printFormat$149:
	; Call 117 printChar 0
	mov qword [rbp + 117], printFormat$150
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$150:
	; PostCall 117

 printFormat$151:
	; BinaryAdd field field 1
	inc dword [rbp + 113]

 printFormat$152:
	; Jump 159
	jmp printFormat$159

 printFormat$153:
	; Equal 159 space 0
	cmp dword [rbp + 64], 0
	je printFormat$159

 printFormat$154:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$155:
	; Parameter 141 signedchar 32
	mov byte [rbp + 141], 32

 printFormat$156:
	; Call 117 printChar 0
	mov qword [rbp + 117], printFormat$157
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$157:
	; PostCall 117

 printFormat$158:
	; BinaryAdd field field 1
	inc dword [rbp + 113]

 printFormat$159:
	; Assign £temporary1880 field
	mov eax, [rbp + 113]

 printFormat$160:
	; BinaryAdd field field 1
	inc dword [rbp + 113]

 printFormat$161:
	; SignedGreaterThanEqual 167 £temporary1880 width
	cmp eax, [rbp + 44]
	jge printFormat$167

 printFormat$162:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$163:
	; Parameter 141 signedchar 48
	mov byte [rbp + 141], 48

 printFormat$164:
	; Call 117 printChar 0
	mov qword [rbp + 117], printFormat$165
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$165:
	; PostCall 117

 printFormat$166:
	; Jump 159
	jmp printFormat$159

 printFormat$167:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$168:
	; IntegralToIntegral £temporary1884 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$169:
	; BinaryAdd £temporary1886 format £temporary1884
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$170:
	; Dereference £temporary1883 -> £temporary1886 £temporary1886 0

 printFormat$171:
	; Address £temporary1887 £temporary1883 -> £temporary1886

 printFormat$172:
	; Parameter 141 pointer £temporary1887
	mov [rbp + 141], rsi

 printFormat$173:
	; Parameter 149 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 149], rax

 printFormat$174:
	; Parameter 157 signedint 0
	mov dword [rbp + 157], 0

 printFormat$175:
	; Parameter 161 signedint 0
	mov dword [rbp + 161], 0

 printFormat$176:
	; Parameter 165 signedint grid
	mov eax, [rbp + 72]
	mov [rbp + 165], eax

 printFormat$177:
	; Parameter 169 pointer 0
	mov qword [rbp + 169], 0

 printFormat$178:
	; Parameter 177 signedint precision
	mov eax, [rbp + 48]
	mov [rbp + 177], eax

 printFormat$179:
	; Parameter 181 signedint shortInt
	mov eax, [rbp + 88]
	mov [rbp + 181], eax

 printFormat$180:
	; Parameter 185 signedint longInt
	mov eax, [rbp + 92]
	mov [rbp + 185], eax

 printFormat$181:
	; Parameter 189 signedint longDouble
	mov eax, [rbp + 96]
	mov [rbp + 189], eax

 printFormat$182:
	; Parameter 193 signedint 0
	mov dword [rbp + 193], 0

 printFormat$183:
	; Parameter 197 pointer 0
	mov qword [rbp + 197], 0

 printFormat$184:
	; Call 117 printArgument 0
	mov qword [rbp + 117], printFormat$185
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printArgument

 printFormat$185:
	; PostCall 117

 printFormat$186:
	; GetReturnValue £temporary1888

 printFormat$187:
	; Assign arg_list £temporary1888
	mov [rbp + 32], rbx

 printFormat$188:
	; Jump 244
	jmp printFormat$244

 printFormat$189:
	; Assign startChars g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$190:
	; Assign oldOutStatus g_outStatus
	mov eax, [g_outStatus]
	mov [rbp + 105], eax

 printFormat$191:
	; Assign g_outStatus 2
	mov dword [g_outStatus], 2

 printFormat$192:
	; PreCall 109 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$193:
	; IntegralToIntegral £temporary1890 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$194:
	; BinaryAdd £temporary1892 format £temporary1890
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$195:
	; Dereference £temporary1889 -> £temporary1892 £temporary1892 0

 printFormat$196:
	; Address £temporary1893 £temporary1889 -> £temporary1892

 printFormat$197:
	; Parameter 133 pointer £temporary1893
	mov [rbp + 133], rsi

 printFormat$198:
	; Parameter 141 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 141], rax

 printFormat$199:
	; Parameter 149 signedint plus
	mov eax, [rbp + 56]
	mov [rbp + 149], eax

 printFormat$200:
	; Parameter 153 signedint space
	mov eax, [rbp + 64]
	mov [rbp + 153], eax

 printFormat$201:
	; Parameter 157 signedint grid
	mov eax, [rbp + 72]
	mov [rbp + 157], eax

 printFormat$202:
	; Address £temporary1894 width
	mov rsi, rbp
	add rsi, 44

 printFormat$203:
	; Parameter 161 pointer £temporary1894
	mov [rbp + 161], rsi

 printFormat$204:
	; Parameter 169 signedint precision
	mov eax, [rbp + 48]
	mov [rbp + 169], eax

 printFormat$205:
	; Parameter 173 signedint shortInt
	mov eax, [rbp + 88]
	mov [rbp + 173], eax

 printFormat$206:
	; Parameter 177 signedint longInt
	mov eax, [rbp + 92]
	mov [rbp + 177], eax

 printFormat$207:
	; Parameter 181 signedint longDouble
	mov eax, [rbp + 96]
	mov [rbp + 181], eax

 printFormat$208:
	; Parameter 185 signedint 1
	mov dword [rbp + 185], 1

 printFormat$209:
	; Parameter 189 pointer 0
	mov qword [rbp + 189], 0

 printFormat$210:
	; Call 109 printArgument 0
	mov qword [rbp + 109], printFormat$211
	mov [rbp + 117], rbp
	add rbp, 109
	jmp printArgument

 printFormat$211:
	; PostCall 109

 printFormat$212:
	; Assign g_outStatus oldOutStatus
	mov eax, [rbp + 105]
	mov [g_outStatus], eax

 printFormat$213:
	; BinarySubtract field g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 109], eax

 printFormat$214:
	; Assign g_outChars startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

 printFormat$215:
	; Assign £temporary1897 field
	mov eax, [rbp + 109]

 printFormat$216:
	; BinaryAdd field field 1
	inc dword [rbp + 109]

 printFormat$217:
	; SignedGreaterThanEqual 223 £temporary1897 width
	cmp eax, [rbp + 44]
	jge printFormat$223

 printFormat$218:
	; PreCall 113 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$219:
	; Parameter 137 signedchar 32
	mov byte [rbp + 137], 32

 printFormat$220:
	; Call 113 printChar 0
	mov qword [rbp + 113], printFormat$221
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printChar

 printFormat$221:
	; PostCall 113

 printFormat$222:
	; Jump 215
	jmp printFormat$215

 printFormat$223:
	; PreCall 113 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$224:
	; IntegralToIntegral £temporary1901 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$225:
	; BinaryAdd £temporary1903 format £temporary1901
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$226:
	; Dereference £temporary1900 -> £temporary1903 £temporary1903 0

 printFormat$227:
	; Address £temporary1904 £temporary1900 -> £temporary1903

 printFormat$228:
	; Parameter 137 pointer £temporary1904
	mov [rbp + 137], rsi

 printFormat$229:
	; Parameter 145 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

 printFormat$230:
	; Parameter 153 signedint plus
	mov eax, [rbp + 56]
	mov [rbp + 153], eax

 printFormat$231:
	; Parameter 157 signedint space
	mov eax, [rbp + 64]
	mov [rbp + 157], eax

 printFormat$232:
	; Parameter 161 signedint grid
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

 printFormat$233:
	; Parameter 165 pointer 0
	mov qword [rbp + 165], 0

 printFormat$234:
	; Parameter 173 signedint precision
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

 printFormat$235:
	; Parameter 177 signedint shortInt
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

 printFormat$236:
	; Parameter 181 signedint longInt
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

 printFormat$237:
	; Parameter 185 signedint longDouble
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

 printFormat$238:
	; Parameter 189 signedint 1
	mov dword [rbp + 189], 1

 printFormat$239:
	; Parameter 193 pointer 0
	mov qword [rbp + 193], 0

 printFormat$240:
	; Call 113 printArgument 0
	mov qword [rbp + 113], printFormat$241
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printArgument

 printFormat$241:
	; PostCall 113

 printFormat$242:
	; GetReturnValue £temporary1905

 printFormat$243:
	; Assign arg_list £temporary1905
	mov [rbp + 32], rbx

 printFormat$244:
	; Assign percent 0
	mov dword [rbp + 52], 0

 printFormat$245:
	; Jump 291
	jmp printFormat$291

 printFormat$246:
	; Assign value 0
	mov dword [rbp + 101], 0

 printFormat$247:
	; PreCall 105 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$248:
	; IntegralToIntegral £temporary1908 c
	mov al, [rbp + 100]
	and eax, 255
	cmp al, 0
	jge printFormat$249
	neg al
	neg eax

 printFormat$249:
	; Parameter 129 signedint £temporary1908
	mov [rbp + 129], eax

 printFormat$250:
	; Call 105 isdigit 0
	mov qword [rbp + 105], printFormat$251
	mov [rbp + 113], rbp
	add rbp, 105
	jmp isdigit

 printFormat$251:
	; PostCall 105

 printFormat$252:
	; GetReturnValue £temporary1909

 printFormat$253:
	; Equal 265 £temporary1909 0
	cmp ebx, 0
	je printFormat$265

 printFormat$254:
	; SignedMultiply £temporary1910 value 10
	mov eax, [rbp + 101]
	xor edx, edx
	imul dword [@5362$int4$10#]

 printFormat$255:
	; BinarySubtract £temporary1911 c 48
	mov bl, [rbp + 100]
	sub bl, 48

 printFormat$256:
	; IntegralToIntegral £temporary1912 £temporary1911
	and ebx, 255
	cmp bl, 0
	jge printFormat$257
	neg bl
	neg ebx

 printFormat$257:
	; BinaryAdd value £temporary1910 £temporary1912
	add eax, ebx
	mov [rbp + 101], eax

 printFormat$258:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 printFormat$259:
	; Assign £temporary1914 index
	mov eax, [rbp + 40]

 printFormat$260:
	; IntegralToIntegral £temporary1916 £temporary1914
	mov rbx, 4294967295
	and rax, rbx

 printFormat$261:
	; BinaryAdd £temporary1918 format £temporary1916
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$262:
	; Dereference £temporary1915 -> £temporary1918 £temporary1918 0

 printFormat$263:
	; Assign c £temporary1915 -> £temporary1918
	mov al, [rsi]
	mov [rbp + 100], al

 printFormat$264:
	; Jump 247
	jmp printFormat$247

 printFormat$265:
	; BinarySubtract index index 1
	dec dword [rbp + 40]

 printFormat$266:
	; NotEqual 269 period 0
	cmp dword [rbp + 80], 0
	jne printFormat$269

 printFormat$267:
	; Assign width value
	mov eax, [rbp + 101]
	mov [rbp + 44], eax

 printFormat$268:
	; Jump 291
	jmp printFormat$291

 printFormat$269:
	; Assign precision value
	mov eax, [rbp + 101]
	mov [rbp + 48], eax

 printFormat$270:
	; Jump 291
	jmp printFormat$291

 printFormat$271:
	; NotEqual 287 c 37
	cmp byte [rbp + 100], 37
	jne printFormat$287

 printFormat$272:
	; Assign percent 1
	mov dword [rbp + 52], 1

 printFormat$273:
	; Assign plus 0
	mov dword [rbp + 56], 0

 printFormat$274:
	; Assign minus 0
	mov dword [rbp + 60], 0

 printFormat$275:
	; Assign space 0
	mov dword [rbp + 64], 0

 printFormat$276:
	; Assign zero 0
	mov dword [rbp + 68], 0

 printFormat$277:
	; Assign grid 0
	mov dword [rbp + 72], 0

 printFormat$278:
	; Assign widthStar 0
	mov dword [rbp + 76], 0

 printFormat$279:
	; Assign period 0
	mov dword [rbp + 80], 0

 printFormat$280:
	; Assign precisionStar 0
	mov dword [rbp + 84], 0

 printFormat$281:
	; Assign shortInt 0
	mov dword [rbp + 88], 0

 printFormat$282:
	; Assign longInt 0
	mov dword [rbp + 92], 0

 printFormat$283:
	; Assign longDouble 0
	mov dword [rbp + 96], 0

 printFormat$284:
	; Assign width 0
	mov dword [rbp + 44], 0

 printFormat$285:
	; Assign precision 0
	mov dword [rbp + 48], 0

 printFormat$286:
	; Jump 291
	jmp printFormat$291

 printFormat$287:
	; PreCall 101 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$288:
	; Parameter 125 signedchar c
	mov al, [rbp + 100]
	mov [rbp + 125], al

 printFormat$289:
	; Call 101 printChar 0
	mov qword [rbp + 101], printFormat$290
	mov [rbp + 109], rbp
	add rbp, 101
	jmp printChar

 printFormat$290:
	; PostCall 101

 printFormat$291:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 printFormat$292:
	; Jump 16
	jmp printFormat$16

 printFormat$293:
	; NotEqual 300 g_outStatus 1
	cmp dword [g_outStatus], 1
	jne printFormat$300

 printFormat$294:
	; IntegralToIntegral £temporary1927 g_outDevice
	mov rax, [g_outDevice]

 printFormat$295:
	; Assign outString £temporary1927
	mov [rbp + 100], rax

 printFormat$296:
	; IntegralToIntegral £temporary1929 g_outChars
	mov eax, [g_outChars]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$297:
	; BinaryAdd £temporary1931 outString £temporary1929
	mov rsi, [rbp + 100]
	add rsi, rax

 printFormat$298:
	; Dereference £temporary1928 -> £temporary1931 £temporary1931 0

 printFormat$299:
	; Assign £temporary1928 -> £temporary1931 0
	mov byte [rsi], 0

 printFormat$300:
	; SetReturnValue

 printFormat$301:
	; Return g_outChars
	mov ebx, [g_outChars]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printFormat$302:
	; FunctionEnd printFormat

section .text

 printf:
	; Address £temporary1936 format
	mov rsi, rbp
	add rsi, 24

 printf$1:
	; IntegralToIntegral £temporary1937 £temporary1936

 printf$2:
	; BinaryAdd arg_list £temporary1937 8
	add rsi, 8
	mov [rdi + 32], rsi

 printf$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printf$4:
	; Parameter 64 pointer format
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

 printf$5:
	; Parameter 72 pointer arg_list
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

 printf$6:
	; Call 40 vprintf 0
	mov qword [rdi + 40], printf$7
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	add rdi, 40
	mov rbp, rdi
	jmp vprintf

 printf$7:
	; PostCall 40

 printf$8:
	; GetReturnValue £temporary1940

 printf$9:
	; SetReturnValue

 printf$10:
	; Return £temporary1940
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printf$11:
	; FunctionEnd printf

section .text

 vprintf:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vprintf$1:
	; Parameter 64 pointer stdout
	mov rax, [stdout]
	mov [rbp + 64], rax

 vprintf$2:
	; Parameter 72 pointer format
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 vprintf$3:
	; Parameter 80 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 vprintf$4:
	; Call 40 vfprintf 0
	mov qword [rbp + 40], vprintf$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp vfprintf

 vprintf$5:
	; PostCall 40

 vprintf$6:
	; GetReturnValue £temporary1942

 vprintf$7:
	; SetReturnValue

 vprintf$8:
	; Return £temporary1942
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vprintf$9:
	; FunctionEnd vprintf

section .text

 fprintf:
	; Address £temporary1943 format
	mov rsi, rbp
	add rsi, 32

 fprintf$1:
	; IntegralToIntegral £temporary1944 £temporary1943

 fprintf$2:
	; BinaryAdd arg_list £temporary1944 8
	add rsi, 8
	mov [rdi + 40], rsi

 fprintf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fprintf$4:
	; Parameter 72 pointer outStream
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 fprintf$5:
	; Parameter 80 pointer format
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 fprintf$6:
	; Parameter 88 pointer arg_list
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 fprintf$7:
	; Call 48 vfprintf 0
	mov qword [rdi + 48], fprintf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vfprintf

 fprintf$8:
	; PostCall 48

 fprintf$9:
	; GetReturnValue £temporary1947

 fprintf$10:
	; SetReturnValue

 fprintf$11:
	; Return £temporary1947
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fprintf$12:
	; FunctionEnd fprintf

section .text

 vfprintf:
	; Assign g_outStatus 0
	mov dword [g_outStatus], 0

 vfprintf$1:
	; IntegralToIntegral £temporary1949 outStream
	mov rax, [rbp + 24]

 vfprintf$2:
	; Assign g_outDevice £temporary1949
	mov [g_outDevice], rax

 vfprintf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vfprintf$4:
	; Parameter 72 pointer format
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vfprintf$5:
	; Parameter 80 pointer arg_list
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vfprintf$6:
	; Call 48 printFormat 0
	mov qword [rbp + 48], vfprintf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printFormat

 vfprintf$7:
	; PostCall 48

 vfprintf$8:
	; GetReturnValue £temporary1950

 vfprintf$9:
	; SetReturnValue

 vfprintf$10:
	; Return £temporary1950
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfprintf$11:
	; FunctionEnd vfprintf

section .text

 sprintf:
	; Address £temporary1951 format
	mov rsi, rbp
	add rsi, 32

 sprintf$1:
	; IntegralToIntegral £temporary1952 £temporary1951

 sprintf$2:
	; BinaryAdd arg_list £temporary1952 8
	add rsi, 8
	mov [rdi + 40], rsi

 sprintf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sprintf$4:
	; Parameter 72 pointer outString
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 sprintf$5:
	; Parameter 80 pointer format
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 sprintf$6:
	; Parameter 88 pointer arg_list
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 sprintf$7:
	; Call 48 vsprintf 0
	mov qword [rdi + 48], sprintf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vsprintf

 sprintf$8:
	; PostCall 48

 sprintf$9:
	; GetReturnValue £temporary1955

 sprintf$10:
	; SetReturnValue

 sprintf$11:
	; Return £temporary1955
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sprintf$12:
	; FunctionEnd sprintf

section .text

 vsprintf:
	; Assign g_outStatus 1
	mov dword [g_outStatus], 1

 vsprintf$1:
	; IntegralToIntegral £temporary1957 outString
	mov rax, [rbp + 24]

 vsprintf$2:
	; Assign g_outDevice £temporary1957
	mov [g_outDevice], rax

 vsprintf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vsprintf$4:
	; Parameter 72 pointer format
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vsprintf$5:
	; Parameter 80 pointer arg_list
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vsprintf$6:
	; Call 48 printFormat 0
	mov qword [rbp + 48], vsprintf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printFormat

 vsprintf$7:
	; PostCall 48

 vsprintf$8:
	; GetReturnValue £temporary1958

 vsprintf$9:
	; SetReturnValue

 vsprintf$10:
	; Return £temporary1958
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsprintf$11:
	; FunctionEnd vsprintf
