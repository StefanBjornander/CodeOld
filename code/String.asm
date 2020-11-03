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
	; IntegralToIntegral £temporary2425 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; BinaryAdd £temporary2427 source £temporary2425
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary2424 -> £temporary2427 £temporary2427 0

 strcpy$4:
	; Equal 14 £temporary2424 -> £temporary2427 0
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary2431 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; BinaryAdd £temporary2433 target £temporary2431
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary2430 -> £temporary2433 £temporary2433 0

 strcpy$8:
	; IntegralToIntegral £temporary2435 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; BinaryAdd £temporary2437 source £temporary2435
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary2434 -> £temporary2437 £temporary2437 0

 strcpy$11:
	; Assign £temporary2430 -> £temporary2433 £temporary2434 -> £temporary2437
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$13:
	; Goto 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary2439 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; BinaryAdd £temporary2441 target £temporary2439
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary2438 -> £temporary2441 £temporary2441 0

 strcpy$17:
	; Assign £temporary2438 -> £temporary2441 0
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
	; IntegralToIntegral £temporary2444 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; BinaryAdd £temporary2446 source £temporary2444
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary2443 -> £temporary2446 £temporary2446 0

 strncpy$5:
	; Equal 15 £temporary2443 -> £temporary2446 0
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary2451 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; BinaryAdd £temporary2453 target £temporary2451
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary2450 -> £temporary2453 £temporary2453 0

 strncpy$9:
	; IntegralToIntegral £temporary2455 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; BinaryAdd £temporary2457 source £temporary2455
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary2454 -> £temporary2457 £temporary2457 0

 strncpy$12:
	; Assign £temporary2450 -> £temporary2453 £temporary2454 -> £temporary2457
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
	; IntegralToIntegral £temporary2461 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; BinaryAdd £temporary2463 target £temporary2461
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary2460 -> £temporary2463 £temporary2463 0

 strncpy$19:
	; Assign £temporary2460 -> £temporary2463 0
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
	; GetReturnValue £temporary2464

 strcat$5:
	; Assign targetLength £temporary2464
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary2466 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; BinaryAdd £temporary2468 source £temporary2466
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary2465 -> £temporary2468 £temporary2468 0

 strcat$10:
	; Equal 21 £temporary2465 -> £temporary2468 0
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; BinaryAdd £temporary2471 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary2473 £temporary2471
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; BinaryAdd £temporary2475 target £temporary2473
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary2472 -> £temporary2475 £temporary2475 0

 strcat$15:
	; IntegralToIntegral £temporary2477 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; BinaryAdd £temporary2479 source £temporary2477
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary2476 -> £temporary2479 £temporary2479 0

 strcat$18:
	; Assign £temporary2472 -> £temporary2475 £temporary2476 -> £temporary2479
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$20:
	; Goto 7
	jmp strcat$7

 strcat$21:
	; BinaryAdd £temporary2480 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary2482 £temporary2480
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; BinaryAdd £temporary2484 target £temporary2482
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary2481 -> £temporary2484 £temporary2484 0

 strcat$25:
	; Assign £temporary2481 -> £temporary2484 0
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
	; GetReturnValue £temporary2485

 strncat$5:
	; Assign targetLength £temporary2485
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$7:
	; BinarySubtract £temporary2486 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; SignedGreaterThanEqual 23 index £temporary2486
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary2489 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; BinaryAdd £temporary2491 source £temporary2489
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary2488 -> £temporary2491 £temporary2491 0

 strncat$12:
	; Equal 23 £temporary2488 -> £temporary2491 0
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; BinaryAdd £temporary2495 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary2497 £temporary2495
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; BinaryAdd £temporary2499 target £temporary2497
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary2496 -> £temporary2499 £temporary2499 0

 strncat$17:
	; IntegralToIntegral £temporary2501 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; BinaryAdd £temporary2503 source £temporary2501
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary2500 -> £temporary2503 £temporary2503 0

 strncat$20:
	; Assign £temporary2496 -> £temporary2499 £temporary2500 -> £temporary2503
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$22:
	; Goto 7
	jmp strncat$7

 strncat$23:
	; BinaryAdd £temporary2504 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; BinarySubtract £temporary2505 £temporary2504 1
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary2507 £temporary2505
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; BinaryAdd £temporary2509 target £temporary2507
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary2506 -> £temporary2509 £temporary2509 0

 strncat$28:
	; Assign £temporary2506 -> £temporary2509 0
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
	; IntegralToIntegral £temporary2512 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; BinaryAdd £temporary2514 left £temporary2512
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary2511 -> £temporary2514 £temporary2514 0

 strcmp$4:
	; NotEqual 10 £temporary2511 -> £temporary2514 0
	cmp byte [rsi], 0
	jne strcmp$10

 strcmp$5:
	; IntegralToIntegral £temporary2517 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; BinaryAdd £temporary2519 right £temporary2517
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary2516 -> £temporary2519 £temporary2519 0

 strcmp$8:
	; NotEqual 10 £temporary2516 -> £temporary2519 0
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
	; IntegralToIntegral £temporary2523 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$11:
	; BinaryAdd £temporary2525 left £temporary2523
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$12:
	; Dereference £temporary2522 -> £temporary2525 £temporary2525 0

 strcmp$13:
	; NotEqual 15 £temporary2522 -> £temporary2525 0
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
	; IntegralToIntegral £temporary2528 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$16:
	; BinaryAdd £temporary2530 right £temporary2528
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$17:
	; Dereference £temporary2527 -> £temporary2530 £temporary2530 0

 strcmp$18:
	; NotEqual 20 £temporary2527 -> £temporary2530 0
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
	; IntegralToIntegral £temporary2533 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$21:
	; BinaryAdd £temporary2535 left £temporary2533
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$22:
	; Dereference £temporary2532 -> £temporary2535 £temporary2535 0

 strcmp$23:
	; IntegralToIntegral £temporary2537 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; BinaryAdd £temporary2539 right £temporary2537
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$25:
	; Dereference £temporary2536 -> £temporary2539 £temporary2539 0

 strcmp$26:
	; SignedGreaterThanEqual 28 £temporary2532 -> £temporary2535 £temporary2536 -> £temporary2539
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
	; IntegralToIntegral £temporary2542 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$29:
	; BinaryAdd £temporary2544 left £temporary2542
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$30:
	; Dereference £temporary2541 -> £temporary2544 £temporary2544 0

 strcmp$31:
	; IntegralToIntegral £temporary2546 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$32:
	; BinaryAdd £temporary2548 right £temporary2546
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$33:
	; Dereference £temporary2545 -> £temporary2548 £temporary2548 0

 strcmp$34:
	; SignedLessThanEqual 36 £temporary2541 -> £temporary2544 £temporary2545 -> £temporary2548
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
	; IntegralToIntegral £temporary2554 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; BinaryAdd £temporary2556 left £temporary2554
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary2553 -> £temporary2556 £temporary2556 0

 strncmp$5:
	; NotEqual 11 £temporary2553 -> £temporary2556 0
	cmp byte [rsi], 0
	jne strncmp$11

 strncmp$6:
	; IntegralToIntegral £temporary2559 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; BinaryAdd £temporary2561 right £temporary2559
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary2558 -> £temporary2561 £temporary2561 0

 strncmp$9:
	; NotEqual 11 £temporary2558 -> £temporary2561 0
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
	; IntegralToIntegral £temporary2565 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$12:
	; BinaryAdd £temporary2567 left £temporary2565
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$13:
	; Dereference £temporary2564 -> £temporary2567 £temporary2567 0

 strncmp$14:
	; NotEqual 16 £temporary2564 -> £temporary2567 0
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
	; IntegralToIntegral £temporary2570 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$17:
	; BinaryAdd £temporary2572 right £temporary2570
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$18:
	; Dereference £temporary2569 -> £temporary2572 £temporary2572 0

 strncmp$19:
	; NotEqual 21 £temporary2569 -> £temporary2572 0
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
	; IntegralToIntegral £temporary2575 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$22:
	; BinaryAdd £temporary2577 left £temporary2575
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$23:
	; Dereference £temporary2574 -> £temporary2577 £temporary2577 0

 strncmp$24:
	; IntegralToIntegral £temporary2579 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; BinaryAdd £temporary2581 right £temporary2579
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$26:
	; Dereference £temporary2578 -> £temporary2581 £temporary2581 0

 strncmp$27:
	; SignedGreaterThanEqual 29 £temporary2574 -> £temporary2577 £temporary2578 -> £temporary2581
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
	; IntegralToIntegral £temporary2584 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$30:
	; BinaryAdd £temporary2586 left £temporary2584
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$31:
	; Dereference £temporary2583 -> £temporary2586 £temporary2586 0

 strncmp$32:
	; IntegralToIntegral £temporary2588 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$33:
	; BinaryAdd £temporary2590 right £temporary2588
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$34:
	; Dereference £temporary2587 -> £temporary2590 £temporary2590 0

 strncmp$35:
	; SignedLessThanEqual 37 £temporary2583 -> £temporary2586 £temporary2587 -> £temporary2590
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
	; IntegralToIntegral £temporary2592 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary2592
	mov [rbp + 40], al

 strchr$2:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary2594 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; BinaryAdd £temporary2596 text £temporary2594
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary2593 -> £temporary2596 £temporary2596 0

 strchr$6:
	; Equal 18 £temporary2593 -> £temporary2596 0
	cmp byte [rsi], 0
	je strchr$18

 strchr$7:
	; IntegralToIntegral £temporary2600 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; BinaryAdd £temporary2602 text £temporary2600
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary2599 -> £temporary2602 £temporary2602 0

 strchr$10:
	; NotEqual 16 £temporary2599 -> £temporary2602 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$16

 strchr$11:
	; IntegralToIntegral £temporary2605 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; BinaryAdd £temporary2607 text £temporary2605
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary2604 -> £temporary2607 £temporary2607 0

 strchr$14:
	; Address £temporary2608 £temporary2604 -> £temporary2607

 strchr$15:
	; Return £temporary2608
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
	; IntegralToIntegral £temporary2609 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary2609
	mov [rbp + 48], al

 strrchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary2611 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; BinaryAdd £temporary2613 text £temporary2611
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary2610 -> £temporary2613 £temporary2613 0

 strrchr$7:
	; Equal 19 £temporary2610 -> £temporary2613 0
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary2617 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; BinaryAdd £temporary2619 text £temporary2617
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary2616 -> £temporary2619 £temporary2619 0

 strrchr$11:
	; NotEqual 17 £temporary2616 -> £temporary2619 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary2622 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; BinaryAdd £temporary2624 text £temporary2622
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary2621 -> £temporary2624 £temporary2624 0

 strrchr$15:
	; Address £temporary2625 £temporary2621 -> £temporary2624

 strrchr$16:
	; Assign result £temporary2625
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
	; IntegralToIntegral £temporary2627 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; BinaryAdd £temporary2629 mainString £temporary2627
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary2626 -> £temporary2629 £temporary2629 0

 strspn$4:
	; Equal 19 £temporary2626 -> £temporary2629 0
	cmp byte [rsi], 0
	je strspn$19

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary2633 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; BinaryAdd £temporary2635 mainString £temporary2633
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary2632 -> £temporary2635 £temporary2635 0

 strspn$10:
	; IntegralToIntegral £temporary2636 £temporary2632 -> £temporary2635
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter signedint £temporary2636 76
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
	; GetReturnValue £temporary2637

 strspn$15:
	; NotEqual 17 £temporary2637 0
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
	; IntegralToIntegral £temporary2640 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; BinaryAdd £temporary2642 mainString £temporary2640
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary2639 -> £temporary2642 £temporary2642 0

 strcspn$4:
	; Equal 19 £temporary2639 -> £temporary2642 0
	cmp byte [rsi], 0
	je strcspn$19

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary2646 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; BinaryAdd £temporary2648 mainString £temporary2646
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary2645 -> £temporary2648 £temporary2648 0

 strcspn$10:
	; IntegralToIntegral £temporary2649 £temporary2645 -> £temporary2648
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter signedint £temporary2649 76
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
	; GetReturnValue £temporary2650

 strcspn$15:
	; Equal 17 £temporary2650 0
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
	; IntegralToIntegral £temporary2653 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; BinaryAdd £temporary2655 mainString £temporary2653
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary2652 -> £temporary2655 £temporary2655 0

 strpbrk$4:
	; Equal 23 £temporary2652 -> £temporary2655 0
	cmp byte [rsi], 0
	je strpbrk$23

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary2659 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; BinaryAdd £temporary2661 mainString £temporary2659
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary2658 -> £temporary2661 £temporary2661 0

 strpbrk$10:
	; IntegralToIntegral £temporary2662 £temporary2658 -> £temporary2661
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter signedint £temporary2662 76
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
	; GetReturnValue £temporary2663

 strpbrk$15:
	; Equal 21 £temporary2663 0
	cmp rbx, 0
	je strpbrk$21

 strpbrk$16:
	; IntegralToIntegral £temporary2666 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; BinaryAdd £temporary2668 mainString £temporary2666
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary2665 -> £temporary2668 £temporary2668 0

 strpbrk$19:
	; Address £temporary2669 £temporary2665 -> £temporary2668

 strpbrk$20:
	; Return £temporary2669
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
	; IntegralToIntegral £temporary2671 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$2:
	; BinaryAdd £temporary2673 mainString £temporary2671
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$3:
	; Dereference £temporary2670 -> £temporary2673 £temporary2673 0

 strstr$4:
	; Equal 21 £temporary2670 -> £temporary2673 0
	cmp byte [rsi], 0
	je strstr$21

 strstr$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$6:
	; IntegralToIntegral £temporary2676 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$7:
	; BinaryAdd £temporary2677 mainString £temporary2676
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$8:
	; Parameter pointer £temporary2677 68
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
	; GetReturnValue £temporary2679

 strstr$13:
	; NotEqual 19 £temporary2679 0
	cmp ebx, 0
	jne strstr$19

 strstr$14:
	; IntegralToIntegral £temporary2682 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$15:
	; BinaryAdd £temporary2684 mainString £temporary2682
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$16:
	; Dereference £temporary2681 -> £temporary2684 £temporary2684 0

 strstr$17:
	; Address £temporary2685 £temporary2681 -> £temporary2684

 strstr$18:
	; Return £temporary2685
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
	; IntegralToIntegral £temporary2687 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; BinaryAdd £temporary2689 string £temporary2687
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary2686 -> £temporary2689 £temporary2689 0

 strlen$4:
	; Equal 7 £temporary2686 -> £temporary2689 0
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
	; Equal 39 string 0
	cmp qword [rbp + 24], 0
	je strtok$39

 strtok$1:
	; Dereference £temporary2703 -> string string 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 4 £temporary2703 -> string 0
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
	; IntegralToIntegral £temporary2706 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$6:
	; BinaryAdd £temporary2708 string £temporary2706
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$7:
	; Dereference £temporary2705 -> £temporary2708 £temporary2708 0

 strtok$8:
	; Equal 33 £temporary2705 -> £temporary2708 0
	cmp byte [rsi], 0
	je strtok$33

 strtok$9:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$10:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$11:
	; IntegralToIntegral £temporary2712 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$12:
	; BinaryAdd £temporary2714 string £temporary2712
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$13:
	; Dereference £temporary2711 -> £temporary2714 £temporary2714 0

 strtok$14:
	; IntegralToIntegral £temporary2715 £temporary2711 -> £temporary2714
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$15
	neg al
	neg eax

 strtok$15:
	; Parameter signedint £temporary2715 84
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
	; GetReturnValue £temporary2716

 strtok$19:
	; Equal 31 £temporary2716 0
	cmp rbx, 0
	je strtok$31

 strtok$20:
	; IntegralToIntegral £temporary2719 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$21:
	; BinaryAdd £temporary2721 string £temporary2719
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$22:
	; Dereference £temporary2718 -> £temporary2721 £temporary2721 0

 strtok$23:
	; Assign £temporary2718 -> £temporary2721 0
	mov byte [rsi], 0

 strtok$24:
	; BinaryAdd £temporary2722 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$25:
	; IntegralToIntegral £temporary2724 £temporary2722
	mov rbx, 4294967295
	and rax, rbx

 strtok$26:
	; BinaryAdd £temporary2726 string £temporary2724
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$27:
	; Dereference £temporary2723 -> £temporary2726 £temporary2726 0

 strtok$28:
	; Address £temporary2727 £temporary2723 -> £temporary2726

 strtok$29:
	; Assign token £temporary2727
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
	; IntegralToIntegral £temporary2729 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$34:
	; BinaryAdd £temporary2731 string £temporary2729
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$35:
	; Dereference £temporary2728 -> £temporary2731 £temporary2731 0

 strtok$36:
	; Address £temporary2732 £temporary2728 -> £temporary2731

 strtok$37:
	; Assign token £temporary2732
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
	; Dereference £temporary2734 -> token token 0
	mov rsi, [token]

 strtok$42:
	; NotEqual 44 £temporary2734 -> token 0
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
	; IntegralToIntegral £temporary2737 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$46:
	; BinaryAdd £temporary2739 token £temporary2737
	mov rsi, [token]
	add rsi, rax

 strtok$47:
	; Dereference £temporary2736 -> £temporary2739 £temporary2739 0

 strtok$48:
	; Equal 74 £temporary2736 -> £temporary2739 0
	cmp byte [rsi], 0
	je strtok$74

 strtok$49:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$50:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$51:
	; IntegralToIntegral £temporary2743 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$52:
	; BinaryAdd £temporary2745 token £temporary2743
	mov rsi, [token]
	add rsi, rax

 strtok$53:
	; Dereference £temporary2742 -> £temporary2745 £temporary2745 0

 strtok$54:
	; IntegralToIntegral £temporary2746 £temporary2742 -> £temporary2745
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$55
	neg al
	neg eax

 strtok$55:
	; Parameter signedint £temporary2746 84
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
	; GetReturnValue £temporary2747

 strtok$59:
	; Equal 72 £temporary2747 0
	cmp rbx, 0
	je strtok$72

 strtok$60:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$61:
	; IntegralToIntegral £temporary2750 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$62:
	; BinaryAdd £temporary2752 token £temporary2750
	mov rsi, [token]
	add rsi, rax

 strtok$63:
	; Dereference £temporary2749 -> £temporary2752 £temporary2752 0

 strtok$64:
	; Assign £temporary2749 -> £temporary2752 0
	mov byte [rsi], 0

 strtok$65:
	; BinaryAdd £temporary2753 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$66:
	; IntegralToIntegral £temporary2755 £temporary2753
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; BinaryAdd £temporary2757 token £temporary2755
	mov rsi, [token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary2754 -> £temporary2757 £temporary2757 0

 strtok$69:
	; Address £temporary2758 £temporary2754 -> £temporary2757

 strtok$70:
	; Assign token £temporary2758
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
	; IntegralToIntegral £temporary2760 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$76:
	; BinaryAdd £temporary2762 token £temporary2760
	mov rsi, [token]
	add rsi, rax

 strtok$77:
	; Dereference £temporary2759 -> £temporary2762 £temporary2762 0

 strtok$78:
	; Address £temporary2763 £temporary2759 -> £temporary2762

 strtok$79:
	; Assign token £temporary2763
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
	; IntegralToIntegral £temporary2824 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary2824
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary2825 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary2825
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
	; IntegralToIntegral £temporary2829 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; BinaryAdd £temporary2831 charBlock £temporary2829
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary2828 -> £temporary2831 £temporary2831 0

 memchr$9:
	; NotEqual 16 £temporary2828 -> £temporary2831 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$16

 memchr$10:
	; IntegralToIntegral £temporary2834 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; BinaryAdd £temporary2836 charBlock £temporary2834
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary2833 -> £temporary2836 £temporary2836 0

 memchr$13:
	; Address £temporary2837 £temporary2833 -> £temporary2836

 memchr$14:
	; IntegralToIntegral £temporary2838 £temporary2837

 memchr$15:
	; Return £temporary2838
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
