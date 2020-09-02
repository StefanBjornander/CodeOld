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
section .text

 malloc:
	; if memorySize >= int4$0# goto 12
	cmp dword [rbp + 24], 0
	jge malloc$12

 malloc$1:
	; call header integral zero 0 stack zero 0

 malloc$2:
	; parameter stderr, offset 52
	mov rax, [stderr]
	mov [rbp + 52], rax

 malloc$3:
	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 60
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 malloc$4:
	; parameter string_memorySize203E3D200#, offset 68
	mov qword [rbp + 68], string_memorySize203E3D200#

 malloc$5:
	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#, offset 76
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 malloc$6:
	; parameter int4$25#, offset 84
	mov dword [rbp + 84], 25

 malloc$7:
	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 28], malloc$8
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 malloc$8:
	; post call

 malloc$9:
	; call header integral zero 0 stack zero 0

 malloc$10:
	; call function noellipse-noellipse abort
	mov qword [rbp + 28], malloc$11
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

 malloc$11:
	; post call

 malloc$12:
	; if memorySize != int4$0# goto 14
	cmp dword [rbp + 24], 0
	jne malloc$14

 malloc$13:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$14:
	; £temporary114 = int_to_int memorySize (Signed_Int -> Unsigned_Int)
	mov eax, [rbp + 24]

 malloc$15:
	; newBlockSize = £temporary114 + int4$12#
	add eax, 12
	mov [rbp + 28], eax

 malloc$16:
	; minGap = int4$0#
	mov dword [rbp + 32], 0

 malloc$17:
	; lastAddress = int4$65528#
	mov dword [rbp + 36], 65528

 malloc$18:
	; minBlockPtr = int8$0#
	mov qword [rbp + 40], 0

 malloc$19:
	; minPrevBlockPtr = int8$0#
	mov qword [rbp + 48], 0

 malloc$20:
	; prevBlockPtr = int8$0#
	mov qword [rbp + 56], 0

 malloc$21:
	; currBlockPtr = g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 64], rax

 malloc$22:
	; if currBlockPtr == int8$0# goto 40
	cmp qword [rbp + 64], 0
	je malloc$40

 malloc$23:
	; £temporary117 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 64]

 malloc$24:
	; currAddress = £temporary117
	mov [rbp + 72], eax

 malloc$25:
	; £field118 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 64]

 malloc$26:
	; £temporary119 = currAddress + £field118 -> currBlockPtr
	mov eax, [rbp + 72]
	add eax, [rsi]

 malloc$27:
	; £temporary120 = £temporary119 + int4$12#
	add eax, 12

 malloc$28:
	; currGap = lastAddress - £temporary120
	mov ebx, [rbp + 36]
	sub ebx, eax
	mov [rbp + 76], ebx

 malloc$29:
	; if newBlockSize > currGap goto 35
	mov eax, [rbp + 76]
	cmp [rbp + 28], eax
	ja malloc$35

 malloc$30:
	; if minGap == int4$0# goto 32
	cmp dword [rbp + 32], 0
	je malloc$32

 malloc$31:
	; if currGap >= minGap goto 35
	mov eax, [rbp + 32]
	cmp [rbp + 76], eax
	jae malloc$35

 malloc$32:
	; minGap = currGap
	mov eax, [rbp + 76]
	mov [rbp + 32], eax

 malloc$33:
	; minBlockPtr = currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 40], rax

 malloc$34:
	; minPrevBlockPtr = prevBlockPtr
	mov rax, [rbp + 56]
	mov [rbp + 48], rax

 malloc$35:
	; lastAddress = currAddress
	mov eax, [rbp + 72]
	mov [rbp + 36], eax

 malloc$36:
	; prevBlockPtr = currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 56], rax

 malloc$37:
	; £field127 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 64]

 malloc$38:
	; currBlockPtr = £field127 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 64], rax

 malloc$39:
	; goto 22
	jmp malloc$22

 malloc$40:
	; if minBlockPtr == int8$0# goto 59
	cmp qword [rbp + 40], 0
	je malloc$59

 malloc$41:
	; £temporary129 = int_to_int minBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 40]

 malloc$42:
	; £field130 -> minBlockPtr = *minBlockPtr
	mov rsi, [rbp + 40]

 malloc$43:
	; £temporary131 = £temporary129 + £field130 -> minBlockPtr
	add eax, [rsi]

 malloc$44:
	; newAddress = £temporary131 + int4$12#
	add eax, 12
	mov [rbp + 72], eax

 malloc$45:
	; £temporary133 = int_to_int newAddress (Unsigned_Int -> Pointer)
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

 malloc$46:
	; newBlockPtr = £temporary133
	mov [rbp + 76], rax

 malloc$47:
	; £field134 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 76]

 malloc$48:
	; £field134 -> newBlockPtr = memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

 malloc$49:
	; £field135 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 76]

 malloc$50:
	; £field135 -> newBlockPtr = minBlockPtr
	mov rax, [rbp + 40]
	mov [rsi + 4], rax

 malloc$51:
	; if minPrevBlockPtr == int8$0# goto 55
	cmp qword [rbp + 48], 0
	je malloc$55

 malloc$52:
	; £field137 -> minPrevBlockPtr = *minPrevBlockPtr
	mov rsi, [rbp + 48]

 malloc$53:
	; £field137 -> minPrevBlockPtr = newBlockPtr
	mov rax, [rbp + 76]
	mov [rsi + 4], rax

 malloc$54:
	; goto 56
	jmp malloc$56

 malloc$55:
	; g_firstBlockPtr = newBlockPtr
	mov rax, [rbp + 76]
	mov [g_firstBlockPtr], rax

 malloc$56:
	; £temporary138 = newAddress + int4$12#
	mov ebx, [rbp + 72]
	add ebx, 12

 malloc$57:
	; £temporary139 = int_to_int £temporary138 (Unsigned_Int -> Pointer)
	mov rax, 4294967295
	and rbx, rax

 malloc$58:
	; return £temporary139
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$59:
	; newAddress = lastAddress - newBlockSize
	mov eax, [rbp + 36]
	sub eax, [rbp + 28]
	mov [rbp + 72], eax

 malloc$60:
	; £temporary141 = bp

 malloc$61:
	; £temporary142 = int_to_int £temporary141 (Unsigned_Short_Int -> Unsigned_Int)
	and ebp, 65535

 malloc$62:
	; stackTop = £temporary142
	mov [rbp + 76], ebp

 malloc$63:
	; if stackTop > newAddress goto 78
	mov eax, [rbp + 72]
	cmp [rbp + 76], eax
	ja malloc$78

 malloc$64:
	; £temporary144 = int_to_int newAddress (Unsigned_Int -> Pointer)
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

 malloc$65:
	; newBlockPtr = £temporary144
	mov [rbp + 80], rax

 malloc$66:
	; £field145 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 80]

 malloc$67:
	; £field145 -> newBlockPtr = memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

 malloc$68:
	; £field146 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 80]

 malloc$69:
	; £field146 -> newBlockPtr = int8$0#
	mov qword [rsi + 4], 0

 malloc$70:
	; if prevBlockPtr == int8$0# goto 74
	cmp qword [rbp + 56], 0
	je malloc$74

 malloc$71:
	; £field148 -> prevBlockPtr = *prevBlockPtr
	mov rsi, [rbp + 56]

 malloc$72:
	; £field148 -> prevBlockPtr = newBlockPtr
	mov rax, [rbp + 80]
	mov [rsi + 4], rax

 malloc$73:
	; goto 75
	jmp malloc$75

 malloc$74:
	; g_firstBlockPtr = newBlockPtr
	mov rax, [rbp + 80]
	mov [g_firstBlockPtr], rax

 malloc$75:
	; £temporary149 = newAddress + int4$12#
	mov ebx, [rbp + 72]
	add ebx, 12

 malloc$76:
	; £temporary150 = int_to_int £temporary149 (Unsigned_Int -> Pointer)
	mov rax, 4294967295
	and rbx, rax

 malloc$77:
	; return £temporary150
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$78:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$79:
	; function end malloc

 calloc:
	; call header integral zero 0 stack zero 0

 calloc$1:
	; £temporary151 = number * size
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [rbp + 28]

 calloc$2:
	; parameter £temporary151, offset 56
	mov [rbp + 56], eax

 calloc$3:
	; call function noellipse-noellipse malloc
	mov qword [rbp + 32], calloc$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp malloc

 calloc$4:
	; post call

 calloc$5:
	; £temporary152 = return_value

 calloc$6:
	; pointer = £temporary152
	mov [rbp + 32], rbx

 calloc$7:
	; if pointer == int8$0# goto 14
	cmp qword [rbp + 32], 0
	je calloc$14

 calloc$8:
	; call header integral zero 0 stack zero 0

 calloc$9:
	; parameter pointer, offset 64
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 calloc$10:
	; parameter int4$0#, offset 72
	mov dword [rbp + 72], 0

 calloc$11:
	; parameter size, offset 76
	mov eax, [rbp + 28]
	mov [rbp + 76], eax

 calloc$12:
	; call function noellipse-noellipse memset
	mov qword [rbp + 40], calloc$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp memset

 calloc$13:
	; post call

 calloc$14:
	; return pointer
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 calloc$15:
	; function end calloc

 free:
	; if freeMemoryPtr != int8$0# goto 2
	cmp qword [rbp + 24], 0
	jne free$2

 free$1:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$2:
	; £temporary156 = int_to_int freeMemoryPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 24]

 free$3:
	; £temporary157 = £temporary156 - int4$12#
	sub eax, 12

 free$4:
	; £temporary158 = int_to_int £temporary157 (Unsigned_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 free$5:
	; freeBlockPtr = £temporary158
	mov [rbp + 32], rax

 free$6:
	; prevBlockPtr = int8$0#
	mov qword [rbp + 40], 0

 free$7:
	; currBlockPtr = g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 48], rax

 free$8:
	; if currBlockPtr == int8$0# goto 32
	cmp qword [rbp + 48], 0
	je free$32

 free$9:
	; if currBlockPtr != freeBlockPtr goto 28
	mov rax, [rbp + 32]
	cmp [rbp + 48], rax
	jne free$28

 free$10:
	; if prevBlockPtr != int8$0# goto 15
	cmp qword [rbp + 40], 0
	jne free$15

 free$11:
	; £field162 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

 free$12:
	; if £field162 -> currBlockPtr != int8$0# goto 15
	cmp qword [rsi + 4], 0
	jne free$15

 free$13:
	; g_firstBlockPtr = int8$0#
	mov qword [g_firstBlockPtr], 0

 free$14:
	; goto 27
	jmp free$27

 free$15:
	; if prevBlockPtr != int8$0# goto 19
	cmp qword [rbp + 40], 0
	jne free$19

 free$16:
	; £field166 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

 free$17:
	; g_firstBlockPtr = £field166 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [g_firstBlockPtr], rax

 free$18:
	; goto 27
	jmp free$27

 free$19:
	; £field167 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

 free$20:
	; if £field167 -> currBlockPtr != int8$0# goto 24
	cmp qword [rsi + 4], 0
	jne free$24

 free$21:
	; £field169 -> prevBlockPtr = *prevBlockPtr
	mov rsi, [rbp + 40]

 free$22:
	; £field169 -> prevBlockPtr = int8$0#
	mov qword [rsi + 4], 0

 free$23:
	; goto 27
	jmp free$27

 free$24:
	; £field170 -> prevBlockPtr = *prevBlockPtr
	mov rsi, [rbp + 40]

 free$25:
	; £field171 -> currBlockPtr = *currBlockPtr
	mov rdi, [rbp + 48]

 free$26:
	; £field170 -> prevBlockPtr = £field171 -> currBlockPtr
	mov rax, [rdi + 4]
	mov [rsi + 4], rax

 free$27:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$28:
	; prevBlockPtr = currBlockPtr
	mov rax, [rbp + 48]
	mov [rbp + 40], rax

 free$29:
	; £field172 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

 free$30:
	; currBlockPtr = £field172 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 48], rax

 free$31:
	; goto 8
	jmp free$8

 free$32:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$33:
	; function end free

 realloc:
	; if newMemorySize >= int4$0# goto 12
	cmp dword [rbp + 32], 0
	jge realloc$12

 realloc$1:
	; call header integral zero 0 stack zero 0

 realloc$2:
	; parameter stderr, offset 60
	mov rax, [stderr]
	mov [rbp + 60], rax

 realloc$3:
	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 68
	mov qword [rbp + 68], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 realloc$4:
	; parameter string_newMemorySize203E3D200#, offset 76
	mov qword [rbp + 76], string_newMemorySize203E3D200#

 realloc$5:
	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#, offset 84
	mov qword [rbp + 84], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 realloc$6:
	; parameter int4$239#, offset 92
	mov dword [rbp + 92], 239

 realloc$7:
	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 36], realloc$8
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 realloc$8:
	; post call

 realloc$9:
	; call header integral zero 0 stack zero 0

 realloc$10:
	; call function noellipse-noellipse abort
	mov qword [rbp + 36], realloc$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 realloc$11:
	; post call

 realloc$12:
	; if oldMemoryPtr != int8$0# goto 25
	cmp qword [rbp + 24], 0
	jne realloc$25

 realloc$13:
	; if newMemorySize > int4$0# goto 25
	cmp dword [rbp + 32], 0
	jg realloc$25

 realloc$14:
	; call header integral zero 0 stack zero 0

 realloc$15:
	; parameter stderr, offset 60
	mov rax, [stderr]
	mov [rbp + 60], rax

 realloc$16:
	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 68
	mov qword [rbp + 68], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 realloc$17:
	; parameter string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#, offset 76
	mov qword [rbp + 76], string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#

 realloc$18:
	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#, offset 84
	mov qword [rbp + 84], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 realloc$19:
	; parameter int4$240#, offset 92
	mov dword [rbp + 92], 240

 realloc$20:
	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 36], realloc$21
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 realloc$21:
	; post call

 realloc$22:
	; call header integral zero 0 stack zero 0

 realloc$23:
	; call function noellipse-noellipse abort
	mov qword [rbp + 36], realloc$24
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 realloc$24:
	; post call

 realloc$25:
	; if oldMemoryPtr != int8$0# goto 32
	cmp qword [rbp + 24], 0
	jne realloc$32

 realloc$26:
	; call header integral zero 0 stack zero 0

 realloc$27:
	; parameter newMemorySize, offset 60
	mov eax, [rbp + 32]
	mov [rbp + 60], eax

 realloc$28:
	; call function noellipse-noellipse malloc
	mov qword [rbp + 36], realloc$29
	mov [rbp + 44], rbp
	add rbp, 36
	jmp malloc

 realloc$29:
	; post call

 realloc$30:
	; £temporary184 = return_value

 realloc$31:
	; return £temporary184
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$32:
	; if newMemorySize != int4$0# goto 38
	cmp dword [rbp + 32], 0
	jne realloc$38

 realloc$33:
	; call header integral zero 0 stack zero 0

 realloc$34:
	; parameter oldMemoryPtr, offset 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 realloc$35:
	; call function noellipse-noellipse free
	mov qword [rbp + 36], realloc$36
	mov [rbp + 44], rbp
	add rbp, 36
	jmp free

 realloc$36:
	; post call

 realloc$37:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$38:
	; £temporary187 = int_to_int newMemorySize (Signed_Int -> Unsigned_Int)
	mov eax, [rbp + 32]

 realloc$39:
	; newBlockSize = £temporary187 + int4$12#
	add eax, 12
	mov [rbp + 36], eax

 realloc$40:
	; £temporary189 = int_to_int oldMemoryPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 24]

 realloc$41:
	; £temporary190 = £temporary189 - int4$12#
	sub eax, 12

 realloc$42:
	; £temporary191 = int_to_int £temporary190 (Unsigned_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 realloc$43:
	; oldBlockPtr = £temporary191
	mov [rbp + 40], rax

 realloc$44:
	; £field192 -> oldBlockPtr = *oldBlockPtr
	mov rsi, [rbp + 40]

 realloc$45:
	; if newBlockSize > £field192 -> oldBlockPtr goto 49
	mov eax, [rsi]
	cmp [rbp + 36], eax
	ja realloc$49

 realloc$46:
	; £field194 -> oldBlockPtr = *oldBlockPtr
	mov rsi, [rbp + 40]

 realloc$47:
	; £field194 -> oldBlockPtr = newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

 realloc$48:
	; return oldMemoryPtr
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$49:
	; lastAddress = int4$65528#
	mov dword [rbp + 48], 65528

 realloc$50:
	; currBlockPtr = g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 52], rax

 realloc$51:
	; if currBlockPtr == int8$0# goto 64
	cmp qword [rbp + 52], 0
	je realloc$64

 realloc$52:
	; if currBlockPtr != oldBlockPtr goto 59
	mov rax, [rbp + 40]
	cmp [rbp + 52], rax
	jne realloc$59

 realloc$53:
	; £temporary197 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 52]

 realloc$54:
	; availableSize = lastAddress - £temporary197
	mov ebx, [rbp + 48]
	sub ebx, eax
	mov [rbp + 60], ebx

 realloc$55:
	; if availableSize < newBlockSize goto 64
	mov eax, [rbp + 36]
	cmp [rbp + 60], eax
	jb realloc$64

 realloc$56:
	; £field200 -> oldBlockPtr = *oldBlockPtr
	mov rsi, [rbp + 40]

 realloc$57:
	; £field200 -> oldBlockPtr = newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

 realloc$58:
	; return oldMemoryPtr
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$59:
	; £temporary201 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 52]

 realloc$60:
	; lastAddress = £temporary201
	mov [rbp + 48], eax

 realloc$61:
	; £field202 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 52]

 realloc$62:
	; currBlockPtr = £field202 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 52], rax

 realloc$63:
	; goto 51
	jmp realloc$51

 realloc$64:
	; call header integral zero 0 stack zero 0

 realloc$65:
	; parameter newMemorySize, offset 84
	mov eax, [rbp + 32]
	mov [rbp + 84], eax

 realloc$66:
	; call function noellipse-noellipse malloc
	mov qword [rbp + 60], realloc$67
	mov [rbp + 68], rbp
	add rbp, 60
	jmp malloc

 realloc$67:
	; post call

 realloc$68:
	; £temporary203 = return_value

 realloc$69:
	; newMemoryPtr = £temporary203
	mov [rbp + 60], rbx

 realloc$70:
	; if newMemoryPtr == int8$0# goto 82
	cmp qword [rbp + 60], 0
	je realloc$82

 realloc$71:
	; call header integral zero 0 stack zero 0

 realloc$72:
	; parameter newMemoryPtr, offset 92
	mov rax, [rbp + 60]
	mov [rbp + 92], rax

 realloc$73:
	; parameter oldMemoryPtr, offset 100
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 realloc$74:
	; parameter newMemorySize, offset 108
	mov eax, [rbp + 32]
	mov [rbp + 108], eax

 realloc$75:
	; call function noellipse-noellipse memcpy
	mov qword [rbp + 68], realloc$76
	mov [rbp + 76], rbp
	add rbp, 68
	jmp memcpy

 realloc$76:
	; post call

 realloc$77:
	; call header integral zero 0 stack zero 0

 realloc$78:
	; parameter oldMemoryPtr, offset 92
	mov rax, [rbp + 24]
	mov [rbp + 92], rax

 realloc$79:
	; call function noellipse-noellipse free
	mov qword [rbp + 68], realloc$80
	mov [rbp + 76], rbp
	add rbp, 68
	jmp free

 realloc$80:
	; post call

 realloc$81:
	; return newMemoryPtr
	mov rbx, [rbp + 60]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$82:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$83:
	; function end realloc

 print_heap:
	; currBlockPtr = g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 24], rax

 print_heap$1:
	; call header integral zero 0 stack zero 0

 print_heap$2:
	; parameter string_Heap3A0A#, offset 56
	mov qword [rbp + 56], string_Heap3A0A#

 print_heap$3:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 32], print_heap$4
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 print_heap$4:
	; post call

 print_heap$5:
	; if currBlockPtr == int8$0# goto 17
	cmp qword [rbp + 24], 0
	je print_heap$17

 print_heap$6:
	; call header integral zero 0 stack zero 0

 print_heap$7:
	; parameter string_2020Address2025u2C20Size2025u0A#, offset 56
	mov qword [rbp + 56], string_2020Address2025u2C20Size2025u0A#

 print_heap$8:
	; £temporary209 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 24]

 print_heap$9:
	; parameter £temporary209, offset 64
	mov [rbp + 64], eax

 print_heap$10:
	; £field210 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 24]

 print_heap$11:
	; parameter £field210 -> currBlockPtr, offset 68
	mov eax, [rsi]
	mov [rbp + 68], eax

 print_heap$12:
	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 32], print_heap$13
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 print_heap$13:
	; post call

 print_heap$14:
	; £field212 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 24]

 print_heap$15:
	; currBlockPtr = £field212 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 24], rax

 print_heap$16:
	; goto 5
	jmp print_heap$5

 print_heap$17:
	; call header integral zero 0 stack zero 0

 print_heap$18:
	; parameter string_0A#, offset 56
	mov qword [rbp + 56], string_0A#

 print_heap$19:
	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 32], print_heap$20
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 print_heap$20:
	; post call

 print_heap$21:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_heap$22:
	; function end print_heap
section .data

g_firstBlockPtr:
	; initializer Pointer
	dq 0

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; initializer String
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

string_memorySize203E3D200#:
	; initializer String
	db "memorySize >= 0", 0

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; initializer String
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c", 0

string_newMemorySize203E3D200#:
	; initializer String
	db "newMemorySize >= 0", 0

string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#:
	; initializer String
	db "( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )", 0

string_Heap3A0A#:
	; initializer String
	db "Heap:", 10, 0

string_2020Address2025u2C20Size2025u0A#:
	; initializer String
	db "  Address %u, Size %u", 10, 0

string_0A#:
	; initializer String
	db 10, 0
