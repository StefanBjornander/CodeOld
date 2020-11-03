	global compare
	global reverse_compare
	global print_div
	global print_ldiv
	global exit_handle1x
	global exit_handle2x
	global exit_handle3x
	global stdlib_test

	extern printf
	extern strtod
	extern atof
	extern strtol
	extern strtoul
	extern atoi
	extern atol
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
	; IntegralToIntegral £temporary3772 valuePtr1
	mov rsi, [rbp + 24]

 compare$1:
	; Dereference £temporary3773 -> £temporary3772 £temporary3772 0

 compare$2:
	; Assign intValue1 £temporary3773 -> £temporary3772
	mov eax, [rsi]
	mov [rbp + 40], eax

 compare$3:
	; IntegralToIntegral £temporary3774 valuePtr2
	mov rsi, [rbp + 32]

 compare$4:
	; Dereference £temporary3775 -> £temporary3774 £temporary3774 0

 compare$5:
	; Assign intValue2 £temporary3775 -> £temporary3774
	mov eax, [rsi]
	mov [rbp + 44], eax

 compare$6:
	; SignedGreaterThanEqual 9 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge compare$9

 compare$7:
	; Assign £temporary3779 -1
	mov eax, -1

 compare$8:
	; Goto 14
	jmp compare$14

 compare$9:
	; NotEqual 12 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jne compare$12

 compare$10:
	; Assign £temporary3778 0
	mov ebx, 0

 compare$11:
	; Goto 13
	jmp compare$13

 compare$12:
	; Assign £temporary3778 1
	mov ebx, 1

 compare$13:
	; Assign £temporary3779 £temporary3778

 compare$14:
	; Return £temporary3779
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 compare$15:
	; FunctionEnd compare

section .text

 reverse_compare:
	; IntegralToIntegral £temporary3780 valuePtr1
	mov rsi, [rbp + 24]

 reverse_compare$1:
	; Dereference £temporary3781 -> £temporary3780 £temporary3780 0

 reverse_compare$2:
	; Assign intValue1 £temporary3781 -> £temporary3780
	mov eax, [rsi]
	mov [rbp + 40], eax

 reverse_compare$3:
	; IntegralToIntegral £temporary3782 valuePtr2
	mov rsi, [rbp + 32]

 reverse_compare$4:
	; Dereference £temporary3783 -> £temporary3782 £temporary3782 0

 reverse_compare$5:
	; Assign intValue2 £temporary3783 -> £temporary3782
	mov eax, [rsi]
	mov [rbp + 44], eax

 reverse_compare$6:
	; SignedGreaterThanEqual 9 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge reverse_compare$9

 reverse_compare$7:
	; Assign £temporary3787 1
	mov eax, 1

 reverse_compare$8:
	; Goto 14
	jmp reverse_compare$14

 reverse_compare$9:
	; NotEqual 12 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jne reverse_compare$12

 reverse_compare$10:
	; Assign £temporary3786 0
	mov ebx, 0

 reverse_compare$11:
	; Goto 13
	jmp reverse_compare$13

 reverse_compare$12:
	; Assign £temporary3786 -1
	mov ebx, -1

 reverse_compare$13:
	; Assign £temporary3787 £temporary3786

 reverse_compare$14:
	; Return £temporary3787
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

string_1232E456abc#:
	; Initializer String 123.456abc
	db "123.456abc", 0

section .data

string_1232E456#:
	; Initializer String 123.456
	db "123.456", 0

section .data

string_123abc#:
	; Initializer String 123abc
	db "123abc", 0

section .data

string_atof28221232E4562229203D2025f0A#:
	; Initializer String atof("123.456") = %f\n
	db "atof(", 34, "123.456", 34, ") = %f", 10, 0

section .data

string_atoi28221232229203D2025i0A#:
	; Initializer String atoi("123") = %i\n
	db "atoi(", 34, "123", 34, ") = %i", 10, 0

section .data

string_123#:
	; Initializer String 123
	db "123", 0

section .data

string_atol28221232229203D2025li0A0A#:
	; Initializer String atol("123") = %li\n\n
	db "atol(", 34, "123", 34, ") = %li", 10, 10, 0

section .data

string_strtod28221232E456abc222C2026endp29203D202825f2C2025s290A#:
	; Initializer String strtod("123.456abc", &endp) = (%f, %s)\n
	db "strtod(", 34, "123.456abc", 34, ", &endp) = (%f, %s)", 10, 0

section .data

string_strtol2822123abc222C2026endp29203D202825li2C2025s290A#:
	; Initializer String strtol("123abc", &endp) = (%li, %s)\n
	db "strtol(", 34, "123abc", 34, ", &endp) = (%li, %s)", 10, 0

section .data

string_strtoul2822123abc222C2026endp29203D202825lu2C2025s290A#:
	; Initializer String strtoul("123abc", &endp) = (%lu, %s)\n
	db "strtoul(", 34, "123abc", 34, ", &endp) = (%lu, %s)", 10, 0

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

string_abs282D329203D2025i2C20abs28329203D2025i2C20labs282D3l29203D2025li2C20labs283l29203D2025li0A#:
	; Initializer String abs(-3) = %i, abs(3) = %i, labs(-3l) = %li, labs(3l) = %li\n
	db "abs(-3) = %i, abs(3) = %i, labs(-3l) = %li, labs(3l) = %li", 10, 0

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
	; Assign p s
	mov [rbp + 324], rbp
	add qword [rbp + 324], 24

 stdlib_test$1:
	; Assign q t
	mov [rbp + 332], rbp
	add qword [rbp + 332], 124

 stdlib_test$2:
	; Assign r w
	mov [rbp + 340], rbp
	add qword [rbp + 340], 224

 stdlib_test$3:
	; PreCall 348 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$4:
	; Parameter pointer "123.456abc" 372
	mov qword [rbp + 372], string_1232E456abc#

 stdlib_test$5:
	; Address £temporary3797 p
	mov rsi, rbp
	add rsi, 324

 stdlib_test$6:
	; Parameter pointer £temporary3797 380
	mov [rbp + 380], rsi

 stdlib_test$7:
	; Call strtod 348 0
	mov qword [rbp + 348], stdlib_test$8
	mov [rbp + 356], rbp
	add rbp, 348
	jmp strtod

 stdlib_test$8:
	; PostCall 348

 stdlib_test$9:
	; GetReturnValue £temporary3798

 stdlib_test$10:
	; PopFloat x
	fstp qword [rbp + 348]

 stdlib_test$11:
	; PreCall 356 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$12:
	; Parameter pointer "123.456" 380
	mov qword [rbp + 380], string_1232E456#

 stdlib_test$13:
	; Call atof 356 0
	mov qword [rbp + 356], stdlib_test$14
	mov [rbp + 364], rbp
	add rbp, 356
	jmp atof

 stdlib_test$14:
	; PostCall 356

 stdlib_test$15:
	; GetReturnValue £temporary3799

 stdlib_test$16:
	; PopFloat y
	fstp qword [rbp + 356]

 stdlib_test$17:
	; PreCall 364 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$18:
	; Parameter pointer "123abc" 388
	mov qword [rbp + 388], string_123abc#

 stdlib_test$19:
	; Address £temporary3800 q
	mov rsi, rbp
	add rsi, 332

 stdlib_test$20:
	; Parameter pointer £temporary3800 396
	mov [rbp + 396], rsi

 stdlib_test$21:
	; Parameter signedint 8 404
	mov dword [rbp + 404], 8

 stdlib_test$22:
	; Call strtol 364 0
	mov qword [rbp + 364], stdlib_test$23
	mov [rbp + 372], rbp
	add rbp, 364
	jmp strtol

 stdlib_test$23:
	; PostCall 364

 stdlib_test$24:
	; GetReturnValue £temporary3801

 stdlib_test$25:
	; Assign l £temporary3801
	mov [rbp + 364], rbx

 stdlib_test$26:
	; PreCall 372 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$27:
	; Parameter pointer "123abc" 396
	mov qword [rbp + 396], string_123abc#

 stdlib_test$28:
	; Address £temporary3802 r
	mov rsi, rbp
	add rsi, 340

 stdlib_test$29:
	; Parameter pointer £temporary3802 404
	mov [rbp + 404], rsi

 stdlib_test$30:
	; Parameter signedint 8 412
	mov dword [rbp + 412], 8

 stdlib_test$31:
	; Call strtoul 372 0
	mov qword [rbp + 372], stdlib_test$32
	mov [rbp + 380], rbp
	add rbp, 372
	jmp strtoul

 stdlib_test$32:
	; PostCall 372

 stdlib_test$33:
	; GetReturnValue £temporary3803

 stdlib_test$34:
	; Assign ul £temporary3803
	mov [rbp + 372], rbx

 stdlib_test$35:
	; PreCall 380 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$36:
	; Parameter pointer "atof("123.456") = %f\n" 404
	mov qword [rbp + 404], string_atof28221232E4562229203D2025f0A#

 stdlib_test$37:
	; PushFloat y
	fld qword [rbp + 356]

 stdlib_test$38:
	; Parameter double y 412
	fstp qword [rbp + 412]

 stdlib_test$39:
	; Call printf 380 8
	mov qword [rbp + 380], stdlib_test$40
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$40:
	; PostCall 380

 stdlib_test$41:
	; PreCall 380 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$42:
	; Parameter pointer "atoi("123") = %i\n" 404
	mov qword [rbp + 404], string_atoi28221232229203D2025i0A#

 stdlib_test$43:
	; PreCall 380 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$44:
	; Parameter pointer "123" 436
	mov qword [rbp + 436], string_123#

 stdlib_test$45:
	; Call atoi 412 0
	mov qword [rbp + 412], stdlib_test$46
	mov [rbp + 420], rbp
	add rbp, 412
	jmp atoi

 stdlib_test$46:
	; PostCall 412

 stdlib_test$47:
	; GetReturnValue £temporary3805

 stdlib_test$48:
	; Parameter signedint £temporary3805 412
	mov [rbp + 412], ebx

 stdlib_test$49:
	; Call printf 380 4
	mov qword [rbp + 380], stdlib_test$50
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$50:
	; PostCall 380

 stdlib_test$51:
	; PreCall 380 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$52:
	; Parameter pointer "atol("123") = %li\n\n" 404
	mov qword [rbp + 404], string_atol28221232229203D2025li0A0A#

 stdlib_test$53:
	; PreCall 380 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$54:
	; Parameter pointer "123" 436
	mov qword [rbp + 436], string_123#

 stdlib_test$55:
	; Call atol 412 0
	mov qword [rbp + 412], stdlib_test$56
	mov [rbp + 420], rbp
	add rbp, 412
	jmp atol

 stdlib_test$56:
	; PostCall 412

 stdlib_test$57:
	; GetReturnValue £temporary3807

 stdlib_test$58:
	; Parameter signed long int £temporary3807 412
	mov [rbp + 412], rbx

 stdlib_test$59:
	; Call printf 380 8
	mov qword [rbp + 380], stdlib_test$60
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$60:
	; PostCall 380

 stdlib_test$61:
	; PreCall 380 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$62:
	; Parameter pointer "strtod("123.456abc", &endp) = (%f, %s)\n" 404
	mov qword [rbp + 404], string_strtod28221232E456abc222C2026endp29203D202825f2C2025s290A#

 stdlib_test$63:
	; PushFloat x
	fld qword [rbp + 348]

 stdlib_test$64:
	; Parameter double x 412
	fstp qword [rbp + 412]

 stdlib_test$65:
	; Parameter pointer p 420
	mov rax, [rbp + 324]
	mov [rbp + 420], rax

 stdlib_test$66:
	; Call printf 380 16
	mov qword [rbp + 380], stdlib_test$67
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$67:
	; PostCall 380

 stdlib_test$68:
	; PreCall 380 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$69:
	; Parameter pointer "strtol("123abc", &endp) = (%li, %s)\n" 404
	mov qword [rbp + 404], string_strtol2822123abc222C2026endp29203D202825li2C2025s290A#

 stdlib_test$70:
	; Parameter signed long int l 412
	mov rax, [rbp + 364]
	mov [rbp + 412], rax

 stdlib_test$71:
	; Parameter pointer q 420
	mov rax, [rbp + 332]
	mov [rbp + 420], rax

 stdlib_test$72:
	; Call printf 380 16
	mov qword [rbp + 380], stdlib_test$73
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$73:
	; PostCall 380

 stdlib_test$74:
	; PreCall 380 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$75:
	; Parameter pointer "strtoul("123abc", &endp) = (%lu, %s)\n" 404
	mov qword [rbp + 404], string_strtoul2822123abc222C2026endp29203D202825lu2C2025s290A#

 stdlib_test$76:
	; Parameter unsignedlongint ul 412
	mov rax, [rbp + 372]
	mov [rbp + 412], rax

 stdlib_test$77:
	; Parameter pointer r 420
	mov rax, [rbp + 340]
	mov [rbp + 420], rax

 stdlib_test$78:
	; Call printf 380 16
	mov qword [rbp + 380], stdlib_test$79
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$79:
	; PostCall 380

 stdlib_test$80:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$81:
	; Parameter pointer "\ngetenv("path") = %s\n" 48
	mov qword [rbp + 48], string_0Agetenv2822path2229203D2025s0A#

 stdlib_test$82:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$83:
	; Parameter pointer "path" 80
	mov qword [rbp + 80], string_path#

 stdlib_test$84:
	; Call getenv 56 0
	mov qword [rbp + 56], stdlib_test$85
	mov [rbp + 64], rbp
	add rbp, 56
	jmp getenv

 stdlib_test$85:
	; PostCall 56

 stdlib_test$86:
	; GetReturnValue £temporary3812

 stdlib_test$87:
	; Parameter pointer £temporary3812 56
	mov [rbp + 56], rbx

 stdlib_test$88:
	; Call printf 24 8
	mov qword [rbp + 24], stdlib_test$89
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$89:
	; PostCall 24

 stdlib_test$90:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$91:
	; Parameter pointer "system("dir")\n" 48
	mov qword [rbp + 48], string_system2822dir22290A#

 stdlib_test$92:
	; Call printf 24 0
	mov qword [rbp + 24], stdlib_test$93
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 stdlib_test$93:
	; PostCall 24

 stdlib_test$94:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$95:
	; Parameter pointer "dir" 48
	mov qword [rbp + 48], string_dir#

 stdlib_test$96:
	; Call system 24 0
	mov qword [rbp + 24], stdlib_test$97
	mov [rbp + 32], rbp
	add rbp, 24
	jmp system

 stdlib_test$97:
	; PostCall 24

 stdlib_test$98:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$99:
	; Parameter pointer "abs(-3) = %i, abs(3) = %i, labs(-3l) = %li, labs(3l) = %li\n" 48
	mov qword [rbp + 48], string_abs282D329203D2025i2C20abs28329203D2025i2C20labs282D3l29203D2025li2C20labs283l29203D2025li0A#

 stdlib_test$100:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$101:
	; Parameter signedint -3 80
	mov dword [rbp + 80], -3

 stdlib_test$102:
	; Call @abs 56 0
	mov qword [rbp + 56], stdlib_test$103
	mov [rbp + 64], rbp
	add rbp, 56
	jmp @abs

 stdlib_test$103:
	; PostCall 56

 stdlib_test$104:
	; GetReturnValue £temporary3816

 stdlib_test$105:
	; Parameter signedint £temporary3816 56
	mov [rbp + 56], ebx

 stdlib_test$106:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$107:
	; Parameter signedint 3 84
	mov dword [rbp + 84], 3

 stdlib_test$108:
	; Call @abs 60 0
	mov qword [rbp + 60], stdlib_test$109
	mov [rbp + 68], rbp
	add rbp, 60
	jmp @abs

 stdlib_test$109:
	; PostCall 60

 stdlib_test$110:
	; GetReturnValue £temporary3817

 stdlib_test$111:
	; Parameter signedint £temporary3817 60
	mov [rbp + 60], ebx

 stdlib_test$112:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$113:
	; Parameter signed long int -3 88
	mov qword [rbp + 88], -3

 stdlib_test$114:
	; Call labs 64 0
	mov qword [rbp + 64], stdlib_test$115
	mov [rbp + 72], rbp
	add rbp, 64
	jmp labs

 stdlib_test$115:
	; PostCall 64

 stdlib_test$116:
	; GetReturnValue £temporary3818

 stdlib_test$117:
	; Parameter signed long int £temporary3818 64
	mov [rbp + 64], rbx

 stdlib_test$118:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$119:
	; Parameter signed long int 3 96
	mov qword [rbp + 96], 3

 stdlib_test$120:
	; Call labs 72 0
	mov qword [rbp + 72], stdlib_test$121
	mov [rbp + 80], rbp
	add rbp, 72
	jmp labs

 stdlib_test$121:
	; PostCall 72

 stdlib_test$122:
	; GetReturnValue £temporary3819

 stdlib_test$123:
	; Parameter signed long int £temporary3819 72
	mov [rbp + 72], rbx

 stdlib_test$124:
	; Call printf 24 24
	mov qword [rbp + 24], stdlib_test$125
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 24
	jmp printf

 stdlib_test$125:
	; PostCall 24

 stdlib_test$126:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$127:
	; Parameter signedint 10 48
	mov dword [rbp + 48], 10

 stdlib_test$128:
	; Parameter signedint 3 52
	mov dword [rbp + 52], 3

 stdlib_test$129:
	; Call div 24 0
	mov qword [rbp + 24], stdlib_test$130
	mov [rbp + 32], rbp
	add rbp, 24
	jmp div

 stdlib_test$130:
	; PostCall 24

 stdlib_test$131:
	; GetReturnValue £temporary3821 -> £temporary3822

 stdlib_test$132:
	; Assign i £temporary3821 -> £temporary3822
	mov rsi, rbp
	add rsi, 24
	mov al, 8

 label$1:
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne label$1

 stdlib_test$133:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$134:
	; Parameter pointer "div_t(10, 3) = (%i, %i),\n" 56
	mov qword [rbp + 56], string_div_t28102C20329203D202825i2C2025i292C0A#

 stdlib_test$135:
	; Parameter signedint i.quot 64
	mov eax, [rbp + 24]
	mov [rbp + 64], eax

 stdlib_test$136:
	; Parameter signedint i.rem 68
	mov eax, [rbp + 28]
	mov [rbp + 68], eax

 stdlib_test$137:
	; Call printf 32 8
	mov qword [rbp + 32], stdlib_test$138
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$138:
	; PostCall 32

 stdlib_test$139:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$140:
	; Parameter struct i 56
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 56
	mov al, 8

 label$2:
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne label$2

 stdlib_test$141:
	; Call print_div 32 0
	mov qword [rbp + 32], stdlib_test$142
	mov [rbp + 40], rbp
	add rbp, 32
	jmp print_div

 stdlib_test$142:
	; PostCall 32

 stdlib_test$143:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$144:
	; Parameter signed long int 10 48
	mov qword [rbp + 48], 10

 stdlib_test$145:
	; Parameter signed long int 3 56
	mov qword [rbp + 56], 3

 stdlib_test$146:
	; Call ldiv 24 0
	mov qword [rbp + 24], stdlib_test$147
	mov [rbp + 32], rbp
	add rbp, 24
	jmp ldiv

 stdlib_test$147:
	; PostCall 24

 stdlib_test$148:
	; GetReturnValue £temporary3827 -> £temporary3828

 stdlib_test$149:
	; Assign li £temporary3827 -> £temporary3828
	mov rsi, rbp
	add rsi, 24
	mov al, 16

 label$3:
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne label$3

 stdlib_test$150:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$151:
	; Parameter pointer "ldiv_t(10, 3) = (%li, %li)\n" 64
	mov qword [rbp + 64], string_ldiv_t28102C20329203D202825li2C2025li290A#

 stdlib_test$152:
	; Parameter signed long int li.quot 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 stdlib_test$153:
	; Parameter signed long int li.rem 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 stdlib_test$154:
	; Call printf 40 16
	mov qword [rbp + 40], stdlib_test$155
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$155:
	; PostCall 40

 stdlib_test$156:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$157:
	; Parameter struct li 64
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 64
	mov al, 16

 label$4:
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne label$4

 stdlib_test$158:
	; Call print_ldiv 40 0
	mov qword [rbp + 40], stdlib_test$159
	mov [rbp + 48], rbp
	add rbp, 40
	jmp print_ldiv

 stdlib_test$159:
	; PostCall 40

 stdlib_test$160:
	; Assign list[0] 3
	mov dword [rbp + 24], 3

 stdlib_test$161:
	; Assign list[1] 4
	mov dword [rbp + 28], 4

 stdlib_test$162:
	; Assign list[2] 2
	mov dword [rbp + 32], 2

 stdlib_test$163:
	; Assign list[3] 1
	mov dword [rbp + 36], 1

 stdlib_test$164:
	; Assign size 4
	mov dword [rbp + 40], 4

 stdlib_test$165:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$166:
	; Parameter pointer "\nA List 1: " 72
	mov qword [rbp + 72], string_0AA20List2013A20#

 stdlib_test$167:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$168
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$168:
	; PostCall 48

 stdlib_test$169:
	; Assign index 0
	mov dword [rbp + 44], 0

 stdlib_test$170:
	; SignedGreaterThanEqual 182 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$182

 stdlib_test$171:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$172:
	; Parameter pointer "%i " 72
	mov qword [rbp + 72], string_25i20#

 stdlib_test$173:
	; IntegralToIntegral £temporary3841 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$174:
	; UnsignedMultiply £temporary3843 £temporary3841 4
	xor rdx, rdx
	mul qword [int8$4#]

 stdlib_test$175:
	; BinaryAdd £temporary3842 list £temporary3843
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$176:
	; Dereference £temporary3844 -> £temporary3842 £temporary3842 0

 stdlib_test$177:
	; Parameter signedint £temporary3844 -> £temporary3842 80
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$178:
	; Call printf 48 4
	mov qword [rbp + 48], stdlib_test$179
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$179:
	; PostCall 48

 stdlib_test$180:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 stdlib_test$181:
	; Goto 170
	jmp stdlib_test$170

 stdlib_test$182:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$183:
	; Parameter pointer "\nB List 2: " 72
	mov qword [rbp + 72], string_0AB20List2023A20#

 stdlib_test$184:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$185
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$185:
	; PostCall 48

 stdlib_test$186:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$187:
	; Parameter pointer list 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

 stdlib_test$188:
	; Parameter signedint size 80
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 stdlib_test$189:
	; Parameter signedint 4 84
	mov dword [rbp + 84], 4

 stdlib_test$190:
	; Parameter pointer reverse_compare 88
	mov qword [rbp + 88], reverse_compare

 stdlib_test$191:
	; Call qsort 48 0
	mov qword [rbp + 48], stdlib_test$192
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp qsort

 stdlib_test$192:
	; PostCall 48

 stdlib_test$193:
	; Assign index 0
	mov dword [rbp + 44], 0

 stdlib_test$194:
	; SignedGreaterThanEqual 206 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$206

 stdlib_test$195:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$196:
	; Parameter pointer "%i " 72
	mov qword [rbp + 72], string_25i20#

 stdlib_test$197:
	; IntegralToIntegral £temporary3851 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$198:
	; UnsignedMultiply £temporary3853 £temporary3851 4
	xor rdx, rdx
	mul qword [int8$4#]

 stdlib_test$199:
	; BinaryAdd £temporary3852 list £temporary3853
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$200:
	; Dereference £temporary3854 -> £temporary3852 £temporary3852 0

 stdlib_test$201:
	; Parameter signedint £temporary3854 -> £temporary3852 80
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$202:
	; Call printf 48 4
	mov qword [rbp + 48], stdlib_test$203
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$203:
	; PostCall 48

 stdlib_test$204:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 stdlib_test$205:
	; Goto 194
	jmp stdlib_test$194

 stdlib_test$206:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$207:
	; Parameter pointer "\nC List 3: " 72
	mov qword [rbp + 72], string_0AC20List2033A20#

 stdlib_test$208:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$209
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$209:
	; PostCall 48

 stdlib_test$210:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$211:
	; Parameter pointer list 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

 stdlib_test$212:
	; Parameter signedint size 80
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 stdlib_test$213:
	; Parameter signedint 4 84
	mov dword [rbp + 84], 4

 stdlib_test$214:
	; Parameter pointer compare 88
	mov qword [rbp + 88], compare

 stdlib_test$215:
	; Call qsort 48 0
	mov qword [rbp + 48], stdlib_test$216
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp qsort

 stdlib_test$216:
	; PostCall 48

 stdlib_test$217:
	; Assign index 0
	mov dword [rbp + 44], 0

 stdlib_test$218:
	; SignedGreaterThanEqual 230 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$230

 stdlib_test$219:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$220:
	; Parameter pointer "%i " 72
	mov qword [rbp + 72], string_25i20#

 stdlib_test$221:
	; IntegralToIntegral £temporary3861 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$222:
	; UnsignedMultiply £temporary3863 £temporary3861 4
	xor rdx, rdx
	mul qword [int8$4#]

 stdlib_test$223:
	; BinaryAdd £temporary3862 list £temporary3863
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$224:
	; Dereference £temporary3864 -> £temporary3862 £temporary3862 0

 stdlib_test$225:
	; Parameter signedint £temporary3864 -> £temporary3862 80
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$226:
	; Call printf 48 4
	mov qword [rbp + 48], stdlib_test$227
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$227:
	; PostCall 48

 stdlib_test$228:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 stdlib_test$229:
	; Goto 218
	jmp stdlib_test$218

 stdlib_test$230:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$231:
	; Parameter pointer "\n\nSearch:\n" 72
	mov qword [rbp + 72], string_0A0ASearch3A0A#

 stdlib_test$232:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$233
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$233:
	; PostCall 48

 stdlib_test$234:
	; Assign key 0
	mov dword [rbp + 44], 0

 stdlib_test$235:
	; SignedGreaterThanEqual 264 key 6
	cmp dword [rbp + 44], 6
	jge stdlib_test$264

 stdlib_test$236:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$237:
	; Address £temporary3869 key
	mov rsi, rbp
	add rsi, 44

 stdlib_test$238:
	; Parameter pointer £temporary3869 72
	mov [rbp + 72], rsi

 stdlib_test$239:
	; Parameter pointer list 80
	mov [rbp + 80], rbp
	add qword [rbp + 80], 24

 stdlib_test$240:
	; Parameter signedint size 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 stdlib_test$241:
	; Parameter signedint 4 92
	mov dword [rbp + 92], 4

 stdlib_test$242:
	; Parameter pointer compare 96
	mov qword [rbp + 96], compare

 stdlib_test$243:
	; Call bsearch 48 0
	mov qword [rbp + 48], stdlib_test$244
	mov [rbp + 56], rbp
	add rbp, 48
	jmp bsearch

 stdlib_test$244:
	; PostCall 48

 stdlib_test$245:
	; GetReturnValue £temporary3871

 stdlib_test$246:
	; IntegralToIntegral £temporary3872 £temporary3871

 stdlib_test$247:
	; Assign p £temporary3872
	mov [rbp + 48], rbx

 stdlib_test$248:
	; Equal 254 p 0
	cmp qword [rbp + 48], 0
	je stdlib_test$254

 stdlib_test$249:
	; BinarySubtract £temporary3875 p list
	mov rax, [rbp + 48]
	sub rax, rbp
	sub rax, 24

 stdlib_test$250:
	; UnsignedDivide £temporary3874 £temporary3875 4
	xor rdx, rdx
	div qword [int8$4#]

 stdlib_test$251:
	; IntegralToIntegral £temporary3876 £temporary3874

 stdlib_test$252:
	; Assign £temporary3877 £temporary3876

 stdlib_test$253:
	; Goto 255
	jmp stdlib_test$255

 stdlib_test$254:
	; Assign £temporary3877 -1
	mov eax, -1

 stdlib_test$255:
	; Assign index £temporary3877
	mov [rbp + 56], eax

 stdlib_test$256:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$257:
	; Parameter pointer "  (%i, %i)\n" 84
	mov qword [rbp + 84], string_20202825i2C2025i290A#

 stdlib_test$258:
	; Parameter signedint key 92
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

 stdlib_test$259:
	; Parameter signedint index 96
	mov eax, [rbp + 56]
	mov [rbp + 96], eax

 stdlib_test$260:
	; Call printf 60 8
	mov qword [rbp + 60], stdlib_test$261
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$261:
	; PostCall 60

 stdlib_test$262:
	; BinaryAdd key key 1
	inc dword [rbp + 44]

 stdlib_test$263:
	; Goto 235
	jmp stdlib_test$235

 stdlib_test$264:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$265:
	; Parameter pointer "\n" 72
	mov qword [rbp + 72], string_0A#

 stdlib_test$266:
	; Call printf 48 0
	mov qword [rbp + 48], stdlib_test$267
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$267:
	; PostCall 48

 stdlib_test$268:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 stdlib_test$269:
	; FunctionEnd stdlib_test
