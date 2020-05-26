	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -113 52
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
x579:	jmp mktime	; 3: -23 114 32

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
x676:	jmp scanf	; 3: -23 18 33

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

printf$2:	; £temporary2434 = £temporary2433 + 2
x955:	add si, 2	; 3: -125 -58 2

printf$3:	; arg_list = £temporary2434
x958:	mov [di + 8], si	; 3: -119 117 8

printf$4:	; call header integral zero 0 stack zero 0

printf$5:	; parameter format, offset 6
x961:	mov ax, [bp + 6]	; 3: -117 70 6
x964:	mov [di + 16], ax	; 3: -119 69 16

printf$6:	; parameter arg_list, offset 8
x967:	mov ax, [di + 8]	; 3: -117 69 8
x970:	mov [di + 18], ax	; 3: -119 69 18

printf$7:	; call function ellipse-noellipse vprintf
x973:	mov word [di + 10], printf$8	; 5: -57 69 10 -32 3
x978:	mov [di + 12], bp	; 3: -119 109 12
x981:	mov [di + 14], di	; 3: -119 125 14
x984:	mov bp, di	; 2: -119 -3
x986:	add bp, 10	; 3: -125 -59 10
x989:	nop	; 1: -112
x990:	jmp vprintf	; 2: -21 11

printf$8:	; post call

printf$9:	; £temporary2435 = return_value

printf$10:	; return_value = £temporary2435

printf$11:	; return
x992:	mov ax, [bp]	; 3: -117 70 0
x995:	mov di, [bp + 4]	; 3: -117 126 4
x998:	mov bp, [bp + 2]	; 3: -117 110 2
x1001:	jmp ax	; 2: -1 -32

printf$12:	; function end printf

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
x1751:	mov word [g_outChars], 0	; 6: -57 6 -21 11 0 0

printFormat$15:	; index = 0
x1757:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2286 = format + index
x1762:	mov si, [bp + 6]	; 3: -117 118 6
x1765:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2285 -> £temporary2286 = *£temporary2286

printFormat$18:	; if £temporary2285 -> £temporary2286 == 0 goto 289
x1768:	cmp byte [si], 0	; 3: -128 60 0
x1771:	je printFormat$289	; 4: 15 -124 -42 4

printFormat$19:	; £temporary2290 = format + index
x1775:	mov si, [bp + 6]	; 3: -117 118 6
x1778:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2289 -> £temporary2290 = *£temporary2290

printFormat$21:	; c = £temporary2289 -> £temporary2290
x1781:	mov al, [si]	; 2: -118 4
x1783:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 267
x1786:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x1790:	je printFormat$267	; 4: 15 -124 91 4

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

printFormat$51:	; goto 242
x1943:	jmp printFormat$242	; 3: -23 78 3

printFormat$52:	; plus = 1
x1946:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 287
x1951:	jmp printFormat$287	; 3: -23 29 4

printFormat$54:	; minus = 1
x1954:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 287
x1959:	jmp printFormat$287	; 3: -23 21 4

printFormat$56:	; space = 1
x1962:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 287
x1967:	jmp printFormat$287	; 3: -23 13 4

printFormat$58:	; zero = 1
x1970:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 287
x1975:	jmp printFormat$287	; 3: -23 5 4

printFormat$60:	; grid = 1
x1978:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 287
x1983:	jmp printFormat$287	; 3: -23 -3 3

printFormat$62:	; period = 1
x1986:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 287
x1991:	jmp printFormat$287	; 3: -23 -11 3

printFormat$64:	; if period != 0 goto 67
x1994:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x1998:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x2000:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 287
x2005:	jmp printFormat$287	; 3: -23 -25 3

printFormat$67:	; precision = -1
x2008:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 287
x2013:	jmp printFormat$287	; 3: -23 -33 3

printFormat$69:	; shortInt = 1
x2016:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 287
x2021:	jmp printFormat$287	; 3: -23 -41 3

printFormat$71:	; longInt = 1
x2024:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 287
x2029:	jmp printFormat$287	; 3: -23 -49 3

printFormat$73:	; longDouble = 1
x2032:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 287
x2037:	jmp printFormat$287	; 3: -23 -57 3

printFormat$75:	; if minus == 0 goto 108
x2040:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x2044:	je printFormat$108	; 4: 15 -124 -116 0

printFormat$76:	; startChars = g_outChars
x2048:	mov ax, [g_outChars]	; 3: -95 -21 11
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
x2140:	jmp printArgument	; 3: -23 -112 3

printFormat$95:	; post call

printFormat$96:	; £temporary2297 = return_value

printFormat$97:	; arg_list = £temporary2297
x2143:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2298 = g_outChars - startChars
x2146:	mov ax, [g_outChars]	; 3: -95 -21 11
x2149:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; field = £temporary2298
x2152:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$100:	; £temporary2299 = field
x2155:	mov ax, [bp + 43]	; 3: -117 70 43

printFormat$101:	; ++field
x2158:	inc word [bp + 43]	; 3: -1 70 43

printFormat$102:	; if £temporary2299 >= width goto 240
x2161:	cmp ax, [bp + 12]	; 3: 59 70 12
x2164:	jge printFormat$240	; 4: 15 -115 104 2

printFormat$103:	; call header integral zero 0 stack zero 0

printFormat$104:	; parameter 32, offset 6
x2168:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$105:	; call function noellipse-noellipse printChar
x2172:	mov word [bp + 45], printFormat$106	; 5: -57 70 45 -118 8
x2177:	mov [bp + 47], bp	; 3: -119 110 47
x2180:	add bp, 45	; 3: -125 -59 45
x2183:	jmp printChar	; 3: -23 -59 10

printFormat$106:	; post call

printFormat$107:	; goto 100
x2186:	jmp printFormat$100	; 2: -21 -33

printFormat$108:	; if zero == 0 goto 186
x2188:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x2192:	je printFormat$186	; 4: 15 -124 84 1

printFormat$109:	; startChars = g_outChars
x2196:	mov ax, [g_outChars]	; 3: -95 -21 11
x2199:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$110:	; oldOutStatus = g_outStatus
x2202:	mov ax, [g_outStatus]	; 3: -95 -115 6
x2205:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$111:	; negative = 0
x2208:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$112:	; g_outStatus = 2
x2213:	mov word [g_outStatus], 2	; 6: -57 6 -115 6 2 0

printFormat$113:	; call header integral zero 0 stack zero 0

printFormat$114:	; £temporary2303 = format + index
x2219:	mov si, [bp + 6]	; 3: -117 118 6
x2222:	add si, [bp + 10]	; 3: 3 118 10

printFormat$115:	; £temporary2302 -> £temporary2303 = *£temporary2303

printFormat$116:	; £temporary2304 = &£temporary2302 -> £temporary2303

printFormat$117:	; parameter £temporary2304, offset 6
x2225:	mov [bp + 53], si	; 3: -119 118 53

printFormat$118:	; parameter arg_list, offset 8
x2228:	mov ax, [bp + 8]	; 3: -117 70 8
x2231:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$119:	; parameter 0, offset 10
x2234:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$120:	; parameter 0, offset 12
x2239:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$121:	; parameter grid, offset 14
x2244:	mov ax, [bp + 26]	; 3: -117 70 26
x2247:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$122:	; £temporary2305 = &width
x2250:	mov si, bp	; 2: -119 -18
x2252:	add si, 12	; 3: -125 -58 12

printFormat$123:	; parameter £temporary2305, offset 16
x2255:	mov [bp + 63], si	; 3: -119 118 63

printFormat$124:	; parameter precision, offset 18
x2258:	mov ax, [bp + 14]	; 3: -117 70 14
x2261:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$125:	; parameter shortInt, offset 20
x2264:	mov ax, [bp + 34]	; 3: -117 70 34
x2267:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$126:	; parameter longInt, offset 22
x2270:	mov ax, [bp + 36]	; 3: -117 70 36
x2273:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$127:	; parameter longDouble, offset 24
x2276:	mov ax, [bp + 38]	; 3: -117 70 38
x2279:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$128:	; parameter 0, offset 26
x2282:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$129:	; £temporary2306 = &negative
x2287:	mov si, bp	; 2: -119 -18
x2289:	add si, 45	; 3: -125 -58 45

printFormat$130:	; parameter £temporary2306, offset 28
x2292:	mov [bp + 75], si	; 3: -119 118 75

printFormat$131:	; call function noellipse-noellipse printArgument
x2295:	mov word [bp + 47], printFormat$132	; 5: -57 70 47 5 9
x2300:	mov [bp + 49], bp	; 3: -119 110 49
x2303:	add bp, 47	; 3: -125 -59 47
x2306:	jmp printArgument	; 3: -23 -22 2

printFormat$132:	; post call

printFormat$133:	; g_outStatus = oldOutStatus
x2309:	mov ax, [bp + 43]	; 3: -117 70 43
x2312:	mov [g_outStatus], ax	; 3: -93 -115 6

printFormat$134:	; £temporary2308 = g_outChars - startChars
x2315:	mov ax, [g_outChars]	; 3: -95 -21 11
x2318:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$135:	; field = £temporary2308
x2321:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$136:	; g_outChars = startChars
x2324:	mov ax, [bp + 41]	; 3: -117 70 41
x2327:	mov [g_outChars], ax	; 3: -93 -21 11

printFormat$137:	; if negative == 0 goto 144
x2330:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x2334:	je printFormat$144	; 2: 116 23

printFormat$138:	; call header integral zero 0 stack zero 0

printFormat$139:	; parameter 45, offset 6
x2336:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$140:	; call function noellipse-noellipse printChar
x2340:	mov word [bp + 49], printFormat$141	; 5: -57 70 49 50 9
x2345:	mov [bp + 51], bp	; 3: -119 110 51
x2348:	add bp, 49	; 3: -125 -59 49
x2351:	jmp printChar	; 3: -23 29 10

printFormat$141:	; post call

printFormat$142:	; ++field
x2354:	inc word [bp + 47]	; 3: -1 70 47

printFormat$143:	; goto 157
x2357:	jmp printFormat$157	; 2: -21 56

printFormat$144:	; if plus == 0 goto 151
x2359:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x2363:	je printFormat$151	; 2: 116 23

printFormat$145:	; call header integral zero 0 stack zero 0

printFormat$146:	; parameter 43, offset 6
x2365:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$147:	; call function noellipse-noellipse printChar
x2369:	mov word [bp + 49], printFormat$148	; 5: -57 70 49 79 9
x2374:	mov [bp + 51], bp	; 3: -119 110 51
x2377:	add bp, 49	; 3: -125 -59 49
x2380:	jmp printChar	; 3: -23 0 10

printFormat$148:	; post call

printFormat$149:	; ++field
x2383:	inc word [bp + 47]	; 3: -1 70 47

printFormat$150:	; goto 157
x2386:	jmp printFormat$157	; 2: -21 27

printFormat$151:	; if space == 0 goto 157
x2388:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x2392:	je printFormat$157	; 2: 116 21

printFormat$152:	; call header integral zero 0 stack zero 0

printFormat$153:	; parameter 32, offset 6
x2394:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$154:	; call function noellipse-noellipse printChar
x2398:	mov word [bp + 49], printFormat$155	; 5: -57 70 49 108 9
x2403:	mov [bp + 51], bp	; 3: -119 110 51
x2406:	add bp, 49	; 3: -125 -59 49
x2409:	jmp printChar	; 3: -23 -29 9

printFormat$155:	; post call

printFormat$156:	; ++field
x2412:	inc word [bp + 47]	; 3: -1 70 47

printFormat$157:	; £temporary2318 = field
x2415:	mov ax, [bp + 47]	; 3: -117 70 47

printFormat$158:	; ++field
x2418:	inc word [bp + 47]	; 3: -1 70 47

printFormat$159:	; if £temporary2318 >= width goto 165
x2421:	cmp ax, [bp + 12]	; 3: 59 70 12
x2424:	jge printFormat$165	; 2: 125 20

printFormat$160:	; call header integral zero 0 stack zero 0

printFormat$161:	; parameter 48, offset 6
x2426:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$162:	; call function noellipse-noellipse printChar
x2430:	mov word [bp + 49], printFormat$163	; 5: -57 70 49 -116 9
x2435:	mov [bp + 51], bp	; 3: -119 110 51
x2438:	add bp, 49	; 3: -125 -59 49
x2441:	jmp printChar	; 3: -23 -61 9

printFormat$163:	; post call

printFormat$164:	; goto 157
x2444:	jmp printFormat$157	; 2: -21 -31

printFormat$165:	; call header integral zero 0 stack zero 0

printFormat$166:	; £temporary2322 = format + index
x2446:	mov si, [bp + 6]	; 3: -117 118 6
x2449:	add si, [bp + 10]	; 3: 3 118 10

printFormat$167:	; £temporary2321 -> £temporary2322 = *£temporary2322

printFormat$168:	; £temporary2323 = &£temporary2321 -> £temporary2322

printFormat$169:	; parameter £temporary2323, offset 6
x2452:	mov [bp + 55], si	; 3: -119 118 55

printFormat$170:	; parameter arg_list, offset 8
x2455:	mov ax, [bp + 8]	; 3: -117 70 8
x2458:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$171:	; parameter 0, offset 10
x2461:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$172:	; parameter 0, offset 12
x2466:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$173:	; parameter grid, offset 14
x2471:	mov ax, [bp + 26]	; 3: -117 70 26
x2474:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$174:	; parameter 0, offset 16
x2477:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$175:	; parameter precision, offset 18
x2482:	mov ax, [bp + 14]	; 3: -117 70 14
x2485:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$176:	; parameter shortInt, offset 20
x2488:	mov ax, [bp + 34]	; 3: -117 70 34
x2491:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$177:	; parameter longInt, offset 22
x2494:	mov ax, [bp + 36]	; 3: -117 70 36
x2497:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$178:	; parameter longDouble, offset 24
x2500:	mov ax, [bp + 38]	; 3: -117 70 38
x2503:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$179:	; parameter 0, offset 26
x2506:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$180:	; parameter 0, offset 28
x2511:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$181:	; call function noellipse-noellipse printArgument
x2516:	mov word [bp + 49], printFormat$182	; 5: -57 70 49 -30 9
x2521:	mov [bp + 51], bp	; 3: -119 110 51
x2524:	add bp, 49	; 3: -125 -59 49
x2527:	jmp printArgument	; 3: -23 13 2

printFormat$182:	; post call

printFormat$183:	; £temporary2324 = return_value

printFormat$184:	; arg_list = £temporary2324
x2530:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$185:	; goto 240
x2533:	jmp printFormat$240	; 3: -23 -8 0

printFormat$186:	; startChars = g_outChars
x2536:	mov ax, [g_outChars]	; 3: -95 -21 11
x2539:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$187:	; oldOutStatus = g_outStatus
x2542:	mov ax, [g_outStatus]	; 3: -95 -115 6
x2545:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$188:	; g_outStatus = 2
x2548:	mov word [g_outStatus], 2	; 6: -57 6 -115 6 2 0

printFormat$189:	; call header integral zero 0 stack zero 0

printFormat$190:	; £temporary2326 = format + index
x2554:	mov si, [bp + 6]	; 3: -117 118 6
x2557:	add si, [bp + 10]	; 3: 3 118 10

printFormat$191:	; £temporary2325 -> £temporary2326 = *£temporary2326

printFormat$192:	; £temporary2327 = &£temporary2325 -> £temporary2326

printFormat$193:	; parameter £temporary2327, offset 6
x2560:	mov [bp + 51], si	; 3: -119 118 51

printFormat$194:	; parameter arg_list, offset 8
x2563:	mov ax, [bp + 8]	; 3: -117 70 8
x2566:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$195:	; parameter plus, offset 10
x2569:	mov ax, [bp + 18]	; 3: -117 70 18
x2572:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$196:	; parameter space, offset 12
x2575:	mov ax, [bp + 22]	; 3: -117 70 22
x2578:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$197:	; parameter grid, offset 14
x2581:	mov ax, [bp + 26]	; 3: -117 70 26
x2584:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$198:	; £temporary2328 = &width
x2587:	mov si, bp	; 2: -119 -18
x2589:	add si, 12	; 3: -125 -58 12

printFormat$199:	; parameter £temporary2328, offset 16
x2592:	mov [bp + 61], si	; 3: -119 118 61

printFormat$200:	; parameter precision, offset 18
x2595:	mov ax, [bp + 14]	; 3: -117 70 14
x2598:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$201:	; parameter shortInt, offset 20
x2601:	mov ax, [bp + 34]	; 3: -117 70 34
x2604:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$202:	; parameter longInt, offset 22
x2607:	mov ax, [bp + 36]	; 3: -117 70 36
x2610:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$203:	; parameter longDouble, offset 24
x2613:	mov ax, [bp + 38]	; 3: -117 70 38
x2616:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$204:	; parameter 1, offset 26
x2619:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$205:	; parameter 0, offset 28
x2624:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$206:	; call function noellipse-noellipse printArgument
x2629:	mov word [bp + 45], printFormat$207	; 5: -57 70 45 83 10
x2634:	mov [bp + 47], bp	; 3: -119 110 47
x2637:	add bp, 45	; 3: -125 -59 45
x2640:	jmp printArgument	; 3: -23 -100 1

printFormat$207:	; post call

printFormat$208:	; g_outStatus = oldOutStatus
x2643:	mov ax, [bp + 43]	; 3: -117 70 43
x2646:	mov [g_outStatus], ax	; 3: -93 -115 6

printFormat$209:	; £temporary2330 = g_outChars - startChars
x2649:	mov ax, [g_outChars]	; 3: -95 -21 11
x2652:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$210:	; field = £temporary2330
x2655:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$211:	; g_outChars = startChars
x2658:	mov ax, [bp + 41]	; 3: -117 70 41
x2661:	mov [g_outChars], ax	; 3: -93 -21 11

printFormat$212:	; £temporary2331 = field
x2664:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$213:	; ++field
x2667:	inc word [bp + 45]	; 3: -1 70 45

printFormat$214:	; if £temporary2331 >= width goto 220
x2670:	cmp ax, [bp + 12]	; 3: 59 70 12
x2673:	jge printFormat$220	; 2: 125 20

printFormat$215:	; call header integral zero 0 stack zero 0

printFormat$216:	; parameter 32, offset 6
x2675:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$217:	; call function noellipse-noellipse printChar
x2679:	mov word [bp + 47], printFormat$218	; 5: -57 70 47 -123 10
x2684:	mov [bp + 49], bp	; 3: -119 110 49
x2687:	add bp, 47	; 3: -125 -59 47
x2690:	jmp printChar	; 3: -23 -54 8

printFormat$218:	; post call

printFormat$219:	; goto 212
x2693:	jmp printFormat$212	; 2: -21 -31

printFormat$220:	; call header integral zero 0 stack zero 0

printFormat$221:	; £temporary2335 = format + index
x2695:	mov si, [bp + 6]	; 3: -117 118 6
x2698:	add si, [bp + 10]	; 3: 3 118 10

printFormat$222:	; £temporary2334 -> £temporary2335 = *£temporary2335

printFormat$223:	; £temporary2336 = &£temporary2334 -> £temporary2335

printFormat$224:	; parameter £temporary2336, offset 6
x2701:	mov [bp + 53], si	; 3: -119 118 53

printFormat$225:	; parameter arg_list, offset 8
x2704:	mov ax, [bp + 8]	; 3: -117 70 8
x2707:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$226:	; parameter plus, offset 10
x2710:	mov ax, [bp + 18]	; 3: -117 70 18
x2713:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$227:	; parameter space, offset 12
x2716:	mov ax, [bp + 22]	; 3: -117 70 22
x2719:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$228:	; parameter grid, offset 14
x2722:	mov ax, [bp + 26]	; 3: -117 70 26
x2725:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$229:	; parameter 0, offset 16
x2728:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$230:	; parameter precision, offset 18
x2733:	mov ax, [bp + 14]	; 3: -117 70 14
x2736:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$231:	; parameter shortInt, offset 20
x2739:	mov ax, [bp + 34]	; 3: -117 70 34
x2742:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$232:	; parameter longInt, offset 22
x2745:	mov ax, [bp + 36]	; 3: -117 70 36
x2748:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$233:	; parameter longDouble, offset 24
x2751:	mov ax, [bp + 38]	; 3: -117 70 38
x2754:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$234:	; parameter 1, offset 26
x2757:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$235:	; parameter 0, offset 28
x2762:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$236:	; call function noellipse-noellipse printArgument
x2767:	mov word [bp + 47], printFormat$237	; 5: -57 70 47 -35 10
x2772:	mov [bp + 49], bp	; 3: -119 110 49
x2775:	add bp, 47	; 3: -125 -59 47
x2778:	jmp printArgument	; 3: -23 18 1

printFormat$237:	; post call

printFormat$238:	; £temporary2337 = return_value

printFormat$239:	; arg_list = £temporary2337
x2781:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$240:	; percent = 0
x2784:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$241:	; goto 287
x2789:	jmp printFormat$287	; 3: -23 -41 0

printFormat$242:	; value = 0
x2792:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$243:	; call header integral zero 0 stack zero 0

printFormat$244:	; £temporary2340 = int_to_int c (Signed_Char -> Signed_Int)
x2797:	mov al, [bp + 40]	; 3: -118 70 40
x2800:	and ax, 255	; 3: 37 -1 0
x2803:	cmp al, 0	; 2: 60 0
x2805:	jge printFormat$245	; 2: 125 4
x2807:	neg al	; 2: -10 -40
x2809:	neg ax	; 2: -9 -40

printFormat$245:	; parameter £temporary2340, offset 6
x2811:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$246:	; call function noellipse-noellipse isdigit
x2814:	mov word [bp + 43], printFormat$247	; 5: -57 70 43 12 11
x2819:	mov [bp + 45], bp	; 3: -119 110 45
x2822:	add bp, 43	; 3: -125 -59 43
x2825:	jmp isdigit	; 3: -23 -115 23

printFormat$247:	; post call

printFormat$248:	; £temporary2341 = return_value

printFormat$249:	; if £temporary2341 == 0 goto 261
x2828:	cmp bx, 0	; 3: -125 -5 0
x2831:	je printFormat$261	; 2: 116 51

printFormat$250:	; £temporary2342 = value * 10
x2833:	mov ax, [bp + 41]	; 3: -117 70 41
x2836:	xor dx, dx	; 2: 49 -46
x2838:	imul word [int2$10#]	; 4: -9 46 -19 11

printFormat$251:	; £temporary2343 = c - 48
x2842:	mov bl, [bp + 40]	; 3: -118 94 40
x2845:	sub bl, 48	; 3: -128 -21 48

printFormat$252:	; £temporary2344 = int_to_int £temporary2343 (Signed_Char -> Signed_Int)
x2848:	and bx, 255	; 4: -127 -29 -1 0
x2852:	cmp bl, 0	; 3: -128 -5 0
x2855:	jge printFormat$253	; 2: 125 4
x2857:	neg bl	; 2: -10 -37
x2859:	neg bx	; 2: -9 -37

printFormat$253:	; £temporary2345 = £temporary2342 + £temporary2344
x2861:	add ax, bx	; 2: 1 -40

printFormat$254:	; value = £temporary2345
x2863:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$255:	; ++index
x2866:	inc word [bp + 10]	; 3: -1 70 10

printFormat$256:	; £temporary2346 = index
x2869:	mov ax, [bp + 10]	; 3: -117 70 10

printFormat$257:	; £temporary2348 = format + £temporary2346
x2872:	mov si, [bp + 6]	; 3: -117 118 6
x2875:	add si, ax	; 2: 1 -58

printFormat$258:	; £temporary2347 -> £temporary2348 = *£temporary2348

printFormat$259:	; c = £temporary2347 -> £temporary2348
x2877:	mov al, [si]	; 2: -118 4
x2879:	mov [bp + 40], al	; 3: -120 70 40

printFormat$260:	; goto 243
x2882:	jmp printFormat$243	; 2: -21 -87

printFormat$261:	; --index
x2884:	dec word [bp + 10]	; 3: -1 78 10

printFormat$262:	; if period != 0 goto 265
x2887:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2891:	jne printFormat$265	; 2: 117 8

printFormat$263:	; width = value
x2893:	mov ax, [bp + 41]	; 3: -117 70 41
x2896:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$264:	; goto 287
x2899:	jmp printFormat$287	; 2: -21 106

printFormat$265:	; precision = value
x2901:	mov ax, [bp + 41]	; 3: -117 70 41
x2904:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$266:	; goto 287
x2907:	jmp printFormat$287	; 2: -21 98

printFormat$267:	; if c != 37 goto 283
x2909:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x2913:	jne printFormat$283	; 2: 117 72

printFormat$268:	; percent = 1
x2915:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$269:	; plus = 0
x2920:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$270:	; minus = 0
x2925:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$271:	; space = 0
x2930:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$272:	; zero = 0
x2935:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$273:	; grid = 0
x2940:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$274:	; widthStar = 0
x2945:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$275:	; period = 0
x2950:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$276:	; precisionStar = 0
x2955:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$277:	; shortInt = 0
x2960:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$278:	; longInt = 0
x2965:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$279:	; longDouble = 0
x2970:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$280:	; width = 0
x2975:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$281:	; precision = 0
x2980:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$282:	; goto 287
x2985:	jmp printFormat$287	; 2: -21 20

printFormat$283:	; call header integral zero 0 stack zero 0

printFormat$284:	; parameter c, offset 6
x2987:	mov al, [bp + 40]	; 3: -118 70 40
x2990:	mov [bp + 47], al	; 3: -120 70 47

printFormat$285:	; call function noellipse-noellipse printChar
x2993:	mov word [bp + 41], printFormat$286	; 5: -57 70 41 -65 11
x2998:	mov [bp + 43], bp	; 3: -119 110 43
x3001:	add bp, 41	; 3: -125 -59 41
x3004:	jmp printChar	; 3: -23 -112 7

printFormat$286:	; post call

printFormat$287:	; ++index
x3007:	inc word [bp + 10]	; 3: -1 70 10

printFormat$288:	; goto 16
x3010:	jmp printFormat$16	; 3: -23 29 -5

printFormat$289:	; if g_outStatus != 1 goto 295
x3013:	cmp word [g_outStatus], 1	; 5: -125 62 -115 6 1
x3018:	jne printFormat$295	; 2: 117 16

printFormat$290:	; £temporary2357 = int_to_int g_outDevice (Pointer -> Pointer)
x3020:	mov ax, [g_outDevice]	; 3: -95 -113 6

printFormat$291:	; outString = £temporary2357
x3023:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$292:	; £temporary2359 = outString + g_outChars
x3026:	mov si, [bp + 40]	; 3: -117 118 40
x3029:	add si, [g_outChars]	; 4: 3 54 -21 11

printFormat$293:	; £temporary2358 -> £temporary2359 = *£temporary2359

printFormat$294:	; £temporary2358 -> £temporary2359 = 0
x3033:	mov byte [si], 0	; 3: -58 4 0

printFormat$295:	; return_value = g_outChars
x3036:	mov bx, [g_outChars]	; 4: -117 30 -21 11

printFormat$296:	; return
x3040:	mov ax, [bp]	; 3: -117 70 0
x3043:	mov di, [bp + 4]	; 3: -117 126 4
x3046:	mov bp, [bp + 2]	; 3: -117 110 2
x3049:	jmp ax	; 2: -1 -32

printFormat$297:	; function end printFormat

g_outChars:
x3051:	db 0, 0	; 2: 0 0

int2$10#:
x3053:	dw 10	; 2: 10 0

printArgument:	; £temporary2059 -> format = *format
x3055:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2059 -> format
x3058:	mov al, [si]	; 2: -118 4
x3060:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x3063:	mov al, [bp + 30]	; 3: -118 70 30
x3066:	cmp al, 100	; 2: 60 100
x3068:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x3070:	cmp al, 105	; 2: 60 105
x3072:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 76
x3074:	cmp al, 99	; 2: 60 99
x3076:	je printArgument$76	; 4: 15 -124 83 1

printArgument$5:	; case c == 115 goto 97
x3080:	cmp al, 115	; 2: 60 115
x3082:	je printArgument$97	; 4: 15 -124 -90 1

printArgument$6:	; case c == 88 goto 118
x3086:	cmp al, 88	; 2: 60 88
x3088:	je printArgument$118	; 4: 15 -124 -10 1

printArgument$7:	; case c == 120 goto 118
x3092:	cmp al, 120	; 2: 60 120
x3094:	je printArgument$118	; 4: 15 -124 -16 1

printArgument$8:	; case c == 98 goto 118
x3098:	cmp al, 98	; 2: 60 98
x3100:	je printArgument$118	; 4: 15 -124 -22 1

printArgument$9:	; case c == 111 goto 118
x3104:	cmp al, 111	; 2: 60 111
x3106:	je printArgument$118	; 4: 15 -124 -28 1

printArgument$10:	; case c == 117 goto 118
x3110:	cmp al, 117	; 2: 60 117
x3112:	je printArgument$118	; 4: 15 -124 -34 1

printArgument$11:	; case c == 71 goto 181
x3116:	cmp al, 71	; 2: 60 71
x3118:	je printArgument$181	; 4: 15 -124 -30 2

printArgument$12:	; case c == 103 goto 181
x3122:	cmp al, 103	; 2: 60 103
x3124:	je printArgument$181	; 4: 15 -124 -36 2

printArgument$13:	; case c == 69 goto 181
x3128:	cmp al, 69	; 2: 60 69
x3130:	je printArgument$181	; 4: 15 -124 -42 2

printArgument$14:	; case c == 101 goto 181
x3134:	cmp al, 101	; 2: 60 101
x3136:	je printArgument$181	; 4: 15 -124 -48 2

printArgument$15:	; case c == 102 goto 181
x3140:	cmp al, 102	; 2: 60 102
x3142:	je printArgument$181	; 4: 15 -124 -54 2

printArgument$16:	; case c == 112 goto 309
x3146:	cmp al, 112	; 2: 60 112
x3148:	je printArgument$309	; 4: 15 -124 -29 4

printArgument$17:	; case c == 110 goto 335
x3152:	cmp al, 110	; 2: 60 110
x3154:	je printArgument$335	; 4: 15 -124 80 5

printArgument$18:	; case c == 37 goto 359
x3158:	cmp al, 37	; 2: 60 37
x3160:	je printArgument$359	; 4: 15 -124 -95 5

printArgument$19:	; case end c

printArgument$20:	; goto 372
x3164:	jmp printArgument$372	; 3: -23 -43 5

printArgument$21:	; if shortInt == 0 goto 31
x3167:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3171:	je printArgument$31	; 2: 116 47

printArgument$22:	; £temporary2060 = arg_list + 2
x3173:	mov ax, [bp + 8]	; 3: -117 70 8
x3176:	add ax, 2	; 3: -125 -64 2

printArgument$23:	; arg_list = £temporary2060
x3179:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$24:	; £temporary2061 = arg_list - 2
x3182:	mov si, [bp + 8]	; 3: -117 118 8
x3185:	sub si, 2	; 3: -125 -18 2

printArgument$25:	; £temporary2062 = int_to_int £temporary2061 (Signed_Int -> Pointer)

printArgument$26:	; £temporary2063 -> £temporary2062 = *£temporary2062

printArgument$27:	; £temporary2064 = int_to_int £temporary2063 -> £temporary2062 (Signed_Int -> Signed_Short_Int)
x3188:	mov ax, [si]	; 2: -117 4
x3190:	cmp ax, 0	; 3: -125 -8 0
x3193:	jge printArgument$28	; 2: 125 4
x3195:	neg ax	; 2: -9 -40
x3197:	neg al	; 2: -10 -40

printArgument$28:	; £temporary2065 = int_to_int £temporary2064 (Signed_Short_Int -> Signed_Long_Int)
x3199:	and eax, 255	; 6: 102 37 -1 0 0 0
x3205:	cmp al, 0	; 2: 60 0
x3207:	jge printArgument$29	; 2: 125 5
x3209:	neg al	; 2: -10 -40
x3211:	neg eax	; 3: 102 -9 -40

printArgument$29:	; longValue = £temporary2065
x3214:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$30:	; goto 46
x3218:	jmp printArgument$46	; 2: -21 67

printArgument$31:	; if longInt == 0 goto 39
x3220:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3224:	je printArgument$39	; 2: 116 24

printArgument$32:	; £temporary2066 = arg_list + 4
x3226:	mov ax, [bp + 8]	; 3: -117 70 8
x3229:	add ax, 4	; 3: -125 -64 4

printArgument$33:	; arg_list = £temporary2066
x3232:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$34:	; £temporary2067 = arg_list - 4
x3235:	mov si, [bp + 8]	; 3: -117 118 8
x3238:	sub si, 4	; 3: -125 -18 4

printArgument$35:	; £temporary2068 = int_to_int £temporary2067 (Signed_Int -> Pointer)

printArgument$36:	; £temporary2069 -> £temporary2068 = *£temporary2068

printArgument$37:	; longValue = £temporary2069 -> £temporary2068
x3241:	mov eax, [si]	; 3: 102 -117 4
x3244:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$38:	; goto 46
x3248:	jmp printArgument$46	; 2: -21 37

printArgument$39:	; £temporary2070 = arg_list + 2
x3250:	mov ax, [bp + 8]	; 3: -117 70 8
x3253:	add ax, 2	; 3: -125 -64 2

printArgument$40:	; arg_list = £temporary2070
x3256:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$41:	; £temporary2071 = arg_list - 2
x3259:	mov si, [bp + 8]	; 3: -117 118 8
x3262:	sub si, 2	; 3: -125 -18 2

printArgument$42:	; £temporary2072 = int_to_int £temporary2071 (Signed_Int -> Pointer)

printArgument$43:	; £temporary2073 -> £temporary2072 = *£temporary2072

printArgument$44:	; £temporary2074 = int_to_int £temporary2073 -> £temporary2072 (Signed_Int -> Signed_Long_Int)
x3265:	mov ax, [si]	; 2: -117 4
x3267:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3273:	cmp ax, 0	; 3: -125 -8 0
x3276:	jge printArgument$45	; 2: 125 5
x3278:	neg ax	; 2: -9 -40
x3280:	neg eax	; 3: 102 -9 -40

printArgument$45:	; longValue = £temporary2074
x3283:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$46:	; if negativePtr == 0 goto 53
x3287:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3291:	je printArgument$53	; 2: 116 20

printArgument$47:	; £temporary2078 -> negativePtr = *negativePtr
x3293:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$48:	; if longValue >= 0 goto 51
x3296:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x3301:	jge printArgument$51	; 2: 125 5

printArgument$49:	; £temporary2080 = 1
x3303:	mov ax, 1	; 3: -72 1 0

printArgument$50:	; goto 52
x3306:	jmp printArgument$52	; 2: -21 3

printArgument$51:	; £temporary2080 = 0
x3308:	mov ax, 0	; 3: -72 0 0

printArgument$52:	; £temporary2078 -> negativePtr = £temporary2080
x3311:	mov [si], ax	; 2: -119 4

printArgument$53:	; if sign != 0 goto 60
x3313:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3317:	jne printArgument$60	; 2: 117 26

printArgument$54:	; call header integral zero 0 stack zero 0

printArgument$55:	; parameter longValue, offset 6
x3319:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3323:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$56:	; call function noellipse-noellipse labs
x3327:	mov word [bp + 48], printArgument$57	; 5: -57 70 48 13 13
x3332:	mov [bp + 50], bp	; 3: -119 110 50
x3335:	add bp, 48	; 3: -125 -59 48
x3338:	jmp labs	; 3: -23 57 5

printArgument$57:	; post call

printArgument$58:	; £temporary2083 = return_value

printArgument$59:	; longValue = £temporary2083
x3341:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$60:	; call header integral zero 0 stack zero 0

printArgument$61:	; parameter arg_list, offset 6
x3345:	mov ax, [bp + 8]	; 3: -117 70 8
x3348:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$62:	; parameter widthPtr, offset 8
x3351:	mov ax, [bp + 16]	; 3: -117 70 16
x3354:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$63:	; £temporary2084 = &precision
x3357:	mov si, bp	; 2: -119 -18
x3359:	add si, 18	; 3: -125 -58 18

printArgument$64:	; parameter £temporary2084, offset 10
x3362:	mov [bp + 58], si	; 3: -119 118 58

printArgument$65:	; call function noellipse-noellipse checkWidthAndPrecision
x3365:	mov word [bp + 48], printArgument$66	; 5: -57 70 48 51 13
x3370:	mov [bp + 50], bp	; 3: -119 110 50
x3373:	add bp, 48	; 3: -125 -59 48
x3376:	jmp checkWidthAndPrecision	; 3: -23 50 5

printArgument$66:	; post call

printArgument$67:	; £temporary2085 = return_value

printArgument$68:	; arg_list = £temporary2085
x3379:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$69:	; call header integral zero 0 stack zero 0

printArgument$70:	; parameter longValue, offset 6
x3382:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3386:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$71:	; parameter plus, offset 10
x3390:	mov ax, [bp + 10]	; 3: -117 70 10
x3393:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$72:	; parameter space, offset 12
x3396:	mov ax, [bp + 12]	; 3: -117 70 12
x3399:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$73:	; call function noellipse-noellipse printLongInt
x3402:	mov word [bp + 48], printArgument$74	; 5: -57 70 48 88 13
x3407:	mov [bp + 50], bp	; 3: -119 110 50
x3410:	add bp, 48	; 3: -125 -59 48
x3413:	jmp printLongInt	; 3: -23 99 5

printArgument$74:	; post call

printArgument$75:	; goto 372
x3416:	jmp printArgument$372	; 3: -23 -39 4

printArgument$76:	; £temporary2087 = arg_list + 2
x3419:	mov ax, [bp + 8]	; 3: -117 70 8
x3422:	add ax, 2	; 3: -125 -64 2

printArgument$77:	; arg_list = £temporary2087
x3425:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$78:	; £temporary2088 = arg_list - 2
x3428:	mov si, [bp + 8]	; 3: -117 118 8
x3431:	sub si, 2	; 3: -125 -18 2

printArgument$79:	; £temporary2089 = int_to_int £temporary2088 (Signed_Int -> Pointer)

printArgument$80:	; £temporary2090 -> £temporary2089 = *£temporary2089

printArgument$81:	; £temporary2091 = int_to_int £temporary2090 -> £temporary2089 (Signed_Int -> Signed_Char)
x3434:	mov ax, [si]	; 2: -117 4
x3436:	cmp ax, 0	; 3: -125 -8 0
x3439:	jge printArgument$82	; 2: 125 4
x3441:	neg ax	; 2: -9 -40
x3443:	neg al	; 2: -10 -40

printArgument$82:	; charValue = £temporary2091
x3445:	mov [bp + 31], al	; 3: -120 70 31

printArgument$83:	; call header integral zero 0 stack zero 0

printArgument$84:	; parameter arg_list, offset 6
x3448:	mov ax, [bp + 8]	; 3: -117 70 8
x3451:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$85:	; parameter widthPtr, offset 8
x3454:	mov ax, [bp + 16]	; 3: -117 70 16
x3457:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$86:	; £temporary2092 = &precision
x3460:	mov si, bp	; 2: -119 -18
x3462:	add si, 18	; 3: -125 -58 18

printArgument$87:	; parameter £temporary2092, offset 10
x3465:	mov [bp + 54], si	; 3: -119 118 54

printArgument$88:	; call function noellipse-noellipse checkWidthAndPrecision
x3468:	mov word [bp + 44], printArgument$89	; 5: -57 70 44 -102 13
x3473:	mov [bp + 46], bp	; 3: -119 110 46
x3476:	add bp, 44	; 3: -125 -59 44
x3479:	jmp checkWidthAndPrecision	; 3: -23 -53 4

printArgument$89:	; post call

printArgument$90:	; £temporary2093 = return_value

printArgument$91:	; arg_list = £temporary2093
x3482:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$92:	; call header integral zero 0 stack zero 0

printArgument$93:	; parameter charValue, offset 6
x3485:	mov al, [bp + 31]	; 3: -118 70 31
x3488:	mov [bp + 50], al	; 3: -120 70 50

printArgument$94:	; call function noellipse-noellipse printChar
x3491:	mov word [bp + 44], printArgument$95	; 5: -57 70 44 -79 13
x3496:	mov [bp + 46], bp	; 3: -119 110 46
x3499:	add bp, 44	; 3: -125 -59 44
x3502:	jmp printChar	; 3: -23 -98 5

printArgument$95:	; post call

printArgument$96:	; goto 372
x3505:	jmp printArgument$372	; 3: -23 -128 4

printArgument$97:	; £temporary2095 = arg_list + 2
x3508:	mov ax, [bp + 8]	; 3: -117 70 8
x3511:	add ax, 2	; 3: -125 -64 2

printArgument$98:	; arg_list = £temporary2095
x3514:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$99:	; £temporary2096 = arg_list - 2
x3517:	mov si, [bp + 8]	; 3: -117 118 8
x3520:	sub si, 2	; 3: -125 -18 2

printArgument$100:	; £temporary2097 = int_to_int £temporary2096 (Signed_Int -> Pointer)

printArgument$101:	; £temporary2098 -> £temporary2097 = *£temporary2097

printArgument$102:	; stringValue = £temporary2098 -> £temporary2097
x3523:	mov ax, [si]	; 2: -117 4
x3525:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$103:	; call header integral zero 0 stack zero 0

printArgument$104:	; parameter arg_list, offset 6
x3528:	mov ax, [bp + 8]	; 3: -117 70 8
x3531:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$105:	; parameter widthPtr, offset 8
x3534:	mov ax, [bp + 16]	; 3: -117 70 16
x3537:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$106:	; £temporary2099 = &precision
x3540:	mov si, bp	; 2: -119 -18
x3542:	add si, 18	; 3: -125 -58 18

printArgument$107:	; parameter £temporary2099, offset 10
x3545:	mov [bp + 56], si	; 3: -119 118 56

printArgument$108:	; call function noellipse-noellipse checkWidthAndPrecision
x3548:	mov word [bp + 46], printArgument$109	; 5: -57 70 46 -22 13
x3553:	mov [bp + 48], bp	; 3: -119 110 48
x3556:	add bp, 46	; 3: -125 -59 46
x3559:	jmp checkWidthAndPrecision	; 3: -23 123 4

printArgument$109:	; post call

printArgument$110:	; £temporary2100 = return_value

printArgument$111:	; arg_list = £temporary2100
x3562:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$112:	; call header integral zero 0 stack zero 0

printArgument$113:	; parameter stringValue, offset 6
x3565:	mov ax, [bp + 44]	; 3: -117 70 44
x3568:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$114:	; parameter precision, offset 8
x3571:	mov ax, [bp + 18]	; 3: -117 70 18
x3574:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$115:	; call function noellipse-noellipse printString
x3577:	mov word [bp + 46], printArgument$116	; 5: -57 70 46 7 14
x3582:	mov [bp + 48], bp	; 3: -119 110 48
x3585:	add bp, 46	; 3: -125 -59 46
x3588:	jmp printString	; 3: -23 16 6

printArgument$116:	; post call

printArgument$117:	; goto 372
x3591:	jmp printArgument$372	; 3: -23 42 4

printArgument$118:	; if c != 117 goto 121
x3594:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x3598:	jne printArgument$121	; 2: 117 8

printArgument$119:	; £temporary2116 = 10
x3600:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$120:	; goto 130
x3606:	jmp printArgument$130	; 2: -21 34

printArgument$121:	; if c != 111 goto 124
x3608:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x3612:	jne printArgument$124	; 2: 117 8

printArgument$122:	; £temporary2112 = 8
x3614:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$123:	; goto 129
x3620:	jmp printArgument$129	; 2: -21 20

printArgument$124:	; if c != 98 goto 127
x3622:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x3626:	jne printArgument$127	; 2: 117 8

printArgument$125:	; £temporary2108 = 2
x3628:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$126:	; goto 128
x3634:	jmp printArgument$128	; 2: -21 6

printArgument$127:	; £temporary2108 = 16
x3636:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$128:	; £temporary2112 = £temporary2108

printArgument$129:	; £temporary2116 = £temporary2112

printArgument$130:	; base = £temporary2116
x3642:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$131:	; if shortInt == 0 goto 141
x3646:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3650:	je printArgument$141	; 2: 116 29

printArgument$132:	; £temporary2117 = arg_list + 2
x3652:	mov ax, [bp + 8]	; 3: -117 70 8
x3655:	add ax, 2	; 3: -125 -64 2

printArgument$133:	; arg_list = £temporary2117
x3658:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$134:	; £temporary2118 = arg_list - 2
x3661:	mov si, [bp + 8]	; 3: -117 118 8
x3664:	sub si, 2	; 3: -125 -18 2

printArgument$135:	; £temporary2119 = int_to_int £temporary2118 (Signed_Int -> Pointer)

printArgument$136:	; £temporary2120 -> £temporary2119 = *£temporary2119

printArgument$137:	; £temporary2121 = int_to_int £temporary2120 -> £temporary2119 (Unsigned_Int -> Unsigned_Short_Int)
x3667:	mov ax, [si]	; 2: -117 4

printArgument$138:	; £temporary2122 = int_to_int £temporary2121 (Unsigned_Short_Int -> Unsigned_Long_Int)
x3669:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$139:	; value = £temporary2122
x3675:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$140:	; goto 156
x3679:	jmp printArgument$156	; 2: -21 57

printArgument$141:	; if longInt == 0 goto 149
x3681:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3685:	je printArgument$149	; 2: 116 24

printArgument$142:	; £temporary2123 = arg_list + 4
x3687:	mov ax, [bp + 8]	; 3: -117 70 8
x3690:	add ax, 4	; 3: -125 -64 4

printArgument$143:	; arg_list = £temporary2123
x3693:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$144:	; £temporary2124 = arg_list - 4
x3696:	mov si, [bp + 8]	; 3: -117 118 8
x3699:	sub si, 4	; 3: -125 -18 4

printArgument$145:	; £temporary2125 = int_to_int £temporary2124 (Signed_Int -> Pointer)

printArgument$146:	; £temporary2126 -> £temporary2125 = *£temporary2125

printArgument$147:	; value = £temporary2126 -> £temporary2125
x3702:	mov eax, [si]	; 3: 102 -117 4
x3705:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; goto 156
x3709:	jmp printArgument$156	; 2: -21 27

printArgument$149:	; £temporary2127 = arg_list + 2
x3711:	mov ax, [bp + 8]	; 3: -117 70 8
x3714:	add ax, 2	; 3: -125 -64 2

printArgument$150:	; arg_list = £temporary2127
x3717:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$151:	; £temporary2128 = arg_list - 2
x3720:	mov si, [bp + 8]	; 3: -117 118 8
x3723:	sub si, 2	; 3: -125 -18 2

printArgument$152:	; £temporary2129 = int_to_int £temporary2128 (Signed_Int -> Pointer)

printArgument$153:	; £temporary2130 -> £temporary2129 = *£temporary2129

printArgument$154:	; £temporary2131 = int_to_int £temporary2130 -> £temporary2129 (Unsigned_Int -> Unsigned_Long_Int)
x3726:	mov ax, [si]	; 2: -117 4
x3728:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$155:	; value = £temporary2131
x3734:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$156:	; call header integral zero 0 stack zero 0

printArgument$157:	; parameter arg_list, offset 6
x3738:	mov ax, [bp + 8]	; 3: -117 70 8
x3741:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$158:	; parameter widthPtr, offset 8
x3744:	mov ax, [bp + 16]	; 3: -117 70 16
x3747:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$159:	; £temporary2134 = &precision
x3750:	mov si, bp	; 2: -119 -18
x3752:	add si, 18	; 3: -125 -58 18

printArgument$160:	; parameter £temporary2134, offset 10
x3755:	mov [bp + 62], si	; 3: -119 118 62

printArgument$161:	; call function noellipse-noellipse checkWidthAndPrecision
x3758:	mov word [bp + 52], printArgument$162	; 5: -57 70 52 -68 14
x3763:	mov [bp + 54], bp	; 3: -119 110 54
x3766:	add bp, 52	; 3: -125 -59 52
x3769:	jmp checkWidthAndPrecision	; 3: -23 -87 3

printArgument$162:	; post call

printArgument$163:	; £temporary2135 = return_value

printArgument$164:	; arg_list = £temporary2135
x3772:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$165:	; call header integral zero 0 stack zero 0

printArgument$166:	; parameter value, offset 6
x3775:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x3779:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$167:	; parameter plus, offset 10
x3783:	mov ax, [bp + 10]	; 3: -117 70 10
x3786:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$168:	; parameter space, offset 12
x3789:	mov ax, [bp + 12]	; 3: -117 70 12
x3792:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$169:	; parameter grid, offset 14
x3795:	mov ax, [bp + 14]	; 3: -117 70 14
x3798:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$170:	; parameter base, offset 16
x3801:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3805:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$171:	; call header integral zero 0 stack zero 0

printArgument$172:	; £temporary2136 = int_to_int c (Signed_Char -> Signed_Int)
x3809:	mov al, [bp + 30]	; 3: -118 70 30
x3812:	and ax, 255	; 3: 37 -1 0
x3815:	cmp al, 0	; 2: 60 0
x3817:	jge printArgument$173	; 2: 125 4
x3819:	neg al	; 2: -10 -40
x3821:	neg ax	; 2: -9 -40

printArgument$173:	; parameter £temporary2136, offset 26
x3823:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$174:	; call function noellipse-noellipse isupper
x3826:	mov word [bp + 72], printArgument$175	; 5: -57 70 72 0 15
x3831:	mov [bp + 74], bp	; 3: -119 110 74
x3834:	add bp, 72	; 3: -125 -59 72
x3837:	jmp isupper	; 3: -23 7 6

printArgument$175:	; post call

printArgument$176:	; £temporary2137 = return_value

printArgument$177:	; parameter £temporary2137, offset 20
x3840:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$178:	; call function noellipse-noellipse printUnsignedLong
x3843:	mov word [bp + 52], printArgument$179	; 5: -57 70 52 17 15
x3848:	mov [bp + 54], bp	; 3: -119 110 54
x3851:	add bp, 52	; 3: -125 -59 52
x3854:	jmp printUnsignedLong	; 3: -23 71 12

printArgument$179:	; post call

printArgument$180:	; goto 372
x3857:	jmp printArgument$372	; 3: -23 32 3

printArgument$181:	; if longDouble == 0 goto 199
x3860:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3864:	je printArgument$199	; 2: 116 62

printArgument$182:	; £temporary2139 = arg_list + 8
x3866:	mov ax, [bp + 8]	; 3: -117 70 8
x3869:	add ax, 8	; 3: -125 -64 8

printArgument$183:	; arg_list = £temporary2139
x3872:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$184:	; £temporary2140 = arg_list - 8
x3875:	mov si, [bp + 8]	; 3: -117 118 8
x3878:	sub si, 8	; 3: -125 -18 8

printArgument$185:	; £temporary2141 = int_to_int £temporary2140 (Signed_Int -> Pointer)

printArgument$186:	; £temporary2142 -> £temporary2141 = *£temporary2141

printArgument$187:	; push float £temporary2142 -> £temporary2141
x3881:	fld qword [si]	; 2: -35 4

printArgument$188:	; pop float longDoubleValue
x3883:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$189:	; call header integral zero 0 stack zero 0

printArgument$190:	; push float longDoubleValue
x3886:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$191:	; parameter longDoubleValue, offset 6
x3889:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$192:	; parameter 0, offset 14
x3892:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$193:	; parameter 0, offset 16
x3897:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$194:	; parameter 0, offset 18
x3902:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$195:	; parameter 3, offset 20
x3907:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$196:	; call function noellipse-noellipse printLongDoublePlain
x3912:	mov word [bp + 44], printArgument$197	; 5: -57 70 44 86 15
x3917:	mov [bp + 46], bp	; 3: -119 110 46
x3920:	add bp, 44	; 3: -125 -59 44
x3923:	jmp printLongDoublePlain	; 3: -23 -83 13

printArgument$197:	; post call

printArgument$198:	; goto 206
x3926:	jmp printArgument$206	; 2: -21 20

printArgument$199:	; £temporary2144 = arg_list + 8
x3928:	mov ax, [bp + 8]	; 3: -117 70 8
x3931:	add ax, 8	; 3: -125 -64 8

printArgument$200:	; arg_list = £temporary2144
x3934:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$201:	; £temporary2145 = arg_list - 8
x3937:	mov si, [bp + 8]	; 3: -117 118 8
x3940:	sub si, 8	; 3: -125 -18 8

printArgument$202:	; £temporary2146 = int_to_int £temporary2145 (Signed_Int -> Pointer)

printArgument$203:	; £temporary2147 -> £temporary2146 = *£temporary2146

printArgument$204:	; push float £temporary2147 -> £temporary2146
x3943:	fld qword [si]	; 2: -35 4

printArgument$205:	; pop float longDoubleValue
x3945:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$206:	; if negativePtr == 0 goto 215
x3948:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3952:	je printArgument$215	; 2: 116 26

printArgument$207:	; £temporary2151 -> negativePtr = *negativePtr
x3954:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$208:	; push float longDoubleValue
x3957:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$209:	; push 0
x3960:	fldz	; 2: -39 -18

printArgument$210:	; if longDoubleValue >= 0 goto 213
x3962:	fcompp	; 2: -34 -39
x3964:	fstsw ax	; 3: -101 -33 -32
x3967:	sahf	; 1: -98
x3968:	jbe printArgument$213	; 2: 118 5

printArgument$211:	; £temporary2153 = 1
x3970:	mov ax, 1	; 3: -72 1 0

printArgument$212:	; goto 214
x3973:	jmp printArgument$214	; 2: -21 3

printArgument$213:	; £temporary2153 = 0
x3975:	mov ax, 0	; 3: -72 0 0

printArgument$214:	; £temporary2151 -> negativePtr = £temporary2153
x3978:	mov [si], ax	; 2: -119 4

printArgument$215:	; if sign != 0 goto 223
x3980:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3984:	jne printArgument$223	; 2: 117 23

printArgument$216:	; call header integral zero 0 stack zero 0

printArgument$217:	; push float longDoubleValue
x3986:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$218:	; parameter longDoubleValue, offset 6
x3989:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$219:	; call function noellipse-noellipse fabs
x3992:	mov word [bp + 44], printArgument$220	; 5: -57 70 44 -90 15
x3997:	mov [bp + 46], bp	; 3: -119 110 46
x4000:	add bp, 44	; 3: -125 -59 44
x4003:	jmp fabs	; 3: -23 -102 14

printArgument$220:	; post call

printArgument$221:	; £temporary2156 = return_value

printArgument$222:	; pop float longDoubleValue
x4006:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; parameter arg_list, offset 6
x4009:	mov ax, [bp + 8]	; 3: -117 70 8
x4012:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$225:	; parameter widthPtr, offset 8
x4015:	mov ax, [bp + 16]	; 3: -117 70 16
x4018:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$226:	; £temporary2157 = &precision
x4021:	mov si, bp	; 2: -119 -18
x4023:	add si, 18	; 3: -125 -58 18

printArgument$227:	; parameter £temporary2157, offset 10
x4026:	mov [bp + 54], si	; 3: -119 118 54

printArgument$228:	; call function noellipse-noellipse checkWidthAndPrecision
x4029:	mov word [bp + 44], printArgument$229	; 5: -57 70 44 -53 15
x4034:	mov [bp + 46], bp	; 3: -119 110 46
x4037:	add bp, 44	; 3: -125 -59 44
x4040:	jmp checkWidthAndPrecision	; 3: -23 -102 2

printArgument$229:	; post call

printArgument$230:	; £temporary2158 = return_value

printArgument$231:	; arg_list = £temporary2158
x4043:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$232:	; if c != 102 goto 243
x4046:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x4050:	jne printArgument$243	; 2: 117 47

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; push float longDoubleValue
x4052:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$235:	; parameter longDoubleValue, offset 6
x4055:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$236:	; parameter plus, offset 14
x4058:	mov ax, [bp + 10]	; 3: -117 70 10
x4061:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$237:	; parameter space, offset 16
x4064:	mov ax, [bp + 12]	; 3: -117 70 12
x4067:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$238:	; parameter grid, offset 18
x4070:	mov ax, [bp + 14]	; 3: -117 70 14
x4073:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$239:	; parameter precision, offset 20
x4076:	mov ax, [bp + 18]	; 3: -117 70 18
x4079:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$240:	; call function noellipse-noellipse printLongDoublePlain
x4082:	mov word [bp + 44], printArgument$241	; 5: -57 70 44 0 16
x4087:	mov [bp + 46], bp	; 3: -119 110 46
x4090:	add bp, 44	; 3: -125 -59 44
x4093:	jmp printLongDoublePlain	; 3: -23 3 13

printArgument$241:	; post call

printArgument$242:	; goto 372
x4096:	jmp printArgument$372	; 3: -23 49 2

printArgument$243:	; call header integral zero 0 stack zero 0

printArgument$244:	; £temporary2161 = int_to_int c (Signed_Char -> Signed_Int)
x4099:	mov al, [bp + 30]	; 3: -118 70 30
x4102:	and ax, 255	; 3: 37 -1 0
x4105:	cmp al, 0	; 2: 60 0
x4107:	jge printArgument$245	; 2: 125 4
x4109:	neg al	; 2: -10 -40
x4111:	neg ax	; 2: -9 -40

printArgument$245:	; parameter £temporary2161, offset 6
x4113:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$246:	; call function noellipse-noellipse tolower
x4116:	mov word [bp + 44], printArgument$247	; 5: -57 70 44 34 16
x4121:	mov [bp + 46], bp	; 3: -119 110 46
x4124:	add bp, 44	; 3: -125 -59 44
x4127:	jmp tolower	; 3: -23 64 14

printArgument$247:	; post call

printArgument$248:	; £temporary2162 = return_value

printArgument$249:	; if £temporary2162 != 101 goto 267
x4130:	cmp bx, 101	; 3: -125 -5 101
x4133:	jne printArgument$267	; 2: 117 81

printArgument$250:	; call header integral zero 0 stack zero 0

printArgument$251:	; push float longDoubleValue
x4135:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$252:	; parameter longDoubleValue, offset 6
x4138:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$253:	; parameter plus, offset 14
x4141:	mov ax, [bp + 10]	; 3: -117 70 10
x4144:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$254:	; parameter space, offset 16
x4147:	mov ax, [bp + 12]	; 3: -117 70 12
x4150:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$255:	; parameter grid, offset 18
x4153:	mov ax, [bp + 14]	; 3: -117 70 14
x4156:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$256:	; parameter precision, offset 20
x4159:	mov ax, [bp + 18]	; 3: -117 70 18
x4162:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; £temporary2164 = int_to_int c (Signed_Char -> Signed_Int)
x4165:	mov al, [bp + 30]	; 3: -118 70 30
x4168:	and ax, 255	; 3: 37 -1 0
x4171:	cmp al, 0	; 2: 60 0
x4173:	jge printArgument$259	; 2: 125 4
x4175:	neg al	; 2: -10 -40
x4177:	neg ax	; 2: -9 -40

printArgument$259:	; parameter £temporary2164, offset 28
x4179:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$260:	; call function noellipse-noellipse isupper
x4182:	mov word [bp + 66], printArgument$261	; 5: -57 70 66 100 16
x4187:	mov [bp + 68], bp	; 3: -119 110 68
x4190:	add bp, 66	; 3: -125 -59 66
x4193:	jmp isupper	; 3: -23 -93 4

printArgument$261:	; post call

printArgument$262:	; £temporary2165 = return_value

printArgument$263:	; parameter £temporary2165, offset 22
x4196:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$264:	; call function noellipse-noellipse printLongDoubleExpo
x4199:	mov word [bp + 44], printArgument$265	; 5: -57 70 44 117 16
x4204:	mov [bp + 46], bp	; 3: -119 110 46
x4207:	add bp, 44	; 3: -125 -59 44
x4210:	jmp printLongDoubleExpo	; 3: -23 -114 14

printArgument$265:	; post call

printArgument$266:	; goto 372
x4213:	jmp printArgument$372	; 3: -23 -68 1

printArgument$267:	; call header integral zero 0 stack zero 0

printArgument$268:	; call header integral zero 0 stack zero 0

printArgument$269:	; push float longDoubleValue
x4216:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$270:	; parameter longDoubleValue, offset 6
x4219:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$271:	; call function noellipse-noellipse fabs
x4222:	mov word [bp + 44], printArgument$272	; 5: -57 70 44 -116 16
x4227:	mov [bp + 46], bp	; 3: -119 110 46
x4230:	add bp, 44	; 3: -125 -59 44
x4233:	jmp fabs	; 3: -23 -76 13

printArgument$272:	; post call

printArgument$273:	; £temporary2167 = return_value

printArgument$274:	; parameter £temporary2167, offset 6
x4236:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$275:	; call function noellipse-noellipse log10
x4239:	mov word [bp + 44], printArgument$276	; 5: -57 70 44 -99 16
x4244:	mov [bp + 46], bp	; 3: -119 110 46
x4247:	add bp, 44	; 3: -125 -59 44
x4250:	jmp log10	; 3: -23 -51 15

printArgument$276:	; post call

printArgument$277:	; £temporary2168 = return_value

printArgument$278:	; £temporary2169 = float_to_int £temporary2168 (Double -> Signed_Int)
x4253:	fistp word [$IntegralStorage#]	; 4: -33 30 66 18
x4257:	mov ax, [$IntegralStorage#]	; 3: -95 66 18

printArgument$279:	; expo = £temporary2169
x4260:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$280:	; if expo < -3 goto 292
x4263:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x4267:	jl printArgument$292	; 2: 124 53

printArgument$281:	; if expo > 2 goto 292
x4269:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x4273:	jg printArgument$292	; 2: 127 47

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x4275:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x4278:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x4281:	mov ax, [bp + 10]	; 3: -117 70 10
x4284:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x4287:	mov ax, [bp + 12]	; 3: -117 70 12
x4290:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x4293:	mov ax, [bp + 14]	; 3: -117 70 14
x4296:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x4299:	mov ax, [bp + 18]	; 3: -117 70 18
x4302:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call function noellipse-noellipse printLongDoublePlain
x4305:	mov word [bp + 46], printArgument$290	; 5: -57 70 46 -33 16
x4310:	mov [bp + 48], bp	; 3: -119 110 48
x4313:	add bp, 46	; 3: -125 -59 46
x4316:	jmp printLongDoublePlain	; 3: -23 36 12

printArgument$290:	; post call

printArgument$291:	; goto 372
x4319:	jmp printArgument$372	; 3: -23 82 1

printArgument$292:	; call header integral zero 0 stack zero 0

printArgument$293:	; push float longDoubleValue
x4322:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$294:	; parameter longDoubleValue, offset 6
x4325:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$295:	; parameter plus, offset 14
x4328:	mov ax, [bp + 10]	; 3: -117 70 10
x4331:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$296:	; parameter space, offset 16
x4334:	mov ax, [bp + 12]	; 3: -117 70 12
x4337:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$297:	; parameter grid, offset 18
x4340:	mov ax, [bp + 14]	; 3: -117 70 14
x4343:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$298:	; parameter precision, offset 20
x4346:	mov ax, [bp + 18]	; 3: -117 70 18
x4349:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$299:	; call header integral zero 0 stack zero 0

printArgument$300:	; £temporary2174 = int_to_int c (Signed_Char -> Signed_Int)
x4352:	mov al, [bp + 30]	; 3: -118 70 30
x4355:	and ax, 255	; 3: 37 -1 0
x4358:	cmp al, 0	; 2: 60 0
x4360:	jge printArgument$301	; 2: 125 4
x4362:	neg al	; 2: -10 -40
x4364:	neg ax	; 2: -9 -40

printArgument$301:	; parameter £temporary2174, offset 28
x4366:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$302:	; call function noellipse-noellipse isupper
x4369:	mov word [bp + 68], printArgument$303	; 5: -57 70 68 31 17
x4374:	mov [bp + 70], bp	; 3: -119 110 70
x4377:	add bp, 68	; 3: -125 -59 68
x4380:	jmp isupper	; 3: -23 -24 3

printArgument$303:	; post call

printArgument$304:	; £temporary2175 = return_value

printArgument$305:	; parameter £temporary2175, offset 22
x4383:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$306:	; call function noellipse-noellipse printLongDoubleExpo
x4386:	mov word [bp + 46], printArgument$307	; 5: -57 70 46 48 17
x4391:	mov [bp + 48], bp	; 3: -119 110 48
x4394:	add bp, 46	; 3: -125 -59 46
x4397:	jmp printLongDoubleExpo	; 3: -23 -45 13

printArgument$307:	; post call

printArgument$308:	; goto 372
x4400:	jmp printArgument$372	; 3: -23 1 1

printArgument$309:	; £temporary2177 = arg_list + 2
x4403:	mov ax, [bp + 8]	; 3: -117 70 8
x4406:	add ax, 2	; 3: -125 -64 2

printArgument$310:	; arg_list = £temporary2177
x4409:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$311:	; £temporary2178 = arg_list - 2
x4412:	mov si, [bp + 8]	; 3: -117 118 8
x4415:	sub si, 2	; 3: -125 -18 2

printArgument$312:	; £temporary2179 = int_to_int £temporary2178 (Signed_Int -> Pointer)

printArgument$313:	; £temporary2180 -> £temporary2179 = *£temporary2179

printArgument$314:	; ptrValue = £temporary2180 -> £temporary2179
x4418:	mov ax, [si]	; 2: -117 4
x4420:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$315:	; call header integral zero 0 stack zero 0

printArgument$316:	; parameter arg_list, offset 6
x4423:	mov ax, [bp + 8]	; 3: -117 70 8
x4426:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$317:	; parameter widthPtr, offset 8
x4429:	mov ax, [bp + 16]	; 3: -117 70 16
x4432:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$318:	; £temporary2181 = &precision
x4435:	mov si, bp	; 2: -119 -18
x4437:	add si, 18	; 3: -125 -58 18

printArgument$319:	; parameter £temporary2181, offset 10
x4440:	mov [bp + 54], si	; 3: -119 118 54

printArgument$320:	; call function noellipse-noellipse checkWidthAndPrecision
x4443:	mov word [bp + 44], printArgument$321	; 5: -57 70 44 105 17
x4448:	mov [bp + 46], bp	; 3: -119 110 46
x4451:	add bp, 44	; 3: -125 -59 44
x4454:	jmp checkWidthAndPrecision	; 3: -23 -4 0

printArgument$321:	; post call

printArgument$322:	; £temporary2182 = return_value

printArgument$323:	; arg_list = £temporary2182
x4457:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$324:	; call header integral zero 0 stack zero 0

printArgument$325:	; £temporary2183 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x4460:	mov ax, [bp + 42]	; 3: -117 70 42
x4463:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$326:	; parameter £temporary2183, offset 6
x4469:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$327:	; parameter 0, offset 10
x4473:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$328:	; parameter 0, offset 12
x4478:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$329:	; parameter 0, offset 14
x4483:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$330:	; parameter 10, offset 16
x4488:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$331:	; parameter 0, offset 20
x4496:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$332:	; call function noellipse-noellipse printUnsignedLong
x4501:	mov word [bp + 44], printArgument$333	; 5: -57 70 44 -93 17
x4506:	mov [bp + 46], bp	; 3: -119 110 46
x4509:	add bp, 44	; 3: -125 -59 44
x4512:	jmp printUnsignedLong	; 3: -23 -75 9

printArgument$333:	; post call

printArgument$334:	; goto 372
x4515:	jmp printArgument$372	; 3: -23 -114 0

printArgument$335:	; £temporary2185 = arg_list + 2
x4518:	mov ax, [bp + 8]	; 3: -117 70 8
x4521:	add ax, 2	; 3: -125 -64 2

printArgument$336:	; arg_list = £temporary2185
x4524:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$337:	; £temporary2186 = arg_list - 2
x4527:	mov si, [bp + 8]	; 3: -117 118 8
x4530:	sub si, 2	; 3: -125 -18 2

printArgument$338:	; £temporary2187 = int_to_int £temporary2186 (Signed_Int -> Pointer)

printArgument$339:	; £temporary2188 -> £temporary2187 = *£temporary2187

printArgument$340:	; ptrValue = £temporary2188 -> £temporary2187
x4533:	mov ax, [si]	; 2: -117 4
x4535:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$341:	; £temporary2189 = arg_list + 2
x4538:	mov ax, [bp + 8]	; 3: -117 70 8
x4541:	add ax, 2	; 3: -125 -64 2

printArgument$342:	; arg_list = £temporary2189
x4544:	mov [bp + 8], ax	; 3: -119 70 8

printArgument$343:	; £temporary2190 = arg_list - 2
x4547:	mov si, [bp + 8]	; 3: -117 118 8
x4550:	sub si, 2	; 3: -125 -18 2

printArgument$344:	; £temporary2191 = int_to_int £temporary2190 (Signed_Int -> Pointer)

printArgument$345:	; £temporary2192 -> £temporary2191 = *£temporary2191

printArgument$346:	; intPtr = £temporary2192 -> £temporary2191
x4553:	mov ax, [si]	; 2: -117 4
x4555:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$347:	; call header integral zero 0 stack zero 0

printArgument$348:	; parameter arg_list, offset 6
x4558:	mov ax, [bp + 8]	; 3: -117 70 8
x4561:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$349:	; parameter widthPtr, offset 8
x4564:	mov ax, [bp + 16]	; 3: -117 70 16
x4567:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$350:	; £temporary2193 = &precision
x4570:	mov si, bp	; 2: -119 -18
x4572:	add si, 18	; 3: -125 -58 18

printArgument$351:	; parameter £temporary2193, offset 10
x4575:	mov [bp + 54], si	; 3: -119 118 54

printArgument$352:	; call function noellipse-noellipse checkWidthAndPrecision
x4578:	mov word [bp + 44], printArgument$353	; 5: -57 70 44 -16 17
x4583:	mov [bp + 46], bp	; 3: -119 110 46
x4586:	add bp, 44	; 3: -125 -59 44
x4589:	nop	; 1: -112
x4590:	jmp checkWidthAndPrecision	; 2: -21 117

printArgument$353:	; post call

printArgument$354:	; £temporary2194 = return_value

printArgument$355:	; arg_list = £temporary2194
x4592:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$356:	; £temporary2195 -> intPtr = *intPtr
x4595:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$357:	; £temporary2195 -> intPtr = g_outChars
x4598:	mov ax, [g_outChars]	; 3: -95 -21 11
x4601:	mov [si], ax	; 2: -119 4

printArgument$358:	; goto 372
x4603:	jmp printArgument$372	; 2: -21 55

printArgument$359:	; call header integral zero 0 stack zero 0

printArgument$360:	; parameter arg_list, offset 6
x4605:	mov ax, [bp + 8]	; 3: -117 70 8
x4608:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$361:	; parameter widthPtr, offset 8
x4611:	mov ax, [bp + 16]	; 3: -117 70 16
x4614:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$362:	; £temporary2196 = &precision
x4617:	mov si, bp	; 2: -119 -18
x4619:	add si, 18	; 3: -125 -58 18

printArgument$363:	; parameter £temporary2196, offset 10
x4622:	mov [bp + 54], si	; 3: -119 118 54

printArgument$364:	; call function noellipse-noellipse checkWidthAndPrecision
x4625:	mov word [bp + 44], printArgument$365	; 5: -57 70 44 31 18
x4630:	mov [bp + 46], bp	; 3: -119 110 46
x4633:	add bp, 44	; 3: -125 -59 44
x4636:	nop	; 1: -112
x4637:	jmp checkWidthAndPrecision	; 2: -21 70

printArgument$365:	; post call

printArgument$366:	; £temporary2197 = return_value

printArgument$367:	; arg_list = £temporary2197
x4639:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$368:	; call header integral zero 0 stack zero 0

printArgument$369:	; parameter 37, offset 6
x4642:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$370:	; call function noellipse-noellipse printChar
x4646:	mov word [bp + 44], printArgument$371	; 5: -57 70 44 52 18
x4651:	mov [bp + 46], bp	; 3: -119 110 46
x4654:	add bp, 44	; 3: -125 -59 44
x4657:	jmp printChar	; 3: -23 27 1

printArgument$371:	; post call

printArgument$372:	; return_value = arg_list
x4660:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$373:	; return
x4663:	mov ax, [bp]	; 3: -117 70 0
x4666:	mov di, [bp + 4]	; 3: -117 126 4
x4669:	mov bp, [bp + 2]	; 3: -117 110 2
x4672:	jmp ax	; 2: -1 -32

printArgument$374:	; function end printArgument

$IntegralStorage#:
x4674:	db 0, 0, 0, 0	; 4: 0 0 0 0

labs:	; if value >= 0 goto 4
x4678:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4683:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2663 = -value
x4685:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x4689:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2667 = £temporary2663

labs$3:	; goto 5
x4692:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2667 = value
x4694:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2667

labs$6:	; return
x4698:	mov ax, [bp]	; 3: -117 70 0
x4701:	mov di, [bp + 4]	; 3: -117 126 4
x4704:	mov bp, [bp + 2]	; 3: -117 110 2
x4707:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 10
x4709:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4713:	je checkWidthAndPrecision$10	; 2: 116 30

checkWidthAndPrecision$1:	; £temporary2041 -> widthPtr = *widthPtr
x4715:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary2041 -> widthPtr != -1 goto 10
x4718:	cmp word [si], -1	; 3: -125 60 -1
x4721:	jne checkWidthAndPrecision$10	; 2: 117 22

checkWidthAndPrecision$3:	; £temporary2044 -> widthPtr = *widthPtr
x4723:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; £temporary2045 = arg_list + 2
x4726:	mov ax, [bp + 6]	; 3: -117 70 6
x4729:	add ax, 2	; 3: -125 -64 2

checkWidthAndPrecision$5:	; arg_list = £temporary2045
x4732:	mov [bp + 6], ax	; 3: -119 70 6

checkWidthAndPrecision$6:	; £temporary2046 = arg_list - 2
x4735:	mov di, [bp + 6]	; 3: -117 126 6
x4738:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$7:	; £temporary2047 = int_to_int £temporary2046 (Signed_Int -> Pointer)

checkWidthAndPrecision$8:	; £temporary2048 -> £temporary2047 = *£temporary2047

checkWidthAndPrecision$9:	; £temporary2044 -> widthPtr = £temporary2048 -> £temporary2047
x4741:	mov ax, [di]	; 2: -117 5
x4743:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$10:	; if precisionPtr == 0 goto 20
x4745:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4749:	je checkWidthAndPrecision$20	; 2: 116 30

checkWidthAndPrecision$11:	; £temporary2050 -> precisionPtr = *precisionPtr
x4751:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$12:	; if £temporary2050 -> precisionPtr != -1 goto 20
x4754:	cmp word [si], -1	; 3: -125 60 -1
x4757:	jne checkWidthAndPrecision$20	; 2: 117 22

checkWidthAndPrecision$13:	; £temporary2053 -> precisionPtr = *precisionPtr
x4759:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$14:	; £temporary2054 = arg_list + 2
x4762:	mov ax, [bp + 6]	; 3: -117 70 6
x4765:	add ax, 2	; 3: -125 -64 2

checkWidthAndPrecision$15:	; arg_list = £temporary2054
x4768:	mov [bp + 6], ax	; 3: -119 70 6

checkWidthAndPrecision$16:	; £temporary2055 = arg_list - 2
x4771:	mov di, [bp + 6]	; 3: -117 126 6
x4774:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$17:	; £temporary2056 = int_to_int £temporary2055 (Signed_Int -> Pointer)

checkWidthAndPrecision$18:	; £temporary2057 -> £temporary2056 = *£temporary2056

checkWidthAndPrecision$19:	; £temporary2053 -> precisionPtr = £temporary2057 -> £temporary2056
x4777:	mov ax, [di]	; 2: -117 5
x4779:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$20:	; return_value = arg_list
x4781:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$21:	; return
x4784:	mov ax, [bp]	; 3: -117 70 0
x4787:	mov di, [bp + 4]	; 3: -117 126 4
x4790:	mov bp, [bp + 2]	; 3: -117 110 2
x4793:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$22:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x4795:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4800:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1896 = -longValue
x4802:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4806:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1896
x4809:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x4813:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x4817:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -33 18
x4822:	mov [bp + 16], bp	; 3: -119 110 16
x4825:	add bp, 14	; 3: -125 -59 14
x4828:	nop	; 1: -112
x4829:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x4831:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x4833:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4837:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x4839:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x4843:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -7 18
x4848:	mov [bp + 16], bp	; 3: -119 110 16
x4851:	add bp, 14	; 3: -125 -59 14
x4854:	nop	; 1: -112
x4855:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x4857:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x4859:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4863:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x4865:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x4869:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 19 19
x4874:	mov [bp + 16], bp	; 3: -119 110 16
x4877:	add bp, 14	; 3: -125 -59 14
x4880:	nop	; 1: -112
x4881:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x4883:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4888:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x4890:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x4894:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 44 19
x4899:	mov [bp + 16], bp	; 3: -119 110 16
x4902:	add bp, 14	; 3: -125 -59 14
x4905:	nop	; 1: -112
x4906:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x4908:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x4910:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4914:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x4918:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 68 19
x4923:	mov [bp + 16], bp	; 3: -119 110 16
x4926:	add bp, 14	; 3: -125 -59 14
x4929:	nop	; 1: -112
x4930:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x4932:	mov ax, [bp]	; 3: -117 70 0
x4935:	mov di, [bp + 4]	; 3: -117 126 4
x4938:	mov bp, [bp + 2]	; 3: -117 110 2
x4941:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x4943:	mov ax, [g_outStatus]	; 3: -95 -115 6
x4946:	cmp ax, 0	; 3: -125 -8 0
x4949:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x4951:	cmp ax, 1	; 3: -125 -8 1
x4954:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x4956:	cmp ax, 2	; 3: -125 -8 2
x4959:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x4961:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1838 = int_to_int g_outDevice (Pointer -> Pointer)
x4963:	mov ax, [g_outDevice]	; 3: -95 -113 6

printChar$6:	; stream = £temporary1838
x4966:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x4969:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1841 -> stream = *stream, offset 2
x4971:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1841 -> stream
x4974:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x4977:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1844 = &c
x4980:	mov dx, bp	; 2: -119 -22
x4982:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1844

printChar$13:	; interrupt 33
x4985:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x4987:	inc word [g_outChars]	; 4: -1 6 -21 11

printChar$15:	; goto 25
x4991:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1846 = int_to_int g_outDevice (Pointer -> Pointer)
x4993:	mov ax, [g_outDevice]	; 3: -95 -113 6

printChar$17:	; outString = £temporary1846
x4996:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1847 = g_outChars
x4999:	mov ax, [g_outChars]	; 3: -95 -21 11

printChar$19:	; ++g_outChars
x5002:	inc word [g_outChars]	; 4: -1 6 -21 11

printChar$20:	; £temporary1849 = outString + £temporary1847
x5006:	mov si, [bp + 9]	; 3: -117 118 9
x5009:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1848 -> £temporary1849 = *£temporary1849

printChar$22:	; £temporary1848 -> £temporary1849 = c
x5011:	mov al, [bp + 6]	; 3: -118 70 6
x5014:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x5016:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x5018:	inc word [g_outChars]	; 4: -1 6 -21 11

printChar$25:	; return
x5022:	mov ax, [bp]	; 3: -117 70 0
x5025:	mov di, [bp + 4]	; 3: -117 126 4
x5028:	mov bp, [bp + 2]	; 3: -117 110 2
x5031:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x5033:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x5038:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1886 = longValue % 10
x5040:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x5044:	xor edx, edx	; 3: 102 49 -46
x5047:	idiv dword [int4$10#]	; 5: 102 -9 62 19 20

printLongIntRec$2:	; £temporary1887 = int_to_int £temporary1886 (Signed_Long_Int -> Signed_Int)
x5052:	cmp edx, 0	; 4: 102 -125 -6 0
x5056:	jge printLongIntRec$3	; 2: 125 5
x5058:	neg edx	; 3: 102 -9 -38
x5061:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1887
x5063:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1888 = longValue / 10
x5066:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x5070:	xor edx, edx	; 3: 102 49 -46
x5073:	idiv dword [int4$10#]	; 5: 102 -9 62 19 20

printLongIntRec$6:	; parameter £temporary1888, offset 6
x5078:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x5082:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -24 19
x5087:	mov [bp + 14], bp	; 3: -119 110 14
x5090:	add bp, 12	; 3: -125 -59 12
x5093:	nop	; 1: -112
x5094:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1890 = digit + 48
x5096:	mov ax, [bp + 10]	; 3: -117 70 10
x5099:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1891 = int_to_int £temporary1890 (Signed_Int -> Signed_Char)
x5102:	cmp ax, 0	; 3: -125 -8 0
x5105:	jge printLongIntRec$12	; 2: 125 4
x5107:	neg ax	; 2: -9 -40
x5109:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1891, offset 6
x5111:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x5114:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 8 20
x5119:	mov [bp + 14], bp	; 3: -119 110 14
x5122:	add bp, 12	; 3: -125 -59 12
x5125:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x5128:	mov ax, [bp]	; 3: -117 70 0
x5131:	mov di, [bp + 4]	; 3: -117 126 4
x5134:	mov bp, [bp + 2]	; 3: -117 110 2
x5137:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x5139:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x5143:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x5147:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x5149:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5153:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x5155:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1855 = s + index
x5160:	mov si, [bp + 6]	; 3: -117 118 6
x5163:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1854 -> £temporary1855 = *£temporary1855

printString$5:	; if £temporary1854 -> £temporary1855 == 0 goto 53
x5166:	cmp byte [si], 0	; 3: -128 60 0
x5169:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1859 = s + index
x5173:	mov si, [bp + 6]	; 3: -117 118 6
x5176:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1858 -> £temporary1859 = *£temporary1859

printString$9:	; parameter £temporary1858 -> £temporary1859, offset 6
x5179:	mov al, [si]	; 2: -118 4
x5181:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x5184:	mov word [bp + 12], printString$11	; 5: -57 70 12 78 20
x5189:	mov [bp + 14], bp	; 3: -119 110 14
x5192:	add bp, 12	; 3: -125 -59 12
x5195:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x5198:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x5201:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x5203:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1861 = precision
x5208:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x5211:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1861 <= 0 goto 53
x5214:	cmp ax, 0	; 3: -125 -8 0
x5217:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1864 = s + index
x5221:	mov si, [bp + 6]	; 3: -117 118 6
x5224:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1863 -> £temporary1864 = *£temporary1864

printString$20:	; if £temporary1863 -> £temporary1864 == 0 goto 53
x5227:	cmp byte [si], 0	; 3: -128 60 0
x5230:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1869 = s + index
x5234:	mov si, [bp + 6]	; 3: -117 118 6
x5237:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1868 -> £temporary1869 = *£temporary1869

printString$24:	; parameter £temporary1868 -> £temporary1869, offset 6
x5240:	mov al, [si]	; 2: -118 4
x5242:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x5245:	mov word [bp + 12], printString$26	; 5: -57 70 12 -117 20
x5250:	mov [bp + 14], bp	; 3: -119 110 14
x5253:	add bp, 12	; 3: -125 -59 12
x5256:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x5259:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x5262:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x5264:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x5268:	mov word [bp + 10], printString$32	; 5: -57 70 10 -94 20
x5273:	mov [bp + 12], bp	; 3: -119 110 12
x5276:	add bp, 10	; 3: -125 -59 10
x5279:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x5282:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x5286:	mov word [bp + 10], printString$36	; 5: -57 70 10 -76 20
x5291:	mov [bp + 12], bp	; 3: -119 110 12
x5294:	add bp, 10	; 3: -125 -59 10
x5297:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x5300:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x5304:	mov word [bp + 10], printString$40	; 5: -57 70 10 -58 20
x5309:	mov [bp + 12], bp	; 3: -119 110 12
x5312:	add bp, 10	; 3: -125 -59 10
x5315:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x5318:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x5322:	mov word [bp + 10], printString$44	; 5: -57 70 10 -40 20
x5327:	mov [bp + 12], bp	; 3: -119 110 12
x5330:	add bp, 10	; 3: -125 -59 10
x5333:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x5336:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x5340:	mov word [bp + 10], printString$48	; 5: -57 70 10 -22 20
x5345:	mov [bp + 12], bp	; 3: -119 110 12
x5348:	add bp, 10	; 3: -125 -59 10
x5351:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x5354:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x5358:	mov word [bp + 10], printString$52	; 5: -57 70 10 -4 20
x5363:	mov [bp + 12], bp	; 3: -119 110 12
x5366:	add bp, 10	; 3: -125 -59 10
x5369:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x5372:	mov ax, [bp]	; 3: -117 70 0
x5375:	mov di, [bp + 4]	; 3: -117 126 4
x5378:	mov bp, [bp + 2]	; 3: -117 110 2
x5381:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x5383:	mov word [bp + 8], isupper$2	; 5: -57 70 8 21 21
x5388:	mov [bp + 10], bp	; 3: -119 110 10
x5391:	add bp, 8	; 3: -125 -59 8
x5394:	nop	; 1: -112
x5395:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary329 = return_value

isupper$4:	; localeConvPtr = £temporary329
x5397:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x5400:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5404:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary331 -> localeConvPtr = *localeConvPtr, offset 14
x5406:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary331 -> localeConvPtr, offset 6
x5409:	mov ax, [si + 14]	; 3: -117 68 14
x5412:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x5415:	mov ax, [bp + 6]	; 3: -117 70 6
x5418:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x5421:	mov word [bp + 10], isupper$11	; 5: -57 70 10 59 21
x5426:	mov [bp + 12], bp	; 3: -119 110 12
x5429:	add bp, 10	; 3: -125 -59 10
x5432:	jmp strchr	; 3: -23 -51 5

isupper$11:	; post call

isupper$12:	; £temporary332 = return_value

isupper$13:	; if £temporary332 == 0 goto 16
x5435:	cmp bx, 0	; 3: -125 -5 0
x5438:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary334 = 1
x5440:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x5443:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary334 = 0
x5445:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary334

isupper$18:	; return
x5448:	mov ax, [bp]	; 3: -117 70 0
x5451:	mov di, [bp + 4]	; 3: -117 126 4
x5454:	mov bp, [bp + 2]	; 3: -117 110 2
x5457:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x5459:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x5463:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x5465:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x5469:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary338 = 1
x5471:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x5474:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary338 = 0
x5476:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary338

isupper$25:	; return
x5479:	mov ax, [bp]	; 3: -117 70 0
x5482:	mov di, [bp + 4]	; 3: -117 126 4
x5485:	mov bp, [bp + 2]	; 3: -117 110 2
x5488:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x5490:	cmp word [@22$g_currStructPtr], 0	; 5: -125 62 -112 21 0
x5495:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary478 -> g_currStructPtr = *g_currStructPtr, offset 2
x5497:	mov si, [@22$g_currStructPtr]	; 4: -117 54 -112 21

localeconv$2:	; £temporary482 = £temporary478 -> g_currStructPtr
x5501:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x5504:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary482 = 0
x5506:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary482

localeconv$6:	; return
x5509:	mov ax, [bp]	; 3: -117 70 0
x5512:	mov di, [bp + 4]	; 3: -117 126 4
x5515:	mov bp, [bp + 2]	; 3: -117 110 2
x5518:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@22$g_currStructPtr:
x5520:	dw @20$sArray	; 2: -110 21

@20$sArray:
x5522:	dw string_# ; 2: -94 21
x5524:	dw @19$sw_EN_utf8	; 2: -93 21
x5526:	dw string_C# ; 2: -112 24
x5528:	dw @13$en_US_utf8	; 2: -110 24
x5530:	dw string_US# ; 2: 2 27
x5532:	dw @13$en_US_utf8	; 2: -110 24
x5534:	dw string_SE# ; 2: 5 27
x5536:	dw @19$sw_EN_utf8	; 2: -93 21

string_#:
x5538:	db 0	; 1: 0

@19$sw_EN_utf8:
x5539:	dw 1	; 2: 1 0
x5541:	dw 2	; 2: 2 0
x5543:	dw @14$swShortDayList ; 2: -75 21
x5545:	dw @15$swLongDayList ; 2: -33 21
x5547:	dw @11$enShortMonthList ; 2: 31 22
x5549:	dw @17$swLongMonthList ; 2: 103 22
x5551:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -43 22
x5553:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -16 22
x5555:	dw @18$swMessageList ; 2: 11 23

@14$swShortDayList:
x5557:	dw string_Son# ; 2: -61 21
x5559:	dw string_Man# ; 2: -57 21
x5561:	dw string_Tis# ; 2: -53 21
x5563:	dw string_Ons# ; 2: -49 21
x5565:	dw string_Tor# ; 2: -45 21
x5567:	dw string_Fre# ; 2: -41 21
x5569:	dw string_Lor# ; 2: -37 21

string_Son#:
x5571:	db "Son", 0	; 4: 83 111 110 0

string_Man#:
x5575:	db "Man", 0	; 4: 77 97 110 0

string_Tis#:
x5579:	db "Tis", 0	; 4: 84 105 115 0

string_Ons#:
x5583:	db "Ons", 0	; 4: 79 110 115 0

string_Tor#:
x5587:	db "Tor", 0	; 4: 84 111 114 0

string_Fre#:
x5591:	db "Fre", 0	; 4: 70 114 101 0

string_Lor#:
x5595:	db "Lor", 0	; 4: 76 111 114 0

@15$swLongDayList:
x5599:	dw string_Sondag# ; 2: -19 21
x5601:	dw string_Mandag# ; 2: -12 21
x5603:	dw string_Tisdag# ; 2: -5 21
x5605:	dw string_Onsdag# ; 2: 2 22
x5607:	dw string_Torsdag# ; 2: 9 22
x5609:	dw string_Fredag# ; 2: 17 22
x5611:	dw string_Lordag# ; 2: 24 22

string_Sondag#:
x5613:	db "Sondag", 0	; 7: 83 111 110 100 97 103 0

string_Mandag#:
x5620:	db "Mandag", 0	; 7: 77 97 110 100 97 103 0

string_Tisdag#:
x5627:	db "Tisdag", 0	; 7: 84 105 115 100 97 103 0

string_Onsdag#:
x5634:	db "Onsdag", 0	; 7: 79 110 115 100 97 103 0

string_Torsdag#:
x5641:	db "Torsdag", 0	; 8: 84 111 114 115 100 97 103 0

string_Fredag#:
x5649:	db "Fredag", 0	; 7: 70 114 101 100 97 103 0

string_Lordag#:
x5656:	db "Lordag", 0	; 7: 76 111 114 100 97 103 0

@11$enShortMonthList:
x5663:	dw string_Jan# ; 2: 55 22
x5665:	dw string_Feb# ; 2: 59 22
x5667:	dw string_Mar# ; 2: 63 22
x5669:	dw string_Apr# ; 2: 67 22
x5671:	dw string_May# ; 2: 71 22
x5673:	dw string_Jun# ; 2: 75 22
x5675:	dw string_Jul# ; 2: 79 22
x5677:	dw string_Aug# ; 2: 83 22
x5679:	dw string_Sep# ; 2: 87 22
x5681:	dw string_Oct# ; 2: 91 22
x5683:	dw string_Nov# ; 2: 95 22
x5685:	dw string_Dec# ; 2: 99 22

string_Jan#:
x5687:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5691:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5695:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5699:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5703:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5707:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5711:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5715:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5719:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5723:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5727:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5731:	db "Dec", 0	; 4: 68 101 99 0

@17$swLongMonthList:
x5735:	dw string_Januari# ; 2: 127 22
x5737:	dw string_Februari# ; 2: -121 22
x5739:	dw string_Mars# ; 2: -112 22
x5741:	dw string_April# ; 2: -107 22
x5743:	dw string_Maj# ; 2: -101 22
x5745:	dw string_Juni# ; 2: -97 22
x5747:	dw string_Juli# ; 2: -92 22
x5749:	dw string_Augusit# ; 2: -87 22
x5751:	dw string_September# ; 2: -79 22
x5753:	dw string_Oktober# ; 2: -69 22
x5755:	dw string_November# ; 2: -61 22
x5757:	dw string_December# ; 2: -52 22

string_Januari#:
x5759:	db "Januari", 0	; 8: 74 97 110 117 97 114 105 0

string_Februari#:
x5767:	db "Februari", 0	; 9: 70 101 98 114 117 97 114 105 0

string_Mars#:
x5776:	db "Mars", 0	; 5: 77 97 114 115 0

string_April#:
x5781:	db "April", 0	; 6: 65 112 114 105 108 0

string_Maj#:
x5787:	db "Maj", 0	; 4: 77 97 106 0

string_Juni#:
x5791:	db "Juni", 0	; 5: 74 117 110 105 0

string_Juli#:
x5796:	db "Juli", 0	; 5: 74 117 108 105 0

string_Augusit#:
x5801:	db "Augusit", 0	; 8: 65 117 103 117 115 105 116 0

string_September#:
x5809:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_Oktober#:
x5819:	db "Oktober", 0	; 8: 79 107 116 111 98 101 114 0

string_November#:
x5827:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5836:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5845:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5872:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

@18$swMessageList:
x5899:	dw string_inga20fel# ; 2: 49 23
x5901:	dw string_felaktigt20functionsnummer# ; 2: 58 23
x5903:	dw string_hittar20ej20filen# ; 2: 84 23
x5905:	dw string_hittar20ej20sokvagen# ; 2: 100 23
x5907:	dw string_inget20handtag20tillgangligt# ; 2: 119 23
x5909:	dw string_atkomst20nekad# ; 2: -110 23
x5911:	dw string_utanfor20doman# ; 2: -96 23
x5913:	dw string_utanfor20range# ; 2: -82 23
x5915:	dw string_felaktig20multibyte2Dsekvens# ; 2: -68 23
x5917:	dw string_fel20vid20oppning# ; 2: -41 23
x5919:	dw string_fel20vid20flushing# ; 2: -25 23
x5921:	dw string_fel20vid20stangning# ; 2: -8 23
x5923:	dw string_fel20oppningslage# ; 2: 10 24
x5925:	dw string_fel20vid20skrivning# ; 2: 27 24
x5927:	dw string_fel20vid20lasning# ; 2: 45 24
x5929:	dw string_fel20vid20sokning# ; 2: 61 24
x5931:	dw string_fel20vid20telling# ; 2: 77 24
x5933:	dw string_fel20vid20borttagning20av20fil# ; 2: 93 24
x5935:	dw string_fel20vid20namnbyte20av20fil# ; 2: 120 24

string_inga20fel#:
x5937:	db "inga fel", 0	; 9: 105 110 103 97 32 102 101 108 0

string_felaktigt20functionsnummer#:
x5946:	db "felaktigt functionsnummer", 0	; 26: 102 101 108 97 107 116 105 103 116 32 102 117 110 99 116 105 111 110 115 110 117 109 109 101 114 0

string_hittar20ej20filen#:
x5972:	db "hittar ej filen", 0	; 16: 104 105 116 116 97 114 32 101 106 32 102 105 108 101 110 0

string_hittar20ej20sokvagen#:
x5988:	db "hittar ej sokvagen", 0	; 19: 104 105 116 116 97 114 32 101 106 32 115 111 107 118 97 103 101 110 0

string_inget20handtag20tillgangligt#:
x6007:	db "inget handtag tillgangligt", 0	; 27: 105 110 103 101 116 32 104 97 110 100 116 97 103 32 116 105 108 108 103 97 110 103 108 105 103 116 0

string_atkomst20nekad#:
x6034:	db "atkomst nekad", 0	; 14: 97 116 107 111 109 115 116 32 110 101 107 97 100 0

string_utanfor20doman#:
x6048:	db "utanfor doman", 0	; 14: 117 116 97 110 102 111 114 32 100 111 109 97 110 0

string_utanfor20range#:
x6062:	db "utanfor range", 0	; 14: 117 116 97 110 102 111 114 32 114 97 110 103 101 0

string_felaktig20multibyte2Dsekvens#:
x6076:	db "felaktig multibyte-sekvens", 0	; 27: 102 101 108 97 107 116 105 103 32 109 117 108 116 105 98 121 116 101 45 115 101 107 118 101 110 115 0

string_fel20vid20oppning#:
x6103:	db "fel vid oppning", 0	; 16: 102 101 108 32 118 105 100 32 111 112 112 110 105 110 103 0

string_fel20vid20flushing#:
x6119:	db "fel vid flushing", 0	; 17: 102 101 108 32 118 105 100 32 102 108 117 115 104 105 110 103 0

string_fel20vid20stangning#:
x6136:	db "fel vid stangning", 0	; 18: 102 101 108 32 118 105 100 32 115 116 97 110 103 110 105 110 103 0

string_fel20oppningslage#:
x6154:	db "fel oppningslage", 0	; 17: 102 101 108 32 111 112 112 110 105 110 103 115 108 97 103 101 0

string_fel20vid20skrivning#:
x6171:	db "fel vid skrivning", 0	; 18: 102 101 108 32 118 105 100 32 115 107 114 105 118 110 105 110 103 0

string_fel20vid20lasning#:
x6189:	db "fel vid lasning", 0	; 16: 102 101 108 32 118 105 100 32 108 97 115 110 105 110 103 0

string_fel20vid20sokning#:
x6205:	db "fel vid sokning", 0	; 16: 102 101 108 32 118 105 100 32 115 111 107 110 105 110 103 0

string_fel20vid20telling#:
x6221:	db "fel vid telling", 0	; 16: 102 101 108 32 118 105 100 32 116 101 108 108 105 110 103 0

string_fel20vid20borttagning20av20fil#:
x6237:	db "fel vid borttagning av fil", 0	; 27: 102 101 108 32 118 105 100 32 98 111 114 116 116 97 103 110 105 110 103 32 97 118 32 102 105 108 0

string_fel20vid20namnbyte20av20fil#:
x6264:	db "fel vid namnbyte av fil", 0	; 24: 102 101 108 32 118 105 100 32 110 97 109 110 98 121 116 101 32 97 118 32 102 105 108 0

string_C#:
x6288:	db "C", 0	; 2: 67 0

@13$en_US_utf8:
x6290:	dw -5	; 2: -5 -1
x6292:	dw -4	; 2: -4 -1
x6294:	dw @9$enShortDayList ; 2: -92 24
x6296:	dw @10$enLongDayList ; 2: -50 24
x6298:	dw @11$enShortMonthList ; 2: 31 22
x6300:	dw @12$enLongMonthList ; 2: 21 25
x6302:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -43 22
x6304:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -16 22
x6306:	dw enMessageList ; 2: 93 25

@9$enShortDayList:
x6308:	dw string_Sun# ; 2: -78 24
x6310:	dw string_Mon# ; 2: -74 24
x6312:	dw string_Tue# ; 2: -70 24
x6314:	dw string_Wed# ; 2: -66 24
x6316:	dw string_Thu# ; 2: -62 24
x6318:	dw string_Fri# ; 2: -58 24
x6320:	dw string_Sat# ; 2: -54 24

string_Sun#:
x6322:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x6326:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x6330:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6334:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6338:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6342:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6346:	db "Sat", 0	; 4: 83 97 116 0

@10$enLongDayList:
x6350:	dw string_Sunday# ; 2: -36 24
x6352:	dw string_Monday# ; 2: -29 24
x6354:	dw string_Tuesday# ; 2: -22 24
x6356:	dw string_Wednesday# ; 2: -14 24
x6358:	dw string_Thursday# ; 2: -4 24
x6360:	dw string_Friday# ; 2: 5 25
x6362:	dw string_Saturday# ; 2: 12 25

string_Sunday#:
x6364:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6371:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6378:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6386:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6396:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6405:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x6412:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@12$enLongMonthList:
x6421:	dw string_January# ; 2: 45 25
x6423:	dw string_February# ; 2: 53 25
x6425:	dw string_March# ; 2: 62 25
x6427:	dw string_April# ; 2: -107 22
x6429:	dw string_May# ; 2: 71 22
x6431:	dw string_June# ; 2: 68 25
x6433:	dw string_July# ; 2: 73 25
x6435:	dw string_August# ; 2: 78 25
x6437:	dw string_September# ; 2: -79 22
x6439:	dw string_October# ; 2: 85 25
x6441:	dw string_November# ; 2: -61 22
x6443:	dw string_December# ; 2: -52 22

string_January#:
x6445:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x6453:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x6462:	db "March", 0	; 6: 77 97 114 99 104 0

string_June#:
x6468:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x6473:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x6478:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_October#:
x6485:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

enMessageList:
x6493:	dw string_no20error# ; 2: -123 25
x6495:	dw string_function20number20invalid# ; 2: -114 25
x6497:	dw string_file20not20found# ; 2: -90 25
x6499:	dw string_path20not20found# ; 2: -75 25
x6501:	dw string_no20handle20available# ; 2: -60 25
x6503:	dw string_access20denied# ; 2: -40 25
x6505:	dw string_out20of20domain# ; 2: -26 25
x6507:	dw string_out20of20range# ; 2: -12 25
x6509:	dw string_invalid20multibyte20sequence# ; 2: 1 26
x6511:	dw string_error20while20opening# ; 2: 28 26
x6513:	dw string_error20while20flushing# ; 2: 48 26
x6515:	dw string_error20while20closing# ; 2: 69 26
x6517:	dw string_open20mode20invalid# ; 2: 89 26
x6519:	dw string_error20while20writing# ; 2: 107 26
x6521:	dw string_error20while20reading# ; 2: 127 26
x6523:	dw string_error20while20seeking# ; 2: -109 26
x6525:	dw string_error20while20telling# ; 2: -89 26
x6527:	dw string_error20while20sizing# ; 2: -69 26
x6529:	dw string_error20while20removing20file# ; 2: -50 26
x6531:	dw string_error20while20renaming20file# ; 2: -24 26

string_no20error#:
x6533:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x6542:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x6566:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x6581:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x6596:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x6616:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x6630:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x6644:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x6657:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x6684:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x6704:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x6725:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x6745:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x6763:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x6783:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x6803:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x6823:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x6843:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x6862:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x6888:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_US#:
x6914:	db "US", 0	; 3: 85 83 0

string_SE#:
x6917:	db "SE", 0	; 3: 83 69 0

strchr:	; £temporary3288 = int_to_int i (Signed_Int -> Signed_Char)
x6920:	mov ax, [bp + 8]	; 3: -117 70 8
x6923:	cmp ax, 0	; 3: -125 -8 0
x6926:	jge strchr$1	; 2: 125 4
x6928:	neg ax	; 2: -9 -40
x6930:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3288
x6932:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x6935:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3290 = text + index
x6940:	mov si, [bp + 6]	; 3: -117 118 6
x6943:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3289 -> £temporary3290 = *£temporary3290

strchr$5:	; if £temporary3289 -> £temporary3290 == 0 goto 16
x6946:	cmp byte [si], 0	; 3: -128 60 0
x6949:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3294 = text + index
x6951:	mov si, [bp + 6]	; 3: -117 118 6
x6954:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3293 -> £temporary3294 = *£temporary3294

strchr$8:	; if £temporary3293 -> £temporary3294 != c goto 14
x6957:	mov al, [si]	; 2: -118 4
x6959:	cmp al, [bp + 12]	; 3: 58 70 12
x6962:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3297 = text + index
x6964:	mov bx, [bp + 6]	; 3: -117 94 6
x6967:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3296 -> £temporary3297 = *£temporary3297

strchr$11:	; £temporary3298 = &£temporary3296 -> £temporary3297

strchr$12:	; return_value = £temporary3298

strchr$13:	; return
x6970:	mov ax, [bp]	; 3: -117 70 0
x6973:	mov di, [bp + 4]	; 3: -117 126 4
x6976:	mov bp, [bp + 2]	; 3: -117 110 2
x6979:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x6981:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x6984:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x6986:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x6989:	mov ax, [bp]	; 3: -117 70 0
x6992:	mov di, [bp + 4]	; 3: -117 126 4
x6995:	mov bp, [bp + 2]	; 3: -117 110 2
x6998:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x7000:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7004:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x7006:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x7010:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 112 27
x7015:	mov [bp + 24], bp	; 3: -119 110 24
x7018:	add bp, 22	; 3: -125 -59 22
x7021:	jmp printChar	; 3: -23 -33 -9

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x7024:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x7028:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x7030:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x7034:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 -120 27
x7039:	mov [bp + 24], bp	; 3: -119 110 24
x7042:	add bp, 22	; 3: -125 -59 22
x7045:	jmp printChar	; 3: -23 -57 -9

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x7048:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7052:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x7054:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x7059:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x7061:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x7065:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 -89 27
x7070:	mov [bp + 24], bp	; 3: -119 110 24
x7073:	add bp, 22	; 3: -125 -59 22
x7076:	jmp printChar	; 3: -23 -88 -9

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x7079:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x7084:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x7086:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x7090:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 -64 27
x7095:	mov [bp + 24], bp	; 3: -119 110 24
x7098:	add bp, 22	; 3: -125 -59 22
x7101:	jmp printChar	; 3: -23 -113 -9

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x7104:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x7108:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1945 = 88
x7110:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x7112:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1945 = 120
x7114:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1945, offset 6
x7116:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x7119:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -35 27
x7124:	mov [bp + 24], bp	; 3: -119 110 24
x7127:	add bp, 22	; 3: -125 -59 22
x7130:	jmp printChar	; 3: -23 114 -9

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x7133:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7138:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x7140:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x7144:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -10 27
x7149:	mov [bp + 24], bp	; 3: -119 110 24
x7152:	add bp, 22	; 3: -125 -59 22
x7155:	jmp printChar	; 3: -23 89 -9

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x7158:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x7160:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7164:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x7168:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x7172:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x7176:	mov ax, [bp + 20]	; 3: -117 70 20
x7179:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x7182:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 28 28
x7187:	mov [bp + 24], bp	; 3: -119 110 24
x7190:	add bp, 22	; 3: -125 -59 22
x7193:	nop	; 1: -112
x7194:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x7196:	mov ax, [bp]	; 3: -117 70 0
x7199:	mov di, [bp + 4]	; 3: -117 126 4
x7202:	mov bp, [bp + 2]	; 3: -117 110 2
x7205:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x7207:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7212:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1921 = unsignedValue % base
x7214:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7218:	xor edx, edx	; 3: 102 49 -46
x7221:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1922 = int_to_int £temporary1921 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1922
x7225:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1923 = unsignedValue / base
x7228:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7232:	xor edx, edx	; 3: 102 49 -46
x7235:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1923, offset 6
x7239:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x7243:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x7247:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x7251:	mov ax, [bp + 14]	; 3: -117 70 14
x7254:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x7257:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 103 28
x7262:	mov [bp + 20], bp	; 3: -119 110 20
x7265:	add bp, 18	; 3: -125 -59 18
x7268:	nop	; 1: -112
x7269:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x7271:	mov ax, [bp + 16]	; 3: -117 70 16
x7274:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x7277:	mov ax, [bp + 14]	; 3: -117 70 14
x7280:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x7283:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 -127 28
x7288:	mov [bp + 20], bp	; 3: -119 110 20
x7291:	add bp, 18	; 3: -125 -59 18
x7294:	nop	; 1: -112
x7295:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1925 = return_value

printUnsignedLongRec$17:	; c = £temporary1925
x7297:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x7300:	mov al, [bp + 18]	; 3: -118 70 18
x7303:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x7306:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 -104 28
x7311:	mov [bp + 21], bp	; 3: -119 110 21
x7314:	add bp, 19	; 3: -125 -59 19
x7317:	jmp printChar	; 3: -23 -73 -10

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x7320:	mov ax, [bp]	; 3: -117 70 0
x7323:	mov di, [bp + 4]	; 3: -117 126 4
x7326:	mov bp, [bp + 2]	; 3: -117 110 2
x7329:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x7331:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x7335:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1911 = digit + 48
x7337:	mov bx, [bp + 6]	; 3: -117 94 6
x7340:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1912 = int_to_int £temporary1911 (Signed_Int -> Signed_Char)
x7343:	cmp bx, 0	; 3: -125 -5 0
x7346:	jge digitToChar$3	; 2: 125 4
x7348:	neg bx	; 2: -9 -37
x7350:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1912

digitToChar$4:	; return
x7352:	mov ax, [bp]	; 3: -117 70 0
x7355:	mov di, [bp + 4]	; 3: -117 126 4
x7358:	mov bp, [bp + 2]	; 3: -117 110 2
x7361:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x7363:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7367:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1913 = digit - 10
x7369:	mov bx, [bp + 6]	; 3: -117 94 6
x7372:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1914 = £temporary1913 + 65
x7375:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1915 = int_to_int £temporary1914 (Signed_Int -> Signed_Char)
x7378:	cmp bx, 0	; 3: -125 -5 0
x7381:	jge digitToChar$9	; 2: 125 4
x7383:	neg bx	; 2: -9 -37
x7385:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1915

digitToChar$10:	; return
x7387:	mov ax, [bp]	; 3: -117 70 0
x7390:	mov di, [bp + 4]	; 3: -117 126 4
x7393:	mov bp, [bp + 2]	; 3: -117 110 2
x7396:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1916 = digit - 10
x7398:	mov bx, [bp + 6]	; 3: -117 94 6
x7401:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1917 = £temporary1916 + 97
x7404:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1918 = int_to_int £temporary1917 (Signed_Int -> Signed_Char)
x7407:	cmp bx, 0	; 3: -125 -5 0
x7410:	jge digitToChar$14	; 2: 125 4
x7412:	neg bx	; 2: -9 -37
x7414:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1918

digitToChar$15:	; return
x7416:	mov ax, [bp]	; 3: -117 70 0
x7419:	mov di, [bp + 4]	; 3: -117 126 4
x7422:	mov bp, [bp + 2]	; 3: -117 110 2
x7425:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x7427:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x7430:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x7432:	fcompp	; 2: -34 -39
x7434:	fstsw ax	; 3: -101 -33 -32
x7437:	sahf	; 1: -98
x7438:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x7440:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x7444:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 34 29
x7449:	mov [bp + 24], bp	; 3: -119 110 24
x7452:	add bp, 22	; 3: -125 -59 22
x7455:	jmp printChar	; 3: -23 45 -10

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x7458:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1981 = -longDoubleValue
x7461:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x7463:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x7466:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x7471:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x7476:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1982 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7479:	fistp dword [$IntegralStorage#]	; 4: -37 30 66 18
x7483:	mov eax, [$IntegralStorage#]	; 4: 102 -95 66 18

printLongDoublePlain$14:	; longValue = £temporary1982
x7487:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x7491:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7495:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x7499:	mov ax, [bp + 14]	; 3: -117 70 14
x7502:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x7505:	mov ax, [bp + 16]	; 3: -117 70 16
x7508:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x7511:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 101 29
x7516:	mov [bp + 28], bp	; 3: -119 110 28
x7519:	add bp, 26	; 3: -125 -59 26
x7522:	jmp printLongInt	; 3: -23 86 -11

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x7525:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1984 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x7528:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1985 = longDoubleValue - £temporary1984
x7531:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x7533:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x7536:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x7539:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x7542:	mov ax, [bp + 18]	; 3: -117 70 18
x7545:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x7548:	mov ax, [bp + 20]	; 3: -117 70 20
x7551:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x7554:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 -112 29
x7559:	mov [bp + 28], bp	; 3: -119 110 28
x7562:	add bp, 26	; 3: -125 -59 26
x7565:	nop	; 1: -112
x7566:	jmp printLongDoubleFraction	; 2: -21 11

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x7568:	mov ax, [bp]	; 3: -117 70 0
x7571:	mov di, [bp + 4]	; 3: -117 126 4
x7574:	mov bp, [bp + 2]	; 3: -117 110 2
x7577:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

printLongDoubleFraction:	; push float longDoubleValue
x7579:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x7582:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1960 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7585:	fistp dword [$IntegralStorage#]	; 4: -37 30 66 18
x7589:	mov eax, [$IntegralStorage#]	; 4: 102 -95 66 18

printLongDoubleFraction$3:	; £temporary1961 = int_to_float £temporary1960 (Signed_Long_Int -> Long_Double)
x7593:	mov [$IntegralStorage#], eax	; 4: 102 -93 66 18
x7597:	fild dword [$IntegralStorage#]	; 4: -37 6 66 18

printLongDoubleFraction$4:	; £temporary1962 = longDoubleValue - £temporary1961
x7601:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x7603:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x7606:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7610:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 9
x7612:	mov word [bp + 16], 9	; 5: -57 70 16 9 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x7617:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7621:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x7623:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7627:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x7629:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x7633:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -33 29
x7638:	mov [bp + 20], bp	; 3: -119 110 20
x7641:	add bp, 18	; 3: -125 -59 18
x7644:	jmp printChar	; 3: -23 112 -11

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1968 = precision
x7647:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x7650:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1968 <= 0 goto 34
x7653:	cmp ax, 0	; 3: -125 -8 0
x7656:	jle printLongDoubleFraction$34	; 2: 126 67

printLongDoubleFraction$17:	; push float 10.0
x7658:	fld qword [float8$10.0#]	; 4: -35 6 56 30

printLongDoubleFraction$18:	; push float longDoubleValue
x7662:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1970 = 10.0 * longDoubleValue
x7665:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; top float longDoubleValue10
x7667:	fst qword [bp + 18]	; 3: -35 86 18

printLongDoubleFraction$21:	; £temporary1971 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x7670:	fistp word [$IntegralStorage#]	; 4: -33 30 66 18
x7674:	mov ax, [$IntegralStorage#]	; 3: -95 66 18

printLongDoubleFraction$22:	; digitValue = £temporary1971
x7677:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$23:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$24:	; £temporary1972 = digitValue + 48
x7680:	mov ax, [bp + 26]	; 3: -117 70 26
x7683:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$25:	; £temporary1973 = int_to_int £temporary1972 (Signed_Int -> Signed_Char)
x7686:	cmp ax, 0	; 3: -125 -8 0
x7689:	jge printLongDoubleFraction$26	; 2: 125 4
x7691:	neg ax	; 2: -9 -40
x7693:	neg al	; 2: -10 -40

printLongDoubleFraction$26:	; parameter £temporary1973, offset 6
x7695:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$27:	; call function noellipse-noellipse printChar
x7698:	mov word [bp + 28], printLongDoubleFraction$28	; 5: -57 70 28 32 30
x7703:	mov [bp + 30], bp	; 3: -119 110 30
x7706:	add bp, 28	; 3: -125 -59 28
x7709:	jmp printChar	; 3: -23 47 -11

printLongDoubleFraction$28:	; post call

printLongDoubleFraction$29:	; push float longDoubleValue10
x7712:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$30:	; £temporary1975 = int_to_float digitValue (Signed_Int -> Long_Double)
x7715:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$31:	; £temporary1976 = longDoubleValue10 - £temporary1975
x7718:	fsub	; 2: -34 -23

printLongDoubleFraction$32:	; pop float longDoubleValue
x7720:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$33:	; goto 14
x7723:	jmp printLongDoubleFraction$14	; 2: -21 -78

printLongDoubleFraction$34:	; return
x7725:	mov ax, [bp]	; 3: -117 70 0
x7728:	mov di, [bp + 4]	; 3: -117 126 4
x7731:	mov bp, [bp + 2]	; 3: -117 110 2
x7734:	jmp ax	; 2: -1 -32

printLongDoubleFraction$35:	; function end printLongDoubleFraction

float8$10.0#:
x7736:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x7744:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x7747:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x7749:	fcompp	; 2: -34 -39
x7751:	fstsw ax	; 3: -101 -33 -32
x7754:	sahf	; 1: -98
x7755:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x7757:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary883 = -x
x7760:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7762:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7764:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary887

fabs$9:	; return
x7767:	mov ax, [bp]	; 3: -117 70 0
x7770:	mov di, [bp + 4]	; 3: -117 126 4
x7773:	mov bp, [bp + 2]	; 3: -117 110 2
x7776:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x7778:	mov ax, [bp + 6]	; 3: -117 70 6
x7781:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x7784:	mov word [bp + 8], tolower$3	; 5: -57 70 8 118 30
x7789:	mov [bp + 10], bp	; 3: -119 110 10
x7792:	add bp, 8	; 3: -125 -59 8
x7795:	jmp isupper	; 3: -23 -111 -10

tolower$3:	; post call

tolower$4:	; £temporary417 = return_value

tolower$5:	; if £temporary417 == 0 goto 32
x7798:	cmp bx, 0	; 3: -125 -5 0
x7801:	je tolower$32	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x7803:	mov word [bp + 8], tolower$8	; 5: -57 70 8 -119 30
x7808:	mov [bp + 10], bp	; 3: -119 110 10
x7811:	add bp, 8	; 3: -125 -59 8
x7814:	jmp localeconv	; 3: -23 -23 -10

tolower$8:	; post call

tolower$9:	; £temporary418 = return_value

tolower$10:	; localeConvPtr = £temporary418
x7817:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 29
x7820:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7824:	je tolower$29	; 2: 116 82

tolower$12:	; £temporary420 -> localeConvPtr = *localeConvPtr, offset 12
x7826:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary420 -> localeConvPtr
x7829:	mov ax, [si + 12]	; 3: -117 68 12
x7832:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary421 -> localeConvPtr = *localeConvPtr, offset 14
x7835:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary421 -> localeConvPtr
x7838:	mov ax, [si + 14]	; 3: -117 68 14
x7841:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x7844:	mov ax, [bp + 12]	; 3: -117 70 12
x7847:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x7850:	mov ax, [bp + 6]	; 3: -117 70 6
x7853:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x7856:	mov word [bp + 14], tolower$20	; 5: -57 70 14 -66 30
x7861:	mov [bp + 16], bp	; 3: -119 110 16
x7864:	add bp, 14	; 3: -125 -59 14
x7867:	jmp strchr	; 3: -23 74 -4

tolower$20:	; post call

tolower$21:	; £temporary422 = return_value

tolower$22:	; £temporary423 = £temporary422 - upperCase
x7870:	sub bx, [bp + 12]	; 3: 43 94 12

tolower$23:	; index = £temporary423
x7873:	mov [bp + 14], bx	; 3: -119 94 14

tolower$24:	; £temporary425 = lowerCase + index
x7876:	mov si, [bp + 10]	; 3: -117 118 10
x7879:	add si, [bp + 14]	; 3: 3 118 14

tolower$25:	; £temporary424 -> £temporary425 = *£temporary425

tolower$26:	; £temporary426 = int_to_int £temporary424 -> £temporary425 (Signed_Char -> Signed_Int)
x7882:	mov bl, [si]	; 2: -118 28
x7884:	and bx, 255	; 4: -127 -29 -1 0
x7888:	cmp bl, 0	; 3: -128 -5 0
x7891:	jge tolower$27	; 2: 125 4
x7893:	neg bl	; 2: -10 -37
x7895:	neg bx	; 2: -9 -37

tolower$27:	; return_value = £temporary426

tolower$28:	; return
x7897:	mov ax, [bp]	; 3: -117 70 0
x7900:	mov di, [bp + 4]	; 3: -117 126 4
x7903:	mov bp, [bp + 2]	; 3: -117 110 2
x7906:	jmp ax	; 2: -1 -32

tolower$29:	; £temporary427 = c + 32
x7908:	mov bx, [bp + 6]	; 3: -117 94 6
x7911:	add bx, 32	; 3: -125 -61 32

tolower$30:	; return_value = £temporary427

tolower$31:	; return
x7914:	mov ax, [bp]	; 3: -117 70 0
x7917:	mov di, [bp + 4]	; 3: -117 126 4
x7920:	mov bp, [bp + 2]	; 3: -117 110 2
x7923:	jmp ax	; 2: -1 -32

tolower$32:	; return_value = c
x7925:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$33:	; return
x7928:	mov ax, [bp]	; 3: -117 70 0
x7931:	mov di, [bp + 4]	; 3: -117 126 4
x7934:	mov bp, [bp + 2]	; 3: -117 110 2
x7937:	jmp ax	; 2: -1 -32

tolower$34:	; function end tolower

printLongDoubleExpo:	; push float value
x7939:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x7942:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x7944:	fcompp	; 2: -34 -39
x7946:	fstsw ax	; 3: -101 -33 -32
x7949:	sahf	; 1: -98
x7950:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x7952:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x7956:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 34 31
x7961:	mov [bp + 26], bp	; 3: -119 110 26
x7964:	add bp, 24	; 3: -125 -59 24
x7967:	jmp printChar	; 3: -23 45 -12

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x7970:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x7972:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x7975:	mov ax, [bp + 20]	; 3: -117 70 20
x7978:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x7981:	mov ax, [bp + 18]	; 3: -117 70 18
x7984:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x7987:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 65 31
x7992:	mov [bp + 26], bp	; 3: -119 110 26
x7995:	add bp, 24	; 3: -125 -59 24
x7998:	jmp printLongDoubleFraction	; 3: -23 90 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x8001:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8005:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary2001 = 69
x8007:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x8009:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary2001 = 101
x8011:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary2001, offset 6
x8013:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x8016:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 94 31
x8021:	mov [bp + 26], bp	; 3: -119 110 26
x8024:	add bp, 24	; 3: -125 -59 24
x8027:	jmp printChar	; 3: -23 -15 -13

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x8030:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x8034:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 112 31
x8039:	mov [bp + 26], bp	; 3: -119 110 26
x8042:	add bp, 24	; 3: -125 -59 24
x8045:	jmp printChar	; 3: -23 -33 -13

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x8048:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x8051:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x8054:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x8056:	fcompp	; 2: -34 -39
x8058:	fstsw ax	; 3: -101 -33 -32
x8061:	sahf	; 1: -98
x8062:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x8064:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x8068:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 -110 31
x8073:	mov [bp + 26], bp	; 3: -119 110 26
x8076:	add bp, 24	; 3: -125 -59 24
x8079:	jmp printChar	; 3: -23 -67 -13

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x8082:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary2006 = -value
x8085:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x8087:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x8090:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x8093:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x8096:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 -82 31
x8101:	mov [bp + 26], bp	; 3: -119 110 26
x8104:	add bp, 24	; 3: -125 -59 24
x8107:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary2007 = return_value

printLongDoubleExpo$43:	; £temporary2008 = float_to_int £temporary2007 (Double -> Signed_Int)
x8110:	fistp word [$IntegralStorage#]	; 4: -33 30 66 18
x8114:	mov ax, [$IntegralStorage#]	; 3: -95 66 18

printLongDoubleExpo$44:	; expo = £temporary2008
x8117:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x8120:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x8123:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x8126:	fld qword [float8$10.0#]	; 4: -35 6 56 30

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x8130:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary2009 = int_to_float expo (Signed_Int -> Double)
x8133:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary2009, offset 14
x8136:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x8139:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -39 31
x8144:	mov [bp + 36], bp	; 3: -119 110 36
x8147:	add bp, 34	; 3: -125 -59 34
x8150:	jmp pow	; 3: -23 -22 1

printLongDoubleExpo$52:	; post call
x8153:	fstp qword [bp + 34]	; 3: -35 94 34
x8156:	fld qword [bp + 26]	; 3: -35 70 26
x8159:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary2010 = return_value

printLongDoubleExpo$54:	; £temporary2011 = value / £temporary2010
x8162:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x8164:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x8167:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x8170:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x8173:	mov ax, [bp + 14]	; 3: -117 70 14
x8176:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x8179:	mov ax, [bp + 16]	; 3: -117 70 16
x8182:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x8185:	mov ax, [bp + 18]	; 3: -117 70 18
x8188:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x8191:	mov ax, [bp + 20]	; 3: -117 70 20
x8194:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x8197:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 19 32
x8202:	mov [bp + 28], bp	; 3: -119 110 28
x8205:	add bp, 26	; 3: -125 -59 26
x8208:	jmp printLongDoublePlain	; 3: -23 -16 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x8211:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8215:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary2017 = 69
x8217:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x8219:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary2017 = 101
x8221:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary2017, offset 6
x8223:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x8226:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 48 32
x8231:	mov [bp + 28], bp	; 3: -119 110 28
x8234:	add bp, 26	; 3: -125 -59 26
x8237:	jmp printChar	; 3: -23 31 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary2019 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x8240:	mov ax, [bp + 24]	; 3: -117 70 24
x8243:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8249:	cmp ax, 0	; 3: -125 -8 0
x8252:	jge printLongDoubleExpo$75	; 2: 125 5
x8254:	neg ax	; 2: -9 -40
x8256:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary2019, offset 6
x8259:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x8263:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x8268:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x8273:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 95 32
x8278:	mov [bp + 28], bp	; 3: -119 110 28
x8281:	add bp, 26	; 3: -125 -59 26
x8284:	jmp printLongInt	; 3: -23 92 -14

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x8287:	mov ax, [bp]	; 3: -117 70 0
x8290:	mov di, [bp + 4]	; 3: -117 126 4
x8293:	mov bp, [bp + 2]	; 3: -117 110 2
x8296:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; push float 0.4342944820
x8298:	fld qword [float8$0.4342944820#]	; 4: -35 6 -101 32

log10$1:	; call header integral zero 0 stack no zero 1
x8302:	fstp qword [bp + 14]	; 3: -35 94 14

log10$2:	; push float x
x8305:	fld qword [bp + 6]	; 3: -35 70 6

log10$3:	; parameter x, offset 6
x8308:	fstp qword [bp + 28]	; 3: -35 94 28

log10$4:	; call function noellipse-noellipse log
x8311:	mov word [bp + 22], log10$5	; 5: -57 70 22 -123 32
x8316:	mov [bp + 24], bp	; 3: -119 110 24
x8319:	add bp, 22	; 3: -125 -59 22
x8322:	nop	; 1: -112
x8323:	jmp log	; 2: -21 30

log10$5:	; post call
x8325:	fstp qword [bp + 22]	; 3: -35 94 22
x8328:	fld qword [bp + 14]	; 3: -35 70 14
x8331:	fld qword [bp + 22]	; 3: -35 70 22

log10$6:	; £temporary510 = return_value

log10$7:	; £temporary511 = 0.4342944820 * £temporary510
x8334:	fmul	; 2: -34 -55

log10$8:	; return_value = £temporary511

log10$9:	; return
x8336:	mov ax, [bp]	; 3: -117 70 0
x8339:	mov di, [bp + 4]	; 3: -117 126 4
x8342:	mov bp, [bp + 2]	; 3: -117 110 2
x8345:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$0.4342944820#:
x8347:	dq 0.4342944820	; 8: 26 125 65 21 123 -53 -37 63

log:	; push float x_plus_1
x8355:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x8358:	fldz	; 2: -39 -18

log$2:	; if x_plus_1 <= 0 goto 70
x8360:	fcompp	; 2: -34 -39
x8362:	fstsw ax	; 3: -101 -33 -32
x8365:	sahf	; 1: -98
x8366:	jae log$70	; 4: 15 -125 -44 0

log$3:	; expo = 0
x8370:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x_plus_1
x8375:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push float 0.3678794411714423216036827922
x8378:	fld qword [float8$0.3678794411714423216036827922#]	; 4: -35 6 -103 33

log$6:	; if x_plus_1 >= 0.3678794411714423216036827922 goto 13
x8382:	fcompp	; 2: -34 -39
x8384:	fstsw ax	; 3: -101 -33 -32
x8387:	sahf	; 1: -98
x8388:	jbe log$13	; 2: 118 17

log$7:	; push float x_plus_1
x8390:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push float 2.7182818284590452353
x8393:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 -95 33

log$9:	; £temporary493 = x_plus_1 * 2.7182818284590452353
x8397:	fmul	; 2: -34 -55

log$10:	; pop float x_plus_1
x8399:	fstp qword [bp + 6]	; 3: -35 94 6

log$11:	; --expo
x8402:	dec word [bp + 14]	; 3: -1 78 14

log$12:	; goto 4
x8405:	jmp log$4	; 2: -21 -32

log$13:	; push float x_plus_1
x8407:	fld qword [bp + 6]	; 3: -35 70 6

log$14:	; push float 0.7357588823428846432073655843
x8410:	fld qword [float8$0.7357588823428846432073655843#]	; 4: -35 6 -87 33

log$15:	; if x_plus_1 <= 0.7357588823428846432073655843 goto 22
x8414:	fcompp	; 2: -34 -39
x8416:	fstsw ax	; 3: -101 -33 -32
x8419:	sahf	; 1: -98
x8420:	jae log$22	; 2: 115 17

log$16:	; push float x_plus_1
x8422:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 2.7182818284590452353
x8425:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 -95 33

log$18:	; £temporary496 = x_plus_1 / 2.7182818284590452353
x8429:	fdiv	; 2: -34 -7

log$19:	; pop float x_plus_1
x8431:	fstp qword [bp + 6]	; 3: -35 94 6

log$20:	; ++expo
x8434:	inc word [bp + 14]	; 3: -1 70 14

log$21:	; goto 13
x8437:	jmp log$13	; 2: -21 -32

log$22:	; push 1
x8439:	fld1	; 2: -39 -24

log$23:	; pop float n
x8441:	fstp qword [bp + 16]	; 3: -35 94 16

log$24:	; push 1
x8444:	fld1	; 2: -39 -24

log$25:	; pop float plusMinusOne
x8446:	fstp qword [bp + 24]	; 3: -35 94 24

log$26:	; push float x_plus_1
x8449:	fld qword [bp + 6]	; 3: -35 70 6

log$27:	; push 1
x8452:	fld1	; 2: -39 -24

log$28:	; £temporary498 = x_plus_1 - 1
x8454:	fsub	; 2: -34 -23

log$29:	; pop float x
x8456:	fstp qword [bp + 32]	; 3: -35 94 32

log$30:	; push 0
x8459:	fldz	; 2: -39 -18

log$31:	; pop float sum
x8461:	fstp qword [bp + 48]	; 3: -35 94 48

log$32:	; push float x
x8464:	fld qword [bp + 32]	; 3: -35 70 32

log$33:	; pop float power
x8467:	fstp qword [bp + 56]	; 3: -35 94 56

log$34:	; push float plusMinusOne
x8470:	fld qword [bp + 24]	; 3: -35 70 24

log$35:	; push float power
x8473:	fld qword [bp + 56]	; 3: -35 70 56

log$36:	; push float n
x8476:	fld qword [bp + 16]	; 3: -35 70 16

log$37:	; push 1
x8479:	fld1	; 2: -39 -24

log$38:	; n = n + 1
x8481:	fadd	; 2: -34 -63

log$39:	; top float n
x8483:	fst qword [bp + 16]	; 3: -35 86 16

log$40:	; push 1
x8486:	fld1	; 2: -39 -24

log$41:	; n = n - 1
x8488:	fsub	; 2: -34 -23

log$42:	; £temporary500 = power / £temporary499
x8490:	fdiv	; 2: -34 -7

log$43:	; £temporary501 = plusMinusOne * £temporary500
x8492:	fmul	; 2: -34 -55

log$44:	; pop float term
x8494:	fstp qword [bp + 40]	; 3: -35 94 40

log$45:	; push float sum
x8497:	fld qword [bp + 48]	; 3: -35 70 48

log$46:	; push float term
x8500:	fld qword [bp + 40]	; 3: -35 70 40

log$47:	; £temporary502 = sum + term
x8503:	fadd	; 2: -34 -63

log$48:	; pop float sum
x8505:	fstp qword [bp + 48]	; 3: -35 94 48

log$49:	; push float power
x8508:	fld qword [bp + 56]	; 3: -35 70 56

log$50:	; push float x
x8511:	fld qword [bp + 32]	; 3: -35 70 32

log$51:	; £temporary503 = power * x
x8514:	fmul	; 2: -34 -55

log$52:	; pop float power
x8516:	fstp qword [bp + 56]	; 3: -35 94 56

log$53:	; push float plusMinusOne
x8519:	fld qword [bp + 24]	; 3: -35 70 24

log$54:	; push float -1.0
x8522:	fld qword [float8$minus1.0#]	; 4: -35 6 -79 33

log$55:	; £temporary504 = plusMinusOne * -1.0
x8526:	fmul	; 2: -34 -55

log$56:	; pop float plusMinusOne
x8528:	fstp qword [bp + 24]	; 3: -35 94 24

log$57:	; call header integral zero 0 stack zero 0

log$58:	; push float term
x8531:	fld qword [bp + 40]	; 3: -35 70 40

log$59:	; parameter term, offset 6
x8534:	fstp qword [bp + 70]	; 3: -35 94 70

log$60:	; call function noellipse-noellipse fabs
x8537:	mov word [bp + 64], log$61	; 5: -57 70 64 103 33
x8542:	mov [bp + 66], bp	; 3: -119 110 66
x8545:	add bp, 64	; 3: -125 -59 64
x8548:	jmp fabs	; 3: -23 -39 -4

log$61:	; post call

log$62:	; £temporary505 = return_value

log$63:	; push float 0.000000001
x8551:	fld qword [float8$0.000000001#]	; 4: -35 6 -71 33

log$64:	; if £temporary505 > 0.000000001 goto 34
x8555:	fcompp	; 2: -34 -39
x8557:	fstsw ax	; 3: -101 -33 -32
x8560:	sahf	; 1: -98
x8561:	jb log$34	; 2: 114 -93

log$65:	; push float sum
x8563:	fld qword [bp + 48]	; 3: -35 70 48

log$66:	; £temporary507 = int_to_float expo (Signed_Int -> Double)
x8566:	fild word [bp + 14]	; 3: -33 70 14

log$67:	; £temporary508 = sum + £temporary507
x8569:	fadd	; 2: -34 -63

log$68:	; return_value = £temporary508

log$69:	; return
x8571:	mov ax, [bp]	; 3: -117 70 0
x8574:	mov di, [bp + 4]	; 3: -117 126 4
x8577:	mov bp, [bp + 2]	; 3: -117 110 2
x8580:	jmp ax	; 2: -1 -32

log$70:	; errno = 6
x8582:	mov word [errno], 6	; 6: -57 6 -63 33 6 0

log$71:	; push 0
x8588:	fldz	; 2: -39 -18

log$72:	; return_value = 0

log$73:	; return
x8590:	mov ax, [bp]	; 3: -117 70 0
x8593:	mov di, [bp + 4]	; 3: -117 126 4
x8596:	mov bp, [bp + 2]	; 3: -117 110 2
x8599:	jmp ax	; 2: -1 -32

log$74:	; function end log

float8$0.3678794411714423216036827922#:
x8601:	dq 0.3678794411714423216036827922	; 8: 56 -17 44 54 86 -117 -41 63

float8$2.7182818284590452353#:
x8609:	dq 2.7182818284590452353	; 8: 105 87 20 -117 10 -65 5 64

float8$0.7357588823428846432073655843#:
x8617:	dq 0.7357588823428846432073655843	; 8: 56 -17 44 54 86 -117 -25 63

float8$minus1.0#:
x8625:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8633:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x8641:	dw 0	; 2: 0 0

pow:	; push float x
x8643:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x8646:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x8648:	fcompp	; 2: -34 -39
x8650:	fstsw ax	; 3: -101 -33 -32
x8653:	sahf	; 1: -98
x8654:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x8656:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x8659:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x8662:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x8665:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x8668:	mov word [bp + 30], pow$9	; 5: -57 70 30 -22 33
x8673:	mov [bp + 32], bp	; 3: -119 110 32
x8676:	add bp, 30	; 3: -125 -59 30
x8679:	jmp log	; 3: -23 -71 -2

pow$9:	; post call
x8682:	fstp qword [bp + 30]	; 3: -35 94 30
x8685:	fld qword [bp + 22]	; 3: -35 70 22
x8688:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary536 = return_value

pow$11:	; £temporary537 = y * £temporary536
x8691:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary537, offset 6
x8693:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x8696:	mov word [bp + 22], pow$14	; 5: -57 70 22 6 34
x8701:	mov [bp + 24], bp	; 3: -119 110 24
x8704:	add bp, 22	; 3: -125 -59 22
x8707:	nop	; 1: -112
x8708:	jmp exp	; 2: -21 30

pow$14:	; post call

pow$15:	; £temporary538 = return_value

pow$16:	; return_value = £temporary538

pow$17:	; return
x8710:	mov ax, [bp]	; 3: -117 70 0
x8713:	mov di, [bp + 4]	; 3: -117 126 4
x8716:	mov bp, [bp + 2]	; 3: -117 110 2
x8719:	jmp ax	; 2: -1 -32

pow$18:	; errno = 6
x8721:	mov word [errno], 6	; 6: -57 6 -63 33 6 0

pow$19:	; push 0
x8727:	fldz	; 2: -39 -18

pow$20:	; return_value = 0

pow$21:	; return
x8729:	mov ax, [bp]	; 3: -117 70 0
x8732:	mov di, [bp + 4]	; 3: -117 126 4
x8735:	mov bp, [bp + 2]	; 3: -117 110 2
x8738:	jmp ax	; 2: -1 -32

pow$22:	; function end pow

exp:	; push 0
x8740:	fldz	; 2: -39 -18

exp$1:	; pop float n
x8742:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x8745:	fld1	; 2: -39 -24

exp$3:	; pop float faculty
x8747:	fstp qword [bp + 22]	; 3: -35 94 22

exp$4:	; push 1
x8750:	fld1	; 2: -39 -24

exp$5:	; pop float power
x8752:	fstp qword [bp + 30]	; 3: -35 94 30

exp$6:	; push 0
x8755:	fldz	; 2: -39 -18

exp$7:	; pop float sum
x8757:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x8760:	fld qword [bp + 30]	; 3: -35 70 30

exp$9:	; push float faculty
x8763:	fld qword [bp + 22]	; 3: -35 70 22

exp$10:	; £temporary483 = power / faculty
x8766:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x8768:	fstp qword [bp + 38]	; 3: -35 94 38

exp$12:	; push float sum
x8771:	fld qword [bp + 46]	; 3: -35 70 46

exp$13:	; push float term
x8774:	fld qword [bp + 38]	; 3: -35 70 38

exp$14:	; £temporary484 = sum + term
x8777:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x8779:	fstp qword [bp + 46]	; 3: -35 94 46

exp$16:	; push float power
x8782:	fld qword [bp + 30]	; 3: -35 70 30

exp$17:	; push float x
x8785:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary485 = power * x
x8788:	fmul	; 2: -34 -55

exp$19:	; pop float power
x8790:	fstp qword [bp + 30]	; 3: -35 94 30

exp$20:	; push float faculty
x8793:	fld qword [bp + 22]	; 3: -35 70 22

exp$21:	; push float n
x8796:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x8799:	fld1	; 2: -39 -24

exp$23:	; n = n + 1
x8801:	fadd	; 2: -34 -63

exp$24:	; top float n
x8803:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary487 = faculty * £temporary486
x8806:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x8808:	fstp qword [bp + 22]	; 3: -35 94 22

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x8811:	fld qword [bp + 38]	; 3: -35 70 38

exp$29:	; parameter term, offset 6
x8814:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x8817:	mov word [bp + 54], exp$31	; 5: -57 70 54 127 34
x8822:	mov [bp + 56], bp	; 3: -119 110 56
x8825:	add bp, 54	; 3: -125 -59 54
x8828:	jmp fabs	; 3: -23 -63 -5

exp$31:	; post call

exp$32:	; £temporary488 = return_value

exp$33:	; push float 0.000000001
x8831:	fld qword [float8$0.000000001#]	; 4: -35 6 -71 33

exp$34:	; if £temporary488 >= 0.000000001 goto 8
x8835:	fcompp	; 2: -34 -39
x8837:	fstsw ax	; 3: -101 -33 -32
x8840:	sahf	; 1: -98
x8841:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x8843:	fld qword [bp + 46]	; 3: -35 70 46

exp$36:	; return_value = sum

exp$37:	; return
x8846:	mov ax, [bp]	; 3: -117 70 0
x8849:	mov di, [bp + 4]	; 3: -117 126 4
x8852:	mov bp, [bp + 2]	; 3: -117 110 2
x8855:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

isdigit:	; if c < 48 goto 4
x8857:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x8861:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x8863:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x8867:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary352 = 1
x8869:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x8872:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary352 = 0
x8874:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary352

isdigit$6:	; return
x8877:	mov ax, [bp]	; 3: -117 70 0
x8880:	mov di, [bp + 4]	; 3: -117 126 4
x8883:	mov bp, [bp + 2]	; 3: -117 110 2
x8886:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

mktime:	; if tp == 0 goto 29
x8888:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x8892:	je mktime$29	; 4: 15 -124 -40 0

mktime$1:	; £temporary2758 -> tp = *tp, offset 10
x8896:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; £temporary2759 = £temporary2758 -> tp - 69
x8899:	mov ax, [si + 10]	; 3: -117 68 10
x8902:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; £temporary2760 = £temporary2759 / 4
x8905:	xor dx, dx	; 2: 49 -46
x8907:	idiv word [int2$4#]	; 4: -9 62 -87 35

mktime$4:	; £temporary2761 = int_to_int £temporary2760 (Signed_Int -> Signed_Long_Int)
x8911:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8917:	cmp ax, 0	; 3: -125 -8 0
x8920:	jge mktime$5	; 2: 125 5
x8922:	neg ax	; 2: -9 -40
x8924:	neg eax	; 3: 102 -9 -40

mktime$5:	; leapDays = £temporary2761
x8927:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; £temporary2762 -> tp = *tp, offset 10
x8931:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; £temporary2763 = £temporary2762 -> tp - 70
x8934:	mov ax, [si + 10]	; 3: -117 68 10
x8937:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; £temporary2764 = £temporary2763 * 365
x8940:	xor dx, dx	; 2: 49 -46
x8942:	imul word [int2$365#]	; 4: -9 46 -85 35

mktime$9:	; £temporary2765 = int_to_int £temporary2764 (Signed_Int -> Signed_Long_Int)
x8946:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8952:	cmp ax, 0	; 3: -125 -8 0
x8955:	jge mktime$10	; 2: 125 5
x8957:	neg ax	; 2: -9 -40
x8959:	neg eax	; 3: 102 -9 -40

mktime$10:	; £temporary2766 = £temporary2765 + leapDays
x8962:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; £temporary2767 -> tp = *tp, offset 14
x8966:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; £temporary2768 = int_to_int £temporary2767 -> tp (Signed_Int -> Signed_Long_Int)
x8969:	mov bx, [si + 14]	; 3: -117 92 14
x8972:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x8979:	cmp bx, 0	; 3: -125 -5 0
x8982:	jge mktime$13	; 2: 125 5
x8984:	neg bx	; 2: -9 -37
x8986:	neg ebx	; 3: 102 -9 -37

mktime$13:	; £temporary2769 = £temporary2766 + £temporary2768
x8989:	add eax, ebx	; 3: 102 1 -40

mktime$14:	; totalDays = £temporary2769
x8992:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$15:	; £temporary2770 = totalDays * 86400
x8996:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x9000:	xor edx, edx	; 3: 102 49 -46
x9003:	imul dword [int4$86400#]	; 5: 102 -9 46 -83 35
x9008:	mov ebx, eax	; 3: 102 -119 -61

mktime$16:	; £temporary2771 -> tp = *tp, offset 4
x9011:	mov si, [bp + 6]	; 3: -117 118 6

mktime$17:	; £temporary2772 = int_to_int £temporary2771 -> tp (Signed_Int -> Signed_Long_Int)
x9014:	mov ax, [si + 4]	; 3: -117 68 4
x9017:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9023:	cmp ax, 0	; 3: -125 -8 0
x9026:	jge mktime$18	; 2: 125 5
x9028:	neg ax	; 2: -9 -40
x9030:	neg eax	; 3: 102 -9 -40

mktime$18:	; £temporary2773 = £temporary2772 * 3600
x9033:	xor edx, edx	; 3: 102 49 -46
x9036:	imul dword [int4$3600#]	; 5: 102 -9 46 -79 35

mktime$19:	; £temporary2774 = £temporary2770 + £temporary2773
x9041:	add ebx, eax	; 3: 102 1 -61

mktime$20:	; £temporary2775 -> tp = *tp, offset 2
x9044:	mov si, [bp + 6]	; 3: -117 118 6

mktime$21:	; £temporary2776 = int_to_int £temporary2775 -> tp (Signed_Int -> Signed_Long_Int)
x9047:	mov ax, [si + 2]	; 3: -117 68 2
x9050:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9056:	cmp ax, 0	; 3: -125 -8 0
x9059:	jge mktime$22	; 2: 125 5
x9061:	neg ax	; 2: -9 -40
x9063:	neg eax	; 3: 102 -9 -40

mktime$22:	; £temporary2777 = £temporary2776 * 60
x9066:	xor edx, edx	; 3: 102 49 -46
x9069:	imul dword [int4$60#]	; 5: 102 -9 46 -75 35

mktime$23:	; £temporary2778 = £temporary2774 + £temporary2777
x9074:	add ebx, eax	; 3: 102 1 -61

mktime$24:	; £temporary2779 -> tp = *tp
x9077:	mov si, [bp + 6]	; 3: -117 118 6

mktime$25:	; £temporary2780 = int_to_int £temporary2779 -> tp (Signed_Int -> Signed_Long_Int)
x9080:	mov ax, [si]	; 2: -117 4
x9082:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9088:	cmp ax, 0	; 3: -125 -8 0
x9091:	jge mktime$26	; 2: 125 5
x9093:	neg ax	; 2: -9 -40
x9095:	neg eax	; 3: 102 -9 -40

mktime$26:	; £temporary2781 = £temporary2778 + £temporary2780
x9098:	add ebx, eax	; 3: 102 1 -61

mktime$27:	; return_value = £temporary2781

mktime$28:	; return
x9101:	mov ax, [bp]	; 3: -117 70 0
x9104:	mov di, [bp + 4]	; 3: -117 126 4
x9107:	mov bp, [bp + 2]	; 3: -117 110 2
x9110:	jmp ax	; 2: -1 -32

mktime$29:	; return_value = 0
x9112:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$30:	; return
x9118:	mov ax, [bp]	; 3: -117 70 0
x9121:	mov di, [bp + 4]	; 3: -117 126 4
x9124:	mov bp, [bp + 2]	; 3: -117 110 2
x9127:	jmp ax	; 2: -1 -32

mktime$31:	; function end mktime

int2$4#:
x9129:	dw 4	; 2: 4 0

int2$365#:
x9131:	dw 365	; 2: 109 1

int4$86400#:
x9133:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x9137:	dd 3600	; 4: 16 14 0 0

int4$60#:
x9141:	dd 60	; 4: 60 0 0 0

scanf:	; £temporary1791 = &format
x9145:	mov si, bp	; 2: -119 -18
x9147:	add si, 6	; 3: -125 -58 6

scanf$1:	; £temporary1792 = int_to_int £temporary1791 (Pointer -> Pointer)

scanf$2:	; £temporary1793 = £temporary1792 + 2
x9150:	add si, 2	; 3: -125 -58 2

scanf$3:	; arg_list = £temporary1793
x9153:	mov [di + 8], si	; 3: -119 117 8

scanf$4:	; call header integral zero 0 stack zero 0

scanf$5:	; parameter format, offset 6
x9156:	mov ax, [bp + 6]	; 3: -117 70 6
x9159:	mov [di + 16], ax	; 3: -119 69 16

scanf$6:	; parameter arg_list, offset 8
x9162:	mov ax, [di + 8]	; 3: -117 69 8
x9165:	mov [di + 18], ax	; 3: -119 69 18

scanf$7:	; call function ellipse-noellipse vscanf
x9168:	mov word [di + 10], scanf$8	; 5: -57 69 10 -29 35
x9173:	mov [di + 12], bp	; 3: -119 109 12
x9176:	mov [di + 14], di	; 3: -119 125 14
x9179:	mov bp, di	; 2: -119 -3
x9181:	add bp, 10	; 3: -125 -59 10
x9184:	nop	; 1: -112
x9185:	jmp vscanf	; 2: -21 11

scanf$8:	; post call

scanf$9:	; £temporary1794 = return_value

scanf$10:	; return_value = £temporary1794

scanf$11:	; return
x9187:	mov ax, [bp]	; 3: -117 70 0
x9190:	mov di, [bp + 4]	; 3: -117 126 4
x9193:	mov bp, [bp + 2]	; 3: -117 110 2
x9196:	jmp ax	; 2: -1 -32

scanf$12:	; function end scanf

vscanf:	; call header integral zero 0 stack zero 0

vscanf$1:	; parameter stdin, offset 6
x9198:	mov ax, [stdin]	; 3: -95 25 36
x9201:	mov [bp + 16], ax	; 3: -119 70 16

vscanf$2:	; parameter format, offset 8
x9204:	mov ax, [bp + 6]	; 3: -117 70 6
x9207:	mov [bp + 18], ax	; 3: -119 70 18

vscanf$3:	; parameter arg_list, offset 10
x9210:	mov ax, [bp + 8]	; 3: -117 70 8
x9213:	mov [bp + 20], ax	; 3: -119 70 20

vscanf$4:	; call function noellipse-noellipse vfscanf
x9216:	mov word [bp + 10], vscanf$5	; 5: -57 70 10 14 36
x9221:	mov [bp + 12], bp	; 3: -119 110 12
x9224:	add bp, 10	; 3: -125 -59 10
x9227:	nop	; 1: -112
x9228:	jmp vfscanf	; 2: -21 13

vscanf$5:	; post call

vscanf$6:	; £temporary1798 = return_value

vscanf$7:	; return_value = £temporary1798

vscanf$8:	; return
x9230:	mov ax, [bp]	; 3: -117 70 0
x9233:	mov di, [bp + 4]	; 3: -117 126 4
x9236:	mov bp, [bp + 2]	; 3: -117 110 2
x9239:	jmp ax	; 2: -1 -32

vscanf$9:	; function end vscanf

stdin:
x9241:	dw g_fileArray	; 2: 24 4

vfscanf:	; g_inStatus = 0
x9243:	mov word [g_inStatus], 0	; 6: -57 6 76 36 0 0

vfscanf$1:	; £temporary1810 = int_to_int inStream (Pointer -> Pointer)
x9249:	mov ax, [bp + 6]	; 3: -117 70 6

vfscanf$2:	; g_inDevice = £temporary1810
x9252:	mov [g_inDevice], ax	; 3: -93 78 36

vfscanf$3:	; call header integral zero 0 stack zero 0

vfscanf$4:	; parameter format, offset 6
x9255:	mov ax, [bp + 8]	; 3: -117 70 8
x9258:	mov [bp + 18], ax	; 3: -119 70 18

vfscanf$5:	; parameter arg_list, offset 8
x9261:	mov ax, [bp + 10]	; 3: -117 70 10
x9264:	mov [bp + 20], ax	; 3: -119 70 20

vfscanf$6:	; call function noellipse-noellipse scanFormat
x9267:	mov word [bp + 12], vfscanf$7	; 5: -57 70 12 65 36
x9272:	mov [bp + 14], bp	; 3: -119 110 14
x9275:	add bp, 12	; 3: -125 -59 12
x9278:	nop	; 1: -112
x9279:	jmp scanFormat	; 2: -21 15

vfscanf$7:	; post call

vfscanf$8:	; £temporary1811 = return_value

vfscanf$9:	; return_value = £temporary1811

vfscanf$10:	; return
x9281:	mov ax, [bp]	; 3: -117 70 0
x9284:	mov di, [bp + 4]	; 3: -117 126 4
x9287:	mov bp, [bp + 2]	; 3: -117 110 2
x9290:	jmp ax	; 2: -1 -32

vfscanf$11:	; function end vfscanf

g_inStatus:
x9292:	db 0, 0	; 2: 0 0

g_inDevice:
x9294:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x9296:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x9301:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x9306:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x9311:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x9316:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x9321:	mov word [g_inCount], 0	; 6: -57 6 -45 41 0 0

scanFormat$6:	; g_inChars = 0
x9327:	mov word [g_inChars], 0	; 6: -57 6 -43 41 0 0

scanFormat$7:	; index = 0
x9333:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1601 = format + index
x9338:	mov si, [bp + 6]	; 3: -117 118 6
x9341:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1600 -> £temporary1601 = *£temporary1601

scanFormat$10:	; if £temporary1600 -> £temporary1601 == 0 goto 346
x9344:	cmp byte [si], 0	; 3: -128 60 0
x9347:	je scanFormat$346	; 4: 15 -124 61 5

scanFormat$11:	; £temporary1605 = format + index
x9351:	mov si, [bp + 6]	; 3: -117 118 6
x9354:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1604 -> £temporary1605 = *£temporary1605

scanFormat$13:	; c = £temporary1604 -> £temporary1605
x9357:	mov al, [si]	; 2: -118 4
x9359:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1606 = int_to_int c (Signed_Char -> Signed_Int)
x9362:	mov al, [bp + 10]	; 3: -118 70 10
x9365:	and ax, 255	; 3: 37 -1 0
x9368:	cmp al, 0	; 2: 60 0
x9370:	jge scanFormat$15	; 2: 125 4
x9372:	neg al	; 2: -10 -40
x9374:	neg ax	; 2: -9 -40

scanFormat$15:	; £temporary1607 = £temporary1606 + 1
x9376:	inc ax	; 1: 64

scanFormat$16:	; d = £temporary1607
x9377:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$17:	; if percent == 0 goto 338
x9380:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x9384:	je scanFormat$338	; 4: 15 -124 -13 4

scanFormat$18:	; £temporary1608 = d - 1
x9388:	mov ax, [bp + 55]	; 3: -117 70 55
x9391:	dec ax	; 1: 72

scanFormat$19:	; case £temporary1608 == 104 goto 37
x9392:	cmp ax, 104	; 3: -125 -8 104
x9395:	je scanFormat$37	; 2: 116 100

scanFormat$20:	; case £temporary1608 == 108 goto 39
x9397:	cmp ax, 108	; 3: -125 -8 108
x9400:	je scanFormat$39	; 2: 116 103

scanFormat$21:	; case £temporary1608 == 76 goto 41
x9402:	cmp ax, 76	; 3: -125 -8 76
x9405:	je scanFormat$41	; 2: 116 106

scanFormat$22:	; case £temporary1608 == 42 goto 43
x9407:	cmp ax, 42	; 3: -125 -8 42
x9410:	je scanFormat$43	; 2: 116 109

scanFormat$23:	; case £temporary1608 == 99 goto 45
x9412:	cmp ax, 99	; 3: -125 -8 99
x9415:	je scanFormat$45	; 2: 116 112

scanFormat$24:	; case £temporary1608 == 115 goto 64
x9417:	cmp ax, 115	; 3: -125 -8 115
x9420:	je scanFormat$64	; 4: 15 -124 -67 0

scanFormat$25:	; case £temporary1608 == 100 goto 84
x9424:	cmp ax, 100	; 3: -125 -8 100
x9427:	je scanFormat$84	; 4: 15 -124 11 1

scanFormat$26:	; case £temporary1608 == 105 goto 84
x9431:	cmp ax, 105	; 3: -125 -8 105
x9434:	je scanFormat$84	; 4: 15 -124 4 1

scanFormat$27:	; case £temporary1608 == 111 goto 122
x9438:	cmp ax, 111	; 3: -125 -8 111
x9441:	je scanFormat$122	; 4: 15 -124 -101 1

scanFormat$28:	; case £temporary1608 == 120 goto 161
x9445:	cmp ax, 120	; 3: -125 -8 120
x9448:	je scanFormat$161	; 4: 15 -124 36 2

scanFormat$29:	; case £temporary1608 == 117 goto 200
x9452:	cmp ax, 117	; 3: -125 -8 117
x9455:	je scanFormat$200	; 4: 15 -124 -83 2

scanFormat$30:	; case £temporary1608 == 103 goto 239
x9459:	cmp ax, 103	; 3: -125 -8 103
x9462:	je scanFormat$239	; 4: 15 -124 54 3

scanFormat$31:	; case £temporary1608 == 102 goto 239
x9466:	cmp ax, 102	; 3: -125 -8 102
x9469:	je scanFormat$239	; 4: 15 -124 47 3

scanFormat$32:	; case £temporary1608 == 101 goto 239
x9473:	cmp ax, 101	; 3: -125 -8 101
x9476:	je scanFormat$239	; 4: 15 -124 40 3

scanFormat$33:	; case £temporary1608 == 91 goto 278
x9480:	cmp ax, 91	; 3: -125 -8 91
x9483:	je scanFormat$278	; 4: 15 -124 -92 3

scanFormat$34:	; case £temporary1608 == 110 goto 321
x9487:	cmp ax, 110	; 3: -125 -8 110
x9490:	je scanFormat$321	; 4: 15 -124 59 4

scanFormat$35:	; case end £temporary1608

scanFormat$36:	; goto 331
x9494:	jmp scanFormat$331	; 3: -23 91 4

scanFormat$37:	; shortInt = 1
x9497:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$38:	; goto 344
x9502:	jmp scanFormat$344	; 3: -23 -99 4

scanFormat$39:	; longIntOrDouble = 1
x9505:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$40:	; goto 344
x9510:	jmp scanFormat$344	; 3: -23 -107 4

scanFormat$41:	; longDouble = 1
x9513:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$42:	; goto 344
x9518:	jmp scanFormat$344	; 3: -23 -115 4

scanFormat$43:	; star = 1
x9521:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$44:	; goto 344
x9526:	jmp scanFormat$344	; 3: -23 -123 4

scanFormat$45:	; call header integral zero 0 stack zero 0

scanFormat$46:	; call function noellipse-noellipse scanChar
x9529:	mov word [bp + 57], scanFormat$47	; 5: -57 70 57 71 37
x9534:	mov [bp + 59], bp	; 3: -119 110 59
x9537:	add bp, 57	; 3: -125 -59 57
x9540:	jmp scanChar	; 3: -23 -91 4

scanFormat$47:	; post call

scanFormat$48:	; £temporary1609 = return_value

scanFormat$49:	; charValue = £temporary1609
x9543:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$50:	; if star != 0 goto 59
x9546:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9550:	jne scanFormat$59	; 2: 117 28

scanFormat$51:	; £temporary1612 = arg_list + 2
x9552:	mov ax, [bp + 8]	; 3: -117 70 8
x9555:	add ax, 2	; 3: -125 -64 2

scanFormat$52:	; arg_list = £temporary1612
x9558:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$53:	; £temporary1613 = arg_list - 2
x9561:	mov si, [bp + 8]	; 3: -117 118 8
x9564:	sub si, 2	; 3: -125 -18 2

scanFormat$54:	; £temporary1614 = int_to_int £temporary1613 (Signed_Int -> Pointer)

scanFormat$55:	; £temporary1615 -> £temporary1614 = *£temporary1614

scanFormat$56:	; charPtr = £temporary1615 -> £temporary1614
x9567:	mov ax, [si]	; 2: -117 4
x9569:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$57:	; £temporary1616 -> charPtr = *charPtr
x9572:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$58:	; £temporary1616 -> charPtr = charValue
x9575:	mov al, [bp + 57]	; 3: -118 70 57
x9578:	mov [si], al	; 2: -120 4

scanFormat$59:	; percent = 0
x9580:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$60:	; £temporary1617 = int_to_int charValue (Signed_Char -> Signed_Int)
x9585:	mov al, [bp + 57]	; 3: -118 70 57
x9588:	and ax, 255	; 3: 37 -1 0
x9591:	cmp al, 0	; 2: 60 0
x9593:	jge scanFormat$61	; 2: 125 4
x9595:	neg al	; 2: -10 -40
x9597:	neg ax	; 2: -9 -40

scanFormat$61:	; if £temporary1617 == -1 goto 344
x9599:	cmp ax, -1	; 3: -125 -8 -1
x9602:	je scanFormat$344	; 4: 15 -124 56 4

scanFormat$62:	; ++g_inCount
x9606:	inc word [g_inCount]	; 4: -1 6 -45 41

scanFormat$63:	; goto 344
x9610:	jmp scanFormat$344	; 3: -23 49 4

scanFormat$64:	; if star != 0 goto 77
x9613:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9617:	jne scanFormat$77	; 2: 117 47

scanFormat$65:	; £temporary1622 = arg_list + 2
x9619:	mov ax, [bp + 8]	; 3: -117 70 8
x9622:	add ax, 2	; 3: -125 -64 2

scanFormat$66:	; arg_list = £temporary1622
x9625:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$67:	; £temporary1623 = arg_list - 2
x9628:	mov si, [bp + 8]	; 3: -117 118 8
x9631:	sub si, 2	; 3: -125 -18 2

scanFormat$68:	; £temporary1624 = int_to_int £temporary1623 (Signed_Int -> Pointer)

scanFormat$69:	; £temporary1625 -> £temporary1624 = *£temporary1624

scanFormat$70:	; charPtr = £temporary1625 -> £temporary1624
x9634:	mov ax, [si]	; 2: -117 4
x9636:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$71:	; call header integral zero 0 stack zero 0

scanFormat$72:	; parameter charPtr, offset 6
x9639:	mov ax, [bp + 11]	; 3: -117 70 11
x9642:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$73:	; parameter 0, offset 8
x9645:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$74:	; call function noellipse-noellipse scanString
x9650:	mov word [bp + 57], scanFormat$75	; 5: -57 70 57 -64 37
x9655:	mov [bp + 59], bp	; 3: -119 110 59
x9658:	add bp, 57	; 3: -125 -59 57
x9661:	jmp scanString	; 3: -23 -101 4

scanFormat$75:	; post call

scanFormat$76:	; goto 82
x9664:	jmp scanFormat$82	; 2: -21 24

scanFormat$77:	; call header integral zero 0 stack zero 0

scanFormat$78:	; parameter 0, offset 6
x9666:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$79:	; parameter 0, offset 8
x9671:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$80:	; call function noellipse-noellipse scanString
x9676:	mov word [bp + 57], scanFormat$81	; 5: -57 70 57 -38 37
x9681:	mov [bp + 59], bp	; 3: -119 110 59
x9684:	add bp, 57	; 3: -125 -59 57
x9687:	jmp scanString	; 3: -23 -127 4

scanFormat$81:	; post call

scanFormat$82:	; percent = 0
x9690:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$83:	; goto 344
x9695:	jmp scanFormat$344	; 3: -23 -36 3

scanFormat$84:	; call header integral zero 0 stack zero 0

scanFormat$85:	; call function noellipse-noellipse scanLongInt
x9698:	mov word [bp + 57], scanFormat$86	; 5: -57 70 57 -16 37
x9703:	mov [bp + 59], bp	; 3: -119 110 59
x9706:	add bp, 57	; 3: -125 -59 57
x9709:	jmp scanLongInt	; 3: -23 -17 6

scanFormat$86:	; post call

scanFormat$87:	; £temporary1628 = return_value

scanFormat$88:	; longValue = £temporary1628
x9712:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$89:	; if star != 0 goto 120
x9716:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9720:	jne scanFormat$120	; 2: 117 126

scanFormat$90:	; if shortInt == 0 goto 101
x9722:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9726:	je scanFormat$101	; 2: 116 42

scanFormat$91:	; £temporary1631 = arg_list + 2
x9728:	mov ax, [bp + 8]	; 3: -117 70 8
x9731:	add ax, 2	; 3: -125 -64 2

scanFormat$92:	; arg_list = £temporary1631
x9734:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$93:	; £temporary1632 = arg_list - 2
x9737:	mov si, [bp + 8]	; 3: -117 118 8
x9740:	sub si, 2	; 3: -125 -18 2

scanFormat$94:	; £temporary1633 = int_to_int £temporary1632 (Signed_Int -> Pointer)

scanFormat$95:	; £temporary1634 -> £temporary1633 = *£temporary1633

scanFormat$96:	; shortPtr = £temporary1634 -> £temporary1633
x9743:	mov ax, [si]	; 2: -117 4
x9745:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$97:	; £temporary1635 -> shortPtr = *shortPtr
x9748:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$98:	; £temporary1636 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x9751:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9755:	cmp eax, 0	; 4: 102 -125 -8 0
x9759:	jge scanFormat$99	; 2: 125 5
x9761:	neg eax	; 3: 102 -9 -40
x9764:	neg al	; 2: -10 -40

scanFormat$99:	; £temporary1635 -> shortPtr = £temporary1636
x9766:	mov [si], al	; 2: -120 4

scanFormat$100:	; goto 120
x9768:	jmp scanFormat$120	; 2: -21 78

scanFormat$101:	; if longIntOrDouble != 0 goto 112
x9770:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9774:	jne scanFormat$112	; 2: 117 42

scanFormat$102:	; £temporary1639 = arg_list + 2
x9776:	mov ax, [bp + 8]	; 3: -117 70 8
x9779:	add ax, 2	; 3: -125 -64 2

scanFormat$103:	; arg_list = £temporary1639
x9782:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$104:	; £temporary1640 = arg_list - 2
x9785:	mov si, [bp + 8]	; 3: -117 118 8
x9788:	sub si, 2	; 3: -125 -18 2

scanFormat$105:	; £temporary1641 = int_to_int £temporary1640 (Signed_Int -> Pointer)

scanFormat$106:	; £temporary1642 -> £temporary1641 = *£temporary1641

scanFormat$107:	; intPtr = £temporary1642 -> £temporary1641
x9791:	mov ax, [si]	; 2: -117 4
x9793:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$108:	; £temporary1643 -> intPtr = *intPtr
x9796:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$109:	; £temporary1644 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x9799:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9803:	cmp eax, 0	; 4: 102 -125 -8 0
x9807:	jge scanFormat$110	; 2: 125 5
x9809:	neg eax	; 3: 102 -9 -40
x9812:	neg ax	; 2: -9 -40

scanFormat$110:	; £temporary1643 -> intPtr = £temporary1644
x9814:	mov [si], ax	; 2: -119 4

scanFormat$111:	; goto 120
x9816:	jmp scanFormat$120	; 2: -21 30

scanFormat$112:	; £temporary1645 = arg_list + 2
x9818:	mov ax, [bp + 8]	; 3: -117 70 8
x9821:	add ax, 2	; 3: -125 -64 2

scanFormat$113:	; arg_list = £temporary1645
x9824:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$114:	; £temporary1646 = arg_list - 2
x9827:	mov si, [bp + 8]	; 3: -117 118 8
x9830:	sub si, 2	; 3: -125 -18 2

scanFormat$115:	; £temporary1647 = int_to_int £temporary1646 (Signed_Int -> Pointer)

scanFormat$116:	; £temporary1648 -> £temporary1647 = *£temporary1647

scanFormat$117:	; longPtr = £temporary1648 -> £temporary1647
x9833:	mov ax, [si]	; 2: -117 4
x9835:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$118:	; £temporary1649 -> longPtr = *longPtr
x9838:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$119:	; £temporary1649 -> longPtr = longValue
x9841:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9845:	mov [si], eax	; 3: 102 -119 4

scanFormat$120:	; percent = 0
x9848:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$121:	; goto 344
x9853:	jmp scanFormat$344	; 3: -23 62 3

scanFormat$122:	; call header integral zero 0 stack zero 0

scanFormat$123:	; parameter 8, offset 6
x9856:	mov dword [bp + 63], 8	; 8: 102 -57 70 63 8 0 0 0

scanFormat$124:	; call function noellipse-noellipse scanUnsignedLongInt
x9864:	mov word [bp + 57], scanFormat$125	; 5: -57 70 57 -106 38
x9869:	mov [bp + 59], bp	; 3: -119 110 59
x9872:	add bp, 57	; 3: -125 -59 57
x9875:	jmp scanUnsignedLongInt	; 3: -23 -96 7

scanFormat$125:	; post call

scanFormat$126:	; £temporary1651 = return_value

scanFormat$127:	; unsignedLongValue = £temporary1651
x9878:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$128:	; if star != 0 goto 159
x9882:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9886:	jne scanFormat$159	; 2: 117 104

scanFormat$129:	; if shortInt == 0 goto 140
x9888:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9892:	je scanFormat$140	; 2: 116 31

scanFormat$130:	; £temporary1654 = arg_list + 2
x9894:	mov ax, [bp + 8]	; 3: -117 70 8
x9897:	add ax, 2	; 3: -125 -64 2

scanFormat$131:	; arg_list = £temporary1654
x9900:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$132:	; £temporary1655 = arg_list - 2
x9903:	mov si, [bp + 8]	; 3: -117 118 8
x9906:	sub si, 2	; 3: -125 -18 2

scanFormat$133:	; £temporary1656 = int_to_int £temporary1655 (Signed_Int -> Pointer)

scanFormat$134:	; £temporary1657 -> £temporary1656 = *£temporary1656

scanFormat$135:	; unsignedShortPtr = £temporary1657 -> £temporary1656
x9909:	mov ax, [si]	; 2: -117 4
x9911:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$136:	; £temporary1658 -> unsignedShortPtr = *unsignedShortPtr
x9914:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$137:	; £temporary1659 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9917:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$138:	; £temporary1658 -> unsignedShortPtr = £temporary1659
x9921:	mov [si], al	; 2: -120 4

scanFormat$139:	; goto 159
x9923:	jmp scanFormat$159	; 2: -21 67

scanFormat$140:	; if longIntOrDouble != 0 goto 151
x9925:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9929:	jne scanFormat$151	; 2: 117 31

scanFormat$141:	; £temporary1662 = arg_list + 2
x9931:	mov ax, [bp + 8]	; 3: -117 70 8
x9934:	add ax, 2	; 3: -125 -64 2

scanFormat$142:	; arg_list = £temporary1662
x9937:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$143:	; £temporary1663 = arg_list - 2
x9940:	mov si, [bp + 8]	; 3: -117 118 8
x9943:	sub si, 2	; 3: -125 -18 2

scanFormat$144:	; £temporary1664 = int_to_int £temporary1663 (Signed_Int -> Pointer)

scanFormat$145:	; £temporary1665 -> £temporary1664 = *£temporary1664

scanFormat$146:	; unsignedIntPtr = £temporary1665 -> £temporary1664
x9946:	mov ax, [si]	; 2: -117 4
x9948:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$147:	; £temporary1666 -> unsignedIntPtr = *unsignedIntPtr
x9951:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$148:	; £temporary1667 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9954:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$149:	; £temporary1666 -> unsignedIntPtr = £temporary1667
x9958:	mov [si], ax	; 2: -119 4

scanFormat$150:	; goto 159
x9960:	jmp scanFormat$159	; 2: -21 30

scanFormat$151:	; £temporary1668 = arg_list + 2
x9962:	mov ax, [bp + 8]	; 3: -117 70 8
x9965:	add ax, 2	; 3: -125 -64 2

scanFormat$152:	; arg_list = £temporary1668
x9968:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$153:	; £temporary1669 = arg_list - 2
x9971:	mov si, [bp + 8]	; 3: -117 118 8
x9974:	sub si, 2	; 3: -125 -18 2

scanFormat$154:	; £temporary1670 = int_to_int £temporary1669 (Signed_Int -> Pointer)

scanFormat$155:	; £temporary1671 -> £temporary1670 = *£temporary1670

scanFormat$156:	; unsignedLongPtr = £temporary1671 -> £temporary1670
x9977:	mov ax, [si]	; 2: -117 4
x9979:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$157:	; £temporary1672 -> unsignedLongPtr = *unsignedLongPtr
x9982:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$158:	; £temporary1672 -> unsignedLongPtr = unsignedLongValue
x9985:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x9989:	mov [si], eax	; 3: 102 -119 4

scanFormat$159:	; percent = 0
x9992:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$160:	; goto 344
x9997:	jmp scanFormat$344	; 3: -23 -82 2

scanFormat$161:	; call header integral zero 0 stack zero 0

scanFormat$162:	; parameter 16, offset 6
x10000:	mov dword [bp + 63], 16	; 8: 102 -57 70 63 16 0 0 0

scanFormat$163:	; call function noellipse-noellipse scanUnsignedLongInt
x10008:	mov word [bp + 57], scanFormat$164	; 5: -57 70 57 38 39
x10013:	mov [bp + 59], bp	; 3: -119 110 59
x10016:	add bp, 57	; 3: -125 -59 57
x10019:	jmp scanUnsignedLongInt	; 3: -23 16 7

scanFormat$164:	; post call

scanFormat$165:	; £temporary1674 = return_value

scanFormat$166:	; unsignedLongValue = £temporary1674
x10022:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$167:	; if star != 0 goto 198
x10026:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10030:	jne scanFormat$198	; 2: 117 104

scanFormat$168:	; if shortInt == 0 goto 179
x10032:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10036:	je scanFormat$179	; 2: 116 31

scanFormat$169:	; £temporary1677 = arg_list + 2
x10038:	mov ax, [bp + 8]	; 3: -117 70 8
x10041:	add ax, 2	; 3: -125 -64 2

scanFormat$170:	; arg_list = £temporary1677
x10044:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$171:	; £temporary1678 = arg_list - 2
x10047:	mov si, [bp + 8]	; 3: -117 118 8
x10050:	sub si, 2	; 3: -125 -18 2

scanFormat$172:	; £temporary1679 = int_to_int £temporary1678 (Signed_Int -> Pointer)

scanFormat$173:	; £temporary1680 -> £temporary1679 = *£temporary1679

scanFormat$174:	; unsignedShortPtr = £temporary1680 -> £temporary1679
x10053:	mov ax, [si]	; 2: -117 4
x10055:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$175:	; £temporary1681 -> unsignedShortPtr = *unsignedShortPtr
x10058:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$176:	; £temporary1682 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10061:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$177:	; £temporary1681 -> unsignedShortPtr = £temporary1682
x10065:	mov [si], al	; 2: -120 4

scanFormat$178:	; goto 198
x10067:	jmp scanFormat$198	; 2: -21 67

scanFormat$179:	; if longIntOrDouble != 0 goto 190
x10069:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10073:	jne scanFormat$190	; 2: 117 31

scanFormat$180:	; £temporary1685 = arg_list + 2
x10075:	mov ax, [bp + 8]	; 3: -117 70 8
x10078:	add ax, 2	; 3: -125 -64 2

scanFormat$181:	; arg_list = £temporary1685
x10081:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$182:	; £temporary1686 = arg_list - 2
x10084:	mov si, [bp + 8]	; 3: -117 118 8
x10087:	sub si, 2	; 3: -125 -18 2

scanFormat$183:	; £temporary1687 = int_to_int £temporary1686 (Signed_Int -> Pointer)

scanFormat$184:	; £temporary1688 -> £temporary1687 = *£temporary1687

scanFormat$185:	; unsignedIntPtr = £temporary1688 -> £temporary1687
x10090:	mov ax, [si]	; 2: -117 4
x10092:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$186:	; £temporary1689 -> unsignedIntPtr = *unsignedIntPtr
x10095:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$187:	; £temporary1690 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10098:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$188:	; £temporary1689 -> unsignedIntPtr = £temporary1690
x10102:	mov [si], ax	; 2: -119 4

scanFormat$189:	; goto 198
x10104:	jmp scanFormat$198	; 2: -21 30

scanFormat$190:	; £temporary1691 = arg_list + 2
x10106:	mov ax, [bp + 8]	; 3: -117 70 8
x10109:	add ax, 2	; 3: -125 -64 2

scanFormat$191:	; arg_list = £temporary1691
x10112:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$192:	; £temporary1692 = arg_list - 2
x10115:	mov si, [bp + 8]	; 3: -117 118 8
x10118:	sub si, 2	; 3: -125 -18 2

scanFormat$193:	; £temporary1693 = int_to_int £temporary1692 (Signed_Int -> Pointer)

scanFormat$194:	; £temporary1694 -> £temporary1693 = *£temporary1693

scanFormat$195:	; unsignedLongPtr = £temporary1694 -> £temporary1693
x10121:	mov ax, [si]	; 2: -117 4
x10123:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$196:	; £temporary1695 -> unsignedLongPtr = *unsignedLongPtr
x10126:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$197:	; £temporary1695 -> unsignedLongPtr = unsignedLongValue
x10129:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10133:	mov [si], eax	; 3: 102 -119 4

scanFormat$198:	; percent = 0
x10136:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$199:	; goto 344
x10141:	jmp scanFormat$344	; 3: -23 30 2

scanFormat$200:	; call header integral zero 0 stack zero 0

scanFormat$201:	; parameter 0, offset 6
x10144:	mov dword [bp + 63], 0	; 8: 102 -57 70 63 0 0 0 0

scanFormat$202:	; call function noellipse-noellipse scanUnsignedLongInt
x10152:	mov word [bp + 57], scanFormat$203	; 5: -57 70 57 -74 39
x10157:	mov [bp + 59], bp	; 3: -119 110 59
x10160:	add bp, 57	; 3: -125 -59 57
x10163:	jmp scanUnsignedLongInt	; 3: -23 -128 6

scanFormat$203:	; post call

scanFormat$204:	; £temporary1697 = return_value

scanFormat$205:	; unsignedLongValue = £temporary1697
x10166:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$206:	; if star != 0 goto 237
x10170:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10174:	jne scanFormat$237	; 2: 117 104

scanFormat$207:	; if shortInt == 0 goto 218
x10176:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10180:	je scanFormat$218	; 2: 116 31

scanFormat$208:	; £temporary1700 = arg_list + 2
x10182:	mov ax, [bp + 8]	; 3: -117 70 8
x10185:	add ax, 2	; 3: -125 -64 2

scanFormat$209:	; arg_list = £temporary1700
x10188:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$210:	; £temporary1701 = arg_list - 2
x10191:	mov si, [bp + 8]	; 3: -117 118 8
x10194:	sub si, 2	; 3: -125 -18 2

scanFormat$211:	; £temporary1702 = int_to_int £temporary1701 (Signed_Int -> Pointer)

scanFormat$212:	; £temporary1703 -> £temporary1702 = *£temporary1702

scanFormat$213:	; unsignedShortPtr = £temporary1703 -> £temporary1702
x10197:	mov ax, [si]	; 2: -117 4
x10199:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$214:	; £temporary1704 -> unsignedShortPtr = *unsignedShortPtr
x10202:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$215:	; £temporary1705 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10205:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$216:	; £temporary1704 -> unsignedShortPtr = £temporary1705
x10209:	mov [si], al	; 2: -120 4

scanFormat$217:	; goto 237
x10211:	jmp scanFormat$237	; 2: -21 67

scanFormat$218:	; if longIntOrDouble != 0 goto 229
x10213:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10217:	jne scanFormat$229	; 2: 117 31

scanFormat$219:	; £temporary1708 = arg_list + 2
x10219:	mov ax, [bp + 8]	; 3: -117 70 8
x10222:	add ax, 2	; 3: -125 -64 2

scanFormat$220:	; arg_list = £temporary1708
x10225:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$221:	; £temporary1709 = arg_list - 2
x10228:	mov si, [bp + 8]	; 3: -117 118 8
x10231:	sub si, 2	; 3: -125 -18 2

scanFormat$222:	; £temporary1710 = int_to_int £temporary1709 (Signed_Int -> Pointer)

scanFormat$223:	; £temporary1711 -> £temporary1710 = *£temporary1710

scanFormat$224:	; unsignedIntPtr = £temporary1711 -> £temporary1710
x10234:	mov ax, [si]	; 2: -117 4
x10236:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$225:	; £temporary1712 -> unsignedIntPtr = *unsignedIntPtr
x10239:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$226:	; £temporary1713 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10242:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$227:	; £temporary1712 -> unsignedIntPtr = £temporary1713
x10246:	mov [si], ax	; 2: -119 4

scanFormat$228:	; goto 237
x10248:	jmp scanFormat$237	; 2: -21 30

scanFormat$229:	; £temporary1714 = arg_list + 2
x10250:	mov ax, [bp + 8]	; 3: -117 70 8
x10253:	add ax, 2	; 3: -125 -64 2

scanFormat$230:	; arg_list = £temporary1714
x10256:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$231:	; £temporary1715 = arg_list - 2
x10259:	mov si, [bp + 8]	; 3: -117 118 8
x10262:	sub si, 2	; 3: -125 -18 2

scanFormat$232:	; £temporary1716 = int_to_int £temporary1715 (Signed_Int -> Pointer)

scanFormat$233:	; £temporary1717 -> £temporary1716 = *£temporary1716

scanFormat$234:	; unsignedLongPtr = £temporary1717 -> £temporary1716
x10265:	mov ax, [si]	; 2: -117 4
x10267:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$235:	; £temporary1718 -> unsignedLongPtr = *unsignedLongPtr
x10270:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$236:	; £temporary1718 -> unsignedLongPtr = unsignedLongValue
x10273:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10277:	mov [si], eax	; 3: 102 -119 4

scanFormat$237:	; percent = 0
x10280:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$238:	; goto 344
x10285:	jmp scanFormat$344	; 3: -23 -114 1

scanFormat$239:	; call header integral zero 0 stack zero 0

scanFormat$240:	; call function noellipse-noellipse scanLongDouble
x10288:	mov word [bp + 57], scanFormat$241	; 5: -57 70 57 62 40
x10293:	mov [bp + 59], bp	; 3: -119 110 59
x10296:	add bp, 57	; 3: -125 -59 57
x10299:	jmp scanLongDouble	; 3: -23 -67 8

scanFormat$241:	; post call

scanFormat$242:	; £temporary1720 = return_value

scanFormat$243:	; pop float longDoubleValue
x10302:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$244:	; if star != 0 goto 276
x10305:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10309:	jne scanFormat$276	; 2: 117 100

scanFormat$245:	; if longIntOrDouble == 0 goto 256
x10311:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10315:	je scanFormat$256	; 2: 116 30

scanFormat$246:	; £temporary1723 = arg_list + 2
x10317:	mov ax, [bp + 8]	; 3: -117 70 8
x10320:	add ax, 2	; 3: -125 -64 2

scanFormat$247:	; arg_list = £temporary1723
x10323:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$248:	; £temporary1724 = arg_list - 2
x10326:	mov si, [bp + 8]	; 3: -117 118 8
x10329:	sub si, 2	; 3: -125 -18 2

scanFormat$249:	; £temporary1725 = int_to_int £temporary1724 (Signed_Int -> Pointer)

scanFormat$250:	; £temporary1726 -> £temporary1725 = *£temporary1725

scanFormat$251:	; doublePtr = £temporary1726 -> £temporary1725
x10332:	mov ax, [si]	; 2: -117 4
x10334:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$252:	; £temporary1727 -> doublePtr = *doublePtr
x10337:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$253:	; push float longDoubleValue
x10340:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$254:	; pop float £temporary1727 -> doublePtr
x10343:	fstp qword [si]	; 2: -35 28

scanFormat$255:	; goto 276
x10345:	jmp scanFormat$276	; 2: -21 64

scanFormat$256:	; if longDouble == 0 goto 267
x10347:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x10351:	je scanFormat$267	; 2: 116 30

scanFormat$257:	; £temporary1729 = arg_list + 2
x10353:	mov ax, [bp + 8]	; 3: -117 70 8
x10356:	add ax, 2	; 3: -125 -64 2

scanFormat$258:	; arg_list = £temporary1729
x10359:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$259:	; £temporary1730 = arg_list - 2
x10362:	mov si, [bp + 8]	; 3: -117 118 8
x10365:	sub si, 2	; 3: -125 -18 2

scanFormat$260:	; £temporary1731 = int_to_int £temporary1730 (Signed_Int -> Pointer)

scanFormat$261:	; £temporary1732 -> £temporary1731 = *£temporary1731

scanFormat$262:	; longDoublePtr = £temporary1732 -> £temporary1731
x10368:	mov ax, [si]	; 2: -117 4
x10370:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$263:	; £temporary1733 -> longDoublePtr = *longDoublePtr
x10373:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$264:	; push float longDoubleValue
x10376:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$265:	; pop float £temporary1733 -> longDoublePtr
x10379:	fstp qword [si]	; 2: -35 28

scanFormat$266:	; goto 276
x10381:	jmp scanFormat$276	; 2: -21 28

scanFormat$267:	; £temporary1734 = arg_list + 2
x10383:	mov ax, [bp + 8]	; 3: -117 70 8
x10386:	add ax, 2	; 3: -125 -64 2

scanFormat$268:	; arg_list = £temporary1734
x10389:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$269:	; £temporary1735 = arg_list - 2
x10392:	mov si, [bp + 8]	; 3: -117 118 8
x10395:	sub si, 2	; 3: -125 -18 2

scanFormat$270:	; £temporary1736 = int_to_int £temporary1735 (Signed_Int -> Pointer)

scanFormat$271:	; £temporary1737 -> £temporary1736 = *£temporary1736

scanFormat$272:	; floatPtr = £temporary1737 -> £temporary1736
x10398:	mov ax, [si]	; 2: -117 4
x10400:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$273:	; £temporary1738 -> floatPtr = *floatPtr
x10403:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$274:	; push float longDoubleValue
x10406:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$275:	; pop float £temporary1738 -> floatPtr
x10409:	fstp dword [si]	; 2: -39 28

scanFormat$276:	; percent = 0
x10411:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$277:	; goto 344
x10416:	jmp scanFormat$344	; 3: -23 11 1

scanFormat$278:	; not = 0
x10419:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$279:	; ++index
x10424:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$280:	; £temporary1744 = format + index
x10427:	mov si, [bp + 6]	; 3: -117 118 6
x10430:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$281:	; £temporary1743 -> £temporary1744 = *£temporary1744

scanFormat$282:	; if £temporary1743 -> £temporary1744 != 94 goto 285
x10433:	cmp byte [si], 94	; 3: -128 60 94
x10436:	jne scanFormat$285	; 2: 117 8

scanFormat$283:	; not = 1
x10438:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$284:	; ++index
x10443:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$285:	; startIndex = index
x10446:	mov ax, [bp + 31]	; 3: -117 70 31
x10449:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$286:	; £temporary1748 = format + index
x10452:	mov si, [bp + 6]	; 3: -117 118 6
x10455:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$287:	; £temporary1747 -> £temporary1748 = *£temporary1748

scanFormat$288:	; if £temporary1747 -> £temporary1748 == 93 goto 291
x10458:	cmp byte [si], 93	; 3: -128 60 93
x10461:	je scanFormat$291	; 2: 116 5

scanFormat$289:	; ++index
x10463:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$290:	; goto 286
x10466:	jmp scanFormat$286	; 2: -21 -16

scanFormat$291:	; £temporary1752 = format + index
x10468:	mov si, [bp + 6]	; 3: -117 118 6
x10471:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$292:	; £temporary1751 -> £temporary1752 = *£temporary1752

scanFormat$293:	; £temporary1751 -> £temporary1752 = 0
x10474:	mov byte [si], 0	; 3: -58 4 0

scanFormat$294:	; if star != 0 goto 311
x10477:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10481:	jne scanFormat$311	; 2: 117 58

scanFormat$295:	; £temporary1755 = arg_list + 2
x10483:	mov ax, [bp + 8]	; 3: -117 70 8
x10486:	add ax, 2	; 3: -125 -64 2

scanFormat$296:	; arg_list = £temporary1755
x10489:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$297:	; £temporary1756 = arg_list - 2
x10492:	mov si, [bp + 8]	; 3: -117 118 8
x10495:	sub si, 2	; 3: -125 -18 2

scanFormat$298:	; £temporary1757 = int_to_int £temporary1756 (Signed_Int -> Pointer)

scanFormat$299:	; £temporary1758 -> £temporary1757 = *£temporary1757

scanFormat$300:	; string = £temporary1758 -> £temporary1757
x10498:	mov ax, [si]	; 2: -117 4
x10500:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$301:	; call header integral zero 0 stack zero 0

scanFormat$302:	; parameter string, offset 6
x10503:	mov ax, [bp + 61]	; 3: -117 70 61
x10506:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$303:	; £temporary1760 = format + startIndex
x10509:	mov si, [bp + 6]	; 3: -117 118 6
x10512:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$304:	; £temporary1759 -> £temporary1760 = *£temporary1760

scanFormat$305:	; £temporary1761 = &£temporary1759 -> £temporary1760

scanFormat$306:	; parameter £temporary1761, offset 8
x10515:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$307:	; parameter not, offset 10
x10518:	mov ax, [bp + 57]	; 3: -117 70 57
x10521:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$308:	; call function noellipse-noellipse scanPattern
x10524:	mov word [bp + 63], scanFormat$309	; 5: -57 70 63 42 41
x10529:	mov [bp + 65], bp	; 3: -119 110 65
x10532:	add bp, 63	; 3: -125 -59 63
x10535:	jmp scanPattern	; 3: -23 3 10

scanFormat$309:	; post call

scanFormat$310:	; goto 344
x10538:	jmp scanFormat$344	; 3: -23 -111 0

scanFormat$311:	; call header integral zero 0 stack zero 0

scanFormat$312:	; parameter 0, offset 6
x10541:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$313:	; £temporary1764 = format + startIndex
x10546:	mov si, [bp + 6]	; 3: -117 118 6
x10549:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$314:	; £temporary1763 -> £temporary1764 = *£temporary1764

scanFormat$315:	; £temporary1765 = &£temporary1763 -> £temporary1764

scanFormat$316:	; parameter £temporary1765, offset 8
x10552:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$317:	; parameter not, offset 10
x10555:	mov ax, [bp + 57]	; 3: -117 70 57
x10558:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$318:	; call function noellipse-noellipse scanPattern
x10561:	mov word [bp + 61], scanFormat$319	; 5: -57 70 61 79 41
x10566:	mov [bp + 63], bp	; 3: -119 110 63
x10569:	add bp, 61	; 3: -125 -59 61
x10572:	jmp scanPattern	; 3: -23 -34 9

scanFormat$319:	; post call

scanFormat$320:	; goto 344
x10575:	jmp scanFormat$344	; 2: -21 109

scanFormat$321:	; £temporary1767 = arg_list + 2
x10577:	mov ax, [bp + 8]	; 3: -117 70 8
x10580:	add ax, 2	; 3: -125 -64 2

scanFormat$322:	; arg_list = £temporary1767
x10583:	mov [bp + 8], ax	; 3: -119 70 8

scanFormat$323:	; £temporary1768 = arg_list - 2
x10586:	mov si, [bp + 8]	; 3: -117 118 8
x10589:	sub si, 2	; 3: -125 -18 2

scanFormat$324:	; £temporary1769 = int_to_int £temporary1768 (Signed_Int -> Pointer)

scanFormat$325:	; £temporary1770 -> £temporary1769 = *£temporary1769

scanFormat$326:	; charsPtr = £temporary1770 -> £temporary1769
x10592:	mov ax, [si]	; 2: -117 4
x10594:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$327:	; £temporary1771 -> charsPtr = *charsPtr
x10597:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$328:	; £temporary1771 -> charsPtr = g_inChars
x10600:	mov ax, [g_inChars]	; 3: -95 -43 41
x10603:	mov [si], ax	; 2: -119 4

scanFormat$329:	; percent = 0
x10605:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$330:	; goto 344
x10610:	jmp scanFormat$344	; 2: -21 74

scanFormat$331:	; call header integral zero 0 stack zero 0

scanFormat$332:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x10612:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 -41 41

scanFormat$333:	; £temporary1772 = int_to_int c (Signed_Char -> Signed_Int)
x10617:	mov al, [bp + 10]	; 3: -118 70 10
x10620:	and ax, 255	; 3: 37 -1 0
x10623:	cmp al, 0	; 2: 60 0
x10625:	jge scanFormat$334	; 2: 125 4
x10627:	neg al	; 2: -10 -40
x10629:	neg ax	; 2: -9 -40

scanFormat$334:	; parameter £temporary1772, offset 8
x10631:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$335:	; call function noellipse-ellipse printf, extra 0
x10634:	mov word [bp + 57], scanFormat$336	; 5: -57 70 57 -99 41
x10639:	mov [bp + 59], bp	; 3: -119 110 59
x10642:	add bp, 57	; 3: -125 -59 57
x10645:	mov di, bp	; 2: -119 -17
x10647:	add di, 2	; 3: -125 -57 2
x10650:	jmp printf	; 3: -23 25 -38

scanFormat$336:	; post call

scanFormat$337:	; goto 344
x10653:	jmp scanFormat$344	; 2: -21 31

scanFormat$338:	; if c != 37 goto 344
x10655:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x10659:	jne scanFormat$344	; 2: 117 25

scanFormat$339:	; percent = 1
x10661:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$340:	; shortInt = 0
x10666:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$341:	; longIntOrDouble = 0
x10671:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$342:	; longDouble = 0
x10676:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$343:	; star = 0
x10681:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$344:	; ++index
x10686:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$345:	; goto 8
x10689:	jmp scanFormat$8	; 3: -23 -74 -6

scanFormat$346:	; return_value = g_inCount
x10692:	mov bx, [g_inCount]	; 4: -117 30 -45 41

scanFormat$347:	; return
x10696:	mov ax, [bp]	; 3: -117 70 0
x10699:	mov di, [bp + 4]	; 3: -117 126 4
x10702:	mov bp, [bp + 2]	; 3: -117 110 2
x10705:	jmp ax	; 2: -1 -32

scanFormat$348:	; function end scanFormat

g_inCount:
x10707:	db 0, 0	; 2: 0 0

g_inChars:
x10709:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x10711:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x10732:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x10736:	mov ax, [g_inStatus]	; 3: -95 76 36
x10739:	cmp ax, 0	; 3: -125 -8 0
x10742:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x10744:	cmp ax, 1	; 3: -125 -8 1
x10747:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x10749:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1326 = int_to_int g_inDevice (Pointer -> Pointer)
x10751:	mov ax, [g_inDevice]	; 3: -95 78 36

scanChar$6:	; stream = £temporary1326
x10754:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1327 -> stream = *stream, offset 2
x10757:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1327 -> stream
x10760:	mov ax, [si + 2]	; 3: -117 68 2
x10763:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x10766:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x10768:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x10771:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1332 = &c
x10774:	mov dx, bp	; 2: -119 -22
x10776:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1332

scanChar$14:	; interrupt 33
x10779:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x10781:	inc word [g_inChars]	; 4: -1 6 -43 41

scanChar$16:	; return_value = c
x10785:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x10788:	mov ax, [bp]	; 3: -117 70 0
x10791:	mov di, [bp + 4]	; 3: -117 126 4
x10794:	mov bp, [bp + 2]	; 3: -117 110 2
x10797:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1334 = int_to_int g_inDevice (Pointer -> Pointer)
x10799:	mov ax, [g_inDevice]	; 3: -95 78 36

scanChar$19:	; inString = £temporary1334
x10802:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1335 = g_inChars
x10805:	mov ax, [g_inChars]	; 3: -95 -43 41

scanChar$21:	; ++g_inChars
x10808:	inc word [g_inChars]	; 4: -1 6 -43 41

scanChar$22:	; £temporary1337 = inString + £temporary1335
x10812:	mov si, [bp + 11]	; 3: -117 118 11
x10815:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1336 -> £temporary1337 = *£temporary1337

scanChar$24:	; return_value = £temporary1336 -> £temporary1337
x10817:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x10819:	mov ax, [bp]	; 3: -117 70 0
x10822:	mov di, [bp + 4]	; 3: -117 126 4
x10825:	mov bp, [bp + 2]	; 3: -117 110 2
x10828:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x10830:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x10832:	mov ax, [bp]	; 3: -117 70 0
x10835:	mov di, [bp + 4]	; 3: -117 126 4
x10838:	mov bp, [bp + 2]	; 3: -117 110 2
x10841:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x10843:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x10848:	mov word [bp + 12], scanString$3	; 5: -57 70 12 110 42
x10853:	mov [bp + 14], bp	; 3: -119 110 14
x10856:	add bp, 12	; 3: -125 -59 12
x10859:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1389 = return_value

scanString$5:	; input = £temporary1389
x10862:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x10865:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1390 = int_to_int input (Signed_Char -> Signed_Int)
x10870:	mov al, [bp + 12]	; 3: -118 70 12
x10873:	and ax, 255	; 3: 37 -1 0
x10876:	cmp al, 0	; 2: 60 0
x10878:	jge scanString$9	; 2: 125 4
x10880:	neg al	; 2: -10 -40
x10882:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1390, offset 6
x10884:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x10887:	mov word [bp + 15], scanString$11	; 5: -57 70 15 -107 42
x10892:	mov [bp + 17], bp	; 3: -119 110 17
x10895:	add bp, 15	; 3: -125 -59 15
x10898:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1391 = return_value

scanString$13:	; if £temporary1391 == 0 goto 20
x10901:	cmp bx, 0	; 3: -125 -5 0
x10904:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x10906:	mov word [bp + 15], scanString$16	; 5: -57 70 15 -88 42
x10911:	mov [bp + 17], bp	; 3: -119 110 17
x10914:	add bp, 15	; 3: -125 -59 15
x10917:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1392 = return_value

scanString$18:	; input = £temporary1392
x10920:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x10923:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x10925:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x10929:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x10933:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10937:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1396 = int_to_int input (Signed_Char -> Signed_Int)
x10939:	mov al, [bp + 12]	; 3: -118 70 12
x10942:	and ax, 255	; 3: 37 -1 0
x10945:	cmp al, 0	; 2: 60 0
x10947:	jge scanString$24	; 2: 125 4
x10949:	neg al	; 2: -10 -40
x10951:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1396, offset 6
x10953:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x10956:	mov word [bp + 15], scanString$26	; 5: -57 70 15 -38 42
x10961:	mov [bp + 17], bp	; 3: -119 110 17
x10964:	add bp, 15	; 3: -125 -59 15
x10967:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1397 = return_value

scanString$28:	; if £temporary1397 != 0 goto 45
x10970:	cmp bx, 0	; 3: -125 -5 0
x10973:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1400 = int_to_int input (Signed_Char -> Signed_Int)
x10975:	mov al, [bp + 12]	; 3: -118 70 12
x10978:	and ax, 255	; 3: 37 -1 0
x10981:	cmp al, 0	; 2: 60 0
x10983:	jge scanString$30	; 2: 125 4
x10985:	neg al	; 2: -10 -40
x10987:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1400 == -1 goto 45
x10989:	cmp ax, -1	; 3: -125 -8 -1
x10992:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x10994:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10998:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1405 = index
x11000:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x11003:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1407 = string + £temporary1405
x11006:	mov si, [bp + 6]	; 3: -117 118 6
x11009:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1406 -> £temporary1407 = *£temporary1407

scanString$36:	; £temporary1406 -> £temporary1407 = input
x11011:	mov al, [bp + 12]	; 3: -118 70 12
x11014:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x11016:	mov word [bp + 15], scanString$39	; 5: -57 70 15 22 43
x11021:	mov [bp + 17], bp	; 3: -119 110 17
x11024:	add bp, 15	; 3: -125 -59 15
x11027:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1408 = return_value

scanString$41:	; input = £temporary1408
x11030:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x11033:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x11038:	inc word [g_inChars]	; 4: -1 6 -43 41

scanString$44:	; goto 22
x11042:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1411 = string + index
x11044:	mov si, [bp + 6]	; 3: -117 118 6
x11047:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1410 -> £temporary1411 = *£temporary1411

scanString$47:	; £temporary1410 -> £temporary1411 = 0
x11050:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x11053:	inc word [g_inChars]	; 4: -1 6 -43 41

scanString$49:	; goto 126
x11057:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1413 = precision
x11060:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x11063:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1413 <= 0 goto 76
x11066:	cmp ax, 0	; 3: -125 -8 0
x11069:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1415 = int_to_int input (Signed_Char -> Signed_Int)
x11071:	mov al, [bp + 12]	; 3: -118 70 12
x11074:	and ax, 255	; 3: 37 -1 0
x11077:	cmp al, 0	; 2: 60 0
x11079:	jge scanString$55	; 2: 125 4
x11081:	neg al	; 2: -10 -40
x11083:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1415, offset 6
x11085:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x11088:	mov word [bp + 15], scanString$57	; 5: -57 70 15 94 43
x11093:	mov [bp + 17], bp	; 3: -119 110 17
x11096:	add bp, 15	; 3: -125 -59 15
x11099:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1416 = return_value

scanString$59:	; if £temporary1416 != 0 goto 76
x11102:	cmp bx, 0	; 3: -125 -5 0
x11105:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1419 = int_to_int input (Signed_Char -> Signed_Int)
x11107:	mov al, [bp + 12]	; 3: -118 70 12
x11110:	and ax, 255	; 3: 37 -1 0
x11113:	cmp al, 0	; 2: 60 0
x11115:	jge scanString$61	; 2: 125 4
x11117:	neg al	; 2: -10 -40
x11119:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1419 == -1 goto 76
x11121:	cmp ax, -1	; 3: -125 -8 -1
x11124:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x11126:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11130:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1425 = index
x11132:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x11135:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1427 = string + £temporary1425
x11138:	mov si, [bp + 6]	; 3: -117 118 6
x11141:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1426 -> £temporary1427 = *£temporary1427

scanString$67:	; £temporary1426 -> £temporary1427 = input
x11143:	mov al, [bp + 12]	; 3: -118 70 12
x11146:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x11148:	mov word [bp + 15], scanString$70	; 5: -57 70 15 -102 43
x11153:	mov [bp + 17], bp	; 3: -119 110 17
x11156:	add bp, 15	; 3: -125 -59 15
x11159:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1428 = return_value

scanString$72:	; input = £temporary1428
x11162:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x11165:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x11170:	inc word [g_inChars]	; 4: -1 6 -43 41

scanString$75:	; goto 50
x11174:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x11176:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11180:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1432 = string + index
x11184:	mov si, [bp + 6]	; 3: -117 118 6
x11187:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1431 -> £temporary1432 = *£temporary1432

scanString$79:	; £temporary1431 -> £temporary1432 = 0
x11190:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x11193:	inc word [g_inChars]	; 4: -1 6 -43 41

scanString$81:	; goto 126
x11197:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x11200:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11204:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1435 = int_to_int input (Signed_Char -> Signed_Int)
x11206:	mov al, [bp + 12]	; 3: -118 70 12
x11209:	and ax, 255	; 3: 37 -1 0
x11212:	cmp al, 0	; 2: 60 0
x11214:	jge scanString$85	; 2: 125 4
x11216:	neg al	; 2: -10 -40
x11218:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1435, offset 6
x11220:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x11223:	mov word [bp + 15], scanString$87	; 5: -57 70 15 -27 43
x11228:	mov [bp + 17], bp	; 3: -119 110 17
x11231:	add bp, 15	; 3: -125 -59 15
x11234:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1436 = return_value

scanString$89:	; if £temporary1436 != 0 goto 101
x11237:	cmp bx, 0	; 3: -125 -5 0
x11240:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1439 = int_to_int input (Signed_Char -> Signed_Int)
x11242:	mov al, [bp + 12]	; 3: -118 70 12
x11245:	and ax, 255	; 3: 37 -1 0
x11248:	cmp al, 0	; 2: 60 0
x11250:	jge scanString$91	; 2: 125 4
x11252:	neg al	; 2: -10 -40
x11254:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1439 == -1 goto 101
x11256:	cmp ax, -1	; 3: -125 -8 -1
x11259:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x11261:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11265:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x11267:	mov word [bp + 15], scanString$95	; 5: -57 70 15 17 44
x11272:	mov [bp + 17], bp	; 3: -119 110 17
x11275:	add bp, 15	; 3: -125 -59 15
x11278:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1444 = return_value

scanString$97:	; input = £temporary1444
x11281:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x11284:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x11289:	inc word [g_inChars]	; 4: -1 6 -43 41

scanString$100:	; goto 83
x11293:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x11295:	inc word [g_inChars]	; 4: -1 6 -43 41

scanString$102:	; goto 126
x11299:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1447 = precision
x11301:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x11304:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1447 <= 0 goto 124
x11307:	cmp ax, 0	; 3: -125 -8 0
x11310:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1449 = int_to_int input (Signed_Char -> Signed_Int)
x11312:	mov al, [bp + 12]	; 3: -118 70 12
x11315:	and ax, 255	; 3: 37 -1 0
x11318:	cmp al, 0	; 2: 60 0
x11320:	jge scanString$108	; 2: 125 4
x11322:	neg al	; 2: -10 -40
x11324:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1449, offset 6
x11326:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x11329:	mov word [bp + 15], scanString$110	; 5: -57 70 15 79 44
x11334:	mov [bp + 17], bp	; 3: -119 110 17
x11337:	add bp, 15	; 3: -125 -59 15
x11340:	nop	; 1: -112
x11341:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1450 = return_value

scanString$112:	; if £temporary1450 != 0 goto 124
x11343:	cmp bx, 0	; 3: -125 -5 0
x11346:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1453 = int_to_int input (Signed_Char -> Signed_Int)
x11348:	mov al, [bp + 12]	; 3: -118 70 12
x11351:	and ax, 255	; 3: 37 -1 0
x11354:	cmp al, 0	; 2: 60 0
x11356:	jge scanString$114	; 2: 125 4
x11358:	neg al	; 2: -10 -40
x11360:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1453 == -1 goto 124
x11362:	cmp ax, -1	; 3: -125 -8 -1
x11365:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x11367:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11371:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x11373:	mov word [bp + 15], scanString$118	; 5: -57 70 15 123 44
x11378:	mov [bp + 17], bp	; 3: -119 110 17
x11381:	add bp, 15	; 3: -125 -59 15
x11384:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1459 = return_value

scanString$120:	; input = £temporary1459
x11387:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x11390:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x11395:	inc word [g_inChars]	; 4: -1 6 -43 41

scanString$123:	; goto 103
x11399:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x11401:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11405:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x11407:	inc word [g_inChars]	; 4: -1 6 -43 41

scanString$126:	; if found == 0 goto 128
x11411:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x11415:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x11417:	inc word [g_inCount]	; 4: -1 6 -45 41

scanString$128:	; return
x11421:	mov ax, [bp]	; 3: -117 70 0
x11424:	mov di, [bp + 4]	; 3: -117 126 4
x11427:	mov bp, [bp + 2]	; 3: -117 110 2
x11430:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x11432:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x11436:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x11438:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x11442:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x11444:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x11448:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x11450:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x11454:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x11456:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x11460:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x11462:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x11466:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary408 = 1
x11468:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x11471:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary408 = 0
x11473:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary408

isspace$10:	; return
x11476:	mov ax, [bp]	; 3: -117 70 0
x11479:	mov di, [bp + 4]	; 3: -117 126 4
x11482:	mov bp, [bp + 2]	; 3: -117 110 2
x11485:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x11487:	mov dword [bp + 6], 0	; 8: 102 -57 70 6 0 0 0 0

scanLongInt$1:	; minus = 0
x11495:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanLongInt$2:	; found = 0
x11500:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x11505:	mov word [bp + 14], scanLongInt$5	; 5: -57 70 14 -1 44
x11510:	mov [bp + 16], bp	; 3: -119 110 16
x11513:	add bp, 14	; 3: -125 -59 14
x11516:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1486 = return_value

scanLongInt$7:	; input = £temporary1486
x11519:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1487 = int_to_int input (Signed_Char -> Signed_Int)
x11522:	mov al, [bp + 14]	; 3: -118 70 14
x11525:	and ax, 255	; 3: 37 -1 0
x11528:	cmp al, 0	; 2: 60 0
x11530:	jge scanLongInt$10	; 2: 125 4
x11532:	neg al	; 2: -10 -40
x11534:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1487, offset 6
x11536:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$11:	; call function noellipse-noellipse isspace
x11539:	mov word [bp + 15], scanLongInt$12	; 5: -57 70 15 33 45
x11544:	mov [bp + 17], bp	; 3: -119 110 17
x11547:	add bp, 15	; 3: -125 -59 15
x11550:	nop	; 1: -112
x11551:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1488 = return_value

scanLongInt$14:	; if £temporary1488 == 0 goto 21
x11553:	cmp bx, 0	; 3: -125 -5 0
x11556:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x11558:	mov word [bp + 15], scanLongInt$17	; 5: -57 70 15 52 45
x11563:	mov [bp + 17], bp	; 3: -119 110 17
x11566:	add bp, 15	; 3: -125 -59 15
x11569:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1489 = return_value

scanLongInt$19:	; input = £temporary1489
x11572:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$20:	; goto 8
x11575:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x11577:	cmp byte [bp + 14], 43	; 4: -128 126 14 43
x11581:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x11583:	mov word [bp + 15], scanLongInt$24	; 5: -57 70 15 77 45
x11588:	mov [bp + 17], bp	; 3: -119 110 17
x11591:	add bp, 15	; 3: -125 -59 15
x11594:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1492 = return_value

scanLongInt$26:	; input = £temporary1492
x11597:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$27:	; goto 35
x11600:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x11602:	cmp byte [bp + 14], 45	; 4: -128 126 14 45
x11606:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x11608:	mov word [bp + 10], 1	; 5: -57 70 10 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x11613:	mov word [bp + 15], scanLongInt$32	; 5: -57 70 15 107 45
x11618:	mov [bp + 17], bp	; 3: -119 110 17
x11621:	add bp, 15	; 3: -125 -59 15
x11624:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1494 = return_value

scanLongInt$34:	; input = £temporary1494
x11627:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$35:	; call header integral zero 0 stack zero 0

scanLongInt$36:	; £temporary1495 = int_to_int input (Signed_Char -> Signed_Int)
x11630:	mov al, [bp + 14]	; 3: -118 70 14
x11633:	and ax, 255	; 3: 37 -1 0
x11636:	cmp al, 0	; 2: 60 0
x11638:	jge scanLongInt$37	; 2: 125 4
x11640:	neg al	; 2: -10 -40
x11642:	neg ax	; 2: -9 -40

scanLongInt$37:	; parameter £temporary1495, offset 6
x11644:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$38:	; call function noellipse-noellipse isdigit
x11647:	mov word [bp + 15], scanLongInt$39	; 5: -57 70 15 -115 45
x11652:	mov [bp + 17], bp	; 3: -119 110 17
x11655:	add bp, 15	; 3: -125 -59 15
x11658:	jmp isdigit	; 3: -23 12 -11

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1496 = return_value

scanLongInt$41:	; if £temporary1496 == 0 goto 54
x11661:	cmp bx, 0	; 3: -125 -5 0
x11664:	je scanLongInt$54	; 2: 116 66

scanLongInt$42:	; £temporary1497 = longValue * 10
x11666:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11670:	xor edx, edx	; 3: 102 49 -46
x11673:	imul dword [int4$10#]	; 5: 102 -9 46 19 20

scanLongInt$43:	; £temporary1498 = input - 48
x11678:	mov bl, [bp + 14]	; 3: -118 94 14
x11681:	sub bl, 48	; 3: -128 -21 48

scanLongInt$44:	; £temporary1499 = int_to_int £temporary1498 (Signed_Char -> Signed_Long_Int)
x11684:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0
x11691:	cmp bl, 0	; 3: -128 -5 0
x11694:	jge scanLongInt$45	; 2: 125 5
x11696:	neg bl	; 2: -10 -37
x11698:	neg ebx	; 3: 102 -9 -37

scanLongInt$45:	; £temporary1500 = £temporary1497 + £temporary1499
x11701:	add eax, ebx	; 3: 102 1 -40

scanLongInt$46:	; longValue = £temporary1500
x11704:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$47:	; call header integral zero 0 stack zero 0

scanLongInt$48:	; call function noellipse-noellipse scanChar
x11708:	mov word [bp + 15], scanLongInt$49	; 5: -57 70 15 -54 45
x11713:	mov [bp + 17], bp	; 3: -119 110 17
x11716:	add bp, 15	; 3: -125 -59 15
x11719:	jmp scanChar	; 3: -23 34 -4

scanLongInt$49:	; post call

scanLongInt$50:	; £temporary1501 = return_value

scanLongInt$51:	; input = £temporary1501
x11722:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$52:	; found = 1
x11725:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$53:	; goto 35
x11730:	jmp scanLongInt$35	; 2: -21 -102

scanLongInt$54:	; if minus == 0 goto 57
x11732:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11736:	je scanLongInt$57	; 2: 116 11

scanLongInt$55:	; £temporary1503 = -longValue
x11738:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11742:	neg eax	; 3: 102 -9 -40

scanLongInt$56:	; longValue = £temporary1503
x11745:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$57:	; if found == 0 goto 59
x11749:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x11753:	je scanLongInt$59	; 2: 116 4

scanLongInt$58:	; ++g_inCount
x11755:	inc word [g_inCount]	; 4: -1 6 -45 41

scanLongInt$59:	; call header integral zero 0 stack zero 0

scanLongInt$60:	; parameter input, offset 6
x11759:	mov al, [bp + 14]	; 3: -118 70 14
x11762:	mov [bp + 21], al	; 3: -120 70 21

scanLongInt$61:	; call function noellipse-noellipse unscanChar
x11765:	mov word [bp + 15], scanLongInt$62	; 5: -57 70 15 3 46
x11770:	mov [bp + 17], bp	; 3: -119 110 17
x11773:	add bp, 15	; 3: -125 -59 15
x11776:	nop	; 1: -112
x11777:	jmp unscanChar	; 2: -21 15

scanLongInt$62:	; post call

scanLongInt$63:	; return_value = longValue
x11779:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

scanLongInt$64:	; return
x11783:	mov ax, [bp]	; 3: -117 70 0
x11786:	mov di, [bp + 4]	; 3: -117 126 4
x11789:	mov bp, [bp + 2]	; 3: -117 110 2
x11792:	jmp ax	; 2: -1 -32

scanLongInt$65:	; function end scanLongInt

unscanChar:	; case g_inStatus == 0 goto 4
x11794:	mov ax, [g_inStatus]	; 3: -95 76 36
x11797:	cmp ax, 0	; 3: -125 -8 0
x11800:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x11802:	cmp ax, 1	; 3: -125 -8 1
x11805:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x11807:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x11809:	dec word [g_inChars]	; 4: -1 14 -43 41

unscanChar$5:	; goto 7
x11813:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x11815:	dec word [g_inChars]	; 4: -1 14 -43 41

unscanChar$7:	; return
x11819:	mov ax, [bp]	; 3: -117 70 0
x11822:	mov di, [bp + 4]	; 3: -117 126 4
x11825:	mov bp, [bp + 2]	; 3: -117 110 2
x11828:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x11830:	mov dword [bp + 10], 0	; 8: 102 -57 70 10 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x11838:	mov word [bp + 18], scanUnsignedLongInt$3	; 5: -57 70 18 76 46
x11843:	mov [bp + 20], bp	; 3: -119 110 20
x11846:	add bp, 18	; 3: -125 -59 18
x11849:	jmp scanChar	; 3: -23 -96 -5

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1511 = return_value

scanUnsignedLongInt$5:	; input = £temporary1511
x11852:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$6:	; found = 1
x11855:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1512 = int_to_int input (Signed_Char -> Signed_Int)
x11860:	mov al, [bp + 18]	; 3: -118 70 18
x11863:	and ax, 255	; 3: 37 -1 0
x11866:	cmp al, 0	; 2: 60 0
x11868:	jge scanUnsignedLongInt$9	; 2: 125 4
x11870:	neg al	; 2: -10 -40
x11872:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1512, offset 6
x11874:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x11877:	mov word [bp + 21], scanUnsignedLongInt$11	; 5: -57 70 21 115 46
x11882:	mov [bp + 23], bp	; 3: -119 110 23
x11885:	add bp, 21	; 3: -125 -59 21
x11888:	jmp isspace	; 3: -23 53 -2

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1513 = return_value

scanUnsignedLongInt$13:	; if £temporary1513 == 0 goto 20
x11891:	cmp bx, 0	; 3: -125 -5 0
x11894:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x11896:	mov word [bp + 21], scanUnsignedLongInt$16	; 5: -57 70 21 -122 46
x11901:	mov [bp + 23], bp	; 3: -119 110 23
x11904:	add bp, 21	; 3: -125 -59 21
x11907:	jmp scanChar	; 3: -23 102 -5

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1514 = return_value

scanUnsignedLongInt$18:	; input = £temporary1514
x11910:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$19:	; goto 7
x11913:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 48 goto 49
x11915:	cmp byte [bp + 18], 48	; 4: -128 126 18 48
x11919:	jne scanUnsignedLongInt$49	; 2: 117 118

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x11921:	mov word [bp + 21], scanUnsignedLongInt$23	; 5: -57 70 21 -97 46
x11926:	mov [bp + 23], bp	; 3: -119 110 23
x11929:	add bp, 21	; 3: -125 -59 21
x11932:	jmp scanChar	; 3: -23 77 -5

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1517 = return_value

scanUnsignedLongInt$25:	; input = £temporary1517
x11935:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$26:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$27:	; £temporary1518 = int_to_int input (Signed_Char -> Signed_Int)
x11938:	mov al, [bp + 18]	; 3: -118 70 18
x11941:	and ax, 255	; 3: 37 -1 0
x11944:	cmp al, 0	; 2: 60 0
x11946:	jge scanUnsignedLongInt$28	; 2: 125 4
x11948:	neg al	; 2: -10 -40
x11950:	neg ax	; 2: -9 -40

scanUnsignedLongInt$28:	; parameter £temporary1518, offset 6
x11952:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$29:	; call function noellipse-noellipse tolower
x11955:	mov word [bp + 21], scanUnsignedLongInt$30	; 5: -57 70 21 -63 46
x11960:	mov [bp + 23], bp	; 3: -119 110 23
x11963:	add bp, 21	; 3: -125 -59 21
x11966:	jmp tolower	; 3: -23 -95 -17

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1519 = return_value

scanUnsignedLongInt$32:	; if £temporary1519 != 120 goto 44
x11969:	cmp bx, 120	; 3: -125 -5 120
x11972:	jne scanUnsignedLongInt$44	; 2: 117 42

scanUnsignedLongInt$33:	; if base != 0 goto 36
x11974:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11979:	jne scanUnsignedLongInt$36	; 2: 117 8

scanUnsignedLongInt$34:	; £temporary1525 = 16
x11981:	mov eax, 16	; 6: 102 -72 16 0 0 0

scanUnsignedLongInt$35:	; goto 37
x11987:	jmp scanUnsignedLongInt$37	; 2: -21 4

scanUnsignedLongInt$36:	; £temporary1525 = base
x11989:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$37:	; base = £temporary1525
x11993:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$38:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$39:	; call function noellipse-noellipse scanChar
x11997:	mov word [bp + 21], scanUnsignedLongInt$40	; 5: -57 70 21 -21 46
x12002:	mov [bp + 23], bp	; 3: -119 110 23
x12005:	add bp, 21	; 3: -125 -59 21
x12008:	jmp scanChar	; 3: -23 1 -5

scanUnsignedLongInt$40:	; post call

scanUnsignedLongInt$41:	; £temporary1526 = return_value

scanUnsignedLongInt$42:	; input = £temporary1526
x12011:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$43:	; goto 49
x12014:	jmp scanUnsignedLongInt$49	; 2: -21 23

scanUnsignedLongInt$44:	; if base != 0 goto 47
x12016:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12021:	jne scanUnsignedLongInt$47	; 2: 117 8

scanUnsignedLongInt$45:	; £temporary1531 = 8
x12023:	mov eax, 8	; 6: 102 -72 8 0 0 0

scanUnsignedLongInt$46:	; goto 48
x12029:	jmp scanUnsignedLongInt$48	; 2: -21 4

scanUnsignedLongInt$47:	; £temporary1531 = base
x12031:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$48:	; base = £temporary1531
x12035:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$49:	; if base != 0 goto 51
x12039:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12044:	jne scanUnsignedLongInt$51	; 2: 117 8

scanUnsignedLongInt$50:	; base = 10
x12046:	mov dword [bp + 6], 10	; 8: 102 -57 70 6 10 0 0 0

scanUnsignedLongInt$51:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$52:	; £temporary1533 = int_to_int input (Signed_Char -> Signed_Int)
x12054:	mov al, [bp + 18]	; 3: -118 70 18
x12057:	and ax, 255	; 3: 37 -1 0
x12060:	cmp al, 0	; 2: 60 0
x12062:	jge scanUnsignedLongInt$53	; 2: 125 4
x12064:	neg al	; 2: -10 -40
x12066:	neg ax	; 2: -9 -40

scanUnsignedLongInt$53:	; parameter £temporary1533, offset 6
x12068:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$54:	; call function noellipse-noellipse isxdigit
x12071:	mov word [bp + 21], scanUnsignedLongInt$55	; 5: -57 70 21 53 47
x12076:	mov [bp + 23], bp	; 3: -119 110 23
x12079:	add bp, 21	; 3: -125 -59 21
x12082:	nop	; 1: -112
x12083:	jmp isxdigit	; 2: -21 127

scanUnsignedLongInt$55:	; post call

scanUnsignedLongInt$56:	; £temporary1534 = return_value

scanUnsignedLongInt$57:	; if £temporary1534 == 0 goto 75
x12085:	cmp bx, 0	; 3: -125 -5 0
x12088:	je scanUnsignedLongInt$75	; 2: 116 77

scanUnsignedLongInt$58:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$59:	; parameter input, offset 6
x12090:	mov al, [bp + 18]	; 3: -118 70 18
x12093:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$60:	; call function noellipse-noellipse digitToValue
x12096:	mov word [bp + 21], scanUnsignedLongInt$61	; 5: -57 70 21 78 47
x12101:	mov [bp + 23], bp	; 3: -119 110 23
x12104:	add bp, 21	; 3: -125 -59 21
x12107:	jmp digitToValue	; 3: -23 -86 0

scanUnsignedLongInt$61:	; post call

scanUnsignedLongInt$62:	; £temporary1535 = return_value

scanUnsignedLongInt$63:	; digit = £temporary1535
x12110:	mov [bp + 14], ebx	; 4: 102 -119 94 14

scanUnsignedLongInt$64:	; if digit >= base goto 75
x12114:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x12118:	cmp eax, [bp + 6]	; 4: 102 59 70 6
x12122:	jae scanUnsignedLongInt$75	; 2: 115 43

scanUnsignedLongInt$65:	; £temporary1537 = unsignedLongValue * base
x12124:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x12128:	xor edx, edx	; 3: 102 49 -46
x12131:	mul dword [bp + 6]	; 4: 102 -9 102 6

scanUnsignedLongInt$66:	; £temporary1538 = £temporary1537 + digit
x12135:	add eax, [bp + 14]	; 4: 102 3 70 14

scanUnsignedLongInt$67:	; unsignedLongValue = £temporary1538
x12139:	mov [bp + 10], eax	; 4: 102 -119 70 10

scanUnsignedLongInt$68:	; found = 1
x12143:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$69:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$70:	; call function noellipse-noellipse scanChar
x12148:	mov word [bp + 21], scanUnsignedLongInt$71	; 5: -57 70 21 -126 47
x12153:	mov [bp + 23], bp	; 3: -119 110 23
x12156:	add bp, 21	; 3: -125 -59 21
x12159:	jmp scanChar	; 3: -23 106 -6

scanUnsignedLongInt$71:	; post call

scanUnsignedLongInt$72:	; £temporary1539 = return_value

scanUnsignedLongInt$73:	; input = £temporary1539
x12162:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$74:	; goto 51
x12165:	jmp scanUnsignedLongInt$51	; 2: -21 -113

scanUnsignedLongInt$75:	; if found == 0 goto 77
x12167:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x12171:	je scanUnsignedLongInt$77	; 2: 116 4

scanUnsignedLongInt$76:	; ++g_inCount
x12173:	inc word [g_inCount]	; 4: -1 6 -45 41

scanUnsignedLongInt$77:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$78:	; parameter input, offset 6
x12177:	mov al, [bp + 18]	; 3: -118 70 18
x12180:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$79:	; call function noellipse-noellipse unscanChar
x12183:	mov word [bp + 21], scanUnsignedLongInt$80	; 5: -57 70 21 -91 47
x12188:	mov [bp + 23], bp	; 3: -119 110 23
x12191:	add bp, 21	; 3: -125 -59 21
x12194:	jmp unscanChar	; 3: -23 109 -2

scanUnsignedLongInt$80:	; post call

scanUnsignedLongInt$81:	; return_value = unsignedLongValue
x12197:	mov ebx, [bp + 10]	; 4: 102 -117 94 10

scanUnsignedLongInt$82:	; return
x12201:	mov ax, [bp]	; 3: -117 70 0
x12204:	mov di, [bp + 4]	; 3: -117 126 4
x12207:	mov bp, [bp + 2]	; 3: -117 110 2
x12210:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$83:	; function end scanUnsignedLongInt

isxdigit:	; call header integral zero 0 stack zero 0

isxdigit$1:	; parameter c, offset 6
x12212:	mov ax, [bp + 6]	; 3: -117 70 6
x12215:	mov [bp + 14], ax	; 3: -119 70 14

isxdigit$2:	; call function noellipse-noellipse isdigit
x12218:	mov word [bp + 8], isxdigit$3	; 5: -57 70 8 -56 47
x12223:	mov [bp + 10], bp	; 3: -119 110 10
x12226:	add bp, 8	; 3: -125 -59 8
x12229:	jmp isdigit	; 3: -23 -47 -14

isxdigit$3:	; post call

isxdigit$4:	; £temporary361 = return_value

isxdigit$5:	; if £temporary361 != 0 goto 10
x12232:	cmp bx, 0	; 3: -125 -5 0
x12235:	jne isxdigit$10	; 2: 117 24

isxdigit$6:	; if c < 97 goto 8
x12237:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12241:	jl isxdigit$8	; 2: 124 6

isxdigit$7:	; if c <= 102 goto 10
x12243:	cmp word [bp + 6], 102	; 4: -125 126 6 102
x12247:	jle isxdigit$10	; 2: 126 12

isxdigit$8:	; if c < 65 goto 12
x12249:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x12253:	jl isxdigit$12	; 2: 124 11

isxdigit$9:	; if c > 70 goto 12
x12255:	cmp word [bp + 6], 70	; 4: -125 126 6 70
x12259:	jg isxdigit$12	; 2: 127 5

isxdigit$10:	; £temporary371 = 1
x12261:	mov bx, 1	; 3: -69 1 0

isxdigit$11:	; goto 13
x12264:	jmp isxdigit$13	; 2: -21 3

isxdigit$12:	; £temporary371 = 0
x12266:	mov bx, 0	; 3: -69 0 0

isxdigit$13:	; return_value = £temporary371

isxdigit$14:	; return
x12269:	mov ax, [bp]	; 3: -117 70 0
x12272:	mov di, [bp + 4]	; 3: -117 126 4
x12275:	mov bp, [bp + 2]	; 3: -117 110 2
x12278:	jmp ax	; 2: -1 -32

isxdigit$15:	; function end isxdigit

digitToValue:	; call header integral zero 0 stack zero 0

digitToValue$1:	; £temporary1470 = int_to_int input (Signed_Char -> Signed_Int)
x12280:	mov al, [bp + 6]	; 3: -118 70 6
x12283:	and ax, 255	; 3: 37 -1 0
x12286:	cmp al, 0	; 2: 60 0
x12288:	jge digitToValue$2	; 2: 125 4
x12290:	neg al	; 2: -10 -40
x12292:	neg ax	; 2: -9 -40

digitToValue$2:	; parameter £temporary1470, offset 6
x12294:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$3:	; call function noellipse-noellipse isdigit
x12297:	mov word [bp + 7], digitToValue$4	; 5: -57 70 7 23 48
x12302:	mov [bp + 9], bp	; 3: -119 110 9
x12305:	add bp, 7	; 3: -125 -59 7
x12308:	jmp isdigit	; 3: -23 -126 -14

digitToValue$4:	; post call

digitToValue$5:	; £temporary1471 = return_value

digitToValue$6:	; if £temporary1471 == 0 goto 11
x12311:	cmp bx, 0	; 3: -125 -5 0
x12314:	je digitToValue$11	; 2: 116 24

digitToValue$7:	; £temporary1472 = input - 48
x12316:	mov bl, [bp + 6]	; 3: -118 94 6
x12319:	sub bl, 48	; 3: -128 -21 48

digitToValue$8:	; £temporary1473 = int_to_int £temporary1472 (Signed_Char -> Unsigned_Long_Int)
x12322:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$9:	; return_value = £temporary1473

digitToValue$10:	; return
x12329:	mov ax, [bp]	; 3: -117 70 0
x12332:	mov di, [bp + 4]	; 3: -117 126 4
x12335:	mov bp, [bp + 2]	; 3: -117 110 2
x12338:	jmp ax	; 2: -1 -32

digitToValue$11:	; call header integral zero 0 stack zero 0

digitToValue$12:	; £temporary1474 = int_to_int input (Signed_Char -> Signed_Int)
x12340:	mov al, [bp + 6]	; 3: -118 70 6
x12343:	and ax, 255	; 3: 37 -1 0
x12346:	cmp al, 0	; 2: 60 0
x12348:	jge digitToValue$13	; 2: 125 4
x12350:	neg al	; 2: -10 -40
x12352:	neg ax	; 2: -9 -40

digitToValue$13:	; parameter £temporary1474, offset 6
x12354:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$14:	; call function noellipse-noellipse islower
x12357:	mov word [bp + 7], digitToValue$15	; 5: -57 70 7 83 48
x12362:	mov [bp + 9], bp	; 3: -119 110 9
x12365:	add bp, 7	; 3: -125 -59 7
x12368:	nop	; 1: -112
x12369:	jmp islower	; 2: -21 61

digitToValue$15:	; post call

digitToValue$16:	; £temporary1475 = return_value

digitToValue$17:	; if £temporary1475 == 0 goto 23
x12371:	cmp bx, 0	; 3: -125 -5 0
x12374:	je digitToValue$23	; 2: 116 28

digitToValue$18:	; £temporary1476 = input - 97
x12376:	mov bl, [bp + 6]	; 3: -118 94 6
x12379:	sub bl, 97	; 3: -128 -21 97

digitToValue$19:	; £temporary1477 = int_to_int £temporary1476 (Signed_Char -> Unsigned_Long_Int)
x12382:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$20:	; £temporary1478 = £temporary1477 + 10
x12389:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$21:	; return_value = £temporary1478

digitToValue$22:	; return
x12393:	mov ax, [bp]	; 3: -117 70 0
x12396:	mov di, [bp + 4]	; 3: -117 126 4
x12399:	mov bp, [bp + 2]	; 3: -117 110 2
x12402:	jmp ax	; 2: -1 -32

digitToValue$23:	; £temporary1479 = input - 65
x12404:	mov bl, [bp + 6]	; 3: -118 94 6
x12407:	sub bl, 65	; 3: -128 -21 65

digitToValue$24:	; £temporary1480 = int_to_int £temporary1479 (Signed_Char -> Unsigned_Long_Int)
x12410:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$25:	; £temporary1481 = £temporary1480 + 10
x12417:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$26:	; return_value = £temporary1481

digitToValue$27:	; return
x12421:	mov ax, [bp]	; 3: -117 70 0
x12424:	mov di, [bp + 4]	; 3: -117 126 4
x12427:	mov bp, [bp + 2]	; 3: -117 110 2
x12430:	jmp ax	; 2: -1 -32

digitToValue$28:	; function end digitToValue

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x12432:	mov word [bp + 8], islower$2	; 5: -57 70 8 -98 48
x12437:	mov [bp + 10], bp	; 3: -119 110 10
x12440:	add bp, 8	; 3: -125 -59 8
x12443:	jmp localeconv	; 3: -23 -44 -28

islower$2:	; post call

islower$3:	; £temporary309 = return_value

islower$4:	; localeConvPtr = £temporary309
x12446:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x12449:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12453:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary311 -> localeConvPtr = *localeConvPtr, offset 12
x12455:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary311 -> localeConvPtr, offset 6
x12458:	mov ax, [si + 12]	; 3: -117 68 12
x12461:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x12464:	mov ax, [bp + 6]	; 3: -117 70 6
x12467:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x12470:	mov word [bp + 10], islower$11	; 5: -57 70 10 -60 48
x12475:	mov [bp + 12], bp	; 3: -119 110 12
x12478:	add bp, 10	; 3: -125 -59 10
x12481:	jmp strchr	; 3: -23 68 -22

islower$11:	; post call

islower$12:	; £temporary312 = return_value

islower$13:	; if £temporary312 == 0 goto 16
x12484:	cmp bx, 0	; 3: -125 -5 0
x12487:	je islower$16	; 2: 116 5

islower$14:	; £temporary314 = 1
x12489:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x12492:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary314 = 0
x12494:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary314

islower$18:	; return
x12497:	mov ax, [bp]	; 3: -117 70 0
x12500:	mov di, [bp + 4]	; 3: -117 126 4
x12503:	mov bp, [bp + 2]	; 3: -117 110 2
x12506:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x12508:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12512:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x12514:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x12518:	jg islower$23	; 2: 127 5

islower$21:	; £temporary318 = 1
x12520:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x12523:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary318 = 0
x12525:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary318

islower$25:	; return
x12528:	mov ax, [bp]	; 3: -117 70 0
x12531:	mov di, [bp + 4]	; 3: -117 126 4
x12534:	mov bp, [bp + 2]	; 3: -117 110 2
x12537:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

scanLongDouble:	; minus = 0
x12539:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x12544:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x12549:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x12551:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x12554:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x12556:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x12559:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 29 49
x12564:	mov [bp + 28], bp	; 3: -119 110 28
x12567:	add bp, 26	; 3: -125 -59 26
x12570:	jmp scanChar	; 3: -23 -49 -8

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1549 = return_value

scanLongDouble$10:	; input = £temporary1549
x12573:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1550 = int_to_int input (Signed_Char -> Signed_Int)
x12576:	mov al, [bp + 26]	; 3: -118 70 26
x12579:	and ax, 255	; 3: 37 -1 0
x12582:	cmp al, 0	; 2: 60 0
x12584:	jge scanLongDouble$13	; 2: 125 4
x12586:	neg al	; 2: -10 -40
x12588:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1550, offset 6
x12590:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x12593:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 63 49
x12598:	mov [bp + 29], bp	; 3: -119 110 29
x12601:	add bp, 27	; 3: -125 -59 27
x12604:	jmp isspace	; 3: -23 105 -5

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1551 = return_value

scanLongDouble$17:	; if £temporary1551 == 0 goto 24
x12607:	cmp bx, 0	; 3: -125 -5 0
x12610:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x12612:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 82 49
x12617:	mov [bp + 29], bp	; 3: -119 110 29
x12620:	add bp, 27	; 3: -125 -59 27
x12623:	jmp scanChar	; 3: -23 -102 -8

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1552 = return_value

scanLongDouble$22:	; input = £temporary1552
x12626:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x12629:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x12631:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x12635:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x12637:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 107 49
x12642:	mov [bp + 29], bp	; 3: -119 110 29
x12645:	add bp, 27	; 3: -125 -59 27
x12648:	jmp scanChar	; 3: -23 -127 -8

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1555 = return_value

scanLongDouble$29:	; input = £temporary1555
x12651:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x12654:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x12656:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x12660:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x12662:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x12667:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 -119 49
x12672:	mov [bp + 29], bp	; 3: -119 110 29
x12675:	add bp, 27	; 3: -125 -59 27
x12678:	jmp scanChar	; 3: -23 99 -8

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1557 = return_value

scanLongDouble$37:	; input = £temporary1557
x12681:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1558 = int_to_int input (Signed_Char -> Signed_Int)
x12684:	mov al, [bp + 26]	; 3: -118 70 26
x12687:	and ax, 255	; 3: 37 -1 0
x12690:	cmp al, 0	; 2: 60 0
x12692:	jge scanLongDouble$40	; 2: 125 4
x12694:	neg al	; 2: -10 -40
x12696:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1558, offset 6
x12698:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x12701:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 -85 49
x12706:	mov [bp + 29], bp	; 3: -119 110 29
x12709:	add bp, 27	; 3: -125 -59 27
x12712:	jmp isdigit	; 3: -23 -18 -16

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1559 = return_value

scanLongDouble$44:	; if £temporary1559 == 0 goto 60
x12715:	cmp bx, 0	; 3: -125 -5 0
x12718:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x12720:	fld qword [float8$10.0#]	; 4: -35 6 56 30

scanLongDouble$46:	; push float value
x12724:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1560 = 10.0 * value
x12727:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1561 = input - 48
x12729:	mov al, [bp + 26]	; 3: -118 70 26
x12732:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1563 = int_to_int £temporary1561 (Signed_Char -> Signed_Int)
x12734:	and ax, 255	; 3: 37 -1 0
x12737:	cmp al, 0	; 2: 60 0
x12739:	jge scanLongDouble$50	; 2: 125 4
x12741:	neg al	; 2: -10 -40
x12743:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1562 = int_to_float £temporary1563 (Signed_Int -> Long_Double)
x12745:	mov [$IntegralStorage#], ax	; 3: -93 66 18
x12748:	fild word [$IntegralStorage#]	; 4: -33 6 66 18

scanLongDouble$51:	; £temporary1564 = £temporary1560 + £temporary1562
x12752:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x12754:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x12757:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 -29 49
x12762:	mov [bp + 29], bp	; 3: -119 110 29
x12765:	add bp, 27	; 3: -125 -59 27
x12768:	jmp scanChar	; 3: -23 9 -8

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1565 = return_value

scanLongDouble$57:	; input = £temporary1565
x12771:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x12774:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x12779:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x12781:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x12785:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x12787:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 1 50
x12792:	mov [bp + 29], bp	; 3: -119 110 29
x12795:	add bp, 27	; 3: -125 -59 27
x12798:	jmp scanChar	; 3: -23 -21 -9

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1568 = return_value

scanLongDouble$65:	; input = £temporary1568
x12801:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1569 = int_to_int input (Signed_Char -> Signed_Int)
x12804:	mov al, [bp + 26]	; 3: -118 70 26
x12807:	and ax, 255	; 3: 37 -1 0
x12810:	cmp al, 0	; 2: 60 0
x12812:	jge scanLongDouble$68	; 2: 125 4
x12814:	neg al	; 2: -10 -40
x12816:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1569, offset 6
x12818:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x12821:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 35 50
x12826:	mov [bp + 29], bp	; 3: -119 110 29
x12829:	add bp, 27	; 3: -125 -59 27
x12832:	jmp isdigit	; 3: -23 118 -16

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1570 = return_value

scanLongDouble$72:	; if £temporary1570 == 0 goto 92
x12835:	cmp bx, 0	; 3: -125 -5 0
x12838:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x12840:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x12843:	fld qword [float8$10.0#]	; 4: -35 6 56 30

scanLongDouble$75:	; £temporary1571 = factor / 10.0
x12847:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x12849:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x12852:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x12855:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1572 = input - 48
x12858:	mov al, [bp + 26]	; 3: -118 70 26
x12861:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1574 = int_to_int £temporary1572 (Signed_Char -> Signed_Int)
x12863:	and ax, 255	; 3: 37 -1 0
x12866:	cmp al, 0	; 2: 60 0
x12868:	jge scanLongDouble$81	; 2: 125 4
x12870:	neg al	; 2: -10 -40
x12872:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1573 = int_to_float £temporary1574 (Signed_Int -> Long_Double)
x12874:	mov [$IntegralStorage#], ax	; 3: -93 66 18
x12877:	fild word [$IntegralStorage#]	; 4: -33 6 66 18

scanLongDouble$82:	; £temporary1575 = factor * £temporary1573
x12881:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1576 = value + £temporary1575
x12883:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x12885:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x12888:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 102 50
x12893:	mov [bp + 29], bp	; 3: -119 110 29
x12896:	add bp, 27	; 3: -125 -59 27
x12899:	jmp scanChar	; 3: -23 -122 -9

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1577 = return_value

scanLongDouble$89:	; input = £temporary1577
x12902:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x12905:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x12910:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; parameter input, offset 6
x12912:	mov al, [bp + 26]	; 3: -118 70 26
x12915:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$94:	; call function noellipse-noellipse unscanChar
x12918:	mov word [bp + 27], scanLongDouble$95	; 5: -57 70 27 -124 50
x12923:	mov [bp + 29], bp	; 3: -119 110 29
x12926:	add bp, 27	; 3: -125 -59 27
x12929:	jmp unscanChar	; 3: -23 -114 -5

scanLongDouble$95:	; post call

scanLongDouble$96:	; call header integral zero 0 stack zero 0

scanLongDouble$97:	; £temporary1580 = int_to_int input (Signed_Char -> Signed_Int)
x12932:	mov al, [bp + 26]	; 3: -118 70 26
x12935:	and ax, 255	; 3: 37 -1 0
x12938:	cmp al, 0	; 2: 60 0
x12940:	jge scanLongDouble$98	; 2: 125 4
x12942:	neg al	; 2: -10 -40
x12944:	neg ax	; 2: -9 -40

scanLongDouble$98:	; parameter £temporary1580, offset 6
x12946:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$99:	; call function noellipse-noellipse tolower
x12949:	mov word [bp + 27], scanLongDouble$100	; 5: -57 70 27 -93 50
x12954:	mov [bp + 29], bp	; 3: -119 110 29
x12957:	add bp, 27	; 3: -125 -59 27
x12960:	jmp tolower	; 3: -23 -65 -21

scanLongDouble$100:	; post call

scanLongDouble$101:	; £temporary1581 = return_value

scanLongDouble$102:	; if £temporary1581 != 101 goto 121
x12963:	cmp bx, 101	; 3: -125 -5 101
x12966:	jne scanLongDouble$121	; 2: 117 75

scanLongDouble$103:	; call header integral zero 0 stack zero 0

scanLongDouble$104:	; call function noellipse-noellipse scanLongInt
x12968:	mov word [bp + 27], scanLongDouble$105	; 5: -57 70 27 -74 50
x12973:	mov [bp + 29], bp	; 3: -119 110 29
x12976:	add bp, 27	; 3: -125 -59 27
x12979:	jmp scanLongInt	; 3: -23 41 -6

scanLongDouble$105:	; post call

scanLongDouble$106:	; £temporary1583 = return_value

scanLongDouble$107:	; £temporary1584 = int_to_float £temporary1583 (Signed_Long_Int -> Double)
x12982:	mov [$IntegralStorage#], ebx	; 5: 102 -119 30 66 18
x12987:	fild dword [$IntegralStorage#]	; 4: -37 6 66 18

scanLongDouble$108:	; pop float exponent
x12991:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$109:	; push float value
x12994:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$110:	; call header integral zero 0 stack no zero 1
x12997:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$111:	; push float 10.0
x13000:	fld qword [float8$10.0#]	; 4: -35 6 56 30

scanLongDouble$112:	; parameter 10.0, offset 6
x13004:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$113:	; push float exponent
x13007:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$114:	; parameter exponent, offset 14
x13010:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$115:	; call function noellipse-noellipse pow
x13013:	mov word [bp + 43], scanLongDouble$116	; 5: -57 70 43 -29 50
x13018:	mov [bp + 45], bp	; 3: -119 110 45
x13021:	add bp, 43	; 3: -125 -59 43
x13024:	jmp pow	; 3: -23 -32 -18

scanLongDouble$116:	; post call
x13027:	fstp qword [bp + 43]	; 3: -35 94 43
x13030:	fld qword [bp + 35]	; 3: -35 70 35
x13033:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$117:	; £temporary1585 = return_value

scanLongDouble$118:	; £temporary1586 = value * £temporary1585
x13036:	fmul	; 2: -34 -55

scanLongDouble$119:	; pop float value
x13038:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$120:	; goto 125
x13041:	jmp scanLongDouble$125	; 2: -21 20

scanLongDouble$121:	; call header integral zero 0 stack zero 0

scanLongDouble$122:	; parameter input, offset 6
x13043:	mov al, [bp + 26]	; 3: -118 70 26
x13046:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$123:	; call function noellipse-noellipse unscanChar
x13049:	mov word [bp + 27], scanLongDouble$124	; 5: -57 70 27 7 51
x13054:	mov [bp + 29], bp	; 3: -119 110 29
x13057:	add bp, 27	; 3: -125 -59 27
x13060:	jmp unscanChar	; 3: -23 11 -5

scanLongDouble$124:	; post call

scanLongDouble$125:	; if minus == 0 goto 129
x13063:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x13067:	je scanLongDouble$129	; 2: 116 8

scanLongDouble$126:	; push float value
x13069:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$127:	; £temporary1588 = -value
x13072:	fchs	; 2: -39 -32

scanLongDouble$128:	; pop float value
x13074:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$129:	; if found == 0 goto 131
x13077:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x13081:	je scanLongDouble$131	; 2: 116 4

scanLongDouble$130:	; ++g_inCount
x13083:	inc word [g_inCount]	; 4: -1 6 -45 41

scanLongDouble$131:	; push float value
x13087:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$132:	; return_value = value

scanLongDouble$133:	; return
x13090:	mov ax, [bp]	; 3: -117 70 0
x13093:	mov di, [bp + 4]	; 3: -117 126 4
x13096:	mov bp, [bp + 2]	; 3: -117 110 2
x13099:	jmp ax	; 2: -1 -32

scanLongDouble$134:	; function end scanLongDouble

scanPattern:	; index = 0
x13101:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x13106:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 64 51
x13111:	mov [bp + 16], bp	; 3: -119 110 16
x13114:	add bp, 14	; 3: -125 -59 14
x13117:	jmp scanChar	; 3: -23 -84 -10

scanPattern$3:	; post call

scanPattern$4:	; £temporary1341 = return_value

scanPattern$5:	; input = £temporary1341
x13120:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1342 = int_to_int input (Signed_Char -> Signed_Int)
x13123:	mov al, [bp + 14]	; 3: -118 70 14
x13126:	and ax, 255	; 3: 37 -1 0
x13129:	cmp al, 0	; 2: 60 0
x13131:	jge scanPattern$8	; 2: 125 4
x13133:	neg al	; 2: -10 -40
x13135:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1342, offset 6
x13137:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x13140:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 98 51
x13145:	mov [bp + 17], bp	; 3: -119 110 17
x13148:	add bp, 15	; 3: -125 -59 15
x13151:	jmp isspace	; 3: -23 70 -7

scanPattern$10:	; post call

scanPattern$11:	; £temporary1343 = return_value

scanPattern$12:	; if £temporary1343 == 0 goto 19
x13154:	cmp bx, 0	; 3: -125 -5 0
x13157:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x13159:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 117 51
x13164:	mov [bp + 17], bp	; 3: -119 110 17
x13167:	add bp, 15	; 3: -125 -59 15
x13170:	jmp scanChar	; 3: -23 119 -10

scanPattern$15:	; post call

scanPattern$16:	; £temporary1344 = return_value

scanPattern$17:	; input = £temporary1344
x13173:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x13176:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x13178:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x13182:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x13186:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13190:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x13192:	mov ax, [bp + 8]	; 3: -117 70 8
x13195:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1349 = int_to_int input (Signed_Char -> Signed_Int)
x13198:	mov al, [bp + 14]	; 3: -118 70 14
x13201:	and ax, 255	; 3: 37 -1 0
x13204:	cmp al, 0	; 2: 60 0
x13206:	jge scanPattern$24	; 2: 125 4
x13208:	neg al	; 2: -10 -40
x13210:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1349, offset 8
x13212:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x13215:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 -83 51
x13220:	mov [bp + 17], bp	; 3: -119 110 17
x13223:	add bp, 15	; 3: -125 -59 15
x13226:	jmp strchr	; 3: -23 91 -25

scanPattern$26:	; post call

scanPattern$27:	; £temporary1350 = return_value

scanPattern$28:	; if £temporary1350 != 0 goto 38
x13229:	cmp bx, 0	; 3: -125 -5 0
x13232:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x13234:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13238:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x13240:	mov ax, [bp + 8]	; 3: -117 70 8
x13243:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1353 = int_to_int input (Signed_Char -> Signed_Int)
x13246:	mov al, [bp + 14]	; 3: -118 70 14
x13249:	and ax, 255	; 3: 37 -1 0
x13252:	cmp al, 0	; 2: 60 0
x13254:	jge scanPattern$33	; 2: 125 4
x13256:	neg al	; 2: -10 -40
x13258:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1353, offset 8
x13260:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x13263:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 -35 51
x13268:	mov [bp + 17], bp	; 3: -119 110 17
x13271:	add bp, 15	; 3: -125 -59 15
x13274:	jmp strchr	; 3: -23 43 -25

scanPattern$35:	; post call

scanPattern$36:	; £temporary1354 = return_value

scanPattern$37:	; if £temporary1354 != 0 goto 49
x13277:	cmp bx, 0	; 3: -125 -5 0
x13280:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1360 = index
x13282:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x13285:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1362 = string + £temporary1360
x13288:	mov si, [bp + 6]	; 3: -117 118 6
x13291:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1361 -> £temporary1362 = *£temporary1362

scanPattern$42:	; £temporary1361 -> £temporary1362 = input
x13293:	mov al, [bp + 14]	; 3: -118 70 14
x13296:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x13298:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 0 52
x13303:	mov [bp + 17], bp	; 3: -119 110 17
x13306:	add bp, 15	; 3: -125 -59 15
x13309:	jmp scanChar	; 3: -23 -20 -11

scanPattern$45:	; post call

scanPattern$46:	; £temporary1363 = return_value

scanPattern$47:	; input = £temporary1363
x13312:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x13315:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1365 = string + index
x13318:	mov si, [bp + 6]	; 3: -117 118 6
x13321:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1364 -> £temporary1365 = *£temporary1365

scanPattern$51:	; £temporary1364 -> £temporary1365 = 0
x13324:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x13327:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x13329:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13333:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x13335:	mov ax, [bp + 8]	; 3: -117 70 8
x13338:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1368 = int_to_int input (Signed_Char -> Signed_Int)
x13341:	mov al, [bp + 14]	; 3: -118 70 14
x13344:	and ax, 255	; 3: 37 -1 0
x13347:	cmp al, 0	; 2: 60 0
x13349:	jge scanPattern$57	; 2: 125 4
x13351:	neg al	; 2: -10 -40
x13353:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1368, offset 8
x13355:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x13358:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 60 52
x13363:	mov [bp + 17], bp	; 3: -119 110 17
x13366:	add bp, 15	; 3: -125 -59 15
x13369:	jmp strchr	; 3: -23 -52 -26

scanPattern$59:	; post call

scanPattern$60:	; £temporary1369 = return_value

scanPattern$61:	; if £temporary1369 != 0 goto 71
x13372:	cmp bx, 0	; 3: -125 -5 0
x13375:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x13377:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13381:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x13383:	mov ax, [bp + 8]	; 3: -117 70 8
x13386:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1372 = int_to_int input (Signed_Char -> Signed_Int)
x13389:	mov al, [bp + 14]	; 3: -118 70 14
x13392:	and ax, 255	; 3: 37 -1 0
x13395:	cmp al, 0	; 2: 60 0
x13397:	jge scanPattern$66	; 2: 125 4
x13399:	neg al	; 2: -10 -40
x13401:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1372, offset 8
x13403:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x13406:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 108 52
x13411:	mov [bp + 17], bp	; 3: -119 110 17
x13414:	add bp, 15	; 3: -125 -59 15
x13417:	jmp strchr	; 3: -23 -100 -26

scanPattern$68:	; post call

scanPattern$69:	; £temporary1373 = return_value

scanPattern$70:	; if £temporary1373 != 0 goto 77
x13420:	cmp bx, 0	; 3: -125 -5 0
x13423:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x13425:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 127 52
x13430:	mov [bp + 17], bp	; 3: -119 110 17
x13433:	add bp, 15	; 3: -125 -59 15
x13436:	jmp scanChar	; 3: -23 109 -11

scanPattern$73:	; post call

scanPattern$74:	; £temporary1379 = return_value

scanPattern$75:	; input = £temporary1379
x13439:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x13442:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x13444:	mov ax, [bp]	; 3: -117 70 0
x13447:	mov di, [bp + 4]	; 3: -117 126 4
x13450:	mov bp, [bp + 2]	; 3: -117 110 2
x13453:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

$StackTop:
x13455:
