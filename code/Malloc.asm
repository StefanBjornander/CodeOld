	global g_firstBlockPtr
	global malloc
	global calloc
	global free
	global realloc
	global print_heap

	extern stderr
	extern fprintf
	extern abort
	extern memset
	extern memcpy
	extern printf
	extern $StackTop


section .data

g_firstBlockPtr:
	; Initializer Pointer 0
	dq 0

section .data

@616$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@617$string_memorySize203E3D200#:
	; Initializer String memorySize >= 0
	db "memorySize >= 0", 0

section .data

@618$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .text

 malloc:
	; IntegralToIntegral £temporary17 memorySize
	mov eax, [rbp + 24]

 malloc$1:
	; BinaryAdd newBlockSize £temporary17 12
	add eax, 12
	mov [rbp + 28], eax

 malloc$2:
	; Assign minGap 0
	mov dword [rbp + 32], 0

 malloc$3:
	; StackTop £temporary19
	mov rax, $StackTop

 malloc$4:
	; BinaryAdd £temporary20 £temporary19 1048572
	add rax, 1048572

 malloc$5:
	; IntegralToIntegral £temporary22 £temporary20

 malloc$6:
	; Assign lastAddress £temporary22
	mov [rbp + 36], eax

 malloc$7:
	; Assign minBlockPtr 0
	mov qword [rbp + 40], 0

 malloc$8:
	; Assign minPrevBlockPtr 0
	mov qword [rbp + 48], 0

 malloc$9:
	; Assign prevBlockPtr 0
	mov qword [rbp + 56], 0

 malloc$10:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 64], rax

 malloc$11:
	; SignedGreaterThanEqual 23 memorySize 0
	cmp dword [rbp + 24], 0
	jge malloc$23

 malloc$12:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc$13:
	; Parameter 96 pointer stderr
	mov rax, [stderr]
	mov [rbp + 96], rax

 malloc$14:
	; Parameter 104 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 104], @616$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 malloc$15:
	; Parameter 112 pointer "memorySize >= 0"
	mov qword [rbp + 112], @617$string_memorySize203E3D200#

 malloc$16:
	; Parameter 120 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c"
	mov qword [rbp + 120], @618$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 malloc$17:
	; Parameter 128 signedint 41
	mov dword [rbp + 128], 41

 malloc$18:
	; Call 72 fprintf 20
	mov qword [rbp + 72], malloc$19
	mov [rbp + 80], rbp
	add rbp, 72
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 malloc$19:
	; PostCall 72

 malloc$20:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc$21:
	; Call 72 abort 0
	mov qword [rbp + 72], malloc$22
	mov [rbp + 80], rbp
	add rbp, 72
	jmp abort

 malloc$22:
	; PostCall 72

 malloc$23:
	; NotEqual 26 memorySize 0
	cmp dword [rbp + 24], 0
	jne malloc$26

 malloc$24:
	; SetReturnValue

 malloc$25:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$26:
	; Equal 44 currBlockPtr 0
	cmp qword [rbp + 64], 0
	je malloc$44

 malloc$27:
	; IntegralToIntegral £temporary29 currBlockPtr
	mov rax, [rbp + 64]

 malloc$28:
	; Assign currAddress £temporary29
	mov [rbp + 72], eax

 malloc$29:
	; Dereference £temporary30 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 64]

 malloc$30:
	; BinaryAdd £temporary31 currAddress £temporary30 -> currBlockPtr
	mov eax, [rbp + 72]
	add eax, [rsi]

 malloc$31:
	; BinaryAdd £temporary32 £temporary31 12
	add eax, 12

 malloc$32:
	; BinarySubtract currGap lastAddress £temporary32
	mov ebx, [rbp + 36]
	sub ebx, eax
	mov [rbp + 76], ebx

 malloc$33:
	; UnsignedGreaterThan 39 newBlockSize currGap
	mov eax, [rbp + 76]
	cmp [rbp + 28], eax
	ja malloc$39

 malloc$34:
	; Equal 36 minGap 0
	cmp dword [rbp + 32], 0
	je malloc$36

 malloc$35:
	; UnsignedGreaterThanEqual 39 currGap minGap
	mov eax, [rbp + 32]
	cmp [rbp + 76], eax
	jae malloc$39

 malloc$36:
	; Assign minGap currGap
	mov eax, [rbp + 76]
	mov [rbp + 32], eax

 malloc$37:
	; Assign minBlockPtr currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 40], rax

 malloc$38:
	; Assign minPrevBlockPtr prevBlockPtr
	mov rax, [rbp + 56]
	mov [rbp + 48], rax

 malloc$39:
	; Assign lastAddress currAddress
	mov eax, [rbp + 72]
	mov [rbp + 36], eax

 malloc$40:
	; Assign prevBlockPtr currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 56], rax

 malloc$41:
	; Dereference £temporary39 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 64]

 malloc$42:
	; Assign currBlockPtr £temporary39 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 64], rax

 malloc$43:
	; Jump 26
	jmp malloc$26

 malloc$44:
	; Equal 64 minBlockPtr 0
	cmp qword [rbp + 40], 0
	je malloc$64

 malloc$45:
	; IntegralToIntegral £temporary41 minBlockPtr
	mov rax, [rbp + 40]

 malloc$46:
	; Dereference £temporary42 -> minBlockPtr minBlockPtr 0
	mov rsi, [rbp + 40]

 malloc$47:
	; BinaryAdd £temporary43 £temporary41 £temporary42 -> minBlockPtr
	add eax, [rsi]

 malloc$48:
	; BinaryAdd newAddress £temporary43 12
	add eax, 12
	mov [rbp + 72], eax

 malloc$49:
	; IntegralToIntegral £temporary45 newAddress
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

 malloc$50:
	; Assign newBlockPtr £temporary45
	mov [rbp + 76], rax

 malloc$51:
	; Dereference £temporary46 -> newBlockPtr newBlockPtr 0
	mov rsi, [rbp + 76]

 malloc$52:
	; Assign £temporary46 -> newBlockPtr memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

 malloc$53:
	; Dereference £temporary47 -> newBlockPtr newBlockPtr 0
	mov rsi, [rbp + 76]

 malloc$54:
	; Assign £temporary47 -> newBlockPtr minBlockPtr
	mov rax, [rbp + 40]
	mov [rsi + 4], rax

 malloc$55:
	; Equal 59 minPrevBlockPtr 0
	cmp qword [rbp + 48], 0
	je malloc$59

 malloc$56:
	; Dereference £temporary49 -> minPrevBlockPtr minPrevBlockPtr 0
	mov rsi, [rbp + 48]

 malloc$57:
	; Assign £temporary49 -> minPrevBlockPtr newBlockPtr
	mov rax, [rbp + 76]
	mov [rsi + 4], rax

 malloc$58:
	; Jump 60
	jmp malloc$60

 malloc$59:
	; Assign g_firstBlockPtr newBlockPtr
	mov rax, [rbp + 76]
	mov [g_firstBlockPtr], rax

 malloc$60:
	; BinaryAdd £temporary50 newAddress 12
	mov ebx, [rbp + 72]
	add ebx, 12

 malloc$61:
	; IntegralToIntegral £temporary51 £temporary50
	mov rax, 4294967295
	and rbx, rax

 malloc$62:
	; SetReturnValue

 malloc$63:
	; Return £temporary51
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$64:
	; BinarySubtract newAddress lastAddress newBlockSize
	mov eax, [rbp + 36]
	sub eax, [rbp + 28]
	mov [rbp + 72], eax

 malloc$65:
	; InspectRegister £temporary53 rbp

 malloc$66:
	; IntegralToIntegral £temporary54 £temporary53

 malloc$67:
	; Assign stackTop £temporary54
	mov [rbp + 76], ebp

 malloc$68:
	; UnsignedGreaterThan 84 stackTop newAddress
	mov eax, [rbp + 72]
	cmp [rbp + 76], eax
	ja malloc$84

 malloc$69:
	; IntegralToIntegral £temporary56 newAddress
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

 malloc$70:
	; Assign newBlockPtr £temporary56
	mov [rbp + 80], rax

 malloc$71:
	; Dereference £temporary57 -> newBlockPtr newBlockPtr 0
	mov rsi, [rbp + 80]

 malloc$72:
	; Assign £temporary57 -> newBlockPtr memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

 malloc$73:
	; Dereference £temporary58 -> newBlockPtr newBlockPtr 0
	mov rsi, [rbp + 80]

 malloc$74:
	; Assign £temporary58 -> newBlockPtr 0
	mov qword [rsi + 4], 0

 malloc$75:
	; Equal 79 prevBlockPtr 0
	cmp qword [rbp + 56], 0
	je malloc$79

 malloc$76:
	; Dereference £temporary60 -> prevBlockPtr prevBlockPtr 0
	mov rsi, [rbp + 56]

 malloc$77:
	; Assign £temporary60 -> prevBlockPtr newBlockPtr
	mov rax, [rbp + 80]
	mov [rsi + 4], rax

 malloc$78:
	; Jump 80
	jmp malloc$80

 malloc$79:
	; Assign g_firstBlockPtr newBlockPtr
	mov rax, [rbp + 80]
	mov [g_firstBlockPtr], rax

 malloc$80:
	; BinaryAdd £temporary61 newAddress 12
	mov ebx, [rbp + 72]
	add ebx, 12

 malloc$81:
	; IntegralToIntegral £temporary62 £temporary61
	mov rax, 4294967295
	and rbx, rax

 malloc$82:
	; SetReturnValue

 malloc$83:
	; Return £temporary62
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$84:
	; SetReturnValue

 malloc$85:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$86:
	; FunctionEnd malloc

section .text

 calloc:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 calloc$1:
	; SignedMultiply £temporary63 number size
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [rbp + 28]

 calloc$2:
	; Parameter 56 signedint £temporary63
	mov [rbp + 56], eax

 calloc$3:
	; Call 32 malloc 0
	mov qword [rbp + 32], calloc$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp malloc

 calloc$4:
	; PostCall 32

 calloc$5:
	; GetReturnValue £temporary64

 calloc$6:
	; Assign pointer £temporary64
	mov [rbp + 32], rbx

 calloc$7:
	; Equal 14 pointer 0
	cmp qword [rbp + 32], 0
	je calloc$14

 calloc$8:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 calloc$9:
	; Parameter 64 pointer pointer
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 calloc$10:
	; Parameter 72 signedint 0
	mov dword [rbp + 72], 0

 calloc$11:
	; Parameter 76 signedint size
	mov eax, [rbp + 28]
	mov [rbp + 76], eax

 calloc$12:
	; Call 40 memset 0
	mov qword [rbp + 40], calloc$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp memset

 calloc$13:
	; PostCall 40

 calloc$14:
	; SetReturnValue

 calloc$15:
	; Return pointer
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 calloc$16:
	; FunctionEnd calloc

section .text

 free:
	; IntegralToIntegral £temporary67 freeMemoryPtr
	mov rax, [rbp + 24]

 free$1:
	; BinarySubtract £temporary68 £temporary67 12
	sub eax, 12

 free$2:
	; IntegralToIntegral £temporary69 £temporary68
	mov rbx, 4294967295
	and rax, rbx

 free$3:
	; Assign freeBlockPtr £temporary69
	mov [rbp + 32], rax

 free$4:
	; Assign prevBlockPtr 0
	mov qword [rbp + 40], 0

 free$5:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 48], rax

 free$6:
	; NotEqual 8 freeMemoryPtr 0
	cmp qword [rbp + 24], 0
	jne free$8

 free$7:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$8:
	; Equal 32 currBlockPtr 0
	cmp qword [rbp + 48], 0
	je free$32

 free$9:
	; NotEqual 28 currBlockPtr freeBlockPtr
	mov rax, [rbp + 32]
	cmp [rbp + 48], rax
	jne free$28

 free$10:
	; NotEqual 15 prevBlockPtr 0
	cmp qword [rbp + 40], 0
	jne free$15

 free$11:
	; Dereference £temporary74 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 48]

 free$12:
	; NotEqual 15 £temporary74 -> currBlockPtr 0
	cmp qword [rsi + 4], 0
	jne free$15

 free$13:
	; Assign g_firstBlockPtr 0
	mov qword [g_firstBlockPtr], 0

 free$14:
	; Jump 27
	jmp free$27

 free$15:
	; NotEqual 19 prevBlockPtr 0
	cmp qword [rbp + 40], 0
	jne free$19

 free$16:
	; Dereference £temporary78 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 48]

 free$17:
	; Assign g_firstBlockPtr £temporary78 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [g_firstBlockPtr], rax

 free$18:
	; Jump 27
	jmp free$27

 free$19:
	; Dereference £temporary79 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 48]

 free$20:
	; NotEqual 24 £temporary79 -> currBlockPtr 0
	cmp qword [rsi + 4], 0
	jne free$24

 free$21:
	; Dereference £temporary81 -> prevBlockPtr prevBlockPtr 0
	mov rsi, [rbp + 40]

 free$22:
	; Assign £temporary81 -> prevBlockPtr 0
	mov qword [rsi + 4], 0

 free$23:
	; Jump 27
	jmp free$27

 free$24:
	; Dereference £temporary82 -> prevBlockPtr prevBlockPtr 0
	mov rsi, [rbp + 40]

 free$25:
	; Dereference £temporary83 -> currBlockPtr currBlockPtr 0
	mov rdi, [rbp + 48]

 free$26:
	; Assign £temporary82 -> prevBlockPtr £temporary83 -> currBlockPtr
	mov rax, [rdi + 4]
	mov [rsi + 4], rax

 free$27:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$28:
	; Assign prevBlockPtr currBlockPtr
	mov rax, [rbp + 48]
	mov [rbp + 40], rax

 free$29:
	; Dereference £temporary84 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 48]

 free$30:
	; Assign currBlockPtr £temporary84 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 48], rax

 free$31:
	; Jump 8
	jmp free$8

 free$32:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$33:
	; FunctionEnd free

section .data

@723$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@724$string_newMemorySize203E3D200#:
	; Initializer String newMemorySize >= 0
	db "newMemorySize >= 0", 0

section .data

@725$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .data

@732$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@733$string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#:
	; Initializer String ( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )
	db "( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )", 0

section .data

@734$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .text

 realloc:
	; SignedGreaterThanEqual 12 newMemorySize 0
	cmp dword [rbp + 32], 0
	jge realloc$12

 realloc$1:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$2:
	; Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 realloc$3:
	; Parameter 68 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 68], @723$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 realloc$4:
	; Parameter 76 pointer "newMemorySize >= 0"
	mov qword [rbp + 76], @724$string_newMemorySize203E3D200#

 realloc$5:
	; Parameter 84 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c"
	mov qword [rbp + 84], @725$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 realloc$6:
	; Parameter 92 signedint 259
	mov dword [rbp + 92], 259

 realloc$7:
	; Call 36 fprintf 20
	mov qword [rbp + 36], realloc$8
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 realloc$8:
	; PostCall 36

 realloc$9:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$10:
	; Call 36 abort 0
	mov qword [rbp + 36], realloc$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 realloc$11:
	; PostCall 36

 realloc$12:
	; NotEqual 25 oldMemoryPtr 0
	cmp qword [rbp + 24], 0
	jne realloc$25

 realloc$13:
	; SignedGreaterThan 25 newMemorySize 0
	cmp dword [rbp + 32], 0
	jg realloc$25

 realloc$14:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$15:
	; Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 realloc$16:
	; Parameter 68 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 68], @732$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 realloc$17:
	; Parameter 76 pointer "( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )"
	mov qword [rbp + 76], @733$string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#

 realloc$18:
	; Parameter 84 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c"
	mov qword [rbp + 84], @734$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 realloc$19:
	; Parameter 92 signedint 260
	mov dword [rbp + 92], 260

 realloc$20:
	; Call 36 fprintf 20
	mov qword [rbp + 36], realloc$21
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 realloc$21:
	; PostCall 36

 realloc$22:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$23:
	; Call 36 abort 0
	mov qword [rbp + 36], realloc$24
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 realloc$24:
	; PostCall 36

 realloc$25:
	; NotEqual 33 oldMemoryPtr 0
	cmp qword [rbp + 24], 0
	jne realloc$33

 realloc$26:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$27:
	; Parameter 60 signedint newMemorySize
	mov eax, [rbp + 32]
	mov [rbp + 60], eax

 realloc$28:
	; Call 36 malloc 0
	mov qword [rbp + 36], realloc$29
	mov [rbp + 44], rbp
	add rbp, 36
	jmp malloc

 realloc$29:
	; PostCall 36

 realloc$30:
	; GetReturnValue £temporary96

 realloc$31:
	; SetReturnValue

 realloc$32:
	; Return £temporary96
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$33:
	; NotEqual 40 newMemorySize 0
	cmp dword [rbp + 32], 0
	jne realloc$40

 realloc$34:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$35:
	; Parameter 60 pointer oldMemoryPtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 realloc$36:
	; Call 36 free 0
	mov qword [rbp + 36], realloc$37
	mov [rbp + 44], rbp
	add rbp, 36
	jmp free

 realloc$37:
	; PostCall 36

 realloc$38:
	; SetReturnValue

 realloc$39:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$40:
	; IntegralToIntegral £temporary99 newMemorySize
	mov eax, [rbp + 32]

 realloc$41:
	; BinaryAdd newBlockSize £temporary99 12
	add eax, 12
	mov [rbp + 36], eax

 realloc$42:
	; IntegralToIntegral £temporary101 oldMemoryPtr
	mov rax, [rbp + 24]

 realloc$43:
	; BinarySubtract £temporary102 £temporary101 12
	sub eax, 12

 realloc$44:
	; IntegralToIntegral £temporary103 £temporary102
	mov rbx, 4294967295
	and rax, rbx

 realloc$45:
	; Assign oldBlockPtr £temporary103
	mov [rbp + 40], rax

 realloc$46:
	; Dereference £temporary104 -> oldBlockPtr oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$47:
	; UnsignedGreaterThan 52 newBlockSize £temporary104 -> oldBlockPtr
	mov eax, [rsi]
	cmp [rbp + 36], eax
	ja realloc$52

 realloc$48:
	; Dereference £temporary106 -> oldBlockPtr oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$49:
	; Assign £temporary106 -> oldBlockPtr newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

 realloc$50:
	; SetReturnValue

 realloc$51:
	; Return oldMemoryPtr
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$52:
	; StackTop £temporary107
	mov rax, $StackTop

 realloc$53:
	; BinaryAdd £temporary108 £temporary107 1048572
	add rax, 1048572

 realloc$54:
	; IntegralToIntegral £temporary110 £temporary108

 realloc$55:
	; Assign lastAddress £temporary110
	mov [rbp + 48], eax

 realloc$56:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 52], rax

 realloc$57:
	; Equal 71 currBlockPtr 0
	cmp qword [rbp + 52], 0
	je realloc$71

 realloc$58:
	; NotEqual 66 currBlockPtr oldBlockPtr
	mov rax, [rbp + 40]
	cmp [rbp + 52], rax
	jne realloc$66

 realloc$59:
	; IntegralToIntegral £temporary113 currBlockPtr
	mov rax, [rbp + 52]

 realloc$60:
	; BinarySubtract availableSize lastAddress £temporary113
	mov ebx, [rbp + 48]
	sub ebx, eax
	mov [rbp + 60], ebx

 realloc$61:
	; UnsignedLessThan 71 availableSize newBlockSize
	mov eax, [rbp + 36]
	cmp [rbp + 60], eax
	jb realloc$71

 realloc$62:
	; Dereference £temporary116 -> oldBlockPtr oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$63:
	; Assign £temporary116 -> oldBlockPtr newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

 realloc$64:
	; SetReturnValue

 realloc$65:
	; Return oldMemoryPtr
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$66:
	; IntegralToIntegral £temporary117 currBlockPtr
	mov rax, [rbp + 52]

 realloc$67:
	; Assign lastAddress £temporary117
	mov [rbp + 48], eax

 realloc$68:
	; Dereference £temporary118 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 52]

 realloc$69:
	; Assign currBlockPtr £temporary118 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 52], rax

 realloc$70:
	; Jump 57
	jmp realloc$57

 realloc$71:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$72:
	; Parameter 72 signedint newMemorySize
	mov eax, [rbp + 32]
	mov [rbp + 72], eax

 realloc$73:
	; Call 48 malloc 0
	mov qword [rbp + 48], realloc$74
	mov [rbp + 56], rbp
	add rbp, 48
	jmp malloc

 realloc$74:
	; PostCall 48

 realloc$75:
	; GetReturnValue £temporary119

 realloc$76:
	; Assign newMemoryPtr £temporary119
	mov [rbp + 48], rbx

 realloc$77:
	; Equal 90 newMemoryPtr 0
	cmp qword [rbp + 48], 0
	je realloc$90

 realloc$78:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$79:
	; Parameter 80 pointer newMemoryPtr
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 realloc$80:
	; Parameter 88 pointer oldMemoryPtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 realloc$81:
	; Parameter 96 signedint newMemorySize
	mov eax, [rbp + 32]
	mov [rbp + 96], eax

 realloc$82:
	; Call 56 memcpy 0
	mov qword [rbp + 56], realloc$83
	mov [rbp + 64], rbp
	add rbp, 56
	jmp memcpy

 realloc$83:
	; PostCall 56

 realloc$84:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$85:
	; Parameter 80 pointer oldMemoryPtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 realloc$86:
	; Call 56 free 0
	mov qword [rbp + 56], realloc$87
	mov [rbp + 64], rbp
	add rbp, 56
	jmp free

 realloc$87:
	; PostCall 56

 realloc$88:
	; SetReturnValue

 realloc$89:
	; Return newMemoryPtr
	mov rbx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$90:
	; SetReturnValue

 realloc$91:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$92:
	; FunctionEnd realloc

section .data

@787$string_Heap3A0A#:
	; Initializer String Heap:\n
	db "Heap:", 10, 0

section .data

@791$string_2020Address2025u2C20Size2025u0A#:
	; Initializer String   Address %u, Size %u\n
	db "  Address %u, Size %u", 10, 0

section .data

@792$string_0A#:
	; Initializer String \n
	db 10, 0

section .text

 print_heap:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 24], rax

 print_heap$1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap$2:
	; Parameter 56 pointer "Heap:\n"
	mov qword [rbp + 56], @787$string_Heap3A0A#

 print_heap$3:
	; Call 32 printf 0
	mov qword [rbp + 32], print_heap$4
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 print_heap$4:
	; PostCall 32

 print_heap$5:
	; Equal 17 currBlockPtr 0
	cmp qword [rbp + 24], 0
	je print_heap$17

 print_heap$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap$7:
	; Parameter 56 pointer "  Address %u, Size %u\n"
	mov qword [rbp + 56], @791$string_2020Address2025u2C20Size2025u0A#

 print_heap$8:
	; IntegralToIntegral £temporary125 currBlockPtr
	mov rax, [rbp + 24]

 print_heap$9:
	; Parameter 64 unsigned int £temporary125
	mov [rbp + 64], eax

 print_heap$10:
	; Dereference £temporary126 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 24]

 print_heap$11:
	; Parameter 68 unsigned int £temporary126 -> currBlockPtr
	mov eax, [rsi]
	mov [rbp + 68], eax

 print_heap$12:
	; Call 32 printf 8
	mov qword [rbp + 32], print_heap$13
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 print_heap$13:
	; PostCall 32

 print_heap$14:
	; Dereference £temporary128 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 24]

 print_heap$15:
	; Assign currBlockPtr £temporary128 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 24], rax

 print_heap$16:
	; Jump 5
	jmp print_heap$5

 print_heap$17:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap$18:
	; Parameter 56 pointer "\n"
	mov qword [rbp + 56], @792$string_0A#

 print_heap$19:
	; Call 32 printf 0
	mov qword [rbp + 32], print_heap$20
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 print_heap$20:
	; PostCall 32

 print_heap$21:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_heap$22:
	; FunctionEnd print_heap
