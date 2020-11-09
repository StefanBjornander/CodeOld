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
	; Return -1
	mov rbx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 clock$1:
	; FunctionEnd clock

section .text

 time:
	; AssignRegister rax 201
	mov rax, 201

 time$1:
	; Address £temporary2724 time
	mov rdi, rbp
	add rdi, 32

 time$2:
	; IntegralToIntegral £temporary2725 £temporary2724

 time$3:
	; AssignRegister rdi £temporary2725

 time$4:
	; SysCall
	syscall

 time$5:
	; Equal 8 timePtr 0
	cmp qword [rbp + 24], 0
	je time$8

 time$6:
	; Dereference £temporary2727 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 time$7:
	; Assign £temporary2727 -> timePtr time
	mov rax, [rbp + 32]
	mov [rsi], rax

 time$8:
	; Return time
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 time$9:
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
	; Dereference £temporary2730 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$2:
	; BinarySubtract £temporary2731 £temporary2730 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 mktime$3:
	; SignedDivide £temporary2732 £temporary2731 4
	xor edx, edx
	idiv dword [int4$4#]

 mktime$4:
	; IntegralToIntegral £temporary2733 £temporary2732
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

 mktime$5:
	; Assign leapDays £temporary2733
	mov [rbp + 32], rax

 mktime$6:
	; Dereference £temporary2734 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$7:
	; BinarySubtract £temporary2735 £temporary2734 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 mktime$8:
	; SignedMultiply £temporary2736 £temporary2735 365
	xor edx, edx
	imul dword [int4$365#]

 mktime$9:
	; IntegralToIntegral £temporary2737 £temporary2736
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

 mktime$10:
	; BinaryAdd £temporary2738 £temporary2737 leapDays
	add rax, [rbp + 32]

 mktime$11:
	; Dereference £temporary2739 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$12:
	; IntegralToIntegral £temporary2740 £temporary2739 -> tp
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

 mktime$13:
	; BinaryAdd totalDays £temporary2738 £temporary2740
	add rax, rbx
	mov [rbp + 40], rax

 mktime$14:
	; SignedMultiply £temporary2742 totalDays 86400
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [int8$86400#]
	mov rbx, rax

 mktime$15:
	; Dereference £temporary2743 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$16:
	; IntegralToIntegral £temporary2744 £temporary2743 -> tp
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

 mktime$17:
	; SignedMultiply £temporary2745 £temporary2744 3600
	xor rdx, rdx
	imul qword [int8$3600#]

 mktime$18:
	; BinaryAdd £temporary2746 £temporary2742 £temporary2745
	add rbx, rax

 mktime$19:
	; Dereference £temporary2747 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$20:
	; IntegralToIntegral £temporary2748 £temporary2747 -> tp
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

 mktime$21:
	; SignedMultiply £temporary2749 £temporary2748 60
	xor rdx, rdx
	imul qword [int8$60#]

 mktime$22:
	; BinaryAdd £temporary2750 £temporary2746 £temporary2749
	add rbx, rax

 mktime$23:
	; Dereference £temporary2751 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$24:
	; IntegralToIntegral £temporary2752 £temporary2751 -> tp
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

 mktime$25:
	; BinaryAdd £temporary2753 £temporary2750 £temporary2752
	add rbx, rax

 mktime$26:
	; Return £temporary2753
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

@4766$g_timeStruct:
	; InitializerZero 36
	times 36 db 0

section .data

int8$7#:
	; Initializer Signed_Long_Int 7
	dq 7

section .data

int4$100#:
	; Initializer SignedInt 100
	dd 100

section .data

int4$400#:
	; Initializer SignedInt 400
	dd 400

section .data

Array_4#:
	; Initializer Array 4
	dq 4

section .text

 gmtime:
	; Assign year 1970
	mov dword [rbp + 32], 1970

 gmtime$1:
	; Equal 87 timePtr 0
	cmp qword [rbp + 24], 0
	je gmtime$87

 gmtime$2:
	; Dereference £temporary2755 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 gmtime$3:
	; Assign time £temporary2755 -> timePtr
	mov rax, [rsi]
	mov [rbp + 36], rax

 gmtime$4:
	; SignedModulo secondsOfDay time 86400
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 44], rdx

 gmtime$5:
	; SignedDivide £temporary2758 secondsOfDay 3600
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

 gmtime$6:
	; IntegralToIntegral £temporary2759 £temporary2758
	cmp rax, 0
	jge gmtime$7
	neg rax
	neg eax

 gmtime$7:
	; Assign g_timeStruct.tm_hour £temporary2759
	mov [@4766$g_timeStruct + 8], eax

 gmtime$8:
	; SignedModulo £temporary2761 secondsOfDay 3600
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

 gmtime$9:
	; SignedDivide £temporary2762 £temporary2761 60
	mov rax, rdx
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtime$10:
	; IntegralToIntegral £temporary2763 £temporary2762
	cmp rax, 0
	jge gmtime$11
	neg rax
	neg eax

 gmtime$11:
	; Assign g_timeStruct.tm_min £temporary2763
	mov [@4766$g_timeStruct + 4], eax

 gmtime$12:
	; SignedModulo £temporary2765 secondsOfDay 3600
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

 gmtime$13:
	; SignedModulo £temporary2766 £temporary2765 60
	mov rax, rdx
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtime$14:
	; IntegralToIntegral £temporary2767 £temporary2766
	cmp rdx, 0
	jge gmtime$15
	neg rdx
	neg edx

 gmtime$15:
	; Assign g_timeStruct.tm_sec £temporary2767
	mov [@4766$g_timeStruct], edx

 gmtime$16:
	; SignedDivide totalDays time 86400
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 52], rax

 gmtime$17:
	; SignedGreaterThanEqual 22 totalDays 3
	cmp qword [rbp + 52], 3
	jge gmtime$22

 gmtime$18:
	; BinaryAdd £temporary2771 totalDays 4
	mov rax, [rbp + 52]
	add rax, 4

 gmtime$19:
	; IntegralToIntegral £temporary2772 £temporary2771
	cmp rax, 0
	jge gmtime$20
	neg rax
	neg eax

 gmtime$20:
	; Assign g_timeStruct.tm_wday £temporary2772
	mov [@4766$g_timeStruct + 24], eax

 gmtime$21:
	; Goto 26
	jmp gmtime$26

 gmtime$22:
	; BinarySubtract £temporary2774 totalDays 3
	mov rax, [rbp + 52]
	sub rax, 3

 gmtime$23:
	; SignedModulo £temporary2775 £temporary2774 7
	xor rdx, rdx
	idiv qword [int8$7#]

 gmtime$24:
	; IntegralToIntegral £temporary2776 £temporary2775
	cmp rdx, 0
	jge gmtime$25
	neg rdx
	neg edx

 gmtime$25:
	; Assign g_timeStruct.tm_wday £temporary2776
	mov [@4766$g_timeStruct + 24], edx

 gmtime$26:
	; SignedModulo £temporary2777 year 4
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$4#]

 gmtime$27:
	; NotEqual 30 £temporary2777 0
	cmp edx, 0
	jne gmtime$30

 gmtime$28:
	; SignedModulo £temporary2779 year 100
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$100#]

 gmtime$29:
	; NotEqual 32 £temporary2779 0
	cmp edx, 0
	jne gmtime$32

 gmtime$30:
	; SignedModulo £temporary2782 year 400
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$400#]

 gmtime$31:
	; NotEqual 34 £temporary2782 0
	cmp edx, 0
	jne gmtime$34

 gmtime$32:
	; Assign £temporary2785 1
	mov eax, 1

 gmtime$33:
	; Goto 35
	jmp gmtime$35

 gmtime$34:
	; Assign £temporary2785 0
	mov eax, 0

 gmtime$35:
	; Assign leapYear £temporary2785
	mov [rbp + 60], eax

 gmtime$36:
	; Equal 39 leapYear 0
	cmp dword [rbp + 60], 0
	je gmtime$39

 gmtime$37:
	; Assign £temporary2787 366
	mov eax, 366

 gmtime$38:
	; Goto 40
	jmp gmtime$40

 gmtime$39:
	; Assign £temporary2787 365
	mov eax, 365

 gmtime$40:
	; Assign daysOfYear £temporary2787
	mov [rbp + 64], eax

 gmtime$41:
	; IntegralToIntegral £temporary2788 daysOfYear
	mov eax, [rbp + 64]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$42
	neg eax
	neg rax

 gmtime$42:
	; SignedGreaterThanEqual 83 totalDays £temporary2788
	cmp [rbp + 52], rax
	jge gmtime$83

 gmtime$43:
	; BinarySubtract g_timeStruct.tm_year year 1900
	mov eax, [rbp + 32]
	sub eax, 1900
	mov [@4766$g_timeStruct + 20], eax

 gmtime$44:
	; IntegralToIntegral £temporary2793 totalDays
	mov rax, [rbp + 52]
	cmp rax, 0
	jge gmtime$45
	neg rax
	neg eax

 gmtime$45:
	; Assign g_timeStruct.tm_yday £temporary2793
	mov [@4766$g_timeStruct + 28], eax

 gmtime$46:
	; Assign daysOfMonths[0] 31
	mov dword [rbp + 68], 31

 gmtime$47:
	; Equal 50 leapYear 0
	cmp dword [rbp + 60], 0
	je gmtime$50

 gmtime$48:
	; Assign £temporary2795 29
	mov eax, 29

 gmtime$49:
	; Goto 51
	jmp gmtime$51

 gmtime$50:
	; Assign £temporary2795 28
	mov eax, 28

 gmtime$51:
	; Assign daysOfMonths[1] £temporary2795
	mov [rbp + 72], eax

 gmtime$52:
	; Assign daysOfMonths[2] 31
	mov dword [rbp + 76], 31

 gmtime$53:
	; Assign daysOfMonths[3] 30
	mov dword [rbp + 80], 30

 gmtime$54:
	; Assign daysOfMonths[4] 31
	mov dword [rbp + 84], 31

 gmtime$55:
	; Assign daysOfMonths[5] 30
	mov dword [rbp + 88], 30

 gmtime$56:
	; Assign daysOfMonths[6] 30
	mov dword [rbp + 92], 30

 gmtime$57:
	; Assign daysOfMonths[7] 31
	mov dword [rbp + 96], 31

 gmtime$58:
	; Assign daysOfMonths[8] 30
	mov dword [rbp + 100], 30

 gmtime$59:
	; Assign daysOfMonths[9] 31
	mov dword [rbp + 104], 31

 gmtime$60:
	; Assign daysOfMonths[10] 30
	mov dword [rbp + 108], 30

 gmtime$61:
	; Assign daysOfMonths[11] 31
	mov dword [rbp + 112], 31

 gmtime$62:
	; Assign month 0
	mov dword [rbp + 116], 0

 gmtime$63:
	; IntegralToIntegral £temporary2809 month
	mov eax, [rbp + 116]
	mov rbx, 4294967295
	and rax, rbx

 gmtime$64:
	; UnsignedMultiply £temporary2810 £temporary2809 4
	xor rdx, rdx
	mul qword [Array_4#]

 gmtime$65:
	; BinaryAdd £temporary2811 daysOfMonths £temporary2810
	mov rsi, rbp
	add rsi, 68
	add rsi, rax

 gmtime$66:
	; Dereference £temporary2808 -> £temporary2811 £temporary2811 0

 gmtime$67:
	; IntegralToIntegral £temporary2812 £temporary2808 -> £temporary2811
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$68
	neg eax
	neg rax

 gmtime$68:
	; SignedLessThan 77 totalDays £temporary2812
	cmp [rbp + 52], rax
	jl gmtime$77

 gmtime$69:
	; IntegralToIntegral £temporary2815 month
	mov eax, [rbp + 116]
	mov rbx, 4294967295
	and rax, rbx

 gmtime$70:
	; UnsignedMultiply £temporary2816 £temporary2815 4
	xor rdx, rdx
	mul qword [Array_4#]

 gmtime$71:
	; BinaryAdd £temporary2817 daysOfMonths £temporary2816
	mov rsi, rbp
	add rsi, 68
	add rsi, rax

 gmtime$72:
	; Dereference £temporary2814 -> £temporary2817 £temporary2817 0

 gmtime$73:
	; IntegralToIntegral £temporary2818 £temporary2814 -> £temporary2817
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$74
	neg eax
	neg rax

 gmtime$74:
	; BinarySubtract totalDays totalDays £temporary2818
	sub [rbp + 52], rax

 gmtime$75:
	; BinaryAdd month month 1
	inc dword [rbp + 116]

 gmtime$76:
	; Goto 63
	jmp gmtime$63

 gmtime$77:
	; Assign g_timeStruct.tm_mon month
	mov eax, [rbp + 116]
	mov [@4766$g_timeStruct + 16], eax

 gmtime$78:
	; BinaryAdd £temporary2823 totalDays 1
	mov rax, [rbp + 52]
	inc rax

 gmtime$79:
	; IntegralToIntegral £temporary2824 £temporary2823
	cmp rax, 0
	jge gmtime$80
	neg rax
	neg eax

 gmtime$80:
	; Assign g_timeStruct.tm_mday £temporary2824
	mov [@4766$g_timeStruct + 12], eax

 gmtime$81:
	; Assign g_timeStruct.tm_isdst -1
	mov dword [@4766$g_timeStruct + 32], -1

 gmtime$82:
	; Return @4766$g_timeStruct
	mov rbx, @4766$g_timeStruct
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$83:
	; BinaryAdd year year 1
	inc dword [rbp + 32]

 gmtime$84:
	; IntegralToIntegral £temporary2827 daysOfYear
	mov eax, [rbp + 64]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$85
	neg eax
	neg rax

 gmtime$85:
	; BinarySubtract totalDays totalDays £temporary2827
	sub [rbp + 52], rax

 gmtime$86:
	; Goto 26
	jmp gmtime$26

 gmtime$87:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$88:
	; FunctionEnd gmtime

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .text

 difftime:
	; BinarySubtract £temporary2830 time2 time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

 difftime$1:
	; IntegralToFloating £temporary2831 £temporary2830
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 difftime$2:
	; Return £temporary2831
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 difftime$3:
	; FunctionEnd difftime

section .data

@4778$g_timeString:
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

@4779$g_defaultShortDayList:
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

@4780$g_defaultLongDayList:
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

@4781$g_defaultShortMonthList:
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

@4782$g_defaultLongMonthList:
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

string_25s2025s20252i202502i3A2502i3A2502i202504i#:
	; Initializer String %s %s %2i %02i:%02i:%02i %04i
	db "%s %s %2i %02i:%02i:%02i %04i", 0

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
	; Dereference £temporary2833 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$3:
	; Assign £temporary2834 £temporary2833 -> localeConvPtr
	mov rax, [rsi + 8]

 asctime$4:
	; Goto 6
	jmp asctime$6

 asctime$5:
	; Assign £temporary2834 0
	mov rax, 0

 asctime$6:
	; Assign shortDayList £temporary2834
	mov [rbp + 40], rax

 asctime$7:
	; Equal 11 localeConvPtr 0
	cmp qword [rbp + 32], 0
	je asctime$11

 asctime$8:
	; Dereference £temporary2836 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$9:
	; Assign £temporary2837 £temporary2836 -> localeConvPtr
	mov rax, [rsi + 24]

 asctime$10:
	; Goto 12
	jmp asctime$12

 asctime$11:
	; Assign £temporary2837 0
	mov rax, 0

 asctime$12:
	; Assign shortMonthList £temporary2837
	mov [rbp + 48], rax

 asctime$13:
	; Equal 16 shortDayList 0
	cmp qword [rbp + 40], 0
	je asctime$16

 asctime$14:
	; Assign £temporary2839 shortDayList
	mov rax, [rbp + 40]

 asctime$15:
	; Goto 17
	jmp asctime$17

 asctime$16:
	; Assign £temporary2839 g_defaultShortDayList
	mov rax, @4779$g_defaultShortDayList

 asctime$17:
	; Assign shortDayList £temporary2839
	mov [rbp + 40], rax

 asctime$18:
	; Equal 21 shortMonthList 0
	cmp qword [rbp + 48], 0
	je asctime$21

 asctime$19:
	; Assign £temporary2841 shortMonthList
	mov rax, [rbp + 48]

 asctime$20:
	; Goto 22
	jmp asctime$22

 asctime$21:
	; Assign £temporary2841 g_defaultShortMonthList
	mov rax, @4781$g_defaultShortMonthList

 asctime$22:
	; Assign shortMonthList £temporary2841
	mov [rbp + 48], rax

 asctime$23:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asctime$24:
	; Parameter pointer g_timeString 80
	mov qword [rbp + 80], @4778$g_timeString

 asctime$25:
	; Parameter pointer "%s %s %2i %02i:%02i:%02i %04i" 88
	mov qword [rbp + 88], string_25s2025s20252i202502i3A2502i3A2502i202504i#

 asctime$26:
	; Dereference £temporary2842 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$27:
	; IntegralToIntegral £temporary2844 £temporary2842 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 asctime$28:
	; UnsignedMultiply £temporary2845 £temporary2844 8
	xor rdx, rdx
	mul qword [int8$8#]

 asctime$29:
	; BinaryAdd £temporary2846 shortDayList £temporary2845
	mov rsi, [rbp + 40]
	add rsi, rax

 asctime$30:
	; Dereference £temporary2843 -> £temporary2846 £temporary2846 0

 asctime$31:
	; Parameter pointer £temporary2843 -> £temporary2846 96
	mov rax, [rsi]
	mov [rbp + 96], rax

 asctime$32:
	; Dereference £temporary2847 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$33:
	; IntegralToIntegral £temporary2849 £temporary2847 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 asctime$34:
	; UnsignedMultiply £temporary2850 £temporary2849 8
	xor rdx, rdx
	mul qword [int8$8#]

 asctime$35:
	; BinaryAdd £temporary2851 shortMonthList £temporary2850
	mov rsi, [rbp + 48]
	add rsi, rax

 asctime$36:
	; Dereference £temporary2848 -> £temporary2851 £temporary2851 0

 asctime$37:
	; Parameter pointer £temporary2848 -> £temporary2851 104
	mov rax, [rsi]
	mov [rbp + 104], rax

 asctime$38:
	; Dereference £temporary2852 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$39:
	; Parameter signedint £temporary2852 -> tp 112
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

 asctime$40:
	; Dereference £temporary2853 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$41:
	; Parameter signedint £temporary2853 -> tp 116
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

 asctime$42:
	; Dereference £temporary2854 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$43:
	; Parameter signedint £temporary2854 -> tp 120
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

 asctime$44:
	; Dereference £temporary2855 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$45:
	; Parameter signedint £temporary2855 -> tp 124
	mov eax, [rsi]
	mov [rbp + 124], eax

 asctime$46:
	; Dereference £temporary2856 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$47:
	; BinaryAdd £temporary2857 £temporary2856 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 asctime$48:
	; Parameter signedint £temporary2857 128
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
	mov rbx, @4778$g_timeString
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
	; GetReturnValue £temporary2859

 ctime$6:
	; Parameter pointer £temporary2859 56
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
	; GetReturnValue £temporary2860

 ctime$10:
	; Return £temporary2860
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ctime$11:
	; FunctionEnd ctime

section .data

int4$3600#:
	; Initializer SignedInt 3600
	dd 3600

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
	; GetReturnValue £temporary2861

 localtime$5:
	; Assign tmPtr £temporary2861
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
	; GetReturnValue £temporary2862

 localtime$10:
	; Assign localeConvPtr £temporary2862
	mov [rbp + 40], rbx

 localtime$11:
	; Assign timeZone 0
	mov dword [rbp + 48], 0

 localtime$12:
	; Equal 21 localeConvPtr 0
	cmp qword [rbp + 40], 0
	je localtime$21

 localtime$13:
	; Dereference £temporary2864 -> tmPtr tmPtr 0
	mov rsi, [rbp + 32]

 localtime$14:
	; Equal 18 £temporary2864 -> tmPtr 0
	cmp dword [rsi + 32], 0
	je localtime$18

 localtime$15:
	; Dereference £temporary2865 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 40]

 localtime$16:
	; Assign £temporary2868 £temporary2865 -> localeConvPtr
	mov eax, [rsi]

 localtime$17:
	; Goto 20
	jmp localtime$20

 localtime$18:
	; Dereference £temporary2866 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 40]

 localtime$19:
	; Assign £temporary2868 £temporary2866 -> localeConvPtr
	mov eax, [rsi + 4]

 localtime$20:
	; Assign timeZone £temporary2868
	mov [rbp + 48], eax

 localtime$21:
	; Dereference £temporary2869 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 localtime$22:
	; SignedMultiply £temporary2870 timeZone 3600
	mov eax, [rbp + 48]
	xor edx, edx
	imul dword [int4$3600#]

 localtime$23:
	; IntegralToIntegral £temporary2871 £temporary2870
	mov rbx, 4294967295
	and rax, rbx

 localtime$24:
	; BinaryAdd time £temporary2869 -> timePtr £temporary2871
	mov rbx, [rsi]
	add rbx, rax
	mov [rbp + 52], rbx

 localtime$25:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$26:
	; Address £temporary2873 time
	mov rsi, rbp
	add rsi, 52

 localtime$27:
	; Parameter pointer £temporary2873 84
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
	; GetReturnValue £temporary2874

 localtime$31:
	; Return £temporary2874
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

string_2504d2D2502d2D2502d202502d3A2502d3A2502d#:
	; Initializer String %04d-%02d-%02d %02d:%02d:%02d
	db "%04d-%02d-%02d %02d:%02d:%02d", 0

section .data

string_2502d#:
	; Initializer String %02d
	db "%02d", 0

section .data

string_2503d#:
	; Initializer String %03d
	db "%03d", 0

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

string_2504d2D2502d2D2502d#:
	; Initializer String %04d-%02d-%02d
	db "%04d-%02d-%02d", 0

section .data

string_2502d3A2502d3A2502d#:
	; Initializer String %02d:%02d:%02d
	db "%02d:%02d:%02d", 0

section .data

string_2504d#:
	; Initializer String %04d
	db "%04d", 0

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
	; GetReturnValue £temporary2876

 strftime$4:
	; Assign localeConvPtr £temporary2876
	mov [rbp + 52], rbx

 strftime$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$9

 strftime$6:
	; Dereference £temporary2878 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$7:
	; Assign £temporary2879 £temporary2878 -> localeConvPtr
	mov rax, [rsi + 8]

 strftime$8:
	; Goto 10
	jmp strftime$10

 strftime$9:
	; Assign £temporary2879 0
	mov rax, 0

 strftime$10:
	; Assign shortDayList £temporary2879
	mov [rbp + 60], rax

 strftime$11:
	; Equal 15 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$15

 strftime$12:
	; Dereference £temporary2881 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$13:
	; Assign £temporary2882 £temporary2881 -> localeConvPtr
	mov rax, [rsi + 24]

 strftime$14:
	; Goto 16
	jmp strftime$16

 strftime$15:
	; Assign £temporary2882 0
	mov rax, 0

 strftime$16:
	; Assign shortMonthList £temporary2882
	mov [rbp + 68], rax

 strftime$17:
	; Equal 21 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$21

 strftime$18:
	; Dereference £temporary2884 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$19:
	; Assign £temporary2885 £temporary2884 -> localeConvPtr
	mov rax, [rsi + 16]

 strftime$20:
	; Goto 22
	jmp strftime$22

 strftime$21:
	; Assign £temporary2885 0
	mov rax, 0

 strftime$22:
	; Assign longDayList £temporary2885
	mov [rbp + 76], rax

 strftime$23:
	; Equal 27 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$27

 strftime$24:
	; Dereference £temporary2887 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$25:
	; Assign £temporary2888 £temporary2887 -> localeConvPtr
	mov rax, [rsi + 32]

 strftime$26:
	; Goto 28
	jmp strftime$28

 strftime$27:
	; Assign £temporary2888 0
	mov rax, 0

 strftime$28:
	; Assign longMonthList £temporary2888
	mov [rbp + 84], rax

 strftime$29:
	; PreCall 92 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$30:
	; Parameter pointer s 116
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

 strftime$31:
	; Parameter pointer "" 124
	mov qword [rbp + 124], string_#

 strftime$32:
	; Call strcpy 92 0
	mov qword [rbp + 92], strftime$33
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strcpy

 strftime$33:
	; PostCall 92

 strftime$34:
	; Equal 37 shortDayList 0
	cmp qword [rbp + 60], 0
	je strftime$37

 strftime$35:
	; Assign £temporary2891 shortDayList
	mov rax, [rbp + 60]

 strftime$36:
	; Goto 38
	jmp strftime$38

 strftime$37:
	; Assign £temporary2891 g_defaultShortDayList
	mov rax, @4779$g_defaultShortDayList

 strftime$38:
	; Assign shortDayList £temporary2891
	mov [rbp + 60], rax

 strftime$39:
	; Equal 42 longDayList 0
	cmp qword [rbp + 76], 0
	je strftime$42

 strftime$40:
	; Assign £temporary2893 longDayList
	mov rax, [rbp + 76]

 strftime$41:
	; Goto 43
	jmp strftime$43

 strftime$42:
	; Assign £temporary2893 g_defaultLongDayList
	mov rax, @4780$g_defaultLongDayList

 strftime$43:
	; Assign longDayList £temporary2893
	mov [rbp + 76], rax

 strftime$44:
	; Equal 47 shortMonthList 0
	cmp qword [rbp + 68], 0
	je strftime$47

 strftime$45:
	; Assign £temporary2895 shortMonthList
	mov rax, [rbp + 68]

 strftime$46:
	; Goto 48
	jmp strftime$48

 strftime$47:
	; Assign £temporary2895 g_defaultShortMonthList
	mov rax, @4781$g_defaultShortMonthList

 strftime$48:
	; Assign shortMonthList £temporary2895
	mov [rbp + 68], rax

 strftime$49:
	; Equal 52 longMonthList 0
	cmp qword [rbp + 84], 0
	je strftime$52

 strftime$50:
	; Assign £temporary2897 longMonthList
	mov rax, [rbp + 84]

 strftime$51:
	; Goto 53
	jmp strftime$53

 strftime$52:
	; Assign £temporary2897 g_defaultLongMonthList
	mov rax, @4782$g_defaultLongMonthList

 strftime$53:
	; Assign longMonthList £temporary2897
	mov [rbp + 84], rax

 strftime$54:
	; Dereference £temporary2898 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$55:
	; BinarySubtract £temporary2899 £temporary2898 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 strftime$56:
	; SignedDivide leapDays £temporary2899 4
	xor edx, edx
	idiv dword [int4$4#]
	mov [rbp + 92], eax

 strftime$57:
	; Dereference £temporary2901 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$58:
	; BinarySubtract £temporary2902 £temporary2901 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 strftime$59:
	; SignedMultiply £temporary2903 £temporary2902 365
	xor edx, edx
	imul dword [int4$365#]

 strftime$60:
	; BinaryAdd £temporary2904 £temporary2903 leapDays
	add eax, [rbp + 92]

 strftime$61:
	; Dereference £temporary2905 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$62:
	; BinaryAdd £temporary2906 £temporary2904 £temporary2905 -> tp
	add eax, [rsi + 28]

 strftime$63:
	; IntegralToIntegral £temporary2907 £temporary2906
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge strftime$64
	neg eax
	neg rax

 strftime$64:
	; Assign totalDays £temporary2907
	mov [rbp + 96], rax

 strftime$65:
	; SignedGreaterThanEqual 70 totalDays 3
	cmp qword [rbp + 96], 3
	jge strftime$70

 strftime$66:
	; BinaryAdd £temporary2909 totalDays 4
	mov rax, [rbp + 96]
	add rax, 4

 strftime$67:
	; IntegralToIntegral £temporary2910 £temporary2909
	cmp rax, 0
	jge strftime$68
	neg rax
	neg eax

 strftime$68:
	; Assign yearDaySunday £temporary2910
	mov [rbp + 104], eax

 strftime$69:
	; Goto 74
	jmp strftime$74

 strftime$70:
	; BinarySubtract £temporary2911 totalDays 3
	mov rax, [rbp + 96]
	sub rax, 3

 strftime$71:
	; SignedModulo £temporary2912 £temporary2911 7
	xor rdx, rdx
	idiv qword [int8$7#]

 strftime$72:
	; IntegralToIntegral £temporary2913 £temporary2912
	cmp rdx, 0
	jge strftime$73
	neg rdx
	neg edx

 strftime$73:
	; Assign yearDaySunday £temporary2913
	mov [rbp + 104], edx

 strftime$74:
	; SignedGreaterThanEqual 79 totalDays 4
	cmp qword [rbp + 96], 4
	jge strftime$79

 strftime$75:
	; BinaryAdd £temporary2915 totalDays 3
	mov rax, [rbp + 96]
	add rax, 3

 strftime$76:
	; IntegralToIntegral £temporary2916 £temporary2915
	cmp rax, 0
	jge strftime$77
	neg rax
	neg eax

 strftime$77:
	; Assign yearDayMonday £temporary2916
	mov [rbp + 108], eax

 strftime$78:
	; Goto 83
	jmp strftime$83

 strftime$79:
	; BinarySubtract £temporary2917 totalDays 4
	mov rax, [rbp + 96]
	sub rax, 4

 strftime$80:
	; SignedModulo £temporary2918 £temporary2917 7
	xor rdx, rdx
	idiv qword [int8$7#]

 strftime$81:
	; IntegralToIntegral £temporary2919 £temporary2918
	cmp rdx, 0
	jge strftime$82
	neg rdx
	neg edx

 strftime$82:
	; Assign yearDayMonday £temporary2919
	mov [rbp + 108], edx

 strftime$83:
	; Assign index 0
	mov dword [rbp + 112], 0

 strftime$84:
	; IntegralToIntegral £temporary2921 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$85:
	; BinaryAdd £temporary2923 fmt £temporary2921
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$86:
	; Dereference £temporary2920 -> £temporary2923 £temporary2923 0

 strftime$87:
	; Equal 358 £temporary2920 -> £temporary2923 0
	cmp byte [rsi], 0
	je strftime$358

 strftime$88:
	; IntegralToIntegral £temporary2927 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$89:
	; BinaryAdd £temporary2929 fmt £temporary2927
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$90:
	; Dereference £temporary2926 -> £temporary2929 £temporary2929 0

 strftime$91:
	; NotEqual 332 £temporary2926 -> £temporary2929 37
	cmp byte [rsi], 37
	jne strftime$332

 strftime$92:
	; BinaryAdd £temporary2931 index 1
	mov eax, [rbp + 112]
	inc eax

 strftime$93:
	; IntegralToIntegral £temporary2933 £temporary2931
	mov rbx, 4294967295
	and rax, rbx

 strftime$94:
	; BinaryAdd £temporary2935 fmt £temporary2933
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$95:
	; Dereference £temporary2932 -> £temporary2935 £temporary2935 0

 strftime$96:
	; Case 120 £temporary2932 -> £temporary2935 97
	mov al, [rsi]
	cmp al, 97
	je strftime$120

 strftime$97:
	; Case 131 £temporary2932 -> £temporary2935 65
	cmp al, 65
	je strftime$131

 strftime$98:
	; Case 142 £temporary2932 -> £temporary2935 98
	cmp al, 98
	je strftime$142

 strftime$99:
	; Case 153 £temporary2932 -> £temporary2935 66
	cmp al, 66
	je strftime$153

 strftime$100:
	; Case 164 £temporary2932 -> £temporary2935 99
	cmp al, 99
	je strftime$164

 strftime$101:
	; Case 184 £temporary2932 -> £temporary2935 100
	cmp al, 100
	je strftime$184

 strftime$102:
	; Case 192 £temporary2932 -> £temporary2935 72
	cmp al, 72
	je strftime$192

 strftime$103:
	; Case 200 £temporary2932 -> £temporary2935 73
	cmp al, 73
	je strftime$200

 strftime$104:
	; Case 209 £temporary2932 -> £temporary2935 106
	cmp al, 106
	je strftime$209

 strftime$105:
	; Case 217 £temporary2932 -> £temporary2935 109
	cmp al, 109
	je strftime$217

 strftime$106:
	; Case 226 £temporary2932 -> £temporary2935 77
	cmp al, 77
	je strftime$226

 strftime$107:
	; Case 234 £temporary2932 -> £temporary2935 112
	cmp al, 112
	je strftime$234

 strftime$108:
	; Case 246 £temporary2932 -> £temporary2935 83
	cmp al, 83
	je strftime$246

 strftime$109:
	; Case 254 £temporary2932 -> £temporary2935 85
	cmp al, 85
	je strftime$254

 strftime$110:
	; Case 261 £temporary2932 -> £temporary2935 119
	cmp al, 119
	je strftime$261

 strftime$111:
	; Case 269 £temporary2932 -> £temporary2935 87
	cmp al, 87
	je strftime$269

 strftime$112:
	; Case 276 £temporary2932 -> £temporary2935 120
	cmp al, 120
	je strftime$276

 strftime$113:
	; Case 290 £temporary2932 -> £temporary2935 88
	cmp al, 88
	je strftime$290

 strftime$114:
	; Case 302 £temporary2932 -> £temporary2935 121
	cmp al, 121
	je strftime$302

 strftime$115:
	; Case 311 £temporary2932 -> £temporary2935 89
	cmp al, 89
	je strftime$311

 strftime$116:
	; Case 320 £temporary2932 -> £temporary2935 90
	cmp al, 90
	je strftime$320

 strftime$117:
	; Case 326 £temporary2932 -> £temporary2935 37
	cmp al, 37
	je strftime$326

 strftime$118:
	; CaseEnd £temporary2932 -> £temporary2935

 strftime$119:
	; Goto 339
	jmp strftime$339

 strftime$120:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$121:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$122:
	; Dereference £temporary2936 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$123:
	; IntegralToIntegral £temporary2938 £temporary2936 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$124:
	; UnsignedMultiply £temporary2939 £temporary2938 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$125:
	; BinaryAdd £temporary2940 shortDayList £temporary2939
	mov rsi, [rbp + 60]
	add rsi, rax

 strftime$126:
	; Dereference £temporary2937 -> £temporary2940 £temporary2940 0

 strftime$127:
	; Parameter pointer £temporary2937 -> £temporary2940 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$128:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$129
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$129:
	; PostCall 136

 strftime$130:
	; Goto 339
	jmp strftime$339

 strftime$131:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$132:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$133:
	; Dereference £temporary2942 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$134:
	; IntegralToIntegral £temporary2944 £temporary2942 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$135:
	; UnsignedMultiply £temporary2945 £temporary2944 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$136:
	; BinaryAdd £temporary2946 longDayList £temporary2945
	mov rsi, [rbp + 76]
	add rsi, rax

 strftime$137:
	; Dereference £temporary2943 -> £temporary2946 £temporary2946 0

 strftime$138:
	; Parameter pointer £temporary2943 -> £temporary2946 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$139:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$140
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$140:
	; PostCall 136

 strftime$141:
	; Goto 339
	jmp strftime$339

 strftime$142:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$143:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$144:
	; Dereference £temporary2948 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$145:
	; IntegralToIntegral £temporary2950 £temporary2948 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$146:
	; UnsignedMultiply £temporary2951 £temporary2950 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$147:
	; BinaryAdd £temporary2952 shortMonthList £temporary2951
	mov rsi, [rbp + 68]
	add rsi, rax

 strftime$148:
	; Dereference £temporary2949 -> £temporary2952 £temporary2952 0

 strftime$149:
	; Parameter pointer £temporary2949 -> £temporary2952 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$150:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$151
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$151:
	; PostCall 136

 strftime$152:
	; Goto 339
	jmp strftime$339

 strftime$153:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$154:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$155:
	; Dereference £temporary2954 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$156:
	; IntegralToIntegral £temporary2956 £temporary2954 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$157:
	; UnsignedMultiply £temporary2957 £temporary2956 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$158:
	; BinaryAdd £temporary2958 longMonthList £temporary2957
	mov rsi, [rbp + 84]
	add rsi, rax

 strftime$159:
	; Dereference £temporary2955 -> £temporary2958 £temporary2958 0

 strftime$160:
	; Parameter pointer £temporary2955 -> £temporary2958 168
	mov rax, [rsi]
	mov [rbp + 168], rax

 strftime$161:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$162
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$162:
	; PostCall 136

 strftime$163:
	; Goto 339
	jmp strftime$339

 strftime$164:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$165:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$166:
	; Parameter pointer "%04d-%02d-%02d %02d:%02d:%02d" 168
	mov qword [rbp + 168], string_2504d2D2502d2D2502d202502d3A2502d3A2502d#

 strftime$167:
	; Dereference £temporary2960 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$168:
	; BinaryAdd £temporary2961 £temporary2960 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$169:
	; Parameter signedint £temporary2961 176
	mov [rbp + 176], eax

 strftime$170:
	; Dereference £temporary2962 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$171:
	; BinaryAdd £temporary2963 £temporary2962 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$172:
	; Parameter signedint £temporary2963 180
	mov [rbp + 180], eax

 strftime$173:
	; Dereference £temporary2964 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$174:
	; Parameter signedint £temporary2964 -> tp 184
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

 strftime$175:
	; Dereference £temporary2965 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$176:
	; Parameter signedint £temporary2965 -> tp 188
	mov eax, [rsi + 8]
	mov [rbp + 188], eax

 strftime$177:
	; Dereference £temporary2966 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$178:
	; Parameter signedint £temporary2966 -> tp 192
	mov eax, [rsi + 4]
	mov [rbp + 192], eax

 strftime$179:
	; Dereference £temporary2967 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$180:
	; Parameter signedint £temporary2967 -> tp 196
	mov eax, [rsi]
	mov [rbp + 196], eax

 strftime$181:
	; Call sprintf 136 24
	mov qword [rbp + 136], strftime$182
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 24
	jmp sprintf

 strftime$182:
	; PostCall 136

 strftime$183:
	; Goto 339
	jmp strftime$339

 strftime$184:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$185:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$186:
	; Parameter pointer "%02d" 168
	mov qword [rbp + 168], string_2502d#

 strftime$187:
	; Dereference £temporary2969 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$188:
	; Parameter signedint £temporary2969 -> tp 176
	mov eax, [rsi + 12]
	mov [rbp + 176], eax

 strftime$189:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$190
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$190:
	; PostCall 136

 strftime$191:
	; Goto 339
	jmp strftime$339

 strftime$192:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$193:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$194:
	; Parameter pointer "%02d" 168
	mov qword [rbp + 168], string_2502d#

 strftime$195:
	; Dereference £temporary2971 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$196:
	; Parameter signedint £temporary2971 -> tp 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$197:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$198
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$198:
	; PostCall 136

 strftime$199:
	; Goto 339
	jmp strftime$339

 strftime$200:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$201:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$202:
	; Parameter pointer "%02d" 168
	mov qword [rbp + 168], string_2502d#

 strftime$203:
	; Dereference £temporary2973 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$204:
	; SignedModulo £temporary2974 £temporary2973 -> tp 12
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [int4$12#]

 strftime$205:
	; Parameter signedint £temporary2974 176
	mov [rbp + 176], edx

 strftime$206:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$207
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$207:
	; PostCall 136

 strftime$208:
	; Goto 339
	jmp strftime$339

 strftime$209:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$210:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$211:
	; Parameter pointer "%03d" 168
	mov qword [rbp + 168], string_2503d#

 strftime$212:
	; Dereference £temporary2976 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$213:
	; Parameter signedint £temporary2976 -> tp 176
	mov eax, [rsi + 28]
	mov [rbp + 176], eax

 strftime$214:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$215
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$215:
	; PostCall 136

 strftime$216:
	; Goto 339
	jmp strftime$339

 strftime$217:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$218:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$219:
	; Parameter pointer "%02d" 168
	mov qword [rbp + 168], string_2502d#

 strftime$220:
	; Dereference £temporary2978 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$221:
	; BinaryAdd £temporary2979 £temporary2978 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$222:
	; Parameter signedint £temporary2979 176
	mov [rbp + 176], eax

 strftime$223:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$224
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$224:
	; PostCall 136

 strftime$225:
	; Goto 339
	jmp strftime$339

 strftime$226:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$227:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$228:
	; Parameter pointer "%02d" 168
	mov qword [rbp + 168], string_2502d#

 strftime$229:
	; Dereference £temporary2981 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$230:
	; Parameter signedint £temporary2981 -> tp 176
	mov eax, [rsi + 4]
	mov [rbp + 176], eax

 strftime$231:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$232
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$232:
	; PostCall 136

 strftime$233:
	; Goto 339
	jmp strftime$339

 strftime$234:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$235:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$236:
	; Parameter pointer "%s" 168
	mov qword [rbp + 168], string_25s#

 strftime$237:
	; Dereference £temporary2983 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$238:
	; SignedGreaterThanEqual 241 £temporary2983 -> tp 12
	cmp dword [rsi + 8], 12
	jge strftime$241

 strftime$239:
	; Assign £temporary2985 "AM"
	mov rax, string_AM#

 strftime$240:
	; Goto 242
	jmp strftime$242

 strftime$241:
	; Assign £temporary2985 "PM"
	mov rax, string_PM#

 strftime$242:
	; Parameter pointer £temporary2985 176
	mov [rbp + 176], rax

 strftime$243:
	; Call sprintf 136 8
	mov qword [rbp + 136], strftime$244
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 8
	jmp sprintf

 strftime$244:
	; PostCall 136

 strftime$245:
	; Goto 339
	jmp strftime$339

 strftime$246:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$247:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$248:
	; Parameter pointer "%02d" 168
	mov qword [rbp + 168], string_2502d#

 strftime$249:
	; Dereference £temporary2987 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$250:
	; Parameter signedint £temporary2987 -> tp 176
	mov eax, [rsi]
	mov [rbp + 176], eax

 strftime$251:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$252
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$252:
	; PostCall 136

 strftime$253:
	; Goto 339
	jmp strftime$339

 strftime$254:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$255:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$256:
	; Parameter pointer "%02d" 168
	mov qword [rbp + 168], string_2502d#

 strftime$257:
	; Parameter signedint yearDaySunday 176
	mov eax, [rbp + 104]
	mov [rbp + 176], eax

 strftime$258:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$259
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$259:
	; PostCall 136

 strftime$260:
	; Goto 339
	jmp strftime$339

 strftime$261:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$262:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$263:
	; Parameter pointer "%02d" 168
	mov qword [rbp + 168], string_2502d#

 strftime$264:
	; Dereference £temporary2990 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$265:
	; Parameter signedint £temporary2990 -> tp 176
	mov eax, [rsi + 24]
	mov [rbp + 176], eax

 strftime$266:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$267
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$267:
	; PostCall 136

 strftime$268:
	; Goto 339
	jmp strftime$339

 strftime$269:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$270:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$271:
	; Parameter pointer "%02d" 168
	mov qword [rbp + 168], string_2502d#

 strftime$272:
	; Parameter signedint yearDayMonday 176
	mov eax, [rbp + 108]
	mov [rbp + 176], eax

 strftime$273:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$274
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$274:
	; PostCall 136

 strftime$275:
	; Goto 339
	jmp strftime$339

 strftime$276:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$277:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$278:
	; Parameter pointer "%04d-%02d-%02d" 168
	mov qword [rbp + 168], string_2504d2D2502d2D2502d#

 strftime$279:
	; Dereference £temporary2993 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$280:
	; BinaryAdd £temporary2994 £temporary2993 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$281:
	; Parameter signedint £temporary2994 176
	mov [rbp + 176], eax

 strftime$282:
	; Dereference £temporary2995 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$283:
	; BinaryAdd £temporary2996 £temporary2995 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$284:
	; Parameter signedint £temporary2996 180
	mov [rbp + 180], eax

 strftime$285:
	; Dereference £temporary2997 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$286:
	; Parameter signedint £temporary2997 -> tp 184
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

 strftime$287:
	; Call sprintf 136 12
	mov qword [rbp + 136], strftime$288
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$288:
	; PostCall 136

 strftime$289:
	; Goto 339
	jmp strftime$339

 strftime$290:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$291:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$292:
	; Parameter pointer "%02d:%02d:%02d" 168
	mov qword [rbp + 168], string_2502d3A2502d3A2502d#

 strftime$293:
	; Dereference £temporary2999 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$294:
	; Parameter signedint £temporary2999 -> tp 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$295:
	; Dereference £temporary3000 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$296:
	; Parameter signedint £temporary3000 -> tp 180
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$297:
	; Dereference £temporary3001 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$298:
	; Parameter signedint £temporary3001 -> tp 184
	mov eax, [rsi]
	mov [rbp + 184], eax

 strftime$299:
	; Call sprintf 136 12
	mov qword [rbp + 136], strftime$300
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

 strftime$300:
	; PostCall 136

 strftime$301:
	; Goto 339
	jmp strftime$339

 strftime$302:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$303:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$304:
	; Parameter pointer "%02d" 168
	mov qword [rbp + 168], string_2502d#

 strftime$305:
	; Dereference £temporary3003 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$306:
	; SignedModulo £temporary3004 £temporary3003 -> tp 100
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [int4$100#]

 strftime$307:
	; Parameter signedint £temporary3004 176
	mov [rbp + 176], edx

 strftime$308:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$309
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$309:
	; PostCall 136

 strftime$310:
	; Goto 339
	jmp strftime$339

 strftime$311:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$312:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$313:
	; Parameter pointer "%04d" 168
	mov qword [rbp + 168], string_2504d#

 strftime$314:
	; Dereference £temporary3006 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$315:
	; BinaryAdd £temporary3007 £temporary3006 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$316:
	; Parameter signedint £temporary3007 176
	mov [rbp + 176], eax

 strftime$317:
	; Call sprintf 136 4
	mov qword [rbp + 136], strftime$318
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

 strftime$318:
	; PostCall 136

 strftime$319:
	; Goto 339
	jmp strftime$339

 strftime$320:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$321:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$322:
	; Parameter pointer "" 168
	mov qword [rbp + 168], string_#

 strftime$323:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$324
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$324:
	; PostCall 136

 strftime$325:
	; Goto 339
	jmp strftime$339

 strftime$326:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$327:
	; Parameter pointer add 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

 strftime$328:
	; Parameter pointer "%" 168
	mov qword [rbp + 168], string_25#

 strftime$329:
	; Call strcpy 136 0
	mov qword [rbp + 136], strftime$330
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

 strftime$330:
	; PostCall 136

 strftime$331:
	; Goto 339
	jmp strftime$339

 strftime$332:
	; Dereference £temporary3011 -> add add 0
	mov rsi, rbp
	add rsi, 116

 strftime$333:
	; IntegralToIntegral £temporary3013 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$334:
	; BinaryAdd £temporary3015 fmt £temporary3013
	mov rdi, [rbp + 36]
	add rdi, rax

 strftime$335:
	; Dereference £temporary3012 -> £temporary3015 £temporary3015 0

 strftime$336:
	; Assign £temporary3011 -> add £temporary3012 -> £temporary3015
	mov al, [rdi]
	mov [rsi], al

 strftime$337:
	; Dereference £temporary3016 -> add add 0
	mov rsi, rbp
	add rsi, 116

 strftime$338:
	; Assign £temporary3016 -> add 0
	mov byte [rsi + 1], 0

 strftime$339:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$340:
	; Parameter pointer s 160
	mov rax, [rbp + 24]
	mov [rbp + 160], rax

 strftime$341:
	; Call strlen 136 0
	mov qword [rbp + 136], strftime$342
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strlen

 strftime$342:
	; PostCall 136

 strftime$343:
	; GetReturnValue £temporary3017

 strftime$344:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 136], ebx

 strftime$345:
	; Parameter pointer add 160
	mov [rbp + 164], rbp
	add qword [rbp + 164], 116

 strftime$346:
	; Call strlen 136 0
	mov qword [rbp + 140], strftime$347
	mov [rbp + 148], rbp
	add rbp, 140
	jmp strlen

 strftime$347:
	; PostCall 136
	mov ebx, [rbp + 136]
	mov eax, ebx

 strftime$348:
	; GetReturnValue £temporary3018

 strftime$349:
	; BinaryAdd £temporary3019 £temporary3017 £temporary3018
	add eax, ebx

 strftime$350:
	; SignedGreaterThanEqual 358 £temporary3019 smax
	cmp eax, [rbp + 32]
	jge strftime$358

 strftime$351:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$352:
	; Parameter pointer s 160
	mov rax, [rbp + 24]
	mov [rbp + 160], rax

 strftime$353:
	; Parameter pointer add 168
	mov [rbp + 168], rbp
	add qword [rbp + 168], 116

 strftime$354:
	; Call strcat 136 0
	mov qword [rbp + 136], strftime$355
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcat

 strftime$355:
	; PostCall 136

 strftime$356:
	; BinaryAdd index index 1
	inc dword [rbp + 112]

 strftime$357:
	; Goto 84
	jmp strftime$84

 strftime$358:
	; PreCall 116 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$359:
	; Parameter pointer s 140
	mov rax, [rbp + 24]
	mov [rbp + 140], rax

 strftime$360:
	; Call strlen 116 0
	mov qword [rbp + 116], strftime$361
	mov [rbp + 124], rbp
	add rbp, 116
	jmp strlen

 strftime$361:
	; PostCall 116

 strftime$362:
	; GetReturnValue £temporary3022

 strftime$363:
	; Return £temporary3022
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strftime$364:
	; FunctionEnd strftime
