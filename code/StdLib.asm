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
	global @abs
	global labs
	global div
	global ldiv

	extern sscanf
	extern printf
	extern errno
	extern $StackTop


section .text

 atoi:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atoi$1:
	; Parameter pointer s 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atoi$2:
	; Parameter pointer 0 64
	mov qword [rbp + 64], 0

 atoi$3:
	; Parameter signedint 10 72
	mov dword [rbp + 72], 10

 atoi$4:
	; Call strtol 32 0
	mov qword [rbp + 32], atoi$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atoi$5:
	; PostCall 32

 atoi$6:
	; GetReturnValue £temporary1928

 atoi$7:
	; IntegralToIntegral £temporary1929 £temporary1928
	cmp rbx, 0
	jge atoi$8
	neg rbx
	neg ebx

 atoi$8:
	; Return £temporary1929
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atoi$9:
	; FunctionEnd atoi

section .text

 atol:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atol$1:
	; Parameter pointer s 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atol$2:
	; Parameter pointer 0 64
	mov qword [rbp + 64], 0

 atol$3:
	; Parameter signedint 10 72
	mov dword [rbp + 72], 10

 atol$4:
	; Call strtol 32 0
	mov qword [rbp + 32], atol$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atol$5:
	; PostCall 32

 atol$6:
	; GetReturnValue £temporary1930

 atol$7:
	; Return £temporary1930
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atol$8:
	; FunctionEnd atol

section .data

string_25li25n#:
	; Initializer String %li%n
	db "%li%n", 0

section .text

 strtol:
	; Assign chars 0
	mov dword [rbp + 44], 0

 strtol$1:
	; Assign value 0
	mov qword [rbp + 48], 0

 strtol$2:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol$3:
	; Parameter pointer s 80
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 strtol$4:
	; Parameter pointer "%li%n" 88
	mov qword [rbp + 88], string_25li25n#

 strtol$5:
	; Address £temporary1931 value
	mov rsi, rbp
	add rsi, 48

 strtol$6:
	; Parameter pointer £temporary1931 96
	mov [rbp + 96], rsi

 strtol$7:
	; Address £temporary1932 chars
	mov rsi, rbp
	add rsi, 44

 strtol$8:
	; Parameter pointer £temporary1932 104
	mov [rbp + 104], rsi

 strtol$9:
	; Call sscanf 56 16
	mov qword [rbp + 56], strtol$10
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

 strtol$10:
	; PostCall 56

 strtol$11:
	; Equal 15 endp 0
	cmp qword [rbp + 32], 0
	je strtol$15

 strtol$12:
	; Dereference £temporary1935 -> endp endp 0
	mov rsi, [rbp + 32]

 strtol$13:
	; IntegralToIntegral £temporary1936 chars
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strtol$14:
	; BinaryAdd £temporary1935 -> endp s £temporary1936
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtol$15:
	; Return value
	mov rbx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtol$16:
	; FunctionEnd strtol

section .data

string_25lu25n#:
	; Initializer String %lu%n
	db "%lu%n", 0

section .text

 strtoul:
	; Assign chars 0
	mov dword [rbp + 44], 0

 strtoul$1:
	; Assign value 0
	mov qword [rbp + 48], 0

 strtoul$2:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul$3:
	; Parameter pointer s 80
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 strtoul$4:
	; Parameter pointer "%lu%n" 88
	mov qword [rbp + 88], string_25lu25n#

 strtoul$5:
	; Address £temporary1941 value
	mov rsi, rbp
	add rsi, 48

 strtoul$6:
	; Parameter pointer £temporary1941 96
	mov [rbp + 96], rsi

 strtoul$7:
	; Address £temporary1942 chars
	mov rsi, rbp
	add rsi, 44

 strtoul$8:
	; Parameter pointer £temporary1942 104
	mov [rbp + 104], rsi

 strtoul$9:
	; Call sscanf 56 16
	mov qword [rbp + 56], strtoul$10
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

 strtoul$10:
	; PostCall 56

 strtoul$11:
	; Equal 15 endp 0
	cmp qword [rbp + 32], 0
	je strtoul$15

 strtoul$12:
	; Dereference £temporary1945 -> endp endp 0
	mov rsi, [rbp + 32]

 strtoul$13:
	; IntegralToIntegral £temporary1946 chars
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strtoul$14:
	; BinaryAdd £temporary1945 -> endp s £temporary1946
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtoul$15:
	; Return value
	mov rbx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtoul$16:
	; FunctionEnd strtoul

section .text

 atof:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atof$1:
	; Parameter pointer s 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atof$2:
	; Parameter pointer 0 64
	mov qword [rbp + 64], 0

 atof$3:
	; Call strtod 32 0
	mov qword [rbp + 32], atof$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtod

 atof$4:
	; PostCall 32

 atof$5:
	; GetReturnValue £temporary1951

 atof$6:
	; Return £temporary1951
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atof$7:
	; FunctionEnd atof

section .data

string_25lf25n#:
	; Initializer String %lf%n
	db "%lf%n", 0

section .text

 strtod:
	; Assign chars 0
	mov dword [rbp + 40], 0

 strtod$1:
	; PushFloat 0
	fldz

 strtod$2:
	; PopFloat value
	fstp qword [rbp + 44]

 strtod$3:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtod$4:
	; Parameter pointer s 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 strtod$5:
	; Parameter pointer "%lf%n" 84
	mov qword [rbp + 84], string_25lf25n#

 strtod$6:
	; Address £temporary1952 value
	mov rsi, rbp
	add rsi, 44

 strtod$7:
	; Parameter pointer £temporary1952 92
	mov [rbp + 92], rsi

 strtod$8:
	; Address £temporary1953 chars
	mov rsi, rbp
	add rsi, 40

 strtod$9:
	; Parameter pointer £temporary1953 100
	mov [rbp + 100], rsi

 strtod$10:
	; Call sscanf 52 16
	mov qword [rbp + 52], strtod$11
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

 strtod$11:
	; PostCall 52

 strtod$12:
	; Equal 16 endp 0
	cmp qword [rbp + 32], 0
	je strtod$16

 strtod$13:
	; Dereference £temporary1956 -> endp endp 0
	mov rsi, [rbp + 32]

 strtod$14:
	; IntegralToIntegral £temporary1957 chars
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtod$15:
	; BinaryAdd £temporary1956 -> endp s £temporary1957
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtod$16:
	; PushFloat value
	fld qword [rbp + 44]

 strtod$17:
	; Return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtod$18:
	; FunctionEnd strtod

section .text

 abort:
	; AssignRegister rax 60
	mov rax, 60

 abort$1:
	; AssignRegister rdi -1
	mov rdi, -1

 abort$2:
	; SysCall
	syscall

 abort$3:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 abort$4:
	; FunctionEnd abort

section .text

 getenv:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getenv$1:
	; FunctionEnd getenv

section .text

 system:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 system$1:
	; FunctionEnd system

section .text

 memswp:
	; IntegralToIntegral £temporary1964 value1
	mov rax, [rbp + 24]

 memswp$1:
	; Assign charValue1 £temporary1964
	mov [rbp + 44], rax

 memswp$2:
	; IntegralToIntegral £temporary1965 value2
	mov rax, [rbp + 32]

 memswp$3:
	; Assign charValue2 £temporary1965
	mov [rbp + 52], rax

 memswp$4:
	; Assign index 0
	mov dword [rbp + 60], 0

 memswp$5:
	; SignedGreaterThanEqual 23 index valueSize
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memswp$23

 memswp$6:
	; IntegralToIntegral £temporary1969 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$7:
	; BinaryAdd £temporary1971 charValue1 £temporary1969
	mov rsi, [rbp + 44]
	add rsi, rax

 memswp$8:
	; Dereference £temporary1968 -> £temporary1971 £temporary1971 0

 memswp$9:
	; Assign tempValue £temporary1968 -> £temporary1971
	mov al, [rsi]
	mov [rbp + 64], al

 memswp$10:
	; IntegralToIntegral £temporary1973 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$11:
	; BinaryAdd £temporary1975 charValue1 £temporary1973
	mov rsi, [rbp + 44]
	add rsi, rax

 memswp$12:
	; Dereference £temporary1972 -> £temporary1975 £temporary1975 0

 memswp$13:
	; IntegralToIntegral £temporary1977 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$14:
	; BinaryAdd £temporary1979 charValue2 £temporary1977
	mov rdi, [rbp + 52]
	add rdi, rax

 memswp$15:
	; Dereference £temporary1976 -> £temporary1979 £temporary1979 0

 memswp$16:
	; Assign £temporary1972 -> £temporary1975 £temporary1976 -> £temporary1979
	mov al, [rdi]
	mov [rsi], al

 memswp$17:
	; IntegralToIntegral £temporary1981 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$18:
	; BinaryAdd £temporary1983 charValue2 £temporary1981
	mov rsi, [rbp + 52]
	add rsi, rax

 memswp$19:
	; Dereference £temporary1980 -> £temporary1983 £temporary1983 0

 memswp$20:
	; Assign £temporary1980 -> £temporary1983 tempValue
	mov al, [rbp + 64]
	mov [rsi], al

 memswp$21:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memswp$22:
	; Goto 5
	jmp memswp$5

 memswp$23:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memswp$24:
	; FunctionEnd memswp

section .data

int4$2#:
	; Initializer SignedInt 2
	dd 2

section .text

 bsearch:
	; Assign firstIndex 0
	mov dword [rbp + 56], 0

 bsearch$1:
	; BinarySubtract lastIndex listSize 1
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 bsearch$2:
	; NotEqual 4 listSize 0
	cmp dword [rbp + 40], 0
	jne bsearch$4

 bsearch$3:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$4:
	; IntegralToIntegral £temporary1986 valueList
	mov rbx, [rbp + 32]

 bsearch$5:
	; SignedMultiply £temporary1987 firstIndex valueSize
	mov eax, [rbp + 56]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$6:
	; IntegralToIntegral £temporary1988 £temporary1987
	mov rcx, 4294967295
	and rax, rcx

 bsearch$7:
	; BinaryAdd firstValuePtr £temporary1986 £temporary1988
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$8:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$9:
	; Parameter pointer keyPtr 96
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$10:
	; Parameter pointer firstValuePtr 104
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$11:
	; Call compare 72 0
	mov qword [rbp + 72], bsearch$12
	mov [rbp + 80], rbp
	add rbp, 72
	mov rax, [rbp + 48]
	jmp rax

 bsearch$12:
	; PostCall 72

 bsearch$13:
	; GetReturnValue £temporary1991

 bsearch$14:
	; Assign firstCompare £temporary1991
	mov [rbp + 72], ebx

 bsearch$15:
	; SignedGreaterThanEqual 17 firstCompare 0
	cmp dword [rbp + 72], 0
	jge bsearch$17

 bsearch$16:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$17:
	; NotEqual 19 firstCompare 0
	cmp dword [rbp + 72], 0
	jne bsearch$19

 bsearch$18:
	; Return firstValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$19:
	; IntegralToIntegral £temporary1994 valueList
	mov rbx, [rbp + 32]

 bsearch$20:
	; SignedMultiply £temporary1995 lastIndex valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$21:
	; IntegralToIntegral £temporary1996 £temporary1995
	mov rcx, 4294967295
	and rax, rcx

 bsearch$22:
	; BinaryAdd lastValuePtr £temporary1994 £temporary1996
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$23:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$24:
	; Parameter pointer keyPtr 96
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$25:
	; Parameter pointer lastValuePtr 104
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$26:
	; Call compare 72 0
	mov qword [rbp + 72], bsearch$27
	mov [rbp + 80], rbp
	add rbp, 72
	mov rax, [rbp + 48]
	jmp rax

 bsearch$27:
	; PostCall 72

 bsearch$28:
	; GetReturnValue £temporary1999

 bsearch$29:
	; Assign lastCompare £temporary1999
	mov [rbp + 72], ebx

 bsearch$30:
	; SignedLessThanEqual 32 lastCompare 0
	cmp dword [rbp + 72], 0
	jle bsearch$32

 bsearch$31:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$32:
	; NotEqual 34 lastCompare 0
	cmp dword [rbp + 72], 0
	jne bsearch$34

 bsearch$33:
	; Return lastValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$34:
	; BinaryAdd £temporary2002 firstIndex lastIndex
	mov eax, [rbp + 56]
	add eax, [rbp + 60]

 bsearch$35:
	; SignedDivide middleIndex £temporary2002 2
	xor edx, edx
	idiv dword [int4$2#]
	mov [rbp + 64], eax

 bsearch$36:
	; IntegralToIntegral £temporary2004 valueList
	mov rbx, [rbp + 32]

 bsearch$37:
	; SignedMultiply £temporary2005 middleIndex valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$38:
	; IntegralToIntegral £temporary2006 £temporary2005
	mov rcx, 4294967295
	and rax, rcx

 bsearch$39:
	; BinaryAdd middleValuePtr £temporary2004 £temporary2006
	add rbx, rax
	mov [rbp + 68], rbx

 bsearch$40:
	; PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$41:
	; Parameter pointer keyPtr 100
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 bsearch$42:
	; Parameter pointer middleValuePtr 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 bsearch$43:
	; Call compare 76 0
	mov qword [rbp + 76], bsearch$44
	mov [rbp + 84], rbp
	add rbp, 76
	mov rax, [rbp + 48]
	jmp rax

 bsearch$44:
	; PostCall 76

 bsearch$45:
	; GetReturnValue £temporary2009

 bsearch$46:
	; Assign middleCompare £temporary2009
	mov [rbp + 76], ebx

 bsearch$47:
	; SignedGreaterThanEqual 50 middleCompare 0
	cmp dword [rbp + 76], 0
	jge bsearch$50

 bsearch$48:
	; Assign lastIndex middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 60], eax

 bsearch$49:
	; Goto 4
	jmp bsearch$4

 bsearch$50:
	; SignedLessThanEqual 53 middleCompare 0
	cmp dword [rbp + 76], 0
	jle bsearch$53

 bsearch$51:
	; Assign firstIndex middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 56], eax

 bsearch$52:
	; Goto 4
	jmp bsearch$4

 bsearch$53:
	; Return middleValuePtr
	mov rbx, [rbp + 68]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$54:
	; FunctionEnd bsearch

section .data

@4297$g_randValue:
	; InitializerZero 8
	times 8 db 0

section .data

int8$1664525#:
	; Initializer Signed_Long_Int 1664525
	dq 1664525

section .data

int8$127#:
	; Initializer Signed_Long_Int 127
	dq 127

section .text

 rand:
	; SignedMultiply £temporary2013 g_randValue 1664525
	mov rax, [@4297$g_randValue]
	xor rdx, rdx
	imul qword [int8$1664525#]

 rand$1:
	; BinaryAdd £temporary2014 £temporary2013 1013904223
	add rax, 1013904223

 rand$2:
	; SignedModulo g_randValue £temporary2014 127
	xor rdx, rdx
	idiv qword [int8$127#]
	mov [@4297$g_randValue], rdx

 rand$3:
	; IntegralToIntegral £temporary2016 g_randValue
	mov rbx, [@4297$g_randValue]
	cmp rbx, 0
	jge rand$4
	neg rbx
	neg ebx

 rand$4:
	; Return £temporary2016
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rand$5:
	; FunctionEnd rand

section .text

 srand:
	; IntegralToIntegral £temporary2017 seed
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 srand$1:
	; Assign g_randValue £temporary2017
	mov [@4297$g_randValue], rax

 srand$2:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 srand$3:
	; FunctionEnd srand

section .data

string_stack20top2025u2C20heap20top2025u2C20heap20bottom2025u0A#:
	; Initializer String stack top %u, heap top %u, heap bottom %u\n
	db "stack top %u, heap top %u, heap bottom %u", 10, 0

section .data

string_2020index2025u2C20address2025u2C20size2025u0A#:
	; Initializer String   index %u, address %u, size %u\n
	db "  index %u, address %u, size %u", 10, 0

section .data

string_0A#:
	; Initializer String \n
	db 10, 0

section .text

 print_heap2:
	; Dereference £temporary2018 -> 32764 32764 0
	mov rsi, 32764

 print_heap2$1:
	; Assign heapBottom £temporary2018 -> 32764
	mov eax, [rsi]
	mov [rbp + 24], eax

 print_heap2$2:
	; Dereference £temporary2019 -> 32766 32766 0
	mov rsi, 32766

 print_heap2$3:
	; Assign topStack £temporary2019 -> 32766
	mov eax, [rsi]
	mov [rbp + 28], eax

 print_heap2$4:
	; Dereference £temporary2020 -> 32762 32762 0
	mov rsi, 32762

 print_heap2$5:
	; Assign heapTop £temporary2020 -> 32762
	mov eax, [rsi]
	mov [rbp + 32], eax

 print_heap2$6:
	; Assign index 0
	mov dword [rbp + 36], 0

 print_heap2$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap2$8:
	; Parameter pointer "stack top %u, heap top %u, heap bottom %u\n" 64
	mov qword [rbp + 64], string_stack20top2025u2C20heap20top2025u2C20heap20bottom2025u0A#

 print_heap2$9:
	; Parameter unsigned int topStack 72
	mov eax, [rbp + 28]
	mov [rbp + 72], eax

 print_heap2$10:
	; Parameter unsigned int heapTop 76
	mov eax, [rbp + 32]
	mov [rbp + 76], eax

 print_heap2$11:
	; Parameter unsigned int heapBottom 80
	mov eax, [rbp + 24]
	mov [rbp + 80], eax

 print_heap2$12:
	; Call printf 40 12
	mov qword [rbp + 40], print_heap2$13
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

 print_heap2$13:
	; PostCall 40

 print_heap2$14:
	; Equal 32 heapTop 0
	cmp dword [rbp + 32], 0
	je print_heap2$32

 print_heap2$15:
	; IntegralToIntegral £temporary2023 heapTop
	mov esi, [rbp + 32]
	mov rax, 4294967295
	and rsi, rax

 print_heap2$16:
	; BinaryAdd £temporary2024 £temporary2023 4
	add rsi, 4

 print_heap2$17:
	; Dereference £temporary2026 -> £temporary2024 £temporary2024 0

 print_heap2$18:
	; Assign size £temporary2026 -> £temporary2024
	mov eax, [rsi]
	mov [rbp + 40], eax

 print_heap2$19:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap2$20:
	; Parameter pointer "  index %u, address %u, size %u\n" 68
	mov qword [rbp + 68], string_2020index2025u2C20address2025u2C20size2025u0A#

 print_heap2$21:
	; Assign £temporary2027 index
	mov eax, [rbp + 36]

 print_heap2$22:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 print_heap2$23:
	; Parameter unsigned int £temporary2027 76
	mov [rbp + 76], eax

 print_heap2$24:
	; Parameter unsigned int heapTop 80
	mov eax, [rbp + 32]
	mov [rbp + 80], eax

 print_heap2$25:
	; Parameter unsigned int size 84
	mov eax, [rbp + 40]
	mov [rbp + 84], eax

 print_heap2$26:
	; Call printf 44 12
	mov qword [rbp + 44], print_heap2$27
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 print_heap2$27:
	; PostCall 44

 print_heap2$28:
	; IntegralToIntegral £temporary2029 heapTop
	mov esi, [rbp + 32]
	mov rax, 4294967295
	and rsi, rax

 print_heap2$29:
	; Dereference £temporary2030 -> £temporary2029 £temporary2029 0

 print_heap2$30:
	; Assign heapTop £temporary2030 -> £temporary2029
	mov eax, [rsi]
	mov [rbp + 32], eax

 print_heap2$31:
	; Goto 14
	jmp print_heap2$14

 print_heap2$32:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap2$33:
	; Parameter pointer "\n" 64
	mov qword [rbp + 64], string_0A#

 print_heap2$34:
	; Call printf 40 0
	mov qword [rbp + 40], print_heap2$35
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 print_heap2$35:
	; PostCall 40

 print_heap2$36:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_heap2$37:
	; FunctionEnd print_heap2

section .data

g_funcArray:
	; Initializer Pointer 0
	dq 0
	; InitializerZero 2040
	times 2040 db 0

section .data

string_Added20function20index2025i3A2025i0A#:
	; Initializer String Added function index %i: %i\n
	db "Added function index %i: %i", 10, 0

section .data

Array_8#:
	; Initializer Array 8
	dq 8

section .text

 atexit:
	; Empty

 atexit$1:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atexit$2:
	; Parameter pointer "\n" 60
	mov qword [rbp + 60], string_0A#

 atexit$3:
	; Call printf 36 0
	mov qword [rbp + 36], atexit$4
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

 atexit$4:
	; PostCall 36

 atexit$5:
	; Assign index 0
	mov dword [rbp + 32], 0

 atexit$6:
	; SignedGreaterThanEqual 30 index 256
	cmp dword [rbp + 32], 256
	jge atexit$30

 atexit$7:
	; IntegralToIntegral £temporary2036 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$8:
	; UnsignedMultiply £temporary2037 £temporary2036 8
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$9:
	; BinaryAdd £temporary2038 g_funcArray £temporary2037
	mov rsi, g_funcArray
	add rsi, rax

 atexit$10:
	; Dereference £temporary2035 -> £temporary2038 £temporary2038 0

 atexit$11:
	; NotEqual 28 £temporary2035 -> £temporary2038 0
	cmp qword [rsi], 0
	jne atexit$28

 atexit$12:
	; IntegralToIntegral £temporary2041 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$13:
	; UnsignedMultiply £temporary2042 £temporary2041 8
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$14:
	; BinaryAdd £temporary2043 g_funcArray £temporary2042
	mov rsi, g_funcArray
	add rsi, rax

 atexit$15:
	; Dereference £temporary2040 -> £temporary2043 £temporary2043 0

 atexit$16:
	; Assign £temporary2040 -> £temporary2043 fcn
	mov rax, [rbp + 24]
	mov [rsi], rax

 atexit$17:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atexit$18:
	; Parameter pointer "Added function index %i: %i\n" 60
	mov qword [rbp + 60], string_Added20function20index2025i3A2025i0A#

 atexit$19:
	; Parameter signedint index 68
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

 atexit$20:
	; IntegralToIntegral £temporary2045 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$21:
	; UnsignedMultiply £temporary2046 £temporary2045 8
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$22:
	; BinaryAdd £temporary2047 g_funcArray £temporary2046
	mov rsi, g_funcArray
	add rsi, rax

 atexit$23:
	; Dereference £temporary2044 -> £temporary2047 £temporary2047 0

 atexit$24:
	; Parameter pointer £temporary2044 -> £temporary2047 72
	mov rax, [rsi]
	mov [rbp + 72], rax

 atexit$25:
	; Call printf 36 12
	mov qword [rbp + 36], atexit$26
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

 atexit$26:
	; PostCall 36

 atexit$27:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$28:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 atexit$29:
	; Goto 6
	jmp atexit$6

 atexit$30:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$31:
	; FunctionEnd atexit

section .data

string_Called20function20index2025i3A2025i0A#:
	; Initializer String Called function index %i: %i\n
	db "Called function index %i: %i", 10, 0

section .text

 exit:
	; Empty

 exit$1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit$2:
	; Parameter pointer "\n" 56
	mov qword [rbp + 56], string_0A#

 exit$3:
	; Call printf 32 0
	mov qword [rbp + 32], exit$4
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 exit$4:
	; PostCall 32

 exit$5:
	; Assign index 257
	mov dword [rbp + 28], 257

 exit$6:
	; SignedLessThan 31 index 0
	cmp dword [rbp + 28], 0
	jl exit$31

 exit$7:
	; IntegralToIntegral £temporary2053 index
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$8:
	; UnsignedMultiply £temporary2054 £temporary2053 8
	xor rdx, rdx
	mul qword [Array_8#]

 exit$9:
	; BinaryAdd £temporary2055 g_funcArray £temporary2054
	mov rsi, g_funcArray
	add rsi, rax

 exit$10:
	; Dereference £temporary2052 -> £temporary2055 £temporary2055 0

 exit$11:
	; Equal 29 £temporary2052 -> £temporary2055 0
	cmp qword [rsi], 0
	je exit$29

 exit$12:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit$13:
	; Parameter pointer "Called function index %i: %i\n" 56
	mov qword [rbp + 56], string_Called20function20index2025i3A2025i0A#

 exit$14:
	; Parameter signedint index 64
	mov eax, [rbp + 28]
	mov [rbp + 64], eax

 exit$15:
	; IntegralToIntegral £temporary2058 index
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$16:
	; UnsignedMultiply £temporary2059 £temporary2058 8
	xor rdx, rdx
	mul qword [Array_8#]

 exit$17:
	; BinaryAdd £temporary2060 g_funcArray £temporary2059
	mov rsi, g_funcArray
	add rsi, rax

 exit$18:
	; Dereference £temporary2057 -> £temporary2060 £temporary2060 0

 exit$19:
	; Parameter pointer £temporary2057 -> £temporary2060 68
	mov rax, [rsi]
	mov [rbp + 68], rax

 exit$20:
	; Call printf 32 12
	mov qword [rbp + 32], exit$21
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 12
	jmp printf

 exit$21:
	; PostCall 32

 exit$22:
	; IntegralToIntegral £temporary2063 index
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$23:
	; UnsignedMultiply £temporary2064 £temporary2063 8
	xor rdx, rdx
	mul qword [Array_8#]

 exit$24:
	; BinaryAdd £temporary2065 g_funcArray £temporary2064
	mov rbx, g_funcArray
	add rbx, rax

 exit$25:
	; Dereference £temporary2062 -> £temporary2065 £temporary2065 0

 exit$26:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 32], rbx

 exit$27:
	; Call £temporary2062 -> £temporary2065 32 0
	mov qword [rbp + 2080], exit$28
	mov [rbp + 2088], rbp
	add rbp, 2080
	mov rsi, rbp
	mov rax, [rsi]
	jmp rax

 exit$28:
	; PostCall 32
	mov rbx, [rbp + 32]

 exit$29:
	; BinarySubtract index index 1
	dec dword [rbp + 28]

 exit$30:
	; Goto 6
	jmp exit$6

 exit$31:
	; AssignRegister rax 60
	mov rax, 60

 exit$32:
	; IntegralToIntegral £temporary2069 status
	mov edi, [rbp + 24]
	mov rbx, 4294967295
	and rdi, rbx

 exit$33:
	; AssignRegister rdi £temporary2069

 exit$34:
	; SysCall
	syscall

 exit$35:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit$36:
	; FunctionEnd exit

section .text

 swap:
	; Empty

 swap$1:
	; Assign index 0
	mov dword [rbp + 44], 0

 swap$2:
	; SignedGreaterThanEqual 20 index valueSize
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge swap$20

 swap$3:
	; IntegralToIntegral £temporary2073 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$4:
	; BinaryAdd £temporary2075 leftValuePtr £temporary2073
	mov rsi, [rbp + 24]
	add rsi, rax

 swap$5:
	; Dereference £temporary2072 -> £temporary2075 £temporary2075 0

 swap$6:
	; Assign tempValue £temporary2072 -> £temporary2075
	mov al, [rsi]
	mov [rbp + 48], al

 swap$7:
	; IntegralToIntegral £temporary2077 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$8:
	; BinaryAdd £temporary2079 leftValuePtr £temporary2077
	mov rsi, [rbp + 24]
	add rsi, rax

 swap$9:
	; Dereference £temporary2076 -> £temporary2079 £temporary2079 0

 swap$10:
	; IntegralToIntegral £temporary2081 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$11:
	; BinaryAdd £temporary2083 rightValuePtr £temporary2081
	mov rdi, [rbp + 32]
	add rdi, rax

 swap$12:
	; Dereference £temporary2080 -> £temporary2083 £temporary2083 0

 swap$13:
	; Assign £temporary2076 -> £temporary2079 £temporary2080 -> £temporary2083
	mov al, [rdi]
	mov [rsi], al

 swap$14:
	; IntegralToIntegral £temporary2085 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$15:
	; BinaryAdd £temporary2087 rightValuePtr £temporary2085
	mov rsi, [rbp + 32]
	add rsi, rax

 swap$16:
	; Dereference £temporary2084 -> £temporary2087 £temporary2087 0

 swap$17:
	; Assign £temporary2084 -> £temporary2087 tempValue
	mov al, [rbp + 48]
	mov [rsi], al

 swap$18:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 swap$19:
	; Goto 2
	jmp swap$2

 swap$20:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 swap$21:
	; FunctionEnd swap

section .text

 qsort:
	; Empty

 qsort$1:
	; IntegralToIntegral £temporary2088 valueList
	mov rax, [rbp + 24]

 qsort$2:
	; Assign charList £temporary2088
	mov [rbp + 52], rax

 qsort$3:
	; BinarySubtract index1 listSize 1
	mov eax, [rbp + 32]
	dec eax
	mov [rbp + 60], eax

 qsort$4:
	; SignedLessThanEqual 33 index1 0
	cmp dword [rbp + 60], 0
	jle qsort$33

 qsort$5:
	; Assign update 0
	mov dword [rbp + 48], 0

 qsort$6:
	; Assign index2 0
	mov dword [rbp + 64], 0

 qsort$7:
	; SignedGreaterThanEqual 31 index2 index1
	mov eax, [rbp + 60]
	cmp [rbp + 64], eax
	jge qsort$31

 qsort$8:
	; SignedMultiply £temporary2094 index2 valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 36]

 qsort$9:
	; IntegralToIntegral £temporary2095 £temporary2094
	mov rbx, 4294967295
	and rax, rbx

 qsort$10:
	; BinaryAdd valuePtr1 charList £temporary2095
	mov rbx, [rbp + 52]
	add rbx, rax
	mov [rbp + 68], rbx

 qsort$11:
	; BinaryAdd £temporary2098 index2 1
	mov eax, [rbp + 64]
	inc eax

 qsort$12:
	; SignedMultiply £temporary2099 £temporary2098 valueSize
	xor edx, edx
	imul dword [rbp + 36]

 qsort$13:
	; IntegralToIntegral £temporary2100 £temporary2099
	mov rbx, 4294967295
	and rax, rbx

 qsort$14:
	; BinaryAdd valuePtr2 charList £temporary2100
	mov rbx, [rbp + 52]
	add rbx, rax
	mov [rbp + 76], rbx

 qsort$15:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$16:
	; Parameter pointer valuePtr1 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$17:
	; Parameter pointer valuePtr2 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$18:
	; Call compare 84 0
	mov qword [rbp + 84], qsort$19
	mov [rbp + 92], rbp
	add rbp, 84
	mov rax, [rbp + 40]
	jmp rax

 qsort$19:
	; PostCall 84

 qsort$20:
	; GetReturnValue £temporary2103

 qsort$21:
	; SignedLessThanEqual 29 £temporary2103 0
	cmp ebx, 0
	jle qsort$29

 qsort$22:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$23:
	; Parameter pointer valuePtr1 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$24:
	; Parameter pointer valuePtr2 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$25:
	; Parameter signedint valueSize 124
	mov eax, [rbp + 36]
	mov [rbp + 124], eax

 qsort$26:
	; Call swap 84 0
	mov qword [rbp + 84], qsort$27
	mov [rbp + 92], rbp
	add rbp, 84
	jmp swap

 qsort$27:
	; PostCall 84

 qsort$28:
	; Assign update 1
	mov dword [rbp + 48], 1

 qsort$29:
	; BinaryAdd index2 index2 1
	inc dword [rbp + 64]

 qsort$30:
	; Goto 7
	jmp qsort$7

 qsort$31:
	; BinarySubtract index1 index1 1
	dec dword [rbp + 60]

 qsort$32:
	; Goto 4
	jmp qsort$4

 qsort$33:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 qsort$34:
	; FunctionEnd qsort

section .text

 @abs:
	; SignedGreaterThanEqual 4 value 0
	cmp dword [rbp + 24], 0
	jge @abs$4

 @abs$1:
	; UnarySubtract £temporary2109 value
	mov ebx, [rbp + 24]
	neg ebx

 @abs$2:
	; Assign £temporary2110 £temporary2109

 @abs$3:
	; Goto 5
	jmp @abs$5

 @abs$4:
	; Assign £temporary2110 value
	mov ebx, [rbp + 24]

 @abs$5:
	; Return £temporary2110
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @abs$6:
	; FunctionEnd @abs

section .text

 labs:
	; SignedGreaterThanEqual 4 value 0
	cmp qword [rbp + 24], 0
	jge labs$4

 labs$1:
	; UnarySubtract £temporary2112 value
	mov rbx, [rbp + 24]
	neg rbx

 labs$2:
	; Assign £temporary2113 £temporary2112

 labs$3:
	; Goto 5
	jmp labs$5

 labs$4:
	; Assign £temporary2113 value
	mov rbx, [rbp + 24]

 labs$5:
	; Return £temporary2113
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 labs$6:
	; FunctionEnd labs

section .text

 div:
	; Assign result.quot 0
	mov dword [rbp + 32], 0

 div$1:
	; Assign result.rem 0
	mov dword [rbp + 36], 0

 div$2:
	; NotEqual 5 denum 0
	cmp dword [rbp + 28], 0
	jne div$5

 div$3:
	; Assign errno 6
	mov dword [errno], 6

 div$4:
	; Return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$5:
	; SignedDivide result.quot num denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 32], eax

 div$6:
	; SignedModulo result.rem num denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 36], edx

 div$7:
	; Return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$8:
	; FunctionEnd div

section .text

 ldiv:
	; Assign result.quot 0
	mov qword [rbp + 40], 0

 ldiv$1:
	; Assign result.rem 0
	mov qword [rbp + 48], 0

 ldiv$2:
	; NotEqual 5 denum 0
	cmp qword [rbp + 32], 0
	jne ldiv$5

 ldiv$3:
	; Assign errno 6
	mov dword [errno], 6

 ldiv$4:
	; Return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$5:
	; SignedDivide result.quot num denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 40], rax

 ldiv$6:
	; SignedModulo result.rem num denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 48], rdx

 ldiv$7:
	; Return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$8:
	; FunctionEnd ldiv
