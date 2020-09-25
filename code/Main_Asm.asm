	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 119 33
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 119 33 0 0

    mov si, bp
    mov word [bp], $Path
    add bp, 2
    mov ax, 1
    mov bx, 129
    cmp byte [bx], 13
    je ListDone

SpaceLoop:
    cmp byte [bx], 32
    jne WordStart
    inc bx
    jmp SpaceLoop

WordStart:
    inc ax
    mov word [bp], bx
    add bp, 2

WordLoop:
    cmp byte [bx], 32
    je WordDone
    cmp byte [bx], 13
    je ListDone
    inc bx
    jmp WordLoop

WordDone:
    mov byte [bx], 0; Space -> Zero
    inc bx; Zero -> Next
    jmp SpaceLoop

ListDone:
    mov byte [bx], 0; Return -> Zero
    mov word [bp], 0
    add bp, 2
    mov word [bp], 0
    mov [bp + 6], ax
    mov [bp + 8], si

main:	; index = 129
x352:	mov word [bp + 10], 129	; 5: -57 70 10 127 0

main$1:	; if index >= 255 goto 16
x357:	cmp word [bp + 10], 255	; 5: -127 126 10 -1 0
x362:	jge main$16	; 2: 125 77

main$2:	; £temporary63 = int_to_int index (Signed_Int -> Pointer)
x364:	mov si, [bp + 10]	; 3: -117 118 10

main$3:	; £temporary64 -> £temporary63 = *£temporary63

main$4:	; c = £temporary64 -> £temporary63
x367:	mov al, [si]	; 2: -118 4
x369:	mov [bp + 12], al	; 3: -120 70 12

main$5:	; call header integral zero 0 stack zero 0

main$6:	; parameter string_25i3A2025i203C25c3E0A#, offset 6
x372:	mov word [bp + 19], string_25i3A2025i203C25c3E0A#	; 5: -57 70 19 -108 2

main$7:	; parameter index, offset 8
x377:	mov ax, [bp + 10]	; 3: -117 70 10
x380:	mov [bp + 21], ax	; 3: -119 70 21

main$8:	; £temporary65 = int_to_int c (Signed_Char -> Signed_Int)
x383:	mov al, [bp + 12]	; 3: -118 70 12
x386:	and ax, 255	; 3: 37 -1 0
x389:	cmp al, 0	; 2: 60 0
x391:	jge main$9	; 2: 125 4
x393:	neg al	; 2: -10 -40
x395:	neg ax	; 2: -9 -40

main$9:	; parameter £temporary65, offset 10
x397:	mov [bp + 23], ax	; 3: -119 70 23

main$10:	; £temporary66 = int_to_int c (Signed_Char -> Signed_Int)
x400:	mov al, [bp + 12]	; 3: -118 70 12
x403:	and ax, 255	; 3: 37 -1 0
x406:	cmp al, 0	; 2: 60 0
x408:	jge main$11	; 2: 125 4
x410:	neg al	; 2: -10 -40
x412:	neg ax	; 2: -9 -40

main$11:	; parameter £temporary66, offset 12
x414:	mov [bp + 25], ax	; 3: -119 70 25

main$12:	; call function noellipse-ellipse printf, extra 0
x417:	mov word [bp + 13], main$13	; 5: -57 70 13 -76 1
x422:	mov [bp + 15], bp	; 3: -119 110 15
x425:	add bp, 13	; 3: -125 -59 13
x428:	mov di, bp	; 2: -119 -17
x430:	add di, 6	; 3: -125 -57 6
x433:	jmp printf	; 3: -23 6 1

main$13:	; post call

main$14:	; ++index
x436:	inc word [bp + 10]	; 3: -1 70 10

main$15:	; goto 1
x439:	jmp main$1	; 2: -21 -84

main$16:	; call header integral zero 0 stack zero 0

main$17:	; parameter string_0Aargc3A2025i0A#, offset 6
x441:	mov word [bp + 18], string_0Aargc3A2025i0A#	; 5: -57 70 18 -95 2

main$18:	; parameter argc, offset 8
x446:	mov ax, [bp + 6]	; 3: -117 70 6
x449:	mov [bp + 20], ax	; 3: -119 70 20

main$19:	; call function noellipse-ellipse printf, extra 0
x452:	mov word [bp + 12], main$20	; 5: -57 70 12 -41 1
x457:	mov [bp + 14], bp	; 3: -119 110 14
x460:	add bp, 12	; 3: -125 -59 12
x463:	mov di, bp	; 2: -119 -17
x465:	add di, 2	; 3: -125 -57 2
x468:	jmp printf	; 3: -23 -29 0

main$20:	; post call

main$21:	; index = 0
x471:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$22:	; if index >= argc goto 34
x476:	mov ax, [bp + 6]	; 3: -117 70 6
x479:	cmp [bp + 10], ax	; 3: 57 70 10
x482:	jge main$34	; 2: 125 54

main$23:	; call header integral zero 0 stack zero 0

main$24:	; parameter string_25i3A203C25s3E0A#, offset 6
x484:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 -84 2

main$25:	; parameter index, offset 8
x489:	mov ax, [bp + 10]	; 3: -117 70 10
x492:	mov [bp + 20], ax	; 3: -119 70 20

main$26:	; £temporary72 = index * 2
x495:	mov ax, [bp + 10]	; 3: -117 70 10
x498:	xor dx, dx	; 2: 49 -46
x500:	mul word [int2$2#]	; 4: -9 38 -74 2

main$27:	; £temporary73 = argv + £temporary72
x504:	mov si, [bp + 8]	; 3: -117 118 8
x507:	add si, ax	; 2: 1 -58

main$28:	; £temporary71 -> £temporary73 = *£temporary73

main$29:	; parameter £temporary71 -> £temporary73, offset 10
x509:	mov ax, [si]	; 2: -117 4
x511:	mov [bp + 22], ax	; 3: -119 70 22

main$30:	; call function noellipse-ellipse printf, extra 0
x514:	mov word [bp + 12], main$31	; 5: -57 70 12 21 2
x519:	mov [bp + 14], bp	; 3: -119 110 14
x522:	add bp, 12	; 3: -125 -59 12
x525:	mov di, bp	; 2: -119 -17
x527:	add di, 4	; 3: -125 -57 4
x530:	jmp printf	; 3: -23 -91 0

main$31:	; post call

main$32:	; ++index
x533:	inc word [bp + 10]	; 3: -1 70 10

main$33:	; goto 22
x536:	jmp main$22	; 2: -21 -62

main$34:	; call header integral zero 0 stack zero 0

main$35:	; parameter string_0A#, offset 6
x538:	mov word [bp + 18], string_0A#	; 5: -57 70 18 -72 2

main$36:	; call function noellipse-ellipse printf, extra 0
x543:	mov word [bp + 12], main$37	; 5: -57 70 12 47 2
x548:	mov [bp + 14], bp	; 3: -119 110 14
x551:	add bp, 12	; 3: -125 -59 12
x554:	mov di, bp	; 2: -119 -17
x556:	jmp printf	; 3: -23 -117 0

main$37:	; post call

main$38:	; index = 0
x559:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$39:	; £temporary77 = index * 2
x564:	mov ax, [bp + 10]	; 3: -117 70 10
x567:	xor dx, dx	; 2: 49 -46
x569:	mul word [int2$2#]	; 4: -9 38 -74 2

main$40:	; £temporary78 = argv + £temporary77
x573:	mov si, [bp + 8]	; 3: -117 118 8
x576:	add si, ax	; 2: 1 -58

main$41:	; £temporary76 -> £temporary78 = *£temporary78

main$42:	; if £temporary76 -> £temporary78 == 0 goto 54
x578:	cmp word [si], 0	; 3: -125 60 0
x581:	je main$54	; 2: 116 54

main$43:	; call header integral zero 0 stack zero 0

main$44:	; parameter string_25i3A203C25s3E0A#, offset 6
x583:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 -84 2

main$45:	; parameter index, offset 8
x588:	mov ax, [bp + 10]	; 3: -117 70 10
x591:	mov [bp + 20], ax	; 3: -119 70 20

main$46:	; £temporary82 = index * 2
x594:	mov ax, [bp + 10]	; 3: -117 70 10
x597:	xor dx, dx	; 2: 49 -46
x599:	mul word [int2$2#]	; 4: -9 38 -74 2

main$47:	; £temporary83 = argv + £temporary82
x603:	mov si, [bp + 8]	; 3: -117 118 8
x606:	add si, ax	; 2: 1 -58

main$48:	; £temporary81 -> £temporary83 = *£temporary83

main$49:	; parameter £temporary81 -> £temporary83, offset 10
x608:	mov ax, [si]	; 2: -117 4
x610:	mov [bp + 22], ax	; 3: -119 70 22

main$50:	; call function noellipse-ellipse printf, extra 0
x613:	mov word [bp + 12], main$51	; 5: -57 70 12 120 2
x618:	mov [bp + 14], bp	; 3: -119 110 14
x621:	add bp, 12	; 3: -125 -59 12
x624:	mov di, bp	; 2: -119 -17
x626:	add di, 4	; 3: -125 -57 4
x629:	nop	; 1: -112
x630:	jmp printf	; 2: -21 66

main$51:	; post call

main$52:	; ++index
x632:	inc word [bp + 10]	; 3: -1 70 10

main$53:	; goto 39
x635:	jmp main$39	; 2: -21 -73

main$54:	; return
x637:	cmp word [bp], 0	; 4: -125 126 0 0
x641:	je return_label$0	; 2: 116 11
x643:	mov ax, [bp]	; 3: -117 70 0
x646:	mov di, [bp + 4]	; 3: -117 126 4
x649:	mov bp, [bp + 2]	; 3: -117 110 2
x652:	jmp ax	; 2: -1 -32

return_label$0:
x654:	mov al, 0	; 2: -80 0
x656:	mov ah, 76	; 2: -76 76
x658:	int 33	; 2: -51 33

main$55:	; function end main

string_25i3A2025i203C25c3E0A#:
x660:	db "%i: %i <%c>", 10, 0	; 13: 37 105 58 32 37 105 32 60 37 99 62 10 0

string_0Aargc3A2025i0A#:
x673:	db 10, "argc: %i", 10, 0	; 11: 10 97 114 103 99 58 32 37 105 10 0

string_25i3A203C25s3E0A#:
x684:	db "%i: <%s>", 10, 0	; 10: 37 105 58 32 60 37 115 62 10 0

int2$2#:
x694:	dw 2	; 2: 2 0

string_0A#:
x696:	db 10, 0	; 2: 10 0

printf:	; £temporary2474 = &format
x698:	mov si, bp	; 2: -119 -18
x700:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2475 = int_to_int £temporary2474 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2475 + 2
x703:	add si, 2	; 3: -125 -58 2
x706:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x709:	mov ax, [bp + 6]	; 3: -117 70 6
x712:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x715:	mov ax, [di + 8]	; 3: -117 69 8
x718:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x721:	mov word [di + 10], printf$7	; 5: -57 69 10 -28 2
x726:	mov [di + 12], bp	; 3: -119 109 12
x729:	mov [di + 14], di	; 3: -119 125 14
x732:	add di, 10	; 3: -125 -57 10
x735:	mov bp, di	; 2: -119 -3
x737:	nop	; 1: -112
x738:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2477 = return_value

printf$9:	; return_value = £temporary2477

printf$10:	; return
x740:	mov ax, [bp]	; 3: -117 70 0
x743:	mov di, [bp + 4]	; 3: -117 126 4
x746:	mov bp, [bp + 2]	; 3: -117 110 2
x749:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x751:	mov ax, [stdout]	; 3: -95 26 3
x754:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x757:	mov ax, [bp + 6]	; 3: -117 70 6
x760:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x763:	mov ax, [bp + 8]	; 3: -117 70 8
x766:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x769:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 15 3
x774:	mov [bp + 12], bp	; 3: -119 110 12
x777:	add bp, 10	; 3: -125 -59 10
x780:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2481 = return_value

vprintf$7:	; return_value = £temporary2481

vprintf$8:	; return
x783:	mov ax, [bp]	; 3: -117 70 0
x786:	mov di, [bp + 4]	; 3: -117 126 4
x789:	mov bp, [bp + 2]	; 3: -117 110 2
x792:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x794:	dw g_fileArray + 29	; 2: 57 3

g_fileArray:
x796:	dw 1	; 2: 1 0
x798:	dw 0	; 2: 0 0
x800:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x825:	dw 1	; 2: 1 0
x827:	dw 1	; 2: 1 0
x829:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x854:	dw 1	; 2: 1 0
x856:	dw 2	; 2: 2 0
x858:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x883:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x1376:	mov word [g_outStatus], 0	; 6: -57 6 -111 5 0 0

vfprintf$1:	; £temporary2493 = int_to_int outStream (Pointer -> Pointer)
x1382:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2493
x1385:	mov [g_outDevice], ax	; 3: -93 -109 5

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x1388:	mov ax, [bp + 8]	; 3: -117 70 8
x1391:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x1394:	mov ax, [bp + 10]	; 3: -117 70 10
x1397:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x1400:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 -122 5
x1405:	mov [bp + 14], bp	; 3: -119 110 14
x1408:	add bp, 12	; 3: -125 -59 12
x1411:	nop	; 1: -112
x1412:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2494 = return_value

vfprintf$9:	; return_value = £temporary2494

vfprintf$10:	; return
x1414:	mov ax, [bp]	; 3: -117 70 0
x1417:	mov di, [bp + 4]	; 3: -117 126 4
x1420:	mov bp, [bp + 2]	; 3: -117 110 2
x1423:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x1425:	db 0, 0	; 2: 0 0

g_outDevice:
x1427:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x1429:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x1434:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x1439:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x1444:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x1449:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x1454:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x1459:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x1464:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x1469:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x1474:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x1479:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x1484:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x1489:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x1494:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x1499:	mov word [g_outChars], 0	; 6: -57 6 -27 10 0 0

printFormat$15:	; index = 0
x1505:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2328 = format + index
x1510:	mov si, [bp + 6]	; 3: -117 118 6
x1513:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2327 -> £temporary2328 = *£temporary2328

printFormat$18:	; if £temporary2327 -> £temporary2328 == 0 goto 282
x1516:	cmp byte [si], 0	; 3: -128 60 0
x1519:	je printFormat$282	; 4: 15 -124 -52 4

printFormat$19:	; £temporary2332 = format + index
x1523:	mov si, [bp + 6]	; 3: -117 118 6
x1526:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2331 -> £temporary2332 = *£temporary2332

printFormat$21:	; c = £temporary2331 -> £temporary2332
x1529:	mov al, [si]	; 2: -118 4
x1531:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 260
x1534:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x1538:	je printFormat$260	; 4: 15 -124 81 4

printFormat$23:	; case c == 43 goto 52
x1542:	mov al, [bp + 40]	; 3: -118 70 40
x1545:	cmp al, 43	; 2: 60 43
x1547:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x1551:	cmp al, 45	; 2: 60 45
x1553:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x1557:	cmp al, 32	; 2: 60 32
x1559:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x1563:	cmp al, 48	; 2: 60 48
x1565:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x1569:	cmp al, 35	; 2: 60 35
x1571:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x1575:	cmp al, 46	; 2: 60 46
x1577:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x1581:	cmp al, 42	; 2: 60 42
x1583:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x1587:	cmp al, 104	; 2: 60 104
x1589:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x1593:	cmp al, 108	; 2: 60 108
x1595:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x1599:	cmp al, 76	; 2: 60 76
x1601:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x1605:	cmp al, 37	; 2: 60 37
x1607:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x1611:	cmp al, 110	; 2: 60 110
x1613:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x1617:	cmp al, 112	; 2: 60 112
x1619:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x1623:	cmp al, 71	; 2: 60 71
x1625:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x1629:	cmp al, 103	; 2: 60 103
x1631:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x1635:	cmp al, 69	; 2: 60 69
x1637:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x1641:	cmp al, 101	; 2: 60 101
x1643:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x1647:	cmp al, 102	; 2: 60 102
x1649:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x1653:	cmp al, 115	; 2: 60 115
x1655:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x1659:	cmp al, 99	; 2: 60 99
x1661:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x1663:	cmp al, 88	; 2: 60 88
x1665:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x1667:	cmp al, 120	; 2: 60 120
x1669:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x1671:	cmp al, 111	; 2: 60 111
x1673:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x1675:	cmp al, 98	; 2: 60 98
x1677:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x1679:	cmp al, 117	; 2: 60 117
x1681:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x1683:	cmp al, 100	; 2: 60 100
x1685:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x1687:	cmp al, 105	; 2: 60 105
x1689:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 237
x1691:	jmp printFormat$237	; 3: -23 70 3

printFormat$52:	; plus = 1
x1694:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 280
x1699:	jmp printFormat$280	; 3: -23 19 4

printFormat$54:	; minus = 1
x1702:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 280
x1707:	jmp printFormat$280	; 3: -23 11 4

printFormat$56:	; space = 1
x1710:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 280
x1715:	jmp printFormat$280	; 3: -23 3 4

printFormat$58:	; zero = 1
x1718:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 280
x1723:	jmp printFormat$280	; 3: -23 -5 3

printFormat$60:	; grid = 1
x1726:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 280
x1731:	jmp printFormat$280	; 3: -23 -13 3

printFormat$62:	; period = 1
x1734:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 280
x1739:	jmp printFormat$280	; 3: -23 -21 3

printFormat$64:	; if period != 0 goto 67
x1742:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x1746:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x1748:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 280
x1753:	jmp printFormat$280	; 3: -23 -35 3

printFormat$67:	; precision = -1
x1756:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 280
x1761:	jmp printFormat$280	; 3: -23 -43 3

printFormat$69:	; shortInt = 1
x1764:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 280
x1769:	jmp printFormat$280	; 3: -23 -51 3

printFormat$71:	; longInt = 1
x1772:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 280
x1777:	jmp printFormat$280	; 3: -23 -59 3

printFormat$73:	; longDouble = 1
x1780:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 280
x1785:	jmp printFormat$280	; 3: -23 -67 3

printFormat$75:	; if minus == 0 goto 106
x1788:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x1792:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x1796:	mov ax, [g_outChars]	; 3: -95 -27 10
x1799:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2336 = format + index
x1802:	mov si, [bp + 6]	; 3: -117 118 6
x1805:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2335 -> £temporary2336 = *£temporary2336

printFormat$80:	; £temporary2337 = &£temporary2335 -> £temporary2336

printFormat$81:	; parameter £temporary2337, offset 6
x1808:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x1811:	mov ax, [bp + 8]	; 3: -117 70 8
x1814:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x1817:	mov ax, [bp + 18]	; 3: -117 70 18
x1820:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x1823:	mov ax, [bp + 22]	; 3: -117 70 22
x1826:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x1829:	mov ax, [bp + 26]	; 3: -117 70 26
x1832:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2338 = &width
x1835:	mov si, bp	; 2: -119 -18
x1837:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2338, offset 16
x1840:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x1843:	mov ax, [bp + 14]	; 3: -117 70 14
x1846:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x1849:	mov ax, [bp + 34]	; 3: -117 70 34
x1852:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x1855:	mov ax, [bp + 36]	; 3: -117 70 36
x1858:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x1861:	mov ax, [bp + 38]	; 3: -117 70 38
x1864:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x1867:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x1872:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x1877:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 99 7
x1882:	mov [bp + 45], bp	; 3: -119 110 45
x1885:	add bp, 43	; 3: -125 -59 43
x1888:	jmp printArgument	; 3: -23 -122 3

printFormat$95:	; post call

printFormat$96:	; £temporary2339 = return_value

printFormat$97:	; arg_list = £temporary2339
x1891:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2341 = g_outChars - startChars
x1894:	mov ax, [g_outChars]	; 3: -95 -27 10
x1897:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x1900:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2341 >= width goto 235
x1903:	cmp ax, [bp + 12]	; 3: 59 70 12
x1906:	jge printFormat$235	; 4: 15 -115 102 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x1910:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x1914:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 -120 7
x1919:	mov [bp + 47], bp	; 3: -119 110 47
x1922:	add bp, 45	; 3: -125 -59 45
x1925:	jmp printChar	; 3: -23 116 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x1928:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 182
x1930:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x1934:	je printFormat$182	; 4: 15 -124 82 1

printFormat$107:	; startChars = g_outChars
x1938:	mov ax, [g_outChars]	; 3: -95 -27 10
x1941:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x1944:	mov ax, [g_outStatus]	; 3: -95 -111 5
x1947:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x1950:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x1955:	mov word [g_outStatus], 2	; 6: -57 6 -111 5 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2345 = format + index
x1961:	mov si, [bp + 6]	; 3: -117 118 6
x1964:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2344 -> £temporary2345 = *£temporary2345

printFormat$114:	; £temporary2346 = &£temporary2344 -> £temporary2345

printFormat$115:	; parameter £temporary2346, offset 6
x1967:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x1970:	mov ax, [bp + 8]	; 3: -117 70 8
x1973:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x1976:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x1981:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x1986:	mov ax, [bp + 26]	; 3: -117 70 26
x1989:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2347 = &width
x1992:	mov si, bp	; 2: -119 -18
x1994:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2347, offset 16
x1997:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x2000:	mov ax, [bp + 14]	; 3: -117 70 14
x2003:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x2006:	mov ax, [bp + 34]	; 3: -117 70 34
x2009:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x2012:	mov ax, [bp + 36]	; 3: -117 70 36
x2015:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x2018:	mov ax, [bp + 38]	; 3: -117 70 38
x2021:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x2024:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2348 = &negative
x2029:	mov si, bp	; 2: -119 -18
x2031:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2348, offset 28
x2034:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x2037:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 3 8
x2042:	mov [bp + 49], bp	; 3: -119 110 49
x2045:	add bp, 47	; 3: -125 -59 47
x2048:	jmp printArgument	; 3: -23 -26 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x2051:	mov ax, [bp + 43]	; 3: -117 70 43
x2054:	mov [g_outStatus], ax	; 3: -93 -111 5

printFormat$132:	; field = g_outChars - startChars
x2057:	mov ax, [g_outChars]	; 3: -95 -27 10
x2060:	sub ax, [bp + 41]	; 3: 43 70 41
x2063:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x2066:	mov ax, [bp + 41]	; 3: -117 70 41
x2069:	mov [g_outChars], ax	; 3: -93 -27 10

printFormat$134:	; if negative == 0 goto 141
x2072:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x2076:	je printFormat$141	; 2: 116 23

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 45, offset 6
x2078:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$137:	; call function noellipse-noellipse printChar
x2082:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 48 8
x2087:	mov [bp + 51], bp	; 3: -119 110 51
x2090:	add bp, 49	; 3: -125 -59 49
x2093:	jmp printChar	; 3: -23 -52 9

printFormat$138:	; post call

printFormat$139:	; ++field
x2096:	inc word [bp + 47]	; 3: -1 70 47

printFormat$140:	; goto 154
x2099:	jmp printFormat$154	; 2: -21 57

printFormat$141:	; if plus == 0 goto 148
x2101:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x2105:	je printFormat$148	; 2: 116 23

printFormat$142:	; call header integral zero 0 stack zero 0

printFormat$143:	; parameter 43, offset 6
x2107:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$144:	; call function noellipse-noellipse printChar
x2111:	mov word [bp + 49], printFormat$145	; 5: -57 70 49 77 8
x2116:	mov [bp + 51], bp	; 3: -119 110 51
x2119:	add bp, 49	; 3: -125 -59 49
x2122:	jmp printChar	; 3: -23 -81 9

printFormat$145:	; post call

printFormat$146:	; ++field
x2125:	inc word [bp + 47]	; 3: -1 70 47

printFormat$147:	; goto 154
x2128:	jmp printFormat$154	; 2: -21 28

printFormat$148:	; if space == 0 goto 154
x2130:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x2134:	je printFormat$154	; 2: 116 22

printFormat$149:	; call header integral zero 0 stack zero 0

printFormat$150:	; parameter 32, offset 6
x2136:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$151:	; call function noellipse-noellipse printChar
x2140:	mov word [bp + 49], printFormat$152	; 5: -57 70 49 106 8
x2145:	mov [bp + 51], bp	; 3: -119 110 51
x2148:	add bp, 49	; 3: -125 -59 49
x2151:	jmp printChar	; 3: -23 -110 9

printFormat$152:	; post call

printFormat$153:	; £temporary2360 = field + 1
x2154:	mov ax, [bp + 47]	; 3: -117 70 47
x2157:	inc ax	; 1: 64

printFormat$154:	; ++field
x2158:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; if £temporary2360 >= width goto 161
x2161:	cmp ax, [bp + 12]	; 3: 59 70 12
x2164:	jge printFormat$161	; 2: 125 20

printFormat$156:	; call header integral zero 0 stack zero 0

printFormat$157:	; parameter 48, offset 6
x2166:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$158:	; call function noellipse-noellipse printChar
x2170:	mov word [bp + 49], printFormat$159	; 5: -57 70 49 -120 8
x2175:	mov [bp + 51], bp	; 3: -119 110 51
x2178:	add bp, 49	; 3: -125 -59 49
x2181:	jmp printChar	; 3: -23 116 9

printFormat$159:	; post call

printFormat$160:	; goto 154
x2184:	jmp printFormat$154	; 2: -21 -28

printFormat$161:	; call header integral zero 0 stack zero 0

printFormat$162:	; £temporary2364 = format + index
x2186:	mov si, [bp + 6]	; 3: -117 118 6
x2189:	add si, [bp + 10]	; 3: 3 118 10

printFormat$163:	; £temporary2363 -> £temporary2364 = *£temporary2364

printFormat$164:	; £temporary2365 = &£temporary2363 -> £temporary2364

printFormat$165:	; parameter £temporary2365, offset 6
x2192:	mov [bp + 55], si	; 3: -119 118 55

printFormat$166:	; parameter arg_list, offset 8
x2195:	mov ax, [bp + 8]	; 3: -117 70 8
x2198:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$167:	; parameter 0, offset 10
x2201:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$168:	; parameter 0, offset 12
x2206:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$169:	; parameter grid, offset 14
x2211:	mov ax, [bp + 26]	; 3: -117 70 26
x2214:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$170:	; parameter 0, offset 16
x2217:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$171:	; parameter precision, offset 18
x2222:	mov ax, [bp + 14]	; 3: -117 70 14
x2225:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$172:	; parameter shortInt, offset 20
x2228:	mov ax, [bp + 34]	; 3: -117 70 34
x2231:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$173:	; parameter longInt, offset 22
x2234:	mov ax, [bp + 36]	; 3: -117 70 36
x2237:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$174:	; parameter longDouble, offset 24
x2240:	mov ax, [bp + 38]	; 3: -117 70 38
x2243:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$175:	; parameter 0, offset 26
x2246:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$176:	; parameter 0, offset 28
x2251:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$177:	; call function noellipse-noellipse printArgument
x2256:	mov word [bp + 49], printFormat$178	; 5: -57 70 49 -34 8
x2261:	mov [bp + 51], bp	; 3: -119 110 51
x2264:	add bp, 49	; 3: -125 -59 49
x2267:	jmp printArgument	; 3: -23 11 2

printFormat$178:	; post call

printFormat$179:	; £temporary2366 = return_value

printFormat$180:	; arg_list = £temporary2366
x2270:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$181:	; goto 235
x2273:	jmp printFormat$235	; 3: -23 -8 0

printFormat$182:	; startChars = g_outChars
x2276:	mov ax, [g_outChars]	; 3: -95 -27 10
x2279:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$183:	; oldOutStatus = g_outStatus
x2282:	mov ax, [g_outStatus]	; 3: -95 -111 5
x2285:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$184:	; g_outStatus = 2
x2288:	mov word [g_outStatus], 2	; 6: -57 6 -111 5 2 0

printFormat$185:	; call header integral zero 0 stack zero 0

printFormat$186:	; £temporary2368 = format + index
x2294:	mov si, [bp + 6]	; 3: -117 118 6
x2297:	add si, [bp + 10]	; 3: 3 118 10

printFormat$187:	; £temporary2367 -> £temporary2368 = *£temporary2368

printFormat$188:	; £temporary2369 = &£temporary2367 -> £temporary2368

printFormat$189:	; parameter £temporary2369, offset 6
x2300:	mov [bp + 51], si	; 3: -119 118 51

printFormat$190:	; parameter arg_list, offset 8
x2303:	mov ax, [bp + 8]	; 3: -117 70 8
x2306:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$191:	; parameter plus, offset 10
x2309:	mov ax, [bp + 18]	; 3: -117 70 18
x2312:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$192:	; parameter space, offset 12
x2315:	mov ax, [bp + 22]	; 3: -117 70 22
x2318:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$193:	; parameter grid, offset 14
x2321:	mov ax, [bp + 26]	; 3: -117 70 26
x2324:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$194:	; £temporary2370 = &width
x2327:	mov si, bp	; 2: -119 -18
x2329:	add si, 12	; 3: -125 -58 12

printFormat$195:	; parameter £temporary2370, offset 16
x2332:	mov [bp + 61], si	; 3: -119 118 61

printFormat$196:	; parameter precision, offset 18
x2335:	mov ax, [bp + 14]	; 3: -117 70 14
x2338:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$197:	; parameter shortInt, offset 20
x2341:	mov ax, [bp + 34]	; 3: -117 70 34
x2344:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$198:	; parameter longInt, offset 22
x2347:	mov ax, [bp + 36]	; 3: -117 70 36
x2350:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$199:	; parameter longDouble, offset 24
x2353:	mov ax, [bp + 38]	; 3: -117 70 38
x2356:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$200:	; parameter 1, offset 26
x2359:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$201:	; parameter 0, offset 28
x2364:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$202:	; call function noellipse-noellipse printArgument
x2369:	mov word [bp + 45], printFormat$203	; 5: -57 70 45 79 9
x2374:	mov [bp + 47], bp	; 3: -119 110 47
x2377:	add bp, 45	; 3: -125 -59 45
x2380:	jmp printArgument	; 3: -23 -102 1

printFormat$203:	; post call

printFormat$204:	; g_outStatus = oldOutStatus
x2383:	mov ax, [bp + 43]	; 3: -117 70 43
x2386:	mov [g_outStatus], ax	; 3: -93 -111 5

printFormat$205:	; field = g_outChars - startChars
x2389:	mov ax, [g_outChars]	; 3: -95 -27 10
x2392:	sub ax, [bp + 41]	; 3: 43 70 41
x2395:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$206:	; g_outChars = startChars
x2398:	mov ax, [bp + 41]	; 3: -117 70 41
x2401:	mov [g_outChars], ax	; 3: -93 -27 10

printFormat$207:	; £temporary2373 = field
x2404:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$208:	; ++field
x2407:	inc word [bp + 45]	; 3: -1 70 45

printFormat$209:	; if £temporary2373 >= width goto 215
x2410:	cmp ax, [bp + 12]	; 3: 59 70 12
x2413:	jge printFormat$215	; 2: 125 20

printFormat$210:	; call header integral zero 0 stack zero 0

printFormat$211:	; parameter 32, offset 6
x2415:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$212:	; call function noellipse-noellipse printChar
x2419:	mov word [bp + 47], printFormat$213	; 5: -57 70 47 -127 9
x2424:	mov [bp + 49], bp	; 3: -119 110 49
x2427:	add bp, 47	; 3: -125 -59 47
x2430:	jmp printChar	; 3: -23 123 8

printFormat$213:	; post call

printFormat$214:	; goto 207
x2433:	jmp printFormat$207	; 2: -21 -31

printFormat$215:	; call header integral zero 0 stack zero 0

printFormat$216:	; £temporary2377 = format + index
x2435:	mov si, [bp + 6]	; 3: -117 118 6
x2438:	add si, [bp + 10]	; 3: 3 118 10

printFormat$217:	; £temporary2376 -> £temporary2377 = *£temporary2377

printFormat$218:	; £temporary2378 = &£temporary2376 -> £temporary2377

printFormat$219:	; parameter £temporary2378, offset 6
x2441:	mov [bp + 53], si	; 3: -119 118 53

printFormat$220:	; parameter arg_list, offset 8
x2444:	mov ax, [bp + 8]	; 3: -117 70 8
x2447:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$221:	; parameter plus, offset 10
x2450:	mov ax, [bp + 18]	; 3: -117 70 18
x2453:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$222:	; parameter space, offset 12
x2456:	mov ax, [bp + 22]	; 3: -117 70 22
x2459:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$223:	; parameter grid, offset 14
x2462:	mov ax, [bp + 26]	; 3: -117 70 26
x2465:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$224:	; parameter 0, offset 16
x2468:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$225:	; parameter precision, offset 18
x2473:	mov ax, [bp + 14]	; 3: -117 70 14
x2476:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$226:	; parameter shortInt, offset 20
x2479:	mov ax, [bp + 34]	; 3: -117 70 34
x2482:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$227:	; parameter longInt, offset 22
x2485:	mov ax, [bp + 36]	; 3: -117 70 36
x2488:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$228:	; parameter longDouble, offset 24
x2491:	mov ax, [bp + 38]	; 3: -117 70 38
x2494:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$229:	; parameter 1, offset 26
x2497:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$230:	; parameter 0, offset 28
x2502:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$231:	; call function noellipse-noellipse printArgument
x2507:	mov word [bp + 47], printFormat$232	; 5: -57 70 47 -39 9
x2512:	mov [bp + 49], bp	; 3: -119 110 49
x2515:	add bp, 47	; 3: -125 -59 47
x2518:	jmp printArgument	; 3: -23 16 1

printFormat$232:	; post call

printFormat$233:	; £temporary2379 = return_value

printFormat$234:	; arg_list = £temporary2379
x2521:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$235:	; percent = 0
x2524:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$236:	; goto 280
x2529:	jmp printFormat$280	; 3: -23 -43 0

printFormat$237:	; value = 0
x2532:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$238:	; call header integral zero 0 stack zero 0

printFormat$239:	; £temporary2382 = int_to_int c (Signed_Char -> Signed_Int)
x2537:	mov al, [bp + 40]	; 3: -118 70 40
x2540:	and ax, 255	; 3: 37 -1 0
x2543:	cmp al, 0	; 2: 60 0
x2545:	jge printFormat$240	; 2: 125 4
x2547:	neg al	; 2: -10 -40
x2549:	neg ax	; 2: -9 -40

printFormat$240:	; parameter £temporary2382, offset 6
x2551:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$241:	; call function noellipse-noellipse isdigit
x2554:	mov word [bp + 43], printFormat$242	; 5: -57 70 43 8 10
x2559:	mov [bp + 45], bp	; 3: -119 110 45
x2562:	add bp, 43	; 3: -125 -59 43
x2565:	jmp isdigit	; 3: -23 66 23

printFormat$242:	; post call

printFormat$243:	; £temporary2383 = return_value

printFormat$244:	; if £temporary2383 == 0 goto 254
x2568:	cmp bx, 0	; 3: -125 -5 0
x2571:	je printFormat$254	; 2: 116 49

printFormat$245:	; £temporary2384 = value * 10
x2573:	mov ax, [bp + 41]	; 3: -117 70 41
x2576:	xor dx, dx	; 2: 49 -46
x2578:	imul word [int2$10#]	; 4: -9 46 -25 10

printFormat$246:	; £temporary2385 = c - 48
x2582:	mov bl, [bp + 40]	; 3: -118 94 40
x2585:	sub bl, 48	; 3: -128 -21 48

printFormat$247:	; £temporary2386 = int_to_int £temporary2385 (Signed_Char -> Signed_Int)
x2588:	and bx, 255	; 4: -127 -29 -1 0
x2592:	cmp bl, 0	; 3: -128 -5 0
x2595:	jge printFormat$248	; 2: 125 4
x2597:	neg bl	; 2: -10 -37
x2599:	neg bx	; 2: -9 -37

printFormat$248:	; value = £temporary2384 + £temporary2386
x2601:	add ax, bx	; 2: 1 -40
x2603:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$249:	; £temporary2388 = index + 1
x2606:	mov ax, [bp + 10]	; 3: -117 70 10
x2609:	inc ax	; 1: 64

printFormat$250:	; £temporary2390 = format + £temporary2388
x2610:	mov si, [bp + 6]	; 3: -117 118 6
x2613:	add si, ax	; 2: 1 -58

printFormat$251:	; £temporary2389 -> £temporary2390 = *£temporary2390

printFormat$252:	; c = £temporary2389 -> £temporary2390
x2615:	mov al, [si]	; 2: -118 4
x2617:	mov [bp + 40], al	; 3: -120 70 40

printFormat$253:	; goto 238
x2620:	jmp printFormat$238	; 2: -21 -85

printFormat$254:	; --index
x2622:	dec word [bp + 10]	; 3: -1 78 10

printFormat$255:	; if period != 0 goto 258
x2625:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2629:	jne printFormat$258	; 2: 117 8

printFormat$256:	; width = value
x2631:	mov ax, [bp + 41]	; 3: -117 70 41
x2634:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$257:	; goto 280
x2637:	jmp printFormat$280	; 2: -21 106

printFormat$258:	; precision = value
x2639:	mov ax, [bp + 41]	; 3: -117 70 41
x2642:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$259:	; goto 280
x2645:	jmp printFormat$280	; 2: -21 98

printFormat$260:	; if c != 37 goto 276
x2647:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x2651:	jne printFormat$276	; 2: 117 72

printFormat$261:	; percent = 1
x2653:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$262:	; plus = 0
x2658:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$263:	; minus = 0
x2663:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$264:	; space = 0
x2668:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$265:	; zero = 0
x2673:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$266:	; grid = 0
x2678:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$267:	; widthStar = 0
x2683:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$268:	; period = 0
x2688:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$269:	; precisionStar = 0
x2693:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$270:	; shortInt = 0
x2698:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$271:	; longInt = 0
x2703:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$272:	; longDouble = 0
x2708:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$273:	; width = 0
x2713:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$274:	; precision = 0
x2718:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$275:	; goto 280
x2723:	jmp printFormat$280	; 2: -21 20

printFormat$276:	; call header integral zero 0 stack zero 0

printFormat$277:	; parameter c, offset 6
x2725:	mov al, [bp + 40]	; 3: -118 70 40
x2728:	mov [bp + 47], al	; 3: -120 70 47

printFormat$278:	; call function noellipse-noellipse printChar
x2731:	mov word [bp + 41], printFormat$279	; 5: -57 70 41 -71 10
x2736:	mov [bp + 43], bp	; 3: -119 110 43
x2739:	add bp, 41	; 3: -125 -59 41
x2742:	jmp printChar	; 3: -23 67 7

printFormat$279:	; post call

printFormat$280:	; ++index
x2745:	inc word [bp + 10]	; 3: -1 70 10

printFormat$281:	; goto 16
x2748:	jmp printFormat$16	; 3: -23 39 -5

printFormat$282:	; if g_outStatus != 1 goto 288
x2751:	cmp word [g_outStatus], 1	; 5: -125 62 -111 5 1
x2756:	jne printFormat$288	; 2: 117 16

printFormat$283:	; £temporary2399 = int_to_int g_outDevice (Pointer -> Pointer)
x2758:	mov ax, [g_outDevice]	; 3: -95 -109 5

printFormat$284:	; outString = £temporary2399
x2761:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$285:	; £temporary2401 = outString + g_outChars
x2764:	mov si, [bp + 40]	; 3: -117 118 40
x2767:	add si, [g_outChars]	; 4: 3 54 -27 10

printFormat$286:	; £temporary2400 -> £temporary2401 = *£temporary2401

printFormat$287:	; £temporary2400 -> £temporary2401 = 0
x2771:	mov byte [si], 0	; 3: -58 4 0

printFormat$288:	; return_value = g_outChars
x2774:	mov bx, [g_outChars]	; 4: -117 30 -27 10

printFormat$289:	; return
x2778:	mov ax, [bp]	; 3: -117 70 0
x2781:	mov di, [bp + 4]	; 3: -117 126 4
x2784:	mov bp, [bp + 2]	; 3: -117 110 2
x2787:	jmp ax	; 2: -1 -32

printFormat$290:	; function end printFormat

g_outChars:
x2789:	db 0, 0	; 2: 0 0

int2$10#:
x2791:	dw 10	; 2: 10 0

printArgument:	; £temporary2101 -> format = *format
x2793:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2101 -> format
x2796:	mov al, [si]	; 2: -118 4
x2798:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x2801:	mov al, [bp + 30]	; 3: -118 70 30
x2804:	cmp al, 100	; 2: 60 100
x2806:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x2808:	cmp al, 105	; 2: 60 105
x2810:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x2812:	cmp al, 99	; 2: 60 99
x2814:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x2818:	cmp al, 115	; 2: 60 115
x2820:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x2824:	cmp al, 88	; 2: 60 88
x2826:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x2830:	cmp al, 120	; 2: 60 120
x2832:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x2836:	cmp al, 98	; 2: 60 98
x2838:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x2842:	cmp al, 111	; 2: 60 111
x2844:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x2848:	cmp al, 117	; 2: 60 117
x2850:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x2854:	cmp al, 71	; 2: 60 71
x2856:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x2860:	cmp al, 103	; 2: 60 103
x2862:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x2866:	cmp al, 69	; 2: 60 69
x2868:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x2872:	cmp al, 101	; 2: 60 101
x2874:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x2878:	cmp al, 102	; 2: 60 102
x2880:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x2884:	cmp al, 112	; 2: 60 112
x2886:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x2890:	cmp al, 110	; 2: 60 110
x2892:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x2896:	cmp al, 37	; 2: 60 37
x2898:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x2902:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x2905:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x2909:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x2911:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2103 = arg_list - 2
x2915:	mov si, [bp + 8]	; 3: -117 118 8
x2918:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2104 = int_to_int £temporary2103 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2105 -> £temporary2104 = *£temporary2104

printArgument$26:	; £temporary2106 = int_to_int £temporary2105 -> £temporary2104 (Signed_Int -> Signed_Short_Int)
x2921:	mov ax, [si]	; 2: -117 4
x2923:	cmp ax, 0	; 3: -125 -8 0
x2926:	jge printArgument$27	; 2: 125 4
x2928:	neg ax	; 2: -9 -40
x2930:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2107 = int_to_int £temporary2106 (Signed_Short_Int -> Signed_Long_Int)
x2932:	and eax, 255	; 6: 102 37 -1 0 0 0
x2938:	cmp al, 0	; 2: 60 0
x2940:	jge printArgument$28	; 2: 125 5
x2942:	neg al	; 2: -10 -40
x2944:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2107
x2947:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x2951:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x2953:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x2957:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x2959:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2109 = arg_list - 4
x2963:	mov si, [bp + 8]	; 3: -117 118 8
x2966:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2110 = int_to_int £temporary2109 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2111 -> £temporary2110 = *£temporary2110

printArgument$35:	; longValue = £temporary2111 -> £temporary2110
x2969:	mov eax, [si]	; 3: 102 -117 4
x2972:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x2976:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x2978:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2113 = arg_list - 2
x2982:	mov si, [bp + 8]	; 3: -117 118 8
x2985:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2114 = int_to_int £temporary2113 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2115 -> £temporary2114 = *£temporary2114

printArgument$41:	; £temporary2116 = int_to_int £temporary2115 -> £temporary2114 (Signed_Int -> Signed_Long_Int)
x2988:	mov ax, [si]	; 2: -117 4
x2990:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2996:	cmp ax, 0	; 3: -125 -8 0
x2999:	jge printArgument$42	; 2: 125 5
x3001:	neg ax	; 2: -9 -40
x3003:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2116
x3006:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x3010:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3014:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2120 -> negativePtr = *negativePtr
x3016:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x3019:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x3024:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2122 = 1
x3026:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x3029:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2122 = 0
x3031:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2120 -> negativePtr = £temporary2122
x3034:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x3036:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3040:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x3042:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3046:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x3050:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -8 11
x3055:	mov [bp + 50], bp	; 3: -119 110 50
x3058:	add bp, 48	; 3: -125 -59 48
x3061:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2125 = return_value

printArgument$56:	; longValue = £temporary2125
x3064:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x3068:	mov ax, [bp + 8]	; 3: -117 70 8
x3071:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x3074:	mov ax, [bp + 16]	; 3: -117 70 16
x3077:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2126 = &precision
x3080:	mov si, bp	; 2: -119 -18
x3082:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2126, offset 10
x3085:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x3088:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 30 12
x3093:	mov [bp + 50], bp	; 3: -119 110 50
x3096:	add bp, 48	; 3: -125 -59 48
x3099:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2127 = return_value

printArgument$65:	; arg_list = £temporary2127
x3102:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x3105:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3109:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x3113:	mov ax, [bp + 10]	; 3: -117 70 10
x3116:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x3119:	mov ax, [bp + 12]	; 3: -117 70 12
x3122:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x3125:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 67 12
x3130:	mov [bp + 50], bp	; 3: -119 110 50
x3133:	add bp, 48	; 3: -125 -59 48
x3136:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x3139:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x3142:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2130 = arg_list - 2
x3146:	mov si, [bp + 8]	; 3: -117 118 8
x3149:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2131 = int_to_int £temporary2130 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2132 -> £temporary2131 = *£temporary2131

printArgument$77:	; £temporary2133 = int_to_int £temporary2132 -> £temporary2131 (Signed_Int -> Signed_Char)
x3152:	mov ax, [si]	; 2: -117 4
x3154:	cmp ax, 0	; 3: -125 -8 0
x3157:	jge printArgument$78	; 2: 125 4
x3159:	neg ax	; 2: -9 -40
x3161:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2133
x3163:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x3166:	mov ax, [bp + 8]	; 3: -117 70 8
x3169:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x3172:	mov ax, [bp + 16]	; 3: -117 70 16
x3175:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2134 = &precision
x3178:	mov si, bp	; 2: -119 -18
x3180:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2134, offset 10
x3183:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x3186:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -128 12
x3191:	mov [bp + 46], bp	; 3: -119 110 46
x3194:	add bp, 44	; 3: -125 -59 44
x3197:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2135 = return_value

printArgument$87:	; arg_list = £temporary2135
x3200:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x3203:	mov al, [bp + 31]	; 3: -118 70 31
x3206:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x3209:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -105 12
x3214:	mov [bp + 46], bp	; 3: -119 110 46
x3217:	add bp, 44	; 3: -125 -59 44
x3220:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x3223:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x3226:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2138 = arg_list - 2
x3230:	mov si, [bp + 8]	; 3: -117 118 8
x3233:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2139 = int_to_int £temporary2138 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2140 -> £temporary2139 = *£temporary2139

printArgument$97:	; stringValue = £temporary2140 -> £temporary2139
x3236:	mov ax, [si]	; 2: -117 4
x3238:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x3241:	mov ax, [bp + 8]	; 3: -117 70 8
x3244:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x3247:	mov ax, [bp + 16]	; 3: -117 70 16
x3250:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2141 = &precision
x3253:	mov si, bp	; 2: -119 -18
x3255:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2141, offset 10
x3258:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x3261:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -53 12
x3266:	mov [bp + 48], bp	; 3: -119 110 48
x3269:	add bp, 46	; 3: -125 -59 46
x3272:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2142 = return_value

printArgument$106:	; arg_list = £temporary2142
x3275:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x3278:	mov ax, [bp + 44]	; 3: -117 70 44
x3281:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x3284:	mov ax, [bp + 18]	; 3: -117 70 18
x3287:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x3290:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -24 12
x3295:	mov [bp + 48], bp	; 3: -119 110 48
x3298:	add bp, 46	; 3: -125 -59 46
x3301:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x3304:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x3307:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x3311:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2158 = 10
x3313:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x3319:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x3321:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x3325:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2154 = 8
x3327:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x3333:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x3335:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x3339:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2150 = 2
x3341:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x3347:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2150 = 16
x3349:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2154 = £temporary2150

printArgument$124:	; £temporary2158 = £temporary2154

printArgument$125:	; base = £temporary2158
x3355:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x3359:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3363:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x3365:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2160 = arg_list - 2
x3369:	mov si, [bp + 8]	; 3: -117 118 8
x3372:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2161 = int_to_int £temporary2160 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2162 -> £temporary2161 = *£temporary2161

printArgument$131:	; £temporary2163 = int_to_int £temporary2162 -> £temporary2161 (Unsigned_Int -> Unsigned_Short_Int)
x3375:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2164 = int_to_int £temporary2163 (Unsigned_Short_Int -> Unsigned_Long_Int)
x3377:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2164
x3383:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x3387:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x3389:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3393:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x3395:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2166 = arg_list - 4
x3399:	mov si, [bp + 8]	; 3: -117 118 8
x3402:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2167 = int_to_int £temporary2166 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2168 -> £temporary2167 = *£temporary2167

printArgument$140:	; value = £temporary2168 -> £temporary2167
x3405:	mov eax, [si]	; 3: 102 -117 4
x3408:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x3412:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x3414:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2170 = arg_list - 2
x3418:	mov si, [bp + 8]	; 3: -117 118 8
x3421:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2171 = int_to_int £temporary2170 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2172 -> £temporary2171 = *£temporary2171

printArgument$146:	; £temporary2173 = int_to_int £temporary2172 -> £temporary2171 (Unsigned_Int -> Unsigned_Long_Int)
x3424:	mov ax, [si]	; 2: -117 4
x3426:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2173
x3432:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x3436:	mov ax, [bp + 8]	; 3: -117 70 8
x3439:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x3442:	mov ax, [bp + 16]	; 3: -117 70 16
x3445:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2176 = &precision
x3448:	mov si, bp	; 2: -119 -18
x3450:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2176, offset 10
x3453:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x3456:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -114 13
x3461:	mov [bp + 54], bp	; 3: -119 110 54
x3464:	add bp, 52	; 3: -125 -59 52
x3467:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2177 = return_value

printArgument$156:	; arg_list = £temporary2177
x3470:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x3473:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x3477:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x3481:	mov ax, [bp + 10]	; 3: -117 70 10
x3484:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x3487:	mov ax, [bp + 12]	; 3: -117 70 12
x3490:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x3493:	mov ax, [bp + 14]	; 3: -117 70 14
x3496:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x3499:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3503:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2178 = int_to_int c (Signed_Char -> Signed_Int)
x3507:	mov al, [bp + 30]	; 3: -118 70 30
x3510:	and ax, 255	; 3: 37 -1 0
x3513:	cmp al, 0	; 2: 60 0
x3515:	jge printArgument$165	; 2: 125 4
x3517:	neg al	; 2: -10 -40
x3519:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2178, offset 26
x3521:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x3524:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -46 13
x3529:	mov [bp + 74], bp	; 3: -119 110 74
x3532:	add bp, 72	; 3: -125 -59 72
x3535:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2179 = return_value

printArgument$169:	; parameter £temporary2179, offset 20
x3538:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x3541:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -29 13
x3546:	mov [bp + 54], bp	; 3: -119 110 54
x3549:	add bp, 52	; 3: -125 -59 52
x3552:	jmp printUnsignedLong	; 3: -23 34 12

printArgument$171:	; post call

printArgument$172:	; goto 359
x3555:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x3558:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3562:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x3564:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2182 = arg_list - 8
x3568:	mov si, [bp + 8]	; 3: -117 118 8
x3571:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2183 = int_to_int £temporary2182 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2184 -> £temporary2183 = *£temporary2183

printArgument$178:	; push float £temporary2184 -> £temporary2183
x3574:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x3576:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x3579:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x3582:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x3585:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x3590:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x3595:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x3600:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x3605:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 35 14
x3610:	mov [bp + 46], bp	; 3: -119 110 46
x3613:	add bp, 44	; 3: -125 -59 44
x3616:	jmp printLongDoublePlain	; 3: -23 -115 13

printArgument$188:	; post call

printArgument$189:	; goto 196
x3619:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x3621:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2187 = arg_list - 8
x3625:	mov si, [bp + 8]	; 3: -117 118 8
x3628:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2188 = int_to_int £temporary2187 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2189 -> £temporary2188 = *£temporary2188

printArgument$194:	; push float £temporary2189 -> £temporary2188
x3631:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x3633:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x3636:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3640:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2193 -> negativePtr = *negativePtr
x3642:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x3645:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x3648:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x3650:	fcompp	; 2: -34 -39
x3652:	fstsw ax	; 3: -101 -33 -32
x3655:	sahf	; 1: -98
x3656:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2195 = 1
x3658:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x3661:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2195 = 0
x3663:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2193 -> negativePtr = £temporary2195
x3666:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x3668:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3672:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x3674:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x3677:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x3680:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 110 14
x3685:	mov [bp + 46], bp	; 3: -119 110 46
x3688:	add bp, 44	; 3: -125 -59 44
x3691:	jmp fabs	; 3: -23 -125 14

printArgument$210:	; post call

printArgument$211:	; £temporary2198 = return_value

printArgument$212:	; pop float longDoubleValue
x3694:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x3697:	mov ax, [bp + 8]	; 3: -117 70 8
x3700:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x3703:	mov ax, [bp + 16]	; 3: -117 70 16
x3706:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2199 = &precision
x3709:	mov si, bp	; 2: -119 -18
x3711:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2199, offset 10
x3714:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x3717:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -109 14
x3722:	mov [bp + 46], bp	; 3: -119 110 46
x3725:	add bp, 44	; 3: -125 -59 44
x3728:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2200 = return_value

printArgument$221:	; arg_list = £temporary2200
x3731:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x3734:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x3738:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x3740:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x3743:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x3746:	mov ax, [bp + 10]	; 3: -117 70 10
x3749:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x3752:	mov ax, [bp + 12]	; 3: -117 70 12
x3755:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x3758:	mov ax, [bp + 14]	; 3: -117 70 14
x3761:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x3764:	mov ax, [bp + 18]	; 3: -117 70 18
x3767:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x3770:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -56 14
x3775:	mov [bp + 46], bp	; 3: -119 110 46
x3778:	add bp, 44	; 3: -125 -59 44
x3781:	jmp printLongDoublePlain	; 3: -23 -24 12

printArgument$231:	; post call

printArgument$232:	; goto 359
x3784:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2203 = int_to_int c (Signed_Char -> Signed_Int)
x3787:	mov al, [bp + 30]	; 3: -118 70 30
x3790:	and ax, 255	; 3: 37 -1 0
x3793:	cmp al, 0	; 2: 60 0
x3795:	jge printArgument$235	; 2: 125 4
x3797:	neg al	; 2: -10 -40
x3799:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2203, offset 6
x3801:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x3804:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -22 14
x3809:	mov [bp + 46], bp	; 3: -119 110 46
x3812:	add bp, 44	; 3: -125 -59 44
x3815:	jmp tolower	; 3: -23 41 14

printArgument$237:	; post call

printArgument$238:	; £temporary2204 = return_value

printArgument$239:	; if £temporary2204 != 101 goto 257
x3818:	cmp bx, 101	; 3: -125 -5 101
x3821:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x3823:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x3826:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x3829:	mov ax, [bp + 10]	; 3: -117 70 10
x3832:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x3835:	mov ax, [bp + 12]	; 3: -117 70 12
x3838:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x3841:	mov ax, [bp + 14]	; 3: -117 70 14
x3844:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x3847:	mov ax, [bp + 18]	; 3: -117 70 18
x3850:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2206 = int_to_int c (Signed_Char -> Signed_Int)
x3853:	mov al, [bp + 30]	; 3: -118 70 30
x3856:	and ax, 255	; 3: 37 -1 0
x3859:	cmp al, 0	; 2: 60 0
x3861:	jge printArgument$249	; 2: 125 4
x3863:	neg al	; 2: -10 -40
x3865:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2206, offset 28
x3867:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x3870:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 44 15
x3875:	mov [bp + 68], bp	; 3: -119 110 68
x3878:	add bp, 66	; 3: -125 -59 66
x3881:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2207 = return_value

printArgument$253:	; parameter £temporary2207, offset 22
x3884:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x3887:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 61 15
x3892:	mov [bp + 46], bp	; 3: -119 110 46
x3895:	add bp, 44	; 3: -125 -59 44
x3898:	jmp printLongDoubleExpo	; 3: -23 119 14

printArgument$255:	; post call

printArgument$256:	; goto 359
x3901:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x3904:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x3907:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x3910:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 84 15
x3915:	mov [bp + 46], bp	; 3: -119 110 46
x3918:	add bp, 44	; 3: -125 -59 44
x3921:	jmp fabs	; 3: -23 -99 13

printArgument$262:	; post call

printArgument$263:	; £temporary2209 = return_value

printArgument$264:	; parameter £temporary2209, offset 6
x3924:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x3927:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 101 15
x3932:	mov [bp + 46], bp	; 3: -119 110 46
x3935:	add bp, 44	; 3: -125 -59 44
x3938:	jmp log10	; 3: -23 -74 15

printArgument$266:	; post call

printArgument$267:	; £temporary2210 = return_value

printArgument$268:	; £temporary2211 = float_to_int £temporary2210 (Double -> Signed_Int)
x3941:	fistp word [container2bytes#]	; 4: -33 30 -5 16
x3945:	mov ax, [container2bytes#]	; 3: -95 -5 16

printArgument$269:	; expo = £temporary2211
x3948:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x3951:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x3955:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x3957:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x3961:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x3963:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x3966:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x3969:	mov ax, [bp + 10]	; 3: -117 70 10
x3972:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x3975:	mov ax, [bp + 12]	; 3: -117 70 12
x3978:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x3981:	mov ax, [bp + 14]	; 3: -117 70 14
x3984:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x3987:	mov ax, [bp + 18]	; 3: -117 70 18
x3990:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x3993:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -89 15
x3998:	mov [bp + 48], bp	; 3: -119 110 48
x4001:	add bp, 46	; 3: -125 -59 46
x4004:	jmp printLongDoublePlain	; 3: -23 9 12

printArgument$280:	; post call

printArgument$281:	; goto 359
x4007:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x4010:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x4013:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x4016:	mov ax, [bp + 10]	; 3: -117 70 10
x4019:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x4022:	mov ax, [bp + 12]	; 3: -117 70 12
x4025:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x4028:	mov ax, [bp + 14]	; 3: -117 70 14
x4031:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x4034:	mov ax, [bp + 18]	; 3: -117 70 18
x4037:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2216 = int_to_int c (Signed_Char -> Signed_Int)
x4040:	mov al, [bp + 30]	; 3: -118 70 30
x4043:	and ax, 255	; 3: 37 -1 0
x4046:	cmp al, 0	; 2: 60 0
x4048:	jge printArgument$291	; 2: 125 4
x4050:	neg al	; 2: -10 -40
x4052:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2216, offset 28
x4054:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x4057:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -25 15
x4062:	mov [bp + 70], bp	; 3: -119 110 70
x4065:	add bp, 68	; 3: -125 -59 68
x4068:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2217 = return_value

printArgument$295:	; parameter £temporary2217, offset 22
x4071:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x4074:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -8 15
x4079:	mov [bp + 48], bp	; 3: -119 110 48
x4082:	add bp, 46	; 3: -125 -59 46
x4085:	jmp printLongDoubleExpo	; 3: -23 -68 13

printArgument$297:	; post call

printArgument$298:	; goto 359
x4088:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x4091:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2220 = arg_list - 2
x4095:	mov si, [bp + 8]	; 3: -117 118 8
x4098:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2221 = int_to_int £temporary2220 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2222 -> £temporary2221 = *£temporary2221

printArgument$303:	; ptrValue = £temporary2222 -> £temporary2221
x4101:	mov ax, [si]	; 2: -117 4
x4103:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x4106:	mov ax, [bp + 8]	; 3: -117 70 8
x4109:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x4112:	mov ax, [bp + 16]	; 3: -117 70 16
x4115:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2223 = &precision
x4118:	mov si, bp	; 2: -119 -18
x4120:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2223, offset 10
x4123:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x4126:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 44 16
x4131:	mov [bp + 46], bp	; 3: -119 110 46
x4134:	add bp, 44	; 3: -125 -59 44
x4137:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2224 = return_value

printArgument$312:	; arg_list = £temporary2224
x4140:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2225 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x4143:	mov ax, [bp + 42]	; 3: -117 70 42
x4146:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2225, offset 6
x4152:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x4156:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x4161:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x4166:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x4171:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x4179:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x4184:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 102 16
x4189:	mov [bp + 46], bp	; 3: -119 110 46
x4192:	add bp, 44	; 3: -125 -59 44
x4195:	jmp printUnsignedLong	; 3: -23 -97 9

printArgument$322:	; post call

printArgument$323:	; goto 359
x4198:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x4201:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2228 = arg_list - 2
x4205:	mov si, [bp + 8]	; 3: -117 118 8
x4208:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2229 = int_to_int £temporary2228 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2230 -> £temporary2229 = *£temporary2229

printArgument$328:	; ptrValue = £temporary2230 -> £temporary2229
x4211:	mov ax, [si]	; 2: -117 4
x4213:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x4216:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2232 = arg_list - 2
x4220:	mov si, [bp + 8]	; 3: -117 118 8
x4223:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2233 = int_to_int £temporary2232 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2234 -> £temporary2233 = *£temporary2233

printArgument$333:	; intPtr = £temporary2234 -> £temporary2233
x4226:	mov ax, [si]	; 2: -117 4
x4228:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x4231:	mov ax, [bp + 8]	; 3: -117 70 8
x4234:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x4237:	mov ax, [bp + 16]	; 3: -117 70 16
x4240:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2235 = &precision
x4243:	mov si, bp	; 2: -119 -18
x4245:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2235, offset 10
x4248:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x4251:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -87 16
x4256:	mov [bp + 46], bp	; 3: -119 110 46
x4259:	add bp, 44	; 3: -125 -59 44
x4262:	nop	; 1: -112
x4263:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2236 = return_value

printArgument$342:	; arg_list = £temporary2236
x4265:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2237 -> intPtr = *intPtr
x4268:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2237 -> intPtr = g_outChars
x4271:	mov ax, [g_outChars]	; 3: -95 -27 10
x4274:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x4276:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x4278:	mov ax, [bp + 8]	; 3: -117 70 8
x4281:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x4284:	mov ax, [bp + 16]	; 3: -117 70 16
x4287:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2238 = &precision
x4290:	mov si, bp	; 2: -119 -18
x4292:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2238, offset 10
x4295:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x4298:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -40 16
x4303:	mov [bp + 46], bp	; 3: -119 110 46
x4306:	add bp, 44	; 3: -125 -59 44
x4309:	nop	; 1: -112
x4310:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2239 = return_value

printArgument$354:	; arg_list = £temporary2239
x4312:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x4315:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x4319:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -19 16
x4324:	mov [bp + 46], bp	; 3: -119 110 46
x4327:	add bp, 44	; 3: -125 -59 44
x4330:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x4333:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x4336:	mov ax, [bp]	; 3: -117 70 0
x4339:	mov di, [bp + 4]	; 3: -117 126 4
x4342:	mov bp, [bp + 2]	; 3: -117 110 2
x4345:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x4347:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x4349:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4354:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2705 = -value
x4356:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x4360:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2709 = £temporary2705

labs$3:	; goto 5
x4363:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2709 = value
x4365:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2709

labs$6:	; return
x4369:	mov ax, [bp]	; 3: -117 70 0
x4372:	mov di, [bp + 4]	; 3: -117 126 4
x4375:	mov bp, [bp + 2]	; 3: -117 110 2
x4378:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x4380:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4384:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary2083 -> widthPtr = *widthPtr
x4386:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary2083 -> widthPtr != -1 goto 9
x4389:	cmp word [si], -1	; 3: -125 60 -1
x4392:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary2086 -> widthPtr = *widthPtr
x4394:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x4397:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary2088 = arg_list - 2
x4401:	mov di, [bp + 6]	; 3: -117 126 6
x4404:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary2089 = int_to_int £temporary2088 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary2090 -> £temporary2089 = *£temporary2089

checkWidthAndPrecision$8:	; £temporary2086 -> widthPtr = £temporary2090 -> £temporary2089
x4407:	mov ax, [di]	; 2: -117 5
x4409:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x4411:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4415:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary2092 -> precisionPtr = *precisionPtr
x4417:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary2092 -> precisionPtr != -1 goto 18
x4420:	cmp word [si], -1	; 3: -125 60 -1
x4423:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2095 -> precisionPtr = *precisionPtr
x4425:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x4428:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2097 = arg_list - 2
x4432:	mov di, [bp + 6]	; 3: -117 126 6
x4435:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2098 = int_to_int £temporary2097 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2099 -> £temporary2098 = *£temporary2098

checkWidthAndPrecision$17:	; £temporary2095 -> precisionPtr = £temporary2099 -> £temporary2098
x4438:	mov ax, [di]	; 2: -117 5
x4440:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x4442:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x4445:	mov ax, [bp]	; 3: -117 70 0
x4448:	mov di, [bp + 4]	; 3: -117 126 4
x4451:	mov bp, [bp + 2]	; 3: -117 110 2
x4454:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x4456:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4461:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1938 = -longValue
x4463:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4467:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1938
x4470:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x4474:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x4478:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -116 17
x4483:	mov [bp + 16], bp	; 3: -119 110 16
x4486:	add bp, 14	; 3: -125 -59 14
x4489:	nop	; 1: -112
x4490:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x4492:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x4494:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4498:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x4500:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x4504:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -90 17
x4509:	mov [bp + 16], bp	; 3: -119 110 16
x4512:	add bp, 14	; 3: -125 -59 14
x4515:	nop	; 1: -112
x4516:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x4518:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x4520:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4524:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x4526:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x4530:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -64 17
x4535:	mov [bp + 16], bp	; 3: -119 110 16
x4538:	add bp, 14	; 3: -125 -59 14
x4541:	nop	; 1: -112
x4542:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x4544:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4549:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x4551:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x4555:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -39 17
x4560:	mov [bp + 16], bp	; 3: -119 110 16
x4563:	add bp, 14	; 3: -125 -59 14
x4566:	nop	; 1: -112
x4567:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x4569:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x4571:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4575:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x4579:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -15 17
x4584:	mov [bp + 16], bp	; 3: -119 110 16
x4587:	add bp, 14	; 3: -125 -59 14
x4590:	nop	; 1: -112
x4591:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x4593:	mov ax, [bp]	; 3: -117 70 0
x4596:	mov di, [bp + 4]	; 3: -117 126 4
x4599:	mov bp, [bp + 2]	; 3: -117 110 2
x4602:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x4604:	mov ax, [g_outStatus]	; 3: -95 -111 5
x4607:	cmp ax, 0	; 3: -125 -8 0
x4610:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x4612:	cmp ax, 1	; 3: -125 -8 1
x4615:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x4617:	cmp ax, 2	; 3: -125 -8 2
x4620:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x4622:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1880 = int_to_int g_outDevice (Pointer -> Pointer)
x4624:	mov ax, [g_outDevice]	; 3: -95 -109 5

printChar$6:	; stream = £temporary1880
x4627:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x4630:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1883 -> stream = *stream, offset 2
x4632:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1883 -> stream
x4635:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x4638:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1886 = &c
x4641:	mov dx, bp	; 2: -119 -22
x4643:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1886

printChar$13:	; interrupt 33
x4646:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x4648:	inc word [g_outChars]	; 4: -1 6 -27 10

printChar$15:	; goto 25
x4652:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1888 = int_to_int g_outDevice (Pointer -> Pointer)
x4654:	mov ax, [g_outDevice]	; 3: -95 -109 5

printChar$17:	; outString = £temporary1888
x4657:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1889 = g_outChars
x4660:	mov ax, [g_outChars]	; 3: -95 -27 10

printChar$19:	; ++g_outChars
x4663:	inc word [g_outChars]	; 4: -1 6 -27 10

printChar$20:	; £temporary1891 = outString + £temporary1889
x4667:	mov si, [bp + 9]	; 3: -117 118 9
x4670:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1890 -> £temporary1891 = *£temporary1891

printChar$22:	; £temporary1890 -> £temporary1891 = c
x4672:	mov al, [bp + 6]	; 3: -118 70 6
x4675:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x4677:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x4679:	inc word [g_outChars]	; 4: -1 6 -27 10

printChar$25:	; return
x4683:	mov ax, [bp]	; 3: -117 70 0
x4686:	mov di, [bp + 4]	; 3: -117 126 4
x4689:	mov bp, [bp + 2]	; 3: -117 110 2
x4692:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x4694:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4699:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1928 = longValue % 10
x4701:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4705:	xor edx, edx	; 3: 102 49 -46
x4708:	idiv dword [int4$10#]	; 5: 102 -9 62 -64 18

printLongIntRec$2:	; £temporary1929 = int_to_int £temporary1928 (Signed_Long_Int -> Signed_Int)
x4713:	cmp edx, 0	; 4: 102 -125 -6 0
x4717:	jge printLongIntRec$3	; 2: 125 5
x4719:	neg edx	; 3: 102 -9 -38
x4722:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1929
x4724:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1930 = longValue / 10
x4727:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4731:	xor edx, edx	; 3: 102 49 -46
x4734:	idiv dword [int4$10#]	; 5: 102 -9 62 -64 18

printLongIntRec$6:	; parameter £temporary1930, offset 6
x4739:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x4743:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -107 18
x4748:	mov [bp + 14], bp	; 3: -119 110 14
x4751:	add bp, 12	; 3: -125 -59 12
x4754:	nop	; 1: -112
x4755:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1932 = digit + 48
x4757:	mov ax, [bp + 10]	; 3: -117 70 10
x4760:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1933 = int_to_int £temporary1932 (Signed_Int -> Signed_Char)
x4763:	cmp ax, 0	; 3: -125 -8 0
x4766:	jge printLongIntRec$12	; 2: 125 4
x4768:	neg ax	; 2: -9 -40
x4770:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1933, offset 6
x4772:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x4775:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -75 18
x4780:	mov [bp + 14], bp	; 3: -119 110 14
x4783:	add bp, 12	; 3: -125 -59 12
x4786:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x4789:	mov ax, [bp]	; 3: -117 70 0
x4792:	mov di, [bp + 4]	; 3: -117 126 4
x4795:	mov bp, [bp + 2]	; 3: -117 110 2
x4798:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x4800:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x4804:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x4808:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x4810:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4814:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x4816:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1897 = s + index
x4821:	mov si, [bp + 6]	; 3: -117 118 6
x4824:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1896 -> £temporary1897 = *£temporary1897

printString$5:	; if £temporary1896 -> £temporary1897 == 0 goto 53
x4827:	cmp byte [si], 0	; 3: -128 60 0
x4830:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1901 = s + index
x4834:	mov si, [bp + 6]	; 3: -117 118 6
x4837:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1900 -> £temporary1901 = *£temporary1901

printString$9:	; parameter £temporary1900 -> £temporary1901, offset 6
x4840:	mov al, [si]	; 2: -118 4
x4842:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x4845:	mov word [bp + 12], printString$11	; 5: -57 70 12 -5 18
x4850:	mov [bp + 14], bp	; 3: -119 110 14
x4853:	add bp, 12	; 3: -125 -59 12
x4856:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x4859:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x4862:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x4864:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1903 = precision
x4869:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x4872:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1903 <= 0 goto 53
x4875:	cmp ax, 0	; 3: -125 -8 0
x4878:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1906 = s + index
x4882:	mov si, [bp + 6]	; 3: -117 118 6
x4885:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1905 -> £temporary1906 = *£temporary1906

printString$20:	; if £temporary1905 -> £temporary1906 == 0 goto 53
x4888:	cmp byte [si], 0	; 3: -128 60 0
x4891:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1911 = s + index
x4895:	mov si, [bp + 6]	; 3: -117 118 6
x4898:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1910 -> £temporary1911 = *£temporary1911

printString$24:	; parameter £temporary1910 -> £temporary1911, offset 6
x4901:	mov al, [si]	; 2: -118 4
x4903:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x4906:	mov word [bp + 12], printString$26	; 5: -57 70 12 56 19
x4911:	mov [bp + 14], bp	; 3: -119 110 14
x4914:	add bp, 12	; 3: -125 -59 12
x4917:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x4920:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x4923:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x4925:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x4929:	mov word [bp + 10], printString$32	; 5: -57 70 10 79 19
x4934:	mov [bp + 12], bp	; 3: -119 110 12
x4937:	add bp, 10	; 3: -125 -59 10
x4940:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x4943:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x4947:	mov word [bp + 10], printString$36	; 5: -57 70 10 97 19
x4952:	mov [bp + 12], bp	; 3: -119 110 12
x4955:	add bp, 10	; 3: -125 -59 10
x4958:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x4961:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x4965:	mov word [bp + 10], printString$40	; 5: -57 70 10 115 19
x4970:	mov [bp + 12], bp	; 3: -119 110 12
x4973:	add bp, 10	; 3: -125 -59 10
x4976:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x4979:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x4983:	mov word [bp + 10], printString$44	; 5: -57 70 10 -123 19
x4988:	mov [bp + 12], bp	; 3: -119 110 12
x4991:	add bp, 10	; 3: -125 -59 10
x4994:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x4997:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x5001:	mov word [bp + 10], printString$48	; 5: -57 70 10 -105 19
x5006:	mov [bp + 12], bp	; 3: -119 110 12
x5009:	add bp, 10	; 3: -125 -59 10
x5012:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x5015:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x5019:	mov word [bp + 10], printString$52	; 5: -57 70 10 -87 19
x5024:	mov [bp + 12], bp	; 3: -119 110 12
x5027:	add bp, 10	; 3: -125 -59 10
x5030:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x5033:	mov ax, [bp]	; 3: -117 70 0
x5036:	mov di, [bp + 4]	; 3: -117 126 4
x5039:	mov bp, [bp + 2]	; 3: -117 110 2
x5042:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x5044:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -62 19
x5049:	mov [bp + 10], bp	; 3: -119 110 10
x5052:	add bp, 8	; 3: -125 -59 8
x5055:	nop	; 1: -112
x5056:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary371 = return_value

isupper$4:	; localeConvPtr = £temporary371
x5058:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x5061:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5065:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary373 -> localeConvPtr = *localeConvPtr, offset 14
x5067:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary373 -> localeConvPtr, offset 6
x5070:	mov ax, [si + 14]	; 3: -117 68 14
x5073:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x5076:	mov ax, [bp + 6]	; 3: -117 70 6
x5079:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x5082:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -24 19
x5087:	mov [bp + 12], bp	; 3: -119 110 12
x5090:	add bp, 10	; 3: -125 -59 10
x5093:	jmp strchr	; 3: -23 -51 5

isupper$11:	; post call

isupper$12:	; £temporary374 = return_value

isupper$13:	; if £temporary374 == 0 goto 16
x5096:	cmp bx, 0	; 3: -125 -5 0
x5099:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary376 = 1
x5101:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x5104:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary376 = 0
x5106:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary376

isupper$18:	; return
x5109:	mov ax, [bp]	; 3: -117 70 0
x5112:	mov di, [bp + 4]	; 3: -117 126 4
x5115:	mov bp, [bp + 2]	; 3: -117 110 2
x5118:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x5120:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x5124:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x5126:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x5130:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary380 = 1
x5132:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x5135:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary380 = 0
x5137:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary380

isupper$25:	; return
x5140:	mov ax, [bp]	; 3: -117 70 0
x5143:	mov di, [bp + 4]	; 3: -117 126 4
x5146:	mov bp, [bp + 2]	; 3: -117 110 2
x5149:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x5151:	cmp word [@22$g_currStructPtr], 0	; 5: -125 62 61 20 0
x5156:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary520 -> g_currStructPtr = *g_currStructPtr, offset 2
x5158:	mov si, [@22$g_currStructPtr]	; 4: -117 54 61 20

localeconv$2:	; £temporary524 = £temporary520 -> g_currStructPtr
x5162:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x5165:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary524 = 0
x5167:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary524

localeconv$6:	; return
x5170:	mov ax, [bp]	; 3: -117 70 0
x5173:	mov di, [bp + 4]	; 3: -117 126 4
x5176:	mov bp, [bp + 2]	; 3: -117 110 2
x5179:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@22$g_currStructPtr:
x5181:	dw @20$sArray	; 2: 63 20

@20$sArray:
x5183:	dw string_# ; 2: 79 20
x5185:	dw @19$sw_EN_utf8	; 2: 80 20
x5187:	dw string_C# ; 2: 61 23
x5189:	dw @13$en_US_utf8	; 2: 63 23
x5191:	dw string_US# ; 2: -81 25
x5193:	dw @13$en_US_utf8	; 2: 63 23
x5195:	dw string_SE# ; 2: -78 25
x5197:	dw @19$sw_EN_utf8	; 2: 80 20

string_#:
x5199:	db 0	; 1: 0

@19$sw_EN_utf8:
x5200:	dw 1	; 2: 1 0
x5202:	dw 2	; 2: 2 0
x5204:	dw @14$swShortDayList ; 2: 98 20
x5206:	dw @15$swLongDayList ; 2: -116 20
x5208:	dw @11$enShortMonthList ; 2: -52 20
x5210:	dw @17$swLongMonthList ; 2: 20 21
x5212:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -126 21
x5214:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -99 21
x5216:	dw @18$swMessageList ; 2: -72 21

@14$swShortDayList:
x5218:	dw string_Son# ; 2: 112 20
x5220:	dw string_Man# ; 2: 116 20
x5222:	dw string_Tis# ; 2: 120 20
x5224:	dw string_Ons# ; 2: 124 20
x5226:	dw string_Tor# ; 2: -128 20
x5228:	dw string_Fre# ; 2: -124 20
x5230:	dw string_Lor# ; 2: -120 20

string_Son#:
x5232:	db "Son", 0	; 4: 83 111 110 0

string_Man#:
x5236:	db "Man", 0	; 4: 77 97 110 0

string_Tis#:
x5240:	db "Tis", 0	; 4: 84 105 115 0

string_Ons#:
x5244:	db "Ons", 0	; 4: 79 110 115 0

string_Tor#:
x5248:	db "Tor", 0	; 4: 84 111 114 0

string_Fre#:
x5252:	db "Fre", 0	; 4: 70 114 101 0

string_Lor#:
x5256:	db "Lor", 0	; 4: 76 111 114 0

@15$swLongDayList:
x5260:	dw string_Sondag# ; 2: -102 20
x5262:	dw string_Mandag# ; 2: -95 20
x5264:	dw string_Tisdag# ; 2: -88 20
x5266:	dw string_Onsdag# ; 2: -81 20
x5268:	dw string_Torsdag# ; 2: -74 20
x5270:	dw string_Fredag# ; 2: -66 20
x5272:	dw string_Lordag# ; 2: -59 20

string_Sondag#:
x5274:	db "Sondag", 0	; 7: 83 111 110 100 97 103 0

string_Mandag#:
x5281:	db "Mandag", 0	; 7: 77 97 110 100 97 103 0

string_Tisdag#:
x5288:	db "Tisdag", 0	; 7: 84 105 115 100 97 103 0

string_Onsdag#:
x5295:	db "Onsdag", 0	; 7: 79 110 115 100 97 103 0

string_Torsdag#:
x5302:	db "Torsdag", 0	; 8: 84 111 114 115 100 97 103 0

string_Fredag#:
x5310:	db "Fredag", 0	; 7: 70 114 101 100 97 103 0

string_Lordag#:
x5317:	db "Lordag", 0	; 7: 76 111 114 100 97 103 0

@11$enShortMonthList:
x5324:	dw string_Jan# ; 2: -28 20
x5326:	dw string_Feb# ; 2: -24 20
x5328:	dw string_Mar# ; 2: -20 20
x5330:	dw string_Apr# ; 2: -16 20
x5332:	dw string_May# ; 2: -12 20
x5334:	dw string_Jun# ; 2: -8 20
x5336:	dw string_Jul# ; 2: -4 20
x5338:	dw string_Aug# ; 2: 0 21
x5340:	dw string_Sep# ; 2: 4 21
x5342:	dw string_Oct# ; 2: 8 21
x5344:	dw string_Nov# ; 2: 12 21
x5346:	dw string_Dec# ; 2: 16 21

string_Jan#:
x5348:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5352:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5356:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5360:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5364:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5368:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5372:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5376:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5380:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5384:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5388:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5392:	db "Dec", 0	; 4: 68 101 99 0

@17$swLongMonthList:
x5396:	dw string_Januari# ; 2: 44 21
x5398:	dw string_Februari# ; 2: 52 21
x5400:	dw string_Mars# ; 2: 61 21
x5402:	dw string_April# ; 2: 66 21
x5404:	dw string_Maj# ; 2: 72 21
x5406:	dw string_Juni# ; 2: 76 21
x5408:	dw string_Juli# ; 2: 81 21
x5410:	dw string_Augusit# ; 2: 86 21
x5412:	dw string_September# ; 2: 94 21
x5414:	dw string_Oktober# ; 2: 104 21
x5416:	dw string_November# ; 2: 112 21
x5418:	dw string_December# ; 2: 121 21

string_Januari#:
x5420:	db "Januari", 0	; 8: 74 97 110 117 97 114 105 0

string_Februari#:
x5428:	db "Februari", 0	; 9: 70 101 98 114 117 97 114 105 0

string_Mars#:
x5437:	db "Mars", 0	; 5: 77 97 114 115 0

string_April#:
x5442:	db "April", 0	; 6: 65 112 114 105 108 0

string_Maj#:
x5448:	db "Maj", 0	; 4: 77 97 106 0

string_Juni#:
x5452:	db "Juni", 0	; 5: 74 117 110 105 0

string_Juli#:
x5457:	db "Juli", 0	; 5: 74 117 108 105 0

string_Augusit#:
x5462:	db "Augusit", 0	; 8: 65 117 103 117 115 105 116 0

string_September#:
x5470:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_Oktober#:
x5480:	db "Oktober", 0	; 8: 79 107 116 111 98 101 114 0

string_November#:
x5488:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5497:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5506:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5533:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

@18$swMessageList:
x5560:	dw string_inga20fel# ; 2: -34 21
x5562:	dw string_felaktigt20functionsnummer# ; 2: -25 21
x5564:	dw string_hittar20ej20filen# ; 2: 1 22
x5566:	dw string_hittar20ej20sokvagen# ; 2: 17 22
x5568:	dw string_inget20handtag20tillgangligt# ; 2: 36 22
x5570:	dw string_atkomst20nekad# ; 2: 63 22
x5572:	dw string_utanfor20doman# ; 2: 77 22
x5574:	dw string_utanfor20range# ; 2: 91 22
x5576:	dw string_felaktig20multibyte2Dsekvens# ; 2: 105 22
x5578:	dw string_fel20vid20oppning# ; 2: -124 22
x5580:	dw string_fel20vid20flushing# ; 2: -108 22
x5582:	dw string_fel20vid20stangning# ; 2: -91 22
x5584:	dw string_fel20oppningslage# ; 2: -73 22
x5586:	dw string_fel20vid20skrivning# ; 2: -56 22
x5588:	dw string_fel20vid20lasning# ; 2: -38 22
x5590:	dw string_fel20vid20sokning# ; 2: -22 22
x5592:	dw string_fel20vid20telling# ; 2: -6 22
x5594:	dw string_fel20vid20borttagning20av20fil# ; 2: 10 23
x5596:	dw string_fel20vid20namnbyte20av20fil# ; 2: 37 23

string_inga20fel#:
x5598:	db "inga fel", 0	; 9: 105 110 103 97 32 102 101 108 0

string_felaktigt20functionsnummer#:
x5607:	db "felaktigt functionsnummer", 0	; 26: 102 101 108 97 107 116 105 103 116 32 102 117 110 99 116 105 111 110 115 110 117 109 109 101 114 0

string_hittar20ej20filen#:
x5633:	db "hittar ej filen", 0	; 16: 104 105 116 116 97 114 32 101 106 32 102 105 108 101 110 0

string_hittar20ej20sokvagen#:
x5649:	db "hittar ej sokvagen", 0	; 19: 104 105 116 116 97 114 32 101 106 32 115 111 107 118 97 103 101 110 0

string_inget20handtag20tillgangligt#:
x5668:	db "inget handtag tillgangligt", 0	; 27: 105 110 103 101 116 32 104 97 110 100 116 97 103 32 116 105 108 108 103 97 110 103 108 105 103 116 0

string_atkomst20nekad#:
x5695:	db "atkomst nekad", 0	; 14: 97 116 107 111 109 115 116 32 110 101 107 97 100 0

string_utanfor20doman#:
x5709:	db "utanfor doman", 0	; 14: 117 116 97 110 102 111 114 32 100 111 109 97 110 0

string_utanfor20range#:
x5723:	db "utanfor range", 0	; 14: 117 116 97 110 102 111 114 32 114 97 110 103 101 0

string_felaktig20multibyte2Dsekvens#:
x5737:	db "felaktig multibyte-sekvens", 0	; 27: 102 101 108 97 107 116 105 103 32 109 117 108 116 105 98 121 116 101 45 115 101 107 118 101 110 115 0

string_fel20vid20oppning#:
x5764:	db "fel vid oppning", 0	; 16: 102 101 108 32 118 105 100 32 111 112 112 110 105 110 103 0

string_fel20vid20flushing#:
x5780:	db "fel vid flushing", 0	; 17: 102 101 108 32 118 105 100 32 102 108 117 115 104 105 110 103 0

string_fel20vid20stangning#:
x5797:	db "fel vid stangning", 0	; 18: 102 101 108 32 118 105 100 32 115 116 97 110 103 110 105 110 103 0

string_fel20oppningslage#:
x5815:	db "fel oppningslage", 0	; 17: 102 101 108 32 111 112 112 110 105 110 103 115 108 97 103 101 0

string_fel20vid20skrivning#:
x5832:	db "fel vid skrivning", 0	; 18: 102 101 108 32 118 105 100 32 115 107 114 105 118 110 105 110 103 0

string_fel20vid20lasning#:
x5850:	db "fel vid lasning", 0	; 16: 102 101 108 32 118 105 100 32 108 97 115 110 105 110 103 0

string_fel20vid20sokning#:
x5866:	db "fel vid sokning", 0	; 16: 102 101 108 32 118 105 100 32 115 111 107 110 105 110 103 0

string_fel20vid20telling#:
x5882:	db "fel vid telling", 0	; 16: 102 101 108 32 118 105 100 32 116 101 108 108 105 110 103 0

string_fel20vid20borttagning20av20fil#:
x5898:	db "fel vid borttagning av fil", 0	; 27: 102 101 108 32 118 105 100 32 98 111 114 116 116 97 103 110 105 110 103 32 97 118 32 102 105 108 0

string_fel20vid20namnbyte20av20fil#:
x5925:	db "fel vid namnbyte av fil", 0	; 24: 102 101 108 32 118 105 100 32 110 97 109 110 98 121 116 101 32 97 118 32 102 105 108 0

string_C#:
x5949:	db "C", 0	; 2: 67 0

@13$en_US_utf8:
x5951:	dw -5	; 2: -5 -1
x5953:	dw -4	; 2: -4 -1
x5955:	dw @9$enShortDayList ; 2: 81 23
x5957:	dw @10$enLongDayList ; 2: 123 23
x5959:	dw @11$enShortMonthList ; 2: -52 20
x5961:	dw @12$enLongMonthList ; 2: -62 23
x5963:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -126 21
x5965:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -99 21
x5967:	dw enMessageList ; 2: 10 24

@9$enShortDayList:
x5969:	dw string_Sun# ; 2: 95 23
x5971:	dw string_Mon# ; 2: 99 23
x5973:	dw string_Tue# ; 2: 103 23
x5975:	dw string_Wed# ; 2: 107 23
x5977:	dw string_Thu# ; 2: 111 23
x5979:	dw string_Fri# ; 2: 115 23
x5981:	dw string_Sat# ; 2: 119 23

string_Sun#:
x5983:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x5987:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x5991:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x5995:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x5999:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6003:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6007:	db "Sat", 0	; 4: 83 97 116 0

@10$enLongDayList:
x6011:	dw string_Sunday# ; 2: -119 23
x6013:	dw string_Monday# ; 2: -112 23
x6015:	dw string_Tuesday# ; 2: -105 23
x6017:	dw string_Wednesday# ; 2: -97 23
x6019:	dw string_Thursday# ; 2: -87 23
x6021:	dw string_Friday# ; 2: -78 23
x6023:	dw string_Saturday# ; 2: -71 23

string_Sunday#:
x6025:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6032:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6039:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6047:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6057:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6066:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x6073:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@12$enLongMonthList:
x6082:	dw string_January# ; 2: -38 23
x6084:	dw string_February# ; 2: -30 23
x6086:	dw string_March# ; 2: -21 23
x6088:	dw string_April# ; 2: 66 21
x6090:	dw string_May# ; 2: -12 20
x6092:	dw string_June# ; 2: -15 23
x6094:	dw string_July# ; 2: -10 23
x6096:	dw string_August# ; 2: -5 23
x6098:	dw string_September# ; 2: 94 21
x6100:	dw string_October# ; 2: 2 24
x6102:	dw string_November# ; 2: 112 21
x6104:	dw string_December# ; 2: 121 21

string_January#:
x6106:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x6114:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x6123:	db "March", 0	; 6: 77 97 114 99 104 0

string_June#:
x6129:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x6134:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x6139:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_October#:
x6146:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

enMessageList:
x6154:	dw string_no20error# ; 2: 50 24
x6156:	dw string_function20number20invalid# ; 2: 59 24
x6158:	dw string_file20not20found# ; 2: 83 24
x6160:	dw string_path20not20found# ; 2: 98 24
x6162:	dw string_no20handle20available# ; 2: 113 24
x6164:	dw string_access20denied# ; 2: -123 24
x6166:	dw string_out20of20domain# ; 2: -109 24
x6168:	dw string_out20of20range# ; 2: -95 24
x6170:	dw string_invalid20multibyte20sequence# ; 2: -82 24
x6172:	dw string_error20while20opening# ; 2: -55 24
x6174:	dw string_error20while20flushing# ; 2: -35 24
x6176:	dw string_error20while20closing# ; 2: -14 24
x6178:	dw string_open20mode20invalid# ; 2: 6 25
x6180:	dw string_error20while20writing# ; 2: 24 25
x6182:	dw string_error20while20reading# ; 2: 44 25
x6184:	dw string_error20while20seeking# ; 2: 64 25
x6186:	dw string_error20while20telling# ; 2: 84 25
x6188:	dw string_error20while20sizing# ; 2: 104 25
x6190:	dw string_error20while20removing20file# ; 2: 123 25
x6192:	dw string_error20while20renaming20file# ; 2: -107 25

string_no20error#:
x6194:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x6203:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x6227:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x6242:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x6257:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x6277:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x6291:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x6305:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x6318:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x6345:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x6365:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x6386:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x6406:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x6424:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x6444:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x6464:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x6484:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x6504:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x6523:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x6549:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_US#:
x6575:	db "US", 0	; 3: 85 83 0

string_SE#:
x6578:	db "SE", 0	; 3: 83 69 0

strchr:	; £temporary3330 = int_to_int i (Signed_Int -> Signed_Char)
x6581:	mov ax, [bp + 8]	; 3: -117 70 8
x6584:	cmp ax, 0	; 3: -125 -8 0
x6587:	jge strchr$1	; 2: 125 4
x6589:	neg ax	; 2: -9 -40
x6591:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3330
x6593:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x6596:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3332 = text + index
x6601:	mov si, [bp + 6]	; 3: -117 118 6
x6604:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3331 -> £temporary3332 = *£temporary3332

strchr$5:	; if £temporary3331 -> £temporary3332 == 0 goto 16
x6607:	cmp byte [si], 0	; 3: -128 60 0
x6610:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3336 = text + index
x6612:	mov si, [bp + 6]	; 3: -117 118 6
x6615:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3335 -> £temporary3336 = *£temporary3336

strchr$8:	; if £temporary3335 -> £temporary3336 != c goto 14
x6618:	mov al, [bp + 12]	; 3: -118 70 12
x6621:	cmp [si], al	; 2: 56 4
x6623:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3339 = text + index
x6625:	mov bx, [bp + 6]	; 3: -117 94 6
x6628:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3338 -> £temporary3339 = *£temporary3339

strchr$11:	; £temporary3340 = &£temporary3338 -> £temporary3339

strchr$12:	; return_value = £temporary3340

strchr$13:	; return
x6631:	mov ax, [bp]	; 3: -117 70 0
x6634:	mov di, [bp + 4]	; 3: -117 126 4
x6637:	mov bp, [bp + 2]	; 3: -117 110 2
x6640:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x6642:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x6645:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x6647:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x6650:	mov ax, [bp]	; 3: -117 70 0
x6653:	mov di, [bp + 4]	; 3: -117 126 4
x6656:	mov bp, [bp + 2]	; 3: -117 110 2
x6659:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x6661:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6665:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x6667:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x6671:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 29 26
x6676:	mov [bp + 24], bp	; 3: -119 110 24
x6679:	add bp, 22	; 3: -125 -59 22
x6682:	jmp printChar	; 3: -23 -33 -9

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x6685:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6689:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x6691:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x6695:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 53 26
x6700:	mov [bp + 24], bp	; 3: -119 110 24
x6703:	add bp, 22	; 3: -125 -59 22
x6706:	jmp printChar	; 3: -23 -57 -9

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x6709:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x6713:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x6715:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x6720:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x6722:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x6726:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 84 26
x6731:	mov [bp + 24], bp	; 3: -119 110 24
x6734:	add bp, 22	; 3: -125 -59 22
x6737:	jmp printChar	; 3: -23 -88 -9

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x6740:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x6745:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x6747:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x6751:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 109 26
x6756:	mov [bp + 24], bp	; 3: -119 110 24
x6759:	add bp, 22	; 3: -125 -59 22
x6762:	jmp printChar	; 3: -23 -113 -9

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x6765:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x6769:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1987 = 88
x6771:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x6773:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1987 = 120
x6775:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1987, offset 6
x6777:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x6780:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -118 26
x6785:	mov [bp + 24], bp	; 3: -119 110 24
x6788:	add bp, 22	; 3: -125 -59 22
x6791:	jmp printChar	; 3: -23 114 -9

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x6794:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6799:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x6801:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x6805:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -93 26
x6810:	mov [bp + 24], bp	; 3: -119 110 24
x6813:	add bp, 22	; 3: -125 -59 22
x6816:	jmp printChar	; 3: -23 89 -9

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x6819:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x6821:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6825:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x6829:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x6833:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x6837:	mov ax, [bp + 20]	; 3: -117 70 20
x6840:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x6843:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -55 26
x6848:	mov [bp + 24], bp	; 3: -119 110 24
x6851:	add bp, 22	; 3: -125 -59 22
x6854:	nop	; 1: -112
x6855:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x6857:	mov ax, [bp]	; 3: -117 70 0
x6860:	mov di, [bp + 4]	; 3: -117 126 4
x6863:	mov bp, [bp + 2]	; 3: -117 110 2
x6866:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x6868:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6873:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1963 = unsignedValue % base
x6875:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6879:	xor edx, edx	; 3: 102 49 -46
x6882:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1964 = int_to_int £temporary1963 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1964
x6886:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1965 = unsignedValue / base
x6889:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6893:	xor edx, edx	; 3: 102 49 -46
x6896:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1965, offset 6
x6900:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x6904:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x6908:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x6912:	mov ax, [bp + 14]	; 3: -117 70 14
x6915:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x6918:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 20 27
x6923:	mov [bp + 20], bp	; 3: -119 110 20
x6926:	add bp, 18	; 3: -125 -59 18
x6929:	nop	; 1: -112
x6930:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x6932:	mov ax, [bp + 16]	; 3: -117 70 16
x6935:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x6938:	mov ax, [bp + 14]	; 3: -117 70 14
x6941:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x6944:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 46 27
x6949:	mov [bp + 20], bp	; 3: -119 110 20
x6952:	add bp, 18	; 3: -125 -59 18
x6955:	nop	; 1: -112
x6956:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1967 = return_value

printUnsignedLongRec$17:	; c = £temporary1967
x6958:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x6961:	mov al, [bp + 18]	; 3: -118 70 18
x6964:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x6967:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 69 27
x6972:	mov [bp + 21], bp	; 3: -119 110 21
x6975:	add bp, 19	; 3: -125 -59 19
x6978:	jmp printChar	; 3: -23 -73 -10

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x6981:	mov ax, [bp]	; 3: -117 70 0
x6984:	mov di, [bp + 4]	; 3: -117 126 4
x6987:	mov bp, [bp + 2]	; 3: -117 110 2
x6990:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x6992:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x6996:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1953 = digit + 48
x6998:	mov bx, [bp + 6]	; 3: -117 94 6
x7001:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1954 = int_to_int £temporary1953 (Signed_Int -> Signed_Char)
x7004:	cmp bx, 0	; 3: -125 -5 0
x7007:	jge digitToChar$3	; 2: 125 4
x7009:	neg bx	; 2: -9 -37
x7011:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1954

digitToChar$4:	; return
x7013:	mov ax, [bp]	; 3: -117 70 0
x7016:	mov di, [bp + 4]	; 3: -117 126 4
x7019:	mov bp, [bp + 2]	; 3: -117 110 2
x7022:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x7024:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7028:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1955 = digit - 10
x7030:	mov bx, [bp + 6]	; 3: -117 94 6
x7033:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1956 = £temporary1955 + 65
x7036:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1957 = int_to_int £temporary1956 (Signed_Int -> Signed_Char)
x7039:	cmp bx, 0	; 3: -125 -5 0
x7042:	jge digitToChar$9	; 2: 125 4
x7044:	neg bx	; 2: -9 -37
x7046:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1957

digitToChar$10:	; return
x7048:	mov ax, [bp]	; 3: -117 70 0
x7051:	mov di, [bp + 4]	; 3: -117 126 4
x7054:	mov bp, [bp + 2]	; 3: -117 110 2
x7057:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1958 = digit - 10
x7059:	mov bx, [bp + 6]	; 3: -117 94 6
x7062:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1959 = £temporary1958 + 97
x7065:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1960 = int_to_int £temporary1959 (Signed_Int -> Signed_Char)
x7068:	cmp bx, 0	; 3: -125 -5 0
x7071:	jge digitToChar$14	; 2: 125 4
x7073:	neg bx	; 2: -9 -37
x7075:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1960

digitToChar$15:	; return
x7077:	mov ax, [bp]	; 3: -117 70 0
x7080:	mov di, [bp + 4]	; 3: -117 126 4
x7083:	mov bp, [bp + 2]	; 3: -117 110 2
x7086:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x7088:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x7091:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x7093:	fcompp	; 2: -34 -39
x7095:	fstsw ax	; 3: -101 -33 -32
x7098:	sahf	; 1: -98
x7099:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x7101:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x7105:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -49 27
x7110:	mov [bp + 24], bp	; 3: -119 110 24
x7113:	add bp, 22	; 3: -125 -59 22
x7116:	jmp printChar	; 3: -23 45 -10

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x7119:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary2023 = -longDoubleValue
x7122:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x7124:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x7127:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x7132:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x7137:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary2024 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7140:	fistp dword [container4bytes#]	; 4: -37 30 72 28
x7144:	mov eax, [container4bytes#]	; 4: 102 -95 72 28

printLongDoublePlain$14:	; longValue = £temporary2024
x7148:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x7152:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7156:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x7160:	mov ax, [bp + 14]	; 3: -117 70 14
x7163:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x7166:	mov ax, [bp + 16]	; 3: -117 70 16
x7169:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x7172:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 18 28
x7177:	mov [bp + 28], bp	; 3: -119 110 28
x7180:	add bp, 26	; 3: -125 -59 26
x7183:	jmp printLongInt	; 3: -23 86 -11

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x7186:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary2026 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x7189:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary2027 = longDoubleValue - £temporary2026
x7192:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x7194:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x7197:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x7200:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x7203:	mov ax, [bp + 18]	; 3: -117 70 18
x7206:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x7209:	mov ax, [bp + 20]	; 3: -117 70 20
x7212:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x7215:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 61 28
x7220:	mov [bp + 28], bp	; 3: -119 110 28
x7223:	add bp, 26	; 3: -125 -59 26
x7226:	nop	; 1: -112
x7227:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x7229:	mov ax, [bp]	; 3: -117 70 0
x7232:	mov di, [bp + 4]	; 3: -117 126 4
x7235:	mov bp, [bp + 2]	; 3: -117 110 2
x7238:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x7240:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x7244:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x7247:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary2002 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7250:	fistp dword [container4bytes#]	; 4: -37 30 72 28
x7254:	mov eax, [container4bytes#]	; 4: 102 -95 72 28

printLongDoubleFraction$3:	; £temporary2003 = int_to_float £temporary2002 (Signed_Long_Int -> Long_Double)
x7258:	mov [container4bytes#], eax	; 4: 102 -93 72 28
x7262:	fild dword [container4bytes#]	; 4: -37 6 72 28

printLongDoubleFraction$4:	; £temporary2004 = longDoubleValue - £temporary2003
x7266:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x7268:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x7271:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7275:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 9
x7277:	mov word [bp + 16], 9	; 5: -57 70 16 9 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x7282:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7286:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x7288:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7292:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x7294:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x7298:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -112 28
x7303:	mov [bp + 20], bp	; 3: -119 110 20
x7306:	add bp, 18	; 3: -125 -59 18
x7309:	jmp printChar	; 3: -23 108 -11

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary2010 = precision
x7312:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x7315:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary2010 <= 0 goto 34
x7318:	cmp ax, 0	; 3: -125 -8 0
x7321:	jle printLongDoubleFraction$34	; 2: 126 67

printLongDoubleFraction$17:	; push float 10.0
x7323:	fld qword [float8$10.0#]	; 4: -35 6 -23 28

printLongDoubleFraction$18:	; push float longDoubleValue
x7327:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary2012 = 10.0 * longDoubleValue
x7330:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; top float longDoubleValue10
x7332:	fst qword [bp + 18]	; 3: -35 86 18

printLongDoubleFraction$21:	; £temporary2013 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x7335:	fistp word [container2bytes#]	; 4: -33 30 -5 16
x7339:	mov ax, [container2bytes#]	; 3: -95 -5 16

printLongDoubleFraction$22:	; digitValue = £temporary2013
x7342:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$23:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$24:	; £temporary2014 = digitValue + 48
x7345:	mov ax, [bp + 26]	; 3: -117 70 26
x7348:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$25:	; £temporary2015 = int_to_int £temporary2014 (Signed_Int -> Signed_Char)
x7351:	cmp ax, 0	; 3: -125 -8 0
x7354:	jge printLongDoubleFraction$26	; 2: 125 4
x7356:	neg ax	; 2: -9 -40
x7358:	neg al	; 2: -10 -40

printLongDoubleFraction$26:	; parameter £temporary2015, offset 6
x7360:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$27:	; call function noellipse-noellipse printChar
x7363:	mov word [bp + 28], printLongDoubleFraction$28	; 5: -57 70 28 -47 28
x7368:	mov [bp + 30], bp	; 3: -119 110 30
x7371:	add bp, 28	; 3: -125 -59 28
x7374:	jmp printChar	; 3: -23 43 -11

printLongDoubleFraction$28:	; post call

printLongDoubleFraction$29:	; push float longDoubleValue10
x7377:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$30:	; £temporary2017 = int_to_float digitValue (Signed_Int -> Long_Double)
x7380:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$31:	; £temporary2018 = longDoubleValue10 - £temporary2017
x7383:	fsub	; 2: -34 -23

printLongDoubleFraction$32:	; pop float longDoubleValue
x7385:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$33:	; goto 14
x7388:	jmp printLongDoubleFraction$14	; 2: -21 -78

printLongDoubleFraction$34:	; return
x7390:	mov ax, [bp]	; 3: -117 70 0
x7393:	mov di, [bp + 4]	; 3: -117 126 4
x7396:	mov bp, [bp + 2]	; 3: -117 110 2
x7399:	jmp ax	; 2: -1 -32

printLongDoubleFraction$35:	; function end printLongDoubleFraction

float8$10.0#:
x7401:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x7409:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x7412:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x7414:	fcompp	; 2: -34 -39
x7416:	fstsw ax	; 3: -101 -33 -32
x7419:	sahf	; 1: -98
x7420:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x7422:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary925 = -x
x7425:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7427:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7429:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary929

fabs$9:	; return
x7432:	mov ax, [bp]	; 3: -117 70 0
x7435:	mov di, [bp + 4]	; 3: -117 126 4
x7438:	mov bp, [bp + 2]	; 3: -117 110 2
x7441:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x7443:	mov ax, [bp + 6]	; 3: -117 70 6
x7446:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x7449:	mov word [bp + 8], tolower$3	; 5: -57 70 8 39 29
x7454:	mov [bp + 10], bp	; 3: -119 110 10
x7457:	add bp, 8	; 3: -125 -59 8
x7460:	jmp isupper	; 3: -23 -115 -10

tolower$3:	; post call

tolower$4:	; £temporary459 = return_value

tolower$5:	; if £temporary459 == 0 goto 31
x7463:	cmp bx, 0	; 3: -125 -5 0
x7466:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x7468:	mov word [bp + 8], tolower$8	; 5: -57 70 8 58 29
x7473:	mov [bp + 10], bp	; 3: -119 110 10
x7476:	add bp, 8	; 3: -125 -59 8
x7479:	jmp localeconv	; 3: -23 -27 -10

tolower$8:	; post call

tolower$9:	; £temporary460 = return_value

tolower$10:	; localeConvPtr = £temporary460
x7482:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x7485:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7489:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary462 -> localeConvPtr = *localeConvPtr, offset 12
x7491:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary462 -> localeConvPtr
x7494:	mov ax, [si + 12]	; 3: -117 68 12
x7497:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary463 -> localeConvPtr = *localeConvPtr, offset 14
x7500:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary463 -> localeConvPtr
x7503:	mov ax, [si + 14]	; 3: -117 68 14
x7506:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x7509:	mov ax, [bp + 12]	; 3: -117 70 12
x7512:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x7515:	mov ax, [bp + 6]	; 3: -117 70 6
x7518:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x7521:	mov word [bp + 14], tolower$20	; 5: -57 70 14 111 29
x7526:	mov [bp + 16], bp	; 3: -119 110 16
x7529:	add bp, 14	; 3: -125 -59 14
x7532:	jmp strchr	; 3: -23 70 -4

tolower$20:	; post call

tolower$21:	; £temporary464 = return_value

tolower$22:	; index = £temporary464 - upperCase
x7535:	sub bx, [bp + 12]	; 3: 43 94 12
x7538:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary467 = lowerCase + index
x7541:	mov si, [bp + 10]	; 3: -117 118 10
x7544:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary466 -> £temporary467 = *£temporary467

tolower$25:	; £temporary468 = int_to_int £temporary466 -> £temporary467 (Signed_Char -> Signed_Int)
x7547:	mov bl, [si]	; 2: -118 28
x7549:	and bx, 255	; 4: -127 -29 -1 0
x7553:	cmp bl, 0	; 3: -128 -5 0
x7556:	jge tolower$26	; 2: 125 4
x7558:	neg bl	; 2: -10 -37
x7560:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary468

tolower$27:	; return
x7562:	mov ax, [bp]	; 3: -117 70 0
x7565:	mov di, [bp + 4]	; 3: -117 126 4
x7568:	mov bp, [bp + 2]	; 3: -117 110 2
x7571:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary469 = c + 32
x7573:	mov bx, [bp + 6]	; 3: -117 94 6
x7576:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary469

tolower$30:	; return
x7579:	mov ax, [bp]	; 3: -117 70 0
x7582:	mov di, [bp + 4]	; 3: -117 126 4
x7585:	mov bp, [bp + 2]	; 3: -117 110 2
x7588:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x7590:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x7593:	mov ax, [bp]	; 3: -117 70 0
x7596:	mov di, [bp + 4]	; 3: -117 126 4
x7599:	mov bp, [bp + 2]	; 3: -117 110 2
x7602:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x7604:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x7607:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x7609:	fcompp	; 2: -34 -39
x7611:	fstsw ax	; 3: -101 -33 -32
x7614:	sahf	; 1: -98
x7615:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x7617:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x7621:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -45 29
x7626:	mov [bp + 26], bp	; 3: -119 110 26
x7629:	add bp, 24	; 3: -125 -59 24
x7632:	jmp printChar	; 3: -23 41 -12

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x7635:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x7637:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x7640:	mov ax, [bp + 20]	; 3: -117 70 20
x7643:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x7646:	mov ax, [bp + 18]	; 3: -117 70 18
x7649:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x7652:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -14 29
x7657:	mov [bp + 26], bp	; 3: -119 110 26
x7660:	add bp, 24	; 3: -125 -59 24
x7663:	jmp printLongDoubleFraction	; 3: -23 90 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x7666:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7670:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary2043 = 69
x7672:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x7674:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary2043 = 101
x7676:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary2043, offset 6
x7678:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x7681:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 15 30
x7686:	mov [bp + 26], bp	; 3: -119 110 26
x7689:	add bp, 24	; 3: -125 -59 24
x7692:	jmp printChar	; 3: -23 -19 -13

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x7695:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x7699:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 33 30
x7704:	mov [bp + 26], bp	; 3: -119 110 26
x7707:	add bp, 24	; 3: -125 -59 24
x7710:	jmp printChar	; 3: -23 -37 -13

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x7713:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x7716:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x7719:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x7721:	fcompp	; 2: -34 -39
x7723:	fstsw ax	; 3: -101 -33 -32
x7726:	sahf	; 1: -98
x7727:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x7729:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x7733:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 67 30
x7738:	mov [bp + 26], bp	; 3: -119 110 26
x7741:	add bp, 24	; 3: -125 -59 24
x7744:	jmp printChar	; 3: -23 -71 -13

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x7747:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary2048 = -value
x7750:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x7752:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x7755:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x7758:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x7761:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 95 30
x7766:	mov [bp + 26], bp	; 3: -119 110 26
x7769:	add bp, 24	; 3: -125 -59 24
x7772:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary2049 = return_value

printLongDoubleExpo$43:	; £temporary2050 = float_to_int £temporary2049 (Double -> Signed_Int)
x7775:	fistp word [container2bytes#]	; 4: -33 30 -5 16
x7779:	mov ax, [container2bytes#]	; 3: -95 -5 16

printLongDoubleExpo$44:	; expo = £temporary2050
x7782:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x7785:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x7788:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x7791:	fld qword [float8$10.0#]	; 4: -35 6 -23 28

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x7795:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary2051 = int_to_float expo (Signed_Int -> Double)
x7798:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary2051, offset 14
x7801:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x7804:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -118 30
x7809:	mov [bp + 36], bp	; 3: -119 110 36
x7812:	add bp, 34	; 3: -125 -59 34
x7815:	jmp pow	; 3: -23 -22 1

printLongDoubleExpo$52:	; post call
x7818:	fstp qword [bp + 34]	; 3: -35 94 34
x7821:	fld qword [bp + 26]	; 3: -35 70 26
x7824:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary2052 = return_value

printLongDoubleExpo$54:	; £temporary2053 = value / £temporary2052
x7827:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x7829:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x7832:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x7835:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x7838:	mov ax, [bp + 14]	; 3: -117 70 14
x7841:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x7844:	mov ax, [bp + 16]	; 3: -117 70 16
x7847:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x7850:	mov ax, [bp + 18]	; 3: -117 70 18
x7853:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x7856:	mov ax, [bp + 20]	; 3: -117 70 20
x7859:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x7862:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -60 30
x7867:	mov [bp + 28], bp	; 3: -119 110 28
x7870:	add bp, 26	; 3: -125 -59 26
x7873:	jmp printLongDoublePlain	; 3: -23 -20 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x7876:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7880:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary2059 = 69
x7882:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x7884:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary2059 = 101
x7886:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary2059, offset 6
x7888:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x7891:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -31 30
x7896:	mov [bp + 28], bp	; 3: -119 110 28
x7899:	add bp, 26	; 3: -125 -59 26
x7902:	jmp printChar	; 3: -23 27 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary2061 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x7905:	mov ax, [bp + 24]	; 3: -117 70 24
x7908:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x7914:	cmp ax, 0	; 3: -125 -8 0
x7917:	jge printLongDoubleExpo$75	; 2: 125 5
x7919:	neg ax	; 2: -9 -40
x7921:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary2061, offset 6
x7924:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x7928:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x7933:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x7938:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 16 31
x7943:	mov [bp + 28], bp	; 3: -119 110 28
x7946:	add bp, 26	; 3: -125 -59 26
x7949:	jmp printLongInt	; 3: -23 88 -14

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x7952:	mov ax, [bp]	; 3: -117 70 0
x7955:	mov di, [bp + 4]	; 3: -117 126 4
x7958:	mov bp, [bp + 2]	; 3: -117 110 2
x7961:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; push float 0.4342944820
x7963:	fld qword [float8$0.4342944820#]	; 4: -35 6 76 31

log10$1:	; call header integral zero 0 stack no zero 1
x7967:	fstp qword [bp + 14]	; 3: -35 94 14

log10$2:	; push float x
x7970:	fld qword [bp + 6]	; 3: -35 70 6

log10$3:	; parameter x, offset 6
x7973:	fstp qword [bp + 28]	; 3: -35 94 28

log10$4:	; call function noellipse-noellipse log
x7976:	mov word [bp + 22], log10$5	; 5: -57 70 22 54 31
x7981:	mov [bp + 24], bp	; 3: -119 110 24
x7984:	add bp, 22	; 3: -125 -59 22
x7987:	nop	; 1: -112
x7988:	jmp log	; 2: -21 30

log10$5:	; post call
x7990:	fstp qword [bp + 22]	; 3: -35 94 22
x7993:	fld qword [bp + 14]	; 3: -35 70 14
x7996:	fld qword [bp + 22]	; 3: -35 70 22

log10$6:	; £temporary552 = return_value

log10$7:	; £temporary553 = 0.4342944820 * £temporary552
x7999:	fmul	; 2: -34 -55

log10$8:	; return_value = £temporary553

log10$9:	; return
x8001:	mov ax, [bp]	; 3: -117 70 0
x8004:	mov di, [bp + 4]	; 3: -117 126 4
x8007:	mov bp, [bp + 2]	; 3: -117 110 2
x8010:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$0.4342944820#:
x8012:	dq 0.4342944820	; 8: 26 125 65 21 123 -53 -37 63

log:	; push float x_plus_1
x8020:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x8023:	fldz	; 2: -39 -18

log$2:	; if x_plus_1 <= 0 goto 70
x8025:	fcompp	; 2: -34 -39
x8027:	fstsw ax	; 3: -101 -33 -32
x8030:	sahf	; 1: -98
x8031:	jae log$70	; 4: 15 -125 -44 0

log$3:	; expo = 0
x8035:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x_plus_1
x8040:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push float 0.3678794411714423216036827922
x8043:	fld qword [float8$0.3678794411714423216036827922#]	; 4: -35 6 74 32

log$6:	; if x_plus_1 >= 0.3678794411714423216036827922 goto 13
x8047:	fcompp	; 2: -34 -39
x8049:	fstsw ax	; 3: -101 -33 -32
x8052:	sahf	; 1: -98
x8053:	jbe log$13	; 2: 118 17

log$7:	; push float x_plus_1
x8055:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push float 2.7182818284590452353
x8058:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 82 32

log$9:	; £temporary535 = x_plus_1 * 2.7182818284590452353
x8062:	fmul	; 2: -34 -55

log$10:	; pop float x_plus_1
x8064:	fstp qword [bp + 6]	; 3: -35 94 6

log$11:	; --expo
x8067:	dec word [bp + 14]	; 3: -1 78 14

log$12:	; goto 4
x8070:	jmp log$4	; 2: -21 -32

log$13:	; push float x_plus_1
x8072:	fld qword [bp + 6]	; 3: -35 70 6

log$14:	; push float 0.7357588823428846432073655843
x8075:	fld qword [float8$0.7357588823428846432073655843#]	; 4: -35 6 90 32

log$15:	; if x_plus_1 <= 0.7357588823428846432073655843 goto 22
x8079:	fcompp	; 2: -34 -39
x8081:	fstsw ax	; 3: -101 -33 -32
x8084:	sahf	; 1: -98
x8085:	jae log$22	; 2: 115 17

log$16:	; push float x_plus_1
x8087:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 2.7182818284590452353
x8090:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 82 32

log$18:	; £temporary538 = x_plus_1 / 2.7182818284590452353
x8094:	fdiv	; 2: -34 -7

log$19:	; pop float x_plus_1
x8096:	fstp qword [bp + 6]	; 3: -35 94 6

log$20:	; ++expo
x8099:	inc word [bp + 14]	; 3: -1 70 14

log$21:	; goto 13
x8102:	jmp log$13	; 2: -21 -32

log$22:	; push 1
x8104:	fld1	; 2: -39 -24

log$23:	; pop float n
x8106:	fstp qword [bp + 16]	; 3: -35 94 16

log$24:	; push 1
x8109:	fld1	; 2: -39 -24

log$25:	; pop float plusMinusOne
x8111:	fstp qword [bp + 24]	; 3: -35 94 24

log$26:	; push float x_plus_1
x8114:	fld qword [bp + 6]	; 3: -35 70 6

log$27:	; push 1
x8117:	fld1	; 2: -39 -24

log$28:	; £temporary540 = x_plus_1 - 1
x8119:	fsub	; 2: -34 -23

log$29:	; pop float x
x8121:	fstp qword [bp + 32]	; 3: -35 94 32

log$30:	; push 0
x8124:	fldz	; 2: -39 -18

log$31:	; pop float sum
x8126:	fstp qword [bp + 48]	; 3: -35 94 48

log$32:	; push float x
x8129:	fld qword [bp + 32]	; 3: -35 70 32

log$33:	; pop float power
x8132:	fstp qword [bp + 56]	; 3: -35 94 56

log$34:	; push float plusMinusOne
x8135:	fld qword [bp + 24]	; 3: -35 70 24

log$35:	; push float power
x8138:	fld qword [bp + 56]	; 3: -35 70 56

log$36:	; push float n
x8141:	fld qword [bp + 16]	; 3: -35 70 16

log$37:	; push 1
x8144:	fld1	; 2: -39 -24

log$38:	; n = n + 1
x8146:	fadd	; 2: -34 -63

log$39:	; top float n
x8148:	fst qword [bp + 16]	; 3: -35 86 16

log$40:	; push 1
x8151:	fld1	; 2: -39 -24

log$41:	; n = n - 1
x8153:	fsub	; 2: -34 -23

log$42:	; £temporary542 = power / £temporary541
x8155:	fdiv	; 2: -34 -7

log$43:	; £temporary543 = plusMinusOne * £temporary542
x8157:	fmul	; 2: -34 -55

log$44:	; pop float term
x8159:	fstp qword [bp + 40]	; 3: -35 94 40

log$45:	; push float sum
x8162:	fld qword [bp + 48]	; 3: -35 70 48

log$46:	; push float term
x8165:	fld qword [bp + 40]	; 3: -35 70 40

log$47:	; £temporary544 = sum + term
x8168:	fadd	; 2: -34 -63

log$48:	; pop float sum
x8170:	fstp qword [bp + 48]	; 3: -35 94 48

log$49:	; push float power
x8173:	fld qword [bp + 56]	; 3: -35 70 56

log$50:	; push float x
x8176:	fld qword [bp + 32]	; 3: -35 70 32

log$51:	; £temporary545 = power * x
x8179:	fmul	; 2: -34 -55

log$52:	; pop float power
x8181:	fstp qword [bp + 56]	; 3: -35 94 56

log$53:	; push float plusMinusOne
x8184:	fld qword [bp + 24]	; 3: -35 70 24

log$54:	; push float -1.0
x8187:	fld qword [float8$minus1.0#]	; 4: -35 6 98 32

log$55:	; £temporary546 = plusMinusOne * -1.0
x8191:	fmul	; 2: -34 -55

log$56:	; pop float plusMinusOne
x8193:	fstp qword [bp + 24]	; 3: -35 94 24

log$57:	; call header integral zero 0 stack zero 0

log$58:	; push float term
x8196:	fld qword [bp + 40]	; 3: -35 70 40

log$59:	; parameter term, offset 6
x8199:	fstp qword [bp + 70]	; 3: -35 94 70

log$60:	; call function noellipse-noellipse fabs
x8202:	mov word [bp + 64], log$61	; 5: -57 70 64 24 32
x8207:	mov [bp + 66], bp	; 3: -119 110 66
x8210:	add bp, 64	; 3: -125 -59 64
x8213:	jmp fabs	; 3: -23 -39 -4

log$61:	; post call

log$62:	; £temporary547 = return_value

log$63:	; push float 0.000000001
x8216:	fld qword [float8$0.000000001#]	; 4: -35 6 106 32

log$64:	; if £temporary547 > 0.000000001 goto 34
x8220:	fcompp	; 2: -34 -39
x8222:	fstsw ax	; 3: -101 -33 -32
x8225:	sahf	; 1: -98
x8226:	jb log$34	; 2: 114 -93

log$65:	; push float sum
x8228:	fld qword [bp + 48]	; 3: -35 70 48

log$66:	; £temporary549 = int_to_float expo (Signed_Int -> Double)
x8231:	fild word [bp + 14]	; 3: -33 70 14

log$67:	; £temporary550 = sum + £temporary549
x8234:	fadd	; 2: -34 -63

log$68:	; return_value = £temporary550

log$69:	; return
x8236:	mov ax, [bp]	; 3: -117 70 0
x8239:	mov di, [bp + 4]	; 3: -117 126 4
x8242:	mov bp, [bp + 2]	; 3: -117 110 2
x8245:	jmp ax	; 2: -1 -32

log$70:	; errno = 6
x8247:	mov word [errno], 6	; 6: -57 6 114 32 6 0

log$71:	; push 0
x8253:	fldz	; 2: -39 -18

log$72:	; return_value = 0

log$73:	; return
x8255:	mov ax, [bp]	; 3: -117 70 0
x8258:	mov di, [bp + 4]	; 3: -117 126 4
x8261:	mov bp, [bp + 2]	; 3: -117 110 2
x8264:	jmp ax	; 2: -1 -32

log$74:	; function end log

float8$0.3678794411714423216036827922#:
x8266:	dq 0.3678794411714423216036827922	; 8: 56 -17 44 54 86 -117 -41 63

float8$2.7182818284590452353#:
x8274:	dq 2.7182818284590452353	; 8: 105 87 20 -117 10 -65 5 64

float8$0.7357588823428846432073655843#:
x8282:	dq 0.7357588823428846432073655843	; 8: 56 -17 44 54 86 -117 -25 63

float8$minus1.0#:
x8290:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8298:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x8306:	dw 0	; 2: 0 0

pow:	; push float x
x8308:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x8311:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x8313:	fcompp	; 2: -34 -39
x8315:	fstsw ax	; 3: -101 -33 -32
x8318:	sahf	; 1: -98
x8319:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x8321:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x8324:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x8327:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x8330:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x8333:	mov word [bp + 30], pow$9	; 5: -57 70 30 -101 32
x8338:	mov [bp + 32], bp	; 3: -119 110 32
x8341:	add bp, 30	; 3: -125 -59 30
x8344:	jmp log	; 3: -23 -71 -2

pow$9:	; post call
x8347:	fstp qword [bp + 30]	; 3: -35 94 30
x8350:	fld qword [bp + 22]	; 3: -35 70 22
x8353:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary578 = return_value

pow$11:	; £temporary579 = y * £temporary578
x8356:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary579, offset 6
x8358:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x8361:	mov word [bp + 22], pow$14	; 5: -57 70 22 -73 32
x8366:	mov [bp + 24], bp	; 3: -119 110 24
x8369:	add bp, 22	; 3: -125 -59 22
x8372:	nop	; 1: -112
x8373:	jmp exp	; 2: -21 30

pow$14:	; post call

pow$15:	; £temporary580 = return_value

pow$16:	; return_value = £temporary580

pow$17:	; return
x8375:	mov ax, [bp]	; 3: -117 70 0
x8378:	mov di, [bp + 4]	; 3: -117 126 4
x8381:	mov bp, [bp + 2]	; 3: -117 110 2
x8384:	jmp ax	; 2: -1 -32

pow$18:	; errno = 6
x8386:	mov word [errno], 6	; 6: -57 6 114 32 6 0

pow$19:	; push 0
x8392:	fldz	; 2: -39 -18

pow$20:	; return_value = 0

pow$21:	; return
x8394:	mov ax, [bp]	; 3: -117 70 0
x8397:	mov di, [bp + 4]	; 3: -117 126 4
x8400:	mov bp, [bp + 2]	; 3: -117 110 2
x8403:	jmp ax	; 2: -1 -32

pow$22:	; function end pow

exp:	; push 0
x8405:	fldz	; 2: -39 -18

exp$1:	; pop float n
x8407:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x8410:	fld1	; 2: -39 -24

exp$3:	; pop float faculty
x8412:	fstp qword [bp + 22]	; 3: -35 94 22

exp$4:	; push 1
x8415:	fld1	; 2: -39 -24

exp$5:	; pop float power
x8417:	fstp qword [bp + 30]	; 3: -35 94 30

exp$6:	; push 0
x8420:	fldz	; 2: -39 -18

exp$7:	; pop float sum
x8422:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x8425:	fld qword [bp + 30]	; 3: -35 70 30

exp$9:	; push float faculty
x8428:	fld qword [bp + 22]	; 3: -35 70 22

exp$10:	; £temporary525 = power / faculty
x8431:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x8433:	fstp qword [bp + 38]	; 3: -35 94 38

exp$12:	; push float sum
x8436:	fld qword [bp + 46]	; 3: -35 70 46

exp$13:	; push float term
x8439:	fld qword [bp + 38]	; 3: -35 70 38

exp$14:	; £temporary526 = sum + term
x8442:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x8444:	fstp qword [bp + 46]	; 3: -35 94 46

exp$16:	; push float power
x8447:	fld qword [bp + 30]	; 3: -35 70 30

exp$17:	; push float x
x8450:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary527 = power * x
x8453:	fmul	; 2: -34 -55

exp$19:	; pop float power
x8455:	fstp qword [bp + 30]	; 3: -35 94 30

exp$20:	; push float faculty
x8458:	fld qword [bp + 22]	; 3: -35 70 22

exp$21:	; push float n
x8461:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x8464:	fld1	; 2: -39 -24

exp$23:	; n = n + 1
x8466:	fadd	; 2: -34 -63

exp$24:	; top float n
x8468:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary529 = faculty * £temporary528
x8471:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x8473:	fstp qword [bp + 22]	; 3: -35 94 22

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x8476:	fld qword [bp + 38]	; 3: -35 70 38

exp$29:	; parameter term, offset 6
x8479:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x8482:	mov word [bp + 54], exp$31	; 5: -57 70 54 48 33
x8487:	mov [bp + 56], bp	; 3: -119 110 56
x8490:	add bp, 54	; 3: -125 -59 54
x8493:	jmp fabs	; 3: -23 -63 -5

exp$31:	; post call

exp$32:	; £temporary530 = return_value

exp$33:	; push float 0.000000001
x8496:	fld qword [float8$0.000000001#]	; 4: -35 6 106 32

exp$34:	; if £temporary530 >= 0.000000001 goto 8
x8500:	fcompp	; 2: -34 -39
x8502:	fstsw ax	; 3: -101 -33 -32
x8505:	sahf	; 1: -98
x8506:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x8508:	fld qword [bp + 46]	; 3: -35 70 46

exp$36:	; return_value = sum

exp$37:	; return
x8511:	mov ax, [bp]	; 3: -117 70 0
x8514:	mov di, [bp + 4]	; 3: -117 126 4
x8517:	mov bp, [bp + 2]	; 3: -117 110 2
x8520:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

isdigit:	; if c < 48 goto 4
x8522:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x8526:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x8528:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x8532:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary394 = 1
x8534:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x8537:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary394 = 0
x8539:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary394

isdigit$6:	; return
x8542:	mov ax, [bp]	; 3: -117 70 0
x8545:	mov di, [bp + 4]	; 3: -117 126 4
x8548:	mov bp, [bp + 2]	; 3: -117 110 2
x8551:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

$Path:
x8553:	db "C:\D\Main.com", 0	; 14: 67 58 92 68 92 77 97 105 110 46 99 111 109 0

$StackTop:
x8567:
