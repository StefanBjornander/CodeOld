	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -6 51
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 -6 51 0 0
	; Initialize Argument List
x283:	mov si, bp	; 2: -119 -18
x285:	mov word [bp], $Path	; 5: -57 70 0 -20 51
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

main$10:	; £temporary102 = index * 2
x414:	mov ax, [bp + 10]	; 3: -117 70 10
x417:	xor dx, dx	; 2: 49 -46
x419:	mul word [int2$2#]	; 4: -9 38 28 3

main$11:	; £temporary103 = argv + £temporary102
x423:	mov si, [bp + 8]	; 3: -117 118 8
x426:	add si, ax	; 2: 1 -58

main$12:	; £temporary101 -> £temporary103 = *£temporary103

main$13:	; parameter £temporary101 -> £temporary103, offset 10
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

main$23:	; £temporary107 = index * 2
x483:	mov ax, [bp + 10]	; 3: -117 70 10
x486:	xor dx, dx	; 2: 49 -46
x488:	mul word [int2$2#]	; 4: -9 38 28 3

main$24:	; £temporary108 = argv + £temporary107
x492:	mov si, [bp + 8]	; 3: -117 118 8
x495:	add si, ax	; 2: 1 -58

main$25:	; £temporary106 -> £temporary108 = *£temporary108

main$26:	; if £temporary106 -> £temporary108 == 0 goto 38
x497:	cmp word [si], 0	; 3: -125 60 0
x500:	je main$38	; 2: 116 54

main$27:	; call header integral zero 0 stack zero 0

main$28:	; parameter string_25i3A203C25s3E0A#, offset 6
x502:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 18 3

main$29:	; parameter index, offset 8
x507:	mov ax, [bp + 10]	; 3: -117 70 10
x510:	mov [bp + 20], ax	; 3: -119 70 20

main$30:	; £temporary112 = index * 2
x513:	mov ax, [bp + 10]	; 3: -117 70 10
x516:	xor dx, dx	; 2: 49 -46
x518:	mul word [int2$2#]	; 4: -9 38 28 3

main$31:	; £temporary113 = argv + £temporary112
x522:	mov si, [bp + 8]	; 3: -117 118 8
x525:	add si, ax	; 2: 1 -58

main$32:	; £temporary111 -> £temporary113 = *£temporary113

main$33:	; parameter £temporary111 -> £temporary113, offset 10
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
x593:	jmp mktime	; 3: -23 34 32

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

main$56:	; £temporary119 = &c
x643:	mov si, bp	; 2: -119 -18
x645:	add si, 22	; 3: -125 -58 22

main$57:	; parameter £temporary119, offset 8
x648:	mov [bp + 51], si	; 3: -119 118 51

main$58:	; parameter s, offset 10
x651:	mov [bp + 53], bp	; 3: -119 110 53
x654:	add word [bp + 53], 23	; 4: -125 70 53 23

main$59:	; £temporary120 = &i
x658:	mov si, bp	; 2: -119 -18
x660:	add si, 12	; 3: -125 -58 12

main$60:	; parameter £temporary120, offset 12
x663:	mov [bp + 55], si	; 3: -119 118 55

main$61:	; £temporary121 = &d
x666:	mov si, bp	; 2: -119 -18
x668:	add si, 14	; 3: -125 -58 14

main$62:	; parameter £temporary121, offset 14
x671:	mov [bp + 57], si	; 3: -119 118 57

main$63:	; call function noellipse-ellipse scanf, extra 0
x674:	mov word [bp + 43], main$64	; 5: -57 70 43 -75 2
x679:	mov [bp + 45], bp	; 3: -119 110 45
x682:	add bp, 43	; 3: -125 -59 43
x685:	mov di, bp	; 2: -119 -17
x687:	add di, 8	; 3: -125 -57 8
x690:	jmp scanf	; 3: -23 -62 32

main$64:	; post call

main$65:	; call header integral zero 0 stack zero 0

main$66:	; parameter string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#, offset 6
x693:	mov word [bp + 49], string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#	; 5: -57 70 49 116 3

main$67:	; £temporary123 = int_to_int c (Signed_Char -> Signed_Int)
x698:	mov al, [bp + 22]	; 3: -118 70 22
x701:	and ax, 255	; 3: 37 -1 0
x704:	cmp al, 0	; 2: 60 0
x706:	jge main$68	; 2: 125 4
x708:	neg al	; 2: -10 -40
x710:	neg ax	; 2: -9 -40

main$68:	; parameter £temporary123, offset 8
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

printf:	; £temporary2474 = &format
x967:	mov si, bp	; 2: -119 -18
x969:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2475 = int_to_int £temporary2474 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2475 + 2
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

printf$8:	; £temporary2477 = return_value

printf$9:	; return_value = £temporary2477

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

vprintf$6:	; £temporary2481 = return_value

vprintf$7:	; return_value = £temporary2481

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

vfprintf$1:	; £temporary2493 = int_to_int outStream (Pointer -> Pointer)
x1651:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2493
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

vfprintf$8:	; £temporary2494 = return_value

vfprintf$9:	; return_value = £temporary2494

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
x1768:	mov word [g_outChars], 0	; 6: -57 6 -14 11 0 0

printFormat$15:	; index = 0
x1774:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2328 = format + index
x1779:	mov si, [bp + 6]	; 3: -117 118 6
x1782:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2327 -> £temporary2328 = *£temporary2328

printFormat$18:	; if £temporary2327 -> £temporary2328 == 0 goto 282
x1785:	cmp byte [si], 0	; 3: -128 60 0
x1788:	je printFormat$282	; 4: 15 -124 -52 4

printFormat$19:	; £temporary2332 = format + index
x1792:	mov si, [bp + 6]	; 3: -117 118 6
x1795:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2331 -> £temporary2332 = *£temporary2332

printFormat$21:	; c = £temporary2331 -> £temporary2332
x1798:	mov al, [si]	; 2: -118 4
x1800:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 260
x1803:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x1807:	je printFormat$260	; 4: 15 -124 81 4

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

printFormat$51:	; goto 237
x1960:	jmp printFormat$237	; 3: -23 70 3

printFormat$52:	; plus = 1
x1963:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 280
x1968:	jmp printFormat$280	; 3: -23 19 4

printFormat$54:	; minus = 1
x1971:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 280
x1976:	jmp printFormat$280	; 3: -23 11 4

printFormat$56:	; space = 1
x1979:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 280
x1984:	jmp printFormat$280	; 3: -23 3 4

printFormat$58:	; zero = 1
x1987:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 280
x1992:	jmp printFormat$280	; 3: -23 -5 3

printFormat$60:	; grid = 1
x1995:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 280
x2000:	jmp printFormat$280	; 3: -23 -13 3

printFormat$62:	; period = 1
x2003:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 280
x2008:	jmp printFormat$280	; 3: -23 -21 3

printFormat$64:	; if period != 0 goto 67
x2011:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2015:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x2017:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 280
x2022:	jmp printFormat$280	; 3: -23 -35 3

printFormat$67:	; precision = -1
x2025:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 280
x2030:	jmp printFormat$280	; 3: -23 -43 3

printFormat$69:	; shortInt = 1
x2033:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 280
x2038:	jmp printFormat$280	; 3: -23 -51 3

printFormat$71:	; longInt = 1
x2041:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 280
x2046:	jmp printFormat$280	; 3: -23 -59 3

printFormat$73:	; longDouble = 1
x2049:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 280
x2054:	jmp printFormat$280	; 3: -23 -67 3

printFormat$75:	; if minus == 0 goto 106
x2057:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x2061:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x2065:	mov ax, [g_outChars]	; 3: -95 -14 11
x2068:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2336 = format + index
x2071:	mov si, [bp + 6]	; 3: -117 118 6
x2074:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2335 -> £temporary2336 = *£temporary2336

printFormat$80:	; £temporary2337 = &£temporary2335 -> £temporary2336

printFormat$81:	; parameter £temporary2337, offset 6
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

printFormat$86:	; £temporary2338 = &width
x2104:	mov si, bp	; 2: -119 -18
x2106:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2338, offset 16
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
x2157:	jmp printArgument	; 3: -23 -122 3

printFormat$95:	; post call

printFormat$96:	; £temporary2339 = return_value

printFormat$97:	; arg_list = £temporary2339
x2160:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2341 = g_outChars - startChars
x2163:	mov ax, [g_outChars]	; 3: -95 -14 11
x2166:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x2169:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2341 >= width goto 235
x2172:	cmp ax, [bp + 12]	; 3: 59 70 12
x2175:	jge printFormat$235	; 4: 15 -115 102 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x2179:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x2183:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 -107 8
x2188:	mov [bp + 47], bp	; 3: -119 110 47
x2191:	add bp, 45	; 3: -125 -59 45
x2194:	jmp printChar	; 3: -23 116 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x2197:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 182
x2199:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x2203:	je printFormat$182	; 4: 15 -124 82 1

printFormat$107:	; startChars = g_outChars
x2207:	mov ax, [g_outChars]	; 3: -95 -14 11
x2210:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x2213:	mov ax, [g_outStatus]	; 3: -95 -98 6
x2216:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x2219:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x2224:	mov word [g_outStatus], 2	; 6: -57 6 -98 6 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2345 = format + index
x2230:	mov si, [bp + 6]	; 3: -117 118 6
x2233:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2344 -> £temporary2345 = *£temporary2345

printFormat$114:	; £temporary2346 = &£temporary2344 -> £temporary2345

printFormat$115:	; parameter £temporary2346, offset 6
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

printFormat$120:	; £temporary2347 = &width
x2261:	mov si, bp	; 2: -119 -18
x2263:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2347, offset 16
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

printFormat$127:	; £temporary2348 = &negative
x2298:	mov si, bp	; 2: -119 -18
x2300:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2348, offset 28
x2303:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x2306:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 16 9
x2311:	mov [bp + 49], bp	; 3: -119 110 49
x2314:	add bp, 47	; 3: -125 -59 47
x2317:	jmp printArgument	; 3: -23 -26 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x2320:	mov ax, [bp + 43]	; 3: -117 70 43
x2323:	mov [g_outStatus], ax	; 3: -93 -98 6

printFormat$132:	; field = g_outChars - startChars
x2326:	mov ax, [g_outChars]	; 3: -95 -14 11
x2329:	sub ax, [bp + 41]	; 3: 43 70 41
x2332:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x2335:	mov ax, [bp + 41]	; 3: -117 70 41
x2338:	mov [g_outChars], ax	; 3: -93 -14 11

printFormat$134:	; if negative == 0 goto 141
x2341:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x2345:	je printFormat$141	; 2: 116 23

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 45, offset 6
x2347:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$137:	; call function noellipse-noellipse printChar
x2351:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 61 9
x2356:	mov [bp + 51], bp	; 3: -119 110 51
x2359:	add bp, 49	; 3: -125 -59 49
x2362:	jmp printChar	; 3: -23 -52 9

printFormat$138:	; post call

printFormat$139:	; ++field
x2365:	inc word [bp + 47]	; 3: -1 70 47

printFormat$140:	; goto 154
x2368:	jmp printFormat$154	; 2: -21 57

printFormat$141:	; if plus == 0 goto 148
x2370:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x2374:	je printFormat$148	; 2: 116 23

printFormat$142:	; call header integral zero 0 stack zero 0

printFormat$143:	; parameter 43, offset 6
x2376:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$144:	; call function noellipse-noellipse printChar
x2380:	mov word [bp + 49], printFormat$145	; 5: -57 70 49 90 9
x2385:	mov [bp + 51], bp	; 3: -119 110 51
x2388:	add bp, 49	; 3: -125 -59 49
x2391:	jmp printChar	; 3: -23 -81 9

printFormat$145:	; post call

printFormat$146:	; ++field
x2394:	inc word [bp + 47]	; 3: -1 70 47

printFormat$147:	; goto 154
x2397:	jmp printFormat$154	; 2: -21 28

printFormat$148:	; if space == 0 goto 154
x2399:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x2403:	je printFormat$154	; 2: 116 22

printFormat$149:	; call header integral zero 0 stack zero 0

printFormat$150:	; parameter 32, offset 6
x2405:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$151:	; call function noellipse-noellipse printChar
x2409:	mov word [bp + 49], printFormat$152	; 5: -57 70 49 119 9
x2414:	mov [bp + 51], bp	; 3: -119 110 51
x2417:	add bp, 49	; 3: -125 -59 49
x2420:	jmp printChar	; 3: -23 -110 9

printFormat$152:	; post call

printFormat$153:	; £temporary2360 = field + 1
x2423:	mov ax, [bp + 47]	; 3: -117 70 47
x2426:	inc ax	; 1: 64

printFormat$154:	; ++field
x2427:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; if £temporary2360 >= width goto 161
x2430:	cmp ax, [bp + 12]	; 3: 59 70 12
x2433:	jge printFormat$161	; 2: 125 20

printFormat$156:	; call header integral zero 0 stack zero 0

printFormat$157:	; parameter 48, offset 6
x2435:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$158:	; call function noellipse-noellipse printChar
x2439:	mov word [bp + 49], printFormat$159	; 5: -57 70 49 -107 9
x2444:	mov [bp + 51], bp	; 3: -119 110 51
x2447:	add bp, 49	; 3: -125 -59 49
x2450:	jmp printChar	; 3: -23 116 9

printFormat$159:	; post call

printFormat$160:	; goto 154
x2453:	jmp printFormat$154	; 2: -21 -28

printFormat$161:	; call header integral zero 0 stack zero 0

printFormat$162:	; £temporary2364 = format + index
x2455:	mov si, [bp + 6]	; 3: -117 118 6
x2458:	add si, [bp + 10]	; 3: 3 118 10

printFormat$163:	; £temporary2363 -> £temporary2364 = *£temporary2364

printFormat$164:	; £temporary2365 = &£temporary2363 -> £temporary2364

printFormat$165:	; parameter £temporary2365, offset 6
x2461:	mov [bp + 55], si	; 3: -119 118 55

printFormat$166:	; parameter arg_list, offset 8
x2464:	mov ax, [bp + 8]	; 3: -117 70 8
x2467:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$167:	; parameter 0, offset 10
x2470:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$168:	; parameter 0, offset 12
x2475:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$169:	; parameter grid, offset 14
x2480:	mov ax, [bp + 26]	; 3: -117 70 26
x2483:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$170:	; parameter 0, offset 16
x2486:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$171:	; parameter precision, offset 18
x2491:	mov ax, [bp + 14]	; 3: -117 70 14
x2494:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$172:	; parameter shortInt, offset 20
x2497:	mov ax, [bp + 34]	; 3: -117 70 34
x2500:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$173:	; parameter longInt, offset 22
x2503:	mov ax, [bp + 36]	; 3: -117 70 36
x2506:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$174:	; parameter longDouble, offset 24
x2509:	mov ax, [bp + 38]	; 3: -117 70 38
x2512:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$175:	; parameter 0, offset 26
x2515:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$176:	; parameter 0, offset 28
x2520:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$177:	; call function noellipse-noellipse printArgument
x2525:	mov word [bp + 49], printFormat$178	; 5: -57 70 49 -21 9
x2530:	mov [bp + 51], bp	; 3: -119 110 51
x2533:	add bp, 49	; 3: -125 -59 49
x2536:	jmp printArgument	; 3: -23 11 2

printFormat$178:	; post call

printFormat$179:	; £temporary2366 = return_value

printFormat$180:	; arg_list = £temporary2366
x2539:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$181:	; goto 235
x2542:	jmp printFormat$235	; 3: -23 -8 0

printFormat$182:	; startChars = g_outChars
x2545:	mov ax, [g_outChars]	; 3: -95 -14 11
x2548:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$183:	; oldOutStatus = g_outStatus
x2551:	mov ax, [g_outStatus]	; 3: -95 -98 6
x2554:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$184:	; g_outStatus = 2
x2557:	mov word [g_outStatus], 2	; 6: -57 6 -98 6 2 0

printFormat$185:	; call header integral zero 0 stack zero 0

printFormat$186:	; £temporary2368 = format + index
x2563:	mov si, [bp + 6]	; 3: -117 118 6
x2566:	add si, [bp + 10]	; 3: 3 118 10

printFormat$187:	; £temporary2367 -> £temporary2368 = *£temporary2368

printFormat$188:	; £temporary2369 = &£temporary2367 -> £temporary2368

printFormat$189:	; parameter £temporary2369, offset 6
x2569:	mov [bp + 51], si	; 3: -119 118 51

printFormat$190:	; parameter arg_list, offset 8
x2572:	mov ax, [bp + 8]	; 3: -117 70 8
x2575:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$191:	; parameter plus, offset 10
x2578:	mov ax, [bp + 18]	; 3: -117 70 18
x2581:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$192:	; parameter space, offset 12
x2584:	mov ax, [bp + 22]	; 3: -117 70 22
x2587:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$193:	; parameter grid, offset 14
x2590:	mov ax, [bp + 26]	; 3: -117 70 26
x2593:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$194:	; £temporary2370 = &width
x2596:	mov si, bp	; 2: -119 -18
x2598:	add si, 12	; 3: -125 -58 12

printFormat$195:	; parameter £temporary2370, offset 16
x2601:	mov [bp + 61], si	; 3: -119 118 61

printFormat$196:	; parameter precision, offset 18
x2604:	mov ax, [bp + 14]	; 3: -117 70 14
x2607:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$197:	; parameter shortInt, offset 20
x2610:	mov ax, [bp + 34]	; 3: -117 70 34
x2613:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$198:	; parameter longInt, offset 22
x2616:	mov ax, [bp + 36]	; 3: -117 70 36
x2619:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$199:	; parameter longDouble, offset 24
x2622:	mov ax, [bp + 38]	; 3: -117 70 38
x2625:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$200:	; parameter 1, offset 26
x2628:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$201:	; parameter 0, offset 28
x2633:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$202:	; call function noellipse-noellipse printArgument
x2638:	mov word [bp + 45], printFormat$203	; 5: -57 70 45 92 10
x2643:	mov [bp + 47], bp	; 3: -119 110 47
x2646:	add bp, 45	; 3: -125 -59 45
x2649:	jmp printArgument	; 3: -23 -102 1

printFormat$203:	; post call

printFormat$204:	; g_outStatus = oldOutStatus
x2652:	mov ax, [bp + 43]	; 3: -117 70 43
x2655:	mov [g_outStatus], ax	; 3: -93 -98 6

printFormat$205:	; field = g_outChars - startChars
x2658:	mov ax, [g_outChars]	; 3: -95 -14 11
x2661:	sub ax, [bp + 41]	; 3: 43 70 41
x2664:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$206:	; g_outChars = startChars
x2667:	mov ax, [bp + 41]	; 3: -117 70 41
x2670:	mov [g_outChars], ax	; 3: -93 -14 11

printFormat$207:	; £temporary2373 = field
x2673:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$208:	; ++field
x2676:	inc word [bp + 45]	; 3: -1 70 45

printFormat$209:	; if £temporary2373 >= width goto 215
x2679:	cmp ax, [bp + 12]	; 3: 59 70 12
x2682:	jge printFormat$215	; 2: 125 20

printFormat$210:	; call header integral zero 0 stack zero 0

printFormat$211:	; parameter 32, offset 6
x2684:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$212:	; call function noellipse-noellipse printChar
x2688:	mov word [bp + 47], printFormat$213	; 5: -57 70 47 -114 10
x2693:	mov [bp + 49], bp	; 3: -119 110 49
x2696:	add bp, 47	; 3: -125 -59 47
x2699:	jmp printChar	; 3: -23 123 8

printFormat$213:	; post call

printFormat$214:	; goto 207
x2702:	jmp printFormat$207	; 2: -21 -31

printFormat$215:	; call header integral zero 0 stack zero 0

printFormat$216:	; £temporary2377 = format + index
x2704:	mov si, [bp + 6]	; 3: -117 118 6
x2707:	add si, [bp + 10]	; 3: 3 118 10

printFormat$217:	; £temporary2376 -> £temporary2377 = *£temporary2377

printFormat$218:	; £temporary2378 = &£temporary2376 -> £temporary2377

printFormat$219:	; parameter £temporary2378, offset 6
x2710:	mov [bp + 53], si	; 3: -119 118 53

printFormat$220:	; parameter arg_list, offset 8
x2713:	mov ax, [bp + 8]	; 3: -117 70 8
x2716:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$221:	; parameter plus, offset 10
x2719:	mov ax, [bp + 18]	; 3: -117 70 18
x2722:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$222:	; parameter space, offset 12
x2725:	mov ax, [bp + 22]	; 3: -117 70 22
x2728:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$223:	; parameter grid, offset 14
x2731:	mov ax, [bp + 26]	; 3: -117 70 26
x2734:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$224:	; parameter 0, offset 16
x2737:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$225:	; parameter precision, offset 18
x2742:	mov ax, [bp + 14]	; 3: -117 70 14
x2745:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$226:	; parameter shortInt, offset 20
x2748:	mov ax, [bp + 34]	; 3: -117 70 34
x2751:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$227:	; parameter longInt, offset 22
x2754:	mov ax, [bp + 36]	; 3: -117 70 36
x2757:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$228:	; parameter longDouble, offset 24
x2760:	mov ax, [bp + 38]	; 3: -117 70 38
x2763:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$229:	; parameter 1, offset 26
x2766:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$230:	; parameter 0, offset 28
x2771:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$231:	; call function noellipse-noellipse printArgument
x2776:	mov word [bp + 47], printFormat$232	; 5: -57 70 47 -26 10
x2781:	mov [bp + 49], bp	; 3: -119 110 49
x2784:	add bp, 47	; 3: -125 -59 47
x2787:	jmp printArgument	; 3: -23 16 1

printFormat$232:	; post call

printFormat$233:	; £temporary2379 = return_value

printFormat$234:	; arg_list = £temporary2379
x2790:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$235:	; percent = 0
x2793:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$236:	; goto 280
x2798:	jmp printFormat$280	; 3: -23 -43 0

printFormat$237:	; value = 0
x2801:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$238:	; call header integral zero 0 stack zero 0

printFormat$239:	; £temporary2382 = int_to_int c (Signed_Char -> Signed_Int)
x2806:	mov al, [bp + 40]	; 3: -118 70 40
x2809:	and ax, 255	; 3: 37 -1 0
x2812:	cmp al, 0	; 2: 60 0
x2814:	jge printFormat$240	; 2: 125 4
x2816:	neg al	; 2: -10 -40
x2818:	neg ax	; 2: -9 -40

printFormat$240:	; parameter £temporary2382, offset 6
x2820:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$241:	; call function noellipse-noellipse isdigit
x2823:	mov word [bp + 43], printFormat$242	; 5: -57 70 43 21 11
x2828:	mov [bp + 45], bp	; 3: -119 110 45
x2831:	add bp, 43	; 3: -125 -59 43
x2834:	jmp isdigit	; 3: -23 66 23

printFormat$242:	; post call

printFormat$243:	; £temporary2383 = return_value

printFormat$244:	; if £temporary2383 == 0 goto 254
x2837:	cmp bx, 0	; 3: -125 -5 0
x2840:	je printFormat$254	; 2: 116 49

printFormat$245:	; £temporary2384 = value * 10
x2842:	mov ax, [bp + 41]	; 3: -117 70 41
x2845:	xor dx, dx	; 2: 49 -46
x2847:	imul word [int2$10#]	; 4: -9 46 -12 11

printFormat$246:	; £temporary2385 = c - 48
x2851:	mov bl, [bp + 40]	; 3: -118 94 40
x2854:	sub bl, 48	; 3: -128 -21 48

printFormat$247:	; £temporary2386 = int_to_int £temporary2385 (Signed_Char -> Signed_Int)
x2857:	and bx, 255	; 4: -127 -29 -1 0
x2861:	cmp bl, 0	; 3: -128 -5 0
x2864:	jge printFormat$248	; 2: 125 4
x2866:	neg bl	; 2: -10 -37
x2868:	neg bx	; 2: -9 -37

printFormat$248:	; value = £temporary2384 + £temporary2386
x2870:	add ax, bx	; 2: 1 -40
x2872:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$249:	; £temporary2388 = index + 1
x2875:	mov ax, [bp + 10]	; 3: -117 70 10
x2878:	inc ax	; 1: 64

printFormat$250:	; £temporary2390 = format + £temporary2388
x2879:	mov si, [bp + 6]	; 3: -117 118 6
x2882:	add si, ax	; 2: 1 -58

printFormat$251:	; £temporary2389 -> £temporary2390 = *£temporary2390

printFormat$252:	; c = £temporary2389 -> £temporary2390
x2884:	mov al, [si]	; 2: -118 4
x2886:	mov [bp + 40], al	; 3: -120 70 40

printFormat$253:	; goto 238
x2889:	jmp printFormat$238	; 2: -21 -85

printFormat$254:	; --index
x2891:	dec word [bp + 10]	; 3: -1 78 10

printFormat$255:	; if period != 0 goto 258
x2894:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2898:	jne printFormat$258	; 2: 117 8

printFormat$256:	; width = value
x2900:	mov ax, [bp + 41]	; 3: -117 70 41
x2903:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$257:	; goto 280
x2906:	jmp printFormat$280	; 2: -21 106

printFormat$258:	; precision = value
x2908:	mov ax, [bp + 41]	; 3: -117 70 41
x2911:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$259:	; goto 280
x2914:	jmp printFormat$280	; 2: -21 98

printFormat$260:	; if c != 37 goto 276
x2916:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x2920:	jne printFormat$276	; 2: 117 72

printFormat$261:	; percent = 1
x2922:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$262:	; plus = 0
x2927:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$263:	; minus = 0
x2932:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$264:	; space = 0
x2937:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$265:	; zero = 0
x2942:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$266:	; grid = 0
x2947:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$267:	; widthStar = 0
x2952:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$268:	; period = 0
x2957:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$269:	; precisionStar = 0
x2962:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$270:	; shortInt = 0
x2967:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$271:	; longInt = 0
x2972:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$272:	; longDouble = 0
x2977:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$273:	; width = 0
x2982:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$274:	; precision = 0
x2987:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$275:	; goto 280
x2992:	jmp printFormat$280	; 2: -21 20

printFormat$276:	; call header integral zero 0 stack zero 0

printFormat$277:	; parameter c, offset 6
x2994:	mov al, [bp + 40]	; 3: -118 70 40
x2997:	mov [bp + 47], al	; 3: -120 70 47

printFormat$278:	; call function noellipse-noellipse printChar
x3000:	mov word [bp + 41], printFormat$279	; 5: -57 70 41 -58 11
x3005:	mov [bp + 43], bp	; 3: -119 110 43
x3008:	add bp, 41	; 3: -125 -59 41
x3011:	jmp printChar	; 3: -23 67 7

printFormat$279:	; post call

printFormat$280:	; ++index
x3014:	inc word [bp + 10]	; 3: -1 70 10

printFormat$281:	; goto 16
x3017:	jmp printFormat$16	; 3: -23 39 -5

printFormat$282:	; if g_outStatus != 1 goto 288
x3020:	cmp word [g_outStatus], 1	; 5: -125 62 -98 6 1
x3025:	jne printFormat$288	; 2: 117 16

printFormat$283:	; £temporary2399 = int_to_int g_outDevice (Pointer -> Pointer)
x3027:	mov ax, [g_outDevice]	; 3: -95 -96 6

printFormat$284:	; outString = £temporary2399
x3030:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$285:	; £temporary2401 = outString + g_outChars
x3033:	mov si, [bp + 40]	; 3: -117 118 40
x3036:	add si, [g_outChars]	; 4: 3 54 -14 11

printFormat$286:	; £temporary2400 -> £temporary2401 = *£temporary2401

printFormat$287:	; £temporary2400 -> £temporary2401 = 0
x3040:	mov byte [si], 0	; 3: -58 4 0

printFormat$288:	; return_value = g_outChars
x3043:	mov bx, [g_outChars]	; 4: -117 30 -14 11

printFormat$289:	; return
x3047:	mov ax, [bp]	; 3: -117 70 0
x3050:	mov di, [bp + 4]	; 3: -117 126 4
x3053:	mov bp, [bp + 2]	; 3: -117 110 2
x3056:	jmp ax	; 2: -1 -32

printFormat$290:	; function end printFormat

g_outChars:
x3058:	db 0, 0	; 2: 0 0

int2$10#:
x3060:	dw 10	; 2: 10 0

printArgument:	; £temporary2101 -> format = *format
x3062:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2101 -> format
x3065:	mov al, [si]	; 2: -118 4
x3067:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x3070:	mov al, [bp + 30]	; 3: -118 70 30
x3073:	cmp al, 100	; 2: 60 100
x3075:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x3077:	cmp al, 105	; 2: 60 105
x3079:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x3081:	cmp al, 99	; 2: 60 99
x3083:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x3087:	cmp al, 115	; 2: 60 115
x3089:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x3093:	cmp al, 88	; 2: 60 88
x3095:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x3099:	cmp al, 120	; 2: 60 120
x3101:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x3105:	cmp al, 98	; 2: 60 98
x3107:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x3111:	cmp al, 111	; 2: 60 111
x3113:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x3117:	cmp al, 117	; 2: 60 117
x3119:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x3123:	cmp al, 71	; 2: 60 71
x3125:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x3129:	cmp al, 103	; 2: 60 103
x3131:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x3135:	cmp al, 69	; 2: 60 69
x3137:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x3141:	cmp al, 101	; 2: 60 101
x3143:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x3147:	cmp al, 102	; 2: 60 102
x3149:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x3153:	cmp al, 112	; 2: 60 112
x3155:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x3159:	cmp al, 110	; 2: 60 110
x3161:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x3165:	cmp al, 37	; 2: 60 37
x3167:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x3171:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x3174:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3178:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x3180:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2103 = arg_list - 2
x3184:	mov si, [bp + 8]	; 3: -117 118 8
x3187:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2104 = int_to_int £temporary2103 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2105 -> £temporary2104 = *£temporary2104

printArgument$26:	; £temporary2106 = int_to_int £temporary2105 -> £temporary2104 (Signed_Int -> Signed_Short_Int)
x3190:	mov ax, [si]	; 2: -117 4
x3192:	cmp ax, 0	; 3: -125 -8 0
x3195:	jge printArgument$27	; 2: 125 4
x3197:	neg ax	; 2: -9 -40
x3199:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2107 = int_to_int £temporary2106 (Signed_Short_Int -> Signed_Long_Int)
x3201:	and eax, 255	; 6: 102 37 -1 0 0 0
x3207:	cmp al, 0	; 2: 60 0
x3209:	jge printArgument$28	; 2: 125 5
x3211:	neg al	; 2: -10 -40
x3213:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2107
x3216:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x3220:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x3222:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3226:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x3228:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2109 = arg_list - 4
x3232:	mov si, [bp + 8]	; 3: -117 118 8
x3235:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2110 = int_to_int £temporary2109 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2111 -> £temporary2110 = *£temporary2110

printArgument$35:	; longValue = £temporary2111 -> £temporary2110
x3238:	mov eax, [si]	; 3: 102 -117 4
x3241:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x3245:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x3247:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2113 = arg_list - 2
x3251:	mov si, [bp + 8]	; 3: -117 118 8
x3254:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2114 = int_to_int £temporary2113 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2115 -> £temporary2114 = *£temporary2114

printArgument$41:	; £temporary2116 = int_to_int £temporary2115 -> £temporary2114 (Signed_Int -> Signed_Long_Int)
x3257:	mov ax, [si]	; 2: -117 4
x3259:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3265:	cmp ax, 0	; 3: -125 -8 0
x3268:	jge printArgument$42	; 2: 125 5
x3270:	neg ax	; 2: -9 -40
x3272:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2116
x3275:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x3279:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3283:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2120 -> negativePtr = *negativePtr
x3285:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x3288:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x3293:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2122 = 1
x3295:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x3298:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2122 = 0
x3300:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2120 -> negativePtr = £temporary2122
x3303:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x3305:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3309:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x3311:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3315:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x3319:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 5 13
x3324:	mov [bp + 50], bp	; 3: -119 110 50
x3327:	add bp, 48	; 3: -125 -59 48
x3330:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2125 = return_value

printArgument$56:	; longValue = £temporary2125
x3333:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x3337:	mov ax, [bp + 8]	; 3: -117 70 8
x3340:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x3343:	mov ax, [bp + 16]	; 3: -117 70 16
x3346:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2126 = &precision
x3349:	mov si, bp	; 2: -119 -18
x3351:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2126, offset 10
x3354:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x3357:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 43 13
x3362:	mov [bp + 50], bp	; 3: -119 110 50
x3365:	add bp, 48	; 3: -125 -59 48
x3368:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2127 = return_value

printArgument$65:	; arg_list = £temporary2127
x3371:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x3374:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3378:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x3382:	mov ax, [bp + 10]	; 3: -117 70 10
x3385:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x3388:	mov ax, [bp + 12]	; 3: -117 70 12
x3391:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x3394:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 80 13
x3399:	mov [bp + 50], bp	; 3: -119 110 50
x3402:	add bp, 48	; 3: -125 -59 48
x3405:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x3408:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x3411:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2130 = arg_list - 2
x3415:	mov si, [bp + 8]	; 3: -117 118 8
x3418:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2131 = int_to_int £temporary2130 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2132 -> £temporary2131 = *£temporary2131

printArgument$77:	; £temporary2133 = int_to_int £temporary2132 -> £temporary2131 (Signed_Int -> Signed_Char)
x3421:	mov ax, [si]	; 2: -117 4
x3423:	cmp ax, 0	; 3: -125 -8 0
x3426:	jge printArgument$78	; 2: 125 4
x3428:	neg ax	; 2: -9 -40
x3430:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2133
x3432:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x3435:	mov ax, [bp + 8]	; 3: -117 70 8
x3438:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x3441:	mov ax, [bp + 16]	; 3: -117 70 16
x3444:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2134 = &precision
x3447:	mov si, bp	; 2: -119 -18
x3449:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2134, offset 10
x3452:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x3455:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -115 13
x3460:	mov [bp + 46], bp	; 3: -119 110 46
x3463:	add bp, 44	; 3: -125 -59 44
x3466:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2135 = return_value

printArgument$87:	; arg_list = £temporary2135
x3469:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x3472:	mov al, [bp + 31]	; 3: -118 70 31
x3475:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x3478:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -92 13
x3483:	mov [bp + 46], bp	; 3: -119 110 46
x3486:	add bp, 44	; 3: -125 -59 44
x3489:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x3492:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x3495:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2138 = arg_list - 2
x3499:	mov si, [bp + 8]	; 3: -117 118 8
x3502:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2139 = int_to_int £temporary2138 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2140 -> £temporary2139 = *£temporary2139

printArgument$97:	; stringValue = £temporary2140 -> £temporary2139
x3505:	mov ax, [si]	; 2: -117 4
x3507:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x3510:	mov ax, [bp + 8]	; 3: -117 70 8
x3513:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x3516:	mov ax, [bp + 16]	; 3: -117 70 16
x3519:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2141 = &precision
x3522:	mov si, bp	; 2: -119 -18
x3524:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2141, offset 10
x3527:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x3530:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -40 13
x3535:	mov [bp + 48], bp	; 3: -119 110 48
x3538:	add bp, 46	; 3: -125 -59 46
x3541:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2142 = return_value

printArgument$106:	; arg_list = £temporary2142
x3544:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x3547:	mov ax, [bp + 44]	; 3: -117 70 44
x3550:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x3553:	mov ax, [bp + 18]	; 3: -117 70 18
x3556:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x3559:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -11 13
x3564:	mov [bp + 48], bp	; 3: -119 110 48
x3567:	add bp, 46	; 3: -125 -59 46
x3570:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x3573:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x3576:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x3580:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2158 = 10
x3582:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x3588:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x3590:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x3594:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2154 = 8
x3596:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x3602:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x3604:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x3608:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2150 = 2
x3610:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x3616:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2150 = 16
x3618:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2154 = £temporary2150

printArgument$124:	; £temporary2158 = £temporary2154

printArgument$125:	; base = £temporary2158
x3624:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x3628:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3632:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x3634:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2160 = arg_list - 2
x3638:	mov si, [bp + 8]	; 3: -117 118 8
x3641:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2161 = int_to_int £temporary2160 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2162 -> £temporary2161 = *£temporary2161

printArgument$131:	; £temporary2163 = int_to_int £temporary2162 -> £temporary2161 (Unsigned_Int -> Unsigned_Short_Int)
x3644:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2164 = int_to_int £temporary2163 (Unsigned_Short_Int -> Unsigned_Long_Int)
x3646:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2164
x3652:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x3656:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x3658:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3662:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x3664:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2166 = arg_list - 4
x3668:	mov si, [bp + 8]	; 3: -117 118 8
x3671:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2167 = int_to_int £temporary2166 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2168 -> £temporary2167 = *£temporary2167

printArgument$140:	; value = £temporary2168 -> £temporary2167
x3674:	mov eax, [si]	; 3: 102 -117 4
x3677:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x3681:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x3683:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2170 = arg_list - 2
x3687:	mov si, [bp + 8]	; 3: -117 118 8
x3690:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2171 = int_to_int £temporary2170 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2172 -> £temporary2171 = *£temporary2171

printArgument$146:	; £temporary2173 = int_to_int £temporary2172 -> £temporary2171 (Unsigned_Int -> Unsigned_Long_Int)
x3693:	mov ax, [si]	; 2: -117 4
x3695:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2173
x3701:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x3705:	mov ax, [bp + 8]	; 3: -117 70 8
x3708:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x3711:	mov ax, [bp + 16]	; 3: -117 70 16
x3714:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2176 = &precision
x3717:	mov si, bp	; 2: -119 -18
x3719:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2176, offset 10
x3722:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x3725:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -101 14
x3730:	mov [bp + 54], bp	; 3: -119 110 54
x3733:	add bp, 52	; 3: -125 -59 52
x3736:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2177 = return_value

printArgument$156:	; arg_list = £temporary2177
x3739:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x3742:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x3746:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x3750:	mov ax, [bp + 10]	; 3: -117 70 10
x3753:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x3756:	mov ax, [bp + 12]	; 3: -117 70 12
x3759:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x3762:	mov ax, [bp + 14]	; 3: -117 70 14
x3765:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x3768:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3772:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2178 = int_to_int c (Signed_Char -> Signed_Int)
x3776:	mov al, [bp + 30]	; 3: -118 70 30
x3779:	and ax, 255	; 3: 37 -1 0
x3782:	cmp al, 0	; 2: 60 0
x3784:	jge printArgument$165	; 2: 125 4
x3786:	neg al	; 2: -10 -40
x3788:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2178, offset 26
x3790:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x3793:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -33 14
x3798:	mov [bp + 74], bp	; 3: -119 110 74
x3801:	add bp, 72	; 3: -125 -59 72
x3804:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2179 = return_value

printArgument$169:	; parameter £temporary2179, offset 20
x3807:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x3810:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -16 14
x3815:	mov [bp + 54], bp	; 3: -119 110 54
x3818:	add bp, 52	; 3: -125 -59 52
x3821:	jmp printUnsignedLong	; 3: -23 34 12

printArgument$171:	; post call

printArgument$172:	; goto 359
x3824:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x3827:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3831:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x3833:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2182 = arg_list - 8
x3837:	mov si, [bp + 8]	; 3: -117 118 8
x3840:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2183 = int_to_int £temporary2182 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2184 -> £temporary2183 = *£temporary2183

printArgument$178:	; push float £temporary2184 -> £temporary2183
x3843:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x3845:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x3848:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x3851:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x3854:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x3859:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x3864:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x3869:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x3874:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 48 15
x3879:	mov [bp + 46], bp	; 3: -119 110 46
x3882:	add bp, 44	; 3: -125 -59 44
x3885:	jmp printLongDoublePlain	; 3: -23 -115 13

printArgument$188:	; post call

printArgument$189:	; goto 196
x3888:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x3890:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2187 = arg_list - 8
x3894:	mov si, [bp + 8]	; 3: -117 118 8
x3897:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2188 = int_to_int £temporary2187 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2189 -> £temporary2188 = *£temporary2188

printArgument$194:	; push float £temporary2189 -> £temporary2188
x3900:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x3902:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x3905:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3909:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2193 -> negativePtr = *negativePtr
x3911:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x3914:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x3917:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x3919:	fcompp	; 2: -34 -39
x3921:	fstsw ax	; 3: -101 -33 -32
x3924:	sahf	; 1: -98
x3925:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2195 = 1
x3927:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x3930:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2195 = 0
x3932:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2193 -> negativePtr = £temporary2195
x3935:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x3937:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3941:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x3943:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x3946:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x3949:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 123 15
x3954:	mov [bp + 46], bp	; 3: -119 110 46
x3957:	add bp, 44	; 3: -125 -59 44
x3960:	jmp fabs	; 3: -23 -125 14

printArgument$210:	; post call

printArgument$211:	; £temporary2198 = return_value

printArgument$212:	; pop float longDoubleValue
x3963:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x3966:	mov ax, [bp + 8]	; 3: -117 70 8
x3969:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x3972:	mov ax, [bp + 16]	; 3: -117 70 16
x3975:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2199 = &precision
x3978:	mov si, bp	; 2: -119 -18
x3980:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2199, offset 10
x3983:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x3986:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -96 15
x3991:	mov [bp + 46], bp	; 3: -119 110 46
x3994:	add bp, 44	; 3: -125 -59 44
x3997:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2200 = return_value

printArgument$221:	; arg_list = £temporary2200
x4000:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x4003:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x4007:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x4009:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x4012:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x4015:	mov ax, [bp + 10]	; 3: -117 70 10
x4018:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x4021:	mov ax, [bp + 12]	; 3: -117 70 12
x4024:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x4027:	mov ax, [bp + 14]	; 3: -117 70 14
x4030:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x4033:	mov ax, [bp + 18]	; 3: -117 70 18
x4036:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x4039:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -43 15
x4044:	mov [bp + 46], bp	; 3: -119 110 46
x4047:	add bp, 44	; 3: -125 -59 44
x4050:	jmp printLongDoublePlain	; 3: -23 -24 12

printArgument$231:	; post call

printArgument$232:	; goto 359
x4053:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2203 = int_to_int c (Signed_Char -> Signed_Int)
x4056:	mov al, [bp + 30]	; 3: -118 70 30
x4059:	and ax, 255	; 3: 37 -1 0
x4062:	cmp al, 0	; 2: 60 0
x4064:	jge printArgument$235	; 2: 125 4
x4066:	neg al	; 2: -10 -40
x4068:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2203, offset 6
x4070:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x4073:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -9 15
x4078:	mov [bp + 46], bp	; 3: -119 110 46
x4081:	add bp, 44	; 3: -125 -59 44
x4084:	jmp tolower	; 3: -23 41 14

printArgument$237:	; post call

printArgument$238:	; £temporary2204 = return_value

printArgument$239:	; if £temporary2204 != 101 goto 257
x4087:	cmp bx, 101	; 3: -125 -5 101
x4090:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x4092:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x4095:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x4098:	mov ax, [bp + 10]	; 3: -117 70 10
x4101:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x4104:	mov ax, [bp + 12]	; 3: -117 70 12
x4107:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x4110:	mov ax, [bp + 14]	; 3: -117 70 14
x4113:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x4116:	mov ax, [bp + 18]	; 3: -117 70 18
x4119:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2206 = int_to_int c (Signed_Char -> Signed_Int)
x4122:	mov al, [bp + 30]	; 3: -118 70 30
x4125:	and ax, 255	; 3: 37 -1 0
x4128:	cmp al, 0	; 2: 60 0
x4130:	jge printArgument$249	; 2: 125 4
x4132:	neg al	; 2: -10 -40
x4134:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2206, offset 28
x4136:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x4139:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 57 16
x4144:	mov [bp + 68], bp	; 3: -119 110 68
x4147:	add bp, 66	; 3: -125 -59 66
x4150:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2207 = return_value

printArgument$253:	; parameter £temporary2207, offset 22
x4153:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x4156:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 74 16
x4161:	mov [bp + 46], bp	; 3: -119 110 46
x4164:	add bp, 44	; 3: -125 -59 44
x4167:	jmp printLongDoubleExpo	; 3: -23 119 14

printArgument$255:	; post call

printArgument$256:	; goto 359
x4170:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x4173:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x4176:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x4179:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 97 16
x4184:	mov [bp + 46], bp	; 3: -119 110 46
x4187:	add bp, 44	; 3: -125 -59 44
x4190:	jmp fabs	; 3: -23 -99 13

printArgument$262:	; post call

printArgument$263:	; £temporary2209 = return_value

printArgument$264:	; parameter £temporary2209, offset 6
x4193:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x4196:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 114 16
x4201:	mov [bp + 46], bp	; 3: -119 110 46
x4204:	add bp, 44	; 3: -125 -59 44
x4207:	jmp log10	; 3: -23 -74 15

printArgument$266:	; post call

printArgument$267:	; £temporary2210 = return_value

printArgument$268:	; £temporary2211 = float_to_int £temporary2210 (Double -> Signed_Int)
x4210:	fistp word [container2bytes#]	; 4: -33 30 8 18
x4214:	mov ax, [container2bytes#]	; 3: -95 8 18

printArgument$269:	; expo = £temporary2211
x4217:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x4220:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x4224:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x4226:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x4230:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x4232:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x4235:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x4238:	mov ax, [bp + 10]	; 3: -117 70 10
x4241:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x4244:	mov ax, [bp + 12]	; 3: -117 70 12
x4247:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x4250:	mov ax, [bp + 14]	; 3: -117 70 14
x4253:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x4256:	mov ax, [bp + 18]	; 3: -117 70 18
x4259:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x4262:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -76 16
x4267:	mov [bp + 48], bp	; 3: -119 110 48
x4270:	add bp, 46	; 3: -125 -59 46
x4273:	jmp printLongDoublePlain	; 3: -23 9 12

printArgument$280:	; post call

printArgument$281:	; goto 359
x4276:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x4279:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x4282:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x4285:	mov ax, [bp + 10]	; 3: -117 70 10
x4288:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x4291:	mov ax, [bp + 12]	; 3: -117 70 12
x4294:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x4297:	mov ax, [bp + 14]	; 3: -117 70 14
x4300:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x4303:	mov ax, [bp + 18]	; 3: -117 70 18
x4306:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2216 = int_to_int c (Signed_Char -> Signed_Int)
x4309:	mov al, [bp + 30]	; 3: -118 70 30
x4312:	and ax, 255	; 3: 37 -1 0
x4315:	cmp al, 0	; 2: 60 0
x4317:	jge printArgument$291	; 2: 125 4
x4319:	neg al	; 2: -10 -40
x4321:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2216, offset 28
x4323:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x4326:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -12 16
x4331:	mov [bp + 70], bp	; 3: -119 110 70
x4334:	add bp, 68	; 3: -125 -59 68
x4337:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2217 = return_value

printArgument$295:	; parameter £temporary2217, offset 22
x4340:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x4343:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 5 17
x4348:	mov [bp + 48], bp	; 3: -119 110 48
x4351:	add bp, 46	; 3: -125 -59 46
x4354:	jmp printLongDoubleExpo	; 3: -23 -68 13

printArgument$297:	; post call

printArgument$298:	; goto 359
x4357:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x4360:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2220 = arg_list - 2
x4364:	mov si, [bp + 8]	; 3: -117 118 8
x4367:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2221 = int_to_int £temporary2220 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2222 -> £temporary2221 = *£temporary2221

printArgument$303:	; ptrValue = £temporary2222 -> £temporary2221
x4370:	mov ax, [si]	; 2: -117 4
x4372:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x4375:	mov ax, [bp + 8]	; 3: -117 70 8
x4378:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x4381:	mov ax, [bp + 16]	; 3: -117 70 16
x4384:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2223 = &precision
x4387:	mov si, bp	; 2: -119 -18
x4389:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2223, offset 10
x4392:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x4395:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 57 17
x4400:	mov [bp + 46], bp	; 3: -119 110 46
x4403:	add bp, 44	; 3: -125 -59 44
x4406:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2224 = return_value

printArgument$312:	; arg_list = £temporary2224
x4409:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2225 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x4412:	mov ax, [bp + 42]	; 3: -117 70 42
x4415:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2225, offset 6
x4421:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x4425:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x4430:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x4435:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x4440:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x4448:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x4453:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 115 17
x4458:	mov [bp + 46], bp	; 3: -119 110 46
x4461:	add bp, 44	; 3: -125 -59 44
x4464:	jmp printUnsignedLong	; 3: -23 -97 9

printArgument$322:	; post call

printArgument$323:	; goto 359
x4467:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x4470:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2228 = arg_list - 2
x4474:	mov si, [bp + 8]	; 3: -117 118 8
x4477:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2229 = int_to_int £temporary2228 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2230 -> £temporary2229 = *£temporary2229

printArgument$328:	; ptrValue = £temporary2230 -> £temporary2229
x4480:	mov ax, [si]	; 2: -117 4
x4482:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x4485:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2232 = arg_list - 2
x4489:	mov si, [bp + 8]	; 3: -117 118 8
x4492:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2233 = int_to_int £temporary2232 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2234 -> £temporary2233 = *£temporary2233

printArgument$333:	; intPtr = £temporary2234 -> £temporary2233
x4495:	mov ax, [si]	; 2: -117 4
x4497:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x4500:	mov ax, [bp + 8]	; 3: -117 70 8
x4503:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x4506:	mov ax, [bp + 16]	; 3: -117 70 16
x4509:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2235 = &precision
x4512:	mov si, bp	; 2: -119 -18
x4514:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2235, offset 10
x4517:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x4520:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -74 17
x4525:	mov [bp + 46], bp	; 3: -119 110 46
x4528:	add bp, 44	; 3: -125 -59 44
x4531:	nop	; 1: -112
x4532:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2236 = return_value

printArgument$342:	; arg_list = £temporary2236
x4534:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2237 -> intPtr = *intPtr
x4537:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2237 -> intPtr = g_outChars
x4540:	mov ax, [g_outChars]	; 3: -95 -14 11
x4543:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x4545:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x4547:	mov ax, [bp + 8]	; 3: -117 70 8
x4550:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x4553:	mov ax, [bp + 16]	; 3: -117 70 16
x4556:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2238 = &precision
x4559:	mov si, bp	; 2: -119 -18
x4561:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2238, offset 10
x4564:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x4567:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -27 17
x4572:	mov [bp + 46], bp	; 3: -119 110 46
x4575:	add bp, 44	; 3: -125 -59 44
x4578:	nop	; 1: -112
x4579:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2239 = return_value

printArgument$354:	; arg_list = £temporary2239
x4581:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x4584:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x4588:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -6 17
x4593:	mov [bp + 46], bp	; 3: -119 110 46
x4596:	add bp, 44	; 3: -125 -59 44
x4599:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x4602:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x4605:	mov ax, [bp]	; 3: -117 70 0
x4608:	mov di, [bp + 4]	; 3: -117 126 4
x4611:	mov bp, [bp + 2]	; 3: -117 110 2
x4614:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x4616:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x4618:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4623:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2705 = -value
x4625:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x4629:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2709 = £temporary2705

labs$3:	; goto 5
x4632:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2709 = value
x4634:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2709

labs$6:	; return
x4638:	mov ax, [bp]	; 3: -117 70 0
x4641:	mov di, [bp + 4]	; 3: -117 126 4
x4644:	mov bp, [bp + 2]	; 3: -117 110 2
x4647:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x4649:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4653:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary2083 -> widthPtr = *widthPtr
x4655:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary2083 -> widthPtr != -1 goto 9
x4658:	cmp word [si], -1	; 3: -125 60 -1
x4661:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary2086 -> widthPtr = *widthPtr
x4663:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x4666:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary2088 = arg_list - 2
x4670:	mov di, [bp + 6]	; 3: -117 126 6
x4673:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary2089 = int_to_int £temporary2088 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary2090 -> £temporary2089 = *£temporary2089

checkWidthAndPrecision$8:	; £temporary2086 -> widthPtr = £temporary2090 -> £temporary2089
x4676:	mov ax, [di]	; 2: -117 5
x4678:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x4680:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4684:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary2092 -> precisionPtr = *precisionPtr
x4686:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary2092 -> precisionPtr != -1 goto 18
x4689:	cmp word [si], -1	; 3: -125 60 -1
x4692:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2095 -> precisionPtr = *precisionPtr
x4694:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x4697:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2097 = arg_list - 2
x4701:	mov di, [bp + 6]	; 3: -117 126 6
x4704:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2098 = int_to_int £temporary2097 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2099 -> £temporary2098 = *£temporary2098

checkWidthAndPrecision$17:	; £temporary2095 -> precisionPtr = £temporary2099 -> £temporary2098
x4707:	mov ax, [di]	; 2: -117 5
x4709:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x4711:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x4714:	mov ax, [bp]	; 3: -117 70 0
x4717:	mov di, [bp + 4]	; 3: -117 126 4
x4720:	mov bp, [bp + 2]	; 3: -117 110 2
x4723:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x4725:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4730:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1938 = -longValue
x4732:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4736:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1938
x4739:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x4743:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x4747:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -103 18
x4752:	mov [bp + 16], bp	; 3: -119 110 16
x4755:	add bp, 14	; 3: -125 -59 14
x4758:	nop	; 1: -112
x4759:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x4761:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x4763:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4767:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x4769:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x4773:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -77 18
x4778:	mov [bp + 16], bp	; 3: -119 110 16
x4781:	add bp, 14	; 3: -125 -59 14
x4784:	nop	; 1: -112
x4785:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x4787:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x4789:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4793:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x4795:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x4799:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -51 18
x4804:	mov [bp + 16], bp	; 3: -119 110 16
x4807:	add bp, 14	; 3: -125 -59 14
x4810:	nop	; 1: -112
x4811:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x4813:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4818:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x4820:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x4824:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -26 18
x4829:	mov [bp + 16], bp	; 3: -119 110 16
x4832:	add bp, 14	; 3: -125 -59 14
x4835:	nop	; 1: -112
x4836:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x4838:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x4840:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4844:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x4848:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -2 18
x4853:	mov [bp + 16], bp	; 3: -119 110 16
x4856:	add bp, 14	; 3: -125 -59 14
x4859:	nop	; 1: -112
x4860:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x4862:	mov ax, [bp]	; 3: -117 70 0
x4865:	mov di, [bp + 4]	; 3: -117 126 4
x4868:	mov bp, [bp + 2]	; 3: -117 110 2
x4871:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x4873:	mov ax, [g_outStatus]	; 3: -95 -98 6
x4876:	cmp ax, 0	; 3: -125 -8 0
x4879:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x4881:	cmp ax, 1	; 3: -125 -8 1
x4884:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x4886:	cmp ax, 2	; 3: -125 -8 2
x4889:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x4891:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1880 = int_to_int g_outDevice (Pointer -> Pointer)
x4893:	mov ax, [g_outDevice]	; 3: -95 -96 6

printChar$6:	; stream = £temporary1880
x4896:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x4899:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1883 -> stream = *stream, offset 2
x4901:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1883 -> stream
x4904:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x4907:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1886 = &c
x4910:	mov dx, bp	; 2: -119 -22
x4912:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1886

printChar$13:	; interrupt 33
x4915:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x4917:	inc word [g_outChars]	; 4: -1 6 -14 11

printChar$15:	; goto 25
x4921:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1888 = int_to_int g_outDevice (Pointer -> Pointer)
x4923:	mov ax, [g_outDevice]	; 3: -95 -96 6

printChar$17:	; outString = £temporary1888
x4926:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1889 = g_outChars
x4929:	mov ax, [g_outChars]	; 3: -95 -14 11

printChar$19:	; ++g_outChars
x4932:	inc word [g_outChars]	; 4: -1 6 -14 11

printChar$20:	; £temporary1891 = outString + £temporary1889
x4936:	mov si, [bp + 9]	; 3: -117 118 9
x4939:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1890 -> £temporary1891 = *£temporary1891

printChar$22:	; £temporary1890 -> £temporary1891 = c
x4941:	mov al, [bp + 6]	; 3: -118 70 6
x4944:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x4946:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x4948:	inc word [g_outChars]	; 4: -1 6 -14 11

printChar$25:	; return
x4952:	mov ax, [bp]	; 3: -117 70 0
x4955:	mov di, [bp + 4]	; 3: -117 126 4
x4958:	mov bp, [bp + 2]	; 3: -117 110 2
x4961:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x4963:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4968:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1928 = longValue % 10
x4970:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4974:	xor edx, edx	; 3: 102 49 -46
x4977:	idiv dword [int4$10#]	; 5: 102 -9 62 -51 19

printLongIntRec$2:	; £temporary1929 = int_to_int £temporary1928 (Signed_Long_Int -> Signed_Int)
x4982:	cmp edx, 0	; 4: 102 -125 -6 0
x4986:	jge printLongIntRec$3	; 2: 125 5
x4988:	neg edx	; 3: 102 -9 -38
x4991:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1929
x4993:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1930 = longValue / 10
x4996:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x5000:	xor edx, edx	; 3: 102 49 -46
x5003:	idiv dword [int4$10#]	; 5: 102 -9 62 -51 19

printLongIntRec$6:	; parameter £temporary1930, offset 6
x5008:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x5012:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -94 19
x5017:	mov [bp + 14], bp	; 3: -119 110 14
x5020:	add bp, 12	; 3: -125 -59 12
x5023:	nop	; 1: -112
x5024:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1932 = digit + 48
x5026:	mov ax, [bp + 10]	; 3: -117 70 10
x5029:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1933 = int_to_int £temporary1932 (Signed_Int -> Signed_Char)
x5032:	cmp ax, 0	; 3: -125 -8 0
x5035:	jge printLongIntRec$12	; 2: 125 4
x5037:	neg ax	; 2: -9 -40
x5039:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1933, offset 6
x5041:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x5044:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -62 19
x5049:	mov [bp + 14], bp	; 3: -119 110 14
x5052:	add bp, 12	; 3: -125 -59 12
x5055:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x5058:	mov ax, [bp]	; 3: -117 70 0
x5061:	mov di, [bp + 4]	; 3: -117 126 4
x5064:	mov bp, [bp + 2]	; 3: -117 110 2
x5067:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x5069:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x5073:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x5077:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x5079:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5083:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x5085:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1897 = s + index
x5090:	mov si, [bp + 6]	; 3: -117 118 6
x5093:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1896 -> £temporary1897 = *£temporary1897

printString$5:	; if £temporary1896 -> £temporary1897 == 0 goto 53
x5096:	cmp byte [si], 0	; 3: -128 60 0
x5099:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1901 = s + index
x5103:	mov si, [bp + 6]	; 3: -117 118 6
x5106:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1900 -> £temporary1901 = *£temporary1901

printString$9:	; parameter £temporary1900 -> £temporary1901, offset 6
x5109:	mov al, [si]	; 2: -118 4
x5111:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x5114:	mov word [bp + 12], printString$11	; 5: -57 70 12 8 20
x5119:	mov [bp + 14], bp	; 3: -119 110 14
x5122:	add bp, 12	; 3: -125 -59 12
x5125:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x5128:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x5131:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x5133:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1903 = precision
x5138:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x5141:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1903 <= 0 goto 53
x5144:	cmp ax, 0	; 3: -125 -8 0
x5147:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1906 = s + index
x5151:	mov si, [bp + 6]	; 3: -117 118 6
x5154:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1905 -> £temporary1906 = *£temporary1906

printString$20:	; if £temporary1905 -> £temporary1906 == 0 goto 53
x5157:	cmp byte [si], 0	; 3: -128 60 0
x5160:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1911 = s + index
x5164:	mov si, [bp + 6]	; 3: -117 118 6
x5167:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1910 -> £temporary1911 = *£temporary1911

printString$24:	; parameter £temporary1910 -> £temporary1911, offset 6
x5170:	mov al, [si]	; 2: -118 4
x5172:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x5175:	mov word [bp + 12], printString$26	; 5: -57 70 12 69 20
x5180:	mov [bp + 14], bp	; 3: -119 110 14
x5183:	add bp, 12	; 3: -125 -59 12
x5186:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x5189:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x5192:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x5194:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x5198:	mov word [bp + 10], printString$32	; 5: -57 70 10 92 20
x5203:	mov [bp + 12], bp	; 3: -119 110 12
x5206:	add bp, 10	; 3: -125 -59 10
x5209:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x5212:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x5216:	mov word [bp + 10], printString$36	; 5: -57 70 10 110 20
x5221:	mov [bp + 12], bp	; 3: -119 110 12
x5224:	add bp, 10	; 3: -125 -59 10
x5227:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x5230:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x5234:	mov word [bp + 10], printString$40	; 5: -57 70 10 -128 20
x5239:	mov [bp + 12], bp	; 3: -119 110 12
x5242:	add bp, 10	; 3: -125 -59 10
x5245:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x5248:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x5252:	mov word [bp + 10], printString$44	; 5: -57 70 10 -110 20
x5257:	mov [bp + 12], bp	; 3: -119 110 12
x5260:	add bp, 10	; 3: -125 -59 10
x5263:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x5266:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x5270:	mov word [bp + 10], printString$48	; 5: -57 70 10 -92 20
x5275:	mov [bp + 12], bp	; 3: -119 110 12
x5278:	add bp, 10	; 3: -125 -59 10
x5281:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x5284:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x5288:	mov word [bp + 10], printString$52	; 5: -57 70 10 -74 20
x5293:	mov [bp + 12], bp	; 3: -119 110 12
x5296:	add bp, 10	; 3: -125 -59 10
x5299:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x5302:	mov ax, [bp]	; 3: -117 70 0
x5305:	mov di, [bp + 4]	; 3: -117 126 4
x5308:	mov bp, [bp + 2]	; 3: -117 110 2
x5311:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x5313:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -49 20
x5318:	mov [bp + 10], bp	; 3: -119 110 10
x5321:	add bp, 8	; 3: -125 -59 8
x5324:	nop	; 1: -112
x5325:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary371 = return_value

isupper$4:	; localeConvPtr = £temporary371
x5327:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x5330:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5334:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary373 -> localeConvPtr = *localeConvPtr, offset 14
x5336:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary373 -> localeConvPtr, offset 6
x5339:	mov ax, [si + 14]	; 3: -117 68 14
x5342:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x5345:	mov ax, [bp + 6]	; 3: -117 70 6
x5348:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x5351:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -11 20
x5356:	mov [bp + 12], bp	; 3: -119 110 12
x5359:	add bp, 10	; 3: -125 -59 10
x5362:	jmp strchr	; 3: -23 -51 5

isupper$11:	; post call

isupper$12:	; £temporary374 = return_value

isupper$13:	; if £temporary374 == 0 goto 16
x5365:	cmp bx, 0	; 3: -125 -5 0
x5368:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary376 = 1
x5370:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x5373:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary376 = 0
x5375:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary376

isupper$18:	; return
x5378:	mov ax, [bp]	; 3: -117 70 0
x5381:	mov di, [bp + 4]	; 3: -117 126 4
x5384:	mov bp, [bp + 2]	; 3: -117 110 2
x5387:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x5389:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x5393:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x5395:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x5399:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary380 = 1
x5401:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x5404:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary380 = 0
x5406:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary380

isupper$25:	; return
x5409:	mov ax, [bp]	; 3: -117 70 0
x5412:	mov di, [bp + 4]	; 3: -117 126 4
x5415:	mov bp, [bp + 2]	; 3: -117 110 2
x5418:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x5420:	cmp word [@22$g_currStructPtr], 0	; 5: -125 62 74 21 0
x5425:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary520 -> g_currStructPtr = *g_currStructPtr, offset 2
x5427:	mov si, [@22$g_currStructPtr]	; 4: -117 54 74 21

localeconv$2:	; £temporary524 = £temporary520 -> g_currStructPtr
x5431:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x5434:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary524 = 0
x5436:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary524

localeconv$6:	; return
x5439:	mov ax, [bp]	; 3: -117 70 0
x5442:	mov di, [bp + 4]	; 3: -117 126 4
x5445:	mov bp, [bp + 2]	; 3: -117 110 2
x5448:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@22$g_currStructPtr:
x5450:	dw @20$sArray	; 2: 76 21

@20$sArray:
x5452:	dw string_# ; 2: 92 21
x5454:	dw @19$sw_EN_utf8	; 2: 93 21
x5456:	dw string_C# ; 2: 74 24
x5458:	dw @13$en_US_utf8	; 2: 76 24
x5460:	dw string_US# ; 2: -68 26
x5462:	dw @13$en_US_utf8	; 2: 76 24
x5464:	dw string_SE# ; 2: -65 26
x5466:	dw @19$sw_EN_utf8	; 2: 93 21

string_#:
x5468:	db 0	; 1: 0

@19$sw_EN_utf8:
x5469:	dw 1	; 2: 1 0
x5471:	dw 2	; 2: 2 0
x5473:	dw @14$swShortDayList ; 2: 111 21
x5475:	dw @15$swLongDayList ; 2: -103 21
x5477:	dw @11$enShortMonthList ; 2: -39 21
x5479:	dw @17$swLongMonthList ; 2: 33 22
x5481:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -113 22
x5483:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -86 22
x5485:	dw @18$swMessageList ; 2: -59 22

@14$swShortDayList:
x5487:	dw string_Son# ; 2: 125 21
x5489:	dw string_Man# ; 2: -127 21
x5491:	dw string_Tis# ; 2: -123 21
x5493:	dw string_Ons# ; 2: -119 21
x5495:	dw string_Tor# ; 2: -115 21
x5497:	dw string_Fre# ; 2: -111 21
x5499:	dw string_Lor# ; 2: -107 21

string_Son#:
x5501:	db "Son", 0	; 4: 83 111 110 0

string_Man#:
x5505:	db "Man", 0	; 4: 77 97 110 0

string_Tis#:
x5509:	db "Tis", 0	; 4: 84 105 115 0

string_Ons#:
x5513:	db "Ons", 0	; 4: 79 110 115 0

string_Tor#:
x5517:	db "Tor", 0	; 4: 84 111 114 0

string_Fre#:
x5521:	db "Fre", 0	; 4: 70 114 101 0

string_Lor#:
x5525:	db "Lor", 0	; 4: 76 111 114 0

@15$swLongDayList:
x5529:	dw string_Sondag# ; 2: -89 21
x5531:	dw string_Mandag# ; 2: -82 21
x5533:	dw string_Tisdag# ; 2: -75 21
x5535:	dw string_Onsdag# ; 2: -68 21
x5537:	dw string_Torsdag# ; 2: -61 21
x5539:	dw string_Fredag# ; 2: -53 21
x5541:	dw string_Lordag# ; 2: -46 21

string_Sondag#:
x5543:	db "Sondag", 0	; 7: 83 111 110 100 97 103 0

string_Mandag#:
x5550:	db "Mandag", 0	; 7: 77 97 110 100 97 103 0

string_Tisdag#:
x5557:	db "Tisdag", 0	; 7: 84 105 115 100 97 103 0

string_Onsdag#:
x5564:	db "Onsdag", 0	; 7: 79 110 115 100 97 103 0

string_Torsdag#:
x5571:	db "Torsdag", 0	; 8: 84 111 114 115 100 97 103 0

string_Fredag#:
x5579:	db "Fredag", 0	; 7: 70 114 101 100 97 103 0

string_Lordag#:
x5586:	db "Lordag", 0	; 7: 76 111 114 100 97 103 0

@11$enShortMonthList:
x5593:	dw string_Jan# ; 2: -15 21
x5595:	dw string_Feb# ; 2: -11 21
x5597:	dw string_Mar# ; 2: -7 21
x5599:	dw string_Apr# ; 2: -3 21
x5601:	dw string_May# ; 2: 1 22
x5603:	dw string_Jun# ; 2: 5 22
x5605:	dw string_Jul# ; 2: 9 22
x5607:	dw string_Aug# ; 2: 13 22
x5609:	dw string_Sep# ; 2: 17 22
x5611:	dw string_Oct# ; 2: 21 22
x5613:	dw string_Nov# ; 2: 25 22
x5615:	dw string_Dec# ; 2: 29 22

string_Jan#:
x5617:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5621:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5625:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5629:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5633:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5637:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5641:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5645:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5649:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5653:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5657:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5661:	db "Dec", 0	; 4: 68 101 99 0

@17$swLongMonthList:
x5665:	dw string_Januari# ; 2: 57 22
x5667:	dw string_Februari# ; 2: 65 22
x5669:	dw string_Mars# ; 2: 74 22
x5671:	dw string_April# ; 2: 79 22
x5673:	dw string_Maj# ; 2: 85 22
x5675:	dw string_Juni# ; 2: 89 22
x5677:	dw string_Juli# ; 2: 94 22
x5679:	dw string_Augusit# ; 2: 99 22
x5681:	dw string_September# ; 2: 107 22
x5683:	dw string_Oktober# ; 2: 117 22
x5685:	dw string_November# ; 2: 125 22
x5687:	dw string_December# ; 2: -122 22

string_Januari#:
x5689:	db "Januari", 0	; 8: 74 97 110 117 97 114 105 0

string_Februari#:
x5697:	db "Februari", 0	; 9: 70 101 98 114 117 97 114 105 0

string_Mars#:
x5706:	db "Mars", 0	; 5: 77 97 114 115 0

string_April#:
x5711:	db "April", 0	; 6: 65 112 114 105 108 0

string_Maj#:
x5717:	db "Maj", 0	; 4: 77 97 106 0

string_Juni#:
x5721:	db "Juni", 0	; 5: 74 117 110 105 0

string_Juli#:
x5726:	db "Juli", 0	; 5: 74 117 108 105 0

string_Augusit#:
x5731:	db "Augusit", 0	; 8: 65 117 103 117 115 105 116 0

string_September#:
x5739:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_Oktober#:
x5749:	db "Oktober", 0	; 8: 79 107 116 111 98 101 114 0

string_November#:
x5757:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5766:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5775:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5802:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

@18$swMessageList:
x5829:	dw string_inga20fel# ; 2: -21 22
x5831:	dw string_felaktigt20functionsnummer# ; 2: -12 22
x5833:	dw string_hittar20ej20filen# ; 2: 14 23
x5835:	dw string_hittar20ej20sokvagen# ; 2: 30 23
x5837:	dw string_inget20handtag20tillgangligt# ; 2: 49 23
x5839:	dw string_atkomst20nekad# ; 2: 76 23
x5841:	dw string_utanfor20doman# ; 2: 90 23
x5843:	dw string_utanfor20range# ; 2: 104 23
x5845:	dw string_felaktig20multibyte2Dsekvens# ; 2: 118 23
x5847:	dw string_fel20vid20oppning# ; 2: -111 23
x5849:	dw string_fel20vid20flushing# ; 2: -95 23
x5851:	dw string_fel20vid20stangning# ; 2: -78 23
x5853:	dw string_fel20oppningslage# ; 2: -60 23
x5855:	dw string_fel20vid20skrivning# ; 2: -43 23
x5857:	dw string_fel20vid20lasning# ; 2: -25 23
x5859:	dw string_fel20vid20sokning# ; 2: -9 23
x5861:	dw string_fel20vid20telling# ; 2: 7 24
x5863:	dw string_fel20vid20borttagning20av20fil# ; 2: 23 24
x5865:	dw string_fel20vid20namnbyte20av20fil# ; 2: 50 24

string_inga20fel#:
x5867:	db "inga fel", 0	; 9: 105 110 103 97 32 102 101 108 0

string_felaktigt20functionsnummer#:
x5876:	db "felaktigt functionsnummer", 0	; 26: 102 101 108 97 107 116 105 103 116 32 102 117 110 99 116 105 111 110 115 110 117 109 109 101 114 0

string_hittar20ej20filen#:
x5902:	db "hittar ej filen", 0	; 16: 104 105 116 116 97 114 32 101 106 32 102 105 108 101 110 0

string_hittar20ej20sokvagen#:
x5918:	db "hittar ej sokvagen", 0	; 19: 104 105 116 116 97 114 32 101 106 32 115 111 107 118 97 103 101 110 0

string_inget20handtag20tillgangligt#:
x5937:	db "inget handtag tillgangligt", 0	; 27: 105 110 103 101 116 32 104 97 110 100 116 97 103 32 116 105 108 108 103 97 110 103 108 105 103 116 0

string_atkomst20nekad#:
x5964:	db "atkomst nekad", 0	; 14: 97 116 107 111 109 115 116 32 110 101 107 97 100 0

string_utanfor20doman#:
x5978:	db "utanfor doman", 0	; 14: 117 116 97 110 102 111 114 32 100 111 109 97 110 0

string_utanfor20range#:
x5992:	db "utanfor range", 0	; 14: 117 116 97 110 102 111 114 32 114 97 110 103 101 0

string_felaktig20multibyte2Dsekvens#:
x6006:	db "felaktig multibyte-sekvens", 0	; 27: 102 101 108 97 107 116 105 103 32 109 117 108 116 105 98 121 116 101 45 115 101 107 118 101 110 115 0

string_fel20vid20oppning#:
x6033:	db "fel vid oppning", 0	; 16: 102 101 108 32 118 105 100 32 111 112 112 110 105 110 103 0

string_fel20vid20flushing#:
x6049:	db "fel vid flushing", 0	; 17: 102 101 108 32 118 105 100 32 102 108 117 115 104 105 110 103 0

string_fel20vid20stangning#:
x6066:	db "fel vid stangning", 0	; 18: 102 101 108 32 118 105 100 32 115 116 97 110 103 110 105 110 103 0

string_fel20oppningslage#:
x6084:	db "fel oppningslage", 0	; 17: 102 101 108 32 111 112 112 110 105 110 103 115 108 97 103 101 0

string_fel20vid20skrivning#:
x6101:	db "fel vid skrivning", 0	; 18: 102 101 108 32 118 105 100 32 115 107 114 105 118 110 105 110 103 0

string_fel20vid20lasning#:
x6119:	db "fel vid lasning", 0	; 16: 102 101 108 32 118 105 100 32 108 97 115 110 105 110 103 0

string_fel20vid20sokning#:
x6135:	db "fel vid sokning", 0	; 16: 102 101 108 32 118 105 100 32 115 111 107 110 105 110 103 0

string_fel20vid20telling#:
x6151:	db "fel vid telling", 0	; 16: 102 101 108 32 118 105 100 32 116 101 108 108 105 110 103 0

string_fel20vid20borttagning20av20fil#:
x6167:	db "fel vid borttagning av fil", 0	; 27: 102 101 108 32 118 105 100 32 98 111 114 116 116 97 103 110 105 110 103 32 97 118 32 102 105 108 0

string_fel20vid20namnbyte20av20fil#:
x6194:	db "fel vid namnbyte av fil", 0	; 24: 102 101 108 32 118 105 100 32 110 97 109 110 98 121 116 101 32 97 118 32 102 105 108 0

string_C#:
x6218:	db "C", 0	; 2: 67 0

@13$en_US_utf8:
x6220:	dw -5	; 2: -5 -1
x6222:	dw -4	; 2: -4 -1
x6224:	dw @9$enShortDayList ; 2: 94 24
x6226:	dw @10$enLongDayList ; 2: -120 24
x6228:	dw @11$enShortMonthList ; 2: -39 21
x6230:	dw @12$enLongMonthList ; 2: -49 24
x6232:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -113 22
x6234:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -86 22
x6236:	dw enMessageList ; 2: 23 25

@9$enShortDayList:
x6238:	dw string_Sun# ; 2: 108 24
x6240:	dw string_Mon# ; 2: 112 24
x6242:	dw string_Tue# ; 2: 116 24
x6244:	dw string_Wed# ; 2: 120 24
x6246:	dw string_Thu# ; 2: 124 24
x6248:	dw string_Fri# ; 2: -128 24
x6250:	dw string_Sat# ; 2: -124 24

string_Sun#:
x6252:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x6256:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x6260:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6264:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6268:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6272:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6276:	db "Sat", 0	; 4: 83 97 116 0

@10$enLongDayList:
x6280:	dw string_Sunday# ; 2: -106 24
x6282:	dw string_Monday# ; 2: -99 24
x6284:	dw string_Tuesday# ; 2: -92 24
x6286:	dw string_Wednesday# ; 2: -84 24
x6288:	dw string_Thursday# ; 2: -74 24
x6290:	dw string_Friday# ; 2: -65 24
x6292:	dw string_Saturday# ; 2: -58 24

string_Sunday#:
x6294:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6301:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6308:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6316:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6326:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6335:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x6342:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@12$enLongMonthList:
x6351:	dw string_January# ; 2: -25 24
x6353:	dw string_February# ; 2: -17 24
x6355:	dw string_March# ; 2: -8 24
x6357:	dw string_April# ; 2: 79 22
x6359:	dw string_May# ; 2: 1 22
x6361:	dw string_June# ; 2: -2 24
x6363:	dw string_July# ; 2: 3 25
x6365:	dw string_August# ; 2: 8 25
x6367:	dw string_September# ; 2: 107 22
x6369:	dw string_October# ; 2: 15 25
x6371:	dw string_November# ; 2: 125 22
x6373:	dw string_December# ; 2: -122 22

string_January#:
x6375:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x6383:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x6392:	db "March", 0	; 6: 77 97 114 99 104 0

string_June#:
x6398:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x6403:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x6408:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_October#:
x6415:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

enMessageList:
x6423:	dw string_no20error# ; 2: 63 25
x6425:	dw string_function20number20invalid# ; 2: 72 25
x6427:	dw string_file20not20found# ; 2: 96 25
x6429:	dw string_path20not20found# ; 2: 111 25
x6431:	dw string_no20handle20available# ; 2: 126 25
x6433:	dw string_access20denied# ; 2: -110 25
x6435:	dw string_out20of20domain# ; 2: -96 25
x6437:	dw string_out20of20range# ; 2: -82 25
x6439:	dw string_invalid20multibyte20sequence# ; 2: -69 25
x6441:	dw string_error20while20opening# ; 2: -42 25
x6443:	dw string_error20while20flushing# ; 2: -22 25
x6445:	dw string_error20while20closing# ; 2: -1 25
x6447:	dw string_open20mode20invalid# ; 2: 19 26
x6449:	dw string_error20while20writing# ; 2: 37 26
x6451:	dw string_error20while20reading# ; 2: 57 26
x6453:	dw string_error20while20seeking# ; 2: 77 26
x6455:	dw string_error20while20telling# ; 2: 97 26
x6457:	dw string_error20while20sizing# ; 2: 117 26
x6459:	dw string_error20while20removing20file# ; 2: -120 26
x6461:	dw string_error20while20renaming20file# ; 2: -94 26

string_no20error#:
x6463:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x6472:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x6496:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x6511:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x6526:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x6546:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x6560:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x6574:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x6587:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x6614:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x6634:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x6655:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x6675:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x6693:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x6713:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x6733:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x6753:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x6773:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x6792:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x6818:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_US#:
x6844:	db "US", 0	; 3: 85 83 0

string_SE#:
x6847:	db "SE", 0	; 3: 83 69 0

strchr:	; £temporary3330 = int_to_int i (Signed_Int -> Signed_Char)
x6850:	mov ax, [bp + 8]	; 3: -117 70 8
x6853:	cmp ax, 0	; 3: -125 -8 0
x6856:	jge strchr$1	; 2: 125 4
x6858:	neg ax	; 2: -9 -40
x6860:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3330
x6862:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x6865:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3332 = text + index
x6870:	mov si, [bp + 6]	; 3: -117 118 6
x6873:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3331 -> £temporary3332 = *£temporary3332

strchr$5:	; if £temporary3331 -> £temporary3332 == 0 goto 16
x6876:	cmp byte [si], 0	; 3: -128 60 0
x6879:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3336 = text + index
x6881:	mov si, [bp + 6]	; 3: -117 118 6
x6884:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3335 -> £temporary3336 = *£temporary3336

strchr$8:	; if £temporary3335 -> £temporary3336 != c goto 14
x6887:	mov al, [bp + 12]	; 3: -118 70 12
x6890:	cmp [si], al	; 2: 56 4
x6892:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3339 = text + index
x6894:	mov bx, [bp + 6]	; 3: -117 94 6
x6897:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3338 -> £temporary3339 = *£temporary3339

strchr$11:	; £temporary3340 = &£temporary3338 -> £temporary3339

strchr$12:	; return_value = £temporary3340

strchr$13:	; return
x6900:	mov ax, [bp]	; 3: -117 70 0
x6903:	mov di, [bp + 4]	; 3: -117 126 4
x6906:	mov bp, [bp + 2]	; 3: -117 110 2
x6909:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x6911:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x6914:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x6916:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x6919:	mov ax, [bp]	; 3: -117 70 0
x6922:	mov di, [bp + 4]	; 3: -117 126 4
x6925:	mov bp, [bp + 2]	; 3: -117 110 2
x6928:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x6930:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6934:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x6936:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x6940:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 42 27
x6945:	mov [bp + 24], bp	; 3: -119 110 24
x6948:	add bp, 22	; 3: -125 -59 22
x6951:	jmp printChar	; 3: -23 -33 -9

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x6954:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6958:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x6960:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x6964:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 66 27
x6969:	mov [bp + 24], bp	; 3: -119 110 24
x6972:	add bp, 22	; 3: -125 -59 22
x6975:	jmp printChar	; 3: -23 -57 -9

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x6978:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x6982:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x6984:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x6989:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x6991:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x6995:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 97 27
x7000:	mov [bp + 24], bp	; 3: -119 110 24
x7003:	add bp, 22	; 3: -125 -59 22
x7006:	jmp printChar	; 3: -23 -88 -9

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x7009:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x7014:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x7016:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x7020:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 122 27
x7025:	mov [bp + 24], bp	; 3: -119 110 24
x7028:	add bp, 22	; 3: -125 -59 22
x7031:	jmp printChar	; 3: -23 -113 -9

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x7034:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x7038:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1987 = 88
x7040:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x7042:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1987 = 120
x7044:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1987, offset 6
x7046:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x7049:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -105 27
x7054:	mov [bp + 24], bp	; 3: -119 110 24
x7057:	add bp, 22	; 3: -125 -59 22
x7060:	jmp printChar	; 3: -23 114 -9

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x7063:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7068:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x7070:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x7074:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -80 27
x7079:	mov [bp + 24], bp	; 3: -119 110 24
x7082:	add bp, 22	; 3: -125 -59 22
x7085:	jmp printChar	; 3: -23 89 -9

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x7088:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x7090:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7094:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x7098:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x7102:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x7106:	mov ax, [bp + 20]	; 3: -117 70 20
x7109:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x7112:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -42 27
x7117:	mov [bp + 24], bp	; 3: -119 110 24
x7120:	add bp, 22	; 3: -125 -59 22
x7123:	nop	; 1: -112
x7124:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x7126:	mov ax, [bp]	; 3: -117 70 0
x7129:	mov di, [bp + 4]	; 3: -117 126 4
x7132:	mov bp, [bp + 2]	; 3: -117 110 2
x7135:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x7137:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7142:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1963 = unsignedValue % base
x7144:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7148:	xor edx, edx	; 3: 102 49 -46
x7151:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1964 = int_to_int £temporary1963 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1964
x7155:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1965 = unsignedValue / base
x7158:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7162:	xor edx, edx	; 3: 102 49 -46
x7165:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1965, offset 6
x7169:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x7173:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x7177:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x7181:	mov ax, [bp + 14]	; 3: -117 70 14
x7184:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x7187:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 33 28
x7192:	mov [bp + 20], bp	; 3: -119 110 20
x7195:	add bp, 18	; 3: -125 -59 18
x7198:	nop	; 1: -112
x7199:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x7201:	mov ax, [bp + 16]	; 3: -117 70 16
x7204:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x7207:	mov ax, [bp + 14]	; 3: -117 70 14
x7210:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x7213:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 59 28
x7218:	mov [bp + 20], bp	; 3: -119 110 20
x7221:	add bp, 18	; 3: -125 -59 18
x7224:	nop	; 1: -112
x7225:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1967 = return_value

printUnsignedLongRec$17:	; c = £temporary1967
x7227:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x7230:	mov al, [bp + 18]	; 3: -118 70 18
x7233:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x7236:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 82 28
x7241:	mov [bp + 21], bp	; 3: -119 110 21
x7244:	add bp, 19	; 3: -125 -59 19
x7247:	jmp printChar	; 3: -23 -73 -10

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x7250:	mov ax, [bp]	; 3: -117 70 0
x7253:	mov di, [bp + 4]	; 3: -117 126 4
x7256:	mov bp, [bp + 2]	; 3: -117 110 2
x7259:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x7261:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x7265:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1953 = digit + 48
x7267:	mov bx, [bp + 6]	; 3: -117 94 6
x7270:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1954 = int_to_int £temporary1953 (Signed_Int -> Signed_Char)
x7273:	cmp bx, 0	; 3: -125 -5 0
x7276:	jge digitToChar$3	; 2: 125 4
x7278:	neg bx	; 2: -9 -37
x7280:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1954

digitToChar$4:	; return
x7282:	mov ax, [bp]	; 3: -117 70 0
x7285:	mov di, [bp + 4]	; 3: -117 126 4
x7288:	mov bp, [bp + 2]	; 3: -117 110 2
x7291:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x7293:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7297:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1955 = digit - 10
x7299:	mov bx, [bp + 6]	; 3: -117 94 6
x7302:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1956 = £temporary1955 + 65
x7305:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1957 = int_to_int £temporary1956 (Signed_Int -> Signed_Char)
x7308:	cmp bx, 0	; 3: -125 -5 0
x7311:	jge digitToChar$9	; 2: 125 4
x7313:	neg bx	; 2: -9 -37
x7315:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1957

digitToChar$10:	; return
x7317:	mov ax, [bp]	; 3: -117 70 0
x7320:	mov di, [bp + 4]	; 3: -117 126 4
x7323:	mov bp, [bp + 2]	; 3: -117 110 2
x7326:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1958 = digit - 10
x7328:	mov bx, [bp + 6]	; 3: -117 94 6
x7331:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1959 = £temporary1958 + 97
x7334:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1960 = int_to_int £temporary1959 (Signed_Int -> Signed_Char)
x7337:	cmp bx, 0	; 3: -125 -5 0
x7340:	jge digitToChar$14	; 2: 125 4
x7342:	neg bx	; 2: -9 -37
x7344:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1960

digitToChar$15:	; return
x7346:	mov ax, [bp]	; 3: -117 70 0
x7349:	mov di, [bp + 4]	; 3: -117 126 4
x7352:	mov bp, [bp + 2]	; 3: -117 110 2
x7355:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x7357:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x7360:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x7362:	fcompp	; 2: -34 -39
x7364:	fstsw ax	; 3: -101 -33 -32
x7367:	sahf	; 1: -98
x7368:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x7370:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x7374:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -36 28
x7379:	mov [bp + 24], bp	; 3: -119 110 24
x7382:	add bp, 22	; 3: -125 -59 22
x7385:	jmp printChar	; 3: -23 45 -10

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x7388:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary2023 = -longDoubleValue
x7391:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x7393:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x7396:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x7401:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x7406:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary2024 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7409:	fistp dword [container4bytes#]	; 4: -37 30 85 29
x7413:	mov eax, [container4bytes#]	; 4: 102 -95 85 29

printLongDoublePlain$14:	; longValue = £temporary2024
x7417:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x7421:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7425:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x7429:	mov ax, [bp + 14]	; 3: -117 70 14
x7432:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x7435:	mov ax, [bp + 16]	; 3: -117 70 16
x7438:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x7441:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 31 29
x7446:	mov [bp + 28], bp	; 3: -119 110 28
x7449:	add bp, 26	; 3: -125 -59 26
x7452:	jmp printLongInt	; 3: -23 86 -11

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x7455:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary2026 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x7458:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary2027 = longDoubleValue - £temporary2026
x7461:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x7463:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x7466:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x7469:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x7472:	mov ax, [bp + 18]	; 3: -117 70 18
x7475:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x7478:	mov ax, [bp + 20]	; 3: -117 70 20
x7481:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x7484:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 74 29
x7489:	mov [bp + 28], bp	; 3: -119 110 28
x7492:	add bp, 26	; 3: -125 -59 26
x7495:	nop	; 1: -112
x7496:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x7498:	mov ax, [bp]	; 3: -117 70 0
x7501:	mov di, [bp + 4]	; 3: -117 126 4
x7504:	mov bp, [bp + 2]	; 3: -117 110 2
x7507:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x7509:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x7513:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x7516:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary2002 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7519:	fistp dword [container4bytes#]	; 4: -37 30 85 29
x7523:	mov eax, [container4bytes#]	; 4: 102 -95 85 29

printLongDoubleFraction$3:	; £temporary2003 = int_to_float £temporary2002 (Signed_Long_Int -> Long_Double)
x7527:	mov [container4bytes#], eax	; 4: 102 -93 85 29
x7531:	fild dword [container4bytes#]	; 4: -37 6 85 29

printLongDoubleFraction$4:	; £temporary2004 = longDoubleValue - £temporary2003
x7535:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x7537:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x7540:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7544:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 9
x7546:	mov word [bp + 16], 9	; 5: -57 70 16 9 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x7551:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7555:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x7557:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7561:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x7563:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x7567:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -99 29
x7572:	mov [bp + 20], bp	; 3: -119 110 20
x7575:	add bp, 18	; 3: -125 -59 18
x7578:	jmp printChar	; 3: -23 108 -11

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary2010 = precision
x7581:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x7584:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary2010 <= 0 goto 34
x7587:	cmp ax, 0	; 3: -125 -8 0
x7590:	jle printLongDoubleFraction$34	; 2: 126 67

printLongDoubleFraction$17:	; push float 10.0
x7592:	fld qword [float8$10.0#]	; 4: -35 6 -10 29

printLongDoubleFraction$18:	; push float longDoubleValue
x7596:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary2012 = 10.0 * longDoubleValue
x7599:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; top float longDoubleValue10
x7601:	fst qword [bp + 18]	; 3: -35 86 18

printLongDoubleFraction$21:	; £temporary2013 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x7604:	fistp word [container2bytes#]	; 4: -33 30 8 18
x7608:	mov ax, [container2bytes#]	; 3: -95 8 18

printLongDoubleFraction$22:	; digitValue = £temporary2013
x7611:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$23:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$24:	; £temporary2014 = digitValue + 48
x7614:	mov ax, [bp + 26]	; 3: -117 70 26
x7617:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$25:	; £temporary2015 = int_to_int £temporary2014 (Signed_Int -> Signed_Char)
x7620:	cmp ax, 0	; 3: -125 -8 0
x7623:	jge printLongDoubleFraction$26	; 2: 125 4
x7625:	neg ax	; 2: -9 -40
x7627:	neg al	; 2: -10 -40

printLongDoubleFraction$26:	; parameter £temporary2015, offset 6
x7629:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$27:	; call function noellipse-noellipse printChar
x7632:	mov word [bp + 28], printLongDoubleFraction$28	; 5: -57 70 28 -34 29
x7637:	mov [bp + 30], bp	; 3: -119 110 30
x7640:	add bp, 28	; 3: -125 -59 28
x7643:	jmp printChar	; 3: -23 43 -11

printLongDoubleFraction$28:	; post call

printLongDoubleFraction$29:	; push float longDoubleValue10
x7646:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$30:	; £temporary2017 = int_to_float digitValue (Signed_Int -> Long_Double)
x7649:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$31:	; £temporary2018 = longDoubleValue10 - £temporary2017
x7652:	fsub	; 2: -34 -23

printLongDoubleFraction$32:	; pop float longDoubleValue
x7654:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$33:	; goto 14
x7657:	jmp printLongDoubleFraction$14	; 2: -21 -78

printLongDoubleFraction$34:	; return
x7659:	mov ax, [bp]	; 3: -117 70 0
x7662:	mov di, [bp + 4]	; 3: -117 126 4
x7665:	mov bp, [bp + 2]	; 3: -117 110 2
x7668:	jmp ax	; 2: -1 -32

printLongDoubleFraction$35:	; function end printLongDoubleFraction

float8$10.0#:
x7670:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x7678:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x7681:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x7683:	fcompp	; 2: -34 -39
x7685:	fstsw ax	; 3: -101 -33 -32
x7688:	sahf	; 1: -98
x7689:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x7691:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary925 = -x
x7694:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7696:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7698:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary929

fabs$9:	; return
x7701:	mov ax, [bp]	; 3: -117 70 0
x7704:	mov di, [bp + 4]	; 3: -117 126 4
x7707:	mov bp, [bp + 2]	; 3: -117 110 2
x7710:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x7712:	mov ax, [bp + 6]	; 3: -117 70 6
x7715:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x7718:	mov word [bp + 8], tolower$3	; 5: -57 70 8 52 30
x7723:	mov [bp + 10], bp	; 3: -119 110 10
x7726:	add bp, 8	; 3: -125 -59 8
x7729:	jmp isupper	; 3: -23 -115 -10

tolower$3:	; post call

tolower$4:	; £temporary459 = return_value

tolower$5:	; if £temporary459 == 0 goto 31
x7732:	cmp bx, 0	; 3: -125 -5 0
x7735:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x7737:	mov word [bp + 8], tolower$8	; 5: -57 70 8 71 30
x7742:	mov [bp + 10], bp	; 3: -119 110 10
x7745:	add bp, 8	; 3: -125 -59 8
x7748:	jmp localeconv	; 3: -23 -27 -10

tolower$8:	; post call

tolower$9:	; £temporary460 = return_value

tolower$10:	; localeConvPtr = £temporary460
x7751:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x7754:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7758:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary462 -> localeConvPtr = *localeConvPtr, offset 12
x7760:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary462 -> localeConvPtr
x7763:	mov ax, [si + 12]	; 3: -117 68 12
x7766:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary463 -> localeConvPtr = *localeConvPtr, offset 14
x7769:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary463 -> localeConvPtr
x7772:	mov ax, [si + 14]	; 3: -117 68 14
x7775:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x7778:	mov ax, [bp + 12]	; 3: -117 70 12
x7781:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x7784:	mov ax, [bp + 6]	; 3: -117 70 6
x7787:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x7790:	mov word [bp + 14], tolower$20	; 5: -57 70 14 124 30
x7795:	mov [bp + 16], bp	; 3: -119 110 16
x7798:	add bp, 14	; 3: -125 -59 14
x7801:	jmp strchr	; 3: -23 70 -4

tolower$20:	; post call

tolower$21:	; £temporary464 = return_value

tolower$22:	; index = £temporary464 - upperCase
x7804:	sub bx, [bp + 12]	; 3: 43 94 12
x7807:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary467 = lowerCase + index
x7810:	mov si, [bp + 10]	; 3: -117 118 10
x7813:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary466 -> £temporary467 = *£temporary467

tolower$25:	; £temporary468 = int_to_int £temporary466 -> £temporary467 (Signed_Char -> Signed_Int)
x7816:	mov bl, [si]	; 2: -118 28
x7818:	and bx, 255	; 4: -127 -29 -1 0
x7822:	cmp bl, 0	; 3: -128 -5 0
x7825:	jge tolower$26	; 2: 125 4
x7827:	neg bl	; 2: -10 -37
x7829:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary468

tolower$27:	; return
x7831:	mov ax, [bp]	; 3: -117 70 0
x7834:	mov di, [bp + 4]	; 3: -117 126 4
x7837:	mov bp, [bp + 2]	; 3: -117 110 2
x7840:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary469 = c + 32
x7842:	mov bx, [bp + 6]	; 3: -117 94 6
x7845:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary469

tolower$30:	; return
x7848:	mov ax, [bp]	; 3: -117 70 0
x7851:	mov di, [bp + 4]	; 3: -117 126 4
x7854:	mov bp, [bp + 2]	; 3: -117 110 2
x7857:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x7859:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x7862:	mov ax, [bp]	; 3: -117 70 0
x7865:	mov di, [bp + 4]	; 3: -117 126 4
x7868:	mov bp, [bp + 2]	; 3: -117 110 2
x7871:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x7873:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x7876:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x7878:	fcompp	; 2: -34 -39
x7880:	fstsw ax	; 3: -101 -33 -32
x7883:	sahf	; 1: -98
x7884:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x7886:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x7890:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -32 30
x7895:	mov [bp + 26], bp	; 3: -119 110 26
x7898:	add bp, 24	; 3: -125 -59 24
x7901:	jmp printChar	; 3: -23 41 -12

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x7904:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x7906:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x7909:	mov ax, [bp + 20]	; 3: -117 70 20
x7912:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x7915:	mov ax, [bp + 18]	; 3: -117 70 18
x7918:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x7921:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -1 30
x7926:	mov [bp + 26], bp	; 3: -119 110 26
x7929:	add bp, 24	; 3: -125 -59 24
x7932:	jmp printLongDoubleFraction	; 3: -23 90 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x7935:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7939:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary2043 = 69
x7941:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x7943:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary2043 = 101
x7945:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary2043, offset 6
x7947:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x7950:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 28 31
x7955:	mov [bp + 26], bp	; 3: -119 110 26
x7958:	add bp, 24	; 3: -125 -59 24
x7961:	jmp printChar	; 3: -23 -19 -13

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x7964:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x7968:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 46 31
x7973:	mov [bp + 26], bp	; 3: -119 110 26
x7976:	add bp, 24	; 3: -125 -59 24
x7979:	jmp printChar	; 3: -23 -37 -13

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x7982:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x7985:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x7988:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x7990:	fcompp	; 2: -34 -39
x7992:	fstsw ax	; 3: -101 -33 -32
x7995:	sahf	; 1: -98
x7996:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x7998:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x8002:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 80 31
x8007:	mov [bp + 26], bp	; 3: -119 110 26
x8010:	add bp, 24	; 3: -125 -59 24
x8013:	jmp printChar	; 3: -23 -71 -13

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x8016:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary2048 = -value
x8019:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x8021:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x8024:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x8027:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x8030:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 108 31
x8035:	mov [bp + 26], bp	; 3: -119 110 26
x8038:	add bp, 24	; 3: -125 -59 24
x8041:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary2049 = return_value

printLongDoubleExpo$43:	; £temporary2050 = float_to_int £temporary2049 (Double -> Signed_Int)
x8044:	fistp word [container2bytes#]	; 4: -33 30 8 18
x8048:	mov ax, [container2bytes#]	; 3: -95 8 18

printLongDoubleExpo$44:	; expo = £temporary2050
x8051:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x8054:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x8057:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x8060:	fld qword [float8$10.0#]	; 4: -35 6 -10 29

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x8064:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary2051 = int_to_float expo (Signed_Int -> Double)
x8067:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary2051, offset 14
x8070:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x8073:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -105 31
x8078:	mov [bp + 36], bp	; 3: -119 110 36
x8081:	add bp, 34	; 3: -125 -59 34
x8084:	jmp pow	; 3: -23 -22 1

printLongDoubleExpo$52:	; post call
x8087:	fstp qword [bp + 34]	; 3: -35 94 34
x8090:	fld qword [bp + 26]	; 3: -35 70 26
x8093:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary2052 = return_value

printLongDoubleExpo$54:	; £temporary2053 = value / £temporary2052
x8096:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x8098:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x8101:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x8104:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x8107:	mov ax, [bp + 14]	; 3: -117 70 14
x8110:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x8113:	mov ax, [bp + 16]	; 3: -117 70 16
x8116:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x8119:	mov ax, [bp + 18]	; 3: -117 70 18
x8122:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x8125:	mov ax, [bp + 20]	; 3: -117 70 20
x8128:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x8131:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -47 31
x8136:	mov [bp + 28], bp	; 3: -119 110 28
x8139:	add bp, 26	; 3: -125 -59 26
x8142:	jmp printLongDoublePlain	; 3: -23 -20 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x8145:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8149:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary2059 = 69
x8151:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x8153:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary2059 = 101
x8155:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary2059, offset 6
x8157:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x8160:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -18 31
x8165:	mov [bp + 28], bp	; 3: -119 110 28
x8168:	add bp, 26	; 3: -125 -59 26
x8171:	jmp printChar	; 3: -23 27 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary2061 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x8174:	mov ax, [bp + 24]	; 3: -117 70 24
x8177:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8183:	cmp ax, 0	; 3: -125 -8 0
x8186:	jge printLongDoubleExpo$75	; 2: 125 5
x8188:	neg ax	; 2: -9 -40
x8190:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary2061, offset 6
x8193:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x8197:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x8202:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x8207:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 29 32
x8212:	mov [bp + 28], bp	; 3: -119 110 28
x8215:	add bp, 26	; 3: -125 -59 26
x8218:	jmp printLongInt	; 3: -23 88 -14

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x8221:	mov ax, [bp]	; 3: -117 70 0
x8224:	mov di, [bp + 4]	; 3: -117 126 4
x8227:	mov bp, [bp + 2]	; 3: -117 110 2
x8230:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; push float 0.4342944820
x8232:	fld qword [float8$0.4342944820#]	; 4: -35 6 89 32

log10$1:	; call header integral zero 0 stack no zero 1
x8236:	fstp qword [bp + 14]	; 3: -35 94 14

log10$2:	; push float x
x8239:	fld qword [bp + 6]	; 3: -35 70 6

log10$3:	; parameter x, offset 6
x8242:	fstp qword [bp + 28]	; 3: -35 94 28

log10$4:	; call function noellipse-noellipse log
x8245:	mov word [bp + 22], log10$5	; 5: -57 70 22 67 32
x8250:	mov [bp + 24], bp	; 3: -119 110 24
x8253:	add bp, 22	; 3: -125 -59 22
x8256:	nop	; 1: -112
x8257:	jmp log	; 2: -21 30

log10$5:	; post call
x8259:	fstp qword [bp + 22]	; 3: -35 94 22
x8262:	fld qword [bp + 14]	; 3: -35 70 14
x8265:	fld qword [bp + 22]	; 3: -35 70 22

log10$6:	; £temporary552 = return_value

log10$7:	; £temporary553 = 0.4342944820 * £temporary552
x8268:	fmul	; 2: -34 -55

log10$8:	; return_value = £temporary553

log10$9:	; return
x8270:	mov ax, [bp]	; 3: -117 70 0
x8273:	mov di, [bp + 4]	; 3: -117 126 4
x8276:	mov bp, [bp + 2]	; 3: -117 110 2
x8279:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$0.4342944820#:
x8281:	dq 0.4342944820	; 8: 26 125 65 21 123 -53 -37 63

log:	; push float x_plus_1
x8289:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x8292:	fldz	; 2: -39 -18

log$2:	; if x_plus_1 <= 0 goto 70
x8294:	fcompp	; 2: -34 -39
x8296:	fstsw ax	; 3: -101 -33 -32
x8299:	sahf	; 1: -98
x8300:	jae log$70	; 4: 15 -125 -44 0

log$3:	; expo = 0
x8304:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x_plus_1
x8309:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push float 0.3678794411714423216036827922
x8312:	fld qword [float8$0.3678794411714423216036827922#]	; 4: -35 6 87 33

log$6:	; if x_plus_1 >= 0.3678794411714423216036827922 goto 13
x8316:	fcompp	; 2: -34 -39
x8318:	fstsw ax	; 3: -101 -33 -32
x8321:	sahf	; 1: -98
x8322:	jbe log$13	; 2: 118 17

log$7:	; push float x_plus_1
x8324:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push float 2.7182818284590452353
x8327:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 95 33

log$9:	; £temporary535 = x_plus_1 * 2.7182818284590452353
x8331:	fmul	; 2: -34 -55

log$10:	; pop float x_plus_1
x8333:	fstp qword [bp + 6]	; 3: -35 94 6

log$11:	; --expo
x8336:	dec word [bp + 14]	; 3: -1 78 14

log$12:	; goto 4
x8339:	jmp log$4	; 2: -21 -32

log$13:	; push float x_plus_1
x8341:	fld qword [bp + 6]	; 3: -35 70 6

log$14:	; push float 0.7357588823428846432073655843
x8344:	fld qword [float8$0.7357588823428846432073655843#]	; 4: -35 6 103 33

log$15:	; if x_plus_1 <= 0.7357588823428846432073655843 goto 22
x8348:	fcompp	; 2: -34 -39
x8350:	fstsw ax	; 3: -101 -33 -32
x8353:	sahf	; 1: -98
x8354:	jae log$22	; 2: 115 17

log$16:	; push float x_plus_1
x8356:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 2.7182818284590452353
x8359:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 95 33

log$18:	; £temporary538 = x_plus_1 / 2.7182818284590452353
x8363:	fdiv	; 2: -34 -7

log$19:	; pop float x_plus_1
x8365:	fstp qword [bp + 6]	; 3: -35 94 6

log$20:	; ++expo
x8368:	inc word [bp + 14]	; 3: -1 70 14

log$21:	; goto 13
x8371:	jmp log$13	; 2: -21 -32

log$22:	; push 1
x8373:	fld1	; 2: -39 -24

log$23:	; pop float n
x8375:	fstp qword [bp + 16]	; 3: -35 94 16

log$24:	; push 1
x8378:	fld1	; 2: -39 -24

log$25:	; pop float plusMinusOne
x8380:	fstp qword [bp + 24]	; 3: -35 94 24

log$26:	; push float x_plus_1
x8383:	fld qword [bp + 6]	; 3: -35 70 6

log$27:	; push 1
x8386:	fld1	; 2: -39 -24

log$28:	; £temporary540 = x_plus_1 - 1
x8388:	fsub	; 2: -34 -23

log$29:	; pop float x
x8390:	fstp qword [bp + 32]	; 3: -35 94 32

log$30:	; push 0
x8393:	fldz	; 2: -39 -18

log$31:	; pop float sum
x8395:	fstp qword [bp + 48]	; 3: -35 94 48

log$32:	; push float x
x8398:	fld qword [bp + 32]	; 3: -35 70 32

log$33:	; pop float power
x8401:	fstp qword [bp + 56]	; 3: -35 94 56

log$34:	; push float plusMinusOne
x8404:	fld qword [bp + 24]	; 3: -35 70 24

log$35:	; push float power
x8407:	fld qword [bp + 56]	; 3: -35 70 56

log$36:	; push float n
x8410:	fld qword [bp + 16]	; 3: -35 70 16

log$37:	; push 1
x8413:	fld1	; 2: -39 -24

log$38:	; n = n + 1
x8415:	fadd	; 2: -34 -63

log$39:	; top float n
x8417:	fst qword [bp + 16]	; 3: -35 86 16

log$40:	; push 1
x8420:	fld1	; 2: -39 -24

log$41:	; n = n - 1
x8422:	fsub	; 2: -34 -23

log$42:	; £temporary542 = power / £temporary541
x8424:	fdiv	; 2: -34 -7

log$43:	; £temporary543 = plusMinusOne * £temporary542
x8426:	fmul	; 2: -34 -55

log$44:	; pop float term
x8428:	fstp qword [bp + 40]	; 3: -35 94 40

log$45:	; push float sum
x8431:	fld qword [bp + 48]	; 3: -35 70 48

log$46:	; push float term
x8434:	fld qword [bp + 40]	; 3: -35 70 40

log$47:	; £temporary544 = sum + term
x8437:	fadd	; 2: -34 -63

log$48:	; pop float sum
x8439:	fstp qword [bp + 48]	; 3: -35 94 48

log$49:	; push float power
x8442:	fld qword [bp + 56]	; 3: -35 70 56

log$50:	; push float x
x8445:	fld qword [bp + 32]	; 3: -35 70 32

log$51:	; £temporary545 = power * x
x8448:	fmul	; 2: -34 -55

log$52:	; pop float power
x8450:	fstp qword [bp + 56]	; 3: -35 94 56

log$53:	; push float plusMinusOne
x8453:	fld qword [bp + 24]	; 3: -35 70 24

log$54:	; push float -1.0
x8456:	fld qword [float8$minus1.0#]	; 4: -35 6 111 33

log$55:	; £temporary546 = plusMinusOne * -1.0
x8460:	fmul	; 2: -34 -55

log$56:	; pop float plusMinusOne
x8462:	fstp qword [bp + 24]	; 3: -35 94 24

log$57:	; call header integral zero 0 stack zero 0

log$58:	; push float term
x8465:	fld qword [bp + 40]	; 3: -35 70 40

log$59:	; parameter term, offset 6
x8468:	fstp qword [bp + 70]	; 3: -35 94 70

log$60:	; call function noellipse-noellipse fabs
x8471:	mov word [bp + 64], log$61	; 5: -57 70 64 37 33
x8476:	mov [bp + 66], bp	; 3: -119 110 66
x8479:	add bp, 64	; 3: -125 -59 64
x8482:	jmp fabs	; 3: -23 -39 -4

log$61:	; post call

log$62:	; £temporary547 = return_value

log$63:	; push float 0.000000001
x8485:	fld qword [float8$0.000000001#]	; 4: -35 6 119 33

log$64:	; if £temporary547 > 0.000000001 goto 34
x8489:	fcompp	; 2: -34 -39
x8491:	fstsw ax	; 3: -101 -33 -32
x8494:	sahf	; 1: -98
x8495:	jb log$34	; 2: 114 -93

log$65:	; push float sum
x8497:	fld qword [bp + 48]	; 3: -35 70 48

log$66:	; £temporary549 = int_to_float expo (Signed_Int -> Double)
x8500:	fild word [bp + 14]	; 3: -33 70 14

log$67:	; £temporary550 = sum + £temporary549
x8503:	fadd	; 2: -34 -63

log$68:	; return_value = £temporary550

log$69:	; return
x8505:	mov ax, [bp]	; 3: -117 70 0
x8508:	mov di, [bp + 4]	; 3: -117 126 4
x8511:	mov bp, [bp + 2]	; 3: -117 110 2
x8514:	jmp ax	; 2: -1 -32

log$70:	; errno = 6
x8516:	mov word [errno], 6	; 6: -57 6 127 33 6 0

log$71:	; push 0
x8522:	fldz	; 2: -39 -18

log$72:	; return_value = 0

log$73:	; return
x8524:	mov ax, [bp]	; 3: -117 70 0
x8527:	mov di, [bp + 4]	; 3: -117 126 4
x8530:	mov bp, [bp + 2]	; 3: -117 110 2
x8533:	jmp ax	; 2: -1 -32

log$74:	; function end log

float8$0.3678794411714423216036827922#:
x8535:	dq 0.3678794411714423216036827922	; 8: 56 -17 44 54 86 -117 -41 63

float8$2.7182818284590452353#:
x8543:	dq 2.7182818284590452353	; 8: 105 87 20 -117 10 -65 5 64

float8$0.7357588823428846432073655843#:
x8551:	dq 0.7357588823428846432073655843	; 8: 56 -17 44 54 86 -117 -25 63

float8$minus1.0#:
x8559:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8567:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x8575:	dw 0	; 2: 0 0

pow:	; push float x
x8577:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x8580:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x8582:	fcompp	; 2: -34 -39
x8584:	fstsw ax	; 3: -101 -33 -32
x8587:	sahf	; 1: -98
x8588:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x8590:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x8593:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x8596:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x8599:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x8602:	mov word [bp + 30], pow$9	; 5: -57 70 30 -88 33
x8607:	mov [bp + 32], bp	; 3: -119 110 32
x8610:	add bp, 30	; 3: -125 -59 30
x8613:	jmp log	; 3: -23 -71 -2

pow$9:	; post call
x8616:	fstp qword [bp + 30]	; 3: -35 94 30
x8619:	fld qword [bp + 22]	; 3: -35 70 22
x8622:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary578 = return_value

pow$11:	; £temporary579 = y * £temporary578
x8625:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary579, offset 6
x8627:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x8630:	mov word [bp + 22], pow$14	; 5: -57 70 22 -60 33
x8635:	mov [bp + 24], bp	; 3: -119 110 24
x8638:	add bp, 22	; 3: -125 -59 22
x8641:	nop	; 1: -112
x8642:	jmp exp	; 2: -21 30

pow$14:	; post call

pow$15:	; £temporary580 = return_value

pow$16:	; return_value = £temporary580

pow$17:	; return
x8644:	mov ax, [bp]	; 3: -117 70 0
x8647:	mov di, [bp + 4]	; 3: -117 126 4
x8650:	mov bp, [bp + 2]	; 3: -117 110 2
x8653:	jmp ax	; 2: -1 -32

pow$18:	; errno = 6
x8655:	mov word [errno], 6	; 6: -57 6 127 33 6 0

pow$19:	; push 0
x8661:	fldz	; 2: -39 -18

pow$20:	; return_value = 0

pow$21:	; return
x8663:	mov ax, [bp]	; 3: -117 70 0
x8666:	mov di, [bp + 4]	; 3: -117 126 4
x8669:	mov bp, [bp + 2]	; 3: -117 110 2
x8672:	jmp ax	; 2: -1 -32

pow$22:	; function end pow

exp:	; push 0
x8674:	fldz	; 2: -39 -18

exp$1:	; pop float n
x8676:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x8679:	fld1	; 2: -39 -24

exp$3:	; pop float faculty
x8681:	fstp qword [bp + 22]	; 3: -35 94 22

exp$4:	; push 1
x8684:	fld1	; 2: -39 -24

exp$5:	; pop float power
x8686:	fstp qword [bp + 30]	; 3: -35 94 30

exp$6:	; push 0
x8689:	fldz	; 2: -39 -18

exp$7:	; pop float sum
x8691:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x8694:	fld qword [bp + 30]	; 3: -35 70 30

exp$9:	; push float faculty
x8697:	fld qword [bp + 22]	; 3: -35 70 22

exp$10:	; £temporary525 = power / faculty
x8700:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x8702:	fstp qword [bp + 38]	; 3: -35 94 38

exp$12:	; push float sum
x8705:	fld qword [bp + 46]	; 3: -35 70 46

exp$13:	; push float term
x8708:	fld qword [bp + 38]	; 3: -35 70 38

exp$14:	; £temporary526 = sum + term
x8711:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x8713:	fstp qword [bp + 46]	; 3: -35 94 46

exp$16:	; push float power
x8716:	fld qword [bp + 30]	; 3: -35 70 30

exp$17:	; push float x
x8719:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary527 = power * x
x8722:	fmul	; 2: -34 -55

exp$19:	; pop float power
x8724:	fstp qword [bp + 30]	; 3: -35 94 30

exp$20:	; push float faculty
x8727:	fld qword [bp + 22]	; 3: -35 70 22

exp$21:	; push float n
x8730:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x8733:	fld1	; 2: -39 -24

exp$23:	; n = n + 1
x8735:	fadd	; 2: -34 -63

exp$24:	; top float n
x8737:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary529 = faculty * £temporary528
x8740:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x8742:	fstp qword [bp + 22]	; 3: -35 94 22

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x8745:	fld qword [bp + 38]	; 3: -35 70 38

exp$29:	; parameter term, offset 6
x8748:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x8751:	mov word [bp + 54], exp$31	; 5: -57 70 54 61 34
x8756:	mov [bp + 56], bp	; 3: -119 110 56
x8759:	add bp, 54	; 3: -125 -59 54
x8762:	jmp fabs	; 3: -23 -63 -5

exp$31:	; post call

exp$32:	; £temporary530 = return_value

exp$33:	; push float 0.000000001
x8765:	fld qword [float8$0.000000001#]	; 4: -35 6 119 33

exp$34:	; if £temporary530 >= 0.000000001 goto 8
x8769:	fcompp	; 2: -34 -39
x8771:	fstsw ax	; 3: -101 -33 -32
x8774:	sahf	; 1: -98
x8775:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x8777:	fld qword [bp + 46]	; 3: -35 70 46

exp$36:	; return_value = sum

exp$37:	; return
x8780:	mov ax, [bp]	; 3: -117 70 0
x8783:	mov di, [bp + 4]	; 3: -117 126 4
x8786:	mov bp, [bp + 2]	; 3: -117 110 2
x8789:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

isdigit:	; if c < 48 goto 4
x8791:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x8795:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x8797:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x8801:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary394 = 1
x8803:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x8806:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary394 = 0
x8808:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary394

isdigit$6:	; return
x8811:	mov ax, [bp]	; 3: -117 70 0
x8814:	mov di, [bp + 4]	; 3: -117 126 4
x8817:	mov bp, [bp + 2]	; 3: -117 110 2
x8820:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

mktime:	; if tp == 0 goto 28
x8822:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x8826:	je mktime$28	; 4: 15 -124 -40 0

mktime$1:	; £temporary2800 -> tp = *tp, offset 10
x8830:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; £temporary2801 = £temporary2800 -> tp - 69
x8833:	mov ax, [si + 10]	; 3: -117 68 10
x8836:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; £temporary2802 = £temporary2801 / 4
x8839:	xor dx, dx	; 2: 49 -46
x8841:	idiv word [int2$4#]	; 4: -9 62 103 35

mktime$4:	; £temporary2803 = int_to_int £temporary2802 (Signed_Int -> Signed_Long_Int)
x8845:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8851:	cmp ax, 0	; 3: -125 -8 0
x8854:	jge mktime$5	; 2: 125 5
x8856:	neg ax	; 2: -9 -40
x8858:	neg eax	; 3: 102 -9 -40

mktime$5:	; leapDays = £temporary2803
x8861:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; £temporary2804 -> tp = *tp, offset 10
x8865:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; £temporary2805 = £temporary2804 -> tp - 70
x8868:	mov ax, [si + 10]	; 3: -117 68 10
x8871:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; £temporary2806 = £temporary2805 * 365
x8874:	xor dx, dx	; 2: 49 -46
x8876:	imul word [int2$365#]	; 4: -9 46 105 35

mktime$9:	; £temporary2807 = int_to_int £temporary2806 (Signed_Int -> Signed_Long_Int)
x8880:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8886:	cmp ax, 0	; 3: -125 -8 0
x8889:	jge mktime$10	; 2: 125 5
x8891:	neg ax	; 2: -9 -40
x8893:	neg eax	; 3: 102 -9 -40

mktime$10:	; £temporary2808 = £temporary2807 + leapDays
x8896:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; £temporary2809 -> tp = *tp, offset 14
x8900:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; £temporary2810 = int_to_int £temporary2809 -> tp (Signed_Int -> Signed_Long_Int)
x8903:	mov bx, [si + 14]	; 3: -117 92 14
x8906:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x8913:	cmp bx, 0	; 3: -125 -5 0
x8916:	jge mktime$13	; 2: 125 5
x8918:	neg bx	; 2: -9 -37
x8920:	neg ebx	; 3: 102 -9 -37

mktime$13:	; totalDays = £temporary2808 + £temporary2810
x8923:	add eax, ebx	; 3: 102 1 -40
x8926:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$14:	; £temporary2812 = totalDays * 86400
x8930:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x8934:	xor edx, edx	; 3: 102 49 -46
x8937:	imul dword [int4$86400#]	; 5: 102 -9 46 107 35
x8942:	mov ebx, eax	; 3: 102 -119 -61

mktime$15:	; £temporary2813 -> tp = *tp, offset 4
x8945:	mov si, [bp + 6]	; 3: -117 118 6

mktime$16:	; £temporary2814 = int_to_int £temporary2813 -> tp (Signed_Int -> Signed_Long_Int)
x8948:	mov ax, [si + 4]	; 3: -117 68 4
x8951:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8957:	cmp ax, 0	; 3: -125 -8 0
x8960:	jge mktime$17	; 2: 125 5
x8962:	neg ax	; 2: -9 -40
x8964:	neg eax	; 3: 102 -9 -40

mktime$17:	; £temporary2815 = £temporary2814 * 3600
x8967:	xor edx, edx	; 3: 102 49 -46
x8970:	imul dword [int4$3600#]	; 5: 102 -9 46 111 35

mktime$18:	; £temporary2816 = £temporary2812 + £temporary2815
x8975:	add ebx, eax	; 3: 102 1 -61

mktime$19:	; £temporary2817 -> tp = *tp, offset 2
x8978:	mov si, [bp + 6]	; 3: -117 118 6

mktime$20:	; £temporary2818 = int_to_int £temporary2817 -> tp (Signed_Int -> Signed_Long_Int)
x8981:	mov ax, [si + 2]	; 3: -117 68 2
x8984:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8990:	cmp ax, 0	; 3: -125 -8 0
x8993:	jge mktime$21	; 2: 125 5
x8995:	neg ax	; 2: -9 -40
x8997:	neg eax	; 3: 102 -9 -40

mktime$21:	; £temporary2819 = £temporary2818 * 60
x9000:	xor edx, edx	; 3: 102 49 -46
x9003:	imul dword [int4$60#]	; 5: 102 -9 46 115 35

mktime$22:	; £temporary2820 = £temporary2816 + £temporary2819
x9008:	add ebx, eax	; 3: 102 1 -61

mktime$23:	; £temporary2821 -> tp = *tp
x9011:	mov si, [bp + 6]	; 3: -117 118 6

mktime$24:	; £temporary2822 = int_to_int £temporary2821 -> tp (Signed_Int -> Signed_Long_Int)
x9014:	mov ax, [si]	; 2: -117 4
x9016:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9022:	cmp ax, 0	; 3: -125 -8 0
x9025:	jge mktime$25	; 2: 125 5
x9027:	neg ax	; 2: -9 -40
x9029:	neg eax	; 3: 102 -9 -40

mktime$25:	; £temporary2823 = £temporary2820 + £temporary2822
x9032:	add ebx, eax	; 3: 102 1 -61

mktime$26:	; return_value = £temporary2823

mktime$27:	; return
x9035:	mov ax, [bp]	; 3: -117 70 0
x9038:	mov di, [bp + 4]	; 3: -117 126 4
x9041:	mov bp, [bp + 2]	; 3: -117 110 2
x9044:	jmp ax	; 2: -1 -32

mktime$28:	; return_value = 0
x9046:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$29:	; return
x9052:	mov ax, [bp]	; 3: -117 70 0
x9055:	mov di, [bp + 4]	; 3: -117 126 4
x9058:	mov bp, [bp + 2]	; 3: -117 110 2
x9061:	jmp ax	; 2: -1 -32

mktime$30:	; function end mktime

int2$4#:
x9063:	dw 4	; 2: 4 0

int2$365#:
x9065:	dw 365	; 2: 109 1

int4$86400#:
x9067:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x9071:	dd 3600	; 4: 16 14 0 0

int4$60#:
x9075:	dd 60	; 4: 60 0 0 0

scanf:	; £temporary1833 = &format
x9079:	mov si, bp	; 2: -119 -18
x9081:	add si, 6	; 3: -125 -58 6

scanf$1:	; £temporary1834 = int_to_int £temporary1833 (Pointer -> Pointer)

scanf$2:	; arg_list = £temporary1834 + 2
x9084:	add si, 2	; 3: -125 -58 2
x9087:	mov [di + 8], si	; 3: -119 117 8

scanf$3:	; call header integral zero 0 stack zero 0

scanf$4:	; parameter format, offset 6
x9090:	mov ax, [bp + 6]	; 3: -117 70 6
x9093:	mov [di + 16], ax	; 3: -119 69 16

scanf$5:	; parameter arg_list, offset 8
x9096:	mov ax, [di + 8]	; 3: -117 69 8
x9099:	mov [di + 18], ax	; 3: -119 69 18

scanf$6:	; call function ellipse-noellipse vscanf
x9102:	mov word [di + 10], scanf$7	; 5: -57 69 10 -95 35
x9107:	mov [di + 12], bp	; 3: -119 109 12
x9110:	mov [di + 14], di	; 3: -119 125 14
x9113:	add di, 10	; 3: -125 -57 10
x9116:	mov bp, di	; 2: -119 -3
x9118:	nop	; 1: -112
x9119:	jmp vscanf	; 2: -21 11

scanf$7:	; post call

scanf$8:	; £temporary1836 = return_value

scanf$9:	; return_value = £temporary1836

scanf$10:	; return
x9121:	mov ax, [bp]	; 3: -117 70 0
x9124:	mov di, [bp + 4]	; 3: -117 126 4
x9127:	mov bp, [bp + 2]	; 3: -117 110 2
x9130:	jmp ax	; 2: -1 -32

scanf$11:	; function end scanf

vscanf:	; call header integral zero 0 stack zero 0

vscanf$1:	; parameter stdin, offset 6
x9132:	mov ax, [stdin]	; 3: -95 -41 35
x9135:	mov [bp + 16], ax	; 3: -119 70 16

vscanf$2:	; parameter format, offset 8
x9138:	mov ax, [bp + 6]	; 3: -117 70 6
x9141:	mov [bp + 18], ax	; 3: -119 70 18

vscanf$3:	; parameter arg_list, offset 10
x9144:	mov ax, [bp + 8]	; 3: -117 70 8
x9147:	mov [bp + 20], ax	; 3: -119 70 20

vscanf$4:	; call function noellipse-noellipse vfscanf
x9150:	mov word [bp + 10], vscanf$5	; 5: -57 70 10 -52 35
x9155:	mov [bp + 12], bp	; 3: -119 110 12
x9158:	add bp, 10	; 3: -125 -59 10
x9161:	nop	; 1: -112
x9162:	jmp vfscanf	; 2: -21 13

vscanf$5:	; post call

vscanf$6:	; £temporary1840 = return_value

vscanf$7:	; return_value = £temporary1840

vscanf$8:	; return
x9164:	mov ax, [bp]	; 3: -117 70 0
x9167:	mov di, [bp + 4]	; 3: -117 126 4
x9170:	mov bp, [bp + 2]	; 3: -117 110 2
x9173:	jmp ax	; 2: -1 -32

vscanf$9:	; function end vscanf

stdin:
x9175:	dw g_fileArray	; 2: 41 4

vfscanf:	; g_inStatus = 0
x9177:	mov word [g_inStatus], 0	; 6: -57 6 10 36 0 0

vfscanf$1:	; £temporary1852 = int_to_int inStream (Pointer -> Pointer)
x9183:	mov ax, [bp + 6]	; 3: -117 70 6

vfscanf$2:	; g_inDevice = £temporary1852
x9186:	mov [g_inDevice], ax	; 3: -93 12 36

vfscanf$3:	; call header integral zero 0 stack zero 0

vfscanf$4:	; parameter format, offset 6
x9189:	mov ax, [bp + 8]	; 3: -117 70 8
x9192:	mov [bp + 18], ax	; 3: -119 70 18

vfscanf$5:	; parameter arg_list, offset 8
x9195:	mov ax, [bp + 10]	; 3: -117 70 10
x9198:	mov [bp + 20], ax	; 3: -119 70 20

vfscanf$6:	; call function noellipse-noellipse scanFormat
x9201:	mov word [bp + 12], vfscanf$7	; 5: -57 70 12 -1 35
x9206:	mov [bp + 14], bp	; 3: -119 110 14
x9209:	add bp, 12	; 3: -125 -59 12
x9212:	nop	; 1: -112
x9213:	jmp scanFormat	; 2: -21 15

vfscanf$7:	; post call

vfscanf$8:	; £temporary1853 = return_value

vfscanf$9:	; return_value = £temporary1853

vfscanf$10:	; return
x9215:	mov ax, [bp]	; 3: -117 70 0
x9218:	mov di, [bp + 4]	; 3: -117 126 4
x9221:	mov bp, [bp + 2]	; 3: -117 110 2
x9224:	jmp ax	; 2: -1 -32

vfscanf$11:	; function end vfscanf

g_inStatus:
x9226:	db 0, 0	; 2: 0 0

g_inDevice:
x9228:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x9230:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x9235:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x9240:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x9245:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x9250:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x9255:	mov word [g_inCount], 0	; 6: -57 6 48 41 0 0

scanFormat$6:	; g_inChars = 0
x9261:	mov word [g_inChars], 0	; 6: -57 6 50 41 0 0

scanFormat$7:	; index = 0
x9267:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1643 = format + index
x9272:	mov si, [bp + 6]	; 3: -117 118 6
x9275:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1642 -> £temporary1643 = *£temporary1643

scanFormat$10:	; if £temporary1642 -> £temporary1643 == 0 goto 325
x9278:	cmp byte [si], 0	; 3: -128 60 0
x9281:	je scanFormat$325	; 4: 15 -124 -36 4

scanFormat$11:	; £temporary1647 = format + index
x9285:	mov si, [bp + 6]	; 3: -117 118 6
x9288:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1646 -> £temporary1647 = *£temporary1647

scanFormat$13:	; c = £temporary1646 -> £temporary1647
x9291:	mov al, [si]	; 2: -118 4
x9293:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1648 = int_to_int c (Signed_Char -> Signed_Int)
x9296:	mov al, [bp + 10]	; 3: -118 70 10
x9299:	and ax, 255	; 3: 37 -1 0
x9302:	cmp al, 0	; 2: 60 0
x9304:	jge scanFormat$15	; 2: 125 4
x9306:	neg al	; 2: -10 -40
x9308:	neg ax	; 2: -9 -40

scanFormat$15:	; d = £temporary1648 + 1
x9310:	inc ax	; 1: 64
x9311:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$16:	; if percent == 0 goto 317
x9314:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x9318:	je scanFormat$317	; 4: 15 -124 -110 4

scanFormat$17:	; £temporary1650 = d - 1
x9322:	mov ax, [bp + 55]	; 3: -117 70 55
x9325:	dec ax	; 1: 72

scanFormat$18:	; case £temporary1650 == 104 goto 36
x9326:	cmp ax, 104	; 3: -125 -8 104
x9329:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; case £temporary1650 == 108 goto 38
x9331:	cmp ax, 108	; 3: -125 -8 108
x9334:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; case £temporary1650 == 76 goto 40
x9336:	cmp ax, 76	; 3: -125 -8 76
x9339:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; case £temporary1650 == 42 goto 42
x9341:	cmp ax, 42	; 3: -125 -8 42
x9344:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; case £temporary1650 == 99 goto 44
x9346:	cmp ax, 99	; 3: -125 -8 99
x9349:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; case £temporary1650 == 115 goto 62
x9351:	cmp ax, 115	; 3: -125 -8 115
x9354:	je scanFormat$62	; 4: 15 -124 -72 0

scanFormat$24:	; case £temporary1650 == 100 goto 81
x9358:	cmp ax, 100	; 3: -125 -8 100
x9361:	je scanFormat$81	; 4: 15 -124 1 1

scanFormat$25:	; case £temporary1650 == 105 goto 81
x9365:	cmp ax, 105	; 3: -125 -8 105
x9368:	je scanFormat$81	; 4: 15 -124 -6 0

scanFormat$26:	; case £temporary1650 == 111 goto 116
x9372:	cmp ax, 111	; 3: -125 -8 111
x9375:	je scanFormat$116	; 4: 15 -124 -126 1

scanFormat$27:	; case £temporary1650 == 120 goto 152
x9379:	cmp ax, 120	; 3: -125 -8 120
x9382:	je scanFormat$152	; 4: 15 -124 -4 1

scanFormat$28:	; case £temporary1650 == 117 goto 188
x9386:	cmp ax, 117	; 3: -125 -8 117
x9389:	je scanFormat$188	; 4: 15 -124 118 2

scanFormat$29:	; case £temporary1650 == 103 goto 224
x9393:	cmp ax, 103	; 3: -125 -8 103
x9396:	je scanFormat$224	; 4: 15 -124 -16 2

scanFormat$30:	; case £temporary1650 == 102 goto 224
x9400:	cmp ax, 102	; 3: -125 -8 102
x9403:	je scanFormat$224	; 4: 15 -124 -23 2

scanFormat$31:	; case £temporary1650 == 101 goto 224
x9407:	cmp ax, 101	; 3: -125 -8 101
x9410:	je scanFormat$224	; 4: 15 -124 -30 2

scanFormat$32:	; case £temporary1650 == 91 goto 260
x9414:	cmp ax, 91	; 3: -125 -8 91
x9417:	je scanFormat$260	; 4: 15 -124 79 3

scanFormat$33:	; case £temporary1650 == 110 goto 301
x9421:	cmp ax, 110	; 3: -125 -8 110
x9424:	je scanFormat$301	; 4: 15 -124 -33 3

scanFormat$34:	; case end £temporary1650

scanFormat$35:	; goto 310
x9428:	jmp scanFormat$310	; 3: -23 -6 3

scanFormat$36:	; shortInt = 1
x9431:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$37:	; goto 323
x9436:	jmp scanFormat$323	; 3: -23 60 4

scanFormat$38:	; longIntOrDouble = 1
x9439:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$39:	; goto 323
x9444:	jmp scanFormat$323	; 3: -23 52 4

scanFormat$40:	; longDouble = 1
x9447:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$41:	; goto 323
x9452:	jmp scanFormat$323	; 3: -23 44 4

scanFormat$42:	; star = 1
x9455:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$43:	; goto 323
x9460:	jmp scanFormat$323	; 3: -23 36 4

scanFormat$44:	; call header integral zero 0 stack zero 0

scanFormat$45:	; call function noellipse-noellipse scanChar
x9463:	mov word [bp + 57], scanFormat$46	; 5: -57 70 57 5 37
x9468:	mov [bp + 59], bp	; 3: -119 110 59
x9471:	add bp, 57	; 3: -125 -59 57
x9474:	jmp scanChar	; 3: -23 68 4

scanFormat$46:	; post call

scanFormat$47:	; £temporary1651 = return_value

scanFormat$48:	; charValue = £temporary1651
x9477:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$49:	; if star != 0 goto 57
x9480:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9484:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; arg_list = arg_list + 2
x9486:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$51:	; £temporary1655 = arg_list - 2
x9490:	mov si, [bp + 8]	; 3: -117 118 8
x9493:	sub si, 2	; 3: -125 -18 2

scanFormat$52:	; £temporary1656 = int_to_int £temporary1655 (Signed_Int -> Pointer)

scanFormat$53:	; £temporary1657 -> £temporary1656 = *£temporary1656

scanFormat$54:	; charPtr = £temporary1657 -> £temporary1656
x9496:	mov ax, [si]	; 2: -117 4
x9498:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$55:	; £temporary1658 -> charPtr = *charPtr
x9501:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$56:	; £temporary1658 -> charPtr = charValue
x9504:	mov al, [bp + 57]	; 3: -118 70 57
x9507:	mov [si], al	; 2: -120 4

scanFormat$57:	; percent = 0
x9509:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$58:	; £temporary1659 = int_to_int charValue (Signed_Char -> Signed_Int)
x9514:	mov al, [bp + 57]	; 3: -118 70 57
x9517:	and ax, 255	; 3: 37 -1 0
x9520:	cmp al, 0	; 2: 60 0
x9522:	jge scanFormat$59	; 2: 125 4
x9524:	neg al	; 2: -10 -40
x9526:	neg ax	; 2: -9 -40

scanFormat$59:	; if £temporary1659 == -1 goto 323
x9528:	cmp ax, -1	; 3: -125 -8 -1
x9531:	je scanFormat$323	; 4: 15 -124 -36 3

scanFormat$60:	; ++g_inCount
x9535:	inc word [g_inCount]	; 4: -1 6 48 41

scanFormat$61:	; goto 323
x9539:	jmp scanFormat$323	; 3: -23 -43 3

scanFormat$62:	; if star != 0 goto 74
x9542:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9546:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; arg_list = arg_list + 2
x9548:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$64:	; £temporary1665 = arg_list - 2
x9552:	mov si, [bp + 8]	; 3: -117 118 8
x9555:	sub si, 2	; 3: -125 -18 2

scanFormat$65:	; £temporary1666 = int_to_int £temporary1665 (Signed_Int -> Pointer)

scanFormat$66:	; £temporary1667 -> £temporary1666 = *£temporary1666

scanFormat$67:	; charPtr = £temporary1667 -> £temporary1666
x9558:	mov ax, [si]	; 2: -117 4
x9560:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$68:	; call header integral zero 0 stack zero 0

scanFormat$69:	; parameter charPtr, offset 6
x9563:	mov ax, [bp + 11]	; 3: -117 70 11
x9566:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$70:	; parameter 0, offset 8
x9569:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$71:	; call function noellipse-noellipse scanString
x9574:	mov word [bp + 57], scanFormat$72	; 5: -57 70 57 116 37
x9579:	mov [bp + 59], bp	; 3: -119 110 59
x9582:	add bp, 57	; 3: -125 -59 57
x9585:	jmp scanString	; 3: -23 68 4

scanFormat$72:	; post call

scanFormat$73:	; goto 79
x9588:	jmp scanFormat$79	; 2: -21 24

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter 0, offset 6
x9590:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$76:	; parameter 0, offset 8
x9595:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$77:	; call function noellipse-noellipse scanString
x9600:	mov word [bp + 57], scanFormat$78	; 5: -57 70 57 -114 37
x9605:	mov [bp + 59], bp	; 3: -119 110 59
x9608:	add bp, 57	; 3: -125 -59 57
x9611:	jmp scanString	; 3: -23 42 4

scanFormat$78:	; post call

scanFormat$79:	; percent = 0
x9614:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$80:	; goto 323
x9619:	jmp scanFormat$323	; 3: -23 -123 3

scanFormat$81:	; call header integral zero 0 stack zero 0

scanFormat$82:	; call function noellipse-noellipse scanLongInt
x9622:	mov word [bp + 57], scanFormat$83	; 5: -57 70 57 -92 37
x9627:	mov [bp + 59], bp	; 3: -119 110 59
x9630:	add bp, 57	; 3: -125 -59 57
x9633:	jmp scanLongInt	; 3: -23 -104 6

scanFormat$83:	; post call

scanFormat$84:	; £temporary1670 = return_value

scanFormat$85:	; longValue = £temporary1670
x9636:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$86:	; if star != 0 goto 114
x9640:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9644:	jne scanFormat$114	; 2: 117 111

scanFormat$87:	; if shortInt == 0 goto 97
x9646:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9650:	je scanFormat$97	; 2: 116 37

scanFormat$88:	; arg_list = arg_list + 2
x9652:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$89:	; £temporary1674 = arg_list - 2
x9656:	mov si, [bp + 8]	; 3: -117 118 8
x9659:	sub si, 2	; 3: -125 -18 2

scanFormat$90:	; £temporary1675 = int_to_int £temporary1674 (Signed_Int -> Pointer)

scanFormat$91:	; £temporary1676 -> £temporary1675 = *£temporary1675

scanFormat$92:	; shortPtr = £temporary1676 -> £temporary1675
x9662:	mov ax, [si]	; 2: -117 4
x9664:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$93:	; £temporary1677 -> shortPtr = *shortPtr
x9667:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$94:	; £temporary1678 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x9670:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9674:	cmp eax, 0	; 4: 102 -125 -8 0
x9678:	jge scanFormat$95	; 2: 125 5
x9680:	neg eax	; 3: 102 -9 -40
x9683:	neg al	; 2: -10 -40

scanFormat$95:	; £temporary1677 -> shortPtr = £temporary1678
x9685:	mov [si], al	; 2: -120 4

scanFormat$96:	; goto 114
x9687:	jmp scanFormat$114	; 2: -21 68

scanFormat$97:	; if longIntOrDouble != 0 goto 107
x9689:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9693:	jne scanFormat$107	; 2: 117 37

scanFormat$98:	; arg_list = arg_list + 2
x9695:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$99:	; £temporary1682 = arg_list - 2
x9699:	mov si, [bp + 8]	; 3: -117 118 8
x9702:	sub si, 2	; 3: -125 -18 2

scanFormat$100:	; £temporary1683 = int_to_int £temporary1682 (Signed_Int -> Pointer)

scanFormat$101:	; £temporary1684 -> £temporary1683 = *£temporary1683

scanFormat$102:	; intPtr = £temporary1684 -> £temporary1683
x9705:	mov ax, [si]	; 2: -117 4
x9707:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$103:	; £temporary1685 -> intPtr = *intPtr
x9710:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$104:	; £temporary1686 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x9713:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9717:	cmp eax, 0	; 4: 102 -125 -8 0
x9721:	jge scanFormat$105	; 2: 125 5
x9723:	neg eax	; 3: 102 -9 -40
x9726:	neg ax	; 2: -9 -40

scanFormat$105:	; £temporary1685 -> intPtr = £temporary1686
x9728:	mov [si], ax	; 2: -119 4

scanFormat$106:	; goto 114
x9730:	jmp scanFormat$114	; 2: -21 25

scanFormat$107:	; arg_list = arg_list + 2
x9732:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$108:	; £temporary1688 = arg_list - 2
x9736:	mov si, [bp + 8]	; 3: -117 118 8
x9739:	sub si, 2	; 3: -125 -18 2

scanFormat$109:	; £temporary1689 = int_to_int £temporary1688 (Signed_Int -> Pointer)

scanFormat$110:	; £temporary1690 -> £temporary1689 = *£temporary1689

scanFormat$111:	; longPtr = £temporary1690 -> £temporary1689
x9742:	mov ax, [si]	; 2: -117 4
x9744:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$112:	; £temporary1691 -> longPtr = *longPtr
x9747:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$113:	; £temporary1691 -> longPtr = longValue
x9750:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9754:	mov [si], eax	; 3: 102 -119 4

scanFormat$114:	; percent = 0
x9757:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$115:	; goto 323
x9762:	jmp scanFormat$323	; 3: -23 -10 2

scanFormat$116:	; call header integral zero 0 stack zero 0

scanFormat$117:	; parameter 8, offset 6
x9765:	mov dword [bp + 63], 8	; 8: 102 -57 70 63 8 0 0 0

scanFormat$118:	; call function noellipse-noellipse scanUnsignedLongInt
x9773:	mov word [bp + 57], scanFormat$119	; 5: -57 70 57 59 38
x9778:	mov [bp + 59], bp	; 3: -119 110 59
x9781:	add bp, 57	; 3: -125 -59 57
x9784:	jmp scanUnsignedLongInt	; 3: -23 88 7

scanFormat$119:	; post call

scanFormat$120:	; £temporary1693 = return_value

scanFormat$121:	; unsignedLongValue = £temporary1693
x9787:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$122:	; if star != 0 goto 150
x9791:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9795:	jne scanFormat$150	; 2: 117 89

scanFormat$123:	; if shortInt == 0 goto 133
x9797:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9801:	je scanFormat$133	; 2: 116 26

scanFormat$124:	; arg_list = arg_list + 2
x9803:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$125:	; £temporary1697 = arg_list - 2
x9807:	mov si, [bp + 8]	; 3: -117 118 8
x9810:	sub si, 2	; 3: -125 -18 2

scanFormat$126:	; £temporary1698 = int_to_int £temporary1697 (Signed_Int -> Pointer)

scanFormat$127:	; £temporary1699 -> £temporary1698 = *£temporary1698

scanFormat$128:	; unsignedShortPtr = £temporary1699 -> £temporary1698
x9813:	mov ax, [si]	; 2: -117 4
x9815:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$129:	; £temporary1700 -> unsignedShortPtr = *unsignedShortPtr
x9818:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$130:	; £temporary1701 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9821:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$131:	; £temporary1700 -> unsignedShortPtr = £temporary1701
x9825:	mov [si], al	; 2: -120 4

scanFormat$132:	; goto 150
x9827:	jmp scanFormat$150	; 2: -21 57

scanFormat$133:	; if longIntOrDouble != 0 goto 143
x9829:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9833:	jne scanFormat$143	; 2: 117 26

scanFormat$134:	; arg_list = arg_list + 2
x9835:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$135:	; £temporary1705 = arg_list - 2
x9839:	mov si, [bp + 8]	; 3: -117 118 8
x9842:	sub si, 2	; 3: -125 -18 2

scanFormat$136:	; £temporary1706 = int_to_int £temporary1705 (Signed_Int -> Pointer)

scanFormat$137:	; £temporary1707 -> £temporary1706 = *£temporary1706

scanFormat$138:	; unsignedIntPtr = £temporary1707 -> £temporary1706
x9845:	mov ax, [si]	; 2: -117 4
x9847:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$139:	; £temporary1708 -> unsignedIntPtr = *unsignedIntPtr
x9850:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$140:	; £temporary1709 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9853:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$141:	; £temporary1708 -> unsignedIntPtr = £temporary1709
x9857:	mov [si], ax	; 2: -119 4

scanFormat$142:	; goto 150
x9859:	jmp scanFormat$150	; 2: -21 25

scanFormat$143:	; arg_list = arg_list + 2
x9861:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$144:	; £temporary1711 = arg_list - 2
x9865:	mov si, [bp + 8]	; 3: -117 118 8
x9868:	sub si, 2	; 3: -125 -18 2

scanFormat$145:	; £temporary1712 = int_to_int £temporary1711 (Signed_Int -> Pointer)

scanFormat$146:	; £temporary1713 -> £temporary1712 = *£temporary1712

scanFormat$147:	; unsignedLongPtr = £temporary1713 -> £temporary1712
x9871:	mov ax, [si]	; 2: -117 4
x9873:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$148:	; £temporary1714 -> unsignedLongPtr = *unsignedLongPtr
x9876:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$149:	; £temporary1714 -> unsignedLongPtr = unsignedLongValue
x9879:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x9883:	mov [si], eax	; 3: 102 -119 4

scanFormat$150:	; percent = 0
x9886:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$151:	; goto 323
x9891:	jmp scanFormat$323	; 3: -23 117 2

scanFormat$152:	; call header integral zero 0 stack zero 0

scanFormat$153:	; parameter 16, offset 6
x9894:	mov dword [bp + 63], 16	; 8: 102 -57 70 63 16 0 0 0

scanFormat$154:	; call function noellipse-noellipse scanUnsignedLongInt
x9902:	mov word [bp + 57], scanFormat$155	; 5: -57 70 57 -68 38
x9907:	mov [bp + 59], bp	; 3: -119 110 59
x9910:	add bp, 57	; 3: -125 -59 57
x9913:	jmp scanUnsignedLongInt	; 3: -23 -41 6

scanFormat$155:	; post call

scanFormat$156:	; £temporary1716 = return_value

scanFormat$157:	; unsignedLongValue = £temporary1716
x9916:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$158:	; if star != 0 goto 186
x9920:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9924:	jne scanFormat$186	; 2: 117 89

scanFormat$159:	; if shortInt == 0 goto 169
x9926:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9930:	je scanFormat$169	; 2: 116 26

scanFormat$160:	; arg_list = arg_list + 2
x9932:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$161:	; £temporary1720 = arg_list - 2
x9936:	mov si, [bp + 8]	; 3: -117 118 8
x9939:	sub si, 2	; 3: -125 -18 2

scanFormat$162:	; £temporary1721 = int_to_int £temporary1720 (Signed_Int -> Pointer)

scanFormat$163:	; £temporary1722 -> £temporary1721 = *£temporary1721

scanFormat$164:	; unsignedShortPtr = £temporary1722 -> £temporary1721
x9942:	mov ax, [si]	; 2: -117 4
x9944:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$165:	; £temporary1723 -> unsignedShortPtr = *unsignedShortPtr
x9947:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$166:	; £temporary1724 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9950:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$167:	; £temporary1723 -> unsignedShortPtr = £temporary1724
x9954:	mov [si], al	; 2: -120 4

scanFormat$168:	; goto 186
x9956:	jmp scanFormat$186	; 2: -21 57

scanFormat$169:	; if longIntOrDouble != 0 goto 179
x9958:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9962:	jne scanFormat$179	; 2: 117 26

scanFormat$170:	; arg_list = arg_list + 2
x9964:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$171:	; £temporary1728 = arg_list - 2
x9968:	mov si, [bp + 8]	; 3: -117 118 8
x9971:	sub si, 2	; 3: -125 -18 2

scanFormat$172:	; £temporary1729 = int_to_int £temporary1728 (Signed_Int -> Pointer)

scanFormat$173:	; £temporary1730 -> £temporary1729 = *£temporary1729

scanFormat$174:	; unsignedIntPtr = £temporary1730 -> £temporary1729
x9974:	mov ax, [si]	; 2: -117 4
x9976:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$175:	; £temporary1731 -> unsignedIntPtr = *unsignedIntPtr
x9979:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$176:	; £temporary1732 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9982:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$177:	; £temporary1731 -> unsignedIntPtr = £temporary1732
x9986:	mov [si], ax	; 2: -119 4

scanFormat$178:	; goto 186
x9988:	jmp scanFormat$186	; 2: -21 25

scanFormat$179:	; arg_list = arg_list + 2
x9990:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$180:	; £temporary1734 = arg_list - 2
x9994:	mov si, [bp + 8]	; 3: -117 118 8
x9997:	sub si, 2	; 3: -125 -18 2

scanFormat$181:	; £temporary1735 = int_to_int £temporary1734 (Signed_Int -> Pointer)

scanFormat$182:	; £temporary1736 -> £temporary1735 = *£temporary1735

scanFormat$183:	; unsignedLongPtr = £temporary1736 -> £temporary1735
x10000:	mov ax, [si]	; 2: -117 4
x10002:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$184:	; £temporary1737 -> unsignedLongPtr = *unsignedLongPtr
x10005:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$185:	; £temporary1737 -> unsignedLongPtr = unsignedLongValue
x10008:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10012:	mov [si], eax	; 3: 102 -119 4

scanFormat$186:	; percent = 0
x10015:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$187:	; goto 323
x10020:	jmp scanFormat$323	; 3: -23 -12 1

scanFormat$188:	; call header integral zero 0 stack zero 0

scanFormat$189:	; parameter 0, offset 6
x10023:	mov dword [bp + 63], 0	; 8: 102 -57 70 63 0 0 0 0

scanFormat$190:	; call function noellipse-noellipse scanUnsignedLongInt
x10031:	mov word [bp + 57], scanFormat$191	; 5: -57 70 57 61 39
x10036:	mov [bp + 59], bp	; 3: -119 110 59
x10039:	add bp, 57	; 3: -125 -59 57
x10042:	jmp scanUnsignedLongInt	; 3: -23 86 6

scanFormat$191:	; post call

scanFormat$192:	; £temporary1739 = return_value

scanFormat$193:	; unsignedLongValue = £temporary1739
x10045:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$194:	; if star != 0 goto 222
x10049:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10053:	jne scanFormat$222	; 2: 117 89

scanFormat$195:	; if shortInt == 0 goto 205
x10055:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10059:	je scanFormat$205	; 2: 116 26

scanFormat$196:	; arg_list = arg_list + 2
x10061:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$197:	; £temporary1743 = arg_list - 2
x10065:	mov si, [bp + 8]	; 3: -117 118 8
x10068:	sub si, 2	; 3: -125 -18 2

scanFormat$198:	; £temporary1744 = int_to_int £temporary1743 (Signed_Int -> Pointer)

scanFormat$199:	; £temporary1745 -> £temporary1744 = *£temporary1744

scanFormat$200:	; unsignedShortPtr = £temporary1745 -> £temporary1744
x10071:	mov ax, [si]	; 2: -117 4
x10073:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$201:	; £temporary1746 -> unsignedShortPtr = *unsignedShortPtr
x10076:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$202:	; £temporary1747 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10079:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$203:	; £temporary1746 -> unsignedShortPtr = £temporary1747
x10083:	mov [si], al	; 2: -120 4

scanFormat$204:	; goto 222
x10085:	jmp scanFormat$222	; 2: -21 57

scanFormat$205:	; if longIntOrDouble != 0 goto 215
x10087:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10091:	jne scanFormat$215	; 2: 117 26

scanFormat$206:	; arg_list = arg_list + 2
x10093:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$207:	; £temporary1751 = arg_list - 2
x10097:	mov si, [bp + 8]	; 3: -117 118 8
x10100:	sub si, 2	; 3: -125 -18 2

scanFormat$208:	; £temporary1752 = int_to_int £temporary1751 (Signed_Int -> Pointer)

scanFormat$209:	; £temporary1753 -> £temporary1752 = *£temporary1752

scanFormat$210:	; unsignedIntPtr = £temporary1753 -> £temporary1752
x10103:	mov ax, [si]	; 2: -117 4
x10105:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$211:	; £temporary1754 -> unsignedIntPtr = *unsignedIntPtr
x10108:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$212:	; £temporary1755 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10111:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$213:	; £temporary1754 -> unsignedIntPtr = £temporary1755
x10115:	mov [si], ax	; 2: -119 4

scanFormat$214:	; goto 222
x10117:	jmp scanFormat$222	; 2: -21 25

scanFormat$215:	; arg_list = arg_list + 2
x10119:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$216:	; £temporary1757 = arg_list - 2
x10123:	mov si, [bp + 8]	; 3: -117 118 8
x10126:	sub si, 2	; 3: -125 -18 2

scanFormat$217:	; £temporary1758 = int_to_int £temporary1757 (Signed_Int -> Pointer)

scanFormat$218:	; £temporary1759 -> £temporary1758 = *£temporary1758

scanFormat$219:	; unsignedLongPtr = £temporary1759 -> £temporary1758
x10129:	mov ax, [si]	; 2: -117 4
x10131:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$220:	; £temporary1760 -> unsignedLongPtr = *unsignedLongPtr
x10134:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$221:	; £temporary1760 -> unsignedLongPtr = unsignedLongValue
x10137:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10141:	mov [si], eax	; 3: 102 -119 4

scanFormat$222:	; percent = 0
x10144:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$223:	; goto 323
x10149:	jmp scanFormat$323	; 3: -23 115 1

scanFormat$224:	; call header integral zero 0 stack zero 0

scanFormat$225:	; call function noellipse-noellipse scanLongDouble
x10152:	mov word [bp + 57], scanFormat$226	; 5: -57 70 57 -74 39
x10157:	mov [bp + 59], bp	; 3: -119 110 59
x10160:	add bp, 57	; 3: -125 -59 57
x10163:	jmp scanLongDouble	; 3: -23 -94 8

scanFormat$226:	; post call

scanFormat$227:	; £temporary1762 = return_value

scanFormat$228:	; pop float longDoubleValue
x10166:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$229:	; if star != 0 goto 258
x10169:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10173:	jne scanFormat$258	; 2: 117 85

scanFormat$230:	; if longIntOrDouble == 0 goto 240
x10175:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10179:	je scanFormat$240	; 2: 116 25

scanFormat$231:	; arg_list = arg_list + 2
x10181:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$232:	; £temporary1766 = arg_list - 2
x10185:	mov si, [bp + 8]	; 3: -117 118 8
x10188:	sub si, 2	; 3: -125 -18 2

scanFormat$233:	; £temporary1767 = int_to_int £temporary1766 (Signed_Int -> Pointer)

scanFormat$234:	; £temporary1768 -> £temporary1767 = *£temporary1767

scanFormat$235:	; doublePtr = £temporary1768 -> £temporary1767
x10191:	mov ax, [si]	; 2: -117 4
x10193:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$236:	; £temporary1769 -> doublePtr = *doublePtr
x10196:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$237:	; push float longDoubleValue
x10199:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$238:	; pop float £temporary1769 -> doublePtr
x10202:	fstp qword [si]	; 2: -35 28

scanFormat$239:	; goto 258
x10204:	jmp scanFormat$258	; 2: -21 54

scanFormat$240:	; if longDouble == 0 goto 250
x10206:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x10210:	je scanFormat$250	; 2: 116 25

scanFormat$241:	; arg_list = arg_list + 2
x10212:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$242:	; £temporary1772 = arg_list - 2
x10216:	mov si, [bp + 8]	; 3: -117 118 8
x10219:	sub si, 2	; 3: -125 -18 2

scanFormat$243:	; £temporary1773 = int_to_int £temporary1772 (Signed_Int -> Pointer)

scanFormat$244:	; £temporary1774 -> £temporary1773 = *£temporary1773

scanFormat$245:	; longDoublePtr = £temporary1774 -> £temporary1773
x10222:	mov ax, [si]	; 2: -117 4
x10224:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$246:	; £temporary1775 -> longDoublePtr = *longDoublePtr
x10227:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$247:	; push float longDoubleValue
x10230:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$248:	; pop float £temporary1775 -> longDoublePtr
x10233:	fstp qword [si]	; 2: -35 28

scanFormat$249:	; goto 258
x10235:	jmp scanFormat$258	; 2: -21 23

scanFormat$250:	; arg_list = arg_list + 2
x10237:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$251:	; £temporary1777 = arg_list - 2
x10241:	mov si, [bp + 8]	; 3: -117 118 8
x10244:	sub si, 2	; 3: -125 -18 2

scanFormat$252:	; £temporary1778 = int_to_int £temporary1777 (Signed_Int -> Pointer)

scanFormat$253:	; £temporary1779 -> £temporary1778 = *£temporary1778

scanFormat$254:	; floatPtr = £temporary1779 -> £temporary1778
x10247:	mov ax, [si]	; 2: -117 4
x10249:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$255:	; £temporary1780 -> floatPtr = *floatPtr
x10252:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$256:	; push float longDoubleValue
x10255:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$257:	; pop float £temporary1780 -> floatPtr
x10258:	fstp dword [si]	; 2: -39 28

scanFormat$258:	; percent = 0
x10260:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$259:	; goto 323
x10265:	jmp scanFormat$323	; 3: -23 -1 0

scanFormat$260:	; not = 0
x10268:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$261:	; ++index
x10273:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$262:	; £temporary1786 = format + index
x10276:	mov si, [bp + 6]	; 3: -117 118 6
x10279:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$263:	; £temporary1785 -> £temporary1786 = *£temporary1786

scanFormat$264:	; if £temporary1785 -> £temporary1786 != 94 goto 267
x10282:	cmp byte [si], 94	; 3: -128 60 94
x10285:	jne scanFormat$267	; 2: 117 12

scanFormat$265:	; not = 1
x10287:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$266:	; startIndex = index + 1
x10292:	mov ax, [bp + 31]	; 3: -117 70 31
x10295:	inc ax	; 1: 64
x10296:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$267:	; £temporary1790 = format + index
x10299:	mov si, [bp + 6]	; 3: -117 118 6
x10302:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$268:	; £temporary1789 -> £temporary1790 = *£temporary1790

scanFormat$269:	; if £temporary1789 -> £temporary1790 == 93 goto 272
x10305:	cmp byte [si], 93	; 3: -128 60 93
x10308:	je scanFormat$272	; 2: 116 5

scanFormat$270:	; ++index
x10310:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$271:	; goto 267
x10313:	jmp scanFormat$267	; 2: -21 -16

scanFormat$272:	; £temporary1794 = format + index
x10315:	mov si, [bp + 6]	; 3: -117 118 6
x10318:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$273:	; £temporary1793 -> £temporary1794 = *£temporary1794

scanFormat$274:	; £temporary1793 -> £temporary1794 = 0
x10321:	mov byte [si], 0	; 3: -58 4 0

scanFormat$275:	; if star != 0 goto 291
x10324:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10328:	jne scanFormat$291	; 2: 117 53

scanFormat$276:	; arg_list = arg_list + 2
x10330:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$277:	; £temporary1798 = arg_list - 2
x10334:	mov si, [bp + 8]	; 3: -117 118 8
x10337:	sub si, 2	; 3: -125 -18 2

scanFormat$278:	; £temporary1799 = int_to_int £temporary1798 (Signed_Int -> Pointer)

scanFormat$279:	; £temporary1800 -> £temporary1799 = *£temporary1799

scanFormat$280:	; string = £temporary1800 -> £temporary1799
x10340:	mov ax, [si]	; 2: -117 4
x10342:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$281:	; call header integral zero 0 stack zero 0

scanFormat$282:	; parameter string, offset 6
x10345:	mov ax, [bp + 61]	; 3: -117 70 61
x10348:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$283:	; £temporary1802 = format + startIndex
x10351:	mov si, [bp + 6]	; 3: -117 118 6
x10354:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$284:	; £temporary1801 -> £temporary1802 = *£temporary1802

scanFormat$285:	; £temporary1803 = &£temporary1801 -> £temporary1802

scanFormat$286:	; parameter £temporary1803, offset 8
x10357:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$287:	; parameter not, offset 10
x10360:	mov ax, [bp + 57]	; 3: -117 70 57
x10363:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$288:	; call function noellipse-noellipse scanPattern
x10366:	mov word [bp + 63], scanFormat$289	; 5: -57 70 63 -116 40
x10371:	mov [bp + 65], bp	; 3: -119 110 65
x10374:	add bp, 63	; 3: -125 -59 63
x10377:	jmp scanPattern	; 3: -23 -2 9

scanFormat$289:	; post call

scanFormat$290:	; goto 323
x10380:	jmp scanFormat$323	; 3: -23 -116 0

scanFormat$291:	; call header integral zero 0 stack zero 0

scanFormat$292:	; parameter 0, offset 6
x10383:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$293:	; £temporary1806 = format + startIndex
x10388:	mov si, [bp + 6]	; 3: -117 118 6
x10391:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$294:	; £temporary1805 -> £temporary1806 = *£temporary1806

scanFormat$295:	; £temporary1807 = &£temporary1805 -> £temporary1806

scanFormat$296:	; parameter £temporary1807, offset 8
x10394:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$297:	; parameter not, offset 10
x10397:	mov ax, [bp + 57]	; 3: -117 70 57
x10400:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$298:	; call function noellipse-noellipse scanPattern
x10403:	mov word [bp + 61], scanFormat$299	; 5: -57 70 61 -79 40
x10408:	mov [bp + 63], bp	; 3: -119 110 63
x10411:	add bp, 61	; 3: -125 -59 61
x10414:	jmp scanPattern	; 3: -23 -39 9

scanFormat$299:	; post call

scanFormat$300:	; goto 323
x10417:	jmp scanFormat$323	; 2: -21 104

scanFormat$301:	; arg_list = arg_list + 2
x10419:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$302:	; £temporary1810 = arg_list - 2
x10423:	mov si, [bp + 8]	; 3: -117 118 8
x10426:	sub si, 2	; 3: -125 -18 2

scanFormat$303:	; £temporary1811 = int_to_int £temporary1810 (Signed_Int -> Pointer)

scanFormat$304:	; £temporary1812 -> £temporary1811 = *£temporary1811

scanFormat$305:	; charsPtr = £temporary1812 -> £temporary1811
x10429:	mov ax, [si]	; 2: -117 4
x10431:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$306:	; £temporary1813 -> charsPtr = *charsPtr
x10434:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$307:	; £temporary1813 -> charsPtr = g_inChars
x10437:	mov ax, [g_inChars]	; 3: -95 50 41
x10440:	mov [si], ax	; 2: -119 4

scanFormat$308:	; percent = 0
x10442:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$309:	; goto 323
x10447:	jmp scanFormat$323	; 2: -21 74

scanFormat$310:	; call header integral zero 0 stack zero 0

scanFormat$311:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x10449:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 52 41

scanFormat$312:	; £temporary1814 = int_to_int c (Signed_Char -> Signed_Int)
x10454:	mov al, [bp + 10]	; 3: -118 70 10
x10457:	and ax, 255	; 3: 37 -1 0
x10460:	cmp al, 0	; 2: 60 0
x10462:	jge scanFormat$313	; 2: 125 4
x10464:	neg al	; 2: -10 -40
x10466:	neg ax	; 2: -9 -40

scanFormat$313:	; parameter £temporary1814, offset 8
x10468:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$314:	; call function noellipse-ellipse printf, extra 0
x10471:	mov word [bp + 57], scanFormat$315	; 5: -57 70 57 -6 40
x10476:	mov [bp + 59], bp	; 3: -119 110 59
x10479:	add bp, 57	; 3: -125 -59 57
x10482:	mov di, bp	; 2: -119 -17
x10484:	add di, 2	; 3: -125 -57 2
x10487:	jmp printf	; 3: -23 -51 -38

scanFormat$315:	; post call

scanFormat$316:	; goto 323
x10490:	jmp scanFormat$323	; 2: -21 31

scanFormat$317:	; if c != 37 goto 323
x10492:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x10496:	jne scanFormat$323	; 2: 117 25

scanFormat$318:	; percent = 1
x10498:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$319:	; shortInt = 0
x10503:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$320:	; longIntOrDouble = 0
x10508:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$321:	; longDouble = 0
x10513:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$322:	; star = 0
x10518:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$323:	; ++index
x10523:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$324:	; goto 8
x10526:	jmp scanFormat$8	; 3: -23 23 -5

scanFormat$325:	; return_value = g_inCount
x10529:	mov bx, [g_inCount]	; 4: -117 30 48 41

scanFormat$326:	; return
x10533:	mov ax, [bp]	; 3: -117 70 0
x10536:	mov di, [bp + 4]	; 3: -117 126 4
x10539:	mov bp, [bp + 2]	; 3: -117 110 2
x10542:	jmp ax	; 2: -1 -32

scanFormat$327:	; function end scanFormat

g_inCount:
x10544:	db 0, 0	; 2: 0 0

g_inChars:
x10546:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x10548:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x10569:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x10573:	mov ax, [g_inStatus]	; 3: -95 10 36
x10576:	cmp ax, 0	; 3: -125 -8 0
x10579:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x10581:	cmp ax, 1	; 3: -125 -8 1
x10584:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x10586:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1368 = int_to_int g_inDevice (Pointer -> Pointer)
x10588:	mov ax, [g_inDevice]	; 3: -95 12 36

scanChar$6:	; stream = £temporary1368
x10591:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1369 -> stream = *stream, offset 2
x10594:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1369 -> stream
x10597:	mov ax, [si + 2]	; 3: -117 68 2
x10600:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x10603:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x10605:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x10608:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1374 = &c
x10611:	mov dx, bp	; 2: -119 -22
x10613:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1374

scanChar$14:	; interrupt 33
x10616:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x10618:	inc word [g_inChars]	; 4: -1 6 50 41

scanChar$16:	; return_value = c
x10622:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x10625:	mov ax, [bp]	; 3: -117 70 0
x10628:	mov di, [bp + 4]	; 3: -117 126 4
x10631:	mov bp, [bp + 2]	; 3: -117 110 2
x10634:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1376 = int_to_int g_inDevice (Pointer -> Pointer)
x10636:	mov ax, [g_inDevice]	; 3: -95 12 36

scanChar$19:	; inString = £temporary1376
x10639:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1377 = g_inChars
x10642:	mov ax, [g_inChars]	; 3: -95 50 41

scanChar$21:	; ++g_inChars
x10645:	inc word [g_inChars]	; 4: -1 6 50 41

scanChar$22:	; £temporary1379 = inString + £temporary1377
x10649:	mov si, [bp + 11]	; 3: -117 118 11
x10652:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1378 -> £temporary1379 = *£temporary1379

scanChar$24:	; return_value = £temporary1378 -> £temporary1379
x10654:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x10656:	mov ax, [bp]	; 3: -117 70 0
x10659:	mov di, [bp + 4]	; 3: -117 126 4
x10662:	mov bp, [bp + 2]	; 3: -117 110 2
x10665:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x10667:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x10669:	mov ax, [bp]	; 3: -117 70 0
x10672:	mov di, [bp + 4]	; 3: -117 126 4
x10675:	mov bp, [bp + 2]	; 3: -117 110 2
x10678:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x10680:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x10685:	mov word [bp + 12], scanString$3	; 5: -57 70 12 -53 41
x10690:	mov [bp + 14], bp	; 3: -119 110 14
x10693:	add bp, 12	; 3: -125 -59 12
x10696:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1431 = return_value

scanString$5:	; input = £temporary1431
x10699:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x10702:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1432 = int_to_int input (Signed_Char -> Signed_Int)
x10707:	mov al, [bp + 12]	; 3: -118 70 12
x10710:	and ax, 255	; 3: 37 -1 0
x10713:	cmp al, 0	; 2: 60 0
x10715:	jge scanString$9	; 2: 125 4
x10717:	neg al	; 2: -10 -40
x10719:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1432, offset 6
x10721:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x10724:	mov word [bp + 15], scanString$11	; 5: -57 70 15 -14 41
x10729:	mov [bp + 17], bp	; 3: -119 110 17
x10732:	add bp, 15	; 3: -125 -59 15
x10735:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1433 = return_value

scanString$13:	; if £temporary1433 == 0 goto 20
x10738:	cmp bx, 0	; 3: -125 -5 0
x10741:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x10743:	mov word [bp + 15], scanString$16	; 5: -57 70 15 5 42
x10748:	mov [bp + 17], bp	; 3: -119 110 17
x10751:	add bp, 15	; 3: -125 -59 15
x10754:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1434 = return_value

scanString$18:	; input = £temporary1434
x10757:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x10760:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x10762:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x10766:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x10770:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10774:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1438 = int_to_int input (Signed_Char -> Signed_Int)
x10776:	mov al, [bp + 12]	; 3: -118 70 12
x10779:	and ax, 255	; 3: 37 -1 0
x10782:	cmp al, 0	; 2: 60 0
x10784:	jge scanString$24	; 2: 125 4
x10786:	neg al	; 2: -10 -40
x10788:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1438, offset 6
x10790:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x10793:	mov word [bp + 15], scanString$26	; 5: -57 70 15 55 42
x10798:	mov [bp + 17], bp	; 3: -119 110 17
x10801:	add bp, 15	; 3: -125 -59 15
x10804:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1439 = return_value

scanString$28:	; if £temporary1439 != 0 goto 45
x10807:	cmp bx, 0	; 3: -125 -5 0
x10810:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1442 = int_to_int input (Signed_Char -> Signed_Int)
x10812:	mov al, [bp + 12]	; 3: -118 70 12
x10815:	and ax, 255	; 3: 37 -1 0
x10818:	cmp al, 0	; 2: 60 0
x10820:	jge scanString$30	; 2: 125 4
x10822:	neg al	; 2: -10 -40
x10824:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1442 == -1 goto 45
x10826:	cmp ax, -1	; 3: -125 -8 -1
x10829:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x10831:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10835:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1447 = index
x10837:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x10840:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1449 = string + £temporary1447
x10843:	mov si, [bp + 6]	; 3: -117 118 6
x10846:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1448 -> £temporary1449 = *£temporary1449

scanString$36:	; £temporary1448 -> £temporary1449 = input
x10848:	mov al, [bp + 12]	; 3: -118 70 12
x10851:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x10853:	mov word [bp + 15], scanString$39	; 5: -57 70 15 115 42
x10858:	mov [bp + 17], bp	; 3: -119 110 17
x10861:	add bp, 15	; 3: -125 -59 15
x10864:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1450 = return_value

scanString$41:	; input = £temporary1450
x10867:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x10870:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x10875:	inc word [g_inChars]	; 4: -1 6 50 41

scanString$44:	; goto 22
x10879:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1453 = string + index
x10881:	mov si, [bp + 6]	; 3: -117 118 6
x10884:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1452 -> £temporary1453 = *£temporary1453

scanString$47:	; £temporary1452 -> £temporary1453 = 0
x10887:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x10890:	inc word [g_inChars]	; 4: -1 6 50 41

scanString$49:	; goto 126
x10894:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1455 = precision
x10897:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x10900:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1455 <= 0 goto 76
x10903:	cmp ax, 0	; 3: -125 -8 0
x10906:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1457 = int_to_int input (Signed_Char -> Signed_Int)
x10908:	mov al, [bp + 12]	; 3: -118 70 12
x10911:	and ax, 255	; 3: 37 -1 0
x10914:	cmp al, 0	; 2: 60 0
x10916:	jge scanString$55	; 2: 125 4
x10918:	neg al	; 2: -10 -40
x10920:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1457, offset 6
x10922:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x10925:	mov word [bp + 15], scanString$57	; 5: -57 70 15 -69 42
x10930:	mov [bp + 17], bp	; 3: -119 110 17
x10933:	add bp, 15	; 3: -125 -59 15
x10936:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1458 = return_value

scanString$59:	; if £temporary1458 != 0 goto 76
x10939:	cmp bx, 0	; 3: -125 -5 0
x10942:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1461 = int_to_int input (Signed_Char -> Signed_Int)
x10944:	mov al, [bp + 12]	; 3: -118 70 12
x10947:	and ax, 255	; 3: 37 -1 0
x10950:	cmp al, 0	; 2: 60 0
x10952:	jge scanString$61	; 2: 125 4
x10954:	neg al	; 2: -10 -40
x10956:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1461 == -1 goto 76
x10958:	cmp ax, -1	; 3: -125 -8 -1
x10961:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x10963:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10967:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1467 = index
x10969:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x10972:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1469 = string + £temporary1467
x10975:	mov si, [bp + 6]	; 3: -117 118 6
x10978:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1468 -> £temporary1469 = *£temporary1469

scanString$67:	; £temporary1468 -> £temporary1469 = input
x10980:	mov al, [bp + 12]	; 3: -118 70 12
x10983:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x10985:	mov word [bp + 15], scanString$70	; 5: -57 70 15 -9 42
x10990:	mov [bp + 17], bp	; 3: -119 110 17
x10993:	add bp, 15	; 3: -125 -59 15
x10996:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1470 = return_value

scanString$72:	; input = £temporary1470
x10999:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x11002:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x11007:	inc word [g_inChars]	; 4: -1 6 50 41

scanString$75:	; goto 50
x11011:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x11013:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11017:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1474 = string + index
x11021:	mov si, [bp + 6]	; 3: -117 118 6
x11024:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1473 -> £temporary1474 = *£temporary1474

scanString$79:	; £temporary1473 -> £temporary1474 = 0
x11027:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x11030:	inc word [g_inChars]	; 4: -1 6 50 41

scanString$81:	; goto 126
x11034:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x11037:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11041:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1477 = int_to_int input (Signed_Char -> Signed_Int)
x11043:	mov al, [bp + 12]	; 3: -118 70 12
x11046:	and ax, 255	; 3: 37 -1 0
x11049:	cmp al, 0	; 2: 60 0
x11051:	jge scanString$85	; 2: 125 4
x11053:	neg al	; 2: -10 -40
x11055:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1477, offset 6
x11057:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x11060:	mov word [bp + 15], scanString$87	; 5: -57 70 15 66 43
x11065:	mov [bp + 17], bp	; 3: -119 110 17
x11068:	add bp, 15	; 3: -125 -59 15
x11071:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1478 = return_value

scanString$89:	; if £temporary1478 != 0 goto 101
x11074:	cmp bx, 0	; 3: -125 -5 0
x11077:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1481 = int_to_int input (Signed_Char -> Signed_Int)
x11079:	mov al, [bp + 12]	; 3: -118 70 12
x11082:	and ax, 255	; 3: 37 -1 0
x11085:	cmp al, 0	; 2: 60 0
x11087:	jge scanString$91	; 2: 125 4
x11089:	neg al	; 2: -10 -40
x11091:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1481 == -1 goto 101
x11093:	cmp ax, -1	; 3: -125 -8 -1
x11096:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x11098:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11102:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x11104:	mov word [bp + 15], scanString$95	; 5: -57 70 15 110 43
x11109:	mov [bp + 17], bp	; 3: -119 110 17
x11112:	add bp, 15	; 3: -125 -59 15
x11115:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1486 = return_value

scanString$97:	; input = £temporary1486
x11118:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x11121:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x11126:	inc word [g_inChars]	; 4: -1 6 50 41

scanString$100:	; goto 83
x11130:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x11132:	inc word [g_inChars]	; 4: -1 6 50 41

scanString$102:	; goto 126
x11136:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1489 = precision
x11138:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x11141:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1489 <= 0 goto 124
x11144:	cmp ax, 0	; 3: -125 -8 0
x11147:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1491 = int_to_int input (Signed_Char -> Signed_Int)
x11149:	mov al, [bp + 12]	; 3: -118 70 12
x11152:	and ax, 255	; 3: 37 -1 0
x11155:	cmp al, 0	; 2: 60 0
x11157:	jge scanString$108	; 2: 125 4
x11159:	neg al	; 2: -10 -40
x11161:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1491, offset 6
x11163:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x11166:	mov word [bp + 15], scanString$110	; 5: -57 70 15 -84 43
x11171:	mov [bp + 17], bp	; 3: -119 110 17
x11174:	add bp, 15	; 3: -125 -59 15
x11177:	nop	; 1: -112
x11178:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1492 = return_value

scanString$112:	; if £temporary1492 != 0 goto 124
x11180:	cmp bx, 0	; 3: -125 -5 0
x11183:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1495 = int_to_int input (Signed_Char -> Signed_Int)
x11185:	mov al, [bp + 12]	; 3: -118 70 12
x11188:	and ax, 255	; 3: 37 -1 0
x11191:	cmp al, 0	; 2: 60 0
x11193:	jge scanString$114	; 2: 125 4
x11195:	neg al	; 2: -10 -40
x11197:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1495 == -1 goto 124
x11199:	cmp ax, -1	; 3: -125 -8 -1
x11202:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x11204:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11208:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x11210:	mov word [bp + 15], scanString$118	; 5: -57 70 15 -40 43
x11215:	mov [bp + 17], bp	; 3: -119 110 17
x11218:	add bp, 15	; 3: -125 -59 15
x11221:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1501 = return_value

scanString$120:	; input = £temporary1501
x11224:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x11227:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x11232:	inc word [g_inChars]	; 4: -1 6 50 41

scanString$123:	; goto 103
x11236:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x11238:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11242:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x11244:	inc word [g_inChars]	; 4: -1 6 50 41

scanString$126:	; if found == 0 goto 128
x11248:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x11252:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x11254:	inc word [g_inCount]	; 4: -1 6 48 41

scanString$128:	; return
x11258:	mov ax, [bp]	; 3: -117 70 0
x11261:	mov di, [bp + 4]	; 3: -117 126 4
x11264:	mov bp, [bp + 2]	; 3: -117 110 2
x11267:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x11269:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x11273:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x11275:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x11279:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x11281:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x11285:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x11287:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x11291:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x11293:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x11297:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x11299:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x11303:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary450 = 1
x11305:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x11308:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary450 = 0
x11310:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary450

isspace$10:	; return
x11313:	mov ax, [bp]	; 3: -117 70 0
x11316:	mov di, [bp + 4]	; 3: -117 126 4
x11319:	mov bp, [bp + 2]	; 3: -117 110 2
x11322:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x11324:	mov dword [bp + 6], 0	; 8: 102 -57 70 6 0 0 0 0

scanLongInt$1:	; minus = 0
x11332:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanLongInt$2:	; found = 0
x11337:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x11342:	mov word [bp + 14], scanLongInt$5	; 5: -57 70 14 92 44
x11347:	mov [bp + 16], bp	; 3: -119 110 16
x11350:	add bp, 14	; 3: -125 -59 14
x11353:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1528 = return_value

scanLongInt$7:	; input = £temporary1528
x11356:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1529 = int_to_int input (Signed_Char -> Signed_Int)
x11359:	mov al, [bp + 14]	; 3: -118 70 14
x11362:	and ax, 255	; 3: 37 -1 0
x11365:	cmp al, 0	; 2: 60 0
x11367:	jge scanLongInt$10	; 2: 125 4
x11369:	neg al	; 2: -10 -40
x11371:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1529, offset 6
x11373:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$11:	; call function noellipse-noellipse isspace
x11376:	mov word [bp + 15], scanLongInt$12	; 5: -57 70 15 126 44
x11381:	mov [bp + 17], bp	; 3: -119 110 17
x11384:	add bp, 15	; 3: -125 -59 15
x11387:	nop	; 1: -112
x11388:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1530 = return_value

scanLongInt$14:	; if £temporary1530 == 0 goto 21
x11390:	cmp bx, 0	; 3: -125 -5 0
x11393:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x11395:	mov word [bp + 15], scanLongInt$17	; 5: -57 70 15 -111 44
x11400:	mov [bp + 17], bp	; 3: -119 110 17
x11403:	add bp, 15	; 3: -125 -59 15
x11406:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1531 = return_value

scanLongInt$19:	; input = £temporary1531
x11409:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$20:	; goto 8
x11412:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x11414:	cmp byte [bp + 14], 43	; 4: -128 126 14 43
x11418:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x11420:	mov word [bp + 15], scanLongInt$24	; 5: -57 70 15 -86 44
x11425:	mov [bp + 17], bp	; 3: -119 110 17
x11428:	add bp, 15	; 3: -125 -59 15
x11431:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1534 = return_value

scanLongInt$26:	; input = £temporary1534
x11434:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$27:	; goto 35
x11437:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x11439:	cmp byte [bp + 14], 45	; 4: -128 126 14 45
x11443:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x11445:	mov word [bp + 10], 1	; 5: -57 70 10 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x11450:	mov word [bp + 15], scanLongInt$32	; 5: -57 70 15 -56 44
x11455:	mov [bp + 17], bp	; 3: -119 110 17
x11458:	add bp, 15	; 3: -125 -59 15
x11461:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1536 = return_value

scanLongInt$34:	; input = £temporary1536
x11464:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$35:	; call header integral zero 0 stack zero 0

scanLongInt$36:	; £temporary1537 = int_to_int input (Signed_Char -> Signed_Int)
x11467:	mov al, [bp + 14]	; 3: -118 70 14
x11470:	and ax, 255	; 3: 37 -1 0
x11473:	cmp al, 0	; 2: 60 0
x11475:	jge scanLongInt$37	; 2: 125 4
x11477:	neg al	; 2: -10 -40
x11479:	neg ax	; 2: -9 -40

scanLongInt$37:	; parameter £temporary1537, offset 6
x11481:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$38:	; call function noellipse-noellipse isdigit
x11484:	mov word [bp + 15], scanLongInt$39	; 5: -57 70 15 -22 44
x11489:	mov [bp + 17], bp	; 3: -119 110 17
x11492:	add bp, 15	; 3: -125 -59 15
x11495:	jmp isdigit	; 3: -23 109 -11

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1538 = return_value

scanLongInt$41:	; if £temporary1538 == 0 goto 53
x11498:	cmp bx, 0	; 3: -125 -5 0
x11501:	je scanLongInt$53	; 2: 116 66

scanLongInt$42:	; £temporary1539 = longValue * 10
x11503:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11507:	xor edx, edx	; 3: 102 49 -46
x11510:	imul dword [int4$10#]	; 5: 102 -9 46 -51 19

scanLongInt$43:	; £temporary1540 = input - 48
x11515:	mov bl, [bp + 14]	; 3: -118 94 14
x11518:	sub bl, 48	; 3: -128 -21 48

scanLongInt$44:	; £temporary1541 = int_to_int £temporary1540 (Signed_Char -> Signed_Long_Int)
x11521:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0
x11528:	cmp bl, 0	; 3: -128 -5 0
x11531:	jge scanLongInt$45	; 2: 125 5
x11533:	neg bl	; 2: -10 -37
x11535:	neg ebx	; 3: 102 -9 -37

scanLongInt$45:	; longValue = £temporary1539 + £temporary1541
x11538:	add eax, ebx	; 3: 102 1 -40
x11541:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$46:	; call header integral zero 0 stack zero 0

scanLongInt$47:	; call function noellipse-noellipse scanChar
x11545:	mov word [bp + 15], scanLongInt$48	; 5: -57 70 15 39 45
x11550:	mov [bp + 17], bp	; 3: -119 110 17
x11553:	add bp, 15	; 3: -125 -59 15
x11556:	jmp scanChar	; 3: -23 34 -4

scanLongInt$48:	; post call

scanLongInt$49:	; £temporary1543 = return_value

scanLongInt$50:	; input = £temporary1543
x11559:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$51:	; found = 1
x11562:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$52:	; goto 35
x11567:	jmp scanLongInt$35	; 2: -21 -102

scanLongInt$53:	; if minus == 0 goto 56
x11569:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11573:	je scanLongInt$56	; 2: 116 11

scanLongInt$54:	; £temporary1545 = -longValue
x11575:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11579:	neg eax	; 3: 102 -9 -40

scanLongInt$55:	; longValue = £temporary1545
x11582:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$56:	; if found == 0 goto 58
x11586:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x11590:	je scanLongInt$58	; 2: 116 4

scanLongInt$57:	; ++g_inCount
x11592:	inc word [g_inCount]	; 4: -1 6 48 41

scanLongInt$58:	; call header integral zero 0 stack zero 0

scanLongInt$59:	; parameter input, offset 6
x11596:	mov al, [bp + 14]	; 3: -118 70 14
x11599:	mov [bp + 21], al	; 3: -120 70 21

scanLongInt$60:	; call function noellipse-noellipse unscanChar
x11602:	mov word [bp + 15], scanLongInt$61	; 5: -57 70 15 96 45
x11607:	mov [bp + 17], bp	; 3: -119 110 17
x11610:	add bp, 15	; 3: -125 -59 15
x11613:	nop	; 1: -112
x11614:	jmp unscanChar	; 2: -21 15

scanLongInt$61:	; post call

scanLongInt$62:	; return_value = longValue
x11616:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

scanLongInt$63:	; return
x11620:	mov ax, [bp]	; 3: -117 70 0
x11623:	mov di, [bp + 4]	; 3: -117 126 4
x11626:	mov bp, [bp + 2]	; 3: -117 110 2
x11629:	jmp ax	; 2: -1 -32

scanLongInt$64:	; function end scanLongInt

unscanChar:	; case g_inStatus == 0 goto 4
x11631:	mov ax, [g_inStatus]	; 3: -95 10 36
x11634:	cmp ax, 0	; 3: -125 -8 0
x11637:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x11639:	cmp ax, 1	; 3: -125 -8 1
x11642:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x11644:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x11646:	dec word [g_inChars]	; 4: -1 14 50 41

unscanChar$5:	; goto 7
x11650:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x11652:	dec word [g_inChars]	; 4: -1 14 50 41

unscanChar$7:	; return
x11656:	mov ax, [bp]	; 3: -117 70 0
x11659:	mov di, [bp + 4]	; 3: -117 126 4
x11662:	mov bp, [bp + 2]	; 3: -117 110 2
x11665:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x11667:	mov dword [bp + 10], 0	; 8: 102 -57 70 10 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x11675:	mov word [bp + 18], scanUnsignedLongInt$3	; 5: -57 70 18 -87 45
x11680:	mov [bp + 20], bp	; 3: -119 110 20
x11683:	add bp, 18	; 3: -125 -59 18
x11686:	jmp scanChar	; 3: -23 -96 -5

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1553 = return_value

scanUnsignedLongInt$5:	; input = £temporary1553
x11689:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$6:	; found = 1
x11692:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1554 = int_to_int input (Signed_Char -> Signed_Int)
x11697:	mov al, [bp + 18]	; 3: -118 70 18
x11700:	and ax, 255	; 3: 37 -1 0
x11703:	cmp al, 0	; 2: 60 0
x11705:	jge scanUnsignedLongInt$9	; 2: 125 4
x11707:	neg al	; 2: -10 -40
x11709:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1554, offset 6
x11711:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x11714:	mov word [bp + 21], scanUnsignedLongInt$11	; 5: -57 70 21 -48 45
x11719:	mov [bp + 23], bp	; 3: -119 110 23
x11722:	add bp, 21	; 3: -125 -59 21
x11725:	jmp isspace	; 3: -23 53 -2

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1555 = return_value

scanUnsignedLongInt$13:	; if £temporary1555 == 0 goto 20
x11728:	cmp bx, 0	; 3: -125 -5 0
x11731:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x11733:	mov word [bp + 21], scanUnsignedLongInt$16	; 5: -57 70 21 -29 45
x11738:	mov [bp + 23], bp	; 3: -119 110 23
x11741:	add bp, 21	; 3: -125 -59 21
x11744:	jmp scanChar	; 3: -23 102 -5

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1556 = return_value

scanUnsignedLongInt$18:	; input = £temporary1556
x11747:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$19:	; goto 7
x11750:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 48 goto 49
x11752:	cmp byte [bp + 18], 48	; 4: -128 126 18 48
x11756:	jne scanUnsignedLongInt$49	; 2: 117 118

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x11758:	mov word [bp + 21], scanUnsignedLongInt$23	; 5: -57 70 21 -4 45
x11763:	mov [bp + 23], bp	; 3: -119 110 23
x11766:	add bp, 21	; 3: -125 -59 21
x11769:	jmp scanChar	; 3: -23 77 -5

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1559 = return_value

scanUnsignedLongInt$25:	; input = £temporary1559
x11772:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$26:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$27:	; £temporary1560 = int_to_int input (Signed_Char -> Signed_Int)
x11775:	mov al, [bp + 18]	; 3: -118 70 18
x11778:	and ax, 255	; 3: 37 -1 0
x11781:	cmp al, 0	; 2: 60 0
x11783:	jge scanUnsignedLongInt$28	; 2: 125 4
x11785:	neg al	; 2: -10 -40
x11787:	neg ax	; 2: -9 -40

scanUnsignedLongInt$28:	; parameter £temporary1560, offset 6
x11789:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$29:	; call function noellipse-noellipse tolower
x11792:	mov word [bp + 21], scanUnsignedLongInt$30	; 5: -57 70 21 30 46
x11797:	mov [bp + 23], bp	; 3: -119 110 23
x11800:	add bp, 21	; 3: -125 -59 21
x11803:	jmp tolower	; 3: -23 2 -16

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1561 = return_value

scanUnsignedLongInt$32:	; if £temporary1561 != 120 goto 44
x11806:	cmp bx, 120	; 3: -125 -5 120
x11809:	jne scanUnsignedLongInt$44	; 2: 117 42

scanUnsignedLongInt$33:	; if base != 0 goto 36
x11811:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11816:	jne scanUnsignedLongInt$36	; 2: 117 8

scanUnsignedLongInt$34:	; £temporary1567 = 16
x11818:	mov eax, 16	; 6: 102 -72 16 0 0 0

scanUnsignedLongInt$35:	; goto 37
x11824:	jmp scanUnsignedLongInt$37	; 2: -21 4

scanUnsignedLongInt$36:	; £temporary1567 = base
x11826:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$37:	; base = £temporary1567
x11830:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$38:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$39:	; call function noellipse-noellipse scanChar
x11834:	mov word [bp + 21], scanUnsignedLongInt$40	; 5: -57 70 21 72 46
x11839:	mov [bp + 23], bp	; 3: -119 110 23
x11842:	add bp, 21	; 3: -125 -59 21
x11845:	jmp scanChar	; 3: -23 1 -5

scanUnsignedLongInt$40:	; post call

scanUnsignedLongInt$41:	; £temporary1568 = return_value

scanUnsignedLongInt$42:	; input = £temporary1568
x11848:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$43:	; goto 49
x11851:	jmp scanUnsignedLongInt$49	; 2: -21 23

scanUnsignedLongInt$44:	; if base != 0 goto 47
x11853:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11858:	jne scanUnsignedLongInt$47	; 2: 117 8

scanUnsignedLongInt$45:	; £temporary1573 = 8
x11860:	mov eax, 8	; 6: 102 -72 8 0 0 0

scanUnsignedLongInt$46:	; goto 48
x11866:	jmp scanUnsignedLongInt$48	; 2: -21 4

scanUnsignedLongInt$47:	; £temporary1573 = base
x11868:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$48:	; base = £temporary1573
x11872:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$49:	; if base != 0 goto 51
x11876:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11881:	jne scanUnsignedLongInt$51	; 2: 117 8

scanUnsignedLongInt$50:	; base = 10
x11883:	mov dword [bp + 6], 10	; 8: 102 -57 70 6 10 0 0 0

scanUnsignedLongInt$51:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$52:	; £temporary1575 = int_to_int input (Signed_Char -> Signed_Int)
x11891:	mov al, [bp + 18]	; 3: -118 70 18
x11894:	and ax, 255	; 3: 37 -1 0
x11897:	cmp al, 0	; 2: 60 0
x11899:	jge scanUnsignedLongInt$53	; 2: 125 4
x11901:	neg al	; 2: -10 -40
x11903:	neg ax	; 2: -9 -40

scanUnsignedLongInt$53:	; parameter £temporary1575, offset 6
x11905:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$54:	; call function noellipse-noellipse isxdigit
x11908:	mov word [bp + 21], scanUnsignedLongInt$55	; 5: -57 70 21 -110 46
x11913:	mov [bp + 23], bp	; 3: -119 110 23
x11916:	add bp, 21	; 3: -125 -59 21
x11919:	nop	; 1: -112
x11920:	jmp isxdigit	; 2: -21 127

scanUnsignedLongInt$55:	; post call

scanUnsignedLongInt$56:	; £temporary1576 = return_value

scanUnsignedLongInt$57:	; if £temporary1576 == 0 goto 74
x11922:	cmp bx, 0	; 3: -125 -5 0
x11925:	je scanUnsignedLongInt$74	; 2: 116 77

scanUnsignedLongInt$58:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$59:	; parameter input, offset 6
x11927:	mov al, [bp + 18]	; 3: -118 70 18
x11930:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$60:	; call function noellipse-noellipse digitToValue
x11933:	mov word [bp + 21], scanUnsignedLongInt$61	; 5: -57 70 21 -85 46
x11938:	mov [bp + 23], bp	; 3: -119 110 23
x11941:	add bp, 21	; 3: -125 -59 21
x11944:	jmp digitToValue	; 3: -23 -86 0

scanUnsignedLongInt$61:	; post call

scanUnsignedLongInt$62:	; £temporary1577 = return_value

scanUnsignedLongInt$63:	; digit = £temporary1577
x11947:	mov [bp + 14], ebx	; 4: 102 -119 94 14

scanUnsignedLongInt$64:	; if digit >= base goto 74
x11951:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11955:	cmp [bp + 14], eax	; 4: 102 57 70 14
x11959:	jae scanUnsignedLongInt$74	; 2: 115 43

scanUnsignedLongInt$65:	; £temporary1579 = unsignedLongValue * base
x11961:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x11965:	xor edx, edx	; 3: 102 49 -46
x11968:	mul dword [bp + 6]	; 4: 102 -9 102 6

scanUnsignedLongInt$66:	; unsignedLongValue = £temporary1579 + digit
x11972:	add eax, [bp + 14]	; 4: 102 3 70 14
x11976:	mov [bp + 10], eax	; 4: 102 -119 70 10

scanUnsignedLongInt$67:	; found = 1
x11980:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$68:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$69:	; call function noellipse-noellipse scanChar
x11985:	mov word [bp + 21], scanUnsignedLongInt$70	; 5: -57 70 21 -33 46
x11990:	mov [bp + 23], bp	; 3: -119 110 23
x11993:	add bp, 21	; 3: -125 -59 21
x11996:	jmp scanChar	; 3: -23 106 -6

scanUnsignedLongInt$70:	; post call

scanUnsignedLongInt$71:	; £temporary1581 = return_value

scanUnsignedLongInt$72:	; input = £temporary1581
x11999:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$73:	; goto 51
x12002:	jmp scanUnsignedLongInt$51	; 2: -21 -113

scanUnsignedLongInt$74:	; if found == 0 goto 76
x12004:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x12008:	je scanUnsignedLongInt$76	; 2: 116 4

scanUnsignedLongInt$75:	; ++g_inCount
x12010:	inc word [g_inCount]	; 4: -1 6 48 41

scanUnsignedLongInt$76:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$77:	; parameter input, offset 6
x12014:	mov al, [bp + 18]	; 3: -118 70 18
x12017:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$78:	; call function noellipse-noellipse unscanChar
x12020:	mov word [bp + 21], scanUnsignedLongInt$79	; 5: -57 70 21 2 47
x12025:	mov [bp + 23], bp	; 3: -119 110 23
x12028:	add bp, 21	; 3: -125 -59 21
x12031:	jmp unscanChar	; 3: -23 109 -2

scanUnsignedLongInt$79:	; post call

scanUnsignedLongInt$80:	; return_value = unsignedLongValue
x12034:	mov ebx, [bp + 10]	; 4: 102 -117 94 10

scanUnsignedLongInt$81:	; return
x12038:	mov ax, [bp]	; 3: -117 70 0
x12041:	mov di, [bp + 4]	; 3: -117 126 4
x12044:	mov bp, [bp + 2]	; 3: -117 110 2
x12047:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$82:	; function end scanUnsignedLongInt

isxdigit:	; call header integral zero 0 stack zero 0

isxdigit$1:	; parameter c, offset 6
x12049:	mov ax, [bp + 6]	; 3: -117 70 6
x12052:	mov [bp + 14], ax	; 3: -119 70 14

isxdigit$2:	; call function noellipse-noellipse isdigit
x12055:	mov word [bp + 8], isxdigit$3	; 5: -57 70 8 37 47
x12060:	mov [bp + 10], bp	; 3: -119 110 10
x12063:	add bp, 8	; 3: -125 -59 8
x12066:	jmp isdigit	; 3: -23 50 -13

isxdigit$3:	; post call

isxdigit$4:	; £temporary403 = return_value

isxdigit$5:	; if £temporary403 != 0 goto 10
x12069:	cmp bx, 0	; 3: -125 -5 0
x12072:	jne isxdigit$10	; 2: 117 24

isxdigit$6:	; if c < 97 goto 8
x12074:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12078:	jl isxdigit$8	; 2: 124 6

isxdigit$7:	; if c <= 102 goto 10
x12080:	cmp word [bp + 6], 102	; 4: -125 126 6 102
x12084:	jle isxdigit$10	; 2: 126 12

isxdigit$8:	; if c < 65 goto 12
x12086:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x12090:	jl isxdigit$12	; 2: 124 11

isxdigit$9:	; if c > 70 goto 12
x12092:	cmp word [bp + 6], 70	; 4: -125 126 6 70
x12096:	jg isxdigit$12	; 2: 127 5

isxdigit$10:	; £temporary413 = 1
x12098:	mov bx, 1	; 3: -69 1 0

isxdigit$11:	; goto 13
x12101:	jmp isxdigit$13	; 2: -21 3

isxdigit$12:	; £temporary413 = 0
x12103:	mov bx, 0	; 3: -69 0 0

isxdigit$13:	; return_value = £temporary413

isxdigit$14:	; return
x12106:	mov ax, [bp]	; 3: -117 70 0
x12109:	mov di, [bp + 4]	; 3: -117 126 4
x12112:	mov bp, [bp + 2]	; 3: -117 110 2
x12115:	jmp ax	; 2: -1 -32

isxdigit$15:	; function end isxdigit

digitToValue:	; call header integral zero 0 stack zero 0

digitToValue$1:	; £temporary1512 = int_to_int input (Signed_Char -> Signed_Int)
x12117:	mov al, [bp + 6]	; 3: -118 70 6
x12120:	and ax, 255	; 3: 37 -1 0
x12123:	cmp al, 0	; 2: 60 0
x12125:	jge digitToValue$2	; 2: 125 4
x12127:	neg al	; 2: -10 -40
x12129:	neg ax	; 2: -9 -40

digitToValue$2:	; parameter £temporary1512, offset 6
x12131:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$3:	; call function noellipse-noellipse isdigit
x12134:	mov word [bp + 7], digitToValue$4	; 5: -57 70 7 116 47
x12139:	mov [bp + 9], bp	; 3: -119 110 9
x12142:	add bp, 7	; 3: -125 -59 7
x12145:	jmp isdigit	; 3: -23 -29 -14

digitToValue$4:	; post call

digitToValue$5:	; £temporary1513 = return_value

digitToValue$6:	; if £temporary1513 == 0 goto 11
x12148:	cmp bx, 0	; 3: -125 -5 0
x12151:	je digitToValue$11	; 2: 116 24

digitToValue$7:	; £temporary1514 = input - 48
x12153:	mov bl, [bp + 6]	; 3: -118 94 6
x12156:	sub bl, 48	; 3: -128 -21 48

digitToValue$8:	; £temporary1515 = int_to_int £temporary1514 (Signed_Char -> Unsigned_Long_Int)
x12159:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$9:	; return_value = £temporary1515

digitToValue$10:	; return
x12166:	mov ax, [bp]	; 3: -117 70 0
x12169:	mov di, [bp + 4]	; 3: -117 126 4
x12172:	mov bp, [bp + 2]	; 3: -117 110 2
x12175:	jmp ax	; 2: -1 -32

digitToValue$11:	; call header integral zero 0 stack zero 0

digitToValue$12:	; £temporary1516 = int_to_int input (Signed_Char -> Signed_Int)
x12177:	mov al, [bp + 6]	; 3: -118 70 6
x12180:	and ax, 255	; 3: 37 -1 0
x12183:	cmp al, 0	; 2: 60 0
x12185:	jge digitToValue$13	; 2: 125 4
x12187:	neg al	; 2: -10 -40
x12189:	neg ax	; 2: -9 -40

digitToValue$13:	; parameter £temporary1516, offset 6
x12191:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$14:	; call function noellipse-noellipse islower
x12194:	mov word [bp + 7], digitToValue$15	; 5: -57 70 7 -80 47
x12199:	mov [bp + 9], bp	; 3: -119 110 9
x12202:	add bp, 7	; 3: -125 -59 7
x12205:	nop	; 1: -112
x12206:	jmp islower	; 2: -21 61

digitToValue$15:	; post call

digitToValue$16:	; £temporary1517 = return_value

digitToValue$17:	; if £temporary1517 == 0 goto 23
x12208:	cmp bx, 0	; 3: -125 -5 0
x12211:	je digitToValue$23	; 2: 116 28

digitToValue$18:	; £temporary1518 = input - 97
x12213:	mov bl, [bp + 6]	; 3: -118 94 6
x12216:	sub bl, 97	; 3: -128 -21 97

digitToValue$19:	; £temporary1519 = int_to_int £temporary1518 (Signed_Char -> Unsigned_Long_Int)
x12219:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$20:	; £temporary1520 = £temporary1519 + 10
x12226:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$21:	; return_value = £temporary1520

digitToValue$22:	; return
x12230:	mov ax, [bp]	; 3: -117 70 0
x12233:	mov di, [bp + 4]	; 3: -117 126 4
x12236:	mov bp, [bp + 2]	; 3: -117 110 2
x12239:	jmp ax	; 2: -1 -32

digitToValue$23:	; £temporary1521 = input - 65
x12241:	mov bl, [bp + 6]	; 3: -118 94 6
x12244:	sub bl, 65	; 3: -128 -21 65

digitToValue$24:	; £temporary1522 = int_to_int £temporary1521 (Signed_Char -> Unsigned_Long_Int)
x12247:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$25:	; £temporary1523 = £temporary1522 + 10
x12254:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$26:	; return_value = £temporary1523

digitToValue$27:	; return
x12258:	mov ax, [bp]	; 3: -117 70 0
x12261:	mov di, [bp + 4]	; 3: -117 126 4
x12264:	mov bp, [bp + 2]	; 3: -117 110 2
x12267:	jmp ax	; 2: -1 -32

digitToValue$28:	; function end digitToValue

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x12269:	mov word [bp + 8], islower$2	; 5: -57 70 8 -5 47
x12274:	mov [bp + 10], bp	; 3: -119 110 10
x12277:	add bp, 8	; 3: -125 -59 8
x12280:	jmp localeconv	; 3: -23 49 -27

islower$2:	; post call

islower$3:	; £temporary351 = return_value

islower$4:	; localeConvPtr = £temporary351
x12283:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x12286:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12290:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary353 -> localeConvPtr = *localeConvPtr, offset 12
x12292:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary353 -> localeConvPtr, offset 6
x12295:	mov ax, [si + 12]	; 3: -117 68 12
x12298:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x12301:	mov ax, [bp + 6]	; 3: -117 70 6
x12304:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x12307:	mov word [bp + 10], islower$11	; 5: -57 70 10 33 48
x12312:	mov [bp + 12], bp	; 3: -119 110 12
x12315:	add bp, 10	; 3: -125 -59 10
x12318:	jmp strchr	; 3: -23 -95 -22

islower$11:	; post call

islower$12:	; £temporary354 = return_value

islower$13:	; if £temporary354 == 0 goto 16
x12321:	cmp bx, 0	; 3: -125 -5 0
x12324:	je islower$16	; 2: 116 5

islower$14:	; £temporary356 = 1
x12326:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x12329:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary356 = 0
x12331:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary356

islower$18:	; return
x12334:	mov ax, [bp]	; 3: -117 70 0
x12337:	mov di, [bp + 4]	; 3: -117 126 4
x12340:	mov bp, [bp + 2]	; 3: -117 110 2
x12343:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x12345:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12349:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x12351:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x12355:	jg islower$23	; 2: 127 5

islower$21:	; £temporary360 = 1
x12357:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x12360:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary360 = 0
x12362:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary360

islower$25:	; return
x12365:	mov ax, [bp]	; 3: -117 70 0
x12368:	mov di, [bp + 4]	; 3: -117 126 4
x12371:	mov bp, [bp + 2]	; 3: -117 110 2
x12374:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

scanLongDouble:	; minus = 0
x12376:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x12381:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x12386:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x12388:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x12391:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x12393:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x12396:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 122 48
x12401:	mov [bp + 28], bp	; 3: -119 110 28
x12404:	add bp, 26	; 3: -125 -59 26
x12407:	jmp scanChar	; 3: -23 -49 -8

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1591 = return_value

scanLongDouble$10:	; input = £temporary1591
x12410:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1592 = int_to_int input (Signed_Char -> Signed_Int)
x12413:	mov al, [bp + 26]	; 3: -118 70 26
x12416:	and ax, 255	; 3: 37 -1 0
x12419:	cmp al, 0	; 2: 60 0
x12421:	jge scanLongDouble$13	; 2: 125 4
x12423:	neg al	; 2: -10 -40
x12425:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1592, offset 6
x12427:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x12430:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 -100 48
x12435:	mov [bp + 29], bp	; 3: -119 110 29
x12438:	add bp, 27	; 3: -125 -59 27
x12441:	jmp isspace	; 3: -23 105 -5

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1593 = return_value

scanLongDouble$17:	; if £temporary1593 == 0 goto 24
x12444:	cmp bx, 0	; 3: -125 -5 0
x12447:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x12449:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 -81 48
x12454:	mov [bp + 29], bp	; 3: -119 110 29
x12457:	add bp, 27	; 3: -125 -59 27
x12460:	jmp scanChar	; 3: -23 -102 -8

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1594 = return_value

scanLongDouble$22:	; input = £temporary1594
x12463:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x12466:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x12468:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x12472:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x12474:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 -56 48
x12479:	mov [bp + 29], bp	; 3: -119 110 29
x12482:	add bp, 27	; 3: -125 -59 27
x12485:	jmp scanChar	; 3: -23 -127 -8

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1597 = return_value

scanLongDouble$29:	; input = £temporary1597
x12488:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x12491:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x12493:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x12497:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x12499:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x12504:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 -26 48
x12509:	mov [bp + 29], bp	; 3: -119 110 29
x12512:	add bp, 27	; 3: -125 -59 27
x12515:	jmp scanChar	; 3: -23 99 -8

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1599 = return_value

scanLongDouble$37:	; input = £temporary1599
x12518:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1600 = int_to_int input (Signed_Char -> Signed_Int)
x12521:	mov al, [bp + 26]	; 3: -118 70 26
x12524:	and ax, 255	; 3: 37 -1 0
x12527:	cmp al, 0	; 2: 60 0
x12529:	jge scanLongDouble$40	; 2: 125 4
x12531:	neg al	; 2: -10 -40
x12533:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1600, offset 6
x12535:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x12538:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 8 49
x12543:	mov [bp + 29], bp	; 3: -119 110 29
x12546:	add bp, 27	; 3: -125 -59 27
x12549:	jmp isdigit	; 3: -23 79 -15

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1601 = return_value

scanLongDouble$44:	; if £temporary1601 == 0 goto 60
x12552:	cmp bx, 0	; 3: -125 -5 0
x12555:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x12557:	fld qword [float8$10.0#]	; 4: -35 6 -10 29

scanLongDouble$46:	; push float value
x12561:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1602 = 10.0 * value
x12564:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1603 = input - 48
x12566:	mov al, [bp + 26]	; 3: -118 70 26
x12569:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1605 = int_to_int £temporary1603 (Signed_Char -> Signed_Int)
x12571:	and ax, 255	; 3: 37 -1 0
x12574:	cmp al, 0	; 2: 60 0
x12576:	jge scanLongDouble$50	; 2: 125 4
x12578:	neg al	; 2: -10 -40
x12580:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1604 = int_to_float £temporary1605 (Signed_Int -> Long_Double)
x12582:	mov [container2bytes#], ax	; 3: -93 8 18
x12585:	fild word [container2bytes#]	; 4: -33 6 8 18

scanLongDouble$51:	; £temporary1606 = £temporary1602 + £temporary1604
x12589:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x12591:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x12594:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 64 49
x12599:	mov [bp + 29], bp	; 3: -119 110 29
x12602:	add bp, 27	; 3: -125 -59 27
x12605:	jmp scanChar	; 3: -23 9 -8

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1607 = return_value

scanLongDouble$57:	; input = £temporary1607
x12608:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x12611:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x12616:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x12618:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x12622:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x12624:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 94 49
x12629:	mov [bp + 29], bp	; 3: -119 110 29
x12632:	add bp, 27	; 3: -125 -59 27
x12635:	jmp scanChar	; 3: -23 -21 -9

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1610 = return_value

scanLongDouble$65:	; input = £temporary1610
x12638:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1611 = int_to_int input (Signed_Char -> Signed_Int)
x12641:	mov al, [bp + 26]	; 3: -118 70 26
x12644:	and ax, 255	; 3: 37 -1 0
x12647:	cmp al, 0	; 2: 60 0
x12649:	jge scanLongDouble$68	; 2: 125 4
x12651:	neg al	; 2: -10 -40
x12653:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1611, offset 6
x12655:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x12658:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 -128 49
x12663:	mov [bp + 29], bp	; 3: -119 110 29
x12666:	add bp, 27	; 3: -125 -59 27
x12669:	jmp isdigit	; 3: -23 -41 -16

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1612 = return_value

scanLongDouble$72:	; if £temporary1612 == 0 goto 92
x12672:	cmp bx, 0	; 3: -125 -5 0
x12675:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x12677:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x12680:	fld qword [float8$10.0#]	; 4: -35 6 -10 29

scanLongDouble$75:	; £temporary1613 = factor / 10.0
x12684:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x12686:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x12689:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x12692:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1614 = input - 48
x12695:	mov al, [bp + 26]	; 3: -118 70 26
x12698:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1616 = int_to_int £temporary1614 (Signed_Char -> Signed_Int)
x12700:	and ax, 255	; 3: 37 -1 0
x12703:	cmp al, 0	; 2: 60 0
x12705:	jge scanLongDouble$81	; 2: 125 4
x12707:	neg al	; 2: -10 -40
x12709:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1615 = int_to_float £temporary1616 (Signed_Int -> Long_Double)
x12711:	mov [container2bytes#], ax	; 3: -93 8 18
x12714:	fild word [container2bytes#]	; 4: -33 6 8 18

scanLongDouble$82:	; £temporary1617 = factor * £temporary1615
x12718:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1618 = value + £temporary1617
x12720:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x12722:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x12725:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 -61 49
x12730:	mov [bp + 29], bp	; 3: -119 110 29
x12733:	add bp, 27	; 3: -125 -59 27
x12736:	jmp scanChar	; 3: -23 -122 -9

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1619 = return_value

scanLongDouble$89:	; input = £temporary1619
x12739:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x12742:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x12747:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; parameter input, offset 6
x12749:	mov al, [bp + 26]	; 3: -118 70 26
x12752:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$94:	; call function noellipse-noellipse unscanChar
x12755:	mov word [bp + 27], scanLongDouble$95	; 5: -57 70 27 -31 49
x12760:	mov [bp + 29], bp	; 3: -119 110 29
x12763:	add bp, 27	; 3: -125 -59 27
x12766:	jmp unscanChar	; 3: -23 -114 -5

scanLongDouble$95:	; post call

scanLongDouble$96:	; call header integral zero 0 stack zero 0

scanLongDouble$97:	; £temporary1622 = int_to_int input (Signed_Char -> Signed_Int)
x12769:	mov al, [bp + 26]	; 3: -118 70 26
x12772:	and ax, 255	; 3: 37 -1 0
x12775:	cmp al, 0	; 2: 60 0
x12777:	jge scanLongDouble$98	; 2: 125 4
x12779:	neg al	; 2: -10 -40
x12781:	neg ax	; 2: -9 -40

scanLongDouble$98:	; parameter £temporary1622, offset 6
x12783:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$99:	; call function noellipse-noellipse tolower
x12786:	mov word [bp + 27], scanLongDouble$100	; 5: -57 70 27 0 50
x12791:	mov [bp + 29], bp	; 3: -119 110 29
x12794:	add bp, 27	; 3: -125 -59 27
x12797:	jmp tolower	; 3: -23 32 -20

scanLongDouble$100:	; post call

scanLongDouble$101:	; £temporary1623 = return_value

scanLongDouble$102:	; if £temporary1623 != 101 goto 121
x12800:	cmp bx, 101	; 3: -125 -5 101
x12803:	jne scanLongDouble$121	; 2: 117 75

scanLongDouble$103:	; call header integral zero 0 stack zero 0

scanLongDouble$104:	; call function noellipse-noellipse scanLongInt
x12805:	mov word [bp + 27], scanLongDouble$105	; 5: -57 70 27 19 50
x12810:	mov [bp + 29], bp	; 3: -119 110 29
x12813:	add bp, 27	; 3: -125 -59 27
x12816:	jmp scanLongInt	; 3: -23 41 -6

scanLongDouble$105:	; post call

scanLongDouble$106:	; £temporary1625 = return_value

scanLongDouble$107:	; £temporary1626 = int_to_float £temporary1625 (Signed_Long_Int -> Double)
x12819:	mov [container4bytes#], ebx	; 5: 102 -119 30 85 29
x12824:	fild dword [container4bytes#]	; 4: -37 6 85 29

scanLongDouble$108:	; pop float exponent
x12828:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$109:	; push float value
x12831:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$110:	; call header integral zero 0 stack no zero 1
x12834:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$111:	; push float 10.0
x12837:	fld qword [float8$10.0#]	; 4: -35 6 -10 29

scanLongDouble$112:	; parameter 10.0, offset 6
x12841:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$113:	; push float exponent
x12844:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$114:	; parameter exponent, offset 14
x12847:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$115:	; call function noellipse-noellipse pow
x12850:	mov word [bp + 43], scanLongDouble$116	; 5: -57 70 43 64 50
x12855:	mov [bp + 45], bp	; 3: -119 110 45
x12858:	add bp, 43	; 3: -125 -59 43
x12861:	jmp pow	; 3: -23 65 -17

scanLongDouble$116:	; post call
x12864:	fstp qword [bp + 43]	; 3: -35 94 43
x12867:	fld qword [bp + 35]	; 3: -35 70 35
x12870:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$117:	; £temporary1627 = return_value

scanLongDouble$118:	; £temporary1628 = value * £temporary1627
x12873:	fmul	; 2: -34 -55

scanLongDouble$119:	; pop float value
x12875:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$120:	; goto 125
x12878:	jmp scanLongDouble$125	; 2: -21 20

scanLongDouble$121:	; call header integral zero 0 stack zero 0

scanLongDouble$122:	; parameter input, offset 6
x12880:	mov al, [bp + 26]	; 3: -118 70 26
x12883:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$123:	; call function noellipse-noellipse unscanChar
x12886:	mov word [bp + 27], scanLongDouble$124	; 5: -57 70 27 100 50
x12891:	mov [bp + 29], bp	; 3: -119 110 29
x12894:	add bp, 27	; 3: -125 -59 27
x12897:	jmp unscanChar	; 3: -23 11 -5

scanLongDouble$124:	; post call

scanLongDouble$125:	; if minus == 0 goto 129
x12900:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x12904:	je scanLongDouble$129	; 2: 116 8

scanLongDouble$126:	; push float value
x12906:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$127:	; £temporary1630 = -value
x12909:	fchs	; 2: -39 -32

scanLongDouble$128:	; pop float value
x12911:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$129:	; if found == 0 goto 131
x12914:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12918:	je scanLongDouble$131	; 2: 116 4

scanLongDouble$130:	; ++g_inCount
x12920:	inc word [g_inCount]	; 4: -1 6 48 41

scanLongDouble$131:	; push float value
x12924:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$132:	; return_value = value

scanLongDouble$133:	; return
x12927:	mov ax, [bp]	; 3: -117 70 0
x12930:	mov di, [bp + 4]	; 3: -117 126 4
x12933:	mov bp, [bp + 2]	; 3: -117 110 2
x12936:	jmp ax	; 2: -1 -32

scanLongDouble$134:	; function end scanLongDouble

scanPattern:	; index = 0
x12938:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x12943:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 -99 50
x12948:	mov [bp + 16], bp	; 3: -119 110 16
x12951:	add bp, 14	; 3: -125 -59 14
x12954:	jmp scanChar	; 3: -23 -84 -10

scanPattern$3:	; post call

scanPattern$4:	; £temporary1383 = return_value

scanPattern$5:	; input = £temporary1383
x12957:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1384 = int_to_int input (Signed_Char -> Signed_Int)
x12960:	mov al, [bp + 14]	; 3: -118 70 14
x12963:	and ax, 255	; 3: 37 -1 0
x12966:	cmp al, 0	; 2: 60 0
x12968:	jge scanPattern$8	; 2: 125 4
x12970:	neg al	; 2: -10 -40
x12972:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1384, offset 6
x12974:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x12977:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 -65 50
x12982:	mov [bp + 17], bp	; 3: -119 110 17
x12985:	add bp, 15	; 3: -125 -59 15
x12988:	jmp isspace	; 3: -23 70 -7

scanPattern$10:	; post call

scanPattern$11:	; £temporary1385 = return_value

scanPattern$12:	; if £temporary1385 == 0 goto 19
x12991:	cmp bx, 0	; 3: -125 -5 0
x12994:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x12996:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 -46 50
x13001:	mov [bp + 17], bp	; 3: -119 110 17
x13004:	add bp, 15	; 3: -125 -59 15
x13007:	jmp scanChar	; 3: -23 119 -10

scanPattern$15:	; post call

scanPattern$16:	; £temporary1386 = return_value

scanPattern$17:	; input = £temporary1386
x13010:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x13013:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x13015:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x13019:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x13023:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13027:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x13029:	mov ax, [bp + 8]	; 3: -117 70 8
x13032:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1391 = int_to_int input (Signed_Char -> Signed_Int)
x13035:	mov al, [bp + 14]	; 3: -118 70 14
x13038:	and ax, 255	; 3: 37 -1 0
x13041:	cmp al, 0	; 2: 60 0
x13043:	jge scanPattern$24	; 2: 125 4
x13045:	neg al	; 2: -10 -40
x13047:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1391, offset 8
x13049:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x13052:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 10 51
x13057:	mov [bp + 17], bp	; 3: -119 110 17
x13060:	add bp, 15	; 3: -125 -59 15
x13063:	jmp strchr	; 3: -23 -72 -25

scanPattern$26:	; post call

scanPattern$27:	; £temporary1392 = return_value

scanPattern$28:	; if £temporary1392 != 0 goto 38
x13066:	cmp bx, 0	; 3: -125 -5 0
x13069:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x13071:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13075:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x13077:	mov ax, [bp + 8]	; 3: -117 70 8
x13080:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1395 = int_to_int input (Signed_Char -> Signed_Int)
x13083:	mov al, [bp + 14]	; 3: -118 70 14
x13086:	and ax, 255	; 3: 37 -1 0
x13089:	cmp al, 0	; 2: 60 0
x13091:	jge scanPattern$33	; 2: 125 4
x13093:	neg al	; 2: -10 -40
x13095:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1395, offset 8
x13097:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x13100:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 58 51
x13105:	mov [bp + 17], bp	; 3: -119 110 17
x13108:	add bp, 15	; 3: -125 -59 15
x13111:	jmp strchr	; 3: -23 -120 -25

scanPattern$35:	; post call

scanPattern$36:	; £temporary1396 = return_value

scanPattern$37:	; if £temporary1396 != 0 goto 49
x13114:	cmp bx, 0	; 3: -125 -5 0
x13117:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1402 = index
x13119:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x13122:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1404 = string + £temporary1402
x13125:	mov si, [bp + 6]	; 3: -117 118 6
x13128:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1403 -> £temporary1404 = *£temporary1404

scanPattern$42:	; £temporary1403 -> £temporary1404 = input
x13130:	mov al, [bp + 14]	; 3: -118 70 14
x13133:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x13135:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 93 51
x13140:	mov [bp + 17], bp	; 3: -119 110 17
x13143:	add bp, 15	; 3: -125 -59 15
x13146:	jmp scanChar	; 3: -23 -20 -11

scanPattern$45:	; post call

scanPattern$46:	; £temporary1405 = return_value

scanPattern$47:	; input = £temporary1405
x13149:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x13152:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1407 = string + index
x13155:	mov si, [bp + 6]	; 3: -117 118 6
x13158:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1406 -> £temporary1407 = *£temporary1407

scanPattern$51:	; £temporary1406 -> £temporary1407 = 0
x13161:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x13164:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x13166:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13170:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x13172:	mov ax, [bp + 8]	; 3: -117 70 8
x13175:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1410 = int_to_int input (Signed_Char -> Signed_Int)
x13178:	mov al, [bp + 14]	; 3: -118 70 14
x13181:	and ax, 255	; 3: 37 -1 0
x13184:	cmp al, 0	; 2: 60 0
x13186:	jge scanPattern$57	; 2: 125 4
x13188:	neg al	; 2: -10 -40
x13190:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1410, offset 8
x13192:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x13195:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 -103 51
x13200:	mov [bp + 17], bp	; 3: -119 110 17
x13203:	add bp, 15	; 3: -125 -59 15
x13206:	jmp strchr	; 3: -23 41 -25

scanPattern$59:	; post call

scanPattern$60:	; £temporary1411 = return_value

scanPattern$61:	; if £temporary1411 != 0 goto 71
x13209:	cmp bx, 0	; 3: -125 -5 0
x13212:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x13214:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13218:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x13220:	mov ax, [bp + 8]	; 3: -117 70 8
x13223:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1414 = int_to_int input (Signed_Char -> Signed_Int)
x13226:	mov al, [bp + 14]	; 3: -118 70 14
x13229:	and ax, 255	; 3: 37 -1 0
x13232:	cmp al, 0	; 2: 60 0
x13234:	jge scanPattern$66	; 2: 125 4
x13236:	neg al	; 2: -10 -40
x13238:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1414, offset 8
x13240:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x13243:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 -55 51
x13248:	mov [bp + 17], bp	; 3: -119 110 17
x13251:	add bp, 15	; 3: -125 -59 15
x13254:	jmp strchr	; 3: -23 -7 -26

scanPattern$68:	; post call

scanPattern$69:	; £temporary1415 = return_value

scanPattern$70:	; if £temporary1415 != 0 goto 77
x13257:	cmp bx, 0	; 3: -125 -5 0
x13260:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x13262:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 -36 51
x13267:	mov [bp + 17], bp	; 3: -119 110 17
x13270:	add bp, 15	; 3: -125 -59 15
x13273:	jmp scanChar	; 3: -23 109 -11

scanPattern$73:	; post call

scanPattern$74:	; £temporary1421 = return_value

scanPattern$75:	; input = £temporary1421
x13276:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x13279:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x13281:	mov ax, [bp]	; 3: -117 70 0
x13284:	mov di, [bp + 4]	; 3: -117 126 4
x13287:	mov bp, [bp + 2]	; 3: -117 110 2
x13290:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

$Path:
x13292:	db "C:\D\Main.com", 0	; 14: 67 58 92 68 92 77 97 105 110 46 99 111 109 0

$StackTop:
x13306:
