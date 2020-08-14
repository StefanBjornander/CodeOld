	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -37 51
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
	; Initialize Argument List
x277:	mov si, bp	; 2: -119 -18
x279:	mov word [bp], $Path	; 5: -57 70 0 -23 2
x284:	add bp, 2	; 3: -125 -59 2
x287:	mov ax, 1	; 3: -72 1 0
x290:	mov bx, 129	; 3: -69 -127 0

$Initialize$1:
x293:	cmp byte [bx], 32	; 3: -128 63 32
x296:	je $Initialize$2	; 2: 116 8
x298:	cmp byte [bx], 13	; 3: -128 63 13
x301:	je $Initialize$5	; 2: 116 26
x303:	inc bx	; 1: 67
x304:	jmp $Initialize$1	; 2: -21 -13

$Initialize$2:
x306:	cmp ax, 1	; 3: -125 -8 1
x309:	je $Initialize$3	; 2: 116 3
x311:	mov byte [bx], 0	; 3: -58 7 0

$Initialize$3:
x314:	inc bx	; 1: 67
x315:	cmp byte [bx], 32	; 3: -128 63 32
x318:	je $Initialize$3	; 2: 116 -6

$Initialize$4:
x320:	mov [bp], bx	; 3: -119 94 0
x323:	add bp, 2	; 3: -125 -59 2
x326:	inc ax	; 1: 64
x327:	jmp $Initialize$1	; 2: -21 -36

$Initialize$5:
x329:	mov byte [bx], 0	; 3: -58 7 0
x332:	mov word [bp], 0	; 5: -57 70 0 0 0
x337:	add bp, 2	; 3: -125 -59 2
x340:	mov [bp + 6], ax	; 3: -119 70 6
x343:	mov [bp + 8], si	; 3: -119 118 8

main:	; call header integral zero 0 stack zero 0

main$1:	; parameter string_argc3A2025i0A#, offset 6
x346:	mov word [bp + 16], string_argc3A2025i0A#	; 5: -57 70 16 -9 2

main$2:	; parameter argc, offset 8
x351:	mov ax, [bp + 6]	; 3: -117 70 6
x354:	mov [bp + 18], ax	; 3: -119 70 18

main$3:	; call function noellipse-ellipse printf, extra 0
x357:	mov word [bp + 10], main$4	; 5: -57 70 10 120 1
x362:	mov [bp + 12], bp	; 3: -119 110 12
x365:	add bp, 10	; 3: -125 -59 10
x368:	mov di, bp	; 2: -119 -17
x370:	add di, 2	; 3: -125 -57 2
x373:	jmp printf	; 3: -23 62 2

main$4:	; post call

main$5:	; index = 0
x376:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$6:	; if index >= argc goto 18
x381:	mov ax, [bp + 6]	; 3: -117 70 6
x384:	cmp [bp + 10], ax	; 3: 57 70 10
x387:	jge main$18	; 2: 125 54

main$7:	; call header integral zero 0 stack zero 0

main$8:	; parameter string_25i3A203C25s3E0A#, offset 6
x389:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 1 3

main$9:	; parameter index, offset 8
x394:	mov ax, [bp + 10]	; 3: -117 70 10
x397:	mov [bp + 20], ax	; 3: -119 70 20

main$10:	; £temporary60 = index * 2
x400:	mov ax, [bp + 10]	; 3: -117 70 10
x403:	xor dx, dx	; 2: 49 -46
x405:	mul word [int2$2#]	; 4: -9 38 11 3

main$11:	; £temporary61 = argv + £temporary60
x409:	mov si, [bp + 8]	; 3: -117 118 8
x412:	add si, ax	; 2: 1 -58

main$12:	; £temporary59 -> £temporary61 = *£temporary61

main$13:	; parameter £temporary59 -> £temporary61, offset 10
x414:	mov ax, [si]	; 2: -117 4
x416:	mov [bp + 22], ax	; 3: -119 70 22

main$14:	; call function noellipse-ellipse printf, extra 0
x419:	mov word [bp + 12], main$15	; 5: -57 70 12 -74 1
x424:	mov [bp + 14], bp	; 3: -119 110 14
x427:	add bp, 12	; 3: -125 -59 12
x430:	mov di, bp	; 2: -119 -17
x432:	add di, 4	; 3: -125 -57 4
x435:	jmp printf	; 3: -23 0 2

main$15:	; post call

main$16:	; ++index
x438:	inc word [bp + 10]	; 3: -1 70 10

main$17:	; goto 6
x441:	jmp main$6	; 2: -21 -62

main$18:	; call header integral zero 0 stack zero 0

main$19:	; parameter string_0A#, offset 6
x443:	mov word [bp + 18], string_0A#	; 5: -57 70 18 13 3

main$20:	; call function noellipse-ellipse printf, extra 0
x448:	mov word [bp + 12], main$21	; 5: -57 70 12 -48 1
x453:	mov [bp + 14], bp	; 3: -119 110 14
x456:	add bp, 12	; 3: -125 -59 12
x459:	mov di, bp	; 2: -119 -17
x461:	jmp printf	; 3: -23 -26 1

main$21:	; post call

main$22:	; index = 0
x464:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$23:	; £temporary65 = index * 2
x469:	mov ax, [bp + 10]	; 3: -117 70 10
x472:	xor dx, dx	; 2: 49 -46
x474:	mul word [int2$2#]	; 4: -9 38 11 3

main$24:	; £temporary66 = argv + £temporary65
x478:	mov si, [bp + 8]	; 3: -117 118 8
x481:	add si, ax	; 2: 1 -58

main$25:	; £temporary64 -> £temporary66 = *£temporary66

main$26:	; if £temporary64 -> £temporary66 == 0 goto 38
x483:	cmp word [si], 0	; 3: -125 60 0
x486:	je main$38	; 2: 116 54

main$27:	; call header integral zero 0 stack zero 0

main$28:	; parameter string_25i3A203C25s3E0A#, offset 6
x488:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 1 3

main$29:	; parameter index, offset 8
x493:	mov ax, [bp + 10]	; 3: -117 70 10
x496:	mov [bp + 20], ax	; 3: -119 70 20

main$30:	; £temporary70 = index * 2
x499:	mov ax, [bp + 10]	; 3: -117 70 10
x502:	xor dx, dx	; 2: 49 -46
x504:	mul word [int2$2#]	; 4: -9 38 11 3

main$31:	; £temporary71 = argv + £temporary70
x508:	mov si, [bp + 8]	; 3: -117 118 8
x511:	add si, ax	; 2: 1 -58

main$32:	; £temporary69 -> £temporary71 = *£temporary71

main$33:	; parameter £temporary69 -> £temporary71, offset 10
x513:	mov ax, [si]	; 2: -117 4
x515:	mov [bp + 22], ax	; 3: -119 70 22

main$34:	; call function noellipse-ellipse printf, extra 0
x518:	mov word [bp + 12], main$35	; 5: -57 70 12 25 2
x523:	mov [bp + 14], bp	; 3: -119 110 14
x526:	add bp, 12	; 3: -125 -59 12
x529:	mov di, bp	; 2: -119 -17
x531:	add di, 4	; 3: -125 -57 4
x534:	jmp printf	; 3: -23 -99 1

main$35:	; post call

main$36:	; ++index
x537:	inc word [bp + 10]	; 3: -1 70 10

main$37:	; goto 23
x540:	jmp main$23	; 2: -21 -73

main$38:	; call header integral zero 0 stack zero 0

main$39:	; parameter string_0A#, offset 6
x542:	mov word [bp + 18], string_0A#	; 5: -57 70 18 13 3

main$40:	; call function noellipse-ellipse printf, extra 0
x547:	mov word [bp + 12], main$41	; 5: -57 70 12 51 2
x552:	mov [bp + 14], bp	; 3: -119 110 14
x555:	add bp, 12	; 3: -125 -59 12
x558:	mov di, bp	; 2: -119 -17
x560:	jmp printf	; 3: -23 -125 1

main$41:	; post call

main$42:	; call header integral zero 0 stack zero 0

main$43:	; parameter 0, offset 6
x563:	mov word [bp + 49], 0	; 5: -57 70 49 0 0

main$44:	; call function noellipse-noellipse mktime
x568:	mov word [bp + 43], main$45	; 5: -57 70 43 70 2
x573:	mov [bp + 45], bp	; 3: -119 110 45
x576:	add bp, 43	; 3: -125 -59 43
x579:	jmp mktime	; 3: -23 31 32

main$45:	; post call

main$46:	; call header integral zero 0 stack zero 0

main$47:	; parameter string_Hello210A#, offset 6
x582:	mov word [bp + 49], string_Hello210A#	; 5: -57 70 49 15 3

main$48:	; call function noellipse-ellipse printf, extra 0
x587:	mov word [bp + 43], main$49	; 5: -57 70 43 91 2
x592:	mov [bp + 45], bp	; 3: -119 110 45
x595:	add bp, 43	; 3: -125 -59 43
x598:	mov di, bp	; 2: -119 -17
x600:	jmp printf	; 3: -23 91 1

main$49:	; post call

main$50:	; call header integral zero 0 stack zero 0

main$51:	; parameter string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#, offset 6
x603:	mov word [bp + 49], string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#	; 5: -57 70 49 23 3

main$52:	; call function noellipse-ellipse printf, extra 0
x608:	mov word [bp + 43], main$53	; 5: -57 70 43 112 2
x613:	mov [bp + 45], bp	; 3: -119 110 45
x616:	add bp, 43	; 3: -125 -59 43
x619:	mov di, bp	; 2: -119 -17
x621:	jmp printf	; 3: -23 70 1

main$53:	; post call

main$54:	; call header integral zero 0 stack zero 0

main$55:	; parameter string_25c2025s2025i2025lf#, offset 6
x624:	mov word [bp + 49], string_25c2025s2025i2025lf#	; 5: -57 70 49 86 3

main$56:	; £temporary77 = &c
x629:	mov si, bp	; 2: -119 -18
x631:	add si, 22	; 3: -125 -58 22

main$57:	; parameter £temporary77, offset 8
x634:	mov [bp + 51], si	; 3: -119 118 51

main$58:	; parameter s, offset 10
x637:	mov [bp + 53], bp	; 3: -119 110 53
x640:	add word [bp + 53], 23	; 4: -125 70 53 23

main$59:	; £temporary78 = &i
x644:	mov si, bp	; 2: -119 -18
x646:	add si, 12	; 3: -125 -58 12

main$60:	; parameter £temporary78, offset 12
x649:	mov [bp + 55], si	; 3: -119 118 55

main$61:	; £temporary79 = &d
x652:	mov si, bp	; 2: -119 -18
x654:	add si, 14	; 3: -125 -58 14

main$62:	; parameter £temporary79, offset 14
x657:	mov [bp + 57], si	; 3: -119 118 57

main$63:	; call function noellipse-ellipse scanf, extra 0
x660:	mov word [bp + 43], main$64	; 5: -57 70 43 -89 2
x665:	mov [bp + 45], bp	; 3: -119 110 45
x668:	add bp, 43	; 3: -125 -59 43
x671:	mov di, bp	; 2: -119 -17
x673:	add di, 8	; 3: -125 -57 8
x676:	jmp scanf	; 3: -23 -65 32

main$64:	; post call

main$65:	; call header integral zero 0 stack zero 0

main$66:	; parameter string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#, offset 6
x679:	mov word [bp + 49], string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#	; 5: -57 70 49 99 3

main$67:	; £temporary81 = int_to_int c (Signed_Char -> Signed_Int)
x684:	mov al, [bp + 22]	; 3: -118 70 22
x687:	and ax, 255	; 3: 37 -1 0
x690:	cmp al, 0	; 2: 60 0
x692:	jge main$68	; 2: 125 4
x694:	neg al	; 2: -10 -40
x696:	neg ax	; 2: -9 -40

main$68:	; parameter £temporary81, offset 8
x698:	mov [bp + 51], ax	; 3: -119 70 51

main$69:	; parameter s, offset 10
x701:	mov [bp + 53], bp	; 3: -119 110 53
x704:	add word [bp + 53], 23	; 4: -125 70 53 23

main$70:	; parameter i, offset 12
x708:	mov ax, [bp + 12]	; 3: -117 70 12
x711:	mov [bp + 55], ax	; 3: -119 70 55

main$71:	; push float d
x714:	fld qword [bp + 14]	; 3: -35 70 14

main$72:	; parameter d, offset 14
x717:	fstp qword [bp + 57]	; 3: -35 94 57

main$73:	; call function noellipse-ellipse printf, extra 0
x720:	mov word [bp + 43], main$74	; 5: -57 70 43 -29 2
x725:	mov [bp + 45], bp	; 3: -119 110 45
x728:	add bp, 43	; 3: -125 -59 43
x731:	mov di, bp	; 2: -119 -17
x733:	add di, 14	; 3: -125 -57 14
x736:	jmp printf	; 3: -23 -45 0

main$74:	; post call

main$75:	; exit 0
x739:	mov al, 0	; 2: -80 0
x741:	mov ah, 76	; 2: -76 76
x743:	int 33	; 2: -51 33

main$76:	; function end main

$Path:
x745:	db "C:\D\Main.com", 0	; 14: 67 58 92 68 92 77 97 105 110 46 99 111 109 0

string_argc3A2025i0A#:
x759:	db "argc: %i", 10, 0	; 10: 97 114 103 99 58 32 37 105 10 0

string_25i3A203C25s3E0A#:
x769:	db "%i: <%s>", 10, 0	; 10: 37 105 58 32 60 37 115 62 10 0

int2$2#:
x779:	dw 2	; 2: 2 0

string_0A#:
x781:	db 10, 0	; 2: 10 0

string_Hello210A#:
x783:	db "Hello!", 10, 0	; 8: 72 101 108 108 111 33 10 0

string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#:
x791:	db "Please write a character, a string, an integer, and a double: ", 0	; 63: 80 108 101 97 115 101 32 119 114 105 116 101 32 97 32 99 104 97 114 97 99 116 101 114 44 32 97 32 115 116 114 105 110 103 44 32 97 110 32 105 110 116 101 103 101 114 44 32 97 110 100 32 97 32 100 111 117 98 108 101 58 32 0

string_25c2025s2025i2025lf#:
x854:	db "%c %s %i %lf", 0	; 13: 37 99 32 37 115 32 37 105 32 37 108 102 0

string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#:
x867:	db "You wrote the character ", 39, "%c", 39, ", the string ", 34, "%s", 34, ", the integer %i, and the double %f.", 10, 0	; 83: 89 111 117 32 119 114 111 116 101 32 116 104 101 32 99 104 97 114 97 99 116 101 114 32 39 37 99 39 44 32 116 104 101 32 115 116 114 105 110 103 32 34 37 115 34 44 32 116 104 101 32 105 110 116 101 103 101 114 32 37 105 44 32 97 110 100 32 116 104 101 32 100 111 117 98 108 101 32 37 102 46 10 0

printf:	; £temporary2432 = &format
x950:	mov si, bp	; 2: -119 -18
x952:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2433 = int_to_int £temporary2432 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2433 + 2
x955:	add si, 2	; 3: -125 -58 2
x958:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x961:	mov ax, [bp + 6]	; 3: -117 70 6
x964:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x967:	mov ax, [di + 8]	; 3: -117 69 8
x970:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x973:	mov word [di + 10], printf$7	; 5: -57 69 10 -32 3
x978:	mov [di + 12], bp	; 3: -119 109 12
x981:	mov [di + 14], di	; 3: -119 125 14
x984:	add di, 10	; 3: -125 -57 10
x987:	mov bp, di	; 2: -119 -3
x989:	nop	; 1: -112
x990:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2435 = return_value

printf$9:	; return_value = £temporary2435

printf$10:	; return
x992:	mov ax, [bp]	; 3: -117 70 0
x995:	mov di, [bp + 4]	; 3: -117 126 4
x998:	mov bp, [bp + 2]	; 3: -117 110 2
x1001:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x1003:	mov ax, [stdout]	; 3: -95 22 4
x1006:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x1009:	mov ax, [bp + 6]	; 3: -117 70 6
x1012:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x1015:	mov ax, [bp + 8]	; 3: -117 70 8
x1018:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x1021:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 11 4
x1026:	mov [bp + 12], bp	; 3: -119 110 12
x1029:	add bp, 10	; 3: -125 -59 10
x1032:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2439 = return_value

vprintf$7:	; return_value = £temporary2439

vprintf$8:	; return
x1035:	mov ax, [bp]	; 3: -117 70 0
x1038:	mov di, [bp + 4]	; 3: -117 126 4
x1041:	mov bp, [bp + 2]	; 3: -117 110 2
x1044:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x1046:	dw g_fileArray + 29	; 2: 53 4

g_fileArray:
x1048:	dw 1	; 2: 1 0
x1050:	dw 0	; 2: 0 0
x1052:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1077:	dw 1	; 2: 1 0
x1079:	dw 1	; 2: 1 0
x1081:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1106:	dw 1	; 2: 1 0
x1108:	dw 2	; 2: 2 0
x1110:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1135:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x1628:	mov word [g_outStatus], 0	; 6: -57 6 -115 6 0 0

vfprintf$1:	; £temporary2451 = int_to_int outStream (Pointer -> Pointer)
x1634:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2451
x1637:	mov [g_outDevice], ax	; 3: -93 -113 6

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x1640:	mov ax, [bp + 8]	; 3: -117 70 8
x1643:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x1646:	mov ax, [bp + 10]	; 3: -117 70 10
x1649:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x1652:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 -126 6
x1657:	mov [bp + 14], bp	; 3: -119 110 14
x1660:	add bp, 12	; 3: -125 -59 12
x1663:	nop	; 1: -112
x1664:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2452 = return_value

vfprintf$9:	; return_value = £temporary2452

vfprintf$10:	; return
x1666:	mov ax, [bp]	; 3: -117 70 0
x1669:	mov di, [bp + 4]	; 3: -117 126 4
x1672:	mov bp, [bp + 2]	; 3: -117 110 2
x1675:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x1677:	db 0, 0	; 2: 0 0

g_outDevice:
x1679:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x1681:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x1686:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x1691:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x1696:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x1701:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x1706:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x1711:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x1716:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x1721:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x1726:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x1731:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x1736:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x1741:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x1746:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x1751:	mov word [g_outChars], 0	; 6: -57 6 -31 11 0 0

printFormat$15:	; index = 0
x1757:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2286 = format + index
x1762:	mov si, [bp + 6]	; 3: -117 118 6
x1765:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2285 -> £temporary2286 = *£temporary2286

printFormat$18:	; if £temporary2285 -> £temporary2286 == 0 goto 282
x1768:	cmp byte [si], 0	; 3: -128 60 0
x1771:	je printFormat$282	; 4: 15 -124 -52 4

printFormat$19:	; £temporary2290 = format + index
x1775:	mov si, [bp + 6]	; 3: -117 118 6
x1778:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2289 -> £temporary2290 = *£temporary2290

printFormat$21:	; c = £temporary2289 -> £temporary2290
x1781:	mov al, [si]	; 2: -118 4
x1783:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 260
x1786:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x1790:	je printFormat$260	; 4: 15 -124 81 4

printFormat$23:	; case c == 43 goto 52
x1794:	mov al, [bp + 40]	; 3: -118 70 40
x1797:	cmp al, 43	; 2: 60 43
x1799:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x1803:	cmp al, 45	; 2: 60 45
x1805:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x1809:	cmp al, 32	; 2: 60 32
x1811:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x1815:	cmp al, 48	; 2: 60 48
x1817:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x1821:	cmp al, 35	; 2: 60 35
x1823:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x1827:	cmp al, 46	; 2: 60 46
x1829:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x1833:	cmp al, 42	; 2: 60 42
x1835:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x1839:	cmp al, 104	; 2: 60 104
x1841:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x1845:	cmp al, 108	; 2: 60 108
x1847:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x1851:	cmp al, 76	; 2: 60 76
x1853:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x1857:	cmp al, 37	; 2: 60 37
x1859:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x1863:	cmp al, 110	; 2: 60 110
x1865:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x1869:	cmp al, 112	; 2: 60 112
x1871:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x1875:	cmp al, 71	; 2: 60 71
x1877:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x1881:	cmp al, 103	; 2: 60 103
x1883:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x1887:	cmp al, 69	; 2: 60 69
x1889:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x1893:	cmp al, 101	; 2: 60 101
x1895:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x1899:	cmp al, 102	; 2: 60 102
x1901:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x1905:	cmp al, 115	; 2: 60 115
x1907:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x1911:	cmp al, 99	; 2: 60 99
x1913:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x1915:	cmp al, 88	; 2: 60 88
x1917:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x1919:	cmp al, 120	; 2: 60 120
x1921:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x1923:	cmp al, 111	; 2: 60 111
x1925:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x1927:	cmp al, 98	; 2: 60 98
x1929:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x1931:	cmp al, 117	; 2: 60 117
x1933:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x1935:	cmp al, 100	; 2: 60 100
x1937:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x1939:	cmp al, 105	; 2: 60 105
x1941:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 237
x1943:	jmp printFormat$237	; 3: -23 70 3

printFormat$52:	; plus = 1
x1946:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 280
x1951:	jmp printFormat$280	; 3: -23 19 4

printFormat$54:	; minus = 1
x1954:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 280
x1959:	jmp printFormat$280	; 3: -23 11 4

printFormat$56:	; space = 1
x1962:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 280
x1967:	jmp printFormat$280	; 3: -23 3 4

printFormat$58:	; zero = 1
x1970:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 280
x1975:	jmp printFormat$280	; 3: -23 -5 3

printFormat$60:	; grid = 1
x1978:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 280
x1983:	jmp printFormat$280	; 3: -23 -13 3

printFormat$62:	; period = 1
x1986:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 280
x1991:	jmp printFormat$280	; 3: -23 -21 3

printFormat$64:	; if period != 0 goto 67
x1994:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x1998:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x2000:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 280
x2005:	jmp printFormat$280	; 3: -23 -35 3

printFormat$67:	; precision = -1
x2008:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 280
x2013:	jmp printFormat$280	; 3: -23 -43 3

printFormat$69:	; shortInt = 1
x2016:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 280
x2021:	jmp printFormat$280	; 3: -23 -51 3

printFormat$71:	; longInt = 1
x2024:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 280
x2029:	jmp printFormat$280	; 3: -23 -59 3

printFormat$73:	; longDouble = 1
x2032:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 280
x2037:	jmp printFormat$280	; 3: -23 -67 3

printFormat$75:	; if minus == 0 goto 106
x2040:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x2044:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x2048:	mov ax, [g_outChars]	; 3: -95 -31 11
x2051:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2294 = format + index
x2054:	mov si, [bp + 6]	; 3: -117 118 6
x2057:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2293 -> £temporary2294 = *£temporary2294

printFormat$80:	; £temporary2295 = &£temporary2293 -> £temporary2294

printFormat$81:	; parameter £temporary2295, offset 6
x2060:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x2063:	mov ax, [bp + 8]	; 3: -117 70 8
x2066:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x2069:	mov ax, [bp + 18]	; 3: -117 70 18
x2072:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x2075:	mov ax, [bp + 22]	; 3: -117 70 22
x2078:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x2081:	mov ax, [bp + 26]	; 3: -117 70 26
x2084:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2296 = &width
x2087:	mov si, bp	; 2: -119 -18
x2089:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2296, offset 16
x2092:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x2095:	mov ax, [bp + 14]	; 3: -117 70 14
x2098:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x2101:	mov ax, [bp + 34]	; 3: -117 70 34
x2104:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x2107:	mov ax, [bp + 36]	; 3: -117 70 36
x2110:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x2113:	mov ax, [bp + 38]	; 3: -117 70 38
x2116:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x2119:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x2124:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x2129:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 95 8
x2134:	mov [bp + 45], bp	; 3: -119 110 45
x2137:	add bp, 43	; 3: -125 -59 43
x2140:	jmp printArgument	; 3: -23 -122 3

printFormat$95:	; post call

printFormat$96:	; £temporary2297 = return_value

printFormat$97:	; arg_list = £temporary2297
x2143:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2299 = g_outChars - startChars
x2146:	mov ax, [g_outChars]	; 3: -95 -31 11
x2149:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x2152:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2299 >= width goto 235
x2155:	cmp ax, [bp + 12]	; 3: 59 70 12
x2158:	jge printFormat$235	; 4: 15 -115 102 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x2162:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x2166:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 -124 8
x2171:	mov [bp + 47], bp	; 3: -119 110 47
x2174:	add bp, 45	; 3: -125 -59 45
x2177:	jmp printChar	; 3: -23 116 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x2180:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 182
x2182:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x2186:	je printFormat$182	; 4: 15 -124 82 1

printFormat$107:	; startChars = g_outChars
x2190:	mov ax, [g_outChars]	; 3: -95 -31 11
x2193:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x2196:	mov ax, [g_outStatus]	; 3: -95 -115 6
x2199:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x2202:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x2207:	mov word [g_outStatus], 2	; 6: -57 6 -115 6 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2303 = format + index
x2213:	mov si, [bp + 6]	; 3: -117 118 6
x2216:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2302 -> £temporary2303 = *£temporary2303

printFormat$114:	; £temporary2304 = &£temporary2302 -> £temporary2303

printFormat$115:	; parameter £temporary2304, offset 6
x2219:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x2222:	mov ax, [bp + 8]	; 3: -117 70 8
x2225:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x2228:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x2233:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x2238:	mov ax, [bp + 26]	; 3: -117 70 26
x2241:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2305 = &width
x2244:	mov si, bp	; 2: -119 -18
x2246:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2305, offset 16
x2249:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x2252:	mov ax, [bp + 14]	; 3: -117 70 14
x2255:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x2258:	mov ax, [bp + 34]	; 3: -117 70 34
x2261:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x2264:	mov ax, [bp + 36]	; 3: -117 70 36
x2267:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x2270:	mov ax, [bp + 38]	; 3: -117 70 38
x2273:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x2276:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2306 = &negative
x2281:	mov si, bp	; 2: -119 -18
x2283:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2306, offset 28
x2286:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x2289:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 -1 8
x2294:	mov [bp + 49], bp	; 3: -119 110 49
x2297:	add bp, 47	; 3: -125 -59 47
x2300:	jmp printArgument	; 3: -23 -26 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x2303:	mov ax, [bp + 43]	; 3: -117 70 43
x2306:	mov [g_outStatus], ax	; 3: -93 -115 6

printFormat$132:	; field = g_outChars - startChars
x2309:	mov ax, [g_outChars]	; 3: -95 -31 11
x2312:	sub ax, [bp + 41]	; 3: 43 70 41
x2315:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x2318:	mov ax, [bp + 41]	; 3: -117 70 41
x2321:	mov [g_outChars], ax	; 3: -93 -31 11

printFormat$134:	; if negative == 0 goto 141
x2324:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x2328:	je printFormat$141	; 2: 116 23

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 45, offset 6
x2330:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$137:	; call function noellipse-noellipse printChar
x2334:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 44 9
x2339:	mov [bp + 51], bp	; 3: -119 110 51
x2342:	add bp, 49	; 3: -125 -59 49
x2345:	jmp printChar	; 3: -23 -52 9

printFormat$138:	; post call

printFormat$139:	; ++field
x2348:	inc word [bp + 47]	; 3: -1 70 47

printFormat$140:	; goto 154
x2351:	jmp printFormat$154	; 2: -21 57

printFormat$141:	; if plus == 0 goto 148
x2353:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x2357:	je printFormat$148	; 2: 116 23

printFormat$142:	; call header integral zero 0 stack zero 0

printFormat$143:	; parameter 43, offset 6
x2359:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$144:	; call function noellipse-noellipse printChar
x2363:	mov word [bp + 49], printFormat$145	; 5: -57 70 49 73 9
x2368:	mov [bp + 51], bp	; 3: -119 110 51
x2371:	add bp, 49	; 3: -125 -59 49
x2374:	jmp printChar	; 3: -23 -81 9

printFormat$145:	; post call

printFormat$146:	; ++field
x2377:	inc word [bp + 47]	; 3: -1 70 47

printFormat$147:	; goto 154
x2380:	jmp printFormat$154	; 2: -21 28

printFormat$148:	; if space == 0 goto 154
x2382:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x2386:	je printFormat$154	; 2: 116 22

printFormat$149:	; call header integral zero 0 stack zero 0

printFormat$150:	; parameter 32, offset 6
x2388:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$151:	; call function noellipse-noellipse printChar
x2392:	mov word [bp + 49], printFormat$152	; 5: -57 70 49 102 9
x2397:	mov [bp + 51], bp	; 3: -119 110 51
x2400:	add bp, 49	; 3: -125 -59 49
x2403:	jmp printChar	; 3: -23 -110 9

printFormat$152:	; post call

printFormat$153:	; £temporary2318 = field + 1
x2406:	mov ax, [bp + 47]	; 3: -117 70 47
x2409:	inc ax	; 1: 64

printFormat$154:	; ++field
x2410:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; if £temporary2318 >= width goto 161
x2413:	cmp ax, [bp + 12]	; 3: 59 70 12
x2416:	jge printFormat$161	; 2: 125 20

printFormat$156:	; call header integral zero 0 stack zero 0

printFormat$157:	; parameter 48, offset 6
x2418:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$158:	; call function noellipse-noellipse printChar
x2422:	mov word [bp + 49], printFormat$159	; 5: -57 70 49 -124 9
x2427:	mov [bp + 51], bp	; 3: -119 110 51
x2430:	add bp, 49	; 3: -125 -59 49
x2433:	jmp printChar	; 3: -23 116 9

printFormat$159:	; post call

printFormat$160:	; goto 154
x2436:	jmp printFormat$154	; 2: -21 -28

printFormat$161:	; call header integral zero 0 stack zero 0

printFormat$162:	; £temporary2322 = format + index
x2438:	mov si, [bp + 6]	; 3: -117 118 6
x2441:	add si, [bp + 10]	; 3: 3 118 10

printFormat$163:	; £temporary2321 -> £temporary2322 = *£temporary2322

printFormat$164:	; £temporary2323 = &£temporary2321 -> £temporary2322

printFormat$165:	; parameter £temporary2323, offset 6
x2444:	mov [bp + 55], si	; 3: -119 118 55

printFormat$166:	; parameter arg_list, offset 8
x2447:	mov ax, [bp + 8]	; 3: -117 70 8
x2450:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$167:	; parameter 0, offset 10
x2453:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$168:	; parameter 0, offset 12
x2458:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$169:	; parameter grid, offset 14
x2463:	mov ax, [bp + 26]	; 3: -117 70 26
x2466:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$170:	; parameter 0, offset 16
x2469:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$171:	; parameter precision, offset 18
x2474:	mov ax, [bp + 14]	; 3: -117 70 14
x2477:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$172:	; parameter shortInt, offset 20
x2480:	mov ax, [bp + 34]	; 3: -117 70 34
x2483:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$173:	; parameter longInt, offset 22
x2486:	mov ax, [bp + 36]	; 3: -117 70 36
x2489:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$174:	; parameter longDouble, offset 24
x2492:	mov ax, [bp + 38]	; 3: -117 70 38
x2495:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$175:	; parameter 0, offset 26
x2498:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$176:	; parameter 0, offset 28
x2503:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$177:	; call function noellipse-noellipse printArgument
x2508:	mov word [bp + 49], printFormat$178	; 5: -57 70 49 -38 9
x2513:	mov [bp + 51], bp	; 3: -119 110 51
x2516:	add bp, 49	; 3: -125 -59 49
x2519:	jmp printArgument	; 3: -23 11 2

printFormat$178:	; post call

printFormat$179:	; £temporary2324 = return_value

printFormat$180:	; arg_list = £temporary2324
x2522:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$181:	; goto 235
x2525:	jmp printFormat$235	; 3: -23 -8 0

printFormat$182:	; startChars = g_outChars
x2528:	mov ax, [g_outChars]	; 3: -95 -31 11
x2531:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$183:	; oldOutStatus = g_outStatus
x2534:	mov ax, [g_outStatus]	; 3: -95 -115 6
x2537:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$184:	; g_outStatus = 2
x2540:	mov word [g_outStatus], 2	; 6: -57 6 -115 6 2 0

printFormat$185:	; call header integral zero 0 stack zero 0

printFormat$186:	; £temporary2326 = format + index
x2546:	mov si, [bp + 6]	; 3: -117 118 6
x2549:	add si, [bp + 10]	; 3: 3 118 10

printFormat$187:	; £temporary2325 -> £temporary2326 = *£temporary2326

printFormat$188:	; £temporary2327 = &£temporary2325 -> £temporary2326

printFormat$189:	; parameter £temporary2327, offset 6
x2552:	mov [bp + 51], si	; 3: -119 118 51

printFormat$190:	; parameter arg_list, offset 8
x2555:	mov ax, [bp + 8]	; 3: -117 70 8
x2558:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$191:	; parameter plus, offset 10
x2561:	mov ax, [bp + 18]	; 3: -117 70 18
x2564:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$192:	; parameter space, offset 12
x2567:	mov ax, [bp + 22]	; 3: -117 70 22
x2570:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$193:	; parameter grid, offset 14
x2573:	mov ax, [bp + 26]	; 3: -117 70 26
x2576:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$194:	; £temporary2328 = &width
x2579:	mov si, bp	; 2: -119 -18
x2581:	add si, 12	; 3: -125 -58 12

printFormat$195:	; parameter £temporary2328, offset 16
x2584:	mov [bp + 61], si	; 3: -119 118 61

printFormat$196:	; parameter precision, offset 18
x2587:	mov ax, [bp + 14]	; 3: -117 70 14
x2590:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$197:	; parameter shortInt, offset 20
x2593:	mov ax, [bp + 34]	; 3: -117 70 34
x2596:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$198:	; parameter longInt, offset 22
x2599:	mov ax, [bp + 36]	; 3: -117 70 36
x2602:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$199:	; parameter longDouble, offset 24
x2605:	mov ax, [bp + 38]	; 3: -117 70 38
x2608:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$200:	; parameter 1, offset 26
x2611:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$201:	; parameter 0, offset 28
x2616:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$202:	; call function noellipse-noellipse printArgument
x2621:	mov word [bp + 45], printFormat$203	; 5: -57 70 45 75 10
x2626:	mov [bp + 47], bp	; 3: -119 110 47
x2629:	add bp, 45	; 3: -125 -59 45
x2632:	jmp printArgument	; 3: -23 -102 1

printFormat$203:	; post call

printFormat$204:	; g_outStatus = oldOutStatus
x2635:	mov ax, [bp + 43]	; 3: -117 70 43
x2638:	mov [g_outStatus], ax	; 3: -93 -115 6

printFormat$205:	; field = g_outChars - startChars
x2641:	mov ax, [g_outChars]	; 3: -95 -31 11
x2644:	sub ax, [bp + 41]	; 3: 43 70 41
x2647:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$206:	; g_outChars = startChars
x2650:	mov ax, [bp + 41]	; 3: -117 70 41
x2653:	mov [g_outChars], ax	; 3: -93 -31 11

printFormat$207:	; £temporary2331 = field
x2656:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$208:	; ++field
x2659:	inc word [bp + 45]	; 3: -1 70 45

printFormat$209:	; if £temporary2331 >= width goto 215
x2662:	cmp ax, [bp + 12]	; 3: 59 70 12
x2665:	jge printFormat$215	; 2: 125 20

printFormat$210:	; call header integral zero 0 stack zero 0

printFormat$211:	; parameter 32, offset 6
x2667:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$212:	; call function noellipse-noellipse printChar
x2671:	mov word [bp + 47], printFormat$213	; 5: -57 70 47 125 10
x2676:	mov [bp + 49], bp	; 3: -119 110 49
x2679:	add bp, 47	; 3: -125 -59 47
x2682:	jmp printChar	; 3: -23 123 8

printFormat$213:	; post call

printFormat$214:	; goto 207
x2685:	jmp printFormat$207	; 2: -21 -31

printFormat$215:	; call header integral zero 0 stack zero 0

printFormat$216:	; £temporary2335 = format + index
x2687:	mov si, [bp + 6]	; 3: -117 118 6
x2690:	add si, [bp + 10]	; 3: 3 118 10

printFormat$217:	; £temporary2334 -> £temporary2335 = *£temporary2335

printFormat$218:	; £temporary2336 = &£temporary2334 -> £temporary2335

printFormat$219:	; parameter £temporary2336, offset 6
x2693:	mov [bp + 53], si	; 3: -119 118 53

printFormat$220:	; parameter arg_list, offset 8
x2696:	mov ax, [bp + 8]	; 3: -117 70 8
x2699:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$221:	; parameter plus, offset 10
x2702:	mov ax, [bp + 18]	; 3: -117 70 18
x2705:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$222:	; parameter space, offset 12
x2708:	mov ax, [bp + 22]	; 3: -117 70 22
x2711:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$223:	; parameter grid, offset 14
x2714:	mov ax, [bp + 26]	; 3: -117 70 26
x2717:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$224:	; parameter 0, offset 16
x2720:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$225:	; parameter precision, offset 18
x2725:	mov ax, [bp + 14]	; 3: -117 70 14
x2728:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$226:	; parameter shortInt, offset 20
x2731:	mov ax, [bp + 34]	; 3: -117 70 34
x2734:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$227:	; parameter longInt, offset 22
x2737:	mov ax, [bp + 36]	; 3: -117 70 36
x2740:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$228:	; parameter longDouble, offset 24
x2743:	mov ax, [bp + 38]	; 3: -117 70 38
x2746:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$229:	; parameter 1, offset 26
x2749:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$230:	; parameter 0, offset 28
x2754:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$231:	; call function noellipse-noellipse printArgument
x2759:	mov word [bp + 47], printFormat$232	; 5: -57 70 47 -43 10
x2764:	mov [bp + 49], bp	; 3: -119 110 49
x2767:	add bp, 47	; 3: -125 -59 47
x2770:	jmp printArgument	; 3: -23 16 1

printFormat$232:	; post call

printFormat$233:	; £temporary2337 = return_value

printFormat$234:	; arg_list = £temporary2337
x2773:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$235:	; percent = 0
x2776:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$236:	; goto 280
x2781:	jmp printFormat$280	; 3: -23 -43 0

printFormat$237:	; value = 0
x2784:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$238:	; call header integral zero 0 stack zero 0

printFormat$239:	; £temporary2340 = int_to_int c (Signed_Char -> Signed_Int)
x2789:	mov al, [bp + 40]	; 3: -118 70 40
x2792:	and ax, 255	; 3: 37 -1 0
x2795:	cmp al, 0	; 2: 60 0
x2797:	jge printFormat$240	; 2: 125 4
x2799:	neg al	; 2: -10 -40
x2801:	neg ax	; 2: -9 -40

printFormat$240:	; parameter £temporary2340, offset 6
x2803:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$241:	; call function noellipse-noellipse isdigit
x2806:	mov word [bp + 43], printFormat$242	; 5: -57 70 43 4 11
x2811:	mov [bp + 45], bp	; 3: -119 110 45
x2814:	add bp, 43	; 3: -125 -59 43
x2817:	jmp isdigit	; 3: -23 66 23

printFormat$242:	; post call

printFormat$243:	; £temporary2341 = return_value

printFormat$244:	; if £temporary2341 == 0 goto 254
x2820:	cmp bx, 0	; 3: -125 -5 0
x2823:	je printFormat$254	; 2: 116 49

printFormat$245:	; £temporary2342 = value * 10
x2825:	mov ax, [bp + 41]	; 3: -117 70 41
x2828:	xor dx, dx	; 2: 49 -46
x2830:	imul word [int2$10#]	; 4: -9 46 -29 11

printFormat$246:	; £temporary2343 = c - 48
x2834:	mov bl, [bp + 40]	; 3: -118 94 40
x2837:	sub bl, 48	; 3: -128 -21 48

printFormat$247:	; £temporary2344 = int_to_int £temporary2343 (Signed_Char -> Signed_Int)
x2840:	and bx, 255	; 4: -127 -29 -1 0
x2844:	cmp bl, 0	; 3: -128 -5 0
x2847:	jge printFormat$248	; 2: 125 4
x2849:	neg bl	; 2: -10 -37
x2851:	neg bx	; 2: -9 -37

printFormat$248:	; value = £temporary2342 + £temporary2344
x2853:	add ax, bx	; 2: 1 -40
x2855:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$249:	; £temporary2346 = index + 1
x2858:	mov ax, [bp + 10]	; 3: -117 70 10
x2861:	inc ax	; 1: 64

printFormat$250:	; £temporary2348 = format + £temporary2346
x2862:	mov si, [bp + 6]	; 3: -117 118 6
x2865:	add si, ax	; 2: 1 -58

printFormat$251:	; £temporary2347 -> £temporary2348 = *£temporary2348

printFormat$252:	; c = £temporary2347 -> £temporary2348
x2867:	mov al, [si]	; 2: -118 4
x2869:	mov [bp + 40], al	; 3: -120 70 40

printFormat$253:	; goto 238
x2872:	jmp printFormat$238	; 2: -21 -85

printFormat$254:	; --index
x2874:	dec word [bp + 10]	; 3: -1 78 10

printFormat$255:	; if period != 0 goto 258
x2877:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2881:	jne printFormat$258	; 2: 117 8

printFormat$256:	; width = value
x2883:	mov ax, [bp + 41]	; 3: -117 70 41
x2886:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$257:	; goto 280
x2889:	jmp printFormat$280	; 2: -21 106

printFormat$258:	; precision = value
x2891:	mov ax, [bp + 41]	; 3: -117 70 41
x2894:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$259:	; goto 280
x2897:	jmp printFormat$280	; 2: -21 98

printFormat$260:	; if c != 37 goto 276
x2899:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x2903:	jne printFormat$276	; 2: 117 72

printFormat$261:	; percent = 1
x2905:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$262:	; plus = 0
x2910:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$263:	; minus = 0
x2915:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$264:	; space = 0
x2920:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$265:	; zero = 0
x2925:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$266:	; grid = 0
x2930:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$267:	; widthStar = 0
x2935:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$268:	; period = 0
x2940:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$269:	; precisionStar = 0
x2945:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$270:	; shortInt = 0
x2950:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$271:	; longInt = 0
x2955:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$272:	; longDouble = 0
x2960:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$273:	; width = 0
x2965:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$274:	; precision = 0
x2970:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$275:	; goto 280
x2975:	jmp printFormat$280	; 2: -21 20

printFormat$276:	; call header integral zero 0 stack zero 0

printFormat$277:	; parameter c, offset 6
x2977:	mov al, [bp + 40]	; 3: -118 70 40
x2980:	mov [bp + 47], al	; 3: -120 70 47

printFormat$278:	; call function noellipse-noellipse printChar
x2983:	mov word [bp + 41], printFormat$279	; 5: -57 70 41 -75 11
x2988:	mov [bp + 43], bp	; 3: -119 110 43
x2991:	add bp, 41	; 3: -125 -59 41
x2994:	jmp printChar	; 3: -23 67 7

printFormat$279:	; post call

printFormat$280:	; ++index
x2997:	inc word [bp + 10]	; 3: -1 70 10

printFormat$281:	; goto 16
x3000:	jmp printFormat$16	; 3: -23 39 -5

printFormat$282:	; if g_outStatus != 1 goto 288
x3003:	cmp word [g_outStatus], 1	; 5: -125 62 -115 6 1
x3008:	jne printFormat$288	; 2: 117 16

printFormat$283:	; £temporary2357 = int_to_int g_outDevice (Pointer -> Pointer)
x3010:	mov ax, [g_outDevice]	; 3: -95 -113 6

printFormat$284:	; outString = £temporary2357
x3013:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$285:	; £temporary2359 = outString + g_outChars
x3016:	mov si, [bp + 40]	; 3: -117 118 40
x3019:	add si, [g_outChars]	; 4: 3 54 -31 11

printFormat$286:	; £temporary2358 -> £temporary2359 = *£temporary2359

printFormat$287:	; £temporary2358 -> £temporary2359 = 0
x3023:	mov byte [si], 0	; 3: -58 4 0

printFormat$288:	; return_value = g_outChars
x3026:	mov bx, [g_outChars]	; 4: -117 30 -31 11

printFormat$289:	; return
x3030:	mov ax, [bp]	; 3: -117 70 0
x3033:	mov di, [bp + 4]	; 3: -117 126 4
x3036:	mov bp, [bp + 2]	; 3: -117 110 2
x3039:	jmp ax	; 2: -1 -32

printFormat$290:	; function end printFormat

g_outChars:
x3041:	db 0, 0	; 2: 0 0

int2$10#:
x3043:	dw 10	; 2: 10 0

printArgument:	; £temporary2059 -> format = *format
x3045:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2059 -> format
x3048:	mov al, [si]	; 2: -118 4
x3050:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x3053:	mov al, [bp + 30]	; 3: -118 70 30
x3056:	cmp al, 100	; 2: 60 100
x3058:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x3060:	cmp al, 105	; 2: 60 105
x3062:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x3064:	cmp al, 99	; 2: 60 99
x3066:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x3070:	cmp al, 115	; 2: 60 115
x3072:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x3076:	cmp al, 88	; 2: 60 88
x3078:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x3082:	cmp al, 120	; 2: 60 120
x3084:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x3088:	cmp al, 98	; 2: 60 98
x3090:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x3094:	cmp al, 111	; 2: 60 111
x3096:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x3100:	cmp al, 117	; 2: 60 117
x3102:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x3106:	cmp al, 71	; 2: 60 71
x3108:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x3112:	cmp al, 103	; 2: 60 103
x3114:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x3118:	cmp al, 69	; 2: 60 69
x3120:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x3124:	cmp al, 101	; 2: 60 101
x3126:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x3130:	cmp al, 102	; 2: 60 102
x3132:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x3136:	cmp al, 112	; 2: 60 112
x3138:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x3142:	cmp al, 110	; 2: 60 110
x3144:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x3148:	cmp al, 37	; 2: 60 37
x3150:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x3154:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x3157:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3161:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x3163:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2061 = arg_list - 2
x3167:	mov si, [bp + 8]	; 3: -117 118 8
x3170:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2062 = int_to_int £temporary2061 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2063 -> £temporary2062 = *£temporary2062

printArgument$26:	; £temporary2064 = int_to_int £temporary2063 -> £temporary2062 (Signed_Int -> Signed_Short_Int)
x3173:	mov ax, [si]	; 2: -117 4
x3175:	cmp ax, 0	; 3: -125 -8 0
x3178:	jge printArgument$27	; 2: 125 4
x3180:	neg ax	; 2: -9 -40
x3182:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2065 = int_to_int £temporary2064 (Signed_Short_Int -> Signed_Long_Int)
x3184:	and eax, 255	; 6: 102 37 -1 0 0 0
x3190:	cmp al, 0	; 2: 60 0
x3192:	jge printArgument$28	; 2: 125 5
x3194:	neg al	; 2: -10 -40
x3196:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2065
x3199:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x3203:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x3205:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3209:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x3211:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2067 = arg_list - 4
x3215:	mov si, [bp + 8]	; 3: -117 118 8
x3218:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2068 = int_to_int £temporary2067 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2069 -> £temporary2068 = *£temporary2068

printArgument$35:	; longValue = £temporary2069 -> £temporary2068
x3221:	mov eax, [si]	; 3: 102 -117 4
x3224:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x3228:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x3230:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2071 = arg_list - 2
x3234:	mov si, [bp + 8]	; 3: -117 118 8
x3237:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2072 = int_to_int £temporary2071 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2073 -> £temporary2072 = *£temporary2072

printArgument$41:	; £temporary2074 = int_to_int £temporary2073 -> £temporary2072 (Signed_Int -> Signed_Long_Int)
x3240:	mov ax, [si]	; 2: -117 4
x3242:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3248:	cmp ax, 0	; 3: -125 -8 0
x3251:	jge printArgument$42	; 2: 125 5
x3253:	neg ax	; 2: -9 -40
x3255:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2074
x3258:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x3262:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3266:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2078 -> negativePtr = *negativePtr
x3268:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x3271:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x3276:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2080 = 1
x3278:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x3281:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2080 = 0
x3283:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2078 -> negativePtr = £temporary2080
x3286:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x3288:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3292:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x3294:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3298:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x3302:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -12 12
x3307:	mov [bp + 50], bp	; 3: -119 110 50
x3310:	add bp, 48	; 3: -125 -59 48
x3313:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2083 = return_value

printArgument$56:	; longValue = £temporary2083
x3316:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x3320:	mov ax, [bp + 8]	; 3: -117 70 8
x3323:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x3326:	mov ax, [bp + 16]	; 3: -117 70 16
x3329:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2084 = &precision
x3332:	mov si, bp	; 2: -119 -18
x3334:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2084, offset 10
x3337:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x3340:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 26 13
x3345:	mov [bp + 50], bp	; 3: -119 110 50
x3348:	add bp, 48	; 3: -125 -59 48
x3351:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2085 = return_value

printArgument$65:	; arg_list = £temporary2085
x3354:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x3357:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3361:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x3365:	mov ax, [bp + 10]	; 3: -117 70 10
x3368:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x3371:	mov ax, [bp + 12]	; 3: -117 70 12
x3374:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x3377:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 63 13
x3382:	mov [bp + 50], bp	; 3: -119 110 50
x3385:	add bp, 48	; 3: -125 -59 48
x3388:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x3391:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x3394:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2088 = arg_list - 2
x3398:	mov si, [bp + 8]	; 3: -117 118 8
x3401:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2089 = int_to_int £temporary2088 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2090 -> £temporary2089 = *£temporary2089

printArgument$77:	; £temporary2091 = int_to_int £temporary2090 -> £temporary2089 (Signed_Int -> Signed_Char)
x3404:	mov ax, [si]	; 2: -117 4
x3406:	cmp ax, 0	; 3: -125 -8 0
x3409:	jge printArgument$78	; 2: 125 4
x3411:	neg ax	; 2: -9 -40
x3413:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2091
x3415:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x3418:	mov ax, [bp + 8]	; 3: -117 70 8
x3421:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x3424:	mov ax, [bp + 16]	; 3: -117 70 16
x3427:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2092 = &precision
x3430:	mov si, bp	; 2: -119 -18
x3432:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2092, offset 10
x3435:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x3438:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 124 13
x3443:	mov [bp + 46], bp	; 3: -119 110 46
x3446:	add bp, 44	; 3: -125 -59 44
x3449:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2093 = return_value

printArgument$87:	; arg_list = £temporary2093
x3452:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x3455:	mov al, [bp + 31]	; 3: -118 70 31
x3458:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x3461:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -109 13
x3466:	mov [bp + 46], bp	; 3: -119 110 46
x3469:	add bp, 44	; 3: -125 -59 44
x3472:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x3475:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x3478:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2096 = arg_list - 2
x3482:	mov si, [bp + 8]	; 3: -117 118 8
x3485:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2097 = int_to_int £temporary2096 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2098 -> £temporary2097 = *£temporary2097

printArgument$97:	; stringValue = £temporary2098 -> £temporary2097
x3488:	mov ax, [si]	; 2: -117 4
x3490:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x3493:	mov ax, [bp + 8]	; 3: -117 70 8
x3496:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x3499:	mov ax, [bp + 16]	; 3: -117 70 16
x3502:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2099 = &precision
x3505:	mov si, bp	; 2: -119 -18
x3507:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2099, offset 10
x3510:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x3513:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -57 13
x3518:	mov [bp + 48], bp	; 3: -119 110 48
x3521:	add bp, 46	; 3: -125 -59 46
x3524:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2100 = return_value

printArgument$106:	; arg_list = £temporary2100
x3527:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x3530:	mov ax, [bp + 44]	; 3: -117 70 44
x3533:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x3536:	mov ax, [bp + 18]	; 3: -117 70 18
x3539:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x3542:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -28 13
x3547:	mov [bp + 48], bp	; 3: -119 110 48
x3550:	add bp, 46	; 3: -125 -59 46
x3553:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x3556:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x3559:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x3563:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2116 = 10
x3565:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x3571:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x3573:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x3577:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2112 = 8
x3579:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x3585:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x3587:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x3591:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2108 = 2
x3593:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x3599:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2108 = 16
x3601:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2112 = £temporary2108

printArgument$124:	; £temporary2116 = £temporary2112

printArgument$125:	; base = £temporary2116
x3607:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x3611:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3615:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x3617:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2118 = arg_list - 2
x3621:	mov si, [bp + 8]	; 3: -117 118 8
x3624:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2119 = int_to_int £temporary2118 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2120 -> £temporary2119 = *£temporary2119

printArgument$131:	; £temporary2121 = int_to_int £temporary2120 -> £temporary2119 (Unsigned_Int -> Unsigned_Short_Int)
x3627:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2122 = int_to_int £temporary2121 (Unsigned_Short_Int -> Unsigned_Long_Int)
x3629:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2122
x3635:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x3639:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x3641:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3645:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x3647:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2124 = arg_list - 4
x3651:	mov si, [bp + 8]	; 3: -117 118 8
x3654:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2125 = int_to_int £temporary2124 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2126 -> £temporary2125 = *£temporary2125

printArgument$140:	; value = £temporary2126 -> £temporary2125
x3657:	mov eax, [si]	; 3: 102 -117 4
x3660:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x3664:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x3666:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2128 = arg_list - 2
x3670:	mov si, [bp + 8]	; 3: -117 118 8
x3673:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2129 = int_to_int £temporary2128 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2130 -> £temporary2129 = *£temporary2129

printArgument$146:	; £temporary2131 = int_to_int £temporary2130 -> £temporary2129 (Unsigned_Int -> Unsigned_Long_Int)
x3676:	mov ax, [si]	; 2: -117 4
x3678:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2131
x3684:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x3688:	mov ax, [bp + 8]	; 3: -117 70 8
x3691:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x3694:	mov ax, [bp + 16]	; 3: -117 70 16
x3697:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2134 = &precision
x3700:	mov si, bp	; 2: -119 -18
x3702:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2134, offset 10
x3705:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x3708:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -118 14
x3713:	mov [bp + 54], bp	; 3: -119 110 54
x3716:	add bp, 52	; 3: -125 -59 52
x3719:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2135 = return_value

printArgument$156:	; arg_list = £temporary2135
x3722:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x3725:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x3729:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x3733:	mov ax, [bp + 10]	; 3: -117 70 10
x3736:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x3739:	mov ax, [bp + 12]	; 3: -117 70 12
x3742:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x3745:	mov ax, [bp + 14]	; 3: -117 70 14
x3748:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x3751:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3755:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2136 = int_to_int c (Signed_Char -> Signed_Int)
x3759:	mov al, [bp + 30]	; 3: -118 70 30
x3762:	and ax, 255	; 3: 37 -1 0
x3765:	cmp al, 0	; 2: 60 0
x3767:	jge printArgument$165	; 2: 125 4
x3769:	neg al	; 2: -10 -40
x3771:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2136, offset 26
x3773:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x3776:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -50 14
x3781:	mov [bp + 74], bp	; 3: -119 110 74
x3784:	add bp, 72	; 3: -125 -59 72
x3787:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2137 = return_value

printArgument$169:	; parameter £temporary2137, offset 20
x3790:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x3793:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -33 14
x3798:	mov [bp + 54], bp	; 3: -119 110 54
x3801:	add bp, 52	; 3: -125 -59 52
x3804:	jmp printUnsignedLong	; 3: -23 34 12

printArgument$171:	; post call

printArgument$172:	; goto 359
x3807:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x3810:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3814:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x3816:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2140 = arg_list - 8
x3820:	mov si, [bp + 8]	; 3: -117 118 8
x3823:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2141 = int_to_int £temporary2140 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2142 -> £temporary2141 = *£temporary2141

printArgument$178:	; push float £temporary2142 -> £temporary2141
x3826:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x3828:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x3831:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x3834:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x3837:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x3842:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x3847:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x3852:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x3857:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 31 15
x3862:	mov [bp + 46], bp	; 3: -119 110 46
x3865:	add bp, 44	; 3: -125 -59 44
x3868:	jmp printLongDoublePlain	; 3: -23 -115 13

printArgument$188:	; post call

printArgument$189:	; goto 196
x3871:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x3873:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2145 = arg_list - 8
x3877:	mov si, [bp + 8]	; 3: -117 118 8
x3880:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2146 = int_to_int £temporary2145 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2147 -> £temporary2146 = *£temporary2146

printArgument$194:	; push float £temporary2147 -> £temporary2146
x3883:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x3885:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x3888:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3892:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2151 -> negativePtr = *negativePtr
x3894:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x3897:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x3900:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x3902:	fcompp	; 2: -34 -39
x3904:	fstsw ax	; 3: -101 -33 -32
x3907:	sahf	; 1: -98
x3908:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2153 = 1
x3910:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x3913:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2153 = 0
x3915:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2151 -> negativePtr = £temporary2153
x3918:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x3920:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3924:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x3926:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x3929:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x3932:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 106 15
x3937:	mov [bp + 46], bp	; 3: -119 110 46
x3940:	add bp, 44	; 3: -125 -59 44
x3943:	jmp fabs	; 3: -23 -125 14

printArgument$210:	; post call

printArgument$211:	; £temporary2156 = return_value

printArgument$212:	; pop float longDoubleValue
x3946:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x3949:	mov ax, [bp + 8]	; 3: -117 70 8
x3952:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x3955:	mov ax, [bp + 16]	; 3: -117 70 16
x3958:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2157 = &precision
x3961:	mov si, bp	; 2: -119 -18
x3963:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2157, offset 10
x3966:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x3969:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -113 15
x3974:	mov [bp + 46], bp	; 3: -119 110 46
x3977:	add bp, 44	; 3: -125 -59 44
x3980:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2158 = return_value

printArgument$221:	; arg_list = £temporary2158
x3983:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x3986:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x3990:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x3992:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x3995:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x3998:	mov ax, [bp + 10]	; 3: -117 70 10
x4001:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x4004:	mov ax, [bp + 12]	; 3: -117 70 12
x4007:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x4010:	mov ax, [bp + 14]	; 3: -117 70 14
x4013:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x4016:	mov ax, [bp + 18]	; 3: -117 70 18
x4019:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x4022:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -60 15
x4027:	mov [bp + 46], bp	; 3: -119 110 46
x4030:	add bp, 44	; 3: -125 -59 44
x4033:	jmp printLongDoublePlain	; 3: -23 -24 12

printArgument$231:	; post call

printArgument$232:	; goto 359
x4036:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2161 = int_to_int c (Signed_Char -> Signed_Int)
x4039:	mov al, [bp + 30]	; 3: -118 70 30
x4042:	and ax, 255	; 3: 37 -1 0
x4045:	cmp al, 0	; 2: 60 0
x4047:	jge printArgument$235	; 2: 125 4
x4049:	neg al	; 2: -10 -40
x4051:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2161, offset 6
x4053:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x4056:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -26 15
x4061:	mov [bp + 46], bp	; 3: -119 110 46
x4064:	add bp, 44	; 3: -125 -59 44
x4067:	jmp tolower	; 3: -23 41 14

printArgument$237:	; post call

printArgument$238:	; £temporary2162 = return_value

printArgument$239:	; if £temporary2162 != 101 goto 257
x4070:	cmp bx, 101	; 3: -125 -5 101
x4073:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x4075:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x4078:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x4081:	mov ax, [bp + 10]	; 3: -117 70 10
x4084:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x4087:	mov ax, [bp + 12]	; 3: -117 70 12
x4090:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x4093:	mov ax, [bp + 14]	; 3: -117 70 14
x4096:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x4099:	mov ax, [bp + 18]	; 3: -117 70 18
x4102:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2164 = int_to_int c (Signed_Char -> Signed_Int)
x4105:	mov al, [bp + 30]	; 3: -118 70 30
x4108:	and ax, 255	; 3: 37 -1 0
x4111:	cmp al, 0	; 2: 60 0
x4113:	jge printArgument$249	; 2: 125 4
x4115:	neg al	; 2: -10 -40
x4117:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2164, offset 28
x4119:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x4122:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 40 16
x4127:	mov [bp + 68], bp	; 3: -119 110 68
x4130:	add bp, 66	; 3: -125 -59 66
x4133:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2165 = return_value

printArgument$253:	; parameter £temporary2165, offset 22
x4136:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x4139:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 57 16
x4144:	mov [bp + 46], bp	; 3: -119 110 46
x4147:	add bp, 44	; 3: -125 -59 44
x4150:	jmp printLongDoubleExpo	; 3: -23 119 14

printArgument$255:	; post call

printArgument$256:	; goto 359
x4153:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x4156:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x4159:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x4162:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 80 16
x4167:	mov [bp + 46], bp	; 3: -119 110 46
x4170:	add bp, 44	; 3: -125 -59 44
x4173:	jmp fabs	; 3: -23 -99 13

printArgument$262:	; post call

printArgument$263:	; £temporary2167 = return_value

printArgument$264:	; parameter £temporary2167, offset 6
x4176:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x4179:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 97 16
x4184:	mov [bp + 46], bp	; 3: -119 110 46
x4187:	add bp, 44	; 3: -125 -59 44
x4190:	jmp log10	; 3: -23 -74 15

printArgument$266:	; post call

printArgument$267:	; £temporary2168 = return_value

printArgument$268:	; £temporary2169 = float_to_int £temporary2168 (Double -> Signed_Int)
x4193:	fistp word [container2bytes#]	; 4: -33 30 -9 17
x4197:	mov ax, [container2bytes#]	; 3: -95 -9 17

printArgument$269:	; expo = £temporary2169
x4200:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x4203:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x4207:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x4209:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x4213:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x4215:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x4218:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x4221:	mov ax, [bp + 10]	; 3: -117 70 10
x4224:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x4227:	mov ax, [bp + 12]	; 3: -117 70 12
x4230:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x4233:	mov ax, [bp + 14]	; 3: -117 70 14
x4236:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x4239:	mov ax, [bp + 18]	; 3: -117 70 18
x4242:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x4245:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -93 16
x4250:	mov [bp + 48], bp	; 3: -119 110 48
x4253:	add bp, 46	; 3: -125 -59 46
x4256:	jmp printLongDoublePlain	; 3: -23 9 12

printArgument$280:	; post call

printArgument$281:	; goto 359
x4259:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x4262:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x4265:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x4268:	mov ax, [bp + 10]	; 3: -117 70 10
x4271:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x4274:	mov ax, [bp + 12]	; 3: -117 70 12
x4277:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x4280:	mov ax, [bp + 14]	; 3: -117 70 14
x4283:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x4286:	mov ax, [bp + 18]	; 3: -117 70 18
x4289:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2174 = int_to_int c (Signed_Char -> Signed_Int)
x4292:	mov al, [bp + 30]	; 3: -118 70 30
x4295:	and ax, 255	; 3: 37 -1 0
x4298:	cmp al, 0	; 2: 60 0
x4300:	jge printArgument$291	; 2: 125 4
x4302:	neg al	; 2: -10 -40
x4304:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2174, offset 28
x4306:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x4309:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -29 16
x4314:	mov [bp + 70], bp	; 3: -119 110 70
x4317:	add bp, 68	; 3: -125 -59 68
x4320:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2175 = return_value

printArgument$295:	; parameter £temporary2175, offset 22
x4323:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x4326:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -12 16
x4331:	mov [bp + 48], bp	; 3: -119 110 48
x4334:	add bp, 46	; 3: -125 -59 46
x4337:	jmp printLongDoubleExpo	; 3: -23 -68 13

printArgument$297:	; post call

printArgument$298:	; goto 359
x4340:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x4343:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2178 = arg_list - 2
x4347:	mov si, [bp + 8]	; 3: -117 118 8
x4350:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2179 = int_to_int £temporary2178 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2180 -> £temporary2179 = *£temporary2179

printArgument$303:	; ptrValue = £temporary2180 -> £temporary2179
x4353:	mov ax, [si]	; 2: -117 4
x4355:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x4358:	mov ax, [bp + 8]	; 3: -117 70 8
x4361:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x4364:	mov ax, [bp + 16]	; 3: -117 70 16
x4367:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2181 = &precision
x4370:	mov si, bp	; 2: -119 -18
x4372:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2181, offset 10
x4375:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x4378:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 40 17
x4383:	mov [bp + 46], bp	; 3: -119 110 46
x4386:	add bp, 44	; 3: -125 -59 44
x4389:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2182 = return_value

printArgument$312:	; arg_list = £temporary2182
x4392:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2183 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x4395:	mov ax, [bp + 42]	; 3: -117 70 42
x4398:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2183, offset 6
x4404:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x4408:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x4413:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x4418:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x4423:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x4431:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x4436:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 98 17
x4441:	mov [bp + 46], bp	; 3: -119 110 46
x4444:	add bp, 44	; 3: -125 -59 44
x4447:	jmp printUnsignedLong	; 3: -23 -97 9

printArgument$322:	; post call

printArgument$323:	; goto 359
x4450:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x4453:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2186 = arg_list - 2
x4457:	mov si, [bp + 8]	; 3: -117 118 8
x4460:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2187 = int_to_int £temporary2186 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2188 -> £temporary2187 = *£temporary2187

printArgument$328:	; ptrValue = £temporary2188 -> £temporary2187
x4463:	mov ax, [si]	; 2: -117 4
x4465:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x4468:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2190 = arg_list - 2
x4472:	mov si, [bp + 8]	; 3: -117 118 8
x4475:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2191 = int_to_int £temporary2190 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2192 -> £temporary2191 = *£temporary2191

printArgument$333:	; intPtr = £temporary2192 -> £temporary2191
x4478:	mov ax, [si]	; 2: -117 4
x4480:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x4483:	mov ax, [bp + 8]	; 3: -117 70 8
x4486:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x4489:	mov ax, [bp + 16]	; 3: -117 70 16
x4492:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2193 = &precision
x4495:	mov si, bp	; 2: -119 -18
x4497:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2193, offset 10
x4500:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x4503:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -91 17
x4508:	mov [bp + 46], bp	; 3: -119 110 46
x4511:	add bp, 44	; 3: -125 -59 44
x4514:	nop	; 1: -112
x4515:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2194 = return_value

printArgument$342:	; arg_list = £temporary2194
x4517:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2195 -> intPtr = *intPtr
x4520:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2195 -> intPtr = g_outChars
x4523:	mov ax, [g_outChars]	; 3: -95 -31 11
x4526:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x4528:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x4530:	mov ax, [bp + 8]	; 3: -117 70 8
x4533:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x4536:	mov ax, [bp + 16]	; 3: -117 70 16
x4539:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2196 = &precision
x4542:	mov si, bp	; 2: -119 -18
x4544:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2196, offset 10
x4547:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x4550:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -44 17
x4555:	mov [bp + 46], bp	; 3: -119 110 46
x4558:	add bp, 44	; 3: -125 -59 44
x4561:	nop	; 1: -112
x4562:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2197 = return_value

printArgument$354:	; arg_list = £temporary2197
x4564:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x4567:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x4571:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -23 17
x4576:	mov [bp + 46], bp	; 3: -119 110 46
x4579:	add bp, 44	; 3: -125 -59 44
x4582:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x4585:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x4588:	mov ax, [bp]	; 3: -117 70 0
x4591:	mov di, [bp + 4]	; 3: -117 126 4
x4594:	mov bp, [bp + 2]	; 3: -117 110 2
x4597:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x4599:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x4601:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4606:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2663 = -value
x4608:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x4612:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2667 = £temporary2663

labs$3:	; goto 5
x4615:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2667 = value
x4617:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2667

labs$6:	; return
x4621:	mov ax, [bp]	; 3: -117 70 0
x4624:	mov di, [bp + 4]	; 3: -117 126 4
x4627:	mov bp, [bp + 2]	; 3: -117 110 2
x4630:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x4632:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4636:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary2041 -> widthPtr = *widthPtr
x4638:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary2041 -> widthPtr != -1 goto 9
x4641:	cmp word [si], -1	; 3: -125 60 -1
x4644:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary2044 -> widthPtr = *widthPtr
x4646:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x4649:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary2046 = arg_list - 2
x4653:	mov di, [bp + 6]	; 3: -117 126 6
x4656:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary2047 = int_to_int £temporary2046 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary2048 -> £temporary2047 = *£temporary2047

checkWidthAndPrecision$8:	; £temporary2044 -> widthPtr = £temporary2048 -> £temporary2047
x4659:	mov ax, [di]	; 2: -117 5
x4661:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x4663:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4667:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary2050 -> precisionPtr = *precisionPtr
x4669:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary2050 -> precisionPtr != -1 goto 18
x4672:	cmp word [si], -1	; 3: -125 60 -1
x4675:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2053 -> precisionPtr = *precisionPtr
x4677:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x4680:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2055 = arg_list - 2
x4684:	mov di, [bp + 6]	; 3: -117 126 6
x4687:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2056 = int_to_int £temporary2055 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2057 -> £temporary2056 = *£temporary2056

checkWidthAndPrecision$17:	; £temporary2053 -> precisionPtr = £temporary2057 -> £temporary2056
x4690:	mov ax, [di]	; 2: -117 5
x4692:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x4694:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x4697:	mov ax, [bp]	; 3: -117 70 0
x4700:	mov di, [bp + 4]	; 3: -117 126 4
x4703:	mov bp, [bp + 2]	; 3: -117 110 2
x4706:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x4708:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4713:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1896 = -longValue
x4715:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4719:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1896
x4722:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x4726:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x4730:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -120 18
x4735:	mov [bp + 16], bp	; 3: -119 110 16
x4738:	add bp, 14	; 3: -125 -59 14
x4741:	nop	; 1: -112
x4742:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x4744:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x4746:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4750:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x4752:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x4756:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -94 18
x4761:	mov [bp + 16], bp	; 3: -119 110 16
x4764:	add bp, 14	; 3: -125 -59 14
x4767:	nop	; 1: -112
x4768:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x4770:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x4772:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4776:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x4778:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x4782:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -68 18
x4787:	mov [bp + 16], bp	; 3: -119 110 16
x4790:	add bp, 14	; 3: -125 -59 14
x4793:	nop	; 1: -112
x4794:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x4796:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4801:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x4803:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x4807:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -43 18
x4812:	mov [bp + 16], bp	; 3: -119 110 16
x4815:	add bp, 14	; 3: -125 -59 14
x4818:	nop	; 1: -112
x4819:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x4821:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x4823:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4827:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x4831:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -19 18
x4836:	mov [bp + 16], bp	; 3: -119 110 16
x4839:	add bp, 14	; 3: -125 -59 14
x4842:	nop	; 1: -112
x4843:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x4845:	mov ax, [bp]	; 3: -117 70 0
x4848:	mov di, [bp + 4]	; 3: -117 126 4
x4851:	mov bp, [bp + 2]	; 3: -117 110 2
x4854:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x4856:	mov ax, [g_outStatus]	; 3: -95 -115 6
x4859:	cmp ax, 0	; 3: -125 -8 0
x4862:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x4864:	cmp ax, 1	; 3: -125 -8 1
x4867:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x4869:	cmp ax, 2	; 3: -125 -8 2
x4872:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x4874:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1838 = int_to_int g_outDevice (Pointer -> Pointer)
x4876:	mov ax, [g_outDevice]	; 3: -95 -113 6

printChar$6:	; stream = £temporary1838
x4879:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x4882:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1841 -> stream = *stream, offset 2
x4884:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1841 -> stream
x4887:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x4890:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1844 = &c
x4893:	mov dx, bp	; 2: -119 -22
x4895:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1844

printChar$13:	; interrupt 33
x4898:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x4900:	inc word [g_outChars]	; 4: -1 6 -31 11

printChar$15:	; goto 25
x4904:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1846 = int_to_int g_outDevice (Pointer -> Pointer)
x4906:	mov ax, [g_outDevice]	; 3: -95 -113 6

printChar$17:	; outString = £temporary1846
x4909:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1847 = g_outChars
x4912:	mov ax, [g_outChars]	; 3: -95 -31 11

printChar$19:	; ++g_outChars
x4915:	inc word [g_outChars]	; 4: -1 6 -31 11

printChar$20:	; £temporary1849 = outString + £temporary1847
x4919:	mov si, [bp + 9]	; 3: -117 118 9
x4922:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1848 -> £temporary1849 = *£temporary1849

printChar$22:	; £temporary1848 -> £temporary1849 = c
x4924:	mov al, [bp + 6]	; 3: -118 70 6
x4927:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x4929:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x4931:	inc word [g_outChars]	; 4: -1 6 -31 11

printChar$25:	; return
x4935:	mov ax, [bp]	; 3: -117 70 0
x4938:	mov di, [bp + 4]	; 3: -117 126 4
x4941:	mov bp, [bp + 2]	; 3: -117 110 2
x4944:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x4946:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4951:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1886 = longValue % 10
x4953:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4957:	xor edx, edx	; 3: 102 49 -46
x4960:	idiv dword [int4$10#]	; 5: 102 -9 62 -68 19

printLongIntRec$2:	; £temporary1887 = int_to_int £temporary1886 (Signed_Long_Int -> Signed_Int)
x4965:	cmp edx, 0	; 4: 102 -125 -6 0
x4969:	jge printLongIntRec$3	; 2: 125 5
x4971:	neg edx	; 3: 102 -9 -38
x4974:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1887
x4976:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1888 = longValue / 10
x4979:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4983:	xor edx, edx	; 3: 102 49 -46
x4986:	idiv dword [int4$10#]	; 5: 102 -9 62 -68 19

printLongIntRec$6:	; parameter £temporary1888, offset 6
x4991:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x4995:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -111 19
x5000:	mov [bp + 14], bp	; 3: -119 110 14
x5003:	add bp, 12	; 3: -125 -59 12
x5006:	nop	; 1: -112
x5007:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1890 = digit + 48
x5009:	mov ax, [bp + 10]	; 3: -117 70 10
x5012:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1891 = int_to_int £temporary1890 (Signed_Int -> Signed_Char)
x5015:	cmp ax, 0	; 3: -125 -8 0
x5018:	jge printLongIntRec$12	; 2: 125 4
x5020:	neg ax	; 2: -9 -40
x5022:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1891, offset 6
x5024:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x5027:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -79 19
x5032:	mov [bp + 14], bp	; 3: -119 110 14
x5035:	add bp, 12	; 3: -125 -59 12
x5038:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x5041:	mov ax, [bp]	; 3: -117 70 0
x5044:	mov di, [bp + 4]	; 3: -117 126 4
x5047:	mov bp, [bp + 2]	; 3: -117 110 2
x5050:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x5052:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x5056:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x5060:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x5062:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5066:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x5068:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1855 = s + index
x5073:	mov si, [bp + 6]	; 3: -117 118 6
x5076:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1854 -> £temporary1855 = *£temporary1855

printString$5:	; if £temporary1854 -> £temporary1855 == 0 goto 53
x5079:	cmp byte [si], 0	; 3: -128 60 0
x5082:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1859 = s + index
x5086:	mov si, [bp + 6]	; 3: -117 118 6
x5089:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1858 -> £temporary1859 = *£temporary1859

printString$9:	; parameter £temporary1858 -> £temporary1859, offset 6
x5092:	mov al, [si]	; 2: -118 4
x5094:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x5097:	mov word [bp + 12], printString$11	; 5: -57 70 12 -9 19
x5102:	mov [bp + 14], bp	; 3: -119 110 14
x5105:	add bp, 12	; 3: -125 -59 12
x5108:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x5111:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x5114:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x5116:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1861 = precision
x5121:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x5124:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1861 <= 0 goto 53
x5127:	cmp ax, 0	; 3: -125 -8 0
x5130:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1864 = s + index
x5134:	mov si, [bp + 6]	; 3: -117 118 6
x5137:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1863 -> £temporary1864 = *£temporary1864

printString$20:	; if £temporary1863 -> £temporary1864 == 0 goto 53
x5140:	cmp byte [si], 0	; 3: -128 60 0
x5143:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1869 = s + index
x5147:	mov si, [bp + 6]	; 3: -117 118 6
x5150:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1868 -> £temporary1869 = *£temporary1869

printString$24:	; parameter £temporary1868 -> £temporary1869, offset 6
x5153:	mov al, [si]	; 2: -118 4
x5155:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x5158:	mov word [bp + 12], printString$26	; 5: -57 70 12 52 20
x5163:	mov [bp + 14], bp	; 3: -119 110 14
x5166:	add bp, 12	; 3: -125 -59 12
x5169:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x5172:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x5175:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x5177:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x5181:	mov word [bp + 10], printString$32	; 5: -57 70 10 75 20
x5186:	mov [bp + 12], bp	; 3: -119 110 12
x5189:	add bp, 10	; 3: -125 -59 10
x5192:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x5195:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x5199:	mov word [bp + 10], printString$36	; 5: -57 70 10 93 20
x5204:	mov [bp + 12], bp	; 3: -119 110 12
x5207:	add bp, 10	; 3: -125 -59 10
x5210:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x5213:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x5217:	mov word [bp + 10], printString$40	; 5: -57 70 10 111 20
x5222:	mov [bp + 12], bp	; 3: -119 110 12
x5225:	add bp, 10	; 3: -125 -59 10
x5228:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x5231:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x5235:	mov word [bp + 10], printString$44	; 5: -57 70 10 -127 20
x5240:	mov [bp + 12], bp	; 3: -119 110 12
x5243:	add bp, 10	; 3: -125 -59 10
x5246:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x5249:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x5253:	mov word [bp + 10], printString$48	; 5: -57 70 10 -109 20
x5258:	mov [bp + 12], bp	; 3: -119 110 12
x5261:	add bp, 10	; 3: -125 -59 10
x5264:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x5267:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x5271:	mov word [bp + 10], printString$52	; 5: -57 70 10 -91 20
x5276:	mov [bp + 12], bp	; 3: -119 110 12
x5279:	add bp, 10	; 3: -125 -59 10
x5282:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x5285:	mov ax, [bp]	; 3: -117 70 0
x5288:	mov di, [bp + 4]	; 3: -117 126 4
x5291:	mov bp, [bp + 2]	; 3: -117 110 2
x5294:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x5296:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -66 20
x5301:	mov [bp + 10], bp	; 3: -119 110 10
x5304:	add bp, 8	; 3: -125 -59 8
x5307:	nop	; 1: -112
x5308:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary329 = return_value

isupper$4:	; localeConvPtr = £temporary329
x5310:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x5313:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5317:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary331 -> localeConvPtr = *localeConvPtr, offset 14
x5319:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary331 -> localeConvPtr, offset 6
x5322:	mov ax, [si + 14]	; 3: -117 68 14
x5325:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x5328:	mov ax, [bp + 6]	; 3: -117 70 6
x5331:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x5334:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -28 20
x5339:	mov [bp + 12], bp	; 3: -119 110 12
x5342:	add bp, 10	; 3: -125 -59 10
x5345:	jmp strchr	; 3: -23 -51 5

isupper$11:	; post call

isupper$12:	; £temporary332 = return_value

isupper$13:	; if £temporary332 == 0 goto 16
x5348:	cmp bx, 0	; 3: -125 -5 0
x5351:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary334 = 1
x5353:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x5356:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary334 = 0
x5358:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary334

isupper$18:	; return
x5361:	mov ax, [bp]	; 3: -117 70 0
x5364:	mov di, [bp + 4]	; 3: -117 126 4
x5367:	mov bp, [bp + 2]	; 3: -117 110 2
x5370:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x5372:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x5376:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x5378:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x5382:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary338 = 1
x5384:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x5387:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary338 = 0
x5389:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary338

isupper$25:	; return
x5392:	mov ax, [bp]	; 3: -117 70 0
x5395:	mov di, [bp + 4]	; 3: -117 126 4
x5398:	mov bp, [bp + 2]	; 3: -117 110 2
x5401:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x5403:	cmp word [@22$g_currStructPtr], 0	; 5: -125 62 57 21 0
x5408:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary478 -> g_currStructPtr = *g_currStructPtr, offset 2
x5410:	mov si, [@22$g_currStructPtr]	; 4: -117 54 57 21

localeconv$2:	; £temporary482 = £temporary478 -> g_currStructPtr
x5414:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x5417:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary482 = 0
x5419:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary482

localeconv$6:	; return
x5422:	mov ax, [bp]	; 3: -117 70 0
x5425:	mov di, [bp + 4]	; 3: -117 126 4
x5428:	mov bp, [bp + 2]	; 3: -117 110 2
x5431:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@22$g_currStructPtr:
x5433:	dw @20$sArray	; 2: 59 21

@20$sArray:
x5435:	dw string_# ; 2: 75 21
x5437:	dw @19$sw_EN_utf8	; 2: 76 21
x5439:	dw string_C# ; 2: 57 24
x5441:	dw @13$en_US_utf8	; 2: 59 24
x5443:	dw string_US# ; 2: -85 26
x5445:	dw @13$en_US_utf8	; 2: 59 24
x5447:	dw string_SE# ; 2: -82 26
x5449:	dw @19$sw_EN_utf8	; 2: 76 21

string_#:
x5451:	db 0	; 1: 0

@19$sw_EN_utf8:
x5452:	dw 1	; 2: 1 0
x5454:	dw 2	; 2: 2 0
x5456:	dw @14$swShortDayList ; 2: 94 21
x5458:	dw @15$swLongDayList ; 2: -120 21
x5460:	dw @11$enShortMonthList ; 2: -56 21
x5462:	dw @17$swLongMonthList ; 2: 16 22
x5464:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 126 22
x5466:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -103 22
x5468:	dw @18$swMessageList ; 2: -76 22

@14$swShortDayList:
x5470:	dw string_Son# ; 2: 108 21
x5472:	dw string_Man# ; 2: 112 21
x5474:	dw string_Tis# ; 2: 116 21
x5476:	dw string_Ons# ; 2: 120 21
x5478:	dw string_Tor# ; 2: 124 21
x5480:	dw string_Fre# ; 2: -128 21
x5482:	dw string_Lor# ; 2: -124 21

string_Son#:
x5484:	db "Son", 0	; 4: 83 111 110 0

string_Man#:
x5488:	db "Man", 0	; 4: 77 97 110 0

string_Tis#:
x5492:	db "Tis", 0	; 4: 84 105 115 0

string_Ons#:
x5496:	db "Ons", 0	; 4: 79 110 115 0

string_Tor#:
x5500:	db "Tor", 0	; 4: 84 111 114 0

string_Fre#:
x5504:	db "Fre", 0	; 4: 70 114 101 0

string_Lor#:
x5508:	db "Lor", 0	; 4: 76 111 114 0

@15$swLongDayList:
x5512:	dw string_Sondag# ; 2: -106 21
x5514:	dw string_Mandag# ; 2: -99 21
x5516:	dw string_Tisdag# ; 2: -92 21
x5518:	dw string_Onsdag# ; 2: -85 21
x5520:	dw string_Torsdag# ; 2: -78 21
x5522:	dw string_Fredag# ; 2: -70 21
x5524:	dw string_Lordag# ; 2: -63 21

string_Sondag#:
x5526:	db "Sondag", 0	; 7: 83 111 110 100 97 103 0

string_Mandag#:
x5533:	db "Mandag", 0	; 7: 77 97 110 100 97 103 0

string_Tisdag#:
x5540:	db "Tisdag", 0	; 7: 84 105 115 100 97 103 0

string_Onsdag#:
x5547:	db "Onsdag", 0	; 7: 79 110 115 100 97 103 0

string_Torsdag#:
x5554:	db "Torsdag", 0	; 8: 84 111 114 115 100 97 103 0

string_Fredag#:
x5562:	db "Fredag", 0	; 7: 70 114 101 100 97 103 0

string_Lordag#:
x5569:	db "Lordag", 0	; 7: 76 111 114 100 97 103 0

@11$enShortMonthList:
x5576:	dw string_Jan# ; 2: -32 21
x5578:	dw string_Feb# ; 2: -28 21
x5580:	dw string_Mar# ; 2: -24 21
x5582:	dw string_Apr# ; 2: -20 21
x5584:	dw string_May# ; 2: -16 21
x5586:	dw string_Jun# ; 2: -12 21
x5588:	dw string_Jul# ; 2: -8 21
x5590:	dw string_Aug# ; 2: -4 21
x5592:	dw string_Sep# ; 2: 0 22
x5594:	dw string_Oct# ; 2: 4 22
x5596:	dw string_Nov# ; 2: 8 22
x5598:	dw string_Dec# ; 2: 12 22

string_Jan#:
x5600:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5604:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5608:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5612:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5616:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5620:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5624:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5628:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5632:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5636:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5640:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5644:	db "Dec", 0	; 4: 68 101 99 0

@17$swLongMonthList:
x5648:	dw string_Januari# ; 2: 40 22
x5650:	dw string_Februari# ; 2: 48 22
x5652:	dw string_Mars# ; 2: 57 22
x5654:	dw string_April# ; 2: 62 22
x5656:	dw string_Maj# ; 2: 68 22
x5658:	dw string_Juni# ; 2: 72 22
x5660:	dw string_Juli# ; 2: 77 22
x5662:	dw string_Augusit# ; 2: 82 22
x5664:	dw string_September# ; 2: 90 22
x5666:	dw string_Oktober# ; 2: 100 22
x5668:	dw string_November# ; 2: 108 22
x5670:	dw string_December# ; 2: 117 22

string_Januari#:
x5672:	db "Januari", 0	; 8: 74 97 110 117 97 114 105 0

string_Februari#:
x5680:	db "Februari", 0	; 9: 70 101 98 114 117 97 114 105 0

string_Mars#:
x5689:	db "Mars", 0	; 5: 77 97 114 115 0

string_April#:
x5694:	db "April", 0	; 6: 65 112 114 105 108 0

string_Maj#:
x5700:	db "Maj", 0	; 4: 77 97 106 0

string_Juni#:
x5704:	db "Juni", 0	; 5: 74 117 110 105 0

string_Juli#:
x5709:	db "Juli", 0	; 5: 74 117 108 105 0

string_Augusit#:
x5714:	db "Augusit", 0	; 8: 65 117 103 117 115 105 116 0

string_September#:
x5722:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_Oktober#:
x5732:	db "Oktober", 0	; 8: 79 107 116 111 98 101 114 0

string_November#:
x5740:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5749:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5758:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5785:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

@18$swMessageList:
x5812:	dw string_inga20fel# ; 2: -38 22
x5814:	dw string_felaktigt20functionsnummer# ; 2: -29 22
x5816:	dw string_hittar20ej20filen# ; 2: -3 22
x5818:	dw string_hittar20ej20sokvagen# ; 2: 13 23
x5820:	dw string_inget20handtag20tillgangligt# ; 2: 32 23
x5822:	dw string_atkomst20nekad# ; 2: 59 23
x5824:	dw string_utanfor20doman# ; 2: 73 23
x5826:	dw string_utanfor20range# ; 2: 87 23
x5828:	dw string_felaktig20multibyte2Dsekvens# ; 2: 101 23
x5830:	dw string_fel20vid20oppning# ; 2: -128 23
x5832:	dw string_fel20vid20flushing# ; 2: -112 23
x5834:	dw string_fel20vid20stangning# ; 2: -95 23
x5836:	dw string_fel20oppningslage# ; 2: -77 23
x5838:	dw string_fel20vid20skrivning# ; 2: -60 23
x5840:	dw string_fel20vid20lasning# ; 2: -42 23
x5842:	dw string_fel20vid20sokning# ; 2: -26 23
x5844:	dw string_fel20vid20telling# ; 2: -10 23
x5846:	dw string_fel20vid20borttagning20av20fil# ; 2: 6 24
x5848:	dw string_fel20vid20namnbyte20av20fil# ; 2: 33 24

string_inga20fel#:
x5850:	db "inga fel", 0	; 9: 105 110 103 97 32 102 101 108 0

string_felaktigt20functionsnummer#:
x5859:	db "felaktigt functionsnummer", 0	; 26: 102 101 108 97 107 116 105 103 116 32 102 117 110 99 116 105 111 110 115 110 117 109 109 101 114 0

string_hittar20ej20filen#:
x5885:	db "hittar ej filen", 0	; 16: 104 105 116 116 97 114 32 101 106 32 102 105 108 101 110 0

string_hittar20ej20sokvagen#:
x5901:	db "hittar ej sokvagen", 0	; 19: 104 105 116 116 97 114 32 101 106 32 115 111 107 118 97 103 101 110 0

string_inget20handtag20tillgangligt#:
x5920:	db "inget handtag tillgangligt", 0	; 27: 105 110 103 101 116 32 104 97 110 100 116 97 103 32 116 105 108 108 103 97 110 103 108 105 103 116 0

string_atkomst20nekad#:
x5947:	db "atkomst nekad", 0	; 14: 97 116 107 111 109 115 116 32 110 101 107 97 100 0

string_utanfor20doman#:
x5961:	db "utanfor doman", 0	; 14: 117 116 97 110 102 111 114 32 100 111 109 97 110 0

string_utanfor20range#:
x5975:	db "utanfor range", 0	; 14: 117 116 97 110 102 111 114 32 114 97 110 103 101 0

string_felaktig20multibyte2Dsekvens#:
x5989:	db "felaktig multibyte-sekvens", 0	; 27: 102 101 108 97 107 116 105 103 32 109 117 108 116 105 98 121 116 101 45 115 101 107 118 101 110 115 0

string_fel20vid20oppning#:
x6016:	db "fel vid oppning", 0	; 16: 102 101 108 32 118 105 100 32 111 112 112 110 105 110 103 0

string_fel20vid20flushing#:
x6032:	db "fel vid flushing", 0	; 17: 102 101 108 32 118 105 100 32 102 108 117 115 104 105 110 103 0

string_fel20vid20stangning#:
x6049:	db "fel vid stangning", 0	; 18: 102 101 108 32 118 105 100 32 115 116 97 110 103 110 105 110 103 0

string_fel20oppningslage#:
x6067:	db "fel oppningslage", 0	; 17: 102 101 108 32 111 112 112 110 105 110 103 115 108 97 103 101 0

string_fel20vid20skrivning#:
x6084:	db "fel vid skrivning", 0	; 18: 102 101 108 32 118 105 100 32 115 107 114 105 118 110 105 110 103 0

string_fel20vid20lasning#:
x6102:	db "fel vid lasning", 0	; 16: 102 101 108 32 118 105 100 32 108 97 115 110 105 110 103 0

string_fel20vid20sokning#:
x6118:	db "fel vid sokning", 0	; 16: 102 101 108 32 118 105 100 32 115 111 107 110 105 110 103 0

string_fel20vid20telling#:
x6134:	db "fel vid telling", 0	; 16: 102 101 108 32 118 105 100 32 116 101 108 108 105 110 103 0

string_fel20vid20borttagning20av20fil#:
x6150:	db "fel vid borttagning av fil", 0	; 27: 102 101 108 32 118 105 100 32 98 111 114 116 116 97 103 110 105 110 103 32 97 118 32 102 105 108 0

string_fel20vid20namnbyte20av20fil#:
x6177:	db "fel vid namnbyte av fil", 0	; 24: 102 101 108 32 118 105 100 32 110 97 109 110 98 121 116 101 32 97 118 32 102 105 108 0

string_C#:
x6201:	db "C", 0	; 2: 67 0

@13$en_US_utf8:
x6203:	dw -5	; 2: -5 -1
x6205:	dw -4	; 2: -4 -1
x6207:	dw @9$enShortDayList ; 2: 77 24
x6209:	dw @10$enLongDayList ; 2: 119 24
x6211:	dw @11$enShortMonthList ; 2: -56 21
x6213:	dw @12$enLongMonthList ; 2: -66 24
x6215:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 126 22
x6217:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -103 22
x6219:	dw enMessageList ; 2: 6 25

@9$enShortDayList:
x6221:	dw string_Sun# ; 2: 91 24
x6223:	dw string_Mon# ; 2: 95 24
x6225:	dw string_Tue# ; 2: 99 24
x6227:	dw string_Wed# ; 2: 103 24
x6229:	dw string_Thu# ; 2: 107 24
x6231:	dw string_Fri# ; 2: 111 24
x6233:	dw string_Sat# ; 2: 115 24

string_Sun#:
x6235:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x6239:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x6243:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6247:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6251:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6255:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6259:	db "Sat", 0	; 4: 83 97 116 0

@10$enLongDayList:
x6263:	dw string_Sunday# ; 2: -123 24
x6265:	dw string_Monday# ; 2: -116 24
x6267:	dw string_Tuesday# ; 2: -109 24
x6269:	dw string_Wednesday# ; 2: -101 24
x6271:	dw string_Thursday# ; 2: -91 24
x6273:	dw string_Friday# ; 2: -82 24
x6275:	dw string_Saturday# ; 2: -75 24

string_Sunday#:
x6277:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6284:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6291:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6299:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6309:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6318:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x6325:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@12$enLongMonthList:
x6334:	dw string_January# ; 2: -42 24
x6336:	dw string_February# ; 2: -34 24
x6338:	dw string_March# ; 2: -25 24
x6340:	dw string_April# ; 2: 62 22
x6342:	dw string_May# ; 2: -16 21
x6344:	dw string_June# ; 2: -19 24
x6346:	dw string_July# ; 2: -14 24
x6348:	dw string_August# ; 2: -9 24
x6350:	dw string_September# ; 2: 90 22
x6352:	dw string_October# ; 2: -2 24
x6354:	dw string_November# ; 2: 108 22
x6356:	dw string_December# ; 2: 117 22

string_January#:
x6358:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x6366:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x6375:	db "March", 0	; 6: 77 97 114 99 104 0

string_June#:
x6381:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x6386:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x6391:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_October#:
x6398:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

enMessageList:
x6406:	dw string_no20error# ; 2: 46 25
x6408:	dw string_function20number20invalid# ; 2: 55 25
x6410:	dw string_file20not20found# ; 2: 79 25
x6412:	dw string_path20not20found# ; 2: 94 25
x6414:	dw string_no20handle20available# ; 2: 109 25
x6416:	dw string_access20denied# ; 2: -127 25
x6418:	dw string_out20of20domain# ; 2: -113 25
x6420:	dw string_out20of20range# ; 2: -99 25
x6422:	dw string_invalid20multibyte20sequence# ; 2: -86 25
x6424:	dw string_error20while20opening# ; 2: -59 25
x6426:	dw string_error20while20flushing# ; 2: -39 25
x6428:	dw string_error20while20closing# ; 2: -18 25
x6430:	dw string_open20mode20invalid# ; 2: 2 26
x6432:	dw string_error20while20writing# ; 2: 20 26
x6434:	dw string_error20while20reading# ; 2: 40 26
x6436:	dw string_error20while20seeking# ; 2: 60 26
x6438:	dw string_error20while20telling# ; 2: 80 26
x6440:	dw string_error20while20sizing# ; 2: 100 26
x6442:	dw string_error20while20removing20file# ; 2: 119 26
x6444:	dw string_error20while20renaming20file# ; 2: -111 26

string_no20error#:
x6446:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x6455:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x6479:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x6494:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x6509:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x6529:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x6543:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x6557:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x6570:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x6597:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x6617:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x6638:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x6658:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x6676:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x6696:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x6716:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x6736:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x6756:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x6775:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x6801:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_US#:
x6827:	db "US", 0	; 3: 85 83 0

string_SE#:
x6830:	db "SE", 0	; 3: 83 69 0

strchr:	; £temporary3288 = int_to_int i (Signed_Int -> Signed_Char)
x6833:	mov ax, [bp + 8]	; 3: -117 70 8
x6836:	cmp ax, 0	; 3: -125 -8 0
x6839:	jge strchr$1	; 2: 125 4
x6841:	neg ax	; 2: -9 -40
x6843:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3288
x6845:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x6848:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3290 = text + index
x6853:	mov si, [bp + 6]	; 3: -117 118 6
x6856:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3289 -> £temporary3290 = *£temporary3290

strchr$5:	; if £temporary3289 -> £temporary3290 == 0 goto 16
x6859:	cmp byte [si], 0	; 3: -128 60 0
x6862:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3294 = text + index
x6864:	mov si, [bp + 6]	; 3: -117 118 6
x6867:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3293 -> £temporary3294 = *£temporary3294

strchr$8:	; if £temporary3293 -> £temporary3294 != c goto 14
x6870:	mov al, [bp + 12]	; 3: -118 70 12
x6873:	cmp [si], al	; 2: 56 4
x6875:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3297 = text + index
x6877:	mov bx, [bp + 6]	; 3: -117 94 6
x6880:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3296 -> £temporary3297 = *£temporary3297

strchr$11:	; £temporary3298 = &£temporary3296 -> £temporary3297

strchr$12:	; return_value = £temporary3298

strchr$13:	; return
x6883:	mov ax, [bp]	; 3: -117 70 0
x6886:	mov di, [bp + 4]	; 3: -117 126 4
x6889:	mov bp, [bp + 2]	; 3: -117 110 2
x6892:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x6894:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x6897:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x6899:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x6902:	mov ax, [bp]	; 3: -117 70 0
x6905:	mov di, [bp + 4]	; 3: -117 126 4
x6908:	mov bp, [bp + 2]	; 3: -117 110 2
x6911:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x6913:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6917:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x6919:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x6923:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 25 27
x6928:	mov [bp + 24], bp	; 3: -119 110 24
x6931:	add bp, 22	; 3: -125 -59 22
x6934:	jmp printChar	; 3: -23 -33 -9

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x6937:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6941:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x6943:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x6947:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 49 27
x6952:	mov [bp + 24], bp	; 3: -119 110 24
x6955:	add bp, 22	; 3: -125 -59 22
x6958:	jmp printChar	; 3: -23 -57 -9

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x6961:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x6965:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x6967:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x6972:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x6974:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x6978:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 80 27
x6983:	mov [bp + 24], bp	; 3: -119 110 24
x6986:	add bp, 22	; 3: -125 -59 22
x6989:	jmp printChar	; 3: -23 -88 -9

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x6992:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x6997:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x6999:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x7003:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 105 27
x7008:	mov [bp + 24], bp	; 3: -119 110 24
x7011:	add bp, 22	; 3: -125 -59 22
x7014:	jmp printChar	; 3: -23 -113 -9

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x7017:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x7021:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1945 = 88
x7023:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x7025:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1945 = 120
x7027:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1945, offset 6
x7029:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x7032:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -122 27
x7037:	mov [bp + 24], bp	; 3: -119 110 24
x7040:	add bp, 22	; 3: -125 -59 22
x7043:	jmp printChar	; 3: -23 114 -9

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x7046:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7051:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x7053:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x7057:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -97 27
x7062:	mov [bp + 24], bp	; 3: -119 110 24
x7065:	add bp, 22	; 3: -125 -59 22
x7068:	jmp printChar	; 3: -23 89 -9

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x7071:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x7073:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7077:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x7081:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x7085:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x7089:	mov ax, [bp + 20]	; 3: -117 70 20
x7092:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x7095:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -59 27
x7100:	mov [bp + 24], bp	; 3: -119 110 24
x7103:	add bp, 22	; 3: -125 -59 22
x7106:	nop	; 1: -112
x7107:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x7109:	mov ax, [bp]	; 3: -117 70 0
x7112:	mov di, [bp + 4]	; 3: -117 126 4
x7115:	mov bp, [bp + 2]	; 3: -117 110 2
x7118:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x7120:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7125:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1921 = unsignedValue % base
x7127:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7131:	xor edx, edx	; 3: 102 49 -46
x7134:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1922 = int_to_int £temporary1921 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1922
x7138:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1923 = unsignedValue / base
x7141:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7145:	xor edx, edx	; 3: 102 49 -46
x7148:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1923, offset 6
x7152:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x7156:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x7160:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x7164:	mov ax, [bp + 14]	; 3: -117 70 14
x7167:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x7170:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 16 28
x7175:	mov [bp + 20], bp	; 3: -119 110 20
x7178:	add bp, 18	; 3: -125 -59 18
x7181:	nop	; 1: -112
x7182:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x7184:	mov ax, [bp + 16]	; 3: -117 70 16
x7187:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x7190:	mov ax, [bp + 14]	; 3: -117 70 14
x7193:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x7196:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 42 28
x7201:	mov [bp + 20], bp	; 3: -119 110 20
x7204:	add bp, 18	; 3: -125 -59 18
x7207:	nop	; 1: -112
x7208:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1925 = return_value

printUnsignedLongRec$17:	; c = £temporary1925
x7210:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x7213:	mov al, [bp + 18]	; 3: -118 70 18
x7216:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x7219:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 65 28
x7224:	mov [bp + 21], bp	; 3: -119 110 21
x7227:	add bp, 19	; 3: -125 -59 19
x7230:	jmp printChar	; 3: -23 -73 -10

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x7233:	mov ax, [bp]	; 3: -117 70 0
x7236:	mov di, [bp + 4]	; 3: -117 126 4
x7239:	mov bp, [bp + 2]	; 3: -117 110 2
x7242:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x7244:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x7248:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1911 = digit + 48
x7250:	mov bx, [bp + 6]	; 3: -117 94 6
x7253:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1912 = int_to_int £temporary1911 (Signed_Int -> Signed_Char)
x7256:	cmp bx, 0	; 3: -125 -5 0
x7259:	jge digitToChar$3	; 2: 125 4
x7261:	neg bx	; 2: -9 -37
x7263:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1912

digitToChar$4:	; return
x7265:	mov ax, [bp]	; 3: -117 70 0
x7268:	mov di, [bp + 4]	; 3: -117 126 4
x7271:	mov bp, [bp + 2]	; 3: -117 110 2
x7274:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x7276:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7280:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1913 = digit - 10
x7282:	mov bx, [bp + 6]	; 3: -117 94 6
x7285:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1914 = £temporary1913 + 65
x7288:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1915 = int_to_int £temporary1914 (Signed_Int -> Signed_Char)
x7291:	cmp bx, 0	; 3: -125 -5 0
x7294:	jge digitToChar$9	; 2: 125 4
x7296:	neg bx	; 2: -9 -37
x7298:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1915

digitToChar$10:	; return
x7300:	mov ax, [bp]	; 3: -117 70 0
x7303:	mov di, [bp + 4]	; 3: -117 126 4
x7306:	mov bp, [bp + 2]	; 3: -117 110 2
x7309:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1916 = digit - 10
x7311:	mov bx, [bp + 6]	; 3: -117 94 6
x7314:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1917 = £temporary1916 + 97
x7317:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1918 = int_to_int £temporary1917 (Signed_Int -> Signed_Char)
x7320:	cmp bx, 0	; 3: -125 -5 0
x7323:	jge digitToChar$14	; 2: 125 4
x7325:	neg bx	; 2: -9 -37
x7327:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1918

digitToChar$15:	; return
x7329:	mov ax, [bp]	; 3: -117 70 0
x7332:	mov di, [bp + 4]	; 3: -117 126 4
x7335:	mov bp, [bp + 2]	; 3: -117 110 2
x7338:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x7340:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x7343:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x7345:	fcompp	; 2: -34 -39
x7347:	fstsw ax	; 3: -101 -33 -32
x7350:	sahf	; 1: -98
x7351:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x7353:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x7357:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -53 28
x7362:	mov [bp + 24], bp	; 3: -119 110 24
x7365:	add bp, 22	; 3: -125 -59 22
x7368:	jmp printChar	; 3: -23 45 -10

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x7371:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1981 = -longDoubleValue
x7374:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x7376:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x7379:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x7384:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x7389:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1982 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7392:	fistp dword [container4bytes#]	; 4: -37 30 68 29
x7396:	mov eax, [container4bytes#]	; 4: 102 -95 68 29

printLongDoublePlain$14:	; longValue = £temporary1982
x7400:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x7404:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7408:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x7412:	mov ax, [bp + 14]	; 3: -117 70 14
x7415:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x7418:	mov ax, [bp + 16]	; 3: -117 70 16
x7421:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x7424:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 14 29
x7429:	mov [bp + 28], bp	; 3: -119 110 28
x7432:	add bp, 26	; 3: -125 -59 26
x7435:	jmp printLongInt	; 3: -23 86 -11

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x7438:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1984 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x7441:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1985 = longDoubleValue - £temporary1984
x7444:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x7446:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x7449:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x7452:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x7455:	mov ax, [bp + 18]	; 3: -117 70 18
x7458:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x7461:	mov ax, [bp + 20]	; 3: -117 70 20
x7464:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x7467:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 57 29
x7472:	mov [bp + 28], bp	; 3: -119 110 28
x7475:	add bp, 26	; 3: -125 -59 26
x7478:	nop	; 1: -112
x7479:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x7481:	mov ax, [bp]	; 3: -117 70 0
x7484:	mov di, [bp + 4]	; 3: -117 126 4
x7487:	mov bp, [bp + 2]	; 3: -117 110 2
x7490:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x7492:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x7496:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x7499:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1960 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7502:	fistp dword [container4bytes#]	; 4: -37 30 68 29
x7506:	mov eax, [container4bytes#]	; 4: 102 -95 68 29

printLongDoubleFraction$3:	; £temporary1961 = int_to_float £temporary1960 (Signed_Long_Int -> Long_Double)
x7510:	mov [container4bytes#], eax	; 4: 102 -93 68 29
x7514:	fild dword [container4bytes#]	; 4: -37 6 68 29

printLongDoubleFraction$4:	; £temporary1962 = longDoubleValue - £temporary1961
x7518:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x7520:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x7523:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7527:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 9
x7529:	mov word [bp + 16], 9	; 5: -57 70 16 9 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x7534:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7538:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x7540:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7544:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x7546:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x7550:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -116 29
x7555:	mov [bp + 20], bp	; 3: -119 110 20
x7558:	add bp, 18	; 3: -125 -59 18
x7561:	jmp printChar	; 3: -23 108 -11

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1968 = precision
x7564:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x7567:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1968 <= 0 goto 34
x7570:	cmp ax, 0	; 3: -125 -8 0
x7573:	jle printLongDoubleFraction$34	; 2: 126 67

printLongDoubleFraction$17:	; push float 10.0
x7575:	fld qword [float8$10.0#]	; 4: -35 6 -27 29

printLongDoubleFraction$18:	; push float longDoubleValue
x7579:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1970 = 10.0 * longDoubleValue
x7582:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; top float longDoubleValue10
x7584:	fst qword [bp + 18]	; 3: -35 86 18

printLongDoubleFraction$21:	; £temporary1971 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x7587:	fistp word [container2bytes#]	; 4: -33 30 -9 17
x7591:	mov ax, [container2bytes#]	; 3: -95 -9 17

printLongDoubleFraction$22:	; digitValue = £temporary1971
x7594:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$23:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$24:	; £temporary1972 = digitValue + 48
x7597:	mov ax, [bp + 26]	; 3: -117 70 26
x7600:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$25:	; £temporary1973 = int_to_int £temporary1972 (Signed_Int -> Signed_Char)
x7603:	cmp ax, 0	; 3: -125 -8 0
x7606:	jge printLongDoubleFraction$26	; 2: 125 4
x7608:	neg ax	; 2: -9 -40
x7610:	neg al	; 2: -10 -40

printLongDoubleFraction$26:	; parameter £temporary1973, offset 6
x7612:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$27:	; call function noellipse-noellipse printChar
x7615:	mov word [bp + 28], printLongDoubleFraction$28	; 5: -57 70 28 -51 29
x7620:	mov [bp + 30], bp	; 3: -119 110 30
x7623:	add bp, 28	; 3: -125 -59 28
x7626:	jmp printChar	; 3: -23 43 -11

printLongDoubleFraction$28:	; post call

printLongDoubleFraction$29:	; push float longDoubleValue10
x7629:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$30:	; £temporary1975 = int_to_float digitValue (Signed_Int -> Long_Double)
x7632:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$31:	; £temporary1976 = longDoubleValue10 - £temporary1975
x7635:	fsub	; 2: -34 -23

printLongDoubleFraction$32:	; pop float longDoubleValue
x7637:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$33:	; goto 14
x7640:	jmp printLongDoubleFraction$14	; 2: -21 -78

printLongDoubleFraction$34:	; return
x7642:	mov ax, [bp]	; 3: -117 70 0
x7645:	mov di, [bp + 4]	; 3: -117 126 4
x7648:	mov bp, [bp + 2]	; 3: -117 110 2
x7651:	jmp ax	; 2: -1 -32

printLongDoubleFraction$35:	; function end printLongDoubleFraction

float8$10.0#:
x7653:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x7661:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x7664:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x7666:	fcompp	; 2: -34 -39
x7668:	fstsw ax	; 3: -101 -33 -32
x7671:	sahf	; 1: -98
x7672:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x7674:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary883 = -x
x7677:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7679:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7681:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary887

fabs$9:	; return
x7684:	mov ax, [bp]	; 3: -117 70 0
x7687:	mov di, [bp + 4]	; 3: -117 126 4
x7690:	mov bp, [bp + 2]	; 3: -117 110 2
x7693:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x7695:	mov ax, [bp + 6]	; 3: -117 70 6
x7698:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x7701:	mov word [bp + 8], tolower$3	; 5: -57 70 8 35 30
x7706:	mov [bp + 10], bp	; 3: -119 110 10
x7709:	add bp, 8	; 3: -125 -59 8
x7712:	jmp isupper	; 3: -23 -115 -10

tolower$3:	; post call

tolower$4:	; £temporary417 = return_value

tolower$5:	; if £temporary417 == 0 goto 31
x7715:	cmp bx, 0	; 3: -125 -5 0
x7718:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x7720:	mov word [bp + 8], tolower$8	; 5: -57 70 8 54 30
x7725:	mov [bp + 10], bp	; 3: -119 110 10
x7728:	add bp, 8	; 3: -125 -59 8
x7731:	jmp localeconv	; 3: -23 -27 -10

tolower$8:	; post call

tolower$9:	; £temporary418 = return_value

tolower$10:	; localeConvPtr = £temporary418
x7734:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x7737:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7741:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary420 -> localeConvPtr = *localeConvPtr, offset 12
x7743:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary420 -> localeConvPtr
x7746:	mov ax, [si + 12]	; 3: -117 68 12
x7749:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary421 -> localeConvPtr = *localeConvPtr, offset 14
x7752:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary421 -> localeConvPtr
x7755:	mov ax, [si + 14]	; 3: -117 68 14
x7758:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x7761:	mov ax, [bp + 12]	; 3: -117 70 12
x7764:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x7767:	mov ax, [bp + 6]	; 3: -117 70 6
x7770:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x7773:	mov word [bp + 14], tolower$20	; 5: -57 70 14 107 30
x7778:	mov [bp + 16], bp	; 3: -119 110 16
x7781:	add bp, 14	; 3: -125 -59 14
x7784:	jmp strchr	; 3: -23 70 -4

tolower$20:	; post call

tolower$21:	; £temporary422 = return_value

tolower$22:	; index = £temporary422 - upperCase
x7787:	sub bx, [bp + 12]	; 3: 43 94 12
x7790:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary425 = lowerCase + index
x7793:	mov si, [bp + 10]	; 3: -117 118 10
x7796:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary424 -> £temporary425 = *£temporary425

tolower$25:	; £temporary426 = int_to_int £temporary424 -> £temporary425 (Signed_Char -> Signed_Int)
x7799:	mov bl, [si]	; 2: -118 28
x7801:	and bx, 255	; 4: -127 -29 -1 0
x7805:	cmp bl, 0	; 3: -128 -5 0
x7808:	jge tolower$26	; 2: 125 4
x7810:	neg bl	; 2: -10 -37
x7812:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary426

tolower$27:	; return
x7814:	mov ax, [bp]	; 3: -117 70 0
x7817:	mov di, [bp + 4]	; 3: -117 126 4
x7820:	mov bp, [bp + 2]	; 3: -117 110 2
x7823:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary427 = c + 32
x7825:	mov bx, [bp + 6]	; 3: -117 94 6
x7828:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary427

tolower$30:	; return
x7831:	mov ax, [bp]	; 3: -117 70 0
x7834:	mov di, [bp + 4]	; 3: -117 126 4
x7837:	mov bp, [bp + 2]	; 3: -117 110 2
x7840:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x7842:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x7845:	mov ax, [bp]	; 3: -117 70 0
x7848:	mov di, [bp + 4]	; 3: -117 126 4
x7851:	mov bp, [bp + 2]	; 3: -117 110 2
x7854:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x7856:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x7859:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x7861:	fcompp	; 2: -34 -39
x7863:	fstsw ax	; 3: -101 -33 -32
x7866:	sahf	; 1: -98
x7867:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x7869:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x7873:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -49 30
x7878:	mov [bp + 26], bp	; 3: -119 110 26
x7881:	add bp, 24	; 3: -125 -59 24
x7884:	jmp printChar	; 3: -23 41 -12

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x7887:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x7889:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x7892:	mov ax, [bp + 20]	; 3: -117 70 20
x7895:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x7898:	mov ax, [bp + 18]	; 3: -117 70 18
x7901:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x7904:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -18 30
x7909:	mov [bp + 26], bp	; 3: -119 110 26
x7912:	add bp, 24	; 3: -125 -59 24
x7915:	jmp printLongDoubleFraction	; 3: -23 90 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x7918:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7922:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary2001 = 69
x7924:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x7926:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary2001 = 101
x7928:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary2001, offset 6
x7930:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x7933:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 11 31
x7938:	mov [bp + 26], bp	; 3: -119 110 26
x7941:	add bp, 24	; 3: -125 -59 24
x7944:	jmp printChar	; 3: -23 -19 -13

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x7947:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x7951:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 29 31
x7956:	mov [bp + 26], bp	; 3: -119 110 26
x7959:	add bp, 24	; 3: -125 -59 24
x7962:	jmp printChar	; 3: -23 -37 -13

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x7965:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x7968:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x7971:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x7973:	fcompp	; 2: -34 -39
x7975:	fstsw ax	; 3: -101 -33 -32
x7978:	sahf	; 1: -98
x7979:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x7981:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x7985:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 63 31
x7990:	mov [bp + 26], bp	; 3: -119 110 26
x7993:	add bp, 24	; 3: -125 -59 24
x7996:	jmp printChar	; 3: -23 -71 -13

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x7999:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary2006 = -value
x8002:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x8004:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x8007:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x8010:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x8013:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 91 31
x8018:	mov [bp + 26], bp	; 3: -119 110 26
x8021:	add bp, 24	; 3: -125 -59 24
x8024:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary2007 = return_value

printLongDoubleExpo$43:	; £temporary2008 = float_to_int £temporary2007 (Double -> Signed_Int)
x8027:	fistp word [container2bytes#]	; 4: -33 30 -9 17
x8031:	mov ax, [container2bytes#]	; 3: -95 -9 17

printLongDoubleExpo$44:	; expo = £temporary2008
x8034:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x8037:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x8040:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x8043:	fld qword [float8$10.0#]	; 4: -35 6 -27 29

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x8047:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary2009 = int_to_float expo (Signed_Int -> Double)
x8050:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary2009, offset 14
x8053:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x8056:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -122 31
x8061:	mov [bp + 36], bp	; 3: -119 110 36
x8064:	add bp, 34	; 3: -125 -59 34
x8067:	jmp pow	; 3: -23 -22 1

printLongDoubleExpo$52:	; post call
x8070:	fstp qword [bp + 34]	; 3: -35 94 34
x8073:	fld qword [bp + 26]	; 3: -35 70 26
x8076:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary2010 = return_value

printLongDoubleExpo$54:	; £temporary2011 = value / £temporary2010
x8079:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x8081:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x8084:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x8087:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x8090:	mov ax, [bp + 14]	; 3: -117 70 14
x8093:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x8096:	mov ax, [bp + 16]	; 3: -117 70 16
x8099:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x8102:	mov ax, [bp + 18]	; 3: -117 70 18
x8105:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x8108:	mov ax, [bp + 20]	; 3: -117 70 20
x8111:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x8114:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -64 31
x8119:	mov [bp + 28], bp	; 3: -119 110 28
x8122:	add bp, 26	; 3: -125 -59 26
x8125:	jmp printLongDoublePlain	; 3: -23 -20 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x8128:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8132:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary2017 = 69
x8134:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x8136:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary2017 = 101
x8138:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary2017, offset 6
x8140:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x8143:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -35 31
x8148:	mov [bp + 28], bp	; 3: -119 110 28
x8151:	add bp, 26	; 3: -125 -59 26
x8154:	jmp printChar	; 3: -23 27 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary2019 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x8157:	mov ax, [bp + 24]	; 3: -117 70 24
x8160:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8166:	cmp ax, 0	; 3: -125 -8 0
x8169:	jge printLongDoubleExpo$75	; 2: 125 5
x8171:	neg ax	; 2: -9 -40
x8173:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary2019, offset 6
x8176:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x8180:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x8185:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x8190:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 12 32
x8195:	mov [bp + 28], bp	; 3: -119 110 28
x8198:	add bp, 26	; 3: -125 -59 26
x8201:	jmp printLongInt	; 3: -23 88 -14

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x8204:	mov ax, [bp]	; 3: -117 70 0
x8207:	mov di, [bp + 4]	; 3: -117 126 4
x8210:	mov bp, [bp + 2]	; 3: -117 110 2
x8213:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; push float 0.4342944820
x8215:	fld qword [float8$0.4342944820#]	; 4: -35 6 72 32

log10$1:	; call header integral zero 0 stack no zero 1
x8219:	fstp qword [bp + 14]	; 3: -35 94 14

log10$2:	; push float x
x8222:	fld qword [bp + 6]	; 3: -35 70 6

log10$3:	; parameter x, offset 6
x8225:	fstp qword [bp + 28]	; 3: -35 94 28

log10$4:	; call function noellipse-noellipse log
x8228:	mov word [bp + 22], log10$5	; 5: -57 70 22 50 32
x8233:	mov [bp + 24], bp	; 3: -119 110 24
x8236:	add bp, 22	; 3: -125 -59 22
x8239:	nop	; 1: -112
x8240:	jmp log	; 2: -21 30

log10$5:	; post call
x8242:	fstp qword [bp + 22]	; 3: -35 94 22
x8245:	fld qword [bp + 14]	; 3: -35 70 14
x8248:	fld qword [bp + 22]	; 3: -35 70 22

log10$6:	; £temporary510 = return_value

log10$7:	; £temporary511 = 0.4342944820 * £temporary510
x8251:	fmul	; 2: -34 -55

log10$8:	; return_value = £temporary511

log10$9:	; return
x8253:	mov ax, [bp]	; 3: -117 70 0
x8256:	mov di, [bp + 4]	; 3: -117 126 4
x8259:	mov bp, [bp + 2]	; 3: -117 110 2
x8262:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$0.4342944820#:
x8264:	dq 0.4342944820	; 8: 26 125 65 21 123 -53 -37 63

log:	; push float x_plus_1
x8272:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x8275:	fldz	; 2: -39 -18

log$2:	; if x_plus_1 <= 0 goto 70
x8277:	fcompp	; 2: -34 -39
x8279:	fstsw ax	; 3: -101 -33 -32
x8282:	sahf	; 1: -98
x8283:	jae log$70	; 4: 15 -125 -44 0

log$3:	; expo = 0
x8287:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x_plus_1
x8292:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push float 0.3678794411714423216036827922
x8295:	fld qword [float8$0.3678794411714423216036827922#]	; 4: -35 6 70 33

log$6:	; if x_plus_1 >= 0.3678794411714423216036827922 goto 13
x8299:	fcompp	; 2: -34 -39
x8301:	fstsw ax	; 3: -101 -33 -32
x8304:	sahf	; 1: -98
x8305:	jbe log$13	; 2: 118 17

log$7:	; push float x_plus_1
x8307:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push float 2.7182818284590452353
x8310:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 78 33

log$9:	; £temporary493 = x_plus_1 * 2.7182818284590452353
x8314:	fmul	; 2: -34 -55

log$10:	; pop float x_plus_1
x8316:	fstp qword [bp + 6]	; 3: -35 94 6

log$11:	; --expo
x8319:	dec word [bp + 14]	; 3: -1 78 14

log$12:	; goto 4
x8322:	jmp log$4	; 2: -21 -32

log$13:	; push float x_plus_1
x8324:	fld qword [bp + 6]	; 3: -35 70 6

log$14:	; push float 0.7357588823428846432073655843
x8327:	fld qword [float8$0.7357588823428846432073655843#]	; 4: -35 6 86 33

log$15:	; if x_plus_1 <= 0.7357588823428846432073655843 goto 22
x8331:	fcompp	; 2: -34 -39
x8333:	fstsw ax	; 3: -101 -33 -32
x8336:	sahf	; 1: -98
x8337:	jae log$22	; 2: 115 17

log$16:	; push float x_plus_1
x8339:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 2.7182818284590452353
x8342:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 78 33

log$18:	; £temporary496 = x_plus_1 / 2.7182818284590452353
x8346:	fdiv	; 2: -34 -7

log$19:	; pop float x_plus_1
x8348:	fstp qword [bp + 6]	; 3: -35 94 6

log$20:	; ++expo
x8351:	inc word [bp + 14]	; 3: -1 70 14

log$21:	; goto 13
x8354:	jmp log$13	; 2: -21 -32

log$22:	; push 1
x8356:	fld1	; 2: -39 -24

log$23:	; pop float n
x8358:	fstp qword [bp + 16]	; 3: -35 94 16

log$24:	; push 1
x8361:	fld1	; 2: -39 -24

log$25:	; pop float plusMinusOne
x8363:	fstp qword [bp + 24]	; 3: -35 94 24

log$26:	; push float x_plus_1
x8366:	fld qword [bp + 6]	; 3: -35 70 6

log$27:	; push 1
x8369:	fld1	; 2: -39 -24

log$28:	; £temporary498 = x_plus_1 - 1
x8371:	fsub	; 2: -34 -23

log$29:	; pop float x
x8373:	fstp qword [bp + 32]	; 3: -35 94 32

log$30:	; push 0
x8376:	fldz	; 2: -39 -18

log$31:	; pop float sum
x8378:	fstp qword [bp + 48]	; 3: -35 94 48

log$32:	; push float x
x8381:	fld qword [bp + 32]	; 3: -35 70 32

log$33:	; pop float power
x8384:	fstp qword [bp + 56]	; 3: -35 94 56

log$34:	; push float plusMinusOne
x8387:	fld qword [bp + 24]	; 3: -35 70 24

log$35:	; push float power
x8390:	fld qword [bp + 56]	; 3: -35 70 56

log$36:	; push float n
x8393:	fld qword [bp + 16]	; 3: -35 70 16

log$37:	; push 1
x8396:	fld1	; 2: -39 -24

log$38:	; n = n + 1
x8398:	fadd	; 2: -34 -63

log$39:	; top float n
x8400:	fst qword [bp + 16]	; 3: -35 86 16

log$40:	; push 1
x8403:	fld1	; 2: -39 -24

log$41:	; n = n - 1
x8405:	fsub	; 2: -34 -23

log$42:	; £temporary500 = power / £temporary499
x8407:	fdiv	; 2: -34 -7

log$43:	; £temporary501 = plusMinusOne * £temporary500
x8409:	fmul	; 2: -34 -55

log$44:	; pop float term
x8411:	fstp qword [bp + 40]	; 3: -35 94 40

log$45:	; push float sum
x8414:	fld qword [bp + 48]	; 3: -35 70 48

log$46:	; push float term
x8417:	fld qword [bp + 40]	; 3: -35 70 40

log$47:	; £temporary502 = sum + term
x8420:	fadd	; 2: -34 -63

log$48:	; pop float sum
x8422:	fstp qword [bp + 48]	; 3: -35 94 48

log$49:	; push float power
x8425:	fld qword [bp + 56]	; 3: -35 70 56

log$50:	; push float x
x8428:	fld qword [bp + 32]	; 3: -35 70 32

log$51:	; £temporary503 = power * x
x8431:	fmul	; 2: -34 -55

log$52:	; pop float power
x8433:	fstp qword [bp + 56]	; 3: -35 94 56

log$53:	; push float plusMinusOne
x8436:	fld qword [bp + 24]	; 3: -35 70 24

log$54:	; push float -1.0
x8439:	fld qword [float8$minus1.0#]	; 4: -35 6 94 33

log$55:	; £temporary504 = plusMinusOne * -1.0
x8443:	fmul	; 2: -34 -55

log$56:	; pop float plusMinusOne
x8445:	fstp qword [bp + 24]	; 3: -35 94 24

log$57:	; call header integral zero 0 stack zero 0

log$58:	; push float term
x8448:	fld qword [bp + 40]	; 3: -35 70 40

log$59:	; parameter term, offset 6
x8451:	fstp qword [bp + 70]	; 3: -35 94 70

log$60:	; call function noellipse-noellipse fabs
x8454:	mov word [bp + 64], log$61	; 5: -57 70 64 20 33
x8459:	mov [bp + 66], bp	; 3: -119 110 66
x8462:	add bp, 64	; 3: -125 -59 64
x8465:	jmp fabs	; 3: -23 -39 -4

log$61:	; post call

log$62:	; £temporary505 = return_value

log$63:	; push float 0.000000001
x8468:	fld qword [float8$0.000000001#]	; 4: -35 6 102 33

log$64:	; if £temporary505 > 0.000000001 goto 34
x8472:	fcompp	; 2: -34 -39
x8474:	fstsw ax	; 3: -101 -33 -32
x8477:	sahf	; 1: -98
x8478:	jb log$34	; 2: 114 -93

log$65:	; push float sum
x8480:	fld qword [bp + 48]	; 3: -35 70 48

log$66:	; £temporary507 = int_to_float expo (Signed_Int -> Double)
x8483:	fild word [bp + 14]	; 3: -33 70 14

log$67:	; £temporary508 = sum + £temporary507
x8486:	fadd	; 2: -34 -63

log$68:	; return_value = £temporary508

log$69:	; return
x8488:	mov ax, [bp]	; 3: -117 70 0
x8491:	mov di, [bp + 4]	; 3: -117 126 4
x8494:	mov bp, [bp + 2]	; 3: -117 110 2
x8497:	jmp ax	; 2: -1 -32

log$70:	; errno = 6
x8499:	mov word [errno], 6	; 6: -57 6 110 33 6 0

log$71:	; push 0
x8505:	fldz	; 2: -39 -18

log$72:	; return_value = 0

log$73:	; return
x8507:	mov ax, [bp]	; 3: -117 70 0
x8510:	mov di, [bp + 4]	; 3: -117 126 4
x8513:	mov bp, [bp + 2]	; 3: -117 110 2
x8516:	jmp ax	; 2: -1 -32

log$74:	; function end log

float8$0.3678794411714423216036827922#:
x8518:	dq 0.3678794411714423216036827922	; 8: 56 -17 44 54 86 -117 -41 63

float8$2.7182818284590452353#:
x8526:	dq 2.7182818284590452353	; 8: 105 87 20 -117 10 -65 5 64

float8$0.7357588823428846432073655843#:
x8534:	dq 0.7357588823428846432073655843	; 8: 56 -17 44 54 86 -117 -25 63

float8$minus1.0#:
x8542:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8550:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x8558:	dw 0	; 2: 0 0

pow:	; push float x
x8560:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x8563:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x8565:	fcompp	; 2: -34 -39
x8567:	fstsw ax	; 3: -101 -33 -32
x8570:	sahf	; 1: -98
x8571:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x8573:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x8576:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x8579:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x8582:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x8585:	mov word [bp + 30], pow$9	; 5: -57 70 30 -105 33
x8590:	mov [bp + 32], bp	; 3: -119 110 32
x8593:	add bp, 30	; 3: -125 -59 30
x8596:	jmp log	; 3: -23 -71 -2

pow$9:	; post call
x8599:	fstp qword [bp + 30]	; 3: -35 94 30
x8602:	fld qword [bp + 22]	; 3: -35 70 22
x8605:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary536 = return_value

pow$11:	; £temporary537 = y * £temporary536
x8608:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary537, offset 6
x8610:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x8613:	mov word [bp + 22], pow$14	; 5: -57 70 22 -77 33
x8618:	mov [bp + 24], bp	; 3: -119 110 24
x8621:	add bp, 22	; 3: -125 -59 22
x8624:	nop	; 1: -112
x8625:	jmp exp	; 2: -21 30

pow$14:	; post call

pow$15:	; £temporary538 = return_value

pow$16:	; return_value = £temporary538

pow$17:	; return
x8627:	mov ax, [bp]	; 3: -117 70 0
x8630:	mov di, [bp + 4]	; 3: -117 126 4
x8633:	mov bp, [bp + 2]	; 3: -117 110 2
x8636:	jmp ax	; 2: -1 -32

pow$18:	; errno = 6
x8638:	mov word [errno], 6	; 6: -57 6 110 33 6 0

pow$19:	; push 0
x8644:	fldz	; 2: -39 -18

pow$20:	; return_value = 0

pow$21:	; return
x8646:	mov ax, [bp]	; 3: -117 70 0
x8649:	mov di, [bp + 4]	; 3: -117 126 4
x8652:	mov bp, [bp + 2]	; 3: -117 110 2
x8655:	jmp ax	; 2: -1 -32

pow$22:	; function end pow

exp:	; push 0
x8657:	fldz	; 2: -39 -18

exp$1:	; pop float n
x8659:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x8662:	fld1	; 2: -39 -24

exp$3:	; pop float faculty
x8664:	fstp qword [bp + 22]	; 3: -35 94 22

exp$4:	; push 1
x8667:	fld1	; 2: -39 -24

exp$5:	; pop float power
x8669:	fstp qword [bp + 30]	; 3: -35 94 30

exp$6:	; push 0
x8672:	fldz	; 2: -39 -18

exp$7:	; pop float sum
x8674:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x8677:	fld qword [bp + 30]	; 3: -35 70 30

exp$9:	; push float faculty
x8680:	fld qword [bp + 22]	; 3: -35 70 22

exp$10:	; £temporary483 = power / faculty
x8683:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x8685:	fstp qword [bp + 38]	; 3: -35 94 38

exp$12:	; push float sum
x8688:	fld qword [bp + 46]	; 3: -35 70 46

exp$13:	; push float term
x8691:	fld qword [bp + 38]	; 3: -35 70 38

exp$14:	; £temporary484 = sum + term
x8694:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x8696:	fstp qword [bp + 46]	; 3: -35 94 46

exp$16:	; push float power
x8699:	fld qword [bp + 30]	; 3: -35 70 30

exp$17:	; push float x
x8702:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary485 = power * x
x8705:	fmul	; 2: -34 -55

exp$19:	; pop float power
x8707:	fstp qword [bp + 30]	; 3: -35 94 30

exp$20:	; push float faculty
x8710:	fld qword [bp + 22]	; 3: -35 70 22

exp$21:	; push float n
x8713:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x8716:	fld1	; 2: -39 -24

exp$23:	; n = n + 1
x8718:	fadd	; 2: -34 -63

exp$24:	; top float n
x8720:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary487 = faculty * £temporary486
x8723:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x8725:	fstp qword [bp + 22]	; 3: -35 94 22

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x8728:	fld qword [bp + 38]	; 3: -35 70 38

exp$29:	; parameter term, offset 6
x8731:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x8734:	mov word [bp + 54], exp$31	; 5: -57 70 54 44 34
x8739:	mov [bp + 56], bp	; 3: -119 110 56
x8742:	add bp, 54	; 3: -125 -59 54
x8745:	jmp fabs	; 3: -23 -63 -5

exp$31:	; post call

exp$32:	; £temporary488 = return_value

exp$33:	; push float 0.000000001
x8748:	fld qword [float8$0.000000001#]	; 4: -35 6 102 33

exp$34:	; if £temporary488 >= 0.000000001 goto 8
x8752:	fcompp	; 2: -34 -39
x8754:	fstsw ax	; 3: -101 -33 -32
x8757:	sahf	; 1: -98
x8758:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x8760:	fld qword [bp + 46]	; 3: -35 70 46

exp$36:	; return_value = sum

exp$37:	; return
x8763:	mov ax, [bp]	; 3: -117 70 0
x8766:	mov di, [bp + 4]	; 3: -117 126 4
x8769:	mov bp, [bp + 2]	; 3: -117 110 2
x8772:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

isdigit:	; if c < 48 goto 4
x8774:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x8778:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x8780:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x8784:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary352 = 1
x8786:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x8789:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary352 = 0
x8791:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary352

isdigit$6:	; return
x8794:	mov ax, [bp]	; 3: -117 70 0
x8797:	mov di, [bp + 4]	; 3: -117 126 4
x8800:	mov bp, [bp + 2]	; 3: -117 110 2
x8803:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

mktime:	; if tp == 0 goto 28
x8805:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x8809:	je mktime$28	; 4: 15 -124 -40 0

mktime$1:	; £temporary2758 -> tp = *tp, offset 10
x8813:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; £temporary2759 = £temporary2758 -> tp - 69
x8816:	mov ax, [si + 10]	; 3: -117 68 10
x8819:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; £temporary2760 = £temporary2759 / 4
x8822:	xor dx, dx	; 2: 49 -46
x8824:	idiv word [int2$4#]	; 4: -9 62 86 35

mktime$4:	; £temporary2761 = int_to_int £temporary2760 (Signed_Int -> Signed_Long_Int)
x8828:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8834:	cmp ax, 0	; 3: -125 -8 0
x8837:	jge mktime$5	; 2: 125 5
x8839:	neg ax	; 2: -9 -40
x8841:	neg eax	; 3: 102 -9 -40

mktime$5:	; leapDays = £temporary2761
x8844:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; £temporary2762 -> tp = *tp, offset 10
x8848:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; £temporary2763 = £temporary2762 -> tp - 70
x8851:	mov ax, [si + 10]	; 3: -117 68 10
x8854:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; £temporary2764 = £temporary2763 * 365
x8857:	xor dx, dx	; 2: 49 -46
x8859:	imul word [int2$365#]	; 4: -9 46 88 35

mktime$9:	; £temporary2765 = int_to_int £temporary2764 (Signed_Int -> Signed_Long_Int)
x8863:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8869:	cmp ax, 0	; 3: -125 -8 0
x8872:	jge mktime$10	; 2: 125 5
x8874:	neg ax	; 2: -9 -40
x8876:	neg eax	; 3: 102 -9 -40

mktime$10:	; £temporary2766 = £temporary2765 + leapDays
x8879:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; £temporary2767 -> tp = *tp, offset 14
x8883:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; £temporary2768 = int_to_int £temporary2767 -> tp (Signed_Int -> Signed_Long_Int)
x8886:	mov bx, [si + 14]	; 3: -117 92 14
x8889:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x8896:	cmp bx, 0	; 3: -125 -5 0
x8899:	jge mktime$13	; 2: 125 5
x8901:	neg bx	; 2: -9 -37
x8903:	neg ebx	; 3: 102 -9 -37

mktime$13:	; totalDays = £temporary2766 + £temporary2768
x8906:	add eax, ebx	; 3: 102 1 -40
x8909:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$14:	; £temporary2770 = totalDays * 86400
x8913:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x8917:	xor edx, edx	; 3: 102 49 -46
x8920:	imul dword [int4$86400#]	; 5: 102 -9 46 90 35
x8925:	mov ebx, eax	; 3: 102 -119 -61

mktime$15:	; £temporary2771 -> tp = *tp, offset 4
x8928:	mov si, [bp + 6]	; 3: -117 118 6

mktime$16:	; £temporary2772 = int_to_int £temporary2771 -> tp (Signed_Int -> Signed_Long_Int)
x8931:	mov ax, [si + 4]	; 3: -117 68 4
x8934:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8940:	cmp ax, 0	; 3: -125 -8 0
x8943:	jge mktime$17	; 2: 125 5
x8945:	neg ax	; 2: -9 -40
x8947:	neg eax	; 3: 102 -9 -40

mktime$17:	; £temporary2773 = £temporary2772 * 3600
x8950:	xor edx, edx	; 3: 102 49 -46
x8953:	imul dword [int4$3600#]	; 5: 102 -9 46 94 35

mktime$18:	; £temporary2774 = £temporary2770 + £temporary2773
x8958:	add ebx, eax	; 3: 102 1 -61

mktime$19:	; £temporary2775 -> tp = *tp, offset 2
x8961:	mov si, [bp + 6]	; 3: -117 118 6

mktime$20:	; £temporary2776 = int_to_int £temporary2775 -> tp (Signed_Int -> Signed_Long_Int)
x8964:	mov ax, [si + 2]	; 3: -117 68 2
x8967:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8973:	cmp ax, 0	; 3: -125 -8 0
x8976:	jge mktime$21	; 2: 125 5
x8978:	neg ax	; 2: -9 -40
x8980:	neg eax	; 3: 102 -9 -40

mktime$21:	; £temporary2777 = £temporary2776 * 60
x8983:	xor edx, edx	; 3: 102 49 -46
x8986:	imul dword [int4$60#]	; 5: 102 -9 46 98 35

mktime$22:	; £temporary2778 = £temporary2774 + £temporary2777
x8991:	add ebx, eax	; 3: 102 1 -61

mktime$23:	; £temporary2779 -> tp = *tp
x8994:	mov si, [bp + 6]	; 3: -117 118 6

mktime$24:	; £temporary2780 = int_to_int £temporary2779 -> tp (Signed_Int -> Signed_Long_Int)
x8997:	mov ax, [si]	; 2: -117 4
x8999:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9005:	cmp ax, 0	; 3: -125 -8 0
x9008:	jge mktime$25	; 2: 125 5
x9010:	neg ax	; 2: -9 -40
x9012:	neg eax	; 3: 102 -9 -40

mktime$25:	; £temporary2781 = £temporary2778 + £temporary2780
x9015:	add ebx, eax	; 3: 102 1 -61

mktime$26:	; return_value = £temporary2781

mktime$27:	; return
x9018:	mov ax, [bp]	; 3: -117 70 0
x9021:	mov di, [bp + 4]	; 3: -117 126 4
x9024:	mov bp, [bp + 2]	; 3: -117 110 2
x9027:	jmp ax	; 2: -1 -32

mktime$28:	; return_value = 0
x9029:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$29:	; return
x9035:	mov ax, [bp]	; 3: -117 70 0
x9038:	mov di, [bp + 4]	; 3: -117 126 4
x9041:	mov bp, [bp + 2]	; 3: -117 110 2
x9044:	jmp ax	; 2: -1 -32

mktime$30:	; function end mktime

int2$4#:
x9046:	dw 4	; 2: 4 0

int2$365#:
x9048:	dw 365	; 2: 109 1

int4$86400#:
x9050:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x9054:	dd 3600	; 4: 16 14 0 0

int4$60#:
x9058:	dd 60	; 4: 60 0 0 0

scanf:	; £temporary1791 = &format
x9062:	mov si, bp	; 2: -119 -18
x9064:	add si, 6	; 3: -125 -58 6

scanf$1:	; £temporary1792 = int_to_int £temporary1791 (Pointer -> Pointer)

scanf$2:	; arg_list = £temporary1792 + 2
x9067:	add si, 2	; 3: -125 -58 2
x9070:	mov [di + 8], si	; 3: -119 117 8

scanf$3:	; call header integral zero 0 stack zero 0

scanf$4:	; parameter format, offset 6
x9073:	mov ax, [bp + 6]	; 3: -117 70 6
x9076:	mov [di + 16], ax	; 3: -119 69 16

scanf$5:	; parameter arg_list, offset 8
x9079:	mov ax, [di + 8]	; 3: -117 69 8
x9082:	mov [di + 18], ax	; 3: -119 69 18

scanf$6:	; call function ellipse-noellipse vscanf
x9085:	mov word [di + 10], scanf$7	; 5: -57 69 10 -112 35
x9090:	mov [di + 12], bp	; 3: -119 109 12
x9093:	mov [di + 14], di	; 3: -119 125 14
x9096:	add di, 10	; 3: -125 -57 10
x9099:	mov bp, di	; 2: -119 -3
x9101:	nop	; 1: -112
x9102:	jmp vscanf	; 2: -21 11

scanf$7:	; post call

scanf$8:	; £temporary1794 = return_value

scanf$9:	; return_value = £temporary1794

scanf$10:	; return
x9104:	mov ax, [bp]	; 3: -117 70 0
x9107:	mov di, [bp + 4]	; 3: -117 126 4
x9110:	mov bp, [bp + 2]	; 3: -117 110 2
x9113:	jmp ax	; 2: -1 -32

scanf$11:	; function end scanf

vscanf:	; call header integral zero 0 stack zero 0

vscanf$1:	; parameter stdin, offset 6
x9115:	mov ax, [stdin]	; 3: -95 -58 35
x9118:	mov [bp + 16], ax	; 3: -119 70 16

vscanf$2:	; parameter format, offset 8
x9121:	mov ax, [bp + 6]	; 3: -117 70 6
x9124:	mov [bp + 18], ax	; 3: -119 70 18

vscanf$3:	; parameter arg_list, offset 10
x9127:	mov ax, [bp + 8]	; 3: -117 70 8
x9130:	mov [bp + 20], ax	; 3: -119 70 20

vscanf$4:	; call function noellipse-noellipse vfscanf
x9133:	mov word [bp + 10], vscanf$5	; 5: -57 70 10 -69 35
x9138:	mov [bp + 12], bp	; 3: -119 110 12
x9141:	add bp, 10	; 3: -125 -59 10
x9144:	nop	; 1: -112
x9145:	jmp vfscanf	; 2: -21 13

vscanf$5:	; post call

vscanf$6:	; £temporary1798 = return_value

vscanf$7:	; return_value = £temporary1798

vscanf$8:	; return
x9147:	mov ax, [bp]	; 3: -117 70 0
x9150:	mov di, [bp + 4]	; 3: -117 126 4
x9153:	mov bp, [bp + 2]	; 3: -117 110 2
x9156:	jmp ax	; 2: -1 -32

vscanf$9:	; function end vscanf

stdin:
x9158:	dw g_fileArray	; 2: 24 4

vfscanf:	; g_inStatus = 0
x9160:	mov word [g_inStatus], 0	; 6: -57 6 -7 35 0 0

vfscanf$1:	; £temporary1810 = int_to_int inStream (Pointer -> Pointer)
x9166:	mov ax, [bp + 6]	; 3: -117 70 6

vfscanf$2:	; g_inDevice = £temporary1810
x9169:	mov [g_inDevice], ax	; 3: -93 -5 35

vfscanf$3:	; call header integral zero 0 stack zero 0

vfscanf$4:	; parameter format, offset 6
x9172:	mov ax, [bp + 8]	; 3: -117 70 8
x9175:	mov [bp + 18], ax	; 3: -119 70 18

vfscanf$5:	; parameter arg_list, offset 8
x9178:	mov ax, [bp + 10]	; 3: -117 70 10
x9181:	mov [bp + 20], ax	; 3: -119 70 20

vfscanf$6:	; call function noellipse-noellipse scanFormat
x9184:	mov word [bp + 12], vfscanf$7	; 5: -57 70 12 -18 35
x9189:	mov [bp + 14], bp	; 3: -119 110 14
x9192:	add bp, 12	; 3: -125 -59 12
x9195:	nop	; 1: -112
x9196:	jmp scanFormat	; 2: -21 15

vfscanf$7:	; post call

vfscanf$8:	; £temporary1811 = return_value

vfscanf$9:	; return_value = £temporary1811

vfscanf$10:	; return
x9198:	mov ax, [bp]	; 3: -117 70 0
x9201:	mov di, [bp + 4]	; 3: -117 126 4
x9204:	mov bp, [bp + 2]	; 3: -117 110 2
x9207:	jmp ax	; 2: -1 -32

vfscanf$11:	; function end vfscanf

g_inStatus:
x9209:	db 0, 0	; 2: 0 0

g_inDevice:
x9211:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x9213:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x9218:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x9223:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x9228:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x9233:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x9238:	mov word [g_inCount], 0	; 6: -57 6 31 41 0 0

scanFormat$6:	; g_inChars = 0
x9244:	mov word [g_inChars], 0	; 6: -57 6 33 41 0 0

scanFormat$7:	; index = 0
x9250:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1601 = format + index
x9255:	mov si, [bp + 6]	; 3: -117 118 6
x9258:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1600 -> £temporary1601 = *£temporary1601

scanFormat$10:	; if £temporary1600 -> £temporary1601 == 0 goto 325
x9261:	cmp byte [si], 0	; 3: -128 60 0
x9264:	je scanFormat$325	; 4: 15 -124 -36 4

scanFormat$11:	; £temporary1605 = format + index
x9268:	mov si, [bp + 6]	; 3: -117 118 6
x9271:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1604 -> £temporary1605 = *£temporary1605

scanFormat$13:	; c = £temporary1604 -> £temporary1605
x9274:	mov al, [si]	; 2: -118 4
x9276:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1606 = int_to_int c (Signed_Char -> Signed_Int)
x9279:	mov al, [bp + 10]	; 3: -118 70 10
x9282:	and ax, 255	; 3: 37 -1 0
x9285:	cmp al, 0	; 2: 60 0
x9287:	jge scanFormat$15	; 2: 125 4
x9289:	neg al	; 2: -10 -40
x9291:	neg ax	; 2: -9 -40

scanFormat$15:	; d = £temporary1606 + 1
x9293:	inc ax	; 1: 64
x9294:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$16:	; if percent == 0 goto 317
x9297:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x9301:	je scanFormat$317	; 4: 15 -124 -110 4

scanFormat$17:	; £temporary1608 = d - 1
x9305:	mov ax, [bp + 55]	; 3: -117 70 55
x9308:	dec ax	; 1: 72

scanFormat$18:	; case £temporary1608 == 104 goto 36
x9309:	cmp ax, 104	; 3: -125 -8 104
x9312:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; case £temporary1608 == 108 goto 38
x9314:	cmp ax, 108	; 3: -125 -8 108
x9317:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; case £temporary1608 == 76 goto 40
x9319:	cmp ax, 76	; 3: -125 -8 76
x9322:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; case £temporary1608 == 42 goto 42
x9324:	cmp ax, 42	; 3: -125 -8 42
x9327:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; case £temporary1608 == 99 goto 44
x9329:	cmp ax, 99	; 3: -125 -8 99
x9332:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; case £temporary1608 == 115 goto 62
x9334:	cmp ax, 115	; 3: -125 -8 115
x9337:	je scanFormat$62	; 4: 15 -124 -72 0

scanFormat$24:	; case £temporary1608 == 100 goto 81
x9341:	cmp ax, 100	; 3: -125 -8 100
x9344:	je scanFormat$81	; 4: 15 -124 1 1

scanFormat$25:	; case £temporary1608 == 105 goto 81
x9348:	cmp ax, 105	; 3: -125 -8 105
x9351:	je scanFormat$81	; 4: 15 -124 -6 0

scanFormat$26:	; case £temporary1608 == 111 goto 116
x9355:	cmp ax, 111	; 3: -125 -8 111
x9358:	je scanFormat$116	; 4: 15 -124 -126 1

scanFormat$27:	; case £temporary1608 == 120 goto 152
x9362:	cmp ax, 120	; 3: -125 -8 120
x9365:	je scanFormat$152	; 4: 15 -124 -4 1

scanFormat$28:	; case £temporary1608 == 117 goto 188
x9369:	cmp ax, 117	; 3: -125 -8 117
x9372:	je scanFormat$188	; 4: 15 -124 118 2

scanFormat$29:	; case £temporary1608 == 103 goto 224
x9376:	cmp ax, 103	; 3: -125 -8 103
x9379:	je scanFormat$224	; 4: 15 -124 -16 2

scanFormat$30:	; case £temporary1608 == 102 goto 224
x9383:	cmp ax, 102	; 3: -125 -8 102
x9386:	je scanFormat$224	; 4: 15 -124 -23 2

scanFormat$31:	; case £temporary1608 == 101 goto 224
x9390:	cmp ax, 101	; 3: -125 -8 101
x9393:	je scanFormat$224	; 4: 15 -124 -30 2

scanFormat$32:	; case £temporary1608 == 91 goto 260
x9397:	cmp ax, 91	; 3: -125 -8 91
x9400:	je scanFormat$260	; 4: 15 -124 79 3

scanFormat$33:	; case £temporary1608 == 110 goto 301
x9404:	cmp ax, 110	; 3: -125 -8 110
x9407:	je scanFormat$301	; 4: 15 -124 -33 3

scanFormat$34:	; case end £temporary1608

scanFormat$35:	; goto 310
x9411:	jmp scanFormat$310	; 3: -23 -6 3

scanFormat$36:	; shortInt = 1
x9414:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$37:	; goto 323
x9419:	jmp scanFormat$323	; 3: -23 60 4

scanFormat$38:	; longIntOrDouble = 1
x9422:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$39:	; goto 323
x9427:	jmp scanFormat$323	; 3: -23 52 4

scanFormat$40:	; longDouble = 1
x9430:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$41:	; goto 323
x9435:	jmp scanFormat$323	; 3: -23 44 4

scanFormat$42:	; star = 1
x9438:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$43:	; goto 323
x9443:	jmp scanFormat$323	; 3: -23 36 4

scanFormat$44:	; call header integral zero 0 stack zero 0

scanFormat$45:	; call function noellipse-noellipse scanChar
x9446:	mov word [bp + 57], scanFormat$46	; 5: -57 70 57 -12 36
x9451:	mov [bp + 59], bp	; 3: -119 110 59
x9454:	add bp, 57	; 3: -125 -59 57
x9457:	jmp scanChar	; 3: -23 68 4

scanFormat$46:	; post call

scanFormat$47:	; £temporary1609 = return_value

scanFormat$48:	; charValue = £temporary1609
x9460:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$49:	; if star != 0 goto 57
x9463:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9467:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; arg_list = arg_list + 2
x9469:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$51:	; £temporary1613 = arg_list - 2
x9473:	mov si, [bp + 8]	; 3: -117 118 8
x9476:	sub si, 2	; 3: -125 -18 2

scanFormat$52:	; £temporary1614 = int_to_int £temporary1613 (Signed_Int -> Pointer)

scanFormat$53:	; £temporary1615 -> £temporary1614 = *£temporary1614

scanFormat$54:	; charPtr = £temporary1615 -> £temporary1614
x9479:	mov ax, [si]	; 2: -117 4
x9481:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$55:	; £temporary1616 -> charPtr = *charPtr
x9484:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$56:	; £temporary1616 -> charPtr = charValue
x9487:	mov al, [bp + 57]	; 3: -118 70 57
x9490:	mov [si], al	; 2: -120 4

scanFormat$57:	; percent = 0
x9492:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$58:	; £temporary1617 = int_to_int charValue (Signed_Char -> Signed_Int)
x9497:	mov al, [bp + 57]	; 3: -118 70 57
x9500:	and ax, 255	; 3: 37 -1 0
x9503:	cmp al, 0	; 2: 60 0
x9505:	jge scanFormat$59	; 2: 125 4
x9507:	neg al	; 2: -10 -40
x9509:	neg ax	; 2: -9 -40

scanFormat$59:	; if £temporary1617 == -1 goto 323
x9511:	cmp ax, -1	; 3: -125 -8 -1
x9514:	je scanFormat$323	; 4: 15 -124 -36 3

scanFormat$60:	; ++g_inCount
x9518:	inc word [g_inCount]	; 4: -1 6 31 41

scanFormat$61:	; goto 323
x9522:	jmp scanFormat$323	; 3: -23 -43 3

scanFormat$62:	; if star != 0 goto 74
x9525:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9529:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; arg_list = arg_list + 2
x9531:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$64:	; £temporary1623 = arg_list - 2
x9535:	mov si, [bp + 8]	; 3: -117 118 8
x9538:	sub si, 2	; 3: -125 -18 2

scanFormat$65:	; £temporary1624 = int_to_int £temporary1623 (Signed_Int -> Pointer)

scanFormat$66:	; £temporary1625 -> £temporary1624 = *£temporary1624

scanFormat$67:	; charPtr = £temporary1625 -> £temporary1624
x9541:	mov ax, [si]	; 2: -117 4
x9543:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$68:	; call header integral zero 0 stack zero 0

scanFormat$69:	; parameter charPtr, offset 6
x9546:	mov ax, [bp + 11]	; 3: -117 70 11
x9549:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$70:	; parameter 0, offset 8
x9552:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$71:	; call function noellipse-noellipse scanString
x9557:	mov word [bp + 57], scanFormat$72	; 5: -57 70 57 99 37
x9562:	mov [bp + 59], bp	; 3: -119 110 59
x9565:	add bp, 57	; 3: -125 -59 57
x9568:	jmp scanString	; 3: -23 68 4

scanFormat$72:	; post call

scanFormat$73:	; goto 79
x9571:	jmp scanFormat$79	; 2: -21 24

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter 0, offset 6
x9573:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$76:	; parameter 0, offset 8
x9578:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$77:	; call function noellipse-noellipse scanString
x9583:	mov word [bp + 57], scanFormat$78	; 5: -57 70 57 125 37
x9588:	mov [bp + 59], bp	; 3: -119 110 59
x9591:	add bp, 57	; 3: -125 -59 57
x9594:	jmp scanString	; 3: -23 42 4

scanFormat$78:	; post call

scanFormat$79:	; percent = 0
x9597:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$80:	; goto 323
x9602:	jmp scanFormat$323	; 3: -23 -123 3

scanFormat$81:	; call header integral zero 0 stack zero 0

scanFormat$82:	; call function noellipse-noellipse scanLongInt
x9605:	mov word [bp + 57], scanFormat$83	; 5: -57 70 57 -109 37
x9610:	mov [bp + 59], bp	; 3: -119 110 59
x9613:	add bp, 57	; 3: -125 -59 57
x9616:	jmp scanLongInt	; 3: -23 -104 6

scanFormat$83:	; post call

scanFormat$84:	; £temporary1628 = return_value

scanFormat$85:	; longValue = £temporary1628
x9619:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$86:	; if star != 0 goto 114
x9623:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9627:	jne scanFormat$114	; 2: 117 111

scanFormat$87:	; if shortInt == 0 goto 97
x9629:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9633:	je scanFormat$97	; 2: 116 37

scanFormat$88:	; arg_list = arg_list + 2
x9635:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$89:	; £temporary1632 = arg_list - 2
x9639:	mov si, [bp + 8]	; 3: -117 118 8
x9642:	sub si, 2	; 3: -125 -18 2

scanFormat$90:	; £temporary1633 = int_to_int £temporary1632 (Signed_Int -> Pointer)

scanFormat$91:	; £temporary1634 -> £temporary1633 = *£temporary1633

scanFormat$92:	; shortPtr = £temporary1634 -> £temporary1633
x9645:	mov ax, [si]	; 2: -117 4
x9647:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$93:	; £temporary1635 -> shortPtr = *shortPtr
x9650:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$94:	; £temporary1636 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x9653:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9657:	cmp eax, 0	; 4: 102 -125 -8 0
x9661:	jge scanFormat$95	; 2: 125 5
x9663:	neg eax	; 3: 102 -9 -40
x9666:	neg al	; 2: -10 -40

scanFormat$95:	; £temporary1635 -> shortPtr = £temporary1636
x9668:	mov [si], al	; 2: -120 4

scanFormat$96:	; goto 114
x9670:	jmp scanFormat$114	; 2: -21 68

scanFormat$97:	; if longIntOrDouble != 0 goto 107
x9672:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9676:	jne scanFormat$107	; 2: 117 37

scanFormat$98:	; arg_list = arg_list + 2
x9678:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$99:	; £temporary1640 = arg_list - 2
x9682:	mov si, [bp + 8]	; 3: -117 118 8
x9685:	sub si, 2	; 3: -125 -18 2

scanFormat$100:	; £temporary1641 = int_to_int £temporary1640 (Signed_Int -> Pointer)

scanFormat$101:	; £temporary1642 -> £temporary1641 = *£temporary1641

scanFormat$102:	; intPtr = £temporary1642 -> £temporary1641
x9688:	mov ax, [si]	; 2: -117 4
x9690:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$103:	; £temporary1643 -> intPtr = *intPtr
x9693:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$104:	; £temporary1644 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x9696:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9700:	cmp eax, 0	; 4: 102 -125 -8 0
x9704:	jge scanFormat$105	; 2: 125 5
x9706:	neg eax	; 3: 102 -9 -40
x9709:	neg ax	; 2: -9 -40

scanFormat$105:	; £temporary1643 -> intPtr = £temporary1644
x9711:	mov [si], ax	; 2: -119 4

scanFormat$106:	; goto 114
x9713:	jmp scanFormat$114	; 2: -21 25

scanFormat$107:	; arg_list = arg_list + 2
x9715:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$108:	; £temporary1646 = arg_list - 2
x9719:	mov si, [bp + 8]	; 3: -117 118 8
x9722:	sub si, 2	; 3: -125 -18 2

scanFormat$109:	; £temporary1647 = int_to_int £temporary1646 (Signed_Int -> Pointer)

scanFormat$110:	; £temporary1648 -> £temporary1647 = *£temporary1647

scanFormat$111:	; longPtr = £temporary1648 -> £temporary1647
x9725:	mov ax, [si]	; 2: -117 4
x9727:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$112:	; £temporary1649 -> longPtr = *longPtr
x9730:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$113:	; £temporary1649 -> longPtr = longValue
x9733:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9737:	mov [si], eax	; 3: 102 -119 4

scanFormat$114:	; percent = 0
x9740:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$115:	; goto 323
x9745:	jmp scanFormat$323	; 3: -23 -10 2

scanFormat$116:	; call header integral zero 0 stack zero 0

scanFormat$117:	; parameter 8, offset 6
x9748:	mov dword [bp + 63], 8	; 8: 102 -57 70 63 8 0 0 0

scanFormat$118:	; call function noellipse-noellipse scanUnsignedLongInt
x9756:	mov word [bp + 57], scanFormat$119	; 5: -57 70 57 42 38
x9761:	mov [bp + 59], bp	; 3: -119 110 59
x9764:	add bp, 57	; 3: -125 -59 57
x9767:	jmp scanUnsignedLongInt	; 3: -23 88 7

scanFormat$119:	; post call

scanFormat$120:	; £temporary1651 = return_value

scanFormat$121:	; unsignedLongValue = £temporary1651
x9770:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$122:	; if star != 0 goto 150
x9774:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9778:	jne scanFormat$150	; 2: 117 89

scanFormat$123:	; if shortInt == 0 goto 133
x9780:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9784:	je scanFormat$133	; 2: 116 26

scanFormat$124:	; arg_list = arg_list + 2
x9786:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$125:	; £temporary1655 = arg_list - 2
x9790:	mov si, [bp + 8]	; 3: -117 118 8
x9793:	sub si, 2	; 3: -125 -18 2

scanFormat$126:	; £temporary1656 = int_to_int £temporary1655 (Signed_Int -> Pointer)

scanFormat$127:	; £temporary1657 -> £temporary1656 = *£temporary1656

scanFormat$128:	; unsignedShortPtr = £temporary1657 -> £temporary1656
x9796:	mov ax, [si]	; 2: -117 4
x9798:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$129:	; £temporary1658 -> unsignedShortPtr = *unsignedShortPtr
x9801:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$130:	; £temporary1659 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9804:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$131:	; £temporary1658 -> unsignedShortPtr = £temporary1659
x9808:	mov [si], al	; 2: -120 4

scanFormat$132:	; goto 150
x9810:	jmp scanFormat$150	; 2: -21 57

scanFormat$133:	; if longIntOrDouble != 0 goto 143
x9812:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9816:	jne scanFormat$143	; 2: 117 26

scanFormat$134:	; arg_list = arg_list + 2
x9818:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$135:	; £temporary1663 = arg_list - 2
x9822:	mov si, [bp + 8]	; 3: -117 118 8
x9825:	sub si, 2	; 3: -125 -18 2

scanFormat$136:	; £temporary1664 = int_to_int £temporary1663 (Signed_Int -> Pointer)

scanFormat$137:	; £temporary1665 -> £temporary1664 = *£temporary1664

scanFormat$138:	; unsignedIntPtr = £temporary1665 -> £temporary1664
x9828:	mov ax, [si]	; 2: -117 4
x9830:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$139:	; £temporary1666 -> unsignedIntPtr = *unsignedIntPtr
x9833:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$140:	; £temporary1667 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9836:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$141:	; £temporary1666 -> unsignedIntPtr = £temporary1667
x9840:	mov [si], ax	; 2: -119 4

scanFormat$142:	; goto 150
x9842:	jmp scanFormat$150	; 2: -21 25

scanFormat$143:	; arg_list = arg_list + 2
x9844:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$144:	; £temporary1669 = arg_list - 2
x9848:	mov si, [bp + 8]	; 3: -117 118 8
x9851:	sub si, 2	; 3: -125 -18 2

scanFormat$145:	; £temporary1670 = int_to_int £temporary1669 (Signed_Int -> Pointer)

scanFormat$146:	; £temporary1671 -> £temporary1670 = *£temporary1670

scanFormat$147:	; unsignedLongPtr = £temporary1671 -> £temporary1670
x9854:	mov ax, [si]	; 2: -117 4
x9856:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$148:	; £temporary1672 -> unsignedLongPtr = *unsignedLongPtr
x9859:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$149:	; £temporary1672 -> unsignedLongPtr = unsignedLongValue
x9862:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x9866:	mov [si], eax	; 3: 102 -119 4

scanFormat$150:	; percent = 0
x9869:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$151:	; goto 323
x9874:	jmp scanFormat$323	; 3: -23 117 2

scanFormat$152:	; call header integral zero 0 stack zero 0

scanFormat$153:	; parameter 16, offset 6
x9877:	mov dword [bp + 63], 16	; 8: 102 -57 70 63 16 0 0 0

scanFormat$154:	; call function noellipse-noellipse scanUnsignedLongInt
x9885:	mov word [bp + 57], scanFormat$155	; 5: -57 70 57 -85 38
x9890:	mov [bp + 59], bp	; 3: -119 110 59
x9893:	add bp, 57	; 3: -125 -59 57
x9896:	jmp scanUnsignedLongInt	; 3: -23 -41 6

scanFormat$155:	; post call

scanFormat$156:	; £temporary1674 = return_value

scanFormat$157:	; unsignedLongValue = £temporary1674
x9899:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$158:	; if star != 0 goto 186
x9903:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9907:	jne scanFormat$186	; 2: 117 89

scanFormat$159:	; if shortInt == 0 goto 169
x9909:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9913:	je scanFormat$169	; 2: 116 26

scanFormat$160:	; arg_list = arg_list + 2
x9915:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$161:	; £temporary1678 = arg_list - 2
x9919:	mov si, [bp + 8]	; 3: -117 118 8
x9922:	sub si, 2	; 3: -125 -18 2

scanFormat$162:	; £temporary1679 = int_to_int £temporary1678 (Signed_Int -> Pointer)

scanFormat$163:	; £temporary1680 -> £temporary1679 = *£temporary1679

scanFormat$164:	; unsignedShortPtr = £temporary1680 -> £temporary1679
x9925:	mov ax, [si]	; 2: -117 4
x9927:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$165:	; £temporary1681 -> unsignedShortPtr = *unsignedShortPtr
x9930:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$166:	; £temporary1682 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9933:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$167:	; £temporary1681 -> unsignedShortPtr = £temporary1682
x9937:	mov [si], al	; 2: -120 4

scanFormat$168:	; goto 186
x9939:	jmp scanFormat$186	; 2: -21 57

scanFormat$169:	; if longIntOrDouble != 0 goto 179
x9941:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9945:	jne scanFormat$179	; 2: 117 26

scanFormat$170:	; arg_list = arg_list + 2
x9947:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$171:	; £temporary1686 = arg_list - 2
x9951:	mov si, [bp + 8]	; 3: -117 118 8
x9954:	sub si, 2	; 3: -125 -18 2

scanFormat$172:	; £temporary1687 = int_to_int £temporary1686 (Signed_Int -> Pointer)

scanFormat$173:	; £temporary1688 -> £temporary1687 = *£temporary1687

scanFormat$174:	; unsignedIntPtr = £temporary1688 -> £temporary1687
x9957:	mov ax, [si]	; 2: -117 4
x9959:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$175:	; £temporary1689 -> unsignedIntPtr = *unsignedIntPtr
x9962:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$176:	; £temporary1690 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9965:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$177:	; £temporary1689 -> unsignedIntPtr = £temporary1690
x9969:	mov [si], ax	; 2: -119 4

scanFormat$178:	; goto 186
x9971:	jmp scanFormat$186	; 2: -21 25

scanFormat$179:	; arg_list = arg_list + 2
x9973:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$180:	; £temporary1692 = arg_list - 2
x9977:	mov si, [bp + 8]	; 3: -117 118 8
x9980:	sub si, 2	; 3: -125 -18 2

scanFormat$181:	; £temporary1693 = int_to_int £temporary1692 (Signed_Int -> Pointer)

scanFormat$182:	; £temporary1694 -> £temporary1693 = *£temporary1693

scanFormat$183:	; unsignedLongPtr = £temporary1694 -> £temporary1693
x9983:	mov ax, [si]	; 2: -117 4
x9985:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$184:	; £temporary1695 -> unsignedLongPtr = *unsignedLongPtr
x9988:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$185:	; £temporary1695 -> unsignedLongPtr = unsignedLongValue
x9991:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x9995:	mov [si], eax	; 3: 102 -119 4

scanFormat$186:	; percent = 0
x9998:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$187:	; goto 323
x10003:	jmp scanFormat$323	; 3: -23 -12 1

scanFormat$188:	; call header integral zero 0 stack zero 0

scanFormat$189:	; parameter 0, offset 6
x10006:	mov dword [bp + 63], 0	; 8: 102 -57 70 63 0 0 0 0

scanFormat$190:	; call function noellipse-noellipse scanUnsignedLongInt
x10014:	mov word [bp + 57], scanFormat$191	; 5: -57 70 57 44 39
x10019:	mov [bp + 59], bp	; 3: -119 110 59
x10022:	add bp, 57	; 3: -125 -59 57
x10025:	jmp scanUnsignedLongInt	; 3: -23 86 6

scanFormat$191:	; post call

scanFormat$192:	; £temporary1697 = return_value

scanFormat$193:	; unsignedLongValue = £temporary1697
x10028:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$194:	; if star != 0 goto 222
x10032:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10036:	jne scanFormat$222	; 2: 117 89

scanFormat$195:	; if shortInt == 0 goto 205
x10038:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10042:	je scanFormat$205	; 2: 116 26

scanFormat$196:	; arg_list = arg_list + 2
x10044:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$197:	; £temporary1701 = arg_list - 2
x10048:	mov si, [bp + 8]	; 3: -117 118 8
x10051:	sub si, 2	; 3: -125 -18 2

scanFormat$198:	; £temporary1702 = int_to_int £temporary1701 (Signed_Int -> Pointer)

scanFormat$199:	; £temporary1703 -> £temporary1702 = *£temporary1702

scanFormat$200:	; unsignedShortPtr = £temporary1703 -> £temporary1702
x10054:	mov ax, [si]	; 2: -117 4
x10056:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$201:	; £temporary1704 -> unsignedShortPtr = *unsignedShortPtr
x10059:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$202:	; £temporary1705 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10062:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$203:	; £temporary1704 -> unsignedShortPtr = £temporary1705
x10066:	mov [si], al	; 2: -120 4

scanFormat$204:	; goto 222
x10068:	jmp scanFormat$222	; 2: -21 57

scanFormat$205:	; if longIntOrDouble != 0 goto 215
x10070:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10074:	jne scanFormat$215	; 2: 117 26

scanFormat$206:	; arg_list = arg_list + 2
x10076:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$207:	; £temporary1709 = arg_list - 2
x10080:	mov si, [bp + 8]	; 3: -117 118 8
x10083:	sub si, 2	; 3: -125 -18 2

scanFormat$208:	; £temporary1710 = int_to_int £temporary1709 (Signed_Int -> Pointer)

scanFormat$209:	; £temporary1711 -> £temporary1710 = *£temporary1710

scanFormat$210:	; unsignedIntPtr = £temporary1711 -> £temporary1710
x10086:	mov ax, [si]	; 2: -117 4
x10088:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$211:	; £temporary1712 -> unsignedIntPtr = *unsignedIntPtr
x10091:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$212:	; £temporary1713 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10094:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$213:	; £temporary1712 -> unsignedIntPtr = £temporary1713
x10098:	mov [si], ax	; 2: -119 4

scanFormat$214:	; goto 222
x10100:	jmp scanFormat$222	; 2: -21 25

scanFormat$215:	; arg_list = arg_list + 2
x10102:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$216:	; £temporary1715 = arg_list - 2
x10106:	mov si, [bp + 8]	; 3: -117 118 8
x10109:	sub si, 2	; 3: -125 -18 2

scanFormat$217:	; £temporary1716 = int_to_int £temporary1715 (Signed_Int -> Pointer)

scanFormat$218:	; £temporary1717 -> £temporary1716 = *£temporary1716

scanFormat$219:	; unsignedLongPtr = £temporary1717 -> £temporary1716
x10112:	mov ax, [si]	; 2: -117 4
x10114:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$220:	; £temporary1718 -> unsignedLongPtr = *unsignedLongPtr
x10117:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$221:	; £temporary1718 -> unsignedLongPtr = unsignedLongValue
x10120:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10124:	mov [si], eax	; 3: 102 -119 4

scanFormat$222:	; percent = 0
x10127:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$223:	; goto 323
x10132:	jmp scanFormat$323	; 3: -23 115 1

scanFormat$224:	; call header integral zero 0 stack zero 0

scanFormat$225:	; call function noellipse-noellipse scanLongDouble
x10135:	mov word [bp + 57], scanFormat$226	; 5: -57 70 57 -91 39
x10140:	mov [bp + 59], bp	; 3: -119 110 59
x10143:	add bp, 57	; 3: -125 -59 57
x10146:	jmp scanLongDouble	; 3: -23 -94 8

scanFormat$226:	; post call

scanFormat$227:	; £temporary1720 = return_value

scanFormat$228:	; pop float longDoubleValue
x10149:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$229:	; if star != 0 goto 258
x10152:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10156:	jne scanFormat$258	; 2: 117 85

scanFormat$230:	; if longIntOrDouble == 0 goto 240
x10158:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10162:	je scanFormat$240	; 2: 116 25

scanFormat$231:	; arg_list = arg_list + 2
x10164:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$232:	; £temporary1724 = arg_list - 2
x10168:	mov si, [bp + 8]	; 3: -117 118 8
x10171:	sub si, 2	; 3: -125 -18 2

scanFormat$233:	; £temporary1725 = int_to_int £temporary1724 (Signed_Int -> Pointer)

scanFormat$234:	; £temporary1726 -> £temporary1725 = *£temporary1725

scanFormat$235:	; doublePtr = £temporary1726 -> £temporary1725
x10174:	mov ax, [si]	; 2: -117 4
x10176:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$236:	; £temporary1727 -> doublePtr = *doublePtr
x10179:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$237:	; push float longDoubleValue
x10182:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$238:	; pop float £temporary1727 -> doublePtr
x10185:	fstp qword [si]	; 2: -35 28

scanFormat$239:	; goto 258
x10187:	jmp scanFormat$258	; 2: -21 54

scanFormat$240:	; if longDouble == 0 goto 250
x10189:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x10193:	je scanFormat$250	; 2: 116 25

scanFormat$241:	; arg_list = arg_list + 2
x10195:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$242:	; £temporary1730 = arg_list - 2
x10199:	mov si, [bp + 8]	; 3: -117 118 8
x10202:	sub si, 2	; 3: -125 -18 2

scanFormat$243:	; £temporary1731 = int_to_int £temporary1730 (Signed_Int -> Pointer)

scanFormat$244:	; £temporary1732 -> £temporary1731 = *£temporary1731

scanFormat$245:	; longDoublePtr = £temporary1732 -> £temporary1731
x10205:	mov ax, [si]	; 2: -117 4
x10207:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$246:	; £temporary1733 -> longDoublePtr = *longDoublePtr
x10210:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$247:	; push float longDoubleValue
x10213:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$248:	; pop float £temporary1733 -> longDoublePtr
x10216:	fstp qword [si]	; 2: -35 28

scanFormat$249:	; goto 258
x10218:	jmp scanFormat$258	; 2: -21 23

scanFormat$250:	; arg_list = arg_list + 2
x10220:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$251:	; £temporary1735 = arg_list - 2
x10224:	mov si, [bp + 8]	; 3: -117 118 8
x10227:	sub si, 2	; 3: -125 -18 2

scanFormat$252:	; £temporary1736 = int_to_int £temporary1735 (Signed_Int -> Pointer)

scanFormat$253:	; £temporary1737 -> £temporary1736 = *£temporary1736

scanFormat$254:	; floatPtr = £temporary1737 -> £temporary1736
x10230:	mov ax, [si]	; 2: -117 4
x10232:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$255:	; £temporary1738 -> floatPtr = *floatPtr
x10235:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$256:	; push float longDoubleValue
x10238:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$257:	; pop float £temporary1738 -> floatPtr
x10241:	fstp dword [si]	; 2: -39 28

scanFormat$258:	; percent = 0
x10243:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$259:	; goto 323
x10248:	jmp scanFormat$323	; 3: -23 -1 0

scanFormat$260:	; not = 0
x10251:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$261:	; ++index
x10256:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$262:	; £temporary1744 = format + index
x10259:	mov si, [bp + 6]	; 3: -117 118 6
x10262:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$263:	; £temporary1743 -> £temporary1744 = *£temporary1744

scanFormat$264:	; if £temporary1743 -> £temporary1744 != 94 goto 267
x10265:	cmp byte [si], 94	; 3: -128 60 94
x10268:	jne scanFormat$267	; 2: 117 12

scanFormat$265:	; not = 1
x10270:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$266:	; startIndex = index + 1
x10275:	mov ax, [bp + 31]	; 3: -117 70 31
x10278:	inc ax	; 1: 64
x10279:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$267:	; £temporary1748 = format + index
x10282:	mov si, [bp + 6]	; 3: -117 118 6
x10285:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$268:	; £temporary1747 -> £temporary1748 = *£temporary1748

scanFormat$269:	; if £temporary1747 -> £temporary1748 == 93 goto 272
x10288:	cmp byte [si], 93	; 3: -128 60 93
x10291:	je scanFormat$272	; 2: 116 5

scanFormat$270:	; ++index
x10293:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$271:	; goto 267
x10296:	jmp scanFormat$267	; 2: -21 -16

scanFormat$272:	; £temporary1752 = format + index
x10298:	mov si, [bp + 6]	; 3: -117 118 6
x10301:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$273:	; £temporary1751 -> £temporary1752 = *£temporary1752

scanFormat$274:	; £temporary1751 -> £temporary1752 = 0
x10304:	mov byte [si], 0	; 3: -58 4 0

scanFormat$275:	; if star != 0 goto 291
x10307:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10311:	jne scanFormat$291	; 2: 117 53

scanFormat$276:	; arg_list = arg_list + 2
x10313:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$277:	; £temporary1756 = arg_list - 2
x10317:	mov si, [bp + 8]	; 3: -117 118 8
x10320:	sub si, 2	; 3: -125 -18 2

scanFormat$278:	; £temporary1757 = int_to_int £temporary1756 (Signed_Int -> Pointer)

scanFormat$279:	; £temporary1758 -> £temporary1757 = *£temporary1757

scanFormat$280:	; string = £temporary1758 -> £temporary1757
x10323:	mov ax, [si]	; 2: -117 4
x10325:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$281:	; call header integral zero 0 stack zero 0

scanFormat$282:	; parameter string, offset 6
x10328:	mov ax, [bp + 61]	; 3: -117 70 61
x10331:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$283:	; £temporary1760 = format + startIndex
x10334:	mov si, [bp + 6]	; 3: -117 118 6
x10337:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$284:	; £temporary1759 -> £temporary1760 = *£temporary1760

scanFormat$285:	; £temporary1761 = &£temporary1759 -> £temporary1760

scanFormat$286:	; parameter £temporary1761, offset 8
x10340:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$287:	; parameter not, offset 10
x10343:	mov ax, [bp + 57]	; 3: -117 70 57
x10346:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$288:	; call function noellipse-noellipse scanPattern
x10349:	mov word [bp + 63], scanFormat$289	; 5: -57 70 63 123 40
x10354:	mov [bp + 65], bp	; 3: -119 110 65
x10357:	add bp, 63	; 3: -125 -59 63
x10360:	jmp scanPattern	; 3: -23 -2 9

scanFormat$289:	; post call

scanFormat$290:	; goto 323
x10363:	jmp scanFormat$323	; 3: -23 -116 0

scanFormat$291:	; call header integral zero 0 stack zero 0

scanFormat$292:	; parameter 0, offset 6
x10366:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$293:	; £temporary1764 = format + startIndex
x10371:	mov si, [bp + 6]	; 3: -117 118 6
x10374:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$294:	; £temporary1763 -> £temporary1764 = *£temporary1764

scanFormat$295:	; £temporary1765 = &£temporary1763 -> £temporary1764

scanFormat$296:	; parameter £temporary1765, offset 8
x10377:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$297:	; parameter not, offset 10
x10380:	mov ax, [bp + 57]	; 3: -117 70 57
x10383:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$298:	; call function noellipse-noellipse scanPattern
x10386:	mov word [bp + 61], scanFormat$299	; 5: -57 70 61 -96 40
x10391:	mov [bp + 63], bp	; 3: -119 110 63
x10394:	add bp, 61	; 3: -125 -59 61
x10397:	jmp scanPattern	; 3: -23 -39 9

scanFormat$299:	; post call

scanFormat$300:	; goto 323
x10400:	jmp scanFormat$323	; 2: -21 104

scanFormat$301:	; arg_list = arg_list + 2
x10402:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$302:	; £temporary1768 = arg_list - 2
x10406:	mov si, [bp + 8]	; 3: -117 118 8
x10409:	sub si, 2	; 3: -125 -18 2

scanFormat$303:	; £temporary1769 = int_to_int £temporary1768 (Signed_Int -> Pointer)

scanFormat$304:	; £temporary1770 -> £temporary1769 = *£temporary1769

scanFormat$305:	; charsPtr = £temporary1770 -> £temporary1769
x10412:	mov ax, [si]	; 2: -117 4
x10414:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$306:	; £temporary1771 -> charsPtr = *charsPtr
x10417:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$307:	; £temporary1771 -> charsPtr = g_inChars
x10420:	mov ax, [g_inChars]	; 3: -95 33 41
x10423:	mov [si], ax	; 2: -119 4

scanFormat$308:	; percent = 0
x10425:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$309:	; goto 323
x10430:	jmp scanFormat$323	; 2: -21 74

scanFormat$310:	; call header integral zero 0 stack zero 0

scanFormat$311:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x10432:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 35 41

scanFormat$312:	; £temporary1772 = int_to_int c (Signed_Char -> Signed_Int)
x10437:	mov al, [bp + 10]	; 3: -118 70 10
x10440:	and ax, 255	; 3: 37 -1 0
x10443:	cmp al, 0	; 2: 60 0
x10445:	jge scanFormat$313	; 2: 125 4
x10447:	neg al	; 2: -10 -40
x10449:	neg ax	; 2: -9 -40

scanFormat$313:	; parameter £temporary1772, offset 8
x10451:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$314:	; call function noellipse-ellipse printf, extra 0
x10454:	mov word [bp + 57], scanFormat$315	; 5: -57 70 57 -23 40
x10459:	mov [bp + 59], bp	; 3: -119 110 59
x10462:	add bp, 57	; 3: -125 -59 57
x10465:	mov di, bp	; 2: -119 -17
x10467:	add di, 2	; 3: -125 -57 2
x10470:	jmp printf	; 3: -23 -51 -38

scanFormat$315:	; post call

scanFormat$316:	; goto 323
x10473:	jmp scanFormat$323	; 2: -21 31

scanFormat$317:	; if c != 37 goto 323
x10475:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x10479:	jne scanFormat$323	; 2: 117 25

scanFormat$318:	; percent = 1
x10481:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$319:	; shortInt = 0
x10486:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$320:	; longIntOrDouble = 0
x10491:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$321:	; longDouble = 0
x10496:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$322:	; star = 0
x10501:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$323:	; ++index
x10506:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$324:	; goto 8
x10509:	jmp scanFormat$8	; 3: -23 23 -5

scanFormat$325:	; return_value = g_inCount
x10512:	mov bx, [g_inCount]	; 4: -117 30 31 41

scanFormat$326:	; return
x10516:	mov ax, [bp]	; 3: -117 70 0
x10519:	mov di, [bp + 4]	; 3: -117 126 4
x10522:	mov bp, [bp + 2]	; 3: -117 110 2
x10525:	jmp ax	; 2: -1 -32

scanFormat$327:	; function end scanFormat

g_inCount:
x10527:	db 0, 0	; 2: 0 0

g_inChars:
x10529:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x10531:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x10552:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x10556:	mov ax, [g_inStatus]	; 3: -95 -7 35
x10559:	cmp ax, 0	; 3: -125 -8 0
x10562:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x10564:	cmp ax, 1	; 3: -125 -8 1
x10567:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x10569:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1326 = int_to_int g_inDevice (Pointer -> Pointer)
x10571:	mov ax, [g_inDevice]	; 3: -95 -5 35

scanChar$6:	; stream = £temporary1326
x10574:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1327 -> stream = *stream, offset 2
x10577:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1327 -> stream
x10580:	mov ax, [si + 2]	; 3: -117 68 2
x10583:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x10586:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x10588:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x10591:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1332 = &c
x10594:	mov dx, bp	; 2: -119 -22
x10596:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1332

scanChar$14:	; interrupt 33
x10599:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x10601:	inc word [g_inChars]	; 4: -1 6 33 41

scanChar$16:	; return_value = c
x10605:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x10608:	mov ax, [bp]	; 3: -117 70 0
x10611:	mov di, [bp + 4]	; 3: -117 126 4
x10614:	mov bp, [bp + 2]	; 3: -117 110 2
x10617:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1334 = int_to_int g_inDevice (Pointer -> Pointer)
x10619:	mov ax, [g_inDevice]	; 3: -95 -5 35

scanChar$19:	; inString = £temporary1334
x10622:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1335 = g_inChars
x10625:	mov ax, [g_inChars]	; 3: -95 33 41

scanChar$21:	; ++g_inChars
x10628:	inc word [g_inChars]	; 4: -1 6 33 41

scanChar$22:	; £temporary1337 = inString + £temporary1335
x10632:	mov si, [bp + 11]	; 3: -117 118 11
x10635:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1336 -> £temporary1337 = *£temporary1337

scanChar$24:	; return_value = £temporary1336 -> £temporary1337
x10637:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x10639:	mov ax, [bp]	; 3: -117 70 0
x10642:	mov di, [bp + 4]	; 3: -117 126 4
x10645:	mov bp, [bp + 2]	; 3: -117 110 2
x10648:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x10650:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x10652:	mov ax, [bp]	; 3: -117 70 0
x10655:	mov di, [bp + 4]	; 3: -117 126 4
x10658:	mov bp, [bp + 2]	; 3: -117 110 2
x10661:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x10663:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x10668:	mov word [bp + 12], scanString$3	; 5: -57 70 12 -70 41
x10673:	mov [bp + 14], bp	; 3: -119 110 14
x10676:	add bp, 12	; 3: -125 -59 12
x10679:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1389 = return_value

scanString$5:	; input = £temporary1389
x10682:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x10685:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1390 = int_to_int input (Signed_Char -> Signed_Int)
x10690:	mov al, [bp + 12]	; 3: -118 70 12
x10693:	and ax, 255	; 3: 37 -1 0
x10696:	cmp al, 0	; 2: 60 0
x10698:	jge scanString$9	; 2: 125 4
x10700:	neg al	; 2: -10 -40
x10702:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1390, offset 6
x10704:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x10707:	mov word [bp + 15], scanString$11	; 5: -57 70 15 -31 41
x10712:	mov [bp + 17], bp	; 3: -119 110 17
x10715:	add bp, 15	; 3: -125 -59 15
x10718:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1391 = return_value

scanString$13:	; if £temporary1391 == 0 goto 20
x10721:	cmp bx, 0	; 3: -125 -5 0
x10724:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x10726:	mov word [bp + 15], scanString$16	; 5: -57 70 15 -12 41
x10731:	mov [bp + 17], bp	; 3: -119 110 17
x10734:	add bp, 15	; 3: -125 -59 15
x10737:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1392 = return_value

scanString$18:	; input = £temporary1392
x10740:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x10743:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x10745:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x10749:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x10753:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10757:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1396 = int_to_int input (Signed_Char -> Signed_Int)
x10759:	mov al, [bp + 12]	; 3: -118 70 12
x10762:	and ax, 255	; 3: 37 -1 0
x10765:	cmp al, 0	; 2: 60 0
x10767:	jge scanString$24	; 2: 125 4
x10769:	neg al	; 2: -10 -40
x10771:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1396, offset 6
x10773:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x10776:	mov word [bp + 15], scanString$26	; 5: -57 70 15 38 42
x10781:	mov [bp + 17], bp	; 3: -119 110 17
x10784:	add bp, 15	; 3: -125 -59 15
x10787:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1397 = return_value

scanString$28:	; if £temporary1397 != 0 goto 45
x10790:	cmp bx, 0	; 3: -125 -5 0
x10793:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1400 = int_to_int input (Signed_Char -> Signed_Int)
x10795:	mov al, [bp + 12]	; 3: -118 70 12
x10798:	and ax, 255	; 3: 37 -1 0
x10801:	cmp al, 0	; 2: 60 0
x10803:	jge scanString$30	; 2: 125 4
x10805:	neg al	; 2: -10 -40
x10807:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1400 == -1 goto 45
x10809:	cmp ax, -1	; 3: -125 -8 -1
x10812:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x10814:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10818:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1405 = index
x10820:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x10823:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1407 = string + £temporary1405
x10826:	mov si, [bp + 6]	; 3: -117 118 6
x10829:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1406 -> £temporary1407 = *£temporary1407

scanString$36:	; £temporary1406 -> £temporary1407 = input
x10831:	mov al, [bp + 12]	; 3: -118 70 12
x10834:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x10836:	mov word [bp + 15], scanString$39	; 5: -57 70 15 98 42
x10841:	mov [bp + 17], bp	; 3: -119 110 17
x10844:	add bp, 15	; 3: -125 -59 15
x10847:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1408 = return_value

scanString$41:	; input = £temporary1408
x10850:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x10853:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x10858:	inc word [g_inChars]	; 4: -1 6 33 41

scanString$44:	; goto 22
x10862:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1411 = string + index
x10864:	mov si, [bp + 6]	; 3: -117 118 6
x10867:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1410 -> £temporary1411 = *£temporary1411

scanString$47:	; £temporary1410 -> £temporary1411 = 0
x10870:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x10873:	inc word [g_inChars]	; 4: -1 6 33 41

scanString$49:	; goto 126
x10877:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1413 = precision
x10880:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x10883:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1413 <= 0 goto 76
x10886:	cmp ax, 0	; 3: -125 -8 0
x10889:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1415 = int_to_int input (Signed_Char -> Signed_Int)
x10891:	mov al, [bp + 12]	; 3: -118 70 12
x10894:	and ax, 255	; 3: 37 -1 0
x10897:	cmp al, 0	; 2: 60 0
x10899:	jge scanString$55	; 2: 125 4
x10901:	neg al	; 2: -10 -40
x10903:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1415, offset 6
x10905:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x10908:	mov word [bp + 15], scanString$57	; 5: -57 70 15 -86 42
x10913:	mov [bp + 17], bp	; 3: -119 110 17
x10916:	add bp, 15	; 3: -125 -59 15
x10919:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1416 = return_value

scanString$59:	; if £temporary1416 != 0 goto 76
x10922:	cmp bx, 0	; 3: -125 -5 0
x10925:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1419 = int_to_int input (Signed_Char -> Signed_Int)
x10927:	mov al, [bp + 12]	; 3: -118 70 12
x10930:	and ax, 255	; 3: 37 -1 0
x10933:	cmp al, 0	; 2: 60 0
x10935:	jge scanString$61	; 2: 125 4
x10937:	neg al	; 2: -10 -40
x10939:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1419 == -1 goto 76
x10941:	cmp ax, -1	; 3: -125 -8 -1
x10944:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x10946:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10950:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1425 = index
x10952:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x10955:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1427 = string + £temporary1425
x10958:	mov si, [bp + 6]	; 3: -117 118 6
x10961:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1426 -> £temporary1427 = *£temporary1427

scanString$67:	; £temporary1426 -> £temporary1427 = input
x10963:	mov al, [bp + 12]	; 3: -118 70 12
x10966:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x10968:	mov word [bp + 15], scanString$70	; 5: -57 70 15 -26 42
x10973:	mov [bp + 17], bp	; 3: -119 110 17
x10976:	add bp, 15	; 3: -125 -59 15
x10979:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1428 = return_value

scanString$72:	; input = £temporary1428
x10982:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x10985:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x10990:	inc word [g_inChars]	; 4: -1 6 33 41

scanString$75:	; goto 50
x10994:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x10996:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11000:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1432 = string + index
x11004:	mov si, [bp + 6]	; 3: -117 118 6
x11007:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1431 -> £temporary1432 = *£temporary1432

scanString$79:	; £temporary1431 -> £temporary1432 = 0
x11010:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x11013:	inc word [g_inChars]	; 4: -1 6 33 41

scanString$81:	; goto 126
x11017:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x11020:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11024:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1435 = int_to_int input (Signed_Char -> Signed_Int)
x11026:	mov al, [bp + 12]	; 3: -118 70 12
x11029:	and ax, 255	; 3: 37 -1 0
x11032:	cmp al, 0	; 2: 60 0
x11034:	jge scanString$85	; 2: 125 4
x11036:	neg al	; 2: -10 -40
x11038:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1435, offset 6
x11040:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x11043:	mov word [bp + 15], scanString$87	; 5: -57 70 15 49 43
x11048:	mov [bp + 17], bp	; 3: -119 110 17
x11051:	add bp, 15	; 3: -125 -59 15
x11054:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1436 = return_value

scanString$89:	; if £temporary1436 != 0 goto 101
x11057:	cmp bx, 0	; 3: -125 -5 0
x11060:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1439 = int_to_int input (Signed_Char -> Signed_Int)
x11062:	mov al, [bp + 12]	; 3: -118 70 12
x11065:	and ax, 255	; 3: 37 -1 0
x11068:	cmp al, 0	; 2: 60 0
x11070:	jge scanString$91	; 2: 125 4
x11072:	neg al	; 2: -10 -40
x11074:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1439 == -1 goto 101
x11076:	cmp ax, -1	; 3: -125 -8 -1
x11079:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x11081:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11085:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x11087:	mov word [bp + 15], scanString$95	; 5: -57 70 15 93 43
x11092:	mov [bp + 17], bp	; 3: -119 110 17
x11095:	add bp, 15	; 3: -125 -59 15
x11098:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1444 = return_value

scanString$97:	; input = £temporary1444
x11101:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x11104:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x11109:	inc word [g_inChars]	; 4: -1 6 33 41

scanString$100:	; goto 83
x11113:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x11115:	inc word [g_inChars]	; 4: -1 6 33 41

scanString$102:	; goto 126
x11119:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1447 = precision
x11121:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x11124:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1447 <= 0 goto 124
x11127:	cmp ax, 0	; 3: -125 -8 0
x11130:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1449 = int_to_int input (Signed_Char -> Signed_Int)
x11132:	mov al, [bp + 12]	; 3: -118 70 12
x11135:	and ax, 255	; 3: 37 -1 0
x11138:	cmp al, 0	; 2: 60 0
x11140:	jge scanString$108	; 2: 125 4
x11142:	neg al	; 2: -10 -40
x11144:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1449, offset 6
x11146:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x11149:	mov word [bp + 15], scanString$110	; 5: -57 70 15 -101 43
x11154:	mov [bp + 17], bp	; 3: -119 110 17
x11157:	add bp, 15	; 3: -125 -59 15
x11160:	nop	; 1: -112
x11161:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1450 = return_value

scanString$112:	; if £temporary1450 != 0 goto 124
x11163:	cmp bx, 0	; 3: -125 -5 0
x11166:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1453 = int_to_int input (Signed_Char -> Signed_Int)
x11168:	mov al, [bp + 12]	; 3: -118 70 12
x11171:	and ax, 255	; 3: 37 -1 0
x11174:	cmp al, 0	; 2: 60 0
x11176:	jge scanString$114	; 2: 125 4
x11178:	neg al	; 2: -10 -40
x11180:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1453 == -1 goto 124
x11182:	cmp ax, -1	; 3: -125 -8 -1
x11185:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x11187:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11191:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x11193:	mov word [bp + 15], scanString$118	; 5: -57 70 15 -57 43
x11198:	mov [bp + 17], bp	; 3: -119 110 17
x11201:	add bp, 15	; 3: -125 -59 15
x11204:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1459 = return_value

scanString$120:	; input = £temporary1459
x11207:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x11210:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x11215:	inc word [g_inChars]	; 4: -1 6 33 41

scanString$123:	; goto 103
x11219:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x11221:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11225:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x11227:	inc word [g_inChars]	; 4: -1 6 33 41

scanString$126:	; if found == 0 goto 128
x11231:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x11235:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x11237:	inc word [g_inCount]	; 4: -1 6 31 41

scanString$128:	; return
x11241:	mov ax, [bp]	; 3: -117 70 0
x11244:	mov di, [bp + 4]	; 3: -117 126 4
x11247:	mov bp, [bp + 2]	; 3: -117 110 2
x11250:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x11252:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x11256:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x11258:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x11262:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x11264:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x11268:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x11270:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x11274:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x11276:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x11280:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x11282:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x11286:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary408 = 1
x11288:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x11291:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary408 = 0
x11293:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary408

isspace$10:	; return
x11296:	mov ax, [bp]	; 3: -117 70 0
x11299:	mov di, [bp + 4]	; 3: -117 126 4
x11302:	mov bp, [bp + 2]	; 3: -117 110 2
x11305:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x11307:	mov dword [bp + 6], 0	; 8: 102 -57 70 6 0 0 0 0

scanLongInt$1:	; minus = 0
x11315:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanLongInt$2:	; found = 0
x11320:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x11325:	mov word [bp + 14], scanLongInt$5	; 5: -57 70 14 75 44
x11330:	mov [bp + 16], bp	; 3: -119 110 16
x11333:	add bp, 14	; 3: -125 -59 14
x11336:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1486 = return_value

scanLongInt$7:	; input = £temporary1486
x11339:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1487 = int_to_int input (Signed_Char -> Signed_Int)
x11342:	mov al, [bp + 14]	; 3: -118 70 14
x11345:	and ax, 255	; 3: 37 -1 0
x11348:	cmp al, 0	; 2: 60 0
x11350:	jge scanLongInt$10	; 2: 125 4
x11352:	neg al	; 2: -10 -40
x11354:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1487, offset 6
x11356:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$11:	; call function noellipse-noellipse isspace
x11359:	mov word [bp + 15], scanLongInt$12	; 5: -57 70 15 109 44
x11364:	mov [bp + 17], bp	; 3: -119 110 17
x11367:	add bp, 15	; 3: -125 -59 15
x11370:	nop	; 1: -112
x11371:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1488 = return_value

scanLongInt$14:	; if £temporary1488 == 0 goto 21
x11373:	cmp bx, 0	; 3: -125 -5 0
x11376:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x11378:	mov word [bp + 15], scanLongInt$17	; 5: -57 70 15 -128 44
x11383:	mov [bp + 17], bp	; 3: -119 110 17
x11386:	add bp, 15	; 3: -125 -59 15
x11389:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1489 = return_value

scanLongInt$19:	; input = £temporary1489
x11392:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$20:	; goto 8
x11395:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x11397:	cmp byte [bp + 14], 43	; 4: -128 126 14 43
x11401:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x11403:	mov word [bp + 15], scanLongInt$24	; 5: -57 70 15 -103 44
x11408:	mov [bp + 17], bp	; 3: -119 110 17
x11411:	add bp, 15	; 3: -125 -59 15
x11414:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1492 = return_value

scanLongInt$26:	; input = £temporary1492
x11417:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$27:	; goto 35
x11420:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x11422:	cmp byte [bp + 14], 45	; 4: -128 126 14 45
x11426:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x11428:	mov word [bp + 10], 1	; 5: -57 70 10 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x11433:	mov word [bp + 15], scanLongInt$32	; 5: -57 70 15 -73 44
x11438:	mov [bp + 17], bp	; 3: -119 110 17
x11441:	add bp, 15	; 3: -125 -59 15
x11444:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1494 = return_value

scanLongInt$34:	; input = £temporary1494
x11447:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$35:	; call header integral zero 0 stack zero 0

scanLongInt$36:	; £temporary1495 = int_to_int input (Signed_Char -> Signed_Int)
x11450:	mov al, [bp + 14]	; 3: -118 70 14
x11453:	and ax, 255	; 3: 37 -1 0
x11456:	cmp al, 0	; 2: 60 0
x11458:	jge scanLongInt$37	; 2: 125 4
x11460:	neg al	; 2: -10 -40
x11462:	neg ax	; 2: -9 -40

scanLongInt$37:	; parameter £temporary1495, offset 6
x11464:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$38:	; call function noellipse-noellipse isdigit
x11467:	mov word [bp + 15], scanLongInt$39	; 5: -57 70 15 -39 44
x11472:	mov [bp + 17], bp	; 3: -119 110 17
x11475:	add bp, 15	; 3: -125 -59 15
x11478:	jmp isdigit	; 3: -23 109 -11

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1496 = return_value

scanLongInt$41:	; if £temporary1496 == 0 goto 53
x11481:	cmp bx, 0	; 3: -125 -5 0
x11484:	je scanLongInt$53	; 2: 116 66

scanLongInt$42:	; £temporary1497 = longValue * 10
x11486:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11490:	xor edx, edx	; 3: 102 49 -46
x11493:	imul dword [int4$10#]	; 5: 102 -9 46 -68 19

scanLongInt$43:	; £temporary1498 = input - 48
x11498:	mov bl, [bp + 14]	; 3: -118 94 14
x11501:	sub bl, 48	; 3: -128 -21 48

scanLongInt$44:	; £temporary1499 = int_to_int £temporary1498 (Signed_Char -> Signed_Long_Int)
x11504:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0
x11511:	cmp bl, 0	; 3: -128 -5 0
x11514:	jge scanLongInt$45	; 2: 125 5
x11516:	neg bl	; 2: -10 -37
x11518:	neg ebx	; 3: 102 -9 -37

scanLongInt$45:	; longValue = £temporary1497 + £temporary1499
x11521:	add eax, ebx	; 3: 102 1 -40
x11524:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$46:	; call header integral zero 0 stack zero 0

scanLongInt$47:	; call function noellipse-noellipse scanChar
x11528:	mov word [bp + 15], scanLongInt$48	; 5: -57 70 15 22 45
x11533:	mov [bp + 17], bp	; 3: -119 110 17
x11536:	add bp, 15	; 3: -125 -59 15
x11539:	jmp scanChar	; 3: -23 34 -4

scanLongInt$48:	; post call

scanLongInt$49:	; £temporary1501 = return_value

scanLongInt$50:	; input = £temporary1501
x11542:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$51:	; found = 1
x11545:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$52:	; goto 35
x11550:	jmp scanLongInt$35	; 2: -21 -102

scanLongInt$53:	; if minus == 0 goto 56
x11552:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11556:	je scanLongInt$56	; 2: 116 11

scanLongInt$54:	; £temporary1503 = -longValue
x11558:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11562:	neg eax	; 3: 102 -9 -40

scanLongInt$55:	; longValue = £temporary1503
x11565:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$56:	; if found == 0 goto 58
x11569:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x11573:	je scanLongInt$58	; 2: 116 4

scanLongInt$57:	; ++g_inCount
x11575:	inc word [g_inCount]	; 4: -1 6 31 41

scanLongInt$58:	; call header integral zero 0 stack zero 0

scanLongInt$59:	; parameter input, offset 6
x11579:	mov al, [bp + 14]	; 3: -118 70 14
x11582:	mov [bp + 21], al	; 3: -120 70 21

scanLongInt$60:	; call function noellipse-noellipse unscanChar
x11585:	mov word [bp + 15], scanLongInt$61	; 5: -57 70 15 79 45
x11590:	mov [bp + 17], bp	; 3: -119 110 17
x11593:	add bp, 15	; 3: -125 -59 15
x11596:	nop	; 1: -112
x11597:	jmp unscanChar	; 2: -21 15

scanLongInt$61:	; post call

scanLongInt$62:	; return_value = longValue
x11599:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

scanLongInt$63:	; return
x11603:	mov ax, [bp]	; 3: -117 70 0
x11606:	mov di, [bp + 4]	; 3: -117 126 4
x11609:	mov bp, [bp + 2]	; 3: -117 110 2
x11612:	jmp ax	; 2: -1 -32

scanLongInt$64:	; function end scanLongInt

unscanChar:	; case g_inStatus == 0 goto 4
x11614:	mov ax, [g_inStatus]	; 3: -95 -7 35
x11617:	cmp ax, 0	; 3: -125 -8 0
x11620:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x11622:	cmp ax, 1	; 3: -125 -8 1
x11625:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x11627:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x11629:	dec word [g_inChars]	; 4: -1 14 33 41

unscanChar$5:	; goto 7
x11633:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x11635:	dec word [g_inChars]	; 4: -1 14 33 41

unscanChar$7:	; return
x11639:	mov ax, [bp]	; 3: -117 70 0
x11642:	mov di, [bp + 4]	; 3: -117 126 4
x11645:	mov bp, [bp + 2]	; 3: -117 110 2
x11648:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x11650:	mov dword [bp + 10], 0	; 8: 102 -57 70 10 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x11658:	mov word [bp + 18], scanUnsignedLongInt$3	; 5: -57 70 18 -104 45
x11663:	mov [bp + 20], bp	; 3: -119 110 20
x11666:	add bp, 18	; 3: -125 -59 18
x11669:	jmp scanChar	; 3: -23 -96 -5

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1511 = return_value

scanUnsignedLongInt$5:	; input = £temporary1511
x11672:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$6:	; found = 1
x11675:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1512 = int_to_int input (Signed_Char -> Signed_Int)
x11680:	mov al, [bp + 18]	; 3: -118 70 18
x11683:	and ax, 255	; 3: 37 -1 0
x11686:	cmp al, 0	; 2: 60 0
x11688:	jge scanUnsignedLongInt$9	; 2: 125 4
x11690:	neg al	; 2: -10 -40
x11692:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1512, offset 6
x11694:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x11697:	mov word [bp + 21], scanUnsignedLongInt$11	; 5: -57 70 21 -65 45
x11702:	mov [bp + 23], bp	; 3: -119 110 23
x11705:	add bp, 21	; 3: -125 -59 21
x11708:	jmp isspace	; 3: -23 53 -2

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1513 = return_value

scanUnsignedLongInt$13:	; if £temporary1513 == 0 goto 20
x11711:	cmp bx, 0	; 3: -125 -5 0
x11714:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x11716:	mov word [bp + 21], scanUnsignedLongInt$16	; 5: -57 70 21 -46 45
x11721:	mov [bp + 23], bp	; 3: -119 110 23
x11724:	add bp, 21	; 3: -125 -59 21
x11727:	jmp scanChar	; 3: -23 102 -5

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1514 = return_value

scanUnsignedLongInt$18:	; input = £temporary1514
x11730:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$19:	; goto 7
x11733:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 48 goto 49
x11735:	cmp byte [bp + 18], 48	; 4: -128 126 18 48
x11739:	jne scanUnsignedLongInt$49	; 2: 117 118

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x11741:	mov word [bp + 21], scanUnsignedLongInt$23	; 5: -57 70 21 -21 45
x11746:	mov [bp + 23], bp	; 3: -119 110 23
x11749:	add bp, 21	; 3: -125 -59 21
x11752:	jmp scanChar	; 3: -23 77 -5

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1517 = return_value

scanUnsignedLongInt$25:	; input = £temporary1517
x11755:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$26:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$27:	; £temporary1518 = int_to_int input (Signed_Char -> Signed_Int)
x11758:	mov al, [bp + 18]	; 3: -118 70 18
x11761:	and ax, 255	; 3: 37 -1 0
x11764:	cmp al, 0	; 2: 60 0
x11766:	jge scanUnsignedLongInt$28	; 2: 125 4
x11768:	neg al	; 2: -10 -40
x11770:	neg ax	; 2: -9 -40

scanUnsignedLongInt$28:	; parameter £temporary1518, offset 6
x11772:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$29:	; call function noellipse-noellipse tolower
x11775:	mov word [bp + 21], scanUnsignedLongInt$30	; 5: -57 70 21 13 46
x11780:	mov [bp + 23], bp	; 3: -119 110 23
x11783:	add bp, 21	; 3: -125 -59 21
x11786:	jmp tolower	; 3: -23 2 -16

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1519 = return_value

scanUnsignedLongInt$32:	; if £temporary1519 != 120 goto 44
x11789:	cmp bx, 120	; 3: -125 -5 120
x11792:	jne scanUnsignedLongInt$44	; 2: 117 42

scanUnsignedLongInt$33:	; if base != 0 goto 36
x11794:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11799:	jne scanUnsignedLongInt$36	; 2: 117 8

scanUnsignedLongInt$34:	; £temporary1525 = 16
x11801:	mov eax, 16	; 6: 102 -72 16 0 0 0

scanUnsignedLongInt$35:	; goto 37
x11807:	jmp scanUnsignedLongInt$37	; 2: -21 4

scanUnsignedLongInt$36:	; £temporary1525 = base
x11809:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$37:	; base = £temporary1525
x11813:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$38:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$39:	; call function noellipse-noellipse scanChar
x11817:	mov word [bp + 21], scanUnsignedLongInt$40	; 5: -57 70 21 55 46
x11822:	mov [bp + 23], bp	; 3: -119 110 23
x11825:	add bp, 21	; 3: -125 -59 21
x11828:	jmp scanChar	; 3: -23 1 -5

scanUnsignedLongInt$40:	; post call

scanUnsignedLongInt$41:	; £temporary1526 = return_value

scanUnsignedLongInt$42:	; input = £temporary1526
x11831:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$43:	; goto 49
x11834:	jmp scanUnsignedLongInt$49	; 2: -21 23

scanUnsignedLongInt$44:	; if base != 0 goto 47
x11836:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11841:	jne scanUnsignedLongInt$47	; 2: 117 8

scanUnsignedLongInt$45:	; £temporary1531 = 8
x11843:	mov eax, 8	; 6: 102 -72 8 0 0 0

scanUnsignedLongInt$46:	; goto 48
x11849:	jmp scanUnsignedLongInt$48	; 2: -21 4

scanUnsignedLongInt$47:	; £temporary1531 = base
x11851:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$48:	; base = £temporary1531
x11855:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$49:	; if base != 0 goto 51
x11859:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11864:	jne scanUnsignedLongInt$51	; 2: 117 8

scanUnsignedLongInt$50:	; base = 10
x11866:	mov dword [bp + 6], 10	; 8: 102 -57 70 6 10 0 0 0

scanUnsignedLongInt$51:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$52:	; £temporary1533 = int_to_int input (Signed_Char -> Signed_Int)
x11874:	mov al, [bp + 18]	; 3: -118 70 18
x11877:	and ax, 255	; 3: 37 -1 0
x11880:	cmp al, 0	; 2: 60 0
x11882:	jge scanUnsignedLongInt$53	; 2: 125 4
x11884:	neg al	; 2: -10 -40
x11886:	neg ax	; 2: -9 -40

scanUnsignedLongInt$53:	; parameter £temporary1533, offset 6
x11888:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$54:	; call function noellipse-noellipse isxdigit
x11891:	mov word [bp + 21], scanUnsignedLongInt$55	; 5: -57 70 21 -127 46
x11896:	mov [bp + 23], bp	; 3: -119 110 23
x11899:	add bp, 21	; 3: -125 -59 21
x11902:	nop	; 1: -112
x11903:	jmp isxdigit	; 2: -21 127

scanUnsignedLongInt$55:	; post call

scanUnsignedLongInt$56:	; £temporary1534 = return_value

scanUnsignedLongInt$57:	; if £temporary1534 == 0 goto 74
x11905:	cmp bx, 0	; 3: -125 -5 0
x11908:	je scanUnsignedLongInt$74	; 2: 116 77

scanUnsignedLongInt$58:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$59:	; parameter input, offset 6
x11910:	mov al, [bp + 18]	; 3: -118 70 18
x11913:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$60:	; call function noellipse-noellipse digitToValue
x11916:	mov word [bp + 21], scanUnsignedLongInt$61	; 5: -57 70 21 -102 46
x11921:	mov [bp + 23], bp	; 3: -119 110 23
x11924:	add bp, 21	; 3: -125 -59 21
x11927:	jmp digitToValue	; 3: -23 -86 0

scanUnsignedLongInt$61:	; post call

scanUnsignedLongInt$62:	; £temporary1535 = return_value

scanUnsignedLongInt$63:	; digit = £temporary1535
x11930:	mov [bp + 14], ebx	; 4: 102 -119 94 14

scanUnsignedLongInt$64:	; if digit >= base goto 74
x11934:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11938:	cmp [bp + 14], eax	; 4: 102 57 70 14
x11942:	jae scanUnsignedLongInt$74	; 2: 115 43

scanUnsignedLongInt$65:	; £temporary1537 = unsignedLongValue * base
x11944:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x11948:	xor edx, edx	; 3: 102 49 -46
x11951:	mul dword [bp + 6]	; 4: 102 -9 102 6

scanUnsignedLongInt$66:	; unsignedLongValue = £temporary1537 + digit
x11955:	add eax, [bp + 14]	; 4: 102 3 70 14
x11959:	mov [bp + 10], eax	; 4: 102 -119 70 10

scanUnsignedLongInt$67:	; found = 1
x11963:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$68:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$69:	; call function noellipse-noellipse scanChar
x11968:	mov word [bp + 21], scanUnsignedLongInt$70	; 5: -57 70 21 -50 46
x11973:	mov [bp + 23], bp	; 3: -119 110 23
x11976:	add bp, 21	; 3: -125 -59 21
x11979:	jmp scanChar	; 3: -23 106 -6

scanUnsignedLongInt$70:	; post call

scanUnsignedLongInt$71:	; £temporary1539 = return_value

scanUnsignedLongInt$72:	; input = £temporary1539
x11982:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$73:	; goto 51
x11985:	jmp scanUnsignedLongInt$51	; 2: -21 -113

scanUnsignedLongInt$74:	; if found == 0 goto 76
x11987:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x11991:	je scanUnsignedLongInt$76	; 2: 116 4

scanUnsignedLongInt$75:	; ++g_inCount
x11993:	inc word [g_inCount]	; 4: -1 6 31 41

scanUnsignedLongInt$76:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$77:	; parameter input, offset 6
x11997:	mov al, [bp + 18]	; 3: -118 70 18
x12000:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$78:	; call function noellipse-noellipse unscanChar
x12003:	mov word [bp + 21], scanUnsignedLongInt$79	; 5: -57 70 21 -15 46
x12008:	mov [bp + 23], bp	; 3: -119 110 23
x12011:	add bp, 21	; 3: -125 -59 21
x12014:	jmp unscanChar	; 3: -23 109 -2

scanUnsignedLongInt$79:	; post call

scanUnsignedLongInt$80:	; return_value = unsignedLongValue
x12017:	mov ebx, [bp + 10]	; 4: 102 -117 94 10

scanUnsignedLongInt$81:	; return
x12021:	mov ax, [bp]	; 3: -117 70 0
x12024:	mov di, [bp + 4]	; 3: -117 126 4
x12027:	mov bp, [bp + 2]	; 3: -117 110 2
x12030:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$82:	; function end scanUnsignedLongInt

isxdigit:	; call header integral zero 0 stack zero 0

isxdigit$1:	; parameter c, offset 6
x12032:	mov ax, [bp + 6]	; 3: -117 70 6
x12035:	mov [bp + 14], ax	; 3: -119 70 14

isxdigit$2:	; call function noellipse-noellipse isdigit
x12038:	mov word [bp + 8], isxdigit$3	; 5: -57 70 8 20 47
x12043:	mov [bp + 10], bp	; 3: -119 110 10
x12046:	add bp, 8	; 3: -125 -59 8
x12049:	jmp isdigit	; 3: -23 50 -13

isxdigit$3:	; post call

isxdigit$4:	; £temporary361 = return_value

isxdigit$5:	; if £temporary361 != 0 goto 10
x12052:	cmp bx, 0	; 3: -125 -5 0
x12055:	jne isxdigit$10	; 2: 117 24

isxdigit$6:	; if c < 97 goto 8
x12057:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12061:	jl isxdigit$8	; 2: 124 6

isxdigit$7:	; if c <= 102 goto 10
x12063:	cmp word [bp + 6], 102	; 4: -125 126 6 102
x12067:	jle isxdigit$10	; 2: 126 12

isxdigit$8:	; if c < 65 goto 12
x12069:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x12073:	jl isxdigit$12	; 2: 124 11

isxdigit$9:	; if c > 70 goto 12
x12075:	cmp word [bp + 6], 70	; 4: -125 126 6 70
x12079:	jg isxdigit$12	; 2: 127 5

isxdigit$10:	; £temporary371 = 1
x12081:	mov bx, 1	; 3: -69 1 0

isxdigit$11:	; goto 13
x12084:	jmp isxdigit$13	; 2: -21 3

isxdigit$12:	; £temporary371 = 0
x12086:	mov bx, 0	; 3: -69 0 0

isxdigit$13:	; return_value = £temporary371

isxdigit$14:	; return
x12089:	mov ax, [bp]	; 3: -117 70 0
x12092:	mov di, [bp + 4]	; 3: -117 126 4
x12095:	mov bp, [bp + 2]	; 3: -117 110 2
x12098:	jmp ax	; 2: -1 -32

isxdigit$15:	; function end isxdigit

digitToValue:	; call header integral zero 0 stack zero 0

digitToValue$1:	; £temporary1470 = int_to_int input (Signed_Char -> Signed_Int)
x12100:	mov al, [bp + 6]	; 3: -118 70 6
x12103:	and ax, 255	; 3: 37 -1 0
x12106:	cmp al, 0	; 2: 60 0
x12108:	jge digitToValue$2	; 2: 125 4
x12110:	neg al	; 2: -10 -40
x12112:	neg ax	; 2: -9 -40

digitToValue$2:	; parameter £temporary1470, offset 6
x12114:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$3:	; call function noellipse-noellipse isdigit
x12117:	mov word [bp + 7], digitToValue$4	; 5: -57 70 7 99 47
x12122:	mov [bp + 9], bp	; 3: -119 110 9
x12125:	add bp, 7	; 3: -125 -59 7
x12128:	jmp isdigit	; 3: -23 -29 -14

digitToValue$4:	; post call

digitToValue$5:	; £temporary1471 = return_value

digitToValue$6:	; if £temporary1471 == 0 goto 11
x12131:	cmp bx, 0	; 3: -125 -5 0
x12134:	je digitToValue$11	; 2: 116 24

digitToValue$7:	; £temporary1472 = input - 48
x12136:	mov bl, [bp + 6]	; 3: -118 94 6
x12139:	sub bl, 48	; 3: -128 -21 48

digitToValue$8:	; £temporary1473 = int_to_int £temporary1472 (Signed_Char -> Unsigned_Long_Int)
x12142:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$9:	; return_value = £temporary1473

digitToValue$10:	; return
x12149:	mov ax, [bp]	; 3: -117 70 0
x12152:	mov di, [bp + 4]	; 3: -117 126 4
x12155:	mov bp, [bp + 2]	; 3: -117 110 2
x12158:	jmp ax	; 2: -1 -32

digitToValue$11:	; call header integral zero 0 stack zero 0

digitToValue$12:	; £temporary1474 = int_to_int input (Signed_Char -> Signed_Int)
x12160:	mov al, [bp + 6]	; 3: -118 70 6
x12163:	and ax, 255	; 3: 37 -1 0
x12166:	cmp al, 0	; 2: 60 0
x12168:	jge digitToValue$13	; 2: 125 4
x12170:	neg al	; 2: -10 -40
x12172:	neg ax	; 2: -9 -40

digitToValue$13:	; parameter £temporary1474, offset 6
x12174:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$14:	; call function noellipse-noellipse islower
x12177:	mov word [bp + 7], digitToValue$15	; 5: -57 70 7 -97 47
x12182:	mov [bp + 9], bp	; 3: -119 110 9
x12185:	add bp, 7	; 3: -125 -59 7
x12188:	nop	; 1: -112
x12189:	jmp islower	; 2: -21 61

digitToValue$15:	; post call

digitToValue$16:	; £temporary1475 = return_value

digitToValue$17:	; if £temporary1475 == 0 goto 23
x12191:	cmp bx, 0	; 3: -125 -5 0
x12194:	je digitToValue$23	; 2: 116 28

digitToValue$18:	; £temporary1476 = input - 97
x12196:	mov bl, [bp + 6]	; 3: -118 94 6
x12199:	sub bl, 97	; 3: -128 -21 97

digitToValue$19:	; £temporary1477 = int_to_int £temporary1476 (Signed_Char -> Unsigned_Long_Int)
x12202:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$20:	; £temporary1478 = £temporary1477 + 10
x12209:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$21:	; return_value = £temporary1478

digitToValue$22:	; return
x12213:	mov ax, [bp]	; 3: -117 70 0
x12216:	mov di, [bp + 4]	; 3: -117 126 4
x12219:	mov bp, [bp + 2]	; 3: -117 110 2
x12222:	jmp ax	; 2: -1 -32

digitToValue$23:	; £temporary1479 = input - 65
x12224:	mov bl, [bp + 6]	; 3: -118 94 6
x12227:	sub bl, 65	; 3: -128 -21 65

digitToValue$24:	; £temporary1480 = int_to_int £temporary1479 (Signed_Char -> Unsigned_Long_Int)
x12230:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$25:	; £temporary1481 = £temporary1480 + 10
x12237:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$26:	; return_value = £temporary1481

digitToValue$27:	; return
x12241:	mov ax, [bp]	; 3: -117 70 0
x12244:	mov di, [bp + 4]	; 3: -117 126 4
x12247:	mov bp, [bp + 2]	; 3: -117 110 2
x12250:	jmp ax	; 2: -1 -32

digitToValue$28:	; function end digitToValue

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x12252:	mov word [bp + 8], islower$2	; 5: -57 70 8 -22 47
x12257:	mov [bp + 10], bp	; 3: -119 110 10
x12260:	add bp, 8	; 3: -125 -59 8
x12263:	jmp localeconv	; 3: -23 49 -27

islower$2:	; post call

islower$3:	; £temporary309 = return_value

islower$4:	; localeConvPtr = £temporary309
x12266:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x12269:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12273:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary311 -> localeConvPtr = *localeConvPtr, offset 12
x12275:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary311 -> localeConvPtr, offset 6
x12278:	mov ax, [si + 12]	; 3: -117 68 12
x12281:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x12284:	mov ax, [bp + 6]	; 3: -117 70 6
x12287:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x12290:	mov word [bp + 10], islower$11	; 5: -57 70 10 16 48
x12295:	mov [bp + 12], bp	; 3: -119 110 12
x12298:	add bp, 10	; 3: -125 -59 10
x12301:	jmp strchr	; 3: -23 -95 -22

islower$11:	; post call

islower$12:	; £temporary312 = return_value

islower$13:	; if £temporary312 == 0 goto 16
x12304:	cmp bx, 0	; 3: -125 -5 0
x12307:	je islower$16	; 2: 116 5

islower$14:	; £temporary314 = 1
x12309:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x12312:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary314 = 0
x12314:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary314

islower$18:	; return
x12317:	mov ax, [bp]	; 3: -117 70 0
x12320:	mov di, [bp + 4]	; 3: -117 126 4
x12323:	mov bp, [bp + 2]	; 3: -117 110 2
x12326:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x12328:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12332:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x12334:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x12338:	jg islower$23	; 2: 127 5

islower$21:	; £temporary318 = 1
x12340:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x12343:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary318 = 0
x12345:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary318

islower$25:	; return
x12348:	mov ax, [bp]	; 3: -117 70 0
x12351:	mov di, [bp + 4]	; 3: -117 126 4
x12354:	mov bp, [bp + 2]	; 3: -117 110 2
x12357:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

scanLongDouble:	; minus = 0
x12359:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x12364:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x12369:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x12371:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x12374:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x12376:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x12379:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 105 48
x12384:	mov [bp + 28], bp	; 3: -119 110 28
x12387:	add bp, 26	; 3: -125 -59 26
x12390:	jmp scanChar	; 3: -23 -49 -8

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1549 = return_value

scanLongDouble$10:	; input = £temporary1549
x12393:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1550 = int_to_int input (Signed_Char -> Signed_Int)
x12396:	mov al, [bp + 26]	; 3: -118 70 26
x12399:	and ax, 255	; 3: 37 -1 0
x12402:	cmp al, 0	; 2: 60 0
x12404:	jge scanLongDouble$13	; 2: 125 4
x12406:	neg al	; 2: -10 -40
x12408:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1550, offset 6
x12410:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x12413:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 -117 48
x12418:	mov [bp + 29], bp	; 3: -119 110 29
x12421:	add bp, 27	; 3: -125 -59 27
x12424:	jmp isspace	; 3: -23 105 -5

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1551 = return_value

scanLongDouble$17:	; if £temporary1551 == 0 goto 24
x12427:	cmp bx, 0	; 3: -125 -5 0
x12430:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x12432:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 -98 48
x12437:	mov [bp + 29], bp	; 3: -119 110 29
x12440:	add bp, 27	; 3: -125 -59 27
x12443:	jmp scanChar	; 3: -23 -102 -8

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1552 = return_value

scanLongDouble$22:	; input = £temporary1552
x12446:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x12449:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x12451:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x12455:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x12457:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 -73 48
x12462:	mov [bp + 29], bp	; 3: -119 110 29
x12465:	add bp, 27	; 3: -125 -59 27
x12468:	jmp scanChar	; 3: -23 -127 -8

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1555 = return_value

scanLongDouble$29:	; input = £temporary1555
x12471:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x12474:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x12476:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x12480:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x12482:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x12487:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 -43 48
x12492:	mov [bp + 29], bp	; 3: -119 110 29
x12495:	add bp, 27	; 3: -125 -59 27
x12498:	jmp scanChar	; 3: -23 99 -8

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1557 = return_value

scanLongDouble$37:	; input = £temporary1557
x12501:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1558 = int_to_int input (Signed_Char -> Signed_Int)
x12504:	mov al, [bp + 26]	; 3: -118 70 26
x12507:	and ax, 255	; 3: 37 -1 0
x12510:	cmp al, 0	; 2: 60 0
x12512:	jge scanLongDouble$40	; 2: 125 4
x12514:	neg al	; 2: -10 -40
x12516:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1558, offset 6
x12518:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x12521:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 -9 48
x12526:	mov [bp + 29], bp	; 3: -119 110 29
x12529:	add bp, 27	; 3: -125 -59 27
x12532:	jmp isdigit	; 3: -23 79 -15

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1559 = return_value

scanLongDouble$44:	; if £temporary1559 == 0 goto 60
x12535:	cmp bx, 0	; 3: -125 -5 0
x12538:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x12540:	fld qword [float8$10.0#]	; 4: -35 6 -27 29

scanLongDouble$46:	; push float value
x12544:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1560 = 10.0 * value
x12547:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1561 = input - 48
x12549:	mov al, [bp + 26]	; 3: -118 70 26
x12552:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1563 = int_to_int £temporary1561 (Signed_Char -> Signed_Int)
x12554:	and ax, 255	; 3: 37 -1 0
x12557:	cmp al, 0	; 2: 60 0
x12559:	jge scanLongDouble$50	; 2: 125 4
x12561:	neg al	; 2: -10 -40
x12563:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1562 = int_to_float £temporary1563 (Signed_Int -> Long_Double)
x12565:	mov [container2bytes#], ax	; 3: -93 -9 17
x12568:	fild word [container2bytes#]	; 4: -33 6 -9 17

scanLongDouble$51:	; £temporary1564 = £temporary1560 + £temporary1562
x12572:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x12574:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x12577:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 47 49
x12582:	mov [bp + 29], bp	; 3: -119 110 29
x12585:	add bp, 27	; 3: -125 -59 27
x12588:	jmp scanChar	; 3: -23 9 -8

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1565 = return_value

scanLongDouble$57:	; input = £temporary1565
x12591:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x12594:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x12599:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x12601:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x12605:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x12607:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 77 49
x12612:	mov [bp + 29], bp	; 3: -119 110 29
x12615:	add bp, 27	; 3: -125 -59 27
x12618:	jmp scanChar	; 3: -23 -21 -9

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1568 = return_value

scanLongDouble$65:	; input = £temporary1568
x12621:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1569 = int_to_int input (Signed_Char -> Signed_Int)
x12624:	mov al, [bp + 26]	; 3: -118 70 26
x12627:	and ax, 255	; 3: 37 -1 0
x12630:	cmp al, 0	; 2: 60 0
x12632:	jge scanLongDouble$68	; 2: 125 4
x12634:	neg al	; 2: -10 -40
x12636:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1569, offset 6
x12638:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x12641:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 111 49
x12646:	mov [bp + 29], bp	; 3: -119 110 29
x12649:	add bp, 27	; 3: -125 -59 27
x12652:	jmp isdigit	; 3: -23 -41 -16

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1570 = return_value

scanLongDouble$72:	; if £temporary1570 == 0 goto 92
x12655:	cmp bx, 0	; 3: -125 -5 0
x12658:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x12660:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x12663:	fld qword [float8$10.0#]	; 4: -35 6 -27 29

scanLongDouble$75:	; £temporary1571 = factor / 10.0
x12667:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x12669:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x12672:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x12675:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1572 = input - 48
x12678:	mov al, [bp + 26]	; 3: -118 70 26
x12681:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1574 = int_to_int £temporary1572 (Signed_Char -> Signed_Int)
x12683:	and ax, 255	; 3: 37 -1 0
x12686:	cmp al, 0	; 2: 60 0
x12688:	jge scanLongDouble$81	; 2: 125 4
x12690:	neg al	; 2: -10 -40
x12692:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1573 = int_to_float £temporary1574 (Signed_Int -> Long_Double)
x12694:	mov [container2bytes#], ax	; 3: -93 -9 17
x12697:	fild word [container2bytes#]	; 4: -33 6 -9 17

scanLongDouble$82:	; £temporary1575 = factor * £temporary1573
x12701:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1576 = value + £temporary1575
x12703:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x12705:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x12708:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 -78 49
x12713:	mov [bp + 29], bp	; 3: -119 110 29
x12716:	add bp, 27	; 3: -125 -59 27
x12719:	jmp scanChar	; 3: -23 -122 -9

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1577 = return_value

scanLongDouble$89:	; input = £temporary1577
x12722:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x12725:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x12730:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; parameter input, offset 6
x12732:	mov al, [bp + 26]	; 3: -118 70 26
x12735:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$94:	; call function noellipse-noellipse unscanChar
x12738:	mov word [bp + 27], scanLongDouble$95	; 5: -57 70 27 -48 49
x12743:	mov [bp + 29], bp	; 3: -119 110 29
x12746:	add bp, 27	; 3: -125 -59 27
x12749:	jmp unscanChar	; 3: -23 -114 -5

scanLongDouble$95:	; post call

scanLongDouble$96:	; call header integral zero 0 stack zero 0

scanLongDouble$97:	; £temporary1580 = int_to_int input (Signed_Char -> Signed_Int)
x12752:	mov al, [bp + 26]	; 3: -118 70 26
x12755:	and ax, 255	; 3: 37 -1 0
x12758:	cmp al, 0	; 2: 60 0
x12760:	jge scanLongDouble$98	; 2: 125 4
x12762:	neg al	; 2: -10 -40
x12764:	neg ax	; 2: -9 -40

scanLongDouble$98:	; parameter £temporary1580, offset 6
x12766:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$99:	; call function noellipse-noellipse tolower
x12769:	mov word [bp + 27], scanLongDouble$100	; 5: -57 70 27 -17 49
x12774:	mov [bp + 29], bp	; 3: -119 110 29
x12777:	add bp, 27	; 3: -125 -59 27
x12780:	jmp tolower	; 3: -23 32 -20

scanLongDouble$100:	; post call

scanLongDouble$101:	; £temporary1581 = return_value

scanLongDouble$102:	; if £temporary1581 != 101 goto 121
x12783:	cmp bx, 101	; 3: -125 -5 101
x12786:	jne scanLongDouble$121	; 2: 117 75

scanLongDouble$103:	; call header integral zero 0 stack zero 0

scanLongDouble$104:	; call function noellipse-noellipse scanLongInt
x12788:	mov word [bp + 27], scanLongDouble$105	; 5: -57 70 27 2 50
x12793:	mov [bp + 29], bp	; 3: -119 110 29
x12796:	add bp, 27	; 3: -125 -59 27
x12799:	jmp scanLongInt	; 3: -23 41 -6

scanLongDouble$105:	; post call

scanLongDouble$106:	; £temporary1583 = return_value

scanLongDouble$107:	; £temporary1584 = int_to_float £temporary1583 (Signed_Long_Int -> Double)
x12802:	mov [container4bytes#], ebx	; 5: 102 -119 30 68 29
x12807:	fild dword [container4bytes#]	; 4: -37 6 68 29

scanLongDouble$108:	; pop float exponent
x12811:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$109:	; push float value
x12814:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$110:	; call header integral zero 0 stack no zero 1
x12817:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$111:	; push float 10.0
x12820:	fld qword [float8$10.0#]	; 4: -35 6 -27 29

scanLongDouble$112:	; parameter 10.0, offset 6
x12824:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$113:	; push float exponent
x12827:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$114:	; parameter exponent, offset 14
x12830:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$115:	; call function noellipse-noellipse pow
x12833:	mov word [bp + 43], scanLongDouble$116	; 5: -57 70 43 47 50
x12838:	mov [bp + 45], bp	; 3: -119 110 45
x12841:	add bp, 43	; 3: -125 -59 43
x12844:	jmp pow	; 3: -23 65 -17

scanLongDouble$116:	; post call
x12847:	fstp qword [bp + 43]	; 3: -35 94 43
x12850:	fld qword [bp + 35]	; 3: -35 70 35
x12853:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$117:	; £temporary1585 = return_value

scanLongDouble$118:	; £temporary1586 = value * £temporary1585
x12856:	fmul	; 2: -34 -55

scanLongDouble$119:	; pop float value
x12858:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$120:	; goto 125
x12861:	jmp scanLongDouble$125	; 2: -21 20

scanLongDouble$121:	; call header integral zero 0 stack zero 0

scanLongDouble$122:	; parameter input, offset 6
x12863:	mov al, [bp + 26]	; 3: -118 70 26
x12866:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$123:	; call function noellipse-noellipse unscanChar
x12869:	mov word [bp + 27], scanLongDouble$124	; 5: -57 70 27 83 50
x12874:	mov [bp + 29], bp	; 3: -119 110 29
x12877:	add bp, 27	; 3: -125 -59 27
x12880:	jmp unscanChar	; 3: -23 11 -5

scanLongDouble$124:	; post call

scanLongDouble$125:	; if minus == 0 goto 129
x12883:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x12887:	je scanLongDouble$129	; 2: 116 8

scanLongDouble$126:	; push float value
x12889:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$127:	; £temporary1588 = -value
x12892:	fchs	; 2: -39 -32

scanLongDouble$128:	; pop float value
x12894:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$129:	; if found == 0 goto 131
x12897:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12901:	je scanLongDouble$131	; 2: 116 4

scanLongDouble$130:	; ++g_inCount
x12903:	inc word [g_inCount]	; 4: -1 6 31 41

scanLongDouble$131:	; push float value
x12907:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$132:	; return_value = value

scanLongDouble$133:	; return
x12910:	mov ax, [bp]	; 3: -117 70 0
x12913:	mov di, [bp + 4]	; 3: -117 126 4
x12916:	mov bp, [bp + 2]	; 3: -117 110 2
x12919:	jmp ax	; 2: -1 -32

scanLongDouble$134:	; function end scanLongDouble

scanPattern:	; index = 0
x12921:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x12926:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 -116 50
x12931:	mov [bp + 16], bp	; 3: -119 110 16
x12934:	add bp, 14	; 3: -125 -59 14
x12937:	jmp scanChar	; 3: -23 -84 -10

scanPattern$3:	; post call

scanPattern$4:	; £temporary1341 = return_value

scanPattern$5:	; input = £temporary1341
x12940:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1342 = int_to_int input (Signed_Char -> Signed_Int)
x12943:	mov al, [bp + 14]	; 3: -118 70 14
x12946:	and ax, 255	; 3: 37 -1 0
x12949:	cmp al, 0	; 2: 60 0
x12951:	jge scanPattern$8	; 2: 125 4
x12953:	neg al	; 2: -10 -40
x12955:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1342, offset 6
x12957:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x12960:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 -82 50
x12965:	mov [bp + 17], bp	; 3: -119 110 17
x12968:	add bp, 15	; 3: -125 -59 15
x12971:	jmp isspace	; 3: -23 70 -7

scanPattern$10:	; post call

scanPattern$11:	; £temporary1343 = return_value

scanPattern$12:	; if £temporary1343 == 0 goto 19
x12974:	cmp bx, 0	; 3: -125 -5 0
x12977:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x12979:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 -63 50
x12984:	mov [bp + 17], bp	; 3: -119 110 17
x12987:	add bp, 15	; 3: -125 -59 15
x12990:	jmp scanChar	; 3: -23 119 -10

scanPattern$15:	; post call

scanPattern$16:	; £temporary1344 = return_value

scanPattern$17:	; input = £temporary1344
x12993:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x12996:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x12998:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x13002:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x13006:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13010:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x13012:	mov ax, [bp + 8]	; 3: -117 70 8
x13015:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1349 = int_to_int input (Signed_Char -> Signed_Int)
x13018:	mov al, [bp + 14]	; 3: -118 70 14
x13021:	and ax, 255	; 3: 37 -1 0
x13024:	cmp al, 0	; 2: 60 0
x13026:	jge scanPattern$24	; 2: 125 4
x13028:	neg al	; 2: -10 -40
x13030:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1349, offset 8
x13032:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x13035:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 -7 50
x13040:	mov [bp + 17], bp	; 3: -119 110 17
x13043:	add bp, 15	; 3: -125 -59 15
x13046:	jmp strchr	; 3: -23 -72 -25

scanPattern$26:	; post call

scanPattern$27:	; £temporary1350 = return_value

scanPattern$28:	; if £temporary1350 != 0 goto 38
x13049:	cmp bx, 0	; 3: -125 -5 0
x13052:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x13054:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13058:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x13060:	mov ax, [bp + 8]	; 3: -117 70 8
x13063:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1353 = int_to_int input (Signed_Char -> Signed_Int)
x13066:	mov al, [bp + 14]	; 3: -118 70 14
x13069:	and ax, 255	; 3: 37 -1 0
x13072:	cmp al, 0	; 2: 60 0
x13074:	jge scanPattern$33	; 2: 125 4
x13076:	neg al	; 2: -10 -40
x13078:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1353, offset 8
x13080:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x13083:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 41 51
x13088:	mov [bp + 17], bp	; 3: -119 110 17
x13091:	add bp, 15	; 3: -125 -59 15
x13094:	jmp strchr	; 3: -23 -120 -25

scanPattern$35:	; post call

scanPattern$36:	; £temporary1354 = return_value

scanPattern$37:	; if £temporary1354 != 0 goto 49
x13097:	cmp bx, 0	; 3: -125 -5 0
x13100:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1360 = index
x13102:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x13105:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1362 = string + £temporary1360
x13108:	mov si, [bp + 6]	; 3: -117 118 6
x13111:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1361 -> £temporary1362 = *£temporary1362

scanPattern$42:	; £temporary1361 -> £temporary1362 = input
x13113:	mov al, [bp + 14]	; 3: -118 70 14
x13116:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x13118:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 76 51
x13123:	mov [bp + 17], bp	; 3: -119 110 17
x13126:	add bp, 15	; 3: -125 -59 15
x13129:	jmp scanChar	; 3: -23 -20 -11

scanPattern$45:	; post call

scanPattern$46:	; £temporary1363 = return_value

scanPattern$47:	; input = £temporary1363
x13132:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x13135:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1365 = string + index
x13138:	mov si, [bp + 6]	; 3: -117 118 6
x13141:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1364 -> £temporary1365 = *£temporary1365

scanPattern$51:	; £temporary1364 -> £temporary1365 = 0
x13144:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x13147:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x13149:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13153:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x13155:	mov ax, [bp + 8]	; 3: -117 70 8
x13158:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1368 = int_to_int input (Signed_Char -> Signed_Int)
x13161:	mov al, [bp + 14]	; 3: -118 70 14
x13164:	and ax, 255	; 3: 37 -1 0
x13167:	cmp al, 0	; 2: 60 0
x13169:	jge scanPattern$57	; 2: 125 4
x13171:	neg al	; 2: -10 -40
x13173:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1368, offset 8
x13175:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x13178:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 -120 51
x13183:	mov [bp + 17], bp	; 3: -119 110 17
x13186:	add bp, 15	; 3: -125 -59 15
x13189:	jmp strchr	; 3: -23 41 -25

scanPattern$59:	; post call

scanPattern$60:	; £temporary1369 = return_value

scanPattern$61:	; if £temporary1369 != 0 goto 71
x13192:	cmp bx, 0	; 3: -125 -5 0
x13195:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x13197:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13201:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x13203:	mov ax, [bp + 8]	; 3: -117 70 8
x13206:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1372 = int_to_int input (Signed_Char -> Signed_Int)
x13209:	mov al, [bp + 14]	; 3: -118 70 14
x13212:	and ax, 255	; 3: 37 -1 0
x13215:	cmp al, 0	; 2: 60 0
x13217:	jge scanPattern$66	; 2: 125 4
x13219:	neg al	; 2: -10 -40
x13221:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1372, offset 8
x13223:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x13226:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 -72 51
x13231:	mov [bp + 17], bp	; 3: -119 110 17
x13234:	add bp, 15	; 3: -125 -59 15
x13237:	jmp strchr	; 3: -23 -7 -26

scanPattern$68:	; post call

scanPattern$69:	; £temporary1373 = return_value

scanPattern$70:	; if £temporary1373 != 0 goto 77
x13240:	cmp bx, 0	; 3: -125 -5 0
x13243:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x13245:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 -53 51
x13250:	mov [bp + 17], bp	; 3: -119 110 17
x13253:	add bp, 15	; 3: -125 -59 15
x13256:	jmp scanChar	; 3: -23 109 -11

scanPattern$73:	; post call

scanPattern$74:	; £temporary1379 = return_value

scanPattern$75:	; input = £temporary1379
x13259:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x13262:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x13264:	mov ax, [bp]	; 3: -117 70 0
x13267:	mov di, [bp + 4]	; 3: -117 126 4
x13270:	mov bp, [bp + 2]	; 3: -117 110 2
x13273:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

$StackTop:
x13275:
