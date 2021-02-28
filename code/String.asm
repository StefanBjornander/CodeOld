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
	; IntegralToIntegral £temporary2806 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; Add £temporary2807 source £temporary2806
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary2805 £temporary2807 0

 strcpy$4:
	; Equal 14 £temporary2805 integral1$0#
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary2811 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; Add £temporary2812 target £temporary2811
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary2810 £temporary2812 0

 strcpy$8:
	; IntegralToIntegral £temporary2814 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; Add £temporary2815 source £temporary2814
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary2813 £temporary2815 0

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
	; IntegralToIntegral £temporary2817 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; Add £temporary2818 target £temporary2817
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary2816 £temporary2818 0

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
	; IntegralToIntegral £temporary2821 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; Add £temporary2822 source £temporary2821
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary2820 £temporary2822 0

 strncpy$5:
	; Equal 15 £temporary2820 integral1$0#
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary2827 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; Add £temporary2828 target £temporary2827
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary2826 £temporary2828 0

 strncpy$9:
	; IntegralToIntegral £temporary2830 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; Add £temporary2831 source £temporary2830
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary2829 £temporary2831 0

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
	; IntegralToIntegral £temporary2835 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; Add £temporary2836 target £temporary2835
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary2834 £temporary2836 0

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
	; GetReturnValue £temporary2837

 strcat$5:
	; Assign targetLength £temporary2837
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary2839 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; Add £temporary2840 source £temporary2839
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary2838 £temporary2840 0

 strcat$10:
	; Equal 21 £temporary2838 integral1$0#
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; Add £temporary2843 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary2845 £temporary2843
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; Add £temporary2846 target £temporary2845
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary2844 £temporary2846 0

 strcat$15:
	; IntegralToIntegral £temporary2848 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; Add £temporary2849 source £temporary2848
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary2847 £temporary2849 0

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
	; Add £temporary2850 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary2852 £temporary2850
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; Add £temporary2853 target £temporary2852
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary2851 £temporary2853 0

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
	; GetReturnValue £temporary2854

 strncat$5:
	; Assign targetLength £temporary2854
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncat$7:
	; Subtract £temporary2855 size integral4$1#
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; GreaterThanEqual 23 index £temporary2855
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary2858 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; Add £temporary2859 source £temporary2858
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary2857 £temporary2859 0

 strncat$12:
	; Equal 23 £temporary2857 integral1$0#
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; Add £temporary2863 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary2865 £temporary2863
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; Add £temporary2866 target £temporary2865
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary2864 £temporary2866 0

 strncat$17:
	; IntegralToIntegral £temporary2868 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; Add £temporary2869 source £temporary2868
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary2867 £temporary2869 0

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
	; Add £temporary2870 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; Subtract £temporary2871 £temporary2870 integral4$1#
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary2873 £temporary2871
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; Add £temporary2874 target £temporary2873
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary2872 £temporary2874 0

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
	; IntegralToIntegral £temporary2877 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; Add £temporary2878 left £temporary2877
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary2876 £temporary2878 0

 strcmp$4:
	; NotEqual 11 £temporary2876 integral1$0#
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$5:
	; IntegralToIntegral £temporary2881 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; Add £temporary2882 right £temporary2881
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary2880 £temporary2882 0

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
	; IntegralToIntegral £temporary2886 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; Add £temporary2887 left £temporary2886
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary2885 £temporary2887 0

 strcmp$14:
	; IntegralToIntegral £temporary2889 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$15:
	; Add £temporary2890 right £temporary2889
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$16:
	; Dereference £temporary2888 £temporary2890 0

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
	; IntegralToIntegral £temporary2893 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$21:
	; Add £temporary2894 left £temporary2893
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$22:
	; Dereference £temporary2892 £temporary2894 0

 strcmp$23:
	; IntegralToIntegral £temporary2896 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; Add £temporary2897 right £temporary2896
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$25:
	; Dereference £temporary2895 £temporary2897 0

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
	; IntegralToIntegral £temporary2903 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; Add £temporary2904 left £temporary2903
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary2902 £temporary2904 0

 strncmp$5:
	; NotEqual 12 £temporary2902 integral1$0#
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$6:
	; IntegralToIntegral £temporary2907 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; Add £temporary2908 right £temporary2907
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary2906 £temporary2908 0

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
	; IntegralToIntegral £temporary2912 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; Add £temporary2913 left £temporary2912
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary2911 £temporary2913 0

 strncmp$15:
	; IntegralToIntegral £temporary2915 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$16:
	; Add £temporary2916 right £temporary2915
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$17:
	; Dereference £temporary2914 £temporary2916 0

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
	; IntegralToIntegral £temporary2919 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$22:
	; Add £temporary2920 left £temporary2919
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$23:
	; Dereference £temporary2918 £temporary2920 0

 strncmp$24:
	; IntegralToIntegral £temporary2922 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; Add £temporary2923 right £temporary2922
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$26:
	; Dereference £temporary2921 £temporary2923 0

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
	; IntegralToIntegral £temporary2925 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary2925
	mov [rbp + 40], al

 strchr$2:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary2927 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; Add £temporary2928 text £temporary2927
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary2926 £temporary2928 0

 strchr$6:
	; Equal 19 £temporary2926 integral1$0#
	cmp byte [rsi], 0
	je strchr$19

 strchr$7:
	; IntegralToIntegral £temporary2932 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; Add £temporary2933 text £temporary2932
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary2931 £temporary2933 0

 strchr$10:
	; NotEqual 17 £temporary2931 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$11:
	; IntegralToIntegral £temporary2936 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; Add £temporary2937 text £temporary2936
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary2935 £temporary2937 0

 strchr$14:
	; Address £temporary2938 £temporary2935

 strchr$15:
	; SetReturnValue

 strchr$16:
	; Return £temporary2938
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
	; IntegralToIntegral £temporary2939 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary2939
	mov [rbp + 48], al

 strrchr$3:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary2941 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; Add £temporary2942 text £temporary2941
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary2940 £temporary2942 0

 strrchr$7:
	; Equal 19 £temporary2940 integral1$0#
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary2946 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; Add £temporary2947 text £temporary2946
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary2945 £temporary2947 0

 strrchr$11:
	; NotEqual 17 £temporary2945 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary2950 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; Add £temporary2951 text £temporary2950
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary2949 £temporary2951 0

 strrchr$15:
	; Address £temporary2952 £temporary2949

 strrchr$16:
	; Assign result £temporary2952
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
	; IntegralToIntegral £temporary2954 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; Add £temporary2955 mainString £temporary2954
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary2953 £temporary2955 0

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
	; IntegralToIntegral £temporary2959 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; Add £temporary2960 mainString £temporary2959
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary2958 £temporary2960 0

 strspn$10:
	; IntegralToIntegral £temporary2961 £temporary2958
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter 76 signed int £temporary2961
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
	; GetReturnValue £temporary2962

 strspn$15:
	; NotEqual 18 £temporary2962 integral8$0#
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
	; IntegralToIntegral £temporary2965 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; Add £temporary2966 mainString £temporary2965
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary2964 £temporary2966 0

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
	; IntegralToIntegral £temporary2970 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; Add £temporary2971 mainString £temporary2970
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary2969 £temporary2971 0

 strcspn$10:
	; IntegralToIntegral £temporary2972 £temporary2969
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter 76 signed int £temporary2972
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
	; GetReturnValue £temporary2973

 strcspn$15:
	; Equal 18 £temporary2973 integral8$0#
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
	; IntegralToIntegral £temporary2976 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; Add £temporary2977 mainString £temporary2976
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary2975 £temporary2977 0

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
	; IntegralToIntegral £temporary2981 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; Add £temporary2982 mainString £temporary2981
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary2980 £temporary2982 0

 strpbrk$10:
	; IntegralToIntegral £temporary2983 £temporary2980
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter 76 signed int £temporary2983
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
	; GetReturnValue £temporary2984

 strpbrk$15:
	; Equal 22 £temporary2984 integral8$0#
	cmp rbx, 0
	je strpbrk$22

 strpbrk$16:
	; IntegralToIntegral £temporary2987 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; Add £temporary2988 mainString £temporary2987
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary2986 £temporary2988 0

 strpbrk$19:
	; Address £temporary2989 £temporary2986

 strpbrk$20:
	; SetReturnValue

 strpbrk$21:
	; Return £temporary2989
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
	; GetReturnValue £temporary2990

 strstr$5:
	; Assign subStringSize £temporary2990
	mov [rbp + 44], ebx

 strstr$6:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strstr$7:
	; IntegralToIntegral £temporary2992 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; Add £temporary2993 mainString £temporary2992
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$9:
	; Dereference £temporary2991 £temporary2993 0

 strstr$10:
	; Equal 29 £temporary2991 integral1$0#
	cmp byte [rsi], 0
	je strstr$29

 strstr$11:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$12:
	; IntegralToIntegral £temporary2996 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$13:
	; Add £temporary2997 mainString £temporary2996
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$14:
	; Parameter 72 pointer £temporary2997
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
	; GetReturnValue £temporary2998

 strstr$20:
	; NotEqual 27 £temporary2998 integral4$0#
	cmp ebx, 0
	jne strstr$27

 strstr$21:
	; IntegralToIntegral £temporary3001 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$22:
	; Add £temporary3002 mainString £temporary3001
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$23:
	; Dereference £temporary3000 £temporary3002 0

 strstr$24:
	; Address £temporary3003 £temporary3000

 strstr$25:
	; SetReturnValue

 strstr$26:
	; Return £temporary3003
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
	; IntegralToIntegral £temporary3005 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; Add £temporary3006 string £temporary3005
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary3004 £temporary3006 0

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

@7267integral4$8#:
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
	; GetReturnValue £temporary3009

 strerror$4:
	; Assign localeConvPtr £temporary3009
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 15 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je strerror$15

 strerror$6:
	; Dereference £temporary3011 localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign messageList £temporary3011
	mov rax, [rsi + 56]
	mov [rbp + 36], rax

 strerror$8:
	; Equal 15 messageList integral8$0#
	cmp qword [rbp + 36], 0
	je strerror$15

 strerror$9:
	; Multiply £temporary3014 errno integral4$8#
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [@7267integral4$8#]

 strerror$10:
	; IntegralToIntegral £temporary3015 £temporary3014
	mov rbx, 4294967295
	and rax, rbx

 strerror$11:
	; Add £temporary3016 messageList £temporary3015
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$12:
	; Dereference £temporary3013 £temporary3016 0

 strerror$13:
	; SetReturnValue

 strerror$14:
	; Return £temporary3013
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

@7272$token:
	; Initializer Pointer 0
	dq 0

section .text

 strtok:
	; Equal 42 string integral8$0#
	cmp qword [rbp + 24], 0
	je strtok$42

 strtok$1:
	; Dereference £temporary3018 string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 5 £temporary3018 integral1$0#
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
	; IntegralToIntegral £temporary3021 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; Add £temporary3022 string £temporary3021
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary3020 £temporary3022 0

 strtok$9:
	; Equal 35 £temporary3020 integral1$0#
	cmp byte [rsi], 0
	je strtok$35

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary3026 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; Add £temporary3027 string £temporary3026
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary3025 £temporary3027 0

 strtok$15:
	; IntegralToIntegral £temporary3028 £temporary3025
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter 84 signed int £temporary3028
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
	; GetReturnValue £temporary3029

 strtok$20:
	; Equal 33 £temporary3029 integral8$0#
	cmp rbx, 0
	je strtok$33

 strtok$21:
	; IntegralToIntegral £temporary3032 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; Add £temporary3033 string £temporary3032
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary3031 £temporary3033 0

 strtok$24:
	; Assign £temporary3031 integral1$0#
	mov byte [rsi], 0

 strtok$25:
	; Add £temporary3034 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary3036 £temporary3034
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; Add £temporary3037 string £temporary3036
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary3035 £temporary3037 0

 strtok$29:
	; Address £temporary3038 £temporary3035

 strtok$30:
	; Assign token £temporary3038
	mov [@7272$token], rsi

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
	; IntegralToIntegral £temporary3040 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$36:
	; Add £temporary3041 string £temporary3040
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$37:
	; Dereference £temporary3039 £temporary3041 0

 strtok$38:
	; Address £temporary3042 £temporary3039

 strtok$39:
	; Assign token £temporary3042
	mov [@7272$token], rsi

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
	cmp qword [@7272$token], 0
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
	; Dereference £temporary3044 token 0
	mov rsi, [@7272$token]

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
	; IntegralToIntegral £temporary3047 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$51:
	; Add £temporary3048 token £temporary3047
	mov rsi, [@7272$token]
	add rsi, rax

 strtok$52:
	; Dereference £temporary3046 £temporary3048 0

 strtok$53:
	; Equal 80 £temporary3046 integral1$0#
	cmp byte [rsi], 0
	je strtok$80

 strtok$54:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$55:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$56:
	; IntegralToIntegral £temporary3052 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$57:
	; Add £temporary3053 token £temporary3052
	mov rsi, [@7272$token]
	add rsi, rax

 strtok$58:
	; Dereference £temporary3051 £temporary3053 0

 strtok$59:
	; IntegralToIntegral £temporary3054 £temporary3051
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
	mov rax, [@7272$token]
	mov [rbp + 52], rax

 strtok$66:
	; IntegralToIntegral £temporary3058 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; Add £temporary3059 token £temporary3058
	mov rsi, [@7272$token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3057 £temporary3059 0

 strtok$69:
	; Assign £temporary3057 integral1$0#
	mov byte [rsi], 0

 strtok$70:
	; Add £temporary3060 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$71:
	; IntegralToIntegral £temporary3062 £temporary3060
	mov rbx, 4294967295
	and rax, rbx

 strtok$72:
	; Add £temporary3063 token £temporary3062
	mov rsi, [@7272$token]
	add rsi, rax

 strtok$73:
	; Dereference £temporary3061 £temporary3063 0

 strtok$74:
	; Address £temporary3064 £temporary3061

 strtok$75:
	; Assign token £temporary3064
	mov [@7272$token], rsi

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
	mov rax, [@7272$token]
	mov [rbp + 44], rax

 strtok$81:
	; IntegralToIntegral £temporary3066 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$82:
	; Add £temporary3067 token £temporary3066
	mov rsi, [@7272$token]
	add rsi, rax

 strtok$83:
	; Dereference £temporary3065 £temporary3067 0

 strtok$84:
	; Address £temporary3068 £temporary3065

 strtok$85:
	; Assign token £temporary3068
	mov [@7272$token], rsi

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
	; IntegralToIntegral £temporary3074 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; Add £temporary3075 charTarget £temporary3074
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3073 £temporary3075 0

 memcpy$9:
	; IntegralToIntegral £temporary3077 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; Add £temporary3078 charSource £temporary3077
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3076 £temporary3078 0

 memcpy$12:
	; Assign £temporary3073 £temporary3076
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
	; IntegralToIntegral £temporary3087 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; Add £temporary3088 charTarget £temporary3087
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3086 £temporary3088 0

 memmove$10:
	; IntegralToIntegral £temporary3090 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; Add £temporary3091 charSource £temporary3090
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3089 £temporary3091 0

 memmove$13:
	; Assign £temporary3086 £temporary3089
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
	; IntegralToIntegral £temporary3095 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; Add £temporary3096 charTarget £temporary3095
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3094 £temporary3096 0

 memmove$21:
	; IntegralToIntegral £temporary3098 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; Add £temporary3099 charSource £temporary3098
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3097 £temporary3099 0

 memmove$24:
	; Assign £temporary3094 £temporary3097
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
	; IntegralToIntegral £temporary3106 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; Add £temporary3107 charLeft £temporary3106
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3105 £temporary3107 0

 memcmp$9:
	; IntegralToIntegral £temporary3109 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; Add £temporary3110 charRight £temporary3109
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3108 £temporary3110 0

 memcmp$12:
	; GreaterThanEqual 15 £temporary3105 £temporary3108
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
	; IntegralToIntegral £temporary3113 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$16:
	; Add £temporary3114 charLeft £temporary3113
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$17:
	; Dereference £temporary3112 £temporary3114 0

 memcmp$18:
	; IntegralToIntegral £temporary3116 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$19:
	; Add £temporary3117 charRight £temporary3116
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$20:
	; Dereference £temporary3115 £temporary3117 0

 memcmp$21:
	; LessThanEqual 24 £temporary3112 £temporary3115
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
	; IntegralToIntegral £temporary3124 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; Add £temporary3125 charBlock £temporary3124
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3123 £temporary3125 0

 memchr$9:
	; NotEqual 17 £temporary3123 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$10:
	; IntegralToIntegral £temporary3128 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; Add £temporary3129 charBlock £temporary3128
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3127 £temporary3129 0

 memchr$13:
	; Address £temporary3130 £temporary3127

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
	; IntegralToIntegral £temporary3137 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; Add £temporary3138 charBlock £temporary3137
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3136 £temporary3138 0

 memset$9:
	; Assign £temporary3136 c
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
