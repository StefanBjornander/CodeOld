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
	; IntegralToIntegral £temporary4437 valuePtr1
	mov rsi, [rbp + 24]

 compare$1:
	; Dereference £temporary4438 -> £temporary4437 £temporary4437 0

 compare$2:
	; Assign intValue1 £temporary4438 -> £temporary4437
	mov eax, [rsi]
	mov [rbp + 40], eax

 compare$3:
	; IntegralToIntegral £temporary4439 valuePtr2
	mov rsi, [rbp + 32]

 compare$4:
	; Dereference £temporary4440 -> £temporary4439 £temporary4439 0

 compare$5:
	; Assign intValue2 £temporary4440 -> £temporary4439
	mov eax, [rsi]
	mov [rbp + 44], eax

 compare$6:
	; SignedGreaterThanEqual 9 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge compare$9

 compare$7:
	; Assign £temporary4444 -1
	mov ebx, -1

 compare$8:
	; Goto 13
	jmp compare$13

 compare$9:
	; NotEqual 12 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jne compare$12

 compare$10:
	; Assign £temporary4444 0
	mov ebx, 0

 compare$11:
	; Goto 13
	jmp compare$13

 compare$12:
	; Assign £temporary4444 1
	mov ebx, 1

 compare$13:
	; SetReturnValue

 compare$14:
	; Return £temporary4444
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 compare$15:
	; FunctionEnd compare

section .text

 reverse_compare:
	; IntegralToIntegral £temporary4445 valuePtr1
	mov rsi, [rbp + 24]

 reverse_compare$1:
	; Dereference £temporary4446 -> £temporary4445 £temporary4445 0

 reverse_compare$2:
	; Assign intValue1 £temporary4446 -> £temporary4445
	mov eax, [rsi]
	mov [rbp + 40], eax

 reverse_compare$3:
	; IntegralToIntegral £temporary4447 valuePtr2
	mov rsi, [rbp + 32]

 reverse_compare$4:
	; Dereference £temporary4448 -> £temporary4447 £temporary4447 0

 reverse_compare$5:
	; Assign intValue2 £temporary4448 -> £temporary4447
	mov eax, [rsi]
	mov [rbp + 44], eax

 reverse_compare$6:
	; SignedGreaterThanEqual 9 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge reverse_compare$9

 reverse_compare$7:
	; Assign £temporary4452 1
	mov ebx, 1

 reverse_compare$8:
	; Goto 13
	jmp reverse_compare$13

 reverse_compare$9:
	; NotEqual 12 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jne reverse_compare$12

 reverse_compare$10:
	; Assign £temporary4452 0
	mov ebx, 0

 reverse_compare$11:
	; Goto 13
	jmp reverse_compare$13

 reverse_compare$12:
	; Assign £temporary4452 -1
	mov ebx, -1

 reverse_compare$13:
	; SetReturnValue

 reverse_compare$14:
	; Return £temporary4452
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 reverse_compare$15:
	; FunctionEnd reverse_compare

section .data

@13999$string_div_t20quot2025i20rem2025i0A#:
	; Initializer String div_t quot %i rem %i\n
	db "div_t quot %i rem %i", 10, 0

section .text

 print_div:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_div$1:
	; Parameter 56 pointer "div_t quot %i rem %i\n"
	mov qword [rbp + 56], @13999$string_div_t20quot2025i20rem2025i0A#

 print_div$2:
	; Parameter 64 signedint d.quot
	mov eax, [rbp + 24]
	mov [rbp + 64], eax

 print_div$3:
	; Parameter 68 signedint d.rem
	mov eax, [rbp + 28]
	mov [rbp + 68], eax

 print_div$4:
	; Call 32 printf 8
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
	; SetReturnValue

 print_div$9:
	; Return d
	mov rbx, rbp
	add rbx, 24
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_div$10:
	; FunctionEnd print_div

section .data

@14006$string_ldiv_t20quot2025li20rem2025li0A#:
	; Initializer String ldiv_t quot %li rem %li\n
	db "ldiv_t quot %li rem %li", 10, 0

section .text

 print_ldiv:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_ldiv$1:
	; Parameter 64 pointer "ldiv_t quot %li rem %li\n"
	mov qword [rbp + 64], @14006$string_ldiv_t20quot2025li20rem2025li0A#

 print_ldiv$2:
	; Parameter 72 signed long int ld.quot
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 print_ldiv$3:
	; Parameter 80 signed long int ld.rem
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 print_ldiv$4:
	; Call 40 printf 16
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
	; SetReturnValue

 print_ldiv$9:
	; Return ld
	mov rbx, rbp
	add rbx, 24
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_ldiv$10:
	; FunctionEnd print_ldiv

section .data

@14013$string_exit10A#:
	; Initializer String exit1\n
	db "exit1", 10, 0

section .text

 exit_handle1x:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle1x$1:
	; Parameter 48 pointer "exit1\n"
	mov qword [rbp + 48], @14013$string_exit10A#

 exit_handle1x$2:
	; Call 24 printf 0
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

@14016$string_exit20A#:
	; Initializer String exit2\n
	db "exit2", 10, 0

section .text

 exit_handle2x:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle2x$1:
	; Parameter 48 pointer "exit2\n"
	mov qword [rbp + 48], @14016$string_exit20A#

 exit_handle2x$2:
	; Call 24 printf 0
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

@14019$string_exit30A#:
	; Initializer String exit3\n
	db "exit3", 10, 0

section .text

 exit_handle3x:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle3x$1:
	; Parameter 48 pointer "exit3\n"
	mov qword [rbp + 48], @14019$string_exit30A#

 exit_handle3x$2:
	; Call 24 printf 0
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

@14022$string_HelloFFF#:
	; Initializer String HelloFFF
	db "HelloFFF", 0

section .text

 hello:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 hello$1:
	; Parameter 48 pointer "HelloFFF"
	mov qword [rbp + 48], @14022$string_HelloFFF#

 hello$2:
	; Call 24 printf 0
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

@14026$string_f3A2025u0A#:
	; Initializer String f: %u\n
	db "f: %u", 10, 0

section .text

 qtest:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qtest$1:
	; Parameter 56 pointer "f: %u\n"
	mov qword [rbp + 56], @14026$string_f3A2025u0A#

 qtest$2:
	; IntegralToIntegral £temporary4473 f
	mov rax, [rbp + 24]

 qtest$3:
	; Parameter 64 unsigned int £temporary4473
	mov [rbp + 64], eax

 qtest$4:
	; Call 32 printf 4
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
	; Call 32 f 0
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

@14030$string_hello3A2025u0A#:
	; Initializer String hello: %u\n
	db "hello: %u", 10, 0

section .data

@14031$string_Y#:
	; Initializer String Y
	db "Y", 0

section .text

 stdlib_testZ:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_testZ$1:
	; Parameter 48 pointer "hello: %u\n"
	mov qword [rbp + 48], @14030$string_hello3A2025u0A#

 stdlib_testZ$2:
	; IntegralToIntegral £temporary4476 hello
	mov rax, hello

 stdlib_testZ$3:
	; Parameter 56 unsigned int £temporary4476
	mov [rbp + 56], eax

 stdlib_testZ$4:
	; Call 24 printf 4
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
	; Parameter 48 pointer hello
	mov qword [rbp + 48], hello

 stdlib_testZ$8:
	; Call 24 qtest 0
	mov qword [rbp + 24], stdlib_testZ$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp qtest

 stdlib_testZ$9:
	; PostCall 24

 stdlib_testZ$10:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_testZ$11:
	; Parameter 48 pointer "Y"
	mov qword [rbp + 48], @14031$string_Y#

 stdlib_testZ$12:
	; Call 24 printf 0
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

@14038$string_atof28221232E4562229203D2025f0A#:
	; Initializer String atof("123.456") = %f\n
	db "atof(", 34, "123.456", 34, ") = %f", 10, 0

section .data

@14039$string_1232E456#:
	; Initializer String 123.456
	db "123.456", 0

section .data

@14040$string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#:
	; Initializer String strtod("123.456789abc", &p) = (%f, %s)\n
	db "strtod(", 34, "123.456789abc", 34, ", &p) = (%f, %s)", 10, 0

section .data

@14041$string_1232E456789abc#:
	; Initializer String 123.456789abc
	db "123.456789abc", 0

section .data

@14042$string_0Agetenv2822path2229203D2025s0A#:
	; Initializer String \ngetenv("path") = %s\n
	db 10, "getenv(", 34, "path", 34, ") = %s", 10, 0

section .data

@14043$string_path#:
	; Initializer String path
	db "path", 0

section .data

@14044$string_system2822dir22290A#:
	; Initializer String system("dir")\n
	db "system(", 34, "dir", 34, ")", 10, 0

section .data

@14045$string_dir#:
	; Initializer String dir
	db "dir", 0

section .data

@14046$string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#:
	; Initializer String \nabs(-3) = %i, abs(3) = %i\n
	db 10, "abs(-3) = %i, abs(3) = %i", 10, 0

section .data

@14051$string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#:
	; Initializer String labs(-3l) = %li, labs(3l) = %li\n\n
	db "labs(-3l) = %li, labs(3l) = %li", 10, 10, 0

section .data

@14061$string_div_t28102C20329203D202825i2C2025i290A#:
	; Initializer String div_t(10, 3) = (%i, %i)\n
	db "div_t(10, 3) = (%i, %i)", 10, 0

section .data

@14063$string_div_t28102C20329203D202825i2C2025i290A0A#:
	; Initializer String div_t(10, 3) = (%i, %i)\n\n
	db "div_t(10, 3) = (%i, %i)", 10, 10, 0

section .data

@14069$string_ldiv_t28102C20329203D202825li2C2025li290A#:
	; Initializer String ldiv_t(10, 3) = (%li, %li)\n
	db "ldiv_t(10, 3) = (%li, %li)", 10, 0

section .data

@14071$string_ldiv_t28102C20329203D202825li2C2025li290A0A#:
	; Initializer String ldiv_t(10, 3) = (%li, %li)\n\n
	db "ldiv_t(10, 3) = (%li, %li)", 10, 10, 0

section .data

@14088$string_0AA20List2013A20#:
	; Initializer String \nA List 1: 
	db 10, "A List 1: ", 0

section .data

@14093$string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

@14096$string_0AB20List2023A20#:
	; Initializer String \nB List 2: 
	db 10, "B List 2: ", 0

section .data

@14104$string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

@14107$string_0AC20List2033A20#:
	; Initializer String \nC List 3: 
	db 10, "C List 3: ", 0

section .data

@14115$string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

@14118$string_0A0ASearch3A0A#:
	; Initializer String \n\nSearch:\n
	db 10, 10, "Search:", 10, 0

section .data

@14136$string_20202825i2C2025i290A#:
	; Initializer String   (%i, %i)\n
	db "  (%i, %i)", 10, 0

section .data

@14137$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@14094$int8$4#:
	; Initializer Pointer 4
	dq 4

section .data

@14105$int8$4#:
	; Initializer Pointer 4
	dq 4

section .data

@14116$int8$4#:
	; Initializer Pointer 4
	dq 4

section .data

@14132$int8$4#:
	; Initializer Pointer 4
	dq 4

section .text

 stdlib_test:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$1:
	; Parameter 56 pointer "atof("123.456") = %f\n"
	mov qword [rbp + 56], @14038$string_atof28221232E4562229203D2025f0A#

 stdlib_test$2:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$3:
	; Parameter 88 pointer "123.456"
	mov qword [rbp + 88], @14039$string_1232E456#

 stdlib_test$4:
	; Call 64 atof 0
	mov qword [rbp + 64], stdlib_test$5
	mov [rbp + 72], rbp
	add rbp, 64
	jmp atof

 stdlib_test$5:
	; PostCall 64

 stdlib_test$6:
	; GetReturnValue £temporary4480

 stdlib_test$7:
	; Parameter 64 double £temporary4480
	fstp qword [rbp + 64]

 stdlib_test$8:
	; Call 32 printf 8
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
	; Parameter 56 pointer "strtod("123.456789abc", &p) = (%f, %s)\n"
	mov qword [rbp + 56], @14040$string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#

 stdlib_test$12:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$13:
	; Parameter 88 pointer "123.456789abc"
	mov qword [rbp + 88], @14041$string_1232E456789abc#

 stdlib_test$14:
	; Address £temporary4482 p
	mov rsi, rbp
	add rsi, 24

 stdlib_test$15:
	; Parameter 96 pointer £temporary4482
	mov [rbp + 96], rsi

 stdlib_test$16:
	; Call 64 strtod 0
	mov qword [rbp + 64], stdlib_test$17
	mov [rbp + 72], rbp
	add rbp, 64
	jmp strtod

 stdlib_test$17:
	; PostCall 64

 stdlib_test$18:
	; GetReturnValue £temporary4483

 stdlib_test$19:
	; Parameter 64 double £temporary4483
	fstp qword [rbp + 64]

 stdlib_test$20:
	; Parameter 72 pointer p
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 stdlib_test$21:
	; Call 32 printf 16
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
	; Parameter 48 pointer "\ngetenv("path") = %s\n"
	mov qword [rbp + 48], @14042$string_0Agetenv2822path2229203D2025s0A#

 stdlib_test$25:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$26:
	; Parameter 80 pointer "path"
	mov qword [rbp + 80], @14043$string_path#

 stdlib_test$27:
	; Call 56 getenv 0
	mov qword [rbp + 56], stdlib_test$28
	mov [rbp + 64], rbp
	add rbp, 56
	jmp getenv

 stdlib_test$28:
	; PostCall 56

 stdlib_test$29:
	; GetReturnValue £temporary4485

 stdlib_test$30:
	; Parameter 56 pointer £temporary4485
	mov [rbp + 56], rbx

 stdlib_test$31:
	; Call 24 printf 8
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
	; Parameter 48 pointer "system("dir")\n"
	mov qword [rbp + 48], @14044$string_system2822dir22290A#

 stdlib_test$35:
	; Call 24 printf 0
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
	; Parameter 48 pointer "dir"
	mov qword [rbp + 48], @14045$string_dir#

 stdlib_test$39:
	; Call 24 system 0
	mov qword [rbp + 24], stdlib_test$40
	mov [rbp + 32], rbp
	add rbp, 24
	jmp system

 stdlib_test$40:
	; PostCall 24

 stdlib_test$41:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$42:
	; Parameter 48 pointer "\nabs(-3) = %i, abs(3) = %i\n"
	mov qword [rbp + 48], @14046$string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#

 stdlib_test$43:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$44:
	; Parameter 80 signedint -3
	mov dword [rbp + 80], -3

 stdlib_test$45:
	; Call 56 @abs 0
	mov qword [rbp + 56], stdlib_test$46
	mov [rbp + 64], rbp
	add rbp, 56
	jmp @abs

 stdlib_test$46:
	; PostCall 56

 stdlib_test$47:
	; GetReturnValue £temporary4489

 stdlib_test$48:
	; Parameter 56 signedint £temporary4489
	mov [rbp + 56], ebx

 stdlib_test$49:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$50:
	; Parameter 84 signedint 3
	mov dword [rbp + 84], 3

 stdlib_test$51:
	; Call 60 @abs 0
	mov qword [rbp + 60], stdlib_test$52
	mov [rbp + 68], rbp
	add rbp, 60
	jmp @abs

 stdlib_test$52:
	; PostCall 60

 stdlib_test$53:
	; GetReturnValue £temporary4490

 stdlib_test$54:
	; Parameter 60 signedint £temporary4490
	mov [rbp + 60], ebx

 stdlib_test$55:
	; Call 24 printf 8
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
	; Parameter 48 pointer "labs(-3l) = %li, labs(3l) = %li\n\n"
	mov qword [rbp + 48], @14051$string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#

 stdlib_test$59:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$60:
	; Parameter 80 signed long int -3
	mov qword [rbp + 80], -3

 stdlib_test$61:
	; Call 56 labs 0
	mov qword [rbp + 56], stdlib_test$62
	mov [rbp + 64], rbp
	add rbp, 56
	jmp labs

 stdlib_test$62:
	; PostCall 56

 stdlib_test$63:
	; GetReturnValue £temporary4492

 stdlib_test$64:
	; Parameter 56 signed long int £temporary4492
	mov [rbp + 56], rbx

 stdlib_test$65:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$66:
	; Parameter 88 signed long int 3
	mov qword [rbp + 88], 3

 stdlib_test$67:
	; Call 64 labs 0
	mov qword [rbp + 64], stdlib_test$68
	mov [rbp + 72], rbp
	add rbp, 64
	jmp labs

 stdlib_test$68:
	; PostCall 64

 stdlib_test$69:
	; GetReturnValue £temporary4493

 stdlib_test$70:
	; Parameter 64 signed long int £temporary4493
	mov [rbp + 64], rbx

 stdlib_test$71:
	; Call 24 printf 16
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
	; Parameter 48 signedint 10
	mov dword [rbp + 48], 10

 stdlib_test$75:
	; Parameter 52 signedint 3
	mov dword [rbp + 52], 3

 stdlib_test$76:
	; Call 24 div 0
	mov qword [rbp + 24], stdlib_test$77
	mov [rbp + 32], rbp
	add rbp, 24
	jmp div

 stdlib_test$77:
	; PostCall 24

 stdlib_test$78:
	; GetReturnValue £temporary4495 -> £temporary4496

 stdlib_test$79:
	; AssignInitSize i £temporary4495 -> £temporary4496
	mov rsi, rbp
	add rsi, 24
	mov al, 8

 stdlib_test$80:
	; Assign i £temporary4495 -> £temporary4496
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
	; Parameter 56 pointer "div_t(10, 3) = (%i, %i)\n"
	mov qword [rbp + 56], @14061$string_div_t28102C20329203D202825i2C2025i290A#

 stdlib_test$83:
	; Parameter 64 signedint i.quot
	mov eax, [rbp + 24]
	mov [rbp + 64], eax

 stdlib_test$84:
	; Parameter 68 signedint i.rem
	mov eax, [rbp + 28]
	mov [rbp + 68], eax

 stdlib_test$85:
	; Call 32 printf 8
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
	; ParameterInitSize 56 struct i
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 56
	mov al, 8

 stdlib_test$89:
	; Parameter 56 struct i
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne stdlib_test$89

 stdlib_test$90:
	; Call 32 print_div 0
	mov qword [rbp + 32], stdlib_test$91
	mov [rbp + 40], rbp
	add rbp, 32
	jmp print_div

 stdlib_test$91:
	; PostCall 32

 stdlib_test$92:
	; GetReturnValue £temporary4500 -> £temporary4501

 stdlib_test$93:
	; AssignInitSize j £temporary4500 -> £temporary4501
	mov rsi, rbp
	add rsi, 32
	mov al, 8

 stdlib_test$94:
	; Assign j £temporary4500 -> £temporary4501
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
	; Parameter 64 pointer "div_t(10, 3) = (%i, %i)\n\n"
	mov qword [rbp + 64], @14063$string_div_t28102C20329203D202825i2C2025i290A0A#

 stdlib_test$97:
	; Parameter 72 signedint j.quot
	mov eax, [rbp + 32]
	mov [rbp + 72], eax

 stdlib_test$98:
	; Parameter 76 signedint j.rem
	mov eax, [rbp + 36]
	mov [rbp + 76], eax

 stdlib_test$99:
	; Call 40 printf 8
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
	; Parameter 48 signed long int 10
	mov qword [rbp + 48], 10

 stdlib_test$103:
	; Parameter 56 signed long int 3
	mov qword [rbp + 56], 3

 stdlib_test$104:
	; Call 24 ldiv 0
	mov qword [rbp + 24], stdlib_test$105
	mov [rbp + 32], rbp
	add rbp, 24
	jmp ldiv

 stdlib_test$105:
	; PostCall 24

 stdlib_test$106:
	; GetReturnValue £temporary4505 -> £temporary4506

 stdlib_test$107:
	; AssignInitSize li £temporary4505 -> £temporary4506
	mov rsi, rbp
	add rsi, 24
	mov al, 16

 stdlib_test$108:
	; Assign li £temporary4505 -> £temporary4506
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
	; Parameter 64 pointer "ldiv_t(10, 3) = (%li, %li)\n"
	mov qword [rbp + 64], @14069$string_ldiv_t28102C20329203D202825li2C2025li290A#

 stdlib_test$111:
	; Parameter 72 signed long int li.quot
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 stdlib_test$112:
	; Parameter 80 signed long int li.rem
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 stdlib_test$113:
	; Call 40 printf 16
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
	; ParameterInitSize 64 struct li
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 64
	mov al, 16

 stdlib_test$117:
	; Parameter 64 struct li
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne stdlib_test$117

 stdlib_test$118:
	; Call 40 print_ldiv 0
	mov qword [rbp + 40], stdlib_test$119
	mov [rbp + 48], rbp
	add rbp, 40
	jmp print_ldiv

 stdlib_test$119:
	; PostCall 40

 stdlib_test$120:
	; GetReturnValue £temporary4510 -> £temporary4511

 stdlib_test$121:
	; AssignInitSize lj £temporary4510 -> £temporary4511
	mov rsi, rbp
	add rsi, 40
	mov al, 16

 stdlib_test$122:
	; Assign lj £temporary4510 -> £temporary4511
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
	; Parameter 80 pointer "ldiv_t(10, 3) = (%li, %li)\n\n"
	mov qword [rbp + 80], @14071$string_ldiv_t28102C20329203D202825li2C2025li290A0A#

 stdlib_test$125:
	; Parameter 88 signed long int lj.quot
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

 stdlib_test$126:
	; Parameter 96 signed long int lj.rem
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 stdlib_test$127:
	; Call 56 printf 16
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
	; Parameter 72 pointer "\nA List 1: "
	mov qword [rbp + 72], @14088$string_0AA20List2013A20#

 stdlib_test$136:
	; Call 48 printf 0
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
	; Parameter 72 pointer "%i "
	mov qword [rbp + 72], @14093$string_25i20#

 stdlib_test$142:
	; IntegralToIntegral £temporary4523 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$143:
	; UnsignedMultiply £temporary4525 £temporary4523 4
	xor rdx, rdx
	mul qword [@14094$int8$4#]

 stdlib_test$144:
	; BinaryAdd £temporary4524 list £temporary4525
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$145:
	; Dereference £temporary4526 -> £temporary4524 £temporary4524 0

 stdlib_test$146:
	; Parameter 80 signedint £temporary4526 -> £temporary4524
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$147:
	; Call 48 printf 4
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
	; Parameter 72 pointer "\nB List 2: "
	mov qword [rbp + 72], @14096$string_0AB20List2023A20#

 stdlib_test$153:
	; Call 48 printf 0
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
	; Parameter 72 pointer list
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

 stdlib_test$157:
	; Parameter 80 signedint size
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 stdlib_test$158:
	; Parameter 84 signedint 4
	mov dword [rbp + 84], 4

 stdlib_test$159:
	; Parameter 88 pointer compare
	mov qword [rbp + 88], compare

 stdlib_test$160:
	; Call 48 qsort 0
	mov qword [rbp + 48], stdlib_test$161
	mov [rbp + 56], rbp
	add rbp, 48
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
	; Parameter 72 pointer "%i "
	mov qword [rbp + 72], @14104$string_25i20#

 stdlib_test$166:
	; IntegralToIntegral £temporary4533 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$167:
	; UnsignedMultiply £temporary4535 £temporary4533 4
	xor rdx, rdx
	mul qword [@14105$int8$4#]

 stdlib_test$168:
	; BinaryAdd £temporary4534 list £temporary4535
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$169:
	; Dereference £temporary4536 -> £temporary4534 £temporary4534 0

 stdlib_test$170:
	; Parameter 80 signedint £temporary4536 -> £temporary4534
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$171:
	; Call 48 printf 4
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
	; Parameter 72 pointer "\nC List 3: "
	mov qword [rbp + 72], @14107$string_0AC20List2033A20#

 stdlib_test$177:
	; Call 48 printf 0
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
	; Parameter 72 pointer list
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

 stdlib_test$181:
	; Parameter 80 signedint size
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 stdlib_test$182:
	; Parameter 84 signedint 4
	mov dword [rbp + 84], 4

 stdlib_test$183:
	; Parameter 88 pointer reverse_compare
	mov qword [rbp + 88], reverse_compare

 stdlib_test$184:
	; Call 48 qsort 0
	mov qword [rbp + 48], stdlib_test$185
	mov [rbp + 56], rbp
	add rbp, 48
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
	; Parameter 72 pointer "%i "
	mov qword [rbp + 72], @14115$string_25i20#

 stdlib_test$190:
	; IntegralToIntegral £temporary4543 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$191:
	; UnsignedMultiply £temporary4545 £temporary4543 4
	xor rdx, rdx
	mul qword [@14116$int8$4#]

 stdlib_test$192:
	; BinaryAdd £temporary4544 list £temporary4545
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$193:
	; Dereference £temporary4546 -> £temporary4544 £temporary4544 0

 stdlib_test$194:
	; Parameter 80 signedint £temporary4546 -> £temporary4544
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$195:
	; Call 48 printf 4
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
	; Parameter 72 pointer "\n\nSearch:\n"
	mov qword [rbp + 72], @14118$string_0A0ASearch3A0A#

 stdlib_test$201:
	; Call 48 printf 0
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
	; SignedGreaterThanEqual 232 key 6
	cmp dword [rbp + 44], 6
	jge stdlib_test$232

 stdlib_test$205:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$206:
	; Address £temporary4551 key
	mov rsi, rbp
	add rsi, 44

 stdlib_test$207:
	; Parameter 72 pointer £temporary4551
	mov [rbp + 72], rsi

 stdlib_test$208:
	; Parameter 80 pointer list
	mov [rbp + 80], rbp
	add qword [rbp + 80], 24

 stdlib_test$209:
	; Parameter 88 signedint size
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 stdlib_test$210:
	; Parameter 92 signedint 4
	mov dword [rbp + 92], 4

 stdlib_test$211:
	; Parameter 96 pointer compare
	mov qword [rbp + 96], compare

 stdlib_test$212:
	; Call 48 bsearch 0
	mov qword [rbp + 48], stdlib_test$213
	mov [rbp + 56], rbp
	add rbp, 48
	jmp bsearch

 stdlib_test$213:
	; PostCall 48

 stdlib_test$214:
	; GetReturnValue £temporary4553

 stdlib_test$215:
	; IntegralToIntegral £temporary4554 £temporary4553

 stdlib_test$216:
	; Assign p £temporary4554
	mov [rbp + 48], rbx

 stdlib_test$217:
	; Equal 222 p 0
	cmp qword [rbp + 48], 0
	je stdlib_test$222

 stdlib_test$218:
	; BinarySubtract £temporary4557 p list
	mov rax, [rbp + 48]
	mov rbx, rbp
	add rbx, 24
	sub rax, rbx

 stdlib_test$219:
	; UnsignedDivide £temporary4556 £temporary4557 4
	xor rdx, rdx
	div qword [@14132$int8$4#]

 stdlib_test$220:
	; IntegralToIntegral £temporary4559 £temporary4556

 stdlib_test$221:
	; Goto 223
	jmp stdlib_test$223

 stdlib_test$222:
	; Assign £temporary4559 -1
	mov eax, -1

 stdlib_test$223:
	; Assign index £temporary4559
	mov [rbp + 56], eax

 stdlib_test$224:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$225:
	; Parameter 84 pointer "  (%i, %i)\n"
	mov qword [rbp + 84], @14136$string_20202825i2C2025i290A#

 stdlib_test$226:
	; Parameter 92 signedint key
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

 stdlib_test$227:
	; Parameter 96 signedint index
	mov eax, [rbp + 56]
	mov [rbp + 96], eax

 stdlib_test$228:
	; Call 60 printf 8
	mov qword [rbp + 60], stdlib_test$229
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$229:
	; PostCall 60

 stdlib_test$230:
	; BinaryAdd key key 1
	inc dword [rbp + 44]

 stdlib_test$231:
	; Goto 204
	jmp stdlib_test$204

 stdlib_test$232:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$233:
	; Parameter 68 pointer "\n"
	mov qword [rbp + 68], @14137$string_0A#

 stdlib_test$234:
	; Call 44 printf 0
	mov qword [rbp + 44], stdlib_test$235
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	jmp printf

 stdlib_test$235:
	; PostCall 44

 stdlib_test$236:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 stdlib_test$237:
	; FunctionEnd stdlib_test
