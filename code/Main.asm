	global a
	global main

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
	; Call 24 math_test 0
	mov qword [rbp + 24], main$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test

 main$2:
	; PostCall 24

 main$3:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$4:
	; Call 24 file_test 0
	mov qword [rbp + 24], main$5
	mov [rbp + 32], rbp
	add rbp, 24
	jmp file_test

 main$5:
	; PostCall 24

 main$6:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$7:
	; Call 24 time_test 0
	mov qword [rbp + 24], main$8
	mov [rbp + 32], rbp
	add rbp, 24
	jmp time_test

 main$8:
	; PostCall 24

 main$9:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$10:
	; Call 24 assert_test 0
	mov qword [rbp + 24], main$11
	mov [rbp + 32], rbp
	add rbp, 24
	jmp assert_test

 main$11:
	; PostCall 24

 main$12:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$13:
	; Call 24 malloc_test 0
	mov qword [rbp + 24], main$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp malloc_test

 main$14:
	; PostCall 24

 main$15:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$16:
	; Call 24 print_test 0
	mov qword [rbp + 24], main$17
	mov [rbp + 32], rbp
	add rbp, 24
	jmp print_test

 main$17:
	; PostCall 24

 main$18:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$19:
	; Call 24 limits_test 0
	mov qword [rbp + 24], main$20
	mov [rbp + 32], rbp
	add rbp, 24
	jmp limits_test

 main$20:
	; PostCall 24

 main$21:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$22:
	; Call 24 float_test 0
	mov qword [rbp + 24], main$23
	mov [rbp + 32], rbp
	add rbp, 24
	jmp float_test

 main$23:
	; PostCall 24

 main$24:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$25:
	; Call 24 setjmp_test 0
	mov qword [rbp + 24], main$26
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

 main$26:
	; PostCall 24

 main$27:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$28:
	; Call 24 stdio_test 0
	mov qword [rbp + 24], main$29
	mov [rbp + 32], rbp
	add rbp, 24
	jmp stdio_test

 main$29:
	; PostCall 24

 main$30:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$31:
	; Call 24 string_test 0
	mov qword [rbp + 24], main$32
	mov [rbp + 32], rbp
	add rbp, 24
	jmp string_test

 main$32:
	; PostCall 24

 main$33:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$34:
	; Call 24 stdio_test 0
	mov qword [rbp + 24], main$35
	mov [rbp + 32], rbp
	add rbp, 24
	jmp stdio_test

 main$35:
	; PostCall 24

 main$36:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$37:
	; Call 24 stdlib_test 0
	mov qword [rbp + 24], main$38
	mov [rbp + 32], rbp
	add rbp, 24
	jmp stdlib_test

 main$38:
	; PostCall 24

 main$39:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$40:
	; Call 24 strtol_test 0
	mov qword [rbp + 24], main$41
	mov [rbp + 32], rbp
	add rbp, 24
	jmp strtol_test

 main$41:
	; PostCall 24

 main$42:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$43:
	; Call 24 strtoul_test 0
	mov qword [rbp + 24], main$44
	mov [rbp + 32], rbp
	add rbp, 24
	jmp strtoul_test

 main$44:
	; PostCall 24

 main$45:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$46:
	; Call 24 character_test 0
	mov qword [rbp + 24], main$47
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 main$47:
	; PostCall 24

 main$48:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$49:
	; Call 24 locale_test 0
	mov qword [rbp + 24], main$50
	mov [rbp + 32], rbp
	add rbp, 24
	jmp locale_test

 main$50:
	; PostCall 24

 main$51:
	; Return
	cmp qword [rbp], 0
	je main$52
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main$52:
	; Exit
	mov rdi, 0
	mov rax, 60
	syscall

 main$53:
	; FunctionEnd main

section .data
$StackTop:	times 1048576 db 0
