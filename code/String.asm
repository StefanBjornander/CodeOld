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
	; £temporary2527 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$3:
	; £temporary2529 = source + £temporary2527
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$4:
	; £field2526 -> £temporary2529 = *£temporary2529

 strcpy$5:
	; if £field2526 -> £temporary2529 == int1$0# goto 15
	cmp byte [rsi], 0
	je strcpy$15

 strcpy$6:
	; £temporary2533 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$7:
	; £temporary2535 = target + £temporary2533
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$8:
	; £field2532 -> £temporary2535 = *£temporary2535

 strcpy$9:
	; £temporary2537 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$10:
	; £temporary2539 = source + £temporary2537
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$11:
	; £field2536 -> £temporary2539 = *£temporary2539

 strcpy$12:
	; £field2532 -> £temporary2535 = £field2536 -> £temporary2539
	mov al, [rdi]
	mov [rsi], al

 strcpy$13:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strcpy$14:
	; goto 2
	jmp strcpy$2

 strcpy$15:
	; £temporary2541 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$16:
	; £temporary2543 = target + £temporary2541
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$17:
	; £field2540 -> £temporary2543 = *£temporary2543

 strcpy$18:
	; £field2540 -> £temporary2543 = int1$0#
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
	; £temporary2546 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$4:
	; £temporary2548 = source + £temporary2546
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$5:
	; £field2545 -> £temporary2548 = *£temporary2548

 strncpy$6:
	; if £field2545 -> £temporary2548 == int1$0# goto 16
	cmp byte [rsi], 0
	je strncpy$16

 strncpy$7:
	; £temporary2553 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$8:
	; £temporary2555 = target + £temporary2553
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$9:
	; £field2552 -> £temporary2555 = *£temporary2555

 strncpy$10:
	; £temporary2557 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$11:
	; £temporary2559 = source + £temporary2557
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$12:
	; £field2556 -> £temporary2559 = *£temporary2559

 strncpy$13:
	; £field2552 -> £temporary2555 = £field2556 -> £temporary2559
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
	; £temporary2563 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$18:
	; £temporary2565 = target + £temporary2563
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$19:
	; £field2562 -> £temporary2565 = *£temporary2565

 strncpy$20:
	; £field2562 -> £temporary2565 = int1$0#
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
	; £temporary2566 = return_value

 strcat$6:
	; targetLength = £temporary2566
	mov [rbp + 44], ebx

 strcat$7:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strcat$8:
	; £temporary2568 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$9:
	; £temporary2570 = source + £temporary2568
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$10:
	; £field2567 -> £temporary2570 = *£temporary2570

 strcat$11:
	; if £field2567 -> £temporary2570 == int1$0# goto 22
	cmp byte [rsi], 0
	je strcat$22

 strcat$12:
	; £temporary2573 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$13:
	; £temporary2575 = int_to_int £temporary2573 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strcat$14:
	; £temporary2577 = target + £temporary2575
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$15:
	; £field2574 -> £temporary2577 = *£temporary2577

 strcat$16:
	; £temporary2579 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$17:
	; £temporary2581 = source + £temporary2579
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$18:
	; £field2578 -> £temporary2581 = *£temporary2581

 strcat$19:
	; £field2574 -> £temporary2577 = £field2578 -> £temporary2581
	mov al, [rdi]
	mov [rsi], al

 strcat$20:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strcat$21:
	; goto 8
	jmp strcat$8

 strcat$22:
	; £temporary2582 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$23:
	; £temporary2584 = int_to_int £temporary2582 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strcat$24:
	; £temporary2586 = target + £temporary2584
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$25:
	; £field2583 -> £temporary2586 = *£temporary2586

 strcat$26:
	; £field2583 -> £temporary2586 = int1$0#
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
	; £temporary2587 = return_value

 strncat$6:
	; targetLength = £temporary2587
	mov [rbp + 48], ebx

 strncat$7:
	; index = int4$0#
	mov dword [rbp + 44], 0

 strncat$8:
	; £temporary2588 = size - int4$1#
	mov eax, [rbp + 40]
	dec eax

 strncat$9:
	; if index >= £temporary2588 goto 24
	cmp [rbp + 44], eax
	jge strncat$24

 strncat$10:
	; £temporary2591 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$11:
	; £temporary2593 = source + £temporary2591
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$12:
	; £field2590 -> £temporary2593 = *£temporary2593

 strncat$13:
	; if £field2590 -> £temporary2593 == int1$0# goto 24
	cmp byte [rsi], 0
	je strncat$24

 strncat$14:
	; £temporary2597 = targetLength + index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$15:
	; £temporary2599 = int_to_int £temporary2597 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strncat$16:
	; £temporary2601 = target + £temporary2599
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$17:
	; £field2598 -> £temporary2601 = *£temporary2601

 strncat$18:
	; £temporary2603 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$19:
	; £temporary2605 = source + £temporary2603
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$20:
	; £field2602 -> £temporary2605 = *£temporary2605

 strncat$21:
	; £field2598 -> £temporary2601 = £field2602 -> £temporary2605
	mov al, [rdi]
	mov [rsi], al

 strncat$22:
	; index = index + int4$1#
	inc dword [rbp + 44]

 strncat$23:
	; goto 8
	jmp strncat$8

 strncat$24:
	; £temporary2606 = targetLength + size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$25:
	; £temporary2607 = £temporary2606 - int4$1#
	dec eax

 strncat$26:
	; £temporary2609 = int_to_int £temporary2607 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strncat$27:
	; £temporary2611 = target + £temporary2609
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$28:
	; £field2608 -> £temporary2611 = *£temporary2611

 strncat$29:
	; £field2608 -> £temporary2611 = int1$0#
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
	; £temporary2614 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$3:
	; £temporary2616 = left + £temporary2614
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$4:
	; £field2613 -> £temporary2616 = *£temporary2616

 strcmp$5:
	; if £field2613 -> £temporary2616 != int1$0# goto 11
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$6:
	; £temporary2619 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$7:
	; £temporary2621 = right + £temporary2619
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$8:
	; £field2618 -> £temporary2621 = *£temporary2621

 strcmp$9:
	; if £field2618 -> £temporary2621 != int1$0# goto 11
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
	; £temporary2625 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; £temporary2627 = left + £temporary2625
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; £field2624 -> £temporary2627 = *£temporary2627

 strcmp$14:
	; if £field2624 -> £temporary2627 != int1$0# goto 16
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
	; £temporary2630 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$17:
	; £temporary2632 = right + £temporary2630
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$18:
	; £field2629 -> £temporary2632 = *£temporary2632

 strcmp$19:
	; if £field2629 -> £temporary2632 != int1$0# goto 21
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
	; £temporary2635 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$22:
	; £temporary2637 = left + £temporary2635
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$23:
	; £field2634 -> £temporary2637 = *£temporary2637

 strcmp$24:
	; £temporary2639 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$25:
	; £temporary2641 = right + £temporary2639
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$26:
	; £field2638 -> £temporary2641 = *£temporary2641

 strcmp$27:
	; if £field2634 -> £temporary2637 >= £field2638 -> £temporary2641 goto 29
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
	; £temporary2644 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$30:
	; £temporary2646 = left + £temporary2644
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$31:
	; £field2643 -> £temporary2646 = *£temporary2646

 strcmp$32:
	; £temporary2648 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; £temporary2650 = right + £temporary2648
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$34:
	; £field2647 -> £temporary2650 = *£temporary2650

 strcmp$35:
	; if £field2643 -> £temporary2646 <= £field2647 -> £temporary2650 goto 37
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
	; £temporary2656 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$4:
	; £temporary2658 = left + £temporary2656
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$5:
	; £field2655 -> £temporary2658 = *£temporary2658

 strncmp$6:
	; if £field2655 -> £temporary2658 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$7:
	; £temporary2661 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$8:
	; £temporary2663 = right + £temporary2661
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$9:
	; £field2660 -> £temporary2663 = *£temporary2663

 strncmp$10:
	; if £field2660 -> £temporary2663 != int1$0# goto 12
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
	; £temporary2667 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; £temporary2669 = left + £temporary2667
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; £field2666 -> £temporary2669 = *£temporary2669

 strncmp$15:
	; if £field2666 -> £temporary2669 != int1$0# goto 17
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
	; £temporary2672 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$18:
	; £temporary2674 = right + £temporary2672
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$19:
	; £field2671 -> £temporary2674 = *£temporary2674

 strncmp$20:
	; if £field2671 -> £temporary2674 != int1$0# goto 22
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
	; £temporary2677 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$23:
	; £temporary2679 = left + £temporary2677
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$24:
	; £field2676 -> £temporary2679 = *£temporary2679

 strncmp$25:
	; £temporary2681 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$26:
	; £temporary2683 = right + £temporary2681
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$27:
	; £field2680 -> £temporary2683 = *£temporary2683

 strncmp$28:
	; if £field2676 -> £temporary2679 >= £field2680 -> £temporary2683 goto 30
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
	; £temporary2686 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$31:
	; £temporary2688 = left + £temporary2686
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$32:
	; £field2685 -> £temporary2688 = *£temporary2688

 strncmp$33:
	; £temporary2690 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; £temporary2692 = right + £temporary2690
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$35:
	; £field2689 -> £temporary2692 = *£temporary2692

 strncmp$36:
	; if £field2685 -> £temporary2688 <= £field2689 -> £temporary2692 goto 38
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
	; £temporary2694 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

 strchr$2:
	; c = £temporary2694
	mov [rbp + 40], al

 strchr$3:
	; index = int4$0#
	mov dword [rbp + 36], 0

 strchr$4:
	; £temporary2696 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$5:
	; £temporary2698 = text + £temporary2696
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$6:
	; £field2695 -> £temporary2698 = *£temporary2698

 strchr$7:
	; if £field2695 -> £temporary2698 == int1$0# goto 19
	cmp byte [rsi], 0
	je strchr$19

 strchr$8:
	; £temporary2702 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$9:
	; £temporary2704 = text + £temporary2702
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$10:
	; £field2701 -> £temporary2704 = *£temporary2704

 strchr$11:
	; if £field2701 -> £temporary2704 != c goto 17
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$12:
	; £temporary2707 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$13:
	; £temporary2709 = text + £temporary2707
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$14:
	; £field2706 -> £temporary2709 = *£temporary2709

 strchr$15:
	; £temporary2710 = &£field2706 -> £temporary2709

 strchr$16:
	; return £temporary2710
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
	; £temporary2711 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

 strrchr$3:
	; c = £temporary2711
	mov [rbp + 48], al

 strrchr$4:
	; index = int4$0#
	mov dword [rbp + 36], 0

 strrchr$5:
	; £temporary2713 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$6:
	; £temporary2715 = text + £temporary2713
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$7:
	; £field2712 -> £temporary2715 = *£temporary2715

 strrchr$8:
	; if £field2712 -> £temporary2715 == int1$0# goto 20
	cmp byte [rsi], 0
	je strrchr$20

 strrchr$9:
	; £temporary2719 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$10:
	; £temporary2721 = text + £temporary2719
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$11:
	; £field2718 -> £temporary2721 = *£temporary2721

 strrchr$12:
	; if £field2718 -> £temporary2721 != c goto 18
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$18

 strrchr$13:
	; £temporary2724 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$14:
	; £temporary2726 = text + £temporary2724
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$15:
	; £field2723 -> £temporary2726 = *£temporary2726

 strrchr$16:
	; £temporary2727 = &£field2723 -> £temporary2726

 strrchr$17:
	; result = £temporary2727
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
	; £temporary2729 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$3:
	; £temporary2731 = mainString + £temporary2729
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$4:
	; £field2728 -> £temporary2731 = *£temporary2731

 strspn$5:
	; if £field2728 -> £temporary2731 == int1$0# goto 20
	cmp byte [rsi], 0
	je strspn$20

 strspn$6:
	; call header integral zero 0 stack zero 0

 strspn$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$8:
	; £temporary2735 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$9:
	; £temporary2737 = mainString + £temporary2735
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$10:
	; £field2734 -> £temporary2737 = *£temporary2737

 strspn$11:
	; £temporary2738 = int_to_int £field2734 -> £temporary2737 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

 strspn$12:
	; parameter £temporary2738, offset 76
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
	; £temporary2739 = return_value

 strspn$16:
	; if £temporary2739 != int8$0# goto 18
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
	; £temporary2742 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$3:
	; £temporary2744 = mainString + £temporary2742
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$4:
	; £field2741 -> £temporary2744 = *£temporary2744

 strcspn$5:
	; if £field2741 -> £temporary2744 == int1$0# goto 20
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$6:
	; call header integral zero 0 stack zero 0

 strcspn$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$8:
	; £temporary2748 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$9:
	; £temporary2750 = mainString + £temporary2748
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$10:
	; £field2747 -> £temporary2750 = *£temporary2750

 strcspn$11:
	; £temporary2751 = int_to_int £field2747 -> £temporary2750 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

 strcspn$12:
	; parameter £temporary2751, offset 76
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
	; £temporary2752 = return_value

 strcspn$16:
	; if £temporary2752 == int8$0# goto 18
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
	; £temporary2755 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$3:
	; £temporary2757 = mainString + £temporary2755
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$4:
	; £field2754 -> £temporary2757 = *£temporary2757

 strpbrk$5:
	; if £field2754 -> £temporary2757 == int1$0# goto 24
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$6:
	; call header integral zero 0 stack zero 0

 strpbrk$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$8:
	; £temporary2761 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$9:
	; £temporary2763 = mainString + £temporary2761
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$10:
	; £field2760 -> £temporary2763 = *£temporary2763

 strpbrk$11:
	; £temporary2764 = int_to_int £field2760 -> £temporary2763 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

 strpbrk$12:
	; parameter £temporary2764, offset 76
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
	; £temporary2765 = return_value

 strpbrk$16:
	; if £temporary2765 == int8$0# goto 22
	cmp rbx, 0
	je strpbrk$22

 strpbrk$17:
	; £temporary2768 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$18:
	; £temporary2770 = mainString + £temporary2768
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$19:
	; £field2767 -> £temporary2770 = *£temporary2770

 strpbrk$20:
	; £temporary2771 = &£field2767 -> £temporary2770

 strpbrk$21:
	; return £temporary2771
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
	; £temporary2773 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$3:
	; £temporary2775 = mainString + £temporary2773
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$4:
	; £field2772 -> £temporary2775 = *£temporary2775

 strstr$5:
	; if £field2772 -> £temporary2775 == int1$0# goto 22
	cmp byte [rsi], 0
	je strstr$22

 strstr$6:
	; call header integral zero 0 stack zero 0

 strstr$7:
	; £temporary2778 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; £temporary2779 = mainString + £temporary2778
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$9:
	; parameter £temporary2779, offset 68
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
	; £temporary2781 = return_value

 strstr$14:
	; if £temporary2781 != int4$0# goto 20
	cmp ebx, 0
	jne strstr$20

 strstr$15:
	; £temporary2784 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$16:
	; £temporary2786 = mainString + £temporary2784
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$17:
	; £field2783 -> £temporary2786 = *£temporary2786

 strstr$18:
	; £temporary2787 = &£field2783 -> £temporary2786

 strstr$19:
	; return £temporary2787
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
	; £temporary2789 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$3:
	; £temporary2791 = string + £temporary2789
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$4:
	; £field2788 -> £temporary2791 = *£temporary2791

 strlen$5:
	; if £field2788 -> £temporary2791 == int1$0# goto 8
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
	; £temporary2794 = return_value

 strerror$4:
	; localeConvPtr = £temporary2794
	mov [rbp + 28], rbx

 strerror$5:
	; if localeConvPtr == int8$0# goto 9
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; £field2796 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

 strerror$7:
	; £temporary2797 = £field2796 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; goto 10
	jmp strerror$10

 strerror$9:
	; £temporary2797 = int8$0#
	mov rax, 0

 strerror$10:
	; messageList = £temporary2797
	mov [rbp + 36], rax

 strerror$11:
	; if messageList == int8$0# goto 14
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; £temporary2799 = messageList
	mov rax, [rbp + 36]

 strerror$13:
	; goto 15
	jmp strerror$15

 strerror$14:
	; £temporary2799 = enMessageList
	mov rax, enMessageList

 strerror$15:
	; messageList = £temporary2799
	mov [rbp + 36], rax

 strerror$16:
	; £temporary2801 = int_to_int errno (Signed_Int -> Pointer)
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; £temporary2802 = £temporary2801 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; £temporary2803 = messageList + £temporary2802
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; £field2800 -> £temporary2803 = *£temporary2803

 strerror$20:
	; return £field2800 -> £temporary2803
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
	; £field2805 -> string = *string
	mov rsi, [rbp + 24]

 strtok$3:
	; if £field2805 -> string != int1$0# goto 5
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
	; £temporary2808 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; £temporary2810 = string + £temporary2808
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; £field2807 -> £temporary2810 = *£temporary2810

 strtok$9:
	; if £field2807 -> £temporary2810 == int1$0# goto 34
	cmp byte [rsi], 0
	je strtok$34

 strtok$10:
	; call header integral zero 0 stack zero 0

 strtok$11:
	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; £temporary2814 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; £temporary2816 = string + £temporary2814
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; £field2813 -> £temporary2816 = *£temporary2816

 strtok$15:
	; £temporary2817 = int_to_int £field2813 -> £temporary2816 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; parameter £temporary2817, offset 84
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
	; £temporary2818 = return_value

 strtok$20:
	; if £temporary2818 == int8$0# goto 32
	cmp rbx, 0
	je strtok$32

 strtok$21:
	; £temporary2821 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; £temporary2823 = string + £temporary2821
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; £field2820 -> £temporary2823 = *£temporary2823

 strtok$24:
	; £field2820 -> £temporary2823 = int1$0#
	mov byte [rsi], 0

 strtok$25:
	; £temporary2824 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; £temporary2826 = int_to_int £temporary2824 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; £temporary2828 = string + £temporary2826
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; £field2825 -> £temporary2828 = *£temporary2828

 strtok$29:
	; £temporary2829 = &£field2825 -> £temporary2828

 strtok$30:
	; token = £temporary2829
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
	; £temporary2831 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$35:
	; £temporary2833 = string + £temporary2831
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$36:
	; £field2830 -> £temporary2833 = *£temporary2833

 strtok$37:
	; £temporary2834 = &£field2830 -> £temporary2833

 strtok$38:
	; token = £temporary2834
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
	; £field2836 -> token = *token
	mov rsi, [token]

 strtok$43:
	; if £field2836 -> token != int1$0# goto 45
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
	; £temporary2839 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$47:
	; £temporary2841 = token + £temporary2839
	mov rsi, [token]
	add rsi, rax

 strtok$48:
	; £field2838 -> £temporary2841 = *£temporary2841

 strtok$49:
	; if £field2838 -> £temporary2841 == int1$0# goto 75
	cmp byte [rsi], 0
	je strtok$75

 strtok$50:
	; call header integral zero 0 stack zero 0

 strtok$51:
	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$52:
	; £temporary2845 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$53:
	; £temporary2847 = token + £temporary2845
	mov rsi, [token]
	add rsi, rax

 strtok$54:
	; £field2844 -> £temporary2847 = *£temporary2847

 strtok$55:
	; £temporary2848 = int_to_int £field2844 -> £temporary2847 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$56
	neg al
	neg eax

 strtok$56:
	; parameter £temporary2848, offset 84
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
	; £temporary2849 = return_value

 strtok$60:
	; if £temporary2849 == int8$0# goto 73
	cmp rbx, 0
	je strtok$73

 strtok$61:
	; tokenStart2 = token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$62:
	; £temporary2852 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$63:
	; £temporary2854 = token + £temporary2852
	mov rsi, [token]
	add rsi, rax

 strtok$64:
	; £field2851 -> £temporary2854 = *£temporary2854

 strtok$65:
	; £field2851 -> £temporary2854 = int1$0#
	mov byte [rsi], 0

 strtok$66:
	; £temporary2855 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$67:
	; £temporary2857 = int_to_int £temporary2855 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strtok$68:
	; £temporary2859 = token + £temporary2857
	mov rsi, [token]
	add rsi, rax

 strtok$69:
	; £field2856 -> £temporary2859 = *£temporary2859

 strtok$70:
	; £temporary2860 = &£field2856 -> £temporary2859

 strtok$71:
	; token = £temporary2860
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
	; £temporary2862 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$77:
	; £temporary2864 = token + £temporary2862
	mov rsi, [token]
	add rsi, rax

 strtok$78:
	; £field2861 -> £temporary2864 = *£temporary2864

 strtok$79:
	; £temporary2865 = &£field2861 -> £temporary2864

 strtok$80:
	; token = £temporary2865
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
	; £temporary2866 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memcpy$1:
	; charTarget = £temporary2866
	mov [rbp + 44], rax

 memcpy$2:
	; £temporary2867 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memcpy$3:
	; charSource = £temporary2867
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
	; £temporary2871 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; £temporary2873 = charTarget + £temporary2871
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; £field2870 -> £temporary2873 = *£temporary2873

 memcpy$9:
	; £temporary2875 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; £temporary2877 = charSource + £temporary2875
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; £field2874 -> £temporary2877 = *£temporary2877

 memcpy$12:
	; £field2870 -> £temporary2873 = £field2874 -> £temporary2877
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; index = index + int4$1#
	inc dword [rbp + 60]

 memcpy$14:
	; goto 5
	jmp memcpy$5

 memcpy$15:
	; £temporary2878 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

 memcpy$16:
	; return £temporary2878
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; function end memcpy

 memmove:
	; £temporary2879 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memmove$1:
	; charTarget = £temporary2879
	mov [rbp + 44], rax

 memmove$2:
	; £temporary2880 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memmove$3:
	; charSource = £temporary2880
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
	; £temporary2886 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; £temporary2888 = charTarget + £temporary2886
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; £field2885 -> £temporary2888 = *£temporary2888

 memmove$10:
	; £temporary2890 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; £temporary2892 = charSource + £temporary2890
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; £field2889 -> £temporary2892 = *£temporary2892

 memmove$13:
	; £field2885 -> £temporary2888 = £field2889 -> £temporary2892
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
	; £temporary2896 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; £temporary2898 = charTarget + £temporary2896
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; £field2895 -> £temporary2898 = *£temporary2898

 memmove$21:
	; £temporary2900 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; £temporary2902 = charSource + £temporary2900
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; £field2899 -> £temporary2902 = *£temporary2902

 memmove$24:
	; £field2895 -> £temporary2898 = £field2899 -> £temporary2902
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; index = index + int4$1#
	inc dword [rbp + 60]

 memmove$26:
	; goto 17
	jmp memmove$17

 memmove$27:
	; £temporary2903 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

 memmove$28:
	; return £temporary2903
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; function end memmove

 memcmp:
	; £temporary2904 = int_to_int left (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memcmp$1:
	; charLeft = £temporary2904
	mov [rbp + 44], rax

 memcmp$2:
	; £temporary2905 = int_to_int right (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memcmp$3:
	; charRight = £temporary2905
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
	; £temporary2909 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; £temporary2911 = charLeft + £temporary2909
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; £field2908 -> £temporary2911 = *£temporary2911

 memcmp$9:
	; £temporary2913 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; £temporary2915 = charRight + £temporary2913
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; £field2912 -> £temporary2915 = *£temporary2915

 memcmp$12:
	; if £field2908 -> £temporary2911 >= £field2912 -> £temporary2915 goto 14
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
	; £temporary2918 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; £temporary2920 = charLeft + £temporary2918
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; £field2917 -> £temporary2920 = *£temporary2920

 memcmp$17:
	; £temporary2922 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; £temporary2924 = charRight + £temporary2922
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; £field2921 -> £temporary2924 = *£temporary2924

 memcmp$20:
	; if £field2917 -> £temporary2920 <= £field2921 -> £temporary2924 goto 22
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
	; £temporary2926 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memchr$2:
	; charBlock = £temporary2926
	mov [rbp + 44], rax

 memchr$3:
	; £temporary2927 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

 memchr$4:
	; c = £temporary2927
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
	; £temporary2931 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$8:
	; £temporary2933 = charBlock + £temporary2931
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$9:
	; £field2930 -> £temporary2933 = *£temporary2933

 memchr$10:
	; if £field2930 -> £temporary2933 != c goto 17
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$11:
	; £temporary2936 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$12:
	; £temporary2938 = charBlock + £temporary2936
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$13:
	; £field2935 -> £temporary2938 = *£temporary2938

 memchr$14:
	; £temporary2939 = &£field2935 -> £temporary2938

 memchr$15:
	; £temporary2940 = int_to_int £temporary2939 (Pointer -> Pointer)

 memchr$16:
	; return £temporary2940
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
	; £temporary2941 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memset$1:
	; charBlock = £temporary2941
	mov [rbp + 40], rax

 memset$2:
	; £temporary2942 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; c = £temporary2942
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
	; £temporary2946 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; £temporary2948 = charBlock + £temporary2946
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; £field2945 -> £temporary2948 = *£temporary2948

 memset$9:
	; £field2945 -> £temporary2948 = c
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
