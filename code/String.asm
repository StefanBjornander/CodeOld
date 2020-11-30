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
	global token
	global strtok
	global memcpy
	global memmove
	global memcmp
	global memchr
	global memset

	extern localeconv
	extern enMessageList
	extern $StackTop


section .text

 strcpy:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcpy$1:
	; IntegralToIntegral £temporary2979 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; BinaryAdd £temporary2981 source £temporary2979
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary2978 -> £temporary2981 £temporary2981 0

 strcpy$4:
	; Equal 14 £temporary2978 -> £temporary2981 0
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary2985 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; BinaryAdd £temporary2987 target £temporary2985
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary2984 -> £temporary2987 £temporary2987 0

 strcpy$8:
	; IntegralToIntegral £temporary2989 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; BinaryAdd £temporary2991 source £temporary2989
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary2988 -> £temporary2991 £temporary2991 0

 strcpy$11:
	; Assign £temporary2984 -> £temporary2987 £temporary2988 -> £temporary2991
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$13:
	; Goto 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary2993 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; BinaryAdd £temporary2995 target £temporary2993
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary2992 -> £temporary2995 £temporary2995 0

 strcpy$17:
	; Assign £temporary2992 -> £temporary2995 0
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
	; SignedGreaterThanEqual 15 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$15

 strncpy$2:
	; IntegralToIntegral £temporary2998 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; BinaryAdd £temporary3000 source £temporary2998
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary2997 -> £temporary3000 £temporary3000 0

 strncpy$5:
	; Equal 15 £temporary2997 -> £temporary3000 0
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary3005 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; BinaryAdd £temporary3007 target £temporary3005
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary3004 -> £temporary3007 £temporary3007 0

 strncpy$9:
	; IntegralToIntegral £temporary3009 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; BinaryAdd £temporary3011 source £temporary3009
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary3008 -> £temporary3011 £temporary3011 0

 strncpy$12:
	; Assign £temporary3004 -> £temporary3007 £temporary3008 -> £temporary3011
	mov al, [rdi]
	mov [rsi], al

 strncpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncpy$14:
	; Goto 1
	jmp strncpy$1

 strncpy$15:
	; SignedGreaterThanEqual 22 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$22

 strncpy$16:
	; IntegralToIntegral £temporary3015 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; BinaryAdd £temporary3017 target £temporary3015
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary3014 -> £temporary3017 £temporary3017 0

 strncpy$19:
	; Assign £temporary3014 -> £temporary3017 0
	mov byte [rsi], 0

 strncpy$20:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncpy$21:
	; Goto 15
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
	; GetReturnValue £temporary3018

 strcat$5:
	; Assign targetLength £temporary3018
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary3020 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; BinaryAdd £temporary3022 source £temporary3020
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary3019 -> £temporary3022 £temporary3022 0

 strcat$10:
	; Equal 21 £temporary3019 -> £temporary3022 0
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; BinaryAdd £temporary3025 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary3027 £temporary3025
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; BinaryAdd £temporary3029 target £temporary3027
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary3026 -> £temporary3029 £temporary3029 0

 strcat$15:
	; IntegralToIntegral £temporary3031 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; BinaryAdd £temporary3033 source £temporary3031
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary3030 -> £temporary3033 £temporary3033 0

 strcat$18:
	; Assign £temporary3026 -> £temporary3029 £temporary3030 -> £temporary3033
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$20:
	; Goto 7
	jmp strcat$7

 strcat$21:
	; BinaryAdd £temporary3034 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary3036 £temporary3034
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; BinaryAdd £temporary3038 target £temporary3036
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary3035 -> £temporary3038 £temporary3038 0

 strcat$25:
	; Assign £temporary3035 -> £temporary3038 0
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
	; GetReturnValue £temporary3039

 strncat$5:
	; Assign targetLength £temporary3039
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$7:
	; BinarySubtract £temporary3040 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; SignedGreaterThanEqual 23 index £temporary3040
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary3043 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; BinaryAdd £temporary3045 source £temporary3043
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary3042 -> £temporary3045 £temporary3045 0

 strncat$12:
	; Equal 23 £temporary3042 -> £temporary3045 0
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; BinaryAdd £temporary3049 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary3051 £temporary3049
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; BinaryAdd £temporary3053 target £temporary3051
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary3050 -> £temporary3053 £temporary3053 0

 strncat$17:
	; IntegralToIntegral £temporary3055 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; BinaryAdd £temporary3057 source £temporary3055
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary3054 -> £temporary3057 £temporary3057 0

 strncat$20:
	; Assign £temporary3050 -> £temporary3053 £temporary3054 -> £temporary3057
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$22:
	; Goto 7
	jmp strncat$7

 strncat$23:
	; BinaryAdd £temporary3058 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; BinarySubtract £temporary3059 £temporary3058 1
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary3061 £temporary3059
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; BinaryAdd £temporary3063 target £temporary3061
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary3060 -> £temporary3063 £temporary3063 0

 strncat$28:
	; Assign £temporary3060 -> £temporary3063 0
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
	; IntegralToIntegral £temporary3066 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; BinaryAdd £temporary3068 left £temporary3066
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary3065 -> £temporary3068 £temporary3068 0

 strcmp$4:
	; NotEqual 11 £temporary3065 -> £temporary3068 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$5:
	; IntegralToIntegral £temporary3071 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; BinaryAdd £temporary3073 right £temporary3071
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary3070 -> £temporary3073 £temporary3073 0

 strcmp$8:
	; NotEqual 11 £temporary3070 -> £temporary3073 0
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
	; IntegralToIntegral £temporary3077 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; BinaryAdd £temporary3079 left £temporary3077
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary3076 -> £temporary3079 £temporary3079 0

 strcmp$14:
	; NotEqual 17 £temporary3076 -> £temporary3079 0
	cmp byte [rsi], 0
	jne strcmp$17

 strcmp$15:
	; SetReturnValue

 strcmp$16:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$17:
	; IntegralToIntegral £temporary3082 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$18:
	; BinaryAdd £temporary3084 right £temporary3082
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$19:
	; Dereference £temporary3081 -> £temporary3084 £temporary3084 0

 strcmp$20:
	; NotEqual 23 £temporary3081 -> £temporary3084 0
	cmp byte [rsi], 0
	jne strcmp$23

 strcmp$21:
	; SetReturnValue

 strcmp$22:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$23:
	; IntegralToIntegral £temporary3087 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; BinaryAdd £temporary3089 left £temporary3087
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$25:
	; Dereference £temporary3086 -> £temporary3089 £temporary3089 0

 strcmp$26:
	; IntegralToIntegral £temporary3091 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$27:
	; BinaryAdd £temporary3093 right £temporary3091
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$28:
	; Dereference £temporary3090 -> £temporary3093 £temporary3093 0

 strcmp$29:
	; SignedGreaterThanEqual 32 £temporary3086 -> £temporary3089 £temporary3090 -> £temporary3093
	mov al, [rdi]
	cmp [rsi], al
	jge strcmp$32

 strcmp$30:
	; SetReturnValue

 strcmp$31:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$32:
	; IntegralToIntegral £temporary3096 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; BinaryAdd £temporary3098 left £temporary3096
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$34:
	; Dereference £temporary3095 -> £temporary3098 £temporary3098 0

 strcmp$35:
	; IntegralToIntegral £temporary3100 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$36:
	; BinaryAdd £temporary3102 right £temporary3100
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$37:
	; Dereference £temporary3099 -> £temporary3102 £temporary3102 0

 strcmp$38:
	; SignedLessThanEqual 41 £temporary3095 -> £temporary3098 £temporary3099 -> £temporary3102
	mov al, [rdi]
	cmp [rsi], al
	jle strcmp$41

 strcmp$39:
	; SetReturnValue

 strcmp$40:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$41:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcmp$42:
	; Goto 1
	jmp strcmp$1

 strcmp$43:
	; FunctionEnd strcmp

section .text

 strncmp:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncmp$1:
	; SignedGreaterThanEqual 44 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncmp$44

 strncmp$2:
	; IntegralToIntegral £temporary3108 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; BinaryAdd £temporary3110 left £temporary3108
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary3107 -> £temporary3110 £temporary3110 0

 strncmp$5:
	; NotEqual 12 £temporary3107 -> £temporary3110 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$6:
	; IntegralToIntegral £temporary3113 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; BinaryAdd £temporary3115 right £temporary3113
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary3112 -> £temporary3115 £temporary3115 0

 strncmp$9:
	; NotEqual 12 £temporary3112 -> £temporary3115 0
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
	; IntegralToIntegral £temporary3119 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; BinaryAdd £temporary3121 left £temporary3119
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary3118 -> £temporary3121 £temporary3121 0

 strncmp$15:
	; NotEqual 18 £temporary3118 -> £temporary3121 0
	cmp byte [rsi], 0
	jne strncmp$18

 strncmp$16:
	; SetReturnValue

 strncmp$17:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$18:
	; IntegralToIntegral £temporary3124 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$19:
	; BinaryAdd £temporary3126 right £temporary3124
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$20:
	; Dereference £temporary3123 -> £temporary3126 £temporary3126 0

 strncmp$21:
	; NotEqual 24 £temporary3123 -> £temporary3126 0
	cmp byte [rsi], 0
	jne strncmp$24

 strncmp$22:
	; SetReturnValue

 strncmp$23:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$24:
	; IntegralToIntegral £temporary3129 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; BinaryAdd £temporary3131 left £temporary3129
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$26:
	; Dereference £temporary3128 -> £temporary3131 £temporary3131 0

 strncmp$27:
	; IntegralToIntegral £temporary3133 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$28:
	; BinaryAdd £temporary3135 right £temporary3133
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$29:
	; Dereference £temporary3132 -> £temporary3135 £temporary3135 0

 strncmp$30:
	; SignedGreaterThanEqual 33 £temporary3128 -> £temporary3131 £temporary3132 -> £temporary3135
	mov al, [rdi]
	cmp [rsi], al
	jge strncmp$33

 strncmp$31:
	; SetReturnValue

 strncmp$32:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$33:
	; IntegralToIntegral £temporary3138 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; BinaryAdd £temporary3140 left £temporary3138
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$35:
	; Dereference £temporary3137 -> £temporary3140 £temporary3140 0

 strncmp$36:
	; IntegralToIntegral £temporary3142 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$37:
	; BinaryAdd £temporary3144 right £temporary3142
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$38:
	; Dereference £temporary3141 -> £temporary3144 £temporary3144 0

 strncmp$39:
	; SignedLessThanEqual 42 £temporary3137 -> £temporary3140 £temporary3141 -> £temporary3144
	mov al, [rdi]
	cmp [rsi], al
	jle strncmp$42

 strncmp$40:
	; SetReturnValue

 strncmp$41:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$42:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncmp$43:
	; Goto 1
	jmp strncmp$1

 strncmp$44:
	; SetReturnValue

 strncmp$45:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$46:
	; FunctionEnd strncmp

section .text

 strchr:
	; IntegralToIntegral £temporary3146 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary3146
	mov [rbp + 40], al

 strchr$2:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary3148 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; BinaryAdd £temporary3150 text £temporary3148
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary3147 -> £temporary3150 £temporary3150 0

 strchr$6:
	; Equal 19 £temporary3147 -> £temporary3150 0
	cmp byte [rsi], 0
	je strchr$19

 strchr$7:
	; IntegralToIntegral £temporary3154 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; BinaryAdd £temporary3156 text £temporary3154
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary3153 -> £temporary3156 £temporary3156 0

 strchr$10:
	; NotEqual 17 £temporary3153 -> £temporary3156 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$11:
	; IntegralToIntegral £temporary3159 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; BinaryAdd £temporary3161 text £temporary3159
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary3158 -> £temporary3161 £temporary3161 0

 strchr$14:
	; Address £temporary3162 £temporary3158 -> £temporary3161

 strchr$15:
	; SetReturnValue

 strchr$16:
	; Return £temporary3162
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$17:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 strchr$18:
	; Goto 3
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
	; IntegralToIntegral £temporary3163 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary3163
	mov [rbp + 48], al

 strrchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary3165 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; BinaryAdd £temporary3167 text £temporary3165
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary3164 -> £temporary3167 £temporary3167 0

 strrchr$7:
	; Equal 19 £temporary3164 -> £temporary3167 0
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary3171 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; BinaryAdd £temporary3173 text £temporary3171
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary3170 -> £temporary3173 £temporary3173 0

 strrchr$11:
	; NotEqual 17 £temporary3170 -> £temporary3173 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary3176 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; BinaryAdd £temporary3178 text £temporary3176
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary3175 -> £temporary3178 £temporary3178 0

 strrchr$15:
	; Address £temporary3179 £temporary3175 -> £temporary3178

 strrchr$16:
	; Assign result £temporary3179
	mov [rbp + 40], rsi

 strrchr$17:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 strrchr$18:
	; Goto 4
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
	; IntegralToIntegral £temporary3181 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; BinaryAdd £temporary3183 mainString £temporary3181
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary3180 -> £temporary3183 £temporary3183 0

 strspn$4:
	; Equal 20 £temporary3180 -> £temporary3183 0
	cmp byte [rsi], 0
	je strspn$20

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary3187 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; BinaryAdd £temporary3189 mainString £temporary3187
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary3186 -> £temporary3189 £temporary3189 0

 strspn$10:
	; IntegralToIntegral £temporary3190 £temporary3186 -> £temporary3189
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter 76 signedint £temporary3190
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
	; GetReturnValue £temporary3191

 strspn$15:
	; NotEqual 18 £temporary3191 0
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
	; Goto 1
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
	; IntegralToIntegral £temporary3194 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; BinaryAdd £temporary3196 mainString £temporary3194
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary3193 -> £temporary3196 £temporary3196 0

 strcspn$4:
	; Equal 20 £temporary3193 -> £temporary3196 0
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary3200 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; BinaryAdd £temporary3202 mainString £temporary3200
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary3199 -> £temporary3202 £temporary3202 0

 strcspn$10:
	; IntegralToIntegral £temporary3203 £temporary3199 -> £temporary3202
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter 76 signedint £temporary3203
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
	; GetReturnValue £temporary3204

 strcspn$15:
	; Equal 18 £temporary3204 0
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
	; Goto 1
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
	; IntegralToIntegral £temporary3207 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; BinaryAdd £temporary3209 mainString £temporary3207
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary3206 -> £temporary3209 £temporary3209 0

 strpbrk$4:
	; Equal 24 £temporary3206 -> £temporary3209 0
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary3213 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; BinaryAdd £temporary3215 mainString £temporary3213
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary3212 -> £temporary3215 £temporary3215 0

 strpbrk$10:
	; IntegralToIntegral £temporary3216 £temporary3212 -> £temporary3215
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter 76 signedint £temporary3216
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
	; GetReturnValue £temporary3217

 strpbrk$15:
	; Equal 22 £temporary3217 0
	cmp rbx, 0
	je strpbrk$22

 strpbrk$16:
	; IntegralToIntegral £temporary3220 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; BinaryAdd £temporary3222 mainString £temporary3220
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary3219 -> £temporary3222 £temporary3222 0

 strpbrk$19:
	; Address £temporary3223 £temporary3219 -> £temporary3222

 strpbrk$20:
	; SetReturnValue

 strpbrk$21:
	; Return £temporary3223
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$22:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strpbrk$23:
	; Goto 1
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
	; Assign index 0
	mov dword [rbp + 40], 0

 strstr$1:
	; IntegralToIntegral £temporary3225 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$2:
	; BinaryAdd £temporary3227 mainString £temporary3225
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$3:
	; Dereference £temporary3224 -> £temporary3227 £temporary3227 0

 strstr$4:
	; Equal 22 £temporary3224 -> £temporary3227 0
	cmp byte [rsi], 0
	je strstr$22

 strstr$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$6:
	; IntegralToIntegral £temporary3230 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$7:
	; BinaryAdd £temporary3231 mainString £temporary3230
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$8:
	; Parameter 68 pointer £temporary3231
	mov [rbp + 68], rbx

 strstr$9:
	; Parameter 76 pointer subString
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strstr$10:
	; Call 44 strcmp 0
	mov qword [rbp + 44], strstr$11
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strcmp

 strstr$11:
	; PostCall 44

 strstr$12:
	; GetReturnValue £temporary3233

 strstr$13:
	; NotEqual 20 £temporary3233 0
	cmp ebx, 0
	jne strstr$20

 strstr$14:
	; IntegralToIntegral £temporary3236 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$15:
	; BinaryAdd £temporary3238 mainString £temporary3236
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$16:
	; Dereference £temporary3235 -> £temporary3238 £temporary3238 0

 strstr$17:
	; Address £temporary3239 £temporary3235 -> £temporary3238

 strstr$18:
	; SetReturnValue

 strstr$19:
	; Return £temporary3239
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$20:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strstr$21:
	; Goto 1
	jmp strstr$1

 strstr$22:
	; SetReturnValue

 strstr$23:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$24:
	; FunctionEnd strstr

section .text

 strlen:
	; Assign index 0
	mov dword [rbp + 32], 0

 strlen$1:
	; IntegralToIntegral £temporary3241 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; BinaryAdd £temporary3243 string £temporary3241
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary3240 -> £temporary3243 £temporary3243 0

 strlen$4:
	; Equal 7 £temporary3240 -> £temporary3243 0
	cmp byte [rsi], 0
	je strlen$7

 strlen$5:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 strlen$6:
	; Goto 1
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

@8836$int8$8#:
	; Initializer Pointer 8
	dq 8

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
	; GetReturnValue £temporary3246

 strerror$4:
	; Assign localeConvPtr £temporary3246
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; Dereference £temporary3248 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign £temporary3249 £temporary3248 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; Goto 10
	jmp strerror$10

 strerror$9:
	; Assign £temporary3249 0
	mov rax, 0

 strerror$10:
	; Assign messageList £temporary3249
	mov [rbp + 36], rax

 strerror$11:
	; Equal 14 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; Assign £temporary3251 messageList
	mov rax, [rbp + 36]

 strerror$13:
	; Goto 15
	jmp strerror$15

 strerror$14:
	; Assign £temporary3251 enMessageList
	mov rax, enMessageList

 strerror$15:
	; Assign messageList £temporary3251
	mov [rbp + 36], rax

 strerror$16:
	; IntegralToIntegral £temporary3253 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; UnsignedMultiply £temporary3254 £temporary3253 8
	xor rdx, rdx
	mul qword [@8836$int8$8#]

 strerror$18:
	; BinaryAdd £temporary3255 messageList £temporary3254
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; Dereference £temporary3252 -> £temporary3255 £temporary3255 0

 strerror$20:
	; SetReturnValue

 strerror$21:
	; Return £temporary3252 -> £temporary3255
	mov rbx, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$22:
	; FunctionEnd strerror

section .data

token:
	; Initializer Pointer 0
	dq 0

section .text

 strtok:
	; Equal 42 string 0
	cmp qword [rbp + 24], 0
	je strtok$42

 strtok$1:
	; Dereference £temporary3257 -> string string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 5 £temporary3257 -> string 0
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
	; IntegralToIntegral £temporary3260 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; BinaryAdd £temporary3262 string £temporary3260
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary3259 -> £temporary3262 £temporary3262 0

 strtok$9:
	; Equal 35 £temporary3259 -> £temporary3262 0
	cmp byte [rsi], 0
	je strtok$35

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary3266 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; BinaryAdd £temporary3268 string £temporary3266
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary3265 -> £temporary3268 £temporary3268 0

 strtok$15:
	; IntegralToIntegral £temporary3269 £temporary3265 -> £temporary3268
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter 84 signedint £temporary3269
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
	; GetReturnValue £temporary3270

 strtok$20:
	; Equal 33 £temporary3270 0
	cmp rbx, 0
	je strtok$33

 strtok$21:
	; IntegralToIntegral £temporary3273 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; BinaryAdd £temporary3275 string £temporary3273
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary3272 -> £temporary3275 £temporary3275 0

 strtok$24:
	; Assign £temporary3272 -> £temporary3275 0
	mov byte [rsi], 0

 strtok$25:
	; BinaryAdd £temporary3276 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary3278 £temporary3276
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; BinaryAdd £temporary3280 string £temporary3278
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary3277 -> £temporary3280 £temporary3280 0

 strtok$29:
	; Address £temporary3281 £temporary3277 -> £temporary3280

 strtok$30:
	; Assign token £temporary3281
	mov [token], rsi

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
	; Goto 6
	jmp strtok$6

 strtok$35:
	; IntegralToIntegral £temporary3283 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$36:
	; BinaryAdd £temporary3285 string £temporary3283
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$37:
	; Dereference £temporary3282 -> £temporary3285 £temporary3285 0

 strtok$38:
	; Address £temporary3286 £temporary3282 -> £temporary3285

 strtok$39:
	; Assign token £temporary3286
	mov [token], rsi

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
	cmp qword [token], 0
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
	; Dereference £temporary3288 -> token token 0
	mov rsi, [token]

 strtok$46:
	; NotEqual 49 £temporary3288 -> token 0
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
	; IntegralToIntegral £temporary3291 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$51:
	; BinaryAdd £temporary3293 token £temporary3291
	mov rsi, [token]
	add rsi, rax

 strtok$52:
	; Dereference £temporary3290 -> £temporary3293 £temporary3293 0

 strtok$53:
	; Equal 80 £temporary3290 -> £temporary3293 0
	cmp byte [rsi], 0
	je strtok$80

 strtok$54:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$55:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$56:
	; IntegralToIntegral £temporary3297 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$57:
	; BinaryAdd £temporary3299 token £temporary3297
	mov rsi, [token]
	add rsi, rax

 strtok$58:
	; Dereference £temporary3296 -> £temporary3299 £temporary3299 0

 strtok$59:
	; IntegralToIntegral £temporary3300 £temporary3296 -> £temporary3299
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$60
	neg al
	neg eax

 strtok$60:
	; Parameter 84 signedint £temporary3300
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
	; GetReturnValue £temporary3301

 strtok$64:
	; Equal 78 £temporary3301 0
	cmp rbx, 0
	je strtok$78

 strtok$65:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$66:
	; IntegralToIntegral £temporary3304 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; BinaryAdd £temporary3306 token £temporary3304
	mov rsi, [token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3303 -> £temporary3306 £temporary3306 0

 strtok$69:
	; Assign £temporary3303 -> £temporary3306 0
	mov byte [rsi], 0

 strtok$70:
	; BinaryAdd £temporary3307 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$71:
	; IntegralToIntegral £temporary3309 £temporary3307
	mov rbx, 4294967295
	and rax, rbx

 strtok$72:
	; BinaryAdd £temporary3311 token £temporary3309
	mov rsi, [token]
	add rsi, rax

 strtok$73:
	; Dereference £temporary3308 -> £temporary3311 £temporary3311 0

 strtok$74:
	; Address £temporary3312 £temporary3308 -> £temporary3311

 strtok$75:
	; Assign token £temporary3312
	mov [token], rsi

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
	; Goto 50
	jmp strtok$50

 strtok$80:
	; Assign tokenStart token
	mov rax, [token]
	mov [rbp + 44], rax

 strtok$81:
	; IntegralToIntegral £temporary3314 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$82:
	; BinaryAdd £temporary3316 token £temporary3314
	mov rsi, [token]
	add rsi, rax

 strtok$83:
	; Dereference £temporary3313 -> £temporary3316 £temporary3316 0

 strtok$84:
	; Address £temporary3317 £temporary3313 -> £temporary3316

 strtok$85:
	; Assign token £temporary3317
	mov [token], rsi

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
	; IntegralToIntegral £temporary3318 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3318
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3319 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3319
	mov [rbp + 52], rax

 memcpy$4:
	; Assign index 0
	mov dword [rbp + 60], 0

 memcpy$5:
	; SignedGreaterThanEqual 15 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcpy$15

 memcpy$6:
	; IntegralToIntegral £temporary3323 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary3325 charTarget £temporary3323
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3322 -> £temporary3325 £temporary3325 0

 memcpy$9:
	; IntegralToIntegral £temporary3327 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary3329 charSource £temporary3327
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3326 -> £temporary3329 £temporary3329 0

 memcpy$12:
	; Assign £temporary3322 -> £temporary3325 £temporary3326 -> £temporary3329
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Goto 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3330 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; SetReturnValue

 memcpy$17:
	; Return £temporary3330
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$18:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3331 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3331
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3332 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3332
	mov [rbp + 52], rax

 memmove$4:
	; SignedGreaterThanEqual 16 source target
	mov rax, [rbp + 24]
	cmp [rbp + 32], rax
	jge memmove$16

 memmove$5:
	; BinarySubtract index size 1
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 memmove$6:
	; SignedLessThan 27 index 0
	cmp dword [rbp + 60], 0
	jl memmove$27

 memmove$7:
	; IntegralToIntegral £temporary3338 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary3340 charTarget £temporary3338
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3337 -> £temporary3340 £temporary3340 0

 memmove$10:
	; IntegralToIntegral £temporary3342 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary3344 charSource £temporary3342
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3341 -> £temporary3344 £temporary3344 0

 memmove$13:
	; Assign £temporary3337 -> £temporary3340 £temporary3341 -> £temporary3344
	mov al, [rdi]
	mov [rsi], al

 memmove$14:
	; BinarySubtract index index 1
	dec dword [rbp + 60]

 memmove$15:
	; Goto 6
	jmp memmove$6

 memmove$16:
	; Assign index 0
	mov dword [rbp + 60], 0

 memmove$17:
	; SignedGreaterThanEqual 27 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memmove$27

 memmove$18:
	; IntegralToIntegral £temporary3348 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary3350 charTarget £temporary3348
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3347 -> £temporary3350 £temporary3350 0

 memmove$21:
	; IntegralToIntegral £temporary3352 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary3354 charSource £temporary3352
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3351 -> £temporary3354 £temporary3354 0

 memmove$24:
	; Assign £temporary3347 -> £temporary3350 £temporary3351 -> £temporary3354
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Goto 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3355 target
	mov rbx, [rbp + 24]

 memmove$28:
	; SetReturnValue

 memmove$29:
	; Return £temporary3355
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$30:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3356 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3356
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3357 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3357
	mov [rbp + 52], rax

 memcmp$4:
	; Assign index 0
	mov dword [rbp + 60], 0

 memcmp$5:
	; SignedGreaterThanEqual 26 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcmp$26

 memcmp$6:
	; IntegralToIntegral £temporary3361 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary3363 charLeft £temporary3361
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3360 -> £temporary3363 £temporary3363 0

 memcmp$9:
	; IntegralToIntegral £temporary3365 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary3367 charRight £temporary3365
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3364 -> £temporary3367 £temporary3367 0

 memcmp$12:
	; SignedGreaterThanEqual 15 £temporary3360 -> £temporary3363 £temporary3364 -> £temporary3367
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
	; IntegralToIntegral £temporary3370 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$16:
	; BinaryAdd £temporary3372 charLeft £temporary3370
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$17:
	; Dereference £temporary3369 -> £temporary3372 £temporary3372 0

 memcmp$18:
	; IntegralToIntegral £temporary3374 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$19:
	; BinaryAdd £temporary3376 charRight £temporary3374
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$20:
	; Dereference £temporary3373 -> £temporary3376 £temporary3376 0

 memcmp$21:
	; SignedLessThanEqual 24 £temporary3369 -> £temporary3372 £temporary3373 -> £temporary3376
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
	; Goto 5
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
	; IntegralToIntegral £temporary3378 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3378
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3379 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3379
	mov [rbp + 52], al

 memchr$4:
	; Assign index 0
	mov dword [rbp + 40], 0

 memchr$5:
	; SignedGreaterThanEqual 19 index size
	mov eax, [rbp + 36]
	cmp [rbp + 40], eax
	jge memchr$19

 memchr$6:
	; IntegralToIntegral £temporary3383 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; BinaryAdd £temporary3385 charBlock £temporary3383
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3382 -> £temporary3385 £temporary3385 0

 memchr$9:
	; NotEqual 17 £temporary3382 -> £temporary3385 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$10:
	; IntegralToIntegral £temporary3388 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; BinaryAdd £temporary3390 charBlock £temporary3388
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3387 -> £temporary3390 £temporary3390 0

 memchr$13:
	; Address £temporary3391 £temporary3387 -> £temporary3390

 memchr$14:
	; IntegralToIntegral £temporary3392 £temporary3391

 memchr$15:
	; SetReturnValue

 memchr$16:
	; Return £temporary3392
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$17:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 memchr$18:
	; Goto 5
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
	; IntegralToIntegral £temporary3393 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3393
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3394 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3394
	mov [rbp + 48], al

 memset$4:
	; Assign index 0
	mov dword [rbp + 49], 0

 memset$5:
	; SignedGreaterThanEqual 12 index size
	mov eax, [rbp + 36]
	cmp [rbp + 49], eax
	jge memset$12

 memset$6:
	; IntegralToIntegral £temporary3398 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary3400 charBlock £temporary3398
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3397 -> £temporary3400 £temporary3400 0

 memset$9:
	; Assign £temporary3397 -> £temporary3400 c
	mov al, [rbp + 48]
	mov [rsi], al

 memset$10:
	; BinaryAdd index index 1
	inc dword [rbp + 49]

 memset$11:
	; Goto 5
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
