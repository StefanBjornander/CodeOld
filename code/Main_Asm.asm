	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 8 54
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 8 54 0 0
	; Initialize Argument List
x283:	mov si, bp	; 2: -119 -18
x285:	mov word [bp], $Path	; 5: -57 70 0 -6 53
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

main:	; call header integral zero 0 stack zero 0

main$1:	; parameter string_argc3A2025i0A#, offset 6
x360:	mov word [bp + 16], string_argc3A2025i0A#	; 5: -57 70 16 8 3

main$2:	; parameter argc, offset 8
x365:	mov ax, [bp + 6]	; 3: -117 70 6
x368:	mov [bp + 18], ax	; 3: -119 70 18

main$3:	; call function noellipse-ellipse printf, extra 0
x371:	mov word [bp + 10], main$4	; 5: -57 70 10 -122 1
x376:	mov [bp + 12], bp	; 3: -119 110 12
x379:	add bp, 10	; 3: -125 -59 10
x382:	mov di, bp	; 2: -119 -17
x384:	add di, 2	; 3: -125 -57 2
x387:	jmp printf	; 3: -23 65 2

main$4:	; post call

main$5:	; index = 0
x390:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$6:	; if index >= argc goto 18
x395:	mov ax, [bp + 6]	; 3: -117 70 6
x398:	cmp [bp + 10], ax	; 3: 57 70 10
x401:	jge main$18	; 2: 125 54

main$7:	; call header integral zero 0 stack zero 0

main$8:	; parameter string_25i3A203C25s3E0A#, offset 6
x403:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 18 3

main$9:	; parameter index, offset 8
x408:	mov ax, [bp + 10]	; 3: -117 70 10
x411:	mov [bp + 20], ax	; 3: -119 70 20

main$10:	; £temporary121 = index * 2
x414:	mov ax, [bp + 10]	; 3: -117 70 10
x417:	xor dx, dx	; 2: 49 -46
x419:	mul word [int2$2#]	; 4: -9 38 28 3

main$11:	; £temporary122 = argv + £temporary121
x423:	mov si, [bp + 8]	; 3: -117 118 8
x426:	add si, ax	; 2: 1 -58

main$12:	; £temporary120 -> £temporary122 = *£temporary122

main$13:	; parameter £temporary120 -> £temporary122, offset 10
x428:	mov ax, [si]	; 2: -117 4
x430:	mov [bp + 22], ax	; 3: -119 70 22

main$14:	; call function noellipse-ellipse printf, extra 0
x433:	mov word [bp + 12], main$15	; 5: -57 70 12 -60 1
x438:	mov [bp + 14], bp	; 3: -119 110 14
x441:	add bp, 12	; 3: -125 -59 12
x444:	mov di, bp	; 2: -119 -17
x446:	add di, 4	; 3: -125 -57 4
x449:	jmp printf	; 3: -23 3 2

main$15:	; post call

main$16:	; ++index
x452:	inc word [bp + 10]	; 3: -1 70 10

main$17:	; goto 6
x455:	jmp main$6	; 2: -21 -62

main$18:	; call header integral zero 0 stack zero 0

main$19:	; parameter string_0A#, offset 6
x457:	mov word [bp + 18], string_0A#	; 5: -57 70 18 30 3

main$20:	; call function noellipse-ellipse printf, extra 0
x462:	mov word [bp + 12], main$21	; 5: -57 70 12 -34 1
x467:	mov [bp + 14], bp	; 3: -119 110 14
x470:	add bp, 12	; 3: -125 -59 12
x473:	mov di, bp	; 2: -119 -17
x475:	jmp printf	; 3: -23 -23 1

main$21:	; post call

main$22:	; index = 0
x478:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$23:	; £temporary126 = index * 2
x483:	mov ax, [bp + 10]	; 3: -117 70 10
x486:	xor dx, dx	; 2: 49 -46
x488:	mul word [int2$2#]	; 4: -9 38 28 3

main$24:	; £temporary127 = argv + £temporary126
x492:	mov si, [bp + 8]	; 3: -117 118 8
x495:	add si, ax	; 2: 1 -58

main$25:	; £temporary125 -> £temporary127 = *£temporary127

main$26:	; if £temporary125 -> £temporary127 == 0 goto 38
x497:	cmp word [si], 0	; 3: -125 60 0
x500:	je main$38	; 2: 116 54

main$27:	; call header integral zero 0 stack zero 0

main$28:	; parameter string_25i3A203C25s3E0A#, offset 6
x502:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 18 3

main$29:	; parameter index, offset 8
x507:	mov ax, [bp + 10]	; 3: -117 70 10
x510:	mov [bp + 20], ax	; 3: -119 70 20

main$30:	; £temporary131 = index * 2
x513:	mov ax, [bp + 10]	; 3: -117 70 10
x516:	xor dx, dx	; 2: 49 -46
x518:	mul word [int2$2#]	; 4: -9 38 28 3

main$31:	; £temporary132 = argv + £temporary131
x522:	mov si, [bp + 8]	; 3: -117 118 8
x525:	add si, ax	; 2: 1 -58

main$32:	; £temporary130 -> £temporary132 = *£temporary132

main$33:	; parameter £temporary130 -> £temporary132, offset 10
x527:	mov ax, [si]	; 2: -117 4
x529:	mov [bp + 22], ax	; 3: -119 70 22

main$34:	; call function noellipse-ellipse printf, extra 0
x532:	mov word [bp + 12], main$35	; 5: -57 70 12 39 2
x537:	mov [bp + 14], bp	; 3: -119 110 14
x540:	add bp, 12	; 3: -125 -59 12
x543:	mov di, bp	; 2: -119 -17
x545:	add di, 4	; 3: -125 -57 4
x548:	jmp printf	; 3: -23 -96 1

main$35:	; post call

main$36:	; ++index
x551:	inc word [bp + 10]	; 3: -1 70 10

main$37:	; goto 23
x554:	jmp main$23	; 2: -21 -73

main$38:	; call header integral zero 0 stack zero 0

main$39:	; parameter string_0A#, offset 6
x556:	mov word [bp + 18], string_0A#	; 5: -57 70 18 30 3

main$40:	; call function noellipse-ellipse printf, extra 0
x561:	mov word [bp + 12], main$41	; 5: -57 70 12 65 2
x566:	mov [bp + 14], bp	; 3: -119 110 14
x569:	add bp, 12	; 3: -125 -59 12
x572:	mov di, bp	; 2: -119 -17
x574:	jmp printf	; 3: -23 -122 1

main$41:	; post call

main$42:	; call header integral zero 0 stack zero 0

main$43:	; parameter 0, offset 6
x577:	mov word [bp + 49], 0	; 5: -57 70 49 0 0

main$44:	; call function noellipse-noellipse mktime
x582:	mov word [bp + 43], main$45	; 5: -57 70 43 84 2
x587:	mov [bp + 45], bp	; 3: -119 110 45
x590:	add bp, 43	; 3: -125 -59 43
x593:	jmp mktime	; 3: -23 48 34

main$45:	; post call

main$46:	; call header integral zero 0 stack zero 0

main$47:	; parameter string_Hello210A#, offset 6
x596:	mov word [bp + 49], string_Hello210A#	; 5: -57 70 49 32 3

main$48:	; call function noellipse-ellipse printf, extra 0
x601:	mov word [bp + 43], main$49	; 5: -57 70 43 105 2
x606:	mov [bp + 45], bp	; 3: -119 110 45
x609:	add bp, 43	; 3: -125 -59 43
x612:	mov di, bp	; 2: -119 -17
x614:	jmp printf	; 3: -23 94 1

main$49:	; post call

main$50:	; call header integral zero 0 stack zero 0

main$51:	; parameter string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#, offset 6
x617:	mov word [bp + 49], string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#	; 5: -57 70 49 40 3

main$52:	; call function noellipse-ellipse printf, extra 0
x622:	mov word [bp + 43], main$53	; 5: -57 70 43 126 2
x627:	mov [bp + 45], bp	; 3: -119 110 45
x630:	add bp, 43	; 3: -125 -59 43
x633:	mov di, bp	; 2: -119 -17
x635:	jmp printf	; 3: -23 73 1

main$53:	; post call

main$54:	; call header integral zero 0 stack zero 0

main$55:	; parameter string_25c2025s2025i2025lf#, offset 6
x638:	mov word [bp + 49], string_25c2025s2025i2025lf#	; 5: -57 70 49 103 3

main$56:	; £temporary138 = &c
x643:	mov si, bp	; 2: -119 -18
x645:	add si, 22	; 3: -125 -58 22

main$57:	; parameter £temporary138, offset 8
x648:	mov [bp + 51], si	; 3: -119 118 51

main$58:	; parameter s, offset 10
x651:	mov [bp + 53], bp	; 3: -119 110 53
x654:	add word [bp + 53], 23	; 4: -125 70 53 23

main$59:	; £temporary139 = &i
x658:	mov si, bp	; 2: -119 -18
x660:	add si, 12	; 3: -125 -58 12

main$60:	; parameter £temporary139, offset 12
x663:	mov [bp + 55], si	; 3: -119 118 55

main$61:	; £temporary140 = &d
x666:	mov si, bp	; 2: -119 -18
x668:	add si, 14	; 3: -125 -58 14

main$62:	; parameter £temporary140, offset 14
x671:	mov [bp + 57], si	; 3: -119 118 57

main$63:	; call function noellipse-ellipse scanf, extra 0
x674:	mov word [bp + 43], main$64	; 5: -57 70 43 -75 2
x679:	mov [bp + 45], bp	; 3: -119 110 45
x682:	add bp, 43	; 3: -125 -59 43
x685:	mov di, bp	; 2: -119 -17
x687:	add di, 8	; 3: -125 -57 8
x690:	jmp scanf	; 3: -23 -48 34

main$64:	; post call

main$65:	; call header integral zero 0 stack zero 0

main$66:	; parameter string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#, offset 6
x693:	mov word [bp + 49], string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#	; 5: -57 70 49 116 3

main$67:	; £temporary142 = int_to_int c (Signed_Char -> Signed_Int)
x698:	mov al, [bp + 22]	; 3: -118 70 22
x701:	and ax, 255	; 3: 37 -1 0
x704:	cmp al, 0	; 2: 60 0
x706:	jge main$68	; 2: 125 4
x708:	neg al	; 2: -10 -40
x710:	neg ax	; 2: -9 -40

main$68:	; parameter £temporary142, offset 8
x712:	mov [bp + 51], ax	; 3: -119 70 51

main$69:	; parameter s, offset 10
x715:	mov [bp + 53], bp	; 3: -119 110 53
x718:	add word [bp + 53], 23	; 4: -125 70 53 23

main$70:	; parameter i, offset 12
x722:	mov ax, [bp + 12]	; 3: -117 70 12
x725:	mov [bp + 55], ax	; 3: -119 70 55

main$71:	; push float d
x728:	fld qword [bp + 14]	; 3: -35 70 14

main$72:	; parameter d, offset 14
x731:	fstp qword [bp + 57]	; 3: -35 94 57

main$73:	; call function noellipse-ellipse printf, extra 0
x734:	mov word [bp + 43], main$74	; 5: -57 70 43 -15 2
x739:	mov [bp + 45], bp	; 3: -119 110 45
x742:	add bp, 43	; 3: -125 -59 43
x745:	mov di, bp	; 2: -119 -17
x747:	add di, 14	; 3: -125 -57 14
x750:	jmp printf	; 3: -23 -42 0

main$74:	; post call

main$75:	; return
x753:	cmp word [bp], 0	; 4: -125 126 0 0
x757:	je return_label$0	; 2: 116 11
x759:	mov ax, [bp]	; 3: -117 70 0
x762:	mov di, [bp + 4]	; 3: -117 126 4
x765:	mov bp, [bp + 2]	; 3: -117 110 2
x768:	jmp ax	; 2: -1 -32

return_label$0:
x770:	mov al, 0	; 2: -80 0
x772:	mov ah, 76	; 2: -76 76
x774:	int 33	; 2: -51 33

main$76:	; function end main

string_argc3A2025i0A#:
x776:	db "argc: %i", 10, 0	; 10: 97 114 103 99 58 32 37 105 10 0

string_25i3A203C25s3E0A#:
x786:	db "%i: <%s>", 10, 0	; 10: 37 105 58 32 60 37 115 62 10 0

int2$2#:
x796:	dw 2	; 2: 2 0

string_0A#:
x798:	db 10, 0	; 2: 10 0

string_Hello210A#:
x800:	db "Hello!", 10, 0	; 8: 72 101 108 108 111 33 10 0

string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#:
x808:	db "Please write a character, a string, an integer, and a double: ", 0	; 63: 80 108 101 97 115 101 32 119 114 105 116 101 32 97 32 99 104 97 114 97 99 116 101 114 44 32 97 32 115 116 114 105 110 103 44 32 97 110 32 105 110 116 101 103 101 114 44 32 97 110 100 32 97 32 100 111 117 98 108 101 58 32 0

string_25c2025s2025i2025lf#:
x871:	db "%c %s %i %lf", 0	; 13: 37 99 32 37 115 32 37 105 32 37 108 102 0

string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#:
x884:	db "You wrote the character ", 39, "%c", 39, ", the string ", 34, "%s", 34, ", the integer %i, and the double %f.", 10, 0	; 83: 89 111 117 32 119 114 111 116 101 32 116 104 101 32 99 104 97 114 97 99 116 101 114 32 39 37 99 39 44 32 116 104 101 32 115 116 114 105 110 103 32 34 37 115 34 44 32 116 104 101 32 105 110 116 101 103 101 114 32 37 105 44 32 97 110 100 32 116 104 101 32 100 111 117 98 108 101 32 37 102 46 10 0

printf:	; £temporary2341 = &format
x967:	mov si, bp	; 2: -119 -18
x969:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2342 = int_to_int £temporary2341 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2342 + 2
x972:	add si, 2	; 3: -125 -58 2
x975:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x978:	mov ax, [bp + 6]	; 3: -117 70 6
x981:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x984:	mov ax, [di + 8]	; 3: -117 69 8
x987:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x990:	mov word [di + 10], printf$7	; 5: -57 69 10 -15 3
x995:	mov [di + 12], bp	; 3: -119 109 12
x998:	mov [di + 14], di	; 3: -119 125 14
x1001:	add di, 10	; 3: -125 -57 10
x1004:	mov bp, di	; 2: -119 -3
x1006:	nop	; 1: -112
x1007:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2344 = return_value

printf$9:	; return_value = £temporary2344

printf$10:	; return
x1009:	mov ax, [bp]	; 3: -117 70 0
x1012:	mov di, [bp + 4]	; 3: -117 126 4
x1015:	mov bp, [bp + 2]	; 3: -117 110 2
x1018:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x1020:	mov ax, [stdout]	; 3: -95 39 4
x1023:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x1026:	mov ax, [bp + 6]	; 3: -117 70 6
x1029:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x1032:	mov ax, [bp + 8]	; 3: -117 70 8
x1035:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x1038:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 28 4
x1043:	mov [bp + 12], bp	; 3: -119 110 12
x1046:	add bp, 10	; 3: -125 -59 10
x1049:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2348 = return_value

vprintf$7:	; return_value = £temporary2348

vprintf$8:	; return
x1052:	mov ax, [bp]	; 3: -117 70 0
x1055:	mov di, [bp + 4]	; 3: -117 126 4
x1058:	mov bp, [bp + 2]	; 3: -117 110 2
x1061:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x1063:	dw g_fileArray + 29	; 2: 70 4

g_fileArray:
x1065:	dw 1	; 2: 1 0
x1067:	dw 0	; 2: 0 0
x1069:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1094:	dw 1	; 2: 1 0
x1096:	dw 1	; 2: 1 0
x1098:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1123:	dw 1	; 2: 1 0
x1125:	dw 2	; 2: 2 0
x1127:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1152:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x1645:	mov word [g_outStatus], 0	; 6: -57 6 -98 6 0 0

vfprintf$1:	; £temporary2360 = int_to_int outStream (Pointer -> Pointer)
x1651:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2360
x1654:	mov [g_outDevice], ax	; 3: -93 -96 6

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x1657:	mov ax, [bp + 8]	; 3: -117 70 8
x1660:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x1663:	mov ax, [bp + 10]	; 3: -117 70 10
x1666:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x1669:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 -109 6
x1674:	mov [bp + 14], bp	; 3: -119 110 14
x1677:	add bp, 12	; 3: -125 -59 12
x1680:	nop	; 1: -112
x1681:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2361 = return_value

vfprintf$9:	; return_value = £temporary2361

vfprintf$10:	; return
x1683:	mov ax, [bp]	; 3: -117 70 0
x1686:	mov di, [bp + 4]	; 3: -117 126 4
x1689:	mov bp, [bp + 2]	; 3: -117 110 2
x1692:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x1694:	db 0, 0	; 2: 0 0

g_outDevice:
x1696:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x1698:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x1703:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x1708:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x1713:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x1718:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x1723:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x1728:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x1733:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x1738:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x1743:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x1748:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x1753:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x1758:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x1763:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x1768:	mov word [g_outChars], 0	; 6: -57 6 4 12 0 0

printFormat$15:	; index = 0
x1774:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2193 = format + index
x1779:	mov si, [bp + 6]	; 3: -117 118 6
x1782:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2192 -> £temporary2193 = *£temporary2193

printFormat$18:	; if £temporary2192 -> £temporary2193 == 0 goto 286
x1785:	cmp byte [si], 0	; 3: -128 60 0
x1788:	je printFormat$286	; 4: 15 -124 -34 4

printFormat$19:	; £temporary2197 = format + index
x1792:	mov si, [bp + 6]	; 3: -117 118 6
x1795:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2196 -> £temporary2197 = *£temporary2197

printFormat$21:	; c = £temporary2196 -> £temporary2197
x1798:	mov al, [si]	; 2: -118 4
x1800:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 264
x1803:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x1807:	je printFormat$264	; 4: 15 -124 99 4

printFormat$23:	; case c == 43 goto 52
x1811:	mov al, [bp + 40]	; 3: -118 70 40
x1814:	cmp al, 43	; 2: 60 43
x1816:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x1820:	cmp al, 45	; 2: 60 45
x1822:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x1826:	cmp al, 32	; 2: 60 32
x1828:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x1832:	cmp al, 48	; 2: 60 48
x1834:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x1838:	cmp al, 35	; 2: 60 35
x1840:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x1844:	cmp al, 46	; 2: 60 46
x1846:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x1850:	cmp al, 42	; 2: 60 42
x1852:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x1856:	cmp al, 104	; 2: 60 104
x1858:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x1862:	cmp al, 108	; 2: 60 108
x1864:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x1868:	cmp al, 76	; 2: 60 76
x1870:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x1874:	cmp al, 37	; 2: 60 37
x1876:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x1880:	cmp al, 110	; 2: 60 110
x1882:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x1886:	cmp al, 112	; 2: 60 112
x1888:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x1892:	cmp al, 71	; 2: 60 71
x1894:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x1898:	cmp al, 103	; 2: 60 103
x1900:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x1904:	cmp al, 69	; 2: 60 69
x1906:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x1910:	cmp al, 101	; 2: 60 101
x1912:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x1916:	cmp al, 102	; 2: 60 102
x1918:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x1922:	cmp al, 115	; 2: 60 115
x1924:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x1928:	cmp al, 99	; 2: 60 99
x1930:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x1932:	cmp al, 88	; 2: 60 88
x1934:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x1936:	cmp al, 120	; 2: 60 120
x1938:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x1940:	cmp al, 111	; 2: 60 111
x1942:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x1944:	cmp al, 98	; 2: 60 98
x1946:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x1948:	cmp al, 117	; 2: 60 117
x1950:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x1952:	cmp al, 100	; 2: 60 100
x1954:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x1956:	cmp al, 105	; 2: 60 105
x1958:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 241
x1960:	jmp printFormat$241	; 3: -23 88 3

printFormat$52:	; plus = 1
x1963:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 284
x1968:	jmp printFormat$284	; 3: -23 37 4

printFormat$54:	; minus = 1
x1971:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 284
x1976:	jmp printFormat$284	; 3: -23 29 4

printFormat$56:	; space = 1
x1979:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 284
x1984:	jmp printFormat$284	; 3: -23 21 4

printFormat$58:	; zero = 1
x1987:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 284
x1992:	jmp printFormat$284	; 3: -23 13 4

printFormat$60:	; grid = 1
x1995:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 284
x2000:	jmp printFormat$284	; 3: -23 5 4

printFormat$62:	; period = 1
x2003:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 284
x2008:	jmp printFormat$284	; 3: -23 -3 3

printFormat$64:	; if period != 0 goto 67
x2011:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2015:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x2017:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 284
x2022:	jmp printFormat$284	; 3: -23 -17 3

printFormat$67:	; precision = -1
x2025:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 284
x2030:	jmp printFormat$284	; 3: -23 -25 3

printFormat$69:	; shortInt = 1
x2033:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 284
x2038:	jmp printFormat$284	; 3: -23 -33 3

printFormat$71:	; longInt = 1
x2041:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 284
x2046:	jmp printFormat$284	; 3: -23 -41 3

printFormat$73:	; longDouble = 1
x2049:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 284
x2054:	jmp printFormat$284	; 3: -23 -49 3

printFormat$75:	; if minus == 0 goto 106
x2057:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x2061:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x2065:	mov ax, [g_outChars]	; 3: -95 4 12
x2068:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2201 = format + index
x2071:	mov si, [bp + 6]	; 3: -117 118 6
x2074:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2200 -> £temporary2201 = *£temporary2201

printFormat$80:	; £temporary2202 = &£temporary2200 -> £temporary2201

printFormat$81:	; parameter £temporary2202, offset 6
x2077:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x2080:	mov ax, [bp + 8]	; 3: -117 70 8
x2083:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x2086:	mov ax, [bp + 18]	; 3: -117 70 18
x2089:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x2092:	mov ax, [bp + 22]	; 3: -117 70 22
x2095:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x2098:	mov ax, [bp + 26]	; 3: -117 70 26
x2101:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2203 = &width
x2104:	mov si, bp	; 2: -119 -18
x2106:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2203, offset 16
x2109:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x2112:	mov ax, [bp + 14]	; 3: -117 70 14
x2115:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x2118:	mov ax, [bp + 34]	; 3: -117 70 34
x2121:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x2124:	mov ax, [bp + 36]	; 3: -117 70 36
x2127:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x2130:	mov ax, [bp + 38]	; 3: -117 70 38
x2133:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x2136:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x2141:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x2146:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 112 8
x2151:	mov [bp + 45], bp	; 3: -119 110 45
x2154:	add bp, 43	; 3: -125 -59 43
x2157:	jmp printArgument	; 3: -23 -104 3

printFormat$95:	; post call

printFormat$96:	; £temporary2204 = return_value

printFormat$97:	; arg_list = £temporary2204
x2160:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2206 = g_outChars - startChars
x2163:	mov ax, [g_outChars]	; 3: -95 4 12
x2166:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x2169:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2206 >= width goto 239
x2172:	cmp ax, [bp + 12]	; 3: 59 70 12
x2175:	jge printFormat$239	; 4: 15 -115 120 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x2179:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x2183:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 -107 8
x2188:	mov [bp + 47], bp	; 3: -119 110 47
x2191:	add bp, 45	; 3: -125 -59 45
x2194:	jmp printChar	; 3: -23 -122 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x2197:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 186
x2199:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x2203:	je printFormat$186	; 4: 15 -124 100 1

printFormat$107:	; startChars = g_outChars
x2207:	mov ax, [g_outChars]	; 3: -95 4 12
x2210:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x2213:	mov ax, [g_outStatus]	; 3: -95 -98 6
x2216:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x2219:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x2224:	mov word [g_outStatus], 2	; 6: -57 6 -98 6 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2210 = format + index
x2230:	mov si, [bp + 6]	; 3: -117 118 6
x2233:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2209 -> £temporary2210 = *£temporary2210

printFormat$114:	; £temporary2211 = &£temporary2209 -> £temporary2210

printFormat$115:	; parameter £temporary2211, offset 6
x2236:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x2239:	mov ax, [bp + 8]	; 3: -117 70 8
x2242:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x2245:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x2250:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x2255:	mov ax, [bp + 26]	; 3: -117 70 26
x2258:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2212 = &width
x2261:	mov si, bp	; 2: -119 -18
x2263:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2212, offset 16
x2266:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x2269:	mov ax, [bp + 14]	; 3: -117 70 14
x2272:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x2275:	mov ax, [bp + 34]	; 3: -117 70 34
x2278:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x2281:	mov ax, [bp + 36]	; 3: -117 70 36
x2284:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x2287:	mov ax, [bp + 38]	; 3: -117 70 38
x2290:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x2293:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2213 = &negative
x2298:	mov si, bp	; 2: -119 -18
x2300:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2213, offset 28
x2303:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x2306:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 16 9
x2311:	mov [bp + 49], bp	; 3: -119 110 49
x2314:	add bp, 47	; 3: -125 -59 47
x2317:	jmp printArgument	; 3: -23 -8 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x2320:	mov ax, [bp + 43]	; 3: -117 70 43
x2323:	mov [g_outStatus], ax	; 3: -93 -98 6

printFormat$132:	; field = g_outChars - startChars
x2326:	mov ax, [g_outChars]	; 3: -95 4 12
x2329:	sub ax, [bp + 41]	; 3: 43 70 41
x2332:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x2335:	mov ax, [bp + 41]	; 3: -117 70 41
x2338:	mov [g_outChars], ax	; 3: -93 4 12

printFormat$134:	; if negative == 0 goto 145
x2341:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x2345:	je printFormat$145	; 2: 116 41

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 88, offset 6
x2347:	mov byte [bp + 55], 88	; 4: -58 70 55 88

printFormat$137:	; call function noellipse-noellipse printChar
x2351:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 61 9
x2356:	mov [bp + 51], bp	; 3: -119 110 51
x2359:	add bp, 49	; 3: -125 -59 49
x2362:	jmp printChar	; 3: -23 -34 9

printFormat$138:	; post call

printFormat$139:	; call header integral zero 0 stack zero 0

printFormat$140:	; parameter 45, offset 6
x2365:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$141:	; call function noellipse-noellipse printChar
x2369:	mov word [bp + 49], printFormat$142	; 5: -57 70 49 79 9
x2374:	mov [bp + 51], bp	; 3: -119 110 51
x2377:	add bp, 49	; 3: -125 -59 49
x2380:	jmp printChar	; 3: -23 -52 9

printFormat$142:	; post call

printFormat$143:	; ++field
x2383:	inc word [bp + 47]	; 3: -1 70 47

printFormat$144:	; goto 158
x2386:	jmp printFormat$158	; 2: -21 57

printFormat$145:	; if plus == 0 goto 152
x2388:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x2392:	je printFormat$152	; 2: 116 23

printFormat$146:	; call header integral zero 0 stack zero 0

printFormat$147:	; parameter 43, offset 6
x2394:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$148:	; call function noellipse-noellipse printChar
x2398:	mov word [bp + 49], printFormat$149	; 5: -57 70 49 108 9
x2403:	mov [bp + 51], bp	; 3: -119 110 51
x2406:	add bp, 49	; 3: -125 -59 49
x2409:	jmp printChar	; 3: -23 -81 9

printFormat$149:	; post call

printFormat$150:	; ++field
x2412:	inc word [bp + 47]	; 3: -1 70 47

printFormat$151:	; goto 158
x2415:	jmp printFormat$158	; 2: -21 28

printFormat$152:	; if space == 0 goto 158
x2417:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x2421:	je printFormat$158	; 2: 116 22

printFormat$153:	; call header integral zero 0 stack zero 0

printFormat$154:	; parameter 32, offset 6
x2423:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$155:	; call function noellipse-noellipse printChar
x2427:	mov word [bp + 49], printFormat$156	; 5: -57 70 49 -119 9
x2432:	mov [bp + 51], bp	; 3: -119 110 51
x2435:	add bp, 49	; 3: -125 -59 49
x2438:	jmp printChar	; 3: -23 -110 9

printFormat$156:	; post call

printFormat$157:	; £temporary2226 = field + 1
x2441:	mov ax, [bp + 47]	; 3: -117 70 47
x2444:	inc ax	; 1: 64

printFormat$158:	; ++field
x2445:	inc word [bp + 47]	; 3: -1 70 47

printFormat$159:	; if £temporary2226 >= width goto 165
x2448:	cmp ax, [bp + 12]	; 3: 59 70 12
x2451:	jge printFormat$165	; 2: 125 20

printFormat$160:	; call header integral zero 0 stack zero 0

printFormat$161:	; parameter 48, offset 6
x2453:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$162:	; call function noellipse-noellipse printChar
x2457:	mov word [bp + 49], printFormat$163	; 5: -57 70 49 -89 9
x2462:	mov [bp + 51], bp	; 3: -119 110 51
x2465:	add bp, 49	; 3: -125 -59 49
x2468:	jmp printChar	; 3: -23 116 9

printFormat$163:	; post call

printFormat$164:	; goto 158
x2471:	jmp printFormat$158	; 2: -21 -28

printFormat$165:	; call header integral zero 0 stack zero 0

printFormat$166:	; £temporary2230 = format + index
x2473:	mov si, [bp + 6]	; 3: -117 118 6
x2476:	add si, [bp + 10]	; 3: 3 118 10

printFormat$167:	; £temporary2229 -> £temporary2230 = *£temporary2230

printFormat$168:	; £temporary2231 = &£temporary2229 -> £temporary2230

printFormat$169:	; parameter £temporary2231, offset 6
x2479:	mov [bp + 55], si	; 3: -119 118 55

printFormat$170:	; parameter arg_list, offset 8
x2482:	mov ax, [bp + 8]	; 3: -117 70 8
x2485:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$171:	; parameter 0, offset 10
x2488:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$172:	; parameter 0, offset 12
x2493:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$173:	; parameter grid, offset 14
x2498:	mov ax, [bp + 26]	; 3: -117 70 26
x2501:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$174:	; parameter 0, offset 16
x2504:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$175:	; parameter precision, offset 18
x2509:	mov ax, [bp + 14]	; 3: -117 70 14
x2512:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$176:	; parameter shortInt, offset 20
x2515:	mov ax, [bp + 34]	; 3: -117 70 34
x2518:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$177:	; parameter longInt, offset 22
x2521:	mov ax, [bp + 36]	; 3: -117 70 36
x2524:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$178:	; parameter longDouble, offset 24
x2527:	mov ax, [bp + 38]	; 3: -117 70 38
x2530:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$179:	; parameter 0, offset 26
x2533:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$180:	; parameter 0, offset 28
x2538:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$181:	; call function noellipse-noellipse printArgument
x2543:	mov word [bp + 49], printFormat$182	; 5: -57 70 49 -3 9
x2548:	mov [bp + 51], bp	; 3: -119 110 51
x2551:	add bp, 49	; 3: -125 -59 49
x2554:	jmp printArgument	; 3: -23 11 2

printFormat$182:	; post call

printFormat$183:	; £temporary2232 = return_value

printFormat$184:	; arg_list = £temporary2232
x2557:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$185:	; goto 239
x2560:	jmp printFormat$239	; 3: -23 -8 0

printFormat$186:	; startChars = g_outChars
x2563:	mov ax, [g_outChars]	; 3: -95 4 12
x2566:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$187:	; oldOutStatus = g_outStatus
x2569:	mov ax, [g_outStatus]	; 3: -95 -98 6
x2572:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$188:	; g_outStatus = 2
x2575:	mov word [g_outStatus], 2	; 6: -57 6 -98 6 2 0

printFormat$189:	; call header integral zero 0 stack zero 0

printFormat$190:	; £temporary2234 = format + index
x2581:	mov si, [bp + 6]	; 3: -117 118 6
x2584:	add si, [bp + 10]	; 3: 3 118 10

printFormat$191:	; £temporary2233 -> £temporary2234 = *£temporary2234

printFormat$192:	; £temporary2235 = &£temporary2233 -> £temporary2234

printFormat$193:	; parameter £temporary2235, offset 6
x2587:	mov [bp + 51], si	; 3: -119 118 51

printFormat$194:	; parameter arg_list, offset 8
x2590:	mov ax, [bp + 8]	; 3: -117 70 8
x2593:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$195:	; parameter plus, offset 10
x2596:	mov ax, [bp + 18]	; 3: -117 70 18
x2599:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$196:	; parameter space, offset 12
x2602:	mov ax, [bp + 22]	; 3: -117 70 22
x2605:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$197:	; parameter grid, offset 14
x2608:	mov ax, [bp + 26]	; 3: -117 70 26
x2611:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$198:	; £temporary2236 = &width
x2614:	mov si, bp	; 2: -119 -18
x2616:	add si, 12	; 3: -125 -58 12

printFormat$199:	; parameter £temporary2236, offset 16
x2619:	mov [bp + 61], si	; 3: -119 118 61

printFormat$200:	; parameter precision, offset 18
x2622:	mov ax, [bp + 14]	; 3: -117 70 14
x2625:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$201:	; parameter shortInt, offset 20
x2628:	mov ax, [bp + 34]	; 3: -117 70 34
x2631:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$202:	; parameter longInt, offset 22
x2634:	mov ax, [bp + 36]	; 3: -117 70 36
x2637:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$203:	; parameter longDouble, offset 24
x2640:	mov ax, [bp + 38]	; 3: -117 70 38
x2643:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$204:	; parameter 1, offset 26
x2646:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$205:	; parameter 0, offset 28
x2651:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$206:	; call function noellipse-noellipse printArgument
x2656:	mov word [bp + 45], printFormat$207	; 5: -57 70 45 110 10
x2661:	mov [bp + 47], bp	; 3: -119 110 47
x2664:	add bp, 45	; 3: -125 -59 45
x2667:	jmp printArgument	; 3: -23 -102 1

printFormat$207:	; post call

printFormat$208:	; g_outStatus = oldOutStatus
x2670:	mov ax, [bp + 43]	; 3: -117 70 43
x2673:	mov [g_outStatus], ax	; 3: -93 -98 6

printFormat$209:	; field = g_outChars - startChars
x2676:	mov ax, [g_outChars]	; 3: -95 4 12
x2679:	sub ax, [bp + 41]	; 3: 43 70 41
x2682:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$210:	; g_outChars = startChars
x2685:	mov ax, [bp + 41]	; 3: -117 70 41
x2688:	mov [g_outChars], ax	; 3: -93 4 12

printFormat$211:	; £temporary2239 = field
x2691:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$212:	; ++field
x2694:	inc word [bp + 45]	; 3: -1 70 45

printFormat$213:	; if £temporary2239 >= width goto 219
x2697:	cmp ax, [bp + 12]	; 3: 59 70 12
x2700:	jge printFormat$219	; 2: 125 20

printFormat$214:	; call header integral zero 0 stack zero 0

printFormat$215:	; parameter 32, offset 6
x2702:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$216:	; call function noellipse-noellipse printChar
x2706:	mov word [bp + 47], printFormat$217	; 5: -57 70 47 -96 10
x2711:	mov [bp + 49], bp	; 3: -119 110 49
x2714:	add bp, 47	; 3: -125 -59 47
x2717:	jmp printChar	; 3: -23 123 8

printFormat$217:	; post call

printFormat$218:	; goto 211
x2720:	jmp printFormat$211	; 2: -21 -31

printFormat$219:	; call header integral zero 0 stack zero 0

printFormat$220:	; £temporary2243 = format + index
x2722:	mov si, [bp + 6]	; 3: -117 118 6
x2725:	add si, [bp + 10]	; 3: 3 118 10

printFormat$221:	; £temporary2242 -> £temporary2243 = *£temporary2243

printFormat$222:	; £temporary2244 = &£temporary2242 -> £temporary2243

printFormat$223:	; parameter £temporary2244, offset 6
x2728:	mov [bp + 53], si	; 3: -119 118 53

printFormat$224:	; parameter arg_list, offset 8
x2731:	mov ax, [bp + 8]	; 3: -117 70 8
x2734:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$225:	; parameter plus, offset 10
x2737:	mov ax, [bp + 18]	; 3: -117 70 18
x2740:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$226:	; parameter space, offset 12
x2743:	mov ax, [bp + 22]	; 3: -117 70 22
x2746:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$227:	; parameter grid, offset 14
x2749:	mov ax, [bp + 26]	; 3: -117 70 26
x2752:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$228:	; parameter 0, offset 16
x2755:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$229:	; parameter precision, offset 18
x2760:	mov ax, [bp + 14]	; 3: -117 70 14
x2763:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$230:	; parameter shortInt, offset 20
x2766:	mov ax, [bp + 34]	; 3: -117 70 34
x2769:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$231:	; parameter longInt, offset 22
x2772:	mov ax, [bp + 36]	; 3: -117 70 36
x2775:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$232:	; parameter longDouble, offset 24
x2778:	mov ax, [bp + 38]	; 3: -117 70 38
x2781:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$233:	; parameter 1, offset 26
x2784:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$234:	; parameter 0, offset 28
x2789:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$235:	; call function noellipse-noellipse printArgument
x2794:	mov word [bp + 47], printFormat$236	; 5: -57 70 47 -8 10
x2799:	mov [bp + 49], bp	; 3: -119 110 49
x2802:	add bp, 47	; 3: -125 -59 47
x2805:	jmp printArgument	; 3: -23 16 1

printFormat$236:	; post call

printFormat$237:	; £temporary2245 = return_value

printFormat$238:	; arg_list = £temporary2245
x2808:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$239:	; percent = 0
x2811:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$240:	; goto 284
x2816:	jmp printFormat$284	; 3: -23 -43 0

printFormat$241:	; value = 0
x2819:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$242:	; call header integral zero 0 stack zero 0

printFormat$243:	; £temporary2248 = int_to_int c (Signed_Char -> Signed_Int)
x2824:	mov al, [bp + 40]	; 3: -118 70 40
x2827:	and ax, 255	; 3: 37 -1 0
x2830:	cmp al, 0	; 2: 60 0
x2832:	jge printFormat$244	; 2: 125 4
x2834:	neg al	; 2: -10 -40
x2836:	neg ax	; 2: -9 -40

printFormat$244:	; parameter £temporary2248, offset 6
x2838:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$245:	; call function noellipse-noellipse isdigit
x2841:	mov word [bp + 43], printFormat$246	; 5: -57 70 43 39 11
x2846:	mov [bp + 45], bp	; 3: -119 110 45
x2849:	add bp, 43	; 3: -125 -59 43
x2852:	jmp isdigit	; 3: -23 62 25

printFormat$246:	; post call

printFormat$247:	; £temporary2249 = return_value

printFormat$248:	; if £temporary2249 == 0 goto 258
x2855:	cmp bx, 0	; 3: -125 -5 0
x2858:	je printFormat$258	; 2: 116 49

printFormat$249:	; £temporary2250 = value * 10
x2860:	mov ax, [bp + 41]	; 3: -117 70 41
x2863:	xor dx, dx	; 2: 49 -46
x2865:	imul word [int2$10#]	; 4: -9 46 6 12

printFormat$250:	; £temporary2251 = c - 48
x2869:	mov bl, [bp + 40]	; 3: -118 94 40
x2872:	sub bl, 48	; 3: -128 -21 48

printFormat$251:	; £temporary2252 = int_to_int £temporary2251 (Signed_Char -> Signed_Int)
x2875:	and bx, 255	; 4: -127 -29 -1 0
x2879:	cmp bl, 0	; 3: -128 -5 0
x2882:	jge printFormat$252	; 2: 125 4
x2884:	neg bl	; 2: -10 -37
x2886:	neg bx	; 2: -9 -37

printFormat$252:	; value = £temporary2250 + £temporary2252
x2888:	add ax, bx	; 2: 1 -40
x2890:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$253:	; £temporary2254 = index + 1
x2893:	mov ax, [bp + 10]	; 3: -117 70 10
x2896:	inc ax	; 1: 64

printFormat$254:	; £temporary2256 = format + £temporary2254
x2897:	mov si, [bp + 6]	; 3: -117 118 6
x2900:	add si, ax	; 2: 1 -58

printFormat$255:	; £temporary2255 -> £temporary2256 = *£temporary2256

printFormat$256:	; c = £temporary2255 -> £temporary2256
x2902:	mov al, [si]	; 2: -118 4
x2904:	mov [bp + 40], al	; 3: -120 70 40

printFormat$257:	; goto 242
x2907:	jmp printFormat$242	; 2: -21 -85

printFormat$258:	; --index
x2909:	dec word [bp + 10]	; 3: -1 78 10

printFormat$259:	; if period != 0 goto 262
x2912:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2916:	jne printFormat$262	; 2: 117 8

printFormat$260:	; width = value
x2918:	mov ax, [bp + 41]	; 3: -117 70 41
x2921:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$261:	; goto 284
x2924:	jmp printFormat$284	; 2: -21 106

printFormat$262:	; precision = value
x2926:	mov ax, [bp + 41]	; 3: -117 70 41
x2929:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$263:	; goto 284
x2932:	jmp printFormat$284	; 2: -21 98

printFormat$264:	; if c != 37 goto 280
x2934:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x2938:	jne printFormat$280	; 2: 117 72

printFormat$265:	; percent = 1
x2940:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$266:	; plus = 0
x2945:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$267:	; minus = 0
x2950:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$268:	; space = 0
x2955:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$269:	; zero = 0
x2960:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$270:	; grid = 0
x2965:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$271:	; widthStar = 0
x2970:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$272:	; period = 0
x2975:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$273:	; precisionStar = 0
x2980:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$274:	; shortInt = 0
x2985:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$275:	; longInt = 0
x2990:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$276:	; longDouble = 0
x2995:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$277:	; width = 0
x3000:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$278:	; precision = 0
x3005:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$279:	; goto 284
x3010:	jmp printFormat$284	; 2: -21 20

printFormat$280:	; call header integral zero 0 stack zero 0

printFormat$281:	; parameter c, offset 6
x3012:	mov al, [bp + 40]	; 3: -118 70 40
x3015:	mov [bp + 47], al	; 3: -120 70 47

printFormat$282:	; call function noellipse-noellipse printChar
x3018:	mov word [bp + 41], printFormat$283	; 5: -57 70 41 -40 11
x3023:	mov [bp + 43], bp	; 3: -119 110 43
x3026:	add bp, 41	; 3: -125 -59 41
x3029:	jmp printChar	; 3: -23 67 7

printFormat$283:	; post call

printFormat$284:	; ++index
x3032:	inc word [bp + 10]	; 3: -1 70 10

printFormat$285:	; goto 16
x3035:	jmp printFormat$16	; 3: -23 21 -5

printFormat$286:	; if g_outStatus != 1 goto 292
x3038:	cmp word [g_outStatus], 1	; 5: -125 62 -98 6 1
x3043:	jne printFormat$292	; 2: 117 16

printFormat$287:	; £temporary2265 = int_to_int g_outDevice (Pointer -> Pointer)
x3045:	mov ax, [g_outDevice]	; 3: -95 -96 6

printFormat$288:	; outString = £temporary2265
x3048:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$289:	; £temporary2267 = outString + g_outChars
x3051:	mov si, [bp + 40]	; 3: -117 118 40
x3054:	add si, [g_outChars]	; 4: 3 54 4 12

printFormat$290:	; £temporary2266 -> £temporary2267 = *£temporary2267

printFormat$291:	; £temporary2266 -> £temporary2267 = 0
x3058:	mov byte [si], 0	; 3: -58 4 0

printFormat$292:	; return_value = g_outChars
x3061:	mov bx, [g_outChars]	; 4: -117 30 4 12

printFormat$293:	; return
x3065:	mov ax, [bp]	; 3: -117 70 0
x3068:	mov di, [bp + 4]	; 3: -117 126 4
x3071:	mov bp, [bp + 2]	; 3: -117 110 2
x3074:	jmp ax	; 2: -1 -32

printFormat$294:	; function end printFormat

g_outChars:
x3076:	db 0, 0	; 2: 0 0

int2$10#:
x3078:	dw 10	; 2: 10 0

printArgument:	; £temporary1966 -> format = *format
x3080:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary1966 -> format
x3083:	mov al, [si]	; 2: -118 4
x3085:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x3088:	mov al, [bp + 30]	; 3: -118 70 30
x3091:	cmp al, 100	; 2: 60 100
x3093:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x3095:	cmp al, 105	; 2: 60 105
x3097:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x3099:	cmp al, 99	; 2: 60 99
x3101:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x3105:	cmp al, 115	; 2: 60 115
x3107:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x3111:	cmp al, 88	; 2: 60 88
x3113:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x3117:	cmp al, 120	; 2: 60 120
x3119:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x3123:	cmp al, 98	; 2: 60 98
x3125:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x3129:	cmp al, 111	; 2: 60 111
x3131:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x3135:	cmp al, 117	; 2: 60 117
x3137:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x3141:	cmp al, 71	; 2: 60 71
x3143:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x3147:	cmp al, 103	; 2: 60 103
x3149:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x3153:	cmp al, 69	; 2: 60 69
x3155:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x3159:	cmp al, 101	; 2: 60 101
x3161:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x3165:	cmp al, 102	; 2: 60 102
x3167:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x3171:	cmp al, 112	; 2: 60 112
x3173:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x3177:	cmp al, 110	; 2: 60 110
x3179:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x3183:	cmp al, 37	; 2: 60 37
x3185:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x3189:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x3192:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3196:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x3198:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary1968 = arg_list - 2
x3202:	mov si, [bp + 8]	; 3: -117 118 8
x3205:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary1969 = int_to_int £temporary1968 (Signed_Int -> Pointer)

printArgument$25:	; £temporary1970 -> £temporary1969 = *£temporary1969

printArgument$26:	; £temporary1971 = int_to_int £temporary1970 -> £temporary1969 (Signed_Int -> Signed_Short_Int)
x3208:	mov ax, [si]	; 2: -117 4
x3210:	cmp ax, 0	; 3: -125 -8 0
x3213:	jge printArgument$27	; 2: 125 4
x3215:	neg ax	; 2: -9 -40
x3217:	neg al	; 2: -10 -40

printArgument$27:	; £temporary1972 = int_to_int £temporary1971 (Signed_Short_Int -> Signed_Long_Int)
x3219:	and eax, 255	; 6: 102 37 -1 0 0 0
x3225:	cmp al, 0	; 2: 60 0
x3227:	jge printArgument$28	; 2: 125 5
x3229:	neg al	; 2: -10 -40
x3231:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary1972
x3234:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x3238:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x3240:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3244:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x3246:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary1974 = arg_list - 4
x3250:	mov si, [bp + 8]	; 3: -117 118 8
x3253:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary1975 = int_to_int £temporary1974 (Signed_Int -> Pointer)

printArgument$34:	; £temporary1976 -> £temporary1975 = *£temporary1975

printArgument$35:	; longValue = £temporary1976 -> £temporary1975
x3256:	mov eax, [si]	; 3: 102 -117 4
x3259:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x3263:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x3265:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary1978 = arg_list - 2
x3269:	mov si, [bp + 8]	; 3: -117 118 8
x3272:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary1979 = int_to_int £temporary1978 (Signed_Int -> Pointer)

printArgument$40:	; £temporary1980 -> £temporary1979 = *£temporary1979

printArgument$41:	; £temporary1981 = int_to_int £temporary1980 -> £temporary1979 (Signed_Int -> Signed_Long_Int)
x3275:	mov ax, [si]	; 2: -117 4
x3277:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3283:	cmp ax, 0	; 3: -125 -8 0
x3286:	jge printArgument$42	; 2: 125 5
x3288:	neg ax	; 2: -9 -40
x3290:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary1981
x3293:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x3297:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3301:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary1985 -> negativePtr = *negativePtr
x3303:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x3306:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x3311:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary1987 = 1
x3313:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x3316:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary1987 = 0
x3318:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary1985 -> negativePtr = £temporary1987
x3321:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x3323:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3327:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x3329:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3333:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x3337:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 23 13
x3342:	mov [bp + 50], bp	; 3: -119 110 50
x3345:	add bp, 48	; 3: -125 -59 48
x3348:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary1990 = return_value

printArgument$56:	; longValue = £temporary1990
x3351:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x3355:	mov ax, [bp + 8]	; 3: -117 70 8
x3358:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x3361:	mov ax, [bp + 16]	; 3: -117 70 16
x3364:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary1991 = &precision
x3367:	mov si, bp	; 2: -119 -18
x3369:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary1991, offset 10
x3372:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x3375:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 61 13
x3380:	mov [bp + 50], bp	; 3: -119 110 50
x3383:	add bp, 48	; 3: -125 -59 48
x3386:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary1992 = return_value

printArgument$65:	; arg_list = £temporary1992
x3389:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x3392:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3396:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x3400:	mov ax, [bp + 10]	; 3: -117 70 10
x3403:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x3406:	mov ax, [bp + 12]	; 3: -117 70 12
x3409:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x3412:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 98 13
x3417:	mov [bp + 50], bp	; 3: -119 110 50
x3420:	add bp, 48	; 3: -125 -59 48
x3423:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x3426:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x3429:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary1995 = arg_list - 2
x3433:	mov si, [bp + 8]	; 3: -117 118 8
x3436:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary1996 = int_to_int £temporary1995 (Signed_Int -> Pointer)

printArgument$76:	; £temporary1997 -> £temporary1996 = *£temporary1996

printArgument$77:	; £temporary1998 = int_to_int £temporary1997 -> £temporary1996 (Signed_Int -> Signed_Char)
x3439:	mov ax, [si]	; 2: -117 4
x3441:	cmp ax, 0	; 3: -125 -8 0
x3444:	jge printArgument$78	; 2: 125 4
x3446:	neg ax	; 2: -9 -40
x3448:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary1998
x3450:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x3453:	mov ax, [bp + 8]	; 3: -117 70 8
x3456:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x3459:	mov ax, [bp + 16]	; 3: -117 70 16
x3462:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary1999 = &precision
x3465:	mov si, bp	; 2: -119 -18
x3467:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary1999, offset 10
x3470:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x3473:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -97 13
x3478:	mov [bp + 46], bp	; 3: -119 110 46
x3481:	add bp, 44	; 3: -125 -59 44
x3484:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2000 = return_value

printArgument$87:	; arg_list = £temporary2000
x3487:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x3490:	mov al, [bp + 31]	; 3: -118 70 31
x3493:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x3496:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -74 13
x3501:	mov [bp + 46], bp	; 3: -119 110 46
x3504:	add bp, 44	; 3: -125 -59 44
x3507:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x3510:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x3513:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2003 = arg_list - 2
x3517:	mov si, [bp + 8]	; 3: -117 118 8
x3520:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2004 = int_to_int £temporary2003 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2005 -> £temporary2004 = *£temporary2004

printArgument$97:	; stringValue = £temporary2005 -> £temporary2004
x3523:	mov ax, [si]	; 2: -117 4
x3525:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x3528:	mov ax, [bp + 8]	; 3: -117 70 8
x3531:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x3534:	mov ax, [bp + 16]	; 3: -117 70 16
x3537:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2006 = &precision
x3540:	mov si, bp	; 2: -119 -18
x3542:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2006, offset 10
x3545:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x3548:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -22 13
x3553:	mov [bp + 48], bp	; 3: -119 110 48
x3556:	add bp, 46	; 3: -125 -59 46
x3559:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2007 = return_value

printArgument$106:	; arg_list = £temporary2007
x3562:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x3565:	mov ax, [bp + 44]	; 3: -117 70 44
x3568:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x3571:	mov ax, [bp + 18]	; 3: -117 70 18
x3574:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x3577:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 7 14
x3582:	mov [bp + 48], bp	; 3: -119 110 48
x3585:	add bp, 46	; 3: -125 -59 46
x3588:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x3591:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x3594:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x3598:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2023 = 10
x3600:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x3606:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x3608:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x3612:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2019 = 8
x3614:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x3620:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x3622:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x3626:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2015 = 2
x3628:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x3634:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2015 = 16
x3636:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2019 = £temporary2015

printArgument$124:	; £temporary2023 = £temporary2019

printArgument$125:	; base = £temporary2023
x3642:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x3646:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3650:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x3652:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2025 = arg_list - 2
x3656:	mov si, [bp + 8]	; 3: -117 118 8
x3659:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2026 = int_to_int £temporary2025 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2027 -> £temporary2026 = *£temporary2026

printArgument$131:	; £temporary2028 = int_to_int £temporary2027 -> £temporary2026 (Unsigned_Int -> Unsigned_Short_Int)
x3662:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2029 = int_to_int £temporary2028 (Unsigned_Short_Int -> Unsigned_Long_Int)
x3664:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2029
x3670:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x3674:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x3676:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3680:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x3682:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2031 = arg_list - 4
x3686:	mov si, [bp + 8]	; 3: -117 118 8
x3689:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2032 = int_to_int £temporary2031 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2033 -> £temporary2032 = *£temporary2032

printArgument$140:	; value = £temporary2033 -> £temporary2032
x3692:	mov eax, [si]	; 3: 102 -117 4
x3695:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x3699:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x3701:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2035 = arg_list - 2
x3705:	mov si, [bp + 8]	; 3: -117 118 8
x3708:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2036 = int_to_int £temporary2035 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2037 -> £temporary2036 = *£temporary2036

printArgument$146:	; £temporary2038 = int_to_int £temporary2037 -> £temporary2036 (Unsigned_Int -> Unsigned_Long_Int)
x3711:	mov ax, [si]	; 2: -117 4
x3713:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2038
x3719:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x3723:	mov ax, [bp + 8]	; 3: -117 70 8
x3726:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x3729:	mov ax, [bp + 16]	; 3: -117 70 16
x3732:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2041 = &precision
x3735:	mov si, bp	; 2: -119 -18
x3737:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2041, offset 10
x3740:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x3743:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -83 14
x3748:	mov [bp + 54], bp	; 3: -119 110 54
x3751:	add bp, 52	; 3: -125 -59 52
x3754:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2042 = return_value

printArgument$156:	; arg_list = £temporary2042
x3757:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x3760:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x3764:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x3768:	mov ax, [bp + 10]	; 3: -117 70 10
x3771:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x3774:	mov ax, [bp + 12]	; 3: -117 70 12
x3777:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x3780:	mov ax, [bp + 14]	; 3: -117 70 14
x3783:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x3786:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3790:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2043 = int_to_int c (Signed_Char -> Signed_Int)
x3794:	mov al, [bp + 30]	; 3: -118 70 30
x3797:	and ax, 255	; 3: 37 -1 0
x3800:	cmp al, 0	; 2: 60 0
x3802:	jge printArgument$165	; 2: 125 4
x3804:	neg al	; 2: -10 -40
x3806:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2043, offset 26
x3808:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x3811:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -15 14
x3816:	mov [bp + 74], bp	; 3: -119 110 74
x3819:	add bp, 72	; 3: -125 -59 72
x3822:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2044 = return_value

printArgument$169:	; parameter £temporary2044, offset 20
x3825:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x3828:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 2 15
x3833:	mov [bp + 54], bp	; 3: -119 110 54
x3836:	add bp, 52	; 3: -125 -59 52
x3839:	jmp printUnsignedLong	; 3: -23 34 12

printArgument$171:	; post call

printArgument$172:	; goto 359
x3842:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x3845:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3849:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x3851:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2047 = arg_list - 8
x3855:	mov si, [bp + 8]	; 3: -117 118 8
x3858:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2048 = int_to_int £temporary2047 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2049 -> £temporary2048 = *£temporary2048

printArgument$178:	; push float £temporary2049 -> £temporary2048
x3861:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x3863:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x3866:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x3869:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x3872:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x3877:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x3882:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x3887:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x3892:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 66 15
x3897:	mov [bp + 46], bp	; 3: -119 110 46
x3900:	add bp, 44	; 3: -125 -59 44
x3903:	jmp printLongDoublePlain	; 3: -23 -115 13

printArgument$188:	; post call

printArgument$189:	; goto 196
x3906:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x3908:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2052 = arg_list - 8
x3912:	mov si, [bp + 8]	; 3: -117 118 8
x3915:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2053 = int_to_int £temporary2052 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2054 -> £temporary2053 = *£temporary2053

printArgument$194:	; push float £temporary2054 -> £temporary2053
x3918:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x3920:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x3923:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3927:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2058 -> negativePtr = *negativePtr
x3929:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x3932:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x3935:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x3937:	fcompp	; 2: -34 -39
x3939:	fstsw ax	; 3: -101 -33 -32
x3942:	sahf	; 1: -98
x3943:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2060 = 1
x3945:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x3948:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2060 = 0
x3950:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2058 -> negativePtr = £temporary2060
x3953:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x3955:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3959:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x3961:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x3964:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x3967:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 -115 15
x3972:	mov [bp + 46], bp	; 3: -119 110 46
x3975:	add bp, 44	; 3: -125 -59 44
x3978:	jmp fabs	; 3: -23 -122 14

printArgument$210:	; post call

printArgument$211:	; £temporary2063 = return_value

printArgument$212:	; pop float longDoubleValue
x3981:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x3984:	mov ax, [bp + 8]	; 3: -117 70 8
x3987:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x3990:	mov ax, [bp + 16]	; 3: -117 70 16
x3993:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2064 = &precision
x3996:	mov si, bp	; 2: -119 -18
x3998:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2064, offset 10
x4001:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x4004:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -78 15
x4009:	mov [bp + 46], bp	; 3: -119 110 46
x4012:	add bp, 44	; 3: -125 -59 44
x4015:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2065 = return_value

printArgument$221:	; arg_list = £temporary2065
x4018:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x4021:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x4025:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x4027:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x4030:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x4033:	mov ax, [bp + 10]	; 3: -117 70 10
x4036:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x4039:	mov ax, [bp + 12]	; 3: -117 70 12
x4042:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x4045:	mov ax, [bp + 14]	; 3: -117 70 14
x4048:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x4051:	mov ax, [bp + 18]	; 3: -117 70 18
x4054:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x4057:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -25 15
x4062:	mov [bp + 46], bp	; 3: -119 110 46
x4065:	add bp, 44	; 3: -125 -59 44
x4068:	jmp printLongDoublePlain	; 3: -23 -24 12

printArgument$231:	; post call

printArgument$232:	; goto 359
x4071:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2068 = int_to_int c (Signed_Char -> Signed_Int)
x4074:	mov al, [bp + 30]	; 3: -118 70 30
x4077:	and ax, 255	; 3: 37 -1 0
x4080:	cmp al, 0	; 2: 60 0
x4082:	jge printArgument$235	; 2: 125 4
x4084:	neg al	; 2: -10 -40
x4086:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2068, offset 6
x4088:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x4091:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 9 16
x4096:	mov [bp + 46], bp	; 3: -119 110 46
x4099:	add bp, 44	; 3: -125 -59 44
x4102:	jmp tolower	; 3: -23 44 14

printArgument$237:	; post call

printArgument$238:	; £temporary2069 = return_value

printArgument$239:	; if £temporary2069 != 101 goto 257
x4105:	cmp bx, 101	; 3: -125 -5 101
x4108:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x4110:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x4113:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x4116:	mov ax, [bp + 10]	; 3: -117 70 10
x4119:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x4122:	mov ax, [bp + 12]	; 3: -117 70 12
x4125:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x4128:	mov ax, [bp + 14]	; 3: -117 70 14
x4131:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x4134:	mov ax, [bp + 18]	; 3: -117 70 18
x4137:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2071 = int_to_int c (Signed_Char -> Signed_Int)
x4140:	mov al, [bp + 30]	; 3: -118 70 30
x4143:	and ax, 255	; 3: 37 -1 0
x4146:	cmp al, 0	; 2: 60 0
x4148:	jge printArgument$249	; 2: 125 4
x4150:	neg al	; 2: -10 -40
x4152:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2071, offset 28
x4154:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x4157:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 75 16
x4162:	mov [bp + 68], bp	; 3: -119 110 68
x4165:	add bp, 66	; 3: -125 -59 66
x4168:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2072 = return_value

printArgument$253:	; parameter £temporary2072, offset 22
x4171:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x4174:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 92 16
x4179:	mov [bp + 46], bp	; 3: -119 110 46
x4182:	add bp, 44	; 3: -125 -59 44
x4185:	jmp printLongDoubleExpo	; 3: -23 122 14

printArgument$255:	; post call

printArgument$256:	; goto 359
x4188:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x4191:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x4194:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x4197:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 115 16
x4202:	mov [bp + 46], bp	; 3: -119 110 46
x4205:	add bp, 44	; 3: -125 -59 44
x4208:	jmp fabs	; 3: -23 -96 13

printArgument$262:	; post call

printArgument$263:	; £temporary2074 = return_value

printArgument$264:	; parameter £temporary2074, offset 6
x4211:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x4214:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 -124 16
x4219:	mov [bp + 46], bp	; 3: -119 110 46
x4222:	add bp, 44	; 3: -125 -59 44
x4225:	jmp log10	; 3: -23 -71 15

printArgument$266:	; post call

printArgument$267:	; £temporary2075 = return_value

printArgument$268:	; £temporary2076 = float_to_int £temporary2075 (Double -> Signed_Int)
x4228:	fistp word [container2bytes#]	; 4: -33 30 26 18
x4232:	mov ax, [container2bytes#]	; 3: -95 26 18

printArgument$269:	; expo = £temporary2076
x4235:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x4238:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x4242:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x4244:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x4248:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x4250:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x4253:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x4256:	mov ax, [bp + 10]	; 3: -117 70 10
x4259:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x4262:	mov ax, [bp + 12]	; 3: -117 70 12
x4265:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x4268:	mov ax, [bp + 14]	; 3: -117 70 14
x4271:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x4274:	mov ax, [bp + 18]	; 3: -117 70 18
x4277:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x4280:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -58 16
x4285:	mov [bp + 48], bp	; 3: -119 110 48
x4288:	add bp, 46	; 3: -125 -59 46
x4291:	jmp printLongDoublePlain	; 3: -23 9 12

printArgument$280:	; post call

printArgument$281:	; goto 359
x4294:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x4297:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x4300:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x4303:	mov ax, [bp + 10]	; 3: -117 70 10
x4306:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x4309:	mov ax, [bp + 12]	; 3: -117 70 12
x4312:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x4315:	mov ax, [bp + 14]	; 3: -117 70 14
x4318:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x4321:	mov ax, [bp + 18]	; 3: -117 70 18
x4324:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2081 = int_to_int c (Signed_Char -> Signed_Int)
x4327:	mov al, [bp + 30]	; 3: -118 70 30
x4330:	and ax, 255	; 3: 37 -1 0
x4333:	cmp al, 0	; 2: 60 0
x4335:	jge printArgument$291	; 2: 125 4
x4337:	neg al	; 2: -10 -40
x4339:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2081, offset 28
x4341:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x4344:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 6 17
x4349:	mov [bp + 70], bp	; 3: -119 110 70
x4352:	add bp, 68	; 3: -125 -59 68
x4355:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2082 = return_value

printArgument$295:	; parameter £temporary2082, offset 22
x4358:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x4361:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 23 17
x4366:	mov [bp + 48], bp	; 3: -119 110 48
x4369:	add bp, 46	; 3: -125 -59 46
x4372:	jmp printLongDoubleExpo	; 3: -23 -65 13

printArgument$297:	; post call

printArgument$298:	; goto 359
x4375:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x4378:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2085 = arg_list - 2
x4382:	mov si, [bp + 8]	; 3: -117 118 8
x4385:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2086 = int_to_int £temporary2085 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2087 -> £temporary2086 = *£temporary2086

printArgument$303:	; ptrValue = £temporary2087 -> £temporary2086
x4388:	mov ax, [si]	; 2: -117 4
x4390:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x4393:	mov ax, [bp + 8]	; 3: -117 70 8
x4396:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x4399:	mov ax, [bp + 16]	; 3: -117 70 16
x4402:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2088 = &precision
x4405:	mov si, bp	; 2: -119 -18
x4407:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2088, offset 10
x4410:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x4413:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 75 17
x4418:	mov [bp + 46], bp	; 3: -119 110 46
x4421:	add bp, 44	; 3: -125 -59 44
x4424:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2089 = return_value

printArgument$312:	; arg_list = £temporary2089
x4427:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2090 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x4430:	mov ax, [bp + 42]	; 3: -117 70 42
x4433:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2090, offset 6
x4439:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x4443:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x4448:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x4453:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x4458:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x4466:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x4471:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 -123 17
x4476:	mov [bp + 46], bp	; 3: -119 110 46
x4479:	add bp, 44	; 3: -125 -59 44
x4482:	jmp printUnsignedLong	; 3: -23 -97 9

printArgument$322:	; post call

printArgument$323:	; goto 359
x4485:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x4488:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2093 = arg_list - 2
x4492:	mov si, [bp + 8]	; 3: -117 118 8
x4495:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2094 = int_to_int £temporary2093 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2095 -> £temporary2094 = *£temporary2094

printArgument$328:	; ptrValue = £temporary2095 -> £temporary2094
x4498:	mov ax, [si]	; 2: -117 4
x4500:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x4503:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2097 = arg_list - 2
x4507:	mov si, [bp + 8]	; 3: -117 118 8
x4510:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2098 = int_to_int £temporary2097 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2099 -> £temporary2098 = *£temporary2098

printArgument$333:	; intPtr = £temporary2099 -> £temporary2098
x4513:	mov ax, [si]	; 2: -117 4
x4515:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x4518:	mov ax, [bp + 8]	; 3: -117 70 8
x4521:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x4524:	mov ax, [bp + 16]	; 3: -117 70 16
x4527:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2100 = &precision
x4530:	mov si, bp	; 2: -119 -18
x4532:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2100, offset 10
x4535:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x4538:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -56 17
x4543:	mov [bp + 46], bp	; 3: -119 110 46
x4546:	add bp, 44	; 3: -125 -59 44
x4549:	nop	; 1: -112
x4550:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2101 = return_value

printArgument$342:	; arg_list = £temporary2101
x4552:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2102 -> intPtr = *intPtr
x4555:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2102 -> intPtr = g_outChars
x4558:	mov ax, [g_outChars]	; 3: -95 4 12
x4561:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x4563:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x4565:	mov ax, [bp + 8]	; 3: -117 70 8
x4568:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x4571:	mov ax, [bp + 16]	; 3: -117 70 16
x4574:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2103 = &precision
x4577:	mov si, bp	; 2: -119 -18
x4579:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2103, offset 10
x4582:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x4585:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -9 17
x4590:	mov [bp + 46], bp	; 3: -119 110 46
x4593:	add bp, 44	; 3: -125 -59 44
x4596:	nop	; 1: -112
x4597:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2104 = return_value

printArgument$354:	; arg_list = £temporary2104
x4599:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x4602:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x4606:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 12 18
x4611:	mov [bp + 46], bp	; 3: -119 110 46
x4614:	add bp, 44	; 3: -125 -59 44
x4617:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x4620:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x4623:	mov ax, [bp]	; 3: -117 70 0
x4626:	mov di, [bp + 4]	; 3: -117 126 4
x4629:	mov bp, [bp + 2]	; 3: -117 110 2
x4632:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x4634:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x4636:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4641:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2532 = -value
x4643:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x4647:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2536 = £temporary2532

labs$3:	; goto 5
x4650:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2536 = value
x4652:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2536

labs$6:	; return
x4656:	mov ax, [bp]	; 3: -117 70 0
x4659:	mov di, [bp + 4]	; 3: -117 126 4
x4662:	mov bp, [bp + 2]	; 3: -117 110 2
x4665:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x4667:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4671:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1949 -> widthPtr = *widthPtr
x4673:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1949 -> widthPtr != -1 goto 9
x4676:	cmp word [si], -1	; 3: -125 60 -1
x4679:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1952 -> widthPtr = *widthPtr
x4681:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x4684:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1954 = arg_list - 2
x4688:	mov di, [bp + 6]	; 3: -117 126 6
x4691:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1955 = int_to_int £temporary1954 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1956 -> £temporary1955 = *£temporary1955

checkWidthAndPrecision$8:	; £temporary1952 -> widthPtr = £temporary1956 -> £temporary1955
x4694:	mov ax, [di]	; 2: -117 5
x4696:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x4698:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4702:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1958 -> precisionPtr = *precisionPtr
x4704:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1958 -> precisionPtr != -1 goto 18
x4707:	cmp word [si], -1	; 3: -125 60 -1
x4710:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary1961 -> precisionPtr = *precisionPtr
x4712:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x4715:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary1963 = arg_list - 2
x4719:	mov di, [bp + 6]	; 3: -117 126 6
x4722:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary1964 = int_to_int £temporary1963 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary1965 -> £temporary1964 = *£temporary1964

checkWidthAndPrecision$17:	; £temporary1961 -> precisionPtr = £temporary1965 -> £temporary1964
x4725:	mov ax, [di]	; 2: -117 5
x4727:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x4729:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x4732:	mov ax, [bp]	; 3: -117 70 0
x4735:	mov di, [bp + 4]	; 3: -117 126 4
x4738:	mov bp, [bp + 2]	; 3: -117 110 2
x4741:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x4743:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4748:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1804 = -longValue
x4750:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4754:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1804
x4757:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x4761:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x4765:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -85 18
x4770:	mov [bp + 16], bp	; 3: -119 110 16
x4773:	add bp, 14	; 3: -125 -59 14
x4776:	nop	; 1: -112
x4777:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x4779:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x4781:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4785:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x4787:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x4791:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -59 18
x4796:	mov [bp + 16], bp	; 3: -119 110 16
x4799:	add bp, 14	; 3: -125 -59 14
x4802:	nop	; 1: -112
x4803:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x4805:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x4807:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4811:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x4813:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x4817:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -33 18
x4822:	mov [bp + 16], bp	; 3: -119 110 16
x4825:	add bp, 14	; 3: -125 -59 14
x4828:	nop	; 1: -112
x4829:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x4831:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4836:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x4838:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x4842:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -8 18
x4847:	mov [bp + 16], bp	; 3: -119 110 16
x4850:	add bp, 14	; 3: -125 -59 14
x4853:	nop	; 1: -112
x4854:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x4856:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x4858:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4862:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x4866:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 16 19
x4871:	mov [bp + 16], bp	; 3: -119 110 16
x4874:	add bp, 14	; 3: -125 -59 14
x4877:	nop	; 1: -112
x4878:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x4880:	mov ax, [bp]	; 3: -117 70 0
x4883:	mov di, [bp + 4]	; 3: -117 126 4
x4886:	mov bp, [bp + 2]	; 3: -117 110 2
x4889:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x4891:	mov ax, [g_outStatus]	; 3: -95 -98 6
x4894:	cmp ax, 0	; 3: -125 -8 0
x4897:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x4899:	cmp ax, 1	; 3: -125 -8 1
x4902:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x4904:	cmp ax, 2	; 3: -125 -8 2
x4907:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x4909:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1746 = int_to_int g_outDevice (Pointer -> Pointer)
x4911:	mov ax, [g_outDevice]	; 3: -95 -96 6

printChar$6:	; stream = £temporary1746
x4914:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x4917:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1749 -> stream = *stream, offset 2
x4919:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1749 -> stream
x4922:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x4925:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1752 = &c
x4928:	mov dx, bp	; 2: -119 -22
x4930:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1752

printChar$13:	; interrupt 33
x4933:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x4935:	inc word [g_outChars]	; 4: -1 6 4 12

printChar$15:	; goto 25
x4939:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1754 = int_to_int g_outDevice (Pointer -> Pointer)
x4941:	mov ax, [g_outDevice]	; 3: -95 -96 6

printChar$17:	; outString = £temporary1754
x4944:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1755 = g_outChars
x4947:	mov ax, [g_outChars]	; 3: -95 4 12

printChar$19:	; ++g_outChars
x4950:	inc word [g_outChars]	; 4: -1 6 4 12

printChar$20:	; £temporary1757 = outString + £temporary1755
x4954:	mov si, [bp + 9]	; 3: -117 118 9
x4957:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1756 -> £temporary1757 = *£temporary1757

printChar$22:	; £temporary1756 -> £temporary1757 = c
x4959:	mov al, [bp + 6]	; 3: -118 70 6
x4962:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x4964:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x4966:	inc word [g_outChars]	; 4: -1 6 4 12

printChar$25:	; return
x4970:	mov ax, [bp]	; 3: -117 70 0
x4973:	mov di, [bp + 4]	; 3: -117 126 4
x4976:	mov bp, [bp + 2]	; 3: -117 110 2
x4979:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x4981:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4986:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1794 = longValue % 10
x4988:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4992:	xor edx, edx	; 3: 102 49 -46
x4995:	idiv dword [int4$10#]	; 5: 102 -9 62 -33 19

printLongIntRec$2:	; £temporary1795 = int_to_int £temporary1794 (Signed_Long_Int -> Signed_Int)
x5000:	cmp edx, 0	; 4: 102 -125 -6 0
x5004:	jge printLongIntRec$3	; 2: 125 5
x5006:	neg edx	; 3: 102 -9 -38
x5009:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1795
x5011:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1796 = longValue / 10
x5014:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x5018:	xor edx, edx	; 3: 102 49 -46
x5021:	idiv dword [int4$10#]	; 5: 102 -9 62 -33 19

printLongIntRec$6:	; parameter £temporary1796, offset 6
x5026:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x5030:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -76 19
x5035:	mov [bp + 14], bp	; 3: -119 110 14
x5038:	add bp, 12	; 3: -125 -59 12
x5041:	nop	; 1: -112
x5042:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1798 = digit + 48
x5044:	mov ax, [bp + 10]	; 3: -117 70 10
x5047:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1799 = int_to_int £temporary1798 (Signed_Int -> Signed_Char)
x5050:	cmp ax, 0	; 3: -125 -8 0
x5053:	jge printLongIntRec$12	; 2: 125 4
x5055:	neg ax	; 2: -9 -40
x5057:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1799, offset 6
x5059:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x5062:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -44 19
x5067:	mov [bp + 14], bp	; 3: -119 110 14
x5070:	add bp, 12	; 3: -125 -59 12
x5073:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x5076:	mov ax, [bp]	; 3: -117 70 0
x5079:	mov di, [bp + 4]	; 3: -117 126 4
x5082:	mov bp, [bp + 2]	; 3: -117 110 2
x5085:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x5087:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x5091:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x5095:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x5097:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5101:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x5103:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1763 = s + index
x5108:	mov si, [bp + 6]	; 3: -117 118 6
x5111:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1762 -> £temporary1763 = *£temporary1763

printString$5:	; if £temporary1762 -> £temporary1763 == 0 goto 53
x5114:	cmp byte [si], 0	; 3: -128 60 0
x5117:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1767 = s + index
x5121:	mov si, [bp + 6]	; 3: -117 118 6
x5124:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1766 -> £temporary1767 = *£temporary1767

printString$9:	; parameter £temporary1766 -> £temporary1767, offset 6
x5127:	mov al, [si]	; 2: -118 4
x5129:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x5132:	mov word [bp + 12], printString$11	; 5: -57 70 12 26 20
x5137:	mov [bp + 14], bp	; 3: -119 110 14
x5140:	add bp, 12	; 3: -125 -59 12
x5143:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x5146:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x5149:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x5151:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1769 = precision
x5156:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x5159:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1769 <= 0 goto 53
x5162:	cmp ax, 0	; 3: -125 -8 0
x5165:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1772 = s + index
x5169:	mov si, [bp + 6]	; 3: -117 118 6
x5172:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1771 -> £temporary1772 = *£temporary1772

printString$20:	; if £temporary1771 -> £temporary1772 == 0 goto 53
x5175:	cmp byte [si], 0	; 3: -128 60 0
x5178:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1777 = s + index
x5182:	mov si, [bp + 6]	; 3: -117 118 6
x5185:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1776 -> £temporary1777 = *£temporary1777

printString$24:	; parameter £temporary1776 -> £temporary1777, offset 6
x5188:	mov al, [si]	; 2: -118 4
x5190:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x5193:	mov word [bp + 12], printString$26	; 5: -57 70 12 87 20
x5198:	mov [bp + 14], bp	; 3: -119 110 14
x5201:	add bp, 12	; 3: -125 -59 12
x5204:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x5207:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x5210:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x5212:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x5216:	mov word [bp + 10], printString$32	; 5: -57 70 10 110 20
x5221:	mov [bp + 12], bp	; 3: -119 110 12
x5224:	add bp, 10	; 3: -125 -59 10
x5227:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x5230:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x5234:	mov word [bp + 10], printString$36	; 5: -57 70 10 -128 20
x5239:	mov [bp + 12], bp	; 3: -119 110 12
x5242:	add bp, 10	; 3: -125 -59 10
x5245:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x5248:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x5252:	mov word [bp + 10], printString$40	; 5: -57 70 10 -110 20
x5257:	mov [bp + 12], bp	; 3: -119 110 12
x5260:	add bp, 10	; 3: -125 -59 10
x5263:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x5266:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x5270:	mov word [bp + 10], printString$44	; 5: -57 70 10 -92 20
x5275:	mov [bp + 12], bp	; 3: -119 110 12
x5278:	add bp, 10	; 3: -125 -59 10
x5281:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x5284:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x5288:	mov word [bp + 10], printString$48	; 5: -57 70 10 -74 20
x5293:	mov [bp + 12], bp	; 3: -119 110 12
x5296:	add bp, 10	; 3: -125 -59 10
x5299:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x5302:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x5306:	mov word [bp + 10], printString$52	; 5: -57 70 10 -56 20
x5311:	mov [bp + 12], bp	; 3: -119 110 12
x5314:	add bp, 10	; 3: -125 -59 10
x5317:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x5320:	mov ax, [bp]	; 3: -117 70 0
x5323:	mov di, [bp + 4]	; 3: -117 126 4
x5326:	mov bp, [bp + 2]	; 3: -117 110 2
x5329:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x5331:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -31 20
x5336:	mov [bp + 10], bp	; 3: -119 110 10
x5339:	add bp, 8	; 3: -125 -59 8
x5342:	nop	; 1: -112
x5343:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary382 = return_value

isupper$4:	; localeConvPtr = £temporary382
x5345:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x5348:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5352:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary384 -> localeConvPtr = *localeConvPtr, offset 14
x5354:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary384 -> localeConvPtr, offset 6
x5357:	mov ax, [si + 14]	; 3: -117 68 14
x5360:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x5363:	mov ax, [bp + 6]	; 3: -117 70 6
x5366:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x5369:	mov word [bp + 10], isupper$11	; 5: -57 70 10 7 21
x5374:	mov [bp + 12], bp	; 3: -119 110 12
x5377:	add bp, 10	; 3: -125 -59 10
x5380:	jmp strchr	; 3: -23 -51 5

isupper$11:	; post call

isupper$12:	; £temporary385 = return_value

isupper$13:	; if £temporary385 == 0 goto 16
x5383:	cmp bx, 0	; 3: -125 -5 0
x5386:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary387 = 1
x5388:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x5391:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary387 = 0
x5393:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary387

isupper$18:	; return
x5396:	mov ax, [bp]	; 3: -117 70 0
x5399:	mov di, [bp + 4]	; 3: -117 126 4
x5402:	mov bp, [bp + 2]	; 3: -117 110 2
x5405:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x5407:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x5411:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x5413:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x5417:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary391 = 1
x5419:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x5422:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary391 = 0
x5424:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary391

isupper$25:	; return
x5427:	mov ax, [bp]	; 3: -117 70 0
x5430:	mov di, [bp + 4]	; 3: -117 126 4
x5433:	mov bp, [bp + 2]	; 3: -117 110 2
x5436:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x5438:	cmp word [@23$g_currStructPtr], 0	; 5: -125 62 92 21 0
x5443:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary515 -> g_currStructPtr = *g_currStructPtr, offset 2
x5445:	mov si, [@23$g_currStructPtr]	; 4: -117 54 92 21

localeconv$2:	; £temporary519 = £temporary515 -> g_currStructPtr
x5449:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x5452:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary519 = 0
x5454:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary519

localeconv$6:	; return
x5457:	mov ax, [bp]	; 3: -117 70 0
x5460:	mov di, [bp + 4]	; 3: -117 126 4
x5463:	mov bp, [bp + 2]	; 3: -117 110 2
x5466:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@23$g_currStructPtr:
x5468:	dw @21$sArray	; 2: 94 21

@21$sArray:
x5470:	dw string_# ; 2: 110 21
x5472:	dw @20$sw_EN_utf8	; 2: 111 21
x5474:	dw string_C# ; 2: 92 24
x5476:	dw @14$en_US_utf8	; 2: 94 24
x5478:	dw string_US# ; 2: -50 26
x5480:	dw @14$en_US_utf8	; 2: 94 24
x5482:	dw string_SE# ; 2: -47 26
x5484:	dw @20$sw_EN_utf8	; 2: 111 21

string_#:
x5486:	db 0	; 1: 0

@20$sw_EN_utf8:
x5487:	dw 1	; 2: 1 0
x5489:	dw 2	; 2: 2 0
x5491:	dw @15$swShortDayList ; 2: -127 21
x5493:	dw @16$swLongDayList ; 2: -85 21
x5495:	dw @12$enShortMonthList ; 2: -21 21
x5497:	dw @18$swLongMonthList ; 2: 51 22
x5499:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -95 22
x5501:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -68 22
x5503:	dw @19$swMessageList ; 2: -41 22

@15$swShortDayList:
x5505:	dw string_Son# ; 2: -113 21
x5507:	dw string_Man# ; 2: -109 21
x5509:	dw string_Tis# ; 2: -105 21
x5511:	dw string_Ons# ; 2: -101 21
x5513:	dw string_Tor# ; 2: -97 21
x5515:	dw string_Fre# ; 2: -93 21
x5517:	dw string_Lor# ; 2: -89 21

string_Son#:
x5519:	db "Son", 0	; 4: 83 111 110 0

string_Man#:
x5523:	db "Man", 0	; 4: 77 97 110 0

string_Tis#:
x5527:	db "Tis", 0	; 4: 84 105 115 0

string_Ons#:
x5531:	db "Ons", 0	; 4: 79 110 115 0

string_Tor#:
x5535:	db "Tor", 0	; 4: 84 111 114 0

string_Fre#:
x5539:	db "Fre", 0	; 4: 70 114 101 0

string_Lor#:
x5543:	db "Lor", 0	; 4: 76 111 114 0

@16$swLongDayList:
x5547:	dw string_Sondag# ; 2: -71 21
x5549:	dw string_Mandag# ; 2: -64 21
x5551:	dw string_Tisdag# ; 2: -57 21
x5553:	dw string_Onsdag# ; 2: -50 21
x5555:	dw string_Torsdag# ; 2: -43 21
x5557:	dw string_Fredag# ; 2: -35 21
x5559:	dw string_Lordag# ; 2: -28 21

string_Sondag#:
x5561:	db "Sondag", 0	; 7: 83 111 110 100 97 103 0

string_Mandag#:
x5568:	db "Mandag", 0	; 7: 77 97 110 100 97 103 0

string_Tisdag#:
x5575:	db "Tisdag", 0	; 7: 84 105 115 100 97 103 0

string_Onsdag#:
x5582:	db "Onsdag", 0	; 7: 79 110 115 100 97 103 0

string_Torsdag#:
x5589:	db "Torsdag", 0	; 8: 84 111 114 115 100 97 103 0

string_Fredag#:
x5597:	db "Fredag", 0	; 7: 70 114 101 100 97 103 0

string_Lordag#:
x5604:	db "Lordag", 0	; 7: 76 111 114 100 97 103 0

@12$enShortMonthList:
x5611:	dw string_Jan# ; 2: 3 22
x5613:	dw string_Feb# ; 2: 7 22
x5615:	dw string_Mar# ; 2: 11 22
x5617:	dw string_Apr# ; 2: 15 22
x5619:	dw string_May# ; 2: 19 22
x5621:	dw string_Jun# ; 2: 23 22
x5623:	dw string_Jul# ; 2: 27 22
x5625:	dw string_Aug# ; 2: 31 22
x5627:	dw string_Sep# ; 2: 35 22
x5629:	dw string_Oct# ; 2: 39 22
x5631:	dw string_Nov# ; 2: 43 22
x5633:	dw string_Dec# ; 2: 47 22

string_Jan#:
x5635:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5639:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5643:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5647:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5651:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5655:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5659:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5663:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5667:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5671:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5675:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5679:	db "Dec", 0	; 4: 68 101 99 0

@18$swLongMonthList:
x5683:	dw string_Januari# ; 2: 75 22
x5685:	dw string_Februari# ; 2: 83 22
x5687:	dw string_Mars# ; 2: 92 22
x5689:	dw string_April# ; 2: 97 22
x5691:	dw string_Maj# ; 2: 103 22
x5693:	dw string_Juni# ; 2: 107 22
x5695:	dw string_Juli# ; 2: 112 22
x5697:	dw string_Augusit# ; 2: 117 22
x5699:	dw string_September# ; 2: 125 22
x5701:	dw string_Oktober# ; 2: -121 22
x5703:	dw string_November# ; 2: -113 22
x5705:	dw string_December# ; 2: -104 22

string_Januari#:
x5707:	db "Januari", 0	; 8: 74 97 110 117 97 114 105 0

string_Februari#:
x5715:	db "Februari", 0	; 9: 70 101 98 114 117 97 114 105 0

string_Mars#:
x5724:	db "Mars", 0	; 5: 77 97 114 115 0

string_April#:
x5729:	db "April", 0	; 6: 65 112 114 105 108 0

string_Maj#:
x5735:	db "Maj", 0	; 4: 77 97 106 0

string_Juni#:
x5739:	db "Juni", 0	; 5: 74 117 110 105 0

string_Juli#:
x5744:	db "Juli", 0	; 5: 74 117 108 105 0

string_Augusit#:
x5749:	db "Augusit", 0	; 8: 65 117 103 117 115 105 116 0

string_September#:
x5757:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_Oktober#:
x5767:	db "Oktober", 0	; 8: 79 107 116 111 98 101 114 0

string_November#:
x5775:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5784:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5793:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5820:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

@19$swMessageList:
x5847:	dw string_inga20fel# ; 2: -3 22
x5849:	dw string_felaktigt20functionsnummer# ; 2: 6 23
x5851:	dw string_hittar20ej20filen# ; 2: 32 23
x5853:	dw string_hittar20ej20sokvagen# ; 2: 48 23
x5855:	dw string_inget20handtag20tillgangligt# ; 2: 67 23
x5857:	dw string_atkomst20nekad# ; 2: 94 23
x5859:	dw string_utanfor20doman# ; 2: 108 23
x5861:	dw string_utanfor20range# ; 2: 122 23
x5863:	dw string_felaktig20multibyte2Dsekvens# ; 2: -120 23
x5865:	dw string_fel20vid20oppning# ; 2: -93 23
x5867:	dw string_fel20vid20flushing# ; 2: -77 23
x5869:	dw string_fel20vid20stangning# ; 2: -60 23
x5871:	dw string_fel20oppningslage# ; 2: -42 23
x5873:	dw string_fel20vid20skrivning# ; 2: -25 23
x5875:	dw string_fel20vid20lasning# ; 2: -7 23
x5877:	dw string_fel20vid20sokning# ; 2: 9 24
x5879:	dw string_fel20vid20telling# ; 2: 25 24
x5881:	dw string_fel20vid20borttagning20av20fil# ; 2: 41 24
x5883:	dw string_fel20vid20namnbyte20av20fil# ; 2: 68 24

string_inga20fel#:
x5885:	db "inga fel", 0	; 9: 105 110 103 97 32 102 101 108 0

string_felaktigt20functionsnummer#:
x5894:	db "felaktigt functionsnummer", 0	; 26: 102 101 108 97 107 116 105 103 116 32 102 117 110 99 116 105 111 110 115 110 117 109 109 101 114 0

string_hittar20ej20filen#:
x5920:	db "hittar ej filen", 0	; 16: 104 105 116 116 97 114 32 101 106 32 102 105 108 101 110 0

string_hittar20ej20sokvagen#:
x5936:	db "hittar ej sokvagen", 0	; 19: 104 105 116 116 97 114 32 101 106 32 115 111 107 118 97 103 101 110 0

string_inget20handtag20tillgangligt#:
x5955:	db "inget handtag tillgangligt", 0	; 27: 105 110 103 101 116 32 104 97 110 100 116 97 103 32 116 105 108 108 103 97 110 103 108 105 103 116 0

string_atkomst20nekad#:
x5982:	db "atkomst nekad", 0	; 14: 97 116 107 111 109 115 116 32 110 101 107 97 100 0

string_utanfor20doman#:
x5996:	db "utanfor doman", 0	; 14: 117 116 97 110 102 111 114 32 100 111 109 97 110 0

string_utanfor20range#:
x6010:	db "utanfor range", 0	; 14: 117 116 97 110 102 111 114 32 114 97 110 103 101 0

string_felaktig20multibyte2Dsekvens#:
x6024:	db "felaktig multibyte-sekvens", 0	; 27: 102 101 108 97 107 116 105 103 32 109 117 108 116 105 98 121 116 101 45 115 101 107 118 101 110 115 0

string_fel20vid20oppning#:
x6051:	db "fel vid oppning", 0	; 16: 102 101 108 32 118 105 100 32 111 112 112 110 105 110 103 0

string_fel20vid20flushing#:
x6067:	db "fel vid flushing", 0	; 17: 102 101 108 32 118 105 100 32 102 108 117 115 104 105 110 103 0

string_fel20vid20stangning#:
x6084:	db "fel vid stangning", 0	; 18: 102 101 108 32 118 105 100 32 115 116 97 110 103 110 105 110 103 0

string_fel20oppningslage#:
x6102:	db "fel oppningslage", 0	; 17: 102 101 108 32 111 112 112 110 105 110 103 115 108 97 103 101 0

string_fel20vid20skrivning#:
x6119:	db "fel vid skrivning", 0	; 18: 102 101 108 32 118 105 100 32 115 107 114 105 118 110 105 110 103 0

string_fel20vid20lasning#:
x6137:	db "fel vid lasning", 0	; 16: 102 101 108 32 118 105 100 32 108 97 115 110 105 110 103 0

string_fel20vid20sokning#:
x6153:	db "fel vid sokning", 0	; 16: 102 101 108 32 118 105 100 32 115 111 107 110 105 110 103 0

string_fel20vid20telling#:
x6169:	db "fel vid telling", 0	; 16: 102 101 108 32 118 105 100 32 116 101 108 108 105 110 103 0

string_fel20vid20borttagning20av20fil#:
x6185:	db "fel vid borttagning av fil", 0	; 27: 102 101 108 32 118 105 100 32 98 111 114 116 116 97 103 110 105 110 103 32 97 118 32 102 105 108 0

string_fel20vid20namnbyte20av20fil#:
x6212:	db "fel vid namnbyte av fil", 0	; 24: 102 101 108 32 118 105 100 32 110 97 109 110 98 121 116 101 32 97 118 32 102 105 108 0

string_C#:
x6236:	db "C", 0	; 2: 67 0

@14$en_US_utf8:
x6238:	dw -5	; 2: -5 -1
x6240:	dw -4	; 2: -4 -1
x6242:	dw @10$enShortDayList ; 2: 112 24
x6244:	dw @11$enLongDayList ; 2: -102 24
x6246:	dw @12$enShortMonthList ; 2: -21 21
x6248:	dw @13$enLongMonthList ; 2: -31 24
x6250:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -95 22
x6252:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -68 22
x6254:	dw enMessageList ; 2: 41 25

@10$enShortDayList:
x6256:	dw string_Sun# ; 2: 126 24
x6258:	dw string_Mon# ; 2: -126 24
x6260:	dw string_Tue# ; 2: -122 24
x6262:	dw string_Wed# ; 2: -118 24
x6264:	dw string_Thu# ; 2: -114 24
x6266:	dw string_Fri# ; 2: -110 24
x6268:	dw string_Sat# ; 2: -106 24

string_Sun#:
x6270:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x6274:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x6278:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6282:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6286:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6290:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6294:	db "Sat", 0	; 4: 83 97 116 0

@11$enLongDayList:
x6298:	dw string_Sunday# ; 2: -88 24
x6300:	dw string_Monday# ; 2: -81 24
x6302:	dw string_Tuesday# ; 2: -74 24
x6304:	dw string_Wednesday# ; 2: -66 24
x6306:	dw string_Thursday# ; 2: -56 24
x6308:	dw string_Friday# ; 2: -47 24
x6310:	dw string_Saturday# ; 2: -40 24

string_Sunday#:
x6312:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6319:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6326:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6334:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6344:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6353:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x6360:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@13$enLongMonthList:
x6369:	dw string_January# ; 2: -7 24
x6371:	dw string_February# ; 2: 1 25
x6373:	dw string_March# ; 2: 10 25
x6375:	dw string_April# ; 2: 97 22
x6377:	dw string_May# ; 2: 19 22
x6379:	dw string_June# ; 2: 16 25
x6381:	dw string_July# ; 2: 21 25
x6383:	dw string_August# ; 2: 26 25
x6385:	dw string_September# ; 2: 125 22
x6387:	dw string_October# ; 2: 33 25
x6389:	dw string_November# ; 2: -113 22
x6391:	dw string_December# ; 2: -104 22

string_January#:
x6393:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x6401:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x6410:	db "March", 0	; 6: 77 97 114 99 104 0

string_June#:
x6416:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x6421:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x6426:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_October#:
x6433:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

enMessageList:
x6441:	dw string_no20error# ; 2: 81 25
x6443:	dw string_function20number20invalid# ; 2: 90 25
x6445:	dw string_file20not20found# ; 2: 114 25
x6447:	dw string_path20not20found# ; 2: -127 25
x6449:	dw string_no20handle20available# ; 2: -112 25
x6451:	dw string_access20denied# ; 2: -92 25
x6453:	dw string_out20of20domain# ; 2: -78 25
x6455:	dw string_out20of20range# ; 2: -64 25
x6457:	dw string_invalid20multibyte20sequence# ; 2: -51 25
x6459:	dw string_error20while20opening# ; 2: -24 25
x6461:	dw string_error20while20flushing# ; 2: -4 25
x6463:	dw string_error20while20closing# ; 2: 17 26
x6465:	dw string_open20mode20invalid# ; 2: 37 26
x6467:	dw string_error20while20writing# ; 2: 55 26
x6469:	dw string_error20while20reading# ; 2: 75 26
x6471:	dw string_error20while20seeking# ; 2: 95 26
x6473:	dw string_error20while20telling# ; 2: 115 26
x6475:	dw string_error20while20sizing# ; 2: -121 26
x6477:	dw string_error20while20removing20file# ; 2: -102 26
x6479:	dw string_error20while20renaming20file# ; 2: -76 26

string_no20error#:
x6481:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x6490:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x6514:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x6529:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x6544:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x6564:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x6578:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x6592:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x6605:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x6632:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x6652:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x6673:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x6693:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x6711:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x6731:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x6751:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x6771:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x6791:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x6810:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x6836:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_US#:
x6862:	db "US", 0	; 3: 85 83 0

string_SE#:
x6865:	db "SE", 0	; 3: 83 69 0

strchr:	; £temporary3135 = int_to_int i (Signed_Int -> Signed_Char)
x6868:	mov ax, [bp + 8]	; 3: -117 70 8
x6871:	cmp ax, 0	; 3: -125 -8 0
x6874:	jge strchr$1	; 2: 125 4
x6876:	neg ax	; 2: -9 -40
x6878:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3135
x6880:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x6883:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3137 = text + index
x6888:	mov si, [bp + 6]	; 3: -117 118 6
x6891:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3136 -> £temporary3137 = *£temporary3137

strchr$5:	; if £temporary3136 -> £temporary3137 == 0 goto 16
x6894:	cmp byte [si], 0	; 3: -128 60 0
x6897:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3141 = text + index
x6899:	mov si, [bp + 6]	; 3: -117 118 6
x6902:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3140 -> £temporary3141 = *£temporary3141

strchr$8:	; if £temporary3140 -> £temporary3141 != c goto 14
x6905:	mov al, [bp + 12]	; 3: -118 70 12
x6908:	cmp [si], al	; 2: 56 4
x6910:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3144 = text + index
x6912:	mov bx, [bp + 6]	; 3: -117 94 6
x6915:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3143 -> £temporary3144 = *£temporary3144

strchr$11:	; £temporary3145 = &£temporary3143 -> £temporary3144

strchr$12:	; return_value = £temporary3145

strchr$13:	; return
x6918:	mov ax, [bp]	; 3: -117 70 0
x6921:	mov di, [bp + 4]	; 3: -117 126 4
x6924:	mov bp, [bp + 2]	; 3: -117 110 2
x6927:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x6929:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x6932:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x6934:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x6937:	mov ax, [bp]	; 3: -117 70 0
x6940:	mov di, [bp + 4]	; 3: -117 126 4
x6943:	mov bp, [bp + 2]	; 3: -117 110 2
x6946:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x6948:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6952:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x6954:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x6958:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 60 27
x6963:	mov [bp + 24], bp	; 3: -119 110 24
x6966:	add bp, 22	; 3: -125 -59 22
x6969:	jmp printChar	; 3: -23 -33 -9

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x6972:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6976:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x6978:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x6982:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 84 27
x6987:	mov [bp + 24], bp	; 3: -119 110 24
x6990:	add bp, 22	; 3: -125 -59 22
x6993:	jmp printChar	; 3: -23 -57 -9

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x6996:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7000:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x7002:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x7007:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x7009:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x7013:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 115 27
x7018:	mov [bp + 24], bp	; 3: -119 110 24
x7021:	add bp, 22	; 3: -125 -59 22
x7024:	jmp printChar	; 3: -23 -88 -9

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x7027:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x7032:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x7034:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x7038:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 -116 27
x7043:	mov [bp + 24], bp	; 3: -119 110 24
x7046:	add bp, 22	; 3: -125 -59 22
x7049:	jmp printChar	; 3: -23 -113 -9

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x7052:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x7056:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1853 = 88
x7058:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x7060:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1853 = 120
x7062:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1853, offset 6
x7064:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x7067:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -87 27
x7072:	mov [bp + 24], bp	; 3: -119 110 24
x7075:	add bp, 22	; 3: -125 -59 22
x7078:	jmp printChar	; 3: -23 114 -9

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x7081:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7086:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x7088:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x7092:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -62 27
x7097:	mov [bp + 24], bp	; 3: -119 110 24
x7100:	add bp, 22	; 3: -125 -59 22
x7103:	jmp printChar	; 3: -23 89 -9

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x7106:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x7108:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7112:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x7116:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x7120:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x7124:	mov ax, [bp + 20]	; 3: -117 70 20
x7127:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x7130:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -24 27
x7135:	mov [bp + 24], bp	; 3: -119 110 24
x7138:	add bp, 22	; 3: -125 -59 22
x7141:	nop	; 1: -112
x7142:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x7144:	mov ax, [bp]	; 3: -117 70 0
x7147:	mov di, [bp + 4]	; 3: -117 126 4
x7150:	mov bp, [bp + 2]	; 3: -117 110 2
x7153:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x7155:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7160:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1829 = unsignedValue % base
x7162:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7166:	xor edx, edx	; 3: 102 49 -46
x7169:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1830 = int_to_int £temporary1829 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1830
x7173:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1831 = unsignedValue / base
x7176:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7180:	xor edx, edx	; 3: 102 49 -46
x7183:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1831, offset 6
x7187:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x7191:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x7195:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x7199:	mov ax, [bp + 14]	; 3: -117 70 14
x7202:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x7205:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 51 28
x7210:	mov [bp + 20], bp	; 3: -119 110 20
x7213:	add bp, 18	; 3: -125 -59 18
x7216:	nop	; 1: -112
x7217:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x7219:	mov ax, [bp + 16]	; 3: -117 70 16
x7222:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x7225:	mov ax, [bp + 14]	; 3: -117 70 14
x7228:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x7231:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 77 28
x7236:	mov [bp + 20], bp	; 3: -119 110 20
x7239:	add bp, 18	; 3: -125 -59 18
x7242:	nop	; 1: -112
x7243:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1833 = return_value

printUnsignedLongRec$17:	; c = £temporary1833
x7245:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x7248:	mov al, [bp + 18]	; 3: -118 70 18
x7251:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x7254:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 100 28
x7259:	mov [bp + 21], bp	; 3: -119 110 21
x7262:	add bp, 19	; 3: -125 -59 19
x7265:	jmp printChar	; 3: -23 -73 -10

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x7268:	mov ax, [bp]	; 3: -117 70 0
x7271:	mov di, [bp + 4]	; 3: -117 126 4
x7274:	mov bp, [bp + 2]	; 3: -117 110 2
x7277:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x7279:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x7283:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1819 = digit + 48
x7285:	mov bx, [bp + 6]	; 3: -117 94 6
x7288:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1820 = int_to_int £temporary1819 (Signed_Int -> Signed_Char)
x7291:	cmp bx, 0	; 3: -125 -5 0
x7294:	jge digitToChar$3	; 2: 125 4
x7296:	neg bx	; 2: -9 -37
x7298:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1820

digitToChar$4:	; return
x7300:	mov ax, [bp]	; 3: -117 70 0
x7303:	mov di, [bp + 4]	; 3: -117 126 4
x7306:	mov bp, [bp + 2]	; 3: -117 110 2
x7309:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x7311:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7315:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1821 = digit - 10
x7317:	mov bx, [bp + 6]	; 3: -117 94 6
x7320:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1822 = £temporary1821 + 65
x7323:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1823 = int_to_int £temporary1822 (Signed_Int -> Signed_Char)
x7326:	cmp bx, 0	; 3: -125 -5 0
x7329:	jge digitToChar$9	; 2: 125 4
x7331:	neg bx	; 2: -9 -37
x7333:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1823

digitToChar$10:	; return
x7335:	mov ax, [bp]	; 3: -117 70 0
x7338:	mov di, [bp + 4]	; 3: -117 126 4
x7341:	mov bp, [bp + 2]	; 3: -117 110 2
x7344:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1824 = digit - 10
x7346:	mov bx, [bp + 6]	; 3: -117 94 6
x7349:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1825 = £temporary1824 + 97
x7352:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1826 = int_to_int £temporary1825 (Signed_Int -> Signed_Char)
x7355:	cmp bx, 0	; 3: -125 -5 0
x7358:	jge digitToChar$14	; 2: 125 4
x7360:	neg bx	; 2: -9 -37
x7362:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1826

digitToChar$15:	; return
x7364:	mov ax, [bp]	; 3: -117 70 0
x7367:	mov di, [bp + 4]	; 3: -117 126 4
x7370:	mov bp, [bp + 2]	; 3: -117 110 2
x7373:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x7375:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x7378:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x7380:	fcompp	; 2: -34 -39
x7382:	fstsw ax	; 3: -101 -33 -32
x7385:	sahf	; 1: -98
x7386:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x7388:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x7392:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -18 28
x7397:	mov [bp + 24], bp	; 3: -119 110 24
x7400:	add bp, 22	; 3: -125 -59 22
x7403:	jmp printChar	; 3: -23 45 -10

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x7406:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1889 = -longDoubleValue
x7409:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x7411:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x7414:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x7419:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x7424:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1890 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7427:	fistp dword [container4bytes#]	; 4: -37 30 103 29
x7431:	mov eax, [container4bytes#]	; 4: 102 -95 103 29

printLongDoublePlain$14:	; longValue = £temporary1890
x7435:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x7439:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7443:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x7447:	mov ax, [bp + 14]	; 3: -117 70 14
x7450:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x7453:	mov ax, [bp + 16]	; 3: -117 70 16
x7456:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x7459:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 49 29
x7464:	mov [bp + 28], bp	; 3: -119 110 28
x7467:	add bp, 26	; 3: -125 -59 26
x7470:	jmp printLongInt	; 3: -23 86 -11

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x7473:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1892 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x7476:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1893 = longDoubleValue - £temporary1892
x7479:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x7481:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x7484:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x7487:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x7490:	mov ax, [bp + 18]	; 3: -117 70 18
x7493:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x7496:	mov ax, [bp + 20]	; 3: -117 70 20
x7499:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x7502:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 92 29
x7507:	mov [bp + 28], bp	; 3: -119 110 28
x7510:	add bp, 26	; 3: -125 -59 26
x7513:	nop	; 1: -112
x7514:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x7516:	mov ax, [bp]	; 3: -117 70 0
x7519:	mov di, [bp + 4]	; 3: -117 126 4
x7522:	mov bp, [bp + 2]	; 3: -117 110 2
x7525:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x7527:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x7531:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x7534:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1868 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7537:	fistp dword [container4bytes#]	; 4: -37 30 103 29
x7541:	mov eax, [container4bytes#]	; 4: 102 -95 103 29

printLongDoubleFraction$3:	; £temporary1869 = int_to_float £temporary1868 (Signed_Long_Int -> Long_Double)
x7545:	mov [container4bytes#], eax	; 4: 102 -93 103 29
x7549:	fild dword [container4bytes#]	; 4: -37 6 103 29

printLongDoubleFraction$4:	; £temporary1870 = longDoubleValue - £temporary1869
x7553:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x7555:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x7558:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7562:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x7564:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x7569:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7573:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x7575:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7579:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x7581:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x7585:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -81 29
x7590:	mov [bp + 20], bp	; 3: -119 110 20
x7593:	add bp, 18	; 3: -125 -59 18
x7596:	jmp printChar	; 3: -23 108 -11

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1876 = precision
x7599:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x7602:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1876 <= 0 goto 35
x7605:	cmp ax, 0	; 3: -125 -8 0
x7608:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x7610:	fld qword [float8$10.0#]	; 4: -35 6 11 30

printLongDoubleFraction$18:	; push float longDoubleValue
x7614:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1878 = 10.0 * longDoubleValue
x7617:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x7619:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x7622:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1879 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x7625:	fistp word [container2bytes#]	; 4: -33 30 26 18
x7629:	mov ax, [container2bytes#]	; 3: -95 26 18

printLongDoubleFraction$23:	; digitValue = £temporary1879
x7632:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1880 = digitValue + 48
x7635:	mov ax, [bp + 26]	; 3: -117 70 26
x7638:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1881 = int_to_int £temporary1880 (Signed_Int -> Signed_Char)
x7641:	cmp ax, 0	; 3: -125 -8 0
x7644:	jge printLongDoubleFraction$27	; 2: 125 4
x7646:	neg ax	; 2: -9 -40
x7648:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1881, offset 6
x7650:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x7653:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 -13 29
x7658:	mov [bp + 30], bp	; 3: -119 110 30
x7661:	add bp, 28	; 3: -125 -59 28
x7664:	jmp printChar	; 3: -23 40 -11

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x7667:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1883 = int_to_float digitValue (Signed_Int -> Long_Double)
x7670:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1884 = longDoubleValue10 - £temporary1883
x7673:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x7675:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x7678:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x7680:	mov ax, [bp]	; 3: -117 70 0
x7683:	mov di, [bp + 4]	; 3: -117 126 4
x7686:	mov bp, [bp + 2]	; 3: -117 110 2
x7689:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

float8$10.0#:
x7691:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x7699:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x7702:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x7704:	fcompp	; 2: -34 -39
x7706:	fstsw ax	; 3: -101 -33 -32
x7709:	sahf	; 1: -98
x7710:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x7712:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary828 = -x
x7715:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7717:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7719:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary832

fabs$9:	; return
x7722:	mov ax, [bp]	; 3: -117 70 0
x7725:	mov di, [bp + 4]	; 3: -117 126 4
x7728:	mov bp, [bp + 2]	; 3: -117 110 2
x7731:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x7733:	mov ax, [bp + 6]	; 3: -117 70 6
x7736:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x7739:	mov word [bp + 8], tolower$3	; 5: -57 70 8 73 30
x7744:	mov [bp + 10], bp	; 3: -119 110 10
x7747:	add bp, 8	; 3: -125 -59 8
x7750:	jmp isupper	; 3: -23 -118 -10

tolower$3:	; post call

tolower$4:	; £temporary462 = return_value

tolower$5:	; if £temporary462 == 0 goto 31
x7753:	cmp bx, 0	; 3: -125 -5 0
x7756:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x7758:	mov word [bp + 8], tolower$8	; 5: -57 70 8 92 30
x7763:	mov [bp + 10], bp	; 3: -119 110 10
x7766:	add bp, 8	; 3: -125 -59 8
x7769:	jmp localeconv	; 3: -23 -30 -10

tolower$8:	; post call

tolower$9:	; £temporary463 = return_value

tolower$10:	; localeConvPtr = £temporary463
x7772:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x7775:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7779:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary465 -> localeConvPtr = *localeConvPtr, offset 12
x7781:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary465 -> localeConvPtr
x7784:	mov ax, [si + 12]	; 3: -117 68 12
x7787:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary466 -> localeConvPtr = *localeConvPtr, offset 14
x7790:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary466 -> localeConvPtr
x7793:	mov ax, [si + 14]	; 3: -117 68 14
x7796:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x7799:	mov ax, [bp + 12]	; 3: -117 70 12
x7802:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x7805:	mov ax, [bp + 6]	; 3: -117 70 6
x7808:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x7811:	mov word [bp + 14], tolower$20	; 5: -57 70 14 -111 30
x7816:	mov [bp + 16], bp	; 3: -119 110 16
x7819:	add bp, 14	; 3: -125 -59 14
x7822:	jmp strchr	; 3: -23 67 -4

tolower$20:	; post call

tolower$21:	; £temporary467 = return_value

tolower$22:	; index = £temporary467 - upperCase
x7825:	sub bx, [bp + 12]	; 3: 43 94 12
x7828:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary470 = lowerCase + index
x7831:	mov si, [bp + 10]	; 3: -117 118 10
x7834:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary469 -> £temporary470 = *£temporary470

tolower$25:	; £temporary471 = int_to_int £temporary469 -> £temporary470 (Signed_Char -> Signed_Int)
x7837:	mov bl, [si]	; 2: -118 28
x7839:	and bx, 255	; 4: -127 -29 -1 0
x7843:	cmp bl, 0	; 3: -128 -5 0
x7846:	jge tolower$26	; 2: 125 4
x7848:	neg bl	; 2: -10 -37
x7850:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary471

tolower$27:	; return
x7852:	mov ax, [bp]	; 3: -117 70 0
x7855:	mov di, [bp + 4]	; 3: -117 126 4
x7858:	mov bp, [bp + 2]	; 3: -117 110 2
x7861:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary472 = c + 32
x7863:	mov bx, [bp + 6]	; 3: -117 94 6
x7866:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary472

tolower$30:	; return
x7869:	mov ax, [bp]	; 3: -117 70 0
x7872:	mov di, [bp + 4]	; 3: -117 126 4
x7875:	mov bp, [bp + 2]	; 3: -117 110 2
x7878:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x7880:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x7883:	mov ax, [bp]	; 3: -117 70 0
x7886:	mov di, [bp + 4]	; 3: -117 126 4
x7889:	mov bp, [bp + 2]	; 3: -117 110 2
x7892:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x7894:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x7897:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x7899:	fcompp	; 2: -34 -39
x7901:	fstsw ax	; 3: -101 -33 -32
x7904:	sahf	; 1: -98
x7905:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x7907:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x7911:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -11 30
x7916:	mov [bp + 26], bp	; 3: -119 110 26
x7919:	add bp, 24	; 3: -125 -59 24
x7922:	jmp printChar	; 3: -23 38 -12

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x7925:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x7927:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x7930:	mov ax, [bp + 20]	; 3: -117 70 20
x7933:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x7936:	mov ax, [bp + 18]	; 3: -117 70 18
x7939:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x7942:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 20 31
x7947:	mov [bp + 26], bp	; 3: -119 110 26
x7950:	add bp, 24	; 3: -125 -59 24
x7953:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x7956:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7960:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1909 = 69
x7962:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x7964:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1909 = 101
x7966:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1909, offset 6
x7968:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x7971:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 49 31
x7976:	mov [bp + 26], bp	; 3: -119 110 26
x7979:	add bp, 24	; 3: -125 -59 24
x7982:	jmp printChar	; 3: -23 -22 -13

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x7985:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x7989:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 67 31
x7994:	mov [bp + 26], bp	; 3: -119 110 26
x7997:	add bp, 24	; 3: -125 -59 24
x8000:	jmp printChar	; 3: -23 -40 -13

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x8003:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x8006:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x8009:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x8011:	fcompp	; 2: -34 -39
x8013:	fstsw ax	; 3: -101 -33 -32
x8016:	sahf	; 1: -98
x8017:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x8019:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x8023:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 101 31
x8028:	mov [bp + 26], bp	; 3: -119 110 26
x8031:	add bp, 24	; 3: -125 -59 24
x8034:	jmp printChar	; 3: -23 -74 -13

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x8037:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1914 = -value
x8040:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x8042:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x8045:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x8048:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x8051:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 -127 31
x8056:	mov [bp + 26], bp	; 3: -119 110 26
x8059:	add bp, 24	; 3: -125 -59 24
x8062:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1915 = return_value

printLongDoubleExpo$43:	; £temporary1916 = float_to_int £temporary1915 (Double -> Signed_Int)
x8065:	fistp word [container2bytes#]	; 4: -33 30 26 18
x8069:	mov ax, [container2bytes#]	; 3: -95 26 18

printLongDoubleExpo$44:	; expo = £temporary1916
x8072:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x8075:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x8078:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x8081:	fld qword [float8$10.0#]	; 4: -35 6 11 30

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x8085:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1917 = int_to_float expo (Signed_Int -> Double)
x8088:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1917, offset 14
x8091:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x8094:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -84 31
x8099:	mov [bp + 36], bp	; 3: -119 110 36
x8102:	add bp, 34	; 3: -125 -59 34
x8105:	jmp pow	; 3: -23 -16 1

printLongDoubleExpo$52:	; post call
x8108:	fstp qword [bp + 34]	; 3: -35 94 34
x8111:	fld qword [bp + 26]	; 3: -35 70 26
x8114:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1918 = return_value

printLongDoubleExpo$54:	; £temporary1919 = value / £temporary1918
x8117:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x8119:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x8122:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x8125:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x8128:	mov ax, [bp + 14]	; 3: -117 70 14
x8131:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x8134:	mov ax, [bp + 16]	; 3: -117 70 16
x8137:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x8140:	mov ax, [bp + 18]	; 3: -117 70 18
x8143:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x8146:	mov ax, [bp + 20]	; 3: -117 70 20
x8149:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x8152:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -26 31
x8157:	mov [bp + 28], bp	; 3: -119 110 28
x8160:	add bp, 26	; 3: -125 -59 26
x8163:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x8166:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8170:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1925 = 69
x8172:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x8174:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1925 = 101
x8176:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1925, offset 6
x8178:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x8181:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 3 32
x8186:	mov [bp + 28], bp	; 3: -119 110 28
x8189:	add bp, 26	; 3: -125 -59 26
x8192:	jmp printChar	; 3: -23 24 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1927 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x8195:	mov ax, [bp + 24]	; 3: -117 70 24
x8198:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8204:	cmp ax, 0	; 3: -125 -8 0
x8207:	jge printLongDoubleExpo$75	; 2: 125 5
x8209:	neg ax	; 2: -9 -40
x8211:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1927, offset 6
x8214:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x8218:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x8223:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x8228:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 50 32
x8233:	mov [bp + 28], bp	; 3: -119 110 28
x8236:	add bp, 26	; 3: -125 -59 26
x8239:	jmp printLongInt	; 3: -23 85 -14

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x8242:	mov ax, [bp]	; 3: -117 70 0
x8245:	mov di, [bp + 4]	; 3: -117 126 4
x8248:	mov bp, [bp + 2]	; 3: -117 110 2
x8251:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x8253:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x8256:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x8259:	mov word [bp + 14], log10$4	; 5: -57 70 14 81 32
x8264:	mov [bp + 16], bp	; 3: -119 110 16
x8267:	add bp, 14	; 3: -125 -59 14
x8270:	nop	; 1: -112
x8271:	jmp log	; 2: -21 25

log10$4:	; post call

log10$5:	; £temporary549 = return_value

log10$6:	; push float 2.3025850929940456840179914
x8273:	fld qword [float8$2.3025850929940456840179914#]	; 4: -35 6 98 32

log10$7:	; £temporary550 = £temporary549 / 2.3025850929940456840179914
x8277:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary550

log10$9:	; return
x8279:	mov ax, [bp]	; 3: -117 70 0
x8282:	mov di, [bp + 4]	; 3: -117 126 4
x8285:	mov bp, [bp + 2]	; 3: -117 110 2
x8288:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.3025850929940456840179914#:
x8290:	dq 2.3025850929940456840179914	; 8: 21 85 -75 -69 -79 107 2 64

log:	; push float x
x8298:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x8301:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x8303:	fcompp	; 2: -34 -39
x8305:	fstsw ax	; 3: -101 -33 -32
x8308:	sahf	; 1: -98
x8309:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x8313:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x8318:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x8321:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x8323:	fcompp	; 2: -34 -39
x8325:	fstsw ax	; 3: -101 -33 -32
x8328:	sahf	; 1: -98
x8329:	jae log$16	; 2: 115 30

log$7:	; push float x
x8331:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x8334:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x8336:	fcompp	; 2: -34 -39
x8338:	fstsw ax	; 3: -101 -33 -32
x8341:	sahf	; 1: -98
x8342:	jae log$28	; 2: 115 64

log$10:	; push float x
x8344:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.718281828
x8347:	fld qword [float8$2.718281828#]	; 4: -35 6 122 33

log$12:	; £temporary531 = x / 2.718281828
x8351:	fdiv	; 2: -34 -7

log$13:	; pop float x
x8353:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x8356:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x8359:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x8361:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3678794412335673385519170678
x8364:	fld qword [float8$0.3678794412335673385519170678#]	; 4: -35 6 -126 33

log$18:	; if x >= 0.3678794412335673385519170678 goto 28
x8368:	fcompp	; 2: -34 -39
x8370:	fstsw ax	; 3: -101 -33 -32
x8373:	sahf	; 1: -98
x8374:	jbe log$28	; 2: 118 32

log$19:	; push float x
x8376:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3678794412335673385519170678
x8379:	fld qword [float8$0.3678794412335673385519170678#]	; 4: -35 6 -126 33

log$21:	; if x >= 0.3678794412335673385519170678 goto 28
x8383:	fcompp	; 2: -34 -39
x8385:	fstsw ax	; 3: -101 -33 -32
x8388:	sahf	; 1: -98
x8389:	jbe log$28	; 2: 118 17

log$22:	; push float x
x8391:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.718281828
x8394:	fld qword [float8$2.718281828#]	; 4: -35 6 122 33

log$24:	; £temporary535 = x * 2.718281828
x8398:	fmul	; 2: -34 -55

log$25:	; pop float x
x8400:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x8403:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x8406:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x8408:	fld1	; 2: -39 -24

log$29:	; pop float index
x8410:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x8413:	fldz	; 2: -39 -18

log$31:	; pop float sum
x8415:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x8418:	fld1	; 2: -39 -24

log$33:	; pop float sign
x8420:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x8423:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x8426:	fld1	; 2: -39 -24

log$36:	; £temporary537 = x - 1
x8428:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x8430:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x8433:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x8436:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x8439:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x8442:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary538 = sign * power
x8445:	fmul	; 2: -34 -55

log$43:	; push float index
x8447:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x8450:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x8452:	fadd	; 2: -34 -63

log$46:	; top float index
x8454:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x8457:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x8459:	fsub	; 2: -34 -23

log$49:	; £temporary540 = £temporary538 / £temporary539
x8461:	fdiv	; 2: -34 -7

log$50:	; pop float term
x8463:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x8466:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x8469:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary541 = sum + term
x8472:	fadd	; 2: -34 -63

log$54:	; pop float sum
x8474:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x8477:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x8480:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary542 = power * x_minus_1
x8483:	fmul	; 2: -34 -55

log$58:	; pop float power
x8485:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x8488:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x8491:	fld qword [float8$minus1.0#]	; 4: -35 6 -118 33

log$61:	; £temporary543 = sign * -1.0
x8495:	fmul	; 2: -34 -55

log$62:	; pop float sign
x8497:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x8500:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x8503:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x8506:	mov word [bp + 64], log$67	; 5: -57 70 64 72 33
x8511:	mov [bp + 66], bp	; 3: -119 110 66
x8514:	add bp, 64	; 3: -125 -59 64
x8517:	jmp fabs	; 3: -23 -53 -4

log$67:	; post call

log$68:	; £temporary544 = return_value

log$69:	; push float 0.000000001
x8520:	fld qword [float8$0.000000001#]	; 4: -35 6 -110 33

log$70:	; if £temporary544 >= 0.000000001 goto 40
x8524:	fcompp	; 2: -34 -39
x8526:	fstsw ax	; 3: -101 -33 -32
x8529:	sahf	; 1: -98
x8530:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x8532:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary546 = int_to_float n (Signed_Int -> Double)
x8535:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary547 = sum + £temporary546
x8538:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary547

log$75:	; return
x8540:	mov ax, [bp]	; 3: -117 70 0
x8543:	mov di, [bp + 4]	; 3: -117 126 4
x8546:	mov bp, [bp + 2]	; 3: -117 110 2
x8549:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x8551:	mov word [errno], 6	; 6: -57 6 -102 33 6 0

log$77:	; push 0
x8557:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x8559:	mov ax, [bp]	; 3: -117 70 0
x8562:	mov di, [bp + 4]	; 3: -117 126 4
x8565:	mov bp, [bp + 2]	; 3: -117 110 2
x8568:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.718281828#:
x8570:	dq 2.718281828	; 8: -101 -111 4 -117 10 -65 5 64

float8$0.3678794412335673385519170678#:
x8578:	dq 0.3678794412335673385519170678	; 8: -31 2 62 54 86 -117 -41 63

float8$minus1.0#:
x8586:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8594:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x8602:	dw 0	; 2: 0 0

pow:	; push float x
x8604:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x8607:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x8609:	fcompp	; 2: -34 -39
x8611:	fstsw ax	; 3: -101 -33 -32
x8614:	sahf	; 1: -98
x8615:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x8617:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x8620:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x8623:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x8626:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x8629:	mov word [bp + 30], pow$9	; 5: -57 70 30 -61 33
x8634:	mov [bp + 32], bp	; 3: -119 110 32
x8637:	add bp, 30	; 3: -125 -59 30
x8640:	jmp log	; 3: -23 -89 -2

pow$9:	; post call
x8643:	fstp qword [bp + 30]	; 3: -35 94 30
x8646:	fld qword [bp + 22]	; 3: -35 70 22
x8649:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary553 = return_value

pow$11:	; £temporary554 = y * £temporary553
x8652:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary554, offset 6
x8654:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x8657:	mov word [bp + 22], pow$14	; 5: -57 70 22 -33 33
x8662:	mov [bp + 24], bp	; 3: -119 110 24
x8665:	add bp, 22	; 3: -125 -59 22
x8668:	jmp exp	; 3: -23 102 1

pow$14:	; post call

pow$15:	; £temporary555 = return_value

pow$16:	; return_value = £temporary555

pow$17:	; return
x8671:	mov ax, [bp]	; 3: -117 70 0
x8674:	mov di, [bp + 4]	; 3: -117 126 4
x8677:	mov bp, [bp + 2]	; 3: -117 110 2
x8680:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x8682:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x8685:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x8687:	fcompp	; 2: -34 -39
x8689:	fstsw ax	; 3: -101 -33 -32
x8692:	sahf	; 1: -98
x8693:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x8695:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x8698:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x8700:	fcompp	; 2: -34 -39
x8702:	fstsw ax	; 3: -101 -33 -32
x8705:	sahf	; 1: -98
x8706:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x8708:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x8710:	mov ax, [bp]	; 3: -117 70 0
x8713:	mov di, [bp + 4]	; 3: -117 126 4
x8716:	mov bp, [bp + 2]	; 3: -117 110 2
x8719:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x8721:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x8724:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x8726:	fcompp	; 2: -34 -39
x8728:	fstsw ax	; 3: -101 -33 -32
x8731:	sahf	; 1: -98
x8732:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x8734:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x8737:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x8739:	fcompp	; 2: -34 -39
x8741:	fstsw ax	; 3: -101 -33 -32
x8744:	sahf	; 1: -98
x8745:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x8747:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x8749:	mov ax, [bp]	; 3: -117 70 0
x8752:	mov di, [bp + 4]	; 3: -117 126 4
x8755:	mov bp, [bp + 2]	; 3: -117 110 2
x8758:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x8760:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x8763:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x8765:	fcompp	; 2: -34 -39
x8767:	fstsw ax	; 3: -101 -33 -32
x8770:	sahf	; 1: -98
x8771:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x8775:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x8778:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x8781:	mov word [bp + 22], pow$43	; 5: -57 70 22 91 34
x8786:	mov [bp + 24], bp	; 3: -119 110 24
x8789:	add bp, 22	; 3: -125 -59 22
x8792:	jmp floor	; 3: -23 96 1

pow$43:	; post call

pow$44:	; £temporary563 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x8795:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x8798:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x8801:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x8804:	mov word [bp + 30], pow$49	; 5: -57 70 30 114 34
x8809:	mov [bp + 32], bp	; 3: -119 110 32
x8812:	add bp, 30	; 3: -125 -59 30
x8815:	jmp ceil	; 3: -23 -105 1

pow$49:	; post call
x8818:	fstp qword [bp + 30]	; 3: -35 94 30
x8821:	fld qword [bp + 22]	; 3: -35 70 22
x8824:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary564 = return_value

pow$51:	; if £temporary563 != £temporary564 goto 90
x8827:	fcompp	; 2: -34 -39
x8829:	fstsw ax	; 3: -101 -33 -32
x8832:	sahf	; 1: -98
x8833:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x8837:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary567 = float_to_int y (Double -> Signed_Long_Int)
x8840:	fistp dword [container4bytes#]	; 4: -37 30 103 29
x8844:	mov eax, [container4bytes#]	; 4: 102 -95 103 29

pow$54:	; long_y = £temporary567
x8848:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary568 = long_y % 2
x8852:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x8856:	xor edx, edx	; 3: 102 49 -46
x8859:	idiv dword [int4$2#]	; 5: 102 -9 62 65 35

pow$56:	; if £temporary568 != 0 goto 73
x8864:	cmp edx, 0	; 4: 102 -125 -6 0
x8868:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x8870:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x8873:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x8876:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary570 = -x
x8879:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary570, offset 6
x8881:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x8884:	mov word [bp + 34], pow$64	; 5: -57 70 34 -62 34
x8889:	mov [bp + 36], bp	; 3: -119 110 36
x8892:	add bp, 34	; 3: -125 -59 34
x8895:	jmp log	; 3: -23 -88 -3

pow$64:	; post call
x8898:	fstp qword [bp + 34]	; 3: -35 94 34
x8901:	fld qword [bp + 26]	; 3: -35 70 26
x8904:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary571 = return_value

pow$66:	; £temporary572 = y * £temporary571
x8907:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary572, offset 6
x8909:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x8912:	mov word [bp + 26], pow$69	; 5: -57 70 26 -34 34
x8917:	mov [bp + 28], bp	; 3: -119 110 28
x8920:	add bp, 26	; 3: -125 -59 26
x8923:	nop	; 1: -112
x8924:	jmp exp	; 2: -21 103

pow$69:	; post call

pow$70:	; £temporary573 = return_value

pow$71:	; return_value = £temporary573

pow$72:	; return
x8926:	mov ax, [bp]	; 3: -117 70 0
x8929:	mov di, [bp + 4]	; 3: -117 126 4
x8932:	mov bp, [bp + 2]	; 3: -117 110 2
x8935:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x8937:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x8940:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x8943:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary574 = -x
x8946:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary574, offset 6
x8948:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x8951:	mov word [bp + 34], pow$80	; 5: -57 70 34 5 35
x8956:	mov [bp + 36], bp	; 3: -119 110 36
x8959:	add bp, 34	; 3: -125 -59 34
x8962:	jmp log	; 3: -23 101 -3

pow$80:	; post call
x8965:	fstp qword [bp + 34]	; 3: -35 94 34
x8968:	fld qword [bp + 26]	; 3: -35 70 26
x8971:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary575 = return_value

pow$82:	; £temporary576 = y * £temporary575
x8974:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary576, offset 6
x8976:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x8979:	mov word [bp + 26], pow$85	; 5: -57 70 26 33 35
x8984:	mov [bp + 28], bp	; 3: -119 110 28
x8987:	add bp, 26	; 3: -125 -59 26
x8990:	nop	; 1: -112
x8991:	jmp exp	; 2: -21 36

pow$85:	; post call

pow$86:	; £temporary577 = return_value

pow$87:	; £temporary578 = -£temporary577
x8993:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary578

pow$89:	; return
x8995:	mov ax, [bp]	; 3: -117 70 0
x8998:	mov di, [bp + 4]	; 3: -117 126 4
x9001:	mov bp, [bp + 2]	; 3: -117 110 2
x9004:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x9006:	mov word [errno], 6	; 6: -57 6 -102 33 6 0

pow$91:	; push 0
x9012:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x9014:	mov ax, [bp]	; 3: -117 70 0
x9017:	mov di, [bp + 4]	; 3: -117 126 4
x9020:	mov bp, [bp + 2]	; 3: -117 110 2
x9023:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x9025:	dd 2	; 4: 2 0 0 0

exp:	; push 1
x9029:	fld1	; 2: -39 -24

exp$1:	; pop float index
x9031:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x9034:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x9036:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x9039:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x9041:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x9044:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x9047:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x9050:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x9053:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary520 = power / faculty
x9056:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x9058:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x9061:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x9064:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary521 = sum + term
x9067:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x9069:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x9072:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x9075:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary522 = power * x
x9078:	fmul	; 2: -34 -55

exp$19:	; pop float power
x9080:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x9083:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x9086:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x9089:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x9091:	fadd	; 2: -34 -63

exp$24:	; top float index
x9093:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary524 = faculty * £temporary523
x9096:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x9098:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x9101:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x9104:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x9107:	mov word [bp + 54], exp$31	; 5: -57 70 54 -95 35
x9112:	mov [bp + 56], bp	; 3: -119 110 56
x9115:	add bp, 54	; 3: -125 -59 54
x9118:	jmp fabs	; 3: -23 114 -6

exp$31:	; post call

exp$32:	; £temporary525 = return_value

exp$33:	; push float 0.000000001
x9121:	fld qword [float8$0.000000001#]	; 4: -35 6 -110 33

exp$34:	; if £temporary525 >= 0.000000001 goto 8
x9125:	fcompp	; 2: -34 -39
x9127:	fstsw ax	; 3: -101 -33 -32
x9130:	sahf	; 1: -98
x9131:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x9133:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x9136:	mov ax, [bp]	; 3: -117 70 0
x9139:	mov di, [bp + 4]	; 3: -117 126 4
x9142:	mov bp, [bp + 2]	; 3: -117 110 2
x9145:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x9147:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x9150:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x9152:	fcompp	; 2: -34 -39
x9154:	fstsw ax	; 3: -101 -33 -32
x9157:	sahf	; 1: -98
x9158:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x9160:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary804 = -x
x9163:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary804, offset 6
x9165:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x9168:	mov word [bp + 14], floor$8	; 5: -57 70 14 -34 35
x9173:	mov [bp + 16], bp	; 3: -119 110 16
x9176:	add bp, 14	; 3: -125 -59 14
x9179:	nop	; 1: -112
x9180:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary805 = return_value

floor$10:	; £temporary806 = -£temporary805
x9182:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary806

floor$12:	; return
x9184:	mov ax, [bp]	; 3: -117 70 0
x9187:	mov di, [bp + 4]	; 3: -117 126 4
x9190:	mov bp, [bp + 2]	; 3: -117 110 2
x9193:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x9195:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary807 = float_to_int x (Double -> Signed_Long_Int)
x9198:	fistp dword [container4bytes#]	; 4: -37 30 103 29
x9202:	mov eax, [container4bytes#]	; 4: 102 -95 103 29

floor$15:	; £temporary808 = int_to_float £temporary807 (Signed_Long_Int -> Double)
x9206:	mov [container4bytes#], eax	; 4: 102 -93 103 29
x9210:	fild dword [container4bytes#]	; 4: -37 6 103 29

floor$16:	; return_value = £temporary808

floor$17:	; return
x9214:	mov ax, [bp]	; 3: -117 70 0
x9217:	mov di, [bp + 4]	; 3: -117 126 4
x9220:	mov bp, [bp + 2]	; 3: -117 110 2
x9223:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x9225:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x9228:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x9230:	fcompp	; 2: -34 -39
x9232:	fstsw ax	; 3: -101 -33 -32
x9235:	sahf	; 1: -98
x9236:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x9238:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary811 = -x
x9241:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary811, offset 6
x9243:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x9246:	mov word [bp + 14], ceil$8	; 5: -57 70 14 44 36
x9251:	mov [bp + 16], bp	; 3: -119 110 16
x9254:	add bp, 14	; 3: -125 -59 14
x9257:	nop	; 1: -112
x9258:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary812 = return_value

ceil$10:	; £temporary813 = -£temporary812
x9260:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary813

ceil$12:	; return
x9262:	mov ax, [bp]	; 3: -117 70 0
x9265:	mov di, [bp + 4]	; 3: -117 126 4
x9268:	mov bp, [bp + 2]	; 3: -117 110 2
x9271:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x9273:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x9276:	fld qword [float8$0.999999999999#]	; 4: -35 6 93 36

ceil$15:	; £temporary814 = x + 0.999999999999
x9280:	fadd	; 2: -34 -63

ceil$16:	; £temporary815 = float_to_int £temporary814 (Double -> Signed_Long_Int)
x9282:	fistp dword [container4bytes#]	; 4: -37 30 103 29
x9286:	mov eax, [container4bytes#]	; 4: 102 -95 103 29

ceil$17:	; £temporary816 = int_to_float £temporary815 (Signed_Long_Int -> Double)
x9290:	mov [container4bytes#], eax	; 4: 102 -93 103 29
x9294:	fild dword [container4bytes#]	; 4: -37 6 103 29

ceil$18:	; return_value = £temporary816

ceil$19:	; return
x9298:	mov ax, [bp]	; 3: -117 70 0
x9301:	mov di, [bp + 4]	; 3: -117 126 4
x9304:	mov bp, [bp + 2]	; 3: -117 110 2
x9307:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x9309:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; if c < 48 goto 4
x9317:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x9321:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x9323:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x9327:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary405 = 1
x9329:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x9332:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary405 = 0
x9334:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary405

isdigit$6:	; return
x9337:	mov ax, [bp]	; 3: -117 70 0
x9340:	mov di, [bp + 4]	; 3: -117 126 4
x9343:	mov bp, [bp + 2]	; 3: -117 110 2
x9346:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

mktime:	; if tp == 0 goto 28
x9348:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x9352:	je mktime$28	; 4: 15 -124 -40 0

mktime$1:	; £temporary2615 -> tp = *tp, offset 10
x9356:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; £temporary2616 = £temporary2615 -> tp - 69
x9359:	mov ax, [si + 10]	; 3: -117 68 10
x9362:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; £temporary2617 = £temporary2616 / 4
x9365:	xor dx, dx	; 2: 49 -46
x9367:	idiv word [int2$4#]	; 4: -9 62 117 37

mktime$4:	; £temporary2618 = int_to_int £temporary2617 (Signed_Int -> Signed_Long_Int)
x9371:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9377:	cmp ax, 0	; 3: -125 -8 0
x9380:	jge mktime$5	; 2: 125 5
x9382:	neg ax	; 2: -9 -40
x9384:	neg eax	; 3: 102 -9 -40

mktime$5:	; leapDays = £temporary2618
x9387:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; £temporary2619 -> tp = *tp, offset 10
x9391:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; £temporary2620 = £temporary2619 -> tp - 70
x9394:	mov ax, [si + 10]	; 3: -117 68 10
x9397:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; £temporary2621 = £temporary2620 * 365
x9400:	xor dx, dx	; 2: 49 -46
x9402:	imul word [int2$365#]	; 4: -9 46 119 37

mktime$9:	; £temporary2622 = int_to_int £temporary2621 (Signed_Int -> Signed_Long_Int)
x9406:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9412:	cmp ax, 0	; 3: -125 -8 0
x9415:	jge mktime$10	; 2: 125 5
x9417:	neg ax	; 2: -9 -40
x9419:	neg eax	; 3: 102 -9 -40

mktime$10:	; £temporary2623 = £temporary2622 + leapDays
x9422:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; £temporary2624 -> tp = *tp, offset 14
x9426:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; £temporary2625 = int_to_int £temporary2624 -> tp (Signed_Int -> Signed_Long_Int)
x9429:	mov bx, [si + 14]	; 3: -117 92 14
x9432:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x9439:	cmp bx, 0	; 3: -125 -5 0
x9442:	jge mktime$13	; 2: 125 5
x9444:	neg bx	; 2: -9 -37
x9446:	neg ebx	; 3: 102 -9 -37

mktime$13:	; totalDays = £temporary2623 + £temporary2625
x9449:	add eax, ebx	; 3: 102 1 -40
x9452:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$14:	; £temporary2627 = totalDays * 86400
x9456:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x9460:	xor edx, edx	; 3: 102 49 -46
x9463:	imul dword [int4$86400#]	; 5: 102 -9 46 121 37
x9468:	mov ebx, eax	; 3: 102 -119 -61

mktime$15:	; £temporary2628 -> tp = *tp, offset 4
x9471:	mov si, [bp + 6]	; 3: -117 118 6

mktime$16:	; £temporary2629 = int_to_int £temporary2628 -> tp (Signed_Int -> Signed_Long_Int)
x9474:	mov ax, [si + 4]	; 3: -117 68 4
x9477:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9483:	cmp ax, 0	; 3: -125 -8 0
x9486:	jge mktime$17	; 2: 125 5
x9488:	neg ax	; 2: -9 -40
x9490:	neg eax	; 3: 102 -9 -40

mktime$17:	; £temporary2630 = £temporary2629 * 3600
x9493:	xor edx, edx	; 3: 102 49 -46
x9496:	imul dword [int4$3600#]	; 5: 102 -9 46 125 37

mktime$18:	; £temporary2631 = £temporary2627 + £temporary2630
x9501:	add ebx, eax	; 3: 102 1 -61

mktime$19:	; £temporary2632 -> tp = *tp, offset 2
x9504:	mov si, [bp + 6]	; 3: -117 118 6

mktime$20:	; £temporary2633 = int_to_int £temporary2632 -> tp (Signed_Int -> Signed_Long_Int)
x9507:	mov ax, [si + 2]	; 3: -117 68 2
x9510:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9516:	cmp ax, 0	; 3: -125 -8 0
x9519:	jge mktime$21	; 2: 125 5
x9521:	neg ax	; 2: -9 -40
x9523:	neg eax	; 3: 102 -9 -40

mktime$21:	; £temporary2634 = £temporary2633 * 60
x9526:	xor edx, edx	; 3: 102 49 -46
x9529:	imul dword [int4$60#]	; 5: 102 -9 46 -127 37

mktime$22:	; £temporary2635 = £temporary2631 + £temporary2634
x9534:	add ebx, eax	; 3: 102 1 -61

mktime$23:	; £temporary2636 -> tp = *tp
x9537:	mov si, [bp + 6]	; 3: -117 118 6

mktime$24:	; £temporary2637 = int_to_int £temporary2636 -> tp (Signed_Int -> Signed_Long_Int)
x9540:	mov ax, [si]	; 2: -117 4
x9542:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9548:	cmp ax, 0	; 3: -125 -8 0
x9551:	jge mktime$25	; 2: 125 5
x9553:	neg ax	; 2: -9 -40
x9555:	neg eax	; 3: 102 -9 -40

mktime$25:	; £temporary2638 = £temporary2635 + £temporary2637
x9558:	add ebx, eax	; 3: 102 1 -61

mktime$26:	; return_value = £temporary2638

mktime$27:	; return
x9561:	mov ax, [bp]	; 3: -117 70 0
x9564:	mov di, [bp + 4]	; 3: -117 126 4
x9567:	mov bp, [bp + 2]	; 3: -117 110 2
x9570:	jmp ax	; 2: -1 -32

mktime$28:	; return_value = 0
x9572:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$29:	; return
x9578:	mov ax, [bp]	; 3: -117 70 0
x9581:	mov di, [bp + 4]	; 3: -117 126 4
x9584:	mov bp, [bp + 2]	; 3: -117 110 2
x9587:	jmp ax	; 2: -1 -32

mktime$30:	; function end mktime

int2$4#:
x9589:	dw 4	; 2: 4 0

int2$365#:
x9591:	dw 365	; 2: 109 1

int4$86400#:
x9593:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x9597:	dd 3600	; 4: 16 14 0 0

int4$60#:
x9601:	dd 60	; 4: 60 0 0 0

scanf:	; £temporary1699 = &format
x9605:	mov si, bp	; 2: -119 -18
x9607:	add si, 6	; 3: -125 -58 6

scanf$1:	; £temporary1700 = int_to_int £temporary1699 (Pointer -> Pointer)

scanf$2:	; arg_list = £temporary1700 + 2
x9610:	add si, 2	; 3: -125 -58 2
x9613:	mov [di + 8], si	; 3: -119 117 8

scanf$3:	; call header integral zero 0 stack zero 0

scanf$4:	; parameter format, offset 6
x9616:	mov ax, [bp + 6]	; 3: -117 70 6
x9619:	mov [di + 16], ax	; 3: -119 69 16

scanf$5:	; parameter arg_list, offset 8
x9622:	mov ax, [di + 8]	; 3: -117 69 8
x9625:	mov [di + 18], ax	; 3: -119 69 18

scanf$6:	; call function ellipse-noellipse vscanf
x9628:	mov word [di + 10], scanf$7	; 5: -57 69 10 -81 37
x9633:	mov [di + 12], bp	; 3: -119 109 12
x9636:	mov [di + 14], di	; 3: -119 125 14
x9639:	add di, 10	; 3: -125 -57 10
x9642:	mov bp, di	; 2: -119 -3
x9644:	nop	; 1: -112
x9645:	jmp vscanf	; 2: -21 11

scanf$7:	; post call

scanf$8:	; £temporary1702 = return_value

scanf$9:	; return_value = £temporary1702

scanf$10:	; return
x9647:	mov ax, [bp]	; 3: -117 70 0
x9650:	mov di, [bp + 4]	; 3: -117 126 4
x9653:	mov bp, [bp + 2]	; 3: -117 110 2
x9656:	jmp ax	; 2: -1 -32

scanf$11:	; function end scanf

vscanf:	; call header integral zero 0 stack zero 0

vscanf$1:	; parameter stdin, offset 6
x9658:	mov ax, [stdin]	; 3: -95 -27 37
x9661:	mov [bp + 16], ax	; 3: -119 70 16

vscanf$2:	; parameter format, offset 8
x9664:	mov ax, [bp + 6]	; 3: -117 70 6
x9667:	mov [bp + 18], ax	; 3: -119 70 18

vscanf$3:	; parameter arg_list, offset 10
x9670:	mov ax, [bp + 8]	; 3: -117 70 8
x9673:	mov [bp + 20], ax	; 3: -119 70 20

vscanf$4:	; call function noellipse-noellipse vfscanf
x9676:	mov word [bp + 10], vscanf$5	; 5: -57 70 10 -38 37
x9681:	mov [bp + 12], bp	; 3: -119 110 12
x9684:	add bp, 10	; 3: -125 -59 10
x9687:	nop	; 1: -112
x9688:	jmp vfscanf	; 2: -21 13

vscanf$5:	; post call

vscanf$6:	; £temporary1706 = return_value

vscanf$7:	; return_value = £temporary1706

vscanf$8:	; return
x9690:	mov ax, [bp]	; 3: -117 70 0
x9693:	mov di, [bp + 4]	; 3: -117 126 4
x9696:	mov bp, [bp + 2]	; 3: -117 110 2
x9699:	jmp ax	; 2: -1 -32

vscanf$9:	; function end vscanf

stdin:
x9701:	dw g_fileArray	; 2: 41 4

vfscanf:	; g_inStatus = 0
x9703:	mov word [g_inStatus], 0	; 6: -57 6 24 38 0 0

vfscanf$1:	; £temporary1718 = int_to_int inStream (Pointer -> Pointer)
x9709:	mov ax, [bp + 6]	; 3: -117 70 6

vfscanf$2:	; g_inDevice = £temporary1718
x9712:	mov [g_inDevice], ax	; 3: -93 26 38

vfscanf$3:	; call header integral zero 0 stack zero 0

vfscanf$4:	; parameter format, offset 6
x9715:	mov ax, [bp + 8]	; 3: -117 70 8
x9718:	mov [bp + 18], ax	; 3: -119 70 18

vfscanf$5:	; parameter arg_list, offset 8
x9721:	mov ax, [bp + 10]	; 3: -117 70 10
x9724:	mov [bp + 20], ax	; 3: -119 70 20

vfscanf$6:	; call function noellipse-noellipse scanFormat
x9727:	mov word [bp + 12], vfscanf$7	; 5: -57 70 12 13 38
x9732:	mov [bp + 14], bp	; 3: -119 110 14
x9735:	add bp, 12	; 3: -125 -59 12
x9738:	nop	; 1: -112
x9739:	jmp scanFormat	; 2: -21 15

vfscanf$7:	; post call

vfscanf$8:	; £temporary1719 = return_value

vfscanf$9:	; return_value = £temporary1719

vfscanf$10:	; return
x9741:	mov ax, [bp]	; 3: -117 70 0
x9744:	mov di, [bp + 4]	; 3: -117 126 4
x9747:	mov bp, [bp + 2]	; 3: -117 110 2
x9750:	jmp ax	; 2: -1 -32

vfscanf$11:	; function end vfscanf

g_inStatus:
x9752:	db 0, 0	; 2: 0 0

g_inDevice:
x9754:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x9756:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x9761:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x9766:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x9771:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x9776:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x9781:	mov word [g_inCount], 0	; 6: -57 6 62 43 0 0

scanFormat$6:	; g_inChars = 0
x9787:	mov word [g_inChars], 0	; 6: -57 6 64 43 0 0

scanFormat$7:	; index = 0
x9793:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1509 = format + index
x9798:	mov si, [bp + 6]	; 3: -117 118 6
x9801:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1508 -> £temporary1509 = *£temporary1509

scanFormat$10:	; if £temporary1508 -> £temporary1509 == 0 goto 325
x9804:	cmp byte [si], 0	; 3: -128 60 0
x9807:	je scanFormat$325	; 4: 15 -124 -36 4

scanFormat$11:	; £temporary1513 = format + index
x9811:	mov si, [bp + 6]	; 3: -117 118 6
x9814:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1512 -> £temporary1513 = *£temporary1513

scanFormat$13:	; c = £temporary1512 -> £temporary1513
x9817:	mov al, [si]	; 2: -118 4
x9819:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1514 = int_to_int c (Signed_Char -> Signed_Int)
x9822:	mov al, [bp + 10]	; 3: -118 70 10
x9825:	and ax, 255	; 3: 37 -1 0
x9828:	cmp al, 0	; 2: 60 0
x9830:	jge scanFormat$15	; 2: 125 4
x9832:	neg al	; 2: -10 -40
x9834:	neg ax	; 2: -9 -40

scanFormat$15:	; d = £temporary1514 + 1
x9836:	inc ax	; 1: 64
x9837:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$16:	; if percent == 0 goto 317
x9840:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x9844:	je scanFormat$317	; 4: 15 -124 -110 4

scanFormat$17:	; £temporary1516 = d - 1
x9848:	mov ax, [bp + 55]	; 3: -117 70 55
x9851:	dec ax	; 1: 72

scanFormat$18:	; case £temporary1516 == 104 goto 36
x9852:	cmp ax, 104	; 3: -125 -8 104
x9855:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; case £temporary1516 == 108 goto 38
x9857:	cmp ax, 108	; 3: -125 -8 108
x9860:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; case £temporary1516 == 76 goto 40
x9862:	cmp ax, 76	; 3: -125 -8 76
x9865:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; case £temporary1516 == 42 goto 42
x9867:	cmp ax, 42	; 3: -125 -8 42
x9870:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; case £temporary1516 == 99 goto 44
x9872:	cmp ax, 99	; 3: -125 -8 99
x9875:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; case £temporary1516 == 115 goto 62
x9877:	cmp ax, 115	; 3: -125 -8 115
x9880:	je scanFormat$62	; 4: 15 -124 -72 0

scanFormat$24:	; case £temporary1516 == 100 goto 81
x9884:	cmp ax, 100	; 3: -125 -8 100
x9887:	je scanFormat$81	; 4: 15 -124 1 1

scanFormat$25:	; case £temporary1516 == 105 goto 81
x9891:	cmp ax, 105	; 3: -125 -8 105
x9894:	je scanFormat$81	; 4: 15 -124 -6 0

scanFormat$26:	; case £temporary1516 == 111 goto 116
x9898:	cmp ax, 111	; 3: -125 -8 111
x9901:	je scanFormat$116	; 4: 15 -124 -126 1

scanFormat$27:	; case £temporary1516 == 120 goto 152
x9905:	cmp ax, 120	; 3: -125 -8 120
x9908:	je scanFormat$152	; 4: 15 -124 -4 1

scanFormat$28:	; case £temporary1516 == 117 goto 188
x9912:	cmp ax, 117	; 3: -125 -8 117
x9915:	je scanFormat$188	; 4: 15 -124 118 2

scanFormat$29:	; case £temporary1516 == 103 goto 224
x9919:	cmp ax, 103	; 3: -125 -8 103
x9922:	je scanFormat$224	; 4: 15 -124 -16 2

scanFormat$30:	; case £temporary1516 == 102 goto 224
x9926:	cmp ax, 102	; 3: -125 -8 102
x9929:	je scanFormat$224	; 4: 15 -124 -23 2

scanFormat$31:	; case £temporary1516 == 101 goto 224
x9933:	cmp ax, 101	; 3: -125 -8 101
x9936:	je scanFormat$224	; 4: 15 -124 -30 2

scanFormat$32:	; case £temporary1516 == 91 goto 260
x9940:	cmp ax, 91	; 3: -125 -8 91
x9943:	je scanFormat$260	; 4: 15 -124 79 3

scanFormat$33:	; case £temporary1516 == 110 goto 301
x9947:	cmp ax, 110	; 3: -125 -8 110
x9950:	je scanFormat$301	; 4: 15 -124 -33 3

scanFormat$34:	; case end £temporary1516

scanFormat$35:	; goto 310
x9954:	jmp scanFormat$310	; 3: -23 -6 3

scanFormat$36:	; shortInt = 1
x9957:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$37:	; goto 323
x9962:	jmp scanFormat$323	; 3: -23 60 4

scanFormat$38:	; longIntOrDouble = 1
x9965:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$39:	; goto 323
x9970:	jmp scanFormat$323	; 3: -23 52 4

scanFormat$40:	; longDouble = 1
x9973:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$41:	; goto 323
x9978:	jmp scanFormat$323	; 3: -23 44 4

scanFormat$42:	; star = 1
x9981:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$43:	; goto 323
x9986:	jmp scanFormat$323	; 3: -23 36 4

scanFormat$44:	; call header integral zero 0 stack zero 0

scanFormat$45:	; call function noellipse-noellipse scanChar
x9989:	mov word [bp + 57], scanFormat$46	; 5: -57 70 57 19 39
x9994:	mov [bp + 59], bp	; 3: -119 110 59
x9997:	add bp, 57	; 3: -125 -59 57
x10000:	jmp scanChar	; 3: -23 68 4

scanFormat$46:	; post call

scanFormat$47:	; £temporary1517 = return_value

scanFormat$48:	; charValue = £temporary1517
x10003:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$49:	; if star != 0 goto 57
x10006:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10010:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; arg_list = arg_list + 2
x10012:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$51:	; £temporary1521 = arg_list - 2
x10016:	mov si, [bp + 8]	; 3: -117 118 8
x10019:	sub si, 2	; 3: -125 -18 2

scanFormat$52:	; £temporary1522 = int_to_int £temporary1521 (Signed_Int -> Pointer)

scanFormat$53:	; £temporary1523 -> £temporary1522 = *£temporary1522

scanFormat$54:	; charPtr = £temporary1523 -> £temporary1522
x10022:	mov ax, [si]	; 2: -117 4
x10024:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$55:	; £temporary1524 -> charPtr = *charPtr
x10027:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$56:	; £temporary1524 -> charPtr = charValue
x10030:	mov al, [bp + 57]	; 3: -118 70 57
x10033:	mov [si], al	; 2: -120 4

scanFormat$57:	; percent = 0
x10035:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$58:	; £temporary1525 = int_to_int charValue (Signed_Char -> Signed_Int)
x10040:	mov al, [bp + 57]	; 3: -118 70 57
x10043:	and ax, 255	; 3: 37 -1 0
x10046:	cmp al, 0	; 2: 60 0
x10048:	jge scanFormat$59	; 2: 125 4
x10050:	neg al	; 2: -10 -40
x10052:	neg ax	; 2: -9 -40

scanFormat$59:	; if £temporary1525 == -1 goto 323
x10054:	cmp ax, -1	; 3: -125 -8 -1
x10057:	je scanFormat$323	; 4: 15 -124 -36 3

scanFormat$60:	; ++g_inCount
x10061:	inc word [g_inCount]	; 4: -1 6 62 43

scanFormat$61:	; goto 323
x10065:	jmp scanFormat$323	; 3: -23 -43 3

scanFormat$62:	; if star != 0 goto 74
x10068:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10072:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; arg_list = arg_list + 2
x10074:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$64:	; £temporary1531 = arg_list - 2
x10078:	mov si, [bp + 8]	; 3: -117 118 8
x10081:	sub si, 2	; 3: -125 -18 2

scanFormat$65:	; £temporary1532 = int_to_int £temporary1531 (Signed_Int -> Pointer)

scanFormat$66:	; £temporary1533 -> £temporary1532 = *£temporary1532

scanFormat$67:	; charPtr = £temporary1533 -> £temporary1532
x10084:	mov ax, [si]	; 2: -117 4
x10086:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$68:	; call header integral zero 0 stack zero 0

scanFormat$69:	; parameter charPtr, offset 6
x10089:	mov ax, [bp + 11]	; 3: -117 70 11
x10092:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$70:	; parameter 0, offset 8
x10095:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$71:	; call function noellipse-noellipse scanString
x10100:	mov word [bp + 57], scanFormat$72	; 5: -57 70 57 -126 39
x10105:	mov [bp + 59], bp	; 3: -119 110 59
x10108:	add bp, 57	; 3: -125 -59 57
x10111:	jmp scanString	; 3: -23 68 4

scanFormat$72:	; post call

scanFormat$73:	; goto 79
x10114:	jmp scanFormat$79	; 2: -21 24

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter 0, offset 6
x10116:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$76:	; parameter 0, offset 8
x10121:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$77:	; call function noellipse-noellipse scanString
x10126:	mov word [bp + 57], scanFormat$78	; 5: -57 70 57 -100 39
x10131:	mov [bp + 59], bp	; 3: -119 110 59
x10134:	add bp, 57	; 3: -125 -59 57
x10137:	jmp scanString	; 3: -23 42 4

scanFormat$78:	; post call

scanFormat$79:	; percent = 0
x10140:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$80:	; goto 323
x10145:	jmp scanFormat$323	; 3: -23 -123 3

scanFormat$81:	; call header integral zero 0 stack zero 0

scanFormat$82:	; call function noellipse-noellipse scanLongInt
x10148:	mov word [bp + 57], scanFormat$83	; 5: -57 70 57 -78 39
x10153:	mov [bp + 59], bp	; 3: -119 110 59
x10156:	add bp, 57	; 3: -125 -59 57
x10159:	jmp scanLongInt	; 3: -23 -104 6

scanFormat$83:	; post call

scanFormat$84:	; £temporary1536 = return_value

scanFormat$85:	; longValue = £temporary1536
x10162:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$86:	; if star != 0 goto 114
x10166:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10170:	jne scanFormat$114	; 2: 117 111

scanFormat$87:	; if shortInt == 0 goto 97
x10172:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10176:	je scanFormat$97	; 2: 116 37

scanFormat$88:	; arg_list = arg_list + 2
x10178:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$89:	; £temporary1540 = arg_list - 2
x10182:	mov si, [bp + 8]	; 3: -117 118 8
x10185:	sub si, 2	; 3: -125 -18 2

scanFormat$90:	; £temporary1541 = int_to_int £temporary1540 (Signed_Int -> Pointer)

scanFormat$91:	; £temporary1542 -> £temporary1541 = *£temporary1541

scanFormat$92:	; shortPtr = £temporary1542 -> £temporary1541
x10188:	mov ax, [si]	; 2: -117 4
x10190:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$93:	; £temporary1543 -> shortPtr = *shortPtr
x10193:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$94:	; £temporary1544 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x10196:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x10200:	cmp eax, 0	; 4: 102 -125 -8 0
x10204:	jge scanFormat$95	; 2: 125 5
x10206:	neg eax	; 3: 102 -9 -40
x10209:	neg al	; 2: -10 -40

scanFormat$95:	; £temporary1543 -> shortPtr = £temporary1544
x10211:	mov [si], al	; 2: -120 4

scanFormat$96:	; goto 114
x10213:	jmp scanFormat$114	; 2: -21 68

scanFormat$97:	; if longIntOrDouble != 0 goto 107
x10215:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10219:	jne scanFormat$107	; 2: 117 37

scanFormat$98:	; arg_list = arg_list + 2
x10221:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$99:	; £temporary1548 = arg_list - 2
x10225:	mov si, [bp + 8]	; 3: -117 118 8
x10228:	sub si, 2	; 3: -125 -18 2

scanFormat$100:	; £temporary1549 = int_to_int £temporary1548 (Signed_Int -> Pointer)

scanFormat$101:	; £temporary1550 -> £temporary1549 = *£temporary1549

scanFormat$102:	; intPtr = £temporary1550 -> £temporary1549
x10231:	mov ax, [si]	; 2: -117 4
x10233:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$103:	; £temporary1551 -> intPtr = *intPtr
x10236:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$104:	; £temporary1552 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x10239:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x10243:	cmp eax, 0	; 4: 102 -125 -8 0
x10247:	jge scanFormat$105	; 2: 125 5
x10249:	neg eax	; 3: 102 -9 -40
x10252:	neg ax	; 2: -9 -40

scanFormat$105:	; £temporary1551 -> intPtr = £temporary1552
x10254:	mov [si], ax	; 2: -119 4

scanFormat$106:	; goto 114
x10256:	jmp scanFormat$114	; 2: -21 25

scanFormat$107:	; arg_list = arg_list + 2
x10258:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$108:	; £temporary1554 = arg_list - 2
x10262:	mov si, [bp + 8]	; 3: -117 118 8
x10265:	sub si, 2	; 3: -125 -18 2

scanFormat$109:	; £temporary1555 = int_to_int £temporary1554 (Signed_Int -> Pointer)

scanFormat$110:	; £temporary1556 -> £temporary1555 = *£temporary1555

scanFormat$111:	; longPtr = £temporary1556 -> £temporary1555
x10268:	mov ax, [si]	; 2: -117 4
x10270:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$112:	; £temporary1557 -> longPtr = *longPtr
x10273:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$113:	; £temporary1557 -> longPtr = longValue
x10276:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x10280:	mov [si], eax	; 3: 102 -119 4

scanFormat$114:	; percent = 0
x10283:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$115:	; goto 323
x10288:	jmp scanFormat$323	; 3: -23 -10 2

scanFormat$116:	; call header integral zero 0 stack zero 0

scanFormat$117:	; parameter 8, offset 6
x10291:	mov dword [bp + 63], 8	; 8: 102 -57 70 63 8 0 0 0

scanFormat$118:	; call function noellipse-noellipse scanUnsignedLongInt
x10299:	mov word [bp + 57], scanFormat$119	; 5: -57 70 57 73 40
x10304:	mov [bp + 59], bp	; 3: -119 110 59
x10307:	add bp, 57	; 3: -125 -59 57
x10310:	jmp scanUnsignedLongInt	; 3: -23 88 7

scanFormat$119:	; post call

scanFormat$120:	; £temporary1559 = return_value

scanFormat$121:	; unsignedLongValue = £temporary1559
x10313:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$122:	; if star != 0 goto 150
x10317:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10321:	jne scanFormat$150	; 2: 117 89

scanFormat$123:	; if shortInt == 0 goto 133
x10323:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10327:	je scanFormat$133	; 2: 116 26

scanFormat$124:	; arg_list = arg_list + 2
x10329:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$125:	; £temporary1563 = arg_list - 2
x10333:	mov si, [bp + 8]	; 3: -117 118 8
x10336:	sub si, 2	; 3: -125 -18 2

scanFormat$126:	; £temporary1564 = int_to_int £temporary1563 (Signed_Int -> Pointer)

scanFormat$127:	; £temporary1565 -> £temporary1564 = *£temporary1564

scanFormat$128:	; unsignedShortPtr = £temporary1565 -> £temporary1564
x10339:	mov ax, [si]	; 2: -117 4
x10341:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$129:	; £temporary1566 -> unsignedShortPtr = *unsignedShortPtr
x10344:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$130:	; £temporary1567 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10347:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$131:	; £temporary1566 -> unsignedShortPtr = £temporary1567
x10351:	mov [si], al	; 2: -120 4

scanFormat$132:	; goto 150
x10353:	jmp scanFormat$150	; 2: -21 57

scanFormat$133:	; if longIntOrDouble != 0 goto 143
x10355:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10359:	jne scanFormat$143	; 2: 117 26

scanFormat$134:	; arg_list = arg_list + 2
x10361:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$135:	; £temporary1571 = arg_list - 2
x10365:	mov si, [bp + 8]	; 3: -117 118 8
x10368:	sub si, 2	; 3: -125 -18 2

scanFormat$136:	; £temporary1572 = int_to_int £temporary1571 (Signed_Int -> Pointer)

scanFormat$137:	; £temporary1573 -> £temporary1572 = *£temporary1572

scanFormat$138:	; unsignedIntPtr = £temporary1573 -> £temporary1572
x10371:	mov ax, [si]	; 2: -117 4
x10373:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$139:	; £temporary1574 -> unsignedIntPtr = *unsignedIntPtr
x10376:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$140:	; £temporary1575 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10379:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$141:	; £temporary1574 -> unsignedIntPtr = £temporary1575
x10383:	mov [si], ax	; 2: -119 4

scanFormat$142:	; goto 150
x10385:	jmp scanFormat$150	; 2: -21 25

scanFormat$143:	; arg_list = arg_list + 2
x10387:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$144:	; £temporary1577 = arg_list - 2
x10391:	mov si, [bp + 8]	; 3: -117 118 8
x10394:	sub si, 2	; 3: -125 -18 2

scanFormat$145:	; £temporary1578 = int_to_int £temporary1577 (Signed_Int -> Pointer)

scanFormat$146:	; £temporary1579 -> £temporary1578 = *£temporary1578

scanFormat$147:	; unsignedLongPtr = £temporary1579 -> £temporary1578
x10397:	mov ax, [si]	; 2: -117 4
x10399:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$148:	; £temporary1580 -> unsignedLongPtr = *unsignedLongPtr
x10402:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$149:	; £temporary1580 -> unsignedLongPtr = unsignedLongValue
x10405:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10409:	mov [si], eax	; 3: 102 -119 4

scanFormat$150:	; percent = 0
x10412:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$151:	; goto 323
x10417:	jmp scanFormat$323	; 3: -23 117 2

scanFormat$152:	; call header integral zero 0 stack zero 0

scanFormat$153:	; parameter 16, offset 6
x10420:	mov dword [bp + 63], 16	; 8: 102 -57 70 63 16 0 0 0

scanFormat$154:	; call function noellipse-noellipse scanUnsignedLongInt
x10428:	mov word [bp + 57], scanFormat$155	; 5: -57 70 57 -54 40
x10433:	mov [bp + 59], bp	; 3: -119 110 59
x10436:	add bp, 57	; 3: -125 -59 57
x10439:	jmp scanUnsignedLongInt	; 3: -23 -41 6

scanFormat$155:	; post call

scanFormat$156:	; £temporary1582 = return_value

scanFormat$157:	; unsignedLongValue = £temporary1582
x10442:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$158:	; if star != 0 goto 186
x10446:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10450:	jne scanFormat$186	; 2: 117 89

scanFormat$159:	; if shortInt == 0 goto 169
x10452:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10456:	je scanFormat$169	; 2: 116 26

scanFormat$160:	; arg_list = arg_list + 2
x10458:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$161:	; £temporary1586 = arg_list - 2
x10462:	mov si, [bp + 8]	; 3: -117 118 8
x10465:	sub si, 2	; 3: -125 -18 2

scanFormat$162:	; £temporary1587 = int_to_int £temporary1586 (Signed_Int -> Pointer)

scanFormat$163:	; £temporary1588 -> £temporary1587 = *£temporary1587

scanFormat$164:	; unsignedShortPtr = £temporary1588 -> £temporary1587
x10468:	mov ax, [si]	; 2: -117 4
x10470:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$165:	; £temporary1589 -> unsignedShortPtr = *unsignedShortPtr
x10473:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$166:	; £temporary1590 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10476:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$167:	; £temporary1589 -> unsignedShortPtr = £temporary1590
x10480:	mov [si], al	; 2: -120 4

scanFormat$168:	; goto 186
x10482:	jmp scanFormat$186	; 2: -21 57

scanFormat$169:	; if longIntOrDouble != 0 goto 179
x10484:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10488:	jne scanFormat$179	; 2: 117 26

scanFormat$170:	; arg_list = arg_list + 2
x10490:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$171:	; £temporary1594 = arg_list - 2
x10494:	mov si, [bp + 8]	; 3: -117 118 8
x10497:	sub si, 2	; 3: -125 -18 2

scanFormat$172:	; £temporary1595 = int_to_int £temporary1594 (Signed_Int -> Pointer)

scanFormat$173:	; £temporary1596 -> £temporary1595 = *£temporary1595

scanFormat$174:	; unsignedIntPtr = £temporary1596 -> £temporary1595
x10500:	mov ax, [si]	; 2: -117 4
x10502:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$175:	; £temporary1597 -> unsignedIntPtr = *unsignedIntPtr
x10505:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$176:	; £temporary1598 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10508:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$177:	; £temporary1597 -> unsignedIntPtr = £temporary1598
x10512:	mov [si], ax	; 2: -119 4

scanFormat$178:	; goto 186
x10514:	jmp scanFormat$186	; 2: -21 25

scanFormat$179:	; arg_list = arg_list + 2
x10516:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$180:	; £temporary1600 = arg_list - 2
x10520:	mov si, [bp + 8]	; 3: -117 118 8
x10523:	sub si, 2	; 3: -125 -18 2

scanFormat$181:	; £temporary1601 = int_to_int £temporary1600 (Signed_Int -> Pointer)

scanFormat$182:	; £temporary1602 -> £temporary1601 = *£temporary1601

scanFormat$183:	; unsignedLongPtr = £temporary1602 -> £temporary1601
x10526:	mov ax, [si]	; 2: -117 4
x10528:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$184:	; £temporary1603 -> unsignedLongPtr = *unsignedLongPtr
x10531:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$185:	; £temporary1603 -> unsignedLongPtr = unsignedLongValue
x10534:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10538:	mov [si], eax	; 3: 102 -119 4

scanFormat$186:	; percent = 0
x10541:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$187:	; goto 323
x10546:	jmp scanFormat$323	; 3: -23 -12 1

scanFormat$188:	; call header integral zero 0 stack zero 0

scanFormat$189:	; parameter 0, offset 6
x10549:	mov dword [bp + 63], 0	; 8: 102 -57 70 63 0 0 0 0

scanFormat$190:	; call function noellipse-noellipse scanUnsignedLongInt
x10557:	mov word [bp + 57], scanFormat$191	; 5: -57 70 57 75 41
x10562:	mov [bp + 59], bp	; 3: -119 110 59
x10565:	add bp, 57	; 3: -125 -59 57
x10568:	jmp scanUnsignedLongInt	; 3: -23 86 6

scanFormat$191:	; post call

scanFormat$192:	; £temporary1605 = return_value

scanFormat$193:	; unsignedLongValue = £temporary1605
x10571:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$194:	; if star != 0 goto 222
x10575:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10579:	jne scanFormat$222	; 2: 117 89

scanFormat$195:	; if shortInt == 0 goto 205
x10581:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10585:	je scanFormat$205	; 2: 116 26

scanFormat$196:	; arg_list = arg_list + 2
x10587:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$197:	; £temporary1609 = arg_list - 2
x10591:	mov si, [bp + 8]	; 3: -117 118 8
x10594:	sub si, 2	; 3: -125 -18 2

scanFormat$198:	; £temporary1610 = int_to_int £temporary1609 (Signed_Int -> Pointer)

scanFormat$199:	; £temporary1611 -> £temporary1610 = *£temporary1610

scanFormat$200:	; unsignedShortPtr = £temporary1611 -> £temporary1610
x10597:	mov ax, [si]	; 2: -117 4
x10599:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$201:	; £temporary1612 -> unsignedShortPtr = *unsignedShortPtr
x10602:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$202:	; £temporary1613 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10605:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$203:	; £temporary1612 -> unsignedShortPtr = £temporary1613
x10609:	mov [si], al	; 2: -120 4

scanFormat$204:	; goto 222
x10611:	jmp scanFormat$222	; 2: -21 57

scanFormat$205:	; if longIntOrDouble != 0 goto 215
x10613:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10617:	jne scanFormat$215	; 2: 117 26

scanFormat$206:	; arg_list = arg_list + 2
x10619:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$207:	; £temporary1617 = arg_list - 2
x10623:	mov si, [bp + 8]	; 3: -117 118 8
x10626:	sub si, 2	; 3: -125 -18 2

scanFormat$208:	; £temporary1618 = int_to_int £temporary1617 (Signed_Int -> Pointer)

scanFormat$209:	; £temporary1619 -> £temporary1618 = *£temporary1618

scanFormat$210:	; unsignedIntPtr = £temporary1619 -> £temporary1618
x10629:	mov ax, [si]	; 2: -117 4
x10631:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$211:	; £temporary1620 -> unsignedIntPtr = *unsignedIntPtr
x10634:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$212:	; £temporary1621 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10637:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$213:	; £temporary1620 -> unsignedIntPtr = £temporary1621
x10641:	mov [si], ax	; 2: -119 4

scanFormat$214:	; goto 222
x10643:	jmp scanFormat$222	; 2: -21 25

scanFormat$215:	; arg_list = arg_list + 2
x10645:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$216:	; £temporary1623 = arg_list - 2
x10649:	mov si, [bp + 8]	; 3: -117 118 8
x10652:	sub si, 2	; 3: -125 -18 2

scanFormat$217:	; £temporary1624 = int_to_int £temporary1623 (Signed_Int -> Pointer)

scanFormat$218:	; £temporary1625 -> £temporary1624 = *£temporary1624

scanFormat$219:	; unsignedLongPtr = £temporary1625 -> £temporary1624
x10655:	mov ax, [si]	; 2: -117 4
x10657:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$220:	; £temporary1626 -> unsignedLongPtr = *unsignedLongPtr
x10660:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$221:	; £temporary1626 -> unsignedLongPtr = unsignedLongValue
x10663:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10667:	mov [si], eax	; 3: 102 -119 4

scanFormat$222:	; percent = 0
x10670:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$223:	; goto 323
x10675:	jmp scanFormat$323	; 3: -23 115 1

scanFormat$224:	; call header integral zero 0 stack zero 0

scanFormat$225:	; call function noellipse-noellipse scanLongDouble
x10678:	mov word [bp + 57], scanFormat$226	; 5: -57 70 57 -60 41
x10683:	mov [bp + 59], bp	; 3: -119 110 59
x10686:	add bp, 57	; 3: -125 -59 57
x10689:	jmp scanLongDouble	; 3: -23 -94 8

scanFormat$226:	; post call

scanFormat$227:	; £temporary1628 = return_value

scanFormat$228:	; pop float longDoubleValue
x10692:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$229:	; if star != 0 goto 258
x10695:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10699:	jne scanFormat$258	; 2: 117 85

scanFormat$230:	; if longIntOrDouble == 0 goto 240
x10701:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10705:	je scanFormat$240	; 2: 116 25

scanFormat$231:	; arg_list = arg_list + 2
x10707:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$232:	; £temporary1632 = arg_list - 2
x10711:	mov si, [bp + 8]	; 3: -117 118 8
x10714:	sub si, 2	; 3: -125 -18 2

scanFormat$233:	; £temporary1633 = int_to_int £temporary1632 (Signed_Int -> Pointer)

scanFormat$234:	; £temporary1634 -> £temporary1633 = *£temporary1633

scanFormat$235:	; doublePtr = £temporary1634 -> £temporary1633
x10717:	mov ax, [si]	; 2: -117 4
x10719:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$236:	; £temporary1635 -> doublePtr = *doublePtr
x10722:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$237:	; push float longDoubleValue
x10725:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$238:	; pop float £temporary1635 -> doublePtr
x10728:	fstp qword [si]	; 2: -35 28

scanFormat$239:	; goto 258
x10730:	jmp scanFormat$258	; 2: -21 54

scanFormat$240:	; if longDouble == 0 goto 250
x10732:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x10736:	je scanFormat$250	; 2: 116 25

scanFormat$241:	; arg_list = arg_list + 2
x10738:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$242:	; £temporary1638 = arg_list - 2
x10742:	mov si, [bp + 8]	; 3: -117 118 8
x10745:	sub si, 2	; 3: -125 -18 2

scanFormat$243:	; £temporary1639 = int_to_int £temporary1638 (Signed_Int -> Pointer)

scanFormat$244:	; £temporary1640 -> £temporary1639 = *£temporary1639

scanFormat$245:	; longDoublePtr = £temporary1640 -> £temporary1639
x10748:	mov ax, [si]	; 2: -117 4
x10750:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$246:	; £temporary1641 -> longDoublePtr = *longDoublePtr
x10753:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$247:	; push float longDoubleValue
x10756:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$248:	; pop float £temporary1641 -> longDoublePtr
x10759:	fstp qword [si]	; 2: -35 28

scanFormat$249:	; goto 258
x10761:	jmp scanFormat$258	; 2: -21 23

scanFormat$250:	; arg_list = arg_list + 2
x10763:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$251:	; £temporary1643 = arg_list - 2
x10767:	mov si, [bp + 8]	; 3: -117 118 8
x10770:	sub si, 2	; 3: -125 -18 2

scanFormat$252:	; £temporary1644 = int_to_int £temporary1643 (Signed_Int -> Pointer)

scanFormat$253:	; £temporary1645 -> £temporary1644 = *£temporary1644

scanFormat$254:	; floatPtr = £temporary1645 -> £temporary1644
x10773:	mov ax, [si]	; 2: -117 4
x10775:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$255:	; £temporary1646 -> floatPtr = *floatPtr
x10778:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$256:	; push float longDoubleValue
x10781:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$257:	; pop float £temporary1646 -> floatPtr
x10784:	fstp dword [si]	; 2: -39 28

scanFormat$258:	; percent = 0
x10786:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$259:	; goto 323
x10791:	jmp scanFormat$323	; 3: -23 -1 0

scanFormat$260:	; not = 0
x10794:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$261:	; ++index
x10799:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$262:	; £temporary1652 = format + index
x10802:	mov si, [bp + 6]	; 3: -117 118 6
x10805:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$263:	; £temporary1651 -> £temporary1652 = *£temporary1652

scanFormat$264:	; if £temporary1651 -> £temporary1652 != 94 goto 267
x10808:	cmp byte [si], 94	; 3: -128 60 94
x10811:	jne scanFormat$267	; 2: 117 12

scanFormat$265:	; not = 1
x10813:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$266:	; startIndex = index + 1
x10818:	mov ax, [bp + 31]	; 3: -117 70 31
x10821:	inc ax	; 1: 64
x10822:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$267:	; £temporary1656 = format + index
x10825:	mov si, [bp + 6]	; 3: -117 118 6
x10828:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$268:	; £temporary1655 -> £temporary1656 = *£temporary1656

scanFormat$269:	; if £temporary1655 -> £temporary1656 == 93 goto 272
x10831:	cmp byte [si], 93	; 3: -128 60 93
x10834:	je scanFormat$272	; 2: 116 5

scanFormat$270:	; ++index
x10836:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$271:	; goto 267
x10839:	jmp scanFormat$267	; 2: -21 -16

scanFormat$272:	; £temporary1660 = format + index
x10841:	mov si, [bp + 6]	; 3: -117 118 6
x10844:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$273:	; £temporary1659 -> £temporary1660 = *£temporary1660

scanFormat$274:	; £temporary1659 -> £temporary1660 = 0
x10847:	mov byte [si], 0	; 3: -58 4 0

scanFormat$275:	; if star != 0 goto 291
x10850:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10854:	jne scanFormat$291	; 2: 117 53

scanFormat$276:	; arg_list = arg_list + 2
x10856:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$277:	; £temporary1664 = arg_list - 2
x10860:	mov si, [bp + 8]	; 3: -117 118 8
x10863:	sub si, 2	; 3: -125 -18 2

scanFormat$278:	; £temporary1665 = int_to_int £temporary1664 (Signed_Int -> Pointer)

scanFormat$279:	; £temporary1666 -> £temporary1665 = *£temporary1665

scanFormat$280:	; string = £temporary1666 -> £temporary1665
x10866:	mov ax, [si]	; 2: -117 4
x10868:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$281:	; call header integral zero 0 stack zero 0

scanFormat$282:	; parameter string, offset 6
x10871:	mov ax, [bp + 61]	; 3: -117 70 61
x10874:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$283:	; £temporary1668 = format + startIndex
x10877:	mov si, [bp + 6]	; 3: -117 118 6
x10880:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$284:	; £temporary1667 -> £temporary1668 = *£temporary1668

scanFormat$285:	; £temporary1669 = &£temporary1667 -> £temporary1668

scanFormat$286:	; parameter £temporary1669, offset 8
x10883:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$287:	; parameter not, offset 10
x10886:	mov ax, [bp + 57]	; 3: -117 70 57
x10889:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$288:	; call function noellipse-noellipse scanPattern
x10892:	mov word [bp + 63], scanFormat$289	; 5: -57 70 63 -102 42
x10897:	mov [bp + 65], bp	; 3: -119 110 65
x10900:	add bp, 63	; 3: -125 -59 63
x10903:	jmp scanPattern	; 3: -23 -2 9

scanFormat$289:	; post call

scanFormat$290:	; goto 323
x10906:	jmp scanFormat$323	; 3: -23 -116 0

scanFormat$291:	; call header integral zero 0 stack zero 0

scanFormat$292:	; parameter 0, offset 6
x10909:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$293:	; £temporary1672 = format + startIndex
x10914:	mov si, [bp + 6]	; 3: -117 118 6
x10917:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$294:	; £temporary1671 -> £temporary1672 = *£temporary1672

scanFormat$295:	; £temporary1673 = &£temporary1671 -> £temporary1672

scanFormat$296:	; parameter £temporary1673, offset 8
x10920:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$297:	; parameter not, offset 10
x10923:	mov ax, [bp + 57]	; 3: -117 70 57
x10926:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$298:	; call function noellipse-noellipse scanPattern
x10929:	mov word [bp + 61], scanFormat$299	; 5: -57 70 61 -65 42
x10934:	mov [bp + 63], bp	; 3: -119 110 63
x10937:	add bp, 61	; 3: -125 -59 61
x10940:	jmp scanPattern	; 3: -23 -39 9

scanFormat$299:	; post call

scanFormat$300:	; goto 323
x10943:	jmp scanFormat$323	; 2: -21 104

scanFormat$301:	; arg_list = arg_list + 2
x10945:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$302:	; £temporary1676 = arg_list - 2
x10949:	mov si, [bp + 8]	; 3: -117 118 8
x10952:	sub si, 2	; 3: -125 -18 2

scanFormat$303:	; £temporary1677 = int_to_int £temporary1676 (Signed_Int -> Pointer)

scanFormat$304:	; £temporary1678 -> £temporary1677 = *£temporary1677

scanFormat$305:	; charsPtr = £temporary1678 -> £temporary1677
x10955:	mov ax, [si]	; 2: -117 4
x10957:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$306:	; £temporary1679 -> charsPtr = *charsPtr
x10960:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$307:	; £temporary1679 -> charsPtr = g_inChars
x10963:	mov ax, [g_inChars]	; 3: -95 64 43
x10966:	mov [si], ax	; 2: -119 4

scanFormat$308:	; percent = 0
x10968:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$309:	; goto 323
x10973:	jmp scanFormat$323	; 2: -21 74

scanFormat$310:	; call header integral zero 0 stack zero 0

scanFormat$311:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x10975:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 66 43

scanFormat$312:	; £temporary1680 = int_to_int c (Signed_Char -> Signed_Int)
x10980:	mov al, [bp + 10]	; 3: -118 70 10
x10983:	and ax, 255	; 3: 37 -1 0
x10986:	cmp al, 0	; 2: 60 0
x10988:	jge scanFormat$313	; 2: 125 4
x10990:	neg al	; 2: -10 -40
x10992:	neg ax	; 2: -9 -40

scanFormat$313:	; parameter £temporary1680, offset 8
x10994:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$314:	; call function noellipse-ellipse printf, extra 0
x10997:	mov word [bp + 57], scanFormat$315	; 5: -57 70 57 8 43
x11002:	mov [bp + 59], bp	; 3: -119 110 59
x11005:	add bp, 57	; 3: -125 -59 57
x11008:	mov di, bp	; 2: -119 -17
x11010:	add di, 2	; 3: -125 -57 2
x11013:	jmp printf	; 3: -23 -65 -40

scanFormat$315:	; post call

scanFormat$316:	; goto 323
x11016:	jmp scanFormat$323	; 2: -21 31

scanFormat$317:	; if c != 37 goto 323
x11018:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x11022:	jne scanFormat$323	; 2: 117 25

scanFormat$318:	; percent = 1
x11024:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$319:	; shortInt = 0
x11029:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$320:	; longIntOrDouble = 0
x11034:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$321:	; longDouble = 0
x11039:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$322:	; star = 0
x11044:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$323:	; ++index
x11049:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$324:	; goto 8
x11052:	jmp scanFormat$8	; 3: -23 23 -5

scanFormat$325:	; return_value = g_inCount
x11055:	mov bx, [g_inCount]	; 4: -117 30 62 43

scanFormat$326:	; return
x11059:	mov ax, [bp]	; 3: -117 70 0
x11062:	mov di, [bp + 4]	; 3: -117 126 4
x11065:	mov bp, [bp + 2]	; 3: -117 110 2
x11068:	jmp ax	; 2: -1 -32

scanFormat$327:	; function end scanFormat

g_inCount:
x11070:	db 0, 0	; 2: 0 0

g_inChars:
x11072:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x11074:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x11095:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x11099:	mov ax, [g_inStatus]	; 3: -95 24 38
x11102:	cmp ax, 0	; 3: -125 -8 0
x11105:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x11107:	cmp ax, 1	; 3: -125 -8 1
x11110:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x11112:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1234 = int_to_int g_inDevice (Pointer -> Pointer)
x11114:	mov ax, [g_inDevice]	; 3: -95 26 38

scanChar$6:	; stream = £temporary1234
x11117:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1235 -> stream = *stream, offset 2
x11120:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1235 -> stream
x11123:	mov ax, [si + 2]	; 3: -117 68 2
x11126:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x11129:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x11131:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x11134:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1240 = &c
x11137:	mov dx, bp	; 2: -119 -22
x11139:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1240

scanChar$14:	; interrupt 33
x11142:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x11144:	inc word [g_inChars]	; 4: -1 6 64 43

scanChar$16:	; return_value = c
x11148:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x11151:	mov ax, [bp]	; 3: -117 70 0
x11154:	mov di, [bp + 4]	; 3: -117 126 4
x11157:	mov bp, [bp + 2]	; 3: -117 110 2
x11160:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1242 = int_to_int g_inDevice (Pointer -> Pointer)
x11162:	mov ax, [g_inDevice]	; 3: -95 26 38

scanChar$19:	; inString = £temporary1242
x11165:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1243 = g_inChars
x11168:	mov ax, [g_inChars]	; 3: -95 64 43

scanChar$21:	; ++g_inChars
x11171:	inc word [g_inChars]	; 4: -1 6 64 43

scanChar$22:	; £temporary1245 = inString + £temporary1243
x11175:	mov si, [bp + 11]	; 3: -117 118 11
x11178:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1244 -> £temporary1245 = *£temporary1245

scanChar$24:	; return_value = £temporary1244 -> £temporary1245
x11180:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x11182:	mov ax, [bp]	; 3: -117 70 0
x11185:	mov di, [bp + 4]	; 3: -117 126 4
x11188:	mov bp, [bp + 2]	; 3: -117 110 2
x11191:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x11193:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x11195:	mov ax, [bp]	; 3: -117 70 0
x11198:	mov di, [bp + 4]	; 3: -117 126 4
x11201:	mov bp, [bp + 2]	; 3: -117 110 2
x11204:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x11206:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x11211:	mov word [bp + 12], scanString$3	; 5: -57 70 12 -39 43
x11216:	mov [bp + 14], bp	; 3: -119 110 14
x11219:	add bp, 12	; 3: -125 -59 12
x11222:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1297 = return_value

scanString$5:	; input = £temporary1297
x11225:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x11228:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1298 = int_to_int input (Signed_Char -> Signed_Int)
x11233:	mov al, [bp + 12]	; 3: -118 70 12
x11236:	and ax, 255	; 3: 37 -1 0
x11239:	cmp al, 0	; 2: 60 0
x11241:	jge scanString$9	; 2: 125 4
x11243:	neg al	; 2: -10 -40
x11245:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1298, offset 6
x11247:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x11250:	mov word [bp + 15], scanString$11	; 5: -57 70 15 0 44
x11255:	mov [bp + 17], bp	; 3: -119 110 17
x11258:	add bp, 15	; 3: -125 -59 15
x11261:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1299 = return_value

scanString$13:	; if £temporary1299 == 0 goto 20
x11264:	cmp bx, 0	; 3: -125 -5 0
x11267:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x11269:	mov word [bp + 15], scanString$16	; 5: -57 70 15 19 44
x11274:	mov [bp + 17], bp	; 3: -119 110 17
x11277:	add bp, 15	; 3: -125 -59 15
x11280:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1300 = return_value

scanString$18:	; input = £temporary1300
x11283:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x11286:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x11288:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x11292:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x11296:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11300:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1304 = int_to_int input (Signed_Char -> Signed_Int)
x11302:	mov al, [bp + 12]	; 3: -118 70 12
x11305:	and ax, 255	; 3: 37 -1 0
x11308:	cmp al, 0	; 2: 60 0
x11310:	jge scanString$24	; 2: 125 4
x11312:	neg al	; 2: -10 -40
x11314:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1304, offset 6
x11316:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x11319:	mov word [bp + 15], scanString$26	; 5: -57 70 15 69 44
x11324:	mov [bp + 17], bp	; 3: -119 110 17
x11327:	add bp, 15	; 3: -125 -59 15
x11330:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1305 = return_value

scanString$28:	; if £temporary1305 != 0 goto 45
x11333:	cmp bx, 0	; 3: -125 -5 0
x11336:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1308 = int_to_int input (Signed_Char -> Signed_Int)
x11338:	mov al, [bp + 12]	; 3: -118 70 12
x11341:	and ax, 255	; 3: 37 -1 0
x11344:	cmp al, 0	; 2: 60 0
x11346:	jge scanString$30	; 2: 125 4
x11348:	neg al	; 2: -10 -40
x11350:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1308 == -1 goto 45
x11352:	cmp ax, -1	; 3: -125 -8 -1
x11355:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x11357:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11361:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1313 = index
x11363:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x11366:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1315 = string + £temporary1313
x11369:	mov si, [bp + 6]	; 3: -117 118 6
x11372:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1314 -> £temporary1315 = *£temporary1315

scanString$36:	; £temporary1314 -> £temporary1315 = input
x11374:	mov al, [bp + 12]	; 3: -118 70 12
x11377:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x11379:	mov word [bp + 15], scanString$39	; 5: -57 70 15 -127 44
x11384:	mov [bp + 17], bp	; 3: -119 110 17
x11387:	add bp, 15	; 3: -125 -59 15
x11390:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1316 = return_value

scanString$41:	; input = £temporary1316
x11393:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x11396:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x11401:	inc word [g_inChars]	; 4: -1 6 64 43

scanString$44:	; goto 22
x11405:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1319 = string + index
x11407:	mov si, [bp + 6]	; 3: -117 118 6
x11410:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1318 -> £temporary1319 = *£temporary1319

scanString$47:	; £temporary1318 -> £temporary1319 = 0
x11413:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x11416:	inc word [g_inChars]	; 4: -1 6 64 43

scanString$49:	; goto 126
x11420:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1321 = precision
x11423:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x11426:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1321 <= 0 goto 76
x11429:	cmp ax, 0	; 3: -125 -8 0
x11432:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1323 = int_to_int input (Signed_Char -> Signed_Int)
x11434:	mov al, [bp + 12]	; 3: -118 70 12
x11437:	and ax, 255	; 3: 37 -1 0
x11440:	cmp al, 0	; 2: 60 0
x11442:	jge scanString$55	; 2: 125 4
x11444:	neg al	; 2: -10 -40
x11446:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1323, offset 6
x11448:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x11451:	mov word [bp + 15], scanString$57	; 5: -57 70 15 -55 44
x11456:	mov [bp + 17], bp	; 3: -119 110 17
x11459:	add bp, 15	; 3: -125 -59 15
x11462:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1324 = return_value

scanString$59:	; if £temporary1324 != 0 goto 76
x11465:	cmp bx, 0	; 3: -125 -5 0
x11468:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1327 = int_to_int input (Signed_Char -> Signed_Int)
x11470:	mov al, [bp + 12]	; 3: -118 70 12
x11473:	and ax, 255	; 3: 37 -1 0
x11476:	cmp al, 0	; 2: 60 0
x11478:	jge scanString$61	; 2: 125 4
x11480:	neg al	; 2: -10 -40
x11482:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1327 == -1 goto 76
x11484:	cmp ax, -1	; 3: -125 -8 -1
x11487:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x11489:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11493:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1333 = index
x11495:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x11498:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1335 = string + £temporary1333
x11501:	mov si, [bp + 6]	; 3: -117 118 6
x11504:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1334 -> £temporary1335 = *£temporary1335

scanString$67:	; £temporary1334 -> £temporary1335 = input
x11506:	mov al, [bp + 12]	; 3: -118 70 12
x11509:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x11511:	mov word [bp + 15], scanString$70	; 5: -57 70 15 5 45
x11516:	mov [bp + 17], bp	; 3: -119 110 17
x11519:	add bp, 15	; 3: -125 -59 15
x11522:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1336 = return_value

scanString$72:	; input = £temporary1336
x11525:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x11528:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x11533:	inc word [g_inChars]	; 4: -1 6 64 43

scanString$75:	; goto 50
x11537:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x11539:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11543:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1340 = string + index
x11547:	mov si, [bp + 6]	; 3: -117 118 6
x11550:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1339 -> £temporary1340 = *£temporary1340

scanString$79:	; £temporary1339 -> £temporary1340 = 0
x11553:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x11556:	inc word [g_inChars]	; 4: -1 6 64 43

scanString$81:	; goto 126
x11560:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x11563:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11567:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1343 = int_to_int input (Signed_Char -> Signed_Int)
x11569:	mov al, [bp + 12]	; 3: -118 70 12
x11572:	and ax, 255	; 3: 37 -1 0
x11575:	cmp al, 0	; 2: 60 0
x11577:	jge scanString$85	; 2: 125 4
x11579:	neg al	; 2: -10 -40
x11581:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1343, offset 6
x11583:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x11586:	mov word [bp + 15], scanString$87	; 5: -57 70 15 80 45
x11591:	mov [bp + 17], bp	; 3: -119 110 17
x11594:	add bp, 15	; 3: -125 -59 15
x11597:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1344 = return_value

scanString$89:	; if £temporary1344 != 0 goto 101
x11600:	cmp bx, 0	; 3: -125 -5 0
x11603:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1347 = int_to_int input (Signed_Char -> Signed_Int)
x11605:	mov al, [bp + 12]	; 3: -118 70 12
x11608:	and ax, 255	; 3: 37 -1 0
x11611:	cmp al, 0	; 2: 60 0
x11613:	jge scanString$91	; 2: 125 4
x11615:	neg al	; 2: -10 -40
x11617:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1347 == -1 goto 101
x11619:	cmp ax, -1	; 3: -125 -8 -1
x11622:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x11624:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11628:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x11630:	mov word [bp + 15], scanString$95	; 5: -57 70 15 124 45
x11635:	mov [bp + 17], bp	; 3: -119 110 17
x11638:	add bp, 15	; 3: -125 -59 15
x11641:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1352 = return_value

scanString$97:	; input = £temporary1352
x11644:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x11647:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x11652:	inc word [g_inChars]	; 4: -1 6 64 43

scanString$100:	; goto 83
x11656:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x11658:	inc word [g_inChars]	; 4: -1 6 64 43

scanString$102:	; goto 126
x11662:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1355 = precision
x11664:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x11667:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1355 <= 0 goto 124
x11670:	cmp ax, 0	; 3: -125 -8 0
x11673:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1357 = int_to_int input (Signed_Char -> Signed_Int)
x11675:	mov al, [bp + 12]	; 3: -118 70 12
x11678:	and ax, 255	; 3: 37 -1 0
x11681:	cmp al, 0	; 2: 60 0
x11683:	jge scanString$108	; 2: 125 4
x11685:	neg al	; 2: -10 -40
x11687:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1357, offset 6
x11689:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x11692:	mov word [bp + 15], scanString$110	; 5: -57 70 15 -70 45
x11697:	mov [bp + 17], bp	; 3: -119 110 17
x11700:	add bp, 15	; 3: -125 -59 15
x11703:	nop	; 1: -112
x11704:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1358 = return_value

scanString$112:	; if £temporary1358 != 0 goto 124
x11706:	cmp bx, 0	; 3: -125 -5 0
x11709:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1361 = int_to_int input (Signed_Char -> Signed_Int)
x11711:	mov al, [bp + 12]	; 3: -118 70 12
x11714:	and ax, 255	; 3: 37 -1 0
x11717:	cmp al, 0	; 2: 60 0
x11719:	jge scanString$114	; 2: 125 4
x11721:	neg al	; 2: -10 -40
x11723:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1361 == -1 goto 124
x11725:	cmp ax, -1	; 3: -125 -8 -1
x11728:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x11730:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11734:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x11736:	mov word [bp + 15], scanString$118	; 5: -57 70 15 -26 45
x11741:	mov [bp + 17], bp	; 3: -119 110 17
x11744:	add bp, 15	; 3: -125 -59 15
x11747:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1367 = return_value

scanString$120:	; input = £temporary1367
x11750:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x11753:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x11758:	inc word [g_inChars]	; 4: -1 6 64 43

scanString$123:	; goto 103
x11762:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x11764:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11768:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x11770:	inc word [g_inChars]	; 4: -1 6 64 43

scanString$126:	; if found == 0 goto 128
x11774:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x11778:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x11780:	inc word [g_inCount]	; 4: -1 6 62 43

scanString$128:	; return
x11784:	mov ax, [bp]	; 3: -117 70 0
x11787:	mov di, [bp + 4]	; 3: -117 126 4
x11790:	mov bp, [bp + 2]	; 3: -117 110 2
x11793:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x11795:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x11799:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x11801:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x11805:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x11807:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x11811:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x11813:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x11817:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x11819:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x11823:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x11825:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x11829:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary461 = 1
x11831:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x11834:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary461 = 0
x11836:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary461

isspace$10:	; return
x11839:	mov ax, [bp]	; 3: -117 70 0
x11842:	mov di, [bp + 4]	; 3: -117 126 4
x11845:	mov bp, [bp + 2]	; 3: -117 110 2
x11848:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x11850:	mov dword [bp + 6], 0	; 8: 102 -57 70 6 0 0 0 0

scanLongInt$1:	; minus = 0
x11858:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanLongInt$2:	; found = 0
x11863:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x11868:	mov word [bp + 14], scanLongInt$5	; 5: -57 70 14 106 46
x11873:	mov [bp + 16], bp	; 3: -119 110 16
x11876:	add bp, 14	; 3: -125 -59 14
x11879:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1394 = return_value

scanLongInt$7:	; input = £temporary1394
x11882:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1395 = int_to_int input (Signed_Char -> Signed_Int)
x11885:	mov al, [bp + 14]	; 3: -118 70 14
x11888:	and ax, 255	; 3: 37 -1 0
x11891:	cmp al, 0	; 2: 60 0
x11893:	jge scanLongInt$10	; 2: 125 4
x11895:	neg al	; 2: -10 -40
x11897:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1395, offset 6
x11899:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$11:	; call function noellipse-noellipse isspace
x11902:	mov word [bp + 15], scanLongInt$12	; 5: -57 70 15 -116 46
x11907:	mov [bp + 17], bp	; 3: -119 110 17
x11910:	add bp, 15	; 3: -125 -59 15
x11913:	nop	; 1: -112
x11914:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1396 = return_value

scanLongInt$14:	; if £temporary1396 == 0 goto 21
x11916:	cmp bx, 0	; 3: -125 -5 0
x11919:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x11921:	mov word [bp + 15], scanLongInt$17	; 5: -57 70 15 -97 46
x11926:	mov [bp + 17], bp	; 3: -119 110 17
x11929:	add bp, 15	; 3: -125 -59 15
x11932:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1397 = return_value

scanLongInt$19:	; input = £temporary1397
x11935:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$20:	; goto 8
x11938:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x11940:	cmp byte [bp + 14], 43	; 4: -128 126 14 43
x11944:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x11946:	mov word [bp + 15], scanLongInt$24	; 5: -57 70 15 -72 46
x11951:	mov [bp + 17], bp	; 3: -119 110 17
x11954:	add bp, 15	; 3: -125 -59 15
x11957:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1400 = return_value

scanLongInt$26:	; input = £temporary1400
x11960:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$27:	; goto 35
x11963:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x11965:	cmp byte [bp + 14], 45	; 4: -128 126 14 45
x11969:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x11971:	mov word [bp + 10], 1	; 5: -57 70 10 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x11976:	mov word [bp + 15], scanLongInt$32	; 5: -57 70 15 -42 46
x11981:	mov [bp + 17], bp	; 3: -119 110 17
x11984:	add bp, 15	; 3: -125 -59 15
x11987:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1402 = return_value

scanLongInt$34:	; input = £temporary1402
x11990:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$35:	; call header integral zero 0 stack zero 0

scanLongInt$36:	; £temporary1403 = int_to_int input (Signed_Char -> Signed_Int)
x11993:	mov al, [bp + 14]	; 3: -118 70 14
x11996:	and ax, 255	; 3: 37 -1 0
x11999:	cmp al, 0	; 2: 60 0
x12001:	jge scanLongInt$37	; 2: 125 4
x12003:	neg al	; 2: -10 -40
x12005:	neg ax	; 2: -9 -40

scanLongInt$37:	; parameter £temporary1403, offset 6
x12007:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$38:	; call function noellipse-noellipse isdigit
x12010:	mov word [bp + 15], scanLongInt$39	; 5: -57 70 15 -8 46
x12015:	mov [bp + 17], bp	; 3: -119 110 17
x12018:	add bp, 15	; 3: -125 -59 15
x12021:	jmp isdigit	; 3: -23 109 -11

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1404 = return_value

scanLongInt$41:	; if £temporary1404 == 0 goto 53
x12024:	cmp bx, 0	; 3: -125 -5 0
x12027:	je scanLongInt$53	; 2: 116 66

scanLongInt$42:	; £temporary1405 = longValue * 10
x12029:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12033:	xor edx, edx	; 3: 102 49 -46
x12036:	imul dword [int4$10#]	; 5: 102 -9 46 -33 19

scanLongInt$43:	; £temporary1406 = input - 48
x12041:	mov bl, [bp + 14]	; 3: -118 94 14
x12044:	sub bl, 48	; 3: -128 -21 48

scanLongInt$44:	; £temporary1407 = int_to_int £temporary1406 (Signed_Char -> Signed_Long_Int)
x12047:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0
x12054:	cmp bl, 0	; 3: -128 -5 0
x12057:	jge scanLongInt$45	; 2: 125 5
x12059:	neg bl	; 2: -10 -37
x12061:	neg ebx	; 3: 102 -9 -37

scanLongInt$45:	; longValue = £temporary1405 + £temporary1407
x12064:	add eax, ebx	; 3: 102 1 -40
x12067:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$46:	; call header integral zero 0 stack zero 0

scanLongInt$47:	; call function noellipse-noellipse scanChar
x12071:	mov word [bp + 15], scanLongInt$48	; 5: -57 70 15 53 47
x12076:	mov [bp + 17], bp	; 3: -119 110 17
x12079:	add bp, 15	; 3: -125 -59 15
x12082:	jmp scanChar	; 3: -23 34 -4

scanLongInt$48:	; post call

scanLongInt$49:	; £temporary1409 = return_value

scanLongInt$50:	; input = £temporary1409
x12085:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$51:	; found = 1
x12088:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$52:	; goto 35
x12093:	jmp scanLongInt$35	; 2: -21 -102

scanLongInt$53:	; if minus == 0 goto 56
x12095:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x12099:	je scanLongInt$56	; 2: 116 11

scanLongInt$54:	; £temporary1411 = -longValue
x12101:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12105:	neg eax	; 3: 102 -9 -40

scanLongInt$55:	; longValue = £temporary1411
x12108:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$56:	; if found == 0 goto 58
x12112:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x12116:	je scanLongInt$58	; 2: 116 4

scanLongInt$57:	; ++g_inCount
x12118:	inc word [g_inCount]	; 4: -1 6 62 43

scanLongInt$58:	; call header integral zero 0 stack zero 0

scanLongInt$59:	; parameter input, offset 6
x12122:	mov al, [bp + 14]	; 3: -118 70 14
x12125:	mov [bp + 21], al	; 3: -120 70 21

scanLongInt$60:	; call function noellipse-noellipse unscanChar
x12128:	mov word [bp + 15], scanLongInt$61	; 5: -57 70 15 110 47
x12133:	mov [bp + 17], bp	; 3: -119 110 17
x12136:	add bp, 15	; 3: -125 -59 15
x12139:	nop	; 1: -112
x12140:	jmp unscanChar	; 2: -21 15

scanLongInt$61:	; post call

scanLongInt$62:	; return_value = longValue
x12142:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

scanLongInt$63:	; return
x12146:	mov ax, [bp]	; 3: -117 70 0
x12149:	mov di, [bp + 4]	; 3: -117 126 4
x12152:	mov bp, [bp + 2]	; 3: -117 110 2
x12155:	jmp ax	; 2: -1 -32

scanLongInt$64:	; function end scanLongInt

unscanChar:	; case g_inStatus == 0 goto 4
x12157:	mov ax, [g_inStatus]	; 3: -95 24 38
x12160:	cmp ax, 0	; 3: -125 -8 0
x12163:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x12165:	cmp ax, 1	; 3: -125 -8 1
x12168:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x12170:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x12172:	dec word [g_inChars]	; 4: -1 14 64 43

unscanChar$5:	; goto 7
x12176:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x12178:	dec word [g_inChars]	; 4: -1 14 64 43

unscanChar$7:	; return
x12182:	mov ax, [bp]	; 3: -117 70 0
x12185:	mov di, [bp + 4]	; 3: -117 126 4
x12188:	mov bp, [bp + 2]	; 3: -117 110 2
x12191:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x12193:	mov dword [bp + 10], 0	; 8: 102 -57 70 10 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x12201:	mov word [bp + 18], scanUnsignedLongInt$3	; 5: -57 70 18 -73 47
x12206:	mov [bp + 20], bp	; 3: -119 110 20
x12209:	add bp, 18	; 3: -125 -59 18
x12212:	jmp scanChar	; 3: -23 -96 -5

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1419 = return_value

scanUnsignedLongInt$5:	; input = £temporary1419
x12215:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$6:	; found = 1
x12218:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1420 = int_to_int input (Signed_Char -> Signed_Int)
x12223:	mov al, [bp + 18]	; 3: -118 70 18
x12226:	and ax, 255	; 3: 37 -1 0
x12229:	cmp al, 0	; 2: 60 0
x12231:	jge scanUnsignedLongInt$9	; 2: 125 4
x12233:	neg al	; 2: -10 -40
x12235:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1420, offset 6
x12237:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x12240:	mov word [bp + 21], scanUnsignedLongInt$11	; 5: -57 70 21 -34 47
x12245:	mov [bp + 23], bp	; 3: -119 110 23
x12248:	add bp, 21	; 3: -125 -59 21
x12251:	jmp isspace	; 3: -23 53 -2

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1421 = return_value

scanUnsignedLongInt$13:	; if £temporary1421 == 0 goto 20
x12254:	cmp bx, 0	; 3: -125 -5 0
x12257:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x12259:	mov word [bp + 21], scanUnsignedLongInt$16	; 5: -57 70 21 -15 47
x12264:	mov [bp + 23], bp	; 3: -119 110 23
x12267:	add bp, 21	; 3: -125 -59 21
x12270:	jmp scanChar	; 3: -23 102 -5

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1422 = return_value

scanUnsignedLongInt$18:	; input = £temporary1422
x12273:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$19:	; goto 7
x12276:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 48 goto 49
x12278:	cmp byte [bp + 18], 48	; 4: -128 126 18 48
x12282:	jne scanUnsignedLongInt$49	; 2: 117 118

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x12284:	mov word [bp + 21], scanUnsignedLongInt$23	; 5: -57 70 21 10 48
x12289:	mov [bp + 23], bp	; 3: -119 110 23
x12292:	add bp, 21	; 3: -125 -59 21
x12295:	jmp scanChar	; 3: -23 77 -5

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1425 = return_value

scanUnsignedLongInt$25:	; input = £temporary1425
x12298:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$26:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$27:	; £temporary1426 = int_to_int input (Signed_Char -> Signed_Int)
x12301:	mov al, [bp + 18]	; 3: -118 70 18
x12304:	and ax, 255	; 3: 37 -1 0
x12307:	cmp al, 0	; 2: 60 0
x12309:	jge scanUnsignedLongInt$28	; 2: 125 4
x12311:	neg al	; 2: -10 -40
x12313:	neg ax	; 2: -9 -40

scanUnsignedLongInt$28:	; parameter £temporary1426, offset 6
x12315:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$29:	; call function noellipse-noellipse tolower
x12318:	mov word [bp + 21], scanUnsignedLongInt$30	; 5: -57 70 21 44 48
x12323:	mov [bp + 23], bp	; 3: -119 110 23
x12326:	add bp, 21	; 3: -125 -59 21
x12329:	jmp tolower	; 3: -23 9 -18

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1427 = return_value

scanUnsignedLongInt$32:	; if £temporary1427 != 120 goto 44
x12332:	cmp bx, 120	; 3: -125 -5 120
x12335:	jne scanUnsignedLongInt$44	; 2: 117 42

scanUnsignedLongInt$33:	; if base != 0 goto 36
x12337:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12342:	jne scanUnsignedLongInt$36	; 2: 117 8

scanUnsignedLongInt$34:	; £temporary1433 = 16
x12344:	mov eax, 16	; 6: 102 -72 16 0 0 0

scanUnsignedLongInt$35:	; goto 37
x12350:	jmp scanUnsignedLongInt$37	; 2: -21 4

scanUnsignedLongInt$36:	; £temporary1433 = base
x12352:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$37:	; base = £temporary1433
x12356:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$38:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$39:	; call function noellipse-noellipse scanChar
x12360:	mov word [bp + 21], scanUnsignedLongInt$40	; 5: -57 70 21 86 48
x12365:	mov [bp + 23], bp	; 3: -119 110 23
x12368:	add bp, 21	; 3: -125 -59 21
x12371:	jmp scanChar	; 3: -23 1 -5

scanUnsignedLongInt$40:	; post call

scanUnsignedLongInt$41:	; £temporary1434 = return_value

scanUnsignedLongInt$42:	; input = £temporary1434
x12374:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$43:	; goto 49
x12377:	jmp scanUnsignedLongInt$49	; 2: -21 23

scanUnsignedLongInt$44:	; if base != 0 goto 47
x12379:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12384:	jne scanUnsignedLongInt$47	; 2: 117 8

scanUnsignedLongInt$45:	; £temporary1439 = 8
x12386:	mov eax, 8	; 6: 102 -72 8 0 0 0

scanUnsignedLongInt$46:	; goto 48
x12392:	jmp scanUnsignedLongInt$48	; 2: -21 4

scanUnsignedLongInt$47:	; £temporary1439 = base
x12394:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$48:	; base = £temporary1439
x12398:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$49:	; if base != 0 goto 51
x12402:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12407:	jne scanUnsignedLongInt$51	; 2: 117 8

scanUnsignedLongInt$50:	; base = 10
x12409:	mov dword [bp + 6], 10	; 8: 102 -57 70 6 10 0 0 0

scanUnsignedLongInt$51:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$52:	; £temporary1441 = int_to_int input (Signed_Char -> Signed_Int)
x12417:	mov al, [bp + 18]	; 3: -118 70 18
x12420:	and ax, 255	; 3: 37 -1 0
x12423:	cmp al, 0	; 2: 60 0
x12425:	jge scanUnsignedLongInt$53	; 2: 125 4
x12427:	neg al	; 2: -10 -40
x12429:	neg ax	; 2: -9 -40

scanUnsignedLongInt$53:	; parameter £temporary1441, offset 6
x12431:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$54:	; call function noellipse-noellipse isxdigit
x12434:	mov word [bp + 21], scanUnsignedLongInt$55	; 5: -57 70 21 -96 48
x12439:	mov [bp + 23], bp	; 3: -119 110 23
x12442:	add bp, 21	; 3: -125 -59 21
x12445:	nop	; 1: -112
x12446:	jmp isxdigit	; 2: -21 127

scanUnsignedLongInt$55:	; post call

scanUnsignedLongInt$56:	; £temporary1442 = return_value

scanUnsignedLongInt$57:	; if £temporary1442 == 0 goto 74
x12448:	cmp bx, 0	; 3: -125 -5 0
x12451:	je scanUnsignedLongInt$74	; 2: 116 77

scanUnsignedLongInt$58:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$59:	; parameter input, offset 6
x12453:	mov al, [bp + 18]	; 3: -118 70 18
x12456:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$60:	; call function noellipse-noellipse digitToValue
x12459:	mov word [bp + 21], scanUnsignedLongInt$61	; 5: -57 70 21 -71 48
x12464:	mov [bp + 23], bp	; 3: -119 110 23
x12467:	add bp, 21	; 3: -125 -59 21
x12470:	jmp digitToValue	; 3: -23 -86 0

scanUnsignedLongInt$61:	; post call

scanUnsignedLongInt$62:	; £temporary1443 = return_value

scanUnsignedLongInt$63:	; digit = £temporary1443
x12473:	mov [bp + 14], ebx	; 4: 102 -119 94 14

scanUnsignedLongInt$64:	; if digit >= base goto 74
x12477:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12481:	cmp [bp + 14], eax	; 4: 102 57 70 14
x12485:	jae scanUnsignedLongInt$74	; 2: 115 43

scanUnsignedLongInt$65:	; £temporary1445 = unsignedLongValue * base
x12487:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x12491:	xor edx, edx	; 3: 102 49 -46
x12494:	mul dword [bp + 6]	; 4: 102 -9 102 6

scanUnsignedLongInt$66:	; unsignedLongValue = £temporary1445 + digit
x12498:	add eax, [bp + 14]	; 4: 102 3 70 14
x12502:	mov [bp + 10], eax	; 4: 102 -119 70 10

scanUnsignedLongInt$67:	; found = 1
x12506:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$68:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$69:	; call function noellipse-noellipse scanChar
x12511:	mov word [bp + 21], scanUnsignedLongInt$70	; 5: -57 70 21 -19 48
x12516:	mov [bp + 23], bp	; 3: -119 110 23
x12519:	add bp, 21	; 3: -125 -59 21
x12522:	jmp scanChar	; 3: -23 106 -6

scanUnsignedLongInt$70:	; post call

scanUnsignedLongInt$71:	; £temporary1447 = return_value

scanUnsignedLongInt$72:	; input = £temporary1447
x12525:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$73:	; goto 51
x12528:	jmp scanUnsignedLongInt$51	; 2: -21 -113

scanUnsignedLongInt$74:	; if found == 0 goto 76
x12530:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x12534:	je scanUnsignedLongInt$76	; 2: 116 4

scanUnsignedLongInt$75:	; ++g_inCount
x12536:	inc word [g_inCount]	; 4: -1 6 62 43

scanUnsignedLongInt$76:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$77:	; parameter input, offset 6
x12540:	mov al, [bp + 18]	; 3: -118 70 18
x12543:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$78:	; call function noellipse-noellipse unscanChar
x12546:	mov word [bp + 21], scanUnsignedLongInt$79	; 5: -57 70 21 16 49
x12551:	mov [bp + 23], bp	; 3: -119 110 23
x12554:	add bp, 21	; 3: -125 -59 21
x12557:	jmp unscanChar	; 3: -23 109 -2

scanUnsignedLongInt$79:	; post call

scanUnsignedLongInt$80:	; return_value = unsignedLongValue
x12560:	mov ebx, [bp + 10]	; 4: 102 -117 94 10

scanUnsignedLongInt$81:	; return
x12564:	mov ax, [bp]	; 3: -117 70 0
x12567:	mov di, [bp + 4]	; 3: -117 126 4
x12570:	mov bp, [bp + 2]	; 3: -117 110 2
x12573:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$82:	; function end scanUnsignedLongInt

isxdigit:	; call header integral zero 0 stack zero 0

isxdigit$1:	; parameter c, offset 6
x12575:	mov ax, [bp + 6]	; 3: -117 70 6
x12578:	mov [bp + 14], ax	; 3: -119 70 14

isxdigit$2:	; call function noellipse-noellipse isdigit
x12581:	mov word [bp + 8], isxdigit$3	; 5: -57 70 8 51 49
x12586:	mov [bp + 10], bp	; 3: -119 110 10
x12589:	add bp, 8	; 3: -125 -59 8
x12592:	jmp isdigit	; 3: -23 50 -13

isxdigit$3:	; post call

isxdigit$4:	; £temporary414 = return_value

isxdigit$5:	; if £temporary414 != 0 goto 10
x12595:	cmp bx, 0	; 3: -125 -5 0
x12598:	jne isxdigit$10	; 2: 117 24

isxdigit$6:	; if c < 97 goto 8
x12600:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12604:	jl isxdigit$8	; 2: 124 6

isxdigit$7:	; if c <= 102 goto 10
x12606:	cmp word [bp + 6], 102	; 4: -125 126 6 102
x12610:	jle isxdigit$10	; 2: 126 12

isxdigit$8:	; if c < 65 goto 12
x12612:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x12616:	jl isxdigit$12	; 2: 124 11

isxdigit$9:	; if c > 70 goto 12
x12618:	cmp word [bp + 6], 70	; 4: -125 126 6 70
x12622:	jg isxdigit$12	; 2: 127 5

isxdigit$10:	; £temporary424 = 1
x12624:	mov bx, 1	; 3: -69 1 0

isxdigit$11:	; goto 13
x12627:	jmp isxdigit$13	; 2: -21 3

isxdigit$12:	; £temporary424 = 0
x12629:	mov bx, 0	; 3: -69 0 0

isxdigit$13:	; return_value = £temporary424

isxdigit$14:	; return
x12632:	mov ax, [bp]	; 3: -117 70 0
x12635:	mov di, [bp + 4]	; 3: -117 126 4
x12638:	mov bp, [bp + 2]	; 3: -117 110 2
x12641:	jmp ax	; 2: -1 -32

isxdigit$15:	; function end isxdigit

digitToValue:	; call header integral zero 0 stack zero 0

digitToValue$1:	; £temporary1378 = int_to_int input (Signed_Char -> Signed_Int)
x12643:	mov al, [bp + 6]	; 3: -118 70 6
x12646:	and ax, 255	; 3: 37 -1 0
x12649:	cmp al, 0	; 2: 60 0
x12651:	jge digitToValue$2	; 2: 125 4
x12653:	neg al	; 2: -10 -40
x12655:	neg ax	; 2: -9 -40

digitToValue$2:	; parameter £temporary1378, offset 6
x12657:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$3:	; call function noellipse-noellipse isdigit
x12660:	mov word [bp + 7], digitToValue$4	; 5: -57 70 7 -126 49
x12665:	mov [bp + 9], bp	; 3: -119 110 9
x12668:	add bp, 7	; 3: -125 -59 7
x12671:	jmp isdigit	; 3: -23 -29 -14

digitToValue$4:	; post call

digitToValue$5:	; £temporary1379 = return_value

digitToValue$6:	; if £temporary1379 == 0 goto 11
x12674:	cmp bx, 0	; 3: -125 -5 0
x12677:	je digitToValue$11	; 2: 116 24

digitToValue$7:	; £temporary1380 = input - 48
x12679:	mov bl, [bp + 6]	; 3: -118 94 6
x12682:	sub bl, 48	; 3: -128 -21 48

digitToValue$8:	; £temporary1381 = int_to_int £temporary1380 (Signed_Char -> Unsigned_Long_Int)
x12685:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$9:	; return_value = £temporary1381

digitToValue$10:	; return
x12692:	mov ax, [bp]	; 3: -117 70 0
x12695:	mov di, [bp + 4]	; 3: -117 126 4
x12698:	mov bp, [bp + 2]	; 3: -117 110 2
x12701:	jmp ax	; 2: -1 -32

digitToValue$11:	; call header integral zero 0 stack zero 0

digitToValue$12:	; £temporary1382 = int_to_int input (Signed_Char -> Signed_Int)
x12703:	mov al, [bp + 6]	; 3: -118 70 6
x12706:	and ax, 255	; 3: 37 -1 0
x12709:	cmp al, 0	; 2: 60 0
x12711:	jge digitToValue$13	; 2: 125 4
x12713:	neg al	; 2: -10 -40
x12715:	neg ax	; 2: -9 -40

digitToValue$13:	; parameter £temporary1382, offset 6
x12717:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$14:	; call function noellipse-noellipse islower
x12720:	mov word [bp + 7], digitToValue$15	; 5: -57 70 7 -66 49
x12725:	mov [bp + 9], bp	; 3: -119 110 9
x12728:	add bp, 7	; 3: -125 -59 7
x12731:	nop	; 1: -112
x12732:	jmp islower	; 2: -21 61

digitToValue$15:	; post call

digitToValue$16:	; £temporary1383 = return_value

digitToValue$17:	; if £temporary1383 == 0 goto 23
x12734:	cmp bx, 0	; 3: -125 -5 0
x12737:	je digitToValue$23	; 2: 116 28

digitToValue$18:	; £temporary1384 = input - 97
x12739:	mov bl, [bp + 6]	; 3: -118 94 6
x12742:	sub bl, 97	; 3: -128 -21 97

digitToValue$19:	; £temporary1385 = int_to_int £temporary1384 (Signed_Char -> Unsigned_Long_Int)
x12745:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$20:	; £temporary1386 = £temporary1385 + 10
x12752:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$21:	; return_value = £temporary1386

digitToValue$22:	; return
x12756:	mov ax, [bp]	; 3: -117 70 0
x12759:	mov di, [bp + 4]	; 3: -117 126 4
x12762:	mov bp, [bp + 2]	; 3: -117 110 2
x12765:	jmp ax	; 2: -1 -32

digitToValue$23:	; £temporary1387 = input - 65
x12767:	mov bl, [bp + 6]	; 3: -118 94 6
x12770:	sub bl, 65	; 3: -128 -21 65

digitToValue$24:	; £temporary1388 = int_to_int £temporary1387 (Signed_Char -> Unsigned_Long_Int)
x12773:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$25:	; £temporary1389 = £temporary1388 + 10
x12780:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$26:	; return_value = £temporary1389

digitToValue$27:	; return
x12784:	mov ax, [bp]	; 3: -117 70 0
x12787:	mov di, [bp + 4]	; 3: -117 126 4
x12790:	mov bp, [bp + 2]	; 3: -117 110 2
x12793:	jmp ax	; 2: -1 -32

digitToValue$28:	; function end digitToValue

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x12795:	mov word [bp + 8], islower$2	; 5: -57 70 8 9 50
x12800:	mov [bp + 10], bp	; 3: -119 110 10
x12803:	add bp, 8	; 3: -125 -59 8
x12806:	jmp localeconv	; 3: -23 53 -29

islower$2:	; post call

islower$3:	; £temporary370 = return_value

islower$4:	; localeConvPtr = £temporary370
x12809:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x12812:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12816:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary372 -> localeConvPtr = *localeConvPtr, offset 12
x12818:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary372 -> localeConvPtr, offset 6
x12821:	mov ax, [si + 12]	; 3: -117 68 12
x12824:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x12827:	mov ax, [bp + 6]	; 3: -117 70 6
x12830:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x12833:	mov word [bp + 10], islower$11	; 5: -57 70 10 47 50
x12838:	mov [bp + 12], bp	; 3: -119 110 12
x12841:	add bp, 10	; 3: -125 -59 10
x12844:	jmp strchr	; 3: -23 -91 -24

islower$11:	; post call

islower$12:	; £temporary373 = return_value

islower$13:	; if £temporary373 == 0 goto 16
x12847:	cmp bx, 0	; 3: -125 -5 0
x12850:	je islower$16	; 2: 116 5

islower$14:	; £temporary375 = 1
x12852:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x12855:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary375 = 0
x12857:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary375

islower$18:	; return
x12860:	mov ax, [bp]	; 3: -117 70 0
x12863:	mov di, [bp + 4]	; 3: -117 126 4
x12866:	mov bp, [bp + 2]	; 3: -117 110 2
x12869:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x12871:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12875:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x12877:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x12881:	jg islower$23	; 2: 127 5

islower$21:	; £temporary379 = 1
x12883:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x12886:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary379 = 0
x12888:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary379

islower$25:	; return
x12891:	mov ax, [bp]	; 3: -117 70 0
x12894:	mov di, [bp + 4]	; 3: -117 126 4
x12897:	mov bp, [bp + 2]	; 3: -117 110 2
x12900:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

scanLongDouble:	; minus = 0
x12902:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x12907:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x12912:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x12914:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x12917:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x12919:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x12922:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 -120 50
x12927:	mov [bp + 28], bp	; 3: -119 110 28
x12930:	add bp, 26	; 3: -125 -59 26
x12933:	jmp scanChar	; 3: -23 -49 -8

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1457 = return_value

scanLongDouble$10:	; input = £temporary1457
x12936:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1458 = int_to_int input (Signed_Char -> Signed_Int)
x12939:	mov al, [bp + 26]	; 3: -118 70 26
x12942:	and ax, 255	; 3: 37 -1 0
x12945:	cmp al, 0	; 2: 60 0
x12947:	jge scanLongDouble$13	; 2: 125 4
x12949:	neg al	; 2: -10 -40
x12951:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1458, offset 6
x12953:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x12956:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 -86 50
x12961:	mov [bp + 29], bp	; 3: -119 110 29
x12964:	add bp, 27	; 3: -125 -59 27
x12967:	jmp isspace	; 3: -23 105 -5

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1459 = return_value

scanLongDouble$17:	; if £temporary1459 == 0 goto 24
x12970:	cmp bx, 0	; 3: -125 -5 0
x12973:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x12975:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 -67 50
x12980:	mov [bp + 29], bp	; 3: -119 110 29
x12983:	add bp, 27	; 3: -125 -59 27
x12986:	jmp scanChar	; 3: -23 -102 -8

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1460 = return_value

scanLongDouble$22:	; input = £temporary1460
x12989:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x12992:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x12994:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x12998:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x13000:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 -42 50
x13005:	mov [bp + 29], bp	; 3: -119 110 29
x13008:	add bp, 27	; 3: -125 -59 27
x13011:	jmp scanChar	; 3: -23 -127 -8

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1463 = return_value

scanLongDouble$29:	; input = £temporary1463
x13014:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x13017:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x13019:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x13023:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x13025:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x13030:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 -12 50
x13035:	mov [bp + 29], bp	; 3: -119 110 29
x13038:	add bp, 27	; 3: -125 -59 27
x13041:	jmp scanChar	; 3: -23 99 -8

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1465 = return_value

scanLongDouble$37:	; input = £temporary1465
x13044:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1466 = int_to_int input (Signed_Char -> Signed_Int)
x13047:	mov al, [bp + 26]	; 3: -118 70 26
x13050:	and ax, 255	; 3: 37 -1 0
x13053:	cmp al, 0	; 2: 60 0
x13055:	jge scanLongDouble$40	; 2: 125 4
x13057:	neg al	; 2: -10 -40
x13059:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1466, offset 6
x13061:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x13064:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 22 51
x13069:	mov [bp + 29], bp	; 3: -119 110 29
x13072:	add bp, 27	; 3: -125 -59 27
x13075:	jmp isdigit	; 3: -23 79 -15

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1467 = return_value

scanLongDouble$44:	; if £temporary1467 == 0 goto 60
x13078:	cmp bx, 0	; 3: -125 -5 0
x13081:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x13083:	fld qword [float8$10.0#]	; 4: -35 6 11 30

scanLongDouble$46:	; push float value
x13087:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1468 = 10.0 * value
x13090:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1469 = input - 48
x13092:	mov al, [bp + 26]	; 3: -118 70 26
x13095:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1471 = int_to_int £temporary1469 (Signed_Char -> Signed_Int)
x13097:	and ax, 255	; 3: 37 -1 0
x13100:	cmp al, 0	; 2: 60 0
x13102:	jge scanLongDouble$50	; 2: 125 4
x13104:	neg al	; 2: -10 -40
x13106:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1470 = int_to_float £temporary1471 (Signed_Int -> Long_Double)
x13108:	mov [container2bytes#], ax	; 3: -93 26 18
x13111:	fild word [container2bytes#]	; 4: -33 6 26 18

scanLongDouble$51:	; £temporary1472 = £temporary1468 + £temporary1470
x13115:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x13117:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x13120:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 78 51
x13125:	mov [bp + 29], bp	; 3: -119 110 29
x13128:	add bp, 27	; 3: -125 -59 27
x13131:	jmp scanChar	; 3: -23 9 -8

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1473 = return_value

scanLongDouble$57:	; input = £temporary1473
x13134:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x13137:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x13142:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x13144:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x13148:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x13150:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 108 51
x13155:	mov [bp + 29], bp	; 3: -119 110 29
x13158:	add bp, 27	; 3: -125 -59 27
x13161:	jmp scanChar	; 3: -23 -21 -9

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1476 = return_value

scanLongDouble$65:	; input = £temporary1476
x13164:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1477 = int_to_int input (Signed_Char -> Signed_Int)
x13167:	mov al, [bp + 26]	; 3: -118 70 26
x13170:	and ax, 255	; 3: 37 -1 0
x13173:	cmp al, 0	; 2: 60 0
x13175:	jge scanLongDouble$68	; 2: 125 4
x13177:	neg al	; 2: -10 -40
x13179:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1477, offset 6
x13181:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x13184:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 -114 51
x13189:	mov [bp + 29], bp	; 3: -119 110 29
x13192:	add bp, 27	; 3: -125 -59 27
x13195:	jmp isdigit	; 3: -23 -41 -16

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1478 = return_value

scanLongDouble$72:	; if £temporary1478 == 0 goto 92
x13198:	cmp bx, 0	; 3: -125 -5 0
x13201:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x13203:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x13206:	fld qword [float8$10.0#]	; 4: -35 6 11 30

scanLongDouble$75:	; £temporary1479 = factor / 10.0
x13210:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x13212:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x13215:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x13218:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1480 = input - 48
x13221:	mov al, [bp + 26]	; 3: -118 70 26
x13224:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1482 = int_to_int £temporary1480 (Signed_Char -> Signed_Int)
x13226:	and ax, 255	; 3: 37 -1 0
x13229:	cmp al, 0	; 2: 60 0
x13231:	jge scanLongDouble$81	; 2: 125 4
x13233:	neg al	; 2: -10 -40
x13235:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1481 = int_to_float £temporary1482 (Signed_Int -> Long_Double)
x13237:	mov [container2bytes#], ax	; 3: -93 26 18
x13240:	fild word [container2bytes#]	; 4: -33 6 26 18

scanLongDouble$82:	; £temporary1483 = factor * £temporary1481
x13244:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1484 = value + £temporary1483
x13246:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x13248:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x13251:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 -47 51
x13256:	mov [bp + 29], bp	; 3: -119 110 29
x13259:	add bp, 27	; 3: -125 -59 27
x13262:	jmp scanChar	; 3: -23 -122 -9

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1485 = return_value

scanLongDouble$89:	; input = £temporary1485
x13265:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x13268:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x13273:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; parameter input, offset 6
x13275:	mov al, [bp + 26]	; 3: -118 70 26
x13278:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$94:	; call function noellipse-noellipse unscanChar
x13281:	mov word [bp + 27], scanLongDouble$95	; 5: -57 70 27 -17 51
x13286:	mov [bp + 29], bp	; 3: -119 110 29
x13289:	add bp, 27	; 3: -125 -59 27
x13292:	jmp unscanChar	; 3: -23 -114 -5

scanLongDouble$95:	; post call

scanLongDouble$96:	; call header integral zero 0 stack zero 0

scanLongDouble$97:	; £temporary1488 = int_to_int input (Signed_Char -> Signed_Int)
x13295:	mov al, [bp + 26]	; 3: -118 70 26
x13298:	and ax, 255	; 3: 37 -1 0
x13301:	cmp al, 0	; 2: 60 0
x13303:	jge scanLongDouble$98	; 2: 125 4
x13305:	neg al	; 2: -10 -40
x13307:	neg ax	; 2: -9 -40

scanLongDouble$98:	; parameter £temporary1488, offset 6
x13309:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$99:	; call function noellipse-noellipse tolower
x13312:	mov word [bp + 27], scanLongDouble$100	; 5: -57 70 27 14 52
x13317:	mov [bp + 29], bp	; 3: -119 110 29
x13320:	add bp, 27	; 3: -125 -59 27
x13323:	jmp tolower	; 3: -23 39 -22

scanLongDouble$100:	; post call

scanLongDouble$101:	; £temporary1489 = return_value

scanLongDouble$102:	; if £temporary1489 != 101 goto 121
x13326:	cmp bx, 101	; 3: -125 -5 101
x13329:	jne scanLongDouble$121	; 2: 117 75

scanLongDouble$103:	; call header integral zero 0 stack zero 0

scanLongDouble$104:	; call function noellipse-noellipse scanLongInt
x13331:	mov word [bp + 27], scanLongDouble$105	; 5: -57 70 27 33 52
x13336:	mov [bp + 29], bp	; 3: -119 110 29
x13339:	add bp, 27	; 3: -125 -59 27
x13342:	jmp scanLongInt	; 3: -23 41 -6

scanLongDouble$105:	; post call

scanLongDouble$106:	; £temporary1491 = return_value

scanLongDouble$107:	; £temporary1492 = int_to_float £temporary1491 (Signed_Long_Int -> Double)
x13345:	mov [container4bytes#], ebx	; 5: 102 -119 30 103 29
x13350:	fild dword [container4bytes#]	; 4: -37 6 103 29

scanLongDouble$108:	; pop float exponent
x13354:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$109:	; push float value
x13357:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$110:	; call header integral zero 0 stack no zero 1
x13360:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$111:	; push float 10.0
x13363:	fld qword [float8$10.0#]	; 4: -35 6 11 30

scanLongDouble$112:	; parameter 10.0, offset 6
x13367:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$113:	; push float exponent
x13370:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$114:	; parameter exponent, offset 14
x13373:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$115:	; call function noellipse-noellipse pow
x13376:	mov word [bp + 43], scanLongDouble$116	; 5: -57 70 43 78 52
x13381:	mov [bp + 45], bp	; 3: -119 110 45
x13384:	add bp, 43	; 3: -125 -59 43
x13387:	jmp pow	; 3: -23 78 -19

scanLongDouble$116:	; post call
x13390:	fstp qword [bp + 43]	; 3: -35 94 43
x13393:	fld qword [bp + 35]	; 3: -35 70 35
x13396:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$117:	; £temporary1493 = return_value

scanLongDouble$118:	; £temporary1494 = value * £temporary1493
x13399:	fmul	; 2: -34 -55

scanLongDouble$119:	; pop float value
x13401:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$120:	; goto 125
x13404:	jmp scanLongDouble$125	; 2: -21 20

scanLongDouble$121:	; call header integral zero 0 stack zero 0

scanLongDouble$122:	; parameter input, offset 6
x13406:	mov al, [bp + 26]	; 3: -118 70 26
x13409:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$123:	; call function noellipse-noellipse unscanChar
x13412:	mov word [bp + 27], scanLongDouble$124	; 5: -57 70 27 114 52
x13417:	mov [bp + 29], bp	; 3: -119 110 29
x13420:	add bp, 27	; 3: -125 -59 27
x13423:	jmp unscanChar	; 3: -23 11 -5

scanLongDouble$124:	; post call

scanLongDouble$125:	; if minus == 0 goto 129
x13426:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x13430:	je scanLongDouble$129	; 2: 116 8

scanLongDouble$126:	; push float value
x13432:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$127:	; £temporary1496 = -value
x13435:	fchs	; 2: -39 -32

scanLongDouble$128:	; pop float value
x13437:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$129:	; if found == 0 goto 131
x13440:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x13444:	je scanLongDouble$131	; 2: 116 4

scanLongDouble$130:	; ++g_inCount
x13446:	inc word [g_inCount]	; 4: -1 6 62 43

scanLongDouble$131:	; push float value
x13450:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$132:	; return_value = value

scanLongDouble$133:	; return
x13453:	mov ax, [bp]	; 3: -117 70 0
x13456:	mov di, [bp + 4]	; 3: -117 126 4
x13459:	mov bp, [bp + 2]	; 3: -117 110 2
x13462:	jmp ax	; 2: -1 -32

scanLongDouble$134:	; function end scanLongDouble

scanPattern:	; index = 0
x13464:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x13469:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 -85 52
x13474:	mov [bp + 16], bp	; 3: -119 110 16
x13477:	add bp, 14	; 3: -125 -59 14
x13480:	jmp scanChar	; 3: -23 -84 -10

scanPattern$3:	; post call

scanPattern$4:	; £temporary1249 = return_value

scanPattern$5:	; input = £temporary1249
x13483:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1250 = int_to_int input (Signed_Char -> Signed_Int)
x13486:	mov al, [bp + 14]	; 3: -118 70 14
x13489:	and ax, 255	; 3: 37 -1 0
x13492:	cmp al, 0	; 2: 60 0
x13494:	jge scanPattern$8	; 2: 125 4
x13496:	neg al	; 2: -10 -40
x13498:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1250, offset 6
x13500:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x13503:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 -51 52
x13508:	mov [bp + 17], bp	; 3: -119 110 17
x13511:	add bp, 15	; 3: -125 -59 15
x13514:	jmp isspace	; 3: -23 70 -7

scanPattern$10:	; post call

scanPattern$11:	; £temporary1251 = return_value

scanPattern$12:	; if £temporary1251 == 0 goto 19
x13517:	cmp bx, 0	; 3: -125 -5 0
x13520:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x13522:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 -32 52
x13527:	mov [bp + 17], bp	; 3: -119 110 17
x13530:	add bp, 15	; 3: -125 -59 15
x13533:	jmp scanChar	; 3: -23 119 -10

scanPattern$15:	; post call

scanPattern$16:	; £temporary1252 = return_value

scanPattern$17:	; input = £temporary1252
x13536:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x13539:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x13541:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x13545:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x13549:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13553:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x13555:	mov ax, [bp + 8]	; 3: -117 70 8
x13558:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1257 = int_to_int input (Signed_Char -> Signed_Int)
x13561:	mov al, [bp + 14]	; 3: -118 70 14
x13564:	and ax, 255	; 3: 37 -1 0
x13567:	cmp al, 0	; 2: 60 0
x13569:	jge scanPattern$24	; 2: 125 4
x13571:	neg al	; 2: -10 -40
x13573:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1257, offset 8
x13575:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x13578:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 24 53
x13583:	mov [bp + 17], bp	; 3: -119 110 17
x13586:	add bp, 15	; 3: -125 -59 15
x13589:	jmp strchr	; 3: -23 -68 -27

scanPattern$26:	; post call

scanPattern$27:	; £temporary1258 = return_value

scanPattern$28:	; if £temporary1258 != 0 goto 38
x13592:	cmp bx, 0	; 3: -125 -5 0
x13595:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x13597:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13601:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x13603:	mov ax, [bp + 8]	; 3: -117 70 8
x13606:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1261 = int_to_int input (Signed_Char -> Signed_Int)
x13609:	mov al, [bp + 14]	; 3: -118 70 14
x13612:	and ax, 255	; 3: 37 -1 0
x13615:	cmp al, 0	; 2: 60 0
x13617:	jge scanPattern$33	; 2: 125 4
x13619:	neg al	; 2: -10 -40
x13621:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1261, offset 8
x13623:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x13626:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 72 53
x13631:	mov [bp + 17], bp	; 3: -119 110 17
x13634:	add bp, 15	; 3: -125 -59 15
x13637:	jmp strchr	; 3: -23 -116 -27

scanPattern$35:	; post call

scanPattern$36:	; £temporary1262 = return_value

scanPattern$37:	; if £temporary1262 != 0 goto 49
x13640:	cmp bx, 0	; 3: -125 -5 0
x13643:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1268 = index
x13645:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x13648:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1270 = string + £temporary1268
x13651:	mov si, [bp + 6]	; 3: -117 118 6
x13654:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1269 -> £temporary1270 = *£temporary1270

scanPattern$42:	; £temporary1269 -> £temporary1270 = input
x13656:	mov al, [bp + 14]	; 3: -118 70 14
x13659:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x13661:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 107 53
x13666:	mov [bp + 17], bp	; 3: -119 110 17
x13669:	add bp, 15	; 3: -125 -59 15
x13672:	jmp scanChar	; 3: -23 -20 -11

scanPattern$45:	; post call

scanPattern$46:	; £temporary1271 = return_value

scanPattern$47:	; input = £temporary1271
x13675:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x13678:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1273 = string + index
x13681:	mov si, [bp + 6]	; 3: -117 118 6
x13684:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1272 -> £temporary1273 = *£temporary1273

scanPattern$51:	; £temporary1272 -> £temporary1273 = 0
x13687:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x13690:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x13692:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13696:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x13698:	mov ax, [bp + 8]	; 3: -117 70 8
x13701:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1276 = int_to_int input (Signed_Char -> Signed_Int)
x13704:	mov al, [bp + 14]	; 3: -118 70 14
x13707:	and ax, 255	; 3: 37 -1 0
x13710:	cmp al, 0	; 2: 60 0
x13712:	jge scanPattern$57	; 2: 125 4
x13714:	neg al	; 2: -10 -40
x13716:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1276, offset 8
x13718:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x13721:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 -89 53
x13726:	mov [bp + 17], bp	; 3: -119 110 17
x13729:	add bp, 15	; 3: -125 -59 15
x13732:	jmp strchr	; 3: -23 45 -27

scanPattern$59:	; post call

scanPattern$60:	; £temporary1277 = return_value

scanPattern$61:	; if £temporary1277 != 0 goto 71
x13735:	cmp bx, 0	; 3: -125 -5 0
x13738:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x13740:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13744:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x13746:	mov ax, [bp + 8]	; 3: -117 70 8
x13749:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1280 = int_to_int input (Signed_Char -> Signed_Int)
x13752:	mov al, [bp + 14]	; 3: -118 70 14
x13755:	and ax, 255	; 3: 37 -1 0
x13758:	cmp al, 0	; 2: 60 0
x13760:	jge scanPattern$66	; 2: 125 4
x13762:	neg al	; 2: -10 -40
x13764:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1280, offset 8
x13766:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x13769:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 -41 53
x13774:	mov [bp + 17], bp	; 3: -119 110 17
x13777:	add bp, 15	; 3: -125 -59 15
x13780:	jmp strchr	; 3: -23 -3 -28

scanPattern$68:	; post call

scanPattern$69:	; £temporary1281 = return_value

scanPattern$70:	; if £temporary1281 != 0 goto 77
x13783:	cmp bx, 0	; 3: -125 -5 0
x13786:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x13788:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 -22 53
x13793:	mov [bp + 17], bp	; 3: -119 110 17
x13796:	add bp, 15	; 3: -125 -59 15
x13799:	jmp scanChar	; 3: -23 109 -11

scanPattern$73:	; post call

scanPattern$74:	; £temporary1287 = return_value

scanPattern$75:	; input = £temporary1287
x13802:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x13805:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x13807:	mov ax, [bp]	; 3: -117 70 0
x13810:	mov di, [bp + 4]	; 3: -117 126 4
x13813:	mov bp, [bp + 2]	; 3: -117 110 2
x13816:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

$Path:
x13818:	db "C:\D\Main.com", 0	; 14: 67 58 92 68 92 77 97 105 110 46 99 111 109 0

$StackTop:
x13832:
