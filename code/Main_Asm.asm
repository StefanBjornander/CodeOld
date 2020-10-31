	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -72 53
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 -72 53 0 0
	; Initialize Argument List
x283:	mov si, bp	; 2: -119 -18
x285:	mov word [bp], $Path	; 5: -57 70 0 -86 53
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
x593:	jmp mktime	; 3: -23 -32 33

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
x690:	jmp scanf	; 3: -23 -128 34

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

printf:	; £temporary2309 = &format
x967:	mov si, bp	; 2: -119 -18
x969:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2310 = int_to_int £temporary2309 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2310 + 2
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

printf$8:	; £temporary2312 = return_value

printf$9:	; return_value = £temporary2312

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

vprintf$6:	; £temporary2316 = return_value

vprintf$7:	; return_value = £temporary2316

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

vfprintf$1:	; £temporary2328 = int_to_int outStream (Pointer -> Pointer)
x1651:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2328
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

vfprintf$8:	; £temporary2329 = return_value

vfprintf$9:	; return_value = £temporary2329

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

printFormat$16:	; £temporary2163 = format + index
x1779:	mov si, [bp + 6]	; 3: -117 118 6
x1782:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2162 -> £temporary2163 = *£temporary2163

printFormat$18:	; if £temporary2162 -> £temporary2163 == 0 goto 282
x1785:	cmp byte [si], 0	; 3: -128 60 0
x1788:	je printFormat$282	; 4: 15 -124 -52 4

printFormat$19:	; £temporary2167 = format + index
x1792:	mov si, [bp + 6]	; 3: -117 118 6
x1795:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2166 -> £temporary2167 = *£temporary2167

printFormat$21:	; c = £temporary2166 -> £temporary2167
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

printFormat$78:	; £temporary2171 = format + index
x2071:	mov si, [bp + 6]	; 3: -117 118 6
x2074:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2170 -> £temporary2171 = *£temporary2171

printFormat$80:	; £temporary2172 = &£temporary2170 -> £temporary2171

printFormat$81:	; parameter £temporary2172, offset 6
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

printFormat$86:	; £temporary2173 = &width
x2104:	mov si, bp	; 2: -119 -18
x2106:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2173, offset 16
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

printFormat$96:	; £temporary2174 = return_value

printFormat$97:	; arg_list = £temporary2174
x2160:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2176 = g_outChars - startChars
x2163:	mov ax, [g_outChars]	; 3: -95 -14 11
x2166:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x2169:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2176 >= width goto 235
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

printFormat$112:	; £temporary2180 = format + index
x2230:	mov si, [bp + 6]	; 3: -117 118 6
x2233:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2179 -> £temporary2180 = *£temporary2180

printFormat$114:	; £temporary2181 = &£temporary2179 -> £temporary2180

printFormat$115:	; parameter £temporary2181, offset 6
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

printFormat$120:	; £temporary2182 = &width
x2261:	mov si, bp	; 2: -119 -18
x2263:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2182, offset 16
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

printFormat$127:	; £temporary2183 = &negative
x2298:	mov si, bp	; 2: -119 -18
x2300:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2183, offset 28
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

printFormat$153:	; £temporary2195 = field + 1
x2423:	mov ax, [bp + 47]	; 3: -117 70 47
x2426:	inc ax	; 1: 64

printFormat$154:	; ++field
x2427:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; if £temporary2195 >= width goto 161
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

printFormat$162:	; £temporary2199 = format + index
x2455:	mov si, [bp + 6]	; 3: -117 118 6
x2458:	add si, [bp + 10]	; 3: 3 118 10

printFormat$163:	; £temporary2198 -> £temporary2199 = *£temporary2199

printFormat$164:	; £temporary2200 = &£temporary2198 -> £temporary2199

printFormat$165:	; parameter £temporary2200, offset 6
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

printFormat$179:	; £temporary2201 = return_value

printFormat$180:	; arg_list = £temporary2201
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

printFormat$186:	; £temporary2203 = format + index
x2563:	mov si, [bp + 6]	; 3: -117 118 6
x2566:	add si, [bp + 10]	; 3: 3 118 10

printFormat$187:	; £temporary2202 -> £temporary2203 = *£temporary2203

printFormat$188:	; £temporary2204 = &£temporary2202 -> £temporary2203

printFormat$189:	; parameter £temporary2204, offset 6
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

printFormat$194:	; £temporary2205 = &width
x2596:	mov si, bp	; 2: -119 -18
x2598:	add si, 12	; 3: -125 -58 12

printFormat$195:	; parameter £temporary2205, offset 16
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

printFormat$207:	; £temporary2208 = field
x2673:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$208:	; ++field
x2676:	inc word [bp + 45]	; 3: -1 70 45

printFormat$209:	; if £temporary2208 >= width goto 215
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

printFormat$216:	; £temporary2212 = format + index
x2704:	mov si, [bp + 6]	; 3: -117 118 6
x2707:	add si, [bp + 10]	; 3: 3 118 10

printFormat$217:	; £temporary2211 -> £temporary2212 = *£temporary2212

printFormat$218:	; £temporary2213 = &£temporary2211 -> £temporary2212

printFormat$219:	; parameter £temporary2213, offset 6
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

printFormat$233:	; £temporary2214 = return_value

printFormat$234:	; arg_list = £temporary2214
x2790:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$235:	; percent = 0
x2793:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$236:	; goto 280
x2798:	jmp printFormat$280	; 3: -23 -43 0

printFormat$237:	; value = 0
x2801:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$238:	; call header integral zero 0 stack zero 0

printFormat$239:	; £temporary2217 = int_to_int c (Signed_Char -> Signed_Int)
x2806:	mov al, [bp + 40]	; 3: -118 70 40
x2809:	and ax, 255	; 3: 37 -1 0
x2812:	cmp al, 0	; 2: 60 0
x2814:	jge printFormat$240	; 2: 125 4
x2816:	neg al	; 2: -10 -40
x2818:	neg ax	; 2: -9 -40

printFormat$240:	; parameter £temporary2217, offset 6
x2820:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$241:	; call function noellipse-noellipse isdigit
x2823:	mov word [bp + 43], printFormat$242	; 5: -57 70 43 21 11
x2828:	mov [bp + 45], bp	; 3: -119 110 45
x2831:	add bp, 43	; 3: -125 -59 43
x2834:	jmp isdigit	; 3: -23 0 25

printFormat$242:	; post call

printFormat$243:	; £temporary2218 = return_value

printFormat$244:	; if £temporary2218 == 0 goto 254
x2837:	cmp bx, 0	; 3: -125 -5 0
x2840:	je printFormat$254	; 2: 116 49

printFormat$245:	; £temporary2219 = value * 10
x2842:	mov ax, [bp + 41]	; 3: -117 70 41
x2845:	xor dx, dx	; 2: 49 -46
x2847:	imul word [int2$10#]	; 4: -9 46 -12 11

printFormat$246:	; £temporary2220 = c - 48
x2851:	mov bl, [bp + 40]	; 3: -118 94 40
x2854:	sub bl, 48	; 3: -128 -21 48

printFormat$247:	; £temporary2221 = int_to_int £temporary2220 (Signed_Char -> Signed_Int)
x2857:	and bx, 255	; 4: -127 -29 -1 0
x2861:	cmp bl, 0	; 3: -128 -5 0
x2864:	jge printFormat$248	; 2: 125 4
x2866:	neg bl	; 2: -10 -37
x2868:	neg bx	; 2: -9 -37

printFormat$248:	; value = £temporary2219 + £temporary2221
x2870:	add ax, bx	; 2: 1 -40
x2872:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$249:	; £temporary2223 = index + 1
x2875:	mov ax, [bp + 10]	; 3: -117 70 10
x2878:	inc ax	; 1: 64

printFormat$250:	; £temporary2225 = format + £temporary2223
x2879:	mov si, [bp + 6]	; 3: -117 118 6
x2882:	add si, ax	; 2: 1 -58

printFormat$251:	; £temporary2224 -> £temporary2225 = *£temporary2225

printFormat$252:	; c = £temporary2224 -> £temporary2225
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

printFormat$283:	; £temporary2234 = int_to_int g_outDevice (Pointer -> Pointer)
x3027:	mov ax, [g_outDevice]	; 3: -95 -96 6

printFormat$284:	; outString = £temporary2234
x3030:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$285:	; £temporary2236 = outString + g_outChars
x3033:	mov si, [bp + 40]	; 3: -117 118 40
x3036:	add si, [g_outChars]	; 4: 3 54 -14 11

printFormat$286:	; £temporary2235 -> £temporary2236 = *£temporary2236

printFormat$287:	; £temporary2235 -> £temporary2236 = 0
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

printArgument:	; £temporary1936 -> format = *format
x3062:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary1936 -> format
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

printArgument$23:	; £temporary1938 = arg_list - 2
x3184:	mov si, [bp + 8]	; 3: -117 118 8
x3187:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary1939 = int_to_int £temporary1938 (Signed_Int -> Pointer)

printArgument$25:	; £temporary1940 -> £temporary1939 = *£temporary1939

printArgument$26:	; £temporary1941 = int_to_int £temporary1940 -> £temporary1939 (Signed_Int -> Signed_Short_Int)
x3190:	mov ax, [si]	; 2: -117 4
x3192:	cmp ax, 0	; 3: -125 -8 0
x3195:	jge printArgument$27	; 2: 125 4
x3197:	neg ax	; 2: -9 -40
x3199:	neg al	; 2: -10 -40

printArgument$27:	; £temporary1942 = int_to_int £temporary1941 (Signed_Short_Int -> Signed_Long_Int)
x3201:	and eax, 255	; 6: 102 37 -1 0 0 0
x3207:	cmp al, 0	; 2: 60 0
x3209:	jge printArgument$28	; 2: 125 5
x3211:	neg al	; 2: -10 -40
x3213:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary1942
x3216:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x3220:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x3222:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3226:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x3228:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary1944 = arg_list - 4
x3232:	mov si, [bp + 8]	; 3: -117 118 8
x3235:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary1945 = int_to_int £temporary1944 (Signed_Int -> Pointer)

printArgument$34:	; £temporary1946 -> £temporary1945 = *£temporary1945

printArgument$35:	; longValue = £temporary1946 -> £temporary1945
x3238:	mov eax, [si]	; 3: 102 -117 4
x3241:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x3245:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x3247:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary1948 = arg_list - 2
x3251:	mov si, [bp + 8]	; 3: -117 118 8
x3254:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary1949 = int_to_int £temporary1948 (Signed_Int -> Pointer)

printArgument$40:	; £temporary1950 -> £temporary1949 = *£temporary1949

printArgument$41:	; £temporary1951 = int_to_int £temporary1950 -> £temporary1949 (Signed_Int -> Signed_Long_Int)
x3257:	mov ax, [si]	; 2: -117 4
x3259:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3265:	cmp ax, 0	; 3: -125 -8 0
x3268:	jge printArgument$42	; 2: 125 5
x3270:	neg ax	; 2: -9 -40
x3272:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary1951
x3275:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x3279:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3283:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary1955 -> negativePtr = *negativePtr
x3285:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x3288:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x3293:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary1957 = 1
x3295:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x3298:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary1957 = 0
x3300:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary1955 -> negativePtr = £temporary1957
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

printArgument$55:	; £temporary1960 = return_value

printArgument$56:	; longValue = £temporary1960
x3333:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x3337:	mov ax, [bp + 8]	; 3: -117 70 8
x3340:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x3343:	mov ax, [bp + 16]	; 3: -117 70 16
x3346:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary1961 = &precision
x3349:	mov si, bp	; 2: -119 -18
x3351:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary1961, offset 10
x3354:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x3357:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 43 13
x3362:	mov [bp + 50], bp	; 3: -119 110 50
x3365:	add bp, 48	; 3: -125 -59 48
x3368:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary1962 = return_value

printArgument$65:	; arg_list = £temporary1962
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

printArgument$74:	; £temporary1965 = arg_list - 2
x3415:	mov si, [bp + 8]	; 3: -117 118 8
x3418:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary1966 = int_to_int £temporary1965 (Signed_Int -> Pointer)

printArgument$76:	; £temporary1967 -> £temporary1966 = *£temporary1966

printArgument$77:	; £temporary1968 = int_to_int £temporary1967 -> £temporary1966 (Signed_Int -> Signed_Char)
x3421:	mov ax, [si]	; 2: -117 4
x3423:	cmp ax, 0	; 3: -125 -8 0
x3426:	jge printArgument$78	; 2: 125 4
x3428:	neg ax	; 2: -9 -40
x3430:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary1968
x3432:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x3435:	mov ax, [bp + 8]	; 3: -117 70 8
x3438:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x3441:	mov ax, [bp + 16]	; 3: -117 70 16
x3444:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary1969 = &precision
x3447:	mov si, bp	; 2: -119 -18
x3449:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary1969, offset 10
x3452:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x3455:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -115 13
x3460:	mov [bp + 46], bp	; 3: -119 110 46
x3463:	add bp, 44	; 3: -125 -59 44
x3466:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary1970 = return_value

printArgument$87:	; arg_list = £temporary1970
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

printArgument$94:	; £temporary1973 = arg_list - 2
x3499:	mov si, [bp + 8]	; 3: -117 118 8
x3502:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary1974 = int_to_int £temporary1973 (Signed_Int -> Pointer)

printArgument$96:	; £temporary1975 -> £temporary1974 = *£temporary1974

printArgument$97:	; stringValue = £temporary1975 -> £temporary1974
x3505:	mov ax, [si]	; 2: -117 4
x3507:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x3510:	mov ax, [bp + 8]	; 3: -117 70 8
x3513:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x3516:	mov ax, [bp + 16]	; 3: -117 70 16
x3519:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary1976 = &precision
x3522:	mov si, bp	; 2: -119 -18
x3524:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary1976, offset 10
x3527:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x3530:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -40 13
x3535:	mov [bp + 48], bp	; 3: -119 110 48
x3538:	add bp, 46	; 3: -125 -59 46
x3541:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary1977 = return_value

printArgument$106:	; arg_list = £temporary1977
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

printArgument$114:	; £temporary1993 = 10
x3582:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x3588:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x3590:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x3594:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary1989 = 8
x3596:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x3602:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x3604:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x3608:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary1985 = 2
x3610:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x3616:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary1985 = 16
x3618:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary1989 = £temporary1985

printArgument$124:	; £temporary1993 = £temporary1989

printArgument$125:	; base = £temporary1993
x3624:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x3628:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3632:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x3634:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary1995 = arg_list - 2
x3638:	mov si, [bp + 8]	; 3: -117 118 8
x3641:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary1996 = int_to_int £temporary1995 (Signed_Int -> Pointer)

printArgument$130:	; £temporary1997 -> £temporary1996 = *£temporary1996

printArgument$131:	; £temporary1998 = int_to_int £temporary1997 -> £temporary1996 (Unsigned_Int -> Unsigned_Short_Int)
x3644:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary1999 = int_to_int £temporary1998 (Unsigned_Short_Int -> Unsigned_Long_Int)
x3646:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary1999
x3652:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x3656:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x3658:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3662:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x3664:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2001 = arg_list - 4
x3668:	mov si, [bp + 8]	; 3: -117 118 8
x3671:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2002 = int_to_int £temporary2001 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2003 -> £temporary2002 = *£temporary2002

printArgument$140:	; value = £temporary2003 -> £temporary2002
x3674:	mov eax, [si]	; 3: 102 -117 4
x3677:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x3681:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x3683:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2005 = arg_list - 2
x3687:	mov si, [bp + 8]	; 3: -117 118 8
x3690:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2006 = int_to_int £temporary2005 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2007 -> £temporary2006 = *£temporary2006

printArgument$146:	; £temporary2008 = int_to_int £temporary2007 -> £temporary2006 (Unsigned_Int -> Unsigned_Long_Int)
x3693:	mov ax, [si]	; 2: -117 4
x3695:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2008
x3701:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x3705:	mov ax, [bp + 8]	; 3: -117 70 8
x3708:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x3711:	mov ax, [bp + 16]	; 3: -117 70 16
x3714:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2011 = &precision
x3717:	mov si, bp	; 2: -119 -18
x3719:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2011, offset 10
x3722:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x3725:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -101 14
x3730:	mov [bp + 54], bp	; 3: -119 110 54
x3733:	add bp, 52	; 3: -125 -59 52
x3736:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2012 = return_value

printArgument$156:	; arg_list = £temporary2012
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

printArgument$164:	; £temporary2013 = int_to_int c (Signed_Char -> Signed_Int)
x3776:	mov al, [bp + 30]	; 3: -118 70 30
x3779:	and ax, 255	; 3: 37 -1 0
x3782:	cmp al, 0	; 2: 60 0
x3784:	jge printArgument$165	; 2: 125 4
x3786:	neg al	; 2: -10 -40
x3788:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2013, offset 26
x3790:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x3793:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -33 14
x3798:	mov [bp + 74], bp	; 3: -119 110 74
x3801:	add bp, 72	; 3: -125 -59 72
x3804:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2014 = return_value

printArgument$169:	; parameter £temporary2014, offset 20
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

printArgument$175:	; £temporary2017 = arg_list - 8
x3837:	mov si, [bp + 8]	; 3: -117 118 8
x3840:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2018 = int_to_int £temporary2017 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2019 -> £temporary2018 = *£temporary2018

printArgument$178:	; push float £temporary2019 -> £temporary2018
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

printArgument$191:	; £temporary2022 = arg_list - 8
x3894:	mov si, [bp + 8]	; 3: -117 118 8
x3897:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2023 = int_to_int £temporary2022 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2024 -> £temporary2023 = *£temporary2023

printArgument$194:	; push float £temporary2024 -> £temporary2023
x3900:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x3902:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x3905:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3909:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2028 -> negativePtr = *negativePtr
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

printArgument$201:	; £temporary2030 = 1
x3927:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x3930:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2030 = 0
x3932:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2028 -> negativePtr = £temporary2030
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

printArgument$211:	; £temporary2033 = return_value

printArgument$212:	; pop float longDoubleValue
x3963:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x3966:	mov ax, [bp + 8]	; 3: -117 70 8
x3969:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x3972:	mov ax, [bp + 16]	; 3: -117 70 16
x3975:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2034 = &precision
x3978:	mov si, bp	; 2: -119 -18
x3980:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2034, offset 10
x3983:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x3986:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -96 15
x3991:	mov [bp + 46], bp	; 3: -119 110 46
x3994:	add bp, 44	; 3: -125 -59 44
x3997:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2035 = return_value

printArgument$221:	; arg_list = £temporary2035
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

printArgument$234:	; £temporary2038 = int_to_int c (Signed_Char -> Signed_Int)
x4056:	mov al, [bp + 30]	; 3: -118 70 30
x4059:	and ax, 255	; 3: 37 -1 0
x4062:	cmp al, 0	; 2: 60 0
x4064:	jge printArgument$235	; 2: 125 4
x4066:	neg al	; 2: -10 -40
x4068:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2038, offset 6
x4070:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x4073:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -9 15
x4078:	mov [bp + 46], bp	; 3: -119 110 46
x4081:	add bp, 44	; 3: -125 -59 44
x4084:	jmp tolower	; 3: -23 41 14

printArgument$237:	; post call

printArgument$238:	; £temporary2039 = return_value

printArgument$239:	; if £temporary2039 != 101 goto 257
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

printArgument$248:	; £temporary2041 = int_to_int c (Signed_Char -> Signed_Int)
x4122:	mov al, [bp + 30]	; 3: -118 70 30
x4125:	and ax, 255	; 3: 37 -1 0
x4128:	cmp al, 0	; 2: 60 0
x4130:	jge printArgument$249	; 2: 125 4
x4132:	neg al	; 2: -10 -40
x4134:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2041, offset 28
x4136:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x4139:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 57 16
x4144:	mov [bp + 68], bp	; 3: -119 110 68
x4147:	add bp, 66	; 3: -125 -59 66
x4150:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2042 = return_value

printArgument$253:	; parameter £temporary2042, offset 22
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

printArgument$263:	; £temporary2044 = return_value

printArgument$264:	; parameter £temporary2044, offset 6
x4193:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x4196:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 114 16
x4201:	mov [bp + 46], bp	; 3: -119 110 46
x4204:	add bp, 44	; 3: -125 -59 44
x4207:	jmp log10	; 3: -23 -74 15

printArgument$266:	; post call

printArgument$267:	; £temporary2045 = return_value

printArgument$268:	; £temporary2046 = float_to_int £temporary2045 (Double -> Signed_Int)
x4210:	fistp word [container2bytes#]	; 4: -33 30 8 18
x4214:	mov ax, [container2bytes#]	; 3: -95 8 18

printArgument$269:	; expo = £temporary2046
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

printArgument$290:	; £temporary2051 = int_to_int c (Signed_Char -> Signed_Int)
x4309:	mov al, [bp + 30]	; 3: -118 70 30
x4312:	and ax, 255	; 3: 37 -1 0
x4315:	cmp al, 0	; 2: 60 0
x4317:	jge printArgument$291	; 2: 125 4
x4319:	neg al	; 2: -10 -40
x4321:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2051, offset 28
x4323:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x4326:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -12 16
x4331:	mov [bp + 70], bp	; 3: -119 110 70
x4334:	add bp, 68	; 3: -125 -59 68
x4337:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2052 = return_value

printArgument$295:	; parameter £temporary2052, offset 22
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

printArgument$300:	; £temporary2055 = arg_list - 2
x4364:	mov si, [bp + 8]	; 3: -117 118 8
x4367:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2056 = int_to_int £temporary2055 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2057 -> £temporary2056 = *£temporary2056

printArgument$303:	; ptrValue = £temporary2057 -> £temporary2056
x4370:	mov ax, [si]	; 2: -117 4
x4372:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x4375:	mov ax, [bp + 8]	; 3: -117 70 8
x4378:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x4381:	mov ax, [bp + 16]	; 3: -117 70 16
x4384:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2058 = &precision
x4387:	mov si, bp	; 2: -119 -18
x4389:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2058, offset 10
x4392:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x4395:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 57 17
x4400:	mov [bp + 46], bp	; 3: -119 110 46
x4403:	add bp, 44	; 3: -125 -59 44
x4406:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2059 = return_value

printArgument$312:	; arg_list = £temporary2059
x4409:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2060 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x4412:	mov ax, [bp + 42]	; 3: -117 70 42
x4415:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2060, offset 6
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

printArgument$325:	; £temporary2063 = arg_list - 2
x4474:	mov si, [bp + 8]	; 3: -117 118 8
x4477:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2064 = int_to_int £temporary2063 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2065 -> £temporary2064 = *£temporary2064

printArgument$328:	; ptrValue = £temporary2065 -> £temporary2064
x4480:	mov ax, [si]	; 2: -117 4
x4482:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x4485:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2067 = arg_list - 2
x4489:	mov si, [bp + 8]	; 3: -117 118 8
x4492:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2068 = int_to_int £temporary2067 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2069 -> £temporary2068 = *£temporary2068

printArgument$333:	; intPtr = £temporary2069 -> £temporary2068
x4495:	mov ax, [si]	; 2: -117 4
x4497:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x4500:	mov ax, [bp + 8]	; 3: -117 70 8
x4503:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x4506:	mov ax, [bp + 16]	; 3: -117 70 16
x4509:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2070 = &precision
x4512:	mov si, bp	; 2: -119 -18
x4514:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2070, offset 10
x4517:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x4520:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -74 17
x4525:	mov [bp + 46], bp	; 3: -119 110 46
x4528:	add bp, 44	; 3: -125 -59 44
x4531:	nop	; 1: -112
x4532:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2071 = return_value

printArgument$342:	; arg_list = £temporary2071
x4534:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2072 -> intPtr = *intPtr
x4537:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2072 -> intPtr = g_outChars
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

printArgument$349:	; £temporary2073 = &precision
x4559:	mov si, bp	; 2: -119 -18
x4561:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2073, offset 10
x4564:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x4567:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -27 17
x4572:	mov [bp + 46], bp	; 3: -119 110 46
x4575:	add bp, 44	; 3: -125 -59 44
x4578:	nop	; 1: -112
x4579:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2074 = return_value

printArgument$354:	; arg_list = £temporary2074
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

labs$1:	; £temporary2540 = -value
x4625:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x4629:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2544 = £temporary2540

labs$3:	; goto 5
x4632:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2544 = value
x4634:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2544

labs$6:	; return
x4638:	mov ax, [bp]	; 3: -117 70 0
x4641:	mov di, [bp + 4]	; 3: -117 126 4
x4644:	mov bp, [bp + 2]	; 3: -117 110 2
x4647:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x4649:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4653:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1918 -> widthPtr = *widthPtr
x4655:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1918 -> widthPtr != -1 goto 9
x4658:	cmp word [si], -1	; 3: -125 60 -1
x4661:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1921 -> widthPtr = *widthPtr
x4663:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x4666:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1923 = arg_list - 2
x4670:	mov di, [bp + 6]	; 3: -117 126 6
x4673:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1924 = int_to_int £temporary1923 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1925 -> £temporary1924 = *£temporary1924

checkWidthAndPrecision$8:	; £temporary1921 -> widthPtr = £temporary1925 -> £temporary1924
x4676:	mov ax, [di]	; 2: -117 5
x4678:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x4680:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4684:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1927 -> precisionPtr = *precisionPtr
x4686:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1927 -> precisionPtr != -1 goto 18
x4689:	cmp word [si], -1	; 3: -125 60 -1
x4692:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary1930 -> precisionPtr = *precisionPtr
x4694:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x4697:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary1932 = arg_list - 2
x4701:	mov di, [bp + 6]	; 3: -117 126 6
x4704:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary1933 = int_to_int £temporary1932 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary1934 -> £temporary1933 = *£temporary1933

checkWidthAndPrecision$17:	; £temporary1930 -> precisionPtr = £temporary1934 -> £temporary1933
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

printLongInt$1:	; £temporary1773 = -longValue
x4732:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4736:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1773
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

printChar$5:	; £temporary1715 = int_to_int g_outDevice (Pointer -> Pointer)
x4893:	mov ax, [g_outDevice]	; 3: -95 -96 6

printChar$6:	; stream = £temporary1715
x4896:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x4899:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1718 -> stream = *stream, offset 2
x4901:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1718 -> stream
x4904:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x4907:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1721 = &c
x4910:	mov dx, bp	; 2: -119 -22
x4912:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1721

printChar$13:	; interrupt 33
x4915:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x4917:	inc word [g_outChars]	; 4: -1 6 -14 11

printChar$15:	; goto 25
x4921:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1723 = int_to_int g_outDevice (Pointer -> Pointer)
x4923:	mov ax, [g_outDevice]	; 3: -95 -96 6

printChar$17:	; outString = £temporary1723
x4926:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1724 = g_outChars
x4929:	mov ax, [g_outChars]	; 3: -95 -14 11

printChar$19:	; ++g_outChars
x4932:	inc word [g_outChars]	; 4: -1 6 -14 11

printChar$20:	; £temporary1726 = outString + £temporary1724
x4936:	mov si, [bp + 9]	; 3: -117 118 9
x4939:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1725 -> £temporary1726 = *£temporary1726

printChar$22:	; £temporary1725 -> £temporary1726 = c
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

printLongIntRec$1:	; £temporary1763 = longValue % 10
x4970:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4974:	xor edx, edx	; 3: 102 49 -46
x4977:	idiv dword [int4$10#]	; 5: 102 -9 62 -51 19

printLongIntRec$2:	; £temporary1764 = int_to_int £temporary1763 (Signed_Long_Int -> Signed_Int)
x4982:	cmp edx, 0	; 4: 102 -125 -6 0
x4986:	jge printLongIntRec$3	; 2: 125 5
x4988:	neg edx	; 3: 102 -9 -38
x4991:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1764
x4993:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1765 = longValue / 10
x4996:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x5000:	xor edx, edx	; 3: 102 49 -46
x5003:	idiv dword [int4$10#]	; 5: 102 -9 62 -51 19

printLongIntRec$6:	; parameter £temporary1765, offset 6
x5008:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x5012:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -94 19
x5017:	mov [bp + 14], bp	; 3: -119 110 14
x5020:	add bp, 12	; 3: -125 -59 12
x5023:	nop	; 1: -112
x5024:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1767 = digit + 48
x5026:	mov ax, [bp + 10]	; 3: -117 70 10
x5029:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1768 = int_to_int £temporary1767 (Signed_Int -> Signed_Char)
x5032:	cmp ax, 0	; 3: -125 -8 0
x5035:	jge printLongIntRec$12	; 2: 125 4
x5037:	neg ax	; 2: -9 -40
x5039:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1768, offset 6
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

printString$3:	; £temporary1732 = s + index
x5090:	mov si, [bp + 6]	; 3: -117 118 6
x5093:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1731 -> £temporary1732 = *£temporary1732

printString$5:	; if £temporary1731 -> £temporary1732 == 0 goto 53
x5096:	cmp byte [si], 0	; 3: -128 60 0
x5099:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1736 = s + index
x5103:	mov si, [bp + 6]	; 3: -117 118 6
x5106:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1735 -> £temporary1736 = *£temporary1736

printString$9:	; parameter £temporary1735 -> £temporary1736, offset 6
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

printString$15:	; £temporary1738 = precision
x5138:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x5141:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1738 <= 0 goto 53
x5144:	cmp ax, 0	; 3: -125 -8 0
x5147:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1741 = s + index
x5151:	mov si, [bp + 6]	; 3: -117 118 6
x5154:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1740 -> £temporary1741 = *£temporary1741

printString$20:	; if £temporary1740 -> £temporary1741 == 0 goto 53
x5157:	cmp byte [si], 0	; 3: -128 60 0
x5160:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1746 = s + index
x5164:	mov si, [bp + 6]	; 3: -117 118 6
x5167:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1745 -> £temporary1746 = *£temporary1746

printString$24:	; parameter £temporary1745 -> £temporary1746, offset 6
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
x5420:	cmp word [@23$g_currStructPtr], 0	; 5: -125 62 74 21 0
x5425:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary520 -> g_currStructPtr = *g_currStructPtr, offset 2
x5427:	mov si, [@23$g_currStructPtr]	; 4: -117 54 74 21

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

@23$g_currStructPtr:
x5450:	dw @21$sArray	; 2: 76 21

@21$sArray:
x5452:	dw string_# ; 2: 92 21
x5454:	dw @20$sw_EN_utf8	; 2: 93 21
x5456:	dw string_C# ; 2: 74 24
x5458:	dw @14$en_US_utf8	; 2: 76 24
x5460:	dw string_US# ; 2: -68 26
x5462:	dw @14$en_US_utf8	; 2: 76 24
x5464:	dw string_SE# ; 2: -65 26
x5466:	dw @20$sw_EN_utf8	; 2: 93 21

string_#:
x5468:	db 0	; 1: 0

@20$sw_EN_utf8:
x5469:	dw 1	; 2: 1 0
x5471:	dw 2	; 2: 2 0
x5473:	dw @15$swShortDayList ; 2: 111 21
x5475:	dw @16$swLongDayList ; 2: -103 21
x5477:	dw @12$enShortMonthList ; 2: -39 21
x5479:	dw @18$swLongMonthList ; 2: 33 22
x5481:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -113 22
x5483:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -86 22
x5485:	dw @19$swMessageList ; 2: -59 22

@15$swShortDayList:
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

@16$swLongDayList:
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

@12$enShortMonthList:
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

@18$swLongMonthList:
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

@19$swMessageList:
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

@14$en_US_utf8:
x6220:	dw -5	; 2: -5 -1
x6222:	dw -4	; 2: -4 -1
x6224:	dw @10$enShortDayList ; 2: 94 24
x6226:	dw @11$enLongDayList ; 2: -120 24
x6228:	dw @12$enShortMonthList ; 2: -39 21
x6230:	dw @13$enLongMonthList ; 2: -49 24
x6232:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -113 22
x6234:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -86 22
x6236:	dw enMessageList ; 2: 23 25

@10$enShortDayList:
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

@11$enLongDayList:
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

@13$enLongMonthList:
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

strchr:	; £temporary3165 = int_to_int i (Signed_Int -> Signed_Char)
x6850:	mov ax, [bp + 8]	; 3: -117 70 8
x6853:	cmp ax, 0	; 3: -125 -8 0
x6856:	jge strchr$1	; 2: 125 4
x6858:	neg ax	; 2: -9 -40
x6860:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3165
x6862:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x6865:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3167 = text + index
x6870:	mov si, [bp + 6]	; 3: -117 118 6
x6873:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3166 -> £temporary3167 = *£temporary3167

strchr$5:	; if £temporary3166 -> £temporary3167 == 0 goto 16
x6876:	cmp byte [si], 0	; 3: -128 60 0
x6879:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3171 = text + index
x6881:	mov si, [bp + 6]	; 3: -117 118 6
x6884:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3170 -> £temporary3171 = *£temporary3171

strchr$8:	; if £temporary3170 -> £temporary3171 != c goto 14
x6887:	mov al, [bp + 12]	; 3: -118 70 12
x6890:	cmp [si], al	; 2: 56 4
x6892:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3174 = text + index
x6894:	mov bx, [bp + 6]	; 3: -117 94 6
x6897:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3173 -> £temporary3174 = *£temporary3174

strchr$11:	; £temporary3175 = &£temporary3173 -> £temporary3174

strchr$12:	; return_value = £temporary3175

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

printUnsignedLong$23:	; £temporary1822 = 88
x7040:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x7042:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1822 = 120
x7044:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1822, offset 6
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

printUnsignedLongRec$1:	; £temporary1798 = unsignedValue % base
x7144:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7148:	xor edx, edx	; 3: 102 49 -46
x7151:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1799 = int_to_int £temporary1798 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1799
x7155:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1800 = unsignedValue / base
x7158:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7162:	xor edx, edx	; 3: 102 49 -46
x7165:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1800, offset 6
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

printUnsignedLongRec$16:	; £temporary1802 = return_value

printUnsignedLongRec$17:	; c = £temporary1802
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

digitToChar$1:	; £temporary1788 = digit + 48
x7267:	mov bx, [bp + 6]	; 3: -117 94 6
x7270:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1789 = int_to_int £temporary1788 (Signed_Int -> Signed_Char)
x7273:	cmp bx, 0	; 3: -125 -5 0
x7276:	jge digitToChar$3	; 2: 125 4
x7278:	neg bx	; 2: -9 -37
x7280:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1789

digitToChar$4:	; return
x7282:	mov ax, [bp]	; 3: -117 70 0
x7285:	mov di, [bp + 4]	; 3: -117 126 4
x7288:	mov bp, [bp + 2]	; 3: -117 110 2
x7291:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x7293:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7297:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1790 = digit - 10
x7299:	mov bx, [bp + 6]	; 3: -117 94 6
x7302:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1791 = £temporary1790 + 65
x7305:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1792 = int_to_int £temporary1791 (Signed_Int -> Signed_Char)
x7308:	cmp bx, 0	; 3: -125 -5 0
x7311:	jge digitToChar$9	; 2: 125 4
x7313:	neg bx	; 2: -9 -37
x7315:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1792

digitToChar$10:	; return
x7317:	mov ax, [bp]	; 3: -117 70 0
x7320:	mov di, [bp + 4]	; 3: -117 126 4
x7323:	mov bp, [bp + 2]	; 3: -117 110 2
x7326:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1793 = digit - 10
x7328:	mov bx, [bp + 6]	; 3: -117 94 6
x7331:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1794 = £temporary1793 + 97
x7334:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1795 = int_to_int £temporary1794 (Signed_Int -> Signed_Char)
x7337:	cmp bx, 0	; 3: -125 -5 0
x7340:	jge digitToChar$14	; 2: 125 4
x7342:	neg bx	; 2: -9 -37
x7344:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1795

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

printLongDoublePlain$8:	; £temporary1858 = -longDoubleValue
x7391:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x7393:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x7396:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x7401:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x7406:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1859 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7409:	fistp dword [container4bytes#]	; 4: -37 30 85 29
x7413:	mov eax, [container4bytes#]	; 4: 102 -95 85 29

printLongDoublePlain$14:	; longValue = £temporary1859
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

printLongDoublePlain$22:	; £temporary1861 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x7458:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1862 = longDoubleValue - £temporary1861
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

printLongDoubleFraction$2:	; £temporary1837 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7519:	fistp dword [container4bytes#]	; 4: -37 30 85 29
x7523:	mov eax, [container4bytes#]	; 4: 102 -95 85 29

printLongDoubleFraction$3:	; £temporary1838 = int_to_float £temporary1837 (Signed_Long_Int -> Long_Double)
x7527:	mov [container4bytes#], eax	; 4: 102 -93 85 29
x7531:	fild dword [container4bytes#]	; 4: -37 6 85 29

printLongDoubleFraction$4:	; £temporary1839 = longDoubleValue - £temporary1838
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

printLongDoubleFraction$14:	; £temporary1845 = precision
x7581:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x7584:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1845 <= 0 goto 34
x7587:	cmp ax, 0	; 3: -125 -8 0
x7590:	jle printLongDoubleFraction$34	; 2: 126 67

printLongDoubleFraction$17:	; push float 10.0
x7592:	fld qword [float8$10.0#]	; 4: -35 6 -10 29

printLongDoubleFraction$18:	; push float longDoubleValue
x7596:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1847 = 10.0 * longDoubleValue
x7599:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; top float longDoubleValue10
x7601:	fst qword [bp + 18]	; 3: -35 86 18

printLongDoubleFraction$21:	; £temporary1848 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x7604:	fistp word [container2bytes#]	; 4: -33 30 8 18
x7608:	mov ax, [container2bytes#]	; 3: -95 8 18

printLongDoubleFraction$22:	; digitValue = £temporary1848
x7611:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$23:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$24:	; £temporary1849 = digitValue + 48
x7614:	mov ax, [bp + 26]	; 3: -117 70 26
x7617:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$25:	; £temporary1850 = int_to_int £temporary1849 (Signed_Int -> Signed_Char)
x7620:	cmp ax, 0	; 3: -125 -8 0
x7623:	jge printLongDoubleFraction$26	; 2: 125 4
x7625:	neg ax	; 2: -9 -40
x7627:	neg al	; 2: -10 -40

printLongDoubleFraction$26:	; parameter £temporary1850, offset 6
x7629:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$27:	; call function noellipse-noellipse printChar
x7632:	mov word [bp + 28], printLongDoubleFraction$28	; 5: -57 70 28 -34 29
x7637:	mov [bp + 30], bp	; 3: -119 110 30
x7640:	add bp, 28	; 3: -125 -59 28
x7643:	jmp printChar	; 3: -23 43 -11

printLongDoubleFraction$28:	; post call

printLongDoubleFraction$29:	; push float longDoubleValue10
x7646:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$30:	; £temporary1852 = int_to_float digitValue (Signed_Int -> Long_Double)
x7649:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$31:	; £temporary1853 = longDoubleValue10 - £temporary1852
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

fabs$4:	; £temporary797 = -x
x7694:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7696:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7698:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary801

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

printLongDoubleExpo$16:	; £temporary1878 = 69
x7941:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x7943:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1878 = 101
x7945:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1878, offset 6
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

printLongDoubleExpo$35:	; £temporary1883 = -value
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

printLongDoubleExpo$42:	; £temporary1884 = return_value

printLongDoubleExpo$43:	; £temporary1885 = float_to_int £temporary1884 (Double -> Signed_Int)
x8044:	fistp word [container2bytes#]	; 4: -33 30 8 18
x8048:	mov ax, [container2bytes#]	; 3: -95 8 18

printLongDoubleExpo$44:	; expo = £temporary1885
x8051:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x8054:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x8057:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x8060:	fld qword [float8$10.0#]	; 4: -35 6 -10 29

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x8064:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1886 = int_to_float expo (Signed_Int -> Double)
x8067:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1886, offset 14
x8070:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x8073:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -105 31
x8078:	mov [bp + 36], bp	; 3: -119 110 36
x8081:	add bp, 34	; 3: -125 -59 34
x8084:	jmp pow	; 3: -23 -25 1

printLongDoubleExpo$52:	; post call
x8087:	fstp qword [bp + 34]	; 3: -35 94 34
x8090:	fld qword [bp + 26]	; 3: -35 70 26
x8093:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1887 = return_value

printLongDoubleExpo$54:	; £temporary1888 = value / £temporary1887
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

printLongDoubleExpo$67:	; £temporary1894 = 69
x8151:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x8153:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1894 = 101
x8155:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1894, offset 6
x8157:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x8160:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -18 31
x8165:	mov [bp + 28], bp	; 3: -119 110 28
x8168:	add bp, 26	; 3: -125 -59 26
x8171:	jmp printChar	; 3: -23 27 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1896 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x8174:	mov ax, [bp + 24]	; 3: -117 70 24
x8177:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8183:	cmp ax, 0	; 3: -125 -8 0
x8186:	jge printLongDoubleExpo$75	; 2: 125 5
x8188:	neg ax	; 2: -9 -40
x8190:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1896, offset 6
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

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x8232:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x8235:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x8238:	mov word [bp + 14], log10$4	; 5: -57 70 14 60 32
x8243:	mov [bp + 16], bp	; 3: -119 110 16
x8246:	add bp, 14	; 3: -125 -59 14
x8249:	nop	; 1: -112
x8250:	jmp log	; 2: -21 25

log10$4:	; post call

log10$5:	; £temporary552 = return_value

log10$6:	; push float 2.30
x8252:	fld qword [float8$2.30#]	; 4: -35 6 77 32

log10$7:	; £temporary553 = £temporary552 / 2.30
x8256:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary553

log10$9:	; return
x8258:	mov ax, [bp]	; 3: -117 70 0
x8261:	mov di, [bp + 4]	; 3: -117 126 4
x8264:	mov bp, [bp + 2]	; 3: -117 110 2
x8267:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.30#:
x8269:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

log:	; push float x
x8277:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x8280:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 72
x8282:	fcompp	; 2: -34 -39
x8284:	fstsw ax	; 3: -101 -33 -32
x8287:	sahf	; 1: -98
x8288:	jae log$72	; 4: 15 -125 -27 0

log$3:	; n = 0
x8292:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x8297:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x8300:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x8302:	fcompp	; 2: -34 -39
x8304:	fstsw ax	; 3: -101 -33 -32
x8307:	sahf	; 1: -98
x8308:	jae log$16	; 2: 115 30

log$7:	; push float x
x8310:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x8313:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x8315:	fcompp	; 2: -34 -39
x8317:	fstsw ax	; 3: -101 -33 -32
x8320:	sahf	; 1: -98
x8321:	jae log$28	; 2: 115 64

log$10:	; push float x
x8323:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.71
x8326:	fld qword [float8$2.71#]	; 4: -35 6 92 33

log$12:	; £temporary535 = x / 2.71
x8330:	fdiv	; 2: -34 -7

log$13:	; pop float x
x8332:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x8335:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x8338:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x8340:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3690036900369003690036900369
x8343:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 100 33

log$18:	; if x >= 0.3690036900369003690036900369 goto 28
x8347:	fcompp	; 2: -34 -39
x8349:	fstsw ax	; 3: -101 -33 -32
x8352:	sahf	; 1: -98
x8353:	jbe log$28	; 2: 118 32

log$19:	; push float x
x8355:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3690036900369003690036900369
x8358:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 100 33

log$21:	; if x >= 0.3690036900369003690036900369 goto 28
x8362:	fcompp	; 2: -34 -39
x8364:	fstsw ax	; 3: -101 -33 -32
x8367:	sahf	; 1: -98
x8368:	jbe log$28	; 2: 118 17

log$22:	; push float x
x8370:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.71
x8373:	fld qword [float8$2.71#]	; 4: -35 6 92 33

log$24:	; £temporary539 = x * 2.71
x8377:	fmul	; 2: -34 -55

log$25:	; pop float x
x8379:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x8382:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x8385:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x8387:	fld1	; 2: -39 -24

log$29:	; pop float i
x8389:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 1
x8392:	fld1	; 2: -39 -24

log$31:	; pop float term
x8394:	fstp qword [bp + 24]	; 3: -35 94 24

log$32:	; push 0
x8397:	fldz	; 2: -39 -18

log$33:	; pop float sum
x8399:	fstp qword [bp + 32]	; 3: -35 94 32

log$34:	; push 1
x8402:	fld1	; 2: -39 -24

log$35:	; pop float sign
x8404:	fstp qword [bp + 40]	; 3: -35 94 40

log$36:	; push float x
x8407:	fld qword [bp + 6]	; 3: -35 70 6

log$37:	; push 1
x8410:	fld1	; 2: -39 -24

log$38:	; £temporary541 = x - 1
x8412:	fsub	; 2: -34 -23

log$39:	; top float x_minus_1
x8414:	fst qword [bp + 48]	; 3: -35 86 48

log$40:	; pop float power
x8417:	fstp qword [bp + 56]	; 3: -35 94 56

log$41:	; push float sign
x8420:	fld qword [bp + 40]	; 3: -35 70 40

log$42:	; push float power
x8423:	fld qword [bp + 56]	; 3: -35 70 56

log$43:	; £temporary542 = sign * power
x8426:	fmul	; 2: -34 -55

log$44:	; push float i
x8428:	fld qword [bp + 16]	; 3: -35 70 16

log$45:	; £temporary543 = £temporary542 / i
x8431:	fdiv	; 2: -34 -7

log$46:	; pop float term
x8433:	fstp qword [bp + 24]	; 3: -35 94 24

log$47:	; push float sum
x8436:	fld qword [bp + 32]	; 3: -35 70 32

log$48:	; push float term
x8439:	fld qword [bp + 24]	; 3: -35 70 24

log$49:	; £temporary544 = sum + term
x8442:	fadd	; 2: -34 -63

log$50:	; pop float sum
x8444:	fstp qword [bp + 32]	; 3: -35 94 32

log$51:	; push float power
x8447:	fld qword [bp + 56]	; 3: -35 70 56

log$52:	; push float x_minus_1
x8450:	fld qword [bp + 48]	; 3: -35 70 48

log$53:	; £temporary545 = power * x_minus_1
x8453:	fmul	; 2: -34 -55

log$54:	; pop float power
x8455:	fstp qword [bp + 56]	; 3: -35 94 56

log$55:	; push float sign
x8458:	fld qword [bp + 40]	; 3: -35 70 40

log$56:	; push float -1.0
x8461:	fld qword [float8$minus1.0#]	; 4: -35 6 108 33

log$57:	; £temporary546 = sign * -1.0
x8465:	fmul	; 2: -34 -55

log$58:	; pop float sign
x8467:	fstp qword [bp + 40]	; 3: -35 94 40

log$59:	; call header integral zero 0 stack zero 0

log$60:	; push float term
x8470:	fld qword [bp + 24]	; 3: -35 70 24

log$61:	; parameter term, offset 6
x8473:	fstp qword [bp + 70]	; 3: -35 94 70

log$62:	; call function noellipse-noellipse fabs
x8476:	mov word [bp + 64], log$63	; 5: -57 70 64 42 33
x8481:	mov [bp + 66], bp	; 3: -119 110 66
x8484:	add bp, 64	; 3: -125 -59 64
x8487:	jmp fabs	; 3: -23 -44 -4

log$63:	; post call

log$64:	; £temporary547 = return_value

log$65:	; push float 0.000000001
x8490:	fld qword [float8$0.000000001#]	; 4: -35 6 116 33

log$66:	; if £temporary547 >= 0.000000001 goto 41
x8494:	fcompp	; 2: -34 -39
x8496:	fstsw ax	; 3: -101 -33 -32
x8499:	sahf	; 1: -98
x8500:	jbe log$41	; 2: 118 -82

log$67:	; push float sum
x8502:	fld qword [bp + 32]	; 3: -35 70 32

log$68:	; £temporary549 = int_to_float n (Signed_Int -> Double)
x8505:	fild word [bp + 14]	; 3: -33 70 14

log$69:	; £temporary550 = sum + £temporary549
x8508:	fadd	; 2: -34 -63

log$70:	; return_value = £temporary550

log$71:	; return
x8510:	mov ax, [bp]	; 3: -117 70 0
x8513:	mov di, [bp + 4]	; 3: -117 126 4
x8516:	mov bp, [bp + 2]	; 3: -117 110 2
x8519:	jmp ax	; 2: -1 -32

log$72:	; errno = 6
x8521:	mov word [errno], 6	; 6: -57 6 124 33 6 0

log$73:	; push 0
x8527:	fldz	; 2: -39 -18

log$74:	; return_value = 0

log$75:	; return
x8529:	mov ax, [bp]	; 3: -117 70 0
x8532:	mov di, [bp + 4]	; 3: -117 126 4
x8535:	mov bp, [bp + 2]	; 3: -117 110 2
x8538:	jmp ax	; 2: -1 -32

log$76:	; function end log

float8$2.71#:
x8540:	dq 2.71	; 8: -82 71 -31 122 20 -82 5 64

float8$0.3690036900369003690036900369#:
x8548:	dq 0.3690036900369003690036900369	; 8: -86 -12 51 -89 -63 -99 -41 63

float8$minus1.0#:
x8556:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8564:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x8572:	dw 0	; 2: 0 0

pow:	; push float x
x8574:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x8577:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x8579:	fcompp	; 2: -34 -39
x8581:	fstsw ax	; 3: -101 -33 -32
x8584:	sahf	; 1: -98
x8585:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x8587:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x8590:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x8593:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x8596:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x8599:	mov word [bp + 30], pow$9	; 5: -57 70 30 -91 33
x8604:	mov [bp + 32], bp	; 3: -119 110 32
x8607:	add bp, 30	; 3: -125 -59 30
x8610:	jmp log	; 3: -23 -80 -2

pow$9:	; post call
x8613:	fstp qword [bp + 30]	; 3: -35 94 30
x8616:	fld qword [bp + 22]	; 3: -35 70 22
x8619:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary556 = return_value

pow$11:	; £temporary557 = y * £temporary556
x8622:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary557, offset 6
x8624:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x8627:	mov word [bp + 22], pow$14	; 5: -57 70 22 -63 33
x8632:	mov [bp + 24], bp	; 3: -119 110 24
x8635:	add bp, 22	; 3: -125 -59 22
x8638:	jmp exp	; 3: -23 63 1

pow$14:	; post call

pow$15:	; £temporary558 = return_value

pow$16:	; return_value = £temporary558

pow$17:	; return
x8641:	mov ax, [bp]	; 3: -117 70 0
x8644:	mov di, [bp + 4]	; 3: -117 126 4
x8647:	mov bp, [bp + 2]	; 3: -117 110 2
x8650:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x8652:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x8655:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x8657:	fcompp	; 2: -34 -39
x8659:	fstsw ax	; 3: -101 -33 -32
x8662:	sahf	; 1: -98
x8663:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x8665:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x8668:	fldz	; 2: -39 -18

pow$23:	; if y <= 0 goto 27
x8670:	fcompp	; 2: -34 -39
x8672:	fstsw ax	; 3: -101 -33 -32
x8675:	sahf	; 1: -98
x8676:	jae pow$27	; 2: 115 13

pow$24:	; push 0
x8678:	fldz	; 2: -39 -18

pow$25:	; return_value = 0

pow$26:	; return
x8680:	mov ax, [bp]	; 3: -117 70 0
x8683:	mov di, [bp + 4]	; 3: -117 126 4
x8686:	mov bp, [bp + 2]	; 3: -117 110 2
x8689:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x8691:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x8694:	fldz	; 2: -39 -18

pow$29:	; if x >= 0 goto 81
x8696:	fcompp	; 2: -34 -39
x8698:	fstsw ax	; 3: -101 -33 -32
x8701:	sahf	; 1: -98
x8702:	jbe pow$81	; 4: 15 -122 -25 0

pow$30:	; call header integral zero 0 stack zero 0

pow$31:	; push float y
x8706:	fld qword [bp + 14]	; 3: -35 70 14

pow$32:	; parameter y, offset 6
x8709:	fstp qword [bp + 28]	; 3: -35 94 28

pow$33:	; call function noellipse-noellipse floor
x8712:	mov word [bp + 22], pow$34	; 5: -57 70 22 22 34
x8717:	mov [bp + 24], bp	; 3: -119 110 24
x8720:	add bp, 22	; 3: -125 -59 22
x8723:	jmp floor	; 3: -23 85 1

pow$34:	; post call

pow$35:	; £temporary563 = return_value

pow$36:	; call header integral zero 0 stack no zero 1
x8726:	fstp qword [bp + 22]	; 3: -35 94 22

pow$37:	; push float y
x8729:	fld qword [bp + 14]	; 3: -35 70 14

pow$38:	; parameter y, offset 6
x8732:	fstp qword [bp + 36]	; 3: -35 94 36

pow$39:	; call function noellipse-noellipse ceil
x8735:	mov word [bp + 30], pow$40	; 5: -57 70 30 45 34
x8740:	mov [bp + 32], bp	; 3: -119 110 32
x8743:	add bp, 30	; 3: -125 -59 30
x8746:	jmp ceil	; 3: -23 -116 1

pow$40:	; post call
x8749:	fstp qword [bp + 30]	; 3: -35 94 30
x8752:	fld qword [bp + 22]	; 3: -35 70 22
x8755:	fld qword [bp + 30]	; 3: -35 70 30

pow$41:	; £temporary564 = return_value

pow$42:	; if £temporary563 != £temporary564 goto 81
x8758:	fcompp	; 2: -34 -39
x8760:	fstsw ax	; 3: -101 -33 -32
x8763:	sahf	; 1: -98
x8764:	jne pow$81	; 4: 15 -123 -87 0

pow$43:	; push float y
x8768:	fld qword [bp + 14]	; 3: -35 70 14

pow$44:	; £temporary567 = float_to_int y (Double -> Signed_Long_Int)
x8771:	fistp dword [container4bytes#]	; 4: -37 30 85 29
x8775:	mov eax, [container4bytes#]	; 4: 102 -95 85 29

pow$45:	; long_y = £temporary567
x8779:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$46:	; £temporary568 = long_y % 2
x8783:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x8787:	xor edx, edx	; 3: 102 49 -46
x8790:	idiv dword [int4$2#]	; 5: 102 -9 62 -4 34

pow$47:	; if £temporary568 != 0 goto 64
x8795:	cmp edx, 0	; 4: 102 -125 -6 0
x8799:	jne pow$64	; 2: 117 67

pow$48:	; call header integral zero 0 stack zero 0

pow$49:	; push float y
x8801:	fld qword [bp + 14]	; 3: -35 70 14

pow$50:	; call header integral zero 0 stack no zero 1
x8804:	fstp qword [bp + 26]	; 3: -35 94 26

pow$51:	; push float x
x8807:	fld qword [bp + 6]	; 3: -35 70 6

pow$52:	; £temporary570 = -x
x8810:	fchs	; 2: -39 -32

pow$53:	; parameter £temporary570, offset 6
x8812:	fstp qword [bp + 40]	; 3: -35 94 40

pow$54:	; call function noellipse-noellipse log
x8815:	mov word [bp + 34], pow$55	; 5: -57 70 34 125 34
x8820:	mov [bp + 36], bp	; 3: -119 110 36
x8823:	add bp, 34	; 3: -125 -59 34
x8826:	jmp log	; 3: -23 -40 -3

pow$55:	; post call
x8829:	fstp qword [bp + 34]	; 3: -35 94 34
x8832:	fld qword [bp + 26]	; 3: -35 70 26
x8835:	fld qword [bp + 34]	; 3: -35 70 34

pow$56:	; £temporary571 = return_value

pow$57:	; £temporary572 = y * £temporary571
x8838:	fmul	; 2: -34 -55

pow$58:	; parameter £temporary572, offset 6
x8840:	fstp qword [bp + 32]	; 3: -35 94 32

pow$59:	; call function noellipse-noellipse exp
x8843:	mov word [bp + 26], pow$60	; 5: -57 70 26 -103 34
x8848:	mov [bp + 28], bp	; 3: -119 110 28
x8851:	add bp, 26	; 3: -125 -59 26
x8854:	nop	; 1: -112
x8855:	jmp exp	; 2: -21 103

pow$60:	; post call

pow$61:	; £temporary573 = return_value

pow$62:	; return_value = £temporary573

pow$63:	; return
x8857:	mov ax, [bp]	; 3: -117 70 0
x8860:	mov di, [bp + 4]	; 3: -117 126 4
x8863:	mov bp, [bp + 2]	; 3: -117 110 2
x8866:	jmp ax	; 2: -1 -32

pow$64:	; call header integral zero 0 stack zero 0

pow$65:	; push float y
x8868:	fld qword [bp + 14]	; 3: -35 70 14

pow$66:	; call header integral zero 0 stack no zero 1
x8871:	fstp qword [bp + 26]	; 3: -35 94 26

pow$67:	; push float x
x8874:	fld qword [bp + 6]	; 3: -35 70 6

pow$68:	; £temporary574 = -x
x8877:	fchs	; 2: -39 -32

pow$69:	; parameter £temporary574, offset 6
x8879:	fstp qword [bp + 40]	; 3: -35 94 40

pow$70:	; call function noellipse-noellipse log
x8882:	mov word [bp + 34], pow$71	; 5: -57 70 34 -64 34
x8887:	mov [bp + 36], bp	; 3: -119 110 36
x8890:	add bp, 34	; 3: -125 -59 34
x8893:	jmp log	; 3: -23 -107 -3

pow$71:	; post call
x8896:	fstp qword [bp + 34]	; 3: -35 94 34
x8899:	fld qword [bp + 26]	; 3: -35 70 26
x8902:	fld qword [bp + 34]	; 3: -35 70 34

pow$72:	; £temporary575 = return_value

pow$73:	; £temporary576 = y * £temporary575
x8905:	fmul	; 2: -34 -55

pow$74:	; parameter £temporary576, offset 6
x8907:	fstp qword [bp + 32]	; 3: -35 94 32

pow$75:	; call function noellipse-noellipse exp
x8910:	mov word [bp + 26], pow$76	; 5: -57 70 26 -36 34
x8915:	mov [bp + 28], bp	; 3: -119 110 28
x8918:	add bp, 26	; 3: -125 -59 26
x8921:	nop	; 1: -112
x8922:	jmp exp	; 2: -21 36

pow$76:	; post call

pow$77:	; £temporary577 = return_value

pow$78:	; £temporary578 = -£temporary577
x8924:	fchs	; 2: -39 -32

pow$79:	; return_value = £temporary578

pow$80:	; return
x8926:	mov ax, [bp]	; 3: -117 70 0
x8929:	mov di, [bp + 4]	; 3: -117 126 4
x8932:	mov bp, [bp + 2]	; 3: -117 110 2
x8935:	jmp ax	; 2: -1 -32

pow$81:	; errno = 6
x8937:	mov word [errno], 6	; 6: -57 6 124 33 6 0

pow$82:	; push 0
x8943:	fldz	; 2: -39 -18

pow$83:	; return_value = 0

pow$84:	; return
x8945:	mov ax, [bp]	; 3: -117 70 0
x8948:	mov di, [bp + 4]	; 3: -117 126 4
x8951:	mov bp, [bp + 2]	; 3: -117 110 2
x8954:	jmp ax	; 2: -1 -32

pow$85:	; function end pow

int4$2#:
x8956:	dd 2	; 4: 2 0 0 0

exp:	; push 0
x8960:	fldz	; 2: -39 -18

exp$1:	; pop float i
x8962:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 0
x8965:	fldz	; 2: -39 -18

exp$3:	; pop float sum
x8967:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x8970:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x8972:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push 1
x8975:	fld1	; 2: -39 -24

exp$7:	; top float power
x8977:	fst qword [bp + 46]	; 3: -35 86 46

exp$8:	; push float faculty
x8980:	fld qword [bp + 38]	; 3: -35 70 38

exp$9:	; £temporary525 = power / faculty
x8983:	fdiv	; 2: -34 -7

exp$10:	; pop float term
x8985:	fstp qword [bp + 22]	; 3: -35 94 22

exp$11:	; push float sum
x8988:	fld qword [bp + 30]	; 3: -35 70 30

exp$12:	; push float term
x8991:	fld qword [bp + 22]	; 3: -35 70 22

exp$13:	; £temporary526 = sum + term
x8994:	fadd	; 2: -34 -63

exp$14:	; pop float sum
x8996:	fstp qword [bp + 30]	; 3: -35 94 30

exp$15:	; push float power
x8999:	fld qword [bp + 46]	; 3: -35 70 46

exp$16:	; push float x
x9002:	fld qword [bp + 6]	; 3: -35 70 6

exp$17:	; £temporary527 = power * x
x9005:	fmul	; 2: -34 -55

exp$18:	; pop float power
x9007:	fstp qword [bp + 46]	; 3: -35 94 46

exp$19:	; push float faculty
x9010:	fld qword [bp + 38]	; 3: -35 70 38

exp$20:	; push float i
x9013:	fld qword [bp + 14]	; 3: -35 70 14

exp$21:	; £temporary528 = faculty * i
x9016:	fmul	; 2: -34 -55

exp$22:	; pop float faculty
x9018:	fstp qword [bp + 38]	; 3: -35 94 38

exp$23:	; call header integral zero 0 stack zero 0

exp$24:	; push float term
x9021:	fld qword [bp + 22]	; 3: -35 70 22

exp$25:	; parameter term, offset 6
x9024:	fstp qword [bp + 60]	; 3: -35 94 60

exp$26:	; call function noellipse-noellipse fabs
x9027:	mov word [bp + 54], exp$27	; 5: -57 70 54 81 35
x9032:	mov [bp + 56], bp	; 3: -119 110 56
x9035:	add bp, 54	; 3: -125 -59 54
x9038:	jmp fabs	; 3: -23 -83 -6

exp$27:	; post call

exp$28:	; £temporary529 = return_value

exp$29:	; push float 0.000000001
x9041:	fld qword [float8$0.000000001#]	; 4: -35 6 116 33

exp$30:	; if £temporary529 >= 0.000000001 goto 8
x9045:	fcompp	; 2: -34 -39
x9047:	fstsw ax	; 3: -101 -33 -32
x9050:	sahf	; 1: -98
x9051:	jbe exp$8	; 2: 118 -73

exp$31:	; push float sum
x9053:	fld qword [bp + 30]	; 3: -35 70 30

exp$32:	; return_value = sum

exp$33:	; return
x9056:	mov ax, [bp]	; 3: -117 70 0
x9059:	mov di, [bp + 4]	; 3: -117 126 4
x9062:	mov bp, [bp + 2]	; 3: -117 110 2
x9065:	jmp ax	; 2: -1 -32

exp$34:	; function end exp

floor:	; push float x
x9067:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x9070:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x9072:	fcompp	; 2: -34 -39
x9074:	fstsw ax	; 3: -101 -33 -32
x9077:	sahf	; 1: -98
x9078:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x9080:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary773 = -x
x9083:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary773, offset 6
x9085:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x9088:	mov word [bp + 14], floor$8	; 5: -57 70 14 -114 35
x9093:	mov [bp + 16], bp	; 3: -119 110 16
x9096:	add bp, 14	; 3: -125 -59 14
x9099:	nop	; 1: -112
x9100:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary774 = return_value

floor$10:	; £temporary775 = -£temporary774
x9102:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary775

floor$12:	; return
x9104:	mov ax, [bp]	; 3: -117 70 0
x9107:	mov di, [bp + 4]	; 3: -117 126 4
x9110:	mov bp, [bp + 2]	; 3: -117 110 2
x9113:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x9115:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary776 = float_to_int x (Double -> Signed_Long_Int)
x9118:	fistp dword [container4bytes#]	; 4: -37 30 85 29
x9122:	mov eax, [container4bytes#]	; 4: 102 -95 85 29

floor$15:	; £temporary777 = int_to_float £temporary776 (Signed_Long_Int -> Double)
x9126:	mov [container4bytes#], eax	; 4: 102 -93 85 29
x9130:	fild dword [container4bytes#]	; 4: -37 6 85 29

floor$16:	; return_value = £temporary777

floor$17:	; return
x9134:	mov ax, [bp]	; 3: -117 70 0
x9137:	mov di, [bp + 4]	; 3: -117 126 4
x9140:	mov bp, [bp + 2]	; 3: -117 110 2
x9143:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x9145:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x9148:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x9150:	fcompp	; 2: -34 -39
x9152:	fstsw ax	; 3: -101 -33 -32
x9155:	sahf	; 1: -98
x9156:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x9158:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary780 = -x
x9161:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary780, offset 6
x9163:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x9166:	mov word [bp + 14], ceil$8	; 5: -57 70 14 -36 35
x9171:	mov [bp + 16], bp	; 3: -119 110 16
x9174:	add bp, 14	; 3: -125 -59 14
x9177:	nop	; 1: -112
x9178:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary781 = return_value

ceil$10:	; £temporary782 = -£temporary781
x9180:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary782

ceil$12:	; return
x9182:	mov ax, [bp]	; 3: -117 70 0
x9185:	mov di, [bp + 4]	; 3: -117 126 4
x9188:	mov bp, [bp + 2]	; 3: -117 110 2
x9191:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x9193:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x9196:	fld qword [float8$0.999999999999#]	; 4: -35 6 13 36

ceil$15:	; £temporary783 = x + 0.999999999999
x9200:	fadd	; 2: -34 -63

ceil$16:	; £temporary784 = float_to_int £temporary783 (Double -> Signed_Long_Int)
x9202:	fistp dword [container4bytes#]	; 4: -37 30 85 29
x9206:	mov eax, [container4bytes#]	; 4: 102 -95 85 29

ceil$17:	; £temporary785 = int_to_float £temporary784 (Signed_Long_Int -> Double)
x9210:	mov [container4bytes#], eax	; 4: 102 -93 85 29
x9214:	fild dword [container4bytes#]	; 4: -37 6 85 29

ceil$18:	; return_value = £temporary785

ceil$19:	; return
x9218:	mov ax, [bp]	; 3: -117 70 0
x9221:	mov di, [bp + 4]	; 3: -117 126 4
x9224:	mov bp, [bp + 2]	; 3: -117 110 2
x9227:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x9229:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; if c < 48 goto 4
x9237:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x9241:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x9243:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x9247:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary394 = 1
x9249:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x9252:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary394 = 0
x9254:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary394

isdigit$6:	; return
x9257:	mov ax, [bp]	; 3: -117 70 0
x9260:	mov di, [bp + 4]	; 3: -117 126 4
x9263:	mov bp, [bp + 2]	; 3: -117 110 2
x9266:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

mktime:	; if tp == 0 goto 28
x9268:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x9272:	je mktime$28	; 4: 15 -124 -40 0

mktime$1:	; £temporary2635 -> tp = *tp, offset 10
x9276:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; £temporary2636 = £temporary2635 -> tp - 69
x9279:	mov ax, [si + 10]	; 3: -117 68 10
x9282:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; £temporary2637 = £temporary2636 / 4
x9285:	xor dx, dx	; 2: 49 -46
x9287:	idiv word [int2$4#]	; 4: -9 62 37 37

mktime$4:	; £temporary2638 = int_to_int £temporary2637 (Signed_Int -> Signed_Long_Int)
x9291:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9297:	cmp ax, 0	; 3: -125 -8 0
x9300:	jge mktime$5	; 2: 125 5
x9302:	neg ax	; 2: -9 -40
x9304:	neg eax	; 3: 102 -9 -40

mktime$5:	; leapDays = £temporary2638
x9307:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; £temporary2639 -> tp = *tp, offset 10
x9311:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; £temporary2640 = £temporary2639 -> tp - 70
x9314:	mov ax, [si + 10]	; 3: -117 68 10
x9317:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; £temporary2641 = £temporary2640 * 365
x9320:	xor dx, dx	; 2: 49 -46
x9322:	imul word [int2$365#]	; 4: -9 46 39 37

mktime$9:	; £temporary2642 = int_to_int £temporary2641 (Signed_Int -> Signed_Long_Int)
x9326:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9332:	cmp ax, 0	; 3: -125 -8 0
x9335:	jge mktime$10	; 2: 125 5
x9337:	neg ax	; 2: -9 -40
x9339:	neg eax	; 3: 102 -9 -40

mktime$10:	; £temporary2643 = £temporary2642 + leapDays
x9342:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; £temporary2644 -> tp = *tp, offset 14
x9346:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; £temporary2645 = int_to_int £temporary2644 -> tp (Signed_Int -> Signed_Long_Int)
x9349:	mov bx, [si + 14]	; 3: -117 92 14
x9352:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x9359:	cmp bx, 0	; 3: -125 -5 0
x9362:	jge mktime$13	; 2: 125 5
x9364:	neg bx	; 2: -9 -37
x9366:	neg ebx	; 3: 102 -9 -37

mktime$13:	; totalDays = £temporary2643 + £temporary2645
x9369:	add eax, ebx	; 3: 102 1 -40
x9372:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$14:	; £temporary2647 = totalDays * 86400
x9376:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x9380:	xor edx, edx	; 3: 102 49 -46
x9383:	imul dword [int4$86400#]	; 5: 102 -9 46 41 37
x9388:	mov ebx, eax	; 3: 102 -119 -61

mktime$15:	; £temporary2648 -> tp = *tp, offset 4
x9391:	mov si, [bp + 6]	; 3: -117 118 6

mktime$16:	; £temporary2649 = int_to_int £temporary2648 -> tp (Signed_Int -> Signed_Long_Int)
x9394:	mov ax, [si + 4]	; 3: -117 68 4
x9397:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9403:	cmp ax, 0	; 3: -125 -8 0
x9406:	jge mktime$17	; 2: 125 5
x9408:	neg ax	; 2: -9 -40
x9410:	neg eax	; 3: 102 -9 -40

mktime$17:	; £temporary2650 = £temporary2649 * 3600
x9413:	xor edx, edx	; 3: 102 49 -46
x9416:	imul dword [int4$3600#]	; 5: 102 -9 46 45 37

mktime$18:	; £temporary2651 = £temporary2647 + £temporary2650
x9421:	add ebx, eax	; 3: 102 1 -61

mktime$19:	; £temporary2652 -> tp = *tp, offset 2
x9424:	mov si, [bp + 6]	; 3: -117 118 6

mktime$20:	; £temporary2653 = int_to_int £temporary2652 -> tp (Signed_Int -> Signed_Long_Int)
x9427:	mov ax, [si + 2]	; 3: -117 68 2
x9430:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9436:	cmp ax, 0	; 3: -125 -8 0
x9439:	jge mktime$21	; 2: 125 5
x9441:	neg ax	; 2: -9 -40
x9443:	neg eax	; 3: 102 -9 -40

mktime$21:	; £temporary2654 = £temporary2653 * 60
x9446:	xor edx, edx	; 3: 102 49 -46
x9449:	imul dword [int4$60#]	; 5: 102 -9 46 49 37

mktime$22:	; £temporary2655 = £temporary2651 + £temporary2654
x9454:	add ebx, eax	; 3: 102 1 -61

mktime$23:	; £temporary2656 -> tp = *tp
x9457:	mov si, [bp + 6]	; 3: -117 118 6

mktime$24:	; £temporary2657 = int_to_int £temporary2656 -> tp (Signed_Int -> Signed_Long_Int)
x9460:	mov ax, [si]	; 2: -117 4
x9462:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9468:	cmp ax, 0	; 3: -125 -8 0
x9471:	jge mktime$25	; 2: 125 5
x9473:	neg ax	; 2: -9 -40
x9475:	neg eax	; 3: 102 -9 -40

mktime$25:	; £temporary2658 = £temporary2655 + £temporary2657
x9478:	add ebx, eax	; 3: 102 1 -61

mktime$26:	; return_value = £temporary2658

mktime$27:	; return
x9481:	mov ax, [bp]	; 3: -117 70 0
x9484:	mov di, [bp + 4]	; 3: -117 126 4
x9487:	mov bp, [bp + 2]	; 3: -117 110 2
x9490:	jmp ax	; 2: -1 -32

mktime$28:	; return_value = 0
x9492:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$29:	; return
x9498:	mov ax, [bp]	; 3: -117 70 0
x9501:	mov di, [bp + 4]	; 3: -117 126 4
x9504:	mov bp, [bp + 2]	; 3: -117 110 2
x9507:	jmp ax	; 2: -1 -32

mktime$30:	; function end mktime

int2$4#:
x9509:	dw 4	; 2: 4 0

int2$365#:
x9511:	dw 365	; 2: 109 1

int4$86400#:
x9513:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x9517:	dd 3600	; 4: 16 14 0 0

int4$60#:
x9521:	dd 60	; 4: 60 0 0 0

scanf:	; £temporary1668 = &format
x9525:	mov si, bp	; 2: -119 -18
x9527:	add si, 6	; 3: -125 -58 6

scanf$1:	; £temporary1669 = int_to_int £temporary1668 (Pointer -> Pointer)

scanf$2:	; arg_list = £temporary1669 + 2
x9530:	add si, 2	; 3: -125 -58 2
x9533:	mov [di + 8], si	; 3: -119 117 8

scanf$3:	; call header integral zero 0 stack zero 0

scanf$4:	; parameter format, offset 6
x9536:	mov ax, [bp + 6]	; 3: -117 70 6
x9539:	mov [di + 16], ax	; 3: -119 69 16

scanf$5:	; parameter arg_list, offset 8
x9542:	mov ax, [di + 8]	; 3: -117 69 8
x9545:	mov [di + 18], ax	; 3: -119 69 18

scanf$6:	; call function ellipse-noellipse vscanf
x9548:	mov word [di + 10], scanf$7	; 5: -57 69 10 95 37
x9553:	mov [di + 12], bp	; 3: -119 109 12
x9556:	mov [di + 14], di	; 3: -119 125 14
x9559:	add di, 10	; 3: -125 -57 10
x9562:	mov bp, di	; 2: -119 -3
x9564:	nop	; 1: -112
x9565:	jmp vscanf	; 2: -21 11

scanf$7:	; post call

scanf$8:	; £temporary1671 = return_value

scanf$9:	; return_value = £temporary1671

scanf$10:	; return
x9567:	mov ax, [bp]	; 3: -117 70 0
x9570:	mov di, [bp + 4]	; 3: -117 126 4
x9573:	mov bp, [bp + 2]	; 3: -117 110 2
x9576:	jmp ax	; 2: -1 -32

scanf$11:	; function end scanf

vscanf:	; call header integral zero 0 stack zero 0

vscanf$1:	; parameter stdin, offset 6
x9578:	mov ax, [stdin]	; 3: -95 -107 37
x9581:	mov [bp + 16], ax	; 3: -119 70 16

vscanf$2:	; parameter format, offset 8
x9584:	mov ax, [bp + 6]	; 3: -117 70 6
x9587:	mov [bp + 18], ax	; 3: -119 70 18

vscanf$3:	; parameter arg_list, offset 10
x9590:	mov ax, [bp + 8]	; 3: -117 70 8
x9593:	mov [bp + 20], ax	; 3: -119 70 20

vscanf$4:	; call function noellipse-noellipse vfscanf
x9596:	mov word [bp + 10], vscanf$5	; 5: -57 70 10 -118 37
x9601:	mov [bp + 12], bp	; 3: -119 110 12
x9604:	add bp, 10	; 3: -125 -59 10
x9607:	nop	; 1: -112
x9608:	jmp vfscanf	; 2: -21 13

vscanf$5:	; post call

vscanf$6:	; £temporary1675 = return_value

vscanf$7:	; return_value = £temporary1675

vscanf$8:	; return
x9610:	mov ax, [bp]	; 3: -117 70 0
x9613:	mov di, [bp + 4]	; 3: -117 126 4
x9616:	mov bp, [bp + 2]	; 3: -117 110 2
x9619:	jmp ax	; 2: -1 -32

vscanf$9:	; function end vscanf

stdin:
x9621:	dw g_fileArray	; 2: 41 4

vfscanf:	; g_inStatus = 0
x9623:	mov word [g_inStatus], 0	; 6: -57 6 -56 37 0 0

vfscanf$1:	; £temporary1687 = int_to_int inStream (Pointer -> Pointer)
x9629:	mov ax, [bp + 6]	; 3: -117 70 6

vfscanf$2:	; g_inDevice = £temporary1687
x9632:	mov [g_inDevice], ax	; 3: -93 -54 37

vfscanf$3:	; call header integral zero 0 stack zero 0

vfscanf$4:	; parameter format, offset 6
x9635:	mov ax, [bp + 8]	; 3: -117 70 8
x9638:	mov [bp + 18], ax	; 3: -119 70 18

vfscanf$5:	; parameter arg_list, offset 8
x9641:	mov ax, [bp + 10]	; 3: -117 70 10
x9644:	mov [bp + 20], ax	; 3: -119 70 20

vfscanf$6:	; call function noellipse-noellipse scanFormat
x9647:	mov word [bp + 12], vfscanf$7	; 5: -57 70 12 -67 37
x9652:	mov [bp + 14], bp	; 3: -119 110 14
x9655:	add bp, 12	; 3: -125 -59 12
x9658:	nop	; 1: -112
x9659:	jmp scanFormat	; 2: -21 15

vfscanf$7:	; post call

vfscanf$8:	; £temporary1688 = return_value

vfscanf$9:	; return_value = £temporary1688

vfscanf$10:	; return
x9661:	mov ax, [bp]	; 3: -117 70 0
x9664:	mov di, [bp + 4]	; 3: -117 126 4
x9667:	mov bp, [bp + 2]	; 3: -117 110 2
x9670:	jmp ax	; 2: -1 -32

vfscanf$11:	; function end vfscanf

g_inStatus:
x9672:	db 0, 0	; 2: 0 0

g_inDevice:
x9674:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x9676:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x9681:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x9686:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x9691:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x9696:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x9701:	mov word [g_inCount], 0	; 6: -57 6 -18 42 0 0

scanFormat$6:	; g_inChars = 0
x9707:	mov word [g_inChars], 0	; 6: -57 6 -16 42 0 0

scanFormat$7:	; index = 0
x9713:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1478 = format + index
x9718:	mov si, [bp + 6]	; 3: -117 118 6
x9721:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1477 -> £temporary1478 = *£temporary1478

scanFormat$10:	; if £temporary1477 -> £temporary1478 == 0 goto 325
x9724:	cmp byte [si], 0	; 3: -128 60 0
x9727:	je scanFormat$325	; 4: 15 -124 -36 4

scanFormat$11:	; £temporary1482 = format + index
x9731:	mov si, [bp + 6]	; 3: -117 118 6
x9734:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1481 -> £temporary1482 = *£temporary1482

scanFormat$13:	; c = £temporary1481 -> £temporary1482
x9737:	mov al, [si]	; 2: -118 4
x9739:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1483 = int_to_int c (Signed_Char -> Signed_Int)
x9742:	mov al, [bp + 10]	; 3: -118 70 10
x9745:	and ax, 255	; 3: 37 -1 0
x9748:	cmp al, 0	; 2: 60 0
x9750:	jge scanFormat$15	; 2: 125 4
x9752:	neg al	; 2: -10 -40
x9754:	neg ax	; 2: -9 -40

scanFormat$15:	; d = £temporary1483 + 1
x9756:	inc ax	; 1: 64
x9757:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$16:	; if percent == 0 goto 317
x9760:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x9764:	je scanFormat$317	; 4: 15 -124 -110 4

scanFormat$17:	; £temporary1485 = d - 1
x9768:	mov ax, [bp + 55]	; 3: -117 70 55
x9771:	dec ax	; 1: 72

scanFormat$18:	; case £temporary1485 == 104 goto 36
x9772:	cmp ax, 104	; 3: -125 -8 104
x9775:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; case £temporary1485 == 108 goto 38
x9777:	cmp ax, 108	; 3: -125 -8 108
x9780:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; case £temporary1485 == 76 goto 40
x9782:	cmp ax, 76	; 3: -125 -8 76
x9785:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; case £temporary1485 == 42 goto 42
x9787:	cmp ax, 42	; 3: -125 -8 42
x9790:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; case £temporary1485 == 99 goto 44
x9792:	cmp ax, 99	; 3: -125 -8 99
x9795:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; case £temporary1485 == 115 goto 62
x9797:	cmp ax, 115	; 3: -125 -8 115
x9800:	je scanFormat$62	; 4: 15 -124 -72 0

scanFormat$24:	; case £temporary1485 == 100 goto 81
x9804:	cmp ax, 100	; 3: -125 -8 100
x9807:	je scanFormat$81	; 4: 15 -124 1 1

scanFormat$25:	; case £temporary1485 == 105 goto 81
x9811:	cmp ax, 105	; 3: -125 -8 105
x9814:	je scanFormat$81	; 4: 15 -124 -6 0

scanFormat$26:	; case £temporary1485 == 111 goto 116
x9818:	cmp ax, 111	; 3: -125 -8 111
x9821:	je scanFormat$116	; 4: 15 -124 -126 1

scanFormat$27:	; case £temporary1485 == 120 goto 152
x9825:	cmp ax, 120	; 3: -125 -8 120
x9828:	je scanFormat$152	; 4: 15 -124 -4 1

scanFormat$28:	; case £temporary1485 == 117 goto 188
x9832:	cmp ax, 117	; 3: -125 -8 117
x9835:	je scanFormat$188	; 4: 15 -124 118 2

scanFormat$29:	; case £temporary1485 == 103 goto 224
x9839:	cmp ax, 103	; 3: -125 -8 103
x9842:	je scanFormat$224	; 4: 15 -124 -16 2

scanFormat$30:	; case £temporary1485 == 102 goto 224
x9846:	cmp ax, 102	; 3: -125 -8 102
x9849:	je scanFormat$224	; 4: 15 -124 -23 2

scanFormat$31:	; case £temporary1485 == 101 goto 224
x9853:	cmp ax, 101	; 3: -125 -8 101
x9856:	je scanFormat$224	; 4: 15 -124 -30 2

scanFormat$32:	; case £temporary1485 == 91 goto 260
x9860:	cmp ax, 91	; 3: -125 -8 91
x9863:	je scanFormat$260	; 4: 15 -124 79 3

scanFormat$33:	; case £temporary1485 == 110 goto 301
x9867:	cmp ax, 110	; 3: -125 -8 110
x9870:	je scanFormat$301	; 4: 15 -124 -33 3

scanFormat$34:	; case end £temporary1485

scanFormat$35:	; goto 310
x9874:	jmp scanFormat$310	; 3: -23 -6 3

scanFormat$36:	; shortInt = 1
x9877:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$37:	; goto 323
x9882:	jmp scanFormat$323	; 3: -23 60 4

scanFormat$38:	; longIntOrDouble = 1
x9885:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$39:	; goto 323
x9890:	jmp scanFormat$323	; 3: -23 52 4

scanFormat$40:	; longDouble = 1
x9893:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$41:	; goto 323
x9898:	jmp scanFormat$323	; 3: -23 44 4

scanFormat$42:	; star = 1
x9901:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$43:	; goto 323
x9906:	jmp scanFormat$323	; 3: -23 36 4

scanFormat$44:	; call header integral zero 0 stack zero 0

scanFormat$45:	; call function noellipse-noellipse scanChar
x9909:	mov word [bp + 57], scanFormat$46	; 5: -57 70 57 -61 38
x9914:	mov [bp + 59], bp	; 3: -119 110 59
x9917:	add bp, 57	; 3: -125 -59 57
x9920:	jmp scanChar	; 3: -23 68 4

scanFormat$46:	; post call

scanFormat$47:	; £temporary1486 = return_value

scanFormat$48:	; charValue = £temporary1486
x9923:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$49:	; if star != 0 goto 57
x9926:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9930:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; arg_list = arg_list + 2
x9932:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$51:	; £temporary1490 = arg_list - 2
x9936:	mov si, [bp + 8]	; 3: -117 118 8
x9939:	sub si, 2	; 3: -125 -18 2

scanFormat$52:	; £temporary1491 = int_to_int £temporary1490 (Signed_Int -> Pointer)

scanFormat$53:	; £temporary1492 -> £temporary1491 = *£temporary1491

scanFormat$54:	; charPtr = £temporary1492 -> £temporary1491
x9942:	mov ax, [si]	; 2: -117 4
x9944:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$55:	; £temporary1493 -> charPtr = *charPtr
x9947:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$56:	; £temporary1493 -> charPtr = charValue
x9950:	mov al, [bp + 57]	; 3: -118 70 57
x9953:	mov [si], al	; 2: -120 4

scanFormat$57:	; percent = 0
x9955:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$58:	; £temporary1494 = int_to_int charValue (Signed_Char -> Signed_Int)
x9960:	mov al, [bp + 57]	; 3: -118 70 57
x9963:	and ax, 255	; 3: 37 -1 0
x9966:	cmp al, 0	; 2: 60 0
x9968:	jge scanFormat$59	; 2: 125 4
x9970:	neg al	; 2: -10 -40
x9972:	neg ax	; 2: -9 -40

scanFormat$59:	; if £temporary1494 == -1 goto 323
x9974:	cmp ax, -1	; 3: -125 -8 -1
x9977:	je scanFormat$323	; 4: 15 -124 -36 3

scanFormat$60:	; ++g_inCount
x9981:	inc word [g_inCount]	; 4: -1 6 -18 42

scanFormat$61:	; goto 323
x9985:	jmp scanFormat$323	; 3: -23 -43 3

scanFormat$62:	; if star != 0 goto 74
x9988:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9992:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; arg_list = arg_list + 2
x9994:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$64:	; £temporary1500 = arg_list - 2
x9998:	mov si, [bp + 8]	; 3: -117 118 8
x10001:	sub si, 2	; 3: -125 -18 2

scanFormat$65:	; £temporary1501 = int_to_int £temporary1500 (Signed_Int -> Pointer)

scanFormat$66:	; £temporary1502 -> £temporary1501 = *£temporary1501

scanFormat$67:	; charPtr = £temporary1502 -> £temporary1501
x10004:	mov ax, [si]	; 2: -117 4
x10006:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$68:	; call header integral zero 0 stack zero 0

scanFormat$69:	; parameter charPtr, offset 6
x10009:	mov ax, [bp + 11]	; 3: -117 70 11
x10012:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$70:	; parameter 0, offset 8
x10015:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$71:	; call function noellipse-noellipse scanString
x10020:	mov word [bp + 57], scanFormat$72	; 5: -57 70 57 50 39
x10025:	mov [bp + 59], bp	; 3: -119 110 59
x10028:	add bp, 57	; 3: -125 -59 57
x10031:	jmp scanString	; 3: -23 68 4

scanFormat$72:	; post call

scanFormat$73:	; goto 79
x10034:	jmp scanFormat$79	; 2: -21 24

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter 0, offset 6
x10036:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$76:	; parameter 0, offset 8
x10041:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$77:	; call function noellipse-noellipse scanString
x10046:	mov word [bp + 57], scanFormat$78	; 5: -57 70 57 76 39
x10051:	mov [bp + 59], bp	; 3: -119 110 59
x10054:	add bp, 57	; 3: -125 -59 57
x10057:	jmp scanString	; 3: -23 42 4

scanFormat$78:	; post call

scanFormat$79:	; percent = 0
x10060:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$80:	; goto 323
x10065:	jmp scanFormat$323	; 3: -23 -123 3

scanFormat$81:	; call header integral zero 0 stack zero 0

scanFormat$82:	; call function noellipse-noellipse scanLongInt
x10068:	mov word [bp + 57], scanFormat$83	; 5: -57 70 57 98 39
x10073:	mov [bp + 59], bp	; 3: -119 110 59
x10076:	add bp, 57	; 3: -125 -59 57
x10079:	jmp scanLongInt	; 3: -23 -104 6

scanFormat$83:	; post call

scanFormat$84:	; £temporary1505 = return_value

scanFormat$85:	; longValue = £temporary1505
x10082:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$86:	; if star != 0 goto 114
x10086:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10090:	jne scanFormat$114	; 2: 117 111

scanFormat$87:	; if shortInt == 0 goto 97
x10092:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10096:	je scanFormat$97	; 2: 116 37

scanFormat$88:	; arg_list = arg_list + 2
x10098:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$89:	; £temporary1509 = arg_list - 2
x10102:	mov si, [bp + 8]	; 3: -117 118 8
x10105:	sub si, 2	; 3: -125 -18 2

scanFormat$90:	; £temporary1510 = int_to_int £temporary1509 (Signed_Int -> Pointer)

scanFormat$91:	; £temporary1511 -> £temporary1510 = *£temporary1510

scanFormat$92:	; shortPtr = £temporary1511 -> £temporary1510
x10108:	mov ax, [si]	; 2: -117 4
x10110:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$93:	; £temporary1512 -> shortPtr = *shortPtr
x10113:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$94:	; £temporary1513 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x10116:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x10120:	cmp eax, 0	; 4: 102 -125 -8 0
x10124:	jge scanFormat$95	; 2: 125 5
x10126:	neg eax	; 3: 102 -9 -40
x10129:	neg al	; 2: -10 -40

scanFormat$95:	; £temporary1512 -> shortPtr = £temporary1513
x10131:	mov [si], al	; 2: -120 4

scanFormat$96:	; goto 114
x10133:	jmp scanFormat$114	; 2: -21 68

scanFormat$97:	; if longIntOrDouble != 0 goto 107
x10135:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10139:	jne scanFormat$107	; 2: 117 37

scanFormat$98:	; arg_list = arg_list + 2
x10141:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$99:	; £temporary1517 = arg_list - 2
x10145:	mov si, [bp + 8]	; 3: -117 118 8
x10148:	sub si, 2	; 3: -125 -18 2

scanFormat$100:	; £temporary1518 = int_to_int £temporary1517 (Signed_Int -> Pointer)

scanFormat$101:	; £temporary1519 -> £temporary1518 = *£temporary1518

scanFormat$102:	; intPtr = £temporary1519 -> £temporary1518
x10151:	mov ax, [si]	; 2: -117 4
x10153:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$103:	; £temporary1520 -> intPtr = *intPtr
x10156:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$104:	; £temporary1521 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x10159:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x10163:	cmp eax, 0	; 4: 102 -125 -8 0
x10167:	jge scanFormat$105	; 2: 125 5
x10169:	neg eax	; 3: 102 -9 -40
x10172:	neg ax	; 2: -9 -40

scanFormat$105:	; £temporary1520 -> intPtr = £temporary1521
x10174:	mov [si], ax	; 2: -119 4

scanFormat$106:	; goto 114
x10176:	jmp scanFormat$114	; 2: -21 25

scanFormat$107:	; arg_list = arg_list + 2
x10178:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$108:	; £temporary1523 = arg_list - 2
x10182:	mov si, [bp + 8]	; 3: -117 118 8
x10185:	sub si, 2	; 3: -125 -18 2

scanFormat$109:	; £temporary1524 = int_to_int £temporary1523 (Signed_Int -> Pointer)

scanFormat$110:	; £temporary1525 -> £temporary1524 = *£temporary1524

scanFormat$111:	; longPtr = £temporary1525 -> £temporary1524
x10188:	mov ax, [si]	; 2: -117 4
x10190:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$112:	; £temporary1526 -> longPtr = *longPtr
x10193:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$113:	; £temporary1526 -> longPtr = longValue
x10196:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x10200:	mov [si], eax	; 3: 102 -119 4

scanFormat$114:	; percent = 0
x10203:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$115:	; goto 323
x10208:	jmp scanFormat$323	; 3: -23 -10 2

scanFormat$116:	; call header integral zero 0 stack zero 0

scanFormat$117:	; parameter 8, offset 6
x10211:	mov dword [bp + 63], 8	; 8: 102 -57 70 63 8 0 0 0

scanFormat$118:	; call function noellipse-noellipse scanUnsignedLongInt
x10219:	mov word [bp + 57], scanFormat$119	; 5: -57 70 57 -7 39
x10224:	mov [bp + 59], bp	; 3: -119 110 59
x10227:	add bp, 57	; 3: -125 -59 57
x10230:	jmp scanUnsignedLongInt	; 3: -23 88 7

scanFormat$119:	; post call

scanFormat$120:	; £temporary1528 = return_value

scanFormat$121:	; unsignedLongValue = £temporary1528
x10233:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$122:	; if star != 0 goto 150
x10237:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10241:	jne scanFormat$150	; 2: 117 89

scanFormat$123:	; if shortInt == 0 goto 133
x10243:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10247:	je scanFormat$133	; 2: 116 26

scanFormat$124:	; arg_list = arg_list + 2
x10249:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$125:	; £temporary1532 = arg_list - 2
x10253:	mov si, [bp + 8]	; 3: -117 118 8
x10256:	sub si, 2	; 3: -125 -18 2

scanFormat$126:	; £temporary1533 = int_to_int £temporary1532 (Signed_Int -> Pointer)

scanFormat$127:	; £temporary1534 -> £temporary1533 = *£temporary1533

scanFormat$128:	; unsignedShortPtr = £temporary1534 -> £temporary1533
x10259:	mov ax, [si]	; 2: -117 4
x10261:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$129:	; £temporary1535 -> unsignedShortPtr = *unsignedShortPtr
x10264:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$130:	; £temporary1536 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10267:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$131:	; £temporary1535 -> unsignedShortPtr = £temporary1536
x10271:	mov [si], al	; 2: -120 4

scanFormat$132:	; goto 150
x10273:	jmp scanFormat$150	; 2: -21 57

scanFormat$133:	; if longIntOrDouble != 0 goto 143
x10275:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10279:	jne scanFormat$143	; 2: 117 26

scanFormat$134:	; arg_list = arg_list + 2
x10281:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$135:	; £temporary1540 = arg_list - 2
x10285:	mov si, [bp + 8]	; 3: -117 118 8
x10288:	sub si, 2	; 3: -125 -18 2

scanFormat$136:	; £temporary1541 = int_to_int £temporary1540 (Signed_Int -> Pointer)

scanFormat$137:	; £temporary1542 -> £temporary1541 = *£temporary1541

scanFormat$138:	; unsignedIntPtr = £temporary1542 -> £temporary1541
x10291:	mov ax, [si]	; 2: -117 4
x10293:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$139:	; £temporary1543 -> unsignedIntPtr = *unsignedIntPtr
x10296:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$140:	; £temporary1544 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10299:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$141:	; £temporary1543 -> unsignedIntPtr = £temporary1544
x10303:	mov [si], ax	; 2: -119 4

scanFormat$142:	; goto 150
x10305:	jmp scanFormat$150	; 2: -21 25

scanFormat$143:	; arg_list = arg_list + 2
x10307:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$144:	; £temporary1546 = arg_list - 2
x10311:	mov si, [bp + 8]	; 3: -117 118 8
x10314:	sub si, 2	; 3: -125 -18 2

scanFormat$145:	; £temporary1547 = int_to_int £temporary1546 (Signed_Int -> Pointer)

scanFormat$146:	; £temporary1548 -> £temporary1547 = *£temporary1547

scanFormat$147:	; unsignedLongPtr = £temporary1548 -> £temporary1547
x10317:	mov ax, [si]	; 2: -117 4
x10319:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$148:	; £temporary1549 -> unsignedLongPtr = *unsignedLongPtr
x10322:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$149:	; £temporary1549 -> unsignedLongPtr = unsignedLongValue
x10325:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10329:	mov [si], eax	; 3: 102 -119 4

scanFormat$150:	; percent = 0
x10332:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$151:	; goto 323
x10337:	jmp scanFormat$323	; 3: -23 117 2

scanFormat$152:	; call header integral zero 0 stack zero 0

scanFormat$153:	; parameter 16, offset 6
x10340:	mov dword [bp + 63], 16	; 8: 102 -57 70 63 16 0 0 0

scanFormat$154:	; call function noellipse-noellipse scanUnsignedLongInt
x10348:	mov word [bp + 57], scanFormat$155	; 5: -57 70 57 122 40
x10353:	mov [bp + 59], bp	; 3: -119 110 59
x10356:	add bp, 57	; 3: -125 -59 57
x10359:	jmp scanUnsignedLongInt	; 3: -23 -41 6

scanFormat$155:	; post call

scanFormat$156:	; £temporary1551 = return_value

scanFormat$157:	; unsignedLongValue = £temporary1551
x10362:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$158:	; if star != 0 goto 186
x10366:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10370:	jne scanFormat$186	; 2: 117 89

scanFormat$159:	; if shortInt == 0 goto 169
x10372:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10376:	je scanFormat$169	; 2: 116 26

scanFormat$160:	; arg_list = arg_list + 2
x10378:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$161:	; £temporary1555 = arg_list - 2
x10382:	mov si, [bp + 8]	; 3: -117 118 8
x10385:	sub si, 2	; 3: -125 -18 2

scanFormat$162:	; £temporary1556 = int_to_int £temporary1555 (Signed_Int -> Pointer)

scanFormat$163:	; £temporary1557 -> £temporary1556 = *£temporary1556

scanFormat$164:	; unsignedShortPtr = £temporary1557 -> £temporary1556
x10388:	mov ax, [si]	; 2: -117 4
x10390:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$165:	; £temporary1558 -> unsignedShortPtr = *unsignedShortPtr
x10393:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$166:	; £temporary1559 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10396:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$167:	; £temporary1558 -> unsignedShortPtr = £temporary1559
x10400:	mov [si], al	; 2: -120 4

scanFormat$168:	; goto 186
x10402:	jmp scanFormat$186	; 2: -21 57

scanFormat$169:	; if longIntOrDouble != 0 goto 179
x10404:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10408:	jne scanFormat$179	; 2: 117 26

scanFormat$170:	; arg_list = arg_list + 2
x10410:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$171:	; £temporary1563 = arg_list - 2
x10414:	mov si, [bp + 8]	; 3: -117 118 8
x10417:	sub si, 2	; 3: -125 -18 2

scanFormat$172:	; £temporary1564 = int_to_int £temporary1563 (Signed_Int -> Pointer)

scanFormat$173:	; £temporary1565 -> £temporary1564 = *£temporary1564

scanFormat$174:	; unsignedIntPtr = £temporary1565 -> £temporary1564
x10420:	mov ax, [si]	; 2: -117 4
x10422:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$175:	; £temporary1566 -> unsignedIntPtr = *unsignedIntPtr
x10425:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$176:	; £temporary1567 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10428:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$177:	; £temporary1566 -> unsignedIntPtr = £temporary1567
x10432:	mov [si], ax	; 2: -119 4

scanFormat$178:	; goto 186
x10434:	jmp scanFormat$186	; 2: -21 25

scanFormat$179:	; arg_list = arg_list + 2
x10436:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$180:	; £temporary1569 = arg_list - 2
x10440:	mov si, [bp + 8]	; 3: -117 118 8
x10443:	sub si, 2	; 3: -125 -18 2

scanFormat$181:	; £temporary1570 = int_to_int £temporary1569 (Signed_Int -> Pointer)

scanFormat$182:	; £temporary1571 -> £temporary1570 = *£temporary1570

scanFormat$183:	; unsignedLongPtr = £temporary1571 -> £temporary1570
x10446:	mov ax, [si]	; 2: -117 4
x10448:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$184:	; £temporary1572 -> unsignedLongPtr = *unsignedLongPtr
x10451:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$185:	; £temporary1572 -> unsignedLongPtr = unsignedLongValue
x10454:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10458:	mov [si], eax	; 3: 102 -119 4

scanFormat$186:	; percent = 0
x10461:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$187:	; goto 323
x10466:	jmp scanFormat$323	; 3: -23 -12 1

scanFormat$188:	; call header integral zero 0 stack zero 0

scanFormat$189:	; parameter 0, offset 6
x10469:	mov dword [bp + 63], 0	; 8: 102 -57 70 63 0 0 0 0

scanFormat$190:	; call function noellipse-noellipse scanUnsignedLongInt
x10477:	mov word [bp + 57], scanFormat$191	; 5: -57 70 57 -5 40
x10482:	mov [bp + 59], bp	; 3: -119 110 59
x10485:	add bp, 57	; 3: -125 -59 57
x10488:	jmp scanUnsignedLongInt	; 3: -23 86 6

scanFormat$191:	; post call

scanFormat$192:	; £temporary1574 = return_value

scanFormat$193:	; unsignedLongValue = £temporary1574
x10491:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$194:	; if star != 0 goto 222
x10495:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10499:	jne scanFormat$222	; 2: 117 89

scanFormat$195:	; if shortInt == 0 goto 205
x10501:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10505:	je scanFormat$205	; 2: 116 26

scanFormat$196:	; arg_list = arg_list + 2
x10507:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$197:	; £temporary1578 = arg_list - 2
x10511:	mov si, [bp + 8]	; 3: -117 118 8
x10514:	sub si, 2	; 3: -125 -18 2

scanFormat$198:	; £temporary1579 = int_to_int £temporary1578 (Signed_Int -> Pointer)

scanFormat$199:	; £temporary1580 -> £temporary1579 = *£temporary1579

scanFormat$200:	; unsignedShortPtr = £temporary1580 -> £temporary1579
x10517:	mov ax, [si]	; 2: -117 4
x10519:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$201:	; £temporary1581 -> unsignedShortPtr = *unsignedShortPtr
x10522:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$202:	; £temporary1582 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10525:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$203:	; £temporary1581 -> unsignedShortPtr = £temporary1582
x10529:	mov [si], al	; 2: -120 4

scanFormat$204:	; goto 222
x10531:	jmp scanFormat$222	; 2: -21 57

scanFormat$205:	; if longIntOrDouble != 0 goto 215
x10533:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10537:	jne scanFormat$215	; 2: 117 26

scanFormat$206:	; arg_list = arg_list + 2
x10539:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$207:	; £temporary1586 = arg_list - 2
x10543:	mov si, [bp + 8]	; 3: -117 118 8
x10546:	sub si, 2	; 3: -125 -18 2

scanFormat$208:	; £temporary1587 = int_to_int £temporary1586 (Signed_Int -> Pointer)

scanFormat$209:	; £temporary1588 -> £temporary1587 = *£temporary1587

scanFormat$210:	; unsignedIntPtr = £temporary1588 -> £temporary1587
x10549:	mov ax, [si]	; 2: -117 4
x10551:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$211:	; £temporary1589 -> unsignedIntPtr = *unsignedIntPtr
x10554:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$212:	; £temporary1590 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10557:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$213:	; £temporary1589 -> unsignedIntPtr = £temporary1590
x10561:	mov [si], ax	; 2: -119 4

scanFormat$214:	; goto 222
x10563:	jmp scanFormat$222	; 2: -21 25

scanFormat$215:	; arg_list = arg_list + 2
x10565:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$216:	; £temporary1592 = arg_list - 2
x10569:	mov si, [bp + 8]	; 3: -117 118 8
x10572:	sub si, 2	; 3: -125 -18 2

scanFormat$217:	; £temporary1593 = int_to_int £temporary1592 (Signed_Int -> Pointer)

scanFormat$218:	; £temporary1594 -> £temporary1593 = *£temporary1593

scanFormat$219:	; unsignedLongPtr = £temporary1594 -> £temporary1593
x10575:	mov ax, [si]	; 2: -117 4
x10577:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$220:	; £temporary1595 -> unsignedLongPtr = *unsignedLongPtr
x10580:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$221:	; £temporary1595 -> unsignedLongPtr = unsignedLongValue
x10583:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10587:	mov [si], eax	; 3: 102 -119 4

scanFormat$222:	; percent = 0
x10590:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$223:	; goto 323
x10595:	jmp scanFormat$323	; 3: -23 115 1

scanFormat$224:	; call header integral zero 0 stack zero 0

scanFormat$225:	; call function noellipse-noellipse scanLongDouble
x10598:	mov word [bp + 57], scanFormat$226	; 5: -57 70 57 116 41
x10603:	mov [bp + 59], bp	; 3: -119 110 59
x10606:	add bp, 57	; 3: -125 -59 57
x10609:	jmp scanLongDouble	; 3: -23 -94 8

scanFormat$226:	; post call

scanFormat$227:	; £temporary1597 = return_value

scanFormat$228:	; pop float longDoubleValue
x10612:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$229:	; if star != 0 goto 258
x10615:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10619:	jne scanFormat$258	; 2: 117 85

scanFormat$230:	; if longIntOrDouble == 0 goto 240
x10621:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10625:	je scanFormat$240	; 2: 116 25

scanFormat$231:	; arg_list = arg_list + 2
x10627:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$232:	; £temporary1601 = arg_list - 2
x10631:	mov si, [bp + 8]	; 3: -117 118 8
x10634:	sub si, 2	; 3: -125 -18 2

scanFormat$233:	; £temporary1602 = int_to_int £temporary1601 (Signed_Int -> Pointer)

scanFormat$234:	; £temporary1603 -> £temporary1602 = *£temporary1602

scanFormat$235:	; doublePtr = £temporary1603 -> £temporary1602
x10637:	mov ax, [si]	; 2: -117 4
x10639:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$236:	; £temporary1604 -> doublePtr = *doublePtr
x10642:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$237:	; push float longDoubleValue
x10645:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$238:	; pop float £temporary1604 -> doublePtr
x10648:	fstp qword [si]	; 2: -35 28

scanFormat$239:	; goto 258
x10650:	jmp scanFormat$258	; 2: -21 54

scanFormat$240:	; if longDouble == 0 goto 250
x10652:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x10656:	je scanFormat$250	; 2: 116 25

scanFormat$241:	; arg_list = arg_list + 2
x10658:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$242:	; £temporary1607 = arg_list - 2
x10662:	mov si, [bp + 8]	; 3: -117 118 8
x10665:	sub si, 2	; 3: -125 -18 2

scanFormat$243:	; £temporary1608 = int_to_int £temporary1607 (Signed_Int -> Pointer)

scanFormat$244:	; £temporary1609 -> £temporary1608 = *£temporary1608

scanFormat$245:	; longDoublePtr = £temporary1609 -> £temporary1608
x10668:	mov ax, [si]	; 2: -117 4
x10670:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$246:	; £temporary1610 -> longDoublePtr = *longDoublePtr
x10673:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$247:	; push float longDoubleValue
x10676:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$248:	; pop float £temporary1610 -> longDoublePtr
x10679:	fstp qword [si]	; 2: -35 28

scanFormat$249:	; goto 258
x10681:	jmp scanFormat$258	; 2: -21 23

scanFormat$250:	; arg_list = arg_list + 2
x10683:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$251:	; £temporary1612 = arg_list - 2
x10687:	mov si, [bp + 8]	; 3: -117 118 8
x10690:	sub si, 2	; 3: -125 -18 2

scanFormat$252:	; £temporary1613 = int_to_int £temporary1612 (Signed_Int -> Pointer)

scanFormat$253:	; £temporary1614 -> £temporary1613 = *£temporary1613

scanFormat$254:	; floatPtr = £temporary1614 -> £temporary1613
x10693:	mov ax, [si]	; 2: -117 4
x10695:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$255:	; £temporary1615 -> floatPtr = *floatPtr
x10698:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$256:	; push float longDoubleValue
x10701:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$257:	; pop float £temporary1615 -> floatPtr
x10704:	fstp dword [si]	; 2: -39 28

scanFormat$258:	; percent = 0
x10706:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$259:	; goto 323
x10711:	jmp scanFormat$323	; 3: -23 -1 0

scanFormat$260:	; not = 0
x10714:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$261:	; ++index
x10719:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$262:	; £temporary1621 = format + index
x10722:	mov si, [bp + 6]	; 3: -117 118 6
x10725:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$263:	; £temporary1620 -> £temporary1621 = *£temporary1621

scanFormat$264:	; if £temporary1620 -> £temporary1621 != 94 goto 267
x10728:	cmp byte [si], 94	; 3: -128 60 94
x10731:	jne scanFormat$267	; 2: 117 12

scanFormat$265:	; not = 1
x10733:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$266:	; startIndex = index + 1
x10738:	mov ax, [bp + 31]	; 3: -117 70 31
x10741:	inc ax	; 1: 64
x10742:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$267:	; £temporary1625 = format + index
x10745:	mov si, [bp + 6]	; 3: -117 118 6
x10748:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$268:	; £temporary1624 -> £temporary1625 = *£temporary1625

scanFormat$269:	; if £temporary1624 -> £temporary1625 == 93 goto 272
x10751:	cmp byte [si], 93	; 3: -128 60 93
x10754:	je scanFormat$272	; 2: 116 5

scanFormat$270:	; ++index
x10756:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$271:	; goto 267
x10759:	jmp scanFormat$267	; 2: -21 -16

scanFormat$272:	; £temporary1629 = format + index
x10761:	mov si, [bp + 6]	; 3: -117 118 6
x10764:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$273:	; £temporary1628 -> £temporary1629 = *£temporary1629

scanFormat$274:	; £temporary1628 -> £temporary1629 = 0
x10767:	mov byte [si], 0	; 3: -58 4 0

scanFormat$275:	; if star != 0 goto 291
x10770:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10774:	jne scanFormat$291	; 2: 117 53

scanFormat$276:	; arg_list = arg_list + 2
x10776:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$277:	; £temporary1633 = arg_list - 2
x10780:	mov si, [bp + 8]	; 3: -117 118 8
x10783:	sub si, 2	; 3: -125 -18 2

scanFormat$278:	; £temporary1634 = int_to_int £temporary1633 (Signed_Int -> Pointer)

scanFormat$279:	; £temporary1635 -> £temporary1634 = *£temporary1634

scanFormat$280:	; string = £temporary1635 -> £temporary1634
x10786:	mov ax, [si]	; 2: -117 4
x10788:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$281:	; call header integral zero 0 stack zero 0

scanFormat$282:	; parameter string, offset 6
x10791:	mov ax, [bp + 61]	; 3: -117 70 61
x10794:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$283:	; £temporary1637 = format + startIndex
x10797:	mov si, [bp + 6]	; 3: -117 118 6
x10800:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$284:	; £temporary1636 -> £temporary1637 = *£temporary1637

scanFormat$285:	; £temporary1638 = &£temporary1636 -> £temporary1637

scanFormat$286:	; parameter £temporary1638, offset 8
x10803:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$287:	; parameter not, offset 10
x10806:	mov ax, [bp + 57]	; 3: -117 70 57
x10809:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$288:	; call function noellipse-noellipse scanPattern
x10812:	mov word [bp + 63], scanFormat$289	; 5: -57 70 63 74 42
x10817:	mov [bp + 65], bp	; 3: -119 110 65
x10820:	add bp, 63	; 3: -125 -59 63
x10823:	jmp scanPattern	; 3: -23 -2 9

scanFormat$289:	; post call

scanFormat$290:	; goto 323
x10826:	jmp scanFormat$323	; 3: -23 -116 0

scanFormat$291:	; call header integral zero 0 stack zero 0

scanFormat$292:	; parameter 0, offset 6
x10829:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$293:	; £temporary1641 = format + startIndex
x10834:	mov si, [bp + 6]	; 3: -117 118 6
x10837:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$294:	; £temporary1640 -> £temporary1641 = *£temporary1641

scanFormat$295:	; £temporary1642 = &£temporary1640 -> £temporary1641

scanFormat$296:	; parameter £temporary1642, offset 8
x10840:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$297:	; parameter not, offset 10
x10843:	mov ax, [bp + 57]	; 3: -117 70 57
x10846:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$298:	; call function noellipse-noellipse scanPattern
x10849:	mov word [bp + 61], scanFormat$299	; 5: -57 70 61 111 42
x10854:	mov [bp + 63], bp	; 3: -119 110 63
x10857:	add bp, 61	; 3: -125 -59 61
x10860:	jmp scanPattern	; 3: -23 -39 9

scanFormat$299:	; post call

scanFormat$300:	; goto 323
x10863:	jmp scanFormat$323	; 2: -21 104

scanFormat$301:	; arg_list = arg_list + 2
x10865:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$302:	; £temporary1645 = arg_list - 2
x10869:	mov si, [bp + 8]	; 3: -117 118 8
x10872:	sub si, 2	; 3: -125 -18 2

scanFormat$303:	; £temporary1646 = int_to_int £temporary1645 (Signed_Int -> Pointer)

scanFormat$304:	; £temporary1647 -> £temporary1646 = *£temporary1646

scanFormat$305:	; charsPtr = £temporary1647 -> £temporary1646
x10875:	mov ax, [si]	; 2: -117 4
x10877:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$306:	; £temporary1648 -> charsPtr = *charsPtr
x10880:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$307:	; £temporary1648 -> charsPtr = g_inChars
x10883:	mov ax, [g_inChars]	; 3: -95 -16 42
x10886:	mov [si], ax	; 2: -119 4

scanFormat$308:	; percent = 0
x10888:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$309:	; goto 323
x10893:	jmp scanFormat$323	; 2: -21 74

scanFormat$310:	; call header integral zero 0 stack zero 0

scanFormat$311:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x10895:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 -14 42

scanFormat$312:	; £temporary1649 = int_to_int c (Signed_Char -> Signed_Int)
x10900:	mov al, [bp + 10]	; 3: -118 70 10
x10903:	and ax, 255	; 3: 37 -1 0
x10906:	cmp al, 0	; 2: 60 0
x10908:	jge scanFormat$313	; 2: 125 4
x10910:	neg al	; 2: -10 -40
x10912:	neg ax	; 2: -9 -40

scanFormat$313:	; parameter £temporary1649, offset 8
x10914:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$314:	; call function noellipse-ellipse printf, extra 0
x10917:	mov word [bp + 57], scanFormat$315	; 5: -57 70 57 -72 42
x10922:	mov [bp + 59], bp	; 3: -119 110 59
x10925:	add bp, 57	; 3: -125 -59 57
x10928:	mov di, bp	; 2: -119 -17
x10930:	add di, 2	; 3: -125 -57 2
x10933:	jmp printf	; 3: -23 15 -39

scanFormat$315:	; post call

scanFormat$316:	; goto 323
x10936:	jmp scanFormat$323	; 2: -21 31

scanFormat$317:	; if c != 37 goto 323
x10938:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x10942:	jne scanFormat$323	; 2: 117 25

scanFormat$318:	; percent = 1
x10944:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$319:	; shortInt = 0
x10949:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$320:	; longIntOrDouble = 0
x10954:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$321:	; longDouble = 0
x10959:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$322:	; star = 0
x10964:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$323:	; ++index
x10969:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$324:	; goto 8
x10972:	jmp scanFormat$8	; 3: -23 23 -5

scanFormat$325:	; return_value = g_inCount
x10975:	mov bx, [g_inCount]	; 4: -117 30 -18 42

scanFormat$326:	; return
x10979:	mov ax, [bp]	; 3: -117 70 0
x10982:	mov di, [bp + 4]	; 3: -117 126 4
x10985:	mov bp, [bp + 2]	; 3: -117 110 2
x10988:	jmp ax	; 2: -1 -32

scanFormat$327:	; function end scanFormat

g_inCount:
x10990:	db 0, 0	; 2: 0 0

g_inChars:
x10992:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x10994:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x11015:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x11019:	mov ax, [g_inStatus]	; 3: -95 -56 37
x11022:	cmp ax, 0	; 3: -125 -8 0
x11025:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x11027:	cmp ax, 1	; 3: -125 -8 1
x11030:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x11032:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1203 = int_to_int g_inDevice (Pointer -> Pointer)
x11034:	mov ax, [g_inDevice]	; 3: -95 -54 37

scanChar$6:	; stream = £temporary1203
x11037:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1204 -> stream = *stream, offset 2
x11040:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1204 -> stream
x11043:	mov ax, [si + 2]	; 3: -117 68 2
x11046:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x11049:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x11051:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x11054:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1209 = &c
x11057:	mov dx, bp	; 2: -119 -22
x11059:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1209

scanChar$14:	; interrupt 33
x11062:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x11064:	inc word [g_inChars]	; 4: -1 6 -16 42

scanChar$16:	; return_value = c
x11068:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x11071:	mov ax, [bp]	; 3: -117 70 0
x11074:	mov di, [bp + 4]	; 3: -117 126 4
x11077:	mov bp, [bp + 2]	; 3: -117 110 2
x11080:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1211 = int_to_int g_inDevice (Pointer -> Pointer)
x11082:	mov ax, [g_inDevice]	; 3: -95 -54 37

scanChar$19:	; inString = £temporary1211
x11085:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1212 = g_inChars
x11088:	mov ax, [g_inChars]	; 3: -95 -16 42

scanChar$21:	; ++g_inChars
x11091:	inc word [g_inChars]	; 4: -1 6 -16 42

scanChar$22:	; £temporary1214 = inString + £temporary1212
x11095:	mov si, [bp + 11]	; 3: -117 118 11
x11098:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1213 -> £temporary1214 = *£temporary1214

scanChar$24:	; return_value = £temporary1213 -> £temporary1214
x11100:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x11102:	mov ax, [bp]	; 3: -117 70 0
x11105:	mov di, [bp + 4]	; 3: -117 126 4
x11108:	mov bp, [bp + 2]	; 3: -117 110 2
x11111:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x11113:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x11115:	mov ax, [bp]	; 3: -117 70 0
x11118:	mov di, [bp + 4]	; 3: -117 126 4
x11121:	mov bp, [bp + 2]	; 3: -117 110 2
x11124:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x11126:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x11131:	mov word [bp + 12], scanString$3	; 5: -57 70 12 -119 43
x11136:	mov [bp + 14], bp	; 3: -119 110 14
x11139:	add bp, 12	; 3: -125 -59 12
x11142:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1266 = return_value

scanString$5:	; input = £temporary1266
x11145:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x11148:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1267 = int_to_int input (Signed_Char -> Signed_Int)
x11153:	mov al, [bp + 12]	; 3: -118 70 12
x11156:	and ax, 255	; 3: 37 -1 0
x11159:	cmp al, 0	; 2: 60 0
x11161:	jge scanString$9	; 2: 125 4
x11163:	neg al	; 2: -10 -40
x11165:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1267, offset 6
x11167:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x11170:	mov word [bp + 15], scanString$11	; 5: -57 70 15 -80 43
x11175:	mov [bp + 17], bp	; 3: -119 110 17
x11178:	add bp, 15	; 3: -125 -59 15
x11181:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1268 = return_value

scanString$13:	; if £temporary1268 == 0 goto 20
x11184:	cmp bx, 0	; 3: -125 -5 0
x11187:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x11189:	mov word [bp + 15], scanString$16	; 5: -57 70 15 -61 43
x11194:	mov [bp + 17], bp	; 3: -119 110 17
x11197:	add bp, 15	; 3: -125 -59 15
x11200:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1269 = return_value

scanString$18:	; input = £temporary1269
x11203:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x11206:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x11208:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x11212:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x11216:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11220:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1273 = int_to_int input (Signed_Char -> Signed_Int)
x11222:	mov al, [bp + 12]	; 3: -118 70 12
x11225:	and ax, 255	; 3: 37 -1 0
x11228:	cmp al, 0	; 2: 60 0
x11230:	jge scanString$24	; 2: 125 4
x11232:	neg al	; 2: -10 -40
x11234:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1273, offset 6
x11236:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x11239:	mov word [bp + 15], scanString$26	; 5: -57 70 15 -11 43
x11244:	mov [bp + 17], bp	; 3: -119 110 17
x11247:	add bp, 15	; 3: -125 -59 15
x11250:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1274 = return_value

scanString$28:	; if £temporary1274 != 0 goto 45
x11253:	cmp bx, 0	; 3: -125 -5 0
x11256:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1277 = int_to_int input (Signed_Char -> Signed_Int)
x11258:	mov al, [bp + 12]	; 3: -118 70 12
x11261:	and ax, 255	; 3: 37 -1 0
x11264:	cmp al, 0	; 2: 60 0
x11266:	jge scanString$30	; 2: 125 4
x11268:	neg al	; 2: -10 -40
x11270:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1277 == -1 goto 45
x11272:	cmp ax, -1	; 3: -125 -8 -1
x11275:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x11277:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11281:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1282 = index
x11283:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x11286:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1284 = string + £temporary1282
x11289:	mov si, [bp + 6]	; 3: -117 118 6
x11292:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1283 -> £temporary1284 = *£temporary1284

scanString$36:	; £temporary1283 -> £temporary1284 = input
x11294:	mov al, [bp + 12]	; 3: -118 70 12
x11297:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x11299:	mov word [bp + 15], scanString$39	; 5: -57 70 15 49 44
x11304:	mov [bp + 17], bp	; 3: -119 110 17
x11307:	add bp, 15	; 3: -125 -59 15
x11310:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1285 = return_value

scanString$41:	; input = £temporary1285
x11313:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x11316:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x11321:	inc word [g_inChars]	; 4: -1 6 -16 42

scanString$44:	; goto 22
x11325:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1288 = string + index
x11327:	mov si, [bp + 6]	; 3: -117 118 6
x11330:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1287 -> £temporary1288 = *£temporary1288

scanString$47:	; £temporary1287 -> £temporary1288 = 0
x11333:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x11336:	inc word [g_inChars]	; 4: -1 6 -16 42

scanString$49:	; goto 126
x11340:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1290 = precision
x11343:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x11346:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1290 <= 0 goto 76
x11349:	cmp ax, 0	; 3: -125 -8 0
x11352:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1292 = int_to_int input (Signed_Char -> Signed_Int)
x11354:	mov al, [bp + 12]	; 3: -118 70 12
x11357:	and ax, 255	; 3: 37 -1 0
x11360:	cmp al, 0	; 2: 60 0
x11362:	jge scanString$55	; 2: 125 4
x11364:	neg al	; 2: -10 -40
x11366:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1292, offset 6
x11368:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x11371:	mov word [bp + 15], scanString$57	; 5: -57 70 15 121 44
x11376:	mov [bp + 17], bp	; 3: -119 110 17
x11379:	add bp, 15	; 3: -125 -59 15
x11382:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1293 = return_value

scanString$59:	; if £temporary1293 != 0 goto 76
x11385:	cmp bx, 0	; 3: -125 -5 0
x11388:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1296 = int_to_int input (Signed_Char -> Signed_Int)
x11390:	mov al, [bp + 12]	; 3: -118 70 12
x11393:	and ax, 255	; 3: 37 -1 0
x11396:	cmp al, 0	; 2: 60 0
x11398:	jge scanString$61	; 2: 125 4
x11400:	neg al	; 2: -10 -40
x11402:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1296 == -1 goto 76
x11404:	cmp ax, -1	; 3: -125 -8 -1
x11407:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x11409:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11413:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1302 = index
x11415:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x11418:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1304 = string + £temporary1302
x11421:	mov si, [bp + 6]	; 3: -117 118 6
x11424:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1303 -> £temporary1304 = *£temporary1304

scanString$67:	; £temporary1303 -> £temporary1304 = input
x11426:	mov al, [bp + 12]	; 3: -118 70 12
x11429:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x11431:	mov word [bp + 15], scanString$70	; 5: -57 70 15 -75 44
x11436:	mov [bp + 17], bp	; 3: -119 110 17
x11439:	add bp, 15	; 3: -125 -59 15
x11442:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1305 = return_value

scanString$72:	; input = £temporary1305
x11445:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x11448:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x11453:	inc word [g_inChars]	; 4: -1 6 -16 42

scanString$75:	; goto 50
x11457:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x11459:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11463:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1309 = string + index
x11467:	mov si, [bp + 6]	; 3: -117 118 6
x11470:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1308 -> £temporary1309 = *£temporary1309

scanString$79:	; £temporary1308 -> £temporary1309 = 0
x11473:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x11476:	inc word [g_inChars]	; 4: -1 6 -16 42

scanString$81:	; goto 126
x11480:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x11483:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11487:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1312 = int_to_int input (Signed_Char -> Signed_Int)
x11489:	mov al, [bp + 12]	; 3: -118 70 12
x11492:	and ax, 255	; 3: 37 -1 0
x11495:	cmp al, 0	; 2: 60 0
x11497:	jge scanString$85	; 2: 125 4
x11499:	neg al	; 2: -10 -40
x11501:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1312, offset 6
x11503:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x11506:	mov word [bp + 15], scanString$87	; 5: -57 70 15 0 45
x11511:	mov [bp + 17], bp	; 3: -119 110 17
x11514:	add bp, 15	; 3: -125 -59 15
x11517:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1313 = return_value

scanString$89:	; if £temporary1313 != 0 goto 101
x11520:	cmp bx, 0	; 3: -125 -5 0
x11523:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1316 = int_to_int input (Signed_Char -> Signed_Int)
x11525:	mov al, [bp + 12]	; 3: -118 70 12
x11528:	and ax, 255	; 3: 37 -1 0
x11531:	cmp al, 0	; 2: 60 0
x11533:	jge scanString$91	; 2: 125 4
x11535:	neg al	; 2: -10 -40
x11537:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1316 == -1 goto 101
x11539:	cmp ax, -1	; 3: -125 -8 -1
x11542:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x11544:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11548:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x11550:	mov word [bp + 15], scanString$95	; 5: -57 70 15 44 45
x11555:	mov [bp + 17], bp	; 3: -119 110 17
x11558:	add bp, 15	; 3: -125 -59 15
x11561:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1321 = return_value

scanString$97:	; input = £temporary1321
x11564:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x11567:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x11572:	inc word [g_inChars]	; 4: -1 6 -16 42

scanString$100:	; goto 83
x11576:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x11578:	inc word [g_inChars]	; 4: -1 6 -16 42

scanString$102:	; goto 126
x11582:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1324 = precision
x11584:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x11587:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1324 <= 0 goto 124
x11590:	cmp ax, 0	; 3: -125 -8 0
x11593:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1326 = int_to_int input (Signed_Char -> Signed_Int)
x11595:	mov al, [bp + 12]	; 3: -118 70 12
x11598:	and ax, 255	; 3: 37 -1 0
x11601:	cmp al, 0	; 2: 60 0
x11603:	jge scanString$108	; 2: 125 4
x11605:	neg al	; 2: -10 -40
x11607:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1326, offset 6
x11609:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x11612:	mov word [bp + 15], scanString$110	; 5: -57 70 15 106 45
x11617:	mov [bp + 17], bp	; 3: -119 110 17
x11620:	add bp, 15	; 3: -125 -59 15
x11623:	nop	; 1: -112
x11624:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1327 = return_value

scanString$112:	; if £temporary1327 != 0 goto 124
x11626:	cmp bx, 0	; 3: -125 -5 0
x11629:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1330 = int_to_int input (Signed_Char -> Signed_Int)
x11631:	mov al, [bp + 12]	; 3: -118 70 12
x11634:	and ax, 255	; 3: 37 -1 0
x11637:	cmp al, 0	; 2: 60 0
x11639:	jge scanString$114	; 2: 125 4
x11641:	neg al	; 2: -10 -40
x11643:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1330 == -1 goto 124
x11645:	cmp ax, -1	; 3: -125 -8 -1
x11648:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x11650:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11654:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x11656:	mov word [bp + 15], scanString$118	; 5: -57 70 15 -106 45
x11661:	mov [bp + 17], bp	; 3: -119 110 17
x11664:	add bp, 15	; 3: -125 -59 15
x11667:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1336 = return_value

scanString$120:	; input = £temporary1336
x11670:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x11673:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x11678:	inc word [g_inChars]	; 4: -1 6 -16 42

scanString$123:	; goto 103
x11682:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x11684:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11688:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x11690:	inc word [g_inChars]	; 4: -1 6 -16 42

scanString$126:	; if found == 0 goto 128
x11694:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x11698:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x11700:	inc word [g_inCount]	; 4: -1 6 -18 42

scanString$128:	; return
x11704:	mov ax, [bp]	; 3: -117 70 0
x11707:	mov di, [bp + 4]	; 3: -117 126 4
x11710:	mov bp, [bp + 2]	; 3: -117 110 2
x11713:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x11715:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x11719:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x11721:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x11725:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x11727:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x11731:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x11733:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x11737:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x11739:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x11743:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x11745:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x11749:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary450 = 1
x11751:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x11754:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary450 = 0
x11756:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary450

isspace$10:	; return
x11759:	mov ax, [bp]	; 3: -117 70 0
x11762:	mov di, [bp + 4]	; 3: -117 126 4
x11765:	mov bp, [bp + 2]	; 3: -117 110 2
x11768:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x11770:	mov dword [bp + 6], 0	; 8: 102 -57 70 6 0 0 0 0

scanLongInt$1:	; minus = 0
x11778:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanLongInt$2:	; found = 0
x11783:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x11788:	mov word [bp + 14], scanLongInt$5	; 5: -57 70 14 26 46
x11793:	mov [bp + 16], bp	; 3: -119 110 16
x11796:	add bp, 14	; 3: -125 -59 14
x11799:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1363 = return_value

scanLongInt$7:	; input = £temporary1363
x11802:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1364 = int_to_int input (Signed_Char -> Signed_Int)
x11805:	mov al, [bp + 14]	; 3: -118 70 14
x11808:	and ax, 255	; 3: 37 -1 0
x11811:	cmp al, 0	; 2: 60 0
x11813:	jge scanLongInt$10	; 2: 125 4
x11815:	neg al	; 2: -10 -40
x11817:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1364, offset 6
x11819:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$11:	; call function noellipse-noellipse isspace
x11822:	mov word [bp + 15], scanLongInt$12	; 5: -57 70 15 60 46
x11827:	mov [bp + 17], bp	; 3: -119 110 17
x11830:	add bp, 15	; 3: -125 -59 15
x11833:	nop	; 1: -112
x11834:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1365 = return_value

scanLongInt$14:	; if £temporary1365 == 0 goto 21
x11836:	cmp bx, 0	; 3: -125 -5 0
x11839:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x11841:	mov word [bp + 15], scanLongInt$17	; 5: -57 70 15 79 46
x11846:	mov [bp + 17], bp	; 3: -119 110 17
x11849:	add bp, 15	; 3: -125 -59 15
x11852:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1366 = return_value

scanLongInt$19:	; input = £temporary1366
x11855:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$20:	; goto 8
x11858:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x11860:	cmp byte [bp + 14], 43	; 4: -128 126 14 43
x11864:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x11866:	mov word [bp + 15], scanLongInt$24	; 5: -57 70 15 104 46
x11871:	mov [bp + 17], bp	; 3: -119 110 17
x11874:	add bp, 15	; 3: -125 -59 15
x11877:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1369 = return_value

scanLongInt$26:	; input = £temporary1369
x11880:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$27:	; goto 35
x11883:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x11885:	cmp byte [bp + 14], 45	; 4: -128 126 14 45
x11889:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x11891:	mov word [bp + 10], 1	; 5: -57 70 10 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x11896:	mov word [bp + 15], scanLongInt$32	; 5: -57 70 15 -122 46
x11901:	mov [bp + 17], bp	; 3: -119 110 17
x11904:	add bp, 15	; 3: -125 -59 15
x11907:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1371 = return_value

scanLongInt$34:	; input = £temporary1371
x11910:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$35:	; call header integral zero 0 stack zero 0

scanLongInt$36:	; £temporary1372 = int_to_int input (Signed_Char -> Signed_Int)
x11913:	mov al, [bp + 14]	; 3: -118 70 14
x11916:	and ax, 255	; 3: 37 -1 0
x11919:	cmp al, 0	; 2: 60 0
x11921:	jge scanLongInt$37	; 2: 125 4
x11923:	neg al	; 2: -10 -40
x11925:	neg ax	; 2: -9 -40

scanLongInt$37:	; parameter £temporary1372, offset 6
x11927:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$38:	; call function noellipse-noellipse isdigit
x11930:	mov word [bp + 15], scanLongInt$39	; 5: -57 70 15 -88 46
x11935:	mov [bp + 17], bp	; 3: -119 110 17
x11938:	add bp, 15	; 3: -125 -59 15
x11941:	jmp isdigit	; 3: -23 109 -11

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1373 = return_value

scanLongInt$41:	; if £temporary1373 == 0 goto 53
x11944:	cmp bx, 0	; 3: -125 -5 0
x11947:	je scanLongInt$53	; 2: 116 66

scanLongInt$42:	; £temporary1374 = longValue * 10
x11949:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11953:	xor edx, edx	; 3: 102 49 -46
x11956:	imul dword [int4$10#]	; 5: 102 -9 46 -51 19

scanLongInt$43:	; £temporary1375 = input - 48
x11961:	mov bl, [bp + 14]	; 3: -118 94 14
x11964:	sub bl, 48	; 3: -128 -21 48

scanLongInt$44:	; £temporary1376 = int_to_int £temporary1375 (Signed_Char -> Signed_Long_Int)
x11967:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0
x11974:	cmp bl, 0	; 3: -128 -5 0
x11977:	jge scanLongInt$45	; 2: 125 5
x11979:	neg bl	; 2: -10 -37
x11981:	neg ebx	; 3: 102 -9 -37

scanLongInt$45:	; longValue = £temporary1374 + £temporary1376
x11984:	add eax, ebx	; 3: 102 1 -40
x11987:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$46:	; call header integral zero 0 stack zero 0

scanLongInt$47:	; call function noellipse-noellipse scanChar
x11991:	mov word [bp + 15], scanLongInt$48	; 5: -57 70 15 -27 46
x11996:	mov [bp + 17], bp	; 3: -119 110 17
x11999:	add bp, 15	; 3: -125 -59 15
x12002:	jmp scanChar	; 3: -23 34 -4

scanLongInt$48:	; post call

scanLongInt$49:	; £temporary1378 = return_value

scanLongInt$50:	; input = £temporary1378
x12005:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$51:	; found = 1
x12008:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$52:	; goto 35
x12013:	jmp scanLongInt$35	; 2: -21 -102

scanLongInt$53:	; if minus == 0 goto 56
x12015:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x12019:	je scanLongInt$56	; 2: 116 11

scanLongInt$54:	; £temporary1380 = -longValue
x12021:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12025:	neg eax	; 3: 102 -9 -40

scanLongInt$55:	; longValue = £temporary1380
x12028:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$56:	; if found == 0 goto 58
x12032:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x12036:	je scanLongInt$58	; 2: 116 4

scanLongInt$57:	; ++g_inCount
x12038:	inc word [g_inCount]	; 4: -1 6 -18 42

scanLongInt$58:	; call header integral zero 0 stack zero 0

scanLongInt$59:	; parameter input, offset 6
x12042:	mov al, [bp + 14]	; 3: -118 70 14
x12045:	mov [bp + 21], al	; 3: -120 70 21

scanLongInt$60:	; call function noellipse-noellipse unscanChar
x12048:	mov word [bp + 15], scanLongInt$61	; 5: -57 70 15 30 47
x12053:	mov [bp + 17], bp	; 3: -119 110 17
x12056:	add bp, 15	; 3: -125 -59 15
x12059:	nop	; 1: -112
x12060:	jmp unscanChar	; 2: -21 15

scanLongInt$61:	; post call

scanLongInt$62:	; return_value = longValue
x12062:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

scanLongInt$63:	; return
x12066:	mov ax, [bp]	; 3: -117 70 0
x12069:	mov di, [bp + 4]	; 3: -117 126 4
x12072:	mov bp, [bp + 2]	; 3: -117 110 2
x12075:	jmp ax	; 2: -1 -32

scanLongInt$64:	; function end scanLongInt

unscanChar:	; case g_inStatus == 0 goto 4
x12077:	mov ax, [g_inStatus]	; 3: -95 -56 37
x12080:	cmp ax, 0	; 3: -125 -8 0
x12083:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x12085:	cmp ax, 1	; 3: -125 -8 1
x12088:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x12090:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x12092:	dec word [g_inChars]	; 4: -1 14 -16 42

unscanChar$5:	; goto 7
x12096:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x12098:	dec word [g_inChars]	; 4: -1 14 -16 42

unscanChar$7:	; return
x12102:	mov ax, [bp]	; 3: -117 70 0
x12105:	mov di, [bp + 4]	; 3: -117 126 4
x12108:	mov bp, [bp + 2]	; 3: -117 110 2
x12111:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x12113:	mov dword [bp + 10], 0	; 8: 102 -57 70 10 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x12121:	mov word [bp + 18], scanUnsignedLongInt$3	; 5: -57 70 18 103 47
x12126:	mov [bp + 20], bp	; 3: -119 110 20
x12129:	add bp, 18	; 3: -125 -59 18
x12132:	jmp scanChar	; 3: -23 -96 -5

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1388 = return_value

scanUnsignedLongInt$5:	; input = £temporary1388
x12135:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$6:	; found = 1
x12138:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1389 = int_to_int input (Signed_Char -> Signed_Int)
x12143:	mov al, [bp + 18]	; 3: -118 70 18
x12146:	and ax, 255	; 3: 37 -1 0
x12149:	cmp al, 0	; 2: 60 0
x12151:	jge scanUnsignedLongInt$9	; 2: 125 4
x12153:	neg al	; 2: -10 -40
x12155:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1389, offset 6
x12157:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x12160:	mov word [bp + 21], scanUnsignedLongInt$11	; 5: -57 70 21 -114 47
x12165:	mov [bp + 23], bp	; 3: -119 110 23
x12168:	add bp, 21	; 3: -125 -59 21
x12171:	jmp isspace	; 3: -23 53 -2

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1390 = return_value

scanUnsignedLongInt$13:	; if £temporary1390 == 0 goto 20
x12174:	cmp bx, 0	; 3: -125 -5 0
x12177:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x12179:	mov word [bp + 21], scanUnsignedLongInt$16	; 5: -57 70 21 -95 47
x12184:	mov [bp + 23], bp	; 3: -119 110 23
x12187:	add bp, 21	; 3: -125 -59 21
x12190:	jmp scanChar	; 3: -23 102 -5

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1391 = return_value

scanUnsignedLongInt$18:	; input = £temporary1391
x12193:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$19:	; goto 7
x12196:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 48 goto 49
x12198:	cmp byte [bp + 18], 48	; 4: -128 126 18 48
x12202:	jne scanUnsignedLongInt$49	; 2: 117 118

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x12204:	mov word [bp + 21], scanUnsignedLongInt$23	; 5: -57 70 21 -70 47
x12209:	mov [bp + 23], bp	; 3: -119 110 23
x12212:	add bp, 21	; 3: -125 -59 21
x12215:	jmp scanChar	; 3: -23 77 -5

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1394 = return_value

scanUnsignedLongInt$25:	; input = £temporary1394
x12218:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$26:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$27:	; £temporary1395 = int_to_int input (Signed_Char -> Signed_Int)
x12221:	mov al, [bp + 18]	; 3: -118 70 18
x12224:	and ax, 255	; 3: 37 -1 0
x12227:	cmp al, 0	; 2: 60 0
x12229:	jge scanUnsignedLongInt$28	; 2: 125 4
x12231:	neg al	; 2: -10 -40
x12233:	neg ax	; 2: -9 -40

scanUnsignedLongInt$28:	; parameter £temporary1395, offset 6
x12235:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$29:	; call function noellipse-noellipse tolower
x12238:	mov word [bp + 21], scanUnsignedLongInt$30	; 5: -57 70 21 -36 47
x12243:	mov [bp + 23], bp	; 3: -119 110 23
x12246:	add bp, 21	; 3: -125 -59 21
x12249:	jmp tolower	; 3: -23 68 -18

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1396 = return_value

scanUnsignedLongInt$32:	; if £temporary1396 != 120 goto 44
x12252:	cmp bx, 120	; 3: -125 -5 120
x12255:	jne scanUnsignedLongInt$44	; 2: 117 42

scanUnsignedLongInt$33:	; if base != 0 goto 36
x12257:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12262:	jne scanUnsignedLongInt$36	; 2: 117 8

scanUnsignedLongInt$34:	; £temporary1402 = 16
x12264:	mov eax, 16	; 6: 102 -72 16 0 0 0

scanUnsignedLongInt$35:	; goto 37
x12270:	jmp scanUnsignedLongInt$37	; 2: -21 4

scanUnsignedLongInt$36:	; £temporary1402 = base
x12272:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$37:	; base = £temporary1402
x12276:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$38:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$39:	; call function noellipse-noellipse scanChar
x12280:	mov word [bp + 21], scanUnsignedLongInt$40	; 5: -57 70 21 6 48
x12285:	mov [bp + 23], bp	; 3: -119 110 23
x12288:	add bp, 21	; 3: -125 -59 21
x12291:	jmp scanChar	; 3: -23 1 -5

scanUnsignedLongInt$40:	; post call

scanUnsignedLongInt$41:	; £temporary1403 = return_value

scanUnsignedLongInt$42:	; input = £temporary1403
x12294:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$43:	; goto 49
x12297:	jmp scanUnsignedLongInt$49	; 2: -21 23

scanUnsignedLongInt$44:	; if base != 0 goto 47
x12299:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12304:	jne scanUnsignedLongInt$47	; 2: 117 8

scanUnsignedLongInt$45:	; £temporary1408 = 8
x12306:	mov eax, 8	; 6: 102 -72 8 0 0 0

scanUnsignedLongInt$46:	; goto 48
x12312:	jmp scanUnsignedLongInt$48	; 2: -21 4

scanUnsignedLongInt$47:	; £temporary1408 = base
x12314:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$48:	; base = £temporary1408
x12318:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$49:	; if base != 0 goto 51
x12322:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12327:	jne scanUnsignedLongInt$51	; 2: 117 8

scanUnsignedLongInt$50:	; base = 10
x12329:	mov dword [bp + 6], 10	; 8: 102 -57 70 6 10 0 0 0

scanUnsignedLongInt$51:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$52:	; £temporary1410 = int_to_int input (Signed_Char -> Signed_Int)
x12337:	mov al, [bp + 18]	; 3: -118 70 18
x12340:	and ax, 255	; 3: 37 -1 0
x12343:	cmp al, 0	; 2: 60 0
x12345:	jge scanUnsignedLongInt$53	; 2: 125 4
x12347:	neg al	; 2: -10 -40
x12349:	neg ax	; 2: -9 -40

scanUnsignedLongInt$53:	; parameter £temporary1410, offset 6
x12351:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$54:	; call function noellipse-noellipse isxdigit
x12354:	mov word [bp + 21], scanUnsignedLongInt$55	; 5: -57 70 21 80 48
x12359:	mov [bp + 23], bp	; 3: -119 110 23
x12362:	add bp, 21	; 3: -125 -59 21
x12365:	nop	; 1: -112
x12366:	jmp isxdigit	; 2: -21 127

scanUnsignedLongInt$55:	; post call

scanUnsignedLongInt$56:	; £temporary1411 = return_value

scanUnsignedLongInt$57:	; if £temporary1411 == 0 goto 74
x12368:	cmp bx, 0	; 3: -125 -5 0
x12371:	je scanUnsignedLongInt$74	; 2: 116 77

scanUnsignedLongInt$58:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$59:	; parameter input, offset 6
x12373:	mov al, [bp + 18]	; 3: -118 70 18
x12376:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$60:	; call function noellipse-noellipse digitToValue
x12379:	mov word [bp + 21], scanUnsignedLongInt$61	; 5: -57 70 21 105 48
x12384:	mov [bp + 23], bp	; 3: -119 110 23
x12387:	add bp, 21	; 3: -125 -59 21
x12390:	jmp digitToValue	; 3: -23 -86 0

scanUnsignedLongInt$61:	; post call

scanUnsignedLongInt$62:	; £temporary1412 = return_value

scanUnsignedLongInt$63:	; digit = £temporary1412
x12393:	mov [bp + 14], ebx	; 4: 102 -119 94 14

scanUnsignedLongInt$64:	; if digit >= base goto 74
x12397:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12401:	cmp [bp + 14], eax	; 4: 102 57 70 14
x12405:	jae scanUnsignedLongInt$74	; 2: 115 43

scanUnsignedLongInt$65:	; £temporary1414 = unsignedLongValue * base
x12407:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x12411:	xor edx, edx	; 3: 102 49 -46
x12414:	mul dword [bp + 6]	; 4: 102 -9 102 6

scanUnsignedLongInt$66:	; unsignedLongValue = £temporary1414 + digit
x12418:	add eax, [bp + 14]	; 4: 102 3 70 14
x12422:	mov [bp + 10], eax	; 4: 102 -119 70 10

scanUnsignedLongInt$67:	; found = 1
x12426:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$68:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$69:	; call function noellipse-noellipse scanChar
x12431:	mov word [bp + 21], scanUnsignedLongInt$70	; 5: -57 70 21 -99 48
x12436:	mov [bp + 23], bp	; 3: -119 110 23
x12439:	add bp, 21	; 3: -125 -59 21
x12442:	jmp scanChar	; 3: -23 106 -6

scanUnsignedLongInt$70:	; post call

scanUnsignedLongInt$71:	; £temporary1416 = return_value

scanUnsignedLongInt$72:	; input = £temporary1416
x12445:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$73:	; goto 51
x12448:	jmp scanUnsignedLongInt$51	; 2: -21 -113

scanUnsignedLongInt$74:	; if found == 0 goto 76
x12450:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x12454:	je scanUnsignedLongInt$76	; 2: 116 4

scanUnsignedLongInt$75:	; ++g_inCount
x12456:	inc word [g_inCount]	; 4: -1 6 -18 42

scanUnsignedLongInt$76:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$77:	; parameter input, offset 6
x12460:	mov al, [bp + 18]	; 3: -118 70 18
x12463:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$78:	; call function noellipse-noellipse unscanChar
x12466:	mov word [bp + 21], scanUnsignedLongInt$79	; 5: -57 70 21 -64 48
x12471:	mov [bp + 23], bp	; 3: -119 110 23
x12474:	add bp, 21	; 3: -125 -59 21
x12477:	jmp unscanChar	; 3: -23 109 -2

scanUnsignedLongInt$79:	; post call

scanUnsignedLongInt$80:	; return_value = unsignedLongValue
x12480:	mov ebx, [bp + 10]	; 4: 102 -117 94 10

scanUnsignedLongInt$81:	; return
x12484:	mov ax, [bp]	; 3: -117 70 0
x12487:	mov di, [bp + 4]	; 3: -117 126 4
x12490:	mov bp, [bp + 2]	; 3: -117 110 2
x12493:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$82:	; function end scanUnsignedLongInt

isxdigit:	; call header integral zero 0 stack zero 0

isxdigit$1:	; parameter c, offset 6
x12495:	mov ax, [bp + 6]	; 3: -117 70 6
x12498:	mov [bp + 14], ax	; 3: -119 70 14

isxdigit$2:	; call function noellipse-noellipse isdigit
x12501:	mov word [bp + 8], isxdigit$3	; 5: -57 70 8 -29 48
x12506:	mov [bp + 10], bp	; 3: -119 110 10
x12509:	add bp, 8	; 3: -125 -59 8
x12512:	jmp isdigit	; 3: -23 50 -13

isxdigit$3:	; post call

isxdigit$4:	; £temporary403 = return_value

isxdigit$5:	; if £temporary403 != 0 goto 10
x12515:	cmp bx, 0	; 3: -125 -5 0
x12518:	jne isxdigit$10	; 2: 117 24

isxdigit$6:	; if c < 97 goto 8
x12520:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12524:	jl isxdigit$8	; 2: 124 6

isxdigit$7:	; if c <= 102 goto 10
x12526:	cmp word [bp + 6], 102	; 4: -125 126 6 102
x12530:	jle isxdigit$10	; 2: 126 12

isxdigit$8:	; if c < 65 goto 12
x12532:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x12536:	jl isxdigit$12	; 2: 124 11

isxdigit$9:	; if c > 70 goto 12
x12538:	cmp word [bp + 6], 70	; 4: -125 126 6 70
x12542:	jg isxdigit$12	; 2: 127 5

isxdigit$10:	; £temporary413 = 1
x12544:	mov bx, 1	; 3: -69 1 0

isxdigit$11:	; goto 13
x12547:	jmp isxdigit$13	; 2: -21 3

isxdigit$12:	; £temporary413 = 0
x12549:	mov bx, 0	; 3: -69 0 0

isxdigit$13:	; return_value = £temporary413

isxdigit$14:	; return
x12552:	mov ax, [bp]	; 3: -117 70 0
x12555:	mov di, [bp + 4]	; 3: -117 126 4
x12558:	mov bp, [bp + 2]	; 3: -117 110 2
x12561:	jmp ax	; 2: -1 -32

isxdigit$15:	; function end isxdigit

digitToValue:	; call header integral zero 0 stack zero 0

digitToValue$1:	; £temporary1347 = int_to_int input (Signed_Char -> Signed_Int)
x12563:	mov al, [bp + 6]	; 3: -118 70 6
x12566:	and ax, 255	; 3: 37 -1 0
x12569:	cmp al, 0	; 2: 60 0
x12571:	jge digitToValue$2	; 2: 125 4
x12573:	neg al	; 2: -10 -40
x12575:	neg ax	; 2: -9 -40

digitToValue$2:	; parameter £temporary1347, offset 6
x12577:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$3:	; call function noellipse-noellipse isdigit
x12580:	mov word [bp + 7], digitToValue$4	; 5: -57 70 7 50 49
x12585:	mov [bp + 9], bp	; 3: -119 110 9
x12588:	add bp, 7	; 3: -125 -59 7
x12591:	jmp isdigit	; 3: -23 -29 -14

digitToValue$4:	; post call

digitToValue$5:	; £temporary1348 = return_value

digitToValue$6:	; if £temporary1348 == 0 goto 11
x12594:	cmp bx, 0	; 3: -125 -5 0
x12597:	je digitToValue$11	; 2: 116 24

digitToValue$7:	; £temporary1349 = input - 48
x12599:	mov bl, [bp + 6]	; 3: -118 94 6
x12602:	sub bl, 48	; 3: -128 -21 48

digitToValue$8:	; £temporary1350 = int_to_int £temporary1349 (Signed_Char -> Unsigned_Long_Int)
x12605:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$9:	; return_value = £temporary1350

digitToValue$10:	; return
x12612:	mov ax, [bp]	; 3: -117 70 0
x12615:	mov di, [bp + 4]	; 3: -117 126 4
x12618:	mov bp, [bp + 2]	; 3: -117 110 2
x12621:	jmp ax	; 2: -1 -32

digitToValue$11:	; call header integral zero 0 stack zero 0

digitToValue$12:	; £temporary1351 = int_to_int input (Signed_Char -> Signed_Int)
x12623:	mov al, [bp + 6]	; 3: -118 70 6
x12626:	and ax, 255	; 3: 37 -1 0
x12629:	cmp al, 0	; 2: 60 0
x12631:	jge digitToValue$13	; 2: 125 4
x12633:	neg al	; 2: -10 -40
x12635:	neg ax	; 2: -9 -40

digitToValue$13:	; parameter £temporary1351, offset 6
x12637:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$14:	; call function noellipse-noellipse islower
x12640:	mov word [bp + 7], digitToValue$15	; 5: -57 70 7 110 49
x12645:	mov [bp + 9], bp	; 3: -119 110 9
x12648:	add bp, 7	; 3: -125 -59 7
x12651:	nop	; 1: -112
x12652:	jmp islower	; 2: -21 61

digitToValue$15:	; post call

digitToValue$16:	; £temporary1352 = return_value

digitToValue$17:	; if £temporary1352 == 0 goto 23
x12654:	cmp bx, 0	; 3: -125 -5 0
x12657:	je digitToValue$23	; 2: 116 28

digitToValue$18:	; £temporary1353 = input - 97
x12659:	mov bl, [bp + 6]	; 3: -118 94 6
x12662:	sub bl, 97	; 3: -128 -21 97

digitToValue$19:	; £temporary1354 = int_to_int £temporary1353 (Signed_Char -> Unsigned_Long_Int)
x12665:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$20:	; £temporary1355 = £temporary1354 + 10
x12672:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$21:	; return_value = £temporary1355

digitToValue$22:	; return
x12676:	mov ax, [bp]	; 3: -117 70 0
x12679:	mov di, [bp + 4]	; 3: -117 126 4
x12682:	mov bp, [bp + 2]	; 3: -117 110 2
x12685:	jmp ax	; 2: -1 -32

digitToValue$23:	; £temporary1356 = input - 65
x12687:	mov bl, [bp + 6]	; 3: -118 94 6
x12690:	sub bl, 65	; 3: -128 -21 65

digitToValue$24:	; £temporary1357 = int_to_int £temporary1356 (Signed_Char -> Unsigned_Long_Int)
x12693:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$25:	; £temporary1358 = £temporary1357 + 10
x12700:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$26:	; return_value = £temporary1358

digitToValue$27:	; return
x12704:	mov ax, [bp]	; 3: -117 70 0
x12707:	mov di, [bp + 4]	; 3: -117 126 4
x12710:	mov bp, [bp + 2]	; 3: -117 110 2
x12713:	jmp ax	; 2: -1 -32

digitToValue$28:	; function end digitToValue

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x12715:	mov word [bp + 8], islower$2	; 5: -57 70 8 -71 49
x12720:	mov [bp + 10], bp	; 3: -119 110 10
x12723:	add bp, 8	; 3: -125 -59 8
x12726:	jmp localeconv	; 3: -23 115 -29

islower$2:	; post call

islower$3:	; £temporary351 = return_value

islower$4:	; localeConvPtr = £temporary351
x12729:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x12732:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12736:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary353 -> localeConvPtr = *localeConvPtr, offset 12
x12738:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary353 -> localeConvPtr, offset 6
x12741:	mov ax, [si + 12]	; 3: -117 68 12
x12744:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x12747:	mov ax, [bp + 6]	; 3: -117 70 6
x12750:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x12753:	mov word [bp + 10], islower$11	; 5: -57 70 10 -33 49
x12758:	mov [bp + 12], bp	; 3: -119 110 12
x12761:	add bp, 10	; 3: -125 -59 10
x12764:	jmp strchr	; 3: -23 -29 -24

islower$11:	; post call

islower$12:	; £temporary354 = return_value

islower$13:	; if £temporary354 == 0 goto 16
x12767:	cmp bx, 0	; 3: -125 -5 0
x12770:	je islower$16	; 2: 116 5

islower$14:	; £temporary356 = 1
x12772:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x12775:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary356 = 0
x12777:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary356

islower$18:	; return
x12780:	mov ax, [bp]	; 3: -117 70 0
x12783:	mov di, [bp + 4]	; 3: -117 126 4
x12786:	mov bp, [bp + 2]	; 3: -117 110 2
x12789:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x12791:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12795:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x12797:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x12801:	jg islower$23	; 2: 127 5

islower$21:	; £temporary360 = 1
x12803:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x12806:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary360 = 0
x12808:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary360

islower$25:	; return
x12811:	mov ax, [bp]	; 3: -117 70 0
x12814:	mov di, [bp + 4]	; 3: -117 126 4
x12817:	mov bp, [bp + 2]	; 3: -117 110 2
x12820:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

scanLongDouble:	; minus = 0
x12822:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x12827:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x12832:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x12834:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x12837:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x12839:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x12842:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 56 50
x12847:	mov [bp + 28], bp	; 3: -119 110 28
x12850:	add bp, 26	; 3: -125 -59 26
x12853:	jmp scanChar	; 3: -23 -49 -8

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1426 = return_value

scanLongDouble$10:	; input = £temporary1426
x12856:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1427 = int_to_int input (Signed_Char -> Signed_Int)
x12859:	mov al, [bp + 26]	; 3: -118 70 26
x12862:	and ax, 255	; 3: 37 -1 0
x12865:	cmp al, 0	; 2: 60 0
x12867:	jge scanLongDouble$13	; 2: 125 4
x12869:	neg al	; 2: -10 -40
x12871:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1427, offset 6
x12873:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x12876:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 90 50
x12881:	mov [bp + 29], bp	; 3: -119 110 29
x12884:	add bp, 27	; 3: -125 -59 27
x12887:	jmp isspace	; 3: -23 105 -5

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1428 = return_value

scanLongDouble$17:	; if £temporary1428 == 0 goto 24
x12890:	cmp bx, 0	; 3: -125 -5 0
x12893:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x12895:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 109 50
x12900:	mov [bp + 29], bp	; 3: -119 110 29
x12903:	add bp, 27	; 3: -125 -59 27
x12906:	jmp scanChar	; 3: -23 -102 -8

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1429 = return_value

scanLongDouble$22:	; input = £temporary1429
x12909:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x12912:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x12914:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x12918:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x12920:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 -122 50
x12925:	mov [bp + 29], bp	; 3: -119 110 29
x12928:	add bp, 27	; 3: -125 -59 27
x12931:	jmp scanChar	; 3: -23 -127 -8

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1432 = return_value

scanLongDouble$29:	; input = £temporary1432
x12934:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x12937:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x12939:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x12943:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x12945:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x12950:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 -92 50
x12955:	mov [bp + 29], bp	; 3: -119 110 29
x12958:	add bp, 27	; 3: -125 -59 27
x12961:	jmp scanChar	; 3: -23 99 -8

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1434 = return_value

scanLongDouble$37:	; input = £temporary1434
x12964:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1435 = int_to_int input (Signed_Char -> Signed_Int)
x12967:	mov al, [bp + 26]	; 3: -118 70 26
x12970:	and ax, 255	; 3: 37 -1 0
x12973:	cmp al, 0	; 2: 60 0
x12975:	jge scanLongDouble$40	; 2: 125 4
x12977:	neg al	; 2: -10 -40
x12979:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1435, offset 6
x12981:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x12984:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 -58 50
x12989:	mov [bp + 29], bp	; 3: -119 110 29
x12992:	add bp, 27	; 3: -125 -59 27
x12995:	jmp isdigit	; 3: -23 79 -15

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1436 = return_value

scanLongDouble$44:	; if £temporary1436 == 0 goto 60
x12998:	cmp bx, 0	; 3: -125 -5 0
x13001:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x13003:	fld qword [float8$10.0#]	; 4: -35 6 -10 29

scanLongDouble$46:	; push float value
x13007:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1437 = 10.0 * value
x13010:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1438 = input - 48
x13012:	mov al, [bp + 26]	; 3: -118 70 26
x13015:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1440 = int_to_int £temporary1438 (Signed_Char -> Signed_Int)
x13017:	and ax, 255	; 3: 37 -1 0
x13020:	cmp al, 0	; 2: 60 0
x13022:	jge scanLongDouble$50	; 2: 125 4
x13024:	neg al	; 2: -10 -40
x13026:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1439 = int_to_float £temporary1440 (Signed_Int -> Long_Double)
x13028:	mov [container2bytes#], ax	; 3: -93 8 18
x13031:	fild word [container2bytes#]	; 4: -33 6 8 18

scanLongDouble$51:	; £temporary1441 = £temporary1437 + £temporary1439
x13035:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x13037:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x13040:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 -2 50
x13045:	mov [bp + 29], bp	; 3: -119 110 29
x13048:	add bp, 27	; 3: -125 -59 27
x13051:	jmp scanChar	; 3: -23 9 -8

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1442 = return_value

scanLongDouble$57:	; input = £temporary1442
x13054:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x13057:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x13062:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x13064:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x13068:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x13070:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 28 51
x13075:	mov [bp + 29], bp	; 3: -119 110 29
x13078:	add bp, 27	; 3: -125 -59 27
x13081:	jmp scanChar	; 3: -23 -21 -9

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1445 = return_value

scanLongDouble$65:	; input = £temporary1445
x13084:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1446 = int_to_int input (Signed_Char -> Signed_Int)
x13087:	mov al, [bp + 26]	; 3: -118 70 26
x13090:	and ax, 255	; 3: 37 -1 0
x13093:	cmp al, 0	; 2: 60 0
x13095:	jge scanLongDouble$68	; 2: 125 4
x13097:	neg al	; 2: -10 -40
x13099:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1446, offset 6
x13101:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x13104:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 62 51
x13109:	mov [bp + 29], bp	; 3: -119 110 29
x13112:	add bp, 27	; 3: -125 -59 27
x13115:	jmp isdigit	; 3: -23 -41 -16

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1447 = return_value

scanLongDouble$72:	; if £temporary1447 == 0 goto 92
x13118:	cmp bx, 0	; 3: -125 -5 0
x13121:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x13123:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x13126:	fld qword [float8$10.0#]	; 4: -35 6 -10 29

scanLongDouble$75:	; £temporary1448 = factor / 10.0
x13130:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x13132:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x13135:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x13138:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1449 = input - 48
x13141:	mov al, [bp + 26]	; 3: -118 70 26
x13144:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1451 = int_to_int £temporary1449 (Signed_Char -> Signed_Int)
x13146:	and ax, 255	; 3: 37 -1 0
x13149:	cmp al, 0	; 2: 60 0
x13151:	jge scanLongDouble$81	; 2: 125 4
x13153:	neg al	; 2: -10 -40
x13155:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1450 = int_to_float £temporary1451 (Signed_Int -> Long_Double)
x13157:	mov [container2bytes#], ax	; 3: -93 8 18
x13160:	fild word [container2bytes#]	; 4: -33 6 8 18

scanLongDouble$82:	; £temporary1452 = factor * £temporary1450
x13164:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1453 = value + £temporary1452
x13166:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x13168:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x13171:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 -127 51
x13176:	mov [bp + 29], bp	; 3: -119 110 29
x13179:	add bp, 27	; 3: -125 -59 27
x13182:	jmp scanChar	; 3: -23 -122 -9

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1454 = return_value

scanLongDouble$89:	; input = £temporary1454
x13185:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x13188:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x13193:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; parameter input, offset 6
x13195:	mov al, [bp + 26]	; 3: -118 70 26
x13198:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$94:	; call function noellipse-noellipse unscanChar
x13201:	mov word [bp + 27], scanLongDouble$95	; 5: -57 70 27 -97 51
x13206:	mov [bp + 29], bp	; 3: -119 110 29
x13209:	add bp, 27	; 3: -125 -59 27
x13212:	jmp unscanChar	; 3: -23 -114 -5

scanLongDouble$95:	; post call

scanLongDouble$96:	; call header integral zero 0 stack zero 0

scanLongDouble$97:	; £temporary1457 = int_to_int input (Signed_Char -> Signed_Int)
x13215:	mov al, [bp + 26]	; 3: -118 70 26
x13218:	and ax, 255	; 3: 37 -1 0
x13221:	cmp al, 0	; 2: 60 0
x13223:	jge scanLongDouble$98	; 2: 125 4
x13225:	neg al	; 2: -10 -40
x13227:	neg ax	; 2: -9 -40

scanLongDouble$98:	; parameter £temporary1457, offset 6
x13229:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$99:	; call function noellipse-noellipse tolower
x13232:	mov word [bp + 27], scanLongDouble$100	; 5: -57 70 27 -66 51
x13237:	mov [bp + 29], bp	; 3: -119 110 29
x13240:	add bp, 27	; 3: -125 -59 27
x13243:	jmp tolower	; 3: -23 98 -22

scanLongDouble$100:	; post call

scanLongDouble$101:	; £temporary1458 = return_value

scanLongDouble$102:	; if £temporary1458 != 101 goto 121
x13246:	cmp bx, 101	; 3: -125 -5 101
x13249:	jne scanLongDouble$121	; 2: 117 75

scanLongDouble$103:	; call header integral zero 0 stack zero 0

scanLongDouble$104:	; call function noellipse-noellipse scanLongInt
x13251:	mov word [bp + 27], scanLongDouble$105	; 5: -57 70 27 -47 51
x13256:	mov [bp + 29], bp	; 3: -119 110 29
x13259:	add bp, 27	; 3: -125 -59 27
x13262:	jmp scanLongInt	; 3: -23 41 -6

scanLongDouble$105:	; post call

scanLongDouble$106:	; £temporary1460 = return_value

scanLongDouble$107:	; £temporary1461 = int_to_float £temporary1460 (Signed_Long_Int -> Double)
x13265:	mov [container4bytes#], ebx	; 5: 102 -119 30 85 29
x13270:	fild dword [container4bytes#]	; 4: -37 6 85 29

scanLongDouble$108:	; pop float exponent
x13274:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$109:	; push float value
x13277:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$110:	; call header integral zero 0 stack no zero 1
x13280:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$111:	; push float 10.0
x13283:	fld qword [float8$10.0#]	; 4: -35 6 -10 29

scanLongDouble$112:	; parameter 10.0, offset 6
x13287:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$113:	; push float exponent
x13290:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$114:	; parameter exponent, offset 14
x13293:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$115:	; call function noellipse-noellipse pow
x13296:	mov word [bp + 43], scanLongDouble$116	; 5: -57 70 43 -2 51
x13301:	mov [bp + 45], bp	; 3: -119 110 45
x13304:	add bp, 43	; 3: -125 -59 43
x13307:	jmp pow	; 3: -23 -128 -19

scanLongDouble$116:	; post call
x13310:	fstp qword [bp + 43]	; 3: -35 94 43
x13313:	fld qword [bp + 35]	; 3: -35 70 35
x13316:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$117:	; £temporary1462 = return_value

scanLongDouble$118:	; £temporary1463 = value * £temporary1462
x13319:	fmul	; 2: -34 -55

scanLongDouble$119:	; pop float value
x13321:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$120:	; goto 125
x13324:	jmp scanLongDouble$125	; 2: -21 20

scanLongDouble$121:	; call header integral zero 0 stack zero 0

scanLongDouble$122:	; parameter input, offset 6
x13326:	mov al, [bp + 26]	; 3: -118 70 26
x13329:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$123:	; call function noellipse-noellipse unscanChar
x13332:	mov word [bp + 27], scanLongDouble$124	; 5: -57 70 27 34 52
x13337:	mov [bp + 29], bp	; 3: -119 110 29
x13340:	add bp, 27	; 3: -125 -59 27
x13343:	jmp unscanChar	; 3: -23 11 -5

scanLongDouble$124:	; post call

scanLongDouble$125:	; if minus == 0 goto 129
x13346:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x13350:	je scanLongDouble$129	; 2: 116 8

scanLongDouble$126:	; push float value
x13352:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$127:	; £temporary1465 = -value
x13355:	fchs	; 2: -39 -32

scanLongDouble$128:	; pop float value
x13357:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$129:	; if found == 0 goto 131
x13360:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x13364:	je scanLongDouble$131	; 2: 116 4

scanLongDouble$130:	; ++g_inCount
x13366:	inc word [g_inCount]	; 4: -1 6 -18 42

scanLongDouble$131:	; push float value
x13370:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$132:	; return_value = value

scanLongDouble$133:	; return
x13373:	mov ax, [bp]	; 3: -117 70 0
x13376:	mov di, [bp + 4]	; 3: -117 126 4
x13379:	mov bp, [bp + 2]	; 3: -117 110 2
x13382:	jmp ax	; 2: -1 -32

scanLongDouble$134:	; function end scanLongDouble

scanPattern:	; index = 0
x13384:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x13389:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 91 52
x13394:	mov [bp + 16], bp	; 3: -119 110 16
x13397:	add bp, 14	; 3: -125 -59 14
x13400:	jmp scanChar	; 3: -23 -84 -10

scanPattern$3:	; post call

scanPattern$4:	; £temporary1218 = return_value

scanPattern$5:	; input = £temporary1218
x13403:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1219 = int_to_int input (Signed_Char -> Signed_Int)
x13406:	mov al, [bp + 14]	; 3: -118 70 14
x13409:	and ax, 255	; 3: 37 -1 0
x13412:	cmp al, 0	; 2: 60 0
x13414:	jge scanPattern$8	; 2: 125 4
x13416:	neg al	; 2: -10 -40
x13418:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1219, offset 6
x13420:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x13423:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 125 52
x13428:	mov [bp + 17], bp	; 3: -119 110 17
x13431:	add bp, 15	; 3: -125 -59 15
x13434:	jmp isspace	; 3: -23 70 -7

scanPattern$10:	; post call

scanPattern$11:	; £temporary1220 = return_value

scanPattern$12:	; if £temporary1220 == 0 goto 19
x13437:	cmp bx, 0	; 3: -125 -5 0
x13440:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x13442:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 -112 52
x13447:	mov [bp + 17], bp	; 3: -119 110 17
x13450:	add bp, 15	; 3: -125 -59 15
x13453:	jmp scanChar	; 3: -23 119 -10

scanPattern$15:	; post call

scanPattern$16:	; £temporary1221 = return_value

scanPattern$17:	; input = £temporary1221
x13456:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x13459:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x13461:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x13465:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x13469:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13473:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x13475:	mov ax, [bp + 8]	; 3: -117 70 8
x13478:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1226 = int_to_int input (Signed_Char -> Signed_Int)
x13481:	mov al, [bp + 14]	; 3: -118 70 14
x13484:	and ax, 255	; 3: 37 -1 0
x13487:	cmp al, 0	; 2: 60 0
x13489:	jge scanPattern$24	; 2: 125 4
x13491:	neg al	; 2: -10 -40
x13493:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1226, offset 8
x13495:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x13498:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 -56 52
x13503:	mov [bp + 17], bp	; 3: -119 110 17
x13506:	add bp, 15	; 3: -125 -59 15
x13509:	jmp strchr	; 3: -23 -6 -27

scanPattern$26:	; post call

scanPattern$27:	; £temporary1227 = return_value

scanPattern$28:	; if £temporary1227 != 0 goto 38
x13512:	cmp bx, 0	; 3: -125 -5 0
x13515:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x13517:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13521:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x13523:	mov ax, [bp + 8]	; 3: -117 70 8
x13526:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1230 = int_to_int input (Signed_Char -> Signed_Int)
x13529:	mov al, [bp + 14]	; 3: -118 70 14
x13532:	and ax, 255	; 3: 37 -1 0
x13535:	cmp al, 0	; 2: 60 0
x13537:	jge scanPattern$33	; 2: 125 4
x13539:	neg al	; 2: -10 -40
x13541:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1230, offset 8
x13543:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x13546:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 -8 52
x13551:	mov [bp + 17], bp	; 3: -119 110 17
x13554:	add bp, 15	; 3: -125 -59 15
x13557:	jmp strchr	; 3: -23 -54 -27

scanPattern$35:	; post call

scanPattern$36:	; £temporary1231 = return_value

scanPattern$37:	; if £temporary1231 != 0 goto 49
x13560:	cmp bx, 0	; 3: -125 -5 0
x13563:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1237 = index
x13565:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x13568:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1239 = string + £temporary1237
x13571:	mov si, [bp + 6]	; 3: -117 118 6
x13574:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1238 -> £temporary1239 = *£temporary1239

scanPattern$42:	; £temporary1238 -> £temporary1239 = input
x13576:	mov al, [bp + 14]	; 3: -118 70 14
x13579:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x13581:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 27 53
x13586:	mov [bp + 17], bp	; 3: -119 110 17
x13589:	add bp, 15	; 3: -125 -59 15
x13592:	jmp scanChar	; 3: -23 -20 -11

scanPattern$45:	; post call

scanPattern$46:	; £temporary1240 = return_value

scanPattern$47:	; input = £temporary1240
x13595:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x13598:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1242 = string + index
x13601:	mov si, [bp + 6]	; 3: -117 118 6
x13604:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1241 -> £temporary1242 = *£temporary1242

scanPattern$51:	; £temporary1241 -> £temporary1242 = 0
x13607:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x13610:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x13612:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13616:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x13618:	mov ax, [bp + 8]	; 3: -117 70 8
x13621:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1245 = int_to_int input (Signed_Char -> Signed_Int)
x13624:	mov al, [bp + 14]	; 3: -118 70 14
x13627:	and ax, 255	; 3: 37 -1 0
x13630:	cmp al, 0	; 2: 60 0
x13632:	jge scanPattern$57	; 2: 125 4
x13634:	neg al	; 2: -10 -40
x13636:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1245, offset 8
x13638:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x13641:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 87 53
x13646:	mov [bp + 17], bp	; 3: -119 110 17
x13649:	add bp, 15	; 3: -125 -59 15
x13652:	jmp strchr	; 3: -23 107 -27

scanPattern$59:	; post call

scanPattern$60:	; £temporary1246 = return_value

scanPattern$61:	; if £temporary1246 != 0 goto 71
x13655:	cmp bx, 0	; 3: -125 -5 0
x13658:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x13660:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13664:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x13666:	mov ax, [bp + 8]	; 3: -117 70 8
x13669:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1249 = int_to_int input (Signed_Char -> Signed_Int)
x13672:	mov al, [bp + 14]	; 3: -118 70 14
x13675:	and ax, 255	; 3: 37 -1 0
x13678:	cmp al, 0	; 2: 60 0
x13680:	jge scanPattern$66	; 2: 125 4
x13682:	neg al	; 2: -10 -40
x13684:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1249, offset 8
x13686:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x13689:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 -121 53
x13694:	mov [bp + 17], bp	; 3: -119 110 17
x13697:	add bp, 15	; 3: -125 -59 15
x13700:	jmp strchr	; 3: -23 59 -27

scanPattern$68:	; post call

scanPattern$69:	; £temporary1250 = return_value

scanPattern$70:	; if £temporary1250 != 0 goto 77
x13703:	cmp bx, 0	; 3: -125 -5 0
x13706:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x13708:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 -102 53
x13713:	mov [bp + 17], bp	; 3: -119 110 17
x13716:	add bp, 15	; 3: -125 -59 15
x13719:	jmp scanChar	; 3: -23 109 -11

scanPattern$73:	; post call

scanPattern$74:	; £temporary1256 = return_value

scanPattern$75:	; input = £temporary1256
x13722:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x13725:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x13727:	mov ax, [bp]	; 3: -117 70 0
x13730:	mov di, [bp + 4]	; 3: -117 126 4
x13733:	mov bp, [bp + 2]	; 3: -117 110 2
x13736:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

$Path:
x13738:	db "C:\D\Main.com", 0	; 14: 67 58 92 68 92 77 97 105 110 46 99 111 109 0

$StackTop:
x13752:
