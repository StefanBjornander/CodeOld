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

@6457integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@6459integral4$100#:
	; Initializer SignedInt 100
	dd 100

section .data

@6461integral4$400#:
	; Initializer SignedInt 400
	dd 400

section .text

 @6456$isLeapYear:
	; Modulo £temporary2479 year integral4$4#
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@6457integral4$4#]

 @6456$isLeapYear$1:
	; NotEqual 4 £temporary2479 integral4$0#
	cmp edx, 0
	jne @6456$isLeapYear$4

 @6456$isLeapYear$2:
	; Modulo £temporary2481 year integral4$100#
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@6459integral4$100#]

 @6456$isLeapYear$3:
	; NotEqual 6 £temporary2481 integral4$0#
	cmp edx, 0
	jne @6456$isLeapYear$6

 @6456$isLeapYear$4:
	; Modulo £temporary2484 year integral4$400#
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@6461integral4$400#]

 @6456$isLeapYear$5:
	; NotEqual 8 £temporary2484 integral4$0#
	cmp edx, 0
	jne @6456$isLeapYear$8

 @6456$isLeapYear$6:
	; Assign £temporary2487 integral4$1#
	mov ebx, 1

 @6456$isLeapYear$7:
	; Jump 9
	jmp @6456$isLeapYear$9

 @6456$isLeapYear$8:
	; Assign £temporary2487 integral4$0#
	mov ebx, 0

 @6456$isLeapYear$9:
	; SetReturnValue

 @6456$isLeapYear$10:
	; Return £temporary2487
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @6456$isLeapYear$11:
	; FunctionEnd isLeapYear

section .text

 time:
	; AssignRegister rax integral8$201#
	mov rax, 201

 time$1:
	; Address £temporary2490 time
	mov rdi, rbp
	add rdi, 32

 time$2:
	; IntegralToIntegral £temporary2491 £temporary2490

 time$3:
	; AssignRegister rdi £temporary2491

 time$4:
	; SysCall
	syscall

 time$5:
	; Equal 8 timePtr integral8$0#
	cmp qword [rbp + 24], 0
	je time$8

 time$6:
	; Dereference £temporary2493 timePtr 0
	mov rsi, [rbp + 24]

 time$7:
	; Assign £temporary2493 time
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

@6474integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@6476integral4$365#:
	; Initializer SignedInt 365
	dd 365

section .data

@6479integral8$86400#:
	; Initializer SignedLongInt 86400
	dq 86400

section .data

@6480integral8$3600#:
	; Initializer SignedLongInt 3600
	dq 3600

section .data

@6481integral8$60#:
	; Initializer SignedLongInt 60
	dq 60

section .text

 mktime:
	; Equal 28 tp integral8$0#
	cmp qword [rbp + 24], 0
	je mktime$28

 mktime$1:
	; Dereference £temporary2496 tp 0
	mov rsi, [rbp + 24]

 mktime$2:
	; Subtract £temporary2497 £temporary2496 integral4$69#
	mov eax, [rsi + 20]
	sub eax, 69

 mktime$3:
	; Divide £temporary2498 £temporary2497 integral4$4#
	xor edx, edx
	idiv dword [@6474integral4$4#]

 mktime$4:
	; IntegralToIntegral £temporary2499 £temporary2498
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

 mktime$5:
	; Assign leapDays £temporary2499
	mov [rbp + 32], rax

 mktime$6:
	; Dereference £temporary2500 tp 0
	mov rsi, [rbp + 24]

 mktime$7:
	; Subtract £temporary2501 £temporary2500 integral4$70#
	mov eax, [rsi + 20]
	sub eax, 70

 mktime$8:
	; Multiply £temporary2502 £temporary2501 integral4$365#
	xor edx, edx
	imul dword [@6476integral4$365#]

 mktime$9:
	; IntegralToIntegral £temporary2503 £temporary2502
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

 mktime$10:
	; Add £temporary2504 £temporary2503 leapDays
	add rax, [rbp + 32]

 mktime$11:
	; Dereference £temporary2505 tp 0
	mov rsi, [rbp + 24]

 mktime$12:
	; IntegralToIntegral £temporary2506 £temporary2505
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

 mktime$13:
	; Add totalDays £temporary2504 £temporary2506
	add rax, rbx
	mov [rbp + 40], rax

 mktime$14:
	; Multiply £temporary2508 totalDays integral8$86400#
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [@6479integral8$86400#]
	mov rbx, rax

 mktime$15:
	; Dereference £temporary2509 tp 0
	mov rsi, [rbp + 24]

 mktime$16:
	; IntegralToIntegral £temporary2510 £temporary2509
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

 mktime$17:
	; Multiply £temporary2511 £temporary2510 integral8$3600#
	xor rdx, rdx
	imul qword [@6480integral8$3600#]

 mktime$18:
	; Add £temporary2512 £temporary2508 £temporary2511
	add rbx, rax

 mktime$19:
	; Dereference £temporary2513 tp 0
	mov rsi, [rbp + 24]

 mktime$20:
	; IntegralToIntegral £temporary2514 £temporary2513
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

 mktime$21:
	; Multiply £temporary2515 £temporary2514 integral8$60#
	xor rdx, rdx
	imul qword [@6481integral8$60#]

 mktime$22:
	; Add £temporary2516 £temporary2512 £temporary2515
	add rbx, rax

 mktime$23:
	; Dereference £temporary2517 tp 0
	mov rsi, [rbp + 24]

 mktime$24:
	; IntegralToIntegral £temporary2518 £temporary2517
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

 mktime$25:
	; Add £temporary2519 £temporary2516 £temporary2518
	add rbx, rax

 mktime$26:
	; SetReturnValue

 mktime$27:
	; Return £temporary2519
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

@6484$g_timeStruct:
	; InitializerZero 36
	times 36 db 0

section .data

@6489integral8$86400#:
	; Initializer SignedLongInt 86400
	dq 86400

section .data

@6492integral8$3600#:
	; Initializer SignedLongInt 3600
	dq 3600

section .data

@6495integral8$3600#:
	; Initializer SignedLongInt 3600
	dq 3600

section .data

@6497integral8$60#:
	; Initializer SignedLongInt 60
	dq 60

section .data

@6499integral8$60#:
	; Initializer SignedLongInt 60
	dq 60

section .data

@6500integral8$86400#:
	; Initializer SignedLongInt 86400
	dq 86400

section .data

@6509integral8$7#:
	; Initializer SignedLongInt 7
	dq 7

section .data

@6512integral8$365#:
	; Initializer SignedLongInt 365
	dq 365

section .data

@6516integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@6519integral8$365#:
	; Initializer SignedLongInt 365
	dq 365

section .data

@6546integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@6548integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .text

 gmtime:
	; Equal 91 timePtr integral8$0#
	cmp qword [rbp + 24], 0
	je gmtime$91

 gmtime$1:
	; Dereference £temporary2521 timePtr 0
	mov rsi, [rbp + 24]

 gmtime$2:
	; Assign time £temporary2521
	mov rax, [rsi]
	mov [rbp + 32], rax

 gmtime$3:
	; Modulo secondsOfDay time integral8$86400#
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@6489integral8$86400#]
	mov [rbp + 40], rdx

 gmtime$4:
	; Modulo secondsOfHour secondsOfDay integral8$3600#
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@6492integral8$3600#]
	mov [rbp + 48], rdx

 gmtime$5:
	; Divide £temporary2525 secondsOfDay integral8$3600#
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@6495integral8$3600#]

 gmtime$6:
	; IntegralToIntegral £temporary2526 £temporary2525
	cmp rax, 0
	jge gmtime$7
	neg rax
	neg eax

 gmtime$7:
	; Assign g_timeStruct.tm_hour £temporary2526
	mov [@6484$g_timeStruct + 8], eax

 gmtime$8:
	; Divide £temporary2528 secondsOfHour integral8$60#
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@6497integral8$60#]

 gmtime$9:
	; IntegralToIntegral £temporary2529 £temporary2528
	cmp rax, 0
	jge gmtime$10
	neg rax
	neg eax

 gmtime$10:
	; Assign g_timeStruct.tm_min £temporary2529
	mov [@6484$g_timeStruct + 4], eax

 gmtime$11:
	; Modulo £temporary2531 secondsOfHour integral8$60#
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@6499integral8$60#]

 gmtime$12:
	; IntegralToIntegral £temporary2532 £temporary2531
	cmp rdx, 0
	jge gmtime$13
	neg rdx
	neg edx

 gmtime$13:
	; Assign g_timeStruct.tm_sec £temporary2532
	mov [@6484$g_timeStruct], edx

 gmtime$14:
	; Divide totalDays time integral8$86400#
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@6500integral8$86400#]
	mov [rbp + 56], rax

 gmtime$15:
	; GreaterThanEqual 20 totalDays integral8$3#
	cmp qword [rbp + 56], 3
	jge gmtime$20

 gmtime$16:
	; Add £temporary2536 totalDays integral8$4#
	mov rax, [rbp + 56]
	add rax, 4

 gmtime$17:
	; IntegralToIntegral £temporary2537 £temporary2536
	cmp rax, 0
	jge gmtime$18
	neg rax
	neg eax

 gmtime$18:
	; Assign g_timeStruct.tm_wday £temporary2537
	mov [@6484$g_timeStruct + 24], eax

 gmtime$19:
	; Jump 24
	jmp gmtime$24

 gmtime$20:
	; Subtract £temporary2539 totalDays integral8$3#
	mov rax, [rbp + 56]
	sub rax, 3

 gmtime$21:
	; Modulo £temporary2540 £temporary2539 integral8$7#
	xor rdx, rdx
	idiv qword [@6509integral8$7#]

 gmtime$22:
	; IntegralToIntegral £temporary2541 £temporary2540
	cmp rdx, 0
	jge gmtime$23
	neg rdx
	neg edx

 gmtime$23:
	; Assign g_timeStruct.tm_wday £temporary2541
	mov [@6484$g_timeStruct + 24], edx

 gmtime$24:
	; Divide £temporary2542 totalDays integral8$365#
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@6512integral8$365#]

 gmtime$25:
	; Add £temporary2543 £temporary2542 integral8$1970#
	add rax, 1970

 gmtime$26:
	; IntegralToIntegral £temporary2544 £temporary2543
	cmp rax, 0
	jge gmtime$27
	neg rax
	neg eax

 gmtime$27:
	; Assign year £temporary2544
	mov [rbp + 64], eax

 gmtime$28:
	; Subtract £temporary2545 year integral4$1969#
	mov eax, [rbp + 64]
	sub eax, 1969

 gmtime$29:
	; Divide leapDays £temporary2545 integral4$4#
	xor edx, edx
	idiv dword [@6516integral4$4#]
	mov [rbp + 68], eax

 gmtime$30:
	; Modulo totalDays totalDays integral8$365#
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@6519integral8$365#]
	mov [rbp + 56], rdx

 gmtime$31:
	; IntegralToIntegral £temporary2548 leapDays
	mov eax, [rbp + 68]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$32
	neg eax
	neg rax

 gmtime$32:
	; Subtract totalDays totalDays £temporary2548
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
	jmp @6456$isLeapYear

 gmtime$38:
	; PostCall 72

 gmtime$39:
	; GetReturnValue £temporary2552

 gmtime$40:
	; Equal 43 £temporary2552 integral4$0#
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
	mov [@6484$g_timeStruct + 20], eax

 gmtime$45:
	; IntegralToIntegral £temporary2559 totalDays
	mov rax, [rbp + 56]
	cmp rax, 0
	jge gmtime$46
	neg rax
	neg eax

 gmtime$46:
	; Assign g_timeStruct.tm_yday £temporary2559
	mov [@6484$g_timeStruct + 28], eax

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
	jmp @6456$isLeapYear

 gmtime$51:
	; PostCall 76

 gmtime$52:
	; GetReturnValue £temporary2560

 gmtime$53:
	; Equal 56 £temporary2560 integral4$0#
	cmp ebx, 0
	je gmtime$56

 gmtime$54:
	; Assign £temporary2562 integral4$29#
	mov eax, 29

 gmtime$55:
	; Jump 57
	jmp gmtime$57

 gmtime$56:
	; Assign £temporary2562 integral4$28#
	mov eax, 28

 gmtime$57:
	; Assign daysOfMonths[1] £temporary2562
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
	; Multiply £temporary2576 month integral4$4#
	mov eax, [rbp + 120]
	xor edx, edx
	imul dword [@6546integral4$4#]

 gmtime$70:
	; IntegralToIntegral £temporary2577 £temporary2576
	mov rbx, 4294967295
	and rax, rbx

 gmtime$71:
	; Add £temporary2578 daysOfMonths £temporary2577
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$72:
	; Dereference £temporary2575 £temporary2578 0

 gmtime$73:
	; IntegralToIntegral £temporary2579 £temporary2575
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$74
	neg eax
	neg rax

 gmtime$74:
	; LessThan 84 totalDays £temporary2579
	cmp [rbp + 56], rax
	jl gmtime$84

 gmtime$75:
	; Assign £temporary2581 month
	mov eax, [rbp + 120]

 gmtime$76:
	; Add month month integral4$1#
	inc dword [rbp + 120]

 gmtime$77:
	; Multiply £temporary2584 £temporary2581 integral4$4#
	xor edx, edx
	imul dword [@6548integral4$4#]

 gmtime$78:
	; IntegralToIntegral £temporary2585 £temporary2584
	mov rbx, 4294967295
	and rax, rbx

 gmtime$79:
	; Add £temporary2586 daysOfMonths £temporary2585
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$80:
	; Dereference £temporary2583 £temporary2586 0

 gmtime$81:
	; IntegralToIntegral £temporary2587 £temporary2583
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$82
	neg eax
	neg rax

 gmtime$82:
	; Subtract totalDays totalDays £temporary2587
	sub [rbp + 56], rax

 gmtime$83:
	; Jump 69
	jmp gmtime$69

 gmtime$84:
	; Assign g_timeStruct.tm_mon month
	mov eax, [rbp + 120]
	mov [@6484$g_timeStruct + 16], eax

 gmtime$85:
	; Add £temporary2591 totalDays integral8$1#
	mov rax, [rbp + 56]
	inc rax

 gmtime$86:
	; IntegralToIntegral £temporary2592 £temporary2591
	cmp rax, 0
	jge gmtime$87
	neg rax
	neg eax

 gmtime$87:
	; Assign g_timeStruct.tm_mday £temporary2592
	mov [@6484$g_timeStruct + 12], eax

 gmtime$88:
	; Assign g_timeStruct.tm_isdst integral4$minus1#
	mov dword [@6484$g_timeStruct + 32], -1

 gmtime$89:
	; SetReturnValue

 gmtime$90:
	; Return StaticAddress_@6484$g_timeStruct_0#
	mov rbx, @6484$g_timeStruct
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

@6565integral8$3600#:
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
	; GetReturnValue £temporary2594

 localtime$5:
	; Assign tmPtr £temporary2594
	mov [rbp + 32], rbx

 localtime$6:
	; Dereference £temporary2595 timePtr 0
	mov rsi, [rbp + 24]

 localtime$7:
	; Assign t £temporary2595
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
	; GetReturnValue £temporary2596

 localtime$12:
	; Assign localeConvPtr £temporary2596
	mov [rbp + 48], rbx

 localtime$13:
	; Equal 25 localeConvPtr integral8$0#
	cmp qword [rbp + 48], 0
	je localtime$25

 localtime$14:
	; Dereference £temporary2598 tmPtr 0
	mov rsi, [rbp + 32]

 localtime$15:
	; NotEqual 19 £temporary2598 integral4$1#
	cmp dword [rsi + 32], 1
	jne localtime$19

 localtime$16:
	; Dereference £temporary2600 localeConvPtr 0
	mov rsi, [rbp + 48]

 localtime$17:
	; Assign £temporary2602 £temporary2600
	mov eax, [rsi]

 localtime$18:
	; Jump 21
	jmp localtime$21

 localtime$19:
	; Dereference £temporary2601 localeConvPtr 0
	mov rsi, [rbp + 48]

 localtime$20:
	; Assign £temporary2602 £temporary2601
	mov eax, [rsi + 4]

 localtime$21:
	; Assign timeZone £temporary2602
	mov [rbp + 56], eax

 localtime$22:
	; IntegralToIntegral £temporary2603 timeZone
	mov eax, [rbp + 56]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge localtime$23
	neg eax
	neg rax

 localtime$23:
	; Multiply £temporary2604 £temporary2603 integral8$3600#
	xor rdx, rdx
	imul qword [@6565integral8$3600#]

 localtime$24:
	; Add t t £temporary2604
	add [rbp + 40], rax

 localtime$25:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$26:
	; Address £temporary2606 t
	mov rsi, rbp
	add rsi, 40

 localtime$27:
	; Parameter 80 pointer £temporary2606
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
	; GetReturnValue £temporary2607

 localtime$31:
	; SetReturnValue

 localtime$32:
	; Return £temporary2607
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
	; Subtract £temporary2609 time2 time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

 difftime$1:
	; IntegralToFloating £temporary2610 £temporary2609
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 difftime$2:
	; SetReturnValue

 difftime$3:
	; Return £temporary2610
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 difftime$4:
	; FunctionEnd difftime

section .data

@6572$g_timeString:
	; InitializerZero 256
	times 256 db 0

section .data

@6573string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

@6574string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

@6575string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

@6576string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

@6577string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

@6578string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

@6579string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@6580$g_shortDayList:
	; Initializer Pointer @6573string_Sun#
	dq @6573string_Sun#
	; Initializer Pointer @6574string_Mon#
	dq @6574string_Mon#
	; Initializer Pointer @6575string_Tue#
	dq @6575string_Tue#
	; Initializer Pointer @6576string_Wed#
	dq @6576string_Wed#
	; Initializer Pointer @6577string_Thu#
	dq @6577string_Thu#
	; Initializer Pointer @6578string_Fri#
	dq @6578string_Fri#
	; Initializer Pointer @6579string_Sat#
	dq @6579string_Sat#

section .data

@6581string_Sunday#:
	; Initializer String Sunday
	db "Sunday", 0

section .data

@6582string_Monday#:
	; Initializer String Monday
	db "Monday", 0

section .data

@6583string_Tuesday#:
	; Initializer String Tuesday
	db "Tuesday", 0

section .data

@6584string_Wednesday#:
	; Initializer String Wednesday
	db "Wednesday", 0

section .data

@6585string_Thursday#:
	; Initializer String Thursday
	db "Thursday", 0

section .data

@6586string_Friday#:
	; Initializer String Friday
	db "Friday", 0

section .data

@6587string_Saturday#:
	; Initializer String Saturday
	db "Saturday", 0

section .data

@6588$g_longDayList:
	; Initializer Pointer @6581string_Sunday#
	dq @6581string_Sunday#
	; Initializer Pointer @6582string_Monday#
	dq @6582string_Monday#
	; Initializer Pointer @6583string_Tuesday#
	dq @6583string_Tuesday#
	; Initializer Pointer @6584string_Wednesday#
	dq @6584string_Wednesday#
	; Initializer Pointer @6585string_Thursday#
	dq @6585string_Thursday#
	; Initializer Pointer @6586string_Friday#
	dq @6586string_Friday#
	; Initializer Pointer @6587string_Saturday#
	dq @6587string_Saturday#

section .data

@6589string_Jan#:
	; Initializer String Jan
	db "Jan", 0

section .data

@6590string_Feb#:
	; Initializer String Feb
	db "Feb", 0

section .data

@6591string_Mar#:
	; Initializer String Mar
	db "Mar", 0

section .data

@6592string_Apr#:
	; Initializer String Apr
	db "Apr", 0

section .data

@6593string_May#:
	; Initializer String May
	db "May", 0

section .data

@6594string_Jun#:
	; Initializer String Jun
	db "Jun", 0

section .data

@6595string_Jul#:
	; Initializer String Jul
	db "Jul", 0

section .data

@6596string_Aug#:
	; Initializer String Aug
	db "Aug", 0

section .data

@6597string_Sep#:
	; Initializer String Sep
	db "Sep", 0

section .data

@6598string_Oct#:
	; Initializer String Oct
	db "Oct", 0

section .data

@6599string_Nov#:
	; Initializer String Nov
	db "Nov", 0

section .data

@6600string_Dec#:
	; Initializer String Dec
	db "Dec", 0

section .data

@6601$g_shortMonthList:
	; Initializer Pointer @6589string_Jan#
	dq @6589string_Jan#
	; Initializer Pointer @6590string_Feb#
	dq @6590string_Feb#
	; Initializer Pointer @6591string_Mar#
	dq @6591string_Mar#
	; Initializer Pointer @6592string_Apr#
	dq @6592string_Apr#
	; Initializer Pointer @6593string_May#
	dq @6593string_May#
	; Initializer Pointer @6594string_Jun#
	dq @6594string_Jun#
	; Initializer Pointer @6595string_Jul#
	dq @6595string_Jul#
	; Initializer Pointer @6596string_Aug#
	dq @6596string_Aug#
	; Initializer Pointer @6597string_Sep#
	dq @6597string_Sep#
	; Initializer Pointer @6598string_Oct#
	dq @6598string_Oct#
	; Initializer Pointer @6599string_Nov#
	dq @6599string_Nov#
	; Initializer Pointer @6600string_Dec#
	dq @6600string_Dec#

section .data

@6602string_January#:
	; Initializer String January
	db "January", 0

section .data

@6603string_February#:
	; Initializer String February
	db "February", 0

section .data

@6604string_March#:
	; Initializer String March
	db "March", 0

section .data

@6605string_April#:
	; Initializer String April
	db "April", 0

section .data

@6606string_May#:
	; Initializer String May
	db "May", 0

section .data

@6607string_June#:
	; Initializer String June
	db "June", 0

section .data

@6608string_July#:
	; Initializer String July
	db "July", 0

section .data

@6609string_August#:
	; Initializer String August
	db "August", 0

section .data

@6610string_September#:
	; Initializer String September
	db "September", 0

section .data

@6611string_October#:
	; Initializer String October
	db "October", 0

section .data

@6612string_November#:
	; Initializer String November
	db "November", 0

section .data

@6613string_December#:
	; Initializer String December
	db "December", 0

section .data

@6614$g_longMonthList:
	; Initializer Pointer @6602string_January#
	dq @6602string_January#
	; Initializer Pointer @6603string_February#
	dq @6603string_February#
	; Initializer Pointer @6604string_March#
	dq @6604string_March#
	; Initializer Pointer @6605string_April#
	dq @6605string_April#
	; Initializer Pointer @6606string_May#
	dq @6606string_May#
	; Initializer Pointer @6607string_June#
	dq @6607string_June#
	; Initializer Pointer @6608string_July#
	dq @6608string_July#
	; Initializer Pointer @6609string_August#
	dq @6609string_August#
	; Initializer Pointer @6610string_September#
	dq @6610string_September#
	; Initializer Pointer @6611string_October#
	dq @6611string_October#
	; Initializer Pointer @6612string_November#
	dq @6612string_November#
	; Initializer Pointer @6613string_December#
	dq @6613string_December#

section .data

@6629string_25s2025s2025i202502i3A2502i3A2502i2025i#:
	; Initializer String %s %s %i %02i:%02i:%02i %i
	db "%s %s %i %02i:%02i:%02i %i", 0

section .data

@6630integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6631integral4$8#:
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
	; Dereference £temporary2612 localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$3:
	; Equal 7 £temporary2612 integral8$0#
	cmp qword [rsi + 8], 0
	je asctime$7

 asctime$4:
	; Dereference £temporary2615 localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$5:
	; Assign shortDayList £temporary2615
	mov rax, [rsi + 8]
	mov [rbp + 40], rax

 asctime$6:
	; Jump 8
	jmp asctime$8

 asctime$7:
	; Assign shortDayList g_shortDayList
	mov qword [rbp + 40], @6580$g_shortDayList

 asctime$8:
	; Equal 14 localeConvPtr integral8$0#
	cmp qword [rbp + 32], 0
	je asctime$14

 asctime$9:
	; Dereference £temporary2617 localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$10:
	; Equal 14 £temporary2617 integral8$0#
	cmp qword [rsi + 24], 0
	je asctime$14

 asctime$11:
	; Dereference £temporary2620 localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$12:
	; Assign shortMonthList £temporary2620
	mov rax, [rsi + 24]
	mov [rbp + 48], rax

 asctime$13:
	; Jump 15
	jmp asctime$15

 asctime$14:
	; Assign shortMonthList g_shortMonthList
	mov qword [rbp + 48], @6601$g_shortMonthList

 asctime$15:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asctime$16:
	; Parameter 80 pointer g_timeString
	mov qword [rbp + 80], @6572$g_timeString

 asctime$17:
	; Parameter 88 pointer string_25s2025s2025i202502i3A2502i3A2502i2025i#
	mov qword [rbp + 88], @6629string_25s2025s2025i202502i3A2502i3A2502i2025i#

 asctime$18:
	; Dereference £temporary2621 tp 0
	mov rsi, [rbp + 24]

 asctime$19:
	; Multiply £temporary2623 £temporary2621 integral4$8#
	mov eax, [rsi + 24]
	xor edx, edx
	imul dword [@6630integral4$8#]

 asctime$20:
	; IntegralToIntegral £temporary2624 £temporary2623
	mov rbx, 4294967295
	and rax, rbx

 asctime$21:
	; Add £temporary2625 shortDayList £temporary2624
	mov rsi, [rbp + 40]
	add rsi, rax

 asctime$22:
	; Dereference £temporary2622 £temporary2625 0

 asctime$23:
	; Parameter 96 pointer £temporary2622
	mov rax, [rsi]
	mov [rbp + 96], rax

 asctime$24:
	; Dereference £temporary2626 tp 0
	mov rsi, [rbp + 24]

 asctime$25:
	; Multiply £temporary2628 £temporary2626 integral4$8#
	mov eax, [rsi + 16]
	xor edx, edx
	imul dword [@6631integral4$8#]

 asctime$26:
	; IntegralToIntegral £temporary2629 £temporary2628
	mov rbx, 4294967295
	and rax, rbx

 asctime$27:
	; Add £temporary2630 shortMonthList £temporary2629
	mov rsi, [rbp + 48]
	add rsi, rax

 asctime$28:
	; Dereference £temporary2627 £temporary2630 0

 asctime$29:
	; Parameter 104 pointer £temporary2627
	mov rax, [rsi]
	mov [rbp + 104], rax

 asctime$30:
	; Dereference £temporary2631 tp 0
	mov rsi, [rbp + 24]

 asctime$31:
	; Parameter 112 signed int £temporary2631
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

 asctime$32:
	; Dereference £temporary2632 tp 0
	mov rsi, [rbp + 24]

 asctime$33:
	; Parameter 116 signed int £temporary2632
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

 asctime$34:
	; Dereference £temporary2633 tp 0
	mov rsi, [rbp + 24]

 asctime$35:
	; Parameter 120 signed int £temporary2633
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

 asctime$36:
	; Dereference £temporary2634 tp 0
	mov rsi, [rbp + 24]

 asctime$37:
	; Parameter 124 signed int £temporary2634
	mov eax, [rsi]
	mov [rbp + 124], eax

 asctime$38:
	; Dereference £temporary2635 tp 0
	mov rsi, [rbp + 24]

 asctime$39:
	; Add £temporary2636 £temporary2635 integral4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

 asctime$40:
	; Parameter 128 signed int £temporary2636
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
	mov rbx, @6572$g_timeString
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
	; GetReturnValue £temporary2638

 ctime$6:
	; Parameter 56 pointer £temporary2638
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
	; GetReturnValue £temporary2639

 ctime$10:
	; SetReturnValue

 ctime$11:
	; Return £temporary2639
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ctime$12:
	; FunctionEnd ctime

section .data

@6647integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@6649integral4$365#:
	; Initializer SignedInt 365
	dd 365

section .data

@6656integral4$7#:
	; Initializer SignedInt 7
	dd 7

section .data

@6660integral4$7#:
	; Initializer SignedInt 7
	dd 7

section .text

 getWeekNumber:
	; Dereference £temporary2640 tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$1:
	; Subtract £temporary2641 £temporary2640 integral4$69#
	mov eax, [rsi + 20]
	sub eax, 69

 getWeekNumber$2:
	; Divide £temporary2642 £temporary2641 integral4$4#
	xor edx, edx
	idiv dword [@6647integral4$4#]

 getWeekNumber$3:
	; IntegralToIntegral £temporary2643 £temporary2642
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge getWeekNumber$4
	neg eax
	neg rax

 getWeekNumber$4:
	; Assign leapDays £temporary2643
	mov [rbp + 32], rax

 getWeekNumber$5:
	; Dereference £temporary2644 tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$6:
	; Subtract £temporary2645 £temporary2644 integral4$70#
	mov eax, [rsi + 20]
	sub eax, 70

 getWeekNumber$7:
	; Multiply £temporary2646 £temporary2645 integral4$365#
	xor edx, edx
	imul dword [@6649integral4$365#]

 getWeekNumber$8:
	; IntegralToIntegral £temporary2647 £temporary2646
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge getWeekNumber$9
	neg eax
	neg rax

 getWeekNumber$9:
	; Add £temporary2648 £temporary2647 leapDays
	add rax, [rbp + 32]

 getWeekNumber$10:
	; IntegralToIntegral £temporary2649 £temporary2648
	cmp rax, 0
	jge getWeekNumber$11
	neg rax
	neg eax

 getWeekNumber$11:
	; Assign totalDays £temporary2649
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
	; Subtract £temporary2652 totalDays integral4$3#
	mov eax, [rbp + 40]
	sub eax, 3

 getWeekNumber$16:
	; Modulo weekDayJanuaryFirst £temporary2652 integral4$7#
	xor edx, edx
	idiv dword [@6656integral4$7#]
	mov [rbp + 44], edx

 getWeekNumber$17:
	; Subtract firstWeekSize integral4$7# weekDayJanuaryFirst
	mov eax, 7
	sub eax, [rbp + 44]
	mov [rbp + 48], eax

 getWeekNumber$18:
	; Dereference £temporary2655 tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$19:
	; GreaterThanEqual 22 £temporary2655 firstWeekSize
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
	; Dereference £temporary2657 tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$23:
	; Subtract £temporary2658 £temporary2657 firstWeekSize
	mov eax, [rsi + 28]
	sub eax, [rbp + 48]

 getWeekNumber$24:
	; Divide £temporary2659 £temporary2658 integral4$7#
	xor edx, edx
	idiv dword [@6660integral4$7#]

 getWeekNumber$25:
	; Add £temporary2660 £temporary2659 integral4$1#
	inc eax

 getWeekNumber$26:
	; SetReturnValue

 getWeekNumber$27:
	; Return £temporary2660
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getWeekNumber$28:
	; FunctionEnd getWeekNumber

section .data

@6687string_#:
	; Initializer String 
	db 0

section .data

@6715string_2502i2D2502i2D2502i202502i3A2502i3A2502i#:
	; Initializer String %02i-%02i-%02i %02i:%02i:%02i
	db "%02i-%02i-%02i %02i:%02i:%02i", 0

section .data

@6720string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6723string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6726string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6730string_2503i#:
	; Initializer String %03i
	db "%03i", 0

section .data

@6733string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6737string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6740string_25s#:
	; Initializer String %s
	db "%s", 0

section .data

@6741string_AM#:
	; Initializer String AM
	db "AM", 0

section .data

@6742string_PM#:
	; Initializer String PM
	db "PM", 0

section .data

@6746string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6749string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6752string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6755string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6758string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@6761string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@6764string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6768string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@6772string_summer#:
	; Initializer String summer
	db "summer", 0

section .data

@6773string_winter#:
	; Initializer String winter
	db "winter", 0

section .data

@6777string_25#:
	; Initializer String %
	db "%", 0

section .data

@6778string_#:
	; Initializer String 
	db 0

section .data

@6703integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6706integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6709integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6712integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6727integral4$12#:
	; Initializer SignedInt 12
	dd 12

section .data

@6765integral4$100#:
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
	; GetReturnValue £temporary2661

 strftime$4:
	; Assign localeConvPtr £temporary2661
	mov [rbp + 52], rbx

 strftime$5:
	; Equal 11 localeConvPtr integral8$0#
	cmp qword [rbp + 52], 0
	je strftime$11

 strftime$6:
	; Dereference £temporary2663 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$7:
	; Equal 11 £temporary2663 integral8$0#
	cmp qword [rsi + 8], 0
	je strftime$11

 strftime$8:
	; Dereference £temporary2666 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$9:
	; Assign shortDayList £temporary2666
	mov rax, [rsi + 8]
	mov [rbp + 60], rax

 strftime$10:
	; Jump 12
	jmp strftime$12

 strftime$11:
	; Assign shortDayList g_shortDayList
	mov qword [rbp + 60], @6580$g_shortDayList

 strftime$12:
	; Equal 18 localeConvPtr integral8$0#
	cmp qword [rbp + 52], 0
	je strftime$18

 strftime$13:
	; Dereference £temporary2668 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$14:
	; Equal 18 £temporary2668 integral8$0#
	cmp qword [rsi + 16], 0
	je strftime$18

 strftime$15:
	; Dereference £temporary2671 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$16:
	; Assign longDayList £temporary2671
	mov rax, [rsi + 16]
	mov [rbp + 76], rax

 strftime$17:
	; Jump 19
	jmp strftime$19

 strftime$18:
	; Assign longDayList g_longDayList
	mov qword [rbp + 76], @6588$g_longDayList

 strftime$19:
	; Equal 25 localeConvPtr integral8$0#
	cmp qword [rbp + 52], 0
	je strftime$25

 strftime$20:
	; Dereference £temporary2673 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$21:
	; Equal 25 £temporary2673 integral8$0#
	cmp qword [rsi + 24], 0
	je strftime$25

 strftime$22:
	; Dereference £temporary2676 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$23:
	; Assign shortMonthList £temporary2676
	mov rax, [rsi + 24]
	mov [rbp + 68], rax

 strftime$24:
	; Jump 26
	jmp strftime$26

 strftime$25:
	; Assign shortMonthList g_shortMonthList
	mov qword [rbp + 68], @6601$g_shortMonthList

 strftime$26:
	; Equal 32 localeConvPtr integral8$0#
	cmp qword [rbp + 52], 0
	je strftime$32

 strftime$27:
	; Dereference £temporary2678 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$28:
	; Equal 32 £temporary2678 integral8$0#
	cmp qword [rsi + 32], 0
	je strftime$32

 strftime$29:
	; Dereference £temporary2681 localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$30:
	; Assign longMonthList £temporary2681
	mov rax, [rsi + 32]
	mov [rbp + 84], rax

 strftime$31:
	; Jump 33
	jmp strftime$33

 strftime$32:
	; Assign longMonthList g_longMonthList
	mov qword [rbp + 84], @6614$g_longMonthList

 strftime$33:
	; PreCall 92 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$34:
	; Parameter 116 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

 strftime$35:
	; Parameter 124 pointer string_#
	mov qword [rbp + 124], @6687string_#

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
	; GetReturnValue £temporary2683

 strftime$43:
	; Assign weekNumberStartSunday £temporary2683
	mov [rbp + 96], ebx

 strftime$44:
	; Assign weekNumberStartMonday weekNumberStartSunday
	mov eax, [rbp + 96]
	mov [rbp + 100], eax

 strftime$45:
	; Dereference £temporary2684 tp 0
	mov rsi, [rbp + 44]

 strftime$46:
	; NotEqual 48 £temporary2684 integral4$0#
	cmp dword [rsi + 12], 0
	jne strftime$48

 strftime$47:
	; Subtract weekNumberStartMonday weekNumberStartMonday integral4$1#
	dec dword [rbp + 100]

 strftime$48:
	; Assign index integral4$0#
	mov dword [rbp + 92], 0

 strftime$49:
	; IntegralToIntegral £temporary2688 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$50:
	; Add £temporary2689 format £temporary2688
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$51:
	; Dereference £temporary2687 £temporary2689 0

 strftime$52:
	; Equal 330 £temporary2687 integral1$0#
	cmp byte [rsi], 0
	je strftime$330

 strftime$53:
	; IntegralToIntegral £temporary2693 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$54:
	; Add £temporary2694 format £temporary2693
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$55:
	; Dereference £temporary2692 £temporary2694 0

 strftime$56:
	; NotEqual 304 £temporary2692 integral1$37#
	cmp byte [rsi], 37
	jne strftime$304

 strftime$57:
	; Add index index integral4$1#
	inc dword [rbp + 92]

 strftime$58:
	; IntegralToIntegral £temporary2698 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$59:
	; Add £temporary2699 format £temporary2698
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$60:
	; Dereference £temporary2697 £temporary2699 0

 strftime$61:
	; Case 85 £temporary2697 integral1$97#
	mov al, [rsi]
	cmp al, 97
	je strftime$85

 strftime$62:
	; Case 96 £temporary2697 integral1$65#
	cmp al, 65
	je strftime$96

 strftime$63:
	; Case 107 £temporary2697 integral1$98#
	cmp al, 98
	je strftime$107

 strftime$64:
	; Case 118 £temporary2697 integral1$66#
	cmp al, 66
	je strftime$118

 strftime$65:
	; Case 129 £temporary2697 integral1$99#
	cmp al, 99
	je strftime$129

 strftime$66:
	; Case 149 £temporary2697 integral1$100#
	cmp al, 100
	je strftime$149

 strftime$67:
	; Case 157 £temporary2697 integral1$72#
	cmp al, 72
	je strftime$157

 strftime$68:
	; Case 165 £temporary2697 integral1$73#
	cmp al, 73
	je strftime$165

 strftime$69:
	; Case 174 £temporary2697 integral1$106#
	cmp al, 106
	je strftime$174

 strftime$70:
	; Case 182 £temporary2697 integral1$109#
	cmp al, 109
	je strftime$182

 strftime$71:
	; Case 191 £temporary2697 integral1$77#
	cmp al, 77
	je strftime$191

 strftime$72:
	; Case 199 £temporary2697 integral1$112#
	cmp al, 112
	je strftime$199

 strftime$73:
	; Case 210 £temporary2697 integral1$83#
	cmp al, 83
	je strftime$210

 strftime$74:
	; Case 218 £temporary2697 integral1$85#
	cmp al, 85
	je strftime$218

 strftime$75:
	; Case 225 £temporary2697 integral1$119#
	cmp al, 119
	je strftime$225

 strftime$76:
	; Case 233 £temporary2697 integral1$87#
	cmp al, 87
	je strftime$233

 strftime$77:
	; Case 240 £temporary2697 integral1$120#
	cmp al, 120
	je strftime$240

 strftime$78:
	; Case 252 £temporary2697 integral1$88#
	cmp al, 88
	je strftime$252

 strftime$79:
	; Case 264 £temporary2697 integral1$121#
	cmp al, 121
	je strftime$264

 strftime$80:
	; Case 273 £temporary2697 integral1$89#
	cmp al, 89
	je strftime$273

 strftime$81:
	; Case 282 £temporary2697 integral1$90#
	cmp al, 90
	je strftime$282

 strftime$82:
	; Case 293 £temporary2697 integral1$37#
	cmp al, 37
	je strftime$293

 strftime$83:
	; CaseEnd £temporary2697

 strftime$84:
	; Jump 298
	jmp strftime$298

 strftime$85:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$86:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$87:
	; Dereference £temporary2700 tp 0
	mov rsi, [rbp + 44]

 strftime$88:
	; Multiply £temporary2702 £temporary2700 integral4$8#
	mov eax, [rsi + 24]
	xor edx, edx
	imul dword [@6703integral4$8#]

 strftime$89:
	; IntegralToIntegral £temporary2703 £temporary2702
	mov rbx, 4294967295
	and rax, rbx

 strftime$90:
	; Add £temporary2704 shortDayList £temporary2703
	mov rsi, [rbp + 60]
	add rsi, rax

 strftime$91:
	; Dereference £temporary2701 £temporary2704 0

 strftime$92:
	; Parameter 156 pointer £temporary2701
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$93:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$94
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$94:
	; PostCall 124

 strftime$95:
	; Jump 311
	jmp strftime$311

 strftime$96:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$97:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$98:
	; Dereference £temporary2706 tp 0
	mov rsi, [rbp + 44]

 strftime$99:
	; Multiply £temporary2708 £temporary2706 integral4$8#
	mov eax, [rsi + 24]
	xor edx, edx
	imul dword [@6706integral4$8#]

 strftime$100:
	; IntegralToIntegral £temporary2709 £temporary2708
	mov rbx, 4294967295
	and rax, rbx

 strftime$101:
	; Add £temporary2710 longDayList £temporary2709
	mov rsi, [rbp + 76]
	add rsi, rax

 strftime$102:
	; Dereference £temporary2707 £temporary2710 0

 strftime$103:
	; Parameter 156 pointer £temporary2707
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$104:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$105
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$105:
	; PostCall 124

 strftime$106:
	; Jump 311
	jmp strftime$311

 strftime$107:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$108:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$109:
	; Dereference £temporary2712 tp 0
	mov rsi, [rbp + 44]

 strftime$110:
	; Multiply £temporary2714 £temporary2712 integral4$8#
	mov eax, [rsi + 16]
	xor edx, edx
	imul dword [@6709integral4$8#]

 strftime$111:
	; IntegralToIntegral £temporary2715 £temporary2714
	mov rbx, 4294967295
	and rax, rbx

 strftime$112:
	; Add £temporary2716 shortMonthList £temporary2715
	mov rsi, [rbp + 68]
	add rsi, rax

 strftime$113:
	; Dereference £temporary2713 £temporary2716 0

 strftime$114:
	; Parameter 156 pointer £temporary2713
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$115:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$116
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$116:
	; PostCall 124

 strftime$117:
	; Jump 311
	jmp strftime$311

 strftime$118:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$119:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$120:
	; Dereference £temporary2718 tp 0
	mov rsi, [rbp + 44]

 strftime$121:
	; Multiply £temporary2720 £temporary2718 integral4$8#
	mov eax, [rsi + 16]
	xor edx, edx
	imul dword [@6712integral4$8#]

 strftime$122:
	; IntegralToIntegral £temporary2721 £temporary2720
	mov rbx, 4294967295
	and rax, rbx

 strftime$123:
	; Add £temporary2722 longMonthList £temporary2721
	mov rsi, [rbp + 84]
	add rsi, rax

 strftime$124:
	; Dereference £temporary2719 £temporary2722 0

 strftime$125:
	; Parameter 156 pointer £temporary2719
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$126:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$127
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$127:
	; PostCall 124

 strftime$128:
	; Jump 311
	jmp strftime$311

 strftime$129:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$130:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$131:
	; Parameter 156 pointer string_2502i2D2502i2D2502i202502i3A2502i3A2502i#
	mov qword [rbp + 156], @6715string_2502i2D2502i2D2502i202502i3A2502i3A2502i#

 strftime$132:
	; Dereference £temporary2724 tp 0
	mov rsi, [rbp + 44]

 strftime$133:
	; Add £temporary2725 £temporary2724 integral4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$134:
	; Parameter 164 signed int £temporary2725
	mov [rbp + 164], eax

 strftime$135:
	; Dereference £temporary2726 tp 0
	mov rsi, [rbp + 44]

 strftime$136:
	; Add £temporary2727 £temporary2726 integral4$1#
	mov eax, [rsi + 16]
	inc eax

 strftime$137:
	; Parameter 168 signed int £temporary2727
	mov [rbp + 168], eax

 strftime$138:
	; Dereference £temporary2728 tp 0
	mov rsi, [rbp + 44]

 strftime$139:
	; Parameter 172 signed int £temporary2728
	mov eax, [rsi + 12]
	mov [rbp + 172], eax

 strftime$140:
	; Dereference £temporary2729 tp 0
	mov rsi, [rbp + 44]

 strftime$141:
	; Parameter 176 signed int £temporary2729
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$142:
	; Dereference £temporary2730 tp 0
	mov rsi, [rbp + 44]

 strftime$143:
	; Parameter 180 signed int £temporary2730
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$144:
	; Dereference £temporary2731 tp 0
	mov rsi, [rbp + 44]

 strftime$145:
	; Parameter 184 signed int £temporary2731
	mov eax, [rsi]
	mov [rbp + 184], eax

 strftime$146:
	; Call 124 sprintf 24
	mov qword [rbp + 124], strftime$147
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 24
	jmp sprintf

 strftime$147:
	; PostCall 124

 strftime$148:
	; Jump 311
	jmp strftime$311

 strftime$149:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$150:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$151:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6720string_2502i#

 strftime$152:
	; Dereference £temporary2733 tp 0
	mov rsi, [rbp + 44]

 strftime$153:
	; Parameter 164 signed int £temporary2733
	mov eax, [rsi + 12]
	mov [rbp + 164], eax

 strftime$154:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$155
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$155:
	; PostCall 124

 strftime$156:
	; Jump 311
	jmp strftime$311

 strftime$157:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$158:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$159:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6723string_2502i#

 strftime$160:
	; Dereference £temporary2735 tp 0
	mov rsi, [rbp + 44]

 strftime$161:
	; Parameter 164 signed int £temporary2735
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$162:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$163
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$163:
	; PostCall 124

 strftime$164:
	; Jump 311
	jmp strftime$311

 strftime$165:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$166:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$167:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6726string_2502i#

 strftime$168:
	; Dereference £temporary2737 tp 0
	mov rsi, [rbp + 44]

 strftime$169:
	; Modulo £temporary2738 £temporary2737 integral4$12#
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [@6727integral4$12#]

 strftime$170:
	; Parameter 164 signed int £temporary2738
	mov [rbp + 164], edx

 strftime$171:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$172
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$172:
	; PostCall 124

 strftime$173:
	; Jump 311
	jmp strftime$311

 strftime$174:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$175:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$176:
	; Parameter 156 pointer string_2503i#
	mov qword [rbp + 156], @6730string_2503i#

 strftime$177:
	; Dereference £temporary2740 tp 0
	mov rsi, [rbp + 44]

 strftime$178:
	; Parameter 164 signed int £temporary2740
	mov eax, [rsi + 28]
	mov [rbp + 164], eax

 strftime$179:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$180
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$180:
	; PostCall 124

 strftime$181:
	; Jump 311
	jmp strftime$311

 strftime$182:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$183:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$184:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6733string_2502i#

 strftime$185:
	; Dereference £temporary2742 tp 0
	mov rsi, [rbp + 44]

 strftime$186:
	; Add £temporary2743 £temporary2742 integral4$1#
	mov eax, [rsi + 16]
	inc eax

 strftime$187:
	; Parameter 164 signed int £temporary2743
	mov [rbp + 164], eax

 strftime$188:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$189
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$189:
	; PostCall 124

 strftime$190:
	; Jump 311
	jmp strftime$311

 strftime$191:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$192:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$193:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6737string_2502i#

 strftime$194:
	; Dereference £temporary2745 tp 0
	mov rsi, [rbp + 44]

 strftime$195:
	; Parameter 164 signed int £temporary2745
	mov eax, [rsi + 4]
	mov [rbp + 164], eax

 strftime$196:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$197
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$197:
	; PostCall 124

 strftime$198:
	; Jump 311
	jmp strftime$311

 strftime$199:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$200:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$201:
	; Parameter 156 pointer string_25s#
	mov qword [rbp + 156], @6740string_25s#

 strftime$202:
	; Equal 205 index integral4$0#
	cmp dword [rbp + 92], 0
	je strftime$205

 strftime$203:
	; Assign £temporary2748 string_AM#
	mov rax, @6741string_AM#

 strftime$204:
	; Jump 206
	jmp strftime$206

 strftime$205:
	; Assign £temporary2748 string_PM#
	mov rax, @6742string_PM#

 strftime$206:
	; Parameter 164 pointer £temporary2748
	mov [rbp + 164], rax

 strftime$207:
	; Call 124 sprintf 8
	mov qword [rbp + 124], strftime$208
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp sprintf

 strftime$208:
	; PostCall 124

 strftime$209:
	; Jump 311
	jmp strftime$311

 strftime$210:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$211:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$212:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6746string_2502i#

 strftime$213:
	; Dereference £temporary2750 tp 0
	mov rsi, [rbp + 44]

 strftime$214:
	; Parameter 164 signed int £temporary2750
	mov eax, [rsi]
	mov [rbp + 164], eax

 strftime$215:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$216
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$216:
	; PostCall 124

 strftime$217:
	; Jump 311
	jmp strftime$311

 strftime$218:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$219:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$220:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6749string_2502i#

 strftime$221:
	; Parameter 164 signed int weekNumberStartSunday
	mov eax, [rbp + 96]
	mov [rbp + 164], eax

 strftime$222:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$223
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$223:
	; PostCall 124

 strftime$224:
	; Jump 311
	jmp strftime$311

 strftime$225:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$226:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$227:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6752string_2502i#

 strftime$228:
	; Dereference £temporary2753 tp 0
	mov rsi, [rbp + 44]

 strftime$229:
	; Parameter 164 signed int £temporary2753
	mov eax, [rsi + 24]
	mov [rbp + 164], eax

 strftime$230:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$231
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$231:
	; PostCall 124

 strftime$232:
	; Jump 311
	jmp strftime$311

 strftime$233:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$234:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$235:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6755string_2502i#

 strftime$236:
	; Parameter 164 signed int weekNumberStartMonday
	mov eax, [rbp + 100]
	mov [rbp + 164], eax

 strftime$237:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$238
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$238:
	; PostCall 124

 strftime$239:
	; Jump 311
	jmp strftime$311

 strftime$240:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$241:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$242:
	; Parameter 156 pointer string_2502i3A2502i3A2502i#
	mov qword [rbp + 156], @6758string_2502i3A2502i3A2502i#

 strftime$243:
	; Dereference £temporary2756 tp 0
	mov rsi, [rbp + 44]

 strftime$244:
	; Parameter 164 signed int £temporary2756
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$245:
	; Dereference £temporary2757 tp 0
	mov rsi, [rbp + 44]

 strftime$246:
	; Parameter 168 signed int £temporary2757
	mov eax, [rsi + 4]
	mov [rbp + 168], eax

 strftime$247:
	; Dereference £temporary2758 tp 0
	mov rsi, [rbp + 44]

 strftime$248:
	; Parameter 172 signed int £temporary2758
	mov eax, [rsi]
	mov [rbp + 172], eax

 strftime$249:
	; Call 124 sprintf 12
	mov qword [rbp + 124], strftime$250
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$250:
	; PostCall 124

 strftime$251:
	; Jump 311
	jmp strftime$311

 strftime$252:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$253:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$254:
	; Parameter 156 pointer string_2502i3A2502i3A2502i#
	mov qword [rbp + 156], @6761string_2502i3A2502i3A2502i#

 strftime$255:
	; Dereference £temporary2760 tp 0
	mov rsi, [rbp + 44]

 strftime$256:
	; Parameter 164 signed int £temporary2760
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$257:
	; Dereference £temporary2761 tp 0
	mov rsi, [rbp + 44]

 strftime$258:
	; Parameter 168 signed int £temporary2761
	mov eax, [rsi + 4]
	mov [rbp + 168], eax

 strftime$259:
	; Dereference £temporary2762 tp 0
	mov rsi, [rbp + 44]

 strftime$260:
	; Parameter 172 signed int £temporary2762
	mov eax, [rsi]
	mov [rbp + 172], eax

 strftime$261:
	; Call 124 sprintf 12
	mov qword [rbp + 124], strftime$262
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$262:
	; PostCall 124

 strftime$263:
	; Jump 311
	jmp strftime$311

 strftime$264:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$265:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$266:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6764string_2502i#

 strftime$267:
	; Dereference £temporary2764 tp 0
	mov rsi, [rbp + 44]

 strftime$268:
	; Modulo £temporary2765 £temporary2764 integral4$100#
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [@6765integral4$100#]

 strftime$269:
	; Parameter 164 signed int £temporary2765
	mov [rbp + 164], edx

 strftime$270:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$271
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$271:
	; PostCall 124

 strftime$272:
	; Jump 311
	jmp strftime$311

 strftime$273:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$274:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$275:
	; Parameter 156 pointer string_2502i#
	mov qword [rbp + 156], @6768string_2502i#

 strftime$276:
	; Dereference £temporary2767 tp 0
	mov rsi, [rbp + 44]

 strftime$277:
	; Add £temporary2768 £temporary2767 integral4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$278:
	; Parameter 164 signed int £temporary2768
	mov [rbp + 164], eax

 strftime$279:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$280
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$280:
	; PostCall 124

 strftime$281:
	; Jump 311
	jmp strftime$311

 strftime$282:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$283:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$284:
	; Dereference £temporary2770 tp 0
	mov rsi, [rbp + 44]

 strftime$285:
	; Equal 288 £temporary2770 integral4$0#
	cmp dword [rsi + 32], 0
	je strftime$288

 strftime$286:
	; Assign £temporary2772 string_summer#
	mov rax, @6772string_summer#

 strftime$287:
	; Jump 289
	jmp strftime$289

 strftime$288:
	; Assign £temporary2772 string_winter#
	mov rax, @6773string_winter#

 strftime$289:
	; Parameter 156 pointer £temporary2772
	mov [rbp + 156], rax

 strftime$290:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$291
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$291:
	; PostCall 124

 strftime$292:
	; Jump 311
	jmp strftime$311

 strftime$293:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$294:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$295:
	; Parameter 156 pointer string_25#
	mov qword [rbp + 156], @6777string_25#

 strftime$296:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$297
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$297:
	; PostCall 124

 strftime$298:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$299:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$300:
	; Parameter 156 pointer string_#
	mov qword [rbp + 156], @6778string_#

 strftime$301:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$302
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$302:
	; PostCall 124

 strftime$303:
	; Jump 311
	jmp strftime$311

 strftime$304:
	; Dereference £temporary2776 add 0
	mov rsi, rbp
	add rsi, 104

 strftime$305:
	; IntegralToIntegral £temporary2778 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$306:
	; Add £temporary2779 format £temporary2778
	mov rdi, [rbp + 36]
	add rdi, rax

 strftime$307:
	; Dereference £temporary2777 £temporary2779 0

 strftime$308:
	; Assign £temporary2776 £temporary2777
	mov al, [rdi]
	mov [rsi], al

 strftime$309:
	; Dereference £temporary2780 add 0
	mov rsi, rbp
	add rsi, 104

 strftime$310:
	; Assign £temporary2780 integral1$0#
	mov byte [rsi + 1], 0

 strftime$311:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$312:
	; Parameter 148 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 148], rax

 strftime$313:
	; Call 124 strlen 0
	mov qword [rbp + 124], strftime$314
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strlen

 strftime$314:
	; PostCall 124

 strftime$315:
	; GetReturnValue £temporary2781

 strftime$316:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 124], ebx

 strftime$317:
	; Parameter 148 pointer add
	mov [rbp + 152], rbp
	add qword [rbp + 152], 104

 strftime$318:
	; Call 124 strlen 0
	mov qword [rbp + 128], strftime$319
	mov [rbp + 136], rbp
	add rbp, 128
	jmp strlen

 strftime$319:
	; PostCall 124
	mov eax, ebx
	mov ebx, [rbp + 124]

 strftime$320:
	; GetReturnValue £temporary2782

 strftime$321:
	; Add £temporary2783 £temporary2781 £temporary2782
	add ebx, eax

 strftime$322:
	; GreaterThanEqual 330 £temporary2783 maxSize
	cmp ebx, [rbp + 32]
	jge strftime$330

 strftime$323:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$324:
	; Parameter 148 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 148], rax

 strftime$325:
	; Parameter 156 pointer add
	mov [rbp + 156], rbp
	add qword [rbp + 156], 104

 strftime$326:
	; Call 124 strcat 0
	mov qword [rbp + 124], strftime$327
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcat

 strftime$327:
	; PostCall 124

 strftime$328:
	; Add index index integral4$1#
	inc dword [rbp + 92]

 strftime$329:
	; Jump 49
	jmp strftime$49

 strftime$330:
	; PreCall 92 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$331:
	; Parameter 116 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

 strftime$332:
	; Call 92 strlen 0
	mov qword [rbp + 92], strftime$333
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strlen

 strftime$333:
	; PostCall 92

 strftime$334:
	; GetReturnValue £temporary2786

 strftime$335:
	; SetReturnValue

 strftime$336:
	; Return £temporary2786
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strftime$337:
	; FunctionEnd strftime
