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
	; IntegralToIntegral £temporary3024 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; BinaryAdd £temporary3026 source £temporary3024
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary3023 -> £temporary3026 £temporary3026 0

 strcpy$4:
	; Equal 14 £temporary3023 -> £temporary3026 0
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary3030 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; BinaryAdd £temporary3032 target £temporary3030
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary3029 -> £temporary3032 £temporary3032 0

 strcpy$8:
	; IntegralToIntegral £temporary3034 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; BinaryAdd £temporary3036 source £temporary3034
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary3033 -> £temporary3036 £temporary3036 0

 strcpy$11:
	; Assign £temporary3029 -> £temporary3032 £temporary3033 -> £temporary3036
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$13:
	; Goto 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary3038 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; BinaryAdd £temporary3040 target £temporary3038
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary3037 -> £temporary3040 £temporary3040 0

 strcpy$17:
	; Assign £temporary3037 -> £temporary3040 0
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
	; IntegralToIntegral £temporary3043 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; BinaryAdd £temporary3045 source £temporary3043
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary3042 -> £temporary3045 £temporary3045 0

 strncpy$5:
	; Equal 15 £temporary3042 -> £temporary3045 0
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary3050 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; BinaryAdd £temporary3052 target £temporary3050
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary3049 -> £temporary3052 £temporary3052 0

 strncpy$9:
	; IntegralToIntegral £temporary3054 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; BinaryAdd £temporary3056 source £temporary3054
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary3053 -> £temporary3056 £temporary3056 0

 strncpy$12:
	; Assign £temporary3049 -> £temporary3052 £temporary3053 -> £temporary3056
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
	; IntegralToIntegral £temporary3060 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; BinaryAdd £temporary3062 target £temporary3060
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary3059 -> £temporary3062 £temporary3062 0

 strncpy$19:
	; Assign £temporary3059 -> £temporary3062 0
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
	; GetReturnValue £temporary3063

 strcat$5:
	; Assign targetLength £temporary3063
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary3065 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; BinaryAdd £temporary3067 source £temporary3065
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary3064 -> £temporary3067 £temporary3067 0

 strcat$10:
	; Equal 21 £temporary3064 -> £temporary3067 0
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; BinaryAdd £temporary3070 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary3072 £temporary3070
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; BinaryAdd £temporary3074 target £temporary3072
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary3071 -> £temporary3074 £temporary3074 0

 strcat$15:
	; IntegralToIntegral £temporary3076 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; BinaryAdd £temporary3078 source £temporary3076
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary3075 -> £temporary3078 £temporary3078 0

 strcat$18:
	; Assign £temporary3071 -> £temporary3074 £temporary3075 -> £temporary3078
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$20:
	; Goto 7
	jmp strcat$7

 strcat$21:
	; BinaryAdd £temporary3079 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary3081 £temporary3079
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; BinaryAdd £temporary3083 target £temporary3081
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary3080 -> £temporary3083 £temporary3083 0

 strcat$25:
	; Assign £temporary3080 -> £temporary3083 0
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
	; GetReturnValue £temporary3084

 strncat$5:
	; Assign targetLength £temporary3084
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$7:
	; BinarySubtract £temporary3085 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; SignedGreaterThanEqual 23 index £temporary3085
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary3088 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; BinaryAdd £temporary3090 source £temporary3088
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary3087 -> £temporary3090 £temporary3090 0

 strncat$12:
	; Equal 23 £temporary3087 -> £temporary3090 0
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; BinaryAdd £temporary3094 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary3096 £temporary3094
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; BinaryAdd £temporary3098 target £temporary3096
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary3095 -> £temporary3098 £temporary3098 0

 strncat$17:
	; IntegralToIntegral £temporary3100 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; BinaryAdd £temporary3102 source £temporary3100
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary3099 -> £temporary3102 £temporary3102 0

 strncat$20:
	; Assign £temporary3095 -> £temporary3098 £temporary3099 -> £temporary3102
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$22:
	; Goto 7
	jmp strncat$7

 strncat$23:
	; BinaryAdd £temporary3103 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; BinarySubtract £temporary3104 £temporary3103 1
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary3106 £temporary3104
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; BinaryAdd £temporary3108 target £temporary3106
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary3105 -> £temporary3108 £temporary3108 0

 strncat$28:
	; Assign £temporary3105 -> £temporary3108 0
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
	; IntegralToIntegral £temporary3111 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; BinaryAdd £temporary3113 left £temporary3111
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary3110 -> £temporary3113 £temporary3113 0

 strcmp$4:
	; NotEqual 10 £temporary3110 -> £temporary3113 0
	cmp byte [rsi], 0
	jne strcmp$10

 strcmp$5:
	; IntegralToIntegral £temporary3116 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; BinaryAdd £temporary3118 right £temporary3116
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary3115 -> £temporary3118 £temporary3118 0

 strcmp$8:
	; NotEqual 10 £temporary3115 -> £temporary3118 0
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
	; IntegralToIntegral £temporary3122 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$11:
	; BinaryAdd £temporary3124 left £temporary3122
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$12:
	; Dereference £temporary3121 -> £temporary3124 £temporary3124 0

 strcmp$13:
	; NotEqual 15 £temporary3121 -> £temporary3124 0
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
	; IntegralToIntegral £temporary3127 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$16:
	; BinaryAdd £temporary3129 right £temporary3127
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$17:
	; Dereference £temporary3126 -> £temporary3129 £temporary3129 0

 strcmp$18:
	; NotEqual 20 £temporary3126 -> £temporary3129 0
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
	; IntegralToIntegral £temporary3132 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$21:
	; BinaryAdd £temporary3134 left £temporary3132
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$22:
	; Dereference £temporary3131 -> £temporary3134 £temporary3134 0

 strcmp$23:
	; IntegralToIntegral £temporary3136 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; BinaryAdd £temporary3138 right £temporary3136
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$25:
	; Dereference £temporary3135 -> £temporary3138 £temporary3138 0

 strcmp$26:
	; SignedGreaterThanEqual 28 £temporary3131 -> £temporary3134 £temporary3135 -> £temporary3138
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
	; IntegralToIntegral £temporary3141 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$29:
	; BinaryAdd £temporary3143 left £temporary3141
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$30:
	; Dereference £temporary3140 -> £temporary3143 £temporary3143 0

 strcmp$31:
	; IntegralToIntegral £temporary3145 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$32:
	; BinaryAdd £temporary3147 right £temporary3145
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$33:
	; Dereference £temporary3144 -> £temporary3147 £temporary3147 0

 strcmp$34:
	; SignedLessThanEqual 36 £temporary3140 -> £temporary3143 £temporary3144 -> £temporary3147
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
	; IntegralToIntegral £temporary3153 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; BinaryAdd £temporary3155 left £temporary3153
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary3152 -> £temporary3155 £temporary3155 0

 strncmp$5:
	; NotEqual 11 £temporary3152 -> £temporary3155 0
	cmp byte [rsi], 0
	jne strncmp$11

 strncmp$6:
	; IntegralToIntegral £temporary3158 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; BinaryAdd £temporary3160 right £temporary3158
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary3157 -> £temporary3160 £temporary3160 0

 strncmp$9:
	; NotEqual 11 £temporary3157 -> £temporary3160 0
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
	; IntegralToIntegral £temporary3164 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$12:
	; BinaryAdd £temporary3166 left £temporary3164
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$13:
	; Dereference £temporary3163 -> £temporary3166 £temporary3166 0

 strncmp$14:
	; NotEqual 16 £temporary3163 -> £temporary3166 0
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
	; IntegralToIntegral £temporary3169 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$17:
	; BinaryAdd £temporary3171 right £temporary3169
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$18:
	; Dereference £temporary3168 -> £temporary3171 £temporary3171 0

 strncmp$19:
	; NotEqual 21 £temporary3168 -> £temporary3171 0
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
	; IntegralToIntegral £temporary3174 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$22:
	; BinaryAdd £temporary3176 left £temporary3174
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$23:
	; Dereference £temporary3173 -> £temporary3176 £temporary3176 0

 strncmp$24:
	; IntegralToIntegral £temporary3178 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; BinaryAdd £temporary3180 right £temporary3178
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$26:
	; Dereference £temporary3177 -> £temporary3180 £temporary3180 0

 strncmp$27:
	; SignedGreaterThanEqual 29 £temporary3173 -> £temporary3176 £temporary3177 -> £temporary3180
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
	; IntegralToIntegral £temporary3183 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$30:
	; BinaryAdd £temporary3185 left £temporary3183
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$31:
	; Dereference £temporary3182 -> £temporary3185 £temporary3185 0

 strncmp$32:
	; IntegralToIntegral £temporary3187 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$33:
	; BinaryAdd £temporary3189 right £temporary3187
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$34:
	; Dereference £temporary3186 -> £temporary3189 £temporary3189 0

 strncmp$35:
	; SignedLessThanEqual 37 £temporary3182 -> £temporary3185 £temporary3186 -> £temporary3189
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
	; IntegralToIntegral £temporary3191 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary3191
	mov [rbp + 40], al

 strchr$2:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary3193 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; BinaryAdd £temporary3195 text £temporary3193
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary3192 -> £temporary3195 £temporary3195 0

 strchr$6:
	; Equal 18 £temporary3192 -> £temporary3195 0
	cmp byte [rsi], 0
	je strchr$18

 strchr$7:
	; IntegralToIntegral £temporary3199 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; BinaryAdd £temporary3201 text £temporary3199
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary3198 -> £temporary3201 £temporary3201 0

 strchr$10:
	; NotEqual 16 £temporary3198 -> £temporary3201 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$16

 strchr$11:
	; IntegralToIntegral £temporary3204 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; BinaryAdd £temporary3206 text £temporary3204
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary3203 -> £temporary3206 £temporary3206 0

 strchr$14:
	; Address £temporary3207 £temporary3203 -> £temporary3206

 strchr$15:
	; Return £temporary3207
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
	; IntegralToIntegral £temporary3208 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary3208
	mov [rbp + 48], al

 strrchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary3210 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; BinaryAdd £temporary3212 text £temporary3210
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary3209 -> £temporary3212 £temporary3212 0

 strrchr$7:
	; Equal 19 £temporary3209 -> £temporary3212 0
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary3216 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; BinaryAdd £temporary3218 text £temporary3216
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary3215 -> £temporary3218 £temporary3218 0

 strrchr$11:
	; NotEqual 17 £temporary3215 -> £temporary3218 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary3221 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; BinaryAdd £temporary3223 text £temporary3221
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary3220 -> £temporary3223 £temporary3223 0

 strrchr$15:
	; Address £temporary3224 £temporary3220 -> £temporary3223

 strrchr$16:
	; Assign result £temporary3224
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
	; IntegralToIntegral £temporary3226 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; BinaryAdd £temporary3228 mainString £temporary3226
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary3225 -> £temporary3228 £temporary3228 0

 strspn$4:
	; Equal 19 £temporary3225 -> £temporary3228 0
	cmp byte [rsi], 0
	je strspn$19

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary3232 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; BinaryAdd £temporary3234 mainString £temporary3232
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary3231 -> £temporary3234 £temporary3234 0

 strspn$10:
	; IntegralToIntegral £temporary3235 £temporary3231 -> £temporary3234
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter signedint £temporary3235 76
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
	; GetReturnValue £temporary3236

 strspn$15:
	; NotEqual 17 £temporary3236 0
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
	; IntegralToIntegral £temporary3239 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; BinaryAdd £temporary3241 mainString £temporary3239
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary3238 -> £temporary3241 £temporary3241 0

 strcspn$4:
	; Equal 19 £temporary3238 -> £temporary3241 0
	cmp byte [rsi], 0
	je strcspn$19

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary3245 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; BinaryAdd £temporary3247 mainString £temporary3245
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary3244 -> £temporary3247 £temporary3247 0

 strcspn$10:
	; IntegralToIntegral £temporary3248 £temporary3244 -> £temporary3247
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter signedint £temporary3248 76
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
	; GetReturnValue £temporary3249

 strcspn$15:
	; Equal 17 £temporary3249 0
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
	; IntegralToIntegral £temporary3252 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; BinaryAdd £temporary3254 mainString £temporary3252
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary3251 -> £temporary3254 £temporary3254 0

 strpbrk$4:
	; Equal 23 £temporary3251 -> £temporary3254 0
	cmp byte [rsi], 0
	je strpbrk$23

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary3258 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; BinaryAdd £temporary3260 mainString £temporary3258
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary3257 -> £temporary3260 £temporary3260 0

 strpbrk$10:
	; IntegralToIntegral £temporary3261 £temporary3257 -> £temporary3260
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter signedint £temporary3261 76
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
	; GetReturnValue £temporary3262

 strpbrk$15:
	; Equal 21 £temporary3262 0
	cmp rbx, 0
	je strpbrk$21

 strpbrk$16:
	; IntegralToIntegral £temporary3265 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; BinaryAdd £temporary3267 mainString £temporary3265
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary3264 -> £temporary3267 £temporary3267 0

 strpbrk$19:
	; Address £temporary3268 £temporary3264 -> £temporary3267

 strpbrk$20:
	; Return £temporary3268
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
	; IntegralToIntegral £temporary3270 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$2:
	; BinaryAdd £temporary3272 mainString £temporary3270
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$3:
	; Dereference £temporary3269 -> £temporary3272 £temporary3272 0

 strstr$4:
	; Equal 21 £temporary3269 -> £temporary3272 0
	cmp byte [rsi], 0
	je strstr$21

 strstr$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$6:
	; IntegralToIntegral £temporary3275 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$7:
	; BinaryAdd £temporary3276 mainString £temporary3275
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$8:
	; Parameter pointer £temporary3276 68
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
	; GetReturnValue £temporary3278

 strstr$13:
	; NotEqual 19 £temporary3278 0
	cmp ebx, 0
	jne strstr$19

 strstr$14:
	; IntegralToIntegral £temporary3281 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$15:
	; BinaryAdd £temporary3283 mainString £temporary3281
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$16:
	; Dereference £temporary3280 -> £temporary3283 £temporary3283 0

 strstr$17:
	; Address £temporary3284 £temporary3280 -> £temporary3283

 strstr$18:
	; Return £temporary3284
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
	; IntegralToIntegral £temporary3286 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; BinaryAdd £temporary3288 string £temporary3286
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary3285 -> £temporary3288 £temporary3288 0

 strlen$4:
	; Equal 7 £temporary3285 -> £temporary3288 0
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
	; GetReturnValue £temporary3291

 strerror$4:
	; Assign localeConvPtr £temporary3291
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; Dereference £temporary3293 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign £temporary3294 £temporary3293 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; Goto 10
	jmp strerror$10

 strerror$9:
	; Assign £temporary3294 0
	mov rax, 0

 strerror$10:
	; Assign messageList £temporary3294
	mov [rbp + 36], rax

 strerror$11:
	; Equal 14 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; Assign £temporary3296 messageList
	mov rax, [rbp + 36]

 strerror$13:
	; Goto 15
	jmp strerror$15

 strerror$14:
	; Assign £temporary3296 enMessageList
	mov rax, enMessageList

 strerror$15:
	; Assign messageList £temporary3296
	mov [rbp + 36], rax

 strerror$16:
	; IntegralToIntegral £temporary3298 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; UnsignedMultiply £temporary3299 £temporary3298 8
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; BinaryAdd £temporary3300 messageList £temporary3299
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; Dereference £temporary3297 -> £temporary3300 £temporary3300 0

 strerror$20:
	; Return £temporary3297 -> £temporary3300
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
	; Dereference £temporary3302 -> string string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 4 £temporary3302 -> string 0
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
	; IntegralToIntegral £temporary3305 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$6:
	; BinaryAdd £temporary3307 string £temporary3305
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$7:
	; Dereference £temporary3304 -> £temporary3307 £temporary3307 0

 strtok$8:
	; Equal 33 £temporary3304 -> £temporary3307 0
	cmp byte [rsi], 0
	je strtok$33

 strtok$9:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$10:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$11:
	; IntegralToIntegral £temporary3311 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$12:
	; BinaryAdd £temporary3313 string £temporary3311
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$13:
	; Dereference £temporary3310 -> £temporary3313 £temporary3313 0

 strtok$14:
	; IntegralToIntegral £temporary3314 £temporary3310 -> £temporary3313
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$15
	neg al
	neg eax

 strtok$15:
	; Parameter signedint £temporary3314 84
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
	; GetReturnValue £temporary3315

 strtok$19:
	; Equal 31 £temporary3315 0
	cmp rbx, 0
	je strtok$31

 strtok$20:
	; IntegralToIntegral £temporary3318 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$21:
	; BinaryAdd £temporary3320 string £temporary3318
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$22:
	; Dereference £temporary3317 -> £temporary3320 £temporary3320 0

 strtok$23:
	; Assign £temporary3317 -> £temporary3320 0
	mov byte [rsi], 0

 strtok$24:
	; BinaryAdd £temporary3321 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$25:
	; IntegralToIntegral £temporary3323 £temporary3321
	mov rbx, 4294967295
	and rax, rbx

 strtok$26:
	; BinaryAdd £temporary3325 string £temporary3323
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$27:
	; Dereference £temporary3322 -> £temporary3325 £temporary3325 0

 strtok$28:
	; Address £temporary3326 £temporary3322 -> £temporary3325

 strtok$29:
	; Assign token £temporary3326
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
	; IntegralToIntegral £temporary3328 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$34:
	; BinaryAdd £temporary3330 string £temporary3328
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$35:
	; Dereference £temporary3327 -> £temporary3330 £temporary3330 0

 strtok$36:
	; Address £temporary3331 £temporary3327 -> £temporary3330

 strtok$37:
	; Assign token £temporary3331
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
	; Dereference £temporary3333 -> token token 0
	mov rsi, [token]

 strtok$42:
	; NotEqual 44 £temporary3333 -> token 0
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
	; IntegralToIntegral £temporary3336 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$46:
	; BinaryAdd £temporary3338 token £temporary3336
	mov rsi, [token]
	add rsi, rax

 strtok$47:
	; Dereference £temporary3335 -> £temporary3338 £temporary3338 0

 strtok$48:
	; Equal 74 £temporary3335 -> £temporary3338 0
	cmp byte [rsi], 0
	je strtok$74

 strtok$49:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$50:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$51:
	; IntegralToIntegral £temporary3342 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$52:
	; BinaryAdd £temporary3344 token £temporary3342
	mov rsi, [token]
	add rsi, rax

 strtok$53:
	; Dereference £temporary3341 -> £temporary3344 £temporary3344 0

 strtok$54:
	; IntegralToIntegral £temporary3345 £temporary3341 -> £temporary3344
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$55
	neg al
	neg eax

 strtok$55:
	; Parameter signedint £temporary3345 84
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
	; GetReturnValue £temporary3346

 strtok$59:
	; Equal 72 £temporary3346 0
	cmp rbx, 0
	je strtok$72

 strtok$60:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$61:
	; IntegralToIntegral £temporary3349 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$62:
	; BinaryAdd £temporary3351 token £temporary3349
	mov rsi, [token]
	add rsi, rax

 strtok$63:
	; Dereference £temporary3348 -> £temporary3351 £temporary3351 0

 strtok$64:
	; Assign £temporary3348 -> £temporary3351 0
	mov byte [rsi], 0

 strtok$65:
	; BinaryAdd £temporary3352 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$66:
	; IntegralToIntegral £temporary3354 £temporary3352
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; BinaryAdd £temporary3356 token £temporary3354
	mov rsi, [token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3353 -> £temporary3356 £temporary3356 0

 strtok$69:
	; Address £temporary3357 £temporary3353 -> £temporary3356

 strtok$70:
	; Assign token £temporary3357
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
	; IntegralToIntegral £temporary3359 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$76:
	; BinaryAdd £temporary3361 token £temporary3359
	mov rsi, [token]
	add rsi, rax

 strtok$77:
	; Dereference £temporary3358 -> £temporary3361 £temporary3361 0

 strtok$78:
	; Address £temporary3362 £temporary3358 -> £temporary3361

 strtok$79:
	; Assign token £temporary3362
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
	; IntegralToIntegral £temporary3363 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3363
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3364 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3364
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
	; IntegralToIntegral £temporary3368 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary3370 charTarget £temporary3368
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3367 -> £temporary3370 £temporary3370 0

 memcpy$9:
	; IntegralToIntegral £temporary3372 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary3374 charSource £temporary3372
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3371 -> £temporary3374 £temporary3374 0

 memcpy$12:
	; Assign £temporary3367 -> £temporary3370 £temporary3371 -> £temporary3374
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Goto 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3375 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; Return £temporary3375
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3376 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3376
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3377 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3377
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
	; IntegralToIntegral £temporary3383 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary3385 charTarget £temporary3383
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3382 -> £temporary3385 £temporary3385 0

 memmove$10:
	; IntegralToIntegral £temporary3387 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary3389 charSource £temporary3387
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3386 -> £temporary3389 £temporary3389 0

 memmove$13:
	; Assign £temporary3382 -> £temporary3385 £temporary3386 -> £temporary3389
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
	; IntegralToIntegral £temporary3393 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary3395 charTarget £temporary3393
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3392 -> £temporary3395 £temporary3395 0

 memmove$21:
	; IntegralToIntegral £temporary3397 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary3399 charSource £temporary3397
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3396 -> £temporary3399 £temporary3399 0

 memmove$24:
	; Assign £temporary3392 -> £temporary3395 £temporary3396 -> £temporary3399
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Goto 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3400 target
	mov rbx, [rbp + 24]

 memmove$28:
	; Return £temporary3400
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3401 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3401
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3402 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3402
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
	; IntegralToIntegral £temporary3406 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary3408 charLeft £temporary3406
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3405 -> £temporary3408 £temporary3408 0

 memcmp$9:
	; IntegralToIntegral £temporary3410 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary3412 charRight £temporary3410
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3409 -> £temporary3412 £temporary3412 0

 memcmp$12:
	; SignedGreaterThanEqual 14 £temporary3405 -> £temporary3408 £temporary3409 -> £temporary3412
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
	; IntegralToIntegral £temporary3415 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; BinaryAdd £temporary3417 charLeft £temporary3415
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; Dereference £temporary3414 -> £temporary3417 £temporary3417 0

 memcmp$17:
	; IntegralToIntegral £temporary3419 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; BinaryAdd £temporary3421 charRight £temporary3419
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; Dereference £temporary3418 -> £temporary3421 £temporary3421 0

 memcmp$20:
	; SignedLessThanEqual 22 £temporary3414 -> £temporary3417 £temporary3418 -> £temporary3421
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
	; IntegralToIntegral £temporary3423 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3423
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3424 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3424
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
	; IntegralToIntegral £temporary3428 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; BinaryAdd £temporary3430 charBlock £temporary3428
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3427 -> £temporary3430 £temporary3430 0

 memchr$9:
	; NotEqual 16 £temporary3427 -> £temporary3430 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$16

 memchr$10:
	; IntegralToIntegral £temporary3433 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; BinaryAdd £temporary3435 charBlock £temporary3433
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3432 -> £temporary3435 £temporary3435 0

 memchr$13:
	; Address £temporary3436 £temporary3432 -> £temporary3435

 memchr$14:
	; IntegralToIntegral £temporary3437 £temporary3436

 memchr$15:
	; Return £temporary3437
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
	; IntegralToIntegral £temporary3438 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3438
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3439 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3439
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
	; IntegralToIntegral £temporary3443 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary3445 charBlock £temporary3443
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3442 -> £temporary3445 £temporary3445 0

 memset$9:
	; Assign £temporary3442 -> £temporary3445 c
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
