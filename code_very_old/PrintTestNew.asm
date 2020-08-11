	global print_test

	extern printf
section .text

print_test:	; call header integral zero 0 stack zero 0

print_test$1:	; parameter string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#, offset 48
	mov qword [rbp + 48], string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#

print_test$2:	; parameter int4$123#, offset 56
	mov dword [rbp + 56], 123

print_test$3:	; parameter int4$123#, offset 60
	mov dword [rbp + 60], 123

print_test$4:	; parameter int4$123#, offset 64
	mov dword [rbp + 64], 123

print_test$5:	; parameter int4$123#, offset 68
	mov dword [rbp + 68], 123

print_test$6:	; parameter int4$123#, offset 72
	mov dword [rbp + 72], 123

print_test$7:	; parameter int4$123#, offset 76
	mov dword [rbp + 76], 123

print_test$8:	; parameter int4$123#, offset 80
	mov dword [rbp + 80], 123

print_test$9:	; parameter int4$123#, offset 84
	mov dword [rbp + 84], 123

print_test$10:	; call function noellipse-ellipse printf, extra 32
	mov qword [rbp + 24], print_test$11
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 32
	jmp printf

print_test$11:	; post call

print_test$12:	; call header integral zero 0 stack zero 0

print_test$13:	; parameter string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#, offset 48
	mov qword [rbp + 48], string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#

print_test$14:	; parameter int4$minus123#, offset 56
	mov dword [rbp + 56], -123

print_test$15:	; parameter int4$minus123#, offset 60
	mov dword [rbp + 60], -123

print_test$16:	; parameter int4$minus123#, offset 64
	mov dword [rbp + 64], -123

print_test$17:	; parameter int4$minus123#, offset 68
	mov dword [rbp + 68], -123

print_test$18:	; parameter int4$minus123#, offset 72
	mov dword [rbp + 72], -123

print_test$19:	; parameter int4$minus123#, offset 76
	mov dword [rbp + 76], -123

print_test$20:	; parameter int4$minus123#, offset 80
	mov dword [rbp + 80], -123

print_test$21:	; parameter int4$minus123#, offset 84
	mov dword [rbp + 84], -123

print_test$22:	; call function noellipse-ellipse printf, extra 32
	mov qword [rbp + 24], print_test$23
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 32
	jmp printf

print_test$23:	; post call

print_test$24:	; call header integral zero 0 stack zero 0

print_test$25:	; parameter string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#, offset 48
	mov qword [rbp + 48], string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#

print_test$26:	; parameter int4$123#, offset 56
	mov dword [rbp + 56], 123

print_test$27:	; parameter int4$123#, offset 60
	mov dword [rbp + 60], 123

print_test$28:	; parameter int4$123#, offset 64
	mov dword [rbp + 64], 123

print_test$29:	; parameter int4$123#, offset 68
	mov dword [rbp + 68], 123

print_test$30:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 24], print_test$31
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 16
	jmp printf

print_test$31:	; post call

print_test$32:	; call header integral zero 0 stack zero 0

print_test$33:	; parameter string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#, offset 48
	mov qword [rbp + 48], string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#

print_test$34:	; parameter int4$minus123#, offset 56
	mov dword [rbp + 56], -123

print_test$35:	; parameter int4$minus123#, offset 60
	mov dword [rbp + 60], -123

print_test$36:	; parameter int4$minus123#, offset 64
	mov dword [rbp + 64], -123

print_test$37:	; parameter int4$minus123#, offset 68
	mov dword [rbp + 68], -123

print_test$38:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 24], print_test$39
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 16
	jmp printf

print_test$39:	; post call

print_test$40:	; call header integral zero 0 stack zero 0

print_test$41:	; parameter string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#, offset 48
	mov qword [rbp + 48], string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#

print_test$42:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$43:	; parameter float8$123.456#, offset 56
	fstp qword [rbp + 56]

print_test$44:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$45:	; parameter float8$123.456#, offset 64
	fstp qword [rbp + 64]

print_test$46:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$47:	; parameter float8$123.456#, offset 72
	fstp qword [rbp + 72]

print_test$48:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$49:	; parameter float8$123.456#, offset 80
	fstp qword [rbp + 80]

print_test$50:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$51:	; parameter float8$123.456#, offset 88
	fstp qword [rbp + 88]

print_test$52:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$53:	; parameter float8$123.456#, offset 96
	fstp qword [rbp + 96]

print_test$54:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$55:	; parameter float8$123.456#, offset 104
	fstp qword [rbp + 104]

print_test$56:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$57:	; parameter float8$123.456#, offset 112
	fstp qword [rbp + 112]

print_test$58:	; call function noellipse-ellipse printf, extra 64
	mov qword [rbp + 24], print_test$59
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 64
	jmp printf

print_test$59:	; post call

print_test$60:	; call header integral zero 0 stack zero 0

print_test$61:	; parameter string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#, offset 48
	mov qword [rbp + 48], string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#

print_test$62:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$63:	; parameter float8$minus123.456#, offset 56
	fstp qword [rbp + 56]

print_test$64:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$65:	; parameter float8$minus123.456#, offset 64
	fstp qword [rbp + 64]

print_test$66:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$67:	; parameter float8$minus123.456#, offset 72
	fstp qword [rbp + 72]

print_test$68:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$69:	; parameter float8$minus123.456#, offset 80
	fstp qword [rbp + 80]

print_test$70:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$71:	; parameter float8$minus123.456#, offset 88
	fstp qword [rbp + 88]

print_test$72:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$73:	; parameter float8$minus123.456#, offset 96
	fstp qword [rbp + 96]

print_test$74:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$75:	; parameter float8$minus123.456#, offset 104
	fstp qword [rbp + 104]

print_test$76:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$77:	; parameter float8$minus123.456#, offset 112
	fstp qword [rbp + 112]

print_test$78:	; call function noellipse-ellipse printf, extra 64
	mov qword [rbp + 24], print_test$79
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 64
	jmp printf

print_test$79:	; post call

print_test$80:	; call header integral zero 0 stack zero 0

print_test$81:	; parameter string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#, offset 48
	mov qword [rbp + 48], string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#

print_test$82:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$83:	; parameter float8$123.456#, offset 56
	fstp qword [rbp + 56]

print_test$84:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$85:	; parameter float8$123.456#, offset 64
	fstp qword [rbp + 64]

print_test$86:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$87:	; parameter float8$123.456#, offset 72
	fstp qword [rbp + 72]

print_test$88:	; push float float8$123.456#
	fld qword [float8$123.456#]

print_test$89:	; parameter float8$123.456#, offset 80
	fstp qword [rbp + 80]

print_test$90:	; call function noellipse-ellipse printf, extra 32
	mov qword [rbp + 24], print_test$91
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 32
	jmp printf

print_test$91:	; post call

print_test$92:	; call header integral zero 0 stack zero 0

print_test$93:	; parameter string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#, offset 48
	mov qword [rbp + 48], string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#

print_test$94:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$95:	; parameter float8$minus123.456#, offset 56
	fstp qword [rbp + 56]

print_test$96:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$97:	; parameter float8$minus123.456#, offset 64
	fstp qword [rbp + 64]

print_test$98:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$99:	; parameter float8$minus123.456#, offset 72
	fstp qword [rbp + 72]

print_test$100:	; push float float8$minus123.456#
	fld qword [float8$minus123.456#]

print_test$101:	; parameter float8$minus123.456#, offset 80
	fstp qword [rbp + 80]

print_test$102:	; call function noellipse-ellipse printf, extra 32
	mov qword [rbp + 24], print_test$103
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 32
	jmp printf

print_test$103:	; post call

print_test$104:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

print_test$105:	; function end print_test
section .data

$IntegralStorage#:
	times 8 db 0

string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#:
	; initializer String
	db "<%8i> <%+8i> <% 8i> <%-8i> <%+-8i> <%-+8i> <% -8i> <%- 8i>", 10, 0

string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#:
	; initializer String
	db "<%08i> <%+08i> <% 08i> <%0 8i>", 10, 0

string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#:
	; initializer String
	db "<%12.3f> <%+12.3f> <% 12.3f> <%-12.3f> <%+-12.3f> <%-+12.3f> <% -12.3f> <%- 12.3f>", 10, 0

string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#:
	; initializer String
	db "<%012.3f> <%+012.3f> <% 012.3f> <%0 12.3f>", 10, 0

float8$123.456#:
	; initializer Double
	dq 123.456

float8$minus123.456#:
	; initializer Double
	dq -123.456
