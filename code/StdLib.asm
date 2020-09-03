	global atoi
	global atol
	global strtol
	global strtoul
	global atof
	global strtod
	global abort
	global getenv
	global system
	global memswp
	global bsearch
	global rand
	global srand
	global print_heap2
	global g_funcArray
	global atexit
	global exit
	global swap
	global qsort
	global _abs
	global labs
	global div
	global ldiv

	extern sscanf
	extern printf
	extern errno
	extern $StackTop
section .text

 atoi:
	; call header integral zero 0 stack zero 0

 atoi$1:
	; parameter s, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atoi$2:
	; parameter int8$0#, offset 64
	mov qword [rbp + 64], 0

 atoi$3:
	; parameter int4$10#, offset 72
	mov dword [rbp + 72], 10

 atoi$4:
	; call function noellipse-noellipse strtol
	mov qword [rbp + 32], atoi$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atoi$5:
	; post call

 atoi$6:
	; £temporary2033 = return_value

 atoi$7:
	; £temporary2034 = int_to_int £temporary2033 (Signed_Long_Int -> Signed_Int)
	cmp rbx, 0
	jge atoi$8
	neg rbx
	neg ebx

 atoi$8:
	; return £temporary2034
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atoi$9:
	; function end atoi

 atol:
	; call header integral zero 0 stack zero 0

 atol$1:
	; parameter s, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atol$2:
	; parameter int8$0#, offset 64
	mov qword [rbp + 64], 0

 atol$3:
	; parameter int4$10#, offset 72
	mov dword [rbp + 72], 10

 atol$4:
	; call function noellipse-noellipse strtol
	mov qword [rbp + 32], atol$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atol$5:
	; post call

 atol$6:
	; £temporary2035 = return_value

 atol$7:
	; return £temporary2035
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atol$8:
	; function end atol

 strtol:
	; chars = int4$0#
	mov dword [rbp + 44], 0

 strtol$1:
	; value = int8$0#
	mov qword [rbp + 48], 0

 strtol$2:
	; call header integral zero 0 stack zero 0

 strtol$3:
	; parameter s, offset 80
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 strtol$4:
	; parameter string_25li25n#, offset 88
	mov qword [rbp + 88], string_25li25n#

 strtol$5:
	; £temporary2036 = &value
	mov rsi, rbp
	add rsi, 48

 strtol$6:
	; parameter £temporary2036, offset 96
	mov [rbp + 96], rsi

 strtol$7:
	; £temporary2037 = &chars
	mov rsi, rbp
	add rsi, 44

 strtol$8:
	; parameter £temporary2037, offset 104
	mov [rbp + 104], rsi

 strtol$9:
	; call function noellipse-ellipse sscanf, extra 16
	mov qword [rbp + 56], strtol$10
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

 strtol$10:
	; post call

 strtol$11:
	; if endp == int8$0# goto 15
	cmp qword [rbp + 32], 0
	je strtol$15

 strtol$12:
	; £field2040 -> endp = *endp
	mov rsi, [rbp + 32]

 strtol$13:
	; £temporary2041 = int_to_int chars (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strtol$14:
	; £field2040 -> endp = s + £temporary2041
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtol$15:
	; return value
	mov rbx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtol$16:
	; function end strtol

 strtoul:
	; chars = int4$0#
	mov dword [rbp + 44], 0

 strtoul$1:
	; value = int8$0#
	mov qword [rbp + 48], 0

 strtoul$2:
	; call header integral zero 0 stack zero 0

 strtoul$3:
	; parameter s, offset 80
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 strtoul$4:
	; parameter string_25lu25n#, offset 88
	mov qword [rbp + 88], string_25lu25n#

 strtoul$5:
	; £temporary2046 = &value
	mov rsi, rbp
	add rsi, 48

 strtoul$6:
	; parameter £temporary2046, offset 96
	mov [rbp + 96], rsi

 strtoul$7:
	; £temporary2047 = &chars
	mov rsi, rbp
	add rsi, 44

 strtoul$8:
	; parameter £temporary2047, offset 104
	mov [rbp + 104], rsi

 strtoul$9:
	; call function noellipse-ellipse sscanf, extra 16
	mov qword [rbp + 56], strtoul$10
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

 strtoul$10:
	; post call

 strtoul$11:
	; if endp == int8$0# goto 15
	cmp qword [rbp + 32], 0
	je strtoul$15

 strtoul$12:
	; £field2050 -> endp = *endp
	mov rsi, [rbp + 32]

 strtoul$13:
	; £temporary2051 = int_to_int chars (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strtoul$14:
	; £field2050 -> endp = s + £temporary2051
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtoul$15:
	; return value
	mov rbx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtoul$16:
	; function end strtoul

 atof:
	; call header integral zero 0 stack zero 0

 atof$1:
	; parameter s, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atof$2:
	; parameter int8$0#, offset 64
	mov qword [rbp + 64], 0

 atof$3:
	; call function noellipse-noellipse strtod
	mov qword [rbp + 32], atof$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtod

 atof$4:
	; post call

 atof$5:
	; £temporary2056 = return_value

 atof$6:
	; return £temporary2056
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atof$7:
	; function end atof

 strtod:
	; chars = int4$0#
	mov dword [rbp + 40], 0

 strtod$1:
	; push float float8$0#
	fldz

 strtod$2:
	; pop float value
	fstp qword [rbp + 44]

 strtod$3:
	; call header integral zero 0 stack zero 0

 strtod$4:
	; parameter s, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 strtod$5:
	; parameter string_25lf25n#, offset 84
	mov qword [rbp + 84], string_25lf25n#

 strtod$6:
	; £temporary2057 = &value
	mov rsi, rbp
	add rsi, 44

 strtod$7:
	; parameter £temporary2057, offset 92
	mov [rbp + 92], rsi

 strtod$8:
	; £temporary2058 = &chars
	mov rsi, rbp
	add rsi, 40

 strtod$9:
	; parameter £temporary2058, offset 100
	mov [rbp + 100], rsi

 strtod$10:
	; call function noellipse-ellipse sscanf, extra 16
	mov qword [rbp + 52], strtod$11
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

 strtod$11:
	; post call

 strtod$12:
	; if endp == int8$0# goto 16
	cmp qword [rbp + 32], 0
	je strtod$16

 strtod$13:
	; £field2061 -> endp = *endp
	mov rsi, [rbp + 32]

 strtod$14:
	; £temporary2062 = int_to_int chars (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtod$15:
	; £field2061 -> endp = s + £temporary2062
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtod$16:
	; push float value
	fld qword [rbp + 44]

 strtod$17:
	; return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtod$18:
	; function end strtod

 abort:
	; rax = int8$60#
	mov rax, 60

 abort$1:
	; rdi = int8$minus1#
	mov rdi, -1

 abort$2:
	; syscall
	syscall

 abort$3:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 abort$4:
	; function end abort

 getenv:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getenv$1:
	; function end getenv

 system:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 system$1:
	; function end system

 memswp:
	; £temporary2069 = int_to_int value1 (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memswp$1:
	; charValue1 = £temporary2069
	mov [rbp + 44], rax

 memswp$2:
	; £temporary2070 = int_to_int value2 (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memswp$3:
	; charValue2 = £temporary2070
	mov [rbp + 52], rax

 memswp$4:
	; index = int4$0#
	mov dword [rbp + 60], 0

 memswp$5:
	; if index >= valueSize goto 23
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memswp$23

 memswp$6:
	; £temporary2074 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$7:
	; £temporary2076 = charValue1 + £temporary2074
	mov rsi, [rbp + 44]
	add rsi, rax

 memswp$8:
	; £field2073 -> £temporary2076 = *£temporary2076

 memswp$9:
	; tempValue = £field2073 -> £temporary2076
	mov al, [rsi]
	mov [rbp + 64], al

 memswp$10:
	; £temporary2078 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$11:
	; £temporary2080 = charValue1 + £temporary2078
	mov rsi, [rbp + 44]
	add rsi, rax

 memswp$12:
	; £field2077 -> £temporary2080 = *£temporary2080

 memswp$13:
	; £temporary2082 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$14:
	; £temporary2084 = charValue2 + £temporary2082
	mov rdi, [rbp + 52]
	add rdi, rax

 memswp$15:
	; £field2081 -> £temporary2084 = *£temporary2084

 memswp$16:
	; £field2077 -> £temporary2080 = £field2081 -> £temporary2084
	mov al, [rdi]
	mov [rsi], al

 memswp$17:
	; £temporary2086 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$18:
	; £temporary2088 = charValue2 + £temporary2086
	mov rsi, [rbp + 52]
	add rsi, rax

 memswp$19:
	; £field2085 -> £temporary2088 = *£temporary2088

 memswp$20:
	; £field2085 -> £temporary2088 = tempValue
	mov al, [rbp + 64]
	mov [rsi], al

 memswp$21:
	; index = index + int4$1#
	inc dword [rbp + 60]

 memswp$22:
	; goto 5
	jmp memswp$5

 memswp$23:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memswp$24:
	; function end memswp

 bsearch:
	; firstIndex = int4$0#
	mov dword [rbp + 56], 0

 bsearch$1:
	; lastIndex = listSize - int4$1#
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 bsearch$2:
	; if listSize != int4$0# goto 4
	cmp dword [rbp + 40], 0
	jne bsearch$4

 bsearch$3:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$4:
	; £temporary2091 = int_to_int valueList (Pointer -> Pointer)
	mov rbx, [rbp + 32]

 bsearch$5:
	; £temporary2092 = firstIndex * valueSize
	mov eax, [rbp + 56]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$6:
	; £temporary2093 = int_to_int £temporary2092 (Signed_Int -> Pointer)
	mov rcx, 4294967295
	and rax, rcx

 bsearch$7:
	; firstValuePtr = £temporary2091 + £temporary2093
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$8:
	; call header integral zero 0 stack zero 0

 bsearch$9:
	; parameter keyPtr, offset 96
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$10:
	; parameter firstValuePtr, offset 104
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$11:
	; call function noellipse-noellipse compare
	mov qword [rbp + 72], bsearch$12
	mov [rbp + 80], rbp
	add rbp, 72
	mov rax, [rbp + 48]
	jmp rax

 bsearch$12:
	; post call

 bsearch$13:
	; £temporary2096 = return_value

 bsearch$14:
	; firstCompare = £temporary2096
	mov [rbp + 72], ebx

 bsearch$15:
	; if firstCompare >= int4$0# goto 17
	cmp dword [rbp + 72], 0
	jge bsearch$17

 bsearch$16:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$17:
	; if firstCompare != int4$0# goto 19
	cmp dword [rbp + 72], 0
	jne bsearch$19

 bsearch$18:
	; return firstValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$19:
	; £temporary2099 = int_to_int valueList (Pointer -> Pointer)
	mov rbx, [rbp + 32]

 bsearch$20:
	; £temporary2100 = lastIndex * valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$21:
	; £temporary2101 = int_to_int £temporary2100 (Signed_Int -> Pointer)
	mov rcx, 4294967295
	and rax, rcx

 bsearch$22:
	; lastValuePtr = £temporary2099 + £temporary2101
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$23:
	; call header integral zero 0 stack zero 0

 bsearch$24:
	; parameter keyPtr, offset 96
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$25:
	; parameter lastValuePtr, offset 104
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$26:
	; call function noellipse-noellipse compare
	mov qword [rbp + 72], bsearch$27
	mov [rbp + 80], rbp
	add rbp, 72
	mov rax, [rbp + 48]
	jmp rax

 bsearch$27:
	; post call

 bsearch$28:
	; £temporary2104 = return_value

 bsearch$29:
	; lastCompare = £temporary2104
	mov [rbp + 72], ebx

 bsearch$30:
	; if lastCompare <= int4$0# goto 32
	cmp dword [rbp + 72], 0
	jle bsearch$32

 bsearch$31:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$32:
	; if lastCompare != int4$0# goto 34
	cmp dword [rbp + 72], 0
	jne bsearch$34

 bsearch$33:
	; return lastValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$34:
	; £temporary2107 = firstIndex + lastIndex
	mov eax, [rbp + 56]
	add eax, [rbp + 60]

 bsearch$35:
	; middleIndex = £temporary2107 / int4$2#
	xor edx, edx
	idiv dword [int4$2#]
	mov [rbp + 64], eax

 bsearch$36:
	; £temporary2109 = int_to_int valueList (Pointer -> Pointer)
	mov rbx, [rbp + 32]

 bsearch$37:
	; £temporary2110 = middleIndex * valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$38:
	; £temporary2111 = int_to_int £temporary2110 (Signed_Int -> Pointer)
	mov rcx, 4294967295
	and rax, rcx

 bsearch$39:
	; middleValuePtr = £temporary2109 + £temporary2111
	add rbx, rax
	mov [rbp + 68], rbx

 bsearch$40:
	; call header integral zero 0 stack zero 0

 bsearch$41:
	; parameter keyPtr, offset 100
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 bsearch$42:
	; parameter middleValuePtr, offset 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 bsearch$43:
	; call function noellipse-noellipse compare
	mov qword [rbp + 76], bsearch$44
	mov [rbp + 84], rbp
	add rbp, 76
	mov rax, [rbp + 48]
	jmp rax

 bsearch$44:
	; post call

 bsearch$45:
	; £temporary2114 = return_value

 bsearch$46:
	; middleCompare = £temporary2114
	mov [rbp + 76], ebx

 bsearch$47:
	; if middleCompare >= int4$0# goto 50
	cmp dword [rbp + 76], 0
	jge bsearch$50

 bsearch$48:
	; lastIndex = middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 60], eax

 bsearch$49:
	; goto 4
	jmp bsearch$4

 bsearch$50:
	; if middleCompare <= int4$0# goto 53
	cmp dword [rbp + 76], 0
	jle bsearch$53

 bsearch$51:
	; firstIndex = middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 56], eax

 bsearch$52:
	; goto 4
	jmp bsearch$4

 bsearch$53:
	; return middleValuePtr
	mov rbx, [rbp + 68]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$54:
	; function end bsearch

 rand:
	; £temporary2118 = g_randValue * int8$1664525#
	mov rax, [@4356$g_randValue]
	xor rdx, rdx
	imul qword [int8$1664525#]

 rand$1:
	; £temporary2119 = £temporary2118 + int8$1013904223#
	add rax, 1013904223

 rand$2:
	; g_randValue = £temporary2119 % int8$127#
	xor rdx, rdx
	idiv qword [int8$127#]
	mov [@4356$g_randValue], rdx

 rand$3:
	; £temporary2121 = int_to_int g_randValue (Signed_Long_Int -> Signed_Int)
	mov rbx, [@4356$g_randValue]
	cmp rbx, 0
	jge rand$4
	neg rbx
	neg ebx

 rand$4:
	; return £temporary2121
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rand$5:
	; function end rand

 srand:
	; £temporary2122 = int_to_int seed (Unsigned_Int -> Signed_Long_Int)
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 srand$1:
	; g_randValue = £temporary2122
	mov [@4356$g_randValue], rax

 srand$2:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 srand$3:
	; function end srand

 print_heap2:
	; £field2123 -> int8$32764# = *int8$32764#
	mov rsi, 32764

 print_heap2$1:
	; heapBottom = £field2123 -> int8$32764#
	mov eax, [rsi]
	mov [rbp + 24], eax

 print_heap2$2:
	; £field2124 -> int8$32766# = *int8$32766#
	mov rsi, 32766

 print_heap2$3:
	; topStack = £field2124 -> int8$32766#
	mov eax, [rsi]
	mov [rbp + 28], eax

 print_heap2$4:
	; £field2125 -> int8$32762# = *int8$32762#
	mov rsi, 32762

 print_heap2$5:
	; heapTop = £field2125 -> int8$32762#
	mov eax, [rsi]
	mov [rbp + 32], eax

 print_heap2$6:
	; index = int4$0#
	mov dword [rbp + 36], 0

 print_heap2$7:
	; call header integral zero 0 stack zero 0

 print_heap2$8:
	; parameter string_stack20top2025u2C20heap20top2025u2C20heap20bottom2025u0A#, offset 64
	mov qword [rbp + 64], string_stack20top2025u2C20heap20top2025u2C20heap20bottom2025u0A#

 print_heap2$9:
	; parameter topStack, offset 72
	mov eax, [rbp + 28]
	mov [rbp + 72], eax

 print_heap2$10:
	; parameter heapTop, offset 76
	mov eax, [rbp + 32]
	mov [rbp + 76], eax

 print_heap2$11:
	; parameter heapBottom, offset 80
	mov eax, [rbp + 24]
	mov [rbp + 80], eax

 print_heap2$12:
	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 40], print_heap2$13
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

 print_heap2$13:
	; post call

 print_heap2$14:
	; if heapTop == int4$0# goto 32
	cmp dword [rbp + 32], 0
	je print_heap2$32

 print_heap2$15:
	; £temporary2128 = int_to_int heapTop (Unsigned_Int -> Pointer)
	mov esi, [rbp + 32]
	mov rax, 4294967295
	and rsi, rax

 print_heap2$16:
	; £temporary2129 = £temporary2128 + int8$4#
	add rsi, 4

 print_heap2$17:
	; £field2131 -> £temporary2129 = *£temporary2129

 print_heap2$18:
	; size = £field2131 -> £temporary2129
	mov eax, [rsi]
	mov [rbp + 40], eax

 print_heap2$19:
	; call header integral zero 0 stack zero 0

 print_heap2$20:
	; parameter string_2020index2025u2C20address2025u2C20size2025u0A#, offset 68
	mov qword [rbp + 68], string_2020index2025u2C20address2025u2C20size2025u0A#

 print_heap2$21:
	; £temporary2132 = index
	mov eax, [rbp + 36]

 print_heap2$22:
	; index = index + int4$1#
	inc dword [rbp + 36]

 print_heap2$23:
	; parameter £temporary2132, offset 76
	mov [rbp + 76], eax

 print_heap2$24:
	; parameter heapTop, offset 80
	mov eax, [rbp + 32]
	mov [rbp + 80], eax

 print_heap2$25:
	; parameter size, offset 84
	mov eax, [rbp + 40]
	mov [rbp + 84], eax

 print_heap2$26:
	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 44], print_heap2$27
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 print_heap2$27:
	; post call

 print_heap2$28:
	; £temporary2134 = int_to_int heapTop (Unsigned_Int -> Pointer)
	mov esi, [rbp + 32]
	mov rax, 4294967295
	and rsi, rax

 print_heap2$29:
	; £field2135 -> £temporary2134 = *£temporary2134

 print_heap2$30:
	; heapTop = £field2135 -> £temporary2134
	mov eax, [rsi]
	mov [rbp + 32], eax

 print_heap2$31:
	; goto 14
	jmp print_heap2$14

 print_heap2$32:
	; call header integral zero 0 stack zero 0

 print_heap2$33:
	; parameter string_0A#, offset 64
	mov qword [rbp + 64], string_0A#

 print_heap2$34:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], print_heap2$35
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 print_heap2$35:
	; post call

 print_heap2$36:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_heap2$37:
	; function end print_heap2

 atexit:
	; empty

 atexit$1:
	; call header integral zero 0 stack zero 0

 atexit$2:
	; parameter string_0A#, offset 60
	mov qword [rbp + 60], string_0A#

 atexit$3:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 36], atexit$4
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

 atexit$4:
	; post call

 atexit$5:
	; index = int4$0#
	mov dword [rbp + 32], 0

 atexit$6:
	; if index >= int4$256# goto 30
	cmp dword [rbp + 32], 256
	jge atexit$30

 atexit$7:
	; £temporary2141 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$8:
	; £temporary2142 = £temporary2141 * Array_8#
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$9:
	; £temporary2143 = g_funcArray + £temporary2142
	mov rsi, g_funcArray
	add rsi, rax

 atexit$10:
	; £field2140 -> £temporary2143 = *£temporary2143

 atexit$11:
	; if £field2140 -> £temporary2143 != int8$0# goto 28
	cmp qword [rsi], 0
	jne atexit$28

 atexit$12:
	; £temporary2146 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$13:
	; £temporary2147 = £temporary2146 * Array_8#
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$14:
	; £temporary2148 = g_funcArray + £temporary2147
	mov rsi, g_funcArray
	add rsi, rax

 atexit$15:
	; £field2145 -> £temporary2148 = *£temporary2148

 atexit$16:
	; £field2145 -> £temporary2148 = fcn
	mov rax, [rbp + 24]
	mov [rsi], rax

 atexit$17:
	; call header integral zero 0 stack zero 0

 atexit$18:
	; parameter string_Added20function20index2025i3A2025i0A#, offset 60
	mov qword [rbp + 60], string_Added20function20index2025i3A2025i0A#

 atexit$19:
	; parameter index, offset 68
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

 atexit$20:
	; £temporary2150 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$21:
	; £temporary2151 = £temporary2150 * Array_8#
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$22:
	; £temporary2152 = g_funcArray + £temporary2151
	mov rsi, g_funcArray
	add rsi, rax

 atexit$23:
	; £field2149 -> £temporary2152 = *£temporary2152

 atexit$24:
	; parameter £field2149 -> £temporary2152, offset 72
	mov rax, [rsi]
	mov [rbp + 72], rax

 atexit$25:
	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 36], atexit$26
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

 atexit$26:
	; post call

 atexit$27:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$28:
	; index = index + int4$1#
	inc dword [rbp + 32]

 atexit$29:
	; goto 6
	jmp atexit$6

 atexit$30:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$31:
	; function end atexit

 exit:
	; empty

 exit$1:
	; call header integral zero 0 stack zero 0

 exit$2:
	; parameter string_0A#, offset 56
	mov qword [rbp + 56], string_0A#

 exit$3:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 32], exit$4
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 exit$4:
	; post call

 exit$5:
	; index = int4$257#
	mov dword [rbp + 28], 257

 exit$6:
	; if index < int4$0# goto 31
	cmp dword [rbp + 28], 0
	jl exit$31

 exit$7:
	; £temporary2158 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$8:
	; £temporary2159 = £temporary2158 * Array_8#
	xor rdx, rdx
	mul qword [Array_8#]

 exit$9:
	; £temporary2160 = g_funcArray + £temporary2159
	mov rsi, g_funcArray
	add rsi, rax

 exit$10:
	; £field2157 -> £temporary2160 = *£temporary2160

 exit$11:
	; if £field2157 -> £temporary2160 == int8$0# goto 29
	cmp qword [rsi], 0
	je exit$29

 exit$12:
	; call header integral zero 0 stack zero 0

 exit$13:
	; parameter string_Called20function20index2025i3A2025i0A#, offset 56
	mov qword [rbp + 56], string_Called20function20index2025i3A2025i0A#

 exit$14:
	; parameter index, offset 64
	mov eax, [rbp + 28]
	mov [rbp + 64], eax

 exit$15:
	; £temporary2163 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$16:
	; £temporary2164 = £temporary2163 * Array_8#
	xor rdx, rdx
	mul qword [Array_8#]

 exit$17:
	; £temporary2165 = g_funcArray + £temporary2164
	mov rsi, g_funcArray
	add rsi, rax

 exit$18:
	; £field2162 -> £temporary2165 = *£temporary2165

 exit$19:
	; parameter £field2162 -> £temporary2165, offset 68
	mov rax, [rsi]
	mov [rbp + 68], rax

 exit$20:
	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 32], exit$21
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 12
	jmp printf

 exit$21:
	; post call

 exit$22:
	; £temporary2168 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$23:
	; £temporary2169 = £temporary2168 * Array_8#
	xor rdx, rdx
	mul qword [Array_8#]

 exit$24:
	; £temporary2170 = g_funcArray + £temporary2169
	mov rbx, g_funcArray
	add rbx, rax

 exit$25:
	; £field2167 -> £temporary2170 = *£temporary2170

 exit$26:
	; call header integral no zero 1 stack zero 0
	mov [rbp + 32], rbx

 exit$27:
	; call function noellipse-noellipse £field2167 -> £temporary2170
	mov qword [rbp + 2080], exit$28
	mov [rbp + 2088], rbp
	add rbp, 2080
	mov rsi, rbp
	mov rax, [rsi]
	jmp rax

 exit$28:
	; post call
	mov rbx, [rbp + 32]

 exit$29:
	; index = index - int4$1#
	dec dword [rbp + 28]

 exit$30:
	; goto 6
	jmp exit$6

 exit$31:
	; rax = int8$60#
	mov rax, 60

 exit$32:
	; £temporary2174 = int_to_int status (Signed_Int -> Unsigned_Long_Int)
	mov edi, [rbp + 24]
	mov rbx, 4294967295
	and rdi, rbx

 exit$33:
	; rdi = £temporary2174

 exit$34:
	; syscall
	syscall

 exit$35:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit$36:
	; function end exit

 swap:
	; empty

 swap$1:
	; index = int4$0#
	mov dword [rbp + 44], 0

 swap$2:
	; if index >= valueSize goto 20
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge swap$20

 swap$3:
	; £temporary2178 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$4:
	; £temporary2180 = leftValuePtr + £temporary2178
	mov rsi, [rbp + 24]
	add rsi, rax

 swap$5:
	; £field2177 -> £temporary2180 = *£temporary2180

 swap$6:
	; tempValue = £field2177 -> £temporary2180
	mov al, [rsi]
	mov [rbp + 48], al

 swap$7:
	; £temporary2182 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$8:
	; £temporary2184 = leftValuePtr + £temporary2182
	mov rsi, [rbp + 24]
	add rsi, rax

 swap$9:
	; £field2181 -> £temporary2184 = *£temporary2184

 swap$10:
	; £temporary2186 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$11:
	; £temporary2188 = rightValuePtr + £temporary2186
	mov rdi, [rbp + 32]
	add rdi, rax

 swap$12:
	; £field2185 -> £temporary2188 = *£temporary2188

 swap$13:
	; £field2181 -> £temporary2184 = £field2185 -> £temporary2188
	mov al, [rdi]
	mov [rsi], al

 swap$14:
	; £temporary2190 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$15:
	; £temporary2192 = rightValuePtr + £temporary2190
	mov rsi, [rbp + 32]
	add rsi, rax

 swap$16:
	; £field2189 -> £temporary2192 = *£temporary2192

 swap$17:
	; £field2189 -> £temporary2192 = tempValue
	mov al, [rbp + 48]
	mov [rsi], al

 swap$18:
	; index = index + int4$1#
	inc dword [rbp + 44]

 swap$19:
	; goto 2
	jmp swap$2

 swap$20:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 swap$21:
	; function end swap

 qsort:
	; empty

 qsort$1:
	; £temporary2193 = int_to_int valueList (Pointer -> Pointer)
	mov rax, [rbp + 24]

 qsort$2:
	; charList = £temporary2193
	mov [rbp + 52], rax

 qsort$3:
	; index1 = listSize - int4$1#
	mov eax, [rbp + 32]
	dec eax
	mov [rbp + 60], eax

 qsort$4:
	; if index1 <= int4$0# goto 33
	cmp dword [rbp + 60], 0
	jle qsort$33

 qsort$5:
	; update = int4$0#
	mov dword [rbp + 48], 0

 qsort$6:
	; index2 = int4$0#
	mov dword [rbp + 64], 0

 qsort$7:
	; if index2 >= index1 goto 31
	mov eax, [rbp + 60]
	cmp [rbp + 64], eax
	jge qsort$31

 qsort$8:
	; £temporary2199 = index2 * valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 36]

 qsort$9:
	; £temporary2200 = int_to_int £temporary2199 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 qsort$10:
	; valuePtr1 = charList + £temporary2200
	mov rbx, [rbp + 52]
	add rbx, rax
	mov [rbp + 68], rbx

 qsort$11:
	; £temporary2203 = index2 + int4$1#
	mov eax, [rbp + 64]
	inc eax

 qsort$12:
	; £temporary2204 = £temporary2203 * valueSize
	xor edx, edx
	imul dword [rbp + 36]

 qsort$13:
	; £temporary2205 = int_to_int £temporary2204 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 qsort$14:
	; valuePtr2 = charList + £temporary2205
	mov rbx, [rbp + 52]
	add rbx, rax
	mov [rbp + 76], rbx

 qsort$15:
	; call header integral zero 0 stack zero 0

 qsort$16:
	; parameter valuePtr1, offset 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$17:
	; parameter valuePtr2, offset 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$18:
	; call function noellipse-noellipse compare
	mov qword [rbp + 84], qsort$19
	mov [rbp + 92], rbp
	add rbp, 84
	mov rax, [rbp + 40]
	jmp rax

 qsort$19:
	; post call

 qsort$20:
	; £temporary2208 = return_value

 qsort$21:
	; if £temporary2208 <= int4$0# goto 29
	cmp ebx, 0
	jle qsort$29

 qsort$22:
	; call header integral zero 0 stack zero 0

 qsort$23:
	; parameter valuePtr1, offset 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$24:
	; parameter valuePtr2, offset 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$25:
	; parameter valueSize, offset 124
	mov eax, [rbp + 36]
	mov [rbp + 124], eax

 qsort$26:
	; call function noellipse-noellipse swap
	mov qword [rbp + 84], qsort$27
	mov [rbp + 92], rbp
	add rbp, 84
	jmp swap

 qsort$27:
	; post call

 qsort$28:
	; update = int4$1#
	mov dword [rbp + 48], 1

 qsort$29:
	; index2 = index2 + int4$1#
	inc dword [rbp + 64]

 qsort$30:
	; goto 7
	jmp qsort$7

 qsort$31:
	; index1 = index1 - int4$1#
	dec dword [rbp + 60]

 qsort$32:
	; goto 4
	jmp qsort$4

 qsort$33:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 qsort$34:
	; function end qsort

 _abs:
	; if value >= int4$0# goto 4
	cmp dword [rbp + 24], 0
	jge _abs$4

 _abs$1:
	; £temporary2214 = -value
	mov ebx, [rbp + 24]
	neg ebx

 _abs$2:
	; £temporary2215 = £temporary2214

 _abs$3:
	; goto 5
	jmp _abs$5

 _abs$4:
	; £temporary2215 = value
	mov ebx, [rbp + 24]

 _abs$5:
	; return £temporary2215
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 _abs$6:
	; function end abs

 labs:
	; if value >= int8$0# goto 4
	cmp qword [rbp + 24], 0
	jge labs$4

 labs$1:
	; £temporary2217 = -value
	mov rbx, [rbp + 24]
	neg rbx

 labs$2:
	; £temporary2218 = £temporary2217

 labs$3:
	; goto 5
	jmp labs$5

 labs$4:
	; £temporary2218 = value
	mov rbx, [rbp + 24]

 labs$5:
	; return £temporary2218
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 labs$6:
	; function end labs

 div:
	; result.quot = int4$0#
	mov dword [rbp + 32], 0

 div$1:
	; result.rem = int4$0#
	mov dword [rbp + 36], 0

 div$2:
	; if denum != int4$0# goto 5
	cmp dword [rbp + 28], 0
	jne div$5

 div$3:
	; errno = int4$6#
	mov dword [errno], 6

 div$4:
	; return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$5:
	; result$quot = num / denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 32], eax

 div$6:
	; result$rem = num % denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 36], edx

 div$7:
	; return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$8:
	; function end div

 ldiv:
	; result.quot = int8$0#
	mov qword [rbp + 40], 0

 ldiv$1:
	; result.rem = int8$0#
	mov qword [rbp + 48], 0

 ldiv$2:
	; if denum != int8$0# goto 5
	cmp qword [rbp + 32], 0
	jne ldiv$5

 ldiv$3:
	; errno = int4$6#
	mov dword [errno], 6

 ldiv$4:
	; return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$5:
	; result$quot = num / denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 40], rax

 ldiv$6:
	; result$rem = num % denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 48], rdx

 ldiv$7:
	; return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$8:
	; function end ldiv
section .data

string_25li25n#:
	; initializer String
	db "%li%n", 0

string_25lu25n#:
	; initializer String
	db "%lu%n", 0

string_25lf25n#:
	; initializer String
	db "%lf%n", 0

int4$2#:
	; initializer Signed_Int
	dd 2

@4356$g_randValue:
	; initializer zero 8
	times 8 db 0

int8$1664525#:
	; initializer Signed_Long_Int
	dq 1664525

int8$127#:
	; initializer Signed_Long_Int
	dq 127

string_stack20top2025u2C20heap20top2025u2C20heap20bottom2025u0A#:
	; initializer String
	db "stack top %u, heap top %u, heap bottom %u", 10, 0

string_2020index2025u2C20address2025u2C20size2025u0A#:
	; initializer String
	db "  index %u, address %u, size %u", 10, 0

string_0A#:
	; initializer String
	db 10, 0

g_funcArray:
	; initializer Pointer
	dq 0
	; initializer zero 2040
	times 2040 db 0

string_Added20function20index2025i3A2025i0A#:
	; initializer String
	db "Added function index %i: %i", 10, 0

Array_8#:
	; initializer Array
	dq 8

string_Called20function20index2025i3A2025i0A#:
	; initializer String
	db "Called function index %i: %i", 10, 0
