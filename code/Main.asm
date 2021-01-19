	global a
	global mainX
	global main
	global mainXXX

	extern printf
	extern temp_file
	extern math_test
	extern file_test
	extern time_test
	extern assert_test
	extern malloc_test
	extern print_test
	extern limits_test
	extern float_test
	extern setjmp_test
	extern stdio_test
	extern string_test
	extern stdlib_test
	extern strtol_test
	extern strtoul_test
	extern character_test
	extern locale_test
	global _start
	global $StackTop


section .data

a:
	; InitializerZero 16
	times 16 db 0

section .data

@314$count:
	; Initializer SignedInt 1
	dd 1

section .data

@317$string_25d20#:
	; Initializer String %d 
	db "%d ", 0

section .text

 mainX:
	; GreaterThan 11 count 10
	cmp dword [@314$count], 10
	jg mainX$11

 mainX$1:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$2:
	; Parameter 48 pointer "%d "
	mov qword [rbp + 48], @317$string_25d20#

 mainX$3:
	; Assign £temporary1 count
	mov eax, [@314$count]

 mainX$4:
	; BinaryAdd count count 1
	inc dword [@314$count]

 mainX$5:
	; Parameter 56 signedint £temporary1
	mov [rbp + 56], eax

 mainX$6:
	; Call 24 printf 4
	mov qword [rbp + 24], mainX$7
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 mainX$7:
	; PostCall 24

 mainX$8:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$9:
	; Call 24 mainX 0
	mov qword [rbp + 24], mainX$10
	mov [rbp + 32], rbp
	add rbp, 24
	jmp mainX

 mainX$10:
	; PostCall 24

 mainX$11:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainX$12:
	; FunctionEnd mainX

section .text

 _start:
	; Initializerialize Stack Pointer
	mov rbp, $StackTop
	; Initializerialize Heap Pointer
	mov dword [$StackTop + 65534], $StackTop
	add dword [$StackTop + 65534], 65534
	; Initializerialize FPU Control Word, truncate mode => set bit 10 and 11.
	fstcw [rbp]
	or word [rbp], 3072
	fldcw [rbp]
	mov qword [$StackTop], 0

 main:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$1:
	; Call 24 temp_file 0
	mov qword [rbp + 24], main$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp temp_file

 main$2:
	; PostCall 24

 main$3:
	; Return
	cmp qword [rbp], 0
	je main$4
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main$4:
	; Exit
	mov rdi, 0
	mov rax, 60
	syscall

 main$5:
	; FunctionEnd main

section .text

 mainXXX:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$1:
	; Call 24 math_test 0
	mov qword [rbp + 24], mainXXX$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test

 mainXXX$2:
	; PostCall 24

 mainXXX$3:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$4:
	; Call 24 file_test 0
	mov qword [rbp + 24], mainXXX$5
	mov [rbp + 32], rbp
	add rbp, 24
	jmp file_test

 mainXXX$5:
	; PostCall 24

 mainXXX$6:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$7:
	; Call 24 time_test 0
	mov qword [rbp + 24], mainXXX$8
	mov [rbp + 32], rbp
	add rbp, 24
	jmp time_test

 mainXXX$8:
	; PostCall 24

 mainXXX$9:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$10:
	; Call 24 assert_test 0
	mov qword [rbp + 24], mainXXX$11
	mov [rbp + 32], rbp
	add rbp, 24
	jmp assert_test

 mainXXX$11:
	; PostCall 24

 mainXXX$12:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$13:
	; Call 24 malloc_test 0
	mov qword [rbp + 24], mainXXX$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp malloc_test

 mainXXX$14:
	; PostCall 24

 mainXXX$15:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$16:
	; Call 24 print_test 0
	mov qword [rbp + 24], mainXXX$17
	mov [rbp + 32], rbp
	add rbp, 24
	jmp print_test

 mainXXX$17:
	; PostCall 24

 mainXXX$18:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$19:
	; Call 24 limits_test 0
	mov qword [rbp + 24], mainXXX$20
	mov [rbp + 32], rbp
	add rbp, 24
	jmp limits_test

 mainXXX$20:
	; PostCall 24

 mainXXX$21:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$22:
	; Call 24 float_test 0
	mov qword [rbp + 24], mainXXX$23
	mov [rbp + 32], rbp
	add rbp, 24
	jmp float_test

 mainXXX$23:
	; PostCall 24

 mainXXX$24:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$25:
	; Call 24 setjmp_test 0
	mov qword [rbp + 24], mainXXX$26
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

 mainXXX$26:
	; PostCall 24

 mainXXX$27:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$28:
	; Call 24 stdio_test 0
	mov qword [rbp + 24], mainXXX$29
	mov [rbp + 32], rbp
	add rbp, 24
	jmp stdio_test

 mainXXX$29:
	; PostCall 24

 mainXXX$30:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$31:
	; Call 24 string_test 0
	mov qword [rbp + 24], mainXXX$32
	mov [rbp + 32], rbp
	add rbp, 24
	jmp string_test

 mainXXX$32:
	; PostCall 24

 mainXXX$33:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$34:
	; Call 24 stdio_test 0
	mov qword [rbp + 24], mainXXX$35
	mov [rbp + 32], rbp
	add rbp, 24
	jmp stdio_test

 mainXXX$35:
	; PostCall 24

 mainXXX$36:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$37:
	; Call 24 stdlib_test 0
	mov qword [rbp + 24], mainXXX$38
	mov [rbp + 32], rbp
	add rbp, 24
	jmp stdlib_test

 mainXXX$38:
	; PostCall 24

 mainXXX$39:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$40:
	; Call 24 strtol_test 0
	mov qword [rbp + 24], mainXXX$41
	mov [rbp + 32], rbp
	add rbp, 24
	jmp strtol_test

 mainXXX$41:
	; PostCall 24

 mainXXX$42:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$43:
	; Call 24 strtoul_test 0
	mov qword [rbp + 24], mainXXX$44
	mov [rbp + 32], rbp
	add rbp, 24
	jmp strtoul_test

 mainXXX$44:
	; PostCall 24

 mainXXX$45:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$46:
	; Call 24 character_test 0
	mov qword [rbp + 24], mainXXX$47
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 mainXXX$47:
	; PostCall 24

 mainXXX$48:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainXXX$49:
	; Call 24 locale_test 0
	mov qword [rbp + 24], mainXXX$50
	mov [rbp + 32], rbp
	add rbp, 24
	jmp locale_test

 mainXXX$50:
	; PostCall 24

 mainXXX$51:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainXXX$52:
	; FunctionEnd mainXXX

section .data
$StackTop:	times 1048576 db 0
