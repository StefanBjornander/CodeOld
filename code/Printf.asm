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
	; Assign g_outStatus integral4$0#
	mov dword [g_outStatus], 0

 putc$1:
	; IntegralToIntegral £temporary1363 stream
	mov rax, [rbp + 28]

 putc$2:
	; Assign g_outDevice £temporary1363
	mov [g_outDevice], rax

 putc$3:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 putc$4:
	; IntegralToIntegral £temporary1364 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putc$5
	neg eax
	neg al

 putc$5:
	; Parameter 60 signed char £temporary1364
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
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 putc$10:
	; FunctionEnd putc

section .text

 fputc:
	; Assign g_outStatus integral4$0#
	mov dword [g_outStatus], 0

 fputc$1:
	; IntegralToIntegral £temporary1366 stream
	mov rax, [rbp + 28]

 fputc$2:
	; Assign g_outDevice £temporary1366
	mov [g_outDevice], rax

 fputc$3:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputc$4:
	; IntegralToIntegral £temporary1367 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge fputc$5
	neg eax
	neg al

 fputc$5:
	; Parameter 60 signed char £temporary1367
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
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fputc$10:
	; FunctionEnd fputc

section .text

 putchar:
	; Assign g_outStatus integral4$0#
	mov dword [g_outStatus], 0

 putchar$1:
	; IntegralToIntegral £temporary1369 stdout
	mov rax, [stdout]

 putchar$2:
	; Assign g_outDevice £temporary1369
	mov [g_outDevice], rax

 putchar$3:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 putchar$4:
	; IntegralToIntegral £temporary1370 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putchar$5
	neg eax
	neg al

 putchar$5:
	; Parameter 52 signed char £temporary1370
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
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 putchar$10:
	; FunctionEnd putchar

section .text

 printChar:
	; Case 5 g_outStatus integral4$0#
	mov eax, [g_outStatus]
	cmp eax, 0
	je printChar$5

 printChar$1:
	; Case 18 g_outStatus integral4$1#
	cmp eax, 1
	je printChar$18

 printChar$2:
	; Case 27 g_outStatus integral4$2#
	cmp eax, 2
	je printChar$27

 printChar$3:
	; CaseEnd g_outStatus

 printChar$4:
	; Jump 29
	jmp printChar$29

 printChar$5:
	; IntegralToIntegral £temporary1372 g_outDevice
	mov rax, [g_outDevice]

 printChar$6:
	; Assign stream £temporary1372
	mov [rbp + 37], rax

 printChar$7:
	; AssignRegister rax integral8$1#
	mov rax, 1

 printChar$8:
	; Dereference £temporary1375 stream 0
	mov rsi, [rbp + 37]

 printChar$9:
	; IntegralToIntegral £temporary1376 £temporary1375.handle
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 printChar$10:
	; AssignRegister rdi £temporary1376

 printChar$11:
	; Address £temporary1378 c
	mov rsi, rbp
	add rsi, 24

 printChar$12:
	; IntegralToIntegral £temporary1379 £temporary1378

 printChar$13:
	; AssignRegister rsi £temporary1379

 printChar$14:
	; AssignRegister rdx integral8$1#
	mov rdx, 1

 printChar$15:
	; SysCall
	syscall

 printChar$16:
	; Add g_outChars g_outChars integral4$1#
	inc dword [g_outChars]

 printChar$17:
	; Jump 29
	jmp printChar$29

 printChar$18:
	; IntegralToIntegral £temporary1382 g_outDevice
	mov rax, [g_outDevice]

 printChar$19:
	; Assign outString £temporary1382
	mov [rbp + 29], rax

 printChar$20:
	; Assign £temporary1384 g_outChars
	mov eax, [g_outChars]

 printChar$21:
	; Add g_outChars g_outChars integral4$1#
	inc dword [g_outChars]

 printChar$22:
	; IntegralToIntegral £temporary1386 £temporary1384
	mov rbx, 4294967295
	and rax, rbx

 printChar$23:
	; Add £temporary1387 outString £temporary1386
	mov rsi, [rbp + 29]
	add rsi, rax

 printChar$24:
	; Dereference £temporary1388 £temporary1387 0

 printChar$25:
	; Assign £temporary1388 c
	mov al, [rbp + 24]
	mov [rsi], al

 printChar$26:
	; Jump 29
	jmp printChar$29

 printChar$27:
	; Assign £temporary1390 g_outChars
	mov eax, [g_outChars]

 printChar$28:
	; Add g_outChars g_outChars integral4$1#
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
	; Equal 33 s integral8$0#
	cmp qword [rbp + 24], 0
	je printString$33

 printString$1:
	; NotEqual 16 precision integral4$0#
	cmp dword [rbp + 32], 0
	jne printString$16

 printString$2:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 printString$3:
	; IntegralToIntegral £temporary1395 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$4:
	; Add £temporary1396 s £temporary1395
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$5:
	; Dereference £temporary1397 £temporary1396 0

 printString$6:
	; Equal 57 £temporary1397 integral1$0#
	cmp byte [rsi], 0
	je printString$57

 printString$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$8:
	; IntegralToIntegral £temporary1400 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$9:
	; Add £temporary1401 s £temporary1400
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$10:
	; Dereference £temporary1402 £temporary1401 0

 printString$11:
	; Parameter 64 signed char £temporary1402
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
	; Add index index integral4$1#
	inc dword [rbp + 36]

 printString$15:
	; Jump 3
	jmp printString$3

 printString$16:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 printString$17:
	; Assign £temporary1405 precision
	mov eax, [rbp + 32]

 printString$18:
	; Subtract precision precision integral4$1#
	dec dword [rbp + 32]

 printString$19:
	; LessThanEqual 57 £temporary1405 integral4$0#
	cmp eax, 0
	jle printString$57

 printString$20:
	; IntegralToIntegral £temporary1408 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$21:
	; Add £temporary1409 s £temporary1408
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$22:
	; Dereference £temporary1410 £temporary1409 0

 printString$23:
	; Equal 57 £temporary1410 integral1$0#
	cmp byte [rsi], 0
	je printString$57

 printString$24:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$25:
	; IntegralToIntegral £temporary1414 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$26:
	; Add £temporary1415 s £temporary1414
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$27:
	; Dereference £temporary1416 £temporary1415 0

 printString$28:
	; Parameter 64 signed char £temporary1416
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
	; Add index index integral4$1#
	inc dword [rbp + 36]

 printString$32:
	; Jump 17
	jmp printString$17

 printString$33:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$34:
	; Parameter 60 signed char integral1$60#
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
	; Parameter 60 signed char integral1$78#
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
	; Parameter 60 signed char integral1$85#
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
	; Parameter 60 signed char integral1$76#
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
	; Parameter 60 signed char integral1$76#
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
	; Parameter 60 signed char integral1$62#
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

@4121integral8$10#:
	; Initializer SignedLongInt 10
	dq 10

section .data

@4123integral8$10#:
	; Initializer SignedLongInt 10
	dq 10

section .text

 printLongIntRec:
	; Equal 15 longValue integral8$0#
	cmp qword [rbp + 24], 0
	je printLongIntRec$15

 printLongIntRec$1:
	; Modulo £temporary1425 longValue integral8$10#
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [@4121integral8$10#]

 printLongIntRec$2:
	; IntegralToIntegral £temporary1426 £temporary1425
	cmp rdx, 0
	jge printLongIntRec$3
	neg rdx
	neg edx

 printLongIntRec$3:
	; Assign digit £temporary1426
	mov [rbp + 32], edx

 printLongIntRec$4:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongIntRec$5:
	; Divide £temporary1427 longValue integral8$10#
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [@4123integral8$10#]

 printLongIntRec$6:
	; Parameter 60 signed long int £temporary1427
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
	; Add £temporary1429 digit integral4$48#
	mov eax, [rbp + 32]
	add eax, 48

 printLongIntRec$11:
	; IntegralToIntegral £temporary1430 £temporary1429
	cmp eax, 0
	jge printLongIntRec$12
	neg eax
	neg al

 printLongIntRec$12:
	; Parameter 60 signed char £temporary1430
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
	; GreaterThanEqual 8 longValue integral8$0#
	cmp qword [rbp + 24], 0
	jge printLongInt$8

 printLongInt$1:
	; Minus £temporary1433 longValue
	mov rax, [rbp + 24]
	neg rax

 printLongInt$2:
	; Assign longValue £temporary1433
	mov [rbp + 24], rax

 printLongInt$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$4:
	; Parameter 64 signed char integral1$45#
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
	; Equal 14 space integral4$0#
	cmp dword [rbp + 36], 0
	je printLongInt$14

 printLongInt$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$10:
	; Parameter 64 signed char integral1$32#
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
	; Equal 19 plus integral4$0#
	cmp dword [rbp + 32], 0
	je printLongInt$19

 printLongInt$15:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$16:
	; Parameter 64 signed char integral1$43#
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
	; NotEqual 25 longValue integral8$0#
	cmp qword [rbp + 24], 0
	jne printLongInt$25

 printLongInt$20:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$21:
	; Parameter 64 signed char integral1$48#
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
	; GreaterThanEqual 5 digit integral4$10#
	cmp dword [rbp + 24], 10
	jge digitToChar$5

 digitToChar$1:
	; Add £temporary1443 digit integral4$48#
	mov ebx, [rbp + 24]
	add ebx, 48

 digitToChar$2:
	; IntegralToIntegral £temporary1444 £temporary1443
	cmp ebx, 0
	jge digitToChar$3
	neg ebx
	neg bl

 digitToChar$3:
	; SetReturnValue

 digitToChar$4:
	; Return £temporary1444
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$5:
	; Equal 11 capital integral4$0#
	cmp dword [rbp + 28], 0
	je digitToChar$11

 digitToChar$6:
	; Subtract £temporary1445 digit integral4$10#
	mov ebx, [rbp + 24]
	sub ebx, 10

 digitToChar$7:
	; Add £temporary1446 £temporary1445 integral4$65#
	add ebx, 65

 digitToChar$8:
	; IntegralToIntegral £temporary1447 £temporary1446
	cmp ebx, 0
	jge digitToChar$9
	neg ebx
	neg bl

 digitToChar$9:
	; SetReturnValue

 digitToChar$10:
	; Return £temporary1447
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$11:
	; Subtract £temporary1448 digit integral4$10#
	mov ebx, [rbp + 24]
	sub ebx, 10

 digitToChar$12:
	; Add £temporary1449 £temporary1448 integral4$97#
	add ebx, 97

 digitToChar$13:
	; IntegralToIntegral £temporary1450 £temporary1449
	cmp ebx, 0
	jge digitToChar$14
	neg ebx
	neg bl

 digitToChar$14:
	; SetReturnValue

 digitToChar$15:
	; Return £temporary1450
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$16:
	; FunctionEnd digitToChar

section .text

 printUnsignedLongRec:
	; LessThanEqual 22 unsignedValue integral8$0#
	cmp qword [rbp + 24], 0
	jbe printUnsignedLongRec$22

 printUnsignedLongRec$1:
	; Modulo £temporary1453 unsignedValue base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$2:
	; IntegralToIntegral £temporary1454 £temporary1453

 printUnsignedLongRec$3:
	; Assign digit £temporary1454
	mov [rbp + 44], edx

 printUnsignedLongRec$4:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLongRec$5:
	; Divide £temporary1455 unsignedValue base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$6:
	; Parameter 72 unsigned long int £temporary1455
	mov [rbp + 72], rax

 printUnsignedLongRec$7:
	; Parameter 80 unsigned long int base
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 printUnsignedLongRec$8:
	; Parameter 88 signed int capital
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
	; Parameter 72 signed int digit
	mov eax, [rbp + 44]
	mov [rbp + 72], eax

 printUnsignedLongRec$13:
	; Parameter 76 signed int capital
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
	; GetReturnValue £temporary1457

 printUnsignedLongRec$17:
	; Assign c £temporary1457
	mov [rbp + 48], bl

 printUnsignedLongRec$18:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLongRec$19:
	; Parameter 73 signed char c
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
	; Equal 5 plus integral4$0#
	cmp dword [rbp + 32], 0
	je printUnsignedLong$5

 printUnsignedLong$1:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$2:
	; Parameter 80 signed char integral1$43#
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
	; Equal 10 space integral4$0#
	cmp dword [rbp + 36], 0
	je printUnsignedLong$10

 printUnsignedLong$6:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$7:
	; Parameter 80 signed char integral1$32#
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
	; Equal 29 grid integral4$0#
	cmp dword [rbp + 40], 0
	je printUnsignedLong$29

 printUnsignedLong$11:
	; NotEqual 16 base integral8$8#
	cmp qword [rbp + 44], 8
	jne printUnsignedLong$16

 printUnsignedLong$12:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$13:
	; Parameter 80 signed char integral1$48#
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
	; NotEqual 29 base integral8$16#
	cmp qword [rbp + 44], 16
	jne printUnsignedLong$29

 printUnsignedLong$17:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$18:
	; Parameter 80 signed char integral1$48#
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
	; Equal 25 capital integral4$0#
	cmp dword [rbp + 52], 0
	je printUnsignedLong$25

 printUnsignedLong$23:
	; Assign £temporary1468 integral1$88#
	mov al, 88

 printUnsignedLong$24:
	; Jump 26
	jmp printUnsignedLong$26

 printUnsignedLong$25:
	; Assign £temporary1468 integral1$120#
	mov al, 120

 printUnsignedLong$26:
	; Parameter 80 signed char £temporary1468
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
	; NotEqual 35 unsignedValue integral8$0#
	cmp qword [rbp + 24], 0
	jne printUnsignedLong$35

 printUnsignedLong$30:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$31:
	; Parameter 80 signed char integral1$48#
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
	; Parameter 80 unsigned long int unsignedValue
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 printUnsignedLong$37:
	; Parameter 88 unsigned long int base
	mov rax, [rbp + 44]
	mov [rbp + 88], rax

 printUnsignedLong$38:
	; Parameter 96 signed int capital
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

@4208floating8$10.0#:
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
	; FloatingToIntegral £temporary1474 longDoubleValue
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 printLongDoubleFraction$3:
	; IntegralToFloating £temporary1475 £temporary1474
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 printLongDoubleFraction$4:
	; Subtract £temporary1476 longDoubleValue £temporary1475
	fsub

 printLongDoubleFraction$5:
	; PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoubleFraction$6:
	; NotEqual 8 precision integral4$0#
	cmp dword [rbp + 36], 0
	jne printLongDoubleFraction$8

 printLongDoubleFraction$7:
	; Assign precision integral4$6#
	mov dword [rbp + 36], 6

 printLongDoubleFraction$8:
	; NotEqual 10 grid integral4$0#
	cmp dword [rbp + 32], 0
	jne printLongDoubleFraction$10

 printLongDoubleFraction$9:
	; LessThanEqual 14 precision integral4$0#
	cmp dword [rbp + 36], 0
	jle printLongDoubleFraction$14

 printLongDoubleFraction$10:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleFraction$11:
	; Parameter 64 signed char integral1$46#
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
	; Assign £temporary1483 precision
	mov eax, [rbp + 36]

 printLongDoubleFraction$15:
	; Subtract precision precision integral4$1#
	dec dword [rbp + 36]

 printLongDoubleFraction$16:
	; LessThanEqual 35 £temporary1483 integral4$0#
	cmp eax, 0
	jle printLongDoubleFraction$35

 printLongDoubleFraction$17:
	; PushFloat floating8$10.0#
	fld qword [@4208floating8$10.0#]

 printLongDoubleFraction$18:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$19:
	; Multiply £temporary1486 floating8$10.0# longDoubleValue
	fmul

 printLongDoubleFraction$20:
	; PopFloat longDoubleValue10
	fstp qword [rbp + 40]

 printLongDoubleFraction$21:
	; PushFloat longDoubleValue10
	fld qword [rbp + 40]

 printLongDoubleFraction$22:
	; FloatingToIntegral £temporary1487 longDoubleValue10
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printLongDoubleFraction$23:
	; Assign digitValue £temporary1487
	mov [rbp + 48], eax

 printLongDoubleFraction$24:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleFraction$25:
	; Add £temporary1488 digitValue integral4$48#
	mov eax, [rbp + 48]
	add eax, 48

 printLongDoubleFraction$26:
	; IntegralToIntegral £temporary1489 £temporary1488
	cmp eax, 0
	jge printLongDoubleFraction$27
	neg eax
	neg al

 printLongDoubleFraction$27:
	; Parameter 76 signed char £temporary1489
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
	; IntegralToFloating £temporary1491 digitValue
	fild dword [rbp + 48]

 printLongDoubleFraction$32:
	; Subtract £temporary1492 longDoubleValue10 £temporary1491
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
	; PushFloat floating8$0.0#
	fldz

 printLongDoublePlain$2:
	; GreaterThanEqual 12 longDoubleValue floating8$0.0#
	fcompp
	fstsw ax
	sahf
	jbe printLongDoublePlain$12

 printLongDoublePlain$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoublePlain$4:
	; Parameter 72 signed char integral1$45#
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
	; Minus £temporary1495 longDoubleValue
	fchs

 printLongDoublePlain$9:
	; PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoublePlain$10:
	; Assign plus integral4$0#
	mov dword [rbp + 32], 0

 printLongDoublePlain$11:
	; Assign space integral4$0#
	mov dword [rbp + 36], 0

 printLongDoublePlain$12:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$13:
	; FloatingToIntegral £temporary1496 longDoubleValue
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 printLongDoublePlain$14:
	; Assign longValue £temporary1496
	mov [rbp + 48], rax

 printLongDoublePlain$15:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoublePlain$16:
	; Parameter 80 signed long int longValue
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 printLongDoublePlain$17:
	; Parameter 88 signed int plus
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

 printLongDoublePlain$18:
	; Parameter 92 signed int space
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
	; IntegralToFloating £temporary1498 longValue
	fild qword [rbp + 48]

 printLongDoublePlain$23:
	; Subtract £temporary1499 longDoubleValue £temporary1498
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
	; Parameter 80 long double longDoubleValue
	fstp qword [rbp + 80]

 printLongDoublePlain$28:
	; Parameter 88 signed int grid
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printLongDoublePlain$29:
	; Parameter 92 signed int precision
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

@4247floating8$10.0#:
	; Initializer Double 10.0
	dq 10.0

section .text

 printLongDoubleExpo:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$1:
	; PushFloat floating8$0.0#
	fldz

 printLongDoubleExpo$2:
	; NotEqual 27 value floating8$0.0#
	fcompp
	fstsw ax
	sahf
	jne printLongDoubleExpo$27

 printLongDoubleExpo$3:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$4:
	; Parameter 76 signed char integral1$48#
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
	; PushFloat floating8$0.0#
	fldz

 printLongDoubleExpo$9:
	; Parameter 76 long double floating8$0.0#
	fstp qword [rbp + 76]

 printLongDoubleExpo$10:
	; Parameter 84 signed int precision
	mov eax, [rbp + 44]
	mov [rbp + 84], eax

 printLongDoubleExpo$11:
	; Parameter 88 signed int grid
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
	; Equal 18 capital integral4$0#
	cmp dword [rbp + 48], 0
	je printLongDoubleExpo$18

 printLongDoubleExpo$16:
	; Assign £temporary1506 integral1$69#
	mov al, 69

 printLongDoubleExpo$17:
	; Jump 19
	jmp printLongDoubleExpo$19

 printLongDoubleExpo$18:
	; Assign £temporary1506 integral1$101#
	mov al, 101

 printLongDoubleExpo$19:
	; Parameter 76 signed char £temporary1506
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
	; Parameter 76 signed char integral1$48#
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
	; PushFloat floating8$0.0#
	fldz

 printLongDoubleExpo$29:
	; GreaterThanEqual 37 value floating8$0.0#
	fcompp
	fstsw ax
	sahf
	jbe printLongDoubleExpo$37

 printLongDoubleExpo$30:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$31:
	; Parameter 76 signed char integral1$45#
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
	; Minus £temporary1511 value
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
	; GetReturnValue £temporary1512

 printLongDoubleExpo$43:
	; FloatingToIntegral £temporary1513 £temporary1512
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printLongDoubleExpo$44:
	; Assign expo £temporary1513
	mov [rbp + 52], eax

 printLongDoubleExpo$45:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$46:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 56]

 printLongDoubleExpo$47:
	; PushFloat floating8$10.0#
	fld qword [@4247floating8$10.0#]

 printLongDoubleExpo$48:
	; Parameter 80 double floating8$10.0#
	fstp qword [rbp + 88]

 printLongDoubleExpo$49:
	; IntegralToFloating £temporary1514 expo
	fild dword [rbp + 52]

 printLongDoubleExpo$50:
	; Parameter 88 double £temporary1514
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
	; GetReturnValue £temporary1515

 printLongDoubleExpo$54:
	; Divide £temporary1516 value £temporary1515
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
	; Parameter 80 long double value
	fstp qword [rbp + 80]

 printLongDoubleExpo$59:
	; Parameter 88 signed int plus
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

 printLongDoubleExpo$60:
	; Parameter 92 signed int space
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 printLongDoubleExpo$61:
	; Parameter 96 signed int grid
	mov eax, [rbp + 40]
	mov [rbp + 96], eax

 printLongDoubleExpo$62:
	; Parameter 100 signed int precision
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
	; Equal 69 capital integral4$0#
	cmp dword [rbp + 48], 0
	je printLongDoubleExpo$69

 printLongDoubleExpo$67:
	; Assign £temporary1519 integral1$69#
	mov al, 69

 printLongDoubleExpo$68:
	; Jump 70
	jmp printLongDoubleExpo$70

 printLongDoubleExpo$69:
	; Assign £temporary1519 integral1$101#
	mov al, 101

 printLongDoubleExpo$70:
	; Parameter 80 signed char £temporary1519
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
	; IntegralToIntegral £temporary1521 expo
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printLongDoubleExpo$75
	neg eax
	neg rax

 printLongDoubleExpo$75:
	; Parameter 80 signed long int £temporary1521
	mov [rbp + 80], rax

 printLongDoubleExpo$76:
	; Parameter 88 signed int integral4$1#
	mov dword [rbp + 88], 1

 printLongDoubleExpo$77:
	; Parameter 92 signed int integral4$0#
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
	; Equal 9 widthPtr integral8$0#
	cmp qword [rbp + 32], 0
	je checkWidthAndPrecision$9

 checkWidthAndPrecision$1:
	; Dereference £temporary1529 widthPtr 0
	mov rsi, [rbp + 32]

 checkWidthAndPrecision$2:
	; NotEqual 9 £temporary1529 integral4$minus1#
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$9

 checkWidthAndPrecision$3:
	; Dereference £temporary1532 widthPtr 0
	mov rsi, [rbp + 32]

 checkWidthAndPrecision$4:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 24], 4

 checkWidthAndPrecision$5:
	; Subtract £temporary1534 arg_list integral8$4#
	mov rdi, [rbp + 24]
	sub rdi, 4

 checkWidthAndPrecision$6:
	; IntegralToIntegral £temporary1535 £temporary1534

 checkWidthAndPrecision$7:
	; Dereference £temporary1536 £temporary1535 0

 checkWidthAndPrecision$8:
	; Assign £temporary1532 £temporary1536
	mov eax, [rdi]
	mov [rsi], eax

 checkWidthAndPrecision$9:
	; Equal 18 precisionPtr integral8$0#
	cmp qword [rbp + 40], 0
	je checkWidthAndPrecision$18

 checkWidthAndPrecision$10:
	; Dereference £temporary1538 precisionPtr 0
	mov rsi, [rbp + 40]

 checkWidthAndPrecision$11:
	; NotEqual 18 £temporary1538 integral4$minus1#
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$18

 checkWidthAndPrecision$12:
	; Dereference £temporary1541 precisionPtr 0
	mov rsi, [rbp + 40]

 checkWidthAndPrecision$13:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 24], 4

 checkWidthAndPrecision$14:
	; Subtract £temporary1543 arg_list integral8$4#
	mov rdi, [rbp + 24]
	sub rdi, 4

 checkWidthAndPrecision$15:
	; IntegralToIntegral £temporary1544 £temporary1543

 checkWidthAndPrecision$16:
	; Dereference £temporary1545 £temporary1544 0

 checkWidthAndPrecision$17:
	; Assign £temporary1541 £temporary1545
	mov eax, [rdi]
	mov [rsi], eax

 checkWidthAndPrecision$18:
	; SetReturnValue

 checkWidthAndPrecision$19:
	; Return arg_list
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 checkWidthAndPrecision$20:
	; FunctionEnd checkWidthAndPrecision

section .text

 printArgument:
	; Dereference £temporary1547 £temporary1546 0
	mov rsi, [rbp + 24]

 printArgument$1:
	; Assign c £temporary1547
	mov al, [rsi]
	mov [rbp + 88], al

 printArgument$2:
	; Case 21 c integral1$100#
	mov al, [rbp + 88]
	cmp al, 100
	je printArgument$21

 printArgument$3:
	; Case 21 c integral1$105#
	cmp al, 105
	je printArgument$21

 printArgument$4:
	; Case 73 c integral1$99#
	cmp al, 99
	je printArgument$73

 printArgument$5:
	; Case 93 c integral1$115#
	cmp al, 115
	je printArgument$93

 printArgument$6:
	; Case 113 c integral1$88#
	cmp al, 88
	je printArgument$113

 printArgument$7:
	; Case 113 c integral1$120#
	cmp al, 120
	je printArgument$113

 printArgument$8:
	; Case 113 c integral1$98#
	cmp al, 98
	je printArgument$113

 printArgument$9:
	; Case 113 c integral1$111#
	cmp al, 111
	je printArgument$113

 printArgument$10:
	; Case 113 c integral1$117#
	cmp al, 117
	je printArgument$113

 printArgument$11:
	; Case 171 c integral1$71#
	cmp al, 71
	je printArgument$171

 printArgument$12:
	; Case 171 c integral1$103#
	cmp al, 103
	je printArgument$171

 printArgument$13:
	; Case 171 c integral1$69#
	cmp al, 69
	je printArgument$171

 printArgument$14:
	; Case 171 c integral1$101#
	cmp al, 101
	je printArgument$171

 printArgument$15:
	; Case 171 c integral1$102#
	cmp al, 102
	je printArgument$171

 printArgument$16:
	; Case 297 c integral1$112#
	cmp al, 112
	je printArgument$297

 printArgument$17:
	; Case 322 c integral1$110#
	cmp al, 110
	je printArgument$322

 printArgument$18:
	; Case 344 c integral1$37#
	cmp al, 37
	je printArgument$344

 printArgument$19:
	; CaseEnd c

 printArgument$20:
	; Jump 357
	jmp printArgument$357

 printArgument$21:
	; Equal 30 shortInt integral4$0#
	cmp dword [rbp + 64], 0
	je printArgument$30

 printArgument$22:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 32], 4

 printArgument$23:
	; Subtract £temporary1549 arg_list integral8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$24:
	; IntegralToIntegral £temporary1550 £temporary1549

 printArgument$25:
	; Dereference £temporary1551 £temporary1550 0

 printArgument$26:
	; IntegralToIntegral £temporary1552 £temporary1551
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$27
	neg eax
	neg ax

 printArgument$27:
	; IntegralToIntegral £temporary1553 £temporary1552
	mov rbx, 65535
	and rax, rbx
	cmp ax, 0
	jge printArgument$28
	neg ax
	neg rax

 printArgument$28:
	; Assign longValue £temporary1553
	mov [rbp + 114], rax

 printArgument$29:
	; Jump 43
	jmp printArgument$43

 printArgument$30:
	; Equal 37 longInt integral4$0#
	cmp dword [rbp + 68], 0
	je printArgument$37

 printArgument$31:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$32:
	; Subtract £temporary1555 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$33:
	; IntegralToIntegral £temporary1556 £temporary1555

 printArgument$34:
	; Dereference £temporary1557 £temporary1556 0

 printArgument$35:
	; Assign longValue £temporary1557
	mov rax, [rsi]
	mov [rbp + 114], rax

 printArgument$36:
	; Jump 43
	jmp printArgument$43

 printArgument$37:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 32], 4

 printArgument$38:
	; Subtract £temporary1559 arg_list integral8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$39:
	; IntegralToIntegral £temporary1560 £temporary1559

 printArgument$40:
	; Dereference £temporary1561 £temporary1560 0

 printArgument$41:
	; IntegralToIntegral £temporary1562 £temporary1561
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printArgument$42
	neg eax
	neg rax

 printArgument$42:
	; Assign longValue £temporary1562
	mov [rbp + 114], rax

 printArgument$43:
	; Equal 50 negativePtr integral8$0#
	cmp qword [rbp + 80], 0
	je printArgument$50

 printArgument$44:
	; Dereference £temporary1566 negativePtr 0
	mov rsi, [rbp + 80]

 printArgument$45:
	; GreaterThanEqual 48 longValue integral8$0#
	cmp qword [rbp + 114], 0
	jge printArgument$48

 printArgument$46:
	; Assign £temporary1568 integral4$1#
	mov eax, 1

 printArgument$47:
	; Jump 49
	jmp printArgument$49

 printArgument$48:
	; Assign £temporary1568 integral4$0#
	mov eax, 0

 printArgument$49:
	; Assign £temporary1566 £temporary1568
	mov [rsi], eax

 printArgument$50:
	; NotEqual 57 sign integral4$0#
	cmp dword [rbp + 76], 0
	jne printArgument$57

 printArgument$51:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$52:
	; Parameter 146 signed long int longValue
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$53:
	; Call 122 labs 0
	mov qword [rbp + 122], printArgument$54
	mov [rbp + 130], rbp
	add rbp, 122
	jmp labs

 printArgument$54:
	; PostCall 122

 printArgument$55:
	; GetReturnValue £temporary1571

 printArgument$56:
	; Assign longValue £temporary1571
	mov [rbp + 114], rbx

 printArgument$57:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$58:
	; Parameter 146 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

 printArgument$59:
	; Parameter 154 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

 printArgument$60:
	; Address £temporary1572 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$61:
	; Parameter 162 pointer £temporary1572
	mov [rbp + 162], rsi

 printArgument$62:
	; Call 122 checkWidthAndPrecision 0
	mov qword [rbp + 122], printArgument$63
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$63:
	; PostCall 122

 printArgument$64:
	; GetReturnValue £temporary1573

 printArgument$65:
	; Assign arg_list £temporary1573
	mov [rbp + 32], rbx

 printArgument$66:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$67:
	; Parameter 146 signed long int longValue
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$68:
	; Parameter 154 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 154], eax

 printArgument$69:
	; Parameter 158 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 158], eax

 printArgument$70:
	; Call 122 printLongInt 0
	mov qword [rbp + 122], printArgument$71
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printLongInt

 printArgument$71:
	; PostCall 122

 printArgument$72:
	; Jump 357
	jmp printArgument$357

 printArgument$73:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 32], 4

 printArgument$74:
	; Subtract £temporary1576 arg_list integral8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$75:
	; IntegralToIntegral £temporary1577 £temporary1576

 printArgument$76:
	; Dereference £temporary1578 £temporary1577 0

 printArgument$77:
	; IntegralToIntegral £temporary1579 £temporary1578
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$78
	neg eax
	neg al

 printArgument$78:
	; Assign charValue £temporary1579
	mov [rbp + 89], al

 printArgument$79:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$80:
	; Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$81:
	; Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$82:
	; Address £temporary1580 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$83:
	; Parameter 154 pointer £temporary1580
	mov [rbp + 154], rsi

 printArgument$84:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$85
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$85:
	; PostCall 114

 printArgument$86:
	; GetReturnValue £temporary1581

 printArgument$87:
	; Assign arg_list £temporary1581
	mov [rbp + 32], rbx

 printArgument$88:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$89:
	; Parameter 138 signed char charValue
	mov al, [rbp + 89]
	mov [rbp + 138], al

 printArgument$90:
	; Call 114 printChar 0
	mov qword [rbp + 114], printArgument$91
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

 printArgument$91:
	; PostCall 114

 printArgument$92:
	; Jump 357
	jmp printArgument$357

 printArgument$93:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$94:
	; Subtract £temporary1584 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$95:
	; IntegralToIntegral £temporary1585 £temporary1584

 printArgument$96:
	; Dereference £temporary1586 £temporary1585 0

 printArgument$97:
	; Assign stringValue £temporary1586
	mov rax, [rsi]
	mov [rbp + 114], rax

 printArgument$98:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$99:
	; Parameter 146 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

 printArgument$100:
	; Parameter 154 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

 printArgument$101:
	; Address £temporary1587 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$102:
	; Parameter 162 pointer £temporary1587
	mov [rbp + 162], rsi

 printArgument$103:
	; Call 122 checkWidthAndPrecision 0
	mov qword [rbp + 122], printArgument$104
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$104:
	; PostCall 122

 printArgument$105:
	; GetReturnValue £temporary1588

 printArgument$106:
	; Assign arg_list £temporary1588
	mov [rbp + 32], rbx

 printArgument$107:
	; PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$108:
	; Parameter 146 pointer stringValue
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$109:
	; Parameter 154 signed int precision
	mov eax, [rbp + 60]
	mov [rbp + 154], eax

 printArgument$110:
	; Call 122 printString 0
	mov qword [rbp + 122], printArgument$111
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printString

 printArgument$111:
	; PostCall 122

 printArgument$112:
	; Jump 357
	jmp printArgument$357

 printArgument$113:
	; NotEqual 116 c integral1$117#
	cmp byte [rbp + 88], 117
	jne printArgument$116

 printArgument$114:
	; Assign £temporary1595 integral8$10#
	mov rax, 10

 printArgument$115:
	; Jump 123
	jmp printArgument$123

 printArgument$116:
	; NotEqual 119 c integral1$111#
	cmp byte [rbp + 88], 111
	jne printArgument$119

 printArgument$117:
	; Assign £temporary1595 integral8$8#
	mov rax, 8

 printArgument$118:
	; Jump 123
	jmp printArgument$123

 printArgument$119:
	; NotEqual 122 c integral1$98#
	cmp byte [rbp + 88], 98
	jne printArgument$122

 printArgument$120:
	; Assign £temporary1595 integral8$2#
	mov rax, 2

 printArgument$121:
	; Jump 123
	jmp printArgument$123

 printArgument$122:
	; Assign £temporary1595 integral8$16#
	mov rax, 16

 printArgument$123:
	; Assign base £temporary1595
	mov [rbp + 114], rax

 printArgument$124:
	; Equal 133 shortInt integral4$0#
	cmp dword [rbp + 64], 0
	je printArgument$133

 printArgument$125:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 32], 4

 printArgument$126:
	; Subtract £temporary1597 arg_list integral8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$127:
	; IntegralToIntegral £temporary1598 £temporary1597

 printArgument$128:
	; Dereference £temporary1599 £temporary1598 0

 printArgument$129:
	; IntegralToIntegral £temporary1600 £temporary1599
	mov eax, [rsi]

 printArgument$130:
	; IntegralToIntegral £temporary1601 £temporary1600
	mov rbx, 65535
	and rax, rbx

 printArgument$131:
	; Assign value £temporary1601
	mov [rbp + 122], rax

 printArgument$132:
	; Jump 146
	jmp printArgument$146

 printArgument$133:
	; Equal 140 longInt integral4$0#
	cmp dword [rbp + 68], 0
	je printArgument$140

 printArgument$134:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$135:
	; Subtract £temporary1603 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$136:
	; IntegralToIntegral £temporary1604 £temporary1603

 printArgument$137:
	; Dereference £temporary1605 £temporary1604 0

 printArgument$138:
	; Assign value £temporary1605
	mov rax, [rsi]
	mov [rbp + 122], rax

 printArgument$139:
	; Jump 146
	jmp printArgument$146

 printArgument$140:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 32], 4

 printArgument$141:
	; Subtract £temporary1607 arg_list integral8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$142:
	; IntegralToIntegral £temporary1608 £temporary1607

 printArgument$143:
	; Dereference £temporary1609 £temporary1608 0

 printArgument$144:
	; IntegralToIntegral £temporary1610 £temporary1609
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx

 printArgument$145:
	; Assign value £temporary1610
	mov [rbp + 122], rax

 printArgument$146:
	; PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$147:
	; Parameter 154 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 154], rax

 printArgument$148:
	; Parameter 162 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 162], rax

 printArgument$149:
	; Address £temporary1613 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$150:
	; Parameter 170 pointer £temporary1613
	mov [rbp + 170], rsi

 printArgument$151:
	; Call 130 checkWidthAndPrecision 0
	mov qword [rbp + 130], printArgument$152
	mov [rbp + 138], rbp
	add rbp, 130
	jmp checkWidthAndPrecision

 printArgument$152:
	; PostCall 130

 printArgument$153:
	; GetReturnValue £temporary1614

 printArgument$154:
	; Assign arg_list £temporary1614
	mov [rbp + 32], rbx

 printArgument$155:
	; PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$156:
	; Parameter 154 unsigned long int value
	mov rax, [rbp + 122]
	mov [rbp + 154], rax

 printArgument$157:
	; Parameter 162 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 162], eax

 printArgument$158:
	; Parameter 166 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 166], eax

 printArgument$159:
	; Parameter 170 signed int grid
	mov eax, [rbp + 48]
	mov [rbp + 170], eax

 printArgument$160:
	; Parameter 174 unsigned long int base
	mov rax, [rbp + 114]
	mov [rbp + 174], rax

 printArgument$161:
	; PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$162:
	; IntegralToIntegral £temporary1615 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$163
	neg al
	neg eax

 printArgument$163:
	; Parameter 206 signed int £temporary1615
	mov [rbp + 206], eax

 printArgument$164:
	; Call 182 isupper 0
	mov qword [rbp + 182], printArgument$165
	mov [rbp + 190], rbp
	add rbp, 182
	jmp isupper

 printArgument$165:
	; PostCall 182

 printArgument$166:
	; GetReturnValue £temporary1616

 printArgument$167:
	; Parameter 182 signed int £temporary1616
	mov [rbp + 182], ebx

 printArgument$168:
	; Call 130 printUnsignedLong 0
	mov qword [rbp + 130], printArgument$169
	mov [rbp + 138], rbp
	add rbp, 130
	jmp printUnsignedLong

 printArgument$169:
	; PostCall 130

 printArgument$170:
	; Jump 357
	jmp printArgument$357

 printArgument$171:
	; Equal 188 longDouble integral4$0#
	cmp dword [rbp + 72], 0
	je printArgument$188

 printArgument$172:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$173:
	; Subtract £temporary1619 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$174:
	; IntegralToIntegral £temporary1620 £temporary1619

 printArgument$175:
	; Dereference £temporary1621 £temporary1620 0

 printArgument$176:
	; PushFloat £temporary1621
	fld qword [rsi]

 printArgument$177:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$178:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$179:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$180:
	; Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$181:
	; Parameter 146 signed int integral4$0#
	mov dword [rbp + 146], 0

 printArgument$182:
	; Parameter 150 signed int integral4$0#
	mov dword [rbp + 150], 0

 printArgument$183:
	; Parameter 154 signed int integral4$0#
	mov dword [rbp + 154], 0

 printArgument$184:
	; Parameter 158 signed int integral4$3#
	mov dword [rbp + 158], 3

 printArgument$185:
	; Call 114 printLongDoublePlain 0
	mov qword [rbp + 114], printArgument$186
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$186:
	; PostCall 114

 printArgument$187:
	; Jump 194
	jmp printArgument$194

 printArgument$188:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$189:
	; Subtract £temporary1624 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$190:
	; IntegralToIntegral £temporary1625 £temporary1624

 printArgument$191:
	; Dereference £temporary1626 £temporary1625 0

 printArgument$192:
	; PushFloat £temporary1626
	fld qword [rsi]

 printArgument$193:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$194:
	; Equal 203 negativePtr integral8$0#
	cmp qword [rbp + 80], 0
	je printArgument$203

 printArgument$195:
	; Dereference £temporary1630 negativePtr 0
	mov rsi, [rbp + 80]

 printArgument$196:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$197:
	; PushFloat floating8$0#
	fldz

 printArgument$198:
	; GreaterThanEqual 201 longDoubleValue floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe printArgument$201

 printArgument$199:
	; Assign £temporary1632 integral4$1#
	mov eax, 1

 printArgument$200:
	; Jump 202
	jmp printArgument$202

 printArgument$201:
	; Assign £temporary1632 integral4$0#
	mov eax, 0

 printArgument$202:
	; Assign £temporary1630 £temporary1632
	mov [rsi], eax

 printArgument$203:
	; NotEqual 211 sign integral4$0#
	cmp dword [rbp + 76], 0
	jne printArgument$211

 printArgument$204:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$205:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$206:
	; Parameter 138 double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$207:
	; Call 114 fabs 0
	mov qword [rbp + 114], printArgument$208
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

 printArgument$208:
	; PostCall 114

 printArgument$209:
	; GetReturnValue £temporary1635

 printArgument$210:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$211:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$212:
	; Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$213:
	; Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$214:
	; Address £temporary1636 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$215:
	; Parameter 154 pointer £temporary1636
	mov [rbp + 154], rsi

 printArgument$216:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$217
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$217:
	; PostCall 114

 printArgument$218:
	; GetReturnValue £temporary1637

 printArgument$219:
	; Assign arg_list £temporary1637
	mov [rbp + 32], rbx

 printArgument$220:
	; NotEqual 231 c integral1$102#
	cmp byte [rbp + 88], 102
	jne printArgument$231

 printArgument$221:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$222:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$223:
	; Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$224:
	; Parameter 146 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

 printArgument$225:
	; Parameter 150 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

 printArgument$226:
	; Parameter 154 signed int grid
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

 printArgument$227:
	; Parameter 158 signed int precision
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

 printArgument$228:
	; Call 114 printLongDoublePlain 0
	mov qword [rbp + 114], printArgument$229
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$229:
	; PostCall 114

 printArgument$230:
	; Jump 357
	jmp printArgument$357

 printArgument$231:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$232:
	; IntegralToIntegral £temporary1640 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$233
	neg al
	neg eax

 printArgument$233:
	; Parameter 138 signed int £temporary1640
	mov [rbp + 138], eax

 printArgument$234:
	; Call 114 tolower 0
	mov qword [rbp + 114], printArgument$235
	mov [rbp + 122], rbp
	add rbp, 114
	jmp tolower

 printArgument$235:
	; PostCall 114

 printArgument$236:
	; GetReturnValue £temporary1641

 printArgument$237:
	; NotEqual 255 £temporary1641 integral4$101#
	cmp ebx, 101
	jne printArgument$255

 printArgument$238:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$239:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$240:
	; Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$241:
	; Parameter 146 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

 printArgument$242:
	; Parameter 150 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

 printArgument$243:
	; Parameter 154 signed int grid
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

 printArgument$244:
	; Parameter 158 signed int precision
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

 printArgument$245:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$246:
	; IntegralToIntegral £temporary1643 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$247
	neg al
	neg eax

 printArgument$247:
	; Parameter 186 signed int £temporary1643
	mov [rbp + 186], eax

 printArgument$248:
	; Call 162 isupper 0
	mov qword [rbp + 162], printArgument$249
	mov [rbp + 170], rbp
	add rbp, 162
	jmp isupper

 printArgument$249:
	; PostCall 162

 printArgument$250:
	; GetReturnValue £temporary1644

 printArgument$251:
	; Parameter 162 signed int £temporary1644
	mov [rbp + 162], ebx

 printArgument$252:
	; Call 114 printLongDoubleExpo 0
	mov qword [rbp + 114], printArgument$253
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoubleExpo

 printArgument$253:
	; PostCall 114

 printArgument$254:
	; Jump 357
	jmp printArgument$357

 printArgument$255:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$256:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$257:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$258:
	; Parameter 138 double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$259:
	; Call 114 fabs 0
	mov qword [rbp + 114], printArgument$260
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

 printArgument$260:
	; PostCall 114

 printArgument$261:
	; GetReturnValue £temporary1646

 printArgument$262:
	; Parameter 138 double £temporary1646
	fstp qword [rbp + 138]

 printArgument$263:
	; Call 114 log10 0
	mov qword [rbp + 114], printArgument$264
	mov [rbp + 122], rbp
	add rbp, 114
	jmp log10

 printArgument$264:
	; PostCall 114

 printArgument$265:
	; GetReturnValue £temporary1647

 printArgument$266:
	; FloatingToIntegral £temporary1648 £temporary1647
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printArgument$267:
	; Assign expo £temporary1648
	mov [rbp + 114], eax

 printArgument$268:
	; LessThan 280 expo integral4$minus3#
	cmp dword [rbp + 114], -3
	jl printArgument$280

 printArgument$269:
	; GreaterThan 280 expo integral4$2#
	cmp dword [rbp + 114], 2
	jg printArgument$280

 printArgument$270:
	; PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$271:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$272:
	; Parameter 142 long double longDoubleValue
	fstp qword [rbp + 142]

 printArgument$273:
	; Parameter 150 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

 printArgument$274:
	; Parameter 154 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

 printArgument$275:
	; Parameter 158 signed int grid
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

 printArgument$276:
	; Parameter 162 signed int precision
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

 printArgument$277:
	; Call 118 printLongDoublePlain 0
	mov qword [rbp + 118], printArgument$278
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoublePlain

 printArgument$278:
	; PostCall 118

 printArgument$279:
	; Jump 357
	jmp printArgument$357

 printArgument$280:
	; PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$281:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$282:
	; Parameter 142 long double longDoubleValue
	fstp qword [rbp + 142]

 printArgument$283:
	; Parameter 150 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

 printArgument$284:
	; Parameter 154 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

 printArgument$285:
	; Parameter 158 signed int grid
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

 printArgument$286:
	; Parameter 162 signed int precision
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

 printArgument$287:
	; PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$288:
	; IntegralToIntegral £temporary1653 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$289
	neg al
	neg eax

 printArgument$289:
	; Parameter 190 signed int £temporary1653
	mov [rbp + 190], eax

 printArgument$290:
	; Call 166 isupper 0
	mov qword [rbp + 166], printArgument$291
	mov [rbp + 174], rbp
	add rbp, 166
	jmp isupper

 printArgument$291:
	; PostCall 166

 printArgument$292:
	; GetReturnValue £temporary1654

 printArgument$293:
	; Parameter 166 signed int £temporary1654
	mov [rbp + 166], ebx

 printArgument$294:
	; Call 118 printLongDoubleExpo 0
	mov qword [rbp + 118], printArgument$295
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoubleExpo

 printArgument$295:
	; PostCall 118

 printArgument$296:
	; Jump 357
	jmp printArgument$357

 printArgument$297:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$298:
	; Subtract £temporary1657 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$299:
	; IntegralToIntegral £temporary1658 £temporary1657

 printArgument$300:
	; Dereference £temporary1659 £temporary1658 0

 printArgument$301:
	; Assign ptrValue £temporary1659
	mov rax, [rsi]
	mov [rbp + 106], rax

 printArgument$302:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$303:
	; Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$304:
	; Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$305:
	; Address £temporary1660 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$306:
	; Parameter 154 pointer £temporary1660
	mov [rbp + 154], rsi

 printArgument$307:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$308
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$308:
	; PostCall 114

 printArgument$309:
	; GetReturnValue £temporary1661

 printArgument$310:
	; Assign arg_list £temporary1661
	mov [rbp + 32], rbx

 printArgument$311:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$312:
	; IntegralToIntegral £temporary1662 ptrValue
	mov rax, [rbp + 106]

 printArgument$313:
	; Parameter 138 unsigned long int £temporary1662
	mov [rbp + 138], rax

 printArgument$314:
	; Parameter 146 signed int integral4$0#
	mov dword [rbp + 146], 0

 printArgument$315:
	; Parameter 150 signed int integral4$0#
	mov dword [rbp + 150], 0

 printArgument$316:
	; Parameter 154 signed int integral4$0#
	mov dword [rbp + 154], 0

 printArgument$317:
	; Parameter 158 unsigned long int integral8$10#
	mov qword [rbp + 158], 10

 printArgument$318:
	; Parameter 166 signed int integral4$0#
	mov dword [rbp + 166], 0

 printArgument$319:
	; Call 114 printUnsignedLong 0
	mov qword [rbp + 114], printArgument$320
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printUnsignedLong

 printArgument$320:
	; PostCall 114

 printArgument$321:
	; Jump 357
	jmp printArgument$357

 printArgument$322:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$323:
	; Subtract £temporary1665 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$324:
	; IntegralToIntegral £temporary1666 £temporary1665

 printArgument$325:
	; Dereference £temporary1667 £temporary1666 0

 printArgument$326:
	; Assign ptrValue £temporary1667
	mov rax, [rsi]
	mov [rbp + 106], rax

 printArgument$327:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$328:
	; Subtract £temporary1669 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$329:
	; IntegralToIntegral £temporary1670 £temporary1669

 printArgument$330:
	; Dereference £temporary1671 £temporary1670 0

 printArgument$331:
	; Assign intPtr £temporary1671
	mov rax, [rsi]
	mov [rbp + 90], rax

 printArgument$332:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$333:
	; Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$334:
	; Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$335:
	; Address £temporary1672 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$336:
	; Parameter 154 pointer £temporary1672
	mov [rbp + 154], rsi

 printArgument$337:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$338
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$338:
	; PostCall 114

 printArgument$339:
	; GetReturnValue £temporary1673

 printArgument$340:
	; Assign arg_list £temporary1673
	mov [rbp + 32], rbx

 printArgument$341:
	; Dereference £temporary1674 intPtr 0
	mov rsi, [rbp + 90]

 printArgument$342:
	; Assign £temporary1674 g_outChars
	mov eax, [g_outChars]
	mov [rsi], eax

 printArgument$343:
	; Jump 357
	jmp printArgument$357

 printArgument$344:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$345:
	; Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$346:
	; Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$347:
	; Address £temporary1675 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$348:
	; Parameter 154 pointer £temporary1675
	mov [rbp + 154], rsi

 printArgument$349:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$350
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$350:
	; PostCall 114

 printArgument$351:
	; GetReturnValue £temporary1676

 printArgument$352:
	; Assign arg_list £temporary1676
	mov [rbp + 32], rbx

 printArgument$353:
	; PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$354:
	; Parameter 138 signed char integral1$37#
	mov byte [rbp + 138], 37

 printArgument$355:
	; Call 114 printChar 0
	mov qword [rbp + 114], printArgument$356
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

 printArgument$356:
	; PostCall 114

 printArgument$357:
	; SetReturnValue

 printArgument$358:
	; Return arg_list
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printArgument$359:
	; FunctionEnd printArgument

section .data

@4681integral4$10#:
	; Initializer SignedInt 10
	dd 10

section .text

 printFormat:
	; Assign width integral4$0#
	mov dword [rbp + 44], 0

 printFormat$1:
	; Assign precision integral4$0#
	mov dword [rbp + 48], 0

 printFormat$2:
	; Assign percent integral4$0#
	mov dword [rbp + 52], 0

 printFormat$3:
	; Assign plus integral4$0#
	mov dword [rbp + 56], 0

 printFormat$4:
	; Assign minus integral4$0#
	mov dword [rbp + 60], 0

 printFormat$5:
	; Assign space integral4$0#
	mov dword [rbp + 64], 0

 printFormat$6:
	; Assign zero integral4$0#
	mov dword [rbp + 68], 0

 printFormat$7:
	; Assign grid integral4$0#
	mov dword [rbp + 72], 0

 printFormat$8:
	; Assign widthStar integral4$0#
	mov dword [rbp + 76], 0

 printFormat$9:
	; Assign period integral4$0#
	mov dword [rbp + 80], 0

 printFormat$10:
	; Assign precisionStar integral4$0#
	mov dword [rbp + 84], 0

 printFormat$11:
	; Assign shortInt integral4$0#
	mov dword [rbp + 88], 0

 printFormat$12:
	; Assign longInt integral4$0#
	mov dword [rbp + 92], 0

 printFormat$13:
	; Assign longDouble integral4$0#
	mov dword [rbp + 96], 0

 printFormat$14:
	; Assign g_outChars integral4$0#
	mov dword [g_outChars], 0

 printFormat$15:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 printFormat$16:
	; IntegralToIntegral £temporary1694 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$17:
	; Add £temporary1695 format £temporary1694
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$18:
	; Dereference £temporary1696 £temporary1695 0

 printFormat$19:
	; Equal 292 £temporary1696 integral1$0#
	cmp byte [rsi], 0
	je printFormat$292

 printFormat$20:
	; IntegralToIntegral £temporary1699 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$21:
	; Add £temporary1700 format £temporary1699
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$22:
	; Dereference £temporary1701 £temporary1700 0

 printFormat$23:
	; Assign c £temporary1701
	mov al, [rsi]
	mov [rbp + 100], al

 printFormat$24:
	; Equal 270 percent integral4$0#
	cmp dword [rbp + 52], 0
	je printFormat$270

 printFormat$25:
	; Case 54 c integral1$43#
	mov al, [rbp + 100]
	cmp al, 43
	je printFormat$54

 printFormat$26:
	; Case 56 c integral1$45#
	cmp al, 45
	je printFormat$56

 printFormat$27:
	; Case 58 c integral1$32#
	cmp al, 32
	je printFormat$58

 printFormat$28:
	; Case 60 c integral1$48#
	cmp al, 48
	je printFormat$60

 printFormat$29:
	; Case 62 c integral1$35#
	cmp al, 35
	je printFormat$62

 printFormat$30:
	; Case 64 c integral1$46#
	cmp al, 46
	je printFormat$64

 printFormat$31:
	; Case 66 c integral1$42#
	cmp al, 42
	je printFormat$66

 printFormat$32:
	; Case 71 c integral1$104#
	cmp al, 104
	je printFormat$71

 printFormat$33:
	; Case 73 c integral1$108#
	cmp al, 108
	je printFormat$73

 printFormat$34:
	; Case 75 c integral1$76#
	cmp al, 76
	je printFormat$75

 printFormat$35:
	; Case 77 c integral1$37#
	cmp al, 37
	je printFormat$77

 printFormat$36:
	; Case 77 c integral1$110#
	cmp al, 110
	je printFormat$77

 printFormat$37:
	; Case 77 c integral1$112#
	cmp al, 112
	je printFormat$77

 printFormat$38:
	; Case 77 c integral1$71#
	cmp al, 71
	je printFormat$77

 printFormat$39:
	; Case 77 c integral1$103#
	cmp al, 103
	je printFormat$77

 printFormat$40:
	; Case 77 c integral1$69#
	cmp al, 69
	je printFormat$77

 printFormat$41:
	; Case 77 c integral1$101#
	cmp al, 101
	je printFormat$77

 printFormat$42:
	; Case 77 c integral1$102#
	cmp al, 102
	je printFormat$77

 printFormat$43:
	; Case 77 c integral1$115#
	cmp al, 115
	je printFormat$77

 printFormat$44:
	; Case 77 c integral1$99#
	cmp al, 99
	je printFormat$77

 printFormat$45:
	; Case 77 c integral1$88#
	cmp al, 88
	je printFormat$77

 printFormat$46:
	; Case 77 c integral1$120#
	cmp al, 120
	je printFormat$77

 printFormat$47:
	; Case 77 c integral1$111#
	cmp al, 111
	je printFormat$77

 printFormat$48:
	; Case 77 c integral1$98#
	cmp al, 98
	je printFormat$77

 printFormat$49:
	; Case 77 c integral1$117#
	cmp al, 117
	je printFormat$77

 printFormat$50:
	; Case 77 c integral1$100#
	cmp al, 100
	je printFormat$77

 printFormat$51:
	; Case 77 c integral1$105#
	cmp al, 105
	je printFormat$77

 printFormat$52:
	; CaseEnd c

 printFormat$53:
	; Jump 246
	jmp printFormat$246

 printFormat$54:
	; Assign plus integral4$1#
	mov dword [rbp + 56], 1

 printFormat$55:
	; Jump 290
	jmp printFormat$290

 printFormat$56:
	; Assign minus integral4$1#
	mov dword [rbp + 60], 1

 printFormat$57:
	; Jump 290
	jmp printFormat$290

 printFormat$58:
	; Assign space integral4$1#
	mov dword [rbp + 64], 1

 printFormat$59:
	; Jump 290
	jmp printFormat$290

 printFormat$60:
	; Assign zero integral4$1#
	mov dword [rbp + 68], 1

 printFormat$61:
	; Jump 290
	jmp printFormat$290

 printFormat$62:
	; Assign grid integral4$1#
	mov dword [rbp + 72], 1

 printFormat$63:
	; Jump 290
	jmp printFormat$290

 printFormat$64:
	; Assign period integral4$1#
	mov dword [rbp + 80], 1

 printFormat$65:
	; Jump 290
	jmp printFormat$290

 printFormat$66:
	; NotEqual 69 period integral4$0#
	cmp dword [rbp + 80], 0
	jne printFormat$69

 printFormat$67:
	; Assign width integral4$minus1#
	mov dword [rbp + 44], -1

 printFormat$68:
	; Jump 290
	jmp printFormat$290

 printFormat$69:
	; Assign precision integral4$minus1#
	mov dword [rbp + 48], -1

 printFormat$70:
	; Jump 290
	jmp printFormat$290

 printFormat$71:
	; Assign shortInt integral4$1#
	mov dword [rbp + 88], 1

 printFormat$72:
	; Jump 290
	jmp printFormat$290

 printFormat$73:
	; Assign longInt integral4$1#
	mov dword [rbp + 92], 1

 printFormat$74:
	; Jump 290
	jmp printFormat$290

 printFormat$75:
	; Assign longDouble integral4$1#
	mov dword [rbp + 96], 1

 printFormat$76:
	; Jump 290
	jmp printFormat$290

 printFormat$77:
	; Equal 110 minus integral4$0#
	cmp dword [rbp + 60], 0
	je printFormat$110

 printFormat$78:
	; Assign startChars g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$79:
	; PreCall 105 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$80:
	; IntegralToIntegral £temporary1704 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$81:
	; Add £temporary1705 format £temporary1704
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$82:
	; Dereference £temporary1706 £temporary1705 0

 printFormat$83:
	; Address £temporary1707 £temporary1706

 printFormat$84:
	; Parameter 129 pointer £temporary1707
	mov [rbp + 129], rsi

 printFormat$85:
	; Parameter 137 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 137], rax

 printFormat$86:
	; Parameter 145 signed int plus
	mov eax, [rbp + 56]
	mov [rbp + 145], eax

 printFormat$87:
	; Parameter 149 signed int space
	mov eax, [rbp + 64]
	mov [rbp + 149], eax

 printFormat$88:
	; Parameter 153 signed int grid
	mov eax, [rbp + 72]
	mov [rbp + 153], eax

 printFormat$89:
	; Address £temporary1708 width
	mov rsi, rbp
	add rsi, 44

 printFormat$90:
	; Parameter 157 pointer £temporary1708
	mov [rbp + 157], rsi

 printFormat$91:
	; Parameter 165 signed int precision
	mov eax, [rbp + 48]
	mov [rbp + 165], eax

 printFormat$92:
	; Parameter 169 signed int shortInt
	mov eax, [rbp + 88]
	mov [rbp + 169], eax

 printFormat$93:
	; Parameter 173 signed int longInt
	mov eax, [rbp + 92]
	mov [rbp + 173], eax

 printFormat$94:
	; Parameter 177 signed int longDouble
	mov eax, [rbp + 96]
	mov [rbp + 177], eax

 printFormat$95:
	; Parameter 181 signed int integral4$1#
	mov dword [rbp + 181], 1

 printFormat$96:
	; Parameter 185 pointer integral8$0#
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
	; GetReturnValue £temporary1709

 printFormat$100:
	; Assign arg_list £temporary1709
	mov [rbp + 32], rbx

 printFormat$101:
	; Subtract field g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 105], eax

 printFormat$102:
	; Assign £temporary1712 field
	mov eax, [rbp + 105]

 printFormat$103:
	; Add field field integral4$1#
	inc dword [rbp + 105]

 printFormat$104:
	; GreaterThanEqual 244 £temporary1712 width
	cmp eax, [rbp + 44]
	jge printFormat$244

 printFormat$105:
	; PreCall 109 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$106:
	; Parameter 133 signed char integral1$32#
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
	; Equal 189 zero integral4$0#
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
	; Assign negative integral4$0#
	mov dword [rbp + 109], 0

 printFormat$114:
	; Assign g_outStatus integral4$2#
	mov dword [g_outStatus], 2

 printFormat$115:
	; PreCall 113 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$116:
	; IntegralToIntegral £temporary1716 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$117:
	; Add £temporary1717 format £temporary1716
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$118:
	; Dereference £temporary1718 £temporary1717 0

 printFormat$119:
	; Address £temporary1719 £temporary1718

 printFormat$120:
	; Parameter 137 pointer £temporary1719
	mov [rbp + 137], rsi

 printFormat$121:
	; Parameter 145 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

 printFormat$122:
	; Parameter 153 signed int integral4$0#
	mov dword [rbp + 153], 0

 printFormat$123:
	; Parameter 157 signed int integral4$0#
	mov dword [rbp + 157], 0

 printFormat$124:
	; Parameter 161 signed int grid
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

 printFormat$125:
	; Address £temporary1720 width
	mov rsi, rbp
	add rsi, 44

 printFormat$126:
	; Parameter 165 pointer £temporary1720
	mov [rbp + 165], rsi

 printFormat$127:
	; Parameter 173 signed int precision
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

 printFormat$128:
	; Parameter 177 signed int shortInt
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

 printFormat$129:
	; Parameter 181 signed int longInt
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

 printFormat$130:
	; Parameter 185 signed int longDouble
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

 printFormat$131:
	; Parameter 189 signed int integral4$0#
	mov dword [rbp + 189], 0

 printFormat$132:
	; Address £temporary1721 negative
	mov rsi, rbp
	add rsi, 109

 printFormat$133:
	; Parameter 193 pointer £temporary1721
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
	; Subtract field g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 113], eax

 printFormat$138:
	; Assign g_outChars startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

 printFormat$139:
	; Equal 146 negative integral4$0#
	cmp dword [rbp + 109], 0
	je printFormat$146

 printFormat$140:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$141:
	; Parameter 141 signed char integral1$45#
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
	; Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$145:
	; Jump 159
	jmp printFormat$159

 printFormat$146:
	; Equal 153 plus integral4$0#
	cmp dword [rbp + 56], 0
	je printFormat$153

 printFormat$147:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$148:
	; Parameter 141 signed char integral1$43#
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
	; Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$152:
	; Jump 159
	jmp printFormat$159

 printFormat$153:
	; Equal 159 space integral4$0#
	cmp dword [rbp + 64], 0
	je printFormat$159

 printFormat$154:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$155:
	; Parameter 141 signed char integral1$32#
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
	; Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$159:
	; Assign £temporary1734 field
	mov eax, [rbp + 113]

 printFormat$160:
	; Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$161:
	; GreaterThanEqual 167 £temporary1734 width
	cmp eax, [rbp + 44]
	jge printFormat$167

 printFormat$162:
	; PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$163:
	; Parameter 141 signed char integral1$48#
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
	; IntegralToIntegral £temporary1738 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$169:
	; Add £temporary1739 format £temporary1738
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$170:
	; Dereference £temporary1740 £temporary1739 0

 printFormat$171:
	; Address £temporary1741 £temporary1740

 printFormat$172:
	; Parameter 141 pointer £temporary1741
	mov [rbp + 141], rsi

 printFormat$173:
	; Parameter 149 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 149], rax

 printFormat$174:
	; Parameter 157 signed int integral4$0#
	mov dword [rbp + 157], 0

 printFormat$175:
	; Parameter 161 signed int integral4$0#
	mov dword [rbp + 161], 0

 printFormat$176:
	; Parameter 165 signed int grid
	mov eax, [rbp + 72]
	mov [rbp + 165], eax

 printFormat$177:
	; Parameter 169 pointer integral8$0#
	mov qword [rbp + 169], 0

 printFormat$178:
	; Parameter 177 signed int precision
	mov eax, [rbp + 48]
	mov [rbp + 177], eax

 printFormat$179:
	; Parameter 181 signed int shortInt
	mov eax, [rbp + 88]
	mov [rbp + 181], eax

 printFormat$180:
	; Parameter 185 signed int longInt
	mov eax, [rbp + 92]
	mov [rbp + 185], eax

 printFormat$181:
	; Parameter 189 signed int longDouble
	mov eax, [rbp + 96]
	mov [rbp + 189], eax

 printFormat$182:
	; Parameter 193 signed int integral4$0#
	mov dword [rbp + 193], 0

 printFormat$183:
	; Parameter 197 pointer integral8$0#
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
	; GetReturnValue £temporary1742

 printFormat$187:
	; Assign arg_list £temporary1742
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
	; Assign g_outStatus integral4$2#
	mov dword [g_outStatus], 2

 printFormat$192:
	; PreCall 109 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$193:
	; IntegralToIntegral £temporary1743 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$194:
	; Add £temporary1744 format £temporary1743
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$195:
	; Dereference £temporary1745 £temporary1744 0

 printFormat$196:
	; Address £temporary1746 £temporary1745

 printFormat$197:
	; Parameter 133 pointer £temporary1746
	mov [rbp + 133], rsi

 printFormat$198:
	; Parameter 141 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 141], rax

 printFormat$199:
	; Parameter 149 signed int plus
	mov eax, [rbp + 56]
	mov [rbp + 149], eax

 printFormat$200:
	; Parameter 153 signed int space
	mov eax, [rbp + 64]
	mov [rbp + 153], eax

 printFormat$201:
	; Parameter 157 signed int grid
	mov eax, [rbp + 72]
	mov [rbp + 157], eax

 printFormat$202:
	; Address £temporary1747 width
	mov rsi, rbp
	add rsi, 44

 printFormat$203:
	; Parameter 161 pointer £temporary1747
	mov [rbp + 161], rsi

 printFormat$204:
	; Parameter 169 signed int precision
	mov eax, [rbp + 48]
	mov [rbp + 169], eax

 printFormat$205:
	; Parameter 173 signed int shortInt
	mov eax, [rbp + 88]
	mov [rbp + 173], eax

 printFormat$206:
	; Parameter 177 signed int longInt
	mov eax, [rbp + 92]
	mov [rbp + 177], eax

 printFormat$207:
	; Parameter 181 signed int longDouble
	mov eax, [rbp + 96]
	mov [rbp + 181], eax

 printFormat$208:
	; Parameter 185 signed int integral4$1#
	mov dword [rbp + 185], 1

 printFormat$209:
	; Parameter 189 pointer integral8$0#
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
	; Subtract field g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 109], eax

 printFormat$214:
	; Assign g_outChars startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

 printFormat$215:
	; Assign £temporary1751 field
	mov eax, [rbp + 109]

 printFormat$216:
	; Add field field integral4$1#
	inc dword [rbp + 109]

 printFormat$217:
	; GreaterThanEqual 223 £temporary1751 width
	cmp eax, [rbp + 44]
	jge printFormat$223

 printFormat$218:
	; PreCall 113 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$219:
	; Parameter 137 signed char integral1$32#
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
	; IntegralToIntegral £temporary1755 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$225:
	; Add £temporary1756 format £temporary1755
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$226:
	; Dereference £temporary1757 £temporary1756 0

 printFormat$227:
	; Address £temporary1758 £temporary1757

 printFormat$228:
	; Parameter 137 pointer £temporary1758
	mov [rbp + 137], rsi

 printFormat$229:
	; Parameter 145 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

 printFormat$230:
	; Parameter 153 signed int plus
	mov eax, [rbp + 56]
	mov [rbp + 153], eax

 printFormat$231:
	; Parameter 157 signed int space
	mov eax, [rbp + 64]
	mov [rbp + 157], eax

 printFormat$232:
	; Parameter 161 signed int grid
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

 printFormat$233:
	; Parameter 165 pointer integral8$0#
	mov qword [rbp + 165], 0

 printFormat$234:
	; Parameter 173 signed int precision
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

 printFormat$235:
	; Parameter 177 signed int shortInt
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

 printFormat$236:
	; Parameter 181 signed int longInt
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

 printFormat$237:
	; Parameter 185 signed int longDouble
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

 printFormat$238:
	; Parameter 189 signed int integral4$1#
	mov dword [rbp + 189], 1

 printFormat$239:
	; Parameter 193 pointer integral8$0#
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
	; GetReturnValue £temporary1759

 printFormat$243:
	; Assign arg_list £temporary1759
	mov [rbp + 32], rbx

 printFormat$244:
	; Assign percent integral4$0#
	mov dword [rbp + 52], 0

 printFormat$245:
	; Jump 290
	jmp printFormat$290

 printFormat$246:
	; Assign value integral4$0#
	mov dword [rbp + 101], 0

 printFormat$247:
	; PreCall 105 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$248:
	; IntegralToIntegral £temporary1762 c
	mov al, [rbp + 100]
	and eax, 255
	cmp al, 0
	jge printFormat$249
	neg al
	neg eax

 printFormat$249:
	; Parameter 129 signed int £temporary1762
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
	; GetReturnValue £temporary1763

 printFormat$253:
	; Equal 264 £temporary1763 integral4$0#
	cmp ebx, 0
	je printFormat$264

 printFormat$254:
	; Multiply £temporary1764 value integral4$10#
	mov eax, [rbp + 101]
	xor edx, edx
	imul dword [@4681integral4$10#]

 printFormat$255:
	; Subtract £temporary1765 c integral1$48#
	mov bl, [rbp + 100]
	sub bl, 48

 printFormat$256:
	; IntegralToIntegral £temporary1766 £temporary1765
	and ebx, 255
	cmp bl, 0
	jge printFormat$257
	neg bl
	neg ebx

 printFormat$257:
	; Add value £temporary1764 £temporary1766
	add eax, ebx
	mov [rbp + 101], eax

 printFormat$258:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 printFormat$259:
	; IntegralToIntegral £temporary1769 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$260:
	; Add £temporary1770 format £temporary1769
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$261:
	; Dereference £temporary1771 £temporary1770 0

 printFormat$262:
	; Assign c £temporary1771
	mov al, [rsi]
	mov [rbp + 100], al

 printFormat$263:
	; Jump 247
	jmp printFormat$247

 printFormat$264:
	; Subtract index index integral4$1#
	dec dword [rbp + 40]

 printFormat$265:
	; NotEqual 268 period integral4$0#
	cmp dword [rbp + 80], 0
	jne printFormat$268

 printFormat$266:
	; Assign width value
	mov eax, [rbp + 101]
	mov [rbp + 44], eax

 printFormat$267:
	; Jump 290
	jmp printFormat$290

 printFormat$268:
	; Assign precision value
	mov eax, [rbp + 101]
	mov [rbp + 48], eax

 printFormat$269:
	; Jump 290
	jmp printFormat$290

 printFormat$270:
	; NotEqual 286 c integral1$37#
	cmp byte [rbp + 100], 37
	jne printFormat$286

 printFormat$271:
	; Assign percent integral4$1#
	mov dword [rbp + 52], 1

 printFormat$272:
	; Assign plus integral4$0#
	mov dword [rbp + 56], 0

 printFormat$273:
	; Assign minus integral4$0#
	mov dword [rbp + 60], 0

 printFormat$274:
	; Assign space integral4$0#
	mov dword [rbp + 64], 0

 printFormat$275:
	; Assign zero integral4$0#
	mov dword [rbp + 68], 0

 printFormat$276:
	; Assign grid integral4$0#
	mov dword [rbp + 72], 0

 printFormat$277:
	; Assign widthStar integral4$0#
	mov dword [rbp + 76], 0

 printFormat$278:
	; Assign period integral4$0#
	mov dword [rbp + 80], 0

 printFormat$279:
	; Assign precisionStar integral4$0#
	mov dword [rbp + 84], 0

 printFormat$280:
	; Assign shortInt integral4$0#
	mov dword [rbp + 88], 0

 printFormat$281:
	; Assign longInt integral4$0#
	mov dword [rbp + 92], 0

 printFormat$282:
	; Assign longDouble integral4$0#
	mov dword [rbp + 96], 0

 printFormat$283:
	; Assign width integral4$0#
	mov dword [rbp + 44], 0

 printFormat$284:
	; Assign precision integral4$0#
	mov dword [rbp + 48], 0

 printFormat$285:
	; Jump 290
	jmp printFormat$290

 printFormat$286:
	; PreCall 101 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$287:
	; Parameter 125 signed char c
	mov al, [rbp + 100]
	mov [rbp + 125], al

 printFormat$288:
	; Call 101 printChar 0
	mov qword [rbp + 101], printFormat$289
	mov [rbp + 109], rbp
	add rbp, 101
	jmp printChar

 printFormat$289:
	; PostCall 101

 printFormat$290:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 printFormat$291:
	; Jump 16
	jmp printFormat$16

 printFormat$292:
	; NotEqual 299 g_outStatus integral4$1#
	cmp dword [g_outStatus], 1
	jne printFormat$299

 printFormat$293:
	; IntegralToIntegral £temporary1780 g_outDevice
	mov rax, [g_outDevice]

 printFormat$294:
	; Assign outString £temporary1780
	mov [rbp + 100], rax

 printFormat$295:
	; IntegralToIntegral £temporary1781 g_outChars
	mov eax, [g_outChars]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$296:
	; Add £temporary1782 outString £temporary1781
	mov rsi, [rbp + 100]
	add rsi, rax

 printFormat$297:
	; Dereference £temporary1783 £temporary1782 0

 printFormat$298:
	; Assign £temporary1783 integral1$0#
	mov byte [rsi], 0

 printFormat$299:
	; SetReturnValue

 printFormat$300:
	; Return g_outChars
	mov ebx, [g_outChars]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printFormat$301:
	; FunctionEnd printFormat

section .text

 printf:
	; Address £temporary1788 format
	mov rsi, rbp
	add rsi, 24

 printf$1:
	; IntegralToIntegral £temporary1789 £temporary1788

 printf$2:
	; Add arg_list £temporary1789 integral8$8#
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
	; GetReturnValue £temporary1791

 printf$9:
	; SetReturnValue

 printf$10:
	; Return £temporary1791
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
	; GetReturnValue £temporary1793

 vprintf$7:
	; SetReturnValue

 vprintf$8:
	; Return £temporary1793
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vprintf$9:
	; FunctionEnd vprintf

section .text

 fprintf:
	; Address £temporary1794 format
	mov rsi, rbp
	add rsi, 32

 fprintf$1:
	; IntegralToIntegral £temporary1795 £temporary1794

 fprintf$2:
	; Add arg_list £temporary1795 integral8$8#
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
	; GetReturnValue £temporary1797

 fprintf$10:
	; SetReturnValue

 fprintf$11:
	; Return £temporary1797
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fprintf$12:
	; FunctionEnd fprintf

section .text

 vfprintf:
	; Assign g_outStatus integral4$0#
	mov dword [g_outStatus], 0

 vfprintf$1:
	; IntegralToIntegral £temporary1799 outStream
	mov rax, [rbp + 24]

 vfprintf$2:
	; Assign g_outDevice £temporary1799
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
	; GetReturnValue £temporary1800

 vfprintf$9:
	; SetReturnValue

 vfprintf$10:
	; Return £temporary1800
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfprintf$11:
	; FunctionEnd vfprintf

section .text

 sprintf:
	; Address £temporary1801 format
	mov rsi, rbp
	add rsi, 32

 sprintf$1:
	; IntegralToIntegral £temporary1802 £temporary1801

 sprintf$2:
	; Add arg_list £temporary1802 integral8$8#
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
	; GetReturnValue £temporary1804

 sprintf$10:
	; SetReturnValue

 sprintf$11:
	; Return £temporary1804
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sprintf$12:
	; FunctionEnd sprintf

section .text

 vsprintf:
	; Assign g_outStatus integral4$1#
	mov dword [g_outStatus], 1

 vsprintf$1:
	; IntegralToIntegral £temporary1806 outString
	mov rax, [rbp + 24]

 vsprintf$2:
	; Assign g_outDevice £temporary1806
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
	; GetReturnValue £temporary1807

 vsprintf$9:
	; SetReturnValue

 vsprintf$10:
	; Return £temporary1807
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsprintf$11:
	; FunctionEnd vsprintf
