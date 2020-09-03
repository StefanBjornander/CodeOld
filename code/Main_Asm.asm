	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -14 51
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 -14 51 0 0
	; Initialize Argument List
x283:	mov si, bp	; 2: -119 -18
x285:	mov word [bp], $Path	; 5: -57 70 0 -28 51
x290:	add bp, 2	; 3: -125 -59 2
x293:	mov ax, 1	; 3: -72 1 0
x296:	mov bx, 129	; 3: -69 -127 0

$Initialize$1:
x299:	cmp byte [bx], 32	; 3: -128 63 32
x302:	je $Initialize$2	; 2: 116 8
x304:	cmp byte [bx], 13	; 3: -128 63 13
x307:	je $Initialize$5	; 2: 116 26
x309:	inc bx	; 1: 67
x310:	jmp $Initialize$1	; 2: -21 -13

$Initialize$2:
x312:	cmp ax, 1	; 3: -125 -8 1
x315:	je $Initialize$3	; 2: 116 3
x317:	mov byte [bx], 0	; 3: -58 7 0

$Initialize$3:
x320:	inc bx	; 1: 67
x321:	cmp byte [bx], 32	; 3: -128 63 32
x324:	je $Initialize$3	; 2: 116 -6

$Initialize$4:
x326:	mov [bp], bx	; 3: -119 94 0
x329:	add bp, 2	; 3: -125 -59 2
x332:	inc ax	; 1: 64
x333:	jmp $Initialize$1	; 2: -21 -36

$Initialize$5:
x335:	mov byte [bx], 0	; 3: -58 7 0
x338:	mov word [bp], 0	; 5: -57 70 0 0 0
x343:	add bp, 2	; 3: -125 -59 2
x346:	mov [bp + 6], ax	; 3: -119 70 6
x349:	mov [bp + 8], si	; 3: -119 118 8

main:	; call header integral zero 0 stack zero 0

main$1:	; parameter string_argc3A2025i0A#, offset 6
x352:	mov word [bp + 16], string_argc3A2025i0A#	; 5: -57 70 16 0 3

main$2:	; parameter argc, offset 8
x357:	mov ax, [bp + 6]	; 3: -117 70 6
x360:	mov [bp + 18], ax	; 3: -119 70 18

main$3:	; call function noellipse-ellipse printf, extra 0
x363:	mov word [bp + 10], main$4	; 5: -57 70 10 126 1
x368:	mov [bp + 12], bp	; 3: -119 110 12
x371:	add bp, 10	; 3: -125 -59 10
x374:	mov di, bp	; 2: -119 -17
x376:	add di, 2	; 3: -125 -57 2
x379:	jmp printf	; 3: -23 65 2

main$4:	; post call

main$5:	; index = 0
x382:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$6:	; if index >= argc goto 18
x387:	mov ax, [bp + 6]	; 3: -117 70 6
x390:	cmp [bp + 10], ax	; 3: 57 70 10
x393:	jge main$18	; 2: 125 54

main$7:	; call header integral zero 0 stack zero 0

main$8:	; parameter string_25i3A203C25s3E0A#, offset 6
x395:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 10 3

main$9:	; parameter index, offset 8
x400:	mov ax, [bp + 10]	; 3: -117 70 10
x403:	mov [bp + 20], ax	; 3: -119 70 20

main$10:	; £temporary65 = index * 2
x406:	mov ax, [bp + 10]	; 3: -117 70 10
x409:	xor dx, dx	; 2: 49 -46
x411:	mul word [int2$2#]	; 4: -9 38 20 3

main$11:	; £temporary66 = argv + £temporary65
x415:	mov si, [bp + 8]	; 3: -117 118 8
x418:	add si, ax	; 2: 1 -58

main$12:	; £temporary64 -> £temporary66 = *£temporary66

main$13:	; parameter £temporary64 -> £temporary66, offset 10
x420:	mov ax, [si]	; 2: -117 4
x422:	mov [bp + 22], ax	; 3: -119 70 22

main$14:	; call function noellipse-ellipse printf, extra 0
x425:	mov word [bp + 12], main$15	; 5: -57 70 12 -68 1
x430:	mov [bp + 14], bp	; 3: -119 110 14
x433:	add bp, 12	; 3: -125 -59 12
x436:	mov di, bp	; 2: -119 -17
x438:	add di, 4	; 3: -125 -57 4
x441:	jmp printf	; 3: -23 3 2

main$15:	; post call

main$16:	; ++index
x444:	inc word [bp + 10]	; 3: -1 70 10

main$17:	; goto 6
x447:	jmp main$6	; 2: -21 -62

main$18:	; call header integral zero 0 stack zero 0

main$19:	; parameter string_0A#, offset 6
x449:	mov word [bp + 18], string_0A#	; 5: -57 70 18 22 3

main$20:	; call function noellipse-ellipse printf, extra 0
x454:	mov word [bp + 12], main$21	; 5: -57 70 12 -42 1
x459:	mov [bp + 14], bp	; 3: -119 110 14
x462:	add bp, 12	; 3: -125 -59 12
x465:	mov di, bp	; 2: -119 -17
x467:	jmp printf	; 3: -23 -23 1

main$21:	; post call

main$22:	; index = 0
x470:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$23:	; £temporary70 = index * 2
x475:	mov ax, [bp + 10]	; 3: -117 70 10
x478:	xor dx, dx	; 2: 49 -46
x480:	mul word [int2$2#]	; 4: -9 38 20 3

main$24:	; £temporary71 = argv + £temporary70
x484:	mov si, [bp + 8]	; 3: -117 118 8
x487:	add si, ax	; 2: 1 -58

main$25:	; £temporary69 -> £temporary71 = *£temporary71

main$26:	; if £temporary69 -> £temporary71 == 0 goto 38
x489:	cmp word [si], 0	; 3: -125 60 0
x492:	je main$38	; 2: 116 54

main$27:	; call header integral zero 0 stack zero 0

main$28:	; parameter string_25i3A203C25s3E0A#, offset 6
x494:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 10 3

main$29:	; parameter index, offset 8
x499:	mov ax, [bp + 10]	; 3: -117 70 10
x502:	mov [bp + 20], ax	; 3: -119 70 20

main$30:	; £temporary75 = index * 2
x505:	mov ax, [bp + 10]	; 3: -117 70 10
x508:	xor dx, dx	; 2: 49 -46
x510:	mul word [int2$2#]	; 4: -9 38 20 3

main$31:	; £temporary76 = argv + £temporary75
x514:	mov si, [bp + 8]	; 3: -117 118 8
x517:	add si, ax	; 2: 1 -58

main$32:	; £temporary74 -> £temporary76 = *£temporary76

main$33:	; parameter £temporary74 -> £temporary76, offset 10
x519:	mov ax, [si]	; 2: -117 4
x521:	mov [bp + 22], ax	; 3: -119 70 22

main$34:	; call function noellipse-ellipse printf, extra 0
x524:	mov word [bp + 12], main$35	; 5: -57 70 12 31 2
x529:	mov [bp + 14], bp	; 3: -119 110 14
x532:	add bp, 12	; 3: -125 -59 12
x535:	mov di, bp	; 2: -119 -17
x537:	add di, 4	; 3: -125 -57 4
x540:	jmp printf	; 3: -23 -96 1

main$35:	; post call

main$36:	; ++index
x543:	inc word [bp + 10]	; 3: -1 70 10

main$37:	; goto 23
x546:	jmp main$23	; 2: -21 -73

main$38:	; call header integral zero 0 stack zero 0

main$39:	; parameter string_0A#, offset 6
x548:	mov word [bp + 18], string_0A#	; 5: -57 70 18 22 3

main$40:	; call function noellipse-ellipse printf, extra 0
x553:	mov word [bp + 12], main$41	; 5: -57 70 12 57 2
x558:	mov [bp + 14], bp	; 3: -119 110 14
x561:	add bp, 12	; 3: -125 -59 12
x564:	mov di, bp	; 2: -119 -17
x566:	jmp printf	; 3: -23 -122 1

main$41:	; post call

main$42:	; call header integral zero 0 stack zero 0

main$43:	; parameter 0, offset 6
x569:	mov word [bp + 49], 0	; 5: -57 70 49 0 0

main$44:	; call function noellipse-noellipse mktime
x574:	mov word [bp + 43], main$45	; 5: -57 70 43 76 2
x579:	mov [bp + 45], bp	; 3: -119 110 45
x582:	add bp, 43	; 3: -125 -59 43
x585:	jmp mktime	; 3: -23 34 32

main$45:	; post call

main$46:	; call header integral zero 0 stack zero 0

main$47:	; parameter string_Hello210A#, offset 6
x588:	mov word [bp + 49], string_Hello210A#	; 5: -57 70 49 24 3

main$48:	; call function noellipse-ellipse printf, extra 0
x593:	mov word [bp + 43], main$49	; 5: -57 70 43 97 2
x598:	mov [bp + 45], bp	; 3: -119 110 45
x601:	add bp, 43	; 3: -125 -59 43
x604:	mov di, bp	; 2: -119 -17
x606:	jmp printf	; 3: -23 94 1

main$49:	; post call

main$50:	; call header integral zero 0 stack zero 0

main$51:	; parameter string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#, offset 6
x609:	mov word [bp + 49], string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#	; 5: -57 70 49 32 3

main$52:	; call function noellipse-ellipse printf, extra 0
x614:	mov word [bp + 43], main$53	; 5: -57 70 43 118 2
x619:	mov [bp + 45], bp	; 3: -119 110 45
x622:	add bp, 43	; 3: -125 -59 43
x625:	mov di, bp	; 2: -119 -17
x627:	jmp printf	; 3: -23 73 1

main$53:	; post call

main$54:	; call header integral zero 0 stack zero 0

main$55:	; parameter string_25c2025s2025i2025lf#, offset 6
x630:	mov word [bp + 49], string_25c2025s2025i2025lf#	; 5: -57 70 49 95 3

main$56:	; £temporary82 = &c
x635:	mov si, bp	; 2: -119 -18
x637:	add si, 22	; 3: -125 -58 22

main$57:	; parameter £temporary82, offset 8
x640:	mov [bp + 51], si	; 3: -119 118 51

main$58:	; parameter s, offset 10
x643:	mov [bp + 53], bp	; 3: -119 110 53
x646:	add word [bp + 53], 23	; 4: -125 70 53 23

main$59:	; £temporary83 = &i
x650:	mov si, bp	; 2: -119 -18
x652:	add si, 12	; 3: -125 -58 12

main$60:	; parameter £temporary83, offset 12
x655:	mov [bp + 55], si	; 3: -119 118 55

main$61:	; £temporary84 = &d
x658:	mov si, bp	; 2: -119 -18
x660:	add si, 14	; 3: -125 -58 14

main$62:	; parameter £temporary84, offset 14
x663:	mov [bp + 57], si	; 3: -119 118 57

main$63:	; call function noellipse-ellipse scanf, extra 0
x666:	mov word [bp + 43], main$64	; 5: -57 70 43 -83 2
x671:	mov [bp + 45], bp	; 3: -119 110 45
x674:	add bp, 43	; 3: -125 -59 43
x677:	mov di, bp	; 2: -119 -17
x679:	add di, 8	; 3: -125 -57 8
x682:	jmp scanf	; 3: -23 -62 32

main$64:	; post call

main$65:	; call header integral zero 0 stack zero 0

main$66:	; parameter string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#, offset 6
x685:	mov word [bp + 49], string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#	; 5: -57 70 49 108 3

main$67:	; £temporary86 = int_to_int c (Signed_Char -> Signed_Int)
x690:	mov al, [bp + 22]	; 3: -118 70 22
x693:	and ax, 255	; 3: 37 -1 0
x696:	cmp al, 0	; 2: 60 0
x698:	jge main$68	; 2: 125 4
x700:	neg al	; 2: -10 -40
x702:	neg ax	; 2: -9 -40

main$68:	; parameter £temporary86, offset 8
x704:	mov [bp + 51], ax	; 3: -119 70 51

main$69:	; parameter s, offset 10
x707:	mov [bp + 53], bp	; 3: -119 110 53
x710:	add word [bp + 53], 23	; 4: -125 70 53 23

main$70:	; parameter i, offset 12
x714:	mov ax, [bp + 12]	; 3: -117 70 12
x717:	mov [bp + 55], ax	; 3: -119 70 55

main$71:	; push float d
x720:	fld qword [bp + 14]	; 3: -35 70 14

main$72:	; parameter d, offset 14
x723:	fstp qword [bp + 57]	; 3: -35 94 57

main$73:	; call function noellipse-ellipse printf, extra 0
x726:	mov word [bp + 43], main$74	; 5: -57 70 43 -23 2
x731:	mov [bp + 45], bp	; 3: -119 110 45
x734:	add bp, 43	; 3: -125 -59 43
x737:	mov di, bp	; 2: -119 -17
x739:	add di, 14	; 3: -125 -57 14
x742:	jmp printf	; 3: -23 -42 0

main$74:	; post call

main$75:	; return
x745:	cmp word [bp], 0	; 4: -125 126 0 0
x749:	je return_label$0	; 2: 116 11
x751:	mov ax, [bp]	; 3: -117 70 0
x754:	mov di, [bp + 4]	; 3: -117 126 4
x757:	mov bp, [bp + 2]	; 3: -117 110 2
x760:	jmp ax	; 2: -1 -32

return_label$0:
x762:	mov al, 0	; 2: -80 0
x764:	mov ah, 76	; 2: -76 76
x766:	int 33	; 2: -51 33

main$76:	; function end main

string_argc3A2025i0A#:
x768:	db "argc: %i", 10, 0	; 10: 97 114 103 99 58 32 37 105 10 0

string_25i3A203C25s3E0A#:
x778:	db "%i: <%s>", 10, 0	; 10: 37 105 58 32 60 37 115 62 10 0

int2$2#:
x788:	dw 2	; 2: 2 0

string_0A#:
x790:	db 10, 0	; 2: 10 0

string_Hello210A#:
x792:	db "Hello!", 10, 0	; 8: 72 101 108 108 111 33 10 0

string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#:
x800:	db "Please write a character, a string, an integer, and a double: ", 0	; 63: 80 108 101 97 115 101 32 119 114 105 116 101 32 97 32 99 104 97 114 97 99 116 101 114 44 32 97 32 115 116 114 105 110 103 44 32 97 110 32 105 110 116 101 103 101 114 44 32 97 110 100 32 97 32 100 111 117 98 108 101 58 32 0

string_25c2025s2025i2025lf#:
x863:	db "%c %s %i %lf", 0	; 13: 37 99 32 37 115 32 37 105 32 37 108 102 0

string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#:
x876:	db "You wrote the character ", 39, "%c", 39, ", the string ", 34, "%s", 34, ", the integer %i, and the double %f.", 10, 0	; 83: 89 111 117 32 119 114 111 116 101 32 116 104 101 32 99 104 97 114 97 99 116 101 114 32 39 37 99 39 44 32 116 104 101 32 115 116 114 105 110 103 32 34 37 115 34 44 32 116 104 101 32 105 110 116 101 103 101 114 32 37 105 44 32 97 110 100 32 116 104 101 32 100 111 117 98 108 101 32 37 102 46 10 0

printf:	; £temporary2437 = &format
x959:	mov si, bp	; 2: -119 -18
x961:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2438 = int_to_int £temporary2437 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2438 + 2
x964:	add si, 2	; 3: -125 -58 2
x967:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x970:	mov ax, [bp + 6]	; 3: -117 70 6
x973:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x976:	mov ax, [di + 8]	; 3: -117 69 8
x979:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x982:	mov word [di + 10], printf$7	; 5: -57 69 10 -23 3
x987:	mov [di + 12], bp	; 3: -119 109 12
x990:	mov [di + 14], di	; 3: -119 125 14
x993:	add di, 10	; 3: -125 -57 10
x996:	mov bp, di	; 2: -119 -3
x998:	nop	; 1: -112
x999:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2440 = return_value

printf$9:	; return_value = £temporary2440

printf$10:	; return
x1001:	mov ax, [bp]	; 3: -117 70 0
x1004:	mov di, [bp + 4]	; 3: -117 126 4
x1007:	mov bp, [bp + 2]	; 3: -117 110 2
x1010:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x1012:	mov ax, [stdout]	; 3: -95 31 4
x1015:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x1018:	mov ax, [bp + 6]	; 3: -117 70 6
x1021:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x1024:	mov ax, [bp + 8]	; 3: -117 70 8
x1027:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x1030:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 20 4
x1035:	mov [bp + 12], bp	; 3: -119 110 12
x1038:	add bp, 10	; 3: -125 -59 10
x1041:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2444 = return_value

vprintf$7:	; return_value = £temporary2444

vprintf$8:	; return
x1044:	mov ax, [bp]	; 3: -117 70 0
x1047:	mov di, [bp + 4]	; 3: -117 126 4
x1050:	mov bp, [bp + 2]	; 3: -117 110 2
x1053:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x1055:	dw g_fileArray + 29	; 2: 62 4

g_fileArray:
x1057:	dw 1	; 2: 1 0
x1059:	dw 0	; 2: 0 0
x1061:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1086:	dw 1	; 2: 1 0
x1088:	dw 1	; 2: 1 0
x1090:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1115:	dw 1	; 2: 1 0
x1117:	dw 2	; 2: 2 0
x1119:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1144:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x1637:	mov word [g_outStatus], 0	; 6: -57 6 -106 6 0 0

vfprintf$1:	; £temporary2456 = int_to_int outStream (Pointer -> Pointer)
x1643:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2456
x1646:	mov [g_outDevice], ax	; 3: -93 -104 6

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x1649:	mov ax, [bp + 8]	; 3: -117 70 8
x1652:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x1655:	mov ax, [bp + 10]	; 3: -117 70 10
x1658:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x1661:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 -117 6
x1666:	mov [bp + 14], bp	; 3: -119 110 14
x1669:	add bp, 12	; 3: -125 -59 12
x1672:	nop	; 1: -112
x1673:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2457 = return_value

vfprintf$9:	; return_value = £temporary2457

vfprintf$10:	; return
x1675:	mov ax, [bp]	; 3: -117 70 0
x1678:	mov di, [bp + 4]	; 3: -117 126 4
x1681:	mov bp, [bp + 2]	; 3: -117 110 2
x1684:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x1686:	db 0, 0	; 2: 0 0

g_outDevice:
x1688:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x1690:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x1695:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x1700:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x1705:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x1710:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x1715:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x1720:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x1725:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x1730:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x1735:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x1740:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x1745:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x1750:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x1755:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x1760:	mov word [g_outChars], 0	; 6: -57 6 -22 11 0 0

printFormat$15:	; index = 0
x1766:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2291 = format + index
x1771:	mov si, [bp + 6]	; 3: -117 118 6
x1774:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2290 -> £temporary2291 = *£temporary2291

printFormat$18:	; if £temporary2290 -> £temporary2291 == 0 goto 282
x1777:	cmp byte [si], 0	; 3: -128 60 0
x1780:	je printFormat$282	; 4: 15 -124 -52 4

printFormat$19:	; £temporary2295 = format + index
x1784:	mov si, [bp + 6]	; 3: -117 118 6
x1787:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2294 -> £temporary2295 = *£temporary2295

printFormat$21:	; c = £temporary2294 -> £temporary2295
x1790:	mov al, [si]	; 2: -118 4
x1792:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 260
x1795:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x1799:	je printFormat$260	; 4: 15 -124 81 4

printFormat$23:	; case c == 43 goto 52
x1803:	mov al, [bp + 40]	; 3: -118 70 40
x1806:	cmp al, 43	; 2: 60 43
x1808:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x1812:	cmp al, 45	; 2: 60 45
x1814:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x1818:	cmp al, 32	; 2: 60 32
x1820:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x1824:	cmp al, 48	; 2: 60 48
x1826:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x1830:	cmp al, 35	; 2: 60 35
x1832:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x1836:	cmp al, 46	; 2: 60 46
x1838:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x1842:	cmp al, 42	; 2: 60 42
x1844:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x1848:	cmp al, 104	; 2: 60 104
x1850:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x1854:	cmp al, 108	; 2: 60 108
x1856:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x1860:	cmp al, 76	; 2: 60 76
x1862:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x1866:	cmp al, 37	; 2: 60 37
x1868:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x1872:	cmp al, 110	; 2: 60 110
x1874:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x1878:	cmp al, 112	; 2: 60 112
x1880:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x1884:	cmp al, 71	; 2: 60 71
x1886:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x1890:	cmp al, 103	; 2: 60 103
x1892:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x1896:	cmp al, 69	; 2: 60 69
x1898:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x1902:	cmp al, 101	; 2: 60 101
x1904:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x1908:	cmp al, 102	; 2: 60 102
x1910:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x1914:	cmp al, 115	; 2: 60 115
x1916:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x1920:	cmp al, 99	; 2: 60 99
x1922:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x1924:	cmp al, 88	; 2: 60 88
x1926:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x1928:	cmp al, 120	; 2: 60 120
x1930:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x1932:	cmp al, 111	; 2: 60 111
x1934:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x1936:	cmp al, 98	; 2: 60 98
x1938:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x1940:	cmp al, 117	; 2: 60 117
x1942:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x1944:	cmp al, 100	; 2: 60 100
x1946:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x1948:	cmp al, 105	; 2: 60 105
x1950:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 237
x1952:	jmp printFormat$237	; 3: -23 70 3

printFormat$52:	; plus = 1
x1955:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 280
x1960:	jmp printFormat$280	; 3: -23 19 4

printFormat$54:	; minus = 1
x1963:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 280
x1968:	jmp printFormat$280	; 3: -23 11 4

printFormat$56:	; space = 1
x1971:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 280
x1976:	jmp printFormat$280	; 3: -23 3 4

printFormat$58:	; zero = 1
x1979:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 280
x1984:	jmp printFormat$280	; 3: -23 -5 3

printFormat$60:	; grid = 1
x1987:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 280
x1992:	jmp printFormat$280	; 3: -23 -13 3

printFormat$62:	; period = 1
x1995:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 280
x2000:	jmp printFormat$280	; 3: -23 -21 3

printFormat$64:	; if period != 0 goto 67
x2003:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2007:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x2009:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 280
x2014:	jmp printFormat$280	; 3: -23 -35 3

printFormat$67:	; precision = -1
x2017:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 280
x2022:	jmp printFormat$280	; 3: -23 -43 3

printFormat$69:	; shortInt = 1
x2025:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 280
x2030:	jmp printFormat$280	; 3: -23 -51 3

printFormat$71:	; longInt = 1
x2033:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 280
x2038:	jmp printFormat$280	; 3: -23 -59 3

printFormat$73:	; longDouble = 1
x2041:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 280
x2046:	jmp printFormat$280	; 3: -23 -67 3

printFormat$75:	; if minus == 0 goto 106
x2049:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x2053:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x2057:	mov ax, [g_outChars]	; 3: -95 -22 11
x2060:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2299 = format + index
x2063:	mov si, [bp + 6]	; 3: -117 118 6
x2066:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2298 -> £temporary2299 = *£temporary2299

printFormat$80:	; £temporary2300 = &£temporary2298 -> £temporary2299

printFormat$81:	; parameter £temporary2300, offset 6
x2069:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x2072:	mov ax, [bp + 8]	; 3: -117 70 8
x2075:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x2078:	mov ax, [bp + 18]	; 3: -117 70 18
x2081:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x2084:	mov ax, [bp + 22]	; 3: -117 70 22
x2087:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x2090:	mov ax, [bp + 26]	; 3: -117 70 26
x2093:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2301 = &width
x2096:	mov si, bp	; 2: -119 -18
x2098:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2301, offset 16
x2101:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x2104:	mov ax, [bp + 14]	; 3: -117 70 14
x2107:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x2110:	mov ax, [bp + 34]	; 3: -117 70 34
x2113:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x2116:	mov ax, [bp + 36]	; 3: -117 70 36
x2119:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x2122:	mov ax, [bp + 38]	; 3: -117 70 38
x2125:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x2128:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x2133:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x2138:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 104 8
x2143:	mov [bp + 45], bp	; 3: -119 110 45
x2146:	add bp, 43	; 3: -125 -59 43
x2149:	jmp printArgument	; 3: -23 -122 3

printFormat$95:	; post call

printFormat$96:	; £temporary2302 = return_value

printFormat$97:	; arg_list = £temporary2302
x2152:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2304 = g_outChars - startChars
x2155:	mov ax, [g_outChars]	; 3: -95 -22 11
x2158:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x2161:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2304 >= width goto 235
x2164:	cmp ax, [bp + 12]	; 3: 59 70 12
x2167:	jge printFormat$235	; 4: 15 -115 102 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x2171:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x2175:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 -115 8
x2180:	mov [bp + 47], bp	; 3: -119 110 47
x2183:	add bp, 45	; 3: -125 -59 45
x2186:	jmp printChar	; 3: -23 116 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x2189:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 182
x2191:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x2195:	je printFormat$182	; 4: 15 -124 82 1

printFormat$107:	; startChars = g_outChars
x2199:	mov ax, [g_outChars]	; 3: -95 -22 11
x2202:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x2205:	mov ax, [g_outStatus]	; 3: -95 -106 6
x2208:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x2211:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x2216:	mov word [g_outStatus], 2	; 6: -57 6 -106 6 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2308 = format + index
x2222:	mov si, [bp + 6]	; 3: -117 118 6
x2225:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2307 -> £temporary2308 = *£temporary2308

printFormat$114:	; £temporary2309 = &£temporary2307 -> £temporary2308

printFormat$115:	; parameter £temporary2309, offset 6
x2228:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x2231:	mov ax, [bp + 8]	; 3: -117 70 8
x2234:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x2237:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x2242:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x2247:	mov ax, [bp + 26]	; 3: -117 70 26
x2250:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2310 = &width
x2253:	mov si, bp	; 2: -119 -18
x2255:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2310, offset 16
x2258:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x2261:	mov ax, [bp + 14]	; 3: -117 70 14
x2264:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x2267:	mov ax, [bp + 34]	; 3: -117 70 34
x2270:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x2273:	mov ax, [bp + 36]	; 3: -117 70 36
x2276:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x2279:	mov ax, [bp + 38]	; 3: -117 70 38
x2282:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x2285:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2311 = &negative
x2290:	mov si, bp	; 2: -119 -18
x2292:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2311, offset 28
x2295:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x2298:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 8 9
x2303:	mov [bp + 49], bp	; 3: -119 110 49
x2306:	add bp, 47	; 3: -125 -59 47
x2309:	jmp printArgument	; 3: -23 -26 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x2312:	mov ax, [bp + 43]	; 3: -117 70 43
x2315:	mov [g_outStatus], ax	; 3: -93 -106 6

printFormat$132:	; field = g_outChars - startChars
x2318:	mov ax, [g_outChars]	; 3: -95 -22 11
x2321:	sub ax, [bp + 41]	; 3: 43 70 41
x2324:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x2327:	mov ax, [bp + 41]	; 3: -117 70 41
x2330:	mov [g_outChars], ax	; 3: -93 -22 11

printFormat$134:	; if negative == 0 goto 141
x2333:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x2337:	je printFormat$141	; 2: 116 23

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 45, offset 6
x2339:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$137:	; call function noellipse-noellipse printChar
x2343:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 53 9
x2348:	mov [bp + 51], bp	; 3: -119 110 51
x2351:	add bp, 49	; 3: -125 -59 49
x2354:	jmp printChar	; 3: -23 -52 9

printFormat$138:	; post call

printFormat$139:	; ++field
x2357:	inc word [bp + 47]	; 3: -1 70 47

printFormat$140:	; goto 154
x2360:	jmp printFormat$154	; 2: -21 57

printFormat$141:	; if plus == 0 goto 148
x2362:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x2366:	je printFormat$148	; 2: 116 23

printFormat$142:	; call header integral zero 0 stack zero 0

printFormat$143:	; parameter 43, offset 6
x2368:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$144:	; call function noellipse-noellipse printChar
x2372:	mov word [bp + 49], printFormat$145	; 5: -57 70 49 82 9
x2377:	mov [bp + 51], bp	; 3: -119 110 51
x2380:	add bp, 49	; 3: -125 -59 49
x2383:	jmp printChar	; 3: -23 -81 9

printFormat$145:	; post call

printFormat$146:	; ++field
x2386:	inc word [bp + 47]	; 3: -1 70 47

printFormat$147:	; goto 154
x2389:	jmp printFormat$154	; 2: -21 28

printFormat$148:	; if space == 0 goto 154
x2391:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x2395:	je printFormat$154	; 2: 116 22

printFormat$149:	; call header integral zero 0 stack zero 0

printFormat$150:	; parameter 32, offset 6
x2397:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$151:	; call function noellipse-noellipse printChar
x2401:	mov word [bp + 49], printFormat$152	; 5: -57 70 49 111 9
x2406:	mov [bp + 51], bp	; 3: -119 110 51
x2409:	add bp, 49	; 3: -125 -59 49
x2412:	jmp printChar	; 3: -23 -110 9

printFormat$152:	; post call

printFormat$153:	; £temporary2323 = field + 1
x2415:	mov ax, [bp + 47]	; 3: -117 70 47
x2418:	inc ax	; 1: 64

printFormat$154:	; ++field
x2419:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; if £temporary2323 >= width goto 161
x2422:	cmp ax, [bp + 12]	; 3: 59 70 12
x2425:	jge printFormat$161	; 2: 125 20

printFormat$156:	; call header integral zero 0 stack zero 0

printFormat$157:	; parameter 48, offset 6
x2427:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$158:	; call function noellipse-noellipse printChar
x2431:	mov word [bp + 49], printFormat$159	; 5: -57 70 49 -115 9
x2436:	mov [bp + 51], bp	; 3: -119 110 51
x2439:	add bp, 49	; 3: -125 -59 49
x2442:	jmp printChar	; 3: -23 116 9

printFormat$159:	; post call

printFormat$160:	; goto 154
x2445:	jmp printFormat$154	; 2: -21 -28

printFormat$161:	; call header integral zero 0 stack zero 0

printFormat$162:	; £temporary2327 = format + index
x2447:	mov si, [bp + 6]	; 3: -117 118 6
x2450:	add si, [bp + 10]	; 3: 3 118 10

printFormat$163:	; £temporary2326 -> £temporary2327 = *£temporary2327

printFormat$164:	; £temporary2328 = &£temporary2326 -> £temporary2327

printFormat$165:	; parameter £temporary2328, offset 6
x2453:	mov [bp + 55], si	; 3: -119 118 55

printFormat$166:	; parameter arg_list, offset 8
x2456:	mov ax, [bp + 8]	; 3: -117 70 8
x2459:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$167:	; parameter 0, offset 10
x2462:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$168:	; parameter 0, offset 12
x2467:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$169:	; parameter grid, offset 14
x2472:	mov ax, [bp + 26]	; 3: -117 70 26
x2475:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$170:	; parameter 0, offset 16
x2478:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$171:	; parameter precision, offset 18
x2483:	mov ax, [bp + 14]	; 3: -117 70 14
x2486:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$172:	; parameter shortInt, offset 20
x2489:	mov ax, [bp + 34]	; 3: -117 70 34
x2492:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$173:	; parameter longInt, offset 22
x2495:	mov ax, [bp + 36]	; 3: -117 70 36
x2498:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$174:	; parameter longDouble, offset 24
x2501:	mov ax, [bp + 38]	; 3: -117 70 38
x2504:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$175:	; parameter 0, offset 26
x2507:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$176:	; parameter 0, offset 28
x2512:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$177:	; call function noellipse-noellipse printArgument
x2517:	mov word [bp + 49], printFormat$178	; 5: -57 70 49 -29 9
x2522:	mov [bp + 51], bp	; 3: -119 110 51
x2525:	add bp, 49	; 3: -125 -59 49
x2528:	jmp printArgument	; 3: -23 11 2

printFormat$178:	; post call

printFormat$179:	; £temporary2329 = return_value

printFormat$180:	; arg_list = £temporary2329
x2531:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$181:	; goto 235
x2534:	jmp printFormat$235	; 3: -23 -8 0

printFormat$182:	; startChars = g_outChars
x2537:	mov ax, [g_outChars]	; 3: -95 -22 11
x2540:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$183:	; oldOutStatus = g_outStatus
x2543:	mov ax, [g_outStatus]	; 3: -95 -106 6
x2546:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$184:	; g_outStatus = 2
x2549:	mov word [g_outStatus], 2	; 6: -57 6 -106 6 2 0

printFormat$185:	; call header integral zero 0 stack zero 0

printFormat$186:	; £temporary2331 = format + index
x2555:	mov si, [bp + 6]	; 3: -117 118 6
x2558:	add si, [bp + 10]	; 3: 3 118 10

printFormat$187:	; £temporary2330 -> £temporary2331 = *£temporary2331

printFormat$188:	; £temporary2332 = &£temporary2330 -> £temporary2331

printFormat$189:	; parameter £temporary2332, offset 6
x2561:	mov [bp + 51], si	; 3: -119 118 51

printFormat$190:	; parameter arg_list, offset 8
x2564:	mov ax, [bp + 8]	; 3: -117 70 8
x2567:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$191:	; parameter plus, offset 10
x2570:	mov ax, [bp + 18]	; 3: -117 70 18
x2573:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$192:	; parameter space, offset 12
x2576:	mov ax, [bp + 22]	; 3: -117 70 22
x2579:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$193:	; parameter grid, offset 14
x2582:	mov ax, [bp + 26]	; 3: -117 70 26
x2585:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$194:	; £temporary2333 = &width
x2588:	mov si, bp	; 2: -119 -18
x2590:	add si, 12	; 3: -125 -58 12

printFormat$195:	; parameter £temporary2333, offset 16
x2593:	mov [bp + 61], si	; 3: -119 118 61

printFormat$196:	; parameter precision, offset 18
x2596:	mov ax, [bp + 14]	; 3: -117 70 14
x2599:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$197:	; parameter shortInt, offset 20
x2602:	mov ax, [bp + 34]	; 3: -117 70 34
x2605:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$198:	; parameter longInt, offset 22
x2608:	mov ax, [bp + 36]	; 3: -117 70 36
x2611:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$199:	; parameter longDouble, offset 24
x2614:	mov ax, [bp + 38]	; 3: -117 70 38
x2617:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$200:	; parameter 1, offset 26
x2620:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$201:	; parameter 0, offset 28
x2625:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$202:	; call function noellipse-noellipse printArgument
x2630:	mov word [bp + 45], printFormat$203	; 5: -57 70 45 84 10
x2635:	mov [bp + 47], bp	; 3: -119 110 47
x2638:	add bp, 45	; 3: -125 -59 45
x2641:	jmp printArgument	; 3: -23 -102 1

printFormat$203:	; post call

printFormat$204:	; g_outStatus = oldOutStatus
x2644:	mov ax, [bp + 43]	; 3: -117 70 43
x2647:	mov [g_outStatus], ax	; 3: -93 -106 6

printFormat$205:	; field = g_outChars - startChars
x2650:	mov ax, [g_outChars]	; 3: -95 -22 11
x2653:	sub ax, [bp + 41]	; 3: 43 70 41
x2656:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$206:	; g_outChars = startChars
x2659:	mov ax, [bp + 41]	; 3: -117 70 41
x2662:	mov [g_outChars], ax	; 3: -93 -22 11

printFormat$207:	; £temporary2336 = field
x2665:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$208:	; ++field
x2668:	inc word [bp + 45]	; 3: -1 70 45

printFormat$209:	; if £temporary2336 >= width goto 215
x2671:	cmp ax, [bp + 12]	; 3: 59 70 12
x2674:	jge printFormat$215	; 2: 125 20

printFormat$210:	; call header integral zero 0 stack zero 0

printFormat$211:	; parameter 32, offset 6
x2676:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$212:	; call function noellipse-noellipse printChar
x2680:	mov word [bp + 47], printFormat$213	; 5: -57 70 47 -122 10
x2685:	mov [bp + 49], bp	; 3: -119 110 49
x2688:	add bp, 47	; 3: -125 -59 47
x2691:	jmp printChar	; 3: -23 123 8

printFormat$213:	; post call

printFormat$214:	; goto 207
x2694:	jmp printFormat$207	; 2: -21 -31

printFormat$215:	; call header integral zero 0 stack zero 0

printFormat$216:	; £temporary2340 = format + index
x2696:	mov si, [bp + 6]	; 3: -117 118 6
x2699:	add si, [bp + 10]	; 3: 3 118 10

printFormat$217:	; £temporary2339 -> £temporary2340 = *£temporary2340

printFormat$218:	; £temporary2341 = &£temporary2339 -> £temporary2340

printFormat$219:	; parameter £temporary2341, offset 6
x2702:	mov [bp + 53], si	; 3: -119 118 53

printFormat$220:	; parameter arg_list, offset 8
x2705:	mov ax, [bp + 8]	; 3: -117 70 8
x2708:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$221:	; parameter plus, offset 10
x2711:	mov ax, [bp + 18]	; 3: -117 70 18
x2714:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$222:	; parameter space, offset 12
x2717:	mov ax, [bp + 22]	; 3: -117 70 22
x2720:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$223:	; parameter grid, offset 14
x2723:	mov ax, [bp + 26]	; 3: -117 70 26
x2726:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$224:	; parameter 0, offset 16
x2729:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$225:	; parameter precision, offset 18
x2734:	mov ax, [bp + 14]	; 3: -117 70 14
x2737:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$226:	; parameter shortInt, offset 20
x2740:	mov ax, [bp + 34]	; 3: -117 70 34
x2743:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$227:	; parameter longInt, offset 22
x2746:	mov ax, [bp + 36]	; 3: -117 70 36
x2749:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$228:	; parameter longDouble, offset 24
x2752:	mov ax, [bp + 38]	; 3: -117 70 38
x2755:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$229:	; parameter 1, offset 26
x2758:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$230:	; parameter 0, offset 28
x2763:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$231:	; call function noellipse-noellipse printArgument
x2768:	mov word [bp + 47], printFormat$232	; 5: -57 70 47 -34 10
x2773:	mov [bp + 49], bp	; 3: -119 110 49
x2776:	add bp, 47	; 3: -125 -59 47
x2779:	jmp printArgument	; 3: -23 16 1

printFormat$232:	; post call

printFormat$233:	; £temporary2342 = return_value

printFormat$234:	; arg_list = £temporary2342
x2782:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$235:	; percent = 0
x2785:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$236:	; goto 280
x2790:	jmp printFormat$280	; 3: -23 -43 0

printFormat$237:	; value = 0
x2793:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$238:	; call header integral zero 0 stack zero 0

printFormat$239:	; £temporary2345 = int_to_int c (Signed_Char -> Signed_Int)
x2798:	mov al, [bp + 40]	; 3: -118 70 40
x2801:	and ax, 255	; 3: 37 -1 0
x2804:	cmp al, 0	; 2: 60 0
x2806:	jge printFormat$240	; 2: 125 4
x2808:	neg al	; 2: -10 -40
x2810:	neg ax	; 2: -9 -40

printFormat$240:	; parameter £temporary2345, offset 6
x2812:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$241:	; call function noellipse-noellipse isdigit
x2815:	mov word [bp + 43], printFormat$242	; 5: -57 70 43 13 11
x2820:	mov [bp + 45], bp	; 3: -119 110 45
x2823:	add bp, 43	; 3: -125 -59 43
x2826:	jmp isdigit	; 3: -23 66 23

printFormat$242:	; post call

printFormat$243:	; £temporary2346 = return_value

printFormat$244:	; if £temporary2346 == 0 goto 254
x2829:	cmp bx, 0	; 3: -125 -5 0
x2832:	je printFormat$254	; 2: 116 49

printFormat$245:	; £temporary2347 = value * 10
x2834:	mov ax, [bp + 41]	; 3: -117 70 41
x2837:	xor dx, dx	; 2: 49 -46
x2839:	imul word [int2$10#]	; 4: -9 46 -20 11

printFormat$246:	; £temporary2348 = c - 48
x2843:	mov bl, [bp + 40]	; 3: -118 94 40
x2846:	sub bl, 48	; 3: -128 -21 48

printFormat$247:	; £temporary2349 = int_to_int £temporary2348 (Signed_Char -> Signed_Int)
x2849:	and bx, 255	; 4: -127 -29 -1 0
x2853:	cmp bl, 0	; 3: -128 -5 0
x2856:	jge printFormat$248	; 2: 125 4
x2858:	neg bl	; 2: -10 -37
x2860:	neg bx	; 2: -9 -37

printFormat$248:	; value = £temporary2347 + £temporary2349
x2862:	add ax, bx	; 2: 1 -40
x2864:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$249:	; £temporary2351 = index + 1
x2867:	mov ax, [bp + 10]	; 3: -117 70 10
x2870:	inc ax	; 1: 64

printFormat$250:	; £temporary2353 = format + £temporary2351
x2871:	mov si, [bp + 6]	; 3: -117 118 6
x2874:	add si, ax	; 2: 1 -58

printFormat$251:	; £temporary2352 -> £temporary2353 = *£temporary2353

printFormat$252:	; c = £temporary2352 -> £temporary2353
x2876:	mov al, [si]	; 2: -118 4
x2878:	mov [bp + 40], al	; 3: -120 70 40

printFormat$253:	; goto 238
x2881:	jmp printFormat$238	; 2: -21 -85

printFormat$254:	; --index
x2883:	dec word [bp + 10]	; 3: -1 78 10

printFormat$255:	; if period != 0 goto 258
x2886:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2890:	jne printFormat$258	; 2: 117 8

printFormat$256:	; width = value
x2892:	mov ax, [bp + 41]	; 3: -117 70 41
x2895:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$257:	; goto 280
x2898:	jmp printFormat$280	; 2: -21 106

printFormat$258:	; precision = value
x2900:	mov ax, [bp + 41]	; 3: -117 70 41
x2903:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$259:	; goto 280
x2906:	jmp printFormat$280	; 2: -21 98

printFormat$260:	; if c != 37 goto 276
x2908:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x2912:	jne printFormat$276	; 2: 117 72

printFormat$261:	; percent = 1
x2914:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$262:	; plus = 0
x2919:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$263:	; minus = 0
x2924:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$264:	; space = 0
x2929:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$265:	; zero = 0
x2934:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$266:	; grid = 0
x2939:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$267:	; widthStar = 0
x2944:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$268:	; period = 0
x2949:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$269:	; precisionStar = 0
x2954:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$270:	; shortInt = 0
x2959:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$271:	; longInt = 0
x2964:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$272:	; longDouble = 0
x2969:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$273:	; width = 0
x2974:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$274:	; precision = 0
x2979:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$275:	; goto 280
x2984:	jmp printFormat$280	; 2: -21 20

printFormat$276:	; call header integral zero 0 stack zero 0

printFormat$277:	; parameter c, offset 6
x2986:	mov al, [bp + 40]	; 3: -118 70 40
x2989:	mov [bp + 47], al	; 3: -120 70 47

printFormat$278:	; call function noellipse-noellipse printChar
x2992:	mov word [bp + 41], printFormat$279	; 5: -57 70 41 -66 11
x2997:	mov [bp + 43], bp	; 3: -119 110 43
x3000:	add bp, 41	; 3: -125 -59 41
x3003:	jmp printChar	; 3: -23 67 7

printFormat$279:	; post call

printFormat$280:	; ++index
x3006:	inc word [bp + 10]	; 3: -1 70 10

printFormat$281:	; goto 16
x3009:	jmp printFormat$16	; 3: -23 39 -5

printFormat$282:	; if g_outStatus != 1 goto 288
x3012:	cmp word [g_outStatus], 1	; 5: -125 62 -106 6 1
x3017:	jne printFormat$288	; 2: 117 16

printFormat$283:	; £temporary2362 = int_to_int g_outDevice (Pointer -> Pointer)
x3019:	mov ax, [g_outDevice]	; 3: -95 -104 6

printFormat$284:	; outString = £temporary2362
x3022:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$285:	; £temporary2364 = outString + g_outChars
x3025:	mov si, [bp + 40]	; 3: -117 118 40
x3028:	add si, [g_outChars]	; 4: 3 54 -22 11

printFormat$286:	; £temporary2363 -> £temporary2364 = *£temporary2364

printFormat$287:	; £temporary2363 -> £temporary2364 = 0
x3032:	mov byte [si], 0	; 3: -58 4 0

printFormat$288:	; return_value = g_outChars
x3035:	mov bx, [g_outChars]	; 4: -117 30 -22 11

printFormat$289:	; return
x3039:	mov ax, [bp]	; 3: -117 70 0
x3042:	mov di, [bp + 4]	; 3: -117 126 4
x3045:	mov bp, [bp + 2]	; 3: -117 110 2
x3048:	jmp ax	; 2: -1 -32

printFormat$290:	; function end printFormat

g_outChars:
x3050:	db 0, 0	; 2: 0 0

int2$10#:
x3052:	dw 10	; 2: 10 0

printArgument:	; £temporary2064 -> format = *format
x3054:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2064 -> format
x3057:	mov al, [si]	; 2: -118 4
x3059:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x3062:	mov al, [bp + 30]	; 3: -118 70 30
x3065:	cmp al, 100	; 2: 60 100
x3067:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x3069:	cmp al, 105	; 2: 60 105
x3071:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x3073:	cmp al, 99	; 2: 60 99
x3075:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x3079:	cmp al, 115	; 2: 60 115
x3081:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x3085:	cmp al, 88	; 2: 60 88
x3087:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x3091:	cmp al, 120	; 2: 60 120
x3093:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x3097:	cmp al, 98	; 2: 60 98
x3099:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x3103:	cmp al, 111	; 2: 60 111
x3105:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x3109:	cmp al, 117	; 2: 60 117
x3111:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x3115:	cmp al, 71	; 2: 60 71
x3117:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x3121:	cmp al, 103	; 2: 60 103
x3123:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x3127:	cmp al, 69	; 2: 60 69
x3129:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x3133:	cmp al, 101	; 2: 60 101
x3135:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x3139:	cmp al, 102	; 2: 60 102
x3141:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x3145:	cmp al, 112	; 2: 60 112
x3147:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x3151:	cmp al, 110	; 2: 60 110
x3153:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x3157:	cmp al, 37	; 2: 60 37
x3159:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x3163:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x3166:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3170:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x3172:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2066 = arg_list - 2
x3176:	mov si, [bp + 8]	; 3: -117 118 8
x3179:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2067 = int_to_int £temporary2066 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2068 -> £temporary2067 = *£temporary2067

printArgument$26:	; £temporary2069 = int_to_int £temporary2068 -> £temporary2067 (Signed_Int -> Signed_Short_Int)
x3182:	mov ax, [si]	; 2: -117 4
x3184:	cmp ax, 0	; 3: -125 -8 0
x3187:	jge printArgument$27	; 2: 125 4
x3189:	neg ax	; 2: -9 -40
x3191:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2070 = int_to_int £temporary2069 (Signed_Short_Int -> Signed_Long_Int)
x3193:	and eax, 255	; 6: 102 37 -1 0 0 0
x3199:	cmp al, 0	; 2: 60 0
x3201:	jge printArgument$28	; 2: 125 5
x3203:	neg al	; 2: -10 -40
x3205:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2070
x3208:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x3212:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x3214:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3218:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x3220:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2072 = arg_list - 4
x3224:	mov si, [bp + 8]	; 3: -117 118 8
x3227:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2073 = int_to_int £temporary2072 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2074 -> £temporary2073 = *£temporary2073

printArgument$35:	; longValue = £temporary2074 -> £temporary2073
x3230:	mov eax, [si]	; 3: 102 -117 4
x3233:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x3237:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x3239:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2076 = arg_list - 2
x3243:	mov si, [bp + 8]	; 3: -117 118 8
x3246:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2077 = int_to_int £temporary2076 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2078 -> £temporary2077 = *£temporary2077

printArgument$41:	; £temporary2079 = int_to_int £temporary2078 -> £temporary2077 (Signed_Int -> Signed_Long_Int)
x3249:	mov ax, [si]	; 2: -117 4
x3251:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3257:	cmp ax, 0	; 3: -125 -8 0
x3260:	jge printArgument$42	; 2: 125 5
x3262:	neg ax	; 2: -9 -40
x3264:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2079
x3267:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x3271:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3275:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2083 -> negativePtr = *negativePtr
x3277:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x3280:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x3285:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2085 = 1
x3287:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x3290:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2085 = 0
x3292:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2083 -> negativePtr = £temporary2085
x3295:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x3297:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3301:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x3303:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3307:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x3311:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -3 12
x3316:	mov [bp + 50], bp	; 3: -119 110 50
x3319:	add bp, 48	; 3: -125 -59 48
x3322:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2088 = return_value

printArgument$56:	; longValue = £temporary2088
x3325:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x3329:	mov ax, [bp + 8]	; 3: -117 70 8
x3332:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x3335:	mov ax, [bp + 16]	; 3: -117 70 16
x3338:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2089 = &precision
x3341:	mov si, bp	; 2: -119 -18
x3343:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2089, offset 10
x3346:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x3349:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 35 13
x3354:	mov [bp + 50], bp	; 3: -119 110 50
x3357:	add bp, 48	; 3: -125 -59 48
x3360:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2090 = return_value

printArgument$65:	; arg_list = £temporary2090
x3363:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x3366:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3370:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x3374:	mov ax, [bp + 10]	; 3: -117 70 10
x3377:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x3380:	mov ax, [bp + 12]	; 3: -117 70 12
x3383:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x3386:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 72 13
x3391:	mov [bp + 50], bp	; 3: -119 110 50
x3394:	add bp, 48	; 3: -125 -59 48
x3397:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x3400:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x3403:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2093 = arg_list - 2
x3407:	mov si, [bp + 8]	; 3: -117 118 8
x3410:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2094 = int_to_int £temporary2093 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2095 -> £temporary2094 = *£temporary2094

printArgument$77:	; £temporary2096 = int_to_int £temporary2095 -> £temporary2094 (Signed_Int -> Signed_Char)
x3413:	mov ax, [si]	; 2: -117 4
x3415:	cmp ax, 0	; 3: -125 -8 0
x3418:	jge printArgument$78	; 2: 125 4
x3420:	neg ax	; 2: -9 -40
x3422:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2096
x3424:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x3427:	mov ax, [bp + 8]	; 3: -117 70 8
x3430:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x3433:	mov ax, [bp + 16]	; 3: -117 70 16
x3436:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2097 = &precision
x3439:	mov si, bp	; 2: -119 -18
x3441:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2097, offset 10
x3444:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x3447:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -123 13
x3452:	mov [bp + 46], bp	; 3: -119 110 46
x3455:	add bp, 44	; 3: -125 -59 44
x3458:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2098 = return_value

printArgument$87:	; arg_list = £temporary2098
x3461:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x3464:	mov al, [bp + 31]	; 3: -118 70 31
x3467:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x3470:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -100 13
x3475:	mov [bp + 46], bp	; 3: -119 110 46
x3478:	add bp, 44	; 3: -125 -59 44
x3481:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x3484:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x3487:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2101 = arg_list - 2
x3491:	mov si, [bp + 8]	; 3: -117 118 8
x3494:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2102 = int_to_int £temporary2101 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2103 -> £temporary2102 = *£temporary2102

printArgument$97:	; stringValue = £temporary2103 -> £temporary2102
x3497:	mov ax, [si]	; 2: -117 4
x3499:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x3502:	mov ax, [bp + 8]	; 3: -117 70 8
x3505:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x3508:	mov ax, [bp + 16]	; 3: -117 70 16
x3511:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2104 = &precision
x3514:	mov si, bp	; 2: -119 -18
x3516:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2104, offset 10
x3519:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x3522:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -48 13
x3527:	mov [bp + 48], bp	; 3: -119 110 48
x3530:	add bp, 46	; 3: -125 -59 46
x3533:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2105 = return_value

printArgument$106:	; arg_list = £temporary2105
x3536:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x3539:	mov ax, [bp + 44]	; 3: -117 70 44
x3542:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x3545:	mov ax, [bp + 18]	; 3: -117 70 18
x3548:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x3551:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -19 13
x3556:	mov [bp + 48], bp	; 3: -119 110 48
x3559:	add bp, 46	; 3: -125 -59 46
x3562:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x3565:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x3568:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x3572:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2121 = 10
x3574:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x3580:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x3582:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x3586:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2117 = 8
x3588:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x3594:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x3596:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x3600:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2113 = 2
x3602:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x3608:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2113 = 16
x3610:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2117 = £temporary2113

printArgument$124:	; £temporary2121 = £temporary2117

printArgument$125:	; base = £temporary2121
x3616:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x3620:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3624:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x3626:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2123 = arg_list - 2
x3630:	mov si, [bp + 8]	; 3: -117 118 8
x3633:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2124 = int_to_int £temporary2123 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2125 -> £temporary2124 = *£temporary2124

printArgument$131:	; £temporary2126 = int_to_int £temporary2125 -> £temporary2124 (Unsigned_Int -> Unsigned_Short_Int)
x3636:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2127 = int_to_int £temporary2126 (Unsigned_Short_Int -> Unsigned_Long_Int)
x3638:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2127
x3644:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x3648:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x3650:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3654:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x3656:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2129 = arg_list - 4
x3660:	mov si, [bp + 8]	; 3: -117 118 8
x3663:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2130 = int_to_int £temporary2129 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2131 -> £temporary2130 = *£temporary2130

printArgument$140:	; value = £temporary2131 -> £temporary2130
x3666:	mov eax, [si]	; 3: 102 -117 4
x3669:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x3673:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x3675:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2133 = arg_list - 2
x3679:	mov si, [bp + 8]	; 3: -117 118 8
x3682:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2134 = int_to_int £temporary2133 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2135 -> £temporary2134 = *£temporary2134

printArgument$146:	; £temporary2136 = int_to_int £temporary2135 -> £temporary2134 (Unsigned_Int -> Unsigned_Long_Int)
x3685:	mov ax, [si]	; 2: -117 4
x3687:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2136
x3693:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x3697:	mov ax, [bp + 8]	; 3: -117 70 8
x3700:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x3703:	mov ax, [bp + 16]	; 3: -117 70 16
x3706:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2139 = &precision
x3709:	mov si, bp	; 2: -119 -18
x3711:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2139, offset 10
x3714:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x3717:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -109 14
x3722:	mov [bp + 54], bp	; 3: -119 110 54
x3725:	add bp, 52	; 3: -125 -59 52
x3728:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2140 = return_value

printArgument$156:	; arg_list = £temporary2140
x3731:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x3734:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x3738:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x3742:	mov ax, [bp + 10]	; 3: -117 70 10
x3745:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x3748:	mov ax, [bp + 12]	; 3: -117 70 12
x3751:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x3754:	mov ax, [bp + 14]	; 3: -117 70 14
x3757:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x3760:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3764:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2141 = int_to_int c (Signed_Char -> Signed_Int)
x3768:	mov al, [bp + 30]	; 3: -118 70 30
x3771:	and ax, 255	; 3: 37 -1 0
x3774:	cmp al, 0	; 2: 60 0
x3776:	jge printArgument$165	; 2: 125 4
x3778:	neg al	; 2: -10 -40
x3780:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2141, offset 26
x3782:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x3785:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -41 14
x3790:	mov [bp + 74], bp	; 3: -119 110 74
x3793:	add bp, 72	; 3: -125 -59 72
x3796:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2142 = return_value

printArgument$169:	; parameter £temporary2142, offset 20
x3799:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x3802:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -24 14
x3807:	mov [bp + 54], bp	; 3: -119 110 54
x3810:	add bp, 52	; 3: -125 -59 52
x3813:	jmp printUnsignedLong	; 3: -23 34 12

printArgument$171:	; post call

printArgument$172:	; goto 359
x3816:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x3819:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3823:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x3825:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2145 = arg_list - 8
x3829:	mov si, [bp + 8]	; 3: -117 118 8
x3832:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2146 = int_to_int £temporary2145 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2147 -> £temporary2146 = *£temporary2146

printArgument$178:	; push float £temporary2147 -> £temporary2146
x3835:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x3837:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x3840:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x3843:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x3846:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x3851:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x3856:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x3861:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x3866:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 40 15
x3871:	mov [bp + 46], bp	; 3: -119 110 46
x3874:	add bp, 44	; 3: -125 -59 44
x3877:	jmp printLongDoublePlain	; 3: -23 -115 13

printArgument$188:	; post call

printArgument$189:	; goto 196
x3880:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x3882:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2150 = arg_list - 8
x3886:	mov si, [bp + 8]	; 3: -117 118 8
x3889:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2151 = int_to_int £temporary2150 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2152 -> £temporary2151 = *£temporary2151

printArgument$194:	; push float £temporary2152 -> £temporary2151
x3892:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x3894:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x3897:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3901:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2156 -> negativePtr = *negativePtr
x3903:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x3906:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x3909:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x3911:	fcompp	; 2: -34 -39
x3913:	fstsw ax	; 3: -101 -33 -32
x3916:	sahf	; 1: -98
x3917:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2158 = 1
x3919:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x3922:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2158 = 0
x3924:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2156 -> negativePtr = £temporary2158
x3927:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x3929:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3933:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x3935:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x3938:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x3941:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 115 15
x3946:	mov [bp + 46], bp	; 3: -119 110 46
x3949:	add bp, 44	; 3: -125 -59 44
x3952:	jmp fabs	; 3: -23 -125 14

printArgument$210:	; post call

printArgument$211:	; £temporary2161 = return_value

printArgument$212:	; pop float longDoubleValue
x3955:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x3958:	mov ax, [bp + 8]	; 3: -117 70 8
x3961:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x3964:	mov ax, [bp + 16]	; 3: -117 70 16
x3967:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2162 = &precision
x3970:	mov si, bp	; 2: -119 -18
x3972:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2162, offset 10
x3975:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x3978:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -104 15
x3983:	mov [bp + 46], bp	; 3: -119 110 46
x3986:	add bp, 44	; 3: -125 -59 44
x3989:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2163 = return_value

printArgument$221:	; arg_list = £temporary2163
x3992:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x3995:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x3999:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x4001:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x4004:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x4007:	mov ax, [bp + 10]	; 3: -117 70 10
x4010:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x4013:	mov ax, [bp + 12]	; 3: -117 70 12
x4016:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x4019:	mov ax, [bp + 14]	; 3: -117 70 14
x4022:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x4025:	mov ax, [bp + 18]	; 3: -117 70 18
x4028:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x4031:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -51 15
x4036:	mov [bp + 46], bp	; 3: -119 110 46
x4039:	add bp, 44	; 3: -125 -59 44
x4042:	jmp printLongDoublePlain	; 3: -23 -24 12

printArgument$231:	; post call

printArgument$232:	; goto 359
x4045:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2166 = int_to_int c (Signed_Char -> Signed_Int)
x4048:	mov al, [bp + 30]	; 3: -118 70 30
x4051:	and ax, 255	; 3: 37 -1 0
x4054:	cmp al, 0	; 2: 60 0
x4056:	jge printArgument$235	; 2: 125 4
x4058:	neg al	; 2: -10 -40
x4060:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2166, offset 6
x4062:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x4065:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -17 15
x4070:	mov [bp + 46], bp	; 3: -119 110 46
x4073:	add bp, 44	; 3: -125 -59 44
x4076:	jmp tolower	; 3: -23 41 14

printArgument$237:	; post call

printArgument$238:	; £temporary2167 = return_value

printArgument$239:	; if £temporary2167 != 101 goto 257
x4079:	cmp bx, 101	; 3: -125 -5 101
x4082:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x4084:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x4087:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x4090:	mov ax, [bp + 10]	; 3: -117 70 10
x4093:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x4096:	mov ax, [bp + 12]	; 3: -117 70 12
x4099:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x4102:	mov ax, [bp + 14]	; 3: -117 70 14
x4105:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x4108:	mov ax, [bp + 18]	; 3: -117 70 18
x4111:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2169 = int_to_int c (Signed_Char -> Signed_Int)
x4114:	mov al, [bp + 30]	; 3: -118 70 30
x4117:	and ax, 255	; 3: 37 -1 0
x4120:	cmp al, 0	; 2: 60 0
x4122:	jge printArgument$249	; 2: 125 4
x4124:	neg al	; 2: -10 -40
x4126:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2169, offset 28
x4128:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x4131:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 49 16
x4136:	mov [bp + 68], bp	; 3: -119 110 68
x4139:	add bp, 66	; 3: -125 -59 66
x4142:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2170 = return_value

printArgument$253:	; parameter £temporary2170, offset 22
x4145:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x4148:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 66 16
x4153:	mov [bp + 46], bp	; 3: -119 110 46
x4156:	add bp, 44	; 3: -125 -59 44
x4159:	jmp printLongDoubleExpo	; 3: -23 119 14

printArgument$255:	; post call

printArgument$256:	; goto 359
x4162:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x4165:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x4168:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x4171:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 89 16
x4176:	mov [bp + 46], bp	; 3: -119 110 46
x4179:	add bp, 44	; 3: -125 -59 44
x4182:	jmp fabs	; 3: -23 -99 13

printArgument$262:	; post call

printArgument$263:	; £temporary2172 = return_value

printArgument$264:	; parameter £temporary2172, offset 6
x4185:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x4188:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 106 16
x4193:	mov [bp + 46], bp	; 3: -119 110 46
x4196:	add bp, 44	; 3: -125 -59 44
x4199:	jmp log10	; 3: -23 -74 15

printArgument$266:	; post call

printArgument$267:	; £temporary2173 = return_value

printArgument$268:	; £temporary2174 = float_to_int £temporary2173 (Double -> Signed_Int)
x4202:	fistp word [container2bytes#]	; 4: -33 30 0 18
x4206:	mov ax, [container2bytes#]	; 3: -95 0 18

printArgument$269:	; expo = £temporary2174
x4209:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x4212:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x4216:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x4218:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x4222:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x4224:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x4227:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x4230:	mov ax, [bp + 10]	; 3: -117 70 10
x4233:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x4236:	mov ax, [bp + 12]	; 3: -117 70 12
x4239:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x4242:	mov ax, [bp + 14]	; 3: -117 70 14
x4245:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x4248:	mov ax, [bp + 18]	; 3: -117 70 18
x4251:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x4254:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -84 16
x4259:	mov [bp + 48], bp	; 3: -119 110 48
x4262:	add bp, 46	; 3: -125 -59 46
x4265:	jmp printLongDoublePlain	; 3: -23 9 12

printArgument$280:	; post call

printArgument$281:	; goto 359
x4268:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x4271:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x4274:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x4277:	mov ax, [bp + 10]	; 3: -117 70 10
x4280:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x4283:	mov ax, [bp + 12]	; 3: -117 70 12
x4286:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x4289:	mov ax, [bp + 14]	; 3: -117 70 14
x4292:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x4295:	mov ax, [bp + 18]	; 3: -117 70 18
x4298:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2179 = int_to_int c (Signed_Char -> Signed_Int)
x4301:	mov al, [bp + 30]	; 3: -118 70 30
x4304:	and ax, 255	; 3: 37 -1 0
x4307:	cmp al, 0	; 2: 60 0
x4309:	jge printArgument$291	; 2: 125 4
x4311:	neg al	; 2: -10 -40
x4313:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2179, offset 28
x4315:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x4318:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -20 16
x4323:	mov [bp + 70], bp	; 3: -119 110 70
x4326:	add bp, 68	; 3: -125 -59 68
x4329:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2180 = return_value

printArgument$295:	; parameter £temporary2180, offset 22
x4332:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x4335:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -3 16
x4340:	mov [bp + 48], bp	; 3: -119 110 48
x4343:	add bp, 46	; 3: -125 -59 46
x4346:	jmp printLongDoubleExpo	; 3: -23 -68 13

printArgument$297:	; post call

printArgument$298:	; goto 359
x4349:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x4352:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2183 = arg_list - 2
x4356:	mov si, [bp + 8]	; 3: -117 118 8
x4359:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2184 = int_to_int £temporary2183 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2185 -> £temporary2184 = *£temporary2184

printArgument$303:	; ptrValue = £temporary2185 -> £temporary2184
x4362:	mov ax, [si]	; 2: -117 4
x4364:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x4367:	mov ax, [bp + 8]	; 3: -117 70 8
x4370:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x4373:	mov ax, [bp + 16]	; 3: -117 70 16
x4376:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2186 = &precision
x4379:	mov si, bp	; 2: -119 -18
x4381:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2186, offset 10
x4384:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x4387:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 49 17
x4392:	mov [bp + 46], bp	; 3: -119 110 46
x4395:	add bp, 44	; 3: -125 -59 44
x4398:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2187 = return_value

printArgument$312:	; arg_list = £temporary2187
x4401:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2188 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x4404:	mov ax, [bp + 42]	; 3: -117 70 42
x4407:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2188, offset 6
x4413:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x4417:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x4422:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x4427:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x4432:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x4440:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x4445:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 107 17
x4450:	mov [bp + 46], bp	; 3: -119 110 46
x4453:	add bp, 44	; 3: -125 -59 44
x4456:	jmp printUnsignedLong	; 3: -23 -97 9

printArgument$322:	; post call

printArgument$323:	; goto 359
x4459:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x4462:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2191 = arg_list - 2
x4466:	mov si, [bp + 8]	; 3: -117 118 8
x4469:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2192 = int_to_int £temporary2191 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2193 -> £temporary2192 = *£temporary2192

printArgument$328:	; ptrValue = £temporary2193 -> £temporary2192
x4472:	mov ax, [si]	; 2: -117 4
x4474:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x4477:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2195 = arg_list - 2
x4481:	mov si, [bp + 8]	; 3: -117 118 8
x4484:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2196 = int_to_int £temporary2195 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2197 -> £temporary2196 = *£temporary2196

printArgument$333:	; intPtr = £temporary2197 -> £temporary2196
x4487:	mov ax, [si]	; 2: -117 4
x4489:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x4492:	mov ax, [bp + 8]	; 3: -117 70 8
x4495:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x4498:	mov ax, [bp + 16]	; 3: -117 70 16
x4501:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2198 = &precision
x4504:	mov si, bp	; 2: -119 -18
x4506:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2198, offset 10
x4509:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x4512:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -82 17
x4517:	mov [bp + 46], bp	; 3: -119 110 46
x4520:	add bp, 44	; 3: -125 -59 44
x4523:	nop	; 1: -112
x4524:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2199 = return_value

printArgument$342:	; arg_list = £temporary2199
x4526:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2200 -> intPtr = *intPtr
x4529:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2200 -> intPtr = g_outChars
x4532:	mov ax, [g_outChars]	; 3: -95 -22 11
x4535:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x4537:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x4539:	mov ax, [bp + 8]	; 3: -117 70 8
x4542:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x4545:	mov ax, [bp + 16]	; 3: -117 70 16
x4548:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2201 = &precision
x4551:	mov si, bp	; 2: -119 -18
x4553:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2201, offset 10
x4556:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x4559:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -35 17
x4564:	mov [bp + 46], bp	; 3: -119 110 46
x4567:	add bp, 44	; 3: -125 -59 44
x4570:	nop	; 1: -112
x4571:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2202 = return_value

printArgument$354:	; arg_list = £temporary2202
x4573:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x4576:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x4580:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -14 17
x4585:	mov [bp + 46], bp	; 3: -119 110 46
x4588:	add bp, 44	; 3: -125 -59 44
x4591:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x4594:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x4597:	mov ax, [bp]	; 3: -117 70 0
x4600:	mov di, [bp + 4]	; 3: -117 126 4
x4603:	mov bp, [bp + 2]	; 3: -117 110 2
x4606:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x4608:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x4610:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4615:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2668 = -value
x4617:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x4621:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2672 = £temporary2668

labs$3:	; goto 5
x4624:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2672 = value
x4626:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2672

labs$6:	; return
x4630:	mov ax, [bp]	; 3: -117 70 0
x4633:	mov di, [bp + 4]	; 3: -117 126 4
x4636:	mov bp, [bp + 2]	; 3: -117 110 2
x4639:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x4641:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4645:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary2046 -> widthPtr = *widthPtr
x4647:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary2046 -> widthPtr != -1 goto 9
x4650:	cmp word [si], -1	; 3: -125 60 -1
x4653:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary2049 -> widthPtr = *widthPtr
x4655:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x4658:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary2051 = arg_list - 2
x4662:	mov di, [bp + 6]	; 3: -117 126 6
x4665:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary2052 = int_to_int £temporary2051 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary2053 -> £temporary2052 = *£temporary2052

checkWidthAndPrecision$8:	; £temporary2049 -> widthPtr = £temporary2053 -> £temporary2052
x4668:	mov ax, [di]	; 2: -117 5
x4670:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x4672:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4676:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary2055 -> precisionPtr = *precisionPtr
x4678:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary2055 -> precisionPtr != -1 goto 18
x4681:	cmp word [si], -1	; 3: -125 60 -1
x4684:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2058 -> precisionPtr = *precisionPtr
x4686:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x4689:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2060 = arg_list - 2
x4693:	mov di, [bp + 6]	; 3: -117 126 6
x4696:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2061 = int_to_int £temporary2060 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2062 -> £temporary2061 = *£temporary2061

checkWidthAndPrecision$17:	; £temporary2058 -> precisionPtr = £temporary2062 -> £temporary2061
x4699:	mov ax, [di]	; 2: -117 5
x4701:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x4703:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x4706:	mov ax, [bp]	; 3: -117 70 0
x4709:	mov di, [bp + 4]	; 3: -117 126 4
x4712:	mov bp, [bp + 2]	; 3: -117 110 2
x4715:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x4717:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4722:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1901 = -longValue
x4724:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4728:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1901
x4731:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x4735:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x4739:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -111 18
x4744:	mov [bp + 16], bp	; 3: -119 110 16
x4747:	add bp, 14	; 3: -125 -59 14
x4750:	nop	; 1: -112
x4751:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x4753:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x4755:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4759:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x4761:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x4765:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -85 18
x4770:	mov [bp + 16], bp	; 3: -119 110 16
x4773:	add bp, 14	; 3: -125 -59 14
x4776:	nop	; 1: -112
x4777:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x4779:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x4781:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4785:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x4787:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x4791:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -59 18
x4796:	mov [bp + 16], bp	; 3: -119 110 16
x4799:	add bp, 14	; 3: -125 -59 14
x4802:	nop	; 1: -112
x4803:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x4805:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4810:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x4812:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x4816:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -34 18
x4821:	mov [bp + 16], bp	; 3: -119 110 16
x4824:	add bp, 14	; 3: -125 -59 14
x4827:	nop	; 1: -112
x4828:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x4830:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x4832:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4836:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x4840:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -10 18
x4845:	mov [bp + 16], bp	; 3: -119 110 16
x4848:	add bp, 14	; 3: -125 -59 14
x4851:	nop	; 1: -112
x4852:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x4854:	mov ax, [bp]	; 3: -117 70 0
x4857:	mov di, [bp + 4]	; 3: -117 126 4
x4860:	mov bp, [bp + 2]	; 3: -117 110 2
x4863:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x4865:	mov ax, [g_outStatus]	; 3: -95 -106 6
x4868:	cmp ax, 0	; 3: -125 -8 0
x4871:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x4873:	cmp ax, 1	; 3: -125 -8 1
x4876:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x4878:	cmp ax, 2	; 3: -125 -8 2
x4881:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x4883:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1843 = int_to_int g_outDevice (Pointer -> Pointer)
x4885:	mov ax, [g_outDevice]	; 3: -95 -104 6

printChar$6:	; stream = £temporary1843
x4888:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x4891:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1846 -> stream = *stream, offset 2
x4893:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1846 -> stream
x4896:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x4899:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1849 = &c
x4902:	mov dx, bp	; 2: -119 -22
x4904:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1849

printChar$13:	; interrupt 33
x4907:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x4909:	inc word [g_outChars]	; 4: -1 6 -22 11

printChar$15:	; goto 25
x4913:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1851 = int_to_int g_outDevice (Pointer -> Pointer)
x4915:	mov ax, [g_outDevice]	; 3: -95 -104 6

printChar$17:	; outString = £temporary1851
x4918:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1852 = g_outChars
x4921:	mov ax, [g_outChars]	; 3: -95 -22 11

printChar$19:	; ++g_outChars
x4924:	inc word [g_outChars]	; 4: -1 6 -22 11

printChar$20:	; £temporary1854 = outString + £temporary1852
x4928:	mov si, [bp + 9]	; 3: -117 118 9
x4931:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1853 -> £temporary1854 = *£temporary1854

printChar$22:	; £temporary1853 -> £temporary1854 = c
x4933:	mov al, [bp + 6]	; 3: -118 70 6
x4936:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x4938:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x4940:	inc word [g_outChars]	; 4: -1 6 -22 11

printChar$25:	; return
x4944:	mov ax, [bp]	; 3: -117 70 0
x4947:	mov di, [bp + 4]	; 3: -117 126 4
x4950:	mov bp, [bp + 2]	; 3: -117 110 2
x4953:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x4955:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4960:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1891 = longValue % 10
x4962:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4966:	xor edx, edx	; 3: 102 49 -46
x4969:	idiv dword [int4$10#]	; 5: 102 -9 62 -59 19

printLongIntRec$2:	; £temporary1892 = int_to_int £temporary1891 (Signed_Long_Int -> Signed_Int)
x4974:	cmp edx, 0	; 4: 102 -125 -6 0
x4978:	jge printLongIntRec$3	; 2: 125 5
x4980:	neg edx	; 3: 102 -9 -38
x4983:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1892
x4985:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1893 = longValue / 10
x4988:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4992:	xor edx, edx	; 3: 102 49 -46
x4995:	idiv dword [int4$10#]	; 5: 102 -9 62 -59 19

printLongIntRec$6:	; parameter £temporary1893, offset 6
x5000:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x5004:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -102 19
x5009:	mov [bp + 14], bp	; 3: -119 110 14
x5012:	add bp, 12	; 3: -125 -59 12
x5015:	nop	; 1: -112
x5016:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1895 = digit + 48
x5018:	mov ax, [bp + 10]	; 3: -117 70 10
x5021:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1896 = int_to_int £temporary1895 (Signed_Int -> Signed_Char)
x5024:	cmp ax, 0	; 3: -125 -8 0
x5027:	jge printLongIntRec$12	; 2: 125 4
x5029:	neg ax	; 2: -9 -40
x5031:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1896, offset 6
x5033:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x5036:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -70 19
x5041:	mov [bp + 14], bp	; 3: -119 110 14
x5044:	add bp, 12	; 3: -125 -59 12
x5047:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x5050:	mov ax, [bp]	; 3: -117 70 0
x5053:	mov di, [bp + 4]	; 3: -117 126 4
x5056:	mov bp, [bp + 2]	; 3: -117 110 2
x5059:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x5061:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x5065:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x5069:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x5071:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5075:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x5077:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1860 = s + index
x5082:	mov si, [bp + 6]	; 3: -117 118 6
x5085:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1859 -> £temporary1860 = *£temporary1860

printString$5:	; if £temporary1859 -> £temporary1860 == 0 goto 53
x5088:	cmp byte [si], 0	; 3: -128 60 0
x5091:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1864 = s + index
x5095:	mov si, [bp + 6]	; 3: -117 118 6
x5098:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1863 -> £temporary1864 = *£temporary1864

printString$9:	; parameter £temporary1863 -> £temporary1864, offset 6
x5101:	mov al, [si]	; 2: -118 4
x5103:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x5106:	mov word [bp + 12], printString$11	; 5: -57 70 12 0 20
x5111:	mov [bp + 14], bp	; 3: -119 110 14
x5114:	add bp, 12	; 3: -125 -59 12
x5117:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x5120:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x5123:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x5125:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1866 = precision
x5130:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x5133:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1866 <= 0 goto 53
x5136:	cmp ax, 0	; 3: -125 -8 0
x5139:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1869 = s + index
x5143:	mov si, [bp + 6]	; 3: -117 118 6
x5146:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1868 -> £temporary1869 = *£temporary1869

printString$20:	; if £temporary1868 -> £temporary1869 == 0 goto 53
x5149:	cmp byte [si], 0	; 3: -128 60 0
x5152:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1874 = s + index
x5156:	mov si, [bp + 6]	; 3: -117 118 6
x5159:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1873 -> £temporary1874 = *£temporary1874

printString$24:	; parameter £temporary1873 -> £temporary1874, offset 6
x5162:	mov al, [si]	; 2: -118 4
x5164:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x5167:	mov word [bp + 12], printString$26	; 5: -57 70 12 61 20
x5172:	mov [bp + 14], bp	; 3: -119 110 14
x5175:	add bp, 12	; 3: -125 -59 12
x5178:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x5181:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x5184:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x5186:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x5190:	mov word [bp + 10], printString$32	; 5: -57 70 10 84 20
x5195:	mov [bp + 12], bp	; 3: -119 110 12
x5198:	add bp, 10	; 3: -125 -59 10
x5201:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x5204:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x5208:	mov word [bp + 10], printString$36	; 5: -57 70 10 102 20
x5213:	mov [bp + 12], bp	; 3: -119 110 12
x5216:	add bp, 10	; 3: -125 -59 10
x5219:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x5222:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x5226:	mov word [bp + 10], printString$40	; 5: -57 70 10 120 20
x5231:	mov [bp + 12], bp	; 3: -119 110 12
x5234:	add bp, 10	; 3: -125 -59 10
x5237:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x5240:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x5244:	mov word [bp + 10], printString$44	; 5: -57 70 10 -118 20
x5249:	mov [bp + 12], bp	; 3: -119 110 12
x5252:	add bp, 10	; 3: -125 -59 10
x5255:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x5258:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x5262:	mov word [bp + 10], printString$48	; 5: -57 70 10 -100 20
x5267:	mov [bp + 12], bp	; 3: -119 110 12
x5270:	add bp, 10	; 3: -125 -59 10
x5273:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x5276:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x5280:	mov word [bp + 10], printString$52	; 5: -57 70 10 -82 20
x5285:	mov [bp + 12], bp	; 3: -119 110 12
x5288:	add bp, 10	; 3: -125 -59 10
x5291:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x5294:	mov ax, [bp]	; 3: -117 70 0
x5297:	mov di, [bp + 4]	; 3: -117 126 4
x5300:	mov bp, [bp + 2]	; 3: -117 110 2
x5303:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x5305:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -57 20
x5310:	mov [bp + 10], bp	; 3: -119 110 10
x5313:	add bp, 8	; 3: -125 -59 8
x5316:	nop	; 1: -112
x5317:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary334 = return_value

isupper$4:	; localeConvPtr = £temporary334
x5319:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x5322:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5326:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary336 -> localeConvPtr = *localeConvPtr, offset 14
x5328:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary336 -> localeConvPtr, offset 6
x5331:	mov ax, [si + 14]	; 3: -117 68 14
x5334:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x5337:	mov ax, [bp + 6]	; 3: -117 70 6
x5340:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x5343:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -19 20
x5348:	mov [bp + 12], bp	; 3: -119 110 12
x5351:	add bp, 10	; 3: -125 -59 10
x5354:	jmp strchr	; 3: -23 -51 5

isupper$11:	; post call

isupper$12:	; £temporary337 = return_value

isupper$13:	; if £temporary337 == 0 goto 16
x5357:	cmp bx, 0	; 3: -125 -5 0
x5360:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary339 = 1
x5362:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x5365:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary339 = 0
x5367:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary339

isupper$18:	; return
x5370:	mov ax, [bp]	; 3: -117 70 0
x5373:	mov di, [bp + 4]	; 3: -117 126 4
x5376:	mov bp, [bp + 2]	; 3: -117 110 2
x5379:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x5381:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x5385:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x5387:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x5391:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary343 = 1
x5393:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x5396:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary343 = 0
x5398:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary343

isupper$25:	; return
x5401:	mov ax, [bp]	; 3: -117 70 0
x5404:	mov di, [bp + 4]	; 3: -117 126 4
x5407:	mov bp, [bp + 2]	; 3: -117 110 2
x5410:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x5412:	cmp word [@22$g_currStructPtr], 0	; 5: -125 62 66 21 0
x5417:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary483 -> g_currStructPtr = *g_currStructPtr, offset 2
x5419:	mov si, [@22$g_currStructPtr]	; 4: -117 54 66 21

localeconv$2:	; £temporary487 = £temporary483 -> g_currStructPtr
x5423:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x5426:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary487 = 0
x5428:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary487

localeconv$6:	; return
x5431:	mov ax, [bp]	; 3: -117 70 0
x5434:	mov di, [bp + 4]	; 3: -117 126 4
x5437:	mov bp, [bp + 2]	; 3: -117 110 2
x5440:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@22$g_currStructPtr:
x5442:	dw @20$sArray	; 2: 68 21

@20$sArray:
x5444:	dw string_# ; 2: 84 21
x5446:	dw @19$sw_EN_utf8	; 2: 85 21
x5448:	dw string_C# ; 2: 66 24
x5450:	dw @13$en_US_utf8	; 2: 68 24
x5452:	dw string_US# ; 2: -76 26
x5454:	dw @13$en_US_utf8	; 2: 68 24
x5456:	dw string_SE# ; 2: -73 26
x5458:	dw @19$sw_EN_utf8	; 2: 85 21

string_#:
x5460:	db 0	; 1: 0

@19$sw_EN_utf8:
x5461:	dw 1	; 2: 1 0
x5463:	dw 2	; 2: 2 0
x5465:	dw @14$swShortDayList ; 2: 103 21
x5467:	dw @15$swLongDayList ; 2: -111 21
x5469:	dw @11$enShortMonthList ; 2: -47 21
x5471:	dw @17$swLongMonthList ; 2: 25 22
x5473:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -121 22
x5475:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -94 22
x5477:	dw @18$swMessageList ; 2: -67 22

@14$swShortDayList:
x5479:	dw string_Son# ; 2: 117 21
x5481:	dw string_Man# ; 2: 121 21
x5483:	dw string_Tis# ; 2: 125 21
x5485:	dw string_Ons# ; 2: -127 21
x5487:	dw string_Tor# ; 2: -123 21
x5489:	dw string_Fre# ; 2: -119 21
x5491:	dw string_Lor# ; 2: -115 21

string_Son#:
x5493:	db "Son", 0	; 4: 83 111 110 0

string_Man#:
x5497:	db "Man", 0	; 4: 77 97 110 0

string_Tis#:
x5501:	db "Tis", 0	; 4: 84 105 115 0

string_Ons#:
x5505:	db "Ons", 0	; 4: 79 110 115 0

string_Tor#:
x5509:	db "Tor", 0	; 4: 84 111 114 0

string_Fre#:
x5513:	db "Fre", 0	; 4: 70 114 101 0

string_Lor#:
x5517:	db "Lor", 0	; 4: 76 111 114 0

@15$swLongDayList:
x5521:	dw string_Sondag# ; 2: -97 21
x5523:	dw string_Mandag# ; 2: -90 21
x5525:	dw string_Tisdag# ; 2: -83 21
x5527:	dw string_Onsdag# ; 2: -76 21
x5529:	dw string_Torsdag# ; 2: -69 21
x5531:	dw string_Fredag# ; 2: -61 21
x5533:	dw string_Lordag# ; 2: -54 21

string_Sondag#:
x5535:	db "Sondag", 0	; 7: 83 111 110 100 97 103 0

string_Mandag#:
x5542:	db "Mandag", 0	; 7: 77 97 110 100 97 103 0

string_Tisdag#:
x5549:	db "Tisdag", 0	; 7: 84 105 115 100 97 103 0

string_Onsdag#:
x5556:	db "Onsdag", 0	; 7: 79 110 115 100 97 103 0

string_Torsdag#:
x5563:	db "Torsdag", 0	; 8: 84 111 114 115 100 97 103 0

string_Fredag#:
x5571:	db "Fredag", 0	; 7: 70 114 101 100 97 103 0

string_Lordag#:
x5578:	db "Lordag", 0	; 7: 76 111 114 100 97 103 0

@11$enShortMonthList:
x5585:	dw string_Jan# ; 2: -23 21
x5587:	dw string_Feb# ; 2: -19 21
x5589:	dw string_Mar# ; 2: -15 21
x5591:	dw string_Apr# ; 2: -11 21
x5593:	dw string_May# ; 2: -7 21
x5595:	dw string_Jun# ; 2: -3 21
x5597:	dw string_Jul# ; 2: 1 22
x5599:	dw string_Aug# ; 2: 5 22
x5601:	dw string_Sep# ; 2: 9 22
x5603:	dw string_Oct# ; 2: 13 22
x5605:	dw string_Nov# ; 2: 17 22
x5607:	dw string_Dec# ; 2: 21 22

string_Jan#:
x5609:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5613:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5617:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5621:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5625:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5629:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5633:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5637:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5641:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5645:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5649:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5653:	db "Dec", 0	; 4: 68 101 99 0

@17$swLongMonthList:
x5657:	dw string_Januari# ; 2: 49 22
x5659:	dw string_Februari# ; 2: 57 22
x5661:	dw string_Mars# ; 2: 66 22
x5663:	dw string_April# ; 2: 71 22
x5665:	dw string_Maj# ; 2: 77 22
x5667:	dw string_Juni# ; 2: 81 22
x5669:	dw string_Juli# ; 2: 86 22
x5671:	dw string_Augusit# ; 2: 91 22
x5673:	dw string_September# ; 2: 99 22
x5675:	dw string_Oktober# ; 2: 109 22
x5677:	dw string_November# ; 2: 117 22
x5679:	dw string_December# ; 2: 126 22

string_Januari#:
x5681:	db "Januari", 0	; 8: 74 97 110 117 97 114 105 0

string_Februari#:
x5689:	db "Februari", 0	; 9: 70 101 98 114 117 97 114 105 0

string_Mars#:
x5698:	db "Mars", 0	; 5: 77 97 114 115 0

string_April#:
x5703:	db "April", 0	; 6: 65 112 114 105 108 0

string_Maj#:
x5709:	db "Maj", 0	; 4: 77 97 106 0

string_Juni#:
x5713:	db "Juni", 0	; 5: 74 117 110 105 0

string_Juli#:
x5718:	db "Juli", 0	; 5: 74 117 108 105 0

string_Augusit#:
x5723:	db "Augusit", 0	; 8: 65 117 103 117 115 105 116 0

string_September#:
x5731:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_Oktober#:
x5741:	db "Oktober", 0	; 8: 79 107 116 111 98 101 114 0

string_November#:
x5749:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5758:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5767:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5794:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

@18$swMessageList:
x5821:	dw string_inga20fel# ; 2: -29 22
x5823:	dw string_felaktigt20functionsnummer# ; 2: -20 22
x5825:	dw string_hittar20ej20filen# ; 2: 6 23
x5827:	dw string_hittar20ej20sokvagen# ; 2: 22 23
x5829:	dw string_inget20handtag20tillgangligt# ; 2: 41 23
x5831:	dw string_atkomst20nekad# ; 2: 68 23
x5833:	dw string_utanfor20doman# ; 2: 82 23
x5835:	dw string_utanfor20range# ; 2: 96 23
x5837:	dw string_felaktig20multibyte2Dsekvens# ; 2: 110 23
x5839:	dw string_fel20vid20oppning# ; 2: -119 23
x5841:	dw string_fel20vid20flushing# ; 2: -103 23
x5843:	dw string_fel20vid20stangning# ; 2: -86 23
x5845:	dw string_fel20oppningslage# ; 2: -68 23
x5847:	dw string_fel20vid20skrivning# ; 2: -51 23
x5849:	dw string_fel20vid20lasning# ; 2: -33 23
x5851:	dw string_fel20vid20sokning# ; 2: -17 23
x5853:	dw string_fel20vid20telling# ; 2: -1 23
x5855:	dw string_fel20vid20borttagning20av20fil# ; 2: 15 24
x5857:	dw string_fel20vid20namnbyte20av20fil# ; 2: 42 24

string_inga20fel#:
x5859:	db "inga fel", 0	; 9: 105 110 103 97 32 102 101 108 0

string_felaktigt20functionsnummer#:
x5868:	db "felaktigt functionsnummer", 0	; 26: 102 101 108 97 107 116 105 103 116 32 102 117 110 99 116 105 111 110 115 110 117 109 109 101 114 0

string_hittar20ej20filen#:
x5894:	db "hittar ej filen", 0	; 16: 104 105 116 116 97 114 32 101 106 32 102 105 108 101 110 0

string_hittar20ej20sokvagen#:
x5910:	db "hittar ej sokvagen", 0	; 19: 104 105 116 116 97 114 32 101 106 32 115 111 107 118 97 103 101 110 0

string_inget20handtag20tillgangligt#:
x5929:	db "inget handtag tillgangligt", 0	; 27: 105 110 103 101 116 32 104 97 110 100 116 97 103 32 116 105 108 108 103 97 110 103 108 105 103 116 0

string_atkomst20nekad#:
x5956:	db "atkomst nekad", 0	; 14: 97 116 107 111 109 115 116 32 110 101 107 97 100 0

string_utanfor20doman#:
x5970:	db "utanfor doman", 0	; 14: 117 116 97 110 102 111 114 32 100 111 109 97 110 0

string_utanfor20range#:
x5984:	db "utanfor range", 0	; 14: 117 116 97 110 102 111 114 32 114 97 110 103 101 0

string_felaktig20multibyte2Dsekvens#:
x5998:	db "felaktig multibyte-sekvens", 0	; 27: 102 101 108 97 107 116 105 103 32 109 117 108 116 105 98 121 116 101 45 115 101 107 118 101 110 115 0

string_fel20vid20oppning#:
x6025:	db "fel vid oppning", 0	; 16: 102 101 108 32 118 105 100 32 111 112 112 110 105 110 103 0

string_fel20vid20flushing#:
x6041:	db "fel vid flushing", 0	; 17: 102 101 108 32 118 105 100 32 102 108 117 115 104 105 110 103 0

string_fel20vid20stangning#:
x6058:	db "fel vid stangning", 0	; 18: 102 101 108 32 118 105 100 32 115 116 97 110 103 110 105 110 103 0

string_fel20oppningslage#:
x6076:	db "fel oppningslage", 0	; 17: 102 101 108 32 111 112 112 110 105 110 103 115 108 97 103 101 0

string_fel20vid20skrivning#:
x6093:	db "fel vid skrivning", 0	; 18: 102 101 108 32 118 105 100 32 115 107 114 105 118 110 105 110 103 0

string_fel20vid20lasning#:
x6111:	db "fel vid lasning", 0	; 16: 102 101 108 32 118 105 100 32 108 97 115 110 105 110 103 0

string_fel20vid20sokning#:
x6127:	db "fel vid sokning", 0	; 16: 102 101 108 32 118 105 100 32 115 111 107 110 105 110 103 0

string_fel20vid20telling#:
x6143:	db "fel vid telling", 0	; 16: 102 101 108 32 118 105 100 32 116 101 108 108 105 110 103 0

string_fel20vid20borttagning20av20fil#:
x6159:	db "fel vid borttagning av fil", 0	; 27: 102 101 108 32 118 105 100 32 98 111 114 116 116 97 103 110 105 110 103 32 97 118 32 102 105 108 0

string_fel20vid20namnbyte20av20fil#:
x6186:	db "fel vid namnbyte av fil", 0	; 24: 102 101 108 32 118 105 100 32 110 97 109 110 98 121 116 101 32 97 118 32 102 105 108 0

string_C#:
x6210:	db "C", 0	; 2: 67 0

@13$en_US_utf8:
x6212:	dw -5	; 2: -5 -1
x6214:	dw -4	; 2: -4 -1
x6216:	dw @9$enShortDayList ; 2: 86 24
x6218:	dw @10$enLongDayList ; 2: -128 24
x6220:	dw @11$enShortMonthList ; 2: -47 21
x6222:	dw @12$enLongMonthList ; 2: -57 24
x6224:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -121 22
x6226:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -94 22
x6228:	dw enMessageList ; 2: 15 25

@9$enShortDayList:
x6230:	dw string_Sun# ; 2: 100 24
x6232:	dw string_Mon# ; 2: 104 24
x6234:	dw string_Tue# ; 2: 108 24
x6236:	dw string_Wed# ; 2: 112 24
x6238:	dw string_Thu# ; 2: 116 24
x6240:	dw string_Fri# ; 2: 120 24
x6242:	dw string_Sat# ; 2: 124 24

string_Sun#:
x6244:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x6248:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x6252:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6256:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6260:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6264:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6268:	db "Sat", 0	; 4: 83 97 116 0

@10$enLongDayList:
x6272:	dw string_Sunday# ; 2: -114 24
x6274:	dw string_Monday# ; 2: -107 24
x6276:	dw string_Tuesday# ; 2: -100 24
x6278:	dw string_Wednesday# ; 2: -92 24
x6280:	dw string_Thursday# ; 2: -82 24
x6282:	dw string_Friday# ; 2: -73 24
x6284:	dw string_Saturday# ; 2: -66 24

string_Sunday#:
x6286:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6293:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6300:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6308:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6318:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6327:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x6334:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@12$enLongMonthList:
x6343:	dw string_January# ; 2: -33 24
x6345:	dw string_February# ; 2: -25 24
x6347:	dw string_March# ; 2: -16 24
x6349:	dw string_April# ; 2: 71 22
x6351:	dw string_May# ; 2: -7 21
x6353:	dw string_June# ; 2: -10 24
x6355:	dw string_July# ; 2: -5 24
x6357:	dw string_August# ; 2: 0 25
x6359:	dw string_September# ; 2: 99 22
x6361:	dw string_October# ; 2: 7 25
x6363:	dw string_November# ; 2: 117 22
x6365:	dw string_December# ; 2: 126 22

string_January#:
x6367:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x6375:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x6384:	db "March", 0	; 6: 77 97 114 99 104 0

string_June#:
x6390:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x6395:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x6400:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_October#:
x6407:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

enMessageList:
x6415:	dw string_no20error# ; 2: 55 25
x6417:	dw string_function20number20invalid# ; 2: 64 25
x6419:	dw string_file20not20found# ; 2: 88 25
x6421:	dw string_path20not20found# ; 2: 103 25
x6423:	dw string_no20handle20available# ; 2: 118 25
x6425:	dw string_access20denied# ; 2: -118 25
x6427:	dw string_out20of20domain# ; 2: -104 25
x6429:	dw string_out20of20range# ; 2: -90 25
x6431:	dw string_invalid20multibyte20sequence# ; 2: -77 25
x6433:	dw string_error20while20opening# ; 2: -50 25
x6435:	dw string_error20while20flushing# ; 2: -30 25
x6437:	dw string_error20while20closing# ; 2: -9 25
x6439:	dw string_open20mode20invalid# ; 2: 11 26
x6441:	dw string_error20while20writing# ; 2: 29 26
x6443:	dw string_error20while20reading# ; 2: 49 26
x6445:	dw string_error20while20seeking# ; 2: 69 26
x6447:	dw string_error20while20telling# ; 2: 89 26
x6449:	dw string_error20while20sizing# ; 2: 109 26
x6451:	dw string_error20while20removing20file# ; 2: -128 26
x6453:	dw string_error20while20renaming20file# ; 2: -102 26

string_no20error#:
x6455:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x6464:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x6488:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x6503:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x6518:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x6538:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x6552:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x6566:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x6579:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x6606:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x6626:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x6647:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x6667:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x6685:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x6705:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x6725:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x6745:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x6765:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x6784:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x6810:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_US#:
x6836:	db "US", 0	; 3: 85 83 0

string_SE#:
x6839:	db "SE", 0	; 3: 83 69 0

strchr:	; £temporary3293 = int_to_int i (Signed_Int -> Signed_Char)
x6842:	mov ax, [bp + 8]	; 3: -117 70 8
x6845:	cmp ax, 0	; 3: -125 -8 0
x6848:	jge strchr$1	; 2: 125 4
x6850:	neg ax	; 2: -9 -40
x6852:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3293
x6854:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x6857:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3295 = text + index
x6862:	mov si, [bp + 6]	; 3: -117 118 6
x6865:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3294 -> £temporary3295 = *£temporary3295

strchr$5:	; if £temporary3294 -> £temporary3295 == 0 goto 16
x6868:	cmp byte [si], 0	; 3: -128 60 0
x6871:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3299 = text + index
x6873:	mov si, [bp + 6]	; 3: -117 118 6
x6876:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3298 -> £temporary3299 = *£temporary3299

strchr$8:	; if £temporary3298 -> £temporary3299 != c goto 14
x6879:	mov al, [bp + 12]	; 3: -118 70 12
x6882:	cmp [si], al	; 2: 56 4
x6884:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3302 = text + index
x6886:	mov bx, [bp + 6]	; 3: -117 94 6
x6889:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3301 -> £temporary3302 = *£temporary3302

strchr$11:	; £temporary3303 = &£temporary3301 -> £temporary3302

strchr$12:	; return_value = £temporary3303

strchr$13:	; return
x6892:	mov ax, [bp]	; 3: -117 70 0
x6895:	mov di, [bp + 4]	; 3: -117 126 4
x6898:	mov bp, [bp + 2]	; 3: -117 110 2
x6901:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x6903:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x6906:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x6908:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x6911:	mov ax, [bp]	; 3: -117 70 0
x6914:	mov di, [bp + 4]	; 3: -117 126 4
x6917:	mov bp, [bp + 2]	; 3: -117 110 2
x6920:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x6922:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6926:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x6928:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x6932:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 34 27
x6937:	mov [bp + 24], bp	; 3: -119 110 24
x6940:	add bp, 22	; 3: -125 -59 22
x6943:	jmp printChar	; 3: -23 -33 -9

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x6946:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6950:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x6952:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x6956:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 58 27
x6961:	mov [bp + 24], bp	; 3: -119 110 24
x6964:	add bp, 22	; 3: -125 -59 22
x6967:	jmp printChar	; 3: -23 -57 -9

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x6970:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x6974:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x6976:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x6981:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x6983:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x6987:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 89 27
x6992:	mov [bp + 24], bp	; 3: -119 110 24
x6995:	add bp, 22	; 3: -125 -59 22
x6998:	jmp printChar	; 3: -23 -88 -9

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x7001:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x7006:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x7008:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x7012:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 114 27
x7017:	mov [bp + 24], bp	; 3: -119 110 24
x7020:	add bp, 22	; 3: -125 -59 22
x7023:	jmp printChar	; 3: -23 -113 -9

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x7026:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x7030:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1950 = 88
x7032:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x7034:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1950 = 120
x7036:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1950, offset 6
x7038:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x7041:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -113 27
x7046:	mov [bp + 24], bp	; 3: -119 110 24
x7049:	add bp, 22	; 3: -125 -59 22
x7052:	jmp printChar	; 3: -23 114 -9

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x7055:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7060:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x7062:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x7066:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -88 27
x7071:	mov [bp + 24], bp	; 3: -119 110 24
x7074:	add bp, 22	; 3: -125 -59 22
x7077:	jmp printChar	; 3: -23 89 -9

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x7080:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x7082:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7086:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x7090:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x7094:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x7098:	mov ax, [bp + 20]	; 3: -117 70 20
x7101:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x7104:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -50 27
x7109:	mov [bp + 24], bp	; 3: -119 110 24
x7112:	add bp, 22	; 3: -125 -59 22
x7115:	nop	; 1: -112
x7116:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x7118:	mov ax, [bp]	; 3: -117 70 0
x7121:	mov di, [bp + 4]	; 3: -117 126 4
x7124:	mov bp, [bp + 2]	; 3: -117 110 2
x7127:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x7129:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7134:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1926 = unsignedValue % base
x7136:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7140:	xor edx, edx	; 3: 102 49 -46
x7143:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1927 = int_to_int £temporary1926 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1927
x7147:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1928 = unsignedValue / base
x7150:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7154:	xor edx, edx	; 3: 102 49 -46
x7157:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1928, offset 6
x7161:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x7165:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x7169:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x7173:	mov ax, [bp + 14]	; 3: -117 70 14
x7176:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x7179:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 25 28
x7184:	mov [bp + 20], bp	; 3: -119 110 20
x7187:	add bp, 18	; 3: -125 -59 18
x7190:	nop	; 1: -112
x7191:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x7193:	mov ax, [bp + 16]	; 3: -117 70 16
x7196:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x7199:	mov ax, [bp + 14]	; 3: -117 70 14
x7202:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x7205:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 51 28
x7210:	mov [bp + 20], bp	; 3: -119 110 20
x7213:	add bp, 18	; 3: -125 -59 18
x7216:	nop	; 1: -112
x7217:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1930 = return_value

printUnsignedLongRec$17:	; c = £temporary1930
x7219:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x7222:	mov al, [bp + 18]	; 3: -118 70 18
x7225:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x7228:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 74 28
x7233:	mov [bp + 21], bp	; 3: -119 110 21
x7236:	add bp, 19	; 3: -125 -59 19
x7239:	jmp printChar	; 3: -23 -73 -10

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x7242:	mov ax, [bp]	; 3: -117 70 0
x7245:	mov di, [bp + 4]	; 3: -117 126 4
x7248:	mov bp, [bp + 2]	; 3: -117 110 2
x7251:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x7253:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x7257:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1916 = digit + 48
x7259:	mov bx, [bp + 6]	; 3: -117 94 6
x7262:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1917 = int_to_int £temporary1916 (Signed_Int -> Signed_Char)
x7265:	cmp bx, 0	; 3: -125 -5 0
x7268:	jge digitToChar$3	; 2: 125 4
x7270:	neg bx	; 2: -9 -37
x7272:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1917

digitToChar$4:	; return
x7274:	mov ax, [bp]	; 3: -117 70 0
x7277:	mov di, [bp + 4]	; 3: -117 126 4
x7280:	mov bp, [bp + 2]	; 3: -117 110 2
x7283:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x7285:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7289:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1918 = digit - 10
x7291:	mov bx, [bp + 6]	; 3: -117 94 6
x7294:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1919 = £temporary1918 + 65
x7297:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1920 = int_to_int £temporary1919 (Signed_Int -> Signed_Char)
x7300:	cmp bx, 0	; 3: -125 -5 0
x7303:	jge digitToChar$9	; 2: 125 4
x7305:	neg bx	; 2: -9 -37
x7307:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1920

digitToChar$10:	; return
x7309:	mov ax, [bp]	; 3: -117 70 0
x7312:	mov di, [bp + 4]	; 3: -117 126 4
x7315:	mov bp, [bp + 2]	; 3: -117 110 2
x7318:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1921 = digit - 10
x7320:	mov bx, [bp + 6]	; 3: -117 94 6
x7323:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1922 = £temporary1921 + 97
x7326:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1923 = int_to_int £temporary1922 (Signed_Int -> Signed_Char)
x7329:	cmp bx, 0	; 3: -125 -5 0
x7332:	jge digitToChar$14	; 2: 125 4
x7334:	neg bx	; 2: -9 -37
x7336:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1923

digitToChar$15:	; return
x7338:	mov ax, [bp]	; 3: -117 70 0
x7341:	mov di, [bp + 4]	; 3: -117 126 4
x7344:	mov bp, [bp + 2]	; 3: -117 110 2
x7347:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x7349:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x7352:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x7354:	fcompp	; 2: -34 -39
x7356:	fstsw ax	; 3: -101 -33 -32
x7359:	sahf	; 1: -98
x7360:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x7362:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x7366:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -44 28
x7371:	mov [bp + 24], bp	; 3: -119 110 24
x7374:	add bp, 22	; 3: -125 -59 22
x7377:	jmp printChar	; 3: -23 45 -10

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x7380:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1986 = -longDoubleValue
x7383:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x7385:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x7388:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x7393:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x7398:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1987 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7401:	fistp dword [container4bytes#]	; 4: -37 30 77 29
x7405:	mov eax, [container4bytes#]	; 4: 102 -95 77 29

printLongDoublePlain$14:	; longValue = £temporary1987
x7409:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x7413:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7417:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x7421:	mov ax, [bp + 14]	; 3: -117 70 14
x7424:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x7427:	mov ax, [bp + 16]	; 3: -117 70 16
x7430:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x7433:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 23 29
x7438:	mov [bp + 28], bp	; 3: -119 110 28
x7441:	add bp, 26	; 3: -125 -59 26
x7444:	jmp printLongInt	; 3: -23 86 -11

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x7447:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1989 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x7450:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1990 = longDoubleValue - £temporary1989
x7453:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x7455:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x7458:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x7461:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x7464:	mov ax, [bp + 18]	; 3: -117 70 18
x7467:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x7470:	mov ax, [bp + 20]	; 3: -117 70 20
x7473:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x7476:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 66 29
x7481:	mov [bp + 28], bp	; 3: -119 110 28
x7484:	add bp, 26	; 3: -125 -59 26
x7487:	nop	; 1: -112
x7488:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x7490:	mov ax, [bp]	; 3: -117 70 0
x7493:	mov di, [bp + 4]	; 3: -117 126 4
x7496:	mov bp, [bp + 2]	; 3: -117 110 2
x7499:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x7501:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x7505:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x7508:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1965 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7511:	fistp dword [container4bytes#]	; 4: -37 30 77 29
x7515:	mov eax, [container4bytes#]	; 4: 102 -95 77 29

printLongDoubleFraction$3:	; £temporary1966 = int_to_float £temporary1965 (Signed_Long_Int -> Long_Double)
x7519:	mov [container4bytes#], eax	; 4: 102 -93 77 29
x7523:	fild dword [container4bytes#]	; 4: -37 6 77 29

printLongDoubleFraction$4:	; £temporary1967 = longDoubleValue - £temporary1966
x7527:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x7529:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x7532:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7536:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 9
x7538:	mov word [bp + 16], 9	; 5: -57 70 16 9 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x7543:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7547:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x7549:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7553:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x7555:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x7559:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -107 29
x7564:	mov [bp + 20], bp	; 3: -119 110 20
x7567:	add bp, 18	; 3: -125 -59 18
x7570:	jmp printChar	; 3: -23 108 -11

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1973 = precision
x7573:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x7576:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1973 <= 0 goto 34
x7579:	cmp ax, 0	; 3: -125 -8 0
x7582:	jle printLongDoubleFraction$34	; 2: 126 67

printLongDoubleFraction$17:	; push float 10.0
x7584:	fld qword [float8$10.0#]	; 4: -35 6 -18 29

printLongDoubleFraction$18:	; push float longDoubleValue
x7588:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1975 = 10.0 * longDoubleValue
x7591:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; top float longDoubleValue10
x7593:	fst qword [bp + 18]	; 3: -35 86 18

printLongDoubleFraction$21:	; £temporary1976 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x7596:	fistp word [container2bytes#]	; 4: -33 30 0 18
x7600:	mov ax, [container2bytes#]	; 3: -95 0 18

printLongDoubleFraction$22:	; digitValue = £temporary1976
x7603:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$23:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$24:	; £temporary1977 = digitValue + 48
x7606:	mov ax, [bp + 26]	; 3: -117 70 26
x7609:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$25:	; £temporary1978 = int_to_int £temporary1977 (Signed_Int -> Signed_Char)
x7612:	cmp ax, 0	; 3: -125 -8 0
x7615:	jge printLongDoubleFraction$26	; 2: 125 4
x7617:	neg ax	; 2: -9 -40
x7619:	neg al	; 2: -10 -40

printLongDoubleFraction$26:	; parameter £temporary1978, offset 6
x7621:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$27:	; call function noellipse-noellipse printChar
x7624:	mov word [bp + 28], printLongDoubleFraction$28	; 5: -57 70 28 -42 29
x7629:	mov [bp + 30], bp	; 3: -119 110 30
x7632:	add bp, 28	; 3: -125 -59 28
x7635:	jmp printChar	; 3: -23 43 -11

printLongDoubleFraction$28:	; post call

printLongDoubleFraction$29:	; push float longDoubleValue10
x7638:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$30:	; £temporary1980 = int_to_float digitValue (Signed_Int -> Long_Double)
x7641:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$31:	; £temporary1981 = longDoubleValue10 - £temporary1980
x7644:	fsub	; 2: -34 -23

printLongDoubleFraction$32:	; pop float longDoubleValue
x7646:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$33:	; goto 14
x7649:	jmp printLongDoubleFraction$14	; 2: -21 -78

printLongDoubleFraction$34:	; return
x7651:	mov ax, [bp]	; 3: -117 70 0
x7654:	mov di, [bp + 4]	; 3: -117 126 4
x7657:	mov bp, [bp + 2]	; 3: -117 110 2
x7660:	jmp ax	; 2: -1 -32

printLongDoubleFraction$35:	; function end printLongDoubleFraction

float8$10.0#:
x7662:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x7670:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x7673:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x7675:	fcompp	; 2: -34 -39
x7677:	fstsw ax	; 3: -101 -33 -32
x7680:	sahf	; 1: -98
x7681:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x7683:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary888 = -x
x7686:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7688:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7690:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary892

fabs$9:	; return
x7693:	mov ax, [bp]	; 3: -117 70 0
x7696:	mov di, [bp + 4]	; 3: -117 126 4
x7699:	mov bp, [bp + 2]	; 3: -117 110 2
x7702:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x7704:	mov ax, [bp + 6]	; 3: -117 70 6
x7707:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x7710:	mov word [bp + 8], tolower$3	; 5: -57 70 8 44 30
x7715:	mov [bp + 10], bp	; 3: -119 110 10
x7718:	add bp, 8	; 3: -125 -59 8
x7721:	jmp isupper	; 3: -23 -115 -10

tolower$3:	; post call

tolower$4:	; £temporary422 = return_value

tolower$5:	; if £temporary422 == 0 goto 31
x7724:	cmp bx, 0	; 3: -125 -5 0
x7727:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x7729:	mov word [bp + 8], tolower$8	; 5: -57 70 8 63 30
x7734:	mov [bp + 10], bp	; 3: -119 110 10
x7737:	add bp, 8	; 3: -125 -59 8
x7740:	jmp localeconv	; 3: -23 -27 -10

tolower$8:	; post call

tolower$9:	; £temporary423 = return_value

tolower$10:	; localeConvPtr = £temporary423
x7743:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x7746:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7750:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary425 -> localeConvPtr = *localeConvPtr, offset 12
x7752:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary425 -> localeConvPtr
x7755:	mov ax, [si + 12]	; 3: -117 68 12
x7758:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary426 -> localeConvPtr = *localeConvPtr, offset 14
x7761:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary426 -> localeConvPtr
x7764:	mov ax, [si + 14]	; 3: -117 68 14
x7767:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x7770:	mov ax, [bp + 12]	; 3: -117 70 12
x7773:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x7776:	mov ax, [bp + 6]	; 3: -117 70 6
x7779:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x7782:	mov word [bp + 14], tolower$20	; 5: -57 70 14 116 30
x7787:	mov [bp + 16], bp	; 3: -119 110 16
x7790:	add bp, 14	; 3: -125 -59 14
x7793:	jmp strchr	; 3: -23 70 -4

tolower$20:	; post call

tolower$21:	; £temporary427 = return_value

tolower$22:	; index = £temporary427 - upperCase
x7796:	sub bx, [bp + 12]	; 3: 43 94 12
x7799:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary430 = lowerCase + index
x7802:	mov si, [bp + 10]	; 3: -117 118 10
x7805:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary429 -> £temporary430 = *£temporary430

tolower$25:	; £temporary431 = int_to_int £temporary429 -> £temporary430 (Signed_Char -> Signed_Int)
x7808:	mov bl, [si]	; 2: -118 28
x7810:	and bx, 255	; 4: -127 -29 -1 0
x7814:	cmp bl, 0	; 3: -128 -5 0
x7817:	jge tolower$26	; 2: 125 4
x7819:	neg bl	; 2: -10 -37
x7821:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary431

tolower$27:	; return
x7823:	mov ax, [bp]	; 3: -117 70 0
x7826:	mov di, [bp + 4]	; 3: -117 126 4
x7829:	mov bp, [bp + 2]	; 3: -117 110 2
x7832:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary432 = c + 32
x7834:	mov bx, [bp + 6]	; 3: -117 94 6
x7837:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary432

tolower$30:	; return
x7840:	mov ax, [bp]	; 3: -117 70 0
x7843:	mov di, [bp + 4]	; 3: -117 126 4
x7846:	mov bp, [bp + 2]	; 3: -117 110 2
x7849:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x7851:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x7854:	mov ax, [bp]	; 3: -117 70 0
x7857:	mov di, [bp + 4]	; 3: -117 126 4
x7860:	mov bp, [bp + 2]	; 3: -117 110 2
x7863:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x7865:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x7868:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x7870:	fcompp	; 2: -34 -39
x7872:	fstsw ax	; 3: -101 -33 -32
x7875:	sahf	; 1: -98
x7876:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x7878:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x7882:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -40 30
x7887:	mov [bp + 26], bp	; 3: -119 110 26
x7890:	add bp, 24	; 3: -125 -59 24
x7893:	jmp printChar	; 3: -23 41 -12

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x7896:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x7898:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x7901:	mov ax, [bp + 20]	; 3: -117 70 20
x7904:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x7907:	mov ax, [bp + 18]	; 3: -117 70 18
x7910:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x7913:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -9 30
x7918:	mov [bp + 26], bp	; 3: -119 110 26
x7921:	add bp, 24	; 3: -125 -59 24
x7924:	jmp printLongDoubleFraction	; 3: -23 90 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x7927:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7931:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary2006 = 69
x7933:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x7935:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary2006 = 101
x7937:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary2006, offset 6
x7939:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x7942:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 20 31
x7947:	mov [bp + 26], bp	; 3: -119 110 26
x7950:	add bp, 24	; 3: -125 -59 24
x7953:	jmp printChar	; 3: -23 -19 -13

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x7956:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x7960:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 38 31
x7965:	mov [bp + 26], bp	; 3: -119 110 26
x7968:	add bp, 24	; 3: -125 -59 24
x7971:	jmp printChar	; 3: -23 -37 -13

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x7974:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x7977:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x7980:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x7982:	fcompp	; 2: -34 -39
x7984:	fstsw ax	; 3: -101 -33 -32
x7987:	sahf	; 1: -98
x7988:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x7990:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x7994:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 72 31
x7999:	mov [bp + 26], bp	; 3: -119 110 26
x8002:	add bp, 24	; 3: -125 -59 24
x8005:	jmp printChar	; 3: -23 -71 -13

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x8008:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary2011 = -value
x8011:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x8013:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x8016:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x8019:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x8022:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 100 31
x8027:	mov [bp + 26], bp	; 3: -119 110 26
x8030:	add bp, 24	; 3: -125 -59 24
x8033:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary2012 = return_value

printLongDoubleExpo$43:	; £temporary2013 = float_to_int £temporary2012 (Double -> Signed_Int)
x8036:	fistp word [container2bytes#]	; 4: -33 30 0 18
x8040:	mov ax, [container2bytes#]	; 3: -95 0 18

printLongDoubleExpo$44:	; expo = £temporary2013
x8043:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x8046:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x8049:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x8052:	fld qword [float8$10.0#]	; 4: -35 6 -18 29

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x8056:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary2014 = int_to_float expo (Signed_Int -> Double)
x8059:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary2014, offset 14
x8062:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x8065:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -113 31
x8070:	mov [bp + 36], bp	; 3: -119 110 36
x8073:	add bp, 34	; 3: -125 -59 34
x8076:	jmp pow	; 3: -23 -22 1

printLongDoubleExpo$52:	; post call
x8079:	fstp qword [bp + 34]	; 3: -35 94 34
x8082:	fld qword [bp + 26]	; 3: -35 70 26
x8085:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary2015 = return_value

printLongDoubleExpo$54:	; £temporary2016 = value / £temporary2015
x8088:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x8090:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x8093:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x8096:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x8099:	mov ax, [bp + 14]	; 3: -117 70 14
x8102:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x8105:	mov ax, [bp + 16]	; 3: -117 70 16
x8108:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x8111:	mov ax, [bp + 18]	; 3: -117 70 18
x8114:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x8117:	mov ax, [bp + 20]	; 3: -117 70 20
x8120:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x8123:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -55 31
x8128:	mov [bp + 28], bp	; 3: -119 110 28
x8131:	add bp, 26	; 3: -125 -59 26
x8134:	jmp printLongDoublePlain	; 3: -23 -20 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x8137:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8141:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary2022 = 69
x8143:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x8145:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary2022 = 101
x8147:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary2022, offset 6
x8149:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x8152:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -26 31
x8157:	mov [bp + 28], bp	; 3: -119 110 28
x8160:	add bp, 26	; 3: -125 -59 26
x8163:	jmp printChar	; 3: -23 27 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary2024 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x8166:	mov ax, [bp + 24]	; 3: -117 70 24
x8169:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8175:	cmp ax, 0	; 3: -125 -8 0
x8178:	jge printLongDoubleExpo$75	; 2: 125 5
x8180:	neg ax	; 2: -9 -40
x8182:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary2024, offset 6
x8185:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x8189:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x8194:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x8199:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 21 32
x8204:	mov [bp + 28], bp	; 3: -119 110 28
x8207:	add bp, 26	; 3: -125 -59 26
x8210:	jmp printLongInt	; 3: -23 88 -14

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x8213:	mov ax, [bp]	; 3: -117 70 0
x8216:	mov di, [bp + 4]	; 3: -117 126 4
x8219:	mov bp, [bp + 2]	; 3: -117 110 2
x8222:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; push float 0.4342944820
x8224:	fld qword [float8$0.4342944820#]	; 4: -35 6 81 32

log10$1:	; call header integral zero 0 stack no zero 1
x8228:	fstp qword [bp + 14]	; 3: -35 94 14

log10$2:	; push float x
x8231:	fld qword [bp + 6]	; 3: -35 70 6

log10$3:	; parameter x, offset 6
x8234:	fstp qword [bp + 28]	; 3: -35 94 28

log10$4:	; call function noellipse-noellipse log
x8237:	mov word [bp + 22], log10$5	; 5: -57 70 22 59 32
x8242:	mov [bp + 24], bp	; 3: -119 110 24
x8245:	add bp, 22	; 3: -125 -59 22
x8248:	nop	; 1: -112
x8249:	jmp log	; 2: -21 30

log10$5:	; post call
x8251:	fstp qword [bp + 22]	; 3: -35 94 22
x8254:	fld qword [bp + 14]	; 3: -35 70 14
x8257:	fld qword [bp + 22]	; 3: -35 70 22

log10$6:	; £temporary515 = return_value

log10$7:	; £temporary516 = 0.4342944820 * £temporary515
x8260:	fmul	; 2: -34 -55

log10$8:	; return_value = £temporary516

log10$9:	; return
x8262:	mov ax, [bp]	; 3: -117 70 0
x8265:	mov di, [bp + 4]	; 3: -117 126 4
x8268:	mov bp, [bp + 2]	; 3: -117 110 2
x8271:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$0.4342944820#:
x8273:	dq 0.4342944820	; 8: 26 125 65 21 123 -53 -37 63

log:	; push float x_plus_1
x8281:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x8284:	fldz	; 2: -39 -18

log$2:	; if x_plus_1 <= 0 goto 70
x8286:	fcompp	; 2: -34 -39
x8288:	fstsw ax	; 3: -101 -33 -32
x8291:	sahf	; 1: -98
x8292:	jae log$70	; 4: 15 -125 -44 0

log$3:	; expo = 0
x8296:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x_plus_1
x8301:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push float 0.3678794411714423216036827922
x8304:	fld qword [float8$0.3678794411714423216036827922#]	; 4: -35 6 79 33

log$6:	; if x_plus_1 >= 0.3678794411714423216036827922 goto 13
x8308:	fcompp	; 2: -34 -39
x8310:	fstsw ax	; 3: -101 -33 -32
x8313:	sahf	; 1: -98
x8314:	jbe log$13	; 2: 118 17

log$7:	; push float x_plus_1
x8316:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push float 2.7182818284590452353
x8319:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 87 33

log$9:	; £temporary498 = x_plus_1 * 2.7182818284590452353
x8323:	fmul	; 2: -34 -55

log$10:	; pop float x_plus_1
x8325:	fstp qword [bp + 6]	; 3: -35 94 6

log$11:	; --expo
x8328:	dec word [bp + 14]	; 3: -1 78 14

log$12:	; goto 4
x8331:	jmp log$4	; 2: -21 -32

log$13:	; push float x_plus_1
x8333:	fld qword [bp + 6]	; 3: -35 70 6

log$14:	; push float 0.7357588823428846432073655843
x8336:	fld qword [float8$0.7357588823428846432073655843#]	; 4: -35 6 95 33

log$15:	; if x_plus_1 <= 0.7357588823428846432073655843 goto 22
x8340:	fcompp	; 2: -34 -39
x8342:	fstsw ax	; 3: -101 -33 -32
x8345:	sahf	; 1: -98
x8346:	jae log$22	; 2: 115 17

log$16:	; push float x_plus_1
x8348:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 2.7182818284590452353
x8351:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 87 33

log$18:	; £temporary501 = x_plus_1 / 2.7182818284590452353
x8355:	fdiv	; 2: -34 -7

log$19:	; pop float x_plus_1
x8357:	fstp qword [bp + 6]	; 3: -35 94 6

log$20:	; ++expo
x8360:	inc word [bp + 14]	; 3: -1 70 14

log$21:	; goto 13
x8363:	jmp log$13	; 2: -21 -32

log$22:	; push 1
x8365:	fld1	; 2: -39 -24

log$23:	; pop float n
x8367:	fstp qword [bp + 16]	; 3: -35 94 16

log$24:	; push 1
x8370:	fld1	; 2: -39 -24

log$25:	; pop float plusMinusOne
x8372:	fstp qword [bp + 24]	; 3: -35 94 24

log$26:	; push float x_plus_1
x8375:	fld qword [bp + 6]	; 3: -35 70 6

log$27:	; push 1
x8378:	fld1	; 2: -39 -24

log$28:	; £temporary503 = x_plus_1 - 1
x8380:	fsub	; 2: -34 -23

log$29:	; pop float x
x8382:	fstp qword [bp + 32]	; 3: -35 94 32

log$30:	; push 0
x8385:	fldz	; 2: -39 -18

log$31:	; pop float sum
x8387:	fstp qword [bp + 48]	; 3: -35 94 48

log$32:	; push float x
x8390:	fld qword [bp + 32]	; 3: -35 70 32

log$33:	; pop float power
x8393:	fstp qword [bp + 56]	; 3: -35 94 56

log$34:	; push float plusMinusOne
x8396:	fld qword [bp + 24]	; 3: -35 70 24

log$35:	; push float power
x8399:	fld qword [bp + 56]	; 3: -35 70 56

log$36:	; push float n
x8402:	fld qword [bp + 16]	; 3: -35 70 16

log$37:	; push 1
x8405:	fld1	; 2: -39 -24

log$38:	; n = n + 1
x8407:	fadd	; 2: -34 -63

log$39:	; top float n
x8409:	fst qword [bp + 16]	; 3: -35 86 16

log$40:	; push 1
x8412:	fld1	; 2: -39 -24

log$41:	; n = n - 1
x8414:	fsub	; 2: -34 -23

log$42:	; £temporary505 = power / £temporary504
x8416:	fdiv	; 2: -34 -7

log$43:	; £temporary506 = plusMinusOne * £temporary505
x8418:	fmul	; 2: -34 -55

log$44:	; pop float term
x8420:	fstp qword [bp + 40]	; 3: -35 94 40

log$45:	; push float sum
x8423:	fld qword [bp + 48]	; 3: -35 70 48

log$46:	; push float term
x8426:	fld qword [bp + 40]	; 3: -35 70 40

log$47:	; £temporary507 = sum + term
x8429:	fadd	; 2: -34 -63

log$48:	; pop float sum
x8431:	fstp qword [bp + 48]	; 3: -35 94 48

log$49:	; push float power
x8434:	fld qword [bp + 56]	; 3: -35 70 56

log$50:	; push float x
x8437:	fld qword [bp + 32]	; 3: -35 70 32

log$51:	; £temporary508 = power * x
x8440:	fmul	; 2: -34 -55

log$52:	; pop float power
x8442:	fstp qword [bp + 56]	; 3: -35 94 56

log$53:	; push float plusMinusOne
x8445:	fld qword [bp + 24]	; 3: -35 70 24

log$54:	; push float -1.0
x8448:	fld qword [float8$minus1.0#]	; 4: -35 6 103 33

log$55:	; £temporary509 = plusMinusOne * -1.0
x8452:	fmul	; 2: -34 -55

log$56:	; pop float plusMinusOne
x8454:	fstp qword [bp + 24]	; 3: -35 94 24

log$57:	; call header integral zero 0 stack zero 0

log$58:	; push float term
x8457:	fld qword [bp + 40]	; 3: -35 70 40

log$59:	; parameter term, offset 6
x8460:	fstp qword [bp + 70]	; 3: -35 94 70

log$60:	; call function noellipse-noellipse fabs
x8463:	mov word [bp + 64], log$61	; 5: -57 70 64 29 33
x8468:	mov [bp + 66], bp	; 3: -119 110 66
x8471:	add bp, 64	; 3: -125 -59 64
x8474:	jmp fabs	; 3: -23 -39 -4

log$61:	; post call

log$62:	; £temporary510 = return_value

log$63:	; push float 0.000000001
x8477:	fld qword [float8$0.000000001#]	; 4: -35 6 111 33

log$64:	; if £temporary510 > 0.000000001 goto 34
x8481:	fcompp	; 2: -34 -39
x8483:	fstsw ax	; 3: -101 -33 -32
x8486:	sahf	; 1: -98
x8487:	jb log$34	; 2: 114 -93

log$65:	; push float sum
x8489:	fld qword [bp + 48]	; 3: -35 70 48

log$66:	; £temporary512 = int_to_float expo (Signed_Int -> Double)
x8492:	fild word [bp + 14]	; 3: -33 70 14

log$67:	; £temporary513 = sum + £temporary512
x8495:	fadd	; 2: -34 -63

log$68:	; return_value = £temporary513

log$69:	; return
x8497:	mov ax, [bp]	; 3: -117 70 0
x8500:	mov di, [bp + 4]	; 3: -117 126 4
x8503:	mov bp, [bp + 2]	; 3: -117 110 2
x8506:	jmp ax	; 2: -1 -32

log$70:	; errno = 6
x8508:	mov word [errno], 6	; 6: -57 6 119 33 6 0

log$71:	; push 0
x8514:	fldz	; 2: -39 -18

log$72:	; return_value = 0

log$73:	; return
x8516:	mov ax, [bp]	; 3: -117 70 0
x8519:	mov di, [bp + 4]	; 3: -117 126 4
x8522:	mov bp, [bp + 2]	; 3: -117 110 2
x8525:	jmp ax	; 2: -1 -32

log$74:	; function end log

float8$0.3678794411714423216036827922#:
x8527:	dq 0.3678794411714423216036827922	; 8: 56 -17 44 54 86 -117 -41 63

float8$2.7182818284590452353#:
x8535:	dq 2.7182818284590452353	; 8: 105 87 20 -117 10 -65 5 64

float8$0.7357588823428846432073655843#:
x8543:	dq 0.7357588823428846432073655843	; 8: 56 -17 44 54 86 -117 -25 63

float8$minus1.0#:
x8551:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8559:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x8567:	dw 0	; 2: 0 0

pow:	; push float x
x8569:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x8572:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x8574:	fcompp	; 2: -34 -39
x8576:	fstsw ax	; 3: -101 -33 -32
x8579:	sahf	; 1: -98
x8580:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x8582:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x8585:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x8588:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x8591:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x8594:	mov word [bp + 30], pow$9	; 5: -57 70 30 -96 33
x8599:	mov [bp + 32], bp	; 3: -119 110 32
x8602:	add bp, 30	; 3: -125 -59 30
x8605:	jmp log	; 3: -23 -71 -2

pow$9:	; post call
x8608:	fstp qword [bp + 30]	; 3: -35 94 30
x8611:	fld qword [bp + 22]	; 3: -35 70 22
x8614:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary541 = return_value

pow$11:	; £temporary542 = y * £temporary541
x8617:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary542, offset 6
x8619:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x8622:	mov word [bp + 22], pow$14	; 5: -57 70 22 -68 33
x8627:	mov [bp + 24], bp	; 3: -119 110 24
x8630:	add bp, 22	; 3: -125 -59 22
x8633:	nop	; 1: -112
x8634:	jmp exp	; 2: -21 30

pow$14:	; post call

pow$15:	; £temporary543 = return_value

pow$16:	; return_value = £temporary543

pow$17:	; return
x8636:	mov ax, [bp]	; 3: -117 70 0
x8639:	mov di, [bp + 4]	; 3: -117 126 4
x8642:	mov bp, [bp + 2]	; 3: -117 110 2
x8645:	jmp ax	; 2: -1 -32

pow$18:	; errno = 6
x8647:	mov word [errno], 6	; 6: -57 6 119 33 6 0

pow$19:	; push 0
x8653:	fldz	; 2: -39 -18

pow$20:	; return_value = 0

pow$21:	; return
x8655:	mov ax, [bp]	; 3: -117 70 0
x8658:	mov di, [bp + 4]	; 3: -117 126 4
x8661:	mov bp, [bp + 2]	; 3: -117 110 2
x8664:	jmp ax	; 2: -1 -32

pow$22:	; function end pow

exp:	; push 0
x8666:	fldz	; 2: -39 -18

exp$1:	; pop float n
x8668:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x8671:	fld1	; 2: -39 -24

exp$3:	; pop float faculty
x8673:	fstp qword [bp + 22]	; 3: -35 94 22

exp$4:	; push 1
x8676:	fld1	; 2: -39 -24

exp$5:	; pop float power
x8678:	fstp qword [bp + 30]	; 3: -35 94 30

exp$6:	; push 0
x8681:	fldz	; 2: -39 -18

exp$7:	; pop float sum
x8683:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x8686:	fld qword [bp + 30]	; 3: -35 70 30

exp$9:	; push float faculty
x8689:	fld qword [bp + 22]	; 3: -35 70 22

exp$10:	; £temporary488 = power / faculty
x8692:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x8694:	fstp qword [bp + 38]	; 3: -35 94 38

exp$12:	; push float sum
x8697:	fld qword [bp + 46]	; 3: -35 70 46

exp$13:	; push float term
x8700:	fld qword [bp + 38]	; 3: -35 70 38

exp$14:	; £temporary489 = sum + term
x8703:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x8705:	fstp qword [bp + 46]	; 3: -35 94 46

exp$16:	; push float power
x8708:	fld qword [bp + 30]	; 3: -35 70 30

exp$17:	; push float x
x8711:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary490 = power * x
x8714:	fmul	; 2: -34 -55

exp$19:	; pop float power
x8716:	fstp qword [bp + 30]	; 3: -35 94 30

exp$20:	; push float faculty
x8719:	fld qword [bp + 22]	; 3: -35 70 22

exp$21:	; push float n
x8722:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x8725:	fld1	; 2: -39 -24

exp$23:	; n = n + 1
x8727:	fadd	; 2: -34 -63

exp$24:	; top float n
x8729:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary492 = faculty * £temporary491
x8732:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x8734:	fstp qword [bp + 22]	; 3: -35 94 22

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x8737:	fld qword [bp + 38]	; 3: -35 70 38

exp$29:	; parameter term, offset 6
x8740:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x8743:	mov word [bp + 54], exp$31	; 5: -57 70 54 53 34
x8748:	mov [bp + 56], bp	; 3: -119 110 56
x8751:	add bp, 54	; 3: -125 -59 54
x8754:	jmp fabs	; 3: -23 -63 -5

exp$31:	; post call

exp$32:	; £temporary493 = return_value

exp$33:	; push float 0.000000001
x8757:	fld qword [float8$0.000000001#]	; 4: -35 6 111 33

exp$34:	; if £temporary493 >= 0.000000001 goto 8
x8761:	fcompp	; 2: -34 -39
x8763:	fstsw ax	; 3: -101 -33 -32
x8766:	sahf	; 1: -98
x8767:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x8769:	fld qword [bp + 46]	; 3: -35 70 46

exp$36:	; return_value = sum

exp$37:	; return
x8772:	mov ax, [bp]	; 3: -117 70 0
x8775:	mov di, [bp + 4]	; 3: -117 126 4
x8778:	mov bp, [bp + 2]	; 3: -117 110 2
x8781:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

isdigit:	; if c < 48 goto 4
x8783:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x8787:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x8789:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x8793:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary357 = 1
x8795:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x8798:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary357 = 0
x8800:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary357

isdigit$6:	; return
x8803:	mov ax, [bp]	; 3: -117 70 0
x8806:	mov di, [bp + 4]	; 3: -117 126 4
x8809:	mov bp, [bp + 2]	; 3: -117 110 2
x8812:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

mktime:	; if tp == 0 goto 28
x8814:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x8818:	je mktime$28	; 4: 15 -124 -40 0

mktime$1:	; £temporary2763 -> tp = *tp, offset 10
x8822:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; £temporary2764 = £temporary2763 -> tp - 69
x8825:	mov ax, [si + 10]	; 3: -117 68 10
x8828:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; £temporary2765 = £temporary2764 / 4
x8831:	xor dx, dx	; 2: 49 -46
x8833:	idiv word [int2$4#]	; 4: -9 62 95 35

mktime$4:	; £temporary2766 = int_to_int £temporary2765 (Signed_Int -> Signed_Long_Int)
x8837:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8843:	cmp ax, 0	; 3: -125 -8 0
x8846:	jge mktime$5	; 2: 125 5
x8848:	neg ax	; 2: -9 -40
x8850:	neg eax	; 3: 102 -9 -40

mktime$5:	; leapDays = £temporary2766
x8853:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; £temporary2767 -> tp = *tp, offset 10
x8857:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; £temporary2768 = £temporary2767 -> tp - 70
x8860:	mov ax, [si + 10]	; 3: -117 68 10
x8863:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; £temporary2769 = £temporary2768 * 365
x8866:	xor dx, dx	; 2: 49 -46
x8868:	imul word [int2$365#]	; 4: -9 46 97 35

mktime$9:	; £temporary2770 = int_to_int £temporary2769 (Signed_Int -> Signed_Long_Int)
x8872:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8878:	cmp ax, 0	; 3: -125 -8 0
x8881:	jge mktime$10	; 2: 125 5
x8883:	neg ax	; 2: -9 -40
x8885:	neg eax	; 3: 102 -9 -40

mktime$10:	; £temporary2771 = £temporary2770 + leapDays
x8888:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; £temporary2772 -> tp = *tp, offset 14
x8892:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; £temporary2773 = int_to_int £temporary2772 -> tp (Signed_Int -> Signed_Long_Int)
x8895:	mov bx, [si + 14]	; 3: -117 92 14
x8898:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x8905:	cmp bx, 0	; 3: -125 -5 0
x8908:	jge mktime$13	; 2: 125 5
x8910:	neg bx	; 2: -9 -37
x8912:	neg ebx	; 3: 102 -9 -37

mktime$13:	; totalDays = £temporary2771 + £temporary2773
x8915:	add eax, ebx	; 3: 102 1 -40
x8918:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$14:	; £temporary2775 = totalDays * 86400
x8922:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x8926:	xor edx, edx	; 3: 102 49 -46
x8929:	imul dword [int4$86400#]	; 5: 102 -9 46 99 35
x8934:	mov ebx, eax	; 3: 102 -119 -61

mktime$15:	; £temporary2776 -> tp = *tp, offset 4
x8937:	mov si, [bp + 6]	; 3: -117 118 6

mktime$16:	; £temporary2777 = int_to_int £temporary2776 -> tp (Signed_Int -> Signed_Long_Int)
x8940:	mov ax, [si + 4]	; 3: -117 68 4
x8943:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8949:	cmp ax, 0	; 3: -125 -8 0
x8952:	jge mktime$17	; 2: 125 5
x8954:	neg ax	; 2: -9 -40
x8956:	neg eax	; 3: 102 -9 -40

mktime$17:	; £temporary2778 = £temporary2777 * 3600
x8959:	xor edx, edx	; 3: 102 49 -46
x8962:	imul dword [int4$3600#]	; 5: 102 -9 46 103 35

mktime$18:	; £temporary2779 = £temporary2775 + £temporary2778
x8967:	add ebx, eax	; 3: 102 1 -61

mktime$19:	; £temporary2780 -> tp = *tp, offset 2
x8970:	mov si, [bp + 6]	; 3: -117 118 6

mktime$20:	; £temporary2781 = int_to_int £temporary2780 -> tp (Signed_Int -> Signed_Long_Int)
x8973:	mov ax, [si + 2]	; 3: -117 68 2
x8976:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8982:	cmp ax, 0	; 3: -125 -8 0
x8985:	jge mktime$21	; 2: 125 5
x8987:	neg ax	; 2: -9 -40
x8989:	neg eax	; 3: 102 -9 -40

mktime$21:	; £temporary2782 = £temporary2781 * 60
x8992:	xor edx, edx	; 3: 102 49 -46
x8995:	imul dword [int4$60#]	; 5: 102 -9 46 107 35

mktime$22:	; £temporary2783 = £temporary2779 + £temporary2782
x9000:	add ebx, eax	; 3: 102 1 -61

mktime$23:	; £temporary2784 -> tp = *tp
x9003:	mov si, [bp + 6]	; 3: -117 118 6

mktime$24:	; £temporary2785 = int_to_int £temporary2784 -> tp (Signed_Int -> Signed_Long_Int)
x9006:	mov ax, [si]	; 2: -117 4
x9008:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9014:	cmp ax, 0	; 3: -125 -8 0
x9017:	jge mktime$25	; 2: 125 5
x9019:	neg ax	; 2: -9 -40
x9021:	neg eax	; 3: 102 -9 -40

mktime$25:	; £temporary2786 = £temporary2783 + £temporary2785
x9024:	add ebx, eax	; 3: 102 1 -61

mktime$26:	; return_value = £temporary2786

mktime$27:	; return
x9027:	mov ax, [bp]	; 3: -117 70 0
x9030:	mov di, [bp + 4]	; 3: -117 126 4
x9033:	mov bp, [bp + 2]	; 3: -117 110 2
x9036:	jmp ax	; 2: -1 -32

mktime$28:	; return_value = 0
x9038:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$29:	; return
x9044:	mov ax, [bp]	; 3: -117 70 0
x9047:	mov di, [bp + 4]	; 3: -117 126 4
x9050:	mov bp, [bp + 2]	; 3: -117 110 2
x9053:	jmp ax	; 2: -1 -32

mktime$30:	; function end mktime

int2$4#:
x9055:	dw 4	; 2: 4 0

int2$365#:
x9057:	dw 365	; 2: 109 1

int4$86400#:
x9059:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x9063:	dd 3600	; 4: 16 14 0 0

int4$60#:
x9067:	dd 60	; 4: 60 0 0 0

scanf:	; £temporary1796 = &format
x9071:	mov si, bp	; 2: -119 -18
x9073:	add si, 6	; 3: -125 -58 6

scanf$1:	; £temporary1797 = int_to_int £temporary1796 (Pointer -> Pointer)

scanf$2:	; arg_list = £temporary1797 + 2
x9076:	add si, 2	; 3: -125 -58 2
x9079:	mov [di + 8], si	; 3: -119 117 8

scanf$3:	; call header integral zero 0 stack zero 0

scanf$4:	; parameter format, offset 6
x9082:	mov ax, [bp + 6]	; 3: -117 70 6
x9085:	mov [di + 16], ax	; 3: -119 69 16

scanf$5:	; parameter arg_list, offset 8
x9088:	mov ax, [di + 8]	; 3: -117 69 8
x9091:	mov [di + 18], ax	; 3: -119 69 18

scanf$6:	; call function ellipse-noellipse vscanf
x9094:	mov word [di + 10], scanf$7	; 5: -57 69 10 -103 35
x9099:	mov [di + 12], bp	; 3: -119 109 12
x9102:	mov [di + 14], di	; 3: -119 125 14
x9105:	add di, 10	; 3: -125 -57 10
x9108:	mov bp, di	; 2: -119 -3
x9110:	nop	; 1: -112
x9111:	jmp vscanf	; 2: -21 11

scanf$7:	; post call

scanf$8:	; £temporary1799 = return_value

scanf$9:	; return_value = £temporary1799

scanf$10:	; return
x9113:	mov ax, [bp]	; 3: -117 70 0
x9116:	mov di, [bp + 4]	; 3: -117 126 4
x9119:	mov bp, [bp + 2]	; 3: -117 110 2
x9122:	jmp ax	; 2: -1 -32

scanf$11:	; function end scanf

vscanf:	; call header integral zero 0 stack zero 0

vscanf$1:	; parameter stdin, offset 6
x9124:	mov ax, [stdin]	; 3: -95 -49 35
x9127:	mov [bp + 16], ax	; 3: -119 70 16

vscanf$2:	; parameter format, offset 8
x9130:	mov ax, [bp + 6]	; 3: -117 70 6
x9133:	mov [bp + 18], ax	; 3: -119 70 18

vscanf$3:	; parameter arg_list, offset 10
x9136:	mov ax, [bp + 8]	; 3: -117 70 8
x9139:	mov [bp + 20], ax	; 3: -119 70 20

vscanf$4:	; call function noellipse-noellipse vfscanf
x9142:	mov word [bp + 10], vscanf$5	; 5: -57 70 10 -60 35
x9147:	mov [bp + 12], bp	; 3: -119 110 12
x9150:	add bp, 10	; 3: -125 -59 10
x9153:	nop	; 1: -112
x9154:	jmp vfscanf	; 2: -21 13

vscanf$5:	; post call

vscanf$6:	; £temporary1803 = return_value

vscanf$7:	; return_value = £temporary1803

vscanf$8:	; return
x9156:	mov ax, [bp]	; 3: -117 70 0
x9159:	mov di, [bp + 4]	; 3: -117 126 4
x9162:	mov bp, [bp + 2]	; 3: -117 110 2
x9165:	jmp ax	; 2: -1 -32

vscanf$9:	; function end vscanf

stdin:
x9167:	dw g_fileArray	; 2: 33 4

vfscanf:	; g_inStatus = 0
x9169:	mov word [g_inStatus], 0	; 6: -57 6 2 36 0 0

vfscanf$1:	; £temporary1815 = int_to_int inStream (Pointer -> Pointer)
x9175:	mov ax, [bp + 6]	; 3: -117 70 6

vfscanf$2:	; g_inDevice = £temporary1815
x9178:	mov [g_inDevice], ax	; 3: -93 4 36

vfscanf$3:	; call header integral zero 0 stack zero 0

vfscanf$4:	; parameter format, offset 6
x9181:	mov ax, [bp + 8]	; 3: -117 70 8
x9184:	mov [bp + 18], ax	; 3: -119 70 18

vfscanf$5:	; parameter arg_list, offset 8
x9187:	mov ax, [bp + 10]	; 3: -117 70 10
x9190:	mov [bp + 20], ax	; 3: -119 70 20

vfscanf$6:	; call function noellipse-noellipse scanFormat
x9193:	mov word [bp + 12], vfscanf$7	; 5: -57 70 12 -9 35
x9198:	mov [bp + 14], bp	; 3: -119 110 14
x9201:	add bp, 12	; 3: -125 -59 12
x9204:	nop	; 1: -112
x9205:	jmp scanFormat	; 2: -21 15

vfscanf$7:	; post call

vfscanf$8:	; £temporary1816 = return_value

vfscanf$9:	; return_value = £temporary1816

vfscanf$10:	; return
x9207:	mov ax, [bp]	; 3: -117 70 0
x9210:	mov di, [bp + 4]	; 3: -117 126 4
x9213:	mov bp, [bp + 2]	; 3: -117 110 2
x9216:	jmp ax	; 2: -1 -32

vfscanf$11:	; function end vfscanf

g_inStatus:
x9218:	db 0, 0	; 2: 0 0

g_inDevice:
x9220:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x9222:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x9227:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x9232:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x9237:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x9242:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x9247:	mov word [g_inCount], 0	; 6: -57 6 40 41 0 0

scanFormat$6:	; g_inChars = 0
x9253:	mov word [g_inChars], 0	; 6: -57 6 42 41 0 0

scanFormat$7:	; index = 0
x9259:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1606 = format + index
x9264:	mov si, [bp + 6]	; 3: -117 118 6
x9267:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1605 -> £temporary1606 = *£temporary1606

scanFormat$10:	; if £temporary1605 -> £temporary1606 == 0 goto 325
x9270:	cmp byte [si], 0	; 3: -128 60 0
x9273:	je scanFormat$325	; 4: 15 -124 -36 4

scanFormat$11:	; £temporary1610 = format + index
x9277:	mov si, [bp + 6]	; 3: -117 118 6
x9280:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1609 -> £temporary1610 = *£temporary1610

scanFormat$13:	; c = £temporary1609 -> £temporary1610
x9283:	mov al, [si]	; 2: -118 4
x9285:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1611 = int_to_int c (Signed_Char -> Signed_Int)
x9288:	mov al, [bp + 10]	; 3: -118 70 10
x9291:	and ax, 255	; 3: 37 -1 0
x9294:	cmp al, 0	; 2: 60 0
x9296:	jge scanFormat$15	; 2: 125 4
x9298:	neg al	; 2: -10 -40
x9300:	neg ax	; 2: -9 -40

scanFormat$15:	; d = £temporary1611 + 1
x9302:	inc ax	; 1: 64
x9303:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$16:	; if percent == 0 goto 317
x9306:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x9310:	je scanFormat$317	; 4: 15 -124 -110 4

scanFormat$17:	; £temporary1613 = d - 1
x9314:	mov ax, [bp + 55]	; 3: -117 70 55
x9317:	dec ax	; 1: 72

scanFormat$18:	; case £temporary1613 == 104 goto 36
x9318:	cmp ax, 104	; 3: -125 -8 104
x9321:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; case £temporary1613 == 108 goto 38
x9323:	cmp ax, 108	; 3: -125 -8 108
x9326:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; case £temporary1613 == 76 goto 40
x9328:	cmp ax, 76	; 3: -125 -8 76
x9331:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; case £temporary1613 == 42 goto 42
x9333:	cmp ax, 42	; 3: -125 -8 42
x9336:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; case £temporary1613 == 99 goto 44
x9338:	cmp ax, 99	; 3: -125 -8 99
x9341:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; case £temporary1613 == 115 goto 62
x9343:	cmp ax, 115	; 3: -125 -8 115
x9346:	je scanFormat$62	; 4: 15 -124 -72 0

scanFormat$24:	; case £temporary1613 == 100 goto 81
x9350:	cmp ax, 100	; 3: -125 -8 100
x9353:	je scanFormat$81	; 4: 15 -124 1 1

scanFormat$25:	; case £temporary1613 == 105 goto 81
x9357:	cmp ax, 105	; 3: -125 -8 105
x9360:	je scanFormat$81	; 4: 15 -124 -6 0

scanFormat$26:	; case £temporary1613 == 111 goto 116
x9364:	cmp ax, 111	; 3: -125 -8 111
x9367:	je scanFormat$116	; 4: 15 -124 -126 1

scanFormat$27:	; case £temporary1613 == 120 goto 152
x9371:	cmp ax, 120	; 3: -125 -8 120
x9374:	je scanFormat$152	; 4: 15 -124 -4 1

scanFormat$28:	; case £temporary1613 == 117 goto 188
x9378:	cmp ax, 117	; 3: -125 -8 117
x9381:	je scanFormat$188	; 4: 15 -124 118 2

scanFormat$29:	; case £temporary1613 == 103 goto 224
x9385:	cmp ax, 103	; 3: -125 -8 103
x9388:	je scanFormat$224	; 4: 15 -124 -16 2

scanFormat$30:	; case £temporary1613 == 102 goto 224
x9392:	cmp ax, 102	; 3: -125 -8 102
x9395:	je scanFormat$224	; 4: 15 -124 -23 2

scanFormat$31:	; case £temporary1613 == 101 goto 224
x9399:	cmp ax, 101	; 3: -125 -8 101
x9402:	je scanFormat$224	; 4: 15 -124 -30 2

scanFormat$32:	; case £temporary1613 == 91 goto 260
x9406:	cmp ax, 91	; 3: -125 -8 91
x9409:	je scanFormat$260	; 4: 15 -124 79 3

scanFormat$33:	; case £temporary1613 == 110 goto 301
x9413:	cmp ax, 110	; 3: -125 -8 110
x9416:	je scanFormat$301	; 4: 15 -124 -33 3

scanFormat$34:	; case end £temporary1613

scanFormat$35:	; goto 310
x9420:	jmp scanFormat$310	; 3: -23 -6 3

scanFormat$36:	; shortInt = 1
x9423:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$37:	; goto 323
x9428:	jmp scanFormat$323	; 3: -23 60 4

scanFormat$38:	; longIntOrDouble = 1
x9431:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$39:	; goto 323
x9436:	jmp scanFormat$323	; 3: -23 52 4

scanFormat$40:	; longDouble = 1
x9439:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$41:	; goto 323
x9444:	jmp scanFormat$323	; 3: -23 44 4

scanFormat$42:	; star = 1
x9447:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$43:	; goto 323
x9452:	jmp scanFormat$323	; 3: -23 36 4

scanFormat$44:	; call header integral zero 0 stack zero 0

scanFormat$45:	; call function noellipse-noellipse scanChar
x9455:	mov word [bp + 57], scanFormat$46	; 5: -57 70 57 -3 36
x9460:	mov [bp + 59], bp	; 3: -119 110 59
x9463:	add bp, 57	; 3: -125 -59 57
x9466:	jmp scanChar	; 3: -23 68 4

scanFormat$46:	; post call

scanFormat$47:	; £temporary1614 = return_value

scanFormat$48:	; charValue = £temporary1614
x9469:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$49:	; if star != 0 goto 57
x9472:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9476:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; arg_list = arg_list + 2
x9478:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$51:	; £temporary1618 = arg_list - 2
x9482:	mov si, [bp + 8]	; 3: -117 118 8
x9485:	sub si, 2	; 3: -125 -18 2

scanFormat$52:	; £temporary1619 = int_to_int £temporary1618 (Signed_Int -> Pointer)

scanFormat$53:	; £temporary1620 -> £temporary1619 = *£temporary1619

scanFormat$54:	; charPtr = £temporary1620 -> £temporary1619
x9488:	mov ax, [si]	; 2: -117 4
x9490:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$55:	; £temporary1621 -> charPtr = *charPtr
x9493:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$56:	; £temporary1621 -> charPtr = charValue
x9496:	mov al, [bp + 57]	; 3: -118 70 57
x9499:	mov [si], al	; 2: -120 4

scanFormat$57:	; percent = 0
x9501:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$58:	; £temporary1622 = int_to_int charValue (Signed_Char -> Signed_Int)
x9506:	mov al, [bp + 57]	; 3: -118 70 57
x9509:	and ax, 255	; 3: 37 -1 0
x9512:	cmp al, 0	; 2: 60 0
x9514:	jge scanFormat$59	; 2: 125 4
x9516:	neg al	; 2: -10 -40
x9518:	neg ax	; 2: -9 -40

scanFormat$59:	; if £temporary1622 == -1 goto 323
x9520:	cmp ax, -1	; 3: -125 -8 -1
x9523:	je scanFormat$323	; 4: 15 -124 -36 3

scanFormat$60:	; ++g_inCount
x9527:	inc word [g_inCount]	; 4: -1 6 40 41

scanFormat$61:	; goto 323
x9531:	jmp scanFormat$323	; 3: -23 -43 3

scanFormat$62:	; if star != 0 goto 74
x9534:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9538:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; arg_list = arg_list + 2
x9540:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$64:	; £temporary1628 = arg_list - 2
x9544:	mov si, [bp + 8]	; 3: -117 118 8
x9547:	sub si, 2	; 3: -125 -18 2

scanFormat$65:	; £temporary1629 = int_to_int £temporary1628 (Signed_Int -> Pointer)

scanFormat$66:	; £temporary1630 -> £temporary1629 = *£temporary1629

scanFormat$67:	; charPtr = £temporary1630 -> £temporary1629
x9550:	mov ax, [si]	; 2: -117 4
x9552:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$68:	; call header integral zero 0 stack zero 0

scanFormat$69:	; parameter charPtr, offset 6
x9555:	mov ax, [bp + 11]	; 3: -117 70 11
x9558:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$70:	; parameter 0, offset 8
x9561:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$71:	; call function noellipse-noellipse scanString
x9566:	mov word [bp + 57], scanFormat$72	; 5: -57 70 57 108 37
x9571:	mov [bp + 59], bp	; 3: -119 110 59
x9574:	add bp, 57	; 3: -125 -59 57
x9577:	jmp scanString	; 3: -23 68 4

scanFormat$72:	; post call

scanFormat$73:	; goto 79
x9580:	jmp scanFormat$79	; 2: -21 24

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter 0, offset 6
x9582:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$76:	; parameter 0, offset 8
x9587:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$77:	; call function noellipse-noellipse scanString
x9592:	mov word [bp + 57], scanFormat$78	; 5: -57 70 57 -122 37
x9597:	mov [bp + 59], bp	; 3: -119 110 59
x9600:	add bp, 57	; 3: -125 -59 57
x9603:	jmp scanString	; 3: -23 42 4

scanFormat$78:	; post call

scanFormat$79:	; percent = 0
x9606:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$80:	; goto 323
x9611:	jmp scanFormat$323	; 3: -23 -123 3

scanFormat$81:	; call header integral zero 0 stack zero 0

scanFormat$82:	; call function noellipse-noellipse scanLongInt
x9614:	mov word [bp + 57], scanFormat$83	; 5: -57 70 57 -100 37
x9619:	mov [bp + 59], bp	; 3: -119 110 59
x9622:	add bp, 57	; 3: -125 -59 57
x9625:	jmp scanLongInt	; 3: -23 -104 6

scanFormat$83:	; post call

scanFormat$84:	; £temporary1633 = return_value

scanFormat$85:	; longValue = £temporary1633
x9628:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$86:	; if star != 0 goto 114
x9632:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9636:	jne scanFormat$114	; 2: 117 111

scanFormat$87:	; if shortInt == 0 goto 97
x9638:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9642:	je scanFormat$97	; 2: 116 37

scanFormat$88:	; arg_list = arg_list + 2
x9644:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$89:	; £temporary1637 = arg_list - 2
x9648:	mov si, [bp + 8]	; 3: -117 118 8
x9651:	sub si, 2	; 3: -125 -18 2

scanFormat$90:	; £temporary1638 = int_to_int £temporary1637 (Signed_Int -> Pointer)

scanFormat$91:	; £temporary1639 -> £temporary1638 = *£temporary1638

scanFormat$92:	; shortPtr = £temporary1639 -> £temporary1638
x9654:	mov ax, [si]	; 2: -117 4
x9656:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$93:	; £temporary1640 -> shortPtr = *shortPtr
x9659:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$94:	; £temporary1641 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x9662:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9666:	cmp eax, 0	; 4: 102 -125 -8 0
x9670:	jge scanFormat$95	; 2: 125 5
x9672:	neg eax	; 3: 102 -9 -40
x9675:	neg al	; 2: -10 -40

scanFormat$95:	; £temporary1640 -> shortPtr = £temporary1641
x9677:	mov [si], al	; 2: -120 4

scanFormat$96:	; goto 114
x9679:	jmp scanFormat$114	; 2: -21 68

scanFormat$97:	; if longIntOrDouble != 0 goto 107
x9681:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9685:	jne scanFormat$107	; 2: 117 37

scanFormat$98:	; arg_list = arg_list + 2
x9687:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$99:	; £temporary1645 = arg_list - 2
x9691:	mov si, [bp + 8]	; 3: -117 118 8
x9694:	sub si, 2	; 3: -125 -18 2

scanFormat$100:	; £temporary1646 = int_to_int £temporary1645 (Signed_Int -> Pointer)

scanFormat$101:	; £temporary1647 -> £temporary1646 = *£temporary1646

scanFormat$102:	; intPtr = £temporary1647 -> £temporary1646
x9697:	mov ax, [si]	; 2: -117 4
x9699:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$103:	; £temporary1648 -> intPtr = *intPtr
x9702:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$104:	; £temporary1649 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x9705:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9709:	cmp eax, 0	; 4: 102 -125 -8 0
x9713:	jge scanFormat$105	; 2: 125 5
x9715:	neg eax	; 3: 102 -9 -40
x9718:	neg ax	; 2: -9 -40

scanFormat$105:	; £temporary1648 -> intPtr = £temporary1649
x9720:	mov [si], ax	; 2: -119 4

scanFormat$106:	; goto 114
x9722:	jmp scanFormat$114	; 2: -21 25

scanFormat$107:	; arg_list = arg_list + 2
x9724:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$108:	; £temporary1651 = arg_list - 2
x9728:	mov si, [bp + 8]	; 3: -117 118 8
x9731:	sub si, 2	; 3: -125 -18 2

scanFormat$109:	; £temporary1652 = int_to_int £temporary1651 (Signed_Int -> Pointer)

scanFormat$110:	; £temporary1653 -> £temporary1652 = *£temporary1652

scanFormat$111:	; longPtr = £temporary1653 -> £temporary1652
x9734:	mov ax, [si]	; 2: -117 4
x9736:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$112:	; £temporary1654 -> longPtr = *longPtr
x9739:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$113:	; £temporary1654 -> longPtr = longValue
x9742:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9746:	mov [si], eax	; 3: 102 -119 4

scanFormat$114:	; percent = 0
x9749:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$115:	; goto 323
x9754:	jmp scanFormat$323	; 3: -23 -10 2

scanFormat$116:	; call header integral zero 0 stack zero 0

scanFormat$117:	; parameter 8, offset 6
x9757:	mov dword [bp + 63], 8	; 8: 102 -57 70 63 8 0 0 0

scanFormat$118:	; call function noellipse-noellipse scanUnsignedLongInt
x9765:	mov word [bp + 57], scanFormat$119	; 5: -57 70 57 51 38
x9770:	mov [bp + 59], bp	; 3: -119 110 59
x9773:	add bp, 57	; 3: -125 -59 57
x9776:	jmp scanUnsignedLongInt	; 3: -23 88 7

scanFormat$119:	; post call

scanFormat$120:	; £temporary1656 = return_value

scanFormat$121:	; unsignedLongValue = £temporary1656
x9779:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$122:	; if star != 0 goto 150
x9783:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9787:	jne scanFormat$150	; 2: 117 89

scanFormat$123:	; if shortInt == 0 goto 133
x9789:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9793:	je scanFormat$133	; 2: 116 26

scanFormat$124:	; arg_list = arg_list + 2
x9795:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$125:	; £temporary1660 = arg_list - 2
x9799:	mov si, [bp + 8]	; 3: -117 118 8
x9802:	sub si, 2	; 3: -125 -18 2

scanFormat$126:	; £temporary1661 = int_to_int £temporary1660 (Signed_Int -> Pointer)

scanFormat$127:	; £temporary1662 -> £temporary1661 = *£temporary1661

scanFormat$128:	; unsignedShortPtr = £temporary1662 -> £temporary1661
x9805:	mov ax, [si]	; 2: -117 4
x9807:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$129:	; £temporary1663 -> unsignedShortPtr = *unsignedShortPtr
x9810:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$130:	; £temporary1664 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9813:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$131:	; £temporary1663 -> unsignedShortPtr = £temporary1664
x9817:	mov [si], al	; 2: -120 4

scanFormat$132:	; goto 150
x9819:	jmp scanFormat$150	; 2: -21 57

scanFormat$133:	; if longIntOrDouble != 0 goto 143
x9821:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9825:	jne scanFormat$143	; 2: 117 26

scanFormat$134:	; arg_list = arg_list + 2
x9827:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$135:	; £temporary1668 = arg_list - 2
x9831:	mov si, [bp + 8]	; 3: -117 118 8
x9834:	sub si, 2	; 3: -125 -18 2

scanFormat$136:	; £temporary1669 = int_to_int £temporary1668 (Signed_Int -> Pointer)

scanFormat$137:	; £temporary1670 -> £temporary1669 = *£temporary1669

scanFormat$138:	; unsignedIntPtr = £temporary1670 -> £temporary1669
x9837:	mov ax, [si]	; 2: -117 4
x9839:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$139:	; £temporary1671 -> unsignedIntPtr = *unsignedIntPtr
x9842:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$140:	; £temporary1672 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9845:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$141:	; £temporary1671 -> unsignedIntPtr = £temporary1672
x9849:	mov [si], ax	; 2: -119 4

scanFormat$142:	; goto 150
x9851:	jmp scanFormat$150	; 2: -21 25

scanFormat$143:	; arg_list = arg_list + 2
x9853:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$144:	; £temporary1674 = arg_list - 2
x9857:	mov si, [bp + 8]	; 3: -117 118 8
x9860:	sub si, 2	; 3: -125 -18 2

scanFormat$145:	; £temporary1675 = int_to_int £temporary1674 (Signed_Int -> Pointer)

scanFormat$146:	; £temporary1676 -> £temporary1675 = *£temporary1675

scanFormat$147:	; unsignedLongPtr = £temporary1676 -> £temporary1675
x9863:	mov ax, [si]	; 2: -117 4
x9865:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$148:	; £temporary1677 -> unsignedLongPtr = *unsignedLongPtr
x9868:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$149:	; £temporary1677 -> unsignedLongPtr = unsignedLongValue
x9871:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x9875:	mov [si], eax	; 3: 102 -119 4

scanFormat$150:	; percent = 0
x9878:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$151:	; goto 323
x9883:	jmp scanFormat$323	; 3: -23 117 2

scanFormat$152:	; call header integral zero 0 stack zero 0

scanFormat$153:	; parameter 16, offset 6
x9886:	mov dword [bp + 63], 16	; 8: 102 -57 70 63 16 0 0 0

scanFormat$154:	; call function noellipse-noellipse scanUnsignedLongInt
x9894:	mov word [bp + 57], scanFormat$155	; 5: -57 70 57 -76 38
x9899:	mov [bp + 59], bp	; 3: -119 110 59
x9902:	add bp, 57	; 3: -125 -59 57
x9905:	jmp scanUnsignedLongInt	; 3: -23 -41 6

scanFormat$155:	; post call

scanFormat$156:	; £temporary1679 = return_value

scanFormat$157:	; unsignedLongValue = £temporary1679
x9908:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$158:	; if star != 0 goto 186
x9912:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9916:	jne scanFormat$186	; 2: 117 89

scanFormat$159:	; if shortInt == 0 goto 169
x9918:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9922:	je scanFormat$169	; 2: 116 26

scanFormat$160:	; arg_list = arg_list + 2
x9924:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$161:	; £temporary1683 = arg_list - 2
x9928:	mov si, [bp + 8]	; 3: -117 118 8
x9931:	sub si, 2	; 3: -125 -18 2

scanFormat$162:	; £temporary1684 = int_to_int £temporary1683 (Signed_Int -> Pointer)

scanFormat$163:	; £temporary1685 -> £temporary1684 = *£temporary1684

scanFormat$164:	; unsignedShortPtr = £temporary1685 -> £temporary1684
x9934:	mov ax, [si]	; 2: -117 4
x9936:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$165:	; £temporary1686 -> unsignedShortPtr = *unsignedShortPtr
x9939:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$166:	; £temporary1687 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9942:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$167:	; £temporary1686 -> unsignedShortPtr = £temporary1687
x9946:	mov [si], al	; 2: -120 4

scanFormat$168:	; goto 186
x9948:	jmp scanFormat$186	; 2: -21 57

scanFormat$169:	; if longIntOrDouble != 0 goto 179
x9950:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9954:	jne scanFormat$179	; 2: 117 26

scanFormat$170:	; arg_list = arg_list + 2
x9956:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$171:	; £temporary1691 = arg_list - 2
x9960:	mov si, [bp + 8]	; 3: -117 118 8
x9963:	sub si, 2	; 3: -125 -18 2

scanFormat$172:	; £temporary1692 = int_to_int £temporary1691 (Signed_Int -> Pointer)

scanFormat$173:	; £temporary1693 -> £temporary1692 = *£temporary1692

scanFormat$174:	; unsignedIntPtr = £temporary1693 -> £temporary1692
x9966:	mov ax, [si]	; 2: -117 4
x9968:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$175:	; £temporary1694 -> unsignedIntPtr = *unsignedIntPtr
x9971:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$176:	; £temporary1695 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9974:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$177:	; £temporary1694 -> unsignedIntPtr = £temporary1695
x9978:	mov [si], ax	; 2: -119 4

scanFormat$178:	; goto 186
x9980:	jmp scanFormat$186	; 2: -21 25

scanFormat$179:	; arg_list = arg_list + 2
x9982:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$180:	; £temporary1697 = arg_list - 2
x9986:	mov si, [bp + 8]	; 3: -117 118 8
x9989:	sub si, 2	; 3: -125 -18 2

scanFormat$181:	; £temporary1698 = int_to_int £temporary1697 (Signed_Int -> Pointer)

scanFormat$182:	; £temporary1699 -> £temporary1698 = *£temporary1698

scanFormat$183:	; unsignedLongPtr = £temporary1699 -> £temporary1698
x9992:	mov ax, [si]	; 2: -117 4
x9994:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$184:	; £temporary1700 -> unsignedLongPtr = *unsignedLongPtr
x9997:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$185:	; £temporary1700 -> unsignedLongPtr = unsignedLongValue
x10000:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10004:	mov [si], eax	; 3: 102 -119 4

scanFormat$186:	; percent = 0
x10007:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$187:	; goto 323
x10012:	jmp scanFormat$323	; 3: -23 -12 1

scanFormat$188:	; call header integral zero 0 stack zero 0

scanFormat$189:	; parameter 0, offset 6
x10015:	mov dword [bp + 63], 0	; 8: 102 -57 70 63 0 0 0 0

scanFormat$190:	; call function noellipse-noellipse scanUnsignedLongInt
x10023:	mov word [bp + 57], scanFormat$191	; 5: -57 70 57 53 39
x10028:	mov [bp + 59], bp	; 3: -119 110 59
x10031:	add bp, 57	; 3: -125 -59 57
x10034:	jmp scanUnsignedLongInt	; 3: -23 86 6

scanFormat$191:	; post call

scanFormat$192:	; £temporary1702 = return_value

scanFormat$193:	; unsignedLongValue = £temporary1702
x10037:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$194:	; if star != 0 goto 222
x10041:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10045:	jne scanFormat$222	; 2: 117 89

scanFormat$195:	; if shortInt == 0 goto 205
x10047:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10051:	je scanFormat$205	; 2: 116 26

scanFormat$196:	; arg_list = arg_list + 2
x10053:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$197:	; £temporary1706 = arg_list - 2
x10057:	mov si, [bp + 8]	; 3: -117 118 8
x10060:	sub si, 2	; 3: -125 -18 2

scanFormat$198:	; £temporary1707 = int_to_int £temporary1706 (Signed_Int -> Pointer)

scanFormat$199:	; £temporary1708 -> £temporary1707 = *£temporary1707

scanFormat$200:	; unsignedShortPtr = £temporary1708 -> £temporary1707
x10063:	mov ax, [si]	; 2: -117 4
x10065:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$201:	; £temporary1709 -> unsignedShortPtr = *unsignedShortPtr
x10068:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$202:	; £temporary1710 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10071:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$203:	; £temporary1709 -> unsignedShortPtr = £temporary1710
x10075:	mov [si], al	; 2: -120 4

scanFormat$204:	; goto 222
x10077:	jmp scanFormat$222	; 2: -21 57

scanFormat$205:	; if longIntOrDouble != 0 goto 215
x10079:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10083:	jne scanFormat$215	; 2: 117 26

scanFormat$206:	; arg_list = arg_list + 2
x10085:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$207:	; £temporary1714 = arg_list - 2
x10089:	mov si, [bp + 8]	; 3: -117 118 8
x10092:	sub si, 2	; 3: -125 -18 2

scanFormat$208:	; £temporary1715 = int_to_int £temporary1714 (Signed_Int -> Pointer)

scanFormat$209:	; £temporary1716 -> £temporary1715 = *£temporary1715

scanFormat$210:	; unsignedIntPtr = £temporary1716 -> £temporary1715
x10095:	mov ax, [si]	; 2: -117 4
x10097:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$211:	; £temporary1717 -> unsignedIntPtr = *unsignedIntPtr
x10100:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$212:	; £temporary1718 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10103:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$213:	; £temporary1717 -> unsignedIntPtr = £temporary1718
x10107:	mov [si], ax	; 2: -119 4

scanFormat$214:	; goto 222
x10109:	jmp scanFormat$222	; 2: -21 25

scanFormat$215:	; arg_list = arg_list + 2
x10111:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$216:	; £temporary1720 = arg_list - 2
x10115:	mov si, [bp + 8]	; 3: -117 118 8
x10118:	sub si, 2	; 3: -125 -18 2

scanFormat$217:	; £temporary1721 = int_to_int £temporary1720 (Signed_Int -> Pointer)

scanFormat$218:	; £temporary1722 -> £temporary1721 = *£temporary1721

scanFormat$219:	; unsignedLongPtr = £temporary1722 -> £temporary1721
x10121:	mov ax, [si]	; 2: -117 4
x10123:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$220:	; £temporary1723 -> unsignedLongPtr = *unsignedLongPtr
x10126:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$221:	; £temporary1723 -> unsignedLongPtr = unsignedLongValue
x10129:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10133:	mov [si], eax	; 3: 102 -119 4

scanFormat$222:	; percent = 0
x10136:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$223:	; goto 323
x10141:	jmp scanFormat$323	; 3: -23 115 1

scanFormat$224:	; call header integral zero 0 stack zero 0

scanFormat$225:	; call function noellipse-noellipse scanLongDouble
x10144:	mov word [bp + 57], scanFormat$226	; 5: -57 70 57 -82 39
x10149:	mov [bp + 59], bp	; 3: -119 110 59
x10152:	add bp, 57	; 3: -125 -59 57
x10155:	jmp scanLongDouble	; 3: -23 -94 8

scanFormat$226:	; post call

scanFormat$227:	; £temporary1725 = return_value

scanFormat$228:	; pop float longDoubleValue
x10158:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$229:	; if star != 0 goto 258
x10161:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10165:	jne scanFormat$258	; 2: 117 85

scanFormat$230:	; if longIntOrDouble == 0 goto 240
x10167:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10171:	je scanFormat$240	; 2: 116 25

scanFormat$231:	; arg_list = arg_list + 2
x10173:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$232:	; £temporary1729 = arg_list - 2
x10177:	mov si, [bp + 8]	; 3: -117 118 8
x10180:	sub si, 2	; 3: -125 -18 2

scanFormat$233:	; £temporary1730 = int_to_int £temporary1729 (Signed_Int -> Pointer)

scanFormat$234:	; £temporary1731 -> £temporary1730 = *£temporary1730

scanFormat$235:	; doublePtr = £temporary1731 -> £temporary1730
x10183:	mov ax, [si]	; 2: -117 4
x10185:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$236:	; £temporary1732 -> doublePtr = *doublePtr
x10188:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$237:	; push float longDoubleValue
x10191:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$238:	; pop float £temporary1732 -> doublePtr
x10194:	fstp qword [si]	; 2: -35 28

scanFormat$239:	; goto 258
x10196:	jmp scanFormat$258	; 2: -21 54

scanFormat$240:	; if longDouble == 0 goto 250
x10198:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x10202:	je scanFormat$250	; 2: 116 25

scanFormat$241:	; arg_list = arg_list + 2
x10204:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$242:	; £temporary1735 = arg_list - 2
x10208:	mov si, [bp + 8]	; 3: -117 118 8
x10211:	sub si, 2	; 3: -125 -18 2

scanFormat$243:	; £temporary1736 = int_to_int £temporary1735 (Signed_Int -> Pointer)

scanFormat$244:	; £temporary1737 -> £temporary1736 = *£temporary1736

scanFormat$245:	; longDoublePtr = £temporary1737 -> £temporary1736
x10214:	mov ax, [si]	; 2: -117 4
x10216:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$246:	; £temporary1738 -> longDoublePtr = *longDoublePtr
x10219:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$247:	; push float longDoubleValue
x10222:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$248:	; pop float £temporary1738 -> longDoublePtr
x10225:	fstp qword [si]	; 2: -35 28

scanFormat$249:	; goto 258
x10227:	jmp scanFormat$258	; 2: -21 23

scanFormat$250:	; arg_list = arg_list + 2
x10229:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$251:	; £temporary1740 = arg_list - 2
x10233:	mov si, [bp + 8]	; 3: -117 118 8
x10236:	sub si, 2	; 3: -125 -18 2

scanFormat$252:	; £temporary1741 = int_to_int £temporary1740 (Signed_Int -> Pointer)

scanFormat$253:	; £temporary1742 -> £temporary1741 = *£temporary1741

scanFormat$254:	; floatPtr = £temporary1742 -> £temporary1741
x10239:	mov ax, [si]	; 2: -117 4
x10241:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$255:	; £temporary1743 -> floatPtr = *floatPtr
x10244:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$256:	; push float longDoubleValue
x10247:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$257:	; pop float £temporary1743 -> floatPtr
x10250:	fstp dword [si]	; 2: -39 28

scanFormat$258:	; percent = 0
x10252:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$259:	; goto 323
x10257:	jmp scanFormat$323	; 3: -23 -1 0

scanFormat$260:	; not = 0
x10260:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$261:	; ++index
x10265:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$262:	; £temporary1749 = format + index
x10268:	mov si, [bp + 6]	; 3: -117 118 6
x10271:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$263:	; £temporary1748 -> £temporary1749 = *£temporary1749

scanFormat$264:	; if £temporary1748 -> £temporary1749 != 94 goto 267
x10274:	cmp byte [si], 94	; 3: -128 60 94
x10277:	jne scanFormat$267	; 2: 117 12

scanFormat$265:	; not = 1
x10279:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$266:	; startIndex = index + 1
x10284:	mov ax, [bp + 31]	; 3: -117 70 31
x10287:	inc ax	; 1: 64
x10288:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$267:	; £temporary1753 = format + index
x10291:	mov si, [bp + 6]	; 3: -117 118 6
x10294:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$268:	; £temporary1752 -> £temporary1753 = *£temporary1753

scanFormat$269:	; if £temporary1752 -> £temporary1753 == 93 goto 272
x10297:	cmp byte [si], 93	; 3: -128 60 93
x10300:	je scanFormat$272	; 2: 116 5

scanFormat$270:	; ++index
x10302:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$271:	; goto 267
x10305:	jmp scanFormat$267	; 2: -21 -16

scanFormat$272:	; £temporary1757 = format + index
x10307:	mov si, [bp + 6]	; 3: -117 118 6
x10310:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$273:	; £temporary1756 -> £temporary1757 = *£temporary1757

scanFormat$274:	; £temporary1756 -> £temporary1757 = 0
x10313:	mov byte [si], 0	; 3: -58 4 0

scanFormat$275:	; if star != 0 goto 291
x10316:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10320:	jne scanFormat$291	; 2: 117 53

scanFormat$276:	; arg_list = arg_list + 2
x10322:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$277:	; £temporary1761 = arg_list - 2
x10326:	mov si, [bp + 8]	; 3: -117 118 8
x10329:	sub si, 2	; 3: -125 -18 2

scanFormat$278:	; £temporary1762 = int_to_int £temporary1761 (Signed_Int -> Pointer)

scanFormat$279:	; £temporary1763 -> £temporary1762 = *£temporary1762

scanFormat$280:	; string = £temporary1763 -> £temporary1762
x10332:	mov ax, [si]	; 2: -117 4
x10334:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$281:	; call header integral zero 0 stack zero 0

scanFormat$282:	; parameter string, offset 6
x10337:	mov ax, [bp + 61]	; 3: -117 70 61
x10340:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$283:	; £temporary1765 = format + startIndex
x10343:	mov si, [bp + 6]	; 3: -117 118 6
x10346:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$284:	; £temporary1764 -> £temporary1765 = *£temporary1765

scanFormat$285:	; £temporary1766 = &£temporary1764 -> £temporary1765

scanFormat$286:	; parameter £temporary1766, offset 8
x10349:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$287:	; parameter not, offset 10
x10352:	mov ax, [bp + 57]	; 3: -117 70 57
x10355:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$288:	; call function noellipse-noellipse scanPattern
x10358:	mov word [bp + 63], scanFormat$289	; 5: -57 70 63 -124 40
x10363:	mov [bp + 65], bp	; 3: -119 110 65
x10366:	add bp, 63	; 3: -125 -59 63
x10369:	jmp scanPattern	; 3: -23 -2 9

scanFormat$289:	; post call

scanFormat$290:	; goto 323
x10372:	jmp scanFormat$323	; 3: -23 -116 0

scanFormat$291:	; call header integral zero 0 stack zero 0

scanFormat$292:	; parameter 0, offset 6
x10375:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$293:	; £temporary1769 = format + startIndex
x10380:	mov si, [bp + 6]	; 3: -117 118 6
x10383:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$294:	; £temporary1768 -> £temporary1769 = *£temporary1769

scanFormat$295:	; £temporary1770 = &£temporary1768 -> £temporary1769

scanFormat$296:	; parameter £temporary1770, offset 8
x10386:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$297:	; parameter not, offset 10
x10389:	mov ax, [bp + 57]	; 3: -117 70 57
x10392:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$298:	; call function noellipse-noellipse scanPattern
x10395:	mov word [bp + 61], scanFormat$299	; 5: -57 70 61 -87 40
x10400:	mov [bp + 63], bp	; 3: -119 110 63
x10403:	add bp, 61	; 3: -125 -59 61
x10406:	jmp scanPattern	; 3: -23 -39 9

scanFormat$299:	; post call

scanFormat$300:	; goto 323
x10409:	jmp scanFormat$323	; 2: -21 104

scanFormat$301:	; arg_list = arg_list + 2
x10411:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$302:	; £temporary1773 = arg_list - 2
x10415:	mov si, [bp + 8]	; 3: -117 118 8
x10418:	sub si, 2	; 3: -125 -18 2

scanFormat$303:	; £temporary1774 = int_to_int £temporary1773 (Signed_Int -> Pointer)

scanFormat$304:	; £temporary1775 -> £temporary1774 = *£temporary1774

scanFormat$305:	; charsPtr = £temporary1775 -> £temporary1774
x10421:	mov ax, [si]	; 2: -117 4
x10423:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$306:	; £temporary1776 -> charsPtr = *charsPtr
x10426:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$307:	; £temporary1776 -> charsPtr = g_inChars
x10429:	mov ax, [g_inChars]	; 3: -95 42 41
x10432:	mov [si], ax	; 2: -119 4

scanFormat$308:	; percent = 0
x10434:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$309:	; goto 323
x10439:	jmp scanFormat$323	; 2: -21 74

scanFormat$310:	; call header integral zero 0 stack zero 0

scanFormat$311:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x10441:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 44 41

scanFormat$312:	; £temporary1777 = int_to_int c (Signed_Char -> Signed_Int)
x10446:	mov al, [bp + 10]	; 3: -118 70 10
x10449:	and ax, 255	; 3: 37 -1 0
x10452:	cmp al, 0	; 2: 60 0
x10454:	jge scanFormat$313	; 2: 125 4
x10456:	neg al	; 2: -10 -40
x10458:	neg ax	; 2: -9 -40

scanFormat$313:	; parameter £temporary1777, offset 8
x10460:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$314:	; call function noellipse-ellipse printf, extra 0
x10463:	mov word [bp + 57], scanFormat$315	; 5: -57 70 57 -14 40
x10468:	mov [bp + 59], bp	; 3: -119 110 59
x10471:	add bp, 57	; 3: -125 -59 57
x10474:	mov di, bp	; 2: -119 -17
x10476:	add di, 2	; 3: -125 -57 2
x10479:	jmp printf	; 3: -23 -51 -38

scanFormat$315:	; post call

scanFormat$316:	; goto 323
x10482:	jmp scanFormat$323	; 2: -21 31

scanFormat$317:	; if c != 37 goto 323
x10484:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x10488:	jne scanFormat$323	; 2: 117 25

scanFormat$318:	; percent = 1
x10490:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$319:	; shortInt = 0
x10495:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$320:	; longIntOrDouble = 0
x10500:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$321:	; longDouble = 0
x10505:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$322:	; star = 0
x10510:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$323:	; ++index
x10515:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$324:	; goto 8
x10518:	jmp scanFormat$8	; 3: -23 23 -5

scanFormat$325:	; return_value = g_inCount
x10521:	mov bx, [g_inCount]	; 4: -117 30 40 41

scanFormat$326:	; return
x10525:	mov ax, [bp]	; 3: -117 70 0
x10528:	mov di, [bp + 4]	; 3: -117 126 4
x10531:	mov bp, [bp + 2]	; 3: -117 110 2
x10534:	jmp ax	; 2: -1 -32

scanFormat$327:	; function end scanFormat

g_inCount:
x10536:	db 0, 0	; 2: 0 0

g_inChars:
x10538:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x10540:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x10561:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x10565:	mov ax, [g_inStatus]	; 3: -95 2 36
x10568:	cmp ax, 0	; 3: -125 -8 0
x10571:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x10573:	cmp ax, 1	; 3: -125 -8 1
x10576:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x10578:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1331 = int_to_int g_inDevice (Pointer -> Pointer)
x10580:	mov ax, [g_inDevice]	; 3: -95 4 36

scanChar$6:	; stream = £temporary1331
x10583:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1332 -> stream = *stream, offset 2
x10586:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1332 -> stream
x10589:	mov ax, [si + 2]	; 3: -117 68 2
x10592:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x10595:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x10597:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x10600:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1337 = &c
x10603:	mov dx, bp	; 2: -119 -22
x10605:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1337

scanChar$14:	; interrupt 33
x10608:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x10610:	inc word [g_inChars]	; 4: -1 6 42 41

scanChar$16:	; return_value = c
x10614:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x10617:	mov ax, [bp]	; 3: -117 70 0
x10620:	mov di, [bp + 4]	; 3: -117 126 4
x10623:	mov bp, [bp + 2]	; 3: -117 110 2
x10626:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1339 = int_to_int g_inDevice (Pointer -> Pointer)
x10628:	mov ax, [g_inDevice]	; 3: -95 4 36

scanChar$19:	; inString = £temporary1339
x10631:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1340 = g_inChars
x10634:	mov ax, [g_inChars]	; 3: -95 42 41

scanChar$21:	; ++g_inChars
x10637:	inc word [g_inChars]	; 4: -1 6 42 41

scanChar$22:	; £temporary1342 = inString + £temporary1340
x10641:	mov si, [bp + 11]	; 3: -117 118 11
x10644:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1341 -> £temporary1342 = *£temporary1342

scanChar$24:	; return_value = £temporary1341 -> £temporary1342
x10646:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x10648:	mov ax, [bp]	; 3: -117 70 0
x10651:	mov di, [bp + 4]	; 3: -117 126 4
x10654:	mov bp, [bp + 2]	; 3: -117 110 2
x10657:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x10659:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x10661:	mov ax, [bp]	; 3: -117 70 0
x10664:	mov di, [bp + 4]	; 3: -117 126 4
x10667:	mov bp, [bp + 2]	; 3: -117 110 2
x10670:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x10672:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x10677:	mov word [bp + 12], scanString$3	; 5: -57 70 12 -61 41
x10682:	mov [bp + 14], bp	; 3: -119 110 14
x10685:	add bp, 12	; 3: -125 -59 12
x10688:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1394 = return_value

scanString$5:	; input = £temporary1394
x10691:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x10694:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1395 = int_to_int input (Signed_Char -> Signed_Int)
x10699:	mov al, [bp + 12]	; 3: -118 70 12
x10702:	and ax, 255	; 3: 37 -1 0
x10705:	cmp al, 0	; 2: 60 0
x10707:	jge scanString$9	; 2: 125 4
x10709:	neg al	; 2: -10 -40
x10711:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1395, offset 6
x10713:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x10716:	mov word [bp + 15], scanString$11	; 5: -57 70 15 -22 41
x10721:	mov [bp + 17], bp	; 3: -119 110 17
x10724:	add bp, 15	; 3: -125 -59 15
x10727:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1396 = return_value

scanString$13:	; if £temporary1396 == 0 goto 20
x10730:	cmp bx, 0	; 3: -125 -5 0
x10733:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x10735:	mov word [bp + 15], scanString$16	; 5: -57 70 15 -3 41
x10740:	mov [bp + 17], bp	; 3: -119 110 17
x10743:	add bp, 15	; 3: -125 -59 15
x10746:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1397 = return_value

scanString$18:	; input = £temporary1397
x10749:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x10752:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x10754:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x10758:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x10762:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10766:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1401 = int_to_int input (Signed_Char -> Signed_Int)
x10768:	mov al, [bp + 12]	; 3: -118 70 12
x10771:	and ax, 255	; 3: 37 -1 0
x10774:	cmp al, 0	; 2: 60 0
x10776:	jge scanString$24	; 2: 125 4
x10778:	neg al	; 2: -10 -40
x10780:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1401, offset 6
x10782:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x10785:	mov word [bp + 15], scanString$26	; 5: -57 70 15 47 42
x10790:	mov [bp + 17], bp	; 3: -119 110 17
x10793:	add bp, 15	; 3: -125 -59 15
x10796:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1402 = return_value

scanString$28:	; if £temporary1402 != 0 goto 45
x10799:	cmp bx, 0	; 3: -125 -5 0
x10802:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1405 = int_to_int input (Signed_Char -> Signed_Int)
x10804:	mov al, [bp + 12]	; 3: -118 70 12
x10807:	and ax, 255	; 3: 37 -1 0
x10810:	cmp al, 0	; 2: 60 0
x10812:	jge scanString$30	; 2: 125 4
x10814:	neg al	; 2: -10 -40
x10816:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1405 == -1 goto 45
x10818:	cmp ax, -1	; 3: -125 -8 -1
x10821:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x10823:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10827:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1410 = index
x10829:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x10832:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1412 = string + £temporary1410
x10835:	mov si, [bp + 6]	; 3: -117 118 6
x10838:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1411 -> £temporary1412 = *£temporary1412

scanString$36:	; £temporary1411 -> £temporary1412 = input
x10840:	mov al, [bp + 12]	; 3: -118 70 12
x10843:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x10845:	mov word [bp + 15], scanString$39	; 5: -57 70 15 107 42
x10850:	mov [bp + 17], bp	; 3: -119 110 17
x10853:	add bp, 15	; 3: -125 -59 15
x10856:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1413 = return_value

scanString$41:	; input = £temporary1413
x10859:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x10862:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x10867:	inc word [g_inChars]	; 4: -1 6 42 41

scanString$44:	; goto 22
x10871:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1416 = string + index
x10873:	mov si, [bp + 6]	; 3: -117 118 6
x10876:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1415 -> £temporary1416 = *£temporary1416

scanString$47:	; £temporary1415 -> £temporary1416 = 0
x10879:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x10882:	inc word [g_inChars]	; 4: -1 6 42 41

scanString$49:	; goto 126
x10886:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1418 = precision
x10889:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x10892:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1418 <= 0 goto 76
x10895:	cmp ax, 0	; 3: -125 -8 0
x10898:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1420 = int_to_int input (Signed_Char -> Signed_Int)
x10900:	mov al, [bp + 12]	; 3: -118 70 12
x10903:	and ax, 255	; 3: 37 -1 0
x10906:	cmp al, 0	; 2: 60 0
x10908:	jge scanString$55	; 2: 125 4
x10910:	neg al	; 2: -10 -40
x10912:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1420, offset 6
x10914:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x10917:	mov word [bp + 15], scanString$57	; 5: -57 70 15 -77 42
x10922:	mov [bp + 17], bp	; 3: -119 110 17
x10925:	add bp, 15	; 3: -125 -59 15
x10928:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1421 = return_value

scanString$59:	; if £temporary1421 != 0 goto 76
x10931:	cmp bx, 0	; 3: -125 -5 0
x10934:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1424 = int_to_int input (Signed_Char -> Signed_Int)
x10936:	mov al, [bp + 12]	; 3: -118 70 12
x10939:	and ax, 255	; 3: 37 -1 0
x10942:	cmp al, 0	; 2: 60 0
x10944:	jge scanString$61	; 2: 125 4
x10946:	neg al	; 2: -10 -40
x10948:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1424 == -1 goto 76
x10950:	cmp ax, -1	; 3: -125 -8 -1
x10953:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x10955:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10959:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1430 = index
x10961:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x10964:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1432 = string + £temporary1430
x10967:	mov si, [bp + 6]	; 3: -117 118 6
x10970:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1431 -> £temporary1432 = *£temporary1432

scanString$67:	; £temporary1431 -> £temporary1432 = input
x10972:	mov al, [bp + 12]	; 3: -118 70 12
x10975:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x10977:	mov word [bp + 15], scanString$70	; 5: -57 70 15 -17 42
x10982:	mov [bp + 17], bp	; 3: -119 110 17
x10985:	add bp, 15	; 3: -125 -59 15
x10988:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1433 = return_value

scanString$72:	; input = £temporary1433
x10991:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x10994:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x10999:	inc word [g_inChars]	; 4: -1 6 42 41

scanString$75:	; goto 50
x11003:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x11005:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11009:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1437 = string + index
x11013:	mov si, [bp + 6]	; 3: -117 118 6
x11016:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1436 -> £temporary1437 = *£temporary1437

scanString$79:	; £temporary1436 -> £temporary1437 = 0
x11019:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x11022:	inc word [g_inChars]	; 4: -1 6 42 41

scanString$81:	; goto 126
x11026:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x11029:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11033:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1440 = int_to_int input (Signed_Char -> Signed_Int)
x11035:	mov al, [bp + 12]	; 3: -118 70 12
x11038:	and ax, 255	; 3: 37 -1 0
x11041:	cmp al, 0	; 2: 60 0
x11043:	jge scanString$85	; 2: 125 4
x11045:	neg al	; 2: -10 -40
x11047:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1440, offset 6
x11049:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x11052:	mov word [bp + 15], scanString$87	; 5: -57 70 15 58 43
x11057:	mov [bp + 17], bp	; 3: -119 110 17
x11060:	add bp, 15	; 3: -125 -59 15
x11063:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1441 = return_value

scanString$89:	; if £temporary1441 != 0 goto 101
x11066:	cmp bx, 0	; 3: -125 -5 0
x11069:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1444 = int_to_int input (Signed_Char -> Signed_Int)
x11071:	mov al, [bp + 12]	; 3: -118 70 12
x11074:	and ax, 255	; 3: 37 -1 0
x11077:	cmp al, 0	; 2: 60 0
x11079:	jge scanString$91	; 2: 125 4
x11081:	neg al	; 2: -10 -40
x11083:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1444 == -1 goto 101
x11085:	cmp ax, -1	; 3: -125 -8 -1
x11088:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x11090:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11094:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x11096:	mov word [bp + 15], scanString$95	; 5: -57 70 15 102 43
x11101:	mov [bp + 17], bp	; 3: -119 110 17
x11104:	add bp, 15	; 3: -125 -59 15
x11107:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1449 = return_value

scanString$97:	; input = £temporary1449
x11110:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x11113:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x11118:	inc word [g_inChars]	; 4: -1 6 42 41

scanString$100:	; goto 83
x11122:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x11124:	inc word [g_inChars]	; 4: -1 6 42 41

scanString$102:	; goto 126
x11128:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1452 = precision
x11130:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x11133:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1452 <= 0 goto 124
x11136:	cmp ax, 0	; 3: -125 -8 0
x11139:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1454 = int_to_int input (Signed_Char -> Signed_Int)
x11141:	mov al, [bp + 12]	; 3: -118 70 12
x11144:	and ax, 255	; 3: 37 -1 0
x11147:	cmp al, 0	; 2: 60 0
x11149:	jge scanString$108	; 2: 125 4
x11151:	neg al	; 2: -10 -40
x11153:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1454, offset 6
x11155:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x11158:	mov word [bp + 15], scanString$110	; 5: -57 70 15 -92 43
x11163:	mov [bp + 17], bp	; 3: -119 110 17
x11166:	add bp, 15	; 3: -125 -59 15
x11169:	nop	; 1: -112
x11170:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1455 = return_value

scanString$112:	; if £temporary1455 != 0 goto 124
x11172:	cmp bx, 0	; 3: -125 -5 0
x11175:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1458 = int_to_int input (Signed_Char -> Signed_Int)
x11177:	mov al, [bp + 12]	; 3: -118 70 12
x11180:	and ax, 255	; 3: 37 -1 0
x11183:	cmp al, 0	; 2: 60 0
x11185:	jge scanString$114	; 2: 125 4
x11187:	neg al	; 2: -10 -40
x11189:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1458 == -1 goto 124
x11191:	cmp ax, -1	; 3: -125 -8 -1
x11194:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x11196:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11200:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x11202:	mov word [bp + 15], scanString$118	; 5: -57 70 15 -48 43
x11207:	mov [bp + 17], bp	; 3: -119 110 17
x11210:	add bp, 15	; 3: -125 -59 15
x11213:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1464 = return_value

scanString$120:	; input = £temporary1464
x11216:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x11219:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x11224:	inc word [g_inChars]	; 4: -1 6 42 41

scanString$123:	; goto 103
x11228:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x11230:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11234:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x11236:	inc word [g_inChars]	; 4: -1 6 42 41

scanString$126:	; if found == 0 goto 128
x11240:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x11244:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x11246:	inc word [g_inCount]	; 4: -1 6 40 41

scanString$128:	; return
x11250:	mov ax, [bp]	; 3: -117 70 0
x11253:	mov di, [bp + 4]	; 3: -117 126 4
x11256:	mov bp, [bp + 2]	; 3: -117 110 2
x11259:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x11261:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x11265:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x11267:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x11271:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x11273:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x11277:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x11279:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x11283:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x11285:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x11289:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x11291:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x11295:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary413 = 1
x11297:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x11300:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary413 = 0
x11302:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary413

isspace$10:	; return
x11305:	mov ax, [bp]	; 3: -117 70 0
x11308:	mov di, [bp + 4]	; 3: -117 126 4
x11311:	mov bp, [bp + 2]	; 3: -117 110 2
x11314:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x11316:	mov dword [bp + 6], 0	; 8: 102 -57 70 6 0 0 0 0

scanLongInt$1:	; minus = 0
x11324:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanLongInt$2:	; found = 0
x11329:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x11334:	mov word [bp + 14], scanLongInt$5	; 5: -57 70 14 84 44
x11339:	mov [bp + 16], bp	; 3: -119 110 16
x11342:	add bp, 14	; 3: -125 -59 14
x11345:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1491 = return_value

scanLongInt$7:	; input = £temporary1491
x11348:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1492 = int_to_int input (Signed_Char -> Signed_Int)
x11351:	mov al, [bp + 14]	; 3: -118 70 14
x11354:	and ax, 255	; 3: 37 -1 0
x11357:	cmp al, 0	; 2: 60 0
x11359:	jge scanLongInt$10	; 2: 125 4
x11361:	neg al	; 2: -10 -40
x11363:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1492, offset 6
x11365:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$11:	; call function noellipse-noellipse isspace
x11368:	mov word [bp + 15], scanLongInt$12	; 5: -57 70 15 118 44
x11373:	mov [bp + 17], bp	; 3: -119 110 17
x11376:	add bp, 15	; 3: -125 -59 15
x11379:	nop	; 1: -112
x11380:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1493 = return_value

scanLongInt$14:	; if £temporary1493 == 0 goto 21
x11382:	cmp bx, 0	; 3: -125 -5 0
x11385:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x11387:	mov word [bp + 15], scanLongInt$17	; 5: -57 70 15 -119 44
x11392:	mov [bp + 17], bp	; 3: -119 110 17
x11395:	add bp, 15	; 3: -125 -59 15
x11398:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1494 = return_value

scanLongInt$19:	; input = £temporary1494
x11401:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$20:	; goto 8
x11404:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x11406:	cmp byte [bp + 14], 43	; 4: -128 126 14 43
x11410:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x11412:	mov word [bp + 15], scanLongInt$24	; 5: -57 70 15 -94 44
x11417:	mov [bp + 17], bp	; 3: -119 110 17
x11420:	add bp, 15	; 3: -125 -59 15
x11423:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1497 = return_value

scanLongInt$26:	; input = £temporary1497
x11426:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$27:	; goto 35
x11429:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x11431:	cmp byte [bp + 14], 45	; 4: -128 126 14 45
x11435:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x11437:	mov word [bp + 10], 1	; 5: -57 70 10 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x11442:	mov word [bp + 15], scanLongInt$32	; 5: -57 70 15 -64 44
x11447:	mov [bp + 17], bp	; 3: -119 110 17
x11450:	add bp, 15	; 3: -125 -59 15
x11453:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1499 = return_value

scanLongInt$34:	; input = £temporary1499
x11456:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$35:	; call header integral zero 0 stack zero 0

scanLongInt$36:	; £temporary1500 = int_to_int input (Signed_Char -> Signed_Int)
x11459:	mov al, [bp + 14]	; 3: -118 70 14
x11462:	and ax, 255	; 3: 37 -1 0
x11465:	cmp al, 0	; 2: 60 0
x11467:	jge scanLongInt$37	; 2: 125 4
x11469:	neg al	; 2: -10 -40
x11471:	neg ax	; 2: -9 -40

scanLongInt$37:	; parameter £temporary1500, offset 6
x11473:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$38:	; call function noellipse-noellipse isdigit
x11476:	mov word [bp + 15], scanLongInt$39	; 5: -57 70 15 -30 44
x11481:	mov [bp + 17], bp	; 3: -119 110 17
x11484:	add bp, 15	; 3: -125 -59 15
x11487:	jmp isdigit	; 3: -23 109 -11

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1501 = return_value

scanLongInt$41:	; if £temporary1501 == 0 goto 53
x11490:	cmp bx, 0	; 3: -125 -5 0
x11493:	je scanLongInt$53	; 2: 116 66

scanLongInt$42:	; £temporary1502 = longValue * 10
x11495:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11499:	xor edx, edx	; 3: 102 49 -46
x11502:	imul dword [int4$10#]	; 5: 102 -9 46 -59 19

scanLongInt$43:	; £temporary1503 = input - 48
x11507:	mov bl, [bp + 14]	; 3: -118 94 14
x11510:	sub bl, 48	; 3: -128 -21 48

scanLongInt$44:	; £temporary1504 = int_to_int £temporary1503 (Signed_Char -> Signed_Long_Int)
x11513:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0
x11520:	cmp bl, 0	; 3: -128 -5 0
x11523:	jge scanLongInt$45	; 2: 125 5
x11525:	neg bl	; 2: -10 -37
x11527:	neg ebx	; 3: 102 -9 -37

scanLongInt$45:	; longValue = £temporary1502 + £temporary1504
x11530:	add eax, ebx	; 3: 102 1 -40
x11533:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$46:	; call header integral zero 0 stack zero 0

scanLongInt$47:	; call function noellipse-noellipse scanChar
x11537:	mov word [bp + 15], scanLongInt$48	; 5: -57 70 15 31 45
x11542:	mov [bp + 17], bp	; 3: -119 110 17
x11545:	add bp, 15	; 3: -125 -59 15
x11548:	jmp scanChar	; 3: -23 34 -4

scanLongInt$48:	; post call

scanLongInt$49:	; £temporary1506 = return_value

scanLongInt$50:	; input = £temporary1506
x11551:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$51:	; found = 1
x11554:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$52:	; goto 35
x11559:	jmp scanLongInt$35	; 2: -21 -102

scanLongInt$53:	; if minus == 0 goto 56
x11561:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11565:	je scanLongInt$56	; 2: 116 11

scanLongInt$54:	; £temporary1508 = -longValue
x11567:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11571:	neg eax	; 3: 102 -9 -40

scanLongInt$55:	; longValue = £temporary1508
x11574:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$56:	; if found == 0 goto 58
x11578:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x11582:	je scanLongInt$58	; 2: 116 4

scanLongInt$57:	; ++g_inCount
x11584:	inc word [g_inCount]	; 4: -1 6 40 41

scanLongInt$58:	; call header integral zero 0 stack zero 0

scanLongInt$59:	; parameter input, offset 6
x11588:	mov al, [bp + 14]	; 3: -118 70 14
x11591:	mov [bp + 21], al	; 3: -120 70 21

scanLongInt$60:	; call function noellipse-noellipse unscanChar
x11594:	mov word [bp + 15], scanLongInt$61	; 5: -57 70 15 88 45
x11599:	mov [bp + 17], bp	; 3: -119 110 17
x11602:	add bp, 15	; 3: -125 -59 15
x11605:	nop	; 1: -112
x11606:	jmp unscanChar	; 2: -21 15

scanLongInt$61:	; post call

scanLongInt$62:	; return_value = longValue
x11608:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

scanLongInt$63:	; return
x11612:	mov ax, [bp]	; 3: -117 70 0
x11615:	mov di, [bp + 4]	; 3: -117 126 4
x11618:	mov bp, [bp + 2]	; 3: -117 110 2
x11621:	jmp ax	; 2: -1 -32

scanLongInt$64:	; function end scanLongInt

unscanChar:	; case g_inStatus == 0 goto 4
x11623:	mov ax, [g_inStatus]	; 3: -95 2 36
x11626:	cmp ax, 0	; 3: -125 -8 0
x11629:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x11631:	cmp ax, 1	; 3: -125 -8 1
x11634:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x11636:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x11638:	dec word [g_inChars]	; 4: -1 14 42 41

unscanChar$5:	; goto 7
x11642:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x11644:	dec word [g_inChars]	; 4: -1 14 42 41

unscanChar$7:	; return
x11648:	mov ax, [bp]	; 3: -117 70 0
x11651:	mov di, [bp + 4]	; 3: -117 126 4
x11654:	mov bp, [bp + 2]	; 3: -117 110 2
x11657:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x11659:	mov dword [bp + 10], 0	; 8: 102 -57 70 10 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x11667:	mov word [bp + 18], scanUnsignedLongInt$3	; 5: -57 70 18 -95 45
x11672:	mov [bp + 20], bp	; 3: -119 110 20
x11675:	add bp, 18	; 3: -125 -59 18
x11678:	jmp scanChar	; 3: -23 -96 -5

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1516 = return_value

scanUnsignedLongInt$5:	; input = £temporary1516
x11681:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$6:	; found = 1
x11684:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1517 = int_to_int input (Signed_Char -> Signed_Int)
x11689:	mov al, [bp + 18]	; 3: -118 70 18
x11692:	and ax, 255	; 3: 37 -1 0
x11695:	cmp al, 0	; 2: 60 0
x11697:	jge scanUnsignedLongInt$9	; 2: 125 4
x11699:	neg al	; 2: -10 -40
x11701:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1517, offset 6
x11703:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x11706:	mov word [bp + 21], scanUnsignedLongInt$11	; 5: -57 70 21 -56 45
x11711:	mov [bp + 23], bp	; 3: -119 110 23
x11714:	add bp, 21	; 3: -125 -59 21
x11717:	jmp isspace	; 3: -23 53 -2

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1518 = return_value

scanUnsignedLongInt$13:	; if £temporary1518 == 0 goto 20
x11720:	cmp bx, 0	; 3: -125 -5 0
x11723:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x11725:	mov word [bp + 21], scanUnsignedLongInt$16	; 5: -57 70 21 -37 45
x11730:	mov [bp + 23], bp	; 3: -119 110 23
x11733:	add bp, 21	; 3: -125 -59 21
x11736:	jmp scanChar	; 3: -23 102 -5

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1519 = return_value

scanUnsignedLongInt$18:	; input = £temporary1519
x11739:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$19:	; goto 7
x11742:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 48 goto 49
x11744:	cmp byte [bp + 18], 48	; 4: -128 126 18 48
x11748:	jne scanUnsignedLongInt$49	; 2: 117 118

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x11750:	mov word [bp + 21], scanUnsignedLongInt$23	; 5: -57 70 21 -12 45
x11755:	mov [bp + 23], bp	; 3: -119 110 23
x11758:	add bp, 21	; 3: -125 -59 21
x11761:	jmp scanChar	; 3: -23 77 -5

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1522 = return_value

scanUnsignedLongInt$25:	; input = £temporary1522
x11764:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$26:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$27:	; £temporary1523 = int_to_int input (Signed_Char -> Signed_Int)
x11767:	mov al, [bp + 18]	; 3: -118 70 18
x11770:	and ax, 255	; 3: 37 -1 0
x11773:	cmp al, 0	; 2: 60 0
x11775:	jge scanUnsignedLongInt$28	; 2: 125 4
x11777:	neg al	; 2: -10 -40
x11779:	neg ax	; 2: -9 -40

scanUnsignedLongInt$28:	; parameter £temporary1523, offset 6
x11781:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$29:	; call function noellipse-noellipse tolower
x11784:	mov word [bp + 21], scanUnsignedLongInt$30	; 5: -57 70 21 22 46
x11789:	mov [bp + 23], bp	; 3: -119 110 23
x11792:	add bp, 21	; 3: -125 -59 21
x11795:	jmp tolower	; 3: -23 2 -16

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1524 = return_value

scanUnsignedLongInt$32:	; if £temporary1524 != 120 goto 44
x11798:	cmp bx, 120	; 3: -125 -5 120
x11801:	jne scanUnsignedLongInt$44	; 2: 117 42

scanUnsignedLongInt$33:	; if base != 0 goto 36
x11803:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11808:	jne scanUnsignedLongInt$36	; 2: 117 8

scanUnsignedLongInt$34:	; £temporary1530 = 16
x11810:	mov eax, 16	; 6: 102 -72 16 0 0 0

scanUnsignedLongInt$35:	; goto 37
x11816:	jmp scanUnsignedLongInt$37	; 2: -21 4

scanUnsignedLongInt$36:	; £temporary1530 = base
x11818:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$37:	; base = £temporary1530
x11822:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$38:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$39:	; call function noellipse-noellipse scanChar
x11826:	mov word [bp + 21], scanUnsignedLongInt$40	; 5: -57 70 21 64 46
x11831:	mov [bp + 23], bp	; 3: -119 110 23
x11834:	add bp, 21	; 3: -125 -59 21
x11837:	jmp scanChar	; 3: -23 1 -5

scanUnsignedLongInt$40:	; post call

scanUnsignedLongInt$41:	; £temporary1531 = return_value

scanUnsignedLongInt$42:	; input = £temporary1531
x11840:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$43:	; goto 49
x11843:	jmp scanUnsignedLongInt$49	; 2: -21 23

scanUnsignedLongInt$44:	; if base != 0 goto 47
x11845:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11850:	jne scanUnsignedLongInt$47	; 2: 117 8

scanUnsignedLongInt$45:	; £temporary1536 = 8
x11852:	mov eax, 8	; 6: 102 -72 8 0 0 0

scanUnsignedLongInt$46:	; goto 48
x11858:	jmp scanUnsignedLongInt$48	; 2: -21 4

scanUnsignedLongInt$47:	; £temporary1536 = base
x11860:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$48:	; base = £temporary1536
x11864:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$49:	; if base != 0 goto 51
x11868:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11873:	jne scanUnsignedLongInt$51	; 2: 117 8

scanUnsignedLongInt$50:	; base = 10
x11875:	mov dword [bp + 6], 10	; 8: 102 -57 70 6 10 0 0 0

scanUnsignedLongInt$51:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$52:	; £temporary1538 = int_to_int input (Signed_Char -> Signed_Int)
x11883:	mov al, [bp + 18]	; 3: -118 70 18
x11886:	and ax, 255	; 3: 37 -1 0
x11889:	cmp al, 0	; 2: 60 0
x11891:	jge scanUnsignedLongInt$53	; 2: 125 4
x11893:	neg al	; 2: -10 -40
x11895:	neg ax	; 2: -9 -40

scanUnsignedLongInt$53:	; parameter £temporary1538, offset 6
x11897:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$54:	; call function noellipse-noellipse isxdigit
x11900:	mov word [bp + 21], scanUnsignedLongInt$55	; 5: -57 70 21 -118 46
x11905:	mov [bp + 23], bp	; 3: -119 110 23
x11908:	add bp, 21	; 3: -125 -59 21
x11911:	nop	; 1: -112
x11912:	jmp isxdigit	; 2: -21 127

scanUnsignedLongInt$55:	; post call

scanUnsignedLongInt$56:	; £temporary1539 = return_value

scanUnsignedLongInt$57:	; if £temporary1539 == 0 goto 74
x11914:	cmp bx, 0	; 3: -125 -5 0
x11917:	je scanUnsignedLongInt$74	; 2: 116 77

scanUnsignedLongInt$58:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$59:	; parameter input, offset 6
x11919:	mov al, [bp + 18]	; 3: -118 70 18
x11922:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$60:	; call function noellipse-noellipse digitToValue
x11925:	mov word [bp + 21], scanUnsignedLongInt$61	; 5: -57 70 21 -93 46
x11930:	mov [bp + 23], bp	; 3: -119 110 23
x11933:	add bp, 21	; 3: -125 -59 21
x11936:	jmp digitToValue	; 3: -23 -86 0

scanUnsignedLongInt$61:	; post call

scanUnsignedLongInt$62:	; £temporary1540 = return_value

scanUnsignedLongInt$63:	; digit = £temporary1540
x11939:	mov [bp + 14], ebx	; 4: 102 -119 94 14

scanUnsignedLongInt$64:	; if digit >= base goto 74
x11943:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11947:	cmp [bp + 14], eax	; 4: 102 57 70 14
x11951:	jae scanUnsignedLongInt$74	; 2: 115 43

scanUnsignedLongInt$65:	; £temporary1542 = unsignedLongValue * base
x11953:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x11957:	xor edx, edx	; 3: 102 49 -46
x11960:	mul dword [bp + 6]	; 4: 102 -9 102 6

scanUnsignedLongInt$66:	; unsignedLongValue = £temporary1542 + digit
x11964:	add eax, [bp + 14]	; 4: 102 3 70 14
x11968:	mov [bp + 10], eax	; 4: 102 -119 70 10

scanUnsignedLongInt$67:	; found = 1
x11972:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$68:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$69:	; call function noellipse-noellipse scanChar
x11977:	mov word [bp + 21], scanUnsignedLongInt$70	; 5: -57 70 21 -41 46
x11982:	mov [bp + 23], bp	; 3: -119 110 23
x11985:	add bp, 21	; 3: -125 -59 21
x11988:	jmp scanChar	; 3: -23 106 -6

scanUnsignedLongInt$70:	; post call

scanUnsignedLongInt$71:	; £temporary1544 = return_value

scanUnsignedLongInt$72:	; input = £temporary1544
x11991:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$73:	; goto 51
x11994:	jmp scanUnsignedLongInt$51	; 2: -21 -113

scanUnsignedLongInt$74:	; if found == 0 goto 76
x11996:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x12000:	je scanUnsignedLongInt$76	; 2: 116 4

scanUnsignedLongInt$75:	; ++g_inCount
x12002:	inc word [g_inCount]	; 4: -1 6 40 41

scanUnsignedLongInt$76:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$77:	; parameter input, offset 6
x12006:	mov al, [bp + 18]	; 3: -118 70 18
x12009:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$78:	; call function noellipse-noellipse unscanChar
x12012:	mov word [bp + 21], scanUnsignedLongInt$79	; 5: -57 70 21 -6 46
x12017:	mov [bp + 23], bp	; 3: -119 110 23
x12020:	add bp, 21	; 3: -125 -59 21
x12023:	jmp unscanChar	; 3: -23 109 -2

scanUnsignedLongInt$79:	; post call

scanUnsignedLongInt$80:	; return_value = unsignedLongValue
x12026:	mov ebx, [bp + 10]	; 4: 102 -117 94 10

scanUnsignedLongInt$81:	; return
x12030:	mov ax, [bp]	; 3: -117 70 0
x12033:	mov di, [bp + 4]	; 3: -117 126 4
x12036:	mov bp, [bp + 2]	; 3: -117 110 2
x12039:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$82:	; function end scanUnsignedLongInt

isxdigit:	; call header integral zero 0 stack zero 0

isxdigit$1:	; parameter c, offset 6
x12041:	mov ax, [bp + 6]	; 3: -117 70 6
x12044:	mov [bp + 14], ax	; 3: -119 70 14

isxdigit$2:	; call function noellipse-noellipse isdigit
x12047:	mov word [bp + 8], isxdigit$3	; 5: -57 70 8 29 47
x12052:	mov [bp + 10], bp	; 3: -119 110 10
x12055:	add bp, 8	; 3: -125 -59 8
x12058:	jmp isdigit	; 3: -23 50 -13

isxdigit$3:	; post call

isxdigit$4:	; £temporary366 = return_value

isxdigit$5:	; if £temporary366 != 0 goto 10
x12061:	cmp bx, 0	; 3: -125 -5 0
x12064:	jne isxdigit$10	; 2: 117 24

isxdigit$6:	; if c < 97 goto 8
x12066:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12070:	jl isxdigit$8	; 2: 124 6

isxdigit$7:	; if c <= 102 goto 10
x12072:	cmp word [bp + 6], 102	; 4: -125 126 6 102
x12076:	jle isxdigit$10	; 2: 126 12

isxdigit$8:	; if c < 65 goto 12
x12078:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x12082:	jl isxdigit$12	; 2: 124 11

isxdigit$9:	; if c > 70 goto 12
x12084:	cmp word [bp + 6], 70	; 4: -125 126 6 70
x12088:	jg isxdigit$12	; 2: 127 5

isxdigit$10:	; £temporary376 = 1
x12090:	mov bx, 1	; 3: -69 1 0

isxdigit$11:	; goto 13
x12093:	jmp isxdigit$13	; 2: -21 3

isxdigit$12:	; £temporary376 = 0
x12095:	mov bx, 0	; 3: -69 0 0

isxdigit$13:	; return_value = £temporary376

isxdigit$14:	; return
x12098:	mov ax, [bp]	; 3: -117 70 0
x12101:	mov di, [bp + 4]	; 3: -117 126 4
x12104:	mov bp, [bp + 2]	; 3: -117 110 2
x12107:	jmp ax	; 2: -1 -32

isxdigit$15:	; function end isxdigit

digitToValue:	; call header integral zero 0 stack zero 0

digitToValue$1:	; £temporary1475 = int_to_int input (Signed_Char -> Signed_Int)
x12109:	mov al, [bp + 6]	; 3: -118 70 6
x12112:	and ax, 255	; 3: 37 -1 0
x12115:	cmp al, 0	; 2: 60 0
x12117:	jge digitToValue$2	; 2: 125 4
x12119:	neg al	; 2: -10 -40
x12121:	neg ax	; 2: -9 -40

digitToValue$2:	; parameter £temporary1475, offset 6
x12123:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$3:	; call function noellipse-noellipse isdigit
x12126:	mov word [bp + 7], digitToValue$4	; 5: -57 70 7 108 47
x12131:	mov [bp + 9], bp	; 3: -119 110 9
x12134:	add bp, 7	; 3: -125 -59 7
x12137:	jmp isdigit	; 3: -23 -29 -14

digitToValue$4:	; post call

digitToValue$5:	; £temporary1476 = return_value

digitToValue$6:	; if £temporary1476 == 0 goto 11
x12140:	cmp bx, 0	; 3: -125 -5 0
x12143:	je digitToValue$11	; 2: 116 24

digitToValue$7:	; £temporary1477 = input - 48
x12145:	mov bl, [bp + 6]	; 3: -118 94 6
x12148:	sub bl, 48	; 3: -128 -21 48

digitToValue$8:	; £temporary1478 = int_to_int £temporary1477 (Signed_Char -> Unsigned_Long_Int)
x12151:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$9:	; return_value = £temporary1478

digitToValue$10:	; return
x12158:	mov ax, [bp]	; 3: -117 70 0
x12161:	mov di, [bp + 4]	; 3: -117 126 4
x12164:	mov bp, [bp + 2]	; 3: -117 110 2
x12167:	jmp ax	; 2: -1 -32

digitToValue$11:	; call header integral zero 0 stack zero 0

digitToValue$12:	; £temporary1479 = int_to_int input (Signed_Char -> Signed_Int)
x12169:	mov al, [bp + 6]	; 3: -118 70 6
x12172:	and ax, 255	; 3: 37 -1 0
x12175:	cmp al, 0	; 2: 60 0
x12177:	jge digitToValue$13	; 2: 125 4
x12179:	neg al	; 2: -10 -40
x12181:	neg ax	; 2: -9 -40

digitToValue$13:	; parameter £temporary1479, offset 6
x12183:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$14:	; call function noellipse-noellipse islower
x12186:	mov word [bp + 7], digitToValue$15	; 5: -57 70 7 -88 47
x12191:	mov [bp + 9], bp	; 3: -119 110 9
x12194:	add bp, 7	; 3: -125 -59 7
x12197:	nop	; 1: -112
x12198:	jmp islower	; 2: -21 61

digitToValue$15:	; post call

digitToValue$16:	; £temporary1480 = return_value

digitToValue$17:	; if £temporary1480 == 0 goto 23
x12200:	cmp bx, 0	; 3: -125 -5 0
x12203:	je digitToValue$23	; 2: 116 28

digitToValue$18:	; £temporary1481 = input - 97
x12205:	mov bl, [bp + 6]	; 3: -118 94 6
x12208:	sub bl, 97	; 3: -128 -21 97

digitToValue$19:	; £temporary1482 = int_to_int £temporary1481 (Signed_Char -> Unsigned_Long_Int)
x12211:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$20:	; £temporary1483 = £temporary1482 + 10
x12218:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$21:	; return_value = £temporary1483

digitToValue$22:	; return
x12222:	mov ax, [bp]	; 3: -117 70 0
x12225:	mov di, [bp + 4]	; 3: -117 126 4
x12228:	mov bp, [bp + 2]	; 3: -117 110 2
x12231:	jmp ax	; 2: -1 -32

digitToValue$23:	; £temporary1484 = input - 65
x12233:	mov bl, [bp + 6]	; 3: -118 94 6
x12236:	sub bl, 65	; 3: -128 -21 65

digitToValue$24:	; £temporary1485 = int_to_int £temporary1484 (Signed_Char -> Unsigned_Long_Int)
x12239:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$25:	; £temporary1486 = £temporary1485 + 10
x12246:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$26:	; return_value = £temporary1486

digitToValue$27:	; return
x12250:	mov ax, [bp]	; 3: -117 70 0
x12253:	mov di, [bp + 4]	; 3: -117 126 4
x12256:	mov bp, [bp + 2]	; 3: -117 110 2
x12259:	jmp ax	; 2: -1 -32

digitToValue$28:	; function end digitToValue

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x12261:	mov word [bp + 8], islower$2	; 5: -57 70 8 -13 47
x12266:	mov [bp + 10], bp	; 3: -119 110 10
x12269:	add bp, 8	; 3: -125 -59 8
x12272:	jmp localeconv	; 3: -23 49 -27

islower$2:	; post call

islower$3:	; £temporary314 = return_value

islower$4:	; localeConvPtr = £temporary314
x12275:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x12278:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12282:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary316 -> localeConvPtr = *localeConvPtr, offset 12
x12284:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary316 -> localeConvPtr, offset 6
x12287:	mov ax, [si + 12]	; 3: -117 68 12
x12290:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x12293:	mov ax, [bp + 6]	; 3: -117 70 6
x12296:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x12299:	mov word [bp + 10], islower$11	; 5: -57 70 10 25 48
x12304:	mov [bp + 12], bp	; 3: -119 110 12
x12307:	add bp, 10	; 3: -125 -59 10
x12310:	jmp strchr	; 3: -23 -95 -22

islower$11:	; post call

islower$12:	; £temporary317 = return_value

islower$13:	; if £temporary317 == 0 goto 16
x12313:	cmp bx, 0	; 3: -125 -5 0
x12316:	je islower$16	; 2: 116 5

islower$14:	; £temporary319 = 1
x12318:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x12321:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary319 = 0
x12323:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary319

islower$18:	; return
x12326:	mov ax, [bp]	; 3: -117 70 0
x12329:	mov di, [bp + 4]	; 3: -117 126 4
x12332:	mov bp, [bp + 2]	; 3: -117 110 2
x12335:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x12337:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12341:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x12343:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x12347:	jg islower$23	; 2: 127 5

islower$21:	; £temporary323 = 1
x12349:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x12352:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary323 = 0
x12354:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary323

islower$25:	; return
x12357:	mov ax, [bp]	; 3: -117 70 0
x12360:	mov di, [bp + 4]	; 3: -117 126 4
x12363:	mov bp, [bp + 2]	; 3: -117 110 2
x12366:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

scanLongDouble:	; minus = 0
x12368:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x12373:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x12378:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x12380:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x12383:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x12385:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x12388:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 114 48
x12393:	mov [bp + 28], bp	; 3: -119 110 28
x12396:	add bp, 26	; 3: -125 -59 26
x12399:	jmp scanChar	; 3: -23 -49 -8

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1554 = return_value

scanLongDouble$10:	; input = £temporary1554
x12402:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1555 = int_to_int input (Signed_Char -> Signed_Int)
x12405:	mov al, [bp + 26]	; 3: -118 70 26
x12408:	and ax, 255	; 3: 37 -1 0
x12411:	cmp al, 0	; 2: 60 0
x12413:	jge scanLongDouble$13	; 2: 125 4
x12415:	neg al	; 2: -10 -40
x12417:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1555, offset 6
x12419:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x12422:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 -108 48
x12427:	mov [bp + 29], bp	; 3: -119 110 29
x12430:	add bp, 27	; 3: -125 -59 27
x12433:	jmp isspace	; 3: -23 105 -5

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1556 = return_value

scanLongDouble$17:	; if £temporary1556 == 0 goto 24
x12436:	cmp bx, 0	; 3: -125 -5 0
x12439:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x12441:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 -89 48
x12446:	mov [bp + 29], bp	; 3: -119 110 29
x12449:	add bp, 27	; 3: -125 -59 27
x12452:	jmp scanChar	; 3: -23 -102 -8

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1557 = return_value

scanLongDouble$22:	; input = £temporary1557
x12455:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x12458:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x12460:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x12464:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x12466:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 -64 48
x12471:	mov [bp + 29], bp	; 3: -119 110 29
x12474:	add bp, 27	; 3: -125 -59 27
x12477:	jmp scanChar	; 3: -23 -127 -8

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1560 = return_value

scanLongDouble$29:	; input = £temporary1560
x12480:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x12483:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x12485:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x12489:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x12491:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x12496:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 -34 48
x12501:	mov [bp + 29], bp	; 3: -119 110 29
x12504:	add bp, 27	; 3: -125 -59 27
x12507:	jmp scanChar	; 3: -23 99 -8

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1562 = return_value

scanLongDouble$37:	; input = £temporary1562
x12510:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1563 = int_to_int input (Signed_Char -> Signed_Int)
x12513:	mov al, [bp + 26]	; 3: -118 70 26
x12516:	and ax, 255	; 3: 37 -1 0
x12519:	cmp al, 0	; 2: 60 0
x12521:	jge scanLongDouble$40	; 2: 125 4
x12523:	neg al	; 2: -10 -40
x12525:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1563, offset 6
x12527:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x12530:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 0 49
x12535:	mov [bp + 29], bp	; 3: -119 110 29
x12538:	add bp, 27	; 3: -125 -59 27
x12541:	jmp isdigit	; 3: -23 79 -15

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1564 = return_value

scanLongDouble$44:	; if £temporary1564 == 0 goto 60
x12544:	cmp bx, 0	; 3: -125 -5 0
x12547:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x12549:	fld qword [float8$10.0#]	; 4: -35 6 -18 29

scanLongDouble$46:	; push float value
x12553:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1565 = 10.0 * value
x12556:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1566 = input - 48
x12558:	mov al, [bp + 26]	; 3: -118 70 26
x12561:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1568 = int_to_int £temporary1566 (Signed_Char -> Signed_Int)
x12563:	and ax, 255	; 3: 37 -1 0
x12566:	cmp al, 0	; 2: 60 0
x12568:	jge scanLongDouble$50	; 2: 125 4
x12570:	neg al	; 2: -10 -40
x12572:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1567 = int_to_float £temporary1568 (Signed_Int -> Long_Double)
x12574:	mov [container2bytes#], ax	; 3: -93 0 18
x12577:	fild word [container2bytes#]	; 4: -33 6 0 18

scanLongDouble$51:	; £temporary1569 = £temporary1565 + £temporary1567
x12581:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x12583:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x12586:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 56 49
x12591:	mov [bp + 29], bp	; 3: -119 110 29
x12594:	add bp, 27	; 3: -125 -59 27
x12597:	jmp scanChar	; 3: -23 9 -8

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1570 = return_value

scanLongDouble$57:	; input = £temporary1570
x12600:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x12603:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x12608:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x12610:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x12614:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x12616:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 86 49
x12621:	mov [bp + 29], bp	; 3: -119 110 29
x12624:	add bp, 27	; 3: -125 -59 27
x12627:	jmp scanChar	; 3: -23 -21 -9

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1573 = return_value

scanLongDouble$65:	; input = £temporary1573
x12630:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1574 = int_to_int input (Signed_Char -> Signed_Int)
x12633:	mov al, [bp + 26]	; 3: -118 70 26
x12636:	and ax, 255	; 3: 37 -1 0
x12639:	cmp al, 0	; 2: 60 0
x12641:	jge scanLongDouble$68	; 2: 125 4
x12643:	neg al	; 2: -10 -40
x12645:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1574, offset 6
x12647:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x12650:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 120 49
x12655:	mov [bp + 29], bp	; 3: -119 110 29
x12658:	add bp, 27	; 3: -125 -59 27
x12661:	jmp isdigit	; 3: -23 -41 -16

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1575 = return_value

scanLongDouble$72:	; if £temporary1575 == 0 goto 92
x12664:	cmp bx, 0	; 3: -125 -5 0
x12667:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x12669:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x12672:	fld qword [float8$10.0#]	; 4: -35 6 -18 29

scanLongDouble$75:	; £temporary1576 = factor / 10.0
x12676:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x12678:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x12681:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x12684:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1577 = input - 48
x12687:	mov al, [bp + 26]	; 3: -118 70 26
x12690:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1579 = int_to_int £temporary1577 (Signed_Char -> Signed_Int)
x12692:	and ax, 255	; 3: 37 -1 0
x12695:	cmp al, 0	; 2: 60 0
x12697:	jge scanLongDouble$81	; 2: 125 4
x12699:	neg al	; 2: -10 -40
x12701:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1578 = int_to_float £temporary1579 (Signed_Int -> Long_Double)
x12703:	mov [container2bytes#], ax	; 3: -93 0 18
x12706:	fild word [container2bytes#]	; 4: -33 6 0 18

scanLongDouble$82:	; £temporary1580 = factor * £temporary1578
x12710:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1581 = value + £temporary1580
x12712:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x12714:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x12717:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 -69 49
x12722:	mov [bp + 29], bp	; 3: -119 110 29
x12725:	add bp, 27	; 3: -125 -59 27
x12728:	jmp scanChar	; 3: -23 -122 -9

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1582 = return_value

scanLongDouble$89:	; input = £temporary1582
x12731:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x12734:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x12739:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; parameter input, offset 6
x12741:	mov al, [bp + 26]	; 3: -118 70 26
x12744:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$94:	; call function noellipse-noellipse unscanChar
x12747:	mov word [bp + 27], scanLongDouble$95	; 5: -57 70 27 -39 49
x12752:	mov [bp + 29], bp	; 3: -119 110 29
x12755:	add bp, 27	; 3: -125 -59 27
x12758:	jmp unscanChar	; 3: -23 -114 -5

scanLongDouble$95:	; post call

scanLongDouble$96:	; call header integral zero 0 stack zero 0

scanLongDouble$97:	; £temporary1585 = int_to_int input (Signed_Char -> Signed_Int)
x12761:	mov al, [bp + 26]	; 3: -118 70 26
x12764:	and ax, 255	; 3: 37 -1 0
x12767:	cmp al, 0	; 2: 60 0
x12769:	jge scanLongDouble$98	; 2: 125 4
x12771:	neg al	; 2: -10 -40
x12773:	neg ax	; 2: -9 -40

scanLongDouble$98:	; parameter £temporary1585, offset 6
x12775:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$99:	; call function noellipse-noellipse tolower
x12778:	mov word [bp + 27], scanLongDouble$100	; 5: -57 70 27 -8 49
x12783:	mov [bp + 29], bp	; 3: -119 110 29
x12786:	add bp, 27	; 3: -125 -59 27
x12789:	jmp tolower	; 3: -23 32 -20

scanLongDouble$100:	; post call

scanLongDouble$101:	; £temporary1586 = return_value

scanLongDouble$102:	; if £temporary1586 != 101 goto 121
x12792:	cmp bx, 101	; 3: -125 -5 101
x12795:	jne scanLongDouble$121	; 2: 117 75

scanLongDouble$103:	; call header integral zero 0 stack zero 0

scanLongDouble$104:	; call function noellipse-noellipse scanLongInt
x12797:	mov word [bp + 27], scanLongDouble$105	; 5: -57 70 27 11 50
x12802:	mov [bp + 29], bp	; 3: -119 110 29
x12805:	add bp, 27	; 3: -125 -59 27
x12808:	jmp scanLongInt	; 3: -23 41 -6

scanLongDouble$105:	; post call

scanLongDouble$106:	; £temporary1588 = return_value

scanLongDouble$107:	; £temporary1589 = int_to_float £temporary1588 (Signed_Long_Int -> Double)
x12811:	mov [container4bytes#], ebx	; 5: 102 -119 30 77 29
x12816:	fild dword [container4bytes#]	; 4: -37 6 77 29

scanLongDouble$108:	; pop float exponent
x12820:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$109:	; push float value
x12823:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$110:	; call header integral zero 0 stack no zero 1
x12826:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$111:	; push float 10.0
x12829:	fld qword [float8$10.0#]	; 4: -35 6 -18 29

scanLongDouble$112:	; parameter 10.0, offset 6
x12833:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$113:	; push float exponent
x12836:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$114:	; parameter exponent, offset 14
x12839:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$115:	; call function noellipse-noellipse pow
x12842:	mov word [bp + 43], scanLongDouble$116	; 5: -57 70 43 56 50
x12847:	mov [bp + 45], bp	; 3: -119 110 45
x12850:	add bp, 43	; 3: -125 -59 43
x12853:	jmp pow	; 3: -23 65 -17

scanLongDouble$116:	; post call
x12856:	fstp qword [bp + 43]	; 3: -35 94 43
x12859:	fld qword [bp + 35]	; 3: -35 70 35
x12862:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$117:	; £temporary1590 = return_value

scanLongDouble$118:	; £temporary1591 = value * £temporary1590
x12865:	fmul	; 2: -34 -55

scanLongDouble$119:	; pop float value
x12867:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$120:	; goto 125
x12870:	jmp scanLongDouble$125	; 2: -21 20

scanLongDouble$121:	; call header integral zero 0 stack zero 0

scanLongDouble$122:	; parameter input, offset 6
x12872:	mov al, [bp + 26]	; 3: -118 70 26
x12875:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$123:	; call function noellipse-noellipse unscanChar
x12878:	mov word [bp + 27], scanLongDouble$124	; 5: -57 70 27 92 50
x12883:	mov [bp + 29], bp	; 3: -119 110 29
x12886:	add bp, 27	; 3: -125 -59 27
x12889:	jmp unscanChar	; 3: -23 11 -5

scanLongDouble$124:	; post call

scanLongDouble$125:	; if minus == 0 goto 129
x12892:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x12896:	je scanLongDouble$129	; 2: 116 8

scanLongDouble$126:	; push float value
x12898:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$127:	; £temporary1593 = -value
x12901:	fchs	; 2: -39 -32

scanLongDouble$128:	; pop float value
x12903:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$129:	; if found == 0 goto 131
x12906:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12910:	je scanLongDouble$131	; 2: 116 4

scanLongDouble$130:	; ++g_inCount
x12912:	inc word [g_inCount]	; 4: -1 6 40 41

scanLongDouble$131:	; push float value
x12916:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$132:	; return_value = value

scanLongDouble$133:	; return
x12919:	mov ax, [bp]	; 3: -117 70 0
x12922:	mov di, [bp + 4]	; 3: -117 126 4
x12925:	mov bp, [bp + 2]	; 3: -117 110 2
x12928:	jmp ax	; 2: -1 -32

scanLongDouble$134:	; function end scanLongDouble

scanPattern:	; index = 0
x12930:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x12935:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 -107 50
x12940:	mov [bp + 16], bp	; 3: -119 110 16
x12943:	add bp, 14	; 3: -125 -59 14
x12946:	jmp scanChar	; 3: -23 -84 -10

scanPattern$3:	; post call

scanPattern$4:	; £temporary1346 = return_value

scanPattern$5:	; input = £temporary1346
x12949:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1347 = int_to_int input (Signed_Char -> Signed_Int)
x12952:	mov al, [bp + 14]	; 3: -118 70 14
x12955:	and ax, 255	; 3: 37 -1 0
x12958:	cmp al, 0	; 2: 60 0
x12960:	jge scanPattern$8	; 2: 125 4
x12962:	neg al	; 2: -10 -40
x12964:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1347, offset 6
x12966:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x12969:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 -73 50
x12974:	mov [bp + 17], bp	; 3: -119 110 17
x12977:	add bp, 15	; 3: -125 -59 15
x12980:	jmp isspace	; 3: -23 70 -7

scanPattern$10:	; post call

scanPattern$11:	; £temporary1348 = return_value

scanPattern$12:	; if £temporary1348 == 0 goto 19
x12983:	cmp bx, 0	; 3: -125 -5 0
x12986:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x12988:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 -54 50
x12993:	mov [bp + 17], bp	; 3: -119 110 17
x12996:	add bp, 15	; 3: -125 -59 15
x12999:	jmp scanChar	; 3: -23 119 -10

scanPattern$15:	; post call

scanPattern$16:	; £temporary1349 = return_value

scanPattern$17:	; input = £temporary1349
x13002:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x13005:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x13007:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x13011:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x13015:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13019:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x13021:	mov ax, [bp + 8]	; 3: -117 70 8
x13024:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1354 = int_to_int input (Signed_Char -> Signed_Int)
x13027:	mov al, [bp + 14]	; 3: -118 70 14
x13030:	and ax, 255	; 3: 37 -1 0
x13033:	cmp al, 0	; 2: 60 0
x13035:	jge scanPattern$24	; 2: 125 4
x13037:	neg al	; 2: -10 -40
x13039:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1354, offset 8
x13041:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x13044:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 2 51
x13049:	mov [bp + 17], bp	; 3: -119 110 17
x13052:	add bp, 15	; 3: -125 -59 15
x13055:	jmp strchr	; 3: -23 -72 -25

scanPattern$26:	; post call

scanPattern$27:	; £temporary1355 = return_value

scanPattern$28:	; if £temporary1355 != 0 goto 38
x13058:	cmp bx, 0	; 3: -125 -5 0
x13061:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x13063:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13067:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x13069:	mov ax, [bp + 8]	; 3: -117 70 8
x13072:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1358 = int_to_int input (Signed_Char -> Signed_Int)
x13075:	mov al, [bp + 14]	; 3: -118 70 14
x13078:	and ax, 255	; 3: 37 -1 0
x13081:	cmp al, 0	; 2: 60 0
x13083:	jge scanPattern$33	; 2: 125 4
x13085:	neg al	; 2: -10 -40
x13087:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1358, offset 8
x13089:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x13092:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 50 51
x13097:	mov [bp + 17], bp	; 3: -119 110 17
x13100:	add bp, 15	; 3: -125 -59 15
x13103:	jmp strchr	; 3: -23 -120 -25

scanPattern$35:	; post call

scanPattern$36:	; £temporary1359 = return_value

scanPattern$37:	; if £temporary1359 != 0 goto 49
x13106:	cmp bx, 0	; 3: -125 -5 0
x13109:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1365 = index
x13111:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x13114:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1367 = string + £temporary1365
x13117:	mov si, [bp + 6]	; 3: -117 118 6
x13120:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1366 -> £temporary1367 = *£temporary1367

scanPattern$42:	; £temporary1366 -> £temporary1367 = input
x13122:	mov al, [bp + 14]	; 3: -118 70 14
x13125:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x13127:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 85 51
x13132:	mov [bp + 17], bp	; 3: -119 110 17
x13135:	add bp, 15	; 3: -125 -59 15
x13138:	jmp scanChar	; 3: -23 -20 -11

scanPattern$45:	; post call

scanPattern$46:	; £temporary1368 = return_value

scanPattern$47:	; input = £temporary1368
x13141:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x13144:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1370 = string + index
x13147:	mov si, [bp + 6]	; 3: -117 118 6
x13150:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1369 -> £temporary1370 = *£temporary1370

scanPattern$51:	; £temporary1369 -> £temporary1370 = 0
x13153:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x13156:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x13158:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13162:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x13164:	mov ax, [bp + 8]	; 3: -117 70 8
x13167:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1373 = int_to_int input (Signed_Char -> Signed_Int)
x13170:	mov al, [bp + 14]	; 3: -118 70 14
x13173:	and ax, 255	; 3: 37 -1 0
x13176:	cmp al, 0	; 2: 60 0
x13178:	jge scanPattern$57	; 2: 125 4
x13180:	neg al	; 2: -10 -40
x13182:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1373, offset 8
x13184:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x13187:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 -111 51
x13192:	mov [bp + 17], bp	; 3: -119 110 17
x13195:	add bp, 15	; 3: -125 -59 15
x13198:	jmp strchr	; 3: -23 41 -25

scanPattern$59:	; post call

scanPattern$60:	; £temporary1374 = return_value

scanPattern$61:	; if £temporary1374 != 0 goto 71
x13201:	cmp bx, 0	; 3: -125 -5 0
x13204:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x13206:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13210:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x13212:	mov ax, [bp + 8]	; 3: -117 70 8
x13215:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1377 = int_to_int input (Signed_Char -> Signed_Int)
x13218:	mov al, [bp + 14]	; 3: -118 70 14
x13221:	and ax, 255	; 3: 37 -1 0
x13224:	cmp al, 0	; 2: 60 0
x13226:	jge scanPattern$66	; 2: 125 4
x13228:	neg al	; 2: -10 -40
x13230:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1377, offset 8
x13232:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x13235:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 -63 51
x13240:	mov [bp + 17], bp	; 3: -119 110 17
x13243:	add bp, 15	; 3: -125 -59 15
x13246:	jmp strchr	; 3: -23 -7 -26

scanPattern$68:	; post call

scanPattern$69:	; £temporary1378 = return_value

scanPattern$70:	; if £temporary1378 != 0 goto 77
x13249:	cmp bx, 0	; 3: -125 -5 0
x13252:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x13254:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 -44 51
x13259:	mov [bp + 17], bp	; 3: -119 110 17
x13262:	add bp, 15	; 3: -125 -59 15
x13265:	jmp scanChar	; 3: -23 109 -11

scanPattern$73:	; post call

scanPattern$74:	; £temporary1384 = return_value

scanPattern$75:	; input = £temporary1384
x13268:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x13271:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x13273:	mov ax, [bp]	; 3: -117 70 0
x13276:	mov di, [bp + 4]	; 3: -117 126 4
x13279:	mov bp, [bp + 2]	; 3: -117 110 2
x13282:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

$Path:
x13284:	db "C:\D\Main.com", 0	; 14: 67 58 92 68 92 77 97 105 110 46 99 111 109 0

$StackTop:
x13298:
