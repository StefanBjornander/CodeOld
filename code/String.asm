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

 strcpy:
	; empty

 strcpy$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strcpy$2:
	; £temporary2523 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$3:
	; £temporary2525 = source + £temporary2523
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$4:
	; £field2522 -> £temporary2525 = *£temporary2525

 strcpy$5:
	; if £field2522 -> £temporary2525 == int1$0# goto 15
	cmp byte [rsi], 0
	je strcpy$15

 strcpy$6:
	; £temporary2529 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$7:
	; £temporary2531 = target + £temporary2529
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$8:
	; £field2528 -> £temporary2531 = *£temporary2531

 strcpy$9:
	; £temporary2533 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$10:
	; £temporary2535 = source + £temporary2533
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$11:
	; £field2532 -> £temporary2535 = *£temporary2535

 strcpy$12:
	; £field2528 -> £temporary2531 = £field2532 -> £temporary2535
	mov al, [rdi]
	mov [rsi], al

 strcpy$13:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strcpy$14:
	; goto 2
	jmp strcpy$2

 strcpy$15:
	; £temporary2537 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$16:
	; £temporary2539 = target + £temporary2537
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$17:
	; £field2536 -> £temporary2539 = *£temporary2539

 strcpy$18:
	; £field2536 -> £temporary2539 = int1$0#
	mov byte [rsi], 0

 strcpy$19:
	; return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcpy$20:
	; function end strcpy

 strncpy:
	; empty

 strncpy$1:
	; index = int4$0#
	mov dword [rbp + 44], 0

 strncpy$2:
	; if index >= size goto 16
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$16

 strncpy$3:
	; £temporary2542 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$4:
	; £temporary2544 = source + £temporary2542
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$5:
	; £field2541 -> £temporary2544 = *£temporary2544

 strncpy$6:
	; if £field2541 -> £temporary2544 == int1$0# goto 16
	cmp byte [rsi], 0
	je strncpy$16

 strncpy$7:
	; £temporary2549 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$8:
	; £temporary2551 = target + £temporary2549
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$9:
	; £field2548 -> £temporary2551 = *£temporary2551

 strncpy$10:
	; £temporary2553 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$11:
	; £temporary2555 = source + £temporary2553
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$12:
	; £field2552 -> £temporary2555 = *£temporary2555

 strncpy$13:
	; £field2548 -> £temporary2551 = £field2552 -> £temporary2555
	mov al, [rdi]
	mov [rsi], al

 strncpy$14:
	; index = index + int4$1#
	inc dword [rbp + 44]

 strncpy$15:
	; goto 2
	jmp strncpy$2

 strncpy$16:
	; if index >= size goto 23
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$23

 strncpy$17:
	; £temporary2559 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$18:
	; £temporary2561 = target + £temporary2559
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$19:
	; £field2558 -> £temporary2561 = *£temporary2561

 strncpy$20:
	; £field2558 -> £temporary2561 = int1$0#
	mov byte [rsi], 0

 strncpy$21:
	; index = index + int4$1#
	inc dword [rbp + 44]

 strncpy$22:
	; goto 16
	jmp strncpy$16

 strncpy$23:
	; return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncpy$24:
	; function end strncpy

 strcat:
	; empty

 strcat$1:
	; call header integral zero 0 stack zero 0

 strcat$2:
	; parameter target, offset 68
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 strcat$3:
	; call function noellipse-noellipse strlen
	mov qword [rbp + 44], strcat$4
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strlen

 strcat$4:
	; post call

 strcat$5:
	; £temporary2562 = return_value

 strcat$6:
	; targetLength = £temporary2562
	mov [rbp + 44], ebx

 strcat$7:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strcat$8:
	; £temporary2564 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$9:
	; £temporary2566 = source + £temporary2564
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$10:
	; £field2563 -> £temporary2566 = *£temporary2566

 strcat$11:
	; if £field2563 -> £temporary2566 == int1$0# goto 22
	cmp byte [rsi], 0
	je strcat$22

 strcat$12:
	; £temporary2569 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$13:
	; £temporary2571 = int_to_int £temporary2569 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strcat$14:
	; £temporary2573 = target + £temporary2571
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$15:
	; £field2570 -> £temporary2573 = *£temporary2573

 strcat$16:
	; £temporary2575 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$17:
	; £temporary2577 = source + £temporary2575
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$18:
	; £field2574 -> £temporary2577 = *£temporary2577

 strcat$19:
	; £field2570 -> £temporary2573 = £field2574 -> £temporary2577
	mov al, [rdi]
	mov [rsi], al

 strcat$20:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strcat$21:
	; goto 8
	jmp strcat$8

 strcat$22:
	; £temporary2578 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$23:
	; £temporary2580 = int_to_int £temporary2578 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strcat$24:
	; £temporary2582 = target + £temporary2580
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$25:
	; £field2579 -> £temporary2582 = *£temporary2582

 strcat$26:
	; £field2579 -> £temporary2582 = int1$0#
	mov byte [rsi], 0

 strcat$27:
	; return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcat$28:
	; function end strcat

 strncat:
	; empty

 strncat$1:
	; call header integral zero 0 stack zero 0

 strncat$2:
	; parameter target, offset 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 strncat$3:
	; call function noellipse-noellipse strlen
	mov qword [rbp + 48], strncat$4
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strlen

 strncat$4:
	; post call

 strncat$5:
	; £temporary2583 = return_value

 strncat$6:
	; targetLength = £temporary2583
	mov [rbp + 48], ebx

 strncat$7:
	; index = int4$0#
	mov dword [rbp + 44], 0

 strncat$8:
	; £temporary2584 = size - int4$1#
	mov eax, [rbp + 40]
	dec eax

 strncat$9:
	; if index >= £temporary2584 goto 24
	cmp [rbp + 44], eax
	jge strncat$24

 strncat$10:
	; £temporary2587 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$11:
	; £temporary2589 = source + £temporary2587
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$12:
	; £field2586 -> £temporary2589 = *£temporary2589

 strncat$13:
	; if £field2586 -> £temporary2589 == int1$0# goto 24
	cmp byte [rsi], 0
	je strncat$24

 strncat$14:
	; £temporary2593 = targetLength + index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$15:
	; £temporary2595 = int_to_int £temporary2593 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strncat$16:
	; £temporary2597 = target + £temporary2595
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$17:
	; £field2594 -> £temporary2597 = *£temporary2597

 strncat$18:
	; £temporary2599 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$19:
	; £temporary2601 = source + £temporary2599
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$20:
	; £field2598 -> £temporary2601 = *£temporary2601

 strncat$21:
	; £field2594 -> £temporary2597 = £field2598 -> £temporary2601
	mov al, [rdi]
	mov [rsi], al

 strncat$22:
	; index = index + int4$1#
	inc dword [rbp + 44]

 strncat$23:
	; goto 8
	jmp strncat$8

 strncat$24:
	; £temporary2602 = targetLength + size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$25:
	; £temporary2603 = £temporary2602 - int4$1#
	dec eax

 strncat$26:
	; £temporary2605 = int_to_int £temporary2603 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strncat$27:
	; £temporary2607 = target + £temporary2605
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$28:
	; £field2604 -> £temporary2607 = *£temporary2607

 strncat$29:
	; £field2604 -> £temporary2607 = int1$0#
	mov byte [rsi], 0

 strncat$30:
	; return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncat$31:
	; function end strncat

 strcmp:
	; empty

 strcmp$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strcmp$2:
	; £temporary2610 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$3:
	; £temporary2612 = left + £temporary2610
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$4:
	; £field2609 -> £temporary2612 = *£temporary2612

 strcmp$5:
	; if £field2609 -> £temporary2612 != int1$0# goto 11
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$6:
	; £temporary2615 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$7:
	; £temporary2617 = right + £temporary2615
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$8:
	; £field2614 -> £temporary2617 = *£temporary2617

 strcmp$9:
	; if £field2614 -> £temporary2617 != int1$0# goto 11
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$10:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$11:
	; £temporary2621 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; £temporary2623 = left + £temporary2621
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; £field2620 -> £temporary2623 = *£temporary2623

 strcmp$14:
	; if £field2620 -> £temporary2623 != int1$0# goto 16
	cmp byte [rsi], 0
	jne strcmp$16

 strcmp$15:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$16:
	; £temporary2626 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$17:
	; £temporary2628 = right + £temporary2626
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$18:
	; £field2625 -> £temporary2628 = *£temporary2628

 strcmp$19:
	; if £field2625 -> £temporary2628 != int1$0# goto 21
	cmp byte [rsi], 0
	jne strcmp$21

 strcmp$20:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$21:
	; £temporary2631 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$22:
	; £temporary2633 = left + £temporary2631
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$23:
	; £field2630 -> £temporary2633 = *£temporary2633

 strcmp$24:
	; £temporary2635 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$25:
	; £temporary2637 = right + £temporary2635
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$26:
	; £field2634 -> £temporary2637 = *£temporary2637

 strcmp$27:
	; if £field2630 -> £temporary2633 >= £field2634 -> £temporary2637 goto 29
	mov al, [rdi]
	cmp [rsi], al
	jge strcmp$29

 strcmp$28:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$29:
	; £temporary2640 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$30:
	; £temporary2642 = left + £temporary2640
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$31:
	; £field2639 -> £temporary2642 = *£temporary2642

 strcmp$32:
	; £temporary2644 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; £temporary2646 = right + £temporary2644
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$34:
	; £field2643 -> £temporary2646 = *£temporary2646

 strcmp$35:
	; if £field2639 -> £temporary2642 <= £field2643 -> £temporary2646 goto 37
	mov al, [rdi]
	cmp [rsi], al
	jle strcmp$37

 strcmp$36:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$37:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strcmp$38:
	; goto 2
	jmp strcmp$2

 strcmp$39:
	; function end strcmp

 strncmp:
	; empty

 strncmp$1:
	; index = int4$0#
	mov dword [rbp + 44], 0

 strncmp$2:
	; if index >= size goto 40
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncmp$40

 strncmp$3:
	; £temporary2652 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$4:
	; £temporary2654 = left + £temporary2652
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$5:
	; £field2651 -> £temporary2654 = *£temporary2654

 strncmp$6:
	; if £field2651 -> £temporary2654 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$7:
	; £temporary2657 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$8:
	; £temporary2659 = right + £temporary2657
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$9:
	; £field2656 -> £temporary2659 = *£temporary2659

 strncmp$10:
	; if £field2656 -> £temporary2659 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$11:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$12:
	; £temporary2663 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; £temporary2665 = left + £temporary2663
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; £field2662 -> £temporary2665 = *£temporary2665

 strncmp$15:
	; if £field2662 -> £temporary2665 != int1$0# goto 17
	cmp byte [rsi], 0
	jne strncmp$17

 strncmp$16:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$17:
	; £temporary2668 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$18:
	; £temporary2670 = right + £temporary2668
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$19:
	; £field2667 -> £temporary2670 = *£temporary2670

 strncmp$20:
	; if £field2667 -> £temporary2670 != int1$0# goto 22
	cmp byte [rsi], 0
	jne strncmp$22

 strncmp$21:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$22:
	; £temporary2673 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$23:
	; £temporary2675 = left + £temporary2673
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$24:
	; £field2672 -> £temporary2675 = *£temporary2675

 strncmp$25:
	; £temporary2677 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$26:
	; £temporary2679 = right + £temporary2677
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$27:
	; £field2676 -> £temporary2679 = *£temporary2679

 strncmp$28:
	; if £field2672 -> £temporary2675 >= £field2676 -> £temporary2679 goto 30
	mov al, [rdi]
	cmp [rsi], al
	jge strncmp$30

 strncmp$29:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$30:
	; £temporary2682 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$31:
	; £temporary2684 = left + £temporary2682
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$32:
	; £field2681 -> £temporary2684 = *£temporary2684

 strncmp$33:
	; £temporary2686 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; £temporary2688 = right + £temporary2686
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$35:
	; £field2685 -> £temporary2688 = *£temporary2688

 strncmp$36:
	; if £field2681 -> £temporary2684 <= £field2685 -> £temporary2688 goto 38
	mov al, [rdi]
	cmp [rsi], al
	jle strncmp$38

 strncmp$37:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$38:
	; index = index + int4$1#
	inc dword [rbp + 44]

 strncmp$39:
	; goto 2
	jmp strncmp$2

 strncmp$40:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$41:
	; function end strncmp

 strchr:
	; empty

 strchr$1:
	; £temporary2690 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

 strchr$2:
	; c = £temporary2690
	mov [rbp + 40], al

 strchr$3:
	; index = int4$0#
	mov dword [rbp + 36], 0

 strchr$4:
	; £temporary2692 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$5:
	; £temporary2694 = text + £temporary2692
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$6:
	; £field2691 -> £temporary2694 = *£temporary2694

 strchr$7:
	; if £field2691 -> £temporary2694 == int1$0# goto 19
	cmp byte [rsi], 0
	je strchr$19

 strchr$8:
	; £temporary2698 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$9:
	; £temporary2700 = text + £temporary2698
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$10:
	; £field2697 -> £temporary2700 = *£temporary2700

 strchr$11:
	; if £field2697 -> £temporary2700 != c goto 17
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$12:
	; £temporary2703 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$13:
	; £temporary2705 = text + £temporary2703
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$14:
	; £field2702 -> £temporary2705 = *£temporary2705

 strchr$15:
	; £temporary2706 = &£field2702 -> £temporary2705

 strchr$16:
	; return £temporary2706
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$17:
	; index = index + int4$1#
	inc dword [rbp + 36]

 strchr$18:
	; goto 4
	jmp strchr$4

 strchr$19:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$20:
	; function end strchr

 strrchr:
	; empty

 strrchr$1:
	; result = int8$0#
	mov qword [rbp + 40], 0

 strrchr$2:
	; £temporary2707 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

 strrchr$3:
	; c = £temporary2707
	mov [rbp + 48], al

 strrchr$4:
	; index = int4$0#
	mov dword [rbp + 36], 0

 strrchr$5:
	; £temporary2709 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$6:
	; £temporary2711 = text + £temporary2709
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$7:
	; £field2708 -> £temporary2711 = *£temporary2711

 strrchr$8:
	; if £field2708 -> £temporary2711 == int1$0# goto 20
	cmp byte [rsi], 0
	je strrchr$20

 strrchr$9:
	; £temporary2715 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$10:
	; £temporary2717 = text + £temporary2715
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$11:
	; £field2714 -> £temporary2717 = *£temporary2717

 strrchr$12:
	; if £field2714 -> £temporary2717 != c goto 18
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$18

 strrchr$13:
	; £temporary2720 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$14:
	; £temporary2722 = text + £temporary2720
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$15:
	; £field2719 -> £temporary2722 = *£temporary2722

 strrchr$16:
	; £temporary2723 = &£field2719 -> £temporary2722

 strrchr$17:
	; result = £temporary2723
	mov [rbp + 40], rsi

 strrchr$18:
	; index = index + int4$1#
	inc dword [rbp + 36]

 strrchr$19:
	; goto 5
	jmp strrchr$5

 strrchr$20:
	; return result
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strrchr$21:
	; function end strrchr

 strspn:
	; empty

 strspn$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strspn$2:
	; £temporary2725 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$3:
	; £temporary2727 = mainString + £temporary2725
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$4:
	; £field2724 -> £temporary2727 = *£temporary2727

 strspn$5:
	; if £field2724 -> £temporary2727 == int1$0# goto 20
	cmp byte [rsi], 0
	je strspn$20

 strspn$6:
	; call header integral zero 0 stack zero 0

 strspn$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$8:
	; £temporary2731 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$9:
	; £temporary2733 = mainString + £temporary2731
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$10:
	; £field2730 -> £temporary2733 = *£temporary2733

 strspn$11:
	; £temporary2734 = int_to_int £field2730 -> £temporary2733 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

 strspn$12:
	; parameter £temporary2734, offset 76
	mov [rbp + 76], eax

 strspn$13:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strspn$14:
	; post call

 strspn$15:
	; £temporary2735 = return_value

 strspn$16:
	; if £temporary2735 != int8$0# goto 18
	cmp rbx, 0
	jne strspn$18

 strspn$17:
	; return index
	mov ebx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$18:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strspn$19:
	; goto 2
	jmp strspn$2

 strspn$20:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$21:
	; function end strspn

 strcspn:
	; empty

 strcspn$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strcspn$2:
	; £temporary2738 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$3:
	; £temporary2740 = mainString + £temporary2738
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$4:
	; £field2737 -> £temporary2740 = *£temporary2740

 strcspn$5:
	; if £field2737 -> £temporary2740 == int1$0# goto 20
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$6:
	; call header integral zero 0 stack zero 0

 strcspn$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$8:
	; £temporary2744 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$9:
	; £temporary2746 = mainString + £temporary2744
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$10:
	; £field2743 -> £temporary2746 = *£temporary2746

 strcspn$11:
	; £temporary2747 = int_to_int £field2743 -> £temporary2746 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

 strcspn$12:
	; parameter £temporary2747, offset 76
	mov [rbp + 76], eax

 strcspn$13:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strcspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strcspn$14:
	; post call

 strcspn$15:
	; £temporary2748 = return_value

 strcspn$16:
	; if £temporary2748 == int8$0# goto 18
	cmp rbx, 0
	je strcspn$18

 strcspn$17:
	; return index
	mov ebx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$18:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strcspn$19:
	; goto 2
	jmp strcspn$2

 strcspn$20:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$21:
	; function end strcspn

 strpbrk:
	; empty

 strpbrk$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strpbrk$2:
	; £temporary2751 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$3:
	; £temporary2753 = mainString + £temporary2751
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$4:
	; £field2750 -> £temporary2753 = *£temporary2753

 strpbrk$5:
	; if £field2750 -> £temporary2753 == int1$0# goto 24
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$6:
	; call header integral zero 0 stack zero 0

 strpbrk$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$8:
	; £temporary2757 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$9:
	; £temporary2759 = mainString + £temporary2757
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$10:
	; £field2756 -> £temporary2759 = *£temporary2759

 strpbrk$11:
	; £temporary2760 = int_to_int £field2756 -> £temporary2759 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

 strpbrk$12:
	; parameter £temporary2760, offset 76
	mov [rbp + 76], eax

 strpbrk$13:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strpbrk$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strpbrk$14:
	; post call

 strpbrk$15:
	; £temporary2761 = return_value

 strpbrk$16:
	; if £temporary2761 == int8$0# goto 22
	cmp rbx, 0
	je strpbrk$22

 strpbrk$17:
	; £temporary2764 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$18:
	; £temporary2766 = mainString + £temporary2764
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$19:
	; £field2763 -> £temporary2766 = *£temporary2766

 strpbrk$20:
	; £temporary2767 = &£field2763 -> £temporary2766

 strpbrk$21:
	; return £temporary2767
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$22:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strpbrk$23:
	; goto 2
	jmp strpbrk$2

 strpbrk$24:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$25:
	; function end strpbrk

 strstr:
	; empty

 strstr$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strstr$2:
	; £temporary2769 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$3:
	; £temporary2771 = mainString + £temporary2769
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$4:
	; £field2768 -> £temporary2771 = *£temporary2771

 strstr$5:
	; if £field2768 -> £temporary2771 == int1$0# goto 22
	cmp byte [rsi], 0
	je strstr$22

 strstr$6:
	; call header integral zero 0 stack zero 0

 strstr$7:
	; £temporary2774 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; £temporary2775 = mainString + £temporary2774
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$9:
	; parameter £temporary2775, offset 68
	mov [rbp + 68], rbx

 strstr$10:
	; parameter subString, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strstr$11:
	; call function noellipse-noellipse strcmp
	mov qword [rbp + 44], strstr$12
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strcmp

 strstr$12:
	; post call

 strstr$13:
	; £temporary2777 = return_value

 strstr$14:
	; if £temporary2777 != int4$0# goto 20
	cmp ebx, 0
	jne strstr$20

 strstr$15:
	; £temporary2780 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$16:
	; £temporary2782 = mainString + £temporary2780
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$17:
	; £field2779 -> £temporary2782 = *£temporary2782

 strstr$18:
	; £temporary2783 = &£field2779 -> £temporary2782

 strstr$19:
	; return £temporary2783
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$20:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strstr$21:
	; goto 2
	jmp strstr$2

 strstr$22:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$23:
	; function end strstr

 strlen:
	; empty

 strlen$1:
	; index = int4$0#
	mov dword [rbp + 32], 0

 strlen$2:
	; £temporary2785 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$3:
	; £temporary2787 = string + £temporary2785
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$4:
	; £field2784 -> £temporary2787 = *£temporary2787

 strlen$5:
	; if £field2784 -> £temporary2787 == int1$0# goto 8
	cmp byte [rsi], 0
	je strlen$8

 strlen$6:
	; index = index + int4$1#
	inc dword [rbp + 32]

 strlen$7:
	; goto 2
	jmp strlen$2

 strlen$8:
	; return index
	mov ebx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strlen$9:
	; function end strlen

 strerror:
	; call header integral zero 0 stack zero 0

 strerror$1:
	; call function noellipse-noellipse localeconv
	mov qword [rbp + 28], strerror$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 strerror$2:
	; post call

 strerror$3:
	; £temporary2790 = return_value

 strerror$4:
	; localeConvPtr = £temporary2790
	mov [rbp + 28], rbx

 strerror$5:
	; if localeConvPtr == int8$0# goto 9
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; £field2792 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

 strerror$7:
	; £temporary2793 = £field2792 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; goto 10
	jmp strerror$10

 strerror$9:
	; £temporary2793 = int8$0#
	mov rax, 0

 strerror$10:
	; messageList = £temporary2793
	mov [rbp + 36], rax

 strerror$11:
	; if messageList == int8$0# goto 14
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; £temporary2795 = messageList
	mov rax, [rbp + 36]

 strerror$13:
	; goto 15
	jmp strerror$15

 strerror$14:
	; £temporary2795 = enMessageList
	mov rax, enMessageList

 strerror$15:
	; messageList = £temporary2795
	mov [rbp + 36], rax

 strerror$16:
	; £temporary2797 = int_to_int errno (Signed_Int -> Pointer)
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; £temporary2798 = £temporary2797 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; £temporary2799 = messageList + £temporary2798
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; £field2796 -> £temporary2799 = *£temporary2799

 strerror$20:
	; return £field2796 -> £temporary2799
	mov rbx, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$21:
	; function end strerror

 strtok:
	; empty

 strtok$1:
	; if string == int8$0# goto 40
	cmp qword [rbp + 24], 0
	je strtok$40

 strtok$2:
	; £field2801 -> string = *string
	mov rsi, [rbp + 24]

 strtok$3:
	; if £field2801 -> string != int1$0# goto 5
	cmp byte [rsi], 0
	jne strtok$5

 strtok$4:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$5:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strtok$6:
	; £temporary2804 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; £temporary2806 = string + £temporary2804
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; £field2803 -> £temporary2806 = *£temporary2806

 strtok$9:
	; if £field2803 -> £temporary2806 == int1$0# goto 34
	cmp byte [rsi], 0
	je strtok$34

 strtok$10:
	; call header integral zero 0 stack zero 0

 strtok$11:
	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; £temporary2810 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; £temporary2812 = string + £temporary2810
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; £field2809 -> £temporary2812 = *£temporary2812

 strtok$15:
	; £temporary2813 = int_to_int £field2809 -> £temporary2812 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; parameter £temporary2813, offset 84
	mov [rbp + 84], eax

 strtok$17:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], strtok$18
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$18:
	; post call

 strtok$19:
	; £temporary2814 = return_value

 strtok$20:
	; if £temporary2814 == int8$0# goto 32
	cmp rbx, 0
	je strtok$32

 strtok$21:
	; £temporary2817 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; £temporary2819 = string + £temporary2817
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; £field2816 -> £temporary2819 = *£temporary2819

 strtok$24:
	; £field2816 -> £temporary2819 = int1$0#
	mov byte [rsi], 0

 strtok$25:
	; £temporary2820 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; £temporary2822 = int_to_int £temporary2820 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; £temporary2824 = string + £temporary2822
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; £field2821 -> £temporary2824 = *£temporary2824

 strtok$29:
	; £temporary2825 = &£field2821 -> £temporary2824

 strtok$30:
	; token = £temporary2825
	mov [token], rsi

 strtok$31:
	; return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$32:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strtok$33:
	; goto 6
	jmp strtok$6

 strtok$34:
	; £temporary2827 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$35:
	; £temporary2829 = string + £temporary2827
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$36:
	; £field2826 -> £temporary2829 = *£temporary2829

 strtok$37:
	; £temporary2830 = &£field2826 -> £temporary2829

 strtok$38:
	; token = £temporary2830
	mov [token], rsi

 strtok$39:
	; return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$40:
	; if token != int8$0# goto 42
	cmp qword [token], 0
	jne strtok$42

 strtok$41:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$42:
	; £field2832 -> token = *token
	mov rsi, [token]

 strtok$43:
	; if £field2832 -> token != int1$0# goto 45
	cmp byte [rsi], 0
	jne strtok$45

 strtok$44:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$45:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strtok$46:
	; £temporary2835 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$47:
	; £temporary2837 = token + £temporary2835
	mov rsi, [token]
	add rsi, rax

 strtok$48:
	; £field2834 -> £temporary2837 = *£temporary2837

 strtok$49:
	; if £field2834 -> £temporary2837 == int1$0# goto 75
	cmp byte [rsi], 0
	je strtok$75

 strtok$50:
	; call header integral zero 0 stack zero 0

 strtok$51:
	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$52:
	; £temporary2841 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$53:
	; £temporary2843 = token + £temporary2841
	mov rsi, [token]
	add rsi, rax

 strtok$54:
	; £field2840 -> £temporary2843 = *£temporary2843

 strtok$55:
	; £temporary2844 = int_to_int £field2840 -> £temporary2843 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$56
	neg al
	neg eax

 strtok$56:
	; parameter £temporary2844, offset 84
	mov [rbp + 84], eax

 strtok$57:
	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], strtok$58
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$58:
	; post call

 strtok$59:
	; £temporary2845 = return_value

 strtok$60:
	; if £temporary2845 == int8$0# goto 73
	cmp rbx, 0
	je strtok$73

 strtok$61:
	; tokenStart2 = token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$62:
	; £temporary2848 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$63:
	; £temporary2850 = token + £temporary2848
	mov rsi, [token]
	add rsi, rax

 strtok$64:
	; £field2847 -> £temporary2850 = *£temporary2850

 strtok$65:
	; £field2847 -> £temporary2850 = int1$0#
	mov byte [rsi], 0

 strtok$66:
	; £temporary2851 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$67:
	; £temporary2853 = int_to_int £temporary2851 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strtok$68:
	; £temporary2855 = token + £temporary2853
	mov rsi, [token]
	add rsi, rax

 strtok$69:
	; £field2852 -> £temporary2855 = *£temporary2855

 strtok$70:
	; £temporary2856 = &£field2852 -> £temporary2855

 strtok$71:
	; token = £temporary2856
	mov [token], rsi

 strtok$72:
	; return tokenStart2
	mov rbx, [rbp + 52]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$73:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strtok$74:
	; goto 46
	jmp strtok$46

 strtok$75:
	; tokenStart = token
	mov rax, [token]
	mov [rbp + 44], rax

 strtok$76:
	; £temporary2858 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$77:
	; £temporary2860 = token + £temporary2858
	mov rsi, [token]
	add rsi, rax

 strtok$78:
	; £field2857 -> £temporary2860 = *£temporary2860

 strtok$79:
	; £temporary2861 = &£field2857 -> £temporary2860

 strtok$80:
	; token = £temporary2861
	mov [token], rsi

 strtok$81:
	; return tokenStart
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$82:
	; function end strtok

 memcpy:
	; £temporary2862 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memcpy$1:
	; charTarget = £temporary2862
	mov [rbp + 44], rax

 memcpy$2:
	; £temporary2863 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memcpy$3:
	; charSource = £temporary2863
	mov [rbp + 52], rax

 memcpy$4:
	; index = int4$0#
	mov dword [rbp + 60], 0

 memcpy$5:
	; if index >= size goto 15
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcpy$15

 memcpy$6:
	; £temporary2867 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; £temporary2869 = charTarget + £temporary2867
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; £field2866 -> £temporary2869 = *£temporary2869

 memcpy$9:
	; £temporary2871 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; £temporary2873 = charSource + £temporary2871
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; £field2870 -> £temporary2873 = *£temporary2873

 memcpy$12:
	; £field2866 -> £temporary2869 = £field2870 -> £temporary2873
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; index = index + int4$1#
	inc dword [rbp + 60]

 memcpy$14:
	; goto 5
	jmp memcpy$5

 memcpy$15:
	; £temporary2874 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

 memcpy$16:
	; return £temporary2874
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; function end memcpy

 memmove:
	; £temporary2875 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memmove$1:
	; charTarget = £temporary2875
	mov [rbp + 44], rax

 memmove$2:
	; £temporary2876 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memmove$3:
	; charSource = £temporary2876
	mov [rbp + 52], rax

 memmove$4:
	; if source >= target goto 16
	mov rax, [rbp + 24]
	cmp [rbp + 32], rax
	jge memmove$16

 memmove$5:
	; index = size - int4$1#
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 memmove$6:
	; if index < int4$0# goto 27
	cmp dword [rbp + 60], 0
	jl memmove$27

 memmove$7:
	; £temporary2882 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; £temporary2884 = charTarget + £temporary2882
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; £field2881 -> £temporary2884 = *£temporary2884

 memmove$10:
	; £temporary2886 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; £temporary2888 = charSource + £temporary2886
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; £field2885 -> £temporary2888 = *£temporary2888

 memmove$13:
	; £field2881 -> £temporary2884 = £field2885 -> £temporary2888
	mov al, [rdi]
	mov [rsi], al

 memmove$14:
	; index = index - int4$1#
	dec dword [rbp + 60]

 memmove$15:
	; goto 6
	jmp memmove$6

 memmove$16:
	; index = int4$0#
	mov dword [rbp + 60], 0

 memmove$17:
	; if index >= size goto 27
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memmove$27

 memmove$18:
	; £temporary2892 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; £temporary2894 = charTarget + £temporary2892
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; £field2891 -> £temporary2894 = *£temporary2894

 memmove$21:
	; £temporary2896 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; £temporary2898 = charSource + £temporary2896
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; £field2895 -> £temporary2898 = *£temporary2898

 memmove$24:
	; £field2891 -> £temporary2894 = £field2895 -> £temporary2898
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; index = index + int4$1#
	inc dword [rbp + 60]

 memmove$26:
	; goto 17
	jmp memmove$17

 memmove$27:
	; £temporary2899 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

 memmove$28:
	; return £temporary2899
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; function end memmove

 memcmp:
	; £temporary2900 = int_to_int left (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memcmp$1:
	; charLeft = £temporary2900
	mov [rbp + 44], rax

 memcmp$2:
	; £temporary2901 = int_to_int right (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memcmp$3:
	; charRight = £temporary2901
	mov [rbp + 52], rax

 memcmp$4:
	; index = int4$0#
	mov dword [rbp + 60], 0

 memcmp$5:
	; if index >= size goto 24
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcmp$24

 memcmp$6:
	; £temporary2905 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; £temporary2907 = charLeft + £temporary2905
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; £field2904 -> £temporary2907 = *£temporary2907

 memcmp$9:
	; £temporary2909 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; £temporary2911 = charRight + £temporary2909
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; £field2908 -> £temporary2911 = *£temporary2911

 memcmp$12:
	; if £field2904 -> £temporary2907 >= £field2908 -> £temporary2911 goto 14
	mov al, [rdi]
	cmp [rsi], al
	jge memcmp$14

 memcmp$13:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$14:
	; £temporary2914 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; £temporary2916 = charLeft + £temporary2914
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; £field2913 -> £temporary2916 = *£temporary2916

 memcmp$17:
	; £temporary2918 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; £temporary2920 = charRight + £temporary2918
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; £field2917 -> £temporary2920 = *£temporary2920

 memcmp$20:
	; if £field2913 -> £temporary2916 <= £field2917 -> £temporary2920 goto 22
	mov al, [rdi]
	cmp [rsi], al
	jle memcmp$22

 memcmp$21:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$22:
	; index = index + int4$1#
	inc dword [rbp + 60]

 memcmp$23:
	; goto 5
	jmp memcmp$5

 memcmp$24:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$25:
	; function end memcmp

 memchr:
	; empty

 memchr$1:
	; £temporary2922 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memchr$2:
	; charBlock = £temporary2922
	mov [rbp + 44], rax

 memchr$3:
	; £temporary2923 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

 memchr$4:
	; c = £temporary2923
	mov [rbp + 52], al

 memchr$5:
	; index = int4$0#
	mov dword [rbp + 40], 0

 memchr$6:
	; if index >= size goto 19
	mov eax, [rbp + 36]
	cmp [rbp + 40], eax
	jge memchr$19

 memchr$7:
	; £temporary2927 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$8:
	; £temporary2929 = charBlock + £temporary2927
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$9:
	; £field2926 -> £temporary2929 = *£temporary2929

 memchr$10:
	; if £field2926 -> £temporary2929 != c goto 17
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$11:
	; £temporary2932 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$12:
	; £temporary2934 = charBlock + £temporary2932
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$13:
	; £field2931 -> £temporary2934 = *£temporary2934

 memchr$14:
	; £temporary2935 = &£field2931 -> £temporary2934

 memchr$15:
	; £temporary2936 = int_to_int £temporary2935 (Pointer -> Pointer)

 memchr$16:
	; return £temporary2936
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$17:
	; index = index + int4$1#
	inc dword [rbp + 40]

 memchr$18:
	; goto 6
	jmp memchr$6

 memchr$19:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$20:
	; function end memchr

 memset:
	; £temporary2937 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memset$1:
	; charBlock = £temporary2937
	mov [rbp + 40], rax

 memset$2:
	; £temporary2938 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; c = £temporary2938
	mov [rbp + 48], al

 memset$4:
	; index = int4$0#
	mov dword [rbp + 49], 0

 memset$5:
	; if index >= size goto 12
	mov eax, [rbp + 36]
	cmp [rbp + 49], eax
	jge memset$12

 memset$6:
	; £temporary2942 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; £temporary2944 = charBlock + £temporary2942
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; £field2941 -> £temporary2944 = *£temporary2944

 memset$9:
	; £field2941 -> £temporary2944 = c
	mov al, [rbp + 48]
	mov [rsi], al

 memset$10:
	; index = index + int4$1#
	inc dword [rbp + 49]

 memset$11:
	; goto 5
	jmp memset$5

 memset$12:
	; return block
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memset$13:
	; function end memset
section .data

int8$8#:
	; initializer Pointer
	dq 8

token:
	; initializer Pointer
	dq 0
