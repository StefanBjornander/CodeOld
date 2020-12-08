	global clock
	global time
	global mktime
	global gmtime
	global difftime
	global asctime
	global ctime
	global localtime
	global strftime

	extern sprintf
	extern localeconv
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

section .text

 time:
	; AssignRegister rax 201
	mov rax, 201

 time$1:
	; Address £temporary2667 time
	mov rdi, rbp
	add rdi, 32

 time$2:
	; IntegralToIntegral £temporary2668 £temporary2667

 time$3:
	; AssignRegister rdi £temporary2668

 time$4:
	; SysCall
	syscall

 time$5:
	; AssignRegister rax 96
	mov rax, 96

 time$6:
	; Address £temporary2671 tv
	mov rdi, rbp
	add rdi, 40

 time$7:
	; AssignRegister rdi £temporary2671

 time$8:
	; Address £temporary2673 tz
	mov rsi, rbp
	add rsi, 48

 time$9:
	; AssignRegister rsi £temporary2673

 time$10:
	; SysCall
	syscall

 time$11:
	; Equal 14 timePtr 0
	cmp qword [rbp + 24], 0
	je time$14

 time$12:
	; Dereference £temporary2675 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 time$13:
	; Assign £temporary2675 -> timePtr time
	mov rax, [rbp + 32]
	mov [rsi], rax

 time$14:
	; SetReturnValue

 time$15:
	; Return time
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 time$16:
	; FunctionEnd time

section .data

@7817$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7822$int4$365#:
	; Initializer SignedInt 365
	dd 365

section .data

@7825$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7827$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7829$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .text

 mktime:
	; Equal 28 tp 0
	cmp qword [rbp + 24], 0
	je mktime$28

 mktime$1:
	; Dereference £temporary2680 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$2:
	; BinarySubtract £temporary2681 £temporary2680 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 mktime$3:
	; SignedDivide £temporary2682 £temporary2681 4
	xor edx, edx
	idiv dword [@7817$int4$4#]

 mktime$4:
	; IntegralToIntegral £temporary2683 £temporary2682
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

 mktime$5:
	; Assign leapDays £temporary2683
	mov [rbp + 32], rax

 mktime$6:
	; Dereference £temporary2684 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$7:
	; BinarySubtract £temporary2685 £temporary2684 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 mktime$8:
	; SignedMultiply £temporary2686 £temporary2685 365
	xor edx, edx
	imul dword [@7822$int4$365#]

 mktime$9:
	; IntegralToIntegral £temporary2687 £temporary2686
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

 mktime$10:
	; BinaryAdd £temporary2688 £temporary2687 leapDays
	add rax, [rbp + 32]

 mktime$11:
	; Dereference £temporary2689 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$12:
	; IntegralToIntegral £temporary2690 £temporary2689 -> tp
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

 mktime$13:
	; BinaryAdd totalDays £temporary2688 £temporary2690
	add rax, rbx
	mov [rbp + 40], rax

 mktime$14:
	; SignedMultiply £temporary2692 totalDays 86400
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [@7825$int8$86400#]
	mov rbx, rax

 mktime$15:
	; Dereference £temporary2693 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$16:
	; IntegralToIntegral £temporary2694 £temporary2693 -> tp
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

 mktime$17:
	; SignedMultiply £temporary2695 £temporary2694 3600
	xor rdx, rdx
	imul qword [@7827$int8$3600#]

 mktime$18:
	; BinaryAdd £temporary2696 £temporary2692 £temporary2695
	add rbx, rax

 mktime$19:
	; Dereference £temporary2697 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$20:
	; IntegralToIntegral £temporary2698 £temporary2697 -> tp
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

 mktime$21:
	; SignedMultiply £temporary2699 £temporary2698 60
	xor rdx, rdx
	imul qword [@7829$int8$60#]

 mktime$22:
	; BinaryAdd £temporary2700 £temporary2696 £temporary2699
	add rbx, rax

 mktime$23:
	; Dereference £temporary2701 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$24:
	; IntegralToIntegral £temporary2702 £temporary2701 -> tp
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

 mktime$25:
	; BinaryAdd £temporary2703 £temporary2700 £temporary2702
	add rbx, rax

 mktime$26:
	; SetReturnValue

 mktime$27:
	; Return £temporary2703
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

@7832$g_timeStruct:
	; InitializerZero 36
	times 36 db 0

section .data

@7836$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7840$int4$100#:
	; Initializer SignedInt 100
	dd 100

section .data

@7844$int4$400#:
	; Initializer SignedInt 400
	dd 400

section .text

 @7834$isLeapYear:
	; SignedModulo £temporary2704 year 4
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7836$int4$4#]

 @7834$isLeapYear$1:
	; NotEqual 4 £temporary2704 0
	cmp edx, 0
	jne @7834$isLeapYear$4

 @7834$isLeapYear$2:
	; SignedModulo £temporary2706 year 100
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7840$int4$100#]

 @7834$isLeapYear$3:
	; NotEqual 6 £temporary2706 0
	cmp edx, 0
	jne @7834$isLeapYear$6

 @7834$isLeapYear$4:
	; SignedModulo £temporary2709 year 400
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [@7844$int4$400#]

 @7834$isLeapYear$5:
	; NotEqual 8 £temporary2709 0
	cmp edx, 0
	jne @7834$isLeapYear$8

 @7834$isLeapYear$6:
	; Assign £temporary2712 1
	mov ebx, 1

 @7834$isLeapYear$7:
	; Jump 9
	jmp @7834$isLeapYear$9

 @7834$isLeapYear$8:
	; Assign £temporary2712 0
	mov ebx, 0

 @7834$isLeapYear$9:
	; SetReturnValue

 @7834$isLeapYear$10:
	; Return £temporary2712
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @7834$isLeapYear$11:
	; FunctionEnd isLeapYear

section .data

@7855$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7858$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7861$int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

@7863$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .data

@7865$int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .data

@7867$int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

@7876$int8$7#:
	; Initializer Signed_Long_Int 7
	dq 7

section .data

@7879$int8$365#:
	; Initializer Signed_Long_Int 365
	dq 365

section .data

@7885$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@7889$int8$365#:
	; Initializer Signed_Long_Int 365
	dq 365

section .data

@7933$Array_4#:
	; Initializer Array 4
	dq 4

section .data

@7935$Array_4#:
	; Initializer Array 4
	dq 4

section .text

 gmtime:
	; Equal 91 timePtr 0
	cmp qword [rbp + 24], 0
	je gmtime$91

 gmtime$1:
	; Dereference £temporary2714 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 gmtime$2:
	; Assign time £temporary2714 -> timePtr
	mov rax, [rsi]
	mov [rbp + 32], rax

 gmtime$3:
	; SignedModulo secondsOfDay time 86400
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@7855$int8$86400#]
	mov [rbp + 40], rdx

 gmtime$4:
	; SignedModulo secondsOfHour secondsOfDay 3600
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@7858$int8$3600#]
	mov [rbp + 48], rdx

 gmtime$5:
	; SignedDivide £temporary2718 secondsOfDay 3600
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@7861$int8$3600#]

 gmtime$6:
	; IntegralToIntegral £temporary2719 £temporary2718
	cmp rax, 0
	jge gmtime$7
	neg rax
	neg eax

 gmtime$7:
	; Assign g_timeStruct.tm_hour £temporary2719
	mov [@7832$g_timeStruct + 8], eax

 gmtime$8:
	; SignedDivide £temporary2721 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@7863$int8$60#]

 gmtime$9:
	; IntegralToIntegral £temporary2722 £temporary2721
	cmp rax, 0
	jge gmtime$10
	neg rax
	neg eax

 gmtime$10:
	; Assign g_timeStruct.tm_min £temporary2722
	mov [@7832$g_timeStruct + 4], eax

 gmtime$11:
	; SignedModulo £temporary2724 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [@7865$int8$60#]

 gmtime$12:
	; IntegralToIntegral £temporary2725 £temporary2724
	cmp rdx, 0
	jge gmtime$13
	neg rdx
	neg edx

 gmtime$13:
	; Assign g_timeStruct.tm_sec £temporary2725
	mov [@7832$g_timeStruct], edx

 gmtime$14:
	; SignedDivide totalDays time 86400
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [@7867$int8$86400#]
	mov [rbp + 56], rax

 gmtime$15:
	; SignedGreaterThanEqual 20 totalDays 3
	cmp qword [rbp + 56], 3
	jge gmtime$20

 gmtime$16:
	; BinaryAdd £temporary2729 totalDays 4
	mov rax, [rbp + 56]
	add rax, 4

 gmtime$17:
	; IntegralToIntegral £temporary2730 £temporary2729
	cmp rax, 0
	jge gmtime$18
	neg rax
	neg eax

 gmtime$18:
	; Assign g_timeStruct.tm_wday £temporary2730
	mov [@7832$g_timeStruct + 24], eax

 gmtime$19:
	; Jump 24
	jmp gmtime$24

 gmtime$20:
	; BinarySubtract £temporary2732 totalDays 3
	mov rax, [rbp + 56]
	sub rax, 3

 gmtime$21:
	; SignedModulo £temporary2733 £temporary2732 7
	xor rdx, rdx
	idiv qword [@7876$int8$7#]

 gmtime$22:
	; IntegralToIntegral £temporary2734 £temporary2733
	cmp rdx, 0
	jge gmtime$23
	neg rdx
	neg edx

 gmtime$23:
	; Assign g_timeStruct.tm_wday £temporary2734
	mov [@7832$g_timeStruct + 24], edx

 gmtime$24:
	; SignedDivide £temporary2735 totalDays 365
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@7879$int8$365#]

 gmtime$25:
	; BinaryAdd £temporary2736 £temporary2735 1970
	add rax, 1970

 gmtime$26:
	; IntegralToIntegral £temporary2737 £temporary2736
	cmp rax, 0
	jge gmtime$27
	neg rax
	neg eax

 gmtime$27:
	; Assign year £temporary2737
	mov [rbp + 64], eax

 gmtime$28:
	; BinarySubtract £temporary2738 year 1969
	mov eax, [rbp + 64]
	sub eax, 1969

 gmtime$29:
	; SignedDivide leapDays £temporary2738 4
	xor edx, edx
	idiv dword [@7885$int4$4#]
	mov [rbp + 68], eax

 gmtime$30:
	; SignedModulo totalDays totalDays 365
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [@7889$int8$365#]
	mov [rbp + 56], rdx

 gmtime$31:
	; IntegralToIntegral £temporary2741 leapDays
	mov eax, [rbp + 68]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$32
	neg eax
	neg rax

 gmtime$32:
	; BinarySubtract totalDays totalDays £temporary2741
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
	jmp @7834$isLeapYear

 gmtime$38:
	; PostCall 72

 gmtime$39:
	; GetReturnValue £temporary2745

 gmtime$40:
	; Equal 43 £temporary2745 0
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
	mov [@7832$g_timeStruct + 20], eax

 gmtime$45:
	; IntegralToIntegral £temporary2752 totalDays
	mov rax, [rbp + 56]
	cmp rax, 0
	jge gmtime$46
	neg rax
	neg eax

 gmtime$46:
	; Assign g_timeStruct.tm_yday £temporary2752
	mov [@7832$g_timeStruct + 28], eax

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
	jmp @7834$isLeapYear

 gmtime$51:
	; PostCall 76

 gmtime$52:
	; GetReturnValue £temporary2753

 gmtime$53:
	; Equal 56 £temporary2753 0
	cmp ebx, 0
	je gmtime$56

 gmtime$54:
	; Assign £temporary2755 29
	mov eax, 29

 gmtime$55:
	; Jump 57
	jmp gmtime$57

 gmtime$56:
	; Assign £temporary2755 28
	mov eax, 28

 gmtime$57:
	; Assign daysOfMonths[1] £temporary2755
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
	; IntegralToIntegral £temporary2769 month
	mov eax, [rbp + 120]
	mov rbx, 4294967295
	and rax, rbx

 gmtime$70:
	; UnsignedMultiply £temporary2770 £temporary2769 4
	xor rdx, rdx
	mul qword [@7933$Array_4#]

 gmtime$71:
	; BinaryAdd £temporary2771 daysOfMonths £temporary2770
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$72:
	; Dereference £temporary2768 -> £temporary2771 £temporary2771 0

 gmtime$73:
	; IntegralToIntegral £temporary2772 £temporary2768 -> £temporary2771
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$74
	neg eax
	neg rax

 gmtime$74:
	; SignedLessThan 84 totalDays £temporary2772
	cmp [rbp + 56], rax
	jl gmtime$84

 gmtime$75:
	; Assign £temporary2774 month
	mov eax, [rbp + 120]

 gmtime$76:
	; BinaryAdd month month 1
	inc dword [rbp + 120]

 gmtime$77:
	; IntegralToIntegral £temporary2776 £temporary2774
	mov rbx, 4294967295
	and rax, rbx

 gmtime$78:
	; UnsignedMultiply £temporary2777 £temporary2776 4
	xor rdx, rdx
	mul qword [@7935$Array_4#]

 gmtime$79:
	; BinaryAdd £temporary2778 daysOfMonths £temporary2777
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$80:
	; Dereference £temporary2775 -> £temporary2778 £temporary2778 0

 gmtime$81:
	; IntegralToIntegral £temporary2779 £temporary2775 -> £temporary2778
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$82
	neg eax
	neg rax

 gmtime$82:
	; BinarySubtract totalDays totalDays £temporary2779
	sub [rbp + 56], rax

 gmtime$83:
	; Jump 69
	jmp gmtime$69

 gmtime$84:
	; Assign g_timeStruct.tm_mon month
	mov eax, [rbp + 120]
	mov [@7832$g_timeStruct + 16], eax

 gmtime$85:
	; BinaryAdd £temporary2783 totalDays 1
	mov rax, [rbp + 56]
	inc rax

 gmtime$86:
	; IntegralToIntegral £temporary2784 £temporary2783
	cmp rax, 0
	jge gmtime$87
	neg rax
	neg eax

 gmtime$87:
	; Assign g_timeStruct.tm_mday £temporary2784
	mov [@7832$g_timeStruct + 12], eax

 gmtime$88:
	; Assign g_timeStruct.tm_isdst -1
	mov dword [@7832$g_timeStruct + 32], -1

 gmtime$89:
	; SetReturnValue

 gmtime$90:
	; Return @7832$g_timeStruct
	mov rbx, @7832$g_timeStruct
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

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .text

 difftime:
	; BinarySubtract £temporary2786 time2 time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

 difftime$1:
	; IntegralToFloating £temporary2787 £temporary2786
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 difftime$2:
	; SetReturnValue

 difftime$3:
	; Return £temporary2787
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 difftime$4:
	; FunctionEnd difftime

section .data

@7951$g_timeString:
	; InitializerZero 256
	times 256 db 0

section .data

@7952$string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

@7953$string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

@7954$string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

@7955$string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

@7956$string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

@7957$string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

@7958$string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@7959$g_defaultShortDayList:
	; Initializer Pointer @7952$string_Sun#
	dq @7952$string_Sun#
	; Initializer Pointer @7953$string_Mon#
	dq @7953$string_Mon#
	; Initializer Pointer @7954$string_Tue#
	dq @7954$string_Tue#
	; Initializer Pointer @7955$string_Wed#
	dq @7955$string_Wed#
	; Initializer Pointer @7956$string_Thu#
	dq @7956$string_Thu#
	; Initializer Pointer @7957$string_Fri#
	dq @7957$string_Fri#
	; Initializer Pointer @7958$string_Sat#
	dq @7958$string_Sat#

section .data

@7960$string_Sunday#:
	; Initializer String Sunday
	db "Sunday", 0

section .data

@7961$string_Monday#:
	; Initializer String Monday
	db "Monday", 0

section .data

@7962$string_Tuesday#:
	; Initializer String Tuesday
	db "Tuesday", 0

section .data

@7963$string_Wednesday#:
	; Initializer String Wednesday
	db "Wednesday", 0

section .data

@7964$string_Thursday#:
	; Initializer String Thursday
	db "Thursday", 0

section .data

@7965$string_Friday#:
	; Initializer String Friday
	db "Friday", 0

section .data

@7966$string_Saturday#:
	; Initializer String Saturday
	db "Saturday", 0

section .data

@7967$g_defaultLongDayList:
	; Initializer Pointer @7960$string_Sunday#
	dq @7960$string_Sunday#
	; Initializer Pointer @7961$string_Monday#
	dq @7961$string_Monday#
	; Initializer Pointer @7962$string_Tuesday#
	dq @7962$string_Tuesday#
	; Initializer Pointer @7963$string_Wednesday#
	dq @7963$string_Wednesday#
	; Initializer Pointer @7964$string_Thursday#
	dq @7964$string_Thursday#
	; Initializer Pointer @7965$string_Friday#
	dq @7965$string_Friday#
	; Initializer Pointer @7966$string_Saturday#
	dq @7966$string_Saturday#

section .data

@7968$string_Jan#:
	; Initializer String Jan
	db "Jan", 0

section .data

@7969$string_Feb#:
	; Initializer String Feb
	db "Feb", 0

section .data

@7970$string_Mar#:
	; Initializer String Mar
	db "Mar", 0

section .data

@7971$string_Apr#:
	; Initializer String Apr
	db "Apr", 0

section .data

@7972$string_May#:
	; Initializer String May
	db "May", 0

section .data

@7973$string_Jun#:
	; Initializer String Jun
	db "Jun", 0

section .data

@7974$string_Jul#:
	; Initializer String Jul
	db "Jul", 0

section .data

@7975$string_Aug#:
	; Initializer String Aug
	db "Aug", 0

section .data

@7976$string_Sep#:
	; Initializer String Sep
	db "Sep", 0

section .data

@7977$string_Oct#:
	; Initializer String Oct
	db "Oct", 0

section .data

@7978$string_Nov#:
	; Initializer String Nov
	db "Nov", 0

section .data

@7979$string_Dec#:
	; Initializer String Dec
	db "Dec", 0

section .data

@7980$g_defaultShortMonthList:
	; Initializer Pointer @7968$string_Jan#
	dq @7968$string_Jan#
	; Initializer Pointer @7969$string_Feb#
	dq @7969$string_Feb#
	; Initializer Pointer @7970$string_Mar#
	dq @7970$string_Mar#
	; Initializer Pointer @7971$string_Apr#
	dq @7971$string_Apr#
	; Initializer Pointer @7972$string_May#
	dq @7972$string_May#
	; Initializer Pointer @7973$string_Jun#
	dq @7973$string_Jun#
	; Initializer Pointer @7974$string_Jul#
	dq @7974$string_Jul#
	; Initializer Pointer @7975$string_Aug#
	dq @7975$string_Aug#
	; Initializer Pointer @7976$string_Sep#
	dq @7976$string_Sep#
	; Initializer Pointer @7977$string_Oct#
	dq @7977$string_Oct#
	; Initializer Pointer @7978$string_Nov#
	dq @7978$string_Nov#
	; Initializer Pointer @7979$string_Dec#
	dq @7979$string_Dec#

section .data

@7981$string_January#:
	; Initializer String January
	db "January", 0

section .data

@7982$string_February#:
	; Initializer String February
	db "February", 0

section .data

@7983$string_March#:
	; Initializer String March
	db "March", 0

section .data

@7984$string_April#:
	; Initializer String April
	db "April", 0

section .data

@7985$string_May#:
	; Initializer String May
	db "May", 0

section .data

@7986$string_June#:
	; Initializer String June
	db "June", 0

section .data

@7987$string_July#:
	; Initializer String July
	db "July", 0

section .data

@7988$string_August#:
	; Initializer String August
	db "August", 0

section .data

@7989$string_September#:
	; Initializer String September
	db "September", 0

section .data

@7990$string_October#:
	; Initializer String October
	db "October", 0

section .data

@7991$string_November#:
	; Initializer String November
	db "November", 0

section .data

@7992$string_December#:
	; Initializer String December
	db "December", 0

section .data

@7993$g_defaultLongMonthList:
	; Initializer Pointer @7981$string_January#
	dq @7981$string_January#
	; Initializer Pointer @7982$string_February#
	dq @7982$string_February#
	; Initializer Pointer @7983$string_March#
	dq @7983$string_March#
	; Initializer Pointer @7984$string_April#
	dq @7984$string_April#
	; Initializer Pointer @7985$string_May#
	dq @7985$string_May#
	; Initializer Pointer @7986$string_June#
	dq @7986$string_June#
	; Initializer Pointer @7987$string_July#
	dq @7987$string_July#
	; Initializer Pointer @7988$string_August#
	dq @7988$string_August#
	; Initializer Pointer @7989$string_September#
	dq @7989$string_September#
	; Initializer Pointer @7990$string_October#
	dq @7990$string_October#
	; Initializer Pointer @7991$string_November#
	dq @7991$string_November#
	; Initializer Pointer @7992$string_December#
	dq @7992$string_December#

section .data

@8019$string_25s2025s2025i202502i3A2502i3A2502i2025i#:
	; Initializer String %s %s %i %02i:%02i:%02i %i
	db "%s %s %i %02i:%02i:%02i %i", 0

section .data

@8020$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8021$int8$8#:
	; Initializer Pointer 8
	dq 8

section .text

 asctime:
	; Assign localeConvPtr 0
	mov qword [rbp + 32], 0

 asctime$1:
	; Equal 5 localeConvPtr 0
	cmp qword [rbp + 32], 0
	je asctime$5

 asctime$2:
	; Dereference £temporary2789 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$3:
	; Assign £temporary2790 £temporary2789 -> localeConvPtr
	mov rax, [rsi + 8]

 asctime$4:
	; Jump 6
	jmp asctime$6

 asctime$5:
	; Assign £temporary2790 0
	mov rax, 0

 asctime$6:
	; Assign shortDayList £temporary2790
	mov [rbp + 40], rax

 asctime$7:
	; Equal 11 localeConvPtr 0
	cmp qword [rbp + 32], 0
	je asctime$11

 asctime$8:
	; Dereference £temporary2792 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$9:
	; Assign £temporary2793 £temporary2792 -> localeConvPtr
	mov rax, [rsi + 24]

 asctime$10:
	; Jump 12
	jmp asctime$12

 asctime$11:
	; Assign £temporary2793 0
	mov rax, 0

 asctime$12:
	; Assign shortMonthList £temporary2793
	mov [rbp + 48], rax

 asctime$13:
	; Equal 16 shortDayList 0
	cmp qword [rbp + 40], 0
	je asctime$16

 asctime$14:
	; Assign £temporary2795 shortDayList
	mov rax, [rbp + 40]

 asctime$15:
	; Jump 17
	jmp asctime$17

 asctime$16:
	; Assign £temporary2795 g_defaultShortDayList
	mov rax, @7959$g_defaultShortDayList

 asctime$17:
	; Assign shortDayList £temporary2795
	mov [rbp + 40], rax

 asctime$18:
	; Equal 21 shortMonthList 0
	cmp qword [rbp + 48], 0
	je asctime$21

 asctime$19:
	; Assign £temporary2797 shortMonthList
	mov rax, [rbp + 48]

 asctime$20:
	; Jump 22
	jmp asctime$22

 asctime$21:
	; Assign £temporary2797 g_defaultShortMonthList
	mov rax, @7980$g_defaultShortMonthList

 asctime$22:
	; Assign shortMonthList £temporary2797
	mov [rbp + 48], rax

 asctime$23:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asctime$24:
	; Parameter 80 pointer g_timeString
	mov qword [rbp + 80], @7951$g_timeString

 asctime$25:
	; Parameter 88 pointer "%s %s %i %02i:%02i:%02i %i"
	mov qword [rbp + 88], @8019$string_25s2025s2025i202502i3A2502i3A2502i2025i#

 asctime$26:
	; Dereference £temporary2798 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$27:
	; IntegralToIntegral £temporary2800 £temporary2798 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 asctime$28:
	; UnsignedMultiply £temporary2801 £temporary2800 8
	xor rdx, rdx
	mul qword [@8020$int8$8#]

 asctime$29:
	; BinaryAdd £temporary2802 shortDayList £temporary2801
	mov rsi, [rbp + 40]
	add rsi, rax

 asctime$30:
	; Dereference £temporary2799 -> £temporary2802 £temporary2802 0

 asctime$31:
	; Parameter 96 pointer £temporary2799 -> £temporary2802
	mov rax, [rsi]
	mov [rbp + 96], rax

 asctime$32:
	; Dereference £temporary2803 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$33:
	; IntegralToIntegral £temporary2805 £temporary2803 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 asctime$34:
	; UnsignedMultiply £temporary2806 £temporary2805 8
	xor rdx, rdx
	mul qword [@8021$int8$8#]

 asctime$35:
	; BinaryAdd £temporary2807 shortMonthList £temporary2806
	mov rsi, [rbp + 48]
	add rsi, rax

 asctime$36:
	; Dereference £temporary2804 -> £temporary2807 £temporary2807 0

 asctime$37:
	; Parameter 104 pointer £temporary2804 -> £temporary2807
	mov rax, [rsi]
	mov [rbp + 104], rax

 asctime$38:
	; Dereference £temporary2808 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$39:
	; Parameter 112 signedint £temporary2808 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

 asctime$40:
	; Dereference £temporary2809 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$41:
	; Parameter 116 signedint £temporary2809 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

 asctime$42:
	; Dereference £temporary2810 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$43:
	; Parameter 120 signedint £temporary2810 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

 asctime$44:
	; Dereference £temporary2811 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$45:
	; Parameter 124 signedint £temporary2811 -> tp
	mov eax, [rsi]
	mov [rbp + 124], eax

 asctime$46:
	; Dereference £temporary2812 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$47:
	; BinaryAdd £temporary2813 £temporary2812 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 asctime$48:
	; Parameter 128 signedint £temporary2813
	mov [rbp + 128], eax

 asctime$49:
	; Call 56 sprintf 36
	mov qword [rbp + 56], asctime$50
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 36
	jmp sprintf

 asctime$50:
	; PostCall 56

 asctime$51:
	; SetReturnValue

 asctime$52:
	; Return g_timeString
	mov rbx, @7951$g_timeString
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asctime$53:
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
	; GetReturnValue £temporary2815

 ctime$6:
	; Parameter 56 pointer £temporary2815
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
	; GetReturnValue £temporary2816

 ctime$10:
	; SetReturnValue

 ctime$11:
	; Return £temporary2816
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ctime$12:
	; FunctionEnd ctime

section .data

@8048$int8$3600#:
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
	; GetReturnValue £temporary2817

 localtime$5:
	; Assign tmPtr £temporary2817
	mov [rbp + 32], rbx

 localtime$6:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$7:
	; Call 40 localeconv 0
	mov qword [rbp + 40], localtime$8
	mov [rbp + 48], rbp
	add rbp, 40
	jmp localeconv

 localtime$8:
	; PostCall 40

 localtime$9:
	; GetReturnValue £temporary2818

 localtime$10:
	; Assign localeConvPtr £temporary2818
	mov [rbp + 40], rbx

 localtime$11:
	; Assign timeZone 0
	mov dword [rbp + 48], 0

 localtime$12:
	; Equal 21 localeConvPtr 0
	cmp qword [rbp + 40], 0
	je localtime$21

 localtime$13:
	; Dereference £temporary2820 -> tmPtr tmPtr 0
	mov rsi, [rbp + 32]

 localtime$14:
	; NotEqual 18 £temporary2820 -> tmPtr 1
	cmp dword [rsi + 32], 1
	jne localtime$18

 localtime$15:
	; Dereference £temporary2822 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 40]

 localtime$16:
	; Assign £temporary2824 £temporary2822 -> localeConvPtr
	mov eax, [rsi]

 localtime$17:
	; Jump 20
	jmp localtime$20

 localtime$18:
	; Dereference £temporary2823 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 40]

 localtime$19:
	; Assign £temporary2824 £temporary2823 -> localeConvPtr
	mov eax, [rsi + 4]

 localtime$20:
	; Assign timeZone £temporary2824
	mov [rbp + 48], eax

 localtime$21:
	; Dereference £temporary2825 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 localtime$22:
	; IntegralToIntegral £temporary2826 timeZone
	mov eax, [rbp + 48]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge localtime$23
	neg eax
	neg rax

 localtime$23:
	; SignedMultiply £temporary2827 £temporary2826 3600
	xor rdx, rdx
	imul qword [@8048$int8$3600#]

 localtime$24:
	; BinaryAdd t £temporary2825 -> timePtr £temporary2827
	mov rbx, [rsi]
	add rbx, rax
	mov [rbp + 52], rbx

 localtime$25:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$26:
	; Address £temporary2829 t
	mov rsi, rbp
	add rsi, 52

 localtime$27:
	; Parameter 84 pointer £temporary2829
	mov [rbp + 84], rsi

 localtime$28:
	; Call 60 gmtime 0
	mov qword [rbp + 60], localtime$29
	mov [rbp + 68], rbp
	add rbp, 60
	jmp gmtime

 localtime$29:
	; PostCall 60

 localtime$30:
	; GetReturnValue £temporary2830

 localtime$31:
	; SetReturnValue

 localtime$32:
	; Return £temporary2830
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 localtime$33:
	; FunctionEnd localtime

section .data

@8097$string_#:
	; Initializer String 
	db 0

section .data

@8156$string_2502i2D2502i2D2502i202502i3A2502i3A2502i#:
	; Initializer String %02i-%02i-%02i %02i:%02i:%02i
	db "%02i-%02i-%02i %02i:%02i:%02i", 0

section .data

@8163$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8166$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8169$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8174$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8177$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8182$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8185$string_25s#:
	; Initializer String %s
	db "%s", 0

section .data

@8188$string_AM#:
	; Initializer String AM
	db "AM", 0

section .data

@8189$string_PM#:
	; Initializer String PM
	db "PM", 0

section .data

@8192$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8195$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8198$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8201$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8204$string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@8207$string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

@8210$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8215$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8220$string_#:
	; Initializer String 
	db 0

section .data

@8223$string_25#:
	; Initializer String %
	db "%", 0

section .data

@8224$string_#:
	; Initializer String 
	db 0

section .data

@8088$int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@8093$int4$365#:
	; Initializer SignedInt 365
	dd 365

section .data

@8117$int8$7#:
	; Initializer Signed_Long_Int 7
	dq 7

section .data

@8125$int8$7#:
	; Initializer Signed_Long_Int 7
	dq 7

section .data

@8144$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8147$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8150$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8153$int8$8#:
	; Initializer Pointer 8
	dq 8

section .data

@8171$int4$12#:
	; Initializer SignedInt 12
	dd 12

section .data

@8212$int4$100#:
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
	; GetReturnValue £temporary2832

 strftime$4:
	; Assign localeConvPtr £temporary2832
	mov [rbp + 52], rbx

 strftime$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$9

 strftime$6:
	; Dereference £temporary2834 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$7:
	; Assign £temporary2835 £temporary2834 -> localeConvPtr
	mov rax, [rsi + 8]

 strftime$8:
	; Jump 10
	jmp strftime$10

 strftime$9:
	; Assign £temporary2835 0
	mov rax, 0

 strftime$10:
	; Assign shortDayList £temporary2835
	mov [rbp + 60], rax

 strftime$11:
	; Equal 15 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$15

 strftime$12:
	; Dereference £temporary2837 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$13:
	; Assign £temporary2838 £temporary2837 -> localeConvPtr
	mov rax, [rsi + 24]

 strftime$14:
	; Jump 16
	jmp strftime$16

 strftime$15:
	; Assign £temporary2838 0
	mov rax, 0

 strftime$16:
	; Assign shortMonthList £temporary2838
	mov [rbp + 68], rax

 strftime$17:
	; Equal 21 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$21

 strftime$18:
	; Dereference £temporary2840 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$19:
	; Assign £temporary2841 £temporary2840 -> localeConvPtr
	mov rax, [rsi + 16]

 strftime$20:
	; Jump 22
	jmp strftime$22

 strftime$21:
	; Assign £temporary2841 0
	mov rax, 0

 strftime$22:
	; Assign longDayList £temporary2841
	mov [rbp + 76], rax

 strftime$23:
	; Equal 27 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$27

 strftime$24:
	; Dereference £temporary2843 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$25:
	; Assign £temporary2844 £temporary2843 -> localeConvPtr
	mov rax, [rsi + 32]

 strftime$26:
	; Jump 28
	jmp strftime$28

 strftime$27:
	; Assign £temporary2844 0
	mov rax, 0

 strftime$28:
	; Assign longMonthList £temporary2844
	mov [rbp + 84], rax

 strftime$29:
	; Dereference £temporary2845 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$30:
	; BinarySubtract £temporary2846 £temporary2845 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 strftime$31:
	; SignedDivide leapDays £temporary2846 4
	xor edx, edx
	idiv dword [@8088$int4$4#]
	mov [rbp + 92], eax

 strftime$32:
	; Dereference £temporary2848 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$33:
	; BinarySubtract £temporary2849 £temporary2848 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 strftime$34:
	; SignedMultiply £temporary2850 £temporary2849 365
	xor edx, edx
	imul dword [@8093$int4$365#]

 strftime$35:
	; BinaryAdd £temporary2851 £temporary2850 leapDays
	add eax, [rbp + 92]

 strftime$36:
	; Dereference £temporary2852 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$37:
	; BinaryAdd £temporary2853 £temporary2851 £temporary2852 -> tp
	add eax, [rsi + 28]

 strftime$38:
	; IntegralToIntegral £temporary2854 £temporary2853
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge strftime$39
	neg eax
	neg rax

 strftime$39:
	; Assign totalDays £temporary2854
	mov [rbp + 96], rax

 strftime$40:
	; PreCall 112 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$41:
	; Parameter 136 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 136], rax

 strftime$42:
	; Parameter 144 pointer ""
	mov qword [rbp + 144], @8097$string_#

 strftime$43:
	; Call 112 strcpy 0
	mov qword [rbp + 112], strftime$44
	mov [rbp + 120], rbp
	add rbp, 112
	jmp strcpy

 strftime$44:
	; PostCall 112

 strftime$45:
	; Equal 48 shortDayList 0
	cmp qword [rbp + 60], 0
	je strftime$48

 strftime$46:
	; Assign £temporary2857 shortDayList
	mov rax, [rbp + 60]

 strftime$47:
	; Jump 49
	jmp strftime$49

 strftime$48:
	; Assign £temporary2857 g_defaultShortDayList
	mov rax, @7959$g_defaultShortDayList

 strftime$49:
	; Assign shortDayList £temporary2857
	mov [rbp + 60], rax

 strftime$50:
	; Equal 53 longDayList 0
	cmp qword [rbp + 76], 0
	je strftime$53

 strftime$51:
	; Assign £temporary2859 longDayList
	mov rax, [rbp + 76]

 strftime$52:
	; Jump 54
	jmp strftime$54

 strftime$53:
	; Assign £temporary2859 g_defaultLongDayList
	mov rax, @7967$g_defaultLongDayList

 strftime$54:
	; Assign longDayList £temporary2859
	mov [rbp + 76], rax

 strftime$55:
	; Equal 58 shortMonthList 0
	cmp qword [rbp + 68], 0
	je strftime$58

 strftime$56:
	; Assign £temporary2861 shortMonthList
	mov rax, [rbp + 68]

 strftime$57:
	; Jump 59
	jmp strftime$59

 strftime$58:
	; Assign £temporary2861 g_defaultShortMonthList
	mov rax, @7980$g_defaultShortMonthList

 strftime$59:
	; Assign shortMonthList £temporary2861
	mov [rbp + 68], rax

 strftime$60:
	; Equal 63 longMonthList 0
	cmp qword [rbp + 84], 0
	je strftime$63

 strftime$61:
	; Assign £temporary2863 longMonthList
	mov rax, [rbp + 84]

 strftime$62:
	; Jump 64
	jmp strftime$64

 strftime$63:
	; Assign £temporary2863 g_defaultLongMonthList
	mov rax, @7993$g_defaultLongMonthList

 strftime$64:
	; Assign longMonthList £temporary2863
	mov [rbp + 84], rax

 strftime$65:
	; SignedGreaterThanEqual 70 totalDays 3
	cmp qword [rbp + 96], 3
	jge strftime$70

 strftime$66:
	; BinaryAdd £temporary2865 totalDays 4
	mov rax, [rbp + 96]
	add rax, 4

 strftime$67:
	; IntegralToIntegral £temporary2866 £temporary2865
	cmp rax, 0
	jge strftime$68
	neg rax
	neg eax

 strftime$68:
	; Assign yearDaySunday £temporary2866
	mov [rbp + 104], eax

 strftime$69:
	; Jump 74
	jmp strftime$74

 strftime$70:
	; BinarySubtract £temporary2867 totalDays 3
	mov rax, [rbp + 96]
	sub rax, 3

 strftime$71:
	; SignedModulo £temporary2868 £temporary2867 7
	xor rdx, rdx
	idiv qword [@8117$int8$7#]

 strftime$72:
	; IntegralToIntegral £temporary2869 £temporary2868
	cmp rdx, 0
	jge strftime$73
	neg rdx
	neg edx

 strftime$73:
	; Assign yearDaySunday £temporary2869
	mov [rbp + 104], edx

 strftime$74:
	; SignedGreaterThanEqual 79 totalDays 4
	cmp qword [rbp + 96], 4
	jge strftime$79

 strftime$75:
	; BinaryAdd £temporary2871 totalDays 3
	mov rax, [rbp + 96]
	add rax, 3

 strftime$76:
	; IntegralToIntegral £temporary2872 £temporary2871
	cmp rax, 0
	jge strftime$77
	neg rax
	neg eax

 strftime$77:
	; Assign yearDayMonday £temporary2872
	mov [rbp + 108], eax

 strftime$78:
	; Jump 83
	jmp strftime$83

 strftime$79:
	; BinarySubtract £temporary2873 totalDays 4
	mov rax, [rbp + 96]
	sub rax, 4

 strftime$80:
	; SignedModulo £temporary2874 £temporary2873 7
	xor rdx, rdx
	idiv qword [@8125$int8$7#]

 strftime$81:
	; IntegralToIntegral £temporary2875 £temporary2874
	cmp rdx, 0
	jge strftime$82
	neg rdx
	neg edx

 strftime$82:
	; Assign yearDayMonday £temporary2875
	mov [rbp + 108], edx

 strftime$83:
	; Assign index 0
	mov dword [rbp + 112], 0

 strftime$84:
	; IntegralToIntegral £temporary2877 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$85:
	; BinaryAdd £temporary2879 fmt £temporary2877
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$86:
	; Dereference £temporary2876 -> £temporary2879 £temporary2879 0

 strftime$87:
	; Equal 364 £temporary2876 -> £temporary2879 0
	cmp byte [rsi], 0
	je strftime$364

 strftime$88:
	; IntegralToIntegral £temporary2883 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$89:
	; BinaryAdd £temporary2885 fmt £temporary2883
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$90:
	; Dereference £temporary2882 -> £temporary2885 £temporary2885 0

 strftime$91:
	; NotEqual 336 £temporary2882 -> £temporary2885 37
	cmp byte [rsi], 37
	jne strftime$336

 strftime$92:
	; BinaryAdd index index 1
	inc dword [rbp + 112]

 strftime$93:
	; Assign £temporary2887 index
	mov eax, [rbp + 112]

 strftime$94:
	; IntegralToIntegral £temporary2889 £temporary2887
	mov rbx, 4294967295
	and rax, rbx

 strftime$95:
	; BinaryAdd £temporary2891 fmt £temporary2889
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$96:
	; Dereference £temporary2888 -> £temporary2891 £temporary2891 0

 strftime$97:
	; Case 121 £temporary2888 -> £temporary2891 97
	mov al, [rsi]
	cmp al, 97
	je strftime$121

 strftime$98:
	; Case 132 £temporary2888 -> £temporary2891 65
	cmp al, 65
	je strftime$132

 strftime$99:
	; Case 143 £temporary2888 -> £temporary2891 98
	cmp al, 98
	je strftime$143

 strftime$100:
	; Case 154 £temporary2888 -> £temporary2891 66
	cmp al, 66
	je strftime$154

 strftime$101:
	; Case 165 £temporary2888 -> £temporary2891 99
	cmp al, 99
	je strftime$165

 strftime$102:
	; Case 185 £temporary2888 -> £temporary2891 100
	cmp al, 100
	je strftime$185

 strftime$103:
	; Case 193 £temporary2888 -> £temporary2891 72
	cmp al, 72
	je strftime$193

 strftime$104:
	; Case 201 £temporary2888 -> £temporary2891 73
	cmp al, 73
	je strftime$201

 strftime$105:
	; Case 210 £temporary2888 -> £temporary2891 106
	cmp al, 106
	je strftime$210

 strftime$106:
	; Case 218 £temporary2888 -> £temporary2891 109
	cmp al, 109
	je strftime$218

 strftime$107:
	; Case 227 £temporary2888 -> £temporary2891 77
	cmp al, 77
	je strftime$227

 strftime$108:
	; Case 235 £temporary2888 -> £temporary2891 112
	cmp al, 112
	je strftime$235

 strftime$109:
	; Case 247 £temporary2888 -> £temporary2891 83
	cmp al, 83
	je strftime$247

 strftime$110:
	; Case 255 £temporary2888 -> £temporary2891 85
	cmp al, 85
	je strftime$255

 strftime$111:
	; Case 262 £temporary2888 -> £temporary2891 119
	cmp al, 119
	je strftime$262

 strftime$112:
	; Case 270 £temporary2888 -> £temporary2891 87
	cmp al, 87
	je strftime$270

 strftime$113:
	; Case 277 £temporary2888 -> £temporary2891 120
	cmp al, 120
	je strftime$277

 strftime$114:
	; Case 289 £temporary2888 -> £temporary2891 88
	cmp al, 88
	je strftime$289

 strftime$115:
	; Case 301 £temporary2888 -> £temporary2891 121
	cmp al, 121
	je strftime$301

 strftime$116:
	; Case 310 £temporary2888 -> £temporary2891 89
	cmp al, 89
	je strftime$310

 strftime$117:
	; Case 319 £temporary2888 -> £temporary2891 90
	cmp al, 90
	je strftime$319

 strftime$118:
	; Case 325 £temporary2888 -> £temporary2891 37
	cmp al, 37
	je strftime$325

 strftime$119:
	; CaseEnd £temporary2888 -> £temporary2891

 strftime$120:
	; Jump 330
	jmp strftime$330

 strftime$121:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$122:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$123:
	; Dereference £temporary2892 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$124:
	; IntegralToIntegral £temporary2894 £temporary2892 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$125:
	; UnsignedMultiply £temporary2895 £temporary2894 8
	xor rdx, rdx
	mul qword [@8144$int8$8#]

 strftime$126:
	; BinaryAdd £temporary2896 shortDayList £temporary2895
	mov rsi, [rbp + 60]
	add rsi, rax

 strftime$127:
	; Dereference £temporary2893 -> £temporary2896 £temporary2896 0

 strftime$128:
	; Parameter 168 pointer £temporary2893 -> £temporary2896
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$129:
	; Call 136 strcpy 0
	mov qword [rbp + 136], strftime$130
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$130:
	; PostCall 136

 strftime$131:
	; Jump 343
	jmp strftime$343

 strftime$132:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$133:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$134:
	; Dereference £temporary2898 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$135:
	; IntegralToIntegral £temporary2900 £temporary2898 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$136:
	; UnsignedMultiply £temporary2901 £temporary2900 8
	xor rdx, rdx
	mul qword [@8147$int8$8#]

 strftime$137:
	; BinaryAdd £temporary2902 longDayList £temporary2901
	mov rsi, [rbp + 76]
	add rsi, rax

 strftime$138:
	; Dereference £temporary2899 -> £temporary2902 £temporary2902 0

 strftime$139:
	; Parameter 168 pointer £temporary2899 -> £temporary2902
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$140:
	; Call 136 strcpy 0
	mov qword [rbp + 136], strftime$141
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$141:
	; PostCall 136

 strftime$142:
	; Jump 343
	jmp strftime$343

 strftime$143:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$144:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$145:
	; Dereference £temporary2904 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$146:
	; IntegralToIntegral £temporary2906 £temporary2904 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$147:
	; UnsignedMultiply £temporary2907 £temporary2906 8
	xor rdx, rdx
	mul qword [@8150$int8$8#]

 strftime$148:
	; BinaryAdd £temporary2908 shortMonthList £temporary2907
	mov rsi, [rbp + 68]
	add rsi, rax

 strftime$149:
	; Dereference £temporary2905 -> £temporary2908 £temporary2908 0

 strftime$150:
	; Parameter 168 pointer £temporary2905 -> £temporary2908
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$151:
	; Call 136 strcpy 0
	mov qword [rbp + 136], strftime$152
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$152:
	; PostCall 136

 strftime$153:
	; Jump 343
	jmp strftime$343

 strftime$154:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$155:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$156:
	; Dereference £temporary2910 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$157:
	; IntegralToIntegral £temporary2912 £temporary2910 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$158:
	; UnsignedMultiply £temporary2913 £temporary2912 8
	xor rdx, rdx
	mul qword [@8153$int8$8#]

 strftime$159:
	; BinaryAdd £temporary2914 longMonthList £temporary2913
	mov rsi, [rbp + 84]
	add rsi, rax

 strftime$160:
	; Dereference £temporary2911 -> £temporary2914 £temporary2914 0

 strftime$161:
	; Parameter 168 pointer £temporary2911 -> £temporary2914
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$162:
	; Call 136 strcpy 0
	mov qword [rbp + 136], strftime$163
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$163:
	; PostCall 136

 strftime$164:
	; Jump 343
	jmp strftime$343

 strftime$165:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$166:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$167:
	; Parameter 168 pointer "%02i-%02i-%02i %02i:%02i:%02i"
	mov qword [rbp + 168], @8156$string_2502i2D2502i2D2502i202502i3A2502i3A2502i#

 strftime$168:
	; Dereference £temporary2916 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$169:
	; BinaryAdd £temporary2917 £temporary2916 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$170:
	; Parameter 176 signedint £temporary2917
	mov [rbp + 176], eax

 strftime$171:
	; Dereference £temporary2918 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$172:
	; BinaryAdd £temporary2919 £temporary2918 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$173:
	; Parameter 180 signedint £temporary2919
	mov [rbp + 180], eax

 strftime$174:
	; Dereference £temporary2920 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$175:
	; Parameter 184 signedint £temporary2920 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

 strftime$176:
	; Dereference £temporary2921 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$177:
	; Parameter 188 signedint £temporary2921 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 188], eax

 strftime$178:
	; Dereference £temporary2922 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$179:
	; Parameter 192 signedint £temporary2922 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 192], eax

 strftime$180:
	; Dereference £temporary2923 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$181:
	; Parameter 196 signedint £temporary2923 -> tp
	mov eax, [rsi]
	mov [rbp + 196], eax

 strftime$182:
	; Call 136 sprintf 24
	mov qword [rbp + 136], strftime$183
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 24
	jmp sprintf

 strftime$183:
	; PostCall 136

 strftime$184:
	; Jump 343
	jmp strftime$343

 strftime$185:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$186:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$187:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8163$string_25i#

 strftime$188:
	; Dereference £temporary2925 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$189:
	; Parameter 176 signedint £temporary2925 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 176], eax

 strftime$190:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$191
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$191:
	; PostCall 136

 strftime$192:
	; Jump 343
	jmp strftime$343

 strftime$193:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$194:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$195:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8166$string_25i#

 strftime$196:
	; Dereference £temporary2927 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$197:
	; Parameter 176 signedint £temporary2927 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$198:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$199
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$199:
	; PostCall 136

 strftime$200:
	; Jump 343
	jmp strftime$343

 strftime$201:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$202:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$203:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8169$string_25i#

 strftime$204:
	; Dereference £temporary2929 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$205:
	; SignedModulo £temporary2930 £temporary2929 -> tp 12
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [@8171$int4$12#]

 strftime$206:
	; Parameter 176 signedint £temporary2930
	mov [rbp + 176], edx

 strftime$207:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$208
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$208:
	; PostCall 136

 strftime$209:
	; Jump 343
	jmp strftime$343

 strftime$210:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$211:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$212:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8174$string_25i#

 strftime$213:
	; Dereference £temporary2932 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$214:
	; Parameter 176 signedint £temporary2932 -> tp
	mov eax, [rsi + 28]
	mov [rbp + 176], eax

 strftime$215:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$216
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$216:
	; PostCall 136

 strftime$217:
	; Jump 343
	jmp strftime$343

 strftime$218:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$219:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$220:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8177$string_25i#

 strftime$221:
	; Dereference £temporary2934 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$222:
	; BinaryAdd £temporary2935 £temporary2934 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$223:
	; Parameter 176 signedint £temporary2935
	mov [rbp + 176], eax

 strftime$224:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$225
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$225:
	; PostCall 136

 strftime$226:
	; Jump 343
	jmp strftime$343

 strftime$227:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$228:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$229:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8182$string_25i#

 strftime$230:
	; Dereference £temporary2937 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$231:
	; Parameter 176 signedint £temporary2937 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 176], eax

 strftime$232:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$233
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$233:
	; PostCall 136

 strftime$234:
	; Jump 343
	jmp strftime$343

 strftime$235:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$236:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$237:
	; Parameter 168 pointer "%s"
	mov qword [rbp + 168], @8185$string_25s#

 strftime$238:
	; Dereference £temporary2939 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$239:
	; SignedGreaterThanEqual 242 £temporary2939 -> tp 12
	cmp dword [rsi + 8], 12
	jge strftime$242

 strftime$240:
	; Assign £temporary2941 "AM"
	mov eax, @8188$string_AM#

 strftime$241:
	; Jump 243
	jmp strftime$243

 strftime$242:
	; Assign £temporary2941 "PM"
	mov eax, @8189$string_PM#

 strftime$243:
	; Parameter 176 pointer £temporary2941
	mov [rbp + 176], eax

 strftime$244:
	; Call 136 sprintf 8
	mov qword [rbp + 136], strftime$245
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 8
	jmp sprintf

 strftime$245:
	; PostCall 136

 strftime$246:
	; Jump 343
	jmp strftime$343

 strftime$247:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$248:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$249:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8192$string_25i#

 strftime$250:
	; Dereference £temporary2943 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$251:
	; Parameter 176 signedint £temporary2943 -> tp
	mov eax, [rsi]
	mov [rbp + 176], eax

 strftime$252:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$253
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$253:
	; PostCall 136

 strftime$254:
	; Jump 343
	jmp strftime$343

 strftime$255:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$256:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$257:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8195$string_25i#

 strftime$258:
	; Parameter 176 signedint yearDaySunday
	mov eax, [rbp + 104]
	mov [rbp + 176], eax

 strftime$259:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$260
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$260:
	; PostCall 136

 strftime$261:
	; Jump 343
	jmp strftime$343

 strftime$262:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$263:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$264:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8198$string_25i#

 strftime$265:
	; Dereference £temporary2946 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$266:
	; Parameter 176 signedint £temporary2946 -> tp
	mov eax, [rsi + 24]
	mov [rbp + 176], eax

 strftime$267:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$268
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$268:
	; PostCall 136

 strftime$269:
	; Jump 343
	jmp strftime$343

 strftime$270:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$271:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$272:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8201$string_25i#

 strftime$273:
	; Parameter 176 signedint yearDayMonday
	mov eax, [rbp + 108]
	mov [rbp + 176], eax

 strftime$274:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$275
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$275:
	; PostCall 136

 strftime$276:
	; Jump 343
	jmp strftime$343

 strftime$277:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$278:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$279:
	; Parameter 168 pointer "%02i:%02i:%02i"
	mov qword [rbp + 168], @8204$string_2502i3A2502i3A2502i#

 strftime$280:
	; Dereference £temporary2949 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$281:
	; Parameter 176 signedint £temporary2949 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$282:
	; Dereference £temporary2950 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$283:
	; Parameter 180 signedint £temporary2950 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$284:
	; Dereference £temporary2951 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$285:
	; Parameter 184 signedint £temporary2951 -> tp
	mov eax, [rsi]
	mov [rbp + 184], eax

 strftime$286:
	; Call 136 sprintf 12
	mov qword [rbp + 136], strftime$287
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$287:
	; PostCall 136

 strftime$288:
	; Jump 343
	jmp strftime$343

 strftime$289:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$290:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$291:
	; Parameter 168 pointer "%02i:%02i:%02i"
	mov qword [rbp + 168], @8207$string_2502i3A2502i3A2502i#

 strftime$292:
	; Dereference £temporary2953 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$293:
	; Parameter 176 signedint £temporary2953 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$294:
	; Dereference £temporary2954 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$295:
	; Parameter 180 signedint £temporary2954 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$296:
	; Dereference £temporary2955 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$297:
	; Parameter 184 signedint £temporary2955 -> tp
	mov eax, [rsi]
	mov [rbp + 184], eax

 strftime$298:
	; Call 136 sprintf 12
	mov qword [rbp + 136], strftime$299
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$299:
	; PostCall 136

 strftime$300:
	; Jump 343
	jmp strftime$343

 strftime$301:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$302:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$303:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8210$string_25i#

 strftime$304:
	; Dereference £temporary2957 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$305:
	; SignedModulo £temporary2958 £temporary2957 -> tp 100
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [@8212$int4$100#]

 strftime$306:
	; Parameter 176 signedint £temporary2958
	mov [rbp + 176], edx

 strftime$307:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$308
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$308:
	; PostCall 136

 strftime$309:
	; Jump 343
	jmp strftime$343

 strftime$310:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$311:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$312:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], @8215$string_25i#

 strftime$313:
	; Dereference £temporary2960 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$314:
	; BinaryAdd £temporary2961 £temporary2960 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$315:
	; Parameter 176 signedint £temporary2961
	mov [rbp + 176], eax

 strftime$316:
	; Call 136 sprintf 4
	mov qword [rbp + 136], strftime$317
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$317:
	; PostCall 136

 strftime$318:
	; Jump 343
	jmp strftime$343

 strftime$319:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$320:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$321:
	; Parameter 168 pointer ""
	mov qword [rbp + 168], @8220$string_#

 strftime$322:
	; Call 136 strcpy 0
	mov qword [rbp + 136], strftime$323
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$323:
	; PostCall 136

 strftime$324:
	; Jump 343
	jmp strftime$343

 strftime$325:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$326:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$327:
	; Parameter 168 pointer "%"
	mov qword [rbp + 168], @8223$string_25#

 strftime$328:
	; Call 136 strcpy 0
	mov qword [rbp + 136], strftime$329
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$329:
	; PostCall 136

 strftime$330:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$331:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$332:
	; Parameter 168 pointer ""
	mov qword [rbp + 168], @8224$string_#

 strftime$333:
	; Call 136 strcpy 0
	mov qword [rbp + 136], strftime$334
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$334:
	; PostCall 136

 strftime$335:
	; Jump 343
	jmp strftime$343

 strftime$336:
	; Dereference £temporary2966 -> add add 0
	mov rsi, rbp
	add rsi, 116

 strftime$337:
	; IntegralToIntegral £temporary2968 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$338:
	; BinaryAdd £temporary2970 fmt £temporary2968
	mov rdi, [rbp + 36]
	add rdi, rax

 strftime$339:
	; Dereference £temporary2967 -> £temporary2970 £temporary2970 0

 strftime$340:
	; Assign £temporary2966 -> add £temporary2967 -> £temporary2970
	mov al, [rdi]
	mov [rsi], al

 strftime$341:
	; Dereference £temporary2971 -> add add 0
	mov rsi, rbp
	add rsi, 116

 strftime$342:
	; Assign £temporary2971 -> add 0
	mov byte [rsi + 1], 0

 strftime$343:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$344:
	; Parameter 160 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 160], rax

 strftime$345:
	; Call 136 strlen 0
	mov qword [rbp + 136], strftime$346
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strlen

 strftime$346:
	; PostCall 136

 strftime$347:
	; GetReturnValue £temporary2972

 strftime$348:
	; Assign x £temporary2972
	mov [rbp + 136], ebx

 strftime$349:
	; PreCall 140 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$350:
	; Parameter 164 pointer add
	mov [rbp + 164], rbp
	add qword [rbp + 164], 116

 strftime$351:
	; Call 140 strlen 0
	mov qword [rbp + 140], strftime$352
	mov [rbp + 148], rbp
	add rbp, 140
	jmp strlen

 strftime$352:
	; PostCall 140

 strftime$353:
	; GetReturnValue £temporary2973

 strftime$354:
	; Assign y £temporary2973
	mov [rbp + 140], ebx

 strftime$355:
	; BinaryAdd £temporary2974 x y
	mov eax, [rbp + 136]
	add eax, [rbp + 140]

 strftime$356:
	; SignedGreaterThanEqual 364 £temporary2974 smax
	cmp eax, [rbp + 32]
	jge strftime$364

 strftime$357:
	; PreCall 144 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$358:
	; Parameter 168 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 168], rax

 strftime$359:
	; Parameter 176 pointer add
	mov [rbp + 176], rbp
	add qword [rbp + 176], 116

 strftime$360:
	; Call 144 strcat 0
	mov qword [rbp + 144], strftime$361
	mov [rbp + 152], rbp
	add rbp, 144
	jmp strcat

 strftime$361:
	; PostCall 144

 strftime$362:
	; BinaryAdd index index 1
	inc dword [rbp + 112]

 strftime$363:
	; Jump 84
	jmp strftime$84

 strftime$364:
	; PreCall 112 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$365:
	; Parameter 136 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 136], rax

 strftime$366:
	; Call 112 strlen 0
	mov qword [rbp + 112], strftime$367
	mov [rbp + 120], rbp
	add rbp, 112
	jmp strlen

 strftime$367:
	; PostCall 112

 strftime$368:
	; GetReturnValue £temporary2977

 strftime$369:
	; SetReturnValue

 strftime$370:
	; Return £temporary2977
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strftime$371:
	; FunctionEnd strftime
