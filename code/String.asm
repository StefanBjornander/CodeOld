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

strcpy$2:	; £temporary3175 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$3:	; £temporary3177 = source + £temporary3175
	mov rsi, [rbp + 32]
	add rsi, rax

strcpy$4:	; £field3174 -> £temporary3177 = *£temporary3177

strcpy$5:	; if £field3174 -> £temporary3177 == int1$0# goto 15
	cmp byte [rsi], 0
	je strcpy$15

strcpy$6:	; £temporary3181 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$7:	; £temporary3183 = target + £temporary3181
	mov rsi, [rbp + 24]
	add rsi, rax

strcpy$8:	; £field3180 -> £temporary3183 = *£temporary3183

strcpy$9:	; £temporary3185 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$10:	; £temporary3187 = source + £temporary3185
	mov rdi, [rbp + 32]
	add rdi, rax

strcpy$11:	; £field3184 -> £temporary3187 = *£temporary3187

strcpy$12:	; £field3180 -> £temporary3183 = £field3184 -> £temporary3187
	mov al, [rdi]
	mov [rsi], al

strcpy$13:	; ++index
	inc dword [rbp + 40]

strcpy$14:	; goto 2
	jmp strcpy$2

strcpy$15:	; £temporary3189 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$16:	; £temporary3191 = target + £temporary3189
	mov rsi, [rbp + 24]
	add rsi, rax

strcpy$17:	; £field3188 -> £temporary3191 = *£temporary3191

strcpy$18:	; £field3188 -> £temporary3191 = int1$0#
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

strncpy$3:	; £temporary3194 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$4:	; £temporary3196 = source + £temporary3194
	mov rsi, [rbp + 32]
	add rsi, rax

strncpy$5:	; £field3193 -> £temporary3196 = *£temporary3196

strncpy$6:	; if £field3193 -> £temporary3196 == int1$0# goto 16
	cmp byte [rsi], 0
	je strncpy$16

strncpy$7:	; £temporary3201 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$8:	; £temporary3203 = target + £temporary3201
	mov rsi, [rbp + 24]
	add rsi, rax

strncpy$9:	; £field3200 -> £temporary3203 = *£temporary3203

strncpy$10:	; £temporary3205 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$11:	; £temporary3207 = source + £temporary3205
	mov rdi, [rbp + 32]
	add rdi, rax

strncpy$12:	; £field3204 -> £temporary3207 = *£temporary3207

strncpy$13:	; £field3200 -> £temporary3203 = £field3204 -> £temporary3207
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

strncpy$17:	; £temporary3211 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$18:	; £temporary3213 = target + £temporary3211
	mov rsi, [rbp + 24]
	add rsi, rax

strncpy$19:	; £field3210 -> £temporary3213 = *£temporary3213

strncpy$20:	; £field3210 -> £temporary3213 = int1$0#
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

strcat$5:	; £temporary3214 = return_value

strcat$6:	; targetLength = £temporary3214
	mov [rbp + 44], ebx

strcat$7:	; index = int4$0#
	mov dword [rbp + 40], 0

strcat$8:	; £temporary3216 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcat$9:	; £temporary3218 = source + £temporary3216
	mov rsi, [rbp + 32]
	add rsi, rax

strcat$10:	; £field3215 -> £temporary3218 = *£temporary3218

strcat$11:	; if £field3215 -> £temporary3218 == int1$0# goto 22
	cmp byte [rsi], 0
	je strcat$22

strcat$12:	; £temporary3221 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

strcat$13:	; £temporary3223 = int_to_int £temporary3221 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strcat$14:	; £temporary3225 = target + £temporary3223
	mov rsi, [rbp + 24]
	add rsi, rax

strcat$15:	; £field3222 -> £temporary3225 = *£temporary3225

strcat$16:	; £temporary3227 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcat$17:	; £temporary3229 = source + £temporary3227
	mov rdi, [rbp + 32]
	add rdi, rax

strcat$18:	; £field3226 -> £temporary3229 = *£temporary3229

strcat$19:	; £field3222 -> £temporary3225 = £field3226 -> £temporary3229
	mov al, [rdi]
	mov [rsi], al

strcat$20:	; ++index
	inc dword [rbp + 40]

strcat$21:	; goto 8
	jmp strcat$8

strcat$22:	; £temporary3230 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

strcat$23:	; £temporary3232 = int_to_int £temporary3230 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strcat$24:	; £temporary3234 = target + £temporary3232
	mov rsi, [rbp + 24]
	add rsi, rax

strcat$25:	; £field3231 -> £temporary3234 = *£temporary3234

strcat$26:	; £field3231 -> £temporary3234 = int1$0#
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

strncat$5:	; £temporary3236 = return_value

strncat$6:	; targetLength = £temporary3236
	mov [rbp + 48], ebx

strncat$7:	; index = int4$0#
	mov dword [rbp + 44], 0

strncat$8:	; £temporary3237 = size - int4$1#
	mov eax, [rbp + 40]
	dec eax

strncat$9:	; if index >= £temporary3237 goto 24
	cmp [rbp + 44], eax
	jge strncat$24

strncat$10:	; £temporary3240 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncat$11:	; £temporary3242 = source + £temporary3240
	mov rsi, [rbp + 32]
	add rsi, rax

strncat$12:	; £field3239 -> £temporary3242 = *£temporary3242

strncat$13:	; if £field3239 -> £temporary3242 == int1$0# goto 24
	cmp byte [rsi], 0
	je strncat$24

strncat$14:	; £temporary3246 = targetLength + index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

strncat$15:	; £temporary3248 = int_to_int £temporary3246 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strncat$16:	; £temporary3250 = target + £temporary3248
	mov rsi, [rbp + 24]
	add rsi, rax

strncat$17:	; £field3247 -> £temporary3250 = *£temporary3250

strncat$18:	; £temporary3252 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncat$19:	; £temporary3254 = source + £temporary3252
	mov rdi, [rbp + 32]
	add rdi, rax

strncat$20:	; £field3251 -> £temporary3254 = *£temporary3254

strncat$21:	; £field3247 -> £temporary3250 = £field3251 -> £temporary3254
	mov al, [rdi]
	mov [rsi], al

strncat$22:	; ++index
	inc dword [rbp + 44]

strncat$23:	; goto 8
	jmp strncat$8

strncat$24:	; £temporary3255 = targetLength + size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

strncat$25:	; £temporary3256 = £temporary3255 - int4$1#
	dec eax

strncat$26:	; £temporary3258 = int_to_int £temporary3256 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strncat$27:	; £temporary3260 = target + £temporary3258
	mov rsi, [rbp + 24]
	add rsi, rax

strncat$28:	; £field3257 -> £temporary3260 = *£temporary3260

strncat$29:	; £field3257 -> £temporary3260 = int1$0#
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

strcmp$2:	; £temporary3264 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$3:	; £temporary3266 = left + £temporary3264
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$4:	; £field3263 -> £temporary3266 = *£temporary3266

strcmp$5:	; if £field3263 -> £temporary3266 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strcmp$12

strcmp$6:	; £temporary3269 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$7:	; £temporary3271 = right + £temporary3269
	mov rsi, [rbp + 32]
	add rsi, rax

strcmp$8:	; £field3268 -> £temporary3271 = *£temporary3271

strcmp$9:	; if £field3268 -> £temporary3271 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strcmp$12

strcmp$10:	; return_value = int4$0#
	mov ebx, 0

strcmp$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$12:	; £temporary3275 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$13:	; £temporary3277 = left + £temporary3275
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$14:	; £field3274 -> £temporary3277 = *£temporary3277

strcmp$15:	; if £field3274 -> £temporary3277 != int1$0# goto 18
	cmp byte [rsi], 0
	jne strcmp$18

strcmp$16:	; return_value = int4$minus1#
	mov ebx, -1

strcmp$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$18:	; £temporary3280 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$19:	; £temporary3282 = right + £temporary3280
	mov rsi, [rbp + 32]
	add rsi, rax

strcmp$20:	; £field3279 -> £temporary3282 = *£temporary3282

strcmp$21:	; if £field3279 -> £temporary3282 != int1$0# goto 24
	cmp byte [rsi], 0
	jne strcmp$24

strcmp$22:	; return_value = int4$1#
	mov ebx, 1

strcmp$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$24:	; £temporary3285 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$25:	; £temporary3287 = left + £temporary3285
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$26:	; £field3284 -> £temporary3287 = *£temporary3287

strcmp$27:	; £temporary3289 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$28:	; £temporary3291 = right + £temporary3289
	mov rdi, [rbp + 32]
	add rdi, rax

strcmp$29:	; £field3288 -> £temporary3291 = *£temporary3291

strcmp$30:	; if £field3284 -> £temporary3287 >= £field3288 -> £temporary3291 goto 33
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

strcmp$33:	; £temporary3294 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$34:	; £temporary3296 = left + £temporary3294
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$35:	; £field3293 -> £temporary3296 = *£temporary3296

strcmp$36:	; £temporary3298 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$37:	; £temporary3300 = right + £temporary3298
	mov rdi, [rbp + 32]
	add rdi, rax

strcmp$38:	; £field3297 -> £temporary3300 = *£temporary3300

strcmp$39:	; if £field3293 -> £temporary3296 <= £field3297 -> £temporary3300 goto 42
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

strncmp$3:	; £temporary3306 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$4:	; £temporary3308 = left + £temporary3306
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$5:	; £field3305 -> £temporary3308 = *£temporary3308

strncmp$6:	; if £field3305 -> £temporary3308 != int1$0# goto 13
	cmp byte [rsi], 0
	jne strncmp$13

strncmp$7:	; £temporary3311 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$8:	; £temporary3313 = right + £temporary3311
	mov rsi, [rbp + 32]
	add rsi, rax

strncmp$9:	; £field3310 -> £temporary3313 = *£temporary3313

strncmp$10:	; if £field3310 -> £temporary3313 != int1$0# goto 13
	cmp byte [rsi], 0
	jne strncmp$13

strncmp$11:	; return_value = int4$0#
	mov ebx, 0

strncmp$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$13:	; £temporary3317 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$14:	; £temporary3319 = left + £temporary3317
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$15:	; £field3316 -> £temporary3319 = *£temporary3319

strncmp$16:	; if £field3316 -> £temporary3319 != int1$0# goto 19
	cmp byte [rsi], 0
	jne strncmp$19

strncmp$17:	; return_value = int4$minus1#
	mov ebx, -1

strncmp$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$19:	; £temporary3322 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$20:	; £temporary3324 = right + £temporary3322
	mov rsi, [rbp + 32]
	add rsi, rax

strncmp$21:	; £field3321 -> £temporary3324 = *£temporary3324

strncmp$22:	; if £field3321 -> £temporary3324 != int1$0# goto 25
	cmp byte [rsi], 0
	jne strncmp$25

strncmp$23:	; return_value = int4$1#
	mov ebx, 1

strncmp$24:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$25:	; £temporary3327 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$26:	; £temporary3329 = left + £temporary3327
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$27:	; £field3326 -> £temporary3329 = *£temporary3329

strncmp$28:	; £temporary3331 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$29:	; £temporary3333 = right + £temporary3331
	mov rdi, [rbp + 32]
	add rdi, rax

strncmp$30:	; £field3330 -> £temporary3333 = *£temporary3333

strncmp$31:	; if £field3326 -> £temporary3329 >= £field3330 -> £temporary3333 goto 34
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

strncmp$34:	; £temporary3336 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$35:	; £temporary3338 = left + £temporary3336
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$36:	; £field3335 -> £temporary3338 = *£temporary3338

strncmp$37:	; £temporary3340 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$38:	; £temporary3342 = right + £temporary3340
	mov rdi, [rbp + 32]
	add rdi, rax

strncmp$39:	; £field3339 -> £temporary3342 = *£temporary3342

strncmp$40:	; if £field3335 -> £temporary3338 <= £field3339 -> £temporary3342 goto 43
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

strchr$1:	; £temporary3344 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

strchr$2:	; c = £temporary3344
	mov [rbp + 40], al

strchr$3:	; index = int4$0#
	mov dword [rbp + 36], 0

strchr$4:	; £temporary3346 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$5:	; £temporary3348 = text + £temporary3346
	mov rsi, [rbp + 24]
	add rsi, rax

strchr$6:	; £field3345 -> £temporary3348 = *£temporary3348

strchr$7:	; if £field3345 -> £temporary3348 == int1$0# goto 20
	cmp byte [rsi], 0
	je strchr$20

strchr$8:	; £temporary3352 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$9:	; £temporary3354 = text + £temporary3352
	mov rsi, [rbp + 24]
	add rsi, rax

strchr$10:	; £field3351 -> £temporary3354 = *£temporary3354

strchr$11:	; if £field3351 -> £temporary3354 != c goto 18
	mov al, [rsi]
	cmp al, [rbp + 40]
	jne strchr$18

strchr$12:	; £temporary3357 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$13:	; £temporary3359 = text + £temporary3357
	mov rbx, [rbp + 24]
	add rbx, rax

strchr$14:	; £field3356 -> £temporary3359 = *£temporary3359

strchr$15:	; £temporary3360 = &£field3356 -> £temporary3359

strchr$16:	; return_value = £temporary3360

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

strrchr$2:	; £temporary3361 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

strrchr$3:	; c = £temporary3361
	mov [rbp + 48], al

strrchr$4:	; index = int4$0#
	mov dword [rbp + 36], 0

strrchr$5:	; £temporary3363 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$6:	; £temporary3365 = text + £temporary3363
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$7:	; £field3362 -> £temporary3365 = *£temporary3365

strrchr$8:	; if £field3362 -> £temporary3365 == int1$0# goto 20
	cmp byte [rsi], 0
	je strrchr$20

strrchr$9:	; £temporary3369 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$10:	; £temporary3371 = text + £temporary3369
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$11:	; £field3368 -> £temporary3371 = *£temporary3371

strrchr$12:	; if £field3368 -> £temporary3371 != c goto 18
	mov al, [rsi]
	cmp al, [rbp + 48]
	jne strrchr$18

strrchr$13:	; £temporary3374 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$14:	; £temporary3376 = text + £temporary3374
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$15:	; £field3373 -> £temporary3376 = *£temporary3376

strrchr$16:	; £temporary3377 = &£field3373 -> £temporary3376

strrchr$17:	; result = £temporary3377
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

strspn$2:	; £temporary3379 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strspn$3:	; £temporary3381 = mainString + £temporary3379
	mov rsi, [rbp + 24]
	add rsi, rax

strspn$4:	; £field3378 -> £temporary3381 = *£temporary3381

strspn$5:	; if £field3378 -> £temporary3381 == int1$0# goto 21
	cmp byte [rsi], 0
	je strspn$21

strspn$6:	; call header integral zero 0 stack zero 0

strspn$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strspn$8:	; £temporary3385 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strspn$9:	; £temporary3387 = mainString + £temporary3385
	mov rsi, [rbp + 24]
	add rsi, rax

strspn$10:	; £field3384 -> £temporary3387 = *£temporary3387

strspn$11:	; £temporary3388 = int_to_int £field3384 -> £temporary3387 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

strspn$12:	; parameter £temporary3388, offset 76
	mov [rbp + 76], eax

strspn$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strspn$14:	; post call

strspn$15:	; £temporary3389 = return_value

strspn$16:	; if £temporary3389 != int8$0# goto 19
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

strcspn$2:	; £temporary3394 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcspn$3:	; £temporary3396 = mainString + £temporary3394
	mov rsi, [rbp + 24]
	add rsi, rax

strcspn$4:	; £field3393 -> £temporary3396 = *£temporary3396

strcspn$5:	; if £field3393 -> £temporary3396 == int1$0# goto 21
	cmp byte [rsi], 0
	je strcspn$21

strcspn$6:	; call header integral zero 0 stack zero 0

strcspn$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strcspn$8:	; £temporary3400 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcspn$9:	; £temporary3402 = mainString + £temporary3400
	mov rsi, [rbp + 24]
	add rsi, rax

strcspn$10:	; £field3399 -> £temporary3402 = *£temporary3402

strcspn$11:	; £temporary3403 = int_to_int £field3399 -> £temporary3402 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

strcspn$12:	; parameter £temporary3403, offset 76
	mov [rbp + 76], eax

strcspn$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strcspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strcspn$14:	; post call

strcspn$15:	; £temporary3404 = return_value

strcspn$16:	; if £temporary3404 == int8$0# goto 19
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

strpbrk$2:	; £temporary3409 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$3:	; £temporary3411 = mainString + £temporary3409
	mov rsi, [rbp + 24]
	add rsi, rax

strpbrk$4:	; £field3408 -> £temporary3411 = *£temporary3411

strpbrk$5:	; if £field3408 -> £temporary3411 == int1$0# goto 25
	cmp byte [rsi], 0
	je strpbrk$25

strpbrk$6:	; call header integral zero 0 stack zero 0

strpbrk$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strpbrk$8:	; £temporary3415 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$9:	; £temporary3417 = mainString + £temporary3415
	mov rsi, [rbp + 24]
	add rsi, rax

strpbrk$10:	; £field3414 -> £temporary3417 = *£temporary3417

strpbrk$11:	; £temporary3418 = int_to_int £field3414 -> £temporary3417 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

strpbrk$12:	; parameter £temporary3418, offset 76
	mov [rbp + 76], eax

strpbrk$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strpbrk$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strpbrk$14:	; post call

strpbrk$15:	; £temporary3419 = return_value

strpbrk$16:	; if £temporary3419 == int8$0# goto 23
	cmp rbx, 0
	je strpbrk$23

strpbrk$17:	; £temporary3422 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$18:	; £temporary3424 = mainString + £temporary3422
	mov rbx, [rbp + 24]
	add rbx, rax

strpbrk$19:	; £field3421 -> £temporary3424 = *£temporary3424

strpbrk$20:	; £temporary3425 = &£field3421 -> £temporary3424

strpbrk$21:	; return_value = £temporary3425

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

strstr$2:	; £temporary3429 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$3:	; £temporary3431 = mainString + £temporary3429
	mov rsi, [rbp + 24]
	add rsi, rax

strstr$4:	; £field3428 -> £temporary3431 = *£temporary3431

strstr$5:	; if £field3428 -> £temporary3431 == int1$0# goto 23
	cmp byte [rsi], 0
	je strstr$23

strstr$6:	; call header integral zero 0 stack zero 0

strstr$7:	; £temporary3434 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$8:	; £temporary3435 = mainString + £temporary3434
	mov rbx, [rbp + 24]
	add rbx, rax

strstr$9:	; parameter £temporary3435, offset 68
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

strstr$13:	; £temporary3437 = return_value

strstr$14:	; if £temporary3437 != int4$0# goto 21
	cmp ebx, 0
	jne strstr$21

strstr$15:	; £temporary3440 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$16:	; £temporary3442 = mainString + £temporary3440
	mov rbx, [rbp + 24]
	add rbx, rax

strstr$17:	; £field3439 -> £temporary3442 = *£temporary3442

strstr$18:	; £temporary3443 = &£field3439 -> £temporary3442

strstr$19:	; return_value = £temporary3443

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

strlen$2:	; £temporary3447 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

strlen$3:	; £temporary3449 = string + £temporary3447
	mov rsi, [rbp + 24]
	add rsi, rax

strlen$4:	; £field3446 -> £temporary3449 = *£temporary3449

strlen$5:	; if £field3446 -> £temporary3449 == int1$0# goto 8
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

strerror$3:	; £temporary3452 = return_value

strerror$4:	; localeConvPtr = £temporary3452
	mov [rbp + 28], rbx

strerror$5:	; if localeConvPtr == int8$0# goto 9
	cmp qword [rbp + 28], 0
	je strerror$9

strerror$6:	; £field3454 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

strerror$7:	; £temporary3455 = £field3454 -> localeConvPtr
	mov rax, [rsi + 56]

strerror$8:	; goto 10
	jmp strerror$10

strerror$9:	; £temporary3455 = int8$0#
	mov rax, 0

strerror$10:	; messageList = £temporary3455
	mov [rbp + 36], rax

strerror$11:	; if messageList == int8$0# goto 14
	cmp qword [rbp + 36], 0
	je strerror$14

strerror$12:	; £temporary3457 = messageList
	mov rax, [rbp + 36]

strerror$13:	; goto 15
	jmp strerror$15

strerror$14:	; £temporary3457 = enMessageList
	mov rax, enMessageList

strerror$15:	; messageList = £temporary3457
	mov [rbp + 36], rax

strerror$16:	; £temporary3459 = int_to_int errno (Signed_Int -> Pointer)
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

strerror$17:	; £temporary3460 = £temporary3459 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strerror$18:	; £temporary3461 = messageList + £temporary3460
	mov rsi, [rbp + 36]
	add rsi, rax

strerror$19:	; £field3458 -> £temporary3461 = *£temporary3461

strerror$20:	; return_value = £field3458 -> £temporary3461
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

strtok$2:	; £field3463 -> string = *string
	mov rsi, [rbp + 24]

strtok$3:	; if £field3463 -> string != int1$0# goto 6
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

strtok$7:	; £temporary3466 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$8:	; £temporary3468 = string + £temporary3466
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$9:	; £field3465 -> £temporary3468 = *£temporary3468

strtok$10:	; if £field3465 -> £temporary3468 == int1$0# goto 36
	cmp byte [rsi], 0
	je strtok$36

strtok$11:	; call header integral zero 0 stack zero 0

strtok$12:	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

strtok$13:	; £temporary3472 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$14:	; £temporary3474 = string + £temporary3472
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$15:	; £field3471 -> £temporary3474 = *£temporary3474

strtok$16:	; £temporary3475 = int_to_int £field3471 -> £temporary3474 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$17
	neg al
	neg eax

strtok$17:	; parameter £temporary3475, offset 84
	mov [rbp + 84], eax

strtok$18:	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], strtok$19
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

strtok$19:	; post call

strtok$20:	; £temporary3476 = return_value

strtok$21:	; if £temporary3476 == int8$0# goto 34
	cmp rbx, 0
	je strtok$34

strtok$22:	; £temporary3479 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$23:	; £temporary3481 = string + £temporary3479
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$24:	; £field3478 -> £temporary3481 = *£temporary3481

strtok$25:	; £field3478 -> £temporary3481 = int1$0#
	mov byte [rsi], 0

strtok$26:	; £temporary3482 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

strtok$27:	; £temporary3484 = int_to_int £temporary3482 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strtok$28:	; £temporary3486 = string + £temporary3484
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$29:	; £field3483 -> £temporary3486 = *£temporary3486

strtok$30:	; £temporary3487 = &£field3483 -> £temporary3486

strtok$31:	; token = £temporary3487
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

strtok$36:	; £temporary3489 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$37:	; £temporary3491 = string + £temporary3489
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$38:	; £field3488 -> £temporary3491 = *£temporary3491

strtok$39:	; £temporary3492 = &£field3488 -> £temporary3491

strtok$40:	; token = £temporary3492
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

strtok$46:	; £field3494 -> token = *token
	mov rsi, [token]

strtok$47:	; if £field3494 -> token != int1$0# goto 50
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

strtok$51:	; £temporary3497 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$52:	; £temporary3499 = token + £temporary3497
	mov rsi, [token]
	add rsi, rax

strtok$53:	; £field3496 -> £temporary3499 = *£temporary3499

strtok$54:	; if £field3496 -> £temporary3499 == int1$0# goto 81
	cmp byte [rsi], 0
	je strtok$81

strtok$55:	; call header integral zero 0 stack zero 0

strtok$56:	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

strtok$57:	; £temporary3503 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$58:	; £temporary3505 = token + £temporary3503
	mov rsi, [token]
	add rsi, rax

strtok$59:	; £field3502 -> £temporary3505 = *£temporary3505

strtok$60:	; £temporary3506 = int_to_int £field3502 -> £temporary3505 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$61
	neg al
	neg eax

strtok$61:	; parameter £temporary3506, offset 84
	mov [rbp + 84], eax

strtok$62:	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], strtok$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

strtok$63:	; post call

strtok$64:	; £temporary3507 = return_value

strtok$65:	; if £temporary3507 == int8$0# goto 79
	cmp rbx, 0
	je strtok$79

strtok$66:	; tokenStart2 = token
	mov rax, [token]
	mov [rbp + 52], rax

strtok$67:	; £temporary3510 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$68:	; £temporary3512 = token + £temporary3510
	mov rsi, [token]
	add rsi, rax

strtok$69:	; £field3509 -> £temporary3512 = *£temporary3512

strtok$70:	; £field3509 -> £temporary3512 = int1$0#
	mov byte [rsi], 0

strtok$71:	; £temporary3513 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

strtok$72:	; £temporary3515 = int_to_int £temporary3513 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strtok$73:	; £temporary3517 = token + £temporary3515
	mov rsi, [token]
	add rsi, rax

strtok$74:	; £field3514 -> £temporary3517 = *£temporary3517

strtok$75:	; £temporary3518 = &£field3514 -> £temporary3517

strtok$76:	; token = £temporary3518
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

strtok$82:	; £temporary3520 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$83:	; £temporary3522 = token + £temporary3520
	mov rsi, [token]
	add rsi, rax

strtok$84:	; £field3519 -> £temporary3522 = *£temporary3522

strtok$85:	; £temporary3523 = &£field3519 -> £temporary3522

strtok$86:	; token = £temporary3523
	mov [token], rsi

strtok$87:	; return_value = tokenStart
	mov rbx, [rbp + 44]

strtok$88:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$89:	; function end strtok

memcpy:	; £temporary3528 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

memcpy$1:	; charTarget = £temporary3528
	mov [rbp + 44], rax

memcpy$2:	; £temporary3529 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

memcpy$3:	; charSource = £temporary3529
	mov [rbp + 52], rax

memcpy$4:	; index = int4$0#
	mov dword [rbp + 60], 0

memcpy$5:	; if index >= size goto 15
	mov eax, [rbp + 60]
	cmp eax, [rbp + 40]
	jge memcpy$15

memcpy$6:	; £temporary3533 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcpy$7:	; £temporary3535 = charTarget + £temporary3533
	mov rsi, [rbp + 44]
	add rsi, rax

memcpy$8:	; £field3532 -> £temporary3535 = *£temporary3535

memcpy$9:	; £temporary3537 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcpy$10:	; £temporary3539 = charSource + £temporary3537
	mov rdi, [rbp + 52]
	add rdi, rax

memcpy$11:	; £field3536 -> £temporary3539 = *£temporary3539

memcpy$12:	; £field3532 -> £temporary3535 = £field3536 -> £temporary3539
	mov al, [rdi]
	mov [rsi], al

memcpy$13:	; ++index
	inc dword [rbp + 60]

memcpy$14:	; goto 5
	jmp memcpy$5

memcpy$15:	; £temporary3540 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

memcpy$16:	; return_value = £temporary3540

memcpy$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memcpy$18:	; function end memcpy

memmove:	; £temporary3541 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

memmove$1:	; charTarget = £temporary3541
	mov [rbp + 44], rax

memmove$2:	; £temporary3542 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

memmove$3:	; charSource = £temporary3542
	mov [rbp + 52], rax

memmove$4:	; if source >= target goto 17
	mov rax, [rbp + 32]
	cmp rax, [rbp + 24]
	jge memmove$17

memmove$5:	; £temporary3544 = size - int4$1#
	mov eax, [rbp + 40]
	dec eax

memmove$6:	; index = £temporary3544
	mov [rbp + 60], eax

memmove$7:	; if index < int4$0# goto 28
	cmp dword [rbp + 60], 0
	jl memmove$28

memmove$8:	; £temporary3548 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$9:	; £temporary3550 = charTarget + £temporary3548
	mov rsi, [rbp + 44]
	add rsi, rax

memmove$10:	; £field3547 -> £temporary3550 = *£temporary3550

memmove$11:	; £temporary3552 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$12:	; £temporary3554 = charSource + £temporary3552
	mov rdi, [rbp + 52]
	add rdi, rax

memmove$13:	; £field3551 -> £temporary3554 = *£temporary3554

memmove$14:	; £field3547 -> £temporary3550 = £field3551 -> £temporary3554
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

memmove$19:	; £temporary3558 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$20:	; £temporary3560 = charTarget + £temporary3558
	mov rsi, [rbp + 44]
	add rsi, rax

memmove$21:	; £field3557 -> £temporary3560 = *£temporary3560

memmove$22:	; £temporary3562 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$23:	; £temporary3564 = charSource + £temporary3562
	mov rdi, [rbp + 52]
	add rdi, rax

memmove$24:	; £field3561 -> £temporary3564 = *£temporary3564

memmove$25:	; £field3557 -> £temporary3560 = £field3561 -> £temporary3564
	mov al, [rdi]
	mov [rsi], al

memmove$26:	; ++index
	inc dword [rbp + 60]

memmove$27:	; goto 18
	jmp memmove$18

memmove$28:	; £temporary3565 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

memmove$29:	; return_value = £temporary3565

memmove$30:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memmove$31:	; function end memmove

memcmp:	; £temporary3566 = int_to_int left (Pointer -> Pointer)
	mov rax, [rbp + 24]

memcmp$1:	; charLeft = £temporary3566
	mov [rbp + 44], rax

memcmp$2:	; £temporary3567 = int_to_int right (Pointer -> Pointer)
	mov rax, [rbp + 32]

memcmp$3:	; charRight = £temporary3567
	mov [rbp + 52], rax

memcmp$4:	; index = int4$0#
	mov dword [rbp + 60], 0

memcmp$5:	; if index >= size goto 26
	mov eax, [rbp + 60]
	cmp eax, [rbp + 40]
	jge memcmp$26

memcmp$6:	; £temporary3571 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$7:	; £temporary3573 = charLeft + £temporary3571
	mov rsi, [rbp + 44]
	add rsi, rax

memcmp$8:	; £field3570 -> £temporary3573 = *£temporary3573

memcmp$9:	; £temporary3575 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$10:	; £temporary3577 = charRight + £temporary3575
	mov rdi, [rbp + 52]
	add rdi, rax

memcmp$11:	; £field3574 -> £temporary3577 = *£temporary3577

memcmp$12:	; if £field3570 -> £temporary3573 >= £field3574 -> £temporary3577 goto 15
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

memcmp$15:	; £temporary3580 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$16:	; £temporary3582 = charLeft + £temporary3580
	mov rsi, [rbp + 44]
	add rsi, rax

memcmp$17:	; £field3579 -> £temporary3582 = *£temporary3582

memcmp$18:	; £temporary3584 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$19:	; £temporary3586 = charRight + £temporary3584
	mov rdi, [rbp + 52]
	add rdi, rax

memcmp$20:	; £field3583 -> £temporary3586 = *£temporary3586

memcmp$21:	; if £field3579 -> £temporary3582 <= £field3583 -> £temporary3586 goto 24
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

memchr$1:	; £temporary3588 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

memchr$2:	; charBlock = £temporary3588
	mov [rbp + 44], rax

memchr$3:	; £temporary3589 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

memchr$4:	; c = £temporary3589
	mov [rbp + 52], al

memchr$5:	; index = int4$0#
	mov dword [rbp + 40], 0

memchr$6:	; if index >= size goto 20
	mov eax, [rbp + 40]
	cmp eax, [rbp + 36]
	jge memchr$20

memchr$7:	; £temporary3593 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

memchr$8:	; £temporary3595 = charBlock + £temporary3593
	mov rsi, [rbp + 44]
	add rsi, rax

memchr$9:	; £field3592 -> £temporary3595 = *£temporary3595

memchr$10:	; if £field3592 -> £temporary3595 != c goto 18
	mov al, [rsi]
	cmp al, [rbp + 52]
	jne memchr$18

memchr$11:	; £temporary3598 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

memchr$12:	; £temporary3600 = charBlock + £temporary3598
	mov rbx, [rbp + 44]
	add rbx, rax

memchr$13:	; £field3597 -> £temporary3600 = *£temporary3600

memchr$14:	; £temporary3601 = &£field3597 -> £temporary3600

memchr$15:	; £temporary3602 = int_to_int £temporary3601 (Pointer -> Pointer)

memchr$16:	; return_value = £temporary3602

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

memset:	; £temporary3603 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

memset$1:	; charBlock = £temporary3603
	mov [rbp + 40], rax

memset$2:	; £temporary3604 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

memset$3:	; c = £temporary3604
	mov [rbp + 48], al

memset$4:	; index = int4$0#
	mov dword [rbp + 49], 0

memset$5:	; if index >= size goto 12
	mov eax, [rbp + 49]
	cmp eax, [rbp + 36]
	jge memset$12

memset$6:	; £temporary3608 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

memset$7:	; £temporary3610 = charBlock + £temporary3608
	mov rsi, [rbp + 40]
	add rsi, rax

memset$8:	; £field3607 -> £temporary3610 = *£temporary3610

memset$9:	; £field3607 -> £temporary3610 = c
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
	; initializer Pointer
	dq 8

token:
	dq 0
