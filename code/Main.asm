	global a
	global main2
	global main33
	global main34
	global mainc
	global maini
	global mains
	global maint
	global mainY
	global mainX
	global main
	global mainX2
	global main3
	global mains2
	global char_main
	global assert_test
	global assert_test2

	extern file_test
	extern printf
	extern stdout
	extern g_outDevice
	extern printChar
	extern scanf
	extern limits_test
	extern time_test
	extern malloc_test
	extern setjmp_test
	extern main_math
	extern mktime
	extern character_test
	extern stderr
	extern fprintf
	extern abort
	global _start
	global $StackTop


section .text

 @334$malloc:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @334$malloc$1:
	; FunctionEnd malloc

section .data

a:
	; InitializerZero 16
	times 16 db 0

section .data

string_test12Etxt#:
	; Initializer String test1.txt
	db "test1.txt", 0

section .data

string_test22Etxt#:
	; Initializer String test2.txt
	db "test2.txt", 0

section .text

 main2:
	; Empty

 main2$1:
	; Assign a.p 0
	mov qword [a], 0

 main2$2:
	; Assign a.q 0
	mov qword [a + 8], 0

 main2$3:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main2$4:
	; Parameter pointer "test1.txt" 48
	mov qword [rbp + 48], string_test12Etxt#

 main2$5:
	; Parameter pointer "test2.txt" 56
	mov qword [rbp + 56], string_test22Etxt#

 main2$6:
	; Call file_test 24 0
	mov qword [rbp + 24], main2$7
	mov [rbp + 32], rbp
	add rbp, 24
	jmp file_test

 main2$7:
	; PostCall 24

 main2$8:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main2$9:
	; FunctionEnd main2

section .data

string_Hello#:
	; Initializer String Hello
	db "Hello", 0

section .data

string_World#:
	; Initializer String World
	db "World", 0

section .data

string_3C25s3E203C25s3E0A#:
	; Initializer String <%s> <%s>\n
	db "<%s> <%s>", 10, 0

section .text

 main33:
	; Assign s[0] 72
	mov byte [rbp + 24], 72

 main33$1:
	; Assign s[1] 101
	mov byte [rbp + 25], 101

 main33$2:
	; Assign s[2] 108
	mov byte [rbp + 26], 108

 main33$3:
	; Assign s[3] 108
	mov byte [rbp + 27], 108

 main33$4:
	; Assign s[4] 111
	mov byte [rbp + 28], 111

 main33$5:
	; Assign s[5] 48
	mov byte [rbp + 29], 48

 main33$6:
	; Assign t[0] 87
	mov byte [rbp + 44], 87

 main33$7:
	; Assign t[1] 111
	mov byte [rbp + 45], 111

 main33$8:
	; Assign t[2] 114
	mov byte [rbp + 46], 114

 main33$9:
	; Assign t[3] 108
	mov byte [rbp + 47], 108

 main33$10:
	; Assign t[4] 100
	mov byte [rbp + 48], 100

 main33$11:
	; Assign t[5] 48
	mov byte [rbp + 49], 48

 main33$12:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main33$13:
	; Parameter pointer "<%s> <%s>\n" 88
	mov qword [rbp + 88], string_3C25s3E203C25s3E0A#

 main33$14:
	; Parameter pointer s 96
	mov [rbp + 96], rbp
	add qword [rbp + 96], 24

 main33$15:
	; Parameter pointer t 104
	mov [rbp + 104], rbp
	add qword [rbp + 104], 44

 main33$16:
	; Call printf 64 16
	mov qword [rbp + 64], main33$17
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	add rdi, 16
	jmp printf

 main33$17:
	; PostCall 64

 main33$18:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main33$19:
	; FunctionEnd main33

section .text

 main34:
	; Assign g_outDevice stdout
	mov rax, [stdout]
	mov [g_outDevice], rax

 main34$1:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main34$2:
	; Parameter signedchar 88 48
	mov byte [rbp + 48], 88

 main34$3:
	; Call printChar 24 0
	mov qword [rbp + 24], main34$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp printChar

 main34$4:
	; PostCall 24

 main34$5:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main34$6:
	; Parameter signedchar 10 48
	mov byte [rbp + 48], 10

 main34$7:
	; Call printChar 24 0
	mov qword [rbp + 24], main34$8
	mov [rbp + 32], rbp
	add rbp, 24
	jmp printChar

 main34$8:
	; PostCall 24

 main34$9:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main34$10:
	; FunctionEnd main34

section .data

string_Please20write20a20character3A20#:
	; Initializer String Please write a character: 
	db "Please write a character: ", 0

section .data

string_25c#:
	; Initializer String %c
	db "%c", 0

section .data

string_You20wrote20the20character202725c272E0A#:
	; Initializer String You wrote the character '%c'.\n
	db "You wrote the character ", 39, "%c", 39, ".", 10, 0

section .text

 mainc:
	; Empty

 mainc$1:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainc$2:
	; Parameter pointer "Please write a character: " 49
	mov qword [rbp + 49], string_Please20write20a20character3A20#

 mainc$3:
	; Call printf 25 0
	mov qword [rbp + 25], mainc$4
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	jmp printf

 mainc$4:
	; PostCall 25

 mainc$5:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainc$6:
	; Parameter pointer "%c" 49
	mov qword [rbp + 49], string_25c#

 mainc$7:
	; Address £temporary19 c
	mov rsi, rbp
	add rsi, 24

 mainc$8:
	; Parameter pointer £temporary19 57
	mov [rbp + 57], rsi

 mainc$9:
	; Call scanf 25 8
	mov qword [rbp + 25], mainc$10
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 mainc$10:
	; PostCall 25

 mainc$11:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainc$12:
	; Parameter pointer "You wrote the character '%c'.\n" 49
	mov qword [rbp + 49], string_You20wrote20the20character202725c272E0A#

 mainc$13:
	; IntegralToIntegral £temporary21 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge mainc$14
	neg al
	neg eax

 mainc$14:
	; Parameter signedint £temporary21 57
	mov [rbp + 57], eax

 mainc$15:
	; Call printf 25 4
	mov qword [rbp + 25], mainc$16
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 4
	jmp printf

 mainc$16:
	; PostCall 25

 mainc$17:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainc$18:
	; FunctionEnd mainc

section .data

string_Please20write20an20integer3A20#:
	; Initializer String Please write an integer: 
	db "Please write an integer: ", 0

section .data

string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

string_You20wrote20the20integer2025i2E0A#:
	; Initializer String You wrote the integer %i.\n
	db "You wrote the integer %i.", 10, 0

section .text

 maini:
	; Empty

 maini$1:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 maini$2:
	; Parameter pointer "Please write an integer: " 52
	mov qword [rbp + 52], string_Please20write20an20integer3A20#

 maini$3:
	; Call printf 28 0
	mov qword [rbp + 28], maini$4
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	jmp printf

 maini$4:
	; PostCall 28

 maini$5:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 maini$6:
	; Parameter pointer "%i" 52
	mov qword [rbp + 52], string_25i#

 maini$7:
	; Address £temporary25 i
	mov rsi, rbp
	add rsi, 24

 maini$8:
	; Parameter pointer £temporary25 60
	mov [rbp + 60], rsi

 maini$9:
	; Call scanf 28 8
	mov qword [rbp + 28], maini$10
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 maini$10:
	; PostCall 28

 maini$11:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 maini$12:
	; Parameter pointer "You wrote the integer %i.\n" 52
	mov qword [rbp + 52], string_You20wrote20the20integer2025i2E0A#

 maini$13:
	; Parameter signedint i 60
	mov eax, [rbp + 24]
	mov [rbp + 60], eax

 maini$14:
	; Call printf 28 4
	mov qword [rbp + 28], maini$15
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 4
	jmp printf

 maini$15:
	; PostCall 28

 maini$16:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 maini$17:
	; FunctionEnd maini

section .data

string_Please20write20a20string3A20#:
	; Initializer String Please write a string: 
	db "Please write a string: ", 0

section .data

string_25s#:
	; Initializer String %s
	db "%s", 0

section .data

string_You20wrote20the20string202225s222E0A#:
	; Initializer String You wrote the string "%s".\n
	db "You wrote the string ", 34, "%s", 34, ".", 10, 0

section .text

 mains:
	; Empty

 mains$1:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains$2:
	; Parameter pointer "Please write a string: " 68
	mov qword [rbp + 68], string_Please20write20a20string3A20#

 mains$3:
	; Call printf 44 0
	mov qword [rbp + 44], mains$4
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	jmp printf

 mains$4:
	; PostCall 44

 mains$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains$6:
	; Parameter pointer "%s" 68
	mov qword [rbp + 68], string_25s#

 mains$7:
	; Parameter pointer s 76
	mov [rbp + 76], rbp
	add qword [rbp + 76], 24

 mains$8:
	; Call scanf 44 8
	mov qword [rbp + 44], mains$9
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 mains$9:
	; PostCall 44

 mains$10:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains$11:
	; Parameter pointer "You wrote the string "%s".\n" 68
	mov qword [rbp + 68], string_You20wrote20the20string202225s222E0A#

 mains$12:
	; Parameter pointer s 76
	mov [rbp + 76], rbp
	add qword [rbp + 76], 24

 mains$13:
	; Call printf 44 8
	mov qword [rbp + 44], mains$14
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 8
	jmp printf

 mains$14:
	; PostCall 44

 mains$15:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mains$16:
	; FunctionEnd mains

section .text

 maint:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 maint$1:
	; Call limits_test 24 0
	mov qword [rbp + 24], maint$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp limits_test

 maint$2:
	; PostCall 24

 maint$3:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 maint$4:
	; Call time_test 24 0
	mov qword [rbp + 24], maint$5
	mov [rbp + 32], rbp
	add rbp, 24
	jmp time_test

 maint$5:
	; PostCall 24

 maint$6:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 maint$7:
	; FunctionEnd maint

section .data

float8$10#:
	; Initializer Double 10
	dq 10.0

section .text

 mainY:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainY$1:
	; Call malloc_test 24 0
	mov qword [rbp + 24], mainY$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp malloc_test

 mainY$2:
	; PostCall 24

 mainY$3:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainY$4:
	; PushFloat 10
	fld qword [float8$10#]

 mainY$5:
	; Parameter double 10 48
	fstp qword [rbp + 48]

 mainY$6:
	; Call setjmp_test 24 0
	mov qword [rbp + 24], mainY$7
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

 mainY$7:
	; PostCall 24

 mainY$8:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainY$9:
	; PushFloat 0
	fldz

 mainY$10:
	; Parameter double 0 48
	fstp qword [rbp + 48]

 mainY$11:
	; Call setjmp_test 24 0
	mov qword [rbp + 24], mainY$12
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

 mainY$12:
	; PostCall 24

 mainY$13:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainY$14:
	; FunctionEnd mainY

section .data

string_25i3A2025i203C25c3E0A#:
	; Initializer String %i: %i <%c>\n
	db "%i: %i <%c>", 10, 0

section .data

string_0Aargc3A2025i0A#:
	; Initializer String \nargc: %i\n
	db 10, "argc: %i", 10, 0

section .data

string_25i3A203C25s3E0A#:
	; Initializer String %i: <%s>\n
	db "%i: <%s>", 10, 0

section .data

string_0A#:
	; Initializer String \n
	db 10, 0

section .data

int8$8#:
	; Initializer Pointer 8
	dq 8

section .text

 mainX:
	; Empty

 mainX$1:
	; Assign index 129
	mov dword [rbp + 36], 129

 mainX$2:
	; SignedGreaterThanEqual 17 index 255
	cmp dword [rbp + 36], 255
	jge mainX$17

 mainX$3:
	; IntegralToIntegral £temporary41 index
	mov esi, [rbp + 36]
	mov rax, 4294967295
	and rsi, rax

 mainX$4:
	; Dereference £temporary42 -> £temporary41 £temporary41 0

 mainX$5:
	; Assign c £temporary42 -> £temporary41
	mov al, [rsi]
	mov [rbp + 40], al

 mainX$6:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$7:
	; Parameter pointer "%i: %i <%c>\n" 65
	mov qword [rbp + 65], string_25i3A2025i203C25c3E0A#

 mainX$8:
	; Parameter signedint index 73
	mov eax, [rbp + 36]
	mov [rbp + 73], eax

 mainX$9:
	; IntegralToIntegral £temporary43 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge mainX$10
	neg al
	neg eax

 mainX$10:
	; Parameter signedint £temporary43 77
	mov [rbp + 77], eax

 mainX$11:
	; IntegralToIntegral £temporary44 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge mainX$12
	neg al
	neg eax

 mainX$12:
	; Parameter signedint £temporary44 81
	mov [rbp + 81], eax

 mainX$13:
	; Call printf 41 12
	mov qword [rbp + 41], mainX$14
	mov [rbp + 49], rbp
	add rbp, 41
	mov rdi, rbp
	add rdi, 12
	jmp printf

 mainX$14:
	; PostCall 41

 mainX$15:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 mainX$16:
	; Goto 2
	jmp mainX$2

 mainX$17:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$18:
	; Parameter pointer "\nargc: %i\n" 64
	mov qword [rbp + 64], string_0Aargc3A2025i0A#

 mainX$19:
	; Parameter signedint argc 72
	mov eax, [rbp + 24]
	mov [rbp + 72], eax

 mainX$20:
	; Call printf 40 4
	mov qword [rbp + 40], mainX$21
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 4
	jmp printf

 mainX$21:
	; PostCall 40

 mainX$22:
	; Assign index 0
	mov dword [rbp + 36], 0

 mainX$23:
	; SignedGreaterThanEqual 36 index argc
	mov eax, [rbp + 24]
	cmp [rbp + 36], eax
	jge mainX$36

 mainX$24:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$25:
	; Parameter pointer "%i: <%s>\n" 64
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX$26:
	; Parameter signedint index 72
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX$27:
	; IntegralToIntegral £temporary50 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX$28:
	; UnsignedMultiply £temporary51 £temporary50 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX$29:
	; BinaryAdd £temporary52 argv £temporary51
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX$30:
	; Dereference £temporary49 -> £temporary52 £temporary52 0

 mainX$31:
	; Parameter pointer £temporary49 -> £temporary52 76
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX$32:
	; Call printf 40 12
	mov qword [rbp + 40], mainX$33
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

 mainX$33:
	; PostCall 40

 mainX$34:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 mainX$35:
	; Goto 23
	jmp mainX$23

 mainX$36:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$37:
	; Parameter pointer "\n" 64
	mov qword [rbp + 64], string_0A#

 mainX$38:
	; Call printf 40 0
	mov qword [rbp + 40], mainX$39
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 mainX$39:
	; PostCall 40

 mainX$40:
	; Assign index 0
	mov dword [rbp + 36], 0

 mainX$41:
	; IntegralToIntegral £temporary56 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX$42:
	; UnsignedMultiply £temporary57 £temporary56 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX$43:
	; BinaryAdd £temporary58 argv £temporary57
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX$44:
	; Dereference £temporary55 -> £temporary58 £temporary58 0

 mainX$45:
	; Equal 58 £temporary55 -> £temporary58 0
	cmp qword [rsi], 0
	je mainX$58

 mainX$46:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$47:
	; Parameter pointer "%i: <%s>\n" 64
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX$48:
	; Parameter signedint index 72
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX$49:
	; IntegralToIntegral £temporary62 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX$50:
	; UnsignedMultiply £temporary63 £temporary62 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX$51:
	; BinaryAdd £temporary64 argv £temporary63
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX$52:
	; Dereference £temporary61 -> £temporary64 £temporary64 0

 mainX$53:
	; Parameter pointer £temporary61 -> £temporary64 76
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX$54:
	; Call printf 40 12
	mov qword [rbp + 40], mainX$55
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

 mainX$55:
	; PostCall 40

 mainX$56:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 mainX$57:
	; Goto 41
	jmp mainX$41

 mainX$58:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainX$59:
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
	; Initialize Command Line Arguments
	pop rbx
	mov rax, rbx
	mov rdx, rbp

 $args$loop:
	cmp rbx, 0
	je $args$exit
	pop rsi
	mov [rbp], rsi
	add rbp, 8
	dec rbx
	jmp $args$loop

 $args$exit:
	mov qword [rbp], 0
	add rbp, 8
	mov qword [rbp], 0
	mov [rbp + 24], eax
	mov [rbp + 28], rdx

 main:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$1:
	; Call main_math 36 0
	mov qword [rbp + 36], main$2
	mov [rbp + 44], rbp
	add rbp, 36
	jmp main_math

 main$2:
	; PostCall 36

 main$3:
	; Return
	cmp qword [rbp], 0
	je label$0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 label$0:
	mov rdi, 0
	mov rax, 60
	syscall

 main$4:
	; FunctionEnd main

section .data

@418$ZERO:
	; Initializer SignedInt 0
	dd 0

section .data

@419$ONE:
	; Initializer SignedInt 1
	dd 1

section .data

@422$TWO:
	; Initializer SignedInt 2
	dd 2

section .data

@423$THREE:
	; Initializer SignedInt 3
	dd 3

section .data

string_argc3A2025i0A#:
	; Initializer String argc: %i\n
	db "argc: %i", 10, 0

section .data

string_Hello210A#:
	; Initializer String Hello!\n
	db "Hello!", 10, 0

section .data

string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#:
	; Initializer String Please write a character, a string, an integer, and a double: 
	db "Please write a character, a string, an integer, and a double: ", 0

section .data

string_25c2025s2025i2025lf#:
	; Initializer String %c %s %i %lf
	db "%c %s %i %lf", 0

section .data

string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#:
	; Initializer String You wrote the character '%c', the string "%s", the integer %i, and the double %f.\n
	db "You wrote the character ", 39, "%c", 39, ", the string ", 34, "%s", 34, ", the integer %i, and the double %f.", 10, 0

section .text

 mainX2:
	; Empty

 mainX2$1:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX2$2:
	; Parameter pointer "argc: %i\n" 60
	mov qword [rbp + 60], string_argc3A2025i0A#

 mainX2$3:
	; Parameter signedint argc 68
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 mainX2$4:
	; Call printf 36 4
	mov qword [rbp + 36], mainX2$5
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 4
	jmp printf

 mainX2$5:
	; PostCall 36

 mainX2$6:
	; Assign index 0
	mov dword [rbp + 36], 0

 mainX2$7:
	; SignedGreaterThanEqual 20 index argc
	mov eax, [rbp + 24]
	cmp [rbp + 36], eax
	jge mainX2$20

 mainX2$8:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX2$9:
	; Parameter pointer "%i: <%s>\n" 64
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX2$10:
	; Parameter signedint index 72
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX2$11:
	; IntegralToIntegral £temporary71 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX2$12:
	; UnsignedMultiply £temporary72 £temporary71 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX2$13:
	; BinaryAdd £temporary73 argv £temporary72
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX2$14:
	; Dereference £temporary70 -> £temporary73 £temporary73 0

 mainX2$15:
	; Parameter pointer £temporary70 -> £temporary73 76
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX2$16:
	; Call printf 40 12
	mov qword [rbp + 40], mainX2$17
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

 mainX2$17:
	; PostCall 40

 mainX2$18:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 mainX2$19:
	; Goto 7
	jmp mainX2$7

 mainX2$20:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX2$21:
	; Parameter pointer "\n" 64
	mov qword [rbp + 64], string_0A#

 mainX2$22:
	; Call printf 40 0
	mov qword [rbp + 40], mainX2$23
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 mainX2$23:
	; PostCall 40

 mainX2$24:
	; Assign index 0
	mov dword [rbp + 36], 0

 mainX2$25:
	; IntegralToIntegral £temporary77 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX2$26:
	; UnsignedMultiply £temporary78 £temporary77 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX2$27:
	; BinaryAdd £temporary79 argv £temporary78
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX2$28:
	; Dereference £temporary76 -> £temporary79 £temporary79 0

 mainX2$29:
	; Equal 42 £temporary76 -> £temporary79 0
	cmp qword [rsi], 0
	je mainX2$42

 mainX2$30:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX2$31:
	; Parameter pointer "%i: <%s>\n" 64
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX2$32:
	; Parameter signedint index 72
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX2$33:
	; IntegralToIntegral £temporary83 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX2$34:
	; UnsignedMultiply £temporary84 £temporary83 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX2$35:
	; BinaryAdd £temporary85 argv £temporary84
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX2$36:
	; Dereference £temporary82 -> £temporary85 £temporary85 0

 mainX2$37:
	; Parameter pointer £temporary82 -> £temporary85 76
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX2$38:
	; Call printf 40 12
	mov qword [rbp + 40], mainX2$39
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

 mainX2$39:
	; PostCall 40

 mainX2$40:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 mainX2$41:
	; Goto 25
	jmp mainX2$25

 mainX2$42:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX2$43:
	; Parameter pointer "\n" 64
	mov qword [rbp + 64], string_0A#

 mainX2$44:
	; Call printf 40 0
	mov qword [rbp + 40], mainX2$45
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 mainX2$45:
	; PostCall 40

 mainX2$46:
	; PreCall 73 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX2$47:
	; Parameter pointer 0 97
	mov qword [rbp + 97], 0

 mainX2$48:
	; Call mktime 73 0
	mov qword [rbp + 73], mainX2$49
	mov [rbp + 81], rbp
	add rbp, 73
	jmp mktime

 mainX2$49:
	; PostCall 73

 mainX2$50:
	; PreCall 73 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX2$51:
	; Parameter pointer "Hello!\n" 97
	mov qword [rbp + 97], string_Hello210A#

 mainX2$52:
	; Call printf 73 0
	mov qword [rbp + 73], mainX2$53
	mov [rbp + 81], rbp
	add rbp, 73
	mov rdi, rbp
	jmp printf

 mainX2$53:
	; PostCall 73

 mainX2$54:
	; PreCall 73 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX2$55:
	; Parameter pointer "Please write a character, a string, an integer, and a double: " 97
	mov qword [rbp + 97], string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#

 mainX2$56:
	; Call printf 73 0
	mov qword [rbp + 73], mainX2$57
	mov [rbp + 81], rbp
	add rbp, 73
	mov rdi, rbp
	jmp printf

 mainX2$57:
	; PostCall 73

 mainX2$58:
	; PreCall 73 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX2$59:
	; Parameter pointer "%c %s %i %lf" 97
	mov qword [rbp + 97], string_25c2025s2025i2025lf#

 mainX2$60:
	; Address £temporary91 c
	mov rsi, rbp
	add rsi, 52

 mainX2$61:
	; Parameter pointer £temporary91 105
	mov [rbp + 105], rsi

 mainX2$62:
	; Parameter pointer s 113
	mov [rbp + 113], rbp
	add qword [rbp + 113], 53

 mainX2$63:
	; Address £temporary92 i
	mov rsi, rbp
	add rsi, 40

 mainX2$64:
	; Parameter pointer £temporary92 121
	mov [rbp + 121], rsi

 mainX2$65:
	; Address £temporary93 d
	mov rsi, rbp
	add rsi, 44

 mainX2$66:
	; Parameter pointer £temporary93 129
	mov [rbp + 129], rsi

 mainX2$67:
	; Call scanf 73 32
	mov qword [rbp + 73], mainX2$68
	mov [rbp + 81], rbp
	add rbp, 73
	mov rdi, rbp
	add rdi, 32
	jmp scanf

 mainX2$68:
	; PostCall 73

 mainX2$69:
	; PreCall 73 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX2$70:
	; Parameter pointer "You wrote the character '%c', the string "%s", the integer %i, and the double %f.\n" 97
	mov qword [rbp + 97], string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#

 mainX2$71:
	; IntegralToIntegral £temporary95 c
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge mainX2$72
	neg al
	neg eax

 mainX2$72:
	; Parameter signedint £temporary95 105
	mov [rbp + 105], eax

 mainX2$73:
	; Parameter pointer s 109
	mov [rbp + 109], rbp
	add qword [rbp + 109], 53

 mainX2$74:
	; Parameter signedint i 117
	mov eax, [rbp + 40]
	mov [rbp + 117], eax

 mainX2$75:
	; PushFloat d
	fld qword [rbp + 44]

 mainX2$76:
	; Parameter double d 121
	fstp qword [rbp + 121]

 mainX2$77:
	; Call printf 73 24
	mov qword [rbp + 73], mainX2$78
	mov [rbp + 81], rbp
	add rbp, 73
	mov rdi, rbp
	add rdi, 24
	jmp printf

 mainX2$78:
	; PostCall 73

 mainX2$79:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainX2$80:
	; FunctionEnd mainX2

section .data

string_3A20#:
	; Initializer String : 
	db ": ", 0

section .data

string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

string_3C25f3E#:
	; Initializer String <%f>
	db "<%f>", 0

section .text

 main3:
	; Empty

 main3$1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main3$2:
	; Parameter pointer ": " 56
	mov qword [rbp + 56], string_3A20#

 main3$3:
	; Call printf 32 0
	mov qword [rbp + 32], main3$4
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 main3$4:
	; PostCall 32

 main3$5:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main3$6:
	; Parameter pointer "%lf" 56
	mov qword [rbp + 56], string_25lf#

 main3$7:
	; Address £temporary102 x
	mov rsi, rbp
	add rsi, 24

 main3$8:
	; Parameter pointer £temporary102 64
	mov [rbp + 64], rsi

 main3$9:
	; Call scanf 32 8
	mov qword [rbp + 32], main3$10
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 main3$10:
	; PostCall 32

 main3$11:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main3$12:
	; Parameter pointer "<%f>" 56
	mov qword [rbp + 56], string_3C25f3E#

 main3$13:
	; PushFloat x
	fld qword [rbp + 24]

 main3$14:
	; Parameter double x 64
	fstp qword [rbp + 64]

 main3$15:
	; Call printf 32 8
	mov qword [rbp + 32], main3$16
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 main3$16:
	; PostCall 32

 main3$17:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main3$18:
	; FunctionEnd main3

section .data

string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#:
	; Initializer String ---------------------------------------------\n
	db "---------------------------------------------", 10, 0

section .data

float8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .data

float8$2.71#:
	; Initializer Double 2.71
	dq 2.71

section .text

 mains2:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains2$1:
	; PushFloat 3.14
	fld qword [float8$3.14#]

 mains2$2:
	; Parameter double 3.14 48
	fstp qword [rbp + 48]

 mains2$3:
	; Call setjmp_test 24 0
	mov qword [rbp + 24], mains2$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

 mains2$4:
	; PostCall 24

 mains2$5:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains2$6:
	; Parameter pointer "---------------------------------------------\n" 48
	mov qword [rbp + 48], string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#

 mains2$7:
	; Call printf 24 0
	mov qword [rbp + 24], mains2$8
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 mains2$8:
	; PostCall 24

 mains2$9:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains2$10:
	; PushFloat 0
	fldz

 mains2$11:
	; Parameter double 0 48
	fstp qword [rbp + 48]

 mains2$12:
	; Call setjmp_test 24 0
	mov qword [rbp + 24], mains2$13
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

 mains2$13:
	; PostCall 24

 mains2$14:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains2$15:
	; Parameter pointer "---------------------------------------------\n" 48
	mov qword [rbp + 48], string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#

 mains2$16:
	; Call printf 24 0
	mov qword [rbp + 24], mains2$17
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 mains2$17:
	; PostCall 24

 mains2$18:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains2$19:
	; PushFloat 2.71
	fld qword [float8$2.71#]

 mains2$20:
	; Parameter double 2.71 48
	fstp qword [rbp + 48]

 mains2$21:
	; Call setjmp_test 24 0
	mov qword [rbp + 24], mains2$22
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

 mains2$22:
	; PostCall 24

 mains2$23:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains2$24:
	; Parameter pointer "---------------------------------------------\n" 48
	mov qword [rbp + 48], string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#

 mains2$25:
	; Call printf 24 0
	mov qword [rbp + 24], mains2$26
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 mains2$26:
	; PostCall 24

 mains2$27:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains2$28:
	; PushFloat 0
	fldz

 mains2$29:
	; Parameter double 0 48
	fstp qword [rbp + 48]

 mains2$30:
	; Call setjmp_test 24 0
	mov qword [rbp + 24], mains2$31
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

 mains2$31:
	; PostCall 24

 mains2$32:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mains2$33:
	; FunctionEnd mains2

section .text

 char_main:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$1:
	; Parameter signedchar 97 48
	mov byte [rbp + 48], 97

 char_main$2:
	; Call character_test 24 0
	mov qword [rbp + 24], char_main$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$3:
	; PostCall 24

 char_main$4:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$5:
	; Parameter signedchar 66 48
	mov byte [rbp + 48], 66

 char_main$6:
	; Call character_test 24 0
	mov qword [rbp + 24], char_main$7
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$7:
	; PostCall 24

 char_main$8:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$9:
	; Parameter signedchar 49 48
	mov byte [rbp + 48], 49

 char_main$10:
	; Call character_test 24 0
	mov qword [rbp + 24], char_main$11
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$11:
	; PostCall 24

 char_main$12:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$13:
	; Parameter signedchar 46 48
	mov byte [rbp + 48], 46

 char_main$14:
	; Call character_test 24 0
	mov qword [rbp + 24], char_main$15
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$15:
	; PostCall 24

 char_main$16:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$17:
	; Parameter signedchar 10 48
	mov byte [rbp + 48], 10

 char_main$18:
	; Call character_test 24 0
	mov qword [rbp + 24], char_main$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$19:
	; PostCall 24

 char_main$20:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$21:
	; Parameter signedchar 102 48
	mov byte [rbp + 48], 102

 char_main$22:
	; Call character_test 24 0
	mov qword [rbp + 24], char_main$23
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$23:
	; PostCall 24

 char_main$24:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$25:
	; Parameter signedchar 103 48
	mov byte [rbp + 48], 103

 char_main$26:
	; Call character_test 24 0
	mov qword [rbp + 24], char_main$27
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$27:
	; PostCall 24

 char_main$28:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 char_main$29:
	; FunctionEnd char_main

section .data

string_Please20write20a20number2028not20620or207293A20#:
	; Initializer String Please write a number (not 6 or 7): 
	db "Please write a number (not 6 or 7): ", 0

section .data

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

string_n20213D206#:
	; Initializer String n != 6
	db "n != 6", 0

section .data

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c", 0

section .text

 assert_test:
	; Assign n 0
	mov dword [rbp + 24], 0

 assert_test$1:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test$2:
	; Parameter pointer "Please write a number (not 6 or 7): " 52
	mov qword [rbp + 52], string_Please20write20a20number2028not20620or207293A20#

 assert_test$3:
	; Call printf 28 0
	mov qword [rbp + 28], assert_test$4
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	jmp printf

 assert_test$4:
	; PostCall 28

 assert_test$5:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test$6:
	; Parameter pointer "%i" 52
	mov qword [rbp + 52], string_25i#

 assert_test$7:
	; Address £temporary126 n
	mov rsi, rbp
	add rsi, 24

 assert_test$8:
	; Parameter pointer £temporary126 60
	mov [rbp + 60], rsi

 assert_test$9:
	; Call scanf 28 8
	mov qword [rbp + 28], assert_test$10
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 assert_test$10:
	; PostCall 28

 assert_test$11:
	; NotEqual 23 n 6
	cmp dword [rbp + 24], 6
	jne assert_test$23

 assert_test$12:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test$13:
	; Parameter pointer stderr 52
	mov rax, [stderr]
	mov [rbp + 52], rax

 assert_test$14:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 60
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 assert_test$15:
	; Parameter pointer "n != 6" 68
	mov qword [rbp + 68], string_n20213D206#

 assert_test$16:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c" 76
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#

 assert_test$17:
	; Parameter signedint 852 84
	mov dword [rbp + 84], 852

 assert_test$18:
	; Call fprintf 28 20
	mov qword [rbp + 28], assert_test$19
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 assert_test$19:
	; PostCall 28

 assert_test$20:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test$21:
	; Call abort 28 0
	mov qword [rbp + 28], assert_test$22
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

 assert_test$22:
	; PostCall 28

 assert_test$23:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test$24:
	; Parameter signedint n 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 assert_test$25:
	; Call assert_test2 28 0
	mov qword [rbp + 28], assert_test$26
	mov [rbp + 36], rbp
	add rbp, 28
	jmp assert_test2

 assert_test$26:
	; PostCall 28

 assert_test$27:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 assert_test$28:
	; FunctionEnd assert_test

section .data

string_n20213D207#:
	; Initializer String n != 7
	db "n != 7", 0

section .text

 assert_test2:
	; NotEqual 12 n 7
	cmp dword [rbp + 24], 7
	jne assert_test2$12

 assert_test2$1:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test2$2:
	; Parameter pointer stderr 52
	mov rax, [stderr]
	mov [rbp + 52], rax

 assert_test2$3:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 60
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 assert_test2$4:
	; Parameter pointer "n != 7" 68
	mov qword [rbp + 68], string_n20213D207#

 assert_test2$5:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c" 76
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#

 assert_test2$6:
	; Parameter signedint 857 84
	mov dword [rbp + 84], 857

 assert_test2$7:
	; Call fprintf 28 20
	mov qword [rbp + 28], assert_test2$8
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 assert_test2$8:
	; PostCall 28

 assert_test2$9:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test2$10:
	; Call abort 28 0
	mov qword [rbp + 28], assert_test2$11
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

 assert_test2$11:
	; PostCall 28

 assert_test2$12:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 assert_test2$13:
	; FunctionEnd assert_test2

section .data
$StackTop:	times 1048576 db 0
