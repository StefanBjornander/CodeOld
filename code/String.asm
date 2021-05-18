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
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcpy$1:
	; IntegralToIntegral £temporary2803 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; Add £temporary2804 source £temporary2803
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary2805 £temporary2804 0

 strcpy$4:
	; Equal 14 £temporary2805 integral1$0#
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary2808 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; Add £temporary2809 target £temporary2808
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary2810 £temporary2809 0

 strcpy$8:
	; IntegralToIntegral £temporary2811 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; Add £temporary2812 source £temporary2811
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary2813 £temporary2812 0

 strcpy$11:
	; Assign £temporary2810 £temporary2813
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcpy$13:
	; Jump 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary2814 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; Add £temporary2815 target £temporary2814
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary2816 £temporary2815 0

 strcpy$17:
	; Assign £temporary2816 integral1$0#
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
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncpy$1:
	; GreaterThanEqual 15 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$15

 strncpy$2:
	; IntegralToIntegral £temporary2818 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; Add £temporary2819 source £temporary2818
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary2820 £temporary2819 0

 strncpy$5:
	; Equal 15 £temporary2820 integral1$0#
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary2824 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; Add £temporary2825 target £temporary2824
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary2826 £temporary2825 0

 strncpy$9:
	; IntegralToIntegral £temporary2827 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; Add £temporary2828 source £temporary2827
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary2829 £temporary2828 0

 strncpy$12:
	; Assign £temporary2826 £temporary2829
	mov al, [rdi]
	mov [rsi], al

 strncpy$13:
	; Add index index integral4$1#
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
	; IntegralToIntegral £temporary2832 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; Add £temporary2833 target £temporary2832
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary2834 £temporary2833 0

 strncpy$19:
	; Assign £temporary2834 integral1$0#
	mov byte [rsi], 0

 strncpy$20:
	; Add index index integral4$1#
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
	; GetReturnValue £temporary2835

 strcat$5:
	; Assign targetLength £temporary2835
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary2836 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; Add £temporary2837 source £temporary2836
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary2838 £temporary2837 0

 strcat$10:
	; Equal 21 £temporary2838 integral1$0#
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; Add £temporary2841 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary2842 £temporary2841
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; Add £temporary2843 target £temporary2842
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary2844 £temporary2843 0

 strcat$15:
	; IntegralToIntegral £temporary2845 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; Add £temporary2846 source £temporary2845
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary2847 £temporary2846 0

 strcat$18:
	; Assign £temporary2844 £temporary2847
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcat$20:
	; Jump 7
	jmp strcat$7

 strcat$21:
	; Add £temporary2848 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary2849 £temporary2848
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; Add £temporary2850 target £temporary2849
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary2851 £temporary2850 0

 strcat$25:
	; Assign £temporary2851 integral1$0#
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
	; GetReturnValue £temporary2852

 strncat$5:
	; Assign targetLength £temporary2852
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncat$7:
	; Subtract £temporary2853 size integral4$1#
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; GreaterThanEqual 23 index £temporary2853
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary2855 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; Add £temporary2856 source £temporary2855
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary2857 £temporary2856 0

 strncat$12:
	; Equal 23 £temporary2857 integral1$0#
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; Add £temporary2861 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary2862 £temporary2861
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; Add £temporary2863 target £temporary2862
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary2864 £temporary2863 0

 strncat$17:
	; IntegralToIntegral £temporary2865 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; Add £temporary2866 source £temporary2865
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary2867 £temporary2866 0

 strncat$20:
	; Assign £temporary2864 £temporary2867
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 strncat$22:
	; Jump 7
	jmp strncat$7

 strncat$23:
	; Add £temporary2868 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; Subtract £temporary2869 £temporary2868 integral4$1#
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary2870 £temporary2869
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; Add £temporary2871 target £temporary2870
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary2872 £temporary2871 0

 strncat$28:
	; Assign £temporary2872 integral1$0#
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
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcmp$1:
	; IntegralToIntegral £temporary2874 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; Add £temporary2875 left £temporary2874
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary2876 £temporary2875 0

 strcmp$4:
	; NotEqual 11 £temporary2876 integral1$0#
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$5:
	; IntegralToIntegral £temporary2878 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; Add £temporary2879 right £temporary2878
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary2880 £temporary2879 0

 strcmp$8:
	; NotEqual 11 £temporary2880 integral1$0#
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$9:
	; SetReturnValue

 strcmp$10:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$11:
	; IntegralToIntegral £temporary2883 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; Add £temporary2884 left £temporary2883
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary2885 £temporary2884 0

 strcmp$14:
	; IntegralToIntegral £temporary2886 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$15:
	; Add £temporary2887 right £temporary2886
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$16:
	; Dereference £temporary2888 £temporary2887 0

 strcmp$17:
	; GreaterThanEqual 20 £temporary2885 £temporary2888
	mov al, [rdi]
	cmp [rsi], al
	jge strcmp$20

 strcmp$18:
	; SetReturnValue

 strcmp$19:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$20:
	; IntegralToIntegral £temporary2890 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$21:
	; Add £temporary2891 left £temporary2890
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$22:
	; Dereference £temporary2892 £temporary2891 0

 strcmp$23:
	; IntegralToIntegral £temporary2893 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; Add £temporary2894 right £temporary2893
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$25:
	; Dereference £temporary2895 £temporary2894 0

 strcmp$26:
	; LessThanEqual 29 £temporary2892 £temporary2895
	mov al, [rdi]
	cmp [rsi], al
	jle strcmp$29

 strcmp$27:
	; SetReturnValue

 strcmp$28:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$29:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcmp$30:
	; Jump 1
	jmp strcmp$1

 strcmp$31:
	; FunctionEnd strcmp

section .text

 strncmp:
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncmp$1:
	; GreaterThanEqual 32 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncmp$32

 strncmp$2:
	; IntegralToIntegral £temporary2900 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; Add £temporary2901 left £temporary2900
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary2902 £temporary2901 0

 strncmp$5:
	; NotEqual 12 £temporary2902 integral1$0#
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$6:
	; IntegralToIntegral £temporary2904 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; Add £temporary2905 right £temporary2904
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary2906 £temporary2905 0

 strncmp$9:
	; NotEqual 12 £temporary2906 integral1$0#
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$10:
	; SetReturnValue

 strncmp$11:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$12:
	; IntegralToIntegral £temporary2909 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; Add £temporary2910 left £temporary2909
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary2911 £temporary2910 0

 strncmp$15:
	; IntegralToIntegral £temporary2912 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$16:
	; Add £temporary2913 right £temporary2912
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$17:
	; Dereference £temporary2914 £temporary2913 0

 strncmp$18:
	; GreaterThanEqual 21 £temporary2911 £temporary2914
	mov al, [rdi]
	cmp [rsi], al
	jge strncmp$21

 strncmp$19:
	; SetReturnValue

 strncmp$20:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$21:
	; IntegralToIntegral £temporary2916 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$22:
	; Add £temporary2917 left £temporary2916
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$23:
	; Dereference £temporary2918 £temporary2917 0

 strncmp$24:
	; IntegralToIntegral £temporary2919 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; Add £temporary2920 right £temporary2919
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$26:
	; Dereference £temporary2921 £temporary2920 0

 strncmp$27:
	; LessThanEqual 30 £temporary2918 £temporary2921
	mov al, [rdi]
	cmp [rsi], al
	jle strncmp$30

 strncmp$28:
	; SetReturnValue

 strncmp$29:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$30:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 strncmp$31:
	; Jump 1
	jmp strncmp$1

 strncmp$32:
	; SetReturnValue

 strncmp$33:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$34:
	; FunctionEnd strncmp

section .text

 strchr:
	; IntegralToIntegral £temporary2923 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary2923
	mov [rbp + 40], al

 strchr$2:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary2924 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; Add £temporary2925 text £temporary2924
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary2926 £temporary2925 0

 strchr$6:
	; Equal 19 £temporary2926 integral1$0#
	cmp byte [rsi], 0
	je strchr$19

 strchr$7:
	; IntegralToIntegral £temporary2929 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; Add £temporary2930 text £temporary2929
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary2931 £temporary2930 0

 strchr$10:
	; NotEqual 17 £temporary2931 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$11:
	; IntegralToIntegral £temporary2933 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; Add £temporary2934 text £temporary2933
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary2935 £temporary2934 0

 strchr$14:
	; Address £temporary2936 £temporary2935

 strchr$15:
	; SetReturnValue

 strchr$16:
	; Return £temporary2936
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$17:
	; Add index index integral4$1#
	inc dword [rbp + 36]

 strchr$18:
	; Jump 3
	jmp strchr$3

 strchr$19:
	; SetReturnValue

 strchr$20:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$21:
	; FunctionEnd strchr

section .text

 strrchr:
	; Assign result integral8$0#
	mov qword [rbp + 40], 0

 strrchr$1:
	; IntegralToIntegral £temporary2937 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary2937
	mov [rbp + 48], al

 strrchr$3:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary2938 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; Add £temporary2939 text £temporary2938
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary2940 £temporary2939 0

 strrchr$7:
	; Equal 19 £temporary2940 integral1$0#
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary2943 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; Add £temporary2944 text £temporary2943
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary2945 £temporary2944 0

 strrchr$11:
	; NotEqual 17 £temporary2945 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary2947 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; Add £temporary2948 text £temporary2947
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary2949 £temporary2948 0

 strrchr$15:
	; Address £temporary2950 £temporary2949

 strrchr$16:
	; Assign result £temporary2950
	mov [rbp + 40], rsi

 strrchr$17:
	; Add index index integral4$1#
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
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strspn$1:
	; IntegralToIntegral £temporary2951 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; Add £temporary2952 mainString £temporary2951
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary2953 £temporary2952 0

 strspn$4:
	; Equal 20 £temporary2953 integral1$0#
	cmp byte [rsi], 0
	je strspn$20

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary2956 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; Add £temporary2957 mainString £temporary2956
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary2958 £temporary2957 0

 strspn$10:
	; IntegralToIntegral £temporary2959 £temporary2958
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter 76 signed int £temporary2959
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
	; GetReturnValue £temporary2960

 strspn$15:
	; NotEqual 18 £temporary2960 integral8$0#
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
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strspn$19:
	; Jump 1
	jmp strspn$1

 strspn$20:
	; SetReturnValue

 strspn$21:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$22:
	; FunctionEnd strspn

section .text

 strcspn:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcspn$1:
	; IntegralToIntegral £temporary2962 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; Add £temporary2963 mainString £temporary2962
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary2964 £temporary2963 0

 strcspn$4:
	; Equal 20 £temporary2964 integral1$0#
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary2967 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; Add £temporary2968 mainString £temporary2967
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary2969 £temporary2968 0

 strcspn$10:
	; IntegralToIntegral £temporary2970 £temporary2969
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter 76 signed int £temporary2970
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
	; GetReturnValue £temporary2971

 strcspn$15:
	; Equal 18 £temporary2971 integral8$0#
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
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcspn$19:
	; Jump 1
	jmp strcspn$1

 strcspn$20:
	; SetReturnValue

 strcspn$21:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$22:
	; FunctionEnd strcspn

section .text

 strpbrk:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strpbrk$1:
	; IntegralToIntegral £temporary2973 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; Add £temporary2974 mainString £temporary2973
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary2975 £temporary2974 0

 strpbrk$4:
	; Equal 24 £temporary2975 integral1$0#
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary2978 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; Add £temporary2979 mainString £temporary2978
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary2980 £temporary2979 0

 strpbrk$10:
	; IntegralToIntegral £temporary2981 £temporary2980
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter 76 signed int £temporary2981
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
	; GetReturnValue £temporary2982

 strpbrk$15:
	; Equal 22 £temporary2982 integral8$0#
	cmp rbx, 0
	je strpbrk$22

 strpbrk$16:
	; IntegralToIntegral £temporary2984 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; Add £temporary2985 mainString £temporary2984
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary2986 £temporary2985 0

 strpbrk$19:
	; Address £temporary2987 £temporary2986

 strpbrk$20:
	; SetReturnValue

 strpbrk$21:
	; Return £temporary2987
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$22:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strpbrk$23:
	; Jump 1
	jmp strpbrk$1

 strpbrk$24:
	; SetReturnValue

 strpbrk$25:
	; Return integral8$0#
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
	; GetReturnValue £temporary2988

 strstr$5:
	; Assign subStringSize £temporary2988
	mov [rbp + 44], ebx

 strstr$6:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strstr$7:
	; IntegralToIntegral £temporary2989 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; Add £temporary2990 mainString £temporary2989
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$9:
	; Dereference £temporary2991 £temporary2990 0

 strstr$10:
	; Equal 29 £temporary2991 integral1$0#
	cmp byte [rsi], 0
	je strstr$29

 strstr$11:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$12:
	; IntegralToIntegral £temporary2994 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$13:
	; Add £temporary2995 mainString £temporary2994
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$14:
	; Parameter 72 pointer £temporary2995
	mov [rbp + 72], rbx

 strstr$15:
	; Parameter 80 pointer subString
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 strstr$16:
	; Parameter 88 signed int subStringSize
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
	; GetReturnValue £temporary2996

 strstr$20:
	; NotEqual 27 £temporary2996 integral4$0#
	cmp ebx, 0
	jne strstr$27

 strstr$21:
	; IntegralToIntegral £temporary2998 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$22:
	; Add £temporary2999 mainString £temporary2998
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$23:
	; Dereference £temporary3000 £temporary2999 0

 strstr$24:
	; Address £temporary3001 £temporary3000

 strstr$25:
	; SetReturnValue

 strstr$26:
	; Return £temporary3001
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$27:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strstr$28:
	; Jump 7
	jmp strstr$7

 strstr$29:
	; SetReturnValue

 strstr$30:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$31:
	; FunctionEnd strstr

section .text

 strlen:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 strlen$1:
	; IntegralToIntegral £temporary3002 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; Add £temporary3003 string £temporary3002
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary3004 £temporary3003 0

 strlen$4:
	; Equal 7 £temporary3004 integral1$0#
	cmp byte [rsi], 0
	je strlen$7

 strlen$5:
	; Add index index integral4$1#
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

@7425integral4$8#:
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
	; GetReturnValue £temporary3007

 strerror$4:
	; Assign localeConvPtr £temporary3007
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 15 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je strerror$15

 strerror$6:
	; Dereference £temporary3009 localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign messageList £temporary3009.messageList
	mov rax, [rsi + 56]
	mov [rbp + 36], rax

 strerror$8:
	; Equal 15 messageList integral8$0#
	cmp qword [rbp + 36], 0
	je strerror$15

 strerror$9:
	; Multiply £temporary3011 errno integral4$8#
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [@7425integral4$8#]

 strerror$10:
	; IntegralToIntegral £temporary3012 £temporary3011
	mov rbx, 4294967295
	and rax, rbx

 strerror$11:
	; Add £temporary3013 messageList £temporary3012
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$12:
	; Dereference £temporary3014 £temporary3013 0

 strerror$13:
	; SetReturnValue

 strerror$14:
	; Return £temporary3014
	mov rbx, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$15:
	; SetReturnValue

 strerror$16:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$17:
	; FunctionEnd strerror

section .data

@7430$token:
	; Initializer Pointer 0
	dq 0

section .text

 strtok:
	; Equal 42 string integral8$0#
	cmp qword [rbp + 24], 0
	je strtok$42

 strtok$1:
	; Dereference £temporary3017 £temporary3016 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 5 £temporary3017 integral1$0#
	cmp byte [rsi], 0
	jne strtok$5

 strtok$3:
	; SetReturnValue

 strtok$4:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$5:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strtok$6:
	; IntegralToIntegral £temporary3019 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; Add £temporary3020 string £temporary3019
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary3021 £temporary3020 0

 strtok$9:
	; Equal 35 £temporary3021 integral1$0#
	cmp byte [rsi], 0
	je strtok$35

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary3024 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; Add £temporary3025 string £temporary3024
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary3026 £temporary3025 0

 strtok$15:
	; IntegralToIntegral £temporary3027 £temporary3026
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter 84 signed int £temporary3027
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
	; GetReturnValue £temporary3028

 strtok$20:
	; Equal 33 £temporary3028 integral8$0#
	cmp rbx, 0
	je strtok$33

 strtok$21:
	; IntegralToIntegral £temporary3030 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; Add £temporary3031 string £temporary3030
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary3032 £temporary3031 0

 strtok$24:
	; Assign £temporary3032 integral1$0#
	mov byte [rsi], 0

 strtok$25:
	; Add £temporary3033 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary3034 £temporary3033
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; Add £temporary3035 string £temporary3034
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary3036 £temporary3035 0

 strtok$29:
	; Address £temporary3037 £temporary3036

 strtok$30:
	; Assign token £temporary3037
	mov [@7430$token], rsi

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
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strtok$34:
	; Jump 6
	jmp strtok$6

 strtok$35:
	; IntegralToIntegral £temporary3038 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$36:
	; Add £temporary3039 string £temporary3038
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$37:
	; Dereference £temporary3040 £temporary3039 0

 strtok$38:
	; Address £temporary3041 £temporary3040

 strtok$39:
	; Assign token £temporary3041
	mov [@7430$token], rsi

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
	; NotEqual 45 token integral8$0#
	cmp qword [@7430$token], 0
	jne strtok$45

 strtok$43:
	; SetReturnValue

 strtok$44:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$45:
	; Dereference £temporary3044 £temporary3043 0
	mov rsi, [@7430$token]

 strtok$46:
	; NotEqual 49 £temporary3044 integral1$0#
	cmp byte [rsi], 0
	jne strtok$49

 strtok$47:
	; SetReturnValue

 strtok$48:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$49:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strtok$50:
	; IntegralToIntegral £temporary3046 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$51:
	; Add £temporary3047 token £temporary3046
	mov rsi, [@7430$token]
	add rsi, rax

 strtok$52:
	; Dereference £temporary3048 £temporary3047 0

 strtok$53:
	; Equal 80 £temporary3048 integral1$0#
	cmp byte [rsi], 0
	je strtok$80

 strtok$54:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$55:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$56:
	; IntegralToIntegral £temporary3051 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$57:
	; Add £temporary3052 token £temporary3051
	mov rsi, [@7430$token]
	add rsi, rax

 strtok$58:
	; Dereference £temporary3053 £temporary3052 0

 strtok$59:
	; IntegralToIntegral £temporary3054 £temporary3053
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$60
	neg al
	neg eax

 strtok$60:
	; Parameter 84 signed int £temporary3054
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
	; GetReturnValue £temporary3055

 strtok$64:
	; Equal 78 £temporary3055 integral8$0#
	cmp rbx, 0
	je strtok$78

 strtok$65:
	; Assign tokenStart2 token
	mov rax, [@7430$token]
	mov [rbp + 52], rax

 strtok$66:
	; IntegralToIntegral £temporary3057 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; Add £temporary3058 token £temporary3057
	mov rsi, [@7430$token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3059 £temporary3058 0

 strtok$69:
	; Assign £temporary3059 integral1$0#
	mov byte [rsi], 0

 strtok$70:
	; Add £temporary3060 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$71:
	; IntegralToIntegral £temporary3061 £temporary3060
	mov rbx, 4294967295
	and rax, rbx

 strtok$72:
	; Add £temporary3062 token £temporary3061
	mov rsi, [@7430$token]
	add rsi, rax

 strtok$73:
	; Dereference £temporary3063 £temporary3062 0

 strtok$74:
	; Address £temporary3064 £temporary3063

 strtok$75:
	; Assign token £temporary3064
	mov [@7430$token], rsi

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
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strtok$79:
	; Jump 50
	jmp strtok$50

 strtok$80:
	; Assign tokenStart token
	mov rax, [@7430$token]
	mov [rbp + 44], rax

 strtok$81:
	; IntegralToIntegral £temporary3065 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$82:
	; Add £temporary3066 token £temporary3065
	mov rsi, [@7430$token]
	add rsi, rax

 strtok$83:
	; Dereference £temporary3067 £temporary3066 0

 strtok$84:
	; Address £temporary3068 £temporary3067

 strtok$85:
	; Assign token £temporary3068
	mov [@7430$token], rsi

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
	; IntegralToIntegral £temporary3069 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3069
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3070 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3070
	mov [rbp + 52], rax

 memcpy$4:
	; Assign index integral4$0#
	mov dword [rbp + 60], 0

 memcpy$5:
	; GreaterThanEqual 15 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcpy$15

 memcpy$6:
	; IntegralToIntegral £temporary3073 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; Add £temporary3074 charTarget £temporary3073
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3075 £temporary3074 0

 memcpy$9:
	; IntegralToIntegral £temporary3076 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; Add £temporary3077 charSource £temporary3076
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3078 £temporary3077 0

 memcpy$12:
	; Assign £temporary3075 £temporary3078
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 memcpy$14:
	; Jump 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3079 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; SetReturnValue

 memcpy$17:
	; Return £temporary3079
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$18:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3080 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3080
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3081 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3081
	mov [rbp + 52], rax

 memmove$4:
	; GreaterThanEqual 16 source target
	mov rax, [rbp + 24]
	cmp [rbp + 32], rax
	jge memmove$16

 memmove$5:
	; Subtract index size integral4$1#
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 memmove$6:
	; LessThan 27 index integral4$0#
	cmp dword [rbp + 60], 0
	jl memmove$27

 memmove$7:
	; IntegralToIntegral £temporary3086 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; Add £temporary3087 charTarget £temporary3086
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3088 £temporary3087 0

 memmove$10:
	; IntegralToIntegral £temporary3089 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; Add £temporary3090 charSource £temporary3089
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3091 £temporary3090 0

 memmove$13:
	; Assign £temporary3088 £temporary3091
	mov al, [rdi]
	mov [rsi], al

 memmove$14:
	; Subtract index index integral4$1#
	dec dword [rbp + 60]

 memmove$15:
	; Jump 6
	jmp memmove$6

 memmove$16:
	; Assign index integral4$0#
	mov dword [rbp + 60], 0

 memmove$17:
	; GreaterThanEqual 27 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memmove$27

 memmove$18:
	; IntegralToIntegral £temporary3094 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; Add £temporary3095 charTarget £temporary3094
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3096 £temporary3095 0

 memmove$21:
	; IntegralToIntegral £temporary3097 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; Add £temporary3098 charSource £temporary3097
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3099 £temporary3098 0

 memmove$24:
	; Assign £temporary3096 £temporary3099
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 memmove$26:
	; Jump 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3100 target
	mov rbx, [rbp + 24]

 memmove$28:
	; SetReturnValue

 memmove$29:
	; Return £temporary3100
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$30:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3101 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3101
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3102 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3102
	mov [rbp + 52], rax

 memcmp$4:
	; Assign index integral4$0#
	mov dword [rbp + 60], 0

 memcmp$5:
	; GreaterThanEqual 26 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcmp$26

 memcmp$6:
	; IntegralToIntegral £temporary3105 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; Add £temporary3106 charLeft £temporary3105
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3107 £temporary3106 0

 memcmp$9:
	; IntegralToIntegral £temporary3108 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; Add £temporary3109 charRight £temporary3108
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3110 £temporary3109 0

 memcmp$12:
	; GreaterThanEqual 15 £temporary3107 £temporary3110
	mov al, [rdi]
	cmp [rsi], al
	jge memcmp$15

 memcmp$13:
	; SetReturnValue

 memcmp$14:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$15:
	; IntegralToIntegral £temporary3112 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$16:
	; Add £temporary3113 charLeft £temporary3112
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$17:
	; Dereference £temporary3114 £temporary3113 0

 memcmp$18:
	; IntegralToIntegral £temporary3115 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$19:
	; Add £temporary3116 charRight £temporary3115
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$20:
	; Dereference £temporary3117 £temporary3116 0

 memcmp$21:
	; LessThanEqual 24 £temporary3114 £temporary3117
	mov al, [rdi]
	cmp [rsi], al
	jle memcmp$24

 memcmp$22:
	; SetReturnValue

 memcmp$23:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$24:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 memcmp$25:
	; Jump 5
	jmp memcmp$5

 memcmp$26:
	; SetReturnValue

 memcmp$27:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$28:
	; FunctionEnd memcmp

section .text

 memchr:
	; IntegralToIntegral £temporary3119 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3119
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3120 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3120
	mov [rbp + 52], al

 memchr$4:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 memchr$5:
	; GreaterThanEqual 19 index size
	mov eax, [rbp + 36]
	cmp [rbp + 40], eax
	jge memchr$19

 memchr$6:
	; IntegralToIntegral £temporary3123 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; Add £temporary3124 charBlock £temporary3123
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3125 £temporary3124 0

 memchr$9:
	; NotEqual 17 £temporary3125 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$10:
	; IntegralToIntegral £temporary3127 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; Add £temporary3128 charBlock £temporary3127
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3129 £temporary3128 0

 memchr$13:
	; Address £temporary3130 £temporary3129

 memchr$14:
	; IntegralToIntegral £temporary3131 £temporary3130

 memchr$15:
	; SetReturnValue

 memchr$16:
	; Return £temporary3131
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$17:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 memchr$18:
	; Jump 5
	jmp memchr$5

 memchr$19:
	; SetReturnValue

 memchr$20:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$21:
	; FunctionEnd memchr

section .text

 memset:
	; IntegralToIntegral £temporary3132 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3132
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3133 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3133
	mov [rbp + 48], al

 memset$4:
	; Assign index integral4$0#
	mov dword [rbp + 49], 0

 memset$5:
	; GreaterThanEqual 12 index size
	mov eax, [rbp + 36]
	cmp [rbp + 49], eax
	jge memset$12

 memset$6:
	; IntegralToIntegral £temporary3136 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; Add £temporary3137 charBlock £temporary3136
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3138 £temporary3137 0

 memset$9:
	; Assign £temporary3138 c
	mov al, [rbp + 48]
	mov [rsi], al

 memset$10:
	; Add index index integral4$1#
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
