	global clock
	global time
	global mktime
	global gmtime
	global gmtimeX
	global difftime
	global asctime
	global ctime
	global localtime
	global strftime

	extern printf
	extern sprintf
	extern localeconv
	extern strcpy
	extern strlen
	extern strcat
	extern $StackTop


section .text

 clock:
	; Return -1
	mov rbx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 clock$1:
	; FunctionEnd clock

section .data

string_timezone2025i2025i2025i2025i0A#:
	; Initializer String timezone %i %i %i %i\n
	db "timezone %i %i %i %i", 10, 0

section .text

 time:
	; AssignRegister rax 201
	mov rax, 201

 time$1:
	; Address £temporary2691 time
	mov rdi, rbp
	add rdi, 32

 time$2:
	; IntegralToIntegral £temporary2692 £temporary2691

 time$3:
	; AssignRegister rdi £temporary2692

 time$4:
	; SysCall
	syscall

 time$5:
	; AssignRegister rax 96
	mov rax, 96

 time$6:
	; Address £temporary2695 tv
	mov rdi, rbp
	add rdi, 40

 time$7:
	; AssignRegister rdi £temporary2695

 time$8:
	; Address £temporary2697 tz
	mov rsi, rbp
	add rsi, 48

 time$9:
	; AssignRegister rsi £temporary2697

 time$10:
	; SysCall
	syscall

 time$11:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 time$12:
	; Parameter pointer "timezone %i %i %i %i\n" 80
	mov qword [rbp + 80], string_timezone2025i2025i2025i2025i0A#

 time$13:
	; Parameter signedint tv.tv_sec 88
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 time$14:
	; Parameter signedint tv.tv_usec 92
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

 time$15:
	; Parameter signedint tz.tz_minuteswest 96
	mov eax, [rbp + 48]
	mov [rbp + 96], eax

 time$16:
	; Parameter signedint tz.tz_dsttime 100
	mov eax, [rbp + 52]
	mov [rbp + 100], eax

 time$17:
	; Call printf 56 16
	mov qword [rbp + 56], time$18
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp printf

 time$18:
	; PostCall 56

 time$19:
	; Equal 22 timePtr 0
	cmp qword [rbp + 24], 0
	je time$22

 time$20:
	; Dereference £temporary2704 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 time$21:
	; Assign £temporary2704 -> timePtr time
	mov rax, [rbp + 32]
	mov [rsi], rax

 time$22:
	; Return time
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 time$23:
	; FunctionEnd time

section .data

int4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

int4$365#:
	; Initializer SignedInt 365
	dd 365

section .data

int8$86400#:
	; Initializer Signed_Long_Int 86400
	dq 86400

section .data

int8$3600#:
	; Initializer Signed_Long_Int 3600
	dq 3600

section .data

int8$60#:
	; Initializer Signed_Long_Int 60
	dq 60

section .text

 mktime:
	; Equal 27 tp 0
	cmp qword [rbp + 24], 0
	je mktime$27

 mktime$1:
	; Dereference £temporary2709 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$2:
	; BinarySubtract £temporary2710 £temporary2709 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 mktime$3:
	; SignedDivide £temporary2711 £temporary2710 4
	xor edx, edx
	idiv dword [int4$4#]

 mktime$4:
	; IntegralToIntegral £temporary2712 £temporary2711
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

 mktime$5:
	; Assign leapDays £temporary2712
	mov [rbp + 32], rax

 mktime$6:
	; Dereference £temporary2713 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$7:
	; BinarySubtract £temporary2714 £temporary2713 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 mktime$8:
	; SignedMultiply £temporary2715 £temporary2714 365
	xor edx, edx
	imul dword [int4$365#]

 mktime$9:
	; IntegralToIntegral £temporary2716 £temporary2715
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

 mktime$10:
	; BinaryAdd £temporary2717 £temporary2716 leapDays
	add rax, [rbp + 32]

 mktime$11:
	; Dereference £temporary2718 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$12:
	; IntegralToIntegral £temporary2719 £temporary2718 -> tp
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

 mktime$13:
	; BinaryAdd totalDays £temporary2717 £temporary2719
	add rax, rbx
	mov [rbp + 40], rax

 mktime$14:
	; SignedMultiply £temporary2721 totalDays 86400
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [int8$86400#]
	mov rbx, rax

 mktime$15:
	; Dereference £temporary2722 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$16:
	; IntegralToIntegral £temporary2723 £temporary2722 -> tp
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

 mktime$17:
	; SignedMultiply £temporary2724 £temporary2723 3600
	xor rdx, rdx
	imul qword [int8$3600#]

 mktime$18:
	; BinaryAdd £temporary2725 £temporary2721 £temporary2724
	add rbx, rax

 mktime$19:
	; Dereference £temporary2726 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$20:
	; IntegralToIntegral £temporary2727 £temporary2726 -> tp
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

 mktime$21:
	; SignedMultiply £temporary2728 £temporary2727 60
	xor rdx, rdx
	imul qword [int8$60#]

 mktime$22:
	; BinaryAdd £temporary2729 £temporary2725 £temporary2728
	add rbx, rax

 mktime$23:
	; Dereference £temporary2730 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$24:
	; IntegralToIntegral £temporary2731 £temporary2730 -> tp
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

 mktime$25:
	; BinaryAdd £temporary2732 £temporary2729 £temporary2731
	add rbx, rax

 mktime$26:
	; Return £temporary2732
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mktime$27:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 mktime$28:
	; FunctionEnd mktime

section .data

@4752$g_timeStruct:
	; InitializerZero 36
	times 36 db 0

section .data

int4$100#:
	; Initializer SignedInt 100
	dd 100

section .data

int4$400#:
	; Initializer SignedInt 400
	dd 400

section .text

 @4754$isLeapYear:
	; SignedModulo £temporary2733 year 4
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [int4$4#]

 @4754$isLeapYear$1:
	; NotEqual 4 £temporary2733 0
	cmp edx, 0
	jne @4754$isLeapYear$4

 @4754$isLeapYear$2:
	; SignedModulo £temporary2735 year 100
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [int4$100#]

 @4754$isLeapYear$3:
	; NotEqual 6 £temporary2735 0
	cmp edx, 0
	jne @4754$isLeapYear$6

 @4754$isLeapYear$4:
	; SignedModulo £temporary2738 year 400
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [int4$400#]

 @4754$isLeapYear$5:
	; NotEqual 8 £temporary2738 0
	cmp edx, 0
	jne @4754$isLeapYear$8

 @4754$isLeapYear$6:
	; Assign £temporary2741 1
	mov ebx, 1

 @4754$isLeapYear$7:
	; Goto 9
	jmp @4754$isLeapYear$9

 @4754$isLeapYear$8:
	; Assign £temporary2741 0
	mov ebx, 0

 @4754$isLeapYear$9:
	; Return £temporary2741
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @4754$isLeapYear$10:
	; FunctionEnd isLeapYear

section .data

string_Hello10A#:
	; Initializer String Hello1\n
	db "Hello1", 10, 0

section .data

string_month2025li2025i0A#:
	; Initializer String month %li %i\n
	db "month %li %i", 10, 0

section .data

string_Hello20A#:
	; Initializer String Hello2\n
	db "Hello2", 10, 0

section .data

string_Hello30A#:
	; Initializer String Hello3\n
	db "Hello3", 10, 0

section .data

int8$7#:
	; Initializer Signed_Long_Int 7
	dq 7

section .data

int8$365#:
	; Initializer Signed_Long_Int 365
	dq 365

section .data

Array_4#:
	; Initializer Array 4
	dq 4

section .text

 gmtime:
	; Equal 108 timePtr 0
	cmp qword [rbp + 24], 0
	je gmtime$108

 gmtime$1:
	; Dereference £temporary2743 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 gmtime$2:
	; Assign time £temporary2743 -> timePtr
	mov rax, [rsi]
	mov [rbp + 32], rax

 gmtime$3:
	; SignedModulo secondsOfDay time 86400
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 40], rdx

 gmtime$4:
	; SignedModulo secondsOfHour secondsOfDay 3600
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [int8$3600#]
	mov [rbp + 48], rdx

 gmtime$5:
	; SignedDivide £temporary2747 secondsOfDay 3600
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [int8$3600#]

 gmtime$6:
	; IntegralToIntegral £temporary2748 £temporary2747
	cmp rax, 0
	jge gmtime$7
	neg rax
	neg eax

 gmtime$7:
	; Assign g_timeStruct.tm_hour £temporary2748
	mov [@4752$g_timeStruct + 8], eax

 gmtime$8:
	; SignedDivide £temporary2750 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtime$9:
	; IntegralToIntegral £temporary2751 £temporary2750
	cmp rax, 0
	jge gmtime$10
	neg rax
	neg eax

 gmtime$10:
	; Assign g_timeStruct.tm_min £temporary2751
	mov [@4752$g_timeStruct + 4], eax

 gmtime$11:
	; SignedModulo £temporary2753 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtime$12:
	; IntegralToIntegral £temporary2754 £temporary2753
	cmp rdx, 0
	jge gmtime$13
	neg rdx
	neg edx

 gmtime$13:
	; Assign g_timeStruct.tm_sec £temporary2754
	mov [@4752$g_timeStruct], edx

 gmtime$14:
	; SignedDivide totalDays time 86400
	mov rax, [rbp + 32]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 56], rax

 gmtime$15:
	; SignedGreaterThanEqual 20 totalDays 3
	cmp qword [rbp + 56], 3
	jge gmtime$20

 gmtime$16:
	; BinaryAdd £temporary2758 totalDays 4
	mov rax, [rbp + 56]
	add rax, 4

 gmtime$17:
	; IntegralToIntegral £temporary2759 £temporary2758
	cmp rax, 0
	jge gmtime$18
	neg rax
	neg eax

 gmtime$18:
	; Assign g_timeStruct.tm_wday £temporary2759
	mov [@4752$g_timeStruct + 24], eax

 gmtime$19:
	; Goto 24
	jmp gmtime$24

 gmtime$20:
	; BinarySubtract £temporary2761 totalDays 3
	mov rax, [rbp + 56]
	sub rax, 3

 gmtime$21:
	; SignedModulo £temporary2762 £temporary2761 7
	xor rdx, rdx
	idiv qword [int8$7#]

 gmtime$22:
	; IntegralToIntegral £temporary2763 £temporary2762
	cmp rdx, 0
	jge gmtime$23
	neg rdx
	neg edx

 gmtime$23:
	; Assign g_timeStruct.tm_wday £temporary2763
	mov [@4752$g_timeStruct + 24], edx

 gmtime$24:
	; SignedDivide £temporary2764 totalDays 365
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [int8$365#]

 gmtime$25:
	; BinaryAdd £temporary2765 £temporary2764 1970
	add rax, 1970

 gmtime$26:
	; IntegralToIntegral £temporary2766 £temporary2765
	cmp rax, 0
	jge gmtime$27
	neg rax
	neg eax

 gmtime$27:
	; Assign year £temporary2766
	mov [rbp + 64], eax

 gmtime$28:
	; BinarySubtract £temporary2767 year 1969
	mov eax, [rbp + 64]
	sub eax, 1969

 gmtime$29:
	; SignedDivide leapDays £temporary2767 4
	xor edx, edx
	idiv dword [int4$4#]
	mov [rbp + 68], eax

 gmtime$30:
	; SignedModulo totalDays totalDays 365
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [int8$365#]
	mov [rbp + 56], rdx

 gmtime$31:
	; IntegralToIntegral £temporary2770 leapDays
	mov eax, [rbp + 68]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$32
	neg eax
	neg rax

 gmtime$32:
	; BinarySubtract totalDays totalDays £temporary2770
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
	; Parameter signedint year 96
	mov eax, [rbp + 64]
	mov [rbp + 96], eax

 gmtime$37:
	; Call isLeapYear 72 0
	mov qword [rbp + 72], gmtime$38
	mov [rbp + 80], rbp
	add rbp, 72
	jmp @4754$isLeapYear

 gmtime$38:
	; PostCall 72

 gmtime$39:
	; GetReturnValue £temporary2774

 gmtime$40:
	; Equal 43 £temporary2774 0
	cmp ebx, 0
	je gmtime$43

 gmtime$41:
	; BinaryAdd totalDays totalDays 366
	add qword [rbp + 56], 366

 gmtime$42:
	; Goto 44
	jmp gmtime$44

 gmtime$43:
	; BinaryAdd totalDays totalDays 365
	add qword [rbp + 56], 365

 gmtime$44:
	; Assign daysOfMonths[0] 31
	mov dword [rbp + 72], 31

 gmtime$45:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gmtime$46:
	; Parameter signedint year 96
	mov eax, [rbp + 64]
	mov [rbp + 96], eax

 gmtime$47:
	; Call isLeapYear 72 0
	mov qword [rbp + 72], gmtime$48
	mov [rbp + 80], rbp
	add rbp, 72
	jmp @4754$isLeapYear

 gmtime$48:
	; PostCall 72

 gmtime$49:
	; GetReturnValue £temporary2778

 gmtime$50:
	; Equal 53 £temporary2778 0
	cmp ebx, 0
	je gmtime$53

 gmtime$51:
	; Assign £temporary2780 29
	mov eax, 29

 gmtime$52:
	; Goto 54
	jmp gmtime$54

 gmtime$53:
	; Assign £temporary2780 28
	mov eax, 28

 gmtime$54:
	; Assign daysOfMonths[1] £temporary2780
	mov [rbp + 76], eax

 gmtime$55:
	; Assign daysOfMonths[2] 31
	mov dword [rbp + 80], 31

 gmtime$56:
	; Assign daysOfMonths[3] 30
	mov dword [rbp + 84], 30

 gmtime$57:
	; Assign daysOfMonths[4] 31
	mov dword [rbp + 88], 31

 gmtime$58:
	; Assign daysOfMonths[5] 30
	mov dword [rbp + 92], 30

 gmtime$59:
	; Assign daysOfMonths[6] 31
	mov dword [rbp + 96], 31

 gmtime$60:
	; Assign daysOfMonths[7] 31
	mov dword [rbp + 100], 31

 gmtime$61:
	; Assign daysOfMonths[8] 30
	mov dword [rbp + 104], 30

 gmtime$62:
	; Assign daysOfMonths[9] 31
	mov dword [rbp + 108], 31

 gmtime$63:
	; Assign daysOfMonths[10] 30
	mov dword [rbp + 112], 30

 gmtime$64:
	; Assign daysOfMonths[11] 31
	mov dword [rbp + 116], 31

 gmtime$65:
	; Assign month 0
	mov dword [rbp + 120], 0

 gmtime$66:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gmtime$67:
	; Parameter pointer "Hello1\n" 148
	mov qword [rbp + 148], string_Hello10A#

 gmtime$68:
	; Call printf 124 0
	mov qword [rbp + 124], gmtime$69
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	jmp printf

 gmtime$69:
	; PostCall 124

 gmtime$70:
	; IntegralToIntegral £temporary2795 month
	mov eax, [rbp + 120]
	mov rbx, 4294967295
	and rax, rbx

 gmtime$71:
	; UnsignedMultiply £temporary2796 £temporary2795 4
	xor rdx, rdx
	mul qword [Array_4#]

 gmtime$72:
	; BinaryAdd £temporary2797 daysOfMonths £temporary2796
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$73:
	; Dereference £temporary2794 -> £temporary2797 £temporary2797 0

 gmtime$74:
	; IntegralToIntegral £temporary2798 £temporary2794 -> £temporary2797
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$75
	neg eax
	neg rax

 gmtime$75:
	; SignedLessThan 91 totalDays £temporary2798
	cmp [rbp + 56], rax
	jl gmtime$91

 gmtime$76:
	; Assign £temporary2800 month
	mov eax, [rbp + 120]

 gmtime$77:
	; BinaryAdd month month 1
	inc dword [rbp + 120]

 gmtime$78:
	; IntegralToIntegral £temporary2802 £temporary2800
	mov rbx, 4294967295
	and rax, rbx

 gmtime$79:
	; UnsignedMultiply £temporary2803 £temporary2802 4
	xor rdx, rdx
	mul qword [Array_4#]

 gmtime$80:
	; BinaryAdd £temporary2804 daysOfMonths £temporary2803
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$81:
	; Dereference £temporary2801 -> £temporary2804 £temporary2804 0

 gmtime$82:
	; IntegralToIntegral £temporary2805 £temporary2801 -> £temporary2804
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$83
	neg eax
	neg rax

 gmtime$83:
	; BinarySubtract totalDays totalDays £temporary2805
	sub [rbp + 56], rax

 gmtime$84:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gmtime$85:
	; Parameter pointer "month %li %i\n" 148
	mov qword [rbp + 148], string_month2025li2025i0A#

 gmtime$86:
	; Parameter signed long int totalDays 156
	mov rax, [rbp + 56]
	mov [rbp + 156], rax

 gmtime$87:
	; Parameter signedint month 164
	mov eax, [rbp + 120]
	mov [rbp + 164], eax

 gmtime$88:
	; Call printf 124 12
	mov qword [rbp + 124], gmtime$89
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 12
	jmp printf

 gmtime$89:
	; PostCall 124

 gmtime$90:
	; Goto 70
	jmp gmtime$70

 gmtime$91:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gmtime$92:
	; Parameter pointer "Hello2\n" 148
	mov qword [rbp + 148], string_Hello20A#

 gmtime$93:
	; Call printf 124 0
	mov qword [rbp + 124], gmtime$94
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	jmp printf

 gmtime$94:
	; PostCall 124

 gmtime$95:
	; BinarySubtract g_timeStruct.tm_year year 1900
	mov eax, [rbp + 64]
	sub eax, 1900
	mov [@4752$g_timeStruct + 20], eax

 gmtime$96:
	; IntegralToIntegral £temporary2812 totalDays
	mov rax, [rbp + 56]
	cmp rax, 0
	jge gmtime$97
	neg rax
	neg eax

 gmtime$97:
	; Assign g_timeStruct.tm_yday £temporary2812
	mov [@4752$g_timeStruct + 28], eax

 gmtime$98:
	; Assign g_timeStruct.tm_mon month
	mov eax, [rbp + 120]
	mov [@4752$g_timeStruct + 16], eax

 gmtime$99:
	; BinaryAdd £temporary2815 totalDays 1
	mov rax, [rbp + 56]
	inc rax

 gmtime$100:
	; IntegralToIntegral £temporary2816 £temporary2815
	cmp rax, 0
	jge gmtime$101
	neg rax
	neg eax

 gmtime$101:
	; Assign g_timeStruct.tm_mday £temporary2816
	mov [@4752$g_timeStruct + 12], eax

 gmtime$102:
	; Assign g_timeStruct.tm_isdst -1
	mov dword [@4752$g_timeStruct + 32], -1

 gmtime$103:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gmtime$104:
	; Parameter pointer "Hello3\n" 148
	mov qword [rbp + 148], string_Hello30A#

 gmtime$105:
	; Call printf 124 0
	mov qword [rbp + 124], gmtime$106
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	jmp printf

 gmtime$106:
	; PostCall 124

 gmtime$107:
	; Return @4752$g_timeStruct
	mov rbx, @4752$g_timeStruct
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$108:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$109:
	; FunctionEnd gmtime

section .text

 gmtimeX:
	; Assign year 1970
	mov dword [rbp + 32], 1970

 gmtimeX$1:
	; Equal 87 timePtr 0
	cmp qword [rbp + 24], 0
	je gmtimeX$87

 gmtimeX$2:
	; Dereference £temporary2820 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 gmtimeX$3:
	; Assign time £temporary2820 -> timePtr
	mov rax, [rsi]
	mov [rbp + 36], rax

 gmtimeX$4:
	; SignedDivide totalDays time 86400
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 44], rax

 gmtimeX$5:
	; SignedModulo secondsOfDay time 86400
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 52], rdx

 gmtimeX$6:
	; SignedModulo secondsOfHour secondsOfDay 3600
	mov rax, [rbp + 52]
	xor rdx, rdx
	idiv qword [int8$3600#]
	mov [rbp + 60], rdx

 gmtimeX$7:
	; SignedDivide £temporary2825 secondsOfDay 3600
	mov rax, [rbp + 52]
	xor rdx, rdx
	idiv qword [int8$3600#]

 gmtimeX$8:
	; IntegralToIntegral £temporary2826 £temporary2825
	cmp rax, 0
	jge gmtimeX$9
	neg rax
	neg eax

 gmtimeX$9:
	; Assign g_timeStruct.tm_hour £temporary2826
	mov [@4752$g_timeStruct + 8], eax

 gmtimeX$10:
	; SignedDivide £temporary2828 secondsOfHour 60
	mov rax, [rbp + 60]
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtimeX$11:
	; IntegralToIntegral £temporary2829 £temporary2828
	cmp rax, 0
	jge gmtimeX$12
	neg rax
	neg eax

 gmtimeX$12:
	; Assign g_timeStruct.tm_min £temporary2829
	mov [@4752$g_timeStruct + 4], eax

 gmtimeX$13:
	; SignedModulo £temporary2831 secondsOfHour 60
	mov rax, [rbp + 60]
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtimeX$14:
	; IntegralToIntegral £temporary2832 £temporary2831
	cmp rdx, 0
	jge gmtimeX$15
	neg rdx
	neg edx

 gmtimeX$15:
	; Assign g_timeStruct.tm_sec £temporary2832
	mov [@4752$g_timeStruct], edx

 gmtimeX$16:
	; SignedGreaterThanEqual 21 totalDays 3
	cmp qword [rbp + 44], 3
	jge gmtimeX$21

 gmtimeX$17:
	; BinaryAdd £temporary2835 totalDays 4
	mov rax, [rbp + 44]
	add rax, 4

 gmtimeX$18:
	; IntegralToIntegral £temporary2836 £temporary2835
	cmp rax, 0
	jge gmtimeX$19
	neg rax
	neg eax

 gmtimeX$19:
	; Assign g_timeStruct.tm_wday £temporary2836
	mov [@4752$g_timeStruct + 24], eax

 gmtimeX$20:
	; Goto 25
	jmp gmtimeX$25

 gmtimeX$21:
	; BinarySubtract £temporary2838 totalDays 3
	mov rax, [rbp + 44]
	sub rax, 3

 gmtimeX$22:
	; SignedModulo £temporary2839 £temporary2838 7
	xor rdx, rdx
	idiv qword [int8$7#]

 gmtimeX$23:
	; IntegralToIntegral £temporary2840 £temporary2839
	cmp rdx, 0
	jge gmtimeX$24
	neg rdx
	neg edx

 gmtimeX$24:
	; Assign g_timeStruct.tm_wday £temporary2840
	mov [@4752$g_timeStruct + 24], edx

 gmtimeX$25:
	; SignedModulo £temporary2841 year 4
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$4#]

 gmtimeX$26:
	; NotEqual 29 £temporary2841 0
	cmp edx, 0
	jne gmtimeX$29

 gmtimeX$27:
	; SignedModulo £temporary2843 year 100
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$100#]

 gmtimeX$28:
	; NotEqual 31 £temporary2843 0
	cmp edx, 0
	jne gmtimeX$31

 gmtimeX$29:
	; SignedModulo £temporary2846 year 400
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$400#]

 gmtimeX$30:
	; NotEqual 33 £temporary2846 0
	cmp edx, 0
	jne gmtimeX$33

 gmtimeX$31:
	; Assign £temporary2849 1
	mov eax, 1

 gmtimeX$32:
	; Goto 34
	jmp gmtimeX$34

 gmtimeX$33:
	; Assign £temporary2849 0
	mov eax, 0

 gmtimeX$34:
	; Assign leapYear £temporary2849
	mov [rbp + 68], eax

 gmtimeX$35:
	; Equal 38 leapYear 0
	cmp dword [rbp + 68], 0
	je gmtimeX$38

 gmtimeX$36:
	; Assign £temporary2851 366
	mov eax, 366

 gmtimeX$37:
	; Goto 39
	jmp gmtimeX$39

 gmtimeX$38:
	; Assign £temporary2851 365
	mov eax, 365

 gmtimeX$39:
	; Assign daysOfYear £temporary2851
	mov [rbp + 72], eax

 gmtimeX$40:
	; IntegralToIntegral £temporary2852 daysOfYear
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtimeX$41
	neg eax
	neg rax

 gmtimeX$41:
	; SignedGreaterThanEqual 83 totalDays £temporary2852
	cmp [rbp + 44], rax
	jge gmtimeX$83

 gmtimeX$42:
	; Assign daysOfMonths[0] 31
	mov dword [rbp + 76], 31

 gmtimeX$43:
	; Equal 46 leapYear 0
	cmp dword [rbp + 68], 0
	je gmtimeX$46

 gmtimeX$44:
	; Assign £temporary2855 29
	mov eax, 29

 gmtimeX$45:
	; Goto 47
	jmp gmtimeX$47

 gmtimeX$46:
	; Assign £temporary2855 28
	mov eax, 28

 gmtimeX$47:
	; Assign daysOfMonths[1] £temporary2855
	mov [rbp + 80], eax

 gmtimeX$48:
	; Assign daysOfMonths[2] 31
	mov dword [rbp + 84], 31

 gmtimeX$49:
	; Assign daysOfMonths[3] 30
	mov dword [rbp + 88], 30

 gmtimeX$50:
	; Assign daysOfMonths[4] 31
	mov dword [rbp + 92], 31

 gmtimeX$51:
	; Assign daysOfMonths[5] 30
	mov dword [rbp + 96], 30

 gmtimeX$52:
	; Assign daysOfMonths[6] 31
	mov dword [rbp + 100], 31

 gmtimeX$53:
	; Assign daysOfMonths[7] 31
	mov dword [rbp + 104], 31

 gmtimeX$54:
	; Assign daysOfMonths[8] 30
	mov dword [rbp + 108], 30

 gmtimeX$55:
	; Assign daysOfMonths[9] 31
	mov dword [rbp + 112], 31

 gmtimeX$56:
	; Assign daysOfMonths[10] 30
	mov dword [rbp + 116], 30

 gmtimeX$57:
	; Assign daysOfMonths[11] 31
	mov dword [rbp + 120], 31

 gmtimeX$58:
	; Assign month 0
	mov dword [rbp + 124], 0

 gmtimeX$59:
	; BinarySubtract g_timeStruct.tm_year year 1900
	mov eax, [rbp + 32]
	sub eax, 1900
	mov [@4752$g_timeStruct + 20], eax

 gmtimeX$60:
	; IntegralToIntegral £temporary2871 totalDays
	mov rax, [rbp + 44]
	cmp rax, 0
	jge gmtimeX$61
	neg rax
	neg eax

 gmtimeX$61:
	; Assign g_timeStruct.tm_yday £temporary2871
	mov [@4752$g_timeStruct + 28], eax

 gmtimeX$62:
	; IntegralToIntegral £temporary2873 month
	mov eax, [rbp + 124]
	mov rbx, 4294967295
	and rax, rbx

 gmtimeX$63:
	; UnsignedMultiply £temporary2874 £temporary2873 4
	xor rdx, rdx
	mul qword [Array_4#]

 gmtimeX$64:
	; BinaryAdd £temporary2875 daysOfMonths £temporary2874
	mov rsi, rbp
	add rsi, 76
	add rsi, rax

 gmtimeX$65:
	; Dereference £temporary2872 -> £temporary2875 £temporary2875 0

 gmtimeX$66:
	; IntegralToIntegral £temporary2876 £temporary2872 -> £temporary2875
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtimeX$67
	neg eax
	neg rax

 gmtimeX$67:
	; SignedLessThan 77 totalDays £temporary2876
	cmp [rbp + 44], rax
	jl gmtimeX$77

 gmtimeX$68:
	; Assign £temporary2878 month
	mov eax, [rbp + 124]

 gmtimeX$69:
	; BinaryAdd month month 1
	inc dword [rbp + 124]

 gmtimeX$70:
	; IntegralToIntegral £temporary2880 £temporary2878
	mov rbx, 4294967295
	and rax, rbx

 gmtimeX$71:
	; UnsignedMultiply £temporary2881 £temporary2880 4
	xor rdx, rdx
	mul qword [Array_4#]

 gmtimeX$72:
	; BinaryAdd £temporary2882 daysOfMonths £temporary2881
	mov rsi, rbp
	add rsi, 76
	add rsi, rax

 gmtimeX$73:
	; Dereference £temporary2879 -> £temporary2882 £temporary2882 0

 gmtimeX$74:
	; IntegralToIntegral £temporary2883 £temporary2879 -> £temporary2882
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtimeX$75
	neg eax
	neg rax

 gmtimeX$75:
	; BinarySubtract totalDays totalDays £temporary2883
	sub [rbp + 44], rax

 gmtimeX$76:
	; Goto 62
	jmp gmtimeX$62

 gmtimeX$77:
	; Assign g_timeStruct.tm_mon month
	mov eax, [rbp + 124]
	mov [@4752$g_timeStruct + 16], eax

 gmtimeX$78:
	; BinaryAdd £temporary2887 totalDays 1
	mov rax, [rbp + 44]
	inc rax

 gmtimeX$79:
	; IntegralToIntegral £temporary2888 £temporary2887
	cmp rax, 0
	jge gmtimeX$80
	neg rax
	neg eax

 gmtimeX$80:
	; Assign g_timeStruct.tm_mday £temporary2888
	mov [@4752$g_timeStruct + 12], eax

 gmtimeX$81:
	; Assign g_timeStruct.tm_isdst -1
	mov dword [@4752$g_timeStruct + 32], -1

 gmtimeX$82:
	; Return @4752$g_timeStruct
	mov rbx, @4752$g_timeStruct
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtimeX$83:
	; BinaryAdd year year 1
	inc dword [rbp + 32]

 gmtimeX$84:
	; IntegralToIntegral £temporary2891 daysOfYear
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtimeX$85
	neg eax
	neg rax

 gmtimeX$85:
	; BinarySubtract totalDays totalDays £temporary2891
	sub [rbp + 44], rax

 gmtimeX$86:
	; Goto 25
	jmp gmtimeX$25

 gmtimeX$87:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtimeX$88:
	; FunctionEnd gmtimeX

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .text

 difftime:
	; BinarySubtract £temporary2894 time2 time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

 difftime$1:
	; IntegralToFloating £temporary2895 £temporary2894
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 difftime$2:
	; Return £temporary2895
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 difftime$3:
	; FunctionEnd difftime

section .data

@4784$g_timeString:
	; InitializerZero 256
	times 256 db 0

section .data

string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@4785$g_defaultShortDayList:
	; Initializer Pointer string_Sun#
	dq string_Sun#
	; Initializer Pointer string_Mon#
	dq string_Mon#
	; Initializer Pointer string_Tue#
	dq string_Tue#
	; Initializer Pointer string_Wed#
	dq string_Wed#
	; Initializer Pointer string_Thu#
	dq string_Thu#
	; Initializer Pointer string_Fri#
	dq string_Fri#
	; Initializer Pointer string_Sat#
	dq string_Sat#

section .data

string_Sunday#:
	; Initializer String Sunday
	db "Sunday", 0

section .data

string_Monday#:
	; Initializer String Monday
	db "Monday", 0

section .data

string_Tuesday#:
	; Initializer String Tuesday
	db "Tuesday", 0

section .data

string_Wednesday#:
	; Initializer String Wednesday
	db "Wednesday", 0

section .data

string_Thursday#:
	; Initializer String Thursday
	db "Thursday", 0

section .data

string_Friday#:
	; Initializer String Friday
	db "Friday", 0

section .data

string_Saturday#:
	; Initializer String Saturday
	db "Saturday", 0

section .data

@4786$g_defaultLongDayList:
	; Initializer Pointer string_Sunday#
	dq string_Sunday#
	; Initializer Pointer string_Monday#
	dq string_Monday#
	; Initializer Pointer string_Tuesday#
	dq string_Tuesday#
	; Initializer Pointer string_Wednesday#
	dq string_Wednesday#
	; Initializer Pointer string_Thursday#
	dq string_Thursday#
	; Initializer Pointer string_Friday#
	dq string_Friday#
	; Initializer Pointer string_Saturday#
	dq string_Saturday#

section .data

string_Jan#:
	; Initializer String Jan
	db "Jan", 0

section .data

string_Feb#:
	; Initializer String Feb
	db "Feb", 0

section .data

string_Mar#:
	; Initializer String Mar
	db "Mar", 0

section .data

string_Apr#:
	; Initializer String Apr
	db "Apr", 0

section .data

string_May#:
	; Initializer String May
	db "May", 0

section .data

string_Jun#:
	; Initializer String Jun
	db "Jun", 0

section .data

string_Jul#:
	; Initializer String Jul
	db "Jul", 0

section .data

string_Aug#:
	; Initializer String Aug
	db "Aug", 0

section .data

string_Sep#:
	; Initializer String Sep
	db "Sep", 0

section .data

string_Oct#:
	; Initializer String Oct
	db "Oct", 0

section .data

string_Nov#:
	; Initializer String Nov
	db "Nov", 0

section .data

string_Dec#:
	; Initializer String Dec
	db "Dec", 0

section .data

@4787$g_defaultShortMonthList:
	; Initializer Pointer string_Jan#
	dq string_Jan#
	; Initializer Pointer string_Feb#
	dq string_Feb#
	; Initializer Pointer string_Mar#
	dq string_Mar#
	; Initializer Pointer string_Apr#
	dq string_Apr#
	; Initializer Pointer string_May#
	dq string_May#
	; Initializer Pointer string_Jun#
	dq string_Jun#
	; Initializer Pointer string_Jul#
	dq string_Jul#
	; Initializer Pointer string_Aug#
	dq string_Aug#
	; Initializer Pointer string_Sep#
	dq string_Sep#
	; Initializer Pointer string_Oct#
	dq string_Oct#
	; Initializer Pointer string_Nov#
	dq string_Nov#
	; Initializer Pointer string_Dec#
	dq string_Dec#

section .data

string_January#:
	; Initializer String January
	db "January", 0

section .data

string_February#:
	; Initializer String February
	db "February", 0

section .data

string_March#:
	; Initializer String March
	db "March", 0

section .data

string_April#:
	; Initializer String April
	db "April", 0

section .data

string_June#:
	; Initializer String June
	db "June", 0

section .data

string_July#:
	; Initializer String July
	db "July", 0

section .data

string_August#:
	; Initializer String August
	db "August", 0

section .data

string_September#:
	; Initializer String September
	db "September", 0

section .data

string_October#:
	; Initializer String October
	db "October", 0

section .data

string_November#:
	; Initializer String November
	db "November", 0

section .data

string_December#:
	; Initializer String December
	db "December", 0

section .data

@4788$g_defaultLongMonthList:
	; Initializer Pointer string_January#
	dq string_January#
	; Initializer Pointer string_February#
	dq string_February#
	; Initializer Pointer string_March#
	dq string_March#
	; Initializer Pointer string_April#
	dq string_April#
	; Initializer Pointer string_May#
	dq string_May#
	; Initializer Pointer string_June#
	dq string_June#
	; Initializer Pointer string_July#
	dq string_July#
	; Initializer Pointer string_August#
	dq string_August#
	; Initializer Pointer string_September#
	dq string_September#
	; Initializer Pointer string_October#
	dq string_October#
	; Initializer Pointer string_November#
	dq string_November#
	; Initializer Pointer string_December#
	dq string_December#

section .data

string_25s2025s2025i202502i3A2502i3A2502i2025i#:
	; Initializer String %s %s %i %02i:%02i:%02i %i
	db "%s %s %i %02i:%02i:%02i %i", 0

section .data

int8$8#:
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
	; Dereference £temporary2897 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$3:
	; Assign £temporary2898 £temporary2897 -> localeConvPtr
	mov rax, [rsi + 8]

 asctime$4:
	; Goto 6
	jmp asctime$6

 asctime$5:
	; Assign £temporary2898 0
	mov rax, 0

 asctime$6:
	; Assign shortDayList £temporary2898
	mov [rbp + 40], rax

 asctime$7:
	; Equal 11 localeConvPtr 0
	cmp qword [rbp + 32], 0
	je asctime$11

 asctime$8:
	; Dereference £temporary2900 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$9:
	; Assign £temporary2901 £temporary2900 -> localeConvPtr
	mov rax, [rsi + 24]

 asctime$10:
	; Goto 12
	jmp asctime$12

 asctime$11:
	; Assign £temporary2901 0
	mov rax, 0

 asctime$12:
	; Assign shortMonthList £temporary2901
	mov [rbp + 48], rax

 asctime$13:
	; Equal 16 shortDayList 0
	cmp qword [rbp + 40], 0
	je asctime$16

 asctime$14:
	; Assign £temporary2903 shortDayList
	mov rax, [rbp + 40]

 asctime$15:
	; Goto 17
	jmp asctime$17

 asctime$16:
	; Assign £temporary2903 g_defaultShortDayList
	mov rax, @4785$g_defaultShortDayList

 asctime$17:
	; Assign shortDayList £temporary2903
	mov [rbp + 40], rax

 asctime$18:
	; Equal 21 shortMonthList 0
	cmp qword [rbp + 48], 0
	je asctime$21

 asctime$19:
	; Assign £temporary2905 shortMonthList
	mov rax, [rbp + 48]

 asctime$20:
	; Goto 22
	jmp asctime$22

 asctime$21:
	; Assign £temporary2905 g_defaultShortMonthList
	mov rax, @4787$g_defaultShortMonthList

 asctime$22:
	; Assign shortMonthList £temporary2905
	mov [rbp + 48], rax

 asctime$23:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asctime$24:
	; Parameter pointer g_timeString 80
	mov qword [rbp + 80], @4784$g_timeString

 asctime$25:
	; Parameter pointer "%s %s %i %02i:%02i:%02i %i" 88
	mov qword [rbp + 88], string_25s2025s2025i202502i3A2502i3A2502i2025i#

 asctime$26:
	; Dereference £temporary2906 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$27:
	; IntegralToIntegral £temporary2908 £temporary2906 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 asctime$28:
	; UnsignedMultiply £temporary2909 £temporary2908 8
	xor rdx, rdx
	mul qword [int8$8#]

 asctime$29:
	; BinaryAdd £temporary2910 shortDayList £temporary2909
	mov rsi, [rbp + 40]
	add rsi, rax

 asctime$30:
	; Dereference £temporary2907 -> £temporary2910 £temporary2910 0

 asctime$31:
	; Parameter pointer £temporary2907 -> £temporary2910 96
	mov rax, [rsi]
	mov [rbp + 96], rax

 asctime$32:
	; Dereference £temporary2911 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$33:
	; IntegralToIntegral £temporary2913 £temporary2911 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 asctime$34:
	; UnsignedMultiply £temporary2914 £temporary2913 8
	xor rdx, rdx
	mul qword [int8$8#]

 asctime$35:
	; BinaryAdd £temporary2915 shortMonthList £temporary2914
	mov rsi, [rbp + 48]
	add rsi, rax

 asctime$36:
	; Dereference £temporary2912 -> £temporary2915 £temporary2915 0

 asctime$37:
	; Parameter pointer £temporary2912 -> £temporary2915 104
	mov rax, [rsi]
	mov [rbp + 104], rax

 asctime$38:
	; Dereference £temporary2916 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$39:
	; Parameter signedint £temporary2916 -> tp 112
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

 asctime$40:
	; Dereference £temporary2917 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$41:
	; Parameter signedint £temporary2917 -> tp 116
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

 asctime$42:
	; Dereference £temporary2918 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$43:
	; Parameter signedint £temporary2918 -> tp 120
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

 asctime$44:
	; Dereference £temporary2919 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$45:
	; Parameter signedint £temporary2919 -> tp 124
	mov eax, [rsi]
	mov [rbp + 124], eax

 asctime$46:
	; Dereference £temporary2920 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$47:
	; BinaryAdd £temporary2921 £temporary2920 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 asctime$48:
	; Parameter signedint £temporary2921 128
	mov [rbp + 128], eax

 asctime$49:
	; Call sprintf 56 36
	mov qword [rbp + 56], asctime$50
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 36
	jmp sprintf

 asctime$50:
	; PostCall 56

 asctime$51:
	; Return g_timeString
	mov rbx, @4784$g_timeString
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asctime$52:
	; FunctionEnd asctime

section .text

 ctime:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ctime$1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ctime$2:
	; Parameter pointer time 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 ctime$3:
	; Call localtime 32 0
	mov qword [rbp + 32], ctime$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp localtime

 ctime$4:
	; PostCall 32

 ctime$5:
	; GetReturnValue £temporary2923

 ctime$6:
	; Parameter pointer £temporary2923 56
	mov [rbp + 56], rbx

 ctime$7:
	; Call asctime 32 0
	mov qword [rbp + 32], ctime$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp asctime

 ctime$8:
	; PostCall 32

 ctime$9:
	; GetReturnValue £temporary2924

 ctime$10:
	; Return £temporary2924
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ctime$11:
	; FunctionEnd ctime

section .text

 localtime:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$1:
	; Parameter pointer timePtr 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 localtime$2:
	; Call gmtime 32 0
	mov qword [rbp + 32], localtime$3
	mov [rbp + 40], rbp
	add rbp, 32
	jmp gmtime

 localtime$3:
	; PostCall 32

 localtime$4:
	; GetReturnValue £temporary2925

 localtime$5:
	; Assign tmPtr £temporary2925
	mov [rbp + 32], rbx

 localtime$6:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$7:
	; Call localeconv 40 0
	mov qword [rbp + 40], localtime$8
	mov [rbp + 48], rbp
	add rbp, 40
	jmp localeconv

 localtime$8:
	; PostCall 40

 localtime$9:
	; GetReturnValue £temporary2926

 localtime$10:
	; Assign localeConvPtr £temporary2926
	mov [rbp + 40], rbx

 localtime$11:
	; Assign timeZone 0
	mov dword [rbp + 48], 0

 localtime$12:
	; Equal 21 localeConvPtr 0
	cmp qword [rbp + 40], 0
	je localtime$21

 localtime$13:
	; Dereference £temporary2928 -> tmPtr tmPtr 0
	mov rsi, [rbp + 32]

 localtime$14:
	; NotEqual 18 £temporary2928 -> tmPtr 1
	cmp dword [rsi + 32], 1
	jne localtime$18

 localtime$15:
	; Dereference £temporary2930 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 40]

 localtime$16:
	; Assign £temporary2932 £temporary2930 -> localeConvPtr
	mov eax, [rsi]

 localtime$17:
	; Goto 20
	jmp localtime$20

 localtime$18:
	; Dereference £temporary2931 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 40]

 localtime$19:
	; Assign £temporary2932 £temporary2931 -> localeConvPtr
	mov eax, [rsi + 4]

 localtime$20:
	; Assign timeZone £temporary2932
	mov [rbp + 48], eax

 localtime$21:
	; Dereference £temporary2933 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 localtime$22:
	; IntegralToIntegral £temporary2934 timeZone
	mov eax, [rbp + 48]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge localtime$23
	neg eax
	neg rax

 localtime$23:
	; SignedMultiply £temporary2935 £temporary2934 3600
	xor rdx, rdx
	imul qword [int8$3600#]

 localtime$24:
	; BinaryAdd t £temporary2933 -> timePtr £temporary2935
	mov rbx, [rsi]
	add rbx, rax
	mov [rbp + 52], rbx

 localtime$25:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$26:
	; Address £temporary2937 t
	mov rsi, rbp
	add rsi, 52

 localtime$27:
	; Parameter pointer £temporary2937 84
	mov [rbp + 84], rsi

 localtime$28:
	; Call gmtime 60 0
	mov qword [rbp + 60], localtime$29
	mov [rbp + 68], rbp
	add rbp, 60
	jmp gmtime

 localtime$29:
	; PostCall 60

 localtime$30:
	; GetReturnValue £temporary2938

 localtime$31:
	; Return £temporary2938
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 localtime$32:
	; FunctionEnd localtime

section .data

string_#:
	; Initializer String 
	db 0

section .data

string_2502i2D2502i2D2502i202502i3A2502i3A2502i#:
	; Initializer String %02i-%02i-%02i %02i:%02i:%02i
	db "%02i-%02i-%02i %02i:%02i:%02i", 0

section .data

string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

string_25s#:
	; Initializer String %s
	db "%s", 0

section .data

string_AM#:
	; Initializer String AM
	db "AM", 0

section .data

string_PM#:
	; Initializer String PM
	db "PM", 0

section .data

string_2502i3A2502i3A2502i#:
	; Initializer String %02i:%02i:%02i
	db "%02i:%02i:%02i", 0

section .data

string_25#:
	; Initializer String %
	db "%", 0

section .data

int4$12#:
	; Initializer SignedInt 12
	dd 12

section .text

 strftime:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$1:
	; Call localeconv 52 0
	mov qword [rbp + 52], strftime$2
	mov [rbp + 60], rbp
	add rbp, 52
	jmp localeconv

 strftime$2:
	; PostCall 52

 strftime$3:
	; GetReturnValue £temporary2940

 strftime$4:
	; Assign localeConvPtr £temporary2940
	mov [rbp + 52], rbx

 strftime$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$9

 strftime$6:
	; Dereference £temporary2942 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$7:
	; Assign £temporary2943 £temporary2942 -> localeConvPtr
	mov rax, [rsi + 8]

 strftime$8:
	; Goto 10
	jmp strftime$10

 strftime$9:
	; Assign £temporary2943 0
	mov rax, 0

 strftime$10:
	; Assign shortDayList £temporary2943
	mov [rbp + 60], rax

 strftime$11:
	; Equal 15 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$15

 strftime$12:
	; Dereference £temporary2945 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$13:
	; Assign £temporary2946 £temporary2945 -> localeConvPtr
	mov rax, [rsi + 24]

 strftime$14:
	; Goto 16
	jmp strftime$16

 strftime$15:
	; Assign £temporary2946 0
	mov rax, 0

 strftime$16:
	; Assign shortMonthList £temporary2946
	mov [rbp + 68], rax

 strftime$17:
	; Equal 21 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$21

 strftime$18:
	; Dereference £temporary2948 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$19:
	; Assign £temporary2949 £temporary2948 -> localeConvPtr
	mov rax, [rsi + 16]

 strftime$20:
	; Goto 22
	jmp strftime$22

 strftime$21:
	; Assign £temporary2949 0
	mov rax, 0

 strftime$22:
	; Assign longDayList £temporary2949
	mov [rbp + 76], rax

 strftime$23:
	; Equal 27 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$27

 strftime$24:
	; Dereference £temporary2951 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$25:
	; Assign £temporary2952 £temporary2951 -> localeConvPtr
	mov rax, [rsi + 32]

 strftime$26:
	; Goto 28
	jmp strftime$28

 strftime$27:
	; Assign £temporary2952 0
	mov rax, 0

 strftime$28:
	; Assign longMonthList £temporary2952
	mov [rbp + 84], rax

 strftime$29:
	; Dereference £temporary2953 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$30:
	; BinarySubtract £temporary2954 £temporary2953 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 strftime$31:
	; SignedDivide leapDays £temporary2954 4
	xor edx, edx
	idiv dword [int4$4#]
	mov [rbp + 92], eax

 strftime$32:
	; Dereference £temporary2956 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$33:
	; BinarySubtract £temporary2957 £temporary2956 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 strftime$34:
	; SignedMultiply £temporary2958 £temporary2957 365
	xor edx, edx
	imul dword [int4$365#]

 strftime$35:
	; BinaryAdd £temporary2959 £temporary2958 leapDays
	add eax, [rbp + 92]

 strftime$36:
	; Dereference £temporary2960 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$37:
	; BinaryAdd £temporary2961 £temporary2959 £temporary2960 -> tp
	add eax, [rsi + 28]

 strftime$38:
	; IntegralToIntegral £temporary2962 £temporary2961
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge strftime$39
	neg eax
	neg rax

 strftime$39:
	; Assign totalDays £temporary2962
	mov [rbp + 96], rax

 strftime$40:
	; PreCall 112 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$41:
	; Parameter pointer s 136
	mov rax, [rbp + 24]
	mov [rbp + 136], rax

 strftime$42:
	; Parameter pointer "" 144
	mov qword [rbp + 144], string_#

 strftime$43:
	; Call strcpy 112 0
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
	; Assign £temporary2965 shortDayList
	mov rax, [rbp + 60]

 strftime$47:
	; Goto 49
	jmp strftime$49

 strftime$48:
	; Assign £temporary2965 g_defaultShortDayList
	mov rax, @4785$g_defaultShortDayList

 strftime$49:
	; Assign shortDayList £temporary2965
	mov [rbp + 60], rax

 strftime$50:
	; Equal 53 longDayList 0
	cmp qword [rbp + 76], 0
	je strftime$53

 strftime$51:
	; Assign £temporary2967 longDayList
	mov rax, [rbp + 76]

 strftime$52:
	; Goto 54
	jmp strftime$54

 strftime$53:
	; Assign £temporary2967 g_defaultLongDayList
	mov rax, @4786$g_defaultLongDayList

 strftime$54:
	; Assign longDayList £temporary2967
	mov [rbp + 76], rax

 strftime$55:
	; Equal 58 shortMonthList 0
	cmp qword [rbp + 68], 0
	je strftime$58

 strftime$56:
	; Assign £temporary2969 shortMonthList
	mov rax, [rbp + 68]

 strftime$57:
	; Goto 59
	jmp strftime$59

 strftime$58:
	; Assign £temporary2969 g_defaultShortMonthList
	mov rax, @4787$g_defaultShortMonthList

 strftime$59:
	; Assign shortMonthList £temporary2969
	mov [rbp + 68], rax

 strftime$60:
	; Equal 63 longMonthList 0
	cmp qword [rbp + 84], 0
	je strftime$63

 strftime$61:
	; Assign £temporary2971 longMonthList
	mov rax, [rbp + 84]

 strftime$62:
	; Goto 64
	jmp strftime$64

 strftime$63:
	; Assign £temporary2971 g_defaultLongMonthList
	mov rax, @4788$g_defaultLongMonthList

 strftime$64:
	; Assign longMonthList £temporary2971
	mov [rbp + 84], rax

 strftime$65:
	; SignedGreaterThanEqual 70 totalDays 3
	cmp qword [rbp + 96], 3
	jge strftime$70

 strftime$66:
	; BinaryAdd £temporary2973 totalDays 4
	mov rax, [rbp + 96]
	add rax, 4

 strftime$67:
	; IntegralToIntegral £temporary2974 £temporary2973
	cmp rax, 0
	jge strftime$68
	neg rax
	neg eax

 strftime$68:
	; Assign yearDaySunday £temporary2974
	mov [rbp + 104], eax

 strftime$69:
	; Goto 74
	jmp strftime$74

 strftime$70:
	; BinarySubtract £temporary2975 totalDays 3
	mov rax, [rbp + 96]
	sub rax, 3

 strftime$71:
	; SignedModulo £temporary2976 £temporary2975 7
	xor rdx, rdx
	idiv qword [int8$7#]

 strftime$72:
	; IntegralToIntegral £temporary2977 £temporary2976
	cmp rdx, 0
	jge strftime$73
	neg rdx
	neg edx

 strftime$73:
	; Assign yearDaySunday £temporary2977
	mov [rbp + 104], edx

 strftime$74:
	; SignedGreaterThanEqual 79 totalDays 4
	cmp qword [rbp + 96], 4
	jge strftime$79

 strftime$75:
	; BinaryAdd £temporary2979 totalDays 3
	mov rax, [rbp + 96]
	add rax, 3

 strftime$76:
	; IntegralToIntegral £temporary2980 £temporary2979
	cmp rax, 0
	jge strftime$77
	neg rax
	neg eax

 strftime$77:
	; Assign yearDayMonday £temporary2980
	mov [rbp + 108], eax

 strftime$78:
	; Goto 83
	jmp strftime$83

 strftime$79:
	; BinarySubtract £temporary2981 totalDays 4
	mov rax, [rbp + 96]
	sub rax, 4

 strftime$80:
	; SignedModulo £temporary2982 £temporary2981 7
	xor rdx, rdx
	idiv qword [int8$7#]

 strftime$81:
	; IntegralToIntegral £temporary2983 £temporary2982
	cmp rdx, 0
	jge strftime$82
	neg rdx
	neg edx

 strftime$82:
	; Assign yearDayMonday £temporary2983
	mov [rbp + 108], edx

 strftime$83:
	; Assign index 0
	mov dword [rbp + 112], 0

 strftime$84:
	; IntegralToIntegral £temporary2985 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$85:
	; BinaryAdd £temporary2987 fmt £temporary2985
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$86:
	; Dereference £temporary2984 -> £temporary2987 £temporary2987 0

 strftime$87:
	; Equal 364 £temporary2984 -> £temporary2987 0
	cmp byte [rsi], 0
	je strftime$364

 strftime$88:
	; IntegralToIntegral £temporary2991 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$89:
	; BinaryAdd £temporary2993 fmt £temporary2991
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$90:
	; Dereference £temporary2990 -> £temporary2993 £temporary2993 0

 strftime$91:
	; NotEqual 336 £temporary2990 -> £temporary2993 37
	cmp byte [rsi], 37
	jne strftime$336

 strftime$92:
	; BinaryAdd index index 1
	inc dword [rbp + 112]

 strftime$93:
	; Assign £temporary2995 index
	mov eax, [rbp + 112]

 strftime$94:
	; IntegralToIntegral £temporary2997 £temporary2995
	mov rbx, 4294967295
	and rax, rbx

 strftime$95:
	; BinaryAdd £temporary2999 fmt £temporary2997
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$96:
	; Dereference £temporary2996 -> £temporary2999 £temporary2999 0

 strftime$97:
	; Case 121 £temporary2996 -> £temporary2999 97
	mov al, [rsi]
	cmp al, 97
	je strftime$121

 strftime$98:
	; Case 132 £temporary2996 -> £temporary2999 65
	cmp al, 65
	je strftime$132

 strftime$99:
	; Case 143 £temporary2996 -> £temporary2999 98
	cmp al, 98
	je strftime$143

 strftime$100:
	; Case 154 £temporary2996 -> £temporary2999 66
	cmp al, 66
	je strftime$154

 strftime$101:
	; Case 165 £temporary2996 -> £temporary2999 99
	cmp al, 99
	je strftime$165

 strftime$102:
	; Case 185 £temporary2996 -> £temporary2999 100
	cmp al, 100
	je strftime$185

 strftime$103:
	; Case 193 £temporary2996 -> £temporary2999 72
	cmp al, 72
	je strftime$193

 strftime$104:
	; Case 201 £temporary2996 -> £temporary2999 73
	cmp al, 73
	je strftime$201

 strftime$105:
	; Case 210 £temporary2996 -> £temporary2999 106
	cmp al, 106
	je strftime$210

 strftime$106:
	; Case 218 £temporary2996 -> £temporary2999 109
	cmp al, 109
	je strftime$218

 strftime$107:
	; Case 227 £temporary2996 -> £temporary2999 77
	cmp al, 77
	je strftime$227

 strftime$108:
	; Case 235 £temporary2996 -> £temporary2999 112
	cmp al, 112
	je strftime$235

 strftime$109:
	; Case 247 £temporary2996 -> £temporary2999 83
	cmp al, 83
	je strftime$247

 strftime$110:
	; Case 255 £temporary2996 -> £temporary2999 85
	cmp al, 85
	je strftime$255

 strftime$111:
	; Case 262 £temporary2996 -> £temporary2999 119
	cmp al, 119
	je strftime$262

 strftime$112:
	; Case 270 £temporary2996 -> £temporary2999 87
	cmp al, 87
	je strftime$270

 strftime$113:
	; Case 277 £temporary2996 -> £temporary2999 120
	cmp al, 120
	je strftime$277

 strftime$114:
	; Case 289 £temporary2996 -> £temporary2999 88
	cmp al, 88
	je strftime$289

 strftime$115:
	; Case 301 £temporary2996 -> £temporary2999 121
	cmp al, 121
	je strftime$301

 strftime$116:
	; Case 310 £temporary2996 -> £temporary2999 89
	cmp al, 89
	je strftime$310

 strftime$117:
	; Case 319 £temporary2996 -> £temporary2999 90
	cmp al, 90
	je strftime$319

 strftime$118:
	; Case 325 £temporary2996 -> £temporary2999 37
	cmp al, 37
	je strftime$325

 strftime$119:
	; CaseEnd £temporary2996 -> £temporary2999

 strftime$120:
	; Goto 330
	jmp strftime$330

 strftime$121:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$122:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$123:
	; Dereference £temporary3000 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$124:
	; IntegralToIntegral £temporary3002 £temporary3000 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$125:
	; UnsignedMultiply £temporary3003 £temporary3002 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$126:
	; BinaryAdd £temporary3004 shortDayList £temporary3003
	mov rsi, [rbp + 60]
	add rsi, rax

 strftime$127:
	; Dereference £temporary3001 -> £temporary3004 £temporary3004 0

 strftime$128:
	; Parameter pointer £temporary3001 -> £temporary3004 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$129:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$130
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$130:
	; PostCall 136

 strftime$131:
	; Goto 343
	jmp strftime$343

 strftime$132:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$133:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$134:
	; Dereference £temporary3006 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$135:
	; IntegralToIntegral £temporary3008 £temporary3006 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$136:
	; UnsignedMultiply £temporary3009 £temporary3008 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$137:
	; BinaryAdd £temporary3010 longDayList £temporary3009
	mov rsi, [rbp + 76]
	add rsi, rax

 strftime$138:
	; Dereference £temporary3007 -> £temporary3010 £temporary3010 0

 strftime$139:
	; Parameter pointer £temporary3007 -> £temporary3010 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$140:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$141
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$141:
	; PostCall 136

 strftime$142:
	; Goto 343
	jmp strftime$343

 strftime$143:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$144:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$145:
	; Dereference £temporary3012 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$146:
	; IntegralToIntegral £temporary3014 £temporary3012 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$147:
	; UnsignedMultiply £temporary3015 £temporary3014 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$148:
	; BinaryAdd £temporary3016 shortMonthList £temporary3015
	mov rsi, [rbp + 68]
	add rsi, rax

 strftime$149:
	; Dereference £temporary3013 -> £temporary3016 £temporary3016 0

 strftime$150:
	; Parameter pointer £temporary3013 -> £temporary3016 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$151:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$152
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$152:
	; PostCall 136

 strftime$153:
	; Goto 343
	jmp strftime$343

 strftime$154:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$155:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$156:
	; Dereference £temporary3018 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$157:
	; IntegralToIntegral £temporary3020 £temporary3018 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$158:
	; UnsignedMultiply £temporary3021 £temporary3020 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$159:
	; BinaryAdd £temporary3022 longMonthList £temporary3021
	mov rsi, [rbp + 84]
	add rsi, rax

 strftime$160:
	; Dereference £temporary3019 -> £temporary3022 £temporary3022 0

 strftime$161:
	; Parameter pointer £temporary3019 -> £temporary3022 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$162:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$163
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$163:
	; PostCall 136

 strftime$164:
	; Goto 343
	jmp strftime$343

 strftime$165:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$166:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$167:
	; Parameter pointer "%02i-%02i-%02i %02i:%02i:%02i" 168
	mov qword [rbp + 168], string_2502i2D2502i2D2502i202502i3A2502i3A2502i#

 strftime$168:
	; Dereference £temporary3024 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$169:
	; BinaryAdd £temporary3025 £temporary3024 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$170:
	; Parameter signedint £temporary3025 176
	mov [rbp + 176], eax

 strftime$171:
	; Dereference £temporary3026 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$172:
	; BinaryAdd £temporary3027 £temporary3026 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$173:
	; Parameter signedint £temporary3027 180
	mov [rbp + 180], eax

 strftime$174:
	; Dereference £temporary3028 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$175:
	; Parameter signedint £temporary3028 -> tp 184
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

 strftime$176:
	; Dereference £temporary3029 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$177:
	; Parameter signedint £temporary3029 -> tp 188
	mov eax, [rsi + 8]
	mov [rbp + 188], eax

 strftime$178:
	; Dereference £temporary3030 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$179:
	; Parameter signedint £temporary3030 -> tp 192
	mov eax, [rsi + 4]
	mov [rbp + 192], eax

 strftime$180:
	; Dereference £temporary3031 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$181:
	; Parameter signedint £temporary3031 -> tp 196
	mov eax, [rsi]
	mov [rbp + 196], eax

 strftime$182:
	; Call sprintf 136 24
	mov qword [rbp + 136], strftime$183
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 24
	jmp sprintf

 strftime$183:
	; PostCall 136

 strftime$184:
	; Goto 343
	jmp strftime$343

 strftime$185:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$186:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$187:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$188:
	; Dereference £temporary3033 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$189:
	; Parameter signedint £temporary3033 -> tp 176
	mov eax, [rsi + 12]
	mov [rbp + 176], eax

 strftime$190:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$191
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$191:
	; PostCall 136

 strftime$192:
	; Goto 343
	jmp strftime$343

 strftime$193:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$194:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$195:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$196:
	; Dereference £temporary3035 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$197:
	; Parameter signedint £temporary3035 -> tp 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$198:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$199
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$199:
	; PostCall 136

 strftime$200:
	; Goto 343
	jmp strftime$343

 strftime$201:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$202:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$203:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$204:
	; Dereference £temporary3037 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$205:
	; SignedModulo £temporary3038 £temporary3037 -> tp 12
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [int4$12#]

 strftime$206:
	; Parameter signedint £temporary3038 176
	mov [rbp + 176], edx

 strftime$207:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$208
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$208:
	; PostCall 136

 strftime$209:
	; Goto 343
	jmp strftime$343

 strftime$210:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$211:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$212:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$213:
	; Dereference £temporary3040 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$214:
	; Parameter signedint £temporary3040 -> tp 176
	mov eax, [rsi + 28]
	mov [rbp + 176], eax

 strftime$215:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$216
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$216:
	; PostCall 136

 strftime$217:
	; Goto 343
	jmp strftime$343

 strftime$218:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$219:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$220:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$221:
	; Dereference £temporary3042 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$222:
	; BinaryAdd £temporary3043 £temporary3042 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$223:
	; Parameter signedint £temporary3043 176
	mov [rbp + 176], eax

 strftime$224:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$225
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$225:
	; PostCall 136

 strftime$226:
	; Goto 343
	jmp strftime$343

 strftime$227:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$228:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$229:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$230:
	; Dereference £temporary3045 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$231:
	; Parameter signedint £temporary3045 -> tp 176
	mov eax, [rsi + 4]
	mov [rbp + 176], eax

 strftime$232:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$233
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$233:
	; PostCall 136

 strftime$234:
	; Goto 343
	jmp strftime$343

 strftime$235:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$236:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$237:
	; Parameter pointer "%s" 168
	mov qword [rbp + 168], string_25s#

 strftime$238:
	; Dereference £temporary3047 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$239:
	; SignedGreaterThanEqual 242 £temporary3047 -> tp 12
	cmp dword [rsi + 8], 12
	jge strftime$242

 strftime$240:
	; Assign £temporary3049 "AM"
	mov eax, string_AM#

 strftime$241:
	; Goto 243
	jmp strftime$243

 strftime$242:
	; Assign £temporary3049 "PM"
	mov eax, string_PM#

 strftime$243:
	; Parameter pointer £temporary3049 176
	mov [rbp + 176], eax

 strftime$244:
	; Call sprintf 136 8
	mov qword [rbp + 136], strftime$245
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 8
	jmp sprintf

 strftime$245:
	; PostCall 136

 strftime$246:
	; Goto 343
	jmp strftime$343

 strftime$247:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$248:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$249:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$250:
	; Dereference £temporary3051 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$251:
	; Parameter signedint £temporary3051 -> tp 176
	mov eax, [rsi]
	mov [rbp + 176], eax

 strftime$252:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$253
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$253:
	; PostCall 136

 strftime$254:
	; Goto 343
	jmp strftime$343

 strftime$255:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$256:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$257:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$258:
	; Parameter signedint yearDaySunday 176
	mov eax, [rbp + 104]
	mov [rbp + 176], eax

 strftime$259:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$260
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$260:
	; PostCall 136

 strftime$261:
	; Goto 343
	jmp strftime$343

 strftime$262:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$263:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$264:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$265:
	; Dereference £temporary3054 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$266:
	; Parameter signedint £temporary3054 -> tp 176
	mov eax, [rsi + 24]
	mov [rbp + 176], eax

 strftime$267:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$268
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$268:
	; PostCall 136

 strftime$269:
	; Goto 343
	jmp strftime$343

 strftime$270:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$271:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$272:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$273:
	; Parameter signedint yearDayMonday 176
	mov eax, [rbp + 108]
	mov [rbp + 176], eax

 strftime$274:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$275
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$275:
	; PostCall 136

 strftime$276:
	; Goto 343
	jmp strftime$343

 strftime$277:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$278:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$279:
	; Parameter pointer "%02i:%02i:%02i" 168
	mov qword [rbp + 168], string_2502i3A2502i3A2502i#

 strftime$280:
	; Dereference £temporary3057 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$281:
	; Parameter signedint £temporary3057 -> tp 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$282:
	; Dereference £temporary3058 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$283:
	; Parameter signedint £temporary3058 -> tp 180
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$284:
	; Dereference £temporary3059 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$285:
	; Parameter signedint £temporary3059 -> tp 184
	mov eax, [rsi]
	mov [rbp + 184], eax

 strftime$286:
	; Call sprintf 136 12
	mov qword [rbp + 136], strftime$287
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$287:
	; PostCall 136

 strftime$288:
	; Goto 343
	jmp strftime$343

 strftime$289:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$290:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$291:
	; Parameter pointer "%02i:%02i:%02i" 168
	mov qword [rbp + 168], string_2502i3A2502i3A2502i#

 strftime$292:
	; Dereference £temporary3061 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$293:
	; Parameter signedint £temporary3061 -> tp 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$294:
	; Dereference £temporary3062 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$295:
	; Parameter signedint £temporary3062 -> tp 180
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$296:
	; Dereference £temporary3063 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$297:
	; Parameter signedint £temporary3063 -> tp 184
	mov eax, [rsi]
	mov [rbp + 184], eax

 strftime$298:
	; Call sprintf 136 12
	mov qword [rbp + 136], strftime$299
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$299:
	; PostCall 136

 strftime$300:
	; Goto 343
	jmp strftime$343

 strftime$301:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$302:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$303:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$304:
	; Dereference £temporary3065 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$305:
	; SignedModulo £temporary3066 £temporary3065 -> tp 100
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [int4$100#]

 strftime$306:
	; Parameter signedint £temporary3066 176
	mov [rbp + 176], edx

 strftime$307:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$308
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$308:
	; PostCall 136

 strftime$309:
	; Goto 343
	jmp strftime$343

 strftime$310:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$311:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$312:
	; Parameter pointer "%i" 168
	mov qword [rbp + 168], string_25i#

 strftime$313:
	; Dereference £temporary3068 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$314:
	; BinaryAdd £temporary3069 £temporary3068 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$315:
	; Parameter signedint £temporary3069 176
	mov [rbp + 176], eax

 strftime$316:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$317
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$317:
	; PostCall 136

 strftime$318:
	; Goto 343
	jmp strftime$343

 strftime$319:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$320:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$321:
	; Parameter pointer "" 168
	mov qword [rbp + 168], string_#

 strftime$322:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$323
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$323:
	; PostCall 136

 strftime$324:
	; Goto 343
	jmp strftime$343

 strftime$325:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$326:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$327:
	; Parameter pointer "%" 168
	mov qword [rbp + 168], string_25#

 strftime$328:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$329
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$329:
	; PostCall 136

 strftime$330:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$331:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$332:
	; Parameter pointer "" 168
	mov qword [rbp + 168], string_#

 strftime$333:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$334
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$334:
	; PostCall 136

 strftime$335:
	; Goto 343
	jmp strftime$343

 strftime$336:
	; Dereference £temporary3074 -> add add 0
	mov rsi, rbp
	add rsi, 116

 strftime$337:
	; IntegralToIntegral £temporary3076 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$338:
	; BinaryAdd £temporary3078 fmt £temporary3076
	mov rdi, [rbp + 36]
	add rdi, rax

 strftime$339:
	; Dereference £temporary3075 -> £temporary3078 £temporary3078 0

 strftime$340:
	; Assign £temporary3074 -> add £temporary3075 -> £temporary3078
	mov al, [rdi]
	mov [rsi], al

 strftime$341:
	; Dereference £temporary3079 -> add add 0
	mov rsi, rbp
	add rsi, 116

 strftime$342:
	; Assign £temporary3079 -> add 0
	mov byte [rsi + 1], 0

 strftime$343:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$344:
	; Parameter pointer s 160
	mov rax, [rbp + 24]
	mov [rbp + 160], rax

 strftime$345:
	; Call strlen 136 0
	mov qword [rbp + 136], strftime$346
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strlen

 strftime$346:
	; PostCall 136

 strftime$347:
	; GetReturnValue £temporary3080

 strftime$348:
	; Assign x £temporary3080
	mov [rbp + 136], ebx

 strftime$349:
	; PreCall 140 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$350:
	; Parameter pointer add 164
	mov [rbp + 164], rbp
	add qword [rbp + 164], 116

 strftime$351:
	; Call strlen 140 0
	mov qword [rbp + 140], strftime$352
	mov [rbp + 148], rbp
	add rbp, 140
	jmp strlen

 strftime$352:
	; PostCall 140

 strftime$353:
	; GetReturnValue £temporary3081

 strftime$354:
	; Assign y £temporary3081
	mov [rbp + 140], ebx

 strftime$355:
	; BinaryAdd £temporary3082 x y
	mov eax, [rbp + 136]
	add eax, [rbp + 140]

 strftime$356:
	; SignedGreaterThanEqual 364 £temporary3082 smax
	cmp eax, [rbp + 32]
	jge strftime$364

 strftime$357:
	; PreCall 144 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$358:
	; Parameter pointer s 168
	mov rax, [rbp + 24]
	mov [rbp + 168], rax

 strftime$359:
	; Parameter pointer add 176
	mov [rbp + 176], rbp
	add qword [rbp + 176], 116

 strftime$360:
	; Call strcat 144 0
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
	; Goto 84
	jmp strftime$84

 strftime$364:
	; PreCall 112 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$365:
	; Parameter pointer s 136
	mov rax, [rbp + 24]
	mov [rbp + 136], rax

 strftime$366:
	; Call strlen 112 0
	mov qword [rbp + 112], strftime$367
	mov [rbp + 120], rbp
	add rbp, 112
	jmp strlen

 strftime$367:
	; PostCall 112

 strftime$368:
	; GetReturnValue £temporary3085

 strftime$369:
	; Return £temporary3085
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strftime$370:
	; FunctionEnd strftime
