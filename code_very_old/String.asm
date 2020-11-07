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
	; IntegralToIntegral £temporary2423 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$3:
	; BinaryAdd £temporary2425 source £temporary2423
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$4:
	; Dereference £temporary2422 -> £temporary2425 £temporary2425 0

 strcpy$5:
	; Equal 15 £temporary2422 -> £temporary2425 0
	cmp byte [rsi], 0
	je strcpy$15

 strcpy$6:
	; IntegralToIntegral £temporary2429 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$7:
	; BinaryAdd £temporary2431 target £temporary2429
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$8:
	; Dereference £temporary2428 -> £temporary2431 £temporary2431 0

 strcpy$9:
	; IntegralToIntegral £temporary2433 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$10:
	; BinaryAdd £temporary2435 source £temporary2433
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$11:
	; Dereference £temporary2432 -> £temporary2435 £temporary2435 0

 strcpy$12:
	; Assign £temporary2428 -> £temporary2431 £temporary2432 -> £temporary2435
	mov al, [rdi]
	mov [rsi], al

 strcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$14:
	; Goto 2
	jmp strcpy$2

 strcpy$15:
	; IntegralToIntegral £temporary2437 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$16:
	; BinaryAdd £temporary2439 target £temporary2437
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$17:
	; Dereference £temporary2436 -> £temporary2439 £temporary2439 0

 strcpy$18:
	; Assign £temporary2436 -> £temporary2439 0
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
	; IntegralToIntegral £temporary2442 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$4:
	; BinaryAdd £temporary2444 source £temporary2442
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$5:
	; Dereference £temporary2441 -> £temporary2444 £temporary2444 0

 strncpy$6:
	; Equal 16 £temporary2441 -> £temporary2444 0
	cmp byte [rsi], 0
	je strncpy$16

 strncpy$7:
	; IntegralToIntegral £temporary2449 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$8:
	; BinaryAdd £temporary2451 target £temporary2449
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$9:
	; Dereference £temporary2448 -> £temporary2451 £temporary2451 0

 strncpy$10:
	; IntegralToIntegral £temporary2453 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$11:
	; BinaryAdd £temporary2455 source £temporary2453
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$12:
	; Dereference £temporary2452 -> £temporary2455 £temporary2455 0

 strncpy$13:
	; Assign £temporary2448 -> £temporary2451 £temporary2452 -> £temporary2455
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
	; IntegralToIntegral £temporary2459 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$18:
	; BinaryAdd £temporary2461 target £temporary2459
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$19:
	; Dereference £temporary2458 -> £temporary2461 £temporary2461 0

 strncpy$20:
	; Assign £temporary2458 -> £temporary2461 0
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
	; GetReturnValue £temporary2462

 strcat$6:
	; Assign targetLength £temporary2462
	mov [rbp + 44], ebx

 strcat$7:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$8:
	; IntegralToIntegral £temporary2464 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$9:
	; BinaryAdd £temporary2466 source £temporary2464
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$10:
	; Dereference £temporary2463 -> £temporary2466 £temporary2466 0

 strcat$11:
	; Equal 22 £temporary2463 -> £temporary2466 0
	cmp byte [rsi], 0
	je strcat$22

 strcat$12:
	; BinaryAdd £temporary2469 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$13:
	; IntegralToIntegral £temporary2471 £temporary2469
	mov rbx, 4294967295
	and rax, rbx

 strcat$14:
	; BinaryAdd £temporary2473 target £temporary2471
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$15:
	; Dereference £temporary2470 -> £temporary2473 £temporary2473 0

 strcat$16:
	; IntegralToIntegral £temporary2475 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$17:
	; BinaryAdd £temporary2477 source £temporary2475
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$18:
	; Dereference £temporary2474 -> £temporary2477 £temporary2477 0

 strcat$19:
	; Assign £temporary2470 -> £temporary2473 £temporary2474 -> £temporary2477
	mov al, [rdi]
	mov [rsi], al

 strcat$20:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$21:
	; Goto 8
	jmp strcat$8

 strcat$22:
	; BinaryAdd £temporary2478 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$23:
	; IntegralToIntegral £temporary2480 £temporary2478
	mov rbx, 4294967295
	and rax, rbx

 strcat$24:
	; BinaryAdd £temporary2482 target £temporary2480
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$25:
	; Dereference £temporary2479 -> £temporary2482 £temporary2482 0

 strcat$26:
	; Assign £temporary2479 -> £temporary2482 0
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
	; GetReturnValue £temporary2483

 strncat$6:
	; Assign targetLength £temporary2483
	mov [rbp + 48], ebx

 strncat$7:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$8:
	; BinarySubtract £temporary2484 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$9:
	; SignedGreaterThanEqual 24 index £temporary2484
	cmp [rbp + 44], eax
	jge strncat$24

 strncat$10:
	; IntegralToIntegral £temporary2487 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$11:
	; BinaryAdd £temporary2489 source £temporary2487
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$12:
	; Dereference £temporary2486 -> £temporary2489 £temporary2489 0

 strncat$13:
	; Equal 24 £temporary2486 -> £temporary2489 0
	cmp byte [rsi], 0
	je strncat$24

 strncat$14:
	; BinaryAdd £temporary2493 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$15:
	; IntegralToIntegral £temporary2495 £temporary2493
	mov rbx, 4294967295
	and rax, rbx

 strncat$16:
	; BinaryAdd £temporary2497 target £temporary2495
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$17:
	; Dereference £temporary2494 -> £temporary2497 £temporary2497 0

 strncat$18:
	; IntegralToIntegral £temporary2499 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$19:
	; BinaryAdd £temporary2501 source £temporary2499
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$20:
	; Dereference £temporary2498 -> £temporary2501 £temporary2501 0

 strncat$21:
	; Assign £temporary2494 -> £temporary2497 £temporary2498 -> £temporary2501
	mov al, [rdi]
	mov [rsi], al

 strncat$22:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$23:
	; Goto 8
	jmp strncat$8

 strncat$24:
	; BinaryAdd £temporary2502 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$25:
	; BinarySubtract £temporary2503 £temporary2502 1
	dec eax

 strncat$26:
	; IntegralToIntegral £temporary2505 £temporary2503
	mov rbx, 4294967295
	and rax, rbx

 strncat$27:
	; BinaryAdd £temporary2507 target £temporary2505
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$28:
	; Dereference £temporary2504 -> £temporary2507 £temporary2507 0

 strncat$29:
	; Assign £temporary2504 -> £temporary2507 0
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
	; IntegralToIntegral £temporary2510 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$3:
	; BinaryAdd £temporary2512 left £temporary2510
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$4:
	; Dereference £temporary2509 -> £temporary2512 £temporary2512 0

 strcmp$5:
	; NotEqual 11 £temporary2509 -> £temporary2512 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$6:
	; IntegralToIntegral £temporary2515 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$7:
	; BinaryAdd £temporary2517 right £temporary2515
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$8:
	; Dereference £temporary2514 -> £temporary2517 £temporary2517 0

 strcmp$9:
	; NotEqual 11 £temporary2514 -> £temporary2517 0
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
	; IntegralToIntegral £temporary2521 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; BinaryAdd £temporary2523 left £temporary2521
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary2520 -> £temporary2523 £temporary2523 0

 strcmp$14:
	; NotEqual 16 £temporary2520 -> £temporary2523 0
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
	; IntegralToIntegral £temporary2526 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$17:
	; BinaryAdd £temporary2528 right £temporary2526
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$18:
	; Dereference £temporary2525 -> £temporary2528 £temporary2528 0

 strcmp$19:
	; NotEqual 21 £temporary2525 -> £temporary2528 0
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
	; IntegralToIntegral £temporary2531 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$22:
	; BinaryAdd £temporary2533 left £temporary2531
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$23:
	; Dereference £temporary2530 -> £temporary2533 £temporary2533 0

 strcmp$24:
	; IntegralToIntegral £temporary2535 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$25:
	; BinaryAdd £temporary2537 right £temporary2535
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$26:
	; Dereference £temporary2534 -> £temporary2537 £temporary2537 0

 strcmp$27:
	; SignedGreaterThanEqual 29 £temporary2530 -> £temporary2533 £temporary2534 -> £temporary2537
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
	; IntegralToIntegral £temporary2540 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$30:
	; BinaryAdd £temporary2542 left £temporary2540
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$31:
	; Dereference £temporary2539 -> £temporary2542 £temporary2542 0

 strcmp$32:
	; IntegralToIntegral £temporary2544 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; BinaryAdd £temporary2546 right £temporary2544
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$34:
	; Dereference £temporary2543 -> £temporary2546 £temporary2546 0

 strcmp$35:
	; SignedLessThanEqual 37 £temporary2539 -> £temporary2542 £temporary2543 -> £temporary2546
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
	; IntegralToIntegral £temporary2552 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$4:
	; BinaryAdd £temporary2554 left £temporary2552
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$5:
	; Dereference £temporary2551 -> £temporary2554 £temporary2554 0

 strncmp$6:
	; NotEqual 12 £temporary2551 -> £temporary2554 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$7:
	; IntegralToIntegral £temporary2557 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$8:
	; BinaryAdd £temporary2559 right £temporary2557
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$9:
	; Dereference £temporary2556 -> £temporary2559 £temporary2559 0

 strncmp$10:
	; NotEqual 12 £temporary2556 -> £temporary2559 0
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
	; IntegralToIntegral £temporary2563 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; BinaryAdd £temporary2565 left £temporary2563
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary2562 -> £temporary2565 £temporary2565 0

 strncmp$15:
	; NotEqual 17 £temporary2562 -> £temporary2565 0
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
	; IntegralToIntegral £temporary2568 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$18:
	; BinaryAdd £temporary2570 right £temporary2568
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$19:
	; Dereference £temporary2567 -> £temporary2570 £temporary2570 0

 strncmp$20:
	; NotEqual 22 £temporary2567 -> £temporary2570 0
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
	; IntegralToIntegral £temporary2573 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$23:
	; BinaryAdd £temporary2575 left £temporary2573
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$24:
	; Dereference £temporary2572 -> £temporary2575 £temporary2575 0

 strncmp$25:
	; IntegralToIntegral £temporary2577 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$26:
	; BinaryAdd £temporary2579 right £temporary2577
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$27:
	; Dereference £temporary2576 -> £temporary2579 £temporary2579 0

 strncmp$28:
	; SignedGreaterThanEqual 30 £temporary2572 -> £temporary2575 £temporary2576 -> £temporary2579
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
	; IntegralToIntegral £temporary2582 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$31:
	; BinaryAdd £temporary2584 left £temporary2582
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$32:
	; Dereference £temporary2581 -> £temporary2584 £temporary2584 0

 strncmp$33:
	; IntegralToIntegral £temporary2586 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; BinaryAdd £temporary2588 right £temporary2586
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$35:
	; Dereference £temporary2585 -> £temporary2588 £temporary2588 0

 strncmp$36:
	; SignedLessThanEqual 38 £temporary2581 -> £temporary2584 £temporary2585 -> £temporary2588
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
	; IntegralToIntegral £temporary2590 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

 strchr$2:
	; Assign c £temporary2590
	mov [rbp + 40], al

 strchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$4:
	; IntegralToIntegral £temporary2592 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$5:
	; BinaryAdd £temporary2594 text £temporary2592
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$6:
	; Dereference £temporary2591 -> £temporary2594 £temporary2594 0

 strchr$7:
	; Equal 19 £temporary2591 -> £temporary2594 0
	cmp byte [rsi], 0
	je strchr$19

 strchr$8:
	; IntegralToIntegral £temporary2598 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$9:
	; BinaryAdd £temporary2600 text £temporary2598
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$10:
	; Dereference £temporary2597 -> £temporary2600 £temporary2600 0

 strchr$11:
	; NotEqual 17 £temporary2597 -> £temporary2600 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$12:
	; IntegralToIntegral £temporary2603 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$13:
	; BinaryAdd £temporary2605 text £temporary2603
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$14:
	; Dereference £temporary2602 -> £temporary2605 £temporary2605 0

 strchr$15:
	; Address £temporary2606 £temporary2602 -> £temporary2605

 strchr$16:
	; Return £temporary2606
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
	; IntegralToIntegral £temporary2607 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

 strrchr$3:
	; Assign c £temporary2607
	mov [rbp + 48], al

 strrchr$4:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$5:
	; IntegralToIntegral £temporary2609 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$6:
	; BinaryAdd £temporary2611 text £temporary2609
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$7:
	; Dereference £temporary2608 -> £temporary2611 £temporary2611 0

 strrchr$8:
	; Equal 20 £temporary2608 -> £temporary2611 0
	cmp byte [rsi], 0
	je strrchr$20

 strrchr$9:
	; IntegralToIntegral £temporary2615 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$10:
	; BinaryAdd £temporary2617 text £temporary2615
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$11:
	; Dereference £temporary2614 -> £temporary2617 £temporary2617 0

 strrchr$12:
	; NotEqual 18 £temporary2614 -> £temporary2617 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$18

 strrchr$13:
	; IntegralToIntegral £temporary2620 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$14:
	; BinaryAdd £temporary2622 text £temporary2620
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$15:
	; Dereference £temporary2619 -> £temporary2622 £temporary2622 0

 strrchr$16:
	; Address £temporary2623 £temporary2619 -> £temporary2622

 strrchr$17:
	; Assign result £temporary2623
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
	; IntegralToIntegral £temporary2625 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$3:
	; BinaryAdd £temporary2627 mainString £temporary2625
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$4:
	; Dereference £temporary2624 -> £temporary2627 £temporary2627 0

 strspn$5:
	; Equal 20 £temporary2624 -> £temporary2627 0
	cmp byte [rsi], 0
	je strspn$20

 strspn$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$8:
	; IntegralToIntegral £temporary2631 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$9:
	; BinaryAdd £temporary2633 mainString £temporary2631
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$10:
	; Dereference £temporary2630 -> £temporary2633 £temporary2633 0

 strspn$11:
	; IntegralToIntegral £temporary2634 £temporary2630 -> £temporary2633
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

 strspn$12:
	; Parameter signedint £temporary2634 76
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
	; GetReturnValue £temporary2635

 strspn$16:
	; NotEqual 18 £temporary2635 0
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
	; IntegralToIntegral £temporary2638 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$3:
	; BinaryAdd £temporary2640 mainString £temporary2638
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$4:
	; Dereference £temporary2637 -> £temporary2640 £temporary2640 0

 strcspn$5:
	; Equal 20 £temporary2637 -> £temporary2640 0
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$8:
	; IntegralToIntegral £temporary2644 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$9:
	; BinaryAdd £temporary2646 mainString £temporary2644
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$10:
	; Dereference £temporary2643 -> £temporary2646 £temporary2646 0

 strcspn$11:
	; IntegralToIntegral £temporary2647 £temporary2643 -> £temporary2646
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

 strcspn$12:
	; Parameter signedint £temporary2647 76
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
	; GetReturnValue £temporary2648

 strcspn$16:
	; Equal 18 £temporary2648 0
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
	; IntegralToIntegral £temporary2651 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$3:
	; BinaryAdd £temporary2653 mainString £temporary2651
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$4:
	; Dereference £temporary2650 -> £temporary2653 £temporary2653 0

 strpbrk$5:
	; Equal 24 £temporary2650 -> £temporary2653 0
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$8:
	; IntegralToIntegral £temporary2657 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$9:
	; BinaryAdd £temporary2659 mainString £temporary2657
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$10:
	; Dereference £temporary2656 -> £temporary2659 £temporary2659 0

 strpbrk$11:
	; IntegralToIntegral £temporary2660 £temporary2656 -> £temporary2659
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

 strpbrk$12:
	; Parameter signedint £temporary2660 76
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
	; GetReturnValue £temporary2661

 strpbrk$16:
	; Equal 22 £temporary2661 0
	cmp rbx, 0
	je strpbrk$22

 strpbrk$17:
	; IntegralToIntegral £temporary2664 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$18:
	; BinaryAdd £temporary2666 mainString £temporary2664
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$19:
	; Dereference £temporary2663 -> £temporary2666 £temporary2666 0

 strpbrk$20:
	; Address £temporary2667 £temporary2663 -> £temporary2666

 strpbrk$21:
	; Return £temporary2667
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
	; IntegralToIntegral £temporary2669 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$3:
	; BinaryAdd £temporary2671 mainString £temporary2669
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$4:
	; Dereference £temporary2668 -> £temporary2671 £temporary2671 0

 strstr$5:
	; Equal 22 £temporary2668 -> £temporary2671 0
	cmp byte [rsi], 0
	je strstr$22

 strstr$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$7:
	; IntegralToIntegral £temporary2674 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; BinaryAdd £temporary2675 mainString £temporary2674
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$9:
	; Parameter pointer £temporary2675 68
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
	; GetReturnValue £temporary2677

 strstr$14:
	; NotEqual 20 £temporary2677 0
	cmp ebx, 0
	jne strstr$20

 strstr$15:
	; IntegralToIntegral £temporary2680 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$16:
	; BinaryAdd £temporary2682 mainString £temporary2680
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$17:
	; Dereference £temporary2679 -> £temporary2682 £temporary2682 0

 strstr$18:
	; Address £temporary2683 £temporary2679 -> £temporary2682

 strstr$19:
	; Return £temporary2683
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
	; IntegralToIntegral £temporary2685 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$3:
	; BinaryAdd £temporary2687 string £temporary2685
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$4:
	; Dereference £temporary2684 -> £temporary2687 £temporary2687 0

 strlen$5:
	; Equal 8 £temporary2684 -> £temporary2687 0
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
	; GetReturnValue £temporary2690

 strerror$4:
	; Assign localeConvPtr £temporary2690
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; Dereference £temporary2692 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign £temporary2693 £temporary2692 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; Goto 10
	jmp strerror$10

 strerror$9:
	; Assign £temporary2693 0
	mov rax, 0

 strerror$10:
	; Assign messageList £temporary2693
	mov [rbp + 36], rax

 strerror$11:
	; Equal 14 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; Assign £temporary2695 messageList
	mov rax, [rbp + 36]

 strerror$13:
	; Goto 15
	jmp strerror$15

 strerror$14:
	; Assign £temporary2695 enMessageList
	mov rax, enMessageList

 strerror$15:
	; Assign messageList £temporary2695
	mov [rbp + 36], rax

 strerror$16:
	; IntegralToIntegral £temporary2697 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; UnsignedMultiply £temporary2698 £temporary2697 8
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; BinaryAdd £temporary2699 messageList £temporary2698
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; Dereference £temporary2696 -> £temporary2699 £temporary2699 0

 strerror$20:
	; Return £temporary2696 -> £temporary2699
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
	; Dereference £temporary2701 -> string string 0
	mov rsi, [rbp + 24]

 strtok$3:
	; NotEqual 5 £temporary2701 -> string 0
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
	; IntegralToIntegral £temporary2704 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; BinaryAdd £temporary2706 string £temporary2704
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary2703 -> £temporary2706 £temporary2706 0

 strtok$9:
	; Equal 34 £temporary2703 -> £temporary2706 0
	cmp byte [rsi], 0
	je strtok$34

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary2710 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; BinaryAdd £temporary2712 string £temporary2710
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary2709 -> £temporary2712 £temporary2712 0

 strtok$15:
	; IntegralToIntegral £temporary2713 £temporary2709 -> £temporary2712
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter signedint £temporary2713 84
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
	; GetReturnValue £temporary2714

 strtok$20:
	; Equal 32 £temporary2714 0
	cmp rbx, 0
	je strtok$32

 strtok$21:
	; IntegralToIntegral £temporary2717 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; BinaryAdd £temporary2719 string £temporary2717
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary2716 -> £temporary2719 £temporary2719 0

 strtok$24:
	; Assign £temporary2716 -> £temporary2719 0
	mov byte [rsi], 0

 strtok$25:
	; BinaryAdd £temporary2720 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary2722 £temporary2720
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; BinaryAdd £temporary2724 string £temporary2722
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary2721 -> £temporary2724 £temporary2724 0

 strtok$29:
	; Address £temporary2725 £temporary2721 -> £temporary2724

 strtok$30:
	; Assign token £temporary2725
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
	; IntegralToIntegral £temporary2727 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$35:
	; BinaryAdd £temporary2729 string £temporary2727
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$36:
	; Dereference £temporary2726 -> £temporary2729 £temporary2729 0

 strtok$37:
	; Address £temporary2730 £temporary2726 -> £temporary2729

 strtok$38:
	; Assign token £temporary2730
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
	; Dereference £temporary2732 -> token token 0
	mov rsi, [token]

 strtok$43:
	; NotEqual 45 £temporary2732 -> token 0
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
	; IntegralToIntegral £temporary2735 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$47:
	; BinaryAdd £temporary2737 token £temporary2735
	mov rsi, [token]
	add rsi, rax

 strtok$48:
	; Dereference £temporary2734 -> £temporary2737 £temporary2737 0

 strtok$49:
	; Equal 75 £temporary2734 -> £temporary2737 0
	cmp byte [rsi], 0
	je strtok$75

 strtok$50:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$51:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$52:
	; IntegralToIntegral £temporary2741 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$53:
	; BinaryAdd £temporary2743 token £temporary2741
	mov rsi, [token]
	add rsi, rax

 strtok$54:
	; Dereference £temporary2740 -> £temporary2743 £temporary2743 0

 strtok$55:
	; IntegralToIntegral £temporary2744 £temporary2740 -> £temporary2743
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$56
	neg al
	neg eax

 strtok$56:
	; Parameter signedint £temporary2744 84
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
	; GetReturnValue £temporary2745

 strtok$60:
	; Equal 73 £temporary2745 0
	cmp rbx, 0
	je strtok$73

 strtok$61:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$62:
	; IntegralToIntegral £temporary2748 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$63:
	; BinaryAdd £temporary2750 token £temporary2748
	mov rsi, [token]
	add rsi, rax

 strtok$64:
	; Dereference £temporary2747 -> £temporary2750 £temporary2750 0

 strtok$65:
	; Assign £temporary2747 -> £temporary2750 0
	mov byte [rsi], 0

 strtok$66:
	; BinaryAdd £temporary2751 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$67:
	; IntegralToIntegral £temporary2753 £temporary2751
	mov rbx, 4294967295
	and rax, rbx

 strtok$68:
	; BinaryAdd £temporary2755 token £temporary2753
	mov rsi, [token]
	add rsi, rax

 strtok$69:
	; Dereference £temporary2752 -> £temporary2755 £temporary2755 0

 strtok$70:
	; Address £temporary2756 £temporary2752 -> £temporary2755

 strtok$71:
	; Assign token £temporary2756
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
	; IntegralToIntegral £temporary2758 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$77:
	; BinaryAdd £temporary2760 token £temporary2758
	mov rsi, [token]
	add rsi, rax

 strtok$78:
	; Dereference £temporary2757 -> £temporary2760 £temporary2760 0

 strtok$79:
	; Address £temporary2761 £temporary2757 -> £temporary2760

 strtok$80:
	; Assign token £temporary2761
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
	; IntegralToIntegral £temporary2762 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary2762
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary2763 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary2763
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
	; IntegralToIntegral £temporary2767 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary2769 charTarget £temporary2767
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary2766 -> £temporary2769 £temporary2769 0

 memcpy$9:
	; IntegralToIntegral £temporary2771 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary2773 charSource £temporary2771
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary2770 -> £temporary2773 £temporary2773 0

 memcpy$12:
	; Assign £temporary2766 -> £temporary2769 £temporary2770 -> £temporary2773
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Goto 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary2774 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; Return £temporary2774
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary2775 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary2775
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary2776 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary2776
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
	; IntegralToIntegral £temporary2782 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary2784 charTarget £temporary2782
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary2781 -> £temporary2784 £temporary2784 0

 memmove$10:
	; IntegralToIntegral £temporary2786 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary2788 charSource £temporary2786
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary2785 -> £temporary2788 £temporary2788 0

 memmove$13:
	; Assign £temporary2781 -> £temporary2784 £temporary2785 -> £temporary2788
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
	; IntegralToIntegral £temporary2792 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary2794 charTarget £temporary2792
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary2791 -> £temporary2794 £temporary2794 0

 memmove$21:
	; IntegralToIntegral £temporary2796 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary2798 charSource £temporary2796
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary2795 -> £temporary2798 £temporary2798 0

 memmove$24:
	; Assign £temporary2791 -> £temporary2794 £temporary2795 -> £temporary2798
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Goto 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary2799 target
	mov rbx, [rbp + 24]

 memmove$28:
	; Return £temporary2799
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary2800 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary2800
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary2801 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary2801
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
	; IntegralToIntegral £temporary2805 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary2807 charLeft £temporary2805
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary2804 -> £temporary2807 £temporary2807 0

 memcmp$9:
	; IntegralToIntegral £temporary2809 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary2811 charRight £temporary2809
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary2808 -> £temporary2811 £temporary2811 0

 memcmp$12:
	; SignedGreaterThanEqual 14 £temporary2804 -> £temporary2807 £temporary2808 -> £temporary2811
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
	; IntegralToIntegral £temporary2814 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; BinaryAdd £temporary2816 charLeft £temporary2814
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; Dereference £temporary2813 -> £temporary2816 £temporary2816 0

 memcmp$17:
	; IntegralToIntegral £temporary2818 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; BinaryAdd £temporary2820 charRight £temporary2818
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; Dereference £temporary2817 -> £temporary2820 £temporary2820 0

 memcmp$20:
	; SignedLessThanEqual 22 £temporary2813 -> £temporary2816 £temporary2817 -> £temporary2820
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
	; IntegralToIntegral £temporary2822 block
	mov rax, [rbp + 24]

 memchr$2:
	; Assign charBlock £temporary2822
	mov [rbp + 44], rax

 memchr$3:
	; IntegralToIntegral £temporary2823 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

 memchr$4:
	; Assign c £temporary2823
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
	; IntegralToIntegral £temporary2827 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$8:
	; BinaryAdd £temporary2829 charBlock £temporary2827
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$9:
	; Dereference £temporary2826 -> £temporary2829 £temporary2829 0

 memchr$10:
	; NotEqual 17 £temporary2826 -> £temporary2829 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$11:
	; IntegralToIntegral £temporary2832 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$12:
	; BinaryAdd £temporary2834 charBlock £temporary2832
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$13:
	; Dereference £temporary2831 -> £temporary2834 £temporary2834 0

 memchr$14:
	; Address £temporary2835 £temporary2831 -> £temporary2834

 memchr$15:
	; IntegralToIntegral £temporary2836 £temporary2835

 memchr$16:
	; Return £temporary2836
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
	; IntegralToIntegral £temporary2837 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary2837
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary2838 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary2838
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
	; IntegralToIntegral £temporary2842 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary2844 charBlock £temporary2842
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary2841 -> £temporary2844 £temporary2844 0

 memset$9:
	; Assign £temporary2841 -> £temporary2844 c
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
