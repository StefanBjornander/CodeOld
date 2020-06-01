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

strcpy$2:	; £temporary2876 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$3:	; £temporary2878 = source + £temporary2876
	mov rsi, [rbp + 32]
	add rsi, rax

strcpy$4:	; £field304 -> £temporary2878 = *£temporary2878

strcpy$5:	; if £field304 -> £temporary2878 == int1$0# goto 15
	cmp byte [rsi], 0
	je strcpy$15

strcpy$6:	; £temporary2881 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$7:	; £temporary2883 = target + £temporary2881
	mov rsi, [rbp + 24]
	add rsi, rax

strcpy$8:	; £field305 -> £temporary2883 = *£temporary2883

strcpy$9:	; £temporary2884 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$10:	; £temporary2886 = source + £temporary2884
	mov rdi, [rbp + 32]
	add rdi, rax

strcpy$11:	; £field306 -> £temporary2886 = *£temporary2886

strcpy$12:	; £field305 -> £temporary2883 = £field306 -> £temporary2886
	mov al, [rdi]
	mov [rsi], al

strcpy$13:	; ++index
	inc dword [rbp + 40]

strcpy$14:	; goto 2
	jmp strcpy$2

strcpy$15:	; £temporary2887 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$16:	; £temporary2889 = target + £temporary2887
	mov rsi, [rbp + 24]
	add rsi, rax

strcpy$17:	; £field307 -> £temporary2889 = *£temporary2889

strcpy$18:	; £field307 -> £temporary2889 = int1$0#
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

strncpy$3:	; £temporary2891 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$4:	; £temporary2893 = source + £temporary2891
	mov rsi, [rbp + 32]
	add rsi, rax

strncpy$5:	; £field308 -> £temporary2893 = *£temporary2893

strncpy$6:	; if £field308 -> £temporary2893 == int1$0# goto 16
	cmp byte [rsi], 0
	je strncpy$16

strncpy$7:	; £temporary2897 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$8:	; £temporary2899 = target + £temporary2897
	mov rsi, [rbp + 24]
	add rsi, rax

strncpy$9:	; £field309 -> £temporary2899 = *£temporary2899

strncpy$10:	; £temporary2900 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$11:	; £temporary2902 = source + £temporary2900
	mov rdi, [rbp + 32]
	add rdi, rax

strncpy$12:	; £field310 -> £temporary2902 = *£temporary2902

strncpy$13:	; £field309 -> £temporary2899 = £field310 -> £temporary2902
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

strncpy$17:	; £temporary2905 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$18:	; £temporary2907 = target + £temporary2905
	mov rsi, [rbp + 24]
	add rsi, rax

strncpy$19:	; £field311 -> £temporary2907 = *£temporary2907

strncpy$20:	; £field311 -> £temporary2907 = int1$0#
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

strcat$5:	; £temporary2908 = return_value

strcat$6:	; targetLength = £temporary2908
	mov [rbp + 44], ebx

strcat$7:	; index = int4$0#
	mov dword [rbp + 40], 0

strcat$8:	; £temporary2909 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcat$9:	; £temporary2911 = source + £temporary2909
	mov rsi, [rbp + 32]
	add rsi, rax

strcat$10:	; £field312 -> £temporary2911 = *£temporary2911

strcat$11:	; if £field312 -> £temporary2911 == int1$0# goto 22
	cmp byte [rsi], 0
	je strcat$22

strcat$12:	; £temporary2914 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

strcat$13:	; £temporary2915 = int_to_int £temporary2914 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strcat$14:	; £temporary2917 = target + £temporary2915
	mov rsi, [rbp + 24]
	add rsi, rax

strcat$15:	; £field313 -> £temporary2917 = *£temporary2917

strcat$16:	; £temporary2918 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcat$17:	; £temporary2920 = source + £temporary2918
	mov rdi, [rbp + 32]
	add rdi, rax

strcat$18:	; £field314 -> £temporary2920 = *£temporary2920

strcat$19:	; £field313 -> £temporary2917 = £field314 -> £temporary2920
	mov al, [rdi]
	mov [rsi], al

strcat$20:	; ++index
	inc dword [rbp + 40]

strcat$21:	; goto 8
	jmp strcat$8

strcat$22:	; £temporary2921 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

strcat$23:	; £temporary2922 = int_to_int £temporary2921 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strcat$24:	; £temporary2924 = target + £temporary2922
	mov rsi, [rbp + 24]
	add rsi, rax

strcat$25:	; £field315 -> £temporary2924 = *£temporary2924

strcat$26:	; £field315 -> £temporary2924 = int1$0#
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

strncat$5:	; £temporary2926 = return_value

strncat$6:	; targetLength = £temporary2926
	mov [rbp + 48], ebx

strncat$7:	; index = int4$0#
	mov dword [rbp + 44], 0

strncat$8:	; £temporary2927 = size - int4$1#
	mov eax, [rbp + 40]
	dec eax

strncat$9:	; if index >= £temporary2927 goto 24
	cmp [rbp + 44], eax
	jge strncat$24

strncat$10:	; £temporary2929 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncat$11:	; £temporary2931 = source + £temporary2929
	mov rsi, [rbp + 32]
	add rsi, rax

strncat$12:	; £field316 -> £temporary2931 = *£temporary2931

strncat$13:	; if £field316 -> £temporary2931 == int1$0# goto 24
	cmp byte [rsi], 0
	je strncat$24

strncat$14:	; £temporary2935 = targetLength + index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

strncat$15:	; £temporary2936 = int_to_int £temporary2935 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strncat$16:	; £temporary2938 = target + £temporary2936
	mov rsi, [rbp + 24]
	add rsi, rax

strncat$17:	; £field317 -> £temporary2938 = *£temporary2938

strncat$18:	; £temporary2939 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncat$19:	; £temporary2941 = source + £temporary2939
	mov rdi, [rbp + 32]
	add rdi, rax

strncat$20:	; £field318 -> £temporary2941 = *£temporary2941

strncat$21:	; £field317 -> £temporary2938 = £field318 -> £temporary2941
	mov al, [rdi]
	mov [rsi], al

strncat$22:	; ++index
	inc dword [rbp + 44]

strncat$23:	; goto 8
	jmp strncat$8

strncat$24:	; £temporary2942 = targetLength + size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

strncat$25:	; £temporary2943 = £temporary2942 - int4$1#
	dec eax

strncat$26:	; £temporary2944 = int_to_int £temporary2943 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strncat$27:	; £temporary2946 = target + £temporary2944
	mov rsi, [rbp + 24]
	add rsi, rax

strncat$28:	; £field319 -> £temporary2946 = *£temporary2946

strncat$29:	; £field319 -> £temporary2946 = int1$0#
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

strcmp$2:	; £temporary2949 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$3:	; £temporary2951 = left + £temporary2949
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$4:	; £field320 -> £temporary2951 = *£temporary2951

strcmp$5:	; if £field320 -> £temporary2951 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strcmp$12

strcmp$6:	; £temporary2953 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$7:	; £temporary2955 = right + £temporary2953
	mov rsi, [rbp + 32]
	add rsi, rax

strcmp$8:	; £field321 -> £temporary2955 = *£temporary2955

strcmp$9:	; if £field321 -> £temporary2955 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strcmp$12

strcmp$10:	; return_value = int4$0#
	mov ebx, 0

strcmp$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$12:	; £temporary2958 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$13:	; £temporary2960 = left + £temporary2958
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$14:	; £field322 -> £temporary2960 = *£temporary2960

strcmp$15:	; if £field322 -> £temporary2960 != int1$0# goto 18
	cmp byte [rsi], 0
	jne strcmp$18

strcmp$16:	; return_value = int4$minus1#
	mov ebx, -1

strcmp$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$18:	; £temporary2962 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$19:	; £temporary2964 = right + £temporary2962
	mov rsi, [rbp + 32]
	add rsi, rax

strcmp$20:	; £field323 -> £temporary2964 = *£temporary2964

strcmp$21:	; if £field323 -> £temporary2964 != int1$0# goto 24
	cmp byte [rsi], 0
	jne strcmp$24

strcmp$22:	; return_value = int4$1#
	mov ebx, 1

strcmp$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$24:	; £temporary2966 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$25:	; £temporary2968 = left + £temporary2966
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$26:	; £field324 -> £temporary2968 = *£temporary2968

strcmp$27:	; £temporary2969 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$28:	; £temporary2971 = right + £temporary2969
	mov rdi, [rbp + 32]
	add rdi, rax

strcmp$29:	; £field325 -> £temporary2971 = *£temporary2971

strcmp$30:	; if £field324 -> £temporary2968 >= £field325 -> £temporary2971 goto 33
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

strcmp$33:	; £temporary2973 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$34:	; £temporary2975 = left + £temporary2973
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$35:	; £field326 -> £temporary2975 = *£temporary2975

strcmp$36:	; £temporary2976 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$37:	; £temporary2978 = right + £temporary2976
	mov rdi, [rbp + 32]
	add rdi, rax

strcmp$38:	; £field327 -> £temporary2978 = *£temporary2978

strcmp$39:	; if £field326 -> £temporary2975 <= £field327 -> £temporary2978 goto 42
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

strncmp$3:	; £temporary2983 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$4:	; £temporary2985 = left + £temporary2983
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$5:	; £field328 -> £temporary2985 = *£temporary2985

strncmp$6:	; if £field328 -> £temporary2985 != int1$0# goto 13
	cmp byte [rsi], 0
	jne strncmp$13

strncmp$7:	; £temporary2987 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$8:	; £temporary2989 = right + £temporary2987
	mov rsi, [rbp + 32]
	add rsi, rax

strncmp$9:	; £field329 -> £temporary2989 = *£temporary2989

strncmp$10:	; if £field329 -> £temporary2989 != int1$0# goto 13
	cmp byte [rsi], 0
	jne strncmp$13

strncmp$11:	; return_value = int4$0#
	mov ebx, 0

strncmp$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$13:	; £temporary2992 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$14:	; £temporary2994 = left + £temporary2992
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$15:	; £field330 -> £temporary2994 = *£temporary2994

strncmp$16:	; if £field330 -> £temporary2994 != int1$0# goto 19
	cmp byte [rsi], 0
	jne strncmp$19

strncmp$17:	; return_value = int4$minus1#
	mov ebx, -1

strncmp$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$19:	; £temporary2996 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$20:	; £temporary2998 = right + £temporary2996
	mov rsi, [rbp + 32]
	add rsi, rax

strncmp$21:	; £field331 -> £temporary2998 = *£temporary2998

strncmp$22:	; if £field331 -> £temporary2998 != int1$0# goto 25
	cmp byte [rsi], 0
	jne strncmp$25

strncmp$23:	; return_value = int4$1#
	mov ebx, 1

strncmp$24:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$25:	; £temporary3000 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$26:	; £temporary3002 = left + £temporary3000
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$27:	; £field332 -> £temporary3002 = *£temporary3002

strncmp$28:	; £temporary3003 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$29:	; £temporary3005 = right + £temporary3003
	mov rdi, [rbp + 32]
	add rdi, rax

strncmp$30:	; £field333 -> £temporary3005 = *£temporary3005

strncmp$31:	; if £field332 -> £temporary3002 >= £field333 -> £temporary3005 goto 34
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

strncmp$34:	; £temporary3007 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$35:	; £temporary3009 = left + £temporary3007
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$36:	; £field334 -> £temporary3009 = *£temporary3009

strncmp$37:	; £temporary3010 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$38:	; £temporary3012 = right + £temporary3010
	mov rdi, [rbp + 32]
	add rdi, rax

strncmp$39:	; £field335 -> £temporary3012 = *£temporary3012

strncmp$40:	; if £field334 -> £temporary3009 <= £field335 -> £temporary3012 goto 43
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

strchr$1:	; £temporary3014 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

strchr$2:	; c = £temporary3014
	mov [rbp + 40], al

strchr$3:	; index = int4$0#
	mov dword [rbp + 36], 0

strchr$4:	; £temporary3015 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$5:	; £temporary3017 = text + £temporary3015
	mov rsi, [rbp + 24]
	add rsi, rax

strchr$6:	; £field336 -> £temporary3017 = *£temporary3017

strchr$7:	; if £field336 -> £temporary3017 == int1$0# goto 20
	cmp byte [rsi], 0
	je strchr$20

strchr$8:	; £temporary3020 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$9:	; £temporary3022 = text + £temporary3020
	mov rsi, [rbp + 24]
	add rsi, rax

strchr$10:	; £field337 -> £temporary3022 = *£temporary3022

strchr$11:	; if £field337 -> £temporary3022 != c goto 18
	mov al, [rsi]
	cmp al, [rbp + 40]
	jne strchr$18

strchr$12:	; £temporary3024 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$13:	; £temporary3026 = text + £temporary3024
	mov rbx, [rbp + 24]
	add rbx, rax

strchr$14:	; £field338 -> £temporary3026 = *£temporary3026

strchr$15:	; £temporary3027 = &£field338 -> £temporary3026

strchr$16:	; return_value = £temporary3027

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

strrchr$2:	; £temporary3028 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

strrchr$3:	; c = £temporary3028
	mov [rbp + 48], al

strrchr$4:	; index = int4$0#
	mov dword [rbp + 36], 0

strrchr$5:	; £temporary3029 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$6:	; £temporary3031 = text + £temporary3029
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$7:	; £field339 -> £temporary3031 = *£temporary3031

strrchr$8:	; if £field339 -> £temporary3031 == int1$0# goto 20
	cmp byte [rsi], 0
	je strrchr$20

strrchr$9:	; £temporary3034 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$10:	; £temporary3036 = text + £temporary3034
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$11:	; £field340 -> £temporary3036 = *£temporary3036

strrchr$12:	; if £field340 -> £temporary3036 != c goto 18
	mov al, [rsi]
	cmp al, [rbp + 48]
	jne strrchr$18

strrchr$13:	; £temporary3038 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$14:	; £temporary3040 = text + £temporary3038
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$15:	; £field341 -> £temporary3040 = *£temporary3040

strrchr$16:	; £temporary3041 = &£field341 -> £temporary3040

strrchr$17:	; result = £temporary3041
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

strspn$2:	; £temporary3042 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strspn$3:	; £temporary3044 = mainString + £temporary3042
	mov rsi, [rbp + 24]
	add rsi, rax

strspn$4:	; £field342 -> £temporary3044 = *£temporary3044

strspn$5:	; if £field342 -> £temporary3044 == int1$0# goto 21
	cmp byte [rsi], 0
	je strspn$21

strspn$6:	; call header integral zero 0 stack zero 0

strspn$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strspn$8:	; £temporary3047 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strspn$9:	; £temporary3049 = mainString + £temporary3047
	mov rsi, [rbp + 24]
	add rsi, rax

strspn$10:	; £field343 -> £temporary3049 = *£temporary3049

strspn$11:	; £temporary3050 = int_to_int £field343 -> £temporary3049 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

strspn$12:	; parameter £temporary3050, offset 76
	mov [rbp + 76], eax

strspn$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strspn$14:	; post call

strspn$15:	; £temporary3051 = return_value

strspn$16:	; if £temporary3051 != int8$0# goto 19
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

strcspn$2:	; £temporary3055 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcspn$3:	; £temporary3057 = mainString + £temporary3055
	mov rsi, [rbp + 24]
	add rsi, rax

strcspn$4:	; £field344 -> £temporary3057 = *£temporary3057

strcspn$5:	; if £field344 -> £temporary3057 == int1$0# goto 21
	cmp byte [rsi], 0
	je strcspn$21

strcspn$6:	; call header integral zero 0 stack zero 0

strcspn$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strcspn$8:	; £temporary3060 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcspn$9:	; £temporary3062 = mainString + £temporary3060
	mov rsi, [rbp + 24]
	add rsi, rax

strcspn$10:	; £field345 -> £temporary3062 = *£temporary3062

strcspn$11:	; £temporary3063 = int_to_int £field345 -> £temporary3062 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

strcspn$12:	; parameter £temporary3063, offset 76
	mov [rbp + 76], eax

strcspn$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strcspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strcspn$14:	; post call

strcspn$15:	; £temporary3064 = return_value

strcspn$16:	; if £temporary3064 == int8$0# goto 19
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

strpbrk$2:	; £temporary3068 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$3:	; £temporary3070 = mainString + £temporary3068
	mov rsi, [rbp + 24]
	add rsi, rax

strpbrk$4:	; £field346 -> £temporary3070 = *£temporary3070

strpbrk$5:	; if £field346 -> £temporary3070 == int1$0# goto 25
	cmp byte [rsi], 0
	je strpbrk$25

strpbrk$6:	; call header integral zero 0 stack zero 0

strpbrk$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strpbrk$8:	; £temporary3073 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$9:	; £temporary3075 = mainString + £temporary3073
	mov rsi, [rbp + 24]
	add rsi, rax

strpbrk$10:	; £field347 -> £temporary3075 = *£temporary3075

strpbrk$11:	; £temporary3076 = int_to_int £field347 -> £temporary3075 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

strpbrk$12:	; parameter £temporary3076, offset 76
	mov [rbp + 76], eax

strpbrk$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strpbrk$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strpbrk$14:	; post call

strpbrk$15:	; £temporary3077 = return_value

strpbrk$16:	; if £temporary3077 == int8$0# goto 23
	cmp rbx, 0
	je strpbrk$23

strpbrk$17:	; £temporary3079 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$18:	; £temporary3081 = mainString + £temporary3079
	mov rbx, [rbp + 24]
	add rbx, rax

strpbrk$19:	; £field348 -> £temporary3081 = *£temporary3081

strpbrk$20:	; £temporary3082 = &£field348 -> £temporary3081

strpbrk$21:	; return_value = £temporary3082

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

strstr$2:	; £temporary3085 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$3:	; £temporary3087 = mainString + £temporary3085
	mov rsi, [rbp + 24]
	add rsi, rax

strstr$4:	; £field349 -> £temporary3087 = *£temporary3087

strstr$5:	; if £field349 -> £temporary3087 == int1$0# goto 23
	cmp byte [rsi], 0
	je strstr$23

strstr$6:	; call header integral zero 0 stack zero 0

strstr$7:	; £temporary3090 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$8:	; £temporary3091 = mainString + £temporary3090
	mov rbx, [rbp + 24]
	add rbx, rax

strstr$9:	; parameter £temporary3091, offset 68
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

strstr$13:	; £temporary3093 = return_value

strstr$14:	; if £temporary3093 != int4$0# goto 21
	cmp ebx, 0
	jne strstr$21

strstr$15:	; £temporary3095 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$16:	; £temporary3097 = mainString + £temporary3095
	mov rbx, [rbp + 24]
	add rbx, rax

strstr$17:	; £field350 -> £temporary3097 = *£temporary3097

strstr$18:	; £temporary3098 = &£field350 -> £temporary3097

strstr$19:	; return_value = £temporary3098

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

strlen$2:	; £temporary3101 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

strlen$3:	; £temporary3103 = string + £temporary3101
	mov rsi, [rbp + 24]
	add rsi, rax

strlen$4:	; £field351 -> £temporary3103 = *£temporary3103

strlen$5:	; if £field351 -> £temporary3103 == int1$0# goto 8
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

strerror$3:	; £temporary3106 = return_value

strerror$4:	; localeConvPtr = £temporary3106
	mov [rbp + 28], rbx

strerror$5:	; if localeConvPtr == int8$0# goto 9
	cmp qword [rbp + 28], 0
	je strerror$9

strerror$6:	; £field352 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

strerror$7:	; £temporary3108 = £field352 -> localeConvPtr
	mov rax, [rsi + 56]

strerror$8:	; goto 10
	jmp strerror$10

strerror$9:	; £temporary3108 = int8$0#
	mov rax, 0

strerror$10:	; messageList = £temporary3108
	mov [rbp + 36], rax

strerror$11:	; if messageList == int8$0# goto 14
	cmp qword [rbp + 36], 0
	je strerror$14

strerror$12:	; £temporary3110 = messageList
	mov rax, [rbp + 36]

strerror$13:	; goto 15
	jmp strerror$15

strerror$14:	; £temporary3110 = enMessageList
	mov rax, enMessageList

strerror$15:	; messageList = £temporary3110
	mov [rbp + 36], rax

strerror$16:	; £temporary3111 = int_to_int errno (Signed_Int -> Pointer)
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

strerror$17:	; £temporary3112 = £temporary3111 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strerror$18:	; £temporary3113 = messageList + £temporary3112
	mov rsi, [rbp + 36]
	add rsi, rax

strerror$19:	; £field353 -> £temporary3113 = *£temporary3113

strerror$20:	; return_value = £field353 -> £temporary3113
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

strtok$2:	; £field354 -> string = *string
	mov rsi, [rbp + 24]

strtok$3:	; if £field354 -> string != int1$0# goto 6
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

strtok$7:	; £temporary3116 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$8:	; £temporary3118 = string + £temporary3116
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$9:	; £field355 -> £temporary3118 = *£temporary3118

strtok$10:	; if £field355 -> £temporary3118 == int1$0# goto 36
	cmp byte [rsi], 0
	je strtok$36

strtok$11:	; call header integral zero 0 stack zero 0

strtok$12:	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

strtok$13:	; £temporary3121 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$14:	; £temporary3123 = string + £temporary3121
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$15:	; £field356 -> £temporary3123 = *£temporary3123

strtok$16:	; £temporary3124 = int_to_int £field356 -> £temporary3123 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$17
	neg al
	neg eax

strtok$17:	; parameter £temporary3124, offset 84
	mov [rbp + 84], eax

strtok$18:	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], strtok$19
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

strtok$19:	; post call

strtok$20:	; £temporary3125 = return_value

strtok$21:	; if £temporary3125 == int8$0# goto 34
	cmp rbx, 0
	je strtok$34

strtok$22:	; £temporary3127 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$23:	; £temporary3129 = string + £temporary3127
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$24:	; £field357 -> £temporary3129 = *£temporary3129

strtok$25:	; £field357 -> £temporary3129 = int1$0#
	mov byte [rsi], 0

strtok$26:	; £temporary3130 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

strtok$27:	; £temporary3131 = int_to_int £temporary3130 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strtok$28:	; £temporary3133 = string + £temporary3131
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$29:	; £field358 -> £temporary3133 = *£temporary3133

strtok$30:	; £temporary3134 = &£field358 -> £temporary3133

strtok$31:	; token = £temporary3134
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

strtok$36:	; £temporary3135 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$37:	; £temporary3137 = string + £temporary3135
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$38:	; £field359 -> £temporary3137 = *£temporary3137

strtok$39:	; £temporary3138 = &£field359 -> £temporary3137

strtok$40:	; token = £temporary3138
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

strtok$46:	; £field360 -> token = *token
	mov rsi, [token]

strtok$47:	; if £field360 -> token != int1$0# goto 50
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

strtok$51:	; £temporary3141 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$52:	; £temporary3143 = token + £temporary3141
	mov rsi, [token]
	add rsi, rax

strtok$53:	; £field361 -> £temporary3143 = *£temporary3143

strtok$54:	; if £field361 -> £temporary3143 == int1$0# goto 81
	cmp byte [rsi], 0
	je strtok$81

strtok$55:	; call header integral zero 0 stack zero 0

strtok$56:	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

strtok$57:	; £temporary3146 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$58:	; £temporary3148 = token + £temporary3146
	mov rsi, [token]
	add rsi, rax

strtok$59:	; £field362 -> £temporary3148 = *£temporary3148

strtok$60:	; £temporary3149 = int_to_int £field362 -> £temporary3148 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$61
	neg al
	neg eax

strtok$61:	; parameter £temporary3149, offset 84
	mov [rbp + 84], eax

strtok$62:	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], strtok$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

strtok$63:	; post call

strtok$64:	; £temporary3150 = return_value

strtok$65:	; if £temporary3150 == int8$0# goto 79
	cmp rbx, 0
	je strtok$79

strtok$66:	; tokenStart2 = token
	mov rax, [token]
	mov [rbp + 52], rax

strtok$67:	; £temporary3152 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$68:	; £temporary3154 = token + £temporary3152
	mov rsi, [token]
	add rsi, rax

strtok$69:	; £field363 -> £temporary3154 = *£temporary3154

strtok$70:	; £field363 -> £temporary3154 = int1$0#
	mov byte [rsi], 0

strtok$71:	; £temporary3155 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

strtok$72:	; £temporary3156 = int_to_int £temporary3155 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strtok$73:	; £temporary3158 = token + £temporary3156
	mov rsi, [token]
	add rsi, rax

strtok$74:	; £field364 -> £temporary3158 = *£temporary3158

strtok$75:	; £temporary3159 = &£field364 -> £temporary3158

strtok$76:	; token = £temporary3159
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

strtok$82:	; £temporary3160 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$83:	; £temporary3162 = token + £temporary3160
	mov rsi, [token]
	add rsi, rax

strtok$84:	; £field365 -> £temporary3162 = *£temporary3162

strtok$85:	; £temporary3163 = &£field365 -> £temporary3162

strtok$86:	; token = £temporary3163
	mov [token], rsi

strtok$87:	; return_value = tokenStart
	mov rbx, [rbp + 44]

strtok$88:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$89:	; function end strtok

memcpy:	; £temporary3168 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

memcpy$1:	; charTarget = £temporary3168
	mov [rbp + 44], rax

memcpy$2:	; £temporary3169 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

memcpy$3:	; charSource = £temporary3169
	mov [rbp + 52], rax

memcpy$4:	; index = int4$0#
	mov dword [rbp + 60], 0

memcpy$5:	; if index >= size goto 15
	mov eax, [rbp + 60]
	cmp eax, [rbp + 40]
	jge memcpy$15

memcpy$6:	; £temporary3172 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcpy$7:	; £temporary3174 = charTarget + £temporary3172
	mov rsi, [rbp + 44]
	add rsi, rax

memcpy$8:	; £field366 -> £temporary3174 = *£temporary3174

memcpy$9:	; £temporary3175 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcpy$10:	; £temporary3177 = charSource + £temporary3175
	mov rdi, [rbp + 52]
	add rdi, rax

memcpy$11:	; £field367 -> £temporary3177 = *£temporary3177

memcpy$12:	; £field366 -> £temporary3174 = £field367 -> £temporary3177
	mov al, [rdi]
	mov [rsi], al

memcpy$13:	; ++index
	inc dword [rbp + 60]

memcpy$14:	; goto 5
	jmp memcpy$5

memcpy$15:	; £temporary3178 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

memcpy$16:	; return_value = £temporary3178

memcpy$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memcpy$18:	; function end memcpy

memmove:	; £temporary3179 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

memmove$1:	; charTarget = £temporary3179
	mov [rbp + 44], rax

memmove$2:	; £temporary3180 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

memmove$3:	; charSource = £temporary3180
	mov [rbp + 52], rax

memmove$4:	; if source >= target goto 17
	mov rax, [rbp + 32]
	cmp rax, [rbp + 24]
	jge memmove$17

memmove$5:	; £temporary3182 = size - int4$1#
	mov eax, [rbp + 40]
	dec eax

memmove$6:	; index = £temporary3182
	mov [rbp + 60], eax

memmove$7:	; if index < int4$0# goto 28
	cmp dword [rbp + 60], 0
	jl memmove$28

memmove$8:	; £temporary3185 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$9:	; £temporary3187 = charTarget + £temporary3185
	mov rsi, [rbp + 44]
	add rsi, rax

memmove$10:	; £field368 -> £temporary3187 = *£temporary3187

memmove$11:	; £temporary3188 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$12:	; £temporary3190 = charSource + £temporary3188
	mov rdi, [rbp + 52]
	add rdi, rax

memmove$13:	; £field369 -> £temporary3190 = *£temporary3190

memmove$14:	; £field368 -> £temporary3187 = £field369 -> £temporary3190
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

memmove$19:	; £temporary3193 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$20:	; £temporary3195 = charTarget + £temporary3193
	mov rsi, [rbp + 44]
	add rsi, rax

memmove$21:	; £field370 -> £temporary3195 = *£temporary3195

memmove$22:	; £temporary3196 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$23:	; £temporary3198 = charSource + £temporary3196
	mov rdi, [rbp + 52]
	add rdi, rax

memmove$24:	; £field371 -> £temporary3198 = *£temporary3198

memmove$25:	; £field370 -> £temporary3195 = £field371 -> £temporary3198
	mov al, [rdi]
	mov [rsi], al

memmove$26:	; ++index
	inc dword [rbp + 60]

memmove$27:	; goto 18
	jmp memmove$18

memmove$28:	; £temporary3199 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

memmove$29:	; return_value = £temporary3199

memmove$30:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memmove$31:	; function end memmove

memcmp:	; £temporary3200 = int_to_int left (Pointer -> Pointer)
	mov rax, [rbp + 24]

memcmp$1:	; charLeft = £temporary3200
	mov [rbp + 44], rax

memcmp$2:	; £temporary3201 = int_to_int right (Pointer -> Pointer)
	mov rax, [rbp + 32]

memcmp$3:	; charRight = £temporary3201
	mov [rbp + 52], rax

memcmp$4:	; index = int4$0#
	mov dword [rbp + 60], 0

memcmp$5:	; if index >= size goto 26
	mov eax, [rbp + 60]
	cmp eax, [rbp + 40]
	jge memcmp$26

memcmp$6:	; £temporary3204 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$7:	; £temporary3206 = charLeft + £temporary3204
	mov rsi, [rbp + 44]
	add rsi, rax

memcmp$8:	; £field372 -> £temporary3206 = *£temporary3206

memcmp$9:	; £temporary3207 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$10:	; £temporary3209 = charRight + £temporary3207
	mov rdi, [rbp + 52]
	add rdi, rax

memcmp$11:	; £field373 -> £temporary3209 = *£temporary3209

memcmp$12:	; if £field372 -> £temporary3206 >= £field373 -> £temporary3209 goto 15
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

memcmp$15:	; £temporary3211 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$16:	; £temporary3213 = charLeft + £temporary3211
	mov rsi, [rbp + 44]
	add rsi, rax

memcmp$17:	; £field374 -> £temporary3213 = *£temporary3213

memcmp$18:	; £temporary3214 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$19:	; £temporary3216 = charRight + £temporary3214
	mov rdi, [rbp + 52]
	add rdi, rax

memcmp$20:	; £field375 -> £temporary3216 = *£temporary3216

memcmp$21:	; if £field374 -> £temporary3213 <= £field375 -> £temporary3216 goto 24
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

memchr$1:	; £temporary3218 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

memchr$2:	; charBlock = £temporary3218
	mov [rbp + 44], rax

memchr$3:	; £temporary3219 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

memchr$4:	; c = £temporary3219
	mov [rbp + 52], al

memchr$5:	; index = int4$0#
	mov dword [rbp + 40], 0

memchr$6:	; if index >= size goto 20
	mov eax, [rbp + 40]
	cmp eax, [rbp + 36]
	jge memchr$20

memchr$7:	; £temporary3222 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

memchr$8:	; £temporary3224 = charBlock + £temporary3222
	mov rsi, [rbp + 44]
	add rsi, rax

memchr$9:	; £field376 -> £temporary3224 = *£temporary3224

memchr$10:	; if £field376 -> £temporary3224 != c goto 18
	mov al, [rsi]
	cmp al, [rbp + 52]
	jne memchr$18

memchr$11:	; £temporary3226 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

memchr$12:	; £temporary3228 = charBlock + £temporary3226
	mov rbx, [rbp + 44]
	add rbx, rax

memchr$13:	; £field377 -> £temporary3228 = *£temporary3228

memchr$14:	; £temporary3229 = &£field377 -> £temporary3228

memchr$15:	; £temporary3230 = int_to_int £temporary3229 (Pointer -> Pointer)

memchr$16:	; return_value = £temporary3230

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

memset:	; £temporary3231 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

memset$1:	; charBlock = £temporary3231
	mov [rbp + 40], rax

memset$2:	; £temporary3232 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

memset$3:	; c = £temporary3232
	mov [rbp + 48], al

memset$4:	; index = int4$0#
	mov dword [rbp + 49], 0

memset$5:	; if index >= size goto 12
	mov eax, [rbp + 49]
	cmp eax, [rbp + 36]
	jge memset$12

memset$6:	; £temporary3235 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

memset$7:	; £temporary3237 = charBlock + £temporary3235
	mov rsi, [rbp + 40]
	add rsi, rax

memset$8:	; £field378 -> £temporary3237 = *£temporary3237

memset$9:	; £field378 -> £temporary3237 = c
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
