	global a
	global main2
	global main33
	global main34
	global mainc
	global maini
	global mains
	global maint
	global mainX
	global mainm
	global maina
	global main
	global mainX5
	global mainX4
	global main3
	global char_main
	global assert_test2

	extern file_test
	extern printf
	extern stdout
	extern g_outDevice
	extern printChar
	extern scanf
	extern limits_test
	extern time_test
	extern stderr
	extern fprintf
	extern abort
	extern math_test
	extern stdio_test
	extern assert_test
	extern malloc_test
	extern print_test
	extern float_test
	extern string_test
	extern setjmp_test
	extern stdlib_test
	extern strtol_test
	extern strtoul_test
	extern character_test
	extern locale_test
	extern mktime
	global _start
	global $StackTop


section .data

a:
	; InitializerZero 16
	times 16 db 0

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
	; Call 24 file_test 0
	mov qword [rbp + 24], main2$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp file_test

 main2$4:
	; PostCall 24

 main2$5:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main2$6:
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
	; Parameter 88 pointer "<%s> <%s>\n"
	mov qword [rbp + 88], string_3C25s3E203C25s3E0A#

 main33$14:
	; Parameter 96 pointer s
	mov [rbp + 96], rbp
	add qword [rbp + 96], 24

 main33$15:
	; Parameter 104 pointer t
	mov [rbp + 104], rbp
	add qword [rbp + 104], 44

 main33$16:
	; Call 64 printf 16
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
	; Parameter 48 signedchar 88
	mov byte [rbp + 48], 88

 main34$3:
	; Call 24 printChar 0
	mov qword [rbp + 24], main34$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp printChar

 main34$4:
	; PostCall 24

 main34$5:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main34$6:
	; Parameter 48 signedchar 10
	mov byte [rbp + 48], 10

 main34$7:
	; Call 24 printChar 0
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
	; Parameter 49 pointer "Please write a character: "
	mov qword [rbp + 49], string_Please20write20a20character3A20#

 mainc$2:
	; Call 25 printf 0
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
	; Parameter 49 pointer "%c"
	mov qword [rbp + 49], string_25c#

 mainc$6:
	; Address £temporary19 c
	mov rsi, rbp
	add rsi, 24

 mainc$7:
	; Parameter 57 pointer £temporary19
	mov [rbp + 57], rsi

 mainc$8:
	; Call 25 scanf 8
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
	; Parameter 49 pointer "You wrote the character '%c'.\n"
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
	; Parameter 57 signedint £temporary21
	mov [rbp + 57], eax

 mainc$14:
	; Call 25 printf 4
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
	; Parameter 52 pointer "Please write an integer: "
	mov qword [rbp + 52], string_Please20write20an20integer3A20#

 maini$2:
	; Call 28 printf 0
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
	; Parameter 52 pointer "%i"
	mov qword [rbp + 52], string_25i#

 maini$6:
	; Address £temporary25 i
	mov rsi, rbp
	add rsi, 24

 maini$7:
	; Parameter 60 pointer £temporary25
	mov [rbp + 60], rsi

 maini$8:
	; Call 28 scanf 8
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
	; Parameter 52 pointer "You wrote the integer %i.\n"
	mov qword [rbp + 52], string_You20wrote20the20integer2025i2E0A#

 maini$12:
	; Parameter 60 signedint i
	mov eax, [rbp + 24]
	mov [rbp + 60], eax

 maini$13:
	; Call 28 printf 4
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
	; Parameter 68 pointer "Please write a string: "
	mov qword [rbp + 68], string_Please20write20a20string3A20#

 mains$2:
	; Call 44 printf 0
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
	; Parameter 68 pointer "%s"
	mov qword [rbp + 68], string_25s#

 mains$6:
	; Parameter 76 pointer s
	mov [rbp + 76], rbp
	add qword [rbp + 76], 24

 mains$7:
	; Call 44 scanf 8
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
	; Parameter 68 pointer "You wrote the string "%s".\n"
	mov qword [rbp + 68], string_You20wrote20the20string202225s222E0A#

 mains$11:
	; Parameter 76 pointer s
	mov [rbp + 76], rbp
	add qword [rbp + 76], 24

 mains$12:
	; Call 44 printf 8
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
	; Call 24 limits_test 0
	mov qword [rbp + 24], maint$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp limits_test

 maint$2:
	; PostCall 24

 maint$3:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 maint$4:
	; Call 24 time_test 0
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
	; IntegralToIntegral £temporary36 index
	mov esi, [rbp + 36]
	mov rax, 4294967295
	and rsi, rax

 mainX$3:
	; Dereference £temporary37 -> £temporary36 £temporary36 0

 mainX$4:
	; Assign c £temporary37 -> £temporary36
	mov al, [rsi]
	mov [rbp + 40], al

 mainX$5:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$6:
	; Parameter 65 pointer "%i: %i <%c>\n"
	mov qword [rbp + 65], string_25i3A2025i203C25c3E0A#

 mainX$7:
	; Parameter 73 signedint index
	mov eax, [rbp + 36]
	mov [rbp + 73], eax

 mainX$8:
	; IntegralToIntegral £temporary38 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge mainX$9
	neg al
	neg eax

 mainX$9:
	; Parameter 77 signedint £temporary38
	mov [rbp + 77], eax

 mainX$10:
	; IntegralToIntegral £temporary39 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge mainX$11
	neg al
	neg eax

 mainX$11:
	; Parameter 81 signedint £temporary39
	mov [rbp + 81], eax

 mainX$12:
	; Call 41 printf 12
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
	; Parameter 64 pointer "\nargc: %i\n"
	mov qword [rbp + 64], string_0Aargc3A2025i0A#

 mainX$18:
	; Parameter 72 signedint argc
	mov eax, [rbp + 24]
	mov [rbp + 72], eax

 mainX$19:
	; Call 40 printf 4
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
	; Parameter 64 pointer "%i: <%s>\n"
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX$25:
	; Parameter 72 signedint index
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX$26:
	; IntegralToIntegral £temporary45 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX$27:
	; UnsignedMultiply £temporary46 £temporary45 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX$28:
	; BinaryAdd £temporary47 argv £temporary46
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX$29:
	; Dereference £temporary44 -> £temporary47 £temporary47 0

 mainX$30:
	; Parameter 76 pointer £temporary44 -> £temporary47
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX$31:
	; Call 40 printf 12
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
	; Parameter 64 pointer "\n"
	mov qword [rbp + 64], string_0A#

 mainX$37:
	; Call 40 printf 0
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
	; IntegralToIntegral £temporary51 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX$41:
	; UnsignedMultiply £temporary52 £temporary51 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX$42:
	; BinaryAdd £temporary53 argv £temporary52
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX$43:
	; Dereference £temporary50 -> £temporary53 £temporary53 0

 mainX$44:
	; Equal 57 £temporary50 -> £temporary53 0
	cmp qword [rsi], 0
	je mainX$57

 mainX$45:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX$46:
	; Parameter 64 pointer "%i: <%s>\n"
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX$47:
	; Parameter 72 signedint index
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX$48:
	; IntegralToIntegral £temporary57 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX$49:
	; UnsignedMultiply £temporary58 £temporary57 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX$50:
	; BinaryAdd £temporary59 argv £temporary58
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX$51:
	; Dereference £temporary56 -> £temporary59 £temporary59 0

 mainX$52:
	; Parameter 76 pointer £temporary56 -> £temporary59
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX$53:
	; Call 40 printf 12
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
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainm$1:
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
	; Parameter 48 pointer stderr
	mov rax, [stderr]
	mov [rbp + 48], rax

 maina$2:
	; Parameter 56 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 56], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 maina$3:
	; Parameter 64 pointer "1 > 2"
	mov qword [rbp + 64], string_1203E202#

 maina$4:
	; Parameter 72 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c"
	mov qword [rbp + 72], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#

 maina$5:
	; Parameter 80 signedint 196
	mov dword [rbp + 80], 196

 maina$6:
	; Call 24 fprintf 20
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
	; Call 24 abort 0
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
	; Call 24 stdio_test 0
	mov qword [rbp + 24], main$8
	mov [rbp + 32], rbp
	add rbp, 24
	jmp stdio_test

 main$8:
	; PostCall 24

 main$9:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$10:
	; Call 24 time_test 0
	mov qword [rbp + 24], main$11
	mov [rbp + 32], rbp
	add rbp, 24
	jmp time_test

 main$11:
	; PostCall 24

 main$12:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$13:
	; Call 24 assert_test 0
	mov qword [rbp + 24], main$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp assert_test

 main$14:
	; PostCall 24

 main$15:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$16:
	; Call 24 malloc_test 0
	mov qword [rbp + 24], main$17
	mov [rbp + 32], rbp
	add rbp, 24
	jmp malloc_test

 main$17:
	; PostCall 24

 main$18:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$19:
	; Call 24 print_test 0
	mov qword [rbp + 24], main$20
	mov [rbp + 32], rbp
	add rbp, 24
	jmp print_test

 main$20:
	; PostCall 24

 main$21:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$22:
	; Call 24 limits_test 0
	mov qword [rbp + 24], main$23
	mov [rbp + 32], rbp
	add rbp, 24
	jmp limits_test

 main$23:
	; PostCall 24

 main$24:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$25:
	; Call 24 float_test 0
	mov qword [rbp + 24], main$26
	mov [rbp + 32], rbp
	add rbp, 24
	jmp float_test

 main$26:
	; PostCall 24

 main$27:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$28:
	; Call 24 string_test 0
	mov qword [rbp + 24], main$29
	mov [rbp + 32], rbp
	add rbp, 24
	jmp string_test

 main$29:
	; PostCall 24

 main$30:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$31:
	; Call 24 setjmp_test 0
	mov qword [rbp + 24], main$32
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

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

section .text

 mainX5:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX5$1:
	; Call 24 file_test 0
	mov qword [rbp + 24], mainX5$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp file_test

 mainX5$2:
	; PostCall 24

 mainX5$3:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mainX5$4:
	; FunctionEnd mainX5

section .data

@413$ZERO:
	; Initializer SignedInt 0
	dd 0

section .data

@414$ONE:
	; Initializer SignedInt 1
	dd 1

section .data

@417$TWO:
	; Initializer SignedInt 2
	dd 2

section .data

@418$THREE:
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
	; Parameter 60 pointer "argc: %i\n"
	mov qword [rbp + 60], string_argc3A2025i0A#

 mainX4$2:
	; Parameter 68 signedint argc
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 mainX4$3:
	; Call 36 printf 4
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
	; Parameter 64 pointer "%i: <%s>\n"
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX4$9:
	; Parameter 72 signedint index
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX4$10:
	; IntegralToIntegral £temporary91 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX4$11:
	; UnsignedMultiply £temporary92 £temporary91 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX4$12:
	; BinaryAdd £temporary93 argv £temporary92
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX4$13:
	; Dereference £temporary90 -> £temporary93 £temporary93 0

 mainX4$14:
	; Parameter 76 pointer £temporary90 -> £temporary93
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX4$15:
	; Call 40 printf 12
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
	; Parameter 64 pointer "\n"
	mov qword [rbp + 64], string_0A#

 mainX4$21:
	; Call 40 printf 0
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
	; IntegralToIntegral £temporary97 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX4$25:
	; UnsignedMultiply £temporary98 £temporary97 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX4$26:
	; BinaryAdd £temporary99 argv £temporary98
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX4$27:
	; Dereference £temporary96 -> £temporary99 £temporary99 0

 mainX4$28:
	; Equal 41 £temporary96 -> £temporary99 0
	cmp qword [rsi], 0
	je mainX4$41

 mainX4$29:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$30:
	; Parameter 64 pointer "%i: <%s>\n"
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

 mainX4$31:
	; Parameter 72 signedint index
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 mainX4$32:
	; IntegralToIntegral £temporary103 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 mainX4$33:
	; UnsignedMultiply £temporary104 £temporary103 8
	xor rdx, rdx
	mul qword [int8$8#]

 mainX4$34:
	; BinaryAdd £temporary105 argv £temporary104
	mov rsi, [rbp + 28]
	add rsi, rax

 mainX4$35:
	; Dereference £temporary102 -> £temporary105 £temporary105 0

 mainX4$36:
	; Parameter 76 pointer £temporary102 -> £temporary105
	mov rax, [rsi]
	mov [rbp + 76], rax

 mainX4$37:
	; Call 40 printf 12
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
	; Parameter 64 pointer "\n"
	mov qword [rbp + 64], string_0A#

 mainX4$43:
	; Call 40 printf 0
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
	; Parameter 93 pointer 0
	mov qword [rbp + 93], 0

 mainX4$47:
	; Call 69 mktime 0
	mov qword [rbp + 69], mainX4$48
	mov [rbp + 77], rbp
	add rbp, 69
	jmp mktime

 mainX4$48:
	; PostCall 69

 mainX4$49:
	; PreCall 69 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 mainX4$50:
	; Parameter 93 pointer "Hello!\n"
	mov qword [rbp + 93], string_Hello210A#

 mainX4$51:
	; Call 69 printf 0
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
	; Parameter 93 pointer "Please write a character, a string, an integer, and a double: "
	mov qword [rbp + 93], string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#

 mainX4$55:
	; Call 69 printf 0
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
	; Parameter 93 pointer "%c %s %i %lf"
	mov qword [rbp + 93], string_25c2025s2025i2025lf#

 mainX4$59:
	; Address £temporary111 c
	mov rsi, rbp
	add rsi, 48

 mainX4$60:
	; Parameter 101 pointer £temporary111
	mov [rbp + 101], rsi

 mainX4$61:
	; Parameter 109 pointer s
	mov [rbp + 109], rbp
	add qword [rbp + 109], 49

 mainX4$62:
	; Address £temporary112 i
	mov rsi, rbp
	add rsi, 36

 mainX4$63:
	; Parameter 117 pointer £temporary112
	mov [rbp + 117], rsi

 mainX4$64:
	; Address £temporary113 d
	mov rsi, rbp
	add rsi, 40

 mainX4$65:
	; Parameter 125 pointer £temporary113
	mov [rbp + 125], rsi

 mainX4$66:
	; Call 69 scanf 32
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
	; Parameter 93 pointer "You wrote the character '%c', the string "%s", the integer %i, and the double %f.\n"
	mov qword [rbp + 93], string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#

 mainX4$70:
	; IntegralToIntegral £temporary115 c
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge mainX4$71
	neg al
	neg eax

 mainX4$71:
	; Parameter 101 signedint £temporary115
	mov [rbp + 101], eax

 mainX4$72:
	; Parameter 105 pointer s
	mov [rbp + 105], rbp
	add qword [rbp + 105], 49

 mainX4$73:
	; Parameter 113 signedint i
	mov eax, [rbp + 36]
	mov [rbp + 113], eax

 mainX4$74:
	; PushFloat d
	fld qword [rbp + 40]

 mainX4$75:
	; Parameter 117 double d
	fstp qword [rbp + 117]

 mainX4$76:
	; Call 69 printf 24
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
	; Parameter 56 pointer ": "
	mov qword [rbp + 56], string_3A20#

 main3$2:
	; Call 32 printf 0
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
	; Parameter 56 pointer "%lf"
	mov qword [rbp + 56], string_25lf#

 main3$6:
	; Address £temporary122 x
	mov rsi, rbp
	add rsi, 24

 main3$7:
	; Parameter 64 pointer £temporary122
	mov [rbp + 64], rsi

 main3$8:
	; Call 32 scanf 8
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
	; Parameter 56 pointer "<%f>"
	mov qword [rbp + 56], string_3C25f3E#

 main3$12:
	; PushFloat x
	fld qword [rbp + 24]

 main3$13:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 main3$14:
	; Call 32 printf 8
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

section .text

 char_main:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$1:
	; Parameter 48 signedint 97
	mov dword [rbp + 48], 97

 char_main$2:
	; Call 24 character_test 4
	mov qword [rbp + 24], char_main$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$3:
	; PostCall 24

 char_main$4:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$5:
	; Parameter 48 signedint 66
	mov dword [rbp + 48], 66

 char_main$6:
	; Call 24 character_test 4
	mov qword [rbp + 24], char_main$7
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$7:
	; PostCall 24

 char_main$8:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$9:
	; Parameter 48 signedint 49
	mov dword [rbp + 48], 49

 char_main$10:
	; Call 24 character_test 4
	mov qword [rbp + 24], char_main$11
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$11:
	; PostCall 24

 char_main$12:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$13:
	; Parameter 48 signedint 46
	mov dword [rbp + 48], 46

 char_main$14:
	; Call 24 character_test 4
	mov qword [rbp + 24], char_main$15
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$15:
	; PostCall 24

 char_main$16:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$17:
	; Parameter 48 signedint 10
	mov dword [rbp + 48], 10

 char_main$18:
	; Call 24 character_test 4
	mov qword [rbp + 24], char_main$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$19:
	; PostCall 24

 char_main$20:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$21:
	; Parameter 48 signedint 102
	mov dword [rbp + 48], 102

 char_main$22:
	; Call 24 character_test 4
	mov qword [rbp + 24], char_main$23
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

 char_main$23:
	; PostCall 24

 char_main$24:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 char_main$25:
	; Parameter 48 signedint 103
	mov dword [rbp + 48], 103

 char_main$26:
	; Call 24 character_test 4
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
	; Parameter 52 pointer stderr
	mov rax, [stderr]
	mov [rbp + 52], rax

 assert_test2$3:
	; Parameter 60 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 assert_test2$4:
	; Parameter 68 pointer "n != 7"
	mov qword [rbp + 68], string_n20213D207#

 assert_test2$5:
	; Parameter 76 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c"
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#

 assert_test2$6:
	; Parameter 84 signedint 907
	mov dword [rbp + 84], 907

 assert_test2$7:
	; Call 28 fprintf 20
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
	; Call 28 abort 0
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
