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
	; Equal 8 timePtr 0
	cmp qword [rbp + 24], 0
	je time$8

 time$6:
	; Dereference £temporary2694 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 time$7:
	; Assign £temporary2694 -> timePtr time
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
	; Dereference £temporary2697 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$2:
	; BinarySubtract £temporary2698 £temporary2697 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 mktime$3:
	; SignedDivide £temporary2699 £temporary2698 4
	xor edx, edx
	idiv dword [int4$4#]

 mktime$4:
	; IntegralToIntegral £temporary2700 £temporary2699
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

 mktime$5:
	; Assign leapDays £temporary2700
	mov [rbp + 32], rax

 mktime$6:
	; Dereference £temporary2701 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$7:
	; BinarySubtract £temporary2702 £temporary2701 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 mktime$8:
	; SignedMultiply £temporary2703 £temporary2702 365
	xor edx, edx
	imul dword [int4$365#]

 mktime$9:
	; IntegralToIntegral £temporary2704 £temporary2703
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

 mktime$10:
	; BinaryAdd £temporary2705 £temporary2704 leapDays
	add rax, [rbp + 32]

 mktime$11:
	; Dereference £temporary2706 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$12:
	; IntegralToIntegral £temporary2707 £temporary2706 -> tp
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

 mktime$13:
	; BinaryAdd totalDays £temporary2705 £temporary2707
	add rax, rbx
	mov [rbp + 40], rax

 mktime$14:
	; SignedMultiply £temporary2709 totalDays 86400
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [int8$86400#]
	mov rbx, rax

 mktime$15:
	; Dereference £temporary2710 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$16:
	; IntegralToIntegral £temporary2711 £temporary2710 -> tp
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$17
	neg eax
	neg rax

 mktime$17:
	; SignedMultiply £temporary2712 £temporary2711 3600
	xor rdx, rdx
	imul qword [int8$3600#]

 mktime$18:
	; BinaryAdd £temporary2713 £temporary2709 £temporary2712
	add rbx, rax

 mktime$19:
	; Dereference £temporary2714 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$20:
	; IntegralToIntegral £temporary2715 £temporary2714 -> tp
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$21
	neg eax
	neg rax

 mktime$21:
	; SignedMultiply £temporary2716 £temporary2715 60
	xor rdx, rdx
	imul qword [int8$60#]

 mktime$22:
	; BinaryAdd £temporary2717 £temporary2713 £temporary2716
	add rbx, rax

 mktime$23:
	; Dereference £temporary2718 -> tp tp 0
	mov rsi, [rbp + 24]

 mktime$24:
	; IntegralToIntegral £temporary2719 £temporary2718 -> tp
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$25
	neg eax
	neg rax

 mktime$25:
	; BinaryAdd £temporary2720 £temporary2717 £temporary2719
	add rbx, rax

 mktime$26:
	; Return £temporary2720
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

@4741$g_timeStruct:
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
	; Equal 86 timePtr 0
	cmp qword [rbp + 24], 0
	je gmtime$86

 gmtime$2:
	; Dereference £temporary2722 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 gmtime$3:
	; Assign time £temporary2722 -> timePtr
	mov rax, [rsi]
	mov [rbp + 36], rax

 gmtime$4:
	; SignedDivide totalDays time 86400
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 44], rax

 gmtime$5:
	; SignedModulo secondsOfDay time 86400
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]
	mov [rbp + 52], rdx

 gmtime$6:
	; SignedModulo secondsOfHour secondsOfDay 3600
	mov rax, [rbp + 52]
	xor rdx, rdx
	idiv qword [int8$3600#]
	mov [rbp + 60], rdx

 gmtime$7:
	; SignedDivide £temporary2727 secondsOfDay 3600
	mov rax, [rbp + 52]
	xor rdx, rdx
	idiv qword [int8$3600#]

 gmtime$8:
	; IntegralToIntegral £temporary2728 £temporary2727
	cmp rax, 0
	jge gmtime$9
	neg rax
	neg eax

 gmtime$9:
	; Assign g_timeStruct.tm_hour £temporary2728
	mov [@4741$g_timeStruct + 8], eax

 gmtime$10:
	; SignedDivide £temporary2730 secondsOfHour 60
	mov rax, [rbp + 60]
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtime$11:
	; IntegralToIntegral £temporary2731 £temporary2730
	cmp rax, 0
	jge gmtime$12
	neg rax
	neg eax

 gmtime$12:
	; Assign g_timeStruct.tm_min £temporary2731
	mov [@4741$g_timeStruct + 4], eax

 gmtime$13:
	; SignedModulo £temporary2733 secondsOfHour 60
	mov rax, [rbp + 60]
	xor rdx, rdx
	idiv qword [int8$60#]

 gmtime$14:
	; IntegralToIntegral £temporary2734 £temporary2733
	cmp rdx, 0
	jge gmtime$15
	neg rdx
	neg edx

 gmtime$15:
	; Assign g_timeStruct.tm_sec £temporary2734
	mov [@4741$g_timeStruct], edx

 gmtime$16:
	; SignedGreaterThanEqual 21 totalDays 3
	cmp qword [rbp + 44], 3
	jge gmtime$21

 gmtime$17:
	; BinaryAdd £temporary2737 totalDays 4
	mov rax, [rbp + 44]
	add rax, 4

 gmtime$18:
	; IntegralToIntegral £temporary2738 £temporary2737
	cmp rax, 0
	jge gmtime$19
	neg rax
	neg eax

 gmtime$19:
	; Assign g_timeStruct.tm_wday £temporary2738
	mov [@4741$g_timeStruct + 24], eax

 gmtime$20:
	; Goto 25
	jmp gmtime$25

 gmtime$21:
	; BinarySubtract £temporary2740 totalDays 3
	mov rax, [rbp + 44]
	sub rax, 3

 gmtime$22:
	; SignedModulo £temporary2741 £temporary2740 7
	xor rdx, rdx
	idiv qword [int8$7#]

 gmtime$23:
	; IntegralToIntegral £temporary2742 £temporary2741
	cmp rdx, 0
	jge gmtime$24
	neg rdx
	neg edx

 gmtime$24:
	; Assign g_timeStruct.tm_wday £temporary2742
	mov [@4741$g_timeStruct + 24], edx

 gmtime$25:
	; SignedModulo £temporary2743 year 4
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$4#]

 gmtime$26:
	; NotEqual 29 £temporary2743 0
	cmp edx, 0
	jne gmtime$29

 gmtime$27:
	; SignedModulo £temporary2745 year 100
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$100#]

 gmtime$28:
	; NotEqual 31 £temporary2745 0
	cmp edx, 0
	jne gmtime$31

 gmtime$29:
	; SignedModulo £temporary2748 year 400
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$400#]

 gmtime$30:
	; NotEqual 33 £temporary2748 0
	cmp edx, 0
	jne gmtime$33

 gmtime$31:
	; Assign £temporary2751 1
	mov eax, 1

 gmtime$32:
	; Goto 34
	jmp gmtime$34

 gmtime$33:
	; Assign £temporary2751 0
	mov eax, 0

 gmtime$34:
	; Assign leapYear £temporary2751
	mov [rbp + 68], eax

 gmtime$35:
	; Equal 38 leapYear 0
	cmp dword [rbp + 68], 0
	je gmtime$38

 gmtime$36:
	; Assign £temporary2753 366
	mov eax, 366

 gmtime$37:
	; Goto 39
	jmp gmtime$39

 gmtime$38:
	; Assign £temporary2753 365
	mov eax, 365

 gmtime$39:
	; Assign daysOfYear £temporary2753
	mov [rbp + 72], eax

 gmtime$40:
	; IntegralToIntegral £temporary2754 daysOfYear
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$41
	neg eax
	neg rax

 gmtime$41:
	; SignedGreaterThanEqual 82 totalDays £temporary2754
	cmp [rbp + 44], rax
	jge gmtime$82

 gmtime$42:
	; Assign daysOfMonths[0] 31
	mov dword [rbp + 76], 31

 gmtime$43:
	; Equal 46 leapYear 0
	cmp dword [rbp + 68], 0
	je gmtime$46

 gmtime$44:
	; Assign £temporary2757 29
	mov eax, 29

 gmtime$45:
	; Goto 47
	jmp gmtime$47

 gmtime$46:
	; Assign £temporary2757 28
	mov eax, 28

 gmtime$47:
	; Assign daysOfMonths[1] £temporary2757
	mov [rbp + 80], eax

 gmtime$48:
	; Assign daysOfMonths[2] 31
	mov dword [rbp + 84], 31

 gmtime$49:
	; Assign daysOfMonths[3] 30
	mov dword [rbp + 88], 30

 gmtime$50:
	; Assign daysOfMonths[4] 31
	mov dword [rbp + 92], 31

 gmtime$51:
	; Assign daysOfMonths[5] 30
	mov dword [rbp + 96], 30

 gmtime$52:
	; Assign daysOfMonths[6] 31
	mov dword [rbp + 100], 31

 gmtime$53:
	; Assign daysOfMonths[7] 31
	mov dword [rbp + 104], 31

 gmtime$54:
	; Assign daysOfMonths[8] 30
	mov dword [rbp + 108], 30

 gmtime$55:
	; Assign daysOfMonths[9] 31
	mov dword [rbp + 112], 31

 gmtime$56:
	; Assign daysOfMonths[10] 30
	mov dword [rbp + 116], 30

 gmtime$57:
	; Assign daysOfMonths[11] 31
	mov dword [rbp + 120], 31

 gmtime$58:
	; Assign month 0
	mov dword [rbp + 124], 0

 gmtime$59:
	; BinarySubtract g_timeStruct.tm_year year 1900
	mov eax, [rbp + 32]
	sub eax, 1900
	mov [@4741$g_timeStruct + 20], eax

 gmtime$60:
	; IntegralToIntegral £temporary2773 totalDays
	mov rax, [rbp + 44]
	cmp rax, 0
	jge gmtime$61
	neg rax
	neg eax

 gmtime$61:
	; Assign g_timeStruct.tm_yday £temporary2773
	mov [@4741$g_timeStruct + 28], eax

 gmtime$62:
	; IntegralToIntegral £temporary2775 month
	mov eax, [rbp + 124]
	mov rbx, 4294967295
	and rax, rbx

 gmtime$63:
	; UnsignedMultiply £temporary2776 £temporary2775 4
	xor rdx, rdx
	mul qword [Array_4#]

 gmtime$64:
	; BinaryAdd £temporary2777 daysOfMonths £temporary2776
	mov rsi, rbp
	add rsi, 76
	add rsi, rax

 gmtime$65:
	; Dereference £temporary2774 -> £temporary2777 £temporary2777 0

 gmtime$66:
	; IntegralToIntegral £temporary2778 £temporary2774 -> £temporary2777
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$67
	neg eax
	neg rax

 gmtime$67:
	; SignedLessThan 76 totalDays £temporary2778
	cmp [rbp + 44], rax
	jl gmtime$76

 gmtime$68:
	; IntegralToIntegral £temporary2781 month
	mov eax, [rbp + 124]
	mov rbx, 4294967295
	and rax, rbx

 gmtime$69:
	; UnsignedMultiply £temporary2782 £temporary2781 4
	xor rdx, rdx
	mul qword [Array_4#]

 gmtime$70:
	; BinaryAdd £temporary2783 daysOfMonths £temporary2782
	mov rsi, rbp
	add rsi, 76
	add rsi, rax

 gmtime$71:
	; Dereference £temporary2780 -> £temporary2783 £temporary2783 0

 gmtime$72:
	; IntegralToIntegral £temporary2784 £temporary2780 -> £temporary2783
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$73
	neg eax
	neg rax

 gmtime$73:
	; BinarySubtract totalDays totalDays £temporary2784
	sub [rbp + 44], rax

 gmtime$74:
	; BinaryAdd month month 1
	inc dword [rbp + 124]

 gmtime$75:
	; Goto 62
	jmp gmtime$62

 gmtime$76:
	; Assign g_timeStruct.tm_mon month
	mov eax, [rbp + 124]
	mov [@4741$g_timeStruct + 16], eax

 gmtime$77:
	; BinaryAdd £temporary2789 totalDays 1
	mov rax, [rbp + 44]
	inc rax

 gmtime$78:
	; IntegralToIntegral £temporary2790 £temporary2789
	cmp rax, 0
	jge gmtime$79
	neg rax
	neg eax

 gmtime$79:
	; Assign g_timeStruct.tm_mday £temporary2790
	mov [@4741$g_timeStruct + 12], eax

 gmtime$80:
	; Assign g_timeStruct.tm_isdst -1
	mov dword [@4741$g_timeStruct + 32], -1

 gmtime$81:
	; Return @4741$g_timeStruct
	mov rbx, @4741$g_timeStruct
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$82:
	; BinaryAdd year year 1
	inc dword [rbp + 32]

 gmtime$83:
	; IntegralToIntegral £temporary2793 daysOfYear
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$84
	neg eax
	neg rax

 gmtime$84:
	; BinarySubtract totalDays totalDays £temporary2793
	sub [rbp + 44], rax

 gmtime$85:
	; Goto 25
	jmp gmtime$25

 gmtime$86:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gmtime$87:
	; FunctionEnd gmtime

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .text

 difftime:
	; BinarySubtract £temporary2796 time2 time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

 difftime$1:
	; IntegralToFloating £temporary2797 £temporary2796
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 difftime$2:
	; Return £temporary2797
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 difftime$3:
	; FunctionEnd difftime

section .data

@4754$g_timeString:
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

@4755$g_defaultShortDayList:
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

@4756$g_defaultLongDayList:
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

@4757$g_defaultShortMonthList:
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

@4758$g_defaultLongMonthList:
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
	; Dereference £temporary2799 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$3:
	; Assign £temporary2800 £temporary2799 -> localeConvPtr
	mov rax, [rsi + 8]

 asctime$4:
	; Goto 6
	jmp asctime$6

 asctime$5:
	; Assign £temporary2800 0
	mov rax, 0

 asctime$6:
	; Assign shortDayList £temporary2800
	mov [rbp + 40], rax

 asctime$7:
	; Equal 11 localeConvPtr 0
	cmp qword [rbp + 32], 0
	je asctime$11

 asctime$8:
	; Dereference £temporary2802 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 32]

 asctime$9:
	; Assign £temporary2803 £temporary2802 -> localeConvPtr
	mov rax, [rsi + 24]

 asctime$10:
	; Goto 12
	jmp asctime$12

 asctime$11:
	; Assign £temporary2803 0
	mov rax, 0

 asctime$12:
	; Assign shortMonthList £temporary2803
	mov [rbp + 48], rax

 asctime$13:
	; Equal 16 shortDayList 0
	cmp qword [rbp + 40], 0
	je asctime$16

 asctime$14:
	; Assign £temporary2805 shortDayList
	mov rax, [rbp + 40]

 asctime$15:
	; Goto 17
	jmp asctime$17

 asctime$16:
	; Assign £temporary2805 g_defaultShortDayList
	mov rax, @4755$g_defaultShortDayList

 asctime$17:
	; Assign shortDayList £temporary2805
	mov [rbp + 40], rax

 asctime$18:
	; Equal 21 shortMonthList 0
	cmp qword [rbp + 48], 0
	je asctime$21

 asctime$19:
	; Assign £temporary2807 shortMonthList
	mov rax, [rbp + 48]

 asctime$20:
	; Goto 22
	jmp asctime$22

 asctime$21:
	; Assign £temporary2807 g_defaultShortMonthList
	mov rax, @4757$g_defaultShortMonthList

 asctime$22:
	; Assign shortMonthList £temporary2807
	mov [rbp + 48], rax

 asctime$23:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asctime$24:
	; Parameter pointer g_timeString 80
	mov qword [rbp + 80], @4754$g_timeString

 asctime$25:
	; Parameter pointer "%s %s %i %02i:%02i:%02i %i" 88
	mov qword [rbp + 88], string_25s2025s2025i202502i3A2502i3A2502i2025i#

 asctime$26:
	; Dereference £temporary2808 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$27:
	; IntegralToIntegral £temporary2810 £temporary2808 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 asctime$28:
	; UnsignedMultiply £temporary2811 £temporary2810 8
	xor rdx, rdx
	mul qword [int8$8#]

 asctime$29:
	; BinaryAdd £temporary2812 shortDayList £temporary2811
	mov rsi, [rbp + 40]
	add rsi, rax

 asctime$30:
	; Dereference £temporary2809 -> £temporary2812 £temporary2812 0

 asctime$31:
	; Parameter pointer £temporary2809 -> £temporary2812 96
	mov rax, [rsi]
	mov [rbp + 96], rax

 asctime$32:
	; Dereference £temporary2813 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$33:
	; IntegralToIntegral £temporary2815 £temporary2813 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 asctime$34:
	; UnsignedMultiply £temporary2816 £temporary2815 8
	xor rdx, rdx
	mul qword [int8$8#]

 asctime$35:
	; BinaryAdd £temporary2817 shortMonthList £temporary2816
	mov rsi, [rbp + 48]
	add rsi, rax

 asctime$36:
	; Dereference £temporary2814 -> £temporary2817 £temporary2817 0

 asctime$37:
	; Parameter pointer £temporary2814 -> £temporary2817 104
	mov rax, [rsi]
	mov [rbp + 104], rax

 asctime$38:
	; Dereference £temporary2818 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$39:
	; Parameter signedint £temporary2818 -> tp 112
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

 asctime$40:
	; Dereference £temporary2819 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$41:
	; Parameter signedint £temporary2819 -> tp 116
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

 asctime$42:
	; Dereference £temporary2820 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$43:
	; Parameter signedint £temporary2820 -> tp 120
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

 asctime$44:
	; Dereference £temporary2821 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$45:
	; Parameter signedint £temporary2821 -> tp 124
	mov eax, [rsi]
	mov [rbp + 124], eax

 asctime$46:
	; Dereference £temporary2822 -> tp tp 0
	mov rsi, [rbp + 24]

 asctime$47:
	; BinaryAdd £temporary2823 £temporary2822 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 asctime$48:
	; Parameter signedint £temporary2823 128
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
	mov rbx, @4754$g_timeString
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
	; GetReturnValue £temporary2825

 ctime$6:
	; Parameter pointer £temporary2825 56
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
	; GetReturnValue £temporary2826

 ctime$10:
	; Return £temporary2826
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
	; GetReturnValue £temporary2827

 localtime$5:
	; Assign tmPtr £temporary2827
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
	; GetReturnValue £temporary2828

 localtime$10:
	; Assign localeConvPtr £temporary2828
	mov [rbp + 40], rbx

 localtime$11:
	; Assign timeZone 0
	mov dword [rbp + 48], 0

 localtime$12:
	; Equal 21 localeConvPtr 0
	cmp qword [rbp + 40], 0
	je localtime$21

 localtime$13:
	; Dereference £temporary2830 -> tmPtr tmPtr 0
	mov rsi, [rbp + 32]

 localtime$14:
	; NotEqual 18 £temporary2830 -> tmPtr 1
	cmp dword [rsi + 32], 1
	jne localtime$18

 localtime$15:
	; Dereference £temporary2832 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 40]

 localtime$16:
	; Assign £temporary2834 £temporary2832 -> localeConvPtr
	mov eax, [rsi]

 localtime$17:
	; Goto 20
	jmp localtime$20

 localtime$18:
	; Dereference £temporary2833 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 40]

 localtime$19:
	; Assign £temporary2834 £temporary2833 -> localeConvPtr
	mov eax, [rsi + 4]

 localtime$20:
	; Assign timeZone £temporary2834
	mov [rbp + 48], eax

 localtime$21:
	; Dereference £temporary2835 -> timePtr timePtr 0
	mov rsi, [rbp + 24]

 localtime$22:
	; IntegralToIntegral £temporary2836 timeZone
	mov eax, [rbp + 48]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge localtime$23
	neg eax
	neg rax

 localtime$23:
	; SignedMultiply £temporary2837 £temporary2836 3600
	xor rdx, rdx
	imul qword [int8$3600#]

 localtime$24:
	; BinaryAdd t £temporary2835 -> timePtr £temporary2837
	mov rbx, [rsi]
	add rbx, rax
	mov [rbp + 52], rbx

 localtime$25:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 localtime$26:
	; Address £temporary2839 t
	mov rsi, rbp
	add rsi, 52

 localtime$27:
	; Parameter pointer £temporary2839 84
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
	; GetReturnValue £temporary2840

 localtime$31:
	; Return £temporary2840
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
	; GetReturnValue £temporary2842

 strftime$4:
	; Assign localeConvPtr £temporary2842
	mov [rbp + 52], rbx

 strftime$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$9

 strftime$6:
	; Dereference £temporary2844 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$7:
	; Assign £temporary2845 £temporary2844 -> localeConvPtr
	mov rax, [rsi + 8]

 strftime$8:
	; Goto 10
	jmp strftime$10

 strftime$9:
	; Assign £temporary2845 0
	mov rax, 0

 strftime$10:
	; Assign shortDayList £temporary2845
	mov [rbp + 60], rax

 strftime$11:
	; Equal 15 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$15

 strftime$12:
	; Dereference £temporary2847 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$13:
	; Assign £temporary2848 £temporary2847 -> localeConvPtr
	mov rax, [rsi + 24]

 strftime$14:
	; Goto 16
	jmp strftime$16

 strftime$15:
	; Assign £temporary2848 0
	mov rax, 0

 strftime$16:
	; Assign shortMonthList £temporary2848
	mov [rbp + 68], rax

 strftime$17:
	; Equal 21 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$21

 strftime$18:
	; Dereference £temporary2850 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$19:
	; Assign £temporary2851 £temporary2850 -> localeConvPtr
	mov rax, [rsi + 16]

 strftime$20:
	; Goto 22
	jmp strftime$22

 strftime$21:
	; Assign £temporary2851 0
	mov rax, 0

 strftime$22:
	; Assign longDayList £temporary2851
	mov [rbp + 76], rax

 strftime$23:
	; Equal 27 localeConvPtr 0
	cmp qword [rbp + 52], 0
	je strftime$27

 strftime$24:
	; Dereference £temporary2853 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 52]

 strftime$25:
	; Assign £temporary2854 £temporary2853 -> localeConvPtr
	mov rax, [rsi + 32]

 strftime$26:
	; Goto 28
	jmp strftime$28

 strftime$27:
	; Assign £temporary2854 0
	mov rax, 0

 strftime$28:
	; Assign longMonthList £temporary2854
	mov [rbp + 84], rax

 strftime$29:
	; Dereference £temporary2855 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$30:
	; BinarySubtract £temporary2856 £temporary2855 -> tp 69
	mov eax, [rsi + 20]
	sub eax, 69

 strftime$31:
	; SignedDivide leapDays £temporary2856 4
	xor edx, edx
	idiv dword [int4$4#]
	mov [rbp + 92], eax

 strftime$32:
	; Dereference £temporary2858 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$33:
	; BinarySubtract £temporary2859 £temporary2858 -> tp 70
	mov eax, [rsi + 20]
	sub eax, 70

 strftime$34:
	; SignedMultiply £temporary2860 £temporary2859 365
	xor edx, edx
	imul dword [int4$365#]

 strftime$35:
	; BinaryAdd £temporary2861 £temporary2860 leapDays
	add eax, [rbp + 92]

 strftime$36:
	; Dereference £temporary2862 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$37:
	; BinaryAdd £temporary2863 £temporary2861 £temporary2862 -> tp
	add eax, [rsi + 28]

 strftime$38:
	; IntegralToIntegral £temporary2864 £temporary2863
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge strftime$39
	neg eax
	neg rax

 strftime$39:
	; Assign totalDays £temporary2864
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
	; Assign £temporary2867 shortDayList
	mov rax, [rbp + 60]

 strftime$47:
	; Goto 49
	jmp strftime$49

 strftime$48:
	; Assign £temporary2867 g_defaultShortDayList
	mov rax, @4755$g_defaultShortDayList

 strftime$49:
	; Assign shortDayList £temporary2867
	mov [rbp + 60], rax

 strftime$50:
	; Equal 53 longDayList 0
	cmp qword [rbp + 76], 0
	je strftime$53

 strftime$51:
	; Assign £temporary2869 longDayList
	mov rax, [rbp + 76]

 strftime$52:
	; Goto 54
	jmp strftime$54

 strftime$53:
	; Assign £temporary2869 g_defaultLongDayList
	mov rax, @4756$g_defaultLongDayList

 strftime$54:
	; Assign longDayList £temporary2869
	mov [rbp + 76], rax

 strftime$55:
	; Equal 58 shortMonthList 0
	cmp qword [rbp + 68], 0
	je strftime$58

 strftime$56:
	; Assign £temporary2871 shortMonthList
	mov rax, [rbp + 68]

 strftime$57:
	; Goto 59
	jmp strftime$59

 strftime$58:
	; Assign £temporary2871 g_defaultShortMonthList
	mov rax, @4757$g_defaultShortMonthList

 strftime$59:
	; Assign shortMonthList £temporary2871
	mov [rbp + 68], rax

 strftime$60:
	; Equal 63 longMonthList 0
	cmp qword [rbp + 84], 0
	je strftime$63

 strftime$61:
	; Assign £temporary2873 longMonthList
	mov rax, [rbp + 84]

 strftime$62:
	; Goto 64
	jmp strftime$64

 strftime$63:
	; Assign £temporary2873 g_defaultLongMonthList
	mov rax, @4758$g_defaultLongMonthList

 strftime$64:
	; Assign longMonthList £temporary2873
	mov [rbp + 84], rax

 strftime$65:
	; SignedGreaterThanEqual 70 totalDays 3
	cmp qword [rbp + 96], 3
	jge strftime$70

 strftime$66:
	; BinaryAdd £temporary2875 totalDays 4
	mov rax, [rbp + 96]
	add rax, 4

 strftime$67:
	; IntegralToIntegral £temporary2876 £temporary2875
	cmp rax, 0
	jge strftime$68
	neg rax
	neg eax

 strftime$68:
	; Assign yearDaySunday £temporary2876
	mov [rbp + 104], eax

 strftime$69:
	; Goto 74
	jmp strftime$74

 strftime$70:
	; BinarySubtract £temporary2877 totalDays 3
	mov rax, [rbp + 96]
	sub rax, 3

 strftime$71:
	; SignedModulo £temporary2878 £temporary2877 7
	xor rdx, rdx
	idiv qword [int8$7#]

 strftime$72:
	; IntegralToIntegral £temporary2879 £temporary2878
	cmp rdx, 0
	jge strftime$73
	neg rdx
	neg edx

 strftime$73:
	; Assign yearDaySunday £temporary2879
	mov [rbp + 104], edx

 strftime$74:
	; SignedGreaterThanEqual 79 totalDays 4
	cmp qword [rbp + 96], 4
	jge strftime$79

 strftime$75:
	; BinaryAdd £temporary2881 totalDays 3
	mov rax, [rbp + 96]
	add rax, 3

 strftime$76:
	; IntegralToIntegral £temporary2882 £temporary2881
	cmp rax, 0
	jge strftime$77
	neg rax
	neg eax

 strftime$77:
	; Assign yearDayMonday £temporary2882
	mov [rbp + 108], eax

 strftime$78:
	; Goto 83
	jmp strftime$83

 strftime$79:
	; BinarySubtract £temporary2883 totalDays 4
	mov rax, [rbp + 96]
	sub rax, 4

 strftime$80:
	; SignedModulo £temporary2884 £temporary2883 7
	xor rdx, rdx
	idiv qword [int8$7#]

 strftime$81:
	; IntegralToIntegral £temporary2885 £temporary2884
	cmp rdx, 0
	jge strftime$82
	neg rdx
	neg edx

 strftime$82:
	; Assign yearDayMonday £temporary2885
	mov [rbp + 108], edx

 strftime$83:
	; Assign index 0
	mov dword [rbp + 112], 0

 strftime$84:
	; IntegralToIntegral £temporary2887 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$85:
	; BinaryAdd £temporary2889 fmt £temporary2887
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$86:
	; Dereference £temporary2886 -> £temporary2889 £temporary2889 0

 strftime$87:
	; Equal 362 £temporary2886 -> £temporary2889 0
	cmp byte [rsi], 0
	je strftime$362

 strftime$88:
	; IntegralToIntegral £temporary2893 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$89:
	; BinaryAdd £temporary2895 fmt £temporary2893
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$90:
	; Dereference £temporary2892 -> £temporary2895 £temporary2895 0

 strftime$91:
	; NotEqual 336 £temporary2892 -> £temporary2895 37
	cmp byte [rsi], 37
	jne strftime$336

 strftime$92:
	; BinaryAdd index index 1
	inc dword [rbp + 112]

 strftime$93:
	; Assign £temporary2897 index
	mov eax, [rbp + 112]

 strftime$94:
	; IntegralToIntegral £temporary2899 £temporary2897
	mov rbx, 4294967295
	and rax, rbx

 strftime$95:
	; BinaryAdd £temporary2901 fmt £temporary2899
	mov rsi, [rbp + 36]
	add rsi, rax

 strftime$96:
	; Dereference £temporary2898 -> £temporary2901 £temporary2901 0

 strftime$97:
	; Case 121 £temporary2898 -> £temporary2901 97
	mov al, [rsi]
	cmp al, 97
	je strftime$121

 strftime$98:
	; Case 132 £temporary2898 -> £temporary2901 65
	cmp al, 65
	je strftime$132

 strftime$99:
	; Case 143 £temporary2898 -> £temporary2901 98
	cmp al, 98
	je strftime$143

 strftime$100:
	; Case 154 £temporary2898 -> £temporary2901 66
	cmp al, 66
	je strftime$154

 strftime$101:
	; Case 165 £temporary2898 -> £temporary2901 99
	cmp al, 99
	je strftime$165

 strftime$102:
	; Case 185 £temporary2898 -> £temporary2901 100
	cmp al, 100
	je strftime$185

 strftime$103:
	; Case 193 £temporary2898 -> £temporary2901 72
	cmp al, 72
	je strftime$193

 strftime$104:
	; Case 201 £temporary2898 -> £temporary2901 73
	cmp al, 73
	je strftime$201

 strftime$105:
	; Case 210 £temporary2898 -> £temporary2901 106
	cmp al, 106
	je strftime$210

 strftime$106:
	; Case 218 £temporary2898 -> £temporary2901 109
	cmp al, 109
	je strftime$218

 strftime$107:
	; Case 227 £temporary2898 -> £temporary2901 77
	cmp al, 77
	je strftime$227

 strftime$108:
	; Case 235 £temporary2898 -> £temporary2901 112
	cmp al, 112
	je strftime$235

 strftime$109:
	; Case 247 £temporary2898 -> £temporary2901 83
	cmp al, 83
	je strftime$247

 strftime$110:
	; Case 255 £temporary2898 -> £temporary2901 85
	cmp al, 85
	je strftime$255

 strftime$111:
	; Case 262 £temporary2898 -> £temporary2901 119
	cmp al, 119
	je strftime$262

 strftime$112:
	; Case 270 £temporary2898 -> £temporary2901 87
	cmp al, 87
	je strftime$270

 strftime$113:
	; Case 277 £temporary2898 -> £temporary2901 120
	cmp al, 120
	je strftime$277

 strftime$114:
	; Case 289 £temporary2898 -> £temporary2901 88
	cmp al, 88
	je strftime$289

 strftime$115:
	; Case 301 £temporary2898 -> £temporary2901 121
	cmp al, 121
	je strftime$301

 strftime$116:
	; Case 310 £temporary2898 -> £temporary2901 89
	cmp al, 89
	je strftime$310

 strftime$117:
	; Case 319 £temporary2898 -> £temporary2901 90
	cmp al, 90
	je strftime$319

 strftime$118:
	; Case 325 £temporary2898 -> £temporary2901 37
	cmp al, 37
	je strftime$325

 strftime$119:
	; CaseEnd £temporary2898 -> £temporary2901

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
	; Dereference £temporary2902 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$124:
	; IntegralToIntegral £temporary2904 £temporary2902 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$125:
	; UnsignedMultiply £temporary2905 £temporary2904 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$126:
	; BinaryAdd £temporary2906 shortDayList £temporary2905
	mov rsi, [rbp + 60]
	add rsi, rax

 strftime$127:
	; Dereference £temporary2903 -> £temporary2906 £temporary2906 0

 strftime$128:
	; Parameter pointer £temporary2903 -> £temporary2906 168
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
	; Dereference £temporary2908 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$135:
	; IntegralToIntegral £temporary2910 £temporary2908 -> tp
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

 strftime$136:
	; UnsignedMultiply £temporary2911 £temporary2910 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$137:
	; BinaryAdd £temporary2912 longDayList £temporary2911
	mov rsi, [rbp + 76]
	add rsi, rax

 strftime$138:
	; Dereference £temporary2909 -> £temporary2912 £temporary2912 0

 strftime$139:
	; Parameter pointer £temporary2909 -> £temporary2912 168
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
	; Dereference £temporary2914 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$146:
	; IntegralToIntegral £temporary2916 £temporary2914 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$147:
	; UnsignedMultiply £temporary2917 £temporary2916 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$148:
	; BinaryAdd £temporary2918 shortMonthList £temporary2917
	mov rsi, [rbp + 68]
	add rsi, rax

 strftime$149:
	; Dereference £temporary2915 -> £temporary2918 £temporary2918 0

 strftime$150:
	; Parameter pointer £temporary2915 -> £temporary2918 168
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
	; Dereference £temporary2920 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$157:
	; IntegralToIntegral £temporary2922 £temporary2920 -> tp
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

 strftime$158:
	; UnsignedMultiply £temporary2923 £temporary2922 8
	xor rdx, rdx
	mul qword [int8$8#]

 strftime$159:
	; BinaryAdd £temporary2924 longMonthList £temporary2923
	mov rsi, [rbp + 84]
	add rsi, rax

 strftime$160:
	; Dereference £temporary2921 -> £temporary2924 £temporary2924 0

 strftime$161:
	; Parameter pointer £temporary2921 -> £temporary2924 168
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
	; Dereference £temporary2926 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$169:
	; BinaryAdd £temporary2927 £temporary2926 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$170:
	; Parameter signedint £temporary2927 176
	mov [rbp + 176], eax

 strftime$171:
	; Dereference £temporary2928 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$172:
	; BinaryAdd £temporary2929 £temporary2928 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$173:
	; Parameter signedint £temporary2929 180
	mov [rbp + 180], eax

 strftime$174:
	; Dereference £temporary2930 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$175:
	; Parameter signedint £temporary2930 -> tp 184
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

 strftime$176:
	; Dereference £temporary2931 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$177:
	; Parameter signedint £temporary2931 -> tp 188
	mov eax, [rsi + 8]
	mov [rbp + 188], eax

 strftime$178:
	; Dereference £temporary2932 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$179:
	; Parameter signedint £temporary2932 -> tp 192
	mov eax, [rsi + 4]
	mov [rbp + 192], eax

 strftime$180:
	; Dereference £temporary2933 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$181:
	; Parameter signedint £temporary2933 -> tp 196
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
	; Dereference £temporary2935 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$189:
	; Parameter signedint £temporary2935 -> tp 176
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
	; Dereference £temporary2937 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$197:
	; Parameter signedint £temporary2937 -> tp 176
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
	; Dereference £temporary2939 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$205:
	; SignedModulo £temporary2940 £temporary2939 -> tp 12
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [int4$12#]

 strftime$206:
	; Parameter signedint £temporary2940 176
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
	; Dereference £temporary2942 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$214:
	; Parameter signedint £temporary2942 -> tp 176
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
	; Dereference £temporary2944 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$222:
	; BinaryAdd £temporary2945 £temporary2944 -> tp 1
	mov eax, [rsi + 16]
	inc eax

 strftime$223:
	; Parameter signedint £temporary2945 176
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
	; Dereference £temporary2947 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$231:
	; Parameter signedint £temporary2947 -> tp 176
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
	; Dereference £temporary2949 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$239:
	; SignedGreaterThanEqual 242 £temporary2949 -> tp 12
	cmp dword [rsi + 8], 12
	jge strftime$242

 strftime$240:
	; Assign £temporary2951 "AM"
	mov rax, string_AM#

 strftime$241:
	; Goto 243
	jmp strftime$243

 strftime$242:
	; Assign £temporary2951 "PM"
	mov rax, string_PM#

 strftime$243:
	; Parameter pointer £temporary2951 176
	mov [rbp + 176], rax

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
	; Dereference £temporary2953 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$251:
	; Parameter signedint £temporary2953 -> tp 176
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
	; Dereference £temporary2956 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$266:
	; Parameter signedint £temporary2956 -> tp 176
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
	; Dereference £temporary2959 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$281:
	; Parameter signedint £temporary2959 -> tp 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$282:
	; Dereference £temporary2960 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$283:
	; Parameter signedint £temporary2960 -> tp 180
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$284:
	; Dereference £temporary2961 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$285:
	; Parameter signedint £temporary2961 -> tp 184
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
	; Dereference £temporary2963 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$293:
	; Parameter signedint £temporary2963 -> tp 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

 strftime$294:
	; Dereference £temporary2964 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$295:
	; Parameter signedint £temporary2964 -> tp 180
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

 strftime$296:
	; Dereference £temporary2965 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$297:
	; Parameter signedint £temporary2965 -> tp 184
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
	; Dereference £temporary2967 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$305:
	; SignedModulo £temporary2968 £temporary2967 -> tp 100
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [int4$100#]

 strftime$306:
	; Parameter signedint £temporary2968 176
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
	; Dereference £temporary2970 -> tp tp 0
	mov rsi, [rbp + 44]

 strftime$314:
	; BinaryAdd £temporary2971 £temporary2970 -> tp 1900
	mov eax, [rsi + 20]
	add eax, 1900

 strftime$315:
	; Parameter signedint £temporary2971 176
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
	; Dereference £temporary2976 -> add add 0
	mov rsi, rbp
	add rsi, 116

 strftime$337:
	; IntegralToIntegral £temporary2978 index
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

 strftime$338:
	; BinaryAdd £temporary2980 fmt £temporary2978
	mov rdi, [rbp + 36]
	add rdi, rax

 strftime$339:
	; Dereference £temporary2977 -> £temporary2980 £temporary2980 0

 strftime$340:
	; Assign £temporary2976 -> add £temporary2977 -> £temporary2980
	mov al, [rdi]
	mov [rsi], al

 strftime$341:
	; Dereference £temporary2981 -> add add 0
	mov rsi, rbp
	add rsi, 116

 strftime$342:
	; Assign £temporary2981 -> add 0
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
	; GetReturnValue £temporary2982

 strftime$348:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 136], ebx

 strftime$349:
	; Parameter pointer add 160
	mov [rbp + 164], rbp
	add qword [rbp + 164], 116

 strftime$350:
	; Call strlen 136 0
	mov qword [rbp + 140], strftime$351
	mov [rbp + 148], rbp
	add rbp, 140
	jmp strlen

 strftime$351:
	; PostCall 136
	mov eax, ebx
	mov ebx, [rbp + 136]

 strftime$352:
	; GetReturnValue £temporary2983

 strftime$353:
	; BinaryAdd £temporary2984 £temporary2982 £temporary2983
	add ebx, eax

 strftime$354:
	; SignedGreaterThanEqual 362 £temporary2984 smax
	cmp ebx, [rbp + 32]
	jge strftime$362

 strftime$355:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$356:
	; Parameter pointer s 160
	mov rax, [rbp + 24]
	mov [rbp + 160], rax

 strftime$357:
	; Parameter pointer add 168
	mov [rbp + 168], rbp
	add qword [rbp + 168], 116

 strftime$358:
	; Call strcat 136 0
	mov qword [rbp + 136], strftime$359
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcat

 strftime$359:
	; PostCall 136

 strftime$360:
	; BinaryAdd index index 1
	inc dword [rbp + 112]

 strftime$361:
	; Goto 84
	jmp strftime$84

 strftime$362:
	; PreCall 112 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strftime$363:
	; Parameter pointer s 136
	mov rax, [rbp + 24]
	mov [rbp + 136], rax

 strftime$364:
	; Call strlen 112 0
	mov qword [rbp + 112], strftime$365
	mov [rbp + 120], rbp
	add rbp, 112
	jmp strlen

 strftime$365:
	; PostCall 112

 strftime$366:
	; GetReturnValue £temporary2987

 strftime$367:
	; Return £temporary2987
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strftime$368:
	; FunctionEnd strftime
