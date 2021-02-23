	global clock
	global time
	global mktime
	global gmtime
	global localtime
	global difftime
	global asctime
	global ctime
	global getWeekNumber
	global strftime

	extern localeconv
	extern sprintf
	extern strcpy
	extern strlen
	extern strcat
	extern $StackTop


section .text

 clock:
	; SetReturnValue

 clock$1:
	; Return integral8$minus1#
	mov rbx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 clock$2:
	; FunctionEnd clock

section .data

@6463integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@6465integral4$100#:
	; Initializer SignedInt 100
	dd 100

section .data

@6467integral4$400#:
	; Initializer SignedInt 400
	dd 400

section .text

 @6462$isLeapYear:
	; Modulo £temporary2459 year integral4$4#
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@6463integral4$4#]

 @6462$isLeapYear$1:
	; NotEqual 4 £temporary2459 integral4$0#
	cmp edx, 0
	jne @6462$isLeapYear$4

 @6462$isLeapYear$2:
	; Modulo £temporary2461 year integral4$100#
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@6465integral4$100#]

 @6462$isLeapYear$3:
	; NotEqual 6 £temporary2461 integral4$0#
	cmp edx, 0
	jne @6462$isLeapYear$6

 @6462$isLeapYear$4:
	; Modulo £temporary2464 year integral4$400#
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@6467integral4$400#]

 @6462$isLeapYear$5:
	; NotEqual 8 £temporary2464 integral4$0#
	cmp edx, 0
	jne @6462$isLeapYear$8

 @6462$isLeapYear$6:
	; Assign £temporary2467 integral4$1#
	mov ebx, 1

 @6462$isLeapYear$7:
	; Jump 9
	jmp @6462$isLeapYear$9

 @6462$isLeapYear$8:
	; Assign £temporary2467 integral4$0#
	mov ebx, 0

 @6462$isLeapYear$9:
	; SetReturnValue

 @6462$isLeapYear$10:
	; Return £temporary2467
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @6462$isLeapYear$11:
	; FunctionEnd isLeapYear

section .text

 time:
	; AssignRegister rax integral8$201#
	mov rax, 201

 time$1:
	; Address £temporary2470 time
	mov rdi, rbp
	add rdi, 32

 time$2:
	; IntegralToIntegral £temporary2471 £temporary2470

 time$3:
	; AssignRegister rdi £temporary2471

 time$4:
	; SysCall
	syscall

 time$5:
	; Equal 8 timePtr integral8$0#
	cmp qword [rbp + 24], 0
	je time$8

 time$6:
	; Dereference £temporary2473 timePtr 0
	mov rsi, [rbp + 24]

 time$7:
	; Assign £temporary2473 time
	mov rax, [rbp + 32]
	mov [rsi], rax

 time$8:
	; SetReturnValue

 time$9:
	; Return time
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 time$10:
	; FunctionEnd time

section .data

@6480integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@6482integral4$365#:
	; Initializer SignedInt 365
	dd 365

section .data

@6485integral8$86400#:
	; Initializer SignedLongInt 86400
	dq 86400

section .data

@6486integral8$3600#:
	; Initializer SignedLongInt 3600
	dq 3600

section .data

@6487integral8$60#:
	; Initializer SignedLongInt 60
	dq 60

section .text

 mktime:
	; Equal 28 tp integral8$0#
	cmp qword [rbp + 24], 0
	je mktime$28

 mktime$1:
	; Dereference £temporary2476 tp 0
	mov rsi, [rbp + 24]

 mktime$2:
	; Subtract £temporary2477 £temporary2476 integral4$69#
	mov eax, [rsi + 20]
	sub eax, 69

 mktime$3:
	; Divide £temporary2478 £temporary2477 integral4$4#
	xor edx, edx
	idiv dword [@6480integral4$4#]

 mktime$4:
	; IntegralToIntegral £temporary2479 £temporary2478
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

 mktime$5:
	; Assign leapDays £temporary2479
	mov [rbp + 32], rax

 mktime$6:
	; Dereference £temporary2480 tp 0
	mov rsi, [rbp + 24]

 mktime$7:
	; Subtract £temporary2481 £temporary2480 integral4$70#
	mov eax, [rsi + 20]
	sub eax, 70

 mktime$8:
	; Multiply £temporary2482 £temporary2481 integral4$365#
	xor edx, edx
	imul dword [@6482integral4$365#]

 mktime$9:
	; IntegralToIntegral £temporary2483 £temporary2482
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

 mktime$10:
	; Add £temporary2484 £temporary2483 leapDays
	add rax, [rbp + 32]

 mktime$11:
	; Dereference £temporary2485 tp 0
	mov rsi, [rbp + 24]

 mktime$12:
	; IntegralToIntegral £temporary2486 £temporary2485
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

 mktime$13:
	; Add totalDays £temporary2484 £temporary2486
	add rax, rbx
	mov [rbp + 40], rax

 mktime$14:
	; Multiply £temporary2488 totalDays integral8$86400#
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [@6485integral8$86400#]
	mov rbx, rax

 mktime$15:
	; Dereference £temporary2489 tp 0
	mov rsi, [rbp + 24]

 mktime$16:
	; IntegralToIntegral £temporary2490 £temporary2489
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

 mktime$17:
	; Multiply £temporary2491 £temporary2490 integral8$3600#
	xor rdx, rdx
	imul qword [@6486integral8$3600#]

 mktime$18:
	; Add £temporary2492 £temporary2488 £temporary2491
	add rbx, rax

 mktime$19:
	; Dereference £temporary2493 tp 0
	mov rsi, [rbp + 24]

 mktime$20:
	; IntegralToIntegral £temporary2494 £temporary2493
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

 mktime$21:
	; Multiply £temporary2495 £temporary2494 integral8$60#
	xor rdx, rdx
	imul qword [@6487integral8$60#]

 mktime$22:
	; Add £temporary2496 £temporary2492 £temporary2495
	add rbx, rax

 mktime$23:
	; Dereference £temporary2497 tp 0
	mov rsi, [rbp + 24]

 mktime$24:
	; IntegralToIntegral £temporary2498 £temporary2497
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

 mktime$25:
	; Add £temporary2499 £temporary2496 £temporary2498
	add rbx, rax

 mktime$26:
	; SetReturnValue

 mktime$27:
	; Return £temporary2499
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mktime$28:
	; SetReturnValue

 mktime$29:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mktime$30:
	; FunctionEnd mktime

section .data

@6490$g_timeStruct:
	; InitializerZero 36
	times 36 db 0

section .data

@6495integral8$86400#:
	; Initializer SignedLongInt 86400
	dq 86400

section .data

@6498integral8$3600#:
	; Initializer SignedLongInt 3600
	dq 3600

section .data

@6501integral8$3600#:
	; Initializer SignedLongInt 3600
	dq 3600

section .data

@6503integral8$60#:
	; Initializer SignedLongInt 60
	dq 60

section .data

@6505integral8$60#:
	; Initializer SignedLongInt 60
	dq 60

section .data

@6506integral8$86400#:
	; Initializer SignedLongInt 86400
	dq 86400

section .data

@6515integral8$7#:
	; Initializer SignedLongInt 7
	dq 7

section .data

@6518integral8$365#:
	; Initializer SignedLongInt 365
	dq 365

section .data

@6522integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@6525integral8$365#:
	; Initializer SignedLongInt 365
	dq 365

section .data

@6552integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@6554integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .text

 gmtime:
	; Equal 91 timePtr integral8$0#
	cmp qword [rbp + 24], 0
	je gmtime$91

 gmtime$1:
	; Dereference £temporary2501 timePtr 0
	mov rsi, [rbp + 24]

 gmtime$2:
	; Assign time £temporary2501
	mov rax, [rsi]
	mov [rbp + 32], rax

 gmtime$3:
	; Modulo secondsOfDay time integral8$86400#
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@6495integral8$86400#]
	mov [rbp + 40], rdx

 gmtime$4:
	; Modulo secondsOfHour secondsOfDay integral8$3600#
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@6498integral8$3600#]
	mov [rbp + 48], rdx

 gmtime$5:
	; Divide £temporary2505 secondsOfDay integral8$3600#
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@6501integral8$3600#]

 gmtime$6:
	; IntegralToIntegral £temporary2506 £temporary2505
	cmp rax, 0
	jge gmtime$7
	neg rax
	neg eax

 gmtime$7:
	; Assign g_timeStruct.tm_hour £temporary2506
	mov [@6490$g_timeStruct + 8], eax

 gmtime$8:
	; Divide £temporary2508 secondsOfHour integral8$60#
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@6503integral8$60#]

 gmtime$9:
	; IntegralToIntegral £temporary2509 £temporary2508
	cmp rax, 0
	jge gmtime$10
	neg rax
	neg eax

 gmtime$10:
	; Assign g_timeStruct.tm_min £temporary2509
	mov [@6490$g_timeStruct + 4], eax

 gmtime$11:
	; Modulo £temporary2511 secondsOfHour integral8$60#
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@6505integral8$60#]

 gmtime$12:
	; IntegralToIntegral £temporary2512 £temporary2511
	cmp rdx, 0
	jge gmtime$13
	neg rdx
	neg edx

 gmtime$13:
	; Assign g_timeStruct.tm_sec £temporary2512
	mov [@6490$g_timeStruct], edx

 gmtime$14:
	; Divide totalDays time integral8$86400#
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@6506integral8$86400#]
	mov [rbp + 56], rax

 gmtime$15:
	; GreaterThanEqual 20 totalDays integral8$3#
	cmp qword [rbp + 56], 3
	jge gmtime$20

 gmtime$16:
	; Add £temporary2516 totalDays integral8$4#
	mov rax, [rbp + 56]
	add rax, 4

 gmtime$17:
	; IntegralToIntegral £temporary2517 £temporary2516
	cmp rax, 0
	jge gmtime$18
	neg rax
	neg eax

 gmtime$18:
	; Assign g_timeStruct.tm_wday £temporary2517
	mov [@6490$g_timeStruct + 24], eax

 gmtime$19:
	; Jump 24
	jmp gmtime$24

 gmtime$20:
	; Subtract £temporary2519 totalDays integral8$3#
	mov rax, [rbp + 56]
	sub rax, 3

 gmtime$21:
	; Modulo £temporary2520 £temporary2519 integral8$7#
	xor rdx, rdx
	idiv qword [@6515integral8$7#]

 gmtime$22:
	; IntegralToIntegral £temporary2521 £temporary2520
	cmp rdx, 0
	jge gmtime$23
	neg rdx
	neg edx

 gmtime$23:
	; Assign g_timeStruct.tm_wday £temporary2521
	mov [@6490$g_timeStruct + 24], edx

 gmtime$24:
	; Divide £temporary2522 totalDays integral8$365#
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@6518integral8$365#]

 gmtime$25:
	; Add £temporary2523 £temporary2522 integral8$1970#
	add rax, 1970

 gmtime$26:
	; IntegralToIntegral £temporary2524 £temporary2523
	cmp rax, 0
	jge gmtime$27
	neg rax
	neg eax

 gmtime$27:
	; Assign year £temporary2524
	mov [rbp + 64], eax

 gmtime$28:
	; Subtract £temporary2525 year integral4$1969#
	mov eax, [rbp + 64]
	sub eax, 1969

 gmtime$29:
	; Divide leapDays £temporary2525 integral4$4#
	xor edx, edx
	idiv dword [@6522integral4$4#]
	mov [rbp + 68], eax

 gmtime$30:
	; Modulo totalDays totalDays integral8$365#
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@6525integral8$365#]
	mov [rbp + 56], rdx

 gmtime$31:
	; IntegralToIntegral £temporary2528 leapDays
	mov eax, [rbp + 68]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$32
	neg eax
	neg rax

 gmtime$32:
	; Subtract totalDays totalDays £temporary2528
	sub [rbp + 56], rax

 gmtime$33:
	; GreaterThanEqual 44 totalDays integral8$0#
	cmp qword [rbp + 56], 0
	jge gmtime$44

 gmtime$34:
	; Subtract year year integral4$1#
	dec dword [rbp + 64]

 gmtime$35:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gmtime$36:
	; Parameter 96 signed int year
	mov eax, [rbp + 64]
	mov [rbp + 96], eax

 gmtime$37:
	; Call 72 isLeapYear 0
	mov qword [rbp + 72], gmtime$38
	mov [rbp + 80], rbp
	add rbp, 72
	jmp @6462$isLeapYear

 gmtime$38:
	; PostCall 72

 gmtime$39:
	; GetReturnValue £temporary2532

 gmtime$40:
	; Equal 43 £temporary2532 integral4$0#
	cmp ebx, 0
	je gmtime$43

 gmtime$41:
	; Add totalDays totalDays integral8$366#
	add qword [rbp + 56], 366

 gmtime$42:
	; Jump 44
	jmp gmtime$44

 gmtime$43:
	; Add totalDays totalDays integral8$365#
	add qword [rbp + 56], 365

 gmtime$44:
	; Subtract g_timeStruct.tm_year year integral4$1900#
	mov eax, [rbp + 64]
	sub eax, 1900
	mov [@6490$g_timeStruct + 20], eax

 gmtime$45:
	; IntegralToIntegral £temporary2539 totalDays
	mov rax, [rbp + 56]
	cmp rax, 0
	jge gmtime$46
	neg rax
	neg eax

 gmtime$46:
	; Assign g_timeStruct.tm_yday £temporary2539
	mov [@6490$g_timeStruct + 28], eax

 gmtime$47:
	; Assign daysOfMonths[0] integral4$31#
	mov dword [rbp + 72], 31

 gmtime$48:
	; PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gmtime$49:
	; Parameter 100 signed int year
	mov eax, [rbp + 64]
	mov [rbp + 100], eax

 gmtime$50:
	; Call 76 isLeapYear 0
	mov qword [rbp + 76], gmtime$51
	mov [rbp + 84], rbp
	add rbp, 76
	jmp @6462$isLeapYear

 gmtime$51:
	; PostCall 76

 gmtime$52:
	; GetReturnValue £temporary2540

 gmtime$53:
	; Equal 56 £temporary2540 integral4$0#
	cmp ebx, 0
	je gmtime$56

 gmtime$54:
	; Assign £temporary2542 integral4$29#
	mov eax, 29

 gmtime$55:
	; Jump 57
	jmp gmtime$57

 gmtime$56:
	; Assign £temporary2542 integral4$28#
	mov eax, 28

 gmtime$57:
	; Assign daysOfMonths[1] £temporary2542
	mov [rbp + 76], eax

 gmtime$58:
	; Assign daysOfMonths[2] integral4$31#
	mov dword [rbp + 80], 31

 gmtime$59:
	; Assign daysOfMonths[3] integral4$30#
	mov dword [rbp + 84], 30

 gmtime$60:
	; Assign daysOfMonths[4] integral4$31#
	mov dword [rbp + 88], 31

 gmtime$61:
	; Assign daysOfMonths[5] integral4$30#
	mov dword [rbp + 92], 30

 gmtime$62:
	; Assign daysOfMonths[6] integral4$31#
	mov dword [rbp + 96], 31

 gmtime$63:
	; Assign daysOfMonths[7] integral4$31#
	mov dword [rbp + 100], 31

 gmtime$64:
	; Assign daysOfMonths[8] integral4$30#
	mov dword [rbp + 104], 30

 gmtime$65:
	; Assign daysOfMonths[9] integral4$31#
	mov dword [rbp + 108], 31

 gmtime$66:
	; Assign daysOfMonths[10] integral4$30#
	mov dword [rbp + 112], 30

 gmtime$67:
	; Assign daysOfMonths[11] integral4$31#
	mov dword [rbp + 116], 31

 gmtime$68:
	; Assign month integral4$0#
	mov dword [rbp + 120], 0

 gmtime$69:
	; Multiply £temporary2556 month integral4$4#
	mov eax, [rbp + 120]
	xor edx, edx
	imul dword [@6552integral4$4#]

 gmtime$70:
	; IntegralToIntegral £temporary2557 £temporary2556
	mov rbx, 4294967295
	and rax, rbx

 gmtime$71:
	; Add £temporary2558 daysOfMonths £temporary2557
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$72:
	; Dereference £temporary2555 £temporary2558 0

 gmtime$73:
	; IntegralToIntegral £temporary2559 £temporary2555
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$74
	neg eax
	neg rax

 gmtime$74:
	; LessThan 84 totalDays £temporary2559
	cmp [rbp + 56], rax
	jl gmtime$84

 gmtime$75:
	; Assign £temporary2561 month
	mov eax, [rbp + 120]

 gmtime$76:
	; Add month month integral4$1#
	inc dword [rbp + 120]

 gmtime$77:
	; Multiply £temporary2563 £temporary2561 integral4$4#
	xor edx, edx
	imul dword [@6554integral4$4#]

 gmtime$78:
	; IntegralToIntegral £temporary2564 £temporary2563
	mov rbx, 4294967295
	and rax, rbx

 gmtime$79:
	; Add £temporary2565 daysOfMonths £temporary2564
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$80:
	; Dereference £temporary2562 £temporary2565 0

 gmtime$81:
	; IntegralToIntegral £temporary2566 £temporary2562
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$82
	neg eax
	neg rax

 gmtime$82:
	; Subtract totalDays totalDays £temporary2566
	sub [rbp + 56], rax

 gmtime$83:
	; Jump 69
	jmp gmtime$69

 gmtime$84:
	; Assign g_timeStruct.tm_mon month
	mov eax, [rbp + 120]
	mov [@6490$g_timeStruct + 16], eax

 gmtime$85:
	; Add £temporary2570 totalDays integral8$1#
	mov rax, [rbp + 56]
	inc rax

 gmtime$86:
	; IntegralToIntegral £temporary2571 £temporary2570
	cmp rax, 0
	jge gmtime$87
	neg rax
	neg eax

 gmtime$87:
	; Assign g_timeStruct.tm_mday £temporary2571
	mov [@6490$g_timeStruct + 12], eax

 gmtime$88:
	; Assign g_timeStruct.tm_isdst integral4$minus1#
	mov dword [@6490$g_timeStruct + 32], -1

 gmtime$89:
	; SetReturnValue

 gmtime$90:
	; Return StaticAddress_@6490$g_timeStruct_0#
	mov rbx, @6490$g_timeStruct
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$91:
	; SetReturnValue

 gmtime$92:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$93:
	; FunctionEnd gmtime

section .data

@6571integral8$3600#:
	; Initializer SignedLongInt 3600
	dq 3600

section .text

 localtime:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$1:
	; Parameter 56 pointer timePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 localtime$2:
	; Call 32 gmtime 0
	mov qword [rbp + 32], localtime$3
	mov [rbp + 40], rbp
	add rbp, 32
	jmp gmtime

 localtime$3:
	; PostCall 32

 localtime$4:
	; GetReturnValue £temporary2573

 localtime$5:
	; Assign tmPtr £temporary2573
	mov [rbp + 32], rbx

 localtime$6:
	; Dereference £temporary2574 timePtr 0
	mov rsi, [rbp + 24]

 localtime$7:
	; Assign t £temporary2574
	mov rax, [rsi]
	mov [rbp + 40], rax

 localtime$8:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$9:
	; Call 48 localeconv 0
	mov qword [rbp + 48], localtime$10
	mov [rbp + 56], rbp
	add rbp, 48
	jmp localeconv

 localtime$10:
	; PostCall 48

 localtime$11:
	; GetReturnValue £temporary2575

 localtime$12:
	; Assign localeConvPtr £temporary2575
	mov [rbp + 48], rbx

 localtime$13:
	; Equal 25 localeConvPtr integral8$0#
	cmp qword [rbp + 48], 0
	je localtime$25

 localtime$14:
	; Dereference £temporary2577 tmPtr 0
	mov rsi, [rbp + 32]

 localtime$15:
	; NotEqual 19 £temporary2577 integral4$1#
	cmp dword [rsi + 32], 1
	jne localtime$19

 localtime$16:
	; Dereference £temporary2579 localeConvPtr 0
	mov rsi, [rbp + 48]

 localtime$17:
	; Assign £temporary2581 £temporary2579
	mov eax, [rsi]

 localtime$18:
	; Jump 21
	jmp localtime$21

 localtime$19:
	; Dereference £temporary2580 localeConvPtr 0
	mov rsi, [rbp + 48]

 localtime$20:
	; Assign £temporary2581 £temporary2580
	mov eax, [rsi + 4]

 localtime$21:
	; Assign timeZone £temporary2581
	mov [rbp + 56], eax

 localtime$22:
	; IntegralToIntegral £temporary2582 timeZone
	mov eax, [rbp + 56]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge localtime$23
	neg eax
	neg rax

 localtime$23:
	; Multiply £temporary2583 £temporary2582 integral8$3600#
	xor rdx, rdx
	imul qword [@6571integral8$3600#]

 localtime$24:
	; Add t t £temporary2583
	add [rbp + 40], rax

 localtime$25:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$26:
	; Address £temporary2585 t
	mov rsi, rbp
	add rsi, 40

 localtime$27:
	; Parameter 80 pointer £temporary2585
	mov [rbp + 80], rsi

 localtime$28:
	; Call 56 gmtime 0
	mov qword [rbp + 56], localtime$29
	mov [rbp + 64], rbp
	add rbp, 56
	jmp gmtime

 localtime$29:
	; PostCall 56

 localtime$30:
	; GetReturnValue £temporary2586

 localtime$31:
	; SetReturnValue

 localtime$32:
	; Return £temporary2586
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 localtime$33:
	; FunctionEnd localtime

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .text

 difftime:
	; Subtract £temporary2588 time2 time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

 difftime$1:
	; IntegralToFloating £temporary2589 £temporary2588
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 difftime$2:
	; SetReturnValue

 difftime$3:
	; Return £temporary2589
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 difftime$4:
	; FunctionEnd difftime

section .data

@6578$g_timeString:
	; InitializerZero 256
	times 256 db 0

section .data

@6579string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

@6580string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

@6581string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

@6582string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

@6583string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

@6584string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

@6585string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@6586$g_shortDayList:
	; Initializer Pointer @6579string_Sun#
	dq @6579string_Sun#
	; Initializer Pointer @6580string_Mon#
	dq @6580string_Mon#
	; Initializer Pointer @6581string_Tue#
	dq @6581string_Tue#
	; Initializer Pointer @6582string_Wed#
	dq @6582string_Wed#
	; Initializer Pointer @6583string_Thu#
	dq @6583string_Thu#
	; Initializer Pointer @6584string_Fri#
	dq @6584string_Fri#
	; Initializer Pointer @6585string_Sat#
	dq @6585string_Sat#

section .data

@6587string_Sunday#:
	; Initializer String Sunday
	db "Sunday", 0

section .data

@6588string_Monday#:
	; Initializer String Monday
	db "Monday", 0

section .data

@6589string_Tuesday#:
	; Initializer String Tuesday
	db "Tuesday", 0

section .data

@6590string_Wednesday#:
	; Initializer String Wednesday
	db "Wednesday", 0

section .data

@6591string_Thursday#:
	; Initializer String Thursday
	db "Thursday", 0

section .data

@6592string_Friday#:
	; Initializer String Friday
	db "Friday", 0

section .data

@6593string_Saturday#:
	; Initializer String Saturday
	db "Saturday", 0

section .data

@6594$g_longDayList:
	; Initializer Pointer @6587string_Sunday#
	dq @6587string_Sunday#
	; Initializer Pointer @6588string_Monday#
	dq @6588string_Monday#
	; Initializer Pointer @6589string_Tuesday#
	dq @6589string_Tuesday#
	; Initializer Pointer @6590string_Wednesday#
	dq @6590string_Wednesday#
	; Initializer Pointer @6591string_Thursday#
	dq @6591string_Thursday#
	; Initializer Pointer @6592string_Friday#
	dq @6592string_Friday#
	; Initializer Pointer @6593string_Saturday#
	dq @6593string_Saturday#

section .data

@6595string_Jan#:
	; Initializer String Jan
	db "Jan", 0

section .data

@6596string_Feb#:
	; Initializer String Feb
	db "Feb", 0

section .data

@6597string_Mar#:
	; Initializer String Mar
	db "Mar", 0

section .data

@6598string_Apr#:
	; Initializer String Apr
	db "Apr", 0

section .data

@6599string_May#:
	; Initializer String May
	db "May", 0

section .data

@6600string_Jun#:
	; Initializer String Jun
	db "Jun", 0

section .data

@6601string_Jul#:
	; Initializer String Jul
	db "Jul", 0

section .data

@6602string_Aug#:
	; Initializer String Aug
	db "Aug", 0

section .data

@6603string_Sep#:
	; Initializer String Sep
	db "Sep", 0

section .data

@6604string_Oct#:
	; Initializer String Oct
	db "Oct", 0

section .data

@6605string_Nov#:
	; Initializer String Nov
	db "Nov", 0

section .data

@6606string_Dec#:
	; Initializer String Dec
	db "Dec", 0

section .data

@6607$g_shortMonthList:
	; Initializer Pointer @6595string_Jan#
	dq @6595string_Jan#
	; Initializer Pointer @6596string_Feb#
	dq @6596string_Feb#
	; Initializer Pointer @6597string_Mar#
	dq @6597string_Mar#
	; Initializer Pointer @6598string_Apr#
	dq @6598string_Apr#
	; Initializer Pointer @6599string_May#
	dq @6599string_May#
	; Initializer Pointer @6600string_Jun#
	dq @6600string_Jun#
	; Initializer Pointer @6601string_Jul#
	dq @6601string_Jul#
	; Initializer Pointer @6602string_Aug#
	dq @6602string_Aug#
	; Initializer Pointer @6603string_Sep#
	dq @6603string_Sep#
	; Initializer Pointer @6604string_Oct#
	dq @6604string_Oct#
	; Initializer Pointer @6605string_Nov#
	dq @6605string_Nov#
	; Initializer Pointer @6606string_Dec#
	dq @6606string_Dec#

section .data

@6608string_January#:
	; Initializer String January
	db "January", 0

section .data

@6609string_February#:
	; Initializer String February
	db "February", 0

section .data

@6610string_March#:
	; Initializer String March
	db "March", 0

section .data

@6611string_April#:
	; Initializer String April
	db "April", 0

section .data

@6612string_May#:
	; Initializer String May
	db "May", 0

section .data

@6613string_June#:
	; Initializer String June
	db "June", 0

section .data

@6614string_July#:
	; Initializer String July
	db "July", 0

section .data

@6615string_August#:
	; Initializer String August
	db "August", 0

section .data

@6616string_September#:
	; Initializer String September
	db "September", 0

section .data

@6617string_October#:
	; Initializer String October
	db "October", 0

section .data

@6618string_November#:
	; Initializer String November
	db "November", 0

section .data

@6619string_December#:
	; Initializer String December
	db "December", 0

section .data

@6620$g_longMonthList:
	; Initializer Pointer @6608string_January#
	dq @6608string_January#
	; Initializer Pointer @6609string_February#
	dq @6609string_February#
	; Initializer Pointer @6610string_March#
	dq @6610string_March#
	; Initializer Pointer @6611string_April#
	dq @6611string_April#
	; Initializer Pointer @6612string_May#
	dq @6612string_May#
	; Initializer Pointer @6613string_June#
	dq @6613string_June#
	; Initializer Pointer @6614string_July#
	dq @6614string_July#
	; Initializer Pointer @6615string_August#
	dq @6615string_August#
	; Initializer Pointer @6616string_September#
	dq @6616string_September#
	; Initializer Pointer @6617string_October#
	dq @6617string_October#
	; Initializer Pointer @6618string_November#
	dq @6618string_November#
	; Initializer Pointer @6619string_December#
	dq @6619string_December#

section .data

@6635string_25s2025s2025i202502i3A2502i3A2502i2025i#:
	; Initializer String %s %s %i %02i:%02i:%02i %i
	db "%s %s %i %02i:%02i:%02i %i", 0

section .data

@6636integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6637integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 asctime:
	; Assign localeConvPtr integral8$0#
	mov qword [rbp + 32], 0

 asctime$1:
	; Equal 7 localeConvPtr integral8$0#
	cmp qword [rbp + 32], 0
	je asctime$7

 asctime$2:
	; Dereference £temporary2591 localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$3:
	; Equal 7 £temporary2591 integral8$0#
	cmp qword [rsi + 8], 0
	je asctime$7

 asctime$4:
	; Dereference £temporary2594 localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$5:
	; Assign shortDayList £temporary2594
	mov rax, [rsi + 8]
	mov [rbp + 40], rax

 asctime$6:
	; Jump 8
	jmp asctime$8

 asctime$7:
	; Assign shortDayList g_shortDayList
	mov qword [rbp + 40], @6586$g_shortDayList

 asctime$8:
	; Equal 14 localeConvPtr integral8$0#
	cmp qword [rbp + 32], 0
	je asctime$14

 asctime$9:
	; Dereference £temporary2596 localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$10:
	; Equal 14 £temporary2596 integral8$0#
	cmp qword [rsi + 24], 0
	je asctime$14

 asctime$11:
	; Dereference £temporary2599 localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$12:
	; Assign shortMonthList £temporary2599
	mov rax, [rsi + 24]
	mov [rbp + 48], rax

 asctime$13:
	; Jump 15
	jmp asctime$15

 asctime$14:
	; Assign shortMonthList g_shortMonthList
	mov qword [rbp + 48], @6607$g_shortMonthList

 asctime$15:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asctime$16:
	; Parameter 80 pointer g_timeString
	mov qword [rbp + 80], @6578$g_timeString

 asctime$17:
	; Parameter 88 pointer string_25s2025s2025i202502i3A2502i3A2502i2025i#
	mov qword [rbp + 88], @6635string_25s2025s2025i202502i3A2502i3A2502i2025i#

 asctime$18:
	; Dereference £temporary2600 tp 0
	mov rsi, [rbp + 24]

 asctime$19:
	; Multiply £temporary2602 £temporary2600 integral4$8#
	mov eax, [rsi + 24]
	xor edx, edx
	imul dword [@6636integral4$8#]

 asctime$20:
	; IntegralToIntegral £temporary2603 £temporary2602
	mov rbx, 4294967295
	and rax, rbx

 asctime$21:
	; Add £temporary2604 shortDayList £temporary2603
	mov rsi, [rbp + 40]
	add rsi, rax

 asctime$22:
	; Dereference £temporary2601 £temporary2604 0

 asctime$23:
	; Parameter 96 pointer £temporary2601
	mov rax, [rsi]
	mov [rbp + 96], rax

 asctime$24:
	; Dereference £temporary2605 tp 0
	mov rsi, [rbp + 24]

 asctime$25:
	; Multiply £temporary2607 £temporary2605 integral4$8#
	mov eax, [rsi + 16]
	xor edx, edx
	imul dword [@6637integral4$8#]

 asctime$26:
	; IntegralToIntegral £temporary2608 £temporary2607
	mov rbx, 4294967295
	and rax, rbx

 asctime$27:
	; Add £temporary2609 shortMonthList £temporary2608
	mov rsi, [rbp + 48]
	add rsi, rax

 asctime$28:
	; Dereference £temporary2606 £temporary2609 0

 asctime$29:
	; Parameter 104 pointer £temporary2606
	mov rax, [rsi]
	mov [rbp + 104], rax

 asctime$30:
	; Dereference £temporary2610 tp 0
	mov rsi, [rbp + 24]

 asctime$31:
	; Parameter 112 signed int £temporary2610
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

 asctime$32:
	; Dereference £temporary2611 tp 0
	mov rsi, [rbp + 24]

 asctime$33:
	; Parameter 116 signed int £temporary2611
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

 asctime$34:
	; Dereference £temporary2612 tp 0
	mov rsi, [rbp + 24]

 asctime$35:
	; Parameter 120 signed int £temporary2612
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

 asctime$36:
	; Dereference £temporary2613 tp 0
	mov rsi, [rbp + 24]

 asctime$37:
	; Parameter 124 signed int £temporary2613
	mov eax, [rsi]
	mov [rbp + 124], eax

 asctime$38:
	; Dereference £temporary2614 tp 0
	mov rsi, [rbp + 24]

 asctime$39:
	; Add £temporary2615 £temporary2614 integral4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

 asctime$40:
	; Parameter 128 signed int £temporary2615
	mov [rbp + 128], eax

 asctime$41:
	; Call 56 sprintf 36
	mov qword [rbp + 56], asctime$42
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 36
	jmp sprintf

 asctime$42:
	; PostCall 56

 asctime$43:
	; SetReturnValue

 asctime$44:
	; Return g_timeString
	mov rbx, @6578$g_timeString
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asctime$45:
	; FunctionEnd asctime

section .text

 ctime:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ctime$1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ctime$2:
	; Parameter 56 pointer time
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 ctime$3:
	; Call 32 localtime 0
	mov qword [rbp + 32], ctime$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp localtime

 ctime$4:
	; PostCall 32

 ctime$5:
	; GetReturnValue £temporary2617

 ctime$6:
	; Parameter 56 pointer £temporary2617
	mov [rbp + 56], rbx

 ctime$7:
	; Call 32 asctime 0
	mov qword [rbp + 32], ctime$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp asctime

 ctime$8:
	; PostCall 32

 ctime$9:
	; GetReturnValue £temporary2618

 ctime$10:
	; SetReturnValue

 ctime$11:
	; Return £temporary2618
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ctime$12:
	; FunctionEnd ctime

section .data

@6653integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@6655integral4$365#:
	; Initializer SignedInt 365
	dd 365

section .data

@6662integral4$7#:
	; Initializer SignedInt 7
	dd 7

section .data

@6666integral4$7#:
	; Initializer SignedInt 7
	dd 7

section .text

 getWeekNumber:
	; Dereference £temporary2619 tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$1:
	; Subtract £temporary2620 £temporary2619 integral4$69#
	mov eax, [rsi + 20]
	sub eax, 69

 getWeekNumber$2:
	; Divide £temporary2621 £temporary2620 integral4$4#
	xor edx, edx
	idiv dword [@6653integral4$4#]

 getWeekNumber$3:
	; IntegralToIntegral £temporary2622 £temporary2621
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge getWeekNumber$4
	neg eax
	neg rax

 getWeekNumber$4:
	; Assign leapDays £temporary2622
	mov [rbp + 32], rax

 getWeekNumber$5:
	; Dereference £temporary2623 tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$6:
	; Subtract £temporary2624 £temporary2623 integral4$70#
	mov eax, [rsi + 20]
	sub eax, 70

 getWeekNumber$7:
	; Multiply £temporary2625 £temporary2624 integral4$365#
	xor edx, edx
	imul dword [@6655integral4$365#]

 getWeekNumber$8:
	; IntegralToIntegral £temporary2626 £temporary2625
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge getWeekNumber$9
	neg eax
	neg rax

 getWeekNumber$9:
	; Add £temporary2627 £temporary2626 leapDays
	add rax, [rbp + 32]

 getWeekNumber$10:
	; IntegralToIntegral £temporary2628 £temporary2627
	cmp rax, 0
	jge getWeekNumber$11
	neg rax
	neg eax

 getWeekNumber$11:
	; Assign totalDays £temporary2628
	mov [rbp + 40], eax

 getWeekNumber$12:
	; GreaterThanEqual 15 totalDays integral4$3#
	cmp dword [rbp + 40], 3
	jge getWeekNumber$15

 getWeekNumber$13:
	; Add weekDayJanuaryFirst totalDays integral4$4#
	mov eax, [rbp + 40]
	add eax, 4
	mov [rbp + 44], eax

 getWeekNumber$14:
	; Jump 17
	jmp getWeekNumber$17

 getWeekNumber$15:
	; Subtract £temporary2631 totalDays integral4$3#
	mov eax, [rbp + 40]
	sub eax, 3

 getWeekNumber$16:
	; Modulo weekDayJanuaryFirst £temporary2631 integral4$7#
	xor edx, edx
	idiv dword [@6662integral4$7#]
	mov [rbp + 44], edx

 getWeekNumber$17:
	; Subtract firstWeekSize integral4$7# weekDayJanuaryFirst
	mov eax, 7
	sub eax, [rbp + 44]
	mov [rbp + 48], eax

 getWeekNumber$18:
	; Dereference £temporary2634 tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$19:
	; GreaterThanEqual 22 £temporary2634 firstWeekSize
	mov eax, [rbp + 48]
	cmp [rsi + 28], eax
	jge getWeekNumber$22

 getWeekNumber$20:
	; SetReturnValue

 getWeekNumber$21:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getWeekNumber$22:
	; Dereference £temporary2636 tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$23:
	; Subtract £temporary2637 £temporary2636 firstWeekSize
	mov eax, [rsi + 28]
	sub eax, [rbp + 48]

 getWeekNumber$24:
	; Divide £temporary2638 £temporary2637 integral4$7#
	xor edx, edx
	idiv dword [@6666integral4$7#]

 getWeekNumber$25:
	; Add £temporary2639 £temporary2638 integral4$1#
	inc eax

 getWeekNumber$26:
	; SetReturnValue

 getWeekNumber$27:
	; Return £temporary2639
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getWeekNumber$28:
	; FunctionEnd getWeekNumber

section .data

@6693string_#:
	; Initializer String 
	db 0

section .data

@6721string_2502i2D2502i2D2502i202502i3A2502i3A2502i#:
	; Initializer String %02i-%02i-%02i %02i:%02i:%02i
	db "%02i-%02i-%02i %02i:%02i:%02i", 0

section .data

@6726string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6729string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6732string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6736string_2503i#:
	; Initializer String %03i
	db "%03i", 0

section .data

@6739string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6743string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6746string_25s#:
	; Initializer String %s
	db "%s", 0

section .data

@6747string_AM#:
	; Initializer String AM
	db "AM", 0

section .data

@6748string_PM#:
	; Initializer String PM
	db "PM", 0

section .data

@6752string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6755string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6758string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6761string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6764string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@6767string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@6770string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6774string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6778string_summer#:
	; Initializer String summer
	db "summer", 0

section .data

@6779string_winter#:
	; Initializer String winter
	db "winter", 0

section .data

@6783string_25#:
	; Initializer String %
	db "%", 0

section .data

@6784string_#:
	; Initializer String 
	db 0

section .data

@6709integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6712integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6715integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6718integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6733integral4$12#:
	; Initializer SignedInt 12
	dd 12

section .data

@6771integral4$100#:
	; Initializer SignedInt 100
	dd 100

section .text

 strftime:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$1:
	; Call 52 localeconv 0
	mov qword [rbp + 52], strftime$2
	mov [rbp + 60], rbp
	add rbp, 52
	jmp localeconv

 strftime$2:
	; PostCall 52

 strftime$3:
	; GetReturnValue £temporary2640

 strftime$4:
	; Assign localeConvPtr £temporary2640
	mov [rbp + 52], rbx

 strftime$5:
	; Equal 11 localeConvPtr integral8$0#
	cmp qword [rbp + 52], 0
	je strftime$11

 strftime$6:
	; Dereference £temporary2642 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$7:
	; Equal 11 £temporary2642 integral8$0#
	cmp qword [rsi + 8], 0
	je strftime$11

 strftime$8:
	; Dereference £temporary2645 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$9:
	; Assign shortDayList £temporary2645
	mov rax, [rsi + 8]
	mov [rbp + 60], rax

 strftime$10:
	; Jump 12
	jmp strftime$12

 strftime$11:
	; Assign shortDayList g_shortDayList
	mov qword [rbp + 60], @6586$g_shortDayList

 strftime$12:
	; Equal 18 localeConvPtr integral8$0#
	cmp qword [rbp + 52], 0
	je strftime$18

 strftime$13:
	; Dereference £temporary2647 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$14:
	; Equal 18 £temporary2647 integral8$0#
	cmp qword [rsi + 16], 0
	je strftime$18

 strftime$15:
	; Dereference £temporary2650 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$16:
	; Assign longDayList £temporary2650
	mov rax, [rsi + 16]
	mov [rbp + 76], rax

 strftime$17:
	; Jump 19
	jmp strftime$19

 strftime$18:
	; Assign longDayList g_longDayList
	mov qword [rbp + 76], @6594$g_longDayList

 strftime$19:
	; Equal 25 localeConvPtr integral8$0#
	cmp qword [rbp + 52], 0
	je strftime$25

 strftime$20:
	; Dereference £temporary2652 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$21:
	; Equal 25 £temporary2652 integral8$0#
	cmp qword [rsi + 24], 0
	je strftime$25

 strftime$22:
	; Dereference £temporary2655 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$23:
	; Assign shortMonthList £temporary2655
	mov rax, [rsi + 24]
	mov [rbp + 68], rax

 strftime$24:
	; Jump 26
	jmp strftime$26

 strftime$25:
	; Assign shortMonthList g_shortMonthList
	mov qword [rbp + 68], @6607$g_shortMonthList

 strftime$26:
	; Equal 32 localeConvPtr integral8$0#
	cmp qword [rbp + 52], 0
	je strftime$32

 strftime$27:
	; Dereference £temporary2657 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$28:
	; Equal 32 £temporary2657 integral8$0#
	cmp qword [rsi + 32], 0
	je strftime$32

 strftime$29:
	; Dereference £temporary2660 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$30:
	; Assign longMonthList £temporary2660
	mov rax, [rsi + 32]
	mov [rbp + 84], rax

 strftime$31:
	; Jump 33
	jmp strftime$33

 strftime$32:
	; Assign longMonthList g_longMonthList
	mov qword [rbp + 84], @6620$g_longMonthList

 strftime$33:
	; PreCall 92 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$34:
	; Parameter 116 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

 strftime$35:
	; Parameter 124 pointer string_#
	mov qword [rbp + 124], @6693string_#

 strftime$36:
	; Call 92 strcpy 0
	mov qword [rbp + 92], strftime$37
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strcpy

 strftime$37:
	; PostCall 92

 strftime$38:
	; PreCall 96 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$39:
	; Parameter 120 pointer tp
	mov rax, [rbp + 44]
	mov [rbp + 120], rax

 strftime$40:
	; Call 96 getWeekNumber 0
	mov qword [rbp + 96], strftime$41
	mov [rbp + 104], rbp
	add rbp, 96
	jmp getWeekNumber

 strftime$41:
	; PostCall 96

 strftime$42:
	; GetReturnValue £temporary2662

 strftime$43:
	; Assign weekNumberStartSunday £temporary2662
	mov [rbp + 96], ebx

 strftime$44:
	; Assign weekNumberStartMonday weekNumberStartSunday
	mov eax, [rbp + 96]
	mov [rbp + 100], eax

 strftime$45:
	; Dereference £temporary2663 tp 0
	mov rsi, [rbp + 44]

 strftime$46:
	; NotEqual 48 £temporary2663 integral4$0#
	cmp dword [rsi + 12], 0
	jne strftime$48

 strftime$47:
	; Subtract weekNumberStartMonday weekNumberStartMonday integral4$1#
	dec dword [rbp + 100]

 strftime$48:
	; Assign index integral4$0#
	mov dword [rbp + 92], 0

 strftime$49:
	; IntegralToIntegral £temporary2667 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$50:
	; Add £temporary2668 format £temporary2667
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$51:
	; Dereference £temporary2666 £temporary2668 0

 strftime$52:
	; Equal 331 £temporary2666 integral1$0#
	cmp byte [rsi], 0
	je strftime$331

 strftime$53:
	; IntegralToIntegral £temporary2672 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$54:
	; Add £temporary2673 format £temporary2672
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$55:
	; Dereference £temporary2671 £temporary2673 0

 strftime$56:
	; NotEqual 305 £temporary2671 integral1$37#
	cmp byte [rsi], 37
	jne strftime$305

 strftime$57:
	; Add index index integral4$1#
	inc dword [rbp + 92]

 strftime$58:
	; Assign £temporary2675 index
	mov eax, [rbp + 92]

 strftime$59:
	; IntegralToIntegral £temporary2677 £temporary2675
	mov rbx, 4294967295
	and rax, rbx

 strftime$60:
	; Add £temporary2678 format £temporary2677
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$61:
	; Dereference £temporary2676 £temporary2678 0

 strftime$62:
	; Case 86 £temporary2676 integral1$97#
	mov al, [rsi]
	cmp al, 97
	je strftime$86

 strftime$63:
	; Case 97 £temporary2676 integral1$65#
	cmp al, 65
	je strftime$97

 strftime$64:
	; Case 108 £temporary2676 integral1$98#
	cmp al, 98
	je strftime$108

 strftime$65:
	; Case 119 £temporary2676 integral1$66#
	cmp al, 66
	je strftime$119

 strftime$66:
	; Case 130 £temporary2676 integral1$99#
	cmp al, 99
	je strftime$130

 strftime$67:
	; Case 150 £temporary2676 integral1$100#
	cmp al, 100
	je strftime$150

 strftime$68:
	; Case 158 £temporary2676 integral1$72#
	cmp al, 72
	je strftime$158

 strftime$69:
	; Case 166 £temporary2676 integral1$73#
	cmp al, 73
	je strftime$166

 strftime$70:
	; Case 175 £temporary2676 integral1$106#
	cmp al, 106
	je strftime$175

 strftime$71:
	; Case 183 £temporary2676 integral1$109#
	cmp al, 109
	je strftime$183

 strftime$72:
	; Case 192 £temporary2676 integral1$77#
	cmp al, 77
	je strftime$192

 strftime$73:
	; Case 200 £temporary2676 integral1$112#
	cmp al, 112
	je strftime$200

 strftime$74:
	; Case 211 £temporary2676 integral1$83#
	cmp al, 83
	je strftime$211

 strftime$75:
	; Case 219 £temporary2676 integral1$85#
	cmp al, 85
	je strftime$219

 strftime$76:
	; Case 226 £temporary2676 integral1$119#
	cmp al, 119
	je strftime$226

 strftime$77:
	; Case 234 £temporary2676 integral1$87#
	cmp al, 87
	je strftime$234

 strftime$78:
	; Case 241 £temporary2676 integral1$120#
	cmp al, 120
	je strftime$241

 strftime$79:
	; Case 253 £temporary2676 integral1$88#
	cmp al, 88
	je strftime$253

 strftime$80:
	; Case 265 £temporary2676 integral1$121#
	cmp al, 121
	je strftime$265

 strftime$81:
	; Case 274 £temporary2676 integral1$89#
	cmp al, 89
	je strftime$274

 strftime$82:
	; Case 283 £temporary2676 integral1$90#
	cmp al, 90
	je strftime$283

 strftime$83:
	; Case 294 £temporary2676 integral1$37#
	cmp al, 37
	je strftime$294

 strftime$84:
	; CaseEnd £temporary2676

 strftime$85:
	; Jump 299
	jmp strftime$299

 strftime$86:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$87:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$88:
	; Dereference £temporary2679 tp 0
	mov rsi, [rbp + 44]

 strftime$89:
	; Multiply £temporary2681 £temporary2679 integral4$8#
	mov eax, [rsi + 24]
	xor edx, edx
	imul dword [@6709integral4$8#]

 strftime$90:
	; IntegralToIntegral £temporary2682 £temporary2681
	mov rbx, 4294967295
	and rax, rbx

 strftime$91:
	; Add £temporary2683 shortDayList £temporary2682
	mov rsi, [rbp + 60]
	add rsi, rax

 strftime$92:
	; Dereference £temporary2680 £temporary2683 0

 strftime$93:
	; Parameter 156 pointer £temporary2680
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$94:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$95
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$95:
	; PostCall 124

 strftime$96:
	; Jump 312
	jmp strftime$312

 strftime$97:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$98:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$99:
	; Dereference £temporary2685 tp 0
	mov rsi, [rbp + 44]

 strftime$100:
	; Multiply £temporary2687 £temporary2685 integral4$8#
	mov eax, [rsi + 24]
	xor edx, edx
	imul dword [@6712integral4$8#]

 strftime$101:
	; IntegralToIntegral £temporary2688 £temporary2687
	mov rbx, 4294967295
	and rax, rbx

 strftime$102:
	; Add £temporary2689 longDayList £temporary2688
	mov rsi, [rbp + 76]
	add rsi, rax

 strftime$103:
	; Dereference £temporary2686 £temporary2689 0

 strftime$104:
	; Parameter 156 pointer £temporary2686
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$105:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$106
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$106:
	; PostCall 124

 strftime$107:
	; Jump 312
	jmp strftime$312

 strftime$108:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$109:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$110:
	; Dereference £temporary2691 tp 0
	mov rsi, [rbp + 44]

 strftime$111:
	; Multiply £temporary2693 £temporary2691 integral4$8#
	mov eax, [rsi + 16]
	xor edx, edx
	imul dword [@6715integral4$8#]

 strftime$112:
	; IntegralToIntegral £temporary2694 £temporary2693
	mov rbx, 4294967295
	and rax, rbx

 strftime$113:
	; Add £temporary2695 shortMonthList £temporary2694
	mov rsi, [rbp + 68]
	add rsi, rax

 strftime$114:
	; Dereference £temporary2692 £temporary2695 0

 strftime$115:
	; Parameter 156 pointer £temporary2692
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$116:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$117
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$117:
	; PostCall 124

 strftime$118:
	; Jump 312
	jmp strftime$312

 strftime$119:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$120:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$121:
	; Dereference £temporary2697 tp 0
	mov rsi, [rbp + 44]

 strftime$122:
	; Multiply £temporary2699 £temporary2697 integral4$8#
	mov eax, [rsi + 16]
	xor edx, edx
	imul dword [@6718integral4$8#]

 strftime$123:
	; IntegralToIntegral £temporary2700 £temporary2699
	mov rbx, 4294967295
	and rax, rbx

 strftime$124:
	; Add £temporary2701 longMonthList £temporary2700
	mov rsi, [rbp + 84]
	add rsi, rax

 strftime$125:
	; Dereference £temporary2698 £temporary2701 0

 strftime$126:
	; Parameter 156 pointer £temporary2698
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$127:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$128
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$128:
	; PostCall 124

 strftime$129:
	; Jump 312
	jmp strftime$312

 strftime$130:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$131:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$132:
	; Parameter 156 pointer string_2502i2D2502i2D2502i202502i3A2502i3A2502i#
	mov qword [rbp + 156], @6721string_2502i2D2502i2D2502i202502i3A2502i3A2502i#

 strftime$133:
	; Dereference £temporary2703 tp 0
	mov rsi, [rbp + 44]

 strftime$134:
	; Add £temporary2704 £temporary2703 integral4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$135:
	; Parameter 164 signed int £temporary2704
	mov [rbp + 164], eax

 strftime$136:
	; Dereference £temporary2705 tp 0
	mov rsi, [rbp + 44]

 strftime$137:
	; Add £temporary2706 £temporary2705 integral4$1#
	mov eax, [rsi + 16]
	inc eax

 strftime$138:
	; Parameter 168 signed int £temporary2706
	mov [rbp + 168], eax

 strftime$139:
	; Dereference £temporary2707 tp 0
	mov rsi, [rbp + 44]

 strftime$140:
	; Parameter 172 signed int £temporary2707
	mov eax, [rsi + 12]
	mov [rbp + 172], eax

 strftime$141:
	; Dereference £temporary2708 tp 0
	mov rsi, [rbp + 44]

 strftime$142:
	; Parameter 176 signed int £temporary2708
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$143:
	; Dereference £temporary2709 tp 0
	mov rsi, [rbp + 44]

 strftime$144:
	; Parameter 180 signed int £temporary2709
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$145:
	; Dereference £temporary2710 tp 0
	mov rsi, [rbp + 44]

 strftime$146:
	; Parameter 184 signed int £temporary2710
	mov eax, [rsi]
	mov [rbp + 184], eax

 strftime$147:
	; Call 124 sprintf 24
	mov qword [rbp + 124], strftime$148
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 24
	jmp sprintf

 strftime$148:
	; PostCall 124

 strftime$149:
	; Jump 312
	jmp strftime$312

 strftime$150:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$151:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$152:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6726string_2502i#

 strftime$153:
	; Dereference £temporary2712 tp 0
	mov rsi, [rbp + 44]

 strftime$154:
	; Parameter 164 signed int £temporary2712
	mov eax, [rsi + 12]
	mov [rbp + 164], eax

 strftime$155:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$156
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$156:
	; PostCall 124

 strftime$157:
	; Jump 312
	jmp strftime$312

 strftime$158:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$159:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$160:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6729string_2502i#

 strftime$161:
	; Dereference £temporary2714 tp 0
	mov rsi, [rbp + 44]

 strftime$162:
	; Parameter 164 signed int £temporary2714
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$163:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$164
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$164:
	; PostCall 124

 strftime$165:
	; Jump 312
	jmp strftime$312

 strftime$166:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$167:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$168:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6732string_2502i#

 strftime$169:
	; Dereference £temporary2716 tp 0
	mov rsi, [rbp + 44]

 strftime$170:
	; Modulo £temporary2717 £temporary2716 integral4$12#
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [@6733integral4$12#]

 strftime$171:
	; Parameter 164 signed int £temporary2717
	mov [rbp + 164], edx

 strftime$172:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$173
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$173:
	; PostCall 124

 strftime$174:
	; Jump 312
	jmp strftime$312

 strftime$175:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$176:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$177:
	; Parameter 156 pointer string_2503i#
	mov qword [rbp + 156], @6736string_2503i#

 strftime$178:
	; Dereference £temporary2719 tp 0
	mov rsi, [rbp + 44]

 strftime$179:
	; Parameter 164 signed int £temporary2719
	mov eax, [rsi + 28]
	mov [rbp + 164], eax

 strftime$180:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$181
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$181:
	; PostCall 124

 strftime$182:
	; Jump 312
	jmp strftime$312

 strftime$183:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$184:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$185:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6739string_2502i#

 strftime$186:
	; Dereference £temporary2721 tp 0
	mov rsi, [rbp + 44]

 strftime$187:
	; Add £temporary2722 £temporary2721 integral4$1#
	mov eax, [rsi + 16]
	inc eax

 strftime$188:
	; Parameter 164 signed int £temporary2722
	mov [rbp + 164], eax

 strftime$189:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$190
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$190:
	; PostCall 124

 strftime$191:
	; Jump 312
	jmp strftime$312

 strftime$192:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$193:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$194:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6743string_2502i#

 strftime$195:
	; Dereference £temporary2724 tp 0
	mov rsi, [rbp + 44]

 strftime$196:
	; Parameter 164 signed int £temporary2724
	mov eax, [rsi + 4]
	mov [rbp + 164], eax

 strftime$197:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$198
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$198:
	; PostCall 124

 strftime$199:
	; Jump 312
	jmp strftime$312

 strftime$200:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$201:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$202:
	; Parameter 156 pointer string_25s#
	mov qword [rbp + 156], @6746string_25s#

 strftime$203:
	; Equal 206 index integral4$0#
	cmp dword [rbp + 92], 0
	je strftime$206

 strftime$204:
	; Assign £temporary2727 string_AM#
	mov rax, @6747string_AM#

 strftime$205:
	; Jump 207
	jmp strftime$207

 strftime$206:
	; Assign £temporary2727 string_PM#
	mov rax, @6748string_PM#

 strftime$207:
	; Parameter 164 pointer £temporary2727
	mov [rbp + 164], rax

 strftime$208:
	; Call 124 sprintf 8
	mov qword [rbp + 124], strftime$209
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp sprintf

 strftime$209:
	; PostCall 124

 strftime$210:
	; Jump 312
	jmp strftime$312

 strftime$211:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$212:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$213:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6752string_2502i#

 strftime$214:
	; Dereference £temporary2729 tp 0
	mov rsi, [rbp + 44]

 strftime$215:
	; Parameter 164 signed int £temporary2729
	mov eax, [rsi]
	mov [rbp + 164], eax

 strftime$216:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$217
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$217:
	; PostCall 124

 strftime$218:
	; Jump 312
	jmp strftime$312

 strftime$219:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$220:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$221:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6755string_2502i#

 strftime$222:
	; Parameter 164 signed int weekNumberStartSunday
	mov eax, [rbp + 96]
	mov [rbp + 164], eax

 strftime$223:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$224
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$224:
	; PostCall 124

 strftime$225:
	; Jump 312
	jmp strftime$312

 strftime$226:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$227:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$228:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6758string_2502i#

 strftime$229:
	; Dereference £temporary2732 tp 0
	mov rsi, [rbp + 44]

 strftime$230:
	; Parameter 164 signed int £temporary2732
	mov eax, [rsi + 24]
	mov [rbp + 164], eax

 strftime$231:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$232
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$232:
	; PostCall 124

 strftime$233:
	; Jump 312
	jmp strftime$312

 strftime$234:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$235:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$236:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6761string_2502i#

 strftime$237:
	; Parameter 164 signed int weekNumberStartMonday
	mov eax, [rbp + 100]
	mov [rbp + 164], eax

 strftime$238:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$239
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$239:
	; PostCall 124

 strftime$240:
	; Jump 312
	jmp strftime$312

 strftime$241:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$242:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$243:
	; Parameter 156 pointer string_2502i3A2502i3A2502i#
	mov qword [rbp + 156], @6764string_2502i3A2502i3A2502i#

 strftime$244:
	; Dereference £temporary2735 tp 0
	mov rsi, [rbp + 44]

 strftime$245:
	; Parameter 164 signed int £temporary2735
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$246:
	; Dereference £temporary2736 tp 0
	mov rsi, [rbp + 44]

 strftime$247:
	; Parameter 168 signed int £temporary2736
	mov eax, [rsi + 4]
	mov [rbp + 168], eax

 strftime$248:
	; Dereference £temporary2737 tp 0
	mov rsi, [rbp + 44]

 strftime$249:
	; Parameter 172 signed int £temporary2737
	mov eax, [rsi]
	mov [rbp + 172], eax

 strftime$250:
	; Call 124 sprintf 12
	mov qword [rbp + 124], strftime$251
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$251:
	; PostCall 124

 strftime$252:
	; Jump 312
	jmp strftime$312

 strftime$253:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$254:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$255:
	; Parameter 156 pointer string_2502i3A2502i3A2502i#
	mov qword [rbp + 156], @6767string_2502i3A2502i3A2502i#

 strftime$256:
	; Dereference £temporary2739 tp 0
	mov rsi, [rbp + 44]

 strftime$257:
	; Parameter 164 signed int £temporary2739
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$258:
	; Dereference £temporary2740 tp 0
	mov rsi, [rbp + 44]

 strftime$259:
	; Parameter 168 signed int £temporary2740
	mov eax, [rsi + 4]
	mov [rbp + 168], eax

 strftime$260:
	; Dereference £temporary2741 tp 0
	mov rsi, [rbp + 44]

 strftime$261:
	; Parameter 172 signed int £temporary2741
	mov eax, [rsi]
	mov [rbp + 172], eax

 strftime$262:
	; Call 124 sprintf 12
	mov qword [rbp + 124], strftime$263
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$263:
	; PostCall 124

 strftime$264:
	; Jump 312
	jmp strftime$312

 strftime$265:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$266:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$267:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6770string_2502i#

 strftime$268:
	; Dereference £temporary2743 tp 0
	mov rsi, [rbp + 44]

 strftime$269:
	; Modulo £temporary2744 £temporary2743 integral4$100#
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [@6771integral4$100#]

 strftime$270:
	; Parameter 164 signed int £temporary2744
	mov [rbp + 164], edx

 strftime$271:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$272
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$272:
	; PostCall 124

 strftime$273:
	; Jump 312
	jmp strftime$312

 strftime$274:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$275:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$276:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6774string_2502i#

 strftime$277:
	; Dereference £temporary2746 tp 0
	mov rsi, [rbp + 44]

 strftime$278:
	; Add £temporary2747 £temporary2746 integral4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$279:
	; Parameter 164 signed int £temporary2747
	mov [rbp + 164], eax

 strftime$280:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$281
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$281:
	; PostCall 124

 strftime$282:
	; Jump 312
	jmp strftime$312

 strftime$283:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$284:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$285:
	; Dereference £temporary2749 tp 0
	mov rsi, [rbp + 44]

 strftime$286:
	; Equal 289 £temporary2749 integral4$0#
	cmp dword [rsi + 32], 0
	je strftime$289

 strftime$287:
	; Assign £temporary2751 string_summer#
	mov rax, @6778string_summer#

 strftime$288:
	; Jump 290
	jmp strftime$290

 strftime$289:
	; Assign £temporary2751 string_winter#
	mov rax, @6779string_winter#

 strftime$290:
	; Parameter 156 pointer £temporary2751
	mov [rbp + 156], rax

 strftime$291:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$292
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$292:
	; PostCall 124

 strftime$293:
	; Jump 312
	jmp strftime$312

 strftime$294:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$295:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$296:
	; Parameter 156 pointer string_25#
	mov qword [rbp + 156], @6783string_25#

 strftime$297:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$298
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$298:
	; PostCall 124

 strftime$299:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$300:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$301:
	; Parameter 156 pointer string_#
	mov qword [rbp + 156], @6784string_#

 strftime$302:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$303
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$303:
	; PostCall 124

 strftime$304:
	; Jump 312
	jmp strftime$312

 strftime$305:
	; Dereference £temporary2755 add 0
	mov rsi, rbp
	add rsi, 104

 strftime$306:
	; IntegralToIntegral £temporary2757 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$307:
	; Add £temporary2758 format £temporary2757
	mov rdi, [rbp + 36]
	add rdi, rax

 strftime$308:
	; Dereference £temporary2756 £temporary2758 0

 strftime$309:
	; Assign £temporary2755 £temporary2756
	mov al, [rdi]
	mov [rsi], al

 strftime$310:
	; Dereference £temporary2759 add 0
	mov rsi, rbp
	add rsi, 104

 strftime$311:
	; Assign £temporary2759 integral1$0#
	mov byte [rsi + 1], 0

 strftime$312:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$313:
	; Parameter 148 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 148], rax

 strftime$314:
	; Call 124 strlen 0
	mov qword [rbp + 124], strftime$315
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strlen

 strftime$315:
	; PostCall 124

 strftime$316:
	; GetReturnValue £temporary2760

 strftime$317:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 124], ebx

 strftime$318:
	; Parameter 148 pointer add
	mov [rbp + 152], rbp
	add qword [rbp + 152], 104

 strftime$319:
	; Call 124 strlen 0
	mov qword [rbp + 128], strftime$320
	mov [rbp + 136], rbp
	add rbp, 128
	jmp strlen

 strftime$320:
	; PostCall 124
	mov eax, ebx
	mov ebx, [rbp + 124]

 strftime$321:
	; GetReturnValue £temporary2761

 strftime$322:
	; Add £temporary2762 £temporary2760 £temporary2761
	add ebx, eax

 strftime$323:
	; GreaterThanEqual 331 £temporary2762 maxSize
	cmp ebx, [rbp + 32]
	jge strftime$331

 strftime$324:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$325:
	; Parameter 148 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 148], rax

 strftime$326:
	; Parameter 156 pointer add
	mov [rbp + 156], rbp
	add qword [rbp + 156], 104

 strftime$327:
	; Call 124 strcat 0
	mov qword [rbp + 124], strftime$328
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcat

 strftime$328:
	; PostCall 124

 strftime$329:
	; Add index index integral4$1#
	inc dword [rbp + 92]

 strftime$330:
	; Jump 49
	jmp strftime$49

 strftime$331:
	; PreCall 92 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$332:
	; Parameter 116 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

 strftime$333:
	; Call 92 strlen 0
	mov qword [rbp + 92], strftime$334
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strlen

 strftime$334:
	; PostCall 92

 strftime$335:
	; GetReturnValue £temporary2765

 strftime$336:
	; SetReturnValue

 strftime$337:
	; Return £temporary2765
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strftime$338:
	; FunctionEnd strftime
