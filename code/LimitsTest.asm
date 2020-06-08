	global limits_test

	extern printf
section .text

limits_test:	; call header integral zero 0 stack zero 0

limits_test$1:	; parameter string_CHAR_BIT203D2025i0A#, offset 48
	mov qword [rbp + 48], string_CHAR_BIT203D2025i0A#

limits_test$2:	; parameter int4$8#, offset 56
	mov dword [rbp + 56], 8

limits_test$3:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 24], limits_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

limits_test$4:	; post call

limits_test$5:	; call header integral zero 0 stack zero 0

limits_test$6:	; parameter string_CHAR_MIN203D2025i0A0A#, offset 48
	mov qword [rbp + 48], string_CHAR_MIN203D2025i0A0A#

limits_test$7:	; parameter int4$minus128#, offset 56
	mov dword [rbp + 56], -128

limits_test$8:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 24], limits_test$9
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

limits_test$9:	; post call

limits_test$10:	; call header integral zero 0 stack zero 0

limits_test$11:	; parameter string_CHAR_MAX203D2025i0A#, offset 48
	mov qword [rbp + 48], string_CHAR_MAX203D2025i0A#

limits_test$12:	; parameter int4$127#, offset 56
	mov dword [rbp + 56], 127

limits_test$13:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 24], limits_test$14
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

limits_test$14:	; post call

limits_test$15:	; call header integral zero 0 stack zero 0

limits_test$16:	; parameter string_UCHAR_MAX203D2025u0A0A#, offset 48
	mov qword [rbp + 48], string_UCHAR_MAX203D2025u0A0A#

limits_test$17:	; parameter int4$255#, offset 56
	mov dword [rbp + 56], 255

limits_test$18:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 24], limits_test$19
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

limits_test$19:	; post call

limits_test$20:	; call header integral zero 0 stack zero 0

limits_test$21:	; parameter string_SHRT_MIN203D2025i0A#, offset 48
	mov qword [rbp + 48], string_SHRT_MIN203D2025i0A#

limits_test$22:	; parameter int4$minus32768#, offset 56
	mov dword [rbp + 56], -32768

limits_test$23:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 24], limits_test$24
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

limits_test$24:	; post call

limits_test$25:	; call header integral zero 0 stack zero 0

limits_test$26:	; parameter string_SHRT_MAX203D2025i0A#, offset 48
	mov qword [rbp + 48], string_SHRT_MAX203D2025i0A#

limits_test$27:	; parameter int4$32767#, offset 56
	mov dword [rbp + 56], 32767

limits_test$28:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 24], limits_test$29
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

limits_test$29:	; post call

limits_test$30:	; call header integral zero 0 stack zero 0

limits_test$31:	; parameter string_USHRT_MAX203D2025u0A0A#, offset 48
	mov qword [rbp + 48], string_USHRT_MAX203D2025u0A0A#

limits_test$32:	; parameter int4$65535#, offset 56
	mov dword [rbp + 56], 65535

limits_test$33:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 24], limits_test$34
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

limits_test$34:	; post call

limits_test$35:	; call header integral zero 0 stack zero 0

limits_test$36:	; parameter string_INT_MIN203D2025i0A#, offset 48
	mov qword [rbp + 48], string_INT_MIN203D2025i0A#

limits_test$37:	; parameter int4$minus2147483648#, offset 56
	mov dword [rbp + 56], -2147483648

limits_test$38:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 24], limits_test$39
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

limits_test$39:	; post call

limits_test$40:	; call header integral zero 0 stack zero 0

limits_test$41:	; parameter string_INT_MAX203D2025i0A#, offset 48
	mov qword [rbp + 48], string_INT_MAX203D2025i0A#

limits_test$42:	; parameter int4$2147483647#, offset 56
	mov dword [rbp + 56], 2147483647

limits_test$43:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 24], limits_test$44
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

limits_test$44:	; post call

limits_test$45:	; call header integral zero 0 stack zero 0

limits_test$46:	; parameter string_UINT_MAX203D2025u0A0A#, offset 48
	mov qword [rbp + 48], string_UINT_MAX203D2025u0A0A#

limits_test$47:	; parameter int4$4294967295#, offset 56
	mov dword [rbp + 56], 4294967295

limits_test$48:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 24], limits_test$49
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

limits_test$49:	; post call

limits_test$50:	; call header integral zero 0 stack zero 0

limits_test$51:	; parameter string_LONG_MIN203D2025li0A#, offset 48
	mov qword [rbp + 48], string_LONG_MIN203D2025li0A#

limits_test$52:	; parameter int8$minus9223372036854775808#, offset 56
	mov rax, -9223372036854775808
	mov [rbp + 56], rax

limits_test$53:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 24], limits_test$54
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

limits_test$54:	; post call

limits_test$55:	; call header integral zero 0 stack zero 0

limits_test$56:	; parameter string_LONG_MAX203D2025li0A#, offset 48
	mov qword [rbp + 48], string_LONG_MAX203D2025li0A#

limits_test$57:	; parameter int8$9223372036854775807#, offset 56
	mov rax, 9223372036854775807
	mov [rbp + 56], rax

limits_test$58:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 24], limits_test$59
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

limits_test$59:	; post call

limits_test$60:	; call header integral zero 0 stack zero 0

limits_test$61:	; parameter string_ULONG_MAX203D2025lu0A#, offset 48
	mov qword [rbp + 48], string_ULONG_MAX203D2025lu0A#

limits_test$62:	; parameter int8$18446744073709551615#, offset 56
	mov rax, 18446744073709551615
	mov [rbp + 56], rax

limits_test$63:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 24], limits_test$64
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

limits_test$64:	; post call

limits_test$65:	; call header integral zero 0 stack zero 0

limits_test$66:	; parameter string_ULONG_MAX203D2025lx0A#, offset 48
	mov qword [rbp + 48], string_ULONG_MAX203D2025lx0A#

limits_test$67:	; parameter int8$18446744073709551615#, offset 56
	mov rax, 18446744073709551615
	mov [rbp + 56], rax

limits_test$68:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 24], limits_test$69
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

limits_test$69:	; post call

limits_test$70:	; call header integral zero 0 stack zero 0

limits_test$71:	; parameter string_ULONG_MAX203D2025lX0A#, offset 48
	mov qword [rbp + 48], string_ULONG_MAX203D2025lX0A#

limits_test$72:	; parameter int8$18446744073709551615#, offset 56
	mov rax, 18446744073709551615
	mov [rbp + 56], rax

limits_test$73:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 24], limits_test$74
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

limits_test$74:	; post call

limits_test$75:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

limits_test$76:	; function end limits_test
section .data

$IntegralStorage#:
	times 8 db 0

string_CHAR_BIT203D2025i0A#:
	; initializer String
	db "CHAR_BIT = %i", 10, 0

string_CHAR_MIN203D2025i0A0A#:
	; initializer String
	db "CHAR_MIN = %i", 10, 10, 0

string_CHAR_MAX203D2025i0A#:
	; initializer String
	db "CHAR_MAX = %i", 10, 0

string_UCHAR_MAX203D2025u0A0A#:
	; initializer String
	db "UCHAR_MAX = %u", 10, 10, 0

string_SHRT_MIN203D2025i0A#:
	; initializer String
	db "SHRT_MIN = %i", 10, 0

string_SHRT_MAX203D2025i0A#:
	; initializer String
	db "SHRT_MAX = %i", 10, 0

string_USHRT_MAX203D2025u0A0A#:
	; initializer String
	db "USHRT_MAX = %u", 10, 10, 0

string_INT_MIN203D2025i0A#:
	; initializer String
	db "INT_MIN = %i", 10, 0

string_INT_MAX203D2025i0A#:
	; initializer String
	db "INT_MAX = %i", 10, 0

string_UINT_MAX203D2025u0A0A#:
	; initializer String
	db "UINT_MAX = %u", 10, 10, 0

string_LONG_MIN203D2025li0A#:
	; initializer String
	db "LONG_MIN = %li", 10, 0

string_LONG_MAX203D2025li0A#:
	; initializer String
	db "LONG_MAX = %li", 10, 0

string_ULONG_MAX203D2025lu0A#:
	; initializer String
	db "ULONG_MAX = %lu", 10, 0

string_ULONG_MAX203D2025lx0A#:
	; initializer String
	db "ULONG_MAX = %lx", 10, 0

string_ULONG_MAX203D2025lX0A#:
	; initializer String
	db "ULONG_MAX = %lX", 10, 0
