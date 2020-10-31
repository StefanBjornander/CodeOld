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
	; Empty

 strcpy$1:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcpy$2:
	; IntegralToIntegral £temporary2425 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$3:
	; BinaryAdd £temporary2427 source £temporary2425
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$4:
	; Dereference £temporary2424 -> £temporary2427 £temporary2427 0

 strcpy$5:
	; Equal 15 £temporary2424 -> £temporary2427 0
	cmp byte [rsi], 0
	je strcpy$15

 strcpy$6:
	; IntegralToIntegral £temporary2431 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$7:
	; BinaryAdd £temporary2433 target £temporary2431
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$8:
	; Dereference £temporary2430 -> £temporary2433 £temporary2433 0

 strcpy$9:
	; IntegralToIntegral £temporary2435 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$10:
	; BinaryAdd £temporary2437 source £temporary2435
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$11:
	; Dereference £temporary2434 -> £temporary2437 £temporary2437 0

 strcpy$12:
	; Assign £temporary2430 -> £temporary2433 £temporary2434 -> £temporary2437
	mov al, [rdi]
	mov [rsi], al

 strcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$14:
	; Goto 2
	jmp strcpy$2

 strcpy$15:
	; IntegralToIntegral £temporary2439 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$16:
	; BinaryAdd £temporary2441 target £temporary2439
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$17:
	; Dereference £temporary2438 -> £temporary2441 £temporary2441 0

 strcpy$18:
	; Assign £temporary2438 -> £temporary2441 0
	mov byte [rsi], 0

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
	; Empty

 strncpy$1:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncpy$2:
	; SignedGreaterThanEqual 16 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$16

 strncpy$3:
	; IntegralToIntegral £temporary2444 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$4:
	; BinaryAdd £temporary2446 source £temporary2444
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$5:
	; Dereference £temporary2443 -> £temporary2446 £temporary2446 0

 strncpy$6:
	; Equal 16 £temporary2443 -> £temporary2446 0
	cmp byte [rsi], 0
	je strncpy$16

 strncpy$7:
	; IntegralToIntegral £temporary2451 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$8:
	; BinaryAdd £temporary2453 target £temporary2451
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$9:
	; Dereference £temporary2450 -> £temporary2453 £temporary2453 0

 strncpy$10:
	; IntegralToIntegral £temporary2455 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$11:
	; BinaryAdd £temporary2457 source £temporary2455
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$12:
	; Dereference £temporary2454 -> £temporary2457 £temporary2457 0

 strncpy$13:
	; Assign £temporary2450 -> £temporary2453 £temporary2454 -> £temporary2457
	mov al, [rdi]
	mov [rsi], al

 strncpy$14:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncpy$15:
	; Goto 2
	jmp strncpy$2

 strncpy$16:
	; SignedGreaterThanEqual 23 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$23

 strncpy$17:
	; IntegralToIntegral £temporary2461 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$18:
	; BinaryAdd £temporary2463 target £temporary2461
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$19:
	; Dereference £temporary2460 -> £temporary2463 £temporary2463 0

 strncpy$20:
	; Assign £temporary2460 -> £temporary2463 0
	mov byte [rsi], 0

 strncpy$21:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncpy$22:
	; Goto 16
	jmp strncpy$16

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
	; Empty

 strcat$1:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcat$2:
	; Parameter pointer target 68
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 strcat$3:
	; Call strlen 44 0
	mov qword [rbp + 44], strcat$4
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strlen

 strcat$4:
	; PostCall 44

 strcat$5:
	; GetReturnValue £temporary2464

 strcat$6:
	; Assign targetLength £temporary2464
	mov [rbp + 44], ebx

 strcat$7:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$8:
	; IntegralToIntegral £temporary2466 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$9:
	; BinaryAdd £temporary2468 source £temporary2466
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$10:
	; Dereference £temporary2465 -> £temporary2468 £temporary2468 0

 strcat$11:
	; Equal 22 £temporary2465 -> £temporary2468 0
	cmp byte [rsi], 0
	je strcat$22

 strcat$12:
	; BinaryAdd £temporary2471 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$13:
	; IntegralToIntegral £temporary2473 £temporary2471
	mov rbx, 4294967295
	and rax, rbx

 strcat$14:
	; BinaryAdd £temporary2475 target £temporary2473
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$15:
	; Dereference £temporary2472 -> £temporary2475 £temporary2475 0

 strcat$16:
	; IntegralToIntegral £temporary2477 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$17:
	; BinaryAdd £temporary2479 source £temporary2477
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$18:
	; Dereference £temporary2476 -> £temporary2479 £temporary2479 0

 strcat$19:
	; Assign £temporary2472 -> £temporary2475 £temporary2476 -> £temporary2479
	mov al, [rdi]
	mov [rsi], al

 strcat$20:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$21:
	; Goto 8
	jmp strcat$8

 strcat$22:
	; BinaryAdd £temporary2480 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$23:
	; IntegralToIntegral £temporary2482 £temporary2480
	mov rbx, 4294967295
	and rax, rbx

 strcat$24:
	; BinaryAdd £temporary2484 target £temporary2482
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$25:
	; Dereference £temporary2481 -> £temporary2484 £temporary2484 0

 strcat$26:
	; Assign £temporary2481 -> £temporary2484 0
	mov byte [rsi], 0

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
	; Empty

 strncat$1:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strncat$2:
	; Parameter pointer target 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 strncat$3:
	; Call strlen 48 0
	mov qword [rbp + 48], strncat$4
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strlen

 strncat$4:
	; PostCall 48

 strncat$5:
	; GetReturnValue £temporary2485

 strncat$6:
	; Assign targetLength £temporary2485
	mov [rbp + 48], ebx

 strncat$7:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$8:
	; BinarySubtract £temporary2486 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$9:
	; SignedGreaterThanEqual 24 index £temporary2486
	cmp [rbp + 44], eax
	jge strncat$24

 strncat$10:
	; IntegralToIntegral £temporary2489 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$11:
	; BinaryAdd £temporary2491 source £temporary2489
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$12:
	; Dereference £temporary2488 -> £temporary2491 £temporary2491 0

 strncat$13:
	; Equal 24 £temporary2488 -> £temporary2491 0
	cmp byte [rsi], 0
	je strncat$24

 strncat$14:
	; BinaryAdd £temporary2495 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$15:
	; IntegralToIntegral £temporary2497 £temporary2495
	mov rbx, 4294967295
	and rax, rbx

 strncat$16:
	; BinaryAdd £temporary2499 target £temporary2497
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$17:
	; Dereference £temporary2496 -> £temporary2499 £temporary2499 0

 strncat$18:
	; IntegralToIntegral £temporary2501 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$19:
	; BinaryAdd £temporary2503 source £temporary2501
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$20:
	; Dereference £temporary2500 -> £temporary2503 £temporary2503 0

 strncat$21:
	; Assign £temporary2496 -> £temporary2499 £temporary2500 -> £temporary2503
	mov al, [rdi]
	mov [rsi], al

 strncat$22:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$23:
	; Goto 8
	jmp strncat$8

 strncat$24:
	; BinaryAdd £temporary2504 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$25:
	; BinarySubtract £temporary2505 £temporary2504 1
	dec eax

 strncat$26:
	; IntegralToIntegral £temporary2507 £temporary2505
	mov rbx, 4294967295
	and rax, rbx

 strncat$27:
	; BinaryAdd £temporary2509 target £temporary2507
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$28:
	; Dereference £temporary2506 -> £temporary2509 £temporary2509 0

 strncat$29:
	; Assign £temporary2506 -> £temporary2509 0
	mov byte [rsi], 0

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
	; Empty

 strcmp$1:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcmp$2:
	; IntegralToIntegral £temporary2512 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$3:
	; BinaryAdd £temporary2514 left £temporary2512
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$4:
	; Dereference £temporary2511 -> £temporary2514 £temporary2514 0

 strcmp$5:
	; NotEqual 11 £temporary2511 -> £temporary2514 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$6:
	; IntegralToIntegral £temporary2517 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$7:
	; BinaryAdd £temporary2519 right £temporary2517
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$8:
	; Dereference £temporary2516 -> £temporary2519 £temporary2519 0

 strcmp$9:
	; NotEqual 11 £temporary2516 -> £temporary2519 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$10:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$11:
	; IntegralToIntegral £temporary2523 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; BinaryAdd £temporary2525 left £temporary2523
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary2522 -> £temporary2525 £temporary2525 0

 strcmp$14:
	; NotEqual 16 £temporary2522 -> £temporary2525 0
	cmp byte [rsi], 0
	jne strcmp$16

 strcmp$15:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$16:
	; IntegralToIntegral £temporary2528 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$17:
	; BinaryAdd £temporary2530 right £temporary2528
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$18:
	; Dereference £temporary2527 -> £temporary2530 £temporary2530 0

 strcmp$19:
	; NotEqual 21 £temporary2527 -> £temporary2530 0
	cmp byte [rsi], 0
	jne strcmp$21

 strcmp$20:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$21:
	; IntegralToIntegral £temporary2533 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$22:
	; BinaryAdd £temporary2535 left £temporary2533
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$23:
	; Dereference £temporary2532 -> £temporary2535 £temporary2535 0

 strcmp$24:
	; IntegralToIntegral £temporary2537 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$25:
	; BinaryAdd £temporary2539 right £temporary2537
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$26:
	; Dereference £temporary2536 -> £temporary2539 £temporary2539 0

 strcmp$27:
	; SignedGreaterThanEqual 29 £temporary2532 -> £temporary2535 £temporary2536 -> £temporary2539
	mov al, [rdi]
	cmp [rsi], al
	jge strcmp$29

 strcmp$28:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$29:
	; IntegralToIntegral £temporary2542 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$30:
	; BinaryAdd £temporary2544 left £temporary2542
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$31:
	; Dereference £temporary2541 -> £temporary2544 £temporary2544 0

 strcmp$32:
	; IntegralToIntegral £temporary2546 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; BinaryAdd £temporary2548 right £temporary2546
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$34:
	; Dereference £temporary2545 -> £temporary2548 £temporary2548 0

 strcmp$35:
	; SignedLessThanEqual 37 £temporary2541 -> £temporary2544 £temporary2545 -> £temporary2548
	mov al, [rdi]
	cmp [rsi], al
	jle strcmp$37

 strcmp$36:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$37:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcmp$38:
	; Goto 2
	jmp strcmp$2

 strcmp$39:
	; FunctionEnd strcmp

section .text

 strncmp:
	; Empty

 strncmp$1:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncmp$2:
	; SignedGreaterThanEqual 40 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncmp$40

 strncmp$3:
	; IntegralToIntegral £temporary2554 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$4:
	; BinaryAdd £temporary2556 left £temporary2554
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$5:
	; Dereference £temporary2553 -> £temporary2556 £temporary2556 0

 strncmp$6:
	; NotEqual 12 £temporary2553 -> £temporary2556 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$7:
	; IntegralToIntegral £temporary2559 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$8:
	; BinaryAdd £temporary2561 right £temporary2559
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$9:
	; Dereference £temporary2558 -> £temporary2561 £temporary2561 0

 strncmp$10:
	; NotEqual 12 £temporary2558 -> £temporary2561 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$11:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$12:
	; IntegralToIntegral £temporary2565 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; BinaryAdd £temporary2567 left £temporary2565
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary2564 -> £temporary2567 £temporary2567 0

 strncmp$15:
	; NotEqual 17 £temporary2564 -> £temporary2567 0
	cmp byte [rsi], 0
	jne strncmp$17

 strncmp$16:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$17:
	; IntegralToIntegral £temporary2570 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$18:
	; BinaryAdd £temporary2572 right £temporary2570
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$19:
	; Dereference £temporary2569 -> £temporary2572 £temporary2572 0

 strncmp$20:
	; NotEqual 22 £temporary2569 -> £temporary2572 0
	cmp byte [rsi], 0
	jne strncmp$22

 strncmp$21:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$22:
	; IntegralToIntegral £temporary2575 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$23:
	; BinaryAdd £temporary2577 left £temporary2575
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$24:
	; Dereference £temporary2574 -> £temporary2577 £temporary2577 0

 strncmp$25:
	; IntegralToIntegral £temporary2579 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$26:
	; BinaryAdd £temporary2581 right £temporary2579
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$27:
	; Dereference £temporary2578 -> £temporary2581 £temporary2581 0

 strncmp$28:
	; SignedGreaterThanEqual 30 £temporary2574 -> £temporary2577 £temporary2578 -> £temporary2581
	mov al, [rdi]
	cmp [rsi], al
	jge strncmp$30

 strncmp$29:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$30:
	; IntegralToIntegral £temporary2584 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$31:
	; BinaryAdd £temporary2586 left £temporary2584
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$32:
	; Dereference £temporary2583 -> £temporary2586 £temporary2586 0

 strncmp$33:
	; IntegralToIntegral £temporary2588 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; BinaryAdd £temporary2590 right £temporary2588
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$35:
	; Dereference £temporary2587 -> £temporary2590 £temporary2590 0

 strncmp$36:
	; SignedLessThanEqual 38 £temporary2583 -> £temporary2586 £temporary2587 -> £temporary2590
	mov al, [rdi]
	cmp [rsi], al
	jle strncmp$38

 strncmp$37:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$38:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncmp$39:
	; Goto 2
	jmp strncmp$2

 strncmp$40:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$41:
	; FunctionEnd strncmp

section .text

 strchr:
	; Empty

 strchr$1:
	; IntegralToIntegral £temporary2592 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

 strchr$2:
	; Assign c £temporary2592
	mov [rbp + 40], al

 strchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$4:
	; IntegralToIntegral £temporary2594 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$5:
	; BinaryAdd £temporary2596 text £temporary2594
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$6:
	; Dereference £temporary2593 -> £temporary2596 £temporary2596 0

 strchr$7:
	; Equal 19 £temporary2593 -> £temporary2596 0
	cmp byte [rsi], 0
	je strchr$19

 strchr$8:
	; IntegralToIntegral £temporary2600 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$9:
	; BinaryAdd £temporary2602 text £temporary2600
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$10:
	; Dereference £temporary2599 -> £temporary2602 £temporary2602 0

 strchr$11:
	; NotEqual 17 £temporary2599 -> £temporary2602 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$12:
	; IntegralToIntegral £temporary2605 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$13:
	; BinaryAdd £temporary2607 text £temporary2605
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$14:
	; Dereference £temporary2604 -> £temporary2607 £temporary2607 0

 strchr$15:
	; Address £temporary2608 £temporary2604 -> £temporary2607

 strchr$16:
	; Return £temporary2608
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$17:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 strchr$18:
	; Goto 4
	jmp strchr$4

 strchr$19:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$20:
	; FunctionEnd strchr

section .text

 strrchr:
	; Empty

 strrchr$1:
	; Assign result 0
	mov qword [rbp + 40], 0

 strrchr$2:
	; IntegralToIntegral £temporary2609 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

 strrchr$3:
	; Assign c £temporary2609
	mov [rbp + 48], al

 strrchr$4:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$5:
	; IntegralToIntegral £temporary2611 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$6:
	; BinaryAdd £temporary2613 text £temporary2611
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$7:
	; Dereference £temporary2610 -> £temporary2613 £temporary2613 0

 strrchr$8:
	; Equal 20 £temporary2610 -> £temporary2613 0
	cmp byte [rsi], 0
	je strrchr$20

 strrchr$9:
	; IntegralToIntegral £temporary2617 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$10:
	; BinaryAdd £temporary2619 text £temporary2617
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$11:
	; Dereference £temporary2616 -> £temporary2619 £temporary2619 0

 strrchr$12:
	; NotEqual 18 £temporary2616 -> £temporary2619 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$18

 strrchr$13:
	; IntegralToIntegral £temporary2622 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$14:
	; BinaryAdd £temporary2624 text £temporary2622
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$15:
	; Dereference £temporary2621 -> £temporary2624 £temporary2624 0

 strrchr$16:
	; Address £temporary2625 £temporary2621 -> £temporary2624

 strrchr$17:
	; Assign result £temporary2625
	mov [rbp + 40], rsi

 strrchr$18:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 strrchr$19:
	; Goto 5
	jmp strrchr$5

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
	; Empty

 strspn$1:
	; Assign index 0
	mov dword [rbp + 40], 0

 strspn$2:
	; IntegralToIntegral £temporary2627 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$3:
	; BinaryAdd £temporary2629 mainString £temporary2627
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$4:
	; Dereference £temporary2626 -> £temporary2629 £temporary2629 0

 strspn$5:
	; Equal 20 £temporary2626 -> £temporary2629 0
	cmp byte [rsi], 0
	je strspn$20

 strspn$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$8:
	; IntegralToIntegral £temporary2633 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$9:
	; BinaryAdd £temporary2635 mainString £temporary2633
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$10:
	; Dereference £temporary2632 -> £temporary2635 £temporary2635 0

 strspn$11:
	; IntegralToIntegral £temporary2636 £temporary2632 -> £temporary2635
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

 strspn$12:
	; Parameter signedint £temporary2636 76
	mov [rbp + 76], eax

 strspn$13:
	; Call strchr 44 0
	mov qword [rbp + 44], strspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strspn$14:
	; PostCall 44

 strspn$15:
	; GetReturnValue £temporary2637

 strspn$16:
	; NotEqual 18 £temporary2637 0
	cmp rbx, 0
	jne strspn$18

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
	; Goto 2
	jmp strspn$2

 strspn$20:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$21:
	; FunctionEnd strspn

section .text

 strcspn:
	; Empty

 strcspn$1:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcspn$2:
	; IntegralToIntegral £temporary2640 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$3:
	; BinaryAdd £temporary2642 mainString £temporary2640
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$4:
	; Dereference £temporary2639 -> £temporary2642 £temporary2642 0

 strcspn$5:
	; Equal 20 £temporary2639 -> £temporary2642 0
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$8:
	; IntegralToIntegral £temporary2646 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$9:
	; BinaryAdd £temporary2648 mainString £temporary2646
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$10:
	; Dereference £temporary2645 -> £temporary2648 £temporary2648 0

 strcspn$11:
	; IntegralToIntegral £temporary2649 £temporary2645 -> £temporary2648
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

 strcspn$12:
	; Parameter signedint £temporary2649 76
	mov [rbp + 76], eax

 strcspn$13:
	; Call strchr 44 0
	mov qword [rbp + 44], strcspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strcspn$14:
	; PostCall 44

 strcspn$15:
	; GetReturnValue £temporary2650

 strcspn$16:
	; Equal 18 £temporary2650 0
	cmp rbx, 0
	je strcspn$18

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
	; Goto 2
	jmp strcspn$2

 strcspn$20:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$21:
	; FunctionEnd strcspn

section .text

 strpbrk:
	; Empty

 strpbrk$1:
	; Assign index 0
	mov dword [rbp + 40], 0

 strpbrk$2:
	; IntegralToIntegral £temporary2653 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$3:
	; BinaryAdd £temporary2655 mainString £temporary2653
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$4:
	; Dereference £temporary2652 -> £temporary2655 £temporary2655 0

 strpbrk$5:
	; Equal 24 £temporary2652 -> £temporary2655 0
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$8:
	; IntegralToIntegral £temporary2659 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$9:
	; BinaryAdd £temporary2661 mainString £temporary2659
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$10:
	; Dereference £temporary2658 -> £temporary2661 £temporary2661 0

 strpbrk$11:
	; IntegralToIntegral £temporary2662 £temporary2658 -> £temporary2661
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

 strpbrk$12:
	; Parameter signedint £temporary2662 76
	mov [rbp + 76], eax

 strpbrk$13:
	; Call strchr 44 0
	mov qword [rbp + 44], strpbrk$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strpbrk$14:
	; PostCall 44

 strpbrk$15:
	; GetReturnValue £temporary2663

 strpbrk$16:
	; Equal 22 £temporary2663 0
	cmp rbx, 0
	je strpbrk$22

 strpbrk$17:
	; IntegralToIntegral £temporary2666 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$18:
	; BinaryAdd £temporary2668 mainString £temporary2666
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$19:
	; Dereference £temporary2665 -> £temporary2668 £temporary2668 0

 strpbrk$20:
	; Address £temporary2669 £temporary2665 -> £temporary2668

 strpbrk$21:
	; Return £temporary2669
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$22:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strpbrk$23:
	; Goto 2
	jmp strpbrk$2

 strpbrk$24:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$25:
	; FunctionEnd strpbrk

section .text

 strstr:
	; Empty

 strstr$1:
	; Assign index 0
	mov dword [rbp + 40], 0

 strstr$2:
	; IntegralToIntegral £temporary2671 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$3:
	; BinaryAdd £temporary2673 mainString £temporary2671
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$4:
	; Dereference £temporary2670 -> £temporary2673 £temporary2673 0

 strstr$5:
	; Equal 22 £temporary2670 -> £temporary2673 0
	cmp byte [rsi], 0
	je strstr$22

 strstr$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$7:
	; IntegralToIntegral £temporary2676 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; BinaryAdd £temporary2677 mainString £temporary2676
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$9:
	; Parameter pointer £temporary2677 68
	mov [rbp + 68], rbx

 strstr$10:
	; Parameter pointer subString 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strstr$11:
	; Call strcmp 44 0
	mov qword [rbp + 44], strstr$12
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strcmp

 strstr$12:
	; PostCall 44

 strstr$13:
	; GetReturnValue £temporary2679

 strstr$14:
	; NotEqual 20 £temporary2679 0
	cmp ebx, 0
	jne strstr$20

 strstr$15:
	; IntegralToIntegral £temporary2682 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$16:
	; BinaryAdd £temporary2684 mainString £temporary2682
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$17:
	; Dereference £temporary2681 -> £temporary2684 £temporary2684 0

 strstr$18:
	; Address £temporary2685 £temporary2681 -> £temporary2684

 strstr$19:
	; Return £temporary2685
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$20:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strstr$21:
	; Goto 2
	jmp strstr$2

 strstr$22:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$23:
	; FunctionEnd strstr

section .text

 strlen:
	; Empty

 strlen$1:
	; Assign index 0
	mov dword [rbp + 32], 0

 strlen$2:
	; IntegralToIntegral £temporary2687 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$3:
	; BinaryAdd £temporary2689 string £temporary2687
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$4:
	; Dereference £temporary2686 -> £temporary2689 £temporary2689 0

 strlen$5:
	; Equal 8 £temporary2686 -> £temporary2689 0
	cmp byte [rsi], 0
	je strlen$8

 strlen$6:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 strlen$7:
	; Goto 2
	jmp strlen$2

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
	; Call localeconv 28 0
	mov qword [rbp + 28], strerror$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 strerror$2:
	; PostCall 28

 strerror$3:
	; GetReturnValue £temporary2692

 strerror$4:
	; Assign localeConvPtr £temporary2692
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; Dereference £temporary2694 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign £temporary2695 £temporary2694 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; Goto 10
	jmp strerror$10

 strerror$9:
	; Assign £temporary2695 0
	mov rax, 0

 strerror$10:
	; Assign messageList £temporary2695
	mov [rbp + 36], rax

 strerror$11:
	; Equal 14 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; Assign £temporary2697 messageList
	mov rax, [rbp + 36]

 strerror$13:
	; Goto 15
	jmp strerror$15

 strerror$14:
	; Assign £temporary2697 enMessageList
	mov rax, enMessageList

 strerror$15:
	; Assign messageList £temporary2697
	mov [rbp + 36], rax

 strerror$16:
	; IntegralToIntegral £temporary2699 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; UnsignedMultiply £temporary2700 £temporary2699 8
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; BinaryAdd £temporary2701 messageList £temporary2700
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; Dereference £temporary2698 -> £temporary2701 £temporary2701 0

 strerror$20:
	; Return £temporary2698 -> £temporary2701
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
	; Empty

 strtok$1:
	; Equal 40 string 0
	cmp qword [rbp + 24], 0
	je strtok$40

 strtok$2:
	; Dereference £temporary2703 -> string string 0
	mov rsi, [rbp + 24]

 strtok$3:
	; NotEqual 5 £temporary2703 -> string 0
	cmp byte [rsi], 0
	jne strtok$5

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
	; IntegralToIntegral £temporary2706 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; BinaryAdd £temporary2708 string £temporary2706
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary2705 -> £temporary2708 £temporary2708 0

 strtok$9:
	; Equal 34 £temporary2705 -> £temporary2708 0
	cmp byte [rsi], 0
	je strtok$34

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary2712 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; BinaryAdd £temporary2714 string £temporary2712
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary2711 -> £temporary2714 £temporary2714 0

 strtok$15:
	; IntegralToIntegral £temporary2715 £temporary2711 -> £temporary2714
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter signedint £temporary2715 84
	mov [rbp + 84], eax

 strtok$17:
	; Call strchr 52 0
	mov qword [rbp + 52], strtok$18
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$18:
	; PostCall 52

 strtok$19:
	; GetReturnValue £temporary2716

 strtok$20:
	; Equal 32 £temporary2716 0
	cmp rbx, 0
	je strtok$32

 strtok$21:
	; IntegralToIntegral £temporary2719 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; BinaryAdd £temporary2721 string £temporary2719
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary2718 -> £temporary2721 £temporary2721 0

 strtok$24:
	; Assign £temporary2718 -> £temporary2721 0
	mov byte [rsi], 0

 strtok$25:
	; BinaryAdd £temporary2722 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary2724 £temporary2722
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; BinaryAdd £temporary2726 string £temporary2724
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary2723 -> £temporary2726 £temporary2726 0

 strtok$29:
	; Address £temporary2727 £temporary2723 -> £temporary2726

 strtok$30:
	; Assign token £temporary2727
	mov [token], rsi

 strtok$31:
	; Return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$32:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strtok$33:
	; Goto 6
	jmp strtok$6

 strtok$34:
	; IntegralToIntegral £temporary2729 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$35:
	; BinaryAdd £temporary2731 string £temporary2729
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$36:
	; Dereference £temporary2728 -> £temporary2731 £temporary2731 0

 strtok$37:
	; Address £temporary2732 £temporary2728 -> £temporary2731

 strtok$38:
	; Assign token £temporary2732
	mov [token], rsi

 strtok$39:
	; Return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$40:
	; NotEqual 42 token 0
	cmp qword [token], 0
	jne strtok$42

 strtok$41:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$42:
	; Dereference £temporary2734 -> token token 0
	mov rsi, [token]

 strtok$43:
	; NotEqual 45 £temporary2734 -> token 0
	cmp byte [rsi], 0
	jne strtok$45

 strtok$44:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$45:
	; Assign index 0
	mov dword [rbp + 40], 0

 strtok$46:
	; IntegralToIntegral £temporary2737 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$47:
	; BinaryAdd £temporary2739 token £temporary2737
	mov rsi, [token]
	add rsi, rax

 strtok$48:
	; Dereference £temporary2736 -> £temporary2739 £temporary2739 0

 strtok$49:
	; Equal 75 £temporary2736 -> £temporary2739 0
	cmp byte [rsi], 0
	je strtok$75

 strtok$50:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$51:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$52:
	; IntegralToIntegral £temporary2743 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$53:
	; BinaryAdd £temporary2745 token £temporary2743
	mov rsi, [token]
	add rsi, rax

 strtok$54:
	; Dereference £temporary2742 -> £temporary2745 £temporary2745 0

 strtok$55:
	; IntegralToIntegral £temporary2746 £temporary2742 -> £temporary2745
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$56
	neg al
	neg eax

 strtok$56:
	; Parameter signedint £temporary2746 84
	mov [rbp + 84], eax

 strtok$57:
	; Call strchr 52 0
	mov qword [rbp + 52], strtok$58
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$58:
	; PostCall 52

 strtok$59:
	; GetReturnValue £temporary2747

 strtok$60:
	; Equal 73 £temporary2747 0
	cmp rbx, 0
	je strtok$73

 strtok$61:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$62:
	; IntegralToIntegral £temporary2750 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$63:
	; BinaryAdd £temporary2752 token £temporary2750
	mov rsi, [token]
	add rsi, rax

 strtok$64:
	; Dereference £temporary2749 -> £temporary2752 £temporary2752 0

 strtok$65:
	; Assign £temporary2749 -> £temporary2752 0
	mov byte [rsi], 0

 strtok$66:
	; BinaryAdd £temporary2753 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$67:
	; IntegralToIntegral £temporary2755 £temporary2753
	mov rbx, 4294967295
	and rax, rbx

 strtok$68:
	; BinaryAdd £temporary2757 token £temporary2755
	mov rsi, [token]
	add rsi, rax

 strtok$69:
	; Dereference £temporary2754 -> £temporary2757 £temporary2757 0

 strtok$70:
	; Address £temporary2758 £temporary2754 -> £temporary2757

 strtok$71:
	; Assign token £temporary2758
	mov [token], rsi

 strtok$72:
	; Return tokenStart2
	mov rbx, [rbp + 52]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$73:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strtok$74:
	; Goto 46
	jmp strtok$46

 strtok$75:
	; Assign tokenStart token
	mov rax, [token]
	mov [rbp + 44], rax

 strtok$76:
	; IntegralToIntegral £temporary2760 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$77:
	; BinaryAdd £temporary2762 token £temporary2760
	mov rsi, [token]
	add rsi, rax

 strtok$78:
	; Dereference £temporary2759 -> £temporary2762 £temporary2762 0

 strtok$79:
	; Address £temporary2763 £temporary2759 -> £temporary2762

 strtok$80:
	; Assign token £temporary2763
	mov [token], rsi

 strtok$81:
	; Return tokenStart
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$82:
	; FunctionEnd strtok

section .text

 memcpy:
	; IntegralToIntegral £temporary2764 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary2764
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary2765 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary2765
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
	; IntegralToIntegral £temporary2769 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary2771 charTarget £temporary2769
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary2768 -> £temporary2771 £temporary2771 0

 memcpy$9:
	; IntegralToIntegral £temporary2773 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary2775 charSource £temporary2773
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary2772 -> £temporary2775 £temporary2775 0

 memcpy$12:
	; Assign £temporary2768 -> £temporary2771 £temporary2772 -> £temporary2775
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Goto 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary2776 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; Return £temporary2776
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary2777 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary2777
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary2778 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary2778
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
	; IntegralToIntegral £temporary2784 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary2786 charTarget £temporary2784
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary2783 -> £temporary2786 £temporary2786 0

 memmove$10:
	; IntegralToIntegral £temporary2788 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary2790 charSource £temporary2788
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary2787 -> £temporary2790 £temporary2790 0

 memmove$13:
	; Assign £temporary2783 -> £temporary2786 £temporary2787 -> £temporary2790
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
	; IntegralToIntegral £temporary2794 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary2796 charTarget £temporary2794
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary2793 -> £temporary2796 £temporary2796 0

 memmove$21:
	; IntegralToIntegral £temporary2798 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary2800 charSource £temporary2798
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary2797 -> £temporary2800 £temporary2800 0

 memmove$24:
	; Assign £temporary2793 -> £temporary2796 £temporary2797 -> £temporary2800
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Goto 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary2801 target
	mov rbx, [rbp + 24]

 memmove$28:
	; Return £temporary2801
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary2802 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary2802
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary2803 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary2803
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
	; IntegralToIntegral £temporary2807 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary2809 charLeft £temporary2807
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary2806 -> £temporary2809 £temporary2809 0

 memcmp$9:
	; IntegralToIntegral £temporary2811 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary2813 charRight £temporary2811
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary2810 -> £temporary2813 £temporary2813 0

 memcmp$12:
	; SignedGreaterThanEqual 14 £temporary2806 -> £temporary2809 £temporary2810 -> £temporary2813
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
	; IntegralToIntegral £temporary2816 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; BinaryAdd £temporary2818 charLeft £temporary2816
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; Dereference £temporary2815 -> £temporary2818 £temporary2818 0

 memcmp$17:
	; IntegralToIntegral £temporary2820 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; BinaryAdd £temporary2822 charRight £temporary2820
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; Dereference £temporary2819 -> £temporary2822 £temporary2822 0

 memcmp$20:
	; SignedLessThanEqual 22 £temporary2815 -> £temporary2818 £temporary2819 -> £temporary2822
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
	; Empty

 memchr$1:
	; IntegralToIntegral £temporary2824 block
	mov rax, [rbp + 24]

 memchr$2:
	; Assign charBlock £temporary2824
	mov [rbp + 44], rax

 memchr$3:
	; IntegralToIntegral £temporary2825 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

 memchr$4:
	; Assign c £temporary2825
	mov [rbp + 52], al

 memchr$5:
	; Assign index 0
	mov dword [rbp + 40], 0

 memchr$6:
	; SignedGreaterThanEqual 19 index size
	mov eax, [rbp + 36]
	cmp [rbp + 40], eax
	jge memchr$19

 memchr$7:
	; IntegralToIntegral £temporary2829 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$8:
	; BinaryAdd £temporary2831 charBlock £temporary2829
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$9:
	; Dereference £temporary2828 -> £temporary2831 £temporary2831 0

 memchr$10:
	; NotEqual 17 £temporary2828 -> £temporary2831 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$11:
	; IntegralToIntegral £temporary2834 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$12:
	; BinaryAdd £temporary2836 charBlock £temporary2834
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$13:
	; Dereference £temporary2833 -> £temporary2836 £temporary2836 0

 memchr$14:
	; Address £temporary2837 £temporary2833 -> £temporary2836

 memchr$15:
	; IntegralToIntegral £temporary2838 £temporary2837

 memchr$16:
	; Return £temporary2838
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$17:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 memchr$18:
	; Goto 6
	jmp memchr$6

 memchr$19:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$20:
	; FunctionEnd memchr

section .text

 memset:
	; IntegralToIntegral £temporary2839 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary2839
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary2840 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary2840
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
	; IntegralToIntegral £temporary2844 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary2846 charBlock £temporary2844
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary2843 -> £temporary2846 £temporary2846 0

 memset$9:
	; Assign £temporary2843 -> £temporary2846 c
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
