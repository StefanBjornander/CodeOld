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
section .text

 time_test:
	; weekdays[0] = string_Sun#
	mov qword [rbp + 24], string_Sun#

 time_test$1:
	; weekdays[1] = string_Mon#
	mov qword [rbp + 32], string_Mon#

 time_test$2:
	; weekdays[2] = string_Tue#
	mov qword [rbp + 40], string_Tue#

 time_test$3:
	; weekdays[3] = string_Wed#
	mov qword [rbp + 48], string_Wed#

 time_test$4:
	; weekdays[4] = string_Thu#
	mov qword [rbp + 56], string_Thu#

 time_test$5:
	; weekdays[5] = string_Fri#
	mov qword [rbp + 64], string_Fri#

 time_test$6:
	; weekdays[6] = string_Sat#
	mov qword [rbp + 72], string_Sat#

 time_test$7:
	; call header integral zero 0 stack zero 0

 time_test$8:
	; parameter int8$0#, offset 104
	mov qword [rbp + 104], 0

 time_test$9:
	; call function noellipse-noellipse time
	mov qword [rbp + 80], time_test$10
	mov [rbp + 88], rbp
	add rbp, 80
	jmp time

 time_test$10:
	; post call

 time_test$11:
	; £temporary4083 = return_value

 time_test$12:
	; now = £temporary4083
	mov [rbp + 80], rbx

 time_test$13:
	; call header integral zero 0 stack zero 0

 time_test$14:
	; £temporary4084 = &now
	mov rsi, rbp
	add rsi, 80

 time_test$15:
	; parameter £temporary4084, offset 112
	mov [rbp + 112], rsi

 time_test$16:
	; call function noellipse-noellipse gmtime
	mov qword [rbp + 88], time_test$17
	mov [rbp + 96], rbp
	add rbp, 88
	jmp gmtime

 time_test$17:
	; post call

 time_test$18:
	; £temporary4085 = return_value

 time_test$19:
	; p = £temporary4085
	mov [rbp + 88], rbx

 time_test$20:
	; call header integral zero 0 stack zero 0

 time_test$21:
	; parameter p, offset 120
	mov rax, [rbp + 88]
	mov [rbp + 120], rax

 time_test$22:
	; call function noellipse-noellipse mktime
	mov qword [rbp + 96], time_test$23
	mov [rbp + 104], rbp
	add rbp, 96
	jmp mktime

 time_test$23:
	; post call

 time_test$24:
	; £temporary4086 = return_value

 time_test$25:
	; now2 = £temporary4086
	mov [rbp + 96], rbx

 time_test$26:
	; call header integral zero 0 stack zero 0

 time_test$27:
	; parameter string_now2013A2025lu0A#, offset 128
	mov qword [rbp + 128], string_now2013A2025lu0A#

 time_test$28:
	; parameter now, offset 136
	mov rax, [rbp + 80]
	mov [rbp + 136], rax

 time_test$29:
	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 104], time_test$30
	mov [rbp + 112], rbp
	add rbp, 104
	mov rdi, rbp
	add rdi, 8
	jmp printf

 time_test$30:
	; post call

 time_test$31:
	; call header integral zero 0 stack zero 0

 time_test$32:
	; parameter string_now2023A2025lu0A#, offset 128
	mov qword [rbp + 128], string_now2023A2025lu0A#

 time_test$33:
	; parameter now2, offset 136
	mov rax, [rbp + 96]
	mov [rbp + 136], rax

 time_test$34:
	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 104], time_test$35
	mov [rbp + 112], rbp
	add rbp, 104
	mov rdi, rbp
	add rdi, 8
	jmp printf

 time_test$35:
	; post call

 time_test$36:
	; £field4089 -> p = *p
	mov rsi, [rbp + 88]

 time_test$37:
	; s = £field4089 -> p
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
	; call header integral zero 0 stack zero 0

 time_test$39:
	; parameter string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#, offset 164
	mov qword [rbp + 164], string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#

 time_test$40:
	; £temporary4092 = int_to_int s.tm_wday (Signed_Int -> Array)
	mov eax, [rbp + 128]
	mov rbx, 4294967295
	and rax, rbx

 time_test$41:
	; £temporary4093 = £temporary4092 * Array_8#
	xor rdx, rdx
	mul qword [Array_8#]

 time_test$42:
	; £temporary4094 = weekdays + £temporary4093
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 time_test$43:
	; £field4091 -> £temporary4094 = *£temporary4094

 time_test$44:
	; parameter £field4091 -> £temporary4094, offset 172
	mov rax, [rsi]
	mov [rbp + 172], rax

 time_test$45:
	; £temporary4096 = s.tm_year + int4$1900#
	mov eax, [rbp + 124]
	add eax, 1900

 time_test$46:
	; parameter £temporary4096, offset 180
	mov [rbp + 180], eax

 time_test$47:
	; £temporary4098 = s.tm_mon + int4$1#
	mov eax, [rbp + 120]
	inc eax

 time_test$48:
	; parameter £temporary4098, offset 184
	mov [rbp + 184], eax

 time_test$49:
	; parameter s.tm_mday, offset 188
	mov eax, [rbp + 116]
	mov [rbp + 188], eax

 time_test$50:
	; parameter s.tm_hour, offset 192
	mov eax, [rbp + 112]
	mov [rbp + 192], eax

 time_test$51:
	; parameter s.tm_min, offset 196
	mov eax, [rbp + 108]
	mov [rbp + 196], eax

 time_test$52:
	; parameter s.tm_sec, offset 200
	mov eax, [rbp + 104]
	mov [rbp + 200], eax

 time_test$53:
	; parameter s.tm_yday, offset 204
	mov eax, [rbp + 132]
	mov [rbp + 204], eax

 time_test$54:
	; parameter s.tm_wday, offset 208
	mov eax, [rbp + 128]
	mov [rbp + 208], eax

 time_test$55:
	; parameter s.tm_isdst, offset 212
	mov eax, [rbp + 136]
	mov [rbp + 212], eax

 time_test$56:
	; call function noellipse-ellipse printf, extra 44
	mov qword [rbp + 140], time_test$57
	mov [rbp + 148], rbp
	add rbp, 140
	mov rdi, rbp
	add rdi, 44
	jmp printf

 time_test$57:
	; post call

 time_test$58:
	; call header integral zero 0 stack zero 0

 time_test$59:
	; £temporary4107 = &now
	mov rsi, rbp
	add rsi, 80

 time_test$60:
	; parameter £temporary4107, offset 164
	mov [rbp + 164], rsi

 time_test$61:
	; call function noellipse-noellipse localtime
	mov qword [rbp + 140], time_test$62
	mov [rbp + 148], rbp
	add rbp, 140
	jmp localtime

 time_test$62:
	; post call

 time_test$63:
	; £temporary4108 = return_value

 time_test$64:
	; £field4109 -> £temporary4108 = *£temporary4108

 time_test$65:
	; s = £field4109 -> £temporary4108
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
	; call header integral zero 0 stack zero 0

 time_test$67:
	; parameter string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#, offset 164
	mov qword [rbp + 164], string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#

 time_test$68:
	; £temporary4112 = int_to_int s.tm_wday (Signed_Int -> Array)
	mov eax, [rbp + 128]
	mov rbx, 4294967295
	and rax, rbx

 time_test$69:
	; £temporary4113 = £temporary4112 * Array_8#
	xor rdx, rdx
	mul qword [Array_8#]

 time_test$70:
	; £temporary4114 = weekdays + £temporary4113
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 time_test$71:
	; £field4111 -> £temporary4114 = *£temporary4114

 time_test$72:
	; parameter £field4111 -> £temporary4114, offset 172
	mov rax, [rsi]
	mov [rbp + 172], rax

 time_test$73:
	; £temporary4116 = s.tm_year + int4$1900#
	mov eax, [rbp + 124]
	add eax, 1900

 time_test$74:
	; parameter £temporary4116, offset 180
	mov [rbp + 180], eax

 time_test$75:
	; £temporary4118 = s.tm_mon + int4$1#
	mov eax, [rbp + 120]
	inc eax

 time_test$76:
	; parameter £temporary4118, offset 184
	mov [rbp + 184], eax

 time_test$77:
	; parameter s.tm_mday, offset 188
	mov eax, [rbp + 116]
	mov [rbp + 188], eax

 time_test$78:
	; parameter s.tm_hour, offset 192
	mov eax, [rbp + 112]
	mov [rbp + 192], eax

 time_test$79:
	; parameter s.tm_min, offset 196
	mov eax, [rbp + 108]
	mov [rbp + 196], eax

 time_test$80:
	; parameter s.tm_sec, offset 200
	mov eax, [rbp + 104]
	mov [rbp + 200], eax

 time_test$81:
	; parameter s.tm_yday, offset 204
	mov eax, [rbp + 132]
	mov [rbp + 204], eax

 time_test$82:
	; parameter s.tm_wday, offset 208
	mov eax, [rbp + 128]
	mov [rbp + 208], eax

 time_test$83:
	; parameter s.tm_isdst, offset 212
	mov eax, [rbp + 136]
	mov [rbp + 212], eax

 time_test$84:
	; call function noellipse-ellipse printf, extra 44
	mov qword [rbp + 140], time_test$85
	mov [rbp + 148], rbp
	add rbp, 140
	mov rdi, rbp
	add rdi, 44
	jmp printf

 time_test$85:
	; post call

 time_test$86:
	; call header integral zero 0 stack zero 0

 time_test$87:
	; parameter buffer1, offset 364
	mov [rbp + 364], rbp
	add qword [rbp + 364], 140

 time_test$88:
	; call header integral zero 0 stack zero 0

 time_test$89:
	; £temporary4127 = &s
	mov rsi, rbp
	add rsi, 104

 time_test$90:
	; parameter £temporary4127, offset 396
	mov [rbp + 396], rsi

 time_test$91:
	; call function noellipse-noellipse asctime
	mov qword [rbp + 372], time_test$92
	mov [rbp + 380], rbp
	add rbp, 372
	jmp asctime

 time_test$92:
	; post call

 time_test$93:
	; £temporary4128 = return_value

 time_test$94:
	; parameter £temporary4128, offset 372
	mov [rbp + 372], rbx

 time_test$95:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 340], time_test$96
	mov [rbp + 348], rbp
	add rbp, 340
	jmp strcpy

 time_test$96:
	; post call

 time_test$97:
	; call header integral zero 0 stack zero 0

 time_test$98:
	; parameter buffer2, offset 364
	mov [rbp + 364], rbp
	add qword [rbp + 364], 240

 time_test$99:
	; call header integral zero 0 stack zero 0

 time_test$100:
	; £temporary4130 = &now
	mov rsi, rbp
	add rsi, 80

 time_test$101:
	; parameter £temporary4130, offset 396
	mov [rbp + 396], rsi

 time_test$102:
	; call function noellipse-noellipse ctime
	mov qword [rbp + 372], time_test$103
	mov [rbp + 380], rbp
	add rbp, 372
	jmp ctime

 time_test$103:
	; post call

 time_test$104:
	; £temporary4131 = return_value

 time_test$105:
	; parameter £temporary4131, offset 372
	mov [rbp + 372], rbx

 time_test$106:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 340], time_test$107
	mov [rbp + 348], rbp
	add rbp, 340
	jmp strcpy

 time_test$107:
	; post call

 time_test$108:
	; call header integral zero 0 stack zero 0

 time_test$109:
	; parameter string_asctime203C25s3E2C20ctime203C25s3E0A#, offset 364
	mov qword [rbp + 364], string_asctime203C25s3E2C20ctime203C25s3E0A#

 time_test$110:
	; parameter buffer1, offset 372
	mov [rbp + 372], rbp
	add qword [rbp + 372], 140

 time_test$111:
	; parameter buffer2, offset 380
	mov [rbp + 380], rbp
	add qword [rbp + 380], 240

 time_test$112:
	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 340], time_test$113
	mov [rbp + 348], rbp
	add rbp, 340
	mov rdi, rbp
	add rdi, 16
	jmp printf

 time_test$113:
	; post call

 time_test$114:
	; call header integral zero 0 stack zero 0

 time_test$115:
	; parameter buffer, offset 664
	mov [rbp + 664], rbp
	add qword [rbp + 664], 340

 time_test$116:
	; parameter int4$300#, offset 672
	mov dword [rbp + 672], 300

 time_test$117:
	; parameter string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#, offset 676
	mov qword [rbp + 676], string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#

 time_test$118:
	; £temporary4134 = &s
	mov rsi, rbp
	add rsi, 104

 time_test$119:
	; parameter £temporary4134, offset 684
	mov [rbp + 684], rsi

 time_test$120:
	; call function noellipse-noellipse strftime
	mov qword [rbp + 640], time_test$121
	mov [rbp + 648], rbp
	add rbp, 640
	jmp strftime

 time_test$121:
	; post call

 time_test$122:
	; £temporary4135 = return_value

 time_test$123:
	; i = £temporary4135
	mov [rbp + 640], ebx

 time_test$124:
	; call header integral zero 0 stack zero 0

 time_test$125:
	; parameter string_strftime203C25i3E203C25s3E0A#, offset 668
	mov qword [rbp + 668], string_strftime203C25i3E203C25s3E0A#

 time_test$126:
	; parameter i, offset 676
	mov eax, [rbp + 640]
	mov [rbp + 676], eax

 time_test$127:
	; parameter buffer, offset 680
	mov [rbp + 680], rbp
	add qword [rbp + 680], 340

 time_test$128:
	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 644], time_test$129
	mov [rbp + 652], rbp
	add rbp, 644
	mov rdi, rbp
	add rdi, 12
	jmp printf

 time_test$129:
	; post call

 time_test$130:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 time_test$131:
	; function end time_test
section .data

string_Sun#:
	; initializer String
	db "Sun", 0

string_Mon#:
	; initializer String
	db "Mon", 0

string_Tue#:
	; initializer String
	db "Tue", 0

string_Wed#:
	; initializer String
	db "Wed", 0

string_Thu#:
	; initializer String
	db "Thu", 0

string_Fri#:
	; initializer String
	db "Fri", 0

string_Sat#:
	; initializer String
	db "Sat", 0

string_now2013A2025lu0A#:
	; initializer String
	db "now 1: %lu", 10, 0

string_now2023A2025lu0A#:
	; initializer String
	db "now 2: %lu", 10, 0

string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
	; initializer String
	db "   gm time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i", 10, 0

string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
	; initializer String
	db "local time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i", 10, 0

string_asctime203C25s3E2C20ctime203C25s3E0A#:
	; initializer String
	db "asctime <%s>, ctime <%s>", 10, 0

string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#:
	; initializer String
	db "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y", 0

string_strftime203C25i3E203C25s3E0A#:
	; initializer String
	db "strftime <%i> <%s>", 10, 0

Array_8#:
	; initializer Array
	dq 8
