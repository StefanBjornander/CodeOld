	global print_test

	extern printf
	extern $StackTop


section .data

@7492string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#:
	; Initializer String <%8i> <%+8i> <% 8i> <%-8i> <%+-8i> <%-+8i> <% -8i> <%- 8i>\n
	db "<%8i> <%+8i> <% 8i> <%-8i> <%+-8i> <%-+8i> <% -8i> <%- 8i>", 10, 0

section .data

@7501string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#:
	; Initializer String <%8i> <%+8i> <% 8i> <%-8i> <%+-8i> <%-+8i> <% -8i> <%- 8i>\n
	db "<%8i> <%+8i> <% 8i> <%-8i> <%+-8i> <%-+8i> <% -8i> <%- 8i>", 10, 0

section .data

@7510string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#:
	; Initializer String <%08i> <%+08i> <% 08i> <%0 8i>\n
	db "<%08i> <%+08i> <% 08i> <%0 8i>", 10, 0

section .data

@7515string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#:
	; Initializer String <%08i> <%+08i> <% 08i> <%0 8i>\n
	db "<%08i> <%+08i> <% 08i> <%0 8i>", 10, 0

section .data

@7520string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#:
	; Initializer String <%12.3f> <%+12.3f> <% 12.3f> <%-12.3f> <%+-12.3f> <%-+12.3f> <% -12.3f> <%- 12.3f>\n
	db "<%12.3f> <%+12.3f> <% 12.3f> <%-12.3f> <%+-12.3f> <%-+12.3f> <% -12.3f> <%- 12.3f>", 10, 0

section .data

@7529string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#:
	; Initializer String <%12.3f> <%+12.3f> <% 12.3f> <%-12.3f> <%+-12.3f> <%-+12.3f> <% -12.3f> <%- 12.3f>\n
	db "<%12.3f> <%+12.3f> <% 12.3f> <%-12.3f> <%+-12.3f> <%-+12.3f> <% -12.3f> <%- 12.3f>", 10, 0

section .data

@7538string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#:
	; Initializer String <%012.3f> <%+012.3f> <% 012.3f> <%0 12.3f>\n
	db "<%012.3f> <%+012.3f> <% 012.3f> <%0 12.3f>", 10, 0

section .data

@7543string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#:
	; Initializer String <%012.3f> <%+012.3f> <% 012.3f> <%0 12.3f>\n
	db "<%012.3f> <%+012.3f> <% 012.3f> <%0 12.3f>", 10, 0

section .data

@7521floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7522floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7523floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7524floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7525floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7526floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7527floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7528floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7530floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@7531floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@7532floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@7533floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@7534floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@7535floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@7536floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@7537floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@7539floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7540floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7541floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7542floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@7544floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@7545floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@7546floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@7547floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .text

 print_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_test$1:
	; Parameter 48 pointer string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#
	mov qword [rbp + 48], @7492string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#

 print_test$2:
	; Parameter 56 signed int integral4$123#
	mov dword [rbp + 56], 123

 print_test$3:
	; Parameter 60 signed int integral4$123#
	mov dword [rbp + 60], 123

 print_test$4:
	; Parameter 64 signed int integral4$123#
	mov dword [rbp + 64], 123

 print_test$5:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 print_test$6:
	; Parameter 72 signed int integral4$123#
	mov dword [rbp + 72], 123

 print_test$7:
	; Parameter 76 signed int integral4$123#
	mov dword [rbp + 76], 123

 print_test$8:
	; Parameter 80 signed int integral4$123#
	mov dword [rbp + 80], 123

 print_test$9:
	; Parameter 84 signed int integral4$123#
	mov dword [rbp + 84], 123

 print_test$10:
	; Call 24 printf 32
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
	; Parameter 48 pointer string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#
	mov qword [rbp + 48], @7501string_3C258i3E203C252B8i3E203C25208i3E203C252D8i3E203C252B2D8i3E203C252D2B8i3E203C25202D8i3E203C252D208i3E0A#

 print_test$14:
	; Parameter 56 signed int integral4$minus123#
	mov dword [rbp + 56], -123

 print_test$15:
	; Parameter 60 signed int integral4$minus123#
	mov dword [rbp + 60], -123

 print_test$16:
	; Parameter 64 signed int integral4$minus123#
	mov dword [rbp + 64], -123

 print_test$17:
	; Parameter 68 signed int integral4$minus123#
	mov dword [rbp + 68], -123

 print_test$18:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 print_test$19:
	; Parameter 76 signed int integral4$minus123#
	mov dword [rbp + 76], -123

 print_test$20:
	; Parameter 80 signed int integral4$minus123#
	mov dword [rbp + 80], -123

 print_test$21:
	; Parameter 84 signed int integral4$minus123#
	mov dword [rbp + 84], -123

 print_test$22:
	; Call 24 printf 32
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
	; Parameter 48 pointer string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#
	mov qword [rbp + 48], @7510string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#

 print_test$26:
	; Parameter 56 signed int integral4$123#
	mov dword [rbp + 56], 123

 print_test$27:
	; Parameter 60 signed int integral4$123#
	mov dword [rbp + 60], 123

 print_test$28:
	; Parameter 64 signed int integral4$123#
	mov dword [rbp + 64], 123

 print_test$29:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 print_test$30:
	; Call 24 printf 16
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
	; Parameter 48 pointer string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#
	mov qword [rbp + 48], @7515string_3C2508i3E203C252B08i3E203C252008i3E203C250208i3E0A#

 print_test$34:
	; Parameter 56 signed int integral4$minus123#
	mov dword [rbp + 56], -123

 print_test$35:
	; Parameter 60 signed int integral4$minus123#
	mov dword [rbp + 60], -123

 print_test$36:
	; Parameter 64 signed int integral4$minus123#
	mov dword [rbp + 64], -123

 print_test$37:
	; Parameter 68 signed int integral4$minus123#
	mov dword [rbp + 68], -123

 print_test$38:
	; Call 24 printf 16
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
	; Parameter 48 pointer string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#
	mov qword [rbp + 48], @7520string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#

 print_test$42:
	; PushFloat floating8$123.456#
	fld qword [@7521floating8$123.456#]

 print_test$43:
	; Parameter 56 double floating8$123.456#
	fstp qword [rbp + 56]

 print_test$44:
	; PushFloat floating8$123.456#
	fld qword [@7522floating8$123.456#]

 print_test$45:
	; Parameter 64 double floating8$123.456#
	fstp qword [rbp + 64]

 print_test$46:
	; PushFloat floating8$123.456#
	fld qword [@7523floating8$123.456#]

 print_test$47:
	; Parameter 72 double floating8$123.456#
	fstp qword [rbp + 72]

 print_test$48:
	; PushFloat floating8$123.456#
	fld qword [@7524floating8$123.456#]

 print_test$49:
	; Parameter 80 double floating8$123.456#
	fstp qword [rbp + 80]

 print_test$50:
	; PushFloat floating8$123.456#
	fld qword [@7525floating8$123.456#]

 print_test$51:
	; Parameter 88 double floating8$123.456#
	fstp qword [rbp + 88]

 print_test$52:
	; PushFloat floating8$123.456#
	fld qword [@7526floating8$123.456#]

 print_test$53:
	; Parameter 96 double floating8$123.456#
	fstp qword [rbp + 96]

 print_test$54:
	; PushFloat floating8$123.456#
	fld qword [@7527floating8$123.456#]

 print_test$55:
	; Parameter 104 double floating8$123.456#
	fstp qword [rbp + 104]

 print_test$56:
	; PushFloat floating8$123.456#
	fld qword [@7528floating8$123.456#]

 print_test$57:
	; Parameter 112 double floating8$123.456#
	fstp qword [rbp + 112]

 print_test$58:
	; Call 24 printf 64
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
	; Parameter 48 pointer string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#
	mov qword [rbp + 48], @7529string_3C25122E3f3E203C252B122E3f3E203C2520122E3f3E203C252D122E3f3E203C252B2D122E3f3E203C252D2B122E3f3E203C25202D122E3f3E203C252D20122E3f3E0A#

 print_test$62:
	; PushFloat floating8$minus123.456#
	fld qword [@7530floating8$minus123.456#]

 print_test$63:
	; Parameter 56 double floating8$minus123.456#
	fstp qword [rbp + 56]

 print_test$64:
	; PushFloat floating8$minus123.456#
	fld qword [@7531floating8$minus123.456#]

 print_test$65:
	; Parameter 64 double floating8$minus123.456#
	fstp qword [rbp + 64]

 print_test$66:
	; PushFloat floating8$minus123.456#
	fld qword [@7532floating8$minus123.456#]

 print_test$67:
	; Parameter 72 double floating8$minus123.456#
	fstp qword [rbp + 72]

 print_test$68:
	; PushFloat floating8$minus123.456#
	fld qword [@7533floating8$minus123.456#]

 print_test$69:
	; Parameter 80 double floating8$minus123.456#
	fstp qword [rbp + 80]

 print_test$70:
	; PushFloat floating8$minus123.456#
	fld qword [@7534floating8$minus123.456#]

 print_test$71:
	; Parameter 88 double floating8$minus123.456#
	fstp qword [rbp + 88]

 print_test$72:
	; PushFloat floating8$minus123.456#
	fld qword [@7535floating8$minus123.456#]

 print_test$73:
	; Parameter 96 double floating8$minus123.456#
	fstp qword [rbp + 96]

 print_test$74:
	; PushFloat floating8$minus123.456#
	fld qword [@7536floating8$minus123.456#]

 print_test$75:
	; Parameter 104 double floating8$minus123.456#
	fstp qword [rbp + 104]

 print_test$76:
	; PushFloat floating8$minus123.456#
	fld qword [@7537floating8$minus123.456#]

 print_test$77:
	; Parameter 112 double floating8$minus123.456#
	fstp qword [rbp + 112]

 print_test$78:
	; Call 24 printf 64
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
	; Parameter 48 pointer string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#
	mov qword [rbp + 48], @7538string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#

 print_test$82:
	; PushFloat floating8$123.456#
	fld qword [@7539floating8$123.456#]

 print_test$83:
	; Parameter 56 double floating8$123.456#
	fstp qword [rbp + 56]

 print_test$84:
	; PushFloat floating8$123.456#
	fld qword [@7540floating8$123.456#]

 print_test$85:
	; Parameter 64 double floating8$123.456#
	fstp qword [rbp + 64]

 print_test$86:
	; PushFloat floating8$123.456#
	fld qword [@7541floating8$123.456#]

 print_test$87:
	; Parameter 72 double floating8$123.456#
	fstp qword [rbp + 72]

 print_test$88:
	; PushFloat floating8$123.456#
	fld qword [@7542floating8$123.456#]

 print_test$89:
	; Parameter 80 double floating8$123.456#
	fstp qword [rbp + 80]

 print_test$90:
	; Call 24 printf 32
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
	; Parameter 48 pointer string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#
	mov qword [rbp + 48], @7543string_3C250122E3f3E203C252B0122E3f3E203C25200122E3f3E203C25020122E3f3E0A#

 print_test$94:
	; PushFloat floating8$minus123.456#
	fld qword [@7544floating8$minus123.456#]

 print_test$95:
	; Parameter 56 double floating8$minus123.456#
	fstp qword [rbp + 56]

 print_test$96:
	; PushFloat floating8$minus123.456#
	fld qword [@7545floating8$minus123.456#]

 print_test$97:
	; Parameter 64 double floating8$minus123.456#
	fstp qword [rbp + 64]

 print_test$98:
	; PushFloat floating8$minus123.456#
	fld qword [@7546floating8$minus123.456#]

 print_test$99:
	; Parameter 72 double floating8$minus123.456#
	fstp qword [rbp + 72]

 print_test$100:
	; PushFloat floating8$minus123.456#
	fld qword [@7547floating8$minus123.456#]

 print_test$101:
	; Parameter 80 double floating8$minus123.456#
	fstp qword [rbp + 80]

 print_test$102:
	; Call 24 printf 32
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
