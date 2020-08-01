	global clock
	global time
	global mktime
	global gmtime
	global difftime
	global default_test
	global asctime
	global ctime
	global localtime
	global strftime

	extern sprintf
	extern localeconv
	extern strcpy
	extern printf
	extern strlen
	extern strcat
section .text

clock:	; return_value = int8$minus1#
	mov rbx, -1

clock$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

clock$2:	; function end clock

time:	; empty

time$1:	; rax = int8$201#
	mov rax, 201

time$2:	; £temporary2220 = &time
	mov rdi, rbp
	add rdi, 32

time$3:	; £temporary2221 = int_to_int £temporary2220 (Pointer -> Unsigned_Long_Int)

time$4:	; rdi = £temporary2221

time$5:	; syscall
	syscall 

time$6:	; if timePtr == int8$0# goto 9
	cmp qword [rbp + 24], 0
	je time$9

time$7:	; £field2223 -> timePtr = *timePtr
	mov rsi, [rbp + 24]

time$8:	; £field2223 -> timePtr = time
	mov rax, [rbp + 32]
	mov [rsi], rax

time$9:	; return_value = time
	mov rbx, [rbp + 32]

time$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

time$11:	; function end time

mktime:	; if tp == int8$0# goto 28
	cmp qword [rbp + 24], 0
	je mktime$28

mktime$1:	; £field2226 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$2:	; £temporary2227 = £field2226 -> tp - int4$69#
	mov eax, [rsi + 20]
	sub eax, 69

mktime$3:	; £temporary2228 = £temporary2227 / int4$4#
	xor edx, edx
	idiv dword [int4$4#]

mktime$4:	; £temporary2229 = int_to_int £temporary2228 (Signed_Int -> Signed_Long_Int)
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

mktime$5:	; leapDays = £temporary2229
	mov [rbp + 32], rax

mktime$6:	; £field2230 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$7:	; £temporary2231 = £field2230 -> tp - int4$70#
	mov eax, [rsi + 20]
	sub eax, 70

mktime$8:	; £temporary2232 = £temporary2231 * int4$365#
	xor edx, edx
	imul dword [int4$365#]

mktime$9:	; £temporary2233 = int_to_int £temporary2232 (Signed_Int -> Signed_Long_Int)
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

mktime$10:	; £temporary2234 = £temporary2233 + leapDays
	add rax, [rbp + 32]

mktime$11:	; £field2235 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$12:	; £temporary2236 = int_to_int £field2235 -> tp (Signed_Int -> Signed_Long_Int)
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

mktime$13:	; totalDays = £temporary2234 + £temporary2236
	add rax, rbx
	mov [rbp + 40], rax

mktime$14:	; £temporary2238 = totalDays * int8$86400#
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [int8$86400#]
	mov rbx, rax

mktime$15:	; £field2239 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$16:	; £temporary2240 = int_to_int £field2239 -> tp (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

mktime$17:	; £temporary2241 = £temporary2240 * int8$3600#
	xor rdx, rdx
	imul qword [int8$3600#]

mktime$18:	; £temporary2242 = £temporary2238 + £temporary2241
	add rbx, rax

mktime$19:	; £field2243 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$20:	; £temporary2244 = int_to_int £field2243 -> tp (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

mktime$21:	; £temporary2245 = £temporary2244 * int8$60#
	xor rdx, rdx
	imul qword [int8$60#]

mktime$22:	; £temporary2246 = £temporary2242 + £temporary2245
	add rbx, rax

mktime$23:	; £field2247 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$24:	; £temporary2248 = int_to_int £field2247 -> tp (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

mktime$25:	; £temporary2249 = £temporary2246 + £temporary2248
	add rbx, rax

mktime$26:	; return_value = £temporary2249

mktime$27:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

mktime$28:	; return_value = int8$0#
	mov rbx, 0

mktime$29:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

mktime$30:	; function end mktime

gmtime:	; year = int4$1970#
	mov dword [rbp + 32], 1970

gmtime$1:	; if timePtr == int8$0# goto 88
	cmp qword [rbp + 24], 0
	je gmtime$88

gmtime$2:	; £field2251 -> timePtr = *timePtr
	mov rsi, [rbp + 24]

gmtime$3:	; time = £field2251 -> timePtr
	mov rax, [rsi]
	mov [rbp + 36], rax

gmtime$4:	; secondsOfDay = time % int8$86400#
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 44], rdx

gmtime$5:	; £temporary2254 = secondsOfDay / int8$3600#
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

gmtime$6:	; £temporary2255 = int_to_int £temporary2254 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$7
	neg rax
	neg eax

gmtime$7:	; g_timeStruct$tm_hour = £temporary2255
	mov [@4747$g_timeStruct + 8], eax

gmtime$8:	; £temporary2257 = secondsOfDay % int8$3600#
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

gmtime$9:	; £temporary2258 = £temporary2257 / int8$60#
	mov rax, rdx
	xor rdx, rdx
	idiv qword [int8$60#]

gmtime$10:	; £temporary2259 = int_to_int £temporary2258 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$11
	neg rax
	neg eax

gmtime$11:	; g_timeStruct$tm_min = £temporary2259
	mov [@4747$g_timeStruct + 4], eax

gmtime$12:	; £temporary2261 = secondsOfDay % int8$3600#
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

gmtime$13:	; £temporary2262 = £temporary2261 % int8$60#
	mov rax, rdx
	xor rdx, rdx
	idiv qword [int8$60#]

gmtime$14:	; £temporary2263 = int_to_int £temporary2262 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge gmtime$15
	neg rdx
	neg edx

gmtime$15:	; g_timeStruct$tm_sec = £temporary2263
	mov [@4747$g_timeStruct], edx

gmtime$16:	; totalDays = time / int8$86400#
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 52], rax

gmtime$17:	; if totalDays >= int8$3# goto 22
	cmp qword [rbp + 52], 3
	jge gmtime$22

gmtime$18:	; £temporary2267 = totalDays + int8$4#
	mov rax, [rbp + 52]
	add rax, 4

gmtime$19:	; £temporary2268 = int_to_int £temporary2267 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$20
	neg rax
	neg eax

gmtime$20:	; g_timeStruct$tm_wday = £temporary2268
	mov [@4747$g_timeStruct + 24], eax

gmtime$21:	; goto 26
	jmp gmtime$26

gmtime$22:	; £temporary2270 = totalDays - int8$3#
	mov rax, [rbp + 52]
	sub rax, 3

gmtime$23:	; £temporary2271 = £temporary2270 % int8$7#
	xor rdx, rdx
	idiv qword [int8$7#]

gmtime$24:	; £temporary2272 = int_to_int £temporary2271 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge gmtime$25
	neg rdx
	neg edx

gmtime$25:	; g_timeStruct$tm_wday = £temporary2272
	mov [@4747$g_timeStruct + 24], edx

gmtime$26:	; £temporary2273 = year % int4$4#
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$4#]

gmtime$27:	; if £temporary2273 != int4$0# goto 30
	cmp edx, 0
	jne gmtime$30

gmtime$28:	; £temporary2275 = year % int4$100#
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$100#]

gmtime$29:	; if £temporary2275 != int4$0# goto 32
	cmp edx, 0
	jne gmtime$32

gmtime$30:	; £temporary2278 = year % int4$400#
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$400#]

gmtime$31:	; if £temporary2278 != int4$0# goto 34
	cmp edx, 0
	jne gmtime$34

gmtime$32:	; £temporary2281 = int4$1#
	mov eax, 1

gmtime$33:	; goto 35
	jmp gmtime$35

gmtime$34:	; £temporary2281 = int4$0#
	mov eax, 0

gmtime$35:	; leapYear = £temporary2281
	mov [rbp + 60], eax

gmtime$36:	; if leapYear == int4$0# goto 39
	cmp dword [rbp + 60], 0
	je gmtime$39

gmtime$37:	; £temporary2283 = int4$366#
	mov eax, 366

gmtime$38:	; goto 40
	jmp gmtime$40

gmtime$39:	; £temporary2283 = int4$365#
	mov eax, 365

gmtime$40:	; daysOfYear = £temporary2283
	mov [rbp + 64], eax

gmtime$41:	; £temporary2284 = int_to_int daysOfYear (Signed_Int -> Signed_Long_Int)
	mov eax, [rbp + 64]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$42
	neg eax
	neg rax

gmtime$42:	; if totalDays >= £temporary2284 goto 84
	cmp [rbp + 52], rax
	jge gmtime$84

gmtime$43:	; g_timeStruct$tm_year = year - int4$1900#
	mov eax, [rbp + 32]
	sub eax, 1900
	mov [@4747$g_timeStruct + 20], eax

gmtime$44:	; £temporary2289 = int_to_int totalDays (Signed_Long_Int -> Signed_Int)
	mov rax, [rbp + 52]
	cmp rax, 0
	jge gmtime$45
	neg rax
	neg eax

gmtime$45:	; g_timeStruct$tm_yday = £temporary2289
	mov [@4747$g_timeStruct + 28], eax

gmtime$46:	; daysOfMonths[0] = int4$31#
	mov dword [rbp + 68], 31

gmtime$47:	; if leapYear == int4$0# goto 50
	cmp dword [rbp + 60], 0
	je gmtime$50

gmtime$48:	; £temporary2291 = int4$29#
	mov eax, 29

gmtime$49:	; goto 51
	jmp gmtime$51

gmtime$50:	; £temporary2291 = int4$28#
	mov eax, 28

gmtime$51:	; daysOfMonths[1] = £temporary2291
	mov [rbp + 72], eax

gmtime$52:	; daysOfMonths[2] = int4$31#
	mov dword [rbp + 76], 31

gmtime$53:	; daysOfMonths[3] = int4$30#
	mov dword [rbp + 80], 30

gmtime$54:	; daysOfMonths[4] = int4$31#
	mov dword [rbp + 84], 31

gmtime$55:	; daysOfMonths[5] = int4$30#
	mov dword [rbp + 88], 30

gmtime$56:	; daysOfMonths[6] = int4$30#
	mov dword [rbp + 92], 30

gmtime$57:	; daysOfMonths[7] = int4$31#
	mov dword [rbp + 96], 31

gmtime$58:	; daysOfMonths[8] = int4$30#
	mov dword [rbp + 100], 30

gmtime$59:	; daysOfMonths[9] = int4$31#
	mov dword [rbp + 104], 31

gmtime$60:	; daysOfMonths[10] = int4$30#
	mov dword [rbp + 108], 30

gmtime$61:	; daysOfMonths[11] = int4$31#
	mov dword [rbp + 112], 31

gmtime$62:	; month = int4$0#
	mov dword [rbp + 116], 0

gmtime$63:	; £temporary2305 = int_to_int month (Signed_Int -> Array)
	mov eax, [rbp + 116]
	mov rbx, 4294967295
	and rax, rbx

gmtime$64:	; £temporary2306 = £temporary2305 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

gmtime$65:	; £temporary2307 = daysOfMonths + £temporary2306
	mov rbx, rbp
	add rbx, 68
	mov rsi, rbp
	add rsi, 68
	add rsi, rax

gmtime$66:	; £field2304 -> £temporary2307 = *£temporary2307

gmtime$67:	; £temporary2308 = int_to_int £field2304 -> £temporary2307 (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$68
	neg eax
	neg rax

gmtime$68:	; if totalDays < £temporary2308 goto 77
	cmp [rbp + 52], rax
	jl gmtime$77

gmtime$69:	; £temporary2311 = int_to_int month (Signed_Int -> Array)
	mov eax, [rbp + 116]
	mov rbx, 4294967295
	and rax, rbx

gmtime$70:	; £temporary2312 = £temporary2311 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

gmtime$71:	; £temporary2313 = daysOfMonths + £temporary2312
	mov rbx, rbp
	add rbx, 68
	mov rsi, rbp
	add rsi, 68
	add rsi, rax

gmtime$72:	; £field2310 -> £temporary2313 = *£temporary2313

gmtime$73:	; £temporary2314 = int_to_int £field2310 -> £temporary2313 (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$74
	neg eax
	neg rax

gmtime$74:	; totalDays = totalDays - £temporary2314
	sub [rbp + 52], rax

gmtime$75:	; month = month + int4$1#
	inc dword [rbp + 116]

gmtime$76:	; goto 63
	jmp gmtime$63

gmtime$77:	; g_timeStruct$tm_mon = month
	mov eax, [rbp + 116]
	mov [@4747$g_timeStruct + 16], eax

gmtime$78:	; £temporary2319 = totalDays + int8$1#
	mov rax, [rbp + 52]
	inc rax

gmtime$79:	; £temporary2320 = int_to_int £temporary2319 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$80
	neg rax
	neg eax

gmtime$80:	; g_timeStruct$tm_mday = £temporary2320
	mov [@4747$g_timeStruct + 12], eax

gmtime$81:	; g_timeStruct$tm_isdst = int4$minus1#
	mov dword [@4747$g_timeStruct + 32], -1

gmtime$82:	; return_value = staticaddress$@4747$g_timeStruct$0#
	mov rbx, @4747$g_timeStruct

gmtime$83:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

gmtime$84:	; year = year + int4$1#
	inc dword [rbp + 32]

gmtime$85:	; £temporary2323 = int_to_int daysOfYear (Signed_Int -> Signed_Long_Int)
	mov eax, [rbp + 64]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$86
	neg eax
	neg rax

gmtime$86:	; totalDays = totalDays - £temporary2323
	sub [rbp + 52], rax

gmtime$87:	; goto 26
	jmp gmtime$26

gmtime$88:	; return_value = int8$0#
	mov rbx, 0

gmtime$89:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

gmtime$90:	; function end gmtime

difftime:	; £temporary2326 = time2 - time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

difftime$1:	; £temporary2327 = int_to_float £temporary2326 (Unsigned_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

difftime$2:	; return_value = £temporary2327

difftime$3:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

difftime$4:	; function end difftime

default_test:	; empty

default_test$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

default_test$2:	; function end default_test

asctime:	; localeConvPtr = int8$0#
	mov rax, 0
	mov [rbp + 32], rax

asctime$1:	; if localeConvPtr == int8$0# goto 5
	cmp qword [rbp + 32], 0
	je asctime$5

asctime$2:	; £field2329 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 32]

asctime$3:	; £temporary2330 = £field2329 -> localeConvPtr
	mov rax, [rsi + 8]

asctime$4:	; goto 6
	jmp asctime$6

asctime$5:	; £temporary2330 = int8$0#
	mov rax, 0

asctime$6:	; shortDayList = £temporary2330
	mov [rbp + 40], rax

asctime$7:	; if localeConvPtr == int8$0# goto 11
	cmp qword [rbp + 32], 0
	je asctime$11

asctime$8:	; £field2332 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 32]

asctime$9:	; £temporary2333 = £field2332 -> localeConvPtr
	mov rax, [rsi + 24]

asctime$10:	; goto 12
	jmp asctime$12

asctime$11:	; £temporary2333 = int8$0#
	mov rax, 0

asctime$12:	; shortMonthList = £temporary2333
	mov [rbp + 48], rax

asctime$13:	; if shortDayList == int8$0# goto 16
	cmp qword [rbp + 40], 0
	je asctime$16

asctime$14:	; £temporary2335 = shortDayList
	mov rax, [rbp + 40]

asctime$15:	; goto 17
	jmp asctime$17

asctime$16:	; £temporary2335 = g_defaultShortDayList
	mov rax, @4760$g_defaultShortDayList

asctime$17:	; shortDayList = £temporary2335
	mov [rbp + 40], rax

asctime$18:	; if shortMonthList == int8$0# goto 21
	cmp qword [rbp + 48], 0
	je asctime$21

asctime$19:	; £temporary2337 = shortMonthList
	mov rax, [rbp + 48]

asctime$20:	; goto 22
	jmp asctime$22

asctime$21:	; £temporary2337 = g_defaultShortMonthList
	mov rax, @4762$g_defaultShortMonthList

asctime$22:	; shortMonthList = £temporary2337
	mov [rbp + 48], rax

asctime$23:	; call header integral zero 0 stack zero 0

asctime$24:	; parameter g_timeString, offset 80
	mov qword [rbp + 80], @4759$g_timeString

asctime$25:	; parameter string_25s2025s20252i202502i3A2502i3A2502i202504i#, offset 88
	mov qword [rbp + 88], string_25s2025s20252i202502i3A2502i3A2502i202504i#

asctime$26:	; £field2338 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$27:	; £temporary2340 = int_to_int £field2338 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

asctime$28:	; £temporary2341 = £temporary2340 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

asctime$29:	; £temporary2342 = shortDayList + £temporary2341
	mov rsi, [rbp + 40]
	add rsi, rax

asctime$30:	; £field2339 -> £temporary2342 = *£temporary2342

asctime$31:	; parameter £field2339 -> £temporary2342, offset 96
	mov rax, [rsi]
	mov [rbp + 96], rax

asctime$32:	; £field2343 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$33:	; £temporary2345 = int_to_int £field2343 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

asctime$34:	; £temporary2346 = £temporary2345 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

asctime$35:	; £temporary2347 = shortMonthList + £temporary2346
	mov rsi, [rbp + 48]
	add rsi, rax

asctime$36:	; £field2344 -> £temporary2347 = *£temporary2347

asctime$37:	; parameter £field2344 -> £temporary2347, offset 104
	mov rax, [rsi]
	mov [rbp + 104], rax

asctime$38:	; £field2348 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$39:	; parameter £field2348 -> tp, offset 112
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

asctime$40:	; £field2349 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$41:	; parameter £field2349 -> tp, offset 116
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

asctime$42:	; £field2350 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$43:	; parameter £field2350 -> tp, offset 120
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

asctime$44:	; £field2351 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$45:	; parameter £field2351 -> tp, offset 124
	mov eax, [rsi]
	mov [rbp + 124], eax

asctime$46:	; £field2352 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$47:	; £temporary2353 = £field2352 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

asctime$48:	; parameter £temporary2353, offset 128
	mov [rbp + 128], eax

asctime$49:	; call function noellipse-ellipse sprintf, extra 36
	mov qword [rbp + 56], asctime$50
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 36
	jmp sprintf

asctime$50:	; post call

asctime$51:	; return_value = g_timeString
	mov rbx, @4759$g_timeString

asctime$52:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

asctime$53:	; function end asctime

ctime:	; call header integral zero 0 stack zero 0

ctime$1:	; call header integral zero 0 stack zero 0

ctime$2:	; parameter time, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

ctime$3:	; call function noellipse-noellipse localtime
	mov qword [rbp + 32], ctime$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp localtime

ctime$4:	; post call

ctime$5:	; £temporary2355 = return_value

ctime$6:	; parameter £temporary2355, offset 56
	mov [rbp + 56], rbx

ctime$7:	; call function noellipse-noellipse asctime
	mov qword [rbp + 32], ctime$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp asctime

ctime$8:	; post call

ctime$9:	; £temporary2356 = return_value

ctime$10:	; return_value = £temporary2356

ctime$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

ctime$12:	; function end ctime

localtime:	; call header integral zero 0 stack zero 0

localtime$1:	; parameter timePtr, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

localtime$2:	; call function noellipse-noellipse gmtime
	mov qword [rbp + 32], localtime$3
	mov [rbp + 40], rbp
	add rbp, 32
	jmp gmtime

localtime$3:	; post call

localtime$4:	; £temporary2357 = return_value

localtime$5:	; tmPtr = £temporary2357
	mov [rbp + 32], rbx

localtime$6:	; call header integral zero 0 stack zero 0

localtime$7:	; call function noellipse-noellipse localeconv
	mov qword [rbp + 40], localtime$8
	mov [rbp + 48], rbp
	add rbp, 40
	jmp localeconv

localtime$8:	; post call

localtime$9:	; £temporary2358 = return_value

localtime$10:	; localeConvPtr = £temporary2358
	mov [rbp + 40], rbx

localtime$11:	; timeZone = int4$0#
	mov dword [rbp + 48], 0

localtime$12:	; if localeConvPtr == int8$0# goto 21
	cmp qword [rbp + 40], 0
	je localtime$21

localtime$13:	; £field2360 -> tmPtr = *tmPtr
	mov rsi, [rbp + 32]

localtime$14:	; if £field2360 -> tmPtr == int4$0# goto 18
	cmp dword [rsi + 32], 0
	je localtime$18

localtime$15:	; £field2361 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 40]

localtime$16:	; £temporary2364 = £field2361 -> localeConvPtr
	mov eax, [rsi]

localtime$17:	; goto 20
	jmp localtime$20

localtime$18:	; £field2362 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 40]

localtime$19:	; £temporary2364 = £field2362 -> localeConvPtr
	mov eax, [rsi + 4]

localtime$20:	; timeZone = £temporary2364
	mov [rbp + 48], eax

localtime$21:	; £field2365 -> timePtr = *timePtr
	mov rsi, [rbp + 24]

localtime$22:	; £temporary2366 = timeZone * int4$3600#
	mov eax, [rbp + 48]
	xor edx, edx
	imul dword [int4$3600#]

localtime$23:	; £temporary2367 = int_to_int £temporary2366 (Signed_Int -> Unsigned_Long_Int)
	mov rbx, 4294967295
	and rax, rbx

localtime$24:	; time = £field2365 -> timePtr + £temporary2367
	mov rbx, [rsi]
	add rbx, rax
	mov [rbp + 52], rbx

localtime$25:	; call header integral zero 0 stack zero 0

localtime$26:	; £temporary2369 = &time
	mov rsi, rbp
	add rsi, 52

localtime$27:	; parameter £temporary2369, offset 84
	mov [rbp + 84], rsi

localtime$28:	; call function noellipse-noellipse gmtime
	mov qword [rbp + 60], localtime$29
	mov [rbp + 68], rbp
	add rbp, 60
	jmp gmtime

localtime$29:	; post call

localtime$30:	; £temporary2370 = return_value

localtime$31:	; return_value = £temporary2370

localtime$32:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

localtime$33:	; function end localtime

strftime:	; call header integral zero 0 stack zero 0

strftime$1:	; call function noellipse-noellipse localeconv
	mov qword [rbp + 52], strftime$2
	mov [rbp + 60], rbp
	add rbp, 52
	jmp localeconv

strftime$2:	; post call

strftime$3:	; £temporary2372 = return_value

strftime$4:	; localeConvPtr = £temporary2372
	mov [rbp + 52], rbx

strftime$5:	; if localeConvPtr == int8$0# goto 9
	cmp qword [rbp + 52], 0
	je strftime$9

strftime$6:	; £field2374 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

strftime$7:	; £temporary2375 = £field2374 -> localeConvPtr
	mov rax, [rsi + 8]

strftime$8:	; goto 10
	jmp strftime$10

strftime$9:	; £temporary2375 = int8$0#
	mov rax, 0

strftime$10:	; shortDayList = £temporary2375
	mov [rbp + 60], rax

strftime$11:	; if localeConvPtr == int8$0# goto 15
	cmp qword [rbp + 52], 0
	je strftime$15

strftime$12:	; £field2377 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

strftime$13:	; £temporary2378 = £field2377 -> localeConvPtr
	mov rax, [rsi + 24]

strftime$14:	; goto 16
	jmp strftime$16

strftime$15:	; £temporary2378 = int8$0#
	mov rax, 0

strftime$16:	; shortMonthList = £temporary2378
	mov [rbp + 68], rax

strftime$17:	; if localeConvPtr == int8$0# goto 21
	cmp qword [rbp + 52], 0
	je strftime$21

strftime$18:	; £field2380 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

strftime$19:	; £temporary2381 = £field2380 -> localeConvPtr
	mov rax, [rsi + 16]

strftime$20:	; goto 22
	jmp strftime$22

strftime$21:	; £temporary2381 = int8$0#
	mov rax, 0

strftime$22:	; longDayList = £temporary2381
	mov [rbp + 76], rax

strftime$23:	; if localeConvPtr == int8$0# goto 27
	cmp qword [rbp + 52], 0
	je strftime$27

strftime$24:	; £field2383 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

strftime$25:	; £temporary2384 = £field2383 -> localeConvPtr
	mov rax, [rsi + 32]

strftime$26:	; goto 28
	jmp strftime$28

strftime$27:	; £temporary2384 = int8$0#
	mov rax, 0

strftime$28:	; longMonthList = £temporary2384
	mov [rbp + 84], rax

strftime$29:	; call header integral zero 0 stack zero 0

strftime$30:	; parameter s, offset 116
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

strftime$31:	; parameter string_#, offset 124
	mov qword [rbp + 124], string_#

strftime$32:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 92], strftime$33
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strcpy

strftime$33:	; post call

strftime$34:	; if shortDayList == int8$0# goto 37
	cmp qword [rbp + 60], 0
	je strftime$37

strftime$35:	; £temporary2387 = shortDayList
	mov rax, [rbp + 60]

strftime$36:	; goto 38
	jmp strftime$38

strftime$37:	; £temporary2387 = g_defaultShortDayList
	mov rax, @4760$g_defaultShortDayList

strftime$38:	; shortDayList = £temporary2387
	mov [rbp + 60], rax

strftime$39:	; if longDayList == int8$0# goto 42
	cmp qword [rbp + 76], 0
	je strftime$42

strftime$40:	; £temporary2389 = longDayList
	mov rax, [rbp + 76]

strftime$41:	; goto 43
	jmp strftime$43

strftime$42:	; £temporary2389 = g_defaultLongDayList
	mov rax, @4761$g_defaultLongDayList

strftime$43:	; longDayList = £temporary2389
	mov [rbp + 76], rax

strftime$44:	; if shortMonthList == int8$0# goto 47
	cmp qword [rbp + 68], 0
	je strftime$47

strftime$45:	; £temporary2391 = shortMonthList
	mov rax, [rbp + 68]

strftime$46:	; goto 48
	jmp strftime$48

strftime$47:	; £temporary2391 = g_defaultShortMonthList
	mov rax, @4762$g_defaultShortMonthList

strftime$48:	; shortMonthList = £temporary2391
	mov [rbp + 68], rax

strftime$49:	; if longMonthList == int8$0# goto 52
	cmp qword [rbp + 84], 0
	je strftime$52

strftime$50:	; £temporary2393 = longMonthList
	mov rax, [rbp + 84]

strftime$51:	; goto 53
	jmp strftime$53

strftime$52:	; £temporary2393 = g_defaultLongMonthList
	mov rax, @4763$g_defaultLongMonthList

strftime$53:	; longMonthList = £temporary2393
	mov [rbp + 84], rax

strftime$54:	; £field2394 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$55:	; £temporary2395 = £field2394 -> tp - int4$69#
	mov eax, [rsi + 20]
	sub eax, 69

strftime$56:	; leapDays = £temporary2395 / int4$4#
	xor edx, edx
	idiv dword [int4$4#]
	mov [rbp + 92], eax

strftime$57:	; £field2397 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$58:	; £temporary2398 = £field2397 -> tp - int4$70#
	mov eax, [rsi + 20]
	sub eax, 70

strftime$59:	; £temporary2399 = £temporary2398 * int4$365#
	xor edx, edx
	imul dword [int4$365#]

strftime$60:	; £temporary2400 = £temporary2399 + leapDays
	add eax, [rbp + 92]

strftime$61:	; £field2401 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$62:	; £temporary2402 = £temporary2400 + £field2401 -> tp
	add eax, [rsi + 28]

strftime$63:	; £temporary2403 = int_to_int £temporary2402 (Signed_Int -> Signed_Long_Int)
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge strftime$64
	neg eax
	neg rax

strftime$64:	; totalDays = £temporary2403
	mov [rbp + 96], rax

strftime$65:	; call header integral zero 0 stack zero 0

strftime$66:	; parameter string_leap20days2025i2C20total20days2025lu0A#, offset 128
	mov qword [rbp + 128], string_leap20days2025i2C20total20days2025lu0A#

strftime$67:	; parameter leapDays, offset 136
	mov eax, [rbp + 92]
	mov [rbp + 136], eax

strftime$68:	; parameter totalDays, offset 140
	mov rax, [rbp + 96]
	mov [rbp + 140], rax

strftime$69:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 104], strftime$70
	mov [rbp + 112], rbp
	add rbp, 104
	mov rdi, rbp
	add rdi, 12
	jmp printf

strftime$70:	; post call

strftime$71:	; if totalDays >= int8$3# goto 76
	cmp qword [rbp + 96], 3
	jge strftime$76

strftime$72:	; £temporary2406 = totalDays + int8$4#
	mov rax, [rbp + 96]
	add rax, 4

strftime$73:	; £temporary2407 = int_to_int £temporary2406 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge strftime$74
	neg rax
	neg eax

strftime$74:	; yearDaySunday = £temporary2407
	mov [rbp + 104], eax

strftime$75:	; goto 80
	jmp strftime$80

strftime$76:	; £temporary2408 = totalDays - int8$3#
	mov rax, [rbp + 96]
	sub rax, 3

strftime$77:	; £temporary2409 = £temporary2408 % int8$7#
	xor rdx, rdx
	idiv qword [int8$7#]

strftime$78:	; £temporary2410 = int_to_int £temporary2409 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge strftime$79
	neg rdx
	neg edx

strftime$79:	; yearDaySunday = £temporary2410
	mov [rbp + 104], edx

strftime$80:	; call header integral zero 0 stack zero 0

strftime$81:	; parameter string_yearDaySunday2025i0A#, offset 136
	mov qword [rbp + 136], string_yearDaySunday2025i0A#

strftime$82:	; parameter yearDaySunday, offset 144
	mov eax, [rbp + 104]
	mov [rbp + 144], eax

strftime$83:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 112], strftime$84
	mov [rbp + 120], rbp
	add rbp, 112
	mov rdi, rbp
	add rdi, 4
	jmp printf

strftime$84:	; post call

strftime$85:	; if totalDays >= int8$4# goto 90
	cmp qword [rbp + 96], 4
	jge strftime$90

strftime$86:	; £temporary2413 = totalDays + int8$3#
	mov rax, [rbp + 96]
	add rax, 3

strftime$87:	; £temporary2414 = int_to_int £temporary2413 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge strftime$88
	neg rax
	neg eax

strftime$88:	; yearDayMonday = £temporary2414
	mov [rbp + 108], eax

strftime$89:	; goto 94
	jmp strftime$94

strftime$90:	; £temporary2415 = totalDays - int8$4#
	mov rax, [rbp + 96]
	sub rax, 4

strftime$91:	; £temporary2416 = £temporary2415 % int8$7#
	xor rdx, rdx
	idiv qword [int8$7#]

strftime$92:	; £temporary2417 = int_to_int £temporary2416 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge strftime$93
	neg rdx
	neg edx

strftime$93:	; yearDayMonday = £temporary2417
	mov [rbp + 108], edx

strftime$94:	; call header integral zero 0 stack zero 0

strftime$95:	; parameter string_yearDayMonday2025i0A#, offset 136
	mov qword [rbp + 136], string_yearDayMonday2025i0A#

strftime$96:	; parameter yearDayMonday, offset 144
	mov eax, [rbp + 108]
	mov [rbp + 144], eax

strftime$97:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 112], strftime$98
	mov [rbp + 120], rbp
	add rbp, 112
	mov rdi, rbp
	add rdi, 4
	jmp printf

strftime$98:	; post call

strftime$99:	; index = int4$0#
	mov dword [rbp + 112], 0

strftime$100:	; £temporary2420 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

strftime$101:	; £temporary2422 = fmt + £temporary2420
	mov rsi, [rbp + 36]
	add rsi, rax

strftime$102:	; £field2419 -> £temporary2422 = *£temporary2422

strftime$103:	; if £field2419 -> £temporary2422 == int1$0# goto 374
	cmp byte [rsi], 0
	je strftime$374

strftime$104:	; £temporary2426 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

strftime$105:	; £temporary2428 = fmt + £temporary2426
	mov rsi, [rbp + 36]
	add rsi, rax

strftime$106:	; £field2425 -> £temporary2428 = *£temporary2428

strftime$107:	; if £field2425 -> £temporary2428 != int1$37# goto 348
	cmp byte [rsi], 37
	jne strftime$348

strftime$108:	; £temporary2430 = index + int4$1#
	mov eax, [rbp + 112]
	inc eax

strftime$109:	; £temporary2432 = int_to_int £temporary2430 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strftime$110:	; £temporary2434 = fmt + £temporary2432
	mov rsi, [rbp + 36]
	add rsi, rax

strftime$111:	; £field2431 -> £temporary2434 = *£temporary2434

strftime$112:	; case £field2431 -> £temporary2434 == int1$97# goto 136
	mov al, [rsi]
	cmp al, 97
	je strftime$136

strftime$113:	; case £field2431 -> £temporary2434 == int1$65# goto 147
	cmp al, 65
	je strftime$147

strftime$114:	; case £field2431 -> £temporary2434 == int1$98# goto 158
	cmp al, 98
	je strftime$158

strftime$115:	; case £field2431 -> £temporary2434 == int1$66# goto 169
	cmp al, 66
	je strftime$169

strftime$116:	; case £field2431 -> £temporary2434 == int1$99# goto 180
	cmp al, 99
	je strftime$180

strftime$117:	; case £field2431 -> £temporary2434 == int1$100# goto 200
	cmp al, 100
	je strftime$200

strftime$118:	; case £field2431 -> £temporary2434 == int1$72# goto 208
	cmp al, 72
	je strftime$208

strftime$119:	; case £field2431 -> £temporary2434 == int1$73# goto 216
	cmp al, 73
	je strftime$216

strftime$120:	; case £field2431 -> £temporary2434 == int1$106# goto 225
	cmp al, 106
	je strftime$225

strftime$121:	; case £field2431 -> £temporary2434 == int1$109# goto 233
	cmp al, 109
	je strftime$233

strftime$122:	; case £field2431 -> £temporary2434 == int1$77# goto 242
	cmp al, 77
	je strftime$242

strftime$123:	; case £field2431 -> £temporary2434 == int1$112# goto 250
	cmp al, 112
	je strftime$250

strftime$124:	; case £field2431 -> £temporary2434 == int1$83# goto 262
	cmp al, 83
	je strftime$262

strftime$125:	; case £field2431 -> £temporary2434 == int1$85# goto 270
	cmp al, 85
	je strftime$270

strftime$126:	; case £field2431 -> £temporary2434 == int1$119# goto 277
	cmp al, 119
	je strftime$277

strftime$127:	; case £field2431 -> £temporary2434 == int1$87# goto 285
	cmp al, 87
	je strftime$285

strftime$128:	; case £field2431 -> £temporary2434 == int1$120# goto 292
	cmp al, 120
	je strftime$292

strftime$129:	; case £field2431 -> £temporary2434 == int1$88# goto 306
	cmp al, 88
	je strftime$306

strftime$130:	; case £field2431 -> £temporary2434 == int1$121# goto 318
	cmp al, 121
	je strftime$318

strftime$131:	; case £field2431 -> £temporary2434 == int1$89# goto 327
	cmp al, 89
	je strftime$327

strftime$132:	; case £field2431 -> £temporary2434 == int1$90# goto 336
	cmp al, 90
	je strftime$336

strftime$133:	; case £field2431 -> £temporary2434 == int1$37# goto 342
	cmp al, 37
	je strftime$342

strftime$134:	; case end £field2431 -> £temporary2434

strftime$135:	; goto 355
	jmp strftime$355

strftime$136:	; call header integral zero 0 stack zero 0

strftime$137:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$138:	; £field2435 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$139:	; £temporary2437 = int_to_int £field2435 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

strftime$140:	; £temporary2438 = £temporary2437 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strftime$141:	; £temporary2439 = shortDayList + £temporary2438
	mov rsi, [rbp + 60]
	add rsi, rax

strftime$142:	; £field2436 -> £temporary2439 = *£temporary2439

strftime$143:	; parameter £field2436 -> £temporary2439, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

strftime$144:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$145
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$145:	; post call

strftime$146:	; goto 355
	jmp strftime$355

strftime$147:	; call header integral zero 0 stack zero 0

strftime$148:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$149:	; £field2441 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$150:	; £temporary2443 = int_to_int £field2441 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

strftime$151:	; £temporary2444 = £temporary2443 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strftime$152:	; £temporary2445 = longDayList + £temporary2444
	mov rsi, [rbp + 76]
	add rsi, rax

strftime$153:	; £field2442 -> £temporary2445 = *£temporary2445

strftime$154:	; parameter £field2442 -> £temporary2445, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

strftime$155:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$156
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$156:	; post call

strftime$157:	; goto 355
	jmp strftime$355

strftime$158:	; call header integral zero 0 stack zero 0

strftime$159:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$160:	; £field2447 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$161:	; £temporary2449 = int_to_int £field2447 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

strftime$162:	; £temporary2450 = £temporary2449 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strftime$163:	; £temporary2451 = shortMonthList + £temporary2450
	mov rsi, [rbp + 68]
	add rsi, rax

strftime$164:	; £field2448 -> £temporary2451 = *£temporary2451

strftime$165:	; parameter £field2448 -> £temporary2451, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

strftime$166:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$167
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$167:	; post call

strftime$168:	; goto 355
	jmp strftime$355

strftime$169:	; call header integral zero 0 stack zero 0

strftime$170:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$171:	; £field2453 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$172:	; £temporary2455 = int_to_int £field2453 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

strftime$173:	; £temporary2456 = £temporary2455 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strftime$174:	; £temporary2457 = longMonthList + £temporary2456
	mov rsi, [rbp + 84]
	add rsi, rax

strftime$175:	; £field2454 -> £temporary2457 = *£temporary2457

strftime$176:	; parameter £field2454 -> £temporary2457, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

strftime$177:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$178
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$178:	; post call

strftime$179:	; goto 355
	jmp strftime$355

strftime$180:	; call header integral zero 0 stack zero 0

strftime$181:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$182:	; parameter string_2504d2D2502d2D2502d202502d3A2502d3A2502d#, offset 168
	mov qword [rbp + 168], string_2504d2D2502d2D2502d202502d3A2502d3A2502d#

strftime$183:	; £field2459 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$184:	; £temporary2460 = £field2459 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

strftime$185:	; parameter £temporary2460, offset 176
	mov [rbp + 176], eax

strftime$186:	; £field2461 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$187:	; £temporary2462 = £field2461 -> tp + int4$1#
	mov eax, [rsi + 16]
	inc eax

strftime$188:	; parameter £temporary2462, offset 180
	mov [rbp + 180], eax

strftime$189:	; £field2463 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$190:	; parameter £field2463 -> tp, offset 184
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

strftime$191:	; £field2464 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$192:	; parameter £field2464 -> tp, offset 188
	mov eax, [rsi + 8]
	mov [rbp + 188], eax

strftime$193:	; £field2465 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$194:	; parameter £field2465 -> tp, offset 192
	mov eax, [rsi + 4]
	mov [rbp + 192], eax

strftime$195:	; £field2466 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$196:	; parameter £field2466 -> tp, offset 196
	mov eax, [rsi]
	mov [rbp + 196], eax

strftime$197:	; call function noellipse-ellipse sprintf, extra 24
	mov qword [rbp + 136], strftime$198
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 24
	jmp sprintf

strftime$198:	; post call

strftime$199:	; goto 355
	jmp strftime$355

strftime$200:	; call header integral zero 0 stack zero 0

strftime$201:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$202:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$203:	; £field2468 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$204:	; parameter £field2468 -> tp, offset 176
	mov eax, [rsi + 12]
	mov [rbp + 176], eax

strftime$205:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$206
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$206:	; post call

strftime$207:	; goto 355
	jmp strftime$355

strftime$208:	; call header integral zero 0 stack zero 0

strftime$209:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$210:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$211:	; £field2470 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$212:	; parameter £field2470 -> tp, offset 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

strftime$213:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$214
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$214:	; post call

strftime$215:	; goto 355
	jmp strftime$355

strftime$216:	; call header integral zero 0 stack zero 0

strftime$217:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$218:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$219:	; £field2472 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$220:	; £temporary2473 = £field2472 -> tp % int4$12#
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [int4$12#]

strftime$221:	; parameter £temporary2473, offset 176
	mov [rbp + 176], edx

strftime$222:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$223
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$223:	; post call

strftime$224:	; goto 355
	jmp strftime$355

strftime$225:	; call header integral zero 0 stack zero 0

strftime$226:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$227:	; parameter string_2503d#, offset 168
	mov qword [rbp + 168], string_2503d#

strftime$228:	; £field2475 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$229:	; parameter £field2475 -> tp, offset 176
	mov eax, [rsi + 28]
	mov [rbp + 176], eax

strftime$230:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$231
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$231:	; post call

strftime$232:	; goto 355
	jmp strftime$355

strftime$233:	; call header integral zero 0 stack zero 0

strftime$234:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$235:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$236:	; £field2477 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$237:	; £temporary2478 = £field2477 -> tp + int4$1#
	mov eax, [rsi + 16]
	inc eax

strftime$238:	; parameter £temporary2478, offset 176
	mov [rbp + 176], eax

strftime$239:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$240
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$240:	; post call

strftime$241:	; goto 355
	jmp strftime$355

strftime$242:	; call header integral zero 0 stack zero 0

strftime$243:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$244:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$245:	; £field2480 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$246:	; parameter £field2480 -> tp, offset 176
	mov eax, [rsi + 4]
	mov [rbp + 176], eax

strftime$247:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$248
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$248:	; post call

strftime$249:	; goto 355
	jmp strftime$355

strftime$250:	; call header integral zero 0 stack zero 0

strftime$251:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$252:	; parameter string_25s#, offset 168
	mov qword [rbp + 168], string_25s#

strftime$253:	; £field2482 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$254:	; if £field2482 -> tp >= int4$12# goto 257
	cmp dword [rsi + 8], 12
	jge strftime$257

strftime$255:	; £temporary2484 = string_AM#
	mov rax, string_AM#

strftime$256:	; goto 258
	jmp strftime$258

strftime$257:	; £temporary2484 = string_PM#
	mov rax, string_PM#

strftime$258:	; parameter £temporary2484, offset 176
	mov [rbp + 176], rax

strftime$259:	; call function noellipse-ellipse sprintf, extra 8
	mov qword [rbp + 136], strftime$260
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 8
	jmp sprintf

strftime$260:	; post call

strftime$261:	; goto 355
	jmp strftime$355

strftime$262:	; call header integral zero 0 stack zero 0

strftime$263:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$264:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$265:	; £field2486 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$266:	; parameter £field2486 -> tp, offset 176
	mov eax, [rsi]
	mov [rbp + 176], eax

strftime$267:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$268
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$268:	; post call

strftime$269:	; goto 355
	jmp strftime$355

strftime$270:	; call header integral zero 0 stack zero 0

strftime$271:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$272:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$273:	; parameter yearDaySunday, offset 176
	mov eax, [rbp + 104]
	mov [rbp + 176], eax

strftime$274:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$275
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$275:	; post call

strftime$276:	; goto 355
	jmp strftime$355

strftime$277:	; call header integral zero 0 stack zero 0

strftime$278:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$279:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$280:	; £field2489 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$281:	; parameter £field2489 -> tp, offset 176
	mov eax, [rsi + 24]
	mov [rbp + 176], eax

strftime$282:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$283
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$283:	; post call

strftime$284:	; goto 355
	jmp strftime$355

strftime$285:	; call header integral zero 0 stack zero 0

strftime$286:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$287:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$288:	; parameter yearDayMonday, offset 176
	mov eax, [rbp + 108]
	mov [rbp + 176], eax

strftime$289:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$290
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$290:	; post call

strftime$291:	; goto 355
	jmp strftime$355

strftime$292:	; call header integral zero 0 stack zero 0

strftime$293:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$294:	; parameter string_2504d2D2502d2D2502d#, offset 168
	mov qword [rbp + 168], string_2504d2D2502d2D2502d#

strftime$295:	; £field2492 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$296:	; £temporary2493 = £field2492 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

strftime$297:	; parameter £temporary2493, offset 176
	mov [rbp + 176], eax

strftime$298:	; £field2494 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$299:	; £temporary2495 = £field2494 -> tp + int4$1#
	mov eax, [rsi + 16]
	inc eax

strftime$300:	; parameter £temporary2495, offset 180
	mov [rbp + 180], eax

strftime$301:	; £field2496 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$302:	; parameter £field2496 -> tp, offset 184
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

strftime$303:	; call function noellipse-ellipse sprintf, extra 12
	mov qword [rbp + 136], strftime$304
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

strftime$304:	; post call

strftime$305:	; goto 355
	jmp strftime$355

strftime$306:	; call header integral zero 0 stack zero 0

strftime$307:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$308:	; parameter string_2502d3A2502d3A2502d#, offset 168
	mov qword [rbp + 168], string_2502d3A2502d3A2502d#

strftime$309:	; £field2498 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$310:	; parameter £field2498 -> tp, offset 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

strftime$311:	; £field2499 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$312:	; parameter £field2499 -> tp, offset 180
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

strftime$313:	; £field2500 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$314:	; parameter £field2500 -> tp, offset 184
	mov eax, [rsi]
	mov [rbp + 184], eax

strftime$315:	; call function noellipse-ellipse sprintf, extra 12
	mov qword [rbp + 136], strftime$316
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

strftime$316:	; post call

strftime$317:	; goto 355
	jmp strftime$355

strftime$318:	; call header integral zero 0 stack zero 0

strftime$319:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$320:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$321:	; £field2502 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$322:	; £temporary2503 = £field2502 -> tp % int4$100#
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [int4$100#]

strftime$323:	; parameter £temporary2503, offset 176
	mov [rbp + 176], edx

strftime$324:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$325
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$325:	; post call

strftime$326:	; goto 355
	jmp strftime$355

strftime$327:	; call header integral zero 0 stack zero 0

strftime$328:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$329:	; parameter string_2504d#, offset 168
	mov qword [rbp + 168], string_2504d#

strftime$330:	; £field2505 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$331:	; £temporary2506 = £field2505 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

strftime$332:	; parameter £temporary2506, offset 176
	mov [rbp + 176], eax

strftime$333:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$334
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$334:	; post call

strftime$335:	; goto 355
	jmp strftime$355

strftime$336:	; call header integral zero 0 stack zero 0

strftime$337:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$338:	; parameter string_#, offset 168
	mov qword [rbp + 168], string_#

strftime$339:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$340
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$340:	; post call

strftime$341:	; goto 355
	jmp strftime$355

strftime$342:	; call header integral zero 0 stack zero 0

strftime$343:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$344:	; parameter string_25#, offset 168
	mov qword [rbp + 168], string_25#

strftime$345:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$346
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$346:	; post call

strftime$347:	; goto 355
	jmp strftime$355

strftime$348:	; £field2510 -> add = *add
	mov rsi, rbp
	add rsi, 116

strftime$349:	; £temporary2512 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

strftime$350:	; £temporary2514 = fmt + £temporary2512
	mov rdi, [rbp + 36]
	add rdi, rax

strftime$351:	; £field2511 -> £temporary2514 = *£temporary2514

strftime$352:	; £field2510 -> add = £field2511 -> £temporary2514
	mov al, [rdi]
	mov [rsi], al

strftime$353:	; £field2515 -> add = *add
	mov rsi, rbp
	add rsi, 116

strftime$354:	; £field2515 -> add = int1$0#
	mov byte [rsi + 1], 0

strftime$355:	; call header integral zero 0 stack zero 0

strftime$356:	; parameter s, offset 160
	mov rax, [rbp + 24]
	mov [rbp + 160], rax

strftime$357:	; call function noellipse-noellipse strlen
	mov qword [rbp + 136], strftime$358
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strlen

strftime$358:	; post call

strftime$359:	; £temporary2516 = return_value

strftime$360:	; call header integral no zero 1 stack zero 0
	mov [rbp + 136], ebx

strftime$361:	; parameter add, offset 160
	mov [rbp + 164], rbp
	add qword [rbp + 164], 116

strftime$362:	; call function noellipse-noellipse strlen
	mov qword [rbp + 140], strftime$363
	mov [rbp + 148], rbp
	add rbp, 140
	jmp strlen

strftime$363:	; post call
	mov ebx, [rbp + 136]
	mov eax, ebx

strftime$364:	; £temporary2517 = return_value

strftime$365:	; £temporary2518 = £temporary2516 + £temporary2517
	add eax, ebx

strftime$366:	; if £temporary2518 >= smax goto 374
	cmp eax, [rbp + 32]
	jge strftime$374

strftime$367:	; call header integral zero 0 stack zero 0

strftime$368:	; parameter s, offset 160
	mov rax, [rbp + 24]
	mov [rbp + 160], rax

strftime$369:	; parameter add, offset 168
	mov [rbp + 168], rbp
	add qword [rbp + 168], 116

strftime$370:	; call function noellipse-noellipse strcat
	mov qword [rbp + 136], strftime$371
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcat

strftime$371:	; post call

strftime$372:	; index = index + int4$1#
	inc dword [rbp + 112]

strftime$373:	; goto 100
	jmp strftime$100

strftime$374:	; call header integral zero 0 stack zero 0

strftime$375:	; parameter s, offset 140
	mov rax, [rbp + 24]
	mov [rbp + 140], rax

strftime$376:	; call function noellipse-noellipse strlen
	mov qword [rbp + 116], strftime$377
	mov [rbp + 124], rbp
	add rbp, 116
	jmp strlen

strftime$377:	; post call

strftime$378:	; £temporary2521 = return_value

strftime$379:	; return_value = £temporary2521

strftime$380:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strftime$381:	; function end strftime
section .data

$IntegralStorage#:
	times 8 db 0

int4$4#:
	; initializer Signed_Int
	dd 4

int4$365#:
	; initializer Signed_Int
	dd 365

int8$86400#:
	; initializer Signed_Long_Int
	dq 86400

int8$3600#:
	; initializer Signed_Long_Int
	dq 3600

int8$60#:
	; initializer Signed_Long_Int
	dq 60

@4747$g_timeStruct:
	times 36 db 0

int8$7#:
	; initializer Signed_Long_Int
	dq 7

int4$100#:
	; initializer Signed_Int
	dd 100

int4$400#:
	; initializer Signed_Int
	dd 400

Array_#:
	; initializer Array
	dq 4

@4759$g_timeString:
	times 256 db 0

string_Sun#:
	db "Sun", 0

string_Mon#:
	db "Mon", 0

string_Tue#:
	db "Tue", 0

string_Wed#:
	db "Wed", 0

string_Thu#:
	db "Thu", 0

string_Fri#:
	db "Fri", 0

string_Sat#:
	db "Sat", 0

@4760$g_defaultShortDayList:
	dq string_Sun#
	dq string_Mon#
	dq string_Tue#
	dq string_Wed#
	dq string_Thu#
	dq string_Fri#
	dq string_Sat#

string_Sunday#:
	db "Sunday", 0

string_Monday#:
	db "Monday", 0

string_Tuesday#:
	db "Tuesday", 0

string_Wednesday#:
	db "Wednesday", 0

string_Thursday#:
	db "Thursday", 0

string_Friday#:
	db "Friday", 0

string_Saturday#:
	db "Saturday", 0

@4761$g_defaultLongDayList:
	dq string_Sunday#
	dq string_Monday#
	dq string_Tuesday#
	dq string_Wednesday#
	dq string_Thursday#
	dq string_Friday#
	dq string_Saturday#

string_Jan#:
	db "Jan", 0

string_Feb#:
	db "Feb", 0

string_Mar#:
	db "Mar", 0

string_Apr#:
	db "Apr", 0

string_May#:
	db "May", 0

string_Jun#:
	db "Jun", 0

string_Jul#:
	db "Jul", 0

string_Aug#:
	db "Aug", 0

string_Sep#:
	db "Sep", 0

string_Oct#:
	db "Oct", 0

string_Nov#:
	db "Nov", 0

string_Dec#:
	db "Dec", 0

@4762$g_defaultShortMonthList:
	dq string_Jan#
	dq string_Feb#
	dq string_Mar#
	dq string_Apr#
	dq string_May#
	dq string_Jun#
	dq string_Jul#
	dq string_Aug#
	dq string_Sep#
	dq string_Oct#
	dq string_Nov#
	dq string_Dec#

string_January#:
	db "January", 0

string_February#:
	db "February", 0

string_March#:
	db "March", 0

string_April#:
	db "April", 0

string_June#:
	db "June", 0

string_July#:
	db "July", 0

string_August#:
	db "August", 0

string_September#:
	db "September", 0

string_October#:
	db "October", 0

string_November#:
	db "November", 0

string_December#:
	db "December", 0

@4763$g_defaultLongMonthList:
	dq string_January#
	dq string_February#
	dq string_March#
	dq string_April#
	dq string_May#
	dq string_June#
	dq string_July#
	dq string_August#
	dq string_September#
	dq string_October#
	dq string_November#
	dq string_December#

string_25s2025s20252i202502i3A2502i3A2502i202504i#:
	; initializer String
	db "%s %s %2i %02i:%02i:%02i %04i", 0

int8$8#:
	; initializer Pointer
	dq 8

int4$3600#:
	; initializer Signed_Int
	dd 3600

string_#:
	; initializer String
	db 0

string_leap20days2025i2C20total20days2025lu0A#:
	; initializer String
	db "leap days %i, total days %lu", 10, 0

string_yearDaySunday2025i0A#:
	; initializer String
	db "yearDaySunday %i", 10, 0

string_yearDayMonday2025i0A#:
	; initializer String
	db "yearDayMonday %i", 10, 0

string_2504d2D2502d2D2502d202502d3A2502d3A2502d#:
	; initializer String
	db "%04d-%02d-%02d %02d:%02d:%02d", 0

string_2502d#:
	; initializer String
	db "%02d", 0

string_2503d#:
	; initializer String
	db "%03d", 0

string_25s#:
	; initializer String
	db "%s", 0

string_AM#:
	; initializer String
	db "AM", 0

string_PM#:
	; initializer String
	db "PM", 0

string_2504d2D2502d2D2502d#:
	; initializer String
	db "%04d-%02d-%02d", 0

string_2502d3A2502d3A2502d#:
	; initializer String
	db "%02d:%02d:%02d", 0

string_2504d#:
	; initializer String
	db "%04d", 0

string_25#:
	; initializer String
	db "%", 0

int4$12#:
	; initializer Signed_Int
	dd 12
