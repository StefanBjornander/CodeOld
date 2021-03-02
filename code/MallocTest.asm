	global malloc_test2
	global malloc_test3
	global rec
	global malloc_test4
	global malloc_test
	global malloc_test6

	extern malloc
	extern print_heap
	extern realloc
	extern calloc
	extern free
	extern printf
	extern $StackTop


section .text

 malloc_test2:
	; Assign p integral8$0#
	mov qword [rbp + 28], 0

 malloc_test2$1:
	; Assign r integral8$0#
	mov qword [rbp + 36], 0

 malloc_test2$2:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$3:
	; Parameter 68 signed int integral4$96#
	mov dword [rbp + 68], 96

 malloc_test2$4:
	; Call 44 malloc 0
	mov qword [rbp + 44], malloc_test2$5
	mov [rbp + 52], rbp
	add rbp, 44
	jmp malloc

 malloc_test2$5:
	; PostCall 44

 malloc_test2$6:
	; GetReturnValue £temporary4145

 malloc_test2$7:
	; Assign q £temporary4145
	mov [rbp + 44], rbx

 malloc_test2$8:
	; Assign index integral4$0#
	mov dword [rbp + 24], 0

 malloc_test2$9:
	; GreaterThanEqual 20 index integral4$10#
	cmp dword [rbp + 24], 10
	jge malloc_test2$20

 malloc_test2$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$11:
	; Parameter 76 signed int integral4$96#
	mov dword [rbp + 76], 96

 malloc_test2$12:
	; Call 52 malloc 0
	mov qword [rbp + 52], malloc_test2$13
	mov [rbp + 60], rbp
	add rbp, 52
	jmp malloc

 malloc_test2$13:
	; PostCall 52

 malloc_test2$14:
	; GetReturnValue £temporary4148

 malloc_test2$15:
	; Assign p £temporary4148
	mov [rbp + 28], rbx

 malloc_test2$16:
	; NotEqual 18 index integral4$5#
	cmp dword [rbp + 24], 5
	jne malloc_test2$18

 malloc_test2$17:
	; Assign r p
	mov rax, [rbp + 28]
	mov [rbp + 36], rax

 malloc_test2$18:
	; Add index index integral4$1#
	inc dword [rbp + 24]

 malloc_test2$19:
	; Jump 9
	jmp malloc_test2$9

 malloc_test2$20:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$21:
	; Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$22
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$22:
	; PostCall 52

 malloc_test2$23:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$24:
	; Parameter 76 pointer q
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 malloc_test2$25:
	; Parameter 84 signed int integral4$50#
	mov dword [rbp + 84], 50

 malloc_test2$26:
	; Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$27
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$27:
	; PostCall 52

 malloc_test2$28:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$29:
	; Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$30
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$30:
	; PostCall 52

 malloc_test2$31:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$32:
	; Parameter 76 pointer r
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 malloc_test2$33:
	; Parameter 84 signed int integral4$50#
	mov dword [rbp + 84], 50

 malloc_test2$34:
	; Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$35
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$35:
	; PostCall 52

 malloc_test2$36:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$37:
	; Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$38
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$38:
	; PostCall 52

 malloc_test2$39:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$40:
	; Parameter 76 pointer p
	mov rax, [rbp + 28]
	mov [rbp + 76], rax

 malloc_test2$41:
	; Parameter 84 signed int integral4$50#
	mov dword [rbp + 84], 50

 malloc_test2$42:
	; Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$43
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$43:
	; PostCall 52

 malloc_test2$44:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$45:
	; Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$46
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$46:
	; PostCall 52

 malloc_test2$47:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$48:
	; Parameter 76 pointer q
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 malloc_test2$49:
	; Parameter 84 signed int integral4$200#
	mov dword [rbp + 84], 200

 malloc_test2$50:
	; Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$51
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$51:
	; PostCall 52

 malloc_test2$52:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$53:
	; Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$54
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$54:
	; PostCall 52

 malloc_test2$55:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$56:
	; Parameter 76 pointer r
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 malloc_test2$57:
	; Parameter 84 signed int integral4$200#
	mov dword [rbp + 84], 200

 malloc_test2$58:
	; Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$59
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$59:
	; PostCall 52

 malloc_test2$60:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$61:
	; Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$62
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$62:
	; PostCall 52

 malloc_test2$63:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$64:
	; Parameter 76 pointer p
	mov rax, [rbp + 28]
	mov [rbp + 76], rax

 malloc_test2$65:
	; Parameter 84 signed int integral4$200#
	mov dword [rbp + 84], 200

 malloc_test2$66:
	; Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$67
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$67:
	; PostCall 52

 malloc_test2$68:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$69:
	; Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$70
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$70:
	; PostCall 52

 malloc_test2$71:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test2$72:
	; FunctionEnd malloc_test2

section .text

 malloc_test3:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$1:
	; Parameter 48 signed int integral4$96#
	mov dword [rbp + 48], 96

 malloc_test3$2:
	; Parameter 52 signed int integral4$1#
	mov dword [rbp + 52], 1

 malloc_test3$3:
	; Call 24 calloc 0
	mov qword [rbp + 24], malloc_test3$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp calloc

 malloc_test3$4:
	; PostCall 24

 malloc_test3$5:
	; GetReturnValue £temporary4163

 malloc_test3$6:
	; Assign a £temporary4163
	mov [rbp + 24], rbx

 malloc_test3$7:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$8:
	; Parameter 56 signed int integral4$96#
	mov dword [rbp + 56], 96

 malloc_test3$9:
	; Parameter 60 signed int integral4$1#
	mov dword [rbp + 60], 1

 malloc_test3$10:
	; Call 32 calloc 0
	mov qword [rbp + 32], malloc_test3$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp calloc

 malloc_test3$11:
	; PostCall 32

 malloc_test3$12:
	; GetReturnValue £temporary4164

 malloc_test3$13:
	; Assign b £temporary4164
	mov [rbp + 32], rbx

 malloc_test3$14:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$15:
	; Parameter 64 signed int integral4$96#
	mov dword [rbp + 64], 96

 malloc_test3$16:
	; Parameter 68 signed int integral4$1#
	mov dword [rbp + 68], 1

 malloc_test3$17:
	; Call 40 calloc 0
	mov qword [rbp + 40], malloc_test3$18
	mov [rbp + 48], rbp
	add rbp, 40
	jmp calloc

 malloc_test3$18:
	; PostCall 40

 malloc_test3$19:
	; GetReturnValue £temporary4165

 malloc_test3$20:
	; Assign c £temporary4165
	mov [rbp + 40], rbx

 malloc_test3$21:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$22:
	; Parameter 72 signed int integral4$96#
	mov dword [rbp + 72], 96

 malloc_test3$23:
	; Parameter 76 signed int integral4$1#
	mov dword [rbp + 76], 1

 malloc_test3$24:
	; Call 48 calloc 0
	mov qword [rbp + 48], malloc_test3$25
	mov [rbp + 56], rbp
	add rbp, 48
	jmp calloc

 malloc_test3$25:
	; PostCall 48

 malloc_test3$26:
	; GetReturnValue £temporary4166

 malloc_test3$27:
	; Assign d £temporary4166
	mov [rbp + 48], rbx

 malloc_test3$28:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$29:
	; Parameter 80 signed int integral4$96#
	mov dword [rbp + 80], 96

 malloc_test3$30:
	; Parameter 84 signed int integral4$1#
	mov dword [rbp + 84], 1

 malloc_test3$31:
	; Call 56 calloc 0
	mov qword [rbp + 56], malloc_test3$32
	mov [rbp + 64], rbp
	add rbp, 56
	jmp calloc

 malloc_test3$32:
	; PostCall 56

 malloc_test3$33:
	; GetReturnValue £temporary4167

 malloc_test3$34:
	; Assign e £temporary4167
	mov [rbp + 56], rbx

 malloc_test3$35:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$36:
	; Call 64 print_heap 0
	mov qword [rbp + 64], malloc_test3$37
	mov [rbp + 72], rbp
	add rbp, 64
	jmp print_heap

 malloc_test3$37:
	; PostCall 64

 malloc_test3$38:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$39:
	; Parameter 88 pointer a
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 malloc_test3$40:
	; Call 64 free 0
	mov qword [rbp + 64], malloc_test3$41
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$41:
	; PostCall 64

 malloc_test3$42:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$43:
	; Parameter 88 pointer b
	mov rax, [rbp + 32]
	mov [rbp + 88], rax

 malloc_test3$44:
	; Call 64 free 0
	mov qword [rbp + 64], malloc_test3$45
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$45:
	; PostCall 64

 malloc_test3$46:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$47:
	; Parameter 88 pointer c
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

 malloc_test3$48:
	; Call 64 free 0
	mov qword [rbp + 64], malloc_test3$49
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$49:
	; PostCall 64

 malloc_test3$50:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$51:
	; Parameter 88 pointer d
	mov rax, [rbp + 48]
	mov [rbp + 88], rax

 malloc_test3$52:
	; Call 64 free 0
	mov qword [rbp + 64], malloc_test3$53
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$53:
	; PostCall 64

 malloc_test3$54:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$55:
	; Parameter 88 pointer e
	mov rax, [rbp + 56]
	mov [rbp + 88], rax

 malloc_test3$56:
	; Call 64 free 0
	mov qword [rbp + 64], malloc_test3$57
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$57:
	; PostCall 64

 malloc_test3$58:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$59:
	; Call 64 print_heap 0
	mov qword [rbp + 64], malloc_test3$60
	mov [rbp + 72], rbp
	add rbp, 64
	jmp print_heap

 malloc_test3$60:
	; PostCall 64

 malloc_test3$61:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test3$62:
	; FunctionEnd malloc_test3

section .data

@11998string_Stack20Top3A2025u2C20Low20Heap3A2025u0A#:
	; Initializer String Stack Top: %u, Low Heap: %u\n
	db "Stack Top: %u, Low Heap: %u", 10, 0

section .text

 rec:
	; Assign lowHeapPtr integral8$65534#
	mov qword [rbp + 28], 65534

 rec$1:
	; InspectRegister £temporary4175 bp

 rec$2:
	; IntegralToIntegral £temporary4176 £temporary4175
	and ebp, 65535

 rec$3:
	; Assign stackTop £temporary4176
	mov [rbp + 24], ebp

 rec$4:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 rec$5:
	; Parameter 60 pointer string_Stack20Top3A2025u2C20Low20Heap3A2025u0A#
	mov qword [rbp + 60], @11998string_Stack20Top3A2025u2C20Low20Heap3A2025u0A#

 rec$6:
	; Parameter 68 unsigned int stackTop
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 rec$7:
	; Dereference £temporary4177 lowHeapPtr 0
	mov rsi, [rbp + 28]

 rec$8:
	; Parameter 72 unsigned int £temporary4177
	mov eax, [rsi]
	mov [rbp + 72], eax

 rec$9:
	; Call 36 printf 8
	mov qword [rbp + 36], rec$10
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 8
	jmp printf

 rec$10:
	; PostCall 36

 rec$11:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 rec$12:
	; Call 36 rec 0
	mov qword [rbp + 36], rec$13
	mov [rbp + 44], rbp
	add rbp, 36
	jmp rec

 rec$13:
	; PostCall 36

 rec$14:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rec$15:
	; FunctionEnd rec

section .text

 malloc_test4:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test4$1:
	; Call 24 rec 0
	mov qword [rbp + 24], malloc_test4$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp rec

 malloc_test4$2:
	; PostCall 24

 malloc_test4$3:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test4$4:
	; FunctionEnd malloc_test4

section .text

 malloc_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$1:
	; Parameter 48 signed int integral4$96#
	mov dword [rbp + 48], 96

 malloc_test$2:
	; Call 24 malloc 0
	mov qword [rbp + 24], malloc_test$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp malloc

 malloc_test$3:
	; PostCall 24

 malloc_test$4:
	; GetReturnValue £temporary4181

 malloc_test$5:
	; Assign b £temporary4181
	mov [rbp + 24], rbx

 malloc_test$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$7:
	; Parameter 56 signed int integral4$96#
	mov dword [rbp + 56], 96

 malloc_test$8:
	; Call 32 malloc 0
	mov qword [rbp + 32], malloc_test$9
	mov [rbp + 40], rbp
	add rbp, 32
	jmp malloc

 malloc_test$9:
	; PostCall 32

 malloc_test$10:
	; GetReturnValue £temporary4182

 malloc_test$11:
	; Assign c £temporary4182
	mov [rbp + 32], rbx

 malloc_test$12:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$13:
	; Parameter 64 signed int integral4$96#
	mov dword [rbp + 64], 96

 malloc_test$14:
	; Call 40 malloc 0
	mov qword [rbp + 40], malloc_test$15
	mov [rbp + 48], rbp
	add rbp, 40
	jmp malloc

 malloc_test$15:
	; PostCall 40

 malloc_test$16:
	; GetReturnValue £temporary4183

 malloc_test$17:
	; Assign d £temporary4183
	mov [rbp + 40], rbx

 malloc_test$18:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$19:
	; Call 48 print_heap 0
	mov qword [rbp + 48], malloc_test$20
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$20:
	; PostCall 48

 malloc_test$21:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$22:
	; Parameter 72 pointer c
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 malloc_test$23:
	; Parameter 80 signed int integral4$40#
	mov dword [rbp + 80], 40

 malloc_test$24:
	; Call 48 realloc 0
	mov qword [rbp + 48], malloc_test$25
	mov [rbp + 56], rbp
	add rbp, 48
	jmp realloc

 malloc_test$25:
	; PostCall 48

 malloc_test$26:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$27:
	; Call 48 print_heap 0
	mov qword [rbp + 48], malloc_test$28
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$28:
	; PostCall 48

 malloc_test$29:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$30:
	; Parameter 72 signed int integral4$40#
	mov dword [rbp + 72], 40

 malloc_test$31:
	; Call 48 malloc 0
	mov qword [rbp + 48], malloc_test$32
	mov [rbp + 56], rbp
	add rbp, 48
	jmp malloc

 malloc_test$32:
	; PostCall 48

 malloc_test$33:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$34:
	; Call 48 print_heap 0
	mov qword [rbp + 48], malloc_test$35
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$35:
	; PostCall 48

 malloc_test$36:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$37:
	; Parameter 72 pointer b
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 malloc_test$38:
	; Call 48 free 0
	mov qword [rbp + 48], malloc_test$39
	mov [rbp + 56], rbp
	add rbp, 48
	jmp free

 malloc_test$39:
	; PostCall 48

 malloc_test$40:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$41:
	; Call 48 print_heap 0
	mov qword [rbp + 48], malloc_test$42
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$42:
	; PostCall 48

 malloc_test$43:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$44:
	; Parameter 72 pointer d
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 malloc_test$45:
	; Call 48 free 0
	mov qword [rbp + 48], malloc_test$46
	mov [rbp + 56], rbp
	add rbp, 48
	jmp free

 malloc_test$46:
	; PostCall 48

 malloc_test$47:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$48:
	; Call 48 print_heap 0
	mov qword [rbp + 48], malloc_test$49
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$49:
	; PostCall 48

 malloc_test$50:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test$51:
	; FunctionEnd malloc_test

section .data

@12031string_Index3A2025i2C20Pointer3A2025u2C20Stack20top3A2025u2C20Low20Heap3A2025u0A#:
	; Initializer String Index: %i, Pointer: %u, Stack top: %u, Low Heap: %u\n
	db "Index: %i, Pointer: %u, Stack top: %u, Low Heap: %u", 10, 0

section .text

 malloc_test6:
	; Assign lowHeapPtr integral8$65534#
	mov qword [rbp + 32], 65534

 malloc_test6$1:
	; InspectRegister £temporary4193 bp

 malloc_test6$2:
	; IntegralToIntegral £temporary4194 £temporary4193
	and ebp, 65535

 malloc_test6$3:
	; Assign stackTop £temporary4194
	mov [rbp + 28], ebp

 malloc_test6$4:
	; Assign i integral4$0#
	mov dword [rbp + 24], 0

 malloc_test6$5:
	; GreaterThanEqual 23 i integral4$1000#
	cmp dword [rbp + 24], 1000
	jge malloc_test6$23

 malloc_test6$6:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test6$7:
	; Parameter 64 signed int integral4$96#
	mov dword [rbp + 64], 96

 malloc_test6$8:
	; Call 40 malloc 0
	mov qword [rbp + 40], malloc_test6$9
	mov [rbp + 48], rbp
	add rbp, 40
	jmp malloc

 malloc_test6$9:
	; PostCall 40

 malloc_test6$10:
	; GetReturnValue £temporary4197

 malloc_test6$11:
	; Assign p £temporary4197
	mov [rbp + 40], rbx

 malloc_test6$12:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test6$13:
	; Parameter 72 pointer string_Index3A2025i2C20Pointer3A2025u2C20Stack20top3A2025u2C20Low20Heap3A2025u0A#
	mov qword [rbp + 72], @12031string_Index3A2025i2C20Pointer3A2025u2C20Stack20top3A2025u2C20Low20Heap3A2025u0A#

 malloc_test6$14:
	; Parameter 80 signed int i
	mov eax, [rbp + 24]
	mov [rbp + 80], eax

 malloc_test6$15:
	; Parameter 84 pointer p
	mov rax, [rbp + 40]
	mov [rbp + 84], rax

 malloc_test6$16:
	; Parameter 92 unsigned int stackTop
	mov eax, [rbp + 28]
	mov [rbp + 92], eax

 malloc_test6$17:
	; Dereference £temporary4198 lowHeapPtr 0
	mov rsi, [rbp + 32]

 malloc_test6$18:
	; Parameter 96 unsigned int £temporary4198
	mov eax, [rsi]
	mov [rbp + 96], eax

 malloc_test6$19:
	; Call 48 printf 20
	mov qword [rbp + 48], malloc_test6$20
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp printf

 malloc_test6$20:
	; PostCall 48

 malloc_test6$21:
	; Add i i integral4$1#
	inc dword [rbp + 24]

 malloc_test6$22:
	; Jump 5
	jmp malloc_test6$5

 malloc_test6$23:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test6$24:
	; FunctionEnd malloc_test6
