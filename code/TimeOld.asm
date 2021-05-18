	global clock
	global time
	global mktime
	global gmtime
	global localtime
	global difftime
	global asctime
	global ctime
	global strftime
	global getWeekNumber

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
	; Return -1
	mov rbx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 clock$2:
	; FunctionEnd clock

section .data

@7562$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7566$int4$100#:
	; Initializer SignedInt 100
	dd 100

section .data

@7570$int4$400#:
	; Initializer SignedInt 400
	dd 400

section .text

 @7560$isLeapYear:
	; Modulo £temporary2471 year 4
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7562$int4$4#]

 @7560$isLeapYear$1:
	; NotEqual 4 £temporary2471 0
	cmp edx, 0
	jne @7560$isLeapYear$4

 @7560$isLeapYear$2:
	; Modulo £temporary2473 year 100
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7566$int4$100#]

 @7560$isLeapYear$3:
	; NotEqual 6 £temporary2473 0
	cmp edx, 0
	jne @7560$isLeapYear$6

 @7560$isLeapYear$4:
	; Modulo £temporary2476 year 400
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7570$int4$400#]

 @7560$isLeapYear$5:
	; NotEqual 8 £temporary2476 0
	cmp edx, 0
	jne @7560$isLeapYear$8

 @7560$isLeapYear$6:
	; Assign £temporary2479 1
	mov ebx, 1

 @7560$isLeapYear$7:
	; Jump 9
	jmp @7560$isLeapYear$9

 @7560$isLeapYear$8:
	; Assign £temporary2479 0
	mov ebx, 0

 @7560$isLeapYear$9:
	; SetReturnValue

 @7560$isLeapYear$10:
	; Return £temporary2479
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @7560$isLeapYear$11:
	; FunctionEnd isLeapYear

section .text

 time:
	; AssignRegister rax 201
	mov rax, 201

 time$1:
	; Address £temporary2482 time
	mov rdi, rbp
	add rdi, 32

 time$2:
	; IntegralToIntegral £temporary2483 £temporary2482

 time$3:
	; AssignRegister rdi £temporary2483

 time$4:
	; SysCall
	syscall

 time$5:
	; Equal 8 timePtr 0
	cmp qword [rbp + 24], 0
	je time$8

 time$6:
	; Dereference £temporary2485 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 time$7:
	; Assign £temporary2485 -> timePtr time
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

@7589$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7594$int4$365#:
	; Initializer SignedInt 365
	dd 365

section .data

@7597$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7599$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7601$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .text

 mktime:
	; Equal 28 tp 0
	cmp qword [rbp + 24], 0
	je mktime$28

 mktime$1:
	; Dereference £temporary2488 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$2:
	; BinarySubtract £temporary2489 £temporary2488 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 mktime$3:
	; Divide £temporary2490 £temporary2489 4
	xor edx, edx
	idiv dword [@7589$int4$4#]

 mktime$4:
	; IntegralToIntegral £temporary2491 £temporary2490
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

 mktime$5:
	; Assign leapDays £temporary2491
	mov [rbp + 32], rax

 mktime$6:
	; Dereference £temporary2492 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$7:
	; BinarySubtract £temporary2493 £temporary2492 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 mktime$8:
	; Multiply £temporary2494 £temporary2493 365
	xor edx, edx
	imul dword [@7594$int4$365#]

 mktime$9:
	; IntegralToIntegral £temporary2495 £temporary2494
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

 mktime$10:
	; BinaryAdd £temporary2496 £temporary2495 leapDays
	add rax, [rbp + 32]

 mktime$11:
	; Dereference £temporary2497 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$12:
	; IntegralToIntegral £temporary2498 £temporary2497 -> tp
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

 mktime$13:
	; BinaryAdd totalDays £temporary2496 £temporary2498
	add rax, rbx
	mov [rbp + 40], rax

 mktime$14:
	; Multiply £temporary2500 totalDays 86400
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [@7597$int8$86400#]
	mov rbx, rax

 mktime$15:
	; Dereference £temporary2501 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$16:
	; IntegralToIntegral £temporary2502 £temporary2501 -> tp
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

 mktime$17:
	; Multiply £temporary2503 £temporary2502 3600
	xor rdx, rdx
	imul qword [@7599$int8$3600#]

 mktime$18:
	; BinaryAdd £temporary2504 £temporary2500 £temporary2503
	add rbx, rax

 mktime$19:
	; Dereference £temporary2505 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$20:
	; IntegralToIntegral £temporary2506 £temporary2505 -> tp
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

 mktime$21:
	; Multiply £temporary2507 £temporary2506 60
	xor rdx, rdx
	imul qword [@7601$int8$60#]

 mktime$22:
	; BinaryAdd £temporary2508 £temporary2504 £temporary2507
	add rbx, rax

 mktime$23:
	; Dereference £temporary2509 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$24:
	; IntegralToIntegral £temporary2510 £temporary2509 -> tp
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

 mktime$25:
	; BinaryAdd £temporary2511 £temporary2508 £temporary2510
	add rbx, rax

 mktime$26:
	; SetReturnValue

 mktime$27:
	; Return £temporary2511
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mktime$28:
	; SetReturnValue

 mktime$29:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mktime$30:
	; FunctionEnd mktime

section .data

@7604$g_timeStruct:
	; InitializerZero 36
	times 36 db 0

section .data

@7611$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7614$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7617$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7619$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .data

@7621$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .data

@7623$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7632$int8$7#:
	; Initializer Signed_Long_Int 7
	dq 7

section .data

@7635$int8$365#:
	; Initializer Signed_Long_Int 365
	dq 365

section .data

@7641$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7644$int8$365#:
	; Initializer Signed_Long_Int 365
	dq 365

section .data

@7687$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7690$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .text

 gmtime:
	; Equal 91 timePtr 0
	cmp qword [rbp + 24], 0
	je gmtime$91

 gmtime$1:
	; Dereference £temporary2513 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 gmtime$2:
	; Assign time £temporary2513 -> timePtr
	mov rax, [rsi]
	mov [rbp + 32], rax

 gmtime$3:
	; Modulo secondsOfDay time 86400
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@7611$int8$86400#]
	mov [rbp + 40], rdx

 gmtime$4:
	; Modulo secondsOfHour secondsOfDay 3600
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@7614$int8$3600#]
	mov [rbp + 48], rdx

 gmtime$5:
	; Divide £temporary2517 secondsOfDay 3600
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@7617$int8$3600#]

 gmtime$6:
	; IntegralToIntegral £temporary2518 £temporary2517
	cmp rax, 0
	jge gmtime$7
	neg rax
	neg eax

 gmtime$7:
	; Assign g_timeStruct.tm_hour £temporary2518
	mov [@7604$g_timeStruct + 8], eax

 gmtime$8:
	; Divide £temporary2520 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@7619$int8$60#]

 gmtime$9:
	; IntegralToIntegral £temporary2521 £temporary2520
	cmp rax, 0
	jge gmtime$10
	neg rax
	neg eax

 gmtime$10:
	; Assign g_timeStruct.tm_min £temporary2521
	mov [@7604$g_timeStruct + 4], eax

 gmtime$11:
	; Modulo £temporary2523 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@7621$int8$60#]

 gmtime$12:
	; IntegralToIntegral £temporary2524 £temporary2523
	cmp rdx, 0
	jge gmtime$13
	neg rdx
	neg edx

 gmtime$13:
	; Assign g_timeStruct.tm_sec £temporary2524
	mov [@7604$g_timeStruct], edx

 gmtime$14:
	; Divide totalDays time 86400
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@7623$int8$86400#]
	mov [rbp + 56], rax

 gmtime$15:
	; GreaterThanEqual 20 totalDays 3
	cmp qword [rbp + 56], 3
	jge gmtime$20

 gmtime$16:
	; BinaryAdd £temporary2528 totalDays 4
	mov rax, [rbp + 56]
	add rax, 4

 gmtime$17:
	; IntegralToIntegral £temporary2529 £temporary2528
	cmp rax, 0
	jge gmtime$18
	neg rax
	neg eax

 gmtime$18:
	; Assign g_timeStruct.tm_wday £temporary2529
	mov [@7604$g_timeStruct + 24], eax

 gmtime$19:
	; Jump 24
	jmp gmtime$24

 gmtime$20:
	; BinarySubtract £temporary2531 totalDays 3
	mov rax, [rbp + 56]
	sub rax, 3

 gmtime$21:
	; Modulo £temporary2532 £temporary2531 7
	xor rdx, rdx
	idiv qword [@7632$int8$7#]

 gmtime$22:
	; IntegralToIntegral £temporary2533 £temporary2532
	cmp rdx, 0
	jge gmtime$23
	neg rdx
	neg edx

 gmtime$23:
	; Assign g_timeStruct.tm_wday £temporary2533
	mov [@7604$g_timeStruct + 24], edx

 gmtime$24:
	; Divide £temporary2534 totalDays 365
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@7635$int8$365#]

 gmtime$25:
	; BinaryAdd £temporary2535 £temporary2534 1970
	add rax, 1970

 gmtime$26:
	; IntegralToIntegral £temporary2536 £temporary2535
	cmp rax, 0
	jge gmtime$27
	neg rax
	neg eax

 gmtime$27:
	; Assign year £temporary2536
	mov [rbp + 64], eax

 gmtime$28:
	; BinarySubtract £temporary2537 year 1969
	mov eax, [rbp + 64]
	sub eax, 1969

 gmtime$29:
	; Divide leapDays £temporary2537 4
	xor edx, edx
	idiv dword [@7641$int4$4#]
	mov [rbp + 68], eax

 gmtime$30:
	; Modulo totalDays totalDays 365
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@7644$int8$365#]
	mov [rbp + 56], rdx

 gmtime$31:
	; IntegralToIntegral £temporary2540 leapDays
	mov eax, [rbp + 68]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$32
	neg eax
	neg rax

 gmtime$32:
	; BinarySubtract totalDays totalDays £temporary2540
	sub [rbp + 56], rax

 gmtime$33:
	; GreaterThanEqual 44 totalDays 0
	cmp qword [rbp + 56], 0
	jge gmtime$44

 gmtime$34:
	; BinarySubtract year year 1
	dec dword [rbp + 64]

 gmtime$35:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gmtime$36:
	; Parameter 96 signedint year
	mov eax, [rbp + 64]
	mov [rbp + 96], eax

 gmtime$37:
	; Call 72 isLeapYear 0
	mov qword [rbp + 72], gmtime$38
	mov [rbp + 80], rbp
	add rbp, 72
	jmp @7560$isLeapYear

 gmtime$38:
	; PostCall 72

 gmtime$39:
	; GetReturnValue £temporary2544

 gmtime$40:
	; Equal 43 £temporary2544 0
	cmp ebx, 0
	je gmtime$43

 gmtime$41:
	; BinaryAdd totalDays totalDays 366
	add qword [rbp + 56], 366

 gmtime$42:
	; Jump 44
	jmp gmtime$44

 gmtime$43:
	; BinaryAdd totalDays totalDays 365
	add qword [rbp + 56], 365

 gmtime$44:
	; BinarySubtract g_timeStruct.tm_year year 1900
	mov eax, [rbp + 64]
	sub eax, 1900
	mov [@7604$g_timeStruct + 20], eax

 gmtime$45:
	; IntegralToIntegral £temporary2551 totalDays
	mov rax, [rbp + 56]
	cmp rax, 0
	jge gmtime$46
	neg rax
	neg eax

 gmtime$46:
	; Assign g_timeStruct.tm_yday £temporary2551
	mov [@7604$g_timeStruct + 28], eax

 gmtime$47:
	; Assign daysOfMonths[0] 31
	mov dword [rbp + 72], 31

 gmtime$48:
	; PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gmtime$49:
	; Parameter 100 signedint year
	mov eax, [rbp + 64]
	mov [rbp + 100], eax

 gmtime$50:
	; Call 76 isLeapYear 0
	mov qword [rbp + 76], gmtime$51
	mov [rbp + 84], rbp
	add rbp, 76
	jmp @7560$isLeapYear

 gmtime$51:
	; PostCall 76

 gmtime$52:
	; GetReturnValue £temporary2552

 gmtime$53:
	; Equal 56 £temporary2552 0
	cmp ebx, 0
	je gmtime$56

 gmtime$54:
	; Assign £temporary2554 29
	mov eax, 29

 gmtime$55:
	; Jump 57
	jmp gmtime$57

 gmtime$56:
	; Assign £temporary2554 28
	mov eax, 28

 gmtime$57:
	; Assign daysOfMonths[1] £temporary2554
	mov [rbp + 76], eax

 gmtime$58:
	; Assign daysOfMonths[2] 31
	mov dword [rbp + 80], 31

 gmtime$59:
	; Assign daysOfMonths[3] 30
	mov dword [rbp + 84], 30

 gmtime$60:
	; Assign daysOfMonths[4] 31
	mov dword [rbp + 88], 31

 gmtime$61:
	; Assign daysOfMonths[5] 30
	mov dword [rbp + 92], 30

 gmtime$62:
	; Assign daysOfMonths[6] 31
	mov dword [rbp + 96], 31

 gmtime$63:
	; Assign daysOfMonths[7] 31
	mov dword [rbp + 100], 31

 gmtime$64:
	; Assign daysOfMonths[8] 30
	mov dword [rbp + 104], 30

 gmtime$65:
	; Assign daysOfMonths[9] 31
	mov dword [rbp + 108], 31

 gmtime$66:
	; Assign daysOfMonths[10] 30
	mov dword [rbp + 112], 30

 gmtime$67:
	; Assign daysOfMonths[11] 31
	mov dword [rbp + 116], 31

 gmtime$68:
	; Assign month 0
	mov dword [rbp + 120], 0

 gmtime$69:
	; Multiply £temporary2568 month 4
	mov eax, [rbp + 120]
	xor edx, edx
	imul dword [@7687$int4$4#]

 gmtime$70:
	; IntegralToIntegral £temporary2569 £temporary2568
	mov rbx, 4294967295
	and rax, rbx

 gmtime$71:
	; BinaryAdd £temporary2570 daysOfMonths £temporary2569
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$72:
	; Dereference £temporary2567 -> £temporary2570 £temporary2570 0

 gmtime$73:
	; IntegralToIntegral £temporary2571 £temporary2567 -> £temporary2570
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$74
	neg eax
	neg rax

 gmtime$74:
	; LessThan 84 totalDays £temporary2571
	cmp [rbp + 56], rax
	jl gmtime$84

 gmtime$75:
	; Assign £temporary2573 month
	mov eax, [rbp + 120]

 gmtime$76:
	; BinaryAdd month month 1
	inc dword [rbp + 120]

 gmtime$77:
	; Multiply £temporary2575 £temporary2573 4
	xor edx, edx
	imul dword [@7690$int4$4#]

 gmtime$78:
	; IntegralToIntegral £temporary2576 £temporary2575
	mov rbx, 4294967295
	and rax, rbx

 gmtime$79:
	; BinaryAdd £temporary2577 daysOfMonths £temporary2576
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$80:
	; Dereference £temporary2574 -> £temporary2577 £temporary2577 0

 gmtime$81:
	; IntegralToIntegral £temporary2578 £temporary2574 -> £temporary2577
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$82
	neg eax
	neg rax

 gmtime$82:
	; BinarySubtract totalDays totalDays £temporary2578
	sub [rbp + 56], rax

 gmtime$83:
	; Jump 69
	jmp gmtime$69

 gmtime$84:
	; Assign g_timeStruct.tm_mon month
	mov eax, [rbp + 120]
	mov [@7604$g_timeStruct + 16], eax

 gmtime$85:
	; BinaryAdd £temporary2582 totalDays 1
	mov rax, [rbp + 56]
	inc rax

 gmtime$86:
	; IntegralToIntegral £temporary2583 £temporary2582
	cmp rax, 0
	jge gmtime$87
	neg rax
	neg eax

 gmtime$87:
	; Assign g_timeStruct.tm_mday £temporary2583
	mov [@7604$g_timeStruct + 12], eax

 gmtime$88:
	; Assign g_timeStruct.tm_isdst -1
	mov dword [@7604$g_timeStruct + 32], -1

 gmtime$89:
	; SetReturnValue

 gmtime$90:
	; Return @7604$g_timeStruct
	mov rbx, @7604$g_timeStruct
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$91:
	; SetReturnValue

 gmtime$92:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$93:
	; FunctionEnd gmtime

section .data

@7712$int8$3600#:
	; Initializer Signed_Long_Int 3600
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
	; GetReturnValue £temporary2585

 localtime$5:
	; Assign tmPtr £temporary2585
	mov [rbp + 32], rbx

 localtime$6:
	; Dereference £temporary2586 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 localtime$7:
	; Assign t £temporary2586 -> timePtr
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
	; GetReturnValue £temporary2587

 localtime$12:
	; Assign localeConvPtr £temporary2587
	mov [rbp + 48], rbx

 localtime$13:
	; Equal 25 localeConvPtr 0
	cmp qword [rbp + 48], 0
	je localtime$25

 localtime$14:
	; Dereference £temporary2589 -> tmPtr tmPtr 0
	mov rsi, [rbp + 32]

 localtime$15:
	; NotEqual 19 £temporary2589 -> tmPtr 1
	cmp dword [rsi + 32], 1
	jne localtime$19

 localtime$16:
	; Dereference £temporary2591 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 48]

 localtime$17:
	; Assign £temporary2593 £temporary2591 -> localeConvPtr
	mov eax, [rsi]

 localtime$18:
	; Jump 21
	jmp localtime$21

 localtime$19:
	; Dereference £temporary2592 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 48]

 localtime$20:
	; Assign £temporary2593 £temporary2592 -> localeConvPtr
	mov eax, [rsi + 4]

 localtime$21:
	; Assign timeZone £temporary2593
	mov [rbp + 56], eax

 localtime$22:
	; IntegralToIntegral £temporary2594 timeZone
	mov eax, [rbp + 56]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge localtime$23
	neg eax
	neg rax

 localtime$23:
	; Multiply £temporary2595 £temporary2594 3600
	xor rdx, rdx
	imul qword [@7712$int8$3600#]

 localtime$24:
	; BinaryAdd t t £temporary2595
	add [rbp + 40], rax

 localtime$25:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$26:
	; Address £temporary2597 t
	mov rsi, rbp
	add rsi, 40

 localtime$27:
	; Parameter 80 pointer £temporary2597
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
	; GetReturnValue £temporary2598

 localtime$31:
	; SetReturnValue

 localtime$32:
	; Return £temporary2598
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
	; BinarySubtract £temporary2600 time2 time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

 difftime$1:
	; IntegralToFloating £temporary2601 £temporary2600
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 difftime$2:
	; SetReturnValue

 difftime$3:
	; Return £temporary2601
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 difftime$4:
	; FunctionEnd difftime

section .data

@7719$g_timeString:
	; InitializerZero 256
	times 256 db 0

section .data

@7720$string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

@7721$string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

@7722$string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

@7723$string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

@7724$string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

@7725$string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

@7726$string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@7727$g_shortDayList:
	; Initializer Pointer @7720$string_Sun#
	dq @7720$string_Sun#
	; Initializer Pointer @7721$string_Mon#
	dq @7721$string_Mon#
	; Initializer Pointer @7722$string_Tue#
	dq @7722$string_Tue#
	; Initializer Pointer @7723$string_Wed#
	dq @7723$string_Wed#
	; Initializer Pointer @7724$string_Thu#
	dq @7724$string_Thu#
	; Initializer Pointer @7725$string_Fri#
	dq @7725$string_Fri#
	; Initializer Pointer @7726$string_Sat#
	dq @7726$string_Sat#

section .data

@7728$string_Sunday#:
	; Initializer String Sunday
	db "Sunday", 0

section .data

@7729$string_Monday#:
	; Initializer String Monday
	db "Monday", 0

section .data

@7730$string_Tuesday#:
	; Initializer String Tuesday
	db "Tuesday", 0

section .data

@7731$string_Wednesday#:
	; Initializer String Wednesday
	db "Wednesday", 0

section .data

@7732$string_Thursday#:
	; Initializer String Thursday
	db "Thursday", 0

section .data

@7733$string_Friday#:
	; Initializer String Friday
	db "Friday", 0

section .data

@7734$string_Saturday#:
	; Initializer String Saturday
	db "Saturday", 0

section .data

@7735$g_longDayList:
	; Initializer Pointer @7728$string_Sunday#
	dq @7728$string_Sunday#
	; Initializer Pointer @7729$string_Monday#
	dq @7729$string_Monday#
	; Initializer Pointer @7730$string_Tuesday#
	dq @7730$string_Tuesday#
	; Initializer Pointer @7731$string_Wednesday#
	dq @7731$string_Wednesday#
	; Initializer Pointer @7732$string_Thursday#
	dq @7732$string_Thursday#
	; Initializer Pointer @7733$string_Friday#
	dq @7733$string_Friday#
	; Initializer Pointer @7734$string_Saturday#
	dq @7734$string_Saturday#

section .data

@7736$string_Jan#:
	; Initializer String Jan
	db "Jan", 0

section .data

@7737$string_Feb#:
	; Initializer String Feb
	db "Feb", 0

section .data

@7738$string_Mar#:
	; Initializer String Mar
	db "Mar", 0

section .data

@7739$string_Apr#:
	; Initializer String Apr
	db "Apr", 0

section .data

@7740$string_May#:
	; Initializer String May
	db "May", 0

section .data

@7741$string_Jun#:
	; Initializer String Jun
	db "Jun", 0

section .data

@7742$string_Jul#:
	; Initializer String Jul
	db "Jul", 0

section .data

@7743$string_Aug#:
	; Initializer String Aug
	db "Aug", 0

section .data

@7744$string_Sep#:
	; Initializer String Sep
	db "Sep", 0

section .data

@7745$string_Oct#:
	; Initializer String Oct
	db "Oct", 0

section .data

@7746$string_Nov#:
	; Initializer String Nov
	db "Nov", 0

section .data

@7747$string_Dec#:
	; Initializer String Dec
	db "Dec", 0

section .data

@7748$g_shortMonthList:
	; Initializer Pointer @7736$string_Jan#
	dq @7736$string_Jan#
	; Initializer Pointer @7737$string_Feb#
	dq @7737$string_Feb#
	; Initializer Pointer @7738$string_Mar#
	dq @7738$string_Mar#
	; Initializer Pointer @7739$string_Apr#
	dq @7739$string_Apr#
	; Initializer Pointer @7740$string_May#
	dq @7740$string_May#
	; Initializer Pointer @7741$string_Jun#
	dq @7741$string_Jun#
	; Initializer Pointer @7742$string_Jul#
	dq @7742$string_Jul#
	; Initializer Pointer @7743$string_Aug#
	dq @7743$string_Aug#
	; Initializer Pointer @7744$string_Sep#
	dq @7744$string_Sep#
	; Initializer Pointer @7745$string_Oct#
	dq @7745$string_Oct#
	; Initializer Pointer @7746$string_Nov#
	dq @7746$string_Nov#
	; Initializer Pointer @7747$string_Dec#
	dq @7747$string_Dec#

section .data

@7749$string_January#:
	; Initializer String January
	db "January", 0

section .data

@7750$string_February#:
	; Initializer String February
	db "February", 0

section .data

@7751$string_March#:
	; Initializer String March
	db "March", 0

section .data

@7752$string_April#:
	; Initializer String April
	db "April", 0

section .data

@7753$string_May#:
	; Initializer String May
	db "May", 0

section .data

@7754$string_June#:
	; Initializer String June
	db "June", 0

section .data

@7755$string_July#:
	; Initializer String July
	db "July", 0

section .data

@7756$string_August#:
	; Initializer String August
	db "August", 0

section .data

@7757$string_September#:
	; Initializer String September
	db "September", 0

section .data

@7758$string_October#:
	; Initializer String October
	db "October", 0

section .data

@7759$string_November#:
	; Initializer String November
	db "November", 0

section .data

@7760$string_December#:
	; Initializer String December
	db "December", 0

section .data

@7761$g_longMonthList:
	; Initializer Pointer @7749$string_January#
	dq @7749$string_January#
	; Initializer Pointer @7750$string_February#
	dq @7750$string_February#
	; Initializer Pointer @7751$string_March#
	dq @7751$string_March#
	; Initializer Pointer @7752$string_April#
	dq @7752$string_April#
	; Initializer Pointer @7753$string_May#
	dq @7753$string_May#
	; Initializer Pointer @7754$string_June#
	dq @7754$string_June#
	; Initializer Pointer @7755$string_July#
	dq @7755$string_July#
	; Initializer Pointer @7756$string_August#
	dq @7756$string_August#
	; Initializer Pointer @7757$string_September#
	dq @7757$string_September#
	; Initializer Pointer @7758$string_October#
	dq @7758$string_October#
	; Initializer Pointer @7759$string_November#
	dq @7759$string_November#
	; Initializer Pointer @7760$string_December#
	dq @7760$string_December#

section .data

@7781$string_25s2025s2025i202502i3A2502i3A2502i2025i#:
	; Initializer String %s %s %i %02i:%02i:%02i %i
	db "%s %s %i %02i:%02i:%02i %i", 0

section .data

@7783$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@7785$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 asctime:
	; Assign localeConvPtr 0
	mov qword [rbp + 32], 0

 asctime$1:
	; Equal 7 localeConvPtr 0
	cmp qword [rbp + 32], 0
	je asctime$7

 asctime$2:
	; Dereference £temporary2603 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$3:
	; Equal 7 £temporary2603 -> localeConvPtr 0
	cmp qword [rsi + 8], 0
	je asctime$7

 asctime$4:
	; Dereference £temporary2606 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$5:
	; Assign shortDayList £temporary2606 -> localeConvPtr
	mov rax, [rsi + 8]
	mov [rbp + 40], rax

 asctime$6:
	; Jump 8
	jmp asctime$8

 asctime$7:
	; Assign shortDayList g_shortDayList
	mov qword [rbp + 40], @7727$g_shortDayList

 asctime$8:
	; Equal 14 localeConvPtr 0
	cmp qword [rbp + 32], 0
	je asctime$14

 asctime$9:
	; Dereference £temporary2608 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$10:
	; Equal 14 £temporary2608 -> localeConvPtr 0
	cmp qword [rsi + 24], 0
	je asctime$14

 asctime$11:
	; Dereference £temporary2611 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$12:
	; Assign shortMonthList £temporary2611 -> localeConvPtr
	mov rax, [rsi + 24]
	mov [rbp + 48], rax

 asctime$13:
	; Jump 15
	jmp asctime$15

 asctime$14:
	; Assign shortMonthList g_shortMonthList
	mov qword [rbp + 48], @7748$g_shortMonthList

 asctime$15:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asctime$16:
	; Parameter 80 pointer g_timeString
	mov qword [rbp + 80], @7719$g_timeString

 asctime$17:
	; Parameter 88 pointer "%s %s %i %02i:%02i:%02i %i"
	mov qword [rbp + 88], @7781$string_25s2025s2025i202502i3A2502i3A2502i2025i#

 asctime$18:
	; Dereference £temporary2612 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$19:
	; Multiply £temporary2614 £temporary2612 -> tp 8
	mov eax, [rsi + 24]
	xor edx, edx
	imul dword [@7783$int4$8#]

 asctime$20:
	; IntegralToIntegral £temporary2615 £temporary2614
	mov rbx, 4294967295
	and rax, rbx

 asctime$21:
	; BinaryAdd £temporary2616 shortDayList £temporary2615
	mov rsi, [rbp + 40]
	add rsi, rax

 asctime$22:
	; Dereference £temporary2613 -> £temporary2616 £temporary2616 0

 asctime$23:
	; Parameter 96 pointer £temporary2613 -> £temporary2616
	mov rax, [rsi]
	mov [rbp + 96], rax

 asctime$24:
	; Dereference £temporary2617 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$25:
	; Multiply £temporary2619 £temporary2617 -> tp 8
	mov eax, [rsi + 16]
	xor edx, edx
	imul dword [@7785$int4$8#]

 asctime$26:
	; IntegralToIntegral £temporary2620 £temporary2619
	mov rbx, 4294967295
	and rax, rbx

 asctime$27:
	; BinaryAdd £temporary2621 shortMonthList £temporary2620
	mov rsi, [rbp + 48]
	add rsi, rax

 asctime$28:
	; Dereference £temporary2618 -> £temporary2621 £temporary2621 0

 asctime$29:
	; Parameter 104 pointer £temporary2618 -> £temporary2621
	mov rax, [rsi]
	mov [rbp + 104], rax

 asctime$30:
	; Dereference £temporary2622 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$31:
	; Parameter 112 signedint £temporary2622 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

 asctime$32:
	; Dereference £temporary2623 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$33:
	; Parameter 116 signedint £temporary2623 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

 asctime$34:
	; Dereference £temporary2624 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$35:
	; Parameter 120 signedint £temporary2624 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

 asctime$36:
	; Dereference £temporary2625 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$37:
	; Parameter 124 signedint £temporary2625 -> tp
	mov eax, [rsi]
	mov [rbp + 124], eax

 asctime$38:
	; Dereference £temporary2626 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$39:
	; BinaryAdd £temporary2627 £temporary2626 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 asctime$40:
	; Parameter 128 signedint £temporary2627
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
	mov rbx, @7719$g_timeString
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
	; GetReturnValue £temporary2629

 ctime$6:
	; Parameter 56 pointer £temporary2629
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
	; GetReturnValue £temporary2630

 ctime$10:
	; SetReturnValue

 ctime$11:
	; Return £temporary2630
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ctime$12:
	; FunctionEnd ctime

section .data

@7833$string_#:
	; Initializer String 
	db 0

section .data

@7869$string_2502i2D2502i2D2502i202502i3A2502i3A2502i#:
	; Initializer String %02i-%02i-%02i %02i:%02i:%02i
	db "%02i-%02i-%02i %02i:%02i:%02i", 0

section .data

@7876$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@7879$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@7882$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@7887$string_2503i#:
	; Initializer String %03i
	db "%03i", 0

section .data

@7890$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@7895$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@7898$string_25s#:
	; Initializer String %s
	db "%s", 0

section .data

@7901$string_AM#:
	; Initializer String AM
	db "AM", 0

section .data

@7902$string_PM#:
	; Initializer String PM
	db "PM", 0

section .data

@7905$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@7908$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@7911$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@7914$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@7917$string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@7920$string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@7923$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@7928$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@7933$string_summer#:
	; Initializer String summer
	db "summer", 0

section .data

@7934$string_winter#:
	; Initializer String winter
	db "winter", 0

section .data

@7938$string_25#:
	; Initializer String %
	db "%", 0

section .data

@7939$string_#:
	; Initializer String 
	db 0

section .data

@7854$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@7858$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@7862$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@7866$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@7884$int4$12#:
	; Initializer SignedInt 12
	dd 12

section .data

@7925$int4$100#:
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
	; GetReturnValue £temporary2631

 strftime$4:
	; Assign localeConvPtr £temporary2631
	mov [rbp + 52], rbx

 strftime$5:
	; Equal 11 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$11

 strftime$6:
	; Dereference £temporary2633 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$7:
	; Equal 11 £temporary2633 -> localeConvPtr 0
	cmp qword [rsi + 8], 0
	je strftime$11

 strftime$8:
	; Dereference £temporary2636 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$9:
	; Assign shortDayList £temporary2636 -> localeConvPtr
	mov rax, [rsi + 8]
	mov [rbp + 60], rax

 strftime$10:
	; Jump 12
	jmp strftime$12

 strftime$11:
	; Assign shortDayList g_shortDayList
	mov qword [rbp + 60], @7727$g_shortDayList

 strftime$12:
	; Equal 18 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$18

 strftime$13:
	; Dereference £temporary2638 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$14:
	; Equal 18 £temporary2638 -> localeConvPtr 0
	cmp qword [rsi + 16], 0
	je strftime$18

 strftime$15:
	; Dereference £temporary2641 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$16:
	; Assign longDayList £temporary2641 -> localeConvPtr
	mov rax, [rsi + 16]
	mov [rbp + 76], rax

 strftime$17:
	; Jump 19
	jmp strftime$19

 strftime$18:
	; Assign longDayList g_longDayList
	mov qword [rbp + 76], @7735$g_longDayList

 strftime$19:
	; Equal 25 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$25

 strftime$20:
	; Dereference £temporary2643 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$21:
	; Equal 25 £temporary2643 -> localeConvPtr 0
	cmp qword [rsi + 24], 0
	je strftime$25

 strftime$22:
	; Dereference £temporary2646 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$23:
	; Assign shortMonthList £temporary2646 -> localeConvPtr
	mov rax, [rsi + 24]
	mov [rbp + 68], rax

 strftime$24:
	; Jump 26
	jmp strftime$26

 strftime$25:
	; Assign shortMonthList g_shortMonthList
	mov qword [rbp + 68], @7748$g_shortMonthList

 strftime$26:
	; Equal 32 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$32

 strftime$27:
	; Dereference £temporary2648 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$28:
	; Equal 32 £temporary2648 -> localeConvPtr 0
	cmp qword [rsi + 32], 0
	je strftime$32

 strftime$29:
	; Dereference £temporary2651 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$30:
	; Assign longMonthList £temporary2651 -> localeConvPtr
	mov rax, [rsi + 32]
	mov [rbp + 84], rax

 strftime$31:
	; Jump 33
	jmp strftime$33

 strftime$32:
	; Assign longMonthList g_longMonthList
	mov qword [rbp + 84], @7761$g_longMonthList

 strftime$33:
	; PreCall 92 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$34:
	; Parameter 116 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

 strftime$35:
	; Parameter 124 pointer ""
	mov qword [rbp + 124], @7833$string_#

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
	; GetReturnValue £temporary2653

 strftime$43:
	; Assign weekNumberStartSunday £temporary2653
	mov [rbp + 96], ebx

 strftime$44:
	; Assign weekNumberStartMonday weekNumberStartSunday
	mov eax, [rbp + 96]
	mov [rbp + 100], eax

 strftime$45:
	; Dereference £temporary2654 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$46:
	; NotEqual 48 £temporary2654 -> tp 0
	cmp dword [rsi + 12], 0
	jne strftime$48

 strftime$47:
	; BinarySubtract weekNumberStartMonday weekNumberStartMonday 1
	dec dword [rbp + 100]

 strftime$48:
	; Assign index 0
	mov dword [rbp + 92], 0

 strftime$49:
	; IntegralToIntegral £temporary2658 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$50:
	; BinaryAdd £temporary2659 format £temporary2658
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$51:
	; Dereference £temporary2657 -> £temporary2659 £temporary2659 0

 strftime$52:
	; Equal 344 £temporary2657 -> £temporary2659 0
	cmp byte [rsi], 0
	je strftime$344

 strftime$53:
	; IntegralToIntegral £temporary2663 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$54:
	; BinaryAdd £temporary2664 format £temporary2663
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$55:
	; Dereference £temporary2662 -> £temporary2664 £temporary2664 0

 strftime$56:
	; NotEqual 306 £temporary2662 -> £temporary2664 37
	cmp byte [rsi], 37
	jne strftime$306

 strftime$57:
	; BinaryAdd index index 1
	inc dword [rbp + 92]

 strftime$58:
	; Assign £temporary2666 index
	mov eax, [rbp + 92]

 strftime$59:
	; IntegralToIntegral £temporary2668 £temporary2666
	mov rbx, 4294967295
	and rax, rbx

 strftime$60:
	; BinaryAdd £temporary2669 format £temporary2668
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$61:
	; Dereference £temporary2667 -> £temporary2669 £temporary2669 0

 strftime$62:
	; Case 86 £temporary2667 -> £temporary2669 97
	mov al, [rsi]
	cmp al, 97
	je strftime$86

 strftime$63:
	; Case 97 £temporary2667 -> £temporary2669 65
	cmp al, 65
	je strftime$97

 strftime$64:
	; Case 108 £temporary2667 -> £temporary2669 98
	cmp al, 98
	je strftime$108

 strftime$65:
	; Case 119 £temporary2667 -> £temporary2669 66
	cmp al, 66
	je strftime$119

 strftime$66:
	; Case 130 £temporary2667 -> £temporary2669 99
	cmp al, 99
	je strftime$130

 strftime$67:
	; Case 150 £temporary2667 -> £temporary2669 100
	cmp al, 100
	je strftime$150

 strftime$68:
	; Case 158 £temporary2667 -> £temporary2669 72
	cmp al, 72
	je strftime$158

 strftime$69:
	; Case 166 £temporary2667 -> £temporary2669 73
	cmp al, 73
	je strftime$166

 strftime$70:
	; Case 175 £temporary2667 -> £temporary2669 106
	cmp al, 106
	je strftime$175

 strftime$71:
	; Case 183 £temporary2667 -> £temporary2669 109
	cmp al, 109
	je strftime$183

 strftime$72:
	; Case 192 £temporary2667 -> £temporary2669 77
	cmp al, 77
	je strftime$192

 strftime$73:
	; Case 200 £temporary2667 -> £temporary2669 112
	cmp al, 112
	je strftime$200

 strftime$74:
	; Case 212 £temporary2667 -> £temporary2669 83
	cmp al, 83
	je strftime$212

 strftime$75:
	; Case 220 £temporary2667 -> £temporary2669 85
	cmp al, 85
	je strftime$220

 strftime$76:
	; Case 227 £temporary2667 -> £temporary2669 119
	cmp al, 119
	je strftime$227

 strftime$77:
	; Case 235 £temporary2667 -> £temporary2669 87
	cmp al, 87
	je strftime$235

 strftime$78:
	; Case 242 £temporary2667 -> £temporary2669 120
	cmp al, 120
	je strftime$242

 strftime$79:
	; Case 254 £temporary2667 -> £temporary2669 88
	cmp al, 88
	je strftime$254

 strftime$80:
	; Case 266 £temporary2667 -> £temporary2669 121
	cmp al, 121
	je strftime$266

 strftime$81:
	; Case 275 £temporary2667 -> £temporary2669 89
	cmp al, 89
	je strftime$275

 strftime$82:
	; Case 284 £temporary2667 -> £temporary2669 90
	cmp al, 90
	je strftime$284

 strftime$83:
	; Case 295 £temporary2667 -> £temporary2669 37
	cmp al, 37
	je strftime$295

 strftime$84:
	; CaseEnd £temporary2667 -> £temporary2669

 strftime$85:
	; Jump 300
	jmp strftime$300

 strftime$86:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$87:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$88:
	; Dereference £temporary2670 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$89:
	; Multiply £temporary2672 £temporary2670 -> tp 8
	mov eax, [rsi + 24]
	xor edx, edx
	imul dword [@7854$int4$8#]

 strftime$90:
	; IntegralToIntegral £temporary2673 £temporary2672
	mov rbx, 4294967295
	and rax, rbx

 strftime$91:
	; BinaryAdd £temporary2674 shortDayList £temporary2673
	mov rsi, [rbp + 60]
	add rsi, rax

 strftime$92:
	; Dereference £temporary2671 -> £temporary2674 £temporary2674 0

 strftime$93:
	; Parameter 156 pointer £temporary2671 -> £temporary2674
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
	; Jump 313
	jmp strftime$313

 strftime$97:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$98:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$99:
	; Dereference £temporary2676 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$100:
	; Multiply £temporary2678 £temporary2676 -> tp 8
	mov eax, [rsi + 24]
	xor edx, edx
	imul dword [@7858$int4$8#]

 strftime$101:
	; IntegralToIntegral £temporary2679 £temporary2678
	mov rbx, 4294967295
	and rax, rbx

 strftime$102:
	; BinaryAdd £temporary2680 longDayList £temporary2679
	mov rsi, [rbp + 76]
	add rsi, rax

 strftime$103:
	; Dereference £temporary2677 -> £temporary2680 £temporary2680 0

 strftime$104:
	; Parameter 156 pointer £temporary2677 -> £temporary2680
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
	; Jump 313
	jmp strftime$313

 strftime$108:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$109:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$110:
	; Dereference £temporary2682 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$111:
	; Multiply £temporary2684 £temporary2682 -> tp 8
	mov eax, [rsi + 16]
	xor edx, edx
	imul dword [@7862$int4$8#]

 strftime$112:
	; IntegralToIntegral £temporary2685 £temporary2684
	mov rbx, 4294967295
	and rax, rbx

 strftime$113:
	; BinaryAdd £temporary2686 shortMonthList £temporary2685
	mov rsi, [rbp + 68]
	add rsi, rax

 strftime$114:
	; Dereference £temporary2683 -> £temporary2686 £temporary2686 0

 strftime$115:
	; Parameter 156 pointer £temporary2683 -> £temporary2686
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
	; Jump 313
	jmp strftime$313

 strftime$119:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$120:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$121:
	; Dereference £temporary2688 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$122:
	; Multiply £temporary2690 £temporary2688 -> tp 8
	mov eax, [rsi + 16]
	xor edx, edx
	imul dword [@7866$int4$8#]

 strftime$123:
	; IntegralToIntegral £temporary2691 £temporary2690
	mov rbx, 4294967295
	and rax, rbx

 strftime$124:
	; BinaryAdd £temporary2692 longMonthList £temporary2691
	mov rsi, [rbp + 84]
	add rsi, rax

 strftime$125:
	; Dereference £temporary2689 -> £temporary2692 £temporary2692 0

 strftime$126:
	; Parameter 156 pointer £temporary2689 -> £temporary2692
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
	; Jump 313
	jmp strftime$313

 strftime$130:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$131:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$132:
	; Parameter 156 pointer "%02i-%02i-%02i %02i:%02i:%02i"
	mov qword [rbp + 156], @7869$string_2502i2D2502i2D2502i202502i3A2502i3A2502i#

 strftime$133:
	; Dereference £temporary2694 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$134:
	; BinaryAdd £temporary2695 £temporary2694 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$135:
	; Parameter 164 signedint £temporary2695
	mov [rbp + 164], eax

 strftime$136:
	; Dereference £temporary2696 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$137:
	; BinaryAdd £temporary2697 £temporary2696 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$138:
	; Parameter 168 signedint £temporary2697
	mov [rbp + 168], eax

 strftime$139:
	; Dereference £temporary2698 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$140:
	; Parameter 172 signedint £temporary2698 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 172], eax

 strftime$141:
	; Dereference £temporary2699 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$142:
	; Parameter 176 signedint £temporary2699 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$143:
	; Dereference £temporary2700 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$144:
	; Parameter 180 signedint £temporary2700 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$145:
	; Dereference £temporary2701 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$146:
	; Parameter 184 signedint £temporary2701 -> tp
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
	; Jump 313
	jmp strftime$313

 strftime$150:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$151:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$152:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @7876$string_2502i#

 strftime$153:
	; Dereference £temporary2703 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$154:
	; Parameter 164 signedint £temporary2703 -> tp
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
	; Jump 313
	jmp strftime$313

 strftime$158:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$159:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$160:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @7879$string_2502i#

 strftime$161:
	; Dereference £temporary2705 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$162:
	; Parameter 164 signedint £temporary2705 -> tp
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
	; Jump 313
	jmp strftime$313

 strftime$166:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$167:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$168:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @7882$string_2502i#

 strftime$169:
	; Dereference £temporary2707 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$170:
	; Modulo £temporary2708 £temporary2707 -> tp 12
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [@7884$int4$12#]

 strftime$171:
	; Parameter 164 signedint £temporary2708
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
	; Jump 313
	jmp strftime$313

 strftime$175:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$176:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$177:
	; Parameter 156 pointer "%03i"
	mov qword [rbp + 156], @7887$string_2503i#

 strftime$178:
	; Dereference £temporary2710 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$179:
	; Parameter 164 signedint £temporary2710 -> tp
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
	; Jump 313
	jmp strftime$313

 strftime$183:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$184:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$185:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @7890$string_2502i#

 strftime$186:
	; Dereference £temporary2712 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$187:
	; BinaryAdd £temporary2713 £temporary2712 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$188:
	; Parameter 164 signedint £temporary2713
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
	; Jump 313
	jmp strftime$313

 strftime$192:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$193:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$194:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @7895$string_2502i#

 strftime$195:
	; Dereference £temporary2715 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$196:
	; Parameter 164 signedint £temporary2715 -> tp
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
	; Jump 313
	jmp strftime$313

 strftime$200:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$201:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$202:
	; Parameter 156 pointer "%s"
	mov qword [rbp + 156], @7898$string_25s#

 strftime$203:
	; Dereference £temporary2717 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$204:
	; GreaterThanEqual 207 £temporary2717 -> tp 12
	cmp dword [rsi + 8], 12
	jge strftime$207

 strftime$205:
	; Assign £temporary2719 "AM"
	mov eax, @7901$string_AM#

 strftime$206:
	; Jump 208
	jmp strftime$208

 strftime$207:
	; Assign £temporary2719 "PM"
	mov eax, @7902$string_PM#

 strftime$208:
	; Parameter 164 pointer £temporary2719
	mov [rbp + 164], eax

 strftime$209:
	; Call 124 sprintf 8
	mov qword [rbp + 124], strftime$210
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp sprintf

 strftime$210:
	; PostCall 124

 strftime$211:
	; Jump 313
	jmp strftime$313

 strftime$212:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$213:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$214:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @7905$string_2502i#

 strftime$215:
	; Dereference £temporary2721 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$216:
	; Parameter 164 signedint £temporary2721 -> tp
	mov eax, [rsi]
	mov [rbp + 164], eax

 strftime$217:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$218
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$218:
	; PostCall 124

 strftime$219:
	; Jump 313
	jmp strftime$313

 strftime$220:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$221:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$222:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @7908$string_2502i#

 strftime$223:
	; Parameter 164 signedint weekNumberStartSunday
	mov eax, [rbp + 96]
	mov [rbp + 164], eax

 strftime$224:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$225
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$225:
	; PostCall 124

 strftime$226:
	; Jump 313
	jmp strftime$313

 strftime$227:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$228:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$229:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @7911$string_2502i#

 strftime$230:
	; Dereference £temporary2724 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$231:
	; Parameter 164 signedint £temporary2724 -> tp
	mov eax, [rsi + 24]
	mov [rbp + 164], eax

 strftime$232:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$233
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$233:
	; PostCall 124

 strftime$234:
	; Jump 313
	jmp strftime$313

 strftime$235:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$236:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$237:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @7914$string_2502i#

 strftime$238:
	; Parameter 164 signedint weekNumberStartMonday
	mov eax, [rbp + 100]
	mov [rbp + 164], eax

 strftime$239:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$240
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$240:
	; PostCall 124

 strftime$241:
	; Jump 313
	jmp strftime$313

 strftime$242:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$243:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$244:
	; Parameter 156 pointer "%02i:%02i:%02i"
	mov qword [rbp + 156], @7917$string_2502i3A2502i3A2502i#

 strftime$245:
	; Dereference £temporary2727 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$246:
	; Parameter 164 signedint £temporary2727 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$247:
	; Dereference £temporary2728 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$248:
	; Parameter 168 signedint £temporary2728 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 168], eax

 strftime$249:
	; Dereference £temporary2729 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$250:
	; Parameter 172 signedint £temporary2729 -> tp
	mov eax, [rsi]
	mov [rbp + 172], eax

 strftime$251:
	; Call 124 sprintf 12
	mov qword [rbp + 124], strftime$252
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$252:
	; PostCall 124

 strftime$253:
	; Jump 313
	jmp strftime$313

 strftime$254:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$255:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$256:
	; Parameter 156 pointer "%02i:%02i:%02i"
	mov qword [rbp + 156], @7920$string_2502i3A2502i3A2502i#

 strftime$257:
	; Dereference £temporary2731 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$258:
	; Parameter 164 signedint £temporary2731 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$259:
	; Dereference £temporary2732 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$260:
	; Parameter 168 signedint £temporary2732 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 168], eax

 strftime$261:
	; Dereference £temporary2733 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$262:
	; Parameter 172 signedint £temporary2733 -> tp
	mov eax, [rsi]
	mov [rbp + 172], eax

 strftime$263:
	; Call 124 sprintf 12
	mov qword [rbp + 124], strftime$264
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$264:
	; PostCall 124

 strftime$265:
	; Jump 313
	jmp strftime$313

 strftime$266:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$267:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$268:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @7923$string_2502i#

 strftime$269:
	; Dereference £temporary2735 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$270:
	; Modulo £temporary2736 £temporary2735 -> tp 100
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [@7925$int4$100#]

 strftime$271:
	; Parameter 164 signedint £temporary2736
	mov [rbp + 164], edx

 strftime$272:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$273
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$273:
	; PostCall 124

 strftime$274:
	; Jump 313
	jmp strftime$313

 strftime$275:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$276:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$277:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @7928$string_2502i#

 strftime$278:
	; Dereference £temporary2738 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$279:
	; BinaryAdd £temporary2739 £temporary2738 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$280:
	; Parameter 164 signedint £temporary2739
	mov [rbp + 164], eax

 strftime$281:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$282
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$282:
	; PostCall 124

 strftime$283:
	; Jump 313
	jmp strftime$313

 strftime$284:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$285:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$286:
	; Dereference £temporary2741 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$287:
	; Equal 290 £temporary2741 -> tp 0
	cmp dword [rsi + 32], 0
	je strftime$290

 strftime$288:
	; Assign £temporary2743 "summer"
	mov eax, @7933$string_summer#

 strftime$289:
	; Jump 291
	jmp strftime$291

 strftime$290:
	; Assign £temporary2743 "winter"
	mov eax, @7934$string_winter#

 strftime$291:
	; Parameter 156 pointer £temporary2743
	mov [rbp + 156], eax

 strftime$292:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$293
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$293:
	; PostCall 124

 strftime$294:
	; Jump 313
	jmp strftime$313

 strftime$295:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$296:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$297:
	; Parameter 156 pointer "%"
	mov qword [rbp + 156], @7938$string_25#

 strftime$298:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$299
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$299:
	; PostCall 124

 strftime$300:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$301:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$302:
	; Parameter 156 pointer ""
	mov qword [rbp + 156], @7939$string_#

 strftime$303:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$304
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$304:
	; PostCall 124

 strftime$305:
	; Jump 313
	jmp strftime$313

 strftime$306:
	; Dereference £temporary2747 -> add add 0
	mov rsi, rbp
	add rsi, 104

 strftime$307:
	; IntegralToIntegral £temporary2749 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$308:
	; BinaryAdd £temporary2750 format £temporary2749
	mov rdi, [rbp + 36]
	add rdi, rax

 strftime$309:
	; Dereference £temporary2748 -> £temporary2750 £temporary2750 0

 strftime$310:
	; Assign £temporary2747 -> add £temporary2748 -> £temporary2750
	mov al, [rdi]
	mov [rsi], al

 strftime$311:
	; Dereference £temporary2751 -> add add 0
	mov rsi, rbp
	add rsi, 104

 strftime$312:
	; Assign £temporary2751 -> add 0
	mov byte [rsi + 1], 0



 strftime$313:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$314:
	; Parameter 148 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 148], rax

 strftime$315:
	; Call 124 strlen 0
	mov qword [rbp + 124], strftime$316
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strlen

 strftime$316:
	; PostCall 124

 strftime$317:
	; GetReturnValue £temporary2752

 strftime$318:
	; Assign x £temporary2752
	mov [rbp + 124], ebx














 strftime$319:
	; PreCall 128 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$320:
	; Parameter 152 pointer add
	mov [rbp + 152], rbp
	add qword [rbp + 152], 104

 strftime$321:
	; Call 128 strlen 0
	mov qword [rbp + 128], strftime$322
	mov [rbp + 136], rbp
	add rbp, 128
	jmp strlen

 strftime$322:
	; PostCall 128

 strftime$323:
	; GetReturnValue £temporary2753

 strftime$324:
	; Assign y £temporary2753
	mov [rbp + 128], ebx
















 strftime$325:
	; PreCall 132 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$326:
	; Parameter 156 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 156], rax

 strftime$327:
	; Call 132 strlen 0
	mov qword [rbp + 132], strftime$328
	mov [rbp + 140], rbp
	add rbp, 132
	jmp strlen

 strftime$328:
	; PostCall 132

 strftime$329:
	; GetReturnValue £temporary2754

 strftime$330:
	; PreCall 132 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 132], ebx

 strftime$331:
	; Parameter 156 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 104

 strftime$332:
	; Call 132 strlen 0
	mov qword [rbp + 136], strftime$333
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strlen

 strftime$333:
	; PostCall 132
	mov eax, ebx
	mov ebx, [rbp + 132]

 strftime$334:
	; GetReturnValue £temporary2755

 strftime$335:
	; BinaryAdd £temporary2756 £temporary2754 £temporary2755
	add ebx, eax

 strftime$336:
	; GreaterThanEqual 344 £temporary2756 maxSize
	cmp ebx, [rbp + 32]
	jge strftime$344

 strftime$337:
	; PreCall 132 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$338:
	; Parameter 156 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 156], rax

 strftime$339:
	; Parameter 164 pointer add
	mov [rbp + 164], rbp
	add qword [rbp + 164], 104

 strftime$340:
	; Call 132 strcat 0
	mov qword [rbp + 132], strftime$341
	mov [rbp + 140], rbp
	add rbp, 132
	jmp strcat

 strftime$341:
	; PostCall 132

 strftime$342:
	; BinaryAdd index index 1
	inc dword [rbp + 92]

 strftime$343:
	; Jump 49
	jmp strftime$49

 strftime$344:
	; PreCall 92 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$345:
	; Parameter 116 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

 strftime$346:
	; Call 92 strlen 0
	mov qword [rbp + 92], strftime$347
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strlen

 strftime$347:
	; PostCall 92

 strftime$348:
	; GetReturnValue £temporary2759

 strftime$349:
	; SetReturnValue

 strftime$350:
	; Return £temporary2759
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strftime$351:
	; FunctionEnd strftime

section .data

@8053$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@8058$int4$365#:
	; Initializer SignedInt 365
	dd 365

section .data

@8068$int4$7#:
	; Initializer SignedInt 7
	dd 7

section .data

@8075$int4$7#:
	; Initializer SignedInt 7
	dd 7

section .text

 getWeekNumber:
	; Dereference £temporary2760 -> tp tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$1:
	; BinarySubtract £temporary2761 £temporary2760 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 getWeekNumber$2:
	; Divide £temporary2762 £temporary2761 4
	xor edx, edx
	idiv dword [@8053$int4$4#]

 getWeekNumber$3:
	; IntegralToIntegral £temporary2763 £temporary2762
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge getWeekNumber$4
	neg eax
	neg rax

 getWeekNumber$4:
	; Assign leapDays £temporary2763
	mov [rbp + 32], rax

 getWeekNumber$5:
	; Dereference £temporary2764 -> tp tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$6:
	; BinarySubtract £temporary2765 £temporary2764 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 getWeekNumber$7:
	; Multiply £temporary2766 £temporary2765 365
	xor edx, edx
	imul dword [@8058$int4$365#]

 getWeekNumber$8:
	; IntegralToIntegral £temporary2767 £temporary2766
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge getWeekNumber$9
	neg eax
	neg rax

 getWeekNumber$9:
	; BinaryAdd £temporary2768 £temporary2767 leapDays
	add rax, [rbp + 32]

 getWeekNumber$10:
	; IntegralToIntegral £temporary2769 £temporary2768
	cmp rax, 0
	jge getWeekNumber$11
	neg rax
	neg eax

 getWeekNumber$11:
	; Assign totalDays £temporary2769
	mov [rbp + 40], eax

 getWeekNumber$12:
	; GreaterThanEqual 15 totalDays 3
	cmp dword [rbp + 40], 3
	jge getWeekNumber$15

 getWeekNumber$13:
	; BinaryAdd weekDayJanuaryFirst totalDays 4
	mov eax, [rbp + 40]
	add eax, 4
	mov [rbp + 44], eax

 getWeekNumber$14:
	; Jump 17
	jmp getWeekNumber$17

 getWeekNumber$15:
	; BinarySubtract £temporary2772 totalDays 3
	mov eax, [rbp + 40]
	sub eax, 3

 getWeekNumber$16:
	; Modulo weekDayJanuaryFirst £temporary2772 7
	xor edx, edx
	idiv dword [@8068$int4$7#]
	mov [rbp + 44], edx

 getWeekNumber$17:
	; BinarySubtract firstWeekSize 7 weekDayJanuaryFirst
	mov eax, 7
	sub eax, [rbp + 44]
	mov [rbp + 48], eax

 getWeekNumber$18:
	; Dereference £temporary2775 -> tp tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$19:
	; GreaterThanEqual 22 £temporary2775 -> tp firstWeekSize
	mov eax, [rbp + 48]
	cmp [rsi + 28], eax
	jge getWeekNumber$22

 getWeekNumber$20:
	; SetReturnValue

 getWeekNumber$21:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getWeekNumber$22:
	; Dereference £temporary2777 -> tp tp 0
	mov rsi, [rbp + 24]

 getWeekNumber$23:
	; BinarySubtract £temporary2778 £temporary2777 -> tp firstWeekSize
	mov eax, [rsi + 28]
	sub eax, [rbp + 48]

 getWeekNumber$24:
	; Divide £temporary2779 £temporary2778 7
	xor edx, edx
	idiv dword [@8075$int4$7#]

 getWeekNumber$25:
	; BinaryAdd £temporary2780 £temporary2779 1
	inc eax

 getWeekNumber$26:
	; SetReturnValue

 getWeekNumber$27:
	; Return £temporary2780
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getWeekNumber$28:
	; FunctionEnd getWeekNumber
