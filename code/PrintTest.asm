	global print_test

	extern printf
	extern $StackTop


section .data

string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#:
	; Initializer String <%8i> <%+8i> <% 8i> <%-8i> <%+-8i> <%-+8i> <% -8i> <%- 8i>\n
	db "<%8i> <%+8i> <% 8i> <%-8i> <%+-8i> <%-+8i> <% -8i> <%- 8i>", 10, 0

section .data

string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#:
	; Initializer String <%08i> <%+08i> <% 08i> <%0 8i>\n
	db "<%08i> <%+08i> <% 08i> <%0 8i>", 10, 0

section .data

string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#:
	; Initializer String <%12.3f> <%+12.3f> <% 12.3f> <%-12.3f> <%+-12.3f> <%-+12.3f> <% -12.3f> <%- 12.3f>\n
	db "<%12.3f> <%+12.3f> <% 12.3f> <%-12.3f> <%+-12.3f> <%-+12.3f> <% -12.3f> <%- 12.3f>", 10, 0

section .data

string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#:
	; Initializer String <%012.3f> <%+012.3f> <% 012.3f> <%0 12.3f>\n
	db "<%012.3f> <%+012.3f> <% 012.3f> <%0 12.3f>", 10, 0

section .data

float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .text

 print_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_test$1:
	; Parameter pointer "<%8i> <%+8i> <% 8i> <%-8i> <%+-8i> <%-+8i> <% -8i> <%- 8i>\n" 48
	mov qword [rbp + 48], string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#

 print_test$2:
	; Parameter signedint 123 56
	mov dword [rbp + 56], 123

 print_test$3:
	; Parameter signedint 123 60
	mov dword [rbp + 60], 123

 print_test$4:
	; Parameter signedint 123 64
	mov dword [rbp + 64], 123

 print_test$5:
	; Parameter signedint 123 68
	mov dword [rbp + 68], 123

 print_test$6:
	; Parameter signedint 123 72
	mov dword [rbp + 72], 123

 print_test$7:
	; Parameter signedint 123 76
	mov dword [rbp + 76], 123

 print_test$8:
	; Parameter signedint 123 80
	mov dword [rbp + 80], 123

 print_test$9:
	; Parameter signedint 123 84
	mov dword [rbp + 84], 123

 print_test$10:
	; Call printf 24 32
	mov qword [rbp + 24], print_test$11
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 32
	jmp printf

 print_test$11:
	; PostCall 24

 print_test$12:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_test$13:
	; Parameter pointer "<%8i> <%+8i> <% 8i> <%-8i> <%+-8i> <%-+8i> <% -8i> <%- 8i>\n" 48
	mov qword [rbp + 48], string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#

 print_test$14:
	; Parameter signedint -123 56
	mov dword [rbp + 56], -123

 print_test$15:
	; Parameter signedint -123 60
	mov dword [rbp + 60], -123

 print_test$16:
	; Parameter signedint -123 64
	mov dword [rbp + 64], -123

 print_test$17:
	; Parameter signedint -123 68
	mov dword [rbp + 68], -123

 print_test$18:
	; Parameter signedint -123 72
	mov dword [rbp + 72], -123

 print_test$19:
	; Parameter signedint -123 76
	mov dword [rbp + 76], -123

 print_test$20:
	; Parameter signedint -123 80
	mov dword [rbp + 80], -123

 print_test$21:
	; Parameter signedint -123 84
	mov dword [rbp + 84], -123

 print_test$22:
	; Call printf 24 32
	mov qword [rbp + 24], print_test$23
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 32
	jmp printf

 print_test$23:
	; PostCall 24

 print_test$24:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_test$25:
	; Parameter pointer "<%08i> <%+08i> <% 08i> <%0 8i>\n" 48
	mov qword [rbp + 48], string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#

 print_test$26:
	; Parameter signedint 123 56
	mov dword [rbp + 56], 123

 print_test$27:
	; Parameter signedint 123 60
	mov dword [rbp + 60], 123

 print_test$28:
	; Parameter signedint 123 64
	mov dword [rbp + 64], 123

 print_test$29:
	; Parameter signedint 123 68
	mov dword [rbp + 68], 123

 print_test$30:
	; Call printf 24 16
	mov qword [rbp + 24], print_test$31
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 16
	jmp printf

 print_test$31:
	; PostCall 24

 print_test$32:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_test$33:
	; Parameter pointer "<%08i> <%+08i> <% 08i> <%0 8i>\n" 48
	mov qword [rbp + 48], string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#

 print_test$34:
	; Parameter signedint -123 56
	mov dword [rbp + 56], -123

 print_test$35:
	; Parameter signedint -123 60
	mov dword [rbp + 60], -123

 print_test$36:
	; Parameter signedint -123 64
	mov dword [rbp + 64], -123

 print_test$37:
	; Parameter signedint -123 68
	mov dword [rbp + 68], -123

 print_test$38:
	; Call printf 24 16
	mov qword [rbp + 24], print_test$39
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 16
	jmp printf

 print_test$39:
	; PostCall 24

 print_test$40:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_test$41:
	; Parameter pointer "<%12.3f> <%+12.3f> <% 12.3f> <%-12.3f> <%+-12.3f> <%-+12.3f> <% -12.3f> <%- 12.3f>\n" 48
	mov qword [rbp + 48], string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#

 print_test$42:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$43:
	; Parameter double 123.456 56
	fstp qword [rbp + 56]

 print_test$44:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$45:
	; Parameter double 123.456 64
	fstp qword [rbp + 64]

 print_test$46:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$47:
	; Parameter double 123.456 72
	fstp qword [rbp + 72]

 print_test$48:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$49:
	; Parameter double 123.456 80
	fstp qword [rbp + 80]

 print_test$50:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$51:
	; Parameter double 123.456 88
	fstp qword [rbp + 88]

 print_test$52:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$53:
	; Parameter double 123.456 96
	fstp qword [rbp + 96]

 print_test$54:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$55:
	; Parameter double 123.456 104
	fstp qword [rbp + 104]

 print_test$56:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$57:
	; Parameter double 123.456 112
	fstp qword [rbp + 112]

 print_test$58:
	; Call printf 24 64
	mov qword [rbp + 24], print_test$59
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 64
	jmp printf

 print_test$59:
	; PostCall 24

 print_test$60:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_test$61:
	; Parameter pointer "<%12.3f> <%+12.3f> <% 12.3f> <%-12.3f> <%+-12.3f> <%-+12.3f> <% -12.3f> <%- 12.3f>\n" 48
	mov qword [rbp + 48], string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#

 print_test$62:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$63:
	; Parameter double -123.456 56
	fstp qword [rbp + 56]

 print_test$64:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$65:
	; Parameter double -123.456 64
	fstp qword [rbp + 64]

 print_test$66:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$67:
	; Parameter double -123.456 72
	fstp qword [rbp + 72]

 print_test$68:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$69:
	; Parameter double -123.456 80
	fstp qword [rbp + 80]

 print_test$70:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$71:
	; Parameter double -123.456 88
	fstp qword [rbp + 88]

 print_test$72:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$73:
	; Parameter double -123.456 96
	fstp qword [rbp + 96]

 print_test$74:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$75:
	; Parameter double -123.456 104
	fstp qword [rbp + 104]

 print_test$76:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$77:
	; Parameter double -123.456 112
	fstp qword [rbp + 112]

 print_test$78:
	; Call printf 24 64
	mov qword [rbp + 24], print_test$79
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 64
	jmp printf

 print_test$79:
	; PostCall 24

 print_test$80:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_test$81:
	; Parameter pointer "<%012.3f> <%+012.3f> <% 012.3f> <%0 12.3f>\n" 48
	mov qword [rbp + 48], string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#

 print_test$82:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$83:
	; Parameter double 123.456 56
	fstp qword [rbp + 56]

 print_test$84:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$85:
	; Parameter double 123.456 64
	fstp qword [rbp + 64]

 print_test$86:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$87:
	; Parameter double 123.456 72
	fstp qword [rbp + 72]

 print_test$88:
	; PushFloat 123.456
	fld qword [float8$123.456#]

 print_test$89:
	; Parameter double 123.456 80
	fstp qword [rbp + 80]

 print_test$90:
	; Call printf 24 32
	mov qword [rbp + 24], print_test$91
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 32
	jmp printf

 print_test$91:
	; PostCall 24

 print_test$92:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_test$93:
	; Parameter pointer "<%012.3f> <%+012.3f> <% 012.3f> <%0 12.3f>\n" 48
	mov qword [rbp + 48], string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#

 print_test$94:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$95:
	; Parameter double -123.456 56
	fstp qword [rbp + 56]

 print_test$96:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$97:
	; Parameter double -123.456 64
	fstp qword [rbp + 64]

 print_test$98:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$99:
	; Parameter double -123.456 72
	fstp qword [rbp + 72]

 print_test$100:
	; PushFloat -123.456
	fld qword [float8$minus123.456#]

 print_test$101:
	; Parameter double -123.456 80
	fstp qword [rbp + 80]

 print_test$102:
	; Call printf 24 32
	mov qword [rbp + 24], print_test$103
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 32
	jmp printf

 print_test$103:
	; PostCall 24

 print_test$104:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_test$105:
	; FunctionEnd print_test
