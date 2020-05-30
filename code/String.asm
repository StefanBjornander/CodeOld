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
section .text

strcpy:	; empty

strcpy$1:	; index = int4$0#
	mov dword [rbp + 40], 0

strcpy$2:	; £temporary3181 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$3:	; £temporary3183 = source + £temporary3181
	mov rsi, [rbp + 32]
	add rsi, rax

strcpy$4:	; £temporary3180 -> £temporary3183 = *£temporary3183

strcpy$5:	; if £temporary3180 -> £temporary3183 == int1$0# goto 15
	cmp byte [rsi], 0
	je strcpy$15

strcpy$6:	; £temporary3187 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$7:	; £temporary3189 = target + £temporary3187
	mov rsi, [rbp + 24]
	add rsi, rax

strcpy$8:	; £temporary3186 -> £temporary3189 = *£temporary3189

strcpy$9:	; £temporary3191 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$10:	; £temporary3193 = source + £temporary3191
	mov rdi, [rbp + 32]
	add rdi, rax

strcpy$11:	; £temporary3190 -> £temporary3193 = *£temporary3193

strcpy$12:	; £temporary3186 -> £temporary3189 = £temporary3190 -> £temporary3193
	mov al, [rdi]
	mov [rsi], al

strcpy$13:	; ++index
	inc dword [rbp + 40]

strcpy$14:	; goto 2
	jmp strcpy$2

strcpy$15:	; £temporary3195 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$16:	; £temporary3197 = target + £temporary3195
	mov rsi, [rbp + 24]
	add rsi, rax

strcpy$17:	; £temporary3194 -> £temporary3197 = *£temporary3197

strcpy$18:	; £temporary3194 -> £temporary3197 = int1$0#
	mov byte [rsi], 0

strcpy$19:	; return_value = target
	mov rbx, [rbp + 24]

strcpy$20:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcpy$21:	; function end strcpy

strncpy:	; empty

strncpy$1:	; index = int4$0#
	mov dword [rbp + 44], 0

strncpy$2:	; if index >= size goto 16
	mov eax, [rbp + 44]
	cmp eax, [rbp + 40]
	jge strncpy$16

strncpy$3:	; £temporary3200 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$4:	; £temporary3202 = source + £temporary3200
	mov rsi, [rbp + 32]
	add rsi, rax

strncpy$5:	; £temporary3199 -> £temporary3202 = *£temporary3202

strncpy$6:	; if £temporary3199 -> £temporary3202 == int1$0# goto 16
	cmp byte [rsi], 0
	je strncpy$16

strncpy$7:	; £temporary3207 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$8:	; £temporary3209 = target + £temporary3207
	mov rsi, [rbp + 24]
	add rsi, rax

strncpy$9:	; £temporary3206 -> £temporary3209 = *£temporary3209

strncpy$10:	; £temporary3211 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$11:	; £temporary3213 = source + £temporary3211
	mov rdi, [rbp + 32]
	add rdi, rax

strncpy$12:	; £temporary3210 -> £temporary3213 = *£temporary3213

strncpy$13:	; £temporary3206 -> £temporary3209 = £temporary3210 -> £temporary3213
	mov al, [rdi]
	mov [rsi], al

strncpy$14:	; ++index
	inc dword [rbp + 44]

strncpy$15:	; goto 2
	jmp strncpy$2

strncpy$16:	; if index >= size goto 23
	mov eax, [rbp + 44]
	cmp eax, [rbp + 40]
	jge strncpy$23

strncpy$17:	; £temporary3217 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$18:	; £temporary3219 = target + £temporary3217
	mov rsi, [rbp + 24]
	add rsi, rax

strncpy$19:	; £temporary3216 -> £temporary3219 = *£temporary3219

strncpy$20:	; £temporary3216 -> £temporary3219 = int1$0#
	mov byte [rsi], 0

strncpy$21:	; ++index
	inc dword [rbp + 44]

strncpy$22:	; goto 16
	jmp strncpy$16

strncpy$23:	; return_value = target
	mov rbx, [rbp + 24]

strncpy$24:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncpy$25:	; function end strncpy

strcat:	; empty

strcat$1:	; call header integral zero 0 stack zero 0

strcat$2:	; parameter target, offset 68
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

strcat$3:	; call function noellipse-noellipse strlen
	mov qword [rbp + 44], strcat$4
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strlen

strcat$4:	; post call

strcat$5:	; £temporary3220 = return_value

strcat$6:	; targetLength = £temporary3220
	mov [rbp + 44], ebx

strcat$7:	; index = int4$0#
	mov dword [rbp + 40], 0

strcat$8:	; £temporary3222 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcat$9:	; £temporary3224 = source + £temporary3222
	mov rsi, [rbp + 32]
	add rsi, rax

strcat$10:	; £temporary3221 -> £temporary3224 = *£temporary3224

strcat$11:	; if £temporary3221 -> £temporary3224 == int1$0# goto 22
	cmp byte [rsi], 0
	je strcat$22

strcat$12:	; £temporary3227 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

strcat$13:	; £temporary3229 = int_to_int £temporary3227 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strcat$14:	; £temporary3231 = target + £temporary3229
	mov rsi, [rbp + 24]
	add rsi, rax

strcat$15:	; £temporary3228 -> £temporary3231 = *£temporary3231

strcat$16:	; £temporary3233 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcat$17:	; £temporary3235 = source + £temporary3233
	mov rdi, [rbp + 32]
	add rdi, rax

strcat$18:	; £temporary3232 -> £temporary3235 = *£temporary3235

strcat$19:	; £temporary3228 -> £temporary3231 = £temporary3232 -> £temporary3235
	mov al, [rdi]
	mov [rsi], al

strcat$20:	; ++index
	inc dword [rbp + 40]

strcat$21:	; goto 8
	jmp strcat$8

strcat$22:	; £temporary3236 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

strcat$23:	; £temporary3238 = int_to_int £temporary3236 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strcat$24:	; £temporary3240 = target + £temporary3238
	mov rsi, [rbp + 24]
	add rsi, rax

strcat$25:	; £temporary3237 -> £temporary3240 = *£temporary3240

strcat$26:	; £temporary3237 -> £temporary3240 = int1$0#
	mov byte [rsi], 0

strcat$27:	; return_value = target
	mov rbx, [rbp + 24]

strcat$28:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcat$29:	; function end strcat

strncat:	; empty

strncat$1:	; call header integral zero 0 stack zero 0

strncat$2:	; parameter target, offset 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

strncat$3:	; call function noellipse-noellipse strlen
	mov qword [rbp + 48], strncat$4
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strlen

strncat$4:	; post call

strncat$5:	; £temporary3242 = return_value

strncat$6:	; targetLength = £temporary3242
	mov [rbp + 48], ebx

strncat$7:	; index = int4$0#
	mov dword [rbp + 44], 0

strncat$8:	; £temporary3243 = size - int4$1#
	mov eax, [rbp + 40]
	dec eax

strncat$9:	; if index >= £temporary3243 goto 24
	cmp [rbp + 44], eax
	jge strncat$24

strncat$10:	; £temporary3246 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncat$11:	; £temporary3248 = source + £temporary3246
	mov rsi, [rbp + 32]
	add rsi, rax

strncat$12:	; £temporary3245 -> £temporary3248 = *£temporary3248

strncat$13:	; if £temporary3245 -> £temporary3248 == int1$0# goto 24
	cmp byte [rsi], 0
	je strncat$24

strncat$14:	; £temporary3252 = targetLength + index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

strncat$15:	; £temporary3254 = int_to_int £temporary3252 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strncat$16:	; £temporary3256 = target + £temporary3254
	mov rsi, [rbp + 24]
	add rsi, rax

strncat$17:	; £temporary3253 -> £temporary3256 = *£temporary3256

strncat$18:	; £temporary3258 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncat$19:	; £temporary3260 = source + £temporary3258
	mov rdi, [rbp + 32]
	add rdi, rax

strncat$20:	; £temporary3257 -> £temporary3260 = *£temporary3260

strncat$21:	; £temporary3253 -> £temporary3256 = £temporary3257 -> £temporary3260
	mov al, [rdi]
	mov [rsi], al

strncat$22:	; ++index
	inc dword [rbp + 44]

strncat$23:	; goto 8
	jmp strncat$8

strncat$24:	; £temporary3261 = targetLength + size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

strncat$25:	; £temporary3262 = £temporary3261 - int4$1#
	dec eax

strncat$26:	; £temporary3264 = int_to_int £temporary3262 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strncat$27:	; £temporary3266 = target + £temporary3264
	mov rsi, [rbp + 24]
	add rsi, rax

strncat$28:	; £temporary3263 -> £temporary3266 = *£temporary3266

strncat$29:	; £temporary3263 -> £temporary3266 = int1$0#
	mov byte [rsi], 0

strncat$30:	; return_value = target
	mov rbx, [rbp + 24]

strncat$31:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncat$32:	; function end strncat

strcmp:	; empty

strcmp$1:	; index = int4$0#
	mov dword [rbp + 40], 0

strcmp$2:	; £temporary3270 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$3:	; £temporary3272 = left + £temporary3270
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$4:	; £temporary3269 -> £temporary3272 = *£temporary3272

strcmp$5:	; if £temporary3269 -> £temporary3272 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strcmp$12

strcmp$6:	; £temporary3275 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$7:	; £temporary3277 = right + £temporary3275
	mov rsi, [rbp + 32]
	add rsi, rax

strcmp$8:	; £temporary3274 -> £temporary3277 = *£temporary3277

strcmp$9:	; if £temporary3274 -> £temporary3277 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strcmp$12

strcmp$10:	; return_value = int4$0#
	mov ebx, 0

strcmp$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$12:	; £temporary3281 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$13:	; £temporary3283 = left + £temporary3281
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$14:	; £temporary3280 -> £temporary3283 = *£temporary3283

strcmp$15:	; if £temporary3280 -> £temporary3283 != int1$0# goto 18
	cmp byte [rsi], 0
	jne strcmp$18

strcmp$16:	; return_value = int4$minus1#
	mov ebx, -1

strcmp$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$18:	; £temporary3286 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$19:	; £temporary3288 = right + £temporary3286
	mov rsi, [rbp + 32]
	add rsi, rax

strcmp$20:	; £temporary3285 -> £temporary3288 = *£temporary3288

strcmp$21:	; if £temporary3285 -> £temporary3288 != int1$0# goto 24
	cmp byte [rsi], 0
	jne strcmp$24

strcmp$22:	; return_value = int4$1#
	mov ebx, 1

strcmp$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$24:	; £temporary3291 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$25:	; £temporary3293 = left + £temporary3291
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$26:	; £temporary3290 -> £temporary3293 = *£temporary3293

strcmp$27:	; £temporary3295 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$28:	; £temporary3297 = right + £temporary3295
	mov rdi, [rbp + 32]
	add rdi, rax

strcmp$29:	; £temporary3294 -> £temporary3297 = *£temporary3297

strcmp$30:	; if £temporary3290 -> £temporary3293 >= £temporary3294 -> £temporary3297 goto 33
	mov al, [rsi]
	cmp al, [rdi]
	jge strcmp$33

strcmp$31:	; return_value = int4$minus1#
	mov ebx, -1

strcmp$32:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$33:	; £temporary3300 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$34:	; £temporary3302 = left + £temporary3300
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$35:	; £temporary3299 -> £temporary3302 = *£temporary3302

strcmp$36:	; £temporary3304 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$37:	; £temporary3306 = right + £temporary3304
	mov rdi, [rbp + 32]
	add rdi, rax

strcmp$38:	; £temporary3303 -> £temporary3306 = *£temporary3306

strcmp$39:	; if £temporary3299 -> £temporary3302 <= £temporary3303 -> £temporary3306 goto 42
	mov al, [rsi]
	cmp al, [rdi]
	jle strcmp$42

strcmp$40:	; return_value = int4$1#
	mov ebx, 1

strcmp$41:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$42:	; ++index
	inc dword [rbp + 40]

strcmp$43:	; goto 2
	jmp strcmp$2

strcmp$44:	; function end strcmp

strncmp:	; empty

strncmp$1:	; index = int4$0#
	mov dword [rbp + 44], 0

strncmp$2:	; if index >= size goto 45
	mov eax, [rbp + 44]
	cmp eax, [rbp + 40]
	jge strncmp$45

strncmp$3:	; £temporary3312 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$4:	; £temporary3314 = left + £temporary3312
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$5:	; £temporary3311 -> £temporary3314 = *£temporary3314

strncmp$6:	; if £temporary3311 -> £temporary3314 != int1$0# goto 13
	cmp byte [rsi], 0
	jne strncmp$13

strncmp$7:	; £temporary3317 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$8:	; £temporary3319 = right + £temporary3317
	mov rsi, [rbp + 32]
	add rsi, rax

strncmp$9:	; £temporary3316 -> £temporary3319 = *£temporary3319

strncmp$10:	; if £temporary3316 -> £temporary3319 != int1$0# goto 13
	cmp byte [rsi], 0
	jne strncmp$13

strncmp$11:	; return_value = int4$0#
	mov ebx, 0

strncmp$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$13:	; £temporary3323 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$14:	; £temporary3325 = left + £temporary3323
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$15:	; £temporary3322 -> £temporary3325 = *£temporary3325

strncmp$16:	; if £temporary3322 -> £temporary3325 != int1$0# goto 19
	cmp byte [rsi], 0
	jne strncmp$19

strncmp$17:	; return_value = int4$minus1#
	mov ebx, -1

strncmp$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$19:	; £temporary3328 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$20:	; £temporary3330 = right + £temporary3328
	mov rsi, [rbp + 32]
	add rsi, rax

strncmp$21:	; £temporary3327 -> £temporary3330 = *£temporary3330

strncmp$22:	; if £temporary3327 -> £temporary3330 != int1$0# goto 25
	cmp byte [rsi], 0
	jne strncmp$25

strncmp$23:	; return_value = int4$1#
	mov ebx, 1

strncmp$24:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$25:	; £temporary3333 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$26:	; £temporary3335 = left + £temporary3333
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$27:	; £temporary3332 -> £temporary3335 = *£temporary3335

strncmp$28:	; £temporary3337 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$29:	; £temporary3339 = right + £temporary3337
	mov rdi, [rbp + 32]
	add rdi, rax

strncmp$30:	; £temporary3336 -> £temporary3339 = *£temporary3339

strncmp$31:	; if £temporary3332 -> £temporary3335 >= £temporary3336 -> £temporary3339 goto 34
	mov al, [rsi]
	cmp al, [rdi]
	jge strncmp$34

strncmp$32:	; return_value = int4$minus1#
	mov ebx, -1

strncmp$33:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$34:	; £temporary3342 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$35:	; £temporary3344 = left + £temporary3342
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$36:	; £temporary3341 -> £temporary3344 = *£temporary3344

strncmp$37:	; £temporary3346 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$38:	; £temporary3348 = right + £temporary3346
	mov rdi, [rbp + 32]
	add rdi, rax

strncmp$39:	; £temporary3345 -> £temporary3348 = *£temporary3348

strncmp$40:	; if £temporary3341 -> £temporary3344 <= £temporary3345 -> £temporary3348 goto 43
	mov al, [rsi]
	cmp al, [rdi]
	jle strncmp$43

strncmp$41:	; return_value = int4$1#
	mov ebx, 1

strncmp$42:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$43:	; ++index
	inc dword [rbp + 44]

strncmp$44:	; goto 2
	jmp strncmp$2

strncmp$45:	; return_value = int4$0#
	mov ebx, 0

strncmp$46:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$47:	; function end strncmp

strchr:	; empty

strchr$1:	; £temporary3350 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

strchr$2:	; c = £temporary3350
	mov [rbp + 40], al

strchr$3:	; index = int4$0#
	mov dword [rbp + 36], 0

strchr$4:	; £temporary3352 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$5:	; £temporary3354 = text + £temporary3352
	mov rsi, [rbp + 24]
	add rsi, rax

strchr$6:	; £temporary3351 -> £temporary3354 = *£temporary3354

strchr$7:	; if £temporary3351 -> £temporary3354 == int1$0# goto 20
	cmp byte [rsi], 0
	je strchr$20

strchr$8:	; £temporary3358 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$9:	; £temporary3360 = text + £temporary3358
	mov rsi, [rbp + 24]
	add rsi, rax

strchr$10:	; £temporary3357 -> £temporary3360 = *£temporary3360

strchr$11:	; if £temporary3357 -> £temporary3360 != c goto 18
	mov al, [rsi]
	cmp al, [rbp + 40]
	jne strchr$18

strchr$12:	; £temporary3363 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$13:	; £temporary3365 = text + £temporary3363
	mov rbx, [rbp + 24]
	add rbx, rax

strchr$14:	; £temporary3362 -> £temporary3365 = *£temporary3365

strchr$15:	; £temporary3366 = &£temporary3362 -> £temporary3365

strchr$16:	; return_value = £temporary3366

strchr$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strchr$18:	; ++index
	inc dword [rbp + 36]

strchr$19:	; goto 4
	jmp strchr$4

strchr$20:	; return_value = int8$0#
	mov rbx, 0

strchr$21:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strchr$22:	; function end strchr

strrchr:	; empty

strrchr$1:	; result = int8$0#
	mov qword [rbp + 40], 0

strrchr$2:	; £temporary3367 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

strrchr$3:	; c = £temporary3367
	mov [rbp + 48], al

strrchr$4:	; index = int4$0#
	mov dword [rbp + 36], 0

strrchr$5:	; £temporary3369 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$6:	; £temporary3371 = text + £temporary3369
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$7:	; £temporary3368 -> £temporary3371 = *£temporary3371

strrchr$8:	; if £temporary3368 -> £temporary3371 == int1$0# goto 20
	cmp byte [rsi], 0
	je strrchr$20

strrchr$9:	; £temporary3375 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$10:	; £temporary3377 = text + £temporary3375
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$11:	; £temporary3374 -> £temporary3377 = *£temporary3377

strrchr$12:	; if £temporary3374 -> £temporary3377 != c goto 18
	mov al, [rsi]
	cmp al, [rbp + 48]
	jne strrchr$18

strrchr$13:	; £temporary3380 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$14:	; £temporary3382 = text + £temporary3380
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$15:	; £temporary3379 -> £temporary3382 = *£temporary3382

strrchr$16:	; £temporary3383 = &£temporary3379 -> £temporary3382

strrchr$17:	; result = £temporary3383
	mov [rbp + 40], rsi

strrchr$18:	; ++index
	inc dword [rbp + 36]

strrchr$19:	; goto 5
	jmp strrchr$5

strrchr$20:	; return_value = result
	mov rbx, [rbp + 40]

strrchr$21:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strrchr$22:	; function end strrchr

strspn:	; empty

strspn$1:	; index = int4$0#
	mov dword [rbp + 40], 0

strspn$2:	; £temporary3385 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strspn$3:	; £temporary3387 = mainString + £temporary3385
	mov rsi, [rbp + 24]
	add rsi, rax

strspn$4:	; £temporary3384 -> £temporary3387 = *£temporary3387

strspn$5:	; if £temporary3384 -> £temporary3387 == int1$0# goto 21
	cmp byte [rsi], 0
	je strspn$21

strspn$6:	; call header integral zero 0 stack zero 0

strspn$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strspn$8:	; £temporary3391 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strspn$9:	; £temporary3393 = mainString + £temporary3391
	mov rsi, [rbp + 24]
	add rsi, rax

strspn$10:	; £temporary3390 -> £temporary3393 = *£temporary3393

strspn$11:	; £temporary3394 = int_to_int £temporary3390 -> £temporary3393 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

strspn$12:	; parameter £temporary3394, offset 76
	mov [rbp + 76], eax

strspn$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strspn$14:	; post call

strspn$15:	; £temporary3395 = return_value

strspn$16:	; if £temporary3395 != int8$0# goto 19
	cmp rbx, 0
	jne strspn$19

strspn$17:	; return_value = index
	mov ebx, [rbp + 40]

strspn$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strspn$19:	; ++index
	inc dword [rbp + 40]

strspn$20:	; goto 2
	jmp strspn$2

strspn$21:	; return_value = int4$minus1#
	mov ebx, -1

strspn$22:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strspn$23:	; function end strspn

strcspn:	; empty

strcspn$1:	; index = int4$0#
	mov dword [rbp + 40], 0

strcspn$2:	; £temporary3400 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcspn$3:	; £temporary3402 = mainString + £temporary3400
	mov rsi, [rbp + 24]
	add rsi, rax

strcspn$4:	; £temporary3399 -> £temporary3402 = *£temporary3402

strcspn$5:	; if £temporary3399 -> £temporary3402 == int1$0# goto 21
	cmp byte [rsi], 0
	je strcspn$21

strcspn$6:	; call header integral zero 0 stack zero 0

strcspn$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strcspn$8:	; £temporary3406 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcspn$9:	; £temporary3408 = mainString + £temporary3406
	mov rsi, [rbp + 24]
	add rsi, rax

strcspn$10:	; £temporary3405 -> £temporary3408 = *£temporary3408

strcspn$11:	; £temporary3409 = int_to_int £temporary3405 -> £temporary3408 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

strcspn$12:	; parameter £temporary3409, offset 76
	mov [rbp + 76], eax

strcspn$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strcspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strcspn$14:	; post call

strcspn$15:	; £temporary3410 = return_value

strcspn$16:	; if £temporary3410 == int8$0# goto 19
	cmp rbx, 0
	je strcspn$19

strcspn$17:	; return_value = index
	mov ebx, [rbp + 40]

strcspn$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcspn$19:	; ++index
	inc dword [rbp + 40]

strcspn$20:	; goto 2
	jmp strcspn$2

strcspn$21:	; return_value = int4$minus1#
	mov ebx, -1

strcspn$22:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcspn$23:	; function end strcspn

strpbrk:	; empty

strpbrk$1:	; index = int4$0#
	mov dword [rbp + 40], 0

strpbrk$2:	; £temporary3415 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$3:	; £temporary3417 = mainString + £temporary3415
	mov rsi, [rbp + 24]
	add rsi, rax

strpbrk$4:	; £temporary3414 -> £temporary3417 = *£temporary3417

strpbrk$5:	; if £temporary3414 -> £temporary3417 == int1$0# goto 25
	cmp byte [rsi], 0
	je strpbrk$25

strpbrk$6:	; call header integral zero 0 stack zero 0

strpbrk$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strpbrk$8:	; £temporary3421 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$9:	; £temporary3423 = mainString + £temporary3421
	mov rsi, [rbp + 24]
	add rsi, rax

strpbrk$10:	; £temporary3420 -> £temporary3423 = *£temporary3423

strpbrk$11:	; £temporary3424 = int_to_int £temporary3420 -> £temporary3423 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

strpbrk$12:	; parameter £temporary3424, offset 76
	mov [rbp + 76], eax

strpbrk$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strpbrk$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strpbrk$14:	; post call

strpbrk$15:	; £temporary3425 = return_value

strpbrk$16:	; if £temporary3425 == int8$0# goto 23
	cmp rbx, 0
	je strpbrk$23

strpbrk$17:	; £temporary3428 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$18:	; £temporary3430 = mainString + £temporary3428
	mov rbx, [rbp + 24]
	add rbx, rax

strpbrk$19:	; £temporary3427 -> £temporary3430 = *£temporary3430

strpbrk$20:	; £temporary3431 = &£temporary3427 -> £temporary3430

strpbrk$21:	; return_value = £temporary3431

strpbrk$22:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strpbrk$23:	; ++index
	inc dword [rbp + 40]

strpbrk$24:	; goto 2
	jmp strpbrk$2

strpbrk$25:	; return_value = int8$0#
	mov rbx, 0

strpbrk$26:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strpbrk$27:	; function end strpbrk

strstr:	; empty

strstr$1:	; index = int4$0#
	mov dword [rbp + 40], 0

strstr$2:	; £temporary3435 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$3:	; £temporary3437 = mainString + £temporary3435
	mov rsi, [rbp + 24]
	add rsi, rax

strstr$4:	; £temporary3434 -> £temporary3437 = *£temporary3437

strstr$5:	; if £temporary3434 -> £temporary3437 == int1$0# goto 23
	cmp byte [rsi], 0
	je strstr$23

strstr$6:	; call header integral zero 0 stack zero 0

strstr$7:	; £temporary3440 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$8:	; £temporary3441 = mainString + £temporary3440
	mov rbx, [rbp + 24]
	add rbx, rax

strstr$9:	; parameter £temporary3441, offset 68
	mov [rbp + 68], rbx

strstr$10:	; parameter subString, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

strstr$11:	; call function noellipse-noellipse strcmp
	mov qword [rbp + 44], strstr$12
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strcmp

strstr$12:	; post call

strstr$13:	; £temporary3443 = return_value

strstr$14:	; if £temporary3443 != int4$0# goto 21
	cmp ebx, 0
	jne strstr$21

strstr$15:	; £temporary3446 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$16:	; £temporary3448 = mainString + £temporary3446
	mov rbx, [rbp + 24]
	add rbx, rax

strstr$17:	; £temporary3445 -> £temporary3448 = *£temporary3448

strstr$18:	; £temporary3449 = &£temporary3445 -> £temporary3448

strstr$19:	; return_value = £temporary3449

strstr$20:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strstr$21:	; ++index
	inc dword [rbp + 40]

strstr$22:	; goto 2
	jmp strstr$2

strstr$23:	; return_value = int8$0#
	mov rbx, 0

strstr$24:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strstr$25:	; function end strstr

strlen:	; empty

strlen$1:	; index = int4$0#
	mov dword [rbp + 32], 0

strlen$2:	; £temporary3453 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

strlen$3:	; £temporary3455 = string + £temporary3453
	mov rsi, [rbp + 24]
	add rsi, rax

strlen$4:	; £temporary3452 -> £temporary3455 = *£temporary3455

strlen$5:	; if £temporary3452 -> £temporary3455 == int1$0# goto 8
	cmp byte [rsi], 0
	je strlen$8

strlen$6:	; ++index
	inc dword [rbp + 32]

strlen$7:	; goto 2
	jmp strlen$2

strlen$8:	; return_value = index
	mov ebx, [rbp + 32]

strlen$9:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strlen$10:	; function end strlen

strerror:	; call header integral zero 0 stack zero 0

strerror$1:	; call function noellipse-noellipse localeconv
	mov qword [rbp + 28], strerror$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

strerror$2:	; post call

strerror$3:	; £temporary3458 = return_value

strerror$4:	; localeConvPtr = £temporary3458
	mov [rbp + 28], rbx

strerror$5:	; if localeConvPtr == int8$0# goto 9
	cmp qword [rbp + 28], 0
	je strerror$9

strerror$6:	; £temporary3460 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

strerror$7:	; £temporary3461 = £temporary3460 -> localeConvPtr
	mov rax, [rsi + 56]

strerror$8:	; goto 10
	jmp strerror$10

strerror$9:	; £temporary3461 = int8$0#
	mov rax, 0

strerror$10:	; messageList = £temporary3461
	mov [rbp + 36], rax

strerror$11:	; if messageList == int8$0# goto 14
	cmp qword [rbp + 36], 0
	je strerror$14

strerror$12:	; £temporary3463 = messageList
	mov rax, [rbp + 36]

strerror$13:	; goto 15
	jmp strerror$15

strerror$14:	; £temporary3463 = enMessageList
	mov rax, enMessageList

strerror$15:	; messageList = £temporary3463
	mov [rbp + 36], rax

strerror$16:	; £temporary3465 = int_to_int errno (Signed_Int -> Pointer)
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

strerror$17:	; £temporary3466 = £temporary3465 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strerror$18:	; £temporary3467 = messageList + £temporary3466
	mov rsi, [rbp + 36]
	add rsi, rax

strerror$19:	; £temporary3464 -> £temporary3467 = *£temporary3467

strerror$20:	; return_value = £temporary3464 -> £temporary3467
	mov rbx, [rsi]

strerror$21:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strerror$22:	; function end strerror

strtok:	; empty

strtok$1:	; if string == int8$0# goto 43
	cmp qword [rbp + 24], 0
	je strtok$43

strtok$2:	; £temporary3469 -> string = *string
	mov rsi, [rbp + 24]

strtok$3:	; if £temporary3469 -> string != int1$0# goto 6
	cmp byte [rsi], 0
	jne strtok$6

strtok$4:	; return_value = int8$0#
	mov rbx, 0

strtok$5:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$6:	; index = int4$0#
	mov dword [rbp + 40], 0

strtok$7:	; £temporary3472 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$8:	; £temporary3474 = string + £temporary3472
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$9:	; £temporary3471 -> £temporary3474 = *£temporary3474

strtok$10:	; if £temporary3471 -> £temporary3474 == int1$0# goto 36
	cmp byte [rsi], 0
	je strtok$36

strtok$11:	; call header integral zero 0 stack zero 0

strtok$12:	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

strtok$13:	; £temporary3478 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$14:	; £temporary3480 = string + £temporary3478
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$15:	; £temporary3477 -> £temporary3480 = *£temporary3480

strtok$16:	; £temporary3481 = int_to_int £temporary3477 -> £temporary3480 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$17
	neg al
	neg eax

strtok$17:	; parameter £temporary3481, offset 84
	mov [rbp + 84], eax

strtok$18:	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], strtok$19
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

strtok$19:	; post call

strtok$20:	; £temporary3482 = return_value

strtok$21:	; if £temporary3482 == int8$0# goto 34
	cmp rbx, 0
	je strtok$34

strtok$22:	; £temporary3485 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$23:	; £temporary3487 = string + £temporary3485
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$24:	; £temporary3484 -> £temporary3487 = *£temporary3487

strtok$25:	; £temporary3484 -> £temporary3487 = int1$0#
	mov byte [rsi], 0

strtok$26:	; £temporary3488 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

strtok$27:	; £temporary3490 = int_to_int £temporary3488 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strtok$28:	; £temporary3492 = string + £temporary3490
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$29:	; £temporary3489 -> £temporary3492 = *£temporary3492

strtok$30:	; £temporary3493 = &£temporary3489 -> £temporary3492

strtok$31:	; token = £temporary3493
	mov [token], rsi

strtok$32:	; return_value = string
	mov rbx, [rbp + 24]

strtok$33:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$34:	; ++index
	inc dword [rbp + 40]

strtok$35:	; goto 7
	jmp strtok$7

strtok$36:	; £temporary3495 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$37:	; £temporary3497 = string + £temporary3495
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$38:	; £temporary3494 -> £temporary3497 = *£temporary3497

strtok$39:	; £temporary3498 = &£temporary3494 -> £temporary3497

strtok$40:	; token = £temporary3498
	mov [token], rsi

strtok$41:	; return_value = string
	mov rbx, [rbp + 24]

strtok$42:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$43:	; if token != int8$0# goto 46
	cmp qword [token], 0
	jne strtok$46

strtok$44:	; return_value = int8$0#
	mov rbx, 0

strtok$45:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$46:	; £temporary3500 -> token = *token
	mov rsi, [token]

strtok$47:	; if £temporary3500 -> token != int1$0# goto 50
	cmp byte [rsi], 0
	jne strtok$50

strtok$48:	; return_value = int8$0#
	mov rbx, 0

strtok$49:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$50:	; index = int4$0#
	mov dword [rbp + 40], 0

strtok$51:	; £temporary3503 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$52:	; £temporary3505 = token + £temporary3503
	mov rsi, [token]
	add rsi, rax

strtok$53:	; £temporary3502 -> £temporary3505 = *£temporary3505

strtok$54:	; if £temporary3502 -> £temporary3505 == int1$0# goto 81
	cmp byte [rsi], 0
	je strtok$81

strtok$55:	; call header integral zero 0 stack zero 0

strtok$56:	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

strtok$57:	; £temporary3509 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$58:	; £temporary3511 = token + £temporary3509
	mov rsi, [token]
	add rsi, rax

strtok$59:	; £temporary3508 -> £temporary3511 = *£temporary3511

strtok$60:	; £temporary3512 = int_to_int £temporary3508 -> £temporary3511 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$61
	neg al
	neg eax

strtok$61:	; parameter £temporary3512, offset 84
	mov [rbp + 84], eax

strtok$62:	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], strtok$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

strtok$63:	; post call

strtok$64:	; £temporary3513 = return_value

strtok$65:	; if £temporary3513 == int8$0# goto 79
	cmp rbx, 0
	je strtok$79

strtok$66:	; tokenStart2 = token
	mov rax, [token]
	mov [rbp + 52], rax

strtok$67:	; £temporary3516 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$68:	; £temporary3518 = token + £temporary3516
	mov rsi, [token]
	add rsi, rax

strtok$69:	; £temporary3515 -> £temporary3518 = *£temporary3518

strtok$70:	; £temporary3515 -> £temporary3518 = int1$0#
	mov byte [rsi], 0

strtok$71:	; £temporary3519 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

strtok$72:	; £temporary3521 = int_to_int £temporary3519 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strtok$73:	; £temporary3523 = token + £temporary3521
	mov rsi, [token]
	add rsi, rax

strtok$74:	; £temporary3520 -> £temporary3523 = *£temporary3523

strtok$75:	; £temporary3524 = &£temporary3520 -> £temporary3523

strtok$76:	; token = £temporary3524
	mov [token], rsi

strtok$77:	; return_value = tokenStart2
	mov rbx, [rbp + 52]

strtok$78:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$79:	; ++index
	inc dword [rbp + 40]

strtok$80:	; goto 51
	jmp strtok$51

strtok$81:	; tokenStart = token
	mov rax, [token]
	mov [rbp + 44], rax

strtok$82:	; £temporary3526 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$83:	; £temporary3528 = token + £temporary3526
	mov rsi, [token]
	add rsi, rax

strtok$84:	; £temporary3525 -> £temporary3528 = *£temporary3528

strtok$85:	; £temporary3529 = &£temporary3525 -> £temporary3528

strtok$86:	; token = £temporary3529
	mov [token], rsi

strtok$87:	; return_value = tokenStart
	mov rbx, [rbp + 44]

strtok$88:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$89:	; function end strtok

memcpy:	; £temporary3534 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

memcpy$1:	; charTarget = £temporary3534
	mov [rbp + 44], rax

memcpy$2:	; £temporary3535 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

memcpy$3:	; charSource = £temporary3535
	mov [rbp + 52], rax

memcpy$4:	; index = int4$0#
	mov dword [rbp + 60], 0

memcpy$5:	; if index >= size goto 15
	mov eax, [rbp + 60]
	cmp eax, [rbp + 40]
	jge memcpy$15

memcpy$6:	; £temporary3539 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcpy$7:	; £temporary3541 = charTarget + £temporary3539
	mov rsi, [rbp + 44]
	add rsi, rax

memcpy$8:	; £temporary3538 -> £temporary3541 = *£temporary3541

memcpy$9:	; £temporary3543 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcpy$10:	; £temporary3545 = charSource + £temporary3543
	mov rdi, [rbp + 52]
	add rdi, rax

memcpy$11:	; £temporary3542 -> £temporary3545 = *£temporary3545

memcpy$12:	; £temporary3538 -> £temporary3541 = £temporary3542 -> £temporary3545
	mov al, [rdi]
	mov [rsi], al

memcpy$13:	; ++index
	inc dword [rbp + 60]

memcpy$14:	; goto 5
	jmp memcpy$5

memcpy$15:	; £temporary3546 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

memcpy$16:	; return_value = £temporary3546

memcpy$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memcpy$18:	; function end memcpy

memmove:	; £temporary3547 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

memmove$1:	; charTarget = £temporary3547
	mov [rbp + 44], rax

memmove$2:	; £temporary3548 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

memmove$3:	; charSource = £temporary3548
	mov [rbp + 52], rax

memmove$4:	; if source >= target goto 17
	mov rax, [rbp + 32]
	cmp rax, [rbp + 24]
	jge memmove$17

memmove$5:	; £temporary3550 = size - int4$1#
	mov eax, [rbp + 40]
	dec eax

memmove$6:	; index = £temporary3550
	mov [rbp + 60], eax

memmove$7:	; if index < int4$0# goto 28
	cmp dword [rbp + 60], 0
	jl memmove$28

memmove$8:	; £temporary3554 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$9:	; £temporary3556 = charTarget + £temporary3554
	mov rsi, [rbp + 44]
	add rsi, rax

memmove$10:	; £temporary3553 -> £temporary3556 = *£temporary3556

memmove$11:	; £temporary3558 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$12:	; £temporary3560 = charSource + £temporary3558
	mov rdi, [rbp + 52]
	add rdi, rax

memmove$13:	; £temporary3557 -> £temporary3560 = *£temporary3560

memmove$14:	; £temporary3553 -> £temporary3556 = £temporary3557 -> £temporary3560
	mov al, [rdi]
	mov [rsi], al

memmove$15:	; --index
	dec dword [rbp + 60]

memmove$16:	; goto 7
	jmp memmove$7

memmove$17:	; index = int4$0#
	mov dword [rbp + 60], 0

memmove$18:	; if index >= size goto 28
	mov eax, [rbp + 60]
	cmp eax, [rbp + 40]
	jge memmove$28

memmove$19:	; £temporary3564 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$20:	; £temporary3566 = charTarget + £temporary3564
	mov rsi, [rbp + 44]
	add rsi, rax

memmove$21:	; £temporary3563 -> £temporary3566 = *£temporary3566

memmove$22:	; £temporary3568 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$23:	; £temporary3570 = charSource + £temporary3568
	mov rdi, [rbp + 52]
	add rdi, rax

memmove$24:	; £temporary3567 -> £temporary3570 = *£temporary3570

memmove$25:	; £temporary3563 -> £temporary3566 = £temporary3567 -> £temporary3570
	mov al, [rdi]
	mov [rsi], al

memmove$26:	; ++index
	inc dword [rbp + 60]

memmove$27:	; goto 18
	jmp memmove$18

memmove$28:	; £temporary3571 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

memmove$29:	; return_value = £temporary3571

memmove$30:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memmove$31:	; function end memmove

memcmp:	; £temporary3572 = int_to_int left (Pointer -> Pointer)
	mov rax, [rbp + 24]

memcmp$1:	; charLeft = £temporary3572
	mov [rbp + 44], rax

memcmp$2:	; £temporary3573 = int_to_int right (Pointer -> Pointer)
	mov rax, [rbp + 32]

memcmp$3:	; charRight = £temporary3573
	mov [rbp + 52], rax

memcmp$4:	; index = int4$0#
	mov dword [rbp + 60], 0

memcmp$5:	; if index >= size goto 26
	mov eax, [rbp + 60]
	cmp eax, [rbp + 40]
	jge memcmp$26

memcmp$6:	; £temporary3577 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$7:	; £temporary3579 = charLeft + £temporary3577
	mov rsi, [rbp + 44]
	add rsi, rax

memcmp$8:	; £temporary3576 -> £temporary3579 = *£temporary3579

memcmp$9:	; £temporary3581 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$10:	; £temporary3583 = charRight + £temporary3581
	mov rdi, [rbp + 52]
	add rdi, rax

memcmp$11:	; £temporary3580 -> £temporary3583 = *£temporary3583

memcmp$12:	; if £temporary3576 -> £temporary3579 >= £temporary3580 -> £temporary3583 goto 15
	mov al, [rsi]
	cmp al, [rdi]
	jge memcmp$15

memcmp$13:	; return_value = int4$minus1#
	mov ebx, -1

memcmp$14:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memcmp$15:	; £temporary3586 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$16:	; £temporary3588 = charLeft + £temporary3586
	mov rsi, [rbp + 44]
	add rsi, rax

memcmp$17:	; £temporary3585 -> £temporary3588 = *£temporary3588

memcmp$18:	; £temporary3590 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$19:	; £temporary3592 = charRight + £temporary3590
	mov rdi, [rbp + 52]
	add rdi, rax

memcmp$20:	; £temporary3589 -> £temporary3592 = *£temporary3592

memcmp$21:	; if £temporary3585 -> £temporary3588 <= £temporary3589 -> £temporary3592 goto 24
	mov al, [rsi]
	cmp al, [rdi]
	jle memcmp$24

memcmp$22:	; return_value = int4$1#
	mov ebx, 1

memcmp$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memcmp$24:	; ++index
	inc dword [rbp + 60]

memcmp$25:	; goto 5
	jmp memcmp$5

memcmp$26:	; return_value = int4$0#
	mov ebx, 0

memcmp$27:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memcmp$28:	; function end memcmp

memchr:	; empty

memchr$1:	; £temporary3594 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

memchr$2:	; charBlock = £temporary3594
	mov [rbp + 44], rax

memchr$3:	; £temporary3595 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

memchr$4:	; c = £temporary3595
	mov [rbp + 52], al

memchr$5:	; index = int4$0#
	mov dword [rbp + 40], 0

memchr$6:	; if index >= size goto 20
	mov eax, [rbp + 40]
	cmp eax, [rbp + 36]
	jge memchr$20

memchr$7:	; £temporary3599 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

memchr$8:	; £temporary3601 = charBlock + £temporary3599
	mov rsi, [rbp + 44]
	add rsi, rax

memchr$9:	; £temporary3598 -> £temporary3601 = *£temporary3601

memchr$10:	; if £temporary3598 -> £temporary3601 != c goto 18
	mov al, [rsi]
	cmp al, [rbp + 52]
	jne memchr$18

memchr$11:	; £temporary3604 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

memchr$12:	; £temporary3606 = charBlock + £temporary3604
	mov rbx, [rbp + 44]
	add rbx, rax

memchr$13:	; £temporary3603 -> £temporary3606 = *£temporary3606

memchr$14:	; £temporary3607 = &£temporary3603 -> £temporary3606

memchr$15:	; £temporary3608 = int_to_int £temporary3607 (Pointer -> Pointer)

memchr$16:	; return_value = £temporary3608

memchr$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memchr$18:	; ++index
	inc dword [rbp + 40]

memchr$19:	; goto 6
	jmp memchr$6

memchr$20:	; return_value = int8$0#
	mov rbx, 0

memchr$21:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memchr$22:	; function end memchr

memset:	; £temporary3609 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

memset$1:	; charBlock = £temporary3609
	mov [rbp + 40], rax

memset$2:	; £temporary3610 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

memset$3:	; c = £temporary3610
	mov [rbp + 48], al

memset$4:	; index = int4$0#
	mov dword [rbp + 49], 0

memset$5:	; if index >= size goto 12
	mov eax, [rbp + 49]
	cmp eax, [rbp + 36]
	jge memset$12

memset$6:	; £temporary3614 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

memset$7:	; £temporary3616 = charBlock + £temporary3614
	mov rsi, [rbp + 40]
	add rsi, rax

memset$8:	; £temporary3613 -> £temporary3616 = *£temporary3616

memset$9:	; £temporary3613 -> £temporary3616 = c
	mov al, [rbp + 48]
	mov [rsi], al

memset$10:	; ++index
	inc dword [rbp + 49]

memset$11:	; goto 5
	jmp memset$5

memset$12:	; return_value = block
	mov rbx, [rbp + 24]

memset$13:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memset$14:	; function end memset
section .data

$IntegralStorage#:
	times 8 db 0

int8$8#:
	; init Pointer
	dq 8

token:
	dq 0
