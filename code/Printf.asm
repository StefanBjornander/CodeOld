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
section .text

 putc:
	; g_outStatus = int4$0#
	mov dword [g_outStatus], 0

 putc$1:
	; £temporary1540 = int_to_int stream (Pointer -> Pointer)
	mov rax, [rbp + 28]

 putc$2:
	; g_outDevice = £temporary1540
	mov [g_outDevice], rax

 putc$3:
	; call header integral zero 0 stack zero 0

 putc$4:
	; £temporary1541 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putc$5
	neg eax
	neg al

 putc$5:
	; parameter £temporary1541, offset 60
	mov [rbp + 60], al

 putc$6:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], putc$7
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 putc$7:
	; post call

 putc$8:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 putc$9:
	; function end putc

 fputc:
	; g_outStatus = int4$0#
	mov dword [g_outStatus], 0

 fputc$1:
	; £temporary1543 = int_to_int stream (Pointer -> Pointer)
	mov rax, [rbp + 28]

 fputc$2:
	; g_outDevice = £temporary1543
	mov [g_outDevice], rax

 fputc$3:
	; call header integral zero 0 stack zero 0

 fputc$4:
	; £temporary1544 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 24]
	cmp eax, 0
	jge fputc$5
	neg eax
	neg al

 fputc$5:
	; parameter £temporary1544, offset 60
	mov [rbp + 60], al

 fputc$6:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], fputc$7
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 fputc$7:
	; post call

 fputc$8:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fputc$9:
	; function end fputc

 putchar:
	; g_outStatus = int4$0#
	mov dword [g_outStatus], 0

 putchar$1:
	; £temporary1546 = int_to_int stdout (Pointer -> Pointer)
	mov rax, [stdout]

 putchar$2:
	; g_outDevice = £temporary1546
	mov [g_outDevice], rax

 putchar$3:
	; call header integral zero 0 stack zero 0

 putchar$4:
	; £temporary1547 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putchar$5
	neg eax
	neg al

 putchar$5:
	; parameter £temporary1547, offset 52
	mov [rbp + 52], al

 putchar$6:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 28], putchar$7
	mov [rbp + 36], rbp
	add rbp, 28
	jmp printChar

 putchar$7:
	; post call

 putchar$8:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 putchar$9:
	; function end putchar

 printChar:
	; empty

 printChar$1:
	; case g_outStatus == int4$0# goto 6
	mov eax, [g_outStatus]
	cmp eax, 0
	je printChar$6

 printChar$2:
	; case g_outStatus == int4$1# goto 19
	cmp eax, 1
	je printChar$19

 printChar$3:
	; case g_outStatus == int4$2# goto 28
	cmp eax, 2
	je printChar$28

 printChar$4:
	; case end g_outStatus

 printChar$5:
	; goto 29
	jmp printChar$29

 printChar$6:
	; £temporary1549 = int_to_int g_outDevice (Pointer -> Pointer)
	mov rax, [g_outDevice]

 printChar$7:
	; stream = £temporary1549
	mov [rbp + 37], rax

 printChar$8:
	; rax = int8$1#
	mov rax, 1

 printChar$9:
	; £field1552 -> stream = *stream
	mov rsi, [rbp + 37]

 printChar$10:
	; £temporary1553 = int_to_int £field1552 -> stream (Unsigned_Int -> Unsigned_Long_Int)
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 printChar$11:
	; rdi = £temporary1553

 printChar$12:
	; £temporary1555 = &c
	mov rsi, rbp
	add rsi, 24

 printChar$13:
	; £temporary1556 = int_to_int £temporary1555 (Pointer -> Unsigned_Long_Int)

 printChar$14:
	; rsi = £temporary1556

 printChar$15:
	; rdx = int8$1#
	mov rdx, 1

 printChar$16:
	; syscall
	syscall

 printChar$17:
	; g_outChars = g_outChars + int4$1#
	inc dword [g_outChars]

 printChar$18:
	; goto 29
	jmp printChar$29

 printChar$19:
	; £temporary1559 = int_to_int g_outDevice (Pointer -> Pointer)
	mov rax, [g_outDevice]

 printChar$20:
	; outString = £temporary1559
	mov [rbp + 29], rax

 printChar$21:
	; £temporary1560 = g_outChars
	mov eax, [g_outChars]

 printChar$22:
	; g_outChars = g_outChars + int4$1#
	inc dword [g_outChars]

 printChar$23:
	; £temporary1562 = int_to_int £temporary1560 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 printChar$24:
	; £temporary1564 = outString + £temporary1562
	mov rsi, [rbp + 29]
	add rsi, rax

 printChar$25:
	; £field1561 -> £temporary1564 = *£temporary1564

 printChar$26:
	; £field1561 -> £temporary1564 = c
	mov al, [rbp + 24]
	mov [rsi], al

 printChar$27:
	; goto 29
	jmp printChar$29

 printChar$28:
	; g_outChars = g_outChars + int4$1#
	inc dword [g_outChars]

 printChar$29:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printChar$30:
	; function end printChar

 printString:
	; if s == int8$0# goto 33
	cmp qword [rbp + 24], 0
	je printString$33

 printString$1:
	; if precision != int4$0# goto 16
	cmp dword [rbp + 32], 0
	jne printString$16

 printString$2:
	; index = int4$0#
	mov dword [rbp + 36], 0

 printString$3:
	; £temporary1570 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$4:
	; £temporary1572 = s + £temporary1570
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$5:
	; £field1569 -> £temporary1572 = *£temporary1572

 printString$6:
	; if £field1569 -> £temporary1572 == int1$0# goto 57
	cmp byte [rsi], 0
	je printString$57

 printString$7:
	; call header integral zero 0 stack zero 0

 printString$8:
	; £temporary1576 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$9:
	; £temporary1578 = s + £temporary1576
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$10:
	; £field1575 -> £temporary1578 = *£temporary1578

 printString$11:
	; parameter £field1575 -> £temporary1578, offset 64
	mov al, [rsi]
	mov [rbp + 64], al

 printString$12:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printString$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printString$13:
	; post call

 printString$14:
	; index = index + int4$1#
	inc dword [rbp + 36]

 printString$15:
	; goto 3
	jmp printString$3

 printString$16:
	; index = int4$0#
	mov dword [rbp + 36], 0

 printString$17:
	; £temporary1580 = precision
	mov eax, [rbp + 32]

 printString$18:
	; precision = precision - int4$1#
	dec dword [rbp + 32]

 printString$19:
	; if £temporary1580 <= int4$0# goto 57
	cmp eax, 0
	jle printString$57

 printString$20:
	; £temporary1583 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$21:
	; £temporary1585 = s + £temporary1583
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$22:
	; £field1582 -> £temporary1585 = *£temporary1585

 printString$23:
	; if £field1582 -> £temporary1585 == int1$0# goto 57
	cmp byte [rsi], 0
	je printString$57

 printString$24:
	; call header integral zero 0 stack zero 0

 printString$25:
	; £temporary1590 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$26:
	; £temporary1592 = s + £temporary1590
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$27:
	; £field1589 -> £temporary1592 = *£temporary1592

 printString$28:
	; parameter £field1589 -> £temporary1592, offset 64
	mov al, [rsi]
	mov [rbp + 64], al

 printString$29:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printString$30
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printString$30:
	; post call

 printString$31:
	; index = index + int4$1#
	inc dword [rbp + 36]

 printString$32:
	; goto 17
	jmp printString$17

 printString$33:
	; call header integral zero 0 stack zero 0

 printString$34:
	; parameter int1$60#, offset 60
	mov byte [rbp + 60], 60

 printString$35:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$36
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$36:
	; post call

 printString$37:
	; call header integral zero 0 stack zero 0

 printString$38:
	; parameter int1$78#, offset 60
	mov byte [rbp + 60], 78

 printString$39:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$40
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$40:
	; post call

 printString$41:
	; call header integral zero 0 stack zero 0

 printString$42:
	; parameter int1$85#, offset 60
	mov byte [rbp + 60], 85

 printString$43:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$44
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$44:
	; post call

 printString$45:
	; call header integral zero 0 stack zero 0

 printString$46:
	; parameter int1$76#, offset 60
	mov byte [rbp + 60], 76

 printString$47:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$48
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$48:
	; post call

 printString$49:
	; call header integral zero 0 stack zero 0

 printString$50:
	; parameter int1$76#, offset 60
	mov byte [rbp + 60], 76

 printString$51:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$52
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$52:
	; post call

 printString$53:
	; call header integral zero 0 stack zero 0

 printString$54:
	; parameter int1$62#, offset 60
	mov byte [rbp + 60], 62

 printString$55:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$56
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$56:
	; post call

 printString$57:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printString$58:
	; function end printString

 printLongIntRec:
	; if longValue == int8$0# goto 15
	cmp qword [rbp + 24], 0
	je printLongIntRec$15

 printLongIntRec$1:
	; £temporary1601 = longValue % int8$10#
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [int8$10#]

 printLongIntRec$2:
	; £temporary1602 = int_to_int £temporary1601 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge printLongIntRec$3
	neg rdx
	neg edx

 printLongIntRec$3:
	; digit = £temporary1602
	mov [rbp + 32], edx

 printLongIntRec$4:
	; call header integral zero 0 stack zero 0

 printLongIntRec$5:
	; £temporary1603 = longValue / int8$10#
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [int8$10#]

 printLongIntRec$6:
	; parameter £temporary1603, offset 60
	mov [rbp + 60], rax

 printLongIntRec$7:
	; call function noellipse-noellipse printLongIntRec
	mov qword [rbp + 36], printLongIntRec$8
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printLongIntRec

 printLongIntRec$8:
	; post call

 printLongIntRec$9:
	; call header integral zero 0 stack zero 0

 printLongIntRec$10:
	; £temporary1605 = digit + int4$48#
	mov eax, [rbp + 32]
	add eax, 48

 printLongIntRec$11:
	; £temporary1606 = int_to_int £temporary1605 (Signed_Int -> Signed_Char)
	cmp eax, 0
	jge printLongIntRec$12
	neg eax
	neg al

 printLongIntRec$12:
	; parameter £temporary1606, offset 60
	mov [rbp + 60], al

 printLongIntRec$13:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printLongIntRec$14
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printLongIntRec$14:
	; post call

 printLongIntRec$15:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongIntRec$16:
	; function end printLongIntRec

 printLongInt:
	; if longValue >= int8$0# goto 8
	cmp qword [rbp + 24], 0
	jge printLongInt$8

 printLongInt$1:
	; £temporary1609 = -longValue
	mov rax, [rbp + 24]
	neg rax

 printLongInt$2:
	; longValue = £temporary1609
	mov [rbp + 24], rax

 printLongInt$3:
	; call header integral zero 0 stack zero 0

 printLongInt$4:
	; parameter int1$45#, offset 64
	mov byte [rbp + 64], 45

 printLongInt$5:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printLongInt$6
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$6:
	; post call

 printLongInt$7:
	; goto 19
	jmp printLongInt$19

 printLongInt$8:
	; if space == int4$0# goto 14
	cmp dword [rbp + 36], 0
	je printLongInt$14

 printLongInt$9:
	; call header integral zero 0 stack zero 0

 printLongInt$10:
	; parameter int1$32#, offset 64
	mov byte [rbp + 64], 32

 printLongInt$11:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printLongInt$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$12:
	; post call

 printLongInt$13:
	; goto 19
	jmp printLongInt$19

 printLongInt$14:
	; if plus == int4$0# goto 19
	cmp dword [rbp + 32], 0
	je printLongInt$19

 printLongInt$15:
	; call header integral zero 0 stack zero 0

 printLongInt$16:
	; parameter int1$43#, offset 64
	mov byte [rbp + 64], 43

 printLongInt$17:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printLongInt$18
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$18:
	; post call

 printLongInt$19:
	; if longValue != int8$0# goto 25
	cmp qword [rbp + 24], 0
	jne printLongInt$25

 printLongInt$20:
	; call header integral zero 0 stack zero 0

 printLongInt$21:
	; parameter int1$48#, offset 64
	mov byte [rbp + 64], 48

 printLongInt$22:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printLongInt$23
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$23:
	; post call

 printLongInt$24:
	; goto 29
	jmp printLongInt$29

 printLongInt$25:
	; call header integral zero 0 stack zero 0

 printLongInt$26:
	; parameter longValue, offset 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 printLongInt$27:
	; call function noellipse-noellipse printLongIntRec
	mov qword [rbp + 40], printLongInt$28
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printLongIntRec

 printLongInt$28:
	; post call

 printLongInt$29:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongInt$30:
	; function end printLongInt

 digitToChar:
	; if digit >= int4$10# goto 4
	cmp dword [rbp + 24], 10
	jge digitToChar$4

 digitToChar$1:
	; £temporary1619 = digit + int4$48#
	mov ebx, [rbp + 24]
	add ebx, 48

 digitToChar$2:
	; £temporary1620 = int_to_int £temporary1619 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge digitToChar$3
	neg ebx
	neg bl

 digitToChar$3:
	; return £temporary1620
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$4:
	; if capital == int4$0# goto 9
	cmp dword [rbp + 28], 0
	je digitToChar$9

 digitToChar$5:
	; £temporary1621 = digit - int4$10#
	mov ebx, [rbp + 24]
	sub ebx, 10

 digitToChar$6:
	; £temporary1622 = £temporary1621 + int4$65#
	add ebx, 65

 digitToChar$7:
	; £temporary1623 = int_to_int £temporary1622 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge digitToChar$8
	neg ebx
	neg bl

 digitToChar$8:
	; return £temporary1623
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$9:
	; £temporary1624 = digit - int4$10#
	mov ebx, [rbp + 24]
	sub ebx, 10

 digitToChar$10:
	; £temporary1625 = £temporary1624 + int4$97#
	add ebx, 97

 digitToChar$11:
	; £temporary1626 = int_to_int £temporary1625 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge digitToChar$12
	neg ebx
	neg bl

 digitToChar$12:
	; return £temporary1626
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$13:
	; function end digitToChar

 printUnsignedLongRec:
	; if unsignedValue <= int8$0# goto 22
	cmp qword [rbp + 24], 0
	jbe printUnsignedLongRec$22

 printUnsignedLongRec$1:
	; £temporary1629 = unsignedValue % base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$2:
	; £temporary1630 = int_to_int £temporary1629 (Unsigned_Long_Int -> Signed_Int)

 printUnsignedLongRec$3:
	; digit = £temporary1630
	mov [rbp + 44], edx

 printUnsignedLongRec$4:
	; call header integral zero 0 stack zero 0

 printUnsignedLongRec$5:
	; £temporary1631 = unsignedValue / base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$6:
	; parameter £temporary1631, offset 72
	mov [rbp + 72], rax

 printUnsignedLongRec$7:
	; parameter base, offset 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 printUnsignedLongRec$8:
	; parameter capital, offset 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printUnsignedLongRec$9:
	; call function noellipse-noellipse printUnsignedLongRec
	mov qword [rbp + 48], printUnsignedLongRec$10
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printUnsignedLongRec

 printUnsignedLongRec$10:
	; post call

 printUnsignedLongRec$11:
	; call header integral zero 0 stack zero 0

 printUnsignedLongRec$12:
	; parameter digit, offset 72
	mov eax, [rbp + 44]
	mov [rbp + 72], eax

 printUnsignedLongRec$13:
	; parameter capital, offset 76
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

 printUnsignedLongRec$14:
	; call function noellipse-noellipse digitToChar
	mov qword [rbp + 48], printUnsignedLongRec$15
	mov [rbp + 56], rbp
	add rbp, 48
	jmp digitToChar

 printUnsignedLongRec$15:
	; post call

 printUnsignedLongRec$16:
	; £temporary1633 = return_value

 printUnsignedLongRec$17:
	; c = £temporary1633
	mov [rbp + 48], bl

 printUnsignedLongRec$18:
	; call header integral zero 0 stack zero 0

 printUnsignedLongRec$19:
	; parameter c, offset 73
	mov al, [rbp + 48]
	mov [rbp + 73], al

 printUnsignedLongRec$20:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 49], printUnsignedLongRec$21
	mov [rbp + 57], rbp
	add rbp, 49
	jmp printChar

 printUnsignedLongRec$21:
	; post call

 printUnsignedLongRec$22:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printUnsignedLongRec$23:
	; function end printUnsignedLongRec

 printUnsignedLong:
	; if plus == int4$0# goto 5
	cmp dword [rbp + 32], 0
	je printUnsignedLong$5

 printUnsignedLong$1:
	; call header integral zero 0 stack zero 0

 printUnsignedLong$2:
	; parameter int1$43#, offset 80
	mov byte [rbp + 80], 43

 printUnsignedLong$3:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$4
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$4:
	; post call

 printUnsignedLong$5:
	; if space == int4$0# goto 10
	cmp dword [rbp + 36], 0
	je printUnsignedLong$10

 printUnsignedLong$6:
	; call header integral zero 0 stack zero 0

 printUnsignedLong$7:
	; parameter int1$32#, offset 80
	mov byte [rbp + 80], 32

 printUnsignedLong$8:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$9
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$9:
	; post call

 printUnsignedLong$10:
	; if grid == int4$0# goto 29
	cmp dword [rbp + 40], 0
	je printUnsignedLong$29

 printUnsignedLong$11:
	; if base != int8$8# goto 16
	cmp qword [rbp + 44], 8
	jne printUnsignedLong$16

 printUnsignedLong$12:
	; call header integral zero 0 stack zero 0

 printUnsignedLong$13:
	; parameter int1$48#, offset 80
	mov byte [rbp + 80], 48

 printUnsignedLong$14:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$15
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$15:
	; post call

 printUnsignedLong$16:
	; if base != int8$16# goto 29
	cmp qword [rbp + 44], 16
	jne printUnsignedLong$29

 printUnsignedLong$17:
	; call header integral zero 0 stack zero 0

 printUnsignedLong$18:
	; parameter int1$48#, offset 80
	mov byte [rbp + 80], 48

 printUnsignedLong$19:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$20:
	; post call

 printUnsignedLong$21:
	; call header integral zero 0 stack zero 0

 printUnsignedLong$22:
	; if capital == int4$0# goto 25
	cmp dword [rbp + 52], 0
	je printUnsignedLong$25

 printUnsignedLong$23:
	; £temporary1644 = int1$88#
	mov al, 88

 printUnsignedLong$24:
	; goto 26
	jmp printUnsignedLong$26

 printUnsignedLong$25:
	; £temporary1644 = int1$120#
	mov al, 120

 printUnsignedLong$26:
	; parameter £temporary1644, offset 80
	mov [rbp + 80], al

 printUnsignedLong$27:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$28
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$28:
	; post call

 printUnsignedLong$29:
	; if unsignedValue != int8$0# goto 35
	cmp qword [rbp + 24], 0
	jne printUnsignedLong$35

 printUnsignedLong$30:
	; call header integral zero 0 stack zero 0

 printUnsignedLong$31:
	; parameter int1$48#, offset 80
	mov byte [rbp + 80], 48

 printUnsignedLong$32:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$33
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$33:
	; post call

 printUnsignedLong$34:
	; goto 41
	jmp printUnsignedLong$41

 printUnsignedLong$35:
	; call header integral zero 0 stack zero 0

 printUnsignedLong$36:
	; parameter unsignedValue, offset 80
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 printUnsignedLong$37:
	; parameter base, offset 88
	mov rax, [rbp + 44]
	mov [rbp + 88], rax

 printUnsignedLong$38:
	; parameter capital, offset 96
	mov eax, [rbp + 52]
	mov [rbp + 96], eax

 printUnsignedLong$39:
	; call function noellipse-noellipse printUnsignedLongRec
	mov qword [rbp + 56], printUnsignedLong$40
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printUnsignedLongRec

 printUnsignedLong$40:
	; post call

 printUnsignedLong$41:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printUnsignedLong$42:
	; function end printUnsignedLong

 printLongDoubleFraction:
	; push float longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$1:
	; push float longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$2:
	; £temporary1650 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
	fistp dword [container8bytes#]
	mov rax, [container8bytes#]

 printLongDoubleFraction$3:
	; £temporary1651 = int_to_float £temporary1650 (Signed_Long_Int -> Long_Double)
	mov [container8bytes#], rax
	fild dword [container8bytes#]

 printLongDoubleFraction$4:
	; £temporary1652 = longDoubleValue - £temporary1651
	fsub

 printLongDoubleFraction$5:
	; pop float longDoubleValue
	fstp qword [rbp + 24]

 printLongDoubleFraction$6:
	; if precision != int4$0# goto 8
	cmp dword [rbp + 36], 0
	jne printLongDoubleFraction$8

 printLongDoubleFraction$7:
	; precision = int4$9#
	mov dword [rbp + 36], 9

 printLongDoubleFraction$8:
	; if grid != int4$0# goto 10
	cmp dword [rbp + 32], 0
	jne printLongDoubleFraction$10

 printLongDoubleFraction$9:
	; if precision <= int4$0# goto 14
	cmp dword [rbp + 36], 0
	jle printLongDoubleFraction$14

 printLongDoubleFraction$10:
	; call header integral zero 0 stack zero 0

 printLongDoubleFraction$11:
	; parameter int1$46#, offset 64
	mov byte [rbp + 64], 46

 printLongDoubleFraction$12:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printLongDoubleFraction$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongDoubleFraction$13:
	; post call

 printLongDoubleFraction$14:
	; £temporary1658 = precision
	mov eax, [rbp + 36]

 printLongDoubleFraction$15:
	; precision = precision - int4$1#
	dec dword [rbp + 36]

 printLongDoubleFraction$16:
	; if £temporary1658 <= int4$0# goto 34
	cmp eax, 0
	jle printLongDoubleFraction$34

 printLongDoubleFraction$17:
	; push float float8$10.0#
	fld qword [float8$10.0#]

 printLongDoubleFraction$18:
	; push float longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$19:
	; £temporary1660 = float8$10.0# * longDoubleValue
	fmul

 printLongDoubleFraction$20:
	; top float longDoubleValue10
	fst qword [rbp + 40]

 printLongDoubleFraction$21:
	; £temporary1661 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
	fistp word [container4bytes#]
	mov eax, [container4bytes#]

 printLongDoubleFraction$22:
	; digitValue = £temporary1661
	mov [rbp + 48], eax

 printLongDoubleFraction$23:
	; call header integral zero 0 stack zero 0

 printLongDoubleFraction$24:
	; £temporary1662 = digitValue + int4$48#
	mov eax, [rbp + 48]
	add eax, 48

 printLongDoubleFraction$25:
	; £temporary1663 = int_to_int £temporary1662 (Signed_Int -> Signed_Char)
	cmp eax, 0
	jge printLongDoubleFraction$26
	neg eax
	neg al

 printLongDoubleFraction$26:
	; parameter £temporary1663, offset 76
	mov [rbp + 76], al

 printLongDoubleFraction$27:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 52], printLongDoubleFraction$28
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleFraction$28:
	; post call

 printLongDoubleFraction$29:
	; push float longDoubleValue10
	fld qword [rbp + 40]

 printLongDoubleFraction$30:
	; £temporary1665 = int_to_float digitValue (Signed_Int -> Long_Double)
	fild word [rbp + 48]

 printLongDoubleFraction$31:
	; £temporary1666 = longDoubleValue10 - £temporary1665
	fsub

 printLongDoubleFraction$32:
	; pop float longDoubleValue
	fstp qword [rbp + 24]

 printLongDoubleFraction$33:
	; goto 14
	jmp printLongDoubleFraction$14

 printLongDoubleFraction$34:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongDoubleFraction$35:
	; function end printLongDoubleFraction

 printLongDoublePlain:
	; push float longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$1:
	; push float float8$0.0#
	fldz

 printLongDoublePlain$2:
	; if longDoubleValue >= float8$0.0# goto 12
	fcompp
	fstsw ax
	sahf
	jbe printLongDoublePlain$12

 printLongDoublePlain$3:
	; call header integral zero 0 stack zero 0

 printLongDoublePlain$4:
	; parameter int1$45#, offset 72
	mov byte [rbp + 72], 45

 printLongDoublePlain$5:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 48], printLongDoublePlain$6
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printChar

 printLongDoublePlain$6:
	; post call

 printLongDoublePlain$7:
	; push float longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$8:
	; £temporary1669 = -longDoubleValue
	fchs

 printLongDoublePlain$9:
	; pop float longDoubleValue
	fstp qword [rbp + 24]

 printLongDoublePlain$10:
	; plus = int4$0#
	mov dword [rbp + 32], 0

 printLongDoublePlain$11:
	; space = int4$0#
	mov dword [rbp + 36], 0

 printLongDoublePlain$12:
	; push float longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$13:
	; £temporary1670 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
	fistp dword [container8bytes#]
	mov rax, [container8bytes#]

 printLongDoublePlain$14:
	; longValue = £temporary1670
	mov [rbp + 48], rax

 printLongDoublePlain$15:
	; call header integral zero 0 stack zero 0

 printLongDoublePlain$16:
	; parameter longValue, offset 80
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 printLongDoublePlain$17:
	; parameter plus, offset 88
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

 printLongDoublePlain$18:
	; parameter space, offset 92
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 printLongDoublePlain$19:
	; call function noellipse-noellipse printLongInt
	mov qword [rbp + 56], printLongDoublePlain$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongInt

 printLongDoublePlain$20:
	; post call

 printLongDoublePlain$21:
	; push float longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$22:
	; £temporary1672 = int_to_float longValue (Signed_Long_Int -> Long_Double)
	fild dword [rbp + 48]

 printLongDoublePlain$23:
	; £temporary1673 = longDoubleValue - £temporary1672
	fsub

 printLongDoublePlain$24:
	; pop float longDoubleValue
	fstp qword [rbp + 24]

 printLongDoublePlain$25:
	; call header integral zero 0 stack zero 0

 printLongDoublePlain$26:
	; push float longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$27:
	; parameter longDoubleValue, offset 80
	fstp qword [rbp + 80]

 printLongDoublePlain$28:
	; parameter grid, offset 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printLongDoublePlain$29:
	; parameter precision, offset 92
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

 printLongDoublePlain$30:
	; call function noellipse-noellipse printLongDoubleFraction
	mov qword [rbp + 56], printLongDoublePlain$31
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongDoubleFraction

 printLongDoublePlain$31:
	; post call

 printLongDoublePlain$32:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongDoublePlain$33:
	; function end printLongDoublePlain

 printLongDoubleExpo:
	; push float value
	fld qword [rbp + 24]

 printLongDoubleExpo$1:
	; push float float8$0.0#
	fldz

 printLongDoubleExpo$2:
	; if value != float8$0.0# goto 27
	fcompp
	fstsw ax
	sahf
	jne printLongDoubleExpo$27

 printLongDoubleExpo$3:
	; call header integral zero 0 stack zero 0

 printLongDoubleExpo$4:
	; parameter int1$48#, offset 76
	mov byte [rbp + 76], 48

 printLongDoubleExpo$5:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 52], printLongDoubleExpo$6
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$6:
	; post call

 printLongDoubleExpo$7:
	; call header integral zero 0 stack zero 0

 printLongDoubleExpo$8:
	; push float float8$0.0#
	fldz

 printLongDoubleExpo$9:
	; parameter float8$0.0#, offset 76
	fstp qword [rbp + 76]

 printLongDoubleExpo$10:
	; parameter precision, offset 84
	mov eax, [rbp + 44]
	mov [rbp + 84], eax

 printLongDoubleExpo$11:
	; parameter grid, offset 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printLongDoubleExpo$12:
	; call function noellipse-noellipse printLongDoubleFraction
	mov qword [rbp + 52], printLongDoubleExpo$13
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printLongDoubleFraction

 printLongDoubleExpo$13:
	; post call

 printLongDoubleExpo$14:
	; call header integral zero 0 stack zero 0

 printLongDoubleExpo$15:
	; if capital == int4$0# goto 18
	cmp dword [rbp + 48], 0
	je printLongDoubleExpo$18

 printLongDoubleExpo$16:
	; £temporary1680 = int1$69#
	mov al, 69

 printLongDoubleExpo$17:
	; goto 19
	jmp printLongDoubleExpo$19

 printLongDoubleExpo$18:
	; £temporary1680 = int1$101#
	mov al, 101

 printLongDoubleExpo$19:
	; parameter £temporary1680, offset 76
	mov [rbp + 76], al

 printLongDoubleExpo$20:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 52], printLongDoubleExpo$21
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$21:
	; post call

 printLongDoubleExpo$22:
	; call header integral zero 0 stack zero 0

 printLongDoubleExpo$23:
	; parameter int1$48#, offset 76
	mov byte [rbp + 76], 48

 printLongDoubleExpo$24:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 52], printLongDoubleExpo$25
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$25:
	; post call

 printLongDoubleExpo$26:
	; goto 80
	jmp printLongDoubleExpo$80

 printLongDoubleExpo$27:
	; push float value
	fld qword [rbp + 24]

 printLongDoubleExpo$28:
	; push float float8$0.0#
	fldz

 printLongDoubleExpo$29:
	; if value >= float8$0.0# goto 37
	fcompp
	fstsw ax
	sahf
	jbe printLongDoubleExpo$37

 printLongDoubleExpo$30:
	; call header integral zero 0 stack zero 0

 printLongDoubleExpo$31:
	; parameter int1$45#, offset 76
	mov byte [rbp + 76], 45

 printLongDoubleExpo$32:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 52], printLongDoubleExpo$33
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$33:
	; post call

 printLongDoubleExpo$34:
	; push float value
	fld qword [rbp + 24]

 printLongDoubleExpo$35:
	; £temporary1685 = -value
	fchs

 printLongDoubleExpo$36:
	; pop float value
	fstp qword [rbp + 24]

 printLongDoubleExpo$37:
	; call header integral zero 0 stack zero 0

 printLongDoubleExpo$38:
	; push float value
	fld qword [rbp + 24]

 printLongDoubleExpo$39:
	; parameter value, offset 76
	fstp qword [rbp + 76]

 printLongDoubleExpo$40:
	; call function noellipse-noellipse log10
	mov qword [rbp + 52], printLongDoubleExpo$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp log10

 printLongDoubleExpo$41:
	; post call

 printLongDoubleExpo$42:
	; £temporary1686 = return_value

 printLongDoubleExpo$43:
	; £temporary1687 = float_to_int £temporary1686 (Double -> Signed_Int)
	fistp word [container4bytes#]
	mov eax, [container4bytes#]

 printLongDoubleExpo$44:
	; expo = £temporary1687
	mov [rbp + 52], eax

 printLongDoubleExpo$45:
	; push float value
	fld qword [rbp + 24]

 printLongDoubleExpo$46:
	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 56]

 printLongDoubleExpo$47:
	; push float float8$10.0#
	fld qword [float8$10.0#]

 printLongDoubleExpo$48:
	; parameter float8$10.0#, offset 80
	fstp qword [rbp + 88]

 printLongDoubleExpo$49:
	; £temporary1688 = int_to_float expo (Signed_Int -> Double)
	fild word [rbp + 52]

 printLongDoubleExpo$50:
	; parameter £temporary1688, offset 88
	fstp qword [rbp + 96]

 printLongDoubleExpo$51:
	; call function noellipse-noellipse pow
	mov qword [rbp + 64], printLongDoubleExpo$52
	mov [rbp + 72], rbp
	add rbp, 64
	jmp pow

 printLongDoubleExpo$52:
	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 64]

 printLongDoubleExpo$53:
	; £temporary1689 = return_value

 printLongDoubleExpo$54:
	; £temporary1690 = value / £temporary1689
	fdiv

 printLongDoubleExpo$55:
	; pop float value
	fstp qword [rbp + 24]

 printLongDoubleExpo$56:
	; call header integral zero 0 stack zero 0

 printLongDoubleExpo$57:
	; push float value
	fld qword [rbp + 24]

 printLongDoubleExpo$58:
	; parameter value, offset 80
	fstp qword [rbp + 80]

 printLongDoubleExpo$59:
	; parameter plus, offset 88
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

 printLongDoubleExpo$60:
	; parameter space, offset 92
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 printLongDoubleExpo$61:
	; parameter grid, offset 96
	mov eax, [rbp + 40]
	mov [rbp + 96], eax

 printLongDoubleExpo$62:
	; parameter precision, offset 100
	mov eax, [rbp + 44]
	mov [rbp + 100], eax

 printLongDoubleExpo$63:
	; call function noellipse-noellipse printLongDoublePlain
	mov qword [rbp + 56], printLongDoubleExpo$64
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongDoublePlain

 printLongDoubleExpo$64:
	; post call

 printLongDoubleExpo$65:
	; call header integral zero 0 stack zero 0

 printLongDoubleExpo$66:
	; if capital == int4$0# goto 69
	cmp dword [rbp + 48], 0
	je printLongDoubleExpo$69

 printLongDoubleExpo$67:
	; £temporary1693 = int1$69#
	mov al, 69

 printLongDoubleExpo$68:
	; goto 70
	jmp printLongDoubleExpo$70

 printLongDoubleExpo$69:
	; £temporary1693 = int1$101#
	mov al, 101

 printLongDoubleExpo$70:
	; parameter £temporary1693, offset 80
	mov [rbp + 80], al

 printLongDoubleExpo$71:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printLongDoubleExpo$72
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printLongDoubleExpo$72:
	; post call

 printLongDoubleExpo$73:
	; call header integral zero 0 stack zero 0

 printLongDoubleExpo$74:
	; £temporary1695 = int_to_int expo (Signed_Int -> Signed_Long_Int)
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printLongDoubleExpo$75
	neg eax
	neg rax

 printLongDoubleExpo$75:
	; parameter £temporary1695, offset 80
	mov [rbp + 80], rax

 printLongDoubleExpo$76:
	; parameter int4$1#, offset 88
	mov dword [rbp + 88], 1

 printLongDoubleExpo$77:
	; parameter int4$0#, offset 92
	mov dword [rbp + 92], 0

 printLongDoubleExpo$78:
	; call function noellipse-noellipse printLongInt
	mov qword [rbp + 56], printLongDoubleExpo$79
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongInt

 printLongDoubleExpo$79:
	; post call

 printLongDoubleExpo$80:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongDoubleExpo$81:
	; function end printLongDoubleExpo

 checkWidthAndPrecision:
	; if widthPtr == int8$0# goto 9
	cmp qword [rbp + 32], 0
	je checkWidthAndPrecision$9

 checkWidthAndPrecision$1:
	; £field1703 -> widthPtr = *widthPtr
	mov rsi, [rbp + 32]

 checkWidthAndPrecision$2:
	; if £field1703 -> widthPtr != int4$minus1# goto 9
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$9

 checkWidthAndPrecision$3:
	; £field1706 -> widthPtr = *widthPtr
	mov rsi, [rbp + 32]

 checkWidthAndPrecision$4:
	; arg_list = arg_list + int8$4#
	add qword [rbp + 24], 4

 checkWidthAndPrecision$5:
	; £temporary1709 = arg_list - int8$4#
	mov rdi, [rbp + 24]
	sub rdi, 4

 checkWidthAndPrecision$6:
	; £temporary1711 = int_to_int £temporary1709 (Pointer -> Pointer)

 checkWidthAndPrecision$7:
	; £field1712 -> £temporary1711 = *£temporary1711

 checkWidthAndPrecision$8:
	; £field1706 -> widthPtr = £field1712 -> £temporary1711
	mov eax, [rdi]
	mov [rsi], eax

 checkWidthAndPrecision$9:
	; if precisionPtr == int8$0# goto 18
	cmp qword [rbp + 40], 0
	je checkWidthAndPrecision$18

 checkWidthAndPrecision$10:
	; £field1714 -> precisionPtr = *precisionPtr
	mov rsi, [rbp + 40]

 checkWidthAndPrecision$11:
	; if £field1714 -> precisionPtr != int4$minus1# goto 18
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$18

 checkWidthAndPrecision$12:
	; £field1717 -> precisionPtr = *precisionPtr
	mov rsi, [rbp + 40]

 checkWidthAndPrecision$13:
	; arg_list = arg_list + int8$4#
	add qword [rbp + 24], 4

 checkWidthAndPrecision$14:
	; £temporary1720 = arg_list - int8$4#
	mov rdi, [rbp + 24]
	sub rdi, 4

 checkWidthAndPrecision$15:
	; £temporary1722 = int_to_int £temporary1720 (Pointer -> Pointer)

 checkWidthAndPrecision$16:
	; £field1723 -> £temporary1722 = *£temporary1722

 checkWidthAndPrecision$17:
	; £field1717 -> precisionPtr = £field1723 -> £temporary1722
	mov eax, [rdi]
	mov [rsi], eax

 checkWidthAndPrecision$18:
	; return arg_list
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 checkWidthAndPrecision$19:
	; function end checkWidthAndPrecision

 testY:
	; empty

 testY$1:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 testY$2:
	; function end testY

 testX:
	; empty

 testX$1:
	; if j != int4$1# goto 4
	cmp dword [rbp + 28], 1
	jne testX$4

 testX$2:
	; i = int4$1#
	mov dword [rbp + 24], 1

 testX$3:
	; goto 5
	jmp testX$5

 testX$4:
	; i = int4$2#
	mov dword [rbp + 24], 2

 testX$5:
	; j = i
	mov eax, [rbp + 24]
	mov [rbp + 28], eax

 testX$6:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 testX$7:
	; function end testX

 printArgument:
	; £field1725 -> format = *format
	mov rsi, [rbp + 24]

 printArgument$1:
	; c = £field1725 -> format
	mov al, [rsi]
	mov [rbp + 88], al

 printArgument$2:
	; case c == int1$100# goto 21
	mov al, [rbp + 88]
	cmp al, 100
	je printArgument$21

 printArgument$3:
	; case c == int1$105# goto 21
	cmp al, 105
	je printArgument$21

 printArgument$4:
	; case c == int1$99# goto 73
	cmp al, 99
	je printArgument$73

 printArgument$5:
	; case c == int1$115# goto 93
	cmp al, 115
	je printArgument$93

 printArgument$6:
	; case c == int1$88# goto 113
	cmp al, 88
	je printArgument$113

 printArgument$7:
	; case c == int1$120# goto 113
	cmp al, 120
	je printArgument$113

 printArgument$8:
	; case c == int1$98# goto 113
	cmp al, 98
	je printArgument$113

 printArgument$9:
	; case c == int1$111# goto 113
	cmp al, 111
	je printArgument$113

 printArgument$10:
	; case c == int1$117# goto 113
	cmp al, 117
	je printArgument$113

 printArgument$11:
	; case c == int1$71# goto 173
	cmp al, 71
	je printArgument$173

 printArgument$12:
	; case c == int1$103# goto 173
	cmp al, 103
	je printArgument$173

 printArgument$13:
	; case c == int1$69# goto 173
	cmp al, 69
	je printArgument$173

 printArgument$14:
	; case c == int1$101# goto 173
	cmp al, 101
	je printArgument$173

 printArgument$15:
	; case c == int1$102# goto 173
	cmp al, 102
	je printArgument$173

 printArgument$16:
	; case c == int1$112# goto 299
	cmp al, 112
	je printArgument$299

 printArgument$17:
	; case c == int1$110# goto 324
	cmp al, 110
	je printArgument$324

 printArgument$18:
	; case c == int1$37# goto 346
	cmp al, 37
	je printArgument$346

 printArgument$19:
	; case end c

 printArgument$20:
	; goto 359
	jmp printArgument$359

 printArgument$21:
	; if shortInt == int4$0# goto 30
	cmp dword [rbp + 64], 0
	je printArgument$30

 printArgument$22:
	; arg_list = arg_list + int8$4#
	add qword [rbp + 32], 4

 printArgument$23:
	; £temporary1728 = arg_list - int8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$24:
	; £temporary1730 = int_to_int £temporary1728 (Pointer -> Pointer)

 printArgument$25:
	; £field1731 -> £temporary1730 = *£temporary1730

 printArgument$26:
	; £temporary1732 = int_to_int £field1731 -> £temporary1730 (Signed_Int -> Signed_Short_Int)
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$27
	neg eax
	neg ax

 printArgument$27:
	; £temporary1733 = int_to_int £temporary1732 (Signed_Short_Int -> Signed_Long_Int)
	mov rbx, 65535
	and rax, rbx
	cmp ax, 0
	jge printArgument$28
	neg ax
	neg rax

 printArgument$28:
	; longValue = £temporary1733
	mov [rbp + 114], rax

 printArgument$29:
	; goto 43
	jmp printArgument$43

 printArgument$30:
	; if longInt == int4$0# goto 37
	cmp dword [rbp + 68], 0
	je printArgument$37

 printArgument$31:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 printArgument$32:
	; £temporary1736 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$33:
	; £temporary1738 = int_to_int £temporary1736 (Pointer -> Pointer)

 printArgument$34:
	; £field1739 -> £temporary1738 = *£temporary1738

 printArgument$35:
	; longValue = £field1739 -> £temporary1738
	mov rax, [rsi]
	mov [rbp + 114], rax

 printArgument$36:
	; goto 43
	jmp printArgument$43

 printArgument$37:
	; arg_list = arg_list + int8$4#
	add qword [rbp + 32], 4

 printArgument$38:
	; £temporary1742 = arg_list - int8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$39:
	; £temporary1744 = int_to_int £temporary1742 (Pointer -> Pointer)

 printArgument$40:
	; £field1745 -> £temporary1744 = *£temporary1744

 printArgument$41:
	; £temporary1746 = int_to_int £field1745 -> £temporary1744 (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printArgument$42
	neg eax
	neg rax

 printArgument$42:
	; longValue = £temporary1746
	mov [rbp + 114], rax

 printArgument$43:
	; if negativePtr == int8$0# goto 50
	cmp qword [rbp + 80], 0
	je printArgument$50

 printArgument$44:
	; £field1750 -> negativePtr = *negativePtr
	mov rsi, [rbp + 80]

 printArgument$45:
	; if longValue >= int8$0# goto 48
	cmp qword [rbp + 114], 0
	jge printArgument$48

 printArgument$46:
	; £temporary1752 = int4$1#
	mov eax, 1

 printArgument$47:
	; goto 49
	jmp printArgument$49

 printArgument$48:
	; £temporary1752 = int4$0#
	mov eax, 0

 printArgument$49:
	; £field1750 -> negativePtr = £temporary1752
	mov [rsi], eax

 printArgument$50:
	; if sign != int4$0# goto 57
	cmp dword [rbp + 76], 0
	jne printArgument$57

 printArgument$51:
	; call header integral zero 0 stack zero 0

 printArgument$52:
	; parameter longValue, offset 146
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$53:
	; call function noellipse-noellipse labs
	mov qword [rbp + 122], printArgument$54
	mov [rbp + 130], rbp
	add rbp, 122
	jmp labs

 printArgument$54:
	; post call

 printArgument$55:
	; £temporary1755 = return_value

 printArgument$56:
	; longValue = £temporary1755
	mov [rbp + 114], rbx

 printArgument$57:
	; call header integral zero 0 stack zero 0

 printArgument$58:
	; parameter arg_list, offset 146
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

 printArgument$59:
	; parameter widthPtr, offset 154
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

 printArgument$60:
	; £temporary1756 = &precision
	mov rsi, rbp
	add rsi, 60

 printArgument$61:
	; parameter £temporary1756, offset 162
	mov [rbp + 162], rsi

 printArgument$62:
	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 122], printArgument$63
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$63:
	; post call

 printArgument$64:
	; £temporary1757 = return_value

 printArgument$65:
	; arg_list = £temporary1757
	mov [rbp + 32], rbx

 printArgument$66:
	; call header integral zero 0 stack zero 0

 printArgument$67:
	; parameter longValue, offset 146
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$68:
	; parameter plus, offset 154
	mov eax, [rbp + 40]
	mov [rbp + 154], eax

 printArgument$69:
	; parameter space, offset 158
	mov eax, [rbp + 44]
	mov [rbp + 158], eax

 printArgument$70:
	; call function noellipse-noellipse printLongInt
	mov qword [rbp + 122], printArgument$71
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printLongInt

 printArgument$71:
	; post call

 printArgument$72:
	; goto 359
	jmp printArgument$359

 printArgument$73:
	; arg_list = arg_list + int8$4#
	add qword [rbp + 32], 4

 printArgument$74:
	; £temporary1761 = arg_list - int8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$75:
	; £temporary1763 = int_to_int £temporary1761 (Pointer -> Pointer)

 printArgument$76:
	; £field1764 -> £temporary1763 = *£temporary1763

 printArgument$77:
	; £temporary1765 = int_to_int £field1764 -> £temporary1763 (Signed_Int -> Signed_Char)
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$78
	neg eax
	neg al

 printArgument$78:
	; charValue = £temporary1765
	mov [rbp + 89], al

 printArgument$79:
	; call header integral zero 0 stack zero 0

 printArgument$80:
	; parameter arg_list, offset 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$81:
	; parameter widthPtr, offset 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$82:
	; £temporary1766 = &precision
	mov rsi, rbp
	add rsi, 60

 printArgument$83:
	; parameter £temporary1766, offset 154
	mov [rbp + 154], rsi

 printArgument$84:
	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 114], printArgument$85
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$85:
	; post call

 printArgument$86:
	; £temporary1767 = return_value

 printArgument$87:
	; arg_list = £temporary1767
	mov [rbp + 32], rbx

 printArgument$88:
	; call header integral zero 0 stack zero 0

 printArgument$89:
	; parameter charValue, offset 138
	mov al, [rbp + 89]
	mov [rbp + 138], al

 printArgument$90:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 114], printArgument$91
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

 printArgument$91:
	; post call

 printArgument$92:
	; goto 359
	jmp printArgument$359

 printArgument$93:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 printArgument$94:
	; £temporary1771 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$95:
	; £temporary1773 = int_to_int £temporary1771 (Pointer -> Pointer)

 printArgument$96:
	; £field1774 -> £temporary1773 = *£temporary1773

 printArgument$97:
	; stringValue = £field1774 -> £temporary1773
	mov rax, [rsi]
	mov [rbp + 114], rax

 printArgument$98:
	; call header integral zero 0 stack zero 0

 printArgument$99:
	; parameter arg_list, offset 146
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

 printArgument$100:
	; parameter widthPtr, offset 154
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

 printArgument$101:
	; £temporary1775 = &precision
	mov rsi, rbp
	add rsi, 60

 printArgument$102:
	; parameter £temporary1775, offset 162
	mov [rbp + 162], rsi

 printArgument$103:
	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 122], printArgument$104
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$104:
	; post call

 printArgument$105:
	; £temporary1776 = return_value

 printArgument$106:
	; arg_list = £temporary1776
	mov [rbp + 32], rbx

 printArgument$107:
	; call header integral zero 0 stack zero 0

 printArgument$108:
	; parameter stringValue, offset 146
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$109:
	; parameter precision, offset 154
	mov eax, [rbp + 60]
	mov [rbp + 154], eax

 printArgument$110:
	; call function noellipse-noellipse printString
	mov qword [rbp + 122], printArgument$111
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printString

 printArgument$111:
	; post call

 printArgument$112:
	; goto 359
	jmp printArgument$359

 printArgument$113:
	; if c != int1$117# goto 116
	cmp byte [rbp + 88], 117
	jne printArgument$116

 printArgument$114:
	; £temporary1783 = int8$10#
	mov rax, 10

 printArgument$115:
	; goto 125
	jmp printArgument$125

 printArgument$116:
	; if c != int1$111# goto 119
	cmp byte [rbp + 88], 111
	jne printArgument$119

 printArgument$117:
	; £temporary1782 = int8$8#
	mov rax, 8

 printArgument$118:
	; goto 124
	jmp printArgument$124

 printArgument$119:
	; if c != int1$98# goto 122
	cmp byte [rbp + 88], 98
	jne printArgument$122

 printArgument$120:
	; £temporary1781 = int8$2#
	mov rax, 2

 printArgument$121:
	; goto 123
	jmp printArgument$123

 printArgument$122:
	; £temporary1781 = int8$16#
	mov rax, 16

 printArgument$123:
	; £temporary1782 = £temporary1781

 printArgument$124:
	; £temporary1783 = £temporary1782

 printArgument$125:
	; base = £temporary1783
	mov [rbp + 114], rax

 printArgument$126:
	; if shortInt == int4$0# goto 135
	cmp dword [rbp + 64], 0
	je printArgument$135

 printArgument$127:
	; arg_list = arg_list + int8$4#
	add qword [rbp + 32], 4

 printArgument$128:
	; £temporary1786 = arg_list - int8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$129:
	; £temporary1788 = int_to_int £temporary1786 (Pointer -> Pointer)

 printArgument$130:
	; £field1789 -> £temporary1788 = *£temporary1788

 printArgument$131:
	; £temporary1790 = int_to_int £field1789 -> £temporary1788 (Unsigned_Int -> Unsigned_Short_Int)
	mov eax, [rsi]

 printArgument$132:
	; £temporary1791 = int_to_int £temporary1790 (Unsigned_Short_Int -> Unsigned_Long_Int)
	mov rbx, 65535
	and rax, rbx

 printArgument$133:
	; value = £temporary1791
	mov [rbp + 122], rax

 printArgument$134:
	; goto 148
	jmp printArgument$148

 printArgument$135:
	; if longInt == int4$0# goto 142
	cmp dword [rbp + 68], 0
	je printArgument$142

 printArgument$136:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 printArgument$137:
	; £temporary1794 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$138:
	; £temporary1796 = int_to_int £temporary1794 (Pointer -> Pointer)

 printArgument$139:
	; £field1797 -> £temporary1796 = *£temporary1796

 printArgument$140:
	; value = £field1797 -> £temporary1796
	mov rax, [rsi]
	mov [rbp + 122], rax

 printArgument$141:
	; goto 148
	jmp printArgument$148

 printArgument$142:
	; arg_list = arg_list + int8$4#
	add qword [rbp + 32], 4

 printArgument$143:
	; £temporary1800 = arg_list - int8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$144:
	; £temporary1802 = int_to_int £temporary1800 (Pointer -> Pointer)

 printArgument$145:
	; £field1803 -> £temporary1802 = *£temporary1802

 printArgument$146:
	; £temporary1804 = int_to_int £field1803 -> £temporary1802 (Unsigned_Int -> Unsigned_Long_Int)
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx

 printArgument$147:
	; value = £temporary1804
	mov [rbp + 122], rax

 printArgument$148:
	; call header integral zero 0 stack zero 0

 printArgument$149:
	; parameter arg_list, offset 154
	mov rax, [rbp + 32]
	mov [rbp + 154], rax

 printArgument$150:
	; parameter widthPtr, offset 162
	mov rax, [rbp + 52]
	mov [rbp + 162], rax

 printArgument$151:
	; £temporary1807 = &precision
	mov rsi, rbp
	add rsi, 60

 printArgument$152:
	; parameter £temporary1807, offset 170
	mov [rbp + 170], rsi

 printArgument$153:
	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 130], printArgument$154
	mov [rbp + 138], rbp
	add rbp, 130
	jmp checkWidthAndPrecision

 printArgument$154:
	; post call

 printArgument$155:
	; £temporary1808 = return_value

 printArgument$156:
	; arg_list = £temporary1808
	mov [rbp + 32], rbx

 printArgument$157:
	; call header integral zero 0 stack zero 0

 printArgument$158:
	; parameter value, offset 154
	mov rax, [rbp + 122]
	mov [rbp + 154], rax

 printArgument$159:
	; parameter plus, offset 162
	mov eax, [rbp + 40]
	mov [rbp + 162], eax

 printArgument$160:
	; parameter space, offset 166
	mov eax, [rbp + 44]
	mov [rbp + 166], eax

 printArgument$161:
	; parameter grid, offset 170
	mov eax, [rbp + 48]
	mov [rbp + 170], eax

 printArgument$162:
	; parameter base, offset 174
	mov rax, [rbp + 114]
	mov [rbp + 174], rax

 printArgument$163:
	; call header integral zero 0 stack zero 0

 printArgument$164:
	; £temporary1809 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$165
	neg al
	neg eax

 printArgument$165:
	; parameter £temporary1809, offset 206
	mov [rbp + 206], eax

 printArgument$166:
	; call function noellipse-noellipse isupper
	mov qword [rbp + 182], printArgument$167
	mov [rbp + 190], rbp
	add rbp, 182
	jmp isupper

 printArgument$167:
	; post call

 printArgument$168:
	; £temporary1810 = return_value

 printArgument$169:
	; parameter £temporary1810, offset 182
	mov [rbp + 182], ebx

 printArgument$170:
	; call function noellipse-noellipse printUnsignedLong
	mov qword [rbp + 130], printArgument$171
	mov [rbp + 138], rbp
	add rbp, 130
	jmp printUnsignedLong

 printArgument$171:
	; post call

 printArgument$172:
	; goto 359
	jmp printArgument$359

 printArgument$173:
	; if longDouble == int4$0# goto 190
	cmp dword [rbp + 72], 0
	je printArgument$190

 printArgument$174:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 printArgument$175:
	; £temporary1814 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$176:
	; £temporary1816 = int_to_int £temporary1814 (Pointer -> Pointer)

 printArgument$177:
	; £field1817 -> £temporary1816 = *£temporary1816

 printArgument$178:
	; push float £field1817 -> £temporary1816
	fld qword [rsi]

 printArgument$179:
	; pop float longDoubleValue
	fstp qword [rbp + 98]

 printArgument$180:
	; call header integral zero 0 stack zero 0

 printArgument$181:
	; push float longDoubleValue
	fld qword [rbp + 98]

 printArgument$182:
	; parameter longDoubleValue, offset 138
	fstp qword [rbp + 138]

 printArgument$183:
	; parameter int4$0#, offset 146
	mov dword [rbp + 146], 0

 printArgument$184:
	; parameter int4$0#, offset 150
	mov dword [rbp + 150], 0

 printArgument$185:
	; parameter int4$0#, offset 154
	mov dword [rbp + 154], 0

 printArgument$186:
	; parameter int4$3#, offset 158
	mov dword [rbp + 158], 3

 printArgument$187:
	; call function noellipse-noellipse printLongDoublePlain
	mov qword [rbp + 114], printArgument$188
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$188:
	; post call

 printArgument$189:
	; goto 196
	jmp printArgument$196

 printArgument$190:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 printArgument$191:
	; £temporary1821 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$192:
	; £temporary1823 = int_to_int £temporary1821 (Pointer -> Pointer)

 printArgument$193:
	; £field1824 -> £temporary1823 = *£temporary1823

 printArgument$194:
	; push float £field1824 -> £temporary1823
	fld qword [rsi]

 printArgument$195:
	; pop float longDoubleValue
	fstp qword [rbp + 98]

 printArgument$196:
	; if negativePtr == int8$0# goto 205
	cmp qword [rbp + 80], 0
	je printArgument$205

 printArgument$197:
	; £field1828 -> negativePtr = *negativePtr
	mov rsi, [rbp + 80]

 printArgument$198:
	; push float longDoubleValue
	fld qword [rbp + 98]

 printArgument$199:
	; push float float8$0#
	fldz

 printArgument$200:
	; if longDoubleValue >= float8$0# goto 203
	fcompp
	fstsw ax
	sahf
	jbe printArgument$203

 printArgument$201:
	; £temporary1830 = int4$1#
	mov eax, 1

 printArgument$202:
	; goto 204
	jmp printArgument$204

 printArgument$203:
	; £temporary1830 = int4$0#
	mov eax, 0

 printArgument$204:
	; £field1828 -> negativePtr = £temporary1830
	mov [rsi], eax

 printArgument$205:
	; if sign != int4$0# goto 213
	cmp dword [rbp + 76], 0
	jne printArgument$213

 printArgument$206:
	; call header integral zero 0 stack zero 0

 printArgument$207:
	; push float longDoubleValue
	fld qword [rbp + 98]

 printArgument$208:
	; parameter longDoubleValue, offset 138
	fstp qword [rbp + 138]

 printArgument$209:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 114], printArgument$210
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

 printArgument$210:
	; post call

 printArgument$211:
	; £temporary1833 = return_value

 printArgument$212:
	; pop float longDoubleValue
	fstp qword [rbp + 98]

 printArgument$213:
	; call header integral zero 0 stack zero 0

 printArgument$214:
	; parameter arg_list, offset 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$215:
	; parameter widthPtr, offset 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$216:
	; £temporary1834 = &precision
	mov rsi, rbp
	add rsi, 60

 printArgument$217:
	; parameter £temporary1834, offset 154
	mov [rbp + 154], rsi

 printArgument$218:
	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 114], printArgument$219
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$219:
	; post call

 printArgument$220:
	; £temporary1835 = return_value

 printArgument$221:
	; arg_list = £temporary1835
	mov [rbp + 32], rbx

 printArgument$222:
	; if c != int1$102# goto 233
	cmp byte [rbp + 88], 102
	jne printArgument$233

 printArgument$223:
	; call header integral zero 0 stack zero 0

 printArgument$224:
	; push float longDoubleValue
	fld qword [rbp + 98]

 printArgument$225:
	; parameter longDoubleValue, offset 138
	fstp qword [rbp + 138]

 printArgument$226:
	; parameter plus, offset 146
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

 printArgument$227:
	; parameter space, offset 150
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

 printArgument$228:
	; parameter grid, offset 154
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

 printArgument$229:
	; parameter precision, offset 158
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

 printArgument$230:
	; call function noellipse-noellipse printLongDoublePlain
	mov qword [rbp + 114], printArgument$231
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$231:
	; post call

 printArgument$232:
	; goto 359
	jmp printArgument$359

 printArgument$233:
	; call header integral zero 0 stack zero 0

 printArgument$234:
	; £temporary1838 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$235
	neg al
	neg eax

 printArgument$235:
	; parameter £temporary1838, offset 138
	mov [rbp + 138], eax

 printArgument$236:
	; call function noellipse-noellipse tolower
	mov qword [rbp + 114], printArgument$237
	mov [rbp + 122], rbp
	add rbp, 114
	jmp tolower

 printArgument$237:
	; post call

 printArgument$238:
	; £temporary1839 = return_value

 printArgument$239:
	; if £temporary1839 != int4$101# goto 257
	cmp ebx, 101
	jne printArgument$257

 printArgument$240:
	; call header integral zero 0 stack zero 0

 printArgument$241:
	; push float longDoubleValue
	fld qword [rbp + 98]

 printArgument$242:
	; parameter longDoubleValue, offset 138
	fstp qword [rbp + 138]

 printArgument$243:
	; parameter plus, offset 146
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

 printArgument$244:
	; parameter space, offset 150
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

 printArgument$245:
	; parameter grid, offset 154
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

 printArgument$246:
	; parameter precision, offset 158
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

 printArgument$247:
	; call header integral zero 0 stack zero 0

 printArgument$248:
	; £temporary1841 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$249
	neg al
	neg eax

 printArgument$249:
	; parameter £temporary1841, offset 186
	mov [rbp + 186], eax

 printArgument$250:
	; call function noellipse-noellipse isupper
	mov qword [rbp + 162], printArgument$251
	mov [rbp + 170], rbp
	add rbp, 162
	jmp isupper

 printArgument$251:
	; post call

 printArgument$252:
	; £temporary1842 = return_value

 printArgument$253:
	; parameter £temporary1842, offset 162
	mov [rbp + 162], ebx

 printArgument$254:
	; call function noellipse-noellipse printLongDoubleExpo
	mov qword [rbp + 114], printArgument$255
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoubleExpo

 printArgument$255:
	; post call

 printArgument$256:
	; goto 359
	jmp printArgument$359

 printArgument$257:
	; call header integral zero 0 stack zero 0

 printArgument$258:
	; call header integral zero 0 stack zero 0

 printArgument$259:
	; push float longDoubleValue
	fld qword [rbp + 98]

 printArgument$260:
	; parameter longDoubleValue, offset 138
	fstp qword [rbp + 138]

 printArgument$261:
	; call function noellipse-noellipse fabs
	mov qword [rbp + 114], printArgument$262
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

 printArgument$262:
	; post call

 printArgument$263:
	; £temporary1844 = return_value

 printArgument$264:
	; parameter £temporary1844, offset 138
	fstp qword [rbp + 138]

 printArgument$265:
	; call function noellipse-noellipse log10
	mov qword [rbp + 114], printArgument$266
	mov [rbp + 122], rbp
	add rbp, 114
	jmp log10

 printArgument$266:
	; post call

 printArgument$267:
	; £temporary1845 = return_value

 printArgument$268:
	; £temporary1846 = float_to_int £temporary1845 (Double -> Signed_Int)
	fistp word [container4bytes#]
	mov eax, [container4bytes#]

 printArgument$269:
	; expo = £temporary1846
	mov [rbp + 114], eax

 printArgument$270:
	; if expo < int4$minus3# goto 282
	cmp dword [rbp + 114], -3
	jl printArgument$282

 printArgument$271:
	; if expo > int4$2# goto 282
	cmp dword [rbp + 114], 2
	jg printArgument$282

 printArgument$272:
	; call header integral zero 0 stack zero 0

 printArgument$273:
	; push float longDoubleValue
	fld qword [rbp + 98]

 printArgument$274:
	; parameter longDoubleValue, offset 142
	fstp qword [rbp + 142]

 printArgument$275:
	; parameter plus, offset 150
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

 printArgument$276:
	; parameter space, offset 154
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

 printArgument$277:
	; parameter grid, offset 158
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

 printArgument$278:
	; parameter precision, offset 162
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

 printArgument$279:
	; call function noellipse-noellipse printLongDoublePlain
	mov qword [rbp + 118], printArgument$280
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoublePlain

 printArgument$280:
	; post call

 printArgument$281:
	; goto 359
	jmp printArgument$359

 printArgument$282:
	; call header integral zero 0 stack zero 0

 printArgument$283:
	; push float longDoubleValue
	fld qword [rbp + 98]

 printArgument$284:
	; parameter longDoubleValue, offset 142
	fstp qword [rbp + 142]

 printArgument$285:
	; parameter plus, offset 150
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

 printArgument$286:
	; parameter space, offset 154
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

 printArgument$287:
	; parameter grid, offset 158
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

 printArgument$288:
	; parameter precision, offset 162
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

 printArgument$289:
	; call header integral zero 0 stack zero 0

 printArgument$290:
	; £temporary1851 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$291
	neg al
	neg eax

 printArgument$291:
	; parameter £temporary1851, offset 190
	mov [rbp + 190], eax

 printArgument$292:
	; call function noellipse-noellipse isupper
	mov qword [rbp + 166], printArgument$293
	mov [rbp + 174], rbp
	add rbp, 166
	jmp isupper

 printArgument$293:
	; post call

 printArgument$294:
	; £temporary1852 = return_value

 printArgument$295:
	; parameter £temporary1852, offset 166
	mov [rbp + 166], ebx

 printArgument$296:
	; call function noellipse-noellipse printLongDoubleExpo
	mov qword [rbp + 118], printArgument$297
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoubleExpo

 printArgument$297:
	; post call

 printArgument$298:
	; goto 359
	jmp printArgument$359

 printArgument$299:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 printArgument$300:
	; £temporary1856 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$301:
	; £temporary1858 = int_to_int £temporary1856 (Pointer -> Pointer)

 printArgument$302:
	; £field1859 -> £temporary1858 = *£temporary1858

 printArgument$303:
	; ptrValue = £field1859 -> £temporary1858
	mov rax, [rsi]
	mov [rbp + 106], rax

 printArgument$304:
	; call header integral zero 0 stack zero 0

 printArgument$305:
	; parameter arg_list, offset 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$306:
	; parameter widthPtr, offset 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$307:
	; £temporary1860 = &precision
	mov rsi, rbp
	add rsi, 60

 printArgument$308:
	; parameter £temporary1860, offset 154
	mov [rbp + 154], rsi

 printArgument$309:
	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 114], printArgument$310
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$310:
	; post call

 printArgument$311:
	; £temporary1861 = return_value

 printArgument$312:
	; arg_list = £temporary1861
	mov [rbp + 32], rbx

 printArgument$313:
	; call header integral zero 0 stack zero 0

 printArgument$314:
	; £temporary1862 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
	mov rax, [rbp + 106]

 printArgument$315:
	; parameter £temporary1862, offset 138
	mov [rbp + 138], rax

 printArgument$316:
	; parameter int4$0#, offset 146
	mov dword [rbp + 146], 0

 printArgument$317:
	; parameter int4$0#, offset 150
	mov dword [rbp + 150], 0

 printArgument$318:
	; parameter int4$0#, offset 154
	mov dword [rbp + 154], 0

 printArgument$319:
	; parameter int8$10#, offset 158
	mov qword [rbp + 158], 10

 printArgument$320:
	; parameter int4$0#, offset 166
	mov dword [rbp + 166], 0

 printArgument$321:
	; call function noellipse-noellipse printUnsignedLong
	mov qword [rbp + 114], printArgument$322
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printUnsignedLong

 printArgument$322:
	; post call

 printArgument$323:
	; goto 359
	jmp printArgument$359

 printArgument$324:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 printArgument$325:
	; £temporary1866 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$326:
	; £temporary1868 = int_to_int £temporary1866 (Pointer -> Pointer)

 printArgument$327:
	; £field1869 -> £temporary1868 = *£temporary1868

 printArgument$328:
	; ptrValue = £field1869 -> £temporary1868
	mov rax, [rsi]
	mov [rbp + 106], rax

 printArgument$329:
	; arg_list = arg_list + int8$8#
	add qword [rbp + 32], 8

 printArgument$330:
	; £temporary1872 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$331:
	; £temporary1874 = int_to_int £temporary1872 (Pointer -> Pointer)

 printArgument$332:
	; £field1875 -> £temporary1874 = *£temporary1874

 printArgument$333:
	; intPtr = £field1875 -> £temporary1874
	mov rax, [rsi]
	mov [rbp + 90], rax

 printArgument$334:
	; call header integral zero 0 stack zero 0

 printArgument$335:
	; parameter arg_list, offset 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$336:
	; parameter widthPtr, offset 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$337:
	; £temporary1876 = &precision
	mov rsi, rbp
	add rsi, 60

 printArgument$338:
	; parameter £temporary1876, offset 154
	mov [rbp + 154], rsi

 printArgument$339:
	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 114], printArgument$340
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$340:
	; post call

 printArgument$341:
	; £temporary1877 = return_value

 printArgument$342:
	; arg_list = £temporary1877
	mov [rbp + 32], rbx

 printArgument$343:
	; £field1878 -> intPtr = *intPtr
	mov rsi, [rbp + 90]

 printArgument$344:
	; £field1878 -> intPtr = g_outChars
	mov eax, [g_outChars]
	mov [rsi], eax

 printArgument$345:
	; goto 359
	jmp printArgument$359

 printArgument$346:
	; call header integral zero 0 stack zero 0

 printArgument$347:
	; parameter arg_list, offset 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$348:
	; parameter widthPtr, offset 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$349:
	; £temporary1879 = &precision
	mov rsi, rbp
	add rsi, 60

 printArgument$350:
	; parameter £temporary1879, offset 154
	mov [rbp + 154], rsi

 printArgument$351:
	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 114], printArgument$352
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$352:
	; post call

 printArgument$353:
	; £temporary1880 = return_value

 printArgument$354:
	; arg_list = £temporary1880
	mov [rbp + 32], rbx

 printArgument$355:
	; call header integral zero 0 stack zero 0

 printArgument$356:
	; parameter int1$37#, offset 138
	mov byte [rbp + 138], 37

 printArgument$357:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 114], printArgument$358
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

 printArgument$358:
	; post call

 printArgument$359:
	; return arg_list
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printArgument$360:
	; function end printArgument

 printFormat:
	; width = int4$0#
	mov dword [rbp + 44], 0

 printFormat$1:
	; precision = int4$0#
	mov dword [rbp + 48], 0

 printFormat$2:
	; percent = int4$0#
	mov dword [rbp + 52], 0

 printFormat$3:
	; plus = int4$0#
	mov dword [rbp + 56], 0

 printFormat$4:
	; minus = int4$0#
	mov dword [rbp + 60], 0

 printFormat$5:
	; space = int4$0#
	mov dword [rbp + 64], 0

 printFormat$6:
	; zero = int4$0#
	mov dword [rbp + 68], 0

 printFormat$7:
	; grid = int4$0#
	mov dword [rbp + 72], 0

 printFormat$8:
	; widthStar = int4$0#
	mov dword [rbp + 76], 0

 printFormat$9:
	; period = int4$0#
	mov dword [rbp + 80], 0

 printFormat$10:
	; precisionStar = int4$0#
	mov dword [rbp + 84], 0

 printFormat$11:
	; shortInt = int4$0#
	mov dword [rbp + 88], 0

 printFormat$12:
	; longInt = int4$0#
	mov dword [rbp + 92], 0

 printFormat$13:
	; longDouble = int4$0#
	mov dword [rbp + 96], 0

 printFormat$14:
	; g_outChars = int4$0#
	mov dword [g_outChars], 0

 printFormat$15:
	; index = int4$0#
	mov dword [rbp + 40], 0

 printFormat$16:
	; £temporary1899 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$17:
	; £temporary1901 = format + £temporary1899
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$18:
	; £field1898 -> £temporary1901 = *£temporary1901

 printFormat$19:
	; if £field1898 -> £temporary1901 == int1$0# goto 290
	cmp byte [rsi], 0
	je printFormat$290

 printFormat$20:
	; £temporary1905 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$21:
	; £temporary1907 = format + £temporary1905
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$22:
	; £field1904 -> £temporary1907 = *£temporary1907

 printFormat$23:
	; c = £field1904 -> £temporary1907
	mov al, [rsi]
	mov [rbp + 100], al

 printFormat$24:
	; if percent == int4$0# goto 268
	cmp dword [rbp + 52], 0
	je printFormat$268

 printFormat$25:
	; case c == int1$43# goto 54
	mov al, [rbp + 100]
	cmp al, 43
	je printFormat$54

 printFormat$26:
	; case c == int1$45# goto 56
	cmp al, 45
	je printFormat$56

 printFormat$27:
	; case c == int1$32# goto 58
	cmp al, 32
	je printFormat$58

 printFormat$28:
	; case c == int1$48# goto 60
	cmp al, 48
	je printFormat$60

 printFormat$29:
	; case c == int1$35# goto 62
	cmp al, 35
	je printFormat$62

 printFormat$30:
	; case c == int1$46# goto 64
	cmp al, 46
	je printFormat$64

 printFormat$31:
	; case c == int1$42# goto 66
	cmp al, 42
	je printFormat$66

 printFormat$32:
	; case c == int1$104# goto 71
	cmp al, 104
	je printFormat$71

 printFormat$33:
	; case c == int1$108# goto 73
	cmp al, 108
	je printFormat$73

 printFormat$34:
	; case c == int1$76# goto 75
	cmp al, 76
	je printFormat$75

 printFormat$35:
	; case c == int1$37# goto 77
	cmp al, 37
	je printFormat$77

 printFormat$36:
	; case c == int1$110# goto 77
	cmp al, 110
	je printFormat$77

 printFormat$37:
	; case c == int1$112# goto 77
	cmp al, 112
	je printFormat$77

 printFormat$38:
	; case c == int1$71# goto 77
	cmp al, 71
	je printFormat$77

 printFormat$39:
	; case c == int1$103# goto 77
	cmp al, 103
	je printFormat$77

 printFormat$40:
	; case c == int1$69# goto 77
	cmp al, 69
	je printFormat$77

 printFormat$41:
	; case c == int1$101# goto 77
	cmp al, 101
	je printFormat$77

 printFormat$42:
	; case c == int1$102# goto 77
	cmp al, 102
	je printFormat$77

 printFormat$43:
	; case c == int1$115# goto 77
	cmp al, 115
	je printFormat$77

 printFormat$44:
	; case c == int1$99# goto 77
	cmp al, 99
	je printFormat$77

 printFormat$45:
	; case c == int1$88# goto 77
	cmp al, 88
	je printFormat$77

 printFormat$46:
	; case c == int1$120# goto 77
	cmp al, 120
	je printFormat$77

 printFormat$47:
	; case c == int1$111# goto 77
	cmp al, 111
	je printFormat$77

 printFormat$48:
	; case c == int1$98# goto 77
	cmp al, 98
	je printFormat$77

 printFormat$49:
	; case c == int1$117# goto 77
	cmp al, 117
	je printFormat$77

 printFormat$50:
	; case c == int1$100# goto 77
	cmp al, 100
	je printFormat$77

 printFormat$51:
	; case c == int1$105# goto 77
	cmp al, 105
	je printFormat$77

 printFormat$52:
	; case end c

 printFormat$53:
	; goto 244
	jmp printFormat$244

 printFormat$54:
	; plus = int4$1#
	mov dword [rbp + 56], 1

 printFormat$55:
	; goto 288
	jmp printFormat$288

 printFormat$56:
	; minus = int4$1#
	mov dword [rbp + 60], 1

 printFormat$57:
	; goto 288
	jmp printFormat$288

 printFormat$58:
	; space = int4$1#
	mov dword [rbp + 64], 1

 printFormat$59:
	; goto 288
	jmp printFormat$288

 printFormat$60:
	; zero = int4$1#
	mov dword [rbp + 68], 1

 printFormat$61:
	; goto 288
	jmp printFormat$288

 printFormat$62:
	; grid = int4$1#
	mov dword [rbp + 72], 1

 printFormat$63:
	; goto 288
	jmp printFormat$288

 printFormat$64:
	; period = int4$1#
	mov dword [rbp + 80], 1

 printFormat$65:
	; goto 288
	jmp printFormat$288

 printFormat$66:
	; if period != int4$0# goto 69
	cmp dword [rbp + 80], 0
	jne printFormat$69

 printFormat$67:
	; width = int4$minus1#
	mov dword [rbp + 44], -1

 printFormat$68:
	; goto 288
	jmp printFormat$288

 printFormat$69:
	; precision = int4$minus1#
	mov dword [rbp + 48], -1

 printFormat$70:
	; goto 288
	jmp printFormat$288

 printFormat$71:
	; shortInt = int4$1#
	mov dword [rbp + 88], 1

 printFormat$72:
	; goto 288
	jmp printFormat$288

 printFormat$73:
	; longInt = int4$1#
	mov dword [rbp + 92], 1

 printFormat$74:
	; goto 288
	jmp printFormat$288

 printFormat$75:
	; longDouble = int4$1#
	mov dword [rbp + 96], 1

 printFormat$76:
	; goto 288
	jmp printFormat$288

 printFormat$77:
	; if minus == int4$0# goto 109
	cmp dword [rbp + 60], 0
	je printFormat$109

 printFormat$78:
	; startChars = g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$79:
	; call header integral zero 0 stack zero 0

 printFormat$80:
	; £temporary1911 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$81:
	; £temporary1913 = format + £temporary1911
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$82:
	; £field1910 -> £temporary1913 = *£temporary1913

 printFormat$83:
	; £temporary1914 = &£field1910 -> £temporary1913

 printFormat$84:
	; parameter £temporary1914, offset 129
	mov [rbp + 129], rsi

 printFormat$85:
	; parameter arg_list, offset 137
	mov rax, [rbp + 32]
	mov [rbp + 137], rax

 printFormat$86:
	; parameter plus, offset 145
	mov eax, [rbp + 56]
	mov [rbp + 145], eax

 printFormat$87:
	; parameter space, offset 149
	mov eax, [rbp + 64]
	mov [rbp + 149], eax

 printFormat$88:
	; parameter grid, offset 153
	mov eax, [rbp + 72]
	mov [rbp + 153], eax

 printFormat$89:
	; £temporary1915 = &width
	mov rsi, rbp
	add rsi, 44

 printFormat$90:
	; parameter £temporary1915, offset 157
	mov [rbp + 157], rsi

 printFormat$91:
	; parameter precision, offset 165
	mov eax, [rbp + 48]
	mov [rbp + 165], eax

 printFormat$92:
	; parameter shortInt, offset 169
	mov eax, [rbp + 88]
	mov [rbp + 169], eax

 printFormat$93:
	; parameter longInt, offset 173
	mov eax, [rbp + 92]
	mov [rbp + 173], eax

 printFormat$94:
	; parameter longDouble, offset 177
	mov eax, [rbp + 96]
	mov [rbp + 177], eax

 printFormat$95:
	; parameter int4$1#, offset 181
	mov dword [rbp + 181], 1

 printFormat$96:
	; parameter int8$0#, offset 185
	mov qword [rbp + 185], 0

 printFormat$97:
	; call function noellipse-noellipse printArgument
	mov qword [rbp + 105], printFormat$98
	mov [rbp + 113], rbp
	add rbp, 105
	jmp printArgument

 printFormat$98:
	; post call

 printFormat$99:
	; £temporary1916 = return_value

 printFormat$100:
	; arg_list = £temporary1916
	mov [rbp + 32], rbx

 printFormat$101:
	; £temporary1918 = g_outChars - startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]

 printFormat$102:
	; field = field + int4$1#
	inc dword [rbp + 105]

 printFormat$103:
	; if £temporary1918 >= width goto 242
	cmp eax, [rbp + 44]
	jge printFormat$242

 printFormat$104:
	; call header integral zero 0 stack zero 0

 printFormat$105:
	; parameter int1$32#, offset 133
	mov byte [rbp + 133], 32

 printFormat$106:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 109], printFormat$107
	mov [rbp + 117], rbp
	add rbp, 109
	jmp printChar

 printFormat$107:
	; post call

 printFormat$108:
	; goto 102
	jmp printFormat$102

 printFormat$109:
	; if zero == int4$0# goto 187
	cmp dword [rbp + 68], 0
	je printFormat$187

 printFormat$110:
	; startChars = g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$111:
	; oldOutStatus = g_outStatus
	mov eax, [g_outStatus]
	mov [rbp + 105], eax

 printFormat$112:
	; negative = int4$0#
	mov dword [rbp + 109], 0

 printFormat$113:
	; g_outStatus = int4$2#
	mov dword [g_outStatus], 2

 printFormat$114:
	; call header integral zero 0 stack zero 0

 printFormat$115:
	; £temporary1922 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$116:
	; £temporary1924 = format + £temporary1922
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$117:
	; £field1921 -> £temporary1924 = *£temporary1924

 printFormat$118:
	; £temporary1925 = &£field1921 -> £temporary1924

 printFormat$119:
	; parameter £temporary1925, offset 137
	mov [rbp + 137], rsi

 printFormat$120:
	; parameter arg_list, offset 145
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

 printFormat$121:
	; parameter int4$0#, offset 153
	mov dword [rbp + 153], 0

 printFormat$122:
	; parameter int4$0#, offset 157
	mov dword [rbp + 157], 0

 printFormat$123:
	; parameter grid, offset 161
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

 printFormat$124:
	; £temporary1926 = &width
	mov rsi, rbp
	add rsi, 44

 printFormat$125:
	; parameter £temporary1926, offset 165
	mov [rbp + 165], rsi

 printFormat$126:
	; parameter precision, offset 173
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

 printFormat$127:
	; parameter shortInt, offset 177
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

 printFormat$128:
	; parameter longInt, offset 181
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

 printFormat$129:
	; parameter longDouble, offset 185
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

 printFormat$130:
	; parameter int4$0#, offset 189
	mov dword [rbp + 189], 0

 printFormat$131:
	; £temporary1927 = &negative
	mov rsi, rbp
	add rsi, 109

 printFormat$132:
	; parameter £temporary1927, offset 193
	mov [rbp + 193], rsi

 printFormat$133:
	; call function noellipse-noellipse printArgument
	mov qword [rbp + 113], printFormat$134
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printArgument

 printFormat$134:
	; post call

 printFormat$135:
	; g_outStatus = oldOutStatus
	mov eax, [rbp + 105]
	mov [g_outStatus], eax

 printFormat$136:
	; field = g_outChars - startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 113], eax

 printFormat$137:
	; g_outChars = startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

 printFormat$138:
	; if negative == int4$0# goto 145
	cmp dword [rbp + 109], 0
	je printFormat$145

 printFormat$139:
	; call header integral zero 0 stack zero 0

 printFormat$140:
	; parameter int1$45#, offset 141
	mov byte [rbp + 141], 45

 printFormat$141:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 117], printFormat$142
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$142:
	; post call

 printFormat$143:
	; field = field + int4$1#
	inc dword [rbp + 113]

 printFormat$144:
	; goto 158
	jmp printFormat$158

 printFormat$145:
	; if plus == int4$0# goto 152
	cmp dword [rbp + 56], 0
	je printFormat$152

 printFormat$146:
	; call header integral zero 0 stack zero 0

 printFormat$147:
	; parameter int1$43#, offset 141
	mov byte [rbp + 141], 43

 printFormat$148:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 117], printFormat$149
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$149:
	; post call

 printFormat$150:
	; field = field + int4$1#
	inc dword [rbp + 113]

 printFormat$151:
	; goto 158
	jmp printFormat$158

 printFormat$152:
	; if space == int4$0# goto 158
	cmp dword [rbp + 64], 0
	je printFormat$158

 printFormat$153:
	; call header integral zero 0 stack zero 0

 printFormat$154:
	; parameter int1$32#, offset 141
	mov byte [rbp + 141], 32

 printFormat$155:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 117], printFormat$156
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$156:
	; post call

 printFormat$157:
	; £temporary1939 = field + int4$1#
	mov eax, [rbp + 113]
	inc eax

 printFormat$158:
	; field = field + int4$1#
	inc dword [rbp + 113]

 printFormat$159:
	; if £temporary1939 >= width goto 165
	cmp eax, [rbp + 44]
	jge printFormat$165

 printFormat$160:
	; call header integral zero 0 stack zero 0

 printFormat$161:
	; parameter int1$48#, offset 141
	mov byte [rbp + 141], 48

 printFormat$162:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 117], printFormat$163
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$163:
	; post call

 printFormat$164:
	; goto 158
	jmp printFormat$158

 printFormat$165:
	; call header integral zero 0 stack zero 0

 printFormat$166:
	; £temporary1943 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$167:
	; £temporary1945 = format + £temporary1943
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$168:
	; £field1942 -> £temporary1945 = *£temporary1945

 printFormat$169:
	; £temporary1946 = &£field1942 -> £temporary1945

 printFormat$170:
	; parameter £temporary1946, offset 141
	mov [rbp + 141], rsi

 printFormat$171:
	; parameter arg_list, offset 149
	mov rax, [rbp + 32]
	mov [rbp + 149], rax

 printFormat$172:
	; parameter int4$0#, offset 157
	mov dword [rbp + 157], 0

 printFormat$173:
	; parameter int4$0#, offset 161
	mov dword [rbp + 161], 0

 printFormat$174:
	; parameter grid, offset 165
	mov eax, [rbp + 72]
	mov [rbp + 165], eax

 printFormat$175:
	; parameter int8$0#, offset 169
	mov qword [rbp + 169], 0

 printFormat$176:
	; parameter precision, offset 177
	mov eax, [rbp + 48]
	mov [rbp + 177], eax

 printFormat$177:
	; parameter shortInt, offset 181
	mov eax, [rbp + 88]
	mov [rbp + 181], eax

 printFormat$178:
	; parameter longInt, offset 185
	mov eax, [rbp + 92]
	mov [rbp + 185], eax

 printFormat$179:
	; parameter longDouble, offset 189
	mov eax, [rbp + 96]
	mov [rbp + 189], eax

 printFormat$180:
	; parameter int4$0#, offset 193
	mov dword [rbp + 193], 0

 printFormat$181:
	; parameter int8$0#, offset 197
	mov qword [rbp + 197], 0

 printFormat$182:
	; call function noellipse-noellipse printArgument
	mov qword [rbp + 117], printFormat$183
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printArgument

 printFormat$183:
	; post call

 printFormat$184:
	; £temporary1947 = return_value

 printFormat$185:
	; arg_list = £temporary1947
	mov [rbp + 32], rbx

 printFormat$186:
	; goto 242
	jmp printFormat$242

 printFormat$187:
	; startChars = g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$188:
	; oldOutStatus = g_outStatus
	mov eax, [g_outStatus]
	mov [rbp + 105], eax

 printFormat$189:
	; g_outStatus = int4$2#
	mov dword [g_outStatus], 2

 printFormat$190:
	; call header integral zero 0 stack zero 0

 printFormat$191:
	; £temporary1949 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$192:
	; £temporary1951 = format + £temporary1949
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$193:
	; £field1948 -> £temporary1951 = *£temporary1951

 printFormat$194:
	; £temporary1952 = &£field1948 -> £temporary1951

 printFormat$195:
	; parameter £temporary1952, offset 133
	mov [rbp + 133], rsi

 printFormat$196:
	; parameter arg_list, offset 141
	mov rax, [rbp + 32]
	mov [rbp + 141], rax

 printFormat$197:
	; parameter plus, offset 149
	mov eax, [rbp + 56]
	mov [rbp + 149], eax

 printFormat$198:
	; parameter space, offset 153
	mov eax, [rbp + 64]
	mov [rbp + 153], eax

 printFormat$199:
	; parameter grid, offset 157
	mov eax, [rbp + 72]
	mov [rbp + 157], eax

 printFormat$200:
	; £temporary1953 = &width
	mov rsi, rbp
	add rsi, 44

 printFormat$201:
	; parameter £temporary1953, offset 161
	mov [rbp + 161], rsi

 printFormat$202:
	; parameter precision, offset 169
	mov eax, [rbp + 48]
	mov [rbp + 169], eax

 printFormat$203:
	; parameter shortInt, offset 173
	mov eax, [rbp + 88]
	mov [rbp + 173], eax

 printFormat$204:
	; parameter longInt, offset 177
	mov eax, [rbp + 92]
	mov [rbp + 177], eax

 printFormat$205:
	; parameter longDouble, offset 181
	mov eax, [rbp + 96]
	mov [rbp + 181], eax

 printFormat$206:
	; parameter int4$1#, offset 185
	mov dword [rbp + 185], 1

 printFormat$207:
	; parameter int8$0#, offset 189
	mov qword [rbp + 189], 0

 printFormat$208:
	; call function noellipse-noellipse printArgument
	mov qword [rbp + 109], printFormat$209
	mov [rbp + 117], rbp
	add rbp, 109
	jmp printArgument

 printFormat$209:
	; post call

 printFormat$210:
	; g_outStatus = oldOutStatus
	mov eax, [rbp + 105]
	mov [g_outStatus], eax

 printFormat$211:
	; field = g_outChars - startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 109], eax

 printFormat$212:
	; g_outChars = startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

 printFormat$213:
	; £temporary1956 = field
	mov eax, [rbp + 109]

 printFormat$214:
	; field = field + int4$1#
	inc dword [rbp + 109]

 printFormat$215:
	; if £temporary1956 >= width goto 221
	cmp eax, [rbp + 44]
	jge printFormat$221

 printFormat$216:
	; call header integral zero 0 stack zero 0

 printFormat$217:
	; parameter int1$32#, offset 137
	mov byte [rbp + 137], 32

 printFormat$218:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 113], printFormat$219
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printChar

 printFormat$219:
	; post call

 printFormat$220:
	; goto 213
	jmp printFormat$213

 printFormat$221:
	; call header integral zero 0 stack zero 0

 printFormat$222:
	; £temporary1960 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$223:
	; £temporary1962 = format + £temporary1960
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$224:
	; £field1959 -> £temporary1962 = *£temporary1962

 printFormat$225:
	; £temporary1963 = &£field1959 -> £temporary1962

 printFormat$226:
	; parameter £temporary1963, offset 137
	mov [rbp + 137], rsi

 printFormat$227:
	; parameter arg_list, offset 145
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

 printFormat$228:
	; parameter plus, offset 153
	mov eax, [rbp + 56]
	mov [rbp + 153], eax

 printFormat$229:
	; parameter space, offset 157
	mov eax, [rbp + 64]
	mov [rbp + 157], eax

 printFormat$230:
	; parameter grid, offset 161
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

 printFormat$231:
	; parameter int8$0#, offset 165
	mov qword [rbp + 165], 0

 printFormat$232:
	; parameter precision, offset 173
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

 printFormat$233:
	; parameter shortInt, offset 177
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

 printFormat$234:
	; parameter longInt, offset 181
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

 printFormat$235:
	; parameter longDouble, offset 185
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

 printFormat$236:
	; parameter int4$1#, offset 189
	mov dword [rbp + 189], 1

 printFormat$237:
	; parameter int8$0#, offset 193
	mov qword [rbp + 193], 0

 printFormat$238:
	; call function noellipse-noellipse printArgument
	mov qword [rbp + 113], printFormat$239
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printArgument

 printFormat$239:
	; post call

 printFormat$240:
	; £temporary1964 = return_value

 printFormat$241:
	; arg_list = £temporary1964
	mov [rbp + 32], rbx

 printFormat$242:
	; percent = int4$0#
	mov dword [rbp + 52], 0

 printFormat$243:
	; goto 288
	jmp printFormat$288

 printFormat$244:
	; value = int4$0#
	mov dword [rbp + 101], 0

 printFormat$245:
	; call header integral zero 0 stack zero 0

 printFormat$246:
	; £temporary1967 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 100]
	and eax, 255
	cmp al, 0
	jge printFormat$247
	neg al
	neg eax

 printFormat$247:
	; parameter £temporary1967, offset 129
	mov [rbp + 129], eax

 printFormat$248:
	; call function noellipse-noellipse isdigit
	mov qword [rbp + 105], printFormat$249
	mov [rbp + 113], rbp
	add rbp, 105
	jmp isdigit

 printFormat$249:
	; post call

 printFormat$250:
	; £temporary1968 = return_value

 printFormat$251:
	; if £temporary1968 == int4$0# goto 262
	cmp ebx, 0
	je printFormat$262

 printFormat$252:
	; £temporary1969 = value * int4$10#
	mov eax, [rbp + 101]
	xor edx, edx
	imul dword [int4$10#]

 printFormat$253:
	; £temporary1970 = c - int1$48#
	mov bl, [rbp + 100]
	sub bl, 48

 printFormat$254:
	; £temporary1971 = int_to_int £temporary1970 (Signed_Char -> Signed_Int)
	and ebx, 255
	cmp bl, 0
	jge printFormat$255
	neg bl
	neg ebx

 printFormat$255:
	; value = £temporary1969 + £temporary1971
	add eax, ebx
	mov [rbp + 101], eax

 printFormat$256:
	; £temporary1973 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

 printFormat$257:
	; £temporary1975 = int_to_int £temporary1973 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 printFormat$258:
	; £temporary1977 = format + £temporary1975
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$259:
	; £field1974 -> £temporary1977 = *£temporary1977

 printFormat$260:
	; c = £field1974 -> £temporary1977
	mov al, [rsi]
	mov [rbp + 100], al

 printFormat$261:
	; goto 245
	jmp printFormat$245

 printFormat$262:
	; index = index - int4$1#
	dec dword [rbp + 40]

 printFormat$263:
	; if period != int4$0# goto 266
	cmp dword [rbp + 80], 0
	jne printFormat$266

 printFormat$264:
	; width = value
	mov eax, [rbp + 101]
	mov [rbp + 44], eax

 printFormat$265:
	; goto 288
	jmp printFormat$288

 printFormat$266:
	; precision = value
	mov eax, [rbp + 101]
	mov [rbp + 48], eax

 printFormat$267:
	; goto 288
	jmp printFormat$288

 printFormat$268:
	; if c != int1$37# goto 284
	cmp byte [rbp + 100], 37
	jne printFormat$284

 printFormat$269:
	; percent = int4$1#
	mov dword [rbp + 52], 1

 printFormat$270:
	; plus = int4$0#
	mov dword [rbp + 56], 0

 printFormat$271:
	; minus = int4$0#
	mov dword [rbp + 60], 0

 printFormat$272:
	; space = int4$0#
	mov dword [rbp + 64], 0

 printFormat$273:
	; zero = int4$0#
	mov dword [rbp + 68], 0

 printFormat$274:
	; grid = int4$0#
	mov dword [rbp + 72], 0

 printFormat$275:
	; widthStar = int4$0#
	mov dword [rbp + 76], 0

 printFormat$276:
	; period = int4$0#
	mov dword [rbp + 80], 0

 printFormat$277:
	; precisionStar = int4$0#
	mov dword [rbp + 84], 0

 printFormat$278:
	; shortInt = int4$0#
	mov dword [rbp + 88], 0

 printFormat$279:
	; longInt = int4$0#
	mov dword [rbp + 92], 0

 printFormat$280:
	; longDouble = int4$0#
	mov dword [rbp + 96], 0

 printFormat$281:
	; width = int4$0#
	mov dword [rbp + 44], 0

 printFormat$282:
	; precision = int4$0#
	mov dword [rbp + 48], 0

 printFormat$283:
	; goto 288
	jmp printFormat$288

 printFormat$284:
	; call header integral zero 0 stack zero 0

 printFormat$285:
	; parameter c, offset 125
	mov al, [rbp + 100]
	mov [rbp + 125], al

 printFormat$286:
	; call function noellipse-noellipse printChar
	mov qword [rbp + 101], printFormat$287
	mov [rbp + 109], rbp
	add rbp, 101
	jmp printChar

 printFormat$287:
	; post call

 printFormat$288:
	; index = index + int4$1#
	inc dword [rbp + 40]

 printFormat$289:
	; goto 16
	jmp printFormat$16

 printFormat$290:
	; if g_outStatus != int4$1# goto 297
	cmp dword [g_outStatus], 1
	jne printFormat$297

 printFormat$291:
	; £temporary1986 = int_to_int g_outDevice (Pointer -> Pointer)
	mov rax, [g_outDevice]

 printFormat$292:
	; outString = £temporary1986
	mov [rbp + 100], rax

 printFormat$293:
	; £temporary1988 = int_to_int g_outChars (Signed_Int -> Pointer)
	mov eax, [g_outChars]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$294:
	; £temporary1990 = outString + £temporary1988
	mov rsi, [rbp + 100]
	add rsi, rax

 printFormat$295:
	; £field1987 -> £temporary1990 = *£temporary1990

 printFormat$296:
	; £field1987 -> £temporary1990 = int1$0#
	mov byte [rsi], 0

 printFormat$297:
	; return g_outChars
	mov ebx, [g_outChars]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printFormat$298:
	; function end printFormat

 printf:
	; empty

 printf$1:
	; £temporary1995 = &format
	mov rsi, rbp
	add rsi, 24

 printf$2:
	; £temporary1996 = int_to_int £temporary1995 (Pointer -> Pointer)

 printf$3:
	; arg_list = £temporary1996 + int8$8#
	add rsi, 8
	mov [rdi + 32], rsi

 printf$4:
	; call header integral zero 0 stack zero 0

 printf$5:
	; parameter format, offset 64
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

 printf$6:
	; parameter arg_list, offset 72
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

 printf$7:
	; call function ellipse-noellipse vprintf
	mov qword [rdi + 40], printf$8
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	add rdi, 40
	mov rbp, rdi
	jmp vprintf

 printf$8:
	; post call

 printf$9:
	; £temporary1999 = return_value

 printf$10:
	; return £temporary1999
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printf$11:
	; function end printf

 vprintf:
	; call header integral zero 0 stack zero 0

 vprintf$1:
	; parameter stdout, offset 64
	mov rax, [stdout]
	mov [rbp + 64], rax

 vprintf$2:
	; parameter format, offset 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 vprintf$3:
	; parameter arg_list, offset 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 vprintf$4:
	; call function noellipse-noellipse vfprintf
	mov qword [rbp + 40], vprintf$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp vfprintf

 vprintf$5:
	; post call

 vprintf$6:
	; £temporary2001 = return_value

 vprintf$7:
	; return £temporary2001
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vprintf$8:
	; function end vprintf

 fprintf:
	; empty

 fprintf$1:
	; £temporary2002 = &format
	mov rsi, rbp
	add rsi, 32

 fprintf$2:
	; £temporary2003 = int_to_int £temporary2002 (Pointer -> Pointer)

 fprintf$3:
	; arg_list = £temporary2003 + int8$8#
	add rsi, 8
	mov [rdi + 40], rsi

 fprintf$4:
	; call header integral zero 0 stack zero 0

 fprintf$5:
	; parameter outStream, offset 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 fprintf$6:
	; parameter format, offset 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 fprintf$7:
	; parameter arg_list, offset 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 fprintf$8:
	; call function ellipse-noellipse vfprintf
	mov qword [rdi + 48], fprintf$9
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vfprintf

 fprintf$9:
	; post call

 fprintf$10:
	; £temporary2006 = return_value

 fprintf$11:
	; return £temporary2006
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fprintf$12:
	; function end fprintf

 vfprintf:
	; g_outStatus = int4$0#
	mov dword [g_outStatus], 0

 vfprintf$1:
	; £temporary2008 = int_to_int outStream (Pointer -> Pointer)
	mov rax, [rbp + 24]

 vfprintf$2:
	; g_outDevice = £temporary2008
	mov [g_outDevice], rax

 vfprintf$3:
	; call header integral zero 0 stack zero 0

 vfprintf$4:
	; parameter format, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vfprintf$5:
	; parameter arg_list, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vfprintf$6:
	; call function noellipse-noellipse printFormat
	mov qword [rbp + 48], vfprintf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printFormat

 vfprintf$7:
	; post call

 vfprintf$8:
	; £temporary2009 = return_value

 vfprintf$9:
	; return £temporary2009
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfprintf$10:
	; function end vfprintf

 sprintf:
	; empty

 sprintf$1:
	; £temporary2010 = &format
	mov rsi, rbp
	add rsi, 32

 sprintf$2:
	; £temporary2011 = int_to_int £temporary2010 (Pointer -> Pointer)

 sprintf$3:
	; arg_list = £temporary2011 + int8$8#
	add rsi, 8
	mov [rdi + 40], rsi

 sprintf$4:
	; call header integral zero 0 stack zero 0

 sprintf$5:
	; parameter outString, offset 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 sprintf$6:
	; parameter format, offset 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 sprintf$7:
	; parameter arg_list, offset 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 sprintf$8:
	; call function ellipse-noellipse vsprintf
	mov qword [rdi + 48], sprintf$9
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vsprintf

 sprintf$9:
	; post call

 sprintf$10:
	; £temporary2014 = return_value

 sprintf$11:
	; return £temporary2014
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sprintf$12:
	; function end sprintf

 vsprintf:
	; g_outStatus = int4$1#
	mov dword [g_outStatus], 1

 vsprintf$1:
	; £temporary2016 = int_to_int outString (Pointer -> Pointer)
	mov rax, [rbp + 24]

 vsprintf$2:
	; g_outDevice = £temporary2016
	mov [g_outDevice], rax

 vsprintf$3:
	; call header integral zero 0 stack zero 0

 vsprintf$4:
	; parameter format, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vsprintf$5:
	; parameter arg_list, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vsprintf$6:
	; call function noellipse-noellipse printFormat
	mov qword [rbp + 48], vsprintf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printFormat

 vsprintf$7:
	; post call

 vsprintf$8:
	; £temporary2017 = return_value

 vsprintf$9:
	; return £temporary2017
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsprintf$10:
	; function end vsprintf
section .data

g_outStatus:
	; initializer zero 4
	times 4 db 0

g_outChars:
	; initializer zero 4
	times 4 db 0

g_outDevice:
	; initializer zero 8
	times 8 db 0

int8$10#:
	; initializer Signed_Long_Int
	dq 10

container8bytes#:
	; initializer zero 8
	times 8 db 0

float8$10.0#:
	; initializer Long_Double
	dq 10.0

container4bytes#:
	; initializer zero 4
	times 4 db 0

int4$10#:
	; initializer Signed_Int
	dd 10
