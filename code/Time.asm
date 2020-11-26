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
	; Address £temporary2750 time
	mov rdi, rbp
	add rdi, 32

 time$2:
	; IntegralToIntegral £temporary2751 £temporary2750

 time$3:
	; AssignRegister rdi £temporary2751

 time$4:
	; SysCall
	syscall

 time$5:
	; AssignRegister rax 96
	mov rax, 96

 time$6:
	; Address £temporary2754 tv
	mov rdi, rbp
	add rdi, 40

 time$7:
	; AssignRegister rdi £temporary2754

 time$8:
	; Address £temporary2756 tz
	mov rsi, rbp
	add rsi, 48

 time$9:
	; AssignRegister rsi £temporary2756

 time$10:
	; SysCall
	syscall

 time$11:
	; Equal 14 timePtr 0
	cmp qword [rbp + 24], 0
	je time$14

 time$12:
	; Dereference £temporary2758 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 time$13:
	; Assign £temporary2758 -> timePtr time
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
	; Equal 28 tp 0
	cmp qword [rbp + 24], 0
	je mktime$28

 mktime$1:
	; Dereference £temporary2763 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$2:
	; BinarySubtract £temporary2764 £temporary2763 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 mktime$3:
	; SignedDivide £temporary2765 £temporary2764 4
	xor edx, edx
	idiv dword [int4$4#]

 mktime$4:
	; IntegralToIntegral £temporary2766 £temporary2765
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

 mktime$5:
	; Assign leapDays £temporary2766
	mov [rbp + 32], rax

 mktime$6:
	; Dereference £temporary2767 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$7:
	; BinarySubtract £temporary2768 £temporary2767 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 mktime$8:
	; SignedMultiply £temporary2769 £temporary2768 365
	xor edx, edx
	imul dword [int4$365#]

 mktime$9:
	; IntegralToIntegral £temporary2770 £temporary2769
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

 mktime$10:
	; BinaryAdd £temporary2771 £temporary2770 leapDays
	add rax, [rbp + 32]

 mktime$11:
	; Dereference £temporary2772 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$12:
	; IntegralToIntegral £temporary2773 £temporary2772 -> tp
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

 mktime$13:
	; BinaryAdd totalDays £temporary2771 £temporary2773
	add rax, rbx
	mov [rbp + 40], rax

 mktime$14:
	; SignedMultiply £temporary2775 totalDays 86400
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [int8$86400#]
	mov rbx, rax

 mktime$15:
	; Dereference £temporary2776 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$16:
	; IntegralToIntegral £temporary2777 £temporary2776 -> tp
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

 mktime$17:
	; SignedMultiply £temporary2778 £temporary2777 3600
	xor rdx, rdx
	imul qword [int8$3600#]

 mktime$18:
	; BinaryAdd £temporary2779 £temporary2775 £temporary2778
	add rbx, rax

 mktime$19:
	; Dereference £temporary2780 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$20:
	; IntegralToIntegral £temporary2781 £temporary2780 -> tp
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

 mktime$21:
	; SignedMultiply £temporary2782 £temporary2781 60
	xor rdx, rdx
	imul qword [int8$60#]

 mktime$22:
	; BinaryAdd £temporary2783 £temporary2779 £temporary2782
	add rbx, rax

 mktime$23:
	; Dereference £temporary2784 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$24:
	; IntegralToIntegral £temporary2785 £temporary2784 -> tp
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

 mktime$25:
	; BinaryAdd £temporary2786 £temporary2783 £temporary2785
	add rbx, rax

 mktime$26:
	; SetReturnValue

 mktime$27:
	; Return £temporary2786
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

@4736$g_timeStruct:
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

 @4738$isLeapYear:
	; SignedModulo £temporary2787 year 4
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [int4$4#]

 @4738$isLeapYear$1:
	; NotEqual 4 £temporary2787 0
	cmp edx, 0
	jne @4738$isLeapYear$4

 @4738$isLeapYear$2:
	; SignedModulo £temporary2789 year 100
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [int4$100#]

 @4738$isLeapYear$3:
	; NotEqual 6 £temporary2789 0
	cmp edx, 0
	jne @4738$isLeapYear$6

 @4738$isLeapYear$4:
	; SignedModulo £temporary2792 year 400
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [int4$400#]

 @4738$isLeapYear$5:
	; NotEqual 8 £temporary2792 0
	cmp edx, 0
	jne @4738$isLeapYear$8

 @4738$isLeapYear$6:
	; Assign £temporary2795 1
	mov ebx, 1

 @4738$isLeapYear$7:
	; Goto 9
	jmp @4738$isLeapYear$9

 @4738$isLeapYear$8:
	; Assign £temporary2795 0
	mov ebx, 0

 @4738$isLeapYear$9:
	; SetReturnValue

 @4738$isLeapYear$10:
	; Return £temporary2795
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @4738$isLeapYear$11:
	; FunctionEnd isLeapYear

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
	; Equal 91 timePtr 0
	cmp qword [rbp + 24], 0
	je gmtime$91

 gmtime$1:
	; Dereference £temporary2797 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 gmtime$2:
	; Assign time £temporary2797 -> timePtr
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
	; SignedDivide £temporary2801 secondsOfDay 3600
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [int8$3600#]

 gmtime$6:
	; IntegralToIntegral £temporary2802 £temporary2801
	cmp rax, 0
	jge gmtime$7
	neg rax
	neg eax

 gmtime$7:
	; Assign g_timeStruct.tm_hour £temporary2802
	mov [@4736$g_timeStruct + 8], eax

 gmtime$8:
	; SignedDivide £temporary2804 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtime$9:
	; IntegralToIntegral £temporary2805 £temporary2804
	cmp rax, 0
	jge gmtime$10
	neg rax
	neg eax

 gmtime$10:
	; Assign g_timeStruct.tm_min £temporary2805
	mov [@4736$g_timeStruct + 4], eax

 gmtime$11:
	; SignedModulo £temporary2807 secondsOfHour 60
	mov rax, [rbp + 48]
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtime$12:
	; IntegralToIntegral £temporary2808 £temporary2807
	cmp rdx, 0
	jge gmtime$13
	neg rdx
	neg edx

 gmtime$13:
	; Assign g_timeStruct.tm_sec £temporary2808
	mov [@4736$g_timeStruct], edx

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
	; BinaryAdd £temporary2812 totalDays 4
	mov rax, [rbp + 56]
	add rax, 4

 gmtime$17:
	; IntegralToIntegral £temporary2813 £temporary2812
	cmp rax, 0
	jge gmtime$18
	neg rax
	neg eax

 gmtime$18:
	; Assign g_timeStruct.tm_wday £temporary2813
	mov [@4736$g_timeStruct + 24], eax

 gmtime$19:
	; Goto 24
	jmp gmtime$24

 gmtime$20:
	; BinarySubtract £temporary2815 totalDays 3
	mov rax, [rbp + 56]
	sub rax, 3

 gmtime$21:
	; SignedModulo £temporary2816 £temporary2815 7
	xor rdx, rdx
	idiv qword [int8$7#]

 gmtime$22:
	; IntegralToIntegral £temporary2817 £temporary2816
	cmp rdx, 0
	jge gmtime$23
	neg rdx
	neg edx

 gmtime$23:
	; Assign g_timeStruct.tm_wday £temporary2817
	mov [@4736$g_timeStruct + 24], edx

 gmtime$24:
	; SignedDivide £temporary2818 totalDays 365
	mov rax, [rbp + 56]
	xor rdx, rdx
	idiv qword [int8$365#]

 gmtime$25:
	; BinaryAdd £temporary2819 £temporary2818 1970
	add rax, 1970

 gmtime$26:
	; IntegralToIntegral £temporary2820 £temporary2819
	cmp rax, 0
	jge gmtime$27
	neg rax
	neg eax

 gmtime$27:
	; Assign year £temporary2820
	mov [rbp + 64], eax

 gmtime$28:
	; BinarySubtract £temporary2821 year 1969
	mov eax, [rbp + 64]
	sub eax, 1969

 gmtime$29:
	; SignedDivide leapDays £temporary2821 4
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
	; IntegralToIntegral £temporary2824 leapDays
	mov eax, [rbp + 68]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$32
	neg eax
	neg rax

 gmtime$32:
	; BinarySubtract totalDays totalDays £temporary2824
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
	jmp @4738$isLeapYear

 gmtime$38:
	; PostCall 72

 gmtime$39:
	; GetReturnValue £temporary2828

 gmtime$40:
	; Equal 43 £temporary2828 0
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
	; BinarySubtract g_timeStruct.tm_year year 1900
	mov eax, [rbp + 64]
	sub eax, 1900
	mov [@4736$g_timeStruct + 20], eax

 gmtime$45:
	; IntegralToIntegral £temporary2835 totalDays
	mov rax, [rbp + 56]
	cmp rax, 0
	jge gmtime$46
	neg rax
	neg eax

 gmtime$46:
	; Assign g_timeStruct.tm_yday £temporary2835
	mov [@4736$g_timeStruct + 28], eax

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
	jmp @4738$isLeapYear

 gmtime$51:
	; PostCall 76

 gmtime$52:
	; GetReturnValue £temporary2836

 gmtime$53:
	; Equal 56 £temporary2836 0
	cmp ebx, 0
	je gmtime$56

 gmtime$54:
	; Assign £temporary2838 29
	mov eax, 29

 gmtime$55:
	; Goto 57
	jmp gmtime$57

 gmtime$56:
	; Assign £temporary2838 28
	mov eax, 28

 gmtime$57:
	; Assign daysOfMonths[1] £temporary2838
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
	; IntegralToIntegral £temporary2852 month
	mov eax, [rbp + 120]
	mov rbx, 4294967295
	and rax, rbx

 gmtime$70:
	; UnsignedMultiply £temporary2853 £temporary2852 4
	xor rdx, rdx
	mul qword [Array_4#]

 gmtime$71:
	; BinaryAdd £temporary2854 daysOfMonths £temporary2853
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$72:
	; Dereference £temporary2851 -> £temporary2854 £temporary2854 0

 gmtime$73:
	; IntegralToIntegral £temporary2855 £temporary2851 -> £temporary2854
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$74
	neg eax
	neg rax

 gmtime$74:
	; SignedLessThan 84 totalDays £temporary2855
	cmp [rbp + 56], rax
	jl gmtime$84

 gmtime$75:
	; Assign £temporary2857 month
	mov eax, [rbp + 120]

 gmtime$76:
	; BinaryAdd month month 1
	inc dword [rbp + 120]

 gmtime$77:
	; IntegralToIntegral £temporary2859 £temporary2857
	mov rbx, 4294967295
	and rax, rbx

 gmtime$78:
	; UnsignedMultiply £temporary2860 £temporary2859 4
	xor rdx, rdx
	mul qword [Array_4#]

 gmtime$79:
	; BinaryAdd £temporary2861 daysOfMonths £temporary2860
	mov rsi, rbp
	add rsi, 72
	add rsi, rax

 gmtime$80:
	; Dereference £temporary2858 -> £temporary2861 £temporary2861 0

 gmtime$81:
	; IntegralToIntegral £temporary2862 £temporary2858 -> £temporary2861
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$82
	neg eax
	neg rax

 gmtime$82:
	; BinarySubtract totalDays totalDays £temporary2862
	sub [rbp + 56], rax

 gmtime$83:
	; Goto 69
	jmp gmtime$69

 gmtime$84:
	; Assign g_timeStruct.tm_mon month
	mov eax, [rbp + 120]
	mov [@4736$g_timeStruct + 16], eax

 gmtime$85:
	; BinaryAdd £temporary2866 totalDays 1
	mov rax, [rbp + 56]
	inc rax

 gmtime$86:
	; IntegralToIntegral £temporary2867 £temporary2866
	cmp rax, 0
	jge gmtime$87
	neg rax
	neg eax

 gmtime$87:
	; Assign g_timeStruct.tm_mday £temporary2867
	mov [@4736$g_timeStruct + 12], eax

 gmtime$88:
	; Assign g_timeStruct.tm_isdst -1
	mov dword [@4736$g_timeStruct + 32], -1

 gmtime$89:
	; SetReturnValue

 gmtime$90:
	; Return @4736$g_timeStruct
	mov rbx, @4736$g_timeStruct
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
	; BinarySubtract £temporary2869 time2 time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

 difftime$1:
	; IntegralToFloating £temporary2870 £temporary2869
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 difftime$2:
	; SetReturnValue

 difftime$3:
	; Return £temporary2870
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 difftime$4:
	; FunctionEnd difftime

section .data

@4752$g_timeString:
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

@4753$g_defaultShortDayList:
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

@4754$g_defaultLongDayList:
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

@4755$g_defaultShortMonthList:
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

@4756$g_defaultLongMonthList:
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
	; Dereference £temporary2872 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$3:
	; Assign £temporary2873 £temporary2872 -> localeConvPtr
	mov rax, [rsi + 8]

 asctime$4:
	; Goto 6
	jmp asctime$6

 asctime$5:
	; Assign £temporary2873 0
	mov rax, 0

 asctime$6:
	; Assign shortDayList £temporary2873
	mov [rbp + 40], rax

 asctime$7:
	; Equal 11 localeConvPtr 0
	cmp qword [rbp + 32], 0
	je asctime$11

 asctime$8:
	; Dereference £temporary2875 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$9:
	; Assign £temporary2876 £temporary2875 -> localeConvPtr
	mov rax, [rsi + 24]

 asctime$10:
	; Goto 12
	jmp asctime$12

 asctime$11:
	; Assign £temporary2876 0
	mov rax, 0

 asctime$12:
	; Assign shortMonthList £temporary2876
	mov [rbp + 48], rax

 asctime$13:
	; Equal 16 shortDayList 0
	cmp qword [rbp + 40], 0
	je asctime$16

 asctime$14:
	; Assign £temporary2878 shortDayList
	mov rax, [rbp + 40]

 asctime$15:
	; Goto 17
	jmp asctime$17

 asctime$16:
	; Assign £temporary2878 g_defaultShortDayList
	mov rax, @4753$g_defaultShortDayList

 asctime$17:
	; Assign shortDayList £temporary2878
	mov [rbp + 40], rax

 asctime$18:
	; Equal 21 shortMonthList 0
	cmp qword [rbp + 48], 0
	je asctime$21

 asctime$19:
	; Assign £temporary2880 shortMonthList
	mov rax, [rbp + 48]

 asctime$20:
	; Goto 22
	jmp asctime$22

 asctime$21:
	; Assign £temporary2880 g_defaultShortMonthList
	mov rax, @4755$g_defaultShortMonthList

 asctime$22:
	; Assign shortMonthList £temporary2880
	mov [rbp + 48], rax

 asctime$23:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asctime$24:
	; Parameter 80 pointer g_timeString
	mov qword [rbp + 80], @4752$g_timeString

 asctime$25:
	; Parameter 88 pointer "%s %s %i %02i:%02i:%02i %i"
	mov qword [rbp + 88], string_25s2025s2025i202502i3A2502i3A2502i2025i#

 asctime$26:
	; Dereference £temporary2881 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$27:
	; IntegralToIntegral £temporary2883 £temporary2881 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 asctime$28:
	; UnsignedMultiply £temporary2884 £temporary2883 8
	xor rdx, rdx
	mul qword [int8$8#]

 asctime$29:
	; BinaryAdd £temporary2885 shortDayList £temporary2884
	mov rsi, [rbp + 40]
	add rsi, rax

 asctime$30:
	; Dereference £temporary2882 -> £temporary2885 £temporary2885 0

 asctime$31:
	; Parameter 96 pointer £temporary2882 -> £temporary2885
	mov rax, [rsi]
	mov [rbp + 96], rax

 asctime$32:
	; Dereference £temporary2886 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$33:
	; IntegralToIntegral £temporary2888 £temporary2886 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 asctime$34:
	; UnsignedMultiply £temporary2889 £temporary2888 8
	xor rdx, rdx
	mul qword [int8$8#]

 asctime$35:
	; BinaryAdd £temporary2890 shortMonthList £temporary2889
	mov rsi, [rbp + 48]
	add rsi, rax

 asctime$36:
	; Dereference £temporary2887 -> £temporary2890 £temporary2890 0

 asctime$37:
	; Parameter 104 pointer £temporary2887 -> £temporary2890
	mov rax, [rsi]
	mov [rbp + 104], rax

 asctime$38:
	; Dereference £temporary2891 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$39:
	; Parameter 112 signedint £temporary2891 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

 asctime$40:
	; Dereference £temporary2892 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$41:
	; Parameter 116 signedint £temporary2892 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

 asctime$42:
	; Dereference £temporary2893 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$43:
	; Parameter 120 signedint £temporary2893 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

 asctime$44:
	; Dereference £temporary2894 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$45:
	; Parameter 124 signedint £temporary2894 -> tp
	mov eax, [rsi]
	mov [rbp + 124], eax

 asctime$46:
	; Dereference £temporary2895 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$47:
	; BinaryAdd £temporary2896 £temporary2895 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 asctime$48:
	; Parameter 128 signedint £temporary2896
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
	mov rbx, @4752$g_timeString
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
	; GetReturnValue £temporary2898

 ctime$6:
	; Parameter 56 pointer £temporary2898
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
	; GetReturnValue £temporary2899

 ctime$10:
	; SetReturnValue

 ctime$11:
	; Return £temporary2899
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ctime$12:
	; FunctionEnd ctime

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
	; GetReturnValue £temporary2900

 localtime$5:
	; Assign tmPtr £temporary2900
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
	; GetReturnValue £temporary2901

 localtime$10:
	; Assign localeConvPtr £temporary2901
	mov [rbp + 40], rbx

 localtime$11:
	; Assign timeZone 0
	mov dword [rbp + 48], 0

 localtime$12:
	; Equal 21 localeConvPtr 0
	cmp qword [rbp + 40], 0
	je localtime$21

 localtime$13:
	; Dereference £temporary2903 -> tmPtr tmPtr 0
	mov rsi, [rbp + 32]

 localtime$14:
	; NotEqual 18 £temporary2903 -> tmPtr 1
	cmp dword [rsi + 32], 1
	jne localtime$18

 localtime$15:
	; Dereference £temporary2905 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 40]

 localtime$16:
	; Assign £temporary2907 £temporary2905 -> localeConvPtr
	mov eax, [rsi]

 localtime$17:
	; Goto 20
	jmp localtime$20

 localtime$18:
	; Dereference £temporary2906 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 40]

 localtime$19:
	; Assign £temporary2907 £temporary2906 -> localeConvPtr
	mov eax, [rsi + 4]

 localtime$20:
	; Assign timeZone £temporary2907
	mov [rbp + 48], eax

 localtime$21:
	; Dereference £temporary2908 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 localtime$22:
	; IntegralToIntegral £temporary2909 timeZone
	mov eax, [rbp + 48]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge localtime$23
	neg eax
	neg rax

 localtime$23:
	; SignedMultiply £temporary2910 £temporary2909 3600
	xor rdx, rdx
	imul qword [int8$3600#]

 localtime$24:
	; BinaryAdd t £temporary2908 -> timePtr £temporary2910
	mov rbx, [rsi]
	add rbx, rax
	mov [rbp + 52], rbx

 localtime$25:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$26:
	; Address £temporary2912 t
	mov rsi, rbp
	add rsi, 52

 localtime$27:
	; Parameter 84 pointer £temporary2912
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
	; GetReturnValue £temporary2913

 localtime$31:
	; SetReturnValue

 localtime$32:
	; Return £temporary2913
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 localtime$33:
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
	; Call 52 localeconv 0
	mov qword [rbp + 52], strftime$2
	mov [rbp + 60], rbp
	add rbp, 52
	jmp localeconv

 strftime$2:
	; PostCall 52

 strftime$3:
	; GetReturnValue £temporary2915

 strftime$4:
	; Assign localeConvPtr £temporary2915
	mov [rbp + 52], rbx

 strftime$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$9

 strftime$6:
	; Dereference £temporary2917 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$7:
	; Assign £temporary2918 £temporary2917 -> localeConvPtr
	mov rax, [rsi + 8]

 strftime$8:
	; Goto 10
	jmp strftime$10

 strftime$9:
	; Assign £temporary2918 0
	mov rax, 0

 strftime$10:
	; Assign shortDayList £temporary2918
	mov [rbp + 60], rax

 strftime$11:
	; Equal 15 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$15

 strftime$12:
	; Dereference £temporary2920 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$13:
	; Assign £temporary2921 £temporary2920 -> localeConvPtr
	mov rax, [rsi + 24]

 strftime$14:
	; Goto 16
	jmp strftime$16

 strftime$15:
	; Assign £temporary2921 0
	mov rax, 0

 strftime$16:
	; Assign shortMonthList £temporary2921
	mov [rbp + 68], rax

 strftime$17:
	; Equal 21 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$21

 strftime$18:
	; Dereference £temporary2923 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$19:
	; Assign £temporary2924 £temporary2923 -> localeConvPtr
	mov rax, [rsi + 16]

 strftime$20:
	; Goto 22
	jmp strftime$22

 strftime$21:
	; Assign £temporary2924 0
	mov rax, 0

 strftime$22:
	; Assign longDayList £temporary2924
	mov [rbp + 76], rax

 strftime$23:
	; Equal 27 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$27

 strftime$24:
	; Dereference £temporary2926 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$25:
	; Assign £temporary2927 £temporary2926 -> localeConvPtr
	mov rax, [rsi + 32]

 strftime$26:
	; Goto 28
	jmp strftime$28

 strftime$27:
	; Assign £temporary2927 0
	mov rax, 0

 strftime$28:
	; Assign longMonthList £temporary2927
	mov [rbp + 84], rax

 strftime$29:
	; Dereference £temporary2928 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$30:
	; BinarySubtract £temporary2929 £temporary2928 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 strftime$31:
	; SignedDivide leapDays £temporary2929 4
	xor edx, edx
	idiv dword [int4$4#]
	mov [rbp + 92], eax

 strftime$32:
	; Dereference £temporary2931 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$33:
	; BinarySubtract £temporary2932 £temporary2931 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 strftime$34:
	; SignedMultiply £temporary2933 £temporary2932 365
	xor edx, edx
	imul dword [int4$365#]

 strftime$35:
	; BinaryAdd £temporary2934 £temporary2933 leapDays
	add eax, [rbp + 92]

 strftime$36:
	; Dereference £temporary2935 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$37:
	; BinaryAdd £temporary2936 £temporary2934 £temporary2935 -> tp
	add eax, [rsi + 28]

 strftime$38:
	; IntegralToIntegral £temporary2937 £temporary2936
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge strftime$39
	neg eax
	neg rax

 strftime$39:
	; Assign totalDays £temporary2937
	mov [rbp + 96], rax

 strftime$40:
	; PreCall 112 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$41:
	; Parameter 136 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 136], rax

 strftime$42:
	; Parameter 144 pointer ""
	mov qword [rbp + 144], string_#

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
	; Assign £temporary2940 shortDayList
	mov rax, [rbp + 60]

 strftime$47:
	; Goto 49
	jmp strftime$49

 strftime$48:
	; Assign £temporary2940 g_defaultShortDayList
	mov rax, @4753$g_defaultShortDayList

 strftime$49:
	; Assign shortDayList £temporary2940
	mov [rbp + 60], rax

 strftime$50:
	; Equal 53 longDayList 0
	cmp qword [rbp + 76], 0
	je strftime$53

 strftime$51:
	; Assign £temporary2942 longDayList
	mov rax, [rbp + 76]

 strftime$52:
	; Goto 54
	jmp strftime$54

 strftime$53:
	; Assign £temporary2942 g_defaultLongDayList
	mov rax, @4754$g_defaultLongDayList

 strftime$54:
	; Assign longDayList £temporary2942
	mov [rbp + 76], rax

 strftime$55:
	; Equal 58 shortMonthList 0
	cmp qword [rbp + 68], 0
	je strftime$58

 strftime$56:
	; Assign £temporary2944 shortMonthList
	mov rax, [rbp + 68]

 strftime$57:
	; Goto 59
	jmp strftime$59

 strftime$58:
	; Assign £temporary2944 g_defaultShortMonthList
	mov rax, @4755$g_defaultShortMonthList

 strftime$59:
	; Assign shortMonthList £temporary2944
	mov [rbp + 68], rax

 strftime$60:
	; Equal 63 longMonthList 0
	cmp qword [rbp + 84], 0
	je strftime$63

 strftime$61:
	; Assign £temporary2946 longMonthList
	mov rax, [rbp + 84]

 strftime$62:
	; Goto 64
	jmp strftime$64

 strftime$63:
	; Assign £temporary2946 g_defaultLongMonthList
	mov rax, @4756$g_defaultLongMonthList

 strftime$64:
	; Assign longMonthList £temporary2946
	mov [rbp + 84], rax

 strftime$65:
	; SignedGreaterThanEqual 70 totalDays 3
	cmp qword [rbp + 96], 3
	jge strftime$70

 strftime$66:
	; BinaryAdd £temporary2948 totalDays 4
	mov rax, [rbp + 96]
	add rax, 4

 strftime$67:
	; IntegralToIntegral £temporary2949 £temporary2948
	cmp rax, 0
	jge strftime$68
	neg rax
	neg eax

 strftime$68:
	; Assign yearDaySunday £temporary2949
	mov [rbp + 104], eax

 strftime$69:
	; Goto 74
	jmp strftime$74

 strftime$70:
	; BinarySubtract £temporary2950 totalDays 3
	mov rax, [rbp + 96]
	sub rax, 3

 strftime$71:
	; SignedModulo £temporary2951 £temporary2950 7
	xor rdx, rdx
	idiv qword [int8$7#]

 strftime$72:
	; IntegralToIntegral £temporary2952 £temporary2951
	cmp rdx, 0
	jge strftime$73
	neg rdx
	neg edx

 strftime$73:
	; Assign yearDaySunday £temporary2952
	mov [rbp + 104], edx

 strftime$74:
	; SignedGreaterThanEqual 79 totalDays 4
	cmp qword [rbp + 96], 4
	jge strftime$79

 strftime$75:
	; BinaryAdd £temporary2954 totalDays 3
	mov rax, [rbp + 96]
	add rax, 3

 strftime$76:
	; IntegralToIntegral £temporary2955 £temporary2954
	cmp rax, 0
	jge strftime$77
	neg rax
	neg eax

 strftime$77:
	; Assign yearDayMonday £temporary2955
	mov [rbp + 108], eax

 strftime$78:
	; Goto 83
	jmp strftime$83

 strftime$79:
	; BinarySubtract £temporary2956 totalDays 4
	mov rax, [rbp + 96]
	sub rax, 4

 strftime$80:
	; SignedModulo £temporary2957 £temporary2956 7
	xor rdx, rdx
	idiv qword [int8$7#]

 strftime$81:
	; IntegralToIntegral £temporary2958 £temporary2957
	cmp rdx, 0
	jge strftime$82
	neg rdx
	neg edx

 strftime$82:
	; Assign yearDayMonday £temporary2958
	mov [rbp + 108], edx

 strftime$83:
	; Assign index 0
	mov dword [rbp + 112], 0

 strftime$84:
	; IntegralToIntegral £temporary2960 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$85:
	; BinaryAdd £temporary2962 fmt £temporary2960
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$86:
	; Dereference £temporary2959 -> £temporary2962 £temporary2962 0

 strftime$87:
	; Equal 364 £temporary2959 -> £temporary2962 0
	cmp byte [rsi], 0
	je strftime$364

 strftime$88:
	; IntegralToIntegral £temporary2966 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$89:
	; BinaryAdd £temporary2968 fmt £temporary2966
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$90:
	; Dereference £temporary2965 -> £temporary2968 £temporary2968 0

 strftime$91:
	; NotEqual 336 £temporary2965 -> £temporary2968 37
	cmp byte [rsi], 37
	jne strftime$336

 strftime$92:
	; BinaryAdd index index 1
	inc dword [rbp + 112]

 strftime$93:
	; Assign £temporary2970 index
	mov eax, [rbp + 112]

 strftime$94:
	; IntegralToIntegral £temporary2972 £temporary2970
	mov rbx, 4294967295
	and rax, rbx

 strftime$95:
	; BinaryAdd £temporary2974 fmt £temporary2972
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$96:
	; Dereference £temporary2971 -> £temporary2974 £temporary2974 0

 strftime$97:
	; Case 121 £temporary2971 -> £temporary2974 97
	mov al, [rsi]
	cmp al, 97
	je strftime$121

 strftime$98:
	; Case 132 £temporary2971 -> £temporary2974 65
	cmp al, 65
	je strftime$132

 strftime$99:
	; Case 143 £temporary2971 -> £temporary2974 98
	cmp al, 98
	je strftime$143

 strftime$100:
	; Case 154 £temporary2971 -> £temporary2974 66
	cmp al, 66
	je strftime$154

 strftime$101:
	; Case 165 £temporary2971 -> £temporary2974 99
	cmp al, 99
	je strftime$165

 strftime$102:
	; Case 185 £temporary2971 -> £temporary2974 100
	cmp al, 100
	je strftime$185

 strftime$103:
	; Case 193 £temporary2971 -> £temporary2974 72
	cmp al, 72
	je strftime$193

 strftime$104:
	; Case 201 £temporary2971 -> £temporary2974 73
	cmp al, 73
	je strftime$201

 strftime$105:
	; Case 210 £temporary2971 -> £temporary2974 106
	cmp al, 106
	je strftime$210

 strftime$106:
	; Case 218 £temporary2971 -> £temporary2974 109
	cmp al, 109
	je strftime$218

 strftime$107:
	; Case 227 £temporary2971 -> £temporary2974 77
	cmp al, 77
	je strftime$227

 strftime$108:
	; Case 235 £temporary2971 -> £temporary2974 112
	cmp al, 112
	je strftime$235

 strftime$109:
	; Case 247 £temporary2971 -> £temporary2974 83
	cmp al, 83
	je strftime$247

 strftime$110:
	; Case 255 £temporary2971 -> £temporary2974 85
	cmp al, 85
	je strftime$255

 strftime$111:
	; Case 262 £temporary2971 -> £temporary2974 119
	cmp al, 119
	je strftime$262

 strftime$112:
	; Case 270 £temporary2971 -> £temporary2974 87
	cmp al, 87
	je strftime$270

 strftime$113:
	; Case 277 £temporary2971 -> £temporary2974 120
	cmp al, 120
	je strftime$277

 strftime$114:
	; Case 289 £temporary2971 -> £temporary2974 88
	cmp al, 88
	je strftime$289

 strftime$115:
	; Case 301 £temporary2971 -> £temporary2974 121
	cmp al, 121
	je strftime$301

 strftime$116:
	; Case 310 £temporary2971 -> £temporary2974 89
	cmp al, 89
	je strftime$310

 strftime$117:
	; Case 319 £temporary2971 -> £temporary2974 90
	cmp al, 90
	je strftime$319

 strftime$118:
	; Case 325 £temporary2971 -> £temporary2974 37
	cmp al, 37
	je strftime$325

 strftime$119:
	; CaseEnd £temporary2971 -> £temporary2974

 strftime$120:
	; Goto 330
	jmp strftime$330

 strftime$121:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$122:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$123:
	; Dereference £temporary2975 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$124:
	; IntegralToIntegral £temporary2977 £temporary2975 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$125:
	; UnsignedMultiply £temporary2978 £temporary2977 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$126:
	; BinaryAdd £temporary2979 shortDayList £temporary2978
	mov rsi, [rbp + 60]
	add rsi, rax

 strftime$127:
	; Dereference £temporary2976 -> £temporary2979 £temporary2979 0

 strftime$128:
	; Parameter 168 pointer £temporary2976 -> £temporary2979
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
	; Goto 343
	jmp strftime$343

 strftime$132:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$133:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$134:
	; Dereference £temporary2981 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$135:
	; IntegralToIntegral £temporary2983 £temporary2981 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$136:
	; UnsignedMultiply £temporary2984 £temporary2983 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$137:
	; BinaryAdd £temporary2985 longDayList £temporary2984
	mov rsi, [rbp + 76]
	add rsi, rax

 strftime$138:
	; Dereference £temporary2982 -> £temporary2985 £temporary2985 0

 strftime$139:
	; Parameter 168 pointer £temporary2982 -> £temporary2985
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
	; Goto 343
	jmp strftime$343

 strftime$143:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$144:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$145:
	; Dereference £temporary2987 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$146:
	; IntegralToIntegral £temporary2989 £temporary2987 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$147:
	; UnsignedMultiply £temporary2990 £temporary2989 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$148:
	; BinaryAdd £temporary2991 shortMonthList £temporary2990
	mov rsi, [rbp + 68]
	add rsi, rax

 strftime$149:
	; Dereference £temporary2988 -> £temporary2991 £temporary2991 0

 strftime$150:
	; Parameter 168 pointer £temporary2988 -> £temporary2991
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
	; Goto 343
	jmp strftime$343

 strftime$154:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$155:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$156:
	; Dereference £temporary2993 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$157:
	; IntegralToIntegral £temporary2995 £temporary2993 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$158:
	; UnsignedMultiply £temporary2996 £temporary2995 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$159:
	; BinaryAdd £temporary2997 longMonthList £temporary2996
	mov rsi, [rbp + 84]
	add rsi, rax

 strftime$160:
	; Dereference £temporary2994 -> £temporary2997 £temporary2997 0

 strftime$161:
	; Parameter 168 pointer £temporary2994 -> £temporary2997
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
	; Goto 343
	jmp strftime$343

 strftime$165:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$166:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$167:
	; Parameter 168 pointer "%02i-%02i-%02i %02i:%02i:%02i"
	mov qword [rbp + 168], string_2502i2D2502i2D2502i202502i3A2502i3A2502i#

 strftime$168:
	; Dereference £temporary2999 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$169:
	; BinaryAdd £temporary3000 £temporary2999 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$170:
	; Parameter 176 signedint £temporary3000
	mov [rbp + 176], eax

 strftime$171:
	; Dereference £temporary3001 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$172:
	; BinaryAdd £temporary3002 £temporary3001 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$173:
	; Parameter 180 signedint £temporary3002
	mov [rbp + 180], eax

 strftime$174:
	; Dereference £temporary3003 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$175:
	; Parameter 184 signedint £temporary3003 -> tp
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

 strftime$176:
	; Dereference £temporary3004 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$177:
	; Parameter 188 signedint £temporary3004 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 188], eax

 strftime$178:
	; Dereference £temporary3005 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$179:
	; Parameter 192 signedint £temporary3005 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 192], eax

 strftime$180:
	; Dereference £temporary3006 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$181:
	; Parameter 196 signedint £temporary3006 -> tp
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
	; Goto 343
	jmp strftime$343

 strftime$185:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$186:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$187:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

 strftime$188:
	; Dereference £temporary3008 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$189:
	; Parameter 176 signedint £temporary3008 -> tp
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
	; Goto 343
	jmp strftime$343

 strftime$193:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$194:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$195:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

 strftime$196:
	; Dereference £temporary3010 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$197:
	; Parameter 176 signedint £temporary3010 -> tp
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
	; Goto 343
	jmp strftime$343

 strftime$201:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$202:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$203:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

 strftime$204:
	; Dereference £temporary3012 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$205:
	; SignedModulo £temporary3013 £temporary3012 -> tp 12
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [int4$12#]

 strftime$206:
	; Parameter 176 signedint £temporary3013
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
	; Goto 343
	jmp strftime$343

 strftime$210:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$211:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$212:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

 strftime$213:
	; Dereference £temporary3015 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$214:
	; Parameter 176 signedint £temporary3015 -> tp
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
	; Goto 343
	jmp strftime$343

 strftime$218:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$219:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$220:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

 strftime$221:
	; Dereference £temporary3017 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$222:
	; BinaryAdd £temporary3018 £temporary3017 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$223:
	; Parameter 176 signedint £temporary3018
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
	; Goto 343
	jmp strftime$343

 strftime$227:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$228:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$229:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

 strftime$230:
	; Dereference £temporary3020 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$231:
	; Parameter 176 signedint £temporary3020 -> tp
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
	; Goto 343
	jmp strftime$343

 strftime$235:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$236:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$237:
	; Parameter 168 pointer "%s"
	mov qword [rbp + 168], string_25s#

 strftime$238:
	; Dereference £temporary3022 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$239:
	; SignedGreaterThanEqual 242 £temporary3022 -> tp 12
	cmp dword [rsi + 8], 12
	jge strftime$242

 strftime$240:
	; Assign £temporary3024 "AM"
	mov eax, string_AM#

 strftime$241:
	; Goto 243
	jmp strftime$243

 strftime$242:
	; Assign £temporary3024 "PM"
	mov eax, string_PM#

 strftime$243:
	; Parameter 176 pointer £temporary3024
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
	; Goto 343
	jmp strftime$343

 strftime$247:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$248:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$249:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

 strftime$250:
	; Dereference £temporary3026 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$251:
	; Parameter 176 signedint £temporary3026 -> tp
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
	; Goto 343
	jmp strftime$343

 strftime$255:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$256:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$257:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

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
	; Goto 343
	jmp strftime$343

 strftime$262:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$263:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$264:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

 strftime$265:
	; Dereference £temporary3029 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$266:
	; Parameter 176 signedint £temporary3029 -> tp
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
	; Goto 343
	jmp strftime$343

 strftime$270:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$271:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$272:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

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
	; Goto 343
	jmp strftime$343

 strftime$277:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$278:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$279:
	; Parameter 168 pointer "%02i:%02i:%02i"
	mov qword [rbp + 168], string_2502i3A2502i3A2502i#

 strftime$280:
	; Dereference £temporary3032 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$281:
	; Parameter 176 signedint £temporary3032 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$282:
	; Dereference £temporary3033 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$283:
	; Parameter 180 signedint £temporary3033 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$284:
	; Dereference £temporary3034 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$285:
	; Parameter 184 signedint £temporary3034 -> tp
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
	; Goto 343
	jmp strftime$343

 strftime$289:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$290:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$291:
	; Parameter 168 pointer "%02i:%02i:%02i"
	mov qword [rbp + 168], string_2502i3A2502i3A2502i#

 strftime$292:
	; Dereference £temporary3036 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$293:
	; Parameter 176 signedint £temporary3036 -> tp
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$294:
	; Dereference £temporary3037 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$295:
	; Parameter 180 signedint £temporary3037 -> tp
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$296:
	; Dereference £temporary3038 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$297:
	; Parameter 184 signedint £temporary3038 -> tp
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
	; Goto 343
	jmp strftime$343

 strftime$301:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$302:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$303:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

 strftime$304:
	; Dereference £temporary3040 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$305:
	; SignedModulo £temporary3041 £temporary3040 -> tp 100
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [int4$100#]

 strftime$306:
	; Parameter 176 signedint £temporary3041
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
	; Goto 343
	jmp strftime$343

 strftime$310:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$311:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$312:
	; Parameter 168 pointer "%i"
	mov qword [rbp + 168], string_25i#

 strftime$313:
	; Dereference £temporary3043 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$314:
	; BinaryAdd £temporary3044 £temporary3043 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$315:
	; Parameter 176 signedint £temporary3044
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
	; Goto 343
	jmp strftime$343

 strftime$319:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$320:
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$321:
	; Parameter 168 pointer ""
	mov qword [rbp + 168], string_#

 strftime$322:
	; Call 136 strcpy 0
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
	; Parameter 160 pointer add
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$327:
	; Parameter 168 pointer "%"
	mov qword [rbp + 168], string_25#

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
	mov qword [rbp + 168], string_#

 strftime$333:
	; Call 136 strcpy 0
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
	; Dereference £temporary3049 -> add add 0
	mov rsi, rbp
	add rsi, 116

 strftime$337:
	; IntegralToIntegral £temporary3051 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$338:
	; BinaryAdd £temporary3053 fmt £temporary3051
	mov rdi, [rbp + 36]
	add rdi, rax

 strftime$339:
	; Dereference £temporary3050 -> £temporary3053 £temporary3053 0

 strftime$340:
	; Assign £temporary3049 -> add £temporary3050 -> £temporary3053
	mov al, [rdi]
	mov [rsi], al

 strftime$341:
	; Dereference £temporary3054 -> add add 0
	mov rsi, rbp
	add rsi, 116

 strftime$342:
	; Assign £temporary3054 -> add 0
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
	; GetReturnValue £temporary3055

 strftime$348:
	; Assign x £temporary3055
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
	; GetReturnValue £temporary3056

 strftime$354:
	; Assign y £temporary3056
	mov [rbp + 140], ebx

 strftime$355:
	; BinaryAdd £temporary3057 x y
	mov eax, [rbp + 136]
	add eax, [rbp + 140]

 strftime$356:
	; SignedGreaterThanEqual 364 £temporary3057 smax
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
	; Goto 84
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
	; GetReturnValue £temporary3060

 strftime$369:
	; SetReturnValue

 strftime$370:
	; Return £temporary3060
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strftime$371:
	; FunctionEnd strftime
