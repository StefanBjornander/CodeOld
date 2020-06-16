	global atoi
	global atol
	global strtol
	global strtoul
	global atof
	global strtod
	global abort
	global getenv
	global system
	global memswp
	global bsearch
	global rand
	global srand
	global print_heap2
	global g_funcArray
	global atexit
	global exit
	global swap
	global qsort
	global _abs
	global labs
	global div
	global ldiv

	extern sscanf
	extern printf
	extern errno
section .text

atoi:	; call header integral zero 0 stack zero 0

atoi$1:	; parameter s, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

atoi$2:	; parameter int8$0#, offset 64
	mov rax, 0
	mov [rbp + 64], rax

atoi$3:	; parameter int4$10#, offset 72
	mov dword [rbp + 72], 10

atoi$4:	; call function noellipse-noellipse strtol
	mov qword [rbp + 32], atoi$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

atoi$5:	; post call

atoi$6:	; £temporary2522 = return_value

atoi$7:	; £temporary2523 = int_to_int £temporary2522 (Signed_Long_Int -> Signed_Int)
	cmp rbx, 0
	jge atoi$8
	neg rbx
	neg ebx

atoi$8:	; return_value = £temporary2523

atoi$9:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atoi$10:	; function end atoi

atol:	; call header integral zero 0 stack zero 0

atol$1:	; parameter s, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

atol$2:	; parameter int8$0#, offset 64
	mov rax, 0
	mov [rbp + 64], rax

atol$3:	; parameter int4$10#, offset 72
	mov dword [rbp + 72], 10

atol$4:	; call function noellipse-noellipse strtol
	mov qword [rbp + 32], atol$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

atol$5:	; post call

atol$6:	; £temporary2527 = return_value

atol$7:	; return_value = £temporary2527

atol$8:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atol$9:	; function end atol

strtol:	; chars = int4$0#
	mov dword [rbp + 44], 0

strtol$1:	; value = int8$0#
	mov qword [rbp + 48], 0

strtol$2:	; call header integral zero 0 stack zero 0

strtol$3:	; parameter s, offset 80
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

strtol$4:	; parameter string_25li25n#, offset 88
	mov qword [rbp + 88], string_25li25n#

strtol$5:	; £temporary2531 = &value
	mov rsi, rbp
	add rsi, 48

strtol$6:	; parameter £temporary2531, offset 96
	mov [rbp + 96], rsi

strtol$7:	; £temporary2532 = &chars
	mov rsi, rbp
	add rsi, 44

strtol$8:	; parameter £temporary2532, offset 104
	mov [rbp + 104], rsi

strtol$9:	; call function noellipse-ellipse sscanf, extra 16
	mov qword [rbp + 56], strtol$10
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

strtol$10:	; post call

strtol$11:	; if endp == int8$0# goto 16
	cmp qword [rbp + 32], 0
	je strtol$16

strtol$12:	; £field2535 -> endp = *endp
	mov rsi, [rbp + 32]

strtol$13:	; £temporary2536 = int_to_int chars (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strtol$14:	; £temporary2537 = s + £temporary2536
	mov rbx, [rbp + 24]
	add rbx, rax

strtol$15:	; £field2535 -> endp = £temporary2537
	mov [rsi], rbx

strtol$16:	; return_value = value
	mov rbx, [rbp + 48]

strtol$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtol$18:	; function end strtol

strtoul:	; chars = int4$0#
	mov dword [rbp + 44], 0

strtoul$1:	; value = int8$0#
	mov qword [rbp + 48], 0

strtoul$2:	; call header integral zero 0 stack zero 0

strtoul$3:	; parameter s, offset 80
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

strtoul$4:	; parameter string_25lu25n#, offset 88
	mov qword [rbp + 88], string_25lu25n#

strtoul$5:	; £temporary2545 = &value
	mov rsi, rbp
	add rsi, 48

strtoul$6:	; parameter £temporary2545, offset 96
	mov [rbp + 96], rsi

strtoul$7:	; £temporary2546 = &chars
	mov rsi, rbp
	add rsi, 44

strtoul$8:	; parameter £temporary2546, offset 104
	mov [rbp + 104], rsi

strtoul$9:	; call function noellipse-ellipse sscanf, extra 16
	mov qword [rbp + 56], strtoul$10
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

strtoul$10:	; post call

strtoul$11:	; if endp == int8$0# goto 16
	cmp qword [rbp + 32], 0
	je strtoul$16

strtoul$12:	; £field2549 -> endp = *endp
	mov rsi, [rbp + 32]

strtoul$13:	; £temporary2550 = int_to_int chars (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

strtoul$14:	; £temporary2551 = s + £temporary2550
	mov rbx, [rbp + 24]
	add rbx, rax

strtoul$15:	; £field2549 -> endp = £temporary2551
	mov [rsi], rbx

strtoul$16:	; return_value = value
	mov rbx, [rbp + 48]

strtoul$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtoul$18:	; function end strtoul

atof:	; call header integral zero 0 stack zero 0

atof$1:	; parameter s, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

atof$2:	; parameter int8$0#, offset 64
	mov rax, 0
	mov [rbp + 64], rax

atof$3:	; call function noellipse-noellipse strtod
	mov qword [rbp + 32], atof$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtod

atof$4:	; post call

atof$5:	; £temporary2559 = return_value

atof$6:	; return_value = £temporary2559

atof$7:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atof$8:	; function end atof

strtod:	; chars = int4$0#
	mov dword [rbp + 40], 0

strtod$1:	; push float float8$0#
	fldz 

strtod$2:	; pop float value
	fstp qword [rbp + 44]

strtod$3:	; call header integral zero 0 stack zero 0

strtod$4:	; parameter s, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

strtod$5:	; parameter string_25lf25n#, offset 84
	mov qword [rbp + 84], string_25lf25n#

strtod$6:	; £temporary2562 = &value
	mov rsi, rbp
	add rsi, 44

strtod$7:	; parameter £temporary2562, offset 92
	mov [rbp + 92], rsi

strtod$8:	; £temporary2563 = &chars
	mov rsi, rbp
	add rsi, 40

strtod$9:	; parameter £temporary2563, offset 100
	mov [rbp + 100], rsi

strtod$10:	; call function noellipse-ellipse sscanf, extra 16
	mov qword [rbp + 52], strtod$11
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

strtod$11:	; post call

strtod$12:	; if endp == int8$0# goto 17
	cmp qword [rbp + 32], 0
	je strtod$17

strtod$13:	; £field2566 -> endp = *endp
	mov rsi, [rbp + 32]

strtod$14:	; £temporary2567 = int_to_int chars (Signed_Int -> Pointer)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

strtod$15:	; £temporary2568 = s + £temporary2567
	mov rbx, [rbp + 24]
	add rbx, rax

strtod$16:	; £field2566 -> endp = £temporary2568
	mov [rsi], rbx

strtod$17:	; push float value
	fld qword [rbp + 44]

strtod$18:	; return_value = value

strtod$19:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

strtod$20:	; function end strtod

abort:	; rax = int8$60#
	mov rax, 60

abort$1:	; rdi = int8$minus1#
	mov rdi, -1

abort$2:	; syscall
	syscall 

abort$3:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

abort$4:	; function end abort

getenv:	; return_value = int8$0#
	mov rbx, 0

getenv$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

getenv$2:	; function end getenv

system:	; return_value = int4$minus1#
	mov ebx, -1

system$1:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

system$2:	; function end system

memswp:	; £temporary2578 = int_to_int value1 (Pointer -> Pointer)
	mov rax, [rbp + 24]

memswp$1:	; charValue1 = £temporary2578
	mov [rbp + 44], rax

memswp$2:	; £temporary2579 = int_to_int value2 (Pointer -> Pointer)
	mov rax, [rbp + 32]

memswp$3:	; charValue2 = £temporary2579
	mov [rbp + 52], rax

memswp$4:	; index = int4$0#
	mov dword [rbp + 60], 0

memswp$5:	; if index >= valueSize goto 23
	mov eax, [rbp + 60]
	cmp eax, [rbp + 40]
	jge memswp$23

memswp$6:	; £temporary2583 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memswp$7:	; £temporary2585 = charValue1 + £temporary2583
	mov rsi, [rbp + 44]
	add rsi, rax

memswp$8:	; £field2582 -> £temporary2585 = *£temporary2585

memswp$9:	; tempValue = £field2582 -> £temporary2585
	mov al, [rsi]
	mov [rbp + 64], al

memswp$10:	; £temporary2587 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memswp$11:	; £temporary2589 = charValue1 + £temporary2587
	mov rsi, [rbp + 44]
	add rsi, rax

memswp$12:	; £field2586 -> £temporary2589 = *£temporary2589

memswp$13:	; £temporary2591 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memswp$14:	; £temporary2593 = charValue2 + £temporary2591
	mov rdi, [rbp + 52]
	add rdi, rax

memswp$15:	; £field2590 -> £temporary2593 = *£temporary2593

memswp$16:	; £field2586 -> £temporary2589 = £field2590 -> £temporary2593
	mov al, [rdi]
	mov [rsi], al

memswp$17:	; £temporary2595 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

memswp$18:	; £temporary2597 = charValue2 + £temporary2595
	mov rsi, [rbp + 52]
	add rsi, rax

memswp$19:	; £field2594 -> £temporary2597 = *£temporary2597

memswp$20:	; £field2594 -> £temporary2597 = tempValue
	mov al, [rbp + 64]
	mov [rsi], al

memswp$21:	; ++index
	inc dword [rbp + 60]

memswp$22:	; goto 5
	jmp memswp$5

memswp$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

memswp$24:	; function end memswp

bsearch:	; firstIndex = int4$0#
	mov dword [rbp + 56], 0

bsearch$1:	; £temporary2598 = listSize - int4$1#
	mov eax, [rbp + 40]
	dec eax

bsearch$2:	; lastIndex = £temporary2598
	mov [rbp + 60], eax

bsearch$3:	; if listSize != int4$0# goto 6
	cmp dword [rbp + 40], 0
	jne bsearch$6

bsearch$4:	; return_value = int8$0#
	mov rbx, 0

bsearch$5:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

bsearch$6:	; £temporary2600 = int_to_int valueList (Pointer -> Pointer)
	mov rbx, [rbp + 32]

bsearch$7:	; £temporary2601 = firstIndex * valueSize
	mov eax, [rbp + 56]
	xor edx, edx
	imul dword [rbp + 44]

bsearch$8:	; £temporary2602 = int_to_int £temporary2601 (Signed_Int -> Pointer)
	mov rcx, 4294967295
	and rax, rcx

bsearch$9:	; £temporary2603 = £temporary2600 + £temporary2602
	add rbx, rax

bsearch$10:	; firstValuePtr = £temporary2603
	mov [rbp + 64], rbx

bsearch$11:	; call header integral zero 0 stack zero 0

bsearch$12:	; parameter keyPtr, offset 96
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

bsearch$13:	; parameter firstValuePtr, offset 104
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

bsearch$14:	; call function noellipse-noellipse compare
	mov qword [rbp + 72], bsearch$15
	mov [rbp + 80], rbp
	add rbp, 72
	mov rax, [rbp + 48]
	jmp rax

bsearch$15:	; post call

bsearch$16:	; £temporary2605 = return_value

bsearch$17:	; firstCompare = £temporary2605
	mov [rbp + 72], ebx

bsearch$18:	; if firstCompare >= int4$0# goto 21
	cmp dword [rbp + 72], 0
	jge bsearch$21

bsearch$19:	; return_value = int8$0#
	mov rbx, 0

bsearch$20:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

bsearch$21:	; if firstCompare != int4$0# goto 24
	cmp dword [rbp + 72], 0
	jne bsearch$24

bsearch$22:	; return_value = firstValuePtr
	mov rbx, [rbp + 64]

bsearch$23:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

bsearch$24:	; £temporary2608 = int_to_int valueList (Pointer -> Pointer)
	mov rbx, [rbp + 32]

bsearch$25:	; £temporary2609 = lastIndex * valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 44]

bsearch$26:	; £temporary2610 = int_to_int £temporary2609 (Signed_Int -> Pointer)
	mov rcx, 4294967295
	and rax, rcx

bsearch$27:	; £temporary2611 = £temporary2608 + £temporary2610
	add rbx, rax

bsearch$28:	; lastValuePtr = £temporary2611
	mov [rbp + 64], rbx

bsearch$29:	; call header integral zero 0 stack zero 0

bsearch$30:	; parameter keyPtr, offset 96
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

bsearch$31:	; parameter lastValuePtr, offset 104
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

bsearch$32:	; call function noellipse-noellipse compare
	mov qword [rbp + 72], bsearch$33
	mov [rbp + 80], rbp
	add rbp, 72
	mov rax, [rbp + 48]
	jmp rax

bsearch$33:	; post call

bsearch$34:	; £temporary2613 = return_value

bsearch$35:	; lastCompare = £temporary2613
	mov [rbp + 72], ebx

bsearch$36:	; if lastCompare <= int4$0# goto 39
	cmp dword [rbp + 72], 0
	jle bsearch$39

bsearch$37:	; return_value = int8$0#
	mov rbx, 0

bsearch$38:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

bsearch$39:	; if lastCompare != int4$0# goto 42
	cmp dword [rbp + 72], 0
	jne bsearch$42

bsearch$40:	; return_value = lastValuePtr
	mov rbx, [rbp + 64]

bsearch$41:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

bsearch$42:	; £temporary2616 = firstIndex + lastIndex
	mov eax, [rbp + 56]
	add eax, [rbp + 60]

bsearch$43:	; £temporary2617 = £temporary2616 / int4$2#
	xor edx, edx
	idiv dword [int4$2#]

bsearch$44:	; middleIndex = £temporary2617
	mov [rbp + 64], eax

bsearch$45:	; £temporary2618 = int_to_int valueList (Pointer -> Pointer)
	mov rbx, [rbp + 32]

bsearch$46:	; £temporary2619 = middleIndex * valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 44]

bsearch$47:	; £temporary2620 = int_to_int £temporary2619 (Signed_Int -> Pointer)
	mov rcx, 4294967295
	and rax, rcx

bsearch$48:	; £temporary2621 = £temporary2618 + £temporary2620
	add rbx, rax

bsearch$49:	; middleValuePtr = £temporary2621
	mov [rbp + 68], rbx

bsearch$50:	; call header integral zero 0 stack zero 0

bsearch$51:	; parameter keyPtr, offset 100
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

bsearch$52:	; parameter middleValuePtr, offset 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

bsearch$53:	; call function noellipse-noellipse compare
	mov qword [rbp + 76], bsearch$54
	mov [rbp + 84], rbp
	add rbp, 76
	mov rax, [rbp + 48]
	jmp rax

bsearch$54:	; post call

bsearch$55:	; £temporary2623 = return_value

bsearch$56:	; middleCompare = £temporary2623
	mov [rbp + 76], ebx

bsearch$57:	; if middleCompare >= int4$0# goto 60
	cmp dword [rbp + 76], 0
	jge bsearch$60

bsearch$58:	; lastIndex = middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 60], eax

bsearch$59:	; goto 6
	jmp bsearch$6

bsearch$60:	; if middleCompare <= int4$0# goto 63
	cmp dword [rbp + 76], 0
	jle bsearch$63

bsearch$61:	; firstIndex = middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 56], eax

bsearch$62:	; goto 6
	jmp bsearch$6

bsearch$63:	; return_value = middleValuePtr
	mov rbx, [rbp + 68]

bsearch$64:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

bsearch$65:	; function end bsearch

rand:	; £temporary2633 = g_randValue * int8$1664525#
	mov rax, [@3822$g_randValue]
	xor rdx, rdx
	imul qword [int8$1664525#]

rand$1:	; £temporary2634 = £temporary2633 + int8$1013904223#
	add rax, 1013904223

rand$2:	; £temporary2635 = £temporary2634 % int8$127#
	xor rdx, rdx
	idiv qword [int8$127#]

rand$3:	; g_randValue = £temporary2635
	mov [@3822$g_randValue], rdx

rand$4:	; £temporary2636 = int_to_int g_randValue (Signed_Long_Int -> Signed_Int)
	mov rbx, [@3822$g_randValue]
	cmp rbx, 0
	jge rand$5
	neg rbx
	neg ebx

rand$5:	; return_value = £temporary2636

rand$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

rand$7:	; function end rand

srand:	; £temporary2637 = int_to_int seed (Unsigned_Int -> Signed_Long_Int)
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

srand$1:	; g_randValue = £temporary2637
	mov [@3822$g_randValue], rax

srand$2:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

srand$3:	; function end srand

print_heap2:	; £field2638 -> int8$32764# = *int8$32764#
	mov rsi, 32764

print_heap2$1:	; heapBottom = £field2638 -> int8$32764#
	mov eax, [rsi]
	mov [rbp + 24], eax

print_heap2$2:	; £field2639 -> int8$32766# = *int8$32766#
	mov rsi, 32766

print_heap2$3:	; topStack = £field2639 -> int8$32766#
	mov eax, [rsi]
	mov [rbp + 28], eax

print_heap2$4:	; £field2640 -> int8$32762# = *int8$32762#
	mov rsi, 32762

print_heap2$5:	; heapTop = £field2640 -> int8$32762#
	mov eax, [rsi]
	mov [rbp + 32], eax

print_heap2$6:	; index = int4$0#
	mov dword [rbp + 36], 0

print_heap2$7:	; call header integral zero 0 stack zero 0

print_heap2$8:	; parameter string_stack20top2025u2C20heap20top2025u2C20heap20bottom2025u0A#, offset 64
	mov qword [rbp + 64], string_stack20top2025u2C20heap20top2025u2C20heap20bottom2025u0A#

print_heap2$9:	; parameter topStack, offset 72
	mov eax, [rbp + 28]
	mov [rbp + 72], eax

print_heap2$10:	; parameter heapTop, offset 76
	mov eax, [rbp + 32]
	mov [rbp + 76], eax

print_heap2$11:	; parameter heapBottom, offset 80
	mov eax, [rbp + 24]
	mov [rbp + 80], eax

print_heap2$12:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 40], print_heap2$13
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

print_heap2$13:	; post call

print_heap2$14:	; if heapTop == int4$0# goto 32
	cmp dword [rbp + 32], 0
	je print_heap2$32

print_heap2$15:	; £temporary2643 = int_to_int heapTop (Unsigned_Int -> Pointer)
	mov esi, [rbp + 32]
	mov rax, 4294967295
	and rsi, rax

print_heap2$16:	; £temporary2644 = £temporary2643 + int8$4#
	add rsi, 4

print_heap2$17:	; £field2646 -> £temporary2644 = *£temporary2644

print_heap2$18:	; size = £field2646 -> £temporary2644
	mov eax, [rsi]
	mov [rbp + 40], eax

print_heap2$19:	; call header integral zero 0 stack zero 0

print_heap2$20:	; parameter string_2020index2025u2C20address2025u2C20size2025u0A#, offset 68
	mov qword [rbp + 68], string_2020index2025u2C20address2025u2C20size2025u0A#

print_heap2$21:	; £temporary2647 = index
	mov eax, [rbp + 36]

print_heap2$22:	; ++index
	inc dword [rbp + 36]

print_heap2$23:	; parameter £temporary2647, offset 76
	mov [rbp + 76], eax

print_heap2$24:	; parameter heapTop, offset 80
	mov eax, [rbp + 32]
	mov [rbp + 80], eax

print_heap2$25:	; parameter size, offset 84
	mov eax, [rbp + 40]
	mov [rbp + 84], eax

print_heap2$26:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 44], print_heap2$27
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

print_heap2$27:	; post call

print_heap2$28:	; £temporary2649 = int_to_int heapTop (Unsigned_Int -> Pointer)
	mov esi, [rbp + 32]
	mov rax, 4294967295
	and rsi, rax

print_heap2$29:	; £field2650 -> £temporary2649 = *£temporary2649

print_heap2$30:	; heapTop = £field2650 -> £temporary2649
	mov eax, [rsi]
	mov [rbp + 32], eax

print_heap2$31:	; goto 14
	jmp print_heap2$14

print_heap2$32:	; call header integral zero 0 stack zero 0

print_heap2$33:	; parameter string_0A#, offset 64
	mov qword [rbp + 64], string_0A#

print_heap2$34:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], print_heap2$35
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

print_heap2$35:	; post call

print_heap2$36:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

print_heap2$37:	; function end print_heap2

atexit:	; empty

atexit$1:	; call header integral zero 0 stack zero 0

atexit$2:	; parameter string_0A#, offset 60
	mov qword [rbp + 60], string_0A#

atexit$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 36], atexit$4
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

atexit$4:	; post call

atexit$5:	; index = int4$0#
	mov dword [rbp + 32], 0

atexit$6:	; if index >= int4$256# goto 31
	cmp dword [rbp + 32], 256
	jge atexit$31

atexit$7:	; £temporary2665 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

atexit$8:	; £temporary2666 = £temporary2665 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

atexit$9:	; £temporary2667 = g_funcArray + £temporary2666
	mov rsi, g_funcArray
	add rsi, rax

atexit$10:	; £field2664 -> £temporary2667 = *£temporary2667

atexit$11:	; if £field2664 -> £temporary2667 != int8$0# goto 29
	cmp qword [rsi], 0
	jne atexit$29

atexit$12:	; £temporary2670 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

atexit$13:	; £temporary2671 = £temporary2670 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

atexit$14:	; £temporary2672 = g_funcArray + £temporary2671
	mov rsi, g_funcArray
	add rsi, rax

atexit$15:	; £field2669 -> £temporary2672 = *£temporary2672

atexit$16:	; £field2669 -> £temporary2672 = fcn
	mov rax, [rbp + 24]
	mov [rsi], rax

atexit$17:	; call header integral zero 0 stack zero 0

atexit$18:	; parameter string_Added20function20index2025i3A2025i0A#, offset 60
	mov qword [rbp + 60], string_Added20function20index2025i3A2025i0A#

atexit$19:	; parameter index, offset 68
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

atexit$20:	; £temporary2674 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

atexit$21:	; £temporary2675 = £temporary2674 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

atexit$22:	; £temporary2676 = g_funcArray + £temporary2675
	mov rsi, g_funcArray
	add rsi, rax

atexit$23:	; £field2673 -> £temporary2676 = *£temporary2676

atexit$24:	; parameter £field2673 -> £temporary2676, offset 72
	mov rax, [rsi]
	mov [rbp + 72], rax

atexit$25:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 36], atexit$26
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

atexit$26:	; post call

atexit$27:	; return_value = int4$0#
	mov ebx, 0

atexit$28:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atexit$29:	; ++index
	inc dword [rbp + 32]

atexit$30:	; goto 6
	jmp atexit$6

atexit$31:	; return_value = int4$minus1#
	mov ebx, -1

atexit$32:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

atexit$33:	; function end atexit

exit:	; empty

exit$1:	; call header integral zero 0 stack zero 0

exit$2:	; parameter string_0A#, offset 56
	mov qword [rbp + 56], string_0A#

exit$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 32], exit$4
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

exit$4:	; post call

exit$5:	; index = int4$257#
	mov dword [rbp + 28], 257

exit$6:	; if index < int4$0# goto 31
	cmp dword [rbp + 28], 0
	jl exit$31

exit$7:	; £temporary2686 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

exit$8:	; £temporary2687 = £temporary2686 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

exit$9:	; £temporary2688 = g_funcArray + £temporary2687
	mov rsi, g_funcArray
	add rsi, rax

exit$10:	; £field2685 -> £temporary2688 = *£temporary2688

exit$11:	; if £field2685 -> £temporary2688 == int8$0# goto 29
	cmp qword [rsi], 0
	je exit$29

exit$12:	; call header integral zero 0 stack zero 0

exit$13:	; parameter string_Called20function20index2025i3A2025i0A#, offset 56
	mov qword [rbp + 56], string_Called20function20index2025i3A2025i0A#

exit$14:	; parameter index, offset 64
	mov eax, [rbp + 28]
	mov [rbp + 64], eax

exit$15:	; £temporary2691 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

exit$16:	; £temporary2692 = £temporary2691 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

exit$17:	; £temporary2693 = g_funcArray + £temporary2692
	mov rsi, g_funcArray
	add rsi, rax

exit$18:	; £field2690 -> £temporary2693 = *£temporary2693

exit$19:	; parameter £field2690 -> £temporary2693, offset 68
	mov rax, [rsi]
	mov [rbp + 68], rax

exit$20:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 32], exit$21
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 12
	jmp printf

exit$21:	; post call

exit$22:	; £temporary2696 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 28]
	mov rbx, 4294967295
	and rax, rbx

exit$23:	; £temporary2697 = £temporary2696 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

exit$24:	; £temporary2698 = g_funcArray + £temporary2697
	mov rbx, g_funcArray
	add rbx, rax

exit$25:	; £field2695 -> £temporary2698 = *£temporary2698

exit$26:	; call header integral no zero 1 stack zero 0
	mov [rbp + 32], rbx

exit$27:	; call function noellipse-noellipse £field2695 -> £temporary2698
	mov qword [rbp + 2080], exit$28
	mov [rbp + 2088], rbp
	add rbp, 2080
	mov rsi, rbp
	mov rax, [rsi]
	jmp rax

exit$28:	; post call
	mov rbx, [rbp + 32]

exit$29:	; --index
	dec dword [rbp + 28]

exit$30:	; goto 6
	jmp exit$6

exit$31:	; rax = int8$60#
	mov rax, 60

exit$32:	; £temporary2702 = int_to_int status (Signed_Int -> Unsigned_Long_Int)
	mov edi, [rbp + 24]
	mov rbx, 4294967295
	and rdi, rbx

exit$33:	; rdi = £temporary2702

exit$34:	; syscall
	syscall 

exit$35:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

exit$36:	; function end exit

swap:	; empty

swap$1:	; index = int4$0#
	mov dword [rbp + 44], 0

swap$2:	; if index >= valueSize goto 20
	mov eax, [rbp + 44]
	cmp eax, [rbp + 40]
	jge swap$20

swap$3:	; £temporary2710 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

swap$4:	; £temporary2712 = leftValuePtr + £temporary2710
	mov rsi, [rbp + 24]
	add rsi, rax

swap$5:	; £field2709 -> £temporary2712 = *£temporary2712

swap$6:	; tempValue = £field2709 -> £temporary2712
	mov al, [rsi]
	mov [rbp + 48], al

swap$7:	; £temporary2714 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

swap$8:	; £temporary2716 = leftValuePtr + £temporary2714
	mov rsi, [rbp + 24]
	add rsi, rax

swap$9:	; £field2713 -> £temporary2716 = *£temporary2716

swap$10:	; £temporary2718 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

swap$11:	; £temporary2720 = rightValuePtr + £temporary2718
	mov rdi, [rbp + 32]
	add rdi, rax

swap$12:	; £field2717 -> £temporary2720 = *£temporary2720

swap$13:	; £field2713 -> £temporary2716 = £field2717 -> £temporary2720
	mov al, [rdi]
	mov [rsi], al

swap$14:	; £temporary2722 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

swap$15:	; £temporary2724 = rightValuePtr + £temporary2722
	mov rsi, [rbp + 32]
	add rsi, rax

swap$16:	; £field2721 -> £temporary2724 = *£temporary2724

swap$17:	; £field2721 -> £temporary2724 = tempValue
	mov al, [rbp + 48]
	mov [rsi], al

swap$18:	; ++index
	inc dword [rbp + 44]

swap$19:	; goto 2
	jmp swap$2

swap$20:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

swap$21:	; function end swap

qsort:	; empty

qsort$1:	; £temporary2725 = int_to_int valueList (Pointer -> Pointer)
	mov rax, [rbp + 24]

qsort$2:	; charList = £temporary2725
	mov [rbp + 52], rax

qsort$3:	; £temporary2726 = listSize - int4$1#
	mov eax, [rbp + 32]
	dec eax

qsort$4:	; index1 = £temporary2726
	mov [rbp + 60], eax

qsort$5:	; if index1 <= int4$0# goto 36
	cmp dword [rbp + 60], 0
	jle qsort$36

qsort$6:	; update = int4$0#
	mov dword [rbp + 48], 0

qsort$7:	; index2 = int4$0#
	mov dword [rbp + 64], 0

qsort$8:	; if index2 >= index1 goto 34
	mov eax, [rbp + 64]
	cmp eax, [rbp + 60]
	jge qsort$34

qsort$9:	; £temporary2731 = index2 * valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 36]

qsort$10:	; £temporary2732 = int_to_int £temporary2731 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

qsort$11:	; £temporary2733 = charList + £temporary2732
	mov rbx, [rbp + 52]
	add rbx, rax

qsort$12:	; valuePtr1 = £temporary2733
	mov [rbp + 68], rbx

qsort$13:	; £temporary2735 = index2 + int4$1#
	mov eax, [rbp + 64]
	inc eax

qsort$14:	; £temporary2736 = £temporary2735 * valueSize
	xor edx, edx
	imul dword [rbp + 36]

qsort$15:	; £temporary2737 = int_to_int £temporary2736 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

qsort$16:	; £temporary2738 = charList + £temporary2737
	mov rbx, [rbp + 52]
	add rbx, rax

qsort$17:	; valuePtr2 = £temporary2738
	mov [rbp + 76], rbx

qsort$18:	; call header integral zero 0 stack zero 0

qsort$19:	; parameter valuePtr1, offset 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

qsort$20:	; parameter valuePtr2, offset 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

qsort$21:	; call function noellipse-noellipse compare
	mov qword [rbp + 84], qsort$22
	mov [rbp + 92], rbp
	add rbp, 84
	mov rax, [rbp + 40]
	jmp rax

qsort$22:	; post call

qsort$23:	; £temporary2740 = return_value

qsort$24:	; if £temporary2740 <= int4$0# goto 32
	cmp ebx, 0
	jle qsort$32

qsort$25:	; call header integral zero 0 stack zero 0

qsort$26:	; parameter valuePtr1, offset 108
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

qsort$27:	; parameter valuePtr2, offset 116
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

qsort$28:	; parameter valueSize, offset 124
	mov eax, [rbp + 36]
	mov [rbp + 124], eax

qsort$29:	; call function noellipse-noellipse swap
	mov qword [rbp + 84], qsort$30
	mov [rbp + 92], rbp
	add rbp, 84
	jmp swap

qsort$30:	; post call

qsort$31:	; update = int4$1#
	mov dword [rbp + 48], 1

qsort$32:	; ++index2
	inc dword [rbp + 64]

qsort$33:	; goto 8
	jmp qsort$8

qsort$34:	; --index1
	dec dword [rbp + 60]

qsort$35:	; goto 5
	jmp qsort$5

qsort$36:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

qsort$37:	; function end qsort

_abs:	; if value >= int4$0# goto 4
	cmp dword [rbp + 24], 0
	jge _abs$4

_abs$1:	; £temporary2751 = -value
	mov ebx, [rbp + 24]
	neg ebx

_abs$2:	; £temporary2752 = £temporary2751

_abs$3:	; goto 5
	jmp _abs$5

_abs$4:	; £temporary2752 = value
	mov ebx, [rbp + 24]

_abs$5:	; return_value = £temporary2752

_abs$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

_abs$7:	; function end abs

labs:	; if value >= int8$0# goto 4
	cmp qword [rbp + 24], 0
	jge labs$4

labs$1:	; £temporary2754 = -value
	mov rbx, [rbp + 24]
	neg rbx

labs$2:	; £temporary2755 = £temporary2754

labs$3:	; goto 5
	jmp labs$5

labs$4:	; £temporary2755 = value
	mov rbx, [rbp + 24]

labs$5:	; return_value = £temporary2755

labs$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

labs$7:	; function end labs

div:	; result.quot = int4$0#
	mov dword [rbp + 32], 0

div$1:	; result.rem = int4$0#
	mov dword [rbp + 36], 0

div$2:	; if denum != int4$0# goto 6
	cmp dword [rbp + 28], 0
	jne div$6

div$3:	; errno = int4$6#
	mov dword [errno], 6

div$4:	; return_value = result
	mov rbx, rbp
	add rbx, 32

div$5:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

div$6:	; £temporary2760 = num / denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]

div$7:	; result$quot = £temporary2760
	mov [rbp + 32], eax

div$8:	; £temporary2762 = num % denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]

div$9:	; result$rem = £temporary2762
	mov [rbp + 36], edx

div$10:	; return_value = result
	mov rbx, rbp
	add rbx, 32

div$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

div$12:	; function end div

ldiv:	; result.quot = int8$0#
	mov qword [rbp + 40], 0

ldiv$1:	; result.rem = int8$0#
	mov qword [rbp + 48], 0

ldiv$2:	; if denum != int8$0# goto 6
	cmp qword [rbp + 32], 0
	jne ldiv$6

ldiv$3:	; errno = int4$6#
	mov dword [errno], 6

ldiv$4:	; return_value = result
	mov rbx, rbp
	add rbx, 40

ldiv$5:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

ldiv$6:	; £temporary2769 = num / denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]

ldiv$7:	; result$quot = £temporary2769
	mov [rbp + 40], rax

ldiv$8:	; £temporary2771 = num % denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]

ldiv$9:	; result$rem = £temporary2771
	mov [rbp + 48], rdx

ldiv$10:	; return_value = result
	mov rbx, rbp
	add rbx, 40

ldiv$11:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

ldiv$12:	; function end ldiv
section .data

$IntegralStorage#:
	times 8 db 0

string_25li25n#:
	; initializer String
	db "%li%n", 0

string_25lu25n#:
	; initializer String
	db "%lu%n", 0

string_25lf25n#:
	; initializer String
	db "%lf%n", 0

int4$2#:
	; initializer Signed_Int
	dd 2

@3822$g_randValue:
	times 8 db 0

int8$1664525#:
	; initializer Signed_Long_Int
	dq 1664525

int8$127#:
	; initializer Signed_Long_Int
	dq 127

string_stack20top2025u2C20heap20top2025u2C20heap20bottom2025u0A#:
	; initializer String
	db "stack top %u, heap top %u, heap bottom %u", 10, 0

string_2020index2025u2C20address2025u2C20size2025u0A#:
	; initializer String
	db "  index %u, address %u, size %u", 10, 0

string_0A#:
	; initializer String
	db 10, 0

g_funcArray:
	dq 0
	times 2040 db 0

string_Added20function20index2025i3A2025i0A#:
	; initializer String
	db "Added function index %i: %i", 10, 0

Array_#:
	; initializer Array
	dq 8

string_Called20function20index2025i3A2025i0A#:
	; initializer String
	db "Called function index %i: %i", 10, 0
