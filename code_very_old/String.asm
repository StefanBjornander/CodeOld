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
	; IntegralToIntegral £temporary2989 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; BinaryAdd £temporary2991 source £temporary2989
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary2988 -> £temporary2991 £temporary2991 0

 strcpy$4:
	; Equal 14 £temporary2988 -> £temporary2991 0
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary2995 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; BinaryAdd £temporary2997 target £temporary2995
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary2994 -> £temporary2997 £temporary2997 0

 strcpy$8:
	; IntegralToIntegral £temporary2999 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; BinaryAdd £temporary3001 source £temporary2999
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary2998 -> £temporary3001 £temporary3001 0

 strcpy$11:
	; Assign £temporary2994 -> £temporary2997 £temporary2998 -> £temporary3001
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$13:
	; Goto 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary3003 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; BinaryAdd £temporary3005 target £temporary3003
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary3002 -> £temporary3005 £temporary3005 0

 strcpy$17:
	; Assign £temporary3002 -> £temporary3005 0
	mov byte [rsi], 0

 strcpy$18:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcpy$19:
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
	; IntegralToIntegral £temporary3008 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; BinaryAdd £temporary3010 source £temporary3008
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary3007 -> £temporary3010 £temporary3010 0

 strncpy$5:
	; Equal 15 £temporary3007 -> £temporary3010 0
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary3015 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; BinaryAdd £temporary3017 target £temporary3015
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary3014 -> £temporary3017 £temporary3017 0

 strncpy$9:
	; IntegralToIntegral £temporary3019 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; BinaryAdd £temporary3021 source £temporary3019
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary3018 -> £temporary3021 £temporary3021 0

 strncpy$12:
	; Assign £temporary3014 -> £temporary3017 £temporary3018 -> £temporary3021
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
	; IntegralToIntegral £temporary3025 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; BinaryAdd £temporary3027 target £temporary3025
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary3024 -> £temporary3027 £temporary3027 0

 strncpy$19:
	; Assign £temporary3024 -> £temporary3027 0
	mov byte [rsi], 0

 strncpy$20:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncpy$21:
	; Goto 15
	jmp strncpy$15

 strncpy$22:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncpy$23:
	; FunctionEnd strncpy

section .text

 strcat:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcat$1:
	; Parameter pointer target 68
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 strcat$2:
	; Call strlen 44 0
	mov qword [rbp + 44], strcat$3
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strlen

 strcat$3:
	; PostCall 44

 strcat$4:
	; GetReturnValue £temporary3028

 strcat$5:
	; Assign targetLength £temporary3028
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary3030 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; BinaryAdd £temporary3032 source £temporary3030
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary3029 -> £temporary3032 £temporary3032 0

 strcat$10:
	; Equal 21 £temporary3029 -> £temporary3032 0
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; BinaryAdd £temporary3035 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary3037 £temporary3035
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; BinaryAdd £temporary3039 target £temporary3037
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary3036 -> £temporary3039 £temporary3039 0

 strcat$15:
	; IntegralToIntegral £temporary3041 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; BinaryAdd £temporary3043 source £temporary3041
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary3040 -> £temporary3043 £temporary3043 0

 strcat$18:
	; Assign £temporary3036 -> £temporary3039 £temporary3040 -> £temporary3043
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$20:
	; Goto 7
	jmp strcat$7

 strcat$21:
	; BinaryAdd £temporary3044 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary3046 £temporary3044
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; BinaryAdd £temporary3048 target £temporary3046
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary3045 -> £temporary3048 £temporary3048 0

 strcat$25:
	; Assign £temporary3045 -> £temporary3048 0
	mov byte [rsi], 0

 strcat$26:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcat$27:
	; FunctionEnd strcat

section .text

 strncat:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strncat$1:
	; Parameter pointer target 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 strncat$2:
	; Call strlen 48 0
	mov qword [rbp + 48], strncat$3
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strlen

 strncat$3:
	; PostCall 48

 strncat$4:
	; GetReturnValue £temporary3049

 strncat$5:
	; Assign targetLength £temporary3049
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$7:
	; BinarySubtract £temporary3050 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; SignedGreaterThanEqual 23 index £temporary3050
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary3053 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; BinaryAdd £temporary3055 source £temporary3053
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary3052 -> £temporary3055 £temporary3055 0

 strncat$12:
	; Equal 23 £temporary3052 -> £temporary3055 0
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; BinaryAdd £temporary3059 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary3061 £temporary3059
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; BinaryAdd £temporary3063 target £temporary3061
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary3060 -> £temporary3063 £temporary3063 0

 strncat$17:
	; IntegralToIntegral £temporary3065 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; BinaryAdd £temporary3067 source £temporary3065
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary3064 -> £temporary3067 £temporary3067 0

 strncat$20:
	; Assign £temporary3060 -> £temporary3063 £temporary3064 -> £temporary3067
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$22:
	; Goto 7
	jmp strncat$7

 strncat$23:
	; BinaryAdd £temporary3068 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; BinarySubtract £temporary3069 £temporary3068 1
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary3071 £temporary3069
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; BinaryAdd £temporary3073 target £temporary3071
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary3070 -> £temporary3073 £temporary3073 0

 strncat$28:
	; Assign £temporary3070 -> £temporary3073 0
	mov byte [rsi], 0

 strncat$29:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncat$30:
	; FunctionEnd strncat

section .text

 strcmp:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcmp$1:
	; IntegralToIntegral £temporary3076 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; BinaryAdd £temporary3078 left £temporary3076
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary3075 -> £temporary3078 £temporary3078 0

 strcmp$4:
	; NotEqual 10 £temporary3075 -> £temporary3078 0
	cmp byte [rsi], 0
	jne strcmp$10

 strcmp$5:
	; IntegralToIntegral £temporary3081 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; BinaryAdd £temporary3083 right £temporary3081
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary3080 -> £temporary3083 £temporary3083 0

 strcmp$8:
	; NotEqual 10 £temporary3080 -> £temporary3083 0
	cmp byte [rsi], 0
	jne strcmp$10

 strcmp$9:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$10:
	; IntegralToIntegral £temporary3087 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$11:
	; BinaryAdd £temporary3089 left £temporary3087
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$12:
	; Dereference £temporary3086 -> £temporary3089 £temporary3089 0

 strcmp$13:
	; NotEqual 15 £temporary3086 -> £temporary3089 0
	cmp byte [rsi], 0
	jne strcmp$15

 strcmp$14:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$15:
	; IntegralToIntegral £temporary3092 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$16:
	; BinaryAdd £temporary3094 right £temporary3092
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$17:
	; Dereference £temporary3091 -> £temporary3094 £temporary3094 0

 strcmp$18:
	; NotEqual 20 £temporary3091 -> £temporary3094 0
	cmp byte [rsi], 0
	jne strcmp$20

 strcmp$19:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$20:
	; IntegralToIntegral £temporary3097 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$21:
	; BinaryAdd £temporary3099 left £temporary3097
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$22:
	; Dereference £temporary3096 -> £temporary3099 £temporary3099 0

 strcmp$23:
	; IntegralToIntegral £temporary3101 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; BinaryAdd £temporary3103 right £temporary3101
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$25:
	; Dereference £temporary3100 -> £temporary3103 £temporary3103 0

 strcmp$26:
	; SignedGreaterThanEqual 28 £temporary3096 -> £temporary3099 £temporary3100 -> £temporary3103
	mov al, [rdi]
	cmp [rsi], al
	jge strcmp$28

 strcmp$27:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$28:
	; IntegralToIntegral £temporary3106 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$29:
	; BinaryAdd £temporary3108 left £temporary3106
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$30:
	; Dereference £temporary3105 -> £temporary3108 £temporary3108 0

 strcmp$31:
	; IntegralToIntegral £temporary3110 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$32:
	; BinaryAdd £temporary3112 right £temporary3110
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$33:
	; Dereference £temporary3109 -> £temporary3112 £temporary3112 0

 strcmp$34:
	; SignedLessThanEqual 36 £temporary3105 -> £temporary3108 £temporary3109 -> £temporary3112
	mov al, [rdi]
	cmp [rsi], al
	jle strcmp$36

 strcmp$35:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$36:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcmp$37:
	; Goto 1
	jmp strcmp$1

 strcmp$38:
	; FunctionEnd strcmp

section .text

 strncmp:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncmp$1:
	; SignedGreaterThanEqual 39 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncmp$39

 strncmp$2:
	; IntegralToIntegral £temporary3118 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; BinaryAdd £temporary3120 left £temporary3118
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary3117 -> £temporary3120 £temporary3120 0

 strncmp$5:
	; NotEqual 11 £temporary3117 -> £temporary3120 0
	cmp byte [rsi], 0
	jne strncmp$11

 strncmp$6:
	; IntegralToIntegral £temporary3123 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; BinaryAdd £temporary3125 right £temporary3123
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary3122 -> £temporary3125 £temporary3125 0

 strncmp$9:
	; NotEqual 11 £temporary3122 -> £temporary3125 0
	cmp byte [rsi], 0
	jne strncmp$11

 strncmp$10:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$11:
	; IntegralToIntegral £temporary3129 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$12:
	; BinaryAdd £temporary3131 left £temporary3129
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$13:
	; Dereference £temporary3128 -> £temporary3131 £temporary3131 0

 strncmp$14:
	; NotEqual 16 £temporary3128 -> £temporary3131 0
	cmp byte [rsi], 0
	jne strncmp$16

 strncmp$15:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$16:
	; IntegralToIntegral £temporary3134 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$17:
	; BinaryAdd £temporary3136 right £temporary3134
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$18:
	; Dereference £temporary3133 -> £temporary3136 £temporary3136 0

 strncmp$19:
	; NotEqual 21 £temporary3133 -> £temporary3136 0
	cmp byte [rsi], 0
	jne strncmp$21

 strncmp$20:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$21:
	; IntegralToIntegral £temporary3139 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$22:
	; BinaryAdd £temporary3141 left £temporary3139
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$23:
	; Dereference £temporary3138 -> £temporary3141 £temporary3141 0

 strncmp$24:
	; IntegralToIntegral £temporary3143 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; BinaryAdd £temporary3145 right £temporary3143
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$26:
	; Dereference £temporary3142 -> £temporary3145 £temporary3145 0

 strncmp$27:
	; SignedGreaterThanEqual 29 £temporary3138 -> £temporary3141 £temporary3142 -> £temporary3145
	mov al, [rdi]
	cmp [rsi], al
	jge strncmp$29

 strncmp$28:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$29:
	; IntegralToIntegral £temporary3148 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$30:
	; BinaryAdd £temporary3150 left £temporary3148
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$31:
	; Dereference £temporary3147 -> £temporary3150 £temporary3150 0

 strncmp$32:
	; IntegralToIntegral £temporary3152 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$33:
	; BinaryAdd £temporary3154 right £temporary3152
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$34:
	; Dereference £temporary3151 -> £temporary3154 £temporary3154 0

 strncmp$35:
	; SignedLessThanEqual 37 £temporary3147 -> £temporary3150 £temporary3151 -> £temporary3154
	mov al, [rdi]
	cmp [rsi], al
	jle strncmp$37

 strncmp$36:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$37:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncmp$38:
	; Goto 1
	jmp strncmp$1

 strncmp$39:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$40:
	; FunctionEnd strncmp

section .text

 strchr:
	; IntegralToIntegral £temporary3156 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary3156
	mov [rbp + 40], al

 strchr$2:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary3158 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; BinaryAdd £temporary3160 text £temporary3158
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary3157 -> £temporary3160 £temporary3160 0

 strchr$6:
	; Equal 18 £temporary3157 -> £temporary3160 0
	cmp byte [rsi], 0
	je strchr$18

 strchr$7:
	; IntegralToIntegral £temporary3164 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; BinaryAdd £temporary3166 text £temporary3164
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary3163 -> £temporary3166 £temporary3166 0

 strchr$10:
	; NotEqual 16 £temporary3163 -> £temporary3166 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$16

 strchr$11:
	; IntegralToIntegral £temporary3169 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; BinaryAdd £temporary3171 text £temporary3169
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary3168 -> £temporary3171 £temporary3171 0

 strchr$14:
	; Address £temporary3172 £temporary3168 -> £temporary3171

 strchr$15:
	; Return £temporary3172
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$16:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 strchr$17:
	; Goto 3
	jmp strchr$3

 strchr$18:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$19:
	; FunctionEnd strchr

section .text

 strrchr:
	; Assign result 0
	mov qword [rbp + 40], 0

 strrchr$1:
	; IntegralToIntegral £temporary3173 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary3173
	mov [rbp + 48], al

 strrchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary3175 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; BinaryAdd £temporary3177 text £temporary3175
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary3174 -> £temporary3177 £temporary3177 0

 strrchr$7:
	; Equal 19 £temporary3174 -> £temporary3177 0
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary3181 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; BinaryAdd £temporary3183 text £temporary3181
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary3180 -> £temporary3183 £temporary3183 0

 strrchr$11:
	; NotEqual 17 £temporary3180 -> £temporary3183 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary3186 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; BinaryAdd £temporary3188 text £temporary3186
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary3185 -> £temporary3188 £temporary3188 0

 strrchr$15:
	; Address £temporary3189 £temporary3185 -> £temporary3188

 strrchr$16:
	; Assign result £temporary3189
	mov [rbp + 40], rsi

 strrchr$17:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 strrchr$18:
	; Goto 4
	jmp strrchr$4

 strrchr$19:
	; Return result
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strrchr$20:
	; FunctionEnd strrchr

section .text

 strspn:
	; Assign index 0
	mov dword [rbp + 40], 0

 strspn$1:
	; IntegralToIntegral £temporary3191 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; BinaryAdd £temporary3193 mainString £temporary3191
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary3190 -> £temporary3193 £temporary3193 0

 strspn$4:
	; Equal 19 £temporary3190 -> £temporary3193 0
	cmp byte [rsi], 0
	je strspn$19

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary3197 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; BinaryAdd £temporary3199 mainString £temporary3197
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary3196 -> £temporary3199 £temporary3199 0

 strspn$10:
	; IntegralToIntegral £temporary3200 £temporary3196 -> £temporary3199
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter signedint £temporary3200 76
	mov [rbp + 76], eax

 strspn$12:
	; Call strchr 44 0
	mov qword [rbp + 44], strspn$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strspn$13:
	; PostCall 44

 strspn$14:
	; GetReturnValue £temporary3201

 strspn$15:
	; NotEqual 17 £temporary3201 0
	cmp rbx, 0
	jne strspn$17

 strspn$16:
	; Return index
	mov ebx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$17:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strspn$18:
	; Goto 1
	jmp strspn$1

 strspn$19:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$20:
	; FunctionEnd strspn

section .text

 strcspn:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcspn$1:
	; IntegralToIntegral £temporary3204 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; BinaryAdd £temporary3206 mainString £temporary3204
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary3203 -> £temporary3206 £temporary3206 0

 strcspn$4:
	; Equal 19 £temporary3203 -> £temporary3206 0
	cmp byte [rsi], 0
	je strcspn$19

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary3210 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; BinaryAdd £temporary3212 mainString £temporary3210
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary3209 -> £temporary3212 £temporary3212 0

 strcspn$10:
	; IntegralToIntegral £temporary3213 £temporary3209 -> £temporary3212
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter signedint £temporary3213 76
	mov [rbp + 76], eax

 strcspn$12:
	; Call strchr 44 0
	mov qword [rbp + 44], strcspn$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strcspn$13:
	; PostCall 44

 strcspn$14:
	; GetReturnValue £temporary3214

 strcspn$15:
	; Equal 17 £temporary3214 0
	cmp rbx, 0
	je strcspn$17

 strcspn$16:
	; Return index
	mov ebx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$17:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcspn$18:
	; Goto 1
	jmp strcspn$1

 strcspn$19:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$20:
	; FunctionEnd strcspn

section .text

 strpbrk:
	; Assign index 0
	mov dword [rbp + 40], 0

 strpbrk$1:
	; IntegralToIntegral £temporary3217 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; BinaryAdd £temporary3219 mainString £temporary3217
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary3216 -> £temporary3219 £temporary3219 0

 strpbrk$4:
	; Equal 23 £temporary3216 -> £temporary3219 0
	cmp byte [rsi], 0
	je strpbrk$23

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary3223 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; BinaryAdd £temporary3225 mainString £temporary3223
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary3222 -> £temporary3225 £temporary3225 0

 strpbrk$10:
	; IntegralToIntegral £temporary3226 £temporary3222 -> £temporary3225
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter signedint £temporary3226 76
	mov [rbp + 76], eax

 strpbrk$12:
	; Call strchr 44 0
	mov qword [rbp + 44], strpbrk$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strpbrk$13:
	; PostCall 44

 strpbrk$14:
	; GetReturnValue £temporary3227

 strpbrk$15:
	; Equal 21 £temporary3227 0
	cmp rbx, 0
	je strpbrk$21

 strpbrk$16:
	; IntegralToIntegral £temporary3230 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; BinaryAdd £temporary3232 mainString £temporary3230
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary3229 -> £temporary3232 £temporary3232 0

 strpbrk$19:
	; Address £temporary3233 £temporary3229 -> £temporary3232

 strpbrk$20:
	; Return £temporary3233
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$21:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strpbrk$22:
	; Goto 1
	jmp strpbrk$1

 strpbrk$23:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$24:
	; FunctionEnd strpbrk

section .text

 strstr:
	; Assign index 0
	mov dword [rbp + 40], 0

 strstr$1:
	; IntegralToIntegral £temporary3235 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$2:
	; BinaryAdd £temporary3237 mainString £temporary3235
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$3:
	; Dereference £temporary3234 -> £temporary3237 £temporary3237 0

 strstr$4:
	; Equal 21 £temporary3234 -> £temporary3237 0
	cmp byte [rsi], 0
	je strstr$21

 strstr$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$6:
	; IntegralToIntegral £temporary3240 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$7:
	; BinaryAdd £temporary3241 mainString £temporary3240
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$8:
	; Parameter pointer £temporary3241 68
	mov [rbp + 68], rbx

 strstr$9:
	; Parameter pointer subString 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strstr$10:
	; Call strcmp 44 0
	mov qword [rbp + 44], strstr$11
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strcmp

 strstr$11:
	; PostCall 44

 strstr$12:
	; GetReturnValue £temporary3243

 strstr$13:
	; NotEqual 19 £temporary3243 0
	cmp ebx, 0
	jne strstr$19

 strstr$14:
	; IntegralToIntegral £temporary3246 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$15:
	; BinaryAdd £temporary3248 mainString £temporary3246
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$16:
	; Dereference £temporary3245 -> £temporary3248 £temporary3248 0

 strstr$17:
	; Address £temporary3249 £temporary3245 -> £temporary3248

 strstr$18:
	; Return £temporary3249
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$19:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strstr$20:
	; Goto 1
	jmp strstr$1

 strstr$21:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$22:
	; FunctionEnd strstr

section .text

 strlen:
	; Assign index 0
	mov dword [rbp + 32], 0

 strlen$1:
	; IntegralToIntegral £temporary3251 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; BinaryAdd £temporary3253 string £temporary3251
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary3250 -> £temporary3253 £temporary3253 0

 strlen$4:
	; Equal 7 £temporary3250 -> £temporary3253 0
	cmp byte [rsi], 0
	je strlen$7

 strlen$5:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 strlen$6:
	; Goto 1
	jmp strlen$1

 strlen$7:
	; Return index
	mov ebx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strlen$8:
	; FunctionEnd strlen

section .data

int8$8#:
	; Initializer Pointer 8
	dq 8

section .text

 strerror:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strerror$1:
	; Call localeconv 28 0
	mov qword [rbp + 28], strerror$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 strerror$2:
	; PostCall 28

 strerror$3:
	; GetReturnValue £temporary3256

 strerror$4:
	; Assign localeConvPtr £temporary3256
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; Dereference £temporary3258 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign £temporary3259 £temporary3258 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; Goto 10
	jmp strerror$10

 strerror$9:
	; Assign £temporary3259 0
	mov rax, 0

 strerror$10:
	; Assign messageList £temporary3259
	mov [rbp + 36], rax

 strerror$11:
	; Equal 14 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; Assign £temporary3261 messageList
	mov rax, [rbp + 36]

 strerror$13:
	; Goto 15
	jmp strerror$15

 strerror$14:
	; Assign £temporary3261 enMessageList
	mov rax, enMessageList

 strerror$15:
	; Assign messageList £temporary3261
	mov [rbp + 36], rax

 strerror$16:
	; IntegralToIntegral £temporary3263 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; UnsignedMultiply £temporary3264 £temporary3263 8
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; BinaryAdd £temporary3265 messageList £temporary3264
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; Dereference £temporary3262 -> £temporary3265 £temporary3265 0

 strerror$20:
	; Return £temporary3262 -> £temporary3265
	mov rbx, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$21:
	; FunctionEnd strerror

section .data

token:
	; Initializer Pointer 0
	dq 0

section .text

 strtok:
	; Equal 39 string 0
	cmp qword [rbp + 24], 0
	je strtok$39

 strtok$1:
	; Dereference £temporary3267 -> string string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 4 £temporary3267 -> string 0
	cmp byte [rsi], 0
	jne strtok$4

 strtok$3:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$4:
	; Assign index 0
	mov dword [rbp + 40], 0

 strtok$5:
	; IntegralToIntegral £temporary3270 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$6:
	; BinaryAdd £temporary3272 string £temporary3270
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$7:
	; Dereference £temporary3269 -> £temporary3272 £temporary3272 0

 strtok$8:
	; Equal 33 £temporary3269 -> £temporary3272 0
	cmp byte [rsi], 0
	je strtok$33

 strtok$9:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$10:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$11:
	; IntegralToIntegral £temporary3276 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$12:
	; BinaryAdd £temporary3278 string £temporary3276
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$13:
	; Dereference £temporary3275 -> £temporary3278 £temporary3278 0

 strtok$14:
	; IntegralToIntegral £temporary3279 £temporary3275 -> £temporary3278
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$15
	neg al
	neg eax

 strtok$15:
	; Parameter signedint £temporary3279 84
	mov [rbp + 84], eax

 strtok$16:
	; Call strchr 52 0
	mov qword [rbp + 52], strtok$17
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$17:
	; PostCall 52

 strtok$18:
	; GetReturnValue £temporary3280

 strtok$19:
	; Equal 31 £temporary3280 0
	cmp rbx, 0
	je strtok$31

 strtok$20:
	; IntegralToIntegral £temporary3283 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$21:
	; BinaryAdd £temporary3285 string £temporary3283
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$22:
	; Dereference £temporary3282 -> £temporary3285 £temporary3285 0

 strtok$23:
	; Assign £temporary3282 -> £temporary3285 0
	mov byte [rsi], 0

 strtok$24:
	; BinaryAdd £temporary3286 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$25:
	; IntegralToIntegral £temporary3288 £temporary3286
	mov rbx, 4294967295
	and rax, rbx

 strtok$26:
	; BinaryAdd £temporary3290 string £temporary3288
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$27:
	; Dereference £temporary3287 -> £temporary3290 £temporary3290 0

 strtok$28:
	; Address £temporary3291 £temporary3287 -> £temporary3290

 strtok$29:
	; Assign token £temporary3291
	mov [token], rsi

 strtok$30:
	; Return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$31:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strtok$32:
	; Goto 5
	jmp strtok$5

 strtok$33:
	; IntegralToIntegral £temporary3293 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$34:
	; BinaryAdd £temporary3295 string £temporary3293
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$35:
	; Dereference £temporary3292 -> £temporary3295 £temporary3295 0

 strtok$36:
	; Address £temporary3296 £temporary3292 -> £temporary3295

 strtok$37:
	; Assign token £temporary3296
	mov [token], rsi

 strtok$38:
	; Return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$39:
	; NotEqual 41 token 0
	cmp qword [token], 0
	jne strtok$41

 strtok$40:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$41:
	; Dereference £temporary3298 -> token token 0
	mov rsi, [token]

 strtok$42:
	; NotEqual 44 £temporary3298 -> token 0
	cmp byte [rsi], 0
	jne strtok$44

 strtok$43:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$44:
	; Assign index 0
	mov dword [rbp + 40], 0

 strtok$45:
	; IntegralToIntegral £temporary3301 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$46:
	; BinaryAdd £temporary3303 token £temporary3301
	mov rsi, [token]
	add rsi, rax

 strtok$47:
	; Dereference £temporary3300 -> £temporary3303 £temporary3303 0

 strtok$48:
	; Equal 74 £temporary3300 -> £temporary3303 0
	cmp byte [rsi], 0
	je strtok$74

 strtok$49:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$50:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$51:
	; IntegralToIntegral £temporary3307 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$52:
	; BinaryAdd £temporary3309 token £temporary3307
	mov rsi, [token]
	add rsi, rax

 strtok$53:
	; Dereference £temporary3306 -> £temporary3309 £temporary3309 0

 strtok$54:
	; IntegralToIntegral £temporary3310 £temporary3306 -> £temporary3309
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$55
	neg al
	neg eax

 strtok$55:
	; Parameter signedint £temporary3310 84
	mov [rbp + 84], eax

 strtok$56:
	; Call strchr 52 0
	mov qword [rbp + 52], strtok$57
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$57:
	; PostCall 52

 strtok$58:
	; GetReturnValue £temporary3311

 strtok$59:
	; Equal 72 £temporary3311 0
	cmp rbx, 0
	je strtok$72

 strtok$60:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$61:
	; IntegralToIntegral £temporary3314 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$62:
	; BinaryAdd £temporary3316 token £temporary3314
	mov rsi, [token]
	add rsi, rax

 strtok$63:
	; Dereference £temporary3313 -> £temporary3316 £temporary3316 0

 strtok$64:
	; Assign £temporary3313 -> £temporary3316 0
	mov byte [rsi], 0

 strtok$65:
	; BinaryAdd £temporary3317 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$66:
	; IntegralToIntegral £temporary3319 £temporary3317
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; BinaryAdd £temporary3321 token £temporary3319
	mov rsi, [token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3318 -> £temporary3321 £temporary3321 0

 strtok$69:
	; Address £temporary3322 £temporary3318 -> £temporary3321

 strtok$70:
	; Assign token £temporary3322
	mov [token], rsi

 strtok$71:
	; Return tokenStart2
	mov rbx, [rbp + 52]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$72:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strtok$73:
	; Goto 45
	jmp strtok$45

 strtok$74:
	; Assign tokenStart token
	mov rax, [token]
	mov [rbp + 44], rax

 strtok$75:
	; IntegralToIntegral £temporary3324 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$76:
	; BinaryAdd £temporary3326 token £temporary3324
	mov rsi, [token]
	add rsi, rax

 strtok$77:
	; Dereference £temporary3323 -> £temporary3326 £temporary3326 0

 strtok$78:
	; Address £temporary3327 £temporary3323 -> £temporary3326

 strtok$79:
	; Assign token £temporary3327
	mov [token], rsi

 strtok$80:
	; Return tokenStart
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$81:
	; FunctionEnd strtok

section .text

 memcpy:
	; IntegralToIntegral £temporary3328 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3328
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3329 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3329
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
	; IntegralToIntegral £temporary3333 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary3335 charTarget £temporary3333
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3332 -> £temporary3335 £temporary3335 0

 memcpy$9:
	; IntegralToIntegral £temporary3337 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary3339 charSource £temporary3337
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3336 -> £temporary3339 £temporary3339 0

 memcpy$12:
	; Assign £temporary3332 -> £temporary3335 £temporary3336 -> £temporary3339
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Goto 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3340 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; Return £temporary3340
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3341 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3341
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3342 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3342
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
	; IntegralToIntegral £temporary3348 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary3350 charTarget £temporary3348
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3347 -> £temporary3350 £temporary3350 0

 memmove$10:
	; IntegralToIntegral £temporary3352 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary3354 charSource £temporary3352
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3351 -> £temporary3354 £temporary3354 0

 memmove$13:
	; Assign £temporary3347 -> £temporary3350 £temporary3351 -> £temporary3354
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
	; IntegralToIntegral £temporary3358 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary3360 charTarget £temporary3358
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3357 -> £temporary3360 £temporary3360 0

 memmove$21:
	; IntegralToIntegral £temporary3362 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary3364 charSource £temporary3362
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3361 -> £temporary3364 £temporary3364 0

 memmove$24:
	; Assign £temporary3357 -> £temporary3360 £temporary3361 -> £temporary3364
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Goto 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3365 target
	mov rbx, [rbp + 24]

 memmove$28:
	; Return £temporary3365
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3366 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3366
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3367 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3367
	mov [rbp + 52], rax

 memcmp$4:
	; Assign index 0
	mov dword [rbp + 60], 0

 memcmp$5:
	; SignedGreaterThanEqual 24 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcmp$24

 memcmp$6:
	; IntegralToIntegral £temporary3371 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary3373 charLeft £temporary3371
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3370 -> £temporary3373 £temporary3373 0

 memcmp$9:
	; IntegralToIntegral £temporary3375 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary3377 charRight £temporary3375
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3374 -> £temporary3377 £temporary3377 0

 memcmp$12:
	; SignedGreaterThanEqual 14 £temporary3370 -> £temporary3373 £temporary3374 -> £temporary3377
	mov al, [rdi]
	cmp [rsi], al
	jge memcmp$14

 memcmp$13:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$14:
	; IntegralToIntegral £temporary3380 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; BinaryAdd £temporary3382 charLeft £temporary3380
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; Dereference £temporary3379 -> £temporary3382 £temporary3382 0

 memcmp$17:
	; IntegralToIntegral £temporary3384 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; BinaryAdd £temporary3386 charRight £temporary3384
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; Dereference £temporary3383 -> £temporary3386 £temporary3386 0

 memcmp$20:
	; SignedLessThanEqual 22 £temporary3379 -> £temporary3382 £temporary3383 -> £temporary3386
	mov al, [rdi]
	cmp [rsi], al
	jle memcmp$22

 memcmp$21:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$22:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcmp$23:
	; Goto 5
	jmp memcmp$5

 memcmp$24:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$25:
	; FunctionEnd memcmp

section .text

 memchr:
	; IntegralToIntegral £temporary3388 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3388
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3389 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3389
	mov [rbp + 52], al

 memchr$4:
	; Assign index 0
	mov dword [rbp + 40], 0

 memchr$5:
	; SignedGreaterThanEqual 18 index size
	mov eax, [rbp + 36]
	cmp [rbp + 40], eax
	jge memchr$18

 memchr$6:
	; IntegralToIntegral £temporary3393 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; BinaryAdd £temporary3395 charBlock £temporary3393
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3392 -> £temporary3395 £temporary3395 0

 memchr$9:
	; NotEqual 16 £temporary3392 -> £temporary3395 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$16

 memchr$10:
	; IntegralToIntegral £temporary3398 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; BinaryAdd £temporary3400 charBlock £temporary3398
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3397 -> £temporary3400 £temporary3400 0

 memchr$13:
	; Address £temporary3401 £temporary3397 -> £temporary3400

 memchr$14:
	; IntegralToIntegral £temporary3402 £temporary3401

 memchr$15:
	; Return £temporary3402
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$16:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 memchr$17:
	; Goto 5
	jmp memchr$5

 memchr$18:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$19:
	; FunctionEnd memchr

section .text

 memset:
	; IntegralToIntegral £temporary3403 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3403
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3404 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3404
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
	; IntegralToIntegral £temporary3408 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary3410 charBlock £temporary3408
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3407 -> £temporary3410 £temporary3410 0

 memset$9:
	; Assign £temporary3407 -> £temporary3410 c
	mov al, [rbp + 48]
	mov [rsi], al

 memset$10:
	; BinaryAdd index index 1
	inc dword [rbp + 49]

 memset$11:
	; Goto 5
	jmp memset$5

 memset$12:
	; Return block
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memset$13:
	; FunctionEnd memset
