	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -76 51
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 -76 51 0 0
	; Initialize Argument List
x283:	mov si, bp	; 2: -119 -18
x285:	mov word [bp], $Path	; 5: -57 70 0 -90 51
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
x593:	jmp mktime	; 3: -23 -36 31

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
x690:	jmp scanf	; 3: -23 124 32

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
x2852:	jmp isdigit	; 3: -23 -22 22

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
x3839:	jmp printUnsignedLong	; 3: -23 -50 9

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
x3903:	jmp printLongDoublePlain	; 3: -23 57 11

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
x3978:	jmp fabs	; 3: -23 50 12

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
x4068:	jmp printLongDoublePlain	; 3: -23 -108 10

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
x4102:	jmp tolower	; 3: -23 -40 11

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
x4185:	jmp printLongDoubleExpo	; 3: -23 38 12

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
x4208:	jmp fabs	; 3: -23 76 11

printArgument$262:	; post call

printArgument$263:	; £temporary2074 = return_value

printArgument$264:	; parameter £temporary2074, offset 6
x4211:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x4214:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 -124 16
x4219:	mov [bp + 46], bp	; 3: -119 110 46
x4222:	add bp, 44	; 3: -125 -59 44
x4225:	jmp log10	; 3: -23 101 13

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
x4291:	jmp printLongDoublePlain	; 3: -23 -75 9

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
x4372:	jmp printLongDoubleExpo	; 3: -23 107 11

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
x4482:	jmp printUnsignedLong	; 3: -23 75 7

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
x5380:	jmp strchr	; 3: -23 121 3

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
x5438:	cmp word [@17$g_currStructPtr], 0	; 5: -125 62 92 21 0
x5443:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary515 -> g_currStructPtr = *g_currStructPtr, offset 2
x5445:	mov si, [@17$g_currStructPtr]	; 4: -117 54 92 21

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

@17$g_currStructPtr:
x5468:	dw @15$sArray	; 2: 94 21

@15$sArray:
x5470:	dw string_# ; 2: 106 21
x5472:	dw @14$en_US_utf8	; 2: 107 21
x5474:	dw string_C# ; 2: 123 24
x5476:	dw @14$en_US_utf8	; 2: 107 21
x5478:	dw string_US# ; 2: 125 24
x5480:	dw @14$en_US_utf8	; 2: 107 21

string_#:
x5482:	db 0	; 1: 0

@14$en_US_utf8:
x5483:	dw -5	; 2: -5 -1
x5485:	dw -4	; 2: -4 -1
x5487:	dw @10$enShortDayList ; 2: 125 21
x5489:	dw @11$enLongDayList ; 2: -89 21
x5491:	dw @12$enShortMonthList ; 2: -18 21
x5493:	dw @13$enLongMonthList ; 2: 54 22
x5495:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -96 22
x5497:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -69 22
x5499:	dw enMessageList ; 2: -42 22

@10$enShortDayList:
x5501:	dw string_Sun# ; 2: -117 21
x5503:	dw string_Mon# ; 2: -113 21
x5505:	dw string_Tue# ; 2: -109 21
x5507:	dw string_Wed# ; 2: -105 21
x5509:	dw string_Thu# ; 2: -101 21
x5511:	dw string_Fri# ; 2: -97 21
x5513:	dw string_Sat# ; 2: -93 21

string_Sun#:
x5515:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x5519:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x5523:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x5527:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x5531:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x5535:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x5539:	db "Sat", 0	; 4: 83 97 116 0

@11$enLongDayList:
x5543:	dw string_Sunday# ; 2: -75 21
x5545:	dw string_Monday# ; 2: -68 21
x5547:	dw string_Tuesday# ; 2: -61 21
x5549:	dw string_Wednesday# ; 2: -53 21
x5551:	dw string_Thursday# ; 2: -43 21
x5553:	dw string_Friday# ; 2: -34 21
x5555:	dw string_Saturday# ; 2: -27 21

string_Sunday#:
x5557:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x5564:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x5571:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x5579:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x5589:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x5598:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x5605:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@12$enShortMonthList:
x5614:	dw string_Jan# ; 2: 6 22
x5616:	dw string_Feb# ; 2: 10 22
x5618:	dw string_Mar# ; 2: 14 22
x5620:	dw string_Apr# ; 2: 18 22
x5622:	dw string_May# ; 2: 22 22
x5624:	dw string_Jun# ; 2: 26 22
x5626:	dw string_Jul# ; 2: 30 22
x5628:	dw string_Aug# ; 2: 34 22
x5630:	dw string_Sep# ; 2: 38 22
x5632:	dw string_Oct# ; 2: 42 22
x5634:	dw string_Nov# ; 2: 46 22
x5636:	dw string_Dec# ; 2: 50 22

string_Jan#:
x5638:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5642:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5646:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5650:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5654:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5658:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5662:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5666:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5670:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5674:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5678:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5682:	db "Dec", 0	; 4: 68 101 99 0

@13$enLongMonthList:
x5686:	dw string_January# ; 2: 78 22
x5688:	dw string_February# ; 2: 86 22
x5690:	dw string_March# ; 2: 95 22
x5692:	dw string_April# ; 2: 101 22
x5694:	dw string_May# ; 2: 22 22
x5696:	dw string_June# ; 2: 107 22
x5698:	dw string_July# ; 2: 112 22
x5700:	dw string_August# ; 2: 117 22
x5702:	dw string_September# ; 2: 124 22
x5704:	dw string_October# ; 2: -122 22
x5706:	dw string_November# ; 2: -114 22
x5708:	dw string_December# ; 2: -105 22

string_January#:
x5710:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x5718:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x5727:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x5733:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x5739:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x5744:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x5749:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x5756:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x5766:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x5774:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5783:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5792:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5819:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x5846:	dw string_no20error# ; 2: -2 22
x5848:	dw string_function20number20invalid# ; 2: 7 23
x5850:	dw string_file20not20found# ; 2: 31 23
x5852:	dw string_path20not20found# ; 2: 46 23
x5854:	dw string_no20handle20available# ; 2: 61 23
x5856:	dw string_access20denied# ; 2: 81 23
x5858:	dw string_out20of20domain# ; 2: 95 23
x5860:	dw string_out20of20range# ; 2: 109 23
x5862:	dw string_invalid20multibyte20sequence# ; 2: 122 23
x5864:	dw string_error20while20opening# ; 2: -107 23
x5866:	dw string_error20while20flushing# ; 2: -87 23
x5868:	dw string_error20while20closing# ; 2: -66 23
x5870:	dw string_open20mode20invalid# ; 2: -46 23
x5872:	dw string_error20while20writing# ; 2: -28 23
x5874:	dw string_error20while20reading# ; 2: -8 23
x5876:	dw string_error20while20seeking# ; 2: 12 24
x5878:	dw string_error20while20telling# ; 2: 32 24
x5880:	dw string_error20while20sizing# ; 2: 52 24
x5882:	dw string_error20while20removing20file# ; 2: 71 24
x5884:	dw string_error20while20renaming20file# ; 2: 97 24

string_no20error#:
x5886:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x5895:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x5919:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x5934:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x5949:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x5969:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x5983:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x5997:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x6010:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x6037:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x6057:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x6078:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x6098:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x6116:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x6136:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x6156:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x6176:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x6196:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x6215:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x6241:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x6267:	db "C", 0	; 2: 67 0

string_US#:
x6269:	db "US", 0	; 3: 85 83 0

strchr:	; £temporary3135 = int_to_int i (Signed_Int -> Signed_Char)
x6272:	mov ax, [bp + 8]	; 3: -117 70 8
x6275:	cmp ax, 0	; 3: -125 -8 0
x6278:	jge strchr$1	; 2: 125 4
x6280:	neg ax	; 2: -9 -40
x6282:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3135
x6284:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x6287:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3137 = text + index
x6292:	mov si, [bp + 6]	; 3: -117 118 6
x6295:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3136 -> £temporary3137 = *£temporary3137

strchr$5:	; if £temporary3136 -> £temporary3137 == 0 goto 16
x6298:	cmp byte [si], 0	; 3: -128 60 0
x6301:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3141 = text + index
x6303:	mov si, [bp + 6]	; 3: -117 118 6
x6306:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3140 -> £temporary3141 = *£temporary3141

strchr$8:	; if £temporary3140 -> £temporary3141 != c goto 14
x6309:	mov al, [bp + 12]	; 3: -118 70 12
x6312:	cmp [si], al	; 2: 56 4
x6314:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3144 = text + index
x6316:	mov bx, [bp + 6]	; 3: -117 94 6
x6319:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3143 -> £temporary3144 = *£temporary3144

strchr$11:	; £temporary3145 = &£temporary3143 -> £temporary3144

strchr$12:	; return_value = £temporary3145

strchr$13:	; return
x6322:	mov ax, [bp]	; 3: -117 70 0
x6325:	mov di, [bp + 4]	; 3: -117 126 4
x6328:	mov bp, [bp + 2]	; 3: -117 110 2
x6331:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x6333:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x6336:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x6338:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x6341:	mov ax, [bp]	; 3: -117 70 0
x6344:	mov di, [bp + 4]	; 3: -117 126 4
x6347:	mov bp, [bp + 2]	; 3: -117 110 2
x6350:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x6352:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6356:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x6358:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x6362:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 -24 24
x6367:	mov [bp + 24], bp	; 3: -119 110 24
x6370:	add bp, 22	; 3: -125 -59 22
x6373:	jmp printChar	; 3: -23 51 -6

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x6376:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6380:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x6382:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x6386:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 0 25
x6391:	mov [bp + 24], bp	; 3: -119 110 24
x6394:	add bp, 22	; 3: -125 -59 22
x6397:	jmp printChar	; 3: -23 27 -6

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x6400:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x6404:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x6406:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x6411:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x6413:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x6417:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 31 25
x6422:	mov [bp + 24], bp	; 3: -119 110 24
x6425:	add bp, 22	; 3: -125 -59 22
x6428:	jmp printChar	; 3: -23 -4 -7

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x6431:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x6436:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x6438:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x6442:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 56 25
x6447:	mov [bp + 24], bp	; 3: -119 110 24
x6450:	add bp, 22	; 3: -125 -59 22
x6453:	jmp printChar	; 3: -23 -29 -7

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x6456:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x6460:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1853 = 88
x6462:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x6464:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1853 = 120
x6466:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1853, offset 6
x6468:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x6471:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 85 25
x6476:	mov [bp + 24], bp	; 3: -119 110 24
x6479:	add bp, 22	; 3: -125 -59 22
x6482:	jmp printChar	; 3: -23 -58 -7

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x6485:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6490:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x6492:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x6496:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 110 25
x6501:	mov [bp + 24], bp	; 3: -119 110 24
x6504:	add bp, 22	; 3: -125 -59 22
x6507:	jmp printChar	; 3: -23 -83 -7

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x6510:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x6512:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6516:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x6520:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x6524:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x6528:	mov ax, [bp + 20]	; 3: -117 70 20
x6531:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x6534:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -108 25
x6539:	mov [bp + 24], bp	; 3: -119 110 24
x6542:	add bp, 22	; 3: -125 -59 22
x6545:	nop	; 1: -112
x6546:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x6548:	mov ax, [bp]	; 3: -117 70 0
x6551:	mov di, [bp + 4]	; 3: -117 126 4
x6554:	mov bp, [bp + 2]	; 3: -117 110 2
x6557:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x6559:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6564:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1829 = unsignedValue % base
x6566:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6570:	xor edx, edx	; 3: 102 49 -46
x6573:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1830 = int_to_int £temporary1829 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1830
x6577:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1831 = unsignedValue / base
x6580:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6584:	xor edx, edx	; 3: 102 49 -46
x6587:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1831, offset 6
x6591:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x6595:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x6599:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x6603:	mov ax, [bp + 14]	; 3: -117 70 14
x6606:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x6609:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 -33 25
x6614:	mov [bp + 20], bp	; 3: -119 110 20
x6617:	add bp, 18	; 3: -125 -59 18
x6620:	nop	; 1: -112
x6621:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x6623:	mov ax, [bp + 16]	; 3: -117 70 16
x6626:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x6629:	mov ax, [bp + 14]	; 3: -117 70 14
x6632:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x6635:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 -7 25
x6640:	mov [bp + 20], bp	; 3: -119 110 20
x6643:	add bp, 18	; 3: -125 -59 18
x6646:	nop	; 1: -112
x6647:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1833 = return_value

printUnsignedLongRec$17:	; c = £temporary1833
x6649:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x6652:	mov al, [bp + 18]	; 3: -118 70 18
x6655:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x6658:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 16 26
x6663:	mov [bp + 21], bp	; 3: -119 110 21
x6666:	add bp, 19	; 3: -125 -59 19
x6669:	jmp printChar	; 3: -23 11 -7

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x6672:	mov ax, [bp]	; 3: -117 70 0
x6675:	mov di, [bp + 4]	; 3: -117 126 4
x6678:	mov bp, [bp + 2]	; 3: -117 110 2
x6681:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x6683:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x6687:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1819 = digit + 48
x6689:	mov bx, [bp + 6]	; 3: -117 94 6
x6692:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1820 = int_to_int £temporary1819 (Signed_Int -> Signed_Char)
x6695:	cmp bx, 0	; 3: -125 -5 0
x6698:	jge digitToChar$3	; 2: 125 4
x6700:	neg bx	; 2: -9 -37
x6702:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1820

digitToChar$4:	; return
x6704:	mov ax, [bp]	; 3: -117 70 0
x6707:	mov di, [bp + 4]	; 3: -117 126 4
x6710:	mov bp, [bp + 2]	; 3: -117 110 2
x6713:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x6715:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6719:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1821 = digit - 10
x6721:	mov bx, [bp + 6]	; 3: -117 94 6
x6724:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1822 = £temporary1821 + 65
x6727:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1823 = int_to_int £temporary1822 (Signed_Int -> Signed_Char)
x6730:	cmp bx, 0	; 3: -125 -5 0
x6733:	jge digitToChar$9	; 2: 125 4
x6735:	neg bx	; 2: -9 -37
x6737:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1823

digitToChar$10:	; return
x6739:	mov ax, [bp]	; 3: -117 70 0
x6742:	mov di, [bp + 4]	; 3: -117 126 4
x6745:	mov bp, [bp + 2]	; 3: -117 110 2
x6748:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1824 = digit - 10
x6750:	mov bx, [bp + 6]	; 3: -117 94 6
x6753:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1825 = £temporary1824 + 97
x6756:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1826 = int_to_int £temporary1825 (Signed_Int -> Signed_Char)
x6759:	cmp bx, 0	; 3: -125 -5 0
x6762:	jge digitToChar$14	; 2: 125 4
x6764:	neg bx	; 2: -9 -37
x6766:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1826

digitToChar$15:	; return
x6768:	mov ax, [bp]	; 3: -117 70 0
x6771:	mov di, [bp + 4]	; 3: -117 126 4
x6774:	mov bp, [bp + 2]	; 3: -117 110 2
x6777:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x6779:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x6782:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x6784:	fcompp	; 2: -34 -39
x6786:	fstsw ax	; 3: -101 -33 -32
x6789:	sahf	; 1: -98
x6790:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x6792:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x6796:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -102 26
x6801:	mov [bp + 24], bp	; 3: -119 110 24
x6804:	add bp, 22	; 3: -125 -59 22
x6807:	jmp printChar	; 3: -23 -127 -8

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x6810:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1889 = -longDoubleValue
x6813:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x6815:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x6818:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x6823:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x6828:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1890 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x6831:	fistp dword [container4bytes#]	; 4: -37 30 19 27
x6835:	mov eax, [container4bytes#]	; 4: 102 -95 19 27

printLongDoublePlain$14:	; longValue = £temporary1890
x6839:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x6843:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x6847:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x6851:	mov ax, [bp + 14]	; 3: -117 70 14
x6854:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x6857:	mov ax, [bp + 16]	; 3: -117 70 16
x6860:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x6863:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 -35 26
x6868:	mov [bp + 28], bp	; 3: -119 110 28
x6871:	add bp, 26	; 3: -125 -59 26
x6874:	jmp printLongInt	; 3: -23 -86 -9

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x6877:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1892 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x6880:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1893 = longDoubleValue - £temporary1892
x6883:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x6885:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x6888:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x6891:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x6894:	mov ax, [bp + 18]	; 3: -117 70 18
x6897:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x6900:	mov ax, [bp + 20]	; 3: -117 70 20
x6903:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x6906:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 8 27
x6911:	mov [bp + 28], bp	; 3: -119 110 28
x6914:	add bp, 26	; 3: -125 -59 26
x6917:	nop	; 1: -112
x6918:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x6920:	mov ax, [bp]	; 3: -117 70 0
x6923:	mov di, [bp + 4]	; 3: -117 126 4
x6926:	mov bp, [bp + 2]	; 3: -117 110 2
x6929:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x6931:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x6935:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x6938:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1868 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x6941:	fistp dword [container4bytes#]	; 4: -37 30 19 27
x6945:	mov eax, [container4bytes#]	; 4: 102 -95 19 27

printLongDoubleFraction$3:	; £temporary1869 = int_to_float £temporary1868 (Signed_Long_Int -> Long_Double)
x6949:	mov [container4bytes#], eax	; 4: 102 -93 19 27
x6953:	fild dword [container4bytes#]	; 4: -37 6 19 27

printLongDoubleFraction$4:	; £temporary1870 = longDoubleValue - £temporary1869
x6957:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x6959:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x6962:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x6966:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x6968:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x6973:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x6977:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x6979:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x6983:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x6985:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x6989:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 91 27
x6994:	mov [bp + 20], bp	; 3: -119 110 20
x6997:	add bp, 18	; 3: -125 -59 18
x7000:	jmp printChar	; 3: -23 -64 -9

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1876 = precision
x7003:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x7006:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1876 <= 0 goto 35
x7009:	cmp ax, 0	; 3: -125 -8 0
x7012:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x7014:	fld qword [float8$10.0#]	; 4: -35 6 -73 27

printLongDoubleFraction$18:	; push float longDoubleValue
x7018:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1878 = 10.0 * longDoubleValue
x7021:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x7023:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x7026:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1879 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x7029:	fistp word [container2bytes#]	; 4: -33 30 26 18
x7033:	mov ax, [container2bytes#]	; 3: -95 26 18

printLongDoubleFraction$23:	; digitValue = £temporary1879
x7036:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1880 = digitValue + 48
x7039:	mov ax, [bp + 26]	; 3: -117 70 26
x7042:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1881 = int_to_int £temporary1880 (Signed_Int -> Signed_Char)
x7045:	cmp ax, 0	; 3: -125 -8 0
x7048:	jge printLongDoubleFraction$27	; 2: 125 4
x7050:	neg ax	; 2: -9 -40
x7052:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1881, offset 6
x7054:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x7057:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 -97 27
x7062:	mov [bp + 30], bp	; 3: -119 110 30
x7065:	add bp, 28	; 3: -125 -59 28
x7068:	jmp printChar	; 3: -23 124 -9

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x7071:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1883 = int_to_float digitValue (Signed_Int -> Long_Double)
x7074:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1884 = longDoubleValue10 - £temporary1883
x7077:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x7079:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x7082:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x7084:	mov ax, [bp]	; 3: -117 70 0
x7087:	mov di, [bp + 4]	; 3: -117 126 4
x7090:	mov bp, [bp + 2]	; 3: -117 110 2
x7093:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

float8$10.0#:
x7095:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x7103:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x7106:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x7108:	fcompp	; 2: -34 -39
x7110:	fstsw ax	; 3: -101 -33 -32
x7113:	sahf	; 1: -98
x7114:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x7116:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary828 = -x
x7119:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7121:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7123:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary832

fabs$9:	; return
x7126:	mov ax, [bp]	; 3: -117 70 0
x7129:	mov di, [bp + 4]	; 3: -117 126 4
x7132:	mov bp, [bp + 2]	; 3: -117 110 2
x7135:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x7137:	mov ax, [bp + 6]	; 3: -117 70 6
x7140:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x7143:	mov word [bp + 8], tolower$3	; 5: -57 70 8 -11 27
x7148:	mov [bp + 10], bp	; 3: -119 110 10
x7151:	add bp, 8	; 3: -125 -59 8
x7154:	jmp isupper	; 3: -23 -34 -8

tolower$3:	; post call

tolower$4:	; £temporary462 = return_value

tolower$5:	; if £temporary462 == 0 goto 31
x7157:	cmp bx, 0	; 3: -125 -5 0
x7160:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x7162:	mov word [bp + 8], tolower$8	; 5: -57 70 8 8 28
x7167:	mov [bp + 10], bp	; 3: -119 110 10
x7170:	add bp, 8	; 3: -125 -59 8
x7173:	jmp localeconv	; 3: -23 54 -7

tolower$8:	; post call

tolower$9:	; £temporary463 = return_value

tolower$10:	; localeConvPtr = £temporary463
x7176:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x7179:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7183:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary465 -> localeConvPtr = *localeConvPtr, offset 12
x7185:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary465 -> localeConvPtr
x7188:	mov ax, [si + 12]	; 3: -117 68 12
x7191:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary466 -> localeConvPtr = *localeConvPtr, offset 14
x7194:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary466 -> localeConvPtr
x7197:	mov ax, [si + 14]	; 3: -117 68 14
x7200:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x7203:	mov ax, [bp + 12]	; 3: -117 70 12
x7206:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x7209:	mov ax, [bp + 6]	; 3: -117 70 6
x7212:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x7215:	mov word [bp + 14], tolower$20	; 5: -57 70 14 61 28
x7220:	mov [bp + 16], bp	; 3: -119 110 16
x7223:	add bp, 14	; 3: -125 -59 14
x7226:	jmp strchr	; 3: -23 67 -4

tolower$20:	; post call

tolower$21:	; £temporary467 = return_value

tolower$22:	; index = £temporary467 - upperCase
x7229:	sub bx, [bp + 12]	; 3: 43 94 12
x7232:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary470 = lowerCase + index
x7235:	mov si, [bp + 10]	; 3: -117 118 10
x7238:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary469 -> £temporary470 = *£temporary470

tolower$25:	; £temporary471 = int_to_int £temporary469 -> £temporary470 (Signed_Char -> Signed_Int)
x7241:	mov bl, [si]	; 2: -118 28
x7243:	and bx, 255	; 4: -127 -29 -1 0
x7247:	cmp bl, 0	; 3: -128 -5 0
x7250:	jge tolower$26	; 2: 125 4
x7252:	neg bl	; 2: -10 -37
x7254:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary471

tolower$27:	; return
x7256:	mov ax, [bp]	; 3: -117 70 0
x7259:	mov di, [bp + 4]	; 3: -117 126 4
x7262:	mov bp, [bp + 2]	; 3: -117 110 2
x7265:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary472 = c + 32
x7267:	mov bx, [bp + 6]	; 3: -117 94 6
x7270:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary472

tolower$30:	; return
x7273:	mov ax, [bp]	; 3: -117 70 0
x7276:	mov di, [bp + 4]	; 3: -117 126 4
x7279:	mov bp, [bp + 2]	; 3: -117 110 2
x7282:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x7284:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x7287:	mov ax, [bp]	; 3: -117 70 0
x7290:	mov di, [bp + 4]	; 3: -117 126 4
x7293:	mov bp, [bp + 2]	; 3: -117 110 2
x7296:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x7298:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x7301:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x7303:	fcompp	; 2: -34 -39
x7305:	fstsw ax	; 3: -101 -33 -32
x7308:	sahf	; 1: -98
x7309:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x7311:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x7315:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -95 28
x7320:	mov [bp + 26], bp	; 3: -119 110 26
x7323:	add bp, 24	; 3: -125 -59 24
x7326:	jmp printChar	; 3: -23 122 -10

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x7329:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x7331:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x7334:	mov ax, [bp + 20]	; 3: -117 70 20
x7337:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x7340:	mov ax, [bp + 18]	; 3: -117 70 18
x7343:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x7346:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -64 28
x7351:	mov [bp + 26], bp	; 3: -119 110 26
x7354:	add bp, 24	; 3: -125 -59 24
x7357:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x7360:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7364:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1909 = 69
x7366:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x7368:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1909 = 101
x7370:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1909, offset 6
x7372:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x7375:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 -35 28
x7380:	mov [bp + 26], bp	; 3: -119 110 26
x7383:	add bp, 24	; 3: -125 -59 24
x7386:	jmp printChar	; 3: -23 62 -10

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x7389:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x7393:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 -17 28
x7398:	mov [bp + 26], bp	; 3: -119 110 26
x7401:	add bp, 24	; 3: -125 -59 24
x7404:	jmp printChar	; 3: -23 44 -10

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x7407:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x7410:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x7413:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x7415:	fcompp	; 2: -34 -39
x7417:	fstsw ax	; 3: -101 -33 -32
x7420:	sahf	; 1: -98
x7421:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x7423:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x7427:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 17 29
x7432:	mov [bp + 26], bp	; 3: -119 110 26
x7435:	add bp, 24	; 3: -125 -59 24
x7438:	jmp printChar	; 3: -23 10 -10

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x7441:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1914 = -value
x7444:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x7446:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x7449:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x7452:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x7455:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 45 29
x7460:	mov [bp + 26], bp	; 3: -119 110 26
x7463:	add bp, 24	; 3: -125 -59 24
x7466:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1915 = return_value

printLongDoubleExpo$43:	; £temporary1916 = float_to_int £temporary1915 (Double -> Signed_Int)
x7469:	fistp word [container2bytes#]	; 4: -33 30 26 18
x7473:	mov ax, [container2bytes#]	; 3: -95 26 18

printLongDoubleExpo$44:	; expo = £temporary1916
x7476:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x7479:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x7482:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x7485:	fld qword [float8$10.0#]	; 4: -35 6 -73 27

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x7489:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1917 = int_to_float expo (Signed_Int -> Double)
x7492:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1917, offset 14
x7495:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x7498:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 88 29
x7503:	mov [bp + 36], bp	; 3: -119 110 36
x7506:	add bp, 34	; 3: -125 -59 34
x7509:	jmp pow	; 3: -23 -16 1

printLongDoubleExpo$52:	; post call
x7512:	fstp qword [bp + 34]	; 3: -35 94 34
x7515:	fld qword [bp + 26]	; 3: -35 70 26
x7518:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1918 = return_value

printLongDoubleExpo$54:	; £temporary1919 = value / £temporary1918
x7521:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x7523:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x7526:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x7529:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x7532:	mov ax, [bp + 14]	; 3: -117 70 14
x7535:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x7538:	mov ax, [bp + 16]	; 3: -117 70 16
x7541:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x7544:	mov ax, [bp + 18]	; 3: -117 70 18
x7547:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x7550:	mov ax, [bp + 20]	; 3: -117 70 20
x7553:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x7556:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -110 29
x7561:	mov [bp + 28], bp	; 3: -119 110 28
x7564:	add bp, 26	; 3: -125 -59 26
x7567:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x7570:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7574:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1925 = 69
x7576:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x7578:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1925 = 101
x7580:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1925, offset 6
x7582:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x7585:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -81 29
x7590:	mov [bp + 28], bp	; 3: -119 110 28
x7593:	add bp, 26	; 3: -125 -59 26
x7596:	jmp printChar	; 3: -23 108 -11

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1927 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x7599:	mov ax, [bp + 24]	; 3: -117 70 24
x7602:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x7608:	cmp ax, 0	; 3: -125 -8 0
x7611:	jge printLongDoubleExpo$75	; 2: 125 5
x7613:	neg ax	; 2: -9 -40
x7615:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1927, offset 6
x7618:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x7622:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x7627:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x7632:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 -34 29
x7637:	mov [bp + 28], bp	; 3: -119 110 28
x7640:	add bp, 26	; 3: -125 -59 26
x7643:	jmp printLongInt	; 3: -23 -87 -12

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x7646:	mov ax, [bp]	; 3: -117 70 0
x7649:	mov di, [bp + 4]	; 3: -117 126 4
x7652:	mov bp, [bp + 2]	; 3: -117 110 2
x7655:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x7657:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x7660:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x7663:	mov word [bp + 14], log10$4	; 5: -57 70 14 -3 29
x7668:	mov [bp + 16], bp	; 3: -119 110 16
x7671:	add bp, 14	; 3: -125 -59 14
x7674:	nop	; 1: -112
x7675:	jmp log	; 2: -21 25

log10$4:	; post call

log10$5:	; £temporary549 = return_value

log10$6:	; push float 2.3025850929940456840179914
x7677:	fld qword [float8$2.3025850929940456840179914#]	; 4: -35 6 14 30

log10$7:	; £temporary550 = £temporary549 / 2.3025850929940456840179914
x7681:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary550

log10$9:	; return
x7683:	mov ax, [bp]	; 3: -117 70 0
x7686:	mov di, [bp + 4]	; 3: -117 126 4
x7689:	mov bp, [bp + 2]	; 3: -117 110 2
x7692:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.3025850929940456840179914#:
x7694:	dq 2.3025850929940456840179914	; 8: 21 85 -75 -69 -79 107 2 64

log:	; push float x
x7702:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x7705:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x7707:	fcompp	; 2: -34 -39
x7709:	fstsw ax	; 3: -101 -33 -32
x7712:	sahf	; 1: -98
x7713:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x7717:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x7722:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x7725:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x7727:	fcompp	; 2: -34 -39
x7729:	fstsw ax	; 3: -101 -33 -32
x7732:	sahf	; 1: -98
x7733:	jae log$16	; 2: 115 30

log$7:	; push float x
x7735:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x7738:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x7740:	fcompp	; 2: -34 -39
x7742:	fstsw ax	; 3: -101 -33 -32
x7745:	sahf	; 1: -98
x7746:	jae log$28	; 2: 115 64

log$10:	; push float x
x7748:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.7182818284590452353602874
x7751:	fld qword [float8$2.7182818284590452353602874#]	; 4: -35 6 38 31

log$12:	; £temporary531 = x / 2.7182818284590452353602874
x7755:	fdiv	; 2: -34 -7

log$13:	; pop float x
x7757:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x7760:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x7763:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x7765:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3678794411714423215955237798
x7768:	fld qword [float8$0.3678794411714423215955237798#]	; 4: -35 6 46 31

log$18:	; if x >= 0.3678794411714423215955237798 goto 28
x7772:	fcompp	; 2: -34 -39
x7774:	fstsw ax	; 3: -101 -33 -32
x7777:	sahf	; 1: -98
x7778:	jbe log$28	; 2: 118 32

log$19:	; push float x
x7780:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3678794411714423215955237798
x7783:	fld qword [float8$0.3678794411714423215955237798#]	; 4: -35 6 46 31

log$21:	; if x >= 0.3678794411714423215955237798 goto 28
x7787:	fcompp	; 2: -34 -39
x7789:	fstsw ax	; 3: -101 -33 -32
x7792:	sahf	; 1: -98
x7793:	jbe log$28	; 2: 118 17

log$22:	; push float x
x7795:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.7182818284590452353602874
x7798:	fld qword [float8$2.7182818284590452353602874#]	; 4: -35 6 38 31

log$24:	; £temporary535 = x * 2.7182818284590452353602874
x7802:	fmul	; 2: -34 -55

log$25:	; pop float x
x7804:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x7807:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x7810:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x7812:	fld1	; 2: -39 -24

log$29:	; pop float index
x7814:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x7817:	fldz	; 2: -39 -18

log$31:	; pop float sum
x7819:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x7822:	fld1	; 2: -39 -24

log$33:	; pop float sign
x7824:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x7827:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x7830:	fld1	; 2: -39 -24

log$36:	; £temporary537 = x - 1
x7832:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x7834:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x7837:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x7840:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x7843:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x7846:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary538 = sign * power
x7849:	fmul	; 2: -34 -55

log$43:	; push float index
x7851:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x7854:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x7856:	fadd	; 2: -34 -63

log$46:	; top float index
x7858:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x7861:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x7863:	fsub	; 2: -34 -23

log$49:	; £temporary540 = £temporary538 / £temporary539
x7865:	fdiv	; 2: -34 -7

log$50:	; pop float term
x7867:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x7870:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x7873:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary541 = sum + term
x7876:	fadd	; 2: -34 -63

log$54:	; pop float sum
x7878:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x7881:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x7884:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary542 = power * x_minus_1
x7887:	fmul	; 2: -34 -55

log$58:	; pop float power
x7889:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x7892:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x7895:	fld qword [float8$minus1.0#]	; 4: -35 6 54 31

log$61:	; £temporary543 = sign * -1.0
x7899:	fmul	; 2: -34 -55

log$62:	; pop float sign
x7901:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x7904:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x7907:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x7910:	mov word [bp + 64], log$67	; 5: -57 70 64 -12 30
x7915:	mov [bp + 66], bp	; 3: -119 110 66
x7918:	add bp, 64	; 3: -125 -59 64
x7921:	jmp fabs	; 3: -23 -53 -4

log$67:	; post call

log$68:	; £temporary544 = return_value

log$69:	; push float 0.000000001
x7924:	fld qword [float8$0.000000001#]	; 4: -35 6 62 31

log$70:	; if £temporary544 >= 0.000000001 goto 40
x7928:	fcompp	; 2: -34 -39
x7930:	fstsw ax	; 3: -101 -33 -32
x7933:	sahf	; 1: -98
x7934:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x7936:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary546 = int_to_float n (Signed_Int -> Double)
x7939:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary547 = sum + £temporary546
x7942:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary547

log$75:	; return
x7944:	mov ax, [bp]	; 3: -117 70 0
x7947:	mov di, [bp + 4]	; 3: -117 126 4
x7950:	mov bp, [bp + 2]	; 3: -117 110 2
x7953:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x7955:	mov word [errno], 6	; 6: -57 6 70 31 6 0

log$77:	; push 0
x7961:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x7963:	mov ax, [bp]	; 3: -117 70 0
x7966:	mov di, [bp + 4]	; 3: -117 126 4
x7969:	mov bp, [bp + 2]	; 3: -117 110 2
x7972:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.7182818284590452353602874#:
x7974:	dq 2.7182818284590452353602874	; 8: 104 87 20 -117 10 -65 5 64

float8$0.3678794411714423215955237798#:
x7982:	dq 0.3678794411714423215955237798	; 8: 56 -17 44 54 86 -117 -41 63

float8$minus1.0#:
x7990:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x7998:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x8006:	dw 0	; 2: 0 0

pow:	; push float x
x8008:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x8011:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x8013:	fcompp	; 2: -34 -39
x8015:	fstsw ax	; 3: -101 -33 -32
x8018:	sahf	; 1: -98
x8019:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x8021:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x8024:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x8027:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x8030:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x8033:	mov word [bp + 30], pow$9	; 5: -57 70 30 111 31
x8038:	mov [bp + 32], bp	; 3: -119 110 32
x8041:	add bp, 30	; 3: -125 -59 30
x8044:	jmp log	; 3: -23 -89 -2

pow$9:	; post call
x8047:	fstp qword [bp + 30]	; 3: -35 94 30
x8050:	fld qword [bp + 22]	; 3: -35 70 22
x8053:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary553 = return_value

pow$11:	; £temporary554 = y * £temporary553
x8056:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary554, offset 6
x8058:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x8061:	mov word [bp + 22], pow$14	; 5: -57 70 22 -117 31
x8066:	mov [bp + 24], bp	; 3: -119 110 24
x8069:	add bp, 22	; 3: -125 -59 22
x8072:	jmp exp	; 3: -23 102 1

pow$14:	; post call

pow$15:	; £temporary555 = return_value

pow$16:	; return_value = £temporary555

pow$17:	; return
x8075:	mov ax, [bp]	; 3: -117 70 0
x8078:	mov di, [bp + 4]	; 3: -117 126 4
x8081:	mov bp, [bp + 2]	; 3: -117 110 2
x8084:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x8086:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x8089:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x8091:	fcompp	; 2: -34 -39
x8093:	fstsw ax	; 3: -101 -33 -32
x8096:	sahf	; 1: -98
x8097:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x8099:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x8102:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x8104:	fcompp	; 2: -34 -39
x8106:	fstsw ax	; 3: -101 -33 -32
x8109:	sahf	; 1: -98
x8110:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x8112:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x8114:	mov ax, [bp]	; 3: -117 70 0
x8117:	mov di, [bp + 4]	; 3: -117 126 4
x8120:	mov bp, [bp + 2]	; 3: -117 110 2
x8123:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x8125:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x8128:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x8130:	fcompp	; 2: -34 -39
x8132:	fstsw ax	; 3: -101 -33 -32
x8135:	sahf	; 1: -98
x8136:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x8138:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x8141:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x8143:	fcompp	; 2: -34 -39
x8145:	fstsw ax	; 3: -101 -33 -32
x8148:	sahf	; 1: -98
x8149:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x8151:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x8153:	mov ax, [bp]	; 3: -117 70 0
x8156:	mov di, [bp + 4]	; 3: -117 126 4
x8159:	mov bp, [bp + 2]	; 3: -117 110 2
x8162:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x8164:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x8167:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x8169:	fcompp	; 2: -34 -39
x8171:	fstsw ax	; 3: -101 -33 -32
x8174:	sahf	; 1: -98
x8175:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x8179:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x8182:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x8185:	mov word [bp + 22], pow$43	; 5: -57 70 22 7 32
x8190:	mov [bp + 24], bp	; 3: -119 110 24
x8193:	add bp, 22	; 3: -125 -59 22
x8196:	jmp floor	; 3: -23 96 1

pow$43:	; post call

pow$44:	; £temporary563 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x8199:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x8202:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x8205:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x8208:	mov word [bp + 30], pow$49	; 5: -57 70 30 30 32
x8213:	mov [bp + 32], bp	; 3: -119 110 32
x8216:	add bp, 30	; 3: -125 -59 30
x8219:	jmp ceil	; 3: -23 -105 1

pow$49:	; post call
x8222:	fstp qword [bp + 30]	; 3: -35 94 30
x8225:	fld qword [bp + 22]	; 3: -35 70 22
x8228:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary564 = return_value

pow$51:	; if £temporary563 != £temporary564 goto 90
x8231:	fcompp	; 2: -34 -39
x8233:	fstsw ax	; 3: -101 -33 -32
x8236:	sahf	; 1: -98
x8237:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x8241:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary567 = float_to_int y (Double -> Signed_Long_Int)
x8244:	fistp dword [container4bytes#]	; 4: -37 30 19 27
x8248:	mov eax, [container4bytes#]	; 4: 102 -95 19 27

pow$54:	; long_y = £temporary567
x8252:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary568 = long_y % 2
x8256:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x8260:	xor edx, edx	; 3: 102 49 -46
x8263:	idiv dword [int4$2#]	; 5: 102 -9 62 -19 32

pow$56:	; if £temporary568 != 0 goto 73
x8268:	cmp edx, 0	; 4: 102 -125 -6 0
x8272:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x8274:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x8277:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x8280:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary570 = -x
x8283:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary570, offset 6
x8285:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x8288:	mov word [bp + 34], pow$64	; 5: -57 70 34 110 32
x8293:	mov [bp + 36], bp	; 3: -119 110 36
x8296:	add bp, 34	; 3: -125 -59 34
x8299:	jmp log	; 3: -23 -88 -3

pow$64:	; post call
x8302:	fstp qword [bp + 34]	; 3: -35 94 34
x8305:	fld qword [bp + 26]	; 3: -35 70 26
x8308:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary571 = return_value

pow$66:	; £temporary572 = y * £temporary571
x8311:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary572, offset 6
x8313:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x8316:	mov word [bp + 26], pow$69	; 5: -57 70 26 -118 32
x8321:	mov [bp + 28], bp	; 3: -119 110 28
x8324:	add bp, 26	; 3: -125 -59 26
x8327:	nop	; 1: -112
x8328:	jmp exp	; 2: -21 103

pow$69:	; post call

pow$70:	; £temporary573 = return_value

pow$71:	; return_value = £temporary573

pow$72:	; return
x8330:	mov ax, [bp]	; 3: -117 70 0
x8333:	mov di, [bp + 4]	; 3: -117 126 4
x8336:	mov bp, [bp + 2]	; 3: -117 110 2
x8339:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x8341:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x8344:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x8347:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary574 = -x
x8350:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary574, offset 6
x8352:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x8355:	mov word [bp + 34], pow$80	; 5: -57 70 34 -79 32
x8360:	mov [bp + 36], bp	; 3: -119 110 36
x8363:	add bp, 34	; 3: -125 -59 34
x8366:	jmp log	; 3: -23 101 -3

pow$80:	; post call
x8369:	fstp qword [bp + 34]	; 3: -35 94 34
x8372:	fld qword [bp + 26]	; 3: -35 70 26
x8375:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary575 = return_value

pow$82:	; £temporary576 = y * £temporary575
x8378:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary576, offset 6
x8380:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x8383:	mov word [bp + 26], pow$85	; 5: -57 70 26 -51 32
x8388:	mov [bp + 28], bp	; 3: -119 110 28
x8391:	add bp, 26	; 3: -125 -59 26
x8394:	nop	; 1: -112
x8395:	jmp exp	; 2: -21 36

pow$85:	; post call

pow$86:	; £temporary577 = return_value

pow$87:	; £temporary578 = -£temporary577
x8397:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary578

pow$89:	; return
x8399:	mov ax, [bp]	; 3: -117 70 0
x8402:	mov di, [bp + 4]	; 3: -117 126 4
x8405:	mov bp, [bp + 2]	; 3: -117 110 2
x8408:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x8410:	mov word [errno], 6	; 6: -57 6 70 31 6 0

pow$91:	; push 0
x8416:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x8418:	mov ax, [bp]	; 3: -117 70 0
x8421:	mov di, [bp + 4]	; 3: -117 126 4
x8424:	mov bp, [bp + 2]	; 3: -117 110 2
x8427:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x8429:	dd 2	; 4: 2 0 0 0

exp:	; push 1
x8433:	fld1	; 2: -39 -24

exp$1:	; pop float index
x8435:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x8438:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x8440:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x8443:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x8445:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x8448:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x8451:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x8454:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x8457:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary520 = power / faculty
x8460:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x8462:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x8465:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x8468:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary521 = sum + term
x8471:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x8473:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x8476:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x8479:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary522 = power * x
x8482:	fmul	; 2: -34 -55

exp$19:	; pop float power
x8484:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x8487:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x8490:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x8493:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x8495:	fadd	; 2: -34 -63

exp$24:	; top float index
x8497:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary524 = faculty * £temporary523
x8500:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x8502:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x8505:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x8508:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x8511:	mov word [bp + 54], exp$31	; 5: -57 70 54 77 33
x8516:	mov [bp + 56], bp	; 3: -119 110 56
x8519:	add bp, 54	; 3: -125 -59 54
x8522:	jmp fabs	; 3: -23 114 -6

exp$31:	; post call

exp$32:	; £temporary525 = return_value

exp$33:	; push float 0.000000001
x8525:	fld qword [float8$0.000000001#]	; 4: -35 6 62 31

exp$34:	; if £temporary525 >= 0.000000001 goto 8
x8529:	fcompp	; 2: -34 -39
x8531:	fstsw ax	; 3: -101 -33 -32
x8534:	sahf	; 1: -98
x8535:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x8537:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x8540:	mov ax, [bp]	; 3: -117 70 0
x8543:	mov di, [bp + 4]	; 3: -117 126 4
x8546:	mov bp, [bp + 2]	; 3: -117 110 2
x8549:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x8551:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x8554:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x8556:	fcompp	; 2: -34 -39
x8558:	fstsw ax	; 3: -101 -33 -32
x8561:	sahf	; 1: -98
x8562:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x8564:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary804 = -x
x8567:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary804, offset 6
x8569:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x8572:	mov word [bp + 14], floor$8	; 5: -57 70 14 -118 33
x8577:	mov [bp + 16], bp	; 3: -119 110 16
x8580:	add bp, 14	; 3: -125 -59 14
x8583:	nop	; 1: -112
x8584:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary805 = return_value

floor$10:	; £temporary806 = -£temporary805
x8586:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary806

floor$12:	; return
x8588:	mov ax, [bp]	; 3: -117 70 0
x8591:	mov di, [bp + 4]	; 3: -117 126 4
x8594:	mov bp, [bp + 2]	; 3: -117 110 2
x8597:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x8599:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary807 = float_to_int x (Double -> Signed_Long_Int)
x8602:	fistp dword [container4bytes#]	; 4: -37 30 19 27
x8606:	mov eax, [container4bytes#]	; 4: 102 -95 19 27

floor$15:	; £temporary808 = int_to_float £temporary807 (Signed_Long_Int -> Double)
x8610:	mov [container4bytes#], eax	; 4: 102 -93 19 27
x8614:	fild dword [container4bytes#]	; 4: -37 6 19 27

floor$16:	; return_value = £temporary808

floor$17:	; return
x8618:	mov ax, [bp]	; 3: -117 70 0
x8621:	mov di, [bp + 4]	; 3: -117 126 4
x8624:	mov bp, [bp + 2]	; 3: -117 110 2
x8627:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x8629:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x8632:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x8634:	fcompp	; 2: -34 -39
x8636:	fstsw ax	; 3: -101 -33 -32
x8639:	sahf	; 1: -98
x8640:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x8642:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary811 = -x
x8645:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary811, offset 6
x8647:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x8650:	mov word [bp + 14], ceil$8	; 5: -57 70 14 -40 33
x8655:	mov [bp + 16], bp	; 3: -119 110 16
x8658:	add bp, 14	; 3: -125 -59 14
x8661:	nop	; 1: -112
x8662:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary812 = return_value

ceil$10:	; £temporary813 = -£temporary812
x8664:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary813

ceil$12:	; return
x8666:	mov ax, [bp]	; 3: -117 70 0
x8669:	mov di, [bp + 4]	; 3: -117 126 4
x8672:	mov bp, [bp + 2]	; 3: -117 110 2
x8675:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x8677:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x8680:	fld qword [float8$0.999999999999#]	; 4: -35 6 9 34

ceil$15:	; £temporary814 = x + 0.999999999999
x8684:	fadd	; 2: -34 -63

ceil$16:	; £temporary815 = float_to_int £temporary814 (Double -> Signed_Long_Int)
x8686:	fistp dword [container4bytes#]	; 4: -37 30 19 27
x8690:	mov eax, [container4bytes#]	; 4: 102 -95 19 27

ceil$17:	; £temporary816 = int_to_float £temporary815 (Signed_Long_Int -> Double)
x8694:	mov [container4bytes#], eax	; 4: 102 -93 19 27
x8698:	fild dword [container4bytes#]	; 4: -37 6 19 27

ceil$18:	; return_value = £temporary816

ceil$19:	; return
x8702:	mov ax, [bp]	; 3: -117 70 0
x8705:	mov di, [bp + 4]	; 3: -117 126 4
x8708:	mov bp, [bp + 2]	; 3: -117 110 2
x8711:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x8713:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; if c < 48 goto 4
x8721:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x8725:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x8727:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x8731:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary405 = 1
x8733:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x8736:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary405 = 0
x8738:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary405

isdigit$6:	; return
x8741:	mov ax, [bp]	; 3: -117 70 0
x8744:	mov di, [bp + 4]	; 3: -117 126 4
x8747:	mov bp, [bp + 2]	; 3: -117 110 2
x8750:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

mktime:	; if tp == 0 goto 28
x8752:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x8756:	je mktime$28	; 4: 15 -124 -40 0

mktime$1:	; £temporary2615 -> tp = *tp, offset 10
x8760:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; £temporary2616 = £temporary2615 -> tp - 69
x8763:	mov ax, [si + 10]	; 3: -117 68 10
x8766:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; £temporary2617 = £temporary2616 / 4
x8769:	xor dx, dx	; 2: 49 -46
x8771:	idiv word [int2$4#]	; 4: -9 62 33 35

mktime$4:	; £temporary2618 = int_to_int £temporary2617 (Signed_Int -> Signed_Long_Int)
x8775:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8781:	cmp ax, 0	; 3: -125 -8 0
x8784:	jge mktime$5	; 2: 125 5
x8786:	neg ax	; 2: -9 -40
x8788:	neg eax	; 3: 102 -9 -40

mktime$5:	; leapDays = £temporary2618
x8791:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; £temporary2619 -> tp = *tp, offset 10
x8795:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; £temporary2620 = £temporary2619 -> tp - 70
x8798:	mov ax, [si + 10]	; 3: -117 68 10
x8801:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; £temporary2621 = £temporary2620 * 365
x8804:	xor dx, dx	; 2: 49 -46
x8806:	imul word [int2$365#]	; 4: -9 46 35 35

mktime$9:	; £temporary2622 = int_to_int £temporary2621 (Signed_Int -> Signed_Long_Int)
x8810:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8816:	cmp ax, 0	; 3: -125 -8 0
x8819:	jge mktime$10	; 2: 125 5
x8821:	neg ax	; 2: -9 -40
x8823:	neg eax	; 3: 102 -9 -40

mktime$10:	; £temporary2623 = £temporary2622 + leapDays
x8826:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; £temporary2624 -> tp = *tp, offset 14
x8830:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; £temporary2625 = int_to_int £temporary2624 -> tp (Signed_Int -> Signed_Long_Int)
x8833:	mov bx, [si + 14]	; 3: -117 92 14
x8836:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x8843:	cmp bx, 0	; 3: -125 -5 0
x8846:	jge mktime$13	; 2: 125 5
x8848:	neg bx	; 2: -9 -37
x8850:	neg ebx	; 3: 102 -9 -37

mktime$13:	; totalDays = £temporary2623 + £temporary2625
x8853:	add eax, ebx	; 3: 102 1 -40
x8856:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$14:	; £temporary2627 = totalDays * 86400
x8860:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x8864:	xor edx, edx	; 3: 102 49 -46
x8867:	imul dword [int4$86400#]	; 5: 102 -9 46 37 35
x8872:	mov ebx, eax	; 3: 102 -119 -61

mktime$15:	; £temporary2628 -> tp = *tp, offset 4
x8875:	mov si, [bp + 6]	; 3: -117 118 6

mktime$16:	; £temporary2629 = int_to_int £temporary2628 -> tp (Signed_Int -> Signed_Long_Int)
x8878:	mov ax, [si + 4]	; 3: -117 68 4
x8881:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8887:	cmp ax, 0	; 3: -125 -8 0
x8890:	jge mktime$17	; 2: 125 5
x8892:	neg ax	; 2: -9 -40
x8894:	neg eax	; 3: 102 -9 -40

mktime$17:	; £temporary2630 = £temporary2629 * 3600
x8897:	xor edx, edx	; 3: 102 49 -46
x8900:	imul dword [int4$3600#]	; 5: 102 -9 46 41 35

mktime$18:	; £temporary2631 = £temporary2627 + £temporary2630
x8905:	add ebx, eax	; 3: 102 1 -61

mktime$19:	; £temporary2632 -> tp = *tp, offset 2
x8908:	mov si, [bp + 6]	; 3: -117 118 6

mktime$20:	; £temporary2633 = int_to_int £temporary2632 -> tp (Signed_Int -> Signed_Long_Int)
x8911:	mov ax, [si + 2]	; 3: -117 68 2
x8914:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8920:	cmp ax, 0	; 3: -125 -8 0
x8923:	jge mktime$21	; 2: 125 5
x8925:	neg ax	; 2: -9 -40
x8927:	neg eax	; 3: 102 -9 -40

mktime$21:	; £temporary2634 = £temporary2633 * 60
x8930:	xor edx, edx	; 3: 102 49 -46
x8933:	imul dword [int4$60#]	; 5: 102 -9 46 45 35

mktime$22:	; £temporary2635 = £temporary2631 + £temporary2634
x8938:	add ebx, eax	; 3: 102 1 -61

mktime$23:	; £temporary2636 -> tp = *tp
x8941:	mov si, [bp + 6]	; 3: -117 118 6

mktime$24:	; £temporary2637 = int_to_int £temporary2636 -> tp (Signed_Int -> Signed_Long_Int)
x8944:	mov ax, [si]	; 2: -117 4
x8946:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8952:	cmp ax, 0	; 3: -125 -8 0
x8955:	jge mktime$25	; 2: 125 5
x8957:	neg ax	; 2: -9 -40
x8959:	neg eax	; 3: 102 -9 -40

mktime$25:	; £temporary2638 = £temporary2635 + £temporary2637
x8962:	add ebx, eax	; 3: 102 1 -61

mktime$26:	; return_value = £temporary2638

mktime$27:	; return
x8965:	mov ax, [bp]	; 3: -117 70 0
x8968:	mov di, [bp + 4]	; 3: -117 126 4
x8971:	mov bp, [bp + 2]	; 3: -117 110 2
x8974:	jmp ax	; 2: -1 -32

mktime$28:	; return_value = 0
x8976:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$29:	; return
x8982:	mov ax, [bp]	; 3: -117 70 0
x8985:	mov di, [bp + 4]	; 3: -117 126 4
x8988:	mov bp, [bp + 2]	; 3: -117 110 2
x8991:	jmp ax	; 2: -1 -32

mktime$30:	; function end mktime

int2$4#:
x8993:	dw 4	; 2: 4 0

int2$365#:
x8995:	dw 365	; 2: 109 1

int4$86400#:
x8997:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x9001:	dd 3600	; 4: 16 14 0 0

int4$60#:
x9005:	dd 60	; 4: 60 0 0 0

scanf:	; £temporary1699 = &format
x9009:	mov si, bp	; 2: -119 -18
x9011:	add si, 6	; 3: -125 -58 6

scanf$1:	; £temporary1700 = int_to_int £temporary1699 (Pointer -> Pointer)

scanf$2:	; arg_list = £temporary1700 + 2
x9014:	add si, 2	; 3: -125 -58 2
x9017:	mov [di + 8], si	; 3: -119 117 8

scanf$3:	; call header integral zero 0 stack zero 0

scanf$4:	; parameter format, offset 6
x9020:	mov ax, [bp + 6]	; 3: -117 70 6
x9023:	mov [di + 16], ax	; 3: -119 69 16

scanf$5:	; parameter arg_list, offset 8
x9026:	mov ax, [di + 8]	; 3: -117 69 8
x9029:	mov [di + 18], ax	; 3: -119 69 18

scanf$6:	; call function ellipse-noellipse vscanf
x9032:	mov word [di + 10], scanf$7	; 5: -57 69 10 91 35
x9037:	mov [di + 12], bp	; 3: -119 109 12
x9040:	mov [di + 14], di	; 3: -119 125 14
x9043:	add di, 10	; 3: -125 -57 10
x9046:	mov bp, di	; 2: -119 -3
x9048:	nop	; 1: -112
x9049:	jmp vscanf	; 2: -21 11

scanf$7:	; post call

scanf$8:	; £temporary1702 = return_value

scanf$9:	; return_value = £temporary1702

scanf$10:	; return
x9051:	mov ax, [bp]	; 3: -117 70 0
x9054:	mov di, [bp + 4]	; 3: -117 126 4
x9057:	mov bp, [bp + 2]	; 3: -117 110 2
x9060:	jmp ax	; 2: -1 -32

scanf$11:	; function end scanf

vscanf:	; call header integral zero 0 stack zero 0

vscanf$1:	; parameter stdin, offset 6
x9062:	mov ax, [stdin]	; 3: -95 -111 35
x9065:	mov [bp + 16], ax	; 3: -119 70 16

vscanf$2:	; parameter format, offset 8
x9068:	mov ax, [bp + 6]	; 3: -117 70 6
x9071:	mov [bp + 18], ax	; 3: -119 70 18

vscanf$3:	; parameter arg_list, offset 10
x9074:	mov ax, [bp + 8]	; 3: -117 70 8
x9077:	mov [bp + 20], ax	; 3: -119 70 20

vscanf$4:	; call function noellipse-noellipse vfscanf
x9080:	mov word [bp + 10], vscanf$5	; 5: -57 70 10 -122 35
x9085:	mov [bp + 12], bp	; 3: -119 110 12
x9088:	add bp, 10	; 3: -125 -59 10
x9091:	nop	; 1: -112
x9092:	jmp vfscanf	; 2: -21 13

vscanf$5:	; post call

vscanf$6:	; £temporary1706 = return_value

vscanf$7:	; return_value = £temporary1706

vscanf$8:	; return
x9094:	mov ax, [bp]	; 3: -117 70 0
x9097:	mov di, [bp + 4]	; 3: -117 126 4
x9100:	mov bp, [bp + 2]	; 3: -117 110 2
x9103:	jmp ax	; 2: -1 -32

vscanf$9:	; function end vscanf

stdin:
x9105:	dw g_fileArray	; 2: 41 4

vfscanf:	; g_inStatus = 0
x9107:	mov word [g_inStatus], 0	; 6: -57 6 -60 35 0 0

vfscanf$1:	; £temporary1718 = int_to_int inStream (Pointer -> Pointer)
x9113:	mov ax, [bp + 6]	; 3: -117 70 6

vfscanf$2:	; g_inDevice = £temporary1718
x9116:	mov [g_inDevice], ax	; 3: -93 -58 35

vfscanf$3:	; call header integral zero 0 stack zero 0

vfscanf$4:	; parameter format, offset 6
x9119:	mov ax, [bp + 8]	; 3: -117 70 8
x9122:	mov [bp + 18], ax	; 3: -119 70 18

vfscanf$5:	; parameter arg_list, offset 8
x9125:	mov ax, [bp + 10]	; 3: -117 70 10
x9128:	mov [bp + 20], ax	; 3: -119 70 20

vfscanf$6:	; call function noellipse-noellipse scanFormat
x9131:	mov word [bp + 12], vfscanf$7	; 5: -57 70 12 -71 35
x9136:	mov [bp + 14], bp	; 3: -119 110 14
x9139:	add bp, 12	; 3: -125 -59 12
x9142:	nop	; 1: -112
x9143:	jmp scanFormat	; 2: -21 15

vfscanf$7:	; post call

vfscanf$8:	; £temporary1719 = return_value

vfscanf$9:	; return_value = £temporary1719

vfscanf$10:	; return
x9145:	mov ax, [bp]	; 3: -117 70 0
x9148:	mov di, [bp + 4]	; 3: -117 126 4
x9151:	mov bp, [bp + 2]	; 3: -117 110 2
x9154:	jmp ax	; 2: -1 -32

vfscanf$11:	; function end vfscanf

g_inStatus:
x9156:	db 0, 0	; 2: 0 0

g_inDevice:
x9158:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x9160:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x9165:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x9170:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x9175:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x9180:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x9185:	mov word [g_inCount], 0	; 6: -57 6 -22 40 0 0

scanFormat$6:	; g_inChars = 0
x9191:	mov word [g_inChars], 0	; 6: -57 6 -20 40 0 0

scanFormat$7:	; index = 0
x9197:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1509 = format + index
x9202:	mov si, [bp + 6]	; 3: -117 118 6
x9205:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1508 -> £temporary1509 = *£temporary1509

scanFormat$10:	; if £temporary1508 -> £temporary1509 == 0 goto 325
x9208:	cmp byte [si], 0	; 3: -128 60 0
x9211:	je scanFormat$325	; 4: 15 -124 -36 4

scanFormat$11:	; £temporary1513 = format + index
x9215:	mov si, [bp + 6]	; 3: -117 118 6
x9218:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1512 -> £temporary1513 = *£temporary1513

scanFormat$13:	; c = £temporary1512 -> £temporary1513
x9221:	mov al, [si]	; 2: -118 4
x9223:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1514 = int_to_int c (Signed_Char -> Signed_Int)
x9226:	mov al, [bp + 10]	; 3: -118 70 10
x9229:	and ax, 255	; 3: 37 -1 0
x9232:	cmp al, 0	; 2: 60 0
x9234:	jge scanFormat$15	; 2: 125 4
x9236:	neg al	; 2: -10 -40
x9238:	neg ax	; 2: -9 -40

scanFormat$15:	; d = £temporary1514 + 1
x9240:	inc ax	; 1: 64
x9241:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$16:	; if percent == 0 goto 317
x9244:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x9248:	je scanFormat$317	; 4: 15 -124 -110 4

scanFormat$17:	; £temporary1516 = d - 1
x9252:	mov ax, [bp + 55]	; 3: -117 70 55
x9255:	dec ax	; 1: 72

scanFormat$18:	; case £temporary1516 == 104 goto 36
x9256:	cmp ax, 104	; 3: -125 -8 104
x9259:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; case £temporary1516 == 108 goto 38
x9261:	cmp ax, 108	; 3: -125 -8 108
x9264:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; case £temporary1516 == 76 goto 40
x9266:	cmp ax, 76	; 3: -125 -8 76
x9269:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; case £temporary1516 == 42 goto 42
x9271:	cmp ax, 42	; 3: -125 -8 42
x9274:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; case £temporary1516 == 99 goto 44
x9276:	cmp ax, 99	; 3: -125 -8 99
x9279:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; case £temporary1516 == 115 goto 62
x9281:	cmp ax, 115	; 3: -125 -8 115
x9284:	je scanFormat$62	; 4: 15 -124 -72 0

scanFormat$24:	; case £temporary1516 == 100 goto 81
x9288:	cmp ax, 100	; 3: -125 -8 100
x9291:	je scanFormat$81	; 4: 15 -124 1 1

scanFormat$25:	; case £temporary1516 == 105 goto 81
x9295:	cmp ax, 105	; 3: -125 -8 105
x9298:	je scanFormat$81	; 4: 15 -124 -6 0

scanFormat$26:	; case £temporary1516 == 111 goto 116
x9302:	cmp ax, 111	; 3: -125 -8 111
x9305:	je scanFormat$116	; 4: 15 -124 -126 1

scanFormat$27:	; case £temporary1516 == 120 goto 152
x9309:	cmp ax, 120	; 3: -125 -8 120
x9312:	je scanFormat$152	; 4: 15 -124 -4 1

scanFormat$28:	; case £temporary1516 == 117 goto 188
x9316:	cmp ax, 117	; 3: -125 -8 117
x9319:	je scanFormat$188	; 4: 15 -124 118 2

scanFormat$29:	; case £temporary1516 == 103 goto 224
x9323:	cmp ax, 103	; 3: -125 -8 103
x9326:	je scanFormat$224	; 4: 15 -124 -16 2

scanFormat$30:	; case £temporary1516 == 102 goto 224
x9330:	cmp ax, 102	; 3: -125 -8 102
x9333:	je scanFormat$224	; 4: 15 -124 -23 2

scanFormat$31:	; case £temporary1516 == 101 goto 224
x9337:	cmp ax, 101	; 3: -125 -8 101
x9340:	je scanFormat$224	; 4: 15 -124 -30 2

scanFormat$32:	; case £temporary1516 == 91 goto 260
x9344:	cmp ax, 91	; 3: -125 -8 91
x9347:	je scanFormat$260	; 4: 15 -124 79 3

scanFormat$33:	; case £temporary1516 == 110 goto 301
x9351:	cmp ax, 110	; 3: -125 -8 110
x9354:	je scanFormat$301	; 4: 15 -124 -33 3

scanFormat$34:	; case end £temporary1516

scanFormat$35:	; goto 310
x9358:	jmp scanFormat$310	; 3: -23 -6 3

scanFormat$36:	; shortInt = 1
x9361:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$37:	; goto 323
x9366:	jmp scanFormat$323	; 3: -23 60 4

scanFormat$38:	; longIntOrDouble = 1
x9369:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$39:	; goto 323
x9374:	jmp scanFormat$323	; 3: -23 52 4

scanFormat$40:	; longDouble = 1
x9377:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$41:	; goto 323
x9382:	jmp scanFormat$323	; 3: -23 44 4

scanFormat$42:	; star = 1
x9385:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$43:	; goto 323
x9390:	jmp scanFormat$323	; 3: -23 36 4

scanFormat$44:	; call header integral zero 0 stack zero 0

scanFormat$45:	; call function noellipse-noellipse scanChar
x9393:	mov word [bp + 57], scanFormat$46	; 5: -57 70 57 -65 36
x9398:	mov [bp + 59], bp	; 3: -119 110 59
x9401:	add bp, 57	; 3: -125 -59 57
x9404:	jmp scanChar	; 3: -23 68 4

scanFormat$46:	; post call

scanFormat$47:	; £temporary1517 = return_value

scanFormat$48:	; charValue = £temporary1517
x9407:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$49:	; if star != 0 goto 57
x9410:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9414:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; arg_list = arg_list + 2
x9416:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$51:	; £temporary1521 = arg_list - 2
x9420:	mov si, [bp + 8]	; 3: -117 118 8
x9423:	sub si, 2	; 3: -125 -18 2

scanFormat$52:	; £temporary1522 = int_to_int £temporary1521 (Signed_Int -> Pointer)

scanFormat$53:	; £temporary1523 -> £temporary1522 = *£temporary1522

scanFormat$54:	; charPtr = £temporary1523 -> £temporary1522
x9426:	mov ax, [si]	; 2: -117 4
x9428:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$55:	; £temporary1524 -> charPtr = *charPtr
x9431:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$56:	; £temporary1524 -> charPtr = charValue
x9434:	mov al, [bp + 57]	; 3: -118 70 57
x9437:	mov [si], al	; 2: -120 4

scanFormat$57:	; percent = 0
x9439:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$58:	; £temporary1525 = int_to_int charValue (Signed_Char -> Signed_Int)
x9444:	mov al, [bp + 57]	; 3: -118 70 57
x9447:	and ax, 255	; 3: 37 -1 0
x9450:	cmp al, 0	; 2: 60 0
x9452:	jge scanFormat$59	; 2: 125 4
x9454:	neg al	; 2: -10 -40
x9456:	neg ax	; 2: -9 -40

scanFormat$59:	; if £temporary1525 == -1 goto 323
x9458:	cmp ax, -1	; 3: -125 -8 -1
x9461:	je scanFormat$323	; 4: 15 -124 -36 3

scanFormat$60:	; ++g_inCount
x9465:	inc word [g_inCount]	; 4: -1 6 -22 40

scanFormat$61:	; goto 323
x9469:	jmp scanFormat$323	; 3: -23 -43 3

scanFormat$62:	; if star != 0 goto 74
x9472:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9476:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; arg_list = arg_list + 2
x9478:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$64:	; £temporary1531 = arg_list - 2
x9482:	mov si, [bp + 8]	; 3: -117 118 8
x9485:	sub si, 2	; 3: -125 -18 2

scanFormat$65:	; £temporary1532 = int_to_int £temporary1531 (Signed_Int -> Pointer)

scanFormat$66:	; £temporary1533 -> £temporary1532 = *£temporary1532

scanFormat$67:	; charPtr = £temporary1533 -> £temporary1532
x9488:	mov ax, [si]	; 2: -117 4
x9490:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$68:	; call header integral zero 0 stack zero 0

scanFormat$69:	; parameter charPtr, offset 6
x9493:	mov ax, [bp + 11]	; 3: -117 70 11
x9496:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$70:	; parameter 0, offset 8
x9499:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$71:	; call function noellipse-noellipse scanString
x9504:	mov word [bp + 57], scanFormat$72	; 5: -57 70 57 46 37
x9509:	mov [bp + 59], bp	; 3: -119 110 59
x9512:	add bp, 57	; 3: -125 -59 57
x9515:	jmp scanString	; 3: -23 68 4

scanFormat$72:	; post call

scanFormat$73:	; goto 79
x9518:	jmp scanFormat$79	; 2: -21 24

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter 0, offset 6
x9520:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$76:	; parameter 0, offset 8
x9525:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$77:	; call function noellipse-noellipse scanString
x9530:	mov word [bp + 57], scanFormat$78	; 5: -57 70 57 72 37
x9535:	mov [bp + 59], bp	; 3: -119 110 59
x9538:	add bp, 57	; 3: -125 -59 57
x9541:	jmp scanString	; 3: -23 42 4

scanFormat$78:	; post call

scanFormat$79:	; percent = 0
x9544:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$80:	; goto 323
x9549:	jmp scanFormat$323	; 3: -23 -123 3

scanFormat$81:	; call header integral zero 0 stack zero 0

scanFormat$82:	; call function noellipse-noellipse scanLongInt
x9552:	mov word [bp + 57], scanFormat$83	; 5: -57 70 57 94 37
x9557:	mov [bp + 59], bp	; 3: -119 110 59
x9560:	add bp, 57	; 3: -125 -59 57
x9563:	jmp scanLongInt	; 3: -23 -104 6

scanFormat$83:	; post call

scanFormat$84:	; £temporary1536 = return_value

scanFormat$85:	; longValue = £temporary1536
x9566:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$86:	; if star != 0 goto 114
x9570:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9574:	jne scanFormat$114	; 2: 117 111

scanFormat$87:	; if shortInt == 0 goto 97
x9576:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9580:	je scanFormat$97	; 2: 116 37

scanFormat$88:	; arg_list = arg_list + 2
x9582:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$89:	; £temporary1540 = arg_list - 2
x9586:	mov si, [bp + 8]	; 3: -117 118 8
x9589:	sub si, 2	; 3: -125 -18 2

scanFormat$90:	; £temporary1541 = int_to_int £temporary1540 (Signed_Int -> Pointer)

scanFormat$91:	; £temporary1542 -> £temporary1541 = *£temporary1541

scanFormat$92:	; shortPtr = £temporary1542 -> £temporary1541
x9592:	mov ax, [si]	; 2: -117 4
x9594:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$93:	; £temporary1543 -> shortPtr = *shortPtr
x9597:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$94:	; £temporary1544 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x9600:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9604:	cmp eax, 0	; 4: 102 -125 -8 0
x9608:	jge scanFormat$95	; 2: 125 5
x9610:	neg eax	; 3: 102 -9 -40
x9613:	neg al	; 2: -10 -40

scanFormat$95:	; £temporary1543 -> shortPtr = £temporary1544
x9615:	mov [si], al	; 2: -120 4

scanFormat$96:	; goto 114
x9617:	jmp scanFormat$114	; 2: -21 68

scanFormat$97:	; if longIntOrDouble != 0 goto 107
x9619:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9623:	jne scanFormat$107	; 2: 117 37

scanFormat$98:	; arg_list = arg_list + 2
x9625:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$99:	; £temporary1548 = arg_list - 2
x9629:	mov si, [bp + 8]	; 3: -117 118 8
x9632:	sub si, 2	; 3: -125 -18 2

scanFormat$100:	; £temporary1549 = int_to_int £temporary1548 (Signed_Int -> Pointer)

scanFormat$101:	; £temporary1550 -> £temporary1549 = *£temporary1549

scanFormat$102:	; intPtr = £temporary1550 -> £temporary1549
x9635:	mov ax, [si]	; 2: -117 4
x9637:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$103:	; £temporary1551 -> intPtr = *intPtr
x9640:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$104:	; £temporary1552 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x9643:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9647:	cmp eax, 0	; 4: 102 -125 -8 0
x9651:	jge scanFormat$105	; 2: 125 5
x9653:	neg eax	; 3: 102 -9 -40
x9656:	neg ax	; 2: -9 -40

scanFormat$105:	; £temporary1551 -> intPtr = £temporary1552
x9658:	mov [si], ax	; 2: -119 4

scanFormat$106:	; goto 114
x9660:	jmp scanFormat$114	; 2: -21 25

scanFormat$107:	; arg_list = arg_list + 2
x9662:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$108:	; £temporary1554 = arg_list - 2
x9666:	mov si, [bp + 8]	; 3: -117 118 8
x9669:	sub si, 2	; 3: -125 -18 2

scanFormat$109:	; £temporary1555 = int_to_int £temporary1554 (Signed_Int -> Pointer)

scanFormat$110:	; £temporary1556 -> £temporary1555 = *£temporary1555

scanFormat$111:	; longPtr = £temporary1556 -> £temporary1555
x9672:	mov ax, [si]	; 2: -117 4
x9674:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$112:	; £temporary1557 -> longPtr = *longPtr
x9677:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$113:	; £temporary1557 -> longPtr = longValue
x9680:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9684:	mov [si], eax	; 3: 102 -119 4

scanFormat$114:	; percent = 0
x9687:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$115:	; goto 323
x9692:	jmp scanFormat$323	; 3: -23 -10 2

scanFormat$116:	; call header integral zero 0 stack zero 0

scanFormat$117:	; parameter 8, offset 6
x9695:	mov dword [bp + 63], 8	; 8: 102 -57 70 63 8 0 0 0

scanFormat$118:	; call function noellipse-noellipse scanUnsignedLongInt
x9703:	mov word [bp + 57], scanFormat$119	; 5: -57 70 57 -11 37
x9708:	mov [bp + 59], bp	; 3: -119 110 59
x9711:	add bp, 57	; 3: -125 -59 57
x9714:	jmp scanUnsignedLongInt	; 3: -23 88 7

scanFormat$119:	; post call

scanFormat$120:	; £temporary1559 = return_value

scanFormat$121:	; unsignedLongValue = £temporary1559
x9717:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$122:	; if star != 0 goto 150
x9721:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9725:	jne scanFormat$150	; 2: 117 89

scanFormat$123:	; if shortInt == 0 goto 133
x9727:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9731:	je scanFormat$133	; 2: 116 26

scanFormat$124:	; arg_list = arg_list + 2
x9733:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$125:	; £temporary1563 = arg_list - 2
x9737:	mov si, [bp + 8]	; 3: -117 118 8
x9740:	sub si, 2	; 3: -125 -18 2

scanFormat$126:	; £temporary1564 = int_to_int £temporary1563 (Signed_Int -> Pointer)

scanFormat$127:	; £temporary1565 -> £temporary1564 = *£temporary1564

scanFormat$128:	; unsignedShortPtr = £temporary1565 -> £temporary1564
x9743:	mov ax, [si]	; 2: -117 4
x9745:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$129:	; £temporary1566 -> unsignedShortPtr = *unsignedShortPtr
x9748:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$130:	; £temporary1567 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9751:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$131:	; £temporary1566 -> unsignedShortPtr = £temporary1567
x9755:	mov [si], al	; 2: -120 4

scanFormat$132:	; goto 150
x9757:	jmp scanFormat$150	; 2: -21 57

scanFormat$133:	; if longIntOrDouble != 0 goto 143
x9759:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9763:	jne scanFormat$143	; 2: 117 26

scanFormat$134:	; arg_list = arg_list + 2
x9765:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$135:	; £temporary1571 = arg_list - 2
x9769:	mov si, [bp + 8]	; 3: -117 118 8
x9772:	sub si, 2	; 3: -125 -18 2

scanFormat$136:	; £temporary1572 = int_to_int £temporary1571 (Signed_Int -> Pointer)

scanFormat$137:	; £temporary1573 -> £temporary1572 = *£temporary1572

scanFormat$138:	; unsignedIntPtr = £temporary1573 -> £temporary1572
x9775:	mov ax, [si]	; 2: -117 4
x9777:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$139:	; £temporary1574 -> unsignedIntPtr = *unsignedIntPtr
x9780:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$140:	; £temporary1575 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9783:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$141:	; £temporary1574 -> unsignedIntPtr = £temporary1575
x9787:	mov [si], ax	; 2: -119 4

scanFormat$142:	; goto 150
x9789:	jmp scanFormat$150	; 2: -21 25

scanFormat$143:	; arg_list = arg_list + 2
x9791:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$144:	; £temporary1577 = arg_list - 2
x9795:	mov si, [bp + 8]	; 3: -117 118 8
x9798:	sub si, 2	; 3: -125 -18 2

scanFormat$145:	; £temporary1578 = int_to_int £temporary1577 (Signed_Int -> Pointer)

scanFormat$146:	; £temporary1579 -> £temporary1578 = *£temporary1578

scanFormat$147:	; unsignedLongPtr = £temporary1579 -> £temporary1578
x9801:	mov ax, [si]	; 2: -117 4
x9803:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$148:	; £temporary1580 -> unsignedLongPtr = *unsignedLongPtr
x9806:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$149:	; £temporary1580 -> unsignedLongPtr = unsignedLongValue
x9809:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x9813:	mov [si], eax	; 3: 102 -119 4

scanFormat$150:	; percent = 0
x9816:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$151:	; goto 323
x9821:	jmp scanFormat$323	; 3: -23 117 2

scanFormat$152:	; call header integral zero 0 stack zero 0

scanFormat$153:	; parameter 16, offset 6
x9824:	mov dword [bp + 63], 16	; 8: 102 -57 70 63 16 0 0 0

scanFormat$154:	; call function noellipse-noellipse scanUnsignedLongInt
x9832:	mov word [bp + 57], scanFormat$155	; 5: -57 70 57 118 38
x9837:	mov [bp + 59], bp	; 3: -119 110 59
x9840:	add bp, 57	; 3: -125 -59 57
x9843:	jmp scanUnsignedLongInt	; 3: -23 -41 6

scanFormat$155:	; post call

scanFormat$156:	; £temporary1582 = return_value

scanFormat$157:	; unsignedLongValue = £temporary1582
x9846:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$158:	; if star != 0 goto 186
x9850:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9854:	jne scanFormat$186	; 2: 117 89

scanFormat$159:	; if shortInt == 0 goto 169
x9856:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9860:	je scanFormat$169	; 2: 116 26

scanFormat$160:	; arg_list = arg_list + 2
x9862:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$161:	; £temporary1586 = arg_list - 2
x9866:	mov si, [bp + 8]	; 3: -117 118 8
x9869:	sub si, 2	; 3: -125 -18 2

scanFormat$162:	; £temporary1587 = int_to_int £temporary1586 (Signed_Int -> Pointer)

scanFormat$163:	; £temporary1588 -> £temporary1587 = *£temporary1587

scanFormat$164:	; unsignedShortPtr = £temporary1588 -> £temporary1587
x9872:	mov ax, [si]	; 2: -117 4
x9874:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$165:	; £temporary1589 -> unsignedShortPtr = *unsignedShortPtr
x9877:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$166:	; £temporary1590 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9880:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$167:	; £temporary1589 -> unsignedShortPtr = £temporary1590
x9884:	mov [si], al	; 2: -120 4

scanFormat$168:	; goto 186
x9886:	jmp scanFormat$186	; 2: -21 57

scanFormat$169:	; if longIntOrDouble != 0 goto 179
x9888:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9892:	jne scanFormat$179	; 2: 117 26

scanFormat$170:	; arg_list = arg_list + 2
x9894:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$171:	; £temporary1594 = arg_list - 2
x9898:	mov si, [bp + 8]	; 3: -117 118 8
x9901:	sub si, 2	; 3: -125 -18 2

scanFormat$172:	; £temporary1595 = int_to_int £temporary1594 (Signed_Int -> Pointer)

scanFormat$173:	; £temporary1596 -> £temporary1595 = *£temporary1595

scanFormat$174:	; unsignedIntPtr = £temporary1596 -> £temporary1595
x9904:	mov ax, [si]	; 2: -117 4
x9906:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$175:	; £temporary1597 -> unsignedIntPtr = *unsignedIntPtr
x9909:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$176:	; £temporary1598 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9912:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$177:	; £temporary1597 -> unsignedIntPtr = £temporary1598
x9916:	mov [si], ax	; 2: -119 4

scanFormat$178:	; goto 186
x9918:	jmp scanFormat$186	; 2: -21 25

scanFormat$179:	; arg_list = arg_list + 2
x9920:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$180:	; £temporary1600 = arg_list - 2
x9924:	mov si, [bp + 8]	; 3: -117 118 8
x9927:	sub si, 2	; 3: -125 -18 2

scanFormat$181:	; £temporary1601 = int_to_int £temporary1600 (Signed_Int -> Pointer)

scanFormat$182:	; £temporary1602 -> £temporary1601 = *£temporary1601

scanFormat$183:	; unsignedLongPtr = £temporary1602 -> £temporary1601
x9930:	mov ax, [si]	; 2: -117 4
x9932:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$184:	; £temporary1603 -> unsignedLongPtr = *unsignedLongPtr
x9935:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$185:	; £temporary1603 -> unsignedLongPtr = unsignedLongValue
x9938:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x9942:	mov [si], eax	; 3: 102 -119 4

scanFormat$186:	; percent = 0
x9945:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$187:	; goto 323
x9950:	jmp scanFormat$323	; 3: -23 -12 1

scanFormat$188:	; call header integral zero 0 stack zero 0

scanFormat$189:	; parameter 0, offset 6
x9953:	mov dword [bp + 63], 0	; 8: 102 -57 70 63 0 0 0 0

scanFormat$190:	; call function noellipse-noellipse scanUnsignedLongInt
x9961:	mov word [bp + 57], scanFormat$191	; 5: -57 70 57 -9 38
x9966:	mov [bp + 59], bp	; 3: -119 110 59
x9969:	add bp, 57	; 3: -125 -59 57
x9972:	jmp scanUnsignedLongInt	; 3: -23 86 6

scanFormat$191:	; post call

scanFormat$192:	; £temporary1605 = return_value

scanFormat$193:	; unsignedLongValue = £temporary1605
x9975:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$194:	; if star != 0 goto 222
x9979:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9983:	jne scanFormat$222	; 2: 117 89

scanFormat$195:	; if shortInt == 0 goto 205
x9985:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9989:	je scanFormat$205	; 2: 116 26

scanFormat$196:	; arg_list = arg_list + 2
x9991:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$197:	; £temporary1609 = arg_list - 2
x9995:	mov si, [bp + 8]	; 3: -117 118 8
x9998:	sub si, 2	; 3: -125 -18 2

scanFormat$198:	; £temporary1610 = int_to_int £temporary1609 (Signed_Int -> Pointer)

scanFormat$199:	; £temporary1611 -> £temporary1610 = *£temporary1610

scanFormat$200:	; unsignedShortPtr = £temporary1611 -> £temporary1610
x10001:	mov ax, [si]	; 2: -117 4
x10003:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$201:	; £temporary1612 -> unsignedShortPtr = *unsignedShortPtr
x10006:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$202:	; £temporary1613 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10009:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$203:	; £temporary1612 -> unsignedShortPtr = £temporary1613
x10013:	mov [si], al	; 2: -120 4

scanFormat$204:	; goto 222
x10015:	jmp scanFormat$222	; 2: -21 57

scanFormat$205:	; if longIntOrDouble != 0 goto 215
x10017:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10021:	jne scanFormat$215	; 2: 117 26

scanFormat$206:	; arg_list = arg_list + 2
x10023:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$207:	; £temporary1617 = arg_list - 2
x10027:	mov si, [bp + 8]	; 3: -117 118 8
x10030:	sub si, 2	; 3: -125 -18 2

scanFormat$208:	; £temporary1618 = int_to_int £temporary1617 (Signed_Int -> Pointer)

scanFormat$209:	; £temporary1619 -> £temporary1618 = *£temporary1618

scanFormat$210:	; unsignedIntPtr = £temporary1619 -> £temporary1618
x10033:	mov ax, [si]	; 2: -117 4
x10035:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$211:	; £temporary1620 -> unsignedIntPtr = *unsignedIntPtr
x10038:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$212:	; £temporary1621 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10041:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$213:	; £temporary1620 -> unsignedIntPtr = £temporary1621
x10045:	mov [si], ax	; 2: -119 4

scanFormat$214:	; goto 222
x10047:	jmp scanFormat$222	; 2: -21 25

scanFormat$215:	; arg_list = arg_list + 2
x10049:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$216:	; £temporary1623 = arg_list - 2
x10053:	mov si, [bp + 8]	; 3: -117 118 8
x10056:	sub si, 2	; 3: -125 -18 2

scanFormat$217:	; £temporary1624 = int_to_int £temporary1623 (Signed_Int -> Pointer)

scanFormat$218:	; £temporary1625 -> £temporary1624 = *£temporary1624

scanFormat$219:	; unsignedLongPtr = £temporary1625 -> £temporary1624
x10059:	mov ax, [si]	; 2: -117 4
x10061:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$220:	; £temporary1626 -> unsignedLongPtr = *unsignedLongPtr
x10064:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$221:	; £temporary1626 -> unsignedLongPtr = unsignedLongValue
x10067:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10071:	mov [si], eax	; 3: 102 -119 4

scanFormat$222:	; percent = 0
x10074:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$223:	; goto 323
x10079:	jmp scanFormat$323	; 3: -23 115 1

scanFormat$224:	; call header integral zero 0 stack zero 0

scanFormat$225:	; call function noellipse-noellipse scanLongDouble
x10082:	mov word [bp + 57], scanFormat$226	; 5: -57 70 57 112 39
x10087:	mov [bp + 59], bp	; 3: -119 110 59
x10090:	add bp, 57	; 3: -125 -59 57
x10093:	jmp scanLongDouble	; 3: -23 -94 8

scanFormat$226:	; post call

scanFormat$227:	; £temporary1628 = return_value

scanFormat$228:	; pop float longDoubleValue
x10096:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$229:	; if star != 0 goto 258
x10099:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10103:	jne scanFormat$258	; 2: 117 85

scanFormat$230:	; if longIntOrDouble == 0 goto 240
x10105:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10109:	je scanFormat$240	; 2: 116 25

scanFormat$231:	; arg_list = arg_list + 2
x10111:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$232:	; £temporary1632 = arg_list - 2
x10115:	mov si, [bp + 8]	; 3: -117 118 8
x10118:	sub si, 2	; 3: -125 -18 2

scanFormat$233:	; £temporary1633 = int_to_int £temporary1632 (Signed_Int -> Pointer)

scanFormat$234:	; £temporary1634 -> £temporary1633 = *£temporary1633

scanFormat$235:	; doublePtr = £temporary1634 -> £temporary1633
x10121:	mov ax, [si]	; 2: -117 4
x10123:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$236:	; £temporary1635 -> doublePtr = *doublePtr
x10126:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$237:	; push float longDoubleValue
x10129:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$238:	; pop float £temporary1635 -> doublePtr
x10132:	fstp qword [si]	; 2: -35 28

scanFormat$239:	; goto 258
x10134:	jmp scanFormat$258	; 2: -21 54

scanFormat$240:	; if longDouble == 0 goto 250
x10136:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x10140:	je scanFormat$250	; 2: 116 25

scanFormat$241:	; arg_list = arg_list + 2
x10142:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$242:	; £temporary1638 = arg_list - 2
x10146:	mov si, [bp + 8]	; 3: -117 118 8
x10149:	sub si, 2	; 3: -125 -18 2

scanFormat$243:	; £temporary1639 = int_to_int £temporary1638 (Signed_Int -> Pointer)

scanFormat$244:	; £temporary1640 -> £temporary1639 = *£temporary1639

scanFormat$245:	; longDoublePtr = £temporary1640 -> £temporary1639
x10152:	mov ax, [si]	; 2: -117 4
x10154:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$246:	; £temporary1641 -> longDoublePtr = *longDoublePtr
x10157:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$247:	; push float longDoubleValue
x10160:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$248:	; pop float £temporary1641 -> longDoublePtr
x10163:	fstp qword [si]	; 2: -35 28

scanFormat$249:	; goto 258
x10165:	jmp scanFormat$258	; 2: -21 23

scanFormat$250:	; arg_list = arg_list + 2
x10167:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$251:	; £temporary1643 = arg_list - 2
x10171:	mov si, [bp + 8]	; 3: -117 118 8
x10174:	sub si, 2	; 3: -125 -18 2

scanFormat$252:	; £temporary1644 = int_to_int £temporary1643 (Signed_Int -> Pointer)

scanFormat$253:	; £temporary1645 -> £temporary1644 = *£temporary1644

scanFormat$254:	; floatPtr = £temporary1645 -> £temporary1644
x10177:	mov ax, [si]	; 2: -117 4
x10179:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$255:	; £temporary1646 -> floatPtr = *floatPtr
x10182:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$256:	; push float longDoubleValue
x10185:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$257:	; pop float £temporary1646 -> floatPtr
x10188:	fstp dword [si]	; 2: -39 28

scanFormat$258:	; percent = 0
x10190:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$259:	; goto 323
x10195:	jmp scanFormat$323	; 3: -23 -1 0

scanFormat$260:	; not = 0
x10198:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$261:	; ++index
x10203:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$262:	; £temporary1652 = format + index
x10206:	mov si, [bp + 6]	; 3: -117 118 6
x10209:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$263:	; £temporary1651 -> £temporary1652 = *£temporary1652

scanFormat$264:	; if £temporary1651 -> £temporary1652 != 94 goto 267
x10212:	cmp byte [si], 94	; 3: -128 60 94
x10215:	jne scanFormat$267	; 2: 117 12

scanFormat$265:	; not = 1
x10217:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$266:	; startIndex = index + 1
x10222:	mov ax, [bp + 31]	; 3: -117 70 31
x10225:	inc ax	; 1: 64
x10226:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$267:	; £temporary1656 = format + index
x10229:	mov si, [bp + 6]	; 3: -117 118 6
x10232:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$268:	; £temporary1655 -> £temporary1656 = *£temporary1656

scanFormat$269:	; if £temporary1655 -> £temporary1656 == 93 goto 272
x10235:	cmp byte [si], 93	; 3: -128 60 93
x10238:	je scanFormat$272	; 2: 116 5

scanFormat$270:	; ++index
x10240:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$271:	; goto 267
x10243:	jmp scanFormat$267	; 2: -21 -16

scanFormat$272:	; £temporary1660 = format + index
x10245:	mov si, [bp + 6]	; 3: -117 118 6
x10248:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$273:	; £temporary1659 -> £temporary1660 = *£temporary1660

scanFormat$274:	; £temporary1659 -> £temporary1660 = 0
x10251:	mov byte [si], 0	; 3: -58 4 0

scanFormat$275:	; if star != 0 goto 291
x10254:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10258:	jne scanFormat$291	; 2: 117 53

scanFormat$276:	; arg_list = arg_list + 2
x10260:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$277:	; £temporary1664 = arg_list - 2
x10264:	mov si, [bp + 8]	; 3: -117 118 8
x10267:	sub si, 2	; 3: -125 -18 2

scanFormat$278:	; £temporary1665 = int_to_int £temporary1664 (Signed_Int -> Pointer)

scanFormat$279:	; £temporary1666 -> £temporary1665 = *£temporary1665

scanFormat$280:	; string = £temporary1666 -> £temporary1665
x10270:	mov ax, [si]	; 2: -117 4
x10272:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$281:	; call header integral zero 0 stack zero 0

scanFormat$282:	; parameter string, offset 6
x10275:	mov ax, [bp + 61]	; 3: -117 70 61
x10278:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$283:	; £temporary1668 = format + startIndex
x10281:	mov si, [bp + 6]	; 3: -117 118 6
x10284:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$284:	; £temporary1667 -> £temporary1668 = *£temporary1668

scanFormat$285:	; £temporary1669 = &£temporary1667 -> £temporary1668

scanFormat$286:	; parameter £temporary1669, offset 8
x10287:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$287:	; parameter not, offset 10
x10290:	mov ax, [bp + 57]	; 3: -117 70 57
x10293:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$288:	; call function noellipse-noellipse scanPattern
x10296:	mov word [bp + 63], scanFormat$289	; 5: -57 70 63 70 40
x10301:	mov [bp + 65], bp	; 3: -119 110 65
x10304:	add bp, 63	; 3: -125 -59 63
x10307:	jmp scanPattern	; 3: -23 -2 9

scanFormat$289:	; post call

scanFormat$290:	; goto 323
x10310:	jmp scanFormat$323	; 3: -23 -116 0

scanFormat$291:	; call header integral zero 0 stack zero 0

scanFormat$292:	; parameter 0, offset 6
x10313:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$293:	; £temporary1672 = format + startIndex
x10318:	mov si, [bp + 6]	; 3: -117 118 6
x10321:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$294:	; £temporary1671 -> £temporary1672 = *£temporary1672

scanFormat$295:	; £temporary1673 = &£temporary1671 -> £temporary1672

scanFormat$296:	; parameter £temporary1673, offset 8
x10324:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$297:	; parameter not, offset 10
x10327:	mov ax, [bp + 57]	; 3: -117 70 57
x10330:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$298:	; call function noellipse-noellipse scanPattern
x10333:	mov word [bp + 61], scanFormat$299	; 5: -57 70 61 107 40
x10338:	mov [bp + 63], bp	; 3: -119 110 63
x10341:	add bp, 61	; 3: -125 -59 61
x10344:	jmp scanPattern	; 3: -23 -39 9

scanFormat$299:	; post call

scanFormat$300:	; goto 323
x10347:	jmp scanFormat$323	; 2: -21 104

scanFormat$301:	; arg_list = arg_list + 2
x10349:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$302:	; £temporary1676 = arg_list - 2
x10353:	mov si, [bp + 8]	; 3: -117 118 8
x10356:	sub si, 2	; 3: -125 -18 2

scanFormat$303:	; £temporary1677 = int_to_int £temporary1676 (Signed_Int -> Pointer)

scanFormat$304:	; £temporary1678 -> £temporary1677 = *£temporary1677

scanFormat$305:	; charsPtr = £temporary1678 -> £temporary1677
x10359:	mov ax, [si]	; 2: -117 4
x10361:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$306:	; £temporary1679 -> charsPtr = *charsPtr
x10364:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$307:	; £temporary1679 -> charsPtr = g_inChars
x10367:	mov ax, [g_inChars]	; 3: -95 -20 40
x10370:	mov [si], ax	; 2: -119 4

scanFormat$308:	; percent = 0
x10372:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$309:	; goto 323
x10377:	jmp scanFormat$323	; 2: -21 74

scanFormat$310:	; call header integral zero 0 stack zero 0

scanFormat$311:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x10379:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 -18 40

scanFormat$312:	; £temporary1680 = int_to_int c (Signed_Char -> Signed_Int)
x10384:	mov al, [bp + 10]	; 3: -118 70 10
x10387:	and ax, 255	; 3: 37 -1 0
x10390:	cmp al, 0	; 2: 60 0
x10392:	jge scanFormat$313	; 2: 125 4
x10394:	neg al	; 2: -10 -40
x10396:	neg ax	; 2: -9 -40

scanFormat$313:	; parameter £temporary1680, offset 8
x10398:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$314:	; call function noellipse-ellipse printf, extra 0
x10401:	mov word [bp + 57], scanFormat$315	; 5: -57 70 57 -76 40
x10406:	mov [bp + 59], bp	; 3: -119 110 59
x10409:	add bp, 57	; 3: -125 -59 57
x10412:	mov di, bp	; 2: -119 -17
x10414:	add di, 2	; 3: -125 -57 2
x10417:	jmp printf	; 3: -23 19 -37

scanFormat$315:	; post call

scanFormat$316:	; goto 323
x10420:	jmp scanFormat$323	; 2: -21 31

scanFormat$317:	; if c != 37 goto 323
x10422:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x10426:	jne scanFormat$323	; 2: 117 25

scanFormat$318:	; percent = 1
x10428:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$319:	; shortInt = 0
x10433:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$320:	; longIntOrDouble = 0
x10438:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$321:	; longDouble = 0
x10443:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$322:	; star = 0
x10448:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$323:	; ++index
x10453:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$324:	; goto 8
x10456:	jmp scanFormat$8	; 3: -23 23 -5

scanFormat$325:	; return_value = g_inCount
x10459:	mov bx, [g_inCount]	; 4: -117 30 -22 40

scanFormat$326:	; return
x10463:	mov ax, [bp]	; 3: -117 70 0
x10466:	mov di, [bp + 4]	; 3: -117 126 4
x10469:	mov bp, [bp + 2]	; 3: -117 110 2
x10472:	jmp ax	; 2: -1 -32

scanFormat$327:	; function end scanFormat

g_inCount:
x10474:	db 0, 0	; 2: 0 0

g_inChars:
x10476:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x10478:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x10499:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x10503:	mov ax, [g_inStatus]	; 3: -95 -60 35
x10506:	cmp ax, 0	; 3: -125 -8 0
x10509:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x10511:	cmp ax, 1	; 3: -125 -8 1
x10514:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x10516:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1234 = int_to_int g_inDevice (Pointer -> Pointer)
x10518:	mov ax, [g_inDevice]	; 3: -95 -58 35

scanChar$6:	; stream = £temporary1234
x10521:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1235 -> stream = *stream, offset 2
x10524:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1235 -> stream
x10527:	mov ax, [si + 2]	; 3: -117 68 2
x10530:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x10533:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x10535:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x10538:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1240 = &c
x10541:	mov dx, bp	; 2: -119 -22
x10543:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1240

scanChar$14:	; interrupt 33
x10546:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x10548:	inc word [g_inChars]	; 4: -1 6 -20 40

scanChar$16:	; return_value = c
x10552:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x10555:	mov ax, [bp]	; 3: -117 70 0
x10558:	mov di, [bp + 4]	; 3: -117 126 4
x10561:	mov bp, [bp + 2]	; 3: -117 110 2
x10564:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1242 = int_to_int g_inDevice (Pointer -> Pointer)
x10566:	mov ax, [g_inDevice]	; 3: -95 -58 35

scanChar$19:	; inString = £temporary1242
x10569:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1243 = g_inChars
x10572:	mov ax, [g_inChars]	; 3: -95 -20 40

scanChar$21:	; ++g_inChars
x10575:	inc word [g_inChars]	; 4: -1 6 -20 40

scanChar$22:	; £temporary1245 = inString + £temporary1243
x10579:	mov si, [bp + 11]	; 3: -117 118 11
x10582:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1244 -> £temporary1245 = *£temporary1245

scanChar$24:	; return_value = £temporary1244 -> £temporary1245
x10584:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x10586:	mov ax, [bp]	; 3: -117 70 0
x10589:	mov di, [bp + 4]	; 3: -117 126 4
x10592:	mov bp, [bp + 2]	; 3: -117 110 2
x10595:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x10597:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x10599:	mov ax, [bp]	; 3: -117 70 0
x10602:	mov di, [bp + 4]	; 3: -117 126 4
x10605:	mov bp, [bp + 2]	; 3: -117 110 2
x10608:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x10610:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x10615:	mov word [bp + 12], scanString$3	; 5: -57 70 12 -123 41
x10620:	mov [bp + 14], bp	; 3: -119 110 14
x10623:	add bp, 12	; 3: -125 -59 12
x10626:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1297 = return_value

scanString$5:	; input = £temporary1297
x10629:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x10632:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1298 = int_to_int input (Signed_Char -> Signed_Int)
x10637:	mov al, [bp + 12]	; 3: -118 70 12
x10640:	and ax, 255	; 3: 37 -1 0
x10643:	cmp al, 0	; 2: 60 0
x10645:	jge scanString$9	; 2: 125 4
x10647:	neg al	; 2: -10 -40
x10649:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1298, offset 6
x10651:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x10654:	mov word [bp + 15], scanString$11	; 5: -57 70 15 -84 41
x10659:	mov [bp + 17], bp	; 3: -119 110 17
x10662:	add bp, 15	; 3: -125 -59 15
x10665:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1299 = return_value

scanString$13:	; if £temporary1299 == 0 goto 20
x10668:	cmp bx, 0	; 3: -125 -5 0
x10671:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x10673:	mov word [bp + 15], scanString$16	; 5: -57 70 15 -65 41
x10678:	mov [bp + 17], bp	; 3: -119 110 17
x10681:	add bp, 15	; 3: -125 -59 15
x10684:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1300 = return_value

scanString$18:	; input = £temporary1300
x10687:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x10690:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x10692:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x10696:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x10700:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10704:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1304 = int_to_int input (Signed_Char -> Signed_Int)
x10706:	mov al, [bp + 12]	; 3: -118 70 12
x10709:	and ax, 255	; 3: 37 -1 0
x10712:	cmp al, 0	; 2: 60 0
x10714:	jge scanString$24	; 2: 125 4
x10716:	neg al	; 2: -10 -40
x10718:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1304, offset 6
x10720:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x10723:	mov word [bp + 15], scanString$26	; 5: -57 70 15 -15 41
x10728:	mov [bp + 17], bp	; 3: -119 110 17
x10731:	add bp, 15	; 3: -125 -59 15
x10734:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1305 = return_value

scanString$28:	; if £temporary1305 != 0 goto 45
x10737:	cmp bx, 0	; 3: -125 -5 0
x10740:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1308 = int_to_int input (Signed_Char -> Signed_Int)
x10742:	mov al, [bp + 12]	; 3: -118 70 12
x10745:	and ax, 255	; 3: 37 -1 0
x10748:	cmp al, 0	; 2: 60 0
x10750:	jge scanString$30	; 2: 125 4
x10752:	neg al	; 2: -10 -40
x10754:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1308 == -1 goto 45
x10756:	cmp ax, -1	; 3: -125 -8 -1
x10759:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x10761:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10765:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1313 = index
x10767:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x10770:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1315 = string + £temporary1313
x10773:	mov si, [bp + 6]	; 3: -117 118 6
x10776:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1314 -> £temporary1315 = *£temporary1315

scanString$36:	; £temporary1314 -> £temporary1315 = input
x10778:	mov al, [bp + 12]	; 3: -118 70 12
x10781:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x10783:	mov word [bp + 15], scanString$39	; 5: -57 70 15 45 42
x10788:	mov [bp + 17], bp	; 3: -119 110 17
x10791:	add bp, 15	; 3: -125 -59 15
x10794:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1316 = return_value

scanString$41:	; input = £temporary1316
x10797:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x10800:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x10805:	inc word [g_inChars]	; 4: -1 6 -20 40

scanString$44:	; goto 22
x10809:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1319 = string + index
x10811:	mov si, [bp + 6]	; 3: -117 118 6
x10814:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1318 -> £temporary1319 = *£temporary1319

scanString$47:	; £temporary1318 -> £temporary1319 = 0
x10817:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x10820:	inc word [g_inChars]	; 4: -1 6 -20 40

scanString$49:	; goto 126
x10824:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1321 = precision
x10827:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x10830:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1321 <= 0 goto 76
x10833:	cmp ax, 0	; 3: -125 -8 0
x10836:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1323 = int_to_int input (Signed_Char -> Signed_Int)
x10838:	mov al, [bp + 12]	; 3: -118 70 12
x10841:	and ax, 255	; 3: 37 -1 0
x10844:	cmp al, 0	; 2: 60 0
x10846:	jge scanString$55	; 2: 125 4
x10848:	neg al	; 2: -10 -40
x10850:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1323, offset 6
x10852:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x10855:	mov word [bp + 15], scanString$57	; 5: -57 70 15 117 42
x10860:	mov [bp + 17], bp	; 3: -119 110 17
x10863:	add bp, 15	; 3: -125 -59 15
x10866:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1324 = return_value

scanString$59:	; if £temporary1324 != 0 goto 76
x10869:	cmp bx, 0	; 3: -125 -5 0
x10872:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1327 = int_to_int input (Signed_Char -> Signed_Int)
x10874:	mov al, [bp + 12]	; 3: -118 70 12
x10877:	and ax, 255	; 3: 37 -1 0
x10880:	cmp al, 0	; 2: 60 0
x10882:	jge scanString$61	; 2: 125 4
x10884:	neg al	; 2: -10 -40
x10886:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1327 == -1 goto 76
x10888:	cmp ax, -1	; 3: -125 -8 -1
x10891:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x10893:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10897:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1333 = index
x10899:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x10902:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1335 = string + £temporary1333
x10905:	mov si, [bp + 6]	; 3: -117 118 6
x10908:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1334 -> £temporary1335 = *£temporary1335

scanString$67:	; £temporary1334 -> £temporary1335 = input
x10910:	mov al, [bp + 12]	; 3: -118 70 12
x10913:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x10915:	mov word [bp + 15], scanString$70	; 5: -57 70 15 -79 42
x10920:	mov [bp + 17], bp	; 3: -119 110 17
x10923:	add bp, 15	; 3: -125 -59 15
x10926:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1336 = return_value

scanString$72:	; input = £temporary1336
x10929:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x10932:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x10937:	inc word [g_inChars]	; 4: -1 6 -20 40

scanString$75:	; goto 50
x10941:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x10943:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10947:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1340 = string + index
x10951:	mov si, [bp + 6]	; 3: -117 118 6
x10954:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1339 -> £temporary1340 = *£temporary1340

scanString$79:	; £temporary1339 -> £temporary1340 = 0
x10957:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x10960:	inc word [g_inChars]	; 4: -1 6 -20 40

scanString$81:	; goto 126
x10964:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x10967:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10971:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1343 = int_to_int input (Signed_Char -> Signed_Int)
x10973:	mov al, [bp + 12]	; 3: -118 70 12
x10976:	and ax, 255	; 3: 37 -1 0
x10979:	cmp al, 0	; 2: 60 0
x10981:	jge scanString$85	; 2: 125 4
x10983:	neg al	; 2: -10 -40
x10985:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1343, offset 6
x10987:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x10990:	mov word [bp + 15], scanString$87	; 5: -57 70 15 -4 42
x10995:	mov [bp + 17], bp	; 3: -119 110 17
x10998:	add bp, 15	; 3: -125 -59 15
x11001:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1344 = return_value

scanString$89:	; if £temporary1344 != 0 goto 101
x11004:	cmp bx, 0	; 3: -125 -5 0
x11007:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1347 = int_to_int input (Signed_Char -> Signed_Int)
x11009:	mov al, [bp + 12]	; 3: -118 70 12
x11012:	and ax, 255	; 3: 37 -1 0
x11015:	cmp al, 0	; 2: 60 0
x11017:	jge scanString$91	; 2: 125 4
x11019:	neg al	; 2: -10 -40
x11021:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1347 == -1 goto 101
x11023:	cmp ax, -1	; 3: -125 -8 -1
x11026:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x11028:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11032:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x11034:	mov word [bp + 15], scanString$95	; 5: -57 70 15 40 43
x11039:	mov [bp + 17], bp	; 3: -119 110 17
x11042:	add bp, 15	; 3: -125 -59 15
x11045:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1352 = return_value

scanString$97:	; input = £temporary1352
x11048:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x11051:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x11056:	inc word [g_inChars]	; 4: -1 6 -20 40

scanString$100:	; goto 83
x11060:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x11062:	inc word [g_inChars]	; 4: -1 6 -20 40

scanString$102:	; goto 126
x11066:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1355 = precision
x11068:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x11071:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1355 <= 0 goto 124
x11074:	cmp ax, 0	; 3: -125 -8 0
x11077:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1357 = int_to_int input (Signed_Char -> Signed_Int)
x11079:	mov al, [bp + 12]	; 3: -118 70 12
x11082:	and ax, 255	; 3: 37 -1 0
x11085:	cmp al, 0	; 2: 60 0
x11087:	jge scanString$108	; 2: 125 4
x11089:	neg al	; 2: -10 -40
x11091:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1357, offset 6
x11093:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x11096:	mov word [bp + 15], scanString$110	; 5: -57 70 15 102 43
x11101:	mov [bp + 17], bp	; 3: -119 110 17
x11104:	add bp, 15	; 3: -125 -59 15
x11107:	nop	; 1: -112
x11108:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1358 = return_value

scanString$112:	; if £temporary1358 != 0 goto 124
x11110:	cmp bx, 0	; 3: -125 -5 0
x11113:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1361 = int_to_int input (Signed_Char -> Signed_Int)
x11115:	mov al, [bp + 12]	; 3: -118 70 12
x11118:	and ax, 255	; 3: 37 -1 0
x11121:	cmp al, 0	; 2: 60 0
x11123:	jge scanString$114	; 2: 125 4
x11125:	neg al	; 2: -10 -40
x11127:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1361 == -1 goto 124
x11129:	cmp ax, -1	; 3: -125 -8 -1
x11132:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x11134:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11138:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x11140:	mov word [bp + 15], scanString$118	; 5: -57 70 15 -110 43
x11145:	mov [bp + 17], bp	; 3: -119 110 17
x11148:	add bp, 15	; 3: -125 -59 15
x11151:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1367 = return_value

scanString$120:	; input = £temporary1367
x11154:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x11157:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x11162:	inc word [g_inChars]	; 4: -1 6 -20 40

scanString$123:	; goto 103
x11166:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x11168:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11172:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x11174:	inc word [g_inChars]	; 4: -1 6 -20 40

scanString$126:	; if found == 0 goto 128
x11178:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x11182:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x11184:	inc word [g_inCount]	; 4: -1 6 -22 40

scanString$128:	; return
x11188:	mov ax, [bp]	; 3: -117 70 0
x11191:	mov di, [bp + 4]	; 3: -117 126 4
x11194:	mov bp, [bp + 2]	; 3: -117 110 2
x11197:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x11199:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x11203:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x11205:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x11209:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x11211:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x11215:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x11217:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x11221:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x11223:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x11227:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x11229:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x11233:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary461 = 1
x11235:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x11238:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary461 = 0
x11240:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary461

isspace$10:	; return
x11243:	mov ax, [bp]	; 3: -117 70 0
x11246:	mov di, [bp + 4]	; 3: -117 126 4
x11249:	mov bp, [bp + 2]	; 3: -117 110 2
x11252:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x11254:	mov dword [bp + 6], 0	; 8: 102 -57 70 6 0 0 0 0

scanLongInt$1:	; minus = 0
x11262:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanLongInt$2:	; found = 0
x11267:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x11272:	mov word [bp + 14], scanLongInt$5	; 5: -57 70 14 22 44
x11277:	mov [bp + 16], bp	; 3: -119 110 16
x11280:	add bp, 14	; 3: -125 -59 14
x11283:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1394 = return_value

scanLongInt$7:	; input = £temporary1394
x11286:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1395 = int_to_int input (Signed_Char -> Signed_Int)
x11289:	mov al, [bp + 14]	; 3: -118 70 14
x11292:	and ax, 255	; 3: 37 -1 0
x11295:	cmp al, 0	; 2: 60 0
x11297:	jge scanLongInt$10	; 2: 125 4
x11299:	neg al	; 2: -10 -40
x11301:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1395, offset 6
x11303:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$11:	; call function noellipse-noellipse isspace
x11306:	mov word [bp + 15], scanLongInt$12	; 5: -57 70 15 56 44
x11311:	mov [bp + 17], bp	; 3: -119 110 17
x11314:	add bp, 15	; 3: -125 -59 15
x11317:	nop	; 1: -112
x11318:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1396 = return_value

scanLongInt$14:	; if £temporary1396 == 0 goto 21
x11320:	cmp bx, 0	; 3: -125 -5 0
x11323:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x11325:	mov word [bp + 15], scanLongInt$17	; 5: -57 70 15 75 44
x11330:	mov [bp + 17], bp	; 3: -119 110 17
x11333:	add bp, 15	; 3: -125 -59 15
x11336:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1397 = return_value

scanLongInt$19:	; input = £temporary1397
x11339:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$20:	; goto 8
x11342:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x11344:	cmp byte [bp + 14], 43	; 4: -128 126 14 43
x11348:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x11350:	mov word [bp + 15], scanLongInt$24	; 5: -57 70 15 100 44
x11355:	mov [bp + 17], bp	; 3: -119 110 17
x11358:	add bp, 15	; 3: -125 -59 15
x11361:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1400 = return_value

scanLongInt$26:	; input = £temporary1400
x11364:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$27:	; goto 35
x11367:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x11369:	cmp byte [bp + 14], 45	; 4: -128 126 14 45
x11373:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x11375:	mov word [bp + 10], 1	; 5: -57 70 10 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x11380:	mov word [bp + 15], scanLongInt$32	; 5: -57 70 15 -126 44
x11385:	mov [bp + 17], bp	; 3: -119 110 17
x11388:	add bp, 15	; 3: -125 -59 15
x11391:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1402 = return_value

scanLongInt$34:	; input = £temporary1402
x11394:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$35:	; call header integral zero 0 stack zero 0

scanLongInt$36:	; £temporary1403 = int_to_int input (Signed_Char -> Signed_Int)
x11397:	mov al, [bp + 14]	; 3: -118 70 14
x11400:	and ax, 255	; 3: 37 -1 0
x11403:	cmp al, 0	; 2: 60 0
x11405:	jge scanLongInt$37	; 2: 125 4
x11407:	neg al	; 2: -10 -40
x11409:	neg ax	; 2: -9 -40

scanLongInt$37:	; parameter £temporary1403, offset 6
x11411:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$38:	; call function noellipse-noellipse isdigit
x11414:	mov word [bp + 15], scanLongInt$39	; 5: -57 70 15 -92 44
x11419:	mov [bp + 17], bp	; 3: -119 110 17
x11422:	add bp, 15	; 3: -125 -59 15
x11425:	jmp isdigit	; 3: -23 109 -11

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1404 = return_value

scanLongInt$41:	; if £temporary1404 == 0 goto 53
x11428:	cmp bx, 0	; 3: -125 -5 0
x11431:	je scanLongInt$53	; 2: 116 66

scanLongInt$42:	; £temporary1405 = longValue * 10
x11433:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11437:	xor edx, edx	; 3: 102 49 -46
x11440:	imul dword [int4$10#]	; 5: 102 -9 46 -33 19

scanLongInt$43:	; £temporary1406 = input - 48
x11445:	mov bl, [bp + 14]	; 3: -118 94 14
x11448:	sub bl, 48	; 3: -128 -21 48

scanLongInt$44:	; £temporary1407 = int_to_int £temporary1406 (Signed_Char -> Signed_Long_Int)
x11451:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0
x11458:	cmp bl, 0	; 3: -128 -5 0
x11461:	jge scanLongInt$45	; 2: 125 5
x11463:	neg bl	; 2: -10 -37
x11465:	neg ebx	; 3: 102 -9 -37

scanLongInt$45:	; longValue = £temporary1405 + £temporary1407
x11468:	add eax, ebx	; 3: 102 1 -40
x11471:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$46:	; call header integral zero 0 stack zero 0

scanLongInt$47:	; call function noellipse-noellipse scanChar
x11475:	mov word [bp + 15], scanLongInt$48	; 5: -57 70 15 -31 44
x11480:	mov [bp + 17], bp	; 3: -119 110 17
x11483:	add bp, 15	; 3: -125 -59 15
x11486:	jmp scanChar	; 3: -23 34 -4

scanLongInt$48:	; post call

scanLongInt$49:	; £temporary1409 = return_value

scanLongInt$50:	; input = £temporary1409
x11489:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$51:	; found = 1
x11492:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$52:	; goto 35
x11497:	jmp scanLongInt$35	; 2: -21 -102

scanLongInt$53:	; if minus == 0 goto 56
x11499:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11503:	je scanLongInt$56	; 2: 116 11

scanLongInt$54:	; £temporary1411 = -longValue
x11505:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11509:	neg eax	; 3: 102 -9 -40

scanLongInt$55:	; longValue = £temporary1411
x11512:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$56:	; if found == 0 goto 58
x11516:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x11520:	je scanLongInt$58	; 2: 116 4

scanLongInt$57:	; ++g_inCount
x11522:	inc word [g_inCount]	; 4: -1 6 -22 40

scanLongInt$58:	; call header integral zero 0 stack zero 0

scanLongInt$59:	; parameter input, offset 6
x11526:	mov al, [bp + 14]	; 3: -118 70 14
x11529:	mov [bp + 21], al	; 3: -120 70 21

scanLongInt$60:	; call function noellipse-noellipse unscanChar
x11532:	mov word [bp + 15], scanLongInt$61	; 5: -57 70 15 26 45
x11537:	mov [bp + 17], bp	; 3: -119 110 17
x11540:	add bp, 15	; 3: -125 -59 15
x11543:	nop	; 1: -112
x11544:	jmp unscanChar	; 2: -21 15

scanLongInt$61:	; post call

scanLongInt$62:	; return_value = longValue
x11546:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

scanLongInt$63:	; return
x11550:	mov ax, [bp]	; 3: -117 70 0
x11553:	mov di, [bp + 4]	; 3: -117 126 4
x11556:	mov bp, [bp + 2]	; 3: -117 110 2
x11559:	jmp ax	; 2: -1 -32

scanLongInt$64:	; function end scanLongInt

unscanChar:	; case g_inStatus == 0 goto 4
x11561:	mov ax, [g_inStatus]	; 3: -95 -60 35
x11564:	cmp ax, 0	; 3: -125 -8 0
x11567:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x11569:	cmp ax, 1	; 3: -125 -8 1
x11572:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x11574:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x11576:	dec word [g_inChars]	; 4: -1 14 -20 40

unscanChar$5:	; goto 7
x11580:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x11582:	dec word [g_inChars]	; 4: -1 14 -20 40

unscanChar$7:	; return
x11586:	mov ax, [bp]	; 3: -117 70 0
x11589:	mov di, [bp + 4]	; 3: -117 126 4
x11592:	mov bp, [bp + 2]	; 3: -117 110 2
x11595:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x11597:	mov dword [bp + 10], 0	; 8: 102 -57 70 10 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x11605:	mov word [bp + 18], scanUnsignedLongInt$3	; 5: -57 70 18 99 45
x11610:	mov [bp + 20], bp	; 3: -119 110 20
x11613:	add bp, 18	; 3: -125 -59 18
x11616:	jmp scanChar	; 3: -23 -96 -5

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1419 = return_value

scanUnsignedLongInt$5:	; input = £temporary1419
x11619:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$6:	; found = 1
x11622:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1420 = int_to_int input (Signed_Char -> Signed_Int)
x11627:	mov al, [bp + 18]	; 3: -118 70 18
x11630:	and ax, 255	; 3: 37 -1 0
x11633:	cmp al, 0	; 2: 60 0
x11635:	jge scanUnsignedLongInt$9	; 2: 125 4
x11637:	neg al	; 2: -10 -40
x11639:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1420, offset 6
x11641:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x11644:	mov word [bp + 21], scanUnsignedLongInt$11	; 5: -57 70 21 -118 45
x11649:	mov [bp + 23], bp	; 3: -119 110 23
x11652:	add bp, 21	; 3: -125 -59 21
x11655:	jmp isspace	; 3: -23 53 -2

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1421 = return_value

scanUnsignedLongInt$13:	; if £temporary1421 == 0 goto 20
x11658:	cmp bx, 0	; 3: -125 -5 0
x11661:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x11663:	mov word [bp + 21], scanUnsignedLongInt$16	; 5: -57 70 21 -99 45
x11668:	mov [bp + 23], bp	; 3: -119 110 23
x11671:	add bp, 21	; 3: -125 -59 21
x11674:	jmp scanChar	; 3: -23 102 -5

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1422 = return_value

scanUnsignedLongInt$18:	; input = £temporary1422
x11677:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$19:	; goto 7
x11680:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 48 goto 49
x11682:	cmp byte [bp + 18], 48	; 4: -128 126 18 48
x11686:	jne scanUnsignedLongInt$49	; 2: 117 118

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x11688:	mov word [bp + 21], scanUnsignedLongInt$23	; 5: -57 70 21 -74 45
x11693:	mov [bp + 23], bp	; 3: -119 110 23
x11696:	add bp, 21	; 3: -125 -59 21
x11699:	jmp scanChar	; 3: -23 77 -5

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1425 = return_value

scanUnsignedLongInt$25:	; input = £temporary1425
x11702:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$26:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$27:	; £temporary1426 = int_to_int input (Signed_Char -> Signed_Int)
x11705:	mov al, [bp + 18]	; 3: -118 70 18
x11708:	and ax, 255	; 3: 37 -1 0
x11711:	cmp al, 0	; 2: 60 0
x11713:	jge scanUnsignedLongInt$28	; 2: 125 4
x11715:	neg al	; 2: -10 -40
x11717:	neg ax	; 2: -9 -40

scanUnsignedLongInt$28:	; parameter £temporary1426, offset 6
x11719:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$29:	; call function noellipse-noellipse tolower
x11722:	mov word [bp + 21], scanUnsignedLongInt$30	; 5: -57 70 21 -40 45
x11727:	mov [bp + 23], bp	; 3: -119 110 23
x11730:	add bp, 21	; 3: -125 -59 21
x11733:	jmp tolower	; 3: -23 9 -18

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1427 = return_value

scanUnsignedLongInt$32:	; if £temporary1427 != 120 goto 44
x11736:	cmp bx, 120	; 3: -125 -5 120
x11739:	jne scanUnsignedLongInt$44	; 2: 117 42

scanUnsignedLongInt$33:	; if base != 0 goto 36
x11741:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11746:	jne scanUnsignedLongInt$36	; 2: 117 8

scanUnsignedLongInt$34:	; £temporary1433 = 16
x11748:	mov eax, 16	; 6: 102 -72 16 0 0 0

scanUnsignedLongInt$35:	; goto 37
x11754:	jmp scanUnsignedLongInt$37	; 2: -21 4

scanUnsignedLongInt$36:	; £temporary1433 = base
x11756:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$37:	; base = £temporary1433
x11760:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$38:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$39:	; call function noellipse-noellipse scanChar
x11764:	mov word [bp + 21], scanUnsignedLongInt$40	; 5: -57 70 21 2 46
x11769:	mov [bp + 23], bp	; 3: -119 110 23
x11772:	add bp, 21	; 3: -125 -59 21
x11775:	jmp scanChar	; 3: -23 1 -5

scanUnsignedLongInt$40:	; post call

scanUnsignedLongInt$41:	; £temporary1434 = return_value

scanUnsignedLongInt$42:	; input = £temporary1434
x11778:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$43:	; goto 49
x11781:	jmp scanUnsignedLongInt$49	; 2: -21 23

scanUnsignedLongInt$44:	; if base != 0 goto 47
x11783:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11788:	jne scanUnsignedLongInt$47	; 2: 117 8

scanUnsignedLongInt$45:	; £temporary1439 = 8
x11790:	mov eax, 8	; 6: 102 -72 8 0 0 0

scanUnsignedLongInt$46:	; goto 48
x11796:	jmp scanUnsignedLongInt$48	; 2: -21 4

scanUnsignedLongInt$47:	; £temporary1439 = base
x11798:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$48:	; base = £temporary1439
x11802:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$49:	; if base != 0 goto 51
x11806:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11811:	jne scanUnsignedLongInt$51	; 2: 117 8

scanUnsignedLongInt$50:	; base = 10
x11813:	mov dword [bp + 6], 10	; 8: 102 -57 70 6 10 0 0 0

scanUnsignedLongInt$51:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$52:	; £temporary1441 = int_to_int input (Signed_Char -> Signed_Int)
x11821:	mov al, [bp + 18]	; 3: -118 70 18
x11824:	and ax, 255	; 3: 37 -1 0
x11827:	cmp al, 0	; 2: 60 0
x11829:	jge scanUnsignedLongInt$53	; 2: 125 4
x11831:	neg al	; 2: -10 -40
x11833:	neg ax	; 2: -9 -40

scanUnsignedLongInt$53:	; parameter £temporary1441, offset 6
x11835:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$54:	; call function noellipse-noellipse isxdigit
x11838:	mov word [bp + 21], scanUnsignedLongInt$55	; 5: -57 70 21 76 46
x11843:	mov [bp + 23], bp	; 3: -119 110 23
x11846:	add bp, 21	; 3: -125 -59 21
x11849:	nop	; 1: -112
x11850:	jmp isxdigit	; 2: -21 127

scanUnsignedLongInt$55:	; post call

scanUnsignedLongInt$56:	; £temporary1442 = return_value

scanUnsignedLongInt$57:	; if £temporary1442 == 0 goto 74
x11852:	cmp bx, 0	; 3: -125 -5 0
x11855:	je scanUnsignedLongInt$74	; 2: 116 77

scanUnsignedLongInt$58:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$59:	; parameter input, offset 6
x11857:	mov al, [bp + 18]	; 3: -118 70 18
x11860:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$60:	; call function noellipse-noellipse digitToValue
x11863:	mov word [bp + 21], scanUnsignedLongInt$61	; 5: -57 70 21 101 46
x11868:	mov [bp + 23], bp	; 3: -119 110 23
x11871:	add bp, 21	; 3: -125 -59 21
x11874:	jmp digitToValue	; 3: -23 -86 0

scanUnsignedLongInt$61:	; post call

scanUnsignedLongInt$62:	; £temporary1443 = return_value

scanUnsignedLongInt$63:	; digit = £temporary1443
x11877:	mov [bp + 14], ebx	; 4: 102 -119 94 14

scanUnsignedLongInt$64:	; if digit >= base goto 74
x11881:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11885:	cmp [bp + 14], eax	; 4: 102 57 70 14
x11889:	jae scanUnsignedLongInt$74	; 2: 115 43

scanUnsignedLongInt$65:	; £temporary1445 = unsignedLongValue * base
x11891:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x11895:	xor edx, edx	; 3: 102 49 -46
x11898:	mul dword [bp + 6]	; 4: 102 -9 102 6

scanUnsignedLongInt$66:	; unsignedLongValue = £temporary1445 + digit
x11902:	add eax, [bp + 14]	; 4: 102 3 70 14
x11906:	mov [bp + 10], eax	; 4: 102 -119 70 10

scanUnsignedLongInt$67:	; found = 1
x11910:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$68:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$69:	; call function noellipse-noellipse scanChar
x11915:	mov word [bp + 21], scanUnsignedLongInt$70	; 5: -57 70 21 -103 46
x11920:	mov [bp + 23], bp	; 3: -119 110 23
x11923:	add bp, 21	; 3: -125 -59 21
x11926:	jmp scanChar	; 3: -23 106 -6

scanUnsignedLongInt$70:	; post call

scanUnsignedLongInt$71:	; £temporary1447 = return_value

scanUnsignedLongInt$72:	; input = £temporary1447
x11929:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$73:	; goto 51
x11932:	jmp scanUnsignedLongInt$51	; 2: -21 -113

scanUnsignedLongInt$74:	; if found == 0 goto 76
x11934:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x11938:	je scanUnsignedLongInt$76	; 2: 116 4

scanUnsignedLongInt$75:	; ++g_inCount
x11940:	inc word [g_inCount]	; 4: -1 6 -22 40

scanUnsignedLongInt$76:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$77:	; parameter input, offset 6
x11944:	mov al, [bp + 18]	; 3: -118 70 18
x11947:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$78:	; call function noellipse-noellipse unscanChar
x11950:	mov word [bp + 21], scanUnsignedLongInt$79	; 5: -57 70 21 -68 46
x11955:	mov [bp + 23], bp	; 3: -119 110 23
x11958:	add bp, 21	; 3: -125 -59 21
x11961:	jmp unscanChar	; 3: -23 109 -2

scanUnsignedLongInt$79:	; post call

scanUnsignedLongInt$80:	; return_value = unsignedLongValue
x11964:	mov ebx, [bp + 10]	; 4: 102 -117 94 10

scanUnsignedLongInt$81:	; return
x11968:	mov ax, [bp]	; 3: -117 70 0
x11971:	mov di, [bp + 4]	; 3: -117 126 4
x11974:	mov bp, [bp + 2]	; 3: -117 110 2
x11977:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$82:	; function end scanUnsignedLongInt

isxdigit:	; call header integral zero 0 stack zero 0

isxdigit$1:	; parameter c, offset 6
x11979:	mov ax, [bp + 6]	; 3: -117 70 6
x11982:	mov [bp + 14], ax	; 3: -119 70 14

isxdigit$2:	; call function noellipse-noellipse isdigit
x11985:	mov word [bp + 8], isxdigit$3	; 5: -57 70 8 -33 46
x11990:	mov [bp + 10], bp	; 3: -119 110 10
x11993:	add bp, 8	; 3: -125 -59 8
x11996:	jmp isdigit	; 3: -23 50 -13

isxdigit$3:	; post call

isxdigit$4:	; £temporary414 = return_value

isxdigit$5:	; if £temporary414 != 0 goto 10
x11999:	cmp bx, 0	; 3: -125 -5 0
x12002:	jne isxdigit$10	; 2: 117 24

isxdigit$6:	; if c < 97 goto 8
x12004:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12008:	jl isxdigit$8	; 2: 124 6

isxdigit$7:	; if c <= 102 goto 10
x12010:	cmp word [bp + 6], 102	; 4: -125 126 6 102
x12014:	jle isxdigit$10	; 2: 126 12

isxdigit$8:	; if c < 65 goto 12
x12016:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x12020:	jl isxdigit$12	; 2: 124 11

isxdigit$9:	; if c > 70 goto 12
x12022:	cmp word [bp + 6], 70	; 4: -125 126 6 70
x12026:	jg isxdigit$12	; 2: 127 5

isxdigit$10:	; £temporary424 = 1
x12028:	mov bx, 1	; 3: -69 1 0

isxdigit$11:	; goto 13
x12031:	jmp isxdigit$13	; 2: -21 3

isxdigit$12:	; £temporary424 = 0
x12033:	mov bx, 0	; 3: -69 0 0

isxdigit$13:	; return_value = £temporary424

isxdigit$14:	; return
x12036:	mov ax, [bp]	; 3: -117 70 0
x12039:	mov di, [bp + 4]	; 3: -117 126 4
x12042:	mov bp, [bp + 2]	; 3: -117 110 2
x12045:	jmp ax	; 2: -1 -32

isxdigit$15:	; function end isxdigit

digitToValue:	; call header integral zero 0 stack zero 0

digitToValue$1:	; £temporary1378 = int_to_int input (Signed_Char -> Signed_Int)
x12047:	mov al, [bp + 6]	; 3: -118 70 6
x12050:	and ax, 255	; 3: 37 -1 0
x12053:	cmp al, 0	; 2: 60 0
x12055:	jge digitToValue$2	; 2: 125 4
x12057:	neg al	; 2: -10 -40
x12059:	neg ax	; 2: -9 -40

digitToValue$2:	; parameter £temporary1378, offset 6
x12061:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$3:	; call function noellipse-noellipse isdigit
x12064:	mov word [bp + 7], digitToValue$4	; 5: -57 70 7 46 47
x12069:	mov [bp + 9], bp	; 3: -119 110 9
x12072:	add bp, 7	; 3: -125 -59 7
x12075:	jmp isdigit	; 3: -23 -29 -14

digitToValue$4:	; post call

digitToValue$5:	; £temporary1379 = return_value

digitToValue$6:	; if £temporary1379 == 0 goto 11
x12078:	cmp bx, 0	; 3: -125 -5 0
x12081:	je digitToValue$11	; 2: 116 24

digitToValue$7:	; £temporary1380 = input - 48
x12083:	mov bl, [bp + 6]	; 3: -118 94 6
x12086:	sub bl, 48	; 3: -128 -21 48

digitToValue$8:	; £temporary1381 = int_to_int £temporary1380 (Signed_Char -> Unsigned_Long_Int)
x12089:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$9:	; return_value = £temporary1381

digitToValue$10:	; return
x12096:	mov ax, [bp]	; 3: -117 70 0
x12099:	mov di, [bp + 4]	; 3: -117 126 4
x12102:	mov bp, [bp + 2]	; 3: -117 110 2
x12105:	jmp ax	; 2: -1 -32

digitToValue$11:	; call header integral zero 0 stack zero 0

digitToValue$12:	; £temporary1382 = int_to_int input (Signed_Char -> Signed_Int)
x12107:	mov al, [bp + 6]	; 3: -118 70 6
x12110:	and ax, 255	; 3: 37 -1 0
x12113:	cmp al, 0	; 2: 60 0
x12115:	jge digitToValue$13	; 2: 125 4
x12117:	neg al	; 2: -10 -40
x12119:	neg ax	; 2: -9 -40

digitToValue$13:	; parameter £temporary1382, offset 6
x12121:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$14:	; call function noellipse-noellipse islower
x12124:	mov word [bp + 7], digitToValue$15	; 5: -57 70 7 106 47
x12129:	mov [bp + 9], bp	; 3: -119 110 9
x12132:	add bp, 7	; 3: -125 -59 7
x12135:	nop	; 1: -112
x12136:	jmp islower	; 2: -21 61

digitToValue$15:	; post call

digitToValue$16:	; £temporary1383 = return_value

digitToValue$17:	; if £temporary1383 == 0 goto 23
x12138:	cmp bx, 0	; 3: -125 -5 0
x12141:	je digitToValue$23	; 2: 116 28

digitToValue$18:	; £temporary1384 = input - 97
x12143:	mov bl, [bp + 6]	; 3: -118 94 6
x12146:	sub bl, 97	; 3: -128 -21 97

digitToValue$19:	; £temporary1385 = int_to_int £temporary1384 (Signed_Char -> Unsigned_Long_Int)
x12149:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$20:	; £temporary1386 = £temporary1385 + 10
x12156:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$21:	; return_value = £temporary1386

digitToValue$22:	; return
x12160:	mov ax, [bp]	; 3: -117 70 0
x12163:	mov di, [bp + 4]	; 3: -117 126 4
x12166:	mov bp, [bp + 2]	; 3: -117 110 2
x12169:	jmp ax	; 2: -1 -32

digitToValue$23:	; £temporary1387 = input - 65
x12171:	mov bl, [bp + 6]	; 3: -118 94 6
x12174:	sub bl, 65	; 3: -128 -21 65

digitToValue$24:	; £temporary1388 = int_to_int £temporary1387 (Signed_Char -> Unsigned_Long_Int)
x12177:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$25:	; £temporary1389 = £temporary1388 + 10
x12184:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$26:	; return_value = £temporary1389

digitToValue$27:	; return
x12188:	mov ax, [bp]	; 3: -117 70 0
x12191:	mov di, [bp + 4]	; 3: -117 126 4
x12194:	mov bp, [bp + 2]	; 3: -117 110 2
x12197:	jmp ax	; 2: -1 -32

digitToValue$28:	; function end digitToValue

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x12199:	mov word [bp + 8], islower$2	; 5: -57 70 8 -75 47
x12204:	mov [bp + 10], bp	; 3: -119 110 10
x12207:	add bp, 8	; 3: -125 -59 8
x12210:	jmp localeconv	; 3: -23 -119 -27

islower$2:	; post call

islower$3:	; £temporary370 = return_value

islower$4:	; localeConvPtr = £temporary370
x12213:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x12216:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12220:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary372 -> localeConvPtr = *localeConvPtr, offset 12
x12222:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary372 -> localeConvPtr, offset 6
x12225:	mov ax, [si + 12]	; 3: -117 68 12
x12228:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x12231:	mov ax, [bp + 6]	; 3: -117 70 6
x12234:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x12237:	mov word [bp + 10], islower$11	; 5: -57 70 10 -37 47
x12242:	mov [bp + 12], bp	; 3: -119 110 12
x12245:	add bp, 10	; 3: -125 -59 10
x12248:	jmp strchr	; 3: -23 -91 -24

islower$11:	; post call

islower$12:	; £temporary373 = return_value

islower$13:	; if £temporary373 == 0 goto 16
x12251:	cmp bx, 0	; 3: -125 -5 0
x12254:	je islower$16	; 2: 116 5

islower$14:	; £temporary375 = 1
x12256:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x12259:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary375 = 0
x12261:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary375

islower$18:	; return
x12264:	mov ax, [bp]	; 3: -117 70 0
x12267:	mov di, [bp + 4]	; 3: -117 126 4
x12270:	mov bp, [bp + 2]	; 3: -117 110 2
x12273:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x12275:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12279:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x12281:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x12285:	jg islower$23	; 2: 127 5

islower$21:	; £temporary379 = 1
x12287:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x12290:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary379 = 0
x12292:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary379

islower$25:	; return
x12295:	mov ax, [bp]	; 3: -117 70 0
x12298:	mov di, [bp + 4]	; 3: -117 126 4
x12301:	mov bp, [bp + 2]	; 3: -117 110 2
x12304:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

scanLongDouble:	; minus = 0
x12306:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x12311:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x12316:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x12318:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x12321:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x12323:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x12326:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 52 48
x12331:	mov [bp + 28], bp	; 3: -119 110 28
x12334:	add bp, 26	; 3: -125 -59 26
x12337:	jmp scanChar	; 3: -23 -49 -8

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1457 = return_value

scanLongDouble$10:	; input = £temporary1457
x12340:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1458 = int_to_int input (Signed_Char -> Signed_Int)
x12343:	mov al, [bp + 26]	; 3: -118 70 26
x12346:	and ax, 255	; 3: 37 -1 0
x12349:	cmp al, 0	; 2: 60 0
x12351:	jge scanLongDouble$13	; 2: 125 4
x12353:	neg al	; 2: -10 -40
x12355:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1458, offset 6
x12357:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x12360:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 86 48
x12365:	mov [bp + 29], bp	; 3: -119 110 29
x12368:	add bp, 27	; 3: -125 -59 27
x12371:	jmp isspace	; 3: -23 105 -5

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1459 = return_value

scanLongDouble$17:	; if £temporary1459 == 0 goto 24
x12374:	cmp bx, 0	; 3: -125 -5 0
x12377:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x12379:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 105 48
x12384:	mov [bp + 29], bp	; 3: -119 110 29
x12387:	add bp, 27	; 3: -125 -59 27
x12390:	jmp scanChar	; 3: -23 -102 -8

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1460 = return_value

scanLongDouble$22:	; input = £temporary1460
x12393:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x12396:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x12398:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x12402:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x12404:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 -126 48
x12409:	mov [bp + 29], bp	; 3: -119 110 29
x12412:	add bp, 27	; 3: -125 -59 27
x12415:	jmp scanChar	; 3: -23 -127 -8

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1463 = return_value

scanLongDouble$29:	; input = £temporary1463
x12418:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x12421:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x12423:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x12427:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x12429:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x12434:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 -96 48
x12439:	mov [bp + 29], bp	; 3: -119 110 29
x12442:	add bp, 27	; 3: -125 -59 27
x12445:	jmp scanChar	; 3: -23 99 -8

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1465 = return_value

scanLongDouble$37:	; input = £temporary1465
x12448:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1466 = int_to_int input (Signed_Char -> Signed_Int)
x12451:	mov al, [bp + 26]	; 3: -118 70 26
x12454:	and ax, 255	; 3: 37 -1 0
x12457:	cmp al, 0	; 2: 60 0
x12459:	jge scanLongDouble$40	; 2: 125 4
x12461:	neg al	; 2: -10 -40
x12463:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1466, offset 6
x12465:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x12468:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 -62 48
x12473:	mov [bp + 29], bp	; 3: -119 110 29
x12476:	add bp, 27	; 3: -125 -59 27
x12479:	jmp isdigit	; 3: -23 79 -15

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1467 = return_value

scanLongDouble$44:	; if £temporary1467 == 0 goto 60
x12482:	cmp bx, 0	; 3: -125 -5 0
x12485:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x12487:	fld qword [float8$10.0#]	; 4: -35 6 -73 27

scanLongDouble$46:	; push float value
x12491:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1468 = 10.0 * value
x12494:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1469 = input - 48
x12496:	mov al, [bp + 26]	; 3: -118 70 26
x12499:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1471 = int_to_int £temporary1469 (Signed_Char -> Signed_Int)
x12501:	and ax, 255	; 3: 37 -1 0
x12504:	cmp al, 0	; 2: 60 0
x12506:	jge scanLongDouble$50	; 2: 125 4
x12508:	neg al	; 2: -10 -40
x12510:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1470 = int_to_float £temporary1471 (Signed_Int -> Long_Double)
x12512:	mov [container2bytes#], ax	; 3: -93 26 18
x12515:	fild word [container2bytes#]	; 4: -33 6 26 18

scanLongDouble$51:	; £temporary1472 = £temporary1468 + £temporary1470
x12519:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x12521:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x12524:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 -6 48
x12529:	mov [bp + 29], bp	; 3: -119 110 29
x12532:	add bp, 27	; 3: -125 -59 27
x12535:	jmp scanChar	; 3: -23 9 -8

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1473 = return_value

scanLongDouble$57:	; input = £temporary1473
x12538:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x12541:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x12546:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x12548:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x12552:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x12554:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 24 49
x12559:	mov [bp + 29], bp	; 3: -119 110 29
x12562:	add bp, 27	; 3: -125 -59 27
x12565:	jmp scanChar	; 3: -23 -21 -9

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1476 = return_value

scanLongDouble$65:	; input = £temporary1476
x12568:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1477 = int_to_int input (Signed_Char -> Signed_Int)
x12571:	mov al, [bp + 26]	; 3: -118 70 26
x12574:	and ax, 255	; 3: 37 -1 0
x12577:	cmp al, 0	; 2: 60 0
x12579:	jge scanLongDouble$68	; 2: 125 4
x12581:	neg al	; 2: -10 -40
x12583:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1477, offset 6
x12585:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x12588:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 58 49
x12593:	mov [bp + 29], bp	; 3: -119 110 29
x12596:	add bp, 27	; 3: -125 -59 27
x12599:	jmp isdigit	; 3: -23 -41 -16

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1478 = return_value

scanLongDouble$72:	; if £temporary1478 == 0 goto 92
x12602:	cmp bx, 0	; 3: -125 -5 0
x12605:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x12607:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x12610:	fld qword [float8$10.0#]	; 4: -35 6 -73 27

scanLongDouble$75:	; £temporary1479 = factor / 10.0
x12614:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x12616:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x12619:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x12622:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1480 = input - 48
x12625:	mov al, [bp + 26]	; 3: -118 70 26
x12628:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1482 = int_to_int £temporary1480 (Signed_Char -> Signed_Int)
x12630:	and ax, 255	; 3: 37 -1 0
x12633:	cmp al, 0	; 2: 60 0
x12635:	jge scanLongDouble$81	; 2: 125 4
x12637:	neg al	; 2: -10 -40
x12639:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1481 = int_to_float £temporary1482 (Signed_Int -> Long_Double)
x12641:	mov [container2bytes#], ax	; 3: -93 26 18
x12644:	fild word [container2bytes#]	; 4: -33 6 26 18

scanLongDouble$82:	; £temporary1483 = factor * £temporary1481
x12648:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1484 = value + £temporary1483
x12650:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x12652:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x12655:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 125 49
x12660:	mov [bp + 29], bp	; 3: -119 110 29
x12663:	add bp, 27	; 3: -125 -59 27
x12666:	jmp scanChar	; 3: -23 -122 -9

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1485 = return_value

scanLongDouble$89:	; input = £temporary1485
x12669:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x12672:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x12677:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; parameter input, offset 6
x12679:	mov al, [bp + 26]	; 3: -118 70 26
x12682:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$94:	; call function noellipse-noellipse unscanChar
x12685:	mov word [bp + 27], scanLongDouble$95	; 5: -57 70 27 -101 49
x12690:	mov [bp + 29], bp	; 3: -119 110 29
x12693:	add bp, 27	; 3: -125 -59 27
x12696:	jmp unscanChar	; 3: -23 -114 -5

scanLongDouble$95:	; post call

scanLongDouble$96:	; call header integral zero 0 stack zero 0

scanLongDouble$97:	; £temporary1488 = int_to_int input (Signed_Char -> Signed_Int)
x12699:	mov al, [bp + 26]	; 3: -118 70 26
x12702:	and ax, 255	; 3: 37 -1 0
x12705:	cmp al, 0	; 2: 60 0
x12707:	jge scanLongDouble$98	; 2: 125 4
x12709:	neg al	; 2: -10 -40
x12711:	neg ax	; 2: -9 -40

scanLongDouble$98:	; parameter £temporary1488, offset 6
x12713:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$99:	; call function noellipse-noellipse tolower
x12716:	mov word [bp + 27], scanLongDouble$100	; 5: -57 70 27 -70 49
x12721:	mov [bp + 29], bp	; 3: -119 110 29
x12724:	add bp, 27	; 3: -125 -59 27
x12727:	jmp tolower	; 3: -23 39 -22

scanLongDouble$100:	; post call

scanLongDouble$101:	; £temporary1489 = return_value

scanLongDouble$102:	; if £temporary1489 != 101 goto 121
x12730:	cmp bx, 101	; 3: -125 -5 101
x12733:	jne scanLongDouble$121	; 2: 117 75

scanLongDouble$103:	; call header integral zero 0 stack zero 0

scanLongDouble$104:	; call function noellipse-noellipse scanLongInt
x12735:	mov word [bp + 27], scanLongDouble$105	; 5: -57 70 27 -51 49
x12740:	mov [bp + 29], bp	; 3: -119 110 29
x12743:	add bp, 27	; 3: -125 -59 27
x12746:	jmp scanLongInt	; 3: -23 41 -6

scanLongDouble$105:	; post call

scanLongDouble$106:	; £temporary1491 = return_value

scanLongDouble$107:	; £temporary1492 = int_to_float £temporary1491 (Signed_Long_Int -> Double)
x12749:	mov [container4bytes#], ebx	; 5: 102 -119 30 19 27
x12754:	fild dword [container4bytes#]	; 4: -37 6 19 27

scanLongDouble$108:	; pop float exponent
x12758:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$109:	; push float value
x12761:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$110:	; call header integral zero 0 stack no zero 1
x12764:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$111:	; push float 10.0
x12767:	fld qword [float8$10.0#]	; 4: -35 6 -73 27

scanLongDouble$112:	; parameter 10.0, offset 6
x12771:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$113:	; push float exponent
x12774:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$114:	; parameter exponent, offset 14
x12777:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$115:	; call function noellipse-noellipse pow
x12780:	mov word [bp + 43], scanLongDouble$116	; 5: -57 70 43 -6 49
x12785:	mov [bp + 45], bp	; 3: -119 110 45
x12788:	add bp, 43	; 3: -125 -59 43
x12791:	jmp pow	; 3: -23 78 -19

scanLongDouble$116:	; post call
x12794:	fstp qword [bp + 43]	; 3: -35 94 43
x12797:	fld qword [bp + 35]	; 3: -35 70 35
x12800:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$117:	; £temporary1493 = return_value

scanLongDouble$118:	; £temporary1494 = value * £temporary1493
x12803:	fmul	; 2: -34 -55

scanLongDouble$119:	; pop float value
x12805:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$120:	; goto 125
x12808:	jmp scanLongDouble$125	; 2: -21 20

scanLongDouble$121:	; call header integral zero 0 stack zero 0

scanLongDouble$122:	; parameter input, offset 6
x12810:	mov al, [bp + 26]	; 3: -118 70 26
x12813:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$123:	; call function noellipse-noellipse unscanChar
x12816:	mov word [bp + 27], scanLongDouble$124	; 5: -57 70 27 30 50
x12821:	mov [bp + 29], bp	; 3: -119 110 29
x12824:	add bp, 27	; 3: -125 -59 27
x12827:	jmp unscanChar	; 3: -23 11 -5

scanLongDouble$124:	; post call

scanLongDouble$125:	; if minus == 0 goto 129
x12830:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x12834:	je scanLongDouble$129	; 2: 116 8

scanLongDouble$126:	; push float value
x12836:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$127:	; £temporary1496 = -value
x12839:	fchs	; 2: -39 -32

scanLongDouble$128:	; pop float value
x12841:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$129:	; if found == 0 goto 131
x12844:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12848:	je scanLongDouble$131	; 2: 116 4

scanLongDouble$130:	; ++g_inCount
x12850:	inc word [g_inCount]	; 4: -1 6 -22 40

scanLongDouble$131:	; push float value
x12854:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$132:	; return_value = value

scanLongDouble$133:	; return
x12857:	mov ax, [bp]	; 3: -117 70 0
x12860:	mov di, [bp + 4]	; 3: -117 126 4
x12863:	mov bp, [bp + 2]	; 3: -117 110 2
x12866:	jmp ax	; 2: -1 -32

scanLongDouble$134:	; function end scanLongDouble

scanPattern:	; index = 0
x12868:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x12873:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 87 50
x12878:	mov [bp + 16], bp	; 3: -119 110 16
x12881:	add bp, 14	; 3: -125 -59 14
x12884:	jmp scanChar	; 3: -23 -84 -10

scanPattern$3:	; post call

scanPattern$4:	; £temporary1249 = return_value

scanPattern$5:	; input = £temporary1249
x12887:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1250 = int_to_int input (Signed_Char -> Signed_Int)
x12890:	mov al, [bp + 14]	; 3: -118 70 14
x12893:	and ax, 255	; 3: 37 -1 0
x12896:	cmp al, 0	; 2: 60 0
x12898:	jge scanPattern$8	; 2: 125 4
x12900:	neg al	; 2: -10 -40
x12902:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1250, offset 6
x12904:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x12907:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 121 50
x12912:	mov [bp + 17], bp	; 3: -119 110 17
x12915:	add bp, 15	; 3: -125 -59 15
x12918:	jmp isspace	; 3: -23 70 -7

scanPattern$10:	; post call

scanPattern$11:	; £temporary1251 = return_value

scanPattern$12:	; if £temporary1251 == 0 goto 19
x12921:	cmp bx, 0	; 3: -125 -5 0
x12924:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x12926:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 -116 50
x12931:	mov [bp + 17], bp	; 3: -119 110 17
x12934:	add bp, 15	; 3: -125 -59 15
x12937:	jmp scanChar	; 3: -23 119 -10

scanPattern$15:	; post call

scanPattern$16:	; £temporary1252 = return_value

scanPattern$17:	; input = £temporary1252
x12940:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x12943:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x12945:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x12949:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x12953:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x12957:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x12959:	mov ax, [bp + 8]	; 3: -117 70 8
x12962:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1257 = int_to_int input (Signed_Char -> Signed_Int)
x12965:	mov al, [bp + 14]	; 3: -118 70 14
x12968:	and ax, 255	; 3: 37 -1 0
x12971:	cmp al, 0	; 2: 60 0
x12973:	jge scanPattern$24	; 2: 125 4
x12975:	neg al	; 2: -10 -40
x12977:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1257, offset 8
x12979:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x12982:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 -60 50
x12987:	mov [bp + 17], bp	; 3: -119 110 17
x12990:	add bp, 15	; 3: -125 -59 15
x12993:	jmp strchr	; 3: -23 -68 -27

scanPattern$26:	; post call

scanPattern$27:	; £temporary1258 = return_value

scanPattern$28:	; if £temporary1258 != 0 goto 38
x12996:	cmp bx, 0	; 3: -125 -5 0
x12999:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x13001:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13005:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x13007:	mov ax, [bp + 8]	; 3: -117 70 8
x13010:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1261 = int_to_int input (Signed_Char -> Signed_Int)
x13013:	mov al, [bp + 14]	; 3: -118 70 14
x13016:	and ax, 255	; 3: 37 -1 0
x13019:	cmp al, 0	; 2: 60 0
x13021:	jge scanPattern$33	; 2: 125 4
x13023:	neg al	; 2: -10 -40
x13025:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1261, offset 8
x13027:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x13030:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 -12 50
x13035:	mov [bp + 17], bp	; 3: -119 110 17
x13038:	add bp, 15	; 3: -125 -59 15
x13041:	jmp strchr	; 3: -23 -116 -27

scanPattern$35:	; post call

scanPattern$36:	; £temporary1262 = return_value

scanPattern$37:	; if £temporary1262 != 0 goto 49
x13044:	cmp bx, 0	; 3: -125 -5 0
x13047:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1268 = index
x13049:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x13052:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1270 = string + £temporary1268
x13055:	mov si, [bp + 6]	; 3: -117 118 6
x13058:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1269 -> £temporary1270 = *£temporary1270

scanPattern$42:	; £temporary1269 -> £temporary1270 = input
x13060:	mov al, [bp + 14]	; 3: -118 70 14
x13063:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x13065:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 23 51
x13070:	mov [bp + 17], bp	; 3: -119 110 17
x13073:	add bp, 15	; 3: -125 -59 15
x13076:	jmp scanChar	; 3: -23 -20 -11

scanPattern$45:	; post call

scanPattern$46:	; £temporary1271 = return_value

scanPattern$47:	; input = £temporary1271
x13079:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x13082:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1273 = string + index
x13085:	mov si, [bp + 6]	; 3: -117 118 6
x13088:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1272 -> £temporary1273 = *£temporary1273

scanPattern$51:	; £temporary1272 -> £temporary1273 = 0
x13091:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x13094:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x13096:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13100:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x13102:	mov ax, [bp + 8]	; 3: -117 70 8
x13105:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1276 = int_to_int input (Signed_Char -> Signed_Int)
x13108:	mov al, [bp + 14]	; 3: -118 70 14
x13111:	and ax, 255	; 3: 37 -1 0
x13114:	cmp al, 0	; 2: 60 0
x13116:	jge scanPattern$57	; 2: 125 4
x13118:	neg al	; 2: -10 -40
x13120:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1276, offset 8
x13122:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x13125:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 83 51
x13130:	mov [bp + 17], bp	; 3: -119 110 17
x13133:	add bp, 15	; 3: -125 -59 15
x13136:	jmp strchr	; 3: -23 45 -27

scanPattern$59:	; post call

scanPattern$60:	; £temporary1277 = return_value

scanPattern$61:	; if £temporary1277 != 0 goto 71
x13139:	cmp bx, 0	; 3: -125 -5 0
x13142:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x13144:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13148:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x13150:	mov ax, [bp + 8]	; 3: -117 70 8
x13153:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1280 = int_to_int input (Signed_Char -> Signed_Int)
x13156:	mov al, [bp + 14]	; 3: -118 70 14
x13159:	and ax, 255	; 3: 37 -1 0
x13162:	cmp al, 0	; 2: 60 0
x13164:	jge scanPattern$66	; 2: 125 4
x13166:	neg al	; 2: -10 -40
x13168:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1280, offset 8
x13170:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x13173:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 -125 51
x13178:	mov [bp + 17], bp	; 3: -119 110 17
x13181:	add bp, 15	; 3: -125 -59 15
x13184:	jmp strchr	; 3: -23 -3 -28

scanPattern$68:	; post call

scanPattern$69:	; £temporary1281 = return_value

scanPattern$70:	; if £temporary1281 != 0 goto 77
x13187:	cmp bx, 0	; 3: -125 -5 0
x13190:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x13192:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 -106 51
x13197:	mov [bp + 17], bp	; 3: -119 110 17
x13200:	add bp, 15	; 3: -125 -59 15
x13203:	jmp scanChar	; 3: -23 109 -11

scanPattern$73:	; post call

scanPattern$74:	; £temporary1287 = return_value

scanPattern$75:	; input = £temporary1287
x13206:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x13209:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x13211:	mov ax, [bp]	; 3: -117 70 0
x13214:	mov di, [bp + 4]	; 3: -117 126 4
x13217:	mov bp, [bp + 2]	; 3: -117 110 2
x13220:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

$Path:
x13222:	db "C:\D\Main.com", 0	; 14: 67 58 92 68 92 77 97 105 110 46 99 111 109 0

$StackTop:
x13236:
