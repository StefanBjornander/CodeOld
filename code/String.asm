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
	; IntegralToIntegral £temporary2983 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; BinaryAdd £temporary2985 source £temporary2983
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary2982 -> £temporary2985 £temporary2985 0

 strcpy$4:
	; Equal 14 £temporary2982 -> £temporary2985 0
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary2989 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; BinaryAdd £temporary2991 target £temporary2989
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary2988 -> £temporary2991 £temporary2991 0

 strcpy$8:
	; IntegralToIntegral £temporary2993 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; BinaryAdd £temporary2995 source £temporary2993
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary2992 -> £temporary2995 £temporary2995 0

 strcpy$11:
	; Assign £temporary2988 -> £temporary2991 £temporary2992 -> £temporary2995
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$13:
	; Jump 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary2997 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; BinaryAdd £temporary2999 target £temporary2997
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary2996 -> £temporary2999 £temporary2999 0

 strcpy$17:
	; Assign £temporary2996 -> £temporary2999 0
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
	; IntegralToIntegral £temporary3002 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; BinaryAdd £temporary3004 source £temporary3002
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary3001 -> £temporary3004 £temporary3004 0

 strncpy$5:
	; Equal 15 £temporary3001 -> £temporary3004 0
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary3009 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; BinaryAdd £temporary3011 target £temporary3009
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary3008 -> £temporary3011 £temporary3011 0

 strncpy$9:
	; IntegralToIntegral £temporary3013 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; BinaryAdd £temporary3015 source £temporary3013
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary3012 -> £temporary3015 £temporary3015 0

 strncpy$12:
	; Assign £temporary3008 -> £temporary3011 £temporary3012 -> £temporary3015
	mov al, [rdi]
	mov [rsi], al

 strncpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncpy$14:
	; Jump 1
	jmp strncpy$1

 strncpy$15:
	; SignedGreaterThanEqual 22 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$22

 strncpy$16:
	; IntegralToIntegral £temporary3019 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; BinaryAdd £temporary3021 target £temporary3019
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary3018 -> £temporary3021 £temporary3021 0

 strncpy$19:
	; Assign £temporary3018 -> £temporary3021 0
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
	; GetReturnValue £temporary3022

 strcat$5:
	; Assign targetLength £temporary3022
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary3024 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; BinaryAdd £temporary3026 source £temporary3024
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary3023 -> £temporary3026 £temporary3026 0

 strcat$10:
	; Equal 21 £temporary3023 -> £temporary3026 0
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; BinaryAdd £temporary3029 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary3031 £temporary3029
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; BinaryAdd £temporary3033 target £temporary3031
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary3030 -> £temporary3033 £temporary3033 0

 strcat$15:
	; IntegralToIntegral £temporary3035 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; BinaryAdd £temporary3037 source £temporary3035
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary3034 -> £temporary3037 £temporary3037 0

 strcat$18:
	; Assign £temporary3030 -> £temporary3033 £temporary3034 -> £temporary3037
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$20:
	; Jump 7
	jmp strcat$7

 strcat$21:
	; BinaryAdd £temporary3038 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary3040 £temporary3038
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; BinaryAdd £temporary3042 target £temporary3040
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary3039 -> £temporary3042 £temporary3042 0

 strcat$25:
	; Assign £temporary3039 -> £temporary3042 0
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
	; GetReturnValue £temporary3043

 strncat$5:
	; Assign targetLength £temporary3043
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$7:
	; BinarySubtract £temporary3044 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; SignedGreaterThanEqual 23 index £temporary3044
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary3047 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; BinaryAdd £temporary3049 source £temporary3047
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary3046 -> £temporary3049 £temporary3049 0

 strncat$12:
	; Equal 23 £temporary3046 -> £temporary3049 0
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; BinaryAdd £temporary3053 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary3055 £temporary3053
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; BinaryAdd £temporary3057 target £temporary3055
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary3054 -> £temporary3057 £temporary3057 0

 strncat$17:
	; IntegralToIntegral £temporary3059 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; BinaryAdd £temporary3061 source £temporary3059
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary3058 -> £temporary3061 £temporary3061 0

 strncat$20:
	; Assign £temporary3054 -> £temporary3057 £temporary3058 -> £temporary3061
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$22:
	; Jump 7
	jmp strncat$7

 strncat$23:
	; BinaryAdd £temporary3062 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; BinarySubtract £temporary3063 £temporary3062 1
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary3065 £temporary3063
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; BinaryAdd £temporary3067 target £temporary3065
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary3064 -> £temporary3067 £temporary3067 0

 strncat$28:
	; Assign £temporary3064 -> £temporary3067 0
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
	; IntegralToIntegral £temporary3070 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; BinaryAdd £temporary3072 left £temporary3070
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary3069 -> £temporary3072 £temporary3072 0

 strcmp$4:
	; NotEqual 11 £temporary3069 -> £temporary3072 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$5:
	; IntegralToIntegral £temporary3075 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; BinaryAdd £temporary3077 right £temporary3075
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary3074 -> £temporary3077 £temporary3077 0

 strcmp$8:
	; NotEqual 11 £temporary3074 -> £temporary3077 0
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
	; IntegralToIntegral £temporary3081 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; BinaryAdd £temporary3083 left £temporary3081
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary3080 -> £temporary3083 £temporary3083 0

 strcmp$14:
	; NotEqual 17 £temporary3080 -> £temporary3083 0
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
	; IntegralToIntegral £temporary3086 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$18:
	; BinaryAdd £temporary3088 right £temporary3086
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$19:
	; Dereference £temporary3085 -> £temporary3088 £temporary3088 0

 strcmp$20:
	; NotEqual 23 £temporary3085 -> £temporary3088 0
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
	; IntegralToIntegral £temporary3091 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; BinaryAdd £temporary3093 left £temporary3091
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$25:
	; Dereference £temporary3090 -> £temporary3093 £temporary3093 0

 strcmp$26:
	; IntegralToIntegral £temporary3095 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$27:
	; BinaryAdd £temporary3097 right £temporary3095
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$28:
	; Dereference £temporary3094 -> £temporary3097 £temporary3097 0

 strcmp$29:
	; SignedGreaterThanEqual 32 £temporary3090 -> £temporary3093 £temporary3094 -> £temporary3097
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
	; IntegralToIntegral £temporary3100 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; BinaryAdd £temporary3102 left £temporary3100
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$34:
	; Dereference £temporary3099 -> £temporary3102 £temporary3102 0

 strcmp$35:
	; IntegralToIntegral £temporary3104 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$36:
	; BinaryAdd £temporary3106 right £temporary3104
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$37:
	; Dereference £temporary3103 -> £temporary3106 £temporary3106 0

 strcmp$38:
	; SignedLessThanEqual 41 £temporary3099 -> £temporary3102 £temporary3103 -> £temporary3106
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
	; Jump 1
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
	; IntegralToIntegral £temporary3112 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; BinaryAdd £temporary3114 left £temporary3112
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary3111 -> £temporary3114 £temporary3114 0

 strncmp$5:
	; NotEqual 12 £temporary3111 -> £temporary3114 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$6:
	; IntegralToIntegral £temporary3117 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; BinaryAdd £temporary3119 right £temporary3117
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary3116 -> £temporary3119 £temporary3119 0

 strncmp$9:
	; NotEqual 12 £temporary3116 -> £temporary3119 0
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
	; IntegralToIntegral £temporary3123 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; BinaryAdd £temporary3125 left £temporary3123
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary3122 -> £temporary3125 £temporary3125 0

 strncmp$15:
	; NotEqual 18 £temporary3122 -> £temporary3125 0
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
	; IntegralToIntegral £temporary3128 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$19:
	; BinaryAdd £temporary3130 right £temporary3128
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$20:
	; Dereference £temporary3127 -> £temporary3130 £temporary3130 0

 strncmp$21:
	; NotEqual 24 £temporary3127 -> £temporary3130 0
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
	; IntegralToIntegral £temporary3133 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; BinaryAdd £temporary3135 left £temporary3133
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$26:
	; Dereference £temporary3132 -> £temporary3135 £temporary3135 0

 strncmp$27:
	; IntegralToIntegral £temporary3137 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$28:
	; BinaryAdd £temporary3139 right £temporary3137
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$29:
	; Dereference £temporary3136 -> £temporary3139 £temporary3139 0

 strncmp$30:
	; SignedGreaterThanEqual 33 £temporary3132 -> £temporary3135 £temporary3136 -> £temporary3139
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
	; IntegralToIntegral £temporary3142 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; BinaryAdd £temporary3144 left £temporary3142
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$35:
	; Dereference £temporary3141 -> £temporary3144 £temporary3144 0

 strncmp$36:
	; IntegralToIntegral £temporary3146 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$37:
	; BinaryAdd £temporary3148 right £temporary3146
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$38:
	; Dereference £temporary3145 -> £temporary3148 £temporary3148 0

 strncmp$39:
	; SignedLessThanEqual 42 £temporary3141 -> £temporary3144 £temporary3145 -> £temporary3148
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
	; Jump 1
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
	; IntegralToIntegral £temporary3150 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary3150
	mov [rbp + 40], al

 strchr$2:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary3152 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; BinaryAdd £temporary3154 text £temporary3152
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary3151 -> £temporary3154 £temporary3154 0

 strchr$6:
	; Equal 19 £temporary3151 -> £temporary3154 0
	cmp byte [rsi], 0
	je strchr$19

 strchr$7:
	; IntegralToIntegral £temporary3158 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; BinaryAdd £temporary3160 text £temporary3158
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary3157 -> £temporary3160 £temporary3160 0

 strchr$10:
	; NotEqual 17 £temporary3157 -> £temporary3160 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$11:
	; IntegralToIntegral £temporary3163 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; BinaryAdd £temporary3165 text £temporary3163
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary3162 -> £temporary3165 £temporary3165 0

 strchr$14:
	; Address £temporary3166 £temporary3162 -> £temporary3165

 strchr$15:
	; SetReturnValue

 strchr$16:
	; Return £temporary3166
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
	; IntegralToIntegral £temporary3167 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary3167
	mov [rbp + 48], al

 strrchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary3169 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; BinaryAdd £temporary3171 text £temporary3169
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary3168 -> £temporary3171 £temporary3171 0

 strrchr$7:
	; Equal 19 £temporary3168 -> £temporary3171 0
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary3175 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; BinaryAdd £temporary3177 text £temporary3175
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary3174 -> £temporary3177 £temporary3177 0

 strrchr$11:
	; NotEqual 17 £temporary3174 -> £temporary3177 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary3180 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; BinaryAdd £temporary3182 text £temporary3180
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary3179 -> £temporary3182 £temporary3182 0

 strrchr$15:
	; Address £temporary3183 £temporary3179 -> £temporary3182

 strrchr$16:
	; Assign result £temporary3183
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
	; IntegralToIntegral £temporary3185 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; BinaryAdd £temporary3187 mainString £temporary3185
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary3184 -> £temporary3187 £temporary3187 0

 strspn$4:
	; Equal 20 £temporary3184 -> £temporary3187 0
	cmp byte [rsi], 0
	je strspn$20

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary3191 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; BinaryAdd £temporary3193 mainString £temporary3191
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary3190 -> £temporary3193 £temporary3193 0

 strspn$10:
	; IntegralToIntegral £temporary3194 £temporary3190 -> £temporary3193
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter 76 signedint £temporary3194
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
	; GetReturnValue £temporary3195

 strspn$15:
	; NotEqual 18 £temporary3195 0
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
	; IntegralToIntegral £temporary3198 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; BinaryAdd £temporary3200 mainString £temporary3198
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary3197 -> £temporary3200 £temporary3200 0

 strcspn$4:
	; Equal 20 £temporary3197 -> £temporary3200 0
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary3204 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; BinaryAdd £temporary3206 mainString £temporary3204
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary3203 -> £temporary3206 £temporary3206 0

 strcspn$10:
	; IntegralToIntegral £temporary3207 £temporary3203 -> £temporary3206
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter 76 signedint £temporary3207
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
	; GetReturnValue £temporary3208

 strcspn$15:
	; Equal 18 £temporary3208 0
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
	; IntegralToIntegral £temporary3211 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; BinaryAdd £temporary3213 mainString £temporary3211
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary3210 -> £temporary3213 £temporary3213 0

 strpbrk$4:
	; Equal 24 £temporary3210 -> £temporary3213 0
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary3217 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; BinaryAdd £temporary3219 mainString £temporary3217
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary3216 -> £temporary3219 £temporary3219 0

 strpbrk$10:
	; IntegralToIntegral £temporary3220 £temporary3216 -> £temporary3219
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter 76 signedint £temporary3220
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
	; GetReturnValue £temporary3221

 strpbrk$15:
	; Equal 22 £temporary3221 0
	cmp rbx, 0
	je strpbrk$22

 strpbrk$16:
	; IntegralToIntegral £temporary3224 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; BinaryAdd £temporary3226 mainString £temporary3224
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary3223 -> £temporary3226 £temporary3226 0

 strpbrk$19:
	; Address £temporary3227 £temporary3223 -> £temporary3226

 strpbrk$20:
	; SetReturnValue

 strpbrk$21:
	; Return £temporary3227
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
	; Assign index 0
	mov dword [rbp + 40], 0

 strstr$1:
	; IntegralToIntegral £temporary3229 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$2:
	; BinaryAdd £temporary3231 mainString £temporary3229
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$3:
	; Dereference £temporary3228 -> £temporary3231 £temporary3231 0

 strstr$4:
	; Equal 22 £temporary3228 -> £temporary3231 0
	cmp byte [rsi], 0
	je strstr$22

 strstr$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$6:
	; IntegralToIntegral £temporary3234 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$7:
	; BinaryAdd £temporary3235 mainString £temporary3234
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$8:
	; Parameter 68 pointer £temporary3235
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
	; GetReturnValue £temporary3237

 strstr$13:
	; NotEqual 20 £temporary3237 0
	cmp ebx, 0
	jne strstr$20

 strstr$14:
	; IntegralToIntegral £temporary3240 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$15:
	; BinaryAdd £temporary3242 mainString £temporary3240
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$16:
	; Dereference £temporary3239 -> £temporary3242 £temporary3242 0

 strstr$17:
	; Address £temporary3243 £temporary3239 -> £temporary3242

 strstr$18:
	; SetReturnValue

 strstr$19:
	; Return £temporary3243
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$20:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strstr$21:
	; Jump 1
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
	; IntegralToIntegral £temporary3245 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; BinaryAdd £temporary3247 string £temporary3245
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary3244 -> £temporary3247 £temporary3247 0

 strlen$4:
	; Equal 7 £temporary3244 -> £temporary3247 0
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

@8845$int8$8#:
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
	; GetReturnValue £temporary3250

 strerror$4:
	; Assign localeConvPtr £temporary3250
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; Dereference £temporary3252 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign £temporary3253 £temporary3252 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; Jump 10
	jmp strerror$10

 strerror$9:
	; Assign £temporary3253 0
	mov rax, 0

 strerror$10:
	; Assign messageList £temporary3253
	mov [rbp + 36], rax

 strerror$11:
	; Equal 14 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; Assign £temporary3255 messageList
	mov rax, [rbp + 36]

 strerror$13:
	; Jump 15
	jmp strerror$15

 strerror$14:
	; Assign £temporary3255 enMessageList
	mov rax, enMessageList

 strerror$15:
	; Assign messageList £temporary3255
	mov [rbp + 36], rax

 strerror$16:
	; IntegralToIntegral £temporary3257 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; UnsignedMultiply £temporary3258 £temporary3257 8
	xor rdx, rdx
	mul qword [@8845$int8$8#]

 strerror$18:
	; BinaryAdd £temporary3259 messageList £temporary3258
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; Dereference £temporary3256 -> £temporary3259 £temporary3259 0

 strerror$20:
	; SetReturnValue

 strerror$21:
	; Return £temporary3256 -> £temporary3259
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
	; Dereference £temporary3261 -> string string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 5 £temporary3261 -> string 0
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
	; IntegralToIntegral £temporary3264 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; BinaryAdd £temporary3266 string £temporary3264
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary3263 -> £temporary3266 £temporary3266 0

 strtok$9:
	; Equal 35 £temporary3263 -> £temporary3266 0
	cmp byte [rsi], 0
	je strtok$35

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary3270 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; BinaryAdd £temporary3272 string £temporary3270
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary3269 -> £temporary3272 £temporary3272 0

 strtok$15:
	; IntegralToIntegral £temporary3273 £temporary3269 -> £temporary3272
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter 84 signedint £temporary3273
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
	; GetReturnValue £temporary3274

 strtok$20:
	; Equal 33 £temporary3274 0
	cmp rbx, 0
	je strtok$33

 strtok$21:
	; IntegralToIntegral £temporary3277 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; BinaryAdd £temporary3279 string £temporary3277
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary3276 -> £temporary3279 £temporary3279 0

 strtok$24:
	; Assign £temporary3276 -> £temporary3279 0
	mov byte [rsi], 0

 strtok$25:
	; BinaryAdd £temporary3280 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary3282 £temporary3280
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; BinaryAdd £temporary3284 string £temporary3282
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary3281 -> £temporary3284 £temporary3284 0

 strtok$29:
	; Address £temporary3285 £temporary3281 -> £temporary3284

 strtok$30:
	; Assign token £temporary3285
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
	; Jump 6
	jmp strtok$6

 strtok$35:
	; IntegralToIntegral £temporary3287 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$36:
	; BinaryAdd £temporary3289 string £temporary3287
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$37:
	; Dereference £temporary3286 -> £temporary3289 £temporary3289 0

 strtok$38:
	; Address £temporary3290 £temporary3286 -> £temporary3289

 strtok$39:
	; Assign token £temporary3290
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
	; Dereference £temporary3292 -> token token 0
	mov rsi, [token]

 strtok$46:
	; NotEqual 49 £temporary3292 -> token 0
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
	; IntegralToIntegral £temporary3295 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$51:
	; BinaryAdd £temporary3297 token £temporary3295
	mov rsi, [token]
	add rsi, rax

 strtok$52:
	; Dereference £temporary3294 -> £temporary3297 £temporary3297 0

 strtok$53:
	; Equal 80 £temporary3294 -> £temporary3297 0
	cmp byte [rsi], 0
	je strtok$80

 strtok$54:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$55:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$56:
	; IntegralToIntegral £temporary3301 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$57:
	; BinaryAdd £temporary3303 token £temporary3301
	mov rsi, [token]
	add rsi, rax

 strtok$58:
	; Dereference £temporary3300 -> £temporary3303 £temporary3303 0

 strtok$59:
	; IntegralToIntegral £temporary3304 £temporary3300 -> £temporary3303
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$60
	neg al
	neg eax

 strtok$60:
	; Parameter 84 signedint £temporary3304
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
	; GetReturnValue £temporary3305

 strtok$64:
	; Equal 78 £temporary3305 0
	cmp rbx, 0
	je strtok$78

 strtok$65:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$66:
	; IntegralToIntegral £temporary3308 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; BinaryAdd £temporary3310 token £temporary3308
	mov rsi, [token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3307 -> £temporary3310 £temporary3310 0

 strtok$69:
	; Assign £temporary3307 -> £temporary3310 0
	mov byte [rsi], 0

 strtok$70:
	; BinaryAdd £temporary3311 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$71:
	; IntegralToIntegral £temporary3313 £temporary3311
	mov rbx, 4294967295
	and rax, rbx

 strtok$72:
	; BinaryAdd £temporary3315 token £temporary3313
	mov rsi, [token]
	add rsi, rax

 strtok$73:
	; Dereference £temporary3312 -> £temporary3315 £temporary3315 0

 strtok$74:
	; Address £temporary3316 £temporary3312 -> £temporary3315

 strtok$75:
	; Assign token £temporary3316
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
	; Jump 50
	jmp strtok$50

 strtok$80:
	; Assign tokenStart token
	mov rax, [token]
	mov [rbp + 44], rax

 strtok$81:
	; IntegralToIntegral £temporary3318 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$82:
	; BinaryAdd £temporary3320 token £temporary3318
	mov rsi, [token]
	add rsi, rax

 strtok$83:
	; Dereference £temporary3317 -> £temporary3320 £temporary3320 0

 strtok$84:
	; Address £temporary3321 £temporary3317 -> £temporary3320

 strtok$85:
	; Assign token £temporary3321
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
	; IntegralToIntegral £temporary3322 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3322
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3323 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3323
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
	; IntegralToIntegral £temporary3327 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary3329 charTarget £temporary3327
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3326 -> £temporary3329 £temporary3329 0

 memcpy$9:
	; IntegralToIntegral £temporary3331 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary3333 charSource £temporary3331
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3330 -> £temporary3333 £temporary3333 0

 memcpy$12:
	; Assign £temporary3326 -> £temporary3329 £temporary3330 -> £temporary3333
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Jump 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3334 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; SetReturnValue

 memcpy$17:
	; Return £temporary3334
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$18:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3335 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3335
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3336 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3336
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
	; IntegralToIntegral £temporary3342 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary3344 charTarget £temporary3342
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3341 -> £temporary3344 £temporary3344 0

 memmove$10:
	; IntegralToIntegral £temporary3346 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary3348 charSource £temporary3346
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3345 -> £temporary3348 £temporary3348 0

 memmove$13:
	; Assign £temporary3341 -> £temporary3344 £temporary3345 -> £temporary3348
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
	; SignedGreaterThanEqual 27 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memmove$27

 memmove$18:
	; IntegralToIntegral £temporary3352 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary3354 charTarget £temporary3352
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3351 -> £temporary3354 £temporary3354 0

 memmove$21:
	; IntegralToIntegral £temporary3356 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary3358 charSource £temporary3356
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3355 -> £temporary3358 £temporary3358 0

 memmove$24:
	; Assign £temporary3351 -> £temporary3354 £temporary3355 -> £temporary3358
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Jump 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3359 target
	mov rbx, [rbp + 24]

 memmove$28:
	; SetReturnValue

 memmove$29:
	; Return £temporary3359
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$30:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3360 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3360
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3361 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3361
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
	; IntegralToIntegral £temporary3365 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary3367 charLeft £temporary3365
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3364 -> £temporary3367 £temporary3367 0

 memcmp$9:
	; IntegralToIntegral £temporary3369 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary3371 charRight £temporary3369
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3368 -> £temporary3371 £temporary3371 0

 memcmp$12:
	; SignedGreaterThanEqual 15 £temporary3364 -> £temporary3367 £temporary3368 -> £temporary3371
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
	; IntegralToIntegral £temporary3374 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$16:
	; BinaryAdd £temporary3376 charLeft £temporary3374
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$17:
	; Dereference £temporary3373 -> £temporary3376 £temporary3376 0

 memcmp$18:
	; IntegralToIntegral £temporary3378 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$19:
	; BinaryAdd £temporary3380 charRight £temporary3378
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$20:
	; Dereference £temporary3377 -> £temporary3380 £temporary3380 0

 memcmp$21:
	; SignedLessThanEqual 24 £temporary3373 -> £temporary3376 £temporary3377 -> £temporary3380
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
	; IntegralToIntegral £temporary3382 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3382
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3383 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3383
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
	; IntegralToIntegral £temporary3387 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; BinaryAdd £temporary3389 charBlock £temporary3387
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3386 -> £temporary3389 £temporary3389 0

 memchr$9:
	; NotEqual 17 £temporary3386 -> £temporary3389 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$10:
	; IntegralToIntegral £temporary3392 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; BinaryAdd £temporary3394 charBlock £temporary3392
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3391 -> £temporary3394 £temporary3394 0

 memchr$13:
	; Address £temporary3395 £temporary3391 -> £temporary3394

 memchr$14:
	; IntegralToIntegral £temporary3396 £temporary3395

 memchr$15:
	; SetReturnValue

 memchr$16:
	; Return £temporary3396
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
	; IntegralToIntegral £temporary3397 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3397
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3398 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3398
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
	; IntegralToIntegral £temporary3402 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary3404 charBlock £temporary3402
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3401 -> £temporary3404 £temporary3404 0

 memset$9:
	; Assign £temporary3401 -> £temporary3404 c
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
