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
	; IntegralToIntegral £temporary2420 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$3:
	; BinaryAdd £temporary2422 source £temporary2420
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$4:
	; Dereference £temporary2419 -> £temporary2422 £temporary2422 0

 strcpy$5:
	; Equal 15 £temporary2419 -> £temporary2422 0
	cmp byte [rsi], 0
	je strcpy$15

 strcpy$6:
	; IntegralToIntegral £temporary2426 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$7:
	; BinaryAdd £temporary2428 target £temporary2426
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$8:
	; Dereference £temporary2425 -> £temporary2428 £temporary2428 0

 strcpy$9:
	; IntegralToIntegral £temporary2430 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$10:
	; BinaryAdd £temporary2432 source £temporary2430
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$11:
	; Dereference £temporary2429 -> £temporary2432 £temporary2432 0

 strcpy$12:
	; Assign £temporary2425 -> £temporary2428 £temporary2429 -> £temporary2432
	mov al, [rdi]
	mov [rsi], al

 strcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcpy$14:
	; Goto 2
	jmp strcpy$2

 strcpy$15:
	; IntegralToIntegral £temporary2434 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$16:
	; BinaryAdd £temporary2436 target £temporary2434
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$17:
	; Dereference £temporary2433 -> £temporary2436 £temporary2436 0

 strcpy$18:
	; Assign £temporary2433 -> £temporary2436 0
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
	; IntegralToIntegral £temporary2439 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$4:
	; BinaryAdd £temporary2441 source £temporary2439
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$5:
	; Dereference £temporary2438 -> £temporary2441 £temporary2441 0

 strncpy$6:
	; Equal 16 £temporary2438 -> £temporary2441 0
	cmp byte [rsi], 0
	je strncpy$16

 strncpy$7:
	; IntegralToIntegral £temporary2446 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$8:
	; BinaryAdd £temporary2448 target £temporary2446
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$9:
	; Dereference £temporary2445 -> £temporary2448 £temporary2448 0

 strncpy$10:
	; IntegralToIntegral £temporary2450 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$11:
	; BinaryAdd £temporary2452 source £temporary2450
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$12:
	; Dereference £temporary2449 -> £temporary2452 £temporary2452 0

 strncpy$13:
	; Assign £temporary2445 -> £temporary2448 £temporary2449 -> £temporary2452
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
	; IntegralToIntegral £temporary2456 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$18:
	; BinaryAdd £temporary2458 target £temporary2456
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$19:
	; Dereference £temporary2455 -> £temporary2458 £temporary2458 0

 strncpy$20:
	; Assign £temporary2455 -> £temporary2458 0
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
	; GetReturnValue £temporary2459

 strcat$6:
	; Assign targetLength £temporary2459
	mov [rbp + 44], ebx

 strcat$7:
	; Assign index 0
	mov dword [rbp + 40], 0

 strcat$8:
	; IntegralToIntegral £temporary2461 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$9:
	; BinaryAdd £temporary2463 source £temporary2461
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$10:
	; Dereference £temporary2460 -> £temporary2463 £temporary2463 0

 strcat$11:
	; Equal 22 £temporary2460 -> £temporary2463 0
	cmp byte [rsi], 0
	je strcat$22

 strcat$12:
	; BinaryAdd £temporary2466 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$13:
	; IntegralToIntegral £temporary2468 £temporary2466
	mov rbx, 4294967295
	and rax, rbx

 strcat$14:
	; BinaryAdd £temporary2470 target £temporary2468
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$15:
	; Dereference £temporary2467 -> £temporary2470 £temporary2470 0

 strcat$16:
	; IntegralToIntegral £temporary2472 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$17:
	; BinaryAdd £temporary2474 source £temporary2472
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$18:
	; Dereference £temporary2471 -> £temporary2474 £temporary2474 0

 strcat$19:
	; Assign £temporary2467 -> £temporary2470 £temporary2471 -> £temporary2474
	mov al, [rdi]
	mov [rsi], al

 strcat$20:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 strcat$21:
	; Goto 8
	jmp strcat$8

 strcat$22:
	; BinaryAdd £temporary2475 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$23:
	; IntegralToIntegral £temporary2477 £temporary2475
	mov rbx, 4294967295
	and rax, rbx

 strcat$24:
	; BinaryAdd £temporary2479 target £temporary2477
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$25:
	; Dereference £temporary2476 -> £temporary2479 £temporary2479 0

 strcat$26:
	; Assign £temporary2476 -> £temporary2479 0
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
	; GetReturnValue £temporary2480

 strncat$6:
	; Assign targetLength £temporary2480
	mov [rbp + 48], ebx

 strncat$7:
	; Assign index 0
	mov dword [rbp + 44], 0

 strncat$8:
	; BinarySubtract £temporary2481 size 1
	mov eax, [rbp + 40]
	dec eax

 strncat$9:
	; SignedGreaterThanEqual 24 index £temporary2481
	cmp [rbp + 44], eax
	jge strncat$24

 strncat$10:
	; IntegralToIntegral £temporary2484 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$11:
	; BinaryAdd £temporary2486 source £temporary2484
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$12:
	; Dereference £temporary2483 -> £temporary2486 £temporary2486 0

 strncat$13:
	; Equal 24 £temporary2483 -> £temporary2486 0
	cmp byte [rsi], 0
	je strncat$24

 strncat$14:
	; BinaryAdd £temporary2490 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$15:
	; IntegralToIntegral £temporary2492 £temporary2490
	mov rbx, 4294967295
	and rax, rbx

 strncat$16:
	; BinaryAdd £temporary2494 target £temporary2492
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$17:
	; Dereference £temporary2491 -> £temporary2494 £temporary2494 0

 strncat$18:
	; IntegralToIntegral £temporary2496 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$19:
	; BinaryAdd £temporary2498 source £temporary2496
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$20:
	; Dereference £temporary2495 -> £temporary2498 £temporary2498 0

 strncat$21:
	; Assign £temporary2491 -> £temporary2494 £temporary2495 -> £temporary2498
	mov al, [rdi]
	mov [rsi], al

 strncat$22:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 strncat$23:
	; Goto 8
	jmp strncat$8

 strncat$24:
	; BinaryAdd £temporary2499 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$25:
	; BinarySubtract £temporary2500 £temporary2499 1
	dec eax

 strncat$26:
	; IntegralToIntegral £temporary2502 £temporary2500
	mov rbx, 4294967295
	and rax, rbx

 strncat$27:
	; BinaryAdd £temporary2504 target £temporary2502
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$28:
	; Dereference £temporary2501 -> £temporary2504 £temporary2504 0

 strncat$29:
	; Assign £temporary2501 -> £temporary2504 0
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
	; IntegralToIntegral £temporary2507 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$3:
	; BinaryAdd £temporary2509 left £temporary2507
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$4:
	; Dereference £temporary2506 -> £temporary2509 £temporary2509 0

 strcmp$5:
	; NotEqual 11 £temporary2506 -> £temporary2509 0
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$6:
	; IntegralToIntegral £temporary2512 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$7:
	; BinaryAdd £temporary2514 right £temporary2512
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$8:
	; Dereference £temporary2511 -> £temporary2514 £temporary2514 0

 strcmp$9:
	; NotEqual 11 £temporary2511 -> £temporary2514 0
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
	; IntegralToIntegral £temporary2518 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; BinaryAdd £temporary2520 left £temporary2518
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; Dereference £temporary2517 -> £temporary2520 £temporary2520 0

 strcmp$14:
	; NotEqual 16 £temporary2517 -> £temporary2520 0
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
	; IntegralToIntegral £temporary2523 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$17:
	; BinaryAdd £temporary2525 right £temporary2523
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$18:
	; Dereference £temporary2522 -> £temporary2525 £temporary2525 0

 strcmp$19:
	; NotEqual 21 £temporary2522 -> £temporary2525 0
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
	; IntegralToIntegral £temporary2528 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$22:
	; BinaryAdd £temporary2530 left £temporary2528
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$23:
	; Dereference £temporary2527 -> £temporary2530 £temporary2530 0

 strcmp$24:
	; IntegralToIntegral £temporary2532 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$25:
	; BinaryAdd £temporary2534 right £temporary2532
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$26:
	; Dereference £temporary2531 -> £temporary2534 £temporary2534 0

 strcmp$27:
	; SignedGreaterThanEqual 29 £temporary2527 -> £temporary2530 £temporary2531 -> £temporary2534
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
	; IntegralToIntegral £temporary2537 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$30:
	; BinaryAdd £temporary2539 left £temporary2537
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$31:
	; Dereference £temporary2536 -> £temporary2539 £temporary2539 0

 strcmp$32:
	; IntegralToIntegral £temporary2541 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; BinaryAdd £temporary2543 right £temporary2541
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$34:
	; Dereference £temporary2540 -> £temporary2543 £temporary2543 0

 strcmp$35:
	; SignedLessThanEqual 37 £temporary2536 -> £temporary2539 £temporary2540 -> £temporary2543
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
	; IntegralToIntegral £temporary2549 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$4:
	; BinaryAdd £temporary2551 left £temporary2549
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$5:
	; Dereference £temporary2548 -> £temporary2551 £temporary2551 0

 strncmp$6:
	; NotEqual 12 £temporary2548 -> £temporary2551 0
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$7:
	; IntegralToIntegral £temporary2554 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$8:
	; BinaryAdd £temporary2556 right £temporary2554
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$9:
	; Dereference £temporary2553 -> £temporary2556 £temporary2556 0

 strncmp$10:
	; NotEqual 12 £temporary2553 -> £temporary2556 0
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
	; IntegralToIntegral £temporary2560 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; BinaryAdd £temporary2562 left £temporary2560
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; Dereference £temporary2559 -> £temporary2562 £temporary2562 0

 strncmp$15:
	; NotEqual 17 £temporary2559 -> £temporary2562 0
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
	; IntegralToIntegral £temporary2565 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$18:
	; BinaryAdd £temporary2567 right £temporary2565
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$19:
	; Dereference £temporary2564 -> £temporary2567 £temporary2567 0

 strncmp$20:
	; NotEqual 22 £temporary2564 -> £temporary2567 0
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
	; IntegralToIntegral £temporary2570 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$23:
	; BinaryAdd £temporary2572 left £temporary2570
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$24:
	; Dereference £temporary2569 -> £temporary2572 £temporary2572 0

 strncmp$25:
	; IntegralToIntegral £temporary2574 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$26:
	; BinaryAdd £temporary2576 right £temporary2574
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$27:
	; Dereference £temporary2573 -> £temporary2576 £temporary2576 0

 strncmp$28:
	; SignedGreaterThanEqual 30 £temporary2569 -> £temporary2572 £temporary2573 -> £temporary2576
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
	; IntegralToIntegral £temporary2579 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$31:
	; BinaryAdd £temporary2581 left £temporary2579
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$32:
	; Dereference £temporary2578 -> £temporary2581 £temporary2581 0

 strncmp$33:
	; IntegralToIntegral £temporary2583 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; BinaryAdd £temporary2585 right £temporary2583
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$35:
	; Dereference £temporary2582 -> £temporary2585 £temporary2585 0

 strncmp$36:
	; SignedLessThanEqual 38 £temporary2578 -> £temporary2581 £temporary2582 -> £temporary2585
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
	; IntegralToIntegral £temporary2587 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

 strchr$2:
	; Assign c £temporary2587
	mov [rbp + 40], al

 strchr$3:
	; Assign index 0
	mov dword [rbp + 36], 0

 strchr$4:
	; IntegralToIntegral £temporary2589 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$5:
	; BinaryAdd £temporary2591 text £temporary2589
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$6:
	; Dereference £temporary2588 -> £temporary2591 £temporary2591 0

 strchr$7:
	; Equal 19 £temporary2588 -> £temporary2591 0
	cmp byte [rsi], 0
	je strchr$19

 strchr$8:
	; IntegralToIntegral £temporary2595 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$9:
	; BinaryAdd £temporary2597 text £temporary2595
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$10:
	; Dereference £temporary2594 -> £temporary2597 £temporary2597 0

 strchr$11:
	; NotEqual 17 £temporary2594 -> £temporary2597 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$12:
	; IntegralToIntegral £temporary2600 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$13:
	; BinaryAdd £temporary2602 text £temporary2600
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$14:
	; Dereference £temporary2599 -> £temporary2602 £temporary2602 0

 strchr$15:
	; Address £temporary2603 £temporary2599 -> £temporary2602

 strchr$16:
	; Return £temporary2603
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
	; IntegralToIntegral £temporary2604 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

 strrchr$3:
	; Assign c £temporary2604
	mov [rbp + 48], al

 strrchr$4:
	; Assign index 0
	mov dword [rbp + 36], 0

 strrchr$5:
	; IntegralToIntegral £temporary2606 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$6:
	; BinaryAdd £temporary2608 text £temporary2606
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$7:
	; Dereference £temporary2605 -> £temporary2608 £temporary2608 0

 strrchr$8:
	; Equal 20 £temporary2605 -> £temporary2608 0
	cmp byte [rsi], 0
	je strrchr$20

 strrchr$9:
	; IntegralToIntegral £temporary2612 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$10:
	; BinaryAdd £temporary2614 text £temporary2612
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$11:
	; Dereference £temporary2611 -> £temporary2614 £temporary2614 0

 strrchr$12:
	; NotEqual 18 £temporary2611 -> £temporary2614 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$18

 strrchr$13:
	; IntegralToIntegral £temporary2617 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$14:
	; BinaryAdd £temporary2619 text £temporary2617
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$15:
	; Dereference £temporary2616 -> £temporary2619 £temporary2619 0

 strrchr$16:
	; Address £temporary2620 £temporary2616 -> £temporary2619

 strrchr$17:
	; Assign result £temporary2620
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
	; IntegralToIntegral £temporary2622 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$3:
	; BinaryAdd £temporary2624 mainString £temporary2622
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$4:
	; Dereference £temporary2621 -> £temporary2624 £temporary2624 0

 strspn$5:
	; Equal 20 £temporary2621 -> £temporary2624 0
	cmp byte [rsi], 0
	je strspn$20

 strspn$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$8:
	; IntegralToIntegral £temporary2628 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$9:
	; BinaryAdd £temporary2630 mainString £temporary2628
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$10:
	; Dereference £temporary2627 -> £temporary2630 £temporary2630 0

 strspn$11:
	; IntegralToIntegral £temporary2631 £temporary2627 -> £temporary2630
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

 strspn$12:
	; Parameter signedint £temporary2631 76
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
	; GetReturnValue £temporary2632

 strspn$16:
	; NotEqual 18 £temporary2632 0
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
	; IntegralToIntegral £temporary2635 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$3:
	; BinaryAdd £temporary2637 mainString £temporary2635
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$4:
	; Dereference £temporary2634 -> £temporary2637 £temporary2637 0

 strcspn$5:
	; Equal 20 £temporary2634 -> £temporary2637 0
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$8:
	; IntegralToIntegral £temporary2641 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$9:
	; BinaryAdd £temporary2643 mainString £temporary2641
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$10:
	; Dereference £temporary2640 -> £temporary2643 £temporary2643 0

 strcspn$11:
	; IntegralToIntegral £temporary2644 £temporary2640 -> £temporary2643
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

 strcspn$12:
	; Parameter signedint £temporary2644 76
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
	; GetReturnValue £temporary2645

 strcspn$16:
	; Equal 18 £temporary2645 0
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
	; IntegralToIntegral £temporary2648 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$3:
	; BinaryAdd £temporary2650 mainString £temporary2648
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$4:
	; Dereference £temporary2647 -> £temporary2650 £temporary2650 0

 strpbrk$5:
	; Equal 24 £temporary2647 -> £temporary2650 0
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$7:
	; Parameter pointer charSet 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$8:
	; IntegralToIntegral £temporary2654 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$9:
	; BinaryAdd £temporary2656 mainString £temporary2654
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$10:
	; Dereference £temporary2653 -> £temporary2656 £temporary2656 0

 strpbrk$11:
	; IntegralToIntegral £temporary2657 £temporary2653 -> £temporary2656
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

 strpbrk$12:
	; Parameter signedint £temporary2657 76
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
	; GetReturnValue £temporary2658

 strpbrk$16:
	; Equal 22 £temporary2658 0
	cmp rbx, 0
	je strpbrk$22

 strpbrk$17:
	; IntegralToIntegral £temporary2661 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$18:
	; BinaryAdd £temporary2663 mainString £temporary2661
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$19:
	; Dereference £temporary2660 -> £temporary2663 £temporary2663 0

 strpbrk$20:
	; Address £temporary2664 £temporary2660 -> £temporary2663

 strpbrk$21:
	; Return £temporary2664
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
	; IntegralToIntegral £temporary2666 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$3:
	; BinaryAdd £temporary2668 mainString £temporary2666
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$4:
	; Dereference £temporary2665 -> £temporary2668 £temporary2668 0

 strstr$5:
	; Equal 22 £temporary2665 -> £temporary2668 0
	cmp byte [rsi], 0
	je strstr$22

 strstr$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$7:
	; IntegralToIntegral £temporary2671 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; BinaryAdd £temporary2672 mainString £temporary2671
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$9:
	; Parameter pointer £temporary2672 68
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
	; GetReturnValue £temporary2674

 strstr$14:
	; NotEqual 20 £temporary2674 0
	cmp ebx, 0
	jne strstr$20

 strstr$15:
	; IntegralToIntegral £temporary2677 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$16:
	; BinaryAdd £temporary2679 mainString £temporary2677
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$17:
	; Dereference £temporary2676 -> £temporary2679 £temporary2679 0

 strstr$18:
	; Address £temporary2680 £temporary2676 -> £temporary2679

 strstr$19:
	; Return £temporary2680
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
	; IntegralToIntegral £temporary2682 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$3:
	; BinaryAdd £temporary2684 string £temporary2682
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$4:
	; Dereference £temporary2681 -> £temporary2684 £temporary2684 0

 strlen$5:
	; Equal 8 £temporary2681 -> £temporary2684 0
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
	; GetReturnValue £temporary2687

 strerror$4:
	; Assign localeConvPtr £temporary2687
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 9 localeConvPtr 0
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; Dereference £temporary2689 -> localeConvPtr localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign £temporary2690 £temporary2689 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; Goto 10
	jmp strerror$10

 strerror$9:
	; Assign £temporary2690 0
	mov rax, 0

 strerror$10:
	; Assign messageList £temporary2690
	mov [rbp + 36], rax

 strerror$11:
	; Equal 14 messageList 0
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; Assign £temporary2692 messageList
	mov rax, [rbp + 36]

 strerror$13:
	; Goto 15
	jmp strerror$15

 strerror$14:
	; Assign £temporary2692 enMessageList
	mov rax, enMessageList

 strerror$15:
	; Assign messageList £temporary2692
	mov [rbp + 36], rax

 strerror$16:
	; IntegralToIntegral £temporary2694 errno
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; UnsignedMultiply £temporary2695 £temporary2694 8
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; BinaryAdd £temporary2696 messageList £temporary2695
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; Dereference £temporary2693 -> £temporary2696 £temporary2696 0

 strerror$20:
	; Return £temporary2693 -> £temporary2696
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
	; Dereference £temporary2698 -> string string 0
	mov rsi, [rbp + 24]

 strtok$3:
	; NotEqual 5 £temporary2698 -> string 0
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
	; IntegralToIntegral £temporary2701 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; BinaryAdd £temporary2703 string £temporary2701
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; Dereference £temporary2700 -> £temporary2703 £temporary2703 0

 strtok$9:
	; Equal 34 £temporary2700 -> £temporary2703 0
	cmp byte [rsi], 0
	je strtok$34

 strtok$10:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; IntegralToIntegral £temporary2707 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; BinaryAdd £temporary2709 string £temporary2707
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; Dereference £temporary2706 -> £temporary2709 £temporary2709 0

 strtok$15:
	; IntegralToIntegral £temporary2710 £temporary2706 -> £temporary2709
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; Parameter signedint £temporary2710 84
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
	; GetReturnValue £temporary2711

 strtok$20:
	; Equal 32 £temporary2711 0
	cmp rbx, 0
	je strtok$32

 strtok$21:
	; IntegralToIntegral £temporary2714 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; BinaryAdd £temporary2716 string £temporary2714
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; Dereference £temporary2713 -> £temporary2716 £temporary2716 0

 strtok$24:
	; Assign £temporary2713 -> £temporary2716 0
	mov byte [rsi], 0

 strtok$25:
	; BinaryAdd £temporary2717 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; IntegralToIntegral £temporary2719 £temporary2717
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; BinaryAdd £temporary2721 string £temporary2719
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; Dereference £temporary2718 -> £temporary2721 £temporary2721 0

 strtok$29:
	; Address £temporary2722 £temporary2718 -> £temporary2721

 strtok$30:
	; Assign token £temporary2722
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
	; IntegralToIntegral £temporary2724 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$35:
	; BinaryAdd £temporary2726 string £temporary2724
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$36:
	; Dereference £temporary2723 -> £temporary2726 £temporary2726 0

 strtok$37:
	; Address £temporary2727 £temporary2723 -> £temporary2726

 strtok$38:
	; Assign token £temporary2727
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
	; Dereference £temporary2729 -> token token 0
	mov rsi, [token]

 strtok$43:
	; NotEqual 45 £temporary2729 -> token 0
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
	; IntegralToIntegral £temporary2732 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$47:
	; BinaryAdd £temporary2734 token £temporary2732
	mov rsi, [token]
	add rsi, rax

 strtok$48:
	; Dereference £temporary2731 -> £temporary2734 £temporary2734 0

 strtok$49:
	; Equal 75 £temporary2731 -> £temporary2734 0
	cmp byte [rsi], 0
	je strtok$75

 strtok$50:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$51:
	; Parameter pointer charSet 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$52:
	; IntegralToIntegral £temporary2738 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$53:
	; BinaryAdd £temporary2740 token £temporary2738
	mov rsi, [token]
	add rsi, rax

 strtok$54:
	; Dereference £temporary2737 -> £temporary2740 £temporary2740 0

 strtok$55:
	; IntegralToIntegral £temporary2741 £temporary2737 -> £temporary2740
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$56
	neg al
	neg eax

 strtok$56:
	; Parameter signedint £temporary2741 84
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
	; GetReturnValue £temporary2742

 strtok$60:
	; Equal 73 £temporary2742 0
	cmp rbx, 0
	je strtok$73

 strtok$61:
	; Assign tokenStart2 token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$62:
	; IntegralToIntegral £temporary2745 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$63:
	; BinaryAdd £temporary2747 token £temporary2745
	mov rsi, [token]
	add rsi, rax

 strtok$64:
	; Dereference £temporary2744 -> £temporary2747 £temporary2747 0

 strtok$65:
	; Assign £temporary2744 -> £temporary2747 0
	mov byte [rsi], 0

 strtok$66:
	; BinaryAdd £temporary2748 index 1
	mov eax, [rbp + 40]
	inc eax

 strtok$67:
	; IntegralToIntegral £temporary2750 £temporary2748
	mov rbx, 4294967295
	and rax, rbx

 strtok$68:
	; BinaryAdd £temporary2752 token £temporary2750
	mov rsi, [token]
	add rsi, rax

 strtok$69:
	; Dereference £temporary2749 -> £temporary2752 £temporary2752 0

 strtok$70:
	; Address £temporary2753 £temporary2749 -> £temporary2752

 strtok$71:
	; Assign token £temporary2753
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
	; IntegralToIntegral £temporary2755 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$77:
	; BinaryAdd £temporary2757 token £temporary2755
	mov rsi, [token]
	add rsi, rax

 strtok$78:
	; Dereference £temporary2754 -> £temporary2757 £temporary2757 0

 strtok$79:
	; Address £temporary2758 £temporary2754 -> £temporary2757

 strtok$80:
	; Assign token £temporary2758
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
	; IntegralToIntegral £temporary2759 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary2759
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary2760 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary2760
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
	; IntegralToIntegral £temporary2764 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; BinaryAdd £temporary2766 charTarget £temporary2764
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary2763 -> £temporary2766 £temporary2766 0

 memcpy$9:
	; IntegralToIntegral £temporary2768 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; BinaryAdd £temporary2770 charSource £temporary2768
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary2767 -> £temporary2770 £temporary2770 0

 memcpy$12:
	; Assign £temporary2763 -> £temporary2766 £temporary2767 -> £temporary2770
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memcpy$14:
	; Goto 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary2771 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; Return £temporary2771
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary2772 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary2772
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary2773 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary2773
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
	; IntegralToIntegral £temporary2779 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; BinaryAdd £temporary2781 charTarget £temporary2779
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary2778 -> £temporary2781 £temporary2781 0

 memmove$10:
	; IntegralToIntegral £temporary2783 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; BinaryAdd £temporary2785 charSource £temporary2783
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary2782 -> £temporary2785 £temporary2785 0

 memmove$13:
	; Assign £temporary2778 -> £temporary2781 £temporary2782 -> £temporary2785
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
	; IntegralToIntegral £temporary2789 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; BinaryAdd £temporary2791 charTarget £temporary2789
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary2788 -> £temporary2791 £temporary2791 0

 memmove$21:
	; IntegralToIntegral £temporary2793 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; BinaryAdd £temporary2795 charSource £temporary2793
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary2792 -> £temporary2795 £temporary2795 0

 memmove$24:
	; Assign £temporary2788 -> £temporary2791 £temporary2792 -> £temporary2795
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 memmove$26:
	; Goto 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary2796 target
	mov rbx, [rbp + 24]

 memmove$28:
	; Return £temporary2796
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary2797 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary2797
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary2798 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary2798
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
	; IntegralToIntegral £temporary2802 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; BinaryAdd £temporary2804 charLeft £temporary2802
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary2801 -> £temporary2804 £temporary2804 0

 memcmp$9:
	; IntegralToIntegral £temporary2806 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; BinaryAdd £temporary2808 charRight £temporary2806
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary2805 -> £temporary2808 £temporary2808 0

 memcmp$12:
	; SignedGreaterThanEqual 14 £temporary2801 -> £temporary2804 £temporary2805 -> £temporary2808
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
	; IntegralToIntegral £temporary2811 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; BinaryAdd £temporary2813 charLeft £temporary2811
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; Dereference £temporary2810 -> £temporary2813 £temporary2813 0

 memcmp$17:
	; IntegralToIntegral £temporary2815 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; BinaryAdd £temporary2817 charRight £temporary2815
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; Dereference £temporary2814 -> £temporary2817 £temporary2817 0

 memcmp$20:
	; SignedLessThanEqual 22 £temporary2810 -> £temporary2813 £temporary2814 -> £temporary2817
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
	; IntegralToIntegral £temporary2819 block
	mov rax, [rbp + 24]

 memchr$2:
	; Assign charBlock £temporary2819
	mov [rbp + 44], rax

 memchr$3:
	; IntegralToIntegral £temporary2820 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

 memchr$4:
	; Assign c £temporary2820
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
	; IntegralToIntegral £temporary2824 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$8:
	; BinaryAdd £temporary2826 charBlock £temporary2824
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$9:
	; Dereference £temporary2823 -> £temporary2826 £temporary2826 0

 memchr$10:
	; NotEqual 17 £temporary2823 -> £temporary2826 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$11:
	; IntegralToIntegral £temporary2829 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$12:
	; BinaryAdd £temporary2831 charBlock £temporary2829
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$13:
	; Dereference £temporary2828 -> £temporary2831 £temporary2831 0

 memchr$14:
	; Address £temporary2832 £temporary2828 -> £temporary2831

 memchr$15:
	; IntegralToIntegral £temporary2833 £temporary2832

 memchr$16:
	; Return £temporary2833
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
	; IntegralToIntegral £temporary2834 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary2834
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary2835 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary2835
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
	; IntegralToIntegral £temporary2839 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; BinaryAdd £temporary2841 charBlock £temporary2839
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary2838 -> £temporary2841 £temporary2841 0

 memset$9:
	; Assign £temporary2838 -> £temporary2841 c
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
