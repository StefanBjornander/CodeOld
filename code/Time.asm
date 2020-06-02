	global clock
	global time
	global mktime
	global gmtime
	global difftime
	global default_test
	global asctime
	global ctime
	global localtime
	global strftime

	extern sprintf
	extern localeconv
	extern strcpy
	extern printf
	extern strlen
	extern strcat
section .text

clock:	; return_value = int8$minus1#
	mov rbx, -1

clock$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

clock$2:	; function end clock

time:	; empty

time$1:	; rax = int8$201#
	mov rax, 201

time$2:	; £temporary2782 = &time
	mov rdi, rbp
	add rdi, 32

time$3:	; £temporary2783 = int_to_int £temporary2782 (Pointer -> Unsigned_Long_Int)

time$4:	; rdi = £temporary2783

time$5:	; syscall
	syscall 

time$6:	; if timePtr == int8$0# goto 9
	cmp qword [rbp + 24], 0
	je time$9

time$7:	; £field2785 -> timePtr = *timePtr
	mov rsi, [rbp + 24]

time$8:	; £field2785 -> timePtr = time
	mov rax, [rbp + 32]
	mov [rsi], rax

time$9:	; return_value = time
	mov rbx, [rbp + 32]

time$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

time$11:	; function end time

mktime:	; if tp == int8$0# goto 29
	cmp qword [rbp + 24], 0
	je mktime$29

mktime$1:	; £field2788 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$2:	; £temporary2789 = £field2788 -> tp - int4$69#
	mov eax, [rsi + 20]
	sub eax, 69

mktime$3:	; £temporary2790 = £temporary2789 / int4$4#
	xor edx, edx
	idiv dword [int4$4#]

mktime$4:	; £temporary2791 = int_to_int £temporary2790 (Signed_Int -> Signed_Long_Int)
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$5
	neg eax
	neg rax

mktime$5:	; leapDays = £temporary2791
	mov [rbp + 32], rax

mktime$6:	; £field2792 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$7:	; £temporary2793 = £field2792 -> tp - int4$70#
	mov eax, [rsi + 20]
	sub eax, 70

mktime$8:	; £temporary2794 = £temporary2793 * int4$365#
	xor edx, edx
	imul dword [int4$365#]

mktime$9:	; £temporary2795 = int_to_int £temporary2794 (Signed_Int -> Signed_Long_Int)
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge mktime$10
	neg eax
	neg rax

mktime$10:	; £temporary2796 = £temporary2795 + leapDays
	add rax, [rbp + 32]

mktime$11:	; £field2797 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$12:	; £temporary2798 = int_to_int £field2797 -> tp (Signed_Int -> Signed_Long_Int)
	mov ebx, [rsi + 28]
	mov rcx, 4294967295
	and rbx, rcx
	cmp ebx, 0
	jge mktime$13
	neg ebx
	neg rbx

mktime$13:	; £temporary2799 = £temporary2796 + £temporary2798
	add rax, rbx

mktime$14:	; totalDays = £temporary2799
	mov [rbp + 40], rax

mktime$15:	; £temporary2800 = totalDays * int8$86400#
	mov rax, [rbp + 40]
	xor rdx, rdx
	imul qword [int8$86400#]
	mov rbx, rax

mktime$16:	; £field2801 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$17:	; £temporary2802 = int_to_int £field2801 -> tp (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi + 8]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$18
	neg eax
	neg rax

mktime$18:	; £temporary2803 = £temporary2802 * int8$3600#
	xor rdx, rdx
	imul qword [int8$3600#]

mktime$19:	; £temporary2804 = £temporary2800 + £temporary2803
	add rbx, rax

mktime$20:	; £field2805 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$21:	; £temporary2806 = int_to_int £field2805 -> tp (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi + 4]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$22
	neg eax
	neg rax

mktime$22:	; £temporary2807 = £temporary2806 * int8$60#
	xor rdx, rdx
	imul qword [int8$60#]

mktime$23:	; £temporary2808 = £temporary2804 + £temporary2807
	add rbx, rax

mktime$24:	; £field2809 -> tp = *tp
	mov rsi, [rbp + 24]

mktime$25:	; £temporary2810 = int_to_int £field2809 -> tp (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi]
	mov rcx, 4294967295
	and rax, rcx
	cmp eax, 0
	jge mktime$26
	neg eax
	neg rax

mktime$26:	; £temporary2811 = £temporary2808 + £temporary2810
	add rbx, rax

mktime$27:	; return_value = £temporary2811

mktime$28:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

mktime$29:	; return_value = int8$0#
	mov rbx, 0

mktime$30:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

mktime$31:	; function end mktime

gmtime:	; year = int4$1970#
	mov dword [rbp + 32], 1970

gmtime$1:	; if timePtr == int8$0# goto 93
	cmp qword [rbp + 24], 0
	je gmtime$93

gmtime$2:	; £field2813 -> timePtr = *timePtr
	mov rsi, [rbp + 24]

gmtime$3:	; time = £field2813 -> timePtr
	mov rax, [rsi]
	mov [rbp + 36], rax

gmtime$4:	; £temporary2814 = time % int8$86400#
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]

gmtime$5:	; secondsOfDay = £temporary2814
	mov [rbp + 44], rdx

gmtime$6:	; £temporary2816 = secondsOfDay / int8$3600#
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

gmtime$7:	; £temporary2817 = int_to_int £temporary2816 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$8
	neg rax
	neg eax

gmtime$8:	; g_timeStruct$tm_hour = £temporary2817
	mov [@4191$g_timeStruct + 8], eax

gmtime$9:	; £temporary2819 = secondsOfDay % int8$3600#
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

gmtime$10:	; £temporary2820 = £temporary2819 / int8$60#
	mov rax, rdx
	xor rdx, rdx
	idiv qword [int8$60#]

gmtime$11:	; £temporary2821 = int_to_int £temporary2820 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$12
	neg rax
	neg eax

gmtime$12:	; g_timeStruct$tm_min = £temporary2821
	mov [@4191$g_timeStruct + 4], eax

gmtime$13:	; £temporary2823 = secondsOfDay % int8$3600#
	mov rax, [rbp + 44]
	xor rdx, rdx
	idiv qword [int8$3600#]

gmtime$14:	; £temporary2824 = £temporary2823 % int8$60#
	mov rax, rdx
	xor rdx, rdx
	idiv qword [int8$60#]

gmtime$15:	; £temporary2825 = int_to_int £temporary2824 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge gmtime$16
	neg rdx
	neg edx

gmtime$16:	; g_timeStruct$tm_sec = £temporary2825
	mov [@4191$g_timeStruct], edx

gmtime$17:	; £temporary2826 = time / int8$86400#
	mov rax, [rbp + 36]
	xor rdx, rdx
	idiv qword [int8$86400#]

gmtime$18:	; totalDays = £temporary2826
	mov [rbp + 52], rax

gmtime$19:	; if totalDays >= int8$3# goto 24
	cmp qword [rbp + 52], 3
	jge gmtime$24

gmtime$20:	; £temporary2829 = totalDays + int8$4#
	mov rax, [rbp + 52]
	add rax, 4

gmtime$21:	; £temporary2830 = int_to_int £temporary2829 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$22
	neg rax
	neg eax

gmtime$22:	; g_timeStruct$tm_wday = £temporary2830
	mov [@4191$g_timeStruct + 24], eax

gmtime$23:	; goto 28
	jmp gmtime$28

gmtime$24:	; £temporary2832 = totalDays - int8$3#
	mov rax, [rbp + 52]
	sub rax, 3

gmtime$25:	; £temporary2833 = £temporary2832 % int8$7#
	xor rdx, rdx
	idiv qword [int8$7#]

gmtime$26:	; £temporary2834 = int_to_int £temporary2833 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge gmtime$27
	neg rdx
	neg edx

gmtime$27:	; g_timeStruct$tm_wday = £temporary2834
	mov [@4191$g_timeStruct + 24], edx

gmtime$28:	; £temporary2835 = year % int4$4#
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$4#]

gmtime$29:	; if £temporary2835 != int4$0# goto 32
	cmp edx, 0
	jne gmtime$32

gmtime$30:	; £temporary2837 = year % int4$100#
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$100#]

gmtime$31:	; if £temporary2837 != int4$0# goto 34
	cmp edx, 0
	jne gmtime$34

gmtime$32:	; £temporary2840 = year % int4$400#
	mov eax, [rbp + 32]
	xor edx, edx
	idiv dword [int4$400#]

gmtime$33:	; if £temporary2840 != int4$0# goto 36
	cmp edx, 0
	jne gmtime$36

gmtime$34:	; £temporary2843 = int4$1#
	mov eax, 1

gmtime$35:	; goto 37
	jmp gmtime$37

gmtime$36:	; £temporary2843 = int4$0#
	mov eax, 0

gmtime$37:	; leapYear = £temporary2843
	mov [rbp + 60], eax

gmtime$38:	; if leapYear == int4$0# goto 41
	cmp dword [rbp + 60], 0
	je gmtime$41

gmtime$39:	; £temporary2845 = int4$366#
	mov eax, 366

gmtime$40:	; goto 42
	jmp gmtime$42

gmtime$41:	; £temporary2845 = int4$365#
	mov eax, 365

gmtime$42:	; daysOfYear = £temporary2845
	mov [rbp + 64], eax

gmtime$43:	; £temporary2846 = int_to_int daysOfYear (Signed_Int -> Signed_Long_Int)
	mov eax, [rbp + 64]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$44
	neg eax
	neg rax

gmtime$44:	; if totalDays >= £temporary2846 goto 88
	cmp [rbp + 52], rax
	jge gmtime$88

gmtime$45:	; £temporary2849 = year - int4$1900#
	mov eax, [rbp + 32]
	sub eax, 1900

gmtime$46:	; g_timeStruct$tm_year = £temporary2849
	mov [@4191$g_timeStruct + 20], eax

gmtime$47:	; £temporary2851 = int_to_int totalDays (Signed_Long_Int -> Signed_Int)
	mov rax, [rbp + 52]
	cmp rax, 0
	jge gmtime$48
	neg rax
	neg eax

gmtime$48:	; g_timeStruct$tm_yday = £temporary2851
	mov [@4191$g_timeStruct + 28], eax

gmtime$49:	; daysOfMonths[0] = int4$31#
	mov dword [rbp + 68], 31

gmtime$50:	; if leapYear == int4$0# goto 53
	cmp dword [rbp + 60], 0
	je gmtime$53

gmtime$51:	; £temporary2853 = int4$29#
	mov eax, 29

gmtime$52:	; goto 54
	jmp gmtime$54

gmtime$53:	; £temporary2853 = int4$28#
	mov eax, 28

gmtime$54:	; daysOfMonths[1] = £temporary2853
	mov [rbp + 72], eax

gmtime$55:	; daysOfMonths[2] = int4$31#
	mov dword [rbp + 76], 31

gmtime$56:	; daysOfMonths[3] = int4$30#
	mov dword [rbp + 80], 30

gmtime$57:	; daysOfMonths[4] = int4$31#
	mov dword [rbp + 84], 31

gmtime$58:	; daysOfMonths[5] = int4$30#
	mov dword [rbp + 88], 30

gmtime$59:	; daysOfMonths[6] = int4$30#
	mov dword [rbp + 92], 30

gmtime$60:	; daysOfMonths[7] = int4$31#
	mov dword [rbp + 96], 31

gmtime$61:	; daysOfMonths[8] = int4$30#
	mov dword [rbp + 100], 30

gmtime$62:	; daysOfMonths[9] = int4$31#
	mov dword [rbp + 104], 31

gmtime$63:	; daysOfMonths[10] = int4$30#
	mov dword [rbp + 108], 30

gmtime$64:	; daysOfMonths[11] = int4$31#
	mov dword [rbp + 112], 31

gmtime$65:	; month = int4$0#
	mov dword [rbp + 116], 0

gmtime$66:	; £temporary2867 = int_to_int month (Signed_Int -> Array)
	mov eax, [rbp + 116]
	mov rbx, 4294967295
	and rax, rbx

gmtime$67:	; £temporary2868 = £temporary2867 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

gmtime$68:	; £temporary2869 = daysOfMonths + £temporary2868
	mov rsi, rbp
	add rsi, 68
	add rsi, rax

gmtime$69:	; £field2866 -> £temporary2869 = *£temporary2869

gmtime$70:	; £temporary2870 = int_to_int £field2866 -> £temporary2869 (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$71
	neg eax
	neg rax

gmtime$71:	; if totalDays < £temporary2870 goto 81
	cmp [rbp + 52], rax
	jl gmtime$81

gmtime$72:	; £temporary2873 = int_to_int month (Signed_Int -> Array)
	mov eax, [rbp + 116]
	mov rbx, 4294967295
	and rax, rbx

gmtime$73:	; £temporary2874 = £temporary2873 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

gmtime$74:	; £temporary2875 = daysOfMonths + £temporary2874
	mov rsi, rbp
	add rsi, 68
	add rsi, rax

gmtime$75:	; £field2872 -> £temporary2875 = *£temporary2875

gmtime$76:	; £temporary2876 = int_to_int £field2872 -> £temporary2875 (Signed_Int -> Signed_Long_Int)
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$77
	neg eax
	neg rax

gmtime$77:	; £temporary2877 = totalDays - £temporary2876
	mov rbx, [rbp + 52]
	sub rbx, rax

gmtime$78:	; totalDays = £temporary2877
	mov [rbp + 52], rbx

gmtime$79:	; ++month
	inc dword [rbp + 116]

gmtime$80:	; goto 66
	jmp gmtime$66

gmtime$81:	; g_timeStruct$tm_mon = month
	mov eax, [rbp + 116]
	mov [@4191$g_timeStruct + 16], eax

gmtime$82:	; £temporary2881 = totalDays + int8$1#
	mov rax, [rbp + 52]
	inc rax

gmtime$83:	; £temporary2882 = int_to_int £temporary2881 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge gmtime$84
	neg rax
	neg eax

gmtime$84:	; g_timeStruct$tm_mday = £temporary2882
	mov [@4191$g_timeStruct + 12], eax

gmtime$85:	; g_timeStruct$tm_isdst = int4$minus1#
	mov dword [@4191$g_timeStruct + 32], -1

gmtime$86:	; return_value = staticaddress$@4191$g_timeStruct$0#
	mov rbx, @4191$g_timeStruct

gmtime$87:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

gmtime$88:	; ++year
	inc dword [rbp + 32]

gmtime$89:	; £temporary2885 = int_to_int daysOfYear (Signed_Int -> Signed_Long_Int)
	mov eax, [rbp + 64]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge gmtime$90
	neg eax
	neg rax

gmtime$90:	; £temporary2886 = totalDays - £temporary2885
	mov rbx, [rbp + 52]
	sub rbx, rax

gmtime$91:	; totalDays = £temporary2886
	mov [rbp + 52], rbx

gmtime$92:	; goto 28
	jmp gmtime$28

gmtime$93:	; return_value = int8$0#
	mov rbx, 0

gmtime$94:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

gmtime$95:	; function end gmtime

difftime:	; £temporary2888 = time2 - time1
	mov rax, [rbp + 32]
	sub rax, [rbp + 24]

difftime$1:	; £temporary2889 = int_to_float £temporary2888 (Unsigned_Long_Int -> Double)
	mov [$IntegralStorage#], rax
	fild dword [$IntegralStorage#]

difftime$2:	; return_value = £temporary2889

difftime$3:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

difftime$4:	; function end difftime

default_test:	; empty

default_test$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

default_test$2:	; function end default_test

asctime:	; localeConvPtr = int8$0#
	mov qword [rbp + 32], 0

asctime$1:	; if localeConvPtr == int8$0# goto 5
	cmp qword [rbp + 32], 0
	je asctime$5

asctime$2:	; £field2891 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 32]

asctime$3:	; £temporary2892 = £field2891 -> localeConvPtr
	mov rax, [rsi + 8]

asctime$4:	; goto 6
	jmp asctime$6

asctime$5:	; £temporary2892 = int8$0#
	mov rax, 0

asctime$6:	; shortDayList = £temporary2892
	mov [rbp + 40], rax

asctime$7:	; if localeConvPtr == int8$0# goto 11
	cmp qword [rbp + 32], 0
	je asctime$11

asctime$8:	; £field2894 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 32]

asctime$9:	; £temporary2895 = £field2894 -> localeConvPtr
	mov rax, [rsi + 24]

asctime$10:	; goto 12
	jmp asctime$12

asctime$11:	; £temporary2895 = int8$0#
	mov rax, 0

asctime$12:	; shortMonthList = £temporary2895
	mov [rbp + 48], rax

asctime$13:	; if shortDayList == int8$0# goto 16
	cmp qword [rbp + 40], 0
	je asctime$16

asctime$14:	; £temporary2897 = shortDayList
	mov rax, [rbp + 40]

asctime$15:	; goto 17
	jmp asctime$17

asctime$16:	; £temporary2897 = g_defaultShortDayList
	mov rax, @4204$g_defaultShortDayList

asctime$17:	; shortDayList = £temporary2897
	mov [rbp + 40], rax

asctime$18:	; if shortMonthList == int8$0# goto 21
	cmp qword [rbp + 48], 0
	je asctime$21

asctime$19:	; £temporary2899 = shortMonthList
	mov rax, [rbp + 48]

asctime$20:	; goto 22
	jmp asctime$22

asctime$21:	; £temporary2899 = g_defaultShortMonthList
	mov rax, @4206$g_defaultShortMonthList

asctime$22:	; shortMonthList = £temporary2899
	mov [rbp + 48], rax

asctime$23:	; call header integral zero 0 stack zero 0

asctime$24:	; parameter g_timeString, offset 80
	mov qword [rbp + 80], @4203$g_timeString

asctime$25:	; parameter string_25s2025s20252i202502i3A2502i3A2502i202504i#, offset 88
	mov qword [rbp + 88], string_25s2025s20252i202502i3A2502i3A2502i202504i#

asctime$26:	; £field2900 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$27:	; £temporary2902 = int_to_int £field2900 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

asctime$28:	; £temporary2903 = £temporary2902 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

asctime$29:	; £temporary2904 = shortDayList + £temporary2903
	mov rsi, [rbp + 40]
	add rsi, rax

asctime$30:	; £field2901 -> £temporary2904 = *£temporary2904

asctime$31:	; parameter £field2901 -> £temporary2904, offset 96
	mov rax, [rsi]
	mov [rbp + 96], rax

asctime$32:	; £field2905 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$33:	; £temporary2907 = int_to_int £field2905 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

asctime$34:	; £temporary2908 = £temporary2907 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

asctime$35:	; £temporary2909 = shortMonthList + £temporary2908
	mov rsi, [rbp + 48]
	add rsi, rax

asctime$36:	; £field2906 -> £temporary2909 = *£temporary2909

asctime$37:	; parameter £field2906 -> £temporary2909, offset 104
	mov rax, [rsi]
	mov [rbp + 104], rax

asctime$38:	; £field2910 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$39:	; parameter £field2910 -> tp, offset 112
	mov eax, [rsi + 12]
	mov [rbp + 112], eax

asctime$40:	; £field2911 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$41:	; parameter £field2911 -> tp, offset 116
	mov eax, [rsi + 8]
	mov [rbp + 116], eax

asctime$42:	; £field2912 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$43:	; parameter £field2912 -> tp, offset 120
	mov eax, [rsi + 4]
	mov [rbp + 120], eax

asctime$44:	; £field2913 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$45:	; parameter £field2913 -> tp, offset 124
	mov eax, [rsi]
	mov [rbp + 124], eax

asctime$46:	; £field2914 -> tp = *tp
	mov rsi, [rbp + 24]

asctime$47:	; £temporary2915 = £field2914 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

asctime$48:	; parameter £temporary2915, offset 128
	mov [rbp + 128], eax

asctime$49:	; call function noellipse-ellipse sprintf, extra 36
	mov qword [rbp + 56], asctime$50
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 36
	jmp sprintf

asctime$50:	; post call

asctime$51:	; return_value = g_timeString
	mov rbx, @4203$g_timeString

asctime$52:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

asctime$53:	; function end asctime

ctime:	; call header integral zero 0 stack zero 0

ctime$1:	; call header integral zero 0 stack zero 0

ctime$2:	; parameter time, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

ctime$3:	; call function noellipse-noellipse localtime
	mov qword [rbp + 32], ctime$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp localtime

ctime$4:	; post call

ctime$5:	; £temporary2926 = return_value

ctime$6:	; parameter £temporary2926, offset 56
	mov [rbp + 56], rbx

ctime$7:	; call function noellipse-noellipse asctime
	mov qword [rbp + 32], ctime$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp asctime

ctime$8:	; post call

ctime$9:	; £temporary2927 = return_value

ctime$10:	; return_value = £temporary2927

ctime$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

ctime$12:	; function end ctime

localtime:	; call header integral zero 0 stack zero 0

localtime$1:	; parameter timePtr, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

localtime$2:	; call function noellipse-noellipse gmtime
	mov qword [rbp + 32], localtime$3
	mov [rbp + 40], rbp
	add rbp, 32
	jmp gmtime

localtime$3:	; post call

localtime$4:	; £temporary2930 = return_value

localtime$5:	; tmPtr = £temporary2930
	mov [rbp + 32], rbx

localtime$6:	; call header integral zero 0 stack zero 0

localtime$7:	; call function noellipse-noellipse localeconv
	mov qword [rbp + 40], localtime$8
	mov [rbp + 48], rbp
	add rbp, 40
	jmp localeconv

localtime$8:	; post call

localtime$9:	; £temporary2931 = return_value

localtime$10:	; localeConvPtr = £temporary2931
	mov [rbp + 40], rbx

localtime$11:	; timeZone = int4$0#
	mov dword [rbp + 48], 0

localtime$12:	; if localeConvPtr == int8$0# goto 21
	cmp qword [rbp + 40], 0
	je localtime$21

localtime$13:	; £field2933 -> tmPtr = *tmPtr
	mov rsi, [rbp + 32]

localtime$14:	; if £field2933 -> tmPtr == int4$0# goto 18
	cmp dword [rsi + 32], 0
	je localtime$18

localtime$15:	; £field2934 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 40]

localtime$16:	; £temporary2937 = £field2934 -> localeConvPtr
	mov eax, [rsi]

localtime$17:	; goto 20
	jmp localtime$20

localtime$18:	; £field2935 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 40]

localtime$19:	; £temporary2937 = £field2935 -> localeConvPtr
	mov eax, [rsi + 4]

localtime$20:	; timeZone = £temporary2937
	mov [rbp + 48], eax

localtime$21:	; £field2938 -> timePtr = *timePtr
	mov rsi, [rbp + 24]

localtime$22:	; £temporary2939 = timeZone * int4$3600#
	mov eax, [rbp + 48]
	xor edx, edx
	imul dword [int4$3600#]

localtime$23:	; £temporary2940 = int_to_int £temporary2939 (Signed_Int -> Unsigned_Long_Int)
	mov rbx, 4294967295
	and rax, rbx

localtime$24:	; £temporary2941 = £field2938 -> timePtr + £temporary2940
	mov rbx, [rsi]
	add rbx, rax

localtime$25:	; time = £temporary2941
	mov [rbp + 52], rbx

localtime$26:	; call header integral zero 0 stack zero 0

localtime$27:	; £temporary2942 = &time
	mov rsi, rbp
	add rsi, 52

localtime$28:	; parameter £temporary2942, offset 84
	mov [rbp + 84], rsi

localtime$29:	; call function noellipse-noellipse gmtime
	mov qword [rbp + 60], localtime$30
	mov [rbp + 68], rbp
	add rbp, 60
	jmp gmtime

localtime$30:	; post call

localtime$31:	; £temporary2943 = return_value

localtime$32:	; return_value = £temporary2943

localtime$33:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

localtime$34:	; function end localtime

strftime:	; call header integral zero 0 stack zero 0

strftime$1:	; call function noellipse-noellipse localeconv
	mov qword [rbp + 52], strftime$2
	mov [rbp + 60], rbp
	add rbp, 52
	jmp localeconv

strftime$2:	; post call

strftime$3:	; £temporary2947 = return_value

strftime$4:	; localeConvPtr = £temporary2947
	mov [rbp + 52], rbx

strftime$5:	; if localeConvPtr == int8$0# goto 9
	cmp qword [rbp + 52], 0
	je strftime$9

strftime$6:	; £field2949 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

strftime$7:	; £temporary2950 = £field2949 -> localeConvPtr
	mov rax, [rsi + 8]

strftime$8:	; goto 10
	jmp strftime$10

strftime$9:	; £temporary2950 = int8$0#
	mov rax, 0

strftime$10:	; shortDayList = £temporary2950
	mov [rbp + 60], rax

strftime$11:	; if localeConvPtr == int8$0# goto 15
	cmp qword [rbp + 52], 0
	je strftime$15

strftime$12:	; £field2952 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

strftime$13:	; £temporary2953 = £field2952 -> localeConvPtr
	mov rax, [rsi + 24]

strftime$14:	; goto 16
	jmp strftime$16

strftime$15:	; £temporary2953 = int8$0#
	mov rax, 0

strftime$16:	; shortMonthList = £temporary2953
	mov [rbp + 68], rax

strftime$17:	; if localeConvPtr == int8$0# goto 21
	cmp qword [rbp + 52], 0
	je strftime$21

strftime$18:	; £field2955 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

strftime$19:	; £temporary2956 = £field2955 -> localeConvPtr
	mov rax, [rsi + 16]

strftime$20:	; goto 22
	jmp strftime$22

strftime$21:	; £temporary2956 = int8$0#
	mov rax, 0

strftime$22:	; longDayList = £temporary2956
	mov [rbp + 76], rax

strftime$23:	; if localeConvPtr == int8$0# goto 27
	cmp qword [rbp + 52], 0
	je strftime$27

strftime$24:	; £field2958 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 52]

strftime$25:	; £temporary2959 = £field2958 -> localeConvPtr
	mov rax, [rsi + 32]

strftime$26:	; goto 28
	jmp strftime$28

strftime$27:	; £temporary2959 = int8$0#
	mov rax, 0

strftime$28:	; longMonthList = £temporary2959
	mov [rbp + 84], rax

strftime$29:	; call header integral zero 0 stack zero 0

strftime$30:	; parameter s, offset 116
	mov rax, [rbp + 24]
	mov [rbp + 116], rax

strftime$31:	; parameter string_#, offset 124
	mov qword [rbp + 124], string_#

strftime$32:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 92], strftime$33
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strcpy

strftime$33:	; post call

strftime$34:	; if shortDayList == int8$0# goto 37
	cmp qword [rbp + 60], 0
	je strftime$37

strftime$35:	; £temporary2962 = shortDayList
	mov rax, [rbp + 60]

strftime$36:	; goto 38
	jmp strftime$38

strftime$37:	; £temporary2962 = g_defaultShortDayList
	mov rax, @4204$g_defaultShortDayList

strftime$38:	; shortDayList = £temporary2962
	mov [rbp + 60], rax

strftime$39:	; if longDayList == int8$0# goto 42
	cmp qword [rbp + 76], 0
	je strftime$42

strftime$40:	; £temporary2964 = longDayList
	mov rax, [rbp + 76]

strftime$41:	; goto 43
	jmp strftime$43

strftime$42:	; £temporary2964 = g_defaultLongDayList
	mov rax, @4205$g_defaultLongDayList

strftime$43:	; longDayList = £temporary2964
	mov [rbp + 76], rax

strftime$44:	; if shortMonthList == int8$0# goto 47
	cmp qword [rbp + 68], 0
	je strftime$47

strftime$45:	; £temporary2966 = shortMonthList
	mov rax, [rbp + 68]

strftime$46:	; goto 48
	jmp strftime$48

strftime$47:	; £temporary2966 = g_defaultShortMonthList
	mov rax, @4206$g_defaultShortMonthList

strftime$48:	; shortMonthList = £temporary2966
	mov [rbp + 68], rax

strftime$49:	; if longMonthList == int8$0# goto 52
	cmp qword [rbp + 84], 0
	je strftime$52

strftime$50:	; £temporary2968 = longMonthList
	mov rax, [rbp + 84]

strftime$51:	; goto 53
	jmp strftime$53

strftime$52:	; £temporary2968 = g_defaultLongMonthList
	mov rax, @4207$g_defaultLongMonthList

strftime$53:	; longMonthList = £temporary2968
	mov [rbp + 84], rax

strftime$54:	; £field2969 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$55:	; £temporary2970 = £field2969 -> tp - int4$69#
	mov eax, [rsi + 20]
	sub eax, 69

strftime$56:	; £temporary2971 = £temporary2970 / int4$4#
	xor edx, edx
	idiv dword [int4$4#]

strftime$57:	; leapDays = £temporary2971
	mov [rbp + 92], eax

strftime$58:	; £field2972 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$59:	; £temporary2973 = £field2972 -> tp - int4$70#
	mov eax, [rsi + 20]
	sub eax, 70

strftime$60:	; £temporary2974 = £temporary2973 * int4$365#
	xor edx, edx
	imul dword [int4$365#]

strftime$61:	; £temporary2975 = £temporary2974 + leapDays
	add eax, [rbp + 92]

strftime$62:	; £field2976 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$63:	; £temporary2977 = £temporary2975 + £field2976 -> tp
	add eax, [rsi + 28]

strftime$64:	; £temporary2978 = int_to_int £temporary2977 (Signed_Int -> Signed_Long_Int)
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge strftime$65
	neg eax
	neg rax

strftime$65:	; totalDays = £temporary2978
	mov [rbp + 96], rax

strftime$66:	; call header integral zero 0 stack zero 0

strftime$67:	; parameter string_leap20days2025i2C20total20days2025lu0A#, offset 128
	mov qword [rbp + 128], string_leap20days2025i2C20total20days2025lu0A#

strftime$68:	; parameter leapDays, offset 136
	mov eax, [rbp + 92]
	mov [rbp + 136], eax

strftime$69:	; parameter totalDays, offset 140
	mov rax, [rbp + 96]
	mov [rbp + 140], rax

strftime$70:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 104], strftime$71
	mov [rbp + 112], rbp
	add rbp, 104
	mov rdi, rbp
	add rdi, 12
	jmp printf

strftime$71:	; post call

strftime$72:	; if totalDays >= int8$3# goto 77
	cmp qword [rbp + 96], 3
	jge strftime$77

strftime$73:	; £temporary2981 = totalDays + int8$4#
	mov rax, [rbp + 96]
	add rax, 4

strftime$74:	; £temporary2982 = int_to_int £temporary2981 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge strftime$75
	neg rax
	neg eax

strftime$75:	; yearDaySunday = £temporary2982
	mov [rbp + 104], eax

strftime$76:	; goto 81
	jmp strftime$81

strftime$77:	; £temporary2983 = totalDays - int8$3#
	mov rax, [rbp + 96]
	sub rax, 3

strftime$78:	; £temporary2984 = £temporary2983 % int8$7#
	xor rdx, rdx
	idiv qword [int8$7#]

strftime$79:	; £temporary2985 = int_to_int £temporary2984 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge strftime$80
	neg rdx
	neg edx

strftime$80:	; yearDaySunday = £temporary2985
	mov [rbp + 104], edx

strftime$81:	; call header integral zero 0 stack zero 0

strftime$82:	; parameter string_yearDaySunday2025i0A#, offset 136
	mov qword [rbp + 136], string_yearDaySunday2025i0A#

strftime$83:	; parameter yearDaySunday, offset 144
	mov eax, [rbp + 104]
	mov [rbp + 144], eax

strftime$84:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 112], strftime$85
	mov [rbp + 120], rbp
	add rbp, 112
	mov rdi, rbp
	add rdi, 4
	jmp printf

strftime$85:	; post call

strftime$86:	; if totalDays >= int8$4# goto 91
	cmp qword [rbp + 96], 4
	jge strftime$91

strftime$87:	; £temporary2988 = totalDays + int8$3#
	mov rax, [rbp + 96]
	add rax, 3

strftime$88:	; £temporary2989 = int_to_int £temporary2988 (Signed_Long_Int -> Signed_Int)
	cmp rax, 0
	jge strftime$89
	neg rax
	neg eax

strftime$89:	; yearDayMonday = £temporary2989
	mov [rbp + 108], eax

strftime$90:	; goto 95
	jmp strftime$95

strftime$91:	; £temporary2990 = totalDays - int8$4#
	mov rax, [rbp + 96]
	sub rax, 4

strftime$92:	; £temporary2991 = £temporary2990 % int8$7#
	xor rdx, rdx
	idiv qword [int8$7#]

strftime$93:	; £temporary2992 = int_to_int £temporary2991 (Signed_Long_Int -> Signed_Int)
	cmp rdx, 0
	jge strftime$94
	neg rdx
	neg edx

strftime$94:	; yearDayMonday = £temporary2992
	mov [rbp + 108], edx

strftime$95:	; call header integral zero 0 stack zero 0

strftime$96:	; parameter string_yearDayMonday2025i0A#, offset 136
	mov qword [rbp + 136], string_yearDayMonday2025i0A#

strftime$97:	; parameter yearDayMonday, offset 144
	mov eax, [rbp + 108]
	mov [rbp + 144], eax

strftime$98:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 112], strftime$99
	mov [rbp + 120], rbp
	add rbp, 112
	mov rdi, rbp
	add rdi, 4
	jmp printf

strftime$99:	; post call

strftime$100:	; index = int4$0#
	mov dword [rbp + 112], 0

strftime$101:	; £temporary2995 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

strftime$102:	; £temporary2997 = fmt + £temporary2995
	mov rsi, [rbp + 36]
	add rsi, rax

strftime$103:	; £field2994 -> £temporary2997 = *£temporary2997

strftime$104:	; if £field2994 -> £temporary2997 == int1$0# goto 376
	cmp byte [rsi], 0
	je strftime$376

strftime$105:	; £temporary3001 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

strftime$106:	; £temporary3003 = fmt + £temporary3001
	mov rsi, [rbp + 36]
	add rsi, rax

strftime$107:	; £field3000 -> £temporary3003 = *£temporary3003

strftime$108:	; if £field3000 -> £temporary3003 != int1$37# goto 350
	cmp byte [rsi], 37
	jne strftime$350

strftime$109:	; ++index
	inc dword [rbp + 112]

strftime$110:	; £temporary3005 = index
	mov eax, [rbp + 112]

strftime$111:	; £temporary3007 = int_to_int £temporary3005 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strftime$112:	; £temporary3009 = fmt + £temporary3007
	mov rsi, [rbp + 36]
	add rsi, rax

strftime$113:	; £field3006 -> £temporary3009 = *£temporary3009

strftime$114:	; case £field3006 -> £temporary3009 == int1$97# goto 138
	mov al, [rsi]
	cmp al, 97
	je strftime$138

strftime$115:	; case £field3006 -> £temporary3009 == int1$65# goto 149
	cmp al, 65
	je strftime$149

strftime$116:	; case £field3006 -> £temporary3009 == int1$98# goto 160
	cmp al, 98
	je strftime$160

strftime$117:	; case £field3006 -> £temporary3009 == int1$66# goto 171
	cmp al, 66
	je strftime$171

strftime$118:	; case £field3006 -> £temporary3009 == int1$99# goto 182
	cmp al, 99
	je strftime$182

strftime$119:	; case £field3006 -> £temporary3009 == int1$100# goto 202
	cmp al, 100
	je strftime$202

strftime$120:	; case £field3006 -> £temporary3009 == int1$72# goto 210
	cmp al, 72
	je strftime$210

strftime$121:	; case £field3006 -> £temporary3009 == int1$73# goto 218
	cmp al, 73
	je strftime$218

strftime$122:	; case £field3006 -> £temporary3009 == int1$106# goto 227
	cmp al, 106
	je strftime$227

strftime$123:	; case £field3006 -> £temporary3009 == int1$109# goto 235
	cmp al, 109
	je strftime$235

strftime$124:	; case £field3006 -> £temporary3009 == int1$77# goto 244
	cmp al, 77
	je strftime$244

strftime$125:	; case £field3006 -> £temporary3009 == int1$112# goto 252
	cmp al, 112
	je strftime$252

strftime$126:	; case £field3006 -> £temporary3009 == int1$83# goto 264
	cmp al, 83
	je strftime$264

strftime$127:	; case £field3006 -> £temporary3009 == int1$85# goto 272
	cmp al, 85
	je strftime$272

strftime$128:	; case £field3006 -> £temporary3009 == int1$119# goto 279
	cmp al, 119
	je strftime$279

strftime$129:	; case £field3006 -> £temporary3009 == int1$87# goto 287
	cmp al, 87
	je strftime$287

strftime$130:	; case £field3006 -> £temporary3009 == int1$120# goto 294
	cmp al, 120
	je strftime$294

strftime$131:	; case £field3006 -> £temporary3009 == int1$88# goto 308
	cmp al, 88
	je strftime$308

strftime$132:	; case £field3006 -> £temporary3009 == int1$121# goto 320
	cmp al, 121
	je strftime$320

strftime$133:	; case £field3006 -> £temporary3009 == int1$89# goto 329
	cmp al, 89
	je strftime$329

strftime$134:	; case £field3006 -> £temporary3009 == int1$90# goto 338
	cmp al, 90
	je strftime$338

strftime$135:	; case £field3006 -> £temporary3009 == int1$37# goto 344
	cmp al, 37
	je strftime$344

strftime$136:	; case end £field3006 -> £temporary3009

strftime$137:	; goto 357
	jmp strftime$357

strftime$138:	; call header integral zero 0 stack zero 0

strftime$139:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$140:	; £field3010 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$141:	; £temporary3012 = int_to_int £field3010 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

strftime$142:	; £temporary3013 = £temporary3012 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strftime$143:	; £temporary3014 = shortDayList + £temporary3013
	mov rsi, [rbp + 60]
	add rsi, rax

strftime$144:	; £field3011 -> £temporary3014 = *£temporary3014

strftime$145:	; parameter £field3011 -> £temporary3014, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

strftime$146:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$147
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$147:	; post call

strftime$148:	; goto 357
	jmp strftime$357

strftime$149:	; call header integral zero 0 stack zero 0

strftime$150:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$151:	; £field3016 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$152:	; £temporary3018 = int_to_int £field3016 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 24]
	mov rbx, 4294967295
	and rax, rbx

strftime$153:	; £temporary3019 = £temporary3018 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strftime$154:	; £temporary3020 = longDayList + £temporary3019
	mov rsi, [rbp + 76]
	add rsi, rax

strftime$155:	; £field3017 -> £temporary3020 = *£temporary3020

strftime$156:	; parameter £field3017 -> £temporary3020, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

strftime$157:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$158
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$158:	; post call

strftime$159:	; goto 357
	jmp strftime$357

strftime$160:	; call header integral zero 0 stack zero 0

strftime$161:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$162:	; £field3022 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$163:	; £temporary3024 = int_to_int £field3022 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

strftime$164:	; £temporary3025 = £temporary3024 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strftime$165:	; £temporary3026 = shortMonthList + £temporary3025
	mov rsi, [rbp + 68]
	add rsi, rax

strftime$166:	; £field3023 -> £temporary3026 = *£temporary3026

strftime$167:	; parameter £field3023 -> £temporary3026, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

strftime$168:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$169
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$169:	; post call

strftime$170:	; goto 357
	jmp strftime$357

strftime$171:	; call header integral zero 0 stack zero 0

strftime$172:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$173:	; £field3028 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$174:	; £temporary3030 = int_to_int £field3028 -> tp (Signed_Int -> Pointer)
	mov eax, [rsi + 16]
	mov rbx, 4294967295
	and rax, rbx

strftime$175:	; £temporary3031 = £temporary3030 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strftime$176:	; £temporary3032 = longMonthList + £temporary3031
	mov rsi, [rbp + 84]
	add rsi, rax

strftime$177:	; £field3029 -> £temporary3032 = *£temporary3032

strftime$178:	; parameter £field3029 -> £temporary3032, offset 168
	mov rax, [rsi]
	mov [rbp + 168], rax

strftime$179:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$180
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$180:	; post call

strftime$181:	; goto 357
	jmp strftime$357

strftime$182:	; call header integral zero 0 stack zero 0

strftime$183:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$184:	; parameter string_2504d2D2502d2D2502d202502d3A2502d3A2502d#, offset 168
	mov qword [rbp + 168], string_2504d2D2502d2D2502d202502d3A2502d3A2502d#

strftime$185:	; £field3034 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$186:	; £temporary3035 = £field3034 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

strftime$187:	; parameter £temporary3035, offset 176
	mov [rbp + 176], eax

strftime$188:	; £field3036 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$189:	; £temporary3037 = £field3036 -> tp + int4$1#
	mov eax, [rsi + 16]
	inc eax

strftime$190:	; parameter £temporary3037, offset 180
	mov [rbp + 180], eax

strftime$191:	; £field3038 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$192:	; parameter £field3038 -> tp, offset 184
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

strftime$193:	; £field3039 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$194:	; parameter £field3039 -> tp, offset 188
	mov eax, [rsi + 8]
	mov [rbp + 188], eax

strftime$195:	; £field3040 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$196:	; parameter £field3040 -> tp, offset 192
	mov eax, [rsi + 4]
	mov [rbp + 192], eax

strftime$197:	; £field3041 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$198:	; parameter £field3041 -> tp, offset 196
	mov eax, [rsi]
	mov [rbp + 196], eax

strftime$199:	; call function noellipse-ellipse sprintf, extra 24
	mov qword [rbp + 136], strftime$200
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 24
	jmp sprintf

strftime$200:	; post call

strftime$201:	; goto 357
	jmp strftime$357

strftime$202:	; call header integral zero 0 stack zero 0

strftime$203:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$204:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$205:	; £field3043 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$206:	; parameter £field3043 -> tp, offset 176
	mov eax, [rsi + 12]
	mov [rbp + 176], eax

strftime$207:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$208
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$208:	; post call

strftime$209:	; goto 357
	jmp strftime$357

strftime$210:	; call header integral zero 0 stack zero 0

strftime$211:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$212:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$213:	; £field3045 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$214:	; parameter £field3045 -> tp, offset 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

strftime$215:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$216
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$216:	; post call

strftime$217:	; goto 357
	jmp strftime$357

strftime$218:	; call header integral zero 0 stack zero 0

strftime$219:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$220:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$221:	; £field3047 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$222:	; £temporary3048 = £field3047 -> tp % int4$12#
	mov eax, [rsi + 8]
	xor edx, edx
	idiv dword [int4$12#]

strftime$223:	; parameter £temporary3048, offset 176
	mov [rbp + 176], edx

strftime$224:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$225
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$225:	; post call

strftime$226:	; goto 357
	jmp strftime$357

strftime$227:	; call header integral zero 0 stack zero 0

strftime$228:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$229:	; parameter string_2503d#, offset 168
	mov qword [rbp + 168], string_2503d#

strftime$230:	; £field3050 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$231:	; parameter £field3050 -> tp, offset 176
	mov eax, [rsi + 28]
	mov [rbp + 176], eax

strftime$232:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$233
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$233:	; post call

strftime$234:	; goto 357
	jmp strftime$357

strftime$235:	; call header integral zero 0 stack zero 0

strftime$236:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$237:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$238:	; £field3052 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$239:	; £temporary3053 = £field3052 -> tp + int4$1#
	mov eax, [rsi + 16]
	inc eax

strftime$240:	; parameter £temporary3053, offset 176
	mov [rbp + 176], eax

strftime$241:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$242
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$242:	; post call

strftime$243:	; goto 357
	jmp strftime$357

strftime$244:	; call header integral zero 0 stack zero 0

strftime$245:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$246:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$247:	; £field3055 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$248:	; parameter £field3055 -> tp, offset 176
	mov eax, [rsi + 4]
	mov [rbp + 176], eax

strftime$249:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$250
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$250:	; post call

strftime$251:	; goto 357
	jmp strftime$357

strftime$252:	; call header integral zero 0 stack zero 0

strftime$253:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$254:	; parameter string_25s#, offset 168
	mov qword [rbp + 168], string_25s#

strftime$255:	; £field3057 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$256:	; if £field3057 -> tp >= int4$12# goto 259
	cmp dword [rsi + 8], 12
	jge strftime$259

strftime$257:	; £temporary3059 = string_AM#
	mov rax, string_AM#

strftime$258:	; goto 260
	jmp strftime$260

strftime$259:	; £temporary3059 = string_PM#
	mov rax, string_PM#

strftime$260:	; parameter £temporary3059, offset 176
	mov [rbp + 176], rax

strftime$261:	; call function noellipse-ellipse sprintf, extra 8
	mov qword [rbp + 136], strftime$262
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 8
	jmp sprintf

strftime$262:	; post call

strftime$263:	; goto 357
	jmp strftime$357

strftime$264:	; call header integral zero 0 stack zero 0

strftime$265:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$266:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$267:	; £field3061 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$268:	; parameter £field3061 -> tp, offset 176
	mov eax, [rsi]
	mov [rbp + 176], eax

strftime$269:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$270
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$270:	; post call

strftime$271:	; goto 357
	jmp strftime$357

strftime$272:	; call header integral zero 0 stack zero 0

strftime$273:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$274:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$275:	; parameter yearDaySunday, offset 176
	mov eax, [rbp + 104]
	mov [rbp + 176], eax

strftime$276:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$277
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$277:	; post call

strftime$278:	; goto 357
	jmp strftime$357

strftime$279:	; call header integral zero 0 stack zero 0

strftime$280:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$281:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$282:	; £field3064 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$283:	; parameter £field3064 -> tp, offset 176
	mov eax, [rsi + 24]
	mov [rbp + 176], eax

strftime$284:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$285
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$285:	; post call

strftime$286:	; goto 357
	jmp strftime$357

strftime$287:	; call header integral zero 0 stack zero 0

strftime$288:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$289:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$290:	; parameter yearDayMonday, offset 176
	mov eax, [rbp + 108]
	mov [rbp + 176], eax

strftime$291:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$292
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$292:	; post call

strftime$293:	; goto 357
	jmp strftime$357

strftime$294:	; call header integral zero 0 stack zero 0

strftime$295:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$296:	; parameter string_2504d2D2502d2D2502d#, offset 168
	mov qword [rbp + 168], string_2504d2D2502d2D2502d#

strftime$297:	; £field3067 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$298:	; £temporary3068 = £field3067 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

strftime$299:	; parameter £temporary3068, offset 176
	mov [rbp + 176], eax

strftime$300:	; £field3069 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$301:	; £temporary3070 = £field3069 -> tp + int4$1#
	mov eax, [rsi + 16]
	inc eax

strftime$302:	; parameter £temporary3070, offset 180
	mov [rbp + 180], eax

strftime$303:	; £field3071 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$304:	; parameter £field3071 -> tp, offset 184
	mov eax, [rsi + 12]
	mov [rbp + 184], eax

strftime$305:	; call function noellipse-ellipse sprintf, extra 12
	mov qword [rbp + 136], strftime$306
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

strftime$306:	; post call

strftime$307:	; goto 357
	jmp strftime$357

strftime$308:	; call header integral zero 0 stack zero 0

strftime$309:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$310:	; parameter string_2502d3A2502d3A2502d#, offset 168
	mov qword [rbp + 168], string_2502d3A2502d3A2502d#

strftime$311:	; £field3073 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$312:	; parameter £field3073 -> tp, offset 176
	mov eax, [rsi + 8]
	mov [rbp + 176], eax

strftime$313:	; £field3074 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$314:	; parameter £field3074 -> tp, offset 180
	mov eax, [rsi + 4]
	mov [rbp + 180], eax

strftime$315:	; £field3075 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$316:	; parameter £field3075 -> tp, offset 184
	mov eax, [rsi]
	mov [rbp + 184], eax

strftime$317:	; call function noellipse-ellipse sprintf, extra 12
	mov qword [rbp + 136], strftime$318
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp sprintf

strftime$318:	; post call

strftime$319:	; goto 357
	jmp strftime$357

strftime$320:	; call header integral zero 0 stack zero 0

strftime$321:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$322:	; parameter string_2502d#, offset 168
	mov qword [rbp + 168], string_2502d#

strftime$323:	; £field3077 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$324:	; £temporary3078 = £field3077 -> tp % int4$100#
	mov eax, [rsi + 20]
	xor edx, edx
	idiv dword [int4$100#]

strftime$325:	; parameter £temporary3078, offset 176
	mov [rbp + 176], edx

strftime$326:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$327
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$327:	; post call

strftime$328:	; goto 357
	jmp strftime$357

strftime$329:	; call header integral zero 0 stack zero 0

strftime$330:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$331:	; parameter string_2504d#, offset 168
	mov qword [rbp + 168], string_2504d#

strftime$332:	; £field3080 -> tp = *tp
	mov rsi, [rbp + 44]

strftime$333:	; £temporary3081 = £field3080 -> tp + int4$1900#
	mov eax, [rsi + 20]
	add eax, 1900

strftime$334:	; parameter £temporary3081, offset 176
	mov [rbp + 176], eax

strftime$335:	; call function noellipse-ellipse sprintf, extra 4
	mov qword [rbp + 136], strftime$336
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 4
	jmp sprintf

strftime$336:	; post call

strftime$337:	; goto 357
	jmp strftime$357

strftime$338:	; call header integral zero 0 stack zero 0

strftime$339:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$340:	; parameter string_#, offset 168
	mov qword [rbp + 168], string_#

strftime$341:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$342
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$342:	; post call

strftime$343:	; goto 357
	jmp strftime$357

strftime$344:	; call header integral zero 0 stack zero 0

strftime$345:	; parameter add, offset 160
	mov [rbp + 160], rbp
	add qword [rbp + 160], 116

strftime$346:	; parameter string_25#, offset 168
	mov qword [rbp + 168], string_25#

strftime$347:	; call function noellipse-noellipse strcpy
	mov qword [rbp + 136], strftime$348
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcpy

strftime$348:	; post call

strftime$349:	; goto 357
	jmp strftime$357

strftime$350:	; £field3085 -> add = *add
	mov rsi, rbp
	add rsi, 116

strftime$351:	; £temporary3087 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 112]
	mov rbx, 4294967295
	and rax, rbx

strftime$352:	; £temporary3089 = fmt + £temporary3087
	mov rdi, [rbp + 36]
	add rdi, rax

strftime$353:	; £field3086 -> £temporary3089 = *£temporary3089

strftime$354:	; £field3085 -> add = £field3086 -> £temporary3089
	mov al, [rdi]
	mov [rsi], al

strftime$355:	; £field3090 -> add = *add
	mov rsi, rbp
	add rsi, 116

strftime$356:	; £field3090 -> add = int1$0#
	mov byte [rsi + 1], 0

strftime$357:	; call header integral zero 0 stack zero 0

strftime$358:	; parameter s, offset 160
	mov rax, [rbp + 24]
	mov [rbp + 160], rax

strftime$359:	; call function noellipse-noellipse strlen
	mov qword [rbp + 136], strftime$360
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strlen

strftime$360:	; post call

strftime$361:	; £temporary3091 = return_value

strftime$362:	; call header integral no zero 1 stack zero 0
	mov [rbp + 136], ebx

strftime$363:	; parameter add, offset 160
	mov [rbp + 164], rbp
	add qword [rbp + 164], 116

strftime$364:	; call function noellipse-noellipse strlen
	mov qword [rbp + 140], strftime$365
	mov [rbp + 148], rbp
	add rbp, 140
	jmp strlen

strftime$365:	; post call
	mov ebx, [rbp + 136]
	mov eax, ebx

strftime$366:	; £temporary3092 = return_value

strftime$367:	; £temporary3093 = £temporary3091 + £temporary3092
	add eax, ebx

strftime$368:	; if £temporary3093 >= smax goto 376
	cmp eax, [rbp + 32]
	jge strftime$376

strftime$369:	; call header integral zero 0 stack zero 0

strftime$370:	; parameter s, offset 160
	mov rax, [rbp + 24]
	mov [rbp + 160], rax

strftime$371:	; parameter add, offset 168
	mov [rbp + 168], rbp
	add qword [rbp + 168], 116

strftime$372:	; call function noellipse-noellipse strcat
	mov qword [rbp + 136], strftime$373
	mov [rbp + 144], rbp
	add rbp, 136
	jmp strcat

strftime$373:	; post call

strftime$374:	; ++index
	inc dword [rbp + 112]

strftime$375:	; goto 101
	jmp strftime$101

strftime$376:	; call header integral zero 0 stack zero 0

strftime$377:	; parameter s, offset 140
	mov rax, [rbp + 24]
	mov [rbp + 140], rax

strftime$378:	; call function noellipse-noellipse strlen
	mov qword [rbp + 116], strftime$379
	mov [rbp + 124], rbp
	add rbp, 116
	jmp strlen

strftime$379:	; post call

strftime$380:	; £temporary3096 = return_value

strftime$381:	; return_value = £temporary3096

strftime$382:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strftime$383:	; function end strftime
section .data

$IntegralStorage#:
	times 8 db 0

int4$4#:
	; init Signed_Int
	dd 4

int4$365#:
	; init Signed_Int
	dd 365

int8$86400#:
	; init Signed_Long_Int
	dq 86400

int8$3600#:
	; init Signed_Long_Int
	dq 3600

int8$60#:
	; init Signed_Long_Int
	dq 60

@4191$g_timeStruct:
	times 36 db 0

int8$7#:
	; init Signed_Long_Int
	dq 7

int4$100#:
	; init Signed_Int
	dd 100

int4$400#:
	; init Signed_Int
	dd 400

Array_#:
	; init Array
	dq 4

@4203$g_timeString:
	times 256 db 0

string_Sun#:
	db "Sun", 0

string_Mon#:
	db "Mon", 0

string_Tue#:
	db "Tue", 0

string_Wed#:
	db "Wed", 0

string_Thu#:
	db "Thu", 0

string_Fri#:
	db "Fri", 0

string_Sat#:
	db "Sat", 0

@4204$g_defaultShortDayList:
	dq string_Sun#
	dq string_Mon#
	dq string_Tue#
	dq string_Wed#
	dq string_Thu#
	dq string_Fri#
	dq string_Sat#

string_Sunday#:
	db "Sunday", 0

string_Monday#:
	db "Monday", 0

string_Tuesday#:
	db "Tuesday", 0

string_Wednesday#:
	db "Wednesday", 0

string_Thursday#:
	db "Thursday", 0

string_Friday#:
	db "Friday", 0

string_Saturday#:
	db "Saturday", 0

@4205$g_defaultLongDayList:
	dq string_Sunday#
	dq string_Monday#
	dq string_Tuesday#
	dq string_Wednesday#
	dq string_Thursday#
	dq string_Friday#
	dq string_Saturday#

string_Jan#:
	db "Jan", 0

string_Feb#:
	db "Feb", 0

string_Mar#:
	db "Mar", 0

string_Apr#:
	db "Apr", 0

string_May#:
	db "May", 0

string_Jun#:
	db "Jun", 0

string_Jul#:
	db "Jul", 0

string_Aug#:
	db "Aug", 0

string_Sep#:
	db "Sep", 0

string_Oct#:
	db "Oct", 0

string_Nov#:
	db "Nov", 0

string_Dec#:
	db "Dec", 0

@4206$g_defaultShortMonthList:
	dq string_Jan#
	dq string_Feb#
	dq string_Mar#
	dq string_Apr#
	dq string_May#
	dq string_Jun#
	dq string_Jul#
	dq string_Aug#
	dq string_Sep#
	dq string_Oct#
	dq string_Nov#
	dq string_Dec#

string_January#:
	db "January", 0

string_February#:
	db "February", 0

string_March#:
	db "March", 0

string_April#:
	db "April", 0

string_June#:
	db "June", 0

string_July#:
	db "July", 0

string_August#:
	db "August", 0

string_September#:
	db "September", 0

string_October#:
	db "October", 0

string_November#:
	db "November", 0

string_December#:
	db "December", 0

@4207$g_defaultLongMonthList:
	dq string_January#
	dq string_February#
	dq string_March#
	dq string_April#
	dq string_May#
	dq string_June#
	dq string_July#
	dq string_August#
	dq string_September#
	dq string_October#
	dq string_November#
	dq string_December#

string_25s2025s20252i202502i3A2502i3A2502i202504i#:
	; init String
	db "%s %s %2i %02i:%02i:%02i %04i", 0

int8$8#:
	; init Pointer
	dq 8

int4$3600#:
	; init Signed_Int
	dd 3600

string_#:
	; init String
	db 0

string_leap20days2025i2C20total20days2025lu0A#:
	; init String
	db "leap days %i, total days %lu", 10, 0

string_yearDaySunday2025i0A#:
	; init String
	db "yearDaySunday %i", 10, 0

string_yearDayMonday2025i0A#:
	; init String
	db "yearDayMonday %i", 10, 0

string_2504d2D2502d2D2502d202502d3A2502d3A2502d#:
	; init String
	db "%04d-%02d-%02d %02d:%02d:%02d", 0

string_2502d#:
	; init String
	db "%02d", 0

string_2503d#:
	; init String
	db "%03d", 0

string_25s#:
	; init String
	db "%s", 0

string_AM#:
	; init String
	db "AM", 0

string_PM#:
	; init String
	db "PM", 0

string_2504d2D2502d2D2502d#:
	; init String
	db "%04d-%02d-%02d", 0

string_2502d3A2502d3A2502d#:
	; init String
	db "%02d:%02d:%02d", 0

string_2504d#:
	; init String
	db "%04d", 0

string_25#:
	; init String
	db "%", 0

int4$12#:
	; init Signed_Int
	dd 12
