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

 clock:
	; return int8$minus1#
	mov rbx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 clock$1:
	; function end clock

 time:
	; empty

 time$1:
	; rax = int8$201#
	mov rax, 201

 time$2:
	; £temporary2224 = &time
	mov rdi, rbp
	add rdi, 32

 time$3:
	; £temporary2225 = int_to_int £temporary2224 (Pointer -> Unsigned_Long_Int)

 time$4:
	; rdi = £temporary2225

 time$5:
	; syscall
	syscall

 time$6:
	; if timePtr == int8$0# goto 9
	cmp qword [rbp + 24], 0
	je time$9

 time$7:
	; £field2227 -> timePtr = *timePtr
	mov rsi, [rbp + 24]

 time$8:
	; £field2227 -> timePtr = time
	mov rax, [rbp + 32]
	mov [rsi], rax

 time$9:
	; return time
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 time$10:
	; function end time

 mktime:
	; if tp == int8$0# goto 27
	cmp qword [rbp + 24], 0
	je mktime$27

 mktime$1:
	; £field2230 -> tp = *tp
	mov rsi, [rbp + 24]

 mktime$2:
	; £temporary2231 = £field2230 -> tp - int4$69#
	mov eax, [rsi + 20]
	sub eax, 69

 mktime$3:
	; £temporary2232 = £temporary2231 / int4$4#
	xor edx, edx
	idiv dword [int4$4#]

 mktime$4:
	; £temporary2233 = int_to_int £temporary2232 (Signed_Int -> Signed_Long_Int)
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

 mktime$5:
	; leapDays = £temporary2233
	mov [rbp + 32], rax

 mktime$6:
	; £field2234 -> tp = *tp
	mov rsi, [rbp + 24]

 mktime$7:
	; £temporary2235 = £field2234 -> tp - int4$70#
	mov eax, [rsi + 20]
	sub eax, 70

 mktime$8:
	; £temporary2236 = £temporary2235 * int4$365#
	xor edx, edx
	imul dword [int4$365#]

 mktime$9:
	; £temporary2237 = int_to_int £temporary2236 (Signed_Int -> Signed_Long_Int)
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

 mktime$10:
	; £temporary2238 = £temporary2237 + leapDays
	add rax, [rbp + 32]

 mktime$11:
	; £field2239 -> tp = *tp
	mov rsi, [rbp + 24]

 mktime$12:
	; £temporary2240 = int_to_int £field2239 -> tp (Signed_Int -> Signed_Long_Int)
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

 mktime$13:
	; totalDays = £temporary2238 + £temporary2240
	add rax, rbx
	mov [rbp + 40], rax

 mktime$14:
	; £temporary2242 = totalDays * int8$86400#
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [int8$86400#]
	mov rbx, rax

 mktime$15:
	; £field2243 -> tp = *tp
	mov rsi, [rbp + 24]

 mktime$16:
	; £temporary2244 = int_to_int £field2243 -> tp (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

 mktime$17:
	; £temporary2245 = £temporary2244 * int8$3600#
	xor rdx, rdx
	imul qword [int8$3600#]

 mktime$18:
	; £temporary2246 = £temporary2242 + £temporary2245
	add rbx, rax

 mktime$19:
	; £field2247 -> tp = *tp
	mov rsi, [rbp + 24]

 mktime$20:
	; £temporary2248 = int_to_int £field2247 -> tp (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

 mktime$21:
	; £temporary2249 = £temporary2248 * int8$60#
	xor rdx, rdx
	imul qword [int8$60#]

 mktime$22:
	; £temporary2250 = £temporary2246 + £temporary2249
	add rbx, rax

 mktime$23:
	; £field2251 -> tp = *tp
	mov rsi, [rbp + 24]

 mktime$24:
	; £temporary2252 = int_to_int £field2251 -> tp (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

 mktime$25:
	; £temporary2253 = £temporary2250 + £temporary2252
	add rbx, rax

 mktime$26:
	; return £temporary2253
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mktime$27:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mktime$28:
	; function end mktime

 gmtime:
	; year = int4$1970#
	mov dword [rbp + 32], 1970

 gmtime$1:
	; if timePtr == int8$0# goto 87
	cmp qword [rbp + 24], 0
	je gmtime$87

 gmtime$2:
	; £field2255 -> timePtr = *timePtr
	mov rsi, [rbp + 24]

 gmtime$3:
	; time = £field2255 -> timePtr
	mov rax, [rsi]
	mov [rbp + 36], rax

 gmtime$4:
	; secondsOfDay = time % int8$86400#
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 44], rdx

 gmtime$5:
	; £temporary2258 = secondsOfDay / int8$3600#
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

 gmtime$6:
	; £temporary2259 = int_to_int £temporary2258 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$7
	neg rax
	neg eax

 gmtime$7:
	; g_timeStruct$tm_hour = £temporary2259
	mov [@4750$g_timeStruct + 8], eax

 gmtime$8:
	; £temporary2261 = secondsOfDay % int8$3600#
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

 gmtime$9:
	; £temporary2262 = £temporary2261 / int8$60#
	mov rax, rdx
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtime$10:
	; £temporary2263 = int_to_int £temporary2262 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$11
	neg rax
	neg eax

 gmtime$11:
	; g_timeStruct$tm_min = £temporary2263
	mov [@4750$g_timeStruct + 4], eax

 gmtime$12:
	; £temporary2265 = secondsOfDay % int8$3600#
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

 gmtime$13:
	; £temporary2266 = £temporary2265 % int8$60#
	mov rax, rdx
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtime$14:
	; £temporary2267 = int_to_int £temporary2266 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge gmtime$15
	neg rdx
	neg edx

 gmtime$15:
	; g_timeStruct$tm_sec = £temporary2267
	mov [@4750$g_timeStruct], edx

 gmtime$16:
	; totalDays = time / int8$86400#
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 52], rax

 gmtime$17:
	; if totalDays >= int8$3# goto 22
	cmp qword [rbp + 52], 3
	jge gmtime$22

 gmtime$18:
	; £temporary2271 = totalDays + int8$4#
	mov rax, [rbp + 52]
	add rax, 4

 gmtime$19:
	; £temporary2272 = int_to_int £temporary2271 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$20
	neg rax
	neg eax

 gmtime$20:
	; g_timeStruct$tm_wday = £temporary2272
	mov [@4750$g_timeStruct + 24], eax

 gmtime$21:
	; goto 26
	jmp gmtime$26

 gmtime$22:
	; £temporary2274 = totalDays - int8$3#
	mov rax, [rbp + 52]
	sub rax, 3

 gmtime$23:
	; £temporary2275 = £temporary2274 % int8$7#
	xor rdx, rdx
	idiv qword [int8$7#]

 gmtime$24:
	; £temporary2276 = int_to_int £temporary2275 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge gmtime$25
	neg rdx
	neg edx

 gmtime$25:
	; g_timeStruct$tm_wday = £temporary2276
	mov [@4750$g_timeStruct + 24], edx

 gmtime$26:
	; £temporary2277 = year % int4$4#
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$4#]

 gmtime$27:
	; if £temporary2277 != int4$0# goto 30
	cmp edx, 0
	jne gmtime$30

 gmtime$28:
	; £temporary2279 = year % int4$100#
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$100#]

 gmtime$29:
	; if £temporary2279 != int4$0# goto 32
	cmp edx, 0
	jne gmtime$32

 gmtime$30:
	; £temporary2282 = year % int4$400#
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$400#]

 gmtime$31:
	; if £temporary2282 != int4$0# goto 34
	cmp edx, 0
	jne gmtime$34

 gmtime$32:
	; £temporary2285 = int4$1#
	mov eax, 1

 gmtime$33:
	; goto 35
	jmp gmtime$35

 gmtime$34:
	; £temporary2285 = int4$0#
	mov eax, 0

 gmtime$35:
	; leapYear = £temporary2285
	mov [rbp + 60], eax

 gmtime$36:
	; if leapYear == int4$0# goto 39
	cmp dword [rbp + 60], 0
	je gmtime$39

 gmtime$37:
	; £temporary2287 = int4$366#
	mov eax, 366

 gmtime$38:
	; goto 40
	jmp gmtime$40

 gmtime$39:
	; £temporary2287 = int4$365#
	mov eax, 365

 gmtime$40:
	; daysOfYear = £temporary2287
	mov [rbp + 64], eax

 gmtime$41:
	; £temporary2288 = int_to_int daysOfYear (Signed_Int -> Signed_Long_Int)
	mov eax, [rbp + 64]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$42
	neg eax
	neg rax

 gmtime$42:
	; if totalDays >= £temporary2288 goto 83
	cmp [rbp + 52], rax
	jge gmtime$83

 gmtime$43:
	; g_timeStruct$tm_year = year - int4$1900#
	mov eax, [rbp + 32]
	sub eax, 1900
	mov [@4750$g_timeStruct + 20], eax

 gmtime$44:
	; £temporary2293 = int_to_int totalDays (Signed_Long_Int -> Signed_Int)
	mov rax, [rbp + 52]
	cmp rax, 0
	jge gmtime$45
	neg rax
	neg eax

 gmtime$45:
	; g_timeStruct$tm_yday = £temporary2293
	mov [@4750$g_timeStruct + 28], eax

 gmtime$46:
	; daysOfMonths[0] = int4$31#
	mov dword [rbp + 68], 31

 gmtime$47:
	; if leapYear == int4$0# goto 50
	cmp dword [rbp + 60], 0
	je gmtime$50

 gmtime$48:
	; £temporary2295 = int4$29#
	mov eax, 29

 gmtime$49:
	; goto 51
	jmp gmtime$51

 gmtime$50:
	; £temporary2295 = int4$28#
	mov eax, 28

 gmtime$51:
	; daysOfMonths[1] = £temporary2295
	mov [rbp + 72], eax

 gmtime$52:
	; daysOfMonths[2] = int4$31#
	mov dword [rbp + 76], 31

 gmtime$53:
	; daysOfMonths[3] = int4$30#
	mov dword [rbp + 80], 30

 gmtime$54:
	; daysOfMonths[4] = int4$31#
	mov dword [rbp + 84], 31

 gmtime$55:
	; daysOfMonths[5] = int4$30#
	mov dword [rbp + 88], 30

 gmtime$56:
	; daysOfMonths[6] = int4$30#
	mov dword [rbp + 92], 30

 gmtime$57:
	; daysOfMonths[7] = int4$31#
	mov dword [rbp + 96], 31

 gmtime$58:
	; daysOfMonths[8] = int4$30#
	mov dword [rbp + 100], 30

 gmtime$59:
	; daysOfMonths[9] = int4$31#
	mov dword [rbp + 104], 31

 gmtime$60:
	; daysOfMonths[10] = int4$30#
	mov dword [rbp + 108], 30

 gmtime$61:
	; daysOfMonths[11] = int4$31#
	mov dword [rbp + 112], 31

 gmtime$62:
	; month = int4$0#
	mov dword [rbp + 116], 0

 gmtime$63:
	; £temporary2309 = int_to_int month (Signed_Int -> Array)
	mov eax, [rbp + 116]
	mov rbx, 4294967295
	and rax, rbx

 gmtime$64:
	; £temporary2310 = £temporary2309 * Array_4#
	xor rdx, rdx
	mul qword [Array_4#]

 gmtime$65:
	; £temporary2311 = daysOfMonths + £temporary2310
	mov rsi, rbp
	add rsi, 68
	add rsi, rax

 gmtime$66:
	; £field2308 -> £temporary2311 = *£temporary2311

 gmtime$67:
	; £temporary2312 = int_to_int £field2308 -> £temporary2311 (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$68
	neg eax
	neg rax

 gmtime$68:
	; if totalDays < £temporary2312 goto 77
	cmp [rbp + 52], rax
	jl gmtime$77

 gmtime$69:
	; £temporary2315 = int_to_int month (Signed_Int -> Array)
	mov eax, [rbp + 116]
	mov rbx, 4294967295
	and rax, rbx

 gmtime$70:
	; £temporary2316 = £temporary2315 * Array_4#
	xor rdx, rdx
	mul qword [Array_4#]

 gmtime$71:
	; £temporary2317 = daysOfMonths + £temporary2316
	mov rsi, rbp
	add rsi, 68
	add rsi, rax

 gmtime$72:
	; £field2314 -> £temporary2317 = *£temporary2317

 gmtime$73:
	; £temporary2318 = int_to_int £field2314 -> £temporary2317 (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$74
	neg eax
	neg rax

 gmtime$74:
	; totalDays = totalDays - £temporary2318
	sub [rbp + 52], rax

 gmtime$75:
	; month = month + int4$1#
	inc dword [rbp + 116]

 gmtime$76:
	; goto 63
	jmp gmtime$63

 gmtime$77:
	; g_timeStruct$tm_mon = month
	mov eax, [rbp + 116]
	mov [@4750$g_timeStruct + 16], eax

 gmtime$78:
	; £temporary2323 = totalDays + int8$1#
	mov rax, [rbp + 52]
	inc rax

 gmtime$79:
	; £temporary2324 = int_to_int £temporary2323 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$80
	neg rax
	neg eax

 gmtime$80:
	; g_timeStruct$tm_mday = £temporary2324
	mov [@4750$g_timeStruct + 12], eax

 gmtime$81:
	; g_timeStruct$tm_isdst = int4$minus1#
	mov dword [@4750$g_timeStruct + 32], -1

 gmtime$82:
	; return staticaddress$@4750$g_timeStruct$0#
	mov rbx, @4750$g_timeStruct
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$83:
	; year = year + int4$1#
	inc dword [rbp + 32]

 gmtime$84:
	; £temporary2327 = int_to_int daysOfYear (Signed_Int -> Signed_Long_Int)
	mov eax, [rbp + 64]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$85
	neg eax
	neg rax

 gmtime$85:
	; totalDays = totalDays - £temporary2327
	sub [rbp + 52], rax

 gmtime$86:
	; goto 26
	jmp gmtime$26

 gmtime$87:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$88:
	; function end gmtime

 difftime:
	; £temporary2330 = time2 - time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

 difftime$1:
	; £temporary2331 = int_to_float £temporary2330 (Unsigned_Long_Int -> Double)
	mov [container8bytes#], rax
	fild dword [container8bytes#]

 difftime$2:
	; return £temporary2331
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 difftime$3:
	; function end difftime

 default_test:
	; empty

 default_test$1:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 default_test$2:
	; function end default_test

 asctime:
	; localeConvPtr = int8$0#
	mov qword [rbp + 32], 0

 asctime$1:
	; if localeConvPtr == int8$0# goto 5
	cmp qword [rbp + 32], 0
	je asctime$5

 asctime$2:
	; £field2333 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 32]

 asctime$3:
	; £temporary2334 = £field2333 -> localeConvPtr
	mov rax, [rsi + 8]

 asctime$4:
	; goto 6
	jmp asctime$6

 asctime$5:
	; £temporary2334 = int8$0#
	mov rax, 0

 asctime$6:
	; shortDayList = £temporary2334
	mov [rbp + 40], rax

 asctime$7:
	; if localeConvPtr == int8$0# goto 11
	cmp qword [rbp + 32], 0
	je asctime$11

 asctime$8:
	; £field2336 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 32]

 asctime$9:
	; £temporary2337 = £field2336 -> localeConvPtr
	mov rax, [rsi + 24]

 asctime$10:
	; goto 12
	jmp asctime$12

 asctime$11:
	; £temporary2337 = int8$0#
	mov rax, 0

 asctime$12:
	; shortMonthList = £temporary2337
	mov [rbp + 48], rax

 asctime$13:
	; if shortDayList == int8$0# goto 16
	cmp qword [rbp + 40], 0
	je asctime$16

 asctime$14:
	; £temporary2339 = shortDayList
	mov rax, [rbp + 40]

 asctime$15:
	; goto 17
	jmp asctime$17

 asctime$16:
	; £temporary2339 = g_defaultShortDayList
	mov rax, @4763$g_defaultShortDayList

 asctime$17:
	; shortDayList = £temporary2339
	mov [rbp + 40], rax

 asctime$18:
	; if shortMonthList == int8$0# goto 21
	cmp qword [rbp + 48], 0
	je asctime$21

 asctime$19:
	; £temporary2341 = shortMonthList
	mov rax, [rbp + 48]

 asctime$20:
	; goto 22
	jmp asctime$22

 asctime$21:
	; £temporary2341 = g_defaultShortMonthList
	mov rax, @4765$g_defaultShortMonthList

 asctime$22:
	; shortMonthList = £temporary2341
	mov [rbp + 48], rax

 asctime$23:
	; call header integral zero 0 stack zero 0

 asctime$24:
	; parameter g_timeString, offset 80
	mov qword [rbp + 80], @4762$g_timeString

 asctime$25:
	; parameter string_25s2025s20252i202502i3A2502i3A2502i202504i#, offset 88
	mov qword [rbp + 88], string_25s2025s20252i202502i3A2502i3A2502i202504i#

 asctime$26:
	; £field2342 -> tp = *tp
	mov rsi, [rbp + 24]

 asctime$27:
	; £temporary2344 = int_to_int £field2342 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 asctime$28:
	; £temporary2345 = £temporary2344 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

 asctime$29:
	; £temporary2346 = shortDayList + £temporary2345
	mov rsi, [rbp + 40]
	add rsi, rax

 asctime$30:
	; £field2343 -> £temporary2346 = *£temporary2346

 asctime$31:
	; parameter £field2343 -> £temporary2346, offset 96
	mov rax, [rsi]
	mov [rbp + 96], rax

 asctime$32:
	; £field2347 -> tp = *tp
	mov rsi, [rbp + 24]

 asctime$33:
	; £temporary2349 = int_to_int £field2347 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 asctime$34:
	; £temporary2350 = £temporary2349 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

 asctime$35:
	; £temporary2351 = shortMonthList + £temporary2350
	mov rsi, [rbp + 48]
	add rsi, rax

 asctime$36:
	; £field2348 -> £temporary2351 = *£temporary2351

 asctime$37:
	; parameter £field2348 -> £temporary2351, offset 104
	mov rax, [rsi]
	mov [rbp + 104], rax

 asctime$38:
	; £field2352 -> tp = *tp
	mov rsi, [rbp + 24]

 asctime$39:
	; parameter £field2352 -> tp, offset 112
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

 asctime$40:
	; £field2353 -> tp = *tp
	mov rsi, [rbp + 24]

 asctime$41:
	; parameter £field2353 -> tp, offset 116
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

 asctime$42:
	; £field2354 -> tp = *tp
	mov rsi, [rbp + 24]

 asctime$43:
	; parameter £field2354 -> tp, offset 120
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

 asctime$44:
	; £field2355 -> tp = *tp
	mov rsi, [rbp + 24]

 asctime$45:
	; parameter £field2355 -> tp, offset 124
	mov eax, [rsi]
	mov [rbp + 124], eax

 asctime$46:
	; £field2356 -> tp = *tp
	mov rsi, [rbp + 24]

 asctime$47:
	; £temporary2357 = £field2356 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

 asctime$48:
	; parameter £temporary2357, offset 128
	mov [rbp + 128], eax

 asctime$49:
	; call function noellipse-ellipse sprintf, extra 36
	mov qword [rbp + 56], asctime$50
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 36
	jmp sprintf

 asctime$50:
	; post call

 asctime$51:
	; return g_timeString
	mov rbx, @4762$g_timeString
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asctime$52:
	; function end asctime

 ctime:
	; call header integral zero 0 stack zero 0

 ctime$1:
	; call header integral zero 0 stack zero 0

 ctime$2:
	; parameter time, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 ctime$3:
	; call function noellipse-noellipse localtime
	mov qword [rbp + 32], ctime$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp localtime

 ctime$4:
	; post call

 ctime$5:
	; £temporary2359 = return_value

 ctime$6:
	; parameter £temporary2359, offset 56
	mov [rbp + 56], rbx

 ctime$7:
	; call function noellipse-noellipse asctime
	mov qword [rbp + 32], ctime$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp asctime

 ctime$8:
	; post call

 ctime$9:
	; £temporary2360 = return_value

 ctime$10:
	; return £temporary2360
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ctime$11:
	; function end ctime

 localtime:
	; call header integral zero 0 stack zero 0

 localtime$1:
	; parameter timePtr, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 localtime$2:
	; call function noellipse-noellipse gmtime
	mov qword [rbp + 32], localtime$3
	mov [rbp + 40], rbp
	add rbp, 32
	jmp gmtime

 localtime$3:
	; post call

 localtime$4:
	; £temporary2361 = return_value

 localtime$5:
	; tmPtr = £temporary2361
	mov [rbp + 32], rbx

 localtime$6:
	; call header integral zero 0 stack zero 0

 localtime$7:
	; call function noellipse-noellipse localeconv
	mov qword [rbp + 40], localtime$8
	mov [rbp + 48], rbp
	add rbp, 40
	jmp localeconv

 localtime$8:
	; post call

 localtime$9:
	; £temporary2362 = return_value

 localtime$10:
	; localeConvPtr = £temporary2362
	mov [rbp + 40], rbx

 localtime$11:
	; timeZone = int4$0#
	mov dword [rbp + 48], 0

 localtime$12:
	; if localeConvPtr == int8$0# goto 21
	cmp qword [rbp + 40], 0
	je localtime$21

 localtime$13:
	; £field2364 -> tmPtr = *tmPtr
	mov rsi, [rbp + 32]

 localtime$14:
	; if £field2364 -> tmPtr == int4$0# goto 18
	cmp dword [rsi + 32], 0
	je localtime$18

 localtime$15:
	; £field2365 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 40]

 localtime$16:
	; £temporary2368 = £field2365 -> localeConvPtr
	mov eax, [rsi]

 localtime$17:
	; goto 20
	jmp localtime$20

 localtime$18:
	; £field2366 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 40]

 localtime$19:
	; £temporary2368 = £field2366 -> localeConvPtr
	mov eax, [rsi + 4]

 localtime$20:
	; timeZone = £temporary2368
	mov [rbp + 48], eax

 localtime$21:
	; £field2369 -> timePtr = *timePtr
	mov rsi, [rbp + 24]

 localtime$22:
	; £temporary2370 = timeZone * int4$3600#
	mov eax, [rbp + 48]
	xor edx, edx
	imul dword [int4$3600#]

 localtime$23:
	; £temporary2371 = int_to_int £temporary2370 (Signed_Int -> Unsigned_Long_Int)
	mov rbx, 4294967295
	and rax, rbx

 localtime$24:
	; time = £field2369 -> timePtr + £temporary2371
	mov rbx, [rsi]
	add rbx, rax
	mov [rbp + 52], rbx

 localtime$25:
	; call header integral zero 0 stack zero 0

 localtime$26:
	; £temporary2373 = &time
	mov rsi, rbp
	add rsi, 52

 localtime$27:
	; parameter £temporary2373, offset 84
	mov [rbp + 84], rsi

 localtime$28:
	; call function noellipse-noellipse gmtime
	mov qword [rbp + 60], localtime$29
	mov [rbp + 68], rbp
	add rbp, 60
	jmp gmtime

 localtime$29:
	; post call

 localtime$30:
	; £temporary2374 = return_value

 localtime$31:
	; return £temporary2374
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 localtime$32:
	; function end localtime

 strftime:
	; call header integral zero 0 stack zero 0

 strftime$1:
	; call function noellipse-noellipse localeconv
	mov qword [rbp + 52], strftime$2
	mov [rbp + 60], rbp
	add rbp, 52
	jmp localeconv

 strftime$2:
	; post call

 strftime$3:
	; £temporary2376 = return_value

 strftime$4:
	; localeConvPtr = £temporary2376
	mov [rbp + 52], rbx

 strftime$5:
	; if localeConvPtr == int8$0# goto 9
	cmp qword [rbp + 52], 0
	je strftime$9

 strftime$6:
	; £field2378 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

 strftime$7:
	; £temporary2379 = £field2378 -> localeConvPtr
	mov rax, [rsi + 8]

 strftime$8:
	; goto 10
	jmp strftime$10

 strftime$9:
	; £temporary2379 = int8$0#
	mov rax, 0

 strftime$10:
	; shortDayList = £temporary2379
	mov [rbp + 60], rax

 strftime$11:
	; if localeConvPtr == int8$0# goto 15
	cmp qword [rbp + 52], 0
	je strftime$15

 strftime$12:
	; £field2381 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

 strftime$13:
	; £temporary2382 = £field2381 -> localeConvPtr
	mov rax, [rsi + 24]

 strftime$14:
	; goto 16
	jmp strftime$16

 strftime$15:
	; £temporary2382 = int8$0#
	mov rax, 0

 strftime$16:
	; shortMonthList = £temporary2382
	mov [rbp + 68], rax

 strftime$17:
	; if localeConvPtr == int8$0# goto 21
	cmp qword [rbp + 52], 0
	je strftime$21

 strftime$18:
	; £field2384 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

 strftime$19:
	; £temporary2385 = £field2384 -> localeConvPtr
	mov rax, [rsi + 16]

 strftime$20:
	; goto 22
	jmp strftime$22

 strftime$21:
	; £temporary2385 = int8$0#
	mov rax, 0

 strftime$22:
	; longDayList = £temporary2385
	mov [rbp + 76], rax

 strftime$23:
	; if localeConvPtr == int8$0# goto 27
	cmp qword [rbp + 52], 0
	je strftime$27

 strftime$24:
	; £field2387 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

 strftime$25:
	; £temporary2388 = £field2387 -> localeConvPtr
	mov rax, [rsi + 32]

 strftime$26:
	; goto 28
	jmp strftime$28

 strftime$27:
	; £temporary2388 = int8$0#
	mov rax, 0

 strftime$28:
	; longMonthList = £temporary2388
	mov [rbp + 84], rax

 strftime$29:
	; call header integral zero 0 stack zero 0

 strftime$30:
	; parameter s, offset 116
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

 strftime$31:
	; parameter string_#, offset 124
	mov qword [rbp + 124], string_#

 strftime$32:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 92], strftime$33
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strcpy

 strftime$33:
	; post call

 strftime$34:
	; if shortDayList == int8$0# goto 37
	cmp qword [rbp + 60], 0
	je strftime$37

 strftime$35:
	; £temporary2391 = shortDayList
	mov rax, [rbp + 60]

 strftime$36:
	; goto 38
	jmp strftime$38

 strftime$37:
	; £temporary2391 = g_defaultShortDayList
	mov rax, @4763$g_defaultShortDayList

 strftime$38:
	; shortDayList = £temporary2391
	mov [rbp + 60], rax

 strftime$39:
	; if longDayList == int8$0# goto 42
	cmp qword [rbp + 76], 0
	je strftime$42

 strftime$40:
	; £temporary2393 = longDayList
	mov rax, [rbp + 76]

 strftime$41:
	; goto 43
	jmp strftime$43

 strftime$42:
	; £temporary2393 = g_defaultLongDayList
	mov rax, @4764$g_defaultLongDayList

 strftime$43:
	; longDayList = £temporary2393
	mov [rbp + 76], rax

 strftime$44:
	; if shortMonthList == int8$0# goto 47
	cmp qword [rbp + 68], 0
	je strftime$47

 strftime$45:
	; £temporary2395 = shortMonthList
	mov rax, [rbp + 68]

 strftime$46:
	; goto 48
	jmp strftime$48

 strftime$47:
	; £temporary2395 = g_defaultShortMonthList
	mov rax, @4765$g_defaultShortMonthList

 strftime$48:
	; shortMonthList = £temporary2395
	mov [rbp + 68], rax

 strftime$49:
	; if longMonthList == int8$0# goto 52
	cmp qword [rbp + 84], 0
	je strftime$52

 strftime$50:
	; £temporary2397 = longMonthList
	mov rax, [rbp + 84]

 strftime$51:
	; goto 53
	jmp strftime$53

 strftime$52:
	; £temporary2397 = g_defaultLongMonthList
	mov rax, @4766$g_defaultLongMonthList

 strftime$53:
	; longMonthList = £temporary2397
	mov [rbp + 84], rax

 strftime$54:
	; £field2398 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$55:
	; £temporary2399 = £field2398 -> tp - int4$69#
	mov eax, [rsi + 20]
	sub eax, 69

 strftime$56:
	; leapDays = £temporary2399 / int4$4#
	xor edx, edx
	idiv dword [int4$4#]
	mov [rbp + 92], eax

 strftime$57:
	; £field2401 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$58:
	; £temporary2402 = £field2401 -> tp - int4$70#
	mov eax, [rsi + 20]
	sub eax, 70

 strftime$59:
	; £temporary2403 = £temporary2402 * int4$365#
	xor edx, edx
	imul dword [int4$365#]

 strftime$60:
	; £temporary2404 = £temporary2403 + leapDays
	add eax, [rbp + 92]

 strftime$61:
	; £field2405 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$62:
	; £temporary2406 = £temporary2404 + £field2405 -> tp
	add eax, [rsi + 28]

 strftime$63:
	; £temporary2407 = int_to_int £temporary2406 (Signed_Int -> Signed_Long_Int)
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge strftime$64
	neg eax
	neg rax

 strftime$64:
	; totalDays = £temporary2407
	mov [rbp + 96], rax

 strftime$65:
	; call header integral zero 0 stack zero 0

 strftime$66:
	; parameter string_leap20days2025i2C20total20days2025lu0A#, offset 128
	mov qword [rbp + 128], string_leap20days2025i2C20total20days2025lu0A#

 strftime$67:
	; parameter leapDays, offset 136
	mov eax, [rbp + 92]
	mov [rbp + 136], eax

 strftime$68:
	; parameter totalDays, offset 140
	mov rax, [rbp + 96]
	mov [rbp + 140], rax

 strftime$69:
	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 104], strftime$70
	mov [rbp + 112], rbp
	add rbp, 104
	mov rdi, rbp
	add rdi, 12
	jmp printf

 strftime$70:
	; post call

 strftime$71:
	; if totalDays >= int8$3# goto 76
	cmp qword [rbp + 96], 3
	jge strftime$76

 strftime$72:
	; £temporary2410 = totalDays + int8$4#
	mov rax, [rbp + 96]
	add rax, 4

 strftime$73:
	; £temporary2411 = int_to_int £temporary2410 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge strftime$74
	neg rax
	neg eax

 strftime$74:
	; yearDaySunday = £temporary2411
	mov [rbp + 104], eax

 strftime$75:
	; goto 80
	jmp strftime$80

 strftime$76:
	; £temporary2412 = totalDays - int8$3#
	mov rax, [rbp + 96]
	sub rax, 3

 strftime$77:
	; £temporary2413 = £temporary2412 % int8$7#
	xor rdx, rdx
	idiv qword [int8$7#]

 strftime$78:
	; £temporary2414 = int_to_int £temporary2413 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge strftime$79
	neg rdx
	neg edx

 strftime$79:
	; yearDaySunday = £temporary2414
	mov [rbp + 104], edx

 strftime$80:
	; call header integral zero 0 stack zero 0

 strftime$81:
	; parameter string_yearDaySunday2025i0A#, offset 136
	mov qword [rbp + 136], string_yearDaySunday2025i0A#

 strftime$82:
	; parameter yearDaySunday, offset 144
	mov eax, [rbp + 104]
	mov [rbp + 144], eax

 strftime$83:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 112], strftime$84
	mov [rbp + 120], rbp
	add rbp, 112
	mov rdi, rbp
	add rdi, 4
	jmp printf

 strftime$84:
	; post call

 strftime$85:
	; if totalDays >= int8$4# goto 90
	cmp qword [rbp + 96], 4
	jge strftime$90

 strftime$86:
	; £temporary2417 = totalDays + int8$3#
	mov rax, [rbp + 96]
	add rax, 3

 strftime$87:
	; £temporary2418 = int_to_int £temporary2417 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge strftime$88
	neg rax
	neg eax

 strftime$88:
	; yearDayMonday = £temporary2418
	mov [rbp + 108], eax

 strftime$89:
	; goto 94
	jmp strftime$94

 strftime$90:
	; £temporary2419 = totalDays - int8$4#
	mov rax, [rbp + 96]
	sub rax, 4

 strftime$91:
	; £temporary2420 = £temporary2419 % int8$7#
	xor rdx, rdx
	idiv qword [int8$7#]

 strftime$92:
	; £temporary2421 = int_to_int £temporary2420 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge strftime$93
	neg rdx
	neg edx

 strftime$93:
	; yearDayMonday = £temporary2421
	mov [rbp + 108], edx

 strftime$94:
	; call header integral zero 0 stack zero 0

 strftime$95:
	; parameter string_yearDayMonday2025i0A#, offset 136
	mov qword [rbp + 136], string_yearDayMonday2025i0A#

 strftime$96:
	; parameter yearDayMonday, offset 144
	mov eax, [rbp + 108]
	mov [rbp + 144], eax

 strftime$97:
	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 112], strftime$98
	mov [rbp + 120], rbp
	add rbp, 112
	mov rdi, rbp
	add rdi, 4
	jmp printf

 strftime$98:
	; post call

 strftime$99:
	; index = int4$0#
	mov dword [rbp + 112], 0

 strftime$100:
	; £temporary2424 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$101:
	; £temporary2426 = fmt + £temporary2424
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$102:
	; £field2423 -> £temporary2426 = *£temporary2426

 strftime$103:
	; if £field2423 -> £temporary2426 == int1$0# goto 374
	cmp byte [rsi], 0
	je strftime$374

 strftime$104:
	; £temporary2430 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$105:
	; £temporary2432 = fmt + £temporary2430
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$106:
	; £field2429 -> £temporary2432 = *£temporary2432

 strftime$107:
	; if £field2429 -> £temporary2432 != int1$37# goto 348
	cmp byte [rsi], 37
	jne strftime$348

 strftime$108:
	; £temporary2434 = index + int4$1#
	mov eax, [rbp + 112]
	inc eax

 strftime$109:
	; £temporary2436 = int_to_int £temporary2434 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strftime$110:
	; £temporary2438 = fmt + £temporary2436
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$111:
	; £field2435 -> £temporary2438 = *£temporary2438

 strftime$112:
	; case £field2435 -> £temporary2438 == int1$97# goto 136
	mov al, [rsi]
	cmp al, 97
	je strftime$136

 strftime$113:
	; case £field2435 -> £temporary2438 == int1$65# goto 147
	cmp al, 65
	je strftime$147

 strftime$114:
	; case £field2435 -> £temporary2438 == int1$98# goto 158
	cmp al, 98
	je strftime$158

 strftime$115:
	; case £field2435 -> £temporary2438 == int1$66# goto 169
	cmp al, 66
	je strftime$169

 strftime$116:
	; case £field2435 -> £temporary2438 == int1$99# goto 180
	cmp al, 99
	je strftime$180

 strftime$117:
	; case £field2435 -> £temporary2438 == int1$100# goto 200
	cmp al, 100
	je strftime$200

 strftime$118:
	; case £field2435 -> £temporary2438 == int1$72# goto 208
	cmp al, 72
	je strftime$208

 strftime$119:
	; case £field2435 -> £temporary2438 == int1$73# goto 216
	cmp al, 73
	je strftime$216

 strftime$120:
	; case £field2435 -> £temporary2438 == int1$106# goto 225
	cmp al, 106
	je strftime$225

 strftime$121:
	; case £field2435 -> £temporary2438 == int1$109# goto 233
	cmp al, 109
	je strftime$233

 strftime$122:
	; case £field2435 -> £temporary2438 == int1$77# goto 242
	cmp al, 77
	je strftime$242

 strftime$123:
	; case £field2435 -> £temporary2438 == int1$112# goto 250
	cmp al, 112
	je strftime$250

 strftime$124:
	; case £field2435 -> £temporary2438 == int1$83# goto 262
	cmp al, 83
	je strftime$262

 strftime$125:
	; case £field2435 -> £temporary2438 == int1$85# goto 270
	cmp al, 85
	je strftime$270

 strftime$126:
	; case £field2435 -> £temporary2438 == int1$119# goto 277
	cmp al, 119
	je strftime$277

 strftime$127:
	; case £field2435 -> £temporary2438 == int1$87# goto 285
	cmp al, 87
	je strftime$285

 strftime$128:
	; case £field2435 -> £temporary2438 == int1$120# goto 292
	cmp al, 120
	je strftime$292

 strftime$129:
	; case £field2435 -> £temporary2438 == int1$88# goto 306
	cmp al, 88
	je strftime$306

 strftime$130:
	; case £field2435 -> £temporary2438 == int1$121# goto 318
	cmp al, 121
	je strftime$318

 strftime$131:
	; case £field2435 -> £temporary2438 == int1$89# goto 327
	cmp al, 89
	je strftime$327

 strftime$132:
	; case £field2435 -> £temporary2438 == int1$90# goto 336
	cmp al, 90
	je strftime$336

 strftime$133:
	; case £field2435 -> £temporary2438 == int1$37# goto 342
	cmp al, 37
	je strftime$342

 strftime$134:
	; case end £field2435 -> £temporary2438

 strftime$135:
	; goto 355
	jmp strftime$355

 strftime$136:
	; call header integral zero 0 stack zero 0

 strftime$137:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$138:
	; £field2439 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$139:
	; £temporary2441 = int_to_int £field2439 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$140:
	; £temporary2442 = £temporary2441 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$141:
	; £temporary2443 = shortDayList + £temporary2442
	mov rsi, [rbp + 60]
	add rsi, rax

 strftime$142:
	; £field2440 -> £temporary2443 = *£temporary2443

 strftime$143:
	; parameter £field2440 -> £temporary2443, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$144:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$145
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$145:
	; post call

 strftime$146:
	; goto 355
	jmp strftime$355

 strftime$147:
	; call header integral zero 0 stack zero 0

 strftime$148:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$149:
	; £field2445 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$150:
	; £temporary2447 = int_to_int £field2445 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$151:
	; £temporary2448 = £temporary2447 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$152:
	; £temporary2449 = longDayList + £temporary2448
	mov rsi, [rbp + 76]
	add rsi, rax

 strftime$153:
	; £field2446 -> £temporary2449 = *£temporary2449

 strftime$154:
	; parameter £field2446 -> £temporary2449, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$155:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$156
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$156:
	; post call

 strftime$157:
	; goto 355
	jmp strftime$355

 strftime$158:
	; call header integral zero 0 stack zero 0

 strftime$159:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$160:
	; £field2451 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$161:
	; £temporary2453 = int_to_int £field2451 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$162:
	; £temporary2454 = £temporary2453 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$163:
	; £temporary2455 = shortMonthList + £temporary2454
	mov rsi, [rbp + 68]
	add rsi, rax

 strftime$164:
	; £field2452 -> £temporary2455 = *£temporary2455

 strftime$165:
	; parameter £field2452 -> £temporary2455, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$166:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$167
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$167:
	; post call

 strftime$168:
	; goto 355
	jmp strftime$355

 strftime$169:
	; call header integral zero 0 stack zero 0

 strftime$170:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$171:
	; £field2457 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$172:
	; £temporary2459 = int_to_int £field2457 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$173:
	; £temporary2460 = £temporary2459 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$174:
	; £temporary2461 = longMonthList + £temporary2460
	mov rsi, [rbp + 84]
	add rsi, rax

 strftime$175:
	; £field2458 -> £temporary2461 = *£temporary2461

 strftime$176:
	; parameter £field2458 -> £temporary2461, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$177:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$178
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$178:
	; post call

 strftime$179:
	; goto 355
	jmp strftime$355

 strftime$180:
	; call header integral zero 0 stack zero 0

 strftime$181:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$182:
	; parameter string_2504d2D2502d2D2502d202502d3A2502d3A2502d#, offset 168
	mov qword [rbp + 168], string_2504d2D2502d2D2502d202502d3A2502d3A2502d#

 strftime$183:
	; £field2463 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$184:
	; £temporary2464 = £field2463 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$185:
	; parameter £temporary2464, offset 176
	mov [rbp + 176], eax

 strftime$186:
	; £field2465 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$187:
	; £temporary2466 = £field2465 -> tp + int4$1#
	mov eax, [rsi + 16]
	inc eax

 strftime$188:
	; parameter £temporary2466, offset 180
	mov [rbp + 180], eax

 strftime$189:
	; £field2467 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$190:
	; parameter £field2467 -> tp, offset 184
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

 strftime$191:
	; £field2468 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$192:
	; parameter £field2468 -> tp, offset 188
	mov eax, [rsi + 8]
	mov [rbp + 188], eax

 strftime$193:
	; £field2469 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$194:
	; parameter £field2469 -> tp, offset 192
	mov eax, [rsi + 4]
	mov [rbp + 192], eax

 strftime$195:
	; £field2470 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$196:
	; parameter £field2470 -> tp, offset 196
	mov eax, [rsi]
	mov [rbp + 196], eax

 strftime$197:
	; call function noellipse-ellipse sprintf, extra 24
	mov qword [rbp + 136], strftime$198
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 24
	jmp sprintf

 strftime$198:
	; post call

 strftime$199:
	; goto 355
	jmp strftime$355

 strftime$200:
	; call header integral zero 0 stack zero 0

 strftime$201:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$202:
	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

 strftime$203:
	; £field2472 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$204:
	; parameter £field2472 -> tp, offset 176
	mov eax, [rsi + 12]
	mov [rbp + 176], eax

 strftime$205:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$206
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$206:
	; post call

 strftime$207:
	; goto 355
	jmp strftime$355

 strftime$208:
	; call header integral zero 0 stack zero 0

 strftime$209:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$210:
	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

 strftime$211:
	; £field2474 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$212:
	; parameter £field2474 -> tp, offset 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$213:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$214
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$214:
	; post call

 strftime$215:
	; goto 355
	jmp strftime$355

 strftime$216:
	; call header integral zero 0 stack zero 0

 strftime$217:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$218:
	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

 strftime$219:
	; £field2476 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$220:
	; £temporary2477 = £field2476 -> tp % int4$12#
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [int4$12#]

 strftime$221:
	; parameter £temporary2477, offset 176
	mov [rbp + 176], edx

 strftime$222:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$223
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$223:
	; post call

 strftime$224:
	; goto 355
	jmp strftime$355

 strftime$225:
	; call header integral zero 0 stack zero 0

 strftime$226:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$227:
	; parameter string_2503d#, offset 168
	mov qword [rbp + 168], string_2503d#

 strftime$228:
	; £field2479 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$229:
	; parameter £field2479 -> tp, offset 176
	mov eax, [rsi + 28]
	mov [rbp + 176], eax

 strftime$230:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$231
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$231:
	; post call

 strftime$232:
	; goto 355
	jmp strftime$355

 strftime$233:
	; call header integral zero 0 stack zero 0

 strftime$234:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$235:
	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

 strftime$236:
	; £field2481 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$237:
	; £temporary2482 = £field2481 -> tp + int4$1#
	mov eax, [rsi + 16]
	inc eax

 strftime$238:
	; parameter £temporary2482, offset 176
	mov [rbp + 176], eax

 strftime$239:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$240
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$240:
	; post call

 strftime$241:
	; goto 355
	jmp strftime$355

 strftime$242:
	; call header integral zero 0 stack zero 0

 strftime$243:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$244:
	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

 strftime$245:
	; £field2484 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$246:
	; parameter £field2484 -> tp, offset 176
	mov eax, [rsi + 4]
	mov [rbp + 176], eax

 strftime$247:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$248
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$248:
	; post call

 strftime$249:
	; goto 355
	jmp strftime$355

 strftime$250:
	; call header integral zero 0 stack zero 0

 strftime$251:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$252:
	; parameter string_25s#, offset 168
	mov qword [rbp + 168], string_25s#

 strftime$253:
	; £field2486 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$254:
	; if £field2486 -> tp >= int4$12# goto 257
	cmp dword [rsi + 8], 12
	jge strftime$257

 strftime$255:
	; £temporary2488 = string_AM#
	mov rax, string_AM#

 strftime$256:
	; goto 258
	jmp strftime$258

 strftime$257:
	; £temporary2488 = string_PM#
	mov rax, string_PM#

 strftime$258:
	; parameter £temporary2488, offset 176
	mov [rbp + 176], rax

 strftime$259:
	; call function noellipse-ellipse sprintf, extra 8
	mov qword [rbp + 136], strftime$260
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 8
	jmp sprintf

 strftime$260:
	; post call

 strftime$261:
	; goto 355
	jmp strftime$355

 strftime$262:
	; call header integral zero 0 stack zero 0

 strftime$263:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$264:
	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

 strftime$265:
	; £field2490 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$266:
	; parameter £field2490 -> tp, offset 176
	mov eax, [rsi]
	mov [rbp + 176], eax

 strftime$267:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$268
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$268:
	; post call

 strftime$269:
	; goto 355
	jmp strftime$355

 strftime$270:
	; call header integral zero 0 stack zero 0

 strftime$271:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$272:
	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

 strftime$273:
	; parameter yearDaySunday, offset 176
	mov eax, [rbp + 104]
	mov [rbp + 176], eax

 strftime$274:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$275
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$275:
	; post call

 strftime$276:
	; goto 355
	jmp strftime$355

 strftime$277:
	; call header integral zero 0 stack zero 0

 strftime$278:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$279:
	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

 strftime$280:
	; £field2493 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$281:
	; parameter £field2493 -> tp, offset 176
	mov eax, [rsi + 24]
	mov [rbp + 176], eax

 strftime$282:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$283
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$283:
	; post call

 strftime$284:
	; goto 355
	jmp strftime$355

 strftime$285:
	; call header integral zero 0 stack zero 0

 strftime$286:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$287:
	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

 strftime$288:
	; parameter yearDayMonday, offset 176
	mov eax, [rbp + 108]
	mov [rbp + 176], eax

 strftime$289:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$290
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$290:
	; post call

 strftime$291:
	; goto 355
	jmp strftime$355

 strftime$292:
	; call header integral zero 0 stack zero 0

 strftime$293:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$294:
	; parameter string_2504d2D2502d2D2502d#, offset 168
	mov qword [rbp + 168], string_2504d2D2502d2D2502d#

 strftime$295:
	; £field2496 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$296:
	; £temporary2497 = £field2496 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$297:
	; parameter £temporary2497, offset 176
	mov [rbp + 176], eax

 strftime$298:
	; £field2498 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$299:
	; £temporary2499 = £field2498 -> tp + int4$1#
	mov eax, [rsi + 16]
	inc eax

 strftime$300:
	; parameter £temporary2499, offset 180
	mov [rbp + 180], eax

 strftime$301:
	; £field2500 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$302:
	; parameter £field2500 -> tp, offset 184
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

 strftime$303:
	; call function noellipse-ellipse sprintf, extra 12
	mov qword [rbp + 136], strftime$304
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$304:
	; post call

 strftime$305:
	; goto 355
	jmp strftime$355

 strftime$306:
	; call header integral zero 0 stack zero 0

 strftime$307:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$308:
	; parameter string_2502d3A2502d3A2502d#, offset 168
	mov qword [rbp + 168], string_2502d3A2502d3A2502d#

 strftime$309:
	; £field2502 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$310:
	; parameter £field2502 -> tp, offset 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$311:
	; £field2503 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$312:
	; parameter £field2503 -> tp, offset 180
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$313:
	; £field2504 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$314:
	; parameter £field2504 -> tp, offset 184
	mov eax, [rsi]
	mov [rbp + 184], eax

 strftime$315:
	; call function noellipse-ellipse sprintf, extra 12
	mov qword [rbp + 136], strftime$316
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$316:
	; post call

 strftime$317:
	; goto 355
	jmp strftime$355

 strftime$318:
	; call header integral zero 0 stack zero 0

 strftime$319:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$320:
	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

 strftime$321:
	; £field2506 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$322:
	; £temporary2507 = £field2506 -> tp % int4$100#
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [int4$100#]

 strftime$323:
	; parameter £temporary2507, offset 176
	mov [rbp + 176], edx

 strftime$324:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$325
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$325:
	; post call

 strftime$326:
	; goto 355
	jmp strftime$355

 strftime$327:
	; call header integral zero 0 stack zero 0

 strftime$328:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$329:
	; parameter string_2504d#, offset 168
	mov qword [rbp + 168], string_2504d#

 strftime$330:
	; £field2509 -> tp = *tp
	mov rsi, [rbp + 44]

 strftime$331:
	; £temporary2510 = £field2509 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$332:
	; parameter £temporary2510, offset 176
	mov [rbp + 176], eax

 strftime$333:
	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$334
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$334:
	; post call

 strftime$335:
	; goto 355
	jmp strftime$355

 strftime$336:
	; call header integral zero 0 stack zero 0

 strftime$337:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$338:
	; parameter string_#, offset 168
	mov qword [rbp + 168], string_#

 strftime$339:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$340
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$340:
	; post call

 strftime$341:
	; goto 355
	jmp strftime$355

 strftime$342:
	; call header integral zero 0 stack zero 0

 strftime$343:
	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$344:
	; parameter string_25#, offset 168
	mov qword [rbp + 168], string_25#

 strftime$345:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$346
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$346:
	; post call

 strftime$347:
	; goto 355
	jmp strftime$355

 strftime$348:
	; £field2514 -> add = *add
	mov rsi, rbp
	add rsi, 116

 strftime$349:
	; £temporary2516 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$350:
	; £temporary2518 = fmt + £temporary2516
	mov rdi, [rbp + 36]
	add rdi, rax

 strftime$351:
	; £field2515 -> £temporary2518 = *£temporary2518

 strftime$352:
	; £field2514 -> add = £field2515 -> £temporary2518
	mov al, [rdi]
	mov [rsi], al

 strftime$353:
	; £field2519 -> add = *add
	mov rsi, rbp
	add rsi, 116

 strftime$354:
	; £field2519 -> add = int1$0#
	mov byte [rsi + 1], 0

 strftime$355:
	; call header integral zero 0 stack zero 0

 strftime$356:
	; parameter s, offset 160
	mov rax, [rbp + 24]
	mov [rbp + 160], rax

 strftime$357:
	; call function noellipse-noellipse strlen
	mov qword [rbp + 136], strftime$358
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strlen

 strftime$358:
	; post call

 strftime$359:
	; £temporary2520 = return_value

 strftime$360:
	; call header integral no zero 1 stack zero 0
	mov [rbp + 136], ebx

 strftime$361:
	; parameter add, offset 160
	mov [rbp + 164], rbp
	add qword [rbp + 164], 116

 strftime$362:
	; call function noellipse-noellipse strlen
	mov qword [rbp + 140], strftime$363
	mov [rbp + 148], rbp
	add rbp, 140
	jmp strlen

 strftime$363:
	; post call
	mov ebx, [rbp + 136]
	mov eax, ebx

 strftime$364:
	; £temporary2521 = return_value

 strftime$365:
	; £temporary2522 = £temporary2520 + £temporary2521
	add eax, ebx

 strftime$366:
	; if £temporary2522 >= smax goto 374
	cmp eax, [rbp + 32]
	jge strftime$374

 strftime$367:
	; call header integral zero 0 stack zero 0

 strftime$368:
	; parameter s, offset 160
	mov rax, [rbp + 24]
	mov [rbp + 160], rax

 strftime$369:
	; parameter add, offset 168
	mov [rbp + 168], rbp
	add qword [rbp + 168], 116

 strftime$370:
	; call function noellipse-noellipse strcat
	mov qword [rbp + 136], strftime$371
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcat

 strftime$371:
	; post call

 strftime$372:
	; index = index + int4$1#
	inc dword [rbp + 112]

 strftime$373:
	; goto 100
	jmp strftime$100

 strftime$374:
	; call header integral zero 0 stack zero 0

 strftime$375:
	; parameter s, offset 140
	mov rax, [rbp + 24]
	mov [rbp + 140], rax

 strftime$376:
	; call function noellipse-noellipse strlen
	mov qword [rbp + 116], strftime$377
	mov [rbp + 124], rbp
	add rbp, 116
	jmp strlen

 strftime$377:
	; post call

 strftime$378:
	; £temporary2525 = return_value

 strftime$379:
	; return £temporary2525
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strftime$380:
	; function end strftime
section .data

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

@4750$g_timeStruct:
	; initializer zero 36
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

Array_4#:
	; initializer Array
	dq 4

container8bytes#:
	; initializer zero 8
	times 8 db 0

@4762$g_timeString:
	; initializer zero 256
	times 256 db 0

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

@4763$g_defaultShortDayList:
	; initializer Pointer
	dq string_Sun#
	; initializer Pointer
	dq string_Mon#
	; initializer Pointer
	dq string_Tue#
	; initializer Pointer
	dq string_Wed#
	; initializer Pointer
	dq string_Thu#
	; initializer Pointer
	dq string_Fri#
	; initializer Pointer
	dq string_Sat#

string_Sunday#:
	; initializer String
	db "Sunday", 0

string_Monday#:
	; initializer String
	db "Monday", 0

string_Tuesday#:
	; initializer String
	db "Tuesday", 0

string_Wednesday#:
	; initializer String
	db "Wednesday", 0

string_Thursday#:
	; initializer String
	db "Thursday", 0

string_Friday#:
	; initializer String
	db "Friday", 0

string_Saturday#:
	; initializer String
	db "Saturday", 0

@4764$g_defaultLongDayList:
	; initializer Pointer
	dq string_Sunday#
	; initializer Pointer
	dq string_Monday#
	; initializer Pointer
	dq string_Tuesday#
	; initializer Pointer
	dq string_Wednesday#
	; initializer Pointer
	dq string_Thursday#
	; initializer Pointer
	dq string_Friday#
	; initializer Pointer
	dq string_Saturday#

string_Jan#:
	; initializer String
	db "Jan", 0

string_Feb#:
	; initializer String
	db "Feb", 0

string_Mar#:
	; initializer String
	db "Mar", 0

string_Apr#:
	; initializer String
	db "Apr", 0

string_May#:
	; initializer String
	db "May", 0

string_Jun#:
	; initializer String
	db "Jun", 0

string_Jul#:
	; initializer String
	db "Jul", 0

string_Aug#:
	; initializer String
	db "Aug", 0

string_Sep#:
	; initializer String
	db "Sep", 0

string_Oct#:
	; initializer String
	db "Oct", 0

string_Nov#:
	; initializer String
	db "Nov", 0

string_Dec#:
	; initializer String
	db "Dec", 0

@4765$g_defaultShortMonthList:
	; initializer Pointer
	dq string_Jan#
	; initializer Pointer
	dq string_Feb#
	; initializer Pointer
	dq string_Mar#
	; initializer Pointer
	dq string_Apr#
	; initializer Pointer
	dq string_May#
	; initializer Pointer
	dq string_Jun#
	; initializer Pointer
	dq string_Jul#
	; initializer Pointer
	dq string_Aug#
	; initializer Pointer
	dq string_Sep#
	; initializer Pointer
	dq string_Oct#
	; initializer Pointer
	dq string_Nov#
	; initializer Pointer
	dq string_Dec#

string_January#:
	; initializer String
	db "January", 0

string_February#:
	; initializer String
	db "February", 0

string_March#:
	; initializer String
	db "March", 0

string_April#:
	; initializer String
	db "April", 0

string_June#:
	; initializer String
	db "June", 0

string_July#:
	; initializer String
	db "July", 0

string_August#:
	; initializer String
	db "August", 0

string_September#:
	; initializer String
	db "September", 0

string_October#:
	; initializer String
	db "October", 0

string_November#:
	; initializer String
	db "November", 0

string_December#:
	; initializer String
	db "December", 0

@4766$g_defaultLongMonthList:
	; initializer Pointer
	dq string_January#
	; initializer Pointer
	dq string_February#
	; initializer Pointer
	dq string_March#
	; initializer Pointer
	dq string_April#
	; initializer Pointer
	dq string_May#
	; initializer Pointer
	dq string_June#
	; initializer Pointer
	dq string_July#
	; initializer Pointer
	dq string_August#
	; initializer Pointer
	dq string_September#
	; initializer Pointer
	dq string_October#
	; initializer Pointer
	dq string_November#
	; initializer Pointer
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
