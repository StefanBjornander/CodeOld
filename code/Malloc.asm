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

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

string_memorySize203E3D200#:
	; Initializer String memorySize >= 0
	db "memorySize >= 0", 0

section .data

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .text

 malloc:
	; SignedGreaterThanEqual 12 memorySize 0
	cmp dword [rbp + 24], 0
	jge malloc$12

 malloc$1:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc$2:
	; Parameter pointer stderr 52
	mov rax, [stderr]
	mov [rbp + 52], rax

 malloc$3:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 60
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 malloc$4:
	; Parameter pointer "memorySize >= 0" 68
	mov qword [rbp + 68], string_memorySize203E3D200#

 malloc$5:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c" 76
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 malloc$6:
	; Parameter signedint 25 84
	mov dword [rbp + 84], 25

 malloc$7:
	; Call fprintf 28 20
	mov qword [rbp + 28], malloc$8
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 malloc$8:
	; PostCall 28

 malloc$9:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc$10:
	; Call abort 28 0
	mov qword [rbp + 28], malloc$11
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

 malloc$11:
	; PostCall 28

 malloc$12:
	; NotEqual 14 memorySize 0
	cmp dword [rbp + 24], 0
	jne malloc$14

 malloc$13:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$14:
	; IntegralToIntegral £temporary142 memorySize
	mov eax, [rbp + 24]

 malloc$15:
	; BinaryAdd newBlockSize £temporary142 12
	add eax, 12
	mov [rbp + 28], eax

 malloc$16:
	; Assign minGap 0
	mov dword [rbp + 32], 0

 malloc$17:
	; StackTop £temporary144
	mov rax, $StackTop

 malloc$18:
	; BinaryAdd £temporary145 £temporary144 1048572
	add rax, 1048572

 malloc$19:
	; IntegralToIntegral £temporary147 £temporary145

 malloc$20:
	; Assign lastAddress £temporary147
	mov [rbp + 36], eax

 malloc$21:
	; Assign minBlockPtr 0
	mov qword [rbp + 40], 0

 malloc$22:
	; Assign minPrevBlockPtr 0
	mov qword [rbp + 48], 0

 malloc$23:
	; Assign prevBlockPtr 0
	mov qword [rbp + 56], 0

 malloc$24:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 64], rax

 malloc$25:
	; Equal 43 currBlockPtr 0
	cmp qword [rbp + 64], 0
	je malloc$43

 malloc$26:
	; IntegralToIntegral £temporary149 currBlockPtr
	mov rax, [rbp + 64]

 malloc$27:
	; Assign currAddress £temporary149
	mov [rbp + 72], eax

 malloc$28:
	; Dereference £temporary150 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 64]

 malloc$29:
	; BinaryAdd £temporary151 currAddress £temporary150 -> currBlockPtr
	mov eax, [rbp + 72]
	add eax, [rsi]

 malloc$30:
	; BinaryAdd £temporary152 £temporary151 12
	add eax, 12

 malloc$31:
	; BinarySubtract currGap lastAddress £temporary152
	mov ebx, [rbp + 36]
	sub ebx, eax
	mov [rbp + 76], ebx

 malloc$32:
	; UnsignedGreaterThan 38 newBlockSize currGap
	mov eax, [rbp + 76]
	cmp [rbp + 28], eax
	ja malloc$38

 malloc$33:
	; Equal 35 minGap 0
	cmp dword [rbp + 32], 0
	je malloc$35

 malloc$34:
	; UnsignedGreaterThanEqual 38 currGap minGap
	mov eax, [rbp + 32]
	cmp [rbp + 76], eax
	jae malloc$38

 malloc$35:
	; Assign minGap currGap
	mov eax, [rbp + 76]
	mov [rbp + 32], eax

 malloc$36:
	; Assign minBlockPtr currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 40], rax

 malloc$37:
	; Assign minPrevBlockPtr prevBlockPtr
	mov rax, [rbp + 56]
	mov [rbp + 48], rax

 malloc$38:
	; Assign lastAddress currAddress
	mov eax, [rbp + 72]
	mov [rbp + 36], eax

 malloc$39:
	; Assign prevBlockPtr currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 56], rax

 malloc$40:
	; Dereference £temporary159 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 64]

 malloc$41:
	; Assign currBlockPtr £temporary159 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 64], rax

 malloc$42:
	; Goto 25
	jmp malloc$25

 malloc$43:
	; Equal 62 minBlockPtr 0
	cmp qword [rbp + 40], 0
	je malloc$62

 malloc$44:
	; IntegralToIntegral £temporary161 minBlockPtr
	mov rax, [rbp + 40]

 malloc$45:
	; Dereference £temporary162 -> minBlockPtr minBlockPtr 0
	mov rsi, [rbp + 40]

 malloc$46:
	; BinaryAdd £temporary163 £temporary161 £temporary162 -> minBlockPtr
	add eax, [rsi]

 malloc$47:
	; BinaryAdd newAddress £temporary163 12
	add eax, 12
	mov [rbp + 72], eax

 malloc$48:
	; IntegralToIntegral £temporary165 newAddress
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

 malloc$49:
	; Assign newBlockPtr £temporary165
	mov [rbp + 76], rax

 malloc$50:
	; Dereference £temporary166 -> newBlockPtr newBlockPtr 0
	mov rsi, [rbp + 76]

 malloc$51:
	; Assign £temporary166 -> newBlockPtr memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

 malloc$52:
	; Dereference £temporary167 -> newBlockPtr newBlockPtr 0
	mov rsi, [rbp + 76]

 malloc$53:
	; Assign £temporary167 -> newBlockPtr minBlockPtr
	mov rax, [rbp + 40]
	mov [rsi + 4], rax

 malloc$54:
	; Equal 58 minPrevBlockPtr 0
	cmp qword [rbp + 48], 0
	je malloc$58

 malloc$55:
	; Dereference £temporary169 -> minPrevBlockPtr minPrevBlockPtr 0
	mov rsi, [rbp + 48]

 malloc$56:
	; Assign £temporary169 -> minPrevBlockPtr newBlockPtr
	mov rax, [rbp + 76]
	mov [rsi + 4], rax

 malloc$57:
	; Goto 59
	jmp malloc$59

 malloc$58:
	; Assign g_firstBlockPtr newBlockPtr
	mov rax, [rbp + 76]
	mov [g_firstBlockPtr], rax

 malloc$59:
	; BinaryAdd £temporary170 newAddress 12
	mov ebx, [rbp + 72]
	add ebx, 12

 malloc$60:
	; IntegralToIntegral £temporary171 £temporary170
	mov rax, 4294967295
	and rbx, rax

 malloc$61:
	; Return £temporary171
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$62:
	; BinarySubtract newAddress lastAddress newBlockSize
	mov eax, [rbp + 36]
	sub eax, [rbp + 28]
	mov [rbp + 72], eax

 malloc$63:
	; InspectRegister £temporary173 rbp

 malloc$64:
	; IntegralToIntegral £temporary174 £temporary173

 malloc$65:
	; Assign stackTop £temporary174
	mov [rbp + 76], ebp

 malloc$66:
	; UnsignedGreaterThan 81 stackTop newAddress
	mov eax, [rbp + 72]
	cmp [rbp + 76], eax
	ja malloc$81

 malloc$67:
	; IntegralToIntegral £temporary176 newAddress
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

 malloc$68:
	; Assign newBlockPtr £temporary176
	mov [rbp + 80], rax

 malloc$69:
	; Dereference £temporary177 -> newBlockPtr newBlockPtr 0
	mov rsi, [rbp + 80]

 malloc$70:
	; Assign £temporary177 -> newBlockPtr memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

 malloc$71:
	; Dereference £temporary178 -> newBlockPtr newBlockPtr 0
	mov rsi, [rbp + 80]

 malloc$72:
	; Assign £temporary178 -> newBlockPtr 0
	mov qword [rsi + 4], 0

 malloc$73:
	; Equal 77 prevBlockPtr 0
	cmp qword [rbp + 56], 0
	je malloc$77

 malloc$74:
	; Dereference £temporary180 -> prevBlockPtr prevBlockPtr 0
	mov rsi, [rbp + 56]

 malloc$75:
	; Assign £temporary180 -> prevBlockPtr newBlockPtr
	mov rax, [rbp + 80]
	mov [rsi + 4], rax

 malloc$76:
	; Goto 78
	jmp malloc$78

 malloc$77:
	; Assign g_firstBlockPtr newBlockPtr
	mov rax, [rbp + 80]
	mov [g_firstBlockPtr], rax

 malloc$78:
	; BinaryAdd £temporary181 newAddress 12
	mov ebx, [rbp + 72]
	add ebx, 12

 malloc$79:
	; IntegralToIntegral £temporary182 £temporary181
	mov rax, 4294967295
	and rbx, rax

 malloc$80:
	; Return £temporary182
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$81:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$82:
	; FunctionEnd malloc

section .text

 calloc:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 calloc$1:
	; SignedMultiply £temporary183 number size
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [rbp + 28]

 calloc$2:
	; Parameter signedint £temporary183 56
	mov [rbp + 56], eax

 calloc$3:
	; Call malloc 32 0
	mov qword [rbp + 32], calloc$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp malloc

 calloc$4:
	; PostCall 32

 calloc$5:
	; GetReturnValue £temporary184

 calloc$6:
	; Assign pointer £temporary184
	mov [rbp + 32], rbx

 calloc$7:
	; Equal 14 pointer 0
	cmp qword [rbp + 32], 0
	je calloc$14

 calloc$8:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 calloc$9:
	; Parameter pointer pointer 64
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 calloc$10:
	; Parameter signedint 0 72
	mov dword [rbp + 72], 0

 calloc$11:
	; Parameter signedint size 76
	mov eax, [rbp + 28]
	mov [rbp + 76], eax

 calloc$12:
	; Call memset 40 0
	mov qword [rbp + 40], calloc$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp memset

 calloc$13:
	; PostCall 40

 calloc$14:
	; Return pointer
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 calloc$15:
	; FunctionEnd calloc

section .text

 free:
	; NotEqual 2 freeMemoryPtr 0
	cmp qword [rbp + 24], 0
	jne free$2

 free$1:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$2:
	; IntegralToIntegral £temporary188 freeMemoryPtr
	mov rax, [rbp + 24]

 free$3:
	; BinarySubtract £temporary189 £temporary188 12
	sub eax, 12

 free$4:
	; IntegralToIntegral £temporary190 £temporary189
	mov rbx, 4294967295
	and rax, rbx

 free$5:
	; Assign freeBlockPtr £temporary190
	mov [rbp + 32], rax

 free$6:
	; Assign prevBlockPtr 0
	mov qword [rbp + 40], 0

 free$7:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 48], rax

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
	; Dereference £temporary194 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 48]

 free$12:
	; NotEqual 15 £temporary194 -> currBlockPtr 0
	cmp qword [rsi + 4], 0
	jne free$15

 free$13:
	; Assign g_firstBlockPtr 0
	mov qword [g_firstBlockPtr], 0

 free$14:
	; Goto 27
	jmp free$27

 free$15:
	; NotEqual 19 prevBlockPtr 0
	cmp qword [rbp + 40], 0
	jne free$19

 free$16:
	; Dereference £temporary198 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 48]

 free$17:
	; Assign g_firstBlockPtr £temporary198 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [g_firstBlockPtr], rax

 free$18:
	; Goto 27
	jmp free$27

 free$19:
	; Dereference £temporary199 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 48]

 free$20:
	; NotEqual 24 £temporary199 -> currBlockPtr 0
	cmp qword [rsi + 4], 0
	jne free$24

 free$21:
	; Dereference £temporary201 -> prevBlockPtr prevBlockPtr 0
	mov rsi, [rbp + 40]

 free$22:
	; Assign £temporary201 -> prevBlockPtr 0
	mov qword [rsi + 4], 0

 free$23:
	; Goto 27
	jmp free$27

 free$24:
	; Dereference £temporary202 -> prevBlockPtr prevBlockPtr 0
	mov rsi, [rbp + 40]

 free$25:
	; Dereference £temporary203 -> currBlockPtr currBlockPtr 0
	mov rdi, [rbp + 48]

 free$26:
	; Assign £temporary202 -> prevBlockPtr £temporary203 -> currBlockPtr
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
	; Dereference £temporary204 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 48]

 free$30:
	; Assign currBlockPtr £temporary204 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 48], rax

 free$31:
	; Goto 8
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

string_newMemorySize203E3D200#:
	; Initializer String newMemorySize >= 0
	db "newMemorySize >= 0", 0

section .data

string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#:
	; Initializer String ( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )
	db "( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )", 0

section .text

 realloc:
	; SignedGreaterThanEqual 12 newMemorySize 0
	cmp dword [rbp + 32], 0
	jge realloc$12

 realloc$1:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$2:
	; Parameter pointer stderr 60
	mov rax, [stderr]
	mov [rbp + 60], rax

 realloc$3:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 68
	mov qword [rbp + 68], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 realloc$4:
	; Parameter pointer "newMemorySize >= 0" 76
	mov qword [rbp + 76], string_newMemorySize203E3D200#

 realloc$5:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c" 84
	mov qword [rbp + 84], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 realloc$6:
	; Parameter signedint 259 92
	mov dword [rbp + 92], 259

 realloc$7:
	; Call fprintf 36 20
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
	; Call abort 36 0
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
	; Parameter pointer stderr 60
	mov rax, [stderr]
	mov [rbp + 60], rax

 realloc$16:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 68
	mov qword [rbp + 68], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 realloc$17:
	; Parameter pointer "( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )" 76
	mov qword [rbp + 76], string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#

 realloc$18:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c" 84
	mov qword [rbp + 84], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 realloc$19:
	; Parameter signedint 260 92
	mov dword [rbp + 92], 260

 realloc$20:
	; Call fprintf 36 20
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
	; Call abort 36 0
	mov qword [rbp + 36], realloc$24
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 realloc$24:
	; PostCall 36

 realloc$25:
	; NotEqual 32 oldMemoryPtr 0
	cmp qword [rbp + 24], 0
	jne realloc$32

 realloc$26:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$27:
	; Parameter signedint newMemorySize 60
	mov eax, [rbp + 32]
	mov [rbp + 60], eax

 realloc$28:
	; Call malloc 36 0
	mov qword [rbp + 36], realloc$29
	mov [rbp + 44], rbp
	add rbp, 36
	jmp malloc

 realloc$29:
	; PostCall 36

 realloc$30:
	; GetReturnValue £temporary216

 realloc$31:
	; Return £temporary216
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$32:
	; NotEqual 38 newMemorySize 0
	cmp dword [rbp + 32], 0
	jne realloc$38

 realloc$33:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$34:
	; Parameter pointer oldMemoryPtr 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 realloc$35:
	; Call free 36 0
	mov qword [rbp + 36], realloc$36
	mov [rbp + 44], rbp
	add rbp, 36
	jmp free

 realloc$36:
	; PostCall 36

 realloc$37:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$38:
	; IntegralToIntegral £temporary219 newMemorySize
	mov eax, [rbp + 32]

 realloc$39:
	; BinaryAdd newBlockSize £temporary219 12
	add eax, 12
	mov [rbp + 36], eax

 realloc$40:
	; IntegralToIntegral £temporary221 oldMemoryPtr
	mov rax, [rbp + 24]

 realloc$41:
	; BinarySubtract £temporary222 £temporary221 12
	sub eax, 12

 realloc$42:
	; IntegralToIntegral £temporary223 £temporary222
	mov rbx, 4294967295
	and rax, rbx

 realloc$43:
	; Assign oldBlockPtr £temporary223
	mov [rbp + 40], rax

 realloc$44:
	; Dereference £temporary224 -> oldBlockPtr oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$45:
	; UnsignedGreaterThan 49 newBlockSize £temporary224 -> oldBlockPtr
	mov eax, [rsi]
	cmp [rbp + 36], eax
	ja realloc$49

 realloc$46:
	; Dereference £temporary226 -> oldBlockPtr oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$47:
	; Assign £temporary226 -> oldBlockPtr newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

 realloc$48:
	; Return oldMemoryPtr
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$49:
	; StackTop £temporary227
	mov rax, $StackTop

 realloc$50:
	; BinaryAdd £temporary228 £temporary227 1048572
	add rax, 1048572

 realloc$51:
	; IntegralToIntegral £temporary230 £temporary228

 realloc$52:
	; Assign lastAddress £temporary230
	mov [rbp + 48], eax

 realloc$53:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 52], rax

 realloc$54:
	; Equal 67 currBlockPtr 0
	cmp qword [rbp + 52], 0
	je realloc$67

 realloc$55:
	; NotEqual 62 currBlockPtr oldBlockPtr
	mov rax, [rbp + 40]
	cmp [rbp + 52], rax
	jne realloc$62

 realloc$56:
	; IntegralToIntegral £temporary233 currBlockPtr
	mov rax, [rbp + 52]

 realloc$57:
	; BinarySubtract availableSize lastAddress £temporary233
	mov ebx, [rbp + 48]
	sub ebx, eax
	mov [rbp + 60], ebx

 realloc$58:
	; UnsignedLessThan 67 availableSize newBlockSize
	mov eax, [rbp + 36]
	cmp [rbp + 60], eax
	jb realloc$67

 realloc$59:
	; Dereference £temporary236 -> oldBlockPtr oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$60:
	; Assign £temporary236 -> oldBlockPtr newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

 realloc$61:
	; Return oldMemoryPtr
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$62:
	; IntegralToIntegral £temporary237 currBlockPtr
	mov rax, [rbp + 52]

 realloc$63:
	; Assign lastAddress £temporary237
	mov [rbp + 48], eax

 realloc$64:
	; Dereference £temporary238 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 52]

 realloc$65:
	; Assign currBlockPtr £temporary238 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 52], rax

 realloc$66:
	; Goto 54
	jmp realloc$54

 realloc$67:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$68:
	; Parameter signedint newMemorySize 84
	mov eax, [rbp + 32]
	mov [rbp + 84], eax

 realloc$69:
	; Call malloc 60 0
	mov qword [rbp + 60], realloc$70
	mov [rbp + 68], rbp
	add rbp, 60
	jmp malloc

 realloc$70:
	; PostCall 60

 realloc$71:
	; GetReturnValue £temporary239

 realloc$72:
	; Assign newMemoryPtr £temporary239
	mov [rbp + 60], rbx

 realloc$73:
	; Equal 85 newMemoryPtr 0
	cmp qword [rbp + 60], 0
	je realloc$85

 realloc$74:
	; PreCall 68 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$75:
	; Parameter pointer newMemoryPtr 92
	mov rax, [rbp + 60]
	mov [rbp + 92], rax

 realloc$76:
	; Parameter pointer oldMemoryPtr 100
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 realloc$77:
	; Parameter signedint newMemorySize 108
	mov eax, [rbp + 32]
	mov [rbp + 108], eax

 realloc$78:
	; Call memcpy 68 0
	mov qword [rbp + 68], realloc$79
	mov [rbp + 76], rbp
	add rbp, 68
	jmp memcpy

 realloc$79:
	; PostCall 68

 realloc$80:
	; PreCall 68 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$81:
	; Parameter pointer oldMemoryPtr 92
	mov rax, [rbp + 24]
	mov [rbp + 92], rax

 realloc$82:
	; Call free 68 0
	mov qword [rbp + 68], realloc$83
	mov [rbp + 76], rbp
	add rbp, 68
	jmp free

 realloc$83:
	; PostCall 68

 realloc$84:
	; Return newMemoryPtr
	mov rbx, [rbp + 60]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$85:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$86:
	; FunctionEnd realloc

section .data

string_Heap3A0A#:
	; Initializer String Heap:\n
	db "Heap:", 10, 0

section .data

string_2020Address2025u2C20Size2025u0A#:
	; Initializer String   Address %u, Size %u\n
	db "  Address %u, Size %u", 10, 0

section .data

string_0A#:
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
	; Parameter pointer "Heap:\n" 56
	mov qword [rbp + 56], string_Heap3A0A#

 print_heap$3:
	; Call printf 32 0
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
	; Parameter pointer "  Address %u, Size %u\n" 56
	mov qword [rbp + 56], string_2020Address2025u2C20Size2025u0A#

 print_heap$8:
	; IntegralToIntegral £temporary245 currBlockPtr
	mov rax, [rbp + 24]

 print_heap$9:
	; Parameter unsigned int £temporary245 64
	mov [rbp + 64], eax

 print_heap$10:
	; Dereference £temporary246 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 24]

 print_heap$11:
	; Parameter unsigned int £temporary246 -> currBlockPtr 68
	mov eax, [rsi]
	mov [rbp + 68], eax

 print_heap$12:
	; Call printf 32 8
	mov qword [rbp + 32], print_heap$13
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 print_heap$13:
	; PostCall 32

 print_heap$14:
	; Dereference £temporary248 -> currBlockPtr currBlockPtr 0
	mov rsi, [rbp + 24]

 print_heap$15:
	; Assign currBlockPtr £temporary248 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 24], rax

 print_heap$16:
	; Goto 5
	jmp print_heap$5

 print_heap$17:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap$18:
	; Parameter pointer "\n" 56
	mov qword [rbp + 56], string_0A#

 print_heap$19:
	; Call printf 32 0
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
