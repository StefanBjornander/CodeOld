	global limits_test

	extern printf
	extern $StackTop


section .data

string_CHAR_BIT203D2025i0A#:
	; Initializer String CHAR_BIT = %i\n
	db "CHAR_BIT = %i", 10, 0

section .data

string_CHAR_MIN203D2025i0A0A#:
	; Initializer String CHAR_MIN = %i\n\n
	db "CHAR_MIN = %i", 10, 10, 0

section .data

string_CHAR_MAX203D2025i0A#:
	; Initializer String CHAR_MAX = %i\n
	db "CHAR_MAX = %i", 10, 0

section .data

string_UCHAR_MAX203D2025u0A0A#:
	; Initializer String UCHAR_MAX = %u\n\n
	db "UCHAR_MAX = %u", 10, 10, 0

section .data

string_SHRT_MIN203D2025i0A#:
	; Initializer String SHRT_MIN = %i\n
	db "SHRT_MIN = %i", 10, 0

section .data

string_SHRT_MAX203D2025i0A#:
	; Initializer String SHRT_MAX = %i\n
	db "SHRT_MAX = %i", 10, 0

section .data

string_USHRT_MAX203D2025u0A0A#:
	; Initializer String USHRT_MAX = %u\n\n
	db "USHRT_MAX = %u", 10, 10, 0

section .data

string_INT_MIN203D2025i0A#:
	; Initializer String INT_MIN = %i\n
	db "INT_MIN = %i", 10, 0

section .data

string_INT_MAX203D2025i0A#:
	; Initializer String INT_MAX = %i\n
	db "INT_MAX = %i", 10, 0

section .data

string_UINT_MAX203D2025u0A0A#:
	; Initializer String UINT_MAX = %u\n\n
	db "UINT_MAX = %u", 10, 10, 0

section .data

string_LONG_MIN203D2025li0A#:
	; Initializer String LONG_MIN = %li\n
	db "LONG_MIN = %li", 10, 0

section .data

string_LONG_MAX203D2025li0A#:
	; Initializer String LONG_MAX = %li\n
	db "LONG_MAX = %li", 10, 0

section .data

string_ULONG_MAX203D2025lu0A#:
	; Initializer String ULONG_MAX = %lu\n
	db "ULONG_MAX = %lu", 10, 0

section .data

string_ULONG_MAX203D2025lx0A#:
	; Initializer String ULONG_MAX = %lx\n
	db "ULONG_MAX = %lx", 10, 0

section .data

string_ULONG_MAX203D2025lX0A#:
	; Initializer String ULONG_MAX = %lX\n
	db "ULONG_MAX = %lX", 10, 0

section .text

 limits_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$1:
	; Parameter pointer "CHAR_BIT = %i\n" 48
	mov qword [rbp + 48], string_CHAR_BIT203D2025i0A#

 limits_test$2:
	; Parameter signedint 8 56
	mov dword [rbp + 56], 8

 limits_test$3:
	; Call printf 24 4
	mov qword [rbp + 24], limits_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 limits_test$4:
	; PostCall 24

 limits_test$5:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$6:
	; Parameter pointer "CHAR_MIN = %i\n\n" 48
	mov qword [rbp + 48], string_CHAR_MIN203D2025i0A0A#

 limits_test$7:
	; Parameter signedint -128 56
	mov dword [rbp + 56], -128

 limits_test$8:
	; Call printf 24 4
	mov qword [rbp + 24], limits_test$9
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 limits_test$9:
	; PostCall 24

 limits_test$10:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$11:
	; Parameter pointer "CHAR_MAX = %i\n" 48
	mov qword [rbp + 48], string_CHAR_MAX203D2025i0A#

 limits_test$12:
	; Parameter signedint 127 56
	mov dword [rbp + 56], 127

 limits_test$13:
	; Call printf 24 4
	mov qword [rbp + 24], limits_test$14
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 limits_test$14:
	; PostCall 24

 limits_test$15:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$16:
	; Parameter pointer "UCHAR_MAX = %u\n\n" 48
	mov qword [rbp + 48], string_UCHAR_MAX203D2025u0A0A#

 limits_test$17:
	; Parameter unsigned int 255 56
	mov dword [rbp + 56], 255

 limits_test$18:
	; Call printf 24 4
	mov qword [rbp + 24], limits_test$19
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 limits_test$19:
	; PostCall 24

 limits_test$20:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$21:
	; Parameter pointer "SHRT_MIN = %i\n" 48
	mov qword [rbp + 48], string_SHRT_MIN203D2025i0A#

 limits_test$22:
	; Parameter signedint -32768 56
	mov dword [rbp + 56], -32768

 limits_test$23:
	; Call printf 24 4
	mov qword [rbp + 24], limits_test$24
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 limits_test$24:
	; PostCall 24

 limits_test$25:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$26:
	; Parameter pointer "SHRT_MAX = %i\n" 48
	mov qword [rbp + 48], string_SHRT_MAX203D2025i0A#

 limits_test$27:
	; Parameter signedint 32767 56
	mov dword [rbp + 56], 32767

 limits_test$28:
	; Call printf 24 4
	mov qword [rbp + 24], limits_test$29
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 limits_test$29:
	; PostCall 24

 limits_test$30:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$31:
	; Parameter pointer "USHRT_MAX = %u\n\n" 48
	mov qword [rbp + 48], string_USHRT_MAX203D2025u0A0A#

 limits_test$32:
	; Parameter unsigned int 65535 56
	mov dword [rbp + 56], 65535

 limits_test$33:
	; Call printf 24 4
	mov qword [rbp + 24], limits_test$34
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 limits_test$34:
	; PostCall 24

 limits_test$35:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$36:
	; Parameter pointer "INT_MIN = %i\n" 48
	mov qword [rbp + 48], string_INT_MIN203D2025i0A#

 limits_test$37:
	; Parameter signedint -2147483648 56
	mov dword [rbp + 56], -2147483648

 limits_test$38:
	; Call printf 24 4
	mov qword [rbp + 24], limits_test$39
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 limits_test$39:
	; PostCall 24

 limits_test$40:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$41:
	; Parameter pointer "INT_MAX = %i\n" 48
	mov qword [rbp + 48], string_INT_MAX203D2025i0A#

 limits_test$42:
	; Parameter signedint 2147483647 56
	mov dword [rbp + 56], 2147483647

 limits_test$43:
	; Call printf 24 4
	mov qword [rbp + 24], limits_test$44
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 limits_test$44:
	; PostCall 24

 limits_test$45:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$46:
	; Parameter pointer "UINT_MAX = %u\n\n" 48
	mov qword [rbp + 48], string_UINT_MAX203D2025u0A0A#

 limits_test$47:
	; Parameter unsigned int 4294967295 56
	mov eax, 4294967295
	mov [rbp + 56], eax

 limits_test$48:
	; Call printf 24 4
	mov qword [rbp + 24], limits_test$49
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 limits_test$49:
	; PostCall 24

 limits_test$50:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$51:
	; Parameter pointer "LONG_MIN = %li\n" 48
	mov qword [rbp + 48], string_LONG_MIN203D2025li0A#

 limits_test$52:
	; Parameter signed long int -9223372036854775808 56
	mov rax, -9223372036854775808
	mov [rbp + 56], rax

 limits_test$53:
	; Call printf 24 8
	mov qword [rbp + 24], limits_test$54
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 limits_test$54:
	; PostCall 24

 limits_test$55:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$56:
	; Parameter pointer "LONG_MAX = %li\n" 48
	mov qword [rbp + 48], string_LONG_MAX203D2025li0A#

 limits_test$57:
	; Parameter signed long int 9223372036854775807 56
	mov rax, 9223372036854775807
	mov [rbp + 56], rax

 limits_test$58:
	; Call printf 24 8
	mov qword [rbp + 24], limits_test$59
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 limits_test$59:
	; PostCall 24

 limits_test$60:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$61:
	; Parameter pointer "ULONG_MAX = %lu\n" 48
	mov qword [rbp + 48], string_ULONG_MAX203D2025lu0A#

 limits_test$62:
	; Parameter unsignedlongint 18446744073709551615 56
	mov rax, 18446744073709551615
	mov [rbp + 56], rax

 limits_test$63:
	; Call printf 24 8
	mov qword [rbp + 24], limits_test$64
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 limits_test$64:
	; PostCall 24

 limits_test$65:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$66:
	; Parameter pointer "ULONG_MAX = %lx\n" 48
	mov qword [rbp + 48], string_ULONG_MAX203D2025lx0A#

 limits_test$67:
	; Parameter unsignedlongint 18446744073709551615 56
	mov rax, 18446744073709551615
	mov [rbp + 56], rax

 limits_test$68:
	; Call printf 24 8
	mov qword [rbp + 24], limits_test$69
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 limits_test$69:
	; PostCall 24

 limits_test$70:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 limits_test$71:
	; Parameter pointer "ULONG_MAX = %lX\n" 48
	mov qword [rbp + 48], string_ULONG_MAX203D2025lX0A#

 limits_test$72:
	; Parameter unsignedlongint 18446744073709551615 56
	mov rax, 18446744073709551615
	mov [rbp + 56], rax

 limits_test$73:
	; Call printf 24 8
	mov qword [rbp + 24], limits_test$74
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 limits_test$74:
	; PostCall 24

 limits_test$75:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 limits_test$76:
	; FunctionEnd limits_test
