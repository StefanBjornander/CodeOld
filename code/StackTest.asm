	global stack_test
	global heap_test

	extern printf
	extern malloc
	extern $StackTop


section .data

@8754$i:
	; Initializer SignedInt 0
	dd 0

section .data

string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .text

 stack_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stack_test$1:
	; Parameter pointer "%i " 48
	mov qword [rbp + 48], string_25i20#

 stack_test$2:
	; Assign £temporary4376 i
	mov eax, [@8754$i]

 stack_test$3:
	; BinaryAdd i i 1
	inc dword [@8754$i]

 stack_test$4:
	; Parameter signedint £temporary4376 56
	mov [rbp + 56], eax

 stack_test$5:
	; Call printf 24 4
	mov qword [rbp + 24], stack_test$6
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stack_test$6:
	; PostCall 24

 stack_test$7:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stack_test$8:
	; Call stack_test 24 0
	mov qword [rbp + 24], stack_test$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp stack_test

 stack_test$9:
	; PostCall 24

 stack_test$10:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 stack_test$11:
	; FunctionEnd stack_test

section .data

string_102420bytes2Dblock20number3A2025i0A#:
	; Initializer String 1024 bytes-block number: %i\n
	db "1024 bytes-block number: %i", 10, 0

section .text

 heap_test:
	; Assign count 0
	mov dword [rbp + 24], 0

 heap_test$1:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 heap_test$2:
	; Parameter signedint 1024 60
	mov dword [rbp + 60], 1024

 heap_test$3:
	; Call malloc 36 0
	mov qword [rbp + 36], heap_test$4
	mov [rbp + 44], rbp
	add rbp, 36
	jmp malloc

 heap_test$4:
	; PostCall 36

 heap_test$5:
	; GetReturnValue £temporary4379

 heap_test$6:
	; Assign pointer £temporary4379
	mov [rbp + 28], rbx

 heap_test$7:
	; Equal 17 pointer 0
	cmp qword [rbp + 28], 0
	je heap_test$17

 heap_test$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 heap_test$9:
	; Parameter pointer "1024 bytes-block number: %i\n" 60
	mov qword [rbp + 60], string_102420bytes2Dblock20number3A2025i0A#

 heap_test$10:
	; Assign £temporary4381 count
	mov eax, [rbp + 24]

 heap_test$11:
	; BinaryAdd count count 1
	inc dword [rbp + 24]

 heap_test$12:
	; Parameter signedint £temporary4381 68
	mov [rbp + 68], eax

 heap_test$13:
	; Parameter pointer pointer 72
	mov rax, [rbp + 28]
	mov [rbp + 72], rax

 heap_test$14:
	; Call printf 36 12
	mov qword [rbp + 36], heap_test$15
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

 heap_test$15:
	; PostCall 36

 heap_test$16:
	; Goto 1
	jmp heap_test$1

 heap_test$17:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 heap_test$18:
	; FunctionEnd heap_test
