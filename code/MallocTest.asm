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
	; Empty

 malloc_test2$1:
	; Assign p 0
	mov qword [rbp + 28], 0

 malloc_test2$2:
	; Assign r 0
	mov qword [rbp + 36], 0

 malloc_test2$3:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$4:
	; Parameter signedint 96 68
	mov dword [rbp + 68], 96

 malloc_test2$5:
	; Call malloc 44 0
	mov qword [rbp + 44], malloc_test2$6
	mov [rbp + 52], rbp
	add rbp, 44
	jmp malloc

 malloc_test2$6:
	; PostCall 44

 malloc_test2$7:
	; GetReturnValue £temporary3730

 malloc_test2$8:
	; Assign q £temporary3730
	mov [rbp + 44], rbx

 malloc_test2$9:
	; Assign index 0
	mov dword [rbp + 24], 0

 malloc_test2$10:
	; SignedGreaterThanEqual 21 index 10
	cmp dword [rbp + 24], 10
	jge malloc_test2$21

 malloc_test2$11:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$12:
	; Parameter signedint 96 76
	mov dword [rbp + 76], 96

 malloc_test2$13:
	; Call malloc 52 0
	mov qword [rbp + 52], malloc_test2$14
	mov [rbp + 60], rbp
	add rbp, 52
	jmp malloc

 malloc_test2$14:
	; PostCall 52

 malloc_test2$15:
	; GetReturnValue £temporary3733

 malloc_test2$16:
	; Assign p £temporary3733
	mov [rbp + 28], rbx

 malloc_test2$17:
	; NotEqual 19 index 5
	cmp dword [rbp + 24], 5
	jne malloc_test2$19

 malloc_test2$18:
	; Assign r p
	mov rax, [rbp + 28]
	mov [rbp + 36], rax

 malloc_test2$19:
	; BinaryAdd index index 1
	inc dword [rbp + 24]

 malloc_test2$20:
	; Goto 10
	jmp malloc_test2$10

 malloc_test2$21:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$22:
	; Call print_heap 52 0
	mov qword [rbp + 52], malloc_test2$23
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$23:
	; PostCall 52

 malloc_test2$24:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$25:
	; Parameter pointer q 76
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 malloc_test2$26:
	; Parameter signedint 50 84
	mov dword [rbp + 84], 50

 malloc_test2$27:
	; Call realloc 52 0
	mov qword [rbp + 52], malloc_test2$28
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$28:
	; PostCall 52

 malloc_test2$29:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$30:
	; Call print_heap 52 0
	mov qword [rbp + 52], malloc_test2$31
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$31:
	; PostCall 52

 malloc_test2$32:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$33:
	; Parameter pointer r 76
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 malloc_test2$34:
	; Parameter signedint 50 84
	mov dword [rbp + 84], 50

 malloc_test2$35:
	; Call realloc 52 0
	mov qword [rbp + 52], malloc_test2$36
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$36:
	; PostCall 52

 malloc_test2$37:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$38:
	; Call print_heap 52 0
	mov qword [rbp + 52], malloc_test2$39
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$39:
	; PostCall 52

 malloc_test2$40:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$41:
	; Parameter pointer p 76
	mov rax, [rbp + 28]
	mov [rbp + 76], rax

 malloc_test2$42:
	; Parameter signedint 50 84
	mov dword [rbp + 84], 50

 malloc_test2$43:
	; Call realloc 52 0
	mov qword [rbp + 52], malloc_test2$44
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$44:
	; PostCall 52

 malloc_test2$45:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$46:
	; Call print_heap 52 0
	mov qword [rbp + 52], malloc_test2$47
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$47:
	; PostCall 52

 malloc_test2$48:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$49:
	; Parameter pointer q 76
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 malloc_test2$50:
	; Parameter signedint 200 84
	mov dword [rbp + 84], 200

 malloc_test2$51:
	; Call realloc 52 0
	mov qword [rbp + 52], malloc_test2$52
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$52:
	; PostCall 52

 malloc_test2$53:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$54:
	; Call print_heap 52 0
	mov qword [rbp + 52], malloc_test2$55
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$55:
	; PostCall 52

 malloc_test2$56:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$57:
	; Parameter pointer r 76
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 malloc_test2$58:
	; Parameter signedint 200 84
	mov dword [rbp + 84], 200

 malloc_test2$59:
	; Call realloc 52 0
	mov qword [rbp + 52], malloc_test2$60
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$60:
	; PostCall 52

 malloc_test2$61:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$62:
	; Call print_heap 52 0
	mov qword [rbp + 52], malloc_test2$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$63:
	; PostCall 52

 malloc_test2$64:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$65:
	; Parameter pointer p 76
	mov rax, [rbp + 28]
	mov [rbp + 76], rax

 malloc_test2$66:
	; Parameter signedint 200 84
	mov dword [rbp + 84], 200

 malloc_test2$67:
	; Call realloc 52 0
	mov qword [rbp + 52], malloc_test2$68
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$68:
	; PostCall 52

 malloc_test2$69:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$70:
	; Call print_heap 52 0
	mov qword [rbp + 52], malloc_test2$71
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$71:
	; PostCall 52

 malloc_test2$72:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test2$73:
	; FunctionEnd malloc_test2

section .text

 malloc_test3:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$1:
	; Parameter signedint 96 48
	mov dword [rbp + 48], 96

 malloc_test3$2:
	; Parameter signedint 1 52
	mov dword [rbp + 52], 1

 malloc_test3$3:
	; Call calloc 24 0
	mov qword [rbp + 24], malloc_test3$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp calloc

 malloc_test3$4:
	; PostCall 24

 malloc_test3$5:
	; GetReturnValue £temporary3748

 malloc_test3$6:
	; Assign a £temporary3748
	mov [rbp + 24], rbx

 malloc_test3$7:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$8:
	; Parameter signedint 96 56
	mov dword [rbp + 56], 96

 malloc_test3$9:
	; Parameter signedint 1 60
	mov dword [rbp + 60], 1

 malloc_test3$10:
	; Call calloc 32 0
	mov qword [rbp + 32], malloc_test3$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp calloc

 malloc_test3$11:
	; PostCall 32

 malloc_test3$12:
	; GetReturnValue £temporary3749

 malloc_test3$13:
	; Assign b £temporary3749
	mov [rbp + 32], rbx

 malloc_test3$14:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$15:
	; Parameter signedint 96 64
	mov dword [rbp + 64], 96

 malloc_test3$16:
	; Parameter signedint 1 68
	mov dword [rbp + 68], 1

 malloc_test3$17:
	; Call calloc 40 0
	mov qword [rbp + 40], malloc_test3$18
	mov [rbp + 48], rbp
	add rbp, 40
	jmp calloc

 malloc_test3$18:
	; PostCall 40

 malloc_test3$19:
	; GetReturnValue £temporary3750

 malloc_test3$20:
	; Assign c £temporary3750
	mov [rbp + 40], rbx

 malloc_test3$21:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$22:
	; Parameter signedint 96 72
	mov dword [rbp + 72], 96

 malloc_test3$23:
	; Parameter signedint 1 76
	mov dword [rbp + 76], 1

 malloc_test3$24:
	; Call calloc 48 0
	mov qword [rbp + 48], malloc_test3$25
	mov [rbp + 56], rbp
	add rbp, 48
	jmp calloc

 malloc_test3$25:
	; PostCall 48

 malloc_test3$26:
	; GetReturnValue £temporary3751

 malloc_test3$27:
	; Assign d £temporary3751
	mov [rbp + 48], rbx

 malloc_test3$28:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$29:
	; Parameter signedint 96 80
	mov dword [rbp + 80], 96

 malloc_test3$30:
	; Parameter signedint 1 84
	mov dword [rbp + 84], 1

 malloc_test3$31:
	; Call calloc 56 0
	mov qword [rbp + 56], malloc_test3$32
	mov [rbp + 64], rbp
	add rbp, 56
	jmp calloc

 malloc_test3$32:
	; PostCall 56

 malloc_test3$33:
	; GetReturnValue £temporary3752

 malloc_test3$34:
	; Assign e £temporary3752
	mov [rbp + 56], rbx

 malloc_test3$35:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$36:
	; Call print_heap 64 0
	mov qword [rbp + 64], malloc_test3$37
	mov [rbp + 72], rbp
	add rbp, 64
	jmp print_heap

 malloc_test3$37:
	; PostCall 64

 malloc_test3$38:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$39:
	; Parameter pointer a 88
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 malloc_test3$40:
	; Call free 64 0
	mov qword [rbp + 64], malloc_test3$41
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$41:
	; PostCall 64

 malloc_test3$42:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$43:
	; Parameter pointer b 88
	mov rax, [rbp + 32]
	mov [rbp + 88], rax

 malloc_test3$44:
	; Call free 64 0
	mov qword [rbp + 64], malloc_test3$45
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$45:
	; PostCall 64

 malloc_test3$46:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$47:
	; Parameter pointer c 88
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

 malloc_test3$48:
	; Call free 64 0
	mov qword [rbp + 64], malloc_test3$49
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$49:
	; PostCall 64

 malloc_test3$50:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$51:
	; Parameter pointer d 88
	mov rax, [rbp + 48]
	mov [rbp + 88], rax

 malloc_test3$52:
	; Call free 64 0
	mov qword [rbp + 64], malloc_test3$53
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$53:
	; PostCall 64

 malloc_test3$54:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$55:
	; Parameter pointer e 88
	mov rax, [rbp + 56]
	mov [rbp + 88], rax

 malloc_test3$56:
	; Call free 64 0
	mov qword [rbp + 64], malloc_test3$57
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$57:
	; PostCall 64

 malloc_test3$58:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$59:
	; Call print_heap 64 0
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

string_Stack20Top3A2025u2C20Low20Heap3A2025u0A#:
	; Initializer String Stack Top: %u, Low Heap: %u\n
	db "Stack Top: %u, Low Heap: %u", 10, 0

section .text

 rec:
	; Empty

 rec$1:
	; InspectRegister £temporary3760 bp

 rec$2:
	; IntegralToIntegral £temporary3761 £temporary3760
	and ebp, 65535

 rec$3:
	; Assign stackTop £temporary3761
	mov [rbp + 24], ebp

 rec$4:
	; Assign lowHeapPtr 65534
	mov qword [rbp + 28], 65534

 rec$5:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 rec$6:
	; Parameter pointer "Stack Top: %u, Low Heap: %u\n" 60
	mov qword [rbp + 60], string_Stack20Top3A2025u2C20Low20Heap3A2025u0A#

 rec$7:
	; Parameter unsigned int stackTop 68
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 rec$8:
	; Dereference £temporary3762 -> lowHeapPtr lowHeapPtr 0
	mov rsi, [rbp + 28]

 rec$9:
	; Parameter unsigned int £temporary3762 -> lowHeapPtr 72
	mov eax, [rsi]
	mov [rbp + 72], eax

 rec$10:
	; Call printf 36 8
	mov qword [rbp + 36], rec$11
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 8
	jmp printf

 rec$11:
	; PostCall 36

 rec$12:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 rec$13:
	; Call rec 36 0
	mov qword [rbp + 36], rec$14
	mov [rbp + 44], rbp
	add rbp, 36
	jmp rec

 rec$14:
	; PostCall 36

 rec$15:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rec$16:
	; FunctionEnd rec

section .text

 malloc_test4:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test4$1:
	; Call rec 24 0
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
	; Parameter signedint 96 48
	mov dword [rbp + 48], 96

 malloc_test$2:
	; Call malloc 24 0
	mov qword [rbp + 24], malloc_test$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp malloc

 malloc_test$3:
	; PostCall 24

 malloc_test$4:
	; GetReturnValue £temporary3766

 malloc_test$5:
	; Assign b £temporary3766
	mov [rbp + 24], rbx

 malloc_test$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$7:
	; Parameter signedint 96 56
	mov dword [rbp + 56], 96

 malloc_test$8:
	; Call malloc 32 0
	mov qword [rbp + 32], malloc_test$9
	mov [rbp + 40], rbp
	add rbp, 32
	jmp malloc

 malloc_test$9:
	; PostCall 32

 malloc_test$10:
	; GetReturnValue £temporary3767

 malloc_test$11:
	; Assign c £temporary3767
	mov [rbp + 32], rbx

 malloc_test$12:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$13:
	; Parameter signedint 96 64
	mov dword [rbp + 64], 96

 malloc_test$14:
	; Call malloc 40 0
	mov qword [rbp + 40], malloc_test$15
	mov [rbp + 48], rbp
	add rbp, 40
	jmp malloc

 malloc_test$15:
	; PostCall 40

 malloc_test$16:
	; GetReturnValue £temporary3768

 malloc_test$17:
	; Assign d £temporary3768
	mov [rbp + 40], rbx

 malloc_test$18:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$19:
	; Call print_heap 48 0
	mov qword [rbp + 48], malloc_test$20
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$20:
	; PostCall 48

 malloc_test$21:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$22:
	; Parameter pointer c 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 malloc_test$23:
	; Parameter signedint 40 80
	mov dword [rbp + 80], 40

 malloc_test$24:
	; Call realloc 48 0
	mov qword [rbp + 48], malloc_test$25
	mov [rbp + 56], rbp
	add rbp, 48
	jmp realloc

 malloc_test$25:
	; PostCall 48

 malloc_test$26:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$27:
	; Call print_heap 48 0
	mov qword [rbp + 48], malloc_test$28
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$28:
	; PostCall 48

 malloc_test$29:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$30:
	; Parameter signedint 40 72
	mov dword [rbp + 72], 40

 malloc_test$31:
	; Call malloc 48 0
	mov qword [rbp + 48], malloc_test$32
	mov [rbp + 56], rbp
	add rbp, 48
	jmp malloc

 malloc_test$32:
	; PostCall 48

 malloc_test$33:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$34:
	; Call print_heap 48 0
	mov qword [rbp + 48], malloc_test$35
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$35:
	; PostCall 48

 malloc_test$36:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$37:
	; Parameter pointer b 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 malloc_test$38:
	; Call free 48 0
	mov qword [rbp + 48], malloc_test$39
	mov [rbp + 56], rbp
	add rbp, 48
	jmp free

 malloc_test$39:
	; PostCall 48

 malloc_test$40:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$41:
	; Call print_heap 48 0
	mov qword [rbp + 48], malloc_test$42
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$42:
	; PostCall 48

 malloc_test$43:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$44:
	; Parameter pointer d 72
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 malloc_test$45:
	; Call free 48 0
	mov qword [rbp + 48], malloc_test$46
	mov [rbp + 56], rbp
	add rbp, 48
	jmp free

 malloc_test$46:
	; PostCall 48

 malloc_test$47:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$48:
	; Call print_heap 48 0
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

string_Index3A2025i2C20Pointer3A2025u2C20Stack20top3A2025u2C20Low20Heap3A2025u0A#:
	; Initializer String Index: %i, Pointer: %u, Stack top: %u, Low Heap: %u\n
	db "Index: %i, Pointer: %u, Stack top: %u, Low Heap: %u", 10, 0

section .text

 malloc_test6:
	; Empty

 malloc_test6$1:
	; InspectRegister £temporary3778 bp

 malloc_test6$2:
	; IntegralToIntegral £temporary3779 £temporary3778
	and ebp, 65535

 malloc_test6$3:
	; Assign stackTop £temporary3779
	mov [rbp + 28], ebp

 malloc_test6$4:
	; Assign lowHeapPtr 65534
	mov qword [rbp + 32], 65534

 malloc_test6$5:
	; Assign i 0
	mov dword [rbp + 24], 0

 malloc_test6$6:
	; SignedGreaterThanEqual 24 i 1000
	cmp dword [rbp + 24], 1000
	jge malloc_test6$24

 malloc_test6$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test6$8:
	; Parameter signedint 96 64
	mov dword [rbp + 64], 96

 malloc_test6$9:
	; Call malloc 40 0
	mov qword [rbp + 40], malloc_test6$10
	mov [rbp + 48], rbp
	add rbp, 40
	jmp malloc

 malloc_test6$10:
	; PostCall 40

 malloc_test6$11:
	; GetReturnValue £temporary3782

 malloc_test6$12:
	; Assign p £temporary3782
	mov [rbp + 40], rbx

 malloc_test6$13:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test6$14:
	; Parameter pointer "Index: %i, Pointer: %u, Stack top: %u, Low Heap: %u\n" 72
	mov qword [rbp + 72], string_Index3A2025i2C20Pointer3A2025u2C20Stack20top3A2025u2C20Low20Heap3A2025u0A#

 malloc_test6$15:
	; Parameter signedint i 80
	mov eax, [rbp + 24]
	mov [rbp + 80], eax

 malloc_test6$16:
	; Parameter pointer p 84
	mov rax, [rbp + 40]
	mov [rbp + 84], rax

 malloc_test6$17:
	; Parameter unsigned int stackTop 92
	mov eax, [rbp + 28]
	mov [rbp + 92], eax

 malloc_test6$18:
	; Dereference £temporary3783 -> lowHeapPtr lowHeapPtr 0
	mov rsi, [rbp + 32]

 malloc_test6$19:
	; Parameter unsigned int £temporary3783 -> lowHeapPtr 96
	mov eax, [rsi]
	mov [rbp + 96], eax

 malloc_test6$20:
	; Call printf 48 20
	mov qword [rbp + 48], malloc_test6$21
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp printf

 malloc_test6$21:
	; PostCall 48

 malloc_test6$22:
	; BinaryAdd i i 1
	inc dword [rbp + 24]

 malloc_test6$23:
	; Goto 6
	jmp malloc_test6$6

 malloc_test6$24:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test6$25:
	; FunctionEnd malloc_test6
