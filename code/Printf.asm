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
	global testY
	global testX
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
	; IntegralToIntegral £temporary1451 stream
	mov rax, [rbp + 28]

 putc$2:
	; Assign g_outDevice £temporary1451
	mov [g_outDevice], rax

 putc$3:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 putc$4:
	; IntegralToIntegral £temporary1452 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putc$5
	neg eax
	neg al

 putc$5:
	; Parameter signedchar £temporary1452 60
	mov [rbp + 60], al

 putc$6:
	; Call printChar 36 0
	mov qword [rbp + 36], putc$7
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 putc$7:
	; PostCall 36

 putc$8:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 putc$9:
	; FunctionEnd putc

section .text

 fputc:
	; Assign g_outStatus 0
	mov dword [g_outStatus], 0

 fputc$1:
	; IntegralToIntegral £temporary1454 stream
	mov rax, [rbp + 28]

 fputc$2:
	; Assign g_outDevice £temporary1454
	mov [g_outDevice], rax

 fputc$3:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputc$4:
	; IntegralToIntegral £temporary1455 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge fputc$5
	neg eax
	neg al

 fputc$5:
	; Parameter signedchar £temporary1455 60
	mov [rbp + 60], al

 fputc$6:
	; Call printChar 36 0
	mov qword [rbp + 36], fputc$7
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 fputc$7:
	; PostCall 36

 fputc$8:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fputc$9:
	; FunctionEnd fputc

section .text

 putchar:
	; Assign g_outStatus 0
	mov dword [g_outStatus], 0

 putchar$1:
	; IntegralToIntegral £temporary1457 stdout
	mov rax, [stdout]

 putchar$2:
	; Assign g_outDevice £temporary1457
	mov [g_outDevice], rax

 putchar$3:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 putchar$4:
	; IntegralToIntegral £temporary1458 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putchar$5
	neg eax
	neg al

 putchar$5:
	; Parameter signedchar £temporary1458 52
	mov [rbp + 52], al

 putchar$6:
	; Call printChar 28 0
	mov qword [rbp + 28], putchar$7
	mov [rbp + 36], rbp
	add rbp, 28
	jmp printChar

 putchar$7:
	; PostCall 28

 putchar$8:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 putchar$9:
	; FunctionEnd putchar

section .text

 printChar:
	; Empty

 printChar$1:
	; Case 6 g_outStatus 0
	mov eax, [g_outStatus]
	cmp eax, 0
	je printChar$6

 printChar$2:
	; Case 19 g_outStatus 1
	cmp eax, 1
	je printChar$19

 printChar$3:
	; Case 28 g_outStatus 2
	cmp eax, 2
	je printChar$28

 printChar$4:
	; CaseEnd g_outStatus

 printChar$5:
	; Goto 29
	jmp printChar$29

 printChar$6:
	; IntegralToIntegral £temporary1460 g_outDevice
	mov rax, [g_outDevice]

 printChar$7:
	; Assign stream £temporary1460
	mov [rbp + 37], rax

 printChar$8:
	; AssignRegister rax 1
	mov rax, 1

 printChar$9:
	; Dereference £temporary1463 -> stream stream 0
	mov rsi, [rbp + 37]

 printChar$10:
	; IntegralToIntegral £temporary1464 £temporary1463 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 printChar$11:
	; AssignRegister rdi £temporary1464

 printChar$12:
	; Address £temporary1466 c
	mov rsi, rbp
	add rsi, 24

 printChar$13:
	; IntegralToIntegral £temporary1467 £temporary1466

 printChar$14:
	; AssignRegister rsi £temporary1467

 printChar$15:
	; AssignRegister rdx 1
	mov rdx, 1

 printChar$16:
	; SysCall
	syscall

 printChar$17:
	; BinaryAdd g_outChars g_outChars 1
	inc dword [g_outChars]

 printChar$18:
	; Goto 29
	jmp printChar$29

 printChar$19:
	; IntegralToIntegral £temporary1470 g_outDevice
	mov rax, [g_outDevice]

 printChar$20:
	; Assign outString £temporary1470
	mov [rbp + 29], rax

 printChar$21:
	; Assign £temporary1471 g_outChars
	mov eax, [g_outChars]

 printChar$22:
	; BinaryAdd g_outChars g_outChars 1
	inc dword [g_outChars]

 printChar$23:
	; IntegralToIntegral £temporary1473 £temporary1471
	mov rbx, 4294967295
	and rax, rbx

 printChar$24:
	; BinaryAdd £temporary1475 outString £temporary1473
	mov rsi, [rbp + 29]
	add rsi, rax

 printChar$25:
	; Dereference £temporary1472 -> £temporary1475 £temporary1475 0

 printChar$26:
	; Assign £temporary1472 -> £temporary1475 c
	mov al, [rbp + 24]
	mov [rsi], al

 printChar$27:
	; Goto 29
	jmp printChar$29

 printChar$28:
	; BinaryAdd g_outChars g_outChars 1
	inc dword [g_outChars]

 printChar$29:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printChar$30:
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
	; IntegralToIntegral £temporary1481 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$4:
	; BinaryAdd £temporary1483 s £temporary1481
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$5:
	; Dereference £temporary1480 -> £temporary1483 £temporary1483 0

 printString$6:
	; Equal 57 £temporary1480 -> £temporary1483 0
	cmp byte [rsi], 0
	je printString$57

 printString$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$8:
	; IntegralToIntegral £temporary1487 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$9:
	; BinaryAdd £temporary1489 s £temporary1487
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$10:
	; Dereference £temporary1486 -> £temporary1489 £temporary1489 0

 printString$11:
	; Parameter signedchar £temporary1486 -> £temporary1489 64
	mov al, [rsi]
	mov [rbp + 64], al

 printString$12:
	; Call printChar 40 0
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
	; Goto 3
	jmp printString$3

 printString$16:
	; Assign index 0
	mov dword [rbp + 36], 0

 printString$17:
	; Assign £temporary1491 precision
	mov eax, [rbp + 32]

 printString$18:
	; BinarySubtract precision precision 1
	dec dword [rbp + 32]

 printString$19:
	; SignedLessThanEqual 57 £temporary1491 0
	cmp eax, 0
	jle printString$57

 printString$20:
	; IntegralToIntegral £temporary1494 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$21:
	; BinaryAdd £temporary1496 s £temporary1494
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$22:
	; Dereference £temporary1493 -> £temporary1496 £temporary1496 0

 printString$23:
	; Equal 57 £temporary1493 -> £temporary1496 0
	cmp byte [rsi], 0
	je printString$57

 printString$24:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$25:
	; IntegralToIntegral £temporary1501 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$26:
	; BinaryAdd £temporary1503 s £temporary1501
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$27:
	; Dereference £temporary1500 -> £temporary1503 £temporary1503 0

 printString$28:
	; Parameter signedchar £temporary1500 -> £temporary1503 64
	mov al, [rsi]
	mov [rbp + 64], al

 printString$29:
	; Call printChar 40 0
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
	; Goto 17
	jmp printString$17

 printString$33:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$34:
	; Parameter signedchar 60 60
	mov byte [rbp + 60], 60

 printString$35:
	; Call printChar 36 0
	mov qword [rbp + 36], printString$36
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$36:
	; PostCall 36

 printString$37:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$38:
	; Parameter signedchar 78 60
	mov byte [rbp + 60], 78

 printString$39:
	; Call printChar 36 0
	mov qword [rbp + 36], printString$40
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$40:
	; PostCall 36

 printString$41:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$42:
	; Parameter signedchar 85 60
	mov byte [rbp + 60], 85

 printString$43:
	; Call printChar 36 0
	mov qword [rbp + 36], printString$44
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$44:
	; PostCall 36

 printString$45:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$46:
	; Parameter signedchar 76 60
	mov byte [rbp + 60], 76

 printString$47:
	; Call printChar 36 0
	mov qword [rbp + 36], printString$48
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$48:
	; PostCall 36

 printString$49:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$50:
	; Parameter signedchar 76 60
	mov byte [rbp + 60], 76

 printString$51:
	; Call printChar 36 0
	mov qword [rbp + 36], printString$52
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$52:
	; PostCall 36

 printString$53:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$54:
	; Parameter signedchar 62 60
	mov byte [rbp + 60], 62

 printString$55:
	; Call printChar 36 0
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

int8$10#:
	; Initializer Signed_Long_Int 10
	dq 10

section .text

 printLongIntRec:
	; Equal 15 longValue 0
	cmp qword [rbp + 24], 0
	je printLongIntRec$15

 printLongIntRec$1:
	; SignedModulo £temporary1512 longValue 10
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [int8$10#]

 printLongIntRec$2:
	; IntegralToIntegral £temporary1513 £temporary1512
	cmp rdx, 0
	jge printLongIntRec$3
	neg rdx
	neg edx

 printLongIntRec$3:
	; Assign digit £temporary1513
	mov [rbp + 32], edx

 printLongIntRec$4:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongIntRec$5:
	; SignedDivide £temporary1514 longValue 10
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [int8$10#]

 printLongIntRec$6:
	; Parameter signed long int £temporary1514 60
	mov [rbp + 60], rax

 printLongIntRec$7:
	; Call printLongIntRec 36 0
	mov qword [rbp + 36], printLongIntRec$8
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printLongIntRec

 printLongIntRec$8:
	; PostCall 36

 printLongIntRec$9:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongIntRec$10:
	; BinaryAdd £temporary1516 digit 48
	mov eax, [rbp + 32]
	add eax, 48

 printLongIntRec$11:
	; IntegralToIntegral £temporary1517 £temporary1516
	cmp eax, 0
	jge printLongIntRec$12
	neg eax
	neg al

 printLongIntRec$12:
	; Parameter signedchar £temporary1517 60
	mov [rbp + 60], al

 printLongIntRec$13:
	; Call printChar 36 0
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
	; UnarySubtract £temporary1520 longValue
	mov rax, [rbp + 24]
	neg rax

 printLongInt$2:
	; Assign longValue £temporary1520
	mov [rbp + 24], rax

 printLongInt$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$4:
	; Parameter signedchar 45 64
	mov byte [rbp + 64], 45

 printLongInt$5:
	; Call printChar 40 0
	mov qword [rbp + 40], printLongInt$6
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$6:
	; PostCall 40

 printLongInt$7:
	; Goto 19
	jmp printLongInt$19

 printLongInt$8:
	; Equal 14 space 0
	cmp dword [rbp + 36], 0
	je printLongInt$14

 printLongInt$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$10:
	; Parameter signedchar 32 64
	mov byte [rbp + 64], 32

 printLongInt$11:
	; Call printChar 40 0
	mov qword [rbp + 40], printLongInt$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$12:
	; PostCall 40

 printLongInt$13:
	; Goto 19
	jmp printLongInt$19

 printLongInt$14:
	; Equal 19 plus 0
	cmp dword [rbp + 32], 0
	je printLongInt$19

 printLongInt$15:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$16:
	; Parameter signedchar 43 64
	mov byte [rbp + 64], 43

 printLongInt$17:
	; Call printChar 40 0
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
	; Parameter signedchar 48 64
	mov byte [rbp + 64], 48

 printLongInt$22:
	; Call printChar 40 0
	mov qword [rbp + 40], printLongInt$23
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$23:
	; PostCall 40

 printLongInt$24:
	; Goto 29
	jmp printLongInt$29

 printLongInt$25:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$26:
	; Parameter signed long int longValue 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 printLongInt$27:
	; Call printLongIntRec 40 0
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
	; SignedGreaterThanEqual 4 digit 10
	cmp dword [rbp + 24], 10
	jge digitToChar$4

 digitToChar$1:
	; BinaryAdd £temporary1530 digit 48
	mov ebx, [rbp + 24]
	add ebx, 48

 digitToChar$2:
	; IntegralToIntegral £temporary1531 £temporary1530
	cmp ebx, 0
	jge digitToChar$3
	neg ebx
	neg bl

 digitToChar$3:
	; Return £temporary1531
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$4:
	; Equal 9 capital 0
	cmp dword [rbp + 28], 0
	je digitToChar$9

 digitToChar$5:
	; BinarySubtract £temporary1532 digit 10
	mov ebx, [rbp + 24]
	sub ebx, 10

 digitToChar$6:
	; BinaryAdd £temporary1533 £temporary1532 65
	add ebx, 65

 digitToChar$7:
	; IntegralToIntegral £temporary1534 £temporary1533
	cmp ebx, 0
	jge digitToChar$8
	neg ebx
	neg bl

 digitToChar$8:
	; Return £temporary1534
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$9:
	; BinarySubtract £temporary1535 digit 10
	mov ebx, [rbp + 24]
	sub ebx, 10

 digitToChar$10:
	; BinaryAdd £temporary1536 £temporary1535 97
	add ebx, 97

 digitToChar$11:
	; IntegralToIntegral £temporary1537 £temporary1536
	cmp ebx, 0
	jge digitToChar$12
	neg ebx
	neg bl

 digitToChar$12:
	; Return £temporary1537
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$13:
	; FunctionEnd digitToChar

section .text

 printUnsignedLongRec:
	; UnsignedLessThanEqual 22 unsignedValue 0
	cmp qword [rbp + 24], 0
	jbe printUnsignedLongRec$22

 printUnsignedLongRec$1:
	; UnsignedModulo £temporary1540 unsignedValue base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$2:
	; IntegralToIntegral £temporary1541 £temporary1540

 printUnsignedLongRec$3:
	; Assign digit £temporary1541
	mov [rbp + 44], edx

 printUnsignedLongRec$4:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLongRec$5:
	; UnsignedDivide £temporary1542 unsignedValue base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$6:
	; Parameter unsignedlongint £temporary1542 72
	mov [rbp + 72], rax

 printUnsignedLongRec$7:
	; Parameter unsignedlongint base 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 printUnsignedLongRec$8:
	; Parameter signedint capital 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printUnsignedLongRec$9:
	; Call printUnsignedLongRec 48 0
	mov qword [rbp + 48], printUnsignedLongRec$10
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printUnsignedLongRec

 printUnsignedLongRec$10:
	; PostCall 48

 printUnsignedLongRec$11:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLongRec$12:
	; Parameter signedint digit 72
	mov eax, [rbp + 44]
	mov [rbp + 72], eax

 printUnsignedLongRec$13:
	; Parameter signedint capital 76
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

 printUnsignedLongRec$14:
	; Call digitToChar 48 0
	mov qword [rbp + 48], printUnsignedLongRec$15
	mov [rbp + 56], rbp
	add rbp, 48
	jmp digitToChar

 printUnsignedLongRec$15:
	; PostCall 48

 printUnsignedLongRec$16:
	; GetReturnValue £temporary1544

 printUnsignedLongRec$17:
	; Assign c £temporary1544
	mov [rbp + 48], bl

 printUnsignedLongRec$18:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLongRec$19:
	; Parameter signedchar c 73
	mov al, [rbp + 48]
	mov [rbp + 73], al

 printUnsignedLongRec$20:
	; Call printChar 49 0
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
	; Parameter signedchar 43 80
	mov byte [rbp + 80], 43

 printUnsignedLong$3:
	; Call printChar 56 0
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
	; Parameter signedchar 32 80
	mov byte [rbp + 80], 32

 printUnsignedLong$8:
	; Call printChar 56 0
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
	; Parameter signedchar 48 80
	mov byte [rbp + 80], 48

 printUnsignedLong$14:
	; Call printChar 56 0
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
	; Parameter signedchar 48 80
	mov byte [rbp + 80], 48

 printUnsignedLong$19:
	; Call printChar 56 0
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
	; Assign £temporary1555 88
	mov al, 88

 printUnsignedLong$24:
	; Goto 26
	jmp printUnsignedLong$26

 printUnsignedLong$25:
	; Assign £temporary1555 120
	mov al, 120

 printUnsignedLong$26:
	; Parameter signedchar £temporary1555 80
	mov [rbp + 80], al

 printUnsignedLong$27:
	; Call printChar 56 0
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
	; Parameter signedchar 48 80
	mov byte [rbp + 80], 48

 printUnsignedLong$32:
	; Call printChar 56 0
	mov qword [rbp + 56], printUnsignedLong$33
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$33:
	; PostCall 56

 printUnsignedLong$34:
	; Goto 41
	jmp printUnsignedLong$41

 printUnsignedLong$35:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$36:
	; Parameter unsignedlongint unsignedValue 80
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 printUnsignedLong$37:
	; Parameter unsignedlongint base 88
	mov rax, [rbp + 44]
	mov [rbp + 88], rax

 printUnsignedLong$38:
	; Parameter signedint capital 96
	mov eax, [rbp + 52]
	mov [rbp + 96], eax

 printUnsignedLong$39:
	; Call printUnsignedLongRec 56 0
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

float8$10.0#:
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
	; FloatingToIntegral £temporary1561 longDoubleValue
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 printLongDoubleFraction$3:
	; IntegralToFloating £temporary1562 £temporary1561
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 printLongDoubleFraction$4:
	; BinarySubtract £temporary1563 longDoubleValue £temporary1562
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
	; Parameter signedchar 46 64
	mov byte [rbp + 64], 46

 printLongDoubleFraction$12:
	; Call printChar 40 0
	mov qword [rbp + 40], printLongDoubleFraction$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongDoubleFraction$13:
	; PostCall 40

 printLongDoubleFraction$14:
	; Assign £temporary1569 precision
	mov eax, [rbp + 36]

 printLongDoubleFraction$15:
	; BinarySubtract precision precision 1
	dec dword [rbp + 36]

 printLongDoubleFraction$16:
	; SignedLessThanEqual 35 £temporary1569 0
	cmp eax, 0
	jle printLongDoubleFraction$35

 printLongDoubleFraction$17:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 printLongDoubleFraction$18:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$19:
	; SignedMultiply £temporary1571 10.0 longDoubleValue
	fmul

 printLongDoubleFraction$20:
	; PopFloat longDoubleValue10
	fstp qword [rbp + 40]

 printLongDoubleFraction$21:
	; PushFloat longDoubleValue10
	fld qword [rbp + 40]

 printLongDoubleFraction$22:
	; FloatingToIntegral £temporary1572 longDoubleValue10
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printLongDoubleFraction$23:
	; Assign digitValue £temporary1572
	mov [rbp + 48], eax

 printLongDoubleFraction$24:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleFraction$25:
	; BinaryAdd £temporary1573 digitValue 48
	mov eax, [rbp + 48]
	add eax, 48

 printLongDoubleFraction$26:
	; IntegralToIntegral £temporary1574 £temporary1573
	cmp eax, 0
	jge printLongDoubleFraction$27
	neg eax
	neg al

 printLongDoubleFraction$27:
	; Parameter signedchar £temporary1574 76
	mov [rbp + 76], al

 printLongDoubleFraction$28:
	; Call printChar 52 0
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
	; IntegralToFloating £temporary1576 digitValue
	fild dword [rbp + 48]

 printLongDoubleFraction$32:
	; BinarySubtract £temporary1577 longDoubleValue10 £temporary1576
	fsub

 printLongDoubleFraction$33:
	; PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoubleFraction$34:
	; Goto 14
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
	; Parameter signedchar 45 72
	mov byte [rbp + 72], 45

 printLongDoublePlain$5:
	; Call printChar 48 0
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
	; UnarySubtract £temporary1580 longDoubleValue
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
	; FloatingToIntegral £temporary1581 longDoubleValue
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 printLongDoublePlain$14:
	; Assign longValue £temporary1581
	mov [rbp + 48], rax

 printLongDoublePlain$15:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoublePlain$16:
	; Parameter signed long int longValue 80
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 printLongDoublePlain$17:
	; Parameter signedint plus 88
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

 printLongDoublePlain$18:
	; Parameter signedint space 92
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 printLongDoublePlain$19:
	; Call printLongInt 56 0
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
	; IntegralToFloating £temporary1583 longValue
	fild qword [rbp + 48]

 printLongDoublePlain$23:
	; BinarySubtract £temporary1584 longDoubleValue £temporary1583
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
	; Parameter longdouble longDoubleValue 80
	fstp qword [rbp + 80]

 printLongDoublePlain$28:
	; Parameter signedint grid 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printLongDoublePlain$29:
	; Parameter signedint precision 92
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

 printLongDoublePlain$30:
	; Call printLongDoubleFraction 56 0
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
	; Parameter signedchar 48 76
	mov byte [rbp + 76], 48

 printLongDoubleExpo$5:
	; Call printChar 52 0
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
	; Parameter longdouble 0.0 76
	fstp qword [rbp + 76]

 printLongDoubleExpo$10:
	; Parameter signedint precision 84
	mov eax, [rbp + 44]
	mov [rbp + 84], eax

 printLongDoubleExpo$11:
	; Parameter signedint grid 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printLongDoubleExpo$12:
	; Call printLongDoubleFraction 52 0
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
	; Assign £temporary1591 69
	mov al, 69

 printLongDoubleExpo$17:
	; Goto 19
	jmp printLongDoubleExpo$19

 printLongDoubleExpo$18:
	; Assign £temporary1591 101
	mov al, 101

 printLongDoubleExpo$19:
	; Parameter signedchar £temporary1591 76
	mov [rbp + 76], al

 printLongDoubleExpo$20:
	; Call printChar 52 0
	mov qword [rbp + 52], printLongDoubleExpo$21
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$21:
	; PostCall 52

 printLongDoubleExpo$22:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$23:
	; Parameter signedchar 48 76
	mov byte [rbp + 76], 48

 printLongDoubleExpo$24:
	; Call printChar 52 0
	mov qword [rbp + 52], printLongDoubleExpo$25
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$25:
	; PostCall 52

 printLongDoubleExpo$26:
	; Goto 80
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
	; Parameter signedchar 45 76
	mov byte [rbp + 76], 45

 printLongDoubleExpo$32:
	; Call printChar 52 0
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
	; UnarySubtract £temporary1596 value
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
	; Parameter double value 76
	fstp qword [rbp + 76]

 printLongDoubleExpo$40:
	; Call log10 52 0
	mov qword [rbp + 52], printLongDoubleExpo$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp log10

 printLongDoubleExpo$41:
	; PostCall 52

 printLongDoubleExpo$42:
	; GetReturnValue £temporary1597

 printLongDoubleExpo$43:
	; FloatingToIntegral £temporary1598 £temporary1597
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printLongDoubleExpo$44:
	; Assign expo £temporary1598
	mov [rbp + 52], eax

 printLongDoubleExpo$45:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$46:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 56]

 printLongDoubleExpo$47:
	; PushFloat 10.0
	fld qword [float8$10.0#]

 printLongDoubleExpo$48:
	; Parameter double 10.0 80
	fstp qword [rbp + 88]

 printLongDoubleExpo$49:
	; IntegralToFloating £temporary1599 expo
	fild dword [rbp + 52]

 printLongDoubleExpo$50:
	; Parameter double £temporary1599 88
	fstp qword [rbp + 96]

 printLongDoubleExpo$51:
	; Call pow 56 0
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
	; GetReturnValue £temporary1600

 printLongDoubleExpo$54:
	; SignedDivide £temporary1601 value £temporary1600
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
	; Parameter longdouble value 80
	fstp qword [rbp + 80]

 printLongDoubleExpo$59:
	; Parameter signedint plus 88
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

 printLongDoubleExpo$60:
	; Parameter signedint space 92
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 printLongDoubleExpo$61:
	; Parameter signedint grid 96
	mov eax, [rbp + 40]
	mov [rbp + 96], eax

 printLongDoubleExpo$62:
	; Parameter signedint precision 100
	mov eax, [rbp + 44]
	mov [rbp + 100], eax

 printLongDoubleExpo$63:
	; Call printLongDoublePlain 56 0
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
	; Assign £temporary1604 69
	mov al, 69

 printLongDoubleExpo$68:
	; Goto 70
	jmp printLongDoubleExpo$70

 printLongDoubleExpo$69:
	; Assign £temporary1604 101
	mov al, 101

 printLongDoubleExpo$70:
	; Parameter signedchar £temporary1604 80
	mov [rbp + 80], al

 printLongDoubleExpo$71:
	; Call printChar 56 0
	mov qword [rbp + 56], printLongDoubleExpo$72
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printLongDoubleExpo$72:
	; PostCall 56

 printLongDoubleExpo$73:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$74:
	; IntegralToIntegral £temporary1606 expo
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printLongDoubleExpo$75
	neg eax
	neg rax

 printLongDoubleExpo$75:
	; Parameter signed long int £temporary1606 80
	mov [rbp + 80], rax

 printLongDoubleExpo$76:
	; Parameter signedint 1 88
	mov dword [rbp + 88], 1

 printLongDoubleExpo$77:
	; Parameter signedint 0 92
	mov dword [rbp + 92], 0

 printLongDoubleExpo$78:
	; Call printLongInt 56 0
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
	; Equal 9 widthPtr 0
	cmp qword [rbp + 32], 0
	je checkWidthAndPrecision$9

 checkWidthAndPrecision$1:
	; Dereference £temporary1614 -> widthPtr widthPtr 0
	mov rsi, [rbp + 32]

 checkWidthAndPrecision$2:
	; NotEqual 9 £temporary1614 -> widthPtr -1
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$9

 checkWidthAndPrecision$3:
	; Dereference £temporary1617 -> widthPtr widthPtr 0
	mov rsi, [rbp + 32]

 checkWidthAndPrecision$4:
	; BinaryAdd arg_list arg_list 4
	add qword [rbp + 24], 4

 checkWidthAndPrecision$5:
	; BinarySubtract £temporary1620 arg_list 4
	mov rdi, [rbp + 24]
	sub rdi, 4

 checkWidthAndPrecision$6:
	; IntegralToIntegral £temporary1622 £temporary1620

 checkWidthAndPrecision$7:
	; Dereference £temporary1623 -> £temporary1622 £temporary1622 0

 checkWidthAndPrecision$8:
	; Assign £temporary1617 -> widthPtr £temporary1623 -> £temporary1622
	mov eax, [rdi]
	mov [rsi], eax

 checkWidthAndPrecision$9:
	; Equal 18 precisionPtr 0
	cmp qword [rbp + 40], 0
	je checkWidthAndPrecision$18

 checkWidthAndPrecision$10:
	; Dereference £temporary1625 -> precisionPtr precisionPtr 0
	mov rsi, [rbp + 40]

 checkWidthAndPrecision$11:
	; NotEqual 18 £temporary1625 -> precisionPtr -1
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$18

 checkWidthAndPrecision$12:
	; Dereference £temporary1628 -> precisionPtr precisionPtr 0
	mov rsi, [rbp + 40]

 checkWidthAndPrecision$13:
	; BinaryAdd arg_list arg_list 4
	add qword [rbp + 24], 4

 checkWidthAndPrecision$14:
	; BinarySubtract £temporary1631 arg_list 4
	mov rdi, [rbp + 24]
	sub rdi, 4

 checkWidthAndPrecision$15:
	; IntegralToIntegral £temporary1633 £temporary1631

 checkWidthAndPrecision$16:
	; Dereference £temporary1634 -> £temporary1633 £temporary1633 0

 checkWidthAndPrecision$17:
	; Assign £temporary1628 -> precisionPtr £temporary1634 -> £temporary1633
	mov eax, [rdi]
	mov [rsi], eax

 checkWidthAndPrecision$18:
	; Return arg_list
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 checkWidthAndPrecision$19:
	; FunctionEnd checkWidthAndPrecision

section .text

 testY:
	; Empty

 testY$1:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 testY$2:
	; FunctionEnd testY

section .text

 testX:
	; Empty

 testX$1:
	; NotEqual 4 j 1
	cmp dword [rbp + 28], 1
	jne testX$4

 testX$2:
	; Assign i 1
	mov dword [rbp + 24], 1

 testX$3:
	; Goto 5
	jmp testX$5

 testX$4:
	; Assign i 2
	mov dword [rbp + 24], 2

 testX$5:
	; Assign j i
	mov eax, [rbp + 24]
	mov [rbp + 28], eax

 testX$6:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 testX$7:
	; FunctionEnd testX

section .text

 printArgument:
	; Dereference £temporary1636 -> format format 0
	mov rsi, [rbp + 24]

 printArgument$1:
	; Assign c £temporary1636 -> format
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
	; Case 73 c 99
	cmp al, 99
	je printArgument$73

 printArgument$5:
	; Case 93 c 115
	cmp al, 115
	je printArgument$93

 printArgument$6:
	; Case 113 c 88
	cmp al, 88
	je printArgument$113

 printArgument$7:
	; Case 113 c 120
	cmp al, 120
	je printArgument$113

 printArgument$8:
	; Case 113 c 98
	cmp al, 98
	je printArgument$113

 printArgument$9:
	; Case 113 c 111
	cmp al, 111
	je printArgument$113

 printArgument$10:
	; Case 113 c 117
	cmp al, 117
	je printArgument$113

 printArgument$11:
	; Case 173 c 71
	cmp al, 71
	je printArgument$173

 printArgument$12:
	; Case 173 c 103
	cmp al, 103
	je printArgument$173

 printArgument$13:
	; Case 173 c 69
	cmp al, 69
	je printArgument$173

 printArgument$14:
	; Case 173 c 101
	cmp al, 101
	je printArgument$173

 printArgument$15:
	; Case 173 c 102
	cmp al, 102
	je printArgument$173

 printArgument$16:
	; Case 299 c 112
	cmp al, 112
	je printArgument$299

 printArgument$17:
	; Case 324 c 110
	cmp al, 110
	je printArgument$324

 printArgument$18:
	; Case 346 c 37
	cmp al, 37
	je printArgument$346

 printArgument$19:
	; CaseEnd c

 printArgument$20:
	; Goto 359
	jmp printArgument$359

 printArgument$21:
	; Equal 30 shortInt 0
	cmp dword [rbp + 64], 0
	je printArgument$30

 printArgument$22:
	; BinaryAdd arg_list arg_list 4
	add qword [rbp + 32], 4

 printArgument$23:
	; BinarySubtract £temporary1639 arg_list 4
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$24:
	; IntegralToIntegral £temporary1641 £temporary1639

 printArgument$25:
	; Dereference £temporary1642 -> £temporary1641 £temporary1641 0

 printArgument$26:
	; IntegralToIntegral £temporary1643 £temporary1642 -> £temporary1641
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$27
	neg eax
	neg ax

 printArgument$27:
	; IntegralToIntegral £temporary1644 £temporary1643
	mov rbx, 65535
	and rax, rbx
	cmp ax, 0
	jge printArgument$28
	neg ax
	neg rax

 printArgument$28:
	; Assign longValue £temporary1644
	mov [rbp + 114], rax

 printArgument$29:
	; Goto 43
	jmp printArgument$43

 printArgument$30:
	; Equal 37 longInt 0
	cmp dword [rbp + 68], 0
	je printArgument$37

 printArgument$31:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 printArgument$32:
	; BinarySubtract £temporary1647 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$33:
	; IntegralToIntegral £temporary1649 £temporary1647

 printArgument$34:
	; Dereference £temporary1650 -> £temporary1649 £temporary1649 0

 printArgument$35:
	; Assign longValue £temporary1650 -> £temporary1649
	mov rax, [rsi]
	mov [rbp + 114], rax

 printArgument$36:
	; Goto 43
	jmp printArgument$43

 printArgument$37:
	; BinaryAdd arg_list arg_list 4
	add qword [rbp + 32], 4

 printArgument$38:
	; BinarySubtract £temporary1653 arg_list 4
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$39:
	; IntegralToIntegral £temporary1655 £temporary1653

 printArgument$40:
	; Dereference £temporary1656 -> £temporary1655 £temporary1655 0

 printArgument$41:
	; IntegralToIntegral £temporary1657 £temporary1656 -> £temporary1655
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printArgument$42
	neg eax
	neg rax

 printArgument$42:
	; Assign longValue £temporary1657
	mov [rbp + 114], rax

 printArgument$43:
	; Equal 50 negativePtr 0
	cmp qword [rbp + 80], 0
	je printArgument$50

 printArgument$44:
	; Dereference £temporary1661 -> negativePtr negativePtr 0
	mov rsi, [rbp + 80]

 printArgument$45:
	; SignedGreaterThanEqual 48 longValue 0
	cmp qword [rbp + 114], 0
	jge printArgument$48

 printArgument$46:
	; Assign £temporary1663 1
	mov eax, 1

 printArgument$47:
	; Goto 49
	jmp printArgument$49

 printArgument$48:
	; Assign £temporary1663 0
	mov eax, 0

 printArgument$49:
	; Assign £temporary1661 -> negativePtr £temporary1663
	mov [rsi], eax

 printArgument$50:
	; NotEqual 57 sign 0
	cmp dword [rbp + 76], 0
	jne printArgument$57

 printArgument$51:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$52:
	; Parameter signed long int longValue 146
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$53:
	; Call labs 122 0
	mov qword [rbp + 122], printArgument$54
	mov [rbp + 130], rbp
	add rbp, 122
	jmp labs

 printArgument$54:
	; PostCall 122

 printArgument$55:
	; GetReturnValue £temporary1666

 printArgument$56:
	; Assign longValue £temporary1666
	mov [rbp + 114], rbx

 printArgument$57:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$58:
	; Parameter pointer arg_list 146
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

 printArgument$59:
	; Parameter pointer widthPtr 154
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

 printArgument$60:
	; Address £temporary1667 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$61:
	; Parameter pointer £temporary1667 162
	mov [rbp + 162], rsi

 printArgument$62:
	; Call checkWidthAndPrecision 122 0
	mov qword [rbp + 122], printArgument$63
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$63:
	; PostCall 122

 printArgument$64:
	; GetReturnValue £temporary1668

 printArgument$65:
	; Assign arg_list £temporary1668
	mov [rbp + 32], rbx

 printArgument$66:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$67:
	; Parameter signed long int longValue 146
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$68:
	; Parameter signedint plus 154
	mov eax, [rbp + 40]
	mov [rbp + 154], eax

 printArgument$69:
	; Parameter signedint space 158
	mov eax, [rbp + 44]
	mov [rbp + 158], eax

 printArgument$70:
	; Call printLongInt 122 0
	mov qword [rbp + 122], printArgument$71
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printLongInt

 printArgument$71:
	; PostCall 122

 printArgument$72:
	; Goto 359
	jmp printArgument$359

 printArgument$73:
	; BinaryAdd arg_list arg_list 4
	add qword [rbp + 32], 4

 printArgument$74:
	; BinarySubtract £temporary1672 arg_list 4
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$75:
	; IntegralToIntegral £temporary1674 £temporary1672

 printArgument$76:
	; Dereference £temporary1675 -> £temporary1674 £temporary1674 0

 printArgument$77:
	; IntegralToIntegral £temporary1676 £temporary1675 -> £temporary1674
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$78
	neg eax
	neg al

 printArgument$78:
	; Assign charValue £temporary1676
	mov [rbp + 89], al

 printArgument$79:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$80:
	; Parameter pointer arg_list 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$81:
	; Parameter pointer widthPtr 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$82:
	; Address £temporary1677 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$83:
	; Parameter pointer £temporary1677 154
	mov [rbp + 154], rsi

 printArgument$84:
	; Call checkWidthAndPrecision 114 0
	mov qword [rbp + 114], printArgument$85
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$85:
	; PostCall 114

 printArgument$86:
	; GetReturnValue £temporary1678

 printArgument$87:
	; Assign arg_list £temporary1678
	mov [rbp + 32], rbx

 printArgument$88:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$89:
	; Parameter signedchar charValue 138
	mov al, [rbp + 89]
	mov [rbp + 138], al

 printArgument$90:
	; Call printChar 114 0
	mov qword [rbp + 114], printArgument$91
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

 printArgument$91:
	; PostCall 114

 printArgument$92:
	; Goto 359
	jmp printArgument$359

 printArgument$93:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 printArgument$94:
	; BinarySubtract £temporary1682 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$95:
	; IntegralToIntegral £temporary1684 £temporary1682

 printArgument$96:
	; Dereference £temporary1685 -> £temporary1684 £temporary1684 0

 printArgument$97:
	; Assign stringValue £temporary1685 -> £temporary1684
	mov rax, [rsi]
	mov [rbp + 114], rax

 printArgument$98:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$99:
	; Parameter pointer arg_list 146
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

 printArgument$100:
	; Parameter pointer widthPtr 154
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

 printArgument$101:
	; Address £temporary1686 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$102:
	; Parameter pointer £temporary1686 162
	mov [rbp + 162], rsi

 printArgument$103:
	; Call checkWidthAndPrecision 122 0
	mov qword [rbp + 122], printArgument$104
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$104:
	; PostCall 122

 printArgument$105:
	; GetReturnValue £temporary1687

 printArgument$106:
	; Assign arg_list £temporary1687
	mov [rbp + 32], rbx

 printArgument$107:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$108:
	; Parameter pointer stringValue 146
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$109:
	; Parameter signedint precision 154
	mov eax, [rbp + 60]
	mov [rbp + 154], eax

 printArgument$110:
	; Call printString 122 0
	mov qword [rbp + 122], printArgument$111
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printString

 printArgument$111:
	; PostCall 122

 printArgument$112:
	; Goto 359
	jmp printArgument$359

 printArgument$113:
	; NotEqual 116 c 117
	cmp byte [rbp + 88], 117
	jne printArgument$116

 printArgument$114:
	; Assign £temporary1694 10
	mov rax, 10

 printArgument$115:
	; Goto 125
	jmp printArgument$125

 printArgument$116:
	; NotEqual 119 c 111
	cmp byte [rbp + 88], 111
	jne printArgument$119

 printArgument$117:
	; Assign £temporary1693 8
	mov rax, 8

 printArgument$118:
	; Goto 124
	jmp printArgument$124

 printArgument$119:
	; NotEqual 122 c 98
	cmp byte [rbp + 88], 98
	jne printArgument$122

 printArgument$120:
	; Assign £temporary1692 2
	mov rax, 2

 printArgument$121:
	; Goto 123
	jmp printArgument$123

 printArgument$122:
	; Assign £temporary1692 16
	mov rax, 16

 printArgument$123:
	; Assign £temporary1693 £temporary1692

 printArgument$124:
	; Assign £temporary1694 £temporary1693

 printArgument$125:
	; Assign base £temporary1694
	mov [rbp + 114], rax

 printArgument$126:
	; Equal 135 shortInt 0
	cmp dword [rbp + 64], 0
	je printArgument$135

 printArgument$127:
	; BinaryAdd arg_list arg_list 4
	add qword [rbp + 32], 4

 printArgument$128:
	; BinarySubtract £temporary1697 arg_list 4
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$129:
	; IntegralToIntegral £temporary1699 £temporary1697

 printArgument$130:
	; Dereference £temporary1700 -> £temporary1699 £temporary1699 0

 printArgument$131:
	; IntegralToIntegral £temporary1701 £temporary1700 -> £temporary1699
	mov eax, [rsi]

 printArgument$132:
	; IntegralToIntegral £temporary1702 £temporary1701
	mov rbx, 65535
	and rax, rbx

 printArgument$133:
	; Assign value £temporary1702
	mov [rbp + 122], rax

 printArgument$134:
	; Goto 148
	jmp printArgument$148

 printArgument$135:
	; Equal 142 longInt 0
	cmp dword [rbp + 68], 0
	je printArgument$142

 printArgument$136:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 printArgument$137:
	; BinarySubtract £temporary1705 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$138:
	; IntegralToIntegral £temporary1707 £temporary1705

 printArgument$139:
	; Dereference £temporary1708 -> £temporary1707 £temporary1707 0

 printArgument$140:
	; Assign value £temporary1708 -> £temporary1707
	mov rax, [rsi]
	mov [rbp + 122], rax

 printArgument$141:
	; Goto 148
	jmp printArgument$148

 printArgument$142:
	; BinaryAdd arg_list arg_list 4
	add qword [rbp + 32], 4

 printArgument$143:
	; BinarySubtract £temporary1711 arg_list 4
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$144:
	; IntegralToIntegral £temporary1713 £temporary1711

 printArgument$145:
	; Dereference £temporary1714 -> £temporary1713 £temporary1713 0

 printArgument$146:
	; IntegralToIntegral £temporary1715 £temporary1714 -> £temporary1713
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx

 printArgument$147:
	; Assign value £temporary1715
	mov [rbp + 122], rax

 printArgument$148:
	; PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$149:
	; Parameter pointer arg_list 154
	mov rax, [rbp + 32]
	mov [rbp + 154], rax

 printArgument$150:
	; Parameter pointer widthPtr 162
	mov rax, [rbp + 52]
	mov [rbp + 162], rax

 printArgument$151:
	; Address £temporary1718 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$152:
	; Parameter pointer £temporary1718 170
	mov [rbp + 170], rsi

 printArgument$153:
	; Call checkWidthAndPrecision 130 0
	mov qword [rbp + 130], printArgument$154
	mov [rbp + 138], rbp
	add rbp, 130
	jmp checkWidthAndPrecision

 printArgument$154:
	; PostCall 130

 printArgument$155:
	; GetReturnValue £temporary1719

 printArgument$156:
	; Assign arg_list £temporary1719
	mov [rbp + 32], rbx

 printArgument$157:
	; PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$158:
	; Parameter unsignedlongint value 154
	mov rax, [rbp + 122]
	mov [rbp + 154], rax

 printArgument$159:
	; Parameter signedint plus 162
	mov eax, [rbp + 40]
	mov [rbp + 162], eax

 printArgument$160:
	; Parameter signedint space 166
	mov eax, [rbp + 44]
	mov [rbp + 166], eax

 printArgument$161:
	; Parameter signedint grid 170
	mov eax, [rbp + 48]
	mov [rbp + 170], eax

 printArgument$162:
	; Parameter unsignedlongint base 174
	mov rax, [rbp + 114]
	mov [rbp + 174], rax

 printArgument$163:
	; PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$164:
	; IntegralToIntegral £temporary1720 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$165
	neg al
	neg eax

 printArgument$165:
	; Parameter signedint £temporary1720 206
	mov [rbp + 206], eax

 printArgument$166:
	; Call isupper 182 0
	mov qword [rbp + 182], printArgument$167
	mov [rbp + 190], rbp
	add rbp, 182
	jmp isupper

 printArgument$167:
	; PostCall 182

 printArgument$168:
	; GetReturnValue £temporary1721

 printArgument$169:
	; Parameter signedint £temporary1721 182
	mov [rbp + 182], ebx

 printArgument$170:
	; Call printUnsignedLong 130 0
	mov qword [rbp + 130], printArgument$171
	mov [rbp + 138], rbp
	add rbp, 130
	jmp printUnsignedLong

 printArgument$171:
	; PostCall 130

 printArgument$172:
	; Goto 359
	jmp printArgument$359

 printArgument$173:
	; Equal 190 longDouble 0
	cmp dword [rbp + 72], 0
	je printArgument$190

 printArgument$174:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 printArgument$175:
	; BinarySubtract £temporary1725 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$176:
	; IntegralToIntegral £temporary1727 £temporary1725

 printArgument$177:
	; Dereference £temporary1728 -> £temporary1727 £temporary1727 0

 printArgument$178:
	; PushFloat £temporary1728 -> £temporary1727
	fld qword [rsi]

 printArgument$179:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$180:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$181:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$182:
	; Parameter longdouble longDoubleValue 138
	fstp qword [rbp + 138]

 printArgument$183:
	; Parameter signedint 0 146
	mov dword [rbp + 146], 0

 printArgument$184:
	; Parameter signedint 0 150
	mov dword [rbp + 150], 0

 printArgument$185:
	; Parameter signedint 0 154
	mov dword [rbp + 154], 0

 printArgument$186:
	; Parameter signedint 3 158
	mov dword [rbp + 158], 3

 printArgument$187:
	; Call printLongDoublePlain 114 0
	mov qword [rbp + 114], printArgument$188
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$188:
	; PostCall 114

 printArgument$189:
	; Goto 196
	jmp printArgument$196

 printArgument$190:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 printArgument$191:
	; BinarySubtract £temporary1732 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$192:
	; IntegralToIntegral £temporary1734 £temporary1732

 printArgument$193:
	; Dereference £temporary1735 -> £temporary1734 £temporary1734 0

 printArgument$194:
	; PushFloat £temporary1735 -> £temporary1734
	fld qword [rsi]

 printArgument$195:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$196:
	; Equal 205 negativePtr 0
	cmp qword [rbp + 80], 0
	je printArgument$205

 printArgument$197:
	; Dereference £temporary1739 -> negativePtr negativePtr 0
	mov rsi, [rbp + 80]

 printArgument$198:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$199:
	; PushFloat 0
	fldz

 printArgument$200:
	; SignedGreaterThanEqual 203 longDoubleValue 0
	fcompp
	fstsw ax
	sahf
	jbe printArgument$203

 printArgument$201:
	; Assign £temporary1741 1
	mov eax, 1

 printArgument$202:
	; Goto 204
	jmp printArgument$204

 printArgument$203:
	; Assign £temporary1741 0
	mov eax, 0

 printArgument$204:
	; Assign £temporary1739 -> negativePtr £temporary1741
	mov [rsi], eax

 printArgument$205:
	; NotEqual 213 sign 0
	cmp dword [rbp + 76], 0
	jne printArgument$213

 printArgument$206:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$207:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$208:
	; Parameter double longDoubleValue 138
	fstp qword [rbp + 138]

 printArgument$209:
	; Call fabs 114 0
	mov qword [rbp + 114], printArgument$210
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

 printArgument$210:
	; PostCall 114

 printArgument$211:
	; GetReturnValue £temporary1744

 printArgument$212:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$213:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$214:
	; Parameter pointer arg_list 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$215:
	; Parameter pointer widthPtr 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$216:
	; Address £temporary1745 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$217:
	; Parameter pointer £temporary1745 154
	mov [rbp + 154], rsi

 printArgument$218:
	; Call checkWidthAndPrecision 114 0
	mov qword [rbp + 114], printArgument$219
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$219:
	; PostCall 114

 printArgument$220:
	; GetReturnValue £temporary1746

 printArgument$221:
	; Assign arg_list £temporary1746
	mov [rbp + 32], rbx

 printArgument$222:
	; NotEqual 233 c 102
	cmp byte [rbp + 88], 102
	jne printArgument$233

 printArgument$223:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$224:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$225:
	; Parameter longdouble longDoubleValue 138
	fstp qword [rbp + 138]

 printArgument$226:
	; Parameter signedint plus 146
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

 printArgument$227:
	; Parameter signedint space 150
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

 printArgument$228:
	; Parameter signedint grid 154
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

 printArgument$229:
	; Parameter signedint precision 158
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

 printArgument$230:
	; Call printLongDoublePlain 114 0
	mov qword [rbp + 114], printArgument$231
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$231:
	; PostCall 114

 printArgument$232:
	; Goto 359
	jmp printArgument$359

 printArgument$233:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$234:
	; IntegralToIntegral £temporary1749 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$235
	neg al
	neg eax

 printArgument$235:
	; Parameter signedint £temporary1749 138
	mov [rbp + 138], eax

 printArgument$236:
	; Call tolower 114 0
	mov qword [rbp + 114], printArgument$237
	mov [rbp + 122], rbp
	add rbp, 114
	jmp tolower

 printArgument$237:
	; PostCall 114

 printArgument$238:
	; GetReturnValue £temporary1750

 printArgument$239:
	; NotEqual 257 £temporary1750 101
	cmp ebx, 101
	jne printArgument$257

 printArgument$240:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$241:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$242:
	; Parameter longdouble longDoubleValue 138
	fstp qword [rbp + 138]

 printArgument$243:
	; Parameter signedint plus 146
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

 printArgument$244:
	; Parameter signedint space 150
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

 printArgument$245:
	; Parameter signedint grid 154
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

 printArgument$246:
	; Parameter signedint precision 158
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

 printArgument$247:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$248:
	; IntegralToIntegral £temporary1752 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$249
	neg al
	neg eax

 printArgument$249:
	; Parameter signedint £temporary1752 186
	mov [rbp + 186], eax

 printArgument$250:
	; Call isupper 162 0
	mov qword [rbp + 162], printArgument$251
	mov [rbp + 170], rbp
	add rbp, 162
	jmp isupper

 printArgument$251:
	; PostCall 162

 printArgument$252:
	; GetReturnValue £temporary1753

 printArgument$253:
	; Parameter signedint £temporary1753 162
	mov [rbp + 162], ebx

 printArgument$254:
	; Call printLongDoubleExpo 114 0
	mov qword [rbp + 114], printArgument$255
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoubleExpo

 printArgument$255:
	; PostCall 114

 printArgument$256:
	; Goto 359
	jmp printArgument$359

 printArgument$257:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$258:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$259:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$260:
	; Parameter double longDoubleValue 138
	fstp qword [rbp + 138]

 printArgument$261:
	; Call fabs 114 0
	mov qword [rbp + 114], printArgument$262
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

 printArgument$262:
	; PostCall 114

 printArgument$263:
	; GetReturnValue £temporary1755

 printArgument$264:
	; Parameter double £temporary1755 138
	fstp qword [rbp + 138]

 printArgument$265:
	; Call log10 114 0
	mov qword [rbp + 114], printArgument$266
	mov [rbp + 122], rbp
	add rbp, 114
	jmp log10

 printArgument$266:
	; PostCall 114

 printArgument$267:
	; GetReturnValue £temporary1756

 printArgument$268:
	; FloatingToIntegral £temporary1757 £temporary1756
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printArgument$269:
	; Assign expo £temporary1757
	mov [rbp + 114], eax

 printArgument$270:
	; SignedLessThan 282 expo -3
	cmp dword [rbp + 114], -3
	jl printArgument$282

 printArgument$271:
	; SignedGreaterThan 282 expo 2
	cmp dword [rbp + 114], 2
	jg printArgument$282

 printArgument$272:
	; PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$273:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$274:
	; Parameter longdouble longDoubleValue 142
	fstp qword [rbp + 142]

 printArgument$275:
	; Parameter signedint plus 150
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

 printArgument$276:
	; Parameter signedint space 154
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

 printArgument$277:
	; Parameter signedint grid 158
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

 printArgument$278:
	; Parameter signedint precision 162
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

 printArgument$279:
	; Call printLongDoublePlain 118 0
	mov qword [rbp + 118], printArgument$280
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoublePlain

 printArgument$280:
	; PostCall 118

 printArgument$281:
	; Goto 359
	jmp printArgument$359

 printArgument$282:
	; PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$283:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$284:
	; Parameter longdouble longDoubleValue 142
	fstp qword [rbp + 142]

 printArgument$285:
	; Parameter signedint plus 150
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

 printArgument$286:
	; Parameter signedint space 154
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

 printArgument$287:
	; Parameter signedint grid 158
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

 printArgument$288:
	; Parameter signedint precision 162
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

 printArgument$289:
	; PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$290:
	; IntegralToIntegral £temporary1762 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$291
	neg al
	neg eax

 printArgument$291:
	; Parameter signedint £temporary1762 190
	mov [rbp + 190], eax

 printArgument$292:
	; Call isupper 166 0
	mov qword [rbp + 166], printArgument$293
	mov [rbp + 174], rbp
	add rbp, 166
	jmp isupper

 printArgument$293:
	; PostCall 166

 printArgument$294:
	; GetReturnValue £temporary1763

 printArgument$295:
	; Parameter signedint £temporary1763 166
	mov [rbp + 166], ebx

 printArgument$296:
	; Call printLongDoubleExpo 118 0
	mov qword [rbp + 118], printArgument$297
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoubleExpo

 printArgument$297:
	; PostCall 118

 printArgument$298:
	; Goto 359
	jmp printArgument$359

 printArgument$299:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 printArgument$300:
	; BinarySubtract £temporary1767 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$301:
	; IntegralToIntegral £temporary1769 £temporary1767

 printArgument$302:
	; Dereference £temporary1770 -> £temporary1769 £temporary1769 0

 printArgument$303:
	; Assign ptrValue £temporary1770 -> £temporary1769
	mov rax, [rsi]
	mov [rbp + 106], rax

 printArgument$304:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$305:
	; Parameter pointer arg_list 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$306:
	; Parameter pointer widthPtr 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$307:
	; Address £temporary1771 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$308:
	; Parameter pointer £temporary1771 154
	mov [rbp + 154], rsi

 printArgument$309:
	; Call checkWidthAndPrecision 114 0
	mov qword [rbp + 114], printArgument$310
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$310:
	; PostCall 114

 printArgument$311:
	; GetReturnValue £temporary1772

 printArgument$312:
	; Assign arg_list £temporary1772
	mov [rbp + 32], rbx

 printArgument$313:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$314:
	; IntegralToIntegral £temporary1773 ptrValue
	mov rax, [rbp + 106]

 printArgument$315:
	; Parameter unsignedlongint £temporary1773 138
	mov [rbp + 138], rax

 printArgument$316:
	; Parameter signedint 0 146
	mov dword [rbp + 146], 0

 printArgument$317:
	; Parameter signedint 0 150
	mov dword [rbp + 150], 0

 printArgument$318:
	; Parameter signedint 0 154
	mov dword [rbp + 154], 0

 printArgument$319:
	; Parameter unsignedlongint 10 158
	mov qword [rbp + 158], 10

 printArgument$320:
	; Parameter signedint 0 166
	mov dword [rbp + 166], 0

 printArgument$321:
	; Call printUnsignedLong 114 0
	mov qword [rbp + 114], printArgument$322
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printUnsignedLong

 printArgument$322:
	; PostCall 114

 printArgument$323:
	; Goto 359
	jmp printArgument$359

 printArgument$324:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 printArgument$325:
	; BinarySubtract £temporary1777 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$326:
	; IntegralToIntegral £temporary1779 £temporary1777

 printArgument$327:
	; Dereference £temporary1780 -> £temporary1779 £temporary1779 0

 printArgument$328:
	; Assign ptrValue £temporary1780 -> £temporary1779
	mov rax, [rsi]
	mov [rbp + 106], rax

 printArgument$329:
	; BinaryAdd arg_list arg_list 8
	add qword [rbp + 32], 8

 printArgument$330:
	; BinarySubtract £temporary1783 arg_list 8
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$331:
	; IntegralToIntegral £temporary1785 £temporary1783

 printArgument$332:
	; Dereference £temporary1786 -> £temporary1785 £temporary1785 0

 printArgument$333:
	; Assign intPtr £temporary1786 -> £temporary1785
	mov rax, [rsi]
	mov [rbp + 90], rax

 printArgument$334:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$335:
	; Parameter pointer arg_list 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$336:
	; Parameter pointer widthPtr 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$337:
	; Address £temporary1787 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$338:
	; Parameter pointer £temporary1787 154
	mov [rbp + 154], rsi

 printArgument$339:
	; Call checkWidthAndPrecision 114 0
	mov qword [rbp + 114], printArgument$340
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$340:
	; PostCall 114

 printArgument$341:
	; GetReturnValue £temporary1788

 printArgument$342:
	; Assign arg_list £temporary1788
	mov [rbp + 32], rbx

 printArgument$343:
	; Dereference £temporary1789 -> intPtr intPtr 0
	mov rsi, [rbp + 90]

 printArgument$344:
	; Assign £temporary1789 -> intPtr g_outChars
	mov eax, [g_outChars]
	mov [rsi], eax

 printArgument$345:
	; Goto 359
	jmp printArgument$359

 printArgument$346:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$347:
	; Parameter pointer arg_list 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$348:
	; Parameter pointer widthPtr 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$349:
	; Address £temporary1790 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$350:
	; Parameter pointer £temporary1790 154
	mov [rbp + 154], rsi

 printArgument$351:
	; Call checkWidthAndPrecision 114 0
	mov qword [rbp + 114], printArgument$352
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$352:
	; PostCall 114

 printArgument$353:
	; GetReturnValue £temporary1791

 printArgument$354:
	; Assign arg_list £temporary1791
	mov [rbp + 32], rbx

 printArgument$355:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$356:
	; Parameter signedchar 37 138
	mov byte [rbp + 138], 37

 printArgument$357:
	; Call printChar 114 0
	mov qword [rbp + 114], printArgument$358
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

 printArgument$358:
	; PostCall 114

 printArgument$359:
	; Return arg_list
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printArgument$360:
	; FunctionEnd printArgument

section .data

int4$10#:
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
	; IntegralToIntegral £temporary1810 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$17:
	; BinaryAdd £temporary1812 format £temporary1810
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$18:
	; Dereference £temporary1809 -> £temporary1812 £temporary1812 0

 printFormat$19:
	; Equal 290 £temporary1809 -> £temporary1812 0
	cmp byte [rsi], 0
	je printFormat$290

 printFormat$20:
	; IntegralToIntegral £temporary1816 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$21:
	; BinaryAdd £temporary1818 format £temporary1816
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$22:
	; Dereference £temporary1815 -> £temporary1818 £temporary1818 0

 printFormat$23:
	; Assign c £temporary1815 -> £temporary1818
	mov al, [rsi]
	mov [rbp + 100], al

 printFormat$24:
	; Equal 268 percent 0
	cmp dword [rbp + 52], 0
	je printFormat$268

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
	; Goto 244
	jmp printFormat$244

 printFormat$54:
	; Assign plus 1
	mov dword [rbp + 56], 1

 printFormat$55:
	; Goto 288
	jmp printFormat$288

 printFormat$56:
	; Assign minus 1
	mov dword [rbp + 60], 1

 printFormat$57:
	; Goto 288
	jmp printFormat$288

 printFormat$58:
	; Assign space 1
	mov dword [rbp + 64], 1

 printFormat$59:
	; Goto 288
	jmp printFormat$288

 printFormat$60:
	; Assign zero 1
	mov dword [rbp + 68], 1

 printFormat$61:
	; Goto 288
	jmp printFormat$288

 printFormat$62:
	; Assign grid 1
	mov dword [rbp + 72], 1

 printFormat$63:
	; Goto 288
	jmp printFormat$288

 printFormat$64:
	; Assign period 1
	mov dword [rbp + 80], 1

 printFormat$65:
	; Goto 288
	jmp printFormat$288

 printFormat$66:
	; NotEqual 69 period 0
	cmp dword [rbp + 80], 0
	jne printFormat$69

 printFormat$67:
	; Assign width -1
	mov dword [rbp + 44], -1

 printFormat$68:
	; Goto 288
	jmp printFormat$288

 printFormat$69:
	; Assign precision -1
	mov dword [rbp + 48], -1

 printFormat$70:
	; Goto 288
	jmp printFormat$288

 printFormat$71:
	; Assign shortInt 1
	mov dword [rbp + 88], 1

 printFormat$72:
	; Goto 288
	jmp printFormat$288

 printFormat$73:
	; Assign longInt 1
	mov dword [rbp + 92], 1

 printFormat$74:
	; Goto 288
	jmp printFormat$288

 printFormat$75:
	; Assign longDouble 1
	mov dword [rbp + 96], 1

 printFormat$76:
	; Goto 288
	jmp printFormat$288

 printFormat$77:
	; Equal 109 minus 0
	cmp dword [rbp + 60], 0
	je printFormat$109

 printFormat$78:
	; Assign startChars g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$79:
	; PreCall 105 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$80:
	; IntegralToIntegral £temporary1822 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$81:
	; BinaryAdd £temporary1824 format £temporary1822
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$82:
	; Dereference £temporary1821 -> £temporary1824 £temporary1824 0

 printFormat$83:
	; Address £temporary1825 £temporary1821 -> £temporary1824

 printFormat$84:
	; Parameter pointer £temporary1825 129
	mov [rbp + 129], rsi

 printFormat$85:
	; Parameter pointer arg_list 137
	mov rax, [rbp + 32]
	mov [rbp + 137], rax

 printFormat$86:
	; Parameter signedint plus 145
	mov eax, [rbp + 56]
	mov [rbp + 145], eax

 printFormat$87:
	; Parameter signedint space 149
	mov eax, [rbp + 64]
	mov [rbp + 149], eax

 printFormat$88:
	; Parameter signedint grid 153
	mov eax, [rbp + 72]
	mov [rbp + 153], eax

 printFormat$89:
	; Address £temporary1826 width
	mov rsi, rbp
	add rsi, 44

 printFormat$90:
	; Parameter pointer £temporary1826 157
	mov [rbp + 157], rsi

 printFormat$91:
	; Parameter signedint precision 165
	mov eax, [rbp + 48]
	mov [rbp + 165], eax

 printFormat$92:
	; Parameter signedint shortInt 169
	mov eax, [rbp + 88]
	mov [rbp + 169], eax

 printFormat$93:
	; Parameter signedint longInt 173
	mov eax, [rbp + 92]
	mov [rbp + 173], eax

 printFormat$94:
	; Parameter signedint longDouble 177
	mov eax, [rbp + 96]
	mov [rbp + 177], eax

 printFormat$95:
	; Parameter signedint 1 181
	mov dword [rbp + 181], 1

 printFormat$96:
	; Parameter pointer 0 185
	mov qword [rbp + 185], 0

 printFormat$97:
	; Call printArgument 105 0
	mov qword [rbp + 105], printFormat$98
	mov [rbp + 113], rbp
	add rbp, 105
	jmp printArgument

 printFormat$98:
	; PostCall 105

 printFormat$99:
	; GetReturnValue £temporary1827

 printFormat$100:
	; Assign arg_list £temporary1827
	mov [rbp + 32], rbx

 printFormat$101:
	; BinarySubtract £temporary1829 g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]

 printFormat$102:
	; BinaryAdd field field 1
	inc dword [rbp + 105]

 printFormat$103:
	; SignedGreaterThanEqual 242 £temporary1829 width
	cmp eax, [rbp + 44]
	jge printFormat$242

 printFormat$104:
	; PreCall 109 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$105:
	; Parameter signedchar 32 133
	mov byte [rbp + 133], 32

 printFormat$106:
	; Call printChar 109 0
	mov qword [rbp + 109], printFormat$107
	mov [rbp + 117], rbp
	add rbp, 109
	jmp printChar

 printFormat$107:
	; PostCall 109

 printFormat$108:
	; Goto 102
	jmp printFormat$102

 printFormat$109:
	; Equal 187 zero 0
	cmp dword [rbp + 68], 0
	je printFormat$187

 printFormat$110:
	; Assign startChars g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$111:
	; Assign oldOutStatus g_outStatus
	mov eax, [g_outStatus]
	mov [rbp + 105], eax

 printFormat$112:
	; Assign negative 0
	mov dword [rbp + 109], 0

 printFormat$113:
	; Assign g_outStatus 2
	mov dword [g_outStatus], 2

 printFormat$114:
	; PreCall 113 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$115:
	; IntegralToIntegral £temporary1833 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$116:
	; BinaryAdd £temporary1835 format £temporary1833
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$117:
	; Dereference £temporary1832 -> £temporary1835 £temporary1835 0

 printFormat$118:
	; Address £temporary1836 £temporary1832 -> £temporary1835

 printFormat$119:
	; Parameter pointer £temporary1836 137
	mov [rbp + 137], rsi

 printFormat$120:
	; Parameter pointer arg_list 145
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

 printFormat$121:
	; Parameter signedint 0 153
	mov dword [rbp + 153], 0

 printFormat$122:
	; Parameter signedint 0 157
	mov dword [rbp + 157], 0

 printFormat$123:
	; Parameter signedint grid 161
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

 printFormat$124:
	; Address £temporary1837 width
	mov rsi, rbp
	add rsi, 44

 printFormat$125:
	; Parameter pointer £temporary1837 165
	mov [rbp + 165], rsi

 printFormat$126:
	; Parameter signedint precision 173
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

 printFormat$127:
	; Parameter signedint shortInt 177
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

 printFormat$128:
	; Parameter signedint longInt 181
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

 printFormat$129:
	; Parameter signedint longDouble 185
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

 printFormat$130:
	; Parameter signedint 0 189
	mov dword [rbp + 189], 0

 printFormat$131:
	; Address £temporary1838 negative
	mov rsi, rbp
	add rsi, 109

 printFormat$132:
	; Parameter pointer £temporary1838 193
	mov [rbp + 193], rsi

 printFormat$133:
	; Call printArgument 113 0
	mov qword [rbp + 113], printFormat$134
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printArgument

 printFormat$134:
	; PostCall 113

 printFormat$135:
	; Assign g_outStatus oldOutStatus
	mov eax, [rbp + 105]
	mov [g_outStatus], eax

 printFormat$136:
	; BinarySubtract field g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 113], eax

 printFormat$137:
	; Assign g_outChars startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

 printFormat$138:
	; Equal 145 negative 0
	cmp dword [rbp + 109], 0
	je printFormat$145

 printFormat$139:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$140:
	; Parameter signedchar 45 141
	mov byte [rbp + 141], 45

 printFormat$141:
	; Call printChar 117 0
	mov qword [rbp + 117], printFormat$142
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$142:
	; PostCall 117

 printFormat$143:
	; BinaryAdd field field 1
	inc dword [rbp + 113]

 printFormat$144:
	; Goto 158
	jmp printFormat$158

 printFormat$145:
	; Equal 152 plus 0
	cmp dword [rbp + 56], 0
	je printFormat$152

 printFormat$146:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$147:
	; Parameter signedchar 43 141
	mov byte [rbp + 141], 43

 printFormat$148:
	; Call printChar 117 0
	mov qword [rbp + 117], printFormat$149
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$149:
	; PostCall 117

 printFormat$150:
	; BinaryAdd field field 1
	inc dword [rbp + 113]

 printFormat$151:
	; Goto 158
	jmp printFormat$158

 printFormat$152:
	; Equal 158 space 0
	cmp dword [rbp + 64], 0
	je printFormat$158

 printFormat$153:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$154:
	; Parameter signedchar 32 141
	mov byte [rbp + 141], 32

 printFormat$155:
	; Call printChar 117 0
	mov qword [rbp + 117], printFormat$156
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$156:
	; PostCall 117

 printFormat$157:
	; BinaryAdd £temporary1850 field 1
	mov eax, [rbp + 113]
	inc eax

 printFormat$158:
	; BinaryAdd field field 1
	inc dword [rbp + 113]

 printFormat$159:
	; SignedGreaterThanEqual 165 £temporary1850 width
	cmp eax, [rbp + 44]
	jge printFormat$165

 printFormat$160:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$161:
	; Parameter signedchar 48 141
	mov byte [rbp + 141], 48

 printFormat$162:
	; Call printChar 117 0
	mov qword [rbp + 117], printFormat$163
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$163:
	; PostCall 117

 printFormat$164:
	; Goto 158
	jmp printFormat$158

 printFormat$165:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$166:
	; IntegralToIntegral £temporary1854 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$167:
	; BinaryAdd £temporary1856 format £temporary1854
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$168:
	; Dereference £temporary1853 -> £temporary1856 £temporary1856 0

 printFormat$169:
	; Address £temporary1857 £temporary1853 -> £temporary1856

 printFormat$170:
	; Parameter pointer £temporary1857 141
	mov [rbp + 141], rsi

 printFormat$171:
	; Parameter pointer arg_list 149
	mov rax, [rbp + 32]
	mov [rbp + 149], rax

 printFormat$172:
	; Parameter signedint 0 157
	mov dword [rbp + 157], 0

 printFormat$173:
	; Parameter signedint 0 161
	mov dword [rbp + 161], 0

 printFormat$174:
	; Parameter signedint grid 165
	mov eax, [rbp + 72]
	mov [rbp + 165], eax

 printFormat$175:
	; Parameter pointer 0 169
	mov qword [rbp + 169], 0

 printFormat$176:
	; Parameter signedint precision 177
	mov eax, [rbp + 48]
	mov [rbp + 177], eax

 printFormat$177:
	; Parameter signedint shortInt 181
	mov eax, [rbp + 88]
	mov [rbp + 181], eax

 printFormat$178:
	; Parameter signedint longInt 185
	mov eax, [rbp + 92]
	mov [rbp + 185], eax

 printFormat$179:
	; Parameter signedint longDouble 189
	mov eax, [rbp + 96]
	mov [rbp + 189], eax

 printFormat$180:
	; Parameter signedint 0 193
	mov dword [rbp + 193], 0

 printFormat$181:
	; Parameter pointer 0 197
	mov qword [rbp + 197], 0

 printFormat$182:
	; Call printArgument 117 0
	mov qword [rbp + 117], printFormat$183
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printArgument

 printFormat$183:
	; PostCall 117

 printFormat$184:
	; GetReturnValue £temporary1858

 printFormat$185:
	; Assign arg_list £temporary1858
	mov [rbp + 32], rbx

 printFormat$186:
	; Goto 242
	jmp printFormat$242

 printFormat$187:
	; Assign startChars g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$188:
	; Assign oldOutStatus g_outStatus
	mov eax, [g_outStatus]
	mov [rbp + 105], eax

 printFormat$189:
	; Assign g_outStatus 2
	mov dword [g_outStatus], 2

 printFormat$190:
	; PreCall 109 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$191:
	; IntegralToIntegral £temporary1860 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$192:
	; BinaryAdd £temporary1862 format £temporary1860
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$193:
	; Dereference £temporary1859 -> £temporary1862 £temporary1862 0

 printFormat$194:
	; Address £temporary1863 £temporary1859 -> £temporary1862

 printFormat$195:
	; Parameter pointer £temporary1863 133
	mov [rbp + 133], rsi

 printFormat$196:
	; Parameter pointer arg_list 141
	mov rax, [rbp + 32]
	mov [rbp + 141], rax

 printFormat$197:
	; Parameter signedint plus 149
	mov eax, [rbp + 56]
	mov [rbp + 149], eax

 printFormat$198:
	; Parameter signedint space 153
	mov eax, [rbp + 64]
	mov [rbp + 153], eax

 printFormat$199:
	; Parameter signedint grid 157
	mov eax, [rbp + 72]
	mov [rbp + 157], eax

 printFormat$200:
	; Address £temporary1864 width
	mov rsi, rbp
	add rsi, 44

 printFormat$201:
	; Parameter pointer £temporary1864 161
	mov [rbp + 161], rsi

 printFormat$202:
	; Parameter signedint precision 169
	mov eax, [rbp + 48]
	mov [rbp + 169], eax

 printFormat$203:
	; Parameter signedint shortInt 173
	mov eax, [rbp + 88]
	mov [rbp + 173], eax

 printFormat$204:
	; Parameter signedint longInt 177
	mov eax, [rbp + 92]
	mov [rbp + 177], eax

 printFormat$205:
	; Parameter signedint longDouble 181
	mov eax, [rbp + 96]
	mov [rbp + 181], eax

 printFormat$206:
	; Parameter signedint 1 185
	mov dword [rbp + 185], 1

 printFormat$207:
	; Parameter pointer 0 189
	mov qword [rbp + 189], 0

 printFormat$208:
	; Call printArgument 109 0
	mov qword [rbp + 109], printFormat$209
	mov [rbp + 117], rbp
	add rbp, 109
	jmp printArgument

 printFormat$209:
	; PostCall 109

 printFormat$210:
	; Assign g_outStatus oldOutStatus
	mov eax, [rbp + 105]
	mov [g_outStatus], eax

 printFormat$211:
	; BinarySubtract field g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 109], eax

 printFormat$212:
	; Assign g_outChars startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

 printFormat$213:
	; Assign £temporary1867 field
	mov eax, [rbp + 109]

 printFormat$214:
	; BinaryAdd field field 1
	inc dword [rbp + 109]

 printFormat$215:
	; SignedGreaterThanEqual 221 £temporary1867 width
	cmp eax, [rbp + 44]
	jge printFormat$221

 printFormat$216:
	; PreCall 113 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$217:
	; Parameter signedchar 32 137
	mov byte [rbp + 137], 32

 printFormat$218:
	; Call printChar 113 0
	mov qword [rbp + 113], printFormat$219
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printChar

 printFormat$219:
	; PostCall 113

 printFormat$220:
	; Goto 213
	jmp printFormat$213

 printFormat$221:
	; PreCall 113 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$222:
	; IntegralToIntegral £temporary1871 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$223:
	; BinaryAdd £temporary1873 format £temporary1871
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$224:
	; Dereference £temporary1870 -> £temporary1873 £temporary1873 0

 printFormat$225:
	; Address £temporary1874 £temporary1870 -> £temporary1873

 printFormat$226:
	; Parameter pointer £temporary1874 137
	mov [rbp + 137], rsi

 printFormat$227:
	; Parameter pointer arg_list 145
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

 printFormat$228:
	; Parameter signedint plus 153
	mov eax, [rbp + 56]
	mov [rbp + 153], eax

 printFormat$229:
	; Parameter signedint space 157
	mov eax, [rbp + 64]
	mov [rbp + 157], eax

 printFormat$230:
	; Parameter signedint grid 161
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

 printFormat$231:
	; Parameter pointer 0 165
	mov qword [rbp + 165], 0

 printFormat$232:
	; Parameter signedint precision 173
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

 printFormat$233:
	; Parameter signedint shortInt 177
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

 printFormat$234:
	; Parameter signedint longInt 181
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

 printFormat$235:
	; Parameter signedint longDouble 185
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

 printFormat$236:
	; Parameter signedint 1 189
	mov dword [rbp + 189], 1

 printFormat$237:
	; Parameter pointer 0 193
	mov qword [rbp + 193], 0

 printFormat$238:
	; Call printArgument 113 0
	mov qword [rbp + 113], printFormat$239
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printArgument

 printFormat$239:
	; PostCall 113

 printFormat$240:
	; GetReturnValue £temporary1875

 printFormat$241:
	; Assign arg_list £temporary1875
	mov [rbp + 32], rbx

 printFormat$242:
	; Assign percent 0
	mov dword [rbp + 52], 0

 printFormat$243:
	; Goto 288
	jmp printFormat$288

 printFormat$244:
	; Assign value 0
	mov dword [rbp + 101], 0

 printFormat$245:
	; PreCall 105 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$246:
	; IntegralToIntegral £temporary1878 c
	mov al, [rbp + 100]
	and eax, 255
	cmp al, 0
	jge printFormat$247
	neg al
	neg eax

 printFormat$247:
	; Parameter signedint £temporary1878 129
	mov [rbp + 129], eax

 printFormat$248:
	; Call isdigit 105 0
	mov qword [rbp + 105], printFormat$249
	mov [rbp + 113], rbp
	add rbp, 105
	jmp isdigit

 printFormat$249:
	; PostCall 105

 printFormat$250:
	; GetReturnValue £temporary1879

 printFormat$251:
	; Equal 262 £temporary1879 0
	cmp ebx, 0
	je printFormat$262

 printFormat$252:
	; SignedMultiply £temporary1880 value 10
	mov eax, [rbp + 101]
	xor edx, edx
	imul dword [int4$10#]

 printFormat$253:
	; BinarySubtract £temporary1881 c 48
	mov bl, [rbp + 100]
	sub bl, 48

 printFormat$254:
	; IntegralToIntegral £temporary1882 £temporary1881
	and ebx, 255
	cmp bl, 0
	jge printFormat$255
	neg bl
	neg ebx

 printFormat$255:
	; BinaryAdd value £temporary1880 £temporary1882
	add eax, ebx
	mov [rbp + 101], eax

 printFormat$256:
	; BinaryAdd £temporary1884 index 1
	mov eax, [rbp + 40]
	inc eax

 printFormat$257:
	; IntegralToIntegral £temporary1886 £temporary1884
	mov rbx, 4294967295
	and rax, rbx

 printFormat$258:
	; BinaryAdd £temporary1888 format £temporary1886
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$259:
	; Dereference £temporary1885 -> £temporary1888 £temporary1888 0

 printFormat$260:
	; Assign c £temporary1885 -> £temporary1888
	mov al, [rsi]
	mov [rbp + 100], al

 printFormat$261:
	; Goto 245
	jmp printFormat$245

 printFormat$262:
	; BinarySubtract index index 1
	dec dword [rbp + 40]

 printFormat$263:
	; NotEqual 266 period 0
	cmp dword [rbp + 80], 0
	jne printFormat$266

 printFormat$264:
	; Assign width value
	mov eax, [rbp + 101]
	mov [rbp + 44], eax

 printFormat$265:
	; Goto 288
	jmp printFormat$288

 printFormat$266:
	; Assign precision value
	mov eax, [rbp + 101]
	mov [rbp + 48], eax

 printFormat$267:
	; Goto 288
	jmp printFormat$288

 printFormat$268:
	; NotEqual 284 c 37
	cmp byte [rbp + 100], 37
	jne printFormat$284

 printFormat$269:
	; Assign percent 1
	mov dword [rbp + 52], 1

 printFormat$270:
	; Assign plus 0
	mov dword [rbp + 56], 0

 printFormat$271:
	; Assign minus 0
	mov dword [rbp + 60], 0

 printFormat$272:
	; Assign space 0
	mov dword [rbp + 64], 0

 printFormat$273:
	; Assign zero 0
	mov dword [rbp + 68], 0

 printFormat$274:
	; Assign grid 0
	mov dword [rbp + 72], 0

 printFormat$275:
	; Assign widthStar 0
	mov dword [rbp + 76], 0

 printFormat$276:
	; Assign period 0
	mov dword [rbp + 80], 0

 printFormat$277:
	; Assign precisionStar 0
	mov dword [rbp + 84], 0

 printFormat$278:
	; Assign shortInt 0
	mov dword [rbp + 88], 0

 printFormat$279:
	; Assign longInt 0
	mov dword [rbp + 92], 0

 printFormat$280:
	; Assign longDouble 0
	mov dword [rbp + 96], 0

 printFormat$281:
	; Assign width 0
	mov dword [rbp + 44], 0

 printFormat$282:
	; Assign precision 0
	mov dword [rbp + 48], 0

 printFormat$283:
	; Goto 288
	jmp printFormat$288

 printFormat$284:
	; PreCall 101 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$285:
	; Parameter signedchar c 125
	mov al, [rbp + 100]
	mov [rbp + 125], al

 printFormat$286:
	; Call printChar 101 0
	mov qword [rbp + 101], printFormat$287
	mov [rbp + 109], rbp
	add rbp, 101
	jmp printChar

 printFormat$287:
	; PostCall 101

 printFormat$288:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 printFormat$289:
	; Goto 16
	jmp printFormat$16

 printFormat$290:
	; NotEqual 297 g_outStatus 1
	cmp dword [g_outStatus], 1
	jne printFormat$297

 printFormat$291:
	; IntegralToIntegral £temporary1897 g_outDevice
	mov rax, [g_outDevice]

 printFormat$292:
	; Assign outString £temporary1897
	mov [rbp + 100], rax

 printFormat$293:
	; IntegralToIntegral £temporary1899 g_outChars
	mov eax, [g_outChars]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$294:
	; BinaryAdd £temporary1901 outString £temporary1899
	mov rsi, [rbp + 100]
	add rsi, rax

 printFormat$295:
	; Dereference £temporary1898 -> £temporary1901 £temporary1901 0

 printFormat$296:
	; Assign £temporary1898 -> £temporary1901 0
	mov byte [rsi], 0

 printFormat$297:
	; Return g_outChars
	mov ebx, [g_outChars]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printFormat$298:
	; FunctionEnd printFormat

section .text

 printf:
	; Empty

 printf$1:
	; Address £temporary1906 format
	mov rsi, rbp
	add rsi, 24

 printf$2:
	; IntegralToIntegral £temporary1907 £temporary1906

 printf$3:
	; BinaryAdd arg_list £temporary1907 8
	add rsi, 8
	mov [rdi + 32], rsi

 printf$4:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printf$5:
	; Parameter pointer format 64
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

 printf$6:
	; Parameter pointer arg_list 72
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

 printf$7:
	; Call vprintf 40 0
	mov qword [rdi + 40], printf$8
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	add rdi, 40
	mov rbp, rdi
	jmp vprintf

 printf$8:
	; PostCall 40

 printf$9:
	; GetReturnValue £temporary1910

 printf$10:
	; Return £temporary1910
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
	; Parameter pointer stdout 64
	mov rax, [stdout]
	mov [rbp + 64], rax

 vprintf$2:
	; Parameter pointer format 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 vprintf$3:
	; Parameter pointer arg_list 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 vprintf$4:
	; Call vfprintf 40 0
	mov qword [rbp + 40], vprintf$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp vfprintf

 vprintf$5:
	; PostCall 40

 vprintf$6:
	; GetReturnValue £temporary1912

 vprintf$7:
	; Return £temporary1912
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vprintf$8:
	; FunctionEnd vprintf

section .text

 fprintf:
	; Empty

 fprintf$1:
	; Address £temporary1913 format
	mov rsi, rbp
	add rsi, 32

 fprintf$2:
	; IntegralToIntegral £temporary1914 £temporary1913

 fprintf$3:
	; BinaryAdd arg_list £temporary1914 8
	add rsi, 8
	mov [rdi + 40], rsi

 fprintf$4:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fprintf$5:
	; Parameter pointer outStream 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 fprintf$6:
	; Parameter pointer format 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 fprintf$7:
	; Parameter pointer arg_list 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 fprintf$8:
	; Call vfprintf 48 0
	mov qword [rdi + 48], fprintf$9
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vfprintf

 fprintf$9:
	; PostCall 48

 fprintf$10:
	; GetReturnValue £temporary1917

 fprintf$11:
	; Return £temporary1917
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
	; IntegralToIntegral £temporary1919 outStream
	mov rax, [rbp + 24]

 vfprintf$2:
	; Assign g_outDevice £temporary1919
	mov [g_outDevice], rax

 vfprintf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vfprintf$4:
	; Parameter pointer format 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vfprintf$5:
	; Parameter pointer arg_list 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vfprintf$6:
	; Call printFormat 48 0
	mov qword [rbp + 48], vfprintf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printFormat

 vfprintf$7:
	; PostCall 48

 vfprintf$8:
	; GetReturnValue £temporary1920

 vfprintf$9:
	; Return £temporary1920
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfprintf$10:
	; FunctionEnd vfprintf

section .text

 sprintf:
	; Empty

 sprintf$1:
	; Address £temporary1921 format
	mov rsi, rbp
	add rsi, 32

 sprintf$2:
	; IntegralToIntegral £temporary1922 £temporary1921

 sprintf$3:
	; BinaryAdd arg_list £temporary1922 8
	add rsi, 8
	mov [rdi + 40], rsi

 sprintf$4:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sprintf$5:
	; Parameter pointer outString 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 sprintf$6:
	; Parameter pointer format 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 sprintf$7:
	; Parameter pointer arg_list 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 sprintf$8:
	; Call vsprintf 48 0
	mov qword [rdi + 48], sprintf$9
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vsprintf

 sprintf$9:
	; PostCall 48

 sprintf$10:
	; GetReturnValue £temporary1925

 sprintf$11:
	; Return £temporary1925
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
	; IntegralToIntegral £temporary1927 outString
	mov rax, [rbp + 24]

 vsprintf$2:
	; Assign g_outDevice £temporary1927
	mov [g_outDevice], rax

 vsprintf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vsprintf$4:
	; Parameter pointer format 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vsprintf$5:
	; Parameter pointer arg_list 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vsprintf$6:
	; Call printFormat 48 0
	mov qword [rbp + 48], vsprintf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printFormat

 vsprintf$7:
	; PostCall 48

 vsprintf$8:
	; GetReturnValue £temporary1928

 vsprintf$9:
	; Return £temporary1928
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsprintf$10:
	; FunctionEnd vsprintf
