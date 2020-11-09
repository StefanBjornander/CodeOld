	global assert_testX
	global assert_test2X

	extern printf
	extern scanf
	extern stderr
	extern fprintf
	extern abort
	extern assert_test2
	extern $StackTop


section .data

string_Please20write20a20number2028not20620or207293A20#:
	; Initializer String Please write a number (not 6 or 7): 
	db "Please write a number (not 6 or 7): ", 0

section .data

string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

string_n20213D206#:
	; Initializer String n != 6
	db "n != 6", 0

section .data

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\AssertTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\AssertTest.c", 0

section .text

 assert_testX:
	; Assign n 0
	mov dword [rbp + 24], 0

 assert_testX$1:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_testX$2:
	; Parameter pointer "Please write a number (not 6 or 7): " 52
	mov qword [rbp + 52], string_Please20write20a20number2028not20620or207293A20#

 assert_testX$3:
	; Call printf 28 0
	mov qword [rbp + 28], assert_testX$4
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	jmp printf

 assert_testX$4:
	; PostCall 28

 assert_testX$5:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_testX$6:
	; Parameter pointer "%i" 52
	mov qword [rbp + 52], string_25i#

 assert_testX$7:
	; Address £temporary3574 n
	mov rsi, rbp
	add rsi, 24

 assert_testX$8:
	; Parameter pointer £temporary3574 60
	mov [rbp + 60], rsi

 assert_testX$9:
	; Call scanf 28 8
	mov qword [rbp + 28], assert_testX$10
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 assert_testX$10:
	; PostCall 28

 assert_testX$11:
	; NotEqual 23 n 6
	cmp dword [rbp + 24], 6
	jne assert_testX$23

 assert_testX$12:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_testX$13:
	; Parameter pointer stderr 52
	mov rax, [stderr]
	mov [rbp + 52], rax

 assert_testX$14:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 60
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 assert_testX$15:
	; Parameter pointer "n != 6" 68
	mov qword [rbp + 68], string_n20213D206#

 assert_testX$16:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\AssertTest.c" 76
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#

 assert_testX$17:
	; Parameter signedint 10 84
	mov dword [rbp + 84], 10

 assert_testX$18:
	; Call fprintf 28 20
	mov qword [rbp + 28], assert_testX$19
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 assert_testX$19:
	; PostCall 28

 assert_testX$20:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_testX$21:
	; Call abort 28 0
	mov qword [rbp + 28], assert_testX$22
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

 assert_testX$22:
	; PostCall 28

 assert_testX$23:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_testX$24:
	; Parameter signedint n 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 assert_testX$25:
	; Call assert_test2 28 0
	mov qword [rbp + 28], assert_testX$26
	mov [rbp + 36], rbp
	add rbp, 28
	jmp assert_test2

 assert_testX$26:
	; PostCall 28

 assert_testX$27:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 assert_testX$28:
	; FunctionEnd assert_testX

section .data

string_n20213D207#:
	; Initializer String n != 7
	db "n != 7", 0

section .text

 assert_test2X:
	; NotEqual 12 n 7
	cmp dword [rbp + 24], 7
	jne assert_test2X$12

 assert_test2X$1:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test2X$2:
	; Parameter pointer stderr 52
	mov rax, [stderr]
	mov [rbp + 52], rax

 assert_test2X$3:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 60
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 assert_test2X$4:
	; Parameter pointer "n != 7" 68
	mov qword [rbp + 68], string_n20213D207#

 assert_test2X$5:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\AssertTest.c" 76
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#

 assert_test2X$6:
	; Parameter signedint 15 84
	mov dword [rbp + 84], 15

 assert_test2X$7:
	; Call fprintf 28 20
	mov qword [rbp + 28], assert_test2X$8
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 assert_test2X$8:
	; PostCall 28

 assert_test2X$9:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test2X$10:
	; Call abort 28 0
	mov qword [rbp + 28], assert_test2X$11
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

 assert_test2X$11:
	; PostCall 28

 assert_test2X$12:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 assert_test2X$13:
	; FunctionEnd assert_test2X
