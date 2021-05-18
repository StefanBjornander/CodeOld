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

@12777string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

@12778string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

@12779string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

@12780string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

@12781string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

@12782string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

@12783string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@12791string_now2013A2025lu0A#:
	; Initializer String now 1: %lu\n
	db "now 1: %lu", 10, 0

section .data

@12792string_now2023A2025lu0A#:
	; Initializer String now 2: %lu\n
	db "now 2: %lu", 10, 0

section .data

@12793string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
	; Initializer String    gm time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n
	db "   gm time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i", 10, 0

section .data

@12807string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
	; Initializer String local time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n
	db "local time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i", 10, 0

section .data

@12831string_asctime203C25s3E2C20ctime203C25s3E0A#:
	; Initializer String asctime <%s>, ctime <%s>\n
	db "asctime <%s>, ctime <%s>", 10, 0

section .data

@12833string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y2C20summer2Fwinter2025Z#:
	; Initializer String short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y, summer/winter %Z
	db "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y, summer/winter %Z", 0

section .data

@12834string_strftime2025i2025i203C25s3E0A#:
	; Initializer String strftime %i %i <%s>\n
	db "strftime %i %i <%s>", 10, 0

section .data

@12795integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@12809integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 time_test:
	; Assign weekdays[0] string_Sun#
	mov qword [rbp + 24], @12777string_Sun#

 time_test$1:
	; Assign weekdays[1] string_Mon#
	mov qword [rbp + 32], @12778string_Mon#

 time_test$2:
	; Assign weekdays[2] string_Tue#
	mov qword [rbp + 40], @12779string_Tue#

 time_test$3:
	; Assign weekdays[3] string_Wed#
	mov qword [rbp + 48], @12780string_Wed#

 time_test$4:
	; Assign weekdays[4] string_Thu#
	mov qword [rbp + 56], @12781string_Thu#

 time_test$5:
	; Assign weekdays[5] string_Fri#
	mov qword [rbp + 64], @12782string_Fri#

 time_test$6:
	; Assign weekdays[6] string_Sat#
	mov qword [rbp + 72], @12783string_Sat#

 time_test$7:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$8:
	; Parameter 104 pointer integral8$0#
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
	; GetReturnValue £temporary4349

 time_test$12:
	; Assign now1 £temporary4349
	mov [rbp + 80], rbx

 time_test$13:
	; PreCall 88 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$14:
	; Address £temporary4350 now1
	mov rsi, rbp
	add rsi, 80

 time_test$15:
	; Parameter 112 pointer £temporary4350
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
	; GetReturnValue £temporary4351

 time_test$19:
	; Dereference £temporary4352 £temporary4351 0

 time_test$20:
	; AssignInitSize s £temporary4352
	mov rsi, rbp
	add rsi, 88
	mov al, 36

 time_test$21:
	; Assign s £temporary4352
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
	; Address £temporary4353 now1
	mov rsi, rbp
	add rsi, 80

 time_test$24:
	; Parameter 148 pointer £temporary4353
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
	; GetReturnValue £temporary4354

 time_test$28:
	; Dereference £temporary4355 £temporary4354 0

 time_test$29:
	; AssignInitSize t £temporary4355
	mov rsi, rbp
	add rsi, 124
	mov al, 36

 time_test$30:
	; Assign t £temporary4355
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
	; Address £temporary4356 s
	mov rsi, rbp
	add rsi, 88

 time_test$33:
	; Parameter 184 pointer £temporary4356
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
	; GetReturnValue £temporary4357

 time_test$37:
	; Assign now2 £temporary4357
	mov [rbp + 160], rbx

 time_test$38:
	; PreCall 168 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$39:
	; Parameter 192 pointer string_now2013A2025lu0A#
	mov qword [rbp + 192], @12791string_now2013A2025lu0A#

 time_test$40:
	; Parameter 200 unsigned long int now1
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
	; Parameter 192 pointer string_now2023A2025lu0A#
	mov qword [rbp + 192], @12792string_now2023A2025lu0A#

 time_test$45:
	; Parameter 200 unsigned long int now2
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
	; Parameter 192 pointer string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#
	mov qword [rbp + 192], @12793string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#

 time_test$50:
	; Multiply £temporary4360 s.tm_wday integral4$8#
	mov eax, [rbp + 112]
	xor edx, edx
	imul dword [@12795integral4$8#]

 time_test$51:
	; IntegralToIntegral £temporary4361 £temporary4360
	mov rbx, 4294967295
	and rax, rbx

 time_test$52:
	; Add £temporary4362 weekdays £temporary4361
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 time_test$53:
	; Dereference £temporary4363 £temporary4362 0

 time_test$54:
	; Parameter 200 pointer £temporary4363
	mov rax, [rsi]
	mov [rbp + 200], rax

 time_test$55:
	; Add £temporary4364 s.tm_year integral4$1900#
	mov eax, [rbp + 108]
	add eax, 1900

 time_test$56:
	; Parameter 208 signed int £temporary4364
	mov [rbp + 208], eax

 time_test$57:
	; Add £temporary4365 s.tm_mon integral4$1#
	mov eax, [rbp + 104]
	inc eax

 time_test$58:
	; Parameter 212 signed int £temporary4365
	mov [rbp + 212], eax

 time_test$59:
	; Parameter 216 signed int s.tm_mday
	mov eax, [rbp + 100]
	mov [rbp + 216], eax

 time_test$60:
	; Parameter 220 signed int s.tm_hour
	mov eax, [rbp + 96]
	mov [rbp + 220], eax

 time_test$61:
	; Parameter 224 signed int s.tm_min
	mov eax, [rbp + 92]
	mov [rbp + 224], eax

 time_test$62:
	; Parameter 228 signed int s.tm_sec
	mov eax, [rbp + 88]
	mov [rbp + 228], eax

 time_test$63:
	; Parameter 232 signed int s.tm_yday
	mov eax, [rbp + 116]
	mov [rbp + 232], eax

 time_test$64:
	; Parameter 236 signed int s.tm_wday
	mov eax, [rbp + 112]
	mov [rbp + 236], eax

 time_test$65:
	; Parameter 240 signed int s.tm_isdst
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
	; Parameter 192 pointer string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#
	mov qword [rbp + 192], @12807string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#

 time_test$70:
	; Multiply £temporary4367 t.tm_wday integral4$8#
	mov eax, [rbp + 148]
	xor edx, edx
	imul dword [@12809integral4$8#]

 time_test$71:
	; IntegralToIntegral £temporary4368 £temporary4367
	mov rbx, 4294967295
	and rax, rbx

 time_test$72:
	; Add £temporary4369 weekdays £temporary4368
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 time_test$73:
	; Dereference £temporary4370 £temporary4369 0

 time_test$74:
	; Parameter 200 pointer £temporary4370
	mov rax, [rsi]
	mov [rbp + 200], rax

 time_test$75:
	; Add £temporary4371 t.tm_year integral4$1900#
	mov eax, [rbp + 144]
	add eax, 1900

 time_test$76:
	; Parameter 208 signed int £temporary4371
	mov [rbp + 208], eax

 time_test$77:
	; Add £temporary4372 t.tm_mon integral4$1#
	mov eax, [rbp + 140]
	inc eax

 time_test$78:
	; Parameter 212 signed int £temporary4372
	mov [rbp + 212], eax

 time_test$79:
	; Parameter 216 signed int t.tm_mday
	mov eax, [rbp + 136]
	mov [rbp + 216], eax

 time_test$80:
	; Parameter 220 signed int t.tm_hour
	mov eax, [rbp + 132]
	mov [rbp + 220], eax

 time_test$81:
	; Parameter 224 signed int t.tm_min
	mov eax, [rbp + 128]
	mov [rbp + 224], eax

 time_test$82:
	; Parameter 228 signed int t.tm_sec
	mov eax, [rbp + 124]
	mov [rbp + 228], eax

 time_test$83:
	; Parameter 232 signed int t.tm_yday
	mov eax, [rbp + 152]
	mov [rbp + 232], eax

 time_test$84:
	; Parameter 236 signed int t.tm_wday
	mov eax, [rbp + 148]
	mov [rbp + 236], eax

 time_test$85:
	; Parameter 240 signed int t.tm_isdst
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
	; PreCall 772 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$89:
	; Parameter 796 pointer buffer1
	mov [rbp + 796], rbp
	add qword [rbp + 796], 168

 time_test$90:
	; PreCall 772 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$91:
	; Address £temporary4374 s
	mov rsi, rbp
	add rsi, 88

 time_test$92:
	; Parameter 828 pointer £temporary4374
	mov [rbp + 828], rsi

 time_test$93:
	; Call 804 asctime 0
	mov qword [rbp + 804], time_test$94
	mov [rbp + 812], rbp
	add rbp, 804
	jmp asctime

 time_test$94:
	; PostCall 804

 time_test$95:
	; GetReturnValue £temporary4375

 time_test$96:
	; Parameter 804 pointer £temporary4375
	mov [rbp + 804], rbx

 time_test$97:
	; Call 772 strcpy 0
	mov qword [rbp + 772], time_test$98
	mov [rbp + 780], rbp
	add rbp, 772
	jmp strcpy

 time_test$98:
	; PostCall 772

 time_test$99:
	; PreCall 772 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$100:
	; Parameter 796 pointer buffer2
	mov [rbp + 796], rbp
	add qword [rbp + 796], 268

 time_test$101:
	; PreCall 772 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$102:
	; Address £temporary4377 now1
	mov rsi, rbp
	add rsi, 80

 time_test$103:
	; Parameter 828 pointer £temporary4377
	mov [rbp + 828], rsi

 time_test$104:
	; Call 804 ctime 0
	mov qword [rbp + 804], time_test$105
	mov [rbp + 812], rbp
	add rbp, 804
	jmp ctime

 time_test$105:
	; PostCall 804

 time_test$106:
	; GetReturnValue £temporary4378

 time_test$107:
	; Parameter 804 pointer £temporary4378
	mov [rbp + 804], rbx

 time_test$108:
	; Call 772 strcpy 0
	mov qword [rbp + 772], time_test$109
	mov [rbp + 780], rbp
	add rbp, 772
	jmp strcpy

 time_test$109:
	; PostCall 772

 time_test$110:
	; PreCall 772 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$111:
	; Parameter 796 pointer string_asctime203C25s3E2C20ctime203C25s3E0A#
	mov qword [rbp + 796], @12831string_asctime203C25s3E2C20ctime203C25s3E0A#

 time_test$112:
	; Parameter 804 pointer buffer1
	mov [rbp + 804], rbp
	add qword [rbp + 804], 168

 time_test$113:
	; Parameter 812 pointer buffer2
	mov [rbp + 812], rbp
	add qword [rbp + 812], 268

 time_test$114:
	; Call 772 printf 16
	mov qword [rbp + 772], time_test$115
	mov [rbp + 780], rbp
	add rbp, 772
	mov rdi, rbp
	add rdi, 16
	jmp printf

 time_test$115:
	; PostCall 772

 time_test$116:
	; PreCall 772 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$117:
	; Parameter 796 pointer buffer
	mov [rbp + 796], rbp
	add qword [rbp + 796], 368

 time_test$118:
	; Parameter 804 signed int integral4$400#
	mov dword [rbp + 804], 400

 time_test$119:
	; Parameter 808 pointer string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y2C20summer2Fwinter2025Z#
	mov qword [rbp + 808], @12833string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y2C20summer2Fwinter2025Z#

 time_test$120:
	; Address £temporary4381 t
	mov rsi, rbp
	add rsi, 124

 time_test$121:
	; Parameter 816 pointer £temporary4381
	mov [rbp + 816], rsi

 time_test$122:
	; Call 772 strftime 0
	mov qword [rbp + 772], time_test$123
	mov [rbp + 780], rbp
	add rbp, 772
	jmp strftime

 time_test$123:
	; PostCall 772

 time_test$124:
	; GetReturnValue £temporary4382

 time_test$125:
	; Assign i £temporary4382
	mov [rbp + 768], ebx

 time_test$126:
	; PreCall 772 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$127:
	; Parameter 796 pointer string_strftime2025i2025i203C25s3E0A#
	mov qword [rbp + 796], @12834string_strftime2025i2025i203C25s3E0A#

 time_test$128:
	; Parameter 804 signed int i
	mov eax, [rbp + 768]
	mov [rbp + 804], eax

 time_test$129:
	; PreCall 772 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time_test$130:
	; Parameter 832 pointer buffer
	mov [rbp + 832], rbp
	add qword [rbp + 832], 368

 time_test$131:
	; Call 808 strlen 0
	mov qword [rbp + 808], time_test$132
	mov [rbp + 816], rbp
	add rbp, 808
	jmp strlen

 time_test$132:
	; PostCall 808

 time_test$133:
	; GetReturnValue £temporary4383

 time_test$134:
	; Parameter 808 signed int £temporary4383
	mov [rbp + 808], ebx

 time_test$135:
	; Parameter 812 pointer buffer
	mov [rbp + 812], rbp
	add qword [rbp + 812], 368

 time_test$136:
	; Call 772 printf 16
	mov qword [rbp + 772], time_test$137
	mov [rbp + 780], rbp
	add rbp, 772
	mov rdi, rbp
	add rdi, 16
	jmp printf

 time_test$137:
	; PostCall 772

 time_test$138:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 time_test$139:
	; FunctionEnd time_test
