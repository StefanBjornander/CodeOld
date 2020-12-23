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
	; IntegralToIntegral £temporary3085 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$15:
	; BinaryAdd £temporary3087 right £temporary3085
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$16:
	; Dereference £temporary3084 -> £temporary3087 £temporary3087 0

 strcmp$17:
	; SignedGreaterThanEqual 20 £temporary3080 -> £temporary3083 £temporary3084 -> £temporary3087
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
	; IntegralToIntegral £temporary3090 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$21:
	; BinaryAdd £temporary3092 left £temporary3090
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$22:
	; Dereference £temporary3089 -> £temporary3092 £temporary3092 0

 strcmp$23:
	; IntegralToIntegral £temporary3094 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; BinaryAdd £temporary3096 right £temporary3094
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$25:
	; Dereference £temporary3093 -> £temporary3096 £temporary3096 0

 strcmp$26:
	; SignedLessThanEqual 29 £temporary3089 -> £temporary3092 £temporary3093 -> £temporary3096
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
	; SignedGreaterThanEqual 32 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncmp$32

 strncmp$2:
	; IntegralToIntegral £temporary3102 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; BinaryAdd £temporary3104 left £temporary3102
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary3101 -> £temporary3104 £temporary3104 0

 strncmp$5:
	; NotEqual 12 £temporary3101 -> £temporary3104 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$6:
	; IntegralToIntegral £temporary3107 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; BinaryAdd £temporary3109 right £temporary3107
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary3106 -> £temporary3109 £temporary3109 0

 strncmp$9:
	; NotEqual 12 £temporary3106 -> £temporary3109 0
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
	; IntegralToIntegral £temporary3113 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; BinaryAdd £temporary3115 left £temporary3113
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary3112 -> £temporary3115 £temporary3115 0

 strncmp$15:
	; IntegralToIntegral £temporary3117 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$16:
	; BinaryAdd £temporary3119 right £temporary3117
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$17:
	; Dereference £temporary3116 -> £temporary3119 £temporary3119 0

 strncmp$18:
	; SignedGreaterThanEqual 21 £temporary3112 -> £temporary3115 £temporary3116 -> £temporary3119
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
	; IntegralToIntegral £temporary3122 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$22:
	; BinaryAdd £temporary3124 left £temporary3122
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$23:
	; Dereference £temporary3121 -> £temporary3124 £temporary3124 0

 strncmp$24:
	; IntegralToIntegral £temporary3126 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; BinaryAdd £temporary3128 right £temporary3126
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$26:
	; Dereference £temporary3125 -> £temporary3128 £temporary3128 0

 strncmp$27:
	; SignedLessThanEqual 30 £temporary3121 -> £temporary3124 £temporary3125 -> £temporary3128
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
	; IntegralToIntegral £temporary3130 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary3130
	mov [rbp + 40], al

 strchr$2:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary3132 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; BinaryAdd £temporary3134 text £temporary3132
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary3131 -> £temporary3134 £temporary3134 0

 strchr$6:
	; Equal 19 £temporary3131 -> £temporary3134 0
	cmp byte [rsi], 0
	je strchr$19

 strchr$7:
	; IntegralToIntegral £temporary3138 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; BinaryAdd £temporary3140 text £temporary3138
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary3137 -> £temporary3140 £temporary3140 0

 strchr$10:
	; NotEqual 17 £temporary3137 -> £temporary3140 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$11:
	; IntegralToIntegral £temporary3143 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; BinaryAdd £temporary3145 text £temporary3143
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary3142 -> £temporary3145 £temporary3145 0

 strchr$14:
	; Address £temporary3146 £temporary3142 -> £temporary3145

 strchr$15:
	; SetReturnValue

 strchr$16:
	; Return £temporary3146
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
	; IntegralToIntegral £temporary3147 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary3147
	mov [rbp + 48], al

 strrchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary3149 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; BinaryAdd £temporary3151 text £temporary3149
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary3148 -> £temporary3151 £temporary3151 0

 strrchr$7:
	; Equal 19 £temporary3148 -> £temporary3151 0
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary3155 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; BinaryAdd £temporary3157 text £temporary3155
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary3154 -> £temporary3157 £temporary3157 0

 strrchr$11:
	; NotEqual 17 £temporary3154 -> £temporary3157 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary3160 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; BinaryAdd £temporary3162 text £temporary3160
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary3159 -> £temporary3162 £temporary3162 0

 strrchr$15:
	; Address £temporary3163 £temporary3159 -> £temporary3162

 strrchr$16:
	; Assign result £temporary3163
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
	; IntegralToIntegral £temporary3165 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; BinaryAdd £temporary3167 mainString £temporary3165
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary3164 -> £temporary3167 £temporary3167 0

 strspn$4:
	; Equal 20 £temporary3164 -> £temporary3167 0
	cmp byte [rsi], 0
	je strspn$20

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary3171 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; BinaryAdd £temporary3173 mainString £temporary3171
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary3170 -> £temporary3173 £temporary3173 0

 strspn$10:
	; IntegralToIntegral £temporary3174 £temporary3170 -> £temporary3173
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter 76 signedint £temporary3174
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
	; GetReturnValue £temporary3175

 strspn$15:
	; NotEqual 18 £temporary3175 0
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
	; IntegralToIntegral £temporary3178 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; BinaryAdd £temporary3180 mainString £temporary3178
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary3177 -> £temporary3180 £temporary3180 0

 strcspn$4:
	; Equal 20 £temporary3177 -> £temporary3180 0
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary3184 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; BinaryAdd £temporary3186 mainString £temporary3184
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary3183 -> £temporary3186 £temporary3186 0

 strcspn$10:
	; IntegralToIntegral £temporary3187 £temporary3183 -> £temporary3186
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter 76 signedint £temporary3187
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
	; GetReturnValue £temporary3188

 strcspn$15:
	; Equal 18 £temporary3188 0
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
	; IntegralToIntegral £temporary3191 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; BinaryAdd £temporary3193 mainString £temporary3191
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary3190 -> £temporary3193 £temporary3193 0

 strpbrk$4:
	; Equal 24 £temporary3190 -> £temporary3193 0
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary3197 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; BinaryAdd £temporary3199 mainString £temporary3197
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary3196 -> £temporary3199 £temporary3199 0

 strpbrk$10:
	; IntegralToIntegral £temporary3200 £temporary3196 -> £temporary3199
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter 76 signedint £temporary3200
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
	; GetReturnValue £temporary3201

 strpbrk$15:
	; Equal 22 £temporary3201 0
	cmp rbx, 0
	je strpbrk$22

 strpbrk$16:
	; IntegralToIntegral £temporary3204 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; BinaryAdd £temporary3206 mainString £temporary3204
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary3203 -> £temporary3206 £temporary3206 0

 strpbrk$19:
	; Address £temporary3207 £temporary3203 -> £temporary3206

 strpbrk$20:
	; SetReturnValue

 strpbrk$21:
	; Return £temporary3207
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
	; GetReturnValue £temporary3208

 strstr$5:
	; Assign subStringSize £temporary3208
	mov [rbp + 44], ebx

 strstr$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strstr$7:
	; IntegralToIntegral £temporary3210 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; BinaryAdd £temporary3212 mainString £temporary3210
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$9:
	; Dereference £temporary3209 -> £temporary3212 £temporary3212 0

 strstr$10:
	; Equal 29 £temporary3209 -> £temporary3212 0
	cmp byte [rsi], 0
	je strstr$29

 strstr$11:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$12:
	; IntegralToIntegral £temporary3215 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$13:
	; BinaryAdd £temporary3216 mainString £temporary3215
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$14:
	; Parameter 72 pointer £temporary3216
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
	; GetReturnValue £temporary3218

 strstr$20:
	; NotEqual 27 £temporary3218 0
	cmp ebx, 0
	jne strstr$27

 strstr$21:
	; IntegralToIntegral £temporary3221 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$22:
	; BinaryAdd £temporary3223 mainString £temporary3221
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$23:
	; Dereference £temporary3220 -> £temporary3223 £temporary3223 0

 strstr$24:
	; Address £temporary3224 £temporary3220 -> £temporary3223

 strstr$25:
	; SetReturnValue

 strstr$26:
	; Return £temporary3224
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
	; IntegralToIntegral £temporary3226 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; BinaryAdd £temporary3228 string £temporary3226
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary3225 -> £temporary3228 £temporary3228 0

 strlen$4:
	; Equal 7 £temporary3225 -> £temporary3228 0
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

@8824$int8$8#:
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
	; GetReturnValue £temporary3231

 strerror$4:
	; Assign localeConvPtr £temporary3231
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 15 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$15

 strerror$6:
	; Dereference £temporary3233 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign messageList £temporary3233 -> localeConvPtr
	mov rax, [rsi + 56]
	mov [rbp + 36], rax

 strerror$8:
	; Equal 15 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$15

 strerror$9:
	; IntegralToIntegral £temporary3236 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$10:
	; UnsignedMultiply £temporary3237 £temporary3236 8
	xor rdx, rdx
	mul qword [@8824$int8$8#]

 strerror$11:
	; BinaryAdd £temporary3238 messageList £temporary3237
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$12:
	; Dereference £temporary3235 -> £temporary3238 £temporary3238 0

 strerror$13:
	; SetReturnValue

 strerror$14:
	; Return £temporary3235 -> £temporary3238
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

token:
	; Initializer Pointer 0
	dq 0

section .text

 strtok:
	; Equal 42 string 0
	cmp qword [rbp + 24], 0
	je strtok$42

 strtok$1:
	; Dereference £temporary3240 -> string string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 5 £temporary3240 -> string 0
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
	; IntegralToIntegral £temporary3243 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; BinaryAdd £temporary3245 string £temporary3243
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary3242 -> £temporary3245 £temporary3245 0

 strtok$9:
	; Equal 35 £temporary3242 -> £temporary3245 0
	cmp byte [rsi], 0
	je strtok$35

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary3249 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; BinaryAdd £temporary3251 string £temporary3249
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary3248 -> £temporary3251 £temporary3251 0

 strtok$15:
	; IntegralToIntegral £temporary3252 £temporary3248 -> £temporary3251
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter 84 signedint £temporary3252
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
	; GetReturnValue £temporary3253

 strtok$20:
	; Equal 33 £temporary3253 0
	cmp rbx, 0
	je strtok$33

 strtok$21:
	; IntegralToIntegral £temporary3256 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; BinaryAdd £temporary3258 string £temporary3256
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary3255 -> £temporary3258 £temporary3258 0

 strtok$24:
	; Assign £temporary3255 -> £temporary3258 0
	mov byte [rsi], 0

 strtok$25:
	; BinaryAdd £temporary3259 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary3261 £temporary3259
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; BinaryAdd £temporary3263 string £temporary3261
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary3260 -> £temporary3263 £temporary3263 0

 strtok$29:
	; Address £temporary3264 £temporary3260 -> £temporary3263

 strtok$30:
	; Assign token £temporary3264
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
	; IntegralToIntegral £temporary3266 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$36:
	; BinaryAdd £temporary3268 string £temporary3266
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$37:
	; Dereference £temporary3265 -> £temporary3268 £temporary3268 0

 strtok$38:
	; Address £temporary3269 £temporary3265 -> £temporary3268

 strtok$39:
	; Assign token £temporary3269
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
	; Dereference £temporary3271 -> token token 0
	mov rsi, [token]

 strtok$46:
	; NotEqual 49 £temporary3271 -> token 0
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
	; IntegralToIntegral £temporary3274 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$51:
	; BinaryAdd £temporary3276 token £temporary3274
	mov rsi, [token]
	add rsi, rax

 strtok$52:
	; Dereference £temporary3273 -> £temporary3276 £temporary3276 0

 strtok$53:
	; Equal 80 £temporary3273 -> £temporary3276 0
	cmp byte [rsi], 0
	je strtok$80

 strtok$54:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$55:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$56:
	; IntegralToIntegral £temporary3280 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$57:
	; BinaryAdd £temporary3282 token £temporary3280
	mov rsi, [token]
	add rsi, rax

 strtok$58:
	; Dereference £temporary3279 -> £temporary3282 £temporary3282 0

 strtok$59:
	; IntegralToIntegral £temporary3283 £temporary3279 -> £temporary3282
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$60
	neg al
	neg eax

 strtok$60:
	; Parameter 84 signedint £temporary3283
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
	; GetReturnValue £temporary3284

 strtok$64:
	; Equal 78 £temporary3284 0
	cmp rbx, 0
	je strtok$78

 strtok$65:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$66:
	; IntegralToIntegral £temporary3287 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; BinaryAdd £temporary3289 token £temporary3287
	mov rsi, [token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3286 -> £temporary3289 £temporary3289 0

 strtok$69:
	; Assign £temporary3286 -> £temporary3289 0
	mov byte [rsi], 0

 strtok$70:
	; BinaryAdd £temporary3290 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$71:
	; IntegralToIntegral £temporary3292 £temporary3290
	mov rbx, 4294967295
	and rax, rbx

 strtok$72:
	; BinaryAdd £temporary3294 token £temporary3292
	mov rsi, [token]
	add rsi, rax

 strtok$73:
	; Dereference £temporary3291 -> £temporary3294 £temporary3294 0

 strtok$74:
	; Address £temporary3295 £temporary3291 -> £temporary3294

 strtok$75:
	; Assign token £temporary3295
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
	; IntegralToIntegral £temporary3297 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$82:
	; BinaryAdd £temporary3299 token £temporary3297
	mov rsi, [token]
	add rsi, rax

 strtok$83:
	; Dereference £temporary3296 -> £temporary3299 £temporary3299 0

 strtok$84:
	; Address £temporary3300 £temporary3296 -> £temporary3299

 strtok$85:
	; Assign token £temporary3300
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
	; IntegralToIntegral £temporary3301 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3301
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3302 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3302
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
	; IntegralToIntegral £temporary3306 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary3308 charTarget £temporary3306
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3305 -> £temporary3308 £temporary3308 0

 memcpy$9:
	; IntegralToIntegral £temporary3310 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary3312 charSource £temporary3310
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3309 -> £temporary3312 £temporary3312 0

 memcpy$12:
	; Assign £temporary3305 -> £temporary3308 £temporary3309 -> £temporary3312
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Jump 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3313 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; SetReturnValue

 memcpy$17:
	; Return £temporary3313
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$18:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3314 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3314
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3315 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3315
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
	; IntegralToIntegral £temporary3321 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary3323 charTarget £temporary3321
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3320 -> £temporary3323 £temporary3323 0

 memmove$10:
	; IntegralToIntegral £temporary3325 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary3327 charSource £temporary3325
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3324 -> £temporary3327 £temporary3327 0

 memmove$13:
	; Assign £temporary3320 -> £temporary3323 £temporary3324 -> £temporary3327
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
	; IntegralToIntegral £temporary3331 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary3333 charTarget £temporary3331
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3330 -> £temporary3333 £temporary3333 0

 memmove$21:
	; IntegralToIntegral £temporary3335 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary3337 charSource £temporary3335
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3334 -> £temporary3337 £temporary3337 0

 memmove$24:
	; Assign £temporary3330 -> £temporary3333 £temporary3334 -> £temporary3337
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Jump 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3338 target
	mov rbx, [rbp + 24]

 memmove$28:
	; SetReturnValue

 memmove$29:
	; Return £temporary3338
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$30:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3339 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3339
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3340 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3340
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
	; IntegralToIntegral £temporary3344 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary3346 charLeft £temporary3344
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3343 -> £temporary3346 £temporary3346 0

 memcmp$9:
	; IntegralToIntegral £temporary3348 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary3350 charRight £temporary3348
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3347 -> £temporary3350 £temporary3350 0

 memcmp$12:
	; SignedGreaterThanEqual 15 £temporary3343 -> £temporary3346 £temporary3347 -> £temporary3350
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
	; IntegralToIntegral £temporary3353 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$16:
	; BinaryAdd £temporary3355 charLeft £temporary3353
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$17:
	; Dereference £temporary3352 -> £temporary3355 £temporary3355 0

 memcmp$18:
	; IntegralToIntegral £temporary3357 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$19:
	; BinaryAdd £temporary3359 charRight £temporary3357
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$20:
	; Dereference £temporary3356 -> £temporary3359 £temporary3359 0

 memcmp$21:
	; SignedLessThanEqual 24 £temporary3352 -> £temporary3355 £temporary3356 -> £temporary3359
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
	; IntegralToIntegral £temporary3361 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3361
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3362 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3362
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
	; IntegralToIntegral £temporary3366 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; BinaryAdd £temporary3368 charBlock £temporary3366
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3365 -> £temporary3368 £temporary3368 0

 memchr$9:
	; NotEqual 17 £temporary3365 -> £temporary3368 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$10:
	; IntegralToIntegral £temporary3371 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; BinaryAdd £temporary3373 charBlock £temporary3371
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3370 -> £temporary3373 £temporary3373 0

 memchr$13:
	; Address £temporary3374 £temporary3370 -> £temporary3373

 memchr$14:
	; IntegralToIntegral £temporary3375 £temporary3374

 memchr$15:
	; SetReturnValue

 memchr$16:
	; Return £temporary3375
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
	; IntegralToIntegral £temporary3376 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3376
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3377 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3377
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
	; IntegralToIntegral £temporary3381 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary3383 charBlock £temporary3381
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3380 -> £temporary3383 £temporary3383 0

 memset$9:
	; Assign £temporary3380 -> £temporary3383 c
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
