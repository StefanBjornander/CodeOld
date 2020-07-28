	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -39 51
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
x381:	mov ax, [bp + 10]	; 3: -117 70 10
x384:	cmp ax, [bp + 6]	; 3: 59 70 6
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
x579:	jmp mktime	; 3: -23 29 32

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
x676:	jmp scanf	; 3: -23 -67 32

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
x2177:	jmp printChar	; 3: -23 118 10

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
x2345:	jmp printChar	; 3: -23 -50 9

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
x2374:	jmp printChar	; 3: -23 -79 9

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
x2403:	jmp printChar	; 3: -23 -108 9

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
x2433:	jmp printChar	; 3: -23 118 9

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
x2682:	jmp printChar	; 3: -23 125 8

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
x2817:	jmp isdigit	; 3: -23 64 23

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
x2994:	jmp printChar	; 3: -23 69 7

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
x3313:	jmp labs	; 3: -23 7 5

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
x3351:	jmp checkWidthAndPrecision	; 3: -23 0 5

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
x3388:	jmp printLongInt	; 3: -23 39 5

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
x3449:	jmp checkWidthAndPrecision	; 3: -23 -98 4

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
x3472:	jmp printChar	; 3: -23 103 5

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
x3524:	jmp checkWidthAndPrecision	; 3: -23 83 4

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
x3553:	jmp printString	; 3: -23 -34 5

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
x3719:	jmp checkWidthAndPrecision	; 3: -23 -112 3

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
x3787:	jmp isupper	; 3: -23 -28 5

printArgument$167:	; post call

printArgument$168:	; £temporary2137 = return_value

printArgument$169:	; parameter £temporary2137, offset 20
x3790:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x3793:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -33 14
x3798:	mov [bp + 54], bp	; 3: -119 110 54
x3801:	add bp, 52	; 3: -125 -59 52
x3804:	jmp printUnsignedLong	; 3: -23 36 12

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
x3868:	jmp printLongDoublePlain	; 3: -23 -113 13

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
x3943:	jmp fabs	; 3: -23 -127 14

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
x3980:	jmp checkWidthAndPrecision	; 3: -23 -117 2

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
x4033:	jmp printLongDoublePlain	; 3: -23 -22 12

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
x4067:	jmp tolower	; 3: -23 39 14

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
x4133:	jmp isupper	; 3: -23 -118 4

printArgument$251:	; post call

printArgument$252:	; £temporary2165 = return_value

printArgument$253:	; parameter £temporary2165, offset 22
x4136:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x4139:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 57 16
x4144:	mov [bp + 46], bp	; 3: -119 110 46
x4147:	add bp, 44	; 3: -125 -59 44
x4150:	jmp printLongDoubleExpo	; 3: -23 117 14

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
x4173:	jmp fabs	; 3: -23 -101 13

printArgument$262:	; post call

printArgument$263:	; £temporary2167 = return_value

printArgument$264:	; parameter £temporary2167, offset 6
x4176:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x4179:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 97 16
x4184:	mov [bp + 46], bp	; 3: -119 110 46
x4187:	add bp, 44	; 3: -125 -59 44
x4190:	jmp log10	; 3: -23 -76 15

printArgument$266:	; post call

printArgument$267:	; £temporary2168 = return_value

printArgument$268:	; £temporary2169 = float_to_int £temporary2168 (Double -> Signed_Int)
x4193:	fistp word [$IntegralStorage#]	; 4: -33 30 -9 17
x4197:	mov ax, [$IntegralStorage#]	; 3: -95 -9 17

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
x4256:	jmp printLongDoublePlain	; 3: -23 11 12

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
x4320:	jmp isupper	; 3: -23 -49 3

printArgument$293:	; post call

printArgument$294:	; £temporary2175 = return_value

printArgument$295:	; parameter £temporary2175, offset 22
x4323:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x4326:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -12 16
x4331:	mov [bp + 48], bp	; 3: -119 110 48
x4334:	add bp, 46	; 3: -125 -59 46
x4337:	jmp printLongDoubleExpo	; 3: -23 -70 13

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
x4389:	jmp checkWidthAndPrecision	; 3: -23 -14 0

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
x4447:	jmp printUnsignedLong	; 3: -23 -95 9

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
x4515:	jmp checkWidthAndPrecision	; 2: -21 117

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
x4562:	jmp checkWidthAndPrecision	; 2: -21 70

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
x4582:	jmp printChar	; 3: -23 17 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x4585:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x4588:	mov ax, [bp]	; 3: -117 70 0
x4591:	mov di, [bp + 4]	; 3: -117 126 4
x4594:	mov bp, [bp + 2]	; 3: -117 110 2
x4597:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

$IntegralStorage#:
x4599:	db 0, 0, 0, 0	; 4: 0 0 0 0

labs:	; if value >= 0 goto 4
x4603:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4608:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2663 = -value
x4610:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x4614:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2667 = £temporary2663

labs$3:	; goto 5
x4617:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2667 = value
x4619:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2667

labs$6:	; return
x4623:	mov ax, [bp]	; 3: -117 70 0
x4626:	mov di, [bp + 4]	; 3: -117 126 4
x4629:	mov bp, [bp + 2]	; 3: -117 110 2
x4632:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x4634:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4638:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary2041 -> widthPtr = *widthPtr
x4640:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary2041 -> widthPtr != -1 goto 9
x4643:	cmp word [si], -1	; 3: -125 60 -1
x4646:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary2044 -> widthPtr = *widthPtr
x4648:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x4651:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary2046 = arg_list - 2
x4655:	mov di, [bp + 6]	; 3: -117 126 6
x4658:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary2047 = int_to_int £temporary2046 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary2048 -> £temporary2047 = *£temporary2047

checkWidthAndPrecision$8:	; £temporary2044 -> widthPtr = £temporary2048 -> £temporary2047
x4661:	mov ax, [di]	; 2: -117 5
x4663:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x4665:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4669:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary2050 -> precisionPtr = *precisionPtr
x4671:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary2050 -> precisionPtr != -1 goto 18
x4674:	cmp word [si], -1	; 3: -125 60 -1
x4677:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2053 -> precisionPtr = *precisionPtr
x4679:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x4682:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2055 = arg_list - 2
x4686:	mov di, [bp + 6]	; 3: -117 126 6
x4689:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2056 = int_to_int £temporary2055 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2057 -> £temporary2056 = *£temporary2056

checkWidthAndPrecision$17:	; £temporary2053 -> precisionPtr = £temporary2057 -> £temporary2056
x4692:	mov ax, [di]	; 2: -117 5
x4694:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x4696:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x4699:	mov ax, [bp]	; 3: -117 70 0
x4702:	mov di, [bp + 4]	; 3: -117 126 4
x4705:	mov bp, [bp + 2]	; 3: -117 110 2
x4708:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x4710:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4715:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1896 = -longValue
x4717:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4721:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1896
x4724:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x4728:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x4732:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -118 18
x4737:	mov [bp + 16], bp	; 3: -119 110 16
x4740:	add bp, 14	; 3: -125 -59 14
x4743:	nop	; 1: -112
x4744:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x4746:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x4748:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4752:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x4754:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x4758:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -92 18
x4763:	mov [bp + 16], bp	; 3: -119 110 16
x4766:	add bp, 14	; 3: -125 -59 14
x4769:	nop	; 1: -112
x4770:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x4772:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x4774:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4778:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x4780:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x4784:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -66 18
x4789:	mov [bp + 16], bp	; 3: -119 110 16
x4792:	add bp, 14	; 3: -125 -59 14
x4795:	nop	; 1: -112
x4796:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x4798:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4803:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x4805:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x4809:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -41 18
x4814:	mov [bp + 16], bp	; 3: -119 110 16
x4817:	add bp, 14	; 3: -125 -59 14
x4820:	nop	; 1: -112
x4821:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x4823:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x4825:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4829:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x4833:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -17 18
x4838:	mov [bp + 16], bp	; 3: -119 110 16
x4841:	add bp, 14	; 3: -125 -59 14
x4844:	nop	; 1: -112
x4845:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x4847:	mov ax, [bp]	; 3: -117 70 0
x4850:	mov di, [bp + 4]	; 3: -117 126 4
x4853:	mov bp, [bp + 2]	; 3: -117 110 2
x4856:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x4858:	mov ax, [g_outStatus]	; 3: -95 -115 6
x4861:	cmp ax, 0	; 3: -125 -8 0
x4864:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x4866:	cmp ax, 1	; 3: -125 -8 1
x4869:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x4871:	cmp ax, 2	; 3: -125 -8 2
x4874:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x4876:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1838 = int_to_int g_outDevice (Pointer -> Pointer)
x4878:	mov ax, [g_outDevice]	; 3: -95 -113 6

printChar$6:	; stream = £temporary1838
x4881:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x4884:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1841 -> stream = *stream, offset 2
x4886:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1841 -> stream
x4889:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x4892:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1844 = &c
x4895:	mov dx, bp	; 2: -119 -22
x4897:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1844

printChar$13:	; interrupt 33
x4900:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x4902:	inc word [g_outChars]	; 4: -1 6 -31 11

printChar$15:	; goto 25
x4906:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1846 = int_to_int g_outDevice (Pointer -> Pointer)
x4908:	mov ax, [g_outDevice]	; 3: -95 -113 6

printChar$17:	; outString = £temporary1846
x4911:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1847 = g_outChars
x4914:	mov ax, [g_outChars]	; 3: -95 -31 11

printChar$19:	; ++g_outChars
x4917:	inc word [g_outChars]	; 4: -1 6 -31 11

printChar$20:	; £temporary1849 = outString + £temporary1847
x4921:	mov si, [bp + 9]	; 3: -117 118 9
x4924:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1848 -> £temporary1849 = *£temporary1849

printChar$22:	; £temporary1848 -> £temporary1849 = c
x4926:	mov al, [bp + 6]	; 3: -118 70 6
x4929:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x4931:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x4933:	inc word [g_outChars]	; 4: -1 6 -31 11

printChar$25:	; return
x4937:	mov ax, [bp]	; 3: -117 70 0
x4940:	mov di, [bp + 4]	; 3: -117 126 4
x4943:	mov bp, [bp + 2]	; 3: -117 110 2
x4946:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x4948:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4953:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1886 = longValue % 10
x4955:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4959:	xor edx, edx	; 3: 102 49 -46
x4962:	idiv dword [int4$10#]	; 5: 102 -9 62 -66 19

printLongIntRec$2:	; £temporary1887 = int_to_int £temporary1886 (Signed_Long_Int -> Signed_Int)
x4967:	cmp edx, 0	; 4: 102 -125 -6 0
x4971:	jge printLongIntRec$3	; 2: 125 5
x4973:	neg edx	; 3: 102 -9 -38
x4976:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1887
x4978:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1888 = longValue / 10
x4981:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4985:	xor edx, edx	; 3: 102 49 -46
x4988:	idiv dword [int4$10#]	; 5: 102 -9 62 -66 19

printLongIntRec$6:	; parameter £temporary1888, offset 6
x4993:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x4997:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -109 19
x5002:	mov [bp + 14], bp	; 3: -119 110 14
x5005:	add bp, 12	; 3: -125 -59 12
x5008:	nop	; 1: -112
x5009:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1890 = digit + 48
x5011:	mov ax, [bp + 10]	; 3: -117 70 10
x5014:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1891 = int_to_int £temporary1890 (Signed_Int -> Signed_Char)
x5017:	cmp ax, 0	; 3: -125 -8 0
x5020:	jge printLongIntRec$12	; 2: 125 4
x5022:	neg ax	; 2: -9 -40
x5024:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1891, offset 6
x5026:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x5029:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -77 19
x5034:	mov [bp + 14], bp	; 3: -119 110 14
x5037:	add bp, 12	; 3: -125 -59 12
x5040:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x5043:	mov ax, [bp]	; 3: -117 70 0
x5046:	mov di, [bp + 4]	; 3: -117 126 4
x5049:	mov bp, [bp + 2]	; 3: -117 110 2
x5052:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x5054:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x5058:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x5062:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x5064:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5068:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x5070:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1855 = s + index
x5075:	mov si, [bp + 6]	; 3: -117 118 6
x5078:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1854 -> £temporary1855 = *£temporary1855

printString$5:	; if £temporary1854 -> £temporary1855 == 0 goto 53
x5081:	cmp byte [si], 0	; 3: -128 60 0
x5084:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1859 = s + index
x5088:	mov si, [bp + 6]	; 3: -117 118 6
x5091:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1858 -> £temporary1859 = *£temporary1859

printString$9:	; parameter £temporary1858 -> £temporary1859, offset 6
x5094:	mov al, [si]	; 2: -118 4
x5096:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x5099:	mov word [bp + 12], printString$11	; 5: -57 70 12 -7 19
x5104:	mov [bp + 14], bp	; 3: -119 110 14
x5107:	add bp, 12	; 3: -125 -59 12
x5110:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x5113:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x5116:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x5118:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1861 = precision
x5123:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x5126:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1861 <= 0 goto 53
x5129:	cmp ax, 0	; 3: -125 -8 0
x5132:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1864 = s + index
x5136:	mov si, [bp + 6]	; 3: -117 118 6
x5139:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1863 -> £temporary1864 = *£temporary1864

printString$20:	; if £temporary1863 -> £temporary1864 == 0 goto 53
x5142:	cmp byte [si], 0	; 3: -128 60 0
x5145:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1869 = s + index
x5149:	mov si, [bp + 6]	; 3: -117 118 6
x5152:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1868 -> £temporary1869 = *£temporary1869

printString$24:	; parameter £temporary1868 -> £temporary1869, offset 6
x5155:	mov al, [si]	; 2: -118 4
x5157:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x5160:	mov word [bp + 12], printString$26	; 5: -57 70 12 54 20
x5165:	mov [bp + 14], bp	; 3: -119 110 14
x5168:	add bp, 12	; 3: -125 -59 12
x5171:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x5174:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x5177:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x5179:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x5183:	mov word [bp + 10], printString$32	; 5: -57 70 10 77 20
x5188:	mov [bp + 12], bp	; 3: -119 110 12
x5191:	add bp, 10	; 3: -125 -59 10
x5194:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x5197:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x5201:	mov word [bp + 10], printString$36	; 5: -57 70 10 95 20
x5206:	mov [bp + 12], bp	; 3: -119 110 12
x5209:	add bp, 10	; 3: -125 -59 10
x5212:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x5215:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x5219:	mov word [bp + 10], printString$40	; 5: -57 70 10 113 20
x5224:	mov [bp + 12], bp	; 3: -119 110 12
x5227:	add bp, 10	; 3: -125 -59 10
x5230:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x5233:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x5237:	mov word [bp + 10], printString$44	; 5: -57 70 10 -125 20
x5242:	mov [bp + 12], bp	; 3: -119 110 12
x5245:	add bp, 10	; 3: -125 -59 10
x5248:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x5251:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x5255:	mov word [bp + 10], printString$48	; 5: -57 70 10 -107 20
x5260:	mov [bp + 12], bp	; 3: -119 110 12
x5263:	add bp, 10	; 3: -125 -59 10
x5266:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x5269:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x5273:	mov word [bp + 10], printString$52	; 5: -57 70 10 -89 20
x5278:	mov [bp + 12], bp	; 3: -119 110 12
x5281:	add bp, 10	; 3: -125 -59 10
x5284:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x5287:	mov ax, [bp]	; 3: -117 70 0
x5290:	mov di, [bp + 4]	; 3: -117 126 4
x5293:	mov bp, [bp + 2]	; 3: -117 110 2
x5296:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x5298:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -64 20
x5303:	mov [bp + 10], bp	; 3: -119 110 10
x5306:	add bp, 8	; 3: -125 -59 8
x5309:	nop	; 1: -112
x5310:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary329 = return_value

isupper$4:	; localeConvPtr = £temporary329
x5312:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x5315:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5319:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary331 -> localeConvPtr = *localeConvPtr, offset 14
x5321:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary331 -> localeConvPtr, offset 6
x5324:	mov ax, [si + 14]	; 3: -117 68 14
x5327:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x5330:	mov ax, [bp + 6]	; 3: -117 70 6
x5333:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x5336:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -26 20
x5341:	mov [bp + 12], bp	; 3: -119 110 12
x5344:	add bp, 10	; 3: -125 -59 10
x5347:	jmp strchr	; 3: -23 -51 5

isupper$11:	; post call

isupper$12:	; £temporary332 = return_value

isupper$13:	; if £temporary332 == 0 goto 16
x5350:	cmp bx, 0	; 3: -125 -5 0
x5353:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary334 = 1
x5355:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x5358:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary334 = 0
x5360:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary334

isupper$18:	; return
x5363:	mov ax, [bp]	; 3: -117 70 0
x5366:	mov di, [bp + 4]	; 3: -117 126 4
x5369:	mov bp, [bp + 2]	; 3: -117 110 2
x5372:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x5374:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x5378:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x5380:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x5384:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary338 = 1
x5386:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x5389:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary338 = 0
x5391:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary338

isupper$25:	; return
x5394:	mov ax, [bp]	; 3: -117 70 0
x5397:	mov di, [bp + 4]	; 3: -117 126 4
x5400:	mov bp, [bp + 2]	; 3: -117 110 2
x5403:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x5405:	cmp word [@22$g_currStructPtr], 0	; 5: -125 62 59 21 0
x5410:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary478 -> g_currStructPtr = *g_currStructPtr, offset 2
x5412:	mov si, [@22$g_currStructPtr]	; 4: -117 54 59 21

localeconv$2:	; £temporary482 = £temporary478 -> g_currStructPtr
x5416:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x5419:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary482 = 0
x5421:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary482

localeconv$6:	; return
x5424:	mov ax, [bp]	; 3: -117 70 0
x5427:	mov di, [bp + 4]	; 3: -117 126 4
x5430:	mov bp, [bp + 2]	; 3: -117 110 2
x5433:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@22$g_currStructPtr:
x5435:	dw @20$sArray	; 2: 61 21

@20$sArray:
x5437:	dw string_# ; 2: 77 21
x5439:	dw @19$sw_EN_utf8	; 2: 78 21
x5441:	dw string_C# ; 2: 59 24
x5443:	dw @13$en_US_utf8	; 2: 61 24
x5445:	dw string_US# ; 2: -83 26
x5447:	dw @13$en_US_utf8	; 2: 61 24
x5449:	dw string_SE# ; 2: -80 26
x5451:	dw @19$sw_EN_utf8	; 2: 78 21

string_#:
x5453:	db 0	; 1: 0

@19$sw_EN_utf8:
x5454:	dw 1	; 2: 1 0
x5456:	dw 2	; 2: 2 0
x5458:	dw @14$swShortDayList ; 2: 96 21
x5460:	dw @15$swLongDayList ; 2: -118 21
x5462:	dw @11$enShortMonthList ; 2: -54 21
x5464:	dw @17$swLongMonthList ; 2: 18 22
x5466:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -128 22
x5468:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -101 22
x5470:	dw @18$swMessageList ; 2: -74 22

@14$swShortDayList:
x5472:	dw string_Son# ; 2: 110 21
x5474:	dw string_Man# ; 2: 114 21
x5476:	dw string_Tis# ; 2: 118 21
x5478:	dw string_Ons# ; 2: 122 21
x5480:	dw string_Tor# ; 2: 126 21
x5482:	dw string_Fre# ; 2: -126 21
x5484:	dw string_Lor# ; 2: -122 21

string_Son#:
x5486:	db "Son", 0	; 4: 83 111 110 0

string_Man#:
x5490:	db "Man", 0	; 4: 77 97 110 0

string_Tis#:
x5494:	db "Tis", 0	; 4: 84 105 115 0

string_Ons#:
x5498:	db "Ons", 0	; 4: 79 110 115 0

string_Tor#:
x5502:	db "Tor", 0	; 4: 84 111 114 0

string_Fre#:
x5506:	db "Fre", 0	; 4: 70 114 101 0

string_Lor#:
x5510:	db "Lor", 0	; 4: 76 111 114 0

@15$swLongDayList:
x5514:	dw string_Sondag# ; 2: -104 21
x5516:	dw string_Mandag# ; 2: -97 21
x5518:	dw string_Tisdag# ; 2: -90 21
x5520:	dw string_Onsdag# ; 2: -83 21
x5522:	dw string_Torsdag# ; 2: -76 21
x5524:	dw string_Fredag# ; 2: -68 21
x5526:	dw string_Lordag# ; 2: -61 21

string_Sondag#:
x5528:	db "Sondag", 0	; 7: 83 111 110 100 97 103 0

string_Mandag#:
x5535:	db "Mandag", 0	; 7: 77 97 110 100 97 103 0

string_Tisdag#:
x5542:	db "Tisdag", 0	; 7: 84 105 115 100 97 103 0

string_Onsdag#:
x5549:	db "Onsdag", 0	; 7: 79 110 115 100 97 103 0

string_Torsdag#:
x5556:	db "Torsdag", 0	; 8: 84 111 114 115 100 97 103 0

string_Fredag#:
x5564:	db "Fredag", 0	; 7: 70 114 101 100 97 103 0

string_Lordag#:
x5571:	db "Lordag", 0	; 7: 76 111 114 100 97 103 0

@11$enShortMonthList:
x5578:	dw string_Jan# ; 2: -30 21
x5580:	dw string_Feb# ; 2: -26 21
x5582:	dw string_Mar# ; 2: -22 21
x5584:	dw string_Apr# ; 2: -18 21
x5586:	dw string_May# ; 2: -14 21
x5588:	dw string_Jun# ; 2: -10 21
x5590:	dw string_Jul# ; 2: -6 21
x5592:	dw string_Aug# ; 2: -2 21
x5594:	dw string_Sep# ; 2: 2 22
x5596:	dw string_Oct# ; 2: 6 22
x5598:	dw string_Nov# ; 2: 10 22
x5600:	dw string_Dec# ; 2: 14 22

string_Jan#:
x5602:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5606:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5610:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5614:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5618:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5622:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5626:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5630:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5634:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5638:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5642:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5646:	db "Dec", 0	; 4: 68 101 99 0

@17$swLongMonthList:
x5650:	dw string_Januari# ; 2: 42 22
x5652:	dw string_Februari# ; 2: 50 22
x5654:	dw string_Mars# ; 2: 59 22
x5656:	dw string_April# ; 2: 64 22
x5658:	dw string_Maj# ; 2: 70 22
x5660:	dw string_Juni# ; 2: 74 22
x5662:	dw string_Juli# ; 2: 79 22
x5664:	dw string_Augusit# ; 2: 84 22
x5666:	dw string_September# ; 2: 92 22
x5668:	dw string_Oktober# ; 2: 102 22
x5670:	dw string_November# ; 2: 110 22
x5672:	dw string_December# ; 2: 119 22

string_Januari#:
x5674:	db "Januari", 0	; 8: 74 97 110 117 97 114 105 0

string_Februari#:
x5682:	db "Februari", 0	; 9: 70 101 98 114 117 97 114 105 0

string_Mars#:
x5691:	db "Mars", 0	; 5: 77 97 114 115 0

string_April#:
x5696:	db "April", 0	; 6: 65 112 114 105 108 0

string_Maj#:
x5702:	db "Maj", 0	; 4: 77 97 106 0

string_Juni#:
x5706:	db "Juni", 0	; 5: 74 117 110 105 0

string_Juli#:
x5711:	db "Juli", 0	; 5: 74 117 108 105 0

string_Augusit#:
x5716:	db "Augusit", 0	; 8: 65 117 103 117 115 105 116 0

string_September#:
x5724:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_Oktober#:
x5734:	db "Oktober", 0	; 8: 79 107 116 111 98 101 114 0

string_November#:
x5742:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5751:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5760:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5787:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

@18$swMessageList:
x5814:	dw string_inga20fel# ; 2: -36 22
x5816:	dw string_felaktigt20functionsnummer# ; 2: -27 22
x5818:	dw string_hittar20ej20filen# ; 2: -1 22
x5820:	dw string_hittar20ej20sokvagen# ; 2: 15 23
x5822:	dw string_inget20handtag20tillgangligt# ; 2: 34 23
x5824:	dw string_atkomst20nekad# ; 2: 61 23
x5826:	dw string_utanfor20doman# ; 2: 75 23
x5828:	dw string_utanfor20range# ; 2: 89 23
x5830:	dw string_felaktig20multibyte2Dsekvens# ; 2: 103 23
x5832:	dw string_fel20vid20oppning# ; 2: -126 23
x5834:	dw string_fel20vid20flushing# ; 2: -110 23
x5836:	dw string_fel20vid20stangning# ; 2: -93 23
x5838:	dw string_fel20oppningslage# ; 2: -75 23
x5840:	dw string_fel20vid20skrivning# ; 2: -58 23
x5842:	dw string_fel20vid20lasning# ; 2: -40 23
x5844:	dw string_fel20vid20sokning# ; 2: -24 23
x5846:	dw string_fel20vid20telling# ; 2: -8 23
x5848:	dw string_fel20vid20borttagning20av20fil# ; 2: 8 24
x5850:	dw string_fel20vid20namnbyte20av20fil# ; 2: 35 24

string_inga20fel#:
x5852:	db "inga fel", 0	; 9: 105 110 103 97 32 102 101 108 0

string_felaktigt20functionsnummer#:
x5861:	db "felaktigt functionsnummer", 0	; 26: 102 101 108 97 107 116 105 103 116 32 102 117 110 99 116 105 111 110 115 110 117 109 109 101 114 0

string_hittar20ej20filen#:
x5887:	db "hittar ej filen", 0	; 16: 104 105 116 116 97 114 32 101 106 32 102 105 108 101 110 0

string_hittar20ej20sokvagen#:
x5903:	db "hittar ej sokvagen", 0	; 19: 104 105 116 116 97 114 32 101 106 32 115 111 107 118 97 103 101 110 0

string_inget20handtag20tillgangligt#:
x5922:	db "inget handtag tillgangligt", 0	; 27: 105 110 103 101 116 32 104 97 110 100 116 97 103 32 116 105 108 108 103 97 110 103 108 105 103 116 0

string_atkomst20nekad#:
x5949:	db "atkomst nekad", 0	; 14: 97 116 107 111 109 115 116 32 110 101 107 97 100 0

string_utanfor20doman#:
x5963:	db "utanfor doman", 0	; 14: 117 116 97 110 102 111 114 32 100 111 109 97 110 0

string_utanfor20range#:
x5977:	db "utanfor range", 0	; 14: 117 116 97 110 102 111 114 32 114 97 110 103 101 0

string_felaktig20multibyte2Dsekvens#:
x5991:	db "felaktig multibyte-sekvens", 0	; 27: 102 101 108 97 107 116 105 103 32 109 117 108 116 105 98 121 116 101 45 115 101 107 118 101 110 115 0

string_fel20vid20oppning#:
x6018:	db "fel vid oppning", 0	; 16: 102 101 108 32 118 105 100 32 111 112 112 110 105 110 103 0

string_fel20vid20flushing#:
x6034:	db "fel vid flushing", 0	; 17: 102 101 108 32 118 105 100 32 102 108 117 115 104 105 110 103 0

string_fel20vid20stangning#:
x6051:	db "fel vid stangning", 0	; 18: 102 101 108 32 118 105 100 32 115 116 97 110 103 110 105 110 103 0

string_fel20oppningslage#:
x6069:	db "fel oppningslage", 0	; 17: 102 101 108 32 111 112 112 110 105 110 103 115 108 97 103 101 0

string_fel20vid20skrivning#:
x6086:	db "fel vid skrivning", 0	; 18: 102 101 108 32 118 105 100 32 115 107 114 105 118 110 105 110 103 0

string_fel20vid20lasning#:
x6104:	db "fel vid lasning", 0	; 16: 102 101 108 32 118 105 100 32 108 97 115 110 105 110 103 0

string_fel20vid20sokning#:
x6120:	db "fel vid sokning", 0	; 16: 102 101 108 32 118 105 100 32 115 111 107 110 105 110 103 0

string_fel20vid20telling#:
x6136:	db "fel vid telling", 0	; 16: 102 101 108 32 118 105 100 32 116 101 108 108 105 110 103 0

string_fel20vid20borttagning20av20fil#:
x6152:	db "fel vid borttagning av fil", 0	; 27: 102 101 108 32 118 105 100 32 98 111 114 116 116 97 103 110 105 110 103 32 97 118 32 102 105 108 0

string_fel20vid20namnbyte20av20fil#:
x6179:	db "fel vid namnbyte av fil", 0	; 24: 102 101 108 32 118 105 100 32 110 97 109 110 98 121 116 101 32 97 118 32 102 105 108 0

string_C#:
x6203:	db "C", 0	; 2: 67 0

@13$en_US_utf8:
x6205:	dw -5	; 2: -5 -1
x6207:	dw -4	; 2: -4 -1
x6209:	dw @9$enShortDayList ; 2: 79 24
x6211:	dw @10$enLongDayList ; 2: 121 24
x6213:	dw @11$enShortMonthList ; 2: -54 21
x6215:	dw @12$enLongMonthList ; 2: -64 24
x6217:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -128 22
x6219:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -101 22
x6221:	dw enMessageList ; 2: 8 25

@9$enShortDayList:
x6223:	dw string_Sun# ; 2: 93 24
x6225:	dw string_Mon# ; 2: 97 24
x6227:	dw string_Tue# ; 2: 101 24
x6229:	dw string_Wed# ; 2: 105 24
x6231:	dw string_Thu# ; 2: 109 24
x6233:	dw string_Fri# ; 2: 113 24
x6235:	dw string_Sat# ; 2: 117 24

string_Sun#:
x6237:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x6241:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x6245:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6249:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6253:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6257:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6261:	db "Sat", 0	; 4: 83 97 116 0

@10$enLongDayList:
x6265:	dw string_Sunday# ; 2: -121 24
x6267:	dw string_Monday# ; 2: -114 24
x6269:	dw string_Tuesday# ; 2: -107 24
x6271:	dw string_Wednesday# ; 2: -99 24
x6273:	dw string_Thursday# ; 2: -89 24
x6275:	dw string_Friday# ; 2: -80 24
x6277:	dw string_Saturday# ; 2: -73 24

string_Sunday#:
x6279:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6286:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6293:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6301:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6311:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6320:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x6327:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@12$enLongMonthList:
x6336:	dw string_January# ; 2: -40 24
x6338:	dw string_February# ; 2: -32 24
x6340:	dw string_March# ; 2: -23 24
x6342:	dw string_April# ; 2: 64 22
x6344:	dw string_May# ; 2: -14 21
x6346:	dw string_June# ; 2: -17 24
x6348:	dw string_July# ; 2: -12 24
x6350:	dw string_August# ; 2: -7 24
x6352:	dw string_September# ; 2: 92 22
x6354:	dw string_October# ; 2: 0 25
x6356:	dw string_November# ; 2: 110 22
x6358:	dw string_December# ; 2: 119 22

string_January#:
x6360:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x6368:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x6377:	db "March", 0	; 6: 77 97 114 99 104 0

string_June#:
x6383:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x6388:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x6393:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_October#:
x6400:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

enMessageList:
x6408:	dw string_no20error# ; 2: 48 25
x6410:	dw string_function20number20invalid# ; 2: 57 25
x6412:	dw string_file20not20found# ; 2: 81 25
x6414:	dw string_path20not20found# ; 2: 96 25
x6416:	dw string_no20handle20available# ; 2: 111 25
x6418:	dw string_access20denied# ; 2: -125 25
x6420:	dw string_out20of20domain# ; 2: -111 25
x6422:	dw string_out20of20range# ; 2: -97 25
x6424:	dw string_invalid20multibyte20sequence# ; 2: -84 25
x6426:	dw string_error20while20opening# ; 2: -57 25
x6428:	dw string_error20while20flushing# ; 2: -37 25
x6430:	dw string_error20while20closing# ; 2: -16 25
x6432:	dw string_open20mode20invalid# ; 2: 4 26
x6434:	dw string_error20while20writing# ; 2: 22 26
x6436:	dw string_error20while20reading# ; 2: 42 26
x6438:	dw string_error20while20seeking# ; 2: 62 26
x6440:	dw string_error20while20telling# ; 2: 82 26
x6442:	dw string_error20while20sizing# ; 2: 102 26
x6444:	dw string_error20while20removing20file# ; 2: 121 26
x6446:	dw string_error20while20renaming20file# ; 2: -109 26

string_no20error#:
x6448:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x6457:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x6481:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x6496:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x6511:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x6531:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x6545:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x6559:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x6572:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x6599:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x6619:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x6640:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x6660:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x6678:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x6698:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x6718:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x6738:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x6758:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x6777:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x6803:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_US#:
x6829:	db "US", 0	; 3: 85 83 0

string_SE#:
x6832:	db "SE", 0	; 3: 83 69 0

strchr:	; £temporary3288 = int_to_int i (Signed_Int -> Signed_Char)
x6835:	mov ax, [bp + 8]	; 3: -117 70 8
x6838:	cmp ax, 0	; 3: -125 -8 0
x6841:	jge strchr$1	; 2: 125 4
x6843:	neg ax	; 2: -9 -40
x6845:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3288
x6847:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x6850:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3290 = text + index
x6855:	mov si, [bp + 6]	; 3: -117 118 6
x6858:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3289 -> £temporary3290 = *£temporary3290

strchr$5:	; if £temporary3289 -> £temporary3290 == 0 goto 16
x6861:	cmp byte [si], 0	; 3: -128 60 0
x6864:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3294 = text + index
x6866:	mov si, [bp + 6]	; 3: -117 118 6
x6869:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3293 -> £temporary3294 = *£temporary3294

strchr$8:	; if £temporary3293 -> £temporary3294 != c goto 14
x6872:	mov al, [si]	; 2: -118 4
x6874:	cmp al, [bp + 12]	; 3: 58 70 12
x6877:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3297 = text + index
x6879:	mov bx, [bp + 6]	; 3: -117 94 6
x6882:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3296 -> £temporary3297 = *£temporary3297

strchr$11:	; £temporary3298 = &£temporary3296 -> £temporary3297

strchr$12:	; return_value = £temporary3298

strchr$13:	; return
x6885:	mov ax, [bp]	; 3: -117 70 0
x6888:	mov di, [bp + 4]	; 3: -117 126 4
x6891:	mov bp, [bp + 2]	; 3: -117 110 2
x6894:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x6896:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x6899:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x6901:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x6904:	mov ax, [bp]	; 3: -117 70 0
x6907:	mov di, [bp + 4]	; 3: -117 126 4
x6910:	mov bp, [bp + 2]	; 3: -117 110 2
x6913:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x6915:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6919:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x6921:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x6925:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 27 27
x6930:	mov [bp + 24], bp	; 3: -119 110 24
x6933:	add bp, 22	; 3: -125 -59 22
x6936:	jmp printChar	; 3: -23 -33 -9

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x6939:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6943:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x6945:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x6949:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 51 27
x6954:	mov [bp + 24], bp	; 3: -119 110 24
x6957:	add bp, 22	; 3: -125 -59 22
x6960:	jmp printChar	; 3: -23 -57 -9

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x6963:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x6967:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x6969:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x6974:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x6976:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x6980:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 82 27
x6985:	mov [bp + 24], bp	; 3: -119 110 24
x6988:	add bp, 22	; 3: -125 -59 22
x6991:	jmp printChar	; 3: -23 -88 -9

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x6994:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x6999:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x7001:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x7005:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 107 27
x7010:	mov [bp + 24], bp	; 3: -119 110 24
x7013:	add bp, 22	; 3: -125 -59 22
x7016:	jmp printChar	; 3: -23 -113 -9

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x7019:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x7023:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1945 = 88
x7025:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x7027:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1945 = 120
x7029:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1945, offset 6
x7031:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x7034:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -120 27
x7039:	mov [bp + 24], bp	; 3: -119 110 24
x7042:	add bp, 22	; 3: -125 -59 22
x7045:	jmp printChar	; 3: -23 114 -9

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x7048:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7053:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x7055:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x7059:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -95 27
x7064:	mov [bp + 24], bp	; 3: -119 110 24
x7067:	add bp, 22	; 3: -125 -59 22
x7070:	jmp printChar	; 3: -23 89 -9

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x7073:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x7075:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7079:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x7083:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x7087:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x7091:	mov ax, [bp + 20]	; 3: -117 70 20
x7094:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x7097:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -57 27
x7102:	mov [bp + 24], bp	; 3: -119 110 24
x7105:	add bp, 22	; 3: -125 -59 22
x7108:	nop	; 1: -112
x7109:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x7111:	mov ax, [bp]	; 3: -117 70 0
x7114:	mov di, [bp + 4]	; 3: -117 126 4
x7117:	mov bp, [bp + 2]	; 3: -117 110 2
x7120:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x7122:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7127:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1921 = unsignedValue % base
x7129:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7133:	xor edx, edx	; 3: 102 49 -46
x7136:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1922 = int_to_int £temporary1921 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1922
x7140:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1923 = unsignedValue / base
x7143:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7147:	xor edx, edx	; 3: 102 49 -46
x7150:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1923, offset 6
x7154:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x7158:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x7162:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x7166:	mov ax, [bp + 14]	; 3: -117 70 14
x7169:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x7172:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 18 28
x7177:	mov [bp + 20], bp	; 3: -119 110 20
x7180:	add bp, 18	; 3: -125 -59 18
x7183:	nop	; 1: -112
x7184:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x7186:	mov ax, [bp + 16]	; 3: -117 70 16
x7189:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x7192:	mov ax, [bp + 14]	; 3: -117 70 14
x7195:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x7198:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 44 28
x7203:	mov [bp + 20], bp	; 3: -119 110 20
x7206:	add bp, 18	; 3: -125 -59 18
x7209:	nop	; 1: -112
x7210:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1925 = return_value

printUnsignedLongRec$17:	; c = £temporary1925
x7212:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x7215:	mov al, [bp + 18]	; 3: -118 70 18
x7218:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x7221:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 67 28
x7226:	mov [bp + 21], bp	; 3: -119 110 21
x7229:	add bp, 19	; 3: -125 -59 19
x7232:	jmp printChar	; 3: -23 -73 -10

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x7235:	mov ax, [bp]	; 3: -117 70 0
x7238:	mov di, [bp + 4]	; 3: -117 126 4
x7241:	mov bp, [bp + 2]	; 3: -117 110 2
x7244:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x7246:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x7250:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1911 = digit + 48
x7252:	mov bx, [bp + 6]	; 3: -117 94 6
x7255:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1912 = int_to_int £temporary1911 (Signed_Int -> Signed_Char)
x7258:	cmp bx, 0	; 3: -125 -5 0
x7261:	jge digitToChar$3	; 2: 125 4
x7263:	neg bx	; 2: -9 -37
x7265:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1912

digitToChar$4:	; return
x7267:	mov ax, [bp]	; 3: -117 70 0
x7270:	mov di, [bp + 4]	; 3: -117 126 4
x7273:	mov bp, [bp + 2]	; 3: -117 110 2
x7276:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x7278:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7282:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1913 = digit - 10
x7284:	mov bx, [bp + 6]	; 3: -117 94 6
x7287:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1914 = £temporary1913 + 65
x7290:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1915 = int_to_int £temporary1914 (Signed_Int -> Signed_Char)
x7293:	cmp bx, 0	; 3: -125 -5 0
x7296:	jge digitToChar$9	; 2: 125 4
x7298:	neg bx	; 2: -9 -37
x7300:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1915

digitToChar$10:	; return
x7302:	mov ax, [bp]	; 3: -117 70 0
x7305:	mov di, [bp + 4]	; 3: -117 126 4
x7308:	mov bp, [bp + 2]	; 3: -117 110 2
x7311:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1916 = digit - 10
x7313:	mov bx, [bp + 6]	; 3: -117 94 6
x7316:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1917 = £temporary1916 + 97
x7319:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1918 = int_to_int £temporary1917 (Signed_Int -> Signed_Char)
x7322:	cmp bx, 0	; 3: -125 -5 0
x7325:	jge digitToChar$14	; 2: 125 4
x7327:	neg bx	; 2: -9 -37
x7329:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1918

digitToChar$15:	; return
x7331:	mov ax, [bp]	; 3: -117 70 0
x7334:	mov di, [bp + 4]	; 3: -117 126 4
x7337:	mov bp, [bp + 2]	; 3: -117 110 2
x7340:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x7342:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x7345:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x7347:	fcompp	; 2: -34 -39
x7349:	fstsw ax	; 3: -101 -33 -32
x7352:	sahf	; 1: -98
x7353:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x7355:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x7359:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -51 28
x7364:	mov [bp + 24], bp	; 3: -119 110 24
x7367:	add bp, 22	; 3: -125 -59 22
x7370:	jmp printChar	; 3: -23 45 -10

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x7373:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1981 = -longDoubleValue
x7376:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x7378:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x7381:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x7386:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x7391:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1982 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7394:	fistp dword [$IntegralStorage#]	; 4: -37 30 -9 17
x7398:	mov eax, [$IntegralStorage#]	; 4: 102 -95 -9 17

printLongDoublePlain$14:	; longValue = £temporary1982
x7402:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x7406:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7410:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x7414:	mov ax, [bp + 14]	; 3: -117 70 14
x7417:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x7420:	mov ax, [bp + 16]	; 3: -117 70 16
x7423:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x7426:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 16 29
x7431:	mov [bp + 28], bp	; 3: -119 110 28
x7434:	add bp, 26	; 3: -125 -59 26
x7437:	jmp printLongInt	; 3: -23 86 -11

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x7440:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1984 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x7443:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1985 = longDoubleValue - £temporary1984
x7446:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x7448:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x7451:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x7454:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x7457:	mov ax, [bp + 18]	; 3: -117 70 18
x7460:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x7463:	mov ax, [bp + 20]	; 3: -117 70 20
x7466:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x7469:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 59 29
x7474:	mov [bp + 28], bp	; 3: -119 110 28
x7477:	add bp, 26	; 3: -125 -59 26
x7480:	nop	; 1: -112
x7481:	jmp printLongDoubleFraction	; 2: -21 11

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x7483:	mov ax, [bp]	; 3: -117 70 0
x7486:	mov di, [bp + 4]	; 3: -117 126 4
x7489:	mov bp, [bp + 2]	; 3: -117 110 2
x7492:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

printLongDoubleFraction:	; push float longDoubleValue
x7494:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x7497:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1960 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7500:	fistp dword [$IntegralStorage#]	; 4: -37 30 -9 17
x7504:	mov eax, [$IntegralStorage#]	; 4: 102 -95 -9 17

printLongDoubleFraction$3:	; £temporary1961 = int_to_float £temporary1960 (Signed_Long_Int -> Long_Double)
x7508:	mov [$IntegralStorage#], eax	; 4: 102 -93 -9 17
x7512:	fild dword [$IntegralStorage#]	; 4: -37 6 -9 17

printLongDoubleFraction$4:	; £temporary1962 = longDoubleValue - £temporary1961
x7516:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x7518:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x7521:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7525:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 9
x7527:	mov word [bp + 16], 9	; 5: -57 70 16 9 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x7532:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7536:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x7538:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7542:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x7544:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x7548:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -118 29
x7553:	mov [bp + 20], bp	; 3: -119 110 20
x7556:	add bp, 18	; 3: -125 -59 18
x7559:	jmp printChar	; 3: -23 112 -11

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1968 = precision
x7562:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x7565:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1968 <= 0 goto 34
x7568:	cmp ax, 0	; 3: -125 -8 0
x7571:	jle printLongDoubleFraction$34	; 2: 126 67

printLongDoubleFraction$17:	; push float 10.0
x7573:	fld qword [float8$10.0#]	; 4: -35 6 -29 29

printLongDoubleFraction$18:	; push float longDoubleValue
x7577:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1970 = 10.0 * longDoubleValue
x7580:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; top float longDoubleValue10
x7582:	fst qword [bp + 18]	; 3: -35 86 18

printLongDoubleFraction$21:	; £temporary1971 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x7585:	fistp word [$IntegralStorage#]	; 4: -33 30 -9 17
x7589:	mov ax, [$IntegralStorage#]	; 3: -95 -9 17

printLongDoubleFraction$22:	; digitValue = £temporary1971
x7592:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$23:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$24:	; £temporary1972 = digitValue + 48
x7595:	mov ax, [bp + 26]	; 3: -117 70 26
x7598:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$25:	; £temporary1973 = int_to_int £temporary1972 (Signed_Int -> Signed_Char)
x7601:	cmp ax, 0	; 3: -125 -8 0
x7604:	jge printLongDoubleFraction$26	; 2: 125 4
x7606:	neg ax	; 2: -9 -40
x7608:	neg al	; 2: -10 -40

printLongDoubleFraction$26:	; parameter £temporary1973, offset 6
x7610:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$27:	; call function noellipse-noellipse printChar
x7613:	mov word [bp + 28], printLongDoubleFraction$28	; 5: -57 70 28 -53 29
x7618:	mov [bp + 30], bp	; 3: -119 110 30
x7621:	add bp, 28	; 3: -125 -59 28
x7624:	jmp printChar	; 3: -23 47 -11

printLongDoubleFraction$28:	; post call

printLongDoubleFraction$29:	; push float longDoubleValue10
x7627:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$30:	; £temporary1975 = int_to_float digitValue (Signed_Int -> Long_Double)
x7630:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$31:	; £temporary1976 = longDoubleValue10 - £temporary1975
x7633:	fsub	; 2: -34 -23

printLongDoubleFraction$32:	; pop float longDoubleValue
x7635:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$33:	; goto 14
x7638:	jmp printLongDoubleFraction$14	; 2: -21 -78

printLongDoubleFraction$34:	; return
x7640:	mov ax, [bp]	; 3: -117 70 0
x7643:	mov di, [bp + 4]	; 3: -117 126 4
x7646:	mov bp, [bp + 2]	; 3: -117 110 2
x7649:	jmp ax	; 2: -1 -32

printLongDoubleFraction$35:	; function end printLongDoubleFraction

float8$10.0#:
x7651:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x7659:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x7662:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x7664:	fcompp	; 2: -34 -39
x7666:	fstsw ax	; 3: -101 -33 -32
x7669:	sahf	; 1: -98
x7670:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x7672:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary883 = -x
x7675:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7677:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7679:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary887

fabs$9:	; return
x7682:	mov ax, [bp]	; 3: -117 70 0
x7685:	mov di, [bp + 4]	; 3: -117 126 4
x7688:	mov bp, [bp + 2]	; 3: -117 110 2
x7691:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x7693:	mov ax, [bp + 6]	; 3: -117 70 6
x7696:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x7699:	mov word [bp + 8], tolower$3	; 5: -57 70 8 33 30
x7704:	mov [bp + 10], bp	; 3: -119 110 10
x7707:	add bp, 8	; 3: -125 -59 8
x7710:	jmp isupper	; 3: -23 -111 -10

tolower$3:	; post call

tolower$4:	; £temporary417 = return_value

tolower$5:	; if £temporary417 == 0 goto 31
x7713:	cmp bx, 0	; 3: -125 -5 0
x7716:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x7718:	mov word [bp + 8], tolower$8	; 5: -57 70 8 52 30
x7723:	mov [bp + 10], bp	; 3: -119 110 10
x7726:	add bp, 8	; 3: -125 -59 8
x7729:	jmp localeconv	; 3: -23 -23 -10

tolower$8:	; post call

tolower$9:	; £temporary418 = return_value

tolower$10:	; localeConvPtr = £temporary418
x7732:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x7735:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7739:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary420 -> localeConvPtr = *localeConvPtr, offset 12
x7741:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary420 -> localeConvPtr
x7744:	mov ax, [si + 12]	; 3: -117 68 12
x7747:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary421 -> localeConvPtr = *localeConvPtr, offset 14
x7750:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary421 -> localeConvPtr
x7753:	mov ax, [si + 14]	; 3: -117 68 14
x7756:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x7759:	mov ax, [bp + 12]	; 3: -117 70 12
x7762:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x7765:	mov ax, [bp + 6]	; 3: -117 70 6
x7768:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x7771:	mov word [bp + 14], tolower$20	; 5: -57 70 14 105 30
x7776:	mov [bp + 16], bp	; 3: -119 110 16
x7779:	add bp, 14	; 3: -125 -59 14
x7782:	jmp strchr	; 3: -23 74 -4

tolower$20:	; post call

tolower$21:	; £temporary422 = return_value

tolower$22:	; index = £temporary422 - upperCase
x7785:	sub bx, [bp + 12]	; 3: 43 94 12
x7788:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary425 = lowerCase + index
x7791:	mov si, [bp + 10]	; 3: -117 118 10
x7794:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary424 -> £temporary425 = *£temporary425

tolower$25:	; £temporary426 = int_to_int £temporary424 -> £temporary425 (Signed_Char -> Signed_Int)
x7797:	mov bl, [si]	; 2: -118 28
x7799:	and bx, 255	; 4: -127 -29 -1 0
x7803:	cmp bl, 0	; 3: -128 -5 0
x7806:	jge tolower$26	; 2: 125 4
x7808:	neg bl	; 2: -10 -37
x7810:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary426

tolower$27:	; return
x7812:	mov ax, [bp]	; 3: -117 70 0
x7815:	mov di, [bp + 4]	; 3: -117 126 4
x7818:	mov bp, [bp + 2]	; 3: -117 110 2
x7821:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary427 = c + 32
x7823:	mov bx, [bp + 6]	; 3: -117 94 6
x7826:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary427

tolower$30:	; return
x7829:	mov ax, [bp]	; 3: -117 70 0
x7832:	mov di, [bp + 4]	; 3: -117 126 4
x7835:	mov bp, [bp + 2]	; 3: -117 110 2
x7838:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x7840:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x7843:	mov ax, [bp]	; 3: -117 70 0
x7846:	mov di, [bp + 4]	; 3: -117 126 4
x7849:	mov bp, [bp + 2]	; 3: -117 110 2
x7852:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x7854:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x7857:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x7859:	fcompp	; 2: -34 -39
x7861:	fstsw ax	; 3: -101 -33 -32
x7864:	sahf	; 1: -98
x7865:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x7867:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x7871:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -51 30
x7876:	mov [bp + 26], bp	; 3: -119 110 26
x7879:	add bp, 24	; 3: -125 -59 24
x7882:	jmp printChar	; 3: -23 45 -12

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x7885:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x7887:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x7890:	mov ax, [bp + 20]	; 3: -117 70 20
x7893:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x7896:	mov ax, [bp + 18]	; 3: -117 70 18
x7899:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x7902:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -20 30
x7907:	mov [bp + 26], bp	; 3: -119 110 26
x7910:	add bp, 24	; 3: -125 -59 24
x7913:	jmp printLongDoubleFraction	; 3: -23 90 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x7916:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7920:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary2001 = 69
x7922:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x7924:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary2001 = 101
x7926:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary2001, offset 6
x7928:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x7931:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 9 31
x7936:	mov [bp + 26], bp	; 3: -119 110 26
x7939:	add bp, 24	; 3: -125 -59 24
x7942:	jmp printChar	; 3: -23 -15 -13

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x7945:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x7949:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 27 31
x7954:	mov [bp + 26], bp	; 3: -119 110 26
x7957:	add bp, 24	; 3: -125 -59 24
x7960:	jmp printChar	; 3: -23 -33 -13

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x7963:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x7966:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x7969:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x7971:	fcompp	; 2: -34 -39
x7973:	fstsw ax	; 3: -101 -33 -32
x7976:	sahf	; 1: -98
x7977:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x7979:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x7983:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 61 31
x7988:	mov [bp + 26], bp	; 3: -119 110 26
x7991:	add bp, 24	; 3: -125 -59 24
x7994:	jmp printChar	; 3: -23 -67 -13

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x7997:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary2006 = -value
x8000:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x8002:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x8005:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x8008:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x8011:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 89 31
x8016:	mov [bp + 26], bp	; 3: -119 110 26
x8019:	add bp, 24	; 3: -125 -59 24
x8022:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary2007 = return_value

printLongDoubleExpo$43:	; £temporary2008 = float_to_int £temporary2007 (Double -> Signed_Int)
x8025:	fistp word [$IntegralStorage#]	; 4: -33 30 -9 17
x8029:	mov ax, [$IntegralStorage#]	; 3: -95 -9 17

printLongDoubleExpo$44:	; expo = £temporary2008
x8032:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x8035:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x8038:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x8041:	fld qword [float8$10.0#]	; 4: -35 6 -29 29

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x8045:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary2009 = int_to_float expo (Signed_Int -> Double)
x8048:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary2009, offset 14
x8051:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x8054:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -124 31
x8059:	mov [bp + 36], bp	; 3: -119 110 36
x8062:	add bp, 34	; 3: -125 -59 34
x8065:	jmp pow	; 3: -23 -22 1

printLongDoubleExpo$52:	; post call
x8068:	fstp qword [bp + 34]	; 3: -35 94 34
x8071:	fld qword [bp + 26]	; 3: -35 70 26
x8074:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary2010 = return_value

printLongDoubleExpo$54:	; £temporary2011 = value / £temporary2010
x8077:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x8079:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x8082:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x8085:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x8088:	mov ax, [bp + 14]	; 3: -117 70 14
x8091:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x8094:	mov ax, [bp + 16]	; 3: -117 70 16
x8097:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x8100:	mov ax, [bp + 18]	; 3: -117 70 18
x8103:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x8106:	mov ax, [bp + 20]	; 3: -117 70 20
x8109:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x8112:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -66 31
x8117:	mov [bp + 28], bp	; 3: -119 110 28
x8120:	add bp, 26	; 3: -125 -59 26
x8123:	jmp printLongDoublePlain	; 3: -23 -16 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x8126:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8130:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary2017 = 69
x8132:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x8134:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary2017 = 101
x8136:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary2017, offset 6
x8138:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x8141:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -37 31
x8146:	mov [bp + 28], bp	; 3: -119 110 28
x8149:	add bp, 26	; 3: -125 -59 26
x8152:	jmp printChar	; 3: -23 31 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary2019 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x8155:	mov ax, [bp + 24]	; 3: -117 70 24
x8158:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8164:	cmp ax, 0	; 3: -125 -8 0
x8167:	jge printLongDoubleExpo$75	; 2: 125 5
x8169:	neg ax	; 2: -9 -40
x8171:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary2019, offset 6
x8174:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x8178:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x8183:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x8188:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 10 32
x8193:	mov [bp + 28], bp	; 3: -119 110 28
x8196:	add bp, 26	; 3: -125 -59 26
x8199:	jmp printLongInt	; 3: -23 92 -14

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x8202:	mov ax, [bp]	; 3: -117 70 0
x8205:	mov di, [bp + 4]	; 3: -117 126 4
x8208:	mov bp, [bp + 2]	; 3: -117 110 2
x8211:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; push float 0.4342944820
x8213:	fld qword [float8$0.4342944820#]	; 4: -35 6 70 32

log10$1:	; call header integral zero 0 stack no zero 1
x8217:	fstp qword [bp + 14]	; 3: -35 94 14

log10$2:	; push float x
x8220:	fld qword [bp + 6]	; 3: -35 70 6

log10$3:	; parameter x, offset 6
x8223:	fstp qword [bp + 28]	; 3: -35 94 28

log10$4:	; call function noellipse-noellipse log
x8226:	mov word [bp + 22], log10$5	; 5: -57 70 22 48 32
x8231:	mov [bp + 24], bp	; 3: -119 110 24
x8234:	add bp, 22	; 3: -125 -59 22
x8237:	nop	; 1: -112
x8238:	jmp log	; 2: -21 30

log10$5:	; post call
x8240:	fstp qword [bp + 22]	; 3: -35 94 22
x8243:	fld qword [bp + 14]	; 3: -35 70 14
x8246:	fld qword [bp + 22]	; 3: -35 70 22

log10$6:	; £temporary510 = return_value

log10$7:	; £temporary511 = 0.4342944820 * £temporary510
x8249:	fmul	; 2: -34 -55

log10$8:	; return_value = £temporary511

log10$9:	; return
x8251:	mov ax, [bp]	; 3: -117 70 0
x8254:	mov di, [bp + 4]	; 3: -117 126 4
x8257:	mov bp, [bp + 2]	; 3: -117 110 2
x8260:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$0.4342944820#:
x8262:	dq 0.4342944820	; 8: 26 125 65 21 123 -53 -37 63

log:	; push float x_plus_1
x8270:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x8273:	fldz	; 2: -39 -18

log$2:	; if x_plus_1 <= 0 goto 70
x8275:	fcompp	; 2: -34 -39
x8277:	fstsw ax	; 3: -101 -33 -32
x8280:	sahf	; 1: -98
x8281:	jae log$70	; 4: 15 -125 -44 0

log$3:	; expo = 0
x8285:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x_plus_1
x8290:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push float 0.3678794411714423216036827922
x8293:	fld qword [float8$0.3678794411714423216036827922#]	; 4: -35 6 68 33

log$6:	; if x_plus_1 >= 0.3678794411714423216036827922 goto 13
x8297:	fcompp	; 2: -34 -39
x8299:	fstsw ax	; 3: -101 -33 -32
x8302:	sahf	; 1: -98
x8303:	jbe log$13	; 2: 118 17

log$7:	; push float x_plus_1
x8305:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push float 2.7182818284590452353
x8308:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 76 33

log$9:	; £temporary493 = x_plus_1 * 2.7182818284590452353
x8312:	fmul	; 2: -34 -55

log$10:	; pop float x_plus_1
x8314:	fstp qword [bp + 6]	; 3: -35 94 6

log$11:	; --expo
x8317:	dec word [bp + 14]	; 3: -1 78 14

log$12:	; goto 4
x8320:	jmp log$4	; 2: -21 -32

log$13:	; push float x_plus_1
x8322:	fld qword [bp + 6]	; 3: -35 70 6

log$14:	; push float 0.7357588823428846432073655843
x8325:	fld qword [float8$0.7357588823428846432073655843#]	; 4: -35 6 84 33

log$15:	; if x_plus_1 <= 0.7357588823428846432073655843 goto 22
x8329:	fcompp	; 2: -34 -39
x8331:	fstsw ax	; 3: -101 -33 -32
x8334:	sahf	; 1: -98
x8335:	jae log$22	; 2: 115 17

log$16:	; push float x_plus_1
x8337:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 2.7182818284590452353
x8340:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 76 33

log$18:	; £temporary496 = x_plus_1 / 2.7182818284590452353
x8344:	fdiv	; 2: -34 -7

log$19:	; pop float x_plus_1
x8346:	fstp qword [bp + 6]	; 3: -35 94 6

log$20:	; ++expo
x8349:	inc word [bp + 14]	; 3: -1 70 14

log$21:	; goto 13
x8352:	jmp log$13	; 2: -21 -32

log$22:	; push 1
x8354:	fld1	; 2: -39 -24

log$23:	; pop float n
x8356:	fstp qword [bp + 16]	; 3: -35 94 16

log$24:	; push 1
x8359:	fld1	; 2: -39 -24

log$25:	; pop float plusMinusOne
x8361:	fstp qword [bp + 24]	; 3: -35 94 24

log$26:	; push float x_plus_1
x8364:	fld qword [bp + 6]	; 3: -35 70 6

log$27:	; push 1
x8367:	fld1	; 2: -39 -24

log$28:	; £temporary498 = x_plus_1 - 1
x8369:	fsub	; 2: -34 -23

log$29:	; pop float x
x8371:	fstp qword [bp + 32]	; 3: -35 94 32

log$30:	; push 0
x8374:	fldz	; 2: -39 -18

log$31:	; pop float sum
x8376:	fstp qword [bp + 48]	; 3: -35 94 48

log$32:	; push float x
x8379:	fld qword [bp + 32]	; 3: -35 70 32

log$33:	; pop float power
x8382:	fstp qword [bp + 56]	; 3: -35 94 56

log$34:	; push float plusMinusOne
x8385:	fld qword [bp + 24]	; 3: -35 70 24

log$35:	; push float power
x8388:	fld qword [bp + 56]	; 3: -35 70 56

log$36:	; push float n
x8391:	fld qword [bp + 16]	; 3: -35 70 16

log$37:	; push 1
x8394:	fld1	; 2: -39 -24

log$38:	; n = n + 1
x8396:	fadd	; 2: -34 -63

log$39:	; top float n
x8398:	fst qword [bp + 16]	; 3: -35 86 16

log$40:	; push 1
x8401:	fld1	; 2: -39 -24

log$41:	; n = n - 1
x8403:	fsub	; 2: -34 -23

log$42:	; £temporary500 = power / £temporary499
x8405:	fdiv	; 2: -34 -7

log$43:	; £temporary501 = plusMinusOne * £temporary500
x8407:	fmul	; 2: -34 -55

log$44:	; pop float term
x8409:	fstp qword [bp + 40]	; 3: -35 94 40

log$45:	; push float sum
x8412:	fld qword [bp + 48]	; 3: -35 70 48

log$46:	; push float term
x8415:	fld qword [bp + 40]	; 3: -35 70 40

log$47:	; £temporary502 = sum + term
x8418:	fadd	; 2: -34 -63

log$48:	; pop float sum
x8420:	fstp qword [bp + 48]	; 3: -35 94 48

log$49:	; push float power
x8423:	fld qword [bp + 56]	; 3: -35 70 56

log$50:	; push float x
x8426:	fld qword [bp + 32]	; 3: -35 70 32

log$51:	; £temporary503 = power * x
x8429:	fmul	; 2: -34 -55

log$52:	; pop float power
x8431:	fstp qword [bp + 56]	; 3: -35 94 56

log$53:	; push float plusMinusOne
x8434:	fld qword [bp + 24]	; 3: -35 70 24

log$54:	; push float -1.0
x8437:	fld qword [float8$minus1.0#]	; 4: -35 6 92 33

log$55:	; £temporary504 = plusMinusOne * -1.0
x8441:	fmul	; 2: -34 -55

log$56:	; pop float plusMinusOne
x8443:	fstp qword [bp + 24]	; 3: -35 94 24

log$57:	; call header integral zero 0 stack zero 0

log$58:	; push float term
x8446:	fld qword [bp + 40]	; 3: -35 70 40

log$59:	; parameter term, offset 6
x8449:	fstp qword [bp + 70]	; 3: -35 94 70

log$60:	; call function noellipse-noellipse fabs
x8452:	mov word [bp + 64], log$61	; 5: -57 70 64 18 33
x8457:	mov [bp + 66], bp	; 3: -119 110 66
x8460:	add bp, 64	; 3: -125 -59 64
x8463:	jmp fabs	; 3: -23 -39 -4

log$61:	; post call

log$62:	; £temporary505 = return_value

log$63:	; push float 0.000000001
x8466:	fld qword [float8$0.000000001#]	; 4: -35 6 100 33

log$64:	; if £temporary505 > 0.000000001 goto 34
x8470:	fcompp	; 2: -34 -39
x8472:	fstsw ax	; 3: -101 -33 -32
x8475:	sahf	; 1: -98
x8476:	jb log$34	; 2: 114 -93

log$65:	; push float sum
x8478:	fld qword [bp + 48]	; 3: -35 70 48

log$66:	; £temporary507 = int_to_float expo (Signed_Int -> Double)
x8481:	fild word [bp + 14]	; 3: -33 70 14

log$67:	; £temporary508 = sum + £temporary507
x8484:	fadd	; 2: -34 -63

log$68:	; return_value = £temporary508

log$69:	; return
x8486:	mov ax, [bp]	; 3: -117 70 0
x8489:	mov di, [bp + 4]	; 3: -117 126 4
x8492:	mov bp, [bp + 2]	; 3: -117 110 2
x8495:	jmp ax	; 2: -1 -32

log$70:	; errno = 6
x8497:	mov word [errno], 6	; 6: -57 6 108 33 6 0

log$71:	; push 0
x8503:	fldz	; 2: -39 -18

log$72:	; return_value = 0

log$73:	; return
x8505:	mov ax, [bp]	; 3: -117 70 0
x8508:	mov di, [bp + 4]	; 3: -117 126 4
x8511:	mov bp, [bp + 2]	; 3: -117 110 2
x8514:	jmp ax	; 2: -1 -32

log$74:	; function end log

float8$0.3678794411714423216036827922#:
x8516:	dq 0.3678794411714423216036827922	; 8: 56 -17 44 54 86 -117 -41 63

float8$2.7182818284590452353#:
x8524:	dq 2.7182818284590452353	; 8: 105 87 20 -117 10 -65 5 64

float8$0.7357588823428846432073655843#:
x8532:	dq 0.7357588823428846432073655843	; 8: 56 -17 44 54 86 -117 -25 63

float8$minus1.0#:
x8540:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8548:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x8556:	dw 0	; 2: 0 0

pow:	; push float x
x8558:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x8561:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x8563:	fcompp	; 2: -34 -39
x8565:	fstsw ax	; 3: -101 -33 -32
x8568:	sahf	; 1: -98
x8569:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x8571:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x8574:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x8577:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x8580:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x8583:	mov word [bp + 30], pow$9	; 5: -57 70 30 -107 33
x8588:	mov [bp + 32], bp	; 3: -119 110 32
x8591:	add bp, 30	; 3: -125 -59 30
x8594:	jmp log	; 3: -23 -71 -2

pow$9:	; post call
x8597:	fstp qword [bp + 30]	; 3: -35 94 30
x8600:	fld qword [bp + 22]	; 3: -35 70 22
x8603:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary536 = return_value

pow$11:	; £temporary537 = y * £temporary536
x8606:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary537, offset 6
x8608:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x8611:	mov word [bp + 22], pow$14	; 5: -57 70 22 -79 33
x8616:	mov [bp + 24], bp	; 3: -119 110 24
x8619:	add bp, 22	; 3: -125 -59 22
x8622:	nop	; 1: -112
x8623:	jmp exp	; 2: -21 30

pow$14:	; post call

pow$15:	; £temporary538 = return_value

pow$16:	; return_value = £temporary538

pow$17:	; return
x8625:	mov ax, [bp]	; 3: -117 70 0
x8628:	mov di, [bp + 4]	; 3: -117 126 4
x8631:	mov bp, [bp + 2]	; 3: -117 110 2
x8634:	jmp ax	; 2: -1 -32

pow$18:	; errno = 6
x8636:	mov word [errno], 6	; 6: -57 6 108 33 6 0

pow$19:	; push 0
x8642:	fldz	; 2: -39 -18

pow$20:	; return_value = 0

pow$21:	; return
x8644:	mov ax, [bp]	; 3: -117 70 0
x8647:	mov di, [bp + 4]	; 3: -117 126 4
x8650:	mov bp, [bp + 2]	; 3: -117 110 2
x8653:	jmp ax	; 2: -1 -32

pow$22:	; function end pow

exp:	; push 0
x8655:	fldz	; 2: -39 -18

exp$1:	; pop float n
x8657:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x8660:	fld1	; 2: -39 -24

exp$3:	; pop float faculty
x8662:	fstp qword [bp + 22]	; 3: -35 94 22

exp$4:	; push 1
x8665:	fld1	; 2: -39 -24

exp$5:	; pop float power
x8667:	fstp qword [bp + 30]	; 3: -35 94 30

exp$6:	; push 0
x8670:	fldz	; 2: -39 -18

exp$7:	; pop float sum
x8672:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x8675:	fld qword [bp + 30]	; 3: -35 70 30

exp$9:	; push float faculty
x8678:	fld qword [bp + 22]	; 3: -35 70 22

exp$10:	; £temporary483 = power / faculty
x8681:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x8683:	fstp qword [bp + 38]	; 3: -35 94 38

exp$12:	; push float sum
x8686:	fld qword [bp + 46]	; 3: -35 70 46

exp$13:	; push float term
x8689:	fld qword [bp + 38]	; 3: -35 70 38

exp$14:	; £temporary484 = sum + term
x8692:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x8694:	fstp qword [bp + 46]	; 3: -35 94 46

exp$16:	; push float power
x8697:	fld qword [bp + 30]	; 3: -35 70 30

exp$17:	; push float x
x8700:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary485 = power * x
x8703:	fmul	; 2: -34 -55

exp$19:	; pop float power
x8705:	fstp qword [bp + 30]	; 3: -35 94 30

exp$20:	; push float faculty
x8708:	fld qword [bp + 22]	; 3: -35 70 22

exp$21:	; push float n
x8711:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x8714:	fld1	; 2: -39 -24

exp$23:	; n = n + 1
x8716:	fadd	; 2: -34 -63

exp$24:	; top float n
x8718:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary487 = faculty * £temporary486
x8721:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x8723:	fstp qword [bp + 22]	; 3: -35 94 22

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x8726:	fld qword [bp + 38]	; 3: -35 70 38

exp$29:	; parameter term, offset 6
x8729:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x8732:	mov word [bp + 54], exp$31	; 5: -57 70 54 42 34
x8737:	mov [bp + 56], bp	; 3: -119 110 56
x8740:	add bp, 54	; 3: -125 -59 54
x8743:	jmp fabs	; 3: -23 -63 -5

exp$31:	; post call

exp$32:	; £temporary488 = return_value

exp$33:	; push float 0.000000001
x8746:	fld qword [float8$0.000000001#]	; 4: -35 6 100 33

exp$34:	; if £temporary488 >= 0.000000001 goto 8
x8750:	fcompp	; 2: -34 -39
x8752:	fstsw ax	; 3: -101 -33 -32
x8755:	sahf	; 1: -98
x8756:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x8758:	fld qword [bp + 46]	; 3: -35 70 46

exp$36:	; return_value = sum

exp$37:	; return
x8761:	mov ax, [bp]	; 3: -117 70 0
x8764:	mov di, [bp + 4]	; 3: -117 126 4
x8767:	mov bp, [bp + 2]	; 3: -117 110 2
x8770:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

isdigit:	; if c < 48 goto 4
x8772:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x8776:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x8778:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x8782:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary352 = 1
x8784:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x8787:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary352 = 0
x8789:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary352

isdigit$6:	; return
x8792:	mov ax, [bp]	; 3: -117 70 0
x8795:	mov di, [bp + 4]	; 3: -117 126 4
x8798:	mov bp, [bp + 2]	; 3: -117 110 2
x8801:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

mktime:	; if tp == 0 goto 28
x8803:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x8807:	je mktime$28	; 4: 15 -124 -40 0

mktime$1:	; £temporary2758 -> tp = *tp, offset 10
x8811:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; £temporary2759 = £temporary2758 -> tp - 69
x8814:	mov ax, [si + 10]	; 3: -117 68 10
x8817:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; £temporary2760 = £temporary2759 / 4
x8820:	xor dx, dx	; 2: 49 -46
x8822:	idiv word [int2$4#]	; 4: -9 62 84 35

mktime$4:	; £temporary2761 = int_to_int £temporary2760 (Signed_Int -> Signed_Long_Int)
x8826:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8832:	cmp ax, 0	; 3: -125 -8 0
x8835:	jge mktime$5	; 2: 125 5
x8837:	neg ax	; 2: -9 -40
x8839:	neg eax	; 3: 102 -9 -40

mktime$5:	; leapDays = £temporary2761
x8842:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; £temporary2762 -> tp = *tp, offset 10
x8846:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; £temporary2763 = £temporary2762 -> tp - 70
x8849:	mov ax, [si + 10]	; 3: -117 68 10
x8852:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; £temporary2764 = £temporary2763 * 365
x8855:	xor dx, dx	; 2: 49 -46
x8857:	imul word [int2$365#]	; 4: -9 46 86 35

mktime$9:	; £temporary2765 = int_to_int £temporary2764 (Signed_Int -> Signed_Long_Int)
x8861:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8867:	cmp ax, 0	; 3: -125 -8 0
x8870:	jge mktime$10	; 2: 125 5
x8872:	neg ax	; 2: -9 -40
x8874:	neg eax	; 3: 102 -9 -40

mktime$10:	; £temporary2766 = £temporary2765 + leapDays
x8877:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; £temporary2767 -> tp = *tp, offset 14
x8881:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; £temporary2768 = int_to_int £temporary2767 -> tp (Signed_Int -> Signed_Long_Int)
x8884:	mov bx, [si + 14]	; 3: -117 92 14
x8887:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x8894:	cmp bx, 0	; 3: -125 -5 0
x8897:	jge mktime$13	; 2: 125 5
x8899:	neg bx	; 2: -9 -37
x8901:	neg ebx	; 3: 102 -9 -37

mktime$13:	; totalDays = £temporary2766 + £temporary2768
x8904:	add eax, ebx	; 3: 102 1 -40
x8907:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$14:	; £temporary2770 = totalDays * 86400
x8911:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x8915:	xor edx, edx	; 3: 102 49 -46
x8918:	imul dword [int4$86400#]	; 5: 102 -9 46 88 35
x8923:	mov ebx, eax	; 3: 102 -119 -61

mktime$15:	; £temporary2771 -> tp = *tp, offset 4
x8926:	mov si, [bp + 6]	; 3: -117 118 6

mktime$16:	; £temporary2772 = int_to_int £temporary2771 -> tp (Signed_Int -> Signed_Long_Int)
x8929:	mov ax, [si + 4]	; 3: -117 68 4
x8932:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8938:	cmp ax, 0	; 3: -125 -8 0
x8941:	jge mktime$17	; 2: 125 5
x8943:	neg ax	; 2: -9 -40
x8945:	neg eax	; 3: 102 -9 -40

mktime$17:	; £temporary2773 = £temporary2772 * 3600
x8948:	xor edx, edx	; 3: 102 49 -46
x8951:	imul dword [int4$3600#]	; 5: 102 -9 46 92 35

mktime$18:	; £temporary2774 = £temporary2770 + £temporary2773
x8956:	add ebx, eax	; 3: 102 1 -61

mktime$19:	; £temporary2775 -> tp = *tp, offset 2
x8959:	mov si, [bp + 6]	; 3: -117 118 6

mktime$20:	; £temporary2776 = int_to_int £temporary2775 -> tp (Signed_Int -> Signed_Long_Int)
x8962:	mov ax, [si + 2]	; 3: -117 68 2
x8965:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8971:	cmp ax, 0	; 3: -125 -8 0
x8974:	jge mktime$21	; 2: 125 5
x8976:	neg ax	; 2: -9 -40
x8978:	neg eax	; 3: 102 -9 -40

mktime$21:	; £temporary2777 = £temporary2776 * 60
x8981:	xor edx, edx	; 3: 102 49 -46
x8984:	imul dword [int4$60#]	; 5: 102 -9 46 96 35

mktime$22:	; £temporary2778 = £temporary2774 + £temporary2777
x8989:	add ebx, eax	; 3: 102 1 -61

mktime$23:	; £temporary2779 -> tp = *tp
x8992:	mov si, [bp + 6]	; 3: -117 118 6

mktime$24:	; £temporary2780 = int_to_int £temporary2779 -> tp (Signed_Int -> Signed_Long_Int)
x8995:	mov ax, [si]	; 2: -117 4
x8997:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9003:	cmp ax, 0	; 3: -125 -8 0
x9006:	jge mktime$25	; 2: 125 5
x9008:	neg ax	; 2: -9 -40
x9010:	neg eax	; 3: 102 -9 -40

mktime$25:	; £temporary2781 = £temporary2778 + £temporary2780
x9013:	add ebx, eax	; 3: 102 1 -61

mktime$26:	; return_value = £temporary2781

mktime$27:	; return
x9016:	mov ax, [bp]	; 3: -117 70 0
x9019:	mov di, [bp + 4]	; 3: -117 126 4
x9022:	mov bp, [bp + 2]	; 3: -117 110 2
x9025:	jmp ax	; 2: -1 -32

mktime$28:	; return_value = 0
x9027:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$29:	; return
x9033:	mov ax, [bp]	; 3: -117 70 0
x9036:	mov di, [bp + 4]	; 3: -117 126 4
x9039:	mov bp, [bp + 2]	; 3: -117 110 2
x9042:	jmp ax	; 2: -1 -32

mktime$30:	; function end mktime

int2$4#:
x9044:	dw 4	; 2: 4 0

int2$365#:
x9046:	dw 365	; 2: 109 1

int4$86400#:
x9048:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x9052:	dd 3600	; 4: 16 14 0 0

int4$60#:
x9056:	dd 60	; 4: 60 0 0 0

scanf:	; £temporary1791 = &format
x9060:	mov si, bp	; 2: -119 -18
x9062:	add si, 6	; 3: -125 -58 6

scanf$1:	; £temporary1792 = int_to_int £temporary1791 (Pointer -> Pointer)

scanf$2:	; arg_list = £temporary1792 + 2
x9065:	add si, 2	; 3: -125 -58 2
x9068:	mov [di + 8], si	; 3: -119 117 8

scanf$3:	; call header integral zero 0 stack zero 0

scanf$4:	; parameter format, offset 6
x9071:	mov ax, [bp + 6]	; 3: -117 70 6
x9074:	mov [di + 16], ax	; 3: -119 69 16

scanf$5:	; parameter arg_list, offset 8
x9077:	mov ax, [di + 8]	; 3: -117 69 8
x9080:	mov [di + 18], ax	; 3: -119 69 18

scanf$6:	; call function ellipse-noellipse vscanf
x9083:	mov word [di + 10], scanf$7	; 5: -57 69 10 -114 35
x9088:	mov [di + 12], bp	; 3: -119 109 12
x9091:	mov [di + 14], di	; 3: -119 125 14
x9094:	add di, 10	; 3: -125 -57 10
x9097:	mov bp, di	; 2: -119 -3
x9099:	nop	; 1: -112
x9100:	jmp vscanf	; 2: -21 11

scanf$7:	; post call

scanf$8:	; £temporary1794 = return_value

scanf$9:	; return_value = £temporary1794

scanf$10:	; return
x9102:	mov ax, [bp]	; 3: -117 70 0
x9105:	mov di, [bp + 4]	; 3: -117 126 4
x9108:	mov bp, [bp + 2]	; 3: -117 110 2
x9111:	jmp ax	; 2: -1 -32

scanf$11:	; function end scanf

vscanf:	; call header integral zero 0 stack zero 0

vscanf$1:	; parameter stdin, offset 6
x9113:	mov ax, [stdin]	; 3: -95 -60 35
x9116:	mov [bp + 16], ax	; 3: -119 70 16

vscanf$2:	; parameter format, offset 8
x9119:	mov ax, [bp + 6]	; 3: -117 70 6
x9122:	mov [bp + 18], ax	; 3: -119 70 18

vscanf$3:	; parameter arg_list, offset 10
x9125:	mov ax, [bp + 8]	; 3: -117 70 8
x9128:	mov [bp + 20], ax	; 3: -119 70 20

vscanf$4:	; call function noellipse-noellipse vfscanf
x9131:	mov word [bp + 10], vscanf$5	; 5: -57 70 10 -71 35
x9136:	mov [bp + 12], bp	; 3: -119 110 12
x9139:	add bp, 10	; 3: -125 -59 10
x9142:	nop	; 1: -112
x9143:	jmp vfscanf	; 2: -21 13

vscanf$5:	; post call

vscanf$6:	; £temporary1798 = return_value

vscanf$7:	; return_value = £temporary1798

vscanf$8:	; return
x9145:	mov ax, [bp]	; 3: -117 70 0
x9148:	mov di, [bp + 4]	; 3: -117 126 4
x9151:	mov bp, [bp + 2]	; 3: -117 110 2
x9154:	jmp ax	; 2: -1 -32

vscanf$9:	; function end vscanf

stdin:
x9156:	dw g_fileArray	; 2: 24 4

vfscanf:	; g_inStatus = 0
x9158:	mov word [g_inStatus], 0	; 6: -57 6 -9 35 0 0

vfscanf$1:	; £temporary1810 = int_to_int inStream (Pointer -> Pointer)
x9164:	mov ax, [bp + 6]	; 3: -117 70 6

vfscanf$2:	; g_inDevice = £temporary1810
x9167:	mov [g_inDevice], ax	; 3: -93 -7 35

vfscanf$3:	; call header integral zero 0 stack zero 0

vfscanf$4:	; parameter format, offset 6
x9170:	mov ax, [bp + 8]	; 3: -117 70 8
x9173:	mov [bp + 18], ax	; 3: -119 70 18

vfscanf$5:	; parameter arg_list, offset 8
x9176:	mov ax, [bp + 10]	; 3: -117 70 10
x9179:	mov [bp + 20], ax	; 3: -119 70 20

vfscanf$6:	; call function noellipse-noellipse scanFormat
x9182:	mov word [bp + 12], vfscanf$7	; 5: -57 70 12 -20 35
x9187:	mov [bp + 14], bp	; 3: -119 110 14
x9190:	add bp, 12	; 3: -125 -59 12
x9193:	nop	; 1: -112
x9194:	jmp scanFormat	; 2: -21 15

vfscanf$7:	; post call

vfscanf$8:	; £temporary1811 = return_value

vfscanf$9:	; return_value = £temporary1811

vfscanf$10:	; return
x9196:	mov ax, [bp]	; 3: -117 70 0
x9199:	mov di, [bp + 4]	; 3: -117 126 4
x9202:	mov bp, [bp + 2]	; 3: -117 110 2
x9205:	jmp ax	; 2: -1 -32

vfscanf$11:	; function end vfscanf

g_inStatus:
x9207:	db 0, 0	; 2: 0 0

g_inDevice:
x9209:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x9211:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x9216:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x9221:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x9226:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x9231:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x9236:	mov word [g_inCount], 0	; 6: -57 6 29 41 0 0

scanFormat$6:	; g_inChars = 0
x9242:	mov word [g_inChars], 0	; 6: -57 6 31 41 0 0

scanFormat$7:	; index = 0
x9248:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1601 = format + index
x9253:	mov si, [bp + 6]	; 3: -117 118 6
x9256:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1600 -> £temporary1601 = *£temporary1601

scanFormat$10:	; if £temporary1600 -> £temporary1601 == 0 goto 325
x9259:	cmp byte [si], 0	; 3: -128 60 0
x9262:	je scanFormat$325	; 4: 15 -124 -36 4

scanFormat$11:	; £temporary1605 = format + index
x9266:	mov si, [bp + 6]	; 3: -117 118 6
x9269:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1604 -> £temporary1605 = *£temporary1605

scanFormat$13:	; c = £temporary1604 -> £temporary1605
x9272:	mov al, [si]	; 2: -118 4
x9274:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1606 = int_to_int c (Signed_Char -> Signed_Int)
x9277:	mov al, [bp + 10]	; 3: -118 70 10
x9280:	and ax, 255	; 3: 37 -1 0
x9283:	cmp al, 0	; 2: 60 0
x9285:	jge scanFormat$15	; 2: 125 4
x9287:	neg al	; 2: -10 -40
x9289:	neg ax	; 2: -9 -40

scanFormat$15:	; d = £temporary1606 + 1
x9291:	inc ax	; 1: 64
x9292:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$16:	; if percent == 0 goto 317
x9295:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x9299:	je scanFormat$317	; 4: 15 -124 -110 4

scanFormat$17:	; £temporary1608 = d - 1
x9303:	mov ax, [bp + 55]	; 3: -117 70 55
x9306:	dec ax	; 1: 72

scanFormat$18:	; case £temporary1608 == 104 goto 36
x9307:	cmp ax, 104	; 3: -125 -8 104
x9310:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; case £temporary1608 == 108 goto 38
x9312:	cmp ax, 108	; 3: -125 -8 108
x9315:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; case £temporary1608 == 76 goto 40
x9317:	cmp ax, 76	; 3: -125 -8 76
x9320:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; case £temporary1608 == 42 goto 42
x9322:	cmp ax, 42	; 3: -125 -8 42
x9325:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; case £temporary1608 == 99 goto 44
x9327:	cmp ax, 99	; 3: -125 -8 99
x9330:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; case £temporary1608 == 115 goto 62
x9332:	cmp ax, 115	; 3: -125 -8 115
x9335:	je scanFormat$62	; 4: 15 -124 -72 0

scanFormat$24:	; case £temporary1608 == 100 goto 81
x9339:	cmp ax, 100	; 3: -125 -8 100
x9342:	je scanFormat$81	; 4: 15 -124 1 1

scanFormat$25:	; case £temporary1608 == 105 goto 81
x9346:	cmp ax, 105	; 3: -125 -8 105
x9349:	je scanFormat$81	; 4: 15 -124 -6 0

scanFormat$26:	; case £temporary1608 == 111 goto 116
x9353:	cmp ax, 111	; 3: -125 -8 111
x9356:	je scanFormat$116	; 4: 15 -124 -126 1

scanFormat$27:	; case £temporary1608 == 120 goto 152
x9360:	cmp ax, 120	; 3: -125 -8 120
x9363:	je scanFormat$152	; 4: 15 -124 -4 1

scanFormat$28:	; case £temporary1608 == 117 goto 188
x9367:	cmp ax, 117	; 3: -125 -8 117
x9370:	je scanFormat$188	; 4: 15 -124 118 2

scanFormat$29:	; case £temporary1608 == 103 goto 224
x9374:	cmp ax, 103	; 3: -125 -8 103
x9377:	je scanFormat$224	; 4: 15 -124 -16 2

scanFormat$30:	; case £temporary1608 == 102 goto 224
x9381:	cmp ax, 102	; 3: -125 -8 102
x9384:	je scanFormat$224	; 4: 15 -124 -23 2

scanFormat$31:	; case £temporary1608 == 101 goto 224
x9388:	cmp ax, 101	; 3: -125 -8 101
x9391:	je scanFormat$224	; 4: 15 -124 -30 2

scanFormat$32:	; case £temporary1608 == 91 goto 260
x9395:	cmp ax, 91	; 3: -125 -8 91
x9398:	je scanFormat$260	; 4: 15 -124 79 3

scanFormat$33:	; case £temporary1608 == 110 goto 301
x9402:	cmp ax, 110	; 3: -125 -8 110
x9405:	je scanFormat$301	; 4: 15 -124 -33 3

scanFormat$34:	; case end £temporary1608

scanFormat$35:	; goto 310
x9409:	jmp scanFormat$310	; 3: -23 -6 3

scanFormat$36:	; shortInt = 1
x9412:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$37:	; goto 323
x9417:	jmp scanFormat$323	; 3: -23 60 4

scanFormat$38:	; longIntOrDouble = 1
x9420:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$39:	; goto 323
x9425:	jmp scanFormat$323	; 3: -23 52 4

scanFormat$40:	; longDouble = 1
x9428:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$41:	; goto 323
x9433:	jmp scanFormat$323	; 3: -23 44 4

scanFormat$42:	; star = 1
x9436:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$43:	; goto 323
x9441:	jmp scanFormat$323	; 3: -23 36 4

scanFormat$44:	; call header integral zero 0 stack zero 0

scanFormat$45:	; call function noellipse-noellipse scanChar
x9444:	mov word [bp + 57], scanFormat$46	; 5: -57 70 57 -14 36
x9449:	mov [bp + 59], bp	; 3: -119 110 59
x9452:	add bp, 57	; 3: -125 -59 57
x9455:	jmp scanChar	; 3: -23 68 4

scanFormat$46:	; post call

scanFormat$47:	; £temporary1609 = return_value

scanFormat$48:	; charValue = £temporary1609
x9458:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$49:	; if star != 0 goto 57
x9461:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9465:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; arg_list = arg_list + 2
x9467:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$51:	; £temporary1613 = arg_list - 2
x9471:	mov si, [bp + 8]	; 3: -117 118 8
x9474:	sub si, 2	; 3: -125 -18 2

scanFormat$52:	; £temporary1614 = int_to_int £temporary1613 (Signed_Int -> Pointer)

scanFormat$53:	; £temporary1615 -> £temporary1614 = *£temporary1614

scanFormat$54:	; charPtr = £temporary1615 -> £temporary1614
x9477:	mov ax, [si]	; 2: -117 4
x9479:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$55:	; £temporary1616 -> charPtr = *charPtr
x9482:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$56:	; £temporary1616 -> charPtr = charValue
x9485:	mov al, [bp + 57]	; 3: -118 70 57
x9488:	mov [si], al	; 2: -120 4

scanFormat$57:	; percent = 0
x9490:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$58:	; £temporary1617 = int_to_int charValue (Signed_Char -> Signed_Int)
x9495:	mov al, [bp + 57]	; 3: -118 70 57
x9498:	and ax, 255	; 3: 37 -1 0
x9501:	cmp al, 0	; 2: 60 0
x9503:	jge scanFormat$59	; 2: 125 4
x9505:	neg al	; 2: -10 -40
x9507:	neg ax	; 2: -9 -40

scanFormat$59:	; if £temporary1617 == -1 goto 323
x9509:	cmp ax, -1	; 3: -125 -8 -1
x9512:	je scanFormat$323	; 4: 15 -124 -36 3

scanFormat$60:	; ++g_inCount
x9516:	inc word [g_inCount]	; 4: -1 6 29 41

scanFormat$61:	; goto 323
x9520:	jmp scanFormat$323	; 3: -23 -43 3

scanFormat$62:	; if star != 0 goto 74
x9523:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9527:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; arg_list = arg_list + 2
x9529:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$64:	; £temporary1623 = arg_list - 2
x9533:	mov si, [bp + 8]	; 3: -117 118 8
x9536:	sub si, 2	; 3: -125 -18 2

scanFormat$65:	; £temporary1624 = int_to_int £temporary1623 (Signed_Int -> Pointer)

scanFormat$66:	; £temporary1625 -> £temporary1624 = *£temporary1624

scanFormat$67:	; charPtr = £temporary1625 -> £temporary1624
x9539:	mov ax, [si]	; 2: -117 4
x9541:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$68:	; call header integral zero 0 stack zero 0

scanFormat$69:	; parameter charPtr, offset 6
x9544:	mov ax, [bp + 11]	; 3: -117 70 11
x9547:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$70:	; parameter 0, offset 8
x9550:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$71:	; call function noellipse-noellipse scanString
x9555:	mov word [bp + 57], scanFormat$72	; 5: -57 70 57 97 37
x9560:	mov [bp + 59], bp	; 3: -119 110 59
x9563:	add bp, 57	; 3: -125 -59 57
x9566:	jmp scanString	; 3: -23 68 4

scanFormat$72:	; post call

scanFormat$73:	; goto 79
x9569:	jmp scanFormat$79	; 2: -21 24

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter 0, offset 6
x9571:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$76:	; parameter 0, offset 8
x9576:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$77:	; call function noellipse-noellipse scanString
x9581:	mov word [bp + 57], scanFormat$78	; 5: -57 70 57 123 37
x9586:	mov [bp + 59], bp	; 3: -119 110 59
x9589:	add bp, 57	; 3: -125 -59 57
x9592:	jmp scanString	; 3: -23 42 4

scanFormat$78:	; post call

scanFormat$79:	; percent = 0
x9595:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$80:	; goto 323
x9600:	jmp scanFormat$323	; 3: -23 -123 3

scanFormat$81:	; call header integral zero 0 stack zero 0

scanFormat$82:	; call function noellipse-noellipse scanLongInt
x9603:	mov word [bp + 57], scanFormat$83	; 5: -57 70 57 -111 37
x9608:	mov [bp + 59], bp	; 3: -119 110 59
x9611:	add bp, 57	; 3: -125 -59 57
x9614:	jmp scanLongInt	; 3: -23 -104 6

scanFormat$83:	; post call

scanFormat$84:	; £temporary1628 = return_value

scanFormat$85:	; longValue = £temporary1628
x9617:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$86:	; if star != 0 goto 114
x9621:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9625:	jne scanFormat$114	; 2: 117 111

scanFormat$87:	; if shortInt == 0 goto 97
x9627:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9631:	je scanFormat$97	; 2: 116 37

scanFormat$88:	; arg_list = arg_list + 2
x9633:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$89:	; £temporary1632 = arg_list - 2
x9637:	mov si, [bp + 8]	; 3: -117 118 8
x9640:	sub si, 2	; 3: -125 -18 2

scanFormat$90:	; £temporary1633 = int_to_int £temporary1632 (Signed_Int -> Pointer)

scanFormat$91:	; £temporary1634 -> £temporary1633 = *£temporary1633

scanFormat$92:	; shortPtr = £temporary1634 -> £temporary1633
x9643:	mov ax, [si]	; 2: -117 4
x9645:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$93:	; £temporary1635 -> shortPtr = *shortPtr
x9648:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$94:	; £temporary1636 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x9651:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9655:	cmp eax, 0	; 4: 102 -125 -8 0
x9659:	jge scanFormat$95	; 2: 125 5
x9661:	neg eax	; 3: 102 -9 -40
x9664:	neg al	; 2: -10 -40

scanFormat$95:	; £temporary1635 -> shortPtr = £temporary1636
x9666:	mov [si], al	; 2: -120 4

scanFormat$96:	; goto 114
x9668:	jmp scanFormat$114	; 2: -21 68

scanFormat$97:	; if longIntOrDouble != 0 goto 107
x9670:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9674:	jne scanFormat$107	; 2: 117 37

scanFormat$98:	; arg_list = arg_list + 2
x9676:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$99:	; £temporary1640 = arg_list - 2
x9680:	mov si, [bp + 8]	; 3: -117 118 8
x9683:	sub si, 2	; 3: -125 -18 2

scanFormat$100:	; £temporary1641 = int_to_int £temporary1640 (Signed_Int -> Pointer)

scanFormat$101:	; £temporary1642 -> £temporary1641 = *£temporary1641

scanFormat$102:	; intPtr = £temporary1642 -> £temporary1641
x9686:	mov ax, [si]	; 2: -117 4
x9688:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$103:	; £temporary1643 -> intPtr = *intPtr
x9691:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$104:	; £temporary1644 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x9694:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9698:	cmp eax, 0	; 4: 102 -125 -8 0
x9702:	jge scanFormat$105	; 2: 125 5
x9704:	neg eax	; 3: 102 -9 -40
x9707:	neg ax	; 2: -9 -40

scanFormat$105:	; £temporary1643 -> intPtr = £temporary1644
x9709:	mov [si], ax	; 2: -119 4

scanFormat$106:	; goto 114
x9711:	jmp scanFormat$114	; 2: -21 25

scanFormat$107:	; arg_list = arg_list + 2
x9713:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$108:	; £temporary1646 = arg_list - 2
x9717:	mov si, [bp + 8]	; 3: -117 118 8
x9720:	sub si, 2	; 3: -125 -18 2

scanFormat$109:	; £temporary1647 = int_to_int £temporary1646 (Signed_Int -> Pointer)

scanFormat$110:	; £temporary1648 -> £temporary1647 = *£temporary1647

scanFormat$111:	; longPtr = £temporary1648 -> £temporary1647
x9723:	mov ax, [si]	; 2: -117 4
x9725:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$112:	; £temporary1649 -> longPtr = *longPtr
x9728:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$113:	; £temporary1649 -> longPtr = longValue
x9731:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9735:	mov [si], eax	; 3: 102 -119 4

scanFormat$114:	; percent = 0
x9738:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$115:	; goto 323
x9743:	jmp scanFormat$323	; 3: -23 -10 2

scanFormat$116:	; call header integral zero 0 stack zero 0

scanFormat$117:	; parameter 8, offset 6
x9746:	mov dword [bp + 63], 8	; 8: 102 -57 70 63 8 0 0 0

scanFormat$118:	; call function noellipse-noellipse scanUnsignedLongInt
x9754:	mov word [bp + 57], scanFormat$119	; 5: -57 70 57 40 38
x9759:	mov [bp + 59], bp	; 3: -119 110 59
x9762:	add bp, 57	; 3: -125 -59 57
x9765:	jmp scanUnsignedLongInt	; 3: -23 88 7

scanFormat$119:	; post call

scanFormat$120:	; £temporary1651 = return_value

scanFormat$121:	; unsignedLongValue = £temporary1651
x9768:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$122:	; if star != 0 goto 150
x9772:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9776:	jne scanFormat$150	; 2: 117 89

scanFormat$123:	; if shortInt == 0 goto 133
x9778:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9782:	je scanFormat$133	; 2: 116 26

scanFormat$124:	; arg_list = arg_list + 2
x9784:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$125:	; £temporary1655 = arg_list - 2
x9788:	mov si, [bp + 8]	; 3: -117 118 8
x9791:	sub si, 2	; 3: -125 -18 2

scanFormat$126:	; £temporary1656 = int_to_int £temporary1655 (Signed_Int -> Pointer)

scanFormat$127:	; £temporary1657 -> £temporary1656 = *£temporary1656

scanFormat$128:	; unsignedShortPtr = £temporary1657 -> £temporary1656
x9794:	mov ax, [si]	; 2: -117 4
x9796:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$129:	; £temporary1658 -> unsignedShortPtr = *unsignedShortPtr
x9799:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$130:	; £temporary1659 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9802:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$131:	; £temporary1658 -> unsignedShortPtr = £temporary1659
x9806:	mov [si], al	; 2: -120 4

scanFormat$132:	; goto 150
x9808:	jmp scanFormat$150	; 2: -21 57

scanFormat$133:	; if longIntOrDouble != 0 goto 143
x9810:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9814:	jne scanFormat$143	; 2: 117 26

scanFormat$134:	; arg_list = arg_list + 2
x9816:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$135:	; £temporary1663 = arg_list - 2
x9820:	mov si, [bp + 8]	; 3: -117 118 8
x9823:	sub si, 2	; 3: -125 -18 2

scanFormat$136:	; £temporary1664 = int_to_int £temporary1663 (Signed_Int -> Pointer)

scanFormat$137:	; £temporary1665 -> £temporary1664 = *£temporary1664

scanFormat$138:	; unsignedIntPtr = £temporary1665 -> £temporary1664
x9826:	mov ax, [si]	; 2: -117 4
x9828:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$139:	; £temporary1666 -> unsignedIntPtr = *unsignedIntPtr
x9831:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$140:	; £temporary1667 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9834:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$141:	; £temporary1666 -> unsignedIntPtr = £temporary1667
x9838:	mov [si], ax	; 2: -119 4

scanFormat$142:	; goto 150
x9840:	jmp scanFormat$150	; 2: -21 25

scanFormat$143:	; arg_list = arg_list + 2
x9842:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$144:	; £temporary1669 = arg_list - 2
x9846:	mov si, [bp + 8]	; 3: -117 118 8
x9849:	sub si, 2	; 3: -125 -18 2

scanFormat$145:	; £temporary1670 = int_to_int £temporary1669 (Signed_Int -> Pointer)

scanFormat$146:	; £temporary1671 -> £temporary1670 = *£temporary1670

scanFormat$147:	; unsignedLongPtr = £temporary1671 -> £temporary1670
x9852:	mov ax, [si]	; 2: -117 4
x9854:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$148:	; £temporary1672 -> unsignedLongPtr = *unsignedLongPtr
x9857:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$149:	; £temporary1672 -> unsignedLongPtr = unsignedLongValue
x9860:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x9864:	mov [si], eax	; 3: 102 -119 4

scanFormat$150:	; percent = 0
x9867:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$151:	; goto 323
x9872:	jmp scanFormat$323	; 3: -23 117 2

scanFormat$152:	; call header integral zero 0 stack zero 0

scanFormat$153:	; parameter 16, offset 6
x9875:	mov dword [bp + 63], 16	; 8: 102 -57 70 63 16 0 0 0

scanFormat$154:	; call function noellipse-noellipse scanUnsignedLongInt
x9883:	mov word [bp + 57], scanFormat$155	; 5: -57 70 57 -87 38
x9888:	mov [bp + 59], bp	; 3: -119 110 59
x9891:	add bp, 57	; 3: -125 -59 57
x9894:	jmp scanUnsignedLongInt	; 3: -23 -41 6

scanFormat$155:	; post call

scanFormat$156:	; £temporary1674 = return_value

scanFormat$157:	; unsignedLongValue = £temporary1674
x9897:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$158:	; if star != 0 goto 186
x9901:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9905:	jne scanFormat$186	; 2: 117 89

scanFormat$159:	; if shortInt == 0 goto 169
x9907:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9911:	je scanFormat$169	; 2: 116 26

scanFormat$160:	; arg_list = arg_list + 2
x9913:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$161:	; £temporary1678 = arg_list - 2
x9917:	mov si, [bp + 8]	; 3: -117 118 8
x9920:	sub si, 2	; 3: -125 -18 2

scanFormat$162:	; £temporary1679 = int_to_int £temporary1678 (Signed_Int -> Pointer)

scanFormat$163:	; £temporary1680 -> £temporary1679 = *£temporary1679

scanFormat$164:	; unsignedShortPtr = £temporary1680 -> £temporary1679
x9923:	mov ax, [si]	; 2: -117 4
x9925:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$165:	; £temporary1681 -> unsignedShortPtr = *unsignedShortPtr
x9928:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$166:	; £temporary1682 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9931:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$167:	; £temporary1681 -> unsignedShortPtr = £temporary1682
x9935:	mov [si], al	; 2: -120 4

scanFormat$168:	; goto 186
x9937:	jmp scanFormat$186	; 2: -21 57

scanFormat$169:	; if longIntOrDouble != 0 goto 179
x9939:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9943:	jne scanFormat$179	; 2: 117 26

scanFormat$170:	; arg_list = arg_list + 2
x9945:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$171:	; £temporary1686 = arg_list - 2
x9949:	mov si, [bp + 8]	; 3: -117 118 8
x9952:	sub si, 2	; 3: -125 -18 2

scanFormat$172:	; £temporary1687 = int_to_int £temporary1686 (Signed_Int -> Pointer)

scanFormat$173:	; £temporary1688 -> £temporary1687 = *£temporary1687

scanFormat$174:	; unsignedIntPtr = £temporary1688 -> £temporary1687
x9955:	mov ax, [si]	; 2: -117 4
x9957:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$175:	; £temporary1689 -> unsignedIntPtr = *unsignedIntPtr
x9960:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$176:	; £temporary1690 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9963:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$177:	; £temporary1689 -> unsignedIntPtr = £temporary1690
x9967:	mov [si], ax	; 2: -119 4

scanFormat$178:	; goto 186
x9969:	jmp scanFormat$186	; 2: -21 25

scanFormat$179:	; arg_list = arg_list + 2
x9971:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$180:	; £temporary1692 = arg_list - 2
x9975:	mov si, [bp + 8]	; 3: -117 118 8
x9978:	sub si, 2	; 3: -125 -18 2

scanFormat$181:	; £temporary1693 = int_to_int £temporary1692 (Signed_Int -> Pointer)

scanFormat$182:	; £temporary1694 -> £temporary1693 = *£temporary1693

scanFormat$183:	; unsignedLongPtr = £temporary1694 -> £temporary1693
x9981:	mov ax, [si]	; 2: -117 4
x9983:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$184:	; £temporary1695 -> unsignedLongPtr = *unsignedLongPtr
x9986:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$185:	; £temporary1695 -> unsignedLongPtr = unsignedLongValue
x9989:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x9993:	mov [si], eax	; 3: 102 -119 4

scanFormat$186:	; percent = 0
x9996:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$187:	; goto 323
x10001:	jmp scanFormat$323	; 3: -23 -12 1

scanFormat$188:	; call header integral zero 0 stack zero 0

scanFormat$189:	; parameter 0, offset 6
x10004:	mov dword [bp + 63], 0	; 8: 102 -57 70 63 0 0 0 0

scanFormat$190:	; call function noellipse-noellipse scanUnsignedLongInt
x10012:	mov word [bp + 57], scanFormat$191	; 5: -57 70 57 42 39
x10017:	mov [bp + 59], bp	; 3: -119 110 59
x10020:	add bp, 57	; 3: -125 -59 57
x10023:	jmp scanUnsignedLongInt	; 3: -23 86 6

scanFormat$191:	; post call

scanFormat$192:	; £temporary1697 = return_value

scanFormat$193:	; unsignedLongValue = £temporary1697
x10026:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$194:	; if star != 0 goto 222
x10030:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10034:	jne scanFormat$222	; 2: 117 89

scanFormat$195:	; if shortInt == 0 goto 205
x10036:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10040:	je scanFormat$205	; 2: 116 26

scanFormat$196:	; arg_list = arg_list + 2
x10042:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$197:	; £temporary1701 = arg_list - 2
x10046:	mov si, [bp + 8]	; 3: -117 118 8
x10049:	sub si, 2	; 3: -125 -18 2

scanFormat$198:	; £temporary1702 = int_to_int £temporary1701 (Signed_Int -> Pointer)

scanFormat$199:	; £temporary1703 -> £temporary1702 = *£temporary1702

scanFormat$200:	; unsignedShortPtr = £temporary1703 -> £temporary1702
x10052:	mov ax, [si]	; 2: -117 4
x10054:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$201:	; £temporary1704 -> unsignedShortPtr = *unsignedShortPtr
x10057:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$202:	; £temporary1705 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10060:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$203:	; £temporary1704 -> unsignedShortPtr = £temporary1705
x10064:	mov [si], al	; 2: -120 4

scanFormat$204:	; goto 222
x10066:	jmp scanFormat$222	; 2: -21 57

scanFormat$205:	; if longIntOrDouble != 0 goto 215
x10068:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10072:	jne scanFormat$215	; 2: 117 26

scanFormat$206:	; arg_list = arg_list + 2
x10074:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$207:	; £temporary1709 = arg_list - 2
x10078:	mov si, [bp + 8]	; 3: -117 118 8
x10081:	sub si, 2	; 3: -125 -18 2

scanFormat$208:	; £temporary1710 = int_to_int £temporary1709 (Signed_Int -> Pointer)

scanFormat$209:	; £temporary1711 -> £temporary1710 = *£temporary1710

scanFormat$210:	; unsignedIntPtr = £temporary1711 -> £temporary1710
x10084:	mov ax, [si]	; 2: -117 4
x10086:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$211:	; £temporary1712 -> unsignedIntPtr = *unsignedIntPtr
x10089:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$212:	; £temporary1713 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10092:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$213:	; £temporary1712 -> unsignedIntPtr = £temporary1713
x10096:	mov [si], ax	; 2: -119 4

scanFormat$214:	; goto 222
x10098:	jmp scanFormat$222	; 2: -21 25

scanFormat$215:	; arg_list = arg_list + 2
x10100:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$216:	; £temporary1715 = arg_list - 2
x10104:	mov si, [bp + 8]	; 3: -117 118 8
x10107:	sub si, 2	; 3: -125 -18 2

scanFormat$217:	; £temporary1716 = int_to_int £temporary1715 (Signed_Int -> Pointer)

scanFormat$218:	; £temporary1717 -> £temporary1716 = *£temporary1716

scanFormat$219:	; unsignedLongPtr = £temporary1717 -> £temporary1716
x10110:	mov ax, [si]	; 2: -117 4
x10112:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$220:	; £temporary1718 -> unsignedLongPtr = *unsignedLongPtr
x10115:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$221:	; £temporary1718 -> unsignedLongPtr = unsignedLongValue
x10118:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10122:	mov [si], eax	; 3: 102 -119 4

scanFormat$222:	; percent = 0
x10125:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$223:	; goto 323
x10130:	jmp scanFormat$323	; 3: -23 115 1

scanFormat$224:	; call header integral zero 0 stack zero 0

scanFormat$225:	; call function noellipse-noellipse scanLongDouble
x10133:	mov word [bp + 57], scanFormat$226	; 5: -57 70 57 -93 39
x10138:	mov [bp + 59], bp	; 3: -119 110 59
x10141:	add bp, 57	; 3: -125 -59 57
x10144:	jmp scanLongDouble	; 3: -23 -94 8

scanFormat$226:	; post call

scanFormat$227:	; £temporary1720 = return_value

scanFormat$228:	; pop float longDoubleValue
x10147:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$229:	; if star != 0 goto 258
x10150:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10154:	jne scanFormat$258	; 2: 117 85

scanFormat$230:	; if longIntOrDouble == 0 goto 240
x10156:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10160:	je scanFormat$240	; 2: 116 25

scanFormat$231:	; arg_list = arg_list + 2
x10162:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$232:	; £temporary1724 = arg_list - 2
x10166:	mov si, [bp + 8]	; 3: -117 118 8
x10169:	sub si, 2	; 3: -125 -18 2

scanFormat$233:	; £temporary1725 = int_to_int £temporary1724 (Signed_Int -> Pointer)

scanFormat$234:	; £temporary1726 -> £temporary1725 = *£temporary1725

scanFormat$235:	; doublePtr = £temporary1726 -> £temporary1725
x10172:	mov ax, [si]	; 2: -117 4
x10174:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$236:	; £temporary1727 -> doublePtr = *doublePtr
x10177:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$237:	; push float longDoubleValue
x10180:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$238:	; pop float £temporary1727 -> doublePtr
x10183:	fstp qword [si]	; 2: -35 28

scanFormat$239:	; goto 258
x10185:	jmp scanFormat$258	; 2: -21 54

scanFormat$240:	; if longDouble == 0 goto 250
x10187:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x10191:	je scanFormat$250	; 2: 116 25

scanFormat$241:	; arg_list = arg_list + 2
x10193:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$242:	; £temporary1730 = arg_list - 2
x10197:	mov si, [bp + 8]	; 3: -117 118 8
x10200:	sub si, 2	; 3: -125 -18 2

scanFormat$243:	; £temporary1731 = int_to_int £temporary1730 (Signed_Int -> Pointer)

scanFormat$244:	; £temporary1732 -> £temporary1731 = *£temporary1731

scanFormat$245:	; longDoublePtr = £temporary1732 -> £temporary1731
x10203:	mov ax, [si]	; 2: -117 4
x10205:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$246:	; £temporary1733 -> longDoublePtr = *longDoublePtr
x10208:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$247:	; push float longDoubleValue
x10211:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$248:	; pop float £temporary1733 -> longDoublePtr
x10214:	fstp qword [si]	; 2: -35 28

scanFormat$249:	; goto 258
x10216:	jmp scanFormat$258	; 2: -21 23

scanFormat$250:	; arg_list = arg_list + 2
x10218:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$251:	; £temporary1735 = arg_list - 2
x10222:	mov si, [bp + 8]	; 3: -117 118 8
x10225:	sub si, 2	; 3: -125 -18 2

scanFormat$252:	; £temporary1736 = int_to_int £temporary1735 (Signed_Int -> Pointer)

scanFormat$253:	; £temporary1737 -> £temporary1736 = *£temporary1736

scanFormat$254:	; floatPtr = £temporary1737 -> £temporary1736
x10228:	mov ax, [si]	; 2: -117 4
x10230:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$255:	; £temporary1738 -> floatPtr = *floatPtr
x10233:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$256:	; push float longDoubleValue
x10236:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$257:	; pop float £temporary1738 -> floatPtr
x10239:	fstp dword [si]	; 2: -39 28

scanFormat$258:	; percent = 0
x10241:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$259:	; goto 323
x10246:	jmp scanFormat$323	; 3: -23 -1 0

scanFormat$260:	; not = 0
x10249:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$261:	; ++index
x10254:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$262:	; £temporary1744 = format + index
x10257:	mov si, [bp + 6]	; 3: -117 118 6
x10260:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$263:	; £temporary1743 -> £temporary1744 = *£temporary1744

scanFormat$264:	; if £temporary1743 -> £temporary1744 != 94 goto 267
x10263:	cmp byte [si], 94	; 3: -128 60 94
x10266:	jne scanFormat$267	; 2: 117 12

scanFormat$265:	; not = 1
x10268:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$266:	; startIndex = index + 1
x10273:	mov ax, [bp + 31]	; 3: -117 70 31
x10276:	inc ax	; 1: 64
x10277:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$267:	; £temporary1748 = format + index
x10280:	mov si, [bp + 6]	; 3: -117 118 6
x10283:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$268:	; £temporary1747 -> £temporary1748 = *£temporary1748

scanFormat$269:	; if £temporary1747 -> £temporary1748 == 93 goto 272
x10286:	cmp byte [si], 93	; 3: -128 60 93
x10289:	je scanFormat$272	; 2: 116 5

scanFormat$270:	; ++index
x10291:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$271:	; goto 267
x10294:	jmp scanFormat$267	; 2: -21 -16

scanFormat$272:	; £temporary1752 = format + index
x10296:	mov si, [bp + 6]	; 3: -117 118 6
x10299:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$273:	; £temporary1751 -> £temporary1752 = *£temporary1752

scanFormat$274:	; £temporary1751 -> £temporary1752 = 0
x10302:	mov byte [si], 0	; 3: -58 4 0

scanFormat$275:	; if star != 0 goto 291
x10305:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10309:	jne scanFormat$291	; 2: 117 53

scanFormat$276:	; arg_list = arg_list + 2
x10311:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$277:	; £temporary1756 = arg_list - 2
x10315:	mov si, [bp + 8]	; 3: -117 118 8
x10318:	sub si, 2	; 3: -125 -18 2

scanFormat$278:	; £temporary1757 = int_to_int £temporary1756 (Signed_Int -> Pointer)

scanFormat$279:	; £temporary1758 -> £temporary1757 = *£temporary1757

scanFormat$280:	; string = £temporary1758 -> £temporary1757
x10321:	mov ax, [si]	; 2: -117 4
x10323:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$281:	; call header integral zero 0 stack zero 0

scanFormat$282:	; parameter string, offset 6
x10326:	mov ax, [bp + 61]	; 3: -117 70 61
x10329:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$283:	; £temporary1760 = format + startIndex
x10332:	mov si, [bp + 6]	; 3: -117 118 6
x10335:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$284:	; £temporary1759 -> £temporary1760 = *£temporary1760

scanFormat$285:	; £temporary1761 = &£temporary1759 -> £temporary1760

scanFormat$286:	; parameter £temporary1761, offset 8
x10338:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$287:	; parameter not, offset 10
x10341:	mov ax, [bp + 57]	; 3: -117 70 57
x10344:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$288:	; call function noellipse-noellipse scanPattern
x10347:	mov word [bp + 63], scanFormat$289	; 5: -57 70 63 121 40
x10352:	mov [bp + 65], bp	; 3: -119 110 65
x10355:	add bp, 63	; 3: -125 -59 63
x10358:	jmp scanPattern	; 3: -23 -2 9

scanFormat$289:	; post call

scanFormat$290:	; goto 323
x10361:	jmp scanFormat$323	; 3: -23 -116 0

scanFormat$291:	; call header integral zero 0 stack zero 0

scanFormat$292:	; parameter 0, offset 6
x10364:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$293:	; £temporary1764 = format + startIndex
x10369:	mov si, [bp + 6]	; 3: -117 118 6
x10372:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$294:	; £temporary1763 -> £temporary1764 = *£temporary1764

scanFormat$295:	; £temporary1765 = &£temporary1763 -> £temporary1764

scanFormat$296:	; parameter £temporary1765, offset 8
x10375:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$297:	; parameter not, offset 10
x10378:	mov ax, [bp + 57]	; 3: -117 70 57
x10381:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$298:	; call function noellipse-noellipse scanPattern
x10384:	mov word [bp + 61], scanFormat$299	; 5: -57 70 61 -98 40
x10389:	mov [bp + 63], bp	; 3: -119 110 63
x10392:	add bp, 61	; 3: -125 -59 61
x10395:	jmp scanPattern	; 3: -23 -39 9

scanFormat$299:	; post call

scanFormat$300:	; goto 323
x10398:	jmp scanFormat$323	; 2: -21 104

scanFormat$301:	; arg_list = arg_list + 2
x10400:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$302:	; £temporary1768 = arg_list - 2
x10404:	mov si, [bp + 8]	; 3: -117 118 8
x10407:	sub si, 2	; 3: -125 -18 2

scanFormat$303:	; £temporary1769 = int_to_int £temporary1768 (Signed_Int -> Pointer)

scanFormat$304:	; £temporary1770 -> £temporary1769 = *£temporary1769

scanFormat$305:	; charsPtr = £temporary1770 -> £temporary1769
x10410:	mov ax, [si]	; 2: -117 4
x10412:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$306:	; £temporary1771 -> charsPtr = *charsPtr
x10415:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$307:	; £temporary1771 -> charsPtr = g_inChars
x10418:	mov ax, [g_inChars]	; 3: -95 31 41
x10421:	mov [si], ax	; 2: -119 4

scanFormat$308:	; percent = 0
x10423:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$309:	; goto 323
x10428:	jmp scanFormat$323	; 2: -21 74

scanFormat$310:	; call header integral zero 0 stack zero 0

scanFormat$311:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x10430:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 33 41

scanFormat$312:	; £temporary1772 = int_to_int c (Signed_Char -> Signed_Int)
x10435:	mov al, [bp + 10]	; 3: -118 70 10
x10438:	and ax, 255	; 3: 37 -1 0
x10441:	cmp al, 0	; 2: 60 0
x10443:	jge scanFormat$313	; 2: 125 4
x10445:	neg al	; 2: -10 -40
x10447:	neg ax	; 2: -9 -40

scanFormat$313:	; parameter £temporary1772, offset 8
x10449:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$314:	; call function noellipse-ellipse printf, extra 0
x10452:	mov word [bp + 57], scanFormat$315	; 5: -57 70 57 -25 40
x10457:	mov [bp + 59], bp	; 3: -119 110 59
x10460:	add bp, 57	; 3: -125 -59 57
x10463:	mov di, bp	; 2: -119 -17
x10465:	add di, 2	; 3: -125 -57 2
x10468:	jmp printf	; 3: -23 -49 -38

scanFormat$315:	; post call

scanFormat$316:	; goto 323
x10471:	jmp scanFormat$323	; 2: -21 31

scanFormat$317:	; if c != 37 goto 323
x10473:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x10477:	jne scanFormat$323	; 2: 117 25

scanFormat$318:	; percent = 1
x10479:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$319:	; shortInt = 0
x10484:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$320:	; longIntOrDouble = 0
x10489:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$321:	; longDouble = 0
x10494:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$322:	; star = 0
x10499:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$323:	; ++index
x10504:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$324:	; goto 8
x10507:	jmp scanFormat$8	; 3: -23 23 -5

scanFormat$325:	; return_value = g_inCount
x10510:	mov bx, [g_inCount]	; 4: -117 30 29 41

scanFormat$326:	; return
x10514:	mov ax, [bp]	; 3: -117 70 0
x10517:	mov di, [bp + 4]	; 3: -117 126 4
x10520:	mov bp, [bp + 2]	; 3: -117 110 2
x10523:	jmp ax	; 2: -1 -32

scanFormat$327:	; function end scanFormat

g_inCount:
x10525:	db 0, 0	; 2: 0 0

g_inChars:
x10527:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x10529:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x10550:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x10554:	mov ax, [g_inStatus]	; 3: -95 -9 35
x10557:	cmp ax, 0	; 3: -125 -8 0
x10560:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x10562:	cmp ax, 1	; 3: -125 -8 1
x10565:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x10567:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1326 = int_to_int g_inDevice (Pointer -> Pointer)
x10569:	mov ax, [g_inDevice]	; 3: -95 -7 35

scanChar$6:	; stream = £temporary1326
x10572:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1327 -> stream = *stream, offset 2
x10575:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1327 -> stream
x10578:	mov ax, [si + 2]	; 3: -117 68 2
x10581:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x10584:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x10586:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x10589:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1332 = &c
x10592:	mov dx, bp	; 2: -119 -22
x10594:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1332

scanChar$14:	; interrupt 33
x10597:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x10599:	inc word [g_inChars]	; 4: -1 6 31 41

scanChar$16:	; return_value = c
x10603:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x10606:	mov ax, [bp]	; 3: -117 70 0
x10609:	mov di, [bp + 4]	; 3: -117 126 4
x10612:	mov bp, [bp + 2]	; 3: -117 110 2
x10615:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1334 = int_to_int g_inDevice (Pointer -> Pointer)
x10617:	mov ax, [g_inDevice]	; 3: -95 -7 35

scanChar$19:	; inString = £temporary1334
x10620:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1335 = g_inChars
x10623:	mov ax, [g_inChars]	; 3: -95 31 41

scanChar$21:	; ++g_inChars
x10626:	inc word [g_inChars]	; 4: -1 6 31 41

scanChar$22:	; £temporary1337 = inString + £temporary1335
x10630:	mov si, [bp + 11]	; 3: -117 118 11
x10633:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1336 -> £temporary1337 = *£temporary1337

scanChar$24:	; return_value = £temporary1336 -> £temporary1337
x10635:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x10637:	mov ax, [bp]	; 3: -117 70 0
x10640:	mov di, [bp + 4]	; 3: -117 126 4
x10643:	mov bp, [bp + 2]	; 3: -117 110 2
x10646:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x10648:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x10650:	mov ax, [bp]	; 3: -117 70 0
x10653:	mov di, [bp + 4]	; 3: -117 126 4
x10656:	mov bp, [bp + 2]	; 3: -117 110 2
x10659:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x10661:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x10666:	mov word [bp + 12], scanString$3	; 5: -57 70 12 -72 41
x10671:	mov [bp + 14], bp	; 3: -119 110 14
x10674:	add bp, 12	; 3: -125 -59 12
x10677:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1389 = return_value

scanString$5:	; input = £temporary1389
x10680:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x10683:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1390 = int_to_int input (Signed_Char -> Signed_Int)
x10688:	mov al, [bp + 12]	; 3: -118 70 12
x10691:	and ax, 255	; 3: 37 -1 0
x10694:	cmp al, 0	; 2: 60 0
x10696:	jge scanString$9	; 2: 125 4
x10698:	neg al	; 2: -10 -40
x10700:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1390, offset 6
x10702:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x10705:	mov word [bp + 15], scanString$11	; 5: -57 70 15 -33 41
x10710:	mov [bp + 17], bp	; 3: -119 110 17
x10713:	add bp, 15	; 3: -125 -59 15
x10716:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1391 = return_value

scanString$13:	; if £temporary1391 == 0 goto 20
x10719:	cmp bx, 0	; 3: -125 -5 0
x10722:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x10724:	mov word [bp + 15], scanString$16	; 5: -57 70 15 -14 41
x10729:	mov [bp + 17], bp	; 3: -119 110 17
x10732:	add bp, 15	; 3: -125 -59 15
x10735:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1392 = return_value

scanString$18:	; input = £temporary1392
x10738:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x10741:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x10743:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x10747:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x10751:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10755:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1396 = int_to_int input (Signed_Char -> Signed_Int)
x10757:	mov al, [bp + 12]	; 3: -118 70 12
x10760:	and ax, 255	; 3: 37 -1 0
x10763:	cmp al, 0	; 2: 60 0
x10765:	jge scanString$24	; 2: 125 4
x10767:	neg al	; 2: -10 -40
x10769:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1396, offset 6
x10771:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x10774:	mov word [bp + 15], scanString$26	; 5: -57 70 15 36 42
x10779:	mov [bp + 17], bp	; 3: -119 110 17
x10782:	add bp, 15	; 3: -125 -59 15
x10785:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1397 = return_value

scanString$28:	; if £temporary1397 != 0 goto 45
x10788:	cmp bx, 0	; 3: -125 -5 0
x10791:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1400 = int_to_int input (Signed_Char -> Signed_Int)
x10793:	mov al, [bp + 12]	; 3: -118 70 12
x10796:	and ax, 255	; 3: 37 -1 0
x10799:	cmp al, 0	; 2: 60 0
x10801:	jge scanString$30	; 2: 125 4
x10803:	neg al	; 2: -10 -40
x10805:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1400 == -1 goto 45
x10807:	cmp ax, -1	; 3: -125 -8 -1
x10810:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x10812:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10816:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1405 = index
x10818:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x10821:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1407 = string + £temporary1405
x10824:	mov si, [bp + 6]	; 3: -117 118 6
x10827:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1406 -> £temporary1407 = *£temporary1407

scanString$36:	; £temporary1406 -> £temporary1407 = input
x10829:	mov al, [bp + 12]	; 3: -118 70 12
x10832:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x10834:	mov word [bp + 15], scanString$39	; 5: -57 70 15 96 42
x10839:	mov [bp + 17], bp	; 3: -119 110 17
x10842:	add bp, 15	; 3: -125 -59 15
x10845:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1408 = return_value

scanString$41:	; input = £temporary1408
x10848:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x10851:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x10856:	inc word [g_inChars]	; 4: -1 6 31 41

scanString$44:	; goto 22
x10860:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1411 = string + index
x10862:	mov si, [bp + 6]	; 3: -117 118 6
x10865:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1410 -> £temporary1411 = *£temporary1411

scanString$47:	; £temporary1410 -> £temporary1411 = 0
x10868:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x10871:	inc word [g_inChars]	; 4: -1 6 31 41

scanString$49:	; goto 126
x10875:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1413 = precision
x10878:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x10881:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1413 <= 0 goto 76
x10884:	cmp ax, 0	; 3: -125 -8 0
x10887:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1415 = int_to_int input (Signed_Char -> Signed_Int)
x10889:	mov al, [bp + 12]	; 3: -118 70 12
x10892:	and ax, 255	; 3: 37 -1 0
x10895:	cmp al, 0	; 2: 60 0
x10897:	jge scanString$55	; 2: 125 4
x10899:	neg al	; 2: -10 -40
x10901:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1415, offset 6
x10903:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x10906:	mov word [bp + 15], scanString$57	; 5: -57 70 15 -88 42
x10911:	mov [bp + 17], bp	; 3: -119 110 17
x10914:	add bp, 15	; 3: -125 -59 15
x10917:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1416 = return_value

scanString$59:	; if £temporary1416 != 0 goto 76
x10920:	cmp bx, 0	; 3: -125 -5 0
x10923:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1419 = int_to_int input (Signed_Char -> Signed_Int)
x10925:	mov al, [bp + 12]	; 3: -118 70 12
x10928:	and ax, 255	; 3: 37 -1 0
x10931:	cmp al, 0	; 2: 60 0
x10933:	jge scanString$61	; 2: 125 4
x10935:	neg al	; 2: -10 -40
x10937:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1419 == -1 goto 76
x10939:	cmp ax, -1	; 3: -125 -8 -1
x10942:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x10944:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10948:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1425 = index
x10950:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x10953:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1427 = string + £temporary1425
x10956:	mov si, [bp + 6]	; 3: -117 118 6
x10959:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1426 -> £temporary1427 = *£temporary1427

scanString$67:	; £temporary1426 -> £temporary1427 = input
x10961:	mov al, [bp + 12]	; 3: -118 70 12
x10964:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x10966:	mov word [bp + 15], scanString$70	; 5: -57 70 15 -28 42
x10971:	mov [bp + 17], bp	; 3: -119 110 17
x10974:	add bp, 15	; 3: -125 -59 15
x10977:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1428 = return_value

scanString$72:	; input = £temporary1428
x10980:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x10983:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x10988:	inc word [g_inChars]	; 4: -1 6 31 41

scanString$75:	; goto 50
x10992:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x10994:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10998:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1432 = string + index
x11002:	mov si, [bp + 6]	; 3: -117 118 6
x11005:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1431 -> £temporary1432 = *£temporary1432

scanString$79:	; £temporary1431 -> £temporary1432 = 0
x11008:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x11011:	inc word [g_inChars]	; 4: -1 6 31 41

scanString$81:	; goto 126
x11015:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x11018:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11022:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1435 = int_to_int input (Signed_Char -> Signed_Int)
x11024:	mov al, [bp + 12]	; 3: -118 70 12
x11027:	and ax, 255	; 3: 37 -1 0
x11030:	cmp al, 0	; 2: 60 0
x11032:	jge scanString$85	; 2: 125 4
x11034:	neg al	; 2: -10 -40
x11036:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1435, offset 6
x11038:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x11041:	mov word [bp + 15], scanString$87	; 5: -57 70 15 47 43
x11046:	mov [bp + 17], bp	; 3: -119 110 17
x11049:	add bp, 15	; 3: -125 -59 15
x11052:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1436 = return_value

scanString$89:	; if £temporary1436 != 0 goto 101
x11055:	cmp bx, 0	; 3: -125 -5 0
x11058:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1439 = int_to_int input (Signed_Char -> Signed_Int)
x11060:	mov al, [bp + 12]	; 3: -118 70 12
x11063:	and ax, 255	; 3: 37 -1 0
x11066:	cmp al, 0	; 2: 60 0
x11068:	jge scanString$91	; 2: 125 4
x11070:	neg al	; 2: -10 -40
x11072:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1439 == -1 goto 101
x11074:	cmp ax, -1	; 3: -125 -8 -1
x11077:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x11079:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11083:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x11085:	mov word [bp + 15], scanString$95	; 5: -57 70 15 91 43
x11090:	mov [bp + 17], bp	; 3: -119 110 17
x11093:	add bp, 15	; 3: -125 -59 15
x11096:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1444 = return_value

scanString$97:	; input = £temporary1444
x11099:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x11102:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x11107:	inc word [g_inChars]	; 4: -1 6 31 41

scanString$100:	; goto 83
x11111:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x11113:	inc word [g_inChars]	; 4: -1 6 31 41

scanString$102:	; goto 126
x11117:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1447 = precision
x11119:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x11122:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1447 <= 0 goto 124
x11125:	cmp ax, 0	; 3: -125 -8 0
x11128:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1449 = int_to_int input (Signed_Char -> Signed_Int)
x11130:	mov al, [bp + 12]	; 3: -118 70 12
x11133:	and ax, 255	; 3: 37 -1 0
x11136:	cmp al, 0	; 2: 60 0
x11138:	jge scanString$108	; 2: 125 4
x11140:	neg al	; 2: -10 -40
x11142:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1449, offset 6
x11144:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x11147:	mov word [bp + 15], scanString$110	; 5: -57 70 15 -103 43
x11152:	mov [bp + 17], bp	; 3: -119 110 17
x11155:	add bp, 15	; 3: -125 -59 15
x11158:	nop	; 1: -112
x11159:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1450 = return_value

scanString$112:	; if £temporary1450 != 0 goto 124
x11161:	cmp bx, 0	; 3: -125 -5 0
x11164:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1453 = int_to_int input (Signed_Char -> Signed_Int)
x11166:	mov al, [bp + 12]	; 3: -118 70 12
x11169:	and ax, 255	; 3: 37 -1 0
x11172:	cmp al, 0	; 2: 60 0
x11174:	jge scanString$114	; 2: 125 4
x11176:	neg al	; 2: -10 -40
x11178:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1453 == -1 goto 124
x11180:	cmp ax, -1	; 3: -125 -8 -1
x11183:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x11185:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11189:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x11191:	mov word [bp + 15], scanString$118	; 5: -57 70 15 -59 43
x11196:	mov [bp + 17], bp	; 3: -119 110 17
x11199:	add bp, 15	; 3: -125 -59 15
x11202:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1459 = return_value

scanString$120:	; input = £temporary1459
x11205:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x11208:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x11213:	inc word [g_inChars]	; 4: -1 6 31 41

scanString$123:	; goto 103
x11217:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x11219:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11223:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x11225:	inc word [g_inChars]	; 4: -1 6 31 41

scanString$126:	; if found == 0 goto 128
x11229:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x11233:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x11235:	inc word [g_inCount]	; 4: -1 6 29 41

scanString$128:	; return
x11239:	mov ax, [bp]	; 3: -117 70 0
x11242:	mov di, [bp + 4]	; 3: -117 126 4
x11245:	mov bp, [bp + 2]	; 3: -117 110 2
x11248:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x11250:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x11254:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x11256:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x11260:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x11262:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x11266:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x11268:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x11272:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x11274:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x11278:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x11280:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x11284:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary408 = 1
x11286:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x11289:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary408 = 0
x11291:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary408

isspace$10:	; return
x11294:	mov ax, [bp]	; 3: -117 70 0
x11297:	mov di, [bp + 4]	; 3: -117 126 4
x11300:	mov bp, [bp + 2]	; 3: -117 110 2
x11303:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x11305:	mov dword [bp + 6], 0	; 8: 102 -57 70 6 0 0 0 0

scanLongInt$1:	; minus = 0
x11313:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanLongInt$2:	; found = 0
x11318:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x11323:	mov word [bp + 14], scanLongInt$5	; 5: -57 70 14 73 44
x11328:	mov [bp + 16], bp	; 3: -119 110 16
x11331:	add bp, 14	; 3: -125 -59 14
x11334:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1486 = return_value

scanLongInt$7:	; input = £temporary1486
x11337:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1487 = int_to_int input (Signed_Char -> Signed_Int)
x11340:	mov al, [bp + 14]	; 3: -118 70 14
x11343:	and ax, 255	; 3: 37 -1 0
x11346:	cmp al, 0	; 2: 60 0
x11348:	jge scanLongInt$10	; 2: 125 4
x11350:	neg al	; 2: -10 -40
x11352:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1487, offset 6
x11354:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$11:	; call function noellipse-noellipse isspace
x11357:	mov word [bp + 15], scanLongInt$12	; 5: -57 70 15 107 44
x11362:	mov [bp + 17], bp	; 3: -119 110 17
x11365:	add bp, 15	; 3: -125 -59 15
x11368:	nop	; 1: -112
x11369:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1488 = return_value

scanLongInt$14:	; if £temporary1488 == 0 goto 21
x11371:	cmp bx, 0	; 3: -125 -5 0
x11374:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x11376:	mov word [bp + 15], scanLongInt$17	; 5: -57 70 15 126 44
x11381:	mov [bp + 17], bp	; 3: -119 110 17
x11384:	add bp, 15	; 3: -125 -59 15
x11387:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1489 = return_value

scanLongInt$19:	; input = £temporary1489
x11390:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$20:	; goto 8
x11393:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x11395:	cmp byte [bp + 14], 43	; 4: -128 126 14 43
x11399:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x11401:	mov word [bp + 15], scanLongInt$24	; 5: -57 70 15 -105 44
x11406:	mov [bp + 17], bp	; 3: -119 110 17
x11409:	add bp, 15	; 3: -125 -59 15
x11412:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1492 = return_value

scanLongInt$26:	; input = £temporary1492
x11415:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$27:	; goto 35
x11418:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x11420:	cmp byte [bp + 14], 45	; 4: -128 126 14 45
x11424:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x11426:	mov word [bp + 10], 1	; 5: -57 70 10 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x11431:	mov word [bp + 15], scanLongInt$32	; 5: -57 70 15 -75 44
x11436:	mov [bp + 17], bp	; 3: -119 110 17
x11439:	add bp, 15	; 3: -125 -59 15
x11442:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1494 = return_value

scanLongInt$34:	; input = £temporary1494
x11445:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$35:	; call header integral zero 0 stack zero 0

scanLongInt$36:	; £temporary1495 = int_to_int input (Signed_Char -> Signed_Int)
x11448:	mov al, [bp + 14]	; 3: -118 70 14
x11451:	and ax, 255	; 3: 37 -1 0
x11454:	cmp al, 0	; 2: 60 0
x11456:	jge scanLongInt$37	; 2: 125 4
x11458:	neg al	; 2: -10 -40
x11460:	neg ax	; 2: -9 -40

scanLongInt$37:	; parameter £temporary1495, offset 6
x11462:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$38:	; call function noellipse-noellipse isdigit
x11465:	mov word [bp + 15], scanLongInt$39	; 5: -57 70 15 -41 44
x11470:	mov [bp + 17], bp	; 3: -119 110 17
x11473:	add bp, 15	; 3: -125 -59 15
x11476:	jmp isdigit	; 3: -23 109 -11

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1496 = return_value

scanLongInt$41:	; if £temporary1496 == 0 goto 53
x11479:	cmp bx, 0	; 3: -125 -5 0
x11482:	je scanLongInt$53	; 2: 116 66

scanLongInt$42:	; £temporary1497 = longValue * 10
x11484:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11488:	xor edx, edx	; 3: 102 49 -46
x11491:	imul dword [int4$10#]	; 5: 102 -9 46 -66 19

scanLongInt$43:	; £temporary1498 = input - 48
x11496:	mov bl, [bp + 14]	; 3: -118 94 14
x11499:	sub bl, 48	; 3: -128 -21 48

scanLongInt$44:	; £temporary1499 = int_to_int £temporary1498 (Signed_Char -> Signed_Long_Int)
x11502:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0
x11509:	cmp bl, 0	; 3: -128 -5 0
x11512:	jge scanLongInt$45	; 2: 125 5
x11514:	neg bl	; 2: -10 -37
x11516:	neg ebx	; 3: 102 -9 -37

scanLongInt$45:	; longValue = £temporary1497 + £temporary1499
x11519:	add eax, ebx	; 3: 102 1 -40
x11522:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$46:	; call header integral zero 0 stack zero 0

scanLongInt$47:	; call function noellipse-noellipse scanChar
x11526:	mov word [bp + 15], scanLongInt$48	; 5: -57 70 15 20 45
x11531:	mov [bp + 17], bp	; 3: -119 110 17
x11534:	add bp, 15	; 3: -125 -59 15
x11537:	jmp scanChar	; 3: -23 34 -4

scanLongInt$48:	; post call

scanLongInt$49:	; £temporary1501 = return_value

scanLongInt$50:	; input = £temporary1501
x11540:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$51:	; found = 1
x11543:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$52:	; goto 35
x11548:	jmp scanLongInt$35	; 2: -21 -102

scanLongInt$53:	; if minus == 0 goto 56
x11550:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11554:	je scanLongInt$56	; 2: 116 11

scanLongInt$54:	; £temporary1503 = -longValue
x11556:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11560:	neg eax	; 3: 102 -9 -40

scanLongInt$55:	; longValue = £temporary1503
x11563:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$56:	; if found == 0 goto 58
x11567:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x11571:	je scanLongInt$58	; 2: 116 4

scanLongInt$57:	; ++g_inCount
x11573:	inc word [g_inCount]	; 4: -1 6 29 41

scanLongInt$58:	; call header integral zero 0 stack zero 0

scanLongInt$59:	; parameter input, offset 6
x11577:	mov al, [bp + 14]	; 3: -118 70 14
x11580:	mov [bp + 21], al	; 3: -120 70 21

scanLongInt$60:	; call function noellipse-noellipse unscanChar
x11583:	mov word [bp + 15], scanLongInt$61	; 5: -57 70 15 77 45
x11588:	mov [bp + 17], bp	; 3: -119 110 17
x11591:	add bp, 15	; 3: -125 -59 15
x11594:	nop	; 1: -112
x11595:	jmp unscanChar	; 2: -21 15

scanLongInt$61:	; post call

scanLongInt$62:	; return_value = longValue
x11597:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

scanLongInt$63:	; return
x11601:	mov ax, [bp]	; 3: -117 70 0
x11604:	mov di, [bp + 4]	; 3: -117 126 4
x11607:	mov bp, [bp + 2]	; 3: -117 110 2
x11610:	jmp ax	; 2: -1 -32

scanLongInt$64:	; function end scanLongInt

unscanChar:	; case g_inStatus == 0 goto 4
x11612:	mov ax, [g_inStatus]	; 3: -95 -9 35
x11615:	cmp ax, 0	; 3: -125 -8 0
x11618:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x11620:	cmp ax, 1	; 3: -125 -8 1
x11623:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x11625:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x11627:	dec word [g_inChars]	; 4: -1 14 31 41

unscanChar$5:	; goto 7
x11631:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x11633:	dec word [g_inChars]	; 4: -1 14 31 41

unscanChar$7:	; return
x11637:	mov ax, [bp]	; 3: -117 70 0
x11640:	mov di, [bp + 4]	; 3: -117 126 4
x11643:	mov bp, [bp + 2]	; 3: -117 110 2
x11646:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x11648:	mov dword [bp + 10], 0	; 8: 102 -57 70 10 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x11656:	mov word [bp + 18], scanUnsignedLongInt$3	; 5: -57 70 18 -106 45
x11661:	mov [bp + 20], bp	; 3: -119 110 20
x11664:	add bp, 18	; 3: -125 -59 18
x11667:	jmp scanChar	; 3: -23 -96 -5

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1511 = return_value

scanUnsignedLongInt$5:	; input = £temporary1511
x11670:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$6:	; found = 1
x11673:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1512 = int_to_int input (Signed_Char -> Signed_Int)
x11678:	mov al, [bp + 18]	; 3: -118 70 18
x11681:	and ax, 255	; 3: 37 -1 0
x11684:	cmp al, 0	; 2: 60 0
x11686:	jge scanUnsignedLongInt$9	; 2: 125 4
x11688:	neg al	; 2: -10 -40
x11690:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1512, offset 6
x11692:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x11695:	mov word [bp + 21], scanUnsignedLongInt$11	; 5: -57 70 21 -67 45
x11700:	mov [bp + 23], bp	; 3: -119 110 23
x11703:	add bp, 21	; 3: -125 -59 21
x11706:	jmp isspace	; 3: -23 53 -2

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1513 = return_value

scanUnsignedLongInt$13:	; if £temporary1513 == 0 goto 20
x11709:	cmp bx, 0	; 3: -125 -5 0
x11712:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x11714:	mov word [bp + 21], scanUnsignedLongInt$16	; 5: -57 70 21 -48 45
x11719:	mov [bp + 23], bp	; 3: -119 110 23
x11722:	add bp, 21	; 3: -125 -59 21
x11725:	jmp scanChar	; 3: -23 102 -5

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1514 = return_value

scanUnsignedLongInt$18:	; input = £temporary1514
x11728:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$19:	; goto 7
x11731:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 48 goto 49
x11733:	cmp byte [bp + 18], 48	; 4: -128 126 18 48
x11737:	jne scanUnsignedLongInt$49	; 2: 117 118

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x11739:	mov word [bp + 21], scanUnsignedLongInt$23	; 5: -57 70 21 -23 45
x11744:	mov [bp + 23], bp	; 3: -119 110 23
x11747:	add bp, 21	; 3: -125 -59 21
x11750:	jmp scanChar	; 3: -23 77 -5

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1517 = return_value

scanUnsignedLongInt$25:	; input = £temporary1517
x11753:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$26:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$27:	; £temporary1518 = int_to_int input (Signed_Char -> Signed_Int)
x11756:	mov al, [bp + 18]	; 3: -118 70 18
x11759:	and ax, 255	; 3: 37 -1 0
x11762:	cmp al, 0	; 2: 60 0
x11764:	jge scanUnsignedLongInt$28	; 2: 125 4
x11766:	neg al	; 2: -10 -40
x11768:	neg ax	; 2: -9 -40

scanUnsignedLongInt$28:	; parameter £temporary1518, offset 6
x11770:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$29:	; call function noellipse-noellipse tolower
x11773:	mov word [bp + 21], scanUnsignedLongInt$30	; 5: -57 70 21 11 46
x11778:	mov [bp + 23], bp	; 3: -119 110 23
x11781:	add bp, 21	; 3: -125 -59 21
x11784:	jmp tolower	; 3: -23 2 -16

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1519 = return_value

scanUnsignedLongInt$32:	; if £temporary1519 != 120 goto 44
x11787:	cmp bx, 120	; 3: -125 -5 120
x11790:	jne scanUnsignedLongInt$44	; 2: 117 42

scanUnsignedLongInt$33:	; if base != 0 goto 36
x11792:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11797:	jne scanUnsignedLongInt$36	; 2: 117 8

scanUnsignedLongInt$34:	; £temporary1525 = 16
x11799:	mov eax, 16	; 6: 102 -72 16 0 0 0

scanUnsignedLongInt$35:	; goto 37
x11805:	jmp scanUnsignedLongInt$37	; 2: -21 4

scanUnsignedLongInt$36:	; £temporary1525 = base
x11807:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$37:	; base = £temporary1525
x11811:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$38:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$39:	; call function noellipse-noellipse scanChar
x11815:	mov word [bp + 21], scanUnsignedLongInt$40	; 5: -57 70 21 53 46
x11820:	mov [bp + 23], bp	; 3: -119 110 23
x11823:	add bp, 21	; 3: -125 -59 21
x11826:	jmp scanChar	; 3: -23 1 -5

scanUnsignedLongInt$40:	; post call

scanUnsignedLongInt$41:	; £temporary1526 = return_value

scanUnsignedLongInt$42:	; input = £temporary1526
x11829:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$43:	; goto 49
x11832:	jmp scanUnsignedLongInt$49	; 2: -21 23

scanUnsignedLongInt$44:	; if base != 0 goto 47
x11834:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11839:	jne scanUnsignedLongInt$47	; 2: 117 8

scanUnsignedLongInt$45:	; £temporary1531 = 8
x11841:	mov eax, 8	; 6: 102 -72 8 0 0 0

scanUnsignedLongInt$46:	; goto 48
x11847:	jmp scanUnsignedLongInt$48	; 2: -21 4

scanUnsignedLongInt$47:	; £temporary1531 = base
x11849:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$48:	; base = £temporary1531
x11853:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$49:	; if base != 0 goto 51
x11857:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11862:	jne scanUnsignedLongInt$51	; 2: 117 8

scanUnsignedLongInt$50:	; base = 10
x11864:	mov dword [bp + 6], 10	; 8: 102 -57 70 6 10 0 0 0

scanUnsignedLongInt$51:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$52:	; £temporary1533 = int_to_int input (Signed_Char -> Signed_Int)
x11872:	mov al, [bp + 18]	; 3: -118 70 18
x11875:	and ax, 255	; 3: 37 -1 0
x11878:	cmp al, 0	; 2: 60 0
x11880:	jge scanUnsignedLongInt$53	; 2: 125 4
x11882:	neg al	; 2: -10 -40
x11884:	neg ax	; 2: -9 -40

scanUnsignedLongInt$53:	; parameter £temporary1533, offset 6
x11886:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$54:	; call function noellipse-noellipse isxdigit
x11889:	mov word [bp + 21], scanUnsignedLongInt$55	; 5: -57 70 21 127 46
x11894:	mov [bp + 23], bp	; 3: -119 110 23
x11897:	add bp, 21	; 3: -125 -59 21
x11900:	nop	; 1: -112
x11901:	jmp isxdigit	; 2: -21 127

scanUnsignedLongInt$55:	; post call

scanUnsignedLongInt$56:	; £temporary1534 = return_value

scanUnsignedLongInt$57:	; if £temporary1534 == 0 goto 74
x11903:	cmp bx, 0	; 3: -125 -5 0
x11906:	je scanUnsignedLongInt$74	; 2: 116 77

scanUnsignedLongInt$58:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$59:	; parameter input, offset 6
x11908:	mov al, [bp + 18]	; 3: -118 70 18
x11911:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$60:	; call function noellipse-noellipse digitToValue
x11914:	mov word [bp + 21], scanUnsignedLongInt$61	; 5: -57 70 21 -104 46
x11919:	mov [bp + 23], bp	; 3: -119 110 23
x11922:	add bp, 21	; 3: -125 -59 21
x11925:	jmp digitToValue	; 3: -23 -86 0

scanUnsignedLongInt$61:	; post call

scanUnsignedLongInt$62:	; £temporary1535 = return_value

scanUnsignedLongInt$63:	; digit = £temporary1535
x11928:	mov [bp + 14], ebx	; 4: 102 -119 94 14

scanUnsignedLongInt$64:	; if digit >= base goto 74
x11932:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x11936:	cmp eax, [bp + 6]	; 4: 102 59 70 6
x11940:	jae scanUnsignedLongInt$74	; 2: 115 43

scanUnsignedLongInt$65:	; £temporary1537 = unsignedLongValue * base
x11942:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x11946:	xor edx, edx	; 3: 102 49 -46
x11949:	mul dword [bp + 6]	; 4: 102 -9 102 6

scanUnsignedLongInt$66:	; unsignedLongValue = £temporary1537 + digit
x11953:	add eax, [bp + 14]	; 4: 102 3 70 14
x11957:	mov [bp + 10], eax	; 4: 102 -119 70 10

scanUnsignedLongInt$67:	; found = 1
x11961:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$68:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$69:	; call function noellipse-noellipse scanChar
x11966:	mov word [bp + 21], scanUnsignedLongInt$70	; 5: -57 70 21 -52 46
x11971:	mov [bp + 23], bp	; 3: -119 110 23
x11974:	add bp, 21	; 3: -125 -59 21
x11977:	jmp scanChar	; 3: -23 106 -6

scanUnsignedLongInt$70:	; post call

scanUnsignedLongInt$71:	; £temporary1539 = return_value

scanUnsignedLongInt$72:	; input = £temporary1539
x11980:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$73:	; goto 51
x11983:	jmp scanUnsignedLongInt$51	; 2: -21 -113

scanUnsignedLongInt$74:	; if found == 0 goto 76
x11985:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x11989:	je scanUnsignedLongInt$76	; 2: 116 4

scanUnsignedLongInt$75:	; ++g_inCount
x11991:	inc word [g_inCount]	; 4: -1 6 29 41

scanUnsignedLongInt$76:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$77:	; parameter input, offset 6
x11995:	mov al, [bp + 18]	; 3: -118 70 18
x11998:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$78:	; call function noellipse-noellipse unscanChar
x12001:	mov word [bp + 21], scanUnsignedLongInt$79	; 5: -57 70 21 -17 46
x12006:	mov [bp + 23], bp	; 3: -119 110 23
x12009:	add bp, 21	; 3: -125 -59 21
x12012:	jmp unscanChar	; 3: -23 109 -2

scanUnsignedLongInt$79:	; post call

scanUnsignedLongInt$80:	; return_value = unsignedLongValue
x12015:	mov ebx, [bp + 10]	; 4: 102 -117 94 10

scanUnsignedLongInt$81:	; return
x12019:	mov ax, [bp]	; 3: -117 70 0
x12022:	mov di, [bp + 4]	; 3: -117 126 4
x12025:	mov bp, [bp + 2]	; 3: -117 110 2
x12028:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$82:	; function end scanUnsignedLongInt

isxdigit:	; call header integral zero 0 stack zero 0

isxdigit$1:	; parameter c, offset 6
x12030:	mov ax, [bp + 6]	; 3: -117 70 6
x12033:	mov [bp + 14], ax	; 3: -119 70 14

isxdigit$2:	; call function noellipse-noellipse isdigit
x12036:	mov word [bp + 8], isxdigit$3	; 5: -57 70 8 18 47
x12041:	mov [bp + 10], bp	; 3: -119 110 10
x12044:	add bp, 8	; 3: -125 -59 8
x12047:	jmp isdigit	; 3: -23 50 -13

isxdigit$3:	; post call

isxdigit$4:	; £temporary361 = return_value

isxdigit$5:	; if £temporary361 != 0 goto 10
x12050:	cmp bx, 0	; 3: -125 -5 0
x12053:	jne isxdigit$10	; 2: 117 24

isxdigit$6:	; if c < 97 goto 8
x12055:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12059:	jl isxdigit$8	; 2: 124 6

isxdigit$7:	; if c <= 102 goto 10
x12061:	cmp word [bp + 6], 102	; 4: -125 126 6 102
x12065:	jle isxdigit$10	; 2: 126 12

isxdigit$8:	; if c < 65 goto 12
x12067:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x12071:	jl isxdigit$12	; 2: 124 11

isxdigit$9:	; if c > 70 goto 12
x12073:	cmp word [bp + 6], 70	; 4: -125 126 6 70
x12077:	jg isxdigit$12	; 2: 127 5

isxdigit$10:	; £temporary371 = 1
x12079:	mov bx, 1	; 3: -69 1 0

isxdigit$11:	; goto 13
x12082:	jmp isxdigit$13	; 2: -21 3

isxdigit$12:	; £temporary371 = 0
x12084:	mov bx, 0	; 3: -69 0 0

isxdigit$13:	; return_value = £temporary371

isxdigit$14:	; return
x12087:	mov ax, [bp]	; 3: -117 70 0
x12090:	mov di, [bp + 4]	; 3: -117 126 4
x12093:	mov bp, [bp + 2]	; 3: -117 110 2
x12096:	jmp ax	; 2: -1 -32

isxdigit$15:	; function end isxdigit

digitToValue:	; call header integral zero 0 stack zero 0

digitToValue$1:	; £temporary1470 = int_to_int input (Signed_Char -> Signed_Int)
x12098:	mov al, [bp + 6]	; 3: -118 70 6
x12101:	and ax, 255	; 3: 37 -1 0
x12104:	cmp al, 0	; 2: 60 0
x12106:	jge digitToValue$2	; 2: 125 4
x12108:	neg al	; 2: -10 -40
x12110:	neg ax	; 2: -9 -40

digitToValue$2:	; parameter £temporary1470, offset 6
x12112:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$3:	; call function noellipse-noellipse isdigit
x12115:	mov word [bp + 7], digitToValue$4	; 5: -57 70 7 97 47
x12120:	mov [bp + 9], bp	; 3: -119 110 9
x12123:	add bp, 7	; 3: -125 -59 7
x12126:	jmp isdigit	; 3: -23 -29 -14

digitToValue$4:	; post call

digitToValue$5:	; £temporary1471 = return_value

digitToValue$6:	; if £temporary1471 == 0 goto 11
x12129:	cmp bx, 0	; 3: -125 -5 0
x12132:	je digitToValue$11	; 2: 116 24

digitToValue$7:	; £temporary1472 = input - 48
x12134:	mov bl, [bp + 6]	; 3: -118 94 6
x12137:	sub bl, 48	; 3: -128 -21 48

digitToValue$8:	; £temporary1473 = int_to_int £temporary1472 (Signed_Char -> Unsigned_Long_Int)
x12140:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$9:	; return_value = £temporary1473

digitToValue$10:	; return
x12147:	mov ax, [bp]	; 3: -117 70 0
x12150:	mov di, [bp + 4]	; 3: -117 126 4
x12153:	mov bp, [bp + 2]	; 3: -117 110 2
x12156:	jmp ax	; 2: -1 -32

digitToValue$11:	; call header integral zero 0 stack zero 0

digitToValue$12:	; £temporary1474 = int_to_int input (Signed_Char -> Signed_Int)
x12158:	mov al, [bp + 6]	; 3: -118 70 6
x12161:	and ax, 255	; 3: 37 -1 0
x12164:	cmp al, 0	; 2: 60 0
x12166:	jge digitToValue$13	; 2: 125 4
x12168:	neg al	; 2: -10 -40
x12170:	neg ax	; 2: -9 -40

digitToValue$13:	; parameter £temporary1474, offset 6
x12172:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$14:	; call function noellipse-noellipse islower
x12175:	mov word [bp + 7], digitToValue$15	; 5: -57 70 7 -99 47
x12180:	mov [bp + 9], bp	; 3: -119 110 9
x12183:	add bp, 7	; 3: -125 -59 7
x12186:	nop	; 1: -112
x12187:	jmp islower	; 2: -21 61

digitToValue$15:	; post call

digitToValue$16:	; £temporary1475 = return_value

digitToValue$17:	; if £temporary1475 == 0 goto 23
x12189:	cmp bx, 0	; 3: -125 -5 0
x12192:	je digitToValue$23	; 2: 116 28

digitToValue$18:	; £temporary1476 = input - 97
x12194:	mov bl, [bp + 6]	; 3: -118 94 6
x12197:	sub bl, 97	; 3: -128 -21 97

digitToValue$19:	; £temporary1477 = int_to_int £temporary1476 (Signed_Char -> Unsigned_Long_Int)
x12200:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$20:	; £temporary1478 = £temporary1477 + 10
x12207:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$21:	; return_value = £temporary1478

digitToValue$22:	; return
x12211:	mov ax, [bp]	; 3: -117 70 0
x12214:	mov di, [bp + 4]	; 3: -117 126 4
x12217:	mov bp, [bp + 2]	; 3: -117 110 2
x12220:	jmp ax	; 2: -1 -32

digitToValue$23:	; £temporary1479 = input - 65
x12222:	mov bl, [bp + 6]	; 3: -118 94 6
x12225:	sub bl, 65	; 3: -128 -21 65

digitToValue$24:	; £temporary1480 = int_to_int £temporary1479 (Signed_Char -> Unsigned_Long_Int)
x12228:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$25:	; £temporary1481 = £temporary1480 + 10
x12235:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$26:	; return_value = £temporary1481

digitToValue$27:	; return
x12239:	mov ax, [bp]	; 3: -117 70 0
x12242:	mov di, [bp + 4]	; 3: -117 126 4
x12245:	mov bp, [bp + 2]	; 3: -117 110 2
x12248:	jmp ax	; 2: -1 -32

digitToValue$28:	; function end digitToValue

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x12250:	mov word [bp + 8], islower$2	; 5: -57 70 8 -24 47
x12255:	mov [bp + 10], bp	; 3: -119 110 10
x12258:	add bp, 8	; 3: -125 -59 8
x12261:	jmp localeconv	; 3: -23 53 -27

islower$2:	; post call

islower$3:	; £temporary309 = return_value

islower$4:	; localeConvPtr = £temporary309
x12264:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x12267:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12271:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary311 -> localeConvPtr = *localeConvPtr, offset 12
x12273:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary311 -> localeConvPtr, offset 6
x12276:	mov ax, [si + 12]	; 3: -117 68 12
x12279:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x12282:	mov ax, [bp + 6]	; 3: -117 70 6
x12285:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x12288:	mov word [bp + 10], islower$11	; 5: -57 70 10 14 48
x12293:	mov [bp + 12], bp	; 3: -119 110 12
x12296:	add bp, 10	; 3: -125 -59 10
x12299:	jmp strchr	; 3: -23 -91 -22

islower$11:	; post call

islower$12:	; £temporary312 = return_value

islower$13:	; if £temporary312 == 0 goto 16
x12302:	cmp bx, 0	; 3: -125 -5 0
x12305:	je islower$16	; 2: 116 5

islower$14:	; £temporary314 = 1
x12307:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x12310:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary314 = 0
x12312:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary314

islower$18:	; return
x12315:	mov ax, [bp]	; 3: -117 70 0
x12318:	mov di, [bp + 4]	; 3: -117 126 4
x12321:	mov bp, [bp + 2]	; 3: -117 110 2
x12324:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x12326:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12330:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x12332:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x12336:	jg islower$23	; 2: 127 5

islower$21:	; £temporary318 = 1
x12338:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x12341:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary318 = 0
x12343:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary318

islower$25:	; return
x12346:	mov ax, [bp]	; 3: -117 70 0
x12349:	mov di, [bp + 4]	; 3: -117 126 4
x12352:	mov bp, [bp + 2]	; 3: -117 110 2
x12355:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

scanLongDouble:	; minus = 0
x12357:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x12362:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x12367:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x12369:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x12372:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x12374:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x12377:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 103 48
x12382:	mov [bp + 28], bp	; 3: -119 110 28
x12385:	add bp, 26	; 3: -125 -59 26
x12388:	jmp scanChar	; 3: -23 -49 -8

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1549 = return_value

scanLongDouble$10:	; input = £temporary1549
x12391:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1550 = int_to_int input (Signed_Char -> Signed_Int)
x12394:	mov al, [bp + 26]	; 3: -118 70 26
x12397:	and ax, 255	; 3: 37 -1 0
x12400:	cmp al, 0	; 2: 60 0
x12402:	jge scanLongDouble$13	; 2: 125 4
x12404:	neg al	; 2: -10 -40
x12406:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1550, offset 6
x12408:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x12411:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 -119 48
x12416:	mov [bp + 29], bp	; 3: -119 110 29
x12419:	add bp, 27	; 3: -125 -59 27
x12422:	jmp isspace	; 3: -23 105 -5

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1551 = return_value

scanLongDouble$17:	; if £temporary1551 == 0 goto 24
x12425:	cmp bx, 0	; 3: -125 -5 0
x12428:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x12430:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 -100 48
x12435:	mov [bp + 29], bp	; 3: -119 110 29
x12438:	add bp, 27	; 3: -125 -59 27
x12441:	jmp scanChar	; 3: -23 -102 -8

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1552 = return_value

scanLongDouble$22:	; input = £temporary1552
x12444:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x12447:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x12449:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x12453:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x12455:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 -75 48
x12460:	mov [bp + 29], bp	; 3: -119 110 29
x12463:	add bp, 27	; 3: -125 -59 27
x12466:	jmp scanChar	; 3: -23 -127 -8

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1555 = return_value

scanLongDouble$29:	; input = £temporary1555
x12469:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x12472:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x12474:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x12478:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x12480:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x12485:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 -45 48
x12490:	mov [bp + 29], bp	; 3: -119 110 29
x12493:	add bp, 27	; 3: -125 -59 27
x12496:	jmp scanChar	; 3: -23 99 -8

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1557 = return_value

scanLongDouble$37:	; input = £temporary1557
x12499:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1558 = int_to_int input (Signed_Char -> Signed_Int)
x12502:	mov al, [bp + 26]	; 3: -118 70 26
x12505:	and ax, 255	; 3: 37 -1 0
x12508:	cmp al, 0	; 2: 60 0
x12510:	jge scanLongDouble$40	; 2: 125 4
x12512:	neg al	; 2: -10 -40
x12514:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1558, offset 6
x12516:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x12519:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 -11 48
x12524:	mov [bp + 29], bp	; 3: -119 110 29
x12527:	add bp, 27	; 3: -125 -59 27
x12530:	jmp isdigit	; 3: -23 79 -15

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1559 = return_value

scanLongDouble$44:	; if £temporary1559 == 0 goto 60
x12533:	cmp bx, 0	; 3: -125 -5 0
x12536:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x12538:	fld qword [float8$10.0#]	; 4: -35 6 -29 29

scanLongDouble$46:	; push float value
x12542:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1560 = 10.0 * value
x12545:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1561 = input - 48
x12547:	mov al, [bp + 26]	; 3: -118 70 26
x12550:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1563 = int_to_int £temporary1561 (Signed_Char -> Signed_Int)
x12552:	and ax, 255	; 3: 37 -1 0
x12555:	cmp al, 0	; 2: 60 0
x12557:	jge scanLongDouble$50	; 2: 125 4
x12559:	neg al	; 2: -10 -40
x12561:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1562 = int_to_float £temporary1563 (Signed_Int -> Long_Double)
x12563:	mov [$IntegralStorage#], ax	; 3: -93 -9 17
x12566:	fild word [$IntegralStorage#]	; 4: -33 6 -9 17

scanLongDouble$51:	; £temporary1564 = £temporary1560 + £temporary1562
x12570:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x12572:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x12575:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 45 49
x12580:	mov [bp + 29], bp	; 3: -119 110 29
x12583:	add bp, 27	; 3: -125 -59 27
x12586:	jmp scanChar	; 3: -23 9 -8

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1565 = return_value

scanLongDouble$57:	; input = £temporary1565
x12589:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x12592:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x12597:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x12599:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x12603:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x12605:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 75 49
x12610:	mov [bp + 29], bp	; 3: -119 110 29
x12613:	add bp, 27	; 3: -125 -59 27
x12616:	jmp scanChar	; 3: -23 -21 -9

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1568 = return_value

scanLongDouble$65:	; input = £temporary1568
x12619:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1569 = int_to_int input (Signed_Char -> Signed_Int)
x12622:	mov al, [bp + 26]	; 3: -118 70 26
x12625:	and ax, 255	; 3: 37 -1 0
x12628:	cmp al, 0	; 2: 60 0
x12630:	jge scanLongDouble$68	; 2: 125 4
x12632:	neg al	; 2: -10 -40
x12634:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1569, offset 6
x12636:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x12639:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 109 49
x12644:	mov [bp + 29], bp	; 3: -119 110 29
x12647:	add bp, 27	; 3: -125 -59 27
x12650:	jmp isdigit	; 3: -23 -41 -16

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1570 = return_value

scanLongDouble$72:	; if £temporary1570 == 0 goto 92
x12653:	cmp bx, 0	; 3: -125 -5 0
x12656:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x12658:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x12661:	fld qword [float8$10.0#]	; 4: -35 6 -29 29

scanLongDouble$75:	; £temporary1571 = factor / 10.0
x12665:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x12667:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x12670:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x12673:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1572 = input - 48
x12676:	mov al, [bp + 26]	; 3: -118 70 26
x12679:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1574 = int_to_int £temporary1572 (Signed_Char -> Signed_Int)
x12681:	and ax, 255	; 3: 37 -1 0
x12684:	cmp al, 0	; 2: 60 0
x12686:	jge scanLongDouble$81	; 2: 125 4
x12688:	neg al	; 2: -10 -40
x12690:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1573 = int_to_float £temporary1574 (Signed_Int -> Long_Double)
x12692:	mov [$IntegralStorage#], ax	; 3: -93 -9 17
x12695:	fild word [$IntegralStorage#]	; 4: -33 6 -9 17

scanLongDouble$82:	; £temporary1575 = factor * £temporary1573
x12699:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1576 = value + £temporary1575
x12701:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x12703:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x12706:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 -80 49
x12711:	mov [bp + 29], bp	; 3: -119 110 29
x12714:	add bp, 27	; 3: -125 -59 27
x12717:	jmp scanChar	; 3: -23 -122 -9

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1577 = return_value

scanLongDouble$89:	; input = £temporary1577
x12720:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x12723:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x12728:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; parameter input, offset 6
x12730:	mov al, [bp + 26]	; 3: -118 70 26
x12733:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$94:	; call function noellipse-noellipse unscanChar
x12736:	mov word [bp + 27], scanLongDouble$95	; 5: -57 70 27 -50 49
x12741:	mov [bp + 29], bp	; 3: -119 110 29
x12744:	add bp, 27	; 3: -125 -59 27
x12747:	jmp unscanChar	; 3: -23 -114 -5

scanLongDouble$95:	; post call

scanLongDouble$96:	; call header integral zero 0 stack zero 0

scanLongDouble$97:	; £temporary1580 = int_to_int input (Signed_Char -> Signed_Int)
x12750:	mov al, [bp + 26]	; 3: -118 70 26
x12753:	and ax, 255	; 3: 37 -1 0
x12756:	cmp al, 0	; 2: 60 0
x12758:	jge scanLongDouble$98	; 2: 125 4
x12760:	neg al	; 2: -10 -40
x12762:	neg ax	; 2: -9 -40

scanLongDouble$98:	; parameter £temporary1580, offset 6
x12764:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$99:	; call function noellipse-noellipse tolower
x12767:	mov word [bp + 27], scanLongDouble$100	; 5: -57 70 27 -19 49
x12772:	mov [bp + 29], bp	; 3: -119 110 29
x12775:	add bp, 27	; 3: -125 -59 27
x12778:	jmp tolower	; 3: -23 32 -20

scanLongDouble$100:	; post call

scanLongDouble$101:	; £temporary1581 = return_value

scanLongDouble$102:	; if £temporary1581 != 101 goto 121
x12781:	cmp bx, 101	; 3: -125 -5 101
x12784:	jne scanLongDouble$121	; 2: 117 75

scanLongDouble$103:	; call header integral zero 0 stack zero 0

scanLongDouble$104:	; call function noellipse-noellipse scanLongInt
x12786:	mov word [bp + 27], scanLongDouble$105	; 5: -57 70 27 0 50
x12791:	mov [bp + 29], bp	; 3: -119 110 29
x12794:	add bp, 27	; 3: -125 -59 27
x12797:	jmp scanLongInt	; 3: -23 41 -6

scanLongDouble$105:	; post call

scanLongDouble$106:	; £temporary1583 = return_value

scanLongDouble$107:	; £temporary1584 = int_to_float £temporary1583 (Signed_Long_Int -> Double)
x12800:	mov [$IntegralStorage#], ebx	; 5: 102 -119 30 -9 17
x12805:	fild dword [$IntegralStorage#]	; 4: -37 6 -9 17

scanLongDouble$108:	; pop float exponent
x12809:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$109:	; push float value
x12812:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$110:	; call header integral zero 0 stack no zero 1
x12815:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$111:	; push float 10.0
x12818:	fld qword [float8$10.0#]	; 4: -35 6 -29 29

scanLongDouble$112:	; parameter 10.0, offset 6
x12822:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$113:	; push float exponent
x12825:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$114:	; parameter exponent, offset 14
x12828:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$115:	; call function noellipse-noellipse pow
x12831:	mov word [bp + 43], scanLongDouble$116	; 5: -57 70 43 45 50
x12836:	mov [bp + 45], bp	; 3: -119 110 45
x12839:	add bp, 43	; 3: -125 -59 43
x12842:	jmp pow	; 3: -23 65 -17

scanLongDouble$116:	; post call
x12845:	fstp qword [bp + 43]	; 3: -35 94 43
x12848:	fld qword [bp + 35]	; 3: -35 70 35
x12851:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$117:	; £temporary1585 = return_value

scanLongDouble$118:	; £temporary1586 = value * £temporary1585
x12854:	fmul	; 2: -34 -55

scanLongDouble$119:	; pop float value
x12856:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$120:	; goto 125
x12859:	jmp scanLongDouble$125	; 2: -21 20

scanLongDouble$121:	; call header integral zero 0 stack zero 0

scanLongDouble$122:	; parameter input, offset 6
x12861:	mov al, [bp + 26]	; 3: -118 70 26
x12864:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$123:	; call function noellipse-noellipse unscanChar
x12867:	mov word [bp + 27], scanLongDouble$124	; 5: -57 70 27 81 50
x12872:	mov [bp + 29], bp	; 3: -119 110 29
x12875:	add bp, 27	; 3: -125 -59 27
x12878:	jmp unscanChar	; 3: -23 11 -5

scanLongDouble$124:	; post call

scanLongDouble$125:	; if minus == 0 goto 129
x12881:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x12885:	je scanLongDouble$129	; 2: 116 8

scanLongDouble$126:	; push float value
x12887:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$127:	; £temporary1588 = -value
x12890:	fchs	; 2: -39 -32

scanLongDouble$128:	; pop float value
x12892:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$129:	; if found == 0 goto 131
x12895:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12899:	je scanLongDouble$131	; 2: 116 4

scanLongDouble$130:	; ++g_inCount
x12901:	inc word [g_inCount]	; 4: -1 6 29 41

scanLongDouble$131:	; push float value
x12905:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$132:	; return_value = value

scanLongDouble$133:	; return
x12908:	mov ax, [bp]	; 3: -117 70 0
x12911:	mov di, [bp + 4]	; 3: -117 126 4
x12914:	mov bp, [bp + 2]	; 3: -117 110 2
x12917:	jmp ax	; 2: -1 -32

scanLongDouble$134:	; function end scanLongDouble

scanPattern:	; index = 0
x12919:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x12924:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 -118 50
x12929:	mov [bp + 16], bp	; 3: -119 110 16
x12932:	add bp, 14	; 3: -125 -59 14
x12935:	jmp scanChar	; 3: -23 -84 -10

scanPattern$3:	; post call

scanPattern$4:	; £temporary1341 = return_value

scanPattern$5:	; input = £temporary1341
x12938:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1342 = int_to_int input (Signed_Char -> Signed_Int)
x12941:	mov al, [bp + 14]	; 3: -118 70 14
x12944:	and ax, 255	; 3: 37 -1 0
x12947:	cmp al, 0	; 2: 60 0
x12949:	jge scanPattern$8	; 2: 125 4
x12951:	neg al	; 2: -10 -40
x12953:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1342, offset 6
x12955:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x12958:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 -84 50
x12963:	mov [bp + 17], bp	; 3: -119 110 17
x12966:	add bp, 15	; 3: -125 -59 15
x12969:	jmp isspace	; 3: -23 70 -7

scanPattern$10:	; post call

scanPattern$11:	; £temporary1343 = return_value

scanPattern$12:	; if £temporary1343 == 0 goto 19
x12972:	cmp bx, 0	; 3: -125 -5 0
x12975:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x12977:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 -65 50
x12982:	mov [bp + 17], bp	; 3: -119 110 17
x12985:	add bp, 15	; 3: -125 -59 15
x12988:	jmp scanChar	; 3: -23 119 -10

scanPattern$15:	; post call

scanPattern$16:	; £temporary1344 = return_value

scanPattern$17:	; input = £temporary1344
x12991:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x12994:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x12996:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x13000:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x13004:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13008:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x13010:	mov ax, [bp + 8]	; 3: -117 70 8
x13013:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1349 = int_to_int input (Signed_Char -> Signed_Int)
x13016:	mov al, [bp + 14]	; 3: -118 70 14
x13019:	and ax, 255	; 3: 37 -1 0
x13022:	cmp al, 0	; 2: 60 0
x13024:	jge scanPattern$24	; 2: 125 4
x13026:	neg al	; 2: -10 -40
x13028:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1349, offset 8
x13030:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x13033:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 -9 50
x13038:	mov [bp + 17], bp	; 3: -119 110 17
x13041:	add bp, 15	; 3: -125 -59 15
x13044:	jmp strchr	; 3: -23 -68 -25

scanPattern$26:	; post call

scanPattern$27:	; £temporary1350 = return_value

scanPattern$28:	; if £temporary1350 != 0 goto 38
x13047:	cmp bx, 0	; 3: -125 -5 0
x13050:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x13052:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13056:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x13058:	mov ax, [bp + 8]	; 3: -117 70 8
x13061:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1353 = int_to_int input (Signed_Char -> Signed_Int)
x13064:	mov al, [bp + 14]	; 3: -118 70 14
x13067:	and ax, 255	; 3: 37 -1 0
x13070:	cmp al, 0	; 2: 60 0
x13072:	jge scanPattern$33	; 2: 125 4
x13074:	neg al	; 2: -10 -40
x13076:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1353, offset 8
x13078:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x13081:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 39 51
x13086:	mov [bp + 17], bp	; 3: -119 110 17
x13089:	add bp, 15	; 3: -125 -59 15
x13092:	jmp strchr	; 3: -23 -116 -25

scanPattern$35:	; post call

scanPattern$36:	; £temporary1354 = return_value

scanPattern$37:	; if £temporary1354 != 0 goto 49
x13095:	cmp bx, 0	; 3: -125 -5 0
x13098:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1360 = index
x13100:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x13103:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1362 = string + £temporary1360
x13106:	mov si, [bp + 6]	; 3: -117 118 6
x13109:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1361 -> £temporary1362 = *£temporary1362

scanPattern$42:	; £temporary1361 -> £temporary1362 = input
x13111:	mov al, [bp + 14]	; 3: -118 70 14
x13114:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x13116:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 74 51
x13121:	mov [bp + 17], bp	; 3: -119 110 17
x13124:	add bp, 15	; 3: -125 -59 15
x13127:	jmp scanChar	; 3: -23 -20 -11

scanPattern$45:	; post call

scanPattern$46:	; £temporary1363 = return_value

scanPattern$47:	; input = £temporary1363
x13130:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x13133:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1365 = string + index
x13136:	mov si, [bp + 6]	; 3: -117 118 6
x13139:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1364 -> £temporary1365 = *£temporary1365

scanPattern$51:	; £temporary1364 -> £temporary1365 = 0
x13142:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x13145:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x13147:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13151:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x13153:	mov ax, [bp + 8]	; 3: -117 70 8
x13156:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1368 = int_to_int input (Signed_Char -> Signed_Int)
x13159:	mov al, [bp + 14]	; 3: -118 70 14
x13162:	and ax, 255	; 3: 37 -1 0
x13165:	cmp al, 0	; 2: 60 0
x13167:	jge scanPattern$57	; 2: 125 4
x13169:	neg al	; 2: -10 -40
x13171:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1368, offset 8
x13173:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x13176:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 -122 51
x13181:	mov [bp + 17], bp	; 3: -119 110 17
x13184:	add bp, 15	; 3: -125 -59 15
x13187:	jmp strchr	; 3: -23 45 -25

scanPattern$59:	; post call

scanPattern$60:	; £temporary1369 = return_value

scanPattern$61:	; if £temporary1369 != 0 goto 71
x13190:	cmp bx, 0	; 3: -125 -5 0
x13193:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x13195:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13199:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x13201:	mov ax, [bp + 8]	; 3: -117 70 8
x13204:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1372 = int_to_int input (Signed_Char -> Signed_Int)
x13207:	mov al, [bp + 14]	; 3: -118 70 14
x13210:	and ax, 255	; 3: 37 -1 0
x13213:	cmp al, 0	; 2: 60 0
x13215:	jge scanPattern$66	; 2: 125 4
x13217:	neg al	; 2: -10 -40
x13219:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1372, offset 8
x13221:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x13224:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 -74 51
x13229:	mov [bp + 17], bp	; 3: -119 110 17
x13232:	add bp, 15	; 3: -125 -59 15
x13235:	jmp strchr	; 3: -23 -3 -26

scanPattern$68:	; post call

scanPattern$69:	; £temporary1373 = return_value

scanPattern$70:	; if £temporary1373 != 0 goto 77
x13238:	cmp bx, 0	; 3: -125 -5 0
x13241:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x13243:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 -55 51
x13248:	mov [bp + 17], bp	; 3: -119 110 17
x13251:	add bp, 15	; 3: -125 -59 15
x13254:	jmp scanChar	; 3: -23 109 -11

scanPattern$73:	; post call

scanPattern$74:	; £temporary1379 = return_value

scanPattern$75:	; input = £temporary1379
x13257:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x13260:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x13262:	mov ax, [bp]	; 3: -117 70 0
x13265:	mov di, [bp + 4]	; 3: -117 126 4
x13268:	mov bp, [bp + 2]	; 3: -117 110 2
x13271:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

$StackTop:
x13273:
