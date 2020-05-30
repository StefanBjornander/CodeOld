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

malloc$15:	; £temporary182 = int_to_int memorySize (Signed_Int -> Unsigned_Int)
	mov eax, [rbp + 24]

malloc$16:	; £temporary183 = £temporary182 + int4$12#
	add eax, 12

malloc$17:	; newBlockSize = £temporary183
	mov [rbp + 28], eax

malloc$18:	; minGap = int4$0#
	mov dword [rbp + 32], 0

malloc$19:	; lastAddress = int4$65528#
	mov dword [rbp + 36], 65528

malloc$20:	; minBlockPtr = int8$0#
	mov qword [rbp + 40], 0

malloc$21:	; minPrevBlockPtr = int8$0#
	mov qword [rbp + 48], 0

malloc$22:	; prevBlockPtr = int8$0#
	mov qword [rbp + 56], 0

malloc$23:	; currBlockPtr = g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 64], rax

malloc$24:	; if currBlockPtr == int8$0# goto 43
	cmp qword [rbp + 64], 0
	je malloc$43

malloc$25:	; £temporary185 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 64]

malloc$26:	; currAddress = £temporary185
	mov [rbp + 72], eax

malloc$27:	; £temporary186 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 64]

malloc$28:	; £temporary187 = currAddress + £temporary186 -> currBlockPtr
	mov eax, [rbp + 72]
	add eax, [rsi]

malloc$29:	; £temporary188 = £temporary187 + int4$12#
	add eax, 12

malloc$30:	; £temporary189 = lastAddress - £temporary188
	mov ebx, [rbp + 36]
	sub ebx, eax

malloc$31:	; currGap = £temporary189
	mov [rbp + 76], ebx

malloc$32:	; if newBlockSize > currGap goto 38
	mov eax, [rbp + 28]
	cmp eax, [rbp + 76]
	ja malloc$38

malloc$33:	; if minGap == int4$0# goto 35
	cmp dword [rbp + 32], 0
	je malloc$35

malloc$34:	; if currGap >= minGap goto 38
	mov eax, [rbp + 76]
	cmp eax, [rbp + 32]
	jae malloc$38

malloc$35:	; minGap = currGap
	mov eax, [rbp + 76]
	mov [rbp + 32], eax

malloc$36:	; minBlockPtr = currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 40], rax

malloc$37:	; minPrevBlockPtr = prevBlockPtr
	mov rax, [rbp + 56]
	mov [rbp + 48], rax

malloc$38:	; lastAddress = currAddress
	mov eax, [rbp + 72]
	mov [rbp + 36], eax

malloc$39:	; prevBlockPtr = currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 56], rax

malloc$40:	; £temporary195 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 64]

malloc$41:	; currBlockPtr = £temporary195 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 64], rax

malloc$42:	; goto 24
	jmp malloc$24

malloc$43:	; if minBlockPtr == int8$0# goto 64
	cmp qword [rbp + 40], 0
	je malloc$64

malloc$44:	; £temporary197 = int_to_int minBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 40]

malloc$45:	; £temporary198 -> minBlockPtr = *minBlockPtr
	mov rsi, [rbp + 40]

malloc$46:	; £temporary199 = £temporary197 + £temporary198 -> minBlockPtr
	add eax, [rsi]

malloc$47:	; £temporary200 = £temporary199 + int4$12#
	add eax, 12

malloc$48:	; newAddress = £temporary200
	mov [rbp + 72], eax

malloc$49:	; £temporary201 = int_to_int newAddress (Unsigned_Int -> Pointer)
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

malloc$50:	; newBlockPtr = £temporary201
	mov [rbp + 76], rax

malloc$51:	; £temporary202 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 76]

malloc$52:	; £temporary202 -> newBlockPtr = memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

malloc$53:	; £temporary203 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 76]

malloc$54:	; £temporary203 -> newBlockPtr = minBlockPtr
	mov rax, [rbp + 40]
	mov [rsi + 4], rax

malloc$55:	; if minPrevBlockPtr == int8$0# goto 59
	cmp qword [rbp + 48], 0
	je malloc$59

malloc$56:	; £temporary205 -> minPrevBlockPtr = *minPrevBlockPtr
	mov rsi, [rbp + 48]

malloc$57:	; £temporary205 -> minPrevBlockPtr = newBlockPtr
	mov rax, [rbp + 76]
	mov [rsi + 4], rax

malloc$58:	; goto 60
	jmp malloc$60

malloc$59:	; g_firstBlockPtr = newBlockPtr
	mov rax, [rbp + 76]
	mov [g_firstBlockPtr], rax

malloc$60:	; £temporary206 = newAddress + int4$12#
	mov ebx, [rbp + 72]
	add ebx, 12

malloc$61:	; £temporary207 = int_to_int £temporary206 (Unsigned_Int -> Pointer)
	mov rax, 4294967295
	and rbx, rax

malloc$62:	; return_value = £temporary207

malloc$63:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc$64:	; £temporary208 = lastAddress - newBlockSize
	mov eax, [rbp + 36]
	sub eax, [rbp + 28]

malloc$65:	; newAddress = £temporary208
	mov [rbp + 72], eax

malloc$66:	; £temporary209 = bp

malloc$67:	; £temporary210 = int_to_int £temporary209 (Unsigned_Short_Int -> Unsigned_Int)
	and ebp, 65535

malloc$68:	; stackTop = £temporary210
	mov [rbp + 76], ebp

malloc$69:	; if stackTop > newAddress goto 85
	mov eax, [rbp + 76]
	cmp eax, [rbp + 72]
	ja malloc$85

malloc$70:	; £temporary212 = int_to_int newAddress (Unsigned_Int -> Pointer)
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

malloc$71:	; newBlockPtr = £temporary212
	mov [rbp + 80], rax

malloc$72:	; £temporary213 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 80]

malloc$73:	; £temporary213 -> newBlockPtr = memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

malloc$74:	; £temporary214 -> newBlockPtr = *newBlockPtr
	mov rsi, [rbp + 80]

malloc$75:	; £temporary214 -> newBlockPtr = int8$0#
	mov qword [rsi + 4], 0

malloc$76:	; if prevBlockPtr == int8$0# goto 80
	cmp qword [rbp + 56], 0
	je malloc$80

malloc$77:	; £temporary216 -> prevBlockPtr = *prevBlockPtr
	mov rsi, [rbp + 56]

malloc$78:	; £temporary216 -> prevBlockPtr = newBlockPtr
	mov rax, [rbp + 80]
	mov [rsi + 4], rax

malloc$79:	; goto 81
	jmp malloc$81

malloc$80:	; g_firstBlockPtr = newBlockPtr
	mov rax, [rbp + 80]
	mov [g_firstBlockPtr], rax

malloc$81:	; £temporary217 = newAddress + int4$12#
	mov ebx, [rbp + 72]
	add ebx, 12

malloc$82:	; £temporary218 = int_to_int £temporary217 (Unsigned_Int -> Pointer)
	mov rax, 4294967295
	and rbx, rax

malloc$83:	; return_value = £temporary218

malloc$84:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc$85:	; return_value = int8$0#
	mov rbx, 0

malloc$86:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

malloc$87:	; function end malloc

calloc:	; call header integral zero 0 stack zero 0

calloc$1:	; £temporary224 = number * size
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [rbp + 28]

calloc$2:	; parameter £temporary224, offset 56
	mov [rbp + 56], eax

calloc$3:	; call function noellipse-noellipse malloc
	mov qword [rbp + 32], calloc$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp malloc

calloc$4:	; post call

calloc$5:	; £temporary225 = return_value

calloc$6:	; pointer = £temporary225
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

free$2:	; £temporary233 = int_to_int freeMemoryPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 24]

free$3:	; £temporary234 = £temporary233 - int4$12#
	sub eax, 12

free$4:	; £temporary235 = int_to_int £temporary234 (Unsigned_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

free$5:	; freeBlockPtr = £temporary235
	mov [rbp + 32], rax

free$6:	; prevBlockPtr = int8$0#
	mov qword [rbp + 40], 0

free$7:	; currBlockPtr = g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 48], rax

free$8:	; if currBlockPtr == int8$0# goto 32
	cmp qword [rbp + 48], 0
	je free$32

free$9:	; if currBlockPtr != freeBlockPtr goto 28
	mov rax, [rbp + 48]
	cmp rax, [rbp + 32]
	jne free$28

free$10:	; if prevBlockPtr != int8$0# goto 15
	cmp qword [rbp + 40], 0
	jne free$15

free$11:	; £temporary239 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

free$12:	; if £temporary239 -> currBlockPtr != int8$0# goto 15
	cmp qword [rsi + 4], 0
	jne free$15

free$13:	; g_firstBlockPtr = int8$0#
	mov qword [g_firstBlockPtr], 0

free$14:	; goto 27
	jmp free$27

free$15:	; if prevBlockPtr != int8$0# goto 19
	cmp qword [rbp + 40], 0
	jne free$19

free$16:	; £temporary243 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

free$17:	; g_firstBlockPtr = £temporary243 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [g_firstBlockPtr], rax

free$18:	; goto 27
	jmp free$27

free$19:	; £temporary244 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

free$20:	; if £temporary244 -> currBlockPtr != int8$0# goto 24
	cmp qword [rsi + 4], 0
	jne free$24

free$21:	; £temporary246 -> prevBlockPtr = *prevBlockPtr
	mov rsi, [rbp + 40]

free$22:	; £temporary246 -> prevBlockPtr = int8$0#
	mov qword [rsi + 4], 0

free$23:	; goto 27
	jmp free$27

free$24:	; £temporary247 -> prevBlockPtr = *prevBlockPtr
	mov rsi, [rbp + 40]

free$25:	; £temporary248 -> currBlockPtr = *currBlockPtr
	mov rdi, [rbp + 48]

free$26:	; £temporary247 -> prevBlockPtr = £temporary248 -> currBlockPtr
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

free$29:	; £temporary249 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 48]

free$30:	; currBlockPtr = £temporary249 -> currBlockPtr
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

realloc$30:	; £temporary261 = return_value

realloc$31:	; return_value = £temporary261

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

realloc$40:	; £temporary264 = int_to_int newMemorySize (Signed_Int -> Unsigned_Int)
	mov eax, [rbp + 32]

realloc$41:	; £temporary265 = £temporary264 + int4$12#
	add eax, 12

realloc$42:	; newBlockSize = £temporary265
	mov [rbp + 36], eax

realloc$43:	; £temporary266 = int_to_int oldMemoryPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 24]

realloc$44:	; £temporary267 = £temporary266 - int4$12#
	sub eax, 12

realloc$45:	; £temporary268 = int_to_int £temporary267 (Unsigned_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

realloc$46:	; oldBlockPtr = £temporary268
	mov [rbp + 40], rax

realloc$47:	; £temporary269 -> oldBlockPtr = *oldBlockPtr
	mov rsi, [rbp + 40]

realloc$48:	; if newBlockSize > £temporary269 -> oldBlockPtr goto 53
	mov eax, [rbp + 36]
	cmp eax, [rsi]
	ja realloc$53

realloc$49:	; £temporary271 -> oldBlockPtr = *oldBlockPtr
	mov rsi, [rbp + 40]

realloc$50:	; £temporary271 -> oldBlockPtr = newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

realloc$51:	; return_value = oldMemoryPtr
	mov rbx, [rbp + 24]

realloc$52:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

realloc$53:	; lastAddress = int4$65528#
	mov dword [rbp + 48], 65528

realloc$54:	; currBlockPtr = g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 52], rax

realloc$55:	; if currBlockPtr == int8$0# goto 70
	cmp qword [rbp + 52], 0
	je realloc$70

realloc$56:	; if currBlockPtr != oldBlockPtr goto 65
	mov rax, [rbp + 52]
	cmp rax, [rbp + 40]
	jne realloc$65

realloc$57:	; £temporary274 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 52]

realloc$58:	; £temporary275 = lastAddress - £temporary274
	mov ebx, [rbp + 48]
	sub ebx, eax

realloc$59:	; availableSize = £temporary275
	mov [rbp + 60], ebx

realloc$60:	; if availableSize < newBlockSize goto 70
	mov eax, [rbp + 60]
	cmp eax, [rbp + 36]
	jb realloc$70

realloc$61:	; £temporary277 -> oldBlockPtr = *oldBlockPtr
	mov rsi, [rbp + 40]

realloc$62:	; £temporary277 -> oldBlockPtr = newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

realloc$63:	; return_value = oldMemoryPtr
	mov rbx, [rbp + 24]

realloc$64:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

realloc$65:	; £temporary278 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 52]

realloc$66:	; lastAddress = £temporary278
	mov [rbp + 48], eax

realloc$67:	; £temporary279 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 52]

realloc$68:	; currBlockPtr = £temporary279 -> currBlockPtr
	mov rax, [rsi + 4]
	mov [rbp + 52], rax

realloc$69:	; goto 55
	jmp realloc$55

realloc$70:	; call header integral zero 0 stack zero 0

realloc$71:	; parameter newMemorySize, offset 84
	mov eax, [rbp + 32]
	mov [rbp + 84], eax

realloc$72:	; call function noellipse-noellipse malloc
	mov qword [rbp + 60], realloc$73
	mov [rbp + 68], rbp
	add rbp, 60
	jmp malloc

realloc$73:	; post call

realloc$74:	; £temporary280 = return_value

realloc$75:	; newMemoryPtr = £temporary280
	mov [rbp + 60], rbx

realloc$76:	; if newMemoryPtr == int8$0# goto 89
	cmp qword [rbp + 60], 0
	je realloc$89

realloc$77:	; call header integral zero 0 stack zero 0

realloc$78:	; parameter newMemoryPtr, offset 92
	mov rax, [rbp + 60]
	mov [rbp + 92], rax

realloc$79:	; parameter oldMemoryPtr, offset 100
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

realloc$80:	; parameter newMemorySize, offset 108
	mov eax, [rbp + 32]
	mov [rbp + 108], eax

realloc$81:	; call function noellipse-noellipse memcpy
	mov qword [rbp + 68], realloc$82
	mov [rbp + 76], rbp
	add rbp, 68
	jmp memcpy

realloc$82:	; post call

realloc$83:	; call header integral zero 0 stack zero 0

realloc$84:	; parameter oldMemoryPtr, offset 92
	mov rax, [rbp + 24]
	mov [rbp + 92], rax

realloc$85:	; call function noellipse-noellipse free
	mov qword [rbp + 68], realloc$86
	mov [rbp + 76], rbp
	add rbp, 68
	jmp free

realloc$86:	; post call

realloc$87:	; return_value = newMemoryPtr
	mov rbx, [rbp + 60]

realloc$88:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

realloc$89:	; return_value = int8$0#
	mov rbx, 0

realloc$90:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

realloc$91:	; function end realloc

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

print_heap$8:	; £temporary303 = int_to_int currBlockPtr (Pointer -> Unsigned_Int)
	mov rax, [rbp + 24]

print_heap$9:	; parameter £temporary303, offset 64
	mov [rbp + 64], eax

print_heap$10:	; £temporary304 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 24]

print_heap$11:	; parameter £temporary304 -> currBlockPtr, offset 68
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

print_heap$14:	; £temporary306 -> currBlockPtr = *currBlockPtr
	mov rsi, [rbp + 24]

print_heap$15:	; currBlockPtr = £temporary306 -> currBlockPtr
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
	; init String
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

string_memorySize203E3D200#:
	; init String
	db "memorySize >= 0", 0

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; init String
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c", 0

string_newMemorySize203E3D200#:
	; init String
	db "newMemorySize >= 0", 0

string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#:
	; init String
	db "( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )", 0

string_Heap3A0A#:
	; init String
	db "Heap:", 10, 0

string_2020Address2025u2C20Size2025u0A#:
	; init String
	db "  Address %u, Size %u", 10, 0

string_0A#:
	; init String
	db 10, 0
