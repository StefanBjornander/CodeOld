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
	; IntegralToIntegral £temporary2707 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; BinaryAdd £temporary2708 source £temporary2707
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary2706 -> £temporary2708 £temporary2708 0

 strcpy$4:
	; Equal 14 £temporary2706 -> £temporary2708 0
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary2712 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; BinaryAdd £temporary2713 target £temporary2712
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary2711 -> £temporary2713 £temporary2713 0

 strcpy$8:
	; IntegralToIntegral £temporary2715 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; BinaryAdd £temporary2716 source £temporary2715
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary2714 -> £temporary2716 £temporary2716 0

 strcpy$11:
	; Assign £temporary2711 -> £temporary2713 £temporary2714 -> £temporary2716
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$13:
	; Jump 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary2718 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; BinaryAdd £temporary2719 target £temporary2718
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary2717 -> £temporary2719 £temporary2719 0

 strcpy$17:
	; Assign £temporary2717 -> £temporary2719 0
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
	; IntegralToIntegral £temporary2722 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; BinaryAdd £temporary2723 source £temporary2722
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary2721 -> £temporary2723 £temporary2723 0

 strncpy$5:
	; Equal 15 £temporary2721 -> £temporary2723 0
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary2728 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; BinaryAdd £temporary2729 target £temporary2728
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary2727 -> £temporary2729 £temporary2729 0

 strncpy$9:
	; IntegralToIntegral £temporary2731 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; BinaryAdd £temporary2732 source £temporary2731
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary2730 -> £temporary2732 £temporary2732 0

 strncpy$12:
	; Assign £temporary2727 -> £temporary2729 £temporary2730 -> £temporary2732
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
	; IntegralToIntegral £temporary2736 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; BinaryAdd £temporary2737 target £temporary2736
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary2735 -> £temporary2737 £temporary2737 0

 strncpy$19:
	; Assign £temporary2735 -> £temporary2737 0
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
	; GetReturnValue £temporary2738

 strcat$5:
	; Assign targetLength £temporary2738
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary2740 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; BinaryAdd £temporary2741 source £temporary2740
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary2739 -> £temporary2741 £temporary2741 0

 strcat$10:
	; Equal 21 £temporary2739 -> £temporary2741 0
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; BinaryAdd £temporary2744 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary2746 £temporary2744
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; BinaryAdd £temporary2747 target £temporary2746
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary2745 -> £temporary2747 £temporary2747 0

 strcat$15:
	; IntegralToIntegral £temporary2749 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; BinaryAdd £temporary2750 source £temporary2749
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary2748 -> £temporary2750 £temporary2750 0

 strcat$18:
	; Assign £temporary2745 -> £temporary2747 £temporary2748 -> £temporary2750
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$20:
	; Jump 7
	jmp strcat$7

 strcat$21:
	; BinaryAdd £temporary2751 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary2753 £temporary2751
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; BinaryAdd £temporary2754 target £temporary2753
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary2752 -> £temporary2754 £temporary2754 0

 strcat$25:
	; Assign £temporary2752 -> £temporary2754 0
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
	; GetReturnValue £temporary2755

 strncat$5:
	; Assign targetLength £temporary2755
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$7:
	; BinarySubtract £temporary2756 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; GreaterThanEqual 23 index £temporary2756
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary2759 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; BinaryAdd £temporary2760 source £temporary2759
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary2758 -> £temporary2760 £temporary2760 0

 strncat$12:
	; Equal 23 £temporary2758 -> £temporary2760 0
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; BinaryAdd £temporary2764 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary2766 £temporary2764
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; BinaryAdd £temporary2767 target £temporary2766
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary2765 -> £temporary2767 £temporary2767 0

 strncat$17:
	; IntegralToIntegral £temporary2769 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; BinaryAdd £temporary2770 source £temporary2769
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary2768 -> £temporary2770 £temporary2770 0

 strncat$20:
	; Assign £temporary2765 -> £temporary2767 £temporary2768 -> £temporary2770
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$22:
	; Jump 7
	jmp strncat$7

 strncat$23:
	; BinaryAdd £temporary2771 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; BinarySubtract £temporary2772 £temporary2771 1
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary2774 £temporary2772
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; BinaryAdd £temporary2775 target £temporary2774
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary2773 -> £temporary2775 £temporary2775 0

 strncat$28:
	; Assign £temporary2773 -> £temporary2775 0
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
	; IntegralToIntegral £temporary2778 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; BinaryAdd £temporary2779 left £temporary2778
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary2777 -> £temporary2779 £temporary2779 0

 strcmp$4:
	; NotEqual 11 £temporary2777 -> £temporary2779 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$5:
	; IntegralToIntegral £temporary2782 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; BinaryAdd £temporary2783 right £temporary2782
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary2781 -> £temporary2783 £temporary2783 0

 strcmp$8:
	; NotEqual 11 £temporary2781 -> £temporary2783 0
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
	; IntegralToIntegral £temporary2787 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; BinaryAdd £temporary2788 left £temporary2787
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary2786 -> £temporary2788 £temporary2788 0

 strcmp$14:
	; IntegralToIntegral £temporary2790 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$15:
	; BinaryAdd £temporary2791 right £temporary2790
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$16:
	; Dereference £temporary2789 -> £temporary2791 £temporary2791 0

 strcmp$17:
	; GreaterThanEqual 20 £temporary2786 -> £temporary2788 £temporary2789 -> £temporary2791
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
	; IntegralToIntegral £temporary2794 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$21:
	; BinaryAdd £temporary2795 left £temporary2794
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$22:
	; Dereference £temporary2793 -> £temporary2795 £temporary2795 0

 strcmp$23:
	; IntegralToIntegral £temporary2797 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; BinaryAdd £temporary2798 right £temporary2797
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$25:
	; Dereference £temporary2796 -> £temporary2798 £temporary2798 0

 strcmp$26:
	; LessThanEqual 29 £temporary2793 -> £temporary2795 £temporary2796 -> £temporary2798
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
	; IntegralToIntegral £temporary2804 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; BinaryAdd £temporary2805 left £temporary2804
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary2803 -> £temporary2805 £temporary2805 0

 strncmp$5:
	; NotEqual 12 £temporary2803 -> £temporary2805 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$6:
	; IntegralToIntegral £temporary2808 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; BinaryAdd £temporary2809 right £temporary2808
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary2807 -> £temporary2809 £temporary2809 0

 strncmp$9:
	; NotEqual 12 £temporary2807 -> £temporary2809 0
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
	; IntegralToIntegral £temporary2813 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; BinaryAdd £temporary2814 left £temporary2813
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary2812 -> £temporary2814 £temporary2814 0

 strncmp$15:
	; IntegralToIntegral £temporary2816 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$16:
	; BinaryAdd £temporary2817 right £temporary2816
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$17:
	; Dereference £temporary2815 -> £temporary2817 £temporary2817 0

 strncmp$18:
	; GreaterThanEqual 21 £temporary2812 -> £temporary2814 £temporary2815 -> £temporary2817
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
	; IntegralToIntegral £temporary2820 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$22:
	; BinaryAdd £temporary2821 left £temporary2820
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$23:
	; Dereference £temporary2819 -> £temporary2821 £temporary2821 0

 strncmp$24:
	; IntegralToIntegral £temporary2823 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; BinaryAdd £temporary2824 right £temporary2823
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$26:
	; Dereference £temporary2822 -> £temporary2824 £temporary2824 0

 strncmp$27:
	; LessThanEqual 30 £temporary2819 -> £temporary2821 £temporary2822 -> £temporary2824
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
	; IntegralToIntegral £temporary2826 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary2826
	mov [rbp + 40], al

 strchr$2:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary2828 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; BinaryAdd £temporary2829 text £temporary2828
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary2827 -> £temporary2829 £temporary2829 0

 strchr$6:
	; Equal 19 £temporary2827 -> £temporary2829 0
	cmp byte [rsi], 0
	je strchr$19

 strchr$7:
	; IntegralToIntegral £temporary2833 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; BinaryAdd £temporary2834 text £temporary2833
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary2832 -> £temporary2834 £temporary2834 0

 strchr$10:
	; NotEqual 17 £temporary2832 -> £temporary2834 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$11:
	; IntegralToIntegral £temporary2837 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; BinaryAdd £temporary2838 text £temporary2837
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary2836 -> £temporary2838 £temporary2838 0

 strchr$14:
	; Address £temporary2839 £temporary2836 -> £temporary2838

 strchr$15:
	; SetReturnValue

 strchr$16:
	; Return £temporary2839
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
	; IntegralToIntegral £temporary2840 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary2840
	mov [rbp + 48], al

 strrchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary2842 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; BinaryAdd £temporary2843 text £temporary2842
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary2841 -> £temporary2843 £temporary2843 0

 strrchr$7:
	; Equal 19 £temporary2841 -> £temporary2843 0
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary2847 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; BinaryAdd £temporary2848 text £temporary2847
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary2846 -> £temporary2848 £temporary2848 0

 strrchr$11:
	; NotEqual 17 £temporary2846 -> £temporary2848 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary2851 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; BinaryAdd £temporary2852 text £temporary2851
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary2850 -> £temporary2852 £temporary2852 0

 strrchr$15:
	; Address £temporary2853 £temporary2850 -> £temporary2852

 strrchr$16:
	; Assign result £temporary2853
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
	; IntegralToIntegral £temporary2855 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; BinaryAdd £temporary2856 mainString £temporary2855
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary2854 -> £temporary2856 £temporary2856 0

 strspn$4:
	; Equal 20 £temporary2854 -> £temporary2856 0
	cmp byte [rsi], 0
	je strspn$20

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary2860 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; BinaryAdd £temporary2861 mainString £temporary2860
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary2859 -> £temporary2861 £temporary2861 0

 strspn$10:
	; IntegralToIntegral £temporary2862 £temporary2859 -> £temporary2861
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter 76 signedint £temporary2862
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
	; GetReturnValue £temporary2863

 strspn$15:
	; NotEqual 18 £temporary2863 0
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
	; IntegralToIntegral £temporary2866 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; BinaryAdd £temporary2867 mainString £temporary2866
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary2865 -> £temporary2867 £temporary2867 0

 strcspn$4:
	; Equal 20 £temporary2865 -> £temporary2867 0
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary2871 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; BinaryAdd £temporary2872 mainString £temporary2871
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary2870 -> £temporary2872 £temporary2872 0

 strcspn$10:
	; IntegralToIntegral £temporary2873 £temporary2870 -> £temporary2872
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter 76 signedint £temporary2873
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
	; GetReturnValue £temporary2874

 strcspn$15:
	; Equal 18 £temporary2874 0
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
	; IntegralToIntegral £temporary2877 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; BinaryAdd £temporary2878 mainString £temporary2877
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary2876 -> £temporary2878 £temporary2878 0

 strpbrk$4:
	; Equal 24 £temporary2876 -> £temporary2878 0
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary2882 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; BinaryAdd £temporary2883 mainString £temporary2882
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary2881 -> £temporary2883 £temporary2883 0

 strpbrk$10:
	; IntegralToIntegral £temporary2884 £temporary2881 -> £temporary2883
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter 76 signedint £temporary2884
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
	; GetReturnValue £temporary2885

 strpbrk$15:
	; Equal 22 £temporary2885 0
	cmp rbx, 0
	je strpbrk$22

 strpbrk$16:
	; IntegralToIntegral £temporary2888 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; BinaryAdd £temporary2889 mainString £temporary2888
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary2887 -> £temporary2889 £temporary2889 0

 strpbrk$19:
	; Address £temporary2890 £temporary2887 -> £temporary2889

 strpbrk$20:
	; SetReturnValue

 strpbrk$21:
	; Return £temporary2890
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
	; GetReturnValue £temporary2891

 strstr$5:
	; Assign subStringSize £temporary2891
	mov [rbp + 44], ebx

 strstr$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strstr$7:
	; IntegralToIntegral £temporary2893 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; BinaryAdd £temporary2894 mainString £temporary2893
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$9:
	; Dereference £temporary2892 -> £temporary2894 £temporary2894 0

 strstr$10:
	; Equal 29 £temporary2892 -> £temporary2894 0
	cmp byte [rsi], 0
	je strstr$29

 strstr$11:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$12:
	; IntegralToIntegral £temporary2897 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$13:
	; BinaryAdd £temporary2898 mainString £temporary2897
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$14:
	; Parameter 72 pointer £temporary2898
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
	; GetReturnValue £temporary2899

 strstr$20:
	; NotEqual 27 £temporary2899 0
	cmp ebx, 0
	jne strstr$27

 strstr$21:
	; IntegralToIntegral £temporary2902 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$22:
	; BinaryAdd £temporary2903 mainString £temporary2902
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$23:
	; Dereference £temporary2901 -> £temporary2903 £temporary2903 0

 strstr$24:
	; Address £temporary2904 £temporary2901 -> £temporary2903

 strstr$25:
	; SetReturnValue

 strstr$26:
	; Return £temporary2904
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
	; IntegralToIntegral £temporary2906 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; BinaryAdd £temporary2907 string £temporary2906
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary2905 -> £temporary2907 £temporary2907 0

 strlen$4:
	; Equal 7 £temporary2905 -> £temporary2907 0
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

@8433$int4$8#:
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
	; GetReturnValue £temporary2910

 strerror$4:
	; Assign localeConvPtr £temporary2910
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 15 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$15

 strerror$6:
	; Dereference £temporary2912 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign messageList £temporary2912 -> localeConvPtr
	mov rax, [rsi + 56]
	mov [rbp + 36], rax

 strerror$8:
	; Equal 15 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$15

 strerror$9:
	; Multiply £temporary2915 errno 8
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [@8433$int4$8#]

 strerror$10:
	; IntegralToIntegral £temporary2916 £temporary2915
	mov rbx, 4294967295
	and rax, rbx

 strerror$11:
	; BinaryAdd £temporary2917 messageList £temporary2916
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$12:
	; Dereference £temporary2914 -> £temporary2917 £temporary2917 0

 strerror$13:
	; SetReturnValue

 strerror$14:
	; Return £temporary2914 -> £temporary2917
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

@8440$token:
	; Initializer Pointer 0
	dq 0

section .text

 strtok:
	; Equal 42 string 0
	cmp qword [rbp + 24], 0
	je strtok$42

 strtok$1:
	; Dereference £temporary2919 -> string string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 5 £temporary2919 -> string 0
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
	; IntegralToIntegral £temporary2922 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; BinaryAdd £temporary2923 string £temporary2922
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary2921 -> £temporary2923 £temporary2923 0

 strtok$9:
	; Equal 35 £temporary2921 -> £temporary2923 0
	cmp byte [rsi], 0
	je strtok$35

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary2927 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; BinaryAdd £temporary2928 string £temporary2927
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary2926 -> £temporary2928 £temporary2928 0

 strtok$15:
	; IntegralToIntegral £temporary2929 £temporary2926 -> £temporary2928
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter 84 signedint £temporary2929
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
	; GetReturnValue £temporary2930

 strtok$20:
	; Equal 33 £temporary2930 0
	cmp rbx, 0
	je strtok$33

 strtok$21:
	; IntegralToIntegral £temporary2933 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; BinaryAdd £temporary2934 string £temporary2933
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary2932 -> £temporary2934 £temporary2934 0

 strtok$24:
	; Assign £temporary2932 -> £temporary2934 0
	mov byte [rsi], 0

 strtok$25:
	; BinaryAdd £temporary2935 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary2937 £temporary2935
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; BinaryAdd £temporary2938 string £temporary2937
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary2936 -> £temporary2938 £temporary2938 0

 strtok$29:
	; Address £temporary2939 £temporary2936 -> £temporary2938

 strtok$30:
	; Assign token £temporary2939
	mov [@8440$token], rsi

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
	; IntegralToIntegral £temporary2941 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$36:
	; BinaryAdd £temporary2942 string £temporary2941
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$37:
	; Dereference £temporary2940 -> £temporary2942 £temporary2942 0

 strtok$38:
	; Address £temporary2943 £temporary2940 -> £temporary2942

 strtok$39:
	; Assign token £temporary2943
	mov [@8440$token], rsi

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
	cmp qword [@8440$token], 0
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
	; Dereference £temporary2945 -> token token 0
	mov rsi, [@8440$token]

 strtok$46:
	; NotEqual 49 £temporary2945 -> token 0
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
	; IntegralToIntegral £temporary2948 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$51:
	; BinaryAdd £temporary2949 token £temporary2948
	mov rsi, [@8440$token]
	add rsi, rax

 strtok$52:
	; Dereference £temporary2947 -> £temporary2949 £temporary2949 0

 strtok$53:
	; Equal 80 £temporary2947 -> £temporary2949 0
	cmp byte [rsi], 0
	je strtok$80

 strtok$54:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$55:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$56:
	; IntegralToIntegral £temporary2953 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$57:
	; BinaryAdd £temporary2954 token £temporary2953
	mov rsi, [@8440$token]
	add rsi, rax

 strtok$58:
	; Dereference £temporary2952 -> £temporary2954 £temporary2954 0

 strtok$59:
	; IntegralToIntegral £temporary2955 £temporary2952 -> £temporary2954
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$60
	neg al
	neg eax

 strtok$60:
	; Parameter 84 signedint £temporary2955
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
	; GetReturnValue £temporary2956

 strtok$64:
	; Equal 78 £temporary2956 0
	cmp rbx, 0
	je strtok$78

 strtok$65:
	; Assign tokenStart2 token
	mov rax, [@8440$token]
	mov [rbp + 52], rax

 strtok$66:
	; IntegralToIntegral £temporary2959 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; BinaryAdd £temporary2960 token £temporary2959
	mov rsi, [@8440$token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary2958 -> £temporary2960 £temporary2960 0

 strtok$69:
	; Assign £temporary2958 -> £temporary2960 0
	mov byte [rsi], 0

 strtok$70:
	; BinaryAdd £temporary2961 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$71:
	; IntegralToIntegral £temporary2963 £temporary2961
	mov rbx, 4294967295
	and rax, rbx

 strtok$72:
	; BinaryAdd £temporary2964 token £temporary2963
	mov rsi, [@8440$token]
	add rsi, rax

 strtok$73:
	; Dereference £temporary2962 -> £temporary2964 £temporary2964 0

 strtok$74:
	; Address £temporary2965 £temporary2962 -> £temporary2964

 strtok$75:
	; Assign token £temporary2965
	mov [@8440$token], rsi

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
	mov rax, [@8440$token]
	mov [rbp + 44], rax

 strtok$81:
	; IntegralToIntegral £temporary2967 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$82:
	; BinaryAdd £temporary2968 token £temporary2967
	mov rsi, [@8440$token]
	add rsi, rax

 strtok$83:
	; Dereference £temporary2966 -> £temporary2968 £temporary2968 0

 strtok$84:
	; Address £temporary2969 £temporary2966 -> £temporary2968

 strtok$85:
	; Assign token £temporary2969
	mov [@8440$token], rsi

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
	; IntegralToIntegral £temporary2970 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary2970
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary2971 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary2971
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
	; IntegralToIntegral £temporary2975 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary2976 charTarget £temporary2975
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary2974 -> £temporary2976 £temporary2976 0

 memcpy$9:
	; IntegralToIntegral £temporary2978 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary2979 charSource £temporary2978
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary2977 -> £temporary2979 £temporary2979 0

 memcpy$12:
	; Assign £temporary2974 -> £temporary2976 £temporary2977 -> £temporary2979
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Jump 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary2980 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; SetReturnValue

 memcpy$17:
	; Return £temporary2980
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$18:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary2981 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary2981
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary2982 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary2982
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
	; IntegralToIntegral £temporary2988 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary2989 charTarget £temporary2988
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary2987 -> £temporary2989 £temporary2989 0

 memmove$10:
	; IntegralToIntegral £temporary2991 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary2992 charSource £temporary2991
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary2990 -> £temporary2992 £temporary2992 0

 memmove$13:
	; Assign £temporary2987 -> £temporary2989 £temporary2990 -> £temporary2992
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
	; IntegralToIntegral £temporary2996 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary2997 charTarget £temporary2996
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary2995 -> £temporary2997 £temporary2997 0

 memmove$21:
	; IntegralToIntegral £temporary2999 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary3000 charSource £temporary2999
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary2998 -> £temporary3000 £temporary3000 0

 memmove$24:
	; Assign £temporary2995 -> £temporary2997 £temporary2998 -> £temporary3000
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Jump 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3001 target
	mov rbx, [rbp + 24]

 memmove$28:
	; SetReturnValue

 memmove$29:
	; Return £temporary3001
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$30:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3002 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3002
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3003 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3003
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
	; IntegralToIntegral £temporary3007 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary3008 charLeft £temporary3007
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3006 -> £temporary3008 £temporary3008 0

 memcmp$9:
	; IntegralToIntegral £temporary3010 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary3011 charRight £temporary3010
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3009 -> £temporary3011 £temporary3011 0

 memcmp$12:
	; GreaterThanEqual 15 £temporary3006 -> £temporary3008 £temporary3009 -> £temporary3011
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
	; IntegralToIntegral £temporary3014 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$16:
	; BinaryAdd £temporary3015 charLeft £temporary3014
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$17:
	; Dereference £temporary3013 -> £temporary3015 £temporary3015 0

 memcmp$18:
	; IntegralToIntegral £temporary3017 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$19:
	; BinaryAdd £temporary3018 charRight £temporary3017
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$20:
	; Dereference £temporary3016 -> £temporary3018 £temporary3018 0

 memcmp$21:
	; LessThanEqual 24 £temporary3013 -> £temporary3015 £temporary3016 -> £temporary3018
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
	; IntegralToIntegral £temporary3020 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3020
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3021 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3021
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
	; IntegralToIntegral £temporary3025 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; BinaryAdd £temporary3026 charBlock £temporary3025
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3024 -> £temporary3026 £temporary3026 0

 memchr$9:
	; NotEqual 17 £temporary3024 -> £temporary3026 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$10:
	; IntegralToIntegral £temporary3029 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; BinaryAdd £temporary3030 charBlock £temporary3029
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3028 -> £temporary3030 £temporary3030 0

 memchr$13:
	; Address £temporary3031 £temporary3028 -> £temporary3030

 memchr$14:
	; IntegralToIntegral £temporary3032 £temporary3031

 memchr$15:
	; SetReturnValue

 memchr$16:
	; Return £temporary3032
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
	; IntegralToIntegral £temporary3033 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3033
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3034 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3034
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
	; IntegralToIntegral £temporary3038 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary3039 charBlock £temporary3038
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3037 -> £temporary3039 £temporary3039 0

 memset$9:
	; Assign £temporary3037 -> £temporary3039 c
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
