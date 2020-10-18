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
	; empty

 strcpy$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strcpy$2:
	; £temporary2569 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$3:
	; £temporary2571 = source + £temporary2569
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$4:
	; £temporary2568 -> £temporary2571 = *£temporary2571

 strcpy$5:
	; if £temporary2568 -> £temporary2571 == int1$0# goto 15
	cmp byte [rsi], 0
	je strcpy$15

 strcpy$6:
	; £temporary2575 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$7:
	; £temporary2577 = target + £temporary2575
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$8:
	; £temporary2574 -> £temporary2577 = *£temporary2577

 strcpy$9:
	; £temporary2579 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$10:
	; £temporary2581 = source + £temporary2579
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$11:
	; £temporary2578 -> £temporary2581 = *£temporary2581

 strcpy$12:
	; £temporary2574 -> £temporary2577 = £temporary2578 -> £temporary2581
	mov al, [rdi]
	mov [rsi], al

 strcpy$13:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strcpy$14:
	; goto 2
	jmp strcpy$2

 strcpy$15:
	; £temporary2583 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$16:
	; £temporary2585 = target + £temporary2583
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$17:
	; £temporary2582 -> £temporary2585 = *£temporary2585

 strcpy$18:
	; £temporary2582 -> £temporary2585 = int1$0#
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

section .text

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
	; £temporary2588 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$4:
	; £temporary2590 = source + £temporary2588
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$5:
	; £temporary2587 -> £temporary2590 = *£temporary2590

 strncpy$6:
	; if £temporary2587 -> £temporary2590 == int1$0# goto 16
	cmp byte [rsi], 0
	je strncpy$16

 strncpy$7:
	; £temporary2595 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$8:
	; £temporary2597 = target + £temporary2595
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$9:
	; £temporary2594 -> £temporary2597 = *£temporary2597

 strncpy$10:
	; £temporary2599 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$11:
	; £temporary2601 = source + £temporary2599
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$12:
	; £temporary2598 -> £temporary2601 = *£temporary2601

 strncpy$13:
	; £temporary2594 -> £temporary2597 = £temporary2598 -> £temporary2601
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
	; £temporary2605 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$18:
	; £temporary2607 = target + £temporary2605
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$19:
	; £temporary2604 -> £temporary2607 = *£temporary2607

 strncpy$20:
	; £temporary2604 -> £temporary2607 = int1$0#
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

section .text

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
	; £temporary2608 = return_value

 strcat$6:
	; targetLength = £temporary2608
	mov [rbp + 44], ebx

 strcat$7:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strcat$8:
	; £temporary2610 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$9:
	; £temporary2612 = source + £temporary2610
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$10:
	; £temporary2609 -> £temporary2612 = *£temporary2612

 strcat$11:
	; if £temporary2609 -> £temporary2612 == int1$0# goto 22
	cmp byte [rsi], 0
	je strcat$22

 strcat$12:
	; £temporary2615 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$13:
	; £temporary2617 = int_to_int £temporary2615 (SignedInt -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strcat$14:
	; £temporary2619 = target + £temporary2617
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$15:
	; £temporary2616 -> £temporary2619 = *£temporary2619

 strcat$16:
	; £temporary2621 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$17:
	; £temporary2623 = source + £temporary2621
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$18:
	; £temporary2620 -> £temporary2623 = *£temporary2623

 strcat$19:
	; £temporary2616 -> £temporary2619 = £temporary2620 -> £temporary2623
	mov al, [rdi]
	mov [rsi], al

 strcat$20:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strcat$21:
	; goto 8
	jmp strcat$8

 strcat$22:
	; £temporary2624 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$23:
	; £temporary2626 = int_to_int £temporary2624 (SignedInt -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strcat$24:
	; £temporary2628 = target + £temporary2626
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$25:
	; £temporary2625 -> £temporary2628 = *£temporary2628

 strcat$26:
	; £temporary2625 -> £temporary2628 = int1$0#
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

section .text

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
	; £temporary2629 = return_value

 strncat$6:
	; targetLength = £temporary2629
	mov [rbp + 48], ebx

 strncat$7:
	; index = int4$0#
	mov dword [rbp + 44], 0

 strncat$8:
	; £temporary2630 = size - int4$1#
	mov eax, [rbp + 40]
	dec eax

 strncat$9:
	; if index >= £temporary2630 goto 24
	cmp [rbp + 44], eax
	jge strncat$24

 strncat$10:
	; £temporary2633 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$11:
	; £temporary2635 = source + £temporary2633
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$12:
	; £temporary2632 -> £temporary2635 = *£temporary2635

 strncat$13:
	; if £temporary2632 -> £temporary2635 == int1$0# goto 24
	cmp byte [rsi], 0
	je strncat$24

 strncat$14:
	; £temporary2639 = targetLength + index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$15:
	; £temporary2641 = int_to_int £temporary2639 (SignedInt -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strncat$16:
	; £temporary2643 = target + £temporary2641
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$17:
	; £temporary2640 -> £temporary2643 = *£temporary2643

 strncat$18:
	; £temporary2645 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$19:
	; £temporary2647 = source + £temporary2645
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$20:
	; £temporary2644 -> £temporary2647 = *£temporary2647

 strncat$21:
	; £temporary2640 -> £temporary2643 = £temporary2644 -> £temporary2647
	mov al, [rdi]
	mov [rsi], al

 strncat$22:
	; index = index + int4$1#
	inc dword [rbp + 44]

 strncat$23:
	; goto 8
	jmp strncat$8

 strncat$24:
	; £temporary2648 = targetLength + size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$25:
	; £temporary2649 = £temporary2648 - int4$1#
	dec eax

 strncat$26:
	; £temporary2651 = int_to_int £temporary2649 (SignedInt -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strncat$27:
	; £temporary2653 = target + £temporary2651
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$28:
	; £temporary2650 -> £temporary2653 = *£temporary2653

 strncat$29:
	; £temporary2650 -> £temporary2653 = int1$0#
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

section .text

 strcmp:
	; empty

 strcmp$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strcmp$2:
	; £temporary2656 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$3:
	; £temporary2658 = left + £temporary2656
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$4:
	; £temporary2655 -> £temporary2658 = *£temporary2658

 strcmp$5:
	; if £temporary2655 -> £temporary2658 != int1$0# goto 11
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$6:
	; £temporary2661 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$7:
	; £temporary2663 = right + £temporary2661
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$8:
	; £temporary2660 -> £temporary2663 = *£temporary2663

 strcmp$9:
	; if £temporary2660 -> £temporary2663 != int1$0# goto 11
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
	; £temporary2667 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; £temporary2669 = left + £temporary2667
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; £temporary2666 -> £temporary2669 = *£temporary2669

 strcmp$14:
	; if £temporary2666 -> £temporary2669 != int1$0# goto 16
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
	; £temporary2672 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$17:
	; £temporary2674 = right + £temporary2672
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$18:
	; £temporary2671 -> £temporary2674 = *£temporary2674

 strcmp$19:
	; if £temporary2671 -> £temporary2674 != int1$0# goto 21
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
	; £temporary2677 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$22:
	; £temporary2679 = left + £temporary2677
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$23:
	; £temporary2676 -> £temporary2679 = *£temporary2679

 strcmp$24:
	; £temporary2681 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$25:
	; £temporary2683 = right + £temporary2681
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$26:
	; £temporary2680 -> £temporary2683 = *£temporary2683

 strcmp$27:
	; if £temporary2676 -> £temporary2679 >= £temporary2680 -> £temporary2683 goto 29
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
	; £temporary2686 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$30:
	; £temporary2688 = left + £temporary2686
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$31:
	; £temporary2685 -> £temporary2688 = *£temporary2688

 strcmp$32:
	; £temporary2690 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; £temporary2692 = right + £temporary2690
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$34:
	; £temporary2689 -> £temporary2692 = *£temporary2692

 strcmp$35:
	; if £temporary2685 -> £temporary2688 <= £temporary2689 -> £temporary2692 goto 37
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

section .text

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
	; £temporary2698 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$4:
	; £temporary2700 = left + £temporary2698
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$5:
	; £temporary2697 -> £temporary2700 = *£temporary2700

 strncmp$6:
	; if £temporary2697 -> £temporary2700 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$7:
	; £temporary2703 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$8:
	; £temporary2705 = right + £temporary2703
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$9:
	; £temporary2702 -> £temporary2705 = *£temporary2705

 strncmp$10:
	; if £temporary2702 -> £temporary2705 != int1$0# goto 12
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
	; £temporary2709 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; £temporary2711 = left + £temporary2709
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; £temporary2708 -> £temporary2711 = *£temporary2711

 strncmp$15:
	; if £temporary2708 -> £temporary2711 != int1$0# goto 17
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
	; £temporary2714 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$18:
	; £temporary2716 = right + £temporary2714
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$19:
	; £temporary2713 -> £temporary2716 = *£temporary2716

 strncmp$20:
	; if £temporary2713 -> £temporary2716 != int1$0# goto 22
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
	; £temporary2719 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$23:
	; £temporary2721 = left + £temporary2719
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$24:
	; £temporary2718 -> £temporary2721 = *£temporary2721

 strncmp$25:
	; £temporary2723 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$26:
	; £temporary2725 = right + £temporary2723
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$27:
	; £temporary2722 -> £temporary2725 = *£temporary2725

 strncmp$28:
	; if £temporary2718 -> £temporary2721 >= £temporary2722 -> £temporary2725 goto 30
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
	; £temporary2728 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$31:
	; £temporary2730 = left + £temporary2728
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$32:
	; £temporary2727 -> £temporary2730 = *£temporary2730

 strncmp$33:
	; £temporary2732 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; £temporary2734 = right + £temporary2732
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$35:
	; £temporary2731 -> £temporary2734 = *£temporary2734

 strncmp$36:
	; if £temporary2727 -> £temporary2730 <= £temporary2731 -> £temporary2734 goto 38
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

section .text

 strchr:
	; empty

 strchr$1:
	; £temporary2736 = int_to_int i (SignedInt -> SignedChar)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

 strchr$2:
	; c = £temporary2736
	mov [rbp + 40], al

 strchr$3:
	; index = int4$0#
	mov dword [rbp + 36], 0

 strchr$4:
	; £temporary2738 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$5:
	; £temporary2740 = text + £temporary2738
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$6:
	; £temporary2737 -> £temporary2740 = *£temporary2740

 strchr$7:
	; if £temporary2737 -> £temporary2740 == int1$0# goto 19
	cmp byte [rsi], 0
	je strchr$19

 strchr$8:
	; £temporary2744 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$9:
	; £temporary2746 = text + £temporary2744
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$10:
	; £temporary2743 -> £temporary2746 = *£temporary2746

 strchr$11:
	; if £temporary2743 -> £temporary2746 != c goto 17
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$12:
	; £temporary2749 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$13:
	; £temporary2751 = text + £temporary2749
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$14:
	; £temporary2748 -> £temporary2751 = *£temporary2751

 strchr$15:
	; £temporary2752 = &£temporary2748 -> £temporary2751

 strchr$16:
	; return £temporary2752
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

section .text

 strrchr:
	; empty

 strrchr$1:
	; result = int8$0#
	mov qword [rbp + 40], 0

 strrchr$2:
	; £temporary2753 = int_to_int i (SignedInt -> SignedChar)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

 strrchr$3:
	; c = £temporary2753
	mov [rbp + 48], al

 strrchr$4:
	; index = int4$0#
	mov dword [rbp + 36], 0

 strrchr$5:
	; £temporary2755 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$6:
	; £temporary2757 = text + £temporary2755
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$7:
	; £temporary2754 -> £temporary2757 = *£temporary2757

 strrchr$8:
	; if £temporary2754 -> £temporary2757 == int1$0# goto 20
	cmp byte [rsi], 0
	je strrchr$20

 strrchr$9:
	; £temporary2761 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$10:
	; £temporary2763 = text + £temporary2761
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$11:
	; £temporary2760 -> £temporary2763 = *£temporary2763

 strrchr$12:
	; if £temporary2760 -> £temporary2763 != c goto 18
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$18

 strrchr$13:
	; £temporary2766 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$14:
	; £temporary2768 = text + £temporary2766
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$15:
	; £temporary2765 -> £temporary2768 = *£temporary2768

 strrchr$16:
	; £temporary2769 = &£temporary2765 -> £temporary2768

 strrchr$17:
	; result = £temporary2769
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

section .text

 strspn:
	; empty

 strspn$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strspn$2:
	; £temporary2771 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$3:
	; £temporary2773 = mainString + £temporary2771
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$4:
	; £temporary2770 -> £temporary2773 = *£temporary2773

 strspn$5:
	; if £temporary2770 -> £temporary2773 == int1$0# goto 20
	cmp byte [rsi], 0
	je strspn$20

 strspn$6:
	; call header integral zero 0 stack zero 0

 strspn$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$8:
	; £temporary2777 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$9:
	; £temporary2779 = mainString + £temporary2777
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$10:
	; £temporary2776 -> £temporary2779 = *£temporary2779

 strspn$11:
	; £temporary2780 = int_to_int £temporary2776 -> £temporary2779 (SignedChar -> SignedInt)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

 strspn$12:
	; parameter £temporary2780, offset 76
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
	; £temporary2781 = return_value

 strspn$16:
	; if £temporary2781 != int8$0# goto 18
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

section .text

 strcspn:
	; empty

 strcspn$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strcspn$2:
	; £temporary2784 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$3:
	; £temporary2786 = mainString + £temporary2784
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$4:
	; £temporary2783 -> £temporary2786 = *£temporary2786

 strcspn$5:
	; if £temporary2783 -> £temporary2786 == int1$0# goto 20
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$6:
	; call header integral zero 0 stack zero 0

 strcspn$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$8:
	; £temporary2790 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$9:
	; £temporary2792 = mainString + £temporary2790
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$10:
	; £temporary2789 -> £temporary2792 = *£temporary2792

 strcspn$11:
	; £temporary2793 = int_to_int £temporary2789 -> £temporary2792 (SignedChar -> SignedInt)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

 strcspn$12:
	; parameter £temporary2793, offset 76
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
	; £temporary2794 = return_value

 strcspn$16:
	; if £temporary2794 == int8$0# goto 18
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

section .text

 strpbrk:
	; empty

 strpbrk$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strpbrk$2:
	; £temporary2797 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$3:
	; £temporary2799 = mainString + £temporary2797
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$4:
	; £temporary2796 -> £temporary2799 = *£temporary2799

 strpbrk$5:
	; if £temporary2796 -> £temporary2799 == int1$0# goto 24
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$6:
	; call header integral zero 0 stack zero 0

 strpbrk$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$8:
	; £temporary2803 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$9:
	; £temporary2805 = mainString + £temporary2803
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$10:
	; £temporary2802 -> £temporary2805 = *£temporary2805

 strpbrk$11:
	; £temporary2806 = int_to_int £temporary2802 -> £temporary2805 (SignedChar -> SignedInt)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

 strpbrk$12:
	; parameter £temporary2806, offset 76
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
	; £temporary2807 = return_value

 strpbrk$16:
	; if £temporary2807 == int8$0# goto 22
	cmp rbx, 0
	je strpbrk$22

 strpbrk$17:
	; £temporary2810 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$18:
	; £temporary2812 = mainString + £temporary2810
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$19:
	; £temporary2809 -> £temporary2812 = *£temporary2812

 strpbrk$20:
	; £temporary2813 = &£temporary2809 -> £temporary2812

 strpbrk$21:
	; return £temporary2813
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

section .text

 strstr:
	; empty

 strstr$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strstr$2:
	; £temporary2815 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$3:
	; £temporary2817 = mainString + £temporary2815
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$4:
	; £temporary2814 -> £temporary2817 = *£temporary2817

 strstr$5:
	; if £temporary2814 -> £temporary2817 == int1$0# goto 22
	cmp byte [rsi], 0
	je strstr$22

 strstr$6:
	; call header integral zero 0 stack zero 0

 strstr$7:
	; £temporary2820 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; £temporary2821 = mainString + £temporary2820
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$9:
	; parameter £temporary2821, offset 68
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
	; £temporary2823 = return_value

 strstr$14:
	; if £temporary2823 != int4$0# goto 20
	cmp ebx, 0
	jne strstr$20

 strstr$15:
	; £temporary2826 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$16:
	; £temporary2828 = mainString + £temporary2826
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$17:
	; £temporary2825 -> £temporary2828 = *£temporary2828

 strstr$18:
	; £temporary2829 = &£temporary2825 -> £temporary2828

 strstr$19:
	; return £temporary2829
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

section .text

 strlen:
	; empty

 strlen$1:
	; index = int4$0#
	mov dword [rbp + 32], 0

 strlen$2:
	; £temporary2831 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$3:
	; £temporary2833 = string + £temporary2831
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$4:
	; £temporary2830 -> £temporary2833 = *£temporary2833

 strlen$5:
	; if £temporary2830 -> £temporary2833 == int1$0# goto 8
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

section .data

int8$8#:
	; initializer Pointer
	dq 8

section .text

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
	; £temporary2836 = return_value

 strerror$4:
	; localeConvPtr = £temporary2836
	mov [rbp + 28], rbx

 strerror$5:
	; if localeConvPtr == int8$0# goto 9
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; £temporary2838 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

 strerror$7:
	; £temporary2839 = £temporary2838 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; goto 10
	jmp strerror$10

 strerror$9:
	; £temporary2839 = int8$0#
	mov rax, 0

 strerror$10:
	; messageList = £temporary2839
	mov [rbp + 36], rax

 strerror$11:
	; if messageList == int8$0# goto 14
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; £temporary2841 = messageList
	mov rax, [rbp + 36]

 strerror$13:
	; goto 15
	jmp strerror$15

 strerror$14:
	; £temporary2841 = enMessageList
	mov rax, enMessageList

 strerror$15:
	; messageList = £temporary2841
	mov [rbp + 36], rax

 strerror$16:
	; £temporary2843 = int_to_int errno (SignedInt -> Pointer)
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; £temporary2844 = £temporary2843 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; £temporary2845 = messageList + £temporary2844
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; £temporary2842 -> £temporary2845 = *£temporary2845

 strerror$20:
	; return £temporary2842 -> £temporary2845
	mov rbx, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$21:
	; function end strerror

section .data

token:
	; initializer Pointer
	dq 0

section .text

 strtok:
	; empty

 strtok$1:
	; if string == int8$0# goto 40
	cmp qword [rbp + 24], 0
	je strtok$40

 strtok$2:
	; £temporary2847 -> string = *string
	mov rsi, [rbp + 24]

 strtok$3:
	; if £temporary2847 -> string != int1$0# goto 5
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
	; £temporary2850 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; £temporary2852 = string + £temporary2850
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; £temporary2849 -> £temporary2852 = *£temporary2852

 strtok$9:
	; if £temporary2849 -> £temporary2852 == int1$0# goto 34
	cmp byte [rsi], 0
	je strtok$34

 strtok$10:
	; call header integral zero 0 stack zero 0

 strtok$11:
	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; £temporary2856 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; £temporary2858 = string + £temporary2856
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; £temporary2855 -> £temporary2858 = *£temporary2858

 strtok$15:
	; £temporary2859 = int_to_int £temporary2855 -> £temporary2858 (SignedChar -> SignedInt)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; parameter £temporary2859, offset 84
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
	; £temporary2860 = return_value

 strtok$20:
	; if £temporary2860 == int8$0# goto 32
	cmp rbx, 0
	je strtok$32

 strtok$21:
	; £temporary2863 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; £temporary2865 = string + £temporary2863
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; £temporary2862 -> £temporary2865 = *£temporary2865

 strtok$24:
	; £temporary2862 -> £temporary2865 = int1$0#
	mov byte [rsi], 0

 strtok$25:
	; £temporary2866 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; £temporary2868 = int_to_int £temporary2866 (SignedInt -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; £temporary2870 = string + £temporary2868
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; £temporary2867 -> £temporary2870 = *£temporary2870

 strtok$29:
	; £temporary2871 = &£temporary2867 -> £temporary2870

 strtok$30:
	; token = £temporary2871
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
	; £temporary2873 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$35:
	; £temporary2875 = string + £temporary2873
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$36:
	; £temporary2872 -> £temporary2875 = *£temporary2875

 strtok$37:
	; £temporary2876 = &£temporary2872 -> £temporary2875

 strtok$38:
	; token = £temporary2876
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
	; £temporary2878 -> token = *token
	mov rsi, [token]

 strtok$43:
	; if £temporary2878 -> token != int1$0# goto 45
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
	; £temporary2881 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$47:
	; £temporary2883 = token + £temporary2881
	mov rsi, [token]
	add rsi, rax

 strtok$48:
	; £temporary2880 -> £temporary2883 = *£temporary2883

 strtok$49:
	; if £temporary2880 -> £temporary2883 == int1$0# goto 75
	cmp byte [rsi], 0
	je strtok$75

 strtok$50:
	; call header integral zero 0 stack zero 0

 strtok$51:
	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$52:
	; £temporary2887 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$53:
	; £temporary2889 = token + £temporary2887
	mov rsi, [token]
	add rsi, rax

 strtok$54:
	; £temporary2886 -> £temporary2889 = *£temporary2889

 strtok$55:
	; £temporary2890 = int_to_int £temporary2886 -> £temporary2889 (SignedChar -> SignedInt)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$56
	neg al
	neg eax

 strtok$56:
	; parameter £temporary2890, offset 84
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
	; £temporary2891 = return_value

 strtok$60:
	; if £temporary2891 == int8$0# goto 73
	cmp rbx, 0
	je strtok$73

 strtok$61:
	; tokenStart2 = token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$62:
	; £temporary2894 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$63:
	; £temporary2896 = token + £temporary2894
	mov rsi, [token]
	add rsi, rax

 strtok$64:
	; £temporary2893 -> £temporary2896 = *£temporary2896

 strtok$65:
	; £temporary2893 -> £temporary2896 = int1$0#
	mov byte [rsi], 0

 strtok$66:
	; £temporary2897 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$67:
	; £temporary2899 = int_to_int £temporary2897 (SignedInt -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strtok$68:
	; £temporary2901 = token + £temporary2899
	mov rsi, [token]
	add rsi, rax

 strtok$69:
	; £temporary2898 -> £temporary2901 = *£temporary2901

 strtok$70:
	; £temporary2902 = &£temporary2898 -> £temporary2901

 strtok$71:
	; token = £temporary2902
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
	; £temporary2904 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$77:
	; £temporary2906 = token + £temporary2904
	mov rsi, [token]
	add rsi, rax

 strtok$78:
	; £temporary2903 -> £temporary2906 = *£temporary2906

 strtok$79:
	; £temporary2907 = &£temporary2903 -> £temporary2906

 strtok$80:
	; token = £temporary2907
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

section .text

 memcpy:
	; £temporary2908 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memcpy$1:
	; charTarget = £temporary2908
	mov [rbp + 44], rax

 memcpy$2:
	; £temporary2909 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memcpy$3:
	; charSource = £temporary2909
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
	; £temporary2913 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; £temporary2915 = charTarget + £temporary2913
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; £temporary2912 -> £temporary2915 = *£temporary2915

 memcpy$9:
	; £temporary2917 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; £temporary2919 = charSource + £temporary2917
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; £temporary2916 -> £temporary2919 = *£temporary2919

 memcpy$12:
	; £temporary2912 -> £temporary2915 = £temporary2916 -> £temporary2919
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; index = index + int4$1#
	inc dword [rbp + 60]

 memcpy$14:
	; goto 5
	jmp memcpy$5

 memcpy$15:
	; £temporary2920 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

 memcpy$16:
	; return £temporary2920
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; function end memcpy

section .text

 memmove:
	; £temporary2921 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memmove$1:
	; charTarget = £temporary2921
	mov [rbp + 44], rax

 memmove$2:
	; £temporary2922 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memmove$3:
	; charSource = £temporary2922
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
	; £temporary2928 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; £temporary2930 = charTarget + £temporary2928
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; £temporary2927 -> £temporary2930 = *£temporary2930

 memmove$10:
	; £temporary2932 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; £temporary2934 = charSource + £temporary2932
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; £temporary2931 -> £temporary2934 = *£temporary2934

 memmove$13:
	; £temporary2927 -> £temporary2930 = £temporary2931 -> £temporary2934
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
	; £temporary2938 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; £temporary2940 = charTarget + £temporary2938
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; £temporary2937 -> £temporary2940 = *£temporary2940

 memmove$21:
	; £temporary2942 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; £temporary2944 = charSource + £temporary2942
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; £temporary2941 -> £temporary2944 = *£temporary2944

 memmove$24:
	; £temporary2937 -> £temporary2940 = £temporary2941 -> £temporary2944
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; index = index + int4$1#
	inc dword [rbp + 60]

 memmove$26:
	; goto 17
	jmp memmove$17

 memmove$27:
	; £temporary2945 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

 memmove$28:
	; return £temporary2945
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; function end memmove

section .text

 memcmp:
	; £temporary2946 = int_to_int left (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memcmp$1:
	; charLeft = £temporary2946
	mov [rbp + 44], rax

 memcmp$2:
	; £temporary2947 = int_to_int right (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memcmp$3:
	; charRight = £temporary2947
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
	; £temporary2951 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; £temporary2953 = charLeft + £temporary2951
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; £temporary2950 -> £temporary2953 = *£temporary2953

 memcmp$9:
	; £temporary2955 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; £temporary2957 = charRight + £temporary2955
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; £temporary2954 -> £temporary2957 = *£temporary2957

 memcmp$12:
	; if £temporary2950 -> £temporary2953 >= £temporary2954 -> £temporary2957 goto 14
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
	; £temporary2960 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; £temporary2962 = charLeft + £temporary2960
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; £temporary2959 -> £temporary2962 = *£temporary2962

 memcmp$17:
	; £temporary2964 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; £temporary2966 = charRight + £temporary2964
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; £temporary2963 -> £temporary2966 = *£temporary2966

 memcmp$20:
	; if £temporary2959 -> £temporary2962 <= £temporary2963 -> £temporary2966 goto 22
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

section .text

 memchr:
	; empty

 memchr$1:
	; £temporary2968 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memchr$2:
	; charBlock = £temporary2968
	mov [rbp + 44], rax

 memchr$3:
	; £temporary2969 = int_to_int i (SignedInt -> SignedChar)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

 memchr$4:
	; c = £temporary2969
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
	; £temporary2973 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$8:
	; £temporary2975 = charBlock + £temporary2973
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$9:
	; £temporary2972 -> £temporary2975 = *£temporary2975

 memchr$10:
	; if £temporary2972 -> £temporary2975 != c goto 17
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$11:
	; £temporary2978 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$12:
	; £temporary2980 = charBlock + £temporary2978
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$13:
	; £temporary2977 -> £temporary2980 = *£temporary2980

 memchr$14:
	; £temporary2981 = &£temporary2977 -> £temporary2980

 memchr$15:
	; £temporary2982 = int_to_int £temporary2981 (Pointer -> Pointer)

 memchr$16:
	; return £temporary2982
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

section .text

 memset:
	; £temporary2983 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memset$1:
	; charBlock = £temporary2983
	mov [rbp + 40], rax

 memset$2:
	; £temporary2984 = int_to_int i (SignedInt -> SignedChar)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; c = £temporary2984
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
	; £temporary2988 = int_to_int index (SignedInt -> Pointer)
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; £temporary2990 = charBlock + £temporary2988
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; £temporary2987 -> £temporary2990 = *£temporary2990

 memset$9:
	; £temporary2987 -> £temporary2990 = c
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
