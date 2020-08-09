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
	extern _abs
	extern labs
	extern div
	extern ldiv
	extern qsort
	extern bsearch
section .text

compare:	; £temporary3909 = int_to_int valuePtr1 (Pointer -> Pointer)
	mov rsi, [rbp + 24]

compare$1:	; £field3910 -> £temporary3909 = *£temporary3909

compare$2:	; intValue1 = £field3910 -> £temporary3909
	mov eax, [rsi]
	mov [rbp + 40], eax

compare$3:	; £temporary3911 = int_to_int valuePtr2 (Pointer -> Pointer)
	mov rsi, [rbp + 32]

compare$4:	; £field3912 -> £temporary3911 = *£temporary3911

compare$5:	; intValue2 = £field3912 -> £temporary3911
	mov eax, [rsi]
	mov [rbp + 44], eax

compare$6:	; if intValue1 >= intValue2 goto 9
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge compare$9

compare$7:	; £temporary3916 = int4$minus1#
	mov eax, -1

compare$8:	; goto 14
	jmp compare$14

compare$9:	; if intValue1 != intValue2 goto 12
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jne compare$12

compare$10:	; £temporary3915 = int4$0#
	mov ebx, 0

compare$11:	; goto 13
	jmp compare$13

compare$12:	; £temporary3915 = int4$1#
	mov ebx, 1

compare$13:	; £temporary3916 = £temporary3915

compare$14:	; return_value = £temporary3916

compare$15:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

compare$16:	; function end compare

reverse_compare:	; £temporary3917 = int_to_int valuePtr1 (Pointer -> Pointer)
	mov rsi, [rbp + 24]

reverse_compare$1:	; £field3918 -> £temporary3917 = *£temporary3917

reverse_compare$2:	; intValue1 = £field3918 -> £temporary3917
	mov eax, [rsi]
	mov [rbp + 40], eax

reverse_compare$3:	; £temporary3919 = int_to_int valuePtr2 (Pointer -> Pointer)
	mov rsi, [rbp + 32]

reverse_compare$4:	; £field3920 -> £temporary3919 = *£temporary3919

reverse_compare$5:	; intValue2 = £field3920 -> £temporary3919
	mov eax, [rsi]
	mov [rbp + 44], eax

reverse_compare$6:	; if intValue1 >= intValue2 goto 9
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge reverse_compare$9

reverse_compare$7:	; £temporary3924 = int4$1#
	mov eax, 1

reverse_compare$8:	; goto 14
	jmp reverse_compare$14

reverse_compare$9:	; if intValue1 != intValue2 goto 12
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jne reverse_compare$12

reverse_compare$10:	; £temporary3923 = int4$0#
	mov ebx, 0

reverse_compare$11:	; goto 13
	jmp reverse_compare$13

reverse_compare$12:	; £temporary3923 = int4$minus1#
	mov ebx, -1

reverse_compare$13:	; £temporary3924 = £temporary3923

reverse_compare$14:	; return_value = £temporary3924

reverse_compare$15:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

reverse_compare$16:	; function end reverse_compare

print_div:	; call header integral zero 0 stack zero 0

print_div$1:	; parameter string_div_t20quot2025i20rem2025i0A#, offset 56
	mov qword [rbp + 56], string_div_t20quot2025i20rem2025i0A#

print_div$2:	; parameter d$quot, offset 64
	mov eax, [rbp + 24]
	mov [rbp + 64], eax

print_div$3:	; parameter d$rem, offset 68
	mov eax, [rbp + 28]
	mov [rbp + 68], eax

print_div$4:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 32], print_div$5
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

print_div$5:	; post call

print_div$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

print_div$7:	; function end print_div

print_ldiv:	; call header integral zero 0 stack zero 0

print_ldiv$1:	; parameter string_ldiv_t20quot2025li20rem2025li0A#, offset 64
	mov qword [rbp + 64], string_ldiv_t20quot2025li20rem2025li0A#

print_ldiv$2:	; parameter ld$quot, offset 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

print_ldiv$3:	; parameter ld$rem, offset 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

print_ldiv$4:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 40], print_ldiv$5
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

print_ldiv$5:	; post call

print_ldiv$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

print_ldiv$7:	; function end print_ldiv

exit_handle1x:	; call header integral zero 0 stack zero 0

exit_handle1x$1:	; parameter string_exit10A#, offset 48
	mov qword [rbp + 48], string_exit10A#

exit_handle1x$2:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 24], exit_handle1x$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

exit_handle1x$3:	; post call

exit_handle1x$4:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

exit_handle1x$5:	; function end exit_handle1x

exit_handle2x:	; call header integral zero 0 stack zero 0

exit_handle2x$1:	; parameter string_exit20A#, offset 48
	mov qword [rbp + 48], string_exit20A#

exit_handle2x$2:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 24], exit_handle2x$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

exit_handle2x$3:	; post call

exit_handle2x$4:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

exit_handle2x$5:	; function end exit_handle2x

exit_handle3x:	; call header integral zero 0 stack zero 0

exit_handle3x$1:	; parameter string_exit30A#, offset 48
	mov qword [rbp + 48], string_exit30A#

exit_handle3x$2:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 24], exit_handle3x$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

exit_handle3x$3:	; post call

exit_handle3x$4:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

exit_handle3x$5:	; function end exit_handle3x

stdlib_test:	; empty

stdlib_test$1:	; p = s
	mov [rbp + 324], rbp
	add qword [rbp + 324], 24

stdlib_test$2:	; q = t
	mov [rbp + 332], rbp
	add qword [rbp + 332], 124

stdlib_test$3:	; r = w
	mov [rbp + 340], rbp
	add qword [rbp + 340], 224

stdlib_test$4:	; call header integral zero 0 stack zero 0

stdlib_test$5:	; parameter string_1232E456abc#, offset 372
	mov qword [rbp + 372], string_1232E456abc#

stdlib_test$6:	; £temporary3934 = &p
	mov rsi, rbp
	add rsi, 324

stdlib_test$7:	; parameter £temporary3934, offset 380
	mov [rbp + 380], rsi

stdlib_test$8:	; call function noellipse-noellipse strtod
	mov qword [rbp + 348], stdlib_test$9
	mov [rbp + 356], rbp
	add rbp, 348
	jmp strtod

stdlib_test$9:	; post call

stdlib_test$10:	; £temporary3935 = return_value

stdlib_test$11:	; pop float x
	fstp qword [rbp + 348]

stdlib_test$12:	; call header integral zero 0 stack zero 0

stdlib_test$13:	; parameter string_1232E456#, offset 380
	mov qword [rbp + 380], string_1232E456#

stdlib_test$14:	; call function noellipse-noellipse atof
	mov qword [rbp + 356], stdlib_test$15
	mov [rbp + 364], rbp
	add rbp, 356
	jmp atof

stdlib_test$15:	; post call

stdlib_test$16:	; £temporary3936 = return_value

stdlib_test$17:	; pop float y
	fstp qword [rbp + 356]

stdlib_test$18:	; call header integral zero 0 stack zero 0

stdlib_test$19:	; parameter string_123abc#, offset 388
	mov qword [rbp + 388], string_123abc#

stdlib_test$20:	; £temporary3937 = &q
	mov rsi, rbp
	add rsi, 332

stdlib_test$21:	; parameter £temporary3937, offset 396
	mov [rbp + 396], rsi

stdlib_test$22:	; parameter int4$8#, offset 404
	mov dword [rbp + 404], 8

stdlib_test$23:	; call function noellipse-noellipse strtol
	mov qword [rbp + 364], stdlib_test$24
	mov [rbp + 372], rbp
	add rbp, 364
	jmp strtol

stdlib_test$24:	; post call

stdlib_test$25:	; £temporary3938 = return_value

stdlib_test$26:	; l = £temporary3938
	mov [rbp + 364], rbx

stdlib_test$27:	; call header integral zero 0 stack zero 0

stdlib_test$28:	; parameter string_123abc#, offset 396
	mov qword [rbp + 396], string_123abc#

stdlib_test$29:	; £temporary3939 = &r
	mov rsi, rbp
	add rsi, 340

stdlib_test$30:	; parameter £temporary3939, offset 404
	mov [rbp + 404], rsi

stdlib_test$31:	; parameter int4$8#, offset 412
	mov dword [rbp + 412], 8

stdlib_test$32:	; call function noellipse-noellipse strtoul
	mov qword [rbp + 372], stdlib_test$33
	mov [rbp + 380], rbp
	add rbp, 372
	jmp strtoul

stdlib_test$33:	; post call

stdlib_test$34:	; £temporary3940 = return_value

stdlib_test$35:	; ul = £temporary3940
	mov [rbp + 372], rbx

stdlib_test$36:	; call header integral zero 0 stack zero 0

stdlib_test$37:	; parameter string_atof28221232E4562229203D2025f0A#, offset 404
	mov qword [rbp + 404], string_atof28221232E4562229203D2025f0A#

stdlib_test$38:	; push float y
	fld qword [rbp + 356]

stdlib_test$39:	; parameter y, offset 412
	fstp qword [rbp + 412]

stdlib_test$40:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 380], stdlib_test$41
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 8
	jmp printf

stdlib_test$41:	; post call

stdlib_test$42:	; call header integral zero 0 stack zero 0

stdlib_test$43:	; parameter string_atoi28221232229203D2025i0A#, offset 404
	mov qword [rbp + 404], string_atoi28221232229203D2025i0A#

stdlib_test$44:	; call header integral zero 0 stack zero 0

stdlib_test$45:	; parameter string_123#, offset 436
	mov qword [rbp + 436], string_123#

stdlib_test$46:	; call function noellipse-noellipse atoi
	mov qword [rbp + 412], stdlib_test$47
	mov [rbp + 420], rbp
	add rbp, 412
	jmp atoi

stdlib_test$47:	; post call

stdlib_test$48:	; £temporary3942 = return_value

stdlib_test$49:	; parameter £temporary3942, offset 412
	mov [rbp + 412], ebx

stdlib_test$50:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 380], stdlib_test$51
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 4
	jmp printf

stdlib_test$51:	; post call

stdlib_test$52:	; call header integral zero 0 stack zero 0

stdlib_test$53:	; parameter string_atol28221232229203D2025li0A0A#, offset 404
	mov qword [rbp + 404], string_atol28221232229203D2025li0A0A#

stdlib_test$54:	; call header integral zero 0 stack zero 0

stdlib_test$55:	; parameter string_123#, offset 436
	mov qword [rbp + 436], string_123#

stdlib_test$56:	; call function noellipse-noellipse atol
	mov qword [rbp + 412], stdlib_test$57
	mov [rbp + 420], rbp
	add rbp, 412
	jmp atol

stdlib_test$57:	; post call

stdlib_test$58:	; £temporary3944 = return_value

stdlib_test$59:	; parameter £temporary3944, offset 412
	mov [rbp + 412], rbx

stdlib_test$60:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 380], stdlib_test$61
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 8
	jmp printf

stdlib_test$61:	; post call

stdlib_test$62:	; call header integral zero 0 stack zero 0

stdlib_test$63:	; parameter string_strtod28221232E456abc222C2026endp29203D202825f2C2025s290A#, offset 404
	mov qword [rbp + 404], string_strtod28221232E456abc222C2026endp29203D202825f2C2025s290A#

stdlib_test$64:	; push float x
	fld qword [rbp + 348]

stdlib_test$65:	; parameter x, offset 412
	fstp qword [rbp + 412]

stdlib_test$66:	; parameter p, offset 420
	mov rax, [rbp + 324]
	mov [rbp + 420], rax

stdlib_test$67:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 380], stdlib_test$68
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 16
	jmp printf

stdlib_test$68:	; post call

stdlib_test$69:	; call header integral zero 0 stack zero 0

stdlib_test$70:	; parameter string_strtol2822123abc222C2026endp29203D202825li2C2025s290A#, offset 404
	mov qword [rbp + 404], string_strtol2822123abc222C2026endp29203D202825li2C2025s290A#

stdlib_test$71:	; parameter l, offset 412
	mov rax, [rbp + 364]
	mov [rbp + 412], rax

stdlib_test$72:	; parameter q, offset 420
	mov rax, [rbp + 332]
	mov [rbp + 420], rax

stdlib_test$73:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 380], stdlib_test$74
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 16
	jmp printf

stdlib_test$74:	; post call

stdlib_test$75:	; call header integral zero 0 stack zero 0

stdlib_test$76:	; parameter string_strtoul2822123abc222C2026endp29203D202825lu2C2025s290A#, offset 404
	mov qword [rbp + 404], string_strtoul2822123abc222C2026endp29203D202825lu2C2025s290A#

stdlib_test$77:	; parameter ul, offset 412
	mov rax, [rbp + 372]
	mov [rbp + 412], rax

stdlib_test$78:	; parameter r, offset 420
	mov rax, [rbp + 340]
	mov [rbp + 420], rax

stdlib_test$79:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 380], stdlib_test$80
	mov [rbp + 388], rbp
	add rbp, 380
	mov rdi, rbp
	add rdi, 16
	jmp printf

stdlib_test$80:	; post call

stdlib_test$81:	; call header integral zero 0 stack zero 0

stdlib_test$82:	; parameter string_0Agetenv2822path2229203D2025s0A#, offset 48
	mov qword [rbp + 48], string_0Agetenv2822path2229203D2025s0A#

stdlib_test$83:	; call header integral zero 0 stack zero 0

stdlib_test$84:	; parameter string_path#, offset 80
	mov qword [rbp + 80], string_path#

stdlib_test$85:	; call function noellipse-noellipse getenv
	mov qword [rbp + 56], stdlib_test$86
	mov [rbp + 64], rbp
	add rbp, 56
	jmp getenv

stdlib_test$86:	; post call

stdlib_test$87:	; £temporary3949 = return_value

stdlib_test$88:	; parameter £temporary3949, offset 56
	mov [rbp + 56], rbx

stdlib_test$89:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 24], stdlib_test$90
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

stdlib_test$90:	; post call

stdlib_test$91:	; call header integral zero 0 stack zero 0

stdlib_test$92:	; parameter string_system2822dir22290A#, offset 48
	mov qword [rbp + 48], string_system2822dir22290A#

stdlib_test$93:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 24], stdlib_test$94
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

stdlib_test$94:	; post call

stdlib_test$95:	; call header integral zero 0 stack zero 0

stdlib_test$96:	; parameter string_dir#, offset 48
	mov qword [rbp + 48], string_dir#

stdlib_test$97:	; call function noellipse-noellipse system
	mov qword [rbp + 24], stdlib_test$98
	mov [rbp + 32], rbp
	add rbp, 24
	jmp system

stdlib_test$98:	; post call

stdlib_test$99:	; call header integral zero 0 stack zero 0

stdlib_test$100:	; parameter string_abs282D329203D2025i2C20abs28329203D2025i2C20labs282D3l29203D2025li2C20labs283l29203D2025li0A#, offset 48
	mov qword [rbp + 48], string_abs282D329203D2025i2C20abs28329203D2025i2C20labs282D3l29203D2025li2C20labs283l29203D2025li0A#

stdlib_test$101:	; call header integral zero 0 stack zero 0

stdlib_test$102:	; parameter int4$minus3#, offset 80
	mov dword [rbp + 80], -3

stdlib_test$103:	; call function noellipse-noellipse abs
	mov qword [rbp + 56], stdlib_test$104
	mov [rbp + 64], rbp
	add rbp, 56
	jmp _abs

stdlib_test$104:	; post call

stdlib_test$105:	; £temporary3953 = return_value

stdlib_test$106:	; parameter £temporary3953, offset 56
	mov [rbp + 56], ebx

stdlib_test$107:	; call header integral zero 0 stack zero 0

stdlib_test$108:	; parameter int4$3#, offset 84
	mov dword [rbp + 84], 3

stdlib_test$109:	; call function noellipse-noellipse abs
	mov qword [rbp + 60], stdlib_test$110
	mov [rbp + 68], rbp
	add rbp, 60
	jmp _abs

stdlib_test$110:	; post call

stdlib_test$111:	; £temporary3954 = return_value

stdlib_test$112:	; parameter £temporary3954, offset 60
	mov [rbp + 60], ebx

stdlib_test$113:	; call header integral zero 0 stack zero 0

stdlib_test$114:	; parameter int8$minus3#, offset 88
	mov rax, -3
	mov [rbp + 88], rax

stdlib_test$115:	; call function noellipse-noellipse labs
	mov qword [rbp + 64], stdlib_test$116
	mov [rbp + 72], rbp
	add rbp, 64
	jmp labs

stdlib_test$116:	; post call

stdlib_test$117:	; £temporary3955 = return_value

stdlib_test$118:	; parameter £temporary3955, offset 64
	mov [rbp + 64], rbx

stdlib_test$119:	; call header integral zero 0 stack zero 0

stdlib_test$120:	; parameter int8$3#, offset 96
	mov rax, 3
	mov [rbp + 96], rax

stdlib_test$121:	; call function noellipse-noellipse labs
	mov qword [rbp + 72], stdlib_test$122
	mov [rbp + 80], rbp
	add rbp, 72
	jmp labs

stdlib_test$122:	; post call

stdlib_test$123:	; £temporary3956 = return_value

stdlib_test$124:	; parameter £temporary3956, offset 72
	mov [rbp + 72], rbx

stdlib_test$125:	; call function noellipse-ellipse printf, extra 24
	mov qword [rbp + 24], stdlib_test$126
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 24
	jmp printf

stdlib_test$126:	; post call

stdlib_test$127:	; call header integral zero 0 stack zero 0

stdlib_test$128:	; parameter int4$10#, offset 48
	mov dword [rbp + 48], 10

stdlib_test$129:	; parameter int4$3#, offset 52
	mov dword [rbp + 52], 3

stdlib_test$130:	; call function noellipse-noellipse div
	mov qword [rbp + 24], stdlib_test$131
	mov [rbp + 32], rbp
	add rbp, 24
	jmp div

stdlib_test$131:	; post call

stdlib_test$132:	; £temporary3958 -> £temporary3959 = return_value

stdlib_test$133:	; i = £temporary3958 -> £temporary3959
	mov rsi, rbp
	add rsi, 24
	mov al, 8

x0:
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne x0

stdlib_test$134:	; call header integral zero 0 stack zero 0

stdlib_test$135:	; parameter string_div_t28102C20329203D202825i2C2025i292C0A#, offset 56
	mov qword [rbp + 56], string_div_t28102C20329203D202825i2C2025i292C0A#

stdlib_test$136:	; parameter i$quot, offset 64
	mov eax, [rbp + 24]
	mov [rbp + 64], eax

stdlib_test$137:	; parameter i$rem, offset 68
	mov eax, [rbp + 28]
	mov [rbp + 68], eax

stdlib_test$138:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 32], stdlib_test$139
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

stdlib_test$139:	; post call

stdlib_test$140:	; call header integral zero 0 stack zero 0

stdlib_test$141:	; parameter i, offset 56
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 56
	mov al, 8

x1:
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne x1

stdlib_test$142:	; call function noellipse-noellipse print_div
	mov qword [rbp + 32], stdlib_test$143
	mov [rbp + 40], rbp
	add rbp, 32
	jmp print_div

stdlib_test$143:	; post call

stdlib_test$144:	; call header integral zero 0 stack zero 0

stdlib_test$145:	; parameter int8$10#, offset 48
	mov rax, 10
	mov [rbp + 48], rax

stdlib_test$146:	; parameter int8$3#, offset 56
	mov rax, 3
	mov [rbp + 56], rax

stdlib_test$147:	; call function noellipse-noellipse ldiv
	mov qword [rbp + 24], stdlib_test$148
	mov [rbp + 32], rbp
	add rbp, 24
	jmp ldiv

stdlib_test$148:	; post call

stdlib_test$149:	; £temporary3964 -> £temporary3965 = return_value

stdlib_test$150:	; li = £temporary3964 -> £temporary3965
	mov rsi, rbp
	add rsi, 24
	mov al, 16

x2:
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne x2

stdlib_test$151:	; call header integral zero 0 stack zero 0

stdlib_test$152:	; parameter string_ldiv_t28102C20329203D202825li2C2025li290A#, offset 64
	mov qword [rbp + 64], string_ldiv_t28102C20329203D202825li2C2025li290A#

stdlib_test$153:	; parameter li$quot, offset 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

stdlib_test$154:	; parameter li$rem, offset 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

stdlib_test$155:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 40], stdlib_test$156
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

stdlib_test$156:	; post call

stdlib_test$157:	; call header integral zero 0 stack zero 0

stdlib_test$158:	; parameter li, offset 64
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 64
	mov al, 16

x3:
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne x3

stdlib_test$159:	; call function noellipse-noellipse print_ldiv
	mov qword [rbp + 40], stdlib_test$160
	mov [rbp + 48], rbp
	add rbp, 40
	jmp print_ldiv

stdlib_test$160:	; post call

stdlib_test$161:	; list[0] = int4$3#
	mov dword [rbp + 24], 3

stdlib_test$162:	; list[1] = int4$4#
	mov dword [rbp + 28], 4

stdlib_test$163:	; list[2] = int4$2#
	mov dword [rbp + 32], 2

stdlib_test$164:	; list[3] = int4$1#
	mov dword [rbp + 36], 1

stdlib_test$165:	; size = int4$4#
	mov dword [rbp + 40], 4

stdlib_test$166:	; call header integral zero 0 stack zero 0

stdlib_test$167:	; parameter string_0AA20List2013A20#, offset 72
	mov qword [rbp + 72], string_0AA20List2013A20#

stdlib_test$168:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 48], stdlib_test$169
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

stdlib_test$169:	; post call

stdlib_test$170:	; index = int4$0#
	mov dword [rbp + 44], 0

stdlib_test$171:	; if index >= size goto 183
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$183

stdlib_test$172:	; call header integral zero 0 stack zero 0

stdlib_test$173:	; parameter string_25i20#, offset 72
	mov qword [rbp + 72], string_25i20#

stdlib_test$174:	; £temporary3978 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

stdlib_test$175:	; £temporary3980 = £temporary3978 * int8$4#
	xor rdx, rdx
	mul qword [int8$4#]

stdlib_test$176:	; £temporary3979 = list + £temporary3980
	mov rbx, rbp
	add rbx, 24
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

stdlib_test$177:	; £field3981 -> £temporary3979 = *£temporary3979

stdlib_test$178:	; parameter £field3981 -> £temporary3979, offset 80
	mov eax, [rsi]
	mov [rbp + 80], eax

stdlib_test$179:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 48], stdlib_test$180
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

stdlib_test$180:	; post call

stdlib_test$181:	; index = index + int4$1#
	inc dword [rbp + 44]

stdlib_test$182:	; goto 171
	jmp stdlib_test$171

stdlib_test$183:	; call header integral zero 0 stack zero 0

stdlib_test$184:	; parameter string_0AB20List2023A20#, offset 72
	mov qword [rbp + 72], string_0AB20List2023A20#

stdlib_test$185:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 48], stdlib_test$186
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

stdlib_test$186:	; post call

stdlib_test$187:	; call header integral zero 0 stack zero 0

stdlib_test$188:	; parameter list, offset 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

stdlib_test$189:	; parameter size, offset 80
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

stdlib_test$190:	; parameter int4$4#, offset 84
	mov dword [rbp + 84], 4

stdlib_test$191:	; parameter reverse_compare, offset 88
	mov qword [rbp + 88], reverse_compare

stdlib_test$192:	; call function noellipse-ellipse qsort, extra 0
	mov qword [rbp + 48], stdlib_test$193
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp qsort

stdlib_test$193:	; post call

stdlib_test$194:	; index = int4$0#
	mov dword [rbp + 44], 0

stdlib_test$195:	; if index >= size goto 207
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$207

stdlib_test$196:	; call header integral zero 0 stack zero 0

stdlib_test$197:	; parameter string_25i20#, offset 72
	mov qword [rbp + 72], string_25i20#

stdlib_test$198:	; £temporary3988 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

stdlib_test$199:	; £temporary3990 = £temporary3988 * int8$4#
	xor rdx, rdx
	mul qword [int8$4#]

stdlib_test$200:	; £temporary3989 = list + £temporary3990
	mov rbx, rbp
	add rbx, 24
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

stdlib_test$201:	; £field3991 -> £temporary3989 = *£temporary3989

stdlib_test$202:	; parameter £field3991 -> £temporary3989, offset 80
	mov eax, [rsi]
	mov [rbp + 80], eax

stdlib_test$203:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 48], stdlib_test$204
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

stdlib_test$204:	; post call

stdlib_test$205:	; index = index + int4$1#
	inc dword [rbp + 44]

stdlib_test$206:	; goto 195
	jmp stdlib_test$195

stdlib_test$207:	; call header integral zero 0 stack zero 0

stdlib_test$208:	; parameter string_0AC20List2033A20#, offset 72
	mov qword [rbp + 72], string_0AC20List2033A20#

stdlib_test$209:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 48], stdlib_test$210
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

stdlib_test$210:	; post call

stdlib_test$211:	; call header integral zero 0 stack zero 0

stdlib_test$212:	; parameter list, offset 72
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

stdlib_test$213:	; parameter size, offset 80
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

stdlib_test$214:	; parameter int4$4#, offset 84
	mov dword [rbp + 84], 4

stdlib_test$215:	; parameter compare, offset 88
	mov qword [rbp + 88], compare

stdlib_test$216:	; call function noellipse-ellipse qsort, extra 0
	mov qword [rbp + 48], stdlib_test$217
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp qsort

stdlib_test$217:	; post call

stdlib_test$218:	; index = int4$0#
	mov dword [rbp + 44], 0

stdlib_test$219:	; if index >= size goto 231
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$231

stdlib_test$220:	; call header integral zero 0 stack zero 0

stdlib_test$221:	; parameter string_25i20#, offset 72
	mov qword [rbp + 72], string_25i20#

stdlib_test$222:	; £temporary3998 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

stdlib_test$223:	; £temporary4000 = £temporary3998 * int8$4#
	xor rdx, rdx
	mul qword [int8$4#]

stdlib_test$224:	; £temporary3999 = list + £temporary4000
	mov rbx, rbp
	add rbx, 24
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

stdlib_test$225:	; £field4001 -> £temporary3999 = *£temporary3999

stdlib_test$226:	; parameter £field4001 -> £temporary3999, offset 80
	mov eax, [rsi]
	mov [rbp + 80], eax

stdlib_test$227:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 48], stdlib_test$228
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

stdlib_test$228:	; post call

stdlib_test$229:	; index = index + int4$1#
	inc dword [rbp + 44]

stdlib_test$230:	; goto 219
	jmp stdlib_test$219

stdlib_test$231:	; call header integral zero 0 stack zero 0

stdlib_test$232:	; parameter string_0A0ASearch3A0A#, offset 72
	mov qword [rbp + 72], string_0A0ASearch3A0A#

stdlib_test$233:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 48], stdlib_test$234
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

stdlib_test$234:	; post call

stdlib_test$235:	; key = int4$0#
	mov dword [rbp + 44], 0

stdlib_test$236:	; if key >= int4$6# goto 265
	cmp dword [rbp + 44], 6
	jge stdlib_test$265

stdlib_test$237:	; call header integral zero 0 stack zero 0

stdlib_test$238:	; £temporary4006 = &key
	mov rsi, rbp
	add rsi, 44

stdlib_test$239:	; parameter £temporary4006, offset 72
	mov [rbp + 72], rsi

stdlib_test$240:	; parameter list, offset 80
	mov [rbp + 80], rbp
	add qword [rbp + 80], 24

stdlib_test$241:	; parameter size, offset 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

stdlib_test$242:	; parameter int4$4#, offset 92
	mov dword [rbp + 92], 4

stdlib_test$243:	; parameter compare, offset 96
	mov qword [rbp + 96], compare

stdlib_test$244:	; call function noellipse-noellipse bsearch
	mov qword [rbp + 48], stdlib_test$245
	mov [rbp + 56], rbp
	add rbp, 48
	jmp bsearch

stdlib_test$245:	; post call

stdlib_test$246:	; £temporary4008 = return_value

stdlib_test$247:	; £temporary4009 = int_to_int £temporary4008 (Pointer -> Pointer)

stdlib_test$248:	; p = £temporary4009
	mov [rbp + 48], rbx

stdlib_test$249:	; if p == int8$0# goto 255
	cmp qword [rbp + 48], 0
	je stdlib_test$255

stdlib_test$250:	; £temporary4012 = p - list
	mov rbx, rbp
	add rbx, 24
	mov rax, [rbp + 48]
	sub rax, rbx

stdlib_test$251:	; £temporary4011 = £temporary4012 / int8$4#
	xor rdx, rdx
	div qword [int8$4#]

stdlib_test$252:	; £temporary4013 = int_to_int £temporary4011 (Pointer -> Signed_Int)

stdlib_test$253:	; £temporary4014 = £temporary4013

stdlib_test$254:	; goto 256
	jmp stdlib_test$256

stdlib_test$255:	; £temporary4014 = int4$minus1#
	mov eax, -1

stdlib_test$256:	; index = £temporary4014
	mov [rbp + 56], eax

stdlib_test$257:	; call header integral zero 0 stack zero 0

stdlib_test$258:	; parameter string_20202825i2C2025i290A#, offset 84
	mov qword [rbp + 84], string_20202825i2C2025i290A#

stdlib_test$259:	; parameter key, offset 92
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

stdlib_test$260:	; parameter index, offset 96
	mov eax, [rbp + 56]
	mov [rbp + 96], eax

stdlib_test$261:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 60], stdlib_test$262
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 8
	jmp printf

stdlib_test$262:	; post call

stdlib_test$263:	; key = key + int4$1#
	inc dword [rbp + 44]

stdlib_test$264:	; goto 236
	jmp stdlib_test$236

stdlib_test$265:	; call header integral zero 0 stack zero 0

stdlib_test$266:	; parameter string_0A#, offset 72
	mov qword [rbp + 72], string_0A#

stdlib_test$267:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 48], stdlib_test$268
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

stdlib_test$268:	; post call

stdlib_test$269:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

stdlib_test$270:	; function end stdlib_test
section .data

$IntegralStorage#:
	times 8 db 0

string_div_t20quot2025i20rem2025i0A#:
	; initializer String
	db "div_t quot %i rem %i", 10, 0

string_ldiv_t20quot2025li20rem2025li0A#:
	; initializer String
	db "ldiv_t quot %li rem %li", 10, 0

string_exit10A#:
	; initializer String
	db "exit1", 10, 0

string_exit20A#:
	; initializer String
	db "exit2", 10, 0

string_exit30A#:
	; initializer String
	db "exit3", 10, 0

string_1232E456abc#:
	; initializer String
	db "123.456abc", 0

string_1232E456#:
	; initializer String
	db "123.456", 0

string_123abc#:
	; initializer String
	db "123abc", 0

string_atof28221232E4562229203D2025f0A#:
	; initializer String
	db "atof(", 34, "123.456", 34, ") = %f", 10, 0

string_atoi28221232229203D2025i0A#:
	; initializer String
	db "atoi(", 34, "123", 34, ") = %i", 10, 0

string_123#:
	; initializer String
	db "123", 0

string_atol28221232229203D2025li0A0A#:
	; initializer String
	db "atol(", 34, "123", 34, ") = %li", 10, 10, 0

string_strtod28221232E456abc222C2026endp29203D202825f2C2025s290A#:
	; initializer String
	db "strtod(", 34, "123.456abc", 34, ", &endp) = (%f, %s)", 10, 0

string_strtol2822123abc222C2026endp29203D202825li2C2025s290A#:
	; initializer String
	db "strtol(", 34, "123abc", 34, ", &endp) = (%li, %s)", 10, 0

string_strtoul2822123abc222C2026endp29203D202825lu2C2025s290A#:
	; initializer String
	db "strtoul(", 34, "123abc", 34, ", &endp) = (%lu, %s)", 10, 0

string_0Agetenv2822path2229203D2025s0A#:
	; initializer String
	db 10, "getenv(", 34, "path", 34, ") = %s", 10, 0

string_path#:
	; initializer String
	db "path", 0

string_system2822dir22290A#:
	; initializer String
	db "system(", 34, "dir", 34, ")", 10, 0

string_dir#:
	; initializer String
	db "dir", 0

string_abs282D329203D2025i2C20abs28329203D2025i2C20labs282D3l29203D2025li2C20labs283l29203D2025li0A#:
	; initializer String
	db "abs(-3) = %i, abs(3) = %i, labs(-3l) = %li, labs(3l) = %li", 10, 0

string_div_t28102C20329203D202825i2C2025i292C0A#:
	; initializer String
	db "div_t(10, 3) = (%i, %i),", 10, 0

string_ldiv_t28102C20329203D202825li2C2025li290A#:
	; initializer String
	db "ldiv_t(10, 3) = (%li, %li)", 10, 0

string_0AA20List2013A20#:
	; initializer String
	db 10, "A List 1: ", 0

string_25i20#:
	; initializer String
	db "%i ", 0

string_0AB20List2023A20#:
	; initializer String
	db 10, "B List 2: ", 0

string_0AC20List2033A20#:
	; initializer String
	db 10, "C List 3: ", 0

string_0A0ASearch3A0A#:
	; initializer String
	db 10, 10, "Search:", 10, 0

string_20202825i2C2025i290A#:
	; initializer String
	db "  (%i, %i)", 10, 0

string_0A#:
	; initializer String
	db 10, 0

int8$4#:
	; initializer Pointer
	dq 4
