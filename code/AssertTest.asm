	global assert_testX
	global assert_test2X

	extern printf
	extern scanf
	extern stderr
	extern fprintf
	extern abort
	extern assert_test2
section .text

assert_testX:	; n = int4$0#
	mov dword [rbp + 24], 0

assert_testX$1:	; call header integral zero 0 stack zero 0

assert_testX$2:	; parameter string_Please20write20a20number2028not20620or207293A20#, offset 52
	mov qword [rbp + 52], string_Please20write20a20number2028not20620or207293A20#

assert_testX$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 28], assert_testX$4
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	jmp printf

assert_testX$4:	; post call

assert_testX$5:	; call header integral zero 0 stack zero 0

assert_testX$6:	; parameter string_25i#, offset 52
	mov qword [rbp + 52], string_25i#

assert_testX$7:	; £temporary3073 = &n
	mov rsi, rbp
	add rsi, 24

assert_testX$8:	; parameter £temporary3073, offset 60
	mov [rbp + 60], rsi

assert_testX$9:	; call function noellipse-ellipse scanf, extra 8
	mov qword [rbp + 28], assert_testX$10
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 8
	jmp scanf

assert_testX$10:	; post call

assert_testX$11:	; if n != int4$6# goto 23
	cmp dword [rbp + 24], 6
	jne assert_testX$23

assert_testX$12:	; call header integral zero 0 stack zero 0

assert_testX$13:	; parameter stderr, offset 52
	mov rax, [stderr]
	mov [rbp + 52], rax

assert_testX$14:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 60
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

assert_testX$15:	; parameter string_n20213D206#, offset 68
	mov qword [rbp + 68], string_n20213D206#

assert_testX$16:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#, offset 76
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#

assert_testX$17:	; parameter int4$10#, offset 84
	mov dword [rbp + 84], 10

assert_testX$18:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 28], assert_testX$19
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

assert_testX$19:	; post call

assert_testX$20:	; call header integral zero 0 stack zero 0

assert_testX$21:	; call function noellipse-noellipse abort
	mov qword [rbp + 28], assert_testX$22
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

assert_testX$22:	; post call

assert_testX$23:	; call header integral zero 0 stack zero 0

assert_testX$24:	; parameter n, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

assert_testX$25:	; call function noellipse-noellipse assert_test2
	mov qword [rbp + 28], assert_testX$26
	mov [rbp + 36], rbp
	add rbp, 28
	jmp assert_test2

assert_testX$26:	; post call

assert_testX$27:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

assert_testX$28:	; function end assert_testX

assert_test2X:	; if n != int4$7# goto 12
	cmp dword [rbp + 24], 7
	jne assert_test2X$12

assert_test2X$1:	; call header integral zero 0 stack zero 0

assert_test2X$2:	; parameter stderr, offset 52
	mov rax, [stderr]
	mov [rbp + 52], rax

assert_test2X$3:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 60
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

assert_test2X$4:	; parameter string_n20213D207#, offset 68
	mov qword [rbp + 68], string_n20213D207#

assert_test2X$5:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#, offset 76
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#

assert_test2X$6:	; parameter int4$15#, offset 84
	mov dword [rbp + 84], 15

assert_test2X$7:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 28], assert_test2X$8
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

assert_test2X$8:	; post call

assert_test2X$9:	; call header integral zero 0 stack zero 0

assert_test2X$10:	; call function noellipse-noellipse abort
	mov qword [rbp + 28], assert_test2X$11
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

assert_test2X$11:	; post call

assert_test2X$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

assert_test2X$13:	; function end assert_test2X
section .data

$IntegralStorage#:
	times 8 db 0

string_Please20write20a20number2028not20620or207293A20#:
	; initializer String
	db "Please write a number (not 6 or 7): ", 0

string_25i#:
	; initializer String
	db "%i", 0

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; initializer String
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

string_n20213D206#:
	; initializer String
	db "n != 6", 0

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#:
	; initializer String
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\AssertTest.c", 0

string_n20213D207#:
	; initializer String
	db "n != 7", 0
