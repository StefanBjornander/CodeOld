	global clock
	global time
	global mktime
	global gmtime
	global localtime
	global difftime
	global asctime
	global ctime
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
	; Return -1
	mov rbx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 clock$2:
	; FunctionEnd clock

section .data

@7816$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7820$int4$100#:
	; Initializer SignedInt 100
	dd 100

section .data

@7824$int4$400#:
	; Initializer SignedInt 400
	dd 400

section .text

 @7814$isLeapYear:
	; SignedModulo £temporary2591 year 4
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7816$int4$4#]

 @7814$isLeapYear$1:
	; NotEqual 4 £temporary2591 0
	cmp edx, 0
	jne @7814$isLeapYear$4

 @7814$isLeapYear$2:
	; SignedModulo £temporary2593 year 100
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7820$int4$100#]

 @7814$isLeapYear$3:
	; NotEqual 6 £temporary2593 0
	cmp edx, 0
	jne @7814$isLeapYear$6

 @7814$isLeapYear$4:
	; SignedModulo £temporary2596 year 400
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7824$int4$400#]

 @7814$isLeapYear$5:
	; NotEqual 8 £temporary2596 0
	cmp edx, 0
	jne @7814$isLeapYear$8

 @7814$isLeapYear$6:
	; Assign £temporary2599 1
	mov ebx, 1

 @7814$isLeapYear$7:
	; Jump 9
	jmp @7814$isLeapYear$9

 @7814$isLeapYear$8:
	; Assign £temporary2599 0
	mov ebx, 0

 @7814$isLeapYear$9:
	; SetReturnValue

 @7814$isLeapYear$10:
	; Return £temporary2599
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @7814$isLeapYear$11:
	; FunctionEnd isLeapYear

section .text

 time:
	; AssignRegister rax 201
	mov rax, 201

 time$1:
	; Address £temporary2602 time
	mov rdi, rbp
	add rdi, 32

 time$2:
	; IntegralToIntegral £temporary2603 £temporary2602

 time$3:
	; AssignRegister rdi £temporary2603

 time$4:
	; SysCall
	syscall

 time$5:
	; Equal 8 timePtr 0
	cmp qword [rbp + 24], 0
	je time$8

 time$6:
	; Dereference £temporary2605 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 time$7:
	; Assign £temporary2605 -> timePtr time
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

@7843$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7848$int4$365#:
	; Initializer SignedInt 365
	dd 365

section .data

@7851$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7853$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7855$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .text

 mktime:
	; Equal 28 tp 0
	cmp qword [rbp + 24], 0
	je mktime$28

 mktime$1:
	; Dereference £temporary2608 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$2:
	; BinarySubtract £temporary2609 £temporary2608 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 mktime$3:
	; SignedDivide £temporary2610 £temporary2609 4
	xor edx, edx
	idiv dword [@7843$int4$4#]

 mktime$4:
	; IntegralToIntegral £temporary2611 £temporary2610
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

 mktime$5:
	; Assign leapDays £temporary2611
	mov [rbp + 32], rax

 mktime$6:
	; Dereference £temporary2612 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$7:
	; BinarySubtract £temporary2613 £temporary2612 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 mktime$8:
	; SignedMultiply £temporary2614 £temporary2613 365
	xor edx, edx
	imul dword [@7848$int4$365#]

 mktime$9:
	; IntegralToIntegral £temporary2615 £temporary2614
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

 mktime$10:
	; BinaryAdd £temporary2616 £temporary2615 leapDays
	add rax, [rbp + 32]

 mktime$11:
	; Dereference £temporary2617 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$12:
	; IntegralToIntegral £temporary2618 £temporary2617 -> tp
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

 mktime$13:
	; BinaryAdd totalDays £temporary2616 £temporary2618
	add rax, rbx
	mov [rbp + 40], rax

 mktime$14:
	; SignedMultiply £temporary2620 totalDays 86400
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [@7851$int8$86400#]
	mov rbx, rax

 mktime$15:
	; Dereference £temporary2621 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$16:
	; IntegralToIntegral £temporary2622 £temporary2621 -> tp
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

 mktime$17:
	; SignedMultiply £temporary2623 £temporary2622 3600
	xor rdx, rdx
	imul qword [@7853$int8$3600#]

 mktime$18:
	; BinaryAdd £temporary2624 £temporary2620 £temporary2623
	add rbx, rax

 mktime$19:
	; Dereference £temporary2625 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$20:
	; IntegralToIntegral £temporary2626 £temporary2625 -> tp
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

 mktime$21:
	; SignedMultiply £temporary2627 £temporary2626 60
	xor rdx, rdx
	imul qword [@7855$int8$60#]

 mktime$22:
	; BinaryAdd £temporary2628 £temporary2624 £temporary2627
	add rbx, rax

 mktime$23:
	; Dereference £temporary2629 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$24:
	; IntegralToIntegral £temporary2630 £temporary2629 -> tp
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

 mktime$25:
	; BinaryAdd £temporary2631 £temporary2628 £temporary2630
	add rbx, rax

 mktime$26:
	; SetReturnValue

 mktime$27:
	; Return £temporary2631
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

@7858$g_timeStruct:
	; InitializerZero 36
	times 36 db 0

section .data

@7865$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7868$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7871$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7873$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .data

@7875$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .data

@7877$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7886$int8$7#:
	; Initializer Signed_Long_Int 7
	dq 7

section .data

@7889$int8$365#:
	; Initializer Signed_Long_Int 365
	dq 365

section .data

@7895$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7899$int8$365#:
	; Initializer Signed_Long_Int 365
	dq 365

section .data

@7943$Array_4#:
	; Initializer Array 4
	dq 4

section .data

@7945$Array_4#:
	; Initializer Array 4
	dq 4

section .text

 gmtime:
	; Equal 91 timePtr 0
	cmp qword [rbp + 24], 0
	je gmtime$91

 gmtime$1:
	; Dereference £temporary2633 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 gmtime$2:
	; Assign time £temporary2633 -> timePtr
	mov rax, [rsi]
	mov [rbp + 32], rax

 gmtime$3:
	; SignedModulo secondsOfDay time 86400
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@7865$int8$86400#]
	mov [rbp + 40], rdx

 gmtime$4:
	; SignedModulo secondsOfHour secondsOfDay 3600
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@7868$int8$3600#]
	mov [rbp + 48], rdx

 gmtime$5:
	; SignedDivide £temporary2637 secondsOfDay 3600
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@7871$int8$3600#]

 gmtime$6:
	; IntegralToIntegral £temporary2638 £temporary2637
	cmp rax, 0
	jge gmtime$7
	neg rax
	neg eax

 gmtime$7:
	; Assign g_timeStruct.tm_hour £temporary2638
	mov [@7858$g_timeStruct + 8], eax

 gmtime$8:
	; SignedDivide £temporary2640 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@7873$int8$60#]

 gmtime$9:
	; IntegralToIntegral £temporary2641 £temporary2640
	cmp rax, 0
	jge gmtime$10
	neg rax
	neg eax

 gmtime$10:
	; Assign g_timeStruct.tm_min £temporary2641
	mov [@7858$g_timeStruct + 4], eax

 gmtime$11:
	; SignedModulo £temporary2643 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@7875$int8$60#]

 gmtime$12:
	; IntegralToIntegral £temporary2644 £temporary2643
	cmp rdx, 0
	jge gmtime$13
	neg rdx
	neg edx

 gmtime$13:
	; Assign g_timeStruct.tm_sec £temporary2644
	mov [@7858$g_timeStruct], edx

 gmtime$14:
	; SignedDivide totalDays time 86400
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@7877$int8$86400#]
	mov [rbp + 56], rax

 gmtime$15:
	; SignedGreaterThanEqual 20 totalDays 3
	cmp qword [rbp + 56], 3
	jge gmtime$20

 gmtime$16:
	; BinaryAdd £temporary2648 totalDays 4
	mov rax, [rbp + 56]
	add rax, 4

 gmtime$17:
	; IntegralToIntegral £temporary2649 £temporary2648
	cmp rax, 0
	jge gmtime$18
	neg rax
	neg eax

 gmtime$18:
	; Assign g_timeStruct.tm_wday £temporary2649
	mov [@7858$g_timeStruct + 24], eax

 gmtime$19:
	; Jump 24
	jmp gmtime$24

 gmtime$20:
	; BinarySubtract £temporary2651 totalDays 3
	mov rax, [rbp + 56]
	sub rax, 3

 gmtime$21:
	; SignedModulo £temporary2652 £temporary2651 7
	xor rdx, rdx
	idiv qword [@7886$int8$7#]

 gmtime$22:
	; IntegralToIntegral £temporary2653 £temporary2652
	cmp rdx, 0
	jge gmtime$23
	neg rdx
	neg edx

 gmtime$23:
	; Assign g_timeStruct.tm_wday £temporary2653
	mov [@7858$g_timeStruct + 24], edx

 gmtime$24:
	; SignedDivide £temporary2654 totalDays 365
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@7889$int8$365#]

 gmtime$25:
	; BinaryAdd £temporary2655 £temporary2654 1970
	add rax, 1970

 gmtime$26:
	; IntegralToIntegral £temporary2656 £temporary2655
	cmp rax, 0
	jge gmtime$27
	neg rax
	neg eax

 gmtime$27:
	; Assign year £temporary2656
	mov [rbp + 64], eax

 gmtime$28:
	; BinarySubtract £temporary2657 year 1969
	mov eax, [rbp + 64]
	sub eax, 1969

 gmtime$29:
	; SignedDivide leapDays £temporary2657 4
	xor edx, edx
	idiv dword [@7895$int4$4#]
	mov [rbp + 68], eax

 gmtime$30:
	; SignedModulo totalDays totalDays 365
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@7899$int8$365#]
	mov [rbp + 56], rdx

 gmtime$31:
	; IntegralToIntegral £temporary2660 leapDays
	mov eax, [rbp + 68]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$32
	neg eax
	neg rax

 gmtime$32:
	; BinarySubtract totalDays totalDays £temporary2660
	sub [rbp + 56], rax

 gmtime$33:
	; SignedGreaterThanEqual 44 totalDays 0
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
	jmp @7814$isLeapYear

 gmtime$38:
	; PostCall 72

 gmtime$39:
	; GetReturnValue £temporary2664

 gmtime$40:
	; Equal 43 £temporary2664 0
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
	mov [@7858$g_timeStruct + 20], eax

 gmtime$45:
	; IntegralToIntegral £temporary2671 totalDays
	mov rax, [rbp + 56]
	cmp rax, 0
	jge gmtime$46
	neg rax
	neg eax

 gmtime$46:
	; Assign g_timeStruct.tm_yday £temporary2671
	mov [@7858$g_timeStruct + 28], eax

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
	jmp @7814$isLeapYear

 gmtime$51:
	; PostCall 76

 gmtime$52:
	; GetReturnValue £temporary2672

 gmtime$53:
	; Equal 56 £temporary2672 0
	cmp ebx, 0
	je gmtime$56

 gmtime$54:
	; Assign £temporary2674 29
	mov eax, 29

 gmtime$55:
	; Jump 57
	jmp gmtime$57

 gmtime$56:
	; Assign £temporary2674 28
	mov eax, 28

 gmtime$57:
	; Assign daysOfMonths[1] £temporary2674
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
	; IntegralToIntegral £temporary2688 month
	mov eax, [rbp + 120]
	mov rbx, 4294967295
	and rax, rbx

 gmtime$70:
	; UnsignedMultiply £temporary2689 £temporary2688 4
	xor rdx, rdx
	mul qword [@7943$Array_4#]

 gmtime$71:
	; BinaryAdd £temporary2690 daysOfMonths £temporary2689
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$72:
	; Dereference £temporary2687 -> £temporary2690 £temporary2690 0

 gmtime$73:
	; IntegralToIntegral £temporary2691 £temporary2687 -> £temporary2690
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$74
	neg eax
	neg rax

 gmtime$74:
	; SignedLessThan 84 totalDays £temporary2691
	cmp [rbp + 56], rax
	jl gmtime$84

 gmtime$75:
	; Assign £temporary2693 month
	mov eax, [rbp + 120]

 gmtime$76:
	; BinaryAdd month month 1
	inc dword [rbp + 120]

 gmtime$77:
	; IntegralToIntegral £temporary2695 £temporary2693
	mov rbx, 4294967295
	and rax, rbx

 gmtime$78:
	; UnsignedMultiply £temporary2696 £temporary2695 4
	xor rdx, rdx
	mul qword [@7945$Array_4#]

 gmtime$79:
	; BinaryAdd £temporary2697 daysOfMonths £temporary2696
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$80:
	; Dereference £temporary2694 -> £temporary2697 £temporary2697 0

 gmtime$81:
	; IntegralToIntegral £temporary2698 £temporary2694 -> £temporary2697
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$82
	neg eax
	neg rax

 gmtime$82:
	; BinarySubtract totalDays totalDays £temporary2698
	sub [rbp + 56], rax

 gmtime$83:
	; Jump 69
	jmp gmtime$69

 gmtime$84:
	; Assign g_timeStruct.tm_mon month
	mov eax, [rbp + 120]
	mov [@7858$g_timeStruct + 16], eax

 gmtime$85:
	; BinaryAdd £temporary2702 totalDays 1
	mov rax, [rbp + 56]
	inc rax

 gmtime$86:
	; IntegralToIntegral £temporary2703 £temporary2702
	cmp rax, 0
	jge gmtime$87
	neg rax
	neg eax

 gmtime$87:
	; Assign g_timeStruct.tm_mday £temporary2703
	mov [@7858$g_timeStruct + 12], eax

 gmtime$88:
	; Assign g_timeStruct.tm_isdst -1
	mov dword [@7858$g_timeStruct + 32], -1

 gmtime$89:
	; SetReturnValue

 gmtime$90:
	; Return @7858$g_timeStruct
	mov rbx, @7858$g_timeStruct
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

@7968$int8$3600#:
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
	; GetReturnValue £temporary2705

 localtime$5:
	; Assign tmPtr £temporary2705
	mov [rbp + 32], rbx

 localtime$6:
	; Dereference £temporary2706 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 localtime$7:
	; Assign t £temporary2706 -> timePtr
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
	; GetReturnValue £temporary2707

 localtime$12:
	; Assign localeConvPtr £temporary2707
	mov [rbp + 48], rbx

 localtime$13:
	; Equal 25 localeConvPtr 0
	cmp qword [rbp + 48], 0
	je localtime$25

 localtime$14:
	; Dereference £temporary2709 -> tmPtr tmPtr 0
	mov rsi, [rbp + 32]

 localtime$15:
	; NotEqual 19 £temporary2709 -> tmPtr 1
	cmp dword [rsi + 32], 1
	jne localtime$19

 localtime$16:
	; Dereference £temporary2711 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 48]

 localtime$17:
	; Assign £temporary2713 £temporary2711 -> localeConvPtr
	mov eax, [rsi]

 localtime$18:
	; Jump 21
	jmp localtime$21

 localtime$19:
	; Dereference £temporary2712 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 48]

 localtime$20:
	; Assign £temporary2713 £temporary2712 -> localeConvPtr
	mov eax, [rsi + 4]

 localtime$21:
	; Assign timeZone £temporary2713
	mov [rbp + 56], eax

 localtime$22:
	; IntegralToIntegral £temporary2714 timeZone
	mov eax, [rbp + 56]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge localtime$23
	neg eax
	neg rax

 localtime$23:
	; SignedMultiply £temporary2715 £temporary2714 3600
	xor rdx, rdx
	imul qword [@7968$int8$3600#]

 localtime$24:
	; BinaryAdd t t £temporary2715
	add [rbp + 40], rax

 localtime$25:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$26:
	; Address £temporary2717 t
	mov rsi, rbp
	add rsi, 40

 localtime$27:
	; Parameter 80 pointer £temporary2717
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
	; GetReturnValue £temporary2718

 localtime$31:
	; SetReturnValue

 localtime$32:
	; Return £temporary2718
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
	; BinarySubtract £temporary2720 time2 time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

 difftime$1:
	; IntegralToFloating £temporary2721 £temporary2720
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 difftime$2:
	; SetReturnValue

 difftime$3:
	; Return £temporary2721
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 difftime$4:
	; FunctionEnd difftime

section .data

@7975$g_timeString:
	; InitializerZero 256
	times 256 db 0

section .data

@7976$string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

@7977$string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

@7978$string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

@7979$string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

@7980$string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

@7981$string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

@7982$string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@7983$g_shortDayList:
	; Initializer Pointer @7976$string_Sun#
	dq @7976$string_Sun#
	; Initializer Pointer @7977$string_Mon#
	dq @7977$string_Mon#
	; Initializer Pointer @7978$string_Tue#
	dq @7978$string_Tue#
	; Initializer Pointer @7979$string_Wed#
	dq @7979$string_Wed#
	; Initializer Pointer @7980$string_Thu#
	dq @7980$string_Thu#
	; Initializer Pointer @7981$string_Fri#
	dq @7981$string_Fri#
	; Initializer Pointer @7982$string_Sat#
	dq @7982$string_Sat#

section .data

@7984$string_Sunday#:
	; Initializer String Sunday
	db "Sunday", 0

section .data

@7985$string_Monday#:
	; Initializer String Monday
	db "Monday", 0

section .data

@7986$string_Tuesday#:
	; Initializer String Tuesday
	db "Tuesday", 0

section .data

@7987$string_Wednesday#:
	; Initializer String Wednesday
	db "Wednesday", 0

section .data

@7988$string_Thursday#:
	; Initializer String Thursday
	db "Thursday", 0

section .data

@7989$string_Friday#:
	; Initializer String Friday
	db "Friday", 0

section .data

@7990$string_Saturday#:
	; Initializer String Saturday
	db "Saturday", 0

section .data

@7991$g_longDayList:
	; Initializer Pointer @7984$string_Sunday#
	dq @7984$string_Sunday#
	; Initializer Pointer @7985$string_Monday#
	dq @7985$string_Monday#
	; Initializer Pointer @7986$string_Tuesday#
	dq @7986$string_Tuesday#
	; Initializer Pointer @7987$string_Wednesday#
	dq @7987$string_Wednesday#
	; Initializer Pointer @7988$string_Thursday#
	dq @7988$string_Thursday#
	; Initializer Pointer @7989$string_Friday#
	dq @7989$string_Friday#
	; Initializer Pointer @7990$string_Saturday#
	dq @7990$string_Saturday#

section .data

@7992$string_Jan#:
	; Initializer String Jan
	db "Jan", 0

section .data

@7993$string_Feb#:
	; Initializer String Feb
	db "Feb", 0

section .data

@7994$string_Mar#:
	; Initializer String Mar
	db "Mar", 0

section .data

@7995$string_Apr#:
	; Initializer String Apr
	db "Apr", 0

section .data

@7996$string_May#:
	; Initializer String May
	db "May", 0

section .data

@7997$string_Jun#:
	; Initializer String Jun
	db "Jun", 0

section .data

@7998$string_Jul#:
	; Initializer String Jul
	db "Jul", 0

section .data

@7999$string_Aug#:
	; Initializer String Aug
	db "Aug", 0

section .data

@8000$string_Sep#:
	; Initializer String Sep
	db "Sep", 0

section .data

@8001$string_Oct#:
	; Initializer String Oct
	db "Oct", 0

section .data

@8002$string_Nov#:
	; Initializer String Nov
	db "Nov", 0

section .data

@8003$string_Dec#:
	; Initializer String Dec
	db "Dec", 0

section .data

@8004$g_shortMonthList:
	; Initializer Pointer @7992$string_Jan#
	dq @7992$string_Jan#
	; Initializer Pointer @7993$string_Feb#
	dq @7993$string_Feb#
	; Initializer Pointer @7994$string_Mar#
	dq @7994$string_Mar#
	; Initializer Pointer @7995$string_Apr#
	dq @7995$string_Apr#
	; Initializer Pointer @7996$string_May#
	dq @7996$string_May#
	; Initializer Pointer @7997$string_Jun#
	dq @7997$string_Jun#
	; Initializer Pointer @7998$string_Jul#
	dq @7998$string_Jul#
	; Initializer Pointer @7999$string_Aug#
	dq @7999$string_Aug#
	; Initializer Pointer @8000$string_Sep#
	dq @8000$string_Sep#
	; Initializer Pointer @8001$string_Oct#
	dq @8001$string_Oct#
	; Initializer Pointer @8002$string_Nov#
	dq @8002$string_Nov#
	; Initializer Pointer @8003$string_Dec#
	dq @8003$string_Dec#

section .data

@8005$string_January#:
	; Initializer String January
	db "January", 0

section .data

@8006$string_February#:
	; Initializer String February
	db "February", 0

section .data

@8007$string_March#:
	; Initializer String March
	db "March", 0

section .data

@8008$string_April#:
	; Initializer String April
	db "April", 0

section .data

@8009$string_May#:
	; Initializer String May
	db "May", 0

section .data

@8010$string_June#:
	; Initializer String June
	db "June", 0

section .data

@8011$string_July#:
	; Initializer String July
	db "July", 0

section .data

@8012$string_August#:
	; Initializer String August
	db "August", 0

section .data

@8013$string_September#:
	; Initializer String September
	db "September", 0

section .data

@8014$string_October#:
	; Initializer String October
	db "October", 0

section .data

@8015$string_November#:
	; Initializer String November
	db "November", 0

section .data

@8016$string_December#:
	; Initializer String December
	db "December", 0

section .data

@8017$g_longMonthList:
	; Initializer Pointer @8005$string_January#
	dq @8005$string_January#
	; Initializer Pointer @8006$string_February#
	dq @8006$string_February#
	; Initializer Pointer @8007$string_March#
	dq @8007$string_March#
	; Initializer Pointer @8008$string_April#
	dq @8008$string_April#
	; Initializer Pointer @8009$string_May#
	dq @8009$string_May#
	; Initializer Pointer @8010$string_June#
	dq @8010$string_June#
	; Initializer Pointer @8011$string_July#
	dq @8011$string_July#
	; Initializer Pointer @8012$string_August#
	dq @8012$string_August#
	; Initializer Pointer @8013$string_September#
	dq @8013$string_September#
	; Initializer Pointer @8014$string_October#
	dq @8014$string_October#
	; Initializer Pointer @8015$string_November#
	dq @8015$string_November#
	; Initializer Pointer @8016$string_December#
	dq @8016$string_December#

section .data

@8037$string_25s2025s2025i202502i3A2502i3A2502i2025i#:
	; Initializer String %s %s %i %02i:%02i:%02i %i
	db "%s %s %i %02i:%02i:%02i %i", 0

section .data

@8038$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8039$int8$8#:
	; Initializer Pointer 8
	dq 8

section .text

 asctime:
	; Assign localeConvPtr 0
	mov qword [rbp + 32], 0

 asctime$1:
	; Equal 7 localeConvPtr 0
	cmp qword [rbp + 32], 0
	je asctime$7

 asctime$2:
	; Dereference £temporary2723 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$3:
	; Equal 7 £temporary2723 -> localeConvPtr 0
	cmp qword [rsi + 8], 0
	je asctime$7

 asctime$4:
	; Dereference £temporary2726 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$5:
	; Assign shortDayList £temporary2726 -> localeConvPtr
	mov rax, [rsi + 8]
	mov [rbp + 40], rax

 asctime$6:
	; Jump 8
	jmp asctime$8

 asctime$7:
	; Assign shortDayList g_shortDayList
	mov qword [rbp + 40], @7983$g_shortDayList

 asctime$8:
	; Equal 14 localeConvPtr 0
	cmp qword [rbp + 32], 0
	je asctime$14

 asctime$9:
	; Dereference £temporary2728 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$10:
	; Equal 14 £temporary2728 -> localeConvPtr 0
	cmp qword [rsi + 24], 0
	je asctime$14

 asctime$11:
	; Dereference £temporary2731 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$12:
	; Assign shortMonthList £temporary2731 -> localeConvPtr
	mov rax, [rsi + 24]
	mov [rbp + 48], rax

 asctime$13:
	; Jump 15
	jmp asctime$15

 asctime$14:
	; Assign shortMonthList g_shortMonthList
	mov qword [rbp + 48], @8004$g_shortMonthList

 asctime$15:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asctime$16:
	; Parameter 80 pointer g_timeString
	mov qword [rbp + 80], @7975$g_timeString

 asctime$17:
	; Parameter 88 pointer "%s %s %i %02i:%02i:%02i %i"
	mov qword [rbp + 88], @8037$string_25s2025s2025i202502i3A2502i3A2502i2025i#

 asctime$18:
	; Dereference £temporary2732 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$19:
	; IntegralToIntegral £temporary2734 £temporary2732 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 asctime$20:
	; UnsignedMultiply £temporary2735 £temporary2734 8
	xor rdx, rdx
	mul qword [@8038$int8$8#]

 asctime$21:
	; BinaryAdd £temporary2736 shortDayList £temporary2735
	mov rsi, [rbp + 40]
	add rsi, rax

 asctime$22:
	; Dereference £temporary2733 -> £temporary2736 £temporary2736 0

 asctime$23:
	; Parameter 96 pointer £temporary2733 -> £temporary2736
	mov rax, [rsi]
	mov [rbp + 96], rax

 asctime$24:
	; Dereference £temporary2737 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$25:
	; IntegralToIntegral £temporary2739 £temporary2737 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 asctime$26:
	; UnsignedMultiply £temporary2740 £temporary2739 8
	xor rdx, rdx
	mul qword [@8039$int8$8#]

 asctime$27:
	; BinaryAdd £temporary2741 shortMonthList £temporary2740
	mov rsi, [rbp + 48]
	add rsi, rax

 asctime$28:
	; Dereference £temporary2738 -> £temporary2741 £temporary2741 0

 asctime$29:
	; Parameter 104 pointer £temporary2738 -> £temporary2741
	mov rax, [rsi]
	mov [rbp + 104], rax

 asctime$30:
	; Dereference £temporary2742 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$31:
	; Parameter 112 signedint £temporary2742 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

 asctime$32:
	; Dereference £temporary2743 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$33:
	; Parameter 116 signedint £temporary2743 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

 asctime$34:
	; Dereference £temporary2744 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$35:
	; Parameter 120 signedint £temporary2744 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

 asctime$36:
	; Dereference £temporary2745 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$37:
	; Parameter 124 signedint £temporary2745 -> tp
	mov eax, [rsi]
	mov [rbp + 124], eax

 asctime$38:
	; Dereference £temporary2746 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$39:
	; BinaryAdd £temporary2747 £temporary2746 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 asctime$40:
	; Parameter 128 signedint £temporary2747
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
	mov rbx, @7975$g_timeString
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
	; GetReturnValue £temporary2749

 ctime$6:
	; Parameter 56 pointer £temporary2749
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
	; GetReturnValue £temporary2750

 ctime$10:
	; SetReturnValue

 ctime$11:
	; Return £temporary2750
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ctime$12:
	; FunctionEnd ctime

section .data

@8087$string_#:
	; Initializer String 
	db 0

section .data

@8124$string_2502i2D2502i2D2502i202502i3A2502i3A2502i#:
	; Initializer String %02i-%02i-%02i %02i:%02i:%02i
	db "%02i-%02i-%02i %02i:%02i:%02i", 0

section .data

@8131$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8134$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8137$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8142$string_2503i#:
	; Initializer String %03i
	db "%03i", 0

section .data

@8145$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8150$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8153$string_25s#:
	; Initializer String %s
	db "%s", 0

section .data

@8156$string_AM#:
	; Initializer String AM
	db "AM", 0

section .data

@8157$string_PM#:
	; Initializer String PM
	db "PM", 0

section .data

@8160$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8163$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8166$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8169$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8172$string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@8175$string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@8178$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8183$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8188$string_summer#:
	; Initializer String summer
	db "summer", 0

section .data

@8189$string_winter#:
	; Initializer String winter
	db "winter", 0

section .data

@8193$string_25#:
	; Initializer String %
	db "%", 0

section .data

@8194$string_#:
	; Initializer String 
	db 0

section .data

@8112$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8115$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8118$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8121$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8139$int4$12#:
	; Initializer SignedInt 12
	dd 12

section .data

@8180$int4$100#:
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
	; GetReturnValue £temporary2751

 strftime$4:
	; Assign localeConvPtr £temporary2751
	mov [rbp + 52], rbx

 strftime$5:
	; Equal 11 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$11

 strftime$6:
	; Dereference £temporary2753 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$7:
	; Equal 11 £temporary2753 -> localeConvPtr 0
	cmp qword [rsi + 8], 0
	je strftime$11

 strftime$8:
	; Dereference £temporary2756 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$9:
	; Assign shortDayList £temporary2756 -> localeConvPtr
	mov rax, [rsi + 8]
	mov [rbp + 60], rax

 strftime$10:
	; Jump 12
	jmp strftime$12

 strftime$11:
	; Assign shortDayList g_shortDayList
	mov qword [rbp + 60], @7983$g_shortDayList

 strftime$12:
	; Equal 18 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$18

 strftime$13:
	; Dereference £temporary2758 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$14:
	; Equal 18 £temporary2758 -> localeConvPtr 0
	cmp qword [rsi + 16], 0
	je strftime$18

 strftime$15:
	; Dereference £temporary2761 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$16:
	; Assign longDayList £temporary2761 -> localeConvPtr
	mov rax, [rsi + 16]
	mov [rbp + 76], rax

 strftime$17:
	; Jump 19
	jmp strftime$19

 strftime$18:
	; Assign longDayList g_longDayList
	mov qword [rbp + 76], @7991$g_longDayList

 strftime$19:
	; Equal 25 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$25

 strftime$20:
	; Dereference £temporary2763 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$21:
	; Equal 25 £temporary2763 -> localeConvPtr 0
	cmp qword [rsi + 24], 0
	je strftime$25

 strftime$22:
	; Dereference £temporary2766 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$23:
	; Assign shortMonthList £temporary2766 -> localeConvPtr
	mov rax, [rsi + 24]
	mov [rbp + 68], rax

 strftime$24:
	; Jump 26
	jmp strftime$26

 strftime$25:
	; Assign shortMonthList g_shortMonthList
	mov qword [rbp + 68], @8004$g_shortMonthList

 strftime$26:
	; Equal 32 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$32

 strftime$27:
	; Dereference £temporary2768 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$28:
	; Equal 32 £temporary2768 -> localeConvPtr 0
	cmp qword [rsi + 32], 0
	je strftime$32

 strftime$29:
	; Dereference £temporary2771 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$30:
	; Assign longMonthList £temporary2771 -> localeConvPtr
	mov rax, [rsi + 32]
	mov [rbp + 84], rax

 strftime$31:
	; Jump 33
	jmp strftime$33

 strftime$32:
	; Assign longMonthList g_longMonthList
	mov qword [rbp + 84], @8017$g_longMonthList

 strftime$33:
	; PreCall 92 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$34:
	; Parameter 116 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

 strftime$35:
	; Parameter 124 pointer ""
	mov qword [rbp + 124], @8087$string_#

 strftime$36:
	; Call 92 strcpy 0
	mov qword [rbp + 92], strftime$37
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strcpy

 strftime$37:
	; PostCall 92

 strftime$38:
	; Assign weekNumberStartSunday 0
	mov dword [rbp + 96], 0

 strftime$39:
	; Assign weekNumberStartMonday 0
	mov dword [rbp + 100], 0

 strftime$40:
	; Assign index 0
	mov dword [rbp + 92], 0

 strftime$41:
	; IntegralToIntegral £temporary2774 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$42:
	; BinaryAdd £temporary2776 format £temporary2774
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$43:
	; Dereference £temporary2773 -> £temporary2776 £temporary2776 0

 strftime$44:
	; Equal 326 £temporary2773 -> £temporary2776 0
	cmp byte [rsi], 0
	je strftime$326

 strftime$45:
	; IntegralToIntegral £temporary2780 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$46:
	; BinaryAdd £temporary2782 format £temporary2780
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$47:
	; Dereference £temporary2779 -> £temporary2782 £temporary2782 0

 strftime$48:
	; NotEqual 298 £temporary2779 -> £temporary2782 37
	cmp byte [rsi], 37
	jne strftime$298

 strftime$49:
	; BinaryAdd index index 1
	inc dword [rbp + 92]

 strftime$50:
	; Assign £temporary2784 index
	mov eax, [rbp + 92]

 strftime$51:
	; IntegralToIntegral £temporary2786 £temporary2784
	mov rbx, 4294967295
	and rax, rbx

 strftime$52:
	; BinaryAdd £temporary2788 format £temporary2786
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$53:
	; Dereference £temporary2785 -> £temporary2788 £temporary2788 0

 strftime$54:
	; Case 78 £temporary2785 -> £temporary2788 97
	mov al, [rsi]
	cmp al, 97
	je strftime$78

 strftime$55:
	; Case 89 £temporary2785 -> £temporary2788 65
	cmp al, 65
	je strftime$89

 strftime$56:
	; Case 100 £temporary2785 -> £temporary2788 98
	cmp al, 98
	je strftime$100

 strftime$57:
	; Case 111 £temporary2785 -> £temporary2788 66
	cmp al, 66
	je strftime$111

 strftime$58:
	; Case 122 £temporary2785 -> £temporary2788 99
	cmp al, 99
	je strftime$122

 strftime$59:
	; Case 142 £temporary2785 -> £temporary2788 100
	cmp al, 100
	je strftime$142

 strftime$60:
	; Case 150 £temporary2785 -> £temporary2788 72
	cmp al, 72
	je strftime$150

 strftime$61:
	; Case 158 £temporary2785 -> £temporary2788 73
	cmp al, 73
	je strftime$158

 strftime$62:
	; Case 167 £temporary2785 -> £temporary2788 106
	cmp al, 106
	je strftime$167

 strftime$63:
	; Case 175 £temporary2785 -> £temporary2788 109
	cmp al, 109
	je strftime$175

 strftime$64:
	; Case 184 £temporary2785 -> £temporary2788 77
	cmp al, 77
	je strftime$184

 strftime$65:
	; Case 192 £temporary2785 -> £temporary2788 112
	cmp al, 112
	je strftime$192

 strftime$66:
	; Case 204 £temporary2785 -> £temporary2788 83
	cmp al, 83
	je strftime$204

 strftime$67:
	; Case 212 £temporary2785 -> £temporary2788 85
	cmp al, 85
	je strftime$212

 strftime$68:
	; Case 219 £temporary2785 -> £temporary2788 119
	cmp al, 119
	je strftime$219

 strftime$69:
	; Case 227 £temporary2785 -> £temporary2788 87
	cmp al, 87
	je strftime$227

 strftime$70:
	; Case 234 £temporary2785 -> £temporary2788 120
	cmp al, 120
	je strftime$234

 strftime$71:
	; Case 246 £temporary2785 -> £temporary2788 88
	cmp al, 88
	je strftime$246

 strftime$72:
	; Case 258 £temporary2785 -> £temporary2788 121
	cmp al, 121
	je strftime$258

 strftime$73:
	; Case 267 £temporary2785 -> £temporary2788 89
	cmp al, 89
	je strftime$267

 strftime$74:
	; Case 276 £temporary2785 -> £temporary2788 90
	cmp al, 90
	je strftime$276

 strftime$75:
	; Case 287 £temporary2785 -> £temporary2788 37
	cmp al, 37
	je strftime$287

 strftime$76:
	; CaseEnd £temporary2785 -> £temporary2788

 strftime$77:
	; Jump 292
	jmp strftime$292

 strftime$78:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$79:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$80:
	; Dereference £temporary2789 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$81:
	; IntegralToIntegral £temporary2791 £temporary2789 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$82:
	; UnsignedMultiply £temporary2792 £temporary2791 8
	xor rdx, rdx
	mul qword [@8112$int8$8#]

 strftime$83:
	; BinaryAdd £temporary2793 shortDayList £temporary2792
	mov rsi, [rbp + 60]
	add rsi, rax

 strftime$84:
	; Dereference £temporary2790 -> £temporary2793 £temporary2793 0

 strftime$85:
	; Parameter 156 pointer £temporary2790 -> £temporary2793
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$86:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$87
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$87:
	; PostCall 124

 strftime$88:
	; Jump 305
	jmp strftime$305

 strftime$89:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$90:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$91:
	; Dereference £temporary2795 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$92:
	; IntegralToIntegral £temporary2797 £temporary2795 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$93:
	; UnsignedMultiply £temporary2798 £temporary2797 8
	xor rdx, rdx
	mul qword [@8115$int8$8#]

 strftime$94:
	; BinaryAdd £temporary2799 longDayList £temporary2798
	mov rsi, [rbp + 76]
	add rsi, rax

 strftime$95:
	; Dereference £temporary2796 -> £temporary2799 £temporary2799 0

 strftime$96:
	; Parameter 156 pointer £temporary2796 -> £temporary2799
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$97:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$98
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$98:
	; PostCall 124

 strftime$99:
	; Jump 305
	jmp strftime$305

 strftime$100:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$101:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$102:
	; Dereference £temporary2801 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$103:
	; IntegralToIntegral £temporary2803 £temporary2801 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$104:
	; UnsignedMultiply £temporary2804 £temporary2803 8
	xor rdx, rdx
	mul qword [@8118$int8$8#]

 strftime$105:
	; BinaryAdd £temporary2805 shortMonthList £temporary2804
	mov rsi, [rbp + 68]
	add rsi, rax

 strftime$106:
	; Dereference £temporary2802 -> £temporary2805 £temporary2805 0

 strftime$107:
	; Parameter 156 pointer £temporary2802 -> £temporary2805
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$108:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$109
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$109:
	; PostCall 124

 strftime$110:
	; Jump 305
	jmp strftime$305

 strftime$111:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$112:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$113:
	; Dereference £temporary2807 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$114:
	; IntegralToIntegral £temporary2809 £temporary2807 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$115:
	; UnsignedMultiply £temporary2810 £temporary2809 8
	xor rdx, rdx
	mul qword [@8121$int8$8#]

 strftime$116:
	; BinaryAdd £temporary2811 longMonthList £temporary2810
	mov rsi, [rbp + 84]
	add rsi, rax

 strftime$117:
	; Dereference £temporary2808 -> £temporary2811 £temporary2811 0

 strftime$118:
	; Parameter 156 pointer £temporary2808 -> £temporary2811
	mov rax, [rsi]
	mov [rbp + 156], rax

 strftime$119:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$120
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$120:
	; PostCall 124

 strftime$121:
	; Jump 305
	jmp strftime$305

 strftime$122:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$123:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$124:
	; Parameter 156 pointer "%02i-%02i-%02i %02i:%02i:%02i"
	mov qword [rbp + 156], @8124$string_2502i2D2502i2D2502i202502i3A2502i3A2502i#

 strftime$125:
	; Dereference £temporary2813 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$126:
	; BinaryAdd £temporary2814 £temporary2813 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$127:
	; Parameter 164 signedint £temporary2814
	mov [rbp + 164], eax

 strftime$128:
	; Dereference £temporary2815 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$129:
	; BinaryAdd £temporary2816 £temporary2815 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$130:
	; Parameter 168 signedint £temporary2816
	mov [rbp + 168], eax

 strftime$131:
	; Dereference £temporary2817 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$132:
	; Parameter 172 signedint £temporary2817 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 172], eax

 strftime$133:
	; Dereference £temporary2818 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$134:
	; Parameter 176 signedint £temporary2818 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$135:
	; Dereference £temporary2819 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$136:
	; Parameter 180 signedint £temporary2819 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$137:
	; Dereference £temporary2820 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$138:
	; Parameter 184 signedint £temporary2820 -> tp
	mov eax, [rsi]
	mov [rbp + 184], eax

 strftime$139:
	; Call 124 sprintf 24
	mov qword [rbp + 124], strftime$140
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 24
	jmp sprintf

 strftime$140:
	; PostCall 124

 strftime$141:
	; Jump 305
	jmp strftime$305

 strftime$142:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$143:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$144:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @8131$string_2502i#

 strftime$145:
	; Dereference £temporary2822 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$146:
	; Parameter 164 signedint £temporary2822 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 164], eax

 strftime$147:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$148
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$148:
	; PostCall 124

 strftime$149:
	; Jump 305
	jmp strftime$305

 strftime$150:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$151:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$152:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @8134$string_2502i#

 strftime$153:
	; Dereference £temporary2824 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$154:
	; Parameter 164 signedint £temporary2824 -> tp
	mov eax, [rsi + 8]
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
	; Jump 305
	jmp strftime$305

 strftime$158:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$159:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$160:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @8137$string_2502i#

 strftime$161:
	; Dereference £temporary2826 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$162:
	; SignedModulo £temporary2827 £temporary2826 -> tp 12
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [@8139$int4$12#]

 strftime$163:
	; Parameter 164 signedint £temporary2827
	mov [rbp + 164], edx

 strftime$164:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$165
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$165:
	; PostCall 124

 strftime$166:
	; Jump 305
	jmp strftime$305

 strftime$167:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$168:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$169:
	; Parameter 156 pointer "%03i"
	mov qword [rbp + 156], @8142$string_2503i#

 strftime$170:
	; Dereference £temporary2829 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$171:
	; Parameter 164 signedint £temporary2829 -> tp
	mov eax, [rsi + 28]
	mov [rbp + 164], eax

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
	; Jump 305
	jmp strftime$305

 strftime$175:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$176:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$177:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @8145$string_2502i#

 strftime$178:
	; Dereference £temporary2831 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$179:
	; BinaryAdd £temporary2832 £temporary2831 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$180:
	; Parameter 164 signedint £temporary2832
	mov [rbp + 164], eax

 strftime$181:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$182
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$182:
	; PostCall 124

 strftime$183:
	; Jump 305
	jmp strftime$305

 strftime$184:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$185:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$186:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @8150$string_2502i#

 strftime$187:
	; Dereference £temporary2834 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$188:
	; Parameter 164 signedint £temporary2834 -> tp
	mov eax, [rsi + 4]
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
	; Jump 305
	jmp strftime$305

 strftime$192:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$193:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$194:
	; Parameter 156 pointer "%s"
	mov qword [rbp + 156], @8153$string_25s#

 strftime$195:
	; Dereference £temporary2836 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$196:
	; SignedGreaterThanEqual 199 £temporary2836 -> tp 12
	cmp dword [rsi + 8], 12
	jge strftime$199

 strftime$197:
	; Assign £temporary2838 "AM"
	mov eax, @8156$string_AM#

 strftime$198:
	; Jump 200
	jmp strftime$200

 strftime$199:
	; Assign £temporary2838 "PM"
	mov eax, @8157$string_PM#

 strftime$200:
	; Parameter 164 pointer £temporary2838
	mov [rbp + 164], eax

 strftime$201:
	; Call 124 sprintf 8
	mov qword [rbp + 124], strftime$202
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp sprintf

 strftime$202:
	; PostCall 124

 strftime$203:
	; Jump 305
	jmp strftime$305

 strftime$204:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$205:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$206:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @8160$string_2502i#

 strftime$207:
	; Dereference £temporary2840 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$208:
	; Parameter 164 signedint £temporary2840 -> tp
	mov eax, [rsi]
	mov [rbp + 164], eax

 strftime$209:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$210
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$210:
	; PostCall 124

 strftime$211:
	; Jump 305
	jmp strftime$305

 strftime$212:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$213:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$214:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @8163$string_2502i#

 strftime$215:
	; Parameter 164 signedint weekNumberStartSunday
	mov eax, [rbp + 96]
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
	; Jump 305
	jmp strftime$305

 strftime$219:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$220:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$221:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @8166$string_2502i#

 strftime$222:
	; Dereference £temporary2843 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$223:
	; Parameter 164 signedint £temporary2843 -> tp
	mov eax, [rsi + 24]
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
	; Jump 305
	jmp strftime$305

 strftime$227:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$228:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$229:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @8169$string_2502i#

 strftime$230:
	; Parameter 164 signedint weekNumberStartMonday
	mov eax, [rbp + 100]
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
	; Jump 305
	jmp strftime$305

 strftime$234:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$235:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$236:
	; Parameter 156 pointer "%02i:%02i:%02i"
	mov qword [rbp + 156], @8172$string_2502i3A2502i3A2502i#

 strftime$237:
	; Dereference £temporary2846 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$238:
	; Parameter 164 signedint £temporary2846 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$239:
	; Dereference £temporary2847 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$240:
	; Parameter 168 signedint £temporary2847 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 168], eax

 strftime$241:
	; Dereference £temporary2848 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$242:
	; Parameter 172 signedint £temporary2848 -> tp
	mov eax, [rsi]
	mov [rbp + 172], eax

 strftime$243:
	; Call 124 sprintf 12
	mov qword [rbp + 124], strftime$244
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$244:
	; PostCall 124

 strftime$245:
	; Jump 305
	jmp strftime$305

 strftime$246:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$247:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$248:
	; Parameter 156 pointer "%02i:%02i:%02i"
	mov qword [rbp + 156], @8175$string_2502i3A2502i3A2502i#

 strftime$249:
	; Dereference £temporary2850 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$250:
	; Parameter 164 signedint £temporary2850 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$251:
	; Dereference £temporary2851 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$252:
	; Parameter 168 signedint £temporary2851 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 168], eax

 strftime$253:
	; Dereference £temporary2852 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$254:
	; Parameter 172 signedint £temporary2852 -> tp
	mov eax, [rsi]
	mov [rbp + 172], eax

 strftime$255:
	; Call 124 sprintf 12
	mov qword [rbp + 124], strftime$256
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$256:
	; PostCall 124

 strftime$257:
	; Jump 305
	jmp strftime$305

 strftime$258:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$259:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$260:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @8178$string_2502i#

 strftime$261:
	; Dereference £temporary2854 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$262:
	; SignedModulo £temporary2855 £temporary2854 -> tp 100
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [@8180$int4$100#]

 strftime$263:
	; Parameter 164 signedint £temporary2855
	mov [rbp + 164], edx

 strftime$264:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$265
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$265:
	; PostCall 124

 strftime$266:
	; Jump 305
	jmp strftime$305

 strftime$267:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$268:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$269:
	; Parameter 156 pointer "%02i"
	mov qword [rbp + 156], @8183$string_2502i#

 strftime$270:
	; Dereference £temporary2857 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$271:
	; BinaryAdd £temporary2858 £temporary2857 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$272:
	; Parameter 164 signedint £temporary2858
	mov [rbp + 164], eax

 strftime$273:
	; Call 124 sprintf 4
	mov qword [rbp + 124], strftime$274
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$274:
	; PostCall 124

 strftime$275:
	; Jump 305
	jmp strftime$305

 strftime$276:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$277:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$278:
	; Dereference £temporary2860 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$279:
	; Equal 282 £temporary2860 -> tp 0
	cmp dword [rsi + 32], 0
	je strftime$282

 strftime$280:
	; Assign £temporary2862 "summer"
	mov eax, @8188$string_summer#

 strftime$281:
	; Jump 283
	jmp strftime$283

 strftime$282:
	; Assign £temporary2862 "winter"
	mov eax, @8189$string_winter#

 strftime$283:
	; Parameter 156 pointer £temporary2862
	mov [rbp + 156], eax

 strftime$284:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$285
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$285:
	; PostCall 124

 strftime$286:
	; Jump 305
	jmp strftime$305

 strftime$287:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$288:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$289:
	; Parameter 156 pointer "%"
	mov qword [rbp + 156], @8193$string_25#

 strftime$290:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$291
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$291:
	; PostCall 124

 strftime$292:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$293:
	; Parameter 148 pointer add
	mov [rbp + 148], rbp
	add qword [rbp + 148], 104

 strftime$294:
	; Parameter 156 pointer ""
	mov qword [rbp + 156], @8194$string_#

 strftime$295:
	; Call 124 strcpy 0
	mov qword [rbp + 124], strftime$296
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strcpy

 strftime$296:
	; PostCall 124

 strftime$297:
	; Jump 305
	jmp strftime$305

 strftime$298:
	; Dereference £temporary2866 -> add add 0
	mov rsi, rbp
	add rsi, 104

 strftime$299:
	; IntegralToIntegral £temporary2868 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$300:
	; BinaryAdd £temporary2870 format £temporary2868
	mov rdi, [rbp + 36]
	add rdi, rax

 strftime$301:
	; Dereference £temporary2867 -> £temporary2870 £temporary2870 0

 strftime$302:
	; Assign £temporary2866 -> add £temporary2867 -> £temporary2870
	mov al, [rdi]
	mov [rsi], al

 strftime$303:
	; Dereference £temporary2871 -> add add 0
	mov rsi, rbp
	add rsi, 104

 strftime$304:
	; Assign £temporary2871 -> add 0
	mov byte [rsi + 1], 0

 strftime$305:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$306:
	; Parameter 148 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 148], rax

 strftime$307:
	; Call 124 strlen 0
	mov qword [rbp + 124], strftime$308
	mov [rbp + 132], rbp
	add rbp, 124
	jmp strlen

 strftime$308:
	; PostCall 124

 strftime$309:
	; GetReturnValue £temporary2872

 strftime$310:
	; Assign x £temporary2872
	mov [rbp + 124], ebx

 strftime$311:
	; PreCall 128 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$312:
	; Parameter 152 pointer add
	mov [rbp + 152], rbp
	add qword [rbp + 152], 104

 strftime$313:
	; Call 128 strlen 0
	mov qword [rbp + 128], strftime$314
	mov [rbp + 136], rbp
	add rbp, 128
	jmp strlen

 strftime$314:
	; PostCall 128

 strftime$315:
	; GetReturnValue £temporary2873

 strftime$316:
	; Assign y £temporary2873
	mov [rbp + 128], ebx

 strftime$317:
	; BinaryAdd £temporary2874 x y
	mov eax, [rbp + 124]
	add eax, [rbp + 128]

 strftime$318:
	; SignedGreaterThanEqual 326 £temporary2874 maxSize
	cmp eax, [rbp + 32]
	jge strftime$326

 strftime$319:
	; PreCall 132 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$320:
	; Parameter 156 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 156], rax

 strftime$321:
	; Parameter 164 pointer add
	mov [rbp + 164], rbp
	add qword [rbp + 164], 104

 strftime$322:
	; Call 132 strcat 0
	mov qword [rbp + 132], strftime$323
	mov [rbp + 140], rbp
	add rbp, 132
	jmp strcat

 strftime$323:
	; PostCall 132

 strftime$324:
	; BinaryAdd index index 1
	inc dword [rbp + 92]

 strftime$325:
	; Jump 41
	jmp strftime$41

 strftime$326:
	; PreCall 92 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$327:
	; Parameter 116 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

 strftime$328:
	; Call 92 strlen 0
	mov qword [rbp + 92], strftime$329
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strlen

 strftime$329:
	; PostCall 92

 strftime$330:
	; GetReturnValue £temporary2877

 strftime$331:
	; SetReturnValue

 strftime$332:
	; Return £temporary2877
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strftime$333:
	; FunctionEnd strftime
