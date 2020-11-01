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
	; IntegralToIntegral £temporary2437 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$3:
	; BinaryAdd £temporary2439 source £temporary2437
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$4:
	; Dereference £temporary2436 -> £temporary2439 £temporary2439 0

 strcpy$5:
	; Equal 15 £temporary2436 -> £temporary2439 0
	cmp byte [rsi], 0
	je strcpy$15

 strcpy$6:
	; IntegralToIntegral £temporary2443 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$7:
	; BinaryAdd £temporary2445 target £temporary2443
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$8:
	; Dereference £temporary2442 -> £temporary2445 £temporary2445 0

 strcpy$9:
	; IntegralToIntegral £temporary2447 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$10:
	; BinaryAdd £temporary2449 source £temporary2447
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$11:
	; Dereference £temporary2446 -> £temporary2449 £temporary2449 0

 strcpy$12:
	; Assign £temporary2442 -> £temporary2445 £temporary2446 -> £temporary2449
	mov al, [rdi]
	mov [rsi], al

 strcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$14:
	; Goto 2
	jmp strcpy$2

 strcpy$15:
	; IntegralToIntegral £temporary2451 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$16:
	; BinaryAdd £temporary2453 target £temporary2451
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$17:
	; Dereference £temporary2450 -> £temporary2453 £temporary2453 0

 strcpy$18:
	; Assign £temporary2450 -> £temporary2453 0
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
	; IntegralToIntegral £temporary2456 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$4:
	; BinaryAdd £temporary2458 source £temporary2456
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$5:
	; Dereference £temporary2455 -> £temporary2458 £temporary2458 0

 strncpy$6:
	; Equal 16 £temporary2455 -> £temporary2458 0
	cmp byte [rsi], 0
	je strncpy$16

 strncpy$7:
	; IntegralToIntegral £temporary2463 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$8:
	; BinaryAdd £temporary2465 target £temporary2463
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$9:
	; Dereference £temporary2462 -> £temporary2465 £temporary2465 0

 strncpy$10:
	; IntegralToIntegral £temporary2467 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$11:
	; BinaryAdd £temporary2469 source £temporary2467
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$12:
	; Dereference £temporary2466 -> £temporary2469 £temporary2469 0

 strncpy$13:
	; Assign £temporary2462 -> £temporary2465 £temporary2466 -> £temporary2469
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
	; IntegralToIntegral £temporary2473 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$18:
	; BinaryAdd £temporary2475 target £temporary2473
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$19:
	; Dereference £temporary2472 -> £temporary2475 £temporary2475 0

 strncpy$20:
	; Assign £temporary2472 -> £temporary2475 0
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
	; GetReturnValue £temporary2476

 strcat$6:
	; Assign targetLength £temporary2476
	mov [rbp + 44], ebx

 strcat$7:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$8:
	; IntegralToIntegral £temporary2478 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$9:
	; BinaryAdd £temporary2480 source £temporary2478
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$10:
	; Dereference £temporary2477 -> £temporary2480 £temporary2480 0

 strcat$11:
	; Equal 22 £temporary2477 -> £temporary2480 0
	cmp byte [rsi], 0
	je strcat$22

 strcat$12:
	; BinaryAdd £temporary2483 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$13:
	; IntegralToIntegral £temporary2485 £temporary2483
	mov rbx, 4294967295
	and rax, rbx

 strcat$14:
	; BinaryAdd £temporary2487 target £temporary2485
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$15:
	; Dereference £temporary2484 -> £temporary2487 £temporary2487 0

 strcat$16:
	; IntegralToIntegral £temporary2489 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$17:
	; BinaryAdd £temporary2491 source £temporary2489
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$18:
	; Dereference £temporary2488 -> £temporary2491 £temporary2491 0

 strcat$19:
	; Assign £temporary2484 -> £temporary2487 £temporary2488 -> £temporary2491
	mov al, [rdi]
	mov [rsi], al

 strcat$20:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$21:
	; Goto 8
	jmp strcat$8

 strcat$22:
	; BinaryAdd £temporary2492 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$23:
	; IntegralToIntegral £temporary2494 £temporary2492
	mov rbx, 4294967295
	and rax, rbx

 strcat$24:
	; BinaryAdd £temporary2496 target £temporary2494
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$25:
	; Dereference £temporary2493 -> £temporary2496 £temporary2496 0

 strcat$26:
	; Assign £temporary2493 -> £temporary2496 0
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
	; GetReturnValue £temporary2497

 strncat$6:
	; Assign targetLength £temporary2497
	mov [rbp + 48], ebx

 strncat$7:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$8:
	; BinarySubtract £temporary2498 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$9:
	; SignedGreaterThanEqual 24 index £temporary2498
	cmp [rbp + 44], eax
	jge strncat$24

 strncat$10:
	; IntegralToIntegral £temporary2501 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$11:
	; BinaryAdd £temporary2503 source £temporary2501
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$12:
	; Dereference £temporary2500 -> £temporary2503 £temporary2503 0

 strncat$13:
	; Equal 24 £temporary2500 -> £temporary2503 0
	cmp byte [rsi], 0
	je strncat$24

 strncat$14:
	; BinaryAdd £temporary2507 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$15:
	; IntegralToIntegral £temporary2509 £temporary2507
	mov rbx, 4294967295
	and rax, rbx

 strncat$16:
	; BinaryAdd £temporary2511 target £temporary2509
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$17:
	; Dereference £temporary2508 -> £temporary2511 £temporary2511 0

 strncat$18:
	; IntegralToIntegral £temporary2513 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$19:
	; BinaryAdd £temporary2515 source £temporary2513
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$20:
	; Dereference £temporary2512 -> £temporary2515 £temporary2515 0

 strncat$21:
	; Assign £temporary2508 -> £temporary2511 £temporary2512 -> £temporary2515
	mov al, [rdi]
	mov [rsi], al

 strncat$22:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$23:
	; Goto 8
	jmp strncat$8

 strncat$24:
	; BinaryAdd £temporary2516 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$25:
	; BinarySubtract £temporary2517 £temporary2516 1
	dec eax

 strncat$26:
	; IntegralToIntegral £temporary2519 £temporary2517
	mov rbx, 4294967295
	and rax, rbx

 strncat$27:
	; BinaryAdd £temporary2521 target £temporary2519
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$28:
	; Dereference £temporary2518 -> £temporary2521 £temporary2521 0

 strncat$29:
	; Assign £temporary2518 -> £temporary2521 0
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
	; IntegralToIntegral £temporary2524 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$3:
	; BinaryAdd £temporary2526 left £temporary2524
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$4:
	; Dereference £temporary2523 -> £temporary2526 £temporary2526 0

 strcmp$5:
	; NotEqual 11 £temporary2523 -> £temporary2526 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$6:
	; IntegralToIntegral £temporary2529 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$7:
	; BinaryAdd £temporary2531 right £temporary2529
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$8:
	; Dereference £temporary2528 -> £temporary2531 £temporary2531 0

 strcmp$9:
	; NotEqual 11 £temporary2528 -> £temporary2531 0
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
	; IntegralToIntegral £temporary2535 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; BinaryAdd £temporary2537 left £temporary2535
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary2534 -> £temporary2537 £temporary2537 0

 strcmp$14:
	; NotEqual 16 £temporary2534 -> £temporary2537 0
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
	; IntegralToIntegral £temporary2540 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$17:
	; BinaryAdd £temporary2542 right £temporary2540
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$18:
	; Dereference £temporary2539 -> £temporary2542 £temporary2542 0

 strcmp$19:
	; NotEqual 21 £temporary2539 -> £temporary2542 0
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
	; IntegralToIntegral £temporary2545 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$22:
	; BinaryAdd £temporary2547 left £temporary2545
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$23:
	; Dereference £temporary2544 -> £temporary2547 £temporary2547 0

 strcmp$24:
	; IntegralToIntegral £temporary2549 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$25:
	; BinaryAdd £temporary2551 right £temporary2549
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$26:
	; Dereference £temporary2548 -> £temporary2551 £temporary2551 0

 strcmp$27:
	; SignedGreaterThanEqual 29 £temporary2544 -> £temporary2547 £temporary2548 -> £temporary2551
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
	; IntegralToIntegral £temporary2554 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$30:
	; BinaryAdd £temporary2556 left £temporary2554
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$31:
	; Dereference £temporary2553 -> £temporary2556 £temporary2556 0

 strcmp$32:
	; IntegralToIntegral £temporary2558 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; BinaryAdd £temporary2560 right £temporary2558
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$34:
	; Dereference £temporary2557 -> £temporary2560 £temporary2560 0

 strcmp$35:
	; SignedLessThanEqual 37 £temporary2553 -> £temporary2556 £temporary2557 -> £temporary2560
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
	; IntegralToIntegral £temporary2566 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$4:
	; BinaryAdd £temporary2568 left £temporary2566
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$5:
	; Dereference £temporary2565 -> £temporary2568 £temporary2568 0

 strncmp$6:
	; NotEqual 12 £temporary2565 -> £temporary2568 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$7:
	; IntegralToIntegral £temporary2571 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$8:
	; BinaryAdd £temporary2573 right £temporary2571
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$9:
	; Dereference £temporary2570 -> £temporary2573 £temporary2573 0

 strncmp$10:
	; NotEqual 12 £temporary2570 -> £temporary2573 0
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
	; IntegralToIntegral £temporary2577 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; BinaryAdd £temporary2579 left £temporary2577
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary2576 -> £temporary2579 £temporary2579 0

 strncmp$15:
	; NotEqual 17 £temporary2576 -> £temporary2579 0
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
	; IntegralToIntegral £temporary2582 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$18:
	; BinaryAdd £temporary2584 right £temporary2582
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$19:
	; Dereference £temporary2581 -> £temporary2584 £temporary2584 0

 strncmp$20:
	; NotEqual 22 £temporary2581 -> £temporary2584 0
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
	; IntegralToIntegral £temporary2587 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$23:
	; BinaryAdd £temporary2589 left £temporary2587
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$24:
	; Dereference £temporary2586 -> £temporary2589 £temporary2589 0

 strncmp$25:
	; IntegralToIntegral £temporary2591 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$26:
	; BinaryAdd £temporary2593 right £temporary2591
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$27:
	; Dereference £temporary2590 -> £temporary2593 £temporary2593 0

 strncmp$28:
	; SignedGreaterThanEqual 30 £temporary2586 -> £temporary2589 £temporary2590 -> £temporary2593
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
	; IntegralToIntegral £temporary2596 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$31:
	; BinaryAdd £temporary2598 left £temporary2596
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$32:
	; Dereference £temporary2595 -> £temporary2598 £temporary2598 0

 strncmp$33:
	; IntegralToIntegral £temporary2600 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; BinaryAdd £temporary2602 right £temporary2600
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$35:
	; Dereference £temporary2599 -> £temporary2602 £temporary2602 0

 strncmp$36:
	; SignedLessThanEqual 38 £temporary2595 -> £temporary2598 £temporary2599 -> £temporary2602
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
	; IntegralToIntegral £temporary2604 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

 strchr$2:
	; Assign c £temporary2604
	mov [rbp + 40], al

 strchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$4:
	; IntegralToIntegral £temporary2606 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$5:
	; BinaryAdd £temporary2608 text £temporary2606
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$6:
	; Dereference £temporary2605 -> £temporary2608 £temporary2608 0

 strchr$7:
	; Equal 19 £temporary2605 -> £temporary2608 0
	cmp byte [rsi], 0
	je strchr$19

 strchr$8:
	; IntegralToIntegral £temporary2612 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$9:
	; BinaryAdd £temporary2614 text £temporary2612
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$10:
	; Dereference £temporary2611 -> £temporary2614 £temporary2614 0

 strchr$11:
	; NotEqual 17 £temporary2611 -> £temporary2614 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$12:
	; IntegralToIntegral £temporary2617 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$13:
	; BinaryAdd £temporary2619 text £temporary2617
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$14:
	; Dereference £temporary2616 -> £temporary2619 £temporary2619 0

 strchr$15:
	; Address £temporary2620 £temporary2616 -> £temporary2619

 strchr$16:
	; Return £temporary2620
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
	; IntegralToIntegral £temporary2621 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

 strrchr$3:
	; Assign c £temporary2621
	mov [rbp + 48], al

 strrchr$4:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$5:
	; IntegralToIntegral £temporary2623 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$6:
	; BinaryAdd £temporary2625 text £temporary2623
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$7:
	; Dereference £temporary2622 -> £temporary2625 £temporary2625 0

 strrchr$8:
	; Equal 20 £temporary2622 -> £temporary2625 0
	cmp byte [rsi], 0
	je strrchr$20

 strrchr$9:
	; IntegralToIntegral £temporary2629 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$10:
	; BinaryAdd £temporary2631 text £temporary2629
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$11:
	; Dereference £temporary2628 -> £temporary2631 £temporary2631 0

 strrchr$12:
	; NotEqual 18 £temporary2628 -> £temporary2631 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$18

 strrchr$13:
	; IntegralToIntegral £temporary2634 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$14:
	; BinaryAdd £temporary2636 text £temporary2634
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$15:
	; Dereference £temporary2633 -> £temporary2636 £temporary2636 0

 strrchr$16:
	; Address £temporary2637 £temporary2633 -> £temporary2636

 strrchr$17:
	; Assign result £temporary2637
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
	; IntegralToIntegral £temporary2639 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$3:
	; BinaryAdd £temporary2641 mainString £temporary2639
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$4:
	; Dereference £temporary2638 -> £temporary2641 £temporary2641 0

 strspn$5:
	; Equal 20 £temporary2638 -> £temporary2641 0
	cmp byte [rsi], 0
	je strspn$20

 strspn$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$8:
	; IntegralToIntegral £temporary2645 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$9:
	; BinaryAdd £temporary2647 mainString £temporary2645
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$10:
	; Dereference £temporary2644 -> £temporary2647 £temporary2647 0

 strspn$11:
	; IntegralToIntegral £temporary2648 £temporary2644 -> £temporary2647
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

 strspn$12:
	; Parameter signedint £temporary2648 76
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
	; GetReturnValue £temporary2649

 strspn$16:
	; NotEqual 18 £temporary2649 0
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
	; IntegralToIntegral £temporary2652 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$3:
	; BinaryAdd £temporary2654 mainString £temporary2652
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$4:
	; Dereference £temporary2651 -> £temporary2654 £temporary2654 0

 strcspn$5:
	; Equal 20 £temporary2651 -> £temporary2654 0
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$8:
	; IntegralToIntegral £temporary2658 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$9:
	; BinaryAdd £temporary2660 mainString £temporary2658
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$10:
	; Dereference £temporary2657 -> £temporary2660 £temporary2660 0

 strcspn$11:
	; IntegralToIntegral £temporary2661 £temporary2657 -> £temporary2660
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

 strcspn$12:
	; Parameter signedint £temporary2661 76
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
	; GetReturnValue £temporary2662

 strcspn$16:
	; Equal 18 £temporary2662 0
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
	; IntegralToIntegral £temporary2665 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$3:
	; BinaryAdd £temporary2667 mainString £temporary2665
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$4:
	; Dereference £temporary2664 -> £temporary2667 £temporary2667 0

 strpbrk$5:
	; Equal 24 £temporary2664 -> £temporary2667 0
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$8:
	; IntegralToIntegral £temporary2671 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$9:
	; BinaryAdd £temporary2673 mainString £temporary2671
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$10:
	; Dereference £temporary2670 -> £temporary2673 £temporary2673 0

 strpbrk$11:
	; IntegralToIntegral £temporary2674 £temporary2670 -> £temporary2673
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

 strpbrk$12:
	; Parameter signedint £temporary2674 76
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
	; GetReturnValue £temporary2675

 strpbrk$16:
	; Equal 22 £temporary2675 0
	cmp rbx, 0
	je strpbrk$22

 strpbrk$17:
	; IntegralToIntegral £temporary2678 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$18:
	; BinaryAdd £temporary2680 mainString £temporary2678
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$19:
	; Dereference £temporary2677 -> £temporary2680 £temporary2680 0

 strpbrk$20:
	; Address £temporary2681 £temporary2677 -> £temporary2680

 strpbrk$21:
	; Return £temporary2681
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
	; IntegralToIntegral £temporary2683 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$3:
	; BinaryAdd £temporary2685 mainString £temporary2683
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$4:
	; Dereference £temporary2682 -> £temporary2685 £temporary2685 0

 strstr$5:
	; Equal 22 £temporary2682 -> £temporary2685 0
	cmp byte [rsi], 0
	je strstr$22

 strstr$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$7:
	; IntegralToIntegral £temporary2688 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; BinaryAdd £temporary2689 mainString £temporary2688
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$9:
	; Parameter pointer £temporary2689 68
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
	; GetReturnValue £temporary2691

 strstr$14:
	; NotEqual 20 £temporary2691 0
	cmp ebx, 0
	jne strstr$20

 strstr$15:
	; IntegralToIntegral £temporary2694 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$16:
	; BinaryAdd £temporary2696 mainString £temporary2694
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$17:
	; Dereference £temporary2693 -> £temporary2696 £temporary2696 0

 strstr$18:
	; Address £temporary2697 £temporary2693 -> £temporary2696

 strstr$19:
	; Return £temporary2697
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
	; IntegralToIntegral £temporary2699 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$3:
	; BinaryAdd £temporary2701 string £temporary2699
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$4:
	; Dereference £temporary2698 -> £temporary2701 £temporary2701 0

 strlen$5:
	; Equal 8 £temporary2698 -> £temporary2701 0
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
	; GetReturnValue £temporary2704

 strerror$4:
	; Assign localeConvPtr £temporary2704
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; Dereference £temporary2706 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign £temporary2707 £temporary2706 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; Goto 10
	jmp strerror$10

 strerror$9:
	; Assign £temporary2707 0
	mov rax, 0

 strerror$10:
	; Assign messageList £temporary2707
	mov [rbp + 36], rax

 strerror$11:
	; Equal 14 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; Assign £temporary2709 messageList
	mov rax, [rbp + 36]

 strerror$13:
	; Goto 15
	jmp strerror$15

 strerror$14:
	; Assign £temporary2709 enMessageList
	mov rax, enMessageList

 strerror$15:
	; Assign messageList £temporary2709
	mov [rbp + 36], rax

 strerror$16:
	; IntegralToIntegral £temporary2711 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; UnsignedMultiply £temporary2712 £temporary2711 8
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; BinaryAdd £temporary2713 messageList £temporary2712
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; Dereference £temporary2710 -> £temporary2713 £temporary2713 0

 strerror$20:
	; Return £temporary2710 -> £temporary2713
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
	; Dereference £temporary2715 -> string string 0
	mov rsi, [rbp + 24]

 strtok$3:
	; NotEqual 5 £temporary2715 -> string 0
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
	; IntegralToIntegral £temporary2718 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; BinaryAdd £temporary2720 string £temporary2718
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary2717 -> £temporary2720 £temporary2720 0

 strtok$9:
	; Equal 34 £temporary2717 -> £temporary2720 0
	cmp byte [rsi], 0
	je strtok$34

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary2724 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; BinaryAdd £temporary2726 string £temporary2724
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary2723 -> £temporary2726 £temporary2726 0

 strtok$15:
	; IntegralToIntegral £temporary2727 £temporary2723 -> £temporary2726
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter signedint £temporary2727 84
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
	; GetReturnValue £temporary2728

 strtok$20:
	; Equal 32 £temporary2728 0
	cmp rbx, 0
	je strtok$32

 strtok$21:
	; IntegralToIntegral £temporary2731 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; BinaryAdd £temporary2733 string £temporary2731
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary2730 -> £temporary2733 £temporary2733 0

 strtok$24:
	; Assign £temporary2730 -> £temporary2733 0
	mov byte [rsi], 0

 strtok$25:
	; BinaryAdd £temporary2734 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary2736 £temporary2734
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; BinaryAdd £temporary2738 string £temporary2736
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary2735 -> £temporary2738 £temporary2738 0

 strtok$29:
	; Address £temporary2739 £temporary2735 -> £temporary2738

 strtok$30:
	; Assign token £temporary2739
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
	; IntegralToIntegral £temporary2741 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$35:
	; BinaryAdd £temporary2743 string £temporary2741
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$36:
	; Dereference £temporary2740 -> £temporary2743 £temporary2743 0

 strtok$37:
	; Address £temporary2744 £temporary2740 -> £temporary2743

 strtok$38:
	; Assign token £temporary2744
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
	; Dereference £temporary2746 -> token token 0
	mov rsi, [token]

 strtok$43:
	; NotEqual 45 £temporary2746 -> token 0
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
	; IntegralToIntegral £temporary2749 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$47:
	; BinaryAdd £temporary2751 token £temporary2749
	mov rsi, [token]
	add rsi, rax

 strtok$48:
	; Dereference £temporary2748 -> £temporary2751 £temporary2751 0

 strtok$49:
	; Equal 75 £temporary2748 -> £temporary2751 0
	cmp byte [rsi], 0
	je strtok$75

 strtok$50:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$51:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$52:
	; IntegralToIntegral £temporary2755 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$53:
	; BinaryAdd £temporary2757 token £temporary2755
	mov rsi, [token]
	add rsi, rax

 strtok$54:
	; Dereference £temporary2754 -> £temporary2757 £temporary2757 0

 strtok$55:
	; IntegralToIntegral £temporary2758 £temporary2754 -> £temporary2757
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$56
	neg al
	neg eax

 strtok$56:
	; Parameter signedint £temporary2758 84
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
	; GetReturnValue £temporary2759

 strtok$60:
	; Equal 73 £temporary2759 0
	cmp rbx, 0
	je strtok$73

 strtok$61:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$62:
	; IntegralToIntegral £temporary2762 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$63:
	; BinaryAdd £temporary2764 token £temporary2762
	mov rsi, [token]
	add rsi, rax

 strtok$64:
	; Dereference £temporary2761 -> £temporary2764 £temporary2764 0

 strtok$65:
	; Assign £temporary2761 -> £temporary2764 0
	mov byte [rsi], 0

 strtok$66:
	; BinaryAdd £temporary2765 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$67:
	; IntegralToIntegral £temporary2767 £temporary2765
	mov rbx, 4294967295
	and rax, rbx

 strtok$68:
	; BinaryAdd £temporary2769 token £temporary2767
	mov rsi, [token]
	add rsi, rax

 strtok$69:
	; Dereference £temporary2766 -> £temporary2769 £temporary2769 0

 strtok$70:
	; Address £temporary2770 £temporary2766 -> £temporary2769

 strtok$71:
	; Assign token £temporary2770
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
	; IntegralToIntegral £temporary2772 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$77:
	; BinaryAdd £temporary2774 token £temporary2772
	mov rsi, [token]
	add rsi, rax

 strtok$78:
	; Dereference £temporary2771 -> £temporary2774 £temporary2774 0

 strtok$79:
	; Address £temporary2775 £temporary2771 -> £temporary2774

 strtok$80:
	; Assign token £temporary2775
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
	; IntegralToIntegral £temporary2776 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary2776
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary2777 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary2777
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
	; IntegralToIntegral £temporary2781 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary2783 charTarget £temporary2781
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary2780 -> £temporary2783 £temporary2783 0

 memcpy$9:
	; IntegralToIntegral £temporary2785 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary2787 charSource £temporary2785
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary2784 -> £temporary2787 £temporary2787 0

 memcpy$12:
	; Assign £temporary2780 -> £temporary2783 £temporary2784 -> £temporary2787
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Goto 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary2788 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; Return £temporary2788
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary2789 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary2789
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary2790 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary2790
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
	; IntegralToIntegral £temporary2796 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary2798 charTarget £temporary2796
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary2795 -> £temporary2798 £temporary2798 0

 memmove$10:
	; IntegralToIntegral £temporary2800 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary2802 charSource £temporary2800
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary2799 -> £temporary2802 £temporary2802 0

 memmove$13:
	; Assign £temporary2795 -> £temporary2798 £temporary2799 -> £temporary2802
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
	; IntegralToIntegral £temporary2806 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary2808 charTarget £temporary2806
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary2805 -> £temporary2808 £temporary2808 0

 memmove$21:
	; IntegralToIntegral £temporary2810 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary2812 charSource £temporary2810
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary2809 -> £temporary2812 £temporary2812 0

 memmove$24:
	; Assign £temporary2805 -> £temporary2808 £temporary2809 -> £temporary2812
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Goto 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary2813 target
	mov rbx, [rbp + 24]

 memmove$28:
	; Return £temporary2813
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary2814 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary2814
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary2815 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary2815
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
	; IntegralToIntegral £temporary2819 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary2821 charLeft £temporary2819
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary2818 -> £temporary2821 £temporary2821 0

 memcmp$9:
	; IntegralToIntegral £temporary2823 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary2825 charRight £temporary2823
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary2822 -> £temporary2825 £temporary2825 0

 memcmp$12:
	; SignedGreaterThanEqual 14 £temporary2818 -> £temporary2821 £temporary2822 -> £temporary2825
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
	; IntegralToIntegral £temporary2828 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; BinaryAdd £temporary2830 charLeft £temporary2828
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; Dereference £temporary2827 -> £temporary2830 £temporary2830 0

 memcmp$17:
	; IntegralToIntegral £temporary2832 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; BinaryAdd £temporary2834 charRight £temporary2832
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; Dereference £temporary2831 -> £temporary2834 £temporary2834 0

 memcmp$20:
	; SignedLessThanEqual 22 £temporary2827 -> £temporary2830 £temporary2831 -> £temporary2834
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
	; IntegralToIntegral £temporary2836 block
	mov rax, [rbp + 24]

 memchr$2:
	; Assign charBlock £temporary2836
	mov [rbp + 44], rax

 memchr$3:
	; IntegralToIntegral £temporary2837 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

 memchr$4:
	; Assign c £temporary2837
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
	; IntegralToIntegral £temporary2841 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$8:
	; BinaryAdd £temporary2843 charBlock £temporary2841
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$9:
	; Dereference £temporary2840 -> £temporary2843 £temporary2843 0

 memchr$10:
	; NotEqual 17 £temporary2840 -> £temporary2843 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$11:
	; IntegralToIntegral £temporary2846 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$12:
	; BinaryAdd £temporary2848 charBlock £temporary2846
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$13:
	; Dereference £temporary2845 -> £temporary2848 £temporary2848 0

 memchr$14:
	; Address £temporary2849 £temporary2845 -> £temporary2848

 memchr$15:
	; IntegralToIntegral £temporary2850 £temporary2849

 memchr$16:
	; Return £temporary2850
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
	; IntegralToIntegral £temporary2851 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary2851
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary2852 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary2852
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
	; IntegralToIntegral £temporary2856 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary2858 charBlock £temporary2856
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary2855 -> £temporary2858 £temporary2858 0

 memset$9:
	; Assign £temporary2855 -> £temporary2858 c
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
