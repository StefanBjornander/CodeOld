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
	; IntegralToIntegral £temporary3063 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; BinaryAdd £temporary3065 source £temporary3063
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary3062 -> £temporary3065 £temporary3065 0

 strcpy$4:
	; Equal 14 £temporary3062 -> £temporary3065 0
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary3069 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; BinaryAdd £temporary3071 target £temporary3069
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary3068 -> £temporary3071 £temporary3071 0

 strcpy$8:
	; IntegralToIntegral £temporary3073 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; BinaryAdd £temporary3075 source £temporary3073
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary3072 -> £temporary3075 £temporary3075 0

 strcpy$11:
	; Assign £temporary3068 -> £temporary3071 £temporary3072 -> £temporary3075
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$13:
	; Goto 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary3077 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; BinaryAdd £temporary3079 target £temporary3077
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary3076 -> £temporary3079 £temporary3079 0

 strcpy$17:
	; Assign £temporary3076 -> £temporary3079 0
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
	; IntegralToIntegral £temporary3082 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; BinaryAdd £temporary3084 source £temporary3082
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary3081 -> £temporary3084 £temporary3084 0

 strncpy$5:
	; Equal 15 £temporary3081 -> £temporary3084 0
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary3089 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; BinaryAdd £temporary3091 target £temporary3089
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary3088 -> £temporary3091 £temporary3091 0

 strncpy$9:
	; IntegralToIntegral £temporary3093 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; BinaryAdd £temporary3095 source £temporary3093
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary3092 -> £temporary3095 £temporary3095 0

 strncpy$12:
	; Assign £temporary3088 -> £temporary3091 £temporary3092 -> £temporary3095
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
	; IntegralToIntegral £temporary3099 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; BinaryAdd £temporary3101 target £temporary3099
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary3098 -> £temporary3101 £temporary3101 0

 strncpy$19:
	; Assign £temporary3098 -> £temporary3101 0
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
	; GetReturnValue £temporary3102

 strcat$5:
	; Assign targetLength £temporary3102
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary3104 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; BinaryAdd £temporary3106 source £temporary3104
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary3103 -> £temporary3106 £temporary3106 0

 strcat$10:
	; Equal 21 £temporary3103 -> £temporary3106 0
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; BinaryAdd £temporary3109 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary3111 £temporary3109
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; BinaryAdd £temporary3113 target £temporary3111
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary3110 -> £temporary3113 £temporary3113 0

 strcat$15:
	; IntegralToIntegral £temporary3115 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; BinaryAdd £temporary3117 source £temporary3115
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary3114 -> £temporary3117 £temporary3117 0

 strcat$18:
	; Assign £temporary3110 -> £temporary3113 £temporary3114 -> £temporary3117
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$20:
	; Goto 7
	jmp strcat$7

 strcat$21:
	; BinaryAdd £temporary3118 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary3120 £temporary3118
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; BinaryAdd £temporary3122 target £temporary3120
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary3119 -> £temporary3122 £temporary3122 0

 strcat$25:
	; Assign £temporary3119 -> £temporary3122 0
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
	; GetReturnValue £temporary3123

 strncat$5:
	; Assign targetLength £temporary3123
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$7:
	; BinarySubtract £temporary3124 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; SignedGreaterThanEqual 23 index £temporary3124
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary3127 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; BinaryAdd £temporary3129 source £temporary3127
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary3126 -> £temporary3129 £temporary3129 0

 strncat$12:
	; Equal 23 £temporary3126 -> £temporary3129 0
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; BinaryAdd £temporary3133 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary3135 £temporary3133
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; BinaryAdd £temporary3137 target £temporary3135
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary3134 -> £temporary3137 £temporary3137 0

 strncat$17:
	; IntegralToIntegral £temporary3139 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; BinaryAdd £temporary3141 source £temporary3139
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary3138 -> £temporary3141 £temporary3141 0

 strncat$20:
	; Assign £temporary3134 -> £temporary3137 £temporary3138 -> £temporary3141
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$22:
	; Goto 7
	jmp strncat$7

 strncat$23:
	; BinaryAdd £temporary3142 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; BinarySubtract £temporary3143 £temporary3142 1
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary3145 £temporary3143
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; BinaryAdd £temporary3147 target £temporary3145
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary3144 -> £temporary3147 £temporary3147 0

 strncat$28:
	; Assign £temporary3144 -> £temporary3147 0
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
	; IntegralToIntegral £temporary3150 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; BinaryAdd £temporary3152 left £temporary3150
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary3149 -> £temporary3152 £temporary3152 0

 strcmp$4:
	; NotEqual 11 £temporary3149 -> £temporary3152 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$5:
	; IntegralToIntegral £temporary3155 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; BinaryAdd £temporary3157 right £temporary3155
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary3154 -> £temporary3157 £temporary3157 0

 strcmp$8:
	; NotEqual 11 £temporary3154 -> £temporary3157 0
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
	; IntegralToIntegral £temporary3161 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; BinaryAdd £temporary3163 left £temporary3161
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary3160 -> £temporary3163 £temporary3163 0

 strcmp$14:
	; NotEqual 17 £temporary3160 -> £temporary3163 0
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
	; IntegralToIntegral £temporary3166 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$18:
	; BinaryAdd £temporary3168 right £temporary3166
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$19:
	; Dereference £temporary3165 -> £temporary3168 £temporary3168 0

 strcmp$20:
	; NotEqual 23 £temporary3165 -> £temporary3168 0
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
	; IntegralToIntegral £temporary3171 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; BinaryAdd £temporary3173 left £temporary3171
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$25:
	; Dereference £temporary3170 -> £temporary3173 £temporary3173 0

 strcmp$26:
	; IntegralToIntegral £temporary3175 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$27:
	; BinaryAdd £temporary3177 right £temporary3175
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$28:
	; Dereference £temporary3174 -> £temporary3177 £temporary3177 0

 strcmp$29:
	; SignedGreaterThanEqual 32 £temporary3170 -> £temporary3173 £temporary3174 -> £temporary3177
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
	; IntegralToIntegral £temporary3180 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; BinaryAdd £temporary3182 left £temporary3180
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$34:
	; Dereference £temporary3179 -> £temporary3182 £temporary3182 0

 strcmp$35:
	; IntegralToIntegral £temporary3184 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$36:
	; BinaryAdd £temporary3186 right £temporary3184
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$37:
	; Dereference £temporary3183 -> £temporary3186 £temporary3186 0

 strcmp$38:
	; SignedLessThanEqual 41 £temporary3179 -> £temporary3182 £temporary3183 -> £temporary3186
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
	; IntegralToIntegral £temporary3192 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; BinaryAdd £temporary3194 left £temporary3192
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary3191 -> £temporary3194 £temporary3194 0

 strncmp$5:
	; NotEqual 12 £temporary3191 -> £temporary3194 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$6:
	; IntegralToIntegral £temporary3197 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; BinaryAdd £temporary3199 right £temporary3197
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary3196 -> £temporary3199 £temporary3199 0

 strncmp$9:
	; NotEqual 12 £temporary3196 -> £temporary3199 0
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
	; IntegralToIntegral £temporary3203 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; BinaryAdd £temporary3205 left £temporary3203
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary3202 -> £temporary3205 £temporary3205 0

 strncmp$15:
	; NotEqual 18 £temporary3202 -> £temporary3205 0
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
	; IntegralToIntegral £temporary3208 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$19:
	; BinaryAdd £temporary3210 right £temporary3208
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$20:
	; Dereference £temporary3207 -> £temporary3210 £temporary3210 0

 strncmp$21:
	; NotEqual 24 £temporary3207 -> £temporary3210 0
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
	; IntegralToIntegral £temporary3213 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; BinaryAdd £temporary3215 left £temporary3213
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$26:
	; Dereference £temporary3212 -> £temporary3215 £temporary3215 0

 strncmp$27:
	; IntegralToIntegral £temporary3217 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$28:
	; BinaryAdd £temporary3219 right £temporary3217
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$29:
	; Dereference £temporary3216 -> £temporary3219 £temporary3219 0

 strncmp$30:
	; SignedGreaterThanEqual 33 £temporary3212 -> £temporary3215 £temporary3216 -> £temporary3219
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
	; IntegralToIntegral £temporary3222 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; BinaryAdd £temporary3224 left £temporary3222
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$35:
	; Dereference £temporary3221 -> £temporary3224 £temporary3224 0

 strncmp$36:
	; IntegralToIntegral £temporary3226 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$37:
	; BinaryAdd £temporary3228 right £temporary3226
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$38:
	; Dereference £temporary3225 -> £temporary3228 £temporary3228 0

 strncmp$39:
	; SignedLessThanEqual 42 £temporary3221 -> £temporary3224 £temporary3225 -> £temporary3228
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
	; IntegralToIntegral £temporary3230 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary3230
	mov [rbp + 40], al

 strchr$2:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary3232 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; BinaryAdd £temporary3234 text £temporary3232
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary3231 -> £temporary3234 £temporary3234 0

 strchr$6:
	; Equal 19 £temporary3231 -> £temporary3234 0
	cmp byte [rsi], 0
	je strchr$19

 strchr$7:
	; IntegralToIntegral £temporary3238 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; BinaryAdd £temporary3240 text £temporary3238
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary3237 -> £temporary3240 £temporary3240 0

 strchr$10:
	; NotEqual 17 £temporary3237 -> £temporary3240 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$11:
	; IntegralToIntegral £temporary3243 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; BinaryAdd £temporary3245 text £temporary3243
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary3242 -> £temporary3245 £temporary3245 0

 strchr$14:
	; Address £temporary3246 £temporary3242 -> £temporary3245

 strchr$15:
	; SetReturnValue

 strchr$16:
	; Return £temporary3246
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
	; IntegralToIntegral £temporary3247 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary3247
	mov [rbp + 48], al

 strrchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary3249 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; BinaryAdd £temporary3251 text £temporary3249
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary3248 -> £temporary3251 £temporary3251 0

 strrchr$7:
	; Equal 19 £temporary3248 -> £temporary3251 0
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary3255 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; BinaryAdd £temporary3257 text £temporary3255
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary3254 -> £temporary3257 £temporary3257 0

 strrchr$11:
	; NotEqual 17 £temporary3254 -> £temporary3257 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary3260 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; BinaryAdd £temporary3262 text £temporary3260
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary3259 -> £temporary3262 £temporary3262 0

 strrchr$15:
	; Address £temporary3263 £temporary3259 -> £temporary3262

 strrchr$16:
	; Assign result £temporary3263
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
	; IntegralToIntegral £temporary3265 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; BinaryAdd £temporary3267 mainString £temporary3265
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary3264 -> £temporary3267 £temporary3267 0

 strspn$4:
	; Equal 20 £temporary3264 -> £temporary3267 0
	cmp byte [rsi], 0
	je strspn$20

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary3271 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; BinaryAdd £temporary3273 mainString £temporary3271
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary3270 -> £temporary3273 £temporary3273 0

 strspn$10:
	; IntegralToIntegral £temporary3274 £temporary3270 -> £temporary3273
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter 76 signedint £temporary3274
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
	; GetReturnValue £temporary3275

 strspn$15:
	; NotEqual 18 £temporary3275 0
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
	; IntegralToIntegral £temporary3278 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; BinaryAdd £temporary3280 mainString £temporary3278
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary3277 -> £temporary3280 £temporary3280 0

 strcspn$4:
	; Equal 20 £temporary3277 -> £temporary3280 0
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary3284 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; BinaryAdd £temporary3286 mainString £temporary3284
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary3283 -> £temporary3286 £temporary3286 0

 strcspn$10:
	; IntegralToIntegral £temporary3287 £temporary3283 -> £temporary3286
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter 76 signedint £temporary3287
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
	; GetReturnValue £temporary3288

 strcspn$15:
	; Equal 18 £temporary3288 0
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
	; IntegralToIntegral £temporary3291 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; BinaryAdd £temporary3293 mainString £temporary3291
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary3290 -> £temporary3293 £temporary3293 0

 strpbrk$4:
	; Equal 24 £temporary3290 -> £temporary3293 0
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary3297 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; BinaryAdd £temporary3299 mainString £temporary3297
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary3296 -> £temporary3299 £temporary3299 0

 strpbrk$10:
	; IntegralToIntegral £temporary3300 £temporary3296 -> £temporary3299
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter 76 signedint £temporary3300
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
	; GetReturnValue £temporary3301

 strpbrk$15:
	; Equal 22 £temporary3301 0
	cmp rbx, 0
	je strpbrk$22

 strpbrk$16:
	; IntegralToIntegral £temporary3304 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; BinaryAdd £temporary3306 mainString £temporary3304
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary3303 -> £temporary3306 £temporary3306 0

 strpbrk$19:
	; Address £temporary3307 £temporary3303 -> £temporary3306

 strpbrk$20:
	; SetReturnValue

 strpbrk$21:
	; Return £temporary3307
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
	; IntegralToIntegral £temporary3309 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$2:
	; BinaryAdd £temporary3311 mainString £temporary3309
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$3:
	; Dereference £temporary3308 -> £temporary3311 £temporary3311 0

 strstr$4:
	; Equal 22 £temporary3308 -> £temporary3311 0
	cmp byte [rsi], 0
	je strstr$22

 strstr$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$6:
	; IntegralToIntegral £temporary3314 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$7:
	; BinaryAdd £temporary3315 mainString £temporary3314
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$8:
	; Parameter 68 pointer £temporary3315
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
	; GetReturnValue £temporary3317

 strstr$13:
	; NotEqual 20 £temporary3317 0
	cmp ebx, 0
	jne strstr$20

 strstr$14:
	; IntegralToIntegral £temporary3320 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$15:
	; BinaryAdd £temporary3322 mainString £temporary3320
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$16:
	; Dereference £temporary3319 -> £temporary3322 £temporary3322 0

 strstr$17:
	; Address £temporary3323 £temporary3319 -> £temporary3322

 strstr$18:
	; SetReturnValue

 strstr$19:
	; Return £temporary3323
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
	; IntegralToIntegral £temporary3325 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; BinaryAdd £temporary3327 string £temporary3325
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary3324 -> £temporary3327 £temporary3327 0

 strlen$4:
	; Equal 7 £temporary3324 -> £temporary3327 0
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

int8$8#:
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
	; GetReturnValue £temporary3330

 strerror$4:
	; Assign localeConvPtr £temporary3330
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; Dereference £temporary3332 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign £temporary3333 £temporary3332 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; Goto 10
	jmp strerror$10

 strerror$9:
	; Assign £temporary3333 0
	mov rax, 0

 strerror$10:
	; Assign messageList £temporary3333
	mov [rbp + 36], rax

 strerror$11:
	; Equal 14 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; Assign £temporary3335 messageList
	mov rax, [rbp + 36]

 strerror$13:
	; Goto 15
	jmp strerror$15

 strerror$14:
	; Assign £temporary3335 enMessageList
	mov rax, enMessageList

 strerror$15:
	; Assign messageList £temporary3335
	mov [rbp + 36], rax

 strerror$16:
	; IntegralToIntegral £temporary3337 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; UnsignedMultiply £temporary3338 £temporary3337 8
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; BinaryAdd £temporary3339 messageList £temporary3338
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; Dereference £temporary3336 -> £temporary3339 £temporary3339 0

 strerror$20:
	; SetReturnValue

 strerror$21:
	; Return £temporary3336 -> £temporary3339
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
	; Dereference £temporary3341 -> string string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 5 £temporary3341 -> string 0
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
	; IntegralToIntegral £temporary3344 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; BinaryAdd £temporary3346 string £temporary3344
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary3343 -> £temporary3346 £temporary3346 0

 strtok$9:
	; Equal 35 £temporary3343 -> £temporary3346 0
	cmp byte [rsi], 0
	je strtok$35

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary3350 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; BinaryAdd £temporary3352 string £temporary3350
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary3349 -> £temporary3352 £temporary3352 0

 strtok$15:
	; IntegralToIntegral £temporary3353 £temporary3349 -> £temporary3352
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter 84 signedint £temporary3353
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
	; GetReturnValue £temporary3354

 strtok$20:
	; Equal 33 £temporary3354 0
	cmp rbx, 0
	je strtok$33

 strtok$21:
	; IntegralToIntegral £temporary3357 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; BinaryAdd £temporary3359 string £temporary3357
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary3356 -> £temporary3359 £temporary3359 0

 strtok$24:
	; Assign £temporary3356 -> £temporary3359 0
	mov byte [rsi], 0

 strtok$25:
	; BinaryAdd £temporary3360 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary3362 £temporary3360
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; BinaryAdd £temporary3364 string £temporary3362
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary3361 -> £temporary3364 £temporary3364 0

 strtok$29:
	; Address £temporary3365 £temporary3361 -> £temporary3364

 strtok$30:
	; Assign token £temporary3365
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
	; IntegralToIntegral £temporary3367 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$36:
	; BinaryAdd £temporary3369 string £temporary3367
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$37:
	; Dereference £temporary3366 -> £temporary3369 £temporary3369 0

 strtok$38:
	; Address £temporary3370 £temporary3366 -> £temporary3369

 strtok$39:
	; Assign token £temporary3370
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
	; Dereference £temporary3372 -> token token 0
	mov rsi, [token]

 strtok$46:
	; NotEqual 49 £temporary3372 -> token 0
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
	; IntegralToIntegral £temporary3375 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$51:
	; BinaryAdd £temporary3377 token £temporary3375
	mov rsi, [token]
	add rsi, rax

 strtok$52:
	; Dereference £temporary3374 -> £temporary3377 £temporary3377 0

 strtok$53:
	; Equal 80 £temporary3374 -> £temporary3377 0
	cmp byte [rsi], 0
	je strtok$80

 strtok$54:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$55:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$56:
	; IntegralToIntegral £temporary3381 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$57:
	; BinaryAdd £temporary3383 token £temporary3381
	mov rsi, [token]
	add rsi, rax

 strtok$58:
	; Dereference £temporary3380 -> £temporary3383 £temporary3383 0

 strtok$59:
	; IntegralToIntegral £temporary3384 £temporary3380 -> £temporary3383
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$60
	neg al
	neg eax

 strtok$60:
	; Parameter 84 signedint £temporary3384
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
	; GetReturnValue £temporary3385

 strtok$64:
	; Equal 78 £temporary3385 0
	cmp rbx, 0
	je strtok$78

 strtok$65:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$66:
	; IntegralToIntegral £temporary3388 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; BinaryAdd £temporary3390 token £temporary3388
	mov rsi, [token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3387 -> £temporary3390 £temporary3390 0

 strtok$69:
	; Assign £temporary3387 -> £temporary3390 0
	mov byte [rsi], 0

 strtok$70:
	; BinaryAdd £temporary3391 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$71:
	; IntegralToIntegral £temporary3393 £temporary3391
	mov rbx, 4294967295
	and rax, rbx

 strtok$72:
	; BinaryAdd £temporary3395 token £temporary3393
	mov rsi, [token]
	add rsi, rax

 strtok$73:
	; Dereference £temporary3392 -> £temporary3395 £temporary3395 0

 strtok$74:
	; Address £temporary3396 £temporary3392 -> £temporary3395

 strtok$75:
	; Assign token £temporary3396
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
	; IntegralToIntegral £temporary3398 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$82:
	; BinaryAdd £temporary3400 token £temporary3398
	mov rsi, [token]
	add rsi, rax

 strtok$83:
	; Dereference £temporary3397 -> £temporary3400 £temporary3400 0

 strtok$84:
	; Address £temporary3401 £temporary3397 -> £temporary3400

 strtok$85:
	; Assign token £temporary3401
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
	; IntegralToIntegral £temporary3402 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3402
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3403 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3403
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
	; IntegralToIntegral £temporary3407 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary3409 charTarget £temporary3407
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3406 -> £temporary3409 £temporary3409 0

 memcpy$9:
	; IntegralToIntegral £temporary3411 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary3413 charSource £temporary3411
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3410 -> £temporary3413 £temporary3413 0

 memcpy$12:
	; Assign £temporary3406 -> £temporary3409 £temporary3410 -> £temporary3413
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Goto 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3414 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; SetReturnValue

 memcpy$17:
	; Return £temporary3414
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$18:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3415 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3415
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3416 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3416
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
	; IntegralToIntegral £temporary3422 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary3424 charTarget £temporary3422
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3421 -> £temporary3424 £temporary3424 0

 memmove$10:
	; IntegralToIntegral £temporary3426 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary3428 charSource £temporary3426
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3425 -> £temporary3428 £temporary3428 0

 memmove$13:
	; Assign £temporary3421 -> £temporary3424 £temporary3425 -> £temporary3428
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
	; IntegralToIntegral £temporary3432 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary3434 charTarget £temporary3432
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3431 -> £temporary3434 £temporary3434 0

 memmove$21:
	; IntegralToIntegral £temporary3436 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary3438 charSource £temporary3436
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3435 -> £temporary3438 £temporary3438 0

 memmove$24:
	; Assign £temporary3431 -> £temporary3434 £temporary3435 -> £temporary3438
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Goto 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3439 target
	mov rbx, [rbp + 24]

 memmove$28:
	; SetReturnValue

 memmove$29:
	; Return £temporary3439
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$30:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3440 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3440
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3441 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3441
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
	; IntegralToIntegral £temporary3445 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary3447 charLeft £temporary3445
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3444 -> £temporary3447 £temporary3447 0

 memcmp$9:
	; IntegralToIntegral £temporary3449 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary3451 charRight £temporary3449
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3448 -> £temporary3451 £temporary3451 0

 memcmp$12:
	; SignedGreaterThanEqual 15 £temporary3444 -> £temporary3447 £temporary3448 -> £temporary3451
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
	; IntegralToIntegral £temporary3454 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$16:
	; BinaryAdd £temporary3456 charLeft £temporary3454
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$17:
	; Dereference £temporary3453 -> £temporary3456 £temporary3456 0

 memcmp$18:
	; IntegralToIntegral £temporary3458 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$19:
	; BinaryAdd £temporary3460 charRight £temporary3458
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$20:
	; Dereference £temporary3457 -> £temporary3460 £temporary3460 0

 memcmp$21:
	; SignedLessThanEqual 24 £temporary3453 -> £temporary3456 £temporary3457 -> £temporary3460
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
	; IntegralToIntegral £temporary3462 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3462
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3463 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3463
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
	; IntegralToIntegral £temporary3467 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; BinaryAdd £temporary3469 charBlock £temporary3467
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3466 -> £temporary3469 £temporary3469 0

 memchr$9:
	; NotEqual 17 £temporary3466 -> £temporary3469 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$10:
	; IntegralToIntegral £temporary3472 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; BinaryAdd £temporary3474 charBlock £temporary3472
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3471 -> £temporary3474 £temporary3474 0

 memchr$13:
	; Address £temporary3475 £temporary3471 -> £temporary3474

 memchr$14:
	; IntegralToIntegral £temporary3476 £temporary3475

 memchr$15:
	; SetReturnValue

 memchr$16:
	; Return £temporary3476
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
	; IntegralToIntegral £temporary3477 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3477
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3478 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3478
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
	; IntegralToIntegral £temporary3482 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary3484 charBlock £temporary3482
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3481 -> £temporary3484 £temporary3484 0

 memset$9:
	; Assign £temporary3481 -> £temporary3484 c
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
