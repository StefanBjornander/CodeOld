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

strcpy$2:	; £temporary2523 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$3:	; £temporary2525 = source + £temporary2523
	mov rsi, [rbp + 32]
	add rsi, rax

strcpy$4:	; £field2522 -> £temporary2525 = *£temporary2525

strcpy$5:	; if £field2522 -> £temporary2525 == int1$0# goto 15
	cmp byte [rsi], 0
	je strcpy$15

strcpy$6:	; £temporary2529 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$7:	; £temporary2531 = target + £temporary2529
	mov rsi, [rbp + 24]
	add rsi, rax

strcpy$8:	; £field2528 -> £temporary2531 = *£temporary2531

strcpy$9:	; £temporary2533 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$10:	; £temporary2535 = source + £temporary2533
	mov rdi, [rbp + 32]
	add rdi, rax

strcpy$11:	; £field2532 -> £temporary2535 = *£temporary2535

strcpy$12:	; £field2528 -> £temporary2531 = £field2532 -> £temporary2535
	mov al, [rdi]
	mov [rsi], al

strcpy$13:	; index = index + int4$1#
	inc dword [rbp + 40]

strcpy$14:	; goto 2
	jmp strcpy$2

strcpy$15:	; £temporary2537 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcpy$16:	; £temporary2539 = target + £temporary2537
	mov rsi, [rbp + 24]
	add rsi, rax

strcpy$17:	; £field2536 -> £temporary2539 = *£temporary2539

strcpy$18:	; £field2536 -> £temporary2539 = int1$0#
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
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$16

strncpy$3:	; £temporary2542 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$4:	; £temporary2544 = source + £temporary2542
	mov rsi, [rbp + 32]
	add rsi, rax

strncpy$5:	; £field2541 -> £temporary2544 = *£temporary2544

strncpy$6:	; if £field2541 -> £temporary2544 == int1$0# goto 16
	cmp byte [rsi], 0
	je strncpy$16

strncpy$7:	; £temporary2549 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$8:	; £temporary2551 = target + £temporary2549
	mov rsi, [rbp + 24]
	add rsi, rax

strncpy$9:	; £field2548 -> £temporary2551 = *£temporary2551

strncpy$10:	; £temporary2553 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$11:	; £temporary2555 = source + £temporary2553
	mov rdi, [rbp + 32]
	add rdi, rax

strncpy$12:	; £field2552 -> £temporary2555 = *£temporary2555

strncpy$13:	; £field2548 -> £temporary2551 = £field2552 -> £temporary2555
	mov al, [rdi]
	mov [rsi], al

strncpy$14:	; index = index + int4$1#
	inc dword [rbp + 44]

strncpy$15:	; goto 2
	jmp strncpy$2

strncpy$16:	; if index >= size goto 23
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$23

strncpy$17:	; £temporary2559 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncpy$18:	; £temporary2561 = target + £temporary2559
	mov rsi, [rbp + 24]
	add rsi, rax

strncpy$19:	; £field2558 -> £temporary2561 = *£temporary2561

strncpy$20:	; £field2558 -> £temporary2561 = int1$0#
	mov byte [rsi], 0

strncpy$21:	; index = index + int4$1#
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

strcat$5:	; £temporary2562 = return_value

strcat$6:	; targetLength = £temporary2562
	mov [rbp + 44], ebx

strcat$7:	; index = int4$0#
	mov dword [rbp + 40], 0

strcat$8:	; £temporary2564 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcat$9:	; £temporary2566 = source + £temporary2564
	mov rsi, [rbp + 32]
	add rsi, rax

strcat$10:	; £field2563 -> £temporary2566 = *£temporary2566

strcat$11:	; if £field2563 -> £temporary2566 == int1$0# goto 22
	cmp byte [rsi], 0
	je strcat$22

strcat$12:	; £temporary2569 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

strcat$13:	; £temporary2571 = int_to_int £temporary2569 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strcat$14:	; £temporary2573 = target + £temporary2571
	mov rsi, [rbp + 24]
	add rsi, rax

strcat$15:	; £field2570 -> £temporary2573 = *£temporary2573

strcat$16:	; £temporary2575 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcat$17:	; £temporary2577 = source + £temporary2575
	mov rdi, [rbp + 32]
	add rdi, rax

strcat$18:	; £field2574 -> £temporary2577 = *£temporary2577

strcat$19:	; £field2570 -> £temporary2573 = £field2574 -> £temporary2577
	mov al, [rdi]
	mov [rsi], al

strcat$20:	; index = index + int4$1#
	inc dword [rbp + 40]

strcat$21:	; goto 8
	jmp strcat$8

strcat$22:	; £temporary2578 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

strcat$23:	; £temporary2580 = int_to_int £temporary2578 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strcat$24:	; £temporary2582 = target + £temporary2580
	mov rsi, [rbp + 24]
	add rsi, rax

strcat$25:	; £field2579 -> £temporary2582 = *£temporary2582

strcat$26:	; £field2579 -> £temporary2582 = int1$0#
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

strncat$5:	; £temporary2583 = return_value

strncat$6:	; targetLength = £temporary2583
	mov [rbp + 48], ebx

strncat$7:	; index = int4$0#
	mov dword [rbp + 44], 0

strncat$8:	; £temporary2584 = size - int4$1#
	mov eax, [rbp + 40]
	dec eax

strncat$9:	; if index >= £temporary2584 goto 24
	cmp [rbp + 44], eax
	jge strncat$24

strncat$10:	; £temporary2587 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncat$11:	; £temporary2589 = source + £temporary2587
	mov rsi, [rbp + 32]
	add rsi, rax

strncat$12:	; £field2586 -> £temporary2589 = *£temporary2589

strncat$13:	; if £field2586 -> £temporary2589 == int1$0# goto 24
	cmp byte [rsi], 0
	je strncat$24

strncat$14:	; £temporary2593 = targetLength + index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

strncat$15:	; £temporary2595 = int_to_int £temporary2593 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strncat$16:	; £temporary2597 = target + £temporary2595
	mov rsi, [rbp + 24]
	add rsi, rax

strncat$17:	; £field2594 -> £temporary2597 = *£temporary2597

strncat$18:	; £temporary2599 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncat$19:	; £temporary2601 = source + £temporary2599
	mov rdi, [rbp + 32]
	add rdi, rax

strncat$20:	; £field2598 -> £temporary2601 = *£temporary2601

strncat$21:	; £field2594 -> £temporary2597 = £field2598 -> £temporary2601
	mov al, [rdi]
	mov [rsi], al

strncat$22:	; index = index + int4$1#
	inc dword [rbp + 44]

strncat$23:	; goto 8
	jmp strncat$8

strncat$24:	; £temporary2602 = targetLength + size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

strncat$25:	; £temporary2603 = £temporary2602 - int4$1#
	dec eax

strncat$26:	; £temporary2605 = int_to_int £temporary2603 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strncat$27:	; £temporary2607 = target + £temporary2605
	mov rsi, [rbp + 24]
	add rsi, rax

strncat$28:	; £field2604 -> £temporary2607 = *£temporary2607

strncat$29:	; £field2604 -> £temporary2607 = int1$0#
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

strcmp$2:	; £temporary2610 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$3:	; £temporary2612 = left + £temporary2610
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$4:	; £field2609 -> £temporary2612 = *£temporary2612

strcmp$5:	; if £field2609 -> £temporary2612 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strcmp$12

strcmp$6:	; £temporary2615 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$7:	; £temporary2617 = right + £temporary2615
	mov rsi, [rbp + 32]
	add rsi, rax

strcmp$8:	; £field2614 -> £temporary2617 = *£temporary2617

strcmp$9:	; if £field2614 -> £temporary2617 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strcmp$12

strcmp$10:	; return_value = int4$0#
	mov ebx, 0

strcmp$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$12:	; £temporary2621 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$13:	; £temporary2623 = left + £temporary2621
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$14:	; £field2620 -> £temporary2623 = *£temporary2623

strcmp$15:	; if £field2620 -> £temporary2623 != int1$0# goto 18
	cmp byte [rsi], 0
	jne strcmp$18

strcmp$16:	; return_value = int4$minus1#
	mov ebx, -1

strcmp$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$18:	; £temporary2626 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$19:	; £temporary2628 = right + £temporary2626
	mov rsi, [rbp + 32]
	add rsi, rax

strcmp$20:	; £field2625 -> £temporary2628 = *£temporary2628

strcmp$21:	; if £field2625 -> £temporary2628 != int1$0# goto 24
	cmp byte [rsi], 0
	jne strcmp$24

strcmp$22:	; return_value = int4$1#
	mov ebx, 1

strcmp$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$24:	; £temporary2631 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$25:	; £temporary2633 = left + £temporary2631
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$26:	; £field2630 -> £temporary2633 = *£temporary2633

strcmp$27:	; £temporary2635 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$28:	; £temporary2637 = right + £temporary2635
	mov rdi, [rbp + 32]
	add rdi, rax

strcmp$29:	; £field2634 -> £temporary2637 = *£temporary2637

strcmp$30:	; if £field2630 -> £temporary2633 >= £field2634 -> £temporary2637 goto 33
	mov al, [rdi]
	cmp [rsi], al
	jge strcmp$33

strcmp$31:	; return_value = int4$minus1#
	mov ebx, -1

strcmp$32:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$33:	; £temporary2640 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$34:	; £temporary2642 = left + £temporary2640
	mov rsi, [rbp + 24]
	add rsi, rax

strcmp$35:	; £field2639 -> £temporary2642 = *£temporary2642

strcmp$36:	; £temporary2644 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcmp$37:	; £temporary2646 = right + £temporary2644
	mov rdi, [rbp + 32]
	add rdi, rax

strcmp$38:	; £field2643 -> £temporary2646 = *£temporary2646

strcmp$39:	; if £field2639 -> £temporary2642 <= £field2643 -> £temporary2646 goto 42
	mov al, [rdi]
	cmp [rsi], al
	jle strcmp$42

strcmp$40:	; return_value = int4$1#
	mov ebx, 1

strcmp$41:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcmp$42:	; index = index + int4$1#
	inc dword [rbp + 40]

strcmp$43:	; goto 2
	jmp strcmp$2

strcmp$44:	; function end strcmp

strncmp:	; empty

strncmp$1:	; index = int4$0#
	mov dword [rbp + 44], 0

strncmp$2:	; if index >= size goto 45
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncmp$45

strncmp$3:	; £temporary2652 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$4:	; £temporary2654 = left + £temporary2652
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$5:	; £field2651 -> £temporary2654 = *£temporary2654

strncmp$6:	; if £field2651 -> £temporary2654 != int1$0# goto 13
	cmp byte [rsi], 0
	jne strncmp$13

strncmp$7:	; £temporary2657 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$8:	; £temporary2659 = right + £temporary2657
	mov rsi, [rbp + 32]
	add rsi, rax

strncmp$9:	; £field2656 -> £temporary2659 = *£temporary2659

strncmp$10:	; if £field2656 -> £temporary2659 != int1$0# goto 13
	cmp byte [rsi], 0
	jne strncmp$13

strncmp$11:	; return_value = int4$0#
	mov ebx, 0

strncmp$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$13:	; £temporary2663 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$14:	; £temporary2665 = left + £temporary2663
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$15:	; £field2662 -> £temporary2665 = *£temporary2665

strncmp$16:	; if £field2662 -> £temporary2665 != int1$0# goto 19
	cmp byte [rsi], 0
	jne strncmp$19

strncmp$17:	; return_value = int4$minus1#
	mov ebx, -1

strncmp$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$19:	; £temporary2668 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$20:	; £temporary2670 = right + £temporary2668
	mov rsi, [rbp + 32]
	add rsi, rax

strncmp$21:	; £field2667 -> £temporary2670 = *£temporary2670

strncmp$22:	; if £field2667 -> £temporary2670 != int1$0# goto 25
	cmp byte [rsi], 0
	jne strncmp$25

strncmp$23:	; return_value = int4$1#
	mov ebx, 1

strncmp$24:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$25:	; £temporary2673 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$26:	; £temporary2675 = left + £temporary2673
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$27:	; £field2672 -> £temporary2675 = *£temporary2675

strncmp$28:	; £temporary2677 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$29:	; £temporary2679 = right + £temporary2677
	mov rdi, [rbp + 32]
	add rdi, rax

strncmp$30:	; £field2676 -> £temporary2679 = *£temporary2679

strncmp$31:	; if £field2672 -> £temporary2675 >= £field2676 -> £temporary2679 goto 34
	mov al, [rdi]
	cmp [rsi], al
	jge strncmp$34

strncmp$32:	; return_value = int4$minus1#
	mov ebx, -1

strncmp$33:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$34:	; £temporary2682 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$35:	; £temporary2684 = left + £temporary2682
	mov rsi, [rbp + 24]
	add rsi, rax

strncmp$36:	; £field2681 -> £temporary2684 = *£temporary2684

strncmp$37:	; £temporary2686 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strncmp$38:	; £temporary2688 = right + £temporary2686
	mov rdi, [rbp + 32]
	add rdi, rax

strncmp$39:	; £field2685 -> £temporary2688 = *£temporary2688

strncmp$40:	; if £field2681 -> £temporary2684 <= £field2685 -> £temporary2688 goto 43
	mov al, [rdi]
	cmp [rsi], al
	jle strncmp$43

strncmp$41:	; return_value = int4$1#
	mov ebx, 1

strncmp$42:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strncmp$43:	; index = index + int4$1#
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

strchr$1:	; £temporary2690 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

strchr$2:	; c = £temporary2690
	mov [rbp + 40], al

strchr$3:	; index = int4$0#
	mov dword [rbp + 36], 0

strchr$4:	; £temporary2692 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$5:	; £temporary2694 = text + £temporary2692
	mov rsi, [rbp + 24]
	add rsi, rax

strchr$6:	; £field2691 -> £temporary2694 = *£temporary2694

strchr$7:	; if £field2691 -> £temporary2694 == int1$0# goto 20
	cmp byte [rsi], 0
	je strchr$20

strchr$8:	; £temporary2698 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$9:	; £temporary2700 = text + £temporary2698
	mov rsi, [rbp + 24]
	add rsi, rax

strchr$10:	; £field2697 -> £temporary2700 = *£temporary2700

strchr$11:	; if £field2697 -> £temporary2700 != c goto 18
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$18

strchr$12:	; £temporary2703 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strchr$13:	; £temporary2705 = text + £temporary2703
	mov rbx, [rbp + 24]
	add rbx, rax

strchr$14:	; £field2702 -> £temporary2705 = *£temporary2705

strchr$15:	; £temporary2706 = &£field2702 -> £temporary2705

strchr$16:	; return_value = £temporary2706

strchr$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strchr$18:	; index = index + int4$1#
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

strrchr$2:	; £temporary2707 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

strrchr$3:	; c = £temporary2707
	mov [rbp + 48], al

strrchr$4:	; index = int4$0#
	mov dword [rbp + 36], 0

strrchr$5:	; £temporary2709 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$6:	; £temporary2711 = text + £temporary2709
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$7:	; £field2708 -> £temporary2711 = *£temporary2711

strrchr$8:	; if £field2708 -> £temporary2711 == int1$0# goto 20
	cmp byte [rsi], 0
	je strrchr$20

strrchr$9:	; £temporary2715 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$10:	; £temporary2717 = text + £temporary2715
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$11:	; £field2714 -> £temporary2717 = *£temporary2717

strrchr$12:	; if £field2714 -> £temporary2717 != c goto 18
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$18

strrchr$13:	; £temporary2720 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

strrchr$14:	; £temporary2722 = text + £temporary2720
	mov rsi, [rbp + 24]
	add rsi, rax

strrchr$15:	; £field2719 -> £temporary2722 = *£temporary2722

strrchr$16:	; £temporary2723 = &£field2719 -> £temporary2722

strrchr$17:	; result = £temporary2723
	mov [rbp + 40], rsi

strrchr$18:	; index = index + int4$1#
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

strspn$2:	; £temporary2725 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strspn$3:	; £temporary2727 = mainString + £temporary2725
	mov rsi, [rbp + 24]
	add rsi, rax

strspn$4:	; £field2724 -> £temporary2727 = *£temporary2727

strspn$5:	; if £field2724 -> £temporary2727 == int1$0# goto 21
	cmp byte [rsi], 0
	je strspn$21

strspn$6:	; call header integral zero 0 stack zero 0

strspn$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strspn$8:	; £temporary2731 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strspn$9:	; £temporary2733 = mainString + £temporary2731
	mov rsi, [rbp + 24]
	add rsi, rax

strspn$10:	; £field2730 -> £temporary2733 = *£temporary2733

strspn$11:	; £temporary2734 = int_to_int £field2730 -> £temporary2733 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

strspn$12:	; parameter £temporary2734, offset 76
	mov [rbp + 76], eax

strspn$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strspn$14:	; post call

strspn$15:	; £temporary2735 = return_value

strspn$16:	; if £temporary2735 != int8$0# goto 19
	cmp rbx, 0
	jne strspn$19

strspn$17:	; return_value = index
	mov ebx, [rbp + 40]

strspn$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strspn$19:	; index = index + int4$1#
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

strcspn$2:	; £temporary2738 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcspn$3:	; £temporary2740 = mainString + £temporary2738
	mov rsi, [rbp + 24]
	add rsi, rax

strcspn$4:	; £field2737 -> £temporary2740 = *£temporary2740

strcspn$5:	; if £field2737 -> £temporary2740 == int1$0# goto 21
	cmp byte [rsi], 0
	je strcspn$21

strcspn$6:	; call header integral zero 0 stack zero 0

strcspn$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strcspn$8:	; £temporary2744 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strcspn$9:	; £temporary2746 = mainString + £temporary2744
	mov rsi, [rbp + 24]
	add rsi, rax

strcspn$10:	; £field2743 -> £temporary2746 = *£temporary2746

strcspn$11:	; £temporary2747 = int_to_int £field2743 -> £temporary2746 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

strcspn$12:	; parameter £temporary2747, offset 76
	mov [rbp + 76], eax

strcspn$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strcspn$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strcspn$14:	; post call

strcspn$15:	; £temporary2748 = return_value

strcspn$16:	; if £temporary2748 == int8$0# goto 19
	cmp rbx, 0
	je strcspn$19

strcspn$17:	; return_value = index
	mov ebx, [rbp + 40]

strcspn$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strcspn$19:	; index = index + int4$1#
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

strpbrk$2:	; £temporary2751 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$3:	; £temporary2753 = mainString + £temporary2751
	mov rsi, [rbp + 24]
	add rsi, rax

strpbrk$4:	; £field2750 -> £temporary2753 = *£temporary2753

strpbrk$5:	; if £field2750 -> £temporary2753 == int1$0# goto 25
	cmp byte [rsi], 0
	je strpbrk$25

strpbrk$6:	; call header integral zero 0 stack zero 0

strpbrk$7:	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

strpbrk$8:	; £temporary2757 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$9:	; £temporary2759 = mainString + £temporary2757
	mov rsi, [rbp + 24]
	add rsi, rax

strpbrk$10:	; £field2756 -> £temporary2759 = *£temporary2759

strpbrk$11:	; £temporary2760 = int_to_int £field2756 -> £temporary2759 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

strpbrk$12:	; parameter £temporary2760, offset 76
	mov [rbp + 76], eax

strpbrk$13:	; call function noellipse-noellipse strchr
	mov qword [rbp + 44], strpbrk$14
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

strpbrk$14:	; post call

strpbrk$15:	; £temporary2761 = return_value

strpbrk$16:	; if £temporary2761 == int8$0# goto 23
	cmp rbx, 0
	je strpbrk$23

strpbrk$17:	; £temporary2764 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strpbrk$18:	; £temporary2766 = mainString + £temporary2764
	mov rbx, [rbp + 24]
	add rbx, rax

strpbrk$19:	; £field2763 -> £temporary2766 = *£temporary2766

strpbrk$20:	; £temporary2767 = &£field2763 -> £temporary2766

strpbrk$21:	; return_value = £temporary2767

strpbrk$22:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strpbrk$23:	; index = index + int4$1#
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

strstr$2:	; £temporary2769 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$3:	; £temporary2771 = mainString + £temporary2769
	mov rsi, [rbp + 24]
	add rsi, rax

strstr$4:	; £field2768 -> £temporary2771 = *£temporary2771

strstr$5:	; if £field2768 -> £temporary2771 == int1$0# goto 23
	cmp byte [rsi], 0
	je strstr$23

strstr$6:	; call header integral zero 0 stack zero 0

strstr$7:	; £temporary2774 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$8:	; £temporary2775 = mainString + £temporary2774
	mov rbx, [rbp + 24]
	add rbx, rax

strstr$9:	; parameter £temporary2775, offset 68
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

strstr$13:	; £temporary2777 = return_value

strstr$14:	; if £temporary2777 != int4$0# goto 21
	cmp ebx, 0
	jne strstr$21

strstr$15:	; £temporary2780 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strstr$16:	; £temporary2782 = mainString + £temporary2780
	mov rbx, [rbp + 24]
	add rbx, rax

strstr$17:	; £field2779 -> £temporary2782 = *£temporary2782

strstr$18:	; £temporary2783 = &£field2779 -> £temporary2782

strstr$19:	; return_value = £temporary2783

strstr$20:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strstr$21:	; index = index + int4$1#
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

strlen$2:	; £temporary2785 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

strlen$3:	; £temporary2787 = string + £temporary2785
	mov rsi, [rbp + 24]
	add rsi, rax

strlen$4:	; £field2784 -> £temporary2787 = *£temporary2787

strlen$5:	; if £field2784 -> £temporary2787 == int1$0# goto 8
	cmp byte [rsi], 0
	je strlen$8

strlen$6:	; index = index + int4$1#
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

strerror$3:	; £temporary2790 = return_value

strerror$4:	; localeConvPtr = £temporary2790
	mov [rbp + 28], rbx

strerror$5:	; if localeConvPtr == int8$0# goto 9
	cmp qword [rbp + 28], 0
	je strerror$9

strerror$6:	; £field2792 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

strerror$7:	; £temporary2793 = £field2792 -> localeConvPtr
	mov rax, [rsi + 56]

strerror$8:	; goto 10
	jmp strerror$10

strerror$9:	; £temporary2793 = int8$0#
	mov rax, 0

strerror$10:	; messageList = £temporary2793
	mov [rbp + 36], rax

strerror$11:	; if messageList == int8$0# goto 14
	cmp qword [rbp + 36], 0
	je strerror$14

strerror$12:	; £temporary2795 = messageList
	mov rax, [rbp + 36]

strerror$13:	; goto 15
	jmp strerror$15

strerror$14:	; £temporary2795 = enMessageList
	mov rax, enMessageList

strerror$15:	; messageList = £temporary2795
	mov [rbp + 36], rax

strerror$16:	; £temporary2797 = int_to_int errno (Signed_Int -> Pointer)
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

strerror$17:	; £temporary2798 = £temporary2797 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

strerror$18:	; £temporary2799 = messageList + £temporary2798
	mov rsi, [rbp + 36]
	add rsi, rax

strerror$19:	; £field2796 -> £temporary2799 = *£temporary2799

strerror$20:	; return_value = £field2796 -> £temporary2799
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

strtok$2:	; £field2801 -> string = *string
	mov rsi, [rbp + 24]

strtok$3:	; if £field2801 -> string != int1$0# goto 6
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

strtok$7:	; £temporary2804 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$8:	; £temporary2806 = string + £temporary2804
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$9:	; £field2803 -> £temporary2806 = *£temporary2806

strtok$10:	; if £field2803 -> £temporary2806 == int1$0# goto 36
	cmp byte [rsi], 0
	je strtok$36

strtok$11:	; call header integral zero 0 stack zero 0

strtok$12:	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

strtok$13:	; £temporary2810 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$14:	; £temporary2812 = string + £temporary2810
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$15:	; £field2809 -> £temporary2812 = *£temporary2812

strtok$16:	; £temporary2813 = int_to_int £field2809 -> £temporary2812 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$17
	neg al
	neg eax

strtok$17:	; parameter £temporary2813, offset 84
	mov [rbp + 84], eax

strtok$18:	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], strtok$19
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

strtok$19:	; post call

strtok$20:	; £temporary2814 = return_value

strtok$21:	; if £temporary2814 == int8$0# goto 34
	cmp rbx, 0
	je strtok$34

strtok$22:	; £temporary2817 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$23:	; £temporary2819 = string + £temporary2817
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$24:	; £field2816 -> £temporary2819 = *£temporary2819

strtok$25:	; £field2816 -> £temporary2819 = int1$0#
	mov byte [rsi], 0

strtok$26:	; £temporary2820 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

strtok$27:	; £temporary2822 = int_to_int £temporary2820 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strtok$28:	; £temporary2824 = string + £temporary2822
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$29:	; £field2821 -> £temporary2824 = *£temporary2824

strtok$30:	; £temporary2825 = &£field2821 -> £temporary2824

strtok$31:	; token = £temporary2825
	mov [token], rsi

strtok$32:	; return_value = string
	mov rbx, [rbp + 24]

strtok$33:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$34:	; index = index + int4$1#
	inc dword [rbp + 40]

strtok$35:	; goto 7
	jmp strtok$7

strtok$36:	; £temporary2827 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$37:	; £temporary2829 = string + £temporary2827
	mov rsi, [rbp + 24]
	add rsi, rax

strtok$38:	; £field2826 -> £temporary2829 = *£temporary2829

strtok$39:	; £temporary2830 = &£field2826 -> £temporary2829

strtok$40:	; token = £temporary2830
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

strtok$46:	; £field2832 -> token = *token
	mov rsi, [token]

strtok$47:	; if £field2832 -> token != int1$0# goto 50
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

strtok$51:	; £temporary2835 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$52:	; £temporary2837 = token + £temporary2835
	mov rsi, [token]
	add rsi, rax

strtok$53:	; £field2834 -> £temporary2837 = *£temporary2837

strtok$54:	; if £field2834 -> £temporary2837 == int1$0# goto 81
	cmp byte [rsi], 0
	je strtok$81

strtok$55:	; call header integral zero 0 stack zero 0

strtok$56:	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

strtok$57:	; £temporary2841 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$58:	; £temporary2843 = token + £temporary2841
	mov rsi, [token]
	add rsi, rax

strtok$59:	; £field2840 -> £temporary2843 = *£temporary2843

strtok$60:	; £temporary2844 = int_to_int £field2840 -> £temporary2843 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$61
	neg al
	neg eax

strtok$61:	; parameter £temporary2844, offset 84
	mov [rbp + 84], eax

strtok$62:	; call function noellipse-noellipse strchr
	mov qword [rbp + 52], strtok$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

strtok$63:	; post call

strtok$64:	; £temporary2845 = return_value

strtok$65:	; if £temporary2845 == int8$0# goto 79
	cmp rbx, 0
	je strtok$79

strtok$66:	; tokenStart2 = token
	mov rax, [token]
	mov [rbp + 52], rax

strtok$67:	; £temporary2848 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$68:	; £temporary2850 = token + £temporary2848
	mov rsi, [token]
	add rsi, rax

strtok$69:	; £field2847 -> £temporary2850 = *£temporary2850

strtok$70:	; £field2847 -> £temporary2850 = int1$0#
	mov byte [rsi], 0

strtok$71:	; £temporary2851 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

strtok$72:	; £temporary2853 = int_to_int £temporary2851 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

strtok$73:	; £temporary2855 = token + £temporary2853
	mov rsi, [token]
	add rsi, rax

strtok$74:	; £field2852 -> £temporary2855 = *£temporary2855

strtok$75:	; £temporary2856 = &£field2852 -> £temporary2855

strtok$76:	; token = £temporary2856
	mov [token], rsi

strtok$77:	; return_value = tokenStart2
	mov rbx, [rbp + 52]

strtok$78:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$79:	; index = index + int4$1#
	inc dword [rbp + 40]

strtok$80:	; goto 51
	jmp strtok$51

strtok$81:	; tokenStart = token
	mov rax, [token]
	mov [rbp + 44], rax

strtok$82:	; £temporary2858 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtok$83:	; £temporary2860 = token + £temporary2858
	mov rsi, [token]
	add rsi, rax

strtok$84:	; £field2857 -> £temporary2860 = *£temporary2860

strtok$85:	; £temporary2861 = &£field2857 -> £temporary2860

strtok$86:	; token = £temporary2861
	mov [token], rsi

strtok$87:	; return_value = tokenStart
	mov rbx, [rbp + 44]

strtok$88:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtok$89:	; function end strtok

memcpy:	; £temporary2862 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

memcpy$1:	; charTarget = £temporary2862
	mov [rbp + 44], rax

memcpy$2:	; £temporary2863 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

memcpy$3:	; charSource = £temporary2863
	mov [rbp + 52], rax

memcpy$4:	; index = int4$0#
	mov dword [rbp + 60], 0

memcpy$5:	; if index >= size goto 15
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcpy$15

memcpy$6:	; £temporary2867 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcpy$7:	; £temporary2869 = charTarget + £temporary2867
	mov rsi, [rbp + 44]
	add rsi, rax

memcpy$8:	; £field2866 -> £temporary2869 = *£temporary2869

memcpy$9:	; £temporary2871 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcpy$10:	; £temporary2873 = charSource + £temporary2871
	mov rdi, [rbp + 52]
	add rdi, rax

memcpy$11:	; £field2870 -> £temporary2873 = *£temporary2873

memcpy$12:	; £field2866 -> £temporary2869 = £field2870 -> £temporary2873
	mov al, [rdi]
	mov [rsi], al

memcpy$13:	; index = index + int4$1#
	inc dword [rbp + 60]

memcpy$14:	; goto 5
	jmp memcpy$5

memcpy$15:	; £temporary2874 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

memcpy$16:	; return_value = £temporary2874

memcpy$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memcpy$18:	; function end memcpy

memmove:	; £temporary2875 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

memmove$1:	; charTarget = £temporary2875
	mov [rbp + 44], rax

memmove$2:	; £temporary2876 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

memmove$3:	; charSource = £temporary2876
	mov [rbp + 52], rax

memmove$4:	; if source >= target goto 16
	mov rax, [rbp + 24]
	cmp [rbp + 32], rax
	jge memmove$16

memmove$5:	; index = size - int4$1#
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

memmove$6:	; if index < int4$0# goto 27
	cmp dword [rbp + 60], 0
	jl memmove$27

memmove$7:	; £temporary2882 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$8:	; £temporary2884 = charTarget + £temporary2882
	mov rsi, [rbp + 44]
	add rsi, rax

memmove$9:	; £field2881 -> £temporary2884 = *£temporary2884

memmove$10:	; £temporary2886 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$11:	; £temporary2888 = charSource + £temporary2886
	mov rdi, [rbp + 52]
	add rdi, rax

memmove$12:	; £field2885 -> £temporary2888 = *£temporary2888

memmove$13:	; £field2881 -> £temporary2884 = £field2885 -> £temporary2888
	mov al, [rdi]
	mov [rsi], al

memmove$14:	; index = index - int4$1#
	dec dword [rbp + 60]

memmove$15:	; goto 6
	jmp memmove$6

memmove$16:	; index = int4$0#
	mov dword [rbp + 60], 0

memmove$17:	; if index >= size goto 27
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memmove$27

memmove$18:	; £temporary2892 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$19:	; £temporary2894 = charTarget + £temporary2892
	mov rsi, [rbp + 44]
	add rsi, rax

memmove$20:	; £field2891 -> £temporary2894 = *£temporary2894

memmove$21:	; £temporary2896 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memmove$22:	; £temporary2898 = charSource + £temporary2896
	mov rdi, [rbp + 52]
	add rdi, rax

memmove$23:	; £field2895 -> £temporary2898 = *£temporary2898

memmove$24:	; £field2891 -> £temporary2894 = £field2895 -> £temporary2898
	mov al, [rdi]
	mov [rsi], al

memmove$25:	; index = index + int4$1#
	inc dword [rbp + 60]

memmove$26:	; goto 17
	jmp memmove$17

memmove$27:	; £temporary2899 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

memmove$28:	; return_value = £temporary2899

memmove$29:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memmove$30:	; function end memmove

memcmp:	; £temporary2900 = int_to_int left (Pointer -> Pointer)
	mov rax, [rbp + 24]

memcmp$1:	; charLeft = £temporary2900
	mov [rbp + 44], rax

memcmp$2:	; £temporary2901 = int_to_int right (Pointer -> Pointer)
	mov rax, [rbp + 32]

memcmp$3:	; charRight = £temporary2901
	mov [rbp + 52], rax

memcmp$4:	; index = int4$0#
	mov dword [rbp + 60], 0

memcmp$5:	; if index >= size goto 26
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcmp$26

memcmp$6:	; £temporary2905 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$7:	; £temporary2907 = charLeft + £temporary2905
	mov rsi, [rbp + 44]
	add rsi, rax

memcmp$8:	; £field2904 -> £temporary2907 = *£temporary2907

memcmp$9:	; £temporary2909 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$10:	; £temporary2911 = charRight + £temporary2909
	mov rdi, [rbp + 52]
	add rdi, rax

memcmp$11:	; £field2908 -> £temporary2911 = *£temporary2911

memcmp$12:	; if £field2904 -> £temporary2907 >= £field2908 -> £temporary2911 goto 15
	mov al, [rdi]
	cmp [rsi], al
	jge memcmp$15

memcmp$13:	; return_value = int4$minus1#
	mov ebx, -1

memcmp$14:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memcmp$15:	; £temporary2914 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$16:	; £temporary2916 = charLeft + £temporary2914
	mov rsi, [rbp + 44]
	add rsi, rax

memcmp$17:	; £field2913 -> £temporary2916 = *£temporary2916

memcmp$18:	; £temporary2918 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memcmp$19:	; £temporary2920 = charRight + £temporary2918
	mov rdi, [rbp + 52]
	add rdi, rax

memcmp$20:	; £field2917 -> £temporary2920 = *£temporary2920

memcmp$21:	; if £field2913 -> £temporary2916 <= £field2917 -> £temporary2920 goto 24
	mov al, [rdi]
	cmp [rsi], al
	jle memcmp$24

memcmp$22:	; return_value = int4$1#
	mov ebx, 1

memcmp$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memcmp$24:	; index = index + int4$1#
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

memchr$1:	; £temporary2922 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

memchr$2:	; charBlock = £temporary2922
	mov [rbp + 44], rax

memchr$3:	; £temporary2923 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

memchr$4:	; c = £temporary2923
	mov [rbp + 52], al

memchr$5:	; index = int4$0#
	mov dword [rbp + 40], 0

memchr$6:	; if index >= size goto 20
	mov eax, [rbp + 36]
	cmp [rbp + 40], eax
	jge memchr$20

memchr$7:	; £temporary2927 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

memchr$8:	; £temporary2929 = charBlock + £temporary2927
	mov rsi, [rbp + 44]
	add rsi, rax

memchr$9:	; £field2926 -> £temporary2929 = *£temporary2929

memchr$10:	; if £field2926 -> £temporary2929 != c goto 18
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$18

memchr$11:	; £temporary2932 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

memchr$12:	; £temporary2934 = charBlock + £temporary2932
	mov rbx, [rbp + 44]
	add rbx, rax

memchr$13:	; £field2931 -> £temporary2934 = *£temporary2934

memchr$14:	; £temporary2935 = &£field2931 -> £temporary2934

memchr$15:	; £temporary2936 = int_to_int £temporary2935 (Pointer -> Pointer)

memchr$16:	; return_value = £temporary2936

memchr$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memchr$18:	; index = index + int4$1#
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

memset:	; £temporary2937 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

memset$1:	; charBlock = £temporary2937
	mov [rbp + 40], rax

memset$2:	; £temporary2938 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

memset$3:	; c = £temporary2938
	mov [rbp + 48], al

memset$4:	; index = int4$0#
	mov dword [rbp + 49], 0

memset$5:	; if index >= size goto 12
	mov eax, [rbp + 36]
	cmp [rbp + 49], eax
	jge memset$12

memset$6:	; £temporary2942 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

memset$7:	; £temporary2944 = charBlock + £temporary2942
	mov rsi, [rbp + 40]
	add rsi, rax

memset$8:	; £field2941 -> £temporary2944 = *£temporary2944

memset$9:	; £field2941 -> £temporary2944 = c
	mov al, [rbp + 48]
	mov [rsi], al

memset$10:	; index = index + int4$1#
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
