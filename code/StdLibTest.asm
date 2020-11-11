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
	; IntegralToIntegral £temporary4391 valuePtr1
	mov rsi, [rbp + 24]

 compare$1:
	; Dereference £temporary4392 -> £temporary4391 £temporary4391 0

 compare$2:
	; Assign intValue1 £temporary4392 -> £temporary4391
	mov eax, [rsi]
	mov [rbp + 40], eax

 compare$3:
	; IntegralToIntegral £temporary4393 valuePtr2
	mov rsi, [rbp + 32]

 compare$4:
	; Dereference £temporary4394 -> £temporary4393 £temporary4393 0

 compare$5:
	; Assign intValue2 £temporary4394 -> £temporary4393
	mov eax, [rsi]
	mov [rbp + 44], eax

 compare$6:
	; SignedGreaterThanEqual 9 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge compare$9

 compare$7:
	; Assign £temporary4398 -1
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
	; Assign £temporary4397 0
	mov ebx, 0

 compare$11:
	; Goto 13
	jmp compare$13

 compare$12:
	; Assign £temporary4397 1
	mov ebx, 1

 compare$13:
	; Assign £temporary4398 £temporary4397

 compare$14:
	; Return £temporary4398
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 compare$15:
	; FunctionEnd compare

section .text

 reverse_compare:
	; IntegralToIntegral £temporary4399 valuePtr1
	mov rsi, [rbp + 24]

 reverse_compare$1:
	; Dereference £temporary4400 -> £temporary4399 £temporary4399 0

 reverse_compare$2:
	; Assign intValue1 £temporary4400 -> £temporary4399
	mov eax, [rsi]
	mov [rbp + 40], eax

 reverse_compare$3:
	; IntegralToIntegral £temporary4401 valuePtr2
	mov rsi, [rbp + 32]

 reverse_compare$4:
	; Dereference £temporary4402 -> £temporary4401 £temporary4401 0

 reverse_compare$5:
	; Assign intValue2 £temporary4402 -> £temporary4401
	mov eax, [rsi]
	mov [rbp + 44], eax

 reverse_compare$6:
	; SignedGreaterThanEqual 9 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge reverse_compare$9

 reverse_compare$7:
	; Assign £temporary4406 1
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
	; Assign £temporary4405 0
	mov ebx, 0

 reverse_compare$11:
	; Goto 13
	jmp reverse_compare$13

 reverse_compare$12:
	; Assign £temporary4405 -1
	mov ebx, -1

 reverse_compare$13:
	; Assign £temporary4406 £temporary4405

 reverse_compare$14:
	; Return £temporary4406
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
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_div$7:
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
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_ldiv$7:
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
	; IntegralToIntegral £temporary4417 f
	mov rax, [rbp + 24]

 qtest$3:
	; Parameter unsigned int £temporary4417 64
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
	; IntegralToIntegral £temporary4420 hello
	mov rax, hello

 stdlib_testZ$3:
	; Parameter unsigned int £temporary4420 56
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

string_div_t28102C20329203D202825i2C2025i292C0A#:
	; Initializer String div_t(10, 3) = (%i, %i),\n
	db "div_t(10, 3) = (%i, %i),", 10, 0

section .data

string_ldiv_t28102C20329203D202825li2C2025li290A#:
	; Initializer String ldiv_t(10, 3) = (%li, %li)\n
	db "ldiv_t(10, 3) = (%li, %li)", 10, 0

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
	; GetReturnValue £temporary4424

 stdlib_test$7:
	; Parameter double £temporary4424 64
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
	; Address £temporary4426 p
	mov rsi, rbp
	add rsi, 24

 stdlib_test$15:
	; Parameter pointer £temporary4426 96
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
	; GetReturnValue £temporary4427

 stdlib_test$19:
	; Parameter double £temporary4427 64
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
	; GetReturnValue £temporary4429

 stdlib_test$30:
	; Parameter pointer £temporary4429 56
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
	; GetReturnValue £temporary4433

 stdlib_test$48:
	; Parameter signedint £temporary4433 56
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
	; GetReturnValue £temporary4434

 stdlib_test$54:
	; Parameter signedint £temporary4434 60
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
	; GetReturnValue £temporary4436

 stdlib_test$64:
	; Parameter signed long int £temporary4436 56
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
	; GetReturnValue £temporary4437

 stdlib_test$70:
	; Parameter signed long int £temporary4437 64
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
	; GetReturnValue £temporary4439 -> £temporary4440

 stdlib_test$79:
	; AssignInitSize i £temporary4439 -> £temporary4440
	mov rsi, rbp
	add rsi, 24
	mov al, 8

 stdlib_test$80:
	; Assign i £temporary4439 -> £temporary4440
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
	; Parameter pointer "div_t(10, 3) = (%i, %i),\n" 56
	mov qword [rbp + 56], string_div_t28102C20329203D202825i2C2025i292C0A#

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
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$93:
	; Parameter signed long int 10 48
	mov qword [rbp + 48], 10

 stdlib_test$94:
	; Parameter signed long int 3 56
	mov qword [rbp + 56], 3

 stdlib_test$95:
	; Call ldiv 24 0
	mov qword [rbp + 24], stdlib_test$96
	mov [rbp + 32], rbp
	add rbp, 24
	jmp ldiv

 stdlib_test$96:
	; PostCall 24

 stdlib_test$97:
	; GetReturnValue £temporary4445 -> £temporary4446

 stdlib_test$98:
	; AssignInitSize li £temporary4445 -> £temporary4446
	mov rsi, rbp
	add rsi, 24
	mov al, 16

 stdlib_test$99:
	; Assign li £temporary4445 -> £temporary4446
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$99

 stdlib_test$100:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$101:
	; Parameter pointer "ldiv_t(10, 3) = (%li, %li)\n" 64
	mov qword [rbp + 64], string_ldiv_t28102C20329203D202825li2C2025li290A#

 stdlib_test$102:
	; Parameter signed long int li.quot 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 stdlib_test$103:
	; Parameter signed long int li.rem 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 stdlib_test$104:
	; Call printf 40 16
	mov qword [rbp + 40], stdlib_test$105
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$105:
	; PostCall 40

 stdlib_test$106:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$107:
	; ParameterInitSize struct li 64
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 64
	mov al, 16

 stdlib_test$108:
	; Parameter struct li 64
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne stdlib_test$108

 stdlib_test$109:
	; Call print_ldiv 40 0
	mov qword [rbp + 40], stdlib_test$110
	mov [rbp + 48], rbp
	add rbp, 40
	jmp print_ldiv

 stdlib_test$110:
	; PostCall 40

 stdlib_test$111:
	; Assign list[0] 3
	mov dword [rbp + 24], 3

 stdlib_test$112:
	; Assign list[1] 4
	mov dword [rbp + 28], 4

 stdlib_test$113:
	; Assign list[2] 2
	mov dword [rbp + 32], 2

 stdlib_test$114:
	; Assign list[3] 1
	mov dword [rbp + 36], 1

 stdlib_test$115:
	; Assign size 4
	mov dword [rbp + 40], 4

 stdlib_test$116:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$117:
	; Parameter pointer "\nA List 1: " 72
	mov qword [rbp + 72], string_0AA20List2013A20#

 stdlib_test$118:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$119
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$119:
	; PostCall 48

 stdlib_test$120:
	; Assign index 0
	mov dword [rbp + 44], 0

 stdlib_test$121:
	; SignedGreaterThanEqual 133 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$133

 stdlib_test$122:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$123:
	; Parameter pointer "%i " 72
	mov qword [rbp + 72], string_25i20#

 stdlib_test$124:
	; IntegralToIntegral £temporary4459 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$125:
	; UnsignedMultiply £temporary4461 £temporary4459 4
	xor rdx, rdx
	mul qword [int8$4#]

 stdlib_test$126:
	; BinaryAdd £temporary4460 list £temporary4461
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$127:
	; Dereference £temporary4462 -> £temporary4460 £temporary4460 0

 stdlib_test$128:
	; Parameter signedint £temporary4462 -> £temporary4460 80
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$129:
	; Call printf 48 4
	mov qword [rbp + 48], stdlib_test$130
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$130:
	; PostCall 48

 stdlib_test$131:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 stdlib_test$132:
	; Goto 121
	jmp stdlib_test$121

 stdlib_test$133:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$134:
	; Parameter pointer "\nB List 2: " 72
	mov qword [rbp + 72], string_0AB20List2023A20#

 stdlib_test$135:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$136
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$136:
	; PostCall 48

 stdlib_test$137:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$138:
	; Parameter pointer list 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

 stdlib_test$139:
	; Parameter signedint size 80
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 stdlib_test$140:
	; Parameter signedint 4 84
	mov dword [rbp + 84], 4

 stdlib_test$141:
	; Parameter pointer compare 88
	mov qword [rbp + 88], compare

 stdlib_test$142:
	; Call qsort 48 0
	mov qword [rbp + 48], stdlib_test$143
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp qsort

 stdlib_test$143:
	; PostCall 48

 stdlib_test$144:
	; Assign index 0
	mov dword [rbp + 44], 0

 stdlib_test$145:
	; SignedGreaterThanEqual 157 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$157

 stdlib_test$146:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$147:
	; Parameter pointer "%i " 72
	mov qword [rbp + 72], string_25i20#

 stdlib_test$148:
	; IntegralToIntegral £temporary4469 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$149:
	; UnsignedMultiply £temporary4471 £temporary4469 4
	xor rdx, rdx
	mul qword [int8$4#]

 stdlib_test$150:
	; BinaryAdd £temporary4470 list £temporary4471
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$151:
	; Dereference £temporary4472 -> £temporary4470 £temporary4470 0

 stdlib_test$152:
	; Parameter signedint £temporary4472 -> £temporary4470 80
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$153:
	; Call printf 48 4
	mov qword [rbp + 48], stdlib_test$154
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$154:
	; PostCall 48

 stdlib_test$155:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 stdlib_test$156:
	; Goto 145
	jmp stdlib_test$145

 stdlib_test$157:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$158:
	; Parameter pointer "\nC List 3: " 72
	mov qword [rbp + 72], string_0AC20List2033A20#

 stdlib_test$159:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$160
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$160:
	; PostCall 48

 stdlib_test$161:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$162:
	; Parameter pointer list 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

 stdlib_test$163:
	; Parameter signedint size 80
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 stdlib_test$164:
	; Parameter signedint 4 84
	mov dword [rbp + 84], 4

 stdlib_test$165:
	; Parameter pointer reverse_compare 88
	mov qword [rbp + 88], reverse_compare

 stdlib_test$166:
	; Call qsort 48 0
	mov qword [rbp + 48], stdlib_test$167
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp qsort

 stdlib_test$167:
	; PostCall 48

 stdlib_test$168:
	; Assign index 0
	mov dword [rbp + 44], 0

 stdlib_test$169:
	; SignedGreaterThanEqual 181 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$181

 stdlib_test$170:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$171:
	; Parameter pointer "%i " 72
	mov qword [rbp + 72], string_25i20#

 stdlib_test$172:
	; IntegralToIntegral £temporary4479 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$173:
	; UnsignedMultiply £temporary4481 £temporary4479 4
	xor rdx, rdx
	mul qword [int8$4#]

 stdlib_test$174:
	; BinaryAdd £temporary4480 list £temporary4481
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$175:
	; Dereference £temporary4482 -> £temporary4480 £temporary4480 0

 stdlib_test$176:
	; Parameter signedint £temporary4482 -> £temporary4480 80
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$177:
	; Call printf 48 4
	mov qword [rbp + 48], stdlib_test$178
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$178:
	; PostCall 48

 stdlib_test$179:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 stdlib_test$180:
	; Goto 169
	jmp stdlib_test$169

 stdlib_test$181:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$182:
	; Parameter pointer "\n\nSearch:\n" 72
	mov qword [rbp + 72], string_0A0ASearch3A0A#

 stdlib_test$183:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$184
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$184:
	; PostCall 48

 stdlib_test$185:
	; Assign key 0
	mov dword [rbp + 44], 0

 stdlib_test$186:
	; SignedGreaterThanEqual 215 key 6
	cmp dword [rbp + 44], 6
	jge stdlib_test$215

 stdlib_test$187:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$188:
	; Address £temporary4487 key
	mov rsi, rbp
	add rsi, 44

 stdlib_test$189:
	; Parameter pointer £temporary4487 72
	mov [rbp + 72], rsi

 stdlib_test$190:
	; Parameter pointer list 80
	mov [rbp + 80], rbp
	add qword [rbp + 80], 24

 stdlib_test$191:
	; Parameter signedint size 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 stdlib_test$192:
	; Parameter signedint 4 92
	mov dword [rbp + 92], 4

 stdlib_test$193:
	; Parameter pointer compare 96
	mov qword [rbp + 96], compare

 stdlib_test$194:
	; Call bsearch 48 0
	mov qword [rbp + 48], stdlib_test$195
	mov [rbp + 56], rbp
	add rbp, 48
	jmp bsearch

 stdlib_test$195:
	; PostCall 48

 stdlib_test$196:
	; GetReturnValue £temporary4489

 stdlib_test$197:
	; IntegralToIntegral £temporary4490 £temporary4489

 stdlib_test$198:
	; Assign p £temporary4490
	mov [rbp + 48], rbx

 stdlib_test$199:
	; Equal 205 p 0
	cmp qword [rbp + 48], 0
	je stdlib_test$205

 stdlib_test$200:
	; BinarySubtract £temporary4493 p list
	mov rax, [rbp + 48]
	mov rbx, rbp
	add rbx, 24
	sub rax, rbx

 stdlib_test$201:
	; UnsignedDivide £temporary4492 £temporary4493 4
	xor rdx, rdx
	div qword [int8$4#]

 stdlib_test$202:
	; IntegralToIntegral £temporary4494 £temporary4492

 stdlib_test$203:
	; Assign £temporary4495 £temporary4494

 stdlib_test$204:
	; Goto 206
	jmp stdlib_test$206

 stdlib_test$205:
	; Assign £temporary4495 -1
	mov eax, -1

 stdlib_test$206:
	; Assign index £temporary4495
	mov [rbp + 56], eax

 stdlib_test$207:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$208:
	; Parameter pointer "  (%i, %i)\n" 84
	mov qword [rbp + 84], string_20202825i2C2025i290A#

 stdlib_test$209:
	; Parameter signedint key 92
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

 stdlib_test$210:
	; Parameter signedint index 96
	mov eax, [rbp + 56]
	mov [rbp + 96], eax

 stdlib_test$211:
	; Call printf 60 8
	mov qword [rbp + 60], stdlib_test$212
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$212:
	; PostCall 60

 stdlib_test$213:
	; BinaryAdd key key 1
	inc dword [rbp + 44]

 stdlib_test$214:
	; Goto 186
	jmp stdlib_test$186

 stdlib_test$215:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$216:
	; Parameter pointer "\n" 72
	mov qword [rbp + 72], string_0A#

 stdlib_test$217:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$218
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$218:
	; PostCall 48

 stdlib_test$219:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 stdlib_test$220:
	; FunctionEnd stdlib_test
