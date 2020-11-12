	global compare
	global reverse_compare
	global print_div
	global print_ldiv
	global exit_handle1x
	global exit_handle2x
	global exit_handle3x
	global hello
	global qtest
	global stdlib_testZ
	global stdlib_test

	extern printf
	extern atof
	extern strtod
	extern getenv
	extern system
	extern @abs
	extern labs
	extern div
	extern ldiv
	extern qsort
	extern bsearch
	extern $StackTop


section .text

 compare:
	; IntegralToIntegral £temporary4343 valuePtr1
	mov rsi, [rbp + 24]

 compare$1:
	; Dereference £temporary4344 -> £temporary4343 £temporary4343 0

 compare$2:
	; Assign intValue1 £temporary4344 -> £temporary4343
	mov eax, [rsi]
	mov [rbp + 40], eax

 compare$3:
	; IntegralToIntegral £temporary4345 valuePtr2
	mov rsi, [rbp + 32]

 compare$4:
	; Dereference £temporary4346 -> £temporary4345 £temporary4345 0

 compare$5:
	; Assign intValue2 £temporary4346 -> £temporary4345
	mov eax, [rsi]
	mov [rbp + 44], eax

 compare$6:
	; SignedGreaterThanEqual 9 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge compare$9

 compare$7:
	; Assign £temporary4350 -1
	mov ebx, -1

 compare$8:
	; Goto 14
	jmp compare$14

 compare$9:
	; NotEqual 12 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jne compare$12

 compare$10:
	; Assign £temporary4349 0
	mov ebx, 0

 compare$11:
	; Goto 13
	jmp compare$13

 compare$12:
	; Assign £temporary4349 1
	mov ebx, 1

 compare$13:
	; Assign £temporary4350 £temporary4349

 compare$14:
	; Return £temporary4350
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 compare$15:
	; FunctionEnd compare

section .text

 reverse_compare:
	; IntegralToIntegral £temporary4351 valuePtr1
	mov rsi, [rbp + 24]

 reverse_compare$1:
	; Dereference £temporary4352 -> £temporary4351 £temporary4351 0

 reverse_compare$2:
	; Assign intValue1 £temporary4352 -> £temporary4351
	mov eax, [rsi]
	mov [rbp + 40], eax

 reverse_compare$3:
	; IntegralToIntegral £temporary4353 valuePtr2
	mov rsi, [rbp + 32]

 reverse_compare$4:
	; Dereference £temporary4354 -> £temporary4353 £temporary4353 0

 reverse_compare$5:
	; Assign intValue2 £temporary4354 -> £temporary4353
	mov eax, [rsi]
	mov [rbp + 44], eax

 reverse_compare$6:
	; SignedGreaterThanEqual 9 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge reverse_compare$9

 reverse_compare$7:
	; Assign £temporary4358 1
	mov ebx, 1

 reverse_compare$8:
	; Goto 14
	jmp reverse_compare$14

 reverse_compare$9:
	; NotEqual 12 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jne reverse_compare$12

 reverse_compare$10:
	; Assign £temporary4357 0
	mov ebx, 0

 reverse_compare$11:
	; Goto 13
	jmp reverse_compare$13

 reverse_compare$12:
	; Assign £temporary4357 -1
	mov ebx, -1

 reverse_compare$13:
	; Assign £temporary4358 £temporary4357

 reverse_compare$14:
	; Return £temporary4358
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 reverse_compare$15:
	; FunctionEnd reverse_compare

section .data

string_div_t20quot2025i20rem2025i0A#:
	; Initializer String div_t quot %i rem %i\n
	db "div_t quot %i rem %i", 10, 0

section .text

 print_div:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_div$1:
	; Parameter pointer "div_t quot %i rem %i\n" 56
	mov qword [rbp + 56], string_div_t20quot2025i20rem2025i0A#

 print_div$2:
	; Parameter signedint d.quot 64
	mov eax, [rbp + 24]
	mov [rbp + 64], eax

 print_div$3:
	; Parameter signedint d.rem 68
	mov eax, [rbp + 28]
	mov [rbp + 68], eax

 print_div$4:
	; Call printf 32 8
	mov qword [rbp + 32], print_div$5
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 print_div$5:
	; PostCall 32

 print_div$6:
	; BinaryAdd d.quot d.quot 1
	inc dword [rbp + 24]

 print_div$7:
	; BinaryAdd d.rem d.rem 1
	inc dword [rbp + 28]

 print_div$8:
	; Return d
	mov rbx, rbp
	add rbx, 24
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_div$9:
	; FunctionEnd print_div

section .data

string_ldiv_t20quot2025li20rem2025li0A#:
	; Initializer String ldiv_t quot %li rem %li\n
	db "ldiv_t quot %li rem %li", 10, 0

section .text

 print_ldiv:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_ldiv$1:
	; Parameter pointer "ldiv_t quot %li rem %li\n" 64
	mov qword [rbp + 64], string_ldiv_t20quot2025li20rem2025li0A#

 print_ldiv$2:
	; Parameter signed long int ld.quot 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 print_ldiv$3:
	; Parameter signed long int ld.rem 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 print_ldiv$4:
	; Call printf 40 16
	mov qword [rbp + 40], print_ldiv$5
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 print_ldiv$5:
	; PostCall 40

 print_ldiv$6:
	; BinarySubtract ld.quot ld.quot 1
	dec qword [rbp + 24]

 print_ldiv$7:
	; BinarySubtract ld.rem ld.rem 1
	dec qword [rbp + 32]

 print_ldiv$8:
	; Return ld
	mov rbx, rbp
	add rbx, 24
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_ldiv$9:
	; FunctionEnd print_ldiv

section .data

string_exit10A#:
	; Initializer String exit1\n
	db "exit1", 10, 0

section .text

 exit_handle1x:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle1x$1:
	; Parameter pointer "exit1\n" 48
	mov qword [rbp + 48], string_exit10A#

 exit_handle1x$2:
	; Call printf 24 0
	mov qword [rbp + 24], exit_handle1x$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle1x$3:
	; PostCall 24

 exit_handle1x$4:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit_handle1x$5:
	; FunctionEnd exit_handle1x

section .data

string_exit20A#:
	; Initializer String exit2\n
	db "exit2", 10, 0

section .text

 exit_handle2x:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle2x$1:
	; Parameter pointer "exit2\n" 48
	mov qword [rbp + 48], string_exit20A#

 exit_handle2x$2:
	; Call printf 24 0
	mov qword [rbp + 24], exit_handle2x$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle2x$3:
	; PostCall 24

 exit_handle2x$4:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit_handle2x$5:
	; FunctionEnd exit_handle2x

section .data

string_exit30A#:
	; Initializer String exit3\n
	db "exit3", 10, 0

section .text

 exit_handle3x:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle3x$1:
	; Parameter pointer "exit3\n" 48
	mov qword [rbp + 48], string_exit30A#

 exit_handle3x$2:
	; Call printf 24 0
	mov qword [rbp + 24], exit_handle3x$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle3x$3:
	; PostCall 24

 exit_handle3x$4:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit_handle3x$5:
	; FunctionEnd exit_handle3x

section .data

string_HelloFFF#:
	; Initializer String HelloFFF
	db "HelloFFF", 0

section .text

 hello:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 hello$1:
	; Parameter pointer "HelloFFF" 48
	mov qword [rbp + 48], string_HelloFFF#

 hello$2:
	; Call printf 24 0
	mov qword [rbp + 24], hello$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 hello$3:
	; PostCall 24

 hello$4:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 hello$5:
	; FunctionEnd hello

section .data

string_f3A2025u0A#:
	; Initializer String f: %u\n
	db "f: %u", 10, 0

section .text

 qtest:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qtest$1:
	; Parameter pointer "f: %u\n" 56
	mov qword [rbp + 56], string_f3A2025u0A#

 qtest$2:
	; IntegralToIntegral £temporary4379 f
	mov rax, [rbp + 24]

 qtest$3:
	; Parameter unsigned int £temporary4379 64
	mov [rbp + 64], eax

 qtest$4:
	; Call printf 32 4
	mov qword [rbp + 32], qtest$5
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 4
	jmp printf

 qtest$5:
	; PostCall 32

 qtest$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qtest$7:
	; Call f 32 0
	mov qword [rbp + 32], qtest$8
	mov [rbp + 40], rbp
	mov rax, [rbp + 24]
	add rbp, 32
	jmp rax

 qtest$8:
	; PostCall 32

 qtest$9:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 qtest$10:
	; FunctionEnd qtest

section .data

string_hello3A2025u0A#:
	; Initializer String hello: %u\n
	db "hello: %u", 10, 0

section .data

string_Y#:
	; Initializer String Y
	db "Y", 0

section .text

 stdlib_testZ:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_testZ$1:
	; Parameter pointer "hello: %u\n" 48
	mov qword [rbp + 48], string_hello3A2025u0A#

 stdlib_testZ$2:
	; IntegralToIntegral £temporary4382 hello
	mov rax, hello

 stdlib_testZ$3:
	; Parameter unsigned int £temporary4382 56
	mov [rbp + 56], eax

 stdlib_testZ$4:
	; Call printf 24 4
	mov qword [rbp + 24], stdlib_testZ$5
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_testZ$5:
	; PostCall 24

 stdlib_testZ$6:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_testZ$7:
	; Parameter pointer hello 48
	mov qword [rbp + 48], hello

 stdlib_testZ$8:
	; Call qtest 24 0
	mov qword [rbp + 24], stdlib_testZ$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp qtest

 stdlib_testZ$9:
	; PostCall 24

 stdlib_testZ$10:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_testZ$11:
	; Parameter pointer "Y" 48
	mov qword [rbp + 48], string_Y#

 stdlib_testZ$12:
	; Call printf 24 0
	mov qword [rbp + 24], stdlib_testZ$13
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 stdlib_testZ$13:
	; PostCall 24

 stdlib_testZ$14:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 stdlib_testZ$15:
	; FunctionEnd stdlib_testZ

section .data

string_atof28221232E4562229203D2025f0A#:
	; Initializer String atof("123.456") = %f\n
	db "atof(", 34, "123.456", 34, ") = %f", 10, 0

section .data

string_1232E456#:
	; Initializer String 123.456
	db "123.456", 0

section .data

string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#:
	; Initializer String strtod("123.456789abc", &p) = (%f, %s)\n
	db "strtod(", 34, "123.456789abc", 34, ", &p) = (%f, %s)", 10, 0

section .data

string_1232E456789abc#:
	; Initializer String 123.456789abc
	db "123.456789abc", 0

section .data

string_0Agetenv2822path2229203D2025s0A#:
	; Initializer String \ngetenv("path") = %s\n
	db 10, "getenv(", 34, "path", 34, ") = %s", 10, 0

section .data

string_path#:
	; Initializer String path
	db "path", 0

section .data

string_system2822dir22290A#:
	; Initializer String system("dir")\n
	db "system(", 34, "dir", 34, ")", 10, 0

section .data

string_dir#:
	; Initializer String dir
	db "dir", 0

section .data

string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#:
	; Initializer String \nabs(-3) = %i, abs(3) = %i\n
	db 10, "abs(-3) = %i, abs(3) = %i", 10, 0

section .data

string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#:
	; Initializer String labs(-3l) = %li, labs(3l) = %li\n\n
	db "labs(-3l) = %li, labs(3l) = %li", 10, 10, 0

section .data

string_div_t28102C20329203D202825i2C2025i290A#:
	; Initializer String div_t(10, 3) = (%i, %i)\n
	db "div_t(10, 3) = (%i, %i)", 10, 0

section .data

string_div_t28102C20329203D202825i2C2025i290A0A#:
	; Initializer String div_t(10, 3) = (%i, %i)\n\n
	db "div_t(10, 3) = (%i, %i)", 10, 10, 0

section .data

string_ldiv_t28102C20329203D202825li2C2025li290A#:
	; Initializer String ldiv_t(10, 3) = (%li, %li)\n
	db "ldiv_t(10, 3) = (%li, %li)", 10, 0

section .data

string_ldiv_t28102C20329203D202825li2C2025li290A0A#:
	; Initializer String ldiv_t(10, 3) = (%li, %li)\n\n
	db "ldiv_t(10, 3) = (%li, %li)", 10, 10, 0

section .data

string_0AA20List2013A20#:
	; Initializer String \nA List 1: 
	db 10, "A List 1: ", 0

section .data

string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

string_0AB20List2023A20#:
	; Initializer String \nB List 2: 
	db 10, "B List 2: ", 0

section .data

string_0AC20List2033A20#:
	; Initializer String \nC List 3: 
	db 10, "C List 3: ", 0

section .data

string_0A0ASearch3A0A#:
	; Initializer String \n\nSearch:\n
	db 10, 10, "Search:", 10, 0

section .data

string_20202825i2C2025i290A#:
	; Initializer String   (%i, %i)\n
	db "  (%i, %i)", 10, 0

section .data

string_0A#:
	; Initializer String \n
	db 10, 0

section .data

int8$4#:
	; Initializer Pointer 4
	dq 4

section .text

 stdlib_test:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$1:
	; Parameter pointer "atof("123.456") = %f\n" 56
	mov qword [rbp + 56], string_atof28221232E4562229203D2025f0A#

 stdlib_test$2:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$3:
	; Parameter pointer "123.456" 88
	mov qword [rbp + 88], string_1232E456#

 stdlib_test$4:
	; Call atof 64 0
	mov qword [rbp + 64], stdlib_test$5
	mov [rbp + 72], rbp
	add rbp, 64
	jmp atof

 stdlib_test$5:
	; PostCall 64

 stdlib_test$6:
	; GetReturnValue £temporary4386

 stdlib_test$7:
	; Parameter double £temporary4386 64
	fstp qword [rbp + 64]

 stdlib_test$8:
	; Call printf 32 8
	mov qword [rbp + 32], stdlib_test$9
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$9:
	; PostCall 32

 stdlib_test$10:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$11:
	; Parameter pointer "strtod("123.456789abc", &p) = (%f, %s)\n" 56
	mov qword [rbp + 56], string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#

 stdlib_test$12:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$13:
	; Parameter pointer "123.456789abc" 88
	mov qword [rbp + 88], string_1232E456789abc#

 stdlib_test$14:
	; Address £temporary4388 p
	mov rsi, rbp
	add rsi, 24

 stdlib_test$15:
	; Parameter pointer £temporary4388 96
	mov [rbp + 96], rsi

 stdlib_test$16:
	; Call strtod 64 0
	mov qword [rbp + 64], stdlib_test$17
	mov [rbp + 72], rbp
	add rbp, 64
	jmp strtod

 stdlib_test$17:
	; PostCall 64

 stdlib_test$18:
	; GetReturnValue £temporary4389

 stdlib_test$19:
	; Parameter double £temporary4389 64
	fstp qword [rbp + 64]

 stdlib_test$20:
	; Parameter pointer p 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 stdlib_test$21:
	; Call printf 32 16
	mov qword [rbp + 32], stdlib_test$22
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$22:
	; PostCall 32

 stdlib_test$23:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$24:
	; Parameter pointer "\ngetenv("path") = %s\n" 48
	mov qword [rbp + 48], string_0Agetenv2822path2229203D2025s0A#

 stdlib_test$25:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$26:
	; Parameter pointer "path" 80
	mov qword [rbp + 80], string_path#

 stdlib_test$27:
	; Call getenv 56 0
	mov qword [rbp + 56], stdlib_test$28
	mov [rbp + 64], rbp
	add rbp, 56
	jmp getenv

 stdlib_test$28:
	; PostCall 56

 stdlib_test$29:
	; GetReturnValue £temporary4391

 stdlib_test$30:
	; Parameter pointer £temporary4391 56
	mov [rbp + 56], rbx

 stdlib_test$31:
	; Call printf 24 8
	mov qword [rbp + 24], stdlib_test$32
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$32:
	; PostCall 24

 stdlib_test$33:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$34:
	; Parameter pointer "system("dir")\n" 48
	mov qword [rbp + 48], string_system2822dir22290A#

 stdlib_test$35:
	; Call printf 24 0
	mov qword [rbp + 24], stdlib_test$36
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 stdlib_test$36:
	; PostCall 24

 stdlib_test$37:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$38:
	; Parameter pointer "dir" 48
	mov qword [rbp + 48], string_dir#

 stdlib_test$39:
	; Call system 24 0
	mov qword [rbp + 24], stdlib_test$40
	mov [rbp + 32], rbp
	add rbp, 24
	jmp system

 stdlib_test$40:
	; PostCall 24

 stdlib_test$41:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$42:
	; Parameter pointer "\nabs(-3) = %i, abs(3) = %i\n" 48
	mov qword [rbp + 48], string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#

 stdlib_test$43:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$44:
	; Parameter signedint -3 80
	mov dword [rbp + 80], -3

 stdlib_test$45:
	; Call @abs 56 0
	mov qword [rbp + 56], stdlib_test$46
	mov [rbp + 64], rbp
	add rbp, 56
	jmp @abs

 stdlib_test$46:
	; PostCall 56

 stdlib_test$47:
	; GetReturnValue £temporary4395

 stdlib_test$48:
	; Parameter signedint £temporary4395 56
	mov [rbp + 56], ebx

 stdlib_test$49:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$50:
	; Parameter signedint 3 84
	mov dword [rbp + 84], 3

 stdlib_test$51:
	; Call @abs 60 0
	mov qword [rbp + 60], stdlib_test$52
	mov [rbp + 68], rbp
	add rbp, 60
	jmp @abs

 stdlib_test$52:
	; PostCall 60

 stdlib_test$53:
	; GetReturnValue £temporary4396

 stdlib_test$54:
	; Parameter signedint £temporary4396 60
	mov [rbp + 60], ebx

 stdlib_test$55:
	; Call printf 24 8
	mov qword [rbp + 24], stdlib_test$56
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$56:
	; PostCall 24

 stdlib_test$57:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$58:
	; Parameter pointer "labs(-3l) = %li, labs(3l) = %li\n\n" 48
	mov qword [rbp + 48], string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#

 stdlib_test$59:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$60:
	; Parameter signed long int -3 80
	mov qword [rbp + 80], -3

 stdlib_test$61:
	; Call labs 56 0
	mov qword [rbp + 56], stdlib_test$62
	mov [rbp + 64], rbp
	add rbp, 56
	jmp labs

 stdlib_test$62:
	; PostCall 56

 stdlib_test$63:
	; GetReturnValue £temporary4398

 stdlib_test$64:
	; Parameter signed long int £temporary4398 56
	mov [rbp + 56], rbx

 stdlib_test$65:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$66:
	; Parameter signed long int 3 88
	mov qword [rbp + 88], 3

 stdlib_test$67:
	; Call labs 64 0
	mov qword [rbp + 64], stdlib_test$68
	mov [rbp + 72], rbp
	add rbp, 64
	jmp labs

 stdlib_test$68:
	; PostCall 64

 stdlib_test$69:
	; GetReturnValue £temporary4399

 stdlib_test$70:
	; Parameter signed long int £temporary4399 64
	mov [rbp + 64], rbx

 stdlib_test$71:
	; Call printf 24 16
	mov qword [rbp + 24], stdlib_test$72
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$72:
	; PostCall 24

 stdlib_test$73:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$74:
	; Parameter signedint 10 48
	mov dword [rbp + 48], 10

 stdlib_test$75:
	; Parameter signedint 3 52
	mov dword [rbp + 52], 3

 stdlib_test$76:
	; Call div 24 0
	mov qword [rbp + 24], stdlib_test$77
	mov [rbp + 32], rbp
	add rbp, 24
	jmp div

 stdlib_test$77:
	; PostCall 24

 stdlib_test$78:
	; GetReturnValue £temporary4401 -> £temporary4402

 stdlib_test$79:
	; AssignInitSize i £temporary4401 -> £temporary4402
	mov rsi, rbp
	add rsi, 24
	mov al, 8

 stdlib_test$80:
	; Assign i £temporary4401 -> £temporary4402
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$80

 stdlib_test$81:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$82:
	; Parameter pointer "div_t(10, 3) = (%i, %i)\n" 56
	mov qword [rbp + 56], string_div_t28102C20329203D202825i2C2025i290A#

 stdlib_test$83:
	; Parameter signedint i.quot 64
	mov eax, [rbp + 24]
	mov [rbp + 64], eax

 stdlib_test$84:
	; Parameter signedint i.rem 68
	mov eax, [rbp + 28]
	mov [rbp + 68], eax

 stdlib_test$85:
	; Call printf 32 8
	mov qword [rbp + 32], stdlib_test$86
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$86:
	; PostCall 32

 stdlib_test$87:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$88:
	; ParameterInitSize struct i 56
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 56
	mov al, 8

 stdlib_test$89:
	; Parameter struct i 56
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne stdlib_test$89

 stdlib_test$90:
	; Call print_div 32 0
	mov qword [rbp + 32], stdlib_test$91
	mov [rbp + 40], rbp
	add rbp, 32
	jmp print_div

 stdlib_test$91:
	; PostCall 32

 stdlib_test$92:
	; GetReturnValue £temporary4406 -> £temporary4407

 stdlib_test$93:
	; AssignInitSize j £temporary4406 -> £temporary4407
	mov rsi, rbp
	add rsi, 32
	mov al, 8

 stdlib_test$94:
	; Assign j £temporary4406 -> £temporary4407
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$94

 stdlib_test$95:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$96:
	; Parameter pointer "div_t(10, 3) = (%i, %i)\n\n" 64
	mov qword [rbp + 64], string_div_t28102C20329203D202825i2C2025i290A0A#

 stdlib_test$97:
	; Parameter signedint j.quot 72
	mov eax, [rbp + 32]
	mov [rbp + 72], eax

 stdlib_test$98:
	; Parameter signedint j.rem 76
	mov eax, [rbp + 36]
	mov [rbp + 76], eax

 stdlib_test$99:
	; Call printf 40 8
	mov qword [rbp + 40], stdlib_test$100
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$100:
	; PostCall 40

 stdlib_test$101:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$102:
	; Parameter signed long int 10 48
	mov qword [rbp + 48], 10

 stdlib_test$103:
	; Parameter signed long int 3 56
	mov qword [rbp + 56], 3

 stdlib_test$104:
	; Call ldiv 24 0
	mov qword [rbp + 24], stdlib_test$105
	mov [rbp + 32], rbp
	add rbp, 24
	jmp ldiv

 stdlib_test$105:
	; PostCall 24

 stdlib_test$106:
	; GetReturnValue £temporary4411 -> £temporary4412

 stdlib_test$107:
	; AssignInitSize li £temporary4411 -> £temporary4412
	mov rsi, rbp
	add rsi, 24
	mov al, 16

 stdlib_test$108:
	; Assign li £temporary4411 -> £temporary4412
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$108

 stdlib_test$109:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$110:
	; Parameter pointer "ldiv_t(10, 3) = (%li, %li)\n" 64
	mov qword [rbp + 64], string_ldiv_t28102C20329203D202825li2C2025li290A#

 stdlib_test$111:
	; Parameter signed long int li.quot 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 stdlib_test$112:
	; Parameter signed long int li.rem 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 stdlib_test$113:
	; Call printf 40 16
	mov qword [rbp + 40], stdlib_test$114
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$114:
	; PostCall 40

 stdlib_test$115:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$116:
	; ParameterInitSize struct li 64
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 64
	mov al, 16

 stdlib_test$117:
	; Parameter struct li 64
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne stdlib_test$117

 stdlib_test$118:
	; Call print_ldiv 40 0
	mov qword [rbp + 40], stdlib_test$119
	mov [rbp + 48], rbp
	add rbp, 40
	jmp print_ldiv

 stdlib_test$119:
	; PostCall 40

 stdlib_test$120:
	; GetReturnValue £temporary4416 -> £temporary4417

 stdlib_test$121:
	; AssignInitSize lj £temporary4416 -> £temporary4417
	mov rsi, rbp
	add rsi, 40
	mov al, 16

 stdlib_test$122:
	; Assign lj £temporary4416 -> £temporary4417
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$122

 stdlib_test$123:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$124:
	; Parameter pointer "ldiv_t(10, 3) = (%li, %li)\n\n" 80
	mov qword [rbp + 80], string_ldiv_t28102C20329203D202825li2C2025li290A0A#

 stdlib_test$125:
	; Parameter signed long int lj.quot 88
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

 stdlib_test$126:
	; Parameter signed long int lj.rem 96
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 stdlib_test$127:
	; Call printf 56 16
	mov qword [rbp + 56], stdlib_test$128
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$128:
	; PostCall 56

 stdlib_test$129:
	; Assign list[0] 3
	mov dword [rbp + 24], 3

 stdlib_test$130:
	; Assign list[1] 4
	mov dword [rbp + 28], 4

 stdlib_test$131:
	; Assign list[2] 2
	mov dword [rbp + 32], 2

 stdlib_test$132:
	; Assign list[3] 1
	mov dword [rbp + 36], 1

 stdlib_test$133:
	; Assign size 4
	mov dword [rbp + 40], 4

 stdlib_test$134:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$135:
	; Parameter pointer "\nA List 1: " 72
	mov qword [rbp + 72], string_0AA20List2013A20#

 stdlib_test$136:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$137
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$137:
	; PostCall 48

 stdlib_test$138:
	; Assign index 0
	mov dword [rbp + 44], 0

 stdlib_test$139:
	; SignedGreaterThanEqual 151 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$151

 stdlib_test$140:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$141:
	; Parameter pointer "%i " 72
	mov qword [rbp + 72], string_25i20#

 stdlib_test$142:
	; IntegralToIntegral £temporary4429 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$143:
	; UnsignedMultiply £temporary4431 £temporary4429 4
	xor rdx, rdx
	mul qword [int8$4#]

 stdlib_test$144:
	; BinaryAdd £temporary4430 list £temporary4431
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$145:
	; Dereference £temporary4432 -> £temporary4430 £temporary4430 0

 stdlib_test$146:
	; Parameter signedint £temporary4432 -> £temporary4430 80
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$147:
	; Call printf 48 4
	mov qword [rbp + 48], stdlib_test$148
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$148:
	; PostCall 48

 stdlib_test$149:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 stdlib_test$150:
	; Goto 139
	jmp stdlib_test$139

 stdlib_test$151:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$152:
	; Parameter pointer "\nB List 2: " 72
	mov qword [rbp + 72], string_0AB20List2023A20#

 stdlib_test$153:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$154
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$154:
	; PostCall 48

 stdlib_test$155:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$156:
	; Parameter pointer list 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

 stdlib_test$157:
	; Parameter signedint size 80
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 stdlib_test$158:
	; Parameter signedint 4 84
	mov dword [rbp + 84], 4

 stdlib_test$159:
	; Parameter pointer compare 88
	mov qword [rbp + 88], compare

 stdlib_test$160:
	; Call qsort 48 0
	mov qword [rbp + 48], stdlib_test$161
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp qsort

 stdlib_test$161:
	; PostCall 48

 stdlib_test$162:
	; Assign index 0
	mov dword [rbp + 44], 0

 stdlib_test$163:
	; SignedGreaterThanEqual 175 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$175

 stdlib_test$164:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$165:
	; Parameter pointer "%i " 72
	mov qword [rbp + 72], string_25i20#

 stdlib_test$166:
	; IntegralToIntegral £temporary4439 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$167:
	; UnsignedMultiply £temporary4441 £temporary4439 4
	xor rdx, rdx
	mul qword [int8$4#]

 stdlib_test$168:
	; BinaryAdd £temporary4440 list £temporary4441
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$169:
	; Dereference £temporary4442 -> £temporary4440 £temporary4440 0

 stdlib_test$170:
	; Parameter signedint £temporary4442 -> £temporary4440 80
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$171:
	; Call printf 48 4
	mov qword [rbp + 48], stdlib_test$172
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$172:
	; PostCall 48

 stdlib_test$173:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 stdlib_test$174:
	; Goto 163
	jmp stdlib_test$163

 stdlib_test$175:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$176:
	; Parameter pointer "\nC List 3: " 72
	mov qword [rbp + 72], string_0AC20List2033A20#

 stdlib_test$177:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$178
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$178:
	; PostCall 48

 stdlib_test$179:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$180:
	; Parameter pointer list 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

 stdlib_test$181:
	; Parameter signedint size 80
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 stdlib_test$182:
	; Parameter signedint 4 84
	mov dword [rbp + 84], 4

 stdlib_test$183:
	; Parameter pointer reverse_compare 88
	mov qword [rbp + 88], reverse_compare

 stdlib_test$184:
	; Call qsort 48 0
	mov qword [rbp + 48], stdlib_test$185
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp qsort

 stdlib_test$185:
	; PostCall 48

 stdlib_test$186:
	; Assign index 0
	mov dword [rbp + 44], 0

 stdlib_test$187:
	; SignedGreaterThanEqual 199 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$199

 stdlib_test$188:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$189:
	; Parameter pointer "%i " 72
	mov qword [rbp + 72], string_25i20#

 stdlib_test$190:
	; IntegralToIntegral £temporary4449 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$191:
	; UnsignedMultiply £temporary4451 £temporary4449 4
	xor rdx, rdx
	mul qword [int8$4#]

 stdlib_test$192:
	; BinaryAdd £temporary4450 list £temporary4451
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$193:
	; Dereference £temporary4452 -> £temporary4450 £temporary4450 0

 stdlib_test$194:
	; Parameter signedint £temporary4452 -> £temporary4450 80
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$195:
	; Call printf 48 4
	mov qword [rbp + 48], stdlib_test$196
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$196:
	; PostCall 48

 stdlib_test$197:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 stdlib_test$198:
	; Goto 187
	jmp stdlib_test$187

 stdlib_test$199:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$200:
	; Parameter pointer "\n\nSearch:\n" 72
	mov qword [rbp + 72], string_0A0ASearch3A0A#

 stdlib_test$201:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$202
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$202:
	; PostCall 48

 stdlib_test$203:
	; Assign key 0
	mov dword [rbp + 44], 0

 stdlib_test$204:
	; SignedGreaterThanEqual 233 key 6
	cmp dword [rbp + 44], 6
	jge stdlib_test$233

 stdlib_test$205:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$206:
	; Address £temporary4457 key
	mov rsi, rbp
	add rsi, 44

 stdlib_test$207:
	; Parameter pointer £temporary4457 72
	mov [rbp + 72], rsi

 stdlib_test$208:
	; Parameter pointer list 80
	mov [rbp + 80], rbp
	add qword [rbp + 80], 24

 stdlib_test$209:
	; Parameter signedint size 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 stdlib_test$210:
	; Parameter signedint 4 92
	mov dword [rbp + 92], 4

 stdlib_test$211:
	; Parameter pointer compare 96
	mov qword [rbp + 96], compare

 stdlib_test$212:
	; Call bsearch 48 0
	mov qword [rbp + 48], stdlib_test$213
	mov [rbp + 56], rbp
	add rbp, 48
	jmp bsearch

 stdlib_test$213:
	; PostCall 48

 stdlib_test$214:
	; GetReturnValue £temporary4459

 stdlib_test$215:
	; IntegralToIntegral £temporary4460 £temporary4459

 stdlib_test$216:
	; Assign p £temporary4460
	mov [rbp + 48], rbx

 stdlib_test$217:
	; Equal 223 p 0
	cmp qword [rbp + 48], 0
	je stdlib_test$223

 stdlib_test$218:
	; BinarySubtract £temporary4463 p list
	mov rax, [rbp + 48]
	mov rbx, rbp
	add rbx, 24
	sub rax, rbx

 stdlib_test$219:
	; UnsignedDivide £temporary4462 £temporary4463 4
	xor rdx, rdx
	div qword [int8$4#]

 stdlib_test$220:
	; IntegralToIntegral £temporary4464 £temporary4462

 stdlib_test$221:
	; Assign £temporary4465 £temporary4464

 stdlib_test$222:
	; Goto 224
	jmp stdlib_test$224

 stdlib_test$223:
	; Assign £temporary4465 -1
	mov eax, -1

 stdlib_test$224:
	; Assign index £temporary4465
	mov [rbp + 56], eax

 stdlib_test$225:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$226:
	; Parameter pointer "  (%i, %i)\n" 84
	mov qword [rbp + 84], string_20202825i2C2025i290A#

 stdlib_test$227:
	; Parameter signedint key 92
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

 stdlib_test$228:
	; Parameter signedint index 96
	mov eax, [rbp + 56]
	mov [rbp + 96], eax

 stdlib_test$229:
	; Call printf 60 8
	mov qword [rbp + 60], stdlib_test$230
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$230:
	; PostCall 60

 stdlib_test$231:
	; BinaryAdd key key 1
	inc dword [rbp + 44]

 stdlib_test$232:
	; Goto 204
	jmp stdlib_test$204

 stdlib_test$233:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$234:
	; Parameter pointer "\n" 68
	mov qword [rbp + 68], string_0A#

 stdlib_test$235:
	; Call printf 44 0
	mov qword [rbp + 44], stdlib_test$236
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	jmp printf

 stdlib_test$236:
	; PostCall 44

 stdlib_test$237:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 stdlib_test$238:
	; FunctionEnd stdlib_test
