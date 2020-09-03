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
	; £temporary2542 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$3:
	; £temporary2544 = source + £temporary2542
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$4:
	; £field2541 -> £temporary2544 = *£temporary2544

 strcpy$5:
	; if £field2541 -> £temporary2544 == int1$0# goto 15
	cmp byte [rsi], 0
	je strcpy$15

 strcpy$6:
	; £temporary2548 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$7:
	; £temporary2550 = target + £temporary2548
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$8:
	; £field2547 -> £temporary2550 = *£temporary2550

 strcpy$9:
	; £temporary2552 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$10:
	; £temporary2554 = source + £temporary2552
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$11:
	; £field2551 -> £temporary2554 = *£temporary2554

 strcpy$12:
	; £field2547 -> £temporary2550 = £field2551 -> £temporary2554
	mov al, [rdi]
	mov [rsi], al

 strcpy$13:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strcpy$14:
	; goto 2
	jmp strcpy$2

 strcpy$15:
	; £temporary2556 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$16:
	; £temporary2558 = target + £temporary2556
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$17:
	; £field2555 -> £temporary2558 = *£temporary2558

 strcpy$18:
	; £field2555 -> £temporary2558 = int1$0#
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
	; £temporary2561 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$4:
	; £temporary2563 = source + £temporary2561
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$5:
	; £field2560 -> £temporary2563 = *£temporary2563

 strncpy$6:
	; if £field2560 -> £temporary2563 == int1$0# goto 16
	cmp byte [rsi], 0
	je strncpy$16

 strncpy$7:
	; £temporary2568 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$8:
	; £temporary2570 = target + £temporary2568
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$9:
	; £field2567 -> £temporary2570 = *£temporary2570

 strncpy$10:
	; £temporary2572 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$11:
	; £temporary2574 = source + £temporary2572
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$12:
	; £field2571 -> £temporary2574 = *£temporary2574

 strncpy$13:
	; £field2567 -> £temporary2570 = £field2571 -> £temporary2574
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
	; £temporary2578 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$18:
	; £temporary2580 = target + £temporary2578
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$19:
	; £field2577 -> £temporary2580 = *£temporary2580

 strncpy$20:
	; £field2577 -> £temporary2580 = int1$0#
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
	; £temporary2581 = return_value

 strcat$6:
	; targetLength = £temporary2581
	mov [rbp + 44], ebx

 strcat$7:
	; index = int4$0#
	mov dword [rbp + 40], 0

 strcat$8:
	; £temporary2583 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$9:
	; £temporary2585 = source + £temporary2583
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$10:
	; £field2582 -> £temporary2585 = *£temporary2585

 strcat$11:
	; if £field2582 -> £temporary2585 == int1$0# goto 22
	cmp byte [rsi], 0
	je strcat$22

 strcat$12:
	; £temporary2588 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$13:
	; £temporary2590 = int_to_int £temporary2588 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strcat$14:
	; £temporary2592 = target + £temporary2590
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$15:
	; £field2589 -> £temporary2592 = *£temporary2592

 strcat$16:
	; £temporary2594 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$17:
	; £temporary2596 = source + £temporary2594
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$18:
	; £field2593 -> £temporary2596 = *£temporary2596

 strcat$19:
	; £field2589 -> £temporary2592 = £field2593 -> £temporary2596
	mov al, [rdi]
	mov [rsi], al

 strcat$20:
	; index = index + int4$1#
	inc dword [rbp + 40]

 strcat$21:
	; goto 8
	jmp strcat$8

 strcat$22:
	; £temporary2597 = targetLength + index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$23:
	; £temporary2599 = int_to_int £temporary2597 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strcat$24:
	; £temporary2601 = target + £temporary2599
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$25:
	; £field2598 -> £temporary2601 = *£temporary2601

 strcat$26:
	; £field2598 -> £temporary2601 = int1$0#
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
	; £temporary2602 = return_value

 strncat$6:
	; targetLength = £temporary2602
	mov [rbp + 48], ebx

 strncat$7:
	; index = int4$0#
	mov dword [rbp + 44], 0

 strncat$8:
	; £temporary2603 = size - int4$1#
	mov eax, [rbp + 40]
	dec eax

 strncat$9:
	; if index >= £temporary2603 goto 24
	cmp [rbp + 44], eax
	jge strncat$24

 strncat$10:
	; £temporary2606 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$11:
	; £temporary2608 = source + £temporary2606
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$12:
	; £field2605 -> £temporary2608 = *£temporary2608

 strncat$13:
	; if £field2605 -> £temporary2608 == int1$0# goto 24
	cmp byte [rsi], 0
	je strncat$24

 strncat$14:
	; £temporary2612 = targetLength + index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$15:
	; £temporary2614 = int_to_int £temporary2612 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strncat$16:
	; £temporary2616 = target + £temporary2614
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$17:
	; £field2613 -> £temporary2616 = *£temporary2616

 strncat$18:
	; £temporary2618 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$19:
	; £temporary2620 = source + £temporary2618
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$20:
	; £field2617 -> £temporary2620 = *£temporary2620

 strncat$21:
	; £field2613 -> £temporary2616 = £field2617 -> £temporary2620
	mov al, [rdi]
	mov [rsi], al

 strncat$22:
	; index = index + int4$1#
	inc dword [rbp + 44]

 strncat$23:
	; goto 8
	jmp strncat$8

 strncat$24:
	; £temporary2621 = targetLength + size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$25:
	; £temporary2622 = £temporary2621 - int4$1#
	dec eax

 strncat$26:
	; £temporary2624 = int_to_int £temporary2622 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strncat$27:
	; £temporary2626 = target + £temporary2624
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$28:
	; £field2623 -> £temporary2626 = *£temporary2626

 strncat$29:
	; £field2623 -> £temporary2626 = int1$0#
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
	; £temporary2629 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$3:
	; £temporary2631 = left + £temporary2629
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$4:
	; £field2628 -> £temporary2631 = *£temporary2631

 strcmp$5:
	; if £field2628 -> £temporary2631 != int1$0# goto 11
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$6:
	; £temporary2634 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$7:
	; £temporary2636 = right + £temporary2634
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$8:
	; £field2633 -> £temporary2636 = *£temporary2636

 strcmp$9:
	; if £field2633 -> £temporary2636 != int1$0# goto 11
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
	; £temporary2640 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; £temporary2642 = left + £temporary2640
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; £field2639 -> £temporary2642 = *£temporary2642

 strcmp$14:
	; if £field2639 -> £temporary2642 != int1$0# goto 16
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
	; £temporary2645 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$17:
	; £temporary2647 = right + £temporary2645
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$18:
	; £field2644 -> £temporary2647 = *£temporary2647

 strcmp$19:
	; if £field2644 -> £temporary2647 != int1$0# goto 21
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
	; £temporary2650 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$22:
	; £temporary2652 = left + £temporary2650
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$23:
	; £field2649 -> £temporary2652 = *£temporary2652

 strcmp$24:
	; £temporary2654 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$25:
	; £temporary2656 = right + £temporary2654
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$26:
	; £field2653 -> £temporary2656 = *£temporary2656

 strcmp$27:
	; if £field2649 -> £temporary2652 >= £field2653 -> £temporary2656 goto 29
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
	; £temporary2659 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$30:
	; £temporary2661 = left + £temporary2659
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$31:
	; £field2658 -> £temporary2661 = *£temporary2661

 strcmp$32:
	; £temporary2663 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$33:
	; £temporary2665 = right + £temporary2663
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$34:
	; £field2662 -> £temporary2665 = *£temporary2665

 strcmp$35:
	; if £field2658 -> £temporary2661 <= £field2662 -> £temporary2665 goto 37
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
	; £temporary2671 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$4:
	; £temporary2673 = left + £temporary2671
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$5:
	; £field2670 -> £temporary2673 = *£temporary2673

 strncmp$6:
	; if £field2670 -> £temporary2673 != int1$0# goto 12
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$7:
	; £temporary2676 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$8:
	; £temporary2678 = right + £temporary2676
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$9:
	; £field2675 -> £temporary2678 = *£temporary2678

 strncmp$10:
	; if £field2675 -> £temporary2678 != int1$0# goto 12
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
	; £temporary2682 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; £temporary2684 = left + £temporary2682
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; £field2681 -> £temporary2684 = *£temporary2684

 strncmp$15:
	; if £field2681 -> £temporary2684 != int1$0# goto 17
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
	; £temporary2687 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$18:
	; £temporary2689 = right + £temporary2687
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$19:
	; £field2686 -> £temporary2689 = *£temporary2689

 strncmp$20:
	; if £field2686 -> £temporary2689 != int1$0# goto 22
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
	; £temporary2692 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$23:
	; £temporary2694 = left + £temporary2692
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$24:
	; £field2691 -> £temporary2694 = *£temporary2694

 strncmp$25:
	; £temporary2696 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$26:
	; £temporary2698 = right + £temporary2696
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$27:
	; £field2695 -> £temporary2698 = *£temporary2698

 strncmp$28:
	; if £field2691 -> £temporary2694 >= £field2695 -> £temporary2698 goto 30
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
	; £temporary2701 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$31:
	; £temporary2703 = left + £temporary2701
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$32:
	; £field2700 -> £temporary2703 = *£temporary2703

 strncmp$33:
	; £temporary2705 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$34:
	; £temporary2707 = right + £temporary2705
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$35:
	; £field2704 -> £temporary2707 = *£temporary2707

 strncmp$36:
	; if £field2700 -> £temporary2703 <= £field2704 -> £temporary2707 goto 38
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
	; £temporary2709 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$2
	neg eax
	neg al

 strchr$2:
	; c = £temporary2709
	mov [rbp + 40], al

 strchr$3:
	; index = int4$0#
	mov dword [rbp + 36], 0

 strchr$4:
	; £temporary2711 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$5:
	; £temporary2713 = text + £temporary2711
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$6:
	; £field2710 -> £temporary2713 = *£temporary2713

 strchr$7:
	; if £field2710 -> £temporary2713 == int1$0# goto 19
	cmp byte [rsi], 0
	je strchr$19

 strchr$8:
	; £temporary2717 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$9:
	; £temporary2719 = text + £temporary2717
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$10:
	; £field2716 -> £temporary2719 = *£temporary2719

 strchr$11:
	; if £field2716 -> £temporary2719 != c goto 17
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$12:
	; £temporary2722 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$13:
	; £temporary2724 = text + £temporary2722
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$14:
	; £field2721 -> £temporary2724 = *£temporary2724

 strchr$15:
	; £temporary2725 = &£field2721 -> £temporary2724

 strchr$16:
	; return £temporary2725
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
	; £temporary2726 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$3
	neg eax
	neg al

 strrchr$3:
	; c = £temporary2726
	mov [rbp + 48], al

 strrchr$4:
	; index = int4$0#
	mov dword [rbp + 36], 0

 strrchr$5:
	; £temporary2728 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$6:
	; £temporary2730 = text + £temporary2728
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$7:
	; £field2727 -> £temporary2730 = *£temporary2730

 strrchr$8:
	; if £field2727 -> £temporary2730 == int1$0# goto 20
	cmp byte [rsi], 0
	je strrchr$20

 strrchr$9:
	; £temporary2734 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$10:
	; £temporary2736 = text + £temporary2734
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$11:
	; £field2733 -> £temporary2736 = *£temporary2736

 strrchr$12:
	; if £field2733 -> £temporary2736 != c goto 18
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$18

 strrchr$13:
	; £temporary2739 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$14:
	; £temporary2741 = text + £temporary2739
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$15:
	; £field2738 -> £temporary2741 = *£temporary2741

 strrchr$16:
	; £temporary2742 = &£field2738 -> £temporary2741

 strrchr$17:
	; result = £temporary2742
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
	; £temporary2744 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$3:
	; £temporary2746 = mainString + £temporary2744
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$4:
	; £field2743 -> £temporary2746 = *£temporary2746

 strspn$5:
	; if £field2743 -> £temporary2746 == int1$0# goto 20
	cmp byte [rsi], 0
	je strspn$20

 strspn$6:
	; call header integral zero 0 stack zero 0

 strspn$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$8:
	; £temporary2750 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$9:
	; £temporary2752 = mainString + £temporary2750
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$10:
	; £field2749 -> £temporary2752 = *£temporary2752

 strspn$11:
	; £temporary2753 = int_to_int £field2749 -> £temporary2752 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$12
	neg al
	neg eax

 strspn$12:
	; parameter £temporary2753, offset 76
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
	; £temporary2754 = return_value

 strspn$16:
	; if £temporary2754 != int8$0# goto 18
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
	; £temporary2757 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$3:
	; £temporary2759 = mainString + £temporary2757
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$4:
	; £field2756 -> £temporary2759 = *£temporary2759

 strcspn$5:
	; if £field2756 -> £temporary2759 == int1$0# goto 20
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$6:
	; call header integral zero 0 stack zero 0

 strcspn$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$8:
	; £temporary2763 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$9:
	; £temporary2765 = mainString + £temporary2763
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$10:
	; £field2762 -> £temporary2765 = *£temporary2765

 strcspn$11:
	; £temporary2766 = int_to_int £field2762 -> £temporary2765 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$12
	neg al
	neg eax

 strcspn$12:
	; parameter £temporary2766, offset 76
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
	; £temporary2767 = return_value

 strcspn$16:
	; if £temporary2767 == int8$0# goto 18
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
	; £temporary2770 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$3:
	; £temporary2772 = mainString + £temporary2770
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$4:
	; £field2769 -> £temporary2772 = *£temporary2772

 strpbrk$5:
	; if £field2769 -> £temporary2772 == int1$0# goto 24
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$6:
	; call header integral zero 0 stack zero 0

 strpbrk$7:
	; parameter charSet, offset 68
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$8:
	; £temporary2776 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$9:
	; £temporary2778 = mainString + £temporary2776
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$10:
	; £field2775 -> £temporary2778 = *£temporary2778

 strpbrk$11:
	; £temporary2779 = int_to_int £field2775 -> £temporary2778 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$12
	neg al
	neg eax

 strpbrk$12:
	; parameter £temporary2779, offset 76
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
	; £temporary2780 = return_value

 strpbrk$16:
	; if £temporary2780 == int8$0# goto 22
	cmp rbx, 0
	je strpbrk$22

 strpbrk$17:
	; £temporary2783 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$18:
	; £temporary2785 = mainString + £temporary2783
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$19:
	; £field2782 -> £temporary2785 = *£temporary2785

 strpbrk$20:
	; £temporary2786 = &£field2782 -> £temporary2785

 strpbrk$21:
	; return £temporary2786
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
	; £temporary2788 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$3:
	; £temporary2790 = mainString + £temporary2788
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$4:
	; £field2787 -> £temporary2790 = *£temporary2790

 strstr$5:
	; if £field2787 -> £temporary2790 == int1$0# goto 22
	cmp byte [rsi], 0
	je strstr$22

 strstr$6:
	; call header integral zero 0 stack zero 0

 strstr$7:
	; £temporary2793 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; £temporary2794 = mainString + £temporary2793
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$9:
	; parameter £temporary2794, offset 68
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
	; £temporary2796 = return_value

 strstr$14:
	; if £temporary2796 != int4$0# goto 20
	cmp ebx, 0
	jne strstr$20

 strstr$15:
	; £temporary2799 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$16:
	; £temporary2801 = mainString + £temporary2799
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$17:
	; £field2798 -> £temporary2801 = *£temporary2801

 strstr$18:
	; £temporary2802 = &£field2798 -> £temporary2801

 strstr$19:
	; return £temporary2802
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
	; £temporary2804 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$3:
	; £temporary2806 = string + £temporary2804
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$4:
	; £field2803 -> £temporary2806 = *£temporary2806

 strlen$5:
	; if £field2803 -> £temporary2806 == int1$0# goto 8
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
	; £temporary2809 = return_value

 strerror$4:
	; localeConvPtr = £temporary2809
	mov [rbp + 28], rbx

 strerror$5:
	; if localeConvPtr == int8$0# goto 9
	cmp qword [rbp + 28], 0
	je strerror$9

 strerror$6:
	; £field2811 -> localeConvPtr = *localeConvPtr
	mov rsi, [rbp + 28]

 strerror$7:
	; £temporary2812 = £field2811 -> localeConvPtr
	mov rax, [rsi + 56]

 strerror$8:
	; goto 10
	jmp strerror$10

 strerror$9:
	; £temporary2812 = int8$0#
	mov rax, 0

 strerror$10:
	; messageList = £temporary2812
	mov [rbp + 36], rax

 strerror$11:
	; if messageList == int8$0# goto 14
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$12:
	; £temporary2814 = messageList
	mov rax, [rbp + 36]

 strerror$13:
	; goto 15
	jmp strerror$15

 strerror$14:
	; £temporary2814 = enMessageList
	mov rax, enMessageList

 strerror$15:
	; messageList = £temporary2814
	mov [rbp + 36], rax

 strerror$16:
	; £temporary2816 = int_to_int errno (Signed_Int -> Pointer)
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 strerror$17:
	; £temporary2817 = £temporary2816 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

 strerror$18:
	; £temporary2818 = messageList + £temporary2817
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$19:
	; £field2815 -> £temporary2818 = *£temporary2818

 strerror$20:
	; return £field2815 -> £temporary2818
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
	; £field2820 -> string = *string
	mov rsi, [rbp + 24]

 strtok$3:
	; if £field2820 -> string != int1$0# goto 5
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
	; £temporary2823 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; £temporary2825 = string + £temporary2823
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; £field2822 -> £temporary2825 = *£temporary2825

 strtok$9:
	; if £field2822 -> £temporary2825 == int1$0# goto 34
	cmp byte [rsi], 0
	je strtok$34

 strtok$10:
	; call header integral zero 0 stack zero 0

 strtok$11:
	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; £temporary2829 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; £temporary2831 = string + £temporary2829
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; £field2828 -> £temporary2831 = *£temporary2831

 strtok$15:
	; £temporary2832 = int_to_int £field2828 -> £temporary2831 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; parameter £temporary2832, offset 84
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
	; £temporary2833 = return_value

 strtok$20:
	; if £temporary2833 == int8$0# goto 32
	cmp rbx, 0
	je strtok$32

 strtok$21:
	; £temporary2836 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; £temporary2838 = string + £temporary2836
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; £field2835 -> £temporary2838 = *£temporary2838

 strtok$24:
	; £field2835 -> £temporary2838 = int1$0#
	mov byte [rsi], 0

 strtok$25:
	; £temporary2839 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; £temporary2841 = int_to_int £temporary2839 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; £temporary2843 = string + £temporary2841
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; £field2840 -> £temporary2843 = *£temporary2843

 strtok$29:
	; £temporary2844 = &£field2840 -> £temporary2843

 strtok$30:
	; token = £temporary2844
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
	; £temporary2846 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$35:
	; £temporary2848 = string + £temporary2846
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$36:
	; £field2845 -> £temporary2848 = *£temporary2848

 strtok$37:
	; £temporary2849 = &£field2845 -> £temporary2848

 strtok$38:
	; token = £temporary2849
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
	; £field2851 -> token = *token
	mov rsi, [token]

 strtok$43:
	; if £field2851 -> token != int1$0# goto 45
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
	; £temporary2854 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$47:
	; £temporary2856 = token + £temporary2854
	mov rsi, [token]
	add rsi, rax

 strtok$48:
	; £field2853 -> £temporary2856 = *£temporary2856

 strtok$49:
	; if £field2853 -> £temporary2856 == int1$0# goto 75
	cmp byte [rsi], 0
	je strtok$75

 strtok$50:
	; call header integral zero 0 stack zero 0

 strtok$51:
	; parameter charSet, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$52:
	; £temporary2860 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$53:
	; £temporary2862 = token + £temporary2860
	mov rsi, [token]
	add rsi, rax

 strtok$54:
	; £field2859 -> £temporary2862 = *£temporary2862

 strtok$55:
	; £temporary2863 = int_to_int £field2859 -> £temporary2862 (Signed_Char -> Signed_Int)
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$56
	neg al
	neg eax

 strtok$56:
	; parameter £temporary2863, offset 84
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
	; £temporary2864 = return_value

 strtok$60:
	; if £temporary2864 == int8$0# goto 73
	cmp rbx, 0
	je strtok$73

 strtok$61:
	; tokenStart2 = token
	mov rax, [token]
	mov [rbp + 52], rax

 strtok$62:
	; £temporary2867 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$63:
	; £temporary2869 = token + £temporary2867
	mov rsi, [token]
	add rsi, rax

 strtok$64:
	; £field2866 -> £temporary2869 = *£temporary2869

 strtok$65:
	; £field2866 -> £temporary2869 = int1$0#
	mov byte [rsi], 0

 strtok$66:
	; £temporary2870 = index + int4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$67:
	; £temporary2872 = int_to_int £temporary2870 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 strtok$68:
	; £temporary2874 = token + £temporary2872
	mov rsi, [token]
	add rsi, rax

 strtok$69:
	; £field2871 -> £temporary2874 = *£temporary2874

 strtok$70:
	; £temporary2875 = &£field2871 -> £temporary2874

 strtok$71:
	; token = £temporary2875
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
	; £temporary2877 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$77:
	; £temporary2879 = token + £temporary2877
	mov rsi, [token]
	add rsi, rax

 strtok$78:
	; £field2876 -> £temporary2879 = *£temporary2879

 strtok$79:
	; £temporary2880 = &£field2876 -> £temporary2879

 strtok$80:
	; token = £temporary2880
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
	; £temporary2881 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memcpy$1:
	; charTarget = £temporary2881
	mov [rbp + 44], rax

 memcpy$2:
	; £temporary2882 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memcpy$3:
	; charSource = £temporary2882
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
	; £temporary2886 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; £temporary2888 = charTarget + £temporary2886
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; £field2885 -> £temporary2888 = *£temporary2888

 memcpy$9:
	; £temporary2890 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; £temporary2892 = charSource + £temporary2890
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; £field2889 -> £temporary2892 = *£temporary2892

 memcpy$12:
	; £field2885 -> £temporary2888 = £field2889 -> £temporary2892
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; index = index + int4$1#
	inc dword [rbp + 60]

 memcpy$14:
	; goto 5
	jmp memcpy$5

 memcpy$15:
	; £temporary2893 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

 memcpy$16:
	; return £temporary2893
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; function end memcpy

 memmove:
	; £temporary2894 = int_to_int target (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memmove$1:
	; charTarget = £temporary2894
	mov [rbp + 44], rax

 memmove$2:
	; £temporary2895 = int_to_int source (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memmove$3:
	; charSource = £temporary2895
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
	; £temporary2901 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; £temporary2903 = charTarget + £temporary2901
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; £field2900 -> £temporary2903 = *£temporary2903

 memmove$10:
	; £temporary2905 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; £temporary2907 = charSource + £temporary2905
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; £field2904 -> £temporary2907 = *£temporary2907

 memmove$13:
	; £field2900 -> £temporary2903 = £field2904 -> £temporary2907
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
	; £temporary2911 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; £temporary2913 = charTarget + £temporary2911
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; £field2910 -> £temporary2913 = *£temporary2913

 memmove$21:
	; £temporary2915 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; £temporary2917 = charSource + £temporary2915
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; £field2914 -> £temporary2917 = *£temporary2917

 memmove$24:
	; £field2910 -> £temporary2913 = £field2914 -> £temporary2917
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; index = index + int4$1#
	inc dword [rbp + 60]

 memmove$26:
	; goto 17
	jmp memmove$17

 memmove$27:
	; £temporary2918 = int_to_int target (Pointer -> Pointer)
	mov rbx, [rbp + 24]

 memmove$28:
	; return £temporary2918
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; function end memmove

 memcmp:
	; £temporary2919 = int_to_int left (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memcmp$1:
	; charLeft = £temporary2919
	mov [rbp + 44], rax

 memcmp$2:
	; £temporary2920 = int_to_int right (Pointer -> Pointer)
	mov rax, [rbp + 32]

 memcmp$3:
	; charRight = £temporary2920
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
	; £temporary2924 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; £temporary2926 = charLeft + £temporary2924
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; £field2923 -> £temporary2926 = *£temporary2926

 memcmp$9:
	; £temporary2928 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; £temporary2930 = charRight + £temporary2928
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; £field2927 -> £temporary2930 = *£temporary2930

 memcmp$12:
	; if £field2923 -> £temporary2926 >= £field2927 -> £temporary2930 goto 14
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
	; £temporary2933 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; £temporary2935 = charLeft + £temporary2933
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; £field2932 -> £temporary2935 = *£temporary2935

 memcmp$17:
	; £temporary2937 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; £temporary2939 = charRight + £temporary2937
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; £field2936 -> £temporary2939 = *£temporary2939

 memcmp$20:
	; if £field2932 -> £temporary2935 <= £field2936 -> £temporary2939 goto 22
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
	; £temporary2941 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memchr$2:
	; charBlock = £temporary2941
	mov [rbp + 44], rax

 memchr$3:
	; £temporary2942 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$4
	neg eax
	neg al

 memchr$4:
	; c = £temporary2942
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
	; £temporary2946 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$8:
	; £temporary2948 = charBlock + £temporary2946
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$9:
	; £field2945 -> £temporary2948 = *£temporary2948

 memchr$10:
	; if £field2945 -> £temporary2948 != c goto 17
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$11:
	; £temporary2951 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$12:
	; £temporary2953 = charBlock + £temporary2951
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$13:
	; £field2950 -> £temporary2953 = *£temporary2953

 memchr$14:
	; £temporary2954 = &£field2950 -> £temporary2953

 memchr$15:
	; £temporary2955 = int_to_int £temporary2954 (Pointer -> Pointer)

 memchr$16:
	; return £temporary2955
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
	; £temporary2956 = int_to_int block (Pointer -> Pointer)
	mov rax, [rbp + 24]

 memset$1:
	; charBlock = £temporary2956
	mov [rbp + 40], rax

 memset$2:
	; £temporary2957 = int_to_int i (Signed_Int -> Signed_Char)
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; c = £temporary2957
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
	; £temporary2961 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; £temporary2963 = charBlock + £temporary2961
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; £field2960 -> £temporary2963 = *£temporary2963

 memset$9:
	; £field2960 -> £temporary2963 = c
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
