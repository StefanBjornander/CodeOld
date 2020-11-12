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
	global mainm
	global maina
	global main
	global mainX4
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
	extern stderr
	extern fprintf
	extern abort
	extern stdlib_test
	extern mktime
	extern character_test
	global _start
	global $StackTop


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
	; Assign a.p 0
	mov qword [a], 0

 main2$1:
	; Assign a.q 0
	mov qword [a + 8], 0

 main2$2:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main2$3:
	; Parameter pointer "test1.txt" 48
	mov qword [rbp + 48], string_test12Etxt#

 main2$4:
	; Parameter pointer "test2.txt" 56
	mov qword [rbp + 56], string_test22Etxt#

 main2$5:
	; Call file_test 24 0
	mov qword [rbp + 24], main2$6
	mov [rbp + 32], rbp
	add rbp, 24
	jmp file_test

 main2$6:
	; PostCall 24

 main2$7:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main2$8:
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
	; Assign s[5] 0
	mov byte [rbp + 29], 0

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
	; Assign t[5] 0
	mov byte [rbp + 49], 0

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
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainc$1:
	; Parameter pointer "Please write a character: " 49
	mov qword [rbp + 49], string_Please20write20a20character3A20#

 mainc$2:
	; Call printf 25 0
	mov qword [rbp + 25], mainc$3
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	jmp printf

 mainc$3:
	; PostCall 25

 mainc$4:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainc$5:
	; Parameter pointer "%c" 49
	mov qword [rbp + 49], string_25c#

 mainc$6:
	; Address £temporary19 c
	mov rsi, rbp
	add rsi, 24

 mainc$7:
	; Parameter pointer £temporary19 57
	mov [rbp + 57], rsi

 mainc$8:
	; Call scanf 25 8
	mov qword [rbp + 25], mainc$9
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 mainc$9:
	; PostCall 25

 mainc$10:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainc$11:
	; Parameter pointer "You wrote the character '%c'.\n" 49
	mov qword [rbp + 49], string_You20wrote20the20character202725c272E0A#

 mainc$12:
	; IntegralToIntegral £temporary21 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge mainc$13
	neg al
	neg eax

 mainc$13:
	; Parameter signedint £temporary21 57
	mov [rbp + 57], eax

 mainc$14:
	; Call printf 25 4
	mov qword [rbp + 25], mainc$15
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 4
	jmp printf

 mainc$15:
	; PostCall 25

 mainc$16:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainc$17:
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
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 maini$1:
	; Parameter pointer "Please write an integer: " 52
	mov qword [rbp + 52], string_Please20write20an20integer3A20#

 maini$2:
	; Call printf 28 0
	mov qword [rbp + 28], maini$3
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	jmp printf

 maini$3:
	; PostCall 28

 maini$4:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 maini$5:
	; Parameter pointer "%i" 52
	mov qword [rbp + 52], string_25i#

 maini$6:
	; Address £temporary25 i
	mov rsi, rbp
	add rsi, 24

 maini$7:
	; Parameter pointer £temporary25 60
	mov [rbp + 60], rsi

 maini$8:
	; Call scanf 28 8
	mov qword [rbp + 28], maini$9
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 maini$9:
	; PostCall 28

 maini$10:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 maini$11:
	; Parameter pointer "You wrote the integer %i.\n" 52
	mov qword [rbp + 52], string_You20wrote20the20integer2025i2E0A#

 maini$12:
	; Parameter signedint i 60
	mov eax, [rbp + 24]
	mov [rbp + 60], eax

 maini$13:
	; Call printf 28 4
	mov qword [rbp + 28], maini$14
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 4
	jmp printf

 maini$14:
	; PostCall 28

 maini$15:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 maini$16:
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
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains$1:
	; Parameter pointer "Please write a string: " 68
	mov qword [rbp + 68], string_Please20write20a20string3A20#

 mains$2:
	; Call printf 44 0
	mov qword [rbp + 44], mains$3
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	jmp printf

 mains$3:
	; PostCall 44

 mains$4:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains$5:
	; Parameter pointer "%s" 68
	mov qword [rbp + 68], string_25s#

 mains$6:
	; Parameter pointer s 76
	mov [rbp + 76], rbp
	add qword [rbp + 76], 24

 mains$7:
	; Call scanf 44 8
	mov qword [rbp + 44], mains$8
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 mains$8:
	; PostCall 44

 mains$9:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mains$10:
	; Parameter pointer "You wrote the string "%s".\n" 68
	mov qword [rbp + 68], string_You20wrote20the20string202225s222E0A#

 mains$11:
	; Parameter pointer s 76
	mov [rbp + 76], rbp
	add qword [rbp + 76], 24

 mains$12:
	; Call printf 44 8
	mov qword [rbp + 44], mains$13
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 8
	jmp printf

 mains$13:
	; PostCall 44

 mains$14:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mains$15:
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
	; Assign index 129
	mov dword [rbp + 36], 129

 mainX$1:
	; SignedGreaterThanEqual 16 index 255
	cmp dword [rbp + 36], 255
	jge mainX$16

 mainX$2:
	; IntegralToIntegral £temporary41 index
	mov esi, [rbp + 36]
	mov rax, 4294967295
	and rsi, rax

 mainX$3:
	; Dereference £temporary42 -> £temporary41 £temporary41 0

 mainX$4:
	; Assign c £temporary42 -> £temporary41
	mov al, [rsi]
	mov [rbp + 40], al

 mainX$5:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$6:
	; Parameter pointer "%i: %i <%c>\n" 65
	mov qword [rbp + 65], string_25i3A2025i203C25c3E0A#

 mainX$7:
	; Parameter signedint index 73
	mov eax, [rbp + 36]
	mov [rbp + 73], eax

 mainX$8:
	; IntegralToIntegral £temporary43 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge mainX$9
	neg al
	neg eax

 mainX$9:
	; Parameter signedint £temporary43 77
	mov [rbp + 77], eax

 mainX$10:
	; IntegralToIntegral £temporary44 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge mainX$11
	neg al
	neg eax

 mainX$11:
	; Parameter signedint £temporary44 81
	mov [rbp + 81], eax

 mainX$12:
	; Call printf 41 12
	mov qword [rbp + 41], mainX$13
	mov [rbp + 49], rbp
	add rbp, 41
	mov rdi, rbp
	add rdi, 12
	jmp printf

 mainX$13:
	; PostCall 41

 mainX$14:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 mainX$15:
	; Goto 1
	jmp mainX$1

 mainX$16:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$17:
	; Parameter pointer "\nargc: %i\n" 64
	mov qword [rbp + 64], string_0Aargc3A2025i0A#

 mainX$18:
	; Parameter signedint argc 72
	mov eax, [rbp + 24]
	mov [rbp + 72], eax

 mainX$19:
	; Call printf 40 4
	mov qword [rbp + 40], mainX$20
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 4
	jmp printf

 mainX$20:
	; PostCall 40

 mainX$21:
	; Assign index 0
	mov dword [rbp + 36], 0

 mainX$22:
	; SignedGreaterThanEqual 35 index argc
	mov eax, [rbp + 24]
	cmp [rbp + 36], eax
	jge mainX$35

 mainX$23:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$24:
	; Parameter pointer "%i: <%s>\n" 64
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX$25:
	; Parameter signedint index 72
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX$26:
	; IntegralToIntegral £temporary50 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX$27:
	; UnsignedMultiply £temporary51 £temporary50 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX$28:
	; BinaryAdd £temporary52 argv £temporary51
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX$29:
	; Dereference £temporary49 -> £temporary52 £temporary52 0

 mainX$30:
	; Parameter pointer £temporary49 -> £temporary52 76
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX$31:
	; Call printf 40 12
	mov qword [rbp + 40], mainX$32
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

 mainX$32:
	; PostCall 40

 mainX$33:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 mainX$34:
	; Goto 22
	jmp mainX$22

 mainX$35:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$36:
	; Parameter pointer "\n" 64
	mov qword [rbp + 64], string_0A#

 mainX$37:
	; Call printf 40 0
	mov qword [rbp + 40], mainX$38
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 mainX$38:
	; PostCall 40

 mainX$39:
	; Assign index 0
	mov dword [rbp + 36], 0

 mainX$40:
	; IntegralToIntegral £temporary56 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX$41:
	; UnsignedMultiply £temporary57 £temporary56 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX$42:
	; BinaryAdd £temporary58 argv £temporary57
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX$43:
	; Dereference £temporary55 -> £temporary58 £temporary58 0

 mainX$44:
	; Equal 57 £temporary55 -> £temporary58 0
	cmp qword [rsi], 0
	je mainX$57

 mainX$45:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$46:
	; Parameter pointer "%i: <%s>\n" 64
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX$47:
	; Parameter signedint index 72
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX$48:
	; IntegralToIntegral £temporary62 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX$49:
	; UnsignedMultiply £temporary63 £temporary62 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX$50:
	; BinaryAdd £temporary64 argv £temporary63
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX$51:
	; Dereference £temporary61 -> £temporary64 £temporary64 0

 mainX$52:
	; Parameter pointer £temporary61 -> £temporary64 76
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX$53:
	; Call printf 40 12
	mov qword [rbp + 40], mainX$54
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

 mainX$54:
	; PostCall 40

 mainX$55:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 mainX$56:
	; Goto 40
	jmp mainX$40

 mainX$57:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainX$58:
	; FunctionEnd mainX

section .text

 mainm:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainm$1:
	; Call main_math 36 0
	mov qword [rbp + 36], mainm$2
	mov [rbp + 44], rbp
	add rbp, 36
	jmp main_math

 mainm$2:
	; PostCall 36

 mainm$3:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainm$4:
	; FunctionEnd mainm

section .data

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

string_1203C202#:
	; Initializer String 1 < 2
	db "1 < 2", 0

section .data

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c", 0

section .data

string_1203E202#:
	; Initializer String 1 > 2
	db "1 > 2", 0

section .text

 maina:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 maina$1:
	; Parameter pointer stderr 48
	mov rax, [stderr]
	mov [rbp + 48], rax

 maina$2:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 56
	mov qword [rbp + 56], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 maina$3:
	; Parameter pointer "1 > 2" 64
	mov qword [rbp + 64], string_1203E202#

 maina$4:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c" 72
	mov qword [rbp + 72], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#

 maina$5:
	; Parameter signedint 197 80
	mov dword [rbp + 80], 197

 maina$6:
	; Call fprintf 24 20
	mov qword [rbp + 24], maina$7
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 maina$7:
	; PostCall 24

 maina$8:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 maina$9:
	; Call abort 24 0
	mov qword [rbp + 24], maina$10
	mov [rbp + 32], rbp
	add rbp, 24
	jmp abort

 maina$10:
	; PostCall 24

 maina$11:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 maina$12:
	; FunctionEnd maina

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
	; Call stdlib_test 24 0
	mov qword [rbp + 24], main$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp stdlib_test

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

section .data

@423$ZERO:
	; Initializer SignedInt 0
	dd 0

section .data

@424$ONE:
	; Initializer SignedInt 1
	dd 1

section .data

@427$TWO:
	; Initializer SignedInt 2
	dd 2

section .data

@428$THREE:
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

 mainX4:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$1:
	; Parameter pointer "argc: %i\n" 60
	mov qword [rbp + 60], string_argc3A2025i0A#

 mainX4$2:
	; Parameter signedint argc 68
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 mainX4$3:
	; Call printf 36 4
	mov qword [rbp + 36], mainX4$4
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 4
	jmp printf

 mainX4$4:
	; PostCall 36

 mainX4$5:
	; Assign index 0
	mov dword [rbp + 36], 0

 mainX4$6:
	; SignedGreaterThanEqual 19 index argc
	mov eax, [rbp + 24]
	cmp [rbp + 36], eax
	jge mainX4$19

 mainX4$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$8:
	; Parameter pointer "%i: <%s>\n" 64
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX4$9:
	; Parameter signedint index 72
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX4$10:
	; IntegralToIntegral £temporary80 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX4$11:
	; UnsignedMultiply £temporary81 £temporary80 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX4$12:
	; BinaryAdd £temporary82 argv £temporary81
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX4$13:
	; Dereference £temporary79 -> £temporary82 £temporary82 0

 mainX4$14:
	; Parameter pointer £temporary79 -> £temporary82 76
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX4$15:
	; Call printf 40 12
	mov qword [rbp + 40], mainX4$16
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

 mainX4$16:
	; PostCall 40

 mainX4$17:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 mainX4$18:
	; Goto 6
	jmp mainX4$6

 mainX4$19:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$20:
	; Parameter pointer "\n" 64
	mov qword [rbp + 64], string_0A#

 mainX4$21:
	; Call printf 40 0
	mov qword [rbp + 40], mainX4$22
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 mainX4$22:
	; PostCall 40

 mainX4$23:
	; Assign index 0
	mov dword [rbp + 36], 0

 mainX4$24:
	; IntegralToIntegral £temporary86 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX4$25:
	; UnsignedMultiply £temporary87 £temporary86 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX4$26:
	; BinaryAdd £temporary88 argv £temporary87
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX4$27:
	; Dereference £temporary85 -> £temporary88 £temporary88 0

 mainX4$28:
	; Equal 41 £temporary85 -> £temporary88 0
	cmp qword [rsi], 0
	je mainX4$41

 mainX4$29:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$30:
	; Parameter pointer "%i: <%s>\n" 64
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX4$31:
	; Parameter signedint index 72
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX4$32:
	; IntegralToIntegral £temporary92 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX4$33:
	; UnsignedMultiply £temporary93 £temporary92 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX4$34:
	; BinaryAdd £temporary94 argv £temporary93
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX4$35:
	; Dereference £temporary91 -> £temporary94 £temporary94 0

 mainX4$36:
	; Parameter pointer £temporary91 -> £temporary94 76
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX4$37:
	; Call printf 40 12
	mov qword [rbp + 40], mainX4$38
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

 mainX4$38:
	; PostCall 40

 mainX4$39:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 mainX4$40:
	; Goto 24
	jmp mainX4$24

 mainX4$41:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$42:
	; Parameter pointer "\n" 64
	mov qword [rbp + 64], string_0A#

 mainX4$43:
	; Call printf 40 0
	mov qword [rbp + 40], mainX4$44
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 mainX4$44:
	; PostCall 40

 mainX4$45:
	; PreCall 69 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$46:
	; Parameter pointer 0 93
	mov qword [rbp + 93], 0

 mainX4$47:
	; Call mktime 69 0
	mov qword [rbp + 69], mainX4$48
	mov [rbp + 77], rbp
	add rbp, 69
	jmp mktime

 mainX4$48:
	; PostCall 69

 mainX4$49:
	; PreCall 69 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$50:
	; Parameter pointer "Hello!\n" 93
	mov qword [rbp + 93], string_Hello210A#

 mainX4$51:
	; Call printf 69 0
	mov qword [rbp + 69], mainX4$52
	mov [rbp + 77], rbp
	add rbp, 69
	mov rdi, rbp
	jmp printf

 mainX4$52:
	; PostCall 69

 mainX4$53:
	; PreCall 69 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$54:
	; Parameter pointer "Please write a character, a string, an integer, and a double: " 93
	mov qword [rbp + 93], string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#

 mainX4$55:
	; Call printf 69 0
	mov qword [rbp + 69], mainX4$56
	mov [rbp + 77], rbp
	add rbp, 69
	mov rdi, rbp
	jmp printf

 mainX4$56:
	; PostCall 69

 mainX4$57:
	; PreCall 69 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$58:
	; Parameter pointer "%c %s %i %lf" 93
	mov qword [rbp + 93], string_25c2025s2025i2025lf#

 mainX4$59:
	; Address £temporary100 c
	mov rsi, rbp
	add rsi, 48

 mainX4$60:
	; Parameter pointer £temporary100 101
	mov [rbp + 101], rsi

 mainX4$61:
	; Parameter pointer s 109
	mov [rbp + 109], rbp
	add qword [rbp + 109], 49

 mainX4$62:
	; Address £temporary101 i
	mov rsi, rbp
	add rsi, 36

 mainX4$63:
	; Parameter pointer £temporary101 117
	mov [rbp + 117], rsi

 mainX4$64:
	; Address £temporary102 d
	mov rsi, rbp
	add rsi, 40

 mainX4$65:
	; Parameter pointer £temporary102 125
	mov [rbp + 125], rsi

 mainX4$66:
	; Call scanf 69 32
	mov qword [rbp + 69], mainX4$67
	mov [rbp + 77], rbp
	add rbp, 69
	mov rdi, rbp
	add rdi, 32
	jmp scanf

 mainX4$67:
	; PostCall 69

 mainX4$68:
	; PreCall 69 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$69:
	; Parameter pointer "You wrote the character '%c', the string "%s", the integer %i, and the double %f.\n" 93
	mov qword [rbp + 93], string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#

 mainX4$70:
	; IntegralToIntegral £temporary104 c
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge mainX4$71
	neg al
	neg eax

 mainX4$71:
	; Parameter signedint £temporary104 101
	mov [rbp + 101], eax

 mainX4$72:
	; Parameter pointer s 105
	mov [rbp + 105], rbp
	add qword [rbp + 105], 49

 mainX4$73:
	; Parameter signedint i 113
	mov eax, [rbp + 36]
	mov [rbp + 113], eax

 mainX4$74:
	; PushFloat d
	fld qword [rbp + 40]

 mainX4$75:
	; Parameter double d 117
	fstp qword [rbp + 117]

 mainX4$76:
	; Call printf 69 24
	mov qword [rbp + 69], mainX4$77
	mov [rbp + 77], rbp
	add rbp, 69
	mov rdi, rbp
	add rdi, 24
	jmp printf

 mainX4$77:
	; PostCall 69

 mainX4$78:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainX4$79:
	; FunctionEnd mainX4

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
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main3$1:
	; Parameter pointer ": " 56
	mov qword [rbp + 56], string_3A20#

 main3$2:
	; Call printf 32 0
	mov qword [rbp + 32], main3$3
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 main3$3:
	; PostCall 32

 main3$4:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main3$5:
	; Parameter pointer "%lf" 56
	mov qword [rbp + 56], string_25lf#

 main3$6:
	; Address £temporary111 x
	mov rsi, rbp
	add rsi, 24

 main3$7:
	; Parameter pointer £temporary111 64
	mov [rbp + 64], rsi

 main3$8:
	; Call scanf 32 8
	mov qword [rbp + 32], main3$9
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 main3$9:
	; PostCall 32

 main3$10:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main3$11:
	; Parameter pointer "<%f>" 56
	mov qword [rbp + 56], string_3C25f3E#

 main3$12:
	; PushFloat x
	fld qword [rbp + 24]

 main3$13:
	; Parameter double x 64
	fstp qword [rbp + 64]

 main3$14:
	; Call printf 32 8
	mov qword [rbp + 32], main3$15
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 main3$15:
	; PostCall 32

 main3$16:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main3$17:
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

string_n20213D206#:
	; Initializer String n != 6
	db "n != 6", 0

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
	; Address £temporary135 n
	mov rsi, rbp
	add rsi, 24

 assert_test$8:
	; Parameter pointer £temporary135 60
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
	; Parameter signedint 865 84
	mov dword [rbp + 84], 865

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
	; Parameter signedint 870 84
	mov dword [rbp + 84], 870

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
