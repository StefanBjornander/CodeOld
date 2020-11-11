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
	; IntegralToIntegral £temporary3040 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; BinaryAdd £temporary3042 source £temporary3040
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary3039 -> £temporary3042 £temporary3042 0

 strcpy$4:
	; Equal 14 £temporary3039 -> £temporary3042 0
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary3046 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; BinaryAdd £temporary3048 target £temporary3046
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary3045 -> £temporary3048 £temporary3048 0

 strcpy$8:
	; IntegralToIntegral £temporary3050 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; BinaryAdd £temporary3052 source £temporary3050
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary3049 -> £temporary3052 £temporary3052 0

 strcpy$11:
	; Assign £temporary3045 -> £temporary3048 £temporary3049 -> £temporary3052
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$13:
	; Goto 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary3054 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; BinaryAdd £temporary3056 target £temporary3054
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary3053 -> £temporary3056 £temporary3056 0

 strcpy$17:
	; Assign £temporary3053 -> £temporary3056 0
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
	; IntegralToIntegral £temporary3059 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; BinaryAdd £temporary3061 source £temporary3059
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary3058 -> £temporary3061 £temporary3061 0

 strncpy$5:
	; Equal 15 £temporary3058 -> £temporary3061 0
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary3066 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; BinaryAdd £temporary3068 target £temporary3066
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary3065 -> £temporary3068 £temporary3068 0

 strncpy$9:
	; IntegralToIntegral £temporary3070 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; BinaryAdd £temporary3072 source £temporary3070
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary3069 -> £temporary3072 £temporary3072 0

 strncpy$12:
	; Assign £temporary3065 -> £temporary3068 £temporary3069 -> £temporary3072
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
	; IntegralToIntegral £temporary3076 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; BinaryAdd £temporary3078 target £temporary3076
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary3075 -> £temporary3078 £temporary3078 0

 strncpy$19:
	; Assign £temporary3075 -> £temporary3078 0
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
	; GetReturnValue £temporary3079

 strcat$5:
	; Assign targetLength £temporary3079
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary3081 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; BinaryAdd £temporary3083 source £temporary3081
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary3080 -> £temporary3083 £temporary3083 0

 strcat$10:
	; Equal 21 £temporary3080 -> £temporary3083 0
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; BinaryAdd £temporary3086 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary3088 £temporary3086
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; BinaryAdd £temporary3090 target £temporary3088
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary3087 -> £temporary3090 £temporary3090 0

 strcat$15:
	; IntegralToIntegral £temporary3092 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; BinaryAdd £temporary3094 source £temporary3092
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary3091 -> £temporary3094 £temporary3094 0

 strcat$18:
	; Assign £temporary3087 -> £temporary3090 £temporary3091 -> £temporary3094
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$20:
	; Goto 7
	jmp strcat$7

 strcat$21:
	; BinaryAdd £temporary3095 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary3097 £temporary3095
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; BinaryAdd £temporary3099 target £temporary3097
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary3096 -> £temporary3099 £temporary3099 0

 strcat$25:
	; Assign £temporary3096 -> £temporary3099 0
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
	; GetReturnValue £temporary3100

 strncat$5:
	; Assign targetLength £temporary3100
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$7:
	; BinarySubtract £temporary3101 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; SignedGreaterThanEqual 23 index £temporary3101
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary3104 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; BinaryAdd £temporary3106 source £temporary3104
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary3103 -> £temporary3106 £temporary3106 0

 strncat$12:
	; Equal 23 £temporary3103 -> £temporary3106 0
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; BinaryAdd £temporary3110 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary3112 £temporary3110
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; BinaryAdd £temporary3114 target £temporary3112
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary3111 -> £temporary3114 £temporary3114 0

 strncat$17:
	; IntegralToIntegral £temporary3116 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; BinaryAdd £temporary3118 source £temporary3116
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary3115 -> £temporary3118 £temporary3118 0

 strncat$20:
	; Assign £temporary3111 -> £temporary3114 £temporary3115 -> £temporary3118
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$22:
	; Goto 7
	jmp strncat$7

 strncat$23:
	; BinaryAdd £temporary3119 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; BinarySubtract £temporary3120 £temporary3119 1
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary3122 £temporary3120
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; BinaryAdd £temporary3124 target £temporary3122
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary3121 -> £temporary3124 £temporary3124 0

 strncat$28:
	; Assign £temporary3121 -> £temporary3124 0
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
	; IntegralToIntegral £temporary3127 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; BinaryAdd £temporary3129 left £temporary3127
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary3126 -> £temporary3129 £temporary3129 0

 strcmp$4:
	; NotEqual 10 £temporary3126 -> £temporary3129 0
	cmp byte [rsi], 0
	jne strcmp$10

 strcmp$5:
	; IntegralToIntegral £temporary3132 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; BinaryAdd £temporary3134 right £temporary3132
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary3131 -> £temporary3134 £temporary3134 0

 strcmp$8:
	; NotEqual 10 £temporary3131 -> £temporary3134 0
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
	; IntegralToIntegral £temporary3138 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$11:
	; BinaryAdd £temporary3140 left £temporary3138
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$12:
	; Dereference £temporary3137 -> £temporary3140 £temporary3140 0

 strcmp$13:
	; NotEqual 15 £temporary3137 -> £temporary3140 0
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
	; IntegralToIntegral £temporary3143 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$16:
	; BinaryAdd £temporary3145 right £temporary3143
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$17:
	; Dereference £temporary3142 -> £temporary3145 £temporary3145 0

 strcmp$18:
	; NotEqual 20 £temporary3142 -> £temporary3145 0
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
	; IntegralToIntegral £temporary3148 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$21:
	; BinaryAdd £temporary3150 left £temporary3148
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$22:
	; Dereference £temporary3147 -> £temporary3150 £temporary3150 0

 strcmp$23:
	; IntegralToIntegral £temporary3152 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; BinaryAdd £temporary3154 right £temporary3152
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$25:
	; Dereference £temporary3151 -> £temporary3154 £temporary3154 0

 strcmp$26:
	; SignedGreaterThanEqual 28 £temporary3147 -> £temporary3150 £temporary3151 -> £temporary3154
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
	; IntegralToIntegral £temporary3157 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$29:
	; BinaryAdd £temporary3159 left £temporary3157
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$30:
	; Dereference £temporary3156 -> £temporary3159 £temporary3159 0

 strcmp$31:
	; IntegralToIntegral £temporary3161 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$32:
	; BinaryAdd £temporary3163 right £temporary3161
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$33:
	; Dereference £temporary3160 -> £temporary3163 £temporary3163 0

 strcmp$34:
	; SignedLessThanEqual 36 £temporary3156 -> £temporary3159 £temporary3160 -> £temporary3163
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
	; IntegralToIntegral £temporary3169 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; BinaryAdd £temporary3171 left £temporary3169
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary3168 -> £temporary3171 £temporary3171 0

 strncmp$5:
	; NotEqual 11 £temporary3168 -> £temporary3171 0
	cmp byte [rsi], 0
	jne strncmp$11

 strncmp$6:
	; IntegralToIntegral £temporary3174 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; BinaryAdd £temporary3176 right £temporary3174
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary3173 -> £temporary3176 £temporary3176 0

 strncmp$9:
	; NotEqual 11 £temporary3173 -> £temporary3176 0
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
	; IntegralToIntegral £temporary3180 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$12:
	; BinaryAdd £temporary3182 left £temporary3180
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$13:
	; Dereference £temporary3179 -> £temporary3182 £temporary3182 0

 strncmp$14:
	; NotEqual 16 £temporary3179 -> £temporary3182 0
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
	; IntegralToIntegral £temporary3185 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$17:
	; BinaryAdd £temporary3187 right £temporary3185
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$18:
	; Dereference £temporary3184 -> £temporary3187 £temporary3187 0

 strncmp$19:
	; NotEqual 21 £temporary3184 -> £temporary3187 0
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
	; IntegralToIntegral £temporary3190 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$22:
	; BinaryAdd £temporary3192 left £temporary3190
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$23:
	; Dereference £temporary3189 -> £temporary3192 £temporary3192 0

 strncmp$24:
	; IntegralToIntegral £temporary3194 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; BinaryAdd £temporary3196 right £temporary3194
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$26:
	; Dereference £temporary3193 -> £temporary3196 £temporary3196 0

 strncmp$27:
	; SignedGreaterThanEqual 29 £temporary3189 -> £temporary3192 £temporary3193 -> £temporary3196
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
	; IntegralToIntegral £temporary3199 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$30:
	; BinaryAdd £temporary3201 left £temporary3199
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$31:
	; Dereference £temporary3198 -> £temporary3201 £temporary3201 0

 strncmp$32:
	; IntegralToIntegral £temporary3203 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$33:
	; BinaryAdd £temporary3205 right £temporary3203
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$34:
	; Dereference £temporary3202 -> £temporary3205 £temporary3205 0

 strncmp$35:
	; SignedLessThanEqual 37 £temporary3198 -> £temporary3201 £temporary3202 -> £temporary3205
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
	; IntegralToIntegral £temporary3207 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary3207
	mov [rbp + 40], al

 strchr$2:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary3209 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; BinaryAdd £temporary3211 text £temporary3209
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary3208 -> £temporary3211 £temporary3211 0

 strchr$6:
	; Equal 18 £temporary3208 -> £temporary3211 0
	cmp byte [rsi], 0
	je strchr$18

 strchr$7:
	; IntegralToIntegral £temporary3215 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; BinaryAdd £temporary3217 text £temporary3215
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary3214 -> £temporary3217 £temporary3217 0

 strchr$10:
	; NotEqual 16 £temporary3214 -> £temporary3217 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$16

 strchr$11:
	; IntegralToIntegral £temporary3220 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; BinaryAdd £temporary3222 text £temporary3220
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary3219 -> £temporary3222 £temporary3222 0

 strchr$14:
	; Address £temporary3223 £temporary3219 -> £temporary3222

 strchr$15:
	; Return £temporary3223
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
	; IntegralToIntegral £temporary3224 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary3224
	mov [rbp + 48], al

 strrchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary3226 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; BinaryAdd £temporary3228 text £temporary3226
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary3225 -> £temporary3228 £temporary3228 0

 strrchr$7:
	; Equal 19 £temporary3225 -> £temporary3228 0
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary3232 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; BinaryAdd £temporary3234 text £temporary3232
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary3231 -> £temporary3234 £temporary3234 0

 strrchr$11:
	; NotEqual 17 £temporary3231 -> £temporary3234 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary3237 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; BinaryAdd £temporary3239 text £temporary3237
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary3236 -> £temporary3239 £temporary3239 0

 strrchr$15:
	; Address £temporary3240 £temporary3236 -> £temporary3239

 strrchr$16:
	; Assign result £temporary3240
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
	; IntegralToIntegral £temporary3242 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; BinaryAdd £temporary3244 mainString £temporary3242
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary3241 -> £temporary3244 £temporary3244 0

 strspn$4:
	; Equal 19 £temporary3241 -> £temporary3244 0
	cmp byte [rsi], 0
	je strspn$19

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary3248 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; BinaryAdd £temporary3250 mainString £temporary3248
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary3247 -> £temporary3250 £temporary3250 0

 strspn$10:
	; IntegralToIntegral £temporary3251 £temporary3247 -> £temporary3250
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter signedint £temporary3251 76
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
	; GetReturnValue £temporary3252

 strspn$15:
	; NotEqual 17 £temporary3252 0
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
	; IntegralToIntegral £temporary3255 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; BinaryAdd £temporary3257 mainString £temporary3255
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary3254 -> £temporary3257 £temporary3257 0

 strcspn$4:
	; Equal 19 £temporary3254 -> £temporary3257 0
	cmp byte [rsi], 0
	je strcspn$19

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary3261 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; BinaryAdd £temporary3263 mainString £temporary3261
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary3260 -> £temporary3263 £temporary3263 0

 strcspn$10:
	; IntegralToIntegral £temporary3264 £temporary3260 -> £temporary3263
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter signedint £temporary3264 76
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
	; GetReturnValue £temporary3265

 strcspn$15:
	; Equal 17 £temporary3265 0
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
	; IntegralToIntegral £temporary3268 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; BinaryAdd £temporary3270 mainString £temporary3268
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary3267 -> £temporary3270 £temporary3270 0

 strpbrk$4:
	; Equal 23 £temporary3267 -> £temporary3270 0
	cmp byte [rsi], 0
	je strpbrk$23

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary3274 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; BinaryAdd £temporary3276 mainString £temporary3274
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary3273 -> £temporary3276 £temporary3276 0

 strpbrk$10:
	; IntegralToIntegral £temporary3277 £temporary3273 -> £temporary3276
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter signedint £temporary3277 76
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
	; GetReturnValue £temporary3278

 strpbrk$15:
	; Equal 21 £temporary3278 0
	cmp rbx, 0
	je strpbrk$21

 strpbrk$16:
	; IntegralToIntegral £temporary3281 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; BinaryAdd £temporary3283 mainString £temporary3281
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary3280 -> £temporary3283 £temporary3283 0

 strpbrk$19:
	; Address £temporary3284 £temporary3280 -> £temporary3283

 strpbrk$20:
	; Return £temporary3284
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
	; IntegralToIntegral £temporary3286 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$2:
	; BinaryAdd £temporary3288 mainString £temporary3286
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$3:
	; Dereference £temporary3285 -> £temporary3288 £temporary3288 0

 strstr$4:
	; Equal 21 £temporary3285 -> £temporary3288 0
	cmp byte [rsi], 0
	je strstr$21

 strstr$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$6:
	; IntegralToIntegral £temporary3291 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$7:
	; BinaryAdd £temporary3292 mainString £temporary3291
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$8:
	; Parameter pointer £temporary3292 68
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
	; GetReturnValue £temporary3294

 strstr$13:
	; NotEqual 19 £temporary3294 0
	cmp ebx, 0
	jne strstr$19

 strstr$14:
	; IntegralToIntegral £temporary3297 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$15:
	; BinaryAdd £temporary3299 mainString £temporary3297
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$16:
	; Dereference £temporary3296 -> £temporary3299 £temporary3299 0

 strstr$17:
	; Address £temporary3300 £temporary3296 -> £temporary3299

 strstr$18:
	; Return £temporary3300
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
	; IntegralToIntegral £temporary3302 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; BinaryAdd £temporary3304 string £temporary3302
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary3301 -> £temporary3304 £temporary3304 0

 strlen$4:
	; Equal 7 £temporary3301 -> £temporary3304 0
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
	; GetReturnValue £temporary3307

 strerror$4:
	; Assign localeConvPtr £temporary3307
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; Dereference £temporary3309 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign £temporary3310 £temporary3309 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; Goto 10
	jmp strerror$10

 strerror$9:
	; Assign £temporary3310 0
	mov rax, 0

 strerror$10:
	; Assign messageList £temporary3310
	mov [rbp + 36], rax

 strerror$11:
	; Equal 14 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; Assign £temporary3312 messageList
	mov rax, [rbp + 36]

 strerror$13:
	; Goto 15
	jmp strerror$15

 strerror$14:
	; Assign £temporary3312 enMessageList
	mov rax, enMessageList

 strerror$15:
	; Assign messageList £temporary3312
	mov [rbp + 36], rax

 strerror$16:
	; IntegralToIntegral £temporary3314 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; UnsignedMultiply £temporary3315 £temporary3314 8
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; BinaryAdd £temporary3316 messageList £temporary3315
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; Dereference £temporary3313 -> £temporary3316 £temporary3316 0

 strerror$20:
	; Return £temporary3313 -> £temporary3316
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
	; Dereference £temporary3318 -> string string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 4 £temporary3318 -> string 0
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
	; IntegralToIntegral £temporary3321 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$6:
	; BinaryAdd £temporary3323 string £temporary3321
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$7:
	; Dereference £temporary3320 -> £temporary3323 £temporary3323 0

 strtok$8:
	; Equal 33 £temporary3320 -> £temporary3323 0
	cmp byte [rsi], 0
	je strtok$33

 strtok$9:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$10:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$11:
	; IntegralToIntegral £temporary3327 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$12:
	; BinaryAdd £temporary3329 string £temporary3327
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$13:
	; Dereference £temporary3326 -> £temporary3329 £temporary3329 0

 strtok$14:
	; IntegralToIntegral £temporary3330 £temporary3326 -> £temporary3329
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$15
	neg al
	neg eax

 strtok$15:
	; Parameter signedint £temporary3330 84
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
	; GetReturnValue £temporary3331

 strtok$19:
	; Equal 31 £temporary3331 0
	cmp rbx, 0
	je strtok$31

 strtok$20:
	; IntegralToIntegral £temporary3334 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$21:
	; BinaryAdd £temporary3336 string £temporary3334
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$22:
	; Dereference £temporary3333 -> £temporary3336 £temporary3336 0

 strtok$23:
	; Assign £temporary3333 -> £temporary3336 0
	mov byte [rsi], 0

 strtok$24:
	; BinaryAdd £temporary3337 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$25:
	; IntegralToIntegral £temporary3339 £temporary3337
	mov rbx, 4294967295
	and rax, rbx

 strtok$26:
	; BinaryAdd £temporary3341 string £temporary3339
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$27:
	; Dereference £temporary3338 -> £temporary3341 £temporary3341 0

 strtok$28:
	; Address £temporary3342 £temporary3338 -> £temporary3341

 strtok$29:
	; Assign token £temporary3342
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
	; IntegralToIntegral £temporary3344 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$34:
	; BinaryAdd £temporary3346 string £temporary3344
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$35:
	; Dereference £temporary3343 -> £temporary3346 £temporary3346 0

 strtok$36:
	; Address £temporary3347 £temporary3343 -> £temporary3346

 strtok$37:
	; Assign token £temporary3347
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
	; Dereference £temporary3349 -> token token 0
	mov rsi, [token]

 strtok$42:
	; NotEqual 44 £temporary3349 -> token 0
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
	; IntegralToIntegral £temporary3352 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$46:
	; BinaryAdd £temporary3354 token £temporary3352
	mov rsi, [token]
	add rsi, rax

 strtok$47:
	; Dereference £temporary3351 -> £temporary3354 £temporary3354 0

 strtok$48:
	; Equal 74 £temporary3351 -> £temporary3354 0
	cmp byte [rsi], 0
	je strtok$74

 strtok$49:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$50:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$51:
	; IntegralToIntegral £temporary3358 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$52:
	; BinaryAdd £temporary3360 token £temporary3358
	mov rsi, [token]
	add rsi, rax

 strtok$53:
	; Dereference £temporary3357 -> £temporary3360 £temporary3360 0

 strtok$54:
	; IntegralToIntegral £temporary3361 £temporary3357 -> £temporary3360
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$55
	neg al
	neg eax

 strtok$55:
	; Parameter signedint £temporary3361 84
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
	; GetReturnValue £temporary3362

 strtok$59:
	; Equal 72 £temporary3362 0
	cmp rbx, 0
	je strtok$72

 strtok$60:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$61:
	; IntegralToIntegral £temporary3365 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$62:
	; BinaryAdd £temporary3367 token £temporary3365
	mov rsi, [token]
	add rsi, rax

 strtok$63:
	; Dereference £temporary3364 -> £temporary3367 £temporary3367 0

 strtok$64:
	; Assign £temporary3364 -> £temporary3367 0
	mov byte [rsi], 0

 strtok$65:
	; BinaryAdd £temporary3368 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$66:
	; IntegralToIntegral £temporary3370 £temporary3368
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; BinaryAdd £temporary3372 token £temporary3370
	mov rsi, [token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3369 -> £temporary3372 £temporary3372 0

 strtok$69:
	; Address £temporary3373 £temporary3369 -> £temporary3372

 strtok$70:
	; Assign token £temporary3373
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
	; IntegralToIntegral £temporary3375 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$76:
	; BinaryAdd £temporary3377 token £temporary3375
	mov rsi, [token]
	add rsi, rax

 strtok$77:
	; Dereference £temporary3374 -> £temporary3377 £temporary3377 0

 strtok$78:
	; Address £temporary3378 £temporary3374 -> £temporary3377

 strtok$79:
	; Assign token £temporary3378
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
	; IntegralToIntegral £temporary3379 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3379
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3380 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3380
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
	; IntegralToIntegral £temporary3384 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary3386 charTarget £temporary3384
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3383 -> £temporary3386 £temporary3386 0

 memcpy$9:
	; IntegralToIntegral £temporary3388 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary3390 charSource £temporary3388
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3387 -> £temporary3390 £temporary3390 0

 memcpy$12:
	; Assign £temporary3383 -> £temporary3386 £temporary3387 -> £temporary3390
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Goto 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3391 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; Return £temporary3391
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3392 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3392
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3393 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3393
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
	; IntegralToIntegral £temporary3399 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary3401 charTarget £temporary3399
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3398 -> £temporary3401 £temporary3401 0

 memmove$10:
	; IntegralToIntegral £temporary3403 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary3405 charSource £temporary3403
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3402 -> £temporary3405 £temporary3405 0

 memmove$13:
	; Assign £temporary3398 -> £temporary3401 £temporary3402 -> £temporary3405
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
	; IntegralToIntegral £temporary3409 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary3411 charTarget £temporary3409
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3408 -> £temporary3411 £temporary3411 0

 memmove$21:
	; IntegralToIntegral £temporary3413 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary3415 charSource £temporary3413
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3412 -> £temporary3415 £temporary3415 0

 memmove$24:
	; Assign £temporary3408 -> £temporary3411 £temporary3412 -> £temporary3415
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Goto 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3416 target
	mov rbx, [rbp + 24]

 memmove$28:
	; Return £temporary3416
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3417 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3417
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3418 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3418
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
	; IntegralToIntegral £temporary3422 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary3424 charLeft £temporary3422
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3421 -> £temporary3424 £temporary3424 0

 memcmp$9:
	; IntegralToIntegral £temporary3426 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary3428 charRight £temporary3426
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3425 -> £temporary3428 £temporary3428 0

 memcmp$12:
	; SignedGreaterThanEqual 14 £temporary3421 -> £temporary3424 £temporary3425 -> £temporary3428
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
	; IntegralToIntegral £temporary3431 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; BinaryAdd £temporary3433 charLeft £temporary3431
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; Dereference £temporary3430 -> £temporary3433 £temporary3433 0

 memcmp$17:
	; IntegralToIntegral £temporary3435 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; BinaryAdd £temporary3437 charRight £temporary3435
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; Dereference £temporary3434 -> £temporary3437 £temporary3437 0

 memcmp$20:
	; SignedLessThanEqual 22 £temporary3430 -> £temporary3433 £temporary3434 -> £temporary3437
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
	; IntegralToIntegral £temporary3439 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3439
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3440 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3440
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
	; IntegralToIntegral £temporary3444 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; BinaryAdd £temporary3446 charBlock £temporary3444
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3443 -> £temporary3446 £temporary3446 0

 memchr$9:
	; NotEqual 16 £temporary3443 -> £temporary3446 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$16

 memchr$10:
	; IntegralToIntegral £temporary3449 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; BinaryAdd £temporary3451 charBlock £temporary3449
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3448 -> £temporary3451 £temporary3451 0

 memchr$13:
	; Address £temporary3452 £temporary3448 -> £temporary3451

 memchr$14:
	; IntegralToIntegral £temporary3453 £temporary3452

 memchr$15:
	; Return £temporary3453
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
	; IntegralToIntegral £temporary3454 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3454
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3455 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3455
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
	; IntegralToIntegral £temporary3459 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary3461 charBlock £temporary3459
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3458 -> £temporary3461 £temporary3461 0

 memset$9:
	; Assign £temporary3458 -> £temporary3461 c
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
