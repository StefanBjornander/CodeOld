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
	; Parameter 104 pointer 0
	mov qword [rbp + 104], 0

 time_test$9:
	; Call 80 time 0
	mov qword [rbp + 80], time_test$10
	mov [rbp + 88], rbp
	add rbp, 80
	jmp time

 time_test$10:
	; PostCall 80

 time_test$11:
	; GetReturnValue £temporary4688

 time_test$12:
	; Assign now1 £temporary4688
	mov [rbp + 80], rbx

 time_test$13:
	; PreCall 88 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$14:
	; Address £temporary4689 now1
	mov rsi, rbp
	add rsi, 80

 time_test$15:
	; Parameter 112 pointer £temporary4689
	mov [rbp + 112], rsi

 time_test$16:
	; Call 88 gmtime 0
	mov qword [rbp + 88], time_test$17
	mov [rbp + 96], rbp
	add rbp, 88
	jmp gmtime

 time_test$17:
	; PostCall 88

 time_test$18:
	; GetReturnValue £temporary4690

 time_test$19:
	; Dereference £temporary4691 -> £temporary4690 £temporary4690 0

 time_test$20:
	; AssignInitSize s £temporary4691 -> £temporary4690
	mov rsi, rbp
	add rsi, 88
	mov al, 36

 time_test$21:
	; Assign s £temporary4691 -> £temporary4690
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
	; Address £temporary4692 now1
	mov rsi, rbp
	add rsi, 80

 time_test$24:
	; Parameter 148 pointer £temporary4692
	mov [rbp + 148], rsi

 time_test$25:
	; Call 124 localtime 0
	mov qword [rbp + 124], time_test$26
	mov [rbp + 132], rbp
	add rbp, 124
	jmp localtime

 time_test$26:
	; PostCall 124

 time_test$27:
	; GetReturnValue £temporary4693

 time_test$28:
	; Dereference £temporary4694 -> £temporary4693 £temporary4693 0

 time_test$29:
	; AssignInitSize t £temporary4694 -> £temporary4693
	mov rsi, rbp
	add rsi, 124
	mov al, 36

 time_test$30:
	; Assign t £temporary4694 -> £temporary4693
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
	; Address £temporary4695 s
	mov rsi, rbp
	add rsi, 88

 time_test$33:
	; Parameter 184 pointer £temporary4695
	mov [rbp + 184], rsi

 time_test$34:
	; Call 160 mktime 0
	mov qword [rbp + 160], time_test$35
	mov [rbp + 168], rbp
	add rbp, 160
	jmp mktime

 time_test$35:
	; PostCall 160

 time_test$36:
	; GetReturnValue £temporary4696

 time_test$37:
	; Assign now2 £temporary4696
	mov [rbp + 160], rbx

 time_test$38:
	; PreCall 168 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$39:
	; Parameter 192 pointer "now 1: %lu\n"
	mov qword [rbp + 192], string_now2013A2025lu0A#

 time_test$40:
	; Parameter 200 unsignedlongint now1
	mov rax, [rbp + 80]
	mov [rbp + 200], rax

 time_test$41:
	; Call 168 printf 8
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
	; Parameter 192 pointer "now 2: %lu\n"
	mov qword [rbp + 192], string_now2023A2025lu0A#

 time_test$45:
	; Parameter 200 unsignedlongint now2
	mov rax, [rbp + 160]
	mov [rbp + 200], rax

 time_test$46:
	; Call 168 printf 8
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
	; Parameter 192 pointer "   gm time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n"
	mov qword [rbp + 192], string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#

 time_test$50:
	; IntegralToIntegral £temporary4701 s.tm_wday
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 time_test$51:
	; UnsignedMultiply £temporary4702 £temporary4701 8
	xor rdx, rdx
	mul qword [Array_8#]

 time_test$52:
	; BinaryAdd £temporary4703 weekdays £temporary4702
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 time_test$53:
	; Dereference £temporary4700 -> £temporary4703 £temporary4703 0

 time_test$54:
	; Parameter 200 pointer £temporary4700 -> £temporary4703
	mov rax, [rsi]
	mov [rbp + 200], rax

 time_test$55:
	; BinaryAdd £temporary4705 s.tm_year 1900
	mov eax, [rbp + 108]
	add eax, 1900

 time_test$56:
	; Parameter 208 signedint £temporary4705
	mov [rbp + 208], eax

 time_test$57:
	; BinaryAdd £temporary4707 s.tm_mon 1
	mov eax, [rbp + 104]
	inc eax

 time_test$58:
	; Parameter 212 signedint £temporary4707
	mov [rbp + 212], eax

 time_test$59:
	; Parameter 216 signedint s.tm_mday
	mov eax, [rbp + 100]
	mov [rbp + 216], eax

 time_test$60:
	; Parameter 220 signedint s.tm_hour
	mov eax, [rbp + 96]
	mov [rbp + 220], eax

 time_test$61:
	; Parameter 224 signedint s.tm_min
	mov eax, [rbp + 92]
	mov [rbp + 224], eax

 time_test$62:
	; Parameter 228 signedint s.tm_sec
	mov eax, [rbp + 88]
	mov [rbp + 228], eax

 time_test$63:
	; Parameter 232 signedint s.tm_yday
	mov eax, [rbp + 116]
	mov [rbp + 232], eax

 time_test$64:
	; Parameter 236 signedint s.tm_wday
	mov eax, [rbp + 112]
	mov [rbp + 236], eax

 time_test$65:
	; Parameter 240 signedint s.tm_isdst
	mov eax, [rbp + 120]
	mov [rbp + 240], eax

 time_test$66:
	; Call 168 printf 44
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
	; Parameter 192 pointer "local time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n"
	mov qword [rbp + 192], string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#

 time_test$70:
	; IntegralToIntegral £temporary4718 t.tm_wday
	mov eax, [rbp + 148]
	mov rbx, 4294967295
	and rax, rbx

 time_test$71:
	; UnsignedMultiply £temporary4719 £temporary4718 8
	xor rdx, rdx
	mul qword [Array_8#]

 time_test$72:
	; BinaryAdd £temporary4720 weekdays £temporary4719
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 time_test$73:
	; Dereference £temporary4717 -> £temporary4720 £temporary4720 0

 time_test$74:
	; Parameter 200 pointer £temporary4717 -> £temporary4720
	mov rax, [rsi]
	mov [rbp + 200], rax

 time_test$75:
	; BinaryAdd £temporary4722 t.tm_year 1900
	mov eax, [rbp + 144]
	add eax, 1900

 time_test$76:
	; Parameter 208 signedint £temporary4722
	mov [rbp + 208], eax

 time_test$77:
	; BinaryAdd £temporary4724 t.tm_mon 1
	mov eax, [rbp + 140]
	inc eax

 time_test$78:
	; Parameter 212 signedint £temporary4724
	mov [rbp + 212], eax

 time_test$79:
	; Parameter 216 signedint t.tm_mday
	mov eax, [rbp + 136]
	mov [rbp + 216], eax

 time_test$80:
	; Parameter 220 signedint t.tm_hour
	mov eax, [rbp + 132]
	mov [rbp + 220], eax

 time_test$81:
	; Parameter 224 signedint t.tm_min
	mov eax, [rbp + 128]
	mov [rbp + 224], eax

 time_test$82:
	; Parameter 228 signedint t.tm_sec
	mov eax, [rbp + 124]
	mov [rbp + 228], eax

 time_test$83:
	; Parameter 232 signedint t.tm_yday
	mov eax, [rbp + 152]
	mov [rbp + 232], eax

 time_test$84:
	; Parameter 236 signedint t.tm_wday
	mov eax, [rbp + 148]
	mov [rbp + 236], eax

 time_test$85:
	; Parameter 240 signedint t.tm_isdst
	mov eax, [rbp + 156]
	mov [rbp + 240], eax

 time_test$86:
	; Call 168 printf 44
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
	; Parameter 696 pointer buffer1
	mov [rbp + 696], rbp
	add qword [rbp + 696], 168

 time_test$90:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$91:
	; Address £temporary4733 s
	mov rsi, rbp
	add rsi, 88

 time_test$92:
	; Parameter 728 pointer £temporary4733
	mov [rbp + 728], rsi

 time_test$93:
	; Call 704 asctime 0
	mov qword [rbp + 704], time_test$94
	mov [rbp + 712], rbp
	add rbp, 704
	jmp asctime

 time_test$94:
	; PostCall 704

 time_test$95:
	; GetReturnValue £temporary4734

 time_test$96:
	; Parameter 704 pointer £temporary4734
	mov [rbp + 704], rbx

 time_test$97:
	; Call 672 strcpy 0
	mov qword [rbp + 672], time_test$98
	mov [rbp + 680], rbp
	add rbp, 672
	jmp strcpy

 time_test$98:
	; PostCall 672

 time_test$99:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$100:
	; Parameter 696 pointer buffer2
	mov [rbp + 696], rbp
	add qword [rbp + 696], 268

 time_test$101:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$102:
	; Address £temporary4736 now1
	mov rsi, rbp
	add rsi, 80

 time_test$103:
	; Parameter 728 pointer £temporary4736
	mov [rbp + 728], rsi

 time_test$104:
	; Call 704 ctime 0
	mov qword [rbp + 704], time_test$105
	mov [rbp + 712], rbp
	add rbp, 704
	jmp ctime

 time_test$105:
	; PostCall 704

 time_test$106:
	; GetReturnValue £temporary4737

 time_test$107:
	; Parameter 704 pointer £temporary4737
	mov [rbp + 704], rbx

 time_test$108:
	; Call 672 strcpy 0
	mov qword [rbp + 672], time_test$109
	mov [rbp + 680], rbp
	add rbp, 672
	jmp strcpy

 time_test$109:
	; PostCall 672

 time_test$110:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$111:
	; Parameter 696 pointer "asctime <%s>, ctime <%s>\n"
	mov qword [rbp + 696], string_asctime203C25s3E2C20ctime203C25s3E0A#

 time_test$112:
	; Parameter 704 pointer buffer1
	mov [rbp + 704], rbp
	add qword [rbp + 704], 168

 time_test$113:
	; Parameter 712 pointer buffer2
	mov [rbp + 712], rbp
	add qword [rbp + 712], 268

 time_test$114:
	; Call 672 printf 16
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
	; Parameter 696 pointer buffer
	mov [rbp + 696], rbp
	add qword [rbp + 696], 368

 time_test$118:
	; Parameter 704 signedint 300
	mov dword [rbp + 704], 300

 time_test$119:
	; Parameter 708 pointer "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y"
	mov qword [rbp + 708], string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#

 time_test$120:
	; Address £temporary4740 t
	mov rsi, rbp
	add rsi, 124

 time_test$121:
	; Parameter 716 pointer £temporary4740
	mov [rbp + 716], rsi

 time_test$122:
	; Call 672 strftime 0
	mov qword [rbp + 672], time_test$123
	mov [rbp + 680], rbp
	add rbp, 672
	jmp strftime

 time_test$123:
	; PostCall 672

 time_test$124:
	; GetReturnValue £temporary4741

 time_test$125:
	; Assign i £temporary4741
	mov [rbp + 668], ebx

 time_test$126:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$127:
	; Parameter 696 pointer "strftime %i %i <%s>\n"
	mov qword [rbp + 696], string_strftime2025i2025i203C25s3E0A#

 time_test$128:
	; Parameter 704 signedint i
	mov eax, [rbp + 668]
	mov [rbp + 704], eax

 time_test$129:
	; PreCall 672 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$130:
	; Parameter 732 pointer buffer
	mov [rbp + 732], rbp
	add qword [rbp + 732], 368

 time_test$131:
	; Call 708 strlen 0
	mov qword [rbp + 708], time_test$132
	mov [rbp + 716], rbp
	add rbp, 708
	jmp strlen

 time_test$132:
	; PostCall 708

 time_test$133:
	; GetReturnValue £temporary4742

 time_test$134:
	; Parameter 708 signedint £temporary4742
	mov [rbp + 708], ebx

 time_test$135:
	; Parameter 712 pointer buffer
	mov [rbp + 712], rbp
	add qword [rbp + 712], 368

 time_test$136:
	; Call 672 printf 16
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
