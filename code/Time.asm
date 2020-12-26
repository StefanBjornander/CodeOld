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

@7810$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7814$int4$100#:
	; Initializer SignedInt 100
	dd 100

section .data

@7818$int4$400#:
	; Initializer SignedInt 400
	dd 400

section .text

 @7808$isLeapYear:
	; SignedModulo £temporary2669 year 4
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7810$int4$4#]

 @7808$isLeapYear$1:
	; NotEqual 4 £temporary2669 0
	cmp edx, 0
	jne @7808$isLeapYear$4

 @7808$isLeapYear$2:
	; SignedModulo £temporary2671 year 100
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7814$int4$100#]

 @7808$isLeapYear$3:
	; NotEqual 6 £temporary2671 0
	cmp edx, 0
	jne @7808$isLeapYear$6

 @7808$isLeapYear$4:
	; SignedModulo £temporary2674 year 400
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7818$int4$400#]

 @7808$isLeapYear$5:
	; NotEqual 8 £temporary2674 0
	cmp edx, 0
	jne @7808$isLeapYear$8

 @7808$isLeapYear$6:
	; Assign £temporary2677 1
	mov ebx, 1

 @7808$isLeapYear$7:
	; Jump 9
	jmp @7808$isLeapYear$9

 @7808$isLeapYear$8:
	; Assign £temporary2677 0
	mov ebx, 0

 @7808$isLeapYear$9:
	; SetReturnValue

 @7808$isLeapYear$10:
	; Return £temporary2677
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @7808$isLeapYear$11:
	; FunctionEnd isLeapYear

section .text

 time:
	; AssignRegister rax 201
	mov rax, 201

 time$1:
	; Address £temporary2680 time
	mov rdi, rbp
	add rdi, 32

 time$2:
	; IntegralToIntegral £temporary2681 £temporary2680

 time$3:
	; AssignRegister rdi £temporary2681

 time$4:
	; SysCall
	syscall

 time$5:
	; Equal 8 timePtr 0
	cmp qword [rbp + 24], 0
	je time$8

 time$6:
	; Dereference £temporary2683 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 time$7:
	; Assign £temporary2683 -> timePtr time
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

@7837$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7842$int4$365#:
	; Initializer SignedInt 365
	dd 365

section .data

@7845$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7847$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7849$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .text

 mktime:
	; Equal 28 tp 0
	cmp qword [rbp + 24], 0
	je mktime$28

 mktime$1:
	; Dereference £temporary2686 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$2:
	; BinarySubtract £temporary2687 £temporary2686 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 mktime$3:
	; SignedDivide £temporary2688 £temporary2687 4
	xor edx, edx
	idiv dword [@7837$int4$4#]

 mktime$4:
	; IntegralToIntegral £temporary2689 £temporary2688
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

 mktime$5:
	; Assign leapDays £temporary2689
	mov [rbp + 32], rax

 mktime$6:
	; Dereference £temporary2690 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$7:
	; BinarySubtract £temporary2691 £temporary2690 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 mktime$8:
	; SignedMultiply £temporary2692 £temporary2691 365
	xor edx, edx
	imul dword [@7842$int4$365#]

 mktime$9:
	; IntegralToIntegral £temporary2693 £temporary2692
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

 mktime$10:
	; BinaryAdd £temporary2694 £temporary2693 leapDays
	add rax, [rbp + 32]

 mktime$11:
	; Dereference £temporary2695 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$12:
	; IntegralToIntegral £temporary2696 £temporary2695 -> tp
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

 mktime$13:
	; BinaryAdd totalDays £temporary2694 £temporary2696
	add rax, rbx
	mov [rbp + 40], rax

 mktime$14:
	; SignedMultiply £temporary2698 totalDays 86400
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [@7845$int8$86400#]
	mov rbx, rax

 mktime$15:
	; Dereference £temporary2699 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$16:
	; IntegralToIntegral £temporary2700 £temporary2699 -> tp
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

 mktime$17:
	; SignedMultiply £temporary2701 £temporary2700 3600
	xor rdx, rdx
	imul qword [@7847$int8$3600#]

 mktime$18:
	; BinaryAdd £temporary2702 £temporary2698 £temporary2701
	add rbx, rax

 mktime$19:
	; Dereference £temporary2703 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$20:
	; IntegralToIntegral £temporary2704 £temporary2703 -> tp
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

 mktime$21:
	; SignedMultiply £temporary2705 £temporary2704 60
	xor rdx, rdx
	imul qword [@7849$int8$60#]

 mktime$22:
	; BinaryAdd £temporary2706 £temporary2702 £temporary2705
	add rbx, rax

 mktime$23:
	; Dereference £temporary2707 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$24:
	; IntegralToIntegral £temporary2708 £temporary2707 -> tp
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

 mktime$25:
	; BinaryAdd £temporary2709 £temporary2706 £temporary2708
	add rbx, rax

 mktime$26:
	; SetReturnValue

 mktime$27:
	; Return £temporary2709
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

@7852$g_timeStruct:
	; InitializerZero 36
	times 36 db 0

section .data

@7859$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7862$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7865$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7867$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .data

@7869$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .data

@7871$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7880$int8$7#:
	; Initializer Signed_Long_Int 7
	dq 7

section .data

@7883$int8$365#:
	; Initializer Signed_Long_Int 365
	dq 365

section .data

@7889$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7893$int8$365#:
	; Initializer Signed_Long_Int 365
	dq 365

section .data

@7937$Array_4#:
	; Initializer Array 4
	dq 4

section .data

@7939$Array_4#:
	; Initializer Array 4
	dq 4

section .text

 gmtime:
	; Equal 91 timePtr 0
	cmp qword [rbp + 24], 0
	je gmtime$91

 gmtime$1:
	; Dereference £temporary2711 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 gmtime$2:
	; Assign time £temporary2711 -> timePtr
	mov rax, [rsi]
	mov [rbp + 32], rax

 gmtime$3:
	; SignedModulo secondsOfDay time 86400
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@7859$int8$86400#]
	mov [rbp + 40], rdx

 gmtime$4:
	; SignedModulo secondsOfHour secondsOfDay 3600
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@7862$int8$3600#]
	mov [rbp + 48], rdx

 gmtime$5:
	; SignedDivide £temporary2715 secondsOfDay 3600
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@7865$int8$3600#]

 gmtime$6:
	; IntegralToIntegral £temporary2716 £temporary2715
	cmp rax, 0
	jge gmtime$7
	neg rax
	neg eax

 gmtime$7:
	; Assign g_timeStruct.tm_hour £temporary2716
	mov [@7852$g_timeStruct + 8], eax

 gmtime$8:
	; SignedDivide £temporary2718 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@7867$int8$60#]

 gmtime$9:
	; IntegralToIntegral £temporary2719 £temporary2718
	cmp rax, 0
	jge gmtime$10
	neg rax
	neg eax

 gmtime$10:
	; Assign g_timeStruct.tm_min £temporary2719
	mov [@7852$g_timeStruct + 4], eax

 gmtime$11:
	; SignedModulo £temporary2721 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@7869$int8$60#]

 gmtime$12:
	; IntegralToIntegral £temporary2722 £temporary2721
	cmp rdx, 0
	jge gmtime$13
	neg rdx
	neg edx

 gmtime$13:
	; Assign g_timeStruct.tm_sec £temporary2722
	mov [@7852$g_timeStruct], edx

 gmtime$14:
	; SignedDivide totalDays time 86400
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@7871$int8$86400#]
	mov [rbp + 56], rax

 gmtime$15:
	; SignedGreaterThanEqual 20 totalDays 3
	cmp qword [rbp + 56], 3
	jge gmtime$20

 gmtime$16:
	; BinaryAdd £temporary2726 totalDays 4
	mov rax, [rbp + 56]
	add rax, 4

 gmtime$17:
	; IntegralToIntegral £temporary2727 £temporary2726
	cmp rax, 0
	jge gmtime$18
	neg rax
	neg eax

 gmtime$18:
	; Assign g_timeStruct.tm_wday £temporary2727
	mov [@7852$g_timeStruct + 24], eax

 gmtime$19:
	; Jump 24
	jmp gmtime$24

 gmtime$20:
	; BinarySubtract £temporary2729 totalDays 3
	mov rax, [rbp + 56]
	sub rax, 3

 gmtime$21:
	; SignedModulo £temporary2730 £temporary2729 7
	xor rdx, rdx
	idiv qword [@7880$int8$7#]

 gmtime$22:
	; IntegralToIntegral £temporary2731 £temporary2730
	cmp rdx, 0
	jge gmtime$23
	neg rdx
	neg edx

 gmtime$23:
	; Assign g_timeStruct.tm_wday £temporary2731
	mov [@7852$g_timeStruct + 24], edx

 gmtime$24:
	; SignedDivide £temporary2732 totalDays 365
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@7883$int8$365#]

 gmtime$25:
	; BinaryAdd £temporary2733 £temporary2732 1970
	add rax, 1970

 gmtime$26:
	; IntegralToIntegral £temporary2734 £temporary2733
	cmp rax, 0
	jge gmtime$27
	neg rax
	neg eax

 gmtime$27:
	; Assign year £temporary2734
	mov [rbp + 64], eax

 gmtime$28:
	; BinarySubtract £temporary2735 year 1969
	mov eax, [rbp + 64]
	sub eax, 1969

 gmtime$29:
	; SignedDivide leapDays £temporary2735 4
	xor edx, edx
	idiv dword [@7889$int4$4#]
	mov [rbp + 68], eax

 gmtime$30:
	; SignedModulo totalDays totalDays 365
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@7893$int8$365#]
	mov [rbp + 56], rdx

 gmtime$31:
	; IntegralToIntegral £temporary2738 leapDays
	mov eax, [rbp + 68]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$32
	neg eax
	neg rax

 gmtime$32:
	; BinarySubtract totalDays totalDays £temporary2738
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
	jmp @7808$isLeapYear

 gmtime$38:
	; PostCall 72

 gmtime$39:
	; GetReturnValue £temporary2742

 gmtime$40:
	; Equal 43 £temporary2742 0
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
	mov [@7852$g_timeStruct + 20], eax

 gmtime$45:
	; IntegralToIntegral £temporary2749 totalDays
	mov rax, [rbp + 56]
	cmp rax, 0
	jge gmtime$46
	neg rax
	neg eax

 gmtime$46:
	; Assign g_timeStruct.tm_yday £temporary2749
	mov [@7852$g_timeStruct + 28], eax

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
	jmp @7808$isLeapYear

 gmtime$51:
	; PostCall 76

 gmtime$52:
	; GetReturnValue £temporary2750

 gmtime$53:
	; Equal 56 £temporary2750 0
	cmp ebx, 0
	je gmtime$56

 gmtime$54:
	; Assign £temporary2752 29
	mov eax, 29

 gmtime$55:
	; Jump 57
	jmp gmtime$57

 gmtime$56:
	; Assign £temporary2752 28
	mov eax, 28

 gmtime$57:
	; Assign daysOfMonths[1] £temporary2752
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
	; IntegralToIntegral £temporary2766 month
	mov eax, [rbp + 120]
	mov rbx, 4294967295
	and rax, rbx

 gmtime$70:
	; UnsignedMultiply £temporary2767 £temporary2766 4
	xor rdx, rdx
	mul qword [@7937$Array_4#]

 gmtime$71:
	; BinaryAdd £temporary2768 daysOfMonths £temporary2767
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$72:
	; Dereference £temporary2765 -> £temporary2768 £temporary2768 0

 gmtime$73:
	; IntegralToIntegral £temporary2769 £temporary2765 -> £temporary2768
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$74
	neg eax
	neg rax

 gmtime$74:
	; SignedLessThan 84 totalDays £temporary2769
	cmp [rbp + 56], rax
	jl gmtime$84

 gmtime$75:
	; Assign £temporary2771 month
	mov eax, [rbp + 120]

 gmtime$76:
	; BinaryAdd month month 1
	inc dword [rbp + 120]

 gmtime$77:
	; IntegralToIntegral £temporary2773 £temporary2771
	mov rbx, 4294967295
	and rax, rbx

 gmtime$78:
	; UnsignedMultiply £temporary2774 £temporary2773 4
	xor rdx, rdx
	mul qword [@7939$Array_4#]

 gmtime$79:
	; BinaryAdd £temporary2775 daysOfMonths £temporary2774
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$80:
	; Dereference £temporary2772 -> £temporary2775 £temporary2775 0

 gmtime$81:
	; IntegralToIntegral £temporary2776 £temporary2772 -> £temporary2775
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$82
	neg eax
	neg rax

 gmtime$82:
	; BinarySubtract totalDays totalDays £temporary2776
	sub [rbp + 56], rax

 gmtime$83:
	; Jump 69
	jmp gmtime$69

 gmtime$84:
	; Assign g_timeStruct.tm_mon month
	mov eax, [rbp + 120]
	mov [@7852$g_timeStruct + 16], eax

 gmtime$85:
	; BinaryAdd £temporary2780 totalDays 1
	mov rax, [rbp + 56]
	inc rax

 gmtime$86:
	; IntegralToIntegral £temporary2781 £temporary2780
	cmp rax, 0
	jge gmtime$87
	neg rax
	neg eax

 gmtime$87:
	; Assign g_timeStruct.tm_mday £temporary2781
	mov [@7852$g_timeStruct + 12], eax

 gmtime$88:
	; Assign g_timeStruct.tm_isdst -1
	mov dword [@7852$g_timeStruct + 32], -1

 gmtime$89:
	; SetReturnValue

 gmtime$90:
	; Return @7852$g_timeStruct
	mov rbx, @7852$g_timeStruct
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

@7962$int8$3600#:
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
	; GetReturnValue £temporary2783

 localtime$5:
	; Assign tmPtr £temporary2783
	mov [rbp + 32], rbx

 localtime$6:
	; Dereference £temporary2784 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 localtime$7:
	; Assign t £temporary2784 -> timePtr
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
	; GetReturnValue £temporary2785

 localtime$12:
	; Assign localeConvPtr £temporary2785
	mov [rbp + 48], rbx

 localtime$13:
	; Equal 25 localeConvPtr 0
	cmp qword [rbp + 48], 0
	je localtime$25

 localtime$14:
	; Dereference £temporary2787 -> tmPtr tmPtr 0
	mov rsi, [rbp + 32]

 localtime$15:
	; NotEqual 19 £temporary2787 -> tmPtr 1
	cmp dword [rsi + 32], 1
	jne localtime$19

 localtime$16:
	; Dereference £temporary2789 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 48]

 localtime$17:
	; Assign £temporary2791 £temporary2789 -> localeConvPtr
	mov eax, [rsi]

 localtime$18:
	; Jump 21
	jmp localtime$21

 localtime$19:
	; Dereference £temporary2790 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 48]

 localtime$20:
	; Assign £temporary2791 £temporary2790 -> localeConvPtr
	mov eax, [rsi + 4]

 localtime$21:
	; Assign timeZone £temporary2791
	mov [rbp + 56], eax

 localtime$22:
	; IntegralToIntegral £temporary2792 timeZone
	mov eax, [rbp + 56]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge localtime$23
	neg eax
	neg rax

 localtime$23:
	; SignedMultiply £temporary2793 £temporary2792 3600
	xor rdx, rdx
	imul qword [@7962$int8$3600#]

 localtime$24:
	; BinaryAdd t t £temporary2793
	add [rbp + 40], rax

 localtime$25:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$26:
	; Address £temporary2795 t
	mov rsi, rbp
	add rsi, 40

 localtime$27:
	; Parameter 80 pointer £temporary2795
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
	; GetReturnValue £temporary2796

 localtime$31:
	; SetReturnValue

 localtime$32:
	; Return £temporary2796
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
	; BinarySubtract £temporary2798 time2 time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

 difftime$1:
	; IntegralToFloating £temporary2799 £temporary2798
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 difftime$2:
	; SetReturnValue

 difftime$3:
	; Return £temporary2799
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 difftime$4:
	; FunctionEnd difftime

section .data

@7969$g_timeString:
	; InitializerZero 256
	times 256 db 0

section .data

@7970$string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

@7971$string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

@7972$string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

@7973$string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

@7974$string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

@7975$string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

@7976$string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@7977$g_shortDayList:
	; Initializer Pointer @7970$string_Sun#
	dq @7970$string_Sun#
	; Initializer Pointer @7971$string_Mon#
	dq @7971$string_Mon#
	; Initializer Pointer @7972$string_Tue#
	dq @7972$string_Tue#
	; Initializer Pointer @7973$string_Wed#
	dq @7973$string_Wed#
	; Initializer Pointer @7974$string_Thu#
	dq @7974$string_Thu#
	; Initializer Pointer @7975$string_Fri#
	dq @7975$string_Fri#
	; Initializer Pointer @7976$string_Sat#
	dq @7976$string_Sat#

section .data

@7978$string_Sunday#:
	; Initializer String Sunday
	db "Sunday", 0

section .data

@7979$string_Monday#:
	; Initializer String Monday
	db "Monday", 0

section .data

@7980$string_Tuesday#:
	; Initializer String Tuesday
	db "Tuesday", 0

section .data

@7981$string_Wednesday#:
	; Initializer String Wednesday
	db "Wednesday", 0

section .data

@7982$string_Thursday#:
	; Initializer String Thursday
	db "Thursday", 0

section .data

@7983$string_Friday#:
	; Initializer String Friday
	db "Friday", 0

section .data

@7984$string_Saturday#:
	; Initializer String Saturday
	db "Saturday", 0

section .data

@7985$g_longDayList:
	; Initializer Pointer @7978$string_Sunday#
	dq @7978$string_Sunday#
	; Initializer Pointer @7979$string_Monday#
	dq @7979$string_Monday#
	; Initializer Pointer @7980$string_Tuesday#
	dq @7980$string_Tuesday#
	; Initializer Pointer @7981$string_Wednesday#
	dq @7981$string_Wednesday#
	; Initializer Pointer @7982$string_Thursday#
	dq @7982$string_Thursday#
	; Initializer Pointer @7983$string_Friday#
	dq @7983$string_Friday#
	; Initializer Pointer @7984$string_Saturday#
	dq @7984$string_Saturday#

section .data

@7986$string_Jan#:
	; Initializer String Jan
	db "Jan", 0

section .data

@7987$string_Feb#:
	; Initializer String Feb
	db "Feb", 0

section .data

@7988$string_Mar#:
	; Initializer String Mar
	db "Mar", 0

section .data

@7989$string_Apr#:
	; Initializer String Apr
	db "Apr", 0

section .data

@7990$string_May#:
	; Initializer String May
	db "May", 0

section .data

@7991$string_Jun#:
	; Initializer String Jun
	db "Jun", 0

section .data

@7992$string_Jul#:
	; Initializer String Jul
	db "Jul", 0

section .data

@7993$string_Aug#:
	; Initializer String Aug
	db "Aug", 0

section .data

@7994$string_Sep#:
	; Initializer String Sep
	db "Sep", 0

section .data

@7995$string_Oct#:
	; Initializer String Oct
	db "Oct", 0

section .data

@7996$string_Nov#:
	; Initializer String Nov
	db "Nov", 0

section .data

@7997$string_Dec#:
	; Initializer String Dec
	db "Dec", 0

section .data

@7998$g_shortMonthList:
	; Initializer Pointer @7986$string_Jan#
	dq @7986$string_Jan#
	; Initializer Pointer @7987$string_Feb#
	dq @7987$string_Feb#
	; Initializer Pointer @7988$string_Mar#
	dq @7988$string_Mar#
	; Initializer Pointer @7989$string_Apr#
	dq @7989$string_Apr#
	; Initializer Pointer @7990$string_May#
	dq @7990$string_May#
	; Initializer Pointer @7991$string_Jun#
	dq @7991$string_Jun#
	; Initializer Pointer @7992$string_Jul#
	dq @7992$string_Jul#
	; Initializer Pointer @7993$string_Aug#
	dq @7993$string_Aug#
	; Initializer Pointer @7994$string_Sep#
	dq @7994$string_Sep#
	; Initializer Pointer @7995$string_Oct#
	dq @7995$string_Oct#
	; Initializer Pointer @7996$string_Nov#
	dq @7996$string_Nov#
	; Initializer Pointer @7997$string_Dec#
	dq @7997$string_Dec#

section .data

@7999$string_January#:
	; Initializer String January
	db "January", 0

section .data

@8000$string_February#:
	; Initializer String February
	db "February", 0

section .data

@8001$string_March#:
	; Initializer String March
	db "March", 0

section .data

@8002$string_April#:
	; Initializer String April
	db "April", 0

section .data

@8003$string_May#:
	; Initializer String May
	db "May", 0

section .data

@8004$string_June#:
	; Initializer String June
	db "June", 0

section .data

@8005$string_July#:
	; Initializer String July
	db "July", 0

section .data

@8006$string_August#:
	; Initializer String August
	db "August", 0

section .data

@8007$string_September#:
	; Initializer String September
	db "September", 0

section .data

@8008$string_October#:
	; Initializer String October
	db "October", 0

section .data

@8009$string_November#:
	; Initializer String November
	db "November", 0

section .data

@8010$string_December#:
	; Initializer String December
	db "December", 0

section .data

@8011$g_longMonthList:
	; Initializer Pointer @7999$string_January#
	dq @7999$string_January#
	; Initializer Pointer @8000$string_February#
	dq @8000$string_February#
	; Initializer Pointer @8001$string_March#
	dq @8001$string_March#
	; Initializer Pointer @8002$string_April#
	dq @8002$string_April#
	; Initializer Pointer @8003$string_May#
	dq @8003$string_May#
	; Initializer Pointer @8004$string_June#
	dq @8004$string_June#
	; Initializer Pointer @8005$string_July#
	dq @8005$string_July#
	; Initializer Pointer @8006$string_August#
	dq @8006$string_August#
	; Initializer Pointer @8007$string_September#
	dq @8007$string_September#
	; Initializer Pointer @8008$string_October#
	dq @8008$string_October#
	; Initializer Pointer @8009$string_November#
	dq @8009$string_November#
	; Initializer Pointer @8010$string_December#
	dq @8010$string_December#

section .data

@8031$string_25s2025s2025i202502i3A2502i3A2502i2025i#:
	; Initializer String %s %s %i %02i:%02i:%02i %i
	db "%s %s %i %02i:%02i:%02i %i", 0

section .data

@8032$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8033$int8$8#:
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
	; Dereference £temporary2801 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$3:
	; Equal 7 £temporary2801 -> localeConvPtr 0
	cmp qword [rsi + 8], 0
	je asctime$7

 asctime$4:
	; Dereference £temporary2804 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$5:
	; Assign shortDayList £temporary2804 -> localeConvPtr
	mov rax, [rsi + 8]
	mov [rbp + 40], rax

 asctime$6:
	; Jump 8
	jmp asctime$8

 asctime$7:
	; Assign shortDayList g_shortDayList
	mov qword [rbp + 40], @7977$g_shortDayList

 asctime$8:
	; Equal 14 localeConvPtr 0
	cmp qword [rbp + 32], 0
	je asctime$14

 asctime$9:
	; Dereference £temporary2806 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$10:
	; Equal 14 £temporary2806 -> localeConvPtr 0
	cmp qword [rsi + 24], 0
	je asctime$14

 asctime$11:
	; Dereference £temporary2809 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$12:
	; Assign shortMonthList £temporary2809 -> localeConvPtr
	mov rax, [rsi + 24]
	mov [rbp + 48], rax

 asctime$13:
	; Jump 15
	jmp asctime$15

 asctime$14:
	; Assign shortMonthList g_shortMonthList
	mov qword [rbp + 48], @7998$g_shortMonthList

 asctime$15:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asctime$16:
	; Parameter 80 pointer g_timeString
	mov qword [rbp + 80], @7969$g_timeString

 asctime$17:
	; Parameter 88 pointer "%s %s %i %02i:%02i:%02i %i"
	mov qword [rbp + 88], @8031$string_25s2025s2025i202502i3A2502i3A2502i2025i#

 asctime$18:
	; Dereference £temporary2810 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$19:
	; IntegralToIntegral £temporary2812 £temporary2810 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 asctime$20:
	; UnsignedMultiply £temporary2813 £temporary2812 8
	xor rdx, rdx
	mul qword [@8032$int8$8#]

 asctime$21:
	; BinaryAdd £temporary2814 shortDayList £temporary2813
	mov rsi, [rbp + 40]
	add rsi, rax

 asctime$22:
	; Dereference £temporary2811 -> £temporary2814 £temporary2814 0

 asctime$23:
	; Parameter 96 pointer £temporary2811 -> £temporary2814
	mov rax, [rsi]
	mov [rbp + 96], rax

 asctime$24:
	; Dereference £temporary2815 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$25:
	; IntegralToIntegral £temporary2817 £temporary2815 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 asctime$26:
	; UnsignedMultiply £temporary2818 £temporary2817 8
	xor rdx, rdx
	mul qword [@8033$int8$8#]

 asctime$27:
	; BinaryAdd £temporary2819 shortMonthList £temporary2818
	mov rsi, [rbp + 48]
	add rsi, rax

 asctime$28:
	; Dereference £temporary2816 -> £temporary2819 £temporary2819 0

 asctime$29:
	; Parameter 104 pointer £temporary2816 -> £temporary2819
	mov rax, [rsi]
	mov [rbp + 104], rax

 asctime$30:
	; Dereference £temporary2820 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$31:
	; Parameter 112 signedint £temporary2820 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

 asctime$32:
	; Dereference £temporary2821 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$33:
	; Parameter 116 signedint £temporary2821 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

 asctime$34:
	; Dereference £temporary2822 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$35:
	; Parameter 120 signedint £temporary2822 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

 asctime$36:
	; Dereference £temporary2823 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$37:
	; Parameter 124 signedint £temporary2823 -> tp
	mov eax, [rsi]
	mov [rbp + 124], eax

 asctime$38:
	; Dereference £temporary2824 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$39:
	; BinaryAdd £temporary2825 £temporary2824 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 asctime$40:
	; Parameter 128 signedint £temporary2825
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
	mov rbx, @7969$g_timeString
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
	; GetReturnValue £temporary2827

 ctime$6:
	; Parameter 56 pointer £temporary2827
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
	; GetReturnValue £temporary2828

 ctime$10:
	; SetReturnValue

 ctime$11:
	; Return £temporary2828
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ctime$12:
	; FunctionEnd ctime

section .data

@8081$string_#:
	; Initializer String 
	db 0

section .data

@8118$string_2502i2D2502i2D2502i202502i3A2502i3A2502i#:
	; Initializer String %02i-%02i-%02i %02i:%02i:%02i
	db "%02i-%02i-%02i %02i:%02i:%02i", 0

section .data

@8125$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8128$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8131$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8136$string_2503i#:
	; Initializer String %03i
	db "%03i", 0

section .data

@8139$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8144$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8147$string_25s#:
	; Initializer String %s
	db "%s", 0

section .data

@8150$string_AM#:
	; Initializer String AM
	db "AM", 0

section .data

@8151$string_PM#:
	; Initializer String PM
	db "PM", 0

section .data

@8154$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8157$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8160$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8163$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8166$string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@8169$string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@8172$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8177$string_2502i#:
	; Initializer String %02i
	db "%02i", 0

section .data

@8182$string_summer#:
	; Initializer String summer
	db "summer", 0

section .data

@8183$string_winter#:
	; Initializer String winter
	db "winter", 0

section .data

@8187$string_25#:
	; Initializer String %
	db "%", 0

section .data

@8188$string_#:
	; Initializer String 
	db 0

section .data

@8106$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8109$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8112$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8115$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8133$int4$12#:
	; Initializer SignedInt 12
	dd 12

section .data

@8174$int4$100#:
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
	; GetReturnValue £temporary2829

 strftime$4:
	; Assign localeConvPtr £temporary2829
	mov [rbp + 52], rbx

 strftime$5:
	; Equal 11 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$11

 strftime$6:
	; Dereference £temporary2831 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$7:
	; Equal 11 £temporary2831 -> localeConvPtr 0
	cmp qword [rsi + 8], 0
	je strftime$11

 strftime$8:
	; Dereference £temporary2834 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$9:
	; Assign shortDayList £temporary2834 -> localeConvPtr
	mov rax, [rsi + 8]
	mov [rbp + 60], rax

 strftime$10:
	; Jump 12
	jmp strftime$12

 strftime$11:
	; Assign shortDayList g_shortDayList
	mov qword [rbp + 60], @7977$g_shortDayList

 strftime$12:
	; Equal 18 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$18

 strftime$13:
	; Dereference £temporary2836 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$14:
	; Equal 18 £temporary2836 -> localeConvPtr 0
	cmp qword [rsi + 16], 0
	je strftime$18

 strftime$15:
	; Dereference £temporary2839 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$16:
	; Assign longDayList £temporary2839 -> localeConvPtr
	mov rax, [rsi + 16]
	mov [rbp + 76], rax

 strftime$17:
	; Jump 19
	jmp strftime$19

 strftime$18:
	; Assign longDayList g_longDayList
	mov qword [rbp + 76], @7985$g_longDayList

 strftime$19:
	; Equal 25 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$25

 strftime$20:
	; Dereference £temporary2841 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$21:
	; Equal 25 £temporary2841 -> localeConvPtr 0
	cmp qword [rsi + 24], 0
	je strftime$25

 strftime$22:
	; Dereference £temporary2844 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$23:
	; Assign shortMonthList £temporary2844 -> localeConvPtr
	mov rax, [rsi + 24]
	mov [rbp + 68], rax

 strftime$24:
	; Jump 26
	jmp strftime$26

 strftime$25:
	; Assign shortMonthList g_shortMonthList
	mov qword [rbp + 68], @7998$g_shortMonthList

 strftime$26:
	; Equal 32 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$32

 strftime$27:
	; Dereference £temporary2846 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$28:
	; Equal 32 £temporary2846 -> localeConvPtr 0
	cmp qword [rsi + 32], 0
	je strftime$32

 strftime$29:
	; Dereference £temporary2849 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$30:
	; Assign longMonthList £temporary2849 -> localeConvPtr
	mov rax, [rsi + 32]
	mov [rbp + 84], rax

 strftime$31:
	; Jump 33
	jmp strftime$33

 strftime$32:
	; Assign longMonthList g_longMonthList
	mov qword [rbp + 84], @8011$g_longMonthList

 strftime$33:
	; PreCall 92 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$34:
	; Parameter 116 pointer result
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

 strftime$35:
	; Parameter 124 pointer ""
	mov qword [rbp + 124], @8081$string_#

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
	; IntegralToIntegral £temporary2852 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$42:
	; BinaryAdd £temporary2854 format £temporary2852
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$43:
	; Dereference £temporary2851 -> £temporary2854 £temporary2854 0

 strftime$44:
	; Equal 326 £temporary2851 -> £temporary2854 0
	cmp byte [rsi], 0
	je strftime$326

 strftime$45:
	; IntegralToIntegral £temporary2858 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$46:
	; BinaryAdd £temporary2860 format £temporary2858
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$47:
	; Dereference £temporary2857 -> £temporary2860 £temporary2860 0

 strftime$48:
	; NotEqual 298 £temporary2857 -> £temporary2860 37
	cmp byte [rsi], 37
	jne strftime$298

 strftime$49:
	; BinaryAdd index index 1
	inc dword [rbp + 92]

 strftime$50:
	; Assign £temporary2862 index
	mov eax, [rbp + 92]

 strftime$51:
	; IntegralToIntegral £temporary2864 £temporary2862
	mov rbx, 4294967295
	and rax, rbx

 strftime$52:
	; BinaryAdd £temporary2866 format £temporary2864
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$53:
	; Dereference £temporary2863 -> £temporary2866 £temporary2866 0

 strftime$54:
	; Case 78 £temporary2863 -> £temporary2866 97
	mov al, [rsi]
	cmp al, 97
	je strftime$78

 strftime$55:
	; Case 89 £temporary2863 -> £temporary2866 65
	cmp al, 65
	je strftime$89

 strftime$56:
	; Case 100 £temporary2863 -> £temporary2866 98
	cmp al, 98
	je strftime$100

 strftime$57:
	; Case 111 £temporary2863 -> £temporary2866 66
	cmp al, 66
	je strftime$111

 strftime$58:
	; Case 122 £temporary2863 -> £temporary2866 99
	cmp al, 99
	je strftime$122

 strftime$59:
	; Case 142 £temporary2863 -> £temporary2866 100
	cmp al, 100
	je strftime$142

 strftime$60:
	; Case 150 £temporary2863 -> £temporary2866 72
	cmp al, 72
	je strftime$150

 strftime$61:
	; Case 158 £temporary2863 -> £temporary2866 73
	cmp al, 73
	je strftime$158

 strftime$62:
	; Case 167 £temporary2863 -> £temporary2866 106
	cmp al, 106
	je strftime$167

 strftime$63:
	; Case 175 £temporary2863 -> £temporary2866 109
	cmp al, 109
	je strftime$175

 strftime$64:
	; Case 184 £temporary2863 -> £temporary2866 77
	cmp al, 77
	je strftime$184

 strftime$65:
	; Case 192 £temporary2863 -> £temporary2866 112
	cmp al, 112
	je strftime$192

 strftime$66:
	; Case 204 £temporary2863 -> £temporary2866 83
	cmp al, 83
	je strftime$204

 strftime$67:
	; Case 212 £temporary2863 -> £temporary2866 85
	cmp al, 85
	je strftime$212

 strftime$68:
	; Case 219 £temporary2863 -> £temporary2866 119
	cmp al, 119
	je strftime$219

 strftime$69:
	; Case 227 £temporary2863 -> £temporary2866 87
	cmp al, 87
	je strftime$227

 strftime$70:
	; Case 234 £temporary2863 -> £temporary2866 120
	cmp al, 120
	je strftime$234

 strftime$71:
	; Case 246 £temporary2863 -> £temporary2866 88
	cmp al, 88
	je strftime$246

 strftime$72:
	; Case 258 £temporary2863 -> £temporary2866 121
	cmp al, 121
	je strftime$258

 strftime$73:
	; Case 267 £temporary2863 -> £temporary2866 89
	cmp al, 89
	je strftime$267

 strftime$74:
	; Case 276 £temporary2863 -> £temporary2866 90
	cmp al, 90
	je strftime$276

 strftime$75:
	; Case 287 £temporary2863 -> £temporary2866 37
	cmp al, 37
	je strftime$287

 strftime$76:
	; CaseEnd £temporary2863 -> £temporary2866

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
	; Dereference £temporary2867 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$81:
	; IntegralToIntegral £temporary2869 £temporary2867 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$82:
	; UnsignedMultiply £temporary2870 £temporary2869 8
	xor rdx, rdx
	mul qword [@8106$int8$8#]

 strftime$83:
	; BinaryAdd £temporary2871 shortDayList £temporary2870
	mov rsi, [rbp + 60]
	add rsi, rax

 strftime$84:
	; Dereference £temporary2868 -> £temporary2871 £temporary2871 0

 strftime$85:
	; Parameter 156 pointer £temporary2868 -> £temporary2871
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
	; Dereference £temporary2873 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$92:
	; IntegralToIntegral £temporary2875 £temporary2873 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$93:
	; UnsignedMultiply £temporary2876 £temporary2875 8
	xor rdx, rdx
	mul qword [@8109$int8$8#]

 strftime$94:
	; BinaryAdd £temporary2877 longDayList £temporary2876
	mov rsi, [rbp + 76]
	add rsi, rax

 strftime$95:
	; Dereference £temporary2874 -> £temporary2877 £temporary2877 0

 strftime$96:
	; Parameter 156 pointer £temporary2874 -> £temporary2877
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
	; Dereference £temporary2879 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$103:
	; IntegralToIntegral £temporary2881 £temporary2879 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$104:
	; UnsignedMultiply £temporary2882 £temporary2881 8
	xor rdx, rdx
	mul qword [@8112$int8$8#]

 strftime$105:
	; BinaryAdd £temporary2883 shortMonthList £temporary2882
	mov rsi, [rbp + 68]
	add rsi, rax

 strftime$106:
	; Dereference £temporary2880 -> £temporary2883 £temporary2883 0

 strftime$107:
	; Parameter 156 pointer £temporary2880 -> £temporary2883
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
	; Dereference £temporary2885 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$114:
	; IntegralToIntegral £temporary2887 £temporary2885 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$115:
	; UnsignedMultiply £temporary2888 £temporary2887 8
	xor rdx, rdx
	mul qword [@8115$int8$8#]

 strftime$116:
	; BinaryAdd £temporary2889 longMonthList £temporary2888
	mov rsi, [rbp + 84]
	add rsi, rax

 strftime$117:
	; Dereference £temporary2886 -> £temporary2889 £temporary2889 0

 strftime$118:
	; Parameter 156 pointer £temporary2886 -> £temporary2889
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
	mov qword [rbp + 156], @8118$string_2502i2D2502i2D2502i202502i3A2502i3A2502i#

 strftime$125:
	; Dereference £temporary2891 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$126:
	; BinaryAdd £temporary2892 £temporary2891 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$127:
	; Parameter 164 signedint £temporary2892
	mov [rbp + 164], eax

 strftime$128:
	; Dereference £temporary2893 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$129:
	; BinaryAdd £temporary2894 £temporary2893 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$130:
	; Parameter 168 signedint £temporary2894
	mov [rbp + 168], eax

 strftime$131:
	; Dereference £temporary2895 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$132:
	; Parameter 172 signedint £temporary2895 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 172], eax

 strftime$133:
	; Dereference £temporary2896 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$134:
	; Parameter 176 signedint £temporary2896 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$135:
	; Dereference £temporary2897 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$136:
	; Parameter 180 signedint £temporary2897 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$137:
	; Dereference £temporary2898 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$138:
	; Parameter 184 signedint £temporary2898 -> tp
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
	mov qword [rbp + 156], @8125$string_2502i#

 strftime$145:
	; Dereference £temporary2900 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$146:
	; Parameter 164 signedint £temporary2900 -> tp
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
	mov qword [rbp + 156], @8128$string_2502i#

 strftime$153:
	; Dereference £temporary2902 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$154:
	; Parameter 164 signedint £temporary2902 -> tp
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
	mov qword [rbp + 156], @8131$string_2502i#

 strftime$161:
	; Dereference £temporary2904 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$162:
	; SignedModulo £temporary2905 £temporary2904 -> tp 12
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [@8133$int4$12#]

 strftime$163:
	; Parameter 164 signedint £temporary2905
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
	mov qword [rbp + 156], @8136$string_2503i#

 strftime$170:
	; Dereference £temporary2907 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$171:
	; Parameter 164 signedint £temporary2907 -> tp
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
	mov qword [rbp + 156], @8139$string_2502i#

 strftime$178:
	; Dereference £temporary2909 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$179:
	; BinaryAdd £temporary2910 £temporary2909 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$180:
	; Parameter 164 signedint £temporary2910
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
	mov qword [rbp + 156], @8144$string_2502i#

 strftime$187:
	; Dereference £temporary2912 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$188:
	; Parameter 164 signedint £temporary2912 -> tp
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
	mov qword [rbp + 156], @8147$string_25s#

 strftime$195:
	; Dereference £temporary2914 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$196:
	; SignedGreaterThanEqual 199 £temporary2914 -> tp 12
	cmp dword [rsi + 8], 12
	jge strftime$199

 strftime$197:
	; Assign £temporary2916 "AM"
	mov eax, @8150$string_AM#

 strftime$198:
	; Jump 200
	jmp strftime$200

 strftime$199:
	; Assign £temporary2916 "PM"
	mov eax, @8151$string_PM#

 strftime$200:
	; Parameter 164 pointer £temporary2916
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
	mov qword [rbp + 156], @8154$string_2502i#

 strftime$207:
	; Dereference £temporary2918 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$208:
	; Parameter 164 signedint £temporary2918 -> tp
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
	mov qword [rbp + 156], @8157$string_2502i#

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
	mov qword [rbp + 156], @8160$string_2502i#

 strftime$222:
	; Dereference £temporary2921 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$223:
	; Parameter 164 signedint £temporary2921 -> tp
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
	mov qword [rbp + 156], @8163$string_2502i#

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
	mov qword [rbp + 156], @8166$string_2502i3A2502i3A2502i#

 strftime$237:
	; Dereference £temporary2924 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$238:
	; Parameter 164 signedint £temporary2924 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$239:
	; Dereference £temporary2925 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$240:
	; Parameter 168 signedint £temporary2925 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 168], eax

 strftime$241:
	; Dereference £temporary2926 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$242:
	; Parameter 172 signedint £temporary2926 -> tp
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
	mov qword [rbp + 156], @8169$string_2502i3A2502i3A2502i#

 strftime$249:
	; Dereference £temporary2928 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$250:
	; Parameter 164 signedint £temporary2928 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 164], eax

 strftime$251:
	; Dereference £temporary2929 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$252:
	; Parameter 168 signedint £temporary2929 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 168], eax

 strftime$253:
	; Dereference £temporary2930 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$254:
	; Parameter 172 signedint £temporary2930 -> tp
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
	mov qword [rbp + 156], @8172$string_2502i#

 strftime$261:
	; Dereference £temporary2932 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$262:
	; SignedModulo £temporary2933 £temporary2932 -> tp 100
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [@8174$int4$100#]

 strftime$263:
	; Parameter 164 signedint £temporary2933
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
	mov qword [rbp + 156], @8177$string_2502i#

 strftime$270:
	; Dereference £temporary2935 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$271:
	; BinaryAdd £temporary2936 £temporary2935 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$272:
	; Parameter 164 signedint £temporary2936
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
	; Dereference £temporary2938 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$279:
	; Equal 282 £temporary2938 -> tp 0
	cmp dword [rsi + 32], 0
	je strftime$282

 strftime$280:
	; Assign £temporary2940 "summer"
	mov eax, @8182$string_summer#

 strftime$281:
	; Jump 283
	jmp strftime$283

 strftime$282:
	; Assign £temporary2940 "winter"
	mov eax, @8183$string_winter#

 strftime$283:
	; Parameter 156 pointer £temporary2940
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
	mov qword [rbp + 156], @8187$string_25#

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
	mov qword [rbp + 156], @8188$string_#

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
	; Dereference £temporary2944 -> add add 0
	mov rsi, rbp
	add rsi, 104

 strftime$299:
	; IntegralToIntegral £temporary2946 index
	mov eax, [rbp + 92]
	mov rbx, 4294967295
	and rax, rbx

 strftime$300:
	; BinaryAdd £temporary2948 format £temporary2946
	mov rdi, [rbp + 36]
	add rdi, rax

 strftime$301:
	; Dereference £temporary2945 -> £temporary2948 £temporary2948 0

 strftime$302:
	; Assign £temporary2944 -> add £temporary2945 -> £temporary2948
	mov al, [rdi]
	mov [rsi], al

 strftime$303:
	; Dereference £temporary2949 -> add add 0
	mov rsi, rbp
	add rsi, 104

 strftime$304:
	; Assign £temporary2949 -> add 0
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
	; GetReturnValue £temporary2950

 strftime$310:
	; Assign x £temporary2950
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
	; GetReturnValue £temporary2951

 strftime$316:
	; Assign y £temporary2951
	mov [rbp + 128], ebx

 strftime$317:
	; BinaryAdd £temporary2952 x y
	mov eax, [rbp + 124]
	add eax, [rbp + 128]

 strftime$318:
	; SignedGreaterThanEqual 326 £temporary2952 maxSize
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
	; GetReturnValue £temporary2955

 strftime$331:
	; SetReturnValue

 strftime$332:
	; Return £temporary2955
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strftime$333:
	; FunctionEnd strftime
