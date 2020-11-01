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
	; IntegralToIntegral £temporary2438 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$3:
	; BinaryAdd £temporary2440 source £temporary2438
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$4:
	; Dereference £temporary2437 -> £temporary2440 £temporary2440 0

 strcpy$5:
	; Equal 15 £temporary2437 -> £temporary2440 0
	cmp byte [rsi], 0
	je strcpy$15

 strcpy$6:
	; IntegralToIntegral £temporary2444 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$7:
	; BinaryAdd £temporary2446 target £temporary2444
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$8:
	; Dereference £temporary2443 -> £temporary2446 £temporary2446 0

 strcpy$9:
	; IntegralToIntegral £temporary2448 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$10:
	; BinaryAdd £temporary2450 source £temporary2448
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$11:
	; Dereference £temporary2447 -> £temporary2450 £temporary2450 0

 strcpy$12:
	; Assign £temporary2443 -> £temporary2446 £temporary2447 -> £temporary2450
	mov al, [rdi]
	mov [rsi], al

 strcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$14:
	; Goto 2
	jmp strcpy$2

 strcpy$15:
	; IntegralToIntegral £temporary2452 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$16:
	; BinaryAdd £temporary2454 target £temporary2452
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$17:
	; Dereference £temporary2451 -> £temporary2454 £temporary2454 0

 strcpy$18:
	; Assign £temporary2451 -> £temporary2454 0
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
	; IntegralToIntegral £temporary2457 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$4:
	; BinaryAdd £temporary2459 source £temporary2457
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$5:
	; Dereference £temporary2456 -> £temporary2459 £temporary2459 0

 strncpy$6:
	; Equal 16 £temporary2456 -> £temporary2459 0
	cmp byte [rsi], 0
	je strncpy$16

 strncpy$7:
	; IntegralToIntegral £temporary2464 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$8:
	; BinaryAdd £temporary2466 target £temporary2464
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$9:
	; Dereference £temporary2463 -> £temporary2466 £temporary2466 0

 strncpy$10:
	; IntegralToIntegral £temporary2468 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$11:
	; BinaryAdd £temporary2470 source £temporary2468
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$12:
	; Dereference £temporary2467 -> £temporary2470 £temporary2470 0

 strncpy$13:
	; Assign £temporary2463 -> £temporary2466 £temporary2467 -> £temporary2470
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
	; IntegralToIntegral £temporary2474 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$18:
	; BinaryAdd £temporary2476 target £temporary2474
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$19:
	; Dereference £temporary2473 -> £temporary2476 £temporary2476 0

 strncpy$20:
	; Assign £temporary2473 -> £temporary2476 0
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
	; GetReturnValue £temporary2477

 strcat$6:
	; Assign targetLength £temporary2477
	mov [rbp + 44], ebx

 strcat$7:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$8:
	; IntegralToIntegral £temporary2479 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$9:
	; BinaryAdd £temporary2481 source £temporary2479
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$10:
	; Dereference £temporary2478 -> £temporary2481 £temporary2481 0

 strcat$11:
	; Equal 22 £temporary2478 -> £temporary2481 0
	cmp byte [rsi], 0
	je strcat$22

 strcat$12:
	; BinaryAdd £temporary2484 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$13:
	; IntegralToIntegral £temporary2486 £temporary2484
	mov rbx, 4294967295
	and rax, rbx

 strcat$14:
	; BinaryAdd £temporary2488 target £temporary2486
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$15:
	; Dereference £temporary2485 -> £temporary2488 £temporary2488 0

 strcat$16:
	; IntegralToIntegral £temporary2490 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$17:
	; BinaryAdd £temporary2492 source £temporary2490
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$18:
	; Dereference £temporary2489 -> £temporary2492 £temporary2492 0

 strcat$19:
	; Assign £temporary2485 -> £temporary2488 £temporary2489 -> £temporary2492
	mov al, [rdi]
	mov [rsi], al

 strcat$20:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$21:
	; Goto 8
	jmp strcat$8

 strcat$22:
	; BinaryAdd £temporary2493 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$23:
	; IntegralToIntegral £temporary2495 £temporary2493
	mov rbx, 4294967295
	and rax, rbx

 strcat$24:
	; BinaryAdd £temporary2497 target £temporary2495
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$25:
	; Dereference £temporary2494 -> £temporary2497 £temporary2497 0

 strcat$26:
	; Assign £temporary2494 -> £temporary2497 0
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
	; GetReturnValue £temporary2498

 strncat$6:
	; Assign targetLength £temporary2498
	mov [rbp + 48], ebx

 strncat$7:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$8:
	; BinarySubtract £temporary2499 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$9:
	; SignedGreaterThanEqual 24 index £temporary2499
	cmp [rbp + 44], eax
	jge strncat$24

 strncat$10:
	; IntegralToIntegral £temporary2502 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$11:
	; BinaryAdd £temporary2504 source £temporary2502
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$12:
	; Dereference £temporary2501 -> £temporary2504 £temporary2504 0

 strncat$13:
	; Equal 24 £temporary2501 -> £temporary2504 0
	cmp byte [rsi], 0
	je strncat$24

 strncat$14:
	; BinaryAdd £temporary2508 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$15:
	; IntegralToIntegral £temporary2510 £temporary2508
	mov rbx, 4294967295
	and rax, rbx

 strncat$16:
	; BinaryAdd £temporary2512 target £temporary2510
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$17:
	; Dereference £temporary2509 -> £temporary2512 £temporary2512 0

 strncat$18:
	; IntegralToIntegral £temporary2514 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$19:
	; BinaryAdd £temporary2516 source £temporary2514
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$20:
	; Dereference £temporary2513 -> £temporary2516 £temporary2516 0

 strncat$21:
	; Assign £temporary2509 -> £temporary2512 £temporary2513 -> £temporary2516
	mov al, [rdi]
	mov [rsi], al

 strncat$22:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$23:
	; Goto 8
	jmp strncat$8

 strncat$24:
	; BinaryAdd £temporary2517 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$25:
	; BinarySubtract £temporary2518 £temporary2517 1
	dec eax

 strncat$26:
	; IntegralToIntegral £temporary2520 £temporary2518
	mov rbx, 4294967295
	and rax, rbx

 strncat$27:
	; BinaryAdd £temporary2522 target £temporary2520
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$28:
	; Dereference £temporary2519 -> £temporary2522 £temporary2522 0

 strncat$29:
	; Assign £temporary2519 -> £temporary2522 0
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
	; IntegralToIntegral £temporary2525 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$3:
	; BinaryAdd £temporary2527 left £temporary2525
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$4:
	; Dereference £temporary2524 -> £temporary2527 £temporary2527 0

 strcmp$5:
	; NotEqual 11 £temporary2524 -> £temporary2527 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$6:
	; IntegralToIntegral £temporary2530 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$7:
	; BinaryAdd £temporary2532 right £temporary2530
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$8:
	; Dereference £temporary2529 -> £temporary2532 £temporary2532 0

 strcmp$9:
	; NotEqual 11 £temporary2529 -> £temporary2532 0
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
	; IntegralToIntegral £temporary2536 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; BinaryAdd £temporary2538 left £temporary2536
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary2535 -> £temporary2538 £temporary2538 0

 strcmp$14:
	; NotEqual 16 £temporary2535 -> £temporary2538 0
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
	; IntegralToIntegral £temporary2541 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$17:
	; BinaryAdd £temporary2543 right £temporary2541
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$18:
	; Dereference £temporary2540 -> £temporary2543 £temporary2543 0

 strcmp$19:
	; NotEqual 21 £temporary2540 -> £temporary2543 0
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
	; IntegralToIntegral £temporary2546 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$22:
	; BinaryAdd £temporary2548 left £temporary2546
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$23:
	; Dereference £temporary2545 -> £temporary2548 £temporary2548 0

 strcmp$24:
	; IntegralToIntegral £temporary2550 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$25:
	; BinaryAdd £temporary2552 right £temporary2550
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$26:
	; Dereference £temporary2549 -> £temporary2552 £temporary2552 0

 strcmp$27:
	; SignedGreaterThanEqual 29 £temporary2545 -> £temporary2548 £temporary2549 -> £temporary2552
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
	; IntegralToIntegral £temporary2555 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$30:
	; BinaryAdd £temporary2557 left £temporary2555
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$31:
	; Dereference £temporary2554 -> £temporary2557 £temporary2557 0

 strcmp$32:
	; IntegralToIntegral £temporary2559 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; BinaryAdd £temporary2561 right £temporary2559
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$34:
	; Dereference £temporary2558 -> £temporary2561 £temporary2561 0

 strcmp$35:
	; SignedLessThanEqual 37 £temporary2554 -> £temporary2557 £temporary2558 -> £temporary2561
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
	; IntegralToIntegral £temporary2567 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$4:
	; BinaryAdd £temporary2569 left £temporary2567
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$5:
	; Dereference £temporary2566 -> £temporary2569 £temporary2569 0

 strncmp$6:
	; NotEqual 12 £temporary2566 -> £temporary2569 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$7:
	; IntegralToIntegral £temporary2572 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$8:
	; BinaryAdd £temporary2574 right £temporary2572
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$9:
	; Dereference £temporary2571 -> £temporary2574 £temporary2574 0

 strncmp$10:
	; NotEqual 12 £temporary2571 -> £temporary2574 0
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
	; IntegralToIntegral £temporary2578 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; BinaryAdd £temporary2580 left £temporary2578
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary2577 -> £temporary2580 £temporary2580 0

 strncmp$15:
	; NotEqual 17 £temporary2577 -> £temporary2580 0
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
	; IntegralToIntegral £temporary2583 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$18:
	; BinaryAdd £temporary2585 right £temporary2583
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$19:
	; Dereference £temporary2582 -> £temporary2585 £temporary2585 0

 strncmp$20:
	; NotEqual 22 £temporary2582 -> £temporary2585 0
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
	; IntegralToIntegral £temporary2588 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$23:
	; BinaryAdd £temporary2590 left £temporary2588
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$24:
	; Dereference £temporary2587 -> £temporary2590 £temporary2590 0

 strncmp$25:
	; IntegralToIntegral £temporary2592 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$26:
	; BinaryAdd £temporary2594 right £temporary2592
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$27:
	; Dereference £temporary2591 -> £temporary2594 £temporary2594 0

 strncmp$28:
	; SignedGreaterThanEqual 30 £temporary2587 -> £temporary2590 £temporary2591 -> £temporary2594
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
	; IntegralToIntegral £temporary2597 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$31:
	; BinaryAdd £temporary2599 left £temporary2597
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$32:
	; Dereference £temporary2596 -> £temporary2599 £temporary2599 0

 strncmp$33:
	; IntegralToIntegral £temporary2601 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; BinaryAdd £temporary2603 right £temporary2601
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$35:
	; Dereference £temporary2600 -> £temporary2603 £temporary2603 0

 strncmp$36:
	; SignedLessThanEqual 38 £temporary2596 -> £temporary2599 £temporary2600 -> £temporary2603
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
	; IntegralToIntegral £temporary2605 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

 strchr$2:
	; Assign c £temporary2605
	mov [rbp + 40], al

 strchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$4:
	; IntegralToIntegral £temporary2607 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$5:
	; BinaryAdd £temporary2609 text £temporary2607
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$6:
	; Dereference £temporary2606 -> £temporary2609 £temporary2609 0

 strchr$7:
	; Equal 19 £temporary2606 -> £temporary2609 0
	cmp byte [rsi], 0
	je strchr$19

 strchr$8:
	; IntegralToIntegral £temporary2613 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$9:
	; BinaryAdd £temporary2615 text £temporary2613
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$10:
	; Dereference £temporary2612 -> £temporary2615 £temporary2615 0

 strchr$11:
	; NotEqual 17 £temporary2612 -> £temporary2615 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$12:
	; IntegralToIntegral £temporary2618 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$13:
	; BinaryAdd £temporary2620 text £temporary2618
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$14:
	; Dereference £temporary2617 -> £temporary2620 £temporary2620 0

 strchr$15:
	; Address £temporary2621 £temporary2617 -> £temporary2620

 strchr$16:
	; Return £temporary2621
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
	; IntegralToIntegral £temporary2622 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

 strrchr$3:
	; Assign c £temporary2622
	mov [rbp + 48], al

 strrchr$4:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$5:
	; IntegralToIntegral £temporary2624 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$6:
	; BinaryAdd £temporary2626 text £temporary2624
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$7:
	; Dereference £temporary2623 -> £temporary2626 £temporary2626 0

 strrchr$8:
	; Equal 20 £temporary2623 -> £temporary2626 0
	cmp byte [rsi], 0
	je strrchr$20

 strrchr$9:
	; IntegralToIntegral £temporary2630 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$10:
	; BinaryAdd £temporary2632 text £temporary2630
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$11:
	; Dereference £temporary2629 -> £temporary2632 £temporary2632 0

 strrchr$12:
	; NotEqual 18 £temporary2629 -> £temporary2632 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$18

 strrchr$13:
	; IntegralToIntegral £temporary2635 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$14:
	; BinaryAdd £temporary2637 text £temporary2635
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$15:
	; Dereference £temporary2634 -> £temporary2637 £temporary2637 0

 strrchr$16:
	; Address £temporary2638 £temporary2634 -> £temporary2637

 strrchr$17:
	; Assign result £temporary2638
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
	; IntegralToIntegral £temporary2640 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$3:
	; BinaryAdd £temporary2642 mainString £temporary2640
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$4:
	; Dereference £temporary2639 -> £temporary2642 £temporary2642 0

 strspn$5:
	; Equal 20 £temporary2639 -> £temporary2642 0
	cmp byte [rsi], 0
	je strspn$20

 strspn$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$8:
	; IntegralToIntegral £temporary2646 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$9:
	; BinaryAdd £temporary2648 mainString £temporary2646
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$10:
	; Dereference £temporary2645 -> £temporary2648 £temporary2648 0

 strspn$11:
	; IntegralToIntegral £temporary2649 £temporary2645 -> £temporary2648
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

 strspn$12:
	; Parameter signedint £temporary2649 76
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
	; GetReturnValue £temporary2650

 strspn$16:
	; NotEqual 18 £temporary2650 0
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
	; IntegralToIntegral £temporary2653 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$3:
	; BinaryAdd £temporary2655 mainString £temporary2653
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$4:
	; Dereference £temporary2652 -> £temporary2655 £temporary2655 0

 strcspn$5:
	; Equal 20 £temporary2652 -> £temporary2655 0
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$8:
	; IntegralToIntegral £temporary2659 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$9:
	; BinaryAdd £temporary2661 mainString £temporary2659
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$10:
	; Dereference £temporary2658 -> £temporary2661 £temporary2661 0

 strcspn$11:
	; IntegralToIntegral £temporary2662 £temporary2658 -> £temporary2661
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

 strcspn$12:
	; Parameter signedint £temporary2662 76
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
	; GetReturnValue £temporary2663

 strcspn$16:
	; Equal 18 £temporary2663 0
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
	; IntegralToIntegral £temporary2666 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$3:
	; BinaryAdd £temporary2668 mainString £temporary2666
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$4:
	; Dereference £temporary2665 -> £temporary2668 £temporary2668 0

 strpbrk$5:
	; Equal 24 £temporary2665 -> £temporary2668 0
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$8:
	; IntegralToIntegral £temporary2672 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$9:
	; BinaryAdd £temporary2674 mainString £temporary2672
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$10:
	; Dereference £temporary2671 -> £temporary2674 £temporary2674 0

 strpbrk$11:
	; IntegralToIntegral £temporary2675 £temporary2671 -> £temporary2674
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

 strpbrk$12:
	; Parameter signedint £temporary2675 76
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
	; GetReturnValue £temporary2676

 strpbrk$16:
	; Equal 22 £temporary2676 0
	cmp rbx, 0
	je strpbrk$22

 strpbrk$17:
	; IntegralToIntegral £temporary2679 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$18:
	; BinaryAdd £temporary2681 mainString £temporary2679
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$19:
	; Dereference £temporary2678 -> £temporary2681 £temporary2681 0

 strpbrk$20:
	; Address £temporary2682 £temporary2678 -> £temporary2681

 strpbrk$21:
	; Return £temporary2682
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
	; IntegralToIntegral £temporary2684 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$3:
	; BinaryAdd £temporary2686 mainString £temporary2684
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$4:
	; Dereference £temporary2683 -> £temporary2686 £temporary2686 0

 strstr$5:
	; Equal 22 £temporary2683 -> £temporary2686 0
	cmp byte [rsi], 0
	je strstr$22

 strstr$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$7:
	; IntegralToIntegral £temporary2689 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; BinaryAdd £temporary2690 mainString £temporary2689
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$9:
	; Parameter pointer £temporary2690 68
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
	; GetReturnValue £temporary2692

 strstr$14:
	; NotEqual 20 £temporary2692 0
	cmp ebx, 0
	jne strstr$20

 strstr$15:
	; IntegralToIntegral £temporary2695 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$16:
	; BinaryAdd £temporary2697 mainString £temporary2695
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$17:
	; Dereference £temporary2694 -> £temporary2697 £temporary2697 0

 strstr$18:
	; Address £temporary2698 £temporary2694 -> £temporary2697

 strstr$19:
	; Return £temporary2698
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
	; IntegralToIntegral £temporary2700 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$3:
	; BinaryAdd £temporary2702 string £temporary2700
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$4:
	; Dereference £temporary2699 -> £temporary2702 £temporary2702 0

 strlen$5:
	; Equal 8 £temporary2699 -> £temporary2702 0
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
	; GetReturnValue £temporary2705

 strerror$4:
	; Assign localeConvPtr £temporary2705
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; Dereference £temporary2707 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign £temporary2708 £temporary2707 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; Goto 10
	jmp strerror$10

 strerror$9:
	; Assign £temporary2708 0
	mov rax, 0

 strerror$10:
	; Assign messageList £temporary2708
	mov [rbp + 36], rax

 strerror$11:
	; Equal 14 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; Assign £temporary2710 messageList
	mov rax, [rbp + 36]

 strerror$13:
	; Goto 15
	jmp strerror$15

 strerror$14:
	; Assign £temporary2710 enMessageList
	mov rax, enMessageList

 strerror$15:
	; Assign messageList £temporary2710
	mov [rbp + 36], rax

 strerror$16:
	; IntegralToIntegral £temporary2712 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; UnsignedMultiply £temporary2713 £temporary2712 8
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; BinaryAdd £temporary2714 messageList £temporary2713
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; Dereference £temporary2711 -> £temporary2714 £temporary2714 0

 strerror$20:
	; Return £temporary2711 -> £temporary2714
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
	; Dereference £temporary2716 -> string string 0
	mov rsi, [rbp + 24]

 strtok$3:
	; NotEqual 5 £temporary2716 -> string 0
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
	; IntegralToIntegral £temporary2719 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; BinaryAdd £temporary2721 string £temporary2719
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary2718 -> £temporary2721 £temporary2721 0

 strtok$9:
	; Equal 34 £temporary2718 -> £temporary2721 0
	cmp byte [rsi], 0
	je strtok$34

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary2725 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; BinaryAdd £temporary2727 string £temporary2725
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary2724 -> £temporary2727 £temporary2727 0

 strtok$15:
	; IntegralToIntegral £temporary2728 £temporary2724 -> £temporary2727
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter signedint £temporary2728 84
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
	; GetReturnValue £temporary2729

 strtok$20:
	; Equal 32 £temporary2729 0
	cmp rbx, 0
	je strtok$32

 strtok$21:
	; IntegralToIntegral £temporary2732 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; BinaryAdd £temporary2734 string £temporary2732
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary2731 -> £temporary2734 £temporary2734 0

 strtok$24:
	; Assign £temporary2731 -> £temporary2734 0
	mov byte [rsi], 0

 strtok$25:
	; BinaryAdd £temporary2735 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary2737 £temporary2735
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; BinaryAdd £temporary2739 string £temporary2737
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary2736 -> £temporary2739 £temporary2739 0

 strtok$29:
	; Address £temporary2740 £temporary2736 -> £temporary2739

 strtok$30:
	; Assign token £temporary2740
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
	; IntegralToIntegral £temporary2742 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$35:
	; BinaryAdd £temporary2744 string £temporary2742
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$36:
	; Dereference £temporary2741 -> £temporary2744 £temporary2744 0

 strtok$37:
	; Address £temporary2745 £temporary2741 -> £temporary2744

 strtok$38:
	; Assign token £temporary2745
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
	; Dereference £temporary2747 -> token token 0
	mov rsi, [token]

 strtok$43:
	; NotEqual 45 £temporary2747 -> token 0
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
	; IntegralToIntegral £temporary2750 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$47:
	; BinaryAdd £temporary2752 token £temporary2750
	mov rsi, [token]
	add rsi, rax

 strtok$48:
	; Dereference £temporary2749 -> £temporary2752 £temporary2752 0

 strtok$49:
	; Equal 75 £temporary2749 -> £temporary2752 0
	cmp byte [rsi], 0
	je strtok$75

 strtok$50:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$51:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$52:
	; IntegralToIntegral £temporary2756 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$53:
	; BinaryAdd £temporary2758 token £temporary2756
	mov rsi, [token]
	add rsi, rax

 strtok$54:
	; Dereference £temporary2755 -> £temporary2758 £temporary2758 0

 strtok$55:
	; IntegralToIntegral £temporary2759 £temporary2755 -> £temporary2758
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$56
	neg al
	neg eax

 strtok$56:
	; Parameter signedint £temporary2759 84
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
	; GetReturnValue £temporary2760

 strtok$60:
	; Equal 73 £temporary2760 0
	cmp rbx, 0
	je strtok$73

 strtok$61:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$62:
	; IntegralToIntegral £temporary2763 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$63:
	; BinaryAdd £temporary2765 token £temporary2763
	mov rsi, [token]
	add rsi, rax

 strtok$64:
	; Dereference £temporary2762 -> £temporary2765 £temporary2765 0

 strtok$65:
	; Assign £temporary2762 -> £temporary2765 0
	mov byte [rsi], 0

 strtok$66:
	; BinaryAdd £temporary2766 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$67:
	; IntegralToIntegral £temporary2768 £temporary2766
	mov rbx, 4294967295
	and rax, rbx

 strtok$68:
	; BinaryAdd £temporary2770 token £temporary2768
	mov rsi, [token]
	add rsi, rax

 strtok$69:
	; Dereference £temporary2767 -> £temporary2770 £temporary2770 0

 strtok$70:
	; Address £temporary2771 £temporary2767 -> £temporary2770

 strtok$71:
	; Assign token £temporary2771
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
	; IntegralToIntegral £temporary2773 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$77:
	; BinaryAdd £temporary2775 token £temporary2773
	mov rsi, [token]
	add rsi, rax

 strtok$78:
	; Dereference £temporary2772 -> £temporary2775 £temporary2775 0

 strtok$79:
	; Address £temporary2776 £temporary2772 -> £temporary2775

 strtok$80:
	; Assign token £temporary2776
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
	; IntegralToIntegral £temporary2777 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary2777
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary2778 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary2778
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
	; IntegralToIntegral £temporary2782 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary2784 charTarget £temporary2782
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary2781 -> £temporary2784 £temporary2784 0

 memcpy$9:
	; IntegralToIntegral £temporary2786 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary2788 charSource £temporary2786
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary2785 -> £temporary2788 £temporary2788 0

 memcpy$12:
	; Assign £temporary2781 -> £temporary2784 £temporary2785 -> £temporary2788
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Goto 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary2789 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; Return £temporary2789
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary2790 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary2790
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary2791 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary2791
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
	; IntegralToIntegral £temporary2797 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary2799 charTarget £temporary2797
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary2796 -> £temporary2799 £temporary2799 0

 memmove$10:
	; IntegralToIntegral £temporary2801 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary2803 charSource £temporary2801
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary2800 -> £temporary2803 £temporary2803 0

 memmove$13:
	; Assign £temporary2796 -> £temporary2799 £temporary2800 -> £temporary2803
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
	; IntegralToIntegral £temporary2807 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary2809 charTarget £temporary2807
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary2806 -> £temporary2809 £temporary2809 0

 memmove$21:
	; IntegralToIntegral £temporary2811 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary2813 charSource £temporary2811
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary2810 -> £temporary2813 £temporary2813 0

 memmove$24:
	; Assign £temporary2806 -> £temporary2809 £temporary2810 -> £temporary2813
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Goto 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary2814 target
	mov rbx, [rbp + 24]

 memmove$28:
	; Return £temporary2814
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary2815 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary2815
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary2816 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary2816
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
	; IntegralToIntegral £temporary2820 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary2822 charLeft £temporary2820
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary2819 -> £temporary2822 £temporary2822 0

 memcmp$9:
	; IntegralToIntegral £temporary2824 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary2826 charRight £temporary2824
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary2823 -> £temporary2826 £temporary2826 0

 memcmp$12:
	; SignedGreaterThanEqual 14 £temporary2819 -> £temporary2822 £temporary2823 -> £temporary2826
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
	; IntegralToIntegral £temporary2829 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; BinaryAdd £temporary2831 charLeft £temporary2829
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; Dereference £temporary2828 -> £temporary2831 £temporary2831 0

 memcmp$17:
	; IntegralToIntegral £temporary2833 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; BinaryAdd £temporary2835 charRight £temporary2833
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; Dereference £temporary2832 -> £temporary2835 £temporary2835 0

 memcmp$20:
	; SignedLessThanEqual 22 £temporary2828 -> £temporary2831 £temporary2832 -> £temporary2835
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
	; IntegralToIntegral £temporary2837 block
	mov rax, [rbp + 24]

 memchr$2:
	; Assign charBlock £temporary2837
	mov [rbp + 44], rax

 memchr$3:
	; IntegralToIntegral £temporary2838 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

 memchr$4:
	; Assign c £temporary2838
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
	; IntegralToIntegral £temporary2842 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$8:
	; BinaryAdd £temporary2844 charBlock £temporary2842
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$9:
	; Dereference £temporary2841 -> £temporary2844 £temporary2844 0

 memchr$10:
	; NotEqual 17 £temporary2841 -> £temporary2844 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$11:
	; IntegralToIntegral £temporary2847 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$12:
	; BinaryAdd £temporary2849 charBlock £temporary2847
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$13:
	; Dereference £temporary2846 -> £temporary2849 £temporary2849 0

 memchr$14:
	; Address £temporary2850 £temporary2846 -> £temporary2849

 memchr$15:
	; IntegralToIntegral £temporary2851 £temporary2850

 memchr$16:
	; Return £temporary2851
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
	; IntegralToIntegral £temporary2852 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary2852
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary2853 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary2853
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
	; IntegralToIntegral £temporary2857 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary2859 charBlock £temporary2857
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary2856 -> £temporary2859 £temporary2859 0

 memset$9:
	; Assign £temporary2856 -> £temporary2859 c
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
