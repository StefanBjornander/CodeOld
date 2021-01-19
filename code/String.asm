	global strcpy
	global strncpy
	global strcat
	global strncat
	global strcmp
	global strncmp
	global strchr
	global strrchr
	global strspn
	global strcspn
	global strpbrk
	global strstr
	global strlen
	global strerror
	global strtok
	global memcpy
	global memmove
	global memcmp
	global memchr
	global memset

	extern localeconv
	extern $StackTop


section .text

 strcpy:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcpy$1:
	; IntegralToIntegral £temporary2781 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; BinaryAdd £temporary2782 source £temporary2781
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary2780 -> £temporary2782 £temporary2782 0

 strcpy$4:
	; Equal 14 £temporary2780 -> £temporary2782 0
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary2786 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; BinaryAdd £temporary2787 target £temporary2786
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary2785 -> £temporary2787 £temporary2787 0

 strcpy$8:
	; IntegralToIntegral £temporary2789 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; BinaryAdd £temporary2790 source £temporary2789
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary2788 -> £temporary2790 £temporary2790 0

 strcpy$11:
	; Assign £temporary2785 -> £temporary2787 £temporary2788 -> £temporary2790
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$13:
	; Jump 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary2792 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; BinaryAdd £temporary2793 target £temporary2792
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary2791 -> £temporary2793 £temporary2793 0

 strcpy$17:
	; Assign £temporary2791 -> £temporary2793 0
	mov byte [rsi], 0

 strcpy$18:
	; SetReturnValue

 strcpy$19:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcpy$20:
	; FunctionEnd strcpy

section .text

 strncpy:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncpy$1:
	; GreaterThanEqual 15 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$15

 strncpy$2:
	; IntegralToIntegral £temporary2796 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; BinaryAdd £temporary2797 source £temporary2796
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary2795 -> £temporary2797 £temporary2797 0

 strncpy$5:
	; Equal 15 £temporary2795 -> £temporary2797 0
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary2802 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; BinaryAdd £temporary2803 target £temporary2802
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary2801 -> £temporary2803 £temporary2803 0

 strncpy$9:
	; IntegralToIntegral £temporary2805 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; BinaryAdd £temporary2806 source £temporary2805
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary2804 -> £temporary2806 £temporary2806 0

 strncpy$12:
	; Assign £temporary2801 -> £temporary2803 £temporary2804 -> £temporary2806
	mov al, [rdi]
	mov [rsi], al

 strncpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncpy$14:
	; Jump 1
	jmp strncpy$1

 strncpy$15:
	; GreaterThanEqual 22 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$22

 strncpy$16:
	; IntegralToIntegral £temporary2810 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; BinaryAdd £temporary2811 target £temporary2810
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary2809 -> £temporary2811 £temporary2811 0

 strncpy$19:
	; Assign £temporary2809 -> £temporary2811 0
	mov byte [rsi], 0

 strncpy$20:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncpy$21:
	; Jump 15
	jmp strncpy$15

 strncpy$22:
	; SetReturnValue

 strncpy$23:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncpy$24:
	; FunctionEnd strncpy

section .text

 strcat:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcat$1:
	; Parameter 68 pointer target
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 strcat$2:
	; Call 44 strlen 0
	mov qword [rbp + 44], strcat$3
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strlen

 strcat$3:
	; PostCall 44

 strcat$4:
	; GetReturnValue £temporary2812

 strcat$5:
	; Assign targetLength £temporary2812
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary2814 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; BinaryAdd £temporary2815 source £temporary2814
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary2813 -> £temporary2815 £temporary2815 0

 strcat$10:
	; Equal 21 £temporary2813 -> £temporary2815 0
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; BinaryAdd £temporary2818 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary2820 £temporary2818
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; BinaryAdd £temporary2821 target £temporary2820
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary2819 -> £temporary2821 £temporary2821 0

 strcat$15:
	; IntegralToIntegral £temporary2823 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; BinaryAdd £temporary2824 source £temporary2823
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary2822 -> £temporary2824 £temporary2824 0

 strcat$18:
	; Assign £temporary2819 -> £temporary2821 £temporary2822 -> £temporary2824
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$20:
	; Jump 7
	jmp strcat$7

 strcat$21:
	; BinaryAdd £temporary2825 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary2827 £temporary2825
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; BinaryAdd £temporary2828 target £temporary2827
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary2826 -> £temporary2828 £temporary2828 0

 strcat$25:
	; Assign £temporary2826 -> £temporary2828 0
	mov byte [rsi], 0

 strcat$26:
	; SetReturnValue

 strcat$27:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcat$28:
	; FunctionEnd strcat

section .text

 strncat:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strncat$1:
	; Parameter 72 pointer target
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 strncat$2:
	; Call 48 strlen 0
	mov qword [rbp + 48], strncat$3
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strlen

 strncat$3:
	; PostCall 48

 strncat$4:
	; GetReturnValue £temporary2829

 strncat$5:
	; Assign targetLength £temporary2829
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$7:
	; BinarySubtract £temporary2830 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; GreaterThanEqual 23 index £temporary2830
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary2833 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; BinaryAdd £temporary2834 source £temporary2833
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary2832 -> £temporary2834 £temporary2834 0

 strncat$12:
	; Equal 23 £temporary2832 -> £temporary2834 0
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; BinaryAdd £temporary2838 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary2840 £temporary2838
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; BinaryAdd £temporary2841 target £temporary2840
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary2839 -> £temporary2841 £temporary2841 0

 strncat$17:
	; IntegralToIntegral £temporary2843 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; BinaryAdd £temporary2844 source £temporary2843
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary2842 -> £temporary2844 £temporary2844 0

 strncat$20:
	; Assign £temporary2839 -> £temporary2841 £temporary2842 -> £temporary2844
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$22:
	; Jump 7
	jmp strncat$7

 strncat$23:
	; BinaryAdd £temporary2845 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; BinarySubtract £temporary2846 £temporary2845 1
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary2848 £temporary2846
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; BinaryAdd £temporary2849 target £temporary2848
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary2847 -> £temporary2849 £temporary2849 0

 strncat$28:
	; Assign £temporary2847 -> £temporary2849 0
	mov byte [rsi], 0

 strncat$29:
	; SetReturnValue

 strncat$30:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncat$31:
	; FunctionEnd strncat

section .text

 strcmp:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcmp$1:
	; IntegralToIntegral £temporary2852 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; BinaryAdd £temporary2853 left £temporary2852
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary2851 -> £temporary2853 £temporary2853 0

 strcmp$4:
	; NotEqual 11 £temporary2851 -> £temporary2853 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$5:
	; IntegralToIntegral £temporary2856 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; BinaryAdd £temporary2857 right £temporary2856
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary2855 -> £temporary2857 £temporary2857 0

 strcmp$8:
	; NotEqual 11 £temporary2855 -> £temporary2857 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$9:
	; SetReturnValue

 strcmp$10:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$11:
	; IntegralToIntegral £temporary2861 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; BinaryAdd £temporary2862 left £temporary2861
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary2860 -> £temporary2862 £temporary2862 0

 strcmp$14:
	; IntegralToIntegral £temporary2864 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$15:
	; BinaryAdd £temporary2865 right £temporary2864
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$16:
	; Dereference £temporary2863 -> £temporary2865 £temporary2865 0

 strcmp$17:
	; GreaterThanEqual 20 £temporary2860 -> £temporary2862 £temporary2863 -> £temporary2865
	mov al, [rdi]
	cmp [rsi], al
	jge strcmp$20

 strcmp$18:
	; SetReturnValue

 strcmp$19:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$20:
	; IntegralToIntegral £temporary2868 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$21:
	; BinaryAdd £temporary2869 left £temporary2868
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$22:
	; Dereference £temporary2867 -> £temporary2869 £temporary2869 0

 strcmp$23:
	; IntegralToIntegral £temporary2871 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; BinaryAdd £temporary2872 right £temporary2871
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$25:
	; Dereference £temporary2870 -> £temporary2872 £temporary2872 0

 strcmp$26:
	; LessThanEqual 29 £temporary2867 -> £temporary2869 £temporary2870 -> £temporary2872
	mov al, [rdi]
	cmp [rsi], al
	jle strcmp$29

 strcmp$27:
	; SetReturnValue

 strcmp$28:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$29:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcmp$30:
	; Jump 1
	jmp strcmp$1

 strcmp$31:
	; FunctionEnd strcmp

section .text

 strncmp:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncmp$1:
	; GreaterThanEqual 32 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncmp$32

 strncmp$2:
	; IntegralToIntegral £temporary2878 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; BinaryAdd £temporary2879 left £temporary2878
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary2877 -> £temporary2879 £temporary2879 0

 strncmp$5:
	; NotEqual 12 £temporary2877 -> £temporary2879 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$6:
	; IntegralToIntegral £temporary2882 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; BinaryAdd £temporary2883 right £temporary2882
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary2881 -> £temporary2883 £temporary2883 0

 strncmp$9:
	; NotEqual 12 £temporary2881 -> £temporary2883 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$10:
	; SetReturnValue

 strncmp$11:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$12:
	; IntegralToIntegral £temporary2887 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; BinaryAdd £temporary2888 left £temporary2887
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary2886 -> £temporary2888 £temporary2888 0

 strncmp$15:
	; IntegralToIntegral £temporary2890 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$16:
	; BinaryAdd £temporary2891 right £temporary2890
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$17:
	; Dereference £temporary2889 -> £temporary2891 £temporary2891 0

 strncmp$18:
	; GreaterThanEqual 21 £temporary2886 -> £temporary2888 £temporary2889 -> £temporary2891
	mov al, [rdi]
	cmp [rsi], al
	jge strncmp$21

 strncmp$19:
	; SetReturnValue

 strncmp$20:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$21:
	; IntegralToIntegral £temporary2894 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$22:
	; BinaryAdd £temporary2895 left £temporary2894
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$23:
	; Dereference £temporary2893 -> £temporary2895 £temporary2895 0

 strncmp$24:
	; IntegralToIntegral £temporary2897 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; BinaryAdd £temporary2898 right £temporary2897
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$26:
	; Dereference £temporary2896 -> £temporary2898 £temporary2898 0

 strncmp$27:
	; LessThanEqual 30 £temporary2893 -> £temporary2895 £temporary2896 -> £temporary2898
	mov al, [rdi]
	cmp [rsi], al
	jle strncmp$30

 strncmp$28:
	; SetReturnValue

 strncmp$29:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$30:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncmp$31:
	; Jump 1
	jmp strncmp$1

 strncmp$32:
	; SetReturnValue

 strncmp$33:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$34:
	; FunctionEnd strncmp

section .text

 strchr:
	; IntegralToIntegral £temporary2900 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary2900
	mov [rbp + 40], al

 strchr$2:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary2902 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; BinaryAdd £temporary2903 text £temporary2902
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary2901 -> £temporary2903 £temporary2903 0

 strchr$6:
	; Equal 19 £temporary2901 -> £temporary2903 0
	cmp byte [rsi], 0
	je strchr$19

 strchr$7:
	; IntegralToIntegral £temporary2907 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; BinaryAdd £temporary2908 text £temporary2907
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary2906 -> £temporary2908 £temporary2908 0

 strchr$10:
	; NotEqual 17 £temporary2906 -> £temporary2908 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$11:
	; IntegralToIntegral £temporary2911 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; BinaryAdd £temporary2912 text £temporary2911
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary2910 -> £temporary2912 £temporary2912 0

 strchr$14:
	; Address £temporary2913 £temporary2910 -> £temporary2912

 strchr$15:
	; SetReturnValue

 strchr$16:
	; Return £temporary2913
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$17:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 strchr$18:
	; Jump 3
	jmp strchr$3

 strchr$19:
	; SetReturnValue

 strchr$20:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$21:
	; FunctionEnd strchr

section .text

 strrchr:
	; Assign result 0
	mov qword [rbp + 40], 0

 strrchr$1:
	; IntegralToIntegral £temporary2914 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary2914
	mov [rbp + 48], al

 strrchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary2916 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; BinaryAdd £temporary2917 text £temporary2916
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary2915 -> £temporary2917 £temporary2917 0

 strrchr$7:
	; Equal 19 £temporary2915 -> £temporary2917 0
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary2921 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; BinaryAdd £temporary2922 text £temporary2921
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary2920 -> £temporary2922 £temporary2922 0

 strrchr$11:
	; NotEqual 17 £temporary2920 -> £temporary2922 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary2925 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; BinaryAdd £temporary2926 text £temporary2925
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary2924 -> £temporary2926 £temporary2926 0

 strrchr$15:
	; Address £temporary2927 £temporary2924 -> £temporary2926

 strrchr$16:
	; Assign result £temporary2927
	mov [rbp + 40], rsi

 strrchr$17:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 strrchr$18:
	; Jump 4
	jmp strrchr$4

 strrchr$19:
	; SetReturnValue

 strrchr$20:
	; Return result
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strrchr$21:
	; FunctionEnd strrchr

section .text

 strspn:
	; Assign index 0
	mov dword [rbp + 40], 0

 strspn$1:
	; IntegralToIntegral £temporary2929 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; BinaryAdd £temporary2930 mainString £temporary2929
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary2928 -> £temporary2930 £temporary2930 0

 strspn$4:
	; Equal 20 £temporary2928 -> £temporary2930 0
	cmp byte [rsi], 0
	je strspn$20

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary2934 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; BinaryAdd £temporary2935 mainString £temporary2934
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary2933 -> £temporary2935 £temporary2935 0

 strspn$10:
	; IntegralToIntegral £temporary2936 £temporary2933 -> £temporary2935
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter 76 signedint £temporary2936
	mov [rbp + 76], eax

 strspn$12:
	; Call 44 strchr 0
	mov qword [rbp + 44], strspn$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strspn$13:
	; PostCall 44

 strspn$14:
	; GetReturnValue £temporary2937

 strspn$15:
	; NotEqual 18 £temporary2937 0
	cmp rbx, 0
	jne strspn$18

 strspn$16:
	; SetReturnValue

 strspn$17:
	; Return index
	mov ebx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$18:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strspn$19:
	; Jump 1
	jmp strspn$1

 strspn$20:
	; SetReturnValue

 strspn$21:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$22:
	; FunctionEnd strspn

section .text

 strcspn:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcspn$1:
	; IntegralToIntegral £temporary2940 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; BinaryAdd £temporary2941 mainString £temporary2940
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary2939 -> £temporary2941 £temporary2941 0

 strcspn$4:
	; Equal 20 £temporary2939 -> £temporary2941 0
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary2945 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; BinaryAdd £temporary2946 mainString £temporary2945
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary2944 -> £temporary2946 £temporary2946 0

 strcspn$10:
	; IntegralToIntegral £temporary2947 £temporary2944 -> £temporary2946
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter 76 signedint £temporary2947
	mov [rbp + 76], eax

 strcspn$12:
	; Call 44 strchr 0
	mov qword [rbp + 44], strcspn$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strcspn$13:
	; PostCall 44

 strcspn$14:
	; GetReturnValue £temporary2948

 strcspn$15:
	; Equal 18 £temporary2948 0
	cmp rbx, 0
	je strcspn$18

 strcspn$16:
	; SetReturnValue

 strcspn$17:
	; Return index
	mov ebx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$18:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcspn$19:
	; Jump 1
	jmp strcspn$1

 strcspn$20:
	; SetReturnValue

 strcspn$21:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$22:
	; FunctionEnd strcspn

section .text

 strpbrk:
	; Assign index 0
	mov dword [rbp + 40], 0

 strpbrk$1:
	; IntegralToIntegral £temporary2951 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; BinaryAdd £temporary2952 mainString £temporary2951
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary2950 -> £temporary2952 £temporary2952 0

 strpbrk$4:
	; Equal 24 £temporary2950 -> £temporary2952 0
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary2956 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; BinaryAdd £temporary2957 mainString £temporary2956
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary2955 -> £temporary2957 £temporary2957 0

 strpbrk$10:
	; IntegralToIntegral £temporary2958 £temporary2955 -> £temporary2957
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter 76 signedint £temporary2958
	mov [rbp + 76], eax

 strpbrk$12:
	; Call 44 strchr 0
	mov qword [rbp + 44], strpbrk$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strpbrk$13:
	; PostCall 44

 strpbrk$14:
	; GetReturnValue £temporary2959

 strpbrk$15:
	; Equal 22 £temporary2959 0
	cmp rbx, 0
	je strpbrk$22

 strpbrk$16:
	; IntegralToIntegral £temporary2962 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; BinaryAdd £temporary2963 mainString £temporary2962
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary2961 -> £temporary2963 £temporary2963 0

 strpbrk$19:
	; Address £temporary2964 £temporary2961 -> £temporary2963

 strpbrk$20:
	; SetReturnValue

 strpbrk$21:
	; Return £temporary2964
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$22:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strpbrk$23:
	; Jump 1
	jmp strpbrk$1

 strpbrk$24:
	; SetReturnValue

 strpbrk$25:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$26:
	; FunctionEnd strpbrk

section .text

 strstr:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$1:
	; Parameter 68 pointer subString
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strstr$2:
	; Call 44 strlen 0
	mov qword [rbp + 44], strstr$3
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strlen

 strstr$3:
	; PostCall 44

 strstr$4:
	; GetReturnValue £temporary2965

 strstr$5:
	; Assign subStringSize £temporary2965
	mov [rbp + 44], ebx

 strstr$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strstr$7:
	; IntegralToIntegral £temporary2967 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; BinaryAdd £temporary2968 mainString £temporary2967
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$9:
	; Dereference £temporary2966 -> £temporary2968 £temporary2968 0

 strstr$10:
	; Equal 29 £temporary2966 -> £temporary2968 0
	cmp byte [rsi], 0
	je strstr$29

 strstr$11:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$12:
	; IntegralToIntegral £temporary2971 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$13:
	; BinaryAdd £temporary2972 mainString £temporary2971
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$14:
	; Parameter 72 pointer £temporary2972
	mov [rbp + 72], rbx

 strstr$15:
	; Parameter 80 pointer subString
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 strstr$16:
	; Parameter 88 signedint subStringSize
	mov eax, [rbp + 44]
	mov [rbp + 88], eax

 strstr$17:
	; Call 48 strncmp 0
	mov qword [rbp + 48], strstr$18
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strncmp

 strstr$18:
	; PostCall 48

 strstr$19:
	; GetReturnValue £temporary2973

 strstr$20:
	; NotEqual 27 £temporary2973 0
	cmp ebx, 0
	jne strstr$27

 strstr$21:
	; IntegralToIntegral £temporary2976 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$22:
	; BinaryAdd £temporary2977 mainString £temporary2976
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$23:
	; Dereference £temporary2975 -> £temporary2977 £temporary2977 0

 strstr$24:
	; Address £temporary2978 £temporary2975 -> £temporary2977

 strstr$25:
	; SetReturnValue

 strstr$26:
	; Return £temporary2978
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$27:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strstr$28:
	; Jump 7
	jmp strstr$7

 strstr$29:
	; SetReturnValue

 strstr$30:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$31:
	; FunctionEnd strstr

section .text

 strlen:
	; Assign index 0
	mov dword [rbp + 32], 0

 strlen$1:
	; IntegralToIntegral £temporary2980 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; BinaryAdd £temporary2981 string £temporary2980
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary2979 -> £temporary2981 £temporary2981 0

 strlen$4:
	; Equal 7 £temporary2979 -> £temporary2981 0
	cmp byte [rsi], 0
	je strlen$7

 strlen$5:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 strlen$6:
	; Jump 1
	jmp strlen$1

 strlen$7:
	; SetReturnValue

 strlen$8:
	; Return index
	mov ebx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strlen$9:
	; FunctionEnd strlen

section .data

@8608$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 strerror:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strerror$1:
	; Call 28 localeconv 0
	mov qword [rbp + 28], strerror$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 strerror$2:
	; PostCall 28

 strerror$3:
	; GetReturnValue £temporary2984

 strerror$4:
	; Assign localeConvPtr £temporary2984
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 15 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$15

 strerror$6:
	; Dereference £temporary2986 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign messageList £temporary2986 -> localeConvPtr
	mov rax, [rsi + 56]
	mov [rbp + 36], rax

 strerror$8:
	; Equal 15 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$15

 strerror$9:
	; Multiply £temporary2989 errno 8
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [@8608$int4$8#]

 strerror$10:
	; IntegralToIntegral £temporary2990 £temporary2989
	mov rbx, 4294967295
	and rax, rbx

 strerror$11:
	; BinaryAdd £temporary2991 messageList £temporary2990
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$12:
	; Dereference £temporary2988 -> £temporary2991 £temporary2991 0

 strerror$13:
	; SetReturnValue

 strerror$14:
	; Return £temporary2988 -> £temporary2991
	mov rbx, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$15:
	; SetReturnValue

 strerror$16:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$17:
	; FunctionEnd strerror

section .data

@8615$token:
	; Initializer Pointer 0
	dq 0

section .text

 strtok:
	; Equal 42 string 0
	cmp qword [rbp + 24], 0
	je strtok$42

 strtok$1:
	; Dereference £temporary2993 -> string string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 5 £temporary2993 -> string 0
	cmp byte [rsi], 0
	jne strtok$5

 strtok$3:
	; SetReturnValue

 strtok$4:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$5:
	; Assign index 0
	mov dword [rbp + 40], 0

 strtok$6:
	; IntegralToIntegral £temporary2996 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; BinaryAdd £temporary2997 string £temporary2996
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary2995 -> £temporary2997 £temporary2997 0

 strtok$9:
	; Equal 35 £temporary2995 -> £temporary2997 0
	cmp byte [rsi], 0
	je strtok$35

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary3001 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; BinaryAdd £temporary3002 string £temporary3001
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary3000 -> £temporary3002 £temporary3002 0

 strtok$15:
	; IntegralToIntegral £temporary3003 £temporary3000 -> £temporary3002
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter 84 signedint £temporary3003
	mov [rbp + 84], eax

 strtok$17:
	; Call 52 strchr 0
	mov qword [rbp + 52], strtok$18
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$18:
	; PostCall 52

 strtok$19:
	; GetReturnValue £temporary3004

 strtok$20:
	; Equal 33 £temporary3004 0
	cmp rbx, 0
	je strtok$33

 strtok$21:
	; IntegralToIntegral £temporary3007 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; BinaryAdd £temporary3008 string £temporary3007
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary3006 -> £temporary3008 £temporary3008 0

 strtok$24:
	; Assign £temporary3006 -> £temporary3008 0
	mov byte [rsi], 0

 strtok$25:
	; BinaryAdd £temporary3009 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary3011 £temporary3009
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; BinaryAdd £temporary3012 string £temporary3011
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary3010 -> £temporary3012 £temporary3012 0

 strtok$29:
	; Address £temporary3013 £temporary3010 -> £temporary3012

 strtok$30:
	; Assign token £temporary3013
	mov [@8615$token], rsi

 strtok$31:
	; SetReturnValue

 strtok$32:
	; Return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$33:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strtok$34:
	; Jump 6
	jmp strtok$6

 strtok$35:
	; IntegralToIntegral £temporary3015 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$36:
	; BinaryAdd £temporary3016 string £temporary3015
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$37:
	; Dereference £temporary3014 -> £temporary3016 £temporary3016 0

 strtok$38:
	; Address £temporary3017 £temporary3014 -> £temporary3016

 strtok$39:
	; Assign token £temporary3017
	mov [@8615$token], rsi

 strtok$40:
	; SetReturnValue

 strtok$41:
	; Return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$42:
	; NotEqual 45 token 0
	cmp qword [@8615$token], 0
	jne strtok$45

 strtok$43:
	; SetReturnValue

 strtok$44:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$45:
	; Dereference £temporary3019 -> token token 0
	mov rsi, [@8615$token]

 strtok$46:
	; NotEqual 49 £temporary3019 -> token 0
	cmp byte [rsi], 0
	jne strtok$49

 strtok$47:
	; SetReturnValue

 strtok$48:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$49:
	; Assign index 0
	mov dword [rbp + 40], 0

 strtok$50:
	; IntegralToIntegral £temporary3022 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$51:
	; BinaryAdd £temporary3023 token £temporary3022
	mov rsi, [@8615$token]
	add rsi, rax

 strtok$52:
	; Dereference £temporary3021 -> £temporary3023 £temporary3023 0

 strtok$53:
	; Equal 80 £temporary3021 -> £temporary3023 0
	cmp byte [rsi], 0
	je strtok$80

 strtok$54:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$55:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$56:
	; IntegralToIntegral £temporary3027 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$57:
	; BinaryAdd £temporary3028 token £temporary3027
	mov rsi, [@8615$token]
	add rsi, rax

 strtok$58:
	; Dereference £temporary3026 -> £temporary3028 £temporary3028 0

 strtok$59:
	; IntegralToIntegral £temporary3029 £temporary3026 -> £temporary3028
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$60
	neg al
	neg eax

 strtok$60:
	; Parameter 84 signedint £temporary3029
	mov [rbp + 84], eax

 strtok$61:
	; Call 52 strchr 0
	mov qword [rbp + 52], strtok$62
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$62:
	; PostCall 52

 strtok$63:
	; GetReturnValue £temporary3030

 strtok$64:
	; Equal 78 £temporary3030 0
	cmp rbx, 0
	je strtok$78

 strtok$65:
	; Assign tokenStart2 token
	mov rax, [@8615$token]
	mov [rbp + 52], rax

 strtok$66:
	; IntegralToIntegral £temporary3033 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; BinaryAdd £temporary3034 token £temporary3033
	mov rsi, [@8615$token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3032 -> £temporary3034 £temporary3034 0

 strtok$69:
	; Assign £temporary3032 -> £temporary3034 0
	mov byte [rsi], 0

 strtok$70:
	; BinaryAdd £temporary3035 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$71:
	; IntegralToIntegral £temporary3037 £temporary3035
	mov rbx, 4294967295
	and rax, rbx

 strtok$72:
	; BinaryAdd £temporary3038 token £temporary3037
	mov rsi, [@8615$token]
	add rsi, rax

 strtok$73:
	; Dereference £temporary3036 -> £temporary3038 £temporary3038 0

 strtok$74:
	; Address £temporary3039 £temporary3036 -> £temporary3038

 strtok$75:
	; Assign token £temporary3039
	mov [@8615$token], rsi

 strtok$76:
	; SetReturnValue

 strtok$77:
	; Return tokenStart2
	mov rbx, [rbp + 52]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$78:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strtok$79:
	; Jump 50
	jmp strtok$50

 strtok$80:
	; Assign tokenStart token
	mov rax, [@8615$token]
	mov [rbp + 44], rax

 strtok$81:
	; IntegralToIntegral £temporary3041 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$82:
	; BinaryAdd £temporary3042 token £temporary3041
	mov rsi, [@8615$token]
	add rsi, rax

 strtok$83:
	; Dereference £temporary3040 -> £temporary3042 £temporary3042 0

 strtok$84:
	; Address £temporary3043 £temporary3040 -> £temporary3042

 strtok$85:
	; Assign token £temporary3043
	mov [@8615$token], rsi

 strtok$86:
	; SetReturnValue

 strtok$87:
	; Return tokenStart
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$88:
	; FunctionEnd strtok

section .text

 memcpy:
	; IntegralToIntegral £temporary3044 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3044
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3045 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3045
	mov [rbp + 52], rax

 memcpy$4:
	; Assign index 0
	mov dword [rbp + 60], 0

 memcpy$5:
	; GreaterThanEqual 15 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcpy$15

 memcpy$6:
	; IntegralToIntegral £temporary3049 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary3050 charTarget £temporary3049
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3048 -> £temporary3050 £temporary3050 0

 memcpy$9:
	; IntegralToIntegral £temporary3052 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary3053 charSource £temporary3052
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3051 -> £temporary3053 £temporary3053 0

 memcpy$12:
	; Assign £temporary3048 -> £temporary3050 £temporary3051 -> £temporary3053
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Jump 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3054 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; SetReturnValue

 memcpy$17:
	; Return £temporary3054
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$18:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3055 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3055
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3056 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3056
	mov [rbp + 52], rax

 memmove$4:
	; GreaterThanEqual 16 source target
	mov rax, [rbp + 24]
	cmp [rbp + 32], rax
	jge memmove$16

 memmove$5:
	; BinarySubtract index size 1
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 memmove$6:
	; LessThan 27 index 0
	cmp dword [rbp + 60], 0
	jl memmove$27

 memmove$7:
	; IntegralToIntegral £temporary3062 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary3063 charTarget £temporary3062
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3061 -> £temporary3063 £temporary3063 0

 memmove$10:
	; IntegralToIntegral £temporary3065 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary3066 charSource £temporary3065
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3064 -> £temporary3066 £temporary3066 0

 memmove$13:
	; Assign £temporary3061 -> £temporary3063 £temporary3064 -> £temporary3066
	mov al, [rdi]
	mov [rsi], al

 memmove$14:
	; BinarySubtract index index 1
	dec dword [rbp + 60]

 memmove$15:
	; Jump 6
	jmp memmove$6

 memmove$16:
	; Assign index 0
	mov dword [rbp + 60], 0

 memmove$17:
	; GreaterThanEqual 27 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memmove$27

 memmove$18:
	; IntegralToIntegral £temporary3070 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary3071 charTarget £temporary3070
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3069 -> £temporary3071 £temporary3071 0

 memmove$21:
	; IntegralToIntegral £temporary3073 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary3074 charSource £temporary3073
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3072 -> £temporary3074 £temporary3074 0

 memmove$24:
	; Assign £temporary3069 -> £temporary3071 £temporary3072 -> £temporary3074
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Jump 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3075 target
	mov rbx, [rbp + 24]

 memmove$28:
	; SetReturnValue

 memmove$29:
	; Return £temporary3075
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$30:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3076 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3076
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3077 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3077
	mov [rbp + 52], rax

 memcmp$4:
	; Assign index 0
	mov dword [rbp + 60], 0

 memcmp$5:
	; GreaterThanEqual 26 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcmp$26

 memcmp$6:
	; IntegralToIntegral £temporary3081 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary3082 charLeft £temporary3081
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3080 -> £temporary3082 £temporary3082 0

 memcmp$9:
	; IntegralToIntegral £temporary3084 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary3085 charRight £temporary3084
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3083 -> £temporary3085 £temporary3085 0

 memcmp$12:
	; GreaterThanEqual 15 £temporary3080 -> £temporary3082 £temporary3083 -> £temporary3085
	mov al, [rdi]
	cmp [rsi], al
	jge memcmp$15

 memcmp$13:
	; SetReturnValue

 memcmp$14:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$15:
	; IntegralToIntegral £temporary3088 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$16:
	; BinaryAdd £temporary3089 charLeft £temporary3088
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$17:
	; Dereference £temporary3087 -> £temporary3089 £temporary3089 0

 memcmp$18:
	; IntegralToIntegral £temporary3091 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$19:
	; BinaryAdd £temporary3092 charRight £temporary3091
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$20:
	; Dereference £temporary3090 -> £temporary3092 £temporary3092 0

 memcmp$21:
	; LessThanEqual 24 £temporary3087 -> £temporary3089 £temporary3090 -> £temporary3092
	mov al, [rdi]
	cmp [rsi], al
	jle memcmp$24

 memcmp$22:
	; SetReturnValue

 memcmp$23:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$24:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcmp$25:
	; Jump 5
	jmp memcmp$5

 memcmp$26:
	; SetReturnValue

 memcmp$27:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$28:
	; FunctionEnd memcmp

section .text

 memchr:
	; IntegralToIntegral £temporary3094 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3094
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3095 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3095
	mov [rbp + 52], al

 memchr$4:
	; Assign index 0
	mov dword [rbp + 40], 0

 memchr$5:
	; GreaterThanEqual 19 index size
	mov eax, [rbp + 36]
	cmp [rbp + 40], eax
	jge memchr$19

 memchr$6:
	; IntegralToIntegral £temporary3099 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; BinaryAdd £temporary3100 charBlock £temporary3099
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3098 -> £temporary3100 £temporary3100 0

 memchr$9:
	; NotEqual 17 £temporary3098 -> £temporary3100 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$10:
	; IntegralToIntegral £temporary3103 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; BinaryAdd £temporary3104 charBlock £temporary3103
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3102 -> £temporary3104 £temporary3104 0

 memchr$13:
	; Address £temporary3105 £temporary3102 -> £temporary3104

 memchr$14:
	; IntegralToIntegral £temporary3106 £temporary3105

 memchr$15:
	; SetReturnValue

 memchr$16:
	; Return £temporary3106
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$17:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 memchr$18:
	; Jump 5
	jmp memchr$5

 memchr$19:
	; SetReturnValue

 memchr$20:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$21:
	; FunctionEnd memchr

section .text

 memset:
	; IntegralToIntegral £temporary3107 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3107
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3108 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3108
	mov [rbp + 48], al

 memset$4:
	; Assign index 0
	mov dword [rbp + 49], 0

 memset$5:
	; GreaterThanEqual 12 index size
	mov eax, [rbp + 36]
	cmp [rbp + 49], eax
	jge memset$12

 memset$6:
	; IntegralToIntegral £temporary3112 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary3113 charBlock £temporary3112
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3111 -> £temporary3113 £temporary3113 0

 memset$9:
	; Assign £temporary3111 -> £temporary3113 c
	mov al, [rbp + 48]
	mov [rsi], al

 memset$10:
	; BinaryAdd index index 1
	inc dword [rbp + 49]

 memset$11:
	; Jump 5
	jmp memset$5

 memset$12:
	; SetReturnValue

 memset$13:
	; Return block
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memset$14:
	; FunctionEnd memset
