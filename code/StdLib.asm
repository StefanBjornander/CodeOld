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
	; GetReturnValue £temporary1943

 atoi$7:
	; IntegralToIntegral £temporary1944 £temporary1943
	cmp rbx, 0
	jge atoi$8
	neg rbx
	neg ebx

 atoi$8:
	; Return £temporary1944
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
	; GetReturnValue £temporary1945

 atol$7:
	; Return £temporary1945
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
	; Address £temporary1946 value
	mov rsi, rbp
	add rsi, 48

 strtol$6:
	; Parameter pointer £temporary1946 96
	mov [rbp + 96], rsi

 strtol$7:
	; Address £temporary1947 chars
	mov rsi, rbp
	add rsi, 44

 strtol$8:
	; Parameter pointer £temporary1947 104
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
	; Dereference £temporary1950 -> endp endp 0
	mov rsi, [rbp + 32]

 strtol$13:
	; IntegralToIntegral £temporary1951 chars
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strtol$14:
	; BinaryAdd £temporary1950 -> endp s £temporary1951
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
	; Address £temporary1956 value
	mov rsi, rbp
	add rsi, 48

 strtoul$6:
	; Parameter pointer £temporary1956 96
	mov [rbp + 96], rsi

 strtoul$7:
	; Address £temporary1957 chars
	mov rsi, rbp
	add rsi, 44

 strtoul$8:
	; Parameter pointer £temporary1957 104
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
	; Dereference £temporary1960 -> endp endp 0
	mov rsi, [rbp + 32]

 strtoul$13:
	; IntegralToIntegral £temporary1961 chars
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strtoul$14:
	; BinaryAdd £temporary1960 -> endp s £temporary1961
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
	; GetReturnValue £temporary1966

 atof$6:
	; Return £temporary1966
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
	; Address £temporary1967 value
	mov rsi, rbp
	add rsi, 44

 strtod$7:
	; Parameter pointer £temporary1967 92
	mov [rbp + 92], rsi

 strtod$8:
	; Address £temporary1968 chars
	mov rsi, rbp
	add rsi, 40

 strtod$9:
	; Parameter pointer £temporary1968 100
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
	; Dereference £temporary1971 -> endp endp 0
	mov rsi, [rbp + 32]

 strtod$14:
	; IntegralToIntegral £temporary1972 chars
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtod$15:
	; BinaryAdd £temporary1971 -> endp s £temporary1972
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
	; IntegralToIntegral £temporary1979 value1
	mov rax, [rbp + 24]

 memswp$1:
	; Assign charValue1 £temporary1979
	mov [rbp + 44], rax

 memswp$2:
	; IntegralToIntegral £temporary1980 value2
	mov rax, [rbp + 32]

 memswp$3:
	; Assign charValue2 £temporary1980
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
	; IntegralToIntegral £temporary1984 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$7:
	; BinaryAdd £temporary1986 charValue1 £temporary1984
	mov rsi, [rbp + 44]
	add rsi, rax

 memswp$8:
	; Dereference £temporary1983 -> £temporary1986 £temporary1986 0

 memswp$9:
	; Assign tempValue £temporary1983 -> £temporary1986
	mov al, [rsi]
	mov [rbp + 64], al

 memswp$10:
	; IntegralToIntegral £temporary1988 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$11:
	; BinaryAdd £temporary1990 charValue1 £temporary1988
	mov rsi, [rbp + 44]
	add rsi, rax

 memswp$12:
	; Dereference £temporary1987 -> £temporary1990 £temporary1990 0

 memswp$13:
	; IntegralToIntegral £temporary1992 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$14:
	; BinaryAdd £temporary1994 charValue2 £temporary1992
	mov rdi, [rbp + 52]
	add rdi, rax

 memswp$15:
	; Dereference £temporary1991 -> £temporary1994 £temporary1994 0

 memswp$16:
	; Assign £temporary1987 -> £temporary1990 £temporary1991 -> £temporary1994
	mov al, [rdi]
	mov [rsi], al

 memswp$17:
	; IntegralToIntegral £temporary1996 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memswp$18:
	; BinaryAdd £temporary1998 charValue2 £temporary1996
	mov rsi, [rbp + 52]
	add rsi, rax

 memswp$19:
	; Dereference £temporary1995 -> £temporary1998 £temporary1998 0

 memswp$20:
	; Assign £temporary1995 -> £temporary1998 tempValue
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
	; IntegralToIntegral £temporary2001 valueList
	mov rbx, [rbp + 32]

 bsearch$5:
	; SignedMultiply £temporary2002 firstIndex valueSize
	mov eax, [rbp + 56]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$6:
	; IntegralToIntegral £temporary2003 £temporary2002
	mov rcx, 4294967295
	and rax, rcx

 bsearch$7:
	; BinaryAdd firstValuePtr £temporary2001 £temporary2003
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
	; GetReturnValue £temporary2006

 bsearch$14:
	; Assign firstCompare £temporary2006
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
	; IntegralToIntegral £temporary2009 valueList
	mov rbx, [rbp + 32]

 bsearch$20:
	; SignedMultiply £temporary2010 lastIndex valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$21:
	; IntegralToIntegral £temporary2011 £temporary2010
	mov rcx, 4294967295
	and rax, rcx

 bsearch$22:
	; BinaryAdd lastValuePtr £temporary2009 £temporary2011
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
	; GetReturnValue £temporary2014

 bsearch$29:
	; Assign lastCompare £temporary2014
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
	; BinaryAdd £temporary2017 firstIndex lastIndex
	mov eax, [rbp + 56]
	add eax, [rbp + 60]

 bsearch$35:
	; SignedDivide middleIndex £temporary2017 2
	xor edx, edx
	idiv dword [int4$2#]
	mov [rbp + 64], eax

 bsearch$36:
	; IntegralToIntegral £temporary2019 valueList
	mov rbx, [rbp + 32]

 bsearch$37:
	; SignedMultiply £temporary2020 middleIndex valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$38:
	; IntegralToIntegral £temporary2021 £temporary2020
	mov rcx, 4294967295
	and rax, rcx

 bsearch$39:
	; BinaryAdd middleValuePtr £temporary2019 £temporary2021
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
	; GetReturnValue £temporary2024

 bsearch$46:
	; Assign middleCompare £temporary2024
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

@3946$g_randValue:
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
	; SignedMultiply £temporary2028 g_randValue 1664525
	mov rax, [@3946$g_randValue]
	xor rdx, rdx
	imul qword [int8$1664525#]

 rand$1:
	; BinaryAdd £temporary2029 £temporary2028 1013904223
	add rax, 1013904223

 rand$2:
	; SignedModulo g_randValue £temporary2029 127
	xor rdx, rdx
	idiv qword [int8$127#]
	mov [@3946$g_randValue], rdx

 rand$3:
	; IntegralToIntegral £temporary2031 g_randValue
	mov rbx, [@3946$g_randValue]
	cmp rbx, 0
	jge rand$4
	neg rbx
	neg ebx

 rand$4:
	; Return £temporary2031
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rand$5:
	; FunctionEnd rand

section .text

 srand:
	; IntegralToIntegral £temporary2032 seed
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 srand$1:
	; Assign g_randValue £temporary2032
	mov [@3946$g_randValue], rax

 srand$2:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 srand$3:
	; FunctionEnd srand

section .data

g_funcArray:
	; Initializer Pointer 0
	dq 0
	; InitializerZero 2040
	times 2040 db 0

section .data

Array_8#:
	; Initializer Array 8
	dq 8

section .text

 atexit:
	; Assign index 0
	mov dword [rbp + 32], 0

 atexit$1:
	; SignedGreaterThanEqual 15 index 256
	cmp dword [rbp + 32], 256
	jge atexit$15

 atexit$2:
	; IntegralToIntegral £temporary2036 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$3:
	; UnsignedMultiply £temporary2037 £temporary2036 8
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$4:
	; BinaryAdd £temporary2038 g_funcArray £temporary2037
	mov rsi, g_funcArray
	add rsi, rax

 atexit$5:
	; Dereference £temporary2035 -> £temporary2038 £temporary2038 0

 atexit$6:
	; NotEqual 13 £temporary2035 -> £temporary2038 0
	cmp qword [rsi], 0
	jne atexit$13

 atexit$7:
	; IntegralToIntegral £temporary2041 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 atexit$8:
	; UnsignedMultiply £temporary2042 £temporary2041 8
	xor rdx, rdx
	mul qword [Array_8#]

 atexit$9:
	; BinaryAdd £temporary2043 g_funcArray £temporary2042
	mov rsi, g_funcArray
	add rsi, rax

 atexit$10:
	; Dereference £temporary2040 -> £temporary2043 £temporary2043 0

 atexit$11:
	; Assign £temporary2040 -> £temporary2043 fcn
	mov rax, [rbp + 24]
	mov [rsi], rax

 atexit$12:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$13:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 atexit$14:
	; Goto 1
	jmp atexit$1

 atexit$15:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$16:
	; FunctionEnd atexit

section .text

 exit:
	; Assign index 257
	mov dword [rbp + 28], 257

 exit$1:
	; SignedLessThan 16 index 0
	cmp dword [rbp + 28], 0
	jl exit$16

 exit$2:
	; IntegralToIntegral £temporary2047 index
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$3:
	; UnsignedMultiply £temporary2048 £temporary2047 8
	xor rdx, rdx
	mul qword [Array_8#]

 exit$4:
	; BinaryAdd £temporary2049 g_funcArray £temporary2048
	mov rsi, g_funcArray
	add rsi, rax

 exit$5:
	; Dereference £temporary2046 -> £temporary2049 £temporary2049 0

 exit$6:
	; Equal 14 £temporary2046 -> £temporary2049 0
	cmp qword [rsi], 0
	je exit$14

 exit$7:
	; IntegralToIntegral £temporary2052 index
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

 exit$8:
	; UnsignedMultiply £temporary2053 £temporary2052 8
	xor rdx, rdx
	mul qword [Array_8#]

 exit$9:
	; BinaryAdd £temporary2054 g_funcArray £temporary2053
	mov rbx, g_funcArray
	add rbx, rax

 exit$10:
	; Dereference £temporary2051 -> £temporary2054 £temporary2054 0

 exit$11:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 32], rbx

 exit$12:
	; Call £temporary2051 -> £temporary2054 32 0
	mov qword [rbp + 2080], exit$13
	mov [rbp + 2088], rbp
	add rbp, 2080
	mov rsi, rbp
	mov rax, [rsi]
	jmp rax

 exit$13:
	; PostCall 32
	mov rbx, [rbp + 32]

 exit$14:
	; BinarySubtract index index 1
	dec dword [rbp + 28]

 exit$15:
	; Goto 1
	jmp exit$1

 exit$16:
	; AssignRegister rax 60
	mov rax, 60

 exit$17:
	; IntegralToIntegral £temporary2058 status
	mov edi, [rbp + 24]
	mov rbx, 4294967295
	and rdi, rbx

 exit$18:
	; AssignRegister rdi £temporary2058

 exit$19:
	; SysCall
	syscall

 exit$20:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit$21:
	; FunctionEnd exit

section .text

 swap:
	; Assign index 0
	mov dword [rbp + 44], 0

 swap$1:
	; SignedGreaterThanEqual 19 index valueSize
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge swap$19

 swap$2:
	; IntegralToIntegral £temporary2062 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$3:
	; BinaryAdd £temporary2064 leftValuePtr £temporary2062
	mov rsi, [rbp + 24]
	add rsi, rax

 swap$4:
	; Dereference £temporary2061 -> £temporary2064 £temporary2064 0

 swap$5:
	; Assign tempValue £temporary2061 -> £temporary2064
	mov al, [rsi]
	mov [rbp + 48], al

 swap$6:
	; IntegralToIntegral £temporary2066 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$7:
	; BinaryAdd £temporary2068 leftValuePtr £temporary2066
	mov rsi, [rbp + 24]
	add rsi, rax

 swap$8:
	; Dereference £temporary2065 -> £temporary2068 £temporary2068 0

 swap$9:
	; IntegralToIntegral £temporary2070 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$10:
	; BinaryAdd £temporary2072 rightValuePtr £temporary2070
	mov rdi, [rbp + 32]
	add rdi, rax

 swap$11:
	; Dereference £temporary2069 -> £temporary2072 £temporary2072 0

 swap$12:
	; Assign £temporary2065 -> £temporary2068 £temporary2069 -> £temporary2072
	mov al, [rdi]
	mov [rsi], al

 swap$13:
	; IntegralToIntegral £temporary2074 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 swap$14:
	; BinaryAdd £temporary2076 rightValuePtr £temporary2074
	mov rsi, [rbp + 32]
	add rsi, rax

 swap$15:
	; Dereference £temporary2073 -> £temporary2076 £temporary2076 0

 swap$16:
	; Assign £temporary2073 -> £temporary2076 tempValue
	mov al, [rbp + 48]
	mov [rsi], al

 swap$17:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 swap$18:
	; Goto 1
	jmp swap$1

 swap$19:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 swap$20:
	; FunctionEnd swap

section .text

 qsort:
	; IntegralToIntegral £temporary2077 valueList
	mov rax, [rbp + 24]

 qsort$1:
	; Assign charList £temporary2077
	mov [rbp + 52], rax

 qsort$2:
	; BinarySubtract index1 listSize 1
	mov eax, [rbp + 32]
	dec eax
	mov [rbp + 60], eax

 qsort$3:
	; SignedLessThanEqual 33 index1 0
	cmp dword [rbp + 60], 0
	jle qsort$33

 qsort$4:
	; Assign update 0
	mov dword [rbp + 48], 0

 qsort$5:
	; Assign index2 0
	mov dword [rbp + 64], 0

 qsort$6:
	; SignedGreaterThanEqual 30 index2 index1
	mov eax, [rbp + 60]
	cmp [rbp + 64], eax
	jge qsort$30

 qsort$7:
	; SignedMultiply £temporary2083 index2 valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 36]

 qsort$8:
	; IntegralToIntegral £temporary2084 £temporary2083
	mov rbx, 4294967295
	and rax, rbx

 qsort$9:
	; BinaryAdd valuePtr1 charList £temporary2084
	mov rbx, [rbp + 52]
	add rbx, rax
	mov [rbp + 68], rbx

 qsort$10:
	; BinaryAdd £temporary2087 index2 1
	mov eax, [rbp + 64]
	inc eax

 qsort$11:
	; SignedMultiply £temporary2088 £temporary2087 valueSize
	xor edx, edx
	imul dword [rbp + 36]

 qsort$12:
	; IntegralToIntegral £temporary2089 £temporary2088
	mov rbx, 4294967295
	and rax, rbx

 qsort$13:
	; BinaryAdd valuePtr2 charList £temporary2089
	mov rbx, [rbp + 52]
	add rbx, rax
	mov [rbp + 76], rbx

 qsort$14:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$15:
	; Parameter pointer valuePtr1 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$16:
	; Parameter pointer valuePtr2 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$17:
	; Call compare 84 0
	mov qword [rbp + 84], qsort$18
	mov [rbp + 92], rbp
	add rbp, 84
	mov rax, [rbp + 40]
	jmp rax

 qsort$18:
	; PostCall 84

 qsort$19:
	; GetReturnValue £temporary2092

 qsort$20:
	; SignedLessThanEqual 28 £temporary2092 0
	cmp ebx, 0
	jle qsort$28

 qsort$21:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$22:
	; Parameter pointer valuePtr1 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$23:
	; Parameter pointer valuePtr2 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$24:
	; Parameter signedint valueSize 124
	mov eax, [rbp + 36]
	mov [rbp + 124], eax

 qsort$25:
	; Call swap 84 0
	mov qword [rbp + 84], qsort$26
	mov [rbp + 92], rbp
	add rbp, 84
	jmp swap

 qsort$26:
	; PostCall 84

 qsort$27:
	; Assign update 1
	mov dword [rbp + 48], 1

 qsort$28:
	; BinaryAdd index2 index2 1
	inc dword [rbp + 64]

 qsort$29:
	; Goto 6
	jmp qsort$6

 qsort$30:
	; Equal 33 update 0
	cmp dword [rbp + 48], 0
	je qsort$33

 qsort$31:
	; BinarySubtract index1 index1 1
	dec dword [rbp + 60]

 qsort$32:
	; Goto 3
	jmp qsort$3

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
	; UnarySubtract £temporary2098 value
	mov ebx, [rbp + 24]
	neg ebx

 @abs$2:
	; Assign £temporary2099 £temporary2098

 @abs$3:
	; Goto 5
	jmp @abs$5

 @abs$4:
	; Assign £temporary2099 value
	mov ebx, [rbp + 24]

 @abs$5:
	; Return £temporary2099
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
	; UnarySubtract £temporary2101 value
	mov rbx, [rbp + 24]
	neg rbx

 labs$2:
	; Assign £temporary2102 £temporary2101

 labs$3:
	; Goto 5
	jmp labs$5

 labs$4:
	; Assign £temporary2102 value
	mov rbx, [rbp + 24]

 labs$5:
	; Return £temporary2102
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
