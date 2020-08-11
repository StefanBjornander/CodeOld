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

malloc:	; if memorySize >= int4$0# goto 12
	cmp dword [rbp + 24], 0
	jge malloc$12

malloc$1:	; call header integral zero 0 stack zero 0

malloc$2:	; parameter stderr, offset 52
	mov rax, [stderr]
	mov [rbp + 52], rax

malloc$3:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 60
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

malloc$4:	; parameter string_memorySize203E3D200#, offset 68
	mov qword [rbp + 68], string_memorySize203E3D200#

malloc$5:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#, offset 76
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

malloc$6:	; parameter int4$25#, offset 84
	mov dword [rbp + 84], 25

malloc$7:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 28], malloc$8
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

malloc$8:	; post call

malloc$9:	; call header integral zero 0 stack zero 0

malloc$10:	; call function noellipse-noellipse abort
	mov qword [rbp + 28], malloc$11
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

malloc$11:	; post call

malloc$12:	; if memorySize != int4$0# goto 15
	cmp dword [rbp + 24], 0
	jne malloc$15

malloc$13:	; return_value = int8$0#
	mov rbx, 0

malloc$14:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc$15:	; £temporary110 = int_to_int memorySize (Signed_Int -> Unsigned_Int)
	mov eax, [rbp + 24]

malloc$16:	; newBlockSize = £temporary110 + int4$12#
	add eax, 12
	mov [rbp + 28], eax

malloc$17:	; minGap = int4$0#
	mov dword [rbp + 32], 0

malloc$18:	; lastAddress = int4$65528#
	mov dword [rbp + 36], 65528

malloc$19:	; minBlockPtr = int8$0#
	mov rax, 0
	mov [rbp + 40], rax

malloc$20:	; minPrevBlockPtr = int8$0#
	mov rax, 0
	mov [rbp + 48], rax

malloc$21:	; prevBlockPtr = int8$0#
	mov rax, 0
	mov [rbp + 56], rax

malloc$22:	; currBlockPtr = g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 64], rax

malloc$23:	; if currBlockPtr == int8$0# goto 41
	cmp qword [rbp + 64], 0
	je malloc$41

malloc$24:	; £temporary113 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 64]

malloc$25:	; currAddress = £temporary113
	mov [rbp + 72], eax

malloc$26:	; £field114 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 64]

malloc$27:	; £temporary115 = currAddress + £field114 -> currBlockPtr
	mov eax, [rbp + 72]
	add eax, [rsi]

malloc$28:	; £temporary116 = £temporary115 + int4$12#
	add eax, 12

malloc$29:	; currGap = lastAddress - £temporary116
	mov ebx, [rbp + 36]
	sub ebx, eax
	mov [rbp + 76], ebx

malloc$30:	; if newBlockSize > currGap goto 36
	mov eax, [rbp + 76]
	cmp [rbp + 28], eax
	ja malloc$36

malloc$31:	; if minGap == int4$0# goto 33
	cmp dword [rbp + 32], 0
	je malloc$33

malloc$32:	; if currGap >= minGap goto 36
	mov eax, [rbp + 32]
	cmp [rbp + 76], eax
	jae malloc$36

malloc$33:	; minGap = currGap
	mov eax, [rbp + 76]
	mov [rbp + 32], eax

malloc$34:	; minBlockPtr = currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 40], rax

malloc$35:	; minPrevBlockPtr = prevBlockPtr
	mov rax, [rbp + 56]
	mov [rbp + 48], rax

malloc$36:	; lastAddress = currAddress
	mov eax, [rbp + 72]
	mov [rbp + 36], eax

malloc$37:	; prevBlockPtr = currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 56], rax

malloc$38:	; £field123 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 64]

malloc$39:	; currBlockPtr = £field123 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 64], rax

malloc$40:	; goto 23
	jmp malloc$23

malloc$41:	; if minBlockPtr == int8$0# goto 61
	cmp qword [rbp + 40], 0
	je malloc$61

malloc$42:	; £temporary125 = int_to_int minBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 40]

malloc$43:	; £field126 -> minBlockPtr = *minBlockPtr
	mov rsi, [rbp + 40]

malloc$44:	; £temporary127 = £temporary125 + £field126 -> minBlockPtr
	add eax, [rsi]

malloc$45:	; newAddress = £temporary127 + int4$12#
	add eax, 12
	mov [rbp + 72], eax

malloc$46:	; £temporary129 = int_to_int newAddress (Unsigned_Int -> Pointer)
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

malloc$47:	; newBlockPtr = £temporary129
	mov [rbp + 76], rax

malloc$48:	; £field130 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 76]

malloc$49:	; £field130 -> newBlockPtr = memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

malloc$50:	; £field131 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 76]

malloc$51:	; £field131 -> newBlockPtr = minBlockPtr
	mov rax, [rbp + 40]
	mov [rsi + 4], rax

malloc$52:	; if minPrevBlockPtr == int8$0# goto 56
	cmp qword [rbp + 48], 0
	je malloc$56

malloc$53:	; £field133 -> minPrevBlockPtr = *minPrevBlockPtr
	mov rsi, [rbp + 48]

malloc$54:	; £field133 -> minPrevBlockPtr = newBlockPtr
	mov rax, [rbp + 76]
	mov [rsi + 4], rax

malloc$55:	; goto 57
	jmp malloc$57

malloc$56:	; g_firstBlockPtr = newBlockPtr
	mov rax, [rbp + 76]
	mov [g_firstBlockPtr], rax

malloc$57:	; £temporary134 = newAddress + int4$12#
	mov ebx, [rbp + 72]
	add ebx, 12

malloc$58:	; £temporary135 = int_to_int £temporary134 (Unsigned_Int -> Pointer)
	mov rax, 4294967295
	and rbx, rax

malloc$59:	; return_value = £temporary135

malloc$60:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc$61:	; newAddress = lastAddress - newBlockSize
	mov eax, [rbp + 36]
	sub eax, [rbp + 28]
	mov [rbp + 72], eax

malloc$62:	; £temporary137 = bp

malloc$63:	; £temporary138 = int_to_int £temporary137 (Unsigned_Short_Int -> Unsigned_Int)
	and ebp, 65535

malloc$64:	; stackTop = £temporary138
	mov [rbp + 76], ebp

malloc$65:	; if stackTop > newAddress goto 81
	mov eax, [rbp + 72]
	cmp [rbp + 76], eax
	ja malloc$81

malloc$66:	; £temporary140 = int_to_int newAddress (Unsigned_Int -> Pointer)
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

malloc$67:	; newBlockPtr = £temporary140
	mov [rbp + 80], rax

malloc$68:	; £field141 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 80]

malloc$69:	; £field141 -> newBlockPtr = memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

malloc$70:	; £field142 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 80]

malloc$71:	; £field142 -> newBlockPtr = int8$0#
	mov rax, 0
	mov [rsi + 4], rax

malloc$72:	; if prevBlockPtr == int8$0# goto 76
	cmp qword [rbp + 56], 0
	je malloc$76

malloc$73:	; £field144 -> prevBlockPtr = *prevBlockPtr
	mov rsi, [rbp + 56]

malloc$74:	; £field144 -> prevBlockPtr = newBlockPtr
	mov rax, [rbp + 80]
	mov [rsi + 4], rax

malloc$75:	; goto 77
	jmp malloc$77

malloc$76:	; g_firstBlockPtr = newBlockPtr
	mov rax, [rbp + 80]
	mov [g_firstBlockPtr], rax

malloc$77:	; £temporary145 = newAddress + int4$12#
	mov ebx, [rbp + 72]
	add ebx, 12

malloc$78:	; £temporary146 = int_to_int £temporary145 (Unsigned_Int -> Pointer)
	mov rax, 4294967295
	and rbx, rax

malloc$79:	; return_value = £temporary146

malloc$80:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc$81:	; return_value = int8$0#
	mov rbx, 0

malloc$82:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc$83:	; function end malloc

calloc:	; call header integral zero 0 stack zero 0

calloc$1:	; £temporary147 = number * size
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [rbp + 28]

calloc$2:	; parameter £temporary147, offset 56
	mov [rbp + 56], eax

calloc$3:	; call function noellipse-noellipse malloc
	mov qword [rbp + 32], calloc$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp malloc

calloc$4:	; post call

calloc$5:	; £temporary148 = return_value

calloc$6:	; pointer = £temporary148
	mov [rbp + 32], rbx

calloc$7:	; if pointer == int8$0# goto 14
	cmp qword [rbp + 32], 0
	je calloc$14

calloc$8:	; call header integral zero 0 stack zero 0

calloc$9:	; parameter pointer, offset 64
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

calloc$10:	; parameter int4$0#, offset 72
	mov dword [rbp + 72], 0

calloc$11:	; parameter size, offset 76
	mov eax, [rbp + 28]
	mov [rbp + 76], eax

calloc$12:	; call function noellipse-noellipse memset
	mov qword [rbp + 40], calloc$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp memset

calloc$13:	; post call

calloc$14:	; return_value = pointer
	mov rbx, [rbp + 32]

calloc$15:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

calloc$16:	; function end calloc

free:	; if freeMemoryPtr != int8$0# goto 2
	cmp qword [rbp + 24], 0
	jne free$2

free$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

free$2:	; £temporary152 = int_to_int freeMemoryPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 24]

free$3:	; £temporary153 = £temporary152 - int4$12#
	sub eax, 12

free$4:	; £temporary154 = int_to_int £temporary153 (Unsigned_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

free$5:	; freeBlockPtr = £temporary154
	mov [rbp + 32], rax

free$6:	; prevBlockPtr = int8$0#
	mov rax, 0
	mov [rbp + 40], rax

free$7:	; currBlockPtr = g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 48], rax

free$8:	; if currBlockPtr == int8$0# goto 32
	cmp qword [rbp + 48], 0
	je free$32

free$9:	; if currBlockPtr != freeBlockPtr goto 28
	mov rax, [rbp + 32]
	cmp [rbp + 48], rax
	jne free$28

free$10:	; if prevBlockPtr != int8$0# goto 15
	cmp qword [rbp + 40], 0
	jne free$15

free$11:	; £field158 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

free$12:	; if £field158 -> currBlockPtr != int8$0# goto 15
	cmp qword [rsi + 4], 0
	jne free$15

free$13:	; g_firstBlockPtr = int8$0#
	mov rax, 0
	mov [g_firstBlockPtr], rax

free$14:	; goto 27
	jmp free$27

free$15:	; if prevBlockPtr != int8$0# goto 19
	cmp qword [rbp + 40], 0
	jne free$19

free$16:	; £field162 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

free$17:	; g_firstBlockPtr = £field162 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [g_firstBlockPtr], rax

free$18:	; goto 27
	jmp free$27

free$19:	; £field163 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

free$20:	; if £field163 -> currBlockPtr != int8$0# goto 24
	cmp qword [rsi + 4], 0
	jne free$24

free$21:	; £field165 -> prevBlockPtr = *prevBlockPtr
	mov rsi, [rbp + 40]

free$22:	; £field165 -> prevBlockPtr = int8$0#
	mov rax, 0
	mov [rsi + 4], rax

free$23:	; goto 27
	jmp free$27

free$24:	; £field166 -> prevBlockPtr = *prevBlockPtr
	mov rsi, [rbp + 40]

free$25:	; £field167 -> currBlockPtr = *currBlockPtr
	mov rdi, [rbp + 48]

free$26:	; £field166 -> prevBlockPtr = £field167 -> currBlockPtr
	mov rax, [rdi + 4]
	mov [rsi + 4], rax

free$27:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

free$28:	; prevBlockPtr = currBlockPtr
	mov rax, [rbp + 48]
	mov [rbp + 40], rax

free$29:	; £field168 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

free$30:	; currBlockPtr = £field168 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 48], rax

free$31:	; goto 8
	jmp free$8

free$32:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

free$33:	; function end free

realloc:	; if newMemorySize >= int4$0# goto 12
	cmp dword [rbp + 32], 0
	jge realloc$12

realloc$1:	; call header integral zero 0 stack zero 0

realloc$2:	; parameter stderr, offset 60
	mov rax, [stderr]
	mov [rbp + 60], rax

realloc$3:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 68
	mov qword [rbp + 68], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

realloc$4:	; parameter string_newMemorySize203E3D200#, offset 76
	mov qword [rbp + 76], string_newMemorySize203E3D200#

realloc$5:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#, offset 84
	mov qword [rbp + 84], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

realloc$6:	; parameter int4$239#, offset 92
	mov dword [rbp + 92], 239

realloc$7:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 36], realloc$8
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

realloc$8:	; post call

realloc$9:	; call header integral zero 0 stack zero 0

realloc$10:	; call function noellipse-noellipse abort
	mov qword [rbp + 36], realloc$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

realloc$11:	; post call

realloc$12:	; if oldMemoryPtr != int8$0# goto 25
	cmp qword [rbp + 24], 0
	jne realloc$25

realloc$13:	; if newMemorySize > int4$0# goto 25
	cmp dword [rbp + 32], 0
	jg realloc$25

realloc$14:	; call header integral zero 0 stack zero 0

realloc$15:	; parameter stderr, offset 60
	mov rax, [stderr]
	mov [rbp + 60], rax

realloc$16:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 68
	mov qword [rbp + 68], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

realloc$17:	; parameter string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#, offset 76
	mov qword [rbp + 76], string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#

realloc$18:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#, offset 84
	mov qword [rbp + 84], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

realloc$19:	; parameter int4$240#, offset 92
	mov dword [rbp + 92], 240

realloc$20:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 36], realloc$21
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

realloc$21:	; post call

realloc$22:	; call header integral zero 0 stack zero 0

realloc$23:	; call function noellipse-noellipse abort
	mov qword [rbp + 36], realloc$24
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

realloc$24:	; post call

realloc$25:	; if oldMemoryPtr != int8$0# goto 33
	cmp qword [rbp + 24], 0
	jne realloc$33

realloc$26:	; call header integral zero 0 stack zero 0

realloc$27:	; parameter newMemorySize, offset 60
	mov eax, [rbp + 32]
	mov [rbp + 60], eax

realloc$28:	; call function noellipse-noellipse malloc
	mov qword [rbp + 36], realloc$29
	mov [rbp + 44], rbp
	add rbp, 36
	jmp malloc

realloc$29:	; post call

realloc$30:	; £temporary180 = return_value

realloc$31:	; return_value = £temporary180

realloc$32:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

realloc$33:	; if newMemorySize != int4$0# goto 40
	cmp dword [rbp + 32], 0
	jne realloc$40

realloc$34:	; call header integral zero 0 stack zero 0

realloc$35:	; parameter oldMemoryPtr, offset 60
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

realloc$36:	; call function noellipse-noellipse free
	mov qword [rbp + 36], realloc$37
	mov [rbp + 44], rbp
	add rbp, 36
	jmp free

realloc$37:	; post call

realloc$38:	; return_value = int8$0#
	mov rbx, 0

realloc$39:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

realloc$40:	; £temporary183 = int_to_int newMemorySize (Signed_Int -> Unsigned_Int)
	mov eax, [rbp + 32]

realloc$41:	; newBlockSize = £temporary183 + int4$12#
	add eax, 12
	mov [rbp + 36], eax

realloc$42:	; £temporary185 = int_to_int oldMemoryPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 24]

realloc$43:	; £temporary186 = £temporary185 - int4$12#
	sub eax, 12

realloc$44:	; £temporary187 = int_to_int £temporary186 (Unsigned_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

realloc$45:	; oldBlockPtr = £temporary187
	mov [rbp + 40], rax

realloc$46:	; £field188 -> oldBlockPtr = *oldBlockPtr
	mov rsi, [rbp + 40]

realloc$47:	; if newBlockSize > £field188 -> oldBlockPtr goto 52
	mov eax, [rsi]
	cmp [rbp + 36], eax
	ja realloc$52

realloc$48:	; £field190 -> oldBlockPtr = *oldBlockPtr
	mov rsi, [rbp + 40]

realloc$49:	; £field190 -> oldBlockPtr = newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

realloc$50:	; return_value = oldMemoryPtr
	mov rbx, [rbp + 24]

realloc$51:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

realloc$52:	; lastAddress = int4$65528#
	mov dword [rbp + 48], 65528

realloc$53:	; currBlockPtr = g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 52], rax

realloc$54:	; if currBlockPtr == int8$0# goto 68
	cmp qword [rbp + 52], 0
	je realloc$68

realloc$55:	; if currBlockPtr != oldBlockPtr goto 63
	mov rax, [rbp + 40]
	cmp [rbp + 52], rax
	jne realloc$63

realloc$56:	; £temporary193 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 52]

realloc$57:	; availableSize = lastAddress - £temporary193
	mov ebx, [rbp + 48]
	sub ebx, eax
	mov [rbp + 60], ebx

realloc$58:	; if availableSize < newBlockSize goto 68
	mov eax, [rbp + 36]
	cmp [rbp + 60], eax
	jb realloc$68

realloc$59:	; £field196 -> oldBlockPtr = *oldBlockPtr
	mov rsi, [rbp + 40]

realloc$60:	; £field196 -> oldBlockPtr = newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

realloc$61:	; return_value = oldMemoryPtr
	mov rbx, [rbp + 24]

realloc$62:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

realloc$63:	; £temporary197 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 52]

realloc$64:	; lastAddress = £temporary197
	mov [rbp + 48], eax

realloc$65:	; £field198 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 52]

realloc$66:	; currBlockPtr = £field198 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 52], rax

realloc$67:	; goto 54
	jmp realloc$54

realloc$68:	; call header integral zero 0 stack zero 0

realloc$69:	; parameter newMemorySize, offset 84
	mov eax, [rbp + 32]
	mov [rbp + 84], eax

realloc$70:	; call function noellipse-noellipse malloc
	mov qword [rbp + 60], realloc$71
	mov [rbp + 68], rbp
	add rbp, 60
	jmp malloc

realloc$71:	; post call

realloc$72:	; £temporary199 = return_value

realloc$73:	; newMemoryPtr = £temporary199
	mov [rbp + 60], rbx

realloc$74:	; if newMemoryPtr == int8$0# goto 87
	cmp qword [rbp + 60], 0
	je realloc$87

realloc$75:	; call header integral zero 0 stack zero 0

realloc$76:	; parameter newMemoryPtr, offset 92
	mov rax, [rbp + 60]
	mov [rbp + 92], rax

realloc$77:	; parameter oldMemoryPtr, offset 100
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

realloc$78:	; parameter newMemorySize, offset 108
	mov eax, [rbp + 32]
	mov [rbp + 108], eax

realloc$79:	; call function noellipse-noellipse memcpy
	mov qword [rbp + 68], realloc$80
	mov [rbp + 76], rbp
	add rbp, 68
	jmp memcpy

realloc$80:	; post call

realloc$81:	; call header integral zero 0 stack zero 0

realloc$82:	; parameter oldMemoryPtr, offset 92
	mov rax, [rbp + 24]
	mov [rbp + 92], rax

realloc$83:	; call function noellipse-noellipse free
	mov qword [rbp + 68], realloc$84
	mov [rbp + 76], rbp
	add rbp, 68
	jmp free

realloc$84:	; post call

realloc$85:	; return_value = newMemoryPtr
	mov rbx, [rbp + 60]

realloc$86:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

realloc$87:	; return_value = int8$0#
	mov rbx, 0

realloc$88:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

realloc$89:	; function end realloc

print_heap:	; currBlockPtr = g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 24], rax

print_heap$1:	; call header integral zero 0 stack zero 0

print_heap$2:	; parameter string_Heap3A0A#, offset 56
	mov qword [rbp + 56], string_Heap3A0A#

print_heap$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 32], print_heap$4
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

print_heap$4:	; post call

print_heap$5:	; if currBlockPtr == int8$0# goto 17
	cmp qword [rbp + 24], 0
	je print_heap$17

print_heap$6:	; call header integral zero 0 stack zero 0

print_heap$7:	; parameter string_2020Address2025u2C20Size2025u0A#, offset 56
	mov qword [rbp + 56], string_2020Address2025u2C20Size2025u0A#

print_heap$8:	; £temporary205 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 24]

print_heap$9:	; parameter £temporary205, offset 64
	mov [rbp + 64], eax

print_heap$10:	; £field206 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 24]

print_heap$11:	; parameter £field206 -> currBlockPtr, offset 68
	mov eax, [rsi]
	mov [rbp + 68], eax

print_heap$12:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 32], print_heap$13
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

print_heap$13:	; post call

print_heap$14:	; £field208 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 24]

print_heap$15:	; currBlockPtr = £field208 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 24], rax

print_heap$16:	; goto 5
	jmp print_heap$5

print_heap$17:	; call header integral zero 0 stack zero 0

print_heap$18:	; parameter string_0A#, offset 56
	mov qword [rbp + 56], string_0A#

print_heap$19:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 32], print_heap$20
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

print_heap$20:	; post call

print_heap$21:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

print_heap$22:	; function end print_heap
section .data

$IntegralStorage#:
	times 8 db 0

g_firstBlockPtr:
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
