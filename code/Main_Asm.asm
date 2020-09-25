	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 127 33
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 127 33 0 0
	; Initialize Argument List
x283:	mov si, bp	; 2: -119 -18
x285:	mov word [bp], $Path	; 5: -57 70 0 113 33
x290:	add bp, 2	; 3: -125 -59 2
x293:	mov ax, 1	; 3: -72 1 0
x296:	mov bx, 129	; 3: -69 -127 0
x299:	cmp byte [bx], 13	; 3: -128 63 13
x302:	je $ListDone	; 2: 116 34

$SpaceLoop:
x304:	cmp byte [bx], 32	; 3: -128 63 32
x307:	jne $WordStart	; 2: 117 3
x309:	inc bx	; 1: 67
x310:	jmp $SpaceLoop	; 2: -21 -8

$WordStart:
x312:	inc ax	; 1: 64
x313:	mov [bp], bx	; 3: -119 94 0
x316:	add bp, 2	; 3: -125 -59 2

$WordLoop:
x319:	cmp byte [bx], 32	; 3: -128 63 32
x322:	je $WordDone	; 2: 116 8
x324:	cmp byte [bx], 13	; 3: -128 63 13
x327:	je $ListDone	; 2: 116 9
x329:	inc bx	; 1: 67
x330:	jmp $WordLoop	; 2: -21 -13

$WordDone:
x332:	mov byte [bx], 0	; 3: -58 7 0
x335:	inc bx	; 1: 67
x336:	jmp $SpaceLoop	; 2: -21 -34

$ListDone:
x338:	mov byte [bx], 0	; 3: -58 7 0
x341:	mov word [bp], 0	; 5: -57 70 0 0 0
x346:	add bp, 2	; 3: -125 -59 2
x349:	mov word [bp], 0	; 5: -57 70 0 0 0
x354:	mov [bp + 6], ax	; 3: -119 70 6
x357:	mov [bp + 8], si	; 3: -119 118 8

main:	; index = 129
x360:	mov word [bp + 10], 129	; 5: -57 70 10 -127 0

main$1:	; if index >= 255 goto 16
x365:	cmp word [bp + 10], 255	; 5: -127 126 10 -1 0
x370:	jge main$16	; 2: 125 77

main$2:	; £temporary63 = int_to_int index (Signed_Int -> Pointer)
x372:	mov si, [bp + 10]	; 3: -117 118 10

main$3:	; £temporary64 -> £temporary63 = *£temporary63

main$4:	; c = £temporary64 -> £temporary63
x375:	mov al, [si]	; 2: -118 4
x377:	mov [bp + 12], al	; 3: -120 70 12

main$5:	; call header integral zero 0 stack zero 0

main$6:	; parameter string_25i3A2025i203C25c3E0A#, offset 6
x380:	mov word [bp + 19], string_25i3A2025i203C25c3E0A#	; 5: -57 70 19 -100 2

main$7:	; parameter index, offset 8
x385:	mov ax, [bp + 10]	; 3: -117 70 10
x388:	mov [bp + 21], ax	; 3: -119 70 21

main$8:	; £temporary65 = int_to_int c (Signed_Char -> Signed_Int)
x391:	mov al, [bp + 12]	; 3: -118 70 12
x394:	and ax, 255	; 3: 37 -1 0
x397:	cmp al, 0	; 2: 60 0
x399:	jge main$9	; 2: 125 4
x401:	neg al	; 2: -10 -40
x403:	neg ax	; 2: -9 -40

main$9:	; parameter £temporary65, offset 10
x405:	mov [bp + 23], ax	; 3: -119 70 23

main$10:	; £temporary66 = int_to_int c (Signed_Char -> Signed_Int)
x408:	mov al, [bp + 12]	; 3: -118 70 12
x411:	and ax, 255	; 3: 37 -1 0
x414:	cmp al, 0	; 2: 60 0
x416:	jge main$11	; 2: 125 4
x418:	neg al	; 2: -10 -40
x420:	neg ax	; 2: -9 -40

main$11:	; parameter £temporary66, offset 12
x422:	mov [bp + 25], ax	; 3: -119 70 25

main$12:	; call function noellipse-ellipse printf, extra 0
x425:	mov word [bp + 13], main$13	; 5: -57 70 13 -68 1
x430:	mov [bp + 15], bp	; 3: -119 110 15
x433:	add bp, 13	; 3: -125 -59 13
x436:	mov di, bp	; 2: -119 -17
x438:	add di, 6	; 3: -125 -57 6
x441:	jmp printf	; 3: -23 6 1

main$13:	; post call

main$14:	; ++index
x444:	inc word [bp + 10]	; 3: -1 70 10

main$15:	; goto 1
x447:	jmp main$1	; 2: -21 -84

main$16:	; call header integral zero 0 stack zero 0

main$17:	; parameter string_0Aargc3A2025i0A#, offset 6
x449:	mov word [bp + 18], string_0Aargc3A2025i0A#	; 5: -57 70 18 -87 2

main$18:	; parameter argc, offset 8
x454:	mov ax, [bp + 6]	; 3: -117 70 6
x457:	mov [bp + 20], ax	; 3: -119 70 20

main$19:	; call function noellipse-ellipse printf, extra 0
x460:	mov word [bp + 12], main$20	; 5: -57 70 12 -33 1
x465:	mov [bp + 14], bp	; 3: -119 110 14
x468:	add bp, 12	; 3: -125 -59 12
x471:	mov di, bp	; 2: -119 -17
x473:	add di, 2	; 3: -125 -57 2
x476:	jmp printf	; 3: -23 -29 0

main$20:	; post call

main$21:	; index = 0
x479:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$22:	; if index >= argc goto 34
x484:	mov ax, [bp + 6]	; 3: -117 70 6
x487:	cmp [bp + 10], ax	; 3: 57 70 10
x490:	jge main$34	; 2: 125 54

main$23:	; call header integral zero 0 stack zero 0

main$24:	; parameter string_25i3A203C25s3E0A#, offset 6
x492:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 -76 2

main$25:	; parameter index, offset 8
x497:	mov ax, [bp + 10]	; 3: -117 70 10
x500:	mov [bp + 20], ax	; 3: -119 70 20

main$26:	; £temporary72 = index * 2
x503:	mov ax, [bp + 10]	; 3: -117 70 10
x506:	xor dx, dx	; 2: 49 -46
x508:	mul word [int2$2#]	; 4: -9 38 -66 2

main$27:	; £temporary73 = argv + £temporary72
x512:	mov si, [bp + 8]	; 3: -117 118 8
x515:	add si, ax	; 2: 1 -58

main$28:	; £temporary71 -> £temporary73 = *£temporary73

main$29:	; parameter £temporary71 -> £temporary73, offset 10
x517:	mov ax, [si]	; 2: -117 4
x519:	mov [bp + 22], ax	; 3: -119 70 22

main$30:	; call function noellipse-ellipse printf, extra 0
x522:	mov word [bp + 12], main$31	; 5: -57 70 12 29 2
x527:	mov [bp + 14], bp	; 3: -119 110 14
x530:	add bp, 12	; 3: -125 -59 12
x533:	mov di, bp	; 2: -119 -17
x535:	add di, 4	; 3: -125 -57 4
x538:	jmp printf	; 3: -23 -91 0

main$31:	; post call

main$32:	; ++index
x541:	inc word [bp + 10]	; 3: -1 70 10

main$33:	; goto 22
x544:	jmp main$22	; 2: -21 -62

main$34:	; call header integral zero 0 stack zero 0

main$35:	; parameter string_0A#, offset 6
x546:	mov word [bp + 18], string_0A#	; 5: -57 70 18 -64 2

main$36:	; call function noellipse-ellipse printf, extra 0
x551:	mov word [bp + 12], main$37	; 5: -57 70 12 55 2
x556:	mov [bp + 14], bp	; 3: -119 110 14
x559:	add bp, 12	; 3: -125 -59 12
x562:	mov di, bp	; 2: -119 -17
x564:	jmp printf	; 3: -23 -117 0

main$37:	; post call

main$38:	; index = 0
x567:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$39:	; £temporary77 = index * 2
x572:	mov ax, [bp + 10]	; 3: -117 70 10
x575:	xor dx, dx	; 2: 49 -46
x577:	mul word [int2$2#]	; 4: -9 38 -66 2

main$40:	; £temporary78 = argv + £temporary77
x581:	mov si, [bp + 8]	; 3: -117 118 8
x584:	add si, ax	; 2: 1 -58

main$41:	; £temporary76 -> £temporary78 = *£temporary78

main$42:	; if £temporary76 -> £temporary78 == 0 goto 54
x586:	cmp word [si], 0	; 3: -125 60 0
x589:	je main$54	; 2: 116 54

main$43:	; call header integral zero 0 stack zero 0

main$44:	; parameter string_25i3A203C25s3E0A#, offset 6
x591:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 -76 2

main$45:	; parameter index, offset 8
x596:	mov ax, [bp + 10]	; 3: -117 70 10
x599:	mov [bp + 20], ax	; 3: -119 70 20

main$46:	; £temporary82 = index * 2
x602:	mov ax, [bp + 10]	; 3: -117 70 10
x605:	xor dx, dx	; 2: 49 -46
x607:	mul word [int2$2#]	; 4: -9 38 -66 2

main$47:	; £temporary83 = argv + £temporary82
x611:	mov si, [bp + 8]	; 3: -117 118 8
x614:	add si, ax	; 2: 1 -58

main$48:	; £temporary81 -> £temporary83 = *£temporary83

main$49:	; parameter £temporary81 -> £temporary83, offset 10
x616:	mov ax, [si]	; 2: -117 4
x618:	mov [bp + 22], ax	; 3: -119 70 22

main$50:	; call function noellipse-ellipse printf, extra 0
x621:	mov word [bp + 12], main$51	; 5: -57 70 12 -128 2
x626:	mov [bp + 14], bp	; 3: -119 110 14
x629:	add bp, 12	; 3: -125 -59 12
x632:	mov di, bp	; 2: -119 -17
x634:	add di, 4	; 3: -125 -57 4
x637:	nop	; 1: -112
x638:	jmp printf	; 2: -21 66

main$51:	; post call

main$52:	; ++index
x640:	inc word [bp + 10]	; 3: -1 70 10

main$53:	; goto 39
x643:	jmp main$39	; 2: -21 -73

main$54:	; return
x645:	cmp word [bp], 0	; 4: -125 126 0 0
x649:	je return_label$0	; 2: 116 11
x651:	mov ax, [bp]	; 3: -117 70 0
x654:	mov di, [bp + 4]	; 3: -117 126 4
x657:	mov bp, [bp + 2]	; 3: -117 110 2
x660:	jmp ax	; 2: -1 -32

return_label$0:
x662:	mov al, 0	; 2: -80 0
x664:	mov ah, 76	; 2: -76 76
x666:	int 33	; 2: -51 33

main$55:	; function end main

string_25i3A2025i203C25c3E0A#:
x668:	db "%i: %i <%c>", 10, 0	; 13: 37 105 58 32 37 105 32 60 37 99 62 10 0

string_0Aargc3A2025i0A#:
x681:	db 10, "argc: %i", 10, 0	; 11: 10 97 114 103 99 58 32 37 105 10 0

string_25i3A203C25s3E0A#:
x692:	db "%i: <%s>", 10, 0	; 10: 37 105 58 32 60 37 115 62 10 0

int2$2#:
x702:	dw 2	; 2: 2 0

string_0A#:
x704:	db 10, 0	; 2: 10 0

printf:	; £temporary2474 = &format
x706:	mov si, bp	; 2: -119 -18
x708:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2475 = int_to_int £temporary2474 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2475 + 2
x711:	add si, 2	; 3: -125 -58 2
x714:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x717:	mov ax, [bp + 6]	; 3: -117 70 6
x720:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x723:	mov ax, [di + 8]	; 3: -117 69 8
x726:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x729:	mov word [di + 10], printf$7	; 5: -57 69 10 -20 2
x734:	mov [di + 12], bp	; 3: -119 109 12
x737:	mov [di + 14], di	; 3: -119 125 14
x740:	add di, 10	; 3: -125 -57 10
x743:	mov bp, di	; 2: -119 -3
x745:	nop	; 1: -112
x746:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2477 = return_value

printf$9:	; return_value = £temporary2477

printf$10:	; return
x748:	mov ax, [bp]	; 3: -117 70 0
x751:	mov di, [bp + 4]	; 3: -117 126 4
x754:	mov bp, [bp + 2]	; 3: -117 110 2
x757:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x759:	mov ax, [stdout]	; 3: -95 34 3
x762:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x765:	mov ax, [bp + 6]	; 3: -117 70 6
x768:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x771:	mov ax, [bp + 8]	; 3: -117 70 8
x774:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x777:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 23 3
x782:	mov [bp + 12], bp	; 3: -119 110 12
x785:	add bp, 10	; 3: -125 -59 10
x788:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2481 = return_value

vprintf$7:	; return_value = £temporary2481

vprintf$8:	; return
x791:	mov ax, [bp]	; 3: -117 70 0
x794:	mov di, [bp + 4]	; 3: -117 126 4
x797:	mov bp, [bp + 2]	; 3: -117 110 2
x800:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x802:	dw g_fileArray + 29	; 2: 65 3

g_fileArray:
x804:	dw 1	; 2: 1 0
x806:	dw 0	; 2: 0 0
x808:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x833:	dw 1	; 2: 1 0
x835:	dw 1	; 2: 1 0
x837:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x862:	dw 1	; 2: 1 0
x864:	dw 2	; 2: 2 0
x866:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x891:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x1384:	mov word [g_outStatus], 0	; 6: -57 6 -103 5 0 0

vfprintf$1:	; £temporary2493 = int_to_int outStream (Pointer -> Pointer)
x1390:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2493
x1393:	mov [g_outDevice], ax	; 3: -93 -101 5

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x1396:	mov ax, [bp + 8]	; 3: -117 70 8
x1399:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x1402:	mov ax, [bp + 10]	; 3: -117 70 10
x1405:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x1408:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 -114 5
x1413:	mov [bp + 14], bp	; 3: -119 110 14
x1416:	add bp, 12	; 3: -125 -59 12
x1419:	nop	; 1: -112
x1420:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2494 = return_value

vfprintf$9:	; return_value = £temporary2494

vfprintf$10:	; return
x1422:	mov ax, [bp]	; 3: -117 70 0
x1425:	mov di, [bp + 4]	; 3: -117 126 4
x1428:	mov bp, [bp + 2]	; 3: -117 110 2
x1431:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x1433:	db 0, 0	; 2: 0 0

g_outDevice:
x1435:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x1437:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x1442:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x1447:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x1452:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x1457:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x1462:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x1467:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x1472:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x1477:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x1482:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x1487:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x1492:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x1497:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x1502:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x1507:	mov word [g_outChars], 0	; 6: -57 6 -19 10 0 0

printFormat$15:	; index = 0
x1513:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2328 = format + index
x1518:	mov si, [bp + 6]	; 3: -117 118 6
x1521:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2327 -> £temporary2328 = *£temporary2328

printFormat$18:	; if £temporary2327 -> £temporary2328 == 0 goto 282
x1524:	cmp byte [si], 0	; 3: -128 60 0
x1527:	je printFormat$282	; 4: 15 -124 -52 4

printFormat$19:	; £temporary2332 = format + index
x1531:	mov si, [bp + 6]	; 3: -117 118 6
x1534:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2331 -> £temporary2332 = *£temporary2332

printFormat$21:	; c = £temporary2331 -> £temporary2332
x1537:	mov al, [si]	; 2: -118 4
x1539:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 260
x1542:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x1546:	je printFormat$260	; 4: 15 -124 81 4

printFormat$23:	; case c == 43 goto 52
x1550:	mov al, [bp + 40]	; 3: -118 70 40
x1553:	cmp al, 43	; 2: 60 43
x1555:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x1559:	cmp al, 45	; 2: 60 45
x1561:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x1565:	cmp al, 32	; 2: 60 32
x1567:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x1571:	cmp al, 48	; 2: 60 48
x1573:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x1577:	cmp al, 35	; 2: 60 35
x1579:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x1583:	cmp al, 46	; 2: 60 46
x1585:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x1589:	cmp al, 42	; 2: 60 42
x1591:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x1595:	cmp al, 104	; 2: 60 104
x1597:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x1601:	cmp al, 108	; 2: 60 108
x1603:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x1607:	cmp al, 76	; 2: 60 76
x1609:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x1613:	cmp al, 37	; 2: 60 37
x1615:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x1619:	cmp al, 110	; 2: 60 110
x1621:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x1625:	cmp al, 112	; 2: 60 112
x1627:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x1631:	cmp al, 71	; 2: 60 71
x1633:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x1637:	cmp al, 103	; 2: 60 103
x1639:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x1643:	cmp al, 69	; 2: 60 69
x1645:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x1649:	cmp al, 101	; 2: 60 101
x1651:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x1655:	cmp al, 102	; 2: 60 102
x1657:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x1661:	cmp al, 115	; 2: 60 115
x1663:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x1667:	cmp al, 99	; 2: 60 99
x1669:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x1671:	cmp al, 88	; 2: 60 88
x1673:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x1675:	cmp al, 120	; 2: 60 120
x1677:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x1679:	cmp al, 111	; 2: 60 111
x1681:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x1683:	cmp al, 98	; 2: 60 98
x1685:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x1687:	cmp al, 117	; 2: 60 117
x1689:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x1691:	cmp al, 100	; 2: 60 100
x1693:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x1695:	cmp al, 105	; 2: 60 105
x1697:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 237
x1699:	jmp printFormat$237	; 3: -23 70 3

printFormat$52:	; plus = 1
x1702:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 280
x1707:	jmp printFormat$280	; 3: -23 19 4

printFormat$54:	; minus = 1
x1710:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 280
x1715:	jmp printFormat$280	; 3: -23 11 4

printFormat$56:	; space = 1
x1718:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 280
x1723:	jmp printFormat$280	; 3: -23 3 4

printFormat$58:	; zero = 1
x1726:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 280
x1731:	jmp printFormat$280	; 3: -23 -5 3

printFormat$60:	; grid = 1
x1734:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 280
x1739:	jmp printFormat$280	; 3: -23 -13 3

printFormat$62:	; period = 1
x1742:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 280
x1747:	jmp printFormat$280	; 3: -23 -21 3

printFormat$64:	; if period != 0 goto 67
x1750:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x1754:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x1756:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 280
x1761:	jmp printFormat$280	; 3: -23 -35 3

printFormat$67:	; precision = -1
x1764:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 280
x1769:	jmp printFormat$280	; 3: -23 -43 3

printFormat$69:	; shortInt = 1
x1772:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 280
x1777:	jmp printFormat$280	; 3: -23 -51 3

printFormat$71:	; longInt = 1
x1780:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 280
x1785:	jmp printFormat$280	; 3: -23 -59 3

printFormat$73:	; longDouble = 1
x1788:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 280
x1793:	jmp printFormat$280	; 3: -23 -67 3

printFormat$75:	; if minus == 0 goto 106
x1796:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x1800:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x1804:	mov ax, [g_outChars]	; 3: -95 -19 10
x1807:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2336 = format + index
x1810:	mov si, [bp + 6]	; 3: -117 118 6
x1813:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2335 -> £temporary2336 = *£temporary2336

printFormat$80:	; £temporary2337 = &£temporary2335 -> £temporary2336

printFormat$81:	; parameter £temporary2337, offset 6
x1816:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x1819:	mov ax, [bp + 8]	; 3: -117 70 8
x1822:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x1825:	mov ax, [bp + 18]	; 3: -117 70 18
x1828:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x1831:	mov ax, [bp + 22]	; 3: -117 70 22
x1834:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x1837:	mov ax, [bp + 26]	; 3: -117 70 26
x1840:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2338 = &width
x1843:	mov si, bp	; 2: -119 -18
x1845:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2338, offset 16
x1848:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x1851:	mov ax, [bp + 14]	; 3: -117 70 14
x1854:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x1857:	mov ax, [bp + 34]	; 3: -117 70 34
x1860:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x1863:	mov ax, [bp + 36]	; 3: -117 70 36
x1866:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x1869:	mov ax, [bp + 38]	; 3: -117 70 38
x1872:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x1875:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x1880:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x1885:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 107 7
x1890:	mov [bp + 45], bp	; 3: -119 110 45
x1893:	add bp, 43	; 3: -125 -59 43
x1896:	jmp printArgument	; 3: -23 -122 3

printFormat$95:	; post call

printFormat$96:	; £temporary2339 = return_value

printFormat$97:	; arg_list = £temporary2339
x1899:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2341 = g_outChars - startChars
x1902:	mov ax, [g_outChars]	; 3: -95 -19 10
x1905:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x1908:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2341 >= width goto 235
x1911:	cmp ax, [bp + 12]	; 3: 59 70 12
x1914:	jge printFormat$235	; 4: 15 -115 102 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x1918:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x1922:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 -112 7
x1927:	mov [bp + 47], bp	; 3: -119 110 47
x1930:	add bp, 45	; 3: -125 -59 45
x1933:	jmp printChar	; 3: -23 116 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x1936:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 182
x1938:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x1942:	je printFormat$182	; 4: 15 -124 82 1

printFormat$107:	; startChars = g_outChars
x1946:	mov ax, [g_outChars]	; 3: -95 -19 10
x1949:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x1952:	mov ax, [g_outStatus]	; 3: -95 -103 5
x1955:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x1958:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x1963:	mov word [g_outStatus], 2	; 6: -57 6 -103 5 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2345 = format + index
x1969:	mov si, [bp + 6]	; 3: -117 118 6
x1972:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2344 -> £temporary2345 = *£temporary2345

printFormat$114:	; £temporary2346 = &£temporary2344 -> £temporary2345

printFormat$115:	; parameter £temporary2346, offset 6
x1975:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x1978:	mov ax, [bp + 8]	; 3: -117 70 8
x1981:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x1984:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x1989:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x1994:	mov ax, [bp + 26]	; 3: -117 70 26
x1997:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2347 = &width
x2000:	mov si, bp	; 2: -119 -18
x2002:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2347, offset 16
x2005:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x2008:	mov ax, [bp + 14]	; 3: -117 70 14
x2011:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x2014:	mov ax, [bp + 34]	; 3: -117 70 34
x2017:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x2020:	mov ax, [bp + 36]	; 3: -117 70 36
x2023:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x2026:	mov ax, [bp + 38]	; 3: -117 70 38
x2029:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x2032:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2348 = &negative
x2037:	mov si, bp	; 2: -119 -18
x2039:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2348, offset 28
x2042:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x2045:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 11 8
x2050:	mov [bp + 49], bp	; 3: -119 110 49
x2053:	add bp, 47	; 3: -125 -59 47
x2056:	jmp printArgument	; 3: -23 -26 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x2059:	mov ax, [bp + 43]	; 3: -117 70 43
x2062:	mov [g_outStatus], ax	; 3: -93 -103 5

printFormat$132:	; field = g_outChars - startChars
x2065:	mov ax, [g_outChars]	; 3: -95 -19 10
x2068:	sub ax, [bp + 41]	; 3: 43 70 41
x2071:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x2074:	mov ax, [bp + 41]	; 3: -117 70 41
x2077:	mov [g_outChars], ax	; 3: -93 -19 10

printFormat$134:	; if negative == 0 goto 141
x2080:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x2084:	je printFormat$141	; 2: 116 23

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 45, offset 6
x2086:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$137:	; call function noellipse-noellipse printChar
x2090:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 56 8
x2095:	mov [bp + 51], bp	; 3: -119 110 51
x2098:	add bp, 49	; 3: -125 -59 49
x2101:	jmp printChar	; 3: -23 -52 9

printFormat$138:	; post call

printFormat$139:	; ++field
x2104:	inc word [bp + 47]	; 3: -1 70 47

printFormat$140:	; goto 154
x2107:	jmp printFormat$154	; 2: -21 57

printFormat$141:	; if plus == 0 goto 148
x2109:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x2113:	je printFormat$148	; 2: 116 23

printFormat$142:	; call header integral zero 0 stack zero 0

printFormat$143:	; parameter 43, offset 6
x2115:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$144:	; call function noellipse-noellipse printChar
x2119:	mov word [bp + 49], printFormat$145	; 5: -57 70 49 85 8
x2124:	mov [bp + 51], bp	; 3: -119 110 51
x2127:	add bp, 49	; 3: -125 -59 49
x2130:	jmp printChar	; 3: -23 -81 9

printFormat$145:	; post call

printFormat$146:	; ++field
x2133:	inc word [bp + 47]	; 3: -1 70 47

printFormat$147:	; goto 154
x2136:	jmp printFormat$154	; 2: -21 28

printFormat$148:	; if space == 0 goto 154
x2138:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x2142:	je printFormat$154	; 2: 116 22

printFormat$149:	; call header integral zero 0 stack zero 0

printFormat$150:	; parameter 32, offset 6
x2144:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$151:	; call function noellipse-noellipse printChar
x2148:	mov word [bp + 49], printFormat$152	; 5: -57 70 49 114 8
x2153:	mov [bp + 51], bp	; 3: -119 110 51
x2156:	add bp, 49	; 3: -125 -59 49
x2159:	jmp printChar	; 3: -23 -110 9

printFormat$152:	; post call

printFormat$153:	; £temporary2360 = field + 1
x2162:	mov ax, [bp + 47]	; 3: -117 70 47
x2165:	inc ax	; 1: 64

printFormat$154:	; ++field
x2166:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; if £temporary2360 >= width goto 161
x2169:	cmp ax, [bp + 12]	; 3: 59 70 12
x2172:	jge printFormat$161	; 2: 125 20

printFormat$156:	; call header integral zero 0 stack zero 0

printFormat$157:	; parameter 48, offset 6
x2174:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$158:	; call function noellipse-noellipse printChar
x2178:	mov word [bp + 49], printFormat$159	; 5: -57 70 49 -112 8
x2183:	mov [bp + 51], bp	; 3: -119 110 51
x2186:	add bp, 49	; 3: -125 -59 49
x2189:	jmp printChar	; 3: -23 116 9

printFormat$159:	; post call

printFormat$160:	; goto 154
x2192:	jmp printFormat$154	; 2: -21 -28

printFormat$161:	; call header integral zero 0 stack zero 0

printFormat$162:	; £temporary2364 = format + index
x2194:	mov si, [bp + 6]	; 3: -117 118 6
x2197:	add si, [bp + 10]	; 3: 3 118 10

printFormat$163:	; £temporary2363 -> £temporary2364 = *£temporary2364

printFormat$164:	; £temporary2365 = &£temporary2363 -> £temporary2364

printFormat$165:	; parameter £temporary2365, offset 6
x2200:	mov [bp + 55], si	; 3: -119 118 55

printFormat$166:	; parameter arg_list, offset 8
x2203:	mov ax, [bp + 8]	; 3: -117 70 8
x2206:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$167:	; parameter 0, offset 10
x2209:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$168:	; parameter 0, offset 12
x2214:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$169:	; parameter grid, offset 14
x2219:	mov ax, [bp + 26]	; 3: -117 70 26
x2222:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$170:	; parameter 0, offset 16
x2225:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$171:	; parameter precision, offset 18
x2230:	mov ax, [bp + 14]	; 3: -117 70 14
x2233:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$172:	; parameter shortInt, offset 20
x2236:	mov ax, [bp + 34]	; 3: -117 70 34
x2239:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$173:	; parameter longInt, offset 22
x2242:	mov ax, [bp + 36]	; 3: -117 70 36
x2245:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$174:	; parameter longDouble, offset 24
x2248:	mov ax, [bp + 38]	; 3: -117 70 38
x2251:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$175:	; parameter 0, offset 26
x2254:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$176:	; parameter 0, offset 28
x2259:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$177:	; call function noellipse-noellipse printArgument
x2264:	mov word [bp + 49], printFormat$178	; 5: -57 70 49 -26 8
x2269:	mov [bp + 51], bp	; 3: -119 110 51
x2272:	add bp, 49	; 3: -125 -59 49
x2275:	jmp printArgument	; 3: -23 11 2

printFormat$178:	; post call

printFormat$179:	; £temporary2366 = return_value

printFormat$180:	; arg_list = £temporary2366
x2278:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$181:	; goto 235
x2281:	jmp printFormat$235	; 3: -23 -8 0

printFormat$182:	; startChars = g_outChars
x2284:	mov ax, [g_outChars]	; 3: -95 -19 10
x2287:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$183:	; oldOutStatus = g_outStatus
x2290:	mov ax, [g_outStatus]	; 3: -95 -103 5
x2293:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$184:	; g_outStatus = 2
x2296:	mov word [g_outStatus], 2	; 6: -57 6 -103 5 2 0

printFormat$185:	; call header integral zero 0 stack zero 0

printFormat$186:	; £temporary2368 = format + index
x2302:	mov si, [bp + 6]	; 3: -117 118 6
x2305:	add si, [bp + 10]	; 3: 3 118 10

printFormat$187:	; £temporary2367 -> £temporary2368 = *£temporary2368

printFormat$188:	; £temporary2369 = &£temporary2367 -> £temporary2368

printFormat$189:	; parameter £temporary2369, offset 6
x2308:	mov [bp + 51], si	; 3: -119 118 51

printFormat$190:	; parameter arg_list, offset 8
x2311:	mov ax, [bp + 8]	; 3: -117 70 8
x2314:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$191:	; parameter plus, offset 10
x2317:	mov ax, [bp + 18]	; 3: -117 70 18
x2320:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$192:	; parameter space, offset 12
x2323:	mov ax, [bp + 22]	; 3: -117 70 22
x2326:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$193:	; parameter grid, offset 14
x2329:	mov ax, [bp + 26]	; 3: -117 70 26
x2332:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$194:	; £temporary2370 = &width
x2335:	mov si, bp	; 2: -119 -18
x2337:	add si, 12	; 3: -125 -58 12

printFormat$195:	; parameter £temporary2370, offset 16
x2340:	mov [bp + 61], si	; 3: -119 118 61

printFormat$196:	; parameter precision, offset 18
x2343:	mov ax, [bp + 14]	; 3: -117 70 14
x2346:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$197:	; parameter shortInt, offset 20
x2349:	mov ax, [bp + 34]	; 3: -117 70 34
x2352:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$198:	; parameter longInt, offset 22
x2355:	mov ax, [bp + 36]	; 3: -117 70 36
x2358:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$199:	; parameter longDouble, offset 24
x2361:	mov ax, [bp + 38]	; 3: -117 70 38
x2364:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$200:	; parameter 1, offset 26
x2367:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$201:	; parameter 0, offset 28
x2372:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$202:	; call function noellipse-noellipse printArgument
x2377:	mov word [bp + 45], printFormat$203	; 5: -57 70 45 87 9
x2382:	mov [bp + 47], bp	; 3: -119 110 47
x2385:	add bp, 45	; 3: -125 -59 45
x2388:	jmp printArgument	; 3: -23 -102 1

printFormat$203:	; post call

printFormat$204:	; g_outStatus = oldOutStatus
x2391:	mov ax, [bp + 43]	; 3: -117 70 43
x2394:	mov [g_outStatus], ax	; 3: -93 -103 5

printFormat$205:	; field = g_outChars - startChars
x2397:	mov ax, [g_outChars]	; 3: -95 -19 10
x2400:	sub ax, [bp + 41]	; 3: 43 70 41
x2403:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$206:	; g_outChars = startChars
x2406:	mov ax, [bp + 41]	; 3: -117 70 41
x2409:	mov [g_outChars], ax	; 3: -93 -19 10

printFormat$207:	; £temporary2373 = field
x2412:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$208:	; ++field
x2415:	inc word [bp + 45]	; 3: -1 70 45

printFormat$209:	; if £temporary2373 >= width goto 215
x2418:	cmp ax, [bp + 12]	; 3: 59 70 12
x2421:	jge printFormat$215	; 2: 125 20

printFormat$210:	; call header integral zero 0 stack zero 0

printFormat$211:	; parameter 32, offset 6
x2423:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$212:	; call function noellipse-noellipse printChar
x2427:	mov word [bp + 47], printFormat$213	; 5: -57 70 47 -119 9
x2432:	mov [bp + 49], bp	; 3: -119 110 49
x2435:	add bp, 47	; 3: -125 -59 47
x2438:	jmp printChar	; 3: -23 123 8

printFormat$213:	; post call

printFormat$214:	; goto 207
x2441:	jmp printFormat$207	; 2: -21 -31

printFormat$215:	; call header integral zero 0 stack zero 0

printFormat$216:	; £temporary2377 = format + index
x2443:	mov si, [bp + 6]	; 3: -117 118 6
x2446:	add si, [bp + 10]	; 3: 3 118 10

printFormat$217:	; £temporary2376 -> £temporary2377 = *£temporary2377

printFormat$218:	; £temporary2378 = &£temporary2376 -> £temporary2377

printFormat$219:	; parameter £temporary2378, offset 6
x2449:	mov [bp + 53], si	; 3: -119 118 53

printFormat$220:	; parameter arg_list, offset 8
x2452:	mov ax, [bp + 8]	; 3: -117 70 8
x2455:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$221:	; parameter plus, offset 10
x2458:	mov ax, [bp + 18]	; 3: -117 70 18
x2461:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$222:	; parameter space, offset 12
x2464:	mov ax, [bp + 22]	; 3: -117 70 22
x2467:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$223:	; parameter grid, offset 14
x2470:	mov ax, [bp + 26]	; 3: -117 70 26
x2473:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$224:	; parameter 0, offset 16
x2476:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$225:	; parameter precision, offset 18
x2481:	mov ax, [bp + 14]	; 3: -117 70 14
x2484:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$226:	; parameter shortInt, offset 20
x2487:	mov ax, [bp + 34]	; 3: -117 70 34
x2490:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$227:	; parameter longInt, offset 22
x2493:	mov ax, [bp + 36]	; 3: -117 70 36
x2496:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$228:	; parameter longDouble, offset 24
x2499:	mov ax, [bp + 38]	; 3: -117 70 38
x2502:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$229:	; parameter 1, offset 26
x2505:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$230:	; parameter 0, offset 28
x2510:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$231:	; call function noellipse-noellipse printArgument
x2515:	mov word [bp + 47], printFormat$232	; 5: -57 70 47 -31 9
x2520:	mov [bp + 49], bp	; 3: -119 110 49
x2523:	add bp, 47	; 3: -125 -59 47
x2526:	jmp printArgument	; 3: -23 16 1

printFormat$232:	; post call

printFormat$233:	; £temporary2379 = return_value

printFormat$234:	; arg_list = £temporary2379
x2529:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$235:	; percent = 0
x2532:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$236:	; goto 280
x2537:	jmp printFormat$280	; 3: -23 -43 0

printFormat$237:	; value = 0
x2540:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$238:	; call header integral zero 0 stack zero 0

printFormat$239:	; £temporary2382 = int_to_int c (Signed_Char -> Signed_Int)
x2545:	mov al, [bp + 40]	; 3: -118 70 40
x2548:	and ax, 255	; 3: 37 -1 0
x2551:	cmp al, 0	; 2: 60 0
x2553:	jge printFormat$240	; 2: 125 4
x2555:	neg al	; 2: -10 -40
x2557:	neg ax	; 2: -9 -40

printFormat$240:	; parameter £temporary2382, offset 6
x2559:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$241:	; call function noellipse-noellipse isdigit
x2562:	mov word [bp + 43], printFormat$242	; 5: -57 70 43 16 10
x2567:	mov [bp + 45], bp	; 3: -119 110 45
x2570:	add bp, 43	; 3: -125 -59 43
x2573:	jmp isdigit	; 3: -23 66 23

printFormat$242:	; post call

printFormat$243:	; £temporary2383 = return_value

printFormat$244:	; if £temporary2383 == 0 goto 254
x2576:	cmp bx, 0	; 3: -125 -5 0
x2579:	je printFormat$254	; 2: 116 49

printFormat$245:	; £temporary2384 = value * 10
x2581:	mov ax, [bp + 41]	; 3: -117 70 41
x2584:	xor dx, dx	; 2: 49 -46
x2586:	imul word [int2$10#]	; 4: -9 46 -17 10

printFormat$246:	; £temporary2385 = c - 48
x2590:	mov bl, [bp + 40]	; 3: -118 94 40
x2593:	sub bl, 48	; 3: -128 -21 48

printFormat$247:	; £temporary2386 = int_to_int £temporary2385 (Signed_Char -> Signed_Int)
x2596:	and bx, 255	; 4: -127 -29 -1 0
x2600:	cmp bl, 0	; 3: -128 -5 0
x2603:	jge printFormat$248	; 2: 125 4
x2605:	neg bl	; 2: -10 -37
x2607:	neg bx	; 2: -9 -37

printFormat$248:	; value = £temporary2384 + £temporary2386
x2609:	add ax, bx	; 2: 1 -40
x2611:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$249:	; £temporary2388 = index + 1
x2614:	mov ax, [bp + 10]	; 3: -117 70 10
x2617:	inc ax	; 1: 64

printFormat$250:	; £temporary2390 = format + £temporary2388
x2618:	mov si, [bp + 6]	; 3: -117 118 6
x2621:	add si, ax	; 2: 1 -58

printFormat$251:	; £temporary2389 -> £temporary2390 = *£temporary2390

printFormat$252:	; c = £temporary2389 -> £temporary2390
x2623:	mov al, [si]	; 2: -118 4
x2625:	mov [bp + 40], al	; 3: -120 70 40

printFormat$253:	; goto 238
x2628:	jmp printFormat$238	; 2: -21 -85

printFormat$254:	; --index
x2630:	dec word [bp + 10]	; 3: -1 78 10

printFormat$255:	; if period != 0 goto 258
x2633:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2637:	jne printFormat$258	; 2: 117 8

printFormat$256:	; width = value
x2639:	mov ax, [bp + 41]	; 3: -117 70 41
x2642:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$257:	; goto 280
x2645:	jmp printFormat$280	; 2: -21 106

printFormat$258:	; precision = value
x2647:	mov ax, [bp + 41]	; 3: -117 70 41
x2650:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$259:	; goto 280
x2653:	jmp printFormat$280	; 2: -21 98

printFormat$260:	; if c != 37 goto 276
x2655:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x2659:	jne printFormat$276	; 2: 117 72

printFormat$261:	; percent = 1
x2661:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$262:	; plus = 0
x2666:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$263:	; minus = 0
x2671:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$264:	; space = 0
x2676:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$265:	; zero = 0
x2681:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$266:	; grid = 0
x2686:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$267:	; widthStar = 0
x2691:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$268:	; period = 0
x2696:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$269:	; precisionStar = 0
x2701:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$270:	; shortInt = 0
x2706:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$271:	; longInt = 0
x2711:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$272:	; longDouble = 0
x2716:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$273:	; width = 0
x2721:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$274:	; precision = 0
x2726:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$275:	; goto 280
x2731:	jmp printFormat$280	; 2: -21 20

printFormat$276:	; call header integral zero 0 stack zero 0

printFormat$277:	; parameter c, offset 6
x2733:	mov al, [bp + 40]	; 3: -118 70 40
x2736:	mov [bp + 47], al	; 3: -120 70 47

printFormat$278:	; call function noellipse-noellipse printChar
x2739:	mov word [bp + 41], printFormat$279	; 5: -57 70 41 -63 10
x2744:	mov [bp + 43], bp	; 3: -119 110 43
x2747:	add bp, 41	; 3: -125 -59 41
x2750:	jmp printChar	; 3: -23 67 7

printFormat$279:	; post call

printFormat$280:	; ++index
x2753:	inc word [bp + 10]	; 3: -1 70 10

printFormat$281:	; goto 16
x2756:	jmp printFormat$16	; 3: -23 39 -5

printFormat$282:	; if g_outStatus != 1 goto 288
x2759:	cmp word [g_outStatus], 1	; 5: -125 62 -103 5 1
x2764:	jne printFormat$288	; 2: 117 16

printFormat$283:	; £temporary2399 = int_to_int g_outDevice (Pointer -> Pointer)
x2766:	mov ax, [g_outDevice]	; 3: -95 -101 5

printFormat$284:	; outString = £temporary2399
x2769:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$285:	; £temporary2401 = outString + g_outChars
x2772:	mov si, [bp + 40]	; 3: -117 118 40
x2775:	add si, [g_outChars]	; 4: 3 54 -19 10

printFormat$286:	; £temporary2400 -> £temporary2401 = *£temporary2401

printFormat$287:	; £temporary2400 -> £temporary2401 = 0
x2779:	mov byte [si], 0	; 3: -58 4 0

printFormat$288:	; return_value = g_outChars
x2782:	mov bx, [g_outChars]	; 4: -117 30 -19 10

printFormat$289:	; return
x2786:	mov ax, [bp]	; 3: -117 70 0
x2789:	mov di, [bp + 4]	; 3: -117 126 4
x2792:	mov bp, [bp + 2]	; 3: -117 110 2
x2795:	jmp ax	; 2: -1 -32

printFormat$290:	; function end printFormat

g_outChars:
x2797:	db 0, 0	; 2: 0 0

int2$10#:
x2799:	dw 10	; 2: 10 0

printArgument:	; £temporary2101 -> format = *format
x2801:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2101 -> format
x2804:	mov al, [si]	; 2: -118 4
x2806:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x2809:	mov al, [bp + 30]	; 3: -118 70 30
x2812:	cmp al, 100	; 2: 60 100
x2814:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x2816:	cmp al, 105	; 2: 60 105
x2818:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x2820:	cmp al, 99	; 2: 60 99
x2822:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x2826:	cmp al, 115	; 2: 60 115
x2828:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x2832:	cmp al, 88	; 2: 60 88
x2834:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x2838:	cmp al, 120	; 2: 60 120
x2840:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x2844:	cmp al, 98	; 2: 60 98
x2846:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x2850:	cmp al, 111	; 2: 60 111
x2852:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x2856:	cmp al, 117	; 2: 60 117
x2858:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x2862:	cmp al, 71	; 2: 60 71
x2864:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x2868:	cmp al, 103	; 2: 60 103
x2870:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x2874:	cmp al, 69	; 2: 60 69
x2876:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x2880:	cmp al, 101	; 2: 60 101
x2882:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x2886:	cmp al, 102	; 2: 60 102
x2888:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x2892:	cmp al, 112	; 2: 60 112
x2894:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x2898:	cmp al, 110	; 2: 60 110
x2900:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x2904:	cmp al, 37	; 2: 60 37
x2906:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x2910:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x2913:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x2917:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x2919:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2103 = arg_list - 2
x2923:	mov si, [bp + 8]	; 3: -117 118 8
x2926:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2104 = int_to_int £temporary2103 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2105 -> £temporary2104 = *£temporary2104

printArgument$26:	; £temporary2106 = int_to_int £temporary2105 -> £temporary2104 (Signed_Int -> Signed_Short_Int)
x2929:	mov ax, [si]	; 2: -117 4
x2931:	cmp ax, 0	; 3: -125 -8 0
x2934:	jge printArgument$27	; 2: 125 4
x2936:	neg ax	; 2: -9 -40
x2938:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2107 = int_to_int £temporary2106 (Signed_Short_Int -> Signed_Long_Int)
x2940:	and eax, 255	; 6: 102 37 -1 0 0 0
x2946:	cmp al, 0	; 2: 60 0
x2948:	jge printArgument$28	; 2: 125 5
x2950:	neg al	; 2: -10 -40
x2952:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2107
x2955:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x2959:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x2961:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x2965:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x2967:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2109 = arg_list - 4
x2971:	mov si, [bp + 8]	; 3: -117 118 8
x2974:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2110 = int_to_int £temporary2109 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2111 -> £temporary2110 = *£temporary2110

printArgument$35:	; longValue = £temporary2111 -> £temporary2110
x2977:	mov eax, [si]	; 3: 102 -117 4
x2980:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x2984:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x2986:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2113 = arg_list - 2
x2990:	mov si, [bp + 8]	; 3: -117 118 8
x2993:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2114 = int_to_int £temporary2113 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2115 -> £temporary2114 = *£temporary2114

printArgument$41:	; £temporary2116 = int_to_int £temporary2115 -> £temporary2114 (Signed_Int -> Signed_Long_Int)
x2996:	mov ax, [si]	; 2: -117 4
x2998:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3004:	cmp ax, 0	; 3: -125 -8 0
x3007:	jge printArgument$42	; 2: 125 5
x3009:	neg ax	; 2: -9 -40
x3011:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2116
x3014:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x3018:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3022:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2120 -> negativePtr = *negativePtr
x3024:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x3027:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x3032:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2122 = 1
x3034:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x3037:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2122 = 0
x3039:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2120 -> negativePtr = £temporary2122
x3042:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x3044:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3048:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x3050:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3054:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x3058:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 0 12
x3063:	mov [bp + 50], bp	; 3: -119 110 50
x3066:	add bp, 48	; 3: -125 -59 48
x3069:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2125 = return_value

printArgument$56:	; longValue = £temporary2125
x3072:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x3076:	mov ax, [bp + 8]	; 3: -117 70 8
x3079:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x3082:	mov ax, [bp + 16]	; 3: -117 70 16
x3085:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2126 = &precision
x3088:	mov si, bp	; 2: -119 -18
x3090:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2126, offset 10
x3093:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x3096:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 38 12
x3101:	mov [bp + 50], bp	; 3: -119 110 50
x3104:	add bp, 48	; 3: -125 -59 48
x3107:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2127 = return_value

printArgument$65:	; arg_list = £temporary2127
x3110:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x3113:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3117:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x3121:	mov ax, [bp + 10]	; 3: -117 70 10
x3124:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x3127:	mov ax, [bp + 12]	; 3: -117 70 12
x3130:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x3133:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 75 12
x3138:	mov [bp + 50], bp	; 3: -119 110 50
x3141:	add bp, 48	; 3: -125 -59 48
x3144:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x3147:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x3150:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2130 = arg_list - 2
x3154:	mov si, [bp + 8]	; 3: -117 118 8
x3157:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2131 = int_to_int £temporary2130 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2132 -> £temporary2131 = *£temporary2131

printArgument$77:	; £temporary2133 = int_to_int £temporary2132 -> £temporary2131 (Signed_Int -> Signed_Char)
x3160:	mov ax, [si]	; 2: -117 4
x3162:	cmp ax, 0	; 3: -125 -8 0
x3165:	jge printArgument$78	; 2: 125 4
x3167:	neg ax	; 2: -9 -40
x3169:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2133
x3171:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x3174:	mov ax, [bp + 8]	; 3: -117 70 8
x3177:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x3180:	mov ax, [bp + 16]	; 3: -117 70 16
x3183:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2134 = &precision
x3186:	mov si, bp	; 2: -119 -18
x3188:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2134, offset 10
x3191:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x3194:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -120 12
x3199:	mov [bp + 46], bp	; 3: -119 110 46
x3202:	add bp, 44	; 3: -125 -59 44
x3205:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2135 = return_value

printArgument$87:	; arg_list = £temporary2135
x3208:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x3211:	mov al, [bp + 31]	; 3: -118 70 31
x3214:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x3217:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -97 12
x3222:	mov [bp + 46], bp	; 3: -119 110 46
x3225:	add bp, 44	; 3: -125 -59 44
x3228:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x3231:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x3234:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2138 = arg_list - 2
x3238:	mov si, [bp + 8]	; 3: -117 118 8
x3241:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2139 = int_to_int £temporary2138 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2140 -> £temporary2139 = *£temporary2139

printArgument$97:	; stringValue = £temporary2140 -> £temporary2139
x3244:	mov ax, [si]	; 2: -117 4
x3246:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x3249:	mov ax, [bp + 8]	; 3: -117 70 8
x3252:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x3255:	mov ax, [bp + 16]	; 3: -117 70 16
x3258:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2141 = &precision
x3261:	mov si, bp	; 2: -119 -18
x3263:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2141, offset 10
x3266:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x3269:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -45 12
x3274:	mov [bp + 48], bp	; 3: -119 110 48
x3277:	add bp, 46	; 3: -125 -59 46
x3280:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2142 = return_value

printArgument$106:	; arg_list = £temporary2142
x3283:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x3286:	mov ax, [bp + 44]	; 3: -117 70 44
x3289:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x3292:	mov ax, [bp + 18]	; 3: -117 70 18
x3295:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x3298:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -16 12
x3303:	mov [bp + 48], bp	; 3: -119 110 48
x3306:	add bp, 46	; 3: -125 -59 46
x3309:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x3312:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x3315:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x3319:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2158 = 10
x3321:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x3327:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x3329:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x3333:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2154 = 8
x3335:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x3341:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x3343:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x3347:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2150 = 2
x3349:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x3355:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2150 = 16
x3357:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2154 = £temporary2150

printArgument$124:	; £temporary2158 = £temporary2154

printArgument$125:	; base = £temporary2158
x3363:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x3367:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3371:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x3373:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2160 = arg_list - 2
x3377:	mov si, [bp + 8]	; 3: -117 118 8
x3380:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2161 = int_to_int £temporary2160 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2162 -> £temporary2161 = *£temporary2161

printArgument$131:	; £temporary2163 = int_to_int £temporary2162 -> £temporary2161 (Unsigned_Int -> Unsigned_Short_Int)
x3383:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2164 = int_to_int £temporary2163 (Unsigned_Short_Int -> Unsigned_Long_Int)
x3385:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2164
x3391:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x3395:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x3397:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3401:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x3403:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2166 = arg_list - 4
x3407:	mov si, [bp + 8]	; 3: -117 118 8
x3410:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2167 = int_to_int £temporary2166 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2168 -> £temporary2167 = *£temporary2167

printArgument$140:	; value = £temporary2168 -> £temporary2167
x3413:	mov eax, [si]	; 3: 102 -117 4
x3416:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x3420:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x3422:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2170 = arg_list - 2
x3426:	mov si, [bp + 8]	; 3: -117 118 8
x3429:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2171 = int_to_int £temporary2170 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2172 -> £temporary2171 = *£temporary2171

printArgument$146:	; £temporary2173 = int_to_int £temporary2172 -> £temporary2171 (Unsigned_Int -> Unsigned_Long_Int)
x3432:	mov ax, [si]	; 2: -117 4
x3434:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2173
x3440:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x3444:	mov ax, [bp + 8]	; 3: -117 70 8
x3447:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x3450:	mov ax, [bp + 16]	; 3: -117 70 16
x3453:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2176 = &precision
x3456:	mov si, bp	; 2: -119 -18
x3458:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2176, offset 10
x3461:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x3464:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -106 13
x3469:	mov [bp + 54], bp	; 3: -119 110 54
x3472:	add bp, 52	; 3: -125 -59 52
x3475:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2177 = return_value

printArgument$156:	; arg_list = £temporary2177
x3478:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x3481:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x3485:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x3489:	mov ax, [bp + 10]	; 3: -117 70 10
x3492:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x3495:	mov ax, [bp + 12]	; 3: -117 70 12
x3498:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x3501:	mov ax, [bp + 14]	; 3: -117 70 14
x3504:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x3507:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3511:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2178 = int_to_int c (Signed_Char -> Signed_Int)
x3515:	mov al, [bp + 30]	; 3: -118 70 30
x3518:	and ax, 255	; 3: 37 -1 0
x3521:	cmp al, 0	; 2: 60 0
x3523:	jge printArgument$165	; 2: 125 4
x3525:	neg al	; 2: -10 -40
x3527:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2178, offset 26
x3529:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x3532:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -38 13
x3537:	mov [bp + 74], bp	; 3: -119 110 74
x3540:	add bp, 72	; 3: -125 -59 72
x3543:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2179 = return_value

printArgument$169:	; parameter £temporary2179, offset 20
x3546:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x3549:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -21 13
x3554:	mov [bp + 54], bp	; 3: -119 110 54
x3557:	add bp, 52	; 3: -125 -59 52
x3560:	jmp printUnsignedLong	; 3: -23 34 12

printArgument$171:	; post call

printArgument$172:	; goto 359
x3563:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x3566:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3570:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x3572:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2182 = arg_list - 8
x3576:	mov si, [bp + 8]	; 3: -117 118 8
x3579:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2183 = int_to_int £temporary2182 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2184 -> £temporary2183 = *£temporary2183

printArgument$178:	; push float £temporary2184 -> £temporary2183
x3582:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x3584:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x3587:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x3590:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x3593:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x3598:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x3603:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x3608:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x3613:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 43 14
x3618:	mov [bp + 46], bp	; 3: -119 110 46
x3621:	add bp, 44	; 3: -125 -59 44
x3624:	jmp printLongDoublePlain	; 3: -23 -115 13

printArgument$188:	; post call

printArgument$189:	; goto 196
x3627:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x3629:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2187 = arg_list - 8
x3633:	mov si, [bp + 8]	; 3: -117 118 8
x3636:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2188 = int_to_int £temporary2187 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2189 -> £temporary2188 = *£temporary2188

printArgument$194:	; push float £temporary2189 -> £temporary2188
x3639:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x3641:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x3644:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3648:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2193 -> negativePtr = *negativePtr
x3650:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x3653:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x3656:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x3658:	fcompp	; 2: -34 -39
x3660:	fstsw ax	; 3: -101 -33 -32
x3663:	sahf	; 1: -98
x3664:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2195 = 1
x3666:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x3669:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2195 = 0
x3671:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2193 -> negativePtr = £temporary2195
x3674:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x3676:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3680:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x3682:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x3685:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x3688:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 118 14
x3693:	mov [bp + 46], bp	; 3: -119 110 46
x3696:	add bp, 44	; 3: -125 -59 44
x3699:	jmp fabs	; 3: -23 -125 14

printArgument$210:	; post call

printArgument$211:	; £temporary2198 = return_value

printArgument$212:	; pop float longDoubleValue
x3702:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x3705:	mov ax, [bp + 8]	; 3: -117 70 8
x3708:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x3711:	mov ax, [bp + 16]	; 3: -117 70 16
x3714:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2199 = &precision
x3717:	mov si, bp	; 2: -119 -18
x3719:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2199, offset 10
x3722:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x3725:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -101 14
x3730:	mov [bp + 46], bp	; 3: -119 110 46
x3733:	add bp, 44	; 3: -125 -59 44
x3736:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2200 = return_value

printArgument$221:	; arg_list = £temporary2200
x3739:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x3742:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x3746:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x3748:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x3751:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x3754:	mov ax, [bp + 10]	; 3: -117 70 10
x3757:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x3760:	mov ax, [bp + 12]	; 3: -117 70 12
x3763:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x3766:	mov ax, [bp + 14]	; 3: -117 70 14
x3769:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x3772:	mov ax, [bp + 18]	; 3: -117 70 18
x3775:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x3778:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -48 14
x3783:	mov [bp + 46], bp	; 3: -119 110 46
x3786:	add bp, 44	; 3: -125 -59 44
x3789:	jmp printLongDoublePlain	; 3: -23 -24 12

printArgument$231:	; post call

printArgument$232:	; goto 359
x3792:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2203 = int_to_int c (Signed_Char -> Signed_Int)
x3795:	mov al, [bp + 30]	; 3: -118 70 30
x3798:	and ax, 255	; 3: 37 -1 0
x3801:	cmp al, 0	; 2: 60 0
x3803:	jge printArgument$235	; 2: 125 4
x3805:	neg al	; 2: -10 -40
x3807:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2203, offset 6
x3809:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x3812:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -14 14
x3817:	mov [bp + 46], bp	; 3: -119 110 46
x3820:	add bp, 44	; 3: -125 -59 44
x3823:	jmp tolower	; 3: -23 41 14

printArgument$237:	; post call

printArgument$238:	; £temporary2204 = return_value

printArgument$239:	; if £temporary2204 != 101 goto 257
x3826:	cmp bx, 101	; 3: -125 -5 101
x3829:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x3831:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x3834:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x3837:	mov ax, [bp + 10]	; 3: -117 70 10
x3840:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x3843:	mov ax, [bp + 12]	; 3: -117 70 12
x3846:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x3849:	mov ax, [bp + 14]	; 3: -117 70 14
x3852:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x3855:	mov ax, [bp + 18]	; 3: -117 70 18
x3858:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2206 = int_to_int c (Signed_Char -> Signed_Int)
x3861:	mov al, [bp + 30]	; 3: -118 70 30
x3864:	and ax, 255	; 3: 37 -1 0
x3867:	cmp al, 0	; 2: 60 0
x3869:	jge printArgument$249	; 2: 125 4
x3871:	neg al	; 2: -10 -40
x3873:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2206, offset 28
x3875:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x3878:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 52 15
x3883:	mov [bp + 68], bp	; 3: -119 110 68
x3886:	add bp, 66	; 3: -125 -59 66
x3889:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2207 = return_value

printArgument$253:	; parameter £temporary2207, offset 22
x3892:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x3895:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 69 15
x3900:	mov [bp + 46], bp	; 3: -119 110 46
x3903:	add bp, 44	; 3: -125 -59 44
x3906:	jmp printLongDoubleExpo	; 3: -23 119 14

printArgument$255:	; post call

printArgument$256:	; goto 359
x3909:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x3912:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x3915:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x3918:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 92 15
x3923:	mov [bp + 46], bp	; 3: -119 110 46
x3926:	add bp, 44	; 3: -125 -59 44
x3929:	jmp fabs	; 3: -23 -99 13

printArgument$262:	; post call

printArgument$263:	; £temporary2209 = return_value

printArgument$264:	; parameter £temporary2209, offset 6
x3932:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x3935:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 109 15
x3940:	mov [bp + 46], bp	; 3: -119 110 46
x3943:	add bp, 44	; 3: -125 -59 44
x3946:	jmp log10	; 3: -23 -74 15

printArgument$266:	; post call

printArgument$267:	; £temporary2210 = return_value

printArgument$268:	; £temporary2211 = float_to_int £temporary2210 (Double -> Signed_Int)
x3949:	fistp word [container2bytes#]	; 4: -33 30 3 17
x3953:	mov ax, [container2bytes#]	; 3: -95 3 17

printArgument$269:	; expo = £temporary2211
x3956:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x3959:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x3963:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x3965:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x3969:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x3971:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x3974:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x3977:	mov ax, [bp + 10]	; 3: -117 70 10
x3980:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x3983:	mov ax, [bp + 12]	; 3: -117 70 12
x3986:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x3989:	mov ax, [bp + 14]	; 3: -117 70 14
x3992:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x3995:	mov ax, [bp + 18]	; 3: -117 70 18
x3998:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x4001:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -81 15
x4006:	mov [bp + 48], bp	; 3: -119 110 48
x4009:	add bp, 46	; 3: -125 -59 46
x4012:	jmp printLongDoublePlain	; 3: -23 9 12

printArgument$280:	; post call

printArgument$281:	; goto 359
x4015:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x4018:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x4021:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x4024:	mov ax, [bp + 10]	; 3: -117 70 10
x4027:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x4030:	mov ax, [bp + 12]	; 3: -117 70 12
x4033:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x4036:	mov ax, [bp + 14]	; 3: -117 70 14
x4039:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x4042:	mov ax, [bp + 18]	; 3: -117 70 18
x4045:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2216 = int_to_int c (Signed_Char -> Signed_Int)
x4048:	mov al, [bp + 30]	; 3: -118 70 30
x4051:	and ax, 255	; 3: 37 -1 0
x4054:	cmp al, 0	; 2: 60 0
x4056:	jge printArgument$291	; 2: 125 4
x4058:	neg al	; 2: -10 -40
x4060:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2216, offset 28
x4062:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x4065:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -17 15
x4070:	mov [bp + 70], bp	; 3: -119 110 70
x4073:	add bp, 68	; 3: -125 -59 68
x4076:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2217 = return_value

printArgument$295:	; parameter £temporary2217, offset 22
x4079:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x4082:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 0 16
x4087:	mov [bp + 48], bp	; 3: -119 110 48
x4090:	add bp, 46	; 3: -125 -59 46
x4093:	jmp printLongDoubleExpo	; 3: -23 -68 13

printArgument$297:	; post call

printArgument$298:	; goto 359
x4096:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x4099:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2220 = arg_list - 2
x4103:	mov si, [bp + 8]	; 3: -117 118 8
x4106:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2221 = int_to_int £temporary2220 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2222 -> £temporary2221 = *£temporary2221

printArgument$303:	; ptrValue = £temporary2222 -> £temporary2221
x4109:	mov ax, [si]	; 2: -117 4
x4111:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x4114:	mov ax, [bp + 8]	; 3: -117 70 8
x4117:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x4120:	mov ax, [bp + 16]	; 3: -117 70 16
x4123:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2223 = &precision
x4126:	mov si, bp	; 2: -119 -18
x4128:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2223, offset 10
x4131:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x4134:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 52 16
x4139:	mov [bp + 46], bp	; 3: -119 110 46
x4142:	add bp, 44	; 3: -125 -59 44
x4145:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2224 = return_value

printArgument$312:	; arg_list = £temporary2224
x4148:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2225 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x4151:	mov ax, [bp + 42]	; 3: -117 70 42
x4154:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2225, offset 6
x4160:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x4164:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x4169:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x4174:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x4179:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x4187:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x4192:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 110 16
x4197:	mov [bp + 46], bp	; 3: -119 110 46
x4200:	add bp, 44	; 3: -125 -59 44
x4203:	jmp printUnsignedLong	; 3: -23 -97 9

printArgument$322:	; post call

printArgument$323:	; goto 359
x4206:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x4209:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2228 = arg_list - 2
x4213:	mov si, [bp + 8]	; 3: -117 118 8
x4216:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2229 = int_to_int £temporary2228 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2230 -> £temporary2229 = *£temporary2229

printArgument$328:	; ptrValue = £temporary2230 -> £temporary2229
x4219:	mov ax, [si]	; 2: -117 4
x4221:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x4224:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2232 = arg_list - 2
x4228:	mov si, [bp + 8]	; 3: -117 118 8
x4231:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2233 = int_to_int £temporary2232 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2234 -> £temporary2233 = *£temporary2233

printArgument$333:	; intPtr = £temporary2234 -> £temporary2233
x4234:	mov ax, [si]	; 2: -117 4
x4236:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x4239:	mov ax, [bp + 8]	; 3: -117 70 8
x4242:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x4245:	mov ax, [bp + 16]	; 3: -117 70 16
x4248:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2235 = &precision
x4251:	mov si, bp	; 2: -119 -18
x4253:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2235, offset 10
x4256:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x4259:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -79 16
x4264:	mov [bp + 46], bp	; 3: -119 110 46
x4267:	add bp, 44	; 3: -125 -59 44
x4270:	nop	; 1: -112
x4271:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2236 = return_value

printArgument$342:	; arg_list = £temporary2236
x4273:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2237 -> intPtr = *intPtr
x4276:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2237 -> intPtr = g_outChars
x4279:	mov ax, [g_outChars]	; 3: -95 -19 10
x4282:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x4284:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x4286:	mov ax, [bp + 8]	; 3: -117 70 8
x4289:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x4292:	mov ax, [bp + 16]	; 3: -117 70 16
x4295:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2238 = &precision
x4298:	mov si, bp	; 2: -119 -18
x4300:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2238, offset 10
x4303:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x4306:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -32 16
x4311:	mov [bp + 46], bp	; 3: -119 110 46
x4314:	add bp, 44	; 3: -125 -59 44
x4317:	nop	; 1: -112
x4318:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2239 = return_value

printArgument$354:	; arg_list = £temporary2239
x4320:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x4323:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x4327:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -11 16
x4332:	mov [bp + 46], bp	; 3: -119 110 46
x4335:	add bp, 44	; 3: -125 -59 44
x4338:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x4341:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x4344:	mov ax, [bp]	; 3: -117 70 0
x4347:	mov di, [bp + 4]	; 3: -117 126 4
x4350:	mov bp, [bp + 2]	; 3: -117 110 2
x4353:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x4355:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x4357:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4362:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2705 = -value
x4364:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x4368:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2709 = £temporary2705

labs$3:	; goto 5
x4371:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2709 = value
x4373:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2709

labs$6:	; return
x4377:	mov ax, [bp]	; 3: -117 70 0
x4380:	mov di, [bp + 4]	; 3: -117 126 4
x4383:	mov bp, [bp + 2]	; 3: -117 110 2
x4386:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x4388:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4392:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary2083 -> widthPtr = *widthPtr
x4394:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary2083 -> widthPtr != -1 goto 9
x4397:	cmp word [si], -1	; 3: -125 60 -1
x4400:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary2086 -> widthPtr = *widthPtr
x4402:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x4405:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary2088 = arg_list - 2
x4409:	mov di, [bp + 6]	; 3: -117 126 6
x4412:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary2089 = int_to_int £temporary2088 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary2090 -> £temporary2089 = *£temporary2089

checkWidthAndPrecision$8:	; £temporary2086 -> widthPtr = £temporary2090 -> £temporary2089
x4415:	mov ax, [di]	; 2: -117 5
x4417:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x4419:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4423:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary2092 -> precisionPtr = *precisionPtr
x4425:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary2092 -> precisionPtr != -1 goto 18
x4428:	cmp word [si], -1	; 3: -125 60 -1
x4431:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2095 -> precisionPtr = *precisionPtr
x4433:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x4436:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2097 = arg_list - 2
x4440:	mov di, [bp + 6]	; 3: -117 126 6
x4443:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2098 = int_to_int £temporary2097 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2099 -> £temporary2098 = *£temporary2098

checkWidthAndPrecision$17:	; £temporary2095 -> precisionPtr = £temporary2099 -> £temporary2098
x4446:	mov ax, [di]	; 2: -117 5
x4448:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x4450:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x4453:	mov ax, [bp]	; 3: -117 70 0
x4456:	mov di, [bp + 4]	; 3: -117 126 4
x4459:	mov bp, [bp + 2]	; 3: -117 110 2
x4462:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x4464:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4469:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1938 = -longValue
x4471:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4475:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1938
x4478:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x4482:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x4486:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -108 17
x4491:	mov [bp + 16], bp	; 3: -119 110 16
x4494:	add bp, 14	; 3: -125 -59 14
x4497:	nop	; 1: -112
x4498:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x4500:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x4502:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4506:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x4508:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x4512:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -82 17
x4517:	mov [bp + 16], bp	; 3: -119 110 16
x4520:	add bp, 14	; 3: -125 -59 14
x4523:	nop	; 1: -112
x4524:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x4526:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x4528:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4532:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x4534:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x4538:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -56 17
x4543:	mov [bp + 16], bp	; 3: -119 110 16
x4546:	add bp, 14	; 3: -125 -59 14
x4549:	nop	; 1: -112
x4550:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x4552:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4557:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x4559:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x4563:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -31 17
x4568:	mov [bp + 16], bp	; 3: -119 110 16
x4571:	add bp, 14	; 3: -125 -59 14
x4574:	nop	; 1: -112
x4575:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x4577:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x4579:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4583:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x4587:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -7 17
x4592:	mov [bp + 16], bp	; 3: -119 110 16
x4595:	add bp, 14	; 3: -125 -59 14
x4598:	nop	; 1: -112
x4599:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x4601:	mov ax, [bp]	; 3: -117 70 0
x4604:	mov di, [bp + 4]	; 3: -117 126 4
x4607:	mov bp, [bp + 2]	; 3: -117 110 2
x4610:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x4612:	mov ax, [g_outStatus]	; 3: -95 -103 5
x4615:	cmp ax, 0	; 3: -125 -8 0
x4618:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x4620:	cmp ax, 1	; 3: -125 -8 1
x4623:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x4625:	cmp ax, 2	; 3: -125 -8 2
x4628:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x4630:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1880 = int_to_int g_outDevice (Pointer -> Pointer)
x4632:	mov ax, [g_outDevice]	; 3: -95 -101 5

printChar$6:	; stream = £temporary1880
x4635:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x4638:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1883 -> stream = *stream, offset 2
x4640:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1883 -> stream
x4643:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x4646:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1886 = &c
x4649:	mov dx, bp	; 2: -119 -22
x4651:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1886

printChar$13:	; interrupt 33
x4654:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x4656:	inc word [g_outChars]	; 4: -1 6 -19 10

printChar$15:	; goto 25
x4660:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1888 = int_to_int g_outDevice (Pointer -> Pointer)
x4662:	mov ax, [g_outDevice]	; 3: -95 -101 5

printChar$17:	; outString = £temporary1888
x4665:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1889 = g_outChars
x4668:	mov ax, [g_outChars]	; 3: -95 -19 10

printChar$19:	; ++g_outChars
x4671:	inc word [g_outChars]	; 4: -1 6 -19 10

printChar$20:	; £temporary1891 = outString + £temporary1889
x4675:	mov si, [bp + 9]	; 3: -117 118 9
x4678:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1890 -> £temporary1891 = *£temporary1891

printChar$22:	; £temporary1890 -> £temporary1891 = c
x4680:	mov al, [bp + 6]	; 3: -118 70 6
x4683:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x4685:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x4687:	inc word [g_outChars]	; 4: -1 6 -19 10

printChar$25:	; return
x4691:	mov ax, [bp]	; 3: -117 70 0
x4694:	mov di, [bp + 4]	; 3: -117 126 4
x4697:	mov bp, [bp + 2]	; 3: -117 110 2
x4700:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x4702:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4707:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1928 = longValue % 10
x4709:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4713:	xor edx, edx	; 3: 102 49 -46
x4716:	idiv dword [int4$10#]	; 5: 102 -9 62 -56 18

printLongIntRec$2:	; £temporary1929 = int_to_int £temporary1928 (Signed_Long_Int -> Signed_Int)
x4721:	cmp edx, 0	; 4: 102 -125 -6 0
x4725:	jge printLongIntRec$3	; 2: 125 5
x4727:	neg edx	; 3: 102 -9 -38
x4730:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1929
x4732:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1930 = longValue / 10
x4735:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4739:	xor edx, edx	; 3: 102 49 -46
x4742:	idiv dword [int4$10#]	; 5: 102 -9 62 -56 18

printLongIntRec$6:	; parameter £temporary1930, offset 6
x4747:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x4751:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -99 18
x4756:	mov [bp + 14], bp	; 3: -119 110 14
x4759:	add bp, 12	; 3: -125 -59 12
x4762:	nop	; 1: -112
x4763:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1932 = digit + 48
x4765:	mov ax, [bp + 10]	; 3: -117 70 10
x4768:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1933 = int_to_int £temporary1932 (Signed_Int -> Signed_Char)
x4771:	cmp ax, 0	; 3: -125 -8 0
x4774:	jge printLongIntRec$12	; 2: 125 4
x4776:	neg ax	; 2: -9 -40
x4778:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1933, offset 6
x4780:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x4783:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -67 18
x4788:	mov [bp + 14], bp	; 3: -119 110 14
x4791:	add bp, 12	; 3: -125 -59 12
x4794:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x4797:	mov ax, [bp]	; 3: -117 70 0
x4800:	mov di, [bp + 4]	; 3: -117 126 4
x4803:	mov bp, [bp + 2]	; 3: -117 110 2
x4806:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x4808:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x4812:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x4816:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x4818:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4822:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x4824:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1897 = s + index
x4829:	mov si, [bp + 6]	; 3: -117 118 6
x4832:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1896 -> £temporary1897 = *£temporary1897

printString$5:	; if £temporary1896 -> £temporary1897 == 0 goto 53
x4835:	cmp byte [si], 0	; 3: -128 60 0
x4838:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1901 = s + index
x4842:	mov si, [bp + 6]	; 3: -117 118 6
x4845:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1900 -> £temporary1901 = *£temporary1901

printString$9:	; parameter £temporary1900 -> £temporary1901, offset 6
x4848:	mov al, [si]	; 2: -118 4
x4850:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x4853:	mov word [bp + 12], printString$11	; 5: -57 70 12 3 19
x4858:	mov [bp + 14], bp	; 3: -119 110 14
x4861:	add bp, 12	; 3: -125 -59 12
x4864:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x4867:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x4870:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x4872:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1903 = precision
x4877:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x4880:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1903 <= 0 goto 53
x4883:	cmp ax, 0	; 3: -125 -8 0
x4886:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1906 = s + index
x4890:	mov si, [bp + 6]	; 3: -117 118 6
x4893:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1905 -> £temporary1906 = *£temporary1906

printString$20:	; if £temporary1905 -> £temporary1906 == 0 goto 53
x4896:	cmp byte [si], 0	; 3: -128 60 0
x4899:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1911 = s + index
x4903:	mov si, [bp + 6]	; 3: -117 118 6
x4906:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1910 -> £temporary1911 = *£temporary1911

printString$24:	; parameter £temporary1910 -> £temporary1911, offset 6
x4909:	mov al, [si]	; 2: -118 4
x4911:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x4914:	mov word [bp + 12], printString$26	; 5: -57 70 12 64 19
x4919:	mov [bp + 14], bp	; 3: -119 110 14
x4922:	add bp, 12	; 3: -125 -59 12
x4925:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x4928:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x4931:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x4933:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x4937:	mov word [bp + 10], printString$32	; 5: -57 70 10 87 19
x4942:	mov [bp + 12], bp	; 3: -119 110 12
x4945:	add bp, 10	; 3: -125 -59 10
x4948:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x4951:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x4955:	mov word [bp + 10], printString$36	; 5: -57 70 10 105 19
x4960:	mov [bp + 12], bp	; 3: -119 110 12
x4963:	add bp, 10	; 3: -125 -59 10
x4966:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x4969:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x4973:	mov word [bp + 10], printString$40	; 5: -57 70 10 123 19
x4978:	mov [bp + 12], bp	; 3: -119 110 12
x4981:	add bp, 10	; 3: -125 -59 10
x4984:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x4987:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x4991:	mov word [bp + 10], printString$44	; 5: -57 70 10 -115 19
x4996:	mov [bp + 12], bp	; 3: -119 110 12
x4999:	add bp, 10	; 3: -125 -59 10
x5002:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x5005:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x5009:	mov word [bp + 10], printString$48	; 5: -57 70 10 -97 19
x5014:	mov [bp + 12], bp	; 3: -119 110 12
x5017:	add bp, 10	; 3: -125 -59 10
x5020:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x5023:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x5027:	mov word [bp + 10], printString$52	; 5: -57 70 10 -79 19
x5032:	mov [bp + 12], bp	; 3: -119 110 12
x5035:	add bp, 10	; 3: -125 -59 10
x5038:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x5041:	mov ax, [bp]	; 3: -117 70 0
x5044:	mov di, [bp + 4]	; 3: -117 126 4
x5047:	mov bp, [bp + 2]	; 3: -117 110 2
x5050:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x5052:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -54 19
x5057:	mov [bp + 10], bp	; 3: -119 110 10
x5060:	add bp, 8	; 3: -125 -59 8
x5063:	nop	; 1: -112
x5064:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary371 = return_value

isupper$4:	; localeConvPtr = £temporary371
x5066:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x5069:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5073:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary373 -> localeConvPtr = *localeConvPtr, offset 14
x5075:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary373 -> localeConvPtr, offset 6
x5078:	mov ax, [si + 14]	; 3: -117 68 14
x5081:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x5084:	mov ax, [bp + 6]	; 3: -117 70 6
x5087:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x5090:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -16 19
x5095:	mov [bp + 12], bp	; 3: -119 110 12
x5098:	add bp, 10	; 3: -125 -59 10
x5101:	jmp strchr	; 3: -23 -51 5

isupper$11:	; post call

isupper$12:	; £temporary374 = return_value

isupper$13:	; if £temporary374 == 0 goto 16
x5104:	cmp bx, 0	; 3: -125 -5 0
x5107:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary376 = 1
x5109:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x5112:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary376 = 0
x5114:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary376

isupper$18:	; return
x5117:	mov ax, [bp]	; 3: -117 70 0
x5120:	mov di, [bp + 4]	; 3: -117 126 4
x5123:	mov bp, [bp + 2]	; 3: -117 110 2
x5126:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x5128:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x5132:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x5134:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x5138:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary380 = 1
x5140:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x5143:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary380 = 0
x5145:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary380

isupper$25:	; return
x5148:	mov ax, [bp]	; 3: -117 70 0
x5151:	mov di, [bp + 4]	; 3: -117 126 4
x5154:	mov bp, [bp + 2]	; 3: -117 110 2
x5157:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x5159:	cmp word [@22$g_currStructPtr], 0	; 5: -125 62 69 20 0
x5164:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary520 -> g_currStructPtr = *g_currStructPtr, offset 2
x5166:	mov si, [@22$g_currStructPtr]	; 4: -117 54 69 20

localeconv$2:	; £temporary524 = £temporary520 -> g_currStructPtr
x5170:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x5173:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary524 = 0
x5175:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary524

localeconv$6:	; return
x5178:	mov ax, [bp]	; 3: -117 70 0
x5181:	mov di, [bp + 4]	; 3: -117 126 4
x5184:	mov bp, [bp + 2]	; 3: -117 110 2
x5187:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@22$g_currStructPtr:
x5189:	dw @20$sArray	; 2: 71 20

@20$sArray:
x5191:	dw string_# ; 2: 87 20
x5193:	dw @19$sw_EN_utf8	; 2: 88 20
x5195:	dw string_C# ; 2: 69 23
x5197:	dw @13$en_US_utf8	; 2: 71 23
x5199:	dw string_US# ; 2: -73 25
x5201:	dw @13$en_US_utf8	; 2: 71 23
x5203:	dw string_SE# ; 2: -70 25
x5205:	dw @19$sw_EN_utf8	; 2: 88 20

string_#:
x5207:	db 0	; 1: 0

@19$sw_EN_utf8:
x5208:	dw 1	; 2: 1 0
x5210:	dw 2	; 2: 2 0
x5212:	dw @14$swShortDayList ; 2: 106 20
x5214:	dw @15$swLongDayList ; 2: -108 20
x5216:	dw @11$enShortMonthList ; 2: -44 20
x5218:	dw @17$swLongMonthList ; 2: 28 21
x5220:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -118 21
x5222:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -91 21
x5224:	dw @18$swMessageList ; 2: -64 21

@14$swShortDayList:
x5226:	dw string_Son# ; 2: 120 20
x5228:	dw string_Man# ; 2: 124 20
x5230:	dw string_Tis# ; 2: -128 20
x5232:	dw string_Ons# ; 2: -124 20
x5234:	dw string_Tor# ; 2: -120 20
x5236:	dw string_Fre# ; 2: -116 20
x5238:	dw string_Lor# ; 2: -112 20

string_Son#:
x5240:	db "Son", 0	; 4: 83 111 110 0

string_Man#:
x5244:	db "Man", 0	; 4: 77 97 110 0

string_Tis#:
x5248:	db "Tis", 0	; 4: 84 105 115 0

string_Ons#:
x5252:	db "Ons", 0	; 4: 79 110 115 0

string_Tor#:
x5256:	db "Tor", 0	; 4: 84 111 114 0

string_Fre#:
x5260:	db "Fre", 0	; 4: 70 114 101 0

string_Lor#:
x5264:	db "Lor", 0	; 4: 76 111 114 0

@15$swLongDayList:
x5268:	dw string_Sondag# ; 2: -94 20
x5270:	dw string_Mandag# ; 2: -87 20
x5272:	dw string_Tisdag# ; 2: -80 20
x5274:	dw string_Onsdag# ; 2: -73 20
x5276:	dw string_Torsdag# ; 2: -66 20
x5278:	dw string_Fredag# ; 2: -58 20
x5280:	dw string_Lordag# ; 2: -51 20

string_Sondag#:
x5282:	db "Sondag", 0	; 7: 83 111 110 100 97 103 0

string_Mandag#:
x5289:	db "Mandag", 0	; 7: 77 97 110 100 97 103 0

string_Tisdag#:
x5296:	db "Tisdag", 0	; 7: 84 105 115 100 97 103 0

string_Onsdag#:
x5303:	db "Onsdag", 0	; 7: 79 110 115 100 97 103 0

string_Torsdag#:
x5310:	db "Torsdag", 0	; 8: 84 111 114 115 100 97 103 0

string_Fredag#:
x5318:	db "Fredag", 0	; 7: 70 114 101 100 97 103 0

string_Lordag#:
x5325:	db "Lordag", 0	; 7: 76 111 114 100 97 103 0

@11$enShortMonthList:
x5332:	dw string_Jan# ; 2: -20 20
x5334:	dw string_Feb# ; 2: -16 20
x5336:	dw string_Mar# ; 2: -12 20
x5338:	dw string_Apr# ; 2: -8 20
x5340:	dw string_May# ; 2: -4 20
x5342:	dw string_Jun# ; 2: 0 21
x5344:	dw string_Jul# ; 2: 4 21
x5346:	dw string_Aug# ; 2: 8 21
x5348:	dw string_Sep# ; 2: 12 21
x5350:	dw string_Oct# ; 2: 16 21
x5352:	dw string_Nov# ; 2: 20 21
x5354:	dw string_Dec# ; 2: 24 21

string_Jan#:
x5356:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5360:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5364:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5368:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5372:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5376:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5380:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5384:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5388:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5392:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5396:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5400:	db "Dec", 0	; 4: 68 101 99 0

@17$swLongMonthList:
x5404:	dw string_Januari# ; 2: 52 21
x5406:	dw string_Februari# ; 2: 60 21
x5408:	dw string_Mars# ; 2: 69 21
x5410:	dw string_April# ; 2: 74 21
x5412:	dw string_Maj# ; 2: 80 21
x5414:	dw string_Juni# ; 2: 84 21
x5416:	dw string_Juli# ; 2: 89 21
x5418:	dw string_Augusit# ; 2: 94 21
x5420:	dw string_September# ; 2: 102 21
x5422:	dw string_Oktober# ; 2: 112 21
x5424:	dw string_November# ; 2: 120 21
x5426:	dw string_December# ; 2: -127 21

string_Januari#:
x5428:	db "Januari", 0	; 8: 74 97 110 117 97 114 105 0

string_Februari#:
x5436:	db "Februari", 0	; 9: 70 101 98 114 117 97 114 105 0

string_Mars#:
x5445:	db "Mars", 0	; 5: 77 97 114 115 0

string_April#:
x5450:	db "April", 0	; 6: 65 112 114 105 108 0

string_Maj#:
x5456:	db "Maj", 0	; 4: 77 97 106 0

string_Juni#:
x5460:	db "Juni", 0	; 5: 74 117 110 105 0

string_Juli#:
x5465:	db "Juli", 0	; 5: 74 117 108 105 0

string_Augusit#:
x5470:	db "Augusit", 0	; 8: 65 117 103 117 115 105 116 0

string_September#:
x5478:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_Oktober#:
x5488:	db "Oktober", 0	; 8: 79 107 116 111 98 101 114 0

string_November#:
x5496:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5505:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5514:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5541:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

@18$swMessageList:
x5568:	dw string_inga20fel# ; 2: -26 21
x5570:	dw string_felaktigt20functionsnummer# ; 2: -17 21
x5572:	dw string_hittar20ej20filen# ; 2: 9 22
x5574:	dw string_hittar20ej20sokvagen# ; 2: 25 22
x5576:	dw string_inget20handtag20tillgangligt# ; 2: 44 22
x5578:	dw string_atkomst20nekad# ; 2: 71 22
x5580:	dw string_utanfor20doman# ; 2: 85 22
x5582:	dw string_utanfor20range# ; 2: 99 22
x5584:	dw string_felaktig20multibyte2Dsekvens# ; 2: 113 22
x5586:	dw string_fel20vid20oppning# ; 2: -116 22
x5588:	dw string_fel20vid20flushing# ; 2: -100 22
x5590:	dw string_fel20vid20stangning# ; 2: -83 22
x5592:	dw string_fel20oppningslage# ; 2: -65 22
x5594:	dw string_fel20vid20skrivning# ; 2: -48 22
x5596:	dw string_fel20vid20lasning# ; 2: -30 22
x5598:	dw string_fel20vid20sokning# ; 2: -14 22
x5600:	dw string_fel20vid20telling# ; 2: 2 23
x5602:	dw string_fel20vid20borttagning20av20fil# ; 2: 18 23
x5604:	dw string_fel20vid20namnbyte20av20fil# ; 2: 45 23

string_inga20fel#:
x5606:	db "inga fel", 0	; 9: 105 110 103 97 32 102 101 108 0

string_felaktigt20functionsnummer#:
x5615:	db "felaktigt functionsnummer", 0	; 26: 102 101 108 97 107 116 105 103 116 32 102 117 110 99 116 105 111 110 115 110 117 109 109 101 114 0

string_hittar20ej20filen#:
x5641:	db "hittar ej filen", 0	; 16: 104 105 116 116 97 114 32 101 106 32 102 105 108 101 110 0

string_hittar20ej20sokvagen#:
x5657:	db "hittar ej sokvagen", 0	; 19: 104 105 116 116 97 114 32 101 106 32 115 111 107 118 97 103 101 110 0

string_inget20handtag20tillgangligt#:
x5676:	db "inget handtag tillgangligt", 0	; 27: 105 110 103 101 116 32 104 97 110 100 116 97 103 32 116 105 108 108 103 97 110 103 108 105 103 116 0

string_atkomst20nekad#:
x5703:	db "atkomst nekad", 0	; 14: 97 116 107 111 109 115 116 32 110 101 107 97 100 0

string_utanfor20doman#:
x5717:	db "utanfor doman", 0	; 14: 117 116 97 110 102 111 114 32 100 111 109 97 110 0

string_utanfor20range#:
x5731:	db "utanfor range", 0	; 14: 117 116 97 110 102 111 114 32 114 97 110 103 101 0

string_felaktig20multibyte2Dsekvens#:
x5745:	db "felaktig multibyte-sekvens", 0	; 27: 102 101 108 97 107 116 105 103 32 109 117 108 116 105 98 121 116 101 45 115 101 107 118 101 110 115 0

string_fel20vid20oppning#:
x5772:	db "fel vid oppning", 0	; 16: 102 101 108 32 118 105 100 32 111 112 112 110 105 110 103 0

string_fel20vid20flushing#:
x5788:	db "fel vid flushing", 0	; 17: 102 101 108 32 118 105 100 32 102 108 117 115 104 105 110 103 0

string_fel20vid20stangning#:
x5805:	db "fel vid stangning", 0	; 18: 102 101 108 32 118 105 100 32 115 116 97 110 103 110 105 110 103 0

string_fel20oppningslage#:
x5823:	db "fel oppningslage", 0	; 17: 102 101 108 32 111 112 112 110 105 110 103 115 108 97 103 101 0

string_fel20vid20skrivning#:
x5840:	db "fel vid skrivning", 0	; 18: 102 101 108 32 118 105 100 32 115 107 114 105 118 110 105 110 103 0

string_fel20vid20lasning#:
x5858:	db "fel vid lasning", 0	; 16: 102 101 108 32 118 105 100 32 108 97 115 110 105 110 103 0

string_fel20vid20sokning#:
x5874:	db "fel vid sokning", 0	; 16: 102 101 108 32 118 105 100 32 115 111 107 110 105 110 103 0

string_fel20vid20telling#:
x5890:	db "fel vid telling", 0	; 16: 102 101 108 32 118 105 100 32 116 101 108 108 105 110 103 0

string_fel20vid20borttagning20av20fil#:
x5906:	db "fel vid borttagning av fil", 0	; 27: 102 101 108 32 118 105 100 32 98 111 114 116 116 97 103 110 105 110 103 32 97 118 32 102 105 108 0

string_fel20vid20namnbyte20av20fil#:
x5933:	db "fel vid namnbyte av fil", 0	; 24: 102 101 108 32 118 105 100 32 110 97 109 110 98 121 116 101 32 97 118 32 102 105 108 0

string_C#:
x5957:	db "C", 0	; 2: 67 0

@13$en_US_utf8:
x5959:	dw -5	; 2: -5 -1
x5961:	dw -4	; 2: -4 -1
x5963:	dw @9$enShortDayList ; 2: 89 23
x5965:	dw @10$enLongDayList ; 2: -125 23
x5967:	dw @11$enShortMonthList ; 2: -44 20
x5969:	dw @12$enLongMonthList ; 2: -54 23
x5971:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -118 21
x5973:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -91 21
x5975:	dw enMessageList ; 2: 18 24

@9$enShortDayList:
x5977:	dw string_Sun# ; 2: 103 23
x5979:	dw string_Mon# ; 2: 107 23
x5981:	dw string_Tue# ; 2: 111 23
x5983:	dw string_Wed# ; 2: 115 23
x5985:	dw string_Thu# ; 2: 119 23
x5987:	dw string_Fri# ; 2: 123 23
x5989:	dw string_Sat# ; 2: 127 23

string_Sun#:
x5991:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x5995:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x5999:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6003:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6007:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6011:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6015:	db "Sat", 0	; 4: 83 97 116 0

@10$enLongDayList:
x6019:	dw string_Sunday# ; 2: -111 23
x6021:	dw string_Monday# ; 2: -104 23
x6023:	dw string_Tuesday# ; 2: -97 23
x6025:	dw string_Wednesday# ; 2: -89 23
x6027:	dw string_Thursday# ; 2: -79 23
x6029:	dw string_Friday# ; 2: -70 23
x6031:	dw string_Saturday# ; 2: -63 23

string_Sunday#:
x6033:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6040:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6047:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6055:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6065:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6074:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x6081:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@12$enLongMonthList:
x6090:	dw string_January# ; 2: -30 23
x6092:	dw string_February# ; 2: -22 23
x6094:	dw string_March# ; 2: -13 23
x6096:	dw string_April# ; 2: 74 21
x6098:	dw string_May# ; 2: -4 20
x6100:	dw string_June# ; 2: -7 23
x6102:	dw string_July# ; 2: -2 23
x6104:	dw string_August# ; 2: 3 24
x6106:	dw string_September# ; 2: 102 21
x6108:	dw string_October# ; 2: 10 24
x6110:	dw string_November# ; 2: 120 21
x6112:	dw string_December# ; 2: -127 21

string_January#:
x6114:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x6122:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x6131:	db "March", 0	; 6: 77 97 114 99 104 0

string_June#:
x6137:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x6142:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x6147:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_October#:
x6154:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

enMessageList:
x6162:	dw string_no20error# ; 2: 58 24
x6164:	dw string_function20number20invalid# ; 2: 67 24
x6166:	dw string_file20not20found# ; 2: 91 24
x6168:	dw string_path20not20found# ; 2: 106 24
x6170:	dw string_no20handle20available# ; 2: 121 24
x6172:	dw string_access20denied# ; 2: -115 24
x6174:	dw string_out20of20domain# ; 2: -101 24
x6176:	dw string_out20of20range# ; 2: -87 24
x6178:	dw string_invalid20multibyte20sequence# ; 2: -74 24
x6180:	dw string_error20while20opening# ; 2: -47 24
x6182:	dw string_error20while20flushing# ; 2: -27 24
x6184:	dw string_error20while20closing# ; 2: -6 24
x6186:	dw string_open20mode20invalid# ; 2: 14 25
x6188:	dw string_error20while20writing# ; 2: 32 25
x6190:	dw string_error20while20reading# ; 2: 52 25
x6192:	dw string_error20while20seeking# ; 2: 72 25
x6194:	dw string_error20while20telling# ; 2: 92 25
x6196:	dw string_error20while20sizing# ; 2: 112 25
x6198:	dw string_error20while20removing20file# ; 2: -125 25
x6200:	dw string_error20while20renaming20file# ; 2: -99 25

string_no20error#:
x6202:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x6211:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x6235:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x6250:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x6265:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x6285:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x6299:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x6313:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x6326:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x6353:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x6373:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x6394:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x6414:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x6432:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x6452:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x6472:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x6492:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x6512:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x6531:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x6557:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_US#:
x6583:	db "US", 0	; 3: 85 83 0

string_SE#:
x6586:	db "SE", 0	; 3: 83 69 0

strchr:	; £temporary3330 = int_to_int i (Signed_Int -> Signed_Char)
x6589:	mov ax, [bp + 8]	; 3: -117 70 8
x6592:	cmp ax, 0	; 3: -125 -8 0
x6595:	jge strchr$1	; 2: 125 4
x6597:	neg ax	; 2: -9 -40
x6599:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3330
x6601:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x6604:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3332 = text + index
x6609:	mov si, [bp + 6]	; 3: -117 118 6
x6612:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3331 -> £temporary3332 = *£temporary3332

strchr$5:	; if £temporary3331 -> £temporary3332 == 0 goto 16
x6615:	cmp byte [si], 0	; 3: -128 60 0
x6618:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3336 = text + index
x6620:	mov si, [bp + 6]	; 3: -117 118 6
x6623:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3335 -> £temporary3336 = *£temporary3336

strchr$8:	; if £temporary3335 -> £temporary3336 != c goto 14
x6626:	mov al, [bp + 12]	; 3: -118 70 12
x6629:	cmp [si], al	; 2: 56 4
x6631:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3339 = text + index
x6633:	mov bx, [bp + 6]	; 3: -117 94 6
x6636:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3338 -> £temporary3339 = *£temporary3339

strchr$11:	; £temporary3340 = &£temporary3338 -> £temporary3339

strchr$12:	; return_value = £temporary3340

strchr$13:	; return
x6639:	mov ax, [bp]	; 3: -117 70 0
x6642:	mov di, [bp + 4]	; 3: -117 126 4
x6645:	mov bp, [bp + 2]	; 3: -117 110 2
x6648:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x6650:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x6653:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x6655:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x6658:	mov ax, [bp]	; 3: -117 70 0
x6661:	mov di, [bp + 4]	; 3: -117 126 4
x6664:	mov bp, [bp + 2]	; 3: -117 110 2
x6667:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x6669:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6673:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x6675:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x6679:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 37 26
x6684:	mov [bp + 24], bp	; 3: -119 110 24
x6687:	add bp, 22	; 3: -125 -59 22
x6690:	jmp printChar	; 3: -23 -33 -9

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x6693:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6697:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x6699:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x6703:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 61 26
x6708:	mov [bp + 24], bp	; 3: -119 110 24
x6711:	add bp, 22	; 3: -125 -59 22
x6714:	jmp printChar	; 3: -23 -57 -9

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x6717:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x6721:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x6723:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x6728:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x6730:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x6734:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 92 26
x6739:	mov [bp + 24], bp	; 3: -119 110 24
x6742:	add bp, 22	; 3: -125 -59 22
x6745:	jmp printChar	; 3: -23 -88 -9

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x6748:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x6753:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x6755:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x6759:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 117 26
x6764:	mov [bp + 24], bp	; 3: -119 110 24
x6767:	add bp, 22	; 3: -125 -59 22
x6770:	jmp printChar	; 3: -23 -113 -9

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x6773:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x6777:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1987 = 88
x6779:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x6781:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1987 = 120
x6783:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1987, offset 6
x6785:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x6788:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -110 26
x6793:	mov [bp + 24], bp	; 3: -119 110 24
x6796:	add bp, 22	; 3: -125 -59 22
x6799:	jmp printChar	; 3: -23 114 -9

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x6802:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6807:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x6809:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x6813:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -85 26
x6818:	mov [bp + 24], bp	; 3: -119 110 24
x6821:	add bp, 22	; 3: -125 -59 22
x6824:	jmp printChar	; 3: -23 89 -9

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x6827:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x6829:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6833:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x6837:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x6841:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x6845:	mov ax, [bp + 20]	; 3: -117 70 20
x6848:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x6851:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -47 26
x6856:	mov [bp + 24], bp	; 3: -119 110 24
x6859:	add bp, 22	; 3: -125 -59 22
x6862:	nop	; 1: -112
x6863:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x6865:	mov ax, [bp]	; 3: -117 70 0
x6868:	mov di, [bp + 4]	; 3: -117 126 4
x6871:	mov bp, [bp + 2]	; 3: -117 110 2
x6874:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x6876:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6881:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1963 = unsignedValue % base
x6883:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6887:	xor edx, edx	; 3: 102 49 -46
x6890:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1964 = int_to_int £temporary1963 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1964
x6894:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1965 = unsignedValue / base
x6897:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6901:	xor edx, edx	; 3: 102 49 -46
x6904:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1965, offset 6
x6908:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x6912:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x6916:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x6920:	mov ax, [bp + 14]	; 3: -117 70 14
x6923:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x6926:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 28 27
x6931:	mov [bp + 20], bp	; 3: -119 110 20
x6934:	add bp, 18	; 3: -125 -59 18
x6937:	nop	; 1: -112
x6938:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x6940:	mov ax, [bp + 16]	; 3: -117 70 16
x6943:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x6946:	mov ax, [bp + 14]	; 3: -117 70 14
x6949:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x6952:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 54 27
x6957:	mov [bp + 20], bp	; 3: -119 110 20
x6960:	add bp, 18	; 3: -125 -59 18
x6963:	nop	; 1: -112
x6964:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1967 = return_value

printUnsignedLongRec$17:	; c = £temporary1967
x6966:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x6969:	mov al, [bp + 18]	; 3: -118 70 18
x6972:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x6975:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 77 27
x6980:	mov [bp + 21], bp	; 3: -119 110 21
x6983:	add bp, 19	; 3: -125 -59 19
x6986:	jmp printChar	; 3: -23 -73 -10

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x6989:	mov ax, [bp]	; 3: -117 70 0
x6992:	mov di, [bp + 4]	; 3: -117 126 4
x6995:	mov bp, [bp + 2]	; 3: -117 110 2
x6998:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x7000:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x7004:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1953 = digit + 48
x7006:	mov bx, [bp + 6]	; 3: -117 94 6
x7009:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1954 = int_to_int £temporary1953 (Signed_Int -> Signed_Char)
x7012:	cmp bx, 0	; 3: -125 -5 0
x7015:	jge digitToChar$3	; 2: 125 4
x7017:	neg bx	; 2: -9 -37
x7019:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1954

digitToChar$4:	; return
x7021:	mov ax, [bp]	; 3: -117 70 0
x7024:	mov di, [bp + 4]	; 3: -117 126 4
x7027:	mov bp, [bp + 2]	; 3: -117 110 2
x7030:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x7032:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7036:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1955 = digit - 10
x7038:	mov bx, [bp + 6]	; 3: -117 94 6
x7041:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1956 = £temporary1955 + 65
x7044:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1957 = int_to_int £temporary1956 (Signed_Int -> Signed_Char)
x7047:	cmp bx, 0	; 3: -125 -5 0
x7050:	jge digitToChar$9	; 2: 125 4
x7052:	neg bx	; 2: -9 -37
x7054:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1957

digitToChar$10:	; return
x7056:	mov ax, [bp]	; 3: -117 70 0
x7059:	mov di, [bp + 4]	; 3: -117 126 4
x7062:	mov bp, [bp + 2]	; 3: -117 110 2
x7065:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1958 = digit - 10
x7067:	mov bx, [bp + 6]	; 3: -117 94 6
x7070:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1959 = £temporary1958 + 97
x7073:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1960 = int_to_int £temporary1959 (Signed_Int -> Signed_Char)
x7076:	cmp bx, 0	; 3: -125 -5 0
x7079:	jge digitToChar$14	; 2: 125 4
x7081:	neg bx	; 2: -9 -37
x7083:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1960

digitToChar$15:	; return
x7085:	mov ax, [bp]	; 3: -117 70 0
x7088:	mov di, [bp + 4]	; 3: -117 126 4
x7091:	mov bp, [bp + 2]	; 3: -117 110 2
x7094:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x7096:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x7099:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x7101:	fcompp	; 2: -34 -39
x7103:	fstsw ax	; 3: -101 -33 -32
x7106:	sahf	; 1: -98
x7107:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x7109:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x7113:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -41 27
x7118:	mov [bp + 24], bp	; 3: -119 110 24
x7121:	add bp, 22	; 3: -125 -59 22
x7124:	jmp printChar	; 3: -23 45 -10

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x7127:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary2023 = -longDoubleValue
x7130:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x7132:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x7135:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x7140:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x7145:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary2024 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7148:	fistp dword [container4bytes#]	; 4: -37 30 80 28
x7152:	mov eax, [container4bytes#]	; 4: 102 -95 80 28

printLongDoublePlain$14:	; longValue = £temporary2024
x7156:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x7160:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7164:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x7168:	mov ax, [bp + 14]	; 3: -117 70 14
x7171:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x7174:	mov ax, [bp + 16]	; 3: -117 70 16
x7177:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x7180:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 26 28
x7185:	mov [bp + 28], bp	; 3: -119 110 28
x7188:	add bp, 26	; 3: -125 -59 26
x7191:	jmp printLongInt	; 3: -23 86 -11

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x7194:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary2026 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x7197:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary2027 = longDoubleValue - £temporary2026
x7200:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x7202:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x7205:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x7208:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x7211:	mov ax, [bp + 18]	; 3: -117 70 18
x7214:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x7217:	mov ax, [bp + 20]	; 3: -117 70 20
x7220:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x7223:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 69 28
x7228:	mov [bp + 28], bp	; 3: -119 110 28
x7231:	add bp, 26	; 3: -125 -59 26
x7234:	nop	; 1: -112
x7235:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x7237:	mov ax, [bp]	; 3: -117 70 0
x7240:	mov di, [bp + 4]	; 3: -117 126 4
x7243:	mov bp, [bp + 2]	; 3: -117 110 2
x7246:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x7248:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x7252:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x7255:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary2002 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7258:	fistp dword [container4bytes#]	; 4: -37 30 80 28
x7262:	mov eax, [container4bytes#]	; 4: 102 -95 80 28

printLongDoubleFraction$3:	; £temporary2003 = int_to_float £temporary2002 (Signed_Long_Int -> Long_Double)
x7266:	mov [container4bytes#], eax	; 4: 102 -93 80 28
x7270:	fild dword [container4bytes#]	; 4: -37 6 80 28

printLongDoubleFraction$4:	; £temporary2004 = longDoubleValue - £temporary2003
x7274:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x7276:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x7279:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7283:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 9
x7285:	mov word [bp + 16], 9	; 5: -57 70 16 9 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x7290:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7294:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x7296:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7300:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x7302:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x7306:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -104 28
x7311:	mov [bp + 20], bp	; 3: -119 110 20
x7314:	add bp, 18	; 3: -125 -59 18
x7317:	jmp printChar	; 3: -23 108 -11

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary2010 = precision
x7320:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x7323:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary2010 <= 0 goto 34
x7326:	cmp ax, 0	; 3: -125 -8 0
x7329:	jle printLongDoubleFraction$34	; 2: 126 67

printLongDoubleFraction$17:	; push float 10.0
x7331:	fld qword [float8$10.0#]	; 4: -35 6 -15 28

printLongDoubleFraction$18:	; push float longDoubleValue
x7335:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary2012 = 10.0 * longDoubleValue
x7338:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; top float longDoubleValue10
x7340:	fst qword [bp + 18]	; 3: -35 86 18

printLongDoubleFraction$21:	; £temporary2013 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x7343:	fistp word [container2bytes#]	; 4: -33 30 3 17
x7347:	mov ax, [container2bytes#]	; 3: -95 3 17

printLongDoubleFraction$22:	; digitValue = £temporary2013
x7350:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$23:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$24:	; £temporary2014 = digitValue + 48
x7353:	mov ax, [bp + 26]	; 3: -117 70 26
x7356:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$25:	; £temporary2015 = int_to_int £temporary2014 (Signed_Int -> Signed_Char)
x7359:	cmp ax, 0	; 3: -125 -8 0
x7362:	jge printLongDoubleFraction$26	; 2: 125 4
x7364:	neg ax	; 2: -9 -40
x7366:	neg al	; 2: -10 -40

printLongDoubleFraction$26:	; parameter £temporary2015, offset 6
x7368:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$27:	; call function noellipse-noellipse printChar
x7371:	mov word [bp + 28], printLongDoubleFraction$28	; 5: -57 70 28 -39 28
x7376:	mov [bp + 30], bp	; 3: -119 110 30
x7379:	add bp, 28	; 3: -125 -59 28
x7382:	jmp printChar	; 3: -23 43 -11

printLongDoubleFraction$28:	; post call

printLongDoubleFraction$29:	; push float longDoubleValue10
x7385:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$30:	; £temporary2017 = int_to_float digitValue (Signed_Int -> Long_Double)
x7388:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$31:	; £temporary2018 = longDoubleValue10 - £temporary2017
x7391:	fsub	; 2: -34 -23

printLongDoubleFraction$32:	; pop float longDoubleValue
x7393:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$33:	; goto 14
x7396:	jmp printLongDoubleFraction$14	; 2: -21 -78

printLongDoubleFraction$34:	; return
x7398:	mov ax, [bp]	; 3: -117 70 0
x7401:	mov di, [bp + 4]	; 3: -117 126 4
x7404:	mov bp, [bp + 2]	; 3: -117 110 2
x7407:	jmp ax	; 2: -1 -32

printLongDoubleFraction$35:	; function end printLongDoubleFraction

float8$10.0#:
x7409:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x7417:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x7420:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x7422:	fcompp	; 2: -34 -39
x7424:	fstsw ax	; 3: -101 -33 -32
x7427:	sahf	; 1: -98
x7428:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x7430:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary925 = -x
x7433:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7435:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7437:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary929

fabs$9:	; return
x7440:	mov ax, [bp]	; 3: -117 70 0
x7443:	mov di, [bp + 4]	; 3: -117 126 4
x7446:	mov bp, [bp + 2]	; 3: -117 110 2
x7449:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x7451:	mov ax, [bp + 6]	; 3: -117 70 6
x7454:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x7457:	mov word [bp + 8], tolower$3	; 5: -57 70 8 47 29
x7462:	mov [bp + 10], bp	; 3: -119 110 10
x7465:	add bp, 8	; 3: -125 -59 8
x7468:	jmp isupper	; 3: -23 -115 -10

tolower$3:	; post call

tolower$4:	; £temporary459 = return_value

tolower$5:	; if £temporary459 == 0 goto 31
x7471:	cmp bx, 0	; 3: -125 -5 0
x7474:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x7476:	mov word [bp + 8], tolower$8	; 5: -57 70 8 66 29
x7481:	mov [bp + 10], bp	; 3: -119 110 10
x7484:	add bp, 8	; 3: -125 -59 8
x7487:	jmp localeconv	; 3: -23 -27 -10

tolower$8:	; post call

tolower$9:	; £temporary460 = return_value

tolower$10:	; localeConvPtr = £temporary460
x7490:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x7493:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7497:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary462 -> localeConvPtr = *localeConvPtr, offset 12
x7499:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary462 -> localeConvPtr
x7502:	mov ax, [si + 12]	; 3: -117 68 12
x7505:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary463 -> localeConvPtr = *localeConvPtr, offset 14
x7508:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary463 -> localeConvPtr
x7511:	mov ax, [si + 14]	; 3: -117 68 14
x7514:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x7517:	mov ax, [bp + 12]	; 3: -117 70 12
x7520:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x7523:	mov ax, [bp + 6]	; 3: -117 70 6
x7526:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x7529:	mov word [bp + 14], tolower$20	; 5: -57 70 14 119 29
x7534:	mov [bp + 16], bp	; 3: -119 110 16
x7537:	add bp, 14	; 3: -125 -59 14
x7540:	jmp strchr	; 3: -23 70 -4

tolower$20:	; post call

tolower$21:	; £temporary464 = return_value

tolower$22:	; index = £temporary464 - upperCase
x7543:	sub bx, [bp + 12]	; 3: 43 94 12
x7546:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary467 = lowerCase + index
x7549:	mov si, [bp + 10]	; 3: -117 118 10
x7552:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary466 -> £temporary467 = *£temporary467

tolower$25:	; £temporary468 = int_to_int £temporary466 -> £temporary467 (Signed_Char -> Signed_Int)
x7555:	mov bl, [si]	; 2: -118 28
x7557:	and bx, 255	; 4: -127 -29 -1 0
x7561:	cmp bl, 0	; 3: -128 -5 0
x7564:	jge tolower$26	; 2: 125 4
x7566:	neg bl	; 2: -10 -37
x7568:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary468

tolower$27:	; return
x7570:	mov ax, [bp]	; 3: -117 70 0
x7573:	mov di, [bp + 4]	; 3: -117 126 4
x7576:	mov bp, [bp + 2]	; 3: -117 110 2
x7579:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary469 = c + 32
x7581:	mov bx, [bp + 6]	; 3: -117 94 6
x7584:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary469

tolower$30:	; return
x7587:	mov ax, [bp]	; 3: -117 70 0
x7590:	mov di, [bp + 4]	; 3: -117 126 4
x7593:	mov bp, [bp + 2]	; 3: -117 110 2
x7596:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x7598:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x7601:	mov ax, [bp]	; 3: -117 70 0
x7604:	mov di, [bp + 4]	; 3: -117 126 4
x7607:	mov bp, [bp + 2]	; 3: -117 110 2
x7610:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x7612:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x7615:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x7617:	fcompp	; 2: -34 -39
x7619:	fstsw ax	; 3: -101 -33 -32
x7622:	sahf	; 1: -98
x7623:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x7625:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x7629:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -37 29
x7634:	mov [bp + 26], bp	; 3: -119 110 26
x7637:	add bp, 24	; 3: -125 -59 24
x7640:	jmp printChar	; 3: -23 41 -12

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x7643:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x7645:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x7648:	mov ax, [bp + 20]	; 3: -117 70 20
x7651:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x7654:	mov ax, [bp + 18]	; 3: -117 70 18
x7657:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x7660:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -6 29
x7665:	mov [bp + 26], bp	; 3: -119 110 26
x7668:	add bp, 24	; 3: -125 -59 24
x7671:	jmp printLongDoubleFraction	; 3: -23 90 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x7674:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7678:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary2043 = 69
x7680:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x7682:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary2043 = 101
x7684:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary2043, offset 6
x7686:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x7689:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 23 30
x7694:	mov [bp + 26], bp	; 3: -119 110 26
x7697:	add bp, 24	; 3: -125 -59 24
x7700:	jmp printChar	; 3: -23 -19 -13

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x7703:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x7707:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 41 30
x7712:	mov [bp + 26], bp	; 3: -119 110 26
x7715:	add bp, 24	; 3: -125 -59 24
x7718:	jmp printChar	; 3: -23 -37 -13

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x7721:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x7724:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x7727:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x7729:	fcompp	; 2: -34 -39
x7731:	fstsw ax	; 3: -101 -33 -32
x7734:	sahf	; 1: -98
x7735:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x7737:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x7741:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 75 30
x7746:	mov [bp + 26], bp	; 3: -119 110 26
x7749:	add bp, 24	; 3: -125 -59 24
x7752:	jmp printChar	; 3: -23 -71 -13

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x7755:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary2048 = -value
x7758:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x7760:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x7763:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x7766:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x7769:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 103 30
x7774:	mov [bp + 26], bp	; 3: -119 110 26
x7777:	add bp, 24	; 3: -125 -59 24
x7780:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary2049 = return_value

printLongDoubleExpo$43:	; £temporary2050 = float_to_int £temporary2049 (Double -> Signed_Int)
x7783:	fistp word [container2bytes#]	; 4: -33 30 3 17
x7787:	mov ax, [container2bytes#]	; 3: -95 3 17

printLongDoubleExpo$44:	; expo = £temporary2050
x7790:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x7793:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x7796:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x7799:	fld qword [float8$10.0#]	; 4: -35 6 -15 28

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x7803:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary2051 = int_to_float expo (Signed_Int -> Double)
x7806:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary2051, offset 14
x7809:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x7812:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -110 30
x7817:	mov [bp + 36], bp	; 3: -119 110 36
x7820:	add bp, 34	; 3: -125 -59 34
x7823:	jmp pow	; 3: -23 -22 1

printLongDoubleExpo$52:	; post call
x7826:	fstp qword [bp + 34]	; 3: -35 94 34
x7829:	fld qword [bp + 26]	; 3: -35 70 26
x7832:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary2052 = return_value

printLongDoubleExpo$54:	; £temporary2053 = value / £temporary2052
x7835:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x7837:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x7840:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x7843:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x7846:	mov ax, [bp + 14]	; 3: -117 70 14
x7849:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x7852:	mov ax, [bp + 16]	; 3: -117 70 16
x7855:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x7858:	mov ax, [bp + 18]	; 3: -117 70 18
x7861:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x7864:	mov ax, [bp + 20]	; 3: -117 70 20
x7867:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x7870:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -52 30
x7875:	mov [bp + 28], bp	; 3: -119 110 28
x7878:	add bp, 26	; 3: -125 -59 26
x7881:	jmp printLongDoublePlain	; 3: -23 -20 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x7884:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7888:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary2059 = 69
x7890:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x7892:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary2059 = 101
x7894:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary2059, offset 6
x7896:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x7899:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -23 30
x7904:	mov [bp + 28], bp	; 3: -119 110 28
x7907:	add bp, 26	; 3: -125 -59 26
x7910:	jmp printChar	; 3: -23 27 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary2061 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x7913:	mov ax, [bp + 24]	; 3: -117 70 24
x7916:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x7922:	cmp ax, 0	; 3: -125 -8 0
x7925:	jge printLongDoubleExpo$75	; 2: 125 5
x7927:	neg ax	; 2: -9 -40
x7929:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary2061, offset 6
x7932:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x7936:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x7941:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x7946:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 24 31
x7951:	mov [bp + 28], bp	; 3: -119 110 28
x7954:	add bp, 26	; 3: -125 -59 26
x7957:	jmp printLongInt	; 3: -23 88 -14

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x7960:	mov ax, [bp]	; 3: -117 70 0
x7963:	mov di, [bp + 4]	; 3: -117 126 4
x7966:	mov bp, [bp + 2]	; 3: -117 110 2
x7969:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; push float 0.4342944820
x7971:	fld qword [float8$0.4342944820#]	; 4: -35 6 84 31

log10$1:	; call header integral zero 0 stack no zero 1
x7975:	fstp qword [bp + 14]	; 3: -35 94 14

log10$2:	; push float x
x7978:	fld qword [bp + 6]	; 3: -35 70 6

log10$3:	; parameter x, offset 6
x7981:	fstp qword [bp + 28]	; 3: -35 94 28

log10$4:	; call function noellipse-noellipse log
x7984:	mov word [bp + 22], log10$5	; 5: -57 70 22 62 31
x7989:	mov [bp + 24], bp	; 3: -119 110 24
x7992:	add bp, 22	; 3: -125 -59 22
x7995:	nop	; 1: -112
x7996:	jmp log	; 2: -21 30

log10$5:	; post call
x7998:	fstp qword [bp + 22]	; 3: -35 94 22
x8001:	fld qword [bp + 14]	; 3: -35 70 14
x8004:	fld qword [bp + 22]	; 3: -35 70 22

log10$6:	; £temporary552 = return_value

log10$7:	; £temporary553 = 0.4342944820 * £temporary552
x8007:	fmul	; 2: -34 -55

log10$8:	; return_value = £temporary553

log10$9:	; return
x8009:	mov ax, [bp]	; 3: -117 70 0
x8012:	mov di, [bp + 4]	; 3: -117 126 4
x8015:	mov bp, [bp + 2]	; 3: -117 110 2
x8018:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$0.4342944820#:
x8020:	dq 0.4342944820	; 8: 26 125 65 21 123 -53 -37 63

log:	; push float x_plus_1
x8028:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x8031:	fldz	; 2: -39 -18

log$2:	; if x_plus_1 <= 0 goto 70
x8033:	fcompp	; 2: -34 -39
x8035:	fstsw ax	; 3: -101 -33 -32
x8038:	sahf	; 1: -98
x8039:	jae log$70	; 4: 15 -125 -44 0

log$3:	; expo = 0
x8043:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x_plus_1
x8048:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push float 0.3678794411714423216036827922
x8051:	fld qword [float8$0.3678794411714423216036827922#]	; 4: -35 6 82 32

log$6:	; if x_plus_1 >= 0.3678794411714423216036827922 goto 13
x8055:	fcompp	; 2: -34 -39
x8057:	fstsw ax	; 3: -101 -33 -32
x8060:	sahf	; 1: -98
x8061:	jbe log$13	; 2: 118 17

log$7:	; push float x_plus_1
x8063:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push float 2.7182818284590452353
x8066:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 90 32

log$9:	; £temporary535 = x_plus_1 * 2.7182818284590452353
x8070:	fmul	; 2: -34 -55

log$10:	; pop float x_plus_1
x8072:	fstp qword [bp + 6]	; 3: -35 94 6

log$11:	; --expo
x8075:	dec word [bp + 14]	; 3: -1 78 14

log$12:	; goto 4
x8078:	jmp log$4	; 2: -21 -32

log$13:	; push float x_plus_1
x8080:	fld qword [bp + 6]	; 3: -35 70 6

log$14:	; push float 0.7357588823428846432073655843
x8083:	fld qword [float8$0.7357588823428846432073655843#]	; 4: -35 6 98 32

log$15:	; if x_plus_1 <= 0.7357588823428846432073655843 goto 22
x8087:	fcompp	; 2: -34 -39
x8089:	fstsw ax	; 3: -101 -33 -32
x8092:	sahf	; 1: -98
x8093:	jae log$22	; 2: 115 17

log$16:	; push float x_plus_1
x8095:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 2.7182818284590452353
x8098:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 90 32

log$18:	; £temporary538 = x_plus_1 / 2.7182818284590452353
x8102:	fdiv	; 2: -34 -7

log$19:	; pop float x_plus_1
x8104:	fstp qword [bp + 6]	; 3: -35 94 6

log$20:	; ++expo
x8107:	inc word [bp + 14]	; 3: -1 70 14

log$21:	; goto 13
x8110:	jmp log$13	; 2: -21 -32

log$22:	; push 1
x8112:	fld1	; 2: -39 -24

log$23:	; pop float n
x8114:	fstp qword [bp + 16]	; 3: -35 94 16

log$24:	; push 1
x8117:	fld1	; 2: -39 -24

log$25:	; pop float plusMinusOne
x8119:	fstp qword [bp + 24]	; 3: -35 94 24

log$26:	; push float x_plus_1
x8122:	fld qword [bp + 6]	; 3: -35 70 6

log$27:	; push 1
x8125:	fld1	; 2: -39 -24

log$28:	; £temporary540 = x_plus_1 - 1
x8127:	fsub	; 2: -34 -23

log$29:	; pop float x
x8129:	fstp qword [bp + 32]	; 3: -35 94 32

log$30:	; push 0
x8132:	fldz	; 2: -39 -18

log$31:	; pop float sum
x8134:	fstp qword [bp + 48]	; 3: -35 94 48

log$32:	; push float x
x8137:	fld qword [bp + 32]	; 3: -35 70 32

log$33:	; pop float power
x8140:	fstp qword [bp + 56]	; 3: -35 94 56

log$34:	; push float plusMinusOne
x8143:	fld qword [bp + 24]	; 3: -35 70 24

log$35:	; push float power
x8146:	fld qword [bp + 56]	; 3: -35 70 56

log$36:	; push float n
x8149:	fld qword [bp + 16]	; 3: -35 70 16

log$37:	; push 1
x8152:	fld1	; 2: -39 -24

log$38:	; n = n + 1
x8154:	fadd	; 2: -34 -63

log$39:	; top float n
x8156:	fst qword [bp + 16]	; 3: -35 86 16

log$40:	; push 1
x8159:	fld1	; 2: -39 -24

log$41:	; n = n - 1
x8161:	fsub	; 2: -34 -23

log$42:	; £temporary542 = power / £temporary541
x8163:	fdiv	; 2: -34 -7

log$43:	; £temporary543 = plusMinusOne * £temporary542
x8165:	fmul	; 2: -34 -55

log$44:	; pop float term
x8167:	fstp qword [bp + 40]	; 3: -35 94 40

log$45:	; push float sum
x8170:	fld qword [bp + 48]	; 3: -35 70 48

log$46:	; push float term
x8173:	fld qword [bp + 40]	; 3: -35 70 40

log$47:	; £temporary544 = sum + term
x8176:	fadd	; 2: -34 -63

log$48:	; pop float sum
x8178:	fstp qword [bp + 48]	; 3: -35 94 48

log$49:	; push float power
x8181:	fld qword [bp + 56]	; 3: -35 70 56

log$50:	; push float x
x8184:	fld qword [bp + 32]	; 3: -35 70 32

log$51:	; £temporary545 = power * x
x8187:	fmul	; 2: -34 -55

log$52:	; pop float power
x8189:	fstp qword [bp + 56]	; 3: -35 94 56

log$53:	; push float plusMinusOne
x8192:	fld qword [bp + 24]	; 3: -35 70 24

log$54:	; push float -1.0
x8195:	fld qword [float8$minus1.0#]	; 4: -35 6 106 32

log$55:	; £temporary546 = plusMinusOne * -1.0
x8199:	fmul	; 2: -34 -55

log$56:	; pop float plusMinusOne
x8201:	fstp qword [bp + 24]	; 3: -35 94 24

log$57:	; call header integral zero 0 stack zero 0

log$58:	; push float term
x8204:	fld qword [bp + 40]	; 3: -35 70 40

log$59:	; parameter term, offset 6
x8207:	fstp qword [bp + 70]	; 3: -35 94 70

log$60:	; call function noellipse-noellipse fabs
x8210:	mov word [bp + 64], log$61	; 5: -57 70 64 32 32
x8215:	mov [bp + 66], bp	; 3: -119 110 66
x8218:	add bp, 64	; 3: -125 -59 64
x8221:	jmp fabs	; 3: -23 -39 -4

log$61:	; post call

log$62:	; £temporary547 = return_value

log$63:	; push float 0.000000001
x8224:	fld qword [float8$0.000000001#]	; 4: -35 6 114 32

log$64:	; if £temporary547 > 0.000000001 goto 34
x8228:	fcompp	; 2: -34 -39
x8230:	fstsw ax	; 3: -101 -33 -32
x8233:	sahf	; 1: -98
x8234:	jb log$34	; 2: 114 -93

log$65:	; push float sum
x8236:	fld qword [bp + 48]	; 3: -35 70 48

log$66:	; £temporary549 = int_to_float expo (Signed_Int -> Double)
x8239:	fild word [bp + 14]	; 3: -33 70 14

log$67:	; £temporary550 = sum + £temporary549
x8242:	fadd	; 2: -34 -63

log$68:	; return_value = £temporary550

log$69:	; return
x8244:	mov ax, [bp]	; 3: -117 70 0
x8247:	mov di, [bp + 4]	; 3: -117 126 4
x8250:	mov bp, [bp + 2]	; 3: -117 110 2
x8253:	jmp ax	; 2: -1 -32

log$70:	; errno = 6
x8255:	mov word [errno], 6	; 6: -57 6 122 32 6 0

log$71:	; push 0
x8261:	fldz	; 2: -39 -18

log$72:	; return_value = 0

log$73:	; return
x8263:	mov ax, [bp]	; 3: -117 70 0
x8266:	mov di, [bp + 4]	; 3: -117 126 4
x8269:	mov bp, [bp + 2]	; 3: -117 110 2
x8272:	jmp ax	; 2: -1 -32

log$74:	; function end log

float8$0.3678794411714423216036827922#:
x8274:	dq 0.3678794411714423216036827922	; 8: 56 -17 44 54 86 -117 -41 63

float8$2.7182818284590452353#:
x8282:	dq 2.7182818284590452353	; 8: 105 87 20 -117 10 -65 5 64

float8$0.7357588823428846432073655843#:
x8290:	dq 0.7357588823428846432073655843	; 8: 56 -17 44 54 86 -117 -25 63

float8$minus1.0#:
x8298:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8306:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x8314:	dw 0	; 2: 0 0

pow:	; push float x
x8316:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x8319:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x8321:	fcompp	; 2: -34 -39
x8323:	fstsw ax	; 3: -101 -33 -32
x8326:	sahf	; 1: -98
x8327:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x8329:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x8332:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x8335:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x8338:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x8341:	mov word [bp + 30], pow$9	; 5: -57 70 30 -93 32
x8346:	mov [bp + 32], bp	; 3: -119 110 32
x8349:	add bp, 30	; 3: -125 -59 30
x8352:	jmp log	; 3: -23 -71 -2

pow$9:	; post call
x8355:	fstp qword [bp + 30]	; 3: -35 94 30
x8358:	fld qword [bp + 22]	; 3: -35 70 22
x8361:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary578 = return_value

pow$11:	; £temporary579 = y * £temporary578
x8364:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary579, offset 6
x8366:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x8369:	mov word [bp + 22], pow$14	; 5: -57 70 22 -65 32
x8374:	mov [bp + 24], bp	; 3: -119 110 24
x8377:	add bp, 22	; 3: -125 -59 22
x8380:	nop	; 1: -112
x8381:	jmp exp	; 2: -21 30

pow$14:	; post call

pow$15:	; £temporary580 = return_value

pow$16:	; return_value = £temporary580

pow$17:	; return
x8383:	mov ax, [bp]	; 3: -117 70 0
x8386:	mov di, [bp + 4]	; 3: -117 126 4
x8389:	mov bp, [bp + 2]	; 3: -117 110 2
x8392:	jmp ax	; 2: -1 -32

pow$18:	; errno = 6
x8394:	mov word [errno], 6	; 6: -57 6 122 32 6 0

pow$19:	; push 0
x8400:	fldz	; 2: -39 -18

pow$20:	; return_value = 0

pow$21:	; return
x8402:	mov ax, [bp]	; 3: -117 70 0
x8405:	mov di, [bp + 4]	; 3: -117 126 4
x8408:	mov bp, [bp + 2]	; 3: -117 110 2
x8411:	jmp ax	; 2: -1 -32

pow$22:	; function end pow

exp:	; push 0
x8413:	fldz	; 2: -39 -18

exp$1:	; pop float n
x8415:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x8418:	fld1	; 2: -39 -24

exp$3:	; pop float faculty
x8420:	fstp qword [bp + 22]	; 3: -35 94 22

exp$4:	; push 1
x8423:	fld1	; 2: -39 -24

exp$5:	; pop float power
x8425:	fstp qword [bp + 30]	; 3: -35 94 30

exp$6:	; push 0
x8428:	fldz	; 2: -39 -18

exp$7:	; pop float sum
x8430:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x8433:	fld qword [bp + 30]	; 3: -35 70 30

exp$9:	; push float faculty
x8436:	fld qword [bp + 22]	; 3: -35 70 22

exp$10:	; £temporary525 = power / faculty
x8439:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x8441:	fstp qword [bp + 38]	; 3: -35 94 38

exp$12:	; push float sum
x8444:	fld qword [bp + 46]	; 3: -35 70 46

exp$13:	; push float term
x8447:	fld qword [bp + 38]	; 3: -35 70 38

exp$14:	; £temporary526 = sum + term
x8450:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x8452:	fstp qword [bp + 46]	; 3: -35 94 46

exp$16:	; push float power
x8455:	fld qword [bp + 30]	; 3: -35 70 30

exp$17:	; push float x
x8458:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary527 = power * x
x8461:	fmul	; 2: -34 -55

exp$19:	; pop float power
x8463:	fstp qword [bp + 30]	; 3: -35 94 30

exp$20:	; push float faculty
x8466:	fld qword [bp + 22]	; 3: -35 70 22

exp$21:	; push float n
x8469:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x8472:	fld1	; 2: -39 -24

exp$23:	; n = n + 1
x8474:	fadd	; 2: -34 -63

exp$24:	; top float n
x8476:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary529 = faculty * £temporary528
x8479:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x8481:	fstp qword [bp + 22]	; 3: -35 94 22

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x8484:	fld qword [bp + 38]	; 3: -35 70 38

exp$29:	; parameter term, offset 6
x8487:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x8490:	mov word [bp + 54], exp$31	; 5: -57 70 54 56 33
x8495:	mov [bp + 56], bp	; 3: -119 110 56
x8498:	add bp, 54	; 3: -125 -59 54
x8501:	jmp fabs	; 3: -23 -63 -5

exp$31:	; post call

exp$32:	; £temporary530 = return_value

exp$33:	; push float 0.000000001
x8504:	fld qword [float8$0.000000001#]	; 4: -35 6 114 32

exp$34:	; if £temporary530 >= 0.000000001 goto 8
x8508:	fcompp	; 2: -34 -39
x8510:	fstsw ax	; 3: -101 -33 -32
x8513:	sahf	; 1: -98
x8514:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x8516:	fld qword [bp + 46]	; 3: -35 70 46

exp$36:	; return_value = sum

exp$37:	; return
x8519:	mov ax, [bp]	; 3: -117 70 0
x8522:	mov di, [bp + 4]	; 3: -117 126 4
x8525:	mov bp, [bp + 2]	; 3: -117 110 2
x8528:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

isdigit:	; if c < 48 goto 4
x8530:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x8534:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x8536:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x8540:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary394 = 1
x8542:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x8545:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary394 = 0
x8547:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary394

isdigit$6:	; return
x8550:	mov ax, [bp]	; 3: -117 70 0
x8553:	mov di, [bp + 4]	; 3: -117 126 4
x8556:	mov bp, [bp + 2]	; 3: -117 110 2
x8559:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

$Path:
x8561:	db "C:\D\Main.com", 0	; 14: 67 58 92 68 92 77 97 105 110 46 99 111 109 0

$StackTop:
x8575:
