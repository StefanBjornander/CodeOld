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

putc:	; g_outStatus = int4$0#
	mov dword [g_outStatus], 0

putc$1:	; £temporary1837 = int_to_int stream (Pointer -> Pointer)
	mov rax, [rbp + 28]

putc$2:	; g_outDevice = £temporary1837
	mov [g_outDevice], rax

putc$3:	; call header integral zero 0 stack zero 0

putc$4:	; £temporary1838 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putc$5
	neg eax
	neg al

putc$5:	; parameter £temporary1838, offset 60
	mov [rbp + 60], al

putc$6:	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], putc$7
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

putc$7:	; post call

putc$8:	; return_value = int4$1#
	mov ebx, 1

putc$9:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

putc$10:	; function end putc

fputc:	; g_outStatus = int4$0#
	mov dword [g_outStatus], 0

fputc$1:	; £temporary1841 = int_to_int stream (Pointer -> Pointer)
	mov rax, [rbp + 28]

fputc$2:	; g_outDevice = £temporary1841
	mov [g_outDevice], rax

fputc$3:	; call header integral zero 0 stack zero 0

fputc$4:	; £temporary1842 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 24]
	cmp eax, 0
	jge fputc$5
	neg eax
	neg al

fputc$5:	; parameter £temporary1842, offset 60
	mov [rbp + 60], al

fputc$6:	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], fputc$7
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

fputc$7:	; post call

fputc$8:	; return_value = int4$1#
	mov ebx, 1

fputc$9:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

fputc$10:	; function end fputc

putchar:	; g_outStatus = int4$0#
	mov dword [g_outStatus], 0

putchar$1:	; £temporary1845 = int_to_int stdout (Pointer -> Pointer)
	mov rax, [stdout]

putchar$2:	; g_outDevice = £temporary1845
	mov [g_outDevice], rax

putchar$3:	; call header integral zero 0 stack zero 0

putchar$4:	; £temporary1846 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putchar$5
	neg eax
	neg al

putchar$5:	; parameter £temporary1846, offset 52
	mov [rbp + 52], al

putchar$6:	; call function noellipse-noellipse printChar
	mov qword [rbp + 28], putchar$7
	mov [rbp + 36], rbp
	add rbp, 28
	jmp printChar

putchar$7:	; post call

putchar$8:	; return_value = int4$1#
	mov ebx, 1

putchar$9:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

putchar$10:	; function end putchar

printChar:	; empty

printChar$1:	; case g_outStatus == int4$0# goto 6
	mov eax, [g_outStatus]
	cmp eax, 0
	je printChar$6

printChar$2:	; case g_outStatus == int4$1# goto 19
	cmp eax, 1
	je printChar$19

printChar$3:	; case g_outStatus == int4$2# goto 28
	cmp eax, 2
	je printChar$28

printChar$4:	; case end g_outStatus

printChar$5:	; goto 29
	jmp printChar$29

printChar$6:	; £temporary1849 = int_to_int g_outDevice (Pointer -> Pointer)
	mov rax, [g_outDevice]

printChar$7:	; stream = £temporary1849
	mov [rbp + 37], rax

printChar$8:	; rax = int8$1#
	mov rax, 1

printChar$9:	; £temporary1852 -> stream = *stream
	mov rsi, [rbp + 37]

printChar$10:	; £temporary1853 = int_to_int £temporary1852 -> stream (Unsigned_Int -> Unsigned_Long_Int)
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

printChar$11:	; rdi = £temporary1853

printChar$12:	; £temporary1855 = &c
	mov rsi, rbp
	add rsi, 24

printChar$13:	; £temporary1856 = int_to_int £temporary1855 (Pointer -> Unsigned_Long_Int)

printChar$14:	; rsi = £temporary1856

printChar$15:	; rdx = int8$1#
	mov rdx, 1

printChar$16:	; syscall
	syscall 

printChar$17:	; ++g_outChars
	inc dword [g_outChars]

printChar$18:	; goto 29
	jmp printChar$29

printChar$19:	; £temporary1859 = int_to_int g_outDevice (Pointer -> Pointer)
	mov rax, [g_outDevice]

printChar$20:	; outString = £temporary1859
	mov [rbp + 29], rax

printChar$21:	; £temporary1860 = g_outChars
	mov eax, [g_outChars]

printChar$22:	; ++g_outChars
	inc dword [g_outChars]

printChar$23:	; £temporary1862 = int_to_int £temporary1860 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

printChar$24:	; £temporary1864 = outString + £temporary1862
	mov rsi, [rbp + 29]
	add rsi, rax

printChar$25:	; £temporary1861 -> £temporary1864 = *£temporary1864

printChar$26:	; £temporary1861 -> £temporary1864 = c
	mov al, [rbp + 24]
	mov [rsi], al

printChar$27:	; goto 29
	jmp printChar$29

printChar$28:	; ++g_outChars
	inc dword [g_outChars]

printChar$29:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printChar$30:	; function end printChar

printString:	; if s == int8$0# goto 33
	cmp qword [rbp + 24], 0
	je printString$33

printString$1:	; if precision != int4$0# goto 16
	cmp dword [rbp + 32], 0
	jne printString$16

printString$2:	; index = int4$0#
	mov dword [rbp + 36], 0

printString$3:	; £temporary1870 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

printString$4:	; £temporary1872 = s + £temporary1870
	mov rsi, [rbp + 24]
	add rsi, rax

printString$5:	; £temporary1869 -> £temporary1872 = *£temporary1872

printString$6:	; if £temporary1869 -> £temporary1872 == int1$0# goto 57
	cmp byte [rsi], 0
	je printString$57

printString$7:	; call header integral zero 0 stack zero 0

printString$8:	; £temporary1876 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

printString$9:	; £temporary1878 = s + £temporary1876
	mov rsi, [rbp + 24]
	add rsi, rax

printString$10:	; £temporary1875 -> £temporary1878 = *£temporary1878

printString$11:	; parameter £temporary1875 -> £temporary1878, offset 64
	mov al, [rsi]
	mov [rbp + 64], al

printString$12:	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printString$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

printString$13:	; post call

printString$14:	; ++index
	inc dword [rbp + 36]

printString$15:	; goto 3
	jmp printString$3

printString$16:	; index = int4$0#
	mov dword [rbp + 36], 0

printString$17:	; £temporary1880 = precision
	mov eax, [rbp + 32]

printString$18:	; --precision
	dec dword [rbp + 32]

printString$19:	; if £temporary1880 <= int4$0# goto 57
	cmp eax, 0
	jle printString$57

printString$20:	; £temporary1883 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

printString$21:	; £temporary1885 = s + £temporary1883
	mov rsi, [rbp + 24]
	add rsi, rax

printString$22:	; £temporary1882 -> £temporary1885 = *£temporary1885

printString$23:	; if £temporary1882 -> £temporary1885 == int1$0# goto 57
	cmp byte [rsi], 0
	je printString$57

printString$24:	; call header integral zero 0 stack zero 0

printString$25:	; £temporary1890 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

printString$26:	; £temporary1892 = s + £temporary1890
	mov rsi, [rbp + 24]
	add rsi, rax

printString$27:	; £temporary1889 -> £temporary1892 = *£temporary1892

printString$28:	; parameter £temporary1889 -> £temporary1892, offset 64
	mov al, [rsi]
	mov [rbp + 64], al

printString$29:	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printString$30
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

printString$30:	; post call

printString$31:	; ++index
	inc dword [rbp + 36]

printString$32:	; goto 17
	jmp printString$17

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter int1$60#, offset 60
	mov byte [rbp + 60], 60

printString$35:	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$36
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter int1$78#, offset 60
	mov byte [rbp + 60], 78

printString$39:	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$40
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter int1$85#, offset 60
	mov byte [rbp + 60], 85

printString$43:	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$44
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter int1$76#, offset 60
	mov byte [rbp + 60], 76

printString$47:	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$48
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter int1$76#, offset 60
	mov byte [rbp + 60], 76

printString$51:	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$52
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

printString$52:	; post call

printString$53:	; call header integral zero 0 stack zero 0

printString$54:	; parameter int1$62#, offset 60
	mov byte [rbp + 60], 62

printString$55:	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printString$56
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

printString$56:	; post call

printString$57:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printString$58:	; function end printString

printLongIntRec:	; if longValue == int8$0# goto 15
	cmp qword [rbp + 24], 0
	je printLongIntRec$15

printLongIntRec$1:	; £temporary1909 = longValue % int8$10#
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [int8$10#]

printLongIntRec$2:	; £temporary1910 = int_to_int £temporary1909 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge printLongIntRec$3
	neg rdx
	neg edx

printLongIntRec$3:	; digit = £temporary1910
	mov [rbp + 32], edx

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1911 = longValue / int8$10#
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [int8$10#]

printLongIntRec$6:	; parameter £temporary1911, offset 60
	mov [rbp + 60], rax

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
	mov qword [rbp + 36], printLongIntRec$8
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printLongIntRec

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1913 = digit + int4$48#
	mov eax, [rbp + 32]
	add eax, 48

printLongIntRec$11:	; £temporary1914 = int_to_int £temporary1913 (Signed_Int -> Signed_Char)
	cmp eax, 0
	jge printLongIntRec$12
	neg eax
	neg al

printLongIntRec$12:	; parameter £temporary1914, offset 60
	mov [rbp + 60], al

printLongIntRec$13:	; call function noellipse-noellipse printChar
	mov qword [rbp + 36], printLongIntRec$14
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printLongIntRec$16:	; function end printLongIntRec

printLongInt:	; if longValue >= int8$0# goto 8
	cmp qword [rbp + 24], 0
	jge printLongInt$8

printLongInt$1:	; £temporary1919 = -longValue
	mov rax, [rbp + 24]
	neg rax

printLongInt$2:	; longValue = £temporary1919
	mov [rbp + 24], rax

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter int1$45#, offset 64
	mov byte [rbp + 64], 45

printLongInt$5:	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printLongInt$6
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

printLongInt$6:	; post call

printLongInt$7:	; goto 19
	jmp printLongInt$19

printLongInt$8:	; if space == int4$0# goto 14
	cmp dword [rbp + 36], 0
	je printLongInt$14

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter int1$32#, offset 64
	mov byte [rbp + 64], 32

printLongInt$11:	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printLongInt$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

printLongInt$12:	; post call

printLongInt$13:	; goto 19
	jmp printLongInt$19

printLongInt$14:	; if plus == int4$0# goto 19
	cmp dword [rbp + 32], 0
	je printLongInt$19

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter int1$43#, offset 64
	mov byte [rbp + 64], 43

printLongInt$17:	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printLongInt$18
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

printLongInt$18:	; post call

printLongInt$19:	; if longValue != int8$0# goto 25
	cmp qword [rbp + 24], 0
	jne printLongInt$25

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter int1$48#, offset 64
	mov byte [rbp + 64], 48

printLongInt$22:	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printLongInt$23
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

printLongInt$23:	; post call

printLongInt$24:	; goto 29
	jmp printLongInt$29

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
	mov qword [rbp + 40], printLongInt$28
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printLongIntRec

printLongInt$28:	; post call

printLongInt$29:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printLongInt$30:	; function end printLongInt

digitToChar:	; if digit >= int4$10# goto 5
	cmp dword [rbp + 24], 10
	jge digitToChar$5

digitToChar$1:	; £temporary1934 = digit + int4$48#
	mov ebx, [rbp + 24]
	add ebx, 48

digitToChar$2:	; £temporary1935 = int_to_int £temporary1934 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge digitToChar$3
	neg ebx
	neg bl

digitToChar$3:	; return_value = £temporary1935

digitToChar$4:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

digitToChar$5:	; if capital == int4$0# goto 11
	cmp dword [rbp + 28], 0
	je digitToChar$11

digitToChar$6:	; £temporary1936 = digit - int4$10#
	mov ebx, [rbp + 24]
	sub ebx, 10

digitToChar$7:	; £temporary1937 = £temporary1936 + int4$65#
	add ebx, 65

digitToChar$8:	; £temporary1938 = int_to_int £temporary1937 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge digitToChar$9
	neg ebx
	neg bl

digitToChar$9:	; return_value = £temporary1938

digitToChar$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

digitToChar$11:	; £temporary1939 = digit - int4$10#
	mov ebx, [rbp + 24]
	sub ebx, 10

digitToChar$12:	; £temporary1940 = £temporary1939 + int4$97#
	add ebx, 97

digitToChar$13:	; £temporary1941 = int_to_int £temporary1940 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge digitToChar$14
	neg ebx
	neg bl

digitToChar$14:	; return_value = £temporary1941

digitToChar$15:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

digitToChar$16:	; function end digitToChar

printUnsignedLongRec:	; if unsignedValue <= int8$0# goto 22
	cmp qword [rbp + 24], 0
	jbe printUnsignedLongRec$22

printUnsignedLongRec$1:	; £temporary1944 = unsignedValue % base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

printUnsignedLongRec$2:	; £temporary1945 = int_to_int £temporary1944 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1945
	mov [rbp + 44], edx

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1946 = unsignedValue / base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

printUnsignedLongRec$6:	; parameter £temporary1946, offset 72
	mov [rbp + 72], rax

printUnsignedLongRec$7:	; parameter base, offset 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

printUnsignedLongRec$8:	; parameter capital, offset 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
	mov qword [rbp + 48], printUnsignedLongRec$10
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printUnsignedLongRec

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 72
	mov eax, [rbp + 44]
	mov [rbp + 72], eax

printUnsignedLongRec$13:	; parameter capital, offset 76
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
	mov qword [rbp + 48], printUnsignedLongRec$15
	mov [rbp + 56], rbp
	add rbp, 48
	jmp digitToChar

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1948 = return_value

printUnsignedLongRec$17:	; c = £temporary1948
	mov [rbp + 48], bl

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 73
	mov al, [rbp + 48]
	mov [rbp + 73], al

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
	mov qword [rbp + 49], printUnsignedLongRec$21
	mov [rbp + 57], rbp
	add rbp, 49
	jmp printChar

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printUnsignedLongRec$23:	; function end printUnsignedLongRec

printUnsignedLong:	; if plus == int4$0# goto 5
	cmp dword [rbp + 32], 0
	je printUnsignedLong$5

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter int1$43#, offset 80
	mov byte [rbp + 80], 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$4
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == int4$0# goto 10
	cmp dword [rbp + 36], 0
	je printUnsignedLong$10

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter int1$32#, offset 80
	mov byte [rbp + 80], 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$9
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == int4$0# goto 29
	cmp dword [rbp + 40], 0
	je printUnsignedLong$29

printUnsignedLong$11:	; if base != int8$8# goto 16
	cmp qword [rbp + 44], 8
	jne printUnsignedLong$16

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter int1$48#, offset 80
	mov byte [rbp + 80], 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$15
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != int8$16# goto 29
	cmp qword [rbp + 44], 16
	jne printUnsignedLong$29

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter int1$48#, offset 80
	mov byte [rbp + 80], 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == int4$0# goto 25
	cmp dword [rbp + 52], 0
	je printUnsignedLong$25

printUnsignedLong$23:	; £temporary1965 = int1$88#
	mov al, 88

printUnsignedLong$24:	; goto 26
	jmp printUnsignedLong$26

printUnsignedLong$25:	; £temporary1965 = int1$120#
	mov al, 120

printUnsignedLong$26:	; parameter £temporary1965, offset 80
	mov [rbp + 80], al

printUnsignedLong$27:	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$28
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != int8$0# goto 35
	cmp qword [rbp + 24], 0
	jne printUnsignedLong$35

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter int1$48#, offset 80
	mov byte [rbp + 80], 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printUnsignedLong$33
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
	jmp printUnsignedLong$41

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 80
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

printUnsignedLong$37:	; parameter base, offset 88
	mov rax, [rbp + 44]
	mov [rbp + 88], rax

printUnsignedLong$38:	; parameter capital, offset 96
	mov eax, [rbp + 52]
	mov [rbp + 96], eax

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
	mov qword [rbp + 56], printUnsignedLong$40
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printUnsignedLongRec

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printUnsignedLong$42:	; function end printUnsignedLong

printLongDoubleFraction:	; push float longDoubleValue
	fld qword [rbp + 24]

printLongDoubleFraction$1:	; push float longDoubleValue
	fld qword [rbp + 24]

printLongDoubleFraction$2:	; £temporary1980 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

printLongDoubleFraction$3:	; £temporary1981 = int_to_float £temporary1980 (Signed_Long_Int -> Long_Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

printLongDoubleFraction$4:	; £temporary1982 = longDoubleValue - £temporary1981
	fsub 

printLongDoubleFraction$5:	; pop float longDoubleValue
	fstp qword [rbp + 24]

printLongDoubleFraction$6:	; if precision != int4$0# goto 8
	cmp dword [rbp + 36], 0
	jne printLongDoubleFraction$8

printLongDoubleFraction$7:	; precision = int4$9#
	mov dword [rbp + 36], 9

printLongDoubleFraction$8:	; if grid != int4$0# goto 10
	cmp dword [rbp + 32], 0
	jne printLongDoubleFraction$10

printLongDoubleFraction$9:	; if precision <= int4$0# goto 14
	cmp dword [rbp + 36], 0
	jle printLongDoubleFraction$14

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter int1$46#, offset 64
	mov byte [rbp + 64], 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
	mov qword [rbp + 40], printLongDoubleFraction$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1988 = precision
	mov eax, [rbp + 36]

printLongDoubleFraction$15:	; --precision
	dec dword [rbp + 36]

printLongDoubleFraction$16:	; if £temporary1988 <= int4$0# goto 34
	cmp eax, 0
	jle printLongDoubleFraction$34

printLongDoubleFraction$17:	; push float float8$10.0#
	fld qword [float8$10.0#]

printLongDoubleFraction$18:	; push float longDoubleValue
	fld qword [rbp + 24]

printLongDoubleFraction$19:	; £temporary1990 = float8$10.0# * longDoubleValue
	fmul 

printLongDoubleFraction$20:	; top float longDoubleValue10
	fst qword [rbp + 40]

printLongDoubleFraction$21:	; £temporary1991 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
	fistp word [$IntegralStorage#]
	mov eax, [$IntegralStorage#]

printLongDoubleFraction$22:	; digitValue = £temporary1991
	mov [rbp + 48], eax

printLongDoubleFraction$23:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$24:	; £temporary1992 = digitValue + int4$48#
	mov eax, [rbp + 48]
	add eax, 48

printLongDoubleFraction$25:	; £temporary1993 = int_to_int £temporary1992 (Signed_Int -> Signed_Char)
	cmp eax, 0
	jge printLongDoubleFraction$26
	neg eax
	neg al

printLongDoubleFraction$26:	; parameter £temporary1993, offset 76
	mov [rbp + 76], al

printLongDoubleFraction$27:	; call function noellipse-noellipse printChar
	mov qword [rbp + 52], printLongDoubleFraction$28
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

printLongDoubleFraction$28:	; post call

printLongDoubleFraction$29:	; push float longDoubleValue10
	fld qword [rbp + 40]

printLongDoubleFraction$30:	; £temporary1995 = int_to_float digitValue (Signed_Int -> Long_Double)
	fild word [rbp + 48]

printLongDoubleFraction$31:	; £temporary1996 = longDoubleValue10 - £temporary1995
	fsub 

printLongDoubleFraction$32:	; pop float longDoubleValue
	fstp qword [rbp + 24]

printLongDoubleFraction$33:	; goto 14
	jmp printLongDoubleFraction$14

printLongDoubleFraction$34:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printLongDoubleFraction$35:	; function end printLongDoubleFraction

printLongDoublePlain:	; push float longDoubleValue
	fld qword [rbp + 24]

printLongDoublePlain$1:	; push float float8$0.0#
	fldz 

printLongDoublePlain$2:	; if longDoubleValue >= float8$0.0# goto 12
	fcompp 
	fstsw ax
	sahf 
	jbe printLongDoublePlain$12

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter int1$45#, offset 72
	mov byte [rbp + 72], 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
	mov qword [rbp + 48], printLongDoublePlain$6
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printChar

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
	fld qword [rbp + 24]

printLongDoublePlain$8:	; £temporary2001 = -longDoubleValue
	fchs 

printLongDoublePlain$9:	; pop float longDoubleValue
	fstp qword [rbp + 24]

printLongDoublePlain$10:	; plus = int4$0#
	mov dword [rbp + 32], 0

printLongDoublePlain$11:	; space = int4$0#
	mov dword [rbp + 36], 0

printLongDoublePlain$12:	; push float longDoubleValue
	fld qword [rbp + 24]

printLongDoublePlain$13:	; £temporary2002 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
	fistp dword [$IntegralStorage#]
	mov rax, [$IntegralStorage#]

printLongDoublePlain$14:	; longValue = £temporary2002
	mov [rbp + 48], rax

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 80
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

printLongDoublePlain$17:	; parameter plus, offset 88
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

printLongDoublePlain$18:	; parameter space, offset 92
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
	mov qword [rbp + 56], printLongDoublePlain$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongInt

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
	fld qword [rbp + 24]

printLongDoublePlain$22:	; £temporary2004 = int_to_float longValue (Signed_Long_Int -> Long_Double)
	fild dword [rbp + 48]

printLongDoublePlain$23:	; £temporary2005 = longDoubleValue - £temporary2004
	fsub 

printLongDoublePlain$24:	; pop float longDoubleValue
	fstp qword [rbp + 24]

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
	fld qword [rbp + 24]

printLongDoublePlain$27:	; parameter longDoubleValue, offset 80
	fstp qword [rbp + 80]

printLongDoublePlain$28:	; parameter grid, offset 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

printLongDoublePlain$29:	; parameter precision, offset 92
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
	mov qword [rbp + 56], printLongDoublePlain$31
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongDoubleFraction

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printLongDoublePlain$33:	; function end printLongDoublePlain

printLongDoubleExpo:	; push float value
	fld qword [rbp + 24]

printLongDoubleExpo$1:	; push float float8$0.0#
	fldz 

printLongDoubleExpo$2:	; if value != float8$0.0# goto 27
	fcompp 
	fstsw ax
	sahf 
	jne printLongDoubleExpo$27

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter int1$48#, offset 76
	mov byte [rbp + 76], 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
	mov qword [rbp + 52], printLongDoubleExpo$6
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float float8$0.0#
	fldz 

printLongDoubleExpo$9:	; parameter float8$0.0#, offset 76
	fstp qword [rbp + 76]

printLongDoubleExpo$10:	; parameter precision, offset 84
	mov eax, [rbp + 44]
	mov [rbp + 84], eax

printLongDoubleExpo$11:	; parameter grid, offset 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
	mov qword [rbp + 52], printLongDoubleExpo$13
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printLongDoubleFraction

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == int4$0# goto 18
	cmp dword [rbp + 48], 0
	je printLongDoubleExpo$18

printLongDoubleExpo$16:	; £temporary2018 = int1$69#
	mov al, 69

printLongDoubleExpo$17:	; goto 19
	jmp printLongDoubleExpo$19

printLongDoubleExpo$18:	; £temporary2018 = int1$101#
	mov al, 101

printLongDoubleExpo$19:	; parameter £temporary2018, offset 76
	mov [rbp + 76], al

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
	mov qword [rbp + 52], printLongDoubleExpo$21
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter int1$48#, offset 76
	mov byte [rbp + 76], 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
	mov qword [rbp + 52], printLongDoubleExpo$25
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
	jmp printLongDoubleExpo$80

printLongDoubleExpo$27:	; push float value
	fld qword [rbp + 24]

printLongDoubleExpo$28:	; push float float8$0.0#
	fldz 

printLongDoubleExpo$29:	; if value >= float8$0.0# goto 37
	fcompp 
	fstsw ax
	sahf 
	jbe printLongDoubleExpo$37

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter int1$45#, offset 76
	mov byte [rbp + 76], 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
	mov qword [rbp + 52], printLongDoubleExpo$33
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
	fld qword [rbp + 24]

printLongDoubleExpo$35:	; £temporary2023 = -value
	fchs 

printLongDoubleExpo$36:	; pop float value
	fstp qword [rbp + 24]

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
	fld qword [rbp + 24]

printLongDoubleExpo$39:	; parameter value, offset 76
	fstp qword [rbp + 76]

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
	mov qword [rbp + 52], printLongDoubleExpo$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp log10

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary2024 = return_value

printLongDoubleExpo$43:	; £temporary2025 = float_to_int £temporary2024 (Double -> Signed_Int)
	fistp word [$IntegralStorage#]
	mov eax, [$IntegralStorage#]

printLongDoubleExpo$44:	; expo = £temporary2025
	mov [rbp + 52], eax

printLongDoubleExpo$45:	; push float value
	fld qword [rbp + 24]

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 56]

printLongDoubleExpo$47:	; push float float8$10.0#
	fld qword [float8$10.0#]

printLongDoubleExpo$48:	; parameter float8$10.0#, offset 80
	fstp qword [rbp + 88]

printLongDoubleExpo$49:	; £temporary2026 = int_to_float expo (Signed_Int -> Double)
	fild word [rbp + 52]

printLongDoubleExpo$50:	; parameter £temporary2026, offset 88
	fstp qword [rbp + 96]

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
	mov qword [rbp + 64], printLongDoubleExpo$52
	mov [rbp + 72], rbp
	add rbp, 64
	jmp pow

printLongDoubleExpo$52:	; post call
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 64]

printLongDoubleExpo$53:	; £temporary2027 = return_value

printLongDoubleExpo$54:	; £temporary2028 = value / £temporary2027
	fdiv 

printLongDoubleExpo$55:	; pop float value
	fstp qword [rbp + 24]

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
	fld qword [rbp + 24]

printLongDoubleExpo$58:	; parameter value, offset 80
	fstp qword [rbp + 80]

printLongDoubleExpo$59:	; parameter plus, offset 88
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

printLongDoubleExpo$60:	; parameter space, offset 92
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

printLongDoubleExpo$61:	; parameter grid, offset 96
	mov eax, [rbp + 40]
	mov [rbp + 96], eax

printLongDoubleExpo$62:	; parameter precision, offset 100
	mov eax, [rbp + 44]
	mov [rbp + 100], eax

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
	mov qword [rbp + 56], printLongDoubleExpo$64
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongDoublePlain

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == int4$0# goto 69
	cmp dword [rbp + 48], 0
	je printLongDoubleExpo$69

printLongDoubleExpo$67:	; £temporary2031 = int1$69#
	mov al, 69

printLongDoubleExpo$68:	; goto 70
	jmp printLongDoubleExpo$70

printLongDoubleExpo$69:	; £temporary2031 = int1$101#
	mov al, 101

printLongDoubleExpo$70:	; parameter £temporary2031, offset 80
	mov [rbp + 80], al

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
	mov qword [rbp + 56], printLongDoubleExpo$72
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary2033 = int_to_int expo (Signed_Int -> Signed_Long_Int)
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printLongDoubleExpo$75
	neg eax
	neg rax

printLongDoubleExpo$75:	; parameter £temporary2033, offset 80
	mov [rbp + 80], rax

printLongDoubleExpo$76:	; parameter int4$1#, offset 88
	mov dword [rbp + 88], 1

printLongDoubleExpo$77:	; parameter int4$0#, offset 92
	mov dword [rbp + 92], 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
	mov qword [rbp + 56], printLongDoubleExpo$79
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongInt

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printLongDoubleExpo$81:	; function end printLongDoubleExpo

checkWidthAndPrecision:	; if widthPtr == int8$0# goto 10
	cmp qword [rbp + 32], 0
	je checkWidthAndPrecision$10

checkWidthAndPrecision$1:	; £temporary2055 -> widthPtr = *widthPtr
	mov rsi, [rbp + 32]

checkWidthAndPrecision$2:	; if £temporary2055 -> widthPtr != int4$minus1# goto 10
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$10

checkWidthAndPrecision$3:	; £temporary2058 -> widthPtr = *widthPtr
	mov rsi, [rbp + 32]

checkWidthAndPrecision$4:	; £temporary2059 = arg_list + int8$4#
	mov rax, [rbp + 24]
	add rax, 4

checkWidthAndPrecision$5:	; arg_list = £temporary2059
	mov [rbp + 24], rax

checkWidthAndPrecision$6:	; £temporary2061 = arg_list - int8$4#
	mov rdi, [rbp + 24]
	sub rdi, 4

checkWidthAndPrecision$7:	; £temporary2063 = int_to_int £temporary2061 (Pointer -> Pointer)

checkWidthAndPrecision$8:	; £temporary2064 -> £temporary2063 = *£temporary2063

checkWidthAndPrecision$9:	; £temporary2058 -> widthPtr = £temporary2064 -> £temporary2063
	mov eax, [rdi]
	mov [rsi], eax

checkWidthAndPrecision$10:	; if precisionPtr == int8$0# goto 20
	cmp qword [rbp + 40], 0
	je checkWidthAndPrecision$20

checkWidthAndPrecision$11:	; £temporary2066 -> precisionPtr = *precisionPtr
	mov rsi, [rbp + 40]

checkWidthAndPrecision$12:	; if £temporary2066 -> precisionPtr != int4$minus1# goto 20
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$20

checkWidthAndPrecision$13:	; £temporary2069 -> precisionPtr = *precisionPtr
	mov rsi, [rbp + 40]

checkWidthAndPrecision$14:	; £temporary2070 = arg_list + int8$4#
	mov rax, [rbp + 24]
	add rax, 4

checkWidthAndPrecision$15:	; arg_list = £temporary2070
	mov [rbp + 24], rax

checkWidthAndPrecision$16:	; £temporary2072 = arg_list - int8$4#
	mov rdi, [rbp + 24]
	sub rdi, 4

checkWidthAndPrecision$17:	; £temporary2074 = int_to_int £temporary2072 (Pointer -> Pointer)

checkWidthAndPrecision$18:	; £temporary2075 -> £temporary2074 = *£temporary2074

checkWidthAndPrecision$19:	; £temporary2069 -> precisionPtr = £temporary2075 -> £temporary2074
	mov eax, [rdi]
	mov [rsi], eax

checkWidthAndPrecision$20:	; return_value = arg_list
	mov rbx, [rbp + 24]

checkWidthAndPrecision$21:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

checkWidthAndPrecision$22:	; function end checkWidthAndPrecision

testY:	; empty

testY$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

testY$2:	; function end testY

testX:	; empty

testX$1:	; if j != int4$1# goto 4
	cmp dword [rbp + 28], 1
	jne testX$4

testX$2:	; i = int4$1#
	mov dword [rbp + 24], 1

testX$3:	; goto 5
	jmp testX$5

testX$4:	; i = int4$2#
	mov dword [rbp + 24], 2

testX$5:	; j = i
	mov eax, [rbp + 24]
	mov [rbp + 28], eax

testX$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

testX$7:	; function end testX

printArgument:	; £temporary2077 -> format = *format
	mov rsi, [rbp + 24]

printArgument$1:	; c = £temporary2077 -> format
	mov al, [rsi]
	mov [rbp + 88], al

printArgument$2:	; case c == int1$100# goto 21
	mov al, [rbp + 88]
	cmp al, 100
	je printArgument$21

printArgument$3:	; case c == int1$105# goto 21
	cmp al, 105
	je printArgument$21

printArgument$4:	; case c == int1$99# goto 76
	cmp al, 99
	je printArgument$76

printArgument$5:	; case c == int1$115# goto 97
	cmp al, 115
	je printArgument$97

printArgument$6:	; case c == int1$88# goto 118
	cmp al, 88
	je printArgument$118

printArgument$7:	; case c == int1$120# goto 118
	cmp al, 120
	je printArgument$118

printArgument$8:	; case c == int1$98# goto 118
	cmp al, 98
	je printArgument$118

printArgument$9:	; case c == int1$111# goto 118
	cmp al, 111
	je printArgument$118

printArgument$10:	; case c == int1$117# goto 118
	cmp al, 117
	je printArgument$118

printArgument$11:	; case c == int1$71# goto 181
	cmp al, 71
	je printArgument$181

printArgument$12:	; case c == int1$103# goto 181
	cmp al, 103
	je printArgument$181

printArgument$13:	; case c == int1$69# goto 181
	cmp al, 69
	je printArgument$181

printArgument$14:	; case c == int1$101# goto 181
	cmp al, 101
	je printArgument$181

printArgument$15:	; case c == int1$102# goto 181
	cmp al, 102
	je printArgument$181

printArgument$16:	; case c == int1$112# goto 309
	cmp al, 112
	je printArgument$309

printArgument$17:	; case c == int1$110# goto 335
	cmp al, 110
	je printArgument$335

printArgument$18:	; case c == int1$37# goto 359
	cmp al, 37
	je printArgument$359

printArgument$19:	; case end c

printArgument$20:	; goto 372
	jmp printArgument$372

printArgument$21:	; if shortInt == int4$0# goto 31
	cmp dword [rbp + 64], 0
	je printArgument$31

printArgument$22:	; £temporary2078 = arg_list + int8$4#
	mov rax, [rbp + 32]
	add rax, 4

printArgument$23:	; arg_list = £temporary2078
	mov [rbp + 32], rax

printArgument$24:	; £temporary2080 = arg_list - int8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

printArgument$25:	; £temporary2082 = int_to_int £temporary2080 (Pointer -> Pointer)

printArgument$26:	; £temporary2083 -> £temporary2082 = *£temporary2082

printArgument$27:	; £temporary2084 = int_to_int £temporary2083 -> £temporary2082 (Signed_Int -> Signed_Short_Int)
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$28
	neg eax
	neg ax

printArgument$28:	; £temporary2085 = int_to_int £temporary2084 (Signed_Short_Int -> Signed_Long_Int)
	mov rbx, 65535
	and rax, rbx
	cmp ax, 0
	jge printArgument$29
	neg ax
	neg rax

printArgument$29:	; longValue = £temporary2085
	mov [rbp + 114], rax

printArgument$30:	; goto 46
	jmp printArgument$46

printArgument$31:	; if longInt == int4$0# goto 39
	cmp dword [rbp + 68], 0
	je printArgument$39

printArgument$32:	; £temporary2086 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

printArgument$33:	; arg_list = £temporary2086
	mov [rbp + 32], rax

printArgument$34:	; £temporary2088 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

printArgument$35:	; £temporary2090 = int_to_int £temporary2088 (Pointer -> Pointer)

printArgument$36:	; £temporary2091 -> £temporary2090 = *£temporary2090

printArgument$37:	; longValue = £temporary2091 -> £temporary2090
	mov rax, [rsi]
	mov [rbp + 114], rax

printArgument$38:	; goto 46
	jmp printArgument$46

printArgument$39:	; £temporary2092 = arg_list + int8$4#
	mov rax, [rbp + 32]
	add rax, 4

printArgument$40:	; arg_list = £temporary2092
	mov [rbp + 32], rax

printArgument$41:	; £temporary2094 = arg_list - int8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

printArgument$42:	; £temporary2096 = int_to_int £temporary2094 (Pointer -> Pointer)

printArgument$43:	; £temporary2097 -> £temporary2096 = *£temporary2096

printArgument$44:	; £temporary2098 = int_to_int £temporary2097 -> £temporary2096 (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printArgument$45
	neg eax
	neg rax

printArgument$45:	; longValue = £temporary2098
	mov [rbp + 114], rax

printArgument$46:	; if negativePtr == int8$0# goto 53
	cmp qword [rbp + 80], 0
	je printArgument$53

printArgument$47:	; £temporary2102 -> negativePtr = *negativePtr
	mov rsi, [rbp + 80]

printArgument$48:	; if longValue >= int8$0# goto 51
	cmp qword [rbp + 114], 0
	jge printArgument$51

printArgument$49:	; £temporary2104 = int4$1#
	mov eax, 1

printArgument$50:	; goto 52
	jmp printArgument$52

printArgument$51:	; £temporary2104 = int4$0#
	mov eax, 0

printArgument$52:	; £temporary2102 -> negativePtr = £temporary2104
	mov [rsi], eax

printArgument$53:	; if sign != int4$0# goto 60
	cmp dword [rbp + 76], 0
	jne printArgument$60

printArgument$54:	; call header integral zero 0 stack zero 0

printArgument$55:	; parameter longValue, offset 146
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

printArgument$56:	; call function noellipse-noellipse labs
	mov qword [rbp + 122], printArgument$57
	mov [rbp + 130], rbp
	add rbp, 122
	jmp labs

printArgument$57:	; post call

printArgument$58:	; £temporary2107 = return_value

printArgument$59:	; longValue = £temporary2107
	mov [rbp + 114], rbx

printArgument$60:	; call header integral zero 0 stack zero 0

printArgument$61:	; parameter arg_list, offset 146
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

printArgument$62:	; parameter widthPtr, offset 154
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

printArgument$63:	; £temporary2108 = &precision
	mov rsi, rbp
	add rsi, 60

printArgument$64:	; parameter £temporary2108, offset 162
	mov [rbp + 162], rsi

printArgument$65:	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 122], printArgument$66
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

printArgument$66:	; post call

printArgument$67:	; £temporary2109 = return_value

printArgument$68:	; arg_list = £temporary2109
	mov [rbp + 32], rbx

printArgument$69:	; call header integral zero 0 stack zero 0

printArgument$70:	; parameter longValue, offset 146
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

printArgument$71:	; parameter plus, offset 154
	mov eax, [rbp + 40]
	mov [rbp + 154], eax

printArgument$72:	; parameter space, offset 158
	mov eax, [rbp + 44]
	mov [rbp + 158], eax

printArgument$73:	; call function noellipse-noellipse printLongInt
	mov qword [rbp + 122], printArgument$74
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printLongInt

printArgument$74:	; post call

printArgument$75:	; goto 372
	jmp printArgument$372

printArgument$76:	; £temporary2111 = arg_list + int8$4#
	mov rax, [rbp + 32]
	add rax, 4

printArgument$77:	; arg_list = £temporary2111
	mov [rbp + 32], rax

printArgument$78:	; £temporary2113 = arg_list - int8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

printArgument$79:	; £temporary2115 = int_to_int £temporary2113 (Pointer -> Pointer)

printArgument$80:	; £temporary2116 -> £temporary2115 = *£temporary2115

printArgument$81:	; £temporary2117 = int_to_int £temporary2116 -> £temporary2115 (Signed_Int -> Signed_Char)
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$82
	neg eax
	neg al

printArgument$82:	; charValue = £temporary2117
	mov [rbp + 89], al

printArgument$83:	; call header integral zero 0 stack zero 0

printArgument$84:	; parameter arg_list, offset 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

printArgument$85:	; parameter widthPtr, offset 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

printArgument$86:	; £temporary2118 = &precision
	mov rsi, rbp
	add rsi, 60

printArgument$87:	; parameter £temporary2118, offset 154
	mov [rbp + 154], rsi

printArgument$88:	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 114], printArgument$89
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

printArgument$89:	; post call

printArgument$90:	; £temporary2119 = return_value

printArgument$91:	; arg_list = £temporary2119
	mov [rbp + 32], rbx

printArgument$92:	; call header integral zero 0 stack zero 0

printArgument$93:	; parameter charValue, offset 138
	mov al, [rbp + 89]
	mov [rbp + 138], al

printArgument$94:	; call function noellipse-noellipse printChar
	mov qword [rbp + 114], printArgument$95
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

printArgument$95:	; post call

printArgument$96:	; goto 372
	jmp printArgument$372

printArgument$97:	; £temporary2121 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

printArgument$98:	; arg_list = £temporary2121
	mov [rbp + 32], rax

printArgument$99:	; £temporary2123 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

printArgument$100:	; £temporary2125 = int_to_int £temporary2123 (Pointer -> Pointer)

printArgument$101:	; £temporary2126 -> £temporary2125 = *£temporary2125

printArgument$102:	; stringValue = £temporary2126 -> £temporary2125
	mov rax, [rsi]
	mov [rbp + 114], rax

printArgument$103:	; call header integral zero 0 stack zero 0

printArgument$104:	; parameter arg_list, offset 146
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

printArgument$105:	; parameter widthPtr, offset 154
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

printArgument$106:	; £temporary2127 = &precision
	mov rsi, rbp
	add rsi, 60

printArgument$107:	; parameter £temporary2127, offset 162
	mov [rbp + 162], rsi

printArgument$108:	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 122], printArgument$109
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

printArgument$109:	; post call

printArgument$110:	; £temporary2128 = return_value

printArgument$111:	; arg_list = £temporary2128
	mov [rbp + 32], rbx

printArgument$112:	; call header integral zero 0 stack zero 0

printArgument$113:	; parameter stringValue, offset 146
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

printArgument$114:	; parameter precision, offset 154
	mov eax, [rbp + 60]
	mov [rbp + 154], eax

printArgument$115:	; call function noellipse-noellipse printString
	mov qword [rbp + 122], printArgument$116
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printString

printArgument$116:	; post call

printArgument$117:	; goto 372
	jmp printArgument$372

printArgument$118:	; if c != int1$117# goto 121
	cmp byte [rbp + 88], 117
	jne printArgument$121

printArgument$119:	; £temporary2135 = int8$10#
	mov rax, 10

printArgument$120:	; goto 130
	jmp printArgument$130

printArgument$121:	; if c != int1$111# goto 124
	cmp byte [rbp + 88], 111
	jne printArgument$124

printArgument$122:	; £temporary2134 = int8$8#
	mov rax, 8

printArgument$123:	; goto 129
	jmp printArgument$129

printArgument$124:	; if c != int1$98# goto 127
	cmp byte [rbp + 88], 98
	jne printArgument$127

printArgument$125:	; £temporary2133 = int8$2#
	mov rax, 2

printArgument$126:	; goto 128
	jmp printArgument$128

printArgument$127:	; £temporary2133 = int8$16#
	mov rax, 16

printArgument$128:	; £temporary2134 = £temporary2133

printArgument$129:	; £temporary2135 = £temporary2134

printArgument$130:	; base = £temporary2135
	mov [rbp + 114], rax

printArgument$131:	; if shortInt == int4$0# goto 141
	cmp dword [rbp + 64], 0
	je printArgument$141

printArgument$132:	; £temporary2136 = arg_list + int8$4#
	mov rax, [rbp + 32]
	add rax, 4

printArgument$133:	; arg_list = £temporary2136
	mov [rbp + 32], rax

printArgument$134:	; £temporary2138 = arg_list - int8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

printArgument$135:	; £temporary2140 = int_to_int £temporary2138 (Pointer -> Pointer)

printArgument$136:	; £temporary2141 -> £temporary2140 = *£temporary2140

printArgument$137:	; £temporary2142 = int_to_int £temporary2141 -> £temporary2140 (Unsigned_Int -> Unsigned_Short_Int)
	mov eax, [rsi]

printArgument$138:	; £temporary2143 = int_to_int £temporary2142 (Unsigned_Short_Int -> Unsigned_Long_Int)
	mov rbx, 65535
	and rax, rbx

printArgument$139:	; value = £temporary2143
	mov [rbp + 122], rax

printArgument$140:	; goto 156
	jmp printArgument$156

printArgument$141:	; if longInt == int4$0# goto 149
	cmp dword [rbp + 68], 0
	je printArgument$149

printArgument$142:	; £temporary2144 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

printArgument$143:	; arg_list = £temporary2144
	mov [rbp + 32], rax

printArgument$144:	; £temporary2146 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

printArgument$145:	; £temporary2148 = int_to_int £temporary2146 (Pointer -> Pointer)

printArgument$146:	; £temporary2149 -> £temporary2148 = *£temporary2148

printArgument$147:	; value = £temporary2149 -> £temporary2148
	mov rax, [rsi]
	mov [rbp + 122], rax

printArgument$148:	; goto 156
	jmp printArgument$156

printArgument$149:	; £temporary2150 = arg_list + int8$4#
	mov rax, [rbp + 32]
	add rax, 4

printArgument$150:	; arg_list = £temporary2150
	mov [rbp + 32], rax

printArgument$151:	; £temporary2152 = arg_list - int8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

printArgument$152:	; £temporary2154 = int_to_int £temporary2152 (Pointer -> Pointer)

printArgument$153:	; £temporary2155 -> £temporary2154 = *£temporary2154

printArgument$154:	; £temporary2156 = int_to_int £temporary2155 -> £temporary2154 (Unsigned_Int -> Unsigned_Long_Int)
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx

printArgument$155:	; value = £temporary2156
	mov [rbp + 122], rax

printArgument$156:	; call header integral zero 0 stack zero 0

printArgument$157:	; parameter arg_list, offset 154
	mov rax, [rbp + 32]
	mov [rbp + 154], rax

printArgument$158:	; parameter widthPtr, offset 162
	mov rax, [rbp + 52]
	mov [rbp + 162], rax

printArgument$159:	; £temporary2159 = &precision
	mov rsi, rbp
	add rsi, 60

printArgument$160:	; parameter £temporary2159, offset 170
	mov [rbp + 170], rsi

printArgument$161:	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 130], printArgument$162
	mov [rbp + 138], rbp
	add rbp, 130
	jmp checkWidthAndPrecision

printArgument$162:	; post call

printArgument$163:	; £temporary2160 = return_value

printArgument$164:	; arg_list = £temporary2160
	mov [rbp + 32], rbx

printArgument$165:	; call header integral zero 0 stack zero 0

printArgument$166:	; parameter value, offset 154
	mov rax, [rbp + 122]
	mov [rbp + 154], rax

printArgument$167:	; parameter plus, offset 162
	mov eax, [rbp + 40]
	mov [rbp + 162], eax

printArgument$168:	; parameter space, offset 166
	mov eax, [rbp + 44]
	mov [rbp + 166], eax

printArgument$169:	; parameter grid, offset 170
	mov eax, [rbp + 48]
	mov [rbp + 170], eax

printArgument$170:	; parameter base, offset 174
	mov rax, [rbp + 114]
	mov [rbp + 174], rax

printArgument$171:	; call header integral zero 0 stack zero 0

printArgument$172:	; £temporary2161 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$173
	neg al
	neg eax

printArgument$173:	; parameter £temporary2161, offset 206
	mov [rbp + 206], eax

printArgument$174:	; call function noellipse-noellipse isupper
	mov qword [rbp + 182], printArgument$175
	mov [rbp + 190], rbp
	add rbp, 182
	jmp isupper

printArgument$175:	; post call

printArgument$176:	; £temporary2162 = return_value

printArgument$177:	; parameter £temporary2162, offset 182
	mov [rbp + 182], ebx

printArgument$178:	; call function noellipse-noellipse printUnsignedLong
	mov qword [rbp + 130], printArgument$179
	mov [rbp + 138], rbp
	add rbp, 130
	jmp printUnsignedLong

printArgument$179:	; post call

printArgument$180:	; goto 372
	jmp printArgument$372

printArgument$181:	; if longDouble == int4$0# goto 199
	cmp dword [rbp + 72], 0
	je printArgument$199

printArgument$182:	; £temporary2164 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

printArgument$183:	; arg_list = £temporary2164
	mov [rbp + 32], rax

printArgument$184:	; £temporary2166 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

printArgument$185:	; £temporary2168 = int_to_int £temporary2166 (Pointer -> Pointer)

printArgument$186:	; £temporary2169 -> £temporary2168 = *£temporary2168

printArgument$187:	; push float £temporary2169 -> £temporary2168
	fld qword [rsi]

printArgument$188:	; pop float longDoubleValue
	fstp qword [rbp + 98]

printArgument$189:	; call header integral zero 0 stack zero 0

printArgument$190:	; push float longDoubleValue
	fld qword [rbp + 98]

printArgument$191:	; parameter longDoubleValue, offset 138
	fstp qword [rbp + 138]

printArgument$192:	; parameter int4$0#, offset 146
	mov dword [rbp + 146], 0

printArgument$193:	; parameter int4$0#, offset 150
	mov dword [rbp + 150], 0

printArgument$194:	; parameter int4$0#, offset 154
	mov dword [rbp + 154], 0

printArgument$195:	; parameter int4$3#, offset 158
	mov dword [rbp + 158], 3

printArgument$196:	; call function noellipse-noellipse printLongDoublePlain
	mov qword [rbp + 114], printArgument$197
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

printArgument$197:	; post call

printArgument$198:	; goto 206
	jmp printArgument$206

printArgument$199:	; £temporary2171 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

printArgument$200:	; arg_list = £temporary2171
	mov [rbp + 32], rax

printArgument$201:	; £temporary2173 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

printArgument$202:	; £temporary2175 = int_to_int £temporary2173 (Pointer -> Pointer)

printArgument$203:	; £temporary2176 -> £temporary2175 = *£temporary2175

printArgument$204:	; push float £temporary2176 -> £temporary2175
	fld qword [rsi]

printArgument$205:	; pop float longDoubleValue
	fstp qword [rbp + 98]

printArgument$206:	; if negativePtr == int8$0# goto 215
	cmp qword [rbp + 80], 0
	je printArgument$215

printArgument$207:	; £temporary2180 -> negativePtr = *negativePtr
	mov rsi, [rbp + 80]

printArgument$208:	; push float longDoubleValue
	fld qword [rbp + 98]

printArgument$209:	; push float float8$0#
	fldz 

printArgument$210:	; if longDoubleValue >= float8$0# goto 213
	fcompp 
	fstsw ax
	sahf 
	jbe printArgument$213

printArgument$211:	; £temporary2182 = int4$1#
	mov eax, 1

printArgument$212:	; goto 214
	jmp printArgument$214

printArgument$213:	; £temporary2182 = int4$0#
	mov eax, 0

printArgument$214:	; £temporary2180 -> negativePtr = £temporary2182
	mov [rsi], eax

printArgument$215:	; if sign != int4$0# goto 223
	cmp dword [rbp + 76], 0
	jne printArgument$223

printArgument$216:	; call header integral zero 0 stack zero 0

printArgument$217:	; push float longDoubleValue
	fld qword [rbp + 98]

printArgument$218:	; parameter longDoubleValue, offset 138
	fstp qword [rbp + 138]

printArgument$219:	; call function noellipse-noellipse fabs
	mov qword [rbp + 114], printArgument$220
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

printArgument$220:	; post call

printArgument$221:	; £temporary2185 = return_value

printArgument$222:	; pop float longDoubleValue
	fstp qword [rbp + 98]

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; parameter arg_list, offset 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

printArgument$225:	; parameter widthPtr, offset 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

printArgument$226:	; £temporary2186 = &precision
	mov rsi, rbp
	add rsi, 60

printArgument$227:	; parameter £temporary2186, offset 154
	mov [rbp + 154], rsi

printArgument$228:	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 114], printArgument$229
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

printArgument$229:	; post call

printArgument$230:	; £temporary2187 = return_value

printArgument$231:	; arg_list = £temporary2187
	mov [rbp + 32], rbx

printArgument$232:	; if c != int1$102# goto 243
	cmp byte [rbp + 88], 102
	jne printArgument$243

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; push float longDoubleValue
	fld qword [rbp + 98]

printArgument$235:	; parameter longDoubleValue, offset 138
	fstp qword [rbp + 138]

printArgument$236:	; parameter plus, offset 146
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

printArgument$237:	; parameter space, offset 150
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

printArgument$238:	; parameter grid, offset 154
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

printArgument$239:	; parameter precision, offset 158
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

printArgument$240:	; call function noellipse-noellipse printLongDoublePlain
	mov qword [rbp + 114], printArgument$241
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

printArgument$241:	; post call

printArgument$242:	; goto 372
	jmp printArgument$372

printArgument$243:	; call header integral zero 0 stack zero 0

printArgument$244:	; £temporary2190 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$245
	neg al
	neg eax

printArgument$245:	; parameter £temporary2190, offset 138
	mov [rbp + 138], eax

printArgument$246:	; call function noellipse-noellipse tolower
	mov qword [rbp + 114], printArgument$247
	mov [rbp + 122], rbp
	add rbp, 114
	jmp tolower

printArgument$247:	; post call

printArgument$248:	; £temporary2191 = return_value

printArgument$249:	; if £temporary2191 != int4$101# goto 267
	cmp ebx, 101
	jne printArgument$267

printArgument$250:	; call header integral zero 0 stack zero 0

printArgument$251:	; push float longDoubleValue
	fld qword [rbp + 98]

printArgument$252:	; parameter longDoubleValue, offset 138
	fstp qword [rbp + 138]

printArgument$253:	; parameter plus, offset 146
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

printArgument$254:	; parameter space, offset 150
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

printArgument$255:	; parameter grid, offset 154
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

printArgument$256:	; parameter precision, offset 158
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; £temporary2193 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$259
	neg al
	neg eax

printArgument$259:	; parameter £temporary2193, offset 186
	mov [rbp + 186], eax

printArgument$260:	; call function noellipse-noellipse isupper
	mov qword [rbp + 162], printArgument$261
	mov [rbp + 170], rbp
	add rbp, 162
	jmp isupper

printArgument$261:	; post call

printArgument$262:	; £temporary2194 = return_value

printArgument$263:	; parameter £temporary2194, offset 162
	mov [rbp + 162], ebx

printArgument$264:	; call function noellipse-noellipse printLongDoubleExpo
	mov qword [rbp + 114], printArgument$265
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoubleExpo

printArgument$265:	; post call

printArgument$266:	; goto 372
	jmp printArgument$372

printArgument$267:	; call header integral zero 0 stack zero 0

printArgument$268:	; call header integral zero 0 stack zero 0

printArgument$269:	; push float longDoubleValue
	fld qword [rbp + 98]

printArgument$270:	; parameter longDoubleValue, offset 138
	fstp qword [rbp + 138]

printArgument$271:	; call function noellipse-noellipse fabs
	mov qword [rbp + 114], printArgument$272
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

printArgument$272:	; post call

printArgument$273:	; £temporary2196 = return_value

printArgument$274:	; parameter £temporary2196, offset 138
	fstp qword [rbp + 138]

printArgument$275:	; call function noellipse-noellipse log10
	mov qword [rbp + 114], printArgument$276
	mov [rbp + 122], rbp
	add rbp, 114
	jmp log10

printArgument$276:	; post call

printArgument$277:	; £temporary2197 = return_value

printArgument$278:	; £temporary2198 = float_to_int £temporary2197 (Double -> Signed_Int)
	fistp word [$IntegralStorage#]
	mov eax, [$IntegralStorage#]

printArgument$279:	; expo = £temporary2198
	mov [rbp + 114], eax

printArgument$280:	; if expo < int4$minus3# goto 292
	cmp dword [rbp + 114], -3
	jl printArgument$292

printArgument$281:	; if expo > int4$2# goto 292
	cmp dword [rbp + 114], 2
	jg printArgument$292

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
	fld qword [rbp + 98]

printArgument$284:	; parameter longDoubleValue, offset 142
	fstp qword [rbp + 142]

printArgument$285:	; parameter plus, offset 150
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

printArgument$286:	; parameter space, offset 154
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

printArgument$287:	; parameter grid, offset 158
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

printArgument$288:	; parameter precision, offset 162
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

printArgument$289:	; call function noellipse-noellipse printLongDoublePlain
	mov qword [rbp + 118], printArgument$290
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoublePlain

printArgument$290:	; post call

printArgument$291:	; goto 372
	jmp printArgument$372

printArgument$292:	; call header integral zero 0 stack zero 0

printArgument$293:	; push float longDoubleValue
	fld qword [rbp + 98]

printArgument$294:	; parameter longDoubleValue, offset 142
	fstp qword [rbp + 142]

printArgument$295:	; parameter plus, offset 150
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

printArgument$296:	; parameter space, offset 154
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

printArgument$297:	; parameter grid, offset 158
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

printArgument$298:	; parameter precision, offset 162
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

printArgument$299:	; call header integral zero 0 stack zero 0

printArgument$300:	; £temporary2203 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$301
	neg al
	neg eax

printArgument$301:	; parameter £temporary2203, offset 190
	mov [rbp + 190], eax

printArgument$302:	; call function noellipse-noellipse isupper
	mov qword [rbp + 166], printArgument$303
	mov [rbp + 174], rbp
	add rbp, 166
	jmp isupper

printArgument$303:	; post call

printArgument$304:	; £temporary2204 = return_value

printArgument$305:	; parameter £temporary2204, offset 166
	mov [rbp + 166], ebx

printArgument$306:	; call function noellipse-noellipse printLongDoubleExpo
	mov qword [rbp + 118], printArgument$307
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoubleExpo

printArgument$307:	; post call

printArgument$308:	; goto 372
	jmp printArgument$372

printArgument$309:	; £temporary2206 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

printArgument$310:	; arg_list = £temporary2206
	mov [rbp + 32], rax

printArgument$311:	; £temporary2208 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

printArgument$312:	; £temporary2210 = int_to_int £temporary2208 (Pointer -> Pointer)

printArgument$313:	; £temporary2211 -> £temporary2210 = *£temporary2210

printArgument$314:	; ptrValue = £temporary2211 -> £temporary2210
	mov rax, [rsi]
	mov [rbp + 106], rax

printArgument$315:	; call header integral zero 0 stack zero 0

printArgument$316:	; parameter arg_list, offset 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

printArgument$317:	; parameter widthPtr, offset 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

printArgument$318:	; £temporary2212 = &precision
	mov rsi, rbp
	add rsi, 60

printArgument$319:	; parameter £temporary2212, offset 154
	mov [rbp + 154], rsi

printArgument$320:	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 114], printArgument$321
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

printArgument$321:	; post call

printArgument$322:	; £temporary2213 = return_value

printArgument$323:	; arg_list = £temporary2213
	mov [rbp + 32], rbx

printArgument$324:	; call header integral zero 0 stack zero 0

printArgument$325:	; £temporary2214 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
	mov rax, [rbp + 106]

printArgument$326:	; parameter £temporary2214, offset 138
	mov [rbp + 138], rax

printArgument$327:	; parameter int4$0#, offset 146
	mov dword [rbp + 146], 0

printArgument$328:	; parameter int4$0#, offset 150
	mov dword [rbp + 150], 0

printArgument$329:	; parameter int4$0#, offset 154
	mov dword [rbp + 154], 0

printArgument$330:	; parameter int8$10#, offset 158
	mov rax, 10
	mov [rbp + 158], rax

printArgument$331:	; parameter int4$0#, offset 166
	mov dword [rbp + 166], 0

printArgument$332:	; call function noellipse-noellipse printUnsignedLong
	mov qword [rbp + 114], printArgument$333
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printUnsignedLong

printArgument$333:	; post call

printArgument$334:	; goto 372
	jmp printArgument$372

printArgument$335:	; £temporary2216 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

printArgument$336:	; arg_list = £temporary2216
	mov [rbp + 32], rax

printArgument$337:	; £temporary2218 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

printArgument$338:	; £temporary2220 = int_to_int £temporary2218 (Pointer -> Pointer)

printArgument$339:	; £temporary2221 -> £temporary2220 = *£temporary2220

printArgument$340:	; ptrValue = £temporary2221 -> £temporary2220
	mov rax, [rsi]
	mov [rbp + 106], rax

printArgument$341:	; £temporary2222 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

printArgument$342:	; arg_list = £temporary2222
	mov [rbp + 32], rax

printArgument$343:	; £temporary2224 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

printArgument$344:	; £temporary2226 = int_to_int £temporary2224 (Pointer -> Pointer)

printArgument$345:	; £temporary2227 -> £temporary2226 = *£temporary2226

printArgument$346:	; intPtr = £temporary2227 -> £temporary2226
	mov rax, [rsi]
	mov [rbp + 90], rax

printArgument$347:	; call header integral zero 0 stack zero 0

printArgument$348:	; parameter arg_list, offset 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

printArgument$349:	; parameter widthPtr, offset 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

printArgument$350:	; £temporary2228 = &precision
	mov rsi, rbp
	add rsi, 60

printArgument$351:	; parameter £temporary2228, offset 154
	mov [rbp + 154], rsi

printArgument$352:	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 114], printArgument$353
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

printArgument$353:	; post call

printArgument$354:	; £temporary2229 = return_value

printArgument$355:	; arg_list = £temporary2229
	mov [rbp + 32], rbx

printArgument$356:	; £temporary2230 -> intPtr = *intPtr
	mov rsi, [rbp + 90]

printArgument$357:	; £temporary2230 -> intPtr = g_outChars
	mov eax, [g_outChars]
	mov [rsi], eax

printArgument$358:	; goto 372
	jmp printArgument$372

printArgument$359:	; call header integral zero 0 stack zero 0

printArgument$360:	; parameter arg_list, offset 138
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

printArgument$361:	; parameter widthPtr, offset 146
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

printArgument$362:	; £temporary2231 = &precision
	mov rsi, rbp
	add rsi, 60

printArgument$363:	; parameter £temporary2231, offset 154
	mov [rbp + 154], rsi

printArgument$364:	; call function noellipse-noellipse checkWidthAndPrecision
	mov qword [rbp + 114], printArgument$365
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

printArgument$365:	; post call

printArgument$366:	; £temporary2232 = return_value

printArgument$367:	; arg_list = £temporary2232
	mov [rbp + 32], rbx

printArgument$368:	; call header integral zero 0 stack zero 0

printArgument$369:	; parameter int1$37#, offset 138
	mov byte [rbp + 138], 37

printArgument$370:	; call function noellipse-noellipse printChar
	mov qword [rbp + 114], printArgument$371
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

printArgument$371:	; post call

printArgument$372:	; return_value = arg_list
	mov rbx, [rbp + 32]

printArgument$373:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printArgument$374:	; function end printArgument

printFormat:	; width = int4$0#
	mov dword [rbp + 44], 0

printFormat$1:	; precision = int4$0#
	mov dword [rbp + 48], 0

printFormat$2:	; percent = int4$0#
	mov dword [rbp + 52], 0

printFormat$3:	; plus = int4$0#
	mov dword [rbp + 56], 0

printFormat$4:	; minus = int4$0#
	mov dword [rbp + 60], 0

printFormat$5:	; space = int4$0#
	mov dword [rbp + 64], 0

printFormat$6:	; zero = int4$0#
	mov dword [rbp + 68], 0

printFormat$7:	; grid = int4$0#
	mov dword [rbp + 72], 0

printFormat$8:	; widthStar = int4$0#
	mov dword [rbp + 76], 0

printFormat$9:	; period = int4$0#
	mov dword [rbp + 80], 0

printFormat$10:	; precisionStar = int4$0#
	mov dword [rbp + 84], 0

printFormat$11:	; shortInt = int4$0#
	mov dword [rbp + 88], 0

printFormat$12:	; longInt = int4$0#
	mov dword [rbp + 92], 0

printFormat$13:	; longDouble = int4$0#
	mov dword [rbp + 96], 0

printFormat$14:	; g_outChars = int4$0#
	mov dword [g_outChars], 0

printFormat$15:	; index = int4$0#
	mov dword [rbp + 40], 0

printFormat$16:	; £temporary2321 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

printFormat$17:	; £temporary2323 = format + £temporary2321
	mov rsi, [rbp + 24]
	add rsi, rax

printFormat$18:	; £temporary2320 -> £temporary2323 = *£temporary2323

printFormat$19:	; if £temporary2320 -> £temporary2323 == int1$0# goto 297
	cmp byte [rsi], 0
	je printFormat$297

printFormat$20:	; £temporary2327 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

printFormat$21:	; £temporary2329 = format + £temporary2327
	mov rsi, [rbp + 24]
	add rsi, rax

printFormat$22:	; £temporary2326 -> £temporary2329 = *£temporary2329

printFormat$23:	; c = £temporary2326 -> £temporary2329
	mov al, [rsi]
	mov [rbp + 100], al

printFormat$24:	; if percent == int4$0# goto 275
	cmp dword [rbp + 52], 0
	je printFormat$275

printFormat$25:	; case c == int1$43# goto 54
	mov al, [rbp + 100]
	cmp al, 43
	je printFormat$54

printFormat$26:	; case c == int1$45# goto 56
	cmp al, 45
	je printFormat$56

printFormat$27:	; case c == int1$32# goto 58
	cmp al, 32
	je printFormat$58

printFormat$28:	; case c == int1$48# goto 60
	cmp al, 48
	je printFormat$60

printFormat$29:	; case c == int1$35# goto 62
	cmp al, 35
	je printFormat$62

printFormat$30:	; case c == int1$46# goto 64
	cmp al, 46
	je printFormat$64

printFormat$31:	; case c == int1$42# goto 66
	cmp al, 42
	je printFormat$66

printFormat$32:	; case c == int1$104# goto 71
	cmp al, 104
	je printFormat$71

printFormat$33:	; case c == int1$108# goto 73
	cmp al, 108
	je printFormat$73

printFormat$34:	; case c == int1$76# goto 75
	cmp al, 76
	je printFormat$75

printFormat$35:	; case c == int1$37# goto 77
	cmp al, 37
	je printFormat$77

printFormat$36:	; case c == int1$110# goto 77
	cmp al, 110
	je printFormat$77

printFormat$37:	; case c == int1$112# goto 77
	cmp al, 112
	je printFormat$77

printFormat$38:	; case c == int1$71# goto 77
	cmp al, 71
	je printFormat$77

printFormat$39:	; case c == int1$103# goto 77
	cmp al, 103
	je printFormat$77

printFormat$40:	; case c == int1$69# goto 77
	cmp al, 69
	je printFormat$77

printFormat$41:	; case c == int1$101# goto 77
	cmp al, 101
	je printFormat$77

printFormat$42:	; case c == int1$102# goto 77
	cmp al, 102
	je printFormat$77

printFormat$43:	; case c == int1$115# goto 77
	cmp al, 115
	je printFormat$77

printFormat$44:	; case c == int1$99# goto 77
	cmp al, 99
	je printFormat$77

printFormat$45:	; case c == int1$88# goto 77
	cmp al, 88
	je printFormat$77

printFormat$46:	; case c == int1$120# goto 77
	cmp al, 120
	je printFormat$77

printFormat$47:	; case c == int1$111# goto 77
	cmp al, 111
	je printFormat$77

printFormat$48:	; case c == int1$98# goto 77
	cmp al, 98
	je printFormat$77

printFormat$49:	; case c == int1$117# goto 77
	cmp al, 117
	je printFormat$77

printFormat$50:	; case c == int1$100# goto 77
	cmp al, 100
	je printFormat$77

printFormat$51:	; case c == int1$105# goto 77
	cmp al, 105
	je printFormat$77

printFormat$52:	; case end c

printFormat$53:	; goto 249
	jmp printFormat$249

printFormat$54:	; plus = int4$1#
	mov dword [rbp + 56], 1

printFormat$55:	; goto 295
	jmp printFormat$295

printFormat$56:	; minus = int4$1#
	mov dword [rbp + 60], 1

printFormat$57:	; goto 295
	jmp printFormat$295

printFormat$58:	; space = int4$1#
	mov dword [rbp + 64], 1

printFormat$59:	; goto 295
	jmp printFormat$295

printFormat$60:	; zero = int4$1#
	mov dword [rbp + 68], 1

printFormat$61:	; goto 295
	jmp printFormat$295

printFormat$62:	; grid = int4$1#
	mov dword [rbp + 72], 1

printFormat$63:	; goto 295
	jmp printFormat$295

printFormat$64:	; period = int4$1#
	mov dword [rbp + 80], 1

printFormat$65:	; goto 295
	jmp printFormat$295

printFormat$66:	; if period != int4$0# goto 69
	cmp dword [rbp + 80], 0
	jne printFormat$69

printFormat$67:	; width = int4$minus1#
	mov dword [rbp + 44], -1

printFormat$68:	; goto 295
	jmp printFormat$295

printFormat$69:	; precision = int4$minus1#
	mov dword [rbp + 48], -1

printFormat$70:	; goto 295
	jmp printFormat$295

printFormat$71:	; shortInt = int4$1#
	mov dword [rbp + 88], 1

printFormat$72:	; goto 295
	jmp printFormat$295

printFormat$73:	; longInt = int4$1#
	mov dword [rbp + 92], 1

printFormat$74:	; goto 295
	jmp printFormat$295

printFormat$75:	; longDouble = int4$1#
	mov dword [rbp + 96], 1

printFormat$76:	; goto 295
	jmp printFormat$295

printFormat$77:	; if minus == int4$0# goto 111
	cmp dword [rbp + 60], 0
	je printFormat$111

printFormat$78:	; startChars = g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

printFormat$79:	; call header integral zero 0 stack zero 0

printFormat$80:	; £temporary2333 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

printFormat$81:	; £temporary2335 = format + £temporary2333
	mov rsi, [rbp + 24]
	add rsi, rax

printFormat$82:	; £temporary2332 -> £temporary2335 = *£temporary2335

printFormat$83:	; £temporary2336 = &£temporary2332 -> £temporary2335

printFormat$84:	; parameter £temporary2336, offset 129
	mov [rbp + 129], rsi

printFormat$85:	; parameter arg_list, offset 137
	mov rax, [rbp + 32]
	mov [rbp + 137], rax

printFormat$86:	; parameter plus, offset 145
	mov eax, [rbp + 56]
	mov [rbp + 145], eax

printFormat$87:	; parameter space, offset 149
	mov eax, [rbp + 64]
	mov [rbp + 149], eax

printFormat$88:	; parameter grid, offset 153
	mov eax, [rbp + 72]
	mov [rbp + 153], eax

printFormat$89:	; £temporary2337 = &width
	mov rsi, rbp
	add rsi, 44

printFormat$90:	; parameter £temporary2337, offset 157
	mov [rbp + 157], rsi

printFormat$91:	; parameter precision, offset 165
	mov eax, [rbp + 48]
	mov [rbp + 165], eax

printFormat$92:	; parameter shortInt, offset 169
	mov eax, [rbp + 88]
	mov [rbp + 169], eax

printFormat$93:	; parameter longInt, offset 173
	mov eax, [rbp + 92]
	mov [rbp + 173], eax

printFormat$94:	; parameter longDouble, offset 177
	mov eax, [rbp + 96]
	mov [rbp + 177], eax

printFormat$95:	; parameter int4$1#, offset 181
	mov dword [rbp + 181], 1

printFormat$96:	; parameter int8$0#, offset 185
	mov rax, 0
	mov [rbp + 185], rax

printFormat$97:	; call function noellipse-noellipse printArgument
	mov qword [rbp + 105], printFormat$98
	mov [rbp + 113], rbp
	add rbp, 105
	jmp printArgument

printFormat$98:	; post call

printFormat$99:	; £temporary2338 = return_value

printFormat$100:	; arg_list = £temporary2338
	mov [rbp + 32], rbx

printFormat$101:	; £temporary2339 = g_outChars - startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]

printFormat$102:	; field = £temporary2339
	mov [rbp + 105], eax

printFormat$103:	; £temporary2340 = field
	mov eax, [rbp + 105]

printFormat$104:	; ++field
	inc dword [rbp + 105]

printFormat$105:	; if £temporary2340 >= width goto 247
	cmp eax, [rbp + 44]
	jge printFormat$247

printFormat$106:	; call header integral zero 0 stack zero 0

printFormat$107:	; parameter int1$32#, offset 133
	mov byte [rbp + 133], 32

printFormat$108:	; call function noellipse-noellipse printChar
	mov qword [rbp + 109], printFormat$109
	mov [rbp + 117], rbp
	add rbp, 109
	jmp printChar

printFormat$109:	; post call

printFormat$110:	; goto 103
	jmp printFormat$103

printFormat$111:	; if zero == int4$0# goto 191
	cmp dword [rbp + 68], 0
	je printFormat$191

printFormat$112:	; startChars = g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

printFormat$113:	; oldOutStatus = g_outStatus
	mov eax, [g_outStatus]
	mov [rbp + 105], eax

printFormat$114:	; negative = int4$0#
	mov dword [rbp + 109], 0

printFormat$115:	; g_outStatus = int4$2#
	mov dword [g_outStatus], 2

printFormat$116:	; call header integral zero 0 stack zero 0

printFormat$117:	; £temporary2344 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

printFormat$118:	; £temporary2346 = format + £temporary2344
	mov rsi, [rbp + 24]
	add rsi, rax

printFormat$119:	; £temporary2343 -> £temporary2346 = *£temporary2346

printFormat$120:	; £temporary2347 = &£temporary2343 -> £temporary2346

printFormat$121:	; parameter £temporary2347, offset 137
	mov [rbp + 137], rsi

printFormat$122:	; parameter arg_list, offset 145
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

printFormat$123:	; parameter int4$0#, offset 153
	mov dword [rbp + 153], 0

printFormat$124:	; parameter int4$0#, offset 157
	mov dword [rbp + 157], 0

printFormat$125:	; parameter grid, offset 161
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

printFormat$126:	; £temporary2348 = &width
	mov rsi, rbp
	add rsi, 44

printFormat$127:	; parameter £temporary2348, offset 165
	mov [rbp + 165], rsi

printFormat$128:	; parameter precision, offset 173
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

printFormat$129:	; parameter shortInt, offset 177
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

printFormat$130:	; parameter longInt, offset 181
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

printFormat$131:	; parameter longDouble, offset 185
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

printFormat$132:	; parameter int4$0#, offset 189
	mov dword [rbp + 189], 0

printFormat$133:	; £temporary2349 = &negative
	mov rsi, rbp
	add rsi, 109

printFormat$134:	; parameter £temporary2349, offset 193
	mov [rbp + 193], rsi

printFormat$135:	; call function noellipse-noellipse printArgument
	mov qword [rbp + 113], printFormat$136
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printArgument

printFormat$136:	; post call

printFormat$137:	; g_outStatus = oldOutStatus
	mov eax, [rbp + 105]
	mov [g_outStatus], eax

printFormat$138:	; £temporary2351 = g_outChars - startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]

printFormat$139:	; field = £temporary2351
	mov [rbp + 113], eax

printFormat$140:	; g_outChars = startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

printFormat$141:	; if negative == int4$0# goto 148
	cmp dword [rbp + 109], 0
	je printFormat$148

printFormat$142:	; call header integral zero 0 stack zero 0

printFormat$143:	; parameter int1$45#, offset 141
	mov byte [rbp + 141], 45

printFormat$144:	; call function noellipse-noellipse printChar
	mov qword [rbp + 117], printFormat$145
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

printFormat$145:	; post call

printFormat$146:	; ++field
	inc dword [rbp + 113]

printFormat$147:	; goto 161
	jmp printFormat$161

printFormat$148:	; if plus == int4$0# goto 155
	cmp dword [rbp + 56], 0
	je printFormat$155

printFormat$149:	; call header integral zero 0 stack zero 0

printFormat$150:	; parameter int1$43#, offset 141
	mov byte [rbp + 141], 43

printFormat$151:	; call function noellipse-noellipse printChar
	mov qword [rbp + 117], printFormat$152
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

printFormat$152:	; post call

printFormat$153:	; ++field
	inc dword [rbp + 113]

printFormat$154:	; goto 161
	jmp printFormat$161

printFormat$155:	; if space == int4$0# goto 161
	cmp dword [rbp + 64], 0
	je printFormat$161

printFormat$156:	; call header integral zero 0 stack zero 0

printFormat$157:	; parameter int1$32#, offset 141
	mov byte [rbp + 141], 32

printFormat$158:	; call function noellipse-noellipse printChar
	mov qword [rbp + 117], printFormat$159
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

printFormat$159:	; post call

printFormat$160:	; ++field
	inc dword [rbp + 113]

printFormat$161:	; £temporary2361 = field
	mov eax, [rbp + 113]

printFormat$162:	; ++field
	inc dword [rbp + 113]

printFormat$163:	; if £temporary2361 >= width goto 169
	cmp eax, [rbp + 44]
	jge printFormat$169

printFormat$164:	; call header integral zero 0 stack zero 0

printFormat$165:	; parameter int1$48#, offset 141
	mov byte [rbp + 141], 48

printFormat$166:	; call function noellipse-noellipse printChar
	mov qword [rbp + 117], printFormat$167
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

printFormat$167:	; post call

printFormat$168:	; goto 161
	jmp printFormat$161

printFormat$169:	; call header integral zero 0 stack zero 0

printFormat$170:	; £temporary2365 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

printFormat$171:	; £temporary2367 = format + £temporary2365
	mov rsi, [rbp + 24]
	add rsi, rax

printFormat$172:	; £temporary2364 -> £temporary2367 = *£temporary2367

printFormat$173:	; £temporary2368 = &£temporary2364 -> £temporary2367

printFormat$174:	; parameter £temporary2368, offset 141
	mov [rbp + 141], rsi

printFormat$175:	; parameter arg_list, offset 149
	mov rax, [rbp + 32]
	mov [rbp + 149], rax

printFormat$176:	; parameter int4$0#, offset 157
	mov dword [rbp + 157], 0

printFormat$177:	; parameter int4$0#, offset 161
	mov dword [rbp + 161], 0

printFormat$178:	; parameter grid, offset 165
	mov eax, [rbp + 72]
	mov [rbp + 165], eax

printFormat$179:	; parameter int8$0#, offset 169
	mov rax, 0
	mov [rbp + 169], rax

printFormat$180:	; parameter precision, offset 177
	mov eax, [rbp + 48]
	mov [rbp + 177], eax

printFormat$181:	; parameter shortInt, offset 181
	mov eax, [rbp + 88]
	mov [rbp + 181], eax

printFormat$182:	; parameter longInt, offset 185
	mov eax, [rbp + 92]
	mov [rbp + 185], eax

printFormat$183:	; parameter longDouble, offset 189
	mov eax, [rbp + 96]
	mov [rbp + 189], eax

printFormat$184:	; parameter int4$0#, offset 193
	mov dword [rbp + 193], 0

printFormat$185:	; parameter int8$0#, offset 197
	mov rax, 0
	mov [rbp + 197], rax

printFormat$186:	; call function noellipse-noellipse printArgument
	mov qword [rbp + 117], printFormat$187
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printArgument

printFormat$187:	; post call

printFormat$188:	; £temporary2369 = return_value

printFormat$189:	; arg_list = £temporary2369
	mov [rbp + 32], rbx

printFormat$190:	; goto 247
	jmp printFormat$247

printFormat$191:	; startChars = g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

printFormat$192:	; oldOutStatus = g_outStatus
	mov eax, [g_outStatus]
	mov [rbp + 105], eax

printFormat$193:	; g_outStatus = int4$2#
	mov dword [g_outStatus], 2

printFormat$194:	; call header integral zero 0 stack zero 0

printFormat$195:	; £temporary2371 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

printFormat$196:	; £temporary2373 = format + £temporary2371
	mov rsi, [rbp + 24]
	add rsi, rax

printFormat$197:	; £temporary2370 -> £temporary2373 = *£temporary2373

printFormat$198:	; £temporary2374 = &£temporary2370 -> £temporary2373

printFormat$199:	; parameter £temporary2374, offset 133
	mov [rbp + 133], rsi

printFormat$200:	; parameter arg_list, offset 141
	mov rax, [rbp + 32]
	mov [rbp + 141], rax

printFormat$201:	; parameter plus, offset 149
	mov eax, [rbp + 56]
	mov [rbp + 149], eax

printFormat$202:	; parameter space, offset 153
	mov eax, [rbp + 64]
	mov [rbp + 153], eax

printFormat$203:	; parameter grid, offset 157
	mov eax, [rbp + 72]
	mov [rbp + 157], eax

printFormat$204:	; £temporary2375 = &width
	mov rsi, rbp
	add rsi, 44

printFormat$205:	; parameter £temporary2375, offset 161
	mov [rbp + 161], rsi

printFormat$206:	; parameter precision, offset 169
	mov eax, [rbp + 48]
	mov [rbp + 169], eax

printFormat$207:	; parameter shortInt, offset 173
	mov eax, [rbp + 88]
	mov [rbp + 173], eax

printFormat$208:	; parameter longInt, offset 177
	mov eax, [rbp + 92]
	mov [rbp + 177], eax

printFormat$209:	; parameter longDouble, offset 181
	mov eax, [rbp + 96]
	mov [rbp + 181], eax

printFormat$210:	; parameter int4$1#, offset 185
	mov dword [rbp + 185], 1

printFormat$211:	; parameter int8$0#, offset 189
	mov rax, 0
	mov [rbp + 189], rax

printFormat$212:	; call function noellipse-noellipse printArgument
	mov qword [rbp + 109], printFormat$213
	mov [rbp + 117], rbp
	add rbp, 109
	jmp printArgument

printFormat$213:	; post call

printFormat$214:	; g_outStatus = oldOutStatus
	mov eax, [rbp + 105]
	mov [g_outStatus], eax

printFormat$215:	; £temporary2377 = g_outChars - startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]

printFormat$216:	; field = £temporary2377
	mov [rbp + 109], eax

printFormat$217:	; g_outChars = startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

printFormat$218:	; £temporary2378 = field
	mov eax, [rbp + 109]

printFormat$219:	; ++field
	inc dword [rbp + 109]

printFormat$220:	; if £temporary2378 >= width goto 226
	cmp eax, [rbp + 44]
	jge printFormat$226

printFormat$221:	; call header integral zero 0 stack zero 0

printFormat$222:	; parameter int1$32#, offset 137
	mov byte [rbp + 137], 32

printFormat$223:	; call function noellipse-noellipse printChar
	mov qword [rbp + 113], printFormat$224
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printChar

printFormat$224:	; post call

printFormat$225:	; goto 218
	jmp printFormat$218

printFormat$226:	; call header integral zero 0 stack zero 0

printFormat$227:	; £temporary2382 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

printFormat$228:	; £temporary2384 = format + £temporary2382
	mov rsi, [rbp + 24]
	add rsi, rax

printFormat$229:	; £temporary2381 -> £temporary2384 = *£temporary2384

printFormat$230:	; £temporary2385 = &£temporary2381 -> £temporary2384

printFormat$231:	; parameter £temporary2385, offset 137
	mov [rbp + 137], rsi

printFormat$232:	; parameter arg_list, offset 145
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

printFormat$233:	; parameter plus, offset 153
	mov eax, [rbp + 56]
	mov [rbp + 153], eax

printFormat$234:	; parameter space, offset 157
	mov eax, [rbp + 64]
	mov [rbp + 157], eax

printFormat$235:	; parameter grid, offset 161
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

printFormat$236:	; parameter int8$0#, offset 165
	mov rax, 0
	mov [rbp + 165], rax

printFormat$237:	; parameter precision, offset 173
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

printFormat$238:	; parameter shortInt, offset 177
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

printFormat$239:	; parameter longInt, offset 181
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

printFormat$240:	; parameter longDouble, offset 185
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

printFormat$241:	; parameter int4$1#, offset 189
	mov dword [rbp + 189], 1

printFormat$242:	; parameter int8$0#, offset 193
	mov rax, 0
	mov [rbp + 193], rax

printFormat$243:	; call function noellipse-noellipse printArgument
	mov qword [rbp + 113], printFormat$244
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printArgument

printFormat$244:	; post call

printFormat$245:	; £temporary2386 = return_value

printFormat$246:	; arg_list = £temporary2386
	mov [rbp + 32], rbx

printFormat$247:	; percent = int4$0#
	mov dword [rbp + 52], 0

printFormat$248:	; goto 295
	jmp printFormat$295

printFormat$249:	; value = int4$0#
	mov dword [rbp + 101], 0

printFormat$250:	; call header integral zero 0 stack zero 0

printFormat$251:	; £temporary2389 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 100]
	and eax, 255
	cmp al, 0
	jge printFormat$252
	neg al
	neg eax

printFormat$252:	; parameter £temporary2389, offset 129
	mov [rbp + 129], eax

printFormat$253:	; call function noellipse-noellipse isdigit
	mov qword [rbp + 105], printFormat$254
	mov [rbp + 113], rbp
	add rbp, 105
	jmp isdigit

printFormat$254:	; post call

printFormat$255:	; £temporary2390 = return_value

printFormat$256:	; if £temporary2390 == int4$0# goto 269
	cmp ebx, 0
	je printFormat$269

printFormat$257:	; £temporary2391 = value * int4$10#
	mov eax, [rbp + 101]
	xor edx, edx
	imul dword [int4$10#]

printFormat$258:	; £temporary2392 = c - int1$48#
	mov bl, [rbp + 100]
	sub bl, 48

printFormat$259:	; £temporary2393 = int_to_int £temporary2392 (Signed_Char -> Signed_Int)
	and ebx, 255
	cmp bl, 0
	jge printFormat$260
	neg bl
	neg ebx

printFormat$260:	; £temporary2394 = £temporary2391 + £temporary2393
	add eax, ebx

printFormat$261:	; value = £temporary2394
	mov [rbp + 101], eax

printFormat$262:	; ++index
	inc dword [rbp + 40]

printFormat$263:	; £temporary2395 = index
	mov eax, [rbp + 40]

printFormat$264:	; £temporary2397 = int_to_int £temporary2395 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

printFormat$265:	; £temporary2399 = format + £temporary2397
	mov rsi, [rbp + 24]
	add rsi, rax

printFormat$266:	; £temporary2396 -> £temporary2399 = *£temporary2399

printFormat$267:	; c = £temporary2396 -> £temporary2399
	mov al, [rsi]
	mov [rbp + 100], al

printFormat$268:	; goto 250
	jmp printFormat$250

printFormat$269:	; --index
	dec dword [rbp + 40]

printFormat$270:	; if period != int4$0# goto 273
	cmp dword [rbp + 80], 0
	jne printFormat$273

printFormat$271:	; width = value
	mov eax, [rbp + 101]
	mov [rbp + 44], eax

printFormat$272:	; goto 295
	jmp printFormat$295

printFormat$273:	; precision = value
	mov eax, [rbp + 101]
	mov [rbp + 48], eax

printFormat$274:	; goto 295
	jmp printFormat$295

printFormat$275:	; if c != int1$37# goto 291
	cmp byte [rbp + 100], 37
	jne printFormat$291

printFormat$276:	; percent = int4$1#
	mov dword [rbp + 52], 1

printFormat$277:	; plus = int4$0#
	mov dword [rbp + 56], 0

printFormat$278:	; minus = int4$0#
	mov dword [rbp + 60], 0

printFormat$279:	; space = int4$0#
	mov dword [rbp + 64], 0

printFormat$280:	; zero = int4$0#
	mov dword [rbp + 68], 0

printFormat$281:	; grid = int4$0#
	mov dword [rbp + 72], 0

printFormat$282:	; widthStar = int4$0#
	mov dword [rbp + 76], 0

printFormat$283:	; period = int4$0#
	mov dword [rbp + 80], 0

printFormat$284:	; precisionStar = int4$0#
	mov dword [rbp + 84], 0

printFormat$285:	; shortInt = int4$0#
	mov dword [rbp + 88], 0

printFormat$286:	; longInt = int4$0#
	mov dword [rbp + 92], 0

printFormat$287:	; longDouble = int4$0#
	mov dword [rbp + 96], 0

printFormat$288:	; width = int4$0#
	mov dword [rbp + 44], 0

printFormat$289:	; precision = int4$0#
	mov dword [rbp + 48], 0

printFormat$290:	; goto 295
	jmp printFormat$295

printFormat$291:	; call header integral zero 0 stack zero 0

printFormat$292:	; parameter c, offset 125
	mov al, [rbp + 100]
	mov [rbp + 125], al

printFormat$293:	; call function noellipse-noellipse printChar
	mov qword [rbp + 101], printFormat$294
	mov [rbp + 109], rbp
	add rbp, 101
	jmp printChar

printFormat$294:	; post call

printFormat$295:	; ++index
	inc dword [rbp + 40]

printFormat$296:	; goto 16
	jmp printFormat$16

printFormat$297:	; if g_outStatus != int4$1# goto 304
	cmp dword [g_outStatus], 1
	jne printFormat$304

printFormat$298:	; £temporary2408 = int_to_int g_outDevice (Pointer -> Pointer)
	mov rax, [g_outDevice]

printFormat$299:	; outString = £temporary2408
	mov [rbp + 100], rax

printFormat$300:	; £temporary2410 = int_to_int g_outChars (Signed_Int -> Pointer)
	mov eax, [g_outChars]
	mov rbx, 4294967295
	and rax, rbx

printFormat$301:	; £temporary2412 = outString + £temporary2410
	mov rsi, [rbp + 100]
	add rsi, rax

printFormat$302:	; £temporary2409 -> £temporary2412 = *£temporary2412

printFormat$303:	; £temporary2409 -> £temporary2412 = int1$0#
	mov byte [rsi], 0

printFormat$304:	; return_value = g_outChars
	mov ebx, [g_outChars]

printFormat$305:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printFormat$306:	; function end printFormat

printf:	; empty

printf$1:	; £temporary2485 = &format
	mov rsi, rbp
	add rsi, 24

printf$2:	; £temporary2486 = int_to_int £temporary2485 (Pointer -> Pointer)

printf$3:	; £temporary2487 = £temporary2486 + int8$8#
	add rsi, 8

printf$4:	; arg_list = £temporary2487
	mov [rdi + 32], rsi

printf$5:	; call header integral zero 0 stack zero 0

printf$6:	; parameter format, offset 64
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

printf$7:	; parameter arg_list, offset 72
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

printf$8:	; call function ellipse-noellipse vprintf
	mov qword [rdi + 40], printf$9
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	mov rbp, rdi
	add rbp, 40
	jmp vprintf

printf$9:	; post call

printf$10:	; £temporary2489 = return_value

printf$11:	; return_value = £temporary2489

printf$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

printf$13:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 64
	mov rax, [stdout]
	mov [rbp + 64], rax

vprintf$2:	; parameter format, offset 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

vprintf$3:	; parameter arg_list, offset 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

vprintf$4:	; call function noellipse-noellipse vfprintf
	mov qword [rbp + 40], vprintf$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp vfprintf

vprintf$5:	; post call

vprintf$6:	; £temporary2493 = return_value

vprintf$7:	; return_value = £temporary2493

vprintf$8:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

vprintf$9:	; function end vprintf

fprintf:	; empty

fprintf$1:	; £temporary2497 = &format
	mov rsi, rbp
	add rsi, 32

fprintf$2:	; £temporary2498 = int_to_int £temporary2497 (Pointer -> Pointer)

fprintf$3:	; £temporary2499 = £temporary2498 + int8$8#
	add rsi, 8

fprintf$4:	; arg_list = £temporary2499
	mov [rdi + 40], rsi

fprintf$5:	; call header integral zero 0 stack zero 0

fprintf$6:	; parameter outStream, offset 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

fprintf$7:	; parameter format, offset 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

fprintf$8:	; parameter arg_list, offset 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

fprintf$9:	; call function ellipse-noellipse vfprintf
	mov qword [rdi + 48], fprintf$10
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	mov rbp, rdi
	add rbp, 48
	jmp vfprintf

fprintf$10:	; post call

fprintf$11:	; £temporary2501 = return_value

fprintf$12:	; return_value = £temporary2501

fprintf$13:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

fprintf$14:	; function end fprintf

vfprintf:	; g_outStatus = int4$0#
	mov dword [g_outStatus], 0

vfprintf$1:	; £temporary2506 = int_to_int outStream (Pointer -> Pointer)
	mov rax, [rbp + 24]

vfprintf$2:	; g_outDevice = £temporary2506
	mov [g_outDevice], rax

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

vfprintf$5:	; parameter arg_list, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

vfprintf$6:	; call function noellipse-noellipse printFormat
	mov qword [rbp + 48], vfprintf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printFormat

vfprintf$7:	; post call

vfprintf$8:	; £temporary2507 = return_value

vfprintf$9:	; return_value = £temporary2507

vfprintf$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

vfprintf$11:	; function end vfprintf

sprintf:	; empty

sprintf$1:	; £temporary2510 = &format
	mov rsi, rbp
	add rsi, 32

sprintf$2:	; £temporary2511 = int_to_int £temporary2510 (Pointer -> Pointer)

sprintf$3:	; £temporary2512 = £temporary2511 + int8$8#
	add rsi, 8

sprintf$4:	; arg_list = £temporary2512
	mov [rdi + 40], rsi

sprintf$5:	; call header integral zero 0 stack zero 0

sprintf$6:	; parameter outString, offset 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

sprintf$7:	; parameter format, offset 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

sprintf$8:	; parameter arg_list, offset 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

sprintf$9:	; call function ellipse-noellipse vsprintf
	mov qword [rdi + 48], sprintf$10
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	mov rbp, rdi
	add rbp, 48
	jmp vsprintf

sprintf$10:	; post call

sprintf$11:	; £temporary2514 = return_value

sprintf$12:	; return_value = £temporary2514

sprintf$13:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

sprintf$14:	; function end sprintf

vsprintf:	; g_outStatus = int4$1#
	mov dword [g_outStatus], 1

vsprintf$1:	; £temporary2519 = int_to_int outString (Pointer -> Pointer)
	mov rax, [rbp + 24]

vsprintf$2:	; g_outDevice = £temporary2519
	mov [g_outDevice], rax

vsprintf$3:	; call header integral zero 0 stack zero 0

vsprintf$4:	; parameter format, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

vsprintf$5:	; parameter arg_list, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

vsprintf$6:	; call function noellipse-noellipse printFormat
	mov qword [rbp + 48], vsprintf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printFormat

vsprintf$7:	; post call

vsprintf$8:	; £temporary2520 = return_value

vsprintf$9:	; return_value = £temporary2520

vsprintf$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

vsprintf$11:	; function end vsprintf
section .data

$IntegralStorage#:
	times 8 db 0

g_outStatus:
	times 4 db 0

g_outChars:
	times 4 db 0

g_outDevice:
	times 8 db 0

int8$10#:
	; init Signed_Long_Int
	dq 10

float8$10.0#:
	; init Long_Double
	dq 10.0

int4$10#:
	; init Signed_Int
	dd 10
