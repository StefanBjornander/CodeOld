	global time_test

	extern time
	extern gmtime
	extern mktime
	extern printf
	extern localtime
	extern asctime
	extern strcpy
	extern ctime
	extern strftime
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

string_strftime203C25i3E203C25s3E0A#:
	; Initializer String strftime <%i> <%s>\n
	db "strftime <%i> <%s>", 10, 0

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
	; GetReturnValue £temporary4495

 time_test$12:
	; Assign now £temporary4495
	mov [rbp + 80], rbx

 time_test$13:
	; PreCall 88 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$14:
	; Address £temporary4496 now
	mov rsi, rbp
	add rsi, 80

 time_test$15:
	; Parameter pointer £temporary4496 112
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
	; GetReturnValue £temporary4497

 time_test$19:
	; Assign p £temporary4497
	mov [rbp + 88], rbx

 time_test$20:
	; PreCall 96 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$21:
	; Parameter pointer p 120
	mov rax, [rbp + 88]
	mov [rbp + 120], rax

 time_test$22:
	; Call mktime 96 0
	mov qword [rbp + 96], time_test$23
	mov [rbp + 104], rbp
	add rbp, 96
	jmp mktime

 time_test$23:
	; PostCall 96

 time_test$24:
	; GetReturnValue £temporary4498

 time_test$25:
	; Assign now2 £temporary4498
	mov [rbp + 96], rbx

 time_test$26:
	; PreCall 104 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$27:
	; Parameter pointer "now 1: %lu\n" 128
	mov qword [rbp + 128], string_now2013A2025lu0A#

 time_test$28:
	; Parameter unsignedlongint now 136
	mov rax, [rbp + 80]
	mov [rbp + 136], rax

 time_test$29:
	; Call printf 104 8
	mov qword [rbp + 104], time_test$30
	mov [rbp + 112], rbp
	add rbp, 104
	mov rdi, rbp
	add rdi, 8
	jmp printf

 time_test$30:
	; PostCall 104

 time_test$31:
	; PreCall 104 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$32:
	; Parameter pointer "now 2: %lu\n" 128
	mov qword [rbp + 128], string_now2023A2025lu0A#

 time_test$33:
	; Parameter unsignedlongint now2 136
	mov rax, [rbp + 96]
	mov [rbp + 136], rax

 time_test$34:
	; Call printf 104 8
	mov qword [rbp + 104], time_test$35
	mov [rbp + 112], rbp
	add rbp, 104
	mov rdi, rbp
	add rdi, 8
	jmp printf

 time_test$35:
	; PostCall 104

 time_test$36:
	; Dereference £temporary4501 -> p p 0
	mov rsi, [rbp + 88]

 time_test$37:
	; Assign s £temporary4501 -> p
	mov rdi, rbp
	add rdi, 104
	mov al, 36

 label$5:
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne label$5

 time_test$38:
	; PreCall 140 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$39:
	; Parameter pointer "   gm time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n" 164
	mov qword [rbp + 164], string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#

 time_test$40:
	; IntegralToIntegral £temporary4504 s.tm_wday
	mov eax, [rbp + 128]
	mov rbx, 4294967295
	and rax, rbx

 time_test$41:
	; UnsignedMultiply £temporary4505 £temporary4504 8
	xor rdx, rdx
	mul qword [Array_8#]

 time_test$42:
	; BinaryAdd £temporary4506 weekdays £temporary4505
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 time_test$43:
	; Dereference £temporary4503 -> £temporary4506 £temporary4506 0

 time_test$44:
	; Parameter pointer £temporary4503 -> £temporary4506 172
	mov rax, [rsi]
	mov [rbp + 172], rax

 time_test$45:
	; BinaryAdd £temporary4508 s.tm_year 1900
	mov eax, [rbp + 124]
	add eax, 1900

 time_test$46:
	; Parameter signedint £temporary4508 180
	mov [rbp + 180], eax

 time_test$47:
	; BinaryAdd £temporary4510 s.tm_mon 1
	mov eax, [rbp + 120]
	inc eax

 time_test$48:
	; Parameter signedint £temporary4510 184
	mov [rbp + 184], eax

 time_test$49:
	; Parameter signedint s.tm_mday 188
	mov eax, [rbp + 116]
	mov [rbp + 188], eax

 time_test$50:
	; Parameter signedint s.tm_hour 192
	mov eax, [rbp + 112]
	mov [rbp + 192], eax

 time_test$51:
	; Parameter signedint s.tm_min 196
	mov eax, [rbp + 108]
	mov [rbp + 196], eax

 time_test$52:
	; Parameter signedint s.tm_sec 200
	mov eax, [rbp + 104]
	mov [rbp + 200], eax

 time_test$53:
	; Parameter signedint s.tm_yday 204
	mov eax, [rbp + 132]
	mov [rbp + 204], eax

 time_test$54:
	; Parameter signedint s.tm_wday 208
	mov eax, [rbp + 128]
	mov [rbp + 208], eax

 time_test$55:
	; Parameter signedint s.tm_isdst 212
	mov eax, [rbp + 136]
	mov [rbp + 212], eax

 time_test$56:
	; Call printf 140 44
	mov qword [rbp + 140], time_test$57
	mov [rbp + 148], rbp
	add rbp, 140
	mov rdi, rbp
	add rdi, 44
	jmp printf

 time_test$57:
	; PostCall 140

 time_test$58:
	; PreCall 140 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$59:
	; Address £temporary4519 now
	mov rsi, rbp
	add rsi, 80

 time_test$60:
	; Parameter pointer £temporary4519 164
	mov [rbp + 164], rsi

 time_test$61:
	; Call localtime 140 0
	mov qword [rbp + 140], time_test$62
	mov [rbp + 148], rbp
	add rbp, 140
	jmp localtime

 time_test$62:
	; PostCall 140

 time_test$63:
	; GetReturnValue £temporary4520

 time_test$64:
	; Dereference £temporary4521 -> £temporary4520 £temporary4520 0

 time_test$65:
	; Assign s £temporary4521 -> £temporary4520
	mov rsi, rbp
	add rsi, 104
	mov al, 36

 label$6:
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne label$6

 time_test$66:
	; PreCall 140 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$67:
	; Parameter pointer "local time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n" 164
	mov qword [rbp + 164], string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#

 time_test$68:
	; IntegralToIntegral £temporary4524 s.tm_wday
	mov eax, [rbp + 128]
	mov rbx, 4294967295
	and rax, rbx

 time_test$69:
	; UnsignedMultiply £temporary4525 £temporary4524 8
	xor rdx, rdx
	mul qword [Array_8#]

 time_test$70:
	; BinaryAdd £temporary4526 weekdays £temporary4525
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 time_test$71:
	; Dereference £temporary4523 -> £temporary4526 £temporary4526 0

 time_test$72:
	; Parameter pointer £temporary4523 -> £temporary4526 172
	mov rax, [rsi]
	mov [rbp + 172], rax

 time_test$73:
	; BinaryAdd £temporary4528 s.tm_year 1900
	mov eax, [rbp + 124]
	add eax, 1900

 time_test$74:
	; Parameter signedint £temporary4528 180
	mov [rbp + 180], eax

 time_test$75:
	; BinaryAdd £temporary4530 s.tm_mon 1
	mov eax, [rbp + 120]
	inc eax

 time_test$76:
	; Parameter signedint £temporary4530 184
	mov [rbp + 184], eax

 time_test$77:
	; Parameter signedint s.tm_mday 188
	mov eax, [rbp + 116]
	mov [rbp + 188], eax

 time_test$78:
	; Parameter signedint s.tm_hour 192
	mov eax, [rbp + 112]
	mov [rbp + 192], eax

 time_test$79:
	; Parameter signedint s.tm_min 196
	mov eax, [rbp + 108]
	mov [rbp + 196], eax

 time_test$80:
	; Parameter signedint s.tm_sec 200
	mov eax, [rbp + 104]
	mov [rbp + 200], eax

 time_test$81:
	; Parameter signedint s.tm_yday 204
	mov eax, [rbp + 132]
	mov [rbp + 204], eax

 time_test$82:
	; Parameter signedint s.tm_wday 208
	mov eax, [rbp + 128]
	mov [rbp + 208], eax

 time_test$83:
	; Parameter signedint s.tm_isdst 212
	mov eax, [rbp + 136]
	mov [rbp + 212], eax

 time_test$84:
	; Call printf 140 44
	mov qword [rbp + 140], time_test$85
	mov [rbp + 148], rbp
	add rbp, 140
	mov rdi, rbp
	add rdi, 44
	jmp printf

 time_test$85:
	; PostCall 140

 time_test$86:
	; PreCall 340 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$87:
	; Parameter pointer buffer1 364
	mov [rbp + 364], rbp
	add qword [rbp + 364], 140

 time_test$88:
	; PreCall 340 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$89:
	; Address £temporary4539 s
	mov rsi, rbp
	add rsi, 104

 time_test$90:
	; Parameter pointer £temporary4539 396
	mov [rbp + 396], rsi

 time_test$91:
	; Call asctime 372 0
	mov qword [rbp + 372], time_test$92
	mov [rbp + 380], rbp
	add rbp, 372
	jmp asctime

 time_test$92:
	; PostCall 372

 time_test$93:
	; GetReturnValue £temporary4540

 time_test$94:
	; Parameter pointer £temporary4540 372
	mov [rbp + 372], rbx

 time_test$95:
	; Call strcpy 340 0
	mov qword [rbp + 340], time_test$96
	mov [rbp + 348], rbp
	add rbp, 340
	jmp strcpy

 time_test$96:
	; PostCall 340

 time_test$97:
	; PreCall 340 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$98:
	; Parameter pointer buffer2 364
	mov [rbp + 364], rbp
	add qword [rbp + 364], 240

 time_test$99:
	; PreCall 340 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$100:
	; Address £temporary4542 now
	mov rsi, rbp
	add rsi, 80

 time_test$101:
	; Parameter pointer £temporary4542 396
	mov [rbp + 396], rsi

 time_test$102:
	; Call ctime 372 0
	mov qword [rbp + 372], time_test$103
	mov [rbp + 380], rbp
	add rbp, 372
	jmp ctime

 time_test$103:
	; PostCall 372

 time_test$104:
	; GetReturnValue £temporary4543

 time_test$105:
	; Parameter pointer £temporary4543 372
	mov [rbp + 372], rbx

 time_test$106:
	; Call strcpy 340 0
	mov qword [rbp + 340], time_test$107
	mov [rbp + 348], rbp
	add rbp, 340
	jmp strcpy

 time_test$107:
	; PostCall 340

 time_test$108:
	; PreCall 340 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$109:
	; Parameter pointer "asctime <%s>, ctime <%s>\n" 364
	mov qword [rbp + 364], string_asctime203C25s3E2C20ctime203C25s3E0A#

 time_test$110:
	; Parameter pointer buffer1 372
	mov [rbp + 372], rbp
	add qword [rbp + 372], 140

 time_test$111:
	; Parameter pointer buffer2 380
	mov [rbp + 380], rbp
	add qword [rbp + 380], 240

 time_test$112:
	; Call printf 340 16
	mov qword [rbp + 340], time_test$113
	mov [rbp + 348], rbp
	add rbp, 340
	mov rdi, rbp
	add rdi, 16
	jmp printf

 time_test$113:
	; PostCall 340

 time_test$114:
	; PreCall 640 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$115:
	; Parameter pointer buffer 664
	mov [rbp + 664], rbp
	add qword [rbp + 664], 340

 time_test$116:
	; Parameter signedint 300 672
	mov dword [rbp + 672], 300

 time_test$117:
	; Parameter pointer "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y" 676
	mov qword [rbp + 676], string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#

 time_test$118:
	; Address £temporary4546 s
	mov rsi, rbp
	add rsi, 104

 time_test$119:
	; Parameter pointer £temporary4546 684
	mov [rbp + 684], rsi

 time_test$120:
	; Call strftime 640 0
	mov qword [rbp + 640], time_test$121
	mov [rbp + 648], rbp
	add rbp, 640
	jmp strftime

 time_test$121:
	; PostCall 640

 time_test$122:
	; GetReturnValue £temporary4547

 time_test$123:
	; Assign i £temporary4547
	mov [rbp + 640], ebx

 time_test$124:
	; PreCall 644 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$125:
	; Parameter pointer "strftime <%i> <%s>\n" 668
	mov qword [rbp + 668], string_strftime203C25i3E203C25s3E0A#

 time_test$126:
	; Parameter signedint i 676
	mov eax, [rbp + 640]
	mov [rbp + 676], eax

 time_test$127:
	; Parameter pointer buffer 680
	mov [rbp + 680], rbp
	add qword [rbp + 680], 340

 time_test$128:
	; Call printf 644 12
	mov qword [rbp + 644], time_test$129
	mov [rbp + 652], rbp
	add rbp, 644
	mov rdi, rbp
	add rdi, 12
	jmp printf

 time_test$129:
	; PostCall 644

 time_test$130:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 time_test$131:
	; FunctionEnd time_test
