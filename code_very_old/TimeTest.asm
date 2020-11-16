	global time_test

	extern time
	extern gmtime
	extern localtime
	extern mktime
	extern printf
	extern asctime
	extern strcpy
	extern ctime
	extern strftime
	extern strlen
	extern $StackTop


section .data

string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

string_now2013A2025lu0A#:
	; Initializer String now 1: %lu\n
	db "now 1: %lu", 10, 0

section .data

string_now2023A2025lu0A#:
	; Initializer String now 2: %lu\n
	db "now 2: %lu", 10, 0

section .data

string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
	; Initializer String    gm time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n
	db "   gm time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i", 10, 0

section .data

string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
	; Initializer String local time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n
	db "local time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i", 10, 0

section .data

string_asctime203C25s3E2C20ctime203C25s3E0A#:
	; Initializer String asctime <%s>, ctime <%s>\n
	db "asctime <%s>, ctime <%s>", 10, 0

section .data

string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#:
	; Initializer String short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y
	db "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y", 0

section .data

string_strftime2025i2025i203C25s3E0A#:
	; Initializer String strftime %i %i <%s>\n
	db "strftime %i %i <%s>", 10, 0

section .data

Array_8#:
	; Initializer Array 8
	dq 8

section .text

 time_test:
	; Assign weekdays[0] "Sun"
	mov qword [rbp + 24], string_Sun#

 time_test$1:
	; Assign weekdays[1] "Mon"
	mov qword [rbp + 32], string_Mon#

 time_test$2:
	; Assign weekdays[2] "Tue"
	mov qword [rbp + 40], string_Tue#

 time_test$3:
	; Assign weekdays[3] "Wed"
	mov qword [rbp + 48], string_Wed#

 time_test$4:
	; Assign weekdays[4] "Thu"
	mov qword [rbp + 56], string_Thu#

 time_test$5:
	; Assign weekdays[5] "Fri"
	mov qword [rbp + 64], string_Fri#

 time_test$6:
	; Assign weekdays[6] "Sat"
	mov qword [rbp + 72], string_Sat#

 time_test$7:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$8:
	; Parameter pointer 0 104
	mov qword [rbp + 104], 0

 time_test$9:
	; Call time 80 0
	mov qword [rbp + 80], time_test$10
	mov [rbp + 88], rbp
	add rbp, 80
	jmp time

 time_test$10:
	; PostCall 80

 time_test$11:
	; GetReturnValue £temporary4486

 time_test$12:
	; Assign now1 £temporary4486
	mov [rbp + 80], rbx

 time_test$13:
	; PreCall 88 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$14:
	; Address £temporary4487 now1
	mov rsi, rbp
	add rsi, 80

 time_test$15:
	; Parameter pointer £temporary4487 112
	mov [rbp + 112], rsi

 time_test$16:
	; Call gmtime 88 0
	mov qword [rbp + 88], time_test$17
	mov [rbp + 96], rbp
	add rbp, 88
	jmp gmtime

 time_test$17:
	; PostCall 88

 time_test$18:
	; GetReturnValue £temporary4488

 time_test$19:
	; Dereference £temporary4489 -> £temporary4488 £temporary4488 0

 time_test$20:
	; AssignInitSize s £temporary4489 -> £temporary4488
	mov rsi, rbp
	add rsi, 88
	mov al, 36

 time_test$21:
	; Assign s £temporary4489 -> £temporary4488
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne time_test$21

 time_test$22:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$23:
	; Address £temporary4490 now1
	mov rsi, rbp
	add rsi, 80

 time_test$24:
	; Parameter pointer £temporary4490 148
	mov [rbp + 148], rsi

 time_test$25:
	; Call localtime 124 0
	mov qword [rbp + 124], time_test$26
	mov [rbp + 132], rbp
	add rbp, 124
	jmp localtime

 time_test$26:
	; PostCall 124

 time_test$27:
	; GetReturnValue £temporary4491

 time_test$28:
	; Dereference £temporary4492 -> £temporary4491 £temporary4491 0

 time_test$29:
	; AssignInitSize t £temporary4492 -> £temporary4491
	mov rsi, rbp
	add rsi, 124
	mov al, 36

 time_test$30:
	; Assign t £temporary4492 -> £temporary4491
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne time_test$30

 time_test$31:
	; PreCall 160 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$32:
	; Address £temporary4493 s
	mov rsi, rbp
	add rsi, 88

 time_test$33:
	; Parameter pointer £temporary4493 184
	mov [rbp + 184], rsi

 time_test$34:
	; Call mktime 160 0
	mov qword [rbp + 160], time_test$35
	mov [rbp + 168], rbp
	add rbp, 160
	jmp mktime

 time_test$35:
	; PostCall 160

 time_test$36:
	; GetReturnValue £temporary4494

 time_test$37:
	; Assign now2 £temporary4494
	mov [rbp + 160], rbx

 time_test$38:
	; PreCall 168 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$39:
	; Parameter pointer "now 1: %lu\n" 192
	mov qword [rbp + 192], string_now2013A2025lu0A#

 time_test$40:
	; Parameter signed long int now1 200
	mov rax, [rbp + 80]
	mov [rbp + 200], rax

 time_test$41:
	; Call printf 168 8
	mov qword [rbp + 168], time_test$42
	mov [rbp + 176], rbp
	add rbp, 168
	mov rdi, rbp
	add rdi, 8
	jmp printf

 time_test$42:
	; PostCall 168

 time_test$43:
	; PreCall 168 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$44:
	; Parameter pointer "now 2: %lu\n" 192
	mov qword [rbp + 192], string_now2023A2025lu0A#

 time_test$45:
	; Parameter signed long int now2 200
	mov rax, [rbp + 160]
	mov [rbp + 200], rax

 time_test$46:
	; Call printf 168 8
	mov qword [rbp + 168], time_test$47
	mov [rbp + 176], rbp
	add rbp, 168
	mov rdi, rbp
	add rdi, 8
	jmp printf

 time_test$47:
	; PostCall 168

 time_test$48:
	; PreCall 168 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$49:
	; Parameter pointer "   gm time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n" 192
	mov qword [rbp + 192], string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#

 time_test$50:
	; IntegralToIntegral £temporary4499 s.tm_wday
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 time_test$51:
	; UnsignedMultiply £temporary4500 £temporary4499 8
	xor rdx, rdx
	mul qword [Array_8#]

 time_test$52:
	; BinaryAdd £temporary4501 weekdays £temporary4500
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 time_test$53:
	; Dereference £temporary4498 -> £temporary4501 £temporary4501 0

 time_test$54:
	; Parameter pointer £temporary4498 -> £temporary4501 200
	mov rax, [rsi]
	mov [rbp + 200], rax

 time_test$55:
	; BinaryAdd £temporary4503 s.tm_year 1900
	mov eax, [rbp + 108]
	add eax, 1900

 time_test$56:
	; Parameter signedint £temporary4503 208
	mov [rbp + 208], eax

 time_test$57:
	; BinaryAdd £temporary4505 s.tm_mon 1
	mov eax, [rbp + 104]
	inc eax

 time_test$58:
	; Parameter signedint £temporary4505 212
	mov [rbp + 212], eax

 time_test$59:
	; Parameter signedint s.tm_mday 216
	mov eax, [rbp + 100]
	mov [rbp + 216], eax

 time_test$60:
	; Parameter signedint s.tm_hour 220
	mov eax, [rbp + 96]
	mov [rbp + 220], eax

 time_test$61:
	; Parameter signedint s.tm_min 224
	mov eax, [rbp + 92]
	mov [rbp + 224], eax

 time_test$62:
	; Parameter signedint s.tm_sec 228
	mov eax, [rbp + 88]
	mov [rbp + 228], eax

 time_test$63:
	; Parameter signedint s.tm_yday 232
	mov eax, [rbp + 116]
	mov [rbp + 232], eax

 time_test$64:
	; Parameter signedint s.tm_wday 236
	mov eax, [rbp + 112]
	mov [rbp + 236], eax

 time_test$65:
	; Parameter signedint s.tm_isdst 240
	mov eax, [rbp + 120]
	mov [rbp + 240], eax

 time_test$66:
	; Call printf 168 44
	mov qword [rbp + 168], time_test$67
	mov [rbp + 176], rbp
	add rbp, 168
	mov rdi, rbp
	add rdi, 44
	jmp printf

 time_test$67:
	; PostCall 168

 time_test$68:
	; PreCall 168 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$69:
	; Parameter pointer "local time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n" 192
	mov qword [rbp + 192], string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#

 time_test$70:
	; IntegralToIntegral £temporary4516 t.tm_wday
	mov eax, [rbp + 148]
	mov rbx, 4294967295
	and rax, rbx

 time_test$71:
	; UnsignedMultiply £temporary4517 £temporary4516 8
	xor rdx, rdx
	mul qword [Array_8#]

 time_test$72:
	; BinaryAdd £temporary4518 weekdays £temporary4517
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 time_test$73:
	; Dereference £temporary4515 -> £temporary4518 £temporary4518 0

 time_test$74:
	; Parameter pointer £temporary4515 -> £temporary4518 200
	mov rax, [rsi]
	mov [rbp + 200], rax

 time_test$75:
	; BinaryAdd £temporary4520 t.tm_year 1900
	mov eax, [rbp + 144]
	add eax, 1900

 time_test$76:
	; Parameter signedint £temporary4520 208
	mov [rbp + 208], eax

 time_test$77:
	; BinaryAdd £temporary4522 t.tm_mon 1
	mov eax, [rbp + 140]
	inc eax

 time_test$78:
	; Parameter signedint £temporary4522 212
	mov [rbp + 212], eax

 time_test$79:
	; Parameter signedint t.tm_mday 216
	mov eax, [rbp + 136]
	mov [rbp + 216], eax

 time_test$80:
	; Parameter signedint t.tm_hour 220
	mov eax, [rbp + 132]
	mov [rbp + 220], eax

 time_test$81:
	; Parameter signedint t.tm_min 224
	mov eax, [rbp + 128]
	mov [rbp + 224], eax

 time_test$82:
	; Parameter signedint t.tm_sec 228
	mov eax, [rbp + 124]
	mov [rbp + 228], eax

 time_test$83:
	; Parameter signedint t.tm_yday 232
	mov eax, [rbp + 152]
	mov [rbp + 232], eax

 time_test$84:
	; Parameter signedint t.tm_wday 236
	mov eax, [rbp + 148]
	mov [rbp + 236], eax

 time_test$85:
	; Parameter signedint t.tm_isdst 240
	mov eax, [rbp + 156]
	mov [rbp + 240], eax

 time_test$86:
	; Call printf 168 44
	mov qword [rbp + 168], time_test$87
	mov [rbp + 176], rbp
	add rbp, 168
	mov rdi, rbp
	add rdi, 44
	jmp printf

 time_test$87:
	; PostCall 168

 time_test$88:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$89:
	; Parameter pointer buffer1 696
	mov [rbp + 696], rbp
	add qword [rbp + 696], 168

 time_test$90:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$91:
	; Address £temporary4531 s
	mov rsi, rbp
	add rsi, 88

 time_test$92:
	; Parameter pointer £temporary4531 728
	mov [rbp + 728], rsi

 time_test$93:
	; Call asctime 704 0
	mov qword [rbp + 704], time_test$94
	mov [rbp + 712], rbp
	add rbp, 704
	jmp asctime

 time_test$94:
	; PostCall 704

 time_test$95:
	; GetReturnValue £temporary4532

 time_test$96:
	; Parameter pointer £temporary4532 704
	mov [rbp + 704], rbx

 time_test$97:
	; Call strcpy 672 0
	mov qword [rbp + 672], time_test$98
	mov [rbp + 680], rbp
	add rbp, 672
	jmp strcpy

 time_test$98:
	; PostCall 672

 time_test$99:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$100:
	; Parameter pointer buffer2 696
	mov [rbp + 696], rbp
	add qword [rbp + 696], 268

 time_test$101:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$102:
	; Address £temporary4534 now1
	mov rsi, rbp
	add rsi, 80

 time_test$103:
	; Parameter pointer £temporary4534 728
	mov [rbp + 728], rsi

 time_test$104:
	; Call ctime 704 0
	mov qword [rbp + 704], time_test$105
	mov [rbp + 712], rbp
	add rbp, 704
	jmp ctime

 time_test$105:
	; PostCall 704

 time_test$106:
	; GetReturnValue £temporary4535

 time_test$107:
	; Parameter pointer £temporary4535 704
	mov [rbp + 704], rbx

 time_test$108:
	; Call strcpy 672 0
	mov qword [rbp + 672], time_test$109
	mov [rbp + 680], rbp
	add rbp, 672
	jmp strcpy

 time_test$109:
	; PostCall 672

 time_test$110:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$111:
	; Parameter pointer "asctime <%s>, ctime <%s>\n" 696
	mov qword [rbp + 696], string_asctime203C25s3E2C20ctime203C25s3E0A#

 time_test$112:
	; Parameter pointer buffer1 704
	mov [rbp + 704], rbp
	add qword [rbp + 704], 168

 time_test$113:
	; Parameter pointer buffer2 712
	mov [rbp + 712], rbp
	add qword [rbp + 712], 268

 time_test$114:
	; Call printf 672 16
	mov qword [rbp + 672], time_test$115
	mov [rbp + 680], rbp
	add rbp, 672
	mov rdi, rbp
	add rdi, 16
	jmp printf

 time_test$115:
	; PostCall 672

 time_test$116:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$117:
	; Parameter pointer buffer 696
	mov [rbp + 696], rbp
	add qword [rbp + 696], 368

 time_test$118:
	; Parameter signedint 300 704
	mov dword [rbp + 704], 300

 time_test$119:
	; Parameter pointer "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y" 708
	mov qword [rbp + 708], string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#

 time_test$120:
	; Address £temporary4538 t
	mov rsi, rbp
	add rsi, 124

 time_test$121:
	; Parameter pointer £temporary4538 716
	mov [rbp + 716], rsi

 time_test$122:
	; Call strftime 672 0
	mov qword [rbp + 672], time_test$123
	mov [rbp + 680], rbp
	add rbp, 672
	jmp strftime

 time_test$123:
	; PostCall 672

 time_test$124:
	; GetReturnValue £temporary4539

 time_test$125:
	; Assign i £temporary4539
	mov [rbp + 668], ebx

 time_test$126:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$127:
	; Parameter pointer "strftime %i %i <%s>\n" 696
	mov qword [rbp + 696], string_strftime2025i2025i203C25s3E0A#

 time_test$128:
	; Parameter signedint i 704
	mov eax, [rbp + 668]
	mov [rbp + 704], eax

 time_test$129:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$130:
	; Parameter pointer buffer 732
	mov [rbp + 732], rbp
	add qword [rbp + 732], 368

 time_test$131:
	; Call strlen 708 0
	mov qword [rbp + 708], time_test$132
	mov [rbp + 716], rbp
	add rbp, 708
	jmp strlen

 time_test$132:
	; PostCall 708

 time_test$133:
	; GetReturnValue £temporary4540

 time_test$134:
	; Parameter signedint £temporary4540 708
	mov [rbp + 708], ebx

 time_test$135:
	; Parameter pointer buffer 712
	mov [rbp + 712], rbp
	add qword [rbp + 712], 368

 time_test$136:
	; Call printf 672 16
	mov qword [rbp + 672], time_test$137
	mov [rbp + 680], rbp
	add rbp, 672
	mov rdi, rbp
	add rdi, 16
	jmp printf

 time_test$137:
	; PostCall 672

 time_test$138:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 time_test$139:
	; FunctionEnd time_test
