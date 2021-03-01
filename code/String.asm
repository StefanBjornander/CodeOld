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
	; IntegralToIntegral £temporary2791 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; Add £temporary2792 source £temporary2791
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary2793 £temporary2792 0

 strcpy$4:
	; Equal 14 £temporary2793 integral1$0#
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary2796 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; Add £temporary2797 target £temporary2796
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary2798 £temporary2797 0

 strcpy$8:
	; IntegralToIntegral £temporary2799 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; Add £temporary2800 source £temporary2799
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary2801 £temporary2800 0

 strcpy$11:
	; Assign £temporary2798 £temporary2801
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcpy$13:
	; Jump 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary2802 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; Add £temporary2803 target £temporary2802
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary2804 £temporary2803 0

 strcpy$17:
	; Assign £temporary2804 integral1$0#
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
	; IntegralToIntegral £temporary2806 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; Add £temporary2807 source £temporary2806
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary2808 £temporary2807 0

 strncpy$5:
	; Equal 15 £temporary2808 integral1$0#
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary2812 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; Add £temporary2813 target £temporary2812
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary2814 £temporary2813 0

 strncpy$9:
	; IntegralToIntegral £temporary2815 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; Add £temporary2816 source £temporary2815
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary2817 £temporary2816 0

 strncpy$12:
	; Assign £temporary2814 £temporary2817
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
	; IntegralToIntegral £temporary2820 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; Add £temporary2821 target £temporary2820
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary2822 £temporary2821 0

 strncpy$19:
	; Assign £temporary2822 integral1$0#
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
	; GetReturnValue £temporary2823

 strcat$5:
	; Assign targetLength £temporary2823
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary2824 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; Add £temporary2825 source £temporary2824
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary2826 £temporary2825 0

 strcat$10:
	; Equal 21 £temporary2826 integral1$0#
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; Add £temporary2829 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary2830 £temporary2829
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; Add £temporary2831 target £temporary2830
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary2832 £temporary2831 0

 strcat$15:
	; IntegralToIntegral £temporary2833 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; Add £temporary2834 source £temporary2833
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary2835 £temporary2834 0

 strcat$18:
	; Assign £temporary2832 £temporary2835
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcat$20:
	; Jump 7
	jmp strcat$7

 strcat$21:
	; Add £temporary2836 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary2837 £temporary2836
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; Add £temporary2838 target £temporary2837
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary2839 £temporary2838 0

 strcat$25:
	; Assign £temporary2839 integral1$0#
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
	; GetReturnValue £temporary2840

 strncat$5:
	; Assign targetLength £temporary2840
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncat$7:
	; Subtract £temporary2841 size integral4$1#
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; GreaterThanEqual 23 index £temporary2841
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary2843 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; Add £temporary2844 source £temporary2843
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary2845 £temporary2844 0

 strncat$12:
	; Equal 23 £temporary2845 integral1$0#
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; Add £temporary2849 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary2850 £temporary2849
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; Add £temporary2851 target £temporary2850
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary2852 £temporary2851 0

 strncat$17:
	; IntegralToIntegral £temporary2853 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; Add £temporary2854 source £temporary2853
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary2855 £temporary2854 0

 strncat$20:
	; Assign £temporary2852 £temporary2855
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 strncat$22:
	; Jump 7
	jmp strncat$7

 strncat$23:
	; Add £temporary2856 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; Subtract £temporary2857 £temporary2856 integral4$1#
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary2858 £temporary2857
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; Add £temporary2859 target £temporary2858
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary2860 £temporary2859 0

 strncat$28:
	; Assign £temporary2860 integral1$0#
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
	; IntegralToIntegral £temporary2862 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; Add £temporary2863 left £temporary2862
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary2864 £temporary2863 0

 strcmp$4:
	; NotEqual 11 £temporary2864 integral1$0#
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$5:
	; IntegralToIntegral £temporary2866 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; Add £temporary2867 right £temporary2866
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary2868 £temporary2867 0

 strcmp$8:
	; NotEqual 11 £temporary2868 integral1$0#
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
	; IntegralToIntegral £temporary2871 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; Add £temporary2872 left £temporary2871
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary2873 £temporary2872 0

 strcmp$14:
	; IntegralToIntegral £temporary2874 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$15:
	; Add £temporary2875 right £temporary2874
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$16:
	; Dereference £temporary2876 £temporary2875 0

 strcmp$17:
	; GreaterThanEqual 20 £temporary2873 £temporary2876
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
	; IntegralToIntegral £temporary2878 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$21:
	; Add £temporary2879 left £temporary2878
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$22:
	; Dereference £temporary2880 £temporary2879 0

 strcmp$23:
	; IntegralToIntegral £temporary2881 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; Add £temporary2882 right £temporary2881
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$25:
	; Dereference £temporary2883 £temporary2882 0

 strcmp$26:
	; LessThanEqual 29 £temporary2880 £temporary2883
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
	; IntegralToIntegral £temporary2888 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; Add £temporary2889 left £temporary2888
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary2890 £temporary2889 0

 strncmp$5:
	; NotEqual 12 £temporary2890 integral1$0#
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$6:
	; IntegralToIntegral £temporary2892 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; Add £temporary2893 right £temporary2892
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary2894 £temporary2893 0

 strncmp$9:
	; NotEqual 12 £temporary2894 integral1$0#
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
	; IntegralToIntegral £temporary2897 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; Add £temporary2898 left £temporary2897
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary2899 £temporary2898 0

 strncmp$15:
	; IntegralToIntegral £temporary2900 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$16:
	; Add £temporary2901 right £temporary2900
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$17:
	; Dereference £temporary2902 £temporary2901 0

 strncmp$18:
	; GreaterThanEqual 21 £temporary2899 £temporary2902
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
	; IntegralToIntegral £temporary2904 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$22:
	; Add £temporary2905 left £temporary2904
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$23:
	; Dereference £temporary2906 £temporary2905 0

 strncmp$24:
	; IntegralToIntegral £temporary2907 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; Add £temporary2908 right £temporary2907
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$26:
	; Dereference £temporary2909 £temporary2908 0

 strncmp$27:
	; LessThanEqual 30 £temporary2906 £temporary2909
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
	; IntegralToIntegral £temporary2911 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary2911
	mov [rbp + 40], al

 strchr$2:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary2912 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; Add £temporary2913 text £temporary2912
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary2914 £temporary2913 0

 strchr$6:
	; Equal 19 £temporary2914 integral1$0#
	cmp byte [rsi], 0
	je strchr$19

 strchr$7:
	; IntegralToIntegral £temporary2917 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; Add £temporary2918 text £temporary2917
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary2919 £temporary2918 0

 strchr$10:
	; NotEqual 17 £temporary2919 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$11:
	; IntegralToIntegral £temporary2921 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; Add £temporary2922 text £temporary2921
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary2923 £temporary2922 0

 strchr$14:
	; Address £temporary2924 £temporary2923

 strchr$15:
	; SetReturnValue

 strchr$16:
	; Return £temporary2924
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
	; IntegralToIntegral £temporary2925 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary2925
	mov [rbp + 48], al

 strrchr$3:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary2926 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; Add £temporary2927 text £temporary2926
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary2928 £temporary2927 0

 strrchr$7:
	; Equal 19 £temporary2928 integral1$0#
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary2931 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; Add £temporary2932 text £temporary2931
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary2933 £temporary2932 0

 strrchr$11:
	; NotEqual 17 £temporary2933 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary2935 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; Add £temporary2936 text £temporary2935
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary2937 £temporary2936 0

 strrchr$15:
	; Address £temporary2938 £temporary2937

 strrchr$16:
	; Assign result £temporary2938
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
	; IntegralToIntegral £temporary2939 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; Add £temporary2940 mainString £temporary2939
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary2941 £temporary2940 0

 strspn$4:
	; Equal 20 £temporary2941 integral1$0#
	cmp byte [rsi], 0
	je strspn$20

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary2944 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; Add £temporary2945 mainString £temporary2944
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary2946 £temporary2945 0

 strspn$10:
	; IntegralToIntegral £temporary2947 £temporary2946
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter 76 signed int £temporary2947
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
	; GetReturnValue £temporary2948

 strspn$15:
	; NotEqual 18 £temporary2948 integral8$0#
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
	; IntegralToIntegral £temporary2950 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; Add £temporary2951 mainString £temporary2950
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary2952 £temporary2951 0

 strcspn$4:
	; Equal 20 £temporary2952 integral1$0#
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary2955 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; Add £temporary2956 mainString £temporary2955
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary2957 £temporary2956 0

 strcspn$10:
	; IntegralToIntegral £temporary2958 £temporary2957
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter 76 signed int £temporary2958
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
	; GetReturnValue £temporary2959

 strcspn$15:
	; Equal 18 £temporary2959 integral8$0#
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
	; IntegralToIntegral £temporary2961 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; Add £temporary2962 mainString £temporary2961
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary2963 £temporary2962 0

 strpbrk$4:
	; Equal 24 £temporary2963 integral1$0#
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary2966 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; Add £temporary2967 mainString £temporary2966
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary2968 £temporary2967 0

 strpbrk$10:
	; IntegralToIntegral £temporary2969 £temporary2968
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter 76 signed int £temporary2969
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
	; GetReturnValue £temporary2970

 strpbrk$15:
	; Equal 22 £temporary2970 integral8$0#
	cmp rbx, 0
	je strpbrk$22

 strpbrk$16:
	; IntegralToIntegral £temporary2972 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; Add £temporary2973 mainString £temporary2972
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary2974 £temporary2973 0

 strpbrk$19:
	; Address £temporary2975 £temporary2974

 strpbrk$20:
	; SetReturnValue

 strpbrk$21:
	; Return £temporary2975
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
	; GetReturnValue £temporary2976

 strstr$5:
	; Assign subStringSize £temporary2976
	mov [rbp + 44], ebx

 strstr$6:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strstr$7:
	; IntegralToIntegral £temporary2977 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; Add £temporary2978 mainString £temporary2977
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$9:
	; Dereference £temporary2979 £temporary2978 0

 strstr$10:
	; Equal 29 £temporary2979 integral1$0#
	cmp byte [rsi], 0
	je strstr$29

 strstr$11:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$12:
	; IntegralToIntegral £temporary2982 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$13:
	; Add £temporary2983 mainString £temporary2982
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$14:
	; Parameter 72 pointer £temporary2983
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
	; GetReturnValue £temporary2984

 strstr$20:
	; NotEqual 27 £temporary2984 integral4$0#
	cmp ebx, 0
	jne strstr$27

 strstr$21:
	; IntegralToIntegral £temporary2986 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$22:
	; Add £temporary2987 mainString £temporary2986
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$23:
	; Dereference £temporary2988 £temporary2987 0

 strstr$24:
	; Address £temporary2989 £temporary2988

 strstr$25:
	; SetReturnValue

 strstr$26:
	; Return £temporary2989
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
	; IntegralToIntegral £temporary2990 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; Add £temporary2991 string £temporary2990
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary2992 £temporary2991 0

 strlen$4:
	; Equal 7 £temporary2992 integral1$0#
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

@7281integral4$8#:
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
	; GetReturnValue £temporary2995

 strerror$4:
	; Assign localeConvPtr £temporary2995
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 15 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je strerror$15

 strerror$6:
	; Dereference £temporary2997 localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign messageList £temporary2997
	mov rax, [rsi + 56]
	mov [rbp + 36], rax

 strerror$8:
	; Equal 15 messageList integral8$0#
	cmp qword [rbp + 36], 0
	je strerror$15

 strerror$9:
	; Multiply £temporary2999 errno integral4$8#
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [@7281integral4$8#]

 strerror$10:
	; IntegralToIntegral £temporary3000 £temporary2999
	mov rbx, 4294967295
	and rax, rbx

 strerror$11:
	; Add £temporary3001 messageList £temporary3000
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$12:
	; Dereference £temporary3002 £temporary3001 0

 strerror$13:
	; SetReturnValue

 strerror$14:
	; Return £temporary3002
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

@7286$token:
	; Initializer Pointer 0
	dq 0

section .text

 strtok:
	; Equal 42 string integral8$0#
	cmp qword [rbp + 24], 0
	je strtok$42

 strtok$1:
	; Dereference £temporary3004 string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 5 £temporary3004 integral1$0#
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
	; IntegralToIntegral £temporary3006 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; Add £temporary3007 string £temporary3006
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary3008 £temporary3007 0

 strtok$9:
	; Equal 35 £temporary3008 integral1$0#
	cmp byte [rsi], 0
	je strtok$35

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary3011 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; Add £temporary3012 string £temporary3011
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary3013 £temporary3012 0

 strtok$15:
	; IntegralToIntegral £temporary3014 £temporary3013
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter 84 signed int £temporary3014
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
	; GetReturnValue £temporary3015

 strtok$20:
	; Equal 33 £temporary3015 integral8$0#
	cmp rbx, 0
	je strtok$33

 strtok$21:
	; IntegralToIntegral £temporary3017 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; Add £temporary3018 string £temporary3017
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary3019 £temporary3018 0

 strtok$24:
	; Assign £temporary3019 integral1$0#
	mov byte [rsi], 0

 strtok$25:
	; Add £temporary3020 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary3021 £temporary3020
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; Add £temporary3022 string £temporary3021
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary3023 £temporary3022 0

 strtok$29:
	; Address £temporary3024 £temporary3023

 strtok$30:
	; Assign token £temporary3024
	mov [@7286$token], rsi

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
	; IntegralToIntegral £temporary3025 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$36:
	; Add £temporary3026 string £temporary3025
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$37:
	; Dereference £temporary3027 £temporary3026 0

 strtok$38:
	; Address £temporary3028 £temporary3027

 strtok$39:
	; Assign token £temporary3028
	mov [@7286$token], rsi

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
	cmp qword [@7286$token], 0
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
	; Dereference £temporary3030 token 0
	mov rsi, [@7286$token]

 strtok$46:
	; NotEqual 49 £temporary3030 integral1$0#
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
	; IntegralToIntegral £temporary3032 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$51:
	; Add £temporary3033 token £temporary3032
	mov rsi, [@7286$token]
	add rsi, rax

 strtok$52:
	; Dereference £temporary3034 £temporary3033 0

 strtok$53:
	; Equal 80 £temporary3034 integral1$0#
	cmp byte [rsi], 0
	je strtok$80

 strtok$54:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$55:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$56:
	; IntegralToIntegral £temporary3037 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$57:
	; Add £temporary3038 token £temporary3037
	mov rsi, [@7286$token]
	add rsi, rax

 strtok$58:
	; Dereference £temporary3039 £temporary3038 0

 strtok$59:
	; IntegralToIntegral £temporary3040 £temporary3039
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$60
	neg al
	neg eax

 strtok$60:
	; Parameter 84 signed int £temporary3040
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
	; GetReturnValue £temporary3041

 strtok$64:
	; Equal 78 £temporary3041 integral8$0#
	cmp rbx, 0
	je strtok$78

 strtok$65:
	; Assign tokenStart2 token
	mov rax, [@7286$token]
	mov [rbp + 52], rax

 strtok$66:
	; IntegralToIntegral £temporary3043 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; Add £temporary3044 token £temporary3043
	mov rsi, [@7286$token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3045 £temporary3044 0

 strtok$69:
	; Assign £temporary3045 integral1$0#
	mov byte [rsi], 0

 strtok$70:
	; Add £temporary3046 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$71:
	; IntegralToIntegral £temporary3047 £temporary3046
	mov rbx, 4294967295
	and rax, rbx

 strtok$72:
	; Add £temporary3048 token £temporary3047
	mov rsi, [@7286$token]
	add rsi, rax

 strtok$73:
	; Dereference £temporary3049 £temporary3048 0

 strtok$74:
	; Address £temporary3050 £temporary3049

 strtok$75:
	; Assign token £temporary3050
	mov [@7286$token], rsi

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
	mov rax, [@7286$token]
	mov [rbp + 44], rax

 strtok$81:
	; IntegralToIntegral £temporary3051 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$82:
	; Add £temporary3052 token £temporary3051
	mov rsi, [@7286$token]
	add rsi, rax

 strtok$83:
	; Dereference £temporary3053 £temporary3052 0

 strtok$84:
	; Address £temporary3054 £temporary3053

 strtok$85:
	; Assign token £temporary3054
	mov [@7286$token], rsi

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
	; IntegralToIntegral £temporary3055 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3055
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3056 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3056
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
	; IntegralToIntegral £temporary3059 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; Add £temporary3060 charTarget £temporary3059
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3061 £temporary3060 0

 memcpy$9:
	; IntegralToIntegral £temporary3062 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; Add £temporary3063 charSource £temporary3062
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3064 £temporary3063 0

 memcpy$12:
	; Assign £temporary3061 £temporary3064
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 memcpy$14:
	; Jump 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3065 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; SetReturnValue

 memcpy$17:
	; Return £temporary3065
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$18:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3066 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3066
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3067 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3067
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
	; IntegralToIntegral £temporary3072 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; Add £temporary3073 charTarget £temporary3072
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3074 £temporary3073 0

 memmove$10:
	; IntegralToIntegral £temporary3075 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; Add £temporary3076 charSource £temporary3075
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3077 £temporary3076 0

 memmove$13:
	; Assign £temporary3074 £temporary3077
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
	; IntegralToIntegral £temporary3080 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; Add £temporary3081 charTarget £temporary3080
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3082 £temporary3081 0

 memmove$21:
	; IntegralToIntegral £temporary3083 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; Add £temporary3084 charSource £temporary3083
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3085 £temporary3084 0

 memmove$24:
	; Assign £temporary3082 £temporary3085
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 memmove$26:
	; Jump 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3086 target
	mov rbx, [rbp + 24]

 memmove$28:
	; SetReturnValue

 memmove$29:
	; Return £temporary3086
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$30:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3087 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3087
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3088 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3088
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
	; IntegralToIntegral £temporary3091 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; Add £temporary3092 charLeft £temporary3091
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3093 £temporary3092 0

 memcmp$9:
	; IntegralToIntegral £temporary3094 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; Add £temporary3095 charRight £temporary3094
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3096 £temporary3095 0

 memcmp$12:
	; GreaterThanEqual 15 £temporary3093 £temporary3096
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
	; IntegralToIntegral £temporary3098 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$16:
	; Add £temporary3099 charLeft £temporary3098
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$17:
	; Dereference £temporary3100 £temporary3099 0

 memcmp$18:
	; IntegralToIntegral £temporary3101 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$19:
	; Add £temporary3102 charRight £temporary3101
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$20:
	; Dereference £temporary3103 £temporary3102 0

 memcmp$21:
	; LessThanEqual 24 £temporary3100 £temporary3103
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
	; IntegralToIntegral £temporary3105 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3105
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3106 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3106
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
	; IntegralToIntegral £temporary3109 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; Add £temporary3110 charBlock £temporary3109
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3111 £temporary3110 0

 memchr$9:
	; NotEqual 17 £temporary3111 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$10:
	; IntegralToIntegral £temporary3113 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; Add £temporary3114 charBlock £temporary3113
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3115 £temporary3114 0

 memchr$13:
	; Address £temporary3116 £temporary3115

 memchr$14:
	; IntegralToIntegral £temporary3117 £temporary3116

 memchr$15:
	; SetReturnValue

 memchr$16:
	; Return £temporary3117
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
	; IntegralToIntegral £temporary3118 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3118
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3119 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3119
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
	; IntegralToIntegral £temporary3122 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; Add £temporary3123 charBlock £temporary3122
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3124 £temporary3123 0

 memset$9:
	; Assign £temporary3124 c
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
